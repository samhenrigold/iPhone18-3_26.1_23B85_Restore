uint64_t type metadata accessor for PMWiFiList(uint64_t a1)
{
  result = qword_27CDF4FA0;
  if (!qword_27CDF4FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C721178(uint64_t a1)
{
  sub_21C721294(319, &qword_27CDF4FB0, type metadata accessor for PMWiFiListModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21C721294(319, &qword_27CDEC860, MEMORY[0x277CDDAF0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21C7202E4();
      if (v3 <= 0x3F)
      {
        sub_21C7086F8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C721294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PMWiFiListModel(uint64_t a1)
{
  result = qword_27CDEE638;
  if (!qword_27CDEE638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C721344(uint64_t a1)
{
  sub_21CB85114();
  if (v1 <= 0x3F)
  {
    sub_21C721490(319);
    if (v2 <= 0x3F)
    {
      sub_21CB81114();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C721490(uint64_t a1)
{
  if (!qword_27CDEE648)
  {
    type metadata accessor for PMWiFiNetwork(255);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEE648);
    }
  }
}

uint64_t type metadata accessor for PMMultipleAccountsDetailsView(uint64_t a1)
{
  result = qword_27CDF6B98;
  if (!qword_27CDF6B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C721534(uint64_t a1)
{
  if (!qword_27CDF6BA8)
  {
    type metadata accessor for PMMultipleAccountsDetailsModel(255);
    v1 = sub_21CB850C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF6BA8);
    }
  }
}

void sub_21C72158C(uint64_t a1)
{
  sub_21C721534(319);
  if (v1 <= 0x3F)
  {
    sub_21C705CFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C721630(uint64_t a1)
{
  sub_21C6F07E4(319, &qword_27CDEABC0, MEMORY[0x277D49978], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMMultipleAccountsDetailsModel.State(319);
    if (v2 <= 0x3F)
    {
      sub_21CB81114();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_21C7217AC()
{
  result = qword_27CDEFF50;
  if (!qword_27CDEFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEFF50);
  }

  return result;
}

uint64_t type metadata accessor for PMAddAccountView(uint64_t a1)
{
  result = qword_27CDEDE58;
  if (!qword_27CDEDE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72184C(uint64_t a1)
{
  sub_21C721920(319);
  if (v1 <= 0x3F)
  {
    sub_21C721A6C(319);
    if (v2 <= 0x3F)
    {
      sub_21C7219FC(319);
      if (v3 <= 0x3F)
      {
        sub_21C70640C(319);
        if (v4 <= 0x3F)
        {
          sub_21C7205C4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C721920(uint64_t a1)
{
  if (!qword_27CDEDE68)
  {
    type metadata accessor for PMAddAccountModel(255);
    sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel, &unk_21CBA89A8);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEDE68);
    }
  }
}

uint64_t sub_21C7219B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21C7219FC(uint64_t a1)
{
  if (!qword_27CDEDE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDE78, &qword_21CBA8ED8);
    sub_21C721AD4();
    v1 = sub_21CB81FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEDE70);
    }
  }
}

void sub_21C721A6C(uint64_t a1)
{
  if (!qword_27CDEB178)
  {
    sub_21CB823B4();
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEB178);
    }
  }
}

unint64_t sub_21C721AD4()
{
  result = qword_27CDEDE80;
  if (!qword_27CDEDE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDE78, &qword_21CBA8ED8);
    sub_21C721B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDE80);
  }

  return result;
}

unint64_t sub_21C721B58()
{
  result = qword_27CDEBEC0;
  if (!qword_27CDEBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBEC0);
  }

  return result;
}

unint64_t sub_21C721BB0()
{
  result = qword_27CDEDE88;
  if (!qword_27CDEDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDE88);
  }

  return result;
}

void sub_21C721C24(uint64_t a1)
{
  type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_21C721F48();
    if (v2 <= 0x3F)
    {
      sub_21C722010(319, &qword_27CDF2A40, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_21C713604(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21C722074(319, &qword_27CDF6D78, &qword_27CDECBD8, &unk_21CBA5300, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_21C722010(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_21C705CFC(319);
              if (v7 <= 0x3F)
              {
                sub_21C707F4C(319);
                if (v8 <= 0x3F)
                {
                  sub_21C70640C(319);
                  if (v9 <= 0x3F)
                  {
                    sub_21C713604(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
                    {
                      sub_21C722010(319, &qword_27CDEC5D8, type metadata accessor for PMDebugSettingsManager, type metadata accessor for PMDependency);
                      if (v11 <= 0x3F)
                      {
                        sub_21C722074(319, &qword_27CDEACF0, &qword_27CDEACF8, &unk_21CBC1FB0, type metadata accessor for PMDependency);
                        if (v12 <= 0x3F)
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
    }
  }
}

uint64_t sub_21C721EF0(uint64_t a1)
{
  v1 = type metadata accessor for PMAccount(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_21C721F48()
{
  result = qword_27CDF2A38;
  if (!qword_27CDF2A38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CDF2A38);
  }

  return result;
}

void sub_21C721FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C722010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C722074(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_21C7220F8(uint64_t a1)
{
  result = type metadata accessor for PMAccount(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PMSharingGroup(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PMGeneratedPasswordsLogView(uint64_t a1)
{
  result = qword_27CDF3588;
  if (!qword_27CDF3588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7221C8(uint64_t a1)
{
  sub_21C721A6C(319);
  if (v1 <= 0x3F)
  {
    sub_21C706378(319);
    if (v2 <= 0x3F)
    {
      sub_21C7222E0();
      if (v3 <= 0x3F)
      {
        sub_21C722330(319, &qword_27CDF35A0, &qword_27CDEBEA8, &unk_21CBA38A0);
        if (v4 <= 0x3F)
        {
          sub_21C722330(319, &qword_27CDF35A8, &qword_27CDEBEB0, &unk_21CBA5440);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C7222E0()
{
  if (!qword_27CDF3598)
  {
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3598);
    }
  }
}

void sub_21C722330(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21CB84D84();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21C7223B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21C72243C(uint64_t a1)
{
  if (!qword_27CDF8B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFEE8, &unk_21CBADDE0);
    v1 = sub_21CB84F94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF8B30);
    }
  }
}

void sub_21C7224C0(uint64_t a1)
{
  sub_21C7086F8(319);
  if (v1 <= 0x3F)
  {
    sub_21C7225E8(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_21CB85E54();
      if (v3 <= 0x3F)
      {
        sub_21C7225E8(319, &qword_27CDEE7A0, &type metadata for PMConfirmationDialogOrAlertPresentation, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21C7226D8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C7225E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C722638(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C722688(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21C7226D8()
{
  result = qword_27CDEE460;
  if (!qword_27CDEE460)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CDEE460);
  }

  return result;
}

uint64_t sub_21C722748(uint64_t a1)
{
  result = sub_21CB818C4();
  if (v2 <= 0x3F)
  {
    result = sub_21CB80E34();
    if (v3 <= 0x3F)
    {
      result = sub_21CB81114();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for PMImportView(uint64_t a1)
{
  result = qword_27CDF60D0;
  if (!qword_27CDF60D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7228E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C722948(uint64_t a1)
{
  sub_21C7228E4(319, &qword_27CDF60E0, type metadata accessor for PMCredentialExchangeDataImportModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21C7228E4(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C722A48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0038, &qword_21CBAE200);
  type metadata accessor for PMCredentialExchangeDataImportModel(255);
  type metadata accessor for PMImportView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0030, &qword_21CBAE1F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0028, &qword_21CBAE1F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0138, &qword_21CBC0840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0020, &qword_21CBAE1E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0108, &qword_21CBAE378);
  sub_21C8E1640();
  sub_21C71B768(&qword_27CDF0120, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  sub_21C722E44();
  swift_getOpaqueTypeConformance2();
  sub_21C8E1778();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71B768(&qword_27CDF0130, type metadata accessor for PMImportView, &unk_21CBC02C0);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_21C722C50()
{
  result = qword_27CDF00A0;
  if (!qword_27CDF00A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0098, &qword_21CBAE260);
    sub_21C71B768(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView, &unk_21CBA8F48);
    sub_21C71B768(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF00A0);
  }

  return result;
}

unint64_t sub_21C722D3C()
{
  result = qword_27CDECB50;
  if (!qword_27CDECB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB50);
  }

  return result;
}

unint64_t sub_21C722D90()
{
  result = qword_27CDF00A8;
  if (!qword_27CDF00A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC390, &qword_21CBA40E0);
    sub_21C71B768(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF00A8);
  }

  return result;
}

unint64_t sub_21C722E44()
{
  result = qword_27CDF0128;
  if (!qword_27CDF0128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0108, &qword_21CBAE378);
    sub_21C71B768(&qword_27CDF0130, type metadata accessor for PMImportView, &unk_21CBC02C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0128);
  }

  return result;
}

unint64_t sub_21C722F00()
{
  result = qword_27CDF0148;
  if (!qword_27CDF0148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
    sub_21C71B768(&qword_27CDEADE0, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0148);
  }

  return result;
}

uint64_t sub_21C723010(uint64_t *a1)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v11 = *a1;
  v1 = v11;
  v12 = v2;
  v13 = v4;
  v14 = v3;
  v15 = v5;
  type metadata accessor for PMConfirmationDialogOrAlertViewModifier(255, &v11);
  swift_getWitnessTable();
  v6 = sub_21CB83744();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_21C71F3FC();
  v11 = v6;
  v12 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277D837D0];
  v13 = v1;
  v14 = v2;
  v15 = v4;
  v16 = WitnessTable;
  v17 = v8;
  v18 = v3;
  v19 = v5;
  swift_getOpaqueTypeMetadata2();
  v11 = v6;
  v12 = v9;
  v13 = v1;
  v14 = v2;
  v15 = v4;
  v16 = WitnessTable;
  v17 = v8;
  v18 = v3;
  v19 = v5;
  swift_getOpaqueTypeMetadata2();
  sub_21CB834A4();
  v11 = v6;
  v12 = MEMORY[0x277D837D0];
  v13 = v1;
  v14 = v2;
  v15 = v4;
  v16 = WitnessTable;
  v17 = v8;
  v18 = v3;
  v19 = v5;
  swift_getOpaqueTypeConformance2();
  v11 = v6;
  v12 = MEMORY[0x277D837D0];
  v13 = v1;
  v14 = v2;
  v15 = v4;
  v16 = WitnessTable;
  v17 = v8;
  v18 = v3;
  v19 = v5;
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_21C7231F4@<X0>(_BYTE *a1@<X8>)
{
  sub_21C723244();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

unint64_t sub_21C723244()
{
  result = qword_27CDED668;
  if (!qword_27CDED668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED668);
  }

  return result;
}

uint64_t sub_21C7232EC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PMSceneDelegate();
  result = sub_21CB81CF4();
  *a2 = result;
  return result;
}

uint64_t sub_21C72332C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_21CB81FE4();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  v69 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for PMAppRootView(0);
  v57 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = v4;
  v65 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v60);
  v61 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD08, &qword_21CBA0410);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD10, &qword_21CBA0418);
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v10 = &v51 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD18, &qword_21CBA0420);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v12 = &v51 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD20, &qword_21CBA0428);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = &v51 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD28, &qword_21CBA0430);
  MEMORY[0x28223BE20](v63);
  v64 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD30, &qword_21CBA0438);
  v67 = *(v15 - 8);
  v68 = v15;
  MEMORY[0x28223BE20](v15);
  v66 = &v51 - v16;
  sub_21C723E60(v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  v18 = v1;
  sub_21CB85084();
  v19 = sub_21C7A4648();
  sub_21CB84A04();

  sub_21C6EA794(v8, &qword_27CDEAD08, &qword_21CBA0410);
  sub_21CB855C4();
  v62 = v17;
  sub_21CB85084();
  v77 = v6;
  v78 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v12;
  v21 = v51;
  sub_21CB845B4();
  v22 = v21;

  (*(v52 + 8))(v10, v21);
  v23 = *(v1 + *(v74 + 20));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v24 = sub_21C725C3C(v23, v77);

  swift_getKeyPath(aP_16);
  v77 = v24;
  sub_21C705CB4(&qword_27CDF62E0, type metadata accessor for PMNotificationManager, &protocol conformance descriptor for PMNotificationManager);
  sub_21CB810D4();

  v25 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  swift_beginAccess();
  v26 = v61;
  sub_21C725C54(v24 + v25, v61);

  v27 = v65;
  sub_21C7252BC(v1, v65);
  v28 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v29 = swift_allocObject();
  sub_21C725254(v27, v29 + v28, type metadata accessor for PMAppRootView);
  v75 = v22;
  v76 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21C725DFC();
  v30 = v53;
  v31 = v56;
  v32 = v54;
  sub_21CB84924();

  sub_21C6EA794(v26, &unk_27CDEBE60, &unk_21CB9FF40);
  (*(v55 + 8))(v32, v31);
  v33 = *(v18 + *(v74 + 24));
  if (v33)
  {
    v34 = v30;
    v35 = *(v33 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_selectedQuickAction);
    sub_21C7252BC(v18, v27);
    v36 = swift_allocObject();
    sub_21C725254(v27, v36 + v28, type metadata accessor for PMAppRootView);
    v37 = v18;
    v38 = v64;
    (*(v58 + 32))(v64, v34, v59);
    v39 = v63;
    *(v38 + *(v63 + 52)) = v35;
    v40 = (v38 + *(v39 + 56));
    *v40 = sub_21C7A48F4;
    v40[1] = v36;

    v41 = v69;
    sub_21C7260B0(v69);
    sub_21C7252BC(v37, v27);
    v42 = swift_allocObject();
    sub_21C725254(v27, v42 + v28, type metadata accessor for PMAppRootView);
    sub_21C6EADEC(&qword_27CDEADE8, &qword_27CDEAD28, &qword_21CBA0430, MEMORY[0x277CDDB50]);
    sub_21C705CB4(&qword_27CDEADF0, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    v43 = v66;
    v44 = v71;
    sub_21CB84934();

    (*(v70 + 8))(v41, v44);
    sub_21C6EA794(v38, &qword_27CDEAD28, &qword_21CBA0430);
    KeyPath = swift_getKeyPath(aH_28);
    sub_21CB85084();
    v46 = v75;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_21C7A4964;
    *(v47 + 24) = v46;
    v48 = v72;
    (*(v67 + 32))(v72, v43, v68);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADF8, &qword_21CBA04C8);
    v50 = (v48 + *(result + 36));
    *v50 = KeyPath;
    v50[1] = sub_21C7A4968;
    v50[2] = v47;
  }

  else
  {
    type metadata accessor for PMSceneDelegate();
    sub_21C705CB4(&qword_27CDEACE0, type metadata accessor for PMSceneDelegate, &protocol conformance descriptor for PMSceneDelegate);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C723E08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C723E60@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v81 = sub_21CB81024();
  v70 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v68 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for PMAppRootView(0);
  v76 = *(v77 - 8);
  v73 = *(v76 + 8);
  MEMORY[0x28223BE20](v77);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v64 - v7;
  v69 = type metadata accessor for PMAppRootNavigationView(0);
  MEMORY[0x28223BE20](v69);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD78, &qword_21CBA0460);
  MEMORY[0x28223BE20](v82);
  v79 = &v64 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD70, &qword_21CBA0458);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v80 = &v64 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD40, &qword_21CBA0440);
  MEMORY[0x28223BE20](v74);
  v75 = &v64 - v13;
  sub_21CB85084();

  sub_21C724D00(v10);
  v85 = v1;
  sub_21CB85094();
  swift_getKeyPath(asc_21CBA04D0);
  sub_21CB850B4();

  v14 = *(v6 + 8);
  *&v84 = v6 + 8;
  v14(v8, v5);
  sub_21C7252BC(v1, v4);
  v15 = (v76[80] + 16) & ~v76[80];
  v72 = v76[80];
  v71 = v15 + v73;
  v16 = swift_allocObject();
  v73 = v15;
  v76 = v4;
  sub_21C725254(v4, v16 + v15, type metadata accessor for PMAppRootView);
  type metadata accessor for PMOnboardingRootView(0);
  sub_21C705CB4(&qword_27CDED210, type metadata accessor for PMAppRootNavigationView, &unk_21CBAE160);
  sub_21C705CB4(&qword_27CDEAD98, type metadata accessor for PMOnboardingRootView, &unk_21CBA9938);
  v17 = v79;
  sub_21CB847B4();

  sub_21C719000(v10, type metadata accessor for PMAppRootNavigationView);
  sub_21CB85094();
  swift_getKeyPath(byte_21CBA04F8);
  sub_21CB850B4();

  v69 = v8;
  v18 = v8;
  v19 = v17;
  v65 = v5;
  v83 = v14;
  v14(v18, v5);
  v20 = v86;
  LODWORD(v64) = v87;
  v21 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD90, &qword_21CBA0468) + 36)];
  *v21 = swift_getKeyPath(byte_21CBA0520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for PMICloudTermsAndConditionsAlert(0);
  v23 = *(v22 + 20);
  KeyPath = swift_getKeyPath(byte_21CBA0558);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v25 = &v21[v23];
  sub_21CB86544();
  sub_21C7253C8(KeyPath, v91);

  type metadata accessor for PMDebugSettingsManager(0);
  sub_21C705CB4(&qword_27CDEAE00, type metadata accessor for PMDebugSettingsManager, &protocol conformance descriptor for PMDebugSettingsManager);
  v26 = sub_21CB82674();
  v28 = v27;

  *v25 = v26;
  v25[1] = v28;
  v29 = &v21[*(v22 + 24)];
  *v29 = v20;
  v29[16] = v64;
  v30 = swift_getKeyPath(byte_21CBA0578);
  sub_21CB86544();
  sub_21C7072A8(v30, v86);

  type metadata accessor for PMAccountsState(0);
  sub_21C705CB4(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v31 = sub_21CB82674();
  v33 = v32;

  v34 = &v19[*(v82 + 36)];
  *v34 = v31;
  v34[1] = v33;
  v35 = v68;
  sub_21CB81014();
  v36 = sub_21CB81004();
  v38 = v37;
  v70 = *(v70 + 8);
  (v70)(v35, v81);
  *&v91 = v36;
  *(&v91 + 1) = v38;
  v39 = v69;
  v40 = v65;
  sub_21CB85094();
  swift_getKeyPath(aX_10);
  sub_21CB850B4();

  v83(v39, v40);
  v64 = sub_21C7A47E4();
  v41 = sub_21C71F3FC();
  v42 = MEMORY[0x277D837D0];
  v43 = v79;
  sub_21CB84764();

  sub_21C6EA794(v43, &qword_27CDEAD78, &qword_21CBA0460);
  sub_21CB81014();
  v44 = sub_21CB81004();
  v46 = v45;
  (v70)(v35, v81);
  v92 = v44;
  v93 = v46;
  sub_21CB85094();
  swift_getKeyPath(aX_11);
  sub_21CB850B4();

  v83(v39, v40);
  *&v86 = v82;
  *(&v86 + 1) = v42;
  v87 = MEMORY[0x277CE1428];
  v88 = v64;
  v89 = v41;
  v90 = MEMORY[0x277CE1410];
  swift_getOpaqueTypeConformance2();
  v47 = v67;
  v48 = v75;
  v49 = v80;
  sub_21CB84754();

  (*(v66 + 8))(v49, v47);
  v50 = v85;
  sub_21CB85084();

  type metadata accessor for PMInboundOTPAuthURLModel(0);
  sub_21C705CB4(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel, &unk_21CBBDA9C);
  v51 = sub_21CB82674();
  v53 = v52;
  v54 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD68, &qword_21CBA0450) + 36));
  *v54 = v51;
  v54[1] = v53;
  sub_21CB85084();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAD58, &qword_21CBA0448);
  type metadata accessor for PMHandleInboundTOTPMigrationURLModel(0);
  sub_21C705CB4(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel, &unk_21CBBBBE0);
  sub_21CB850A4();
  sub_21CB85094();
  swift_getKeyPath(a8_7);
  sub_21CB850B4();

  v83(v39, v40);
  v84 = v86;
  v55 = v87;
  v56 = v76;
  sub_21C7252BC(v50, v76);
  v57 = swift_allocObject();
  sub_21C725254(v56, v57 + v73, type metadata accessor for PMAppRootView);
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAE20, &unk_21CBBF670);
  sub_21CB84D44();
  v58 = v91;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAE28, &unk_21CBA0620);
  sub_21CB84D44();
  v59 = v91;
  v60 = v48 + *(v74 + 36);
  *v60 = v84;
  *(v60 + 16) = v55;
  *(v60 + 24) = sub_21C7A4B98;
  *(v60 + 32) = v57;
  *(v60 + 40) = v58;
  *(v60 + 56) = v59;
  v61 = sub_21CB852C4();
  type metadata accessor for PMGlobalAnimationNamespaceContainer(0);
  v62 = swift_allocObject();
  sub_21CB81104();
  *(v62 + 16) = v61;
  sub_21C7A4758();
  sub_21C705CB4(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
  sub_21CB84164();

  return sub_21C6EA794(v48, &qword_27CDEAD40, &qword_21CBA0440);
}

uint64_t sub_21C724D00@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21CB83AD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB850A4();
  v10 = type metadata accessor for PMAppRootNavigationView(0);
  sub_21CB83AC4();
  (*(v4 + 16))(v6, v9, v3);
  v11 = MEMORY[0x277CDE408];
  sub_21C71B768(&qword_27CDEFF88, MEMORY[0x277CDE408], MEMORY[0x277CDE418]);
  sub_21C71B768(&qword_27CDEFF90, v11, MEMORY[0x277CDE410]);
  sub_21CB82284();
  (*(v4 + 8))(v9, v3);
  v12 = v10[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v13 = v10[7];
  v14 = v10[8];
  *(a2 + v14) = swift_getKeyPath(byte_21CBAE078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v10[9];
  v24[1] = 0;
  v24[2] = 0;
  v25 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF98, &qword_21CBAE0B0);
  sub_21CB84D44();
  v16 = v27;
  v17 = v28;
  *v15 = v26;
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  v18 = v10[10];
  *(a2 + v18) = swift_getKeyPath(byte_21CBAE0B8);
  v19 = v10[11];
  *(a2 + v19) = swift_getKeyPath(byte_21CBAE0E0);
  v20 = v10[12];
  *(a2 + v20) = swift_getKeyPath(byte_21CBAE108);
  v21 = a2 + v10[13];
  type metadata accessor for PMGlobalAnimationNamespaceContainer(0);
  sub_21C71B768(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
  result = sub_21CB82084();
  *v21 = result;
  *(v21 + 8) = v23 & 1;
  return result;
}

uint64_t sub_21C7250BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C72A8B0();
  *a1 = result;
  return result;
}

uint64_t sub_21C7250E8(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 136) = *a1;
}

uint64_t sub_21C72512C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C72AED8();
  *a1 = result;
  return result;
}

uint64_t sub_21C725158(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 144) = *a1;
}

uint64_t sub_21C7251A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_26);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet);
  return result;
}

uint64_t sub_21C725254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7252BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppRootView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C725320@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aX_12);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_21C7253E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA02C8);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  *a2 = *(v3 + 57);
  return result;
}

unint64_t sub_21C7254B4()
{
  result = qword_27CDEAD88;
  if (!qword_27CDEAD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD90, &qword_21CBA0468);
    type metadata accessor for PMAppRootNavigationView(255);
    type metadata accessor for PMOnboardingRootView(255);
    sub_21C705CB4(&qword_27CDED210, type metadata accessor for PMAppRootNavigationView, &unk_21CBAE160);
    sub_21C705CB4(&qword_27CDEAD98, type metadata accessor for PMOnboardingRootView, &unk_21CBA9938);
    swift_getOpaqueTypeConformance2();
    sub_21C705CB4(&qword_27CDEADA0, type metadata accessor for PMICloudTermsAndConditionsAlert, &unk_21CBB7780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD88);
  }

  return result;
}

unint64_t sub_21C725620()
{
  result = qword_27CDEADA8;
  if (!qword_27CDEADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEADA8);
  }

  return result;
}

uint64_t sub_21C725678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA00F0);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  *a2 = *(v3 + 58);
  return result;
}

uint64_t sub_21C72574C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

id sub_21C725878@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CBA02A0);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_21C725934(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21C79D23C(v1);
}

unint64_t sub_21C725964()
{
  result = qword_27CDEAD60;
  if (!qword_27CDEAD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD68, &qword_21CBA0450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD70, &qword_21CBA0458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD78, &qword_21CBA0460);
    sub_21C7A47E4();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C725B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD60);
  }

  return result;
}

unint64_t sub_21C725AC0()
{
  result = qword_27CDEAD50;
  if (!qword_27CDEAD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD58, &qword_21CBA0448);
    sub_21C725964();
    sub_21C705CB4(&qword_27CDEADB8, type metadata accessor for PMHandleInboundTOTPMigrationURLModifier, &unk_21CBBBC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD50);
  }

  return result;
}

unint64_t sub_21C725B7C()
{
  result = qword_27CDEADB0;
  if (!qword_27CDEADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEADB0);
  }

  return result;
}

unint64_t sub_21C725BD0()
{
  result = qword_27CDEADC0;
  if (!qword_27CDEADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEADC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI9PMAccountVIegn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C725C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C725CD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PMAccount.UniqueID(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PMAccount.Storage(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

unint64_t sub_21C725DFC()
{
  result = qword_27CDEADD8;
  if (!qword_27CDEADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C705CB4(&qword_27CDEADE0, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEADD8);
  }

  return result;
}

uint64_t sub_21C725EB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_21CB82F84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_21C6EDBAC(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_21CB85B04();
    v19 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_21C7260D8()
{
  v1 = *(type metadata accessor for PMAppRootView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C74176C(v2);
}

double sub_21C726138@<D0>(_OWORD *a1@<X8>)
{
  sub_21C726188();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_21C726188()
{
  result = qword_27CDEACA0;
  if (!qword_27CDEACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEACA0);
  }

  return result;
}

uint64_t sub_21C7261F4(void *a1)
{
  sub_21C726188();

  return sub_21CB82FA4();
}

uint64_t sub_21C726258@<X0>(uint64_t a1@<X8>)
{
  v160 = a1;
  v151 = sub_21CB81024();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v148);
  v147 = &v127 - v3;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v146);
  v145 = &v127 - v4;
  v5 = type metadata accessor for PMAppRootNavigationView(0);
  v6 = *(v5 - 8);
  v170 = (v5 - 8);
  v177 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v161 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  v179 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v178 = &v127 - v9;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFF0, &qword_21CBAE1B8);
  MEMORY[0x28223BE20](v133);
  v11 = &v127 - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFF8, &qword_21CBAE1C0);
  v137 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v132 = &v127 - v12;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0000, &qword_21CBAE1C8);
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v162 = &v127 - v13;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0008, &qword_21CBAE1D0);
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v163 = &v127 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0010, &qword_21CBAE1D8);
  v143 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v169 = (&v127 - v15);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0018, &qword_21CBAE1E0);
  MEMORY[0x28223BE20](v164);
  v165 = &v127 - v16;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0020, &qword_21CBAE1E8);
  MEMORY[0x28223BE20](v167);
  v171 = &v127 - v17;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0028, &qword_21CBAE1F0);
  v152 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v168 = &v127 - v18;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0030, &qword_21CBAE1F8);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v153 = &v127 - v19;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0038, &qword_21CBAE200);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v127 - v20;
  sub_21C727EE4(v11);
  sub_21CB85084();
  v21 = v182;
  v22 = type metadata accessor for PMAppRootNavigationModel(0);
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB81124();
  v182 = v21;
  v23 = sub_21C8E0800();
  v24 = v133;
  sub_21CB84394();

  sub_21C6EA794(v11, &qword_27CDEFFF0, &qword_21CBAE1B8);

  v25 = v178;
  v173 = v1;
  sub_21CB85094();
  v176 = v8;
  sub_21CB850B4();

  v172 = *(v179 + 8);
  v179 += 8;
  v172(v25, v8);
  v130 = v191;
  v131 = v193;
  v188 = v191;
  v189 = v192;
  v190 = v193;
  v135 = type metadata accessor for PMAppRootNavigationView;
  v26 = v161;
  sub_21C72A2CC(v1, v161, type metadata accessor for PMAppRootNavigationView);
  v27 = *(v177 + 80);
  v144 = ~v27;
  v174 = v27;
  v166 = v7;
  v28 = (v27 + 16) & ~v27;
  v177 = v28;
  v175 = v28 + v7;
  v29 = swift_allocObject();
  v134 = type metadata accessor for PMAppRootNavigationView;
  sub_21C72A334(v26, v29 + v28, type metadata accessor for PMAppRootNavigationView);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0090, &qword_21CBAE258);
  v182 = v24;
  v183 = v22;
  v184 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v133 = sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0, &unk_21CBBE7F0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0098, &qword_21CBAE260);
  v32 = sub_21CB83994();
  v33 = sub_21C722C50();
  v182 = v31;
  v183 = v32;
  v184 = v33;
  v185 = MEMORY[0x277CDE2B8];
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v136;
  v36 = v30;
  v37 = v132;
  sub_21CB847C4();

  (*(v137 + 8))(v37, v35);
  v38 = v178;
  v39 = v176;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAE268);
  sub_21CB850B4();

  v40 = v172;
  v172(v38, v39);
  v41 = v193;
  v188 = v191;
  v189 = v192;
  v190 = v193;
  v132 = type metadata accessor for PMNewGroupFlow(0);
  v182 = v35;
  v183 = v36;
  v184 = v128;
  v185 = OpaqueTypeConformance2;
  v186 = v133;
  v187 = v34;
  v137 = MEMORY[0x277CDEE40];
  v136 = swift_getOpaqueTypeConformance2();
  v42 = sub_21C722D3C();
  v43 = sub_21C71B768(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
  v44 = v138;
  v45 = v162;
  sub_21CB847C4();

  sub_21C72A584(v41);
  (*(v139 + 8))(v45, v44);
  v46 = v178;
  v47 = v176;
  v48 = v173;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAE290);
  sub_21CB850B4();

  v40(v46, v47);
  v49 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  v182 = v44;
  v183 = &type metadata for PMNewGroupContext;
  v184 = v132;
  v185 = v136;
  v186 = v42;
  v187 = v43;
  v50 = v161;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = sub_21C71B768(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
  v51 = v140;
  v52 = v163;
  sub_21CB847B4();

  v53 = v51;
  (*(v141 + 8))(v52, v51);
  v54 = v145;
  sub_21C728D50(v145);
  sub_21C72A2CC(v48, v50, v135);
  v55 = swift_allocObject();
  sub_21C72A334(v50, v55 + v177, v134);
  v182 = v53;
  v183 = v49;
  v184 = v125;
  v185 = v126;
  swift_getOpaqueTypeConformance2();
  sub_21C722D90();
  v56 = v165;
  v57 = v142;
  v58 = v169;
  sub_21CB84934();

  sub_21C6EA794(v54, &qword_27CDEC390, &qword_21CBA40E0);
  (*(v143 + 8))(v58, v57);
  KeyPath = swift_getKeyPath(byte_21CBAE2B8);
  v60 = v176;
  sub_21CB85084();
  v61 = v182;
  v62 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF00B0, &qword_21CBAE2E0) + 36)];
  *v62 = KeyPath;
  v62[1] = sub_21C72A670;
  v62[2] = v61;
  v63 = v178;
  sub_21CB85094();
  sub_21CB850B4();

  v172(v63, v60);
  v64 = *(v48 + *(v170 + 12));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v163 = qword_27CE18778;
  sub_21CB86544();
  v65 = sub_21C72A898(v64, v182);
  v162 = v64;
  v66 = v65;

  v182 = v66;
  v146 = sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();

  v67 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
  swift_beginAccess();
  v68 = v147;
  sub_21C6EDBAC(v66 + v67, v147, &qword_27CDEFFE8, &qword_21CBAE1B0);

  v69 = v50;
  sub_21C72A2CC(v48, v50, type metadata accessor for PMAppRootNavigationView);
  v70 = v174;
  v71 = swift_allocObject();
  v169 = type metadata accessor for PMAppRootNavigationView;
  sub_21C72A334(v50, v71 + v177, type metadata accessor for PMAppRootNavigationView);
  sub_21C8E0B80();
  sub_21C8E0FDC();
  v72 = v165;
  sub_21CB84934();

  sub_21C6EA794(v68, &qword_27CDEFFE8, &qword_21CBAE1B0);
  sub_21C6EA794(v72, &qword_27CDF0018, &qword_21CBAE1E0);
  v73 = v149;
  sub_21CB81014();
  v165 = sub_21CB81004();
  v164 = v74;
  (*(v150 + 8))(v73, v151);
  v170 = type metadata accessor for PMAppRootNavigationView;
  sub_21C72A2CC(v48, v50, type metadata accessor for PMAppRootNavigationView);
  sub_21CB858B4();
  v75 = sub_21CB858A4();
  v76 = (v70 + 32) & v144;
  v77 = swift_allocObject();
  v78 = MEMORY[0x277D85700];
  *(v77 + 16) = v75;
  *(v77 + 24) = v78;
  v79 = v169;
  sub_21C72A334(v69, v77 + v76, v169);
  v80 = v48;
  sub_21C72A2CC(v48, v69, type metadata accessor for PMAppRootNavigationView);
  v81 = sub_21CB858A4();
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = MEMORY[0x277D85700];
  sub_21C72A334(v69, v82 + v76, v79);
  sub_21CB84F64();
  v83 = v182;
  v151 = v183;
  LOBYTE(v70) = v184;
  v84 = v170;
  sub_21C72A2CC(v80, v69, v170);
  v85 = swift_allocObject();
  sub_21C72A334(v69, v85 + v177, v79);
  v86 = swift_allocObject();
  *(v86 + 16) = sub_21C8E1104;
  *(v86 + 24) = v85;
  v88 = &v171[*(v167 + 36)];
  *v88 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF00F8, &qword_21CBAE368);
  *(v88 + v89[18]) = 0;
  v90 = (v88 + v89[15]);
  v91 = v164;
  *v90 = v165;
  v90[1] = v91;
  v92 = v88 + v89[16];
  v93 = v151;
  *v92 = v83;
  *(v92 + 1) = v93;
  v92[16] = v70;
  *(v88 + v89[17]) = 0;
  *(v88 + v89[19]) = 2;
  v94 = (v88 + v89[20]);
  *v94 = sub_21C8E1174;
  v94[1] = v86;
  v95 = (v88 + v89[21]);
  *v95 = sub_21C8E119C;
  v95[1] = 0;
  v96 = v84;
  sub_21C72A2CC(v80, v69, v84);
  v97 = sub_21CB858A4();
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = MEMORY[0x277D85700];
  v99 = v169;
  sub_21C72A334(v69, v98 + v76, v169);
  sub_21C72A2CC(v80, v69, v96);
  v100 = sub_21CB858A4();
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  *(v101 + 24) = MEMORY[0x277D85700];
  v102 = v101 + v76;
  v103 = v69;
  sub_21C72A334(v69, v102, v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0100, &qword_21CBAE370);
  sub_21CB84F64();
  v104 = type metadata accessor for PMCredentialExchangeDataImportModel(0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0108, &qword_21CBAE378);
  v151 = sub_21C8E1640();
  v166 = sub_21C71B768(&qword_27CDF0120, type metadata accessor for PMCredentialExchangeDataImportModel, &protocol conformance descriptor for PMCredentialExchangeDataImportModel);
  v164 = sub_21C722E44();
  v105 = v167;
  v106 = v104;
  v165 = v104;
  v107 = v171;
  sub_21CB847C4();

  sub_21C6EA794(v107, &qword_27CDF0020, &qword_21CBAE1E8);
  sub_21CB86544();
  v108 = sub_21C72A898(v162, v182);

  swift_getKeyPath(byte_21CBAE380);
  v182 = v108;
  sub_21CB810D4();

  v109 = *(v108 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExport);

  v188 = v109;
  sub_21C72A2CC(v173, v69, v170);
  v110 = swift_allocObject();
  sub_21C72A334(v69, v110 + v177, v99);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0138, &qword_21CBC0840);
  v182 = v105;
  v183 = v106;
  v184 = v150;
  v185 = v151;
  v186 = v166;
  v187 = v164;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = sub_21C8E1778();
  v114 = v153;
  v115 = v154;
  v116 = v168;
  sub_21CB84934();

  (*(v152 + 8))(v116, v115);
  sub_21CB81974();
  sub_21C72A2CC(v173, v103, v170);
  v117 = swift_allocObject();
  sub_21C72A334(v103, v117 + v177, v169);
  v182 = v115;
  v183 = v111;
  v184 = v112;
  v185 = v113;
  v118 = swift_getOpaqueTypeConformance2();
  v119 = v157;
  v120 = v156;
  sub_21CB845B4();

  (*(v155 + 8))(v114, v120);
  v121 = v178;
  v122 = v176;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAE3A8);
  sub_21CB850B4();

  v172(v121, v122);
  v188 = v182;
  v189 = v183;
  v190 = v184;
  type metadata accessor for PMImportView(0);
  v180 = v120;
  v181 = v118;
  swift_getOpaqueTypeConformance2();
  sub_21C71B768(&qword_27CDF0130, type metadata accessor for PMImportView, &unk_21CBC02C0);
  v123 = v159;
  sub_21CB847C4();

  return (*(v158 + 8))(v119, v123);
}

uint64_t sub_21C727E7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C727EE4@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0060, &qword_21CBAE210);
  MEMORY[0x28223BE20](v58);
  v52 = &v45 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0170, &qword_21CBAE5E0);
  MEMORY[0x28223BE20](v55);
  v57 = &v45 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v45 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0050, &qword_21CBAE208);
  v51 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v50 = &v45 - v5;
  v6 = sub_21CB83834();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v13 - 8);
  v53 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  type metadata accessor for PMAppRootNavigationView(0);
  v54 = v1;
  sub_21C728D50(v20);
  (*(v7 + 104))(v17, *MEMORY[0x277CE0558], v6);
  (*(v7 + 56))(v17, 0, 1, v6);
  v21 = *(v10 + 56);
  sub_21C6EDBAC(v20, v12, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v17, &v12[v21], &qword_27CDEC390, &qword_21CBA40E0);
  v22 = *(v7 + 48);
  if (v22(v12, 1, v6) != 1)
  {
    sub_21C6EDBAC(v12, v53, &qword_27CDEC390, &qword_21CBA40E0);
    if (v22(&v12[v21], 1, v6) != 1)
    {
      v25 = v46;
      (*(v7 + 32))(v46, &v12[v21], v6);
      sub_21C71B768(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v26 = v53;
      v27 = sub_21CB85574();
      v28 = *(v7 + 8);
      v28(v25, v6);
      sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
      v28(v26, v6);
      sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
      if (v27)
      {
        goto LABEL_9;
      }

LABEL_7:
      v23 = v52;
      sub_21C8DD2CC(v52);
      sub_21C728C88(v23, v57);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF0048, &qword_27CDF0050, &qword_21CBAE208, MEMORY[0x277CDDA18]);
      sub_21C8E08B8();
      sub_21CB83494();
      return sub_21C6EA794(v23, &qword_27CDF0060, &qword_21CBAE210);
    }

    sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v7 + 8))(v53, v6);
LABEL_6:
    sub_21C6EA794(v12, &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_7;
  }

  sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
  if (v22(&v12[v21], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
LABEL_9:
  v29 = v47;
  v30 = v49;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBAE5E8);
  sub_21CB850B4();

  v31 = (*(v48 + 8))(v29, v30);
  v53 = &v45;
  v66 = v68;
  v67 = v69;
  MEMORY[0x28223BE20](v31);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0178, &qword_21CBAE610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0180, &qword_21CBAE618);
  sub_21C6EADEC(&qword_27CDF0188, &qword_27CDF0178, &qword_21CBAE610, MEMORY[0x277D83960]);
  sub_21C6EADEC(&qword_27CDF0190, &qword_27CDF0178, &qword_21CBAE610, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDF0198, &qword_27CDF0178, &qword_21CBAE610, MEMORY[0x277D83990]);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01A0, &qword_21CBAE620);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01A8, &qword_21CBAE628);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01B0, &qword_21CBAE630);
  v35 = type metadata accessor for PMAppRootNavigationModel(255);
  v36 = type metadata accessor for PMAppSourceList(255);
  v37 = sub_21C71B768(&qword_27CDF01B8, type metadata accessor for PMAppSourceList, &unk_21CBB0220);
  v60 = v36;
  v61 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v34;
  v61 = v35;
  v62 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_21C7292FC();
  v41 = sub_21C8E1BB4();
  v60 = v32;
  v61 = &type metadata for PMAppRootNavigationModel.NavigationPath;
  v62 = v33;
  v63 = v39;
  v64 = v40;
  v65 = v41;
  swift_getOpaqueTypeConformance2();
  v42 = v50;
  sub_21CB82914();
  v43 = v51;
  v44 = v56;
  (*(v51 + 16))(v57, v42, v56);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF0048, &qword_27CDF0050, &qword_21CBAE208, MEMORY[0x277CDDA18]);
  sub_21C8E08B8();
  sub_21CB83494();
  return (*(v43 + 8))(v42, v44);
}

uint64_t sub_21C728924(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21CB839A4();

    return sub_21CB828F4();
  }

  else
  {
    sub_21CB82A94();
    swift_getWitnessTable();
    sub_21CB83734();
    sub_21CB828F4();
    sub_21CB85E54();
    swift_getWitnessTable();
    sub_21CB82A94();
    swift_getWitnessTable();
    sub_21CB83734();
    return sub_21CB828F4();
  }
}

uint64_t sub_21C728A88(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21CB839A4();
    sub_21CB828F4();
  }

  else
  {
    sub_21CB82A94();
    swift_getWitnessTable();
    sub_21CB83734();
    sub_21CB828F4();
    sub_21CB85E54();
    swift_getWitnessTable();
    sub_21CB82A94();
    swift_getWitnessTable();
    sub_21CB83734();
    sub_21CB828F4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C728C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0060, &qword_21CBAE210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_21C728CF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C728FD8();
  *a1 = result;
  return result;
}

uint64_t sub_21C728D50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C6EDBAC(v2, &v13 - v9, &qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21C716934(v10, a1, &qword_27CDEC390, &qword_21CBA40E0);
  }

  sub_21CB85B04();
  v12 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21C728F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21C728FD8()
{
  v1 = v0;
  sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  sub_21C71B720(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);

  sub_21CB810D4();

  sub_21C713194(v2);
  v4 = v3;

  if (v4)
  {

    return &unk_282E48DF8;
  }

  else
  {
    swift_getKeyPath(byte_21CBAD830);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
    sub_21CB810D4();

    if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) >> 62 == 3)
    {
      return MEMORY[0x277D84F90];
    }

    sub_21CB810D4();

    v6 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact;
    if (!*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact))
    {
      return MEMORY[0x277D84F90];
    }

    else
    {
      swift_getKeyPath(byte_21CBAD808);
      sub_21CB810D4();

      v7 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);

      v8 = sub_21C8C8514(v7);

      if (v8)
      {
        return &unk_282E48E48;
      }

      sub_21CB810D4();

      if (*(v1 + v6) == 1)
      {
        return &unk_282E48E48;
      }

      else
      {
        return &unk_282E48E20;
      }
    }
  }
}

unint64_t sub_21C7292FC()
{
  result = qword_27CDF01C0;
  if (!qword_27CDF01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF01C0);
  }

  return result;
}

unint64_t sub_21C729350()
{
  result = qword_27CDF0240;
  if (!qword_27CDF0240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0248, &qword_21CBAE670);
    sub_21C71B768(&qword_27CDF0250, type metadata accessor for PMGroupInvitationsList, &unk_21CBB9830);
    sub_21C71B768(&qword_27CDF0258, type metadata accessor for PMAppRecentlyDeletedAccountsView, &unk_21CBACAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0240);
  }

  return result;
}

unint64_t sub_21C72943C()
{
  result = qword_27CDF0260;
  if (!qword_27CDF0260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0268, &qword_21CBAE678);
    sub_21C7294F8();
    sub_21C71B768(&qword_27CDF0290, type metadata accessor for PMWiFiList, &unk_21CBBCE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0260);
  }

  return result;
}

unint64_t sub_21C7294F8()
{
  result = qword_27CDF0270;
  if (!qword_27CDF0270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0278, &qword_21CBAE680);
    sub_21C71B768(&qword_27CDF0280, type metadata accessor for PMAppSecurityRecommendationsList, &unk_21CBAEB40);
    sub_21C71B768(&qword_27CDF0288, type metadata accessor for PMVerificationCodesList, &unk_21CBCF918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0270);
  }

  return result;
}

unint64_t sub_21C7295E4()
{
  result = qword_27CDF0298;
  if (!qword_27CDF0298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF02A0, &qword_21CBAE688);
    sub_21C8E1FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0298);
  }

  return result;
}

unint64_t sub_21C729668()
{
  result = qword_27CDF02B8;
  if (!qword_27CDF02B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF02C0, &qword_21CBAE698);
    sub_21C729724();
    sub_21C71B768(&qword_27CDF02D8, type metadata accessor for PMMultipleAccountsDetailsView, &unk_21CBC2950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF02B8);
  }

  return result;
}

unint64_t sub_21C729724()
{
  result = qword_27CDF02C8;
  if (!qword_27CDF02C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF02D0, &qword_21CBAE6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF02C8);
  }

  return result;
}

unint64_t sub_21C7297A8()
{
  result = qword_27CDF02E0;
  if (!qword_27CDF02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF02E0);
  }

  return result;
}

uint64_t sub_21C7297FC(uint64_t a1)
{
  v2 = type metadata accessor for PMAppRootNavigationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01A0, &qword_21CBAE620);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  sub_21C729AF0(&v17 - v7);
  sub_21C72A2CC(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppRootNavigationView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_21C72A334(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PMAppRootNavigationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01A8, &qword_21CBAE628);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF01B0, &qword_21CBAE630);
  v12 = type metadata accessor for PMAppRootNavigationModel(255);
  v13 = type metadata accessor for PMAppSourceList(255);
  v14 = sub_21C71B768(&qword_27CDF01B8, type metadata accessor for PMAppSourceList, &unk_21CBB0220);
  v18 = v13;
  v19 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v11;
  v19 = v12;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21C7292FC();
  sub_21C8E1BB4();
  sub_21CB84564();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21C729AF0@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0338, &qword_21CBAE810);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for PMAppSourceList(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF01B0, &qword_21CBAE630);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();

  sub_21C729E34(v6);
  sub_21CB837F4();
  v11 = sub_21CB83804();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  v12 = sub_21C71B768(&qword_27CDF01B8, type metadata accessor for PMAppSourceList, &unk_21CBB0220);
  sub_21CB848B4();
  sub_21C6EA794(v3, &qword_27CDF0338, &qword_21CBAE810);
  sub_21C719300(v6, type metadata accessor for PMAppSourceList);
  sub_21CB85084();
  v13 = v16;
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB81124();
  v17 = v12;
  v18 = v13;
  v16 = v4;
  swift_getOpaqueTypeConformance2();
  sub_21CB84394();

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_21C729E34@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PMAppSourceListModel(0);
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB850A4();
  v3 = type metadata accessor for PMAppSourceList(0);
  v4 = v3[5];
  KeyPath = swift_getKeyPath(byte_21CBB00F0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a2 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v31);

  type metadata accessor for PMAccountsState(0);
  sub_21C72A284(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = (a2 + v3[6]);
  v11 = swift_getKeyPath(byte_21CBB0118);
  sub_21CB86544();
  sub_21C7073E8(v11, v31);

  type metadata accessor for PMGroupsStore(0);
  sub_21C72A284(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v12 = sub_21CB82674();
  v14 = v13;

  *v10 = v12;
  v10[1] = v14;
  v15 = (a2 + v3[7]);
  v16 = swift_getKeyPath(byte_21CBB0138);
  sub_21CB86544();
  sub_21C7073D0(v16, v31);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C72A284(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v17 = sub_21CB82674();
  v19 = v18;

  *v15 = v17;
  v15[1] = v19;
  v20 = (a2 + v3[8]);
  v21 = swift_getKeyPath(byte_21CBB0158);
  sub_21CB86544();
  sub_21C704000(v21, v31);

  type metadata accessor for PMTipsStore(0);
  sub_21C72A284(&qword_27CDED870, type metadata accessor for PMTipsStore, &unk_21CBCD9D8);
  v22 = sub_21CB82674();
  v24 = v23;

  *v20 = v22;
  v20[1] = v24;
  v25 = a2 + v3[9];
  *(v25 + 8) = 0;
  v26 = v3[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v27 = v3[11];
  v28 = a2 + v3[12];
  type metadata accessor for PMGlobalAnimationNamespaceContainer(0);
  sub_21C72A284(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
  result = sub_21CB82084();
  *v28 = result;
  *(v28 + 8) = v30 & 1;
  *(a2 + v3[13]) = 0;
  *(a2 + v3[14]) = 1;
  return result;
}

uint64_t sub_21C72A284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C72A2CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C72A334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C72A39C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAD9E8);
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__addAccountSheetModel);
}

uint64_t sub_21C72A488@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAE268);
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow);
  *a2 = v4;
  return sub_21C72A574(v4);
}

uint64_t sub_21C72A540(uint64_t *a1)
{
  v1 = *a1;
  sub_21C72A574(*a1);
  return sub_21C8C7608(v1);
}

uint64_t sub_21C72A574(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21C72A584(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21C72A594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_21C6F0700(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet);
  return result;
}

uint64_t sub_21C72A678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__safariViewControllerURL;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &qword_27CDEFEE8, &unk_21CBADDE0);
}

uint64_t sub_21C72A758(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_21C72A8B0()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for PMCredentialExporter(0);
    v1 = swift_allocObject();
    v2 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
    v3 = sub_21CB818C4();
    v4 = *(*(v3 - 8) + 56);
    v4(v1 + v2, 1, 1, v3);
    v4(v1 + v2, 1, 1, v3);
    v5 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__dataToExportAfterAlert;
    v6 = type metadata accessor for PMCredentialExporter.DataToExportAfterAlert(0);
    v7 = *(*(v6 - 8) + 56);
    v7(v1 + v5, 1, 1, v6);
    v7(v1 + v5, 1, 1, v6);
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager) = 0;
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExport) = 0;
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExportAfterAlert) = 0;
    sub_21CB81104();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_21C72AA28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C72A8B0();
  *a1 = result;
  return result;
}

uint64_t sub_21C72AA68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB818C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21C72AB20@<X0>(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C72AB94(v4, a1);
}

uint64_t sub_21C72AB94@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PMAppRootNavigationView(0) + 40));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v4 = sub_21C72A898(v3, v7);

  swift_getKeyPath(byte_21CBAE4B0);
  sub_21C71B768(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter, &unk_21CBB7178);
  sub_21CB810D4();

  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExportAfterAlert);

  if (v5)
  {
  }

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21C72ACDC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C72AD50(v4, a1);
}

uint64_t sub_21C72AD50@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PMAppRootNavigationView(0) + 44));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v4 = sub_21C72AE7C(v3, v7);

  swift_getKeyPath(byte_21CBAE480);
  sub_21C71B768(&qword_27CDF0160, type metadata accessor for PMCredentialImporter, &unk_21CBC9A10);
  sub_21CB810D4();

  v5 = *(v4 + 16);

  *a2 = v5;
  return result;
}

uint64_t sub_21C72AE94(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 136) = *a1;
}

uint64_t sub_21C72AED8()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    type metadata accessor for PMCredentialImporter(0);
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    sub_21CB81104();
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_21C72AF58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAE3A8);
  sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__importModel);
}

uint64_t sub_21C72B044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a1;
  v90 = a3;
  swift_getWitnessTable();
  v4 = sub_21CB83744();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_21C71F3FC();
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v101 = v4;
  v102 = MEMORY[0x277D837D0];
  v103 = v5;
  v104 = v6;
  v105 = v7;
  v106 = WitnessTable;
  v107 = v9;
  v108 = v11;
  v109 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v75 - v15;
  v93 = v4;
  v101 = v4;
  v102 = MEMORY[0x277D837D0];
  v103 = v5;
  v89 = v5;
  v92 = v6;
  v104 = v6;
  v105 = v7;
  v95 = WitnessTable;
  v96 = v7;
  v106 = WitnessTable;
  v107 = v9;
  v94 = v9;
  v97 = v11;
  v98 = v10;
  v108 = v11;
  v109 = v10;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - v21;
  v85 = v23;
  v86 = OpaqueTypeMetadata2;
  v24 = v83;
  v88 = sub_21CB834A4();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v91 = &v75 - v25;
  v26 = sub_21C72B920(*(v24 + *(a2 + 76)));
  v27 = (v24 + *(a2 + 60));
  v28 = v27[1];
  v101 = *v27;
  v102 = v28;
  if (v26)
  {

    v79 = sub_21C72BDAC(a2);
    v78 = *(a2 + 72);
    v29 = (v24 + *(a2 + 80));
    v31 = *v29;
    v30 = v29[1];
    v77 = v31;
    v76 = v30;
    v32 = swift_checkMetadataState();
    v33 = v97;
    v34 = v94;
    v35 = v92;
    v36 = v81;
    v37 = v89;
    sub_21CB84404();

    v101 = v32;
    v102 = MEMORY[0x277D837D0];
    v103 = v37;
    v38 = v95;
    v104 = v35;
    v105 = v96;
    v106 = v95;
    v107 = v34;
    v108 = v33;
    v109 = v98;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v80;
    v41 = v86;
    sub_21C72BE10(v36, v86, OpaqueTypeConformance2);
    v42 = *(v82 + 8);
    v42(v36, v41);
    sub_21C72BE10(v40, v41, OpaqueTypeConformance2);
    v101 = v32;
    v102 = MEMORY[0x277D837D0];
    v103 = v37;
    v104 = v35;
    v43 = v96;
    v105 = v96;
    v106 = v38;
    v107 = v94;
    v108 = v97;
    v109 = v98;
    v44 = swift_getOpaqueTypeConformance2();
    sub_21C72BE68(v36, v85, v41, v44, OpaqueTypeConformance2);
    v42(v36, v41);
    v45 = v40;
    v46 = v41;
  }

  else
  {

    sub_21C72BDAC(a2);
    v82 = v17;
    v79 = v22;
    v81 = v47;
    v80 = *(a2 + 72);
    v48 = *(a2 + 84);
    v49 = (v24 + *(a2 + 80));
    v51 = *v49;
    v50 = v49[1];
    v78 = v51;
    v77 = v50;
    v76 = *(v24 + v48);
    v52 = swift_checkMetadataState();
    v53 = v94;
    v54 = v95;
    v55 = v92;
    v37 = v89;
    sub_21CB84714();

    v101 = v52;
    v56 = v52;
    v102 = MEMORY[0x277D837D0];
    v103 = v37;
    v104 = v55;
    v105 = v96;
    v106 = v54;
    v107 = v53;
    v57 = v53;
    v108 = v97;
    v109 = v98;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = v79;
    v60 = v85;
    sub_21C72BE10(v19, v85, v58);
    v42 = *(v82 + 8);
    v42(v19, v60);
    sub_21C72BE10(v59, v60, v58);
    v101 = v56;
    v102 = MEMORY[0x277D837D0];
    v103 = v37;
    v43 = v96;
    v104 = v55;
    v105 = v96;
    v106 = v95;
    v107 = v57;
    v108 = v97;
    v109 = v98;
    v61 = swift_getOpaqueTypeConformance2();
    sub_21C909A74(v19, v60, v86, v58, v61);
    v42(v19, v60);
    v45 = v79;
    v46 = v60;
  }

  v42(v45, v46);
  v63 = v92;
  v62 = v93;
  v101 = v93;
  v64 = MEMORY[0x277D837D0];
  v102 = MEMORY[0x277D837D0];
  v103 = v37;
  v104 = v92;
  v105 = v43;
  v66 = v94;
  v65 = v95;
  v106 = v95;
  v107 = v94;
  v67 = v97;
  v68 = v98;
  v108 = v97;
  v109 = v98;
  v69 = swift_getOpaqueTypeConformance2();
  v101 = v62;
  v102 = v64;
  v103 = v37;
  v104 = v63;
  v105 = v43;
  v106 = v65;
  v107 = v66;
  v108 = v67;
  v109 = v68;
  v70 = swift_getOpaqueTypeConformance2();
  v99 = v69;
  v100 = v70;
  v71 = v88;
  v72 = swift_getWitnessTable();
  v73 = v91;
  sub_21C72BE10(v91, v71, v72);
  return (*(v87 + 8))(v73, v71);
}

uint64_t sub_21C72B920(unsigned __int8 a1)
{
  v1 = a1;
  v2 = a1;
  v3 = sub_21CB83834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  if (v2 == 2)
  {
    sub_21C866E0C(&v23 - v16);
    (*(v4 + 104))(v14, *MEMORY[0x277CE0558], v3);
    (*(v4 + 56))(v14, 0, 1, v3);
    v18 = *(v6 + 48);
    sub_21C6EDBAC(v17, v8, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EDBAC(v14, &v8[v18], &qword_27CDEC390, &qword_21CBA40E0);
    v19 = *(v4 + 48);
    if (v19(v8, 1, v3) == 1)
    {
      sub_21C6EA794(v14, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
      if (v19(&v8[v18], 1, v3) == 1)
      {
        sub_21C6EA794(v8, &qword_27CDEC390, &qword_21CBA40E0);
        v1 = 1;
        return v1 & 1;
      }
    }

    else
    {
      sub_21C6EDBAC(v8, v11, &qword_27CDEC390, &qword_21CBA40E0);
      if (v19(&v8[v18], 1, v3) != 1)
      {
        v20 = v24;
        (*(v4 + 32))(v24, &v8[v18], v3);
        sub_21C72BD54();
        v1 = sub_21CB85574();
        v21 = *(v4 + 8);
        v21(v20, v3);
        sub_21C6EA794(v14, &qword_27CDEC390, &qword_21CBA40E0);
        sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
        v21(v11, v3);
        sub_21C6EA794(v8, &qword_27CDEC390, &qword_21CBA40E0);
        return v1 & 1;
      }

      sub_21C6EA794(v14, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v4 + 8))(v11, v3);
    }

    sub_21C6EA794(v8, &qword_27CDEE530, &unk_21CBA9D80);
    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_21C72BD54()
{
  result = qword_27CDEE538;
  if (!qword_27CDEE538)
  {
    sub_21CB83834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE538);
  }

  return result;
}

uint64_t sub_21C72BDAC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F54();
  return v2;
}

uint64_t sub_21C72BE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21CB83484();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_21CB83494();
}

uint64_t sub_21C72BFD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8B38, &unk_21CBC9AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  type metadata accessor for PMSafariView(255);
  sub_21C6EADEC(&qword_27CDF8B40, &qword_27CDF8B38, &unk_21CBC9AE0, MEMORY[0x277CE04B0]);
  sub_21C6EADEC(&qword_27CDF8B48, &qword_27CDEFE40, &unk_21CBAE4E0, &unk_21CBBE7B8);
  sub_21C72C134(&qword_27CDF8B50, type metadata accessor for PMSafariView, &unk_21CBC9B00);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C72C134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_21C72C17C@<D0>(_OWORD *a1@<X8>)
{
  sub_21C72C1CC();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_21C72C1CC()
{
  result = qword_27CDF2E80;
  if (!qword_27CDF2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E80);
  }

  return result;
}

uint64_t sub_21C72C220@<X0>(void *a1@<X8>)
{
  v1 = *algn_281750E48;
  *a1 = off_281750E40;
  a1[1] = v1;
}

uint64_t sub_21C72C234(void *a1)
{
  sub_21C72C1CC();

  return sub_21CB82FA4();
}

uint64_t sub_21C72C294()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B18, &unk_21CBC9A60);
  MEMORY[0x28223BE20](v0);
  v2 = &v4 - v1;
  sub_21CB84F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B38, &unk_21CBC9AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  type metadata accessor for PMSafariView(0);
  sub_21C6EADEC(&qword_27CDF8B40, &qword_27CDF8B38, &unk_21CBC9AE0, MEMORY[0x277CE04B0]);
  sub_21C6EADEC(&qword_27CDF8B48, &qword_27CDEFE40, &unk_21CBAE4E0, &unk_21CBBE7B8);
  sub_21C72C134(&qword_27CDF8B50, type metadata accessor for PMSafariView, &unk_21CBC9B00);
  sub_21CB847C4();
  return sub_21C72C460(v2);
}

uint64_t sub_21C72C460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B18, &unk_21CBC9A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PMAppAccountsCollectionView(uint64_t a1)
{
  result = qword_27CDF4EF8;
  if (!qword_27CDF4EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72C514(uint64_t a1)
{
  sub_21C72C5BC(319);
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21C7086F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C72C5BC(uint64_t a1)
{
  if (!qword_27CDF4F08)
  {
    type metadata accessor for PMAccount(255);
    v1 = sub_21CB85864();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF4F08);
    }
  }
}

uint64_t type metadata accessor for PMGeneratedPasswordsSearchResultsRow(uint64_t a1)
{
  result = qword_27CDF3758;
  if (!qword_27CDF3758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72C660(uint64_t a1)
{
  if (!qword_27CDF3768)
  {
    type metadata accessor for PMGeneratedPasswordsSearchResultsModel();
    sub_21C72C7D4(&qword_27CDEDC18, type metadata accessor for PMGeneratedPasswordsSearchResultsModel, &unk_21CBA2038);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF3768);
    }
  }
}

void sub_21C72C6F4(uint64_t a1)
{
  sub_21C72C660(319);
  if (v1 <= 0x3F)
  {
    sub_21C7205C4();
    if (v2 <= 0x3F)
    {
      sub_21C72C81C(319);
      if (v3 <= 0x3F)
      {
        sub_21C7226D8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21C72C7D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21C72C81C(uint64_t a1)
{
  if (!qword_27CDEB898)
  {
    sub_21CB82834();
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEB898);
    }
  }
}

void sub_21C72C894(uint64_t a1)
{
  sub_21C72CA74(319, &qword_27CDEC840, &qword_27CDEAEF8, &unk_21CBA0740, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_21C72CA74(319, &qword_27CDEC848, &unk_27CDEBE60, &unk_21CB9FF40, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_21C72CB2C(319, &qword_27CDEB6A8, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_21C7226D8();
        if (v4 <= 0x3F)
        {
          sub_21C72CA74(319, &qword_27CDEC850, &qword_27CDEC858, &qword_21CBB1080, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21C72CB2C(319, &qword_27CDEC860, MEMORY[0x277CDDAF0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_21C7202E4();
              if (v7 <= 0x3F)
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

void sub_21C72CA74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_21C72CAD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB84D84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C72CB2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C72CBB0(uint64_t a1)
{
  sub_21C72CC94(319, &qword_27CDF69A0, type metadata accessor for PMMoveAccountToGroupAlert.Configuration, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21C72CC94(319, &qword_27CDF62D0, type metadata accessor for PMAccount, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C72CC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C72CD18(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    sub_21C72CDCC(319, &qword_27CDF65B0, type metadata accessor for PMSharingGroup, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C72CDCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PMSourceGrid(uint64_t a1)
{
  result = qword_27CDF98D8;
  if (!qword_27CDF98D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72CE8C(uint64_t a1)
{
  type metadata accessor for PMAppSourceListModel(319);
  if (v1 <= 0x3F)
  {
    sub_21C705CFC(319);
    if (v2 <= 0x3F)
    {
      sub_21C70640C(319);
      if (v3 <= 0x3F)
      {
        sub_21C706378(319);
        if (v4 <= 0x3F)
        {
          sub_21C72C81C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27CE18418 == -1)
  {
    if (qword_27CE18420)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27CE18420)
    {
      return _availability_version_check();
    }
  }

  if (qword_27CE18410 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27CE18404 > a3)
      {
        return 1;
      }

      if (dword_27CE18404 >= a3)
      {
        return dword_27CE18408 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_21C72D17C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_21C79C38C(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PMManagePasskeyOnWebsiteLink);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_21C79C464(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for PMManagePasskeyOnWebsiteLink);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA9E0, &unk_21CB9FBC0);
  sub_21C6EADEC(&qword_27CDEA9E8, &qword_27CDEA9E0, &unk_21CB9FBC0, MEMORY[0x277CDEFF0]);
  return sub_21CB84DA4();
}

uint64_t sub_21C72D30C()
{
  v1 = v0;
  v2 = (type metadata accessor for PMManagePasskeyOnWebsiteLink(0) - 8);
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 64);
  v42 = (v3 + 16) & ~v3;
  v5 = v0 + v42;
  sub_21C79C1F4(*v5, *(v5 + 8), *(v5 + 16));
  v6 = v5 + v2[7];

  v7 = type metadata accessor for PMAccount(0);
  v8 = v6 + v7[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v10 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v11 = *(v10 + 28);
    v12 = sub_21CB85B74();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);

    v13 = *(v10 + 36);
    v14 = sub_21CB85C44();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v8 + v13, 1, v14))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v32 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v33 = v32[7];
  v34 = sub_21CB85C04();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v8 + v33, 1, v34))
  {
    (*(v35 + 8))(v8 + v33, v34);
  }

  v36 = v32[8];
  v37 = sub_21CB85BB4();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v8 + v36, 1, v37))
  {
    (*(v38 + 8))(v8 + v36, v37);
  }

  v13 = v32[9];
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v8 + v13, 1, v14))
  {
LABEL_3:
    (*(v15 + 8))(v8 + v13, v14);
  }

LABEL_4:
  v16 = (v6 + v7[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v1;

    v17 = type metadata accessor for PMAccount.MockData(0);
    v18 = v17[8];
    v19 = sub_21CB80DD4();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(v16 + v18, 1, v19))
    {
      (*(v20 + 8))(v16 + v18, v19);
    }

    v22 = v17[12];
    if (!v21(v16 + v22, 1, v19))
    {
      (*(v20 + 8))(v16 + v22, v19);
    }

    v23 = v17[15];
    v24 = sub_21CB85BB4();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v16 + v23, 1, v24))
    {
      (*(v25 + 8))(v16 + v23, v24);
    }

    v26 = v17[16];
    v27 = sub_21CB85C04();
    v28 = *(v27 - 8);
    v1 = v41;
    if (!(*(v28 + 48))(v16 + v26, 1, v27))
    {
      (*(v28 + 8))(v16 + v26, v27);
    }

    v29 = v17[18];
    v30 = sub_21CB85C44();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v16 + v29, 1, v30))
    {
      (*(v31 + 8))(v16 + v29, v30);
    }
  }

  else
  {
  }

  v39 = v6 + v7[7];
  if (*(v39 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v42 + v4, v3 | 7);
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27CE18420;
  if (qword_27CE18420)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27CE18420 = MEMORY[0x28223BE68];
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
                          v14 = MEMORY[0x21CF16410](v13);
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
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27CE18404, &dword_27CE18408);
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

uint64_t type metadata accessor for PMGroupRow(uint64_t a1)
{
  result = qword_27CDF51F8;
  if (!qword_27CDF51F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72DD00(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C705CFC(319);
    if (v2 <= 0x3F)
    {
      sub_21C72DE24(319, &qword_27CDF5208, &type metadata for PMSourceRowStyle);
      if (v3 <= 0x3F)
      {
        sub_21C72DE24(319, &qword_27CDEB890, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C72DDD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C72DE24(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for PMAppSourceListRowLabelStyle(uint64_t a1)
{
  result = qword_27CDF1D68;
  if (!qword_27CDF1D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72DEBC(uint64_t a1)
{
  sub_21C72DF48(319);
  if (v1 <= 0x3F)
  {
    sub_21C7202E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C72DF48(uint64_t a1)
{
  if (!qword_27CDEC5D0)
  {
    sub_21CB834E4();
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEC5D0);
    }
  }
}

uint64_t type metadata accessor for PMTipView(uint64_t a1)
{
  result = qword_27CDFA110;
  if (!qword_27CDFA110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72DFEC(uint64_t a1)
{
  sub_21C713384(319);
  if (v1 <= 0x3F)
  {
    sub_21C707F4C(319);
    if (v2 <= 0x3F)
    {
      sub_21C7210DC();
      if (v3 <= 0x3F)
      {
        sub_21C72E0C4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C72E0C4(uint64_t a1)
{
  if (!qword_27CDEF190)
  {
    type metadata accessor for PMAppRootNavigationModel(255);
    v1 = sub_21CB821E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEF190);
    }
  }
}

uint64_t sub_21C72E134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for PMSearchable(uint64_t a1)
{
  result = qword_27CDEE490;
  if (!qword_27CDEE490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72E1DC(uint64_t a1)
{
  sub_21C72E390(319, &qword_27CDEE4A0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_21C85CC4C(319, &qword_27CDEE4A8, &qword_27CDECFE8, &unk_21CBA9A90, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21C72E390(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21C72E390(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21C72E434();
          if (v5 <= 0x3F)
          {
            sub_21C85CC4C(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0, MEMORY[0x277CDF468]);
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

void sub_21C72E390(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C72E3E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C72E434()
{
  if (!qword_27CDEE4B0)
  {
    v0 = sub_21CB81FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE4B0);
    }
  }
}

uint64_t type metadata accessor for PMDebugSettingsView(uint64_t a1)
{
  result = qword_27CDF73D0;
  if (!qword_27CDF73D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72E4E8(uint64_t a1)
{
  sub_21C721A6C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for PMExportAccountSelectionView(uint64_t a1)
{
  result = qword_27CDF7428;
  if (!qword_27CDF7428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C72E5A0(uint64_t a1)
{
  sub_21C708488(319, &qword_27CDEE7E0, type metadata accessor for PMAppAccountsListModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21C708488(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21C721088(319, &qword_27CDF7438, &qword_27CDF7440, &unk_21CBC5030);
      if (v3 <= 0x3F)
      {
        sub_21C721088(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21C72E700()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DF0, &qword_21CBB02A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DE8, &qword_21CBB0298);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DE0, &qword_21CBB0290);
  type metadata accessor for PMAppAccountsListModel(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0F00, &qword_21CBB0490);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DD8, &qword_21CBB0288);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDD0, &qword_21CBB0460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DD0, &qword_21CBB0280);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EF8, &qword_21CBB0430);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DC8, &qword_21CBB0278);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EE8, &qword_21CBB0400);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DC0, &qword_21CBB0270);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E00, &qword_21CBB0350);
  sub_21C915AEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EB8, &qword_21CBB03C0);
  sub_21C9161D8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for PMDebugSettingsView(255);
  sub_21CB83994();
  sub_21C72A284(&qword_27CDF0EF0, type metadata accessor for PMDebugSettingsView, &unk_21CBC4F04);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C722D3C();
  type metadata accessor for PMNewGroupFlow(255);
  sub_21C72A284(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for PMGeneratedPasswordsLogView(255);
  sub_21C72A284(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C72A284(&qword_27CDF0F08, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB398);
  type metadata accessor for PMExportAccountSelectionView(255);
  sub_21C72A284(&qword_27CDF0F10, type metadata accessor for PMExportAccountSelectionView, &unk_21CBC5040);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C72EBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C72EC3C()
{
  result = qword_27CDEBE00;
  if (!qword_27CDEBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBE00);
  }

  return result;
}

unint64_t sub_21C72ECB0()
{
  result = qword_27CDEE4F8;
  if (!qword_27CDEE4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4B8, &qword_21CBA9CC0);
    sub_21C6EADEC(&qword_27CDEE500, &qword_27CDEE4F0, &qword_21CBA9D28, MEMORY[0x277CE04B0]);
    sub_21C6EADEC(&unk_27CDEBFE0, &qword_27CDEB1E0, &unk_21CBA5270, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE4F8);
  }

  return result;
}

uint64_t sub_21C72EDD0@<X0>(uint64_t a1@<X8>)
{
  v164 = a1;
  v163 = sub_21CB81024();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v160 = &v135 - v4;
  v5 = type metadata accessor for PMAppSourceList(0);
  v6 = *(v5 - 8);
  v173 = (v5 - 8);
  v174 = v6;
  MEMORY[0x28223BE20](v5 - 8);
  v178 = v7;
  v179 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_21CB82F84();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v149 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v177 = &v135 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v135 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v135 - v18;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DC0, &qword_21CBB0270);
  MEMORY[0x28223BE20](v171);
  v21 = &v135 - v20;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DC8, &qword_21CBB0278);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v166 = &v135 - v22;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DD0, &qword_21CBB0280);
  v142 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v167 = (&v135 - v23);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DD8, &qword_21CBB0288);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v168 = &v135 - v24;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DE0, &qword_21CBB0290);
  v150 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v169 = &v135 - v25;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DE8, &qword_21CBB0298);
  v152 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v151 = &v135 - v26;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DF0, &qword_21CBB02A0);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v153 = &v135 - v27;
  v175 = v21;
  sub_21C730858();
  sub_21CB85094();
  swift_getKeyPath(byte_21CBB02A8);
  sub_21CB850B4();

  v28 = (v10 + 8);
  v29 = *(v10 + 8);
  v29(v19, v9);
  v30 = v28;
  v31 = v199;
  v32 = v200;
  v33 = v201;
  swift_getKeyPath(byte_21CBB02D0);
  v196 = v31;
  v197 = v32;
  v198 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DF8, &qword_21CBB02F8);
  sub_21CB84F44();

  v172 = v181;
  v165 = v182;
  v136 = v183;
  v139 = v184;

  sub_21CB85094();
  swift_getKeyPath(byte_21CBB0300);
  sub_21CB850B4();

  v29(v16, v9);
  v34 = v193;
  v138 = v194;
  v35 = v195;
  v36 = v177;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBB0328);
  sub_21CB850B4();

  v144 = v9;
  v177 = v30;
  v176 = v29;
  v29(v36, v9);
  v37 = v190;
  v137 = v191;
  v38 = v192;
  v39 = *(v173 + 11);
  v180 = v1;
  v40 = v1 + v39;
  v41 = *v40;
  v143 = *(v40 + 8);
  v146 = v41;
  if (v143 == 1)
  {
    v46 = v41;
  }

  else
  {
    v42 = v192;

    sub_21CB85B04();
    v43 = v35;
    v44 = sub_21CB83C94();
    sub_21CB81C14();

    v35 = v43;
    v45 = v157;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v41, 0);
    (*(v158 + 8))(v45, v159);
    v38 = v42;
    v46 = v188;
  }

  v47 = v175 + *(v171 + 36);
  v48 = v165;
  *v47 = v172;
  *(v47 + 8) = v48;
  v49 = v139;
  *(v47 + 16) = v136;
  *(v47 + 24) = v49;
  v50 = v138;
  *(v47 + 32) = v34;
  *(v47 + 40) = v50;
  *(v47 + 48) = v35;
  v51 = v137;
  *(v47 + 56) = v37;
  *(v47 + 64) = v51;
  *(v47 + 72) = v38;
  *(v47 + 73) = (v46 & 1) == 0;
  *(v47 + 74) = 1;
  *(v47 + 80) = 0;
  *(v47 + 88) = 0;
  v187 = 0;

  sub_21CB84D44();
  v52 = v189;
  *(v47 + 96) = v188;
  *(v47 + 104) = v52;
  v53 = sub_21CB81F94();
  v55 = v54;
  LODWORD(v173) = v56;

  *(v47 + 112) = v53 & 1;
  *(v47 + 120) = v55;
  *(v47 + 128) = v173 & 1;
  v57 = *(type metadata accessor for PMSearchable(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  v58 = swift_storeEnumTagMultiPayload();
  MEMORY[0x28223BE20](v58);
  v59 = v180;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E00, &qword_21CBB0350);
  v61 = sub_21C915AEC();
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EB8, &qword_21CBB03C0);
  v63 = sub_21C9161D8();
  v181 = v62;
  v182 = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v171;
  v66 = v175;
  sub_21CB84894();
  sub_21C6EA794(v66, &qword_27CDF0DC0, &qword_21CBB0270);
  v67 = v149;
  v68 = v144;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBB03D8);
  sub_21CB850B4();

  v176(v67, v68);
  v138 = v199;
  LODWORD(v139) = v201;
  v173 = type metadata accessor for PMAppSourceList;
  v69 = v179;
  sub_21C733540(v59, v179, type metadata accessor for PMAppSourceList);
  v175 = *(v174 + 80);
  v70 = (v175 + 16) & ~v175;
  v71 = swift_allocObject();
  v172 = type metadata accessor for PMAppSourceList;
  sub_21C72EBD4(v69, v71 + v70, type metadata accessor for PMAppSourceList);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0EE8, &qword_21CBB0400);
  v181 = v65;
  v182 = v60;
  v183 = v61;
  v184 = OpaqueTypeConformance2;
  v137 = swift_getOpaqueTypeConformance2();
  v73 = type metadata accessor for PMDebugSettingsView(255);
  v74 = sub_21CB83994();
  v165 = v74;
  v75 = sub_21C72A284(&qword_27CDF0EF0, type metadata accessor for PMDebugSettingsView, &unk_21CBC4F04);
  v181 = v73;
  v182 = v74;
  v183 = v75;
  v184 = MEMORY[0x277CDE2B8];
  v171 = MEMORY[0x277CDEB40];
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v72;
  v78 = v141;
  v79 = v166;
  sub_21CB847B4();

  (*(v140 + 8))(v79, v78);
  v80 = v180;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBB0408);
  sub_21CB850B4();

  v176(v67, v68);
  v139 = v199;
  v140 = v201;
  v196 = v199;
  v197 = v200;
  v198 = v201;
  v81 = v179;
  sub_21C733540(v80, v179, v173);
  v174 = v70;
  v82 = swift_allocObject();
  sub_21C72EBD4(v81, v82 + v70, v172);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0EF8, &qword_21CBB0430);
  v181 = v78;
  v182 = v77;
  v183 = v137;
  v184 = v76;
  v166 = MEMORY[0x277CDEE28];
  v138 = swift_getOpaqueTypeConformance2();
  v141 = sub_21C722D3C();
  v83 = type metadata accessor for PMNewGroupFlow(255);
  v84 = sub_21C72A284(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
  v85 = v165;
  v181 = v83;
  v182 = v165;
  v183 = v84;
  v184 = MEMORY[0x277CDE2B8];
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v145;
  v88 = v167;
  sub_21CB847C4();

  sub_21C72A584(v140);
  (*(v142 + 8))(v88, v87);
  v89 = v180;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBB0438);
  sub_21CB850B4();

  v176(v67, v68);
  LODWORD(v142) = v201;
  v90 = v89;
  v91 = v179;
  sub_21C733540(v90, v179, v173);
  v92 = v174;
  v93 = swift_allocObject();
  sub_21C72EBD4(v91, v93 + v92, v172);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDD0, &qword_21CBB0460);
  v181 = v87;
  v182 = &type metadata for PMNewGroupContext;
  v183 = v136;
  v184 = v138;
  v185 = v141;
  v186 = v86;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = type metadata accessor for PMGeneratedPasswordsLogView(255);
  v96 = sub_21C72A284(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
  v181 = v95;
  v182 = v85;
  v183 = v96;
  v184 = MEMORY[0x277CDE2B8];
  v97 = swift_getOpaqueTypeConformance2();
  v98 = v148;
  v99 = v168;
  sub_21CB847B4();

  (*(v147 + 8))(v99, v98);
  v100 = v180;
  sub_21CB85094();
  sub_21CB850B4();

  v176(v67, v68);
  v196 = v199;
  v197 = v200;
  v198 = v201;
  v101 = v179;
  sub_21C733540(v100, v179, v173);
  v102 = v174;
  v103 = swift_allocObject();
  sub_21C72EBD4(v101, v103 + v102, v172);
  v104 = type metadata accessor for PMAppAccountsListModel(0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F00, &qword_21CBB0490);
  v181 = v98;
  v182 = v167;
  v183 = v94;
  v184 = v97;
  v106 = swift_getOpaqueTypeConformance2();
  v107 = sub_21C72A284(&qword_27CDF0F08, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB398);
  v108 = type metadata accessor for PMExportAccountSelectionView(255);
  v109 = sub_21C72A284(&qword_27CDF0F10, type metadata accessor for PMExportAccountSelectionView, &unk_21CBC5040);
  v181 = v108;
  v182 = v165;
  v183 = v109;
  v184 = MEMORY[0x277CDE2B8];
  v110 = swift_getOpaqueTypeConformance2();
  v173 = v107;
  v176 = v106;
  v111 = v151;
  v112 = v170;
  v177 = v105;
  v113 = v169;
  sub_21CB847C4();

  (*(v150 + 8))(v113, v112);
  if (v143)
  {
    v114 = v146;
  }

  else
  {
    v115 = v146;

    sub_21CB85B04();
    v116 = sub_21CB83C94();
    sub_21CB81C14();

    v117 = v157;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v115, 0);
    (*(v158 + 8))(v117, v159);
    v114 = v181;
  }

  LOBYTE(v199) = v114 & 1;
  v118 = v179;
  sub_21C733540(v180, v179, type metadata accessor for PMAppSourceList);
  v119 = v174;
  v120 = swift_allocObject();
  sub_21C72EBD4(v118, v120 + v119, type metadata accessor for PMAppSourceList);
  v181 = v170;
  v182 = v104;
  v183 = v177;
  v184 = v176;
  v185 = v173;
  v186 = v110;
  v121 = swift_getOpaqueTypeConformance2();
  v122 = v153;
  v123 = v154;
  v124 = MEMORY[0x277D839B0];
  sub_21CB84934();

  (*(v152 + 8))(v111, v123);
  v125 = v160;
  sub_21CB81014();
  v126 = v161;
  sub_21CB81014();
  v127 = sub_21CB80FF4();
  v129 = v128;
  v130 = *(v162 + 8);
  v131 = v126;
  v132 = v163;
  v130(v131, v163);
  v130(v125, v132);
  v199 = v127;
  v200 = v129;
  v181 = v123;
  v182 = v124;
  v183 = v121;
  v184 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  v133 = v156;
  sub_21CB842F4();

  return (*(v155 + 8))(v122, v133);
}

uint64_t sub_21C7306FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C87FF18(v1, v2);
}

uint64_t sub_21C730858()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E80, &qword_21CBB03A0);
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10A8, &unk_21CBB0780);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E38, &qword_21CBB0368);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  if (sub_21C730A84())
  {
    sub_21C90B9E4(v8);
    sub_21C6EDBAC(v8, v5, &qword_27CDF0E38, &qword_21CBB0368);
    swift_storeEnumTagMultiPayload();
    sub_21C915CB8();
    sub_21C915F80();
    sub_21CB83494();
    v9 = v8;
    v10 = &qword_27CDF0E38;
    v11 = &qword_21CBB0368;
  }

  else
  {
    sub_21C730D0C(v2);
    sub_21C6EDBAC(v2, v5, &qword_27CDF0E80, &qword_21CBB03A0);
    swift_storeEnumTagMultiPayload();
    sub_21C915CB8();
    sub_21C915F80();
    sub_21CB83494();
    v9 = v2;
    v10 = &qword_27CDF0E80;
    v11 = &qword_21CBB03A0;
  }

  return sub_21C6EA794(v9, v10, v11);
}

BOOL sub_21C730A84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  swift_getKeyPath(byte_21CBB02A8);
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v0 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  swift_getKeyPath(byte_21CBB0500);
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return 1;
  }

  sub_21CB85084();
  swift_getKeyPath(byte_21CBB0328);
  sub_21CB810D4();

  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchFieldIsPresented);

  if (v5 != 1)
  {
    return 0;
  }

  sub_21CB85084();
  swift_getKeyPath(byte_21CBB02A8);
  sub_21CB810D4();

  v6 = sub_21C882110();

  v7 = *(v6 + 16);

  return v7 != 0;
}

uint64_t sub_21C730D0C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_21CB82F84();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10D8, &qword_21CBB0978);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E90, &qword_21CBB03A8);
  MEMORY[0x28223BE20](v40);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10E0, &qword_21CBB0980);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBB0988);
  sub_21CB850B4();

  (*(v9 + 8))(v11, v8);
  v16 = v7;
  v41 = v15;
  v17 = v39;
  sub_21C6EDBAC(v15, v39, &qword_27CDF10E0, &qword_21CBB0980);
  (*(v13 + 56))(v17, 0, 1, v12);
  v18 = v40;
  v43 = v1;
  v19 = v1;
  type metadata accessor for PMAppSourceListModel.Source(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10E8, &qword_21CBB09B0);
  sub_21C72A284(&qword_27CDF10F0, type metadata accessor for PMAppSourceListModel.Source, &unk_21CBB0D10);
  sub_21C6EADEC(&qword_27CDF10F8, &qword_27CDF10E8, &qword_21CBB09B0, MEMORY[0x277CE14C0]);
  sub_21CB83F24();
  KeyPath = swift_getKeyPath(byte_21CBB09B8);
  v21 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0EA0, &qword_21CBB03B0) + 36)];
  *v21 = KeyPath;
  v21[1] = 0;
  v22 = swift_getKeyPath(byte_21CBB09E8);
  v23 = &v7[*(v18 + 36)];
  *v23 = v22;
  v23[8] = 1;
  v24 = sub_21CB85584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3330, &unk_21CBB0A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = 0x6162656469536E49;
  *(inited + 40) = 0xE900000000000072;
  v26 = v19 + *(type metadata accessor for PMAppSourceList(0) + 36);
  v27 = *v26;
  if (*(v26 + 8) != 1)
  {

    sub_21CB85B04();
    v28 = sub_21CB83C94();
    sub_21CB81C14();

    v29 = v36;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v27, 0);
    (*(v37 + 8))(v29, v38);
    LOBYTE(v27) = v44;
  }

  v30 = 1702195828;
  if ((v27 & 1) == 0)
  {
    v30 = 0x65736C6166;
  }

  v31 = 0xE500000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  if (v27)
  {
    v31 = 0xE400000000000000;
  }

  *(inited + 48) = v30;
  *(inited + 56) = v31;
  sub_21C73181C(inited);
  swift_setDeallocating();
  sub_21C6EA794(inited + 32, &qword_27CDF86B0, &unk_21CBB7750);
  v32 = sub_21CB85464();

  v33 = WBSMakeAccessibilityIdentifier();

  sub_21CB855C4();
  sub_21C91603C();
  sub_21CB845C4();

  sub_21C6EA794(v16, &qword_27CDF0E90, &qword_21CBB03A8);
  return sub_21C6EA794(v41, &qword_27CDF10E0, &qword_21CBB0980);
}

uint64_t sub_21C731378@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBAD718);
  sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &qword_27CDEAC20, &qword_21CBAD710);
}

uint64_t sub_21C731450@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  KeyPath = swift_getKeyPath(byte_21CBCC120);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v17);

  type metadata accessor for PMAccountsState(0);
  sub_21C7062A0(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v4 = sub_21CB82674();
  v6 = v5;

  a2[1] = v4;
  a2[2] = v6;
  v7 = swift_getKeyPath(byte_21CBCC148);
  sub_21CB86544();
  sub_21C7073E8(v7, v17);

  type metadata accessor for PMGroupsStore(0);
  sub_21C7062A0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v8 = sub_21CB82674();
  v10 = v9;

  a2[3] = v8;
  a2[4] = v10;
  v11 = swift_getKeyPath(byte_21CBCC168);
  sub_21CB86544();
  sub_21C7073D0(v11, v17);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C7062A0(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v12 = sub_21CB82674();
  v14 = v13;

  a2[5] = v12;
  a2[6] = v14;
  v15 = *(type metadata accessor for PMSourceGrid(0) + 32);
  *(a2 + v15) = swift_getKeyPath(aP_17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C7316D8(uint64_t a1, char a2)
{
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_21CB85B04();
    v8 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return a1 & 1;
}

unint64_t sub_21C73181C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89F0, &unk_21CBC96F0);
    v3 = sub_21CB86224();
    v4 = a1 + 32;

    while (1)
    {
      sub_21C6EDBAC(v4, &v13, &qword_27CDF86B0, &unk_21CBB7750);
      v5 = v13;
      v6 = v14;
      result = sub_21C731960(v13, v14, sub_21C7319E4);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21C731A9C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21C731960(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_21CB86484();
  sub_21CB854C4();
  v5 = sub_21CB864D4();

  return a3(a1, a2, v5);
}

unint64_t sub_21C7319E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21CB86344())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_21C731A9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21C731AAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBB0E38);
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);
}

uint64_t sub_21C731B90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBB0500);
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  a2[1] = v4;
}

uint64_t sub_21C731C48@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F18, &qword_21CBB0578);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v2 = &v29 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0ED8, &qword_21CBB03D0);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F20, &qword_21CBB0580);
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0EC8, &qword_21CBB03C8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0EB8, &qword_21CBB03C0);
  MEMORY[0x28223BE20](v31);
  v14 = &v29 - v13;
  if (sub_21CB85174())
  {
    sub_21C732134(v12);
    v15 = MEMORY[0x277CDDF68];
    v16 = sub_21C6EADEC(&qword_27CDF0ED0, &qword_27CDF0EC8, &qword_21CBB03C8, MEMORY[0x277CDDF68]);
    MEMORY[0x21CF131E0](v12, v9, v16);
    v35 = v9;
    v36 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v18 = sub_21C6EADEC(&qword_27CDF0EE0, &qword_27CDF0ED8, &qword_21CBB03D0, v15);
    v35 = v3;
    v36 = v18;
    v19 = swift_getOpaqueTypeConformance2();
    v20 = v32;
    MEMORY[0x21CF131F0](v8, v32, v33, OpaqueTypeConformance2, v19);
    (*(v6 + 8))(v8, v20);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_21C90CA64(v5);
    v21 = MEMORY[0x277CDDF68];
    v22 = sub_21C6EADEC(&qword_27CDF0EE0, &qword_27CDF0ED8, &qword_21CBB03D0, MEMORY[0x277CDDF68]);
    MEMORY[0x21CF131E0](v5, v3, v22);
    v23 = sub_21C6EADEC(&qword_27CDF0ED0, &qword_27CDF0EC8, &qword_21CBB03C8, v21);
    v35 = v9;
    v36 = v23;
    v24 = swift_getOpaqueTypeConformance2();
    v35 = v3;
    v36 = v22;
    v25 = swift_getOpaqueTypeConformance2();
    v26 = v33;
    MEMORY[0x21CF13200](v2, v32, v33, v24, v25);
    (*(v30 + 8))(v2, v26);
    (*(v29 + 8))(v5, v3);
  }

  v27 = sub_21C9161D8();
  MEMORY[0x21CF131E0](v14, v31, v27);
  return sub_21C6EA794(v14, &qword_27CDF0EB8, &qword_21CBB03C0);
}

uint64_t sub_21C732134@<X0>(uint64_t a1@<X8>)
{
  v138 = a1;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F28, &qword_21CBB0588);
  MEMORY[0x28223BE20](v137);
  v136 = &v101 - v2;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F30, &qword_21CBB0590);
  v112 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v111 = &v101 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F38, &qword_21CBB0598);
  MEMORY[0x28223BE20](v106);
  v103 = &v101 - v4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F40, &qword_21CBB05A0);
  v110 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v109 = &v101 - v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F48, &qword_21CBB05A8);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v101 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F50, &qword_21CBB05B0);
  v104 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v101 - v7;
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F58, &qword_21CBB05B8);
  v124 = *(OpaqueTypeConformance2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v123 = &v101 - v8;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F60, &qword_21CBB05C0);
  v127 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v126 = &v101 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F68, &unk_21CBB05C8);
  v132 = *(v10 - 8);
  v133 = v10;
  MEMORY[0x28223BE20](v10);
  v142 = &v101 - v11;
  v116 = sub_21CB83834();
  v117 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v102 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v101 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v17 - 8);
  v118 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v115 = &v101 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v101 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F70, &qword_21CBB05D8);
  MEMORY[0x28223BE20](v24 - 8);
  v131 = &v101 - v25;
  v141 = sub_21CB83604();
  v122 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v120 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v101 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F78, &qword_21CBB05E0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v101 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F80, &qword_21CBB05E8);
  v129 = *(v34 - 8);
  v130 = v34;
  MEMORY[0x28223BE20](v34);
  v36 = &v101 - v35;
  sub_21CB835A4();
  v143 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F88, &qword_21CBB05F0);
  sub_21C7335AC();
  v121 = v29;
  sub_21CB82194();
  v144 = 0x6974704F65726F6DLL;
  v145 = 0xEB00000000736E6FLL;
  v119 = *(v1 + *(type metadata accessor for PMAppSourceList(0) + 52));
  sub_21CB852C4();
  sub_21C6EADEC(&qword_27CDF0FA8, &qword_27CDF0F78, &qword_21CBB05E0, MEMORY[0x277CDD7A8]);
  v128 = v36;
  sub_21CB82774();
  v37 = v33;
  v38 = v116;
  (*(v31 + 8))(v37, v30);
  v139 = v1;
  v39 = v117;
  sub_21C728D50(v23);
  v40 = v115;
  (*(v39 + 104))(v115, *MEMORY[0x277CE0558], v38);
  (*(v39 + 56))(v40, 0, 1, v38);
  v41 = *(v14 + 56);
  sub_21C6EDBAC(v23, v16, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v40, &v16[v41], &qword_27CDEC390, &qword_21CBA40E0);
  v42 = *(v39 + 48);
  if (v42(v16, 1, v38) == 1)
  {
    sub_21C6EA794(v40, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
    if (v42(&v16[v41], 1, v38) == 1)
    {
      sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
      v43 = v142;
LABEL_9:
      v67 = v43;
      v68 = v121;
      sub_21CB835F4();
      v69 = v122;
      v70 = (*(v122 + 16))(v120, v68, v141);
      MEMORY[0x28223BE20](v70);
      *(&v101 - 2) = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FB0, &qword_21CBB0600);
      sub_21C91651C();
      v71 = v123;
      sub_21CB82194();
      v144 = 0x70756F724777656ELL;
      v145 = 0xE800000000000000;
      sub_21CB852C4();
      v72 = sub_21C6EADEC(&qword_27CDF0FE0, &qword_27CDF0F58, &qword_21CBB05B8, MEMORY[0x277CDD7A8]);
      v73 = v126;
      v74 = OpaqueTypeConformance2;
      v75 = MEMORY[0x277D837D0];
      v76 = MEMORY[0x277D837E0];
      sub_21CB82774();
      (*(v124 + 8))(v71, v74);
      v144 = v74;
      v145 = v75;
      v146 = v72;
      v147 = v76;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v77 = v140;
      MEMORY[0x21CF131E0](v73, v140, OpaqueTypeConformance2);
      (*(v127 + 8))(v73, v77);
      v78 = *(v69 + 8);
      v79 = v141;
      v78(v68, v141);
      sub_21CB835F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FF0, &qword_21CBB0618);
      sub_21C6EADEC(&qword_27CDF0FF8, &qword_27CDF0FF0, &qword_21CBB0618, MEMORY[0x277CE14C0]);
      v80 = v113;
      sub_21CB82AA4();
      sub_21CB835F4();
      v81 = v105;
      sub_21C90ECB0(v68, v105);
      v78(v68, v79);
      v82 = *(v106 + 48);
      v83 = *(v106 + 64);
      v62 = v132;
      v57 = v133;
      v84 = v103;
      (*(v132 + 16))(v103, v67, v133);
      v85 = v104;
      (*(v104 + 16))(&v84[v82], v80, v114);
      v86 = v107;
      v87 = v108;
      (*(v107 + 16))(&v84[v83], v81, v108);
      v88 = v109;
      sub_21CB83394();
      v89 = sub_21C6EADEC(&qword_27CDF0FE8, &qword_27CDF0F40, &qword_21CBB05A0, MEMORY[0x277CDDF68]);
      v144 = v140;
      v145 = OpaqueTypeConformance2;
      v90 = swift_getOpaqueTypeConformance2();
      v144 = v57;
      v145 = v90;
      v91 = swift_getOpaqueTypeConformance2();
      v92 = v131;
      v93 = v134;
      MEMORY[0x21CF131F0](v88, v134, v135, v89, v91);
      (*(v110 + 8))(v88, v93);
      v94 = v87;
      v60 = v92;
      (*(v86 + 8))(v81, v94);
      (*(v85 + 8))(v113, v114);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_21C6EDBAC(v16, v118, &qword_27CDEC390, &qword_21CBA40E0);
  if (v42(&v16[v41], 1, v38) == 1)
  {
    sub_21C6EA794(v40, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v39 + 8))(v118, v38);
LABEL_6:
    sub_21C6EA794(v16, &qword_27CDEE530, &unk_21CBA9D80);
    v43 = v142;
    goto LABEL_7;
  }

  v63 = v102;
  (*(v39 + 32))(v102, &v16[v41], v38);
  sub_21C72A284(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v64 = v118;
  v65 = sub_21CB85574();
  v66 = *(v39 + 8);
  v66(v63, v38);
  sub_21C6EA794(v40, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
  v66(v64, v38);
  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  v43 = v142;
  if (v65)
  {
    goto LABEL_9;
  }

LABEL_7:
  v44 = v121;
  sub_21CB835A4();
  v45 = v122;
  v46 = (*(v122 + 16))(v120, v44, v141);
  MEMORY[0x28223BE20](v46);
  *(&v101 - 2) = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FB0, &qword_21CBB0600);
  sub_21C91651C();
  v47 = v123;
  sub_21CB82194();
  v144 = 0x70756F724777656ELL;
  v145 = 0xE800000000000000;
  sub_21CB852C4();
  v48 = sub_21C6EADEC(&qword_27CDF0FE0, &qword_27CDF0F58, &qword_21CBB05B8, MEMORY[0x277CDD7A8]);
  v49 = v126;
  v50 = OpaqueTypeConformance2;
  v51 = MEMORY[0x277D837D0];
  v52 = MEMORY[0x277D837E0];
  sub_21CB82774();
  (*(v124 + 8))(v47, v50);
  v144 = v50;
  v145 = v51;
  v146 = v48;
  v147 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v140;
  MEMORY[0x21CF131E0](v49, v140, v53);
  (*(v127 + 8))(v49, v54);
  (*(v45 + 8))(v44, v141);
  v144 = v54;
  v145 = v53;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v111;
  v57 = v133;
  MEMORY[0x21CF131E0](v43, v133, v55);
  v58 = sub_21C6EADEC(&qword_27CDF0FE8, &qword_27CDF0F40, &qword_21CBB05A0, MEMORY[0x277CDDF68]);
  v144 = v57;
  v145 = v55;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v131;
  v61 = v135;
  MEMORY[0x21CF13200](v56, v134, v135, v58, v59);
  (*(v112 + 8))(v56, v61);
  v62 = v132;
LABEL_10:
  (*(v62 + 8))(v142, v57);
  v95 = v136;
  v96 = *(v137 + 48);
  v98 = v129;
  v97 = v130;
  v99 = v128;
  (*(v129 + 16))(v136, v128, v130);
  sub_21C6EDBAC(v60, &v95[v96], &qword_27CDF0F70, &qword_21CBB05D8);
  sub_21CB83394();
  sub_21C6EA794(v60, &qword_27CDF0F70, &qword_21CBB05D8);
  return (*(v98 + 8))(v99, v97);
}

uint64_t sub_21C733540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C7335AC()
{
  result = qword_27CDF0F90;
  if (!qword_27CDF0F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0F88, &qword_21CBB05F0);
    sub_21C6EADEC(&qword_27CDF0F98, &qword_27CDF0FA0, &qword_21CBB05F8, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0F90);
  }

  return result;
}

id sub_21C73365C()
{
  v1 = *(v0 + *(type metadata accessor for PMAppSourceList(0) + 44));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7253C8(v1, v3);

  sub_21CB81E94();

  {
    return [objc_opt_self() isInternalInstall];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C7337CC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_21CB85174();
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  v12[0] = v7;
  v12[1] = v9;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C733984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = type metadata accessor for PMAppSourceList(0);
  if (*(a1 + *(v19 + 56)) == 1)
  {
    v28 = &v27;
    MEMORY[0x28223BE20](v19);
    *(&v27 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    v29 = a1;
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    a1 = v29;
    sub_21CB85054();
    (*(v4 + 32))(v18, v6, v3);
    v20 = *(v4 + 56);
    v20(v18, 0, 1, v3);
  }

  else
  {
    v20 = *(v4 + 56);
    v20(v18, 1, 1, v3);
  }

  v21 = sub_21C73365C();
  if (v21)
  {
    v28 = &v27;
    MEMORY[0x28223BE20](v21);
    v29 = v4;
    *(&v27 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    v22 = v29;
    sub_21CB85054();
    (*(v22 + 32))(v15, v6, v3);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v20(v15, v23, 1, v3);
  sub_21C6EDBAC(v18, v12, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EDBAC(v15, v9, &qword_27CDEC8A8, &unk_21CBACF50);
  v24 = v30;
  sub_21C6EDBAC(v12, v30, &qword_27CDEC8A8, &unk_21CBACF50);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1068, &unk_21CBB06A8);
  sub_21C6EDBAC(v9, v24 + *(v25 + 48), &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v15, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v18, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v9, &qword_27CDEC8A8, &unk_21CBACF50);
  return sub_21C6EA794(v12, &qword_27CDEC8A8, &unk_21CBACF50);
}

uint64_t sub_21C733DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PMAppSourceList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_21C733540(a1, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSourceList);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_21C72EBD4(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PMAppSourceList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  return sub_21CB84DA4();
}

uint64_t sub_21C733FCC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[0] = v4;
  v8[1] = v6;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C734110(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C734184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21C7341D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBB03D8);
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_21C73427C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow);
  *a2 = v4;
  return sub_21C72A574(v4);
}

uint64_t sub_21C734334(uint64_t *a1)
{
  v1 = *a1;
  sub_21C72A574(*a1);
  return sub_21C9175A4(v1);
}

uint64_t sub_21C734368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBB0438);
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21C734410@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel);
}

uint64_t sub_21C7344C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v103 = a2;
  v5 = type metadata accessor for PMSearchable(0);
  v101 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = v6;
  v102 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_21CB83584();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4B8, &qword_21CBA9CC0);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4C0, &qword_21CBA9CC8);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v13 = &v74 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4C8, &qword_21CBA9CD0);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v74 - v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4D0, &qword_21CBA9CD8);
  MEMORY[0x28223BE20](v106);
  v92 = &v74 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4D8, &qword_21CBA9CE0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v107 = &v74 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4E0, &qword_21CBA9CE8);
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = &v74 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4E8, &qword_21CBA9CF0);
  v98 = *(v100 - 8);
  *&v18 = MEMORY[0x28223BE20](v100).n128_u64[0];
  v96 = &v74 - v19;
  KeyPath = swift_getKeyPath(aH_29, v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4F0, &qword_21CBA9D28);
  (*(*(v21 - 8) + 16))(v11, a1, v21);
  v105 = v9;
  v22 = *(v9 + 36);
  v84 = v11;
  v23 = &v11[v22];
  *v23 = KeyPath;
  v23[8] = 1;
  v24 = *(v3 + 16);
  v25 = *(v3 + 24);
  v113 = *v3;
  v114 = v24;
  v115 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  sub_21CB84F54();
  v83 = v110;
  v81 = v111;
  v82 = v112;
  v26 = *(v3 + 56);
  v27 = *(v3 + 64);
  v28 = *(v3 + 72);
  if (v27)
  {
    v80 = *(v3 + 56);
    v79 = v27;
    v78 = v28;
  }

  else
  {
    v29 = *(v3 + 104);
    LOBYTE(v109) = *(v3 + 96);
    v110 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D74();
    v79 = *(&v113 + 1);
    v80 = v113;
    v78 = v114;
  }

  sub_21C85CD7C(v26, v27);
  sub_21C73517C(v8);
  v30 = *(v3 + 88);
  v104 = v3;
  v31 = v8;
  if (v30)
  {
    *&v113 = *(v3 + 80);
    *(&v113 + 1) = v30;
    sub_21C71F3FC();

    v30 = sub_21CB84054();
    v33 = v32;
    v35 = v34;
    v37 = v36 & 1;
  }

  else
  {
    v33 = 0;
    v37 = 0;
    v35 = 0;
  }

  v77 = sub_21C72ECB0();
  v76 = v13;
  v75 = v31;
  v38 = v37;
  v39 = v33;
  v40 = v84;
  sub_21CB84104();
  sub_21C85CDBC(v30, v39, v38, v35);

  (*(v90 + 8))(v75, v91);
  sub_21C6EA794(v40, &qword_27CDEE4B8, &qword_21CBA9CC0);
  *&v113 = v105;
  *(&v113 + 1) = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v85;
  v43 = v88;
  v44 = v76;
  MEMORY[0x21CF14040](1, v88, OpaqueTypeConformance2);
  (*(v86 + 8))(v44, v43);
  v45 = v104;
  v46 = *(v104 + 74);
  v47 = swift_getKeyPath(a0_14);
  v48 = swift_allocObject();
  *(v48 + 16) = (v46 & 1) == 0;
  v49 = v92;
  (*(v87 + 32))(v92, v42, v89);
  v50 = (v49 + *(v106 + 36));
  *v50 = v47;
  v50[1] = sub_21C735744;
  v50[2] = v48;
  v51 = *(v45 + 120);
  v52 = *(v45 + 128);
  LODWORD(v91) = *(v45 + 112);
  LOBYTE(v113) = v91;
  v105 = v51;
  *(&v113 + 1) = v51;
  LODWORD(v90) = v52;
  LOBYTE(v114) = v52;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE508, &qword_21CBBE3B0);
  sub_21CB81F74();
  v53 = sub_21C85CE00();
  sub_21CB84224();

  sub_21C735104(v49);
  v54 = *(v45 + 40);
  v55 = v45;
  if (v54)
  {
    v56 = *(v45 + 48);
    *&v113 = *(v45 + 32);
    *(&v113 + 1) = v54;
    LOBYTE(v114) = v56 & 1;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    MEMORY[0x21CF14A20](&v109, v57);
    v58 = v109;
  }

  else
  {
    v58 = 2;
  }

  LOBYTE(v109) = v58;
  v59 = v102;
  sub_21C73567C(v45, v102);
  v60 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v61 = swift_allocObject();
  sub_21C7356E0(v59, v61 + v60);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE518, &qword_21CBA9D70);
  *&v113 = v106;
  *(&v113 + 1) = v53;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_21C85CF38();
  v64 = v95;
  v65 = v94;
  v66 = v107;
  sub_21CB84934();

  (*(v93 + 8))(v66, v65);
  LOBYTE(v113) = v91;
  *(&v113 + 1) = v105;
  LOBYTE(v114) = v90;
  sub_21CB81F54();
  sub_21C73567C(v55, v59);
  v67 = swift_allocObject();
  sub_21C7356E0(v59, v67 + v60);
  *&v113 = v65;
  *(&v113 + 1) = v101;
  v114 = v62;
  v115 = v63;
  swift_getOpaqueTypeConformance2();
  v68 = v96;
  v69 = v99;
  sub_21CB84934();

  (*(v97 + 8))(v64, v69);
  sub_21C73567C(v104, v59);
  v70 = swift_allocObject();
  sub_21C7356E0(v59, v70 + v60);
  v71 = v103;
  (*(v98 + 32))(v103, v68, v100);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE528, &qword_21CBA9D78);
  v73 = (v71 + *(result + 36));
  *v73 = sub_21C7421E4;
  v73[1] = v70;
  v73[2] = 0;
  v73[3] = 0;
  return result;
}

uint64_t sub_21C735104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE4D0, &qword_21CBA9CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C73517C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB83554();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21CB83834();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  MEMORY[0x28223BE20](v9);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v28[-v16];
  MEMORY[0x28223BE20](v18);
  v21 = &v28[-v20];
  if (*(v1 + 73))
  {
    if ((sub_21CB85174() & 1) == 0)
    {
LABEL_14:
      sub_21CB83544();
      sub_21CB83534();
      return (*(v31 + 8))(v5, v32);
    }

    v30 = a1;
    type metadata accessor for PMSearchable(0);
    sub_21C728D50(v21);
    v22 = v33;
    (*(v33 + 104))(v17, *MEMORY[0x277CE0558], v6);
    (*(v22 + 56))(v17, 0, 1, v6);
    v23 = *(v9 + 48);
    sub_21C70CA1C(v21, v11);
    sub_21C70CA1C(v17, &v11[v23]);
    v24 = *(v22 + 48);
    if (v24(v11, 1, v6) == 1)
    {
      sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v21, &qword_27CDEC390, &qword_21CBA40E0);
      if (v24(&v11[v23], 1, v6) == 1)
      {
        sub_21C6EA794(v11, &qword_27CDEC390, &qword_21CBA40E0);
        goto LABEL_14;
      }
    }

    else
    {
      sub_21C70CA1C(v11, v14);
      if (v24(&v11[v23], 1, v6) != 1)
      {
        v25 = v33;
        (*(v33 + 32))(v8, &v11[v23], v6);
        sub_21C72BD54();
        v29 = sub_21CB85574();
        v26 = *(v25 + 8);
        v26(v8, v6);
        sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
        sub_21C6EA794(v21, &qword_27CDEC390, &qword_21CBA40E0);
        v26(v14, v6);
        sub_21C6EA794(v11, &qword_27CDEC390, &qword_21CBA40E0);
        if (v29)
        {
          goto LABEL_14;
        }

        return sub_21CB83574();
      }

      sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v21, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v33 + 8))(v14, v6);
    }

    sub_21C6EA794(v11, &qword_27CDEE530, &unk_21CBA9D80);
    return sub_21CB83574();
  }

  return MEMORY[0x28212E540](v19);
}

uint64_t sub_21C73567C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSearchable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7356E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSearchable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C735798(uint64_t a1)
{
  sub_21C7359C4(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21C7359C4(319, &qword_27CDF9B60, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21C7359C4(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_21C7226D8();
        if (v4 <= 0x3F)
        {
          sub_21C7359C4(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_21C735A14(319);
            if (v6 <= 0x3F)
            {
              sub_21C7359C4(319, &qword_27CDEB890, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_21C735A6C(319);
                if (v8 <= 0x3F)
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

void sub_21C735974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C7359C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C735A14(uint64_t a1)
{
  if (!qword_27CDEC498)
  {
    sub_21CB82054();
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEC498);
    }
  }
}

void sub_21C735A6C(uint64_t a1)
{
  if (!qword_27CDF9B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDF98F8, qword_21CBCC810);
    v1 = sub_21CB82074();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF9B68);
    }
  }
}

uint64_t sub_21C735B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_21C735B84()
{
  result = qword_27CDF9980;
  if (!qword_27CDF9980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9988, &qword_21CBCC448);
    sub_21C6EADEC(&qword_27CDF9990, &qword_27CDF9998, qword_21CBCC450, MEMORY[0x277CDE590]);
    sub_21C735C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9980);
  }

  return result;
}

unint64_t sub_21C735C3C()
{
  result = qword_27CDF99A0[0];
  if (!qword_27CDF99A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF99A0);
  }

  return result;
}

unint64_t sub_21C735CB0()
{
  result = qword_27CDEC340;
  if (!qword_27CDEC340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC338, &unk_21CBA3FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC340);
  }

  return result;
}

uint64_t sub_21C735D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC338, &unk_21CBA3FB0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_21C735DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C735E14()
{
  result = qword_27CDF6FE0;
  if (!qword_27CDF6FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6FE8, &qword_21CBC3A68);
    sub_21C735EA0();
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6FE0);
  }

  return result;
}

unint64_t sub_21C735EA0()
{
  result = qword_27CDEF1D0;
  if (!qword_27CDEF1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEBA0, &qword_21CBABC80);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF1D0);
  }

  return result;
}

unint64_t sub_21C735F84()
{
  result = qword_27CDEB908;
  if (!qword_27CDEB908)
  {
    sub_21CB83B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB908);
  }

  return result;
}

uint64_t sub_21C735FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a1;
  v45 = a2;
  v4 = type metadata accessor for PMICloudTermsAndConditionsAlert(0);
  v5 = *(v4 - 8);
  v38 = v4 - 8;
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v6;
  v8 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3350, &unk_21CBB77D0);
  v14 = *(v13 - 8);
  v43 = v13;
  v44 = v14;
  MEMORY[0x28223BE20](v13);
  v41 = v34 - v15;
  sub_21CB81014();
  v16 = sub_21CB81004();
  v18 = v17;
  v39 = v17;
  (*(v10 + 8))(v12, v9);
  v56 = v16;
  v57 = v18;
  sub_21C736718(v3, v8);
  sub_21CB858B4();
  v19 = sub_21CB858A4();
  v20 = *(v5 + 80);
  v21 = (v20 + 32) & ~v20;
  v40 = v7;
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_21C73677C(v8, v22 + v21);
  sub_21C736718(v3, v8);
  v24 = sub_21CB858A4();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  sub_21C73677C(v8, v25 + v21);
  sub_21CB84F64();
  v34[1] = v50;
  v36 = v3;
  v47 = v3;
  v46 = v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3358, &qword_21CBB77E0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3360, &qword_21CBB77E8);
  v26 = sub_21C6EADEC(&qword_27CDF3368, &qword_27CDF3358, &qword_21CBB77E0, MEMORY[0x277CE04B0]);
  v27 = sub_21C71F3FC();
  v33 = sub_21C6EADEC(&qword_27CDF3370, &qword_27CDF3360, &qword_21CBB77E8, MEMORY[0x277CE14C0]);
  v28 = v41;
  sub_21CB84754();

  v29 = v36;
  swift_getKeyPath(byte_21CBB77F0);
  swift_getKeyPath(byte_21CBB7818);
  sub_21CB81DB4();

  LOBYTE(v56) = v48;
  sub_21C736718(v29, v8);
  v30 = swift_allocObject();
  sub_21C73677C(v8, v30 + ((v20 + 16) & ~v20));
  v48 = v35;
  v49 = MEMORY[0x277D837D0];
  v50 = v37;
  v51 = MEMORY[0x277CE0BD8];
  v52 = v26;
  v53 = v27;
  v54 = v33;
  v55 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v31 = v43;
  sub_21CB84924();

  return (*(v44 + 8))(v28, v31);
}

uint64_t sub_21C7365D8()
{
  v1 = *(type metadata accessor for PMICloudTermsAndConditionsAlert(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21CB82484();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C736718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMICloudTermsAndConditionsAlert(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C73677C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMICloudTermsAndConditionsAlert(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21C7367E0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for PMICloudTermsAndConditionsAlert(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21C736854(v4, a1);
}

void *sub_21C736854@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PMICloudTermsAndConditionsAlert(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  result = MEMORY[0x21CF14A20](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_21C7368D8@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v46 = sub_21CB82A04();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v2 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21CB81024();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE48, &qword_21CBA3780);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = v37 - v12;
  MEMORY[0x28223BE20](v13);
  v40 = v37 - v14;
  MEMORY[0x28223BE20](v15);
  v39 = v37 - v16;
  sub_21CB81014();
  v17 = sub_21CB81004();
  v19 = v18;
  v20 = *(v3 + 8);
  v37[2] = v3 + 8;
  v38 = v20;
  v20(v5, v44);
  v49 = v17;
  v50 = v19;
  v37[1] = sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v21 = v45;
  sub_21CB84334();
  v22 = *(v48 + 8);
  v48 += 8;
  v22(v2, v46);
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v7, v21);
  sub_21CB81014();
  v24 = sub_21CB81004();
  v26 = v25;
  v38(v5, v44);
  v49 = v24;
  v50 = v26;
  sub_21CB84DE4();
  sub_21CB829E4();
  v27 = v40;
  v28 = v45;
  sub_21CB84334();
  v22(v2, v46);
  v23(v7, v28);
  v29 = *(v9 + 16);
  v30 = v41;
  v31 = v39;
  v29(v41, v39, v8);
  v32 = v42;
  v29(v42, v27, v8);
  v33 = v43;
  v29(v43, v30, v8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3378, &unk_21CBB7840);
  v29(&v33[*(v34 + 48)], v32, v8);
  v35 = *(v9 + 8);
  v35(v27, v8);
  v35(v31, v8);
  v35(v32, v8);
  return (v35)(v30, v8);
}

uint64_t sub_21C736E68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21C736F9C()
{
  type metadata accessor for PMAccountsState(0);
  sub_21C705E68(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  sub_21CB82684();
  sub_21CB82694();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC348, &qword_21CBA4078);
  type metadata accessor for PMBulkOperationProgress(0);
  type metadata accessor for PMBulkOperationProgressView(0);
  sub_21C6EADEC(&qword_27CDEC350, &qword_27CDEC348, &qword_21CBA4078, MEMORY[0x277CE04B0]);
  sub_21C705E68(&qword_27CDEC358, type metadata accessor for PMBulkOperationProgress, &unk_21CBB3150);
  sub_21C705E68(&qword_27CDEC360, type metadata accessor for PMBulkOperationProgressView, &unk_21CBA40E8);
  sub_21CB847C4();
}

uint64_t sub_21C7371BC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBA79F0);
  swift_getKeyPath(byte_21CBA7A18);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C737244()
{
  type metadata accessor for PMInboundOTPAuthURLModel(0);
  sub_21C737438(&qword_27CDEAE10, type metadata accessor for PMInboundOTPAuthURLModel, &unk_21CBBDA9C);
  sub_21CB82684();
  swift_getKeyPath(asc_21CBBDAF0);
  sub_21CB82694();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5380, &unk_21CBBDBF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB190, &qword_21CBA1380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB198, &qword_21CBA1388);
  sub_21C6EADEC(&qword_27CDF5388, &qword_27CDF5380, &unk_21CBBDBF8, MEMORY[0x277CE04B0]);
  sub_21C6EADEC(&qword_27CDEB1A0, &qword_27CDEB190, &qword_21CBA1380, &unk_21CBBE7F0);
  sub_21C71FA88();
  sub_21CB847C4();
}

uint64_t sub_21C737438(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C737480(uint64_t a1)
{
  v3 = *(type metadata accessor for PMInboundOTPAuthURLContext(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_21CA2015C(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_21C737524@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(asc_21CBBDAF0);
  swift_getKeyPath(asc_21CBBDB18);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C7375AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a2;
  v8 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48F8, &qword_21CBBBC58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_21CB85094();
  swift_getKeyPath(aX_13, v7, v8);
  sub_21CB850B4();

  (*(v3 + 8))(v5, v2);
  v9 = v12;
  v10 = v13;
  v11 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4918, &qword_21CBBBCD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4920, &qword_21CBBBCE0);
  type metadata accessor for PMAppTOTPMigrationView(0);
  sub_21C6EADEC(&qword_27CDF4928, &qword_27CDF4918, &qword_21CBBBCD8, MEMORY[0x277CE04B0]);
  sub_21C6EADEC(&qword_27CDF4930, &qword_27CDF4920, &qword_21CBBBCE0, &unk_21CBBE7F0);
  sub_21C71F850(&qword_27CDF4938, type metadata accessor for PMAppTOTPMigrationView, &unk_21CBA1318);
  sub_21CB847C4();
}

uint64_t sub_21C737804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C737868@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aX_13);
  sub_21C71F850(&qword_27CDEAE18, type metadata accessor for PMHandleInboundTOTPMigrationURLModel, &unk_21CBBBBE0);
  sub_21CB810D4();

  *a2 = *(v3 + 16);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21C737984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5410, &qword_21CBBDF30);
  MEMORY[0x28223BE20](v5);
  v7 = v52 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5418, &qword_21CBBDF38);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = v52 - v8;
  v63 = *v2;
  v64 = *(v2 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5420, &qword_21CBBDF40);
  MEMORY[0x21CF14A20](&v68, v10);
  v11 = v68;
  v12 = swift_allocObject();
  v13 = *(v3 + 48);
  *(v12 + 48) = *(v3 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(v3 + 64);
  v14 = *(v3 + 16);
  *(v12 + 16) = *v3;
  *(v12 + 32) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5428, &qword_21CBBDF48);
  (*(*(v15 - 8) + 16))(v7, a1, v15);
  v16 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5430, &qword_21CBBDF50) + 36)];
  *v16 = v11;
  *(v16 + 1) = sub_21CA25A34;
  *(v16 + 2) = v12;
  v17 = swift_allocObject();
  v18 = *(v3 + 48);
  *(v17 + 48) = *(v3 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v3 + 64);
  v19 = *(v3 + 16);
  *(v17 + 16) = *v3;
  *(v17 + 32) = v19;
  v59 = v5;
  v20 = &v7[*(v5 + 36)];
  *v20 = sub_21C741764;
  v20[1] = v17;
  v20[2] = 0;
  v20[3] = 0;
  v68 = *(v3 + 40);
  sub_21C7380DC(v3, &v63);
  sub_21C7380DC(v3, &v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5438, &qword_21CBBDF58);
  sub_21CB84D54();
  v21 = v63;
  if (v63)
  {
    v22 = sub_21CA22EA0(v63);
    v24 = v23;
  }

  else
  {
    v24 = 0xE100000000000000;
    v22 = 63;
  }

  *&v68 = v22;
  *(&v68 + 1) = v24;
  sub_21CB858B4();
  sub_21C7380DC(v3, &v63);
  v25 = sub_21CB858A4();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  v28 = *(v3 + 48);
  *(v26 + 64) = *(v3 + 32);
  *(v26 + 80) = v28;
  *(v26 + 96) = *(v3 + 64);
  v29 = *(v3 + 16);
  *(v26 + 32) = *v3;
  *(v26 + 48) = v29;
  sub_21C7380DC(v3, &v63);
  v30 = sub_21CB858A4();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v27;
  v32 = *(v3 + 48);
  *(v31 + 64) = *(v3 + 32);
  *(v31 + 80) = v32;
  *(v31 + 96) = *(v3 + 64);
  v33 = *(v3 + 16);
  *(v31 + 32) = *v3;
  *(v31 + 48) = v33;
  sub_21CB84F64();
  v34 = sub_21C71F28C();
  v54 = sub_21C71F3FC();
  sub_21CB84764();

  sub_21C6EA794(v7, &qword_27CDF5410, &qword_21CBBDF30);
  v68 = *(v3 + 56);
  v63 = *(v3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5468, &qword_21CBBDF68);
  sub_21CB84D54();
  v35 = v61;
  v55 = v9;
  if (v61)
  {
    v36 = sub_21CA23068(v61);
    v38 = v37;
  }

  else
  {
    v38 = 0xE100000000000000;
    v36 = 63;
  }

  v52[1] = v38;
  v61 = v36;
  v62 = v38;
  sub_21C7380DC(v3, &v63);
  v39 = sub_21CB858A4();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v27;
  v41 = *(v3 + 48);
  *(v40 + 64) = *(v3 + 32);
  *(v40 + 80) = v41;
  *(v40 + 96) = *(v3 + 64);
  v42 = *(v3 + 16);
  *(v40 + 32) = *v3;
  *(v40 + 48) = v42;
  sub_21C7380DC(v3, &v63);
  v43 = sub_21CB858A4();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v27;
  v45 = *(v3 + 48);
  *(v44 + 64) = *(v3 + 32);
  *(v44 + 80) = v45;
  *(v44 + 96) = *(v3 + 64);
  v46 = *(v3 + 16);
  *(v44 + 32) = *v3;
  *(v44 + 48) = v46;
  sub_21CB84F64();
  v53 = v64;
  v63 = v68;
  v47 = sub_21CB84D54();
  v52[0] = v52;
  v48 = v60;
  MEMORY[0x28223BE20](v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  *&v63 = v59;
  *(&v63 + 1) = MEMORY[0x277D837D0];
  v64 = MEMORY[0x277CE1428];
  v65 = v34;
  v66 = v54;
  v67 = MEMORY[0x277CE1410];
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
  v49 = v58;
  v50 = v55;
  sub_21CB84734();

  return (*(v56 + 8))(v50, v49);
}

void sub_21C738120(BOOL *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5438, &qword_21CBBDF58);
  sub_21CB84D54();
  if (v3)
  {
  }

  *a2 = v3 != 0;
}

void sub_21C738194(BOOL *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5468, &qword_21CBBDF68);
  sub_21CB84D54();
  if (v3)
  {
  }

  *a2 = v3 != 0;
}

uint64_t sub_21C738290(void *a1, id a2)
{
  v4 = [a2 shortcutItem];
  v5 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_shortcutItemForInitialLaunch);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_shortcutItemForInitialLaunch) = v4;

  v6 = [a1 delegate];
  if (v6)
  {
    v7 = swift_dynamicCastObjCProtocolConditional();
    v8 = v7;
    if (v7)
    {
      if ([v7 respondsToSelector_])
      {
        v6 = [v8 window];
        goto LABEL_8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v6 = 0;
  }

LABEL_8:
  v9 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow) = v6;

  sub_21C73839C(a1);
  return swift_unknownObjectRelease();
}

void sub_21C73839C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate__lockPolicyEnforcer + 8);

  v5 = [a1 systemProtectionManager];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isUserAuthenticationEnabled];

    *(v4 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection) = v7;
    if (v7)
    {
      swift_getKeyPath(byte_21CBD0838);
      swift_getKeyPath(byte_21CBD0860);
      LOBYTE(v23) = 1;

      sub_21CB81DC4();
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection) = 0;
  }

  swift_getKeyPath(byte_21CBD0838);
  swift_getKeyPath(byte_21CBD0860);
  LOBYTE(v23) = 0;

  sub_21CB81DC4();
  v8 = 1;
LABEL_6:
  sub_21CACC6CC(v8, 0);

  KeyPath = swift_getKeyPath(byte_21CBD0740);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C704E4C(KeyPath, v23);

  type metadata accessor for PMSecureWindowLockPolicyEnforcer(0);
  sub_21C706AA8();
  v10 = sub_21CB82674();
  v12 = v11;

  v24 = v10;
  v25 = v12;
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAE28, &unk_21CBD0880));
  v14 = sub_21CB833B4();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x277D75DA0]);
    v18 = a1;
    v19 = [v17 initWithWindowScene_];
    [v19 setRootViewController_];
    [v19 setHidden_];
    v20 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow);
    *(v2 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow) = v19;
    v21 = v19;

    swift_getKeyPath(byte_21CBD0838);
    swift_getKeyPath(byte_21CBD0860);

    sub_21CB81DB4();

    sub_21C738B28((v24 & 1) == 0);
    v22 = [objc_opt_self() defaultCenter];
    if (qword_27CDEA400 != -1)
    {
      swift_once();
    }

    [v22 addObserver:v2 selector:v24 name:v25 object:?];
  }

  else
  {
    v22 = v14;
  }
}

unint64_t sub_21C73879C()
{
  result = qword_27CDF5CC8;
  if (!qword_27CDF5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5CC8);
  }

  return result;
}

uint64_t type metadata accessor for PMPasswordsIcon(uint64_t a1)
{
  result = qword_27CDEE3B0;
  if (!qword_27CDEE3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C73883C(uint64_t a1)
{
  sub_21C6EDA64();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_21C735A14(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21C738900()
{
  result = qword_27CDF5E60;
  if (!qword_27CDF5E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5DA8, &qword_21CBBFB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4E8, &unk_21CBA6BB0);
    sub_21C74DDEC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF5E68, &qword_27CDF5E70, &unk_21CBBFBF0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E60);
  }

  return result;
}

unint64_t sub_21C738A18()
{
  result = qword_27CDEBA98;
  if (!qword_27CDEBA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBAA0, &unk_21CBA2B50);
    sub_21C738AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBA98);
  }

  return result;
}

unint64_t sub_21C738AA4()
{
  result = qword_27CDEBAA8;
  if (!qword_27CDEBAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBAB0, &unk_21CBA9B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBAA8);
  }

  return result;
}

id sub_21C738B28(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow;
    v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow);
    if (v3)
    {
      v13[0] = 0x3FF0000000000000;
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = 0x3FF0000000000000;
      v13[4] = 0;
      v13[5] = 0;
      [v3 setTransform_];
      v4 = *(v1 + v2);
      if (v4)
      {
        [v4 setAlpha_];
      }
    }

    v5 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow;
    v6 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow);
    if (v6)
    {
      [v6 setAlpha_];
      v7 = *(v1 + v5);
      if (v7)
      {
        [v7 setAccessibilityElementsHidden_];
      }
    }

    return [*(v1 + v2) makeKeyWindow];
  }

  else
  {
    v9 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow;
    v10 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow);
    if (v10)
    {
      [v10 setAlpha_];
    }

    v11 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow);
    if (v11)
    {
      [v11 setAlpha_];
    }

    v12 = *(v1 + v9);
    if (v12)
    {
      [v12 setAccessibilityElementsHidden_];
      v12 = *(v1 + v9);
    }

    return [v12 makeKeyWindow];
  }
}

uint64_t sub_21C738C6C()
{
  result = sub_21CB85584();
  qword_27CE185B8 = result;
  return result;
}

uint64_t PMAppCommands.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFE8, &qword_21CBAB9B0);
  MEMORY[0x28223BE20](v83);
  v86 = &v72 - v3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFF0, &qword_21CBAB9B8);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v99 = &v72 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFF8, &qword_21CBAB9C0);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v97 = &v72 - v5;
  v98 = sub_21CB82984();
  v80 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v105 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF000, &qword_21CBAB9C8);
  v79 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v104 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF008, &qword_21CBAB9D0);
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x28223BE20](v8);
  v103 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF010, &qword_21CBAB9D8);
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x28223BE20](v10);
  v102 = &v72 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF018, &qword_21CBAB9E0);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = &v72 - v12;
  v13 = type metadata accessor for PMWiFiNetwork(0);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF020, &qword_21CBAB9E8);
  MEMORY[0x28223BE20](v17 - 8);
  v100 = &v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF028, &qword_21CBAB9F0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v74 = &v72 - v21;
  v22 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF030, &qword_21CBAB9F8);
  MEMORY[0x28223BE20](v28 - 8);
  v101 = &v72 - v29;
  v30 = sub_21CB83694();
  MEMORY[0x28223BE20](v30 - 8);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF038, &qword_21CBABA00);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v32 = &v72 - v31;
  sub_21CB83664();
  v106 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF040, &qword_21CBABA08);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF048, &qword_21CBABA10);
  v34 = sub_21C89EF80();
  v107 = v33;
  v108 = v34;
  swift_getOpaqueTypeConformance2();
  v89 = v32;
  sub_21CB821A4();
  type metadata accessor for PMAppCommands(0);
  swift_getKeyPath(byte_21CBABA28);
  sub_21CB81DB4();

  LODWORD(v88) = v107;
  if (*(v1 + 16))
  {
    swift_getKeyPath(byte_21CBABB10);
    swift_getKeyPath(byte_21CBABB38);

    sub_21CB81DB4();

    sub_21C73A8E8(v24, v27, type metadata accessor for PMAccount);
    if (v88)
    {
      v35 = sub_21CB83644();
      v72 = &v72;
      MEMORY[0x28223BE20](v35);
      *(&v72 - 2) = v27;
      *(&v72 - 1) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF138, &qword_21CBABB58);
      sub_21C89F170(&qword_27CDEF140, &qword_27CDEF138, &qword_21CBABB58, sub_21C89F3A8);
      v36 = v74;
      sub_21CB821A4();
      v37 = v101;
      (*(v20 + 32))(v101, v36, v19);
      (*(v20 + 56))(v37, 0, 1, v19);
      sub_21C8A0514(v27, type metadata accessor for PMAccount);
      goto LABEL_6;
    }

    sub_21C8A0514(v27, type metadata accessor for PMAccount);
  }

  (*(v20 + 56))(v101, 1, 1, v19);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  sub_21CB821D4();
  v38 = v107;
  v39 = v100;
  if (v108 != 1)
  {
    j__swift_release(v107);
    goto LABEL_12;
  }

  if (!v107)
  {
LABEL_12:
    (*(v77 + 56))(v39, 1, 1, v78);
    goto LABEL_13;
  }

  swift_getKeyPath(byte_21CBABAD0);
  v107 = v38;
  sub_21C6F0700(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB810D4();

  v40 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  v41 = v38 + v40;
  v42 = v75;
  sub_21C73A7B0(v41, v75, type metadata accessor for PMWiFiNetwork);
  j__swift_release(v38);
  v43 = v76;
  sub_21C73A8E8(v42, v76, type metadata accessor for PMWiFiNetwork);
  if ((v88 & 1) == 0)
  {
    sub_21C8A0514(v43, type metadata accessor for PMWiFiNetwork);
    goto LABEL_12;
  }

  v44 = sub_21CB83644();
  MEMORY[0x28223BE20](v44);
  *(&v72 - 2) = v43;
  *(&v72 - 1) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF108, &qword_21CBABAF8);
  sub_21C89F170(&qword_27CDEF110, &qword_27CDEF108, &qword_21CBABAF8, sub_21C89F2E4);
  v45 = v73;
  sub_21CB821A4();
  v46 = v77;
  v47 = v78;
  (*(v77 + 32))(v39, v45, v78);
  (*(v46 + 56))(v39, 0, 1, v47);
  sub_21C8A0514(v43, type metadata accessor for PMWiFiNetwork);
LABEL_13:
  v48 = sub_21CB83644();
  MEMORY[0x28223BE20](v48);
  *(&v72 - 2) = v2;
  *(&v72 - 8) = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF068, &qword_21CBABA78);
  v49 = MEMORY[0x277CE14C0];
  sub_21C6EADEC(&qword_27CDEF070, &qword_27CDEF068, &qword_21CBABA78, MEMORY[0x277CE14C0]);
  sub_21CB821A4();
  v50 = sub_21CB83674();
  MEMORY[0x28223BE20](v50);
  *(&v72 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF078, &qword_21CBABA80);
  sub_21C89F170(&qword_27CDEF080, &qword_27CDEF078, &qword_21CBABA80, sub_21C89F004);
  sub_21CB821C4();
  v51 = sub_21CB83674();
  MEMORY[0x28223BE20](v51);
  *(&v72 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0A8, &qword_21CBABAA0);
  sub_21C89F0C0();
  sub_21CB821A4();
  sub_21CB82974();
  v52 = sub_21CB83684();
  MEMORY[0x28223BE20](v52);
  *(&v72 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0E8, &qword_21CBABAC0);
  sub_21C6EADEC(&qword_27CDEF0F0, &qword_27CDEF0E8, &qword_21CBABAC0, v49);
  sub_21CB821B4();
  v53 = sub_21CB83654();
  MEMORY[0x28223BE20](v53);
  *(&v72 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0F8, &qword_21CBABAC8);
  sub_21C6EADEC(&qword_27CDEF100, &qword_27CDEF0F8, &qword_21CBABAC8, v49);
  sub_21CB821A4();
  v54 = v83[12];
  v55 = v83[16];
  v56 = v83[20];
  v57 = v83[24];
  v58 = v83[28];
  v59 = v83[32];
  v60 = v83[36];
  v88 = v83[40];
  v61 = v86;
  (*(v90 + 16))(v86, v89, v91);
  sub_21C6EDBAC(v101, &v61[v54], &qword_27CDEF030, &qword_21CBAB9F8);
  sub_21C6EDBAC(v100, &v61[v55], &qword_27CDEF020, &qword_21CBAB9E8);
  (*(v92 + 16))(&v61[v56], v102, v93);
  (*(v94 + 16))(&v61[v57], v103, v95);
  v62 = v79;
  (*(v79 + 16))(&v61[v58], v104, v96);
  v63 = v80;
  (*(v80 + 16))(&v61[v59], v105, v98);
  v64 = v81;
  v65 = &v61[v60];
  v66 = v97;
  v67 = v82;
  (*(v81 + 16))(v65, v97, v82);
  v68 = v84;
  v69 = v99;
  v70 = v85;
  (*(v84 + 16))(&v61[v88], v99, v85);
  sub_21CB83384();
  (*(v68 + 8))(v69, v70);
  (*(v64 + 8))(v66, v67);
  (*(v63 + 8))(v105, v98);
  (*(v62 + 8))(v104, v96);
  (*(v94 + 8))(v103, v95);
  (*(v92 + 8))(v102, v93);
  sub_21C6EA794(v100, &qword_27CDEF020, &qword_21CBAB9E8);
  sub_21C6EA794(v101, &qword_27CDEF030, &qword_21CBAB9F8);
  return (*(v90 + 8))(v89, v91);
}

unint64_t sub_21C739F10()
{
  result = qword_27CDEF058;
  if (!qword_27CDEF058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF060, &unk_21CBABA18);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF058);
  }

  return result;
}

uint64_t sub_21C739FC8(uint64_t a1)
{
  v2 = sub_21CB82444();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF048, &qword_21CBABA10);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_21C73A150(a1, &v10 - v7);
  sub_21CB82424();
  sub_21CB82574();
  sub_21C89EF80();
  sub_21CB84324();
  (*(v3 + 8))(v5, v2);
  return sub_21C6EA794(v8, &qword_27CDEF048, &qword_21CBABA10);
}

uint64_t sub_21C73A150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF378, &qword_21CBAC088);
  MEMORY[0x28223BE20](v32);
  v33 = &v29 - v3;
  v4 = type metadata accessor for PMAppCommands(0);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v31 = *(v10 - 8);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v30 = &v29 - v12;
  v13 = a1;
  swift_getKeyPath(byte_21CBABA28, v11);
  sub_21CB81DB4();

  if (v35)
  {
    sub_21CB81014();
    v14 = sub_21CB81004();
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    sub_21C73A7B0(v13, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
    v17 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v18 = swift_allocObject();
    v19 = sub_21C73A8E8(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PMAppCommands);
    v35 = v14;
    v36 = v16;
    MEMORY[0x28223BE20](v19);
    *(&v29 - 4) = &v35;
    *(&v29 - 3) = 1801678700;
    *(&v29 - 2) = 0xE400000000000000;
  }

  else
  {
    sub_21CB81014();
    v21 = sub_21CB81004();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    sub_21C73A7B0(v13, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
    v24 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v25 = swift_allocObject();
    v26 = sub_21C73A8E8(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PMAppCommands);
    v35 = v21;
    v36 = v23;
    MEMORY[0x28223BE20](v26);
    *(&v29 - 4) = &v35;
    *(&v29 - 3) = 0x65706F2E6B636F6CLL;
    *(&v29 - 2) = 0xE90000000000006ELL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v20 = v30;
  sub_21CB84DA4();

  v27 = v31;
  (*(v31 + 16))(v33, v20, v10);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  sub_21CB83494();
  return (*(v27 + 8))(v20, v10);
}

uint64_t sub_21C73A7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C73A818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C73A880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C73A8E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C73A960(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21C71F3FC();

  return sub_21CB84CB4();
}

uint64_t sub_21C73A9E0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2A0, &qword_21CBABF30);
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = &v82 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2A8, &qword_21CBABF38);
  MEMORY[0x28223BE20](v96);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = &v82 - v11;
  MEMORY[0x28223BE20](v12);
  v100 = &v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2B0, &qword_21CBABF40);
  v86 = *(v14 - 8);
  v87 = v14;
  MEMORY[0x28223BE20](v14);
  v85 = &v82 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2B8, &qword_21CBABF48);
  v91 = *(v16 - 8);
  v92 = v16;
  MEMORY[0x28223BE20](v16);
  v84 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v83 = &v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2C0, &qword_21CBABF50);
  MEMORY[0x28223BE20](v20 - 8);
  v95 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v104 = &v82 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2C8, &qword_21CBABF58);
  v88 = *(v24 - 8);
  v89 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v82 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2D0, &qword_21CBABF60);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v82 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2D8, &qword_21CBABF68);
  MEMORY[0x28223BE20](v34 - 8);
  v93 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v39 = *(a1 + 16);
  v102 = a3;
  v103 = &v82 - v37;
  v101 = v9;
  v90 = a2;
  if (v39 && (a2 & 1) != 0)
  {
    MEMORY[0x28223BE20](&v82 - v37);
    *(&v82 - 2) = v39;
    *(&v82 - 1) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF310, &qword_21CBABFB0);
    sub_21C8A035C();
    sub_21CB85054();
    type metadata accessor for PMAppCommands(0);
    v82 = a1;
    sub_21CB81DB4();

    v40 = v105;
    if (v105)
    {
    }

    v42 = swift_allocObject();
    *(v42 + 16) = v40 != 0;
    (*(v88 + 32))(v30, v26, v89);
    v43 = &v30[*(v27 + 36)];
    *v43 = KeyPath;
    v43[1] = sub_21C87E800;
    v43[2] = v42;
    sub_21C716934(v30, v33, &qword_27CDEF2D0, &qword_21CBABF60);
    v44 = v103;
    sub_21C716934(v33, v103, &qword_27CDEF2D0, &qword_21CBABF60);
    (*(v28 + 56))(v44, 0, 1, v27);
    v45 = v94;
    a1 = v82;
  }

  else
  {
    (*(v28 + 56))(v38);
    v45 = v94;
  }

  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  sub_21CB821D4();
  v46 = v105;
  v47 = v90;
  if (v106 != 1)
  {
    v65 = v105;
LABEL_18:
    j__swift_release(v65);
    goto LABEL_19;
  }

  if (!v105)
  {
LABEL_19:
    v63 = 1;
    v64 = v97;
    v62 = v92;
    goto LABEL_20;
  }

  v105 = v46;
  sub_21C6F0700(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
  sub_21CB810D4();

  v48 = *(v46 + 96);

  j__swift_release(v46);
  sub_21CB821D4();
  v49 = v105;
  if ((v106 & 1) == 0)
  {

    v65 = v49;
    goto LABEL_18;
  }

  v50 = v92;
  if (v105 && (v51 = sub_21C900CCC(v48), v52 = j__swift_release(v49), v51 != 2) && (v47 & 1) != 0)
  {
    MEMORY[0x28223BE20](v52);
    *(&v82 - 32) = v51 & 1;
    *(&v82 - 3) = a1;
    *(&v82 - 2) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2F0, &qword_21CBABFA0);
    sub_21C8A0260();
    v53 = v85;
    sub_21CB85054();

    sub_21CB81DB4();

    v54 = v105;
    if (v105)
    {
    }

    v55 = v54 != 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    v58 = v84;
    (*(v86 + 32))(v84, v53, v87);
    v59 = &v58[*(v50 + 36)];
    *v59 = v56;
    v59[1] = sub_21C87E800;
    v59[2] = v57;
    v60 = v58;
    v61 = v83;
    sub_21C716934(v60, v83, &qword_27CDEF2B8, &qword_21CBABF48);
    sub_21C716934(v61, v104, &qword_27CDEF2B8, &qword_21CBABF48);
    v62 = v50;
    v63 = 0;
    v64 = v97;
  }

  else
  {

    v63 = 1;
    v64 = v97;
    v62 = v50;
  }

LABEL_20:
  v66 = (*(v91 + 56))(v104, v63, 1, v62);
  MEMORY[0x28223BE20](v66);
  *(&v82 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF290, &qword_21CBABF20);
  sub_21C73B6AC();
  sub_21CB85054();
  sub_21CB81DB4();

  v67 = v105;
  if (v105)
  {
  }

  v68 = v67 != 0;
  v70 = swift_allocObject();
  *(v70 + 16) = v68;
  (*(v98 + 32))(v45, v64, v99);
  v71 = &v45[*(v96 + 36)];
  *v71 = v69;
  v71[1] = sub_21C87E800;
  v71[2] = v70;
  v72 = v45;
  v73 = v100;
  sub_21C716934(v72, v100, &qword_27CDEF2A8, &qword_21CBABF38);
  v74 = v103;
  v75 = v93;
  sub_21C6EDBAC(v103, v93, &qword_27CDEF2D8, &qword_21CBABF68);
  v76 = v104;
  v77 = v95;
  sub_21C6EDBAC(v104, v95, &qword_27CDEF2C0, &qword_21CBABF50);
  v78 = v101;
  sub_21C6EDBAC(v73, v101, &qword_27CDEF2A8, &qword_21CBABF38);
  v79 = v102;
  sub_21C6EDBAC(v75, v102, &qword_27CDEF2D8, &qword_21CBABF68);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF2E8, &qword_21CBABF70);
  sub_21C6EDBAC(v77, v79 + *(v80 + 48), &qword_27CDEF2C0, &qword_21CBABF50);
  sub_21C6EDBAC(v78, v79 + *(v80 + 64), &qword_27CDEF2A8, &qword_21CBABF38);
  sub_21C6EA794(v73, &qword_27CDEF2A8, &qword_21CBABF38);
  sub_21C6EA794(v76, &qword_27CDEF2C0, &qword_21CBABF50);
  sub_21C6EA794(v74, &qword_27CDEF2D8, &qword_21CBABF68);
  sub_21C6EA794(v78, &qword_27CDEF2A8, &qword_21CBABF38);
  sub_21C6EA794(v77, &qword_27CDEF2C0, &qword_21CBABF50);
  return sub_21C6EA794(v75, &qword_27CDEF2D8, &qword_21CBABF68);
}

unint64_t sub_21C73B6AC()
{
  result = qword_27CDEF2E0;
  if (!qword_27CDEF2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF290, &qword_21CBABF20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF2E0);
  }

  return result;
}

uint64_t sub_21C73B7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v42 = a2;
  v41 = sub_21CB82444();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PMAppCommands(0);
  v33 = *(v31 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF288, &qword_21CBABF18);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v32 = &v31 - v15;
  sub_21CB81014();
  sub_21CB81014();
  v16 = sub_21CB80FF4();
  v18 = v17;
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_21C73A7B0(v34, &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v20 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v21 = swift_allocObject();
  sub_21C73A8E8(&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PMAppCommands);
  v46 = v16;
  v47 = v18;
  v43 = &v46;
  v44 = 0x697966696E67616DLL;
  v45 = 0xEF7373616C67676ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v22 = v32;
  sub_21CB84DA4();

  v23 = v37;
  sub_21CB82424();
  sub_21CB82574();
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  v24 = v35;
  sub_21CB84324();
  (*(v39 + 8))(v23, v41);
  (*(v36 + 8))(v14, v24);
  if (sub_21C73BDF0())
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  if (v47 != 1)
  {
    j__swift_release(v46);
    goto LABEL_6;
  }

  if (!v46)
  {
LABEL_6:
    v25 = 1;
    goto LABEL_7;
  }

  j__swift_release(v46);
  v25 = 0;
LABEL_7:
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v28 = v42;
  (*(v38 + 32))(v42, v22, v40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF290, &qword_21CBABF20);
  v30 = (v28 + *(result + 36));
  *v30 = KeyPath;
  v30[1] = sub_21C87E800;
  v30[2] = v27;
  return result;
}

uint64_t sub_21C73BDF0()
{
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  if (v4 == 1)
  {
    if (v3)
    {
      j__swift_release(v3);
      swift_getKeyPath(byte_21CBABA28);
      sub_21CB81DB4();

      v0 = v2 ^ 1;
    }

    else
    {
      v0 = 1;
      j__swift_release(0);
    }
  }

  else
  {
    j__swift_release(v3);
    v0 = 1;
  }

  return v0 & 1;
}

uint64_t sub_21C73BEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF090, &qword_21CBABA88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-v6];
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0A0, &unk_21CBABA90);
  sub_21C6EADEC(&qword_27CDEF098, &qword_27CDEF0A0, &unk_21CBABA90, MEMORY[0x277CE14C0]);
  sub_21CB85054();
  type metadata accessor for PMAppCommands(0);
  sub_21CB81DB4();

  v8 = v16;
  if (v16)
  {
  }

  v9 = v8 != 0;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF078, &qword_21CBABA80);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_21C87E800;
  v13[2] = v11;
  return result;
}

uint64_t sub_21C73C11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v72 = sub_21CB81024();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF268, &unk_21CBABDE0);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = v67 - v11;
  v12 = sub_21CB82444();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAppCommands(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF288, &qword_21CBABF18);
  v78 = *(v22 - 8);
  v79 = v22;
  MEMORY[0x28223BE20](v22);
  v77 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v86 = v67 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF290, &qword_21CBABF20);
  MEMORY[0x28223BE20](v26 - 8);
  v87 = v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v85 = v67 - v29;
  sub_21C73CBD8(v67 - v29);
  v74 = a1;
  sub_21C73A7B0(a1, v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v30 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v67[2] = v17;
  v31 = swift_allocObject();
  v68 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C73A8E8(v68, v31 + v30, type metadata accessor for PMAppCommands);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v33 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v67[1] = v32;
  v67[0] = v33;
  sub_21CB84DA4();
  sub_21CB82424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA15B0;
  v35 = sub_21CB82554();
  *(inited + 32) = v35;
  v36 = sub_21CB82574();
  *(inited + 40) = v36;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v35)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v36)
  {
    sub_21CB82594();
  }

  v37 = v82;
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  sub_21CB84324();
  (*(v75 + 8))(v14, v76);
  (*(v19 + 8))(v21, v18);
  if ([objc_opt_self() isOngoingCredentialSharingEnabled])
  {
    v38 = v69;
    sub_21CB81014();
    v39 = v70;
    sub_21CB81014();
    v40 = sub_21CB80FF4();
    v42 = v41;
    v43 = *(v71 + 8);
    v44 = v39;
    v45 = v72;
    v43(v44, v72);
    v43(v38, v45);
    v46 = v68;
    sub_21C73A7B0(v74, v68, type metadata accessor for PMAppCommands);
    v47 = swift_allocObject();
    v48 = sub_21C73A8E8(v46, v47 + v30, type metadata accessor for PMAppCommands);
    v88[0] = v40;
    v88[1] = v42;
    MEMORY[0x28223BE20](v48);
    v67[-4] = v88;
    v67[-3] = 0x322E6E6F73726570;
    v67[-2] = 0xE800000000000000;
    v49 = v73;
    sub_21CB84DA4();

    LOBYTE(v40) = sub_21C73BDF0();
    v51 = swift_allocObject();
    *(v51 + 16) = v40 & 1;
    v52 = v81;
    v53 = (v49 + *(v81 + 36));
    *v53 = KeyPath;
    v53[1] = sub_21C87E800;
    v53[2] = v51;
    sub_21C716934(v49, v37, &qword_27CDEEBA0, &qword_21CBABC80);
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v52 = v81;
  }

  (*(v80 + 56))(v37, v54, 1, v52);
  v55 = v87;
  sub_21C6EDBAC(v85, v87, &qword_27CDEF290, &qword_21CBABF20);
  v57 = v77;
  v56 = v78;
  v58 = *(v78 + 16);
  v59 = v86;
  v60 = v37;
  v61 = v79;
  v58(v77, v86, v79);
  v62 = v83;
  sub_21C6EDBAC(v60, v83, &qword_27CDEF268, &unk_21CBABDE0);
  v63 = v84;
  sub_21C6EDBAC(v55, v84, &qword_27CDEF290, &qword_21CBABF20);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF298, &qword_21CBABF28);
  v58((v63 + *(v64 + 48)), v57, v61);
  sub_21C6EDBAC(v62, v63 + *(v64 + 64), &qword_27CDEF268, &unk_21CBABDE0);
  sub_21C6EA794(v60, &qword_27CDEF268, &unk_21CBABDE0);
  v65 = *(v56 + 8);
  v65(v59, v61);
  sub_21C6EA794(v85, &qword_27CDEF290, &qword_21CBABF20);
  sub_21C6EA794(v62, &qword_27CDEF268, &unk_21CBABDE0);
  v65(v57, v61);
  return sub_21C6EA794(v87, &qword_27CDEF290, &qword_21CBABF20);
}

uint64_t sub_21C73CBD8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_21CB82444();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PMAppCommands(0);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF288, &qword_21CBABF18);
  v40 = *(v16 - 8);
  v41 = v16;
  MEMORY[0x28223BE20](v16);
  v34 = &v33 - v17;
  sub_21CB81014();
  sub_21CB81014();
  v18 = sub_21CB80FF4();
  v20 = v19;
  v21 = *(v6 + 8);
  v21(v8, v5);
  v21(v11, v5);
  sub_21C73A7B0(v36, &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v22 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v23 = swift_allocObject();
  sub_21C73A8E8(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for PMAppCommands);
  v48[0] = v18;
  v48[1] = v20;
  v45 = v48;
  v46 = 1937075312;
  v47 = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();
  v24 = v34;

  v25 = v39;
  sub_21CB82424();
  sub_21CB82574();
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  v26 = v37;
  sub_21CB84324();
  (*(v42 + 8))(v25, v43);
  (*(v38 + 8))(v15, v26);
  if (sub_21C73BDF0())
  {
    v27 = 1;
  }

  else
  {
    v27 = [objc_opt_self() shouldAllowAddingNewPasswords] ^ 1;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  v30 = v44;
  (*(v40 + 32))(v44, v24, v41);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF290, &qword_21CBABF20);
  v32 = (v30 + *(result + 36));
  *v32 = KeyPath;
  v32[1] = sub_21C87E800;
  v32[2] = v29;
  return result;
}

uint64_t sub_21C73D1B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v17[0] = v9;
  v17[1] = v11;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_21C73D398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C73D3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0D0, &qword_21CBABAB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0C0, &qword_21CBABAA8);
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for PMAppCommands(0);
  if (*(a1 + *(v14 + 64)) == 1)
  {
    v23 = v5;
    v24 = v4;
    v25 = a2;
    v22 = &v22;
    MEMORY[0x28223BE20](v14);
    *(&v22 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0E0, &qword_21CBABAB8);
    sub_21C6EADEC(&qword_27CDEF0D8, &qword_27CDEF0E0, &qword_21CBABAB8, MEMORY[0x277CE14C0]);
    sub_21CB85054();
    sub_21CB81DB4();

    v15 = v27;
    if (v27)
    {
    }

    v17 = swift_allocObject();
    *(v17 + 16) = v15 != 0;
    (*(v23 + 32))(v10, v7, v24);
    v18 = &v10[*(v8 + 36)];
    *v18 = KeyPath;
    v18[1] = sub_21C87E800;
    v18[2] = v17;
    sub_21C716934(v10, v13, &qword_27CDEF0C0, &qword_21CBABAA8);
    v19 = v25;
    sub_21C716934(v13, v25, &qword_27CDEF0C0, &qword_21CBABAA8);
    return (*(v26 + 56))(v19, 0, 1, v8);
  }

  else
  {
    v21 = *(v26 + 56);

    return v21(a2, 1, 1, v8);
  }
}

uint64_t sub_21C73D79C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PMAppCommands(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF170, &qword_21CBABBC8);
  sub_21CB821D4();
  if (v30 != 1)
  {
    j__swift_release(v29);
    goto LABEL_8;
  }

  if (!v29)
  {
LABEL_8:
    v22 = 0;
    KeyPath = 0;
    v20 = 0;
    v21 = 0;
    v24 = 0;
    v18 = 0;
    v19 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  sub_21C6F0700(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v2 = sub_21C884770(v1);

  j__swift_release(v29);
  if (*(v2 + 16))
  {
    v3 = swift_getKeyPath(byte_21CBAB920);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    v24 = v2;
    sub_21CB86544();
    sub_21C704E4C(v3, v29);

    type metadata accessor for PMSecureWindowLockPolicyEnforcer(0);
    sub_21C6F0700(&qword_27CDFAD10, type metadata accessor for PMSecureWindowLockPolicyEnforcer, &protocol conformance descriptor for PMSecureWindowLockPolicyEnforcer);
    v4 = sub_21CB82674();
    v20 = v5;
    v21 = v4;

    v6 = sub_21C89D7EC();
    v18 = swift_allocObject();
    *(v18 + 16) = v6 & 1;
    v7 = sub_21C87E800;
  }

  else
  {

    v22 = 0;
    KeyPath = 0;
    v20 = 0;
    v21 = 0;
    v24 = 0;
    v18 = 0;
    v19 = 0;
    v7 = 0;
  }

LABEL_9:
  v8 = swift_getKeyPath(byte_21CBAB920);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C704E4C(v8, v29);

  type metadata accessor for PMSecureWindowLockPolicyEnforcer(0);
  sub_21C6F0700(&qword_27CDFAD10, type metadata accessor for PMSecureWindowLockPolicyEnforcer, &protocol conformance descriptor for PMSecureWindowLockPolicyEnforcer);
  v9 = sub_21CB82674();
  v11 = v10;

  *&v25 = KeyPath;
  *(&v25 + 1) = v22;
  *&v26 = v21;
  *(&v26 + 1) = v20;
  *&v27 = v24;
  *(&v27 + 1) = v19;
  *&v28 = v7;
  *(&v28 + 1) = v18;
  v12 = v26;
  *a1 = v25;
  *(a1 + 16) = v12;
  v13 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v13;
  *(a1 + 64) = v16;
  *(a1 + 72) = v15;
  *(a1 + 80) = v9;
  *(a1 + 88) = v11;
  *(a1 + 96) = 0;
  sub_21C6EDBAC(&v25, &v29, &qword_27CDEF280, &qword_21CBABEA0);

  v29 = KeyPath;
  v30 = v22;
  v31 = v21;
  v32 = v20;
  v33 = v24;
  v34 = v19;
  v35 = v7;
  v36 = v18;
  return sub_21C6EA794(&v29, &qword_27CDEF280, &qword_21CBABEA0);
}

uint64_t sub_21C73DBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF200, &qword_21CBABCF8);
  v93 = *(v3 - 8);
  v94 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = &v75 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF208, &qword_21CBABD00);
  MEMORY[0x28223BE20](v91);
  v96 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v75 - v7;
  MEMORY[0x28223BE20](v8);
  v95 = &v75 - v9;
  v78 = sub_21CB81024();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF210, &qword_21CBABD08);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF218, &qword_21CBABD10);
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x28223BE20](v12);
  v80 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF220, &qword_21CBABD18);
  MEMORY[0x28223BE20](v16 - 8);
  v89 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v88 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF228, &qword_21CBABD20);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF230, &qword_21CBABD28);
  MEMORY[0x28223BE20](v24);
  v87 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v75 - v27;
  MEMORY[0x28223BE20](v29);
  v98 = &v75 - v30;
  v99 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF238, &qword_21CBABD30);
  sub_21C6EADEC(&qword_27CDEF240, &qword_27CDEF238, &qword_21CBABD30, MEMORY[0x277CE14C0]);
  sub_21CB85054();
  v31 = *(a1 + *(type metadata accessor for PMAppCommands(0) + 52) + 8);
  v84 = v31;
  sub_21CB81DB4();

  v32 = v100;
  if (v100)
  {
  }

  v33 = v32 != 0;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  (*(v21 + 32))(v28, v23, v20);
  v36 = &v28[*(v24 + 36)];
  *v36 = KeyPath;
  v36[1] = sub_21C87E800;
  v36[2] = v35;
  sub_21C716934(v28, v98, &qword_27CDEF230, &qword_21CBABD28);
  swift_getKeyPath(byte_21CBABA28);
  sub_21CB81DB4();

  if (v100 != 1)
  {
    v57 = 1;
    v58 = v92;
    v38 = v88;
LABEL_10:
    v53 = v86;
    goto LABEL_11;
  }

  sub_21CB81DB4();

  v37 = *(v100 + 16);

  v38 = v88;
  if (!v37)
  {
    swift_getKeyPath(byte_21CBABD90);
    swift_getKeyPath(byte_21CBABDB8);
    sub_21CB81DB4();

    v39 = *(v100 + 16);

    if (!v39)
    {
      v57 = 1;
      v58 = v92;
      goto LABEL_10;
    }
  }

  v40 = v76;
  sub_21CB81014();
  v41 = sub_21CB81004();
  v43 = v42;
  (*(v77 + 8))(v40, v78);
  v100 = v41;
  v101 = v43;
  sub_21C71F3FC();
  v100 = sub_21CB84054();
  v101 = v44;
  v102 = v45 & 1;
  v103 = v46;
  MEMORY[0x28223BE20](v100);
  *(&v75 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF250, &qword_21CBABD88);
  sub_21C6EADEC(&qword_27CDEF258, &qword_27CDEF250, &qword_21CBABD88, MEMORY[0x277CE14C0]);
  v47 = v81;
  sub_21CB85034();
  sub_21CB81DB4();

  v48 = v100;
  if (v100)
  {
  }

  v49 = v48 != 0;
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  v52 = v80;
  (*(v82 + 32))(v80, v47, v83);
  v53 = v86;
  v54 = &v52[*(v86 + 36)];
  *v54 = v50;
  v54[1] = sub_21C87E800;
  v54[2] = v51;
  v55 = v52;
  v56 = v79;
  sub_21C716934(v55, v79, &qword_27CDEF218, &qword_21CBABD10);
  sub_21C716934(v56, v38, &qword_27CDEF218, &qword_21CBABD10);
  v57 = 0;
  v58 = v92;
LABEL_11:
  v59 = (*(v85 + 56))(v38, v57, 1, v53);
  MEMORY[0x28223BE20](v59);
  *(&v75 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  sub_21C735EA0();
  sub_21CB85054();
  sub_21CB81DB4();

  v60 = v100;
  if (v100)
  {
  }

  v61 = v60 != 0;
  v63 = swift_allocObject();
  *(v63 + 16) = v61;
  v64 = v90;
  (*(v93 + 32))(v90, v58, v94);
  v65 = (v64 + *(v91 + 36));
  *v65 = v62;
  v65[1] = sub_21C87E800;
  v65[2] = v63;
  v66 = v95;
  sub_21C716934(v64, v95, &qword_27CDEF208, &qword_21CBABD00);
  v67 = v98;
  v68 = v87;
  sub_21C6EDBAC(v98, v87, &qword_27CDEF230, &qword_21CBABD28);
  v69 = v89;
  sub_21C6EDBAC(v38, v89, &qword_27CDEF220, &qword_21CBABD18);
  v70 = v38;
  v71 = v96;
  sub_21C6EDBAC(v66, v96, &qword_27CDEF208, &qword_21CBABD00);
  v72 = v97;
  sub_21C6EDBAC(v68, v97, &qword_27CDEF230, &qword_21CBABD28);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF248, &qword_21CBABD38);
  sub_21C6EDBAC(v69, v72 + *(v73 + 48), &qword_27CDEF220, &qword_21CBABD18);
  sub_21C6EDBAC(v71, v72 + *(v73 + 64), &qword_27CDEF208, &qword_21CBABD00);
  sub_21C6EA794(v66, &qword_27CDEF208, &qword_21CBABD00);
  sub_21C6EA794(v70, &qword_27CDEF220, &qword_21CBABD18);
  sub_21C6EA794(v67, &qword_27CDEF230, &qword_21CBABD28);
  sub_21C6EA794(v71, &qword_27CDEF208, &qword_21CBABD00);
  sub_21C6EA794(v69, &qword_27CDEF220, &qword_21CBABD18);
  return sub_21C6EA794(v68, &qword_27CDEF230, &qword_21CBABD28);
}

uint64_t sub_21C73E8F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v146 = a1;
  v145 = a2;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v138 - v2;
  v3 = sub_21CB82444();
  v4 = *(v3 - 8);
  v174 = v3;
  v175 = v4;
  MEMORY[0x28223BE20](v3);
  v160 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAppCommands(0);
  v170 = *(v6 - 8);
  v7 = *(v170 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v172 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v138 - v13;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  MEMORY[0x28223BE20](v173);
  v138 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v138 - v17;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C0, &qword_21CBABC88);
  v144 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v143 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v157 = &v138 - v21;
  MEMORY[0x28223BE20](v22);
  v156 = &v138 - v23;
  MEMORY[0x28223BE20](v24);
  v155 = &v138 - v25;
  MEMORY[0x28223BE20](v26);
  v154 = &v138 - v27;
  MEMORY[0x28223BE20](v28);
  v153 = &v138 - v29;
  MEMORY[0x28223BE20](v30);
  v152 = &v138 - v31;
  MEMORY[0x28223BE20](v32);
  v151 = &v138 - v33;
  MEMORY[0x28223BE20](v34);
  v161 = &v138 - v35;
  MEMORY[0x28223BE20](v36);
  v159 = &v138 - v37;
  MEMORY[0x28223BE20](v38);
  v158 = &v138 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v138 - v41;
  sub_21CB81014();
  sub_21CB81014();
  v43 = sub_21CB80FF4();
  v45 = v44;
  v46 = *(v9 + 8);
  v163 = v46;
  v162 = v9 + 8;
  v171 = v8;
  v46(v11, v8);
  v46(v14, v8);
  v148 = type metadata accessor for PMAppCommands;
  v47 = v146;
  v48 = v172;
  sub_21C73A7B0(v146, v172, type metadata accessor for PMAppCommands);
  v165 = *(v170 + 80);
  v49 = (v165 + 16) & ~v165;
  v164 = v49 + v7;
  v169 = v49;
  v50 = swift_allocObject();
  v147 = type metadata accessor for PMAppCommands;
  sub_21C73A8E8(v48, v50 + v49, type metadata accessor for PMAppCommands);
  v185 = v43;
  v186 = v45;
  v182 = &v185;
  v183 = 7955819;
  v184 = 0xE300000000000000;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v168 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();

  v51 = v47;
  LOBYTE(v7) = sub_21C73BDF0();
  v53 = swift_allocObject();
  *(v53 + 16) = v7 & 1;
  v54 = &v18[*(v173 + 36)];
  *v54 = KeyPath;
  v54[1] = sub_21C87E800;
  v54[2] = v53;
  v55 = v160;
  sub_21CB82424();
  sub_21CB82574();
  v167 = sub_21C735EA0();
  v150 = v42;
  v56 = v18;
  sub_21CB84324();
  v57 = *(v175 + 8);
  v175 += 8;
  v166 = v57;
  v58 = v174;
  v57(v55, v174);
  sub_21C6EA794(v18, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  v59 = v11;
  v149 = v11;
  sub_21CB81014();
  v60 = sub_21CB80FF4();
  v62 = v61;
  v63 = v171;
  v64 = v163;
  v163(v59, v171);
  v64(v14, v63);
  v65 = v172;
  sub_21C73A7B0(v51, v172, v148);
  v66 = swift_allocObject() + v169;
  v67 = v65;
  v68 = v14;
  sub_21C73A8E8(v67, v66, v147);
  v185 = v60;
  v186 = v62;
  v179 = &v185;
  v180 = 0xD000000000000010;
  v181 = 0x800000021CB91E10;
  sub_21CB84DA4();

  LOBYTE(v59) = sub_21C73BDF0();
  v70 = swift_allocObject();
  *(v70 + 16) = v59 & 1;
  v71 = v173;
  v72 = (v56 + *(v173 + 36));
  *v72 = v69;
  v72[1] = sub_21C87E800;
  v72[2] = v70;
  v73 = v160;
  sub_21CB82424();
  sub_21CB82574();
  sub_21CB84324();
  v166(v73, v58);
  sub_21C6EA794(v56, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  v74 = v149;
  sub_21CB81014();
  v75 = sub_21CB80FF4();
  v77 = v76;
  v78 = v74;
  v79 = v171;
  v64(v78, v171);
  v64(v68, v79);
  v80 = v146;
  v81 = v172;
  sub_21C73A7B0(v146, v172, v148);
  v82 = swift_allocObject();
  sub_21C73A8E8(v81, v82 + v169, v147);
  v185 = v75;
  v186 = v77;
  v176 = &v185;
  v177 = 0xD000000000000010;
  v178 = 0x800000021CB91E50;
  sub_21CB84DA4();

  LOBYTE(v77) = sub_21C73BDF0();
  v84 = swift_allocObject();
  *(v84 + 16) = v77 & 1;
  v85 = (v56 + *(v71 + 36));
  *v85 = v83;
  v85[1] = sub_21C87E800;
  v85[2] = v84;
  sub_21CB82424();
  sub_21CB82574();
  sub_21CB84324();
  v166(v73, v174);
  sub_21C6EA794(v56, &qword_27CDEEBA0, &qword_21CBABC80);
  MGGetBoolAnswer();
  sub_21CB81014();
  v86 = sub_21CB81004();
  v88 = v87;
  v163(v68, v171);
  v148 = type metadata accessor for PMAppCommands;
  v89 = v172;
  sub_21C73A7B0(v80, v172, type metadata accessor for PMAppCommands);
  v90 = swift_allocObject();
  v147 = type metadata accessor for PMAppCommands;
  v91 = sub_21C73A8E8(v89, v90 + v169, type metadata accessor for PMAppCommands);
  v185 = v86;
  v186 = v88;
  MEMORY[0x28223BE20](v91);
  *(&v138 - 4) = &v185;
  *(&v138 - 3) = 1768319351;
  *(&v138 - 2) = 0xE400000000000000;
  v92 = v139;
  sub_21CB84DA4();

  v93 = v80;
  LOBYTE(v77) = sub_21C73BDF0();
  v95 = swift_allocObject();
  *(v95 + 16) = v77 & 1;
  v96 = v138;
  (*(v140 + 32))(v138, v92, v141);
  v97 = (v96 + *(v173 + 36));
  *v97 = v94;
  v97[1] = sub_21C87E800;
  v97[2] = v95;
  v98 = v160;
  sub_21CB82424();
  sub_21CB82574();
  sub_21CB84324();
  v166(v98, v174);
  sub_21C6EA794(v96, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  v99 = v149;
  sub_21CB81014();
  v100 = sub_21CB80FF4();
  v102 = v101;
  v103 = v171;
  v104 = v163;
  v163(v99, v171);
  v104(v68, v103);
  v105 = v172;
  sub_21C73A7B0(v93, v172, v148);
  v106 = swift_allocObject();
  v107 = sub_21C73A8E8(v105, v106 + v169, v147);
  v185 = v100;
  v186 = v102;
  MEMORY[0x28223BE20](v107);
  *(&v138 - 4) = &v185;
  *(&v138 - 3) = 0x74616D616C637865;
  *(&v138 - 2) = 0xEF6B72616D6E6F69;
  sub_21CB84DA4();

  v108 = v93;
  LOBYTE(v102) = sub_21C73BDF0();
  v110 = swift_allocObject();
  *(v110 + 16) = v102 & 1;
  v111 = (v56 + *(v173 + 36));
  *v111 = v109;
  v111[1] = sub_21C87E800;
  v111[2] = v110;
  sub_21CB82424();
  sub_21CB82574();
  sub_21CB84324();
  v166(v98, v174);
  sub_21C6EA794(v56, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  sub_21CB81014();
  v112 = sub_21CB80FF4();
  v114 = v113;
  v115 = v99;
  v116 = v171;
  v117 = v163;
  v163(v115, v171);
  v117(v68, v116);
  sub_21C73A7B0(v108, v105, v148);
  v118 = swift_allocObject();
  v119 = sub_21C73A8E8(v105, v118 + v169, v147);
  v185 = v112;
  v186 = v114;
  MEMORY[0x28223BE20](v119);
  *(&v138 - 4) = &v185;
  *(&v138 - 3) = 0x6873617274;
  *(&v138 - 2) = 0xE500000000000000;
  sub_21CB84DA4();

  LOBYTE(v117) = sub_21C73BDF0();
  v121 = swift_allocObject();
  *(v121 + 16) = v117 & 1;
  v122 = (v56 + *(v173 + 36));
  *v122 = v120;
  v122[1] = sub_21C87E800;
  v122[2] = v121;
  sub_21CB82424();
  sub_21CB82574();
  v123 = v152;
  sub_21CB84324();
  v166(v98, v174);
  sub_21C6EA794(v56, &qword_27CDEEBA0, &qword_21CBABC80);
  v124 = v144;
  v125 = *(v144 + 16);
  v126 = v153;
  v127 = v142;
  v125(v153, v150, v142);
  v128 = v154;
  v125(v154, v158, v127);
  v125(v155, v159, v127);
  v129 = v156;
  v125(v156, v161, v127);
  v130 = v151;
  v125(v157, v151, v127);
  v131 = v143;
  v125(v143, v123, v127);
  v132 = v145;
  v125(v145, v126, v127);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF278, &qword_21CBABE70);
  v125(&v132[v133[12]], v128, v127);
  v134 = v155;
  v125(&v132[v133[16]], v155, v127);
  v125(&v132[v133[20]], v129, v127);
  v135 = v157;
  v125(&v132[v133[24]], v157, v127);
  v125(&v132[v133[28]], v131, v127);
  v136 = *(v124 + 8);
  v136(v152, v127);
  v136(v130, v127);
  v136(v161, v127);
  v136(v159, v127);
  v136(v158, v127);
  v136(v150, v127);
  v136(v131, v127);
  v136(v135, v127);
  v136(v156, v127);
  v136(v134, v127);
  v136(v154, v127);
  return (v136)(v153, v127);
}

uint64_t sub_21C740020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v2 = type metadata accessor for PMAppCommands(0);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  sub_21CB81014();
  sub_21CB81014();
  v15 = sub_21CB80FF4();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  sub_21C73A7B0(v30, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v19 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v20 = swift_allocObject();
  sub_21C73A8E8(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for PMAppCommands);
  v37[0] = v15;
  v37[1] = v17;
  v34 = v37;
  v35 = 0xD000000000000012;
  v36 = 0x800000021CB90140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();

  if (sub_21C73BDF0())
  {
    v21 = 1;
  }

  else
  {
    swift_getKeyPath(byte_21CBABE00);
    swift_getKeyPath(byte_21CBABE28);
    sub_21CB81DB4();

    v22 = *(v37[0] + 16);

    v21 = v22 == 0;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v25 = v33;
  (*(v31 + 32))(v33, v14, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v27 = (v25 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = sub_21C87E800;
  v27[2] = v24;
  return result;
}

uint64_t sub_21C7404C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1E8, &qword_21CBABCA0);
  MEMORY[0x28223BE20](v34);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1F0, &qword_21CBABCA8);
  v10 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C844588();
  v19 = v18;
  sub_21CB85054();
  v38 = a1;
  sub_21CB85054();
  type metadata accessor for PMAppCommands(0);
  sub_21CB81DB4();

  v20 = v40;
  if (v40)
  {
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v20 != 0;
  v23 = v10;
  v24 = *(v10 + 32);
  v25 = v35;
  v24(v6, v15, v35);
  v26 = &v6[*(v34 + 36)];
  *v26 = KeyPath;
  v26[1] = sub_21C87E800;
  v26[2] = v22;
  sub_21C716934(v6, v9, &qword_27CDEF1E8, &qword_21CBABCA0);
  v27 = *(v23 + 16);
  v27(v12, v18, v25);
  v28 = v37;
  sub_21C6EDBAC(v9, v37, &qword_27CDEF1E8, &qword_21CBABCA0);
  v29 = v9;
  v30 = v36;
  v27(v36, v12, v25);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1F8, &qword_21CBABCC0);
  sub_21C6EDBAC(v28, &v30[*(v31 + 48)], &qword_27CDEF1E8, &qword_21CBABCA0);
  sub_21C6EA794(v29, &qword_27CDEF1E8, &qword_21CBABCA0);
  v32 = *(v23 + 8);
  v32(v19, v25);
  sub_21C6EA794(v28, &qword_27CDEF1E8, &qword_21CBABCA0);
  return (v32)(v12, v25);
}

uint64_t sub_21C7408D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v25 = a2;
  v2 = type metadata accessor for PMAppCommands(0);
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v22 - v9;
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  v26 = v11;
  v27 = v13;
  sub_21C73A7B0(v23, &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v14 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v15 = swift_allocObject();
  sub_21C73A8E8(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMAppCommands);
  sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21CB81DB4();

  v16 = v26;
  if (v26)
  {
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v16 != 0;
  v19 = v25;
  (*(v8 + 32))(v25, v10, v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v21 = (v19 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_21C87E800;
  v21[2] = v18;
  return result;
}

uint64_t sub_21C740C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for PMAppCommands(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  sub_21CB81014();
  sub_21CB81014();
  v12 = sub_21CB80FF4();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v8, v5);
  v15(v11, v5);
  v25 = v12;
  v26 = v14;
  sub_21C73A7B0(a1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v16 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v17 = swift_allocObject();
  sub_21C73A8E8(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMAppCommands);
  sub_21C71F3FC();
  v18 = v24;
  sub_21CB84DE4();
  LOBYTE(a1) = sub_21C73BDF0();
  v20 = swift_allocObject();
  *(v20 + 16) = a1 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v22 = (v18 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_21C87E800;
  v22[2] = v20;
  return result;
}

uint64_t type metadata accessor for PMMultipleWiFiDetailsModel(uint64_t a1)
{
  result = qword_27CDF8458;
  if (!qword_27CDF8458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C740FD0(uint64_t a1)
{
  result = sub_21CB81114();
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

uint64_t objectdestroy_53Tm()
{
  v1 = (type metadata accessor for PMGroupInvitationDetails(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for PMSharingGroup(0);

  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_21C74123C()
{
  result = qword_27CDF5488;
  if (!qword_27CDF5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5488);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for PMSearchable(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 40))
  {
  }

  if (*(v5 + 64))
  {
  }

  v6 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB83834();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_9Tm_0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_21C741520@<X0>(_BYTE *a1@<X8>)
{
  sub_21C741570();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

unint64_t sub_21C741570()
{
  result = qword_27CDF3868;
  if (!qword_27CDF3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3868);
  }

  return result;
}

uint64_t sub_21C741620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3 - 8];
  v5 = sub_21CB858E4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21CB858B4();
  sub_21C7380DC(a1, v13);
  v6 = sub_21CB858A4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v9;
  *(v7 + 96) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v10;
  sub_21C98B308(0, 0, v4, &unk_21CBBDF80, v7);
}

uint64_t sub_21C74176C(uint64_t a1)
{
  v2 = sub_21CB81FE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = *(a1 + *(type metadata accessor for PMAppRootView(0) + 32));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v10 = sub_21C741948(v9, v14[1]);

  if (v10)
  {
    sub_21C7260B0(v8);
    (*(v3 + 104))(v5, *MEMORY[0x277CDD6B8], v2);
    v12 = sub_21CB81FD4();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);
    if (v12)
    {
      [*(v10 + 16) applicationDidForeground];
    }
  }

  return result;
}

uint64_t sub_21C74195C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (!*(a2 + 16) || (v7 = sub_21CB10910(a1), (v8 & 1) == 0) || (sub_21C7A3394(*(a2 + 56) + 32 * v7, v10), __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4), (swift_dynamicCast() & 1) == 0) || (result = v11, v11 == 1))
  {
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v11 = qword_27CE184E8;

    swift_getAtKeyPath();

    return v10[0];
  }

  return result;
}

uint64_t sub_21C741A58(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppRootNavigationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C741AE4()
{
  v0 = sub_21CB83834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v27 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v7 - 8);
  v28 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v25[-v13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v29 = v30;
  type metadata accessor for PMAppRootNavigationView(0);
  sub_21C728D50(v14);
  (*(v1 + 104))(v11, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_21C6EDBAC(v14, v6, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v11, &v6[v15], &qword_27CDEC390, &qword_21CBA40E0);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) == 1)
  {
    sub_21C6EA794(v11, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v14, &qword_27CDEC390, &qword_21CBA40E0);
    if (v16(&v6[v15], 1, v0) == 1)
    {
      sub_21C6EA794(v6, &qword_27CDEC390, &qword_21CBA40E0);
      v17 = v29;
      v18 = (v29 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact);
      v19 = 1;
      if (*(v29 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact))
      {
        goto LABEL_10;
      }

LABEL_8:
      KeyPath = swift_getKeyPath(byte_21CBAE4F0);
      MEMORY[0x28223BE20](KeyPath);
      *&v25[-16] = v17;
      v25[-8] = v19 & 1;
      v30 = v17;
      sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
      sub_21CB810C4();
    }
  }

  else
  {
    sub_21C6EDBAC(v6, v28, &qword_27CDEC390, &qword_21CBA40E0);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v22 = v27;
      (*(v1 + 32))(v27, &v6[v15], v0);
      sub_21C71B768(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v23 = v28;
      v19 = sub_21CB85574();
      v26 = v19 & 1;
      v24 = *(v1 + 8);
      v24(v22, v0);
      sub_21C6EA794(v11, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v14, &qword_27CDEC390, &qword_21CBA40E0);
      v24(v23, v0);
      sub_21C6EA794(v6, &qword_27CDEC390, &qword_21CBA40E0);
      v17 = v29;
      v18 = (v29 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact);
      if (v26 != *(v29 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact))
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    sub_21C6EA794(v11, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v14, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v1 + 8))(v28, v0);
  }

  sub_21C6EA794(v6, &qword_27CDEE530, &unk_21CBA9D80);
  v19 = 0;
  v17 = v29;
  v18 = (v29 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact);
  if (*(v29 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact))
  {
    goto LABEL_8;
  }

LABEL_10:
  *v18 = v19 & 1;
}

uint64_t sub_21C7420A8(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 48);
    v5 = *(result + 32);
    v6 = v1;
    v7 = v2 & 1;

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    MEMORY[0x21CF14A20](&v4, v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE508, &qword_21CBBE3B0);
    sub_21CB81F64();
  }

  return result;
}

uint64_t sub_21C7421E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppSourceList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C742274(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  v6 = a1 + *(type metadata accessor for PMAppSourceList(0) + 36);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (v8 == 1)
  {
    v9 = *v6;
  }

  else
  {

    sub_21CB85B04();
    v10 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v7, 0);
    (*(v3 + 8))(v5, v2);
    LOBYTE(v9) = v15;
  }

  sub_21C74256C(v9 & 1);

  if (!v8)
  {

    sub_21CB85B04();
    v12 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v7, 0);
    result = (*(v3 + 8))(v5, v2);
    if (v15 != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_8:
    sub_21CB85084();
    v13 = v15;
    swift_getKeyPath(byte_21CBB02A8);
    v15 = v13;
    sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810D4();

    sub_21C87FF18(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_21C74256C(int a1)
{
  v3 = *(v1 + 17);
  if (v3 == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_7;
    }

LABEL_6:
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810C4();
  }

  if (a1 == 2 || ((v3 ^ a1) & 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 17) = a1;

  return sub_21C742704(v3);
}

uint64_t sub_21C7426C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 17);
  *(v1 + 17) = *(v0 + 24);
  return sub_21C742704(v2);
}

uint64_t sub_21C742704(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v42 = type metadata accessor for PMAppSourceListModel.Source(0);
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v9 - 8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v35 - v19;
  v21 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel___observationRegistrar;
  v44 = v2;
  v40 = sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  v41 = v21;
  sub_21CB810D4();

  if (v3 != 2 || *(v2 + 17) == 2)
  {
    return result;
  }

  v36 = v13;
  swift_getKeyPath(byte_21CBB0E10);
  v44 = v2;
  sub_21CB810D4();

  v23 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  v24 = v42;
  v37 = *(v4 + 56);
  v37(v20, 1, 1, v42);
  v25 = *(v6 + 48);
  sub_21C742C18(v2 + v23, v8);
  sub_21C742C18(v20, &v8[v25]);
  v26 = *(v4 + 48);
  if (v26(v8, 1, v24) != 1)
  {
    sub_21C742C18(v8, v16);
    if (v26(&v8[v25], 1, v24) != 1)
    {
      v27 = &v8[v25];
      v28 = v39;
      sub_21C919658(v27, v39);
      v29 = sub_21C918FE4(v16, v28);
      sub_21C919E5C(v28, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v20, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C919E5C(v16, type metadata accessor for PMAppSourceListModel.Source);
      result = sub_21C6EA794(v8, &qword_27CDEAC20, &qword_21CBAD710);
      if ((v29 & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_21C6EA794(v20, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C919E5C(v16, type metadata accessor for PMAppSourceListModel.Source);
    return sub_21C6EA794(v8, &unk_27CDED310, &unk_21CBA0150);
  }

  sub_21C6EA794(v20, &qword_27CDEAC20, &qword_21CBAD710);
  if (v26(&v8[v25], 1, v24) != 1)
  {
    return sub_21C6EA794(v8, &unk_27CDED310, &unk_21CBA0150);
  }

  sub_21C6EA794(v8, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_10:
  v43 = v2;
  sub_21CB810D4();

  v30 = *(v2 + 17);
  if (v30 == 2)
  {
    v31 = v38;
    v32 = v42;
    swift_storeEnumTagMultiPayload();
    v33 = v31;
    v34 = 0;
  }

  else
  {
    v32 = v42;
    if (v30)
    {
      v31 = v36;
      swift_storeEnumTagMultiPayload();
      v34 = 0;
    }

    else
    {
      v34 = 1;
      v31 = v36;
    }

    v33 = v31;
  }

  v37(v33, v34, 1, v32);
  return sub_21C742C88(v31);
}

uint64_t sub_21C742C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C742C88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C742C18(v1 + v9, v8);
  v10 = sub_21C742EE8(v8, a1);
  sub_21C6EA794(v8, &qword_27CDEAC20, &qword_21CBAD710);
  if (v10)
  {
    KeyPath = swift_getKeyPath(byte_21CBB0E10);
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810C4();
  }

  else
  {
    sub_21C742C18(a1, v8);
    sub_21C742C18(v1 + v9, v5);
    swift_beginAccess();
    sub_21C743188(v8, v1 + v9);
    swift_endAccess();
    sub_21C7431F8(v5);
    sub_21C6EA794(v5, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EA794(v8, &qword_27CDEAC20, &qword_21CBAD710);
  }

  return sub_21C6EA794(a1, &qword_27CDEAC20, &qword_21CBAD710);
}

uint64_t sub_21C742EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppSourceListModel.Source(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_21C742C18(a1, &v20 - v12);
  sub_21C742C18(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21C742C18(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_21C919658(&v13[v15], v7);
      v18 = sub_21C918FE4(v10, v7);
      sub_21C919E5C(v7, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C919E5C(v10, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v13, &qword_27CDEAC20, &qword_21CBAD710);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_21C919E5C(v10, type metadata accessor for PMAppSourceListModel.Source);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v13, &unk_27CDED310, &unk_21CBA0150);
    v17 = 1;
    return v17 & 1;
  }

  sub_21C6EA794(v13, &qword_27CDEAC20, &qword_21CBAD710);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21C743188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7431F8(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for PMAppSourceListModel.Action(0);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAppSourceListModel.Source(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v13 = v12 - 8;
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = v28 - v15;
  swift_getKeyPath(byte_21CBB0E10, v14);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel___observationRegistrar;
  v32 = v2;
  v28[0] = sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  v28[1] = v17;
  sub_21CB810D4();

  v18 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  v19 = *(v13 + 56);
  v20 = v30;
  sub_21C742C18(v30, v16);
  sub_21C742C18(v2 + v18, &v16[v19]);
  v21 = *(v6 + 48);
  if (v21(v16, 1, v5) == 1)
  {
    if (v21(&v16[v19], 1, v5) == 1)
    {
      return sub_21C6EA794(v16, &qword_27CDEAC20, &qword_21CBAD710);
    }

    goto LABEL_6;
  }

  sub_21C742C18(v16, v11);
  if (v21(&v16[v19], 1, v5) == 1)
  {
    sub_21C919E5C(v11, type metadata accessor for PMAppSourceListModel.Source);
LABEL_6:
    sub_21C6EA794(v16, &unk_27CDED310, &unk_21CBA0150);
LABEL_7:
    v23 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
    v25 = *(v24 + 48);
    v26 = v29;
    sub_21C742C18(v20, v29);
    swift_getKeyPath(byte_21CBB0E10);
    v31 = v2;

    sub_21CB810D4();

    sub_21C742C18(v2 + v18, v26 + v25);
    (*(*(v24 - 8) + 56))(v26, 0, 1, v24);
    v23(v26);

    return sub_21C919E5C(v26, type metadata accessor for PMAppSourceListModel.Action);
  }

  sub_21C919658(&v16[v19], v8);
  v27 = sub_21C918FE4(v11, v8);
  sub_21C919E5C(v8, type metadata accessor for PMAppSourceListModel.Source);
  sub_21C919E5C(v11, type metadata accessor for PMAppSourceListModel.Source);
  result = sub_21C6EA794(v16, &qword_27CDEAC20, &qword_21CBAD710);
  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21C743660()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - v2;
  v5 = *v0;
  v4 = v0[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_21C7335A8(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();
  KeyPath = swift_getKeyPath(a8_8);
  v8 = swift_allocObject();
  *(v8 + 16) = v5 == 0;
  v9 = &v3[*(v1 + 36)];
  *v9 = KeyPath;
  v9[1] = sub_21C735744;
  v9[2] = v8;
  sub_21C735EA0();
  sub_21CB845C4();
  return sub_21C735DAC(v3);
}

uint64_t sub_21C74382C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C743884()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  v12[0] = v7;
  v12[1] = v9;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}