uint64_t type metadata accessor for MarketingArtwork(uint64_t a1)
{
  result = qword_281105FE8;
  if (!qword_281105FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C5D3C74(uint64_t a1)
{
  sub_20C5EDD64(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20C5D3CE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C64E1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20C5D3D3C(uint64_t a1)
{
  sub_20C5D3CE8(319, &qword_281106818, MEMORY[0x277D09D68]);
  if (v1 <= 0x3F)
  {
    sub_20C5D3CE8(319, &qword_281106840, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C5D3DF8(uint64_t a1)
{
  if (!qword_281105B78[0])
  {
    sub_20C64D040();
    sub_20C64A3D0(&qword_281106808, MEMORY[0x277D09E00], MEMORY[0x277D09E20]);
    v1 = sub_20C64D090();
    if (!v2)
    {
      atomic_store(v1, qword_281105B78);
    }
  }
}

uint64_t type metadata accessor for AudioLanguageEngagementSheet(uint64_t a1)
{
  result = qword_281105C08;
  if (!qword_281105C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C5D3ED8(uint64_t a1)
{
  sub_20C5D4024(319, &qword_281105798, type metadata accessor for MarketingActionItem, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20C5D4024(319, qword_281105FB8, type metadata accessor for MarketingArtwork, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20C5D4388();
      if (v3 <= 0x3F)
      {
        sub_20C5D4024(319, &qword_281105B40, sub_20C5D43D8, MEMORY[0x277D0A898]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20C5D4024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MarketingActionItem(uint64_t a1)
{
  result = qword_2811067D0;
  if (!qword_2811067D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C5D40D4(uint64_t a1)
{
  type metadata accessor for MarketingAction(319);
  if (v1 <= 0x3F)
  {
    sub_20C5D4338(319, &qword_2811057A8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for MarketingAction(uint64_t a1)
{
  result = qword_281106110;
  if (!qword_281106110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C5D41D8(uint64_t a1)
{
  sub_20C5D424C();
  if (v1 <= 0x3F)
  {
    sub_20C64CF10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C5D424C()
{
  if (!qword_281105B70)
  {
    sub_20C5D4294(0);
    if (!v1)
    {
      atomic_store(v0, &qword_281105B70);
    }
  }
}

void sub_20C5D4294(uint64_t a1)
{
  if (!qword_281105B60)
  {
    sub_20C5D42EC();
    v1 = sub_20C64D0C0();
    if (!v2)
    {
      atomic_store(v1, &qword_281105B60);
    }
  }
}

unint64_t sub_20C5D42EC()
{
  result = qword_281105788;
  if (!qword_281105788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281105788);
  }

  return result;
}

void sub_20C5D4338(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_20C5D4388()
{
  if (!qword_2811057A8)
  {
    v0 = sub_20C64E1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811057A8);
    }
  }
}

unint64_t sub_20C5D43D8()
{
  result = qword_281105770;
  if (!qword_281105770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281105770);
  }

  return result;
}

unint64_t sub_20C5D4428()
{
  result = qword_281105F58[0];
  if (!qword_281105F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281105F58);
  }

  return result;
}

uint64_t type metadata accessor for MarketingOffer(uint64_t a1)
{
  result = qword_2811061B0;
  if (!qword_2811061B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C5D44C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MarketingAction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C5D4588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MarketingAction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C5D4644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C5D46BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C5D4764()
{
  if (*v0)
  {
    return 0x746E756F4378616DLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_20C5D47FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20C64CFE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
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

  v14 = sub_20C64CFB0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_20C5D4990(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20C64CFE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_20C64CFB0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_20C5D4B30()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D4B6C()
{
  v1 = type metadata accessor for AudioLanguageEngagementSheet(0);
  v2 = (*(*(v1 - 8) + 80) + 33) & ~*(*(v1 - 8) + 80);
  sub_20C5E3044(*(v0 + 16), *(v0 + 24));
  v3 = v0 + v2;
  v4 = sub_20C64CE50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v7 = *(v1 + 20);
  if (!v6(v3 + v7, 1, v4))
  {
    (*(v5 + 8))(v3 + v7, v4);
  }

  v8 = *(v1 + 24);
  if (!v6(v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v3 + v8, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_20C5D4D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E8, &qword_20C650030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5D4DE4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20C5D4F20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C5D505C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_20C5D5094(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64D070();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C5D5100(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64D070();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C5D5170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C5D51E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C5D5264()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D529C()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D52D4()
{
  sub_20C5E3044(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_20C5D5330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE740, &qword_20C651A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5D53AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B0, &unk_20C651C00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20C5D54B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B0, &unk_20C651C00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20C5D55D0()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D560C()
{
  v1 = type metadata accessor for AudioLanguageEngagementSheet(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v10 = *(*(v1 - 8) + 64);
  v3 = v0 + v2;
  v4 = sub_20C64CE50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v7 = *(v1 + 20);
  if (!v6(v3 + v7, 1, v4))
  {
    (*(v5 + 8))(v3 + v7, v4);
  }

  v8 = *(v1 + 24);
  if (!v6(v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v3 + v8, v4);
  }

  sub_20C5E3044(*(v0 + ((v10 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v10 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

double sub_20C5D57D8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
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

uint64_t sub_20C5D57FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB50, &qword_20C652CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5D586C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB50, &qword_20C652CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5D58D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C64D3F0();
  *a1 = result;
  return result;
}

uint64_t sub_20C5D593C()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D5974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
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
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
    swift_getFunctionTypeMetadata1();
    v8 = sub_20C64D010();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      type metadata accessor for MarketingActionItem(255);
      type metadata accessor for MarketingOffer(255);
      swift_getFunctionTypeMetadata();
      v13 = sub_20C64D010();
      return (*(*(v13 - 8) + 48))(a1 + *(a3 + 60), a2, v13);
    }
  }
}

uint64_t sub_20C5D5B18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
    swift_getFunctionTypeMetadata1();
    v8 = sub_20C64D010();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      type metadata accessor for MarketingActionItem(255);
      type metadata accessor for MarketingOffer(255);
      swift_getFunctionTypeMetadata();
      v13 = sub_20C64D010();
      return (*(*(v13 - 8) + 56))(v5 + *(a4 + 60), a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C5D5CC0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC50, &qword_20C653380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC58, &qword_20C653388);
  sub_20C5E5558(&qword_281105790, &qword_27C7CEC58, &qword_20C653388, MEMORY[0x277D83980]);
  sub_20C64DD90();
  swift_getWitnessTable();
  sub_20C64DD60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  sub_20C64D2E0();
  sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390, MEMORY[0x277CDF028]);
  swift_getWitnessTable();
  sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC70, &qword_20C6533A0);
  sub_20C64D560();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
  sub_20C602C18();
  sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8, MEMORY[0x277CE14C0]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_20C602C6C();
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  sub_20C64DCA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC88, &qword_20C653700);
  sub_20C64D2E0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  sub_20C64D560();
  sub_20C64DCA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC90, &qword_20C6533C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC98, &qword_20C6533C8);
  sub_20C602CC0();
  sub_20C602E88();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_20C5D6348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC90, &qword_20C6533C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5D63B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC90, &qword_20C6533C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5D6428()
{
  v1 = *(v0 + 40);
  v22 = *(v0 + 16);
  v23 = *(v0 + 24);
  v24 = v1;
  v2 = (type metadata accessor for MarketingButton(0, &v22) - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for MarketingOffer(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = (v0 + v3);
  sub_20C5E3044(*v7, v7[1]);
  v8 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
  swift_getFunctionTypeMetadata1();
  v9 = sub_20C64D010();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v2[17];
  v22 = type metadata accessor for MarketingActionItem(255);
  *&v23 = v5;
  *(&v23 + 1) = MEMORY[0x277D83B88];
  v24 = &type metadata for MarketingButtonLayout;
  v25 = &type metadata for MarketingPlatform;
  swift_getFunctionTypeMetadata();
  v11 = sub_20C64D010();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);

  v12 = v0 + v6 + *(v5 + 20);
  v13 = type metadata accessor for MarketingArtwork(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = sub_20C64D030();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v12, 1, v14))
    {
      (*(v15 + 8))(v12, v14);
    }

    v16 = *(v13 + 20);
    v17 = sub_20C64CF10();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v12 + v16, 1, v17))
    {
      (*(v18 + 8))(v12 + v16, v17);
    }
  }

  v19 = *(v5 + 36);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  (*(*(v20 - 8) + 8))(v0 + v6 + v19, v20);
  return swift_deallocObject();
}

uint64_t sub_20C5D6848()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D6994()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CED10, &qword_20C6536B8);
  sub_20C64D510();
  sub_20C60862C();
  sub_20C6098DC(&qword_281105990, MEMORY[0x277CDDF40], MEMORY[0x277CDDF38]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C5D6A4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C5D6A5C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C5D6A84()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D6AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingActionItem(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C5D6B3C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MarketingActionItem(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20C5D6BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C64CF10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C5D6C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C64CF10();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C5D6D4C()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D6D98()
{
  v1 = sub_20C64CF10();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_20C5D6E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C64CF10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C5D6EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C64CF10();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOySo014AMSCarrierLinkA0Cs5Error_pGIegg_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20C5D7030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C64D410();
  *a1 = result;
  return result;
}

uint64_t sub_20C5D7088@<X0>(uint64_t a1@<X8>)
{
  result = sub_20C64D430();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20C5D70F4()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D712C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C64DCB0();
  *a1 = result;
  return result;
}

uint64_t sub_20C5D71B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20C64CFE0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20C5D7348(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_20C64CFE0();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 16) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_20C5D74E0()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D7540()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D75BC(void *a1)
{
  sub_20C64D2E0();
  sub_20C62E2C4();
  return swift_getWitnessTable();
}

uint64_t sub_20C5D7620()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D7658()
{

  sub_20C5E3044(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_20C5D76E4()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D771C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9D0, &unk_20C657188);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[15]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    swift_getFunctionTypeMetadata1();
    v13 = sub_20C64D010();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[16];
      goto LABEL_3;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
    swift_getFunctionTypeMetadata2();
    v15 = sub_20C64D010();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[17];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20C5D7918(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9D0, &unk_20C657188);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[15]) = (a2 - 1);
    return result;
  }

  swift_getFunctionTypeMetadata1();
  v13 = sub_20C64D010();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[16];
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
  swift_getFunctionTypeMetadata2();
  v15 = sub_20C64D010();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[17];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_20C5D7B14(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9A8, &qword_20C6570B8);
  sub_20C64D700();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF168, &unk_20C6570C0);
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  v5 = sub_20C64D2E0();
  v19 = v2;
  v20 = v1;
  v21 = v3;
  v22 = v4;
  type metadata accessor for MarketingInlineView.FocusedButton(255, &v19);
  v6 = sub_20C64E1F0();
  v19 = v2;
  v20 = v3;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v17 = MEMORY[0x277CE0868];
  sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0, MEMORY[0x277CE0868]);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = v5;
  v20 = v6;
  v21 = WitnessTable;
  v22 = v18;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  sub_20C64D2E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C64D340();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1F0, &qword_20C6570E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B0, &qword_20C6570E8);
  sub_20C64D2E0();
  swift_getTupleTypeMetadata3();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B8, &qword_20C6570F0);
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9C0, &qword_20C6570F8);
  sub_20C64D2E0();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0, v17);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  sub_20C64D340();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D560();
  v8 = sub_20C64DCA0();
  sub_20C630C78();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v19 = v8;
  v20 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  v10 = sub_20C64DCA0();
  sub_20C630CD0();
  v19 = v8;
  v20 = v9;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v19 = v10;
  v20 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = v10;
  v20 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = OpaqueTypeMetadata2;
  v20 = v6;
  v21 = OpaqueTypeConformance2;
  v22 = v18;
  swift_getOpaqueTypeMetadata2();
  v14 = sub_20C64D2E0();
  v19 = OpaqueTypeMetadata2;
  v20 = v6;
  v21 = OpaqueTypeConformance2;
  v22 = v18;
  swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v19 = v14;
  v20 = v15;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C5D84F4()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D8554()
{
  v1 = type metadata accessor for MarketingOffer(0);
  v2 = (*(*(v1 - 8) + 80) + 120) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(type metadata accessor for MarketingActionItem(0) - 8);
  v18 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v5 = v0 + v2;

  v6 = v0 + v2 + *(v1 + 20);
  v7 = type metadata accessor for MarketingArtwork(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_20C64D030();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6, 1, v8))
    {
      (*(v9 + 8))(v6, v8);
    }

    v10 = *(v7 + 20);
    v11 = sub_20C64CF10();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v6 + v10, 1, v11))
    {
      (*(v12 + 8))(v6 + v10, v11);
    }
  }

  v13 = *(v1 + 36);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  type metadata accessor for MarketingAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v16 = sub_20C64CF10();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_12;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  }

  (*(*(v16 - 8) + 8))(v0 + v18, v16);
LABEL_12:

  return swift_deallocObject();
}

uint64_t sub_20C5D894C()
{
  v1 = sub_20C64CF10();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for MarketingOffer(0);
  v24 = *(*(v5 - 8) + 80);
  v6 = (v3 + v4 + v24) & ~v24;
  v7 = *(*(v5 - 8) + 64);
  v23 = *(*(type metadata accessor for MarketingActionItem(0) - 8) + 80);

  v25 = v1;
  v8 = v1;
  v9 = (v6 + v7 + v23) & ~v23;
  v22 = *(v2 + 8);
  v22(v0 + v3, v8);
  v10 = v0 + v6;

  v11 = v0 + v6 + *(v5 + 20);
  v12 = type metadata accessor for MarketingArtwork(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v21 = v9;
    v13 = sub_20C64D030();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v11, 1, v13))
    {
      (*(v14 + 8))(v11, v13);
    }

    v15 = *(v12 + 20);
    v9 = v21;
    if (!(*(v2 + 48))(v11 + v15, 1, v25))
    {
      v22(v11 + v15, v25);
    }
  }

  v16 = *(v5 + 36);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  (*(*(v17 - 8) + 8))(v10 + v16, v17);
  type metadata accessor for MarketingAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v22(v0 + v9, v25);
  }

  else if (!EnumCaseMultiPayload)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
    (*(*(v19 - 8) + 8))(v0 + v9, v19);
  }

  return swift_deallocObject();
}

uint64_t sub_20C5D8D98()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D8E00()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D8E3C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20C64CF70();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20C5D8EE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20C64CF70();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C5D8FA0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20C5D8FD8()
{

  return swift_deallocObject();
}

uint64_t sub_20C5D9058(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20C64CFE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[8] + 16);
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

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_20C5D91F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20C64CFE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 16) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t MarketingActionItem.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MarketingActionItem(0) + 20));

  return v1;
}

uint64_t MarketingActionItem.footnote.getter()
{
  v1 = *(v0 + *(type metadata accessor for MarketingActionItem(0) + 24));

  return v1;
}

uint64_t MarketingActionItem.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MarketingActionItem(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MarketingActionItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for MarketingActionItem(0) + 32));

  return v1;
}

uint64_t MarketingActionItem.init(identifier:action:footnote:style:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a6;
  v18 = type metadata accessor for MarketingActionItem(0);
  v19 = (a9 + v18[5]);
  *v19 = a1;
  v19[1] = a2;
  result = sub_20C5D95DC(a3, a9);
  v21 = (a9 + v18[6]);
  *v21 = a4;
  v21[1] = a5;
  *(a9 + v18[7]) = v17;
  v22 = (a9 + v18[8]);
  *v22 = a7;
  v22[1] = a8;
  return result;
}

uint64_t sub_20C5D95DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MarketingActionItem.init(_:style:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDF80, &qword_20C64F150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for MarketingAction(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = *a2;
  v17 = [a1 callToActionLabel];
  if (!v17)
  {

    goto LABEL_5;
  }

  v18 = v17;
  v39 = sub_20C64E050();
  v20 = v19;

  v21 = a1;
  sub_20C5FCD30(v21, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_20C5D99E4(v8);
LABEL_5:
    v22 = type metadata accessor for MarketingActionItem(0);
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  sub_20C5D95DC(v8, v15);
  v24 = [v21 offerID];
  if (v24)
  {
    v25 = v24;
    v38 = sub_20C64E050();
    v27 = v26;
  }

  else
  {
    v38 = 0;
    v27 = 0;
  }

  v28 = v16;
  sub_20C5DA684(v15, v13, type metadata accessor for MarketingAction);
  v29 = [v21 disclaimerText];
  if (v29)
  {
    v30 = v29;
    v31 = sub_20C64E050();
    v33 = v32;

    sub_20C5DA6EC(v15, type metadata accessor for MarketingAction);
  }

  else
  {
    sub_20C5DA6EC(v15, type metadata accessor for MarketingAction);

    v31 = 0;
    v33 = 0;
  }

  v34 = type metadata accessor for MarketingActionItem(0);
  v35 = (a3 + v34[5]);
  *v35 = v38;
  v35[1] = v27;
  sub_20C5D95DC(v13, a3);
  v36 = (a3 + v34[6]);
  *v36 = v31;
  v36[1] = v33;
  *(a3 + v34[7]) = v28;
  v37 = (a3 + v34[8]);
  *v37 = v39;
  v37[1] = v20;
  return (*(*(v34 - 1) + 56))(a3, 0, 1, v34);
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

uint64_t sub_20C5D99E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDF80, &qword_20C64F150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5D9A4C()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5D9A94(uint64_t a1)
{
  v2 = *v1;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v2);
  return sub_20C64E4E0();
}

uint64_t sub_20C5D9AD8()
{
  v1 = *v0;
  v2 = 0x6E6F69746361;
  v3 = 0x65746F6E746F6F66;
  v4 = 0x656C797473;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
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

uint64_t sub_20C5D9B6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C5DA944(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C5D9BAC(uint64_t a1)
{
  v2 = sub_20C5DA0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5D9BE8(uint64_t a1)
{
  v2 = sub_20C5DA0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingActionItem.id.getter()
{
  v1 = sub_20C64CF70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for MarketingActionItem(0) + 20));
  if (v5[1])
  {
    v6 = *v5;
  }

  else
  {
    sub_20C64CF60();
    v6 = sub_20C64CF40();
    (*(v2 + 8))(v4, v1);
  }

  return v6;
}

uint64_t sub_20C5D9D30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_20C64CF70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 20));
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    sub_20C64CF60();
    v10 = sub_20C64CF40();
    v11 = v12;
    (*(v6 + 8))(v8, v5);
  }

  *a2 = v10;
  a2[1] = v11;
}

uint64_t MarketingActionItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDF88, &qword_20C64F158);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DA0E8();
  sub_20C64E500();
  v11[15] = 0;
  type metadata accessor for MarketingAction(0);
  sub_20C5DACAC(&qword_27C7CDF98, type metadata accessor for MarketingAction, &protocol conformance descriptor for MarketingAction);
  sub_20C64E410();
  if (!v2)
  {
    v9 = type metadata accessor for MarketingActionItem(0);
    v11[14] = 1;
    sub_20C64E3C0();
    v11[13] = 2;
    sub_20C64E3C0();
    v11[12] = *(v3 + *(v9 + 28));
    v11[11] = 3;
    sub_20C5DA13C();
    sub_20C64E410();
    v11[10] = 4;
    sub_20C64E3E0();
  }

  return (*(v6 + 8))(v8, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_20C5DA0E8()
{
  result = qword_27C7CDF90;
  if (!qword_27C7CDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDF90);
  }

  return result;
}

unint64_t sub_20C5DA13C()
{
  result = qword_27C7CDFA0;
  if (!qword_27C7CDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFA0);
  }

  return result;
}

uint64_t MarketingActionItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFA8, &qword_20C64F160);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v26 - v6;
  v8 = type metadata accessor for MarketingActionItem(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DA0E8();
  v31 = v7;
  sub_20C64E4F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v28;
  v12 = v10;
  v37 = 0;
  sub_20C5DACAC(&qword_27C7CDFB0, type metadata accessor for MarketingAction, &protocol conformance descriptor for MarketingAction);
  v14 = v29;
  v13 = v30;
  sub_20C64E390();
  sub_20C5D95DC(v14, v12);
  v36 = 1;
  v15 = sub_20C64E340();
  v16 = (v12 + v8[5]);
  *v16 = v15;
  v16[1] = v17;
  v35 = 2;
  v18 = sub_20C64E340();
  v19 = (v12 + v8[6]);
  *v19 = v18;
  v19[1] = v20;
  v33 = 3;
  sub_20C5DA630();
  sub_20C64E390();
  *(v12 + v8[7]) = v34;
  v32 = 4;
  v21 = sub_20C64E360();
  v23 = v22;
  (*(v11 + 8))(v31, v13);
  v24 = (v12 + v8[8]);
  *v24 = v21;
  v24[1] = v23;
  sub_20C5DA684(v12, v27, type metadata accessor for MarketingActionItem);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C5DA6EC(v12, type metadata accessor for MarketingActionItem);
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

unint64_t sub_20C5DA630()
{
  result = qword_27C7CDFB8;
  if (!qword_27C7CDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFB8);
  }

  return result;
}

uint64_t sub_20C5DA684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C5DA6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MarketingActionItem.hash(into:)(uint64_t a1)
{
  MarketingAction.hash(into:)(a1);
  v2 = type metadata accessor for MarketingActionItem(0);
  if (*(v1 + v2[5] + 8))
  {
    sub_20C64E4C0();
    sub_20C64E090();
  }

  else
  {
    sub_20C64E4C0();
  }

  if (*(v1 + v2[6] + 8))
  {
    sub_20C64E4C0();
    sub_20C64E090();
  }

  else
  {
    sub_20C64E4C0();
  }

  v3 = *(v1 + v2[7]);
  MEMORY[0x20F301800](v3 >> 7);
  MEMORY[0x20F301800](v3 & 0x7F);

  return sub_20C64E090();
}

uint64_t MarketingActionItem.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingActionItem.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5DA8C0()
{
  sub_20C64E4A0();
  MarketingActionItem.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5DA904(uint64_t a1)
{
  sub_20C64E4A0();
  MarketingActionItem.hash(into:)(v2);
  return sub_20C64E4E0();
}

uint64_t sub_20C5DA944(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t _s16FitnessMarketing0B10ActionItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s16FitnessMarketing0B6ActionO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MarketingActionItem(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_20C64E430();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (*v14 != *v16 || v15 != v17)
  {
    v19 = v4;
    v20 = sub_20C64E430();
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_20:
  v21 = v4[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (*(a1 + v21) < 0)
  {
    v24 = 0;
    if ((v23 & 0x80) == 0 || ((v23 ^ v22) & 0x7F) != 0)
    {
      return v24;
    }
  }

  else if (v22 != v23)
  {
    return 0;
  }

  v26 = v4[8];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if (v27 == *v29 && v28 == v29[1])
  {
    return 1;
  }

  return sub_20C64E430();
}

uint64_t sub_20C5DACAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20C5DAD2C(uint64_t a1, int a2)
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

uint64_t sub_20C5DAD4C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MarketingActionItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MarketingActionItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C5DAF00()
{
  result = qword_27C7CDFC8;
  if (!qword_27C7CDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFC8);
  }

  return result;
}

unint64_t sub_20C5DAF58()
{
  result = qword_27C7CDFD0;
  if (!qword_27C7CDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFD0);
  }

  return result;
}

unint64_t sub_20C5DAFB0()
{
  result = qword_27C7CDFD8;
  if (!qword_27C7CDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFD8);
  }

  return result;
}

uint64_t sub_20C5DB010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5DB088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BubbleTipLayoutState.init(contentMargins:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C64D070();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return sub_20C5DB088(a1, a2);
}

uint64_t sub_20C5DB19C()
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](0);
  return sub_20C64E4E0();
}

uint64_t sub_20C5DB1E0(uint64_t a1)
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](0);
  return sub_20C64E4E0();
}

uint64_t sub_20C5DB244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C5DB2D4(uint64_t a1)
{
  v2 = sub_20C5DB4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5DB310(uint64_t a1)
{
  v2 = sub_20C5DB4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BubbleTipLayoutState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE8, &qword_20C64F418);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DB4B0();
  sub_20C64E500();
  sub_20C64D070();
  sub_20C5DC024(&qword_27C7CDFF8, MEMORY[0x277D096F8]);
  sub_20C64E3D0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_20C5DB4B0()
{
  result = qword_27C7CDFF0;
  if (!qword_27C7CDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CDFF0);
  }

  return result;
}

uint64_t BubbleTipLayoutState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE000, &qword_20C64F420);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for BubbleTipLayoutState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C64D070();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DB4B0();
  v13 = v18;
  sub_20C64E4F0();
  if (!v13)
  {
    v14 = v17;
    sub_20C5DC024(&qword_27C7CE008, MEMORY[0x277D09710]);
    sub_20C64E350();
    (*(v16 + 8))(v8, v6);
    sub_20C5DB088(v5, v11);
    sub_20C5DB828(v11, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C5DB7CC(v11);
}

uint64_t type metadata accessor for BubbleTipLayoutState(uint64_t a1)
{
  result = qword_281105C78;
  if (!qword_281105C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C5DB7CC(uint64_t a1)
{
  v2 = type metadata accessor for BubbleTipLayoutState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5DB828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleTipLayoutState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5DB8A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE8, &qword_20C64F418);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DB4B0();
  sub_20C64E500();
  sub_20C64D070();
  sub_20C5DC024(&qword_27C7CDFF8, MEMORY[0x277D096F8]);
  sub_20C64E3D0();
  return (*(v3 + 8))(v5, v2);
}

BOOL _s16FitnessMarketing20BubbleTipLayoutStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64D070();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE028, &qword_20C64F5D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20C5DB010(a1, &v20 - v13);
  sub_20C5DB010(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_20C5DB010(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_20C5DC024(&qword_281106800, MEMORY[0x277D09708]);
      v18 = sub_20C64E010();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_20C5DBFC4(v14, &qword_27C7CDFE0, &qword_20C64F410);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_20C5DBFC4(v14, &qword_27C7CE028, &qword_20C64F5D8);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20C5DBFC4(v14, &qword_27C7CDFE0, &qword_20C64F410);
  return 1;
}

void sub_20C5DBD10(uint64_t a1)
{
  sub_20C5DBD7C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20C5DBD7C(uint64_t a1)
{
  if (!qword_2811067F8)
  {
    sub_20C64D070();
    v1 = sub_20C64E1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811067F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for BubbleTipLayoutState.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BubbleTipLayoutState.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_20C5DBEC0()
{
  result = qword_27C7CE010;
  if (!qword_27C7CE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE010);
  }

  return result;
}

unint64_t sub_20C5DBF18()
{
  result = qword_27C7CE018;
  if (!qword_27C7CE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE018);
  }

  return result;
}

unint64_t sub_20C5DBF70()
{
  result = qword_27C7CE020;
  if (!qword_27C7CE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE020);
  }

  return result;
}

uint64_t sub_20C5DBFC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20C5DC024(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20C64D070();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t sub_20C5DC088(uint64_t a1, unsigned int a2)
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

uint64_t sub_20C5DC0D0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_20C5DC130()
{
  if (*v0)
  {
    return 0x426465646E756F72;
  }

  else
  {
    return 0x7475426E69616C70;
  }
}

uint64_t sub_20C5DC180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475426E69616C70 && a2 == 0xEB000000006E6F74;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x426465646E756F72 && a2 == 0xED00006E6F747475)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C5DC268(uint64_t a1)
{
  v2 = sub_20C5DC8AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5DC2A4(uint64_t a1)
{
  v2 = sub_20C5DC8AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5DC2E0(uint64_t a1)
{
  v2 = sub_20C5DC9FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5DC31C(uint64_t a1)
{
  v2 = sub_20C5DC9FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5DC358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000020C659760 == a2 || (sub_20C64E430() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_20C64E430();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_20C5DC440(uint64_t a1)
{
  v2 = sub_20C5DC900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5DC47C(uint64_t a1)
{
  v2 = sub_20C5DC900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingOfferTemplateItem.encode(to:)(void *a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE030, &qword_20C64F670);
  v19 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE038, &qword_20C64F678);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE040, &qword_20C64F680);
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v19 - v7;
  v20 = *(v1 + 1);
  v9 = v1[16];
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DC8AC();
  sub_20C64E500();
  v29 = v9;
  if (v9 < 0)
  {
    v14 = v19;
    LOBYTE(v27) = 1;
    sub_20C5DC900();
    v15 = v21;
    v16 = v24;
    sub_20C64E3B0();
    LOBYTE(v27) = v10;
    v30 = 0;
    sub_20C5DC954();
    v17 = v22;
    v18 = v25;
    sub_20C64E410();
    if (!v18)
    {
      v27 = v20;
      v28 = v29 & 1;
      v30 = 1;
      sub_20C5DC9A8();
      sub_20C64E410();
    }

    (*(v14 + 8))(v15, v17);
    return (*(v26 + 8))(v8, v16);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_20C5DC9FC();
    v11 = v24;
    sub_20C64E3B0();
    LOBYTE(v27) = v10;
    v30 = 0;
    sub_20C5DC954();
    v12 = v25;
    sub_20C64E410();
    if (!v12)
    {
      v27 = v20;
      v28 = v29 & 1;
      v30 = 1;
      sub_20C5DC9A8();
      sub_20C64E410();
    }

    (*(v23 + 8))(v6, v4);
    return (*(v26 + 8))(v8, v11);
  }
}

unint64_t sub_20C5DC8AC()
{
  result = qword_27C7CE048;
  if (!qword_27C7CE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE048);
  }

  return result;
}

unint64_t sub_20C5DC900()
{
  result = qword_27C7CE050;
  if (!qword_27C7CE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE050);
  }

  return result;
}

unint64_t sub_20C5DC954()
{
  result = qword_27C7CE058;
  if (!qword_27C7CE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE058);
  }

  return result;
}

unint64_t sub_20C5DC9A8()
{
  result = qword_27C7CE060;
  if (!qword_27C7CE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE060);
  }

  return result;
}

unint64_t sub_20C5DC9FC()
{
  result = qword_27C7CE068;
  if (!qword_27C7CE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE068);
  }

  return result;
}

uint64_t MarketingOfferTemplateItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE070, &qword_20C64F688);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE078, &qword_20C64F690);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE080, &qword_20C64F698);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_20C5DC8AC();
  v13 = v33;
  sub_20C64E4F0();
  if (!v13)
  {
    v14 = v32;
    v33 = v9;
    v15 = sub_20C64E3A0();
    if (*(v15 + 16) == 1)
    {
      if (*(v15 + 32))
      {
        LOBYTE(v35) = 1;
        sub_20C5DC900();
        sub_20C64E320();
        v16 = v33;
        v22 = v11;
        LOBYTE(v35) = 0;
        sub_20C5DD048();
        v23 = v29;
        sub_20C64E390();
        v26 = v38;
        v37 = 1;
        sub_20C5DD09C();
        sub_20C64E390();
        (*(v31 + 8))(v4, v23);
        (*(v16 + 8))(v22, v8);
        swift_unknownObjectRelease();
        v27 = v35;
        v28 = v36 | 0x80;
      }

      else
      {
        LOBYTE(v35) = 0;
        sub_20C5DC9FC();
        v20 = v7;
        sub_20C64E320();
        v21 = v33;
        LOBYTE(v35) = 0;
        sub_20C5DD048();
        sub_20C64E390();
        v24 = v38;
        v37 = 1;
        sub_20C5DD09C();
        sub_20C64E390();
        (*(v30 + 8))(v20, v5);
        (*(v21 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v27 = v35;
        v28 = v36;
        v26 = v24;
      }

      *v14 = v26;
      *(v14 + 8) = v27;
      *(v14 + 16) = v28;
    }

    else
    {
      v17 = sub_20C64E290();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
      *v19 = &type metadata for MarketingOfferTemplateItem;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
      swift_willThrow();
      (*(v33 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

unint64_t sub_20C5DD048()
{
  result = qword_27C7CE090;
  if (!qword_27C7CE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE090);
  }

  return result;
}

unint64_t sub_20C5DD09C()
{
  result = qword_27C7CE098;
  if (!qword_27C7CE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE098);
  }

  return result;
}

uint64_t sub_20C5DD0F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5DD124()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5DD158()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_20C5DD18C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_20C5DD1B8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5DD1EC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5DD220()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MarketingOfferTemplateItem.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  if (v3 < 0)
  {
    v4 = 1;
    MEMORY[0x20F301800](1);
    MEMORY[0x20F301800](v1);
    if (v3)
    {
      return MEMORY[0x20F301800](v4);
    }

LABEL_5:
    MEMORY[0x20F301800](0);
    v4 = v2;
    return MEMORY[0x20F301800](v4);
  }

  MEMORY[0x20F301800](0);
  MEMORY[0x20F301800](v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = 1;
  return MEMORY[0x20F301800](v4);
}

uint64_t MarketingOfferTemplateItem.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_20C64E4A0();
  if (v3 < 0)
  {
    v4 = 1;
    MEMORY[0x20F301800](1);
    MEMORY[0x20F301800](v1);
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_5:
    MEMORY[0x20F301800](0);
    v4 = v2;
    goto LABEL_6;
  }

  MEMORY[0x20F301800](0);
  MEMORY[0x20F301800](v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = 1;
LABEL_6:
  MEMORY[0x20F301800](v4);
  return sub_20C64E4E0();
}

uint64_t sub_20C5DD3D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[16];
  sub_20C64E4A0();
  if (v4 < 0)
  {
    v5 = 1;
    MEMORY[0x20F301800](1);
    MEMORY[0x20F301800](v2);
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_5:
    MEMORY[0x20F301800](0);
    v5 = v3;
    goto LABEL_6;
  }

  MEMORY[0x20F301800](0);
  MEMORY[0x20F301800](v2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = 1;
LABEL_6:
  MEMORY[0x20F301800](v5);
  return sub_20C64E4E0();
}

BOOL _s16FitnessMarketing0B17OfferTemplateItemO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if ((v4 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0 && v6 == v3)
    {
      if (v4)
      {
        return (v7 & 1) != 0;
      }

      if ((v7 & 1) == 0 && v2 == v5)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0 || v6 != v3)
  {
    return 0;
  }

  if (v4)
  {
    return (v7 & 1) != 0;
  }

  else
  {
    return (v7 & 1) == 0 && v2 == v5;
  }
}

unint64_t sub_20C5DD514()
{
  result = qword_27C7CE0A0;
  if (!qword_27C7CE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0A0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MarketingOfferTemplateItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
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

uint64_t storeEnumTagSinglePayload for MarketingOfferTemplateItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = 4 * -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C5DD630(uint64_t result, char a2)
{
  v2 = *(result + 16) & 1 | (a2 << 7);
  *result &= 3uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MarketingActionItemStyle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingActionItemStyle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C5DD7D4()
{
  result = qword_27C7CE0A8;
  if (!qword_27C7CE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0A8);
  }

  return result;
}

unint64_t sub_20C5DD82C()
{
  result = qword_27C7CE0B0;
  if (!qword_27C7CE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0B0);
  }

  return result;
}

unint64_t sub_20C5DD884()
{
  result = qword_27C7CE0B8;
  if (!qword_27C7CE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0B8);
  }

  return result;
}

unint64_t sub_20C5DD8DC()
{
  result = qword_27C7CE0C0;
  if (!qword_27C7CE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0C0);
  }

  return result;
}

unint64_t sub_20C5DD934()
{
  result = qword_27C7CE0C8;
  if (!qword_27C7CE0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0C8);
  }

  return result;
}

unint64_t sub_20C5DD98C()
{
  result = qword_27C7CE0D0;
  if (!qword_27C7CE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0D0);
  }

  return result;
}

unint64_t sub_20C5DD9E4()
{
  result = qword_27C7CE0D8;
  if (!qword_27C7CE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0D8);
  }

  return result;
}

unint64_t sub_20C5DDA3C()
{
  result = qword_27C7CE0E0;
  if (!qword_27C7CE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0E0);
  }

  return result;
}

unint64_t sub_20C5DDA94()
{
  result = qword_27C7CE0E8;
  if (!qword_27C7CE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0E8);
  }

  return result;
}

uint64_t static MarketingOfferPlacement.fallbackURL.getter()
{
  sub_20C64E250();
  MEMORY[0x20F3013F0](0xD000000000000061, 0x800000020C659780);
  MEMORY[0x20F3013F0](0xD00000000000001ALL, 0x800000020C6596D0);
  sub_20C64CF00();
}

unint64_t MarketingOfferPlacement.rawValue.getter(char a1)
{
  result = 0x726568744F656573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 7:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 8:
      return result;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_20C5DDD4C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MarketingOfferPlacement.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MarketingOfferPlacement.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C64E430();
  }

  return v8 & 1;
}

unint64_t sub_20C5DDDD4@<X0>(Swift::String *a1@<X0>, FitnessMarketing::MarketingOfferPlacement_optional *a2@<X8>)
{
  result = _s16FitnessMarketing0B14OfferPlacementO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_20C5DDE04@<X0>(unint64_t *a1@<X8>)
{
  result = MarketingOfferPlacement.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20C5DDEE0()
{
  v1 = *v0;
  sub_20C64E4A0();
  MarketingOfferPlacement.rawValue.getter(v1);
  sub_20C64E090();

  return sub_20C64E4E0();
}

uint64_t sub_20C5DDF44(uint64_t a1)
{
  MarketingOfferPlacement.rawValue.getter(*v1);
  sub_20C64E090();
}

uint64_t sub_20C5DDF98(uint64_t a1)
{
  v2 = *v1;
  sub_20C64E4A0();
  MarketingOfferPlacement.rawValue.getter(v2);
  sub_20C64E090();

  return sub_20C64E4E0();
}

unint64_t _s16FitnessMarketing0B14OfferPlacementO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C64E310();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_20C5DE048()
{
  result = qword_27C7CE0F0;
  if (!qword_27C7CE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE0F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingOfferPlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingOfferPlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C5DE1EC()
{
  result = qword_281106280;
  if (!qword_281106280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106280);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheetState.sheet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioLanguageEngagementSheetState(0) + 28);

  return sub_20C5DE2D0(v3, a1);
}

uint64_t type metadata accessor for AudioLanguageEngagementSheetState(uint64_t a1)
{
  result = qword_27C7CE170;
  if (!qword_27C7CE170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C5DE2D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AudioLanguageEngagementSheetState.sheet.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AudioLanguageEngagementSheetState(0) + 28);

  return sub_20C5DE384(a1, v3);
}

uint64_t sub_20C5DE384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AudioLanguageEngagementSheetState.init(activeStorefrontLocale:layout:matchingAudioLanguage:sheet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_20C64CFE0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for AudioLanguageEngagementSheetState(0);
  sub_20C5DE530(a2, a5 + v11[5]);
  v12 = v11[6];
  v13 = sub_20C64CFB0();
  (*(*(v13 - 8) + 32))(a5 + v12, a3, v13);
  v14 = a5 + v11[7];

  return sub_20C5DE594(a4, v14);
}

uint64_t sub_20C5DE530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5DE594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C5DE604()
{
  v1 = 0x74756F79616CLL;
  v2 = 0x7465656873;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_20C5DE678@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C5DF898(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C5DE6AC(uint64_t a1)
{
  v2 = sub_20C5DEA08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5DE6E8(uint64_t a1)
{
  v2 = sub_20C5DEA08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioLanguageEngagementSheetState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE100, &qword_20C64FC18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DEA08();
  sub_20C64E500();
  v8[15] = 0;
  sub_20C64CFE0();
  sub_20C5DF488(&qword_27C7CE110, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  sub_20C64E410();
  if (!v1)
  {
    type metadata accessor for AudioLanguageEngagementSheetState(0);
    v8[14] = 1;
    type metadata accessor for AudioLanguageEngagementSheetLayout(0);
    sub_20C5DF488(&qword_27C7CE118, type metadata accessor for AudioLanguageEngagementSheetLayout, &protocol conformance descriptor for AudioLanguageEngagementSheetLayout);
    sub_20C64E410();
    v8[13] = 2;
    sub_20C64CFB0();
    sub_20C5DF488(&qword_27C7CE120, MEMORY[0x277CC9640], MEMORY[0x277CC9648]);
    sub_20C64E410();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
    sub_20C5DF108(&qword_27C7CE128, MEMORY[0x277D043D0]);
    sub_20C64E410();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20C5DEA08()
{
  result = qword_27C7CE108;
  if (!qword_27C7CE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE108);
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

uint64_t AudioLanguageEngagementSheetState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - v3;
  v4 = sub_20C64CFB0();
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  MEMORY[0x28223BE20](v40);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C64CFE0();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE140, &qword_20C64FC20);
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v12 = &v31 - v11;
  v13 = type metadata accessor for AudioLanguageEngagementSheetState(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5DEA08();
  v42 = v12;
  v16 = v44;
  sub_20C64E4F0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v8;
  v18 = v39;
  v31 = v15;
  v48 = 0;
  sub_20C5DF488(&qword_27C7CE148, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  v19 = v41;
  sub_20C64E390();
  v20 = v9;
  v21 = *(v38 + 32);
  v22 = v31;
  v44 = v20;
  v21(v31, v19);
  v47 = 1;
  sub_20C5DF488(&qword_27C7CE150, type metadata accessor for AudioLanguageEngagementSheetLayout, &protocol conformance descriptor for AudioLanguageEngagementSheetLayout);
  sub_20C64E390();
  v23 = v13;
  sub_20C5DE530(v17, &v22[*(v13 + 20)]);
  v46 = 2;
  sub_20C5DF488(&qword_27C7CE158, MEMORY[0x277CC9640], MEMORY[0x277CC9660]);
  v24 = v35;
  v25 = v36;
  sub_20C64E390();
  v26 = v22;
  v27 = a1;
  v41 = v23;
  (*(v37 + 32))(&v26[*(v23 + 6)], v24, v25);
  v45 = 3;
  sub_20C5DF108(&qword_27C7CE160, MEMORY[0x277D043D8]);
  v28 = v33;
  sub_20C64E390();
  (*(v18 + 8))(v42, v43);
  v29 = v31;
  sub_20C5DE594(v28, &v31[*(v41 + 7)]);
  sub_20C5DF1DC(v29, v32);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_20C5DF240(v29, type metadata accessor for AudioLanguageEngagementSheetState);
}

uint64_t sub_20C5DF108(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE0F8, &qword_20C64FC10);
    sub_20C5DF488(&qword_27C7CE130, type metadata accessor for AudioLanguageEngagementSheet, &protocol conformance descriptor for AudioLanguageEngagementSheet);
    sub_20C5DF488(&qword_27C7CE138, type metadata accessor for AudioLanguageEngagementSheet, &protocol conformance descriptor for AudioLanguageEngagementSheet);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C5DF1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5DF240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static AudioLanguageEngagementSheetState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x20F300320]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AudioLanguageEngagementSheetState(0);
  if (!_s16FitnessMarketing34AudioLanguageEngagementSheetLayoutV2eeoiySbAC_ACtFZ_0(a1 + *(v4 + 20), a2 + *(v4 + 20)) || (MEMORY[0x20F3002F0](a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AudioLanguageEngagementSheet(0);
  sub_20C5DF488(&qword_27C7CE168, type metadata accessor for AudioLanguageEngagementSheet, &protocol conformance descriptor for AudioLanguageEngagementSheet);

  return sub_20C64DED0();
}

uint64_t sub_20C5DF3B0(uint64_t a1, uint64_t a2, int *a3)
{
  if ((MEMORY[0x20F300320]() & 1) == 0 || !_s16FitnessMarketing34AudioLanguageEngagementSheetLayoutV2eeoiySbAC_ACtFZ_0(a1 + a3[5], a2 + a3[5]) || (MEMORY[0x20F3002F0](a1 + a3[6], a2 + a3[6]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AudioLanguageEngagementSheet(0);
  sub_20C5DF488(&qword_27C7CE168, type metadata accessor for AudioLanguageEngagementSheet, &protocol conformance descriptor for AudioLanguageEngagementSheet);

  return sub_20C64DED0();
}

uint64_t sub_20C5DF488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20C5DF4F8(uint64_t a1)
{
  sub_20C64CFE0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AudioLanguageEngagementSheetLayout(319);
    if (v2 <= 0x3F)
    {
      sub_20C64CFB0();
      if (v3 <= 0x3F)
      {
        sub_20C5DF5AC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20C5DF5AC(uint64_t a1)
{
  if (!qword_27C7CE180)
  {
    type metadata accessor for AudioLanguageEngagementSheet(255);
    sub_20C5DF488(&qword_27C7CE168, type metadata accessor for AudioLanguageEngagementSheet, &protocol conformance descriptor for AudioLanguageEngagementSheet);
    v1 = sub_20C64DEF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27C7CE180);
    }
  }
}

uint64_t getEnumTagSinglePayload for AudioLanguageEngagementSheetState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioLanguageEngagementSheetState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C5DF794()
{
  result = qword_27C7CE188;
  if (!qword_27C7CE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE188);
  }

  return result;
}

unint64_t sub_20C5DF7EC()
{
  result = qword_27C7CE190;
  if (!qword_27C7CE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE190);
  }

  return result;
}

unint64_t sub_20C5DF844()
{
  result = qword_27C7CE198;
  if (!qword_27C7CE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE198);
  }

  return result;
}

uint64_t sub_20C5DF898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x800000020C6597F0 == a2;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020C659810 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7465656873 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t MarketingAction.metricElement.getter()
{
  v1 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C5DFB04(v0, v3);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20C5DFB68(v3);
    return 0x726568744F656553;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
    (*(*(v5 - 8) + 8))(v3, v5);
    return MarketingAction.subscriptionAdamId.getter();
  }
}

uint64_t sub_20C5DFB04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5DFB68(uint64_t a1)
{
  v2 = type metadata accessor for MarketingAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarketingAction.subscriptionAdamId.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - v4;
  v6 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C5DFB04(v1, v8);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20C5DFB68(v8);
    return 0;
  }

  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_20C64D0B0();
  if (!v9 || (v10 = v9, v11 = [v9 dictionary], v10, !v11))
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v12 = sub_20C64DFF0();

  *&v18[0] = sub_20C64E050();
  *(&v18[0] + 1) = v13;
  sub_20C64E230();
  if (*(v12 + 16) && (v14 = sub_20C5DFE60(v19), (v15 & 1) != 0))
  {
    sub_20C5DFF60(*(v12 + 56) + 32 * v14, v18);
    sub_20C5DFEA4(v19);
  }

  else
  {

    sub_20C5DFEA4(v19);
    memset(v18, 0, sizeof(v18));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A8, &qword_20C64FDE8);
  v17 = sub_20C64E1E0();
  sub_20C5DFEF8(v18);
  (*(v3 + 8))(v5, v2);
  return v17;
}

unint64_t sub_20C5DFE60(uint64_t a1)
{
  v2 = sub_20C64E210();

  return sub_20C5E0034(a1, v2);
}

uint64_t sub_20C5DFEF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A8, &qword_20C64FDE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5DFF60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_20C5DFFBC(uint64_t a1, uint64_t a2)
{
  sub_20C64E4A0();
  sub_20C64E090();
  v4 = sub_20C64E4E0();

  return sub_20C5E00FC(a1, a2, v4);
}

unint64_t sub_20C5E0034(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20C5E01B4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F301570](v9, a1);
      sub_20C5DFEA4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_20C5E00FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20C64E430())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t AudioLanguageEngagementSheetView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_20C5E0270;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t AudioLanguageEngagementSheetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1B0, &qword_20C64FE20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1B8, &qword_20C64FE28);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1C0, &qword_20C64FE30);
  MEMORY[0x28223BE20](v29);
  v10 = &v28 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1C8, &qword_20C64FE38);
  MEMORY[0x28223BE20](v30);
  v12 = &v28 - v11;
  v14 = *v1;
  v13 = *(v1 + 8);
  v15 = *(v1 + 16);
  sub_20C5E063C(*v1, v13, v15, v4);
  sub_20C64DE00();
  sub_20C64D330();
  sub_20C5E5658(v4, v8, &qword_27C7CE1B0, &qword_20C64FE20);
  v16 = &v8[*(v6 + 44)];
  v17 = v37;
  *(v16 + 4) = v36;
  *(v16 + 5) = v17;
  *(v16 + 6) = v38;
  v18 = v33;
  *v16 = v32;
  *(v16 + 1) = v18;
  v19 = v35;
  *(v16 + 2) = v34;
  *(v16 + 3) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1D0, &qword_20C64FE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C64FE00;
  v21 = sub_20C64D7B0();
  *(inited + 32) = v21;
  v22 = sub_20C64D7C0();
  *(inited + 33) = v22;
  v23 = sub_20C64D7D0();
  sub_20C64D7D0();
  if (sub_20C64D7D0() != v21)
  {
    v23 = sub_20C64D7D0();
  }

  sub_20C64D7D0();
  if (sub_20C64D7D0() != v22)
  {
    v23 = sub_20C64D7D0();
  }

  sub_20C5E5658(v8, v10, &qword_27C7CE1B8, &qword_20C64FE28);
  v10[*(v29 + 36)] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v14;
  *(v24 + 24) = v13;
  *(v24 + 32) = v15;
  sub_20C5E5658(v10, v12, &qword_27C7CE1C0, &qword_20C64FE30);
  v25 = v31;
  v26 = &v12[*(v30 + 36)];
  *v26 = sub_20C5E304C;
  v26[1] = v24;
  v26[2] = 0;
  v26[3] = 0;
  sub_20C5E5658(v12, v25, &qword_27C7CE1C8, &qword_20C64FE38);
  return sub_20C5E3070(v14, v13);
}

uint64_t sub_20C5E063C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v54 = a2;
  v52 = a4;
  v5 = sub_20C64D580();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE238, &qword_20C64FF58);
  v46 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v45 = &v39 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE240, &unk_20C64FF60);
  MEMORY[0x28223BE20](v48);
  v49 = &v39 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE210, &qword_20C64FF40);
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for AudioLanguageEngagementSheet(0);
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  v41 = a1;
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20C5E5138(v13, v19);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v13, &qword_27C7CE0F8, &qword_20C64FC10);
LABEL_10:
    sub_20C64D240();
    v35 = v47;
    v36 = v50;
    (*(v47 + 16))(v49, v10, v50);
    swift_storeEnumTagMultiPayload();
    sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40, MEMORY[0x277CDD7F8]);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE218, &qword_20C64FF48);
    v38 = sub_20C5E5558(&qword_27C7CE220, &qword_27C7CE218, &qword_20C64FF48, MEMORY[0x277CDF7D8]);
    v55 = v37;
    v56 = v38;
    swift_getOpaqueTypeConformance2();
    sub_20C64D550();
    return (*(v35 + 8))(v10, v36);
  }

  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE248, &qword_20C64FF90) + 48);
  sub_20C5E5138(v13, v19);
  v22 = sub_20C64CF30();
  (*(*(v22 - 8) + 8))(&v13[v21], v22);
LABEL_6:
  v23 = v51;
  sub_20C5E5138(v19, v17);
  v24 = (*(v40 + 80) + 33) & ~*(v40 + 80);
  v25 = swift_allocObject();
  v26 = v41;
  v27 = v54;
  *(v25 + 16) = v41;
  *(v25 + 24) = v27;
  *(v25 + 32) = v53 & 1;
  sub_20C5E5138(v17, v25 + v24);
  v55 = sub_20C5E519C;
  v56 = v25;
  sub_20C5E3070(v26, v27);
  v28 = v42;
  sub_20C64D570();
  v29 = sub_20C64D780();
  sub_20C64D770();
  sub_20C64D770();
  if (sub_20C64D770() != v29)
  {
    sub_20C64D770();
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE218, &qword_20C64FF48);
  v31 = sub_20C5E5558(&qword_27C7CE220, &qword_27C7CE218, &qword_20C64FF48, MEMORY[0x277CDF7D8]);
  v32 = v45;
  sub_20C64DB00();
  (*(v43 + 8))(v28, v44);

  v33 = v46;
  (*(v46 + 16))(v49, v32, v23);
  swift_storeEnumTagMultiPayload();
  sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40, MEMORY[0x277CDD7F8]);
  v55 = v30;
  v56 = v31;
  swift_getOpaqueTypeConformance2();
  sub_20C64D550();
  return (*(v33 + 8))(v32, v23);
}

uint64_t sub_20C5E0DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE250, &qword_20C64FF98);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE258, &qword_20C64FFA0);
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v38 = a1;
  v39 = a2;
  v40 = a3;
  v41 = a4 & 1;
  v42 = a5;
  sub_20C64D780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE260, &qword_20C64FFA8);
  sub_20C5E5558(&qword_27C7CE268, &qword_27C7CE260, &qword_20C64FFA8, MEMORY[0x277CE1198]);
  sub_20C64D1E0();
  v34 = a2;
  v35 = a3;
  v36 = a4 & 1;
  v37 = a5;
  sub_20C64D4D0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE270, &qword_20C64FFB0);
  sub_20C5E5558(&qword_27C7CE278, &qword_27C7CE250, &qword_20C64FF98, MEMORY[0x277CDD6E0]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE280, &qword_20C64FFB8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE288, &unk_20C64FFC0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE290, &unk_20C655580);
  v19 = sub_20C5E5248();
  v20 = sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580, MEMORY[0x277D84470]);
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v16;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_20C64DA70();
  (*(v30 + 8))(v12, v22);
  LOBYTE(v12) = sub_20C64D7C0();
  v23 = sub_20C64D7D0();
  sub_20C64D7D0();
  if (sub_20C64D7D0() != v12)
  {
    v23 = sub_20C64D7D0();
  }

  v24 = sub_20C64D2F0();
  v25 = v33;
  (*(v31 + 32))(v33, v15, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2B0, &qword_20C64FFD8);
  v27 = v25 + *(result + 36);
  *v27 = v24;
  *(v27 + 8) = v23;
  return result;
}

void *sub_20C5E11BC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_20C64D4D0();
  v17 = 1;
  sub_20C5E12C0(a2, a3, a4 & 1, a5, __src);
  memcpy(__dst, __src, 0x159uLL);
  memcpy(v19, __src, 0x159uLL);
  sub_20C5E574C(__dst, v14, &qword_27C7CE330, &qword_20C650090);
  sub_20C5DBFC4(v19, &qword_27C7CE330, &qword_20C650090);
  memcpy(&v16[7], __dst, 0x159uLL);
  v12 = v17;
  *a6 = v11;
  *(a6 + 8) = 0;
  *(a6 + 16) = v12;
  return memcpy((a6 + 17), v16, 0x160uLL);
}

uint64_t sub_20C5E12C0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v27 = a5;
  v37 = a6;
  v36 = sub_20C64D070();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AudioLanguageEngagementSheetLayout(0) - 8;
  MEMORY[0x28223BE20](v32);
  v30 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20C64D4D0();
  LOBYTE(v39[0]) = 0;
  v29 = a4;
  v28 = a2;
  sub_20C5E1AF8(a3, a4 & 1, &v77);
  v53 = *v78;
  v54 = *&v78[16];
  v55[0] = *&v78[32];
  *(v55 + 10) = *&v78[42];
  v52 = v77;
  v56[1] = *v78;
  v56[2] = *&v78[16];
  v57[0] = *&v78[32];
  *(v57 + 10) = *&v78[42];
  v56[0] = v77;
  sub_20C5E574C(&v52, v72, &qword_27C7CE338, &qword_20C650098);
  sub_20C5DBFC4(v56, &qword_27C7CE338, &qword_20C650098);
  *&v51[23] = v53;
  *&v51[39] = v54;
  *&v51[55] = v55[0];
  *&v51[65] = *(v55 + 10);
  *&v51[7] = v52;
  v38 = LOBYTE(v39[0]);
  v31 = sub_20C64D4E0();
  LOBYTE(v39[0]) = 0;
  sub_20C5E1E18(v27, a2, a3, a4 & 1, &v77);
  v66 = *&v78[112];
  v67[0] = *&v78[128];
  *(v67 + 9) = *&v78[137];
  v62 = *&v78[48];
  v63 = *&v78[64];
  v64 = *&v78[80];
  v65 = *&v78[96];
  v58 = v77;
  v59 = *v78;
  v60 = *&v78[16];
  v61 = *&v78[32];
  v68[7] = *&v78[96];
  v68[8] = *&v78[112];
  v69[0] = *&v78[128];
  *(v69 + 9) = *&v78[137];
  v68[4] = *&v78[48];
  v68[5] = *&v78[64];
  v68[6] = *&v78[80];
  v68[0] = v77;
  v68[1] = *v78;
  v68[2] = *&v78[16];
  v68[3] = *&v78[32];
  sub_20C5E574C(&v58, v72, &qword_27C7CE340, &qword_20C6500A0);
  sub_20C5DBFC4(v68, &qword_27C7CE340, &qword_20C6500A0);
  *(&v48[7] + 7) = v65;
  *(&v48[8] + 7) = v66;
  *(&v48[9] + 7) = v67[0];
  v48[10] = *(v67 + 9);
  *(&v48[3] + 7) = v61;
  *(&v48[4] + 7) = v62;
  *(&v48[5] + 7) = v63;
  *(&v48[6] + 7) = v64;
  *(v48 + 7) = v58;
  *(&v48[1] + 7) = v59;
  *(&v48[2] + 7) = v60;
  LOBYTE(a4) = v39[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_getKeyPath();
  v11 = v30;
  sub_20C64DF30();

  v12 = v33;
  v13 = v34;
  v14 = v36;
  (*(v34 + 16))(v33, v11 + *(v32 + 32), v36);
  sub_20C5E5300(v11, type metadata accessor for AudioLanguageEngagementSheetLayout);
  sub_20C64D050();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v13 + 8))(v12, v14);
  LOBYTE(v12) = sub_20C64D7A0();
  v23 = v35;
  v70[0] = v35;
  v70[1] = 0;
  v71[0] = v38;
  *&v71[1] = *v51;
  *&v71[49] = *&v51[48];
  *&v71[33] = *&v51[32];
  *&v71[65] = *&v51[64];
  v71[81] = v51[80];
  *&v71[17] = *&v51[16];
  v47[0] = v35;
  v47[1] = *v71;
  LOWORD(v47[6]) = *&v71[80];
  v47[4] = *&v71[48];
  v47[5] = *&v71[64];
  v47[2] = *&v71[16];
  v47[3] = *&v71[32];
  v24 = v31;
  v72[0] = v31;
  v72[1] = 0;
  LOBYTE(v73[0]) = a4;
  *(&v73[2] + 1) = v48[2];
  *(&v73[1] + 1) = v48[1];
  *(v73 + 1) = v48[0];
  *(&v73[6] + 1) = v48[6];
  *(&v73[5] + 1) = v48[5];
  *(&v73[4] + 1) = v48[4];
  *(&v73[3] + 1) = v48[3];
  *(&v73[10] + 1) = v48[10];
  *(&v73[9] + 1) = v48[9];
  *(&v73[8] + 1) = v48[8];
  *(&v73[7] + 1) = v48[7];
  *(&v73[11] + 1) = *v50;
  DWORD1(v73[11]) = *&v50[3];
  BYTE8(v73[11]) = v12;
  HIDWORD(v73[11]) = *&v49[3];
  *(&v73[11] + 9) = *v49;
  *&v74 = v16;
  *(&v74 + 1) = v18;
  *&v75 = v20;
  *(&v75 + 1) = v22;
  v76 = 0;
  *(&v47[16] + 8) = v73[9];
  *(&v47[17] + 8) = v73[10];
  *(&v47[19] + 8) = v74;
  *(&v47[20] + 8) = v75;
  *(&v47[18] + 8) = v73[11];
  *(&v47[9] + 8) = v73[2];
  *(&v47[8] + 8) = v73[1];
  *(&v47[7] + 8) = v73[0];
  *(&v47[6] + 8) = v31;
  *(&v47[13] + 8) = v73[6];
  *(&v47[12] + 8) = v73[5];
  *(&v47[11] + 8) = v73[4];
  *(&v47[10] + 8) = v73[3];
  *(&v47[15] + 8) = v73[8];
  *(&v47[14] + 8) = v73[7];
  BYTE8(v47[21]) = 0;
  memcpy(v37, v47, 0x159uLL);
  *&v78[113] = v48[7];
  *&v78[129] = v48[8];
  *&v78[145] = v48[9];
  *&v78[161] = v48[10];
  *&v78[49] = v48[3];
  *&v78[65] = v48[4];
  *&v78[81] = v48[5];
  *&v78[97] = v48[6];
  *&v78[1] = v48[0];
  *&v78[17] = v48[1];
  v77 = v24;
  v78[0] = a4;
  *&v78[33] = v48[2];
  *v79 = *v50;
  *&v79[3] = *&v50[3];
  v80 = v12;
  *v81 = *v49;
  *&v81[3] = *&v49[3];
  v82 = v16;
  v83 = v18;
  v84 = v20;
  v85 = v22;
  v86 = 0;
  sub_20C5E574C(v70, v39, &qword_27C7CE348, &qword_20C6500A8);
  sub_20C5E574C(v72, v39, &qword_27C7CE350, &qword_20C6500B0);
  sub_20C5DBFC4(&v77, &qword_27C7CE350, &qword_20C6500B0);
  v43 = *&v51[32];
  v44 = *&v51[48];
  v45 = *&v51[64];
  v41 = *v51;
  v39[0] = v23;
  v39[1] = 0;
  v40 = v38;
  v46 = v51[80];
  v42 = *&v51[16];
  return sub_20C5DBFC4(v39, &qword_27C7CE348, &qword_20C6500A8);
}

double sub_20C5E1AF8@<D0>(uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v16[1] = a3;
  v17 = a2;
  v5 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  MEMORY[0x28223BE20](v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C64DCC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v12 = qword_281109B60;
  sub_20C64DCE0();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v13 = sub_20C64DCD0();

  (*(v9 + 8))(v11, v8);
  sub_20C64D290();
  sub_20C64D290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C5E5300(v7, type metadata accessor for AudioLanguageEngagementSheetLayout);
  sub_20C64DE00();
  sub_20C64D280();
  *&v18[38] = v21;
  *&v18[22] = v20;
  *&v18[6] = v19;
  v14 = *&v18[16];
  *(a4 + 18) = *v18;
  *a4 = v13;
  *(a4 + 8) = 0;
  *(a4 + 16) = 257;
  *(a4 + 34) = v14;
  result = *&v18[32];
  *(a4 + 50) = *&v18[32];
  *(a4 + 64) = *&v18[46];
  *(a4 + 72) = 0;
  return result;
}

uint64_t sub_20C5E1E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  LODWORD(v101) = a4;
  v102 = a3;
  v100 = a2;
  v108 = a5;
  v6 = sub_20C64D880();
  v106 = *(v6 - 8);
  v107 = v6;
  MEMORY[0x28223BE20](v6);
  v105 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_20C64CFB0();
  v8 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v98 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C64CFE0();
  v96 = *(v10 - 8);
  v97 = v10;
  MEMORY[0x28223BE20](v10);
  v109 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v91 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v86 - v15;
  v17 = sub_20C64CE50();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v110 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v86 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v86 - v24;
  v88 = type metadata accessor for AudioLanguageEngagementSheet(0);
  v26 = *(v88 + 20);
  v94 = a1;
  sub_20C5E574C(a1 + v26, v16, &qword_27C7CE2E0, &qword_20C650FD0);
  v89 = *(v18 + 48);
  v90 = v18 + 48;
  v27 = v89(v16, 1, v17);
  v104 = v17;
  v99 = v8;
  v86 = v23;
  v87 = v18;
  if (v27 == 1)
  {
    v28 = v18;
    sub_20C5DBFC4(v16, &qword_27C7CE2E0, &qword_20C650FD0);
    v29 = 0;
    v30 = 0;
    v92 = 0;
    v93 = 0;
    v95 = 0;
  }

  else
  {
    v31 = *(v18 + 32);
    v95 = v25;
    v31(v25, v16, v17);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
    sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
    sub_20C64D220();
    swift_getKeyPath();
    v32 = v109;
    sub_20C64DF30();

    sub_20C64D220();
    swift_getKeyPath();
    v33 = v98;
    sub_20C64DF30();

    sub_20C644E78(v33, v23);
    (*(v99 + 8))(v33, v103);
    (*(v96 + 8))(v32, v97);
    v34 = sub_20C64D960();
    v36 = v35;
    v38 = v37;
    sub_20C64D850();
    sub_20C64D810();

    v40 = v105;
    v39 = v106;
    v41 = v107;
    (*(v106 + 104))(v105, *MEMORY[0x277CE0A10], v107);
    sub_20C64D8A0();

    (*(v39 + 8))(v40, v41);
    v42 = sub_20C64D950();
    v44 = v43;
    LOBYTE(v40) = v45;

    sub_20C5E56C0(v34, v36, v38 & 1);

    *&v133 = sub_20C64DC10();
    v29 = sub_20C64D940();
    v47 = v46;
    v49 = v48;
    v50 = v40 & 1;
    v51 = v42;
    v17 = v104;
    v53 = v52;
    sub_20C5E56C0(v51, v44, v50);

    v28 = v87;
    (*(v87 + 8))(v95, v17);
    KeyPath = swift_getKeyPath();
    v55 = v49 & 1;
    v30 = v47;
    v92 = v55;
    sub_20C5E573C(v29, v47, v55);
    v95 = v53;

    v93 = KeyPath;
  }

  v56 = v91;
  sub_20C5E574C(v94 + *(v88 + 24), v91, &qword_27C7CE2E0, &qword_20C650FD0);
  if (v89(v56, 1, v17) == 1)
  {
    sub_20C5DBFC4(v56, &qword_27C7CE2E0, &qword_20C650FD0);
    sub_20C5E56D0(&v133);
  }

  else
  {
    (*(v28 + 32))(v110, v56, v17);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
    sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
    v94 = v29;
    v91 = v30;
    sub_20C64D220();
    swift_getKeyPath();
    sub_20C64DF30();

    sub_20C64D220();
    swift_getKeyPath();
    v57 = v98;
    sub_20C64DF30();

    v58 = v109;
    sub_20C644E78(v57, v86);
    (*(v99 + 8))(v57, v103);
    (*(v96 + 8))(v58, v97);
    v109 = sub_20C64D960();
    v102 = v60;
    v103 = v59;
    v62 = v61;
    sub_20C64D850();
    v64 = v105;
    v63 = v106;
    v65 = v107;
    (*(v106 + 104))(v105, *MEMORY[0x277CE0A10], v107);
    v101 = sub_20C64D8A0();

    (*(v63 + 8))(v64, v65);
    v66 = swift_getKeyPath();
    LOBYTE(v65) = v62 & 1;
    LOBYTE(v133) = v62 & 1;
    v67 = sub_20C64D5C0();
    v68 = swift_getKeyPath();
    LODWORD(v63) = sub_20C64D5C0();
    LOBYTE(v64) = sub_20C64D7C0();
    sub_20C64D1A0();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    (*(v87 + 8))(v110, v104);
    *&v126 = v109;
    *(&v126 + 1) = v103;
    LOBYTE(v127) = v65;
    *(&v127 + 1) = v102;
    LOWORD(v128) = 256;
    *(&v128 + 1) = v66;
    v30 = v91;
    *&v129 = v101;
    DWORD2(v129) = v67;
    *&v130 = v68;
    BYTE8(v130) = 0;
    HIDWORD(v130) = v63;
    LOBYTE(v131) = v64;
    v29 = v94;
    *(&v131 + 1) = v70;
    *&v132[0] = v72;
    *(&v132[0] + 1) = v74;
    *&v132[1] = v76;
    BYTE8(v132[1]) = 0;
    nullsub_1();
    v137 = v130;
    v138 = v131;
    v139[0] = v132[0];
    *(v139 + 9) = *(v132 + 9);
    v133 = v126;
    v134 = v127;
    v135 = v128;
    v136 = v129;
  }

  v116 = v137;
  v117 = v138;
  v118[0] = v139[0];
  *(v118 + 9) = *(v139 + 9);
  v112 = v133;
  v113 = v134;
  v114 = v135;
  v115 = v136;
  v121 = v135;
  v122 = v136;
  v119 = v133;
  v120 = v134;
  *(v125 + 9) = *(v139 + 9);
  v124 = v138;
  v125[0] = v139[0];
  v123 = v137;
  v78 = v92;
  v77 = v93;
  v79 = v95;
  sub_20C5E56EC(v29, v30, v92, v95, v93);
  sub_20C5E574C(&v119, &v126, &qword_27C7CE358, &qword_20C6500B8);
  sub_20C5E57B4(v29, v30, v78, v79, v77);
  *(&v111[1] + 7) = v120;
  *(v111 + 7) = v119;
  *(&v111[4] + 7) = v123;
  *(&v111[5] + 7) = v124;
  *(&v111[6] + 7) = v125[0];
  v111[7] = *(v125 + 9);
  *(&v111[2] + 7) = v121;
  *(&v111[3] + 7) = v122;
  v80 = v108;
  *v108 = v29;
  v80[1] = v30;
  v80[2] = v78;
  v80[3] = v79;
  v80[4] = v77;
  *(v80 + 40) = 0;
  v81 = v111[5];
  *(v80 + 105) = v111[4];
  *(v80 + 121) = v81;
  *(v80 + 137) = v111[6];
  v82 = v112;
  *(v80 + 153) = v111[7];
  v83 = v111[1];
  *(v80 + 41) = v111[0];
  *(v80 + 57) = v83;
  v84 = v111[3];
  *(v80 + 73) = v111[2];
  *(v80 + 89) = v84;
  v128 = v114;
  v129 = v115;
  v126 = v82;
  v127 = v113;
  *(v132 + 9) = *(v118 + 9);
  v131 = v117;
  v132[0] = v118[0];
  v130 = v116;
  sub_20C5DBFC4(&v126, &qword_27C7CE358, &qword_20C6500B8);
  return sub_20C5E57B4(v29, v30, v78, v79, v77);
}

uint64_t sub_20C5E29B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v22 = sub_20C64D4C0();
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE280, &qword_20C64FFB8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  v23 = a1;
  v24 = a2;
  LOBYTE(v25) = a3 & 1;
  sub_20C5E2BFC(a4, &v21 - v14);
  sub_20C64D4B0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE288, &unk_20C64FFC0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE290, &unk_20C655580);
  v18 = sub_20C5E5248();
  v19 = sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580, MEMORY[0x277D84470]);
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  swift_getOpaqueTypeConformance2();
  sub_20C64DAE0();
  (*(v9 + 8))(v11, v22);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_20C5E2BFC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  MEMORY[0x28223BE20](v36);
  v40 = &v35 - v4;
  v5 = sub_20C64D070();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE288, &unk_20C64FFC0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = *v2;
  v15 = *(v2 + 8);
  v16 = *(v2 + 16);
  *v13 = sub_20C64D4D0();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2B8, &qword_20C64FFE0);
  sub_20C5E3094(a1, v14, v15, v16, &v13[*(v17 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  v18 = v11;
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  v20 = v38;
  v19 = v39;
  (*(v38 + 16))(v7, v10, v39);
  sub_20C5E5300(v10, type metadata accessor for AudioLanguageEngagementSheetLayout);
  sub_20C64D050();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v20 + 8))(v7, v19);
  v29 = v40;
  v30 = sub_20C64D7A0();
  v31 = &v13[*(v18 + 36)];
  *v31 = v30;
  *(v31 + 1) = v22;
  *(v31 + 2) = v24;
  *(v31 + 3) = v26;
  *(v31 + 4) = v28;
  v31[40] = 0;
  v32 = *MEMORY[0x277CDFA10];
  v33 = sub_20C64D2B0();
  (*(*(v33 - 8) + 104))(v29, v32, v33);
  sub_20C5E55A0(&qword_281105B08, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_20C64E010();
  if (result)
  {
    sub_20C5E5248();
    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580, MEMORY[0x277D84470]);
    sub_20C64DAB0();
    sub_20C5DBFC4(v29, &qword_27C7CE290, &unk_20C655580);
    return sub_20C5DBFC4(v13, &qword_27C7CE288, &unk_20C64FFC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5E3094@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v140 = a4;
  v129 = a2;
  v139 = a1;
  v137 = a5;
  v151 = sub_20C64D5E0();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_20C64DBE0();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_20C64DC80();
  v147 = *(v148 - 8);
  v8 = MEMORY[0x28223BE20](v148);
  v144 = v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v145 = v112 - v11;
  MEMORY[0x28223BE20](v10);
  v146 = v112 - v12;
  v138 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  v13 = MEMORY[0x28223BE20](v138);
  v130 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v127 = v112 - v16;
  MEMORY[0x28223BE20](v15);
  v119 = v112 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2C0, &qword_20C650008);
  v141 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v132 = v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v118 = v112 - v21;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2C8, &qword_20C650010);
  v22 = MEMORY[0x28223BE20](v152);
  v135 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v120 = v112 - v24;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2D0, &qword_20C650018);
  v142 = *(v143 - 8);
  v25 = MEMORY[0x28223BE20](v143);
  v136 = v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v134 = v112 - v28;
  MEMORY[0x28223BE20](v27);
  v123 = v112 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2D8, &unk_20C650020);
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v121 = v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v122 = v112 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v112 - v36;
  v38 = sub_20C64CE50();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v128 = v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E8, &qword_20C650030);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v131 = v112 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = v112 - v44;
  sub_20C5E574C(v139, v37, &qword_27C7CE2E0, &qword_20C650FD0);
  v46 = (*(v39 + 48))(v37, 1, v38);
  v139 = v45;
  v133 = v18;
  if (v46 == 1)
  {
    sub_20C5DBFC4(v37, &qword_27C7CE2E0, &qword_20C650FD0);
    (*(v31 + 56))(v45, 1, 1, v30);
    v47 = v140;
    v48 = v129;
    v49 = v132;
  }

  else
  {
    v50 = v144;
    v116 = v31;
    v117 = v30;
    (*(v39 + 32))(v128, v37, v38);
    v51 = swift_allocObject();
    v114 = v38;
    v48 = v129;
    *(v51 + 16) = v129;
    *(v51 + 24) = a3;
    v52 = v140 & 1;
    *(v51 + 32) = v140 & 1;
    MEMORY[0x28223BE20](v51);
    v113 = v39;
    sub_20C5E3070(v48, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2F0, &qword_20C650038);
    sub_20C5E5390();
    v53 = v118;
    sub_20C64DD40();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
    v55 = sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
    v115 = v52;
    v112[2] = v54;
    v112[1] = v55;
    sub_20C64D220();
    swift_getKeyPath();
    v56 = v119;
    sub_20C64DF30();

    sub_20C5E5300(v56, type metadata accessor for AudioLanguageEngagementSheetLayout);
    sub_20C64DE00();
    v119 = a3;
    sub_20C64D330();
    v57 = v120;
    (*(v141 + 32))(v120, v53, v18);
    v58 = (v57 + *(v152 + 36));
    v59 = v158;
    v58[4] = v157;
    v58[5] = v59;
    v58[6] = v159;
    v60 = v154;
    *v58 = v153;
    v58[1] = v60;
    v61 = v156;
    v58[2] = v155;
    v58[3] = v61;
    sub_20C64DC60();
    v62 = v145;
    MEMORY[0x20F300FC0](1);
    v63 = *(v147 + 8);
    v64 = v50;
    v65 = v148;
    v63(v64, v148);
    (*(v125 + 104))(v124, *MEMORY[0x277CE0EE0], v126);
    sub_20C64DC30();
    v66 = v146;
    sub_20C64DC50();

    v63(v62, v65);
    v67 = v149;
    sub_20C64D5D0();
    sub_20C5E54A0();
    sub_20C5E55A0(&qword_27C7CE320, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
    v68 = v123;
    v69 = v151;
    sub_20C64DA60();
    (*(v150 + 8))(v67, v69);
    v63(v66, v65);
    sub_20C5DBFC4(v57, &qword_27C7CE2C8, &qword_20C650010);
    LOBYTE(v69) = sub_20C64D7C0();
    v70 = v119;
    sub_20C64D220();
    swift_getKeyPath();
    v71 = v127;
    sub_20C64DF30();

    sub_20C5E5300(v71, type metadata accessor for AudioLanguageEngagementSheetLayout);
    sub_20C64D1A0();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v121;
    (*(v142 + 32))(v121, v68, v143);
    v81 = v117;
    v82 = &v80[*(v117 + 36)];
    *v82 = v69;
    *(v82 + 1) = v73;
    *(v82 + 2) = v75;
    *(v82 + 3) = v77;
    *(v82 + 4) = v79;
    v82[40] = 0;
    v83 = v80;
    v84 = v122;
    sub_20C5E5658(v83, v122, &qword_27C7CE2D8, &unk_20C650020);
    v85 = v84;
    v86 = v139;
    sub_20C5E5658(v85, v139, &qword_27C7CE2D8, &unk_20C650020);
    (*(v116 + 56))(v86, 0, 1, v81);
    (*(v113 + 8))(v128, v114);
    a3 = v70;
    v49 = v132;
    v47 = v140;
  }

  v87 = swift_allocObject();
  *(v87 + 16) = v48;
  *(v87 + 24) = a3;
  *(v87 + 32) = v47 & 1;
  MEMORY[0x28223BE20](v87);
  sub_20C5E3070(v48, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2F0, &qword_20C650038);
  sub_20C5E5390();
  sub_20C64DD40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_getKeyPath();
  v88 = v130;
  sub_20C64DF30();

  sub_20C5E5300(v88, type metadata accessor for AudioLanguageEngagementSheetLayout);
  sub_20C64DE00();
  sub_20C64D330();
  v89 = v135;
  (*(v141 + 32))(v135, v49, v133);
  v90 = (v89 + *(v152 + 36));
  v91 = v165;
  v90[4] = v164;
  v90[5] = v91;
  v90[6] = v166;
  v92 = v161;
  *v90 = v160;
  v90[1] = v92;
  v93 = v163;
  v90[2] = v162;
  v90[3] = v93;
  v94 = v144;
  sub_20C64DC60();
  v95 = v145;
  MEMORY[0x20F300FC0](1);
  v96 = *(v147 + 8);
  v97 = v148;
  v96(v94, v148);
  sub_20C64DC00();
  v98 = v146;
  sub_20C64DC50();

  v96(v95, v97);
  v99 = v149;
  sub_20C64D5D0();
  sub_20C5E54A0();
  sub_20C5E55A0(&qword_27C7CE320, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
  v100 = v134;
  v101 = v151;
  sub_20C64DA60();
  (*(v150 + 8))(v99, v101);
  v96(v98, v97);
  sub_20C5DBFC4(v89, &qword_27C7CE2C8, &qword_20C650010);
  v102 = v139;
  v103 = v131;
  sub_20C5D4D2C(v139, v131);
  v104 = v142;
  v105 = *(v142 + 16);
  v106 = v136;
  v107 = v143;
  v105(v136, v100, v143);
  v108 = v137;
  sub_20C5D4D2C(v103, v137);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE328, &qword_20C650048);
  v105((v108 + *(v109 + 48)), v106, v107);
  v110 = *(v104 + 8);
  v110(v100, v107);
  sub_20C5DBFC4(v102, &qword_27C7CE2E8, &qword_20C650030);
  v110(v106, v107);
  return sub_20C5DBFC4(v103, &qword_27C7CE2E8, &qword_20C650030);
}

uint64_t sub_20C5E43C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_storeEnumTagMultiPayload();
  sub_20C64DF40();

  return sub_20C5E5300(v6, type metadata accessor for AudioLanguageEngagementSheetAction);
}

__n128 sub_20C5E4504@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v37 = a3;
  v42 = a1;
  v41 = sub_20C64CFB0();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C64CFE0();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C64CE50();
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C644E78(v7, v36);
  (*(v39 + 8))(v7, v41);
  (*(v38 + 8))(v9, v40);
  v12 = sub_20C64D960();
  v14 = v13;
  v16 = v15;
  sub_20C64D800();
  sub_20C64D810();

  v17 = sub_20C64D950();
  v19 = v18;
  v21 = v20;

  sub_20C5E56C0(v12, v14, v16 & 1);

  *&v46 = sub_20C64DBF0();
  v22 = sub_20C64D940();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_20C5E56C0(v17, v19, v21 & 1);

  sub_20C64DE00();
  sub_20C64D330();
  v53 = v26 & 1;
  sub_20C64DE00();
  sub_20C64D280();
  *a5 = v22;
  *(a5 + 8) = v24;
  *(a5 + 16) = v26 & 1;
  *(a5 + 24) = v28;
  v29 = v51;
  *(a5 + 96) = v50;
  *(a5 + 112) = v29;
  result = v52;
  v31 = v47;
  *(a5 + 32) = v46;
  *(a5 + 48) = v31;
  v32 = v49;
  *(a5 + 64) = v48;
  *(a5 + 80) = v32;
  v33 = v43;
  v34 = v45;
  *(a5 + 160) = v44;
  *(a5 + 176) = v34;
  *(a5 + 128) = result;
  *(a5 + 144) = v33;
  return result;
}

__n128 sub_20C5E4984@<Q0>(uint64_t a4@<X8>)
{
  v5 = sub_20C64CFE0();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_20C64E030();
  MEMORY[0x28223BE20](v6 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v7 = qword_281109B60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  v8 = sub_20C64D8D0();
  v10 = v9;
  v12 = v11;
  sub_20C64D800();
  sub_20C64D810();

  v13 = sub_20C64D950();
  v15 = v14;
  v17 = v16;

  sub_20C5E56C0(v8, v10, v12 & 1);

  v18 = [objc_opt_self() lightGrayColor];
  *&v30 = sub_20C64DC40();
  v19 = sub_20C64D940();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_20C5E56C0(v13, v15, v17 & 1);

  sub_20C64DE00();
  sub_20C64D330();
  sub_20C64DE00();
  sub_20C64D280();
  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 16) = v23 & 1;
  *(a4 + 24) = v25;
  *(a4 + 96) = v34;
  *(a4 + 112) = v35;
  result = v36;
  *(a4 + 32) = v30;
  *(a4 + 48) = v31;
  *(a4 + 64) = v32;
  *(a4 + 80) = v33;
  *(a4 + 160) = v28;
  *(a4 + 176) = v29;
  *(a4 + 128) = v36;
  *(a4 + 144) = v27;
  return result;
}

uint64_t sub_20C5E4D44(uint64_t a1, unsigned int a2)
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

uint64_t sub_20C5E4D8C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C5E4DE0()
{
  result = qword_27C7CE1D8;
  if (!qword_27C7CE1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE1C8, &qword_20C64FE38);
    sub_20C5E4E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE1D8);
  }

  return result;
}

unint64_t sub_20C5E4E6C()
{
  result = qword_27C7CE1E0;
  if (!qword_27C7CE1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE1C0, &qword_20C64FE30);
    sub_20C5E4EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE1E0);
  }

  return result;
}

unint64_t sub_20C5E4EF8()
{
  result = qword_27C7CE1E8;
  if (!qword_27C7CE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE1B8, &qword_20C64FE28);
    sub_20C5E4F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE1E8);
  }

  return result;
}

unint64_t sub_20C5E4F84()
{
  result = qword_27C7CE1F0;
  if (!qword_27C7CE1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE1B0, &qword_20C64FE20);
    sub_20C5E5008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE1F0);
  }

  return result;
}

unint64_t sub_20C5E5008()
{
  result = qword_27C7CE1F8;
  if (!qword_27C7CE1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE200, &qword_20C64FF38);
    sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40, MEMORY[0x277CDD7F8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE218, &qword_20C64FF48);
    sub_20C5E5558(&qword_27C7CE220, &qword_27C7CE218, &qword_20C64FF48, MEMORY[0x277CDF7D8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE1F8);
  }

  return result;
}

uint64_t sub_20C5E5138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5E519C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AudioLanguageEngagementSheet(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = v2 + ((*(v5 + 80) + 33) & ~*(v5 + 80));

  return sub_20C5E0DAC(a1, v6, v7, v8, v9, a2);
}

unint64_t sub_20C5E5248()
{
  result = qword_27C7CE298;
  if (!qword_27C7CE298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE288, &unk_20C64FFC0);
    sub_20C5E5558(&qword_27C7CE2A0, &qword_27C7CE2A8, &qword_20C64FFD0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE298);
  }

  return result;
}

uint64_t sub_20C5E5300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20C5E5390()
{
  result = qword_27C7CE2F8;
  if (!qword_27C7CE2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE2F0, &qword_20C650038);
    sub_20C5E541C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE2F8);
  }

  return result;
}

unint64_t sub_20C5E541C()
{
  result = qword_27C7CE300;
  if (!qword_27C7CE300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE308, &qword_20C650040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE300);
  }

  return result;
}

unint64_t sub_20C5E54A0()
{
  result = qword_27C7CE310;
  if (!qword_27C7CE310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE2C8, &qword_20C650010);
    sub_20C5E5558(&qword_27C7CE318, &qword_27C7CE2C0, &qword_20C650008, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE310);
  }

  return result;
}

uint64_t sub_20C5E5558(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_20C5E55A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_2Tm()
{
  sub_20C5E3044(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_20C5E5658(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20C5E56C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_20C5E56D0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_20C5E56EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_20C5E573C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C5E573C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20C5E574C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20C5E57B4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_20C5E56C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C5E5818()
{
  if (*v0)
  {
    return 0x6465646E756F72;
  }

  else
  {
    return 0x6E69616C70;
  }
}

uint64_t sub_20C5E5850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616C70 && a2 == 0xE500000000000000;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465646E756F72 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C5E5928(uint64_t a1)
{
  v2 = sub_20C5E5E6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E5964(uint64_t a1)
{
  v2 = sub_20C5E5E6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E59A0(uint64_t a1)
{
  v2 = sub_20C5E5F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E59DC(uint64_t a1)
{
  v2 = sub_20C5E5F14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E5A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000020C659760 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_20C64E430();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_20C5E5AAC(uint64_t a1)
{
  v2 = sub_20C5E5EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E5AE8(uint64_t a1)
{
  v2 = sub_20C5E5EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingActionItemStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE360, &qword_20C650120);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE368, &qword_20C650128);
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE370, &qword_20C650130);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v18 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5E5E6C();
  sub_20C64E500();
  if (v11 < 0)
  {
    v14 = v11 & 0x7F;
    v26 = 1;
    sub_20C5E5EC0();
    v15 = v18;
    v16 = v22;
    sub_20C64E3B0();
    v25 = v14;
    sub_20C5DC954();
    v17 = v20;
    sub_20C64E410();
    (*(v19 + 8))(v15, v17);
    return (*(v8 + 8))(v10, v16);
  }

  else
  {
    v24 = 0;
    sub_20C5E5F14();
    v12 = v22;
    sub_20C64E3B0();
    v23 = v11;
    sub_20C5DC954();
    sub_20C64E410();
    (*(v21 + 8))(v7, v5);
    return (*(v8 + 8))(v10, v12);
  }
}

unint64_t sub_20C5E5E6C()
{
  result = qword_27C7CE378;
  if (!qword_27C7CE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE378);
  }

  return result;
}

unint64_t sub_20C5E5EC0()
{
  result = qword_27C7CE380;
  if (!qword_27C7CE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE380);
  }

  return result;
}

unint64_t sub_20C5E5F14()
{
  result = qword_27C7CE388;
  if (!qword_27C7CE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE388);
  }

  return result;
}

uint64_t MarketingActionItemStyle.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE390, &qword_20C650138);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE398, &qword_20C650140);
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3A0, &unk_20C650148);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C5E5E6C();
  v15 = v35;
  sub_20C64E4F0();
  if (!v15)
  {
    v30 = v7;
    v16 = v34;
    v35 = v11;
    v17 = sub_20C64E3A0();
    v18 = (2 * *(v17 + 16)) | 1;
    v37 = v17;
    v38 = v17 + 32;
    v39 = 0;
    v40 = v18;
    v19 = sub_20C5DDAF0();
    if (v19 == 2 || v39 != v40 >> 1)
    {
      v22 = sub_20C64E290();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
      *v24 = &type metadata for MarketingActionItemStyle;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v35 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else if (v19)
    {
      v41 = 1;
      sub_20C5E5EC0();
      sub_20C64E320();
      v20 = v35;
      sub_20C5DD048();
      v21 = v32;
      sub_20C64E390();
      (*(v33 + 8))(v6, v21);
      (*(v20 + 8))(v13, v10);
      swift_unknownObjectRelease();
      *v16 = v41 | 0x80;
    }

    else
    {
      v41 = 0;
      sub_20C5E5F14();
      v26 = v9;
      sub_20C64E320();
      v27 = v35;
      sub_20C5DD048();
      v28 = v30;
      sub_20C64E390();
      (*(v31 + 8))(v26, v28);
      (*(v27 + 8))(v13, v10);
      swift_unknownObjectRelease();
      *v16 = v41;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t MarketingActionItemStyle.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x20F301800](v1 >> 7);
  return MEMORY[0x20F301800](v1 & 0x7F);
}

uint64_t MarketingActionItemStyle.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1 >> 7);
  MEMORY[0x20F301800](v1 & 0x7F);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E6544()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1 >> 7);
  MEMORY[0x20F301800](v1 & 0x7F);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E6598()
{
  v1 = *v0;
  MEMORY[0x20F301800](v1 >> 7);
  return MEMORY[0x20F301800](v1 & 0x7F);
}

uint64_t sub_20C5E65D8(uint64_t a1)
{
  v2 = *v1;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v2 >> 7);
  MEMORY[0x20F301800](v2 & 0x7F);
  return sub_20C64E4E0();
}

unint64_t sub_20C5E662C()
{
  result = qword_27C7CE3A8;
  if (!qword_27C7CE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingActionItemStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for MarketingActionItemStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C5E6850()
{
  result = qword_27C7CE3B0;
  if (!qword_27C7CE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3B0);
  }

  return result;
}

unint64_t sub_20C5E68A8()
{
  result = qword_27C7CE3B8;
  if (!qword_27C7CE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3B8);
  }

  return result;
}

unint64_t sub_20C5E6900()
{
  result = qword_27C7CE3C0;
  if (!qword_27C7CE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3C0);
  }

  return result;
}

unint64_t sub_20C5E6958()
{
  result = qword_27C7CE3C8;
  if (!qword_27C7CE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3C8);
  }

  return result;
}

unint64_t sub_20C5E69B0()
{
  result = qword_27C7CE3D0;
  if (!qword_27C7CE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3D0);
  }

  return result;
}

unint64_t sub_20C5E6A08()
{
  result = qword_27C7CE3D8;
  if (!qword_27C7CE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3D8);
  }

  return result;
}

unint64_t sub_20C5E6A60()
{
  result = qword_27C7CE3E0;
  if (!qword_27C7CE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3E0);
  }

  return result;
}

unint64_t sub_20C5E6AB8()
{
  result = qword_27C7CE3E8;
  if (!qword_27C7CE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3E8);
  }

  return result;
}

unint64_t sub_20C5E6B10()
{
  result = qword_27C7CE3F0;
  if (!qword_27C7CE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE3F0);
  }

  return result;
}

uint64_t MarketingOffer.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MarketingOffer(0) + 20);

  return sub_20C5E6BD0(v3, a1);
}

uint64_t sub_20C5E6BD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MarketingOffer.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MarketingOffer(0) + 24));

  return v1;
}

uint64_t MarketingOffer.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for MarketingOffer(0) + 28));

  return v1;
}

uint64_t MarketingOffer.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for MarketingOffer(0) + 32));

  return v1;
}

uint64_t MarketingOffer.underlyingMarketingItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarketingOffer(0) + 36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarketingOffer.init(identifier:title:subtitle:actionItems:artwork:underlyingMarketingItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v19 = type metadata accessor for MarketingOffer(0);
  v20 = (a9 + v19[6]);
  *v20 = a1;
  v20[1] = a2;
  v21 = (a9 + v19[8]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + v19[7]);
  *v22 = a5;
  v22[1] = a6;
  *a9 = a7;
  sub_20C5E6BD0(a8, a9 + v19[5]);
  sub_20C5D43D8();
  sub_20C64D0D0();
  return sub_20C5DBFC4(a8, &qword_27C7CE3F8, &unk_20C650590);
}

uint64_t sub_20C5E6E70()
{
  v1 = *v0;
  v2 = 0x74496E6F69746361;
  v3 = 0x656C746974627573;
  v4 = 0x656C746974;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B726F77747261;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_20C5E6F38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C5E8AC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C5E6F6C(uint64_t a1)
{
  v2 = sub_20C5E7318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E6FA8(uint64_t a1)
{
  v2 = sub_20C5E7318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingOffer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE408, &qword_20C6505A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5E7318();
  sub_20C64E500();
  v11 = *v3;
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE418, &qword_20C6505A8);
  sub_20C5E7984(&qword_27C7CE420, &qword_27C7CE428, &protocol conformance descriptor for MarketingActionItem, MEMORY[0x277D83948]);
  sub_20C64E410();
  if (!v2)
  {
    type metadata accessor for MarketingOffer(0);
    v10[14] = 1;
    type metadata accessor for MarketingArtwork(0);
    sub_20C5E8D38(&qword_27C7CE430, type metadata accessor for MarketingArtwork, &protocol conformance descriptor for MarketingArtwork);
    sub_20C64E3D0();
    v10[13] = 2;
    sub_20C64E3C0();
    v10[12] = 3;
    sub_20C64E3C0();
    v10[11] = 4;
    sub_20C64E3C0();
    v10[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
    sub_20C5E5558(&qword_27C7CE438, &qword_27C7CE400, &qword_20C6573B0, MEMORY[0x277D0A8A0]);
    sub_20C64E410();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_20C5E7318()
{
  result = qword_27C7CE410;
  if (!qword_27C7CE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE410);
  }

  return result;
}

uint64_t MarketingOffer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE440, &qword_20C6505B0);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for MarketingOffer(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_20C5E7318();
  v38 = v11;
  v16 = v39;
  sub_20C64E4F0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v39 = v8;
  v32 = v3;
  v33 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE418, &qword_20C6505A8);
  v46 = 0;
  sub_20C5E7984(&qword_27C7CE448, &qword_27C7CE450, &protocol conformance descriptor for MarketingActionItem, MEMORY[0x277D83978]);
  v17 = v37;
  sub_20C64E390();
  v18 = v14;
  *v14 = v47;
  type metadata accessor for MarketingArtwork(0);
  v45 = 1;
  sub_20C5E8D38(&qword_27C7CE458, type metadata accessor for MarketingArtwork, &protocol conformance descriptor for MarketingArtwork);
  v19 = v39;
  sub_20C64E350();
  sub_20C5E7A20(v19, v14 + v12[5]);
  v44 = 2;
  v20 = sub_20C64E340();
  v21 = (v14 + v12[6]);
  *v21 = v20;
  v21[1] = v22;
  v43 = 3;
  v23 = sub_20C64E340();
  v24 = (v14 + v12[7]);
  *v24 = v23;
  v24[1] = v25;
  v42 = 4;
  v26 = sub_20C64E340();
  v27 = (v14 + v12[8]);
  *v27 = v26;
  v27[1] = v28;
  v41 = 5;
  sub_20C5E5558(&qword_27C7CE460, &qword_27C7CE400, &qword_20C6573B0, MEMORY[0x277D0A8B0]);
  v30 = v32;
  v29 = v33;
  sub_20C64E390();
  MEMORY[8](v38, v17);
  (*(v34 + 32))(v18 + v12[9], v29, v30);
  sub_20C5E8CD0(v18, v35, type metadata accessor for MarketingOffer);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_20C5E8D80(v18, type metadata accessor for MarketingOffer);
}

uint64_t sub_20C5E7984(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE418, &qword_20C6505A8);
    sub_20C5E8D38(a2, type metadata accessor for MarketingActionItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C5E7A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MarketingOffer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MarketingArtwork(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_20C5E7E48(a1, *v2);
  v11 = type metadata accessor for MarketingOffer(0);
  sub_20C5E6BD0(v2 + v11[5], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_20C64E4C0();
  }

  else
  {
    sub_20C5E8798(v10, v7);
    sub_20C64E4C0();
    MarketingArtwork.hash(into:)(a1);
    sub_20C5E8D80(v7, type metadata accessor for MarketingArtwork);
  }

  if (*(v2 + v11[6] + 8))
  {
    sub_20C64E4C0();
    sub_20C64E090();
  }

  else
  {
    sub_20C64E4C0();
  }

  if (*(v2 + v11[7] + 8))
  {
    sub_20C64E4C0();
    sub_20C64E090();
  }

  else
  {
    sub_20C64E4C0();
  }

  if (*(v2 + v11[8] + 8))
  {
    sub_20C64E4C0();
    sub_20C64E090();
  }

  else
  {
    sub_20C64E4C0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE400, &qword_20C6573B0);
  sub_20C5E5558(&qword_281105B48, &qword_27C7CE400, &qword_20C6573B0, MEMORY[0x277D0A8A8]);
  return sub_20C64E000();
}

uint64_t MarketingOffer.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingOffer.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E7DC4()
{
  sub_20C64E4A0();
  MarketingOffer.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E7E08(uint64_t a1)
{
  sub_20C64E4A0();
  MarketingOffer.hash(into:)(v2);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E7E48(uint64_t a1, uint64_t a2)
{
  v32 = sub_20C64CF10();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v25 - v6;
  v36 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v36);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MarketingActionItem(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x20F301800](v13);
  if (v13)
  {
    v15 = v9[6];
    v35 = &v12[v9[5]];
    v16 = v10;
    v17 = &v12[v15];
    v34 = v9[7];
    v18 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v29 = (v3 + 8);
    v30 = (v3 + 32);
    v25 = (v5 + 8);
    v26 = (v5 + 32);
    v33 = *(v16 + 72);
    do
    {
      sub_20C5E8CD0(v18, v12, type metadata accessor for MarketingActionItem);
      sub_20C5E8CD0(v12, v8, type metadata accessor for MarketingAction);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v21 = v31;
        v22 = v32;
        if (EnumCaseMultiPayload == 1)
        {
          (*v30)(v31, v8, v32);
          v23 = 1;
        }

        else
        {
          (*v30)(v31, v8, v32);
          v23 = 2;
        }

        MEMORY[0x20F301800](v23);
        sub_20C5E8D38(&qword_281106850, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        sub_20C64E000();
        v24 = v29;
      }

      else
      {
        v21 = v27;
        v22 = v28;
        (*v26)(v27, v8, v28);
        MEMORY[0x20F301800](0);
        sub_20C5E5558(&qword_281105B68, &qword_27C7CE1A0, " 7", MEMORY[0x277D0A8A8]);
        sub_20C64E000();
        v24 = v25;
      }

      (*v24)(v21, v22);
      if (*(v35 + 1))
      {
        sub_20C64E4C0();
        sub_20C64E090();
        if (!*(v17 + 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_20C64E4C0();
        if (!*(v17 + 1))
        {
LABEL_15:
          sub_20C64E4C0();
          goto LABEL_4;
        }
      }

      sub_20C64E4C0();
      sub_20C64E090();
LABEL_4:
      v19 = v12[v34];
      MEMORY[0x20F301800](v19 >> 7);
      MEMORY[0x20F301800](v19 & 0x7F);
      sub_20C64E090();
      result = sub_20C5E8D80(v12, type metadata accessor for MarketingActionItem);
      v18 += v33;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_20C5E8328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F301800](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 16);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (v9 < 0)
      {
        MEMORY[0x20F301800](1);
        MEMORY[0x20F301800](v7);
        v6 = 1;
        if (v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        MEMORY[0x20F301800](0);
        MEMORY[0x20F301800](v7);
        if (v9)
        {
          v6 = 1;
          goto LABEL_4;
        }
      }

      MEMORY[0x20F301800](0);
      v6 = v8;
LABEL_4:
      v5 += 24;
      result = MEMORY[0x20F301800](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s16FitnessMarketing0B5OfferV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for MarketingArtwork(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE3F8, &unk_20C650590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE480, &unk_20C6507D0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  if ((sub_20C5F65BC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for MarketingOffer(0);
  v15 = v14[5];
  v16 = *(v11 + 48);
  sub_20C5E6BD0(a1 + v15, v13);
  sub_20C5E6BD0(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_20C5E6BD0(v13, v10);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      sub_20C5E8798(&v13[v16], v7);
      v20 = _s16FitnessMarketing0B7ArtworkV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_20C5E8D80(v7, type metadata accessor for MarketingArtwork);
      sub_20C5E8D80(v10, type metadata accessor for MarketingArtwork);
      sub_20C5DBFC4(v13, &qword_27C7CE3F8, &unk_20C650590);
      if (!v20)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    sub_20C5E8D80(v10, type metadata accessor for MarketingArtwork);
LABEL_7:
    sub_20C5DBFC4(v13, &qword_27C7CE480, &unk_20C6507D0);
    goto LABEL_8;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_20C5DBFC4(v13, &qword_27C7CE3F8, &unk_20C650590);
LABEL_11:
  v21 = v14[6];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_20C64E430() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v25)
  {
    goto LABEL_8;
  }

  v26 = v14[7];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_20C64E430() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v30)
  {
    goto LABEL_8;
  }

  v31 = v14[8];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (v35 && (*v32 == *v34 && v33 == v35 || (sub_20C64E430() & 1) != 0))
    {
      goto LABEL_32;
    }
  }

  else if (!v35)
  {
LABEL_32:
    sub_20C5D43D8();
    v18 = sub_20C64D0A0();
    return v18 & 1;
  }

LABEL_8:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_20C5E8798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MarketingOffer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MarketingOffer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C5E89C0()
{
  result = qword_27C7CE468;
  if (!qword_27C7CE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE468);
  }

  return result;
}

unint64_t sub_20C5E8A18()
{
  result = qword_27C7CE470;
  if (!qword_27C7CE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE470);
  }

  return result;
}

unint64_t sub_20C5E8A70()
{
  result = qword_27C7CE478;
  if (!qword_27C7CE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE478);
  }

  return result;
}

uint64_t sub_20C5E8AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74496E6F69746361 && a2 == 0xEB00000000736D65;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C6598A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_20C64E430();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20C5E8CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C5E8D38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C5E8D80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C5E8DE0()
{
  v0 = sub_20C64CFB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C64CF90();
  v4 = sub_20C64CF80();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_27C7CE488 = v4;
  unk_27C7CE490 = v6;
  return result;
}

uint64_t static AudioLanguageEngagementSheetConstants.defaultLanguageIdentifier.getter()
{
  if (qword_27C7CDF70 != -1)
  {
    swift_once();
  }

  v0 = qword_27C7CE488;

  return v0;
}

uint64_t BubbleTipState.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BubbleTipState.loadState.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_20C5E8F84(v2, v3);
}

uint64_t sub_20C5E8F84(uint64_t result, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return v3;
}

uint64_t BubbleTipState.loadState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_20C5E8FFC(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_20C5E8FFC(uint64_t result, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return v3;
}

__n128 BubbleTipState.init(placementIdentifier:loadState:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t _s16FitnessMarketing14BubbleTipStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = 0, (sub_20C64E430() & 1) != 0))
  {
    v11 = v2;
    v12 = v3;
    v9 = v4;
    v10 = v5;
    sub_20C5E8F84(v2, v3);
    sub_20C5E8F84(v4, v5);
    v7 = _s16FitnessMarketing18BubbleTipLoadStateO2eeoiySbAC_ACtFZ_0(&v11, &v9);
    sub_20C5E8FFC(v9, v10);
    sub_20C5E8FFC(v11, v12);
  }

  return v7 & 1;
}

uint64_t get_enum_tag_for_layout_string_16FitnessMarketing18BubbleTipLoadStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_20C5E9150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20C5E9198(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_20C5E91F8()
{
  v1 = 0x656E6F6870;
  v2 = 0x6863746177;
  if (*v0 != 2)
  {
    v2 = 30324;
  }

  if (*v0)
  {
    v1 = 0x74656C626174;
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

uint64_t sub_20C5E925C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C5E9B98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C5E9284(uint64_t a1)
{
  v2 = sub_20C5E9924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E92C0(uint64_t a1)
{
  v2 = sub_20C5E9924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E9308(uint64_t a1)
{
  v2 = sub_20C5E9A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E9344(uint64_t a1)
{
  v2 = sub_20C5E9A74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E9380(uint64_t a1)
{
  v2 = sub_20C5E9A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E93BC(uint64_t a1)
{
  v2 = sub_20C5E9A20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E93F8(uint64_t a1)
{
  v2 = sub_20C5E9978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E9434(uint64_t a1)
{
  v2 = sub_20C5E9978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5E9470(uint64_t a1)
{
  v2 = sub_20C5E99CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5E94AC(uint64_t a1)
{
  v2 = sub_20C5E99CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingPlatform.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE498, &qword_20C6508B0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE4A0, &qword_20C6508B8);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE4A8, &qword_20C6508C0);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE4B0, &qword_20C6508C8);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE4B8, &qword_20C6508D0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5E9924();
  sub_20C64E500();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_20C5E99CC();
      v9 = v23;
      sub_20C64E3B0();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_20C5E9978();
      v9 = v26;
      sub_20C64E3B0();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_20C5E9A20();
    sub_20C64E3B0();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_20C5E9A74();
  sub_20C64E3B0();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_20C5E9924()
{
  result = qword_27C7CE4C0;
  if (!qword_27C7CE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4C0);
  }

  return result;
}

unint64_t sub_20C5E9978()
{
  result = qword_27C7CE4C8;
  if (!qword_27C7CE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4C8);
  }

  return result;
}

unint64_t sub_20C5E99CC()
{
  result = qword_27C7CE4D0;
  if (!qword_27C7CE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4D0);
  }

  return result;
}

unint64_t sub_20C5E9A20()
{
  result = qword_27C7CE4D8;
  if (!qword_27C7CE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4D8);
  }

  return result;
}

unint64_t sub_20C5E9A74()
{
  result = qword_27C7CE4E0;
  if (!qword_27C7CE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4E0);
  }

  return result;
}

void *sub_20C5E9AE0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_20C5E9CE8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t MarketingPlatform.hashValue.getter(unsigned __int8 a1)
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](a1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5E9B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656C626174 && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746177 && a2 == 0xE500000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C64E430();

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

void *sub_20C5E9CE8(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE548, &qword_20C650D88);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE550, &qword_20C650D90);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE558, &qword_20C650D98);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE560, &qword_20C650DA0);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE568, &qword_20C650DA8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C5E9924();
  v15 = v43;
  sub_20C64E4F0();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_20C64E3A0();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_20C5DD0F0();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_20C5E9A20();
        v29 = v33;
        sub_20C64E320();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_20C5E9A74();
        v23 = v33;
        sub_20C64E320();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_20C5E99CC();
      v28 = v33;
      sub_20C64E320();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_20C5E9978();
      v30 = v33;
      sub_20C64E320();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_20C64E290();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
  *v11 = &type metadata for MarketingPlatform;
  sub_20C64E330();
  sub_20C64E280();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_20C5EA32C()
{
  result = qword_27C7CE4E8;
  if (!qword_27C7CE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4E8);
  }

  return result;
}

unint64_t sub_20C5EA3E4()
{
  result = qword_27C7CE4F0;
  if (!qword_27C7CE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4F0);
  }

  return result;
}

unint64_t sub_20C5EA43C()
{
  result = qword_27C7CE4F8;
  if (!qword_27C7CE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE4F8);
  }

  return result;
}

unint64_t sub_20C5EA494()
{
  result = qword_27C7CE500;
  if (!qword_27C7CE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE500);
  }

  return result;
}

unint64_t sub_20C5EA4EC()
{
  result = qword_27C7CE508;
  if (!qword_27C7CE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE508);
  }

  return result;
}

unint64_t sub_20C5EA544()
{
  result = qword_27C7CE510;
  if (!qword_27C7CE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE510);
  }

  return result;
}

unint64_t sub_20C5EA59C()
{
  result = qword_27C7CE518;
  if (!qword_27C7CE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE518);
  }

  return result;
}

unint64_t sub_20C5EA5F4()
{
  result = qword_27C7CE520;
  if (!qword_27C7CE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE520);
  }

  return result;
}

unint64_t sub_20C5EA64C()
{
  result = qword_27C7CE528;
  if (!qword_27C7CE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE528);
  }

  return result;
}

unint64_t sub_20C5EA6A4()
{
  result = qword_27C7CE530;
  if (!qword_27C7CE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE530);
  }

  return result;
}

unint64_t sub_20C5EA6FC()
{
  result = qword_27C7CE538;
  if (!qword_27C7CE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE538);
  }

  return result;
}

unint64_t sub_20C5EA754()
{
  result = qword_27C7CE540;
  if (!qword_27C7CE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE540);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheetLayout.actionButtonsContentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C64D070();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AudioLanguageEngagementSheetLayout.bodyContentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioLanguageEngagementSheetLayout(0) + 24);
  v4 = sub_20C64D070();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioLanguageEngagementSheetLayout.init(actionButtonsContentMargins:actionButtonMaxWidth:bodyContentMargins:imageHeightMultiplier:submitButtonToSkipButtonSpacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v12 = sub_20C64D070();
  v13 = *(*(v12 - 8) + 32);
  v13(a3, a1, v12);
  v14 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  *(a3 + v14[5]) = a4;
  result = (v13)(a3 + v14[6], a2, v12);
  *(a3 + v14[7]) = a5;
  *(a3 + v14[8]) = a6;
  return result;
}

unint64_t sub_20C5EA9E4()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  if (v1 != 3)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000012;
  }

  v3 = 0xD000000000000014;
  if (!*v0)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C5EAA78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C5EB774(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C5EAAA0(uint64_t a1)
{
  v2 = sub_20C5EB3F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EAADC(uint64_t a1)
{
  v2 = sub_20C5EB3F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioLanguageEngagementSheetLayout.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE570, &qword_20C650DB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EB3F8();
  sub_20C64E500();
  LOBYTE(v17) = 0;
  sub_20C64D070();
  sub_20C5DC024(&qword_27C7CDFF8, MEMORY[0x277D096F8]);
  v14 = v2;
  v8 = v4;
  v9 = v15;
  sub_20C64E410();
  if (v9)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = v5;
  v11 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  v17 = *(v14 + v11[5]);
  v16 = 1;
  sub_20C5EB44C();
  sub_20C64E410();
  LOBYTE(v17) = 2;
  sub_20C64E410();
  v17 = *(v14 + v11[7]);
  v16 = 3;
  sub_20C64E410();
  v12 = v15;
  v17 = *(v14 + v11[8]);
  v16 = 4;
  sub_20C64E410();
  return (*(v12 + 8))(v7, v8);
}

uint64_t AudioLanguageEngagementSheetLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_20C64D070();
  v24 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE588, &qword_20C650DB8);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EB3F8();
  v28 = v10;
  v14 = v29;
  sub_20C64E4F0();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v6;
  v22 = v11;
  v29 = a1;
  LOBYTE(v31) = 0;
  sub_20C5DC024(&qword_27C7CE008, MEMORY[0x277D09710]);
  v15 = v25;
  sub_20C64E390();
  v16 = v3;
  v17 = *(v24 + 32);
  v17(v13, v15, v16);
  v30 = 1;
  sub_20C5EB4A0();
  sub_20C64E390();
  v25 = v17;
  v18 = v21;
  *&v13[v22[5]] = v31;
  LOBYTE(v31) = 2;
  sub_20C64E390();
  (v25)(&v13[v22[6]], v18, v16);
  v30 = 3;
  sub_20C64E390();
  *&v13[v22[7]] = v31;
  v30 = 4;
  sub_20C64E390();
  (*(v26 + 8))(v28, v27);
  v19 = v23;
  *&v13[v22[8]] = v31;
  sub_20C5EB4F4(v13, v19);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_20C5EB558(v13);
}

BOOL _s16FitnessMarketing34AudioLanguageEngagementSheetLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x20F3003B0]() & 1) != 0 && (v4 = type metadata accessor for AudioLanguageEngagementSheetLayout(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (v5 = v4, (MEMORY[0x20F3003B0](a1 + *(v4 + 24), a2 + *(v4 + 24))) && *(a1 + *(v5 + 28)) == *(a2 + *(v5 + 28)))
  {
    return *(a1 + *(v5 + 32)) == *(a2 + *(v5 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for AudioLanguageEngagementSheetLayout(uint64_t a1)
{
  result = qword_27C7CE598;
  if (!qword_27C7CE598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C5EB3F8()
{
  result = qword_27C7CE578;
  if (!qword_27C7CE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE578);
  }

  return result;
}

unint64_t sub_20C5EB44C()
{
  result = qword_27C7CE580;
  if (!qword_27C7CE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE580);
  }

  return result;
}

unint64_t sub_20C5EB4A0()
{
  result = qword_27C7CE590;
  if (!qword_27C7CE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE590);
  }

  return result;
}

uint64_t sub_20C5EB4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5EB558(uint64_t a1)
{
  v2 = type metadata accessor for AudioLanguageEngagementSheetLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5EB5DC(uint64_t a1)
{
  result = sub_20C64D070();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20C5EB670()
{
  result = qword_27C7CE5A8;
  if (!qword_27C7CE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE5A8);
  }

  return result;
}

unint64_t sub_20C5EB6C8()
{
  result = qword_27C7CE5B0;
  if (!qword_27C7CE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE5B0);
  }

  return result;
}

unint64_t sub_20C5EB720()
{
  result = qword_27C7CE5B8;
  if (!qword_27C7CE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE5B8);
  }

  return result;
}

uint64_t sub_20C5EB774(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x800000020C6598C0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020C6598E0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C659900 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020C659920 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000020C659940 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_20C64E430();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_20C5EB930()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C64DFF0();

    v4 = sub_20C5EBB2C(v3);

    if (v4)
    {
      if (*(v4 + 16))
      {
        v5 = sub_20C5DFFBC(0x6E6974656B72616DLL, 0xE900000000000067);
        if (v6)
        {
          sub_20C5DFF60(*(v4 + 56) + 32 * v5, v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEF50, &qword_20C650FC8);
          if (swift_dynamicCast())
          {
            if (*(v11 + 16) && (v7 = sub_20C5DFFBC(0x6E656D6563616C70, 0xE900000000000074), (v8 & 1) != 0))
            {
              sub_20C5DFF60(*(v11 + 56) + 32 * v7, v12);

              if (swift_dynamicCast())
              {

                return v11;
              }
            }

            else
            {
            }
          }
        }
      }

      if (*(v4 + 16))
      {
        v9 = sub_20C5DFFBC(0x6E656D6563616C70, 0xE900000000000074);
        if (v10)
        {
          sub_20C5DFF60(*(v4 + 56) + 32 * v9, v12);

          if (swift_dynamicCast())
          {
            return v11;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_20C5EBB2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5D0, &qword_20C650FB8);
    v2 = sub_20C64E300();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_20C5E01B4(*(a1 + 48) + 40 * v12, v27);
        sub_20C5DFF60(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_20C5E01B4(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_20C5DFF60(v25 + 8, v20);
        sub_20C5DBFC4(v24, &qword_27C7CE5D8, &qword_20C650FC0);
        v21 = v18;
        sub_20C5EC6F4(v20, v22);
        v13 = v21;
        sub_20C5EC6F4(v22, v23);
        sub_20C5EC6F4(v23, &v21);
        result = sub_20C5DFFBC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_20C5EC6F4(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_20C5EC6F4(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_20C5DBFC4(v24, &qword_27C7CE5D8, &qword_20C650FC0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_20C5EBE08()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C64DFF0();

    v4 = sub_20C5EBB2C(v3);

    if (v4)
    {
      if (*(v4 + 16))
      {
        v5 = sub_20C5DFFBC(0x6E6974656B72616DLL, 0xE900000000000067);
        if (v6)
        {
          sub_20C5DFF60(*(v4 + 56) + 32 * v5, v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEF50, &qword_20C650FC8);
          if (swift_dynamicCast())
          {
            if (*(v11 + 16) && (v7 = sub_20C5DFFBC(0x496567617373656DLL, 0xE900000000000064), (v8 & 1) != 0))
            {
              sub_20C5DFF60(*(v11 + 56) + 32 * v7, v12);

              if (swift_dynamicCast())
              {

                return v11;
              }
            }

            else
            {
            }
          }
        }
      }

      if (*(v4 + 16))
      {
        v9 = sub_20C5DFFBC(0xD000000000000012, 0x800000020C659960);
        if (v10)
        {
          sub_20C5DFF60(*(v4 + 56) + 32 * v9, v12);

          if (swift_dynamicCast())
          {
            return v11;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_20C5EC004(id a1, uint64_t a2)
{
  v5 = [v2 clickstreamMetricsEvent];
  if (v5 && (v6 = v5, v7 = sub_20C64DFF0(), v6, v8 = sub_20C5EBB2C(v7), , v8))
  {
    v9 = sub_20C5EB930();
    if (v10)
    {
LABEL_4:
      a1 = v9;
      a2 = v10;
      goto LABEL_7;
    }
  }

  else
  {
    v8 = sub_20C5F26C8(MEMORY[0x277D84F90]);

    v9 = sub_20C5EB930();
    if (v10)
    {
      goto LABEL_4;
    }
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C0, &unk_20C651AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C650FA0;
  *(inited + 32) = 0x6E656D6563616C70;
  v12 = inited + 32;
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v14 = sub_20C5F26C8(inited);
  swift_setDeallocating();
  sub_20C5DBFC4(v12, &qword_27C7CE5C8, &qword_20C650FB0);
  v15 = sub_20C5EBE08();
  if (v16)
  {
    v22 = v13;
    *&v21 = v15;
    *(&v21 + 1) = v16;
    sub_20C5EC6F4(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20C5EC228(v20, 0xD000000000000012, 0x800000020C659960, isUniquelyReferenced_nonNull_native);
  }

  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v21 = v14;
  sub_20C5EC3E4(v8, sub_20C5F20C0, 0, v18, &v21);

  return v21;
}

_OWORD *sub_20C5EC228(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20C5DFFBC(a2, a3);
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
      sub_20C5F23C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20C5F210C(v16, a4 & 1);
    v11 = sub_20C5DFFBC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20C64E440();
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

    return sub_20C5EC6F4(a1, v22);
  }

  else
  {
    sub_20C5EC378(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_20C5EC378(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20C5EC6F4(a4, (a5[7] + 32 * a1));
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