uint64_t sub_21C784CB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C784D00()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v40 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  v5 = v0 + v3 + v1[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v8 = *(v7 + 28);
    v9 = sub_21CB85B74();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);

    v10 = *(v7 + 36);
    v11 = sub_21CB85C44();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v5 + v10, 1, v11))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v29 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v30 = v29[7];
  v31 = sub_21CB85C04();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v5 + v30, 1, v31))
  {
    (*(v32 + 8))(v5 + v30, v31);
  }

  v33 = v29[8];
  v34 = sub_21CB85BB4();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v5 + v33, 1, v34))
  {
    (*(v35 + 8))(v5 + v33, v34);
  }

  v10 = v29[9];
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
LABEL_3:
    (*(v12 + 8))(v5 + v10, v11);
  }

LABEL_4:
  v13 = (v4 + v1[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = (v2 + 32) & ~v2;
    v39 = v2;

    v14 = type metadata accessor for PMAccount.MockData(0);
    v15 = v14[8];
    v16 = sub_21CB80DD4();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (!v18(v13 + v15, 1, v16))
    {
      (*(v17 + 8))(v13 + v15, v16);
    }

    v19 = v14[12];
    if (!v18(v13 + v19, 1, v16))
    {
      (*(v17 + 8))(v13 + v19, v16);
    }

    v20 = v14[15];
    v21 = sub_21CB85BB4();
    v22 = *(v21 - 8);
    v3 = v38;
    if (!(*(v22 + 48))(v13 + v20, 1, v21))
    {
      (*(v22 + 8))(v13 + v20, v21);
    }

    v23 = v14[16];
    v24 = sub_21CB85C04();
    v25 = *(v24 - 8);
    v2 = v39;
    if (!(*(v25 + 48))(v13 + v23, 1, v24))
    {
      (*(v25 + 8))(v13 + v23, v24);
    }

    v26 = v14[18];
    v27 = sub_21CB85C44();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v13 + v26, 1, v27))
    {
      (*(v28 + 8))(v13 + v26, v27);
    }
  }

  else
  {
  }

  v36 = v4 + v1[7];
  if (*(v36 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v40, v2 | 7);
}

uint64_t sub_21C785368()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C785414()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C785454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21C785520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C7855E8()
{
  v1 = type metadata accessor for PMPasswordOptionsDefaultAppsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_21C70AC30(*(v0 + v4), *(v0 + v4 + 8));
  sub_21C70AC30(*(v5 + 24), *(v5 + 32));

  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82484();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_21C78573C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7898, &qword_21CBC6248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7857A8()
{
  v1 = type metadata accessor for PMPasswordOptionsDefaultAppsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_21C70AC30(*(v0 + v3), *(v0 + v3 + 8));
  sub_21C70AC30(*(v5 + 24), *(v5 + 32));

  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82484();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C785904()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF78A0, &qword_21CBC6250);
  type metadata accessor for PMConfigureCredentialProviderExtensionView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7898, &qword_21CBC6248);
  sub_21CACDC94();
  swift_getOpaqueTypeConformance2();
  sub_21CACDE1C();
  sub_21C70D6DC(&qword_27CDF1D30, type metadata accessor for PMConfigureCredentialProviderExtensionView, &unk_21CBB2824);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C785A08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_21C785B28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_21C785C44()
{
  v1 = type metadata accessor for PMPasswordOptionsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_21C70AC30(*(v0 + v4), *(v0 + v4 + 8));
  sub_21C70AC30(*(v5 + 24), *(v5 + 32));

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB82484();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_21C785E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7988, &qword_21CBC6380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C785E88()
{
  v1 = type metadata accessor for PMPasswordOptionsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_21C70AC30(*(v0 + v3), *(v0 + v3 + 8));
  sub_21C70AC30(*(v5 + 24), *(v5 + 32));

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_21C7025C4(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB82484();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C786068()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C7860A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C7860E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C786138()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7990, &qword_21CBC6388);
  type metadata accessor for PMConfigureCredentialProviderExtensionView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7988, &qword_21CBC6380);
  sub_21CAD00E8();
  swift_getOpaqueTypeConformance2();
  sub_21CACDE1C();
  sub_21C70D6DC(&qword_27CDF1D30, type metadata accessor for PMConfigureCredentialProviderExtensionView, &unk_21CBB2824);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C786244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMWiFiNetwork(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C786340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PMWiFiNetwork(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C786448()
{
  v1 = type metadata accessor for PMWiFiQRCodeView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v15 = v0;
  v4 = v0 + v3;

  v5 = type metadata accessor for PMWiFiNetwork(0);
  v6 = v5[7];
  v7 = sub_21CB80DD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[8];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB823B4();
    (*(*(v12 - 8) + 8))(v4 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v15, v3 + v14, v2 | 7);
}

uint64_t sub_21C7866A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C786764(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C786820()
{
  v1 = type metadata accessor for PMPasswordsSecurityView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[11];
  if (*(v8 + 8))
  {
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_21C7025C4(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v9 + 32, v2 | 7);
}

uint64_t sub_21C7869F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C786A34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82F54();
  *a1 = result;
  return result;
}

uint64_t sub_21C786A8C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21C786AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7AC8, &qword_21CBC6748);
  sub_21CAD7F08();
  sub_21C71F3FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C786B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CB8, &qword_21CBC6C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C786C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CB8, &qword_21CBC6C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C786CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C786D80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C786E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D30, &qword_21CBC6DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C786EE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7D08, &qword_21CBC6D80);
  sub_21CADC698();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C786F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C786FC0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C787044@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21C787074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
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

uint64_t sub_21C787130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
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

uint64_t sub_21C7871F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E48, &unk_21CBB9800);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C787324(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E48, &unk_21CBB9800);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C787454()
{
  type metadata accessor for _PMRecentlyDeletedAccountsView(255);
  sub_21C7065C0(&qword_27CDF7EC8, type metadata accessor for _PMRecentlyDeletedAccountsView, &unk_21CBC7560);
  sub_21C71F3FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7875F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C787630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8028, &qword_21CBC78B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C787710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C78777C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C787860()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C7879D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C787A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C787B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C787BE4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB85C44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C787C68()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C787CC0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C787D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C787DDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup(0);
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

uint64_t sub_21C787E98(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21C787F54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C788080()
{
  v1 = (type metadata accessor for _PMRemoveDuplicateAccountsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB823B4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C7881D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8360, &qword_21CBC8890);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8358, &qword_21CBC8888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF83B0, &qword_21CBC8930);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8350, &qword_21CBC8880);
  sub_21CB829D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8348, &qword_21CBC8878);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8340, &qword_21CBC8870);
  sub_21CAF71CC();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CAF70B0(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF83B8, &qword_27CDF83B0, &qword_21CBC8930, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7884A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C7884F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C788568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB80E34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C788628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB80E34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C788704()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C788768(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C7A6110(v1, v2);
}

uint64_t sub_21C7887A8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_21C788864(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C788914()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8488, &qword_21CBC90E0);
  type metadata accessor for PMGlobalAnimationNamespaceContainer(255);
  sub_21CAFC994();
  sub_21CAFC780(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7889C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C788A40()
{
  MEMORY[0x21CF16E70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C788A78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C788AB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C788AF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C788B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81884();
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

uint64_t sub_21C788BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB81884();
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

uint64_t sub_21C788CA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C788CDC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C788D24()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C788D74()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C788DBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C788E00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C788E58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C788E90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C788EC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C788F00()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C788F50()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C78903C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C7890F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7891A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB820E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C789214(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB820E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C789294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B18, &unk_21CBC9A60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C78930C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B18, &unk_21CBC9A60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C789394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C789454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C789538()
{
  v1 = v0;
  v2 = type metadata accessor for PMSecurityRecommendationsAccountRow(0);
  v3 = *(*(v2 - 8) + 80);
  v41 = *(*(v2 - 8) + 64);
  v42 = (v3 + 16) & ~v3;
  v4 = v0 + v42;

  v5 = type metadata accessor for PMAccount(0);
  v6 = v0 + v42 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v9 = *(v8 + 28);
    v10 = sub_21CB85B74();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);

    v11 = *(v8 + 36);
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6 + v11, 1, v12))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v30 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v31 = v30[7];
  v32 = sub_21CB85C04();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v6 + v31, 1, v32))
  {
    (*(v33 + 8))(v6 + v31, v32);
  }

  v34 = v30[8];
  v35 = sub_21CB85BB4();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  v11 = v30[9];
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
LABEL_3:
    (*(v13 + 8))(v6 + v11, v12);
  }

LABEL_4:
  v14 = (v4 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v1;

    v15 = type metadata accessor for PMAccount.MockData(0);
    v16 = v15[8];
    v17 = sub_21CB80DD4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (!v19(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }

    v20 = v15[12];
    if (!v19(v14 + v20, 1, v17))
    {
      (*(v18 + 8))(v14 + v20, v17);
    }

    v21 = v15[15];
    v22 = sub_21CB85BB4();
    v23 = *(v22 - 8);
    v1 = v40;
    if (!(*(v23 + 48))(v14 + v21, 1, v22))
    {
      (*(v23 + 8))(v14 + v21, v22);
    }

    v24 = v15[16];
    v25 = sub_21CB85C04();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v14 + v24, 1, v25))
    {
      (*(v26 + 8))(v14 + v24, v25);
    }

    v27 = v15[18];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v14 + v27, 1, v28))
    {
      (*(v29 + 8))(v14 + v27, v28);
    }
  }

  else
  {
  }

  v37 = v4 + v5[7];
  if (*(v37 + 8))
  {
  }

  v38 = v4 + *(v2 + 20);

  sub_21C7025C4(*(v4 + *(v2 + 24)), *(v4 + *(v2 + 24) + 8));

  return MEMORY[0x2821FE8E8](v1, v42 + v41, v3 | 7);
}

uint64_t sub_21C789BDC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C789C24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8BF0, &qword_21CBC9F98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8BE8, &qword_21CBC9F90);
  sub_21CB839E4();
  sub_21CB1A630();
  sub_21CB1A788(&qword_27CDF8C00, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C789D68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C789E24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C789F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8DA8, &qword_21CBCA548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C789F9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C789FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C78A054(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CB80BE4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C78A0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C78A144(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21C78A1C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C78A2F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C78A454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F40, &unk_21CBCA9B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78A4C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F40, &unk_21CBCA9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C78A53C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8EE8, &unk_21CBCA928);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8F18, &qword_21CBCA950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8EE0, &qword_21CBCA920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8ED8, &qword_21CBCA918);
  type metadata accessor for PMOtpauthQRCodeScannerView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8ED0, &qword_21CBCA910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC150, &unk_21CBA4F60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8EF0, &qword_21CBCA938);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8EF8, &unk_21CBCA940);
  type metadata accessor for PMSetUpVerificationCodeAlertPurpose(255);
  sub_21C6EADEC(&qword_27CDF8F00, &qword_27CDF8EF0, &qword_21CBCA938, MEMORY[0x277CE04B0]);
  v0 = MEMORY[0x277CE14C0];
  sub_21C6EADEC(&qword_27CDF8F08, &qword_27CDF8EF8, &unk_21CBCA940, MEMORY[0x277CE14C0]);
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21C7FC578();
  swift_getOpaqueTypeConformance2();
  sub_21CB25158(&qword_27CDF8F10, type metadata accessor for PMOtpauthQRCodeScannerView, &unk_21CBB6B9C);
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF8F20, &qword_27CDF8F18, &qword_21CBCA950, v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78A8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C78A970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21CB85C44();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C78AA3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C78AA8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C78AAC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C78AB04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C78AB98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21CB85B44();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_21CB85B74();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[17];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_21C78AD70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21CB85B44();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_21CB85B74();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[17];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_21C78AF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C78B084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C78B1C8()
{
  v1 = type metadata accessor for PMContentListSearchable(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21CB83834();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C78B3C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9300, &qword_21CBCB300);
  sub_21CB2E064();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78B458(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for PMAccount(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_21C78B5DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for PMAccount(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21C78B7AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9368, &unk_21CBCB588);
  type metadata accessor for PMSignInWithAppleAccountDetailsModel(255);
  sub_21CB38144();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78B838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21C78B96C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C78BA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB813C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C78BB90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21CB813C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C78BCA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF97A0, &qword_21CBCBCA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78BD10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82E04();
  *a1 = result;
  return result;
}

uint64_t sub_21C78BD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C78BE30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C78BF14(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_21C78BFD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C78C088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9AB0, &qword_21CBCC7A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 68);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDF9AD8, &qword_21CBCC7F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C78C238(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF44B0, &unk_21CBA9AC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 68);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDF9AD8, &qword_21CBCC7F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C78C38C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C78C428()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21C78C480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9E50, &qword_21CBCD508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C78C500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21C78C5D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C78C6AC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA008, &qword_21CBCD6D0);
  sub_21CB825E4();
  type metadata accessor for PMAdapativeStackLabeledContentStyle(255);
  sub_21CB4A1DC();
  swift_getWitnessTable();
  sub_21CAA5114();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78C778(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C78C834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C78C900()
{
  v1 = (type metadata accessor for PMTipView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[13];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C78CA70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21C78CAA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

void sub_21C78CAFC(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_21CB85584();
  [v2 setWebsiteTitle_];
}

void sub_21C78CB64(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_21CB80B74();
  [v2 setFormURL_];
}

uint64_t sub_21C78CBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21C78CC88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_21C78CDF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C78CF2C()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21C78CF98()
{
  v1 = (type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v45 = *(*(v5 - 1) + 64);
  swift_unknownObjectRelease();

  v8 = v0 + v3;
  sub_21C7A34C0(*v8, *(v8 + 8));

  v9 = *(type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0) + 44);
  v10 = sub_21CB811C4();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  v46 = v7;
  v11 = v0 + v7;

  v12 = v0 + v7 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  LODWORD(v8) = swift_getEnumCaseMultiPayload();

  if (v8 == 1)
  {

    v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v14 = *(v13 + 28);
    v15 = sub_21CB85B74();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);

    v16 = *(v13 + 36);
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v12 + v16, 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v35 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v36 = v35[7];
  v37 = sub_21CB85C04();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v12 + v36, 1, v37))
  {
    (*(v38 + 8))(v12 + v36, v37);
  }

  v39 = v35[8];
  v40 = sub_21CB85BB4();
  v41 = *(v40 - 8);
  if (!(*(v41 + 48))(v12 + v39, 1, v40))
  {
    (*(v41 + 8))(v12 + v39, v40);
  }

  v16 = v35[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v12 + v16, 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(v12 + v16, v17);
  }

LABEL_4:
  v19 = (v11 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v2;

    v20 = type metadata accessor for PMAccount.MockData(0);
    v21 = v20[8];
    v22 = sub_21CB80DD4();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (!v24(v19 + v21, 1, v22))
    {
      (*(v23 + 8))(v19 + v21, v22);
    }

    v25 = v20[12];
    if (!v24(v19 + v25, 1, v22))
    {
      (*(v23 + 8))(v19 + v25, v22);
    }

    v26 = v20[15];
    v27 = sub_21CB85BB4();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v19 + v26, 1, v27))
    {
      (*(v28 + 8))(v19 + v26, v27);
    }

    v29 = v20[16];
    v30 = sub_21CB85C04();
    v31 = *(v30 - 8);
    v2 = v44;
    if (!(*(v31 + 48))(v19 + v29, 1, v30))
    {
      (*(v31 + 8))(v19 + v29, v30);
    }

    v32 = v20[18];
    v33 = sub_21CB85C44();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v19 + v32, 1, v33))
    {
      (*(v34 + 8))(v19 + v32, v33);
    }
  }

  else
  {
  }

  v42 = v11 + v5[7];
  if (*(v42 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v46 + v45, v2 | v6 | 7);
}

uint64_t sub_21C78D6E8()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v40 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  v5 = v0 + v3 + v1[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v8 = *(v7 + 28);
    v9 = sub_21CB85B74();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);

    v10 = *(v7 + 36);
    v11 = sub_21CB85C44();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v5 + v10, 1, v11))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v29 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v30 = v29[7];
  v31 = sub_21CB85C04();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(v5 + v30, 1, v31))
  {
    (*(v32 + 8))(v5 + v30, v31);
  }

  v33 = v29[8];
  v34 = sub_21CB85BB4();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v5 + v33, 1, v34))
  {
    (*(v35 + 8))(v5 + v33, v34);
  }

  v10 = v29[9];
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
LABEL_3:
    (*(v12 + 8))(v5 + v10, v11);
  }

LABEL_4:
  v13 = (v4 + v1[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = (v2 + 80) & ~v2;
    v39 = v2;

    v14 = type metadata accessor for PMAccount.MockData(0);
    v15 = v14[8];
    v16 = sub_21CB80DD4();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (!v18(v13 + v15, 1, v16))
    {
      (*(v17 + 8))(v13 + v15, v16);
    }

    v19 = v14[12];
    if (!v18(v13 + v19, 1, v16))
    {
      (*(v17 + 8))(v13 + v19, v16);
    }

    v20 = v14[15];
    v21 = sub_21CB85BB4();
    v22 = *(v21 - 8);
    v3 = v38;
    if (!(*(v22 + 48))(v13 + v20, 1, v21))
    {
      (*(v22 + 8))(v13 + v20, v21);
    }

    v23 = v14[16];
    v24 = sub_21CB85C04();
    v25 = *(v24 - 8);
    v2 = v39;
    if (!(*(v25 + 48))(v13 + v23, 1, v24))
    {
      (*(v25 + 8))(v13 + v23, v24);
    }

    v26 = v14[18];
    v27 = sub_21CB85C44();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v13 + v26, 1, v27))
    {
      (*(v28 + 8))(v13 + v26, v27);
    }
  }

  else
  {
  }

  v36 = v4 + v1[7];
  if (*(v36 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v40, v2 | 7);
}

uint64_t sub_21C78DD60()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v40 = *(*(v2 - 1) + 64);
  v5 = v0 + v4;

  v6 = v0 + v4 + v2[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v9 = *(v8 + 28);
    v10 = sub_21CB85B74();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);

    v11 = *(v8 + 36);
    v12 = sub_21CB85C44();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6 + v11, 1, v12))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v30 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v31 = v30[7];
  v32 = sub_21CB85C04();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v6 + v31, 1, v32))
  {
    (*(v33 + 8))(v6 + v31, v32);
  }

  v34 = v30[8];
  v35 = sub_21CB85BB4();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  v11 = v30[9];
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
LABEL_3:
    (*(v13 + 8))(v6 + v11, v12);
  }

LABEL_4:
  v14 = (v5 + v2[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v1;

    v15 = type metadata accessor for PMAccount.MockData(0);
    v16 = v15[8];
    v17 = sub_21CB80DD4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (!v19(v14 + v16, 1, v17))
    {
      (*(v18 + 8))(v14 + v16, v17);
    }

    v20 = v15[12];
    if (!v19(v14 + v20, 1, v17))
    {
      (*(v18 + 8))(v14 + v20, v17);
    }

    v21 = v15[15];
    v22 = sub_21CB85BB4();
    v23 = *(v22 - 8);
    v4 = (v3 + 16) & ~v3;
    if (!(*(v23 + 48))(v14 + v21, 1, v22))
    {
      (*(v23 + 8))(v14 + v21, v22);
    }

    v24 = v15[16];
    v25 = sub_21CB85C04();
    v26 = *(v25 - 8);
    v1 = v39;
    if (!(*(v26 + 48))(v14 + v24, 1, v25))
    {
      (*(v26 + 8))(v14 + v24, v25);
    }

    v27 = v15[18];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v14 + v27, 1, v28))
    {
      (*(v29 + 8))(v14 + v27, v28);
    }
  }

  else
  {
  }

  v37 = v5 + v2[7];
  if (*(v37 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v40, v3 | 7);
}

uint64_t sub_21C78E3DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA468, &qword_21CBCE548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA460, &qword_21CBCE540);
  sub_21CB5D180();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78E4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A78, &qword_21CBB2388);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78E644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C78E778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C78E8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA7B8, &qword_21CBCF4C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78E948()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA770, &qword_21CBCF498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA798, &unk_21CBCF4A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA768, &qword_21CBCF490);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB69BFC();
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDFA7A0, &qword_27CDFA798, &unk_21CBCF4A8, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78EB18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDFA890, &qword_21CBCF780);
  sub_21C6EADEC(&qword_27CDFA898, &qword_27CDFA890, &qword_21CBCF780, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C78EC1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21C78ED94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[7];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C78EF4C()
{
  v1 = v0;
  v2 = type metadata accessor for PMVerificationCodesList(0);
  v54 = *(*(v2 - 1) + 80);
  v3 = (v54 + 16) & ~v54;
  v4 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v3 + v4 + v6;
  v53 = *(*(v5 - 1) + 64);
  v8 = v1 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  (*(*(v9 - 8) + 8))(v1 + v3, v9);

  sub_21C79C1F4(*(v8 + v2[6]), *(v8 + v2[6] + 8), *(v8 + v2[6] + 16));
  v10 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82A34();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  v12 = v7 & ~v6;
  v13 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB83834();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v8 + v13, 1, v14))
    {
      (*(v15 + 8))(v8 + v13, v14);
    }
  }

  else
  {
  }

  v16 = v1 + v12;

  v17 = v1 + v12 + v5[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v19 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v20 = *(v19 + 28);
    v21 = sub_21CB85B74();
    (*(*(v21 - 8) + 8))(v17 + v20, v21);

    v22 = *(v19 + 36);
    v23 = sub_21CB85C44();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v17 + v22, 1, v23))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v41 = v12;

  v42 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v43 = v42[7];
  v44 = sub_21CB85C04();
  v45 = *(v44 - 8);
  if (!(*(v45 + 48))(v17 + v43, 1, v44))
  {
    (*(v45 + 8))(v17 + v43, v44);
  }

  v46 = v42[8];
  v47 = sub_21CB85BB4();
  v48 = *(v47 - 8);
  if (!(*(v48 + 48))(v17 + v46, 1, v47))
  {
    (*(v48 + 8))(v17 + v46, v47);
  }

  v22 = v42[9];
  v23 = sub_21CB85C44();
  v24 = *(v23 - 8);
  v12 = v41;
  if (!(*(v24 + 48))(v17 + v22, 1, v23))
  {
LABEL_10:
    (*(v24 + 8))(v17 + v22, v23);
  }

LABEL_11:
  v25 = (v16 + v5[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = v12;
    v52 = v1;

    v26 = type metadata accessor for PMAccount.MockData(0);
    v27 = v26[8];
    v28 = sub_21CB80DD4();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (!v30(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v31 = v26[12];
    if (!v30(v25 + v31, 1, v28))
    {
      (*(v29 + 8))(v25 + v31, v28);
    }

    v32 = v26[15];
    v33 = sub_21CB85BB4();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v25 + v32, 1, v33))
    {
      (*(v34 + 8))(v25 + v32, v33);
    }

    v35 = v26[16];
    v36 = sub_21CB85C04();
    v37 = *(v36 - 8);
    v1 = v52;
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v38 = v26[18];
    v39 = sub_21CB85C44();
    v40 = *(v39 - 8);
    v12 = v51;
    if (!(*(v40 + 48))(v25 + v38, 1, v39))
    {
      (*(v40 + 8))(v25 + v38, v39);
    }
  }

  else
  {
  }

  v49 = v16 + v5[7];
  if (*(v49 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v12 + v53, v54 | v6 | 7);
}

uint64_t sub_21C78F7DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C78F818()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C78F8A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21CB710A8(v1, v2);
}

uint64_t sub_21C78F900()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_21C78F940()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C78F978(uint64_t *a1)
{
  sub_21CB83964();
  sub_21CB83B74();
  sub_21CB828F4();
  sub_21CB74744(&qword_27CDFAB30, MEMORY[0x277CE06F0], MEMORY[0x277CE06E8]);
  sub_21CB82314();
  sub_21CB828F4();
  sub_21CB74744(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C78FAD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAB70, &qword_21CBD01F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C78FBB0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC08, &qword_21CBD0408);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_21C78FD40(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC08, &qword_21CBD0408);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21C78FF04()
{
  v1 = type metadata accessor for PMSecurityRecommendationPlatter(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[6];
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

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB823B4();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC08, &qword_21CBD0408);
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v5 + v1[9];
  if (*(v13 + 8))
  {
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v14 + 32, v2 | 7);
}

uint64_t sub_21C7901B4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21C7901F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C7902FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21C7A34C0(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PMListSubtitleCellLabeledContentStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_21C79033C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t PMOnboardingIsICloudKeychainSyncingEnabled()
{
  v0 = [MEMORY[0x277CBEBD0] pm_defaults];
  v1 = [v0 objectForKey:@"overrideIsICloudKeychainSyncEnabledForSafariAutoFillIntroduction"];

  if (v1)
  {
    v2 = [v0 safari_BOOLForKey:@"overrideIsICloudKeychainSyncEnabledForSafariAutoFillIntroduction" defaultValue:0];
  }

  else
  {
    v3 = [MEMORY[0x277D49A50] sharedMonitor];
    v2 = [v3 isKeychainSyncEnabled];
  }

  return v2;
}

uint64_t PMOnboardingIsPasswordAutoFillEnabled()
{
  v0 = [MEMORY[0x277CBEBD0] pm_defaults];
  v1 = [v0 objectForKey:@"overrideIsPasswordAutoFillEnabledForSafariAutoFillIntroduction"];

  if (v1)
  {
    v2 = [v0 safari_BOOLForKey:@"overrideIsPasswordAutoFillEnabledForSafariAutoFillIntroduction" defaultValue:0];
  }

  else
  {
    v3 = [MEMORY[0x277D49DC0] sharedFeatureManager];
    v2 = [v3 shouldAutoFillPasswordsFromKeychain];
  }

  return v2;
}

uint64_t PMOnboardingShouldShowIconBadge()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processName];

  if (([v1 isEqualToString:@"SafariViewService"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"Safari"))
  {
    v2 = [MEMORY[0x277CBEBD0] pm_defaults];
    v3 = [v2 BOOLForKey:@"shouldShowIconBadge"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PMOnboardingHasShownStrongPasswordSavedView()
{
  v0 = [MEMORY[0x277CBEBD0] pm_defaults];
  v1 = [v0 safari_BOOLForKey:@"hasShownStrongPasswordSavedView" defaultValue:0];

  return v1;
}

void sub_21C790664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKStoreReviewControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __StoreKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27831C978;
    v5 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    __getSKStoreReviewControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SKStoreReviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKStoreReviewControllerClass_block_invoke_cold_1();
  }

  getSKStoreReviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21C7938B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id makeSafariViewControllerWithURL(void *a1)
{
  v1 = a1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v2 = getSFSafariViewControllerConfigurationClass_softClass;
  v17 = getSFSafariViewControllerConfigurationClass_softClass;
  if (!getSFSafariViewControllerConfigurationClass_softClass)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __getSFSafariViewControllerConfigurationClass_block_invoke;
    v12 = &unk_27831C958;
    v13 = &v14;
    __getSFSafariViewControllerConfigurationClass_block_invoke(&v9);
    v2 = v15[3];
  }

  v3 = v2;
  _Block_object_dispose(&v14, 8);
  v4 = objc_alloc_init(v2);
  [v4 _setPerformingAccountSecurityUpgrade:1];
  [v4 setBarCollapsingEnabled:0];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v5 = getSFSafariViewControllerClass_softClass;
  v17 = getSFSafariViewControllerClass_softClass;
  if (!getSFSafariViewControllerClass_softClass)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __getSFSafariViewControllerClass_block_invoke;
    v12 = &unk_27831C958;
    v13 = &v14;
    __getSFSafariViewControllerClass_block_invoke(&v9);
    v5 = v15[3];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);
  v7 = [[v5 alloc] initWithURL:v1 configuration:v4];
  [v7 setModalInPresentation:1];

  return v7;
}

void sub_21C7947FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFSafariViewControllerConfigurationClass_block_invoke(uint64_t a1)
{
  SafariServicesLibrary();
  result = objc_getClass("SFSafariViewControllerConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSafariViewControllerConfigurationClass_block_invoke_cold_1();
  }

  getSFSafariViewControllerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SafariServicesLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __SafariServicesLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_27831CBC8;
    v2 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    SafariServicesLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSFSafariViewControllerClass_block_invoke(uint64_t a1)
{
  SafariServicesLibrary();
  result = objc_getClass("SFSafariViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSafariViewControllerClass_block_invoke_cold_1();
  }

  getSFSafariViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAuthorization(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXAuthorization_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAuthorization_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAuthorization_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswords(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXPasswords_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswords_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswords_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXServiceLifecycle(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXServiceLifecycle_onceToken[0] != -1)
  {
    WBS_LOG_CHANNEL_PREFIXServiceLifecycle_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXServiceLifecycle_log;
}

uint64_t sub_21C799714()
{
  v1 = v0;
  v2 = sub_21CB82F84();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_21CB80BE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0 + *(type metadata accessor for PMManagePasskeyOnWebsiteLink(0) + 20);
  v16 = v15 + *(type metadata accessor for PMAccount(0) + 28);
  if (*(v16 + 8) && (v17 = [*(v16 + 24) websitePasskeyAvailabilityInfo]) != 0)
  {
    v18 = v17;
    sub_21CB81064();

    v19 = *(v12 + 48);
    if (v19(v7, 1, v11) != 1)
    {
      (*(v12 + 32))(v10, v7, v11);
      (*(v12 + 56))(v10, 0, 1, v11);
      goto LABEL_8;
    }
  }

  else
  {
    (*(v12 + 56))(v7, 1, 1, v11);
  }

  sub_21C799C3C(v10);
  v19 = *(v12 + 48);
  if (v19(v7, 1, v11) != 1)
  {
    sub_21C79C324(v7);
  }

LABEL_8:
  if (v19(v10, 1, v11) == 1)
  {
    return sub_21C79C324(v10);
  }

  (*(v12 + 32))(v14, v10, v11);
  v22 = *v1;
  v21 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
  }

  else
  {

    sub_21CB85B04();
    v23 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C79C1F4(v22, v21, 0);
    (*(v25 + 8))(v4, v2);
    v22 = v26;
  }

  v22(v14);

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_21C799B08@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21C799C3C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v1 + *(type metadata accessor for PMManagePasskeyOnWebsiteLink(0) + 20);
  v13 = type metadata accessor for PMAccount(0);
  sub_21C79C38C(v12 + *(v13 + 24), v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C79C464(v11, v8, type metadata accessor for PMAccount.MockData);

    sub_21C79C4CC(v8);
  }

  else
  {
    v14 = *v11;
    v15 = [*v11 highLevelDomain];
    if (!v15)
    {

      v22 = sub_21CB80BE4();
      return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
    }

    v16 = v15;
    sub_21CB855C4();
  }

  v17 = sub_21CB85584();

  v18 = [v17 safari_bestURLForUserTypedString];

  if (v18)
  {
    sub_21CB80B94();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_21CB80BE4();
  (*(*(v20 - 8) + 56))(v5, v19, 1, v20);
  return sub_21C79C3F4(v5, a1);
}

uint64_t sub_21C799F00(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21CF15490](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_21C799F54(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x21CF154A0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_21C799FD4()
{
  v1 = *v0;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v1);
  return sub_21CB864D4();
}

uint64_t sub_21C79A01C(uint64_t a1)
{
  v2 = *v1;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v2);
  return sub_21CB864D4();
}

uint64_t sub_21C79A060(uint64_t a1, id *a2)
{
  result = sub_21CB855A4();
  *a2 = 0;
  return result;
}

uint64_t sub_21C79A0D8(uint64_t a1, id *a2)
{
  v3 = sub_21CB855B4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21C79A158@<X0>(uint64_t *a2@<X8>)
{
  sub_21CB855C4();
  v3 = sub_21CB85584();

  *a2 = v3;
  return result;
}

uint64_t sub_21C79A19C(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA900, type metadata accessor for ASCAuthorizationError, &unk_21CB9F774);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21C79A208(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA900, type metadata accessor for ASCAuthorizationError, &unk_21CB9F774);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21C79A274(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError, &unk_21CB9F7B8);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_21C79A2F0(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError, &unk_21CB9F3D8);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_21C79A35C(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError, &unk_21CB9F3D8);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21C79A3C8(void *a1, uint64_t a2)
{
  v4 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError, &unk_21CB9F3D8);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_21C79A458(uint64_t a1, uint64_t a2)
{
  v4 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError, &unk_21CB9F3D8);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_21C79A4E4(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError, &unk_21CB9F7B8);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_21C79A550(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError, &unk_21CB9F7B8);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21C79A5BC(void *a1, uint64_t a2)
{
  v4 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError, &unk_21CB9F7B8);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_21C79A64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError, &unk_21CB9F7B8);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_21C79A6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21CB86484();
  sub_21CB85494();
  return sub_21CB864D4();
}

uint64_t sub_21C79A728(uint64_t a1)
{
  sub_21C79B218(&qword_27CDEA998, type metadata accessor for CIContextOption, &unk_21CB9FACC);
  sub_21C79B218(&qword_27CDEA9A0, type metadata accessor for CIContextOption, &unk_21CB9FA20);

  return sub_21CB86234();
}

uint64_t sub_21C79A7E4(uint64_t a1)
{
  sub_21C79B218(&qword_27CDEAA30, type metadata accessor for ActivityType, &unk_21CB9FCB8);
  sub_21C79B218(&qword_27CDEAA38, type metadata accessor for ActivityType, &unk_21CB9FC60);

  return sub_21CB86234();
}

_DWORD *sub_21C79A8A0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_21C79A8B0@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_21C79A8BC(uint64_t a1)
{
  sub_21C79B218(&qword_27CDEA788, type metadata accessor for UILayoutPriority, &unk_21CB9E98C);
  sub_21C79B218(&qword_27CDEA790, type metadata accessor for UILayoutPriority, &unk_21CB9E92C);
  return sub_21CB86234();
}

uint64_t sub_21C79A978(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA8A0, type metadata accessor for WBSSavedAccountStoreSaveUserError, &unk_21CB9F394);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21C79A9E4(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA8A0, type metadata accessor for WBSSavedAccountStoreSaveUserError, &unk_21CB9F394);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21C79AA50(uint64_t a1)
{
  v2 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError, &unk_21CB9F3D8);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_21C79AABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C79B218(&qword_27CDEA888, type metadata accessor for WBSSavedAccountStoreSaveUserError, &unk_21CB9F3D8);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_21C79AB40(uint64_t a1)
{
  sub_21C79B218(&unk_27CDF8A40, type metadata accessor for OpenExternalURLOptionsKey, &unk_21CB9F90C);
  sub_21C79B218(&qword_27CDEA960, type metadata accessor for OpenExternalURLOptionsKey, &unk_21CB9F4AC);

  return sub_21CB86234();
}

uint64_t sub_21C79ABFC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21CB85584();

  *a2 = v3;
  return result;
}

uint64_t sub_21C79AC44(uint64_t a1)
{
  sub_21C79B218(&qword_27CDEA948, type metadata accessor for OptionsKey, &unk_21CB9F8C8);
  sub_21C79B218(&unk_27CDEA950, type metadata accessor for OptionsKey, &unk_21CB9F5C0);

  return sub_21CB86234();
}

uint64_t sub_21C79AD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C79B218(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError, &unk_21CB9F7B8);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_21C79AD84()
{
  v0 = sub_21CB855C4();
  v1 = MEMORY[0x21CF15270](v0);

  return v1;
}

uint64_t sub_21C79ADC0(uint64_t a1)
{
  sub_21CB855C4();
  sub_21CB854C4();
}

uint64_t sub_21C79AE14(uint64_t a1)
{
  sub_21CB855C4();
  sub_21CB86484();
  sub_21CB854C4();
  v1 = sub_21CB864D4();

  return v1;
}

uint64_t sub_21C79AEE8(void *a1, uint64_t *a2)
{
  v2 = sub_21CB855C4();
  v4 = v3;
  if (v2 == sub_21CB855C4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21CB86344();
  }

  return v7 & 1;
}

uint64_t sub_21C79AF88(uint64_t a1)
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

id sub_21C79B008(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return result;
    }
  }

  if (a3 == 2)
  {
  }

  if (a3 == 3)
  {
    return result;
  }

  return result;
}

id sub_21C79B044(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21C79B008(result, a2, a3);
  }

  return result;
}

uint64_t sub_21C79B058(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21C79B068(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21C79B07C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_21C79B07C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

id sub_21C79B094(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_21C79B0A8(a1, a2);
  }

  return a1;
}

id sub_21C79B0A8(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

unint64_t sub_21C79B0BC()
{
  result = qword_27CDEA590;
  if (!qword_27CDEA590)
  {
    sub_21CB827C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEA590);
  }

  return result;
}

uint64_t sub_21C79B218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C79B588(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C79B5A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C79B6B4(uint64_t a1, int a2)
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

uint64_t sub_21C79B6D4(uint64_t result, int a2, int a3)
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

unint64_t sub_21C79BB00()
{
  result = qword_27CDEA8C8;
  if (!qword_27CDEA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEA8C8);
  }

  return result;
}

uint64_t type metadata accessor for PMManagePasskeyOnWebsiteLink(uint64_t a1)
{
  result = qword_27CDEA9C0;
  if (!qword_27CDEA9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C79C130(uint64_t a1)
{
  sub_21C6E7F8C(319, &unk_27CDEA9D0, &type metadata for PMOpenURLInSafariViewControllerAction, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMAccount(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
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

uint64_t sub_21C79C324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C79C38C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C79C3F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C79C464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C79C4CC(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.MockData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C79C6D8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C7A230C(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_21CB9FF18);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810C4();
  }
}

uint64_t sub_21C79C820(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(aX_12);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C79C930(uint64_t result)
{
  if (*(v1 + 57) == (result & 1))
  {
    *(v1 + 57) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBA02C8);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C79CA40(uint64_t result)
{
  if (*(v1 + 58) == (result & 1))
  {
    *(v1 + 58) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBA00F0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810C4();
  }

  return result;
}

void sub_21C79CB50(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) = a1 & 1;

    sub_21C71AB9C();
  }

  else
  {
    KeyPath = swift_getKeyPath(aH_26);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810C4();
  }
}

uint64_t sub_21C79CC8C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__didShowAppOnboardingView) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__didShowAppOnboardingView) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBA02F0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C79CDA4()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_21C79CEAC, v2, v1);
}

uint64_t sub_21C79CEAC()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 184);
  if (v2 == *(v1 + 56))
  {

    *(v1 + 56) = v2;
  }

  else
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    swift_getKeyPath(aX_12);
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    *(v0 + 80) = v4;
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810C4();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21C79D004(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) == 1)
    {
      *(result + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) = 1;
      sub_21C71AB9C();
    }

    else
    {
      KeyPath = swift_getKeyPath(aH_26);
      MEMORY[0x28223BE20](KeyPath);
      sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
      sub_21CB810C4();
    }
  }

  return result;
}

void *sub_21C79D164()
{
  swift_getKeyPath(asc_21CBA02A0);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_21C79D20C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21C79D23C(v1);
}

void sub_21C79D23C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath(asc_21CBA02A0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  v5 = v4;
  v6 = sub_21CB85DD4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t sub_21C79D3BC()
{
  swift_getKeyPath(asc_21CB9FF18);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C79D474@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CB9FF18);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_21C79D534(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

uint64_t sub_21C79D59C()
{
  swift_getKeyPath(aX_12);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  return *(v0 + 56);
}

uint64_t sub_21C79D664()
{
  swift_getKeyPath(byte_21CBA02C8);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  return *(v0 + 57);
}

uint64_t sub_21C79D72C()
{
  swift_getKeyPath(byte_21CBA00F0);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  return *(v0 + 58);
}

uint64_t sub_21C79D83C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC28, &qword_21CB9FF50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_21C6EDBAC(a1, &v9[-v5], &qword_27CDEAC28, &qword_21CB9FF50);
  v7 = *a2;
  swift_getKeyPath(byte_21CB9FF58);
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810C4();

  return sub_21C6EA794(v6, &qword_27CDEAC28, &qword_21CB9FF50);
}

uint64_t sub_21C79D9BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C95C674();
  *a1 = result;
  return result;
}

uint64_t sub_21C79D9E8(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 152) = *a1;
}

uint64_t sub_21C79DA7C(const char *a1, void *a2)
{
  swift_getKeyPath(a1);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  return *(v2 + *a2);
}

id sub_21C79DB1C(void *a1)
{
  v2 = sub_21CB80BE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v19 - v8;
  v10 = [a1 activityType];
  v11 = sub_21CB855C4();
  v13 = v12;

  if (v11 == sub_21CB855C4() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_21CB86344();

    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  result = [a1 webpageURL];
  if (result)
  {
    v18 = result;
    sub_21CB80B94();

    (*(v3 + 32))(v9, v5, v2);
    sub_21C79DCF4(v9);
    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

uint64_t sub_21C79DCF4(uint64_t a1)
{
  v208 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  MEMORY[0x28223BE20](v208);
  v209 = &v188 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PMAppSourceListModel.Source(0);
  v217 = *(v3 - 8);
  v218 = v3;
  MEMORY[0x28223BE20](v3);
  v199 = &v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  MEMORY[0x28223BE20](v204);
  v211 = &v188 - v5;
  v6 = sub_21CB80BE4();
  v214 = *(v6 - 8);
  v215 = v6;
  MEMORY[0x28223BE20](v6);
  v203 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v212 = &v188 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v10 - 8);
  v202 = &v188 - v11;
  v12 = sub_21CB85C44();
  v206 = *(v12 - 8);
  v207 = v12;
  MEMORY[0x28223BE20](v12);
  v205 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v188 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v17 - 8);
  v192 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v188 = &v188 - v20;
  MEMORY[0x28223BE20](v21);
  v194 = &v188 - v22;
  MEMORY[0x28223BE20](v23);
  v191 = &v188 - v24;
  MEMORY[0x28223BE20](v25);
  v189 = &v188 - v26;
  v198 = type metadata accessor for PMAccount(0);
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v193 = &v188 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v190 = (&v188 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC88, &qword_21CBB6E70);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v188 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v188 - v34;
  v201 = sub_21CB85CA4();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v195 = &v188 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v196 = &v188 - v38;
  v39 = sub_21CB85614();
  v210 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC28, &qword_21CB9FF50);
  MEMORY[0x28223BE20](v42 - 8);
  v213 = &v188 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v188 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v188 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v188 - v51;
  MEMORY[0x28223BE20](v53);
  v216 = &v188 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC90, &qword_21CBA0160);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = (&v188 - v56);
  sub_21C9F5568(a1, (&v188 - v56));
  v58 = type metadata accessor for PMOpenURLHandler.Action(0);
  result = (*(*(v58 - 8) + 48))(v57, 1, v58);
  if (result != 1)
  {
    result = swift_getEnumCaseMultiPayload();
    switch(result)
    {
      case 1:
        v89 = v57[1];
        v90 = v218;
        v91 = v219;
        v92 = *(v219 + 16);
        v93 = v216;
        swift_storeEnumTagMultiPayload();
        (*(v217 + 56))(v93, 0, 1, v90);

        sub_21C742C88(v93);

        if (v89)
        {
          sub_21CB85604();
          v94 = sub_21CB855D4();
          v96 = v95;

          result = (*(v210 + 8))(v41, v39);
          if (v96 >> 60 != 15)
          {
            sub_21CB85C74();
            v139 = v200;
            v140 = v201;
            (*(v200 + 56))(v35, 0, 1, v201);
            v141 = v196;
            (*(v139 + 32))(v196, v35, v140);
            v142 = *(v91 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
            v143 = qword_27CDEA4C0;

            if (v143 != -1)
            {
              swift_once();
            }

            sub_21CB86544();
            sub_21C7072A8(v142, v221);

            swift_getKeyPath(a0_13);
            swift_getKeyPath(byte_21CBA0048);
            sub_21CB81DB4();

            v145 = v221;
            MEMORY[0x28223BE20](v144);
            *(&v188 - 2) = v141;
            v146 = v189;
            sub_21C968D04(sub_21C7A36B4, v145, v189);

            v147 = v197;
            v148 = v198;
            v149 = (*(v197 + 48))(v146, 1, v198);
            v150 = v191;
            if (v149 == 1)
            {
              sub_21C6EA794(v146, &unk_27CDEBE60, &unk_21CB9FF40);
              v151 = v200;
              v152 = v213;
              v153 = v141;
              v154 = v201;
              (*(v200 + 16))(v213, v153, v201);
              v155 = type metadata accessor for PMAppRootModel.StagedAccount(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v155 - 8) + 56))(v152, 0, 1, v155);
              KeyPath = swift_getKeyPath(byte_21CB9FF58);
              v218 = &v188;
              MEMORY[0x28223BE20](KeyPath);
              *(&v188 - 2) = v91;
              *(&v188 - 1) = v152;
              v221 = v91;
              sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
              sub_21CB810C4();
              sub_21C7902FC(v94, v96);

              v157 = v196;
              sub_21C6EA794(v152, &qword_27CDEAC28, &qword_21CB9FF50);
            }

            else
            {
              v179 = v146;
              v180 = v190;
              sub_21C7A3234(v179, v190, type metadata accessor for PMAccount);
              sub_21C7A316C(v180, v150, type metadata accessor for PMAccount);
              (*(v147 + 56))(v150, 0, 1, v148);
              v181 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
              swift_beginAccess();
              v182 = v194;
              sub_21C6EDBAC(v92 + v181, v194, &unk_27CDEBE60, &unk_21CB9FF40);
              LOBYTE(v181) = sub_21C7A2AE4(v182, v150);
              sub_21C6EA794(v182, &unk_27CDEBE60, &unk_21CB9FF40);
              if (v181)
              {
                v183 = swift_getKeyPath(byte_21CBA0068);
                MEMORY[0x28223BE20](v183);
                *(&v188 - 2) = v92;
                *(&v188 - 1) = v150;
                v220 = v92;
                sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
                sub_21CB810C4();

                v151 = v200;
                v154 = v201;
              }

              else
              {
                sub_21C6EDBAC(v150, v182, &unk_27CDEBE60, &unk_21CB9FF40);
                sub_21C8CA328(v182);
                v154 = v201;
                v151 = v200;
              }

              sub_21C6EA794(v150, &unk_27CDEBE60, &unk_21CB9FF40);
              v187 = v190;
              sub_21C8C7090(v190);
              sub_21C7902FC(v94, v96);
              sub_21C7A31D4(v187, type metadata accessor for PMAccount);
              v157 = v196;
            }

            return (*(v151 + 8))(v157, v154);
          }
        }

        return result;
      case 2:
        v97 = *v57;
        v98 = v57[1];
        v99 = v57[2];
        v100 = v57[3];
        sub_21C7A35D0(v99, v100);
        sub_21C7A35D0(v97, v98);
        v101 = sub_21CB80C64();
        v102 = sub_21CB80C64();
        v103 = [objc_opt_self() sharablePasswordFromEncryptedData:v101 encryptionKeyReference:v102];

        sub_21C7A34C0(v97, v98);
        sub_21C7A34C0(v99, v100);
        if (v103)
        {
          v104 = v103;
          sub_21C79D23C(v103);
        }

        sub_21C7A34C0(v99, v100);
        return sub_21C7A34C0(v97, v98);
      case 3:
        v75 = v205;
        v74 = v206;
        v76 = v207;
        (*(v206 + 32))(v205, v57, v207);
        v77 = v202;
        (*(v74 + 16))(v202, v75, v76);
        (*(v74 + 56))(v77, 0, 1, v76);
        v78 = v219;
        sub_21C7A05C0(v77);
        v79 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore;
        v80 = *(v78 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore);
        v81 = qword_27CDEA4C0;

        if (v81 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        sub_21C7073E8(v80, v221);

        swift_getKeyPath(byte_21CBA01B8);
        swift_getKeyPath(byte_21CBA01E0);
        sub_21CB81DB4();

        sub_21C71B898(v221, 1u);

        v82 = *(v78 + v79);

        sub_21CB86544();
        sub_21C7073E8(v82, v221);

        swift_getKeyPath(byte_21CBA0200);
        swift_getKeyPath(byte_21CBA0228);
        sub_21CB81DB4();

        sub_21C71B898(v221, 0);

        v83 = *(v78 + v79);

        sub_21CB86544();
        sub_21C7073E8(v83, v221);

        swift_getKeyPath(aH_45);
        swift_getKeyPath(aH_46);
        sub_21CB81DB4();

        sub_21C7A07BC(v221);
        return (*(v74 + 8))(v75, v76);
      case 4:
        (*(v214 + 32))(v212, v57, v215);
        v213 = *(v219 + 16);
        v109 = *(v213 + 8);
        swift_getKeyPath(byte_21CBA0190);
        v221 = v109;
        sub_21C71ACE4(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);

        sub_21CB810D4();

        v110 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
        swift_beginAccess();
        sub_21C6EDBAC(v109 + v110, v52, &qword_27CDEAC20, &qword_21CBAD710);

        v111 = v218;
        swift_storeEnumTagMultiPayload();
        v112 = v217;
        v210 = *(v217 + 56);
        (v210)(v49, 0, 1, v111);
        v113 = *(v204 + 48);
        v114 = v211;
        sub_21C6EDBAC(v52, v211, &qword_27CDEAC20, &qword_21CBAD710);
        sub_21C6EDBAC(v49, v114 + v113, &qword_27CDEAC20, &qword_21CBAD710);
        v115 = *(v112 + 48);
        if (v115(v114, 1, v111) == 1)
        {
          sub_21C6EA794(v49, &qword_27CDEAC20, &qword_21CBAD710);
          v116 = v211;
          sub_21C6EA794(v52, &qword_27CDEAC20, &qword_21CBAD710);
          if (v115(v116 + v113, 1, v111) == 1)
          {
            sub_21C6EA794(v116, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_35:
            v131 = v214;
            v130 = v215;
            v132 = v209;
            v133 = v212;
            (*(v214 + 16))(v209, v212, v215);
            (*(v131 + 56))(&v132[*(v208 + 20)], 1, 1, v130);
            v134 = swift_allocObject();
            swift_weakInit();

            sub_21CA1F7B4(v132, sub_21C7A3514, v134);

            sub_21C7A31D4(v132, type metadata accessor for PMInboundOTPAuthURLContext);
            (*(v131 + 8))(v133, v130);
          }
        }

        else
        {
          sub_21C6EDBAC(v114, v46, &qword_27CDEAC20, &qword_21CBAD710);
          if (v115(v114 + v113, 1, v111) != 1)
          {
            v136 = v199;
            sub_21C7A3234(v114 + v113, v199, type metadata accessor for PMAppSourceListModel.Source);
            v137 = v114;
            v138 = sub_21C918FE4(v46, v136);
            sub_21C7A31D4(v136, type metadata accessor for PMAppSourceListModel.Source);
            sub_21C6EA794(v49, &qword_27CDEAC20, &qword_21CBAD710);
            sub_21C6EA794(v52, &qword_27CDEAC20, &qword_21CBAD710);
            sub_21C7A31D4(v46, type metadata accessor for PMAppSourceListModel.Source);
            sub_21C6EA794(v137, &qword_27CDEAC20, &qword_21CBAD710);
            if (v138)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

          sub_21C6EA794(v49, &qword_27CDEAC20, &qword_21CBAD710);
          v116 = v211;
          sub_21C6EA794(v52, &qword_27CDEAC20, &qword_21CBAD710);
          sub_21C7A31D4(v46, type metadata accessor for PMAppSourceListModel.Source);
        }

        sub_21C6EA794(v116, &unk_27CDED310, &unk_21CBA0150);
LABEL_34:
        v128 = v216;
        v129 = v218;
        swift_storeEnumTagMultiPayload();
        (v210)(v128, 0, 1, v129);

        sub_21C742C88(v128);

        goto LABEL_35;
      case 5:
        v119 = v214;
        v118 = v215;
        v120 = v203;
        (*(v214 + 32))(v203, v57, v215);
        sub_21C9F8EDC(v120);
        return (*(v119 + 8))(v120, v118);
      case 6:
        v105 = v219;
        if (v57[1])
        {
          sub_21CB85604();
          v106 = sub_21CB855D4();
          v108 = v107;

          (*(v210 + 8))(v41, v39);
          if (v108 >> 60 != 15)
          {
            sub_21CB85C74();
            v158 = v200;
            v159 = v201;
            (*(v200 + 56))(v32, 0, 1, v201);
            v160 = v195;
            (*(v158 + 32))(v195, v32, v159);
            v161 = *(v105 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
            v162 = qword_27CDEA4C0;

            if (v162 != -1)
            {
              swift_once();
            }

            sub_21CB86544();
            sub_21C7072A8(v161, v221);

            swift_getKeyPath(a0_13);
            swift_getKeyPath(byte_21CBA0048);
            sub_21CB81DB4();

            v164 = v221;
            MEMORY[0x28223BE20](v163);
            *(&v188 - 2) = v160;
            v165 = v188;
            sub_21C968D04(sub_21C7A36B4, v164, v188);
            v166 = v165;

            v167 = v197;
            v168 = v198;
            v169 = (*(v197 + 48))(v166, 1, v198);
            v170 = v194;
            v171 = v192;
            v172 = v193;
            if (v169 == 1)
            {
              sub_21C6EA794(v166, &unk_27CDEBE60, &unk_21CB9FF40);
              v173 = v200;
              v174 = v213;
              v175 = v201;
              (*(v200 + 16))(v213, v160, v201);
              v176 = type metadata accessor for PMAppRootModel.StagedAccount(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v176 - 8) + 56))(v174, 0, 1, v176);
              v177 = swift_getKeyPath(byte_21CB9FF58);
              v215 = &v188;
              MEMORY[0x28223BE20](v177);
              v178 = v219;
              *(&v188 - 2) = v219;
              *(&v188 - 1) = v174;
              v221 = v178;
              sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
              v160 = v195;
              sub_21CB810C4();
              sub_21C7902FC(v106, v108);

              sub_21C6EA794(v174, &qword_27CDEAC28, &qword_21CB9FF50);
            }

            else
            {
              sub_21C7A3234(v166, v193, type metadata accessor for PMAccount);
              v184 = *(v219 + 16);
              sub_21C7A316C(v172, v171, type metadata accessor for PMAccount);
              (*(v167 + 56))(v171, 0, 1, v168);
              v185 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
              swift_beginAccess();
              sub_21C6EDBAC(v184 + v185, v170, &unk_27CDEBE60, &unk_21CB9FF40);
              LOBYTE(v185) = sub_21C7A2AE4(v170, v171);
              sub_21C6EA794(v170, &unk_27CDEBE60, &unk_21CB9FF40);
              if (v185)
              {
                v186 = swift_getKeyPath(byte_21CBA0068);
                MEMORY[0x28223BE20](v186);
                *(&v188 - 2) = v184;
                *(&v188 - 1) = v171;
                v220 = v184;
                sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
                v160 = v195;
                sub_21CB810C4();
                sub_21C7902FC(v106, v108);
              }

              else
              {
                sub_21C6EDBAC(v171, v170, &unk_27CDEBE60, &unk_21CB9FF40);
                sub_21C8CA328(v170);
                sub_21C7902FC(v106, v108);
              }

              sub_21C7A31D4(v193, type metadata accessor for PMAccount);
              sub_21C6EA794(v171, &unk_27CDEBE60, &unk_21CB9FF40);
              v173 = v200;
              v175 = v201;
            }

            (*(v173 + 8))(v160, v175);
          }
        }

        v73 = v216;
        v72 = v218;
        goto LABEL_58;
      case 7:
        v121 = v57[2];
        v122 = v57[3];
        v123 = v213;
        *v213 = *v57;
        *(v123 + 16) = v121;
        *(v123 + 24) = v122;
        v124 = type metadata accessor for PMAppRootModel.StagedAccount(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
        v125 = swift_getKeyPath(byte_21CB9FF58);
        MEMORY[0x28223BE20](v125);
        v126 = v219;
        *(&v188 - 2) = v219;
        *(&v188 - 1) = v123;
        v221 = v126;
        sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
        sub_21CB810C4();

        sub_21C6EA794(v123, &qword_27CDEAC28, &qword_21CB9FF50);
        v69 = *(v126 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
        goto LABEL_28;
      case 8:
        return result;
      case 9:
        v84 = sub_21CB858E4();
        (*(*(v84 - 8) + 56))(v16, 1, 1, v84);
        sub_21CB858B4();

        v86 = sub_21CB858A4();
        v87 = swift_allocObject();
        v88 = MEMORY[0x277D85700];
        v87[2] = v86;
        v87[3] = v88;
        v87[4] = v85;
        sub_21C98B308(0, 0, v16, &unk_21CBA0298, v87);

      case 10:
        v72 = v218;
        v73 = v216;
        goto LABEL_58;
      case 11:
        v72 = v218;
        v73 = v216;
        goto LABEL_58;
      case 12:
        v72 = v218;
        v73 = v216;
LABEL_58:
        swift_storeEnumTagMultiPayload();
        (*(v217 + 56))(v73, 0, 1, v72);

        sub_21C742C88(v73);

      case 13:
        v117 = *(v219 + 16);
        if (*(v117 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet) == 1)
        {
          *(v117 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet) = 1;
        }

        else
        {
          v135 = swift_getKeyPath(byte_21CBA0168);
          MEMORY[0x28223BE20](v135);
          *(&v188 - 2) = v117;
          *(&v188 - 8) = 1;
          v221 = v117;
          sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
          sub_21CB810C4();
        }

        return result;
      case 14:
        v70 = v218;
        v71 = v216;
        swift_storeEnumTagMultiPayload();
        (*(v217 + 56))(v71, 0, 1, v70);

        sub_21C742C88(v71);

        return sub_21C8C77C0();
      default:
        v60 = *v57;
        v61 = v57[1];
        v62 = v218;
        v63 = v219;
        v64 = v216;
        swift_storeEnumTagMultiPayload();
        (*(v217 + 56))(v64, 0, 1, v62);

        v65 = v63;
        sub_21C742C88(v64);

        v66 = v213;
        *v213 = v60;
        *(v66 + 8) = v61;
        v67 = type metadata accessor for PMAppRootModel.StagedAccount(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
        v68 = swift_getKeyPath(byte_21CB9FF58);
        MEMORY[0x28223BE20](v68);
        *(&v188 - 2) = v65;
        *(&v188 - 1) = v66;
        v221 = v65;
        sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
        sub_21CB810C4();

        sub_21C6EA794(v66, &qword_27CDEAC28, &qword_21CB9FF50);
        v69 = *(v65 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
LABEL_28:
        v127 = qword_27CDEA4C0;

        if (v127 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        sub_21C7072A8(v69, v221);

        swift_getKeyPath(a0_13);
        swift_getKeyPath(byte_21CBA0048);
        sub_21CB81DB4();

        sub_21C71C010();
    }
  }

  return result;
}

uint64_t sub_21C7A01AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_21CB858B4();
  v4[4] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21C7A0244, v6, v5);
}

uint64_t sub_21C7A0244()
{
  if ([objc_opt_self() isOngoingCredentialSharingEnabled])
  {
    v0[7] = *(v0[3] + 16);
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_21C7A0428;

    return sub_21CA857C4();
  }

  else
  {
    v3 = v0[3];

    if (*(v3 + 57) == 1)
    {
      *(v3 + 57) = 1;
    }

    else
    {
      v4 = v0[3];
      swift_getKeyPath(byte_21CBA02C8);
      v5 = swift_task_alloc();
      *(v5 + 16) = v4;
      *(v5 + 24) = 1;
      v0[2] = v4;
      sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
      sub_21CB810C4();
    }

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21C7A0428(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_21C7A0550, v4, v3);
}

uint64_t sub_21C7A0550()
{
  v1 = *(v0 + 72);

  sub_21C8C7608(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C7A05C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v6, v5, &unk_27CDF20B0, &unk_21CBA0090);
  v7 = sub_21C7A2DC8(v5, a1);
  sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
  if (v7)
  {
    KeyPath = swift_getKeyPath(byte_21CBA00C8);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810C4();
  }

  else
  {
    swift_beginAccess();
    sub_21C7A32E8(a1, v1 + v6, &unk_27CDF20B0, &unk_21CBA0090);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
}

void sub_21C7A07BC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = v11 - v6;
  if (a1)
  {
    swift_getKeyPath(byte_21CBA00C8, v5);
    v11[3] = v2;
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
    sub_21CB810D4();

    v8 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent;
    swift_beginAccess();
    sub_21C6EDBAC(v2 + v8, v7, &unk_27CDF20B0, &unk_21CBA0090);
    v9 = sub_21CB85C44();
    LODWORD(v8) = (*(*(v9 - 8) + 48))(v7, 1, v9);
    sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
    if (v8 != 1)
    {
      if (*(v2 + 58) == 1)
      {
        *(v2 + 58) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath(byte_21CBA00F0);
        MEMORY[0x28223BE20](KeyPath);
        v11[-2] = v2;
        LOBYTE(v11[-1]) = 1;
        v11[2] = v2;
        sub_21CB810C4();
      }
    }
  }
}

uint64_t sub_21C7A09F4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C6EDBAC(a1, v5, &unk_27CDEBE60, &unk_21CB9FF40);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
    }

    else
    {
      sub_21C7A3234(v5, v9, type metadata accessor for PMAccount);
      sub_21C8C7090(v9);
      sub_21C7A31D4(v9, type metadata accessor for PMAccount);
    }
  }

  return result;
}

uint64_t sub_21C7A0BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for PMAccount(0);
  sub_21C7A316C(a1 + *(v14 + 24), v13, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7A31D4(v13, type metadata accessor for PMAccount.Storage);
    v15 = 0;
  }

  else
  {
    v16 = *v13;
    v17 = [v16 protectionSpaces];

    sub_21C6E8F4C(0, &qword_27CDEAC38, 0x277CCAD08);
    v18 = sub_21CB85824();

    v33 = a5;
    v34 = v5;
    v31[1] = a1;
    v32 = a4;
    if (v18 >> 62)
    {
LABEL_29:
      v35 = v18 & 0xFFFFFFFFFFFFFF8;
      v36 = sub_21CB85FA4();
    }

    else
    {
      v35 = v18 & 0xFFFFFFFFFFFFFF8;
      v36 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    while (1)
    {
      if (v36 == v19)
      {
        goto LABEL_19;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CF15BD0](v19, v18);
        if (__OFADD__(v19, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:

          v15 = 0;
          return v15 & 1;
        }
      }

      else
      {
        if (v19 >= *(v35 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        v20 = *(v18 + 8 * v19 + 32);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_18;
        }
      }

      v21 = v20;
      v22 = [v21 host];
      v23 = sub_21CB855C4();
      v25 = v24;

      if (v23 == a2 && v25 == a3)
      {
        break;
      }

      v27 = sub_21CB86344();

      ++v19;
      if (v27)
      {
        goto LABEL_21;
      }
    }

LABEL_21:

    v28 = PMAccount.userName.getter();
    if (v29)
    {
      if (v28 == v32 && v29 == v33)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_21CB86344();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15 & 1;
}

uint64_t sub_21C7A0EB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB85CA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7C61D0(v6);
  v7 = MEMORY[0x21CF15760](v6, a2);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_21C7A0FC8@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath(a1);
  v12 = v5;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  v10 = *a2;
  swift_beginAccess();
  return sub_21C6EDBAC(v12 + v10, a5, a3, a4);
}

uint64_t sub_21C7A10A8@<X0>(uint64_t *a1@<X0>, const char *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath(a2);
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  v11 = *a3;
  swift_beginAccess();
  return sub_21C6EDBAC(v10 + v11, a6, a4, a5);
}

uint64_t sub_21C7A118C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_21C7A32E8(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

BOOL sub_21C7A120C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PMSharingGroup(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a2 + 16);
  do
  {
    v9 = v7;
    if (v8 == v7)
    {
      break;
    }

    sub_21C7A316C(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7++, v6, type metadata accessor for PMSharingGroup);
    sub_21CB85C44();
    sub_21C71ACE4(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
    v10 = sub_21CB85574();
    sub_21C7A31D4(v6, type metadata accessor for PMSharingGroup);
  }

  while ((v10 & 1) == 0);
  return v8 != v9;
}

BOOL sub_21C7A1394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = 0;
  v11 = *(a3 + 16);
  do
  {
    v12 = v10;
    if (v11 == v10)
    {
      break;
    }

    sub_21C7A316C(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9, type metadata accessor for PMAccount);
    if (*v9 == a1 && v9[1] == a2)
    {
      sub_21C7A31D4(v9, type metadata accessor for PMAccount);
      return v11 != v12;
    }

    ++v10;
    v14 = sub_21CB86344();
    sub_21C7A31D4(v9, type metadata accessor for PMAccount);
  }

  while ((v14 & 1) == 0);
  return v11 != v12;
}

uint64_t sub_21C7A1508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMWiFiNetwork(0) - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a3 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);
  while (1)
  {
    sub_21C7A316C(v11, v9, type metadata accessor for PMWiFiNetwork);
    v13 = *v9 == a1 && v9[1] == a2;
    if (v13 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    sub_21C7A31D4(v9, type metadata accessor for PMWiFiNetwork);
    v11 += v12;
    if (!--v10)
    {
      return 0;
    }
  }

  sub_21C7A31D4(v9, type metadata accessor for PMWiFiNetwork);
  return 1;
}

id sub_21C7A1664(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if (*a1)
  {
    if (*a1 == 1)
    {
      v5 = type metadata accessor for PMAppSourceListModel.Source(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

      sub_21C742C88(v4);

      return sub_21C8C7D9C();
    }

    else
    {
      v7 = type metadata accessor for PMAppSourceListModel.Source(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v7 - 8) + 56))(v4, 0, 1, v7);

      sub_21C742C88(v4);
    }
  }

  else
  {
    result = [objc_opt_self() shouldAllowAddingNewPasswords];
    if (result)
    {
      return sub_21C8C77C0();
    }
  }

  return result;
}

uint64_t sub_21C7A1808(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_21C7A1864()
{

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__stagedAccount, &qword_27CDEAC28, &qword_21CB9FF50);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent, &unk_27CDF20B0, &unk_21CBA0090);
  v1 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21C7A196C()
{
  sub_21C7A1864();

  return swift_deallocClassInstance();
}

uint64_t sub_21C7A1A98@<X0>(uint64_t *a1@<X0>, const char *a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath(a2);
  sub_21C71ACE4(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  *a4 = *(v6 + *a3);
}

uint64_t sub_21C7A1B50@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a8_5);
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21C7A212C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21C71DD5C(v4, v5);
}

uint64_t sub_21C7A1C3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_21C7A2124;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath(a8_5);
  MEMORY[0x28223BE20](KeyPath);
  sub_21C71DD5C(v2, v3);
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810C4();
  sub_21C71B710(v5, v4);
}

uint64_t sub_21C7A1D98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CB9FF80);
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
}

uint64_t sub_21C7A1E50(unint64_t *a1)
{
  v1 = *a1;

  return sub_21C718AB8(v1);
}

uint64_t sub_21C7A1E84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aP_14);
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);
}

uint64_t sub_21C7A1F3C(unint64_t *a1)
{
  v1 = *a1;

  return sub_21C8C7C18(v1);
}

uint64_t sub_21C7A1F70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA0068);
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C7A2070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_21C6EDBAC(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_21C7A2154(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_21CB86484();

    sub_21CB854C4();
    v16 = sub_21CB864D4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_21CB86344() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C7A230C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_21CB81CC4();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_27CDEAC10;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_21C71ACE4(&qword_27CDEAC10, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

          v19 = sub_21CB85484();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_21C71ACE4(&qword_27CDEAC18, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
          while ((sub_21CB85574() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_27CDEAC10;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_21C7A29DC(v8, v7);
}

uint64_t sub_21C7A261C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v36 = result;
    v13 = (*(result + 48) + 112 * (v10 | (v3 << 6)));
    v15 = v13[1];
    v14 = v13[2];
    v44 = *v13;
    v45 = v15;
    v46 = v14;
    v16 = v13[6];
    v18 = v13[3];
    v17 = v13[4];
    *v49 = v13[5];
    *&v49[16] = v16;
    v47 = v18;
    v48 = v17;
    sub_21CB86484();
    sub_21C7A33F0(&v44, &v38);
    sub_21C9DC744(v37);
    v19 = sub_21CB864D4();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_50:
      sub_21C7A344C(&v44);
      return 0;
    }

    v35 = v8;
    v22 = ~v20;
    v23 = v44;
    while (1)
    {
      v24 = (*(a2 + 48) + 112 * v21);
      v26 = v24[1];
      v25 = v24[2];
      v38 = *v24;
      v39 = v26;
      v40 = v25;
      v27 = v24[6];
      v29 = v24[3];
      v28 = v24[4];
      *v43 = v24[5];
      *&v43[16] = v27;
      v41 = v29;
      v42 = v28;
      if (*(&v38 + 1))
      {
        if (!*(&v23 + 1) || v38 != v23 && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(&v23 + 1))
      {
        goto LABEL_16;
      }

      if (*(&v39 + 1))
      {
        if (!*(&v45 + 1) || v39 != v45 && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(&v45 + 1))
      {
        goto LABEL_16;
      }

      if (v40 != v46 && (sub_21CB86344() & 1) == 0 || v41 != v47 && (sub_21CB86344() & 1) == 0 || v42 != v48 && (sub_21CB86344() & 1) == 0 || v43[0] != (v49[0] & 1) || v43[1] != v49[1] || v43[2] != v49[2])
      {
        goto LABEL_16;
      }

      if (*&v43[16])
      {
        if (!*&v49[16] || *&v43[8] != *&v49[8] && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*&v49[16])
      {
        goto LABEL_16;
      }

      v30 = *&v49[24];
      if (*&v43[24])
      {
        break;
      }

      if (!*&v49[24])
      {
        goto LABEL_47;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    if (!*&v49[24])
    {
      goto LABEL_16;
    }

    v33 = *&v43[24];
    sub_21C6E8F4C(0, &qword_27CDF8A90, 0x277CBDA58);
    sub_21C7A33F0(&v38, v37);
    v32 = v30;
    v34 = v33;
    v31 = sub_21CB85DD4();
    sub_21C7A344C(&v38);

    if ((v31 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_47:
    sub_21C7A344C(&v44);
    v8 = v35;
    result = v36;
  }

  while (v7);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C7A29DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_21CB85FA4();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_21CB85FF4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C7A2AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_21C6EDBAC(a1, &v20 - v12, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C6EDBAC(a2, &v13[v15], &unk_27CDEBE60, &unk_21CB9FF40);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21C6EDBAC(v13, v10, &unk_27CDEBE60, &unk_21CB9FF40);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_21C7A3234(&v13[v15], v7, type metadata accessor for PMAccount);
      v18 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_21C7A31D4(v7, type metadata accessor for PMAccount);
      sub_21C7A31D4(v10, type metadata accessor for PMAccount);
      sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
      v17 = !v18;
      return v17 & 1;
    }

    sub_21C7A31D4(v10, type metadata accessor for PMAccount);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v13, &qword_27CDEAC50, &unk_21CBA00A0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21C7A2DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21C6EDBAC(a1, &v21 - v12, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2, &v13[v15], &unk_27CDF20B0, &unk_21CBA0090);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21C6EDBAC(v13, v10, &unk_27CDF20B0, &unk_21CBA0090);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21C71ACE4(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v18 = sub_21CB85574();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v13, &qword_27CDEAC40, &qword_21CBA1A40);
    v17 = 1;
    return v17 & 1;
  }

  sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21C7A316C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7A31D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7A3234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7A32E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_21C7A3394(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21C7A34C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21C7A351C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C7A01AC(a1, v4, v5, v6);
}

uint64_t sub_21C7A35D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_21C7A3624()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_21C7A3748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21C7A37E0, v6, v5);
}

uint64_t sub_21C7A37E0()
{
  type metadata accessor for PMOTPAuthHandlerManager(0);
  swift_allocObject();
  *(v0 + 48) = sub_21CA92720();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_21C7A3890;

  return sub_21CA90F70();
}

uint64_t sub_21C7A3890()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21C7A39B0, v3, v2);
}

id sub_21C7A39B0()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;

    v3 = sub_21CB80B74();
    sub_21C73181C(MEMORY[0x277D84F90]);
    v4 = sub_21CB85464();

    [v2 openURL:v3 withOptions:v4];

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

PMOTPAuthHandlerMigration __swiftcall PMOTPAuthHandlerMigration.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PMOTPAuthHandlerMigration()
{
  result = qword_27CDEAC98;
  if (!qword_27CDEAC98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEAC98);
  }

  return result;
}

id sub_21C7A3C8C(uint64_t a1)
{
  v2 = sub_21CB80BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  result = [objc_opt_self() isPasswordsAppInstalled];
  if (result)
  {
    v10 = result;
    v11 = sub_21CB858E4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    (*(v3 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    sub_21CB858B4();
    v12 = sub_21CB858A4();
    v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    *(v14 + 16) = v12;
    *(v14 + 24) = v15;
    (*(v3 + 32))(v14 + v13, v5, v2);
    sub_21C98B308(0, 0, v8, &unk_21CBA0320, v14);

    return v10;
  }

  return result;
}

uint64_t sub_21C7A3E9C(uint64_t a1)
{
  v4 = *(sub_21CB80BE4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C7A3748(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C7A3F8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBA0658);
  sub_21C705CB4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__didShowAppOnboardingView);
  return result;
}

uint64_t (*sub_21C7A4068())()
{
  sub_21C726188();
  sub_21CB82F94();
  *(swift_allocObject() + 16) = v1;
  return sub_21C7A40D4;
}

uint64_t sub_21C7A4134(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C725C54(a2, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  sub_21C725254(v5, v9, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  sub_21CB85084();

  sub_21C8C7090(v9);

  return sub_21C719000(v9, type metadata accessor for PMAccount);
}

uint64_t sub_21C7A4304(char *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  sub_21CB85084();
  v3 = v1;
  sub_21C7A1664(&v3);
}

double sub_21C7A4364@<D0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBA0658);
  sub_21CB850B4();

  (*(v3 + 8))(v5, v2);
  return sub_21C858AC0(v7[1], v7[2], v8, a1);
}

uint64_t sub_21C7A4478(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC28, &qword_21CB9FF50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  sub_21CB85084();
  v5 = v12;
  v6 = a1[1];
  *v4 = *a1;
  v4[1] = v6;
  v7 = type metadata accessor for PMAppRootModel.StagedAccount(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  swift_getKeyPath(byte_21CBA0630);
  v10 = v5;
  v11 = v4;
  v12 = v5;
  sub_21C705CB4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel, &unk_21CB9FDE8);

  sub_21CB810C4();

  return sub_21C6EA794(v4, &qword_27CDEAC28, &qword_21CB9FF50);
}

unint64_t sub_21C7A4648()
{
  result = qword_27CDEAD38;
  if (!qword_27CDEAD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD08, &qword_21CBA0410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD40, &qword_21CBA0440);
    type metadata accessor for PMGlobalAnimationNamespaceContainer(255);
    sub_21C7A4758();
    sub_21C705CB4(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD38);
  }

  return result;
}

unint64_t sub_21C7A4758()
{
  result = qword_27CDEAD48;
  if (!qword_27CDEAD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD40, &qword_21CBA0440);
    sub_21C725AC0();
    sub_21C725BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD48);
  }

  return result;
}

unint64_t sub_21C7A47E4()
{
  result = qword_27CDEAD80;
  if (!qword_27CDEAD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD78, &qword_21CBA0460);
    sub_21C7254B4();
    sub_21C725620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD80);
  }

  return result;
}

uint64_t sub_21C7A4874(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PMAppRootView(0);

  return sub_21C7A4134(a1, a2);
}

uint64_t sub_21C7A48F4(char *a1)
{
  type metadata accessor for PMAppRootView(0);

  return sub_21C7A4304(a1);
}

double sub_21C7A4990@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMAppRootView(0);

  return sub_21C7A4364(a1);
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for PMAppRootView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB81FE4();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C7A4B98(void *a1)
{
  type metadata accessor for PMAppRootView(0);

  return sub_21C7A4478(a1);
}

unint64_t sub_21C7A4C24()
{
  result = qword_27CDEAE30;
  if (!qword_27CDEAE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEADF8, &qword_21CBA04C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD28, &qword_21CBA0430);
    sub_21CB81FE4();
    sub_21C6EADEC(&qword_27CDEADE8, &qword_27CDEAD28, &qword_21CBA0430, MEMORY[0x277CDDB50]);
    sub_21C705CB4(&qword_27CDEADF0, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEAE38, &qword_27CDEAE40, &unk_21CBA0680, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAE30);
  }

  return result;
}

char *sub_21C7A4DA0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v120 = a8;
  v121 = a3;
  v128 = a7;
  v123 = a5;
  v124 = a6;
  v122 = a4;
  v125 = a2;
  v111 = a1;
  v127 = a9;
  v11 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v11 - 8);
  v93 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v96);
  v97 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v94);
  v98 = (&v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PMAccount(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v126 = (&v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF40, &qword_21CBA07C0);
  v118 = *(v20 - 8);
  v119 = v20;
  MEMORY[0x28223BE20](v20);
  v117 = &v92 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF38, &qword_21CBA1CA0);
  v115 = *(v22 - 8);
  v116 = v22;
  MEMORY[0x28223BE20](v22);
  v114 = &v92 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF30, &unk_21CBA07B0);
  v112 = *(v24 - 8);
  v113 = v24;
  MEMORY[0x28223BE20](v24);
  v110 = &v92 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF28, &qword_21CBA07A8);
  v108 = *(v26 - 8);
  v109 = v26;
  MEMORY[0x28223BE20](v26);
  v107 = &v92 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v105 = *(v28 - 8);
  v106 = v28;
  MEMORY[0x28223BE20](v28);
  v104 = &v92 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v102 = *(v30 - 8);
  v103 = v30;
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v100 = *(v33 - 8);
  v101 = v33;
  MEMORY[0x28223BE20](v33);
  v99 = &v92 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF18, &qword_21CBA0798);
  v36 = *(v35 - 8);
  *&v37 = MEMORY[0x28223BE20](v35).n128_u64[0];
  v39 = &v92 - v38;
  *(v9 + 2) = swift_getKeyPath(byte_21CBA0990, v37);
  *(v9 + 3) = swift_getKeyPath(aP_30);
  v40 = MEMORY[0x277D84FA0];
  *(v9 + 44) = 0;
  *(v9 + 49) = v40;
  v41 = *(v18 + 56);
  v41(&v9[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection], 1, 1, v17);
  v42 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__selectedItem;
  v129 = 0;
  v130 = 0;
  LOBYTE(v131) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC1C0, &qword_21CBA3D50);
  sub_21CB81D74();
  (*(v36 + 32))(&v10[v42], v39, v35);
  v95 = v17;
  v41(&v10[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount], 1, 1, v17);
  v43 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__searchText;
  v129 = 0;
  v130 = 0xE000000000000000;
  v44 = v99;
  sub_21CB81D74();
  (*(v100 + 32))(&v10[v43], v44, v101);
  v45 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__listedAccounts;
  v46 = MEMORY[0x277D84F90];
  v129 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB81D74();
  v47 = v103;
  v48 = *(v102 + 32);
  v48(&v10[v45], v32, v103);
  v49 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accountsForPasskeyAutoFill;
  v129 = v46;
  sub_21CB81D74();
  v48(&v10[v49], v32, v47);
  v50 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accountsWithPasswordsMatchingHintStrings;
  v129 = v46;
  sub_21CB81D74();
  v48(&v10[v50], v32, v47);
  v51 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accounts;
  v129 = v46;
  sub_21CB81D74();
  v48(&v10[v51], v32, v47);
  v52 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__expectingNewAccount;
  LOBYTE(v129) = 0;
  v53 = v104;
  sub_21CB81D74();
  v54 = v106;
  v55 = *(v105 + 32);
  v55(&v10[v52], v53, v106);
  v56 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__addAccountSheetModel;
  v129 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  v57 = v107;
  sub_21CB81D74();
  (*(v108 + 32))(&v10[v56], v57, v109);
  v58 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__deleteAccountAlertConfiguration;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAEF8, &unk_21CBA0740);
  v59 = v110;
  sub_21CB81D74();
  (*(v112 + 32))(&v10[v58], v59, v113);
  v60 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__presentedDetailsAccountID;
  v129 = 0;
  v130 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  v61 = v114;
  sub_21CB81D74();
  (*(v115 + 32))(&v10[v60], v61, v116);
  v62 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__showAddSiteAlert;
  LOBYTE(v129) = 0;
  sub_21CB81D74();
  v55(&v10[v62], v53, v54);
  v63 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__showGeneratedPasswordsSheet;
  LOBYTE(v129) = 0;
  sub_21CB81D74();
  v55(&v10[v63], v53, v54);
  *&v10[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_autoFillPasskeys] = v46;
  *&v10[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions] = 0;
  v64 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_authenticationServicesAgentProxy;
  *&v10[v64] = [objc_allocWithZone(MEMORY[0x277D499C8]) init];
  *&v10[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_maxNumberOfHistoryItemsInSection] = 2;
  v65 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__selectedHistoryItem;
  v129 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF10, &qword_21CBA0750);
  v66 = v117;
  sub_21CB81D74();
  (*(v118 + 32))(&v10[v65], v66, v119);
  v67 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection;
  swift_beginAccess();
  sub_21C7AE640(v128, &v10[v67]);
  swift_endAccess();
  v68 = &v10[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_didSelectHistoryItem];
  v69 = v127;
  *v68 = v120;
  v68[1] = v69;
  v70 = v111;
  memcpy(v10 + 32, v111, 0x140uLL);
  v71 = v122;
  *(v10 + 45) = v121;
  *(v10 + 46) = v71;
  v72 = v124;
  *(v10 + 47) = v123;
  *(v10 + 48) = v72;

  sub_21C7AE6B0(v70, &v129);
  sub_21C7A5B24();
  sub_21C7A5FE4();
  v73 = v70;
  v74 = v70[36];
  if (v74)
  {
    v75 = v70[35];

    sub_21C7A6110(v75, v74);
  }

  v76 = v70[37];
  if (v76)
  {
    v77 = v98;
    *v98 = v76;
    swift_storeEnumTagMultiPayload();
    v78 = v95;
    v79 = v126;
    v80 = (v126 + *(v95 + 28));
    *v80 = 0u;
    v80[1] = 0u;
    sub_21C7AE7C8(v77, v79 + *(v78 + 24), type metadata accessor for PMAccount.Storage);
    v81 = *(v78 + 20);
    v82 = v76;
    sub_21C7C8A3C(v79 + v81);
    v83 = v97;
    sub_21C7AE7C8(v79 + v81, v97, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = v93;
      sub_21C7AE944(v83, v93, type metadata accessor for PMAccount.SIWAUniqueID);
      v85 = sub_21C7CE99C();
      v87 = v86;
      v88 = type metadata accessor for PMAccount.SIWAUniqueID;
    }

    else
    {
      v84 = v92;
      sub_21C7AE944(v83, v92, type metadata accessor for PMAccount.CombinedUniqueID);
      v85 = sub_21C7CE408();
      v87 = v89;
      v88 = type metadata accessor for PMAccount.CombinedUniqueID;
    }

    sub_21C719060(v84, v88);
    sub_21C719060(v77, type metadata accessor for PMAccount.Storage);
    v90 = v126;
    *v126 = v85;
    *(v90 + 8) = v87;

    sub_21C719060(v90, type metadata accessor for PMAccount);
    swift_getKeyPath(aP_31);
    swift_getKeyPath(a0_24);
    v129 = v85;
    v130 = v87;

    sub_21CB81DC4();

    sub_21C7ADFB8(v73);
  }

  else
  {

    sub_21C7ADFB8(v70);
  }

  sub_21C6EA794(v128, &unk_27CDEBE60, &unk_21CB9FF40);
  return v10;
}

uint64_t sub_21C7A5B24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = *(v0 + 16);
  v7 = qword_27CDEA4C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v6, v19);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C6EADEC(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590, MEMORY[0x277CBCEC8]);
  sub_21CB81E04();

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v8 = *(v1 + 16);

  sub_21CB86544();
  v9 = sub_21C7072A8(v8, v19);

  v10 = *(v9 + 32);

  v19 = v10;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF80, &unk_21CBA0A30);
  v11 = MEMORY[0x277CBCE20];
  sub_21C6EADEC(&qword_27CDEAF88, &qword_27CDEAF80, &unk_21CBA0A30, MEMORY[0x277CBCE20]);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v12 = *(v1 + 16);

  sub_21CB86544();
  v13 = sub_21C7072A8(v12, v19);

  v14 = *(v13 + 40);

  v19 = v14;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21C7AE728;
  *(v16 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C6EADEC(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0, v11);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();
}

void sub_21C7A5FE4()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x277D49D80];
  v2 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_21C7AE70C;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21C7ADA6C;
  v5[3] = &block_descriptor_58;
  v3 = _Block_copy(v5);

  v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

uint64_t sub_21C7A6110(unint64_t a1, unint64_t a2)
{
  swift_getKeyPath(byte_21CBA07C8);
  swift_getKeyPath(byte_21CBA07F0);
  sub_21CB81DB4();

  swift_getKeyPath(byte_21CBA07C8);
  swift_getKeyPath(byte_21CBA07F0);

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBA07C8);
  swift_getKeyPath(byte_21CBA07F0);
  sub_21CB81DB4();

  if (v6 == __PAIR128__(a2, a1))
  {
  }

  else
  {
    v5 = sub_21CB86344();

    if ((v5 & 1) == 0)
    {
      return sub_21C7A6364();
    }
  }

  return result;
}

uint64_t sub_21C7A6278()
{
  swift_getKeyPath(byte_21CBA0930);
  swift_getKeyPath(byte_21CBA0958);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7A62F0()
{
  swift_getKeyPath(byte_21CBA07C8);
  swift_getKeyPath(byte_21CBA07F0);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7A6364()
{
  v1 = v0;
  v89 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v89);
  v3 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v80 - v5);
  v88 = type metadata accessor for PMAccount(0);
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v80 - v9;
  MEMORY[0x28223BE20](v10);
  v84 = &v80 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v80 - v20;
  swift_getKeyPath(byte_21CBA07C8, v19);
  swift_getKeyPath(byte_21CBA07F0);
  sub_21CB81DB4();

  v23 = aBlock;
  v22 = v92;

  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v23 & 0xFFFFFFFFFFFFLL;
  }

  v86 = v1;
  if (!v24)
  {
    v83 = *(v1 + 184);
    swift_getKeyPath(byte_21CBA0810);
    swift_getKeyPath(byte_21CBA0838);
    sub_21CB81DB4();

    v14 = aBlock;
    v37 = *(aBlock + 2);
    v26 = v1;
    if (v37)
    {
      v84 = v17;
      v38 = 0;
      v39 = MEMORY[0x277D84F90];
      do
      {
        if (v38 >= *(v14 + 2))
        {
          goto LABEL_69;
        }

        v40 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v41 = *(v90 + 72);
        sub_21C7AE7C8(&v14[v40 + v41 * v38], v21, type metadata accessor for PMAccount);
        sub_21C7AE7C8(&v21[*(v88 + 24)], v6, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719060(v6, type metadata accessor for PMAccount.Storage);
          sub_21C719060(v21, type metadata accessor for PMAccount);
        }

        else
        {
          v3 = *v6;
          v42 = [*v6 credentialTypes];

          if ((v42 & v83) != 0)
          {
            sub_21C7AE944(v21, v84, type metadata accessor for PMAccount);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v39;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C7B0C4C(0, *(v39 + 16) + 1, 1);
              v39 = aBlock;
            }

            v45 = *(v39 + 16);
            v44 = *(v39 + 24);
            v3 = v45 + 1;
            if (v45 >= v44 >> 1)
            {
              sub_21C7B0C4C((v44 > 1), v45 + 1, 1);
              v39 = aBlock;
            }

            *(v39 + 16) = v3;
            sub_21C7AE944(v84, v39 + v40 + v45 * v41, type metadata accessor for PMAccount);
            v26 = v86;
          }

          else
          {
            sub_21C719060(v21, type metadata accessor for PMAccount);
            v26 = v86;
          }
        }

        ++v38;
      }

      while (v37 != v38);
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    swift_getKeyPath(byte_21CBA0858);
    swift_getKeyPath(aH_47);
    aBlock = v39;

    goto LABEL_37;
  }

  v21 = *(v1 + 16);
  v25 = qword_27CDEA4C0;

  v26 = v1;
  if (v25 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    sub_21CB86544();
    v81 = sub_21C7072A8(v21, aBlock);

    v83 = *(v26 + 184);
    swift_getKeyPath(byte_21CBA0810);
    swift_getKeyPath(byte_21CBA0838);
    sub_21CB81DB4();

    v21 = aBlock;
    v27 = *(aBlock + 2);
    if (v27)
    {
      v28 = 0;
      v29 = MEMORY[0x277D84F90];
      v82 = *(aBlock + 2);
      while (v28 < *(v21 + 2))
      {
        v30 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v31 = *(v90 + 72);
        sub_21C7AE7C8(&v21[v30 + v31 * v28], v14, type metadata accessor for PMAccount);
        sub_21C7AE7C8(&v14[*(v88 + 24)], v3, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719060(v3, type metadata accessor for PMAccount.Storage);
          sub_21C719060(v14, type metadata accessor for PMAccount);
        }

        else
        {
          v32 = *v3;
          v33 = [*v3 credentialTypes];

          if ((v33 & v83) != 0)
          {
            sub_21C7AE944(v14, v84, type metadata accessor for PMAccount);
            v34 = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v29;
            if ((v34 & 1) == 0)
            {
              sub_21C7B0C4C(0, *(v29 + 16) + 1, 1);
              v29 = aBlock;
            }

            v36 = *(v29 + 16);
            v35 = *(v29 + 24);
            if (v36 >= v35 >> 1)
            {
              sub_21C7B0C4C((v35 > 1), v36 + 1, 1);
              v29 = aBlock;
            }

            *(v29 + 16) = v36 + 1;
            sub_21C7AE944(v84, v29 + v30 + v36 * v31, type metadata accessor for PMAccount);
            v26 = v86;
            v27 = v82;
          }

          else
          {
            sub_21C719060(v14, type metadata accessor for PMAccount);
            v26 = v86;
          }
        }

        if (v27 == ++v28)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_68;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_32:

    swift_getKeyPath(byte_21CBA07C8);
    swift_getKeyPath(byte_21CBA07F0);
    sub_21CB81DB4();

    v47 = aBlock;
    v46 = v92;
    v48 = v81;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = *(v48 + 24);
      ObjectType = swift_getObjectType();
      v52 = (*(v50 + 48))(ObjectType, v50);
      swift_unknownObjectRelease();
      Strong = [v52 associatedDomainsManager];
    }

    matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v29, v47, v46, Strong);
    v14 = v54;

    swift_getKeyPath(byte_21CBA0858);
    swift_getKeyPath(aH_47);
    aBlock = matched;

LABEL_37:
    sub_21CB81DC4();
    v55 = MEMORY[0x277D84F90];
    v56 = v85;
    if (*(v26 + 256) == 1)
    {
      if (*(v26 + 304))
      {
        v57 = [objc_opt_self() mainBundle];
        v58 = [v57 bundleIdentifier];

        if (v58)
        {
          v59 = *(v26 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_authenticationServicesAgentProxy);
          v95 = sub_21C7AE5F0;
          v96 = v26;
          aBlock = MEMORY[0x277D85DD0];
          v92 = 1107296256;
          v60 = &block_descriptor_0;
LABEL_44:
          v93 = sub_21C7AC7F8;
          v94 = v60;
          v65 = _Block_copy(&aBlock);
          v14 = v96;

          [v59 getPasskeysForRunningAssertionWithApplicationIdentifier:v58 withCompletionHandler:v65];
          _Block_release(v65);
        }
      }

      else
      {
        v62 = *(v26 + 288);
        v61 = *(v26 + 296);
        v63 = *(v26 + 280);
        aBlock = *(v26 + 272);
        v92 = v63;
        v93 = v62;
        v94 = v61;
        v64 = WBSApplicationIdentifierFromAuditToken();
        if (v64)
        {
          v58 = v64;
          v59 = *(v26 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_authenticationServicesAgentProxy);
          v95 = sub_21C7AEA2C;
          v96 = v26;
          aBlock = MEMORY[0x277D85DD0];
          v92 = 1107296256;
          v60 = &block_descriptor_37;
          goto LABEL_44;
        }
      }
    }

    else
    {
      swift_getKeyPath(aP_32);
      swift_getKeyPath(a0_25);
      aBlock = v55;

      sub_21CB81DC4();
    }

    if (!*(*(v26 + 192) + 16) && !*(*(v26 + 200) + 16))
    {
      swift_getKeyPath(byte_21CBA08E8);
      swift_getKeyPath(byte_21CBA0910);
      aBlock = v55;

      goto LABEL_60;
    }

    swift_getKeyPath(byte_21CBA0858);
    swift_getKeyPath(aH_47);
    sub_21CB81DB4();

    v21 = aBlock;
    v66 = *(aBlock + 2);
    if (!v66)
    {
      break;
    }

    v3 = 0;
    v67 = MEMORY[0x277D84F90];
    while (v3 < *(v21 + 2))
    {
      v68 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v69 = *(v90 + 72);
      sub_21C7AE7C8(&v21[v68 + v69 * v3], v56, type metadata accessor for PMAccount);
      sub_21C7AC8A8(v56, v26);
      if (v70)
      {
        sub_21C7AE944(v56, v87, type metadata accessor for PMAccount);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v67;
        if ((v71 & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v67 + 16) + 1, 1);
          v67 = aBlock;
        }

        v73 = *(v67 + 16);
        v72 = *(v67 + 24);
        v14 = (v73 + 1);
        if (v73 >= v72 >> 1)
        {
          sub_21C7B0C4C((v72 > 1), v73 + 1, 1);
          v67 = aBlock;
        }

        *(v67 + 16) = v14;
        sub_21C7AE944(v87, v67 + v68 + v73 * v69, type metadata accessor for PMAccount);
        v56 = v85;
      }

      else
      {
        sub_21C719060(v56, type metadata accessor for PMAccount);
      }

      if (v66 == ++v3)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
  }

  v67 = MEMORY[0x277D84F90];
LABEL_59:

  swift_getKeyPath(byte_21CBA08E8);
  swift_getKeyPath(byte_21CBA0910);
  aBlock = v67;

LABEL_60:
  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBA0930);
  swift_getKeyPath(byte_21CBA0958);
  sub_21CB81DB4();

  v76 = aBlock;
  v75 = v92;
  if (v93 <= 2u)
  {
LABEL_63:
    swift_getKeyPath(byte_21CBA0810);
    swift_getKeyPath(byte_21CBA0838);
    sub_21CB81DB4();

    v79 = sub_21C7A1394(v76, v75, aBlock);

    if (!v79)
    {
      swift_getKeyPath(byte_21CBA0930);
      swift_getKeyPath(byte_21CBA0958);
      aBlock = 0;
      v92 = 0;
      LOBYTE(v93) = -1;

      return sub_21CB81DC4();
    }
  }

  else if (v93 == 3)
  {
    v78 = *&aBlock[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account];
    v77 = *&aBlock[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account + 8];

    sub_21C7AE5A0(v76, v75, 3u);
    v76 = v78;
    v75 = v77;
    goto LABEL_63;
  }

  return result;
}

uint64_t sub_21C7A7208(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_21CB81DB4();

  return v4;
}

uint64_t sub_21C7A729C()
{
  swift_getKeyPath(aH_48);
  swift_getKeyPath(asc_21CBA0B50);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7A7314()
{
  swift_getKeyPath(aP_31);
  swift_getKeyPath(a0_24);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7A7388()
{
  v1 = v0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  MEMORY[0x28223BE20](v54);
  v53 = &v41 - v2;
  v3 = type metadata accessor for PMAccount(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v55 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = (&v41 - v7);
  MEMORY[0x28223BE20](v8);
  v59 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  if (![objc_opt_self() isSavedAccountHistoryInAutoFillEnabled] || (v18 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection, swift_beginAccess(), v52 = v18, sub_21C6EDBAC(v0 + v18, v17, &unk_27CDEBE60, &unk_21CB9FF40), v19 = *(v4 + 48), v51 = v4 + 48, v44 = v19, LODWORD(v18) = v19(v17, 1, v3), sub_21C6EA794(v17, &unk_27CDEBE60, &unk_21CB9FF40), v18 == 1))
  {
    swift_getKeyPath(byte_21CBA08E8);
    swift_getKeyPath(byte_21CBA0910);
    sub_21CB81DB4();

    return v60;
  }

  swift_getKeyPath(byte_21CBA08E8);
  swift_getKeyPath(byte_21CBA0910);
  sub_21CB81DB4();

  result = v60;
  v50 = *(v60 + 16);
  if (!v50)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_24:

    return v20;
  }

  v22 = 0;
  v47 = v4 + 56;
  v20 = MEMORY[0x277D84F90];
  v23 = v44;
  v48 = v60;
  v49 = v1;
  v46 = v4;
  while (v22 < *(result + 16))
  {
    v57 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v58 = v20;
    v24 = v4;
    v25 = v3;
    v26 = v1;
    v56 = *(v24 + 72);
    v27 = v14;
    v28 = v59;
    sub_21C7AE7C8(result + v57 + v56 * v22, v59, type metadata accessor for PMAccount);
    v29 = v28;
    v14 = v27;
    sub_21C7AE7C8(v29, v27, type metadata accessor for PMAccount);
    (*(v24 + 56))(v27, 0, 1, v25);
    v30 = v53;
    v31 = *(v54 + 48);
    sub_21C6EDBAC(v27, v53, &unk_27CDEBE60, &unk_21CB9FF40);
    v32 = v26 + v52;
    v3 = v25;
    sub_21C6EDBAC(v32, v30 + v31, &unk_27CDEBE60, &unk_21CB9FF40);
    if (v23(v30, 1, v25) == 1)
    {
      sub_21C6EA794(v27, &unk_27CDEBE60, &unk_21CB9FF40);
      v33 = v23(v30 + v31, 1, v25);
      v4 = v46;
      if (v33 != 1)
      {
        goto LABEL_15;
      }

      sub_21C6EA794(v30, &unk_27CDEBE60, &unk_21CB9FF40);
      v20 = v58;
    }

    else
    {
      v34 = v45;
      sub_21C6EDBAC(v30, v45, &unk_27CDEBE60, &unk_21CB9FF40);
      if (v23(v30 + v31, 1, v25) == 1)
      {
        sub_21C6EA794(v27, &unk_27CDEBE60, &unk_21CB9FF40);
        v35 = v34;
        v14 = v27;
        sub_21C719060(v35, type metadata accessor for PMAccount);
        v4 = v46;
        v23 = v44;
LABEL_15:
        sub_21C6EA794(v30, &qword_27CDEAC50, &unk_21CBA00A0);
        v20 = v58;
LABEL_16:
        sub_21C7AE944(v59, v55, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v20 + 16) + 1, 1);
          v20 = v60;
        }

        v38 = *(v20 + 16);
        v37 = *(v20 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_21C7B0C4C((v37 > 1), v38 + 1, 1);
          v20 = v60;
        }

        *(v20 + 16) = v38 + 1;
        sub_21C7AE944(v55, v20 + v57 + v38 * v56, type metadata accessor for PMAccount);
        goto LABEL_8;
      }

      v39 = v42;
      sub_21C7AE944(v30 + v31, v42, type metadata accessor for PMAccount);
      v43 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v34, v39);
      sub_21C719060(v39, type metadata accessor for PMAccount);
      sub_21C6EA794(v27, &unk_27CDEBE60, &unk_21CB9FF40);
      v40 = v34;
      v14 = v27;
      sub_21C719060(v40, type metadata accessor for PMAccount);
      sub_21C6EA794(v30, &unk_27CDEBE60, &unk_21CB9FF40);
      v4 = v46;
      v23 = v44;
      v20 = v58;
      if (!v43)
      {
        goto LABEL_16;
      }
    }

    sub_21C719060(v59, type metadata accessor for PMAccount);
LABEL_8:
    ++v22;
    v1 = v49;
    result = v48;
    if (v50 == v22)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C7A7A58@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  swift_getKeyPath(aP_31);
  swift_getKeyPath(a0_24);
  sub_21CB81DB4();

  if (v7[1])
  {

    sub_21C7A7B1C(v7, a1, &v6);
    result = swift_bridgeObjectRelease_n();
    v5 = v6;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

uint64_t sub_21C7A7B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + 16);
  v7 = qword_27CDEA4C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v6, v11);

  swift_getKeyPath(byte_21CBA0A88);
  swift_getKeyPath(byte_21CBA0AB0);
  sub_21CB81DB4();

  v8 = sub_21C7A1394(v5, v4, v11);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21CBA0690;
    *(v10 + 32) = v5;
    *(v10 + 40) = v4;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  *a3 = v10;
  return result;
}

uint64_t sub_21C7A7C8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*a1 + 16))
  {

    swift_getKeyPath(aP_31);
    swift_getKeyPath(a0_24);
  }

  else
  {
    swift_getKeyPath(aP_31, a2, a3);
    swift_getKeyPath(a0_24);

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBA0930);
    swift_getKeyPath(byte_21CBA0958);
  }

  return sub_21CB81DC4();
}

uint64_t sub_21C7A7DCC(const char *a1, const char *a2)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a2);
  sub_21CB81DB4();

  return v4;
}

uint64_t sub_21C7A7E4C()
{
  v1 = v0;
  v2 = type metadata accessor for PMAddAccountModel.Configuration(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v18 - v7;
  swift_getKeyPath(byte_21CBA0BB8, v6);
  swift_getKeyPath(byte_21CBA0BE0);
  sub_21CB81DB4();

  if (v19)
  {
  }

  if (v1[27])
  {
    v10 = v1[26];
    v11 = v1[27];
  }

  else
  {
    if (v1[29])
    {
      v10 = v1[28];
      v11 = v1[29];
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }
  }

  v12 = *(v2 + 24);
  v13 = sub_21CB85C44();
  (*(*(v13 - 8) + 56))(&v8[v12], 1, 1, v13);
  v14 = &v8[*(v2 + 28)];
  *v8 = v10;
  *(v8 + 1) = v11;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0xE000000000000000;
  v15 = v1[31];
  *v14 = v1[30];
  *(v14 + 1) = v15;
  sub_21C7AE7C8(v8, v4, type metadata accessor for PMAddAccountModel.Configuration);
  v16 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for PMAddAccountModel(0);
  swift_allocObject();

  v17 = sub_21C848014(v4, sub_21C7AE830, v16);
  swift_getKeyPath(byte_21CBA0BB8);
  swift_getKeyPath(byte_21CBA0BE0);
  v19 = v17;

  sub_21CB81DC4();
  return sub_21C719060(v8, type metadata accessor for PMAddAccountModel.Configuration);
}

uint64_t sub_21C7A80D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath(byte_21CBA0A40);
      swift_getKeyPath(byte_21CBA0A68);
      return sub_21CB81DC4();
    }
  }

  return result;
}

uint64_t sub_21C7A8160()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v19 - v10;
  swift_getKeyPath(byte_21CBA0930, v9);
  swift_getKeyPath(byte_21CBA0958);
  sub_21CB81DB4();

  if (v22 != 255)
  {
    v12 = v21;
    if (v22 == 3)
    {
      v13 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_didSelectHistoryItem);
      v14 = v20;
      sub_21C7AE7C8(v20 + OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account, v11, type metadata accessor for PMAccount);
      (*(v2 + 56))(v11, 0, 1, v1);

      v15 = sub_21CAAA050();
      v13(v11, v15, v16);

      sub_21C7AE5A0(v14, v12, 3u);
      return sub_21C6EA794(v11, &unk_27CDEBE60, &unk_21CB9FF40);
    }

    sub_21C7AE5A0(v20, v21, v22);
  }

  v18 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
  swift_beginAccess();
  sub_21C6EDBAC(v0 + v18, v7, &unk_27CDEBE60, &unk_21CB9FF40);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_21C6EA794(v7, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  sub_21C7AE944(v7, v4, type metadata accessor for PMAccount);
  sub_21C7A8470(*v4, v4[1]);
  return sub_21C719060(v4, type metadata accessor for PMAccount);
}

uint64_t sub_21C7A8470(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v71 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v71);
  v5 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v68 - v9;
  v11 = type metadata accessor for PMAccount(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v75 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v2;
  v14 = *(v2 + 16);
  v15 = qword_27CDEA4C0;

  if (v15 != -1)
  {
    swift_once();
  }

  v70 = qword_27CE18778;
  sub_21CB86544();
  sub_21C7072A8(v14, v76);

  swift_getKeyPath(byte_21CBA0A88);
  swift_getKeyPath(byte_21CBA0AB0);
  sub_21CB81DB4();

  v17 = v76;
  v76 = a1;
  v77 = v74;
  MEMORY[0x28223BE20](v16);
  *(&v68 - 2) = &v76;
  sub_21C968D04(sub_21C7AE738, v17, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_21C6EA794(v10, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  v19 = v75;
  sub_21C7AE944(v10, v75, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF78, &unk_21CBA0DD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = PMAccount.highLevelDomain.getter();
  *(inited + 40) = v21;
  sub_21C7AE7C8(v19 + *(v11 + 24), v5, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v68 = v12;
  v69 = v11;
  v74 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C719060(v5, type metadata accessor for PMAccount.Storage);
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = *v5;
    v25 = [*v5 additionalSites];
    v23 = sub_21CB85824();
  }

  v26 = v73;
  v27 = *(v23 + 16);
  if (v27)
  {
    v28 = inited;
    v76 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v27, 0);
    v29 = v76;
    v30 = v23 + 40;
    do
    {

      v31 = sub_21CB85584();
      v32 = [v31 safari_highLevelDomainForPasswordManager];

      v33 = sub_21CB855C4();
      v35 = v34;

      v76 = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_21C7B0C0C((v36 > 1), v37 + 1, 1);
        v29 = v76;
      }

      *(v29 + 16) = v37 + 1;
      v38 = v29 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      v30 += 16;
      --v27;
    }

    while (v27);

    v26 = v73;
    inited = v28;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v39 = sub_21CA492C8(v29);

  v76 = inited;
  sub_21CAE8A88(v39);
  v40 = v76;
  if (!*(v26 + 216))
  {
    goto LABEL_22;
  }

  v41 = sub_21CB85584();

  v42 = [v41 safari_highLevelDomainForPasswordManager];

  v43 = sub_21CB855C4();
  v45 = v44;

  if (v43 == 0x6F632E656C707061 && v45 == 0xE90000000000006DLL)
  {

    v46 = 1;
    if (!*(v26 + 216))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v46 = sub_21CB86344();

    if (!*(v26 + 216))
    {
LABEL_22:

      goto LABEL_23;
    }
  }

  if (*(v26 + 32))
  {
    goto LABEL_22;
  }

  v51 = sub_21CB85584();
  v52 = [v51 safari_highLevelDomainForPasswordManager];

  v53 = sub_21CB855C4();
  v55 = v54;

  v76 = v53;
  v77 = v55;
  MEMORY[0x28223BE20](v56);
  *(&v68 - 2) = &v76;
  LOBYTE(v53) = sub_21C8A1458(sub_21C7AE9E0, (&v68 - 4), v40);

  if (v53)
  {
    goto LABEL_22;
  }

  v57 = *(v26 + 24);

  sub_21CB86544();
  v58 = sub_21C81C2D0(v57, v76);

  v59 = sub_21CB85584();
  v60 = [v58 isDomainKnownToAskForCredentialsForOtherServicesWhenEmbeddedAsThirdParty_];

  if (v60 & 1) != 0 || (v46)
  {
    goto LABEL_22;
  }

  v61 = objc_opt_self();
  v62 = sub_21CB85584();

  v63 = [v61 domainByStrippingSubdomainWildcardPrefixIfNecessary_];

  if (!v63)
  {
    sub_21CB855C4();
    v63 = sub_21CB85584();
  }

  v64 = [v61 domainIsProhibitedForSavingCredentials_];

  if ((v64 & 1) == 0)
  {
    swift_getKeyPath(byte_21CBA0AD0);
    swift_getKeyPath(aP_24);
    sub_21CB81DB4();

    if ((v76 & 1) == 0)
    {
      v65 = v75;
      v66 = v72;
      sub_21C7AE7C8(v75, v72, type metadata accessor for PMAccount);
      (*(v68 + 56))(v66, 0, 1, v69);
      v67 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
      swift_beginAccess();
      sub_21C7AE758(v66, v26 + v67);
      swift_endAccess();
      swift_getKeyPath(byte_21CBA0AD0);
      swift_getKeyPath(aP_24);
      LOBYTE(v76) = 1;

      sub_21CB81DC4();
      v50 = v65;
      return sub_21C719060(v50, type metadata accessor for PMAccount);
    }
  }

LABEL_23:
  v47 = *(v26 + 360);
  v48 = v75;
  v49 = v72;
  sub_21C7AE7C8(v75, v72, type metadata accessor for PMAccount);
  (*(v68 + 56))(v49, 0, 1, v69);

  v47(v49);

  sub_21C6EA794(v49, &unk_27CDEBE60, &unk_21CB9FF40);
  v50 = v48;
  return sub_21C719060(v50, type metadata accessor for PMAccount);
}

id sub_21C7A8DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v33 = MEMORY[0x277D84F90];
  sub_21C7B0C0C(0, v1, 0);
  v2 = v33;
  v4 = a1 + 56;
  result = sub_21CB85F24();
  v6 = result;
  v7 = 0;
  v28 = a1 + 64;
  v29 = a1;
  v8 = a1;
  v30 = v1;
  v31 = a1 + 56;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v8 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_24;
    }

    v32 = *(v8 + 36);
    v12 = *(v8 + 48) + 24 * v6;
    v13 = *v12;
    v14 = *(v12 + 16);
    if (v14 >= 3)
    {
      v16 = &v13[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account];
      v13 = *&v13[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account];
      v15 = *(v16 + 1);
    }

    else
    {
      v15 = *(v12 + 8);
      result = sub_21C79B008(*v12, v15, v14);
      v8 = v29;
    }

    v18 = *(v33 + 16);
    v17 = *(v33 + 24);
    v19 = v32;
    if (v18 >= v17 >> 1)
    {
      result = sub_21C7B0C0C((v17 > 1), v18 + 1, 1);
      v19 = v32;
      v8 = v29;
    }

    *(v33 + 16) = v18 + 1;
    v20 = v33 + 16 * v18;
    *(v20 + 32) = v13;
    *(v20 + 40) = v15;
    v9 = 1 << *(v8 + 32);
    if (v6 >= v9)
    {
      goto LABEL_25;
    }

    v4 = v31;
    v21 = *(v31 + 8 * v11);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_26;
    }

    if (v19 != *(v8 + 36))
    {
      goto LABEL_27;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v30;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v25 = (v28 + 8 * v11);
      v10 = v30;
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_21C7AE858(v6, v19, 0);
          v8 = v29;
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_21C7AE858(v6, v19, 0);
      v8 = v29;
    }

LABEL_4:
    ++v7;
    v6 = v9;
    if (v7 == v10)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21C7A904C(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v39 - v4;
  v40 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v44);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_21CB85BB4();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v16 = type metadata accessor for PMAccount(0);
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(aP_32, v18);
  swift_getKeyPath(a0_25);
  v43 = v2;
  sub_21CB81DB4();

  v21 = v50[0];
  v50[0] = v47;
  v50[1] = v48;
  v49 = v50;
  sub_21C968D04(sub_21C7AE9FC, v21, v15);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_21C6EA794(v15, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  sub_21C7AE944(v15, v20, type metadata accessor for PMAccount);
  sub_21C7AE7C8(&v20[*(v16 + 24)], v7, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v41;
    sub_21C7AE944(v7, v41, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v23 + *(v40 + 60), v10, &qword_27CDEAF58, &unk_21CBA0980);
    sub_21C719060(v23, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v24 = *v7;
    sub_21CB85BD4();
  }

  v26 = v45;
  v25 = v46;
  if ((*(v45 + 48))(v10, 1, v46) == 1)
  {
    sub_21C719060(v20, type metadata accessor for PMAccount);
    return sub_21C6EA794(v10, &qword_27CDEAF58, &unk_21CBA0980);
  }

  else
  {
    v27 = v42;
    (*(v26 + 32))();
    v28 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_autoFillPasskeys;
    v29 = v43;
    v30 = swift_beginAccess();
    v31 = *(v29 + v28);
    MEMORY[0x28223BE20](v30);
    *(&v39 - 2) = v27;

    v32 = sub_21C968D6C(sub_21C7AE864, (&v39 - 4), v31);

    if (v32)
    {
      v33 = sub_21CB858E4();
      v34 = v39;
      (*(*(v33 - 8) + 56))(v39, 1, 1, v33);
      sub_21CB858B4();
      v35 = v32;

      v36 = sub_21CB858A4();
      v37 = swift_allocObject();
      v38 = MEMORY[0x277D85700];
      v37[2] = v36;
      v37[3] = v38;
      v37[4] = v29;
      v37[5] = v35;
      sub_21C98B308(0, 0, v34, &unk_21CBA0C10, v37);
    }

    sub_21C719060(v20, type metadata accessor for PMAccount);
    return (*(v26 + 8))(v27, v25);
  }
}

uint64_t sub_21C7A96B8(id *a1)
{
  v1 = [*a1 identifier];
  v2 = [v1 credentialID];

  v3 = sub_21CB855C4();
  v5 = v4;

  if (v3 == sub_21CB85B64() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21CB86344();
  }

  return v8 & 1;
}

uint64_t sub_21C7A9788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5[20] = swift_task_alloc();
  sub_21CB858B4();
  v5[21] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_21C7A9858, v7, v6);
}

uint64_t sub_21C7A9858()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_authenticationServicesAgentProxy);
  v4 = *(v1 + 352);
  v0[24] = v4;
  v5 = *(v1 + 344);
  v0[25] = v5;
  v0[2] = v0;
  v0[3] = sub_21C7A99B0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB1570;
  v0[13] = &block_descriptor_115;
  v0[14] = v6;
  [v3 userSelectedAutoFillPasskey:v2 authenticatedLAContext:v4 savedAccountContext:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C7A99B0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_21C7A9AB8, v2, v1);
}

uint64_t sub_21C7A9AB8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];
  v4 = v0[18];

  v5 = *(v4 + 360);
  v6 = type metadata accessor for PMAccount(0);
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  v5(v3);

  sub_21C6EA794(v3, &unk_27CDEBE60, &unk_21CB9FF40);

  v7 = v0[1];

  return v7();
}

BOOL sub_21C7A9BB0()
{
  v1 = sub_21CB80BE4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  if (!*(v0 + 216))
  {

    sub_21C713194(v8);
    v10 = v9;

    if (!v10)
    {
      return 0;
    }
  }

  v11 = sub_21CB85584();

  v12 = [v11 safari_highLevelDomainForPasswordManager];

  v13 = sub_21CB855C4();
  v15 = v14;

  v26[0] = 0x2F2F3A7370747468;
  v26[1] = 0xE800000000000000;
  MEMORY[0x21CF151F0](v13, v15);

  v16 = sub_21CB85584();

  v17 = [v16 safari_bestURLForUserTypedString];

  if (!v17)
  {
    return 0;
  }

  sub_21CB80B94();

  (*(v2 + 32))(v7, v4, v1);
  v18 = objc_opt_self();
  v19 = sub_21CB80B74();
  v20 = [v18 safari:v19 HTMLFormProtectionSpaceForURL:?];

  v21 = [objc_opt_self() sharedStore];
  v22 = [v21 generatedPasswordsForProtectionSpace:v20 options:0];

  sub_21C6E8F4C(0, &qword_27CDEAFA0, 0x277D49A38);
  v23 = sub_21CB85824();

  if (v23 >> 62)
  {
    v24 = sub_21CB85FA4();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v2 + 8))(v7, v1);
  return v24 != 0;
}

uint64_t sub_21C7A9ECC()
{
  v1[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v2 = type metadata accessor for PMAccount(0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = sub_21CB858B4();
  v1[13] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v1[14] = v4;
  v1[15] = v3;

  return MEMORY[0x2822009F8](sub_21C7AA008, v4, v3);
}

uint64_t sub_21C7AA008()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
  swift_beginAccess();
  sub_21C6EDBAC(v4 + v5, v3, &unk_27CDEBE60, &unk_21CB9FF40);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = v0[8];
  if (v6 == 1)
  {

    sub_21C6EA794(v7, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_10:

    v20 = v0[1];

    return v20();
  }

  v8 = v0[6];
  sub_21C7AE944(v0[8], v0[11], type metadata accessor for PMAccount);
  if (!*(v8 + 216))
  {
    v19 = v0[11];

    sub_21C719060(v19, type metadata accessor for PMAccount);
    goto LABEL_10;
  }

  v9 = v0[6];

  v10 = sub_21CB85584();

  v11 = [v10 safari_highLevelDomainForPasswordManager];

  v12 = sub_21CB855C4();
  v14 = v13;

  v0[16] = v12;
  v0[17] = v14;
  v15 = *(v9 + 16);
  v16 = qword_27CDEA4C0;

  if (v16 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v0[18] = sub_21C7072A8(v15, v0[5]);

  v0[19] = sub_21CB858A4();
  v18 = sub_21CB85874();
  v0[20] = v18;
  v0[21] = v17;

  return MEMORY[0x2822009F8](sub_21C7AA2AC, v18, v17);
}

uint64_t sub_21C7AA2AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v2 = *(v0[18] + 24);
    ObjectType = swift_getObjectType();
    v11 = (*(v2 + 88) + **(v2 + 88));
    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = sub_21C7AA444;
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[11];

    return v11(v6, v5, v7, ObjectType, v2);
  }

  else
  {

    v9 = v0[14];
    v10 = v0[15];

    return MEMORY[0x2822009F8](sub_21C7AA610, v9, v10);
  }
}

uint64_t sub_21C7AA444()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21C7AA5A4, v3, v2);
}

uint64_t sub_21C7AA5A4()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_21C7AA610, v1, v2);
}

uint64_t sub_21C7AA610()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];

  v6 = *(v5 + 360);
  sub_21C7AE7C8(v1, v4, type metadata accessor for PMAccount);
  (*(v2 + 56))(v4, 0, 1, v3);

  v6(v4);

  sub_21C6EA794(v4, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C719060(v1, type metadata accessor for PMAccount);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21C7AA740(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *(type metadata accessor for PMAccount(0) - 8);
  v2[15] = swift_task_alloc();
  v2[16] = sub_21CB858B4();
  v2[17] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[18] = v4;
  v2[19] = v3;

  return MEMORY[0x2822009F8](sub_21C7AA834, v4, v3);
}

uint64_t sub_21C7AA834()
{
  v1 = *(*(v0 + 104) + 16);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 160) = qword_27CE18778;
  sub_21CB86544();
  v3 = sub_21C7072A8(v1, *(v0 + 48));

  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 24);

    ObjectType = swift_getObjectType();
    (*(v4 + 64))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v6 = *(v0 + 96);
  v7 = *(v6 + 16);
  *(v0 + 168) = v7;
  if (v7)
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v8 + 80);
    *(v0 + 240) = v10;
    *(v0 + 176) = *(v8 + 72);
    *(v0 + 184) = 0;
    sub_21C7AE7C8(v6 + ((v10 + 32) & ~v10), *(v0 + 120), type metadata accessor for PMAccount);
    v11 = *(v9 + 16);

    sub_21CB86544();
    v12 = *(v0 + 56);
    if (*(v12 + 16) && (v13 = sub_21CB10910(v11), (v14 & 1) != 0) && (sub_21C7A3394(*(v12 + 56) + 32 * v13, v0 + 16), type metadata accessor for PMAccountsState(0), (swift_dynamicCast() & 1) != 0) && (v15 = *(v0 + 72)) != 0)
    {
    }

    else
    {
      if (qword_27CDEA3C8 != -1)
      {
        swift_once();
      }

      *(v0 + 80) = qword_27CE184E8;

      swift_getAtKeyPath();

      v15 = *(v0 + 64);
    }

    *(v0 + 192) = v15;
    *(v0 + 200) = sub_21CB858A4();
    v17 = sub_21CB85874();
    *(v0 + 208) = v17;
    *(v0 + 216) = v16;

    return MEMORY[0x2822009F8](sub_21C7AABA4, v17, v16);
  }

  else
  {
    v18 = *(v0 + 104);

    v19 = *(v18 + 16);

    sub_21CB86544();
    v20 = sub_21C7072A8(v19, *(v0 + 88));

    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 24);
      v22 = swift_getObjectType();
      (*(v21 + 72))(v22, v21);
      swift_unknownObjectRelease();
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_21C7AABA4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v2 = *(v0[24] + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 96) + **(v2 + 96));
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_21C7AAD2C;
    v5 = v0[15];

    return v9(3, v5, ObjectType, v2);
  }

  else
  {

    v7 = v0[18];
    v8 = v0[19];

    return MEMORY[0x2822009F8](sub_21C7AAEDC, v7, v8);
  }
}

uint64_t sub_21C7AAD2C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_21C7AAE70, v3, v2);
}

uint64_t sub_21C7AAE70()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_21C7AAEDC, v1, v2);
}

uint64_t sub_21C7AAEDC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 184) + 1;
  sub_21C719060(*(v0 + 120), type metadata accessor for PMAccount);
  if (v2 == v1)
  {
    v3 = *(v0 + 104);

    v4 = *(v3 + 16);

    sub_21CB86544();
    v5 = sub_21C7072A8(v4, *(v0 + 88));

    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 24);
      ObjectType = swift_getObjectType();
      (*(v6 + 72))(ObjectType, v6);
      swift_unknownObjectRelease();
    }

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 176);
    v11 = *(v0 + 184) + 1;
    *(v0 + 184) = v11;
    v12 = *(v0 + 104);
    sub_21C7AE7C8(*(v0 + 96) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + v10 * v11, *(v0 + 120), type metadata accessor for PMAccount);
    v13 = *(v12 + 16);

    sub_21CB86544();
    v14 = *(v0 + 56);
    if (*(v14 + 16) && (v15 = sub_21CB10910(v13), (v16 & 1) != 0) && (sub_21C7A3394(*(v14 + 56) + 32 * v15, v0 + 16), type metadata accessor for PMAccountsState(0), (swift_dynamicCast() & 1) != 0) && (v17 = *(v0 + 72)) != 0)
    {
    }

    else
    {
      if (qword_27CDEA3C8 != -1)
      {
        swift_once();
      }

      *(v0 + 80) = qword_27CE184E8;

      swift_getAtKeyPath();

      v17 = *(v0 + 64);
    }

    *(v0 + 192) = v17;
    *(v0 + 200) = sub_21CB858A4();
    v19 = sub_21CB85874();
    *(v0 + 208) = v19;
    *(v0 + 216) = v18;

    return MEMORY[0x2822009F8](sub_21C7AABA4, v19, v18);
  }
}

uint64_t sub_21C7AB1A4(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v21 - v7);
  v24 = sub_21C7A8DE0(a1);
  swift_getKeyPath(byte_21CBA0858);
  swift_getKeyPath(aH_47);
  sub_21CB81DB4();

  v10 = v25[0];
  v23 = *(v25[0] + 16);
  if (v23)
  {
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v22 = v5;
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = *(v3 + 72);
      v15 = sub_21C7AE7C8(v10 + v13 + v14 * v11, v8, type metadata accessor for PMAccount);
      v16 = v8[1];
      v25[0] = *v8;
      v25[1] = v16;
      MEMORY[0x28223BE20](v15);
      *(&v21 - 2) = v25;
      if (sub_21C8A13AC(sub_21C7AE838, (&v21 - 4), v24))
      {
        sub_21C7AE944(v8, v5, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v12 + 16) + 1, 1);
          v12 = v26;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21C7B0C4C((v18 > 1), v19 + 1, 1);
          v12 = v26;
        }

        *(v12 + 16) = v19 + 1;
        v20 = v12 + v13 + v19 * v14;
        v5 = v22;
        result = sub_21C7AE944(v22, v20, type metadata accessor for PMAccount);
      }

      else
      {
        result = sub_21C719060(v8, type metadata accessor for PMAccount);
      }

      if (v23 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_13:

    return v12;
  }

  return result;
}

uint64_t sub_21C7AB484(uint64_t a1, void *a2)
{
  v5 = sub_21CB853D4();
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21CB85404();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v11 = sub_21CB85CF4();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_21C7AE5F4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_40;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  sub_21CB853E4();
  v19 = MEMORY[0x277D84F90];
  sub_21C6F17A4(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v10, v7, v13);
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);
}

void *sub_21C7AB790(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v6 - 8);
  v115 = &v109 - v7;
  v8 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v120 = (&v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v119 = (&v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v125);
  v124 = (&v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v128);
  v14 = (&v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v129 = (&v109 - v16);
  v17 = type metadata accessor for PMAccount(0);
  v126 = *(v17 - 8);
  v127 = v17;
  MEMORY[0x28223BE20](v17);
  v114 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = &v109 - v20;
  MEMORY[0x28223BE20](v21);
  v130 = (&v109 - v22);
  v123 = sub_21CB85BB4();
  v133 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v122 = &v109 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = (&v109 - v27);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_autoFillPasskeys;
  swift_beginAccess();
  *(v2 + v29) = a1;

  v30 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions) = a2;
  v31 = a2;

  v32 = *(v2 + v29);
  if (v32 >> 62)
  {
LABEL_71:
    v108 = v32;
    v33 = sub_21CB85FA4();
    v32 = v108;
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = MEMORY[0x277D84F90];
  v118 = v2;
  if (v33)
  {
    v134 = MEMORY[0x277D84F90];
    v35 = v32;

    v2 = &v134;
    sub_21C7B10E0(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
LABEL_73:
      v46 = MEMORY[0x21CF15BD0](0);
      goto LABEL_17;
    }

    v113 = v29;
    v117 = v14;
    v36 = 0;
    v37 = v35;
    v34 = v134;
    v131 = v133 + 32;
    v132 = v35 & 0xC000000000000001;
    v38 = v123;
    v39 = v35;
    do
    {
      if (v132)
      {
        v40 = MEMORY[0x21CF15BD0](v36, v37);
      }

      else
      {
        v40 = *(v37 + 8 * v36 + 32);
      }

      v41 = v40;
      v42 = [v40 identifier];
      a2 = [v42 credentialID];

      sub_21CB855C4();
      sub_21CB85B54();

      v134 = v34;
      v44 = *(v34 + 16);
      v43 = *(v34 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_21C7B10E0((v43 > 1), v44 + 1, 1);
        v38 = v123;
        v34 = v134;
      }

      ++v36;
      *(v34 + 16) = v44 + 1;
      (*(v133 + 32))(v34 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v44, v28, v38);
      v37 = v39;
    }

    while (v33 != v36);

    v2 = v118;
    v14 = v117;
    v29 = v113;
  }

  v3 = sub_21CB00BD4(v34);

  if (!*(v3 + 16))
  {
  }

  swift_beginAccess();
  v45 = *(v2 + v29);
  if ((v45 & 0xC000000000000001) != 0)
  {
    goto LABEL_73;
  }

  if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_75;
  }

  v46 = *(v45 + 32);
LABEL_17:
  v47 = v46;
  swift_endAccess();
  v48 = [v47 relyingPartyIdentifier];

  v49 = sub_21CB855C4();
  v51 = v50;

  if (v49 == 0x6F632E656C707061 && v51 == 0xE90000000000006DLL)
  {

    goto LABEL_22;
  }

  v53 = sub_21CB86344();

  if ((v53 & 1) == 0)
  {
    swift_getKeyPath(byte_21CBA0858);
    swift_getKeyPath(aH_47);
    sub_21CB81DB4();

    v85 = v134;
    v29 = *(v134 + 16);
    if (!v29)
    {
      v119 = MEMORY[0x277D84F90];
LABEL_68:

      swift_getKeyPath(aP_32);
      swift_getKeyPath(a0_25);
      v134 = v119;
      goto LABEL_69;
    }

    v86 = 0;
    v28 = (v133 + 48);
    v120 = (v133 + 32);
    v130 = (v133 + 16);
    v131 = v3 + 56;
    v132 = v133 + 8;
    v119 = MEMORY[0x277D84F90];
    v124 = (v133 + 56);
    v87 = v115;
    v88 = v116;
    a2 = v122;
    v2 = v123;
    v117 = v14;
    v111 = v134;
    v110 = v29;
    v113 = (v133 + 48);
    while (1)
    {
      if (v86 >= *(v85 + 16))
      {
        __break(1u);
        goto LABEL_71;
      }

      v129 = ((*(v126 + 80) + 32) & ~*(v126 + 80));
      v125 = *(v126 + 72);
      sub_21C7AE7C8(v129 + v85 + v125 * v86, v88, type metadata accessor for PMAccount);
      sub_21C7AE7C8(v88 + *(v127 + 24), v14, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C719060(v88, type metadata accessor for PMAccount);
        sub_21C719060(v14, type metadata accessor for PMAccount.Storage);
        (*v124)(v87, 1, 1, v2);
      }

      else
      {
        v89 = *v14;
        sub_21CB85BD4();

        v2 = v123;
        if ((*v28)(v87, 1, v123) != 1)
        {
          (*v120)(a2, v87, v2);
          if (*(v3 + 16))
          {
            sub_21C6F17A4(&qword_27CDEAF60, MEMORY[0x277D49948], MEMORY[0x277D49950]);
            v90 = sub_21CB85484();
            v91 = -1 << *(v3 + 32);
            v92 = v90 & ~v91;
            if ((*(v131 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92))
            {
              v112 = v132 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v93 = v3;
              v94 = ~v91;
              v95 = *(v133 + 72);
              v96 = *(v133 + 16);
              while (1)
              {
                v97 = v121;
                v98 = v123;
                v96(v121, *(v93 + 48) + v95 * v92, v123);
                sub_21C6F17A4(&qword_27CDEAF68, MEMORY[0x277D49948], MEMORY[0x277D49958]);
                v99 = sub_21CB85574();
                v100 = *v132;
                (*v132)(v97, v98);
                if (v99)
                {
                  break;
                }

                v92 = (v92 + 1) & v94;
                if (((*(v131 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
                {
                  v87 = v115;
                  v14 = v117;
                  a2 = v122;
                  v2 = v123;
                  v3 = v93;
                  v85 = v111;
                  v29 = v110;
                  goto LABEL_61;
                }
              }

              a2 = v122;
              v2 = v123;
              v100(v122, v123);
              v88 = v116;
              sub_21C7AE944(v116, v114, type metadata accessor for PMAccount);
              v101 = v119;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v103 = v101;
              v134 = v101;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_21C7B0C4C(0, *(v101 + 16) + 1, 1);
                v2 = v123;
                v103 = v134;
              }

              v14 = v117;
              v3 = v93;
              v85 = v111;
              v28 = v113;
              v104 = v103;
              v106 = *(v103 + 16);
              v105 = *(v103 + 24);
              v107 = v106 + 1;
              v29 = v110;
              if (v106 >= v105 >> 1)
              {
                v119 = (v106 + 1);
                sub_21C7B0C4C((v105 > 1), v106 + 1, 1);
                v107 = v119;
                v2 = v123;
                v104 = v134;
              }

              *(v104 + 16) = v107;
              v119 = v104;
              v32 = sub_21C7AE944(v114, v129 + v104 + v106 * v125, type metadata accessor for PMAccount);
              v87 = v115;
            }

            else
            {
              v100 = *v132;
              v2 = v123;
LABEL_61:
              v100(a2, v2);
              v88 = v116;
              v32 = sub_21C719060(v116, type metadata accessor for PMAccount);
              v28 = v113;
            }
          }

          else
          {
            (*v132)(a2, v2);
            v32 = sub_21C719060(v88, type metadata accessor for PMAccount);
          }

          goto LABEL_48;
        }

        sub_21C719060(v88, type metadata accessor for PMAccount);
      }

      v32 = sub_21C6EA794(v87, &qword_27CDEAF58, &unk_21CBA0980);
LABEL_48:
      if (++v86 == v29)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_22:

  a2 = *(v2 + v29);
  if (!(a2 >> 62))
  {
    v54 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

LABEL_75:
  v54 = sub_21CB85FA4();
LABEL_24:
  v55 = MEMORY[0x277D84F90];
  if (!v54)
  {
LABEL_43:
    swift_getKeyPath(aP_32);
    swift_getKeyPath(a0_25);
    v134 = v55;
LABEL_69:

    return sub_21CB81DC4();
  }

  v134 = MEMORY[0x277D84F90];

  result = sub_21C7B0C4C(0, v54 & ~(v54 >> 63), 0);
  if ((v54 & 0x8000000000000000) == 0)
  {
    v56 = 0;
    v55 = v134;
    v132 = a2 & 0xC000000000000001;
    v133 = a2;
    do
    {
      if (v132)
      {
        v57 = MEMORY[0x21CF15BD0](v56, a2);
      }

      else
      {
        v57 = *(a2 + 8 * v56 + 32);
      }

      v58 = v57;
      v59 = [v57 relyingPartyIdentifier];
      if (!v59)
      {
        sub_21CB855C4();
        v59 = sub_21CB85584();
      }

      v60 = [v58 username];
      if (!v60)
      {
        sub_21CB855C4();
        v60 = sub_21CB85584();
      }

      v61 = v54;
      v62 = [v58 identifier];
      v63 = [v62 credentialID];

      if (!v63)
      {
        sub_21CB855C4();
        v63 = sub_21CB85584();
      }

      v64 = objc_allocWithZone(MEMORY[0x277D49B20]);
      v65 = sub_21CB85584();
      v66 = [v64 initWithPasskeyRelyingPartyID:v59 user:v60 passkeyUserHandle:v65 passkeyCredentialID:v63];

      v67 = v129;
      *v129 = v66;
      swift_storeEnumTagMultiPayload();
      v68 = v127;
      v69 = v130;
      v70 = (v130 + *(v127 + 28));
      *v70 = 0u;
      v70[1] = 0u;
      sub_21C7AE7C8(v67, v69 + *(v68 + 24), type metadata accessor for PMAccount.Storage);
      v71 = *(v68 + 20);
      v72 = v66;
      sub_21C7C8A3C(v69 + v71);
      v73 = v124;
      sub_21C7AE7C8(v69 + v71, v124, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v74 = v73;
        v75 = v120;
        sub_21C7AE944(v74, v120, type metadata accessor for PMAccount.SIWAUniqueID);
        v76 = sub_21C7CE99C();
        v78 = v77;

        v79 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v80 = v73;
        v75 = v119;
        sub_21C7AE944(v80, v119, type metadata accessor for PMAccount.CombinedUniqueID);
        v76 = sub_21C7CE408();
        v78 = v81;

        v79 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719060(v75, v79);
      v54 = v61;
      a2 = v133;
      sub_21C719060(v129, type metadata accessor for PMAccount.Storage);
      v82 = v130;
      *v130 = v76;
      *(v82 + 8) = v78;
      v134 = v55;
      v84 = *(v55 + 16);
      v83 = *(v55 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_21C7B0C4C((v83 > 1), v84 + 1, 1);
        v82 = v130;
        v55 = v134;
      }

      ++v56;
      *(v55 + 16) = v84 + 1;
      sub_21C7AE944(v82, v55 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v84, type metadata accessor for PMAccount);
    }

    while (v54 != v56);

    goto LABEL_43;
  }

  __break(1u);
  return result;
}