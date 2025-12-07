uint64_t MarketingButtonLayout.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingButtonLayout.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t MarketingButtonLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF6F0, &qword_20C655CD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C625BBC();
  sub_20C64E4F0();
  if (!v2)
  {
    v19 = 0;
    sub_20C625C64();
    sub_20C64E390();
    v9 = v17;
    LOBYTE(v17) = 1;
    v16 = sub_20C64E380();
    v19 = 2;
    sub_20C5EB4A0();
    sub_20C64E390();
    v11 = v17;
    v19 = 3;
    sub_20C64E350();
    (*(v6 + 8))(v8, v5);
    v12 = v16;
    v13 = v17;
    v14 = v18;
    *a2 = v9;
    *(a2 + 8) = v12;
    *(a2 + 16) = v11;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_20C624170()
{
  sub_20C64E4A0();
  MarketingButtonLayout.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C6241E0(uint64_t a1)
{
  sub_20C64E4A0();
  MarketingButtonLayout.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t MarketingButtonState.loadState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MarketingButtonState(0) + 44);

  return sub_20C625D04(v3, a1);
}

uint64_t MarketingButtonState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MarketingButtonState(0) + 44);

  return sub_20C625D74(a1, v3);
}

uint64_t MarketingButtonState.init(layout:locale:placement:platform:isLocalAccount:isAppleAccountAvailable:isSupportedDeviceOwner:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *a3;
  v20 = *(a3 + 1);
  v19 = *(a3 + 2);
  *a9 = *a1;
  *(a9 + 8) = v14;
  *(a9 + 16) = v15;
  *(a9 + 24) = v16;
  *(a9 + 32) = v17;
  v21 = type metadata accessor for MarketingButtonState(0);
  v22 = v21[5];
  v23 = sub_20C64CFE0();
  (*(*(v23 - 8) + 32))(a9 + v22, a2, v23);
  v24 = a9 + v21[6];
  *v24 = v18;
  *(v24 + 8) = v20;
  *(v24 + 16) = v19;
  *(a9 + v21[7]) = a4;
  sub_20C5E5658(a6, a9 + v21[9], &qword_27C7CEC80, &unk_20C6533B0);
  *(a9 + v21[8]) = a5;
  sub_20C5E5658(a7, a9 + v21[10], &qword_27C7CEC80, &unk_20C6533B0);
  return sub_20C5E5658(a8, a9 + v21[11], &qword_27C7CECC0, &qword_20C653470);
}

unint64_t sub_20C624478()
{
  v1 = *v0;
  v2 = 0x74756F79616CLL;
  v3 = 0x7461745364616F6CLL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0xD000000000000017;
  if (v1 == 4)
  {
    v4 = 0x416C61636F4C7369;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x6E656D6563616C70;
  if (v1 != 2)
  {
    v5 = 0x6D726F6674616C70;
  }

  if (*v0)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_20C624580@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C627548(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C6245B4(uint64_t a1)
{
  v2 = sub_20C6260C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6245F0(uint64_t a1)
{
  v2 = sub_20C6260C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingButtonState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF700, &qword_20C655CD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6260C8();
  sub_20C64E500();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v19[0] = *v3;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = 0;
  sub_20C62611C();
  sub_20C64E410();
  if (!v2)
  {
    v13 = type metadata accessor for MarketingButtonState(0);
    v19[0] = 1;
    sub_20C64CFE0();
    sub_20C626918(&qword_27C7CE110, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_20C64E410();
    v14 = v3 + *(v13 + 24);
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v19[0] = *v14;
    v20 = v15;
    v21 = v16;
    v24 = 2;
    sub_20C626170();

    sub_20C64E410();

    v19[0] = *(v3 + *(v13 + 28));
    v24 = 3;
    sub_20C5F8B88();
    sub_20C64E410();
    v19[0] = 4;
    sub_20C64E3F0();
    v19[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
    sub_20C6262D4(&qword_27C7CF720, MEMORY[0x277D043D0]);
    sub_20C64E410();
    v19[0] = 6;
    sub_20C64E410();
    v19[0] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
    sub_20C626344(&qword_27C7CF728, MEMORY[0x277D043D0]);
    sub_20C64E410();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MarketingButtonState.hash(into:)(uint64_t a1)
{
  MarketingButtonLayout.hash(into:)();
  v2 = type metadata accessor for MarketingButtonState(0);
  sub_20C64CFE0();
  sub_20C626918(&qword_27C7CF740, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_20C64E000();
  v3 = v1 + *(v2 + 24);
  v4 = *(v3 + 16);
  MarketingOfferPlacement.rawValue.getter(*v3);
  sub_20C64E090();

  sub_20C64E4C0();
  if (v4)
  {
    sub_20C64E090();
  }

  MEMORY[0x20F301800](*(v1 + *(v2 + 28)));
  sub_20C64E4C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  sub_20C64DEE0();
  sub_20C64DEE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  sub_20C626918(&qword_27C7CF748, type metadata accessor for MarketingOffer, &protocol conformance descriptor for MarketingOffer);
  return sub_20C64DEE0();
}

uint64_t MarketingButtonState.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingButtonState.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t MarketingButtonState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  MEMORY[0x28223BE20](v35);
  v36 = v33 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  v4 = MEMORY[0x28223BE20](v38);
  v37 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - v6;
  v8 = sub_20C64CFE0();
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF750, &qword_20C655CE0);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v14 = type metadata accessor for MarketingButtonState(0);
  MEMORY[0x28223BE20](v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_20C6260C8();
  v42 = v13;
  v18 = v43;
  sub_20C64E4F0();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v43 = v7;
  v19 = v39;
  v49 = 0;
  sub_20C62622C();
  sub_20C64E390();
  v20 = v46;
  v21 = v47;
  v22 = v48;
  *v16 = v45[0];
  *(v16 + 8) = v20;
  *(v16 + 3) = v21;
  v16[32] = v22;
  v45[0] = 1;
  sub_20C626918(&qword_27C7CE148, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  sub_20C64E390();
  (*(v19 + 32))(&v16[v14[5]], v10, v8);
  v49 = 2;
  sub_20C626280();
  sub_20C64E390();
  v23 = &v16[v14[6]];
  *v23 = v45[0];
  *(v23 + 8) = v46;
  v49 = 3;
  sub_20C5F8CA8();
  v33[1] = 0;
  sub_20C64E390();
  v24 = v14;
  v16[v14[7]] = v45[0];
  v45[0] = 4;
  v25 = sub_20C64E370();
  v26 = v40;
  v16[v24[8]] = v25 & 1;
  v45[0] = 5;
  v27 = sub_20C6262D4(&qword_27C7CF768, MEMORY[0x277D043D8]);
  v28 = v43;
  v33[0] = v27;
  sub_20C64E390();
  sub_20C5E5658(v28, &v16[v24[9]], &qword_27C7CEC80, &unk_20C6533B0);
  v45[0] = 6;
  v29 = v37;
  sub_20C64E390();
  sub_20C5E5658(v29, &v16[v24[10]], &qword_27C7CEC80, &unk_20C6533B0);
  v45[0] = 7;
  sub_20C626344(&qword_27C7CF770, MEMORY[0x277D043D8]);
  v30 = v36;
  v31 = v41;
  sub_20C64E390();
  (*(v26 + 8))(v42, v31);
  sub_20C5E5658(v30, &v16[v24[11]], &qword_27C7CECC0, &qword_20C653470);
  sub_20C626418(v16, v34);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_20C62647C(v16);
}

uint64_t sub_20C6253E0()
{
  sub_20C64E4A0();
  MarketingButtonState.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C625424(uint64_t a1)
{
  sub_20C64E4A0();
  MarketingButtonState.hash(into:)(v2);
  return sub_20C64E4E0();
}

FitnessMarketing::MarketingActionButtonLocalState __swiftcall MarketingActionButtonLocalState.init(isShowingServiceSubscriptionHandoff:isShowingNoSupportedDeviceAlert:)(Swift::Bool isShowingServiceSubscriptionHandoff, Swift::Bool isShowingNoSupportedDeviceAlert)
{
  *v2 = isShowingServiceSubscriptionHandoff;
  v2[1] = isShowingNoSupportedDeviceAlert;
  result.isShowingServiceSubscriptionHandoff = isShowingServiceSubscriptionHandoff;
  return result;
}

unint64_t sub_20C625498()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_20C6254D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000023 && 0x800000020C65A3C0 == a2;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000020C65A3F0 == a2)
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

uint64_t sub_20C6255B4(uint64_t a1)
{
  v2 = sub_20C6264D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6255F0(uint64_t a1)
{
  v2 = sub_20C6264D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingActionButtonLocalState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF778, &qword_20C655CE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6264D8();
  sub_20C64E500();
  v12 = 0;
  sub_20C64E3F0();
  if (!v2)
  {
    v11 = 1;
    sub_20C64E3F0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MarketingActionButtonLocalState.hashValue.getter()
{
  sub_20C64E4A0();
  sub_20C64E4C0();
  sub_20C64E4C0();
  return sub_20C64E4E0();
}

uint64_t MarketingActionButtonLocalState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF788, &qword_20C655CF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6264D8();
  sub_20C64E4F0();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_20C64E370();
    v13 = 1;
    v11 = sub_20C64E370();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_20C625A34()
{
  sub_20C64E4A0();
  sub_20C64E4C0();
  sub_20C64E4C0();
  return sub_20C64E4E0();
}

uint64_t sub_20C625AD4(uint64_t a1)
{
  sub_20C64E4A0();
  sub_20C64E4C0();
  sub_20C64E4C0();
  return sub_20C64E4E0();
}

BOOL _s16FitnessMarketing0B12ButtonLayoutV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  v5 = a2[32];
  if (a1[32])
  {
    return (a2[32] & 1) != 0;
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }
}

unint64_t sub_20C625BBC()
{
  result = qword_27C7CF6E0;
  if (!qword_27C7CF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF6E0);
  }

  return result;
}

unint64_t sub_20C625C10()
{
  result = qword_27C7CF6E8;
  if (!qword_27C7CF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF6E8);
  }

  return result;
}

unint64_t sub_20C625C64()
{
  result = qword_27C7CF6F8;
  if (!qword_27C7CF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF6F8);
  }

  return result;
}

uint64_t type metadata accessor for MarketingButtonState(uint64_t a1)
{
  result = qword_281106628;
  if (!qword_281106628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C625D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C625D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s16FitnessMarketing0B11ButtonStateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  v7 = a2[32];
  if (a1[32])
  {
    if (!a2[32])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  v8 = type metadata accessor for MarketingButtonState(0);
  if ((MEMORY[0x20F300320](&a1[v8[5]], &a2[v8[5]]) & 1) == 0)
  {
    return 0;
  }

  v9 = v8[6];
  v10 = &a1[v9];
  v12 = *&a1[v9 + 8];
  v11 = *&a1[v9 + 16];
  v13 = &a2[v9];
  v15 = *(v13 + 1);
  v14 = *(v13 + 2);
  v16 = *v13;
  v17 = MarketingOfferPlacement.rawValue.getter(*v10);
  v19 = v18;
  if (v17 == MarketingOfferPlacement.rawValue.getter(v16) && v19 == v20)
  {
  }

  else
  {
    v22 = sub_20C64E430();

    if ((v22 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (!v11)
  {

    if (v14)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (!v14)
  {
LABEL_30:

LABEL_31:

    return 0;
  }

  if (v12 == v15 && v11 == v14)
  {

LABEL_34:

    goto LABEL_35;
  }

  v23 = sub_20C64E430();

  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  if (a1[v8[7]] != a2[v8[7]] || a1[v8[8]] != a2[v8[8]] || (sub_20C64DED0() & 1) == 0 || (sub_20C64DED0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MarketingOffer(0);
  sub_20C626918(qword_2811061C0, type metadata accessor for MarketingOffer, &protocol conformance descriptor for MarketingOffer);

  return sub_20C64DED0();
}

unint64_t sub_20C6260C8()
{
  result = qword_27C7CF708;
  if (!qword_27C7CF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF708);
  }

  return result;
}

unint64_t sub_20C62611C()
{
  result = qword_27C7CF710;
  if (!qword_27C7CF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF710);
  }

  return result;
}

unint64_t sub_20C626170()
{
  result = qword_27C7CF718;
  if (!qword_27C7CF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF718);
  }

  return result;
}

uint64_t sub_20C6261C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C62622C()
{
  result = qword_27C7CF758;
  if (!qword_27C7CF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF758);
  }

  return result;
}

unint64_t sub_20C626280()
{
  result = qword_27C7CF760;
  if (!qword_27C7CF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF760);
  }

  return result;
}

uint64_t sub_20C6262D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C626344(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECC0, &qword_20C653470);
    sub_20C626918(&qword_27C7CF730, type metadata accessor for MarketingOffer, &protocol conformance descriptor for MarketingOffer);
    sub_20C626918(&qword_27C7CF738, type metadata accessor for MarketingOffer, &protocol conformance descriptor for MarketingOffer);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C626418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingButtonState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C62647C(uint64_t a1)
{
  v2 = type metadata accessor for MarketingButtonState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C6264D8()
{
  result = qword_27C7CF780;
  if (!qword_27C7CF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF780);
  }

  return result;
}

unint64_t sub_20C626530()
{
  result = qword_27C7CF790;
  if (!qword_27C7CF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF790);
  }

  return result;
}

unint64_t sub_20C626588()
{
  result = qword_27C7CF798;
  if (!qword_27C7CF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF798);
  }

  return result;
}

unint64_t sub_20C626628()
{
  result = qword_281106268;
  if (!qword_281106268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106268);
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

uint64_t sub_20C626690(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[33])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20C6266D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_20C626764(uint64_t a1)
{
  sub_20C64CFE0();
  if (v1 <= 0x3F)
  {
    sub_20C62682C();
    if (v2 <= 0x3F)
    {
      sub_20C626884(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C62682C()
{
  if (!qword_2811057D8)
  {
    v0 = sub_20C64DEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811057D8);
    }
  }
}

void sub_20C626884(uint64_t a1)
{
  if (!qword_2811057E0)
  {
    type metadata accessor for MarketingOffer(255);
    sub_20C626918(qword_2811061C0, type metadata accessor for MarketingOffer, &protocol conformance descriptor for MarketingOffer);
    v1 = sub_20C64DEF0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811057E0);
    }
  }
}

uint64_t sub_20C626918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for MarketingActionButtonLocalState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for MarketingActionButtonLocalState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for MarketingButtonState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingButtonState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C626C84()
{
  result = qword_27C7CF7A0;
  if (!qword_27C7CF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7A0);
  }

  return result;
}

unint64_t sub_20C626CDC()
{
  result = qword_27C7CF7A8;
  if (!qword_27C7CF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7A8);
  }

  return result;
}

unint64_t sub_20C626D34()
{
  result = qword_27C7CF7B0;
  if (!qword_27C7CF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7B0);
  }

  return result;
}

unint64_t sub_20C626D8C()
{
  result = qword_27C7CF7B8;
  if (!qword_27C7CF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7B8);
  }

  return result;
}

unint64_t sub_20C626DE4()
{
  result = qword_27C7CF7C0;
  if (!qword_27C7CF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7C0);
  }

  return result;
}

unint64_t sub_20C626E3C()
{
  result = qword_27C7CF7C8;
  if (!qword_27C7CF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7C8);
  }

  return result;
}

unint64_t sub_20C626E94()
{
  result = qword_27C7CF7D0;
  if (!qword_27C7CF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7D0);
  }

  return result;
}

unint64_t sub_20C626EEC()
{
  result = qword_27C7CF7D8;
  if (!qword_27C7CF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7D8);
  }

  return result;
}

unint64_t sub_20C626F44()
{
  result = qword_27C7CF7E0;
  if (!qword_27C7CF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7E0);
  }

  return result;
}

unint64_t sub_20C626F9C()
{
  result = qword_27C7CF7E8;
  if (!qword_27C7CF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7E8);
  }

  return result;
}

unint64_t sub_20C626FF4()
{
  result = qword_27C7CF7F0;
  if (!qword_27C7CF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7F0);
  }

  return result;
}

unint64_t sub_20C62704C()
{
  result = qword_27C7CF7F8;
  if (!qword_27C7CF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7F8);
  }

  return result;
}

unint64_t sub_20C6270A4()
{
  result = qword_27C7CF800;
  if (!qword_27C7CF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF800);
  }

  return result;
}

unint64_t sub_20C6270FC()
{
  result = qword_27C7CF808;
  if (!qword_27C7CF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF808);
  }

  return result;
}

unint64_t sub_20C627154()
{
  result = qword_27C7CF810;
  if (!qword_27C7CF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF810);
  }

  return result;
}

unint64_t sub_20C6271AC()
{
  result = qword_27C7CF818;
  if (!qword_27C7CF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF818);
  }

  return result;
}

unint64_t sub_20C627204()
{
  result = qword_27C7CF820;
  if (!qword_27C7CF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF820);
  }

  return result;
}

unint64_t sub_20C62725C()
{
  result = qword_27C7CF828;
  if (!qword_27C7CF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF828);
  }

  return result;
}

uint64_t sub_20C6272B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696461656CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C6273C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C416E6F74747562 && a2 == 0xEF746E656D6E6769;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C65A360 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xEE0074657366664FLL || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x78614D6C6562616CLL && a2 == 0xED00006874646957)
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

uint64_t sub_20C627548(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x416C61636F4C7369 && a2 == 0xEE00746E756F6363 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C65A380 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C65A3A0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = sub_20C64E430();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

__n128 AudioLanguageEngagementSheetFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t AudioLanguageEngagementSheetFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v142 = a3;
  v139 = a2;
  v6 = type metadata accessor for AudioLanguageEngagementSheet(0);
  MEMORY[0x28223BE20](v6 - 8);
  v136 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  v8 = MEMORY[0x28223BE20](v138);
  v10 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v134 = &v133 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v133 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v133 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA68, &qword_20C652AD0);
  v140 = *(v18 - 8);
  v141 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v135 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v133 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v133 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v137 = &v133 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v133 - v29;
  v31 = type metadata accessor for AudioLanguageEngagementSheetAction(0);
  MEMORY[0x28223BE20](v31);
  v33 = (&v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v4[1];
  v144 = *v4;
  v145 = v34;
  v35 = v4[3];
  v146 = v4[2];
  v147 = v35;
  sub_20C62AF28(a4, v33, type metadata accessor for AudioLanguageEngagementSheetAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v82 = v81[16];
      v83 = v81[20];
      v84 = &v23[v81[24]];
      v143[0] = 4;
      sub_20C628718();
      sub_20C64E230();
      sub_20C64E170();
      v85 = *MEMORY[0x277D043F0];
      v86 = sub_20C64DF10();
      (*(*(v86 - 8) + 104))(&v23[v82], v85, v86);
      v87 = *MEMORY[0x277D043E8];
      v88 = sub_20C64DF00();
      (*(*(v88 - 8) + 104))(&v23[v83], v87, v88);
      v89 = swift_allocObject();
      v90 = v145;
      v89[1] = v144;
      v89[2] = v90;
      v91 = v147;
      v89[3] = v146;
      v89[4] = v91;
      *v84 = &unk_20C656718;
      *(v84 + 1) = v89;
      v93 = v140;
      v92 = v141;
      (*(v140 + 104))(v23, *MEMORY[0x277D043B0], v141);
      v94 = v142;
      v95 = *v142;
      sub_20C62AEF0(&v144, v143);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_20C5F8738(0, v95[2] + 1, 1, v95);
      }

      v97 = v95[2];
      v96 = v95[3];
      if (v97 >= v96 >> 1)
      {
        v95 = sub_20C5F8738((v96 > 1), v97 + 1, 1, v95);
      }

      v95[2] = v97 + 1;
      result = (*(v93 + 32))(v95 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v97, v23, v92);
      goto LABEL_29;
    }

    v42 = v142;
    if (EnumCaseMultiPayload == 4)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v44 = v43[16];
      v45 = v43[20];
      v46 = &v26[v43[24]];
      v143[0] = 2;
      sub_20C628718();
      sub_20C64E230();
      sub_20C64E170();
      v47 = *MEMORY[0x277D04400];
      v48 = sub_20C64DF10();
      (*(*(v48 - 8) + 104))(&v26[v44], v47, v48);
      v49 = swift_allocObject();
      v50 = v145;
      v49[1] = v144;
      v49[2] = v50;
      v51 = v147;
      v49[3] = v146;
      v49[4] = v51;
      *v46 = &unk_20C656730;
      *(v46 + 1) = v49;
      v52 = *MEMORY[0x277D043E8];
      v53 = sub_20C64DF00();
      (*(*(v53 - 8) + 104))(&v26[v45], v52, v53);
      v55 = v140;
      v54 = v141;
      (*(v140 + 104))(v26, *MEMORY[0x277D043B0], v141);
      v56 = *v42;
      sub_20C62AEF0(&v144, v143);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_20C5F8738(0, v56[2] + 1, 1, v56);
      }

      v58 = v56[2];
      v57 = v56[3];
      if (v58 >= v57 >> 1)
      {
        v56 = sub_20C5F8738((v57 > 1), v58 + 1, 1, v56);
      }

      v56[2] = v58 + 1;
      result = (*(v55 + 32))(v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v58, v26, v54);
    }

    else
    {
      v116 = *(type metadata accessor for AudioLanguageEngagementSheetState(0) + 28);
      v117 = v139;
      sub_20C5DE2D0(v139 + v116, v10);
      v118 = swift_getEnumCaseMultiPayload();
      result = sub_20C5DBFC4(v10, &qword_27C7CE0F8, &qword_20C64FC10);
      if (v118 != 3)
      {
        return result;
      }

      sub_20C5DBFC4(v117 + v116, &qword_27C7CE0F8, &qword_20C64FC10);
      swift_storeEnumTagMultiPayload();
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v120 = v119[16];
      v121 = v119[20];
      v122 = v135;
      v123 = &v135[v119[24]];
      v143[0] = 5;
      sub_20C628718();
      sub_20C64E230();
      sub_20C64E170();
      v124 = *MEMORY[0x277D04400];
      v125 = sub_20C64DF10();
      (*(*(v125 - 8) + 104))(&v122[v120], v124, v125);
      v126 = *MEMORY[0x277D043E0];
      v127 = sub_20C64DF00();
      (*(*(v127 - 8) + 104))(&v122[v121], v126, v127);
      *v123 = &unk_20C656708;
      *(v123 + 1) = 0;
      v129 = v140;
      v128 = v141;
      (*(v140 + 104))(v122, *MEMORY[0x277D043B0], v141);
      v56 = *v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_20C5F8738(0, v56[2] + 1, 1, v56);
      }

      v131 = v56[2];
      v130 = v56[3];
      if (v131 >= v130 >> 1)
      {
        v56 = sub_20C5F8738((v130 > 1), v131 + 1, 1, v56);
      }

      v56[2] = v131 + 1;
      result = (*(v129 + 32))(v56 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v131, v122, v128);
    }

    *v42 = v56;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v37 = v136;
        sub_20C5E5138(v33, v136);
        v38 = *(type metadata accessor for AudioLanguageEngagementSheetState(0) + 28);
        v39 = v139;
        sub_20C5DE2D0(v139 + v38, v15);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          sub_20C5DBFC4(v15, &qword_27C7CE0F8, &qword_20C64FC10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE248, &qword_20C64FF90);
          v40 = v134;
          sub_20C62AF28(v37, v134, type metadata accessor for AudioLanguageEngagementSheet);
          sub_20C64CF20();
          sub_20C62B458(v37, type metadata accessor for AudioLanguageEngagementSheet);
          swift_storeEnumTagMultiPayload();
          return sub_20C5DE384(v40, v39 + v38);
        }

        sub_20C62B458(v37, type metadata accessor for AudioLanguageEngagementSheet);
        v132 = v15;
        return sub_20C5DBFC4(v132, &qword_27C7CE0F8, &qword_20C64FC10);
      }

      type metadata accessor for AudioLanguageEngagementSheetState(0);
      v98 = sub_20C64CF80();
      v100 = v99;
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v102 = v101[16];
      v103 = v101[20];
      v104 = &v30[v101[24]];
      v143[0] = 0;
      sub_20C628718();
      sub_20C64E230();
      sub_20C64E170();
      v105 = *MEMORY[0x277D04400];
      v106 = sub_20C64DF10();
      (*(*(v106 - 8) + 104))(&v30[v102], v105, v106);
      v107 = *MEMORY[0x277D043E8];
      v108 = sub_20C64DF00();
      (*(*(v108 - 8) + 104))(&v30[v103], v107, v108);
      v109 = swift_allocObject();
      v110 = v145;
      *(v109 + 16) = v144;
      *(v109 + 32) = v110;
      v111 = v147;
      *(v109 + 48) = v146;
      *(v109 + 64) = v111;
      *(v109 + 80) = v98;
      *(v109 + 88) = v100;
      *v104 = &unk_20C656750;
      *(v104 + 1) = v109;
      v113 = v140;
      v112 = v141;
      (*(v140 + 104))(v30, *MEMORY[0x277D043B0], v141);
      v94 = v142;
      v95 = *v142;
      sub_20C62AEF0(&v144, v143);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_20C5F8738(0, v95[2] + 1, 1, v95);
      }

      v115 = v95[2];
      v114 = v95[3];
      if (v115 >= v114 >> 1)
      {
        v95 = sub_20C5F8738((v114 > 1), v115 + 1, 1, v95);
      }

      v95[2] = v115 + 1;
      result = (*(v113 + 32))(v95 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v115, v30, v112);
LABEL_29:
      *v94 = v95;
      return result;
    }

    v59 = *v33;
    v60 = v33[1];
    v61 = v33[2];
    v62 = v33[3];
    v63 = v33[4];
    v64 = (v139 + *(type metadata accessor for AudioLanguageEngagementSheetState(0) + 28));
    sub_20C5DE2D0(v64, v17);
    if (swift_getEnumCaseMultiPayload() != 4)
    {

      v132 = v17;
      return sub_20C5DBFC4(v132, &qword_27C7CE0F8, &qword_20C64FC10);
    }

    v139 = v59;
    sub_20C5DBFC4(v17, &qword_27C7CE0F8, &qword_20C64FC10);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
    v66 = v65[16];
    v67 = v65[20];
    v68 = v137;
    v69 = &v137[v65[24]];
    v143[0] = 1;
    sub_20C628718();
    sub_20C64E230();
    sub_20C64E170();
    v70 = *MEMORY[0x277D043F0];
    v71 = sub_20C64DF10();
    (*(*(v71 - 8) + 104))(&v68[v66], v70, v71);
    v72 = *MEMORY[0x277D043E8];
    v73 = sub_20C64DF00();
    (*(*(v73 - 8) + 104))(&v68[v67], v72, v73);
    v74 = swift_allocObject();
    v75 = v145;
    v74[1] = v144;
    v74[2] = v75;
    v76 = v147;
    v74[3] = v146;
    v74[4] = v76;
    *v69 = &unk_20C656740;
    *(v69 + 1) = v74;
    (*(v140 + 104))(v68, *MEMORY[0x277D043B0], v141);
    v77 = v142;
    v78 = *v142;
    sub_20C62AEF0(&v144, v143);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_20C5F8738(0, v78[2] + 1, 1, v78);
    }

    v80 = v78[2];
    v79 = v78[3];
    if (v80 >= v79 >> 1)
    {
      v78 = sub_20C5F8738((v79 > 1), v80 + 1, 1, v78);
    }

    v78[2] = v80 + 1;
    (*(v140 + 32))(v78 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v80, v137, v141);
    *v77 = v78;
    sub_20C5DBFC4(v64, &qword_27C7CE0F8, &qword_20C64FC10);
    *v64 = v139;
    v64[1] = v60;
    v64[2] = v61;
    v64[3] = v62;
    v64[4] = v63;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_20C628718()
{
  result = qword_27C7CF838;
  if (!qword_27C7CF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF838);
  }

  return result;
}

uint64_t sub_20C62876C(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 32) = sub_20C64E160();
  *(v4 + 40) = sub_20C64E150();
  v6 = *a2;
  v7 = *(a2 + 3);
  *(v4 + 48) = *(a2 + 2);
  *(v4 + 64) = v7;
  v10 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v4 + 80) = v8;
  *v8 = v4;
  v8[1] = sub_20C628880;

  return v10();
}

uint64_t sub_20C628880()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v8 = (v2[8] + *v2[8]);
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v3;
  v4[1] = sub_20C628A24;
  v5 = v2[3];
  v6 = v2[2];

  return v8(v6, v5);
}

uint64_t sub_20C628A24()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {
    v4 = sub_20C64E130();

    return MEMORY[0x2822009F8](sub_20C628DC0, v4, v3);
  }

  else
  {
    *(v2 + 120) = 1;
    v7 = (*(v2 + 48) + **(v2 + 48));
    v5 = swift_task_alloc();
    *(v2 + 104) = v5;
    *v5 = v2;
    v5[1] = sub_20C628C18;

    return v7(v2 + 120);
  }
}

uint64_t sub_20C628C18()
{
  *(*v1 + 112) = v0;

  v3 = sub_20C64E130();
  if (v0)
  {
    v4 = sub_20C628F6C;
  }

  else
  {
    v4 = sub_20C628D5C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20C628D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C628DC0()
{

  v1 = *(v0 + 96);
  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v2 = sub_20C64D160();
  __swift_project_value_buffer(v2, qword_27C7DD450);
  v3 = v1;
  v4 = sub_20C64D140();
  v5 = sub_20C64E1B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20C5D2000, v4, v5, "[AudioLanguageEngagementSheetFeature] Failed to save result: %{public}@", v6, 0xCu);
    sub_20C5DBFC4(v7, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v7, -1, -1);
    MEMORY[0x20F301F10](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20C628F6C()
{

  v1 = *(v0 + 112);
  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v2 = sub_20C64D160();
  __swift_project_value_buffer(v2, qword_27C7DD450);
  v3 = v1;
  v4 = sub_20C64D140();
  v5 = sub_20C64E1B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20C5D2000, v4, v5, "[AudioLanguageEngagementSheetFeature] Failed to save result: %{public}@", v6, 0xCu);
    sub_20C5DBFC4(v7, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v7, -1, -1);
    MEMORY[0x20F301F10](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20C629118(uint64_t a1, int **a2)
{
  v2[2] = sub_20C64E160();
  v2[3] = sub_20C64E150();
  v6 = (*a2 + **a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20C629220;

  return v6();
}

uint64_t sub_20C629220()
{
  *(*v1 + 40) = v0;

  v3 = sub_20C64E130();
  if (v0)
  {
    v4 = sub_20C6293E0;
  }

  else
  {
    v4 = sub_20C62937C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20C62937C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C6293E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C629444(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = type metadata accessor for AudioLanguageEngagementSheetAction(0);
  v2[8] = swift_task_alloc();
  type metadata accessor for AudioLanguageEngagementSheet(0);
  v4 = swift_task_alloc();
  v2[9] = v4;
  v2[10] = sub_20C64E160();
  v2[11] = sub_20C64E150();
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = sub_20C6295BC;

  return v7(v4);
}

uint64_t sub_20C6295BC()
{
  v2 = *v1;
  v2[13] = v0;

  v4 = sub_20C64E130();
  v2[14] = v4;
  v2[15] = v3;
  if (v0)
  {
    v5 = sub_20C6299F0;
  }

  else
  {
    v5 = sub_20C62971C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C62971C()
{
  sub_20C62AF28(v0[9], v0[8], type metadata accessor for AudioLanguageEngagementSheet);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[16] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF860, &qword_20C6568A8);
  *v1 = v0;
  v1[1] = sub_20C629804;
  v3 = v0[8];

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_20C629804()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  sub_20C62B458(v2, type metadata accessor for AudioLanguageEngagementSheetAction);
  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_20C62995C, v4, v3);
}

uint64_t sub_20C62995C()
{
  v1 = *(v0 + 72);

  sub_20C62B458(v1, type metadata accessor for AudioLanguageEngagementSheet);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C6299F0()
{
  v1 = *(v0 + 64);
  v2 = sub_20C64CEA0();
  v3 = [v2 domain];

  v4 = sub_20C64E050();
  v6 = v5;

  v7 = sub_20C64CEA0();
  v8 = [v7 code];

  swift_getErrorValue();
  v9 = sub_20C64E450();
  *v1 = v4;
  v1[1] = v6;
  v1[2] = v8;
  v1[3] = v9;
  v1[4] = v10;
  swift_storeEnumTagMultiPayload();
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF860, &qword_20C6568A8);
  *v11 = v0;
  v11[1] = sub_20C629B58;
  v13 = *(v0 + 64);

  return MEMORY[0x282159B08](v13, v12);
}

uint64_t sub_20C629B58()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  sub_20C62B458(v2, type metadata accessor for AudioLanguageEngagementSheetAction);
  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_20C629CB0, v4, v3);
}

uint64_t sub_20C629CB0()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C629D30(uint64_t a1, int **a2)
{
  *(v2 + 16) = sub_20C64E160();
  v4 = sub_20C64E150();
  v5 = *a2;
  v6 = a2[1];
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  v7 = *(a2 + 3);
  *(v2 + 48) = *(a2 + 2);
  *(v2 + 64) = v7;
  v10 = (v5 + *v5);
  v8 = swift_task_alloc();
  *(v2 + 80) = v8;
  *v8 = v2;
  v8[1] = sub_20C629E44;

  return v10();
}

uint64_t sub_20C629E44()
{

  if (v0)
  {

    v1 = sub_20C64E130();
    v3 = v2;
    v4 = sub_20C62B4B8;
  }

  else
  {
    v1 = sub_20C64E130();
    v3 = v5;
    v4 = sub_20C629FC8;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_20C629FC8()
{
  if (qword_27C7CDF70 != -1)
  {
    swift_once();
  }

  v2 = qword_27C7CE488;
  v1 = unk_27C7CE490;
  v5 = (*(v0 + 64) + **(v0 + 64));
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_20C62A100;

  return v5(v2, v1);
}

uint64_t sub_20C62A100()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {
    v4 = sub_20C64E130();

    return MEMORY[0x2822009F8](sub_20C62A638, v4, v3);
  }

  else
  {
    *(v2 + 136) = 1;
    v7 = (*(v2 + 48) + **(v2 + 48));
    v5 = swift_task_alloc();
    *(v2 + 104) = v5;
    *v5 = v2;
    v5[1] = sub_20C62A2F4;

    return v7(v2 + 136);
  }
}

uint64_t sub_20C62A2F4()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v4 = sub_20C64E130();

    return MEMORY[0x2822009F8](sub_20C62A86C, v4, v3);
  }

  else
  {
    v7 = (v2[4] + *v2[4]);
    v5 = swift_task_alloc();
    v2[15] = v5;
    *v5 = v2;
    v5[1] = sub_20C62A4DC;

    return v7();
  }
}

uint64_t sub_20C62A4DC()
{
  *(*v1 + 128) = v0;

  v3 = sub_20C64E130();
  if (v0)
  {
    v4 = sub_20C62AAA0;
  }

  else
  {
    v4 = sub_20C62B4C0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20C62A638()
{
  v1 = v0[12];
  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v2 = sub_20C64D160();
  __swift_project_value_buffer(v2, qword_27C7DD450);
  v3 = v1;
  v4 = sub_20C64D140();
  v5 = sub_20C64E1B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20C5D2000, v4, v5, "[AudioLanguageEngagementSheetFeature] Failed to save result: %{public}@", v6, 0xCu);
    sub_20C5DBFC4(v7, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v7, -1, -1);
    MEMORY[0x20F301F10](v6, -1, -1);
  }

  else
  {
  }

  v12 = (v0[4] + *v0[4]);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_20C62A4DC;

  return v12();
}

uint64_t sub_20C62A86C()
{
  v1 = v0[14];
  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v2 = sub_20C64D160();
  __swift_project_value_buffer(v2, qword_27C7DD450);
  v3 = v1;
  v4 = sub_20C64D140();
  v5 = sub_20C64E1B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20C5D2000, v4, v5, "[AudioLanguageEngagementSheetFeature] Failed to save result: %{public}@", v6, 0xCu);
    sub_20C5DBFC4(v7, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v7, -1, -1);
    MEMORY[0x20F301F10](v6, -1, -1);
  }

  else
  {
  }

  v12 = (v0[4] + *v0[4]);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_20C62A4DC;

  return v12();
}

uint64_t sub_20C62AAA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C62AB04(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for AudioLanguageEngagementSheetAction(0);
  v1[4] = swift_task_alloc();
  sub_20C64E160();
  v1[5] = sub_20C64E150();
  v3 = sub_20C64E130();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_20C62ABCC, v3, v2);
}

uint64_t sub_20C62ABCC()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF860, &qword_20C6568A8);
  *v1 = v0;
  v1[1] = sub_20C62AC8C;
  v3 = *(v0 + 32);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_20C62AC8C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_20C62B458(v2, type metadata accessor for AudioLanguageEngagementSheetAction);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_20C62ADE4, v4, v3);
}

uint64_t sub_20C62ADE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C62AE58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C62B4BC;

  return sub_20C629D30(a1, (v1 + 16));
}

uint64_t sub_20C62AF28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C62AF90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C62B4BC;

  return sub_20C629444(a1, v1 + 16);
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_20C62B078(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C5EE6B4;

  return sub_20C629118(a1, (v1 + 16));
}

uint64_t sub_20C62B110(uint64_t a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C62B4BC;

  return sub_20C62876C(a1, (v1 + 16), v4, v5);
}

unint64_t sub_20C62B250()
{
  result = qword_2811057E8;
  if (!qword_2811057E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811057E8);
  }

  return result;
}

uint64_t sub_20C62B2EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C62B348(uint64_t *a1, int a2)
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

uint64_t sub_20C62B390(uint64_t result, int a2, int a3)
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

unint64_t sub_20C62B404()
{
  result = qword_27C7CF858;
  if (!qword_27C7CF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF858);
  }

  return result;
}

uint64_t sub_20C62B458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t _s16FitnessMarketing18BubbleTipLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  if (!v2)
  {
    if (!v4)
    {
      sub_20C5E8FFC(*a1, 0);
      sub_20C5E8FFC(v5, 0);
      return 1;
    }

    goto LABEL_8;
  }

  if (v2 == 1)
  {
    if (v4 == 1)
    {
      sub_20C5E8FFC(*a1, 1uLL);
      sub_20C5E8FFC(v5, 1uLL);
      return v4;
    }

    goto LABEL_8;
  }

  if (v4 < 2)
  {
LABEL_8:
    sub_20C5E8F84(*a2, *(a2 + 8));
    sub_20C5E8F84(v3, v2);
LABEL_9:
    v6 = v3;
LABEL_10:
    sub_20C5E8FFC(v6, v2);
    v7 = v5;
LABEL_11:
    sub_20C5E8FFC(v7, v4);
    return 0;
  }

  if (v3)
  {
    if (!v5)
    {
      sub_20C5E8F84(0, *(a2 + 8));
      sub_20C5E8F84(v3, v2);
      sub_20C5E8FFC(v3, v2);
      v7 = 0;
      goto LABEL_11;
    }

    sub_20C5E8F84(*a2, *(a2 + 8));
    sub_20C5E8F84(v3, v2);

    v9 = sub_20C64CF50();

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      sub_20C5E8F84(*a2, *(a2 + 8));
      sub_20C5E8F84(0, v2);
      v6 = 0;
      goto LABEL_10;
    }

    sub_20C5E8F84(0, *(a2 + 8));
    sub_20C5E8F84(0, v2);
  }

  v10 = sub_20C64CF50();
  sub_20C5E8FFC(v3, v2);
  sub_20C5E8FFC(v5, v4);
  return v10 & 1;
}

uint64_t sub_20C62B68C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C62B6E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_20C62B73C(void *result, int a2)
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

uint64_t sub_20C62B780(uint64_t a1)
{
  v2 = sub_20C62BE4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C62B7BC(uint64_t a1)
{
  v2 = sub_20C62BE4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C62B7F8(uint64_t a1)
{
  v2 = sub_20C62BDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C62B834(uint64_t a1)
{
  v2 = sub_20C62BDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C62B870()
{
  v1 = 0x75536E6F74747562;
  if (*v0 != 1)
  {
    v1 = 7368564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6F74746F62;
  }
}

uint64_t sub_20C62B8CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C62C874(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C62B8F4(uint64_t a1)
{
  v2 = sub_20C62BD50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C62B930(uint64_t a1)
{
  v2 = sub_20C62BD50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C62B96C(uint64_t a1)
{
  v2 = sub_20C62BDA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C62B9A8(uint64_t a1)
{
  v2 = sub_20C62BDA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingOfferTemplateFootnotePosition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF868, &qword_20C656940);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF870, &qword_20C656948);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF878, &qword_20C656950);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF880, &qword_20C656958);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C62BD50();
  sub_20C64E500();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_20C62BDF8();
      v9 = v21;
      sub_20C64E3B0();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_20C62BDA4();
      v9 = v24;
      sub_20C64E3B0();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_20C62BE4C();
    sub_20C64E3B0();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_20C62BD50()
{
  result = qword_27C7CF888;
  if (!qword_27C7CF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF888);
  }

  return result;
}

unint64_t sub_20C62BDA4()
{
  result = qword_27C7CF890;
  if (!qword_27C7CF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF890);
  }

  return result;
}

unint64_t sub_20C62BDF8()
{
  result = qword_27C7CF898;
  if (!qword_27C7CF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF898);
  }

  return result;
}

unint64_t sub_20C62BE4C()
{
  result = qword_27C7CF8A0;
  if (!qword_27C7CF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8A0);
  }

  return result;
}

uint64_t MarketingOfferTemplateFootnotePosition.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF8A8, &qword_20C656960);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF8B0, &qword_20C656968);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF8B8, &qword_20C656970);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF8C0, &unk_20C656978);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C62BD50();
  v15 = v36;
  sub_20C64E4F0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_20C64E3A0();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_20C5DDAF4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_20C64E290();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
      *v24 = &type metadata for MarketingOfferTemplateFootnotePosition;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_20C62BDF8();
          sub_20C64E320();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_20C62BDA4();
          v26 = v17;
          sub_20C64E320();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_20C62BE4C();
        sub_20C64E320();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t MarketingOfferTemplateFootnotePosition.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

unint64_t sub_20C62C4B8()
{
  result = qword_27C7CF8C8;
  if (!qword_27C7CF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8C8);
  }

  return result;
}

unint64_t sub_20C62C560()
{
  result = qword_27C7CF8D0;
  if (!qword_27C7CF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8D0);
  }

  return result;
}

unint64_t sub_20C62C5B8()
{
  result = qword_27C7CF8D8;
  if (!qword_27C7CF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8D8);
  }

  return result;
}

unint64_t sub_20C62C610()
{
  result = qword_27C7CF8E0;
  if (!qword_27C7CF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8E0);
  }

  return result;
}

unint64_t sub_20C62C668()
{
  result = qword_27C7CF8E8;
  if (!qword_27C7CF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8E8);
  }

  return result;
}

unint64_t sub_20C62C6C0()
{
  result = qword_27C7CF8F0;
  if (!qword_27C7CF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8F0);
  }

  return result;
}

unint64_t sub_20C62C718()
{
  result = qword_27C7CF8F8;
  if (!qword_27C7CF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8F8);
  }

  return result;
}

unint64_t sub_20C62C770()
{
  result = qword_27C7CF900;
  if (!qword_27C7CF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF900);
  }

  return result;
}

unint64_t sub_20C62C7C8()
{
  result = qword_27C7CF908;
  if (!qword_27C7CF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF908);
  }

  return result;
}

unint64_t sub_20C62C820()
{
  result = qword_27C7CF910;
  if (!qword_27C7CF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF910);
  }

  return result;
}

uint64_t sub_20C62C874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75536E6F74747562 && a2 == 0xEE00656C74697462 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7368564 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t BubbleTipPopover.init(store:preferredArrowEdges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE718, &qword_20C651A00);
  sub_20C64DD00();
  *(a4 + 24) = v9;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a4 = sub_20C5E0270;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 17) = a3;
  return result;
}

uint64_t BubbleTipPopover.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v10 = *(v2 + 32);
  *a2 = sub_20C64DE00();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF918, &qword_20C656DC8);
  return sub_20C62CAA4(v9, a1, a2 + *(v7 + 44));
}

uint64_t sub_20C62CAA4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v130 = a2;
  v133 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF938, &unk_20C656EC0);
  v134 = *(v4 - 8);
  v135 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v132 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v131 = &v91 - v7;
  v8 = sub_20C64DFD0();
  v122 = *(v8 - 8);
  v123 = v8;
  MEMORY[0x28223BE20](v8);
  v121 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_20C64DF90();
  v112 = *(v118 - 8);
  v10 = MEMORY[0x28223BE20](v118);
  v103 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v91 - v12;
  v105 = sub_20C64DF70();
  v102 = *(v105 - 8);
  v13 = MEMORY[0x28223BE20](v105);
  v101 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v124 = &v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE728, &qword_20C651A18);
  MEMORY[0x28223BE20](v16 - 8);
  v115 = &v91 - v17;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF940, &qword_20C656ED0);
  v109 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v126 = &v91 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF948, &qword_20C656ED8);
  v111 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v107 = &v91 - v19;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF950, &qword_20C656EE0);
  v113 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v108 = &v91 - v20;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF958, &qword_20C656EE8);
  MEMORY[0x28223BE20](v106);
  v114 = &v91 - v21;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF960, &qword_20C656EF0);
  v22 = MEMORY[0x28223BE20](v128);
  v110 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v120 = &v91 - v24;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF968, &qword_20C656EF8);
  MEMORY[0x28223BE20](v127);
  v26 = (&v91 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF970, &unk_20C656F00);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v129 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v91 - v30;
  v32 = *a1;
  v33 = a1[1];
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
  sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48, MEMORY[0x277D04410]);
  v99 = v33;
  v100 = v32;
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF20();

  v35 = v141;
  v136 = v31;
  if (v141 >= 2)
  {
    v98 = v26;
    v104 = v34;
    v96 = v140;
    if (v140)
    {
      v39 = *(v140 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel);
    }

    else
    {
      v39 = 0;
    }

    v97 = v35;
    v40 = *(v35 + OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_request);
    sub_20C64D220();
    swift_getKeyPath();
    sub_20C64DF20();

    v92 = v137;
    v93 = v138;
    v139 = sub_20C64DC00();
    sub_20C64D220();
    *(swift_allocObject() + 16) = v39;

    sub_20C64DD70();
    sub_20C64D9C0();

    v41 = [v40 title];
    v95 = v39;
    if (v41)
    {
      v42 = v41;
      v43 = sub_20C64E050();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0xE000000000000000;
    }

    v94 = v40;
    v46 = sub_20C5EC004(v92, v93);

    v47 = v124;
    sub_20C64DF60();
    v48 = v125;
    sub_20C64DF80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C0, &unk_20C651AA0);
    inited = swift_initStackObject();
    *(inited + 32) = 1701667182;
    *(inited + 16) = xmmword_20C6519F0;
    v50 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v43;
    *(inited + 56) = v45;
    *(inited + 72) = v50;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = 0x6954656C62627562;
    *(inited + 104) = 0xE900000000000070;
    *(inited + 120) = v50;
    *(inited + 128) = 0x6973736572706D69;
    v51 = MEMORY[0x277D83B88];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = -1;
    *(inited + 168) = v51;
    *(inited + 176) = 0x657079546469;
    *(inited + 216) = v50;
    *(inited + 184) = 0xE600000000000000;
    *(inited + 192) = 0x64695F737469;
    *(inited + 200) = 0xE600000000000000;
    v52 = sub_20C5F26C8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C8, &qword_20C650FB0);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = v52;
    sub_20C5EC3E4(v46, sub_20C5F20C0, 0, isUniquelyReferenced_nonNull_native, &v137);

    v100 = v137;
    v54 = v112;
    v55 = v118;
    (*(v112 + 16))(v103, v48, v118);
    v56 = v102;
    v57 = v47;
    v58 = v105;
    (*(v102 + 16))(v101, v57, v105);
    v59 = MEMORY[0x277D84F90];
    sub_20C5F26C8(MEMORY[0x277D84F90]);
    sub_20C5F26C8(v59);
    v60 = v115;
    sub_20C64DFA0();
    (*(v54 + 8))(v125, v55);
    (*(v56 + 8))(v124, v58);
    v61 = sub_20C64DFB0();
    (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    v62 = v121;
    sub_20C64DFC0();
    v137 = MEMORY[0x277CE0F78];
    v138 = MEMORY[0x277CE0F70];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v64 = v107;
    v65 = v117;
    v66 = v126;
    sub_20C64D9B0();
    (*(v122 + 8))(v62, v123);
    sub_20C5DBFC4(v60, &qword_27C7CE728, &qword_20C651A18);
    (*(v109 + 8))(v66, v65);
    v137 = v65;
    v138 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v67 = v108;
    v68 = v116;
    sub_20C64D9D0();
    (*(v111 + 8))(v64, v68);
    v69 = swift_allocObject();
    *(v69 + 16) = v95;
    v34 = v104;
    v70 = v104[1];
    *(v69 + 24) = *v104;
    *(v69 + 40) = v70;
    *(v69 + 56) = *(v34 + 32);
    v71 = v114;
    (*(v113 + 32))(v114, v67, v119);
    v72 = (v71 + *(v106 + 36));
    *v72 = sub_20C62E32C;
    v72[1] = v69;
    v72[2] = 0;
    v72[3] = 0;
    v73 = swift_allocObject();
    v74 = *(v34 + 16);
    *(v73 + 16) = *v34;
    *(v73 + 32) = v74;
    *(v73 + 48) = *(v34 + 32);
    v75 = v110;
    sub_20C5E5658(v71, v110, &qword_27C7CF958, &qword_20C656EE8);
    v76 = (v75 + *(v128 + 36));
    *v76 = 0;
    v76[1] = 0;
    v76[2] = sub_20C62E338;
    v76[3] = v73;
    v77 = v120;
    sub_20C5E5658(v75, v120, &qword_27C7CF960, &qword_20C656EF0);
    sub_20C5E574C(v77, v98, &qword_27C7CF960, &qword_20C656EF0);
    swift_storeEnumTagMultiPayload();
    sub_20C62E358(v34, &v137);
    sub_20C62E358(v34, &v137);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE768, &qword_20C656F50);
    sub_20C5F1F70();
    sub_20C62E390();
    v31 = v136;
    sub_20C64D550();

    sub_20C5DBFC4(v77, &qword_27C7CF960, &qword_20C656EF0);
  }

  else
  {
    v36 = sub_20C64DC00();
    v37 = swift_allocObject();
    v38 = *(v34 + 16);
    *(v37 + 16) = *v34;
    *(v37 + 32) = v38;
    *(v37 + 48) = *(v34 + 32);
    *v26 = v36;
    v26[1] = sub_20C62E578;
    v26[2] = v37;
    v26[3] = 0;
    v26[4] = 0;
    swift_storeEnumTagMultiPayload();
    sub_20C62E358(v34, &v137);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE768, &qword_20C656F50);
    sub_20C5F1F70();
    sub_20C62E390();
    sub_20C64D550();
  }

  v78 = swift_allocObject();
  v79 = *(v34 + 16);
  *(v78 + 16) = *v34;
  *(v78 + 32) = v79;
  *(v78 + 48) = *(v34 + 32);
  sub_20C62E358(v34, &v137);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF988, &qword_20C656F58);
  sub_20C5E5558(&qword_27C7CF990, &qword_27C7CF988, &qword_20C656F58, MEMORY[0x277CE04B0]);
  v80 = v131;
  sub_20C64DA90();

  v81 = v31;
  v82 = v129;
  sub_20C5E574C(v81, v129, &qword_27C7CF970, &unk_20C656F00);
  v84 = v134;
  v83 = v135;
  v85 = *(v134 + 16);
  v86 = v132;
  v85(v132, v80, v135);
  v87 = v133;
  sub_20C5E574C(v82, v133, &qword_27C7CF970, &unk_20C656F00);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF998, &unk_20C656F60);
  v85((v87 + *(v88 + 48)), v86, v83);
  v89 = *(v84 + 8);
  v89(v80, v83);
  sub_20C5DBFC4(v136, &qword_27C7CF970, &unk_20C656F00);
  v89(v86, v83);
  return sub_20C5DBFC4(v82, &qword_27C7CF970, &unk_20C656F00);
}

uint64_t sub_20C62DB48@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  type metadata accessor for BubbleTipAction(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_20C62DB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE780, &qword_20C651BD8);
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7 - 8];
  if (a1)
  {

    sub_20C64D120();
    v9 = swift_allocObject();
    v10 = *(a2 + 16);
    *(v9 + 16) = *a2;
    *(v9 + 32) = v10;
    *(v9 + 48) = *(a2 + 32);
    sub_20C62E358(a2, v16);
    sub_20C5E5558(&qword_27C7CE790, &qword_27C7CE780, &qword_20C651BD8, MEMORY[0x277CBCEC8]);
    v11 = sub_20C64D170();

    (*(v5 + 8))(v8, v4);
    v12 = *(a2 + 24);
    v17 = *(a2 + 32);
    v18 = v12;
    v16[0] = v12;
    v16[1] = v17;
    v15 = v11;
    sub_20C5E574C(&v18, v14, &qword_27C7CE718, &qword_20C651A00);
    sub_20C5E574C(&v17, v14, &qword_27C7CF9A0, &unk_20C656F70);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE798, &qword_20C651BE8);
    sub_20C64DD20();

    sub_20C5DBFC4(&v18, &qword_27C7CE718, &qword_20C651A00);
    return sub_20C5DBFC4(&v17, &qword_27C7CF9A0, &unk_20C656F70);
  }

  return result;
}

void sub_20C62DDD4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for BubbleTipAction(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  if (v6 != 255)
  {
    v7 = *a1;
    sub_20C5F2AAC(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
    sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48, MEMORY[0x277D04410]);
    sub_20C64D220();
    if ((v6 & 1) == 0)
    {
      sub_20C5F2ADC();
      v8 = v7;
      sub_20C64D0D0();
    }

    swift_storeEnumTagMultiPayload();
    sub_20C64DF40();

    sub_20C5F29F4(v5);
    sub_20C5F2AB8(v7, v6);
  }
}

uint64_t sub_20C62DFBC(uint64_t *a1, uint64_t a2)
{
  v2 = type metadata accessor for BubbleTipAction(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
  sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_storeEnumTagMultiPayload();
  sub_20C64DF40();

  return sub_20C5F29F4(v4);
}

uint64_t sub_20C62E108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v10 = *(v2 + 32);
  *a2 = sub_20C64DE00();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF918, &qword_20C656DC8);
  return sub_20C62CAA4(v9, a1, a2 + *(v7 + 44));
}

uint64_t View.bubbleTipPopover(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v6 = *a1;
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 24);
  return MEMORY[0x20F300EE0](&v6, a2, &type metadata for BubbleTipPopover, a3);
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

uint64_t sub_20C62E1FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_20C62E258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_20C62E2C4()
{
  result = qword_27C7CF930;
  if (!qword_27C7CF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF930);
  }

  return result;
}

unint64_t sub_20C62E390()
{
  result = qword_27C7CF978;
  if (!qword_27C7CF978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF960, &qword_20C656EF0);
    sub_20C62E41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF978);
  }

  return result;
}

unint64_t sub_20C62E41C()
{
  result = qword_27C7CF980;
  if (!qword_27C7CF980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF958, &qword_20C656EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF948, &qword_20C656ED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF940, &qword_20C656ED0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF980);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  sub_20C5E3044(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t BubbleTipEnvironment.init(navigateToURL:makeEngagementDialogRequestStream:resetEngagementPlacement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
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

uint64_t sub_20C62E610(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20C62E658(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t AudioLanguageEngagementSheetEnvironment.dismiss.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AudioLanguageEngagementSheetEnvironment.fetchAudioLanguageEngagementSheet.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AudioLanguageEngagementSheetEnvironment.updateAudioLanguageEngagementSheetAcknowledgment.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AudioLanguageEngagementSheetEnvironment.updateAudioLanguagePreference.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AudioLanguageEngagementSheetEnvironment.init(dismiss:fetchAudioLanguageEngagementSheet:updateAudioLanguageEngagementSheetAcknowledgment:updateAudioLanguagePreference:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_20C62E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_20C64D540();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_20C64D550();
}

uint64_t sub_20C62E890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_20C64D540();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_20C64D550();
}

uint64_t sub_20C62E988(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9D8, qword_20C657198);
  sub_20C5E5558(&qword_2811057C8, &qword_27C7CF9D8, qword_20C657198, MEMORY[0x277D04410]);

  return sub_20C64D220();
}

uint64_t sub_20C62EA54(uint64_t a1)
{
  v2 = sub_20C64D2D0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20C64D3B0();
}

uint64_t sub_20C62EB20(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v2) = v2[16];
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v5;
  type metadata accessor for MarketingInlineView.FocusedButton(255, v7);
  sub_20C64E1F0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C64D1D0();
  sub_20C64D1B0();
  return *&v7[0];
}

uint64_t sub_20C62EBF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20C64D460();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B0, &qword_20C6570B0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_20C634054(v2, &v17 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20C64D2D0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_20C64E1A0();
    v14 = sub_20C64D750();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_20C6340C4(0x694474756F79614CLL, 0xEF6E6F6974636572, &v18);
      _os_log_impl(&dword_20C5D2000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F301F10](v16, -1, -1);
      MEMORY[0x20F301F10](v15, -1, -1);
    }

    sub_20C64D450();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20C62EEA4(char a1)
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](a1 & 1);
  return sub_20C64E4E0();
}

uint64_t sub_20C62EEEC(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  sub_20C64D010();
  sub_20C64D000();
  return v2;
}

uint64_t sub_20C62EF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
  swift_getFunctionTypeMetadata2();
  return sub_20C64CFF0();
}

uint64_t sub_20C62EFD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
  swift_getFunctionTypeMetadata2();
  sub_20C64D010();
  sub_20C64D000();
  return v2;
}

uint64_t sub_20C62F084(uint64_t a1)
{
  sub_20C64E4A0();
  sub_20C62EE7C(v3, *v1);
  return sub_20C64E4E0();
}

uint64_t MarketingInlineView.init(store:makeImpressionMetrics:actionViewBuilder:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B0, &qword_20C6570B0);
  swift_storeEnumTagMultiPayload();
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v17 = type metadata accessor for MarketingInlineView(0, &v31);
  v18 = a9 + v17[14];
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  type metadata accessor for MarketingInlineView.FocusedButton(0, &v31);
  swift_getWitnessTable();
  sub_20C64D1C0();
  v19 = v32;
  v20 = v33;
  *v18 = v31;
  *(v18 + 1) = v19;
  v18[16] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = a9 + v17[13];
  *v22 = sub_20C5E0270;
  *(v22 + 1) = v21;
  v22[16] = 0;
  v23 = (a9 + v17[15]);
  *v23 = a3;
  v23[1] = a4;

  v31 = a5;
  v32 = a6;
  swift_getFunctionTypeMetadata1();
  sub_20C64CFF0();
  sub_20C62EF48(a7, a8, v24, a11);
}

uint64_t sub_20C62F2CC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9F0, &qword_20C657280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9F8, &qword_20C657288);
  sub_20C5E5558(&qword_281105800, &qword_27C7CF9F0, &qword_20C657280, MEMORY[0x277CE14C0]);
  sub_20C5E5558(&qword_281105838, &qword_27C7CF9F8, &qword_20C657288, MEMORY[0x277CDF028]);
  return sub_20C64D590();
}

uint64_t sub_20C62F43C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_20C64CFE0();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20C64E030();
  MEMORY[0x28223BE20](v11 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v12 = qword_281109B60;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v13 = type metadata accessor for MarketingInlineView(0, v18);
  sub_20C62E988(v13);
  swift_getKeyPath();
  sub_20C64DF30();

  result = sub_20C64D8D0();
  *a5 = result;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16 & 1;
  *(a5 + 24) = v17;
  return result;
}

uint64_t sub_20C62F5F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v12 = sub_20C64CFE0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_20C64E030();
  MEMORY[0x28223BE20](v13 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v14 = qword_281109B60;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v15 = type metadata accessor for MarketingInlineView(0, &v33);
  sub_20C62E988(v15);
  swift_getKeyPath();
  sub_20C64DF30();

  v16 = sub_20C64D8D0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_20C62E988(v15);
  swift_getKeyPath();
  sub_20C64DF30();

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v33 == 1)
  {
    v33 = a1;
    v34 = a2;
    sub_20C602C18();

    v23 = sub_20C64D970();
    v24 = v27;
    v26 = v28;
    v25 = v29 & 1;
    sub_20C5E573C(v23, v27, v29 & 1);
  }

  sub_20C5E573C(v16, v18, v20 & 1);

  sub_20C633FA4(v23, v24, v25, v26);
  sub_20C633FE8(v23, v24, v25, v26);
  LOBYTE(v33) = v20 & 1;
  *a7 = v16;
  *(a7 + 8) = v18;
  *(a7 + 16) = v20 & 1;
  *(a7 + 24) = v22;
  *(a7 + 32) = v23;
  *(a7 + 40) = v24;
  *(a7 + 48) = v25;
  *(a7 + 56) = v26;
  sub_20C633FE8(v23, v24, v25, v26);
  sub_20C5E56C0(v16, v18, v20 & 1);
}

uint64_t sub_20C62F8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18[1] = a6;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v11 = type metadata accessor for MarketingInlineView(0, v24);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  (*(v12 + 16))(v18 - v13, a1, v11);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v12 + 32))(&v16[v15], v14, v11);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a1;
  return sub_20C64DD40();
}

uint64_t sub_20C62FA74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_20C64CFE0();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20C64E030();
  MEMORY[0x28223BE20](v11 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v12 = qword_281109B60;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v13 = type metadata accessor for MarketingInlineView(0, &v19);
  sub_20C62E988(v13);
  swift_getKeyPath();
  sub_20C64DF30();

  v19 = sub_20C64E080();
  v20 = v14;
  sub_20C602C18();
  result = sub_20C64D970();
  *a5 = result;
  *(a5 + 8) = v16;
  *(a5 + 16) = v17 & 1;
  *(a5 + 24) = v18;
  return result;
}

uint64_t MarketingInlineView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v104 = *(a1 - 1);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](a1);
  v103 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C64D6F0();
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9A8, &qword_20C6570B8);
  sub_20C64D700();
  v6 = a1[3];
  v95 = sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF168, &unk_20C6570C0);
  v107 = sub_20C64D2E0();
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
  v7 = a1[2];
  v8 = a1[4];
  v99 = a1;
  *&v165 = v7;
  *(&v165 + 1) = v8;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  v9 = sub_20C64D2E0();
  *&v10 = v7;
  *(&v10 + 1) = v6;
  v94 = a1[5];
  *&v11 = v8;
  *(&v11 + 1) = v94;
  v109 = v11;
  v110 = v10;
  v166 = v11;
  v165 = v10;
  type metadata accessor for MarketingInlineView.FocusedButton(255, &v165);
  v12 = sub_20C64E1F0();
  *&v165 = v7;
  *(&v165 + 1) = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v164 = MEMORY[0x277CDF918];
  v13 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v87 = MEMORY[0x277CE0868];
  v96 = sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0, MEMORY[0x277CE0868]);
  v161 = WitnessTable;
  v162 = v96;
  v15 = swift_getWitnessTable();
  v160 = swift_getWitnessTable();
  v97 = v12;
  v108 = swift_getWitnessTable();
  *&v165 = v9;
  *(&v165 + 1) = v12;
  *&v166 = v15;
  *(&v166 + 1) = v108;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  sub_20C64D2E0();
  v84 = MEMORY[0x277CE1198];
  v158 = swift_getWitnessTable();
  v159 = v13;
  swift_getWitnessTable();
  v89 = sub_20C64D340();
  v88 = sub_20C64D2E0();
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  v90 = sub_20C64D2E0();
  v91 = sub_20C64D2E0();
  v92 = sub_20C64D2E0();
  v93 = sub_20C64D2E0();
  v85 = sub_20C64D2E0();
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
  v16 = swift_getWitnessTable();
  v17 = sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0, v87);
  v156 = v16;
  v157 = v17;
  v154 = swift_getWitnessTable();
  v18 = MEMORY[0x277CDF918];
  v155 = MEMORY[0x277CDF918];
  v152 = swift_getWitnessTable();
  v153 = v18;
  v150 = swift_getWitnessTable();
  v151 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8, MEMORY[0x277CE0328]);
  v148 = v19;
  v149 = v20;
  swift_getWitnessTable();
  sub_20C64D340();
  sub_20C64D2E0();
  v82 = sub_20C64D2E0();
  v83 = sub_20C64D2E0();
  v84 = sub_20C64D2E0();
  v86 = sub_20C64D560();
  v87 = sub_20C64DCA0();
  v21 = sub_20C630C78();
  v146 = v94;
  v147 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0, MEMORY[0x277CDFC88]);
  v144 = v22;
  v145 = v23;
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v142 = v24;
  v143 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520, MEMORY[0x277CDF4F0]);
  v140 = v26;
  v141 = v27;
  v138 = swift_getWitnessTable();
  v139 = MEMORY[0x277CE01B0];
  v136 = swift_getWitnessTable();
  v28 = MEMORY[0x277CDF918];
  v137 = MEMORY[0x277CDF918];
  v134 = swift_getWitnessTable();
  v135 = MEMORY[0x277CDFC60];
  v132 = swift_getWitnessTable();
  v133 = v96;
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v130 = v22;
  v131 = v30;
  v128 = swift_getWitnessTable();
  v129 = v27;
  v126 = swift_getWitnessTable();
  v127 = MEMORY[0x277CE01B0];
  v124 = swift_getWitnessTable();
  v125 = v28;
  v31 = swift_getWitnessTable();
  v122 = v29;
  v123 = v31;
  v121 = swift_getWitnessTable();
  v32 = v87;
  v33 = swift_getWitnessTable();
  *&v165 = v32;
  *(&v165 + 1) = v33;
  v34 = v32;
  swift_getOpaqueTypeMetadata2();
  v92 = sub_20C64D560();
  v35 = sub_20C64DCA0();
  v98 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v94 = &v79 - v36;
  v37 = sub_20C630CD0();
  *&v165 = v34;
  *(&v165 + 1) = v33;
  v38 = swift_getOpaqueTypeConformance2();
  v119 = v37;
  v120 = v38;
  v88 = swift_getWitnessTable();
  v118 = v88;
  v39 = swift_getWitnessTable();
  *&v165 = v35;
  *(&v165 + 1) = v39;
  v40 = v39;
  v83 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v43 = &v79 - v42;
  *&v165 = v35;
  *(&v165 + 1) = v40;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = OpaqueTypeMetadata2;
  v79 = OpaqueTypeMetadata2;
  v80 = v44;
  v46 = v97;
  *&v165 = OpaqueTypeMetadata2;
  *(&v165 + 1) = v97;
  v47 = v108;
  *&v166 = v44;
  *(&v166 + 1) = v108;
  v93 = swift_getOpaqueTypeMetadata2();
  v107 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v81 = &v79 - v48;
  v49 = sub_20C64D2E0();
  v95 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v87 = &v79 - v50;
  *&v165 = v45;
  *(&v165 + 1) = v46;
  *&v166 = v44;
  *(&v166 + 1) = v47;
  v85 = swift_getOpaqueTypeConformance2();
  v116 = v85;
  v117 = MEMORY[0x277CE0790];
  v86 = swift_getWitnessTable();
  *&v165 = v49;
  *(&v165 + 1) = v86;
  v89 = MEMORY[0x277D09E68];
  v51 = swift_getOpaqueTypeMetadata2();
  v52 = *(v51 - 8);
  v90 = v51;
  v91 = v52;
  v53 = MEMORY[0x28223BE20](v51);
  v82 = &v79 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v84 = &v79 - v55;
  v112 = v110;
  v113 = v109;
  v114 = v111;
  v56 = v94;
  sub_20C64DC90();
  sub_20C64D980();
  (*(v98 + 8))(v56, v35);
  v57 = v99;
  *&v165 = sub_20C62EB20(v99);
  *(&v165 + 1) = v58;
  LOBYTE(v166) = v59;
  v115 = 0;
  v60 = v100;
  sub_20C64D6E0();
  v61 = swift_checkMetadataState();
  v62 = v81;
  v63 = v79;
  MEMORY[0x20F300DD0](&v165, &v115, v60, v79, v61, v80, v108);
  (*(v101 + 8))(v60, v102);

  (*(v96 + 8))(v43, v63);
  v65 = v103;
  v64 = v104;
  (*(v104 + 16))(v103, v111, v57);
  v66 = v64;
  v67 = (*(v64 + 80) + 48) & ~*(v64 + 80);
  v68 = swift_allocObject();
  v69 = v109;
  *(v68 + 16) = v110;
  *(v68 + 32) = v69;
  (*(v66 + 32))(v68 + v67, v65, v57);
  v70 = v87;
  v71 = v93;
  sub_20C64DBA0();

  (*(v107 + 8))(v62, v71);
  v72 = v82;
  v73 = v86;
  sub_20C64D990();
  (*(v95 + 8))(v70, v49);
  *&v165 = v49;
  *(&v165 + 1) = v73;
  swift_getOpaqueTypeConformance2();
  v74 = v84;
  v75 = v72;
  v76 = v90;
  sub_20C606460();
  v77 = *(v91 + 8);
  v77(v75, v76);
  sub_20C606460();
  return (v77)(v74, v76);
}

unint64_t sub_20C630C78()
{
  result = qword_281105888;
  if (!qword_281105888)
  {
    sub_20C64D700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105888);
  }

  return result;
}

unint64_t sub_20C630CD0()
{
  result = qword_281105958;
  if (!qword_281105958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9A8, &qword_20C6570B8);
    sub_20C5E5558(&qword_2811058F0, &qword_27C7CF9C8, &unk_20C657100, MEMORY[0x277CDE158]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105958);
  }

  return result;
}

uint64_t sub_20C630D88@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v129 = a5;
  v127 = a1;
  v123 = a6;
  v10 = sub_20C64DFD0();
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x28223BE20](v10);
  v106 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE728, &qword_20C651A18);
  MEMORY[0x28223BE20](v12 - 8);
  v105 = &v99 - v13;
  sub_20C64D700();
  v125 = a3;
  v121 = sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF168, &unk_20C6570C0);
  v128 = sub_20C64D2E0();
  v120 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
  v176 = a2;
  v177 = a4;
  v126 = a4;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  v112 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  v14 = sub_20C64D2E0();
  v176 = a2;
  v177 = a3;
  v178 = a4;
  v179 = a5;
  type metadata accessor for MarketingInlineView.FocusedButton(255, &v176);
  v15 = sub_20C64E1F0();
  v176 = a2;
  v177 = a4;
  v124 = a2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v175 = MEMORY[0x277CDF918];
  v16 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v114 = MEMORY[0x277CE0868];
  v122 = sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0, MEMORY[0x277CE0868]);
  v172 = WitnessTable;
  v173 = v122;
  v18 = swift_getWitnessTable();
  v171 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v176 = v14;
  v177 = v15;
  v178 = v18;
  v179 = v19;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  sub_20C64D2E0();
  v111 = MEMORY[0x277CE1198];
  v169 = swift_getWitnessTable();
  v170 = v16;
  swift_getWitnessTable();
  v116 = sub_20C64D340();
  v115 = sub_20C64D2E0();
  v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  v117 = sub_20C64D2E0();
  v118 = sub_20C64D2E0();
  v119 = sub_20C64D2E0();
  v120 = sub_20C64D2E0();
  v112 = sub_20C64D2E0();
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
  v20 = swift_getWitnessTable();
  v21 = sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0, v114);
  v167 = v20;
  v168 = v21;
  v165 = swift_getWitnessTable();
  v22 = MEMORY[0x277CDF918];
  v166 = MEMORY[0x277CDF918];
  v163 = swift_getWitnessTable();
  v164 = v22;
  v161 = swift_getWitnessTable();
  v162 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8, MEMORY[0x277CE0328]);
  v159 = v23;
  v160 = v24;
  swift_getWitnessTable();
  v109 = sub_20C64D340();
  v110 = sub_20C64D2E0();
  v111 = sub_20C64D2E0();
  v113 = sub_20C64D2E0();
  v114 = sub_20C64D2E0();
  v25 = sub_20C64D560();
  v26 = sub_20C64DCA0();
  v104 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v103 = &v99 - v27;
  v28 = sub_20C630C78();
  v157 = v129;
  v158 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0, MEMORY[0x277CDFC88]);
  v155 = v29;
  v156 = v30;
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v153 = v31;
  v154 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520, MEMORY[0x277CDF4F0]);
  v151 = v33;
  v152 = v34;
  v149 = swift_getWitnessTable();
  v150 = MEMORY[0x277CE01B0];
  v147 = swift_getWitnessTable();
  v148 = v22;
  v145 = swift_getWitnessTable();
  v146 = MEMORY[0x277CDFC60];
  v143 = swift_getWitnessTable();
  v144 = v122;
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v141 = v29;
  v142 = v36;
  v139 = swift_getWitnessTable();
  v140 = v34;
  v137 = swift_getWitnessTable();
  v138 = MEMORY[0x277CE01B0];
  v135 = swift_getWitnessTable();
  v136 = v22;
  v37 = swift_getWitnessTable();
  v133 = v35;
  v134 = v37;
  v112 = v25;
  v102 = swift_getWitnessTable();
  v132 = v102;
  v38 = swift_getWitnessTable();
  v122 = v26;
  v176 = v26;
  v177 = v38;
  v118 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = *(OpaqueTypeMetadata2 - 8);
  v40 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v110 = &v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v109 = &v99 - v42;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9C8, &unk_20C657100);
  v101 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v99 = &v99 - v43;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E0, &unk_20C657240);
  MEMORY[0x28223BE20](v115);
  v45 = (&v99 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9A8, &qword_20C6570B8);
  MEMORY[0x28223BE20](v46);
  v116 = &v99 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  MEMORY[0x28223BE20](v48);
  v50 = &v99 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v99 - v53;
  v55 = type metadata accessor for MarketingOffer(0);
  MEMORY[0x28223BE20](v55 - 8);
  v114 = &v99 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v46;
  v128 = OpaqueTypeMetadata2;
  v57 = sub_20C64D560();
  v120 = *(v57 - 8);
  v121 = v57;
  MEMORY[0x28223BE20](v57);
  v59 = &v99 - v58;
  v176 = v124;
  v177 = v125;
  v178 = v126;
  v179 = v129;
  v113 = type metadata accessor for MarketingInlineView(0, &v176);
  sub_20C62E988(v113);
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C64DEA0();
  (*(v52 + 8))(v54, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v61 = v116;
    v62 = v117;
    v100 = v59;
    v63 = v122;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v90 = *(v50 + 3);
        v91 = *(v50 + 4);

        v92 = v99;
        sub_20C62F2CC(v90, v91, v113);

        v93 = v101;
        (*(v101 + 16))(v45, v92, v62);
        swift_storeEnumTagMultiPayload();
        sub_20C5E5558(&qword_2811058F0, &qword_27C7CF9C8, &unk_20C657100, MEMORY[0x277CDE158]);
        sub_20C64D550();
        v94 = sub_20C630CD0();
        v70 = v63;
        v71 = v118;
        v176 = v63;
        v177 = v118;
        v95 = swift_getOpaqueTypeConformance2();
        v59 = v100;
        sub_20C62E798(v61, v119, v128, v94, v95);
        sub_20C5DBFC4(v61, &qword_27C7CF9A8, &qword_20C6570B8);
        (*(v93 + 8))(v92, v62);
        goto LABEL_9;
      }

      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC8, &qword_20C6534D8) + 48);
      v65 = v114;
      sub_20C6054D4(v50, v114);
      v66 = sub_20C64CF30();
      v67 = (*(*(v66 - 8) + 8))(&v50[v64], v66);
    }

    else
    {
      v65 = v114;
      v67 = sub_20C6054D4(v50, v114);
    }

    v75 = v127;
    v76 = v113;
    MEMORY[0x28223BE20](v67);
    v77 = v125;
    *(&v99 - 6) = v124;
    *(&v99 - 5) = v77;
    v78 = v129;
    *(&v99 - 4) = v126;
    *(&v99 - 3) = v78;
    *(&v99 - 2) = v75;
    *(&v99 - 1) = v65;
    v79 = v103;
    sub_20C64DC90();
    v80 = *&v75[*(v76 + 15)];
    v81 = v105;
    v80(v65);
    v82 = sub_20C64DFB0();
    (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
    v83 = v106;
    sub_20C64DFC0();
    v84 = v110;
    v70 = v63;
    v71 = v118;
    sub_20C64D9B0();
    (*(v107 + 8))(v83, v108);
    sub_20C5DBFC4(v81, &qword_27C7CE728, &qword_20C651A18);
    (*(v104 + 8))(v79, v63);
    v176 = v63;
    v177 = v71;
    v85 = swift_getOpaqueTypeConformance2();
    v86 = v109;
    v87 = v128;
    sub_20C606460();
    v88 = *(v111 + 8);
    v88(v84, v87);
    sub_20C606460();
    v89 = sub_20C630CD0();
    v59 = v100;
    sub_20C62E890(v84, v119, v87, v89, v85);
    v88(v84, v87);
    v88(v86, v87);
    sub_20C633BBC(v114);
LABEL_9:
    v74 = v120;
    v73 = v121;
    goto LABEL_10;
  }

  *v45 = sub_20C64DC00();
  swift_storeEnumTagMultiPayload();
  sub_20C5E5558(&qword_2811058F0, &qword_27C7CF9C8, &unk_20C657100, MEMORY[0x277CDE158]);

  v68 = v116;
  sub_20C64D550();
  v69 = sub_20C630CD0();
  v70 = v122;
  v71 = v118;
  v176 = v122;
  v177 = v118;
  v72 = swift_getOpaqueTypeConformance2();
  sub_20C62E798(v68, v119, v128, v69, v72);

  sub_20C5DBFC4(v68, &qword_27C7CF9A8, &qword_20C6570B8);
  v74 = v120;
  v73 = v121;
LABEL_10:
  v96 = sub_20C630CD0();
  v176 = v70;
  v177 = v71;
  v97 = swift_getOpaqueTypeConformance2();
  v130 = v96;
  v131 = v97;
  swift_getWitnessTable();
  sub_20C606460();
  return (*(v74 + 8))(v59, v73);
}

uint64_t sub_20C6320B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v165 = a6;
  v160 = a5;
  v161 = a3;
  v162 = a4;
  v140 = a1;
  v141 = a2;
  v146 = a7;
  sub_20C64D700();
  v164 = sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1F0, &qword_20C6570E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B0, &qword_20C6570E8);
  sub_20C64D2E0();
  swift_getTupleTypeMetadata3();
  sub_20C64DE30();
  v153 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_20C64DD60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B8, &qword_20C6570F0);
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9C0, &qword_20C6570F8);
  sub_20C64D2E0();
  v152 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v154 = MEMORY[0x277CE0868];
  v237 = WitnessTable;
  v238 = sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0, MEMORY[0x277CE0868]);
  v235 = swift_getWitnessTable();
  v236 = MEMORY[0x277CDF918];
  v8 = MEMORY[0x277CDF918];
  v233 = swift_getWitnessTable();
  v234 = v8;
  v231 = swift_getWitnessTable();
  v232 = v8;
  v229 = swift_getWitnessTable();
  v230 = sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  v156 = sub_20C64D340();
  v9 = sub_20C64D2E0();
  v151 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  v158 = v9;
  v155 = sub_20C64D2E0();
  v157 = sub_20C64D2E0();
  v159 = sub_20C64D2E0();
  v132 = *(v159 - 8);
  v10 = MEMORY[0x28223BE20](v159);
  v129 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v128 = &v122 - v12;
  v133 = sub_20C64D2D0();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v130 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v136 = &v122 - v16;
  v17 = v162;
  v139 = *(v162 - 8);
  MEMORY[0x28223BE20](v15);
  v148 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF168, &unk_20C6570C0);
  v163 = sub_20C64D2E0();
  v150 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
  v20 = v160;
  v19 = v161;
  v218 = v161;
  v219 = v160;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  v21 = sub_20C64D2E0();
  v218 = v19;
  v219 = v17;
  v220 = v20;
  v221 = v165;
  type metadata accessor for MarketingInlineView.FocusedButton(255, &v218);
  v22 = sub_20C64E1F0();
  v218 = v19;
  v219 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = MEMORY[0x277CDF918];
  v228 = MEMORY[0x277CDF918];
  v24 = swift_getWitnessTable();
  v25 = sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0, v154);
  v225 = v24;
  v226 = v25;
  v154 = v25;
  v26 = swift_getWitnessTable();
  v224 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v218 = v21;
  v219 = v22;
  v220 = v26;
  v221 = v27;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  sub_20C64D2E0();
  v222 = swift_getWitnessTable();
  v223 = v23;
  swift_getWitnessTable();
  v147 = sub_20C64D340();
  v149 = sub_20C64D2E0();
  v151 = sub_20C64D2E0();
  v152 = sub_20C64D2E0();
  v28 = sub_20C64D2E0();
  v122 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v137 = &v122 - v29;
  v153 = v30;
  v31 = sub_20C64D2E0();
  v124 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v138 = &v122 - v32;
  v150 = v33;
  v34 = sub_20C64D2E0();
  v127 = *(v34 - 8);
  v35 = MEMORY[0x28223BE20](v34);
  v126 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v123 = &v122 - v38;
  MEMORY[0x28223BE20](v37);
  v125 = &v122 - v39;
  v142 = v40;
  v41 = sub_20C64D560();
  v144 = *(v41 - 8);
  v145 = v41;
  MEMORY[0x28223BE20](v41);
  v143 = &v122 - v42;
  v218 = v161;
  v219 = v162;
  v220 = v160;
  v43 = v165;
  v221 = v165;
  v44 = type metadata accessor for MarketingInlineView(0, &v218);
  v45 = v140;
  sub_20C62E988(v44);
  swift_getKeyPath();
  sub_20C64DF30();

  v134 = v218;
  v46 = sub_20C62EFD4(v44);
  v47 = type metadata accessor for MarketingOffer(0);
  v48 = v47[5];
  v135 = v44;
  sub_20C62E988(v44);
  swift_getKeyPath();
  v49 = v136;
  sub_20C64DF30();

  v50 = v141;
  v46(v141 + v48, v49);

  sub_20C5DBFC4(v49, &qword_27C7CF1B8, &unk_20C657110);
  v51 = (v50 + v47[8]);
  v52 = *v51;
  v53 = v51[1];
  v54 = (v50 + v47[7]);
  v55 = *v54;
  v56 = v54[1];
  v57 = v162;
  v166[2] = v161;
  v166[3] = v162;
  v166[4] = v160;
  v166[5] = v43;
  v166[6] = v45;
  v58 = (v139 + 8);
  v59 = MEMORY[0x277CE01B0];
  if (v134)
  {
    v60 = v129;
    v61 = v148;
    sub_20C64598C(v148, v52, v53, v55, v56, sub_20C63402C, v166, v135, v129, v161, v160);
    (*v58)(v61, v57);
    v62 = sub_20C630C78();
    v216 = v43;
    v217 = v62;
    v63 = swift_getWitnessTable();
    v64 = MEMORY[0x277CDFC88];
    v65 = swift_getWitnessTable();
    v214 = v63;
    v215 = v65;
    v66 = swift_getWitnessTable();
    v162 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520, MEMORY[0x277CDF4F0]);
    v212 = v66;
    v213 = v162;
    v210 = swift_getWitnessTable();
    v211 = v59;
    v208 = swift_getWitnessTable();
    v209 = MEMORY[0x277CDF918];
    v67 = v159;
    v68 = swift_getWitnessTable();
    v69 = v128;
    sub_20C606460();
    v70 = *(v132 + 8);
    v70(v60, v67);
    sub_20C606460();
    v71 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0, v64);
    v206 = v63;
    v207 = v71;
    v72 = swift_getWitnessTable();
    v73 = swift_getWitnessTable();
    v204 = v72;
    v205 = v73;
    v202 = swift_getWitnessTable();
    v203 = v162;
    v200 = swift_getWitnessTable();
    v201 = MEMORY[0x277CE01B0];
    v198 = swift_getWitnessTable();
    v199 = MEMORY[0x277CDF918];
    v196 = swift_getWitnessTable();
    v197 = MEMORY[0x277CDFC60];
    v194 = swift_getWitnessTable();
    v195 = v154;
    v74 = v142;
    v75 = swift_getWitnessTable();
    v76 = v143;
    sub_20C62E890(v60, v74, v67, v75, v68);
    v70(v60, v67);
    v70(v69, v67);
    v77 = v76;
    v78 = MEMORY[0x277CDF918];
  }

  else
  {
    *&v119 = v161;
    *(&v119 + 1) = v160;
    v79 = v148;
    v80 = v135;
    sub_20C610D3C(v148, v52, v53, v55, v56, sub_20C63466C, v166, v135, v137, v119);
    (*v58)(v79, v57);
    sub_20C62E988(v80);
    swift_getKeyPath();
    sub_20C64DF30();

    if (v167 == 3)
    {
      v81 = sub_20C64DE00();
    }

    else
    {
      v81 = sub_20C64DDE0();
    }

    v148 = v81;
    v82 = MEMORY[0x277CDF918];
    v83 = v165;
    v84 = sub_20C630C78();
    v166[29] = v83;
    v166[30] = v84;
    v85 = swift_getWitnessTable();
    v162 = v85;
    v161 = MEMORY[0x277CDFC88];
    v86 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0, MEMORY[0x277CDFC88]);
    v166[27] = v85;
    v166[28] = v86;
    v87 = swift_getWitnessTable();
    v88 = swift_getWitnessTable();
    v166[25] = v87;
    v166[26] = v88;
    v89 = swift_getWitnessTable();
    v160 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520, MEMORY[0x277CDF4F0]);
    v166[23] = v89;
    v166[24] = v160;
    v166[21] = swift_getWitnessTable();
    v166[22] = MEMORY[0x277CE01B0];
    v166[19] = swift_getWitnessTable();
    v166[20] = v82;
    v120 = v153;
    v121 = swift_getWitnessTable();
    v90 = v137;
    sub_20C64DB50();
    (*(v122 + 8))(v90, v120);
    swift_getKeyPath();
    v92 = v130;
    v91 = v131;
    v93 = v133;
    (*(v131 + 104))(v130, *MEMORY[0x277CDFA88], v133);
    v166[17] = v121;
    v166[18] = MEMORY[0x277CDFC60];
    v94 = v150;
    v95 = swift_getWitnessTable();
    v96 = v123;
    v97 = v138;
    sub_20C64DA50();

    (*(v91 + 8))(v92, v93);
    (*(v124 + 8))(v97, v94);
    v166[15] = v95;
    v166[16] = v154;
    v98 = v142;
    v99 = swift_getWitnessTable();
    v100 = v125;
    sub_20C606460();
    v101 = *(v127 + 8);
    v101(v96, v98);
    v102 = v126;
    sub_20C606460();
    v103 = swift_getWitnessTable();
    v166[13] = v162;
    v166[14] = v103;
    v166[11] = swift_getWitnessTable();
    v166[12] = v160;
    v166[9] = swift_getWitnessTable();
    v166[10] = MEMORY[0x277CE01B0];
    v166[7] = swift_getWitnessTable();
    v78 = MEMORY[0x277CDF918];
    v166[8] = MEMORY[0x277CDF918];
    v104 = v159;
    v105 = swift_getWitnessTable();
    v77 = v143;
    sub_20C62E798(v102, v98, v104, v99, v105);
    v101(v102, v98);
    v101(v100, v98);
  }

  v106 = sub_20C630C78();
  v192 = v165;
  v193 = v106;
  v107 = swift_getWitnessTable();
  v108 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0, MEMORY[0x277CDFC88]);
  v190 = v107;
  v191 = v108;
  v109 = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  v188 = v109;
  v189 = v110;
  v111 = swift_getWitnessTable();
  v112 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520, MEMORY[0x277CDF4F0]);
  v186 = v111;
  v187 = v112;
  v184 = swift_getWitnessTable();
  v113 = MEMORY[0x277CE01B0];
  v185 = MEMORY[0x277CE01B0];
  v182 = swift_getWitnessTable();
  v183 = v78;
  v180 = swift_getWitnessTable();
  v181 = MEMORY[0x277CDFC60];
  v178 = swift_getWitnessTable();
  v179 = v154;
  v114 = swift_getWitnessTable();
  v115 = swift_getWitnessTable();
  v176 = v107;
  v177 = v115;
  v174 = swift_getWitnessTable();
  v175 = v112;
  v172 = swift_getWitnessTable();
  v173 = v113;
  v170 = swift_getWitnessTable();
  v171 = v78;
  v116 = swift_getWitnessTable();
  v168 = v114;
  v169 = v116;
  v117 = v145;
  swift_getWitnessTable();
  sub_20C606460();
  return (*(v144 + 8))(v77, v117);
}

uint64_t sub_20C6335C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7 - 8];
  v20 = v9;
  *&v21 = v10;
  *(&v21 + 1) = v11;
  v22 = v12;
  v13 = type metadata accessor for MarketingInlineView(0, &v20);
  v14 = sub_20C62EEEC(v13);
  sub_20C62E988(v13);
  swift_getKeyPath();
  sub_20C64DF30();

  v18[0] = v20;
  v19 = v21;
  v14(v18);

  sub_20C606460();
  v15 = *(v3 + 8);
  v15(v6, a2);
  sub_20C606460();
  return (v15)(v8, a2);
}

uint64_t sub_20C633784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v7 = type metadata accessor for MarketingInlineView(0, v9);
  sub_20C62E988(v7);
  LOBYTE(v9[0]) = a6;
  sub_20C64DF40();
}

void sub_20C633838(uint64_t a1)
{
  sub_20C633A3C(319);
  if (v3 <= 0x3F)
  {
    v18 = 0;
    v24 = v2;
    sub_20C633A94(319);
    if (v5 <= 0x3F)
    {
      v19 = 0;
      v25 = v4;
      v6 = *(a1 + 40);
      v15 = *(a1 + 16);
      v16 = *(a1 + 24);
      v17 = v6;
      type metadata accessor for MarketingInlineView.FocusedButton(255, &v15);
      sub_20C64E1F0();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v7 = sub_20C64D1D0();
      if (v8 <= 0x3F)
      {
        v20 = 0;
        v26 = v7;
        v9 = sub_20C633B38();
        if (v10 <= 0x3F)
        {
          v21 = 0;
          v27 = v9;
          swift_getFunctionTypeMetadata1();
          v11 = sub_20C64D010();
          if (v12 <= 0x3F)
          {
            v22 = 0;
            v28 = v11;
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
            swift_getFunctionTypeMetadata2();
            v13 = sub_20C64D010();
            if (v14 <= 0x3F)
            {
              v23 = 0;
              v29 = v13;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_20C633A3C(uint64_t a1)
{
  if (!qword_281105B30)
  {
    sub_20C64D2D0();
    v1 = sub_20C64D210();
    if (!v2)
    {
      atomic_store(v1, &qword_281105B30);
    }
  }
}

void sub_20C633A94(uint64_t a1)
{
  if (!qword_281105B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9D8, qword_20C657198);
    sub_20C5E5558(&qword_2811057C8, &qword_27C7CF9D8, qword_20C657198, MEMORY[0x277D04410]);
    v1 = sub_20C64D230();
    if (!v2)
    {
      atomic_store(v1, &qword_281105B20);
    }
  }
}

unint64_t sub_20C633B38()
{
  result = qword_281105750;
  if (!qword_281105750)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_281105750);
  }

  return result;
}

uint64_t sub_20C633BBC(uint64_t a1)
{
  v2 = type metadata accessor for MarketingOffer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 40);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = v1;
  v2 = type metadata accessor for MarketingInlineView(0, &v11);
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B0, &qword_20C6570B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20C64D2D0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_20C5E3044(*(v4 + v2[13]), *(v4 + v2[13] + 8));

  v6 = v2[16];
  swift_getFunctionTypeMetadata1();
  v7 = sub_20C64D010();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = v2[17];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
  swift_getFunctionTypeMetadata2();
  v9 = sub_20C64D010();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  return swift_deallocObject();
}

uint64_t sub_20C633ED4(char a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for MarketingInlineView(0, v9) - 8);
  return sub_20C633784(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_20C633FA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C5E573C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C633FE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C5E56C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C634054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B0, &qword_20C6570B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C6340C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20C634190(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20C5DFF60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20C634190(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20C63429C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20C64E2A0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_20C63429C(uint64_t a1, unint64_t a2)
{
  v3 = sub_20C6342E8(a1, a2);
  sub_20C634418(&unk_28237C718);
  return v3;
}

void *sub_20C6342E8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20C634504(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20C64E2A0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20C64E0B0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20C634504(v10, 0);
        result = sub_20C64E240();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20C634418(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20C634578(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20C634504(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA00, &qword_20C657330);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20C634578(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA00, &qword_20C657330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_20C6346C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MarketingOffer(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C5E574C(v2, v6, &qword_27C7CECC0, &qword_20C653470);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20C63742C(v6, v10, type metadata accessor for MarketingOffer);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v6, &qword_27C7CECC0, &qword_20C653470);
LABEL_8:
    v14 = 1;
    return (*(v8 + 56))(a1, v14, 1, v7);
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC8, &qword_20C6534D8) + 48);
  sub_20C63742C(v6, v10, type metadata accessor for MarketingOffer);
  v13 = sub_20C64CF30();
  (*(*(v13 - 8) + 8))(&v6[v12], v13);
LABEL_6:
  sub_20C63742C(v10, a1, type metadata accessor for MarketingOffer);
  v14 = 0;
  return (*(v8 + 56))(a1, v14, 1, v7);
}

void sub_20C634904(uint64_t a1)
{
  v2 = sub_20C64CF10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarketingButtonFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C6374F4(v1, v8, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v11 = *(v8 + 2);
    v12 = *v8;
    MEMORY[0x20F301800](EnumCaseMultiPayload != 0);
    MarketingOfferPlacement.rawValue.getter(v12);
    sub_20C64E090();

    sub_20C64E4C0();
    if (v11)
    {
      sub_20C64E090();
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F301800](2);
    sub_20C637AC0(&qword_281106850, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_20C64E000();
    (*(v3 + 8))(v5, v2);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v10 = *v8;
    MEMORY[0x20F301800](3);
    sub_20C64E1D0();
  }

  else
  {
    MEMORY[0x20F301800](4);
  }
}

uint64_t sub_20C634B84()
{
  sub_20C64E4A0();
  sub_20C634904(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C634BC8(uint64_t a1)
{
  sub_20C64E4A0();
  sub_20C634904(v2);
  return sub_20C64E4E0();
}

__n128 MarketingButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

uint64_t MarketingButtonFeature.reduce(localState:sharedState:sideEffects:action:)(char *a1, char *a2, uint64_t *a3, char *a4)
{
  v210 = a4;
  v201 = a3;
  v206 = a2;
  v208 = a1;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v181 = *(v205 - 1);
  MEMORY[0x28223BE20](v205);
  v182 = &v174 - v5;
  v188 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v188);
  v187 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_20C64CF10();
  v204 = *(v189 - 8);
  v7 = MEMORY[0x28223BE20](v189);
  v185 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = v8;
  MEMORY[0x28223BE20](v7);
  v183 = &v174 - v9;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  MEMORY[0x28223BE20](v191);
  v192 = &v174 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE640, &qword_20C657390);
  MEMORY[0x28223BE20](v11 - 8);
  v195 = &v174 - v12;
  v194 = type metadata accessor for MarketingOffer(0);
  v207 = *(v194 - 8);
  v13 = *(v207 + 64);
  v14 = MEMORY[0x28223BE20](v194);
  v180 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v184 = &v174 - v16;
  MEMORY[0x28223BE20](v15);
  v203 = &v174 - v17;
  v209 = type metadata accessor for MarketingActionItem(0);
  v211 = *(v209 - 8);
  v18 = *(v211 + 64);
  v19 = MEMORY[0x28223BE20](v209);
  v179 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v190 = &v174 - v21;
  MEMORY[0x28223BE20](v20);
  v202 = &v174 - v22;
  v198 = type metadata accessor for MarketingButtonFeature.TaskIdentifier(0);
  v23 = MEMORY[0x28223BE20](v198);
  v193 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v174 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v174 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v197 = &v174 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v174 - v33;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA58, &qword_20C652AC0);
  v199 = *(v200 - 8);
  v35 = MEMORY[0x28223BE20](v200);
  v196 = &v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v174 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v174 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v174 - v43;
  v45 = type metadata accessor for MarketingButtonAction(0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v174 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v4[3];
  v215 = v4[2];
  v216 = v48;
  v49 = v4[5];
  v217 = v4[4];
  v218 = v49;
  v50 = *v4;
  v51 = v4[1];
  v52 = v211;
  v213 = v50;
  v214 = v51;
  sub_20C6374F4(v210, v47, type metadata accessor for MarketingButtonAction);
  result = (*(v52 + 48))(v47, 6, v209);
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v208[1] = 1;
      }

      else
      {
        *v208 = 0;
      }

      return result;
    }

    if (result == 5)
    {
      v208[1] = 0;
      return result;
    }

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
    v87 = v86[16];
    v88 = v86[20];
    v89 = v196;
    v90 = &v196[v86[24]];
    v91 = v193;
    swift_storeEnumTagMultiPayload();
    sub_20C6374F4(v91, v197, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    sub_20C637AC0(&qword_281106348, type metadata accessor for MarketingButtonFeature.TaskIdentifier, &unk_20C6574F0);
    sub_20C64E230();
    sub_20C637494(v91, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    v92 = *MEMORY[0x277D043F0];
    v93 = sub_20C64DF10();
    (*(*(v93 - 8) + 104))(&v89[v87], v92, v93);
    v94 = *MEMORY[0x277D043E0];
    v95 = sub_20C64DF00();
    (*(*(v95 - 8) + 104))(&v89[v88], v94, v95);
    v96 = swift_allocObject();
    v97 = v216;
    v96[3] = v215;
    v96[4] = v97;
    v98 = v218;
    v96[5] = v217;
    v96[6] = v98;
    v99 = v214;
    v96[1] = v213;
    v96[2] = v99;
    *v90 = &unk_20C6573A0;
    *(v90 + 1) = v96;
    sub_20C6373EC(&v213, v212);
    sub_20C64E170();
    v100 = v199;
    v101 = v200;
    (*(v199 + 104))(v89, *MEMORY[0x277D043B0], v200);
    v78 = v201;
    v79 = *v201;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_20C5F875C(0, v79[2] + 1, 1, v79);
    }

    v103 = v79[2];
    v102 = v79[3];
    if (v103 >= v102 >> 1)
    {
      v79 = sub_20C5F875C((v102 > 1), v103 + 1, 1, v79);
    }

    v79[2] = v103 + 1;
    result = (*(v100 + 32))(v79 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v103, v89, v101);
LABEL_23:
    *v78 = v79;
    return result;
  }

  v209 = v34;
  v210 = v44;
  v177 = v30;
  v175 = v27;
  v54 = v206;
  v178 = v42;
  v176 = v39;
  v55 = v204;
  v196 = v18;
  v56 = v207;
  v193 = v13;
  v57 = v205;
  v58 = v203;
  if (result)
  {
    if (result != 1)
    {
      *v208 = 1;
      return result;
    }

    v59 = &v54[*(type metadata accessor for MarketingButtonState(0) + 24)];
    v60 = *v59;
    v62 = *(v59 + 1);
    v61 = *(v59 + 2);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
    v211 = v63[12];
    v64 = v63[16];
    v208 = v63[20];
    v65 = v210;
    v66 = &v210[v63[24]];
    v67 = v209;
    *v209 = v60;
    *(v67 + 8) = v62;
    *(v67 + 16) = v61;
    swift_storeEnumTagMultiPayload();
    sub_20C6374F4(v67, v197, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    sub_20C637AC0(&qword_281106348, type metadata accessor for MarketingButtonFeature.TaskIdentifier, &unk_20C6574F0);
    swift_bridgeObjectRetain_n();
    sub_20C64E230();
    sub_20C637494(v67, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    v68 = *MEMORY[0x277D043F0];
    v69 = sub_20C64DF10();
    (*(*(v69 - 8) + 104))(v65 + v64, v68, v69);
    v70 = *MEMORY[0x277D043E0];
    v71 = sub_20C64DF00();
    (*(*(v71 - 8) + 104))(&v208[v65], v70, v71);
    v72 = swift_allocObject();
    v73 = v216;
    *(v72 + 48) = v215;
    *(v72 + 64) = v73;
    v74 = v218;
    *(v72 + 80) = v217;
    *(v72 + 96) = v74;
    v75 = v214;
    *(v72 + 16) = v213;
    *(v72 + 32) = v75;
    *(v72 + 112) = v60;
    *(v72 + 120) = v62;
    *(v72 + 128) = v61;
    *v66 = &unk_20C6573E0;
    *(v66 + 1) = v72;
    sub_20C6373EC(&v213, v212);
    sub_20C64E170();
    v76 = v199;
    v77 = v200;
    (*(v199 + 104))(v65, *MEMORY[0x277D043B0], v200);
    v78 = v201;
    v79 = *v201;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_20C5F875C(0, v79[2] + 1, 1, v79);
    }

    v81 = v79[2];
    v80 = v79[3];
    if (v81 >= v80 >> 1)
    {
      v79 = sub_20C5F875C((v80 > 1), v81 + 1, 1, v79);
    }

    v79[2] = v81 + 1;
    result = (*(v76 + 32))(v79 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v81, v65, v77);
    goto LABEL_23;
  }

  v82 = v47;
  v83 = v202;
  sub_20C63742C(v82, v202, type metadata accessor for MarketingActionItem);
  v84 = type metadata accessor for MarketingButtonState(0);
  v85 = v195;
  sub_20C6346C0(v195);
  if ((*(v56 + 48))(v85, 1, v194) == 1)
  {
    sub_20C637494(v83, type metadata accessor for MarketingActionItem);
    return sub_20C5DBFC4(v85, &qword_27C7CE640, &qword_20C657390);
  }

  v104 = v85;
  v105 = v58;
  sub_20C63742C(v104, v58, type metadata accessor for MarketingOffer);
  v106 = v192;
  if (v54[*(v84 + 32)] != 1)
  {
    goto LABEL_38;
  }

  sub_20C5E574C(&v54[*(v84 + 40)], v192, &qword_27C7CEC80, &unk_20C6533B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_38;
  }

  if (!EnumCaseMultiPayload)
  {
    if (*v106)
    {
      goto LABEL_31;
    }

LABEL_38:
    sub_20C637494(v58, type metadata accessor for MarketingOffer);
    return sub_20C637494(v83, type metadata accessor for MarketingActionItem);
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v106, &qword_27C7CEC80, &unk_20C6533B0);
    goto LABEL_38;
  }

  v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED08, &qword_20C6535D0) + 48);
  v109 = *v106;
  v110 = sub_20C64CF30();
  (*(*(v110 - 8) + 8))(&v106[v108], v110);
  if (v109 != 1)
  {
    goto LABEL_38;
  }

LABEL_31:
  v111 = v187;
  sub_20C6374F4(v83, v187, type metadata accessor for MarketingAction);
  if (swift_getEnumCaseMultiPayload())
  {
    v112 = v55;
    v205 = *(v55 + 32);
    v210 = (v55 + 32);
    v113 = v183;
    v114 = v111;
    v115 = v189;
    (v205)(v183, v114, v189);
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
    v208 = v116[12];
    v117 = v116[16];
    v209 = v116[20];
    v118 = v178;
    v206 = &v178[v116[24]];
    v119 = v177;
    (*(v112 + 16))(v177, v113, v115);
    swift_storeEnumTagMultiPayload();
    sub_20C6374F4(v119, v197, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    sub_20C637AC0(&qword_281106348, type metadata accessor for MarketingButtonFeature.TaskIdentifier, &unk_20C6574F0);
    sub_20C64E230();
    sub_20C637494(v119, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    v120 = *MEMORY[0x277D043F0];
    v121 = sub_20C64DF10();
    (*(*(v121 - 8) + 104))(&v118[v117], v120, v121);
    v122 = v185;
    v123 = v189;
    v124 = v205;
    (v205)(v185, v113, v189);
    v125 = v184;
    sub_20C6374F4(v58, v184, type metadata accessor for MarketingOffer);
    sub_20C6374F4(v83, v190, type metadata accessor for MarketingActionItem);
    v126 = (*(v112 + 80) + 112) & ~*(v112 + 80);
    v127 = (v186 + *(v207 + 80) + v126) & ~*(v207 + 80);
    v128 = &v193[*(v211 + 80) + v127] & ~*(v211 + 80);
    v129 = swift_allocObject();
    v130 = v216;
    *(v129 + 3) = v215;
    *(v129 + 4) = v130;
    v131 = v218;
    *(v129 + 5) = v217;
    *(v129 + 6) = v131;
    v132 = v214;
    *(v129 + 1) = v213;
    *(v129 + 2) = v132;
    v124(&v129[v126], v122, v123);
    sub_20C63742C(v125, &v129[v127], type metadata accessor for MarketingOffer);
    v133 = &v129[v128];
    v134 = v178;
    sub_20C63742C(v190, v133, type metadata accessor for MarketingActionItem);
    v135 = v206;
    *v206 = &unk_20C6573C8;
    *(v135 + 1) = v129;
    sub_20C6373EC(&v213, v212);
    sub_20C64E170();
    v136 = *MEMORY[0x277D043E8];
    v137 = sub_20C64DF00();
    (*(*(v137 - 8) + 104))(&v134[v209], v136, v137);
    v138 = v199;
    v139 = v200;
    (*(v199 + 104))(v134, *MEMORY[0x277D043B0], v200);
    v140 = v201;
    v141 = *v201;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = sub_20C5F875C(0, v141[2] + 1, 1, v141);
    }

    v143 = v141[2];
    v142 = v141[3];
    if (v143 >= v142 >> 1)
    {
      v141 = sub_20C5F875C((v142 > 1), v143 + 1, 1, v141);
    }

    sub_20C637494(v58, type metadata accessor for MarketingOffer);
    sub_20C637494(v83, type metadata accessor for MarketingActionItem);
    v141[2] = v143 + 1;
    result = (*(v138 + 32))(v141 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v143, v134, v139);
    *v140 = v141;
    return result;
  }

  v144 = v181;
  v145 = v182;
  v146 = v57;
  (*(v181 + 32))(v182, v111, v57);
  v147 = sub_20C64D0B0();
  if (!v147)
  {
    (*(v144 + 8))(v145, v57);
    goto LABEL_38;
  }

  v148 = v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
  v209 = v149[12];
  v150 = v149[16];
  v210 = v149[20];
  v151 = v176;
  v208 = &v176[v149[24]];
  v152 = v175;
  *v175 = v148;
  swift_storeEnumTagMultiPayload();
  sub_20C6374F4(v152, v197, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  sub_20C637AC0(&qword_281106348, type metadata accessor for MarketingButtonFeature.TaskIdentifier, &unk_20C6574F0);
  v153 = v148;
  sub_20C64E230();
  sub_20C637494(v152, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  v154 = *MEMORY[0x277D043F0];
  v155 = sub_20C64DF10();
  (*(*(v155 - 8) + 104))(&v151[v150], v154, v155);
  v156 = v180;
  sub_20C6374F4(v105, v180, type metadata accessor for MarketingOffer);
  v157 = v179;
  sub_20C6374F4(v83, v179, type metadata accessor for MarketingActionItem);
  v158 = (*(v207 + 80) + 120) & ~*(v207 + 80);
  v159 = &v193[*(v211 + 80) + v158] & ~*(v211 + 80);
  v160 = swift_allocObject();
  v161 = v216;
  *(v160 + 48) = v215;
  *(v160 + 64) = v161;
  v162 = v218;
  *(v160 + 80) = v217;
  *(v160 + 96) = v162;
  v163 = v214;
  *(v160 + 16) = v213;
  *(v160 + 32) = v163;
  *(v160 + 112) = v153;
  sub_20C63742C(v156, v160 + v158, type metadata accessor for MarketingOffer);
  sub_20C63742C(v157, v160 + v159, type metadata accessor for MarketingActionItem);
  v164 = v208;
  *v208 = &unk_20C6573B8;
  *(v164 + 1) = v160;
  sub_20C6373EC(&v213, v212);
  v165 = v153;
  sub_20C64E170();
  v166 = *MEMORY[0x277D043E8];
  v167 = sub_20C64DF00();
  (*(*(v167 - 8) + 104))(&v210[v151], v166, v167);
  v168 = v199;
  v169 = v200;
  (*(v199 + 104))(v151, *MEMORY[0x277D043B0], v200);
  v170 = v201;
  v171 = *v201;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v171 = sub_20C5F875C(0, v171[2] + 1, 1, v171);
  }

  v173 = v171[2];
  v172 = v171[3];
  if (v173 >= v172 >> 1)
  {
    v171 = sub_20C5F875C((v172 > 1), v173 + 1, 1, v171);
  }

  (*(v181 + 8))(v182, v146);
  sub_20C637494(v105, type metadata accessor for MarketingOffer);
  sub_20C637494(v83, type metadata accessor for MarketingActionItem);
  v171[2] = v173 + 1;
  result = (*(v168 + 32))(v171 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v173, v176, v169);
  *v170 = v171;
  return result;
}

uint64_t type metadata accessor for MarketingButtonFeature.TaskIdentifier(uint64_t a1)
{
  result = qword_281106308;
  if (!qword_281106308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C636520(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = sub_20C64E160();
  *(v5 + 48) = sub_20C64E150();
  *(v5 + 56) = *(a2 + 48);
  v10 = *(a2 + 64);
  *(v5 + 72) = *(a2 + 80);
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 88) = v11;
  *v11 = v5;
  v11[1] = sub_20C636660;

  return v13(v5 + 16);
}

uint64_t sub_20C636660()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 96) = v4;
  *v4 = v3;
  v4[1] = sub_20C636810;

  return v6();
}

uint64_t sub_20C636810()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 104) = v4;
  *v4 = v3;
  v4[1] = sub_20C6369C0;

  return v6();
}

uint64_t sub_20C6369C0()
{

  v1 = sub_20C64E130();

  return MEMORY[0x2822009F8](sub_20C636AFC, v1, v0);
}

uint64_t sub_20C636AFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C636B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_20C64E160();
  v5[3] = sub_20C64E150();
  v12 = (*(a2 + 16) + **(a2 + 16));
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_20C636C8C;

  return v12(a3, a4, a5);
}

uint64_t sub_20C636C8C(void *a1)
{
  *(*v2 + 40) = v1;

  if (v1)
  {
    v4 = sub_20C64E130();
    v6 = v5;
    v7 = sub_20C636E14;
  }

  else
  {

    v4 = sub_20C64E130();
    v6 = v8;
    v7 = sub_20C62B4C0;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_20C636E14()
{

  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_20C64D160();
  __swift_project_value_buffer(v2, qword_27C7DD450);
  v3 = v1;
  v4 = sub_20C64D140();
  v5 = sub_20C64E190();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20C5D2000, v4, v5, "purchase failed: %@", v8, 0xCu);
    sub_20C5DBFC4(v9, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v9, -1, -1);
    MEMORY[0x20F301F10](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_20C636FC4(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_20C64E160();
  v5[3] = sub_20C64E150();
  v12 = (*a2 + **a2);
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_20C629220;

  return v12(a3, a4, a5);
}

uint64_t sub_20C6370F0(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_20C64E160();
  v2[3] = sub_20C64E150();
  v6 = (*(a2 + 32) + **(a2 + 32));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20C6371F8;

  return v6();
}

uint64_t sub_20C6371F8()
{
  *(*v1 + 40) = v0;

  v3 = sub_20C64E130();
  if (v0)
  {
    v4 = sub_20C637FD0;
  }

  else
  {
    v4 = sub_20C62B4C0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20C637354(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C62B4BC;

  return sub_20C6370F0(a1, v1 + 16);
}

uint64_t sub_20C63742C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C637494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C6374F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C63755C(uint64_t a1)
{
  v4 = *(type metadata accessor for MarketingOffer(0) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for MarketingActionItem(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + 112);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C62B4BC;

  return sub_20C636B60(a1, v1 + 16, v9, v1 + v5, v1 + v8);
}

uint64_t sub_20C6376A4(uint64_t a1)
{
  v4 = *(sub_20C64CF10() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for MarketingOffer(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MarketingActionItem(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20C5EE6B4;

  return sub_20C636FC4(a1, (v1 + 16), v1 + v5, v1 + v8, v1 + v11);
}

uint64_t sub_20C637840(uint64_t a1)
{
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = *(v1 + 112);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C62B4BC;

  return sub_20C636520(a1, v1 + 16, v6, v4, v5);
}

uint64_t sub_20C6379E8(uint64_t a1)
{
  result = sub_20C64CF10();
  if (v2 <= 0x3F)
  {
    result = sub_20C5F94D4(319, &qword_281105788, 0x277CEE438);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C637AC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C637B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64CF10();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarketingButtonFeature.TaskIdentifier(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA08, &unk_20C657530);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v44 - v20;
  v22 = &v44 + *(v19 + 56) - v20;
  sub_20C6374F4(a1, &v44 - v20, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  sub_20C6374F4(a2, v22, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20C6374F4(v21, v15, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
      v33 = *(v15 + 2);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_17:

        goto LABEL_18;
      }

      v34 = *(v15 + 1);
      v35 = *v22;
      v36 = *(v22 + 1);
      v37 = *(v22 + 2);
      v51[0] = *v15;
      v52 = v34;
      v53 = v33;
      v48[0] = v35;
      v49 = v36;
      v50 = v37;
      v26 = _s16FitnessMarketing0B9PlacementV2eeoiySbAC_ACtFZ_0(v51, v48);
    }

    else
    {
      sub_20C6374F4(v21, v17, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
      v27 = *(v17 + 2);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_17;
      }

      v38 = *(v17 + 1);
      v39 = *v17;
      v40 = *v22;
      v41 = *(v22 + 1);
      v42 = *(v22 + 2);
      v51[0] = v39;
      v52 = v38;
      v53 = v27;
      v48[0] = v40;
      v49 = v41;
      v50 = v42;
      v26 = _s16FitnessMarketing0B9PlacementV2eeoiySbAC_ACtFZ_0(v51, v48);
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20C6374F4(v21, v12, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v29 = v45;
      v28 = v46;
      v30 = v22;
      v31 = v47;
      (*(v46 + 32))(v45, v30, v47);
      v26 = sub_20C64CEE0();
      v32 = *(v28 + 8);
      v32(v29, v31);
      v32(v12, v31);
      goto LABEL_21;
    }

    (*(v46 + 8))(v12, v47);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_20C6374F4(v21, v9, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    v24 = *v9;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v25 = *v22;
      sub_20C5F94D4(0, &qword_27C7CFA10, 0x277D82BB8);
      v26 = sub_20C64E1C0();

LABEL_21:
      sub_20C637494(v21, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
      return v26 & 1;
    }

    goto LABEL_18;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_18:
    sub_20C5DBFC4(v21, &qword_27C7CFA08, &unk_20C657530);
    v26 = 0;
    return v26 & 1;
  }

  sub_20C637494(v21, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  v26 = 1;
  return v26 & 1;
}

uint64_t MarketingArtworkPosition.hashValue.getter()
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](0);
  return sub_20C64E4E0();
}

unint64_t sub_20C63804C()
{
  result = qword_27C7CFA18;
  if (!qword_27C7CFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA18);
  }

  return result;
}

unint64_t sub_20C6380C4()
{
  v1 = 0x676F6C6169446F6ELL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_20C638138@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C6391D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C638160(uint64_t a1)
{
  v2 = sub_20C6386AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C63819C(uint64_t a1)
{
  v2 = sub_20C6386AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6381D8(uint64_t a1)
{
  v2 = sub_20C6387A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C638214(uint64_t a1)
{
  v2 = sub_20C6387A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C638250(uint64_t a1)
{
  v2 = sub_20C638754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C63828C(uint64_t a1)
{
  v2 = sub_20C638754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6382C8(uint64_t a1)
{
  v2 = sub_20C638700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C638304(uint64_t a1)
{
  v2 = sub_20C638700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BubbleTipError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA20, &qword_20C6575D0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA28, &qword_20C6575D8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA30, &qword_20C6575E0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA38, &qword_20C6575E8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6386AC();
  sub_20C64E500();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_20C638754();
      v9 = v21;
      sub_20C64E3B0();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_20C638700();
      v9 = v24;
      sub_20C64E3B0();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_20C6387A8();
    sub_20C64E3B0();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_20C6386AC()
{
  result = qword_27C7CFA40;
  if (!qword_27C7CFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA40);
  }

  return result;
}

unint64_t sub_20C638700()
{
  result = qword_27C7CFA48;
  if (!qword_27C7CFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA48);
  }

  return result;
}

unint64_t sub_20C638754()
{
  result = qword_27C7CFA50;
  if (!qword_27C7CFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA50);
  }

  return result;
}

unint64_t sub_20C6387A8()
{
  result = qword_27C7CFA58;
  if (!qword_27C7CFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA58);
  }

  return result;
}

uint64_t BubbleTipError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA60, &qword_20C6575F0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA68, &qword_20C6575F8);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA70, &qword_20C657600);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA78, &unk_20C657608);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C6386AC();
  v15 = v36;
  sub_20C64E4F0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_20C64E3A0();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_20C5DDAF4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_20C64E290();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
      *v24 = &type metadata for BubbleTipError;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_20C638754();
          sub_20C64E320();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_20C638700();
          v26 = v17;
          sub_20C64E320();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_20C6387A8();
        sub_20C64E320();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t BubbleTipError.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

unint64_t sub_20C638E14()
{
  result = qword_27C7CFA80;
  if (!qword_27C7CFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA80);
  }

  return result;
}

unint64_t sub_20C638EBC()
{
  result = qword_27C7CFA88;
  if (!qword_27C7CFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA88);
  }

  return result;
}

unint64_t sub_20C638F14()
{
  result = qword_27C7CFA90;
  if (!qword_27C7CFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA90);
  }

  return result;
}

unint64_t sub_20C638F6C()
{
  result = qword_27C7CFA98;
  if (!qword_27C7CFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA98);
  }

  return result;
}

unint64_t sub_20C638FC4()
{
  result = qword_27C7CFAA0;
  if (!qword_27C7CFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAA0);
  }

  return result;
}

unint64_t sub_20C63901C()
{
  result = qword_27C7CFAA8;
  if (!qword_27C7CFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAA8);
  }

  return result;
}

unint64_t sub_20C639074()
{
  result = qword_27C7CFAB0;
  if (!qword_27C7CFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAB0);
  }

  return result;
}

unint64_t sub_20C6390CC()
{
  result = qword_27C7CFAB8;
  if (!qword_27C7CFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAB8);
  }

  return result;
}

unint64_t sub_20C639124()
{
  result = qword_27C7CFAC0;
  if (!qword_27C7CFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAC0);
  }

  return result;
}

unint64_t sub_20C63917C()
{
  result = qword_27C7CFAC8;
  if (!qword_27C7CFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAC8);
  }

  return result;
}

uint64_t sub_20C6391D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000020C65A480 == a2;
  if (v3 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C65A4A0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676F6C6169446F6ELL && a2 == 0xEF74736575716552)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

unint64_t sub_20C639300()
{
  v1 = *v0;
  v2 = 0x6568536863746566;
  v3 = 0x5364656863746566;
  if (v1 != 4)
  {
    v3 = 0x6570704177656976;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000016;
  if (v1 != 1)
  {
    v4 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C6393DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C63B73C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C639404(uint64_t a1)
{
  v2 = sub_20C63A030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C639440(uint64_t a1)
{
  v2 = sub_20C63A030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C63947C(uint64_t a1)
{
  v2 = sub_20C63A28C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6394B8(uint64_t a1)
{
  v2 = sub_20C63A28C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C639508@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C63B950(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C639530(uint64_t a1)
{
  v2 = sub_20C63A1E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C63956C(uint64_t a1)
{
  v2 = sub_20C63A1E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6395A8(uint64_t a1)
{
  v2 = sub_20C63A190();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6395E4(uint64_t a1)
{
  v2 = sub_20C63A190();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C639620(uint64_t a1)
{
  v2 = sub_20C63A13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C63965C(uint64_t a1)
{
  v2 = sub_20C63A13C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C639698(uint64_t a1)
{
  v2 = sub_20C63A238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6396D4(uint64_t a1)
{
  v2 = sub_20C63A238();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C639710(uint64_t a1)
{
  v2 = sub_20C63A0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C63974C(uint64_t a1)
{
  v2 = sub_20C63A0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioLanguageEngagementSheetAction.encode(to:)(void *a1)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAD0, &qword_20C657AA0);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v45 = &v36 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAD8, &qword_20C657AA8);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v36 - v4;
  v43 = type metadata accessor for AudioLanguageEngagementSheet(0);
  MEMORY[0x28223BE20](v43);
  v46 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAE0, &qword_20C657AB0);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAE8, &qword_20C657AB8);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAF0, &qword_20C657AC0);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAF8, &qword_20C657AC8);
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v13 = &v36 - v12;
  v14 = type metadata accessor for AudioLanguageEngagementSheetAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB00, &qword_20C657AD0);
  v54 = *(v17 - 8);
  v55 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C63A030();
  v20 = v19;
  sub_20C64E500();
  sub_20C63A084(v57, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v59 = 1;
      sub_20C63A238();
      v32 = v55;
      sub_20C64E3B0();
      (*(v38 + 8))(v11, v39);
      return (*(v54 + 8))(v19, v32);
    }

    v24 = v55;
    if (EnumCaseMultiPayload == 4)
    {
      v64 = 3;
      sub_20C63A190();
      v26 = v40;
      sub_20C64E3B0();
      (*(v41 + 8))(v26, v42);
    }

    else
    {
      v66 = 5;
      sub_20C63A0E8();
      v35 = v45;
      sub_20C64E3B0();
      (*(v48 + 8))(v35, v51);
    }

    return (*(v54 + 8))(v20, v24);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v58[0] = 0;
      sub_20C63A28C();
      v34 = v55;
      sub_20C64E3B0();
      (*(v36 + 8))(v13, v37);
      return (*(v54 + 8))(v20, v34);
    }

    v22 = v46;
    sub_20C63AF40(v16, v46, type metadata accessor for AudioLanguageEngagementSheet);
    v65 = 4;
    sub_20C63A13C();
    v23 = v50;
    v24 = v55;
    sub_20C64E3B0();
    sub_20C63AFA8(&qword_27C7CE138, &protocol conformance descriptor for AudioLanguageEngagementSheet);
    v25 = v53;
    sub_20C64E410();
    (*(v52 + 8))(v23, v25);
    sub_20C5ED0CC(v22);
    return (*(v54 + 8))(v20, v24);
  }

  v27 = *(v16 + 3);
  v57 = *(v16 + 2);
  v63 = 2;
  sub_20C63A1E4();
  v28 = v44;
  v29 = v55;
  sub_20C64E3B0();
  v62 = 0;
  v30 = v49;
  v31 = v56;
  sub_20C64E3E0();
  if (v31)
  {
  }

  else
  {
    v56 = v27;

    v61 = 1;
    sub_20C64E400();
    v60 = 2;
    sub_20C64E3E0();
  }

  (*(v47 + 8))(v28, v30);
  return (*(v54 + 8))(v19, v29);
}

uint64_t type metadata accessor for AudioLanguageEngagementSheetAction(uint64_t a1)
{
  result = qword_27C7CFB78;
  if (!qword_27C7CFB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C63A030()
{
  result = qword_27C7CFB08;
  if (!qword_27C7CFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB08);
  }

  return result;
}

uint64_t sub_20C63A084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C63A0E8()
{
  result = qword_27C7CFB10;
  if (!qword_27C7CFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB10);
  }

  return result;
}

unint64_t sub_20C63A13C()
{
  result = qword_27C7CFB18;
  if (!qword_27C7CFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB18);
  }

  return result;
}

unint64_t sub_20C63A190()
{
  result = qword_27C7CFB20;
  if (!qword_27C7CFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB20);
  }

  return result;
}

unint64_t sub_20C63A1E4()
{
  result = qword_27C7CFB28;
  if (!qword_27C7CFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB28);
  }

  return result;
}

unint64_t sub_20C63A238()
{
  result = qword_27C7CFB30;
  if (!qword_27C7CFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB30);
  }

  return result;
}

unint64_t sub_20C63A28C()
{
  result = qword_27C7CFB38;
  if (!qword_27C7CFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB38);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheetAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB40, &qword_20C657AD8);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB48, &qword_20C657AE0);
  v6 = *(v5 - 8);
  v78 = v5;
  v79 = v6;
  MEMORY[0x28223BE20](v5);
  v82 = &v64 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB50, &qword_20C657AE8);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v86 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB58, &qword_20C657AF0);
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v85 = &v64 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB60, &qword_20C657AF8);
  v71 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v64 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB68, &qword_20C657B00);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v80 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB70, &unk_20C657B08);
  v87 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = type metadata accessor for AudioLanguageEngagementSheetAction(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v64 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  v25 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_20C63A030();
  v26 = v89;
  sub_20C64E4F0();
  if (!v26)
  {
    v66 = v19;
    v65 = v22;
    v27 = v84;
    v28 = v85;
    v29 = v86;
    v68 = v16;
    v67 = v24;
    v30 = v88;
    v89 = v13;
    v31 = sub_20C64E3A0();
    v32 = (2 * *(v31 + 16)) | 1;
    v91 = v31;
    v92 = v31 + 32;
    v93 = 0;
    v94 = v32;
    v33 = sub_20C5DDAF8();
    if (v33 != 6 && v93 == v94 >> 1)
    {
      if (v33 > 2u)
      {
        if (v33 == 3)
        {
          v95 = 3;
          sub_20C63A190();
          v49 = v89;
          sub_20C64E320();
          v50 = v87;
          (*(v72 + 8))(v29, v73);
          (*(v50 + 8))(v15, v49);
          swift_unknownObjectRelease();
          v54 = v67;
          goto LABEL_17;
        }

        v42 = v89;
        v43 = v87;
        if (v33 != 4)
        {
          v95 = 5;
          sub_20C63A0E8();
          v53 = v83;
          sub_20C64E320();
          (*(v76 + 8))(v53, v77);
          (*(v43 + 8))(v15, v42);
          swift_unknownObjectRelease();
          v54 = v67;
          goto LABEL_17;
        }

        v95 = 4;
        sub_20C63A13C();
        v44 = v82;
        sub_20C64E320();
        type metadata accessor for AudioLanguageEngagementSheet(0);
        sub_20C63AFA8(&qword_27C7CE130, &protocol conformance descriptor for AudioLanguageEngagementSheet);
        v45 = v66;
        v46 = v78;
        sub_20C64E390();
        (*(v79 + 8))(v44, v46);
        (*(v43 + 8))(v15, v42);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v54 = v67;
        sub_20C63AF40(v45, v67, type metadata accessor for AudioLanguageEngagementSheetAction);
        v30 = v88;
      }

      else
      {
        if (!v33)
        {
          v95 = 0;
          sub_20C63A28C();
          v47 = v80;
          v48 = v89;
          sub_20C64E320();
          (*(v69 + 8))(v47, v70);
          (*(v87 + 8))(v15, v48);
          swift_unknownObjectRelease();
          v54 = v67;
          goto LABEL_17;
        }

        if (v33 == 1)
        {
          v95 = 1;
          sub_20C63A238();
          v34 = v81;
          v35 = v89;
          sub_20C64E320();
          v36 = v87;
          (*(v71 + 8))(v34, v27);
          (*(v36 + 8))(v15, v35);
          swift_unknownObjectRelease();
          v54 = v67;
LABEL_17:
          swift_storeEnumTagMultiPayload();
          goto LABEL_18;
        }

        v95 = 2;
        sub_20C63A1E4();
        v51 = v28;
        sub_20C64E320();
        v52 = v87;
        v95 = 0;
        v55 = v75;
        v56 = sub_20C64E360();
        v58 = v57;
        v59 = v56;
        v95 = 1;
        v86 = sub_20C64E380();
        v95 = 2;
        v83 = sub_20C64E360();
        v84 = v60;
        (*(v74 + 8))(v51, v55);
        (*(v52 + 8))(v15, v89);
        swift_unknownObjectRelease();
        v61 = v65;
        *v65 = v59;
        v61[1] = v58;
        v63 = v83;
        v62 = v84;
        v61[2] = v86;
        v61[3] = v63;
        v61[4] = v62;
        swift_storeEnumTagMultiPayload();
        v54 = v67;
        sub_20C63AF40(v61, v67, type metadata accessor for AudioLanguageEngagementSheetAction);
      }

LABEL_18:
      sub_20C63AF40(v54, v30, type metadata accessor for AudioLanguageEngagementSheetAction);
      return __swift_destroy_boxed_opaque_existential_1(v90);
    }

    v37 = sub_20C64E290();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
    *v39 = v68;
    v40 = v89;
    sub_20C64E330();
    sub_20C64E280();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v87 + 8))(v15, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v90);
}

uint64_t sub_20C63AF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C63AFA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioLanguageEngagementSheet(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20C63B01C(uint64_t a1)
{
  sub_20C63B090();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AudioLanguageEngagementSheet(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C63B090()
{
  if (!qword_27C7CFB88)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C7CFB88);
    }
  }
}

unint64_t sub_20C63B168()
{
  result = qword_27C7CFB90;
  if (!qword_27C7CFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB90);
  }

  return result;
}

unint64_t sub_20C63B1C0()
{
  result = qword_27C7CFB98;
  if (!qword_27C7CFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB98);
  }

  return result;
}

unint64_t sub_20C63B218()
{
  result = qword_27C7CFBA0;
  if (!qword_27C7CFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBA0);
  }

  return result;
}

unint64_t sub_20C63B270()
{
  result = qword_27C7CFBA8;
  if (!qword_27C7CFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBA8);
  }

  return result;
}

unint64_t sub_20C63B2C8()
{
  result = qword_27C7CFBB0;
  if (!qword_27C7CFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBB0);
  }

  return result;
}

unint64_t sub_20C63B320()
{
  result = qword_27C7CFBB8;
  if (!qword_27C7CFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBB8);
  }

  return result;
}

unint64_t sub_20C63B378()
{
  result = qword_27C7CFBC0;
  if (!qword_27C7CFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBC0);
  }

  return result;
}

unint64_t sub_20C63B3D0()
{
  result = qword_27C7CFBC8;
  if (!qword_27C7CFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBC8);
  }

  return result;
}

unint64_t sub_20C63B428()
{
  result = qword_27C7CFBD0;
  if (!qword_27C7CFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBD0);
  }

  return result;
}

unint64_t sub_20C63B480()
{
  result = qword_27C7CFBD8;
  if (!qword_27C7CFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBD8);
  }

  return result;
}

unint64_t sub_20C63B4D8()
{
  result = qword_27C7CFBE0;
  if (!qword_27C7CFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBE0);
  }

  return result;
}

unint64_t sub_20C63B530()
{
  result = qword_27C7CFBE8;
  if (!qword_27C7CFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBE8);
  }

  return result;
}

unint64_t sub_20C63B588()
{
  result = qword_27C7CFBF0;
  if (!qword_27C7CFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBF0);
  }

  return result;
}

unint64_t sub_20C63B5E0()
{
  result = qword_27C7CFBF8;
  if (!qword_27C7CFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBF8);
  }

  return result;
}

unint64_t sub_20C63B638()
{
  result = qword_27C7CFC00;
  if (!qword_27C7CFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFC00);
  }

  return result;
}

unint64_t sub_20C63B690()
{
  result = qword_27C7CFC08;
  if (!qword_27C7CFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFC08);
  }

  return result;
}

unint64_t sub_20C63B6E8()
{
  result = qword_27C7CFC10;
  if (!qword_27C7CFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFC10);
  }

  return result;
}

uint64_t sub_20C63B73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000020C65A4C0 == a2;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C65A4E0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C65A500 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6568536863746566 && a2 == 0xEA00000000007465 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5364656863746566 && a2 == 0xEC00000074656568 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
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

uint64_t sub_20C63B950(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t BubbleTipFeature.init(environment:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = a1[2];
  type metadata accessor for BubbleTipFeature(0);
  return sub_20C64CF60();
}

uint64_t sub_20C63BAB4(uint64_t a1)
{
  v2 = sub_20C64CF70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s16FitnessMarketing14TaskIdentifierOMa_0(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C63E424(v1, v8, _s16FitnessMarketing14TaskIdentifierOMa_0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270);
      (*(v3 + 32))(v5, &v8[*(v12 + 48)], v2);
      v11 = 1;
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270);
      (*(v3 + 32))(v5, &v8[*(v10 + 48)], v2);
      v11 = 0;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC28, &qword_20C658248);
    (*(v3 + 32))(v5, &v8[*(v13 + 48)], v2);
    v11 = 3;
LABEL_8:
    MEMORY[0x20F301800](v11);
    sub_20C64E090();

    goto LABEL_9;
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x20F301800](2);
LABEL_9:
  sub_20C64019C(&qword_281106830, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20C64E000();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20C63BD68()
{
  sub_20C64E4A0();
  sub_20C63BAB4(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C63BDAC(uint64_t a1)
{
  sub_20C64E4A0();
  sub_20C63BAB4(v2);
  return sub_20C64E4E0();
}

void BubbleTipFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v308 = a4;
  v306 = a3;
  v299 = a1;
  v281 = sub_20C64CF10();
  v280 = *(v281 - 1);
  MEMORY[0x28223BE20](v281);
  v275 = &v273 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v278 = &v273 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v279 = &v273 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC18, &qword_20C658238);
  v292 = *(v9 - 8);
  v293 = v9;
  MEMORY[0x28223BE20](v9);
  v291 = &v273 - v10;
  v302 = type metadata accessor for BubbleTipFeature(0);
  v300 = *(v302 - 8);
  v11 = MEMORY[0x28223BE20](v302);
  v288 = &v273 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v289 = &v273 - v14;
  v301 = v15;
  MEMORY[0x28223BE20](v13);
  v290 = &v273 - v16;
  v305 = sub_20C64CF70();
  v310 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v283 = &v273 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC20, &qword_20C658240);
  v295 = *(v286 - 1);
  MEMORY[0x28223BE20](v286);
  v294 = &v273 - v18;
  v304 = _s16FitnessMarketing14TaskIdentifierOMa_0(0);
  v19 = MEMORY[0x28223BE20](v304);
  v274 = (&v273 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v277 = (&v273 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v273 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v273 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v285 = &v273 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v287 = (&v273 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v273 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v273 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v303 = &v273 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v273 - v41;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA48, &qword_20C652AB0);
  v311 = *(v309 - 8);
  v43 = MEMORY[0x28223BE20](v309);
  v276 = &v273 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v282 = &v273 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v273 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v296 = &v273 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v297 = &v273 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v298 = &v273 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v273 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = &v273 - v60;
  MEMORY[0x28223BE20](v59);
  v284 = &v273 - v62;
  v63 = type metadata accessor for BubbleTipAction(0);
  MEMORY[0x28223BE20](v63);
  v65 = (&v273 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C63E424(v308, v65, type metadata accessor for BubbleTipAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v140 = v299;
        v141 = v299[1];
        v308 = *v299;
        v142 = v308;
        v143 = v299[2];
        v144 = v299[3];

        sub_20C5E8FFC(v143, v144);
        *(v140 + 1) = xmmword_20C658220;
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
        v146 = v145[16];
        v299 = v145[20];
        v147 = v296;
        v148 = &v296[v145[24]];
        v149 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270) + 48);
        *v28 = v142;
        v28[1] = v141;
        v150 = v307;
        (*(v310 + 16))(v28 + v149, v307 + *(v302 + 20), v305);
        swift_storeEnumTagMultiPayload();
        sub_20C63E424(v28, v303, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0, &unk_20C658378);

        sub_20C64E230();
        sub_20C640D18(v28, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E170();
        v151 = *MEMORY[0x277D04400];
        v152 = sub_20C64DF10();
        (*(*(v152 - 8) + 104))(&v147[v146], v151, v152);
        v153 = *MEMORY[0x277D043E0];
        v154 = sub_20C64DF00();
        (*(*(v154 - 8) + 104))(v299 + v147, v153, v154);
        v155 = v288;
        sub_20C63E424(v150, v288, type metadata accessor for BubbleTipFeature);
        v156 = (*(v300 + 80) + 16) & ~*(v300 + 80);
        v157 = (v301 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
        v158 = swift_allocObject();
        sub_20C63FC98(v155, v158 + v156);
        v159 = (v158 + v157);
        v160 = v309;
        *v159 = v308;
        v159[1] = v141;
        *v148 = &unk_20C658280;
        *(v148 + 1) = v158;
        v161 = v311;
        (*(v311 + 104))(v147, *MEMORY[0x277D043B0], v160);
        v162 = v306;
        v163 = *v306;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = sub_20C5F8780(0, v163[2] + 1, 1, v163);
        }

        v165 = v163[2];
        v164 = v163[3];
        if (v165 >= v164 >> 1)
        {
          v163 = sub_20C5F8780((v164 > 1), v165 + 1, 1, v163);
        }

        v163[2] = v165 + 1;
        (*(v161 + 32))(v163 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v165, v296, v160);
      }

      else
      {
        v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
        v207 = v206[16];
        v208 = v206[20];
        v209 = &v49[v206[24]];
        (*(v310 + 16))(v25, v307 + *(v302 + 20), v305);
        swift_storeEnumTagMultiPayload();
        sub_20C63E424(v25, v303, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0, &unk_20C658378);
        sub_20C64E230();
        sub_20C640D18(v25, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E170();
        v210 = *MEMORY[0x277D04400];
        v211 = sub_20C64DF10();
        (*(*(v211 - 8) + 104))(&v49[v207], v210, v211);
        v212 = *MEMORY[0x277D043E8];
        v213 = sub_20C64DF00();
        (*(*(v213 - 8) + 104))(&v49[v208], v212, v213);
        *v209 = &unk_20C658268;
        *(v209 + 1) = 0;
        v214 = v311;
        v215 = v309;
        (*(v311 + 104))(v49, *MEMORY[0x277D043B0], v309);
        v162 = v306;
        v163 = *v306;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = sub_20C5F8780(0, v163[2] + 1, 1, v163);
        }

        v217 = v163[2];
        v216 = v163[3];
        if (v217 >= v216 >> 1)
        {
          v163 = sub_20C5F8780((v216 > 1), v217 + 1, 1, v163);
        }

        v163[2] = v217 + 1;
        (*(v214 + 32))(v163 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v217, v49, v215);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v99 = v299;
        v100 = v299[1];
        v298 = *v299;
        v101 = v299[2];
        v102 = v299[3];
        sub_20C5E8F84(v101, v102);
        v103 = v311;
        v308 = v101;
        v296 = v100;
        if (v102 >= 2)
        {
          sub_20C5E8F84(v101, v102);

          sub_20C5E8FFC(v99[2], v99[3]);
          v104 = v102;
        }

        else
        {

          sub_20C5E8FFC(v101, v102);
          v104 = 0;
        }

        v99[2] = 0;
        v99[3] = v104;
        v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
        v219 = v218[16];
        v299 = v218[20];
        v220 = v297;
        v221 = &v297[v218[24]];
        v222 = v307;
        v223 = v285;
        (*(v310 + 16))(v285, v307 + *(v302 + 20), v305);
        swift_storeEnumTagMultiPayload();
        sub_20C63E424(v223, v303, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0, &unk_20C658378);
        sub_20C64E230();
        sub_20C640D18(v223, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E170();
        v224 = *MEMORY[0x277D04400];
        v225 = sub_20C64DF10();
        (*(*(v225 - 8) + 104))(&v220[v219], v224, v225);
        v226 = *MEMORY[0x277D043E8];
        v227 = sub_20C64DF00();
        (*(*(v227 - 8) + 104))(v299 + v220, v226, v227);
        v228 = v222;
        v229 = v289;
        sub_20C63E424(v228, v289, type metadata accessor for BubbleTipFeature);
        v230 = (*(v300 + 80) + 16) & ~*(v300 + 80);
        v231 = (v301 + v230 + 7) & 0xFFFFFFFFFFFFFFF8;
        v232 = swift_allocObject();
        sub_20C63FC98(v229, v232 + v230);
        v233 = (v232 + v231);
        v234 = v296;
        *v233 = v298;
        v233[1] = v234;
        *v221 = &unk_20C658290;
        *(v221 + 1) = v232;
        v235 = v309;
        (*(v103 + 104))(v220, *MEMORY[0x277D043B0], v309);
        v236 = v306;
        v237 = *v306;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v237 = sub_20C5F8780(0, v237[2] + 1, 1, v237);
        }

        v239 = v237[2];
        v238 = v237[3];
        if (v239 >= v238 >> 1)
        {
          v237 = sub_20C5F8780((v238 > 1), v239 + 1, 1, v237);
        }

        sub_20C5E8FFC(v308, v102);
        v237[2] = v239 + 1;
        (*(v103 + 32))(v237 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v239, v297, v235);
        *v236 = v237;
        return;
      }

      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v183 = v182[16];
      v184 = v182[20];
      v185 = &v61[v182[24]];
      (*(v310 + 16))(v38, v307 + *(v302 + 20), v305);
      swift_storeEnumTagMultiPayload();
      sub_20C63E424(v38, v303, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0, &unk_20C658378);
      sub_20C64E230();
      sub_20C640D18(v38, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E170();
      v186 = *MEMORY[0x277D04400];
      v187 = sub_20C64DF10();
      (*(*(v187 - 8) + 104))(&v61[v183], v186, v187);
      v188 = *MEMORY[0x277D043E8];
      v189 = sub_20C64DF00();
      (*(*(v189 - 8) + 104))(&v61[v184], v188, v189);
      *v185 = &unk_20C6582B0;
      *(v185 + 1) = 0;
      v190 = v311;
      (*(v311 + 104))(v61, *MEMORY[0x277D043B0], v309);
      v162 = v306;
      v163 = *v306;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v163 = sub_20C5F8780(0, v163[2] + 1, 1, v163);
      }

      v192 = v163[2];
      v191 = v163[3];
      if (v192 >= v191 >> 1)
      {
        v163 = sub_20C5F8780((v191 > 1), v192 + 1, 1, v163);
      }

      v163[2] = v192 + 1;
      (*(v190 + 32))(v163 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v192, v61, v309);
    }

    *v162 = v163;
    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v105 = v311;
    if (EnumCaseMultiPayload == 2)
    {
      v106 = v65[1];
      v308 = *v65;
      v299 = v106;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v108 = v107[16];
      v109 = v107[20];
      v110 = &v58[v107[24]];
      v111 = *(v310 + 16);
      v302 = v307 + *(v302 + 20);
      v310 += 16;
      v297 = v111;
      (v111)(v35);
      swift_storeEnumTagMultiPayload();
      sub_20C63E424(v35, v303, _s16FitnessMarketing14TaskIdentifierOMa_0);
      v293 = sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0, &unk_20C658378);
      sub_20C64E230();
      sub_20C640D18(v35, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E170();
      v112 = *MEMORY[0x277D043F0];
      v113 = sub_20C64DF10();
      v114 = *(v113 - 8);
      v291 = *(v114 + 104);
      v292 = v113;
      v289 = v114 + 104;
      (v291)(&v58[v108], v112);
      v115 = *MEMORY[0x277D043E8];
      v116 = sub_20C64DF00();
      v117 = *(v116 - 8);
      v118 = *(v117 + 104);
      v288 = v116;
      v286 = v118;
      v285 = (v117 + 104);
      (v118)(&v58[v109], v115);
      *v110 = &unk_20C658298;
      *(v110 + 1) = 0;
      v119 = *(v105 + 104);
      LODWORD(v295) = *MEMORY[0x277D043B0];
      v296 = (v105 + 104);
      v294 = v119;
      (v119)(v58);
      v120 = *v306;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_20C5F8780(0, *(v120 + 16) + 1, 1, v120);
      }

      v122 = *(v120 + 16);
      v121 = *(v120 + 24);
      if (v122 >= v121 >> 1)
      {
        v120 = sub_20C5F8780((v121 > 1), v122 + 1, 1, v120);
      }

      *(v120 + 16) = v122 + 1;
      v123 = *(v311 + 32);
      v283 = ((*(v311 + 80) + 32) & ~*(v311 + 80));
      v282 = *(v311 + 72);
      v124 = v309;
      v311 += 32;
      v284 = v123;
      (v123)(&v283[v120 + v282 * v122], v58, v309);
      v125 = v107[16];
      v280 = v107[20];
      v126 = v298;
      v281 = (v298 + v107[24]);
      v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270) + 48);
      v128 = v287;
      v129 = v308;
      v130 = v299;
      *v287 = v308;
      *(v128 + 8) = v130;
      (v297)(v128 + v127, v302, v305);
      swift_storeEnumTagMultiPayload();
      sub_20C63E424(v128, v303, _s16FitnessMarketing14TaskIdentifierOMa_0);

      sub_20C64E230();
      sub_20C640D18(v128, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E170();
      (v291)(v126 + v125, *MEMORY[0x277D04400], v292);
      (v286)(v126 + v280, *MEMORY[0x277D043E0], v288);
      v131 = v290;
      sub_20C63E424(v307, v290, type metadata accessor for BubbleTipFeature);
      v132 = (*(v300 + 80) + 16) & ~*(v300 + 80);
      v133 = (v301 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
      v134 = swift_allocObject();
      sub_20C63FC98(v131, v134 + v132);
      v135 = (v134 + v133);
      *v135 = v129;
      v135[1] = v130;
      v136 = v281;
      *v281 = &unk_20C6582A8;
      v136[1] = v134;
      (v294)(v126, v295, v124);
      v138 = *(v120 + 16);
      v137 = *(v120 + 24);
      if (v138 >= v137 >> 1)
      {
        v120 = sub_20C5F8780((v137 > 1), v138 + 1, 1, v120);
      }

      v139 = v306;
      *(v120 + 16) = v138 + 1;
      (v284)(&v283[v120 + v138 * v282], v298, v124);
      *v139 = v120;
    }

    else
    {
      v193 = v306;
      v194 = v309;
      if ((*v65 & 1) == 0)
      {
        v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
        v196 = v195[16];
        v308 = v195[20];
        v197 = v284;
        v198 = &v284[v195[24]];
        (*(v310 + 16))(v42, v307 + *(v302 + 20), v305);
        swift_storeEnumTagMultiPayload();
        sub_20C63E424(v42, v303, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0, &unk_20C658378);
        sub_20C64E230();
        sub_20C640D18(v42, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E170();
        v199 = *MEMORY[0x277D04400];
        v200 = sub_20C64DF10();
        (*(*(v200 - 8) + 104))(&v197[v196], v199, v200);
        v201 = *MEMORY[0x277D043E8];
        v202 = sub_20C64DF00();
        (*(*(v202 - 8) + 104))(&v197[v308], v201, v202);
        *v198 = &unk_20C6582B8;
        *(v198 + 1) = 0;
        (*(v105 + 104))(v197, *MEMORY[0x277D043B0], v194);
        v203 = *v193;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v203 = sub_20C5F8780(0, v203[2] + 1, 1, v203);
        }

        v205 = v203[2];
        v204 = v203[3];
        if (v205 >= v204 >> 1)
        {
          v203 = sub_20C5F8780((v204 > 1), v205 + 1, 1, v203);
        }

        v203[2] = v205 + 1;
        (*(v105 + 32))(v203 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v205, v284, v194);
        *v193 = v203;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v167 = v294;
    v166 = v295;
    v168 = v286;
    (*(v295 + 32))(v294, v65, v286);
    v169 = sub_20C64D0B0();
    if (v169)
    {
      v170 = v169;
      v171 = [objc_allocWithZone(MEMORY[0x277CEE890]) init];
      v172 = [objc_opt_self() systemGray6Color];
      [v171 setBackgroundColor_];

      sub_20C64D110();
      swift_allocObject();
      v173 = v170;
      v174 = v171;
      v175 = sub_20C64D100();

      v176 = v283;
      sub_20C64CF60();
      type metadata accessor for BubbleTipModelWrapper(0);
      v177 = swift_allocObject();
      *(v177 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel) = 0;
      v178 = *(v310 + 32);
      v179 = v305;
      v178(v177 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_identifier, v176, v305);
      *(v177 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel) = v175;
      sub_20C64CF60();

      (*(v295 + 8))(v294, v168);
      type metadata accessor for BubbleTipRequestWrapper(0);
      v180 = swift_allocObject();
      v178(v180 + OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_identifier, v176, v179);
      *(v180 + OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_request) = v173;
      v181 = v299;
      sub_20C5E8FFC(v299[2], v299[3]);
      v181[2] = v177;
      v181[3] = v180;
    }

    else
    {
      (*(v166 + 8))(v167, v168);
    }
  }

  else
  {
    v67 = v307;
    v69 = v291;
    v68 = v292;
    v70 = v293;
    (*(v292 + 32))(v291, v65, v293);
    v71 = sub_20C64D0B0();
    if (!v71)
    {
      (*(v68 + 8))(v69, v70);
      return;
    }

    v72 = v71;
    v73 = [v71 originalRequest];
    v74 = [v72 selectedActionIdentifier];
    if (!v74)
    {
      sub_20C64E050();
      v74 = sub_20C64E040();
    }

    v75 = [v73 locateActionWithIdentifier_];

    if (!v75)
    {
      (*(v68 + 8))(v69, v70);

      return;
    }

    v76 = [v75 style];
    if (v76)
    {
      if (v76 != 2)
      {
        (*(v68 + 8))(v69, v70);

        return;
      }

      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v78 = v77[16];
      v300 = v77[12];
      v301 = v78;
      v308 = v77[20];
      v79 = v282;
      v80 = &v282[v77[24]];
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC28, &qword_20C658248) + 48);
      v82 = [v72 &off_277DA43D8 + 5];
      v83 = sub_20C64E050();
      v85 = v84;

      v86 = v277;
      *v277 = v83;
      *(v86 + 8) = v85;
      (*(v310 + 16))(v86 + v81, v67 + *(v302 + 20), v305);
      swift_storeEnumTagMultiPayload();
      sub_20C63E424(v86, v303, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0, &unk_20C658378);
      sub_20C64E230();
      sub_20C640D18(v86, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E170();
      v87 = *MEMORY[0x277D043F0];
      v88 = sub_20C64DF10();
      (*(*(v88 - 8) + 104))(&v79[v301], v87, v88);
      v89 = *MEMORY[0x277D043E8];
      v90 = sub_20C64DF00();
      (*(*(v90 - 8) + 104))(&v79[v308], v89, v90);
      *v80 = &unk_20C658260;
      *(v80 + 1) = 0;
      v91 = v79;
      v92 = v309;
      (*(v311 + 104))(v91, *MEMORY[0x277D043B0], v309);
      v93 = *v306;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_20C5F8780(0, v93[2] + 1, 1, v93);
      }

      v95 = v93[2];
      v94 = v93[3];
      v97 = v292;
      v96 = v293;
      v98 = v291;
      if (v95 >= v94 >> 1)
      {
        v93 = sub_20C5F8780((v94 > 1), v95 + 1, 1, v93);
      }

      (*(v97 + 8))(v98, v96);
      v93[2] = v95 + 1;
      (*(v311 + 32))(v93 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v95, v282, v92);
    }

    else
    {
      v240 = [v75 deepLink];
      if (v240)
      {
        v241 = v278;
        v242 = v240;
        sub_20C64CEF0();

        v243 = 0;
        v244 = v280;
        v245 = v279;
      }

      else
      {
        v243 = 1;
        v244 = v280;
        v245 = v279;
        v241 = v278;
      }

      v246 = v281;
      (*(v244 + 56))(v241, v243, 1, v281);
      sub_20C63E3B4(v241, v245);
      if ((*(v244 + 48))(v245, 1, v246))
      {
        (*(v68 + 8))(v69, v70);

        sub_20C5DBFC4(v245, &qword_27C7CF080, &qword_20C654360);
        return;
      }

      v247 = v245;
      v248 = v275;
      (*(v244 + 16))(v275, v247, v246);
      sub_20C5DBFC4(v247, &qword_27C7CF080, &qword_20C654360);
      v249 = v67;
      v308 = sub_20C64CEC0();
      v301 = v250;
      (*(v244 + 8))(v248, v246);
      v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v252 = v251[16];
      v298 = v251[12];
      v299 = v252;
      v300 = v251[20];
      v253 = v276;
      v254 = &v276[v251[24]];
      v255 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC28, &qword_20C658248) + 48);
      v256 = [v72 selectedActionIdentifier];
      v257 = sub_20C64E050();
      v259 = v258;

      v260 = v274;
      *v274 = v257;
      *(v260 + 8) = v259;
      (*(v310 + 16))(v260 + v255, v249 + *(v302 + 20), v305);
      swift_storeEnumTagMultiPayload();
      sub_20C63E424(v260, v303, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0, &unk_20C658378);
      sub_20C64E230();
      sub_20C640D18(v260, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E170();
      v261 = *MEMORY[0x277D043F0];
      v262 = sub_20C64DF10();
      (*(*(v262 - 8) + 104))(v299 + v253, v261, v262);
      v263 = *MEMORY[0x277D043E8];
      v264 = sub_20C64DF00();
      (*(*(v264 - 8) + 104))(&v253[v300], v263, v264);
      v265 = swift_allocObject();
      v266 = v309;
      v267 = v301;
      *(v265 + 16) = v308;
      *(v265 + 24) = v267;
      *v254 = &unk_20C658258;
      *(v254 + 1) = v265;
      (*(v311 + 104))(v253, *MEMORY[0x277D043B0], v266);
      v93 = *v306;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_20C5F8780(0, v93[2] + 1, 1, v93);
      }

      v269 = v93[2];
      v268 = v93[3];
      v271 = v292;
      v270 = v293;
      v272 = v291;
      if (v269 >= v268 >> 1)
      {
        v93 = sub_20C5F8780((v268 > 1), v269 + 1, 1, v93);
      }

      (*(v271 + 8))(v272, v270);
      v93[2] = v269 + 1;
      (*(v311 + 32))(v93 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v269, v276, v266);
    }

    *v306 = v93;
  }
}

uint64_t sub_20C63E37C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C63E3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C63E424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C63E48C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for BubbleTipAction(0);
  v1[4] = swift_task_alloc();
  sub_20C64E160();
  v1[5] = sub_20C64E150();
  v3 = sub_20C64E130();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_20C63E554, v3, v2);
}

uint64_t sub_20C63E554()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7CFC40, &unk_20C6583C0);
  *v1 = v0;
  v1[1] = sub_20C63E614;
  v3 = *(v0 + 32);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_20C63E614()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_20C640D18(v2, type metadata accessor for BubbleTipAction);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_20C640E78, v4, v3);
}

uint64_t sub_20C63E76C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for BubbleTipAction(0);
  v1[4] = swift_task_alloc();
  sub_20C64E160();
  v1[5] = sub_20C64E150();
  v3 = sub_20C64E130();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_20C63E834, v3, v2);
}

uint64_t sub_20C63E834()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7CFC40, &unk_20C6583C0);
  *v1 = v0;
  v1[1] = sub_20C63E8F4;
  v3 = *(v0 + 32);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_20C63E8F4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_20C640D18(v2, type metadata accessor for BubbleTipAction);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_20C62ADE4, v4, v3);
}

uint64_t sub_20C63EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_20C64E160();
  v4[5] = sub_20C64E150();
  v6 = sub_20C64E130();

  return MEMORY[0x2822009F8](sub_20C63EAE8, v6, v5);
}

uint64_t sub_20C63EAE8()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  (*v3)(v2, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_20C63EB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_20C64E160();
  v4[5] = sub_20C64E150();
  v6 = sub_20C64E130();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_20C63EC08, v6, v5);
}

uint64_t sub_20C63EC08()
{
  v5 = (*(v0[2] + 32) + **(v0[2] + 32));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_20C63ECFC;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_20C63ECFC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_20C63EE38;
  }

  else
  {
    v5 = sub_20C628D5C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C63EE38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C63EE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v4[17] = type metadata accessor for BubbleTipAction(0);
  v4[18] = swift_task_alloc();
  v4[19] = sub_20C64E160();
  v4[20] = sub_20C64E150();
  v6 = sub_20C64E130();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x2822009F8](sub_20C63EF6C, v6, v5);
}

uint64_t sub_20C63EF6C()
{
  v5 = (*(v0[14] + 16) + **(v0[14] + 16));
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_20C63F064;
  v2 = v0[15];
  v3 = v0[16];

  return v5(v0 + 7, v2, v3);
}

uint64_t sub_20C63F064()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_20C63F814;
  }

  else
  {
    v5 = sub_20C63F1A0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C63F1A0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C64E180();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C64E150();
  v0[25] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_20C63F378;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v5, v7);
}

uint64_t sub_20C63F378()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 168);
    v5 = *(v2 + 176);

    return MEMORY[0x2822009F8](sub_20C63F48C, v4, v5);
  }

  return result;
}

uint64_t sub_20C63F48C()
{
  v1 = v0[12];
  v0[27] = v1;
  if (v1)
  {
    sub_20C640E2C();
    v2 = v1;
    sub_20C64D0D0();
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    v0[28] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7CFC40, &unk_20C6583C0);
    *v3 = v0;
    v3[1] = sub_20C63F5D8;
    v5 = v0[18];

    return MEMORY[0x282159B08](v5, v4);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20C63F5D8()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  sub_20C640D18(v2, type metadata accessor for BubbleTipAction);
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_20C63F730, v4, v3);
}

uint64_t sub_20C63F730()
{
  v1 = sub_20C64E150();
  *(v0 + 200) = v1;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_20C63F378;
  v3 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 96, v1, v3);
}

uint64_t sub_20C63F814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C63F884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for BubbleTipAction(0);
  v3[6] = swift_task_alloc();
  sub_20C64E160();
  v3[7] = sub_20C64E150();
  v5 = sub_20C64E130();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x2822009F8](sub_20C63F950, v5, v4);
}

uint64_t sub_20C63F950()
{
  v1 = v0[6];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[10] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7CFC40, &unk_20C6583C0);
  *v3 = v0;
  v3[1] = sub_20C63FA24;
  v5 = v0[6];

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_20C63FA24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  sub_20C640D18(v2, type metadata accessor for BubbleTipAction);
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_20C63FB7C, v4, v3);
}

uint64_t sub_20C63FB7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C63FBE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C62B4BC;

  return sub_20C63F884(a1, v5, v4);
}

uint64_t sub_20C63FC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleTipFeature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C63FCFC(uint64_t a1)
{
  v4 = *(type metadata accessor for BubbleTipFeature(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C62B4BC;

  return sub_20C63EE9C(a1, v1 + v5, v7, v8);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = (type metadata accessor for BubbleTipFeature(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_20C64CF70();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_20C63FF24(uint64_t a1)
{
  v4 = *(type metadata accessor for BubbleTipFeature(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C5EE6B4;

  return sub_20C63EB6C(a1, v1 + v5, v7, v8);
}

uint64_t sub_20C64003C(uint64_t a1)
{
  v4 = *(type metadata accessor for BubbleTipFeature(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C62B4BC;

  return sub_20C63EA4C(a1, v1 + v5, v7, v8);
}

uint64_t sub_20C64019C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20C640230()
{
  result = qword_281105F50;
  if (!qword_281105F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105F50);
  }

  return result;
}

uint64_t sub_20C6402F4(uint64_t a1)
{
  result = sub_20C64CF70();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20C640370(uint64_t a1)
{
  sub_20C640460(319, &qword_2811057A0, " uuid ");
  if (v1 <= 0x3F)
  {
    sub_20C640418();
    if (v2 <= 0x3F)
    {
      sub_20C640460(319, &qword_2811057B0, "actionIdentifier uuid ");
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_20C640418()
{
  if (!qword_281106838)
  {
    v0 = sub_20C64CF70();
    if (!v1)
    {
      atomic_store(v0, &qword_281106838);
    }
  }
}

void sub_20C640460(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_20C64CF70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_20C640514(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v3 = sub_20C64CF70();
  v4 = *(v3 - 8);
  v94 = v3;
  v95 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v89 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v92 = &v86 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v86 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v88 = &v86 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v91 = &v86 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v86 - v17;
  MEMORY[0x28223BE20](v16);
  v90 = &v86 - v18;
  v19 = _s16FitnessMarketing14TaskIdentifierOMa_0(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v86 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v86 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v86 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC38, &qword_20C6583B8);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v86 - v33;
  v35 = (&v86 + *(v32 + 56) - v33);
  sub_20C63E424(a1, &v86 - v33, _s16FitnessMarketing14TaskIdentifierOMa_0);
  sub_20C63E424(v93, v35, _s16FitnessMarketing14TaskIdentifierOMa_0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20C63E424(v34, v30, _s16FitnessMarketing14TaskIdentifierOMa_0);
      v38 = *v30;
      v37 = *(v30 + 1);
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270) + 48);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v95 + 8))(&v30[v39], v94);
LABEL_25:

        goto LABEL_26;
      }

      v72 = *v35;
      v71 = v35[1];
      v73 = *(v95 + 32);
      v74 = &v30[v39];
      v75 = v94;
      v73(v90, v74, v94);
      v76 = v35 + v39;
      v77 = v87;
      v73(v87, v76, v75);
      if (v38 == v72 && v37 == v71)
      {
      }

      else
      {
        v79 = sub_20C64E430();

        if ((v79 & 1) == 0)
        {
          v80 = v94;
          v56 = *(v95 + 8);
          v56(v77, v94);
          v57 = v90;
          v58 = v80;
          goto LABEL_34;
        }
      }

      v83 = v90;
      v42 = sub_20C64CF50();
      v66 = v94;
      v84 = *(v95 + 8);
      v84(v77, v94);
      goto LABEL_41;
    }

    sub_20C63E424(v34, v28, _s16FitnessMarketing14TaskIdentifierOMa_0);
    v45 = *v28;
    v44 = *(v28 + 1);
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v95 + 8))(&v28[v46], v94);
      goto LABEL_25;
    }

    v48 = *v35;
    v47 = v35[1];
    v49 = *(v95 + 32);
    v50 = &v28[v46];
    v51 = v94;
    v49(v91, v50, v94);
    v52 = v35 + v46;
    v53 = v88;
    v49(v88, v52, v51);
    if (v45 == v48 && v44 == v47)
    {
    }

    else
    {
      v55 = sub_20C64E430();

      if ((v55 & 1) == 0)
      {
        v56 = *(v95 + 8);
        v56(v53, v51);
        v57 = v91;
        v58 = v51;
LABEL_34:
        v56(v57, v58);
        sub_20C640D18(v34, _s16FitnessMarketing14TaskIdentifierOMa_0);
        goto LABEL_27;
      }
    }

    v81 = v91;
    v42 = sub_20C64CF50();
    v82 = *(v95 + 8);
    v82(v53, v51);
    v82(v81, v51);
LABEL_42:
    sub_20C640D18(v34, _s16FitnessMarketing14TaskIdentifierOMa_0);
    return v42 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_20C63E424(v34, v22, _s16FitnessMarketing14TaskIdentifierOMa_0);
    v60 = *v22;
    v59 = *(v22 + 1);
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC28, &qword_20C658248) + 48);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v95 + 8))(&v22[v61], v94);
      goto LABEL_25;
    }

    v63 = *v35;
    v62 = v35[1];
    v64 = *(v95 + 32);
    v65 = &v22[v61];
    v66 = v94;
    v64(v92, v65, v94);
    v67 = v35 + v61;
    v68 = v89;
    v64(v89, v67, v66);
    if (v60 == v63 && v59 == v62)
    {
    }

    else
    {
      v70 = sub_20C64E430();

      if ((v70 & 1) == 0)
      {
        v56 = *(v95 + 8);
        v56(v68, v66);
        v57 = v92;
        v58 = v66;
        goto LABEL_34;
      }
    }

    v83 = v92;
    v42 = sub_20C64CF50();
    v84 = *(v95 + 8);
    v84(v68, v66);
LABEL_41:
    v84(v83, v66);
    goto LABEL_42;
  }

  sub_20C63E424(v34, v25, _s16FitnessMarketing14TaskIdentifierOMa_0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v41 = v94;
    v40 = v95;
    (*(v95 + 32))(v11, v35, v94);
    v42 = sub_20C64CF50();
    v43 = *(v40 + 8);
    v43(v11, v41);
    v43(v25, v41);
    goto LABEL_42;
  }

  (*(v95 + 8))(v25, v94);
LABEL_26:
  sub_20C5DBFC4(v34, &qword_27C7CFC38, &qword_20C6583B8);
LABEL_27:
  v42 = 0;
  return v42 & 1;
}