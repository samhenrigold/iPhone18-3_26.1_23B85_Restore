uint64_t sub_23C70C494(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_23C872014() & 1) != 0)
  {
    v7 = a1[3];
    v8 = a2[3];
    if (v7)
    {
      if (v8)
      {
        v9 = a1[2] == a2[2] && v7 == v8;
        if (v9 || (sub_23C872014() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v8)
    {
LABEL_13:
      a3(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_23C871754() & 1;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V0C4IconV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD948, &unk_23C889D80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBF0, &qword_23C889860);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23C5855B0(a1, &v20 - v13, &qword_27E1FD948, &unk_23C889D80);
  sub_23C5855B0(a2, &v14[v15], &qword_27E1FD948, &unk_23C889D80);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23C585C34(v14, &qword_27E1FD948, &unk_23C889D80);
LABEL_9:
      type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_23C871754();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v14, v10, &qword_27E1FD948, &unk_23C889D80);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
LABEL_6:
    sub_23C585C34(v14, &qword_27E1FEBF0, &qword_23C889860);
    goto LABEL_7;
  }

  sub_23C716FA0(&v14[v15], v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  v18 = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V0cdeC8IconKindO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_23C717008(v7, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_23C717008(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_23C585C34(v14, &qword_27E1FD948, &unk_23C889D80);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_23C70C8D4()
{
  result = qword_27E1FD958;
  if (!qword_27E1FD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD958);
  }

  return result;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V0C4IconV0c6SymbolH0V2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v6 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6];
  v8 = *(a2 + 48);
  if (v7)
  {
    if (v8 && (a1[5] == *(a2 + 40) && v7 == v8 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_20:
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

unint64_t sub_23C70CA54()
{
  result = qword_27E1FD970;
  if (!qword_27E1FD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD970);
  }

  return result;
}

unint64_t sub_23C70CAA8()
{
  result = qword_27E1FD988;
  if (!qword_27E1FD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD988);
  }

  return result;
}

unint64_t sub_23C70CAFC()
{
  result = qword_27E1FD990;
  if (!qword_27E1FD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD990);
  }

  return result;
}

unint64_t sub_23C70CB50()
{
  result = qword_27E1FDA20;
  if (!qword_27E1FDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDA20);
  }

  return result;
}

unint64_t sub_23C70CBA8()
{
  result = qword_27E1FDA40;
  if (!qword_27E1FDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDA40);
  }

  return result;
}

unint64_t sub_23C70CC00()
{
  result = qword_27E1FDA48;
  if (!qword_27E1FDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDA48);
  }

  return result;
}

unint64_t sub_23C70CE98()
{
  result = qword_27E1FDA78;
  if (!qword_27E1FDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDA78);
  }

  return result;
}

unint64_t sub_23C70CEF0()
{
  result = qword_27E1FDA80;
  if (!qword_27E1FDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDA80);
  }

  return result;
}

unint64_t sub_23C70D848()
{
  result = qword_27E1FDB38;
  if (!qword_27E1FDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDB38);
  }

  return result;
}

unint64_t sub_23C70D8A0()
{
  result = qword_27E1FDB40;
  if (!qword_27E1FDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDB40);
  }

  return result;
}

unint64_t sub_23C70DB38()
{
  result = qword_27E1FDB70;
  if (!qword_27E1FDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDB70);
  }

  return result;
}

unint64_t sub_23C70DB90()
{
  result = qword_27E1FDB78;
  if (!qword_27E1FDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDB78);
  }

  return result;
}

unint64_t sub_23C70E3C8()
{
  result = qword_27E1FDC18;
  if (!qword_27E1FDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDC18);
  }

  return result;
}

unint64_t sub_23C70E420()
{
  result = qword_27E1FDC20;
  if (!qword_27E1FDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDC20);
  }

  return result;
}

unint64_t sub_23C70E7D8()
{
  result = qword_27E1FDC70;
  if (!qword_27E1FDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDC70);
  }

  return result;
}

unint64_t sub_23C70E830()
{
  result = qword_27E1FDC78;
  if (!qword_27E1FDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDC78);
  }

  return result;
}

unint64_t sub_23C70EE28()
{
  result = qword_27E1FDCF8;
  if (!qword_27E1FDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDCF8);
  }

  return result;
}

unint64_t sub_23C70EE80()
{
  result = qword_27E1FDD00;
  if (!qword_27E1FDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDD00);
  }

  return result;
}

unint64_t sub_23C70FFB8()
{
  result = qword_27E1FDE60;
  if (!qword_27E1FDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDE60);
  }

  return result;
}

unint64_t sub_23C710010()
{
  result = qword_27E1FDE68;
  if (!qword_27E1FDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDE68);
  }

  return result;
}

unint64_t sub_23C710068()
{
  result = qword_27E1FDE70;
  if (!qword_27E1FDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDE70);
  }

  return result;
}

unint64_t sub_23C7100C0()
{
  result = qword_27E1FDE78;
  if (!qword_27E1FDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDE78);
  }

  return result;
}

unint64_t sub_23C7108F8()
{
  result = qword_27E1FDF28;
  if (!qword_27E1FDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF28);
  }

  return result;
}

unint64_t sub_23C710950()
{
  result = qword_27E1FDF30;
  if (!qword_27E1FDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF30);
  }

  return result;
}

unint64_t sub_23C7109A8()
{
  result = qword_27E1FDF38;
  if (!qword_27E1FDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF38);
  }

  return result;
}

unint64_t sub_23C710A00()
{
  result = qword_27E1FDF40;
  if (!qword_27E1FDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF40);
  }

  return result;
}

unint64_t sub_23C710A58()
{
  result = qword_27E1FDF48;
  if (!qword_27E1FDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF48);
  }

  return result;
}

unint64_t sub_23C710AB0()
{
  result = qword_27E1FDF50;
  if (!qword_27E1FDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF50);
  }

  return result;
}

unint64_t sub_23C711528()
{
  result = qword_27E1FE020;
  if (!qword_27E1FE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE020);
  }

  return result;
}

unint64_t sub_23C711580()
{
  result = qword_27E1FE028;
  if (!qword_27E1FE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE028);
  }

  return result;
}

unint64_t sub_23C712118()
{
  result = qword_27E1FE120;
  if (!qword_27E1FE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE120);
  }

  return result;
}

unint64_t sub_23C712170()
{
  result = qword_27E1FE128;
  if (!qword_27E1FE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE128);
  }

  return result;
}

unint64_t sub_23C712528()
{
  result = qword_27E1FE170;
  if (!qword_27E1FE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE170);
  }

  return result;
}

unint64_t sub_23C712580()
{
  result = qword_27E1FE178;
  if (!qword_27E1FE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE178);
  }

  return result;
}

unint64_t sub_23C714438()
{
  result = qword_27E1FE3D8;
  if (!qword_27E1FE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE3D8);
  }

  return result;
}

unint64_t sub_23C714490()
{
  result = qword_27E1FE3E0;
  if (!qword_27E1FE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE3E0);
  }

  return result;
}

unint64_t sub_23C7144E8()
{
  result = qword_27E1FE3E8;
  if (!qword_27E1FE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE3E8);
  }

  return result;
}

unint64_t sub_23C714540()
{
  result = qword_27E1FE3F0;
  if (!qword_27E1FE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE3F0);
  }

  return result;
}

unint64_t sub_23C714598()
{
  result = qword_27E1FE3F8;
  if (!qword_27E1FE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE3F8);
  }

  return result;
}

unint64_t sub_23C7145F0()
{
  result = qword_27E1FE400;
  if (!qword_27E1FE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE400);
  }

  return result;
}

unint64_t sub_23C714648()
{
  result = qword_27E1FE408;
  if (!qword_27E1FE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE408);
  }

  return result;
}

unint64_t sub_23C7146A0()
{
  result = qword_27E1FE410;
  if (!qword_27E1FE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE410);
  }

  return result;
}

unint64_t sub_23C714818()
{
  result = qword_27E1FE428;
  if (!qword_27E1FE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE428);
  }

  return result;
}

unint64_t sub_23C714870()
{
  result = qword_27E1FE430;
  if (!qword_27E1FE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE430);
  }

  return result;
}

unint64_t sub_23C715408()
{
  result = qword_27E1FE510;
  if (!qword_27E1FE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE510);
  }

  return result;
}

unint64_t sub_23C715460()
{
  result = qword_27E1FE518;
  if (!qword_27E1FE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE518);
  }

  return result;
}

unint64_t sub_23C715818()
{
  result = qword_27E1FE568;
  if (!qword_27E1FE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE568);
  }

  return result;
}

unint64_t sub_23C715870()
{
  result = qword_27E1FE570;
  if (!qword_27E1FE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE570);
  }

  return result;
}

unint64_t sub_23C715B08()
{
  result = qword_27E1FE5A8;
  if (!qword_27E1FE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE5A8);
  }

  return result;
}

unint64_t sub_23C715B60()
{
  result = qword_27E1FE5B0;
  if (!qword_27E1FE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE5B0);
  }

  return result;
}

unint64_t sub_23C715BB8()
{
  result = qword_27E1FE5B8;
  if (!qword_27E1FE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE5B8);
  }

  return result;
}

unint64_t sub_23C715C10()
{
  result = qword_27E1FE5C0;
  if (!qword_27E1FE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE5C0);
  }

  return result;
}

unint64_t sub_23C716B08()
{
  result = qword_27E1FE6F0;
  if (!qword_27E1FE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE6F0);
  }

  return result;
}

unint64_t sub_23C716B60()
{
  result = qword_27E1FE6F8;
  if (!qword_27E1FE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE6F8);
  }

  return result;
}

unint64_t sub_23C716DF4()
{
  result = qword_27E1FECE8;
  if (!qword_27E1FECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FECE8);
  }

  return result;
}

unint64_t sub_23C716E48()
{
  result = qword_27E1FEE10;
  if (!qword_27E1FEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FEE10);
  }

  return result;
}

unint64_t sub_23C716E9C()
{
  result = qword_27E1FEE18;
  if (!qword_27E1FEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FEE18);
  }

  return result;
}

uint64_t sub_23C716EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23C716F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C716FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C717008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23C717068()
{
  result = qword_27E1FEFF0;
  if (!qword_27E1FEFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1FEFE8, &qword_23C889BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FEFF0);
  }

  return result;
}

AIMLInstrumentationStreams::ToolKitProtoRuntimePlatform_optional __swiftcall ToolKitProtoRuntimePlatform.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 41;
  type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7177D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C717874(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

AIMLInstrumentationStreams::ToolKitProtoTypeIdentifier::Primitive::MeasurementUnitType_optional __swiftcall ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 5;
  switch(rawValue)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v2 = 1;
      goto LABEL_15;
    case 2:
      v2 = 2;
      goto LABEL_15;
    case 3:
      v2 = 3;
      goto LABEL_15;
    case 4:
      v2 = 4;
LABEL_15:
      v3 = v2;
      goto LABEL_16;
    case 5:
LABEL_16:
      *v1 = v3;
      break;
    case 6:
      *v1 = 6;
      break;
    case 7:
      *v1 = 7;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    default:
      *v1 = 23;
      break;
  }

  return rawValue;
}

uint64_t sub_23C717B4C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 44);
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v8;
  *(a1 + 2) = v8;
  *(a1 + 3) = v8;
  *(a1 + 4) = v8;
  *(a1 + 5) = v8;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0) + 24);
  v3 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 36);
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_23C7184A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C718540(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[9];
  v10 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v2[10];
  v12 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v2[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a1[v13], 1, 1, valid);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v16 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v16;
  return result;
}

uint64_t sub_23C7189BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C718A58(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 24);
  v3 = sub_23C870ED4();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_23C718E3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C718ED8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

AIMLInstrumentationStreams::ToolKitProtoTypedValue::PrimitiveValue::PaymentMethod::TypeEnum_optional __swiftcall ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

double sub_23C7192A4@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = *(a1(0) + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a3 = xmmword_23C87D700;
  return result;
}

uint64_t sub_23C719590@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = *(a1(0) + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v4 = (a1 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + v3[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v3[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v3[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v3[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + v3[10];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v3[11];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v3[12];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v3[13];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v3[14];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v3[15];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v3[16];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v3[17];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v3[18];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a1 + v3[19];
  *v18 = 0;
  *(v18 + 8) = 1;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

AIMLInstrumentationStreams::ToolKitProtoTypedValue::PrimitiveValue::DateComponents::CalendarIdentifier_optional __swiftcall ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_23C719AA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = *(v5 + 24);
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

unint64_t ToolKitProtoTypedValue.EntityValue.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *&a1[v2[8]] = xmmword_23C879130;
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  result = sub_23C599478(MEMORY[0x277D84F90]);
  *(a1 + 2) = result;
  return result;
}

uint64_t sub_23C719D48@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C719DE4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C719F90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a1(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a2(0) + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C71A454@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0xF000000000000007;
  a1(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C71A5E0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C71A6CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = *(a1(0) + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = MEMORY[0x277D84F90];
  return result;
}

AIMLInstrumentationStreams::ToolKitProtoRestrictionContext::PersonReachableAs_optional __swiftcall ToolKitProtoRestrictionContext.PersonReachableAs.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = (a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20));
  *v3 = 0;
  v3[1] = 0;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C71AAF4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a1 + 4) = 0;
  *a1 = 0;
  return result;
}

uint64_t sub_23C71ADF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C71AE94(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

AIMLInstrumentationStreams::ToolKitProtoRestrictionContext::TextTypedWith::KeyboardType_optional __swiftcall ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue(0);
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v3(a1 + *(v4 + 20), 1, 1, v2);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C71B470@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = v5[5];
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = v5[6];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = v5[7];
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C71B5AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C71B648(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoCompoundPredicate.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoCompoundPredicate(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C71B7E4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoQuery.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoQuery(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  *v5 = 0;
  v5[8] = 1;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a1 + 5) = 0;
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  v5(&a1[v2[6]], 1, 1, v4);
  v5(&a1[v2[7]], 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

unint64_t ToolKitProtoToolInvocationSignature.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoToolInvocationSignature(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  result = sub_23C599660(v2);
  a1[2] = result;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  a1[2] = 0;
  a1[3] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v3 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v3;
  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 32)];
  *v5 = 0;
  *(v5 + 1) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v7 = MEMORY[0x277D84F90];
  *(a1 + 2) = MEMORY[0x277D84F90];
  *(a1 + 3) = v7;
  return result;
}

uint64_t sub_23C71C808@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v3 = a1(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init()@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4) = 256;
  *a1 = 0;
  type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v3 = v2[17];
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[18]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[19];
  v7 = type metadata accessor for ToolKitProtoAppDefinition(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = (a1 + v2[20]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v2[21];
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v2[22];
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v2[23];
  v14 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v2[24], 1, 1, v14);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v17 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v17;
  *(a1 + 56) = v17;
  *(a1 + 64) = v17;
  *(a1 + 72) = v17;
  *(a1 + 80) = 0;
  *(a1 + 88) = v17;
  *(a1 + 96) = v17;
  *(a1 + 104) = v17;
  *(a1 + 112) = v17;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 100);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 100);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

AIMLInstrumentationStreams::ToolKitProtoToolDefinition::Version1::ToolType_optional __swiftcall ToolKitProtoToolDefinition.Version1.ToolType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::ToolKitProtoToolDefinition::Version1::Flag_optional __swiftcall ToolKitProtoToolDefinition.Version1.Flag.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 7)
  {
    if (rawValue > 31)
    {
      if (rawValue == 32)
      {
        *v1 = 6;
        return rawValue;
      }

      if (rawValue == 64)
      {
        *v1 = 7;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 8)
      {
        *v1 = 4;
        return rawValue;
      }

      if (rawValue == 16)
      {
        *v1 = 5;
        return rawValue;
      }
    }

LABEL_20:
    *v1 = 8;
    return rawValue;
  }

  if (rawValue > 1)
  {
    if (rawValue == 2)
    {
      *v1 = 2;
      return rawValue;
    }

    if (rawValue == 4)
    {
      *v1 = 3;
      return rawValue;
    }

    goto LABEL_20;
  }

  if (!rawValue)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 1)
  {
    goto LABEL_20;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v6 = MEMORY[0x277D84F90];
  *(a1 + 4) = MEMORY[0x277D84F90];
  *(a1 + 5) = v6;
  *(a1 + 6) = v6;
  return result;
}

AIMLInstrumentationStreams::ToolKitProtoToolDefinition::Version1::Parameter::ParameterFlags_optional __swiftcall ToolKitProtoToolDefinition.Version1.Parameter.ParameterFlags.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23C71D814@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  return result;
}

AIMLInstrumentationStreams::ToolKitProtoToolDefinition::Version1::ToolIcon::ToolSymbolIconStyle_optional __swiftcall ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C71DC30@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  a2[2] = 0;
  a2[3] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoAppDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for ToolKitProtoAppDefinition(0) + 40);
  v3 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_23C71DDA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C71DE44(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoContainerDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_23C71E0CC@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_23C87AC90;
  a1(0);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ToolKitProtoTypeDisplayRepresentation.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  a1[3] = 0;
  a1[4] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

double sub_23C71E268@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[9];
  v10 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = MEMORY[0x277D84F90];
  return result;
}

double sub_23C71E524@<D0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  a1(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_23C879130;
  *(a1 + 32) = xmmword_23C879130;
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoCoercionDefinition.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 20);
  v3 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_23C71EC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C29C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C71ED50(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70BFFC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C71F1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70ACAC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.init(id:displayName:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0) + 24);
  v13 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v13 - 8) + 56))(&a6[v12], 1, 1, v13);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  return sub_23C5842D0(a5, &a6[v12], &qword_27E1FAC40, &unk_23C8791C0);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.init(identifier:properties:runtimeRequirements:displayRepresentation:sampleInvocations:systemProtocols:runtimeFlags:coercions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v17 = *(v16 + 40);
  v18 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = *(v16 + 44);
  v20 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a9[v17], &qword_27E1FAB38, &unk_23C8791E0);
  *a9 = a2;
  *(a9 + 1) = a3;
  result = sub_23C5842D0(a4, &a9[v19], &qword_27E1FBAF8, &qword_23C87B960);
  *(a9 + 2) = a5;
  *(a9 + 3) = a6;
  *(a9 + 4) = a7;
  *(a9 + 5) = a8;
  return result;
}

uint64_t sub_23C71F6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70AD00();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.init(identifier:cases:runtimeRequirements:displayRepresentation:kind:systemProtocols:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v15 = *(v14 + 32);
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = *(v14 + 36);
  v18 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v18 - 8) + 56))(a7 + v17, 1, 1, v18);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a7 + v15, &qword_27E1FAB38, &unk_23C8791E0);
  *a7 = a2;
  *(a7 + 8) = a3;
  result = sub_23C5842D0(a4, a7 + v17, &qword_27E1FBAF8, &qword_23C87B960);
  *(a7 + 16) = v13;
  *(a7 + 24) = a6;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init(comparison:stringSearch:idSearch:all:suggested:sampleInvocations:searchableItem:valid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v13 = v12[6];
  v14 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v14 - 8) + 56))(&a9[v13], 1, 1, v14);
  v15 = v12[7];
  v16 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v16 - 8) + 56))(&a9[v15], 1, 1, v16);
  v17 = v12[8];
  v18 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v12[9];
  v20 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = v12[10];
  v22 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = v12[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a9[v23], 1, 1, valid);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  sub_23C5842D0(a2, &a9[v13], &qword_27E1FEF90, &qword_23C889B70);
  sub_23C5842D0(a3, &a9[v15], &qword_27E1FEF80, &unk_23C889C70);
  sub_23C5842D0(a4, &a9[v17], &qword_27E1FED30, &qword_23C889980);
  sub_23C5842D0(a5, &a9[v19], &qword_27E1FED38, &unk_23C889C80);
  *(a9 + 1) = a6;
  sub_23C5842D0(a7, &a9[v21], &qword_27E1FEF60, &qword_23C889B48);
  return sub_23C5842D0(a8, &a9[v23], &qword_27E1FED48, &unk_23C889C90);
}

uint64_t ToolKitProtoTypedValue.typedValueKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_23C56F2C0(v2);
}

uint64_t ToolKitProtoTypedValue.typedValueKind.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_23C56F2D8(*v1);
  *v1 = v2;
  return result;
}

uint64_t sub_23C720664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = *(a4(0) + 20);
  v16 = a5(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  return sub_23C5842D0(a3, &a8[v15], a6, a7);
}

uint64_t sub_23C7208A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70BFA8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.init(sign:exponent:significand:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 24);
  v9 = sub_23C870ED4();
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = v7;
  *(a4 + 8) = a2;
  return sub_23C5842D0(a3, a4 + v8, &qword_27E1FEEB0, &unk_23C889CA0);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.init(unit:value:unitType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = *a3;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = v9;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_23C720D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C050();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init(type:identificationHint:displayRepresentation:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0) + 24);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = v9;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return sub_23C5842D0(a4, a5 + v10, &qword_27E1FAC30, &qword_23C878FC0);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.year.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.month.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.day.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.hour.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.minute.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.second.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.nanosecond.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekday.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 60);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.quarter.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 64);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfMonth.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfYear.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C721D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C0A4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init(identifier:timeZoneIdentifier:localeIdentifier:firstWeekday:minimumDaysInFirstWeek:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a1;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = v15;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init(calendar:timeZoneIdentifier:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32)
{
  v33 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  (*(*(v33 - 8) + 56))(a9, 1, 1, v33);
  v34 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v35 = (a9 + v34[5]);
  v36 = a9 + v34[6];
  v37 = a9 + v34[7];
  v38 = a9 + v34[8];
  v39 = a9 + v34[9];
  v40 = a9 + v34[10];
  v41 = a9 + v34[11];
  v42 = a9 + v34[12];
  v43 = a9 + v34[13];
  v47 = a9 + v34[14];
  v45 = a9 + v34[15];
  v49 = a9 + v34[16];
  v46 = a9 + v34[17];
  v50 = a9 + v34[18];
  v48 = a9 + v34[19];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, a9, &qword_27E1FEE90, &unk_23C889CB0);
  *v35 = a2;
  v35[1] = a3;
  *v36 = a4;
  *(v36 + 8) = a5 & 1;
  *v37 = a6;
  *(v37 + 8) = a7 & 1;
  *v38 = a8;
  *(v38 + 8) = a10 & 1;
  *v39 = a11;
  *(v39 + 8) = a12 & 1;
  *v40 = a13;
  *(v40 + 8) = a14 & 1;
  *v41 = a15;
  *(v41 + 8) = a16 & 1;
  *v42 = a17;
  *(v42 + 8) = a18 & 1;
  *v43 = a19;
  *(v43 + 8) = a20 & 1;
  *v47 = a21;
  *(v47 + 8) = a22 & 1;
  *v45 = a23;
  *(v45 + 8) = a24 & 1;
  *v49 = a25;
  *(v49 + 8) = a26 & 1;
  *v46 = a27;
  *(v46 + 8) = a28 & 1;
  *v50 = a29;
  *(v50 + 8) = a30 & 1;
  *v48 = a31;
  *(v48 + 8) = a32 & 1;
  return result;
}

uint64_t sub_23C722454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, char *a9@<X8>)
{
  v17 = a5(0);
  v18 = *(v17 + 20);
  v19 = a6(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = *(v17 + 24);
  v21 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a9[v18], a7, a8);
  *a9 = a2;
  *(a9 + 1) = a3;
  return sub_23C5842D0(a4, &a9[v20], &qword_27E1FAC30, &qword_23C878FC0);
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.getter()
{
  v1 = v0 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32);
  v2 = *v1;
  sub_23C5EDBA0(*v1, *(v1 + 8));
  return v2;
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32);
  result = sub_23C5AD0AC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t ToolKitProtoTypedValue.EntityValue.init(type:identifier:properties:displayRepresentation:hydratedAppEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v15 = v14[6];
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = v14[7];
  v18 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = &a8[v14[8]];
  *v19 = xmmword_23C879130;
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a8[v15], &qword_27E1FAB38, &unk_23C8791E0);
  *a8 = a2;
  *(a8 + 1) = a3;
  *(a8 + 2) = a4;
  sub_23C5842D0(a5, &a8[v17], &qword_27E1FAC30, &qword_23C878FC0);
  result = sub_23C5AD0AC(*v19, *(v19 + 1));
  *v19 = a6;
  *(v19 + 1) = a7;
  return result;
}

uint64_t sub_23C722C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  v15 = *(a3(0) + 20);
  v16 = a4(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a7, &qword_27E1FAB38, &unk_23C8791E0);
  return sub_23C5842D0(a2, a7 + v15, a5, a6);
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.getter()
{
  v1 = *v0;
  sub_23C5ACFC8(*v0, *(v0 + 8));
  return v1;
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C595090(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_23C723164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  a5(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t ToolKitProtoTypedValue.DeferredValue.init(type:expectedTypeInstance:storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a4, &qword_27E1FAB38, &unk_23C8791E0);
  sub_23C5842D0(a2, a4 + v10, &qword_27E1FAC40, &unk_23C8791C0);
  return sub_23C5842D0(a3, a4 + v12, &qword_27E1FEE70, &unk_23C889CC0);
}

uint64_t ToolKitProtoTypeInstance.Optional.init(value:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for ToolKitProtoTypeInstance.Optional(0) + 20);
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAC40, &unk_23C8791C0);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E1FAB68, &unk_23C879140);
}

uint64_t sub_23C723568@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  a2(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t sub_23C72369C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = *(a3(0) + 20);
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a7[v13], a5, a6);
  *a7 = a2;
  return result;
}

uint64_t sub_23C72381C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  a3(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  return sub_23C5842D0(a1, a6, a4, a5);
}

uint64_t sub_23C723908(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716E48();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C723970(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716E9C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C723B74(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_23C723BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.init(contentItemClass:propertyName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 20);
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a4[v8], &qword_27E1FED60, &qword_23C889998);
  *a4 = a2;
  *(a4 + 1) = a3;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init(parameterKey:queryIdentifier:actionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = (a3 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20));
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.init(definition:templates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet(0) + 20);
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FEE00, &qword_23C889A28);
  return sub_23C5842D0(a2, a3 + v7, &qword_27E1FEDF0, &unk_23C889C60);
}

uint64_t sub_23C72420C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C14C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C72427C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C0F8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C7242E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C1A0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.init(multilineAllowed:smartQuotesEnabled:smartDashesEnabled:keyboardType:autocorrectionType:capitalizationType:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, _BYTE *a7@<X8>)
{
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = v11;
  a7[4] = v12;
  a7[5] = v13;
  return result;
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a3, 1, 1, v6);
  v8 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0) + 20);
  v7(a3 + v8, 1, 1, v6);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAB68, &unk_23C879140);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E1FAB68, &unk_23C879140);
}

uint64_t sub_23C724C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t *a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v16 = a6(0);
  v17 = v16[5];
  v18 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[6];
  v20 = a7(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = v16[7];
  v22 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a9[v17], &qword_27E1FED80, &qword_23C8899B8);
  sub_23C5842D0(a2, &a9[v19], a8, a10);
  *a9 = a3;
  *(a9 + 1) = a4;
  return sub_23C5842D0(a5, &a9[v21], &qword_27E1FED60, &qword_23C889998);
}

uint64_t sub_23C724E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C1F4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoCompoundPredicate.init(operator:operands:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for ToolKitProtoCompoundPredicate(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = v5;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_23C724F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  a3(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  return result;
}

uint64_t sub_23C72514C(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  result = a3(0);
  v7 = v3 + *(result + 24);
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C7251EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C248();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoQuery.init(predicate:sort:limit:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for ToolKitProtoQuery(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(v10 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a5[v11], &qword_27E1FED50, &unk_23C889D10);
  *a5 = v9;
  *v13 = a3;
  v13[8] = a4 & 1;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.init(major:minor:patch:isWildcard:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 12) = a4;
  return result;
}

uint64_t sub_23C725548(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716DF4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init(platform:introducingVersion:deprecatingVersion:obsoletingVersion:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v9 = v8[5];
  v10 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&a5[v9], 1, 1, v10);
  v12 = v8[6];
  v11(&a5[v12], 1, 1, v10);
  v13 = v8[7];
  v11(&a5[v13], 1, 1, v10);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = v7;
  sub_23C5842D0(a2, &a5[v9], &qword_27E1FECD8, &qword_23C889930);
  sub_23C5842D0(a3, &a5[v12], &qword_27E1FECD8, &qword_23C889930);
  return sub_23C5842D0(a4, &a5[v13], &qword_27E1FECD8, &qword_23C889930);
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.init(domain:feature:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_23C5EDA0C(v2, v3, v4);
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_23C5EDA2C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ToolKitProtoToolInvocationSignature.invisibleParameterKeys.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ToolKitProtoToolInvocationSignature.valueConstraints.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.init(phrases:expectedResult:negativePhrases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  a5[2] = a2;
  a5[3] = a3;
  *a5 = a1;
  a5[1] = a4;
  return result;
}

uint64_t sub_23C725DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  a4(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.sampleInvocations.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.getter()
{
  v1 = *(v0 + *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 32));

  return v1;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.init(identifier:name:description_p:parameters:sampleInvocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v17 = *(v16 + 28);
  v18 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = &a8[*(v16 + 32)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a8[v17], &qword_27E1FACC8, &unk_23C889C50);
  *a8 = a2;
  *(a8 + 1) = a3;
  *v19 = a4;
  *(v19 + 1) = a5;
  *(a8 + 2) = a6;
  *(a8 + 3) = a7;
  return result;
}

uint64_t sub_23C726570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, char *a5@<X8>)
{
  v9 = a4(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v13 - 8) + 56))(&a5[v12], 1, 1, v13);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a5[v10], &qword_27E1FACC8, &unk_23C889C50);
  *a5 = a2;
  return sub_23C5842D0(a3, &a5[v12], &qword_27E1FBAF8, &qword_23C87B960);
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init(persistState:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = a1;
  return result;
}

void ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 5);
  *(a1 + 4) = *(v1 + 4);
  *a1 = v2;
  *(a1 + 5) = v3;
}

int *ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 5);
  *(v1 + 4) = *(result + 4);
  *v1 = v2;
  *(v1 + 5) = v3;
  return result;
}

uint64_t static ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23C726950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.parameters.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.categories.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.searchKeywords.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.requirements.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.flags.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.sampleInvocations.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.systemProtocols.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.hiddenParameters.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.visibilityFlags.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 72));

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.getter()
{
  v1 = *(v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 80));

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_23C72754C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C2F0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C7275F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C344();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C727660(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C3EC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C7276C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C398();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.relationships.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.description_p.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.description_p.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_23C727924(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C440();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_23C727C18@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  a3(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.init(key:name:description_p:valueType:relationships:sampleInvocations:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0) + 40);
  v19 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 7) = a5;
  *(a9 + 8) = a6;
  result = sub_23C5842D0(a7, &a9[v18], &qword_27E1FAC40, &unk_23C8791C0);
  *(a9 + 4) = a8;
  *(a9 + 5) = a10;
  *(a9 + 6) = a11;
  return result;
}

uint64_t sub_23C727F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C8D4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init(name:style:foreground:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a3;
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v15;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Deprecation.replacedByToolID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.Deprecation.replacedByToolID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_23C72826C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  a5(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.init(id:name:toolType:parameters:outputType:outputResultName:sourceApplication:descriptionSummary:categories:searchKeywords:deprecationDefinition:requirements:flags:authenticationPolicy:sampleInvocations:systemProtocols:customIcon:hiddenParameters:sourceContainer:attributionContainer:visibilityFlags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v44 = *a5;
  v51 = *a19;
  v27 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v28 = v27[17];
  v43 = v28;
  v29 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  v30 = v27[19];
  v42 = (a9 + v27[18]);
  v31 = type metadata accessor for ToolKitProtoAppDefinition(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  v32 = v27[21];
  v33 = (a9 + v27[20]);
  v34 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  (*(*(v34 - 8) + 56))(a9 + v32, 1, 1, v34);
  v35 = v27[22];
  v36 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  (*(*(v36 - 8) + 56))(a9 + v35, 1, 1, v36);
  v37 = v27[23];
  v38 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v39 = *(*(v38 - 8) + 56);
  v39(a9 + v37, 1, 1, v38);
  v40 = v27[24];
  v39(a9 + v40, 1, 1, v38);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v44;
  *(a9 + 40) = a6;
  sub_23C5842D0(a7, a9 + v43, &qword_27E1FAC40, &unk_23C8791C0);
  *v42 = a8;
  v42[1] = a10;
  sub_23C5842D0(a11, a9 + v30, &qword_27E1FEC48, &unk_23C889D50);
  *v33 = a12;
  v33[1] = a13;
  *(a9 + 48) = a14;
  *(a9 + 56) = a15;
  sub_23C5842D0(a16, a9 + v32, &qword_27E1FEC40, &qword_23C8898A8);
  *(a9 + 64) = a17;
  *(a9 + 72) = a18;
  *(a9 + 80) = v51;
  *(a9 + 88) = a20;
  *(a9 + 96) = a21;
  sub_23C5842D0(a22, a9 + v35, &qword_27E1FEC38, &unk_23C889D60);
  *(a9 + 104) = a23;
  sub_23C5842D0(a24, a9 + v37, &qword_27E1FEC30, &qword_23C8898A0);
  result = sub_23C5842D0(a25, a9 + v40, &qword_27E1FEC30, &qword_23C8898A0);
  *(a9 + 112) = a26;
  return result;
}

uint64_t ToolKitProtoAppDefinition.bundleID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ToolKitProtoAppDefinition.bundleVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.bundleVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ToolKitProtoAppDefinition.teamID.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.teamID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_23C7288F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70CA54();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoAppDefinition.Device.deviceKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_23C581BD8(v2, v3);
}

uint64_t ToolKitProtoAppDefinition.Device.deviceKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_23C581AD0(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t ToolKitProtoAppDefinition.init(id:name:bundleID:bundleVersion:teamID:device:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v24 = *a13;
  v19 = *(type metadata accessor for ToolKitProtoAppDefinition(0) + 40);
  v20 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  result = sub_23C5842D0(a12, a9 + v19, &qword_27E1FEBE0, &qword_23C889850);
  *(a9 + 80) = v24;
  return result;
}

uint64_t sub_23C728C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70CAFC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C728CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70CAA8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoContainerDefinition.init(name:containerID:bundleVersion:containerType:teamID:device:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v18 = *a7;
  v23 = *a12;
  v19 = *(type metadata accessor for ToolKitProtoContainerDefinition(0) + 40);
  v20 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 32) = v18;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  result = sub_23C5842D0(a11, a9 + v19, &qword_27E1FEBD0, &unk_23C889D90);
  *(a9 + 33) = v23;
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.numericFormat.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.numericFormat.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.init(name:numericFormat:synonyms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[2] = a5;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.tintColorData.getter()
{
  v1 = *(v0 + 16);
  sub_23C5EDBA0(v1, *(v0 + 24));
  return v1;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.tintColorData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C5AD0AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.configurationData.getter()
{
  v1 = *(v0 + 32);
  sub_23C5EDBA0(v1, *(v0 + 40));
  return v1;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.configurationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C5AD0AC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.init(name:tintColorData:configurationData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *(a7 + 1) = xmmword_23C879130;
  *(a7 + 2) = xmmword_23C879130;
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  sub_23C5AD0AC(a7[2], a7[3]);
  a7[2] = a3;
  a7[3] = a4;
  result = sub_23C5AD0AC(a7[4], a7[5]);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.init(title:subtitle:altText:image:synonyms:snippetPluginModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v14 = v13[6];
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v15 - 8) + 56))(&a8[v14], 1, 1, v15);
  v16 = v13[7];
  v17 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = v13[8];
  v19 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v19 - 8) + 56))(&a8[v18], 1, 1, v19);
  v20 = v13[9];
  v21 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v21 - 8) + 56))(&a8[v20], 1, 1, v21);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  sub_23C5842D0(a3, &a8[v14], &qword_27E1FEBB0, &qword_23C889830);
  sub_23C5842D0(a4, &a8[v16], &qword_27E1FEBA0, &unk_23C889DA0);
  sub_23C5842D0(a5, &a8[v18], &qword_27E1FEB90, &qword_23C889818);
  *(a8 + 2) = a6;
  return sub_23C5842D0(a7, &a8[v20], &qword_27E1FEB80, &unk_23C889DB0);
}

uint64_t sub_23C7299D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70CB50();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoCoercionDefinition.init(direction:typeInstance:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 20);
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = v5;
  return sub_23C5842D0(a2, &a3[v6], &qword_27E1FAC40, &unk_23C8791C0);
}

BOOL _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV0cdE13PrimitiveKindO2eeoiySbAE_AEtFZ_0(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 0x17:
      if (v2 != 23)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x18:
      if (v2 != 24)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x19:
      if (v2 != 25)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1A:
      if (v2 != 26)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1B:
      if (v2 != 27)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1C:
      if (v2 != 28)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1D:
      if (v2 != 29)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1E:
      if (v2 != 30)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1F:
      if (v2 != 31)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x20:
      if (v2 != 32)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x21:
      if (v2 != 33)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x22:
      if (v2 != 34)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x23:
      if (v2 != 35)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x24:
      if (v2 != 36)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x25:
      if (v2 != 37)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x26:
      if (v2 != 38)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x27:
      if (v2 != 39)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x28:
      if (v2 != 40)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    default:
      if ((v2 - 23) < 0x12)
      {
LABEL_40:
        result = 0;
      }

      else
      {
        result = *a1 == v2;
      }

      break;
  }

  return result;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC13SummaryStringV0cdE13ComponentKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_23C5EDA24(*a2, *(a2 + 8));
    sub_23C5EDA24(v3, v2);
    sub_23C5EDA44(v3, v2);
    sub_23C5EDA44(v5, v4);
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_23C872014();
    sub_23C5EDA24(v5, v4);
    sub_23C5EDA24(v3, v2);
    sub_23C5EDA44(v3, v2);
    sub_23C5EDA44(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_23C5EDA24(v6, v7);
  sub_23C5EDA24(v3, v2);
  sub_23C5EDA44(v3, v2);
  sub_23C5EDA44(v3, v2);
  return 1;
}

uint64_t sub_23C729F2C(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_23C872014();
}

uint64_t _s26AIMLInstrumentationStreams45ToolKitProtoAssistantTypeSchemaDefinitionKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE98, &qword_23C88DAE0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_23C73EA70(a1, &v27 - v18, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_23C73EA70(a2, &v19[v20], type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C73EA70(v19, v13, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C73E9B0(&v19[v20], v6, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v21 = static ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.== infix(_:_:)(v13, v6);
      sub_23C73E950(v6, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v22 = v13;
      v23 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration;
LABEL_9:
      sub_23C73E950(v22, v23);
      sub_23C73E950(v19, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      return v21 & 1;
    }

    v24 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration;
    v25 = v13;
  }

  else
  {
    sub_23C73EA70(v19, v15, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23C73E9B0(&v19[v20], v9, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v21 = static ToolKitProtoAssistantTypeSchemaDefinition.Entity.== infix(_:_:)(v15, v9);
      sub_23C73E950(v9, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v22 = v15;
      v23 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity;
      goto LABEL_9;
    }

    v24 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity;
    v25 = v15;
  }

  sub_23C73E950(v25, v24);
  sub_23C585C34(v19, &qword_27E1FFE98, &qword_23C88DAE0);
  v21 = 0;
  return v21 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV0cdE10StaticKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v32 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (&v32 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE68, &qword_23C88DAB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - v18;
  v20 = (&v32 + *(v17 + 56) - v18);
  sub_23C73EA70(a1, &v32 - v18, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_23C73EA70(a2, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23C73EA70(v19, v15, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v23 = *v15;
    v24 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v30 = *v20;
      v29 = v20[1];
      v22 = sub_23C6F73FC(v23, v24, v30, v29);
      sub_23C595090(v30, v29);
      sub_23C595090(v23, v24);
      goto LABEL_19;
    }

    sub_23C595090(v23, v24);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_23C73EA70(v19, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C73E9B0(v20, v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      v22 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV6StaticV6SymbolV2eeoiySbAI_AItFZ_0(v13, v6);
      sub_23C73E950(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      sub_23C73E950(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
LABEL_19:
      sub_23C73E950(v19, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      return v22 & 1;
    }

    sub_23C73E950(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    goto LABEL_16;
  }

  sub_23C73EA70(v19, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  v26 = *v10;
  v25 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

LABEL_16:
    sub_23C585C34(v19, &qword_27E1FFE68, &qword_23C88DAB0);
    goto LABEL_17;
  }

  if (v26 == *v20 && v25 == v20[1])
  {

    goto LABEL_21;
  }

  v28 = sub_23C872014();

  if (v28)
  {
LABEL_21:
    sub_23C73E950(v19, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v22 = 1;
    return v22 & 1;
  }

  sub_23C73E950(v19, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
LABEL_17:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV0cdE9ImageKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE60, &qword_23C88DAA8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = *(v16 + 56);
  sub_23C73EA70(a1, &v25 - v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_23C73EA70(a2, &v18[v19], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C73EA70(v18, v14, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23C73E9B0(&v18[v19], v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_23C6F73FC(*v14, *(v14 + 1), *v8, *(v8 + 1)))
      {
        sub_23C870F34();
        sub_23C73EA18();
        v23 = sub_23C871754();
        sub_23C73E950(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
        if (v23)
        {
          sub_23C73E950(v14, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
          sub_23C73E950(v18, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
          v20 = 1;
          return v20 & 1;
        }
      }

      else
      {
        sub_23C73E950(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      }

      sub_23C73E950(v14, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_23C73E950(v18, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v22 = v14;
LABEL_7:
    sub_23C73E950(v22, v21);
    sub_23C585C34(v18, &qword_27E1FFE60, &qword_23C88DAA8);
    goto LABEL_13;
  }

  sub_23C73EA70(v18, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static;
    v22 = v12;
    goto LABEL_7;
  }

  sub_23C73E9B0(&v18[v19], v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  v20 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV6StaticV2eeoiySbAG_AGtFZ_0(v12, v6);
  sub_23C73E950(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  sub_23C73E950(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  sub_23C73E950(v18, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV0cdE11AltTextKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  MEMORY[0x28223BE20](v29);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v28);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE70, &qword_23C88DAB8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = *(v15 + 56);
  sub_23C73EA70(a1, &v28 - v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_23C73EA70(a2, &v17[v18], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C73EA70(v17, v11, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C73E9B0(&v17[v18], v5, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v19 = *v11 == *v5 && v11[1] == v5[1];
      if (v19 || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          sub_23C73E950(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
          v20 = v11;
          v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
LABEL_17:
          sub_23C73E950(v20, v21);
          sub_23C73E950(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
          return 1;
        }
      }

      sub_23C73E950(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v26 = v11;
      v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
LABEL_21:
      sub_23C73E950(v26, v27);
      sub_23C73E950(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      return 0;
    }

    v22 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
    v23 = v11;
  }

  else
  {
    sub_23C73EA70(v17, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23C73E9B0(&v17[v18], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_23C6F73FC(*v13, *(v13 + 1), *v7, *(v7 + 1)))
      {
        sub_23C870F34();
        sub_23C73EA18();
        v24 = sub_23C871754();
        sub_23C73E950(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
        if (v24)
        {
          v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
          v20 = v13;
          goto LABEL_17;
        }
      }

      else
      {
        sub_23C73E950(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      }

      v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
      v26 = v13;
      goto LABEL_21;
    }

    v22 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v23 = v13;
  }

  sub_23C73E950(v23, v22);
  sub_23C585C34(v17, &qword_27E1FFE70, &qword_23C88DAB8);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0cdeF4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v115 = a2;
  v116 = a1;
  v2 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  MEMORY[0x28223BE20](v2 - 8);
  v107 = (&v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v106 = (&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v105 = (&v94 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v104 = (&v94 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v103 = (&v94 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v102 = (&v94 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v101 = (&v94 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v100 = (&v94 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v99 = (&v94 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v98 = (&v94 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v97 = (&v94 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v96 = (&v94 - v26);
  MEMORY[0x28223BE20](v25);
  v95 = (&v94 - v27);
  v28 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v29 = MEMORY[0x28223BE20](v28);
  v114 = (&v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v113 = (&v94 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v112 = (&v94 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v111 = (&v94 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v110 = (&v94 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v109 = (&v94 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v108 = (&v94 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = (&v94 - v44);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = (&v94 - v47);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = (&v94 - v50);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v94 - v53);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = (&v94 - v56);
  MEMORY[0x28223BE20](v55);
  v59 = (&v94 - v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEB8, &qword_23C88DB00);
  v61 = MEMORY[0x28223BE20](v60 - 8);
  v63 = &v94 - v62;
  v64 = *(v61 + 56);
  sub_23C73EA70(v116, &v94 - v62, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  v116 = v64;
  sub_23C73EA70(v115, &v63[v64], type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C73EA70(v63, v57, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v84 = v116;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_38;
      }

      v69 = &v63[v84];
      v70 = v96;
      goto LABEL_34;
    case 2u:
      sub_23C73EA70(v63, v54, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v79 = v116;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v80 = v97;
        sub_23C73E9B0(&v63[v79], v97, type metadata accessor for ToolKitProtoTypedValue);
        v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v54, v80);
        v74 = type metadata accessor for ToolKitProtoTypedValue;
        sub_23C73E950(v80, type metadata accessor for ToolKitProtoTypedValue);
        v75 = v54;
        goto LABEL_36;
      }

      v66 = type metadata accessor for ToolKitProtoTypedValue;
      v67 = v54;
      goto LABEL_40;
    case 3u:
      sub_23C73EA70(v63, v51, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v81 = v116;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v82 = v98;
        sub_23C73E9B0(&v63[v81], v98, type metadata accessor for ToolKitProtoTypedValue);
        v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v51, v82);
        v74 = type metadata accessor for ToolKitProtoTypedValue;
        sub_23C73E950(v82, type metadata accessor for ToolKitProtoTypedValue);
        v75 = v51;
        goto LABEL_36;
      }

      v66 = type metadata accessor for ToolKitProtoTypedValue;
      v67 = v51;
      goto LABEL_40;
    case 4u:
      sub_23C73EA70(v63, v48, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v71 = v116;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v72 = v99;
        sub_23C73E9B0(&v63[v71], v99, type metadata accessor for ToolKitProtoTypedValue);
        v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v48, v72);
        v74 = type metadata accessor for ToolKitProtoTypedValue;
        sub_23C73E950(v72, type metadata accessor for ToolKitProtoTypedValue);
        v75 = v48;
        goto LABEL_36;
      }

      v66 = type metadata accessor for ToolKitProtoTypedValue;
      v67 = v48;
      goto LABEL_40;
    case 5u:
      sub_23C73EA70(v63, v45, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v85 = v116;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v86 = v100;
        sub_23C73E9B0(&v63[v85], v100, type metadata accessor for ToolKitProtoTypedValue);
        v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v45, v86);
        sub_23C73E950(v86, type metadata accessor for ToolKitProtoTypedValue);
        v75 = v45;
        v87 = type metadata accessor for ToolKitProtoTypedValue;
        goto LABEL_37;
      }

      v66 = type metadata accessor for ToolKitProtoTypedValue;
      v67 = v45;
      goto LABEL_40;
    case 6u:
      v57 = v108;
      sub_23C73EA70(v63, v108, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v88 = v116;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_38;
      }

      v69 = &v63[v88];
      v70 = v101;
      goto LABEL_34;
    case 7u:
      v57 = v109;
      sub_23C73EA70(v63, v109, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v83 = v116;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_38;
      }

      v69 = &v63[v83];
      v70 = v102;
      goto LABEL_34;
    case 8u:
      v57 = v110;
      sub_23C73EA70(v63, v110, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v90 = v116;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_38;
      }

      v69 = &v63[v90];
      v70 = v103;
      goto LABEL_34;
    case 9u:
      v57 = v111;
      sub_23C73EA70(v63, v111, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v78 = v116;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_38;
      }

      v69 = &v63[v78];
      v70 = v104;
      goto LABEL_34;
    case 0xAu:
      v57 = v112;
      sub_23C73EA70(v63, v112, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v89 = v116;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_38;
      }

      v69 = &v63[v89];
      v70 = v105;
      goto LABEL_34;
    case 0xBu:
      v57 = v113;
      sub_23C73EA70(v63, v113, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v68 = v116;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_38:
        v91 = type metadata accessor for ToolKitProtoTypedValue;
        goto LABEL_39;
      }

      v69 = &v63[v68];
      v70 = v106;
LABEL_34:
      sub_23C73E9B0(v69, v70, type metadata accessor for ToolKitProtoTypedValue);
      v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v57, v70);
      v77 = type metadata accessor for ToolKitProtoTypedValue;
      goto LABEL_35;
    case 0xCu:
      v57 = v114;
      sub_23C73EA70(v63, v114, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v76 = v116;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v91 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair;
LABEL_39:
        v66 = v91;
        v67 = v57;
        goto LABEL_40;
      }

      v70 = v107;
      sub_23C73E9B0(&v63[v76], v107, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      v73 = static ToolKitProtoComparisonPredicate.Comparison.Pair.== infix(_:_:)();
      v77 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair;
LABEL_35:
      v74 = v77;
      sub_23C73E950(v70, v77);
      v75 = v57;
      goto LABEL_36;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_41;
      }

      goto LABEL_27;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_41;
      }

LABEL_27:
      sub_23C73E950(v63, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v73 = 1;
      return v73 & 1;
    default:
      sub_23C73EA70(v63, v59, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v65 = v116;
      if (swift_getEnumCaseMultiPayload())
      {
        v66 = type metadata accessor for ToolKitProtoTypedValue;
        v67 = v59;
LABEL_40:
        sub_23C73E950(v67, v66);
LABEL_41:
        sub_23C585C34(v63, &qword_27E1FFEB8, &qword_23C88DB00);
        v73 = 0;
      }

      else
      {
        v93 = v95;
        sub_23C73E9B0(&v63[v65], v95, type metadata accessor for ToolKitProtoTypedValue);
        v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v59, v93);
        v74 = type metadata accessor for ToolKitProtoTypedValue;
        sub_23C73E950(v93, type metadata accessor for ToolKitProtoTypedValue);
        v75 = v59;
LABEL_36:
        v87 = v74;
LABEL_37:
        sub_23C73E950(v75, v87);
        sub_23C73E950(v63, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      }

      return v73 & 1;
  }
}

uint64_t _s26AIMLInstrumentationStreams34ToolKitProtoSystemTypeProtocolKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  MEMORY[0x28223BE20](v36);
  v39 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  MEMORY[0x28223BE20](v37);
  v38 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v36 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEF0, &qword_23C88DB38);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v36 - v20;
  v22 = *(v19 + 56);
  sub_23C73EA70(a1, &v36 - v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_23C73EA70(a2, &v21[v22], type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C73EA70(v21, v15, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v23 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema;
        v24 = v15;
        goto LABEL_38;
      }

      sub_23C73E9B0(&v21[v22], v7, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      v29 = static ToolKitProtoSystemTypeProtocol.AssistantSchema.== infix(_:_:)();
      sub_23C73E950(v7, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_23C73E950(v15, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_23C73E950(v21, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      return v29 & 1;
    case 2u:
      sub_23C73EA70(v21, v12, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v23 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
        v24 = v12;
        goto LABEL_38;
      }

      v25 = v39;
      sub_23C73E9B0(&v21[v22], v39, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      if (sub_23C5D25E0(*v12, *v25))
      {
        sub_23C870F34();
        sub_23C73EA18();
        v26 = sub_23C871754();
        sub_23C73E950(v25, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
        if (v26)
        {
          v27 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
          v28 = v12;
          goto LABEL_48;
        }
      }

      else
      {
        sub_23C73E950(v25, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      }

      v34 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
      v35 = v12;
      goto LABEL_55;
    case 3u:
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 4u:
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    default:
      sub_23C73EA70(v21, v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v23 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
        v24 = v17;
LABEL_38:
        sub_23C73E950(v24, v23);
LABEL_39:
        sub_23C585C34(v21, &qword_27E1FFEF0, &qword_23C88DB38);
        goto LABEL_40;
      }

      v30 = v38;
      sub_23C73E9B0(&v21[v22], v38, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      v31 = *v17 == *v30 && v17[1] == v30[1];
      if (!v31 && (sub_23C872014() & 1) == 0)
      {
        sub_23C73E950(v30, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
LABEL_54:
        v34 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
        v35 = v17;
LABEL_55:
        sub_23C73E950(v35, v34);
        sub_23C73E950(v21, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
LABEL_40:
        v29 = 0;
        return v29 & 1;
      }

      sub_23C870F34();
      sub_23C73EA18();
      v32 = sub_23C871754();
      sub_23C73E950(v30, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      if ((v32 & 1) == 0)
      {
        goto LABEL_54;
      }

      v27 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
      v28 = v17;
LABEL_48:
      sub_23C73E950(v28, v27);
LABEL_49:
      sub_23C73E950(v21, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v29 = 1;
      return v29 & 1;
  }
}

uint64_t _s26AIMLInstrumentationStreams34ToolKitProtoRuntimeRequirementKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v37 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  MEMORY[0x28223BE20](v37);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v39 = &v37 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEA0, &qword_23C88DAE8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v37 - v23;
  v25 = *(v22 + 56);
  sub_23C73EA70(a1, &v37 - v23, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_23C73EA70(v40, &v24[v25], type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23C73EA70(v24, v18, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v27 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability;
        v28 = v18;
        goto LABEL_22;
      }

      sub_23C73E9B0(&v24[v25], v6, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v32 = static ToolKitProtoRuntimeRequirement.DeviceCapability.== infix(_:_:)();
      sub_23C73E950(v6, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v33 = v18;
      v34 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability;
    }

    else
    {
      sub_23C73EA70(v24, v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v27 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation;
        v28 = v20;
LABEL_22:
        sub_23C73E950(v28, v27);
        goto LABEL_23;
      }

      sub_23C73E9B0(&v24[v25], v9, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v32 = static ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.== infix(_:_:)();
      sub_23C73E950(v9, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v33 = v20;
      v34 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation;
    }

    sub_23C73E950(v33, v34);
    sub_23C73E950(v24, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    return v32 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v29 = v39;
    sub_23C73EA70(v24, v39, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v27 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag;
      v28 = v29;
      goto LABEL_22;
    }

    v30 = &v24[v25];
    v31 = v38;
    sub_23C73E9B0(v30, v38, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    if ((*v29 != *v31 || *(v29 + 8) != *(v31 + 8)) && (sub_23C872014() & 1) == 0 || (*(v29 + 16) != *(v31 + 16) || *(v29 + 24) != *(v31 + 24)) && (sub_23C872014() & 1) == 0 || *(v29 + 32) != *(v31 + 32) || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
    {
      sub_23C73E950(v31, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_23C73E950(v29, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_23C73E950(v24, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      goto LABEL_24;
    }

    sub_23C73E950(v31, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_23C73E950(v29, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_23C73E950(v24, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v32 = 1;
  }

  else
  {
    sub_23C73EA70(v24, v13, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_23:
      sub_23C585C34(v24, &qword_27E1FFEA0, &qword_23C88DAE8);
LABEL_24:
      v32 = 0;
      return v32 & 1;
    }

    v35 = *v13 ^ v24[v25];
    sub_23C73E950(v24, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v32 = v35 ^ 1;
  }

  return v32 & 1;
}

BOOL _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV0cdE20DeviceCapabilityKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEA8, &qword_23C88DAF0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v11 + 56);
  sub_23C73EA70(a1, &v18 - v12, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_23C73EA70(a2, &v13[v14], type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_23C73E9B0(v13, v9, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_23C73E9B0(&v13[v14], v7, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  v15 = *v9 == *v7 && *(v9 + 1) == *(v7 + 1);
  v16 = 0;
  if (v15 || (sub_23C872014()) && v9[16] == v7[16])
  {
    sub_23C870F34();
    sub_23C73EA18();
    if (sub_23C871754())
    {
      v16 = 1;
    }
  }

  sub_23C73E950(v7, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_23C73E950(v9, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  return v16;
}

uint64_t _s26AIMLInstrumentationStreams42ToolKitProtoContentItemClassDescriptorKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  MEMORY[0x28223BE20](v40);
  v41 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  MEMORY[0x28223BE20](v39);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v38 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (&v38 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEC8, &qword_23C88DB10);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  v20 = (&v38 + *(v17 + 56) - v18);
  sub_23C73EA70(a1, &v38 - v18, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_23C73EA70(a2, v20, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C73EA70(v19, v13, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_23C73E9B0(v20, v6, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
        v22 = *v13 == *v6 && v13[1] == v6[1];
        if (v22 || (sub_23C872014() & 1) != 0)
        {
          v23 = v13[2] == v6[2] && v13[3] == v6[3];
          if (v23 || (sub_23C872014() & 1) != 0)
          {
            sub_23C870F34();
            sub_23C73EA18();
            if (sub_23C871754())
            {
              v24 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
              sub_23C73E950(v6, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
              v25 = v13;
LABEL_31:
              sub_23C73E950(v25, v24);
LABEL_49:
              sub_23C73E950(v19, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
              return 1;
            }
          }
        }

        v35 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
        sub_23C73E950(v6, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
        v36 = v13;
LABEL_44:
        sub_23C73E950(v36, v35);
LABEL_45:
        sub_23C73E950(v19, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
        return 0;
      }

      v31 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
      v32 = v13;
    }

    else
    {
      sub_23C73EA70(v19, v10, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v28 = v41;
        sub_23C73E9B0(v20, v41, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
        v29 = *v10 == *v28 && v10[1] == v28[1];
        if (v29 || (sub_23C872014() & 1) != 0)
        {
          v30 = v10[2] == v28[2] && v10[3] == v28[3];
          if (v30 || (sub_23C872014() & 1) != 0)
          {
            sub_23C870F34();
            sub_23C73EA18();
            if (sub_23C871754())
            {
              v24 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
              sub_23C73E950(v28, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
              v25 = v10;
              goto LABEL_31;
            }
          }
        }

        v35 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
        sub_23C73E950(v28, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
        v36 = v10;
        goto LABEL_44;
      }

      v31 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
      v32 = v10;
    }

    sub_23C73E950(v32, v31);
  }

  else
  {
    sub_23C73EA70(v19, v15, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v27 = *v15;
    v26 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v27 == *v20 && v26 == v20[1])
      {

        goto LABEL_49;
      }

      v34 = sub_23C872014();

      if (v34)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  sub_23C585C34(v19, &qword_27E1FFEC8, &qword_23C88DB10);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V0cdeF12TemplateKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v110 = a1;
  v2 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v101 = (&v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v100 = (&v88 - v6);
  v7 = MEMORY[0x28223BE20](v5);
  v99 = (&v88 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v98 = (&v88 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v97 = (&v88 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = (&v88 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v95 = (&v88 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v94 = (&v88 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v93 = (&v88 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v92 = (&v88 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v91 = (&v88 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v90 = (&v88 - v26);
  MEMORY[0x28223BE20](v25);
  v89 = (&v88 - v27);
  v28 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v29 = MEMORY[0x28223BE20](v28);
  v108 = (&v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v107 = (&v88 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v106 = (&v88 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v105 = (&v88 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v104 = (&v88 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v103 = (&v88 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v102 = (&v88 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = (&v88 - v44);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = (&v88 - v47);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = (&v88 - v50);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v88 - v53);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = (&v88 - v56);
  MEMORY[0x28223BE20](v55);
  v59 = (&v88 - v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEC0, &qword_23C88DB08);
  v61 = MEMORY[0x28223BE20](v60 - 8);
  v63 = &v88 - v62;
  v64 = *(v61 + 56);
  sub_23C73EA70(v110, &v88 - v62, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  v110 = v64;
  sub_23C73EA70(v109, &v63[v64], type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C73EA70(v63, v57, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v80 = v110;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = v90;
        sub_23C73E9B0(&v63[v80], v90, type metadata accessor for ToolKitProtoTypeInstance);
        v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v57, v81);
        sub_23C73E950(v81, type metadata accessor for ToolKitProtoTypeInstance);
        v72 = v57;
        goto LABEL_35;
      }

      v59 = v57;
      goto LABEL_41;
    case 2u:
      sub_23C73EA70(v63, v54, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v75 = v110;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v76 = v91;
        sub_23C73E9B0(&v63[v75], v91, type metadata accessor for ToolKitProtoTypeInstance);
        v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v54, v76);
        sub_23C73E950(v76, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C73E950(v54, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C73E950(v63, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        return v71 & 1;
      }

      v59 = v54;
      goto LABEL_41;
    case 3u:
      sub_23C73EA70(v63, v51, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v77 = v110;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v78 = v92;
        sub_23C73E9B0(&v63[v77], v92, type metadata accessor for ToolKitProtoTypeInstance);
        v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v51, v78);
        sub_23C73E950(v78, type metadata accessor for ToolKitProtoTypeInstance);
        v72 = v51;
        goto LABEL_35;
      }

      v59 = v51;
      goto LABEL_41;
    case 4u:
      sub_23C73EA70(v63, v48, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v69 = v110;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v70 = v93;
        sub_23C73E9B0(&v63[v69], v93, type metadata accessor for ToolKitProtoTypeInstance);
        v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v48, v70);
        sub_23C73E950(v70, type metadata accessor for ToolKitProtoTypeInstance);
        v72 = v48;
        goto LABEL_35;
      }

      v59 = v48;
      goto LABEL_41;
    case 5u:
      sub_23C73EA70(v63, v45, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v82 = v110;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v83 = v94;
        sub_23C73E9B0(&v63[v82], v94, type metadata accessor for ToolKitProtoTypeInstance);
        v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v45, v83);
        sub_23C73E950(v83, type metadata accessor for ToolKitProtoTypeInstance);
        v72 = v45;
LABEL_35:
        sub_23C73E950(v72, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C73E950(v63, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      }

      else
      {
        v59 = v45;
LABEL_41:
        sub_23C73E950(v59, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_42:
        sub_23C585C34(v63, &qword_27E1FFEC0, &qword_23C88DB08);
        v71 = 0;
      }

      return v71 & 1;
    case 6u:
      v59 = v102;
      sub_23C73EA70(v63, v102, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v84 = v110;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_41;
      }

      v66 = &v63[v84];
      v67 = v95;
      goto LABEL_34;
    case 7u:
      v59 = v103;
      sub_23C73EA70(v63, v103, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v79 = v110;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_41;
      }

      v66 = &v63[v79];
      v67 = v96;
      goto LABEL_34;
    case 8u:
      v59 = v104;
      sub_23C73EA70(v63, v104, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v86 = v110;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_41;
      }

      v66 = &v63[v86];
      v67 = v97;
      goto LABEL_34;
    case 9u:
      v59 = v105;
      sub_23C73EA70(v63, v105, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v74 = v110;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_41;
      }

      v66 = &v63[v74];
      v67 = v98;
      goto LABEL_34;
    case 0xAu:
      v59 = v106;
      sub_23C73EA70(v63, v106, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v85 = v110;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_41;
      }

      v66 = &v63[v85];
      v67 = v99;
      goto LABEL_34;
    case 0xBu:
      v59 = v107;
      sub_23C73EA70(v63, v107, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v68 = v110;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_41;
      }

      v66 = &v63[v68];
      v67 = v100;
      goto LABEL_34;
    case 0xCu:
      v59 = v108;
      sub_23C73EA70(v63, v108, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v73 = v110;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_41;
      }

      v66 = &v63[v73];
      v67 = v101;
      goto LABEL_34;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_42;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_42;
      }

      goto LABEL_27;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_42;
      }

LABEL_27:
      sub_23C73E950(v63, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v71 = 1;
      return v71 & 1;
    default:
      sub_23C73EA70(v63, v59, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v65 = v110;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_41;
      }

      v66 = &v63[v65];
      v67 = v89;
LABEL_34:
      sub_23C73E9B0(v66, v67, type metadata accessor for ToolKitProtoTypeInstance);
      v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v59, v67);
      sub_23C73E950(v67, type metadata accessor for ToolKitProtoTypeInstance);
      v72 = v59;
      goto LABEL_35;
  }
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV0cde5ValueI4KindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v50 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v49 = (&v49 - v5);
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v12 = MEMORY[0x28223BE20](v11);
  v51 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v49 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v49 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v49 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFED0, &qword_23C88DB18);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v49 - v27;
  v29 = (&v49 + *(v26 + 56) - v27);
  sub_23C73EA70(v53, &v49 - v27, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_23C73EA70(v54, v29, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v52;
    if (EnumCaseMultiPayload)
    {
      sub_23C73EA70(v28, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_23C73E9B0(v29, v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
        v39 = v28;
        V2eeoiySbAI_AItFZ_0 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V29ContentPropertyPossibleValuesV2eeoiySbAI_AItFZ_0(v22, v36);
        v41 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues;
        sub_23C73E950(v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
        v42 = v22;
        goto LABEL_20;
      }

      v37 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues;
    }

    else
    {
      v22 = v24;
      sub_23C73EA70(v28, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      if (!swift_getEnumCaseMultiPayload())
      {
        v31 = v28;
        sub_23C73E9B0(v29, v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
        if ((*v22 != *v10 || v22[1] != v10[1]) && (sub_23C872014() & 1) == 0 || (v22[2] != v10[2] || v22[3] != v10[3]) && (sub_23C872014() & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
        {
          sub_23C73E950(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
          sub_23C73E950(v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
LABEL_40:
          sub_23C73E950(v31, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
          goto LABEL_29;
        }

        sub_23C73E950(v10, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
        sub_23C73E950(v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
LABEL_42:
        sub_23C73E950(v31, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
        V2eeoiySbAI_AItFZ_0 = 1;
        return V2eeoiySbAI_AItFZ_0 & 1;
      }

      v37 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration;
    }

    v46 = v37;
    v47 = v22;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23C73EA70(v28, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v46 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
      v47 = v19;
LABEL_27:
      sub_23C73E950(v47, v46);
      goto LABEL_28;
    }

    v38 = v49;
    sub_23C73E9B0(v29, v49, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    v39 = v28;
    V2eeoiySbAI_AItFZ_0 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V9LinkQueryV2eeoiySbAI_AItFZ_0(v19, v38);
    v41 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
    sub_23C73E950(v38, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    v42 = v19;
LABEL_20:
    v45 = v41;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v31 = v28;
    sub_23C73EA70(v28, v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v33 = *v16;
    v32 = v16[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      if (v33 != *v29 || v32 != v29[1])
      {
        v35 = sub_23C872014();

        if (v35)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      goto LABEL_42;
    }

    v28 = v31;
LABEL_28:
    sub_23C585C34(v28, &qword_27E1FFED0, &qword_23C88DB18);
LABEL_29:
    V2eeoiySbAI_AItFZ_0 = 0;
    return V2eeoiySbAI_AItFZ_0 & 1;
  }

  v43 = v51;
  sub_23C73EA70(v28, v51, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v46 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
    v47 = v43;
    goto LABEL_27;
  }

  v44 = v50;
  sub_23C73E9B0(v29, v50, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v39 = v28;
  V2eeoiySbAI_AItFZ_0 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V9LinkQueryV2eeoiySbAI_AItFZ_0(v43, v44);
  sub_23C73E950(v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v42 = v43;
  v45 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
LABEL_21:
  sub_23C73E950(v42, v45);
  sub_23C73E950(v39, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  return V2eeoiySbAI_AItFZ_0 & 1;
}

uint64_t _s26AIMLInstrumentationStreams34ToolKitProtoRestrictionContextKindO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v34 - v14);
  v16 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = *a1;
  v23 = *a2;
  v24 = v22 >> 61;
  if ((v22 >> 61) <= 1)
  {
    if (v24)
    {
      if (v23 >> 61 == 1)
      {
        v30 = swift_projectBox();
        v31 = swift_projectBox();
        sub_23C73EA70(v30, v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        sub_23C73EA70(v31, v13, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        if (sub_23C5D25E0(*v15, *v13))
        {
          sub_23C870F34();
          sub_23C73EA18();

          v32 = sub_23C871754();
          sub_23C73E950(v13, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
          sub_23C73E950(v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

          if (v32)
          {
            v27 = 1;
            return v27 & 1;
          }
        }

        else
        {

          sub_23C73E950(v13, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
          sub_23C73E950(v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        }
      }
    }

    else if (!(v23 >> 61))
    {
      v25 = swift_projectBox();
      v26 = swift_projectBox();
      sub_23C73EA70(v25, v21, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
      sub_23C73EA70(v26, v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

      v27 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV2eeoiySbAE_AEtFZ_0(v21, v19);
      sub_23C73E950(v19, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
      sub_23C73E950(v21, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
LABEL_13:

      return v27 & 1;
    }

LABEL_19:
    v27 = 0;
    return v27 & 1;
  }

  if (v24 != 2)
  {
    if (v24 == 3)
    {
      if (v23 >> 61 != 3)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    if (v23 >> 61 == 4)
    {
      v28 = swift_projectBox();
      v29 = swift_projectBox();
      sub_23C73EA70(v28, v9, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      sub_23C73EA70(v29, v7, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

      v27 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV13TextTypedWithV2eeoiySbAE_AEtFZ_0(v9, v7);
      sub_23C73E950(v7, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      sub_23C73E950(v9, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (v23 >> 61 != 2)
  {
    goto LABEL_19;
  }

LABEL_10:
  v27 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  return v27 & 1;
}

BOOL _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV08DeferredG0V0cdE11StorageKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v18 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFED8, &qword_23C88DB20);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v11 + 56);
  sub_23C73EA70(a1, &v18 - v12, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_23C73EA70(a2, &v13[v14], type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_23C73E9B0(v13, v9, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_23C73E9B0(&v13[v14], v7, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  v16 = 0;
  if (sub_23C6F73FC(*v9, v9[1], *v7, v7[1]))
  {
    v15 = v9[2] == v7[2] && v9[3] == v7[3];
    if (v15 || (sub_23C872014() & 1) != 0)
    {
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v16 = 1;
      }
    }
  }

  sub_23C73E950(v7, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_23C73E950(v9, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  return v16;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV0cdE12SubtitleKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  MEMORY[0x28223BE20](v28);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v27);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE78, &qword_23C88DAC0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  v18 = *(v15 + 56);
  sub_23C73EA70(a1, &v27 - v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_23C73EA70(a2, &v17[v18], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C73EA70(v17, v11, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C73E9B0(&v17[v18], v5, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v19 = *v11 == *v5 && v11[1] == v5[1];
      if (v19 || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v20 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
          sub_23C73E950(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
          v21 = v11;
LABEL_17:
          sub_23C73E950(v21, v20);
          sub_23C73E950(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
          return 1;
        }
      }

      v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
      sub_23C73E950(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v26 = v11;
LABEL_20:
      sub_23C73E950(v26, v25);
      sub_23C73E950(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      return 0;
    }

    v22 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
    v23 = v11;
  }

  else
  {
    sub_23C73EA70(v17, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23C73E9B0(&v17[v18], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_23C6F73FC(*v13, *(v13 + 1), *v7, *(v7 + 1)))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v20 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
          sub_23C73E950(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
          v21 = v13;
          goto LABEL_17;
        }
      }

      v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
      sub_23C73E950(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v26 = v13;
      goto LABEL_20;
    }

    v22 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v23 = v13;
  }

  sub_23C73E950(v23, v22);
  sub_23C585C34(v17, &qword_27E1FFE78, &qword_23C88DAC0);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams17ToolKitProtoQueryV0cdE16AnyPredicateKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v80 = a2;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  MEMORY[0x28223BE20](valid - 8);
  v75 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  MEMORY[0x28223BE20](v66);
  v76 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoAllPredicate(0);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  MEMORY[0x28223BE20](v69);
  v74 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  MEMORY[0x28223BE20](v68);
  v72 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  MEMORY[0x28223BE20](v65);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v78 = &v65 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v65 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v65 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v77 = &v65 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (&v65 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v65 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = (&v65 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEB0, &qword_23C88DAF8);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v39 = &v65 - v38;
  v40 = *(v37 + 56);
  sub_23C73EA70(v79, &v65 - v38, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_23C73EA70(v80, &v39[v40], type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v51 = v78;
        sub_23C73EA70(v39, v78, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v52 = v76;
          sub_23C73E9B0(&v39[v40], v76, type metadata accessor for ToolKitProtoSearchableItemPredicate);
          if (sub_23C6F73FC(*v51, *(v51 + 8), *v52, *(v52 + 8)))
          {
            sub_23C870F34();
            sub_23C73EA18();
            if (sub_23C871754())
            {
              v53 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_35:
              v49 = v53;
              sub_23C73E950(v52, v53);
              v50 = v51;
              goto LABEL_36;
            }
          }

          v63 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_55:
          v59 = v63;
          sub_23C73E950(v52, v63);
          v60 = v51;
          goto LABEL_56;
        }

        v58 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_47:
        v42 = v58;
        v43 = v51;
        goto LABEL_49;
      }

      sub_23C73EA70(v39, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v42 = type metadata accessor for ToolKitProtoValidPredicate;
        v43 = v17;
        goto LABEL_49;
      }

      v56 = v75;
      sub_23C73E9B0(&v39[v40], v75, type metadata accessor for ToolKitProtoValidPredicate);
      sub_23C870F34();
      sub_23C73EA18();
      v45 = sub_23C871754();
      v46 = type metadata accessor for ToolKitProtoValidPredicate;
      sub_23C73E950(v56, type metadata accessor for ToolKitProtoValidPredicate);
      v47 = v17;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C73EA70(v39, v25, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v42 = type metadata accessor for ToolKitProtoAllPredicate;
        v43 = v25;
        goto LABEL_49;
      }

      v44 = v71;
      sub_23C73E9B0(&v39[v40], v71, type metadata accessor for ToolKitProtoAllPredicate);
      sub_23C870F34();
      sub_23C73EA18();
      v45 = sub_23C871754();
      v46 = type metadata accessor for ToolKitProtoAllPredicate;
      sub_23C73E950(v44, type metadata accessor for ToolKitProtoAllPredicate);
      v47 = v25;
    }

    else
    {
      sub_23C73EA70(v39, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v42 = type metadata accessor for ToolKitProtoSuggestedPredicate;
        v43 = v22;
        goto LABEL_49;
      }

      v55 = v73;
      sub_23C73E9B0(&v39[v40], v73, type metadata accessor for ToolKitProtoSuggestedPredicate);
      sub_23C870F34();
      sub_23C73EA18();
      v45 = sub_23C871754();
      v46 = type metadata accessor for ToolKitProtoSuggestedPredicate;
      sub_23C73E950(v55, type metadata accessor for ToolKitProtoSuggestedPredicate);
      v47 = v22;
    }

    v57 = v46;
LABEL_40:
    sub_23C73E950(v47, v57);
    sub_23C73E950(v39, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    return v45 & 1;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_23C73EA70(v39, v35, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v42 = type metadata accessor for ToolKitProtoComparisonPredicate;
        v43 = v35;
LABEL_49:
        sub_23C73E950(v43, v42);
        sub_23C585C34(v39, &qword_27E1FFEB0, &qword_23C88DAF8);
LABEL_57:
        v45 = 0;
        return v45 & 1;
      }

      v61 = &v39[v40];
      v62 = v67;
      sub_23C73E9B0(v61, v67, type metadata accessor for ToolKitProtoComparisonPredicate);
      v45 = _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV2eeoiySbAC_ACtFZ_0(v35, v62);
      sub_23C73E950(v62, type metadata accessor for ToolKitProtoComparisonPredicate);
      v47 = v35;
      v57 = type metadata accessor for ToolKitProtoComparisonPredicate;
      goto LABEL_40;
    }

    sub_23C73EA70(v39, v33, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v42 = type metadata accessor for ToolKitProtoCompoundPredicate;
      v43 = v33;
      goto LABEL_49;
    }

    v54 = v70;
    sub_23C73E9B0(&v39[v40], v70, type metadata accessor for ToolKitProtoCompoundPredicate);
    if (*v33 == *v54 && (sub_23C5DC0E8(*(v33 + 1), *(v54 + 1)) & 1) != 0)
    {
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v49 = type metadata accessor for ToolKitProtoCompoundPredicate;
        sub_23C73E950(v54, type metadata accessor for ToolKitProtoCompoundPredicate);
        v50 = v33;
        goto LABEL_36;
      }
    }

    v59 = type metadata accessor for ToolKitProtoCompoundPredicate;
    sub_23C73E950(v54, type metadata accessor for ToolKitProtoCompoundPredicate);
    v60 = v33;
LABEL_56:
    sub_23C73E950(v60, v59);
    sub_23C73E950(v39, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v51 = v77;
    sub_23C73EA70(v39, v77, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v52 = v74;
      sub_23C73E9B0(&v39[v40], v74, type metadata accessor for ToolKitProtoIdSearchPredicate);
      if (*v51 == *v52 && *(v51 + 8) == *(v52 + 8) || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v53 = type metadata accessor for ToolKitProtoIdSearchPredicate;
          goto LABEL_35;
        }
      }

      v63 = type metadata accessor for ToolKitProtoIdSearchPredicate;
      goto LABEL_55;
    }

    v58 = type metadata accessor for ToolKitProtoIdSearchPredicate;
    goto LABEL_47;
  }

  sub_23C73EA70(v39, v30, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v42 = type metadata accessor for ToolKitProtoStringSearchPredicate;
    v43 = v30;
    goto LABEL_49;
  }

  v48 = v72;
  sub_23C73E9B0(&v39[v40], v72, type metadata accessor for ToolKitProtoStringSearchPredicate);
  if ((*v30 != *v48 || v30[1] != v48[1]) && (sub_23C872014() & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
  {
    v59 = type metadata accessor for ToolKitProtoStringSearchPredicate;
    sub_23C73E950(v48, type metadata accessor for ToolKitProtoStringSearchPredicate);
    v60 = v30;
    goto LABEL_56;
  }

  v49 = type metadata accessor for ToolKitProtoStringSearchPredicate;
  sub_23C73E950(v48, type metadata accessor for ToolKitProtoStringSearchPredicate);
  v50 = v30;
LABEL_36:
  sub_23C73E950(v50, v49);
  sub_23C73E950(v39, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  v45 = 1;
  return v45 & 1;
}

uint64_t _s26AIMLInstrumentationStreams018ToolKitProtoSystemC12ProtocolKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v93 = a1;
  v94 = a2;
  v81 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  MEMORY[0x28223BE20](v81);
  v89 = (&v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  MEMORY[0x28223BE20](v80);
  v87 = (&v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  MEMORY[0x28223BE20](v77);
  v88 = (&v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  MEMORY[0x28223BE20](v79);
  v84 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  MEMORY[0x28223BE20](v76);
  v83 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  MEMORY[0x28223BE20](v75);
  v82 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  MEMORY[0x28223BE20](v74);
  v78 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v14 = MEMORY[0x28223BE20](v13);
  v92 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v74 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v74 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v90 = (&v74 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v91 = (&v74 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v74 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v74 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v74 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = &v74 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE90, &qword_23C88DAD8);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v74 - v39;
  v41 = *(v38 + 56);
  sub_23C73EA70(v93, &v74 - v39, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  v93 = v41;
  sub_23C73EA70(v94, &v40[v41], type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C73EA70(v40, v34, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v60 = v93;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
        v44 = v34;
        goto LABEL_159;
      }

      v61 = v82;
      sub_23C73E9B0(&v40[v60], v82, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      if (sub_23C5D25E0(*v34, *v61))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v51 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
          sub_23C73E950(v61, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
          v52 = v34;
          goto LABEL_111;
        }
      }

      v68 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo;
      sub_23C73E950(v61, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      v69 = v34;
      goto LABEL_172;
    case 2u:
      sub_23C73EA70(v40, v31, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v49 = v93;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
        v44 = v31;
        goto LABEL_159;
      }

      v50 = v83;
      sub_23C73E9B0(&v40[v49], v83, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      if (sub_23C5D25E0(*v31, *v50))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v51 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
          sub_23C73E950(v50, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
          v52 = v31;
          goto LABEL_111;
        }
      }

      v68 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults;
      sub_23C73E950(v50, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      v69 = v31;
      goto LABEL_172;
    case 3u:
      sub_23C73EA70(v40, v28, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v53 = v93;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
        v44 = v28;
        goto LABEL_159;
      }

      v54 = v84;
      sub_23C73E9B0(&v40[v53], v84, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      if (*v28 == *v54 && v28[1] == v54[1] || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v51 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
          sub_23C73E950(v54, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
          v52 = v28;
          goto LABEL_111;
        }
      }

      v68 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating;
      sub_23C73E950(v54, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      v69 = v28;
      goto LABEL_172;
    case 4u:
      v45 = v91;
      sub_23C73EA70(v40, v91, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v46 = v93;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v66 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
        goto LABEL_158;
      }

      v47 = v88;
      sub_23C73E9B0(&v40[v46], v88, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      if (*v45 == *v47 && v45[1] == v47[1] || (sub_23C872014()) && (v45[2] == v47[2] && v45[3] == v47[3] || (sub_23C872014()))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v48 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
          goto LABEL_110;
        }
      }

      v71 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater;
      goto LABEL_171;
    case 5u:
      v45 = v90;
      sub_23C73EA70(v40, v90, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v62 = v93;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v66 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
        goto LABEL_158;
      }

      v47 = v87;
      sub_23C73E9B0(&v40[v62], v87, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      if (*v45 == *v47 && v45[1] == v47[1] || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v48 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
          goto LABEL_110;
        }
      }

      v71 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent;
      goto LABEL_171;
    case 6u:
      sub_23C73EA70(v40, v21, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v63 = v93;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v64 = v85;
        sub_23C73E9B0(&v40[v63], v85, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
        v57 = _s26AIMLInstrumentationStreams018ToolKitProtoSystemC8ProtocolV16IntentSideEffectV2eeoiySbAE_AEtFZ_0(v21, v64);
        v58 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect;
        sub_23C73E950(v64, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
        v59 = v21;
        goto LABEL_99;
      }

      v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect;
      v44 = v21;
      goto LABEL_159;
    case 7u:
      sub_23C73EA70(v40, v18, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v55 = v93;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema;
        v44 = v18;
        goto LABEL_159;
      }

      v56 = v86;
      sub_23C73E9B0(&v40[v55], v86, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v57 = _s26AIMLInstrumentationStreams018ToolKitProtoSystemC8ProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(v18, v56);
      v58 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema;
      sub_23C73E950(v56, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v59 = v18;
LABEL_99:
      sub_23C73E950(v59, v58);
      sub_23C73E950(v40, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      return v57 & 1;
    case 8u:
      v45 = v92;
      sub_23C73EA70(v40, v92, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v65 = v93;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v66 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_158:
        v43 = v66;
        v44 = v45;
        goto LABEL_159;
      }

      v47 = v89;
      sub_23C73E9B0(&v40[v65], v89, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      if (*v45 == *v47 && v45[1] == v47[1] || (sub_23C872014() & 1) != 0)
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v48 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_110:
          v51 = v48;
          sub_23C73E950(v47, v48);
          v52 = v45;
LABEL_111:
          sub_23C73E950(v52, v51);
          goto LABEL_149;
        }
      }

      v71 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent;
LABEL_171:
      v68 = v71;
      sub_23C73E950(v47, v71);
      v69 = v45;
LABEL_172:
      v72 = v68;
      goto LABEL_173;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x1Fu:
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x20u:
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x21u:
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x22u:
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x23u:
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x24u:
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x25u:
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() != 39)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() != 40)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x29u:
      if (swift_getEnumCaseMultiPayload() != 41)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() != 42)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() != 43)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Cu:
      if (swift_getEnumCaseMultiPayload() != 44)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Du:
      if (swift_getEnumCaseMultiPayload() != 45)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Eu:
      if (swift_getEnumCaseMultiPayload() != 46)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x2Fu:
      if (swift_getEnumCaseMultiPayload() != 47)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x30u:
      if (swift_getEnumCaseMultiPayload() != 48)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x31u:
      if (swift_getEnumCaseMultiPayload() != 49)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x32u:
      if (swift_getEnumCaseMultiPayload() != 50)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x33u:
      if (swift_getEnumCaseMultiPayload() == 51)
      {
        goto LABEL_149;
      }

      goto LABEL_160;
    case 0x34u:
      if (swift_getEnumCaseMultiPayload() != 52)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x35u:
      if (swift_getEnumCaseMultiPayload() != 53)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x36u:
      if (swift_getEnumCaseMultiPayload() != 54)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x37u:
      if (swift_getEnumCaseMultiPayload() != 55)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x38u:
      if (swift_getEnumCaseMultiPayload() != 56)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x39u:
      if (swift_getEnumCaseMultiPayload() != 57)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Au:
      if (swift_getEnumCaseMultiPayload() != 58)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Bu:
      if (swift_getEnumCaseMultiPayload() != 59)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    case 0x3Cu:
      if (swift_getEnumCaseMultiPayload() != 60)
      {
        goto LABEL_160;
      }

      goto LABEL_149;
    default:
      sub_23C73EA70(v40, v36, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v42 = v93;
      if (swift_getEnumCaseMultiPayload())
      {
        v43 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled;
        v44 = v36;
LABEL_159:
        sub_23C73E950(v44, v43);
LABEL_160:
        sub_23C585C34(v40, &qword_27E1FFE90, &qword_23C88DAD8);
LABEL_161:
        v57 = 0;
        return v57 & 1;
      }

      v70 = v78;
      sub_23C73E9B0(&v40[v42], v78, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      if (*v36 != *v70)
      {
        sub_23C73E950(v70, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
        goto LABEL_176;
      }

      sub_23C870F34();
      sub_23C73EA18();
      v73 = sub_23C871754();
      sub_23C73E950(v70, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      if ((v73 & 1) == 0)
      {
LABEL_176:
        v72 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled;
        v69 = v36;
LABEL_173:
        sub_23C73E950(v69, v72);
        sub_23C73E950(v40, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        goto LABEL_161;
      }

      sub_23C73E950(v36, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
LABEL_149:
      sub_23C73E950(v40, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v57 = 1;
      return v57 & 1;
  }
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV0cdE12Version1KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v41 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v41 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEE8, &qword_23C88DB30);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v41 - v26;
  v28 = *(v25 + 56);
  sub_23C73EA70(v43, &v41 - v26, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_23C73EA70(v44, &v27[v28], type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C73EA70(v27, v18, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v30 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration;
        v31 = v18;
        goto LABEL_15;
      }

      v32 = &v27[v28];
      v33 = v41;
      sub_23C73E9B0(v32, v41, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      V2eeoiySbAG_AGtFZ_0 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V11EnumerationV2eeoiySbAG_AGtFZ_0(v18, v33);
      v35 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration;
      sub_23C73E950(v33, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      v36 = v18;
    }

    else
    {
      sub_23C73EA70(v27, v15, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v30 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query;
        v31 = v15;
        goto LABEL_15;
      }

      v38 = &v27[v28];
      v39 = v42;
      sub_23C73E9B0(v38, v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      V2eeoiySbAG_AGtFZ_0 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V5QueryV2eeoiySbAG_AGtFZ_0(v15, v39);
      v35 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query;
      sub_23C73E950(v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      v36 = v15;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C73EA70(v27, v21, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity;
      v31 = v21;
      goto LABEL_15;
    }

    sub_23C73E9B0(&v27[v28], v8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    V2eeoiySbAG_AGtFZ_0 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V6EntityV2eeoiySbAG_AGtFZ_0(v21, v8);
    sub_23C73E950(v8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    v36 = v21;
    v37 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity;
LABEL_18:
    sub_23C73E950(v36, v37);
    sub_23C73E950(v27, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    return V2eeoiySbAG_AGtFZ_0 & 1;
  }

  sub_23C73EA70(v27, v23, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C73E9B0(&v27[v28], v11, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    V2eeoiySbAG_AGtFZ_0 = static ToolKitProtoTypeIdentifier.Primitive.== infix(_:_:)();
    v35 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
    sub_23C73E950(v11, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    v36 = v23;
LABEL_17:
    v37 = v35;
    goto LABEL_18;
  }

  v30 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
  v31 = v23;
LABEL_15:
  sub_23C73E950(v31, v30);
  sub_23C585C34(v27, &qword_27E1FFEE8, &qword_23C88DB30);
  V2eeoiySbAG_AGtFZ_0 = 0;
  return V2eeoiySbAG_AGtFZ_0 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoTypeIdentifierKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  MEMORY[0x28223BE20](v27);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEF8, &unk_23C88DB40);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v19 = *(v16 + 56);
  sub_23C73EA70(a1, &v26 - v17, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_23C73EA70(a2, &v18[v19], type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C73EA70(v18, v14, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23C73E9B0(&v18[v19], v8, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v22 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV9PrimitiveV2eeoiySbAE_AEtFZ_0(v14, v8);
      sub_23C73E950(v8, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_23C73E950(v14, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_23C73E950(v18, type metadata accessor for ToolKitProtoTypeIdentifierKind);
      return v22 & 1;
    }

    v23 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
    v24 = v14;
    goto LABEL_18;
  }

  sub_23C73EA70(v18, v12, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom;
    v24 = v12;
LABEL_18:
    sub_23C73E950(v24, v23);
    sub_23C585C34(v18, &qword_27E1FFEF8, &unk_23C88DB40);
LABEL_21:
    v22 = 0;
    return v22 & 1;
  }

  sub_23C73E9B0(&v18[v19], v5, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  v20 = *v12 == *v5 && v12[1] == v5[1];
  if (!v20 && (sub_23C872014() & 1) == 0 || (v12[2] == v5[2] ? (v21 = v12[3] == v5[3]) : (v21 = 0), !v21 && (sub_23C872014() & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0)))
  {
    sub_23C73E950(v5, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_23C73E950(v12, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
    sub_23C73E950(v18, type metadata accessor for ToolKitProtoTypeIdentifierKind);
    goto LABEL_21;
  }

  sub_23C73E950(v5, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  sub_23C73E950(v12, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
  sub_23C73E950(v18, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  v22 = 1;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v67 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v66 = (&v62 - v7);
  v8 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v63 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = (&v62 - v11);
  v13 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v14 = MEMORY[0x28223BE20](v13);
  v64 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v65 = (&v62 - v16);
  v17 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = (&v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v28 = (&v62 - v27);
  v29 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v62 - v33;
  v35 = *a2;
  v36 = *a1 >> 61;
  if (v36 > 2)
  {
    if (v36 == 3)
    {
      if (v35 >> 61 == 3)
      {
        v49 = swift_projectBox();
        v50 = swift_projectBox();
        v51 = v65;
        sub_23C73EA70(v49, v65, type metadata accessor for ToolKitProtoTypeInstance.Union);
        v52 = v64;
        sub_23C73EA70(v50, v64, type metadata accessor for ToolKitProtoTypeInstance.Union);
        v53 = *v51;
        v54 = *v52;

        if (sub_23C5DE500(v53, v54) & 1) != 0 && (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754()))
        {
          sub_23C73E950(v52, type metadata accessor for ToolKitProtoTypeInstance.Union);
          sub_23C73E950(v51, type metadata accessor for ToolKitProtoTypeInstance.Union);
          v39 = 1;
        }

        else
        {
          sub_23C73E950(v52, type metadata accessor for ToolKitProtoTypeInstance.Union);
          sub_23C73E950(v51, type metadata accessor for ToolKitProtoTypeInstance.Union);
          v39 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (v36 != 4)
    {
      if (v35 >> 61 == 5)
      {
        v58 = swift_projectBox();
        v59 = swift_projectBox();
        v28 = v66;
        sub_23C73EA70(v58, v66, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
        v60 = v59;
        v26 = v67;
        sub_23C73EA70(v60, v67, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

        v39 = _s26AIMLInstrumentationStreams24ToolKitProtoTypeInstanceV8DeferredV2eeoiySbAE_AEtFZ_0(v28, v26);
        v40 = type metadata accessor for ToolKitProtoTypeInstance.Deferred;
        goto LABEL_20;
      }

LABEL_24:
      v39 = 0;
      return v39 & 1;
    }

    if (v35 >> 61 != 4)
    {
      goto LABEL_24;
    }

    v41 = swift_projectBox();
    v42 = swift_projectBox();
    sub_23C73EA70(v41, v12, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v43 = v42;
    v44 = v63;
    sub_23C73EA70(v43, v63, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

    v39 = sub_23C7002B4(v12, v44);
    v45 = type metadata accessor for ToolKitProtoTypeInstance.Restricted;
    sub_23C73E950(v44, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v46 = v12;
LABEL_21:
    v57 = v45;
    goto LABEL_22;
  }

  if (!v36)
  {
    if (v35 >> 61)
    {
      goto LABEL_24;
    }

    v47 = swift_projectBox();
    v48 = swift_projectBox();
    sub_23C73EA70(v47, v34, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_23C73EA70(v48, v32, type metadata accessor for ToolKitProtoTypeIdentifier);

    v39 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v34, v32);
    v45 = type metadata accessor for ToolKitProtoTypeIdentifier;
    sub_23C73E950(v32, type metadata accessor for ToolKitProtoTypeIdentifier);
    v46 = v34;
    goto LABEL_21;
  }

  if (v36 == 1)
  {
    if (v35 >> 61 == 1)
    {
      v37 = swift_projectBox();
      v38 = swift_projectBox();
      sub_23C73EA70(v37, v28, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C73EA70(v38, v26, type metadata accessor for ToolKitProtoTypeInstance);

      v39 = static ToolKitProtoTypeInstance.== infix(_:_:)(v28, v26);
      v40 = type metadata accessor for ToolKitProtoTypeInstance;
LABEL_20:
      v45 = v40;
      sub_23C73E950(v26, v40);
      v46 = v28;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v35 >> 61 != 2)
  {
    goto LABEL_24;
  }

  v55 = swift_projectBox();
  v56 = swift_projectBox();
  sub_23C73EA70(v55, v22, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  sub_23C73EA70(v56, v20, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  v39 = _s26AIMLInstrumentationStreams24ToolKitProtoTypeInstanceV8OptionalV2eeoiySbAE_AEtFZ_0(v22, v20);
  sub_23C73E950(v20, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  v46 = v22;
  v57 = type metadata accessor for ToolKitProtoTypeInstance.Optional;
LABEL_22:
  sub_23C73E950(v46, v57);
LABEL_23:

  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV0cde9PrimitiveG4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, void *a2)
{
  v143 = a1;
  v144 = a2;
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  MEMORY[0x28223BE20](v2 - 8);
  v128 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  MEMORY[0x28223BE20](v4 - 8);
  v127 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  MEMORY[0x28223BE20](v6 - 8);
  v126 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  MEMORY[0x28223BE20](v8 - 8);
  v125 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  MEMORY[0x28223BE20](v12 - 8);
  v122 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  MEMORY[0x28223BE20](v14 - 8);
  v121 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  MEMORY[0x28223BE20](v118);
  v124 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23C870EC4();
  v141 = *(v17 - 8);
  v142 = v17;
  MEMORY[0x28223BE20](v17);
  v120 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  MEMORY[0x28223BE20](v19 - 8);
  v119 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v22 = MEMORY[0x28223BE20](v21);
  v139 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v134 = (&v118 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v138 = &v118 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v137 = &v118 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v136 = &v118 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v135 = &v118 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v133 = &v118 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v132 = &v118 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v140 = &v118 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v130 = (&v118 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = (&v118 - v43);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = (&v118 - v46);
  v48 = MEMORY[0x28223BE20](v45);
  v131 = &v118 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = (&v118 - v51);
  v53 = MEMORY[0x28223BE20](v50);
  v129 = &v118 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v57 = (&v118 - v56);
  v58 = MEMORY[0x28223BE20](v55);
  v60 = (&v118 - v59);
  MEMORY[0x28223BE20](v58);
  v62 = &v118 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEE0, &qword_23C88DB28);
  v64 = MEMORY[0x28223BE20](v63 - 8);
  v66 = &v118 - v65;
  v67 = &v118 + *(v64 + 56) - v65;
  sub_23C73EA70(v143, &v118 - v65, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  v68 = v144;
  v144 = v67;
  sub_23C73EA70(v68, v67, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C73EA70(v66, v60, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v98 = v144;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_68;
      }

      v95 = *v60 == *v98;
      goto LABEL_34;
    case 2u:
      sub_23C73EA70(v66, v57, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v94 = v144;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_68;
      }

      v95 = *v57 == *v94;
LABEL_34:
      v71 = v95;
      goto LABEL_51;
    case 3u:
      v81 = v129;
      sub_23C73EA70(v66, v129, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v97 = v144;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v83 = v119;
        sub_23C73E9B0(v97, v119, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
        v71 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V7DecimalV2eeoiySbAG_AGtFZ_0(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal;
      goto LABEL_67;
    case 4u:
      sub_23C73EA70(v66, v52, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v87 = *v52;
      v86 = v52[1];
      v88 = v144;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_31;
    case 5u:
      v100 = v131;
      sub_23C73EA70(v66, v131, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v101 = v144;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v103 = v141;
        v102 = v142;
        v104 = v120;
        (*(v141 + 32))(v120, v101, v142);
        v71 = sub_23C870EA4();
        v105 = *(v103 + 8);
        v105(v104, v102);
        v105(v100, v102);
        goto LABEL_51;
      }

      (*(v141 + 8))(v100, v142);
      goto LABEL_68;
    case 6u:
      sub_23C73EA70(v66, v47, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v108 = *v47;
      v107 = v47[1];
      v109 = v144;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v76 = v66;
        v110 = *v109;
        v111 = v109[1];
        v71 = sub_23C6F73FC(v108, v107, *v109, v111);
        sub_23C595090(v110, v111);
        v79 = v108;
        v80 = v107;
        goto LABEL_45;
      }

      sub_23C595090(v108, v107);
      goto LABEL_68;
    case 7u:
      sub_23C73EA70(v66, v44, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v87 = *v44;
      v86 = v44[1];
      v88 = v144;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_31:

        goto LABEL_68;
      }

LABEL_11:
      v89 = *v88;
      v90 = v88[1];
      if (v87 == v89 && v86 == v90)
      {

        goto LABEL_60;
      }

      v116 = sub_23C872014();

      if (v116)
      {
        goto LABEL_60;
      }

      goto LABEL_72;
    case 8u:
      v114 = v130;
      sub_23C73EA70(v66, v130, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v73 = *v114;
      v74 = v114[1];
      v75 = v144;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_53;
      }

      goto LABEL_5;
    case 9u:
      v81 = v140;
      sub_23C73EA70(v66, v140, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v92 = v144;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement;
        goto LABEL_67;
      }

      v93 = v124;
      sub_23C73E9B0(v92, v124, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      if (*v81 == *v93 && *(v81 + 8) == *(v93 + 8) || (sub_23C872014()) && *(v81 + 16) == *(v93 + 16) && *(v81 + 24) == *(v93 + 24))
      {
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          sub_23C73E950(v93, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
          sub_23C73E950(v81, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
LABEL_60:
          sub_23C73E950(v66, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
          v71 = 1;
          return v71 & 1;
        }
      }

      sub_23C73E950(v93, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      sub_23C73E950(v81, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
LABEL_72:
      sub_23C73E950(v66, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      goto LABEL_69;
    case 0xAu:
      v81 = v132;
      sub_23C73EA70(v66, v132, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v112 = v144;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v83 = v121;
        sub_23C73E9B0(v112, v121, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
        v71 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14CurrencyAmountV2eeoiySbAG_AGtFZ_0(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount;
      goto LABEL_67;
    case 0xBu:
      v81 = v133;
      sub_23C73EA70(v66, v133, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v85 = v144;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v83 = v122;
        sub_23C73E9B0(v85, v122, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
        v71 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V13PaymentMethodV2eeoiySbAG_AGtFZ_0(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod;
      goto LABEL_67;
    case 0xCu:
      v81 = v135;
      sub_23C73EA70(v66, v135, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v91 = v144;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v83 = v123;
        sub_23C73E9B0(v91, v123, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
        v71 = sub_23C7006AC(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark;
      goto LABEL_67;
    case 0xDu:
      v81 = v136;
      sub_23C73EA70(v66, v136, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v106 = v144;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v83 = v125;
        sub_23C73E9B0(v106, v125, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
        v71 = sub_23C7006C4(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person;
      goto LABEL_67;
    case 0xEu:
      v81 = v137;
      sub_23C73EA70(v66, v137, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v82 = v144;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v83 = v126;
        sub_23C73E9B0(v82, v126, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
        v71 = sub_23C7006DC(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File;
      goto LABEL_67;
    case 0xFu:
      v81 = v138;
      sub_23C73EA70(v66, v138, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v96 = v144;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v83 = v127;
        sub_23C73E9B0(v96, v127, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
        v71 = sub_23C700A78(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
        goto LABEL_50;
      }

      v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App;
      goto LABEL_67;
    case 0x10u:
      v72 = v134;
      sub_23C73EA70(v66, v134, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v73 = *v72;
      v74 = v72[1];
      v75 = v144;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
LABEL_53:
        sub_23C595090(v73, v74);
        goto LABEL_68;
      }

LABEL_5:
      v76 = v66;
      v77 = *v75;
      v78 = v75[1];
      v71 = sub_23C6F73FC(v73, v74, *v75, v78);
      sub_23C595090(v77, v78);
      v79 = v73;
      v80 = v74;
LABEL_45:
      sub_23C595090(v79, v80);
      sub_23C73E950(v76, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      break;
    case 0x11u:
      v81 = v139;
      sub_23C73EA70(v66, v139, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v99 = v144;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v83 = v128;
        sub_23C73E9B0(v99, v128, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
        v71 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14DateComponentsV2eeoiySbAG_AGtFZ_0(v81, v83);
        v84 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents;
LABEL_50:
        v113 = v84;
        sub_23C73E950(v83, v84);
        sub_23C73E950(v81, v113);
LABEL_51:
        sub_23C73E950(v66, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      }

      else
      {
        v115 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents;
LABEL_67:
        sub_23C73E950(v81, v115);
LABEL_68:
        sub_23C585C34(v66, &qword_27E1FFEE0, &qword_23C88DB28);
LABEL_69:
        v71 = 0;
      }

      break;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_68;
      }

      goto LABEL_60;
    default:
      sub_23C73EA70(v66, v62, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v69 = v144;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_68;
      }

      v70 = *v62 ^ *v69;
      sub_23C73E950(v66, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v71 = v70 ^ 1;
      return v71 & 1;
  }

  return v71 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypedValueKindO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v68 = a2;
  v3 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v67 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v66 = (&v63 - v6);
  v7 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v65 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v64 = (&v63 - v10);
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v12 = MEMORY[0x28223BE20](Value - 8);
  v63 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - v14;
  v16 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v63 - v20);
  v22 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = (&v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v27 = (&v63 - v26);
  v28 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = (&v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v33 = (&v63 - v32);
  v34 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v63 - v38;
  v40 = *v68;
  v41 = *a1 >> 61;
  if (v41 > 2)
  {
    if (v41 <= 4)
    {
      if (v41 == 3)
      {
        if (v40 >> 61 == 3)
        {
          v42 = swift_projectBox();
          v43 = swift_projectBox();
          sub_23C73EA70(v42, v21, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
          sub_23C73EA70(v43, v19, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

          G0V2eeoiySbAE_AEtFZ_0 = sub_23C7057C8(v21, v19);
          v45 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue;
          sub_23C73E950(v19, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
          v46 = v21;
LABEL_22:
          v49 = v45;
          goto LABEL_23;
        }
      }

      else if (v40 >> 61 == 4)
      {
        v57 = swift_projectBox();
        v58 = swift_projectBox();
        sub_23C73EA70(v57, v15, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
        v59 = v63;
        sub_23C73EA70(v58, v63, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

        G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV05QueryG0V2eeoiySbAE_AEtFZ_0(v15, v59);
        v45 = type metadata accessor for ToolKitProtoTypedValue.QueryValue;
        sub_23C73E950(v59, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
        v46 = v15;
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    if (v41 == 5)
    {
      if (v40 >> 61 != 5)
      {
        goto LABEL_24;
      }

      v50 = swift_projectBox();
      v51 = swift_projectBox();
      v27 = v64;
      sub_23C73EA70(v50, v64, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
      v25 = v65;
      sub_23C73EA70(v51, v65, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

      G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV016EntityIdentifierG0V2eeoiySbAE_AEtFZ_0(v27, v25);
      v52 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue;
    }

    else
    {
      if (v40 >> 61 != 6)
      {
        goto LABEL_24;
      }

      v60 = swift_projectBox();
      v61 = swift_projectBox();
      v27 = v66;
      sub_23C73EA70(v60, v66, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
      v25 = v67;
      sub_23C73EA70(v61, v67, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

      G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV08DeferredG0V2eeoiySbAE_AEtFZ_0(v27, v25);
      v52 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue;
    }

LABEL_21:
    v45 = v52;
    sub_23C73E950(v25, v52);
    v46 = v27;
    goto LABEL_22;
  }

  if (!v41)
  {
    if (!(v40 >> 61))
    {
      v53 = swift_projectBox();
      v54 = swift_projectBox();
      sub_23C73EA70(v53, v39, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
      sub_23C73EA70(v54, v37, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

      G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V2eeoiySbAE_AEtFZ_0(v39, v37);
      v45 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue;
      sub_23C73E950(v37, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
      v46 = v39;
      goto LABEL_22;
    }

LABEL_24:
    G0V2eeoiySbAE_AEtFZ_0 = 0;
    return G0V2eeoiySbAE_AEtFZ_0 & 1;
  }

  if (v41 != 1)
  {
    if (v40 >> 61 != 2)
    {
      goto LABEL_24;
    }

    v55 = swift_projectBox();
    v56 = swift_projectBox();
    sub_23C73EA70(v55, v27, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_23C73EA70(v56, v25, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

    G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV06EntityG0V2eeoiySbAE_AEtFZ_0(v27, v25);
    v52 = type metadata accessor for ToolKitProtoTypedValue.EntityValue;
    goto LABEL_21;
  }

  if (v40 >> 61 != 1)
  {
    goto LABEL_24;
  }

  v47 = swift_projectBox();
  v48 = swift_projectBox();
  sub_23C73EA70(v47, v33, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  sub_23C73EA70(v48, v31, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  G0V2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV011EnumerationG0V2eeoiySbAE_AEtFZ_0(v33, v31);
  sub_23C73E950(v31, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  v46 = v33;
  v49 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue;
LABEL_23:
  sub_23C73E950(v46, v49);

  return G0V2eeoiySbAE_AEtFZ_0 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V9ParameterV12RelationshipV0cdE12RelationKindO2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  MEMORY[0x28223BE20](DoesNotContain);
  v56 = (&v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  MEMORY[0x28223BE20](v49);
  v55 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  MEMORY[0x28223BE20](v46);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  MEMORY[0x28223BE20](v45);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  MEMORY[0x28223BE20](v48);
  v52 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  MEMORY[0x28223BE20](v47);
  v51 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v45 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v45 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v45 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&v45 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE88, &qword_23C88DAD0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v45 - v28;
  v30 = *(v27 + 56);
  sub_23C73EA70(v57, &v45 - v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_23C73EA70(v58, &v29[v30], type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_23C73EA70(v29, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
          v33 = v20;
          goto LABEL_41;
        }

        v37 = v53;
        sub_23C73E9B0(&v29[v30], v53, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
        if ((sub_23C5D15A4(*v20, *v37) & 1) == 0 || v20[8] != *(v37 + 8) || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
        {
          v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
          sub_23C73E950(v37, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
          v42 = v20;
          goto LABEL_54;
        }

        v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan;
        sub_23C73E950(v37, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
        v36 = v20;
      }

      else
      {
        sub_23C73EA70(v29, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
          v33 = v17;
          goto LABEL_41;
        }

        v40 = v54;
        sub_23C73E9B0(&v29[v30], v54, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
        if ((sub_23C5D15A4(*v17, *v40) & 1) == 0 || v17[8] != *(v40 + 8) || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
        {
          v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
          sub_23C73E950(v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
          v42 = v17;
          goto LABEL_54;
        }

        v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan;
        sub_23C73E950(v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
        v36 = v17;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_23C73EA70(v29, v25, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        if (swift_getEnumCaseMultiPayload())
        {
          v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
          v33 = v25;
LABEL_41:
          sub_23C73E950(v33, v32);
          goto LABEL_42;
        }

        v43 = v51;
        sub_23C73E9B0(&v29[v30], v51, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
        if (sub_23C5D15A4(*v25, *v43))
        {
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
            sub_23C73E950(v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
            v36 = v25;
            goto LABEL_48;
          }
        }

        v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals;
        sub_23C73E950(v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
        v42 = v25;
LABEL_54:
        sub_23C73E950(v42, v41);
        sub_23C73E950(v29, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        return 0;
      }

      sub_23C73EA70(v29, v23, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
        v33 = v23;
        goto LABEL_41;
      }

      v38 = v52;
      sub_23C73E9B0(&v29[v30], v52, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      if ((sub_23C5D15A4(*v23, *v38) & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
        sub_23C73E950(v38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
        v42 = v23;
        goto LABEL_54;
      }

      v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals;
      sub_23C73E950(v38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      v36 = v23;
    }

LABEL_48:
    sub_23C73E950(v36, v35);
LABEL_49:
    sub_23C73E950(v29, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    return 1;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_23C73EA70(v29, v14, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
        v33 = v14;
        goto LABEL_41;
      }

      v34 = v55;
      sub_23C73E9B0(&v29[v30], v55, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      if ((sub_23C5D15A4(*v14, *v34) & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
        sub_23C73E950(v34, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
        v42 = v14;
        goto LABEL_54;
      }

      v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains;
      sub_23C73E950(v34, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      v36 = v14;
    }

    else
    {
      sub_23C73EA70(v29, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
        v33 = v11;
        goto LABEL_41;
      }

      v39 = v56;
      sub_23C73E9B0(&v29[v30], v56, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      if ((sub_23C5D15A4(*v11, *v39) & 1) == 0 || (sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
        sub_23C73E950(v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
        v42 = v11;
        goto LABEL_54;
      }

      v35 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain;
      sub_23C73E950(v39, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      v36 = v11;
    }

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload == 6)
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_49;
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    goto LABEL_49;
  }

LABEL_42:
  sub_23C585C34(v29, &qword_27E1FFE88, &qword_23C88DAD0);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V0cdeC8IconKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE80, &qword_23C88DAC8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = (&v24 + *(v14 + 56) - v15);
  sub_23C73EA70(a1, &v24 - v15, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_23C73EA70(a2, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C73EA70(v16, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    v20 = *v12;
    v19 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v20 == *v17 && v19 == v17[1])
      {
      }

      else
      {
        v22 = sub_23C872014();

        if ((v22 & 1) == 0)
        {
          sub_23C73E950(v16, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
          goto LABEL_8;
        }
      }

      sub_23C73E950(v16, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      v18 = 1;
      return v18 & 1;
    }

LABEL_7:
    sub_23C585C34(v16, &qword_27E1FFE80, &qword_23C88DAC8);
LABEL_8:
    v18 = 0;
    return v18 & 1;
  }

  sub_23C73EA70(v16, v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C73E950(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    goto LABEL_7;
  }

  sub_23C73E9B0(v17, v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  v18 = static ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.== infix(_:_:)();
  sub_23C73E950(v6, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  sub_23C73E950(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  sub_23C73E950(v16, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  return v18 & 1;
}

unint64_t sub_23C735588()
{
  result = qword_27E1FF020;
  if (!qword_27E1FF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF020);
  }

  return result;
}

unint64_t sub_23C735610()
{
  result = qword_27E1FF038;
  if (!qword_27E1FF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF038);
  }

  return result;
}

unint64_t sub_23C735698()
{
  result = qword_27E1FF050;
  if (!qword_27E1FF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF050);
  }

  return result;
}

unint64_t sub_23C735720()
{
  result = qword_27E1FF068;
  if (!qword_27E1FF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF068);
  }

  return result;
}

unint64_t sub_23C7357A8()
{
  result = qword_27E1FF080;
  if (!qword_27E1FF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF080);
  }

  return result;
}

unint64_t sub_23C735830()
{
  result = qword_27E1FF098;
  if (!qword_27E1FF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF098);
  }

  return result;
}

unint64_t sub_23C7358B8()
{
  result = qword_27E1FF0B0;
  if (!qword_27E1FF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF0B0);
  }

  return result;
}

unint64_t sub_23C735940()
{
  result = qword_27E1FF0C8;
  if (!qword_27E1FF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF0C8);
  }

  return result;
}

unint64_t sub_23C7359C8()
{
  result = qword_27E1FF0E0;
  if (!qword_27E1FF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF0E0);
  }

  return result;
}

unint64_t sub_23C735A50()
{
  result = qword_27E1FF0F8;
  if (!qword_27E1FF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF0F8);
  }

  return result;
}

unint64_t sub_23C735AD8()
{
  result = qword_27E1FF110;
  if (!qword_27E1FF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF110);
  }

  return result;
}

unint64_t sub_23C735B60()
{
  result = qword_27E1FF128;
  if (!qword_27E1FF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF128);
  }

  return result;
}

unint64_t sub_23C735BE8()
{
  result = qword_27E1FF140;
  if (!qword_27E1FF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF140);
  }

  return result;
}

unint64_t sub_23C735C70()
{
  result = qword_27E1FF158;
  if (!qword_27E1FF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF158);
  }

  return result;
}

unint64_t sub_23C735CF8()
{
  result = qword_27E1FF170;
  if (!qword_27E1FF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF170);
  }

  return result;
}

unint64_t sub_23C735D80()
{
  result = qword_27E1FF188;
  if (!qword_27E1FF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF188);
  }

  return result;
}

unint64_t sub_23C735E08()
{
  result = qword_27E1FF1A0;
  if (!qword_27E1FF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF1A0);
  }

  return result;
}

unint64_t sub_23C735E90()
{
  result = qword_27E1FF1B8;
  if (!qword_27E1FF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF1B8);
  }

  return result;
}

unint64_t sub_23C735F18()
{
  result = qword_27E1FF1D0;
  if (!qword_27E1FF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF1D0);
  }

  return result;
}

unint64_t sub_23C735FA0()
{
  result = qword_27E1FF1E8;
  if (!qword_27E1FF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF1E8);
  }

  return result;
}

unint64_t sub_23C736028()
{
  result = qword_27E1FF200;
  if (!qword_27E1FF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF200);
  }

  return result;
}

unint64_t sub_23C7360B0()
{
  result = qword_27E1FF218;
  if (!qword_27E1FF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF218);
  }

  return result;
}

unint64_t sub_23C736138()
{
  result = qword_27E1FF230;
  if (!qword_27E1FF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF230);
  }

  return result;
}

unint64_t sub_23C7361C0()
{
  result = qword_27E1FF248;
  if (!qword_27E1FF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF248);
  }

  return result;
}

unint64_t sub_23C736248()
{
  result = qword_27E1FF260;
  if (!qword_27E1FF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FF260);
  }

  return result;
}

void sub_23C736388(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  sub_23C73D4F0(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 40;
  if (a2 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 40;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 40;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x17)
  {
    v8 = v7 - 22;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0x13)
  {
    return v8 - 18;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypeIdentifier.ToolKitProtoPrimitiveKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 40;
  if (a3 + 40 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xD8)
  {
    v5 = 0;
  }

  if (a2 > 0xD7)
  {
    v6 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 40;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23C7366C0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x17)
  {
    return v1 - 22;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23C7366D4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 22;
  }

  return result;
}

void sub_23C7367A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23C736880(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_23C7369D4(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF360, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF368, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF370, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23C7367A4(319, &qword_27E1FF378, type metadata accessor for ToolKitProtoSystemTypeProtocol, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_23C73D4F0(319, &qword_27E1FF380, &type metadata for ToolKitProtoTypeDefinition.Version1.Entity.RuntimeFlags, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_23C7367A4(319, &qword_27E1FF388, type metadata accessor for ToolKitProtoCoercionDefinition, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_23C7367A4(319, &qword_27E1FBBC0, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_23C870F34();
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

void sub_23C736D00(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF3B0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF368, type metadata accessor for ToolKitProtoRuntimeRequirement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF378, type metadata accessor for ToolKitProtoSystemTypeProtocol, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C7367A4(319, &qword_27E1FBBC0, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C870F34();
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

void sub_23C736F3C(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF3E0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C737060(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF3F8, type metadata accessor for ToolKitProtoComparisonPredicate.Template, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF370, type metadata accessor for ToolKitProtoSampleInvocationDefinition, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF400, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C7367A4(319, &qword_27E1FF408, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C7367A4(319, &qword_27E1FF410, type metadata accessor for ToolKitProtoAllPredicate, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23C7367A4(319, &qword_27E1FF418, type metadata accessor for ToolKitProtoSuggestedPredicate, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_23C7367A4(319, &qword_27E1FF420, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_23C7367A4(319, &qword_27E1FF428, type metadata accessor for ToolKitProtoValidPredicate, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_23C870F34();
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

uint64_t sub_23C73730C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_23C737510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_23C7367A4(319, a6, a7, MEMORY[0x277D83D88]);
  if (v7 <= 0x3F)
  {
    sub_23C870F34();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C737634(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF4A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF3C8, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C737768(uint64_t a1)
{
  sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF3C8, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_267Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 12)
  {
    v6 = *(a1 + 8) >> 60;
    if (((4 * v6) & 0xC) != 0)
    {
      return 16 - ((4 * v6) & 0xC | (v6 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_268Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C737CE4(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF510, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C73D4F0(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23C737FB0(uint64_t a1)
{
  sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C738074(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(319);
  if (v2 <= 0x3F)
  {
    result = sub_23C870EC4();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(319);
                    if (v11 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
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

void sub_23C738214(uint64_t a1)
{
  sub_23C73AB94(319, &qword_27E1FF558, type metadata accessor for ToolKitProtoTypedValue);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF3C8, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C73D4F0(319, &qword_27E1FB018, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23C870F34();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C7383B8(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF570, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C7384DC(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF588, type metadata accessor for ToolKitProtoQuery, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_309Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[5];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v16 = sub_23C870F34();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t __swift_store_extra_inhabitant_index_310Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a4[5];
LABEL_7:
    v15 = *(v12 + 56);

    return v15(v7 + v13, a2, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a4[6];
    goto LABEL_7;
  }

  v16 = sub_23C870F34();
  v17 = *(*(v16 - 8) + 56);
  v18 = v7 + a4[7];

  return v17(v18, a2, a2, v16);
}

void sub_23C738920(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C7367A4(319, &qword_27E1FF5B0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23C870F34();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23C738AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_465Tm);
}

uint64_t sub_23C738B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_466Tm);
}

uint64_t sub_23C738BC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23C738C1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_23C738CF4(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C738E74(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF640, type metadata accessor for ToolKitProtoRestrictionContext, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C738FCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23C739028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_23C739120(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF680, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C7367A4(319, &qword_27E1FF3E0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C739244(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FF698, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C73D4F0(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23C870F34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C7393FC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23C7394E0(uint64_t a1)
{
  result = sub_23C870F34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23C7395B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23C73960C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_23C739718(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23C739864(uint64_t a1)
{
  sub_23C7367A4(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23C870F34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C739974(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypeInstance(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}