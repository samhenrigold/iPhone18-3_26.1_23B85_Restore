id WFUserInterfaceFromViewController(void *a1)
{
  v1 = a1;
  v2 = [v1 viewIfLoaded];
  v3 = WFUserInterfaceFromView(v2, v1);

  return v3;
}

WFConcreteUIKitUserInterface *WFUserInterfaceFromView(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = [[WFConcreteUIKitUserInterface alloc] initWithView:v4 viewController:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double WFConvertEdgeInsetsToRTLIfNeeded(double a1)
{
  v2 = [MEMORY[0x277CFC248] sharedContext];
  [v2 shouldReverseLayoutDirection];

  return a1;
}

void sub_274AD73E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_274AD7448(uint64_t a1)
{
  sub_274AD81E0(319, &qword_2815A3118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v3 <= 0x3F)
  {
    v23 = 0;
    v31 = v2;
    sub_274AD73E0(319, &qword_2815A3108, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v5 <= 0x3F)
    {
      v24 = 0;
      v32 = v4;
      v6 = sub_274BF2994();
      if (v7 <= 0x3F)
      {
        v25 = 0;
        v33 = v6;
        v8 = *(a1 + 16);
        v9 = sub_274BF51A4();
        if (v10 <= 0x3F)
        {
          v26 = 0;
          v34 = v9;
          v11 = *(a1 + 40);
          v20 = v8;
          v21 = *(a1 + 24);
          v22 = v11;
          v12 = type metadata accessor for TopHitCollectionView.Layout(319, &v20);
          if (v13 <= 0x3F)
          {
            v27 = 0;
            v35 = v12;
            v14 = sub_274AD8430(319, &qword_2815A2F30, 0x277D79F98);
            if (v15 <= 0x3F)
            {
              v28 = 0;
              v36 = v14;
              sub_274AD73E0(319, &qword_2815A3910, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
              if (v17 <= 0x3F)
              {
                v29 = 0;
                v37 = v16;
                v18 = sub_274AD8470();
                if (v19 <= 0x3F)
                {
                  v30 = 0;
                  v38 = v18;
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

uint64_t sub_274AD766C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t onMainThreadInlineOrSync(closure:)(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_274B0F2B4();
  v5 = sub_274BF5504();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_274B32730;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_274B4296C;
  v8[3] = &block_descriptor_3;
  v7 = _Block_copy(v8);

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return sub_274BF4F04();
}

uint64_t OUTLINED_FUNCTION_0_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CDF7D8];

  return sub_274AFA930(a1, a2, a3, v4);
}

id OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return [v2 (v1 + 411)];
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  return sub_274BF4544();
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1)
{

  return sub_274BF2DF4();
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_20()
{
  *(v2 - 224) = *(v2 - 228);
  *(v2 - 223) = v1;
  *(v2 - 216) = v0;
  return v2 - 224;
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_27(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_0_29(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_274BC19D4(a1);
}

uint64_t OUTLINED_FUNCTION_0_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_274B066B4(va, &a9, v12, v13);
}

uint64_t OUTLINED_FUNCTION_0_36(uint64_t a1)
{

  return sub_274BF5C24();
}

id OUTLINED_FUNCTION_46_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_15_3()
{
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{

  return sub_274B4E058(&STACK[0x310], &a58);
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1)
{

  return sub_274BF4774();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_2()
{
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_274AD81C4(v5, v6);
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_12(unint64_t *a1)
{

  return sub_274B8451C(a1, v1, v2, sub_274B08ED8);
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t a1)
{

  return sub_274BF2D64();
}

double OUTLINED_FUNCTION_5_21()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

void OUTLINED_FUNCTION_5_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = *(v22 - 112);

  sub_274B2CC88(v21, v20, v19, v24, v18, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_274AD81C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_274AD81E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_67();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_274AD8240(uint64_t a1)
{
  sub_274AD81E0(319, &qword_2815A3110, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_274AD81E0(319, &qword_2815A3118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_274AD73E0(319, &qword_2815A2F60, MEMORY[0x277CE0AE0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_274AD8430(319, &unk_2815A2E80, 0x277D79FB0);
        if (v4 <= 0x3F)
        {
          sub_274AD81E0(319, &qword_2815A2F40, MEMORY[0x277D7BE40], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_274BF2934();
            if (v6 <= 0x3F)
            {
              sub_274AD8470();
              if (v7 <= 0x3F)
              {
                sub_274AD84B8(319);
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

uint64_t sub_274AD8430(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_274AD8470()
{
  result = qword_2815A2E78;
  if (!qword_2815A2E78)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2815A2E78);
  }

  return result;
}

void sub_274AD84B8(uint64_t a1)
{
  if (!qword_2815A2E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B570, qword_274BFE0F0);
    v1 = sub_274BF5724();
    if (!v2)
    {
      atomic_store(v1, &qword_2815A2E70);
    }
  }
}

unint64_t sub_274AD8550()
{
  result = qword_2815A37C8[0];
  if (!qword_2815A37C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815A37C8);
  }

  return result;
}

void sub_274AD85E8(uint64_t a1)
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_64();
  sub_274BF57D4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_8();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_274BF4964();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  sub_274BF4B14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B550, &qword_274BFDF20);
  OUTLINED_FUNCTION_32_1();
  sub_274AD766C(v1, &qword_28098B550, &qword_274BFDF20);
  OUTLINED_FUNCTION_52();
  sub_274BF31C4();
  sub_274BF3A74();
  OUTLINED_FUNCTION_75_0();
  sub_274BF46B4();
  sub_274BF33D4();
  sub_274BF33D4();
  OUTLINED_FUNCTION_59();
  sub_274BF33D4();
  OUTLINED_FUNCTION_52();
  sub_274BF33D4();
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B538, &qword_274BFDF08);
  OUTLINED_FUNCTION_64();
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B548, &qword_274BFDF18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B540, &qword_274BFDF10);
  OUTLINED_FUNCTION_64();
  sub_274BF33D4();
  OUTLINED_FUNCTION_31_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_0();
  sub_274AD766C(v2, &qword_28098B550, &qword_274BFDF20);
  OUTLINED_FUNCTION_29_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_34_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_81();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_0();
  sub_274AD766C(v3, &qword_28098B538, &qword_274BFDF08);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_25_0();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_20_0();
  sub_274AD766C(v4, &qword_28098B540, &qword_274BFDF10);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_0();
  swift_getOpaqueTypeMetadata2();
  sub_274BF51A4();
  OUTLINED_FUNCTION_27_0();
  swift_getWitnessTable();
  sub_274BF4964();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_1();
  sub_274BF2EA4();
  OUTLINED_FUNCTION_75_0();
  sub_274BF33D4();
  OUTLINED_FUNCTION_64();
  sub_274BF33D4();
  OUTLINED_FUNCTION_52();
  sub_274BF33D4();
  OUTLINED_FUNCTION_59();
  sub_274BF33D4();
  OUTLINED_FUNCTION_65();
  sub_274BF33D4();
  OUTLINED_FUNCTION_24_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_57();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_1();
  sub_274BF3434();
  OUTLINED_FUNCTION_19_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_4_2();
  sub_274BF3A74();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55();
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1)
{

  return sub_274BF5A74();
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_274BF2BC4();
}

uint64_t sub_274AD8D30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_2();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return a2;
}

uint64_t sub_274AD8D8C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B798, &qword_274BFE7B0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7A0, &qword_274BFE7B8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  sub_274AD90D8();
  v17 = *(a1 + *(type metadata accessor for TopHitSymbolIconView(0) + 28));
  v18 = [v17 color];
  v19 = sub_274BF4594();
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7A8, &qword_274BFE7C0) + 36)] = v19;
  [v17 blendMode];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7B0, &qword_274BFE7C8);
  sub_274BF55E4();
  sub_274BF4A94();
  sub_274BF30D4();
  v20 = &v16[*(v11 + 44)];
  v21 = v34;
  *v20 = v33;
  *(v20 + 1) = v21;
  *(v20 + 2) = v35;
  v22 = *a1;
  v23 = [v22 symbolName];
  sub_274BF4F44();

  sub_274BF3F24();
  sub_274BF28E4();
  v24 = [v22 symbolColor];
  v25 = sub_274BF4594();
  KeyPath = swift_getKeyPath();
  v27 = &v9[*(v4 + 44)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_274B32834(v16, v13, &qword_28098B7A0, &qword_274BFE7B8);
  sub_274B32834(v9, v6, &qword_28098B798, &qword_274BFE7B0);
  v28 = v32;
  sub_274B32834(v13, v32, &qword_28098B7A0, &qword_274BFE7B8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7B8, &qword_274BFE7D0);
  sub_274B32834(v6, v28 + *(v29 + 48), &qword_28098B798, &qword_274BFE7B0);
  sub_274AFA708(v9, &qword_28098B798, &qword_274BFE7B0);
  sub_274AFA708(v16, &qword_28098B7A0, &qword_274BFE7B8);
  sub_274AFA708(v6, &qword_28098B798, &qword_274BFE7B0);
  return sub_274AFA708(v13, &qword_28098B7A0, &qword_274BFE7B8);
}

uint64_t sub_274AD90D8()
{
  v1 = sub_274BF3484();
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7C0, &qword_274BFE7D8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  if (*(v0 + *(type metadata accessor for TopHitSymbolIconView(0) + 24)) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_274AD938C();
    sub_274AD9EF0(&qword_2815A3028, MEMORY[0x277CDFC08]);
    return sub_274BF3A64();
  }

  else
  {
    sub_274AE0A70();
    v9 = v8;
    v10 = *(v1 + 20);
    v11 = *MEMORY[0x277CE0118];
    v12 = sub_274BF38C4();
    (*(*(v12 - 8) + 104))(&v3[v10], v11, v12);
    *v3 = v9;
    *(v3 + 1) = v9;
    v13 = MEMORY[0x277CDFC08];
    sub_274AE0874(v3, v6, MEMORY[0x277CDFC08]);
    swift_storeEnumTagMultiPayload();
    sub_274AD938C();
    sub_274AD9EF0(&qword_2815A3028, MEMORY[0x277CDFC08]);
    sub_274BF3A64();
    return sub_274AE2EFC(v3, v13);
  }
}

uint64_t sub_274AD9340@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_274BF4A94();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B790, &qword_274BFE7A8);
  return sub_274AD8D8C(v2, a2 + *(v5 + 44));
}

unint64_t sub_274AD938C()
{
  result = qword_2815A2F58;
  if (!qword_2815A2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2F58);
  }

  return result;
}

uint64_t sub_274AD93E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void TopHitView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_58();
  v22 = v21;
  v123 = v23;
  v122 = sub_274BF3CC4();
  OUTLINED_FUNCTION_1();
  v121 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_54(v27 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B518, &qword_274BFDEC0);
  v29 = *(v22 + 16);
  v30 = sub_274AD9D10();
  v31 = *(v22 + 24);
  v117 = v29;
  v119 = v30;
  v116 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v97 = v28;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_2();
  v33 = OpaqueTypeMetadata2;
  sub_274BF47F4();
  v34 = OUTLINED_FUNCTION_35_0();
  v139 = v34;
  v140 = sub_274ADA8B4();
  OUTLINED_FUNCTION_22();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_76();
  v109 = v33;
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B528, &qword_274BFDED0);
  OUTLINED_FUNCTION_16_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_76();
  v112 = sub_274BF4B54();
  v111 = OUTLINED_FUNCTION_40();
  v35 = sub_274BF48A4();
  OUTLINED_FUNCTION_1();
  v115 = v36;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_54(v38);
  v105 = v35;
  v39 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v114 = v40;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_54(v42);
  v102 = OUTLINED_FUNCTION_39_0();
  v135 = v102;
  v136 = MEMORY[0x277CDF678];
  v118 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v137 = v39;
  v138 = WitnessTable;
  v107 = MEMORY[0x277CDEAE8];
  v106 = swift_getOpaqueTypeMetadata2();
  v110 = *(v106 - 8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_54(v44);
  sub_274BF3DB4();
  v45 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v113 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_15_2();
  v101 = v48 - v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_54(&v96 - v51);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_71();
  v108 = *(v33 - 8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_54(v54);
  v99 = v22;
  v55 = v20;
  v56 = *(v20 + *(v22 + 44));
  v57 = *(v20 + *(v22 + 48));
  v58 = *(v22 + 60);
  v59 = type metadata accessor for TopHitIconView(0);
  v60 = v59[7];
  sub_274BF2934();
  OUTLINED_FUNCTION_2();
  (*(v61 + 16))(v34 + v60, v20 + v58);
  *v34 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  *(v34 + v59[5]) = v56;
  *(v34 + v59[6]) = v57;
  v62 = v56;
  v63 = sub_274BF4A94();
  v65 = v64;
  v66 = (v34 + *(v97 + 36));
  v67 = v20;
  v68 = v117;
  v69 = v116;
  sub_274ADC9C0(v67, v117, v116, v66, 20.0, 56.0);
  v70 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B520, &qword_274BFDEC8) + 36));
  *v70 = v63;
  v70[1] = v65;
  v128 = v68;
  v129 = v69;
  v130 = v55;
  v71 = v98;
  sub_274BF41F4();
  sub_274AFA708(v34, &qword_28098B518, &qword_274BFDEC0);
  v124 = v68;
  v125 = v69;
  v126 = v55;
  v127 = v71;
  sub_274BF38F4();
  sub_274BF4894();
  sub_274BF4A94();
  v72 = v104;
  sub_274BF43E4();
  OUTLINED_FUNCTION_63();
  v73 = OUTLINED_FUNCTION_24();
  v74(v73);
  v75 = v120;
  sub_274BF3CB4();
  v76 = v100;
  v77 = WitnessTable;
  sub_274BF4354();
  OUTLINED_FUNCTION_63();
  v78(v75, v122);
  OUTLINED_FUNCTION_63();
  v79(v72, v39);
  v80 = (v55 + *(v99 + 56));
  v82 = *v80;
  v81 = v80[1];
  v137 = v82;
  v138 = v81;
  v133 = v39;
  v134 = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_274ADDF6C();
  v84 = v101;
  v85 = v106;
  sub_274BF42F4();
  OUTLINED_FUNCTION_63();
  v86(v76, v85);
  OUTLINED_FUNCTION_33_0();
  v89 = sub_274AD9EF0(v87, v88);
  v131 = OpaqueTypeConformance2;
  v132 = v89;
  v90 = swift_getWitnessTable();
  sub_274ADB48C(v84, v45, v90);
  v91 = *(v113 + 8);
  v91(v84, v45);
  v92 = OUTLINED_FUNCTION_81();
  sub_274ADB48C(v92, v93, v90);
  v94 = OUTLINED_FUNCTION_81();
  (v91)(v94);
  OUTLINED_FUNCTION_63();
  v95(v71, v109);
  OUTLINED_FUNCTION_55();
}

unint64_t sub_274AD9D10()
{
  result = qword_2815A30D8;
  if (!qword_2815A30D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B518, &qword_274BFDEC0);
    sub_274AD9EF0(&qword_2815A3868, type metadata accessor for TopHitIconView);
    sub_274AD766C(&qword_2815A3010, &qword_28098B520, &qword_274BFDEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_35_1(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{

  return sub_274B33594(0, 254, a3, a4);
}

void OUTLINED_FUNCTION_27_3(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  *(v1 - 376) = v2 + 16;
  *(v1 - 384) = v2 + 8;
}

uint64_t OUTLINED_FUNCTION_96()
{

  return swift_allocObject();
}

uint64_t sub_274AD9EF0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_46();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_2_3@<Q0>(int a1@<W8>)
{
  result = *(v2 - 128);
  v4 = *(v2 - 112);
  *(v2 - 176) = result;
  *(v2 - 160) = v4;
  *(v2 - 144) = v1 | a1;
  return result;
}

__n128 OUTLINED_FUNCTION_2_6()
{
  result = *(v1 - 128);
  v0[8] = result;
  v0[9].n128_u64[0] = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_274BF4EB4();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_274BF2DF4();
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t a1)
{

  return sub_274BF48B4();
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return sub_274BF2D64();
}

uint64_t OUTLINED_FUNCTION_2_28(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_29()
{
}

uint64_t OUTLINED_FUNCTION_2_32(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_274BF5C24();
}

uint64_t OUTLINED_FUNCTION_2_34(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_274BF2D54();
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_9(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CDD6E0];

  return sub_274AFA930(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_3_15()
{

  return [v0 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_3_21(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_23()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_3_29()
{

  sub_274BCDB68(1701667182, 0xE400000000000000, (v0 - 112));
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_274BF3A64();
}

id OUTLINED_FUNCTION_14_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_14_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{

  sub_274BC934C(&a13, v14, &a14);
}

uint64_t OUTLINED_FUNCTION_14_11(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_274AFA930(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_274BF4774();
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_274BA5CC0(a1, va, v3, v4);
}

unint64_t OUTLINED_FUNCTION_11_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_274BD7E6C();
}

id OUTLINED_FUNCTION_18_4(uint64_t a1)
{

  return [v2 (v1 + 411)];
}

unint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_274B08760();
}

unint64_t sub_274ADA8B4()
{
  result = qword_2815A34B8[0];
  if (!qword_2815A34B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815A34B8);
  }

  return result;
}

id OUTLINED_FUNCTION_64_0()
{

  return [v0 (v1 + 821)];
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_274AD8D30(v0, v0 + 40, v1, v2);
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{

  return sub_274BF5A74();
}

uint64_t OUTLINED_FUNCTION_31()
{
}

id OUTLINED_FUNCTION_31_2()
{

  return [v0 (v1 + 46)];
}

id OUTLINED_FUNCTION_26_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_26_5()
{

  return [v0 (v1 + 1016)];
}

void OUTLINED_FUNCTION_30()
{

  type metadata accessor for WFGlyphCharacter(0);
}

uint64_t OUTLINED_FUNCTION_30_1()
{
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{

  return sub_274BF5724();
}

void *OUTLINED_FUNCTION_30_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_274BBC18C(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_28_1()
{
}

id OUTLINED_FUNCTION_23_3()
{
  v3 = *v1;

  return [v3 (v0 + 1784)];
}

id OUTLINED_FUNCTION_22_2(uint64_t a1)
{

  return [v1 (v2 + 3218)];
}

__n128 TopHitCollectionView.init(style:items:layout:backgroundGradient:containerWidth:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v28 = *a3;
  v18 = a3[1].n128_u64[0];
  v19 = a3[1].n128_u8[8];
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  swift_storeEnumTagMultiPayload();
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v20 = type metadata accessor for TopHitCollectionView(0, &v31);
  v21 = &a9[v20[13]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v20[14];
  sub_274BF2994();
  OUTLINED_FUNCTION_2();
  (*(v23 + 32))(&a9[v22], a1);
  *&a9[v20[15]] = a2;
  v24 = &a9[v20[16]];
  result = v28;
  *v24 = v28;
  *(v24 + 2) = v18;
  v24[24] = v19;
  *&a9[v20[17]] = a4;
  v26 = &a9[v20[18]];
  *v26 = a5;
  v26[8] = a6 & 1;
  v27 = &a9[v20[19]];
  *v27 = a7;
  *(v27 + 1) = a8;
  return result;
}

uint64_t sub_274ADAEE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274ADAF38();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274ADAF38()
{
  sub_274ADAF74();
  sub_274BF37A4();
  return v1;
}

unint64_t sub_274ADAF74()
{
  result = qword_2815A34B0;
  if (!qword_2815A34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A34B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_67_0()
{
}

uint64_t sub_274ADAFF4(uint64_t a1, uint64_t a2, double a3)
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  result = sub_274ADC698(a2, a3);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  v3 = result * a1;
  if ((result * a1) >> 64 == (result * a1) >> 63)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_274ADB050(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = sub_274BF4A14();
      v5 = sub_274BF5174();
      *(v5 + 16) = v2;
      v6 = *(v4 - 8);
      v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v8 = *(v6 + 16);
      while (1)
      {
        --v2;
        v8(v7, v3, v4);
        if (!v2)
        {
          break;
        }

        v7 += *(v6 + 72);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_274BF4A14();
    OUTLINED_FUNCTION_0_2();
    (*(v9 + 8))(v3);
    return v5;
  }

  return result;
}

void sub_274ADB178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_58();
  v24 = v23;
  v74 = v25;
  v75 = v26;
  v72 = v27;
  v73 = v28;
  v30 = v29;
  v63[1] = v29;
  v79 = v31;
  v80 = v23;
  v76 = a22;
  v77 = a21;
  v78 = a23;
  v81 = v32;
  v82 = v33;
  v34 = v32;
  v64 = v33;
  v83 = a21;
  v71 = type metadata accessor for TopHitCollectionView(0, &v80);
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13_0();
  v66 = v38;
  v69 = sub_274BF57D4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_8();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = v69;
  v81 = AssociatedTypeWitness;
  v82 = v34;
  v83 = WitnessTable;
  v40 = v34;
  v84 = AssociatedConformanceWitness;
  v41 = sub_274BF4964();
  OUTLINED_FUNCTION_1();
  v70 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_15_2();
  v46 = v44 - v45;
  v48 = MEMORY[0x28223BE20](v47);
  v65 = v63 - v49;
  v80 = v30;
  v81 = v72;
  v82 = v73;
  v83 = v74;
  v50 = v66;
  v51 = v71;
  (*(v36 + 16))(v66, v75, v71, v48);
  v52 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v53 = swift_allocObject();
  *(v53 + 2) = v24;
  *(v53 + 3) = v40;
  v54 = v77;
  *(v53 + 4) = v64;
  *(v53 + 5) = v54;
  (*(v36 + 32))(&v53[v52], v50, v51);
  swift_unknownObjectRetain();
  sub_274BF4954();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_53_0();
  sub_274ADB48C(v55, v56, v57);
  v58 = *(v70 + 8);
  v58(v46, v41);
  OUTLINED_FUNCTION_53_0();
  sub_274ADB48C(v59, v60, v61);
  v62 = OUTLINED_FUNCTION_57();
  (v58)(v62);
  OUTLINED_FUNCTION_55();
}

unint64_t OUTLINED_FUNCTION_61(uint64_t a1, uint64_t a2)
{

  return sub_274BDA978(a2);
}

id OUTLINED_FUNCTION_61_0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1)
{

  return sub_274BF3264();
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x2821FF290](v9, &a9);
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_274BF34A4();
}

id OUTLINED_FUNCTION_10_10(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 112) = a7;
  *(v7 - 104) = a6;
  *(v7 - 160) = a3;
  *(v7 - 152) = a2;
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_1_5(unint64_t *a1)
{

  return sub_274AFA930(a1, v1, v2, &unk_274C00380);
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_1_14()
{

  return [v1 (v0 + 1314)];
}

__n128 OUTLINED_FUNCTION_1_17(uint64_t a1)
{
  v2 = *(v1 - 96);
  *(a1 + 16) = *(v1 - 112);
  *(a1 + 32) = v2;
  result = *(v1 - 87);
  *(a1 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return sub_274BF4F44();
}

void sub_274ADB9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_10_3();
  sub_274BF3A54();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_78();
  v20(v19);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_72();
}

__n128 OUTLINED_FUNCTION_12_0@<Q0>(__int16 a1@<W8>)
{
  result = *(v2 - 128);
  v4 = *(v2 - 112);
  *(v2 - 176) = result;
  *(v2 - 160) = v4;
  *(v2 - 142) = BYTE2(v1);
  *(v2 - 144) = a1;
  *(v2 - 141) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_274BF4F04();
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return sub_274BF2D34();
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1, uint64_t a2)
{

  return sub_274BF43F4();
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_274BF3CD4();
}

unint64_t OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_274BDA830(a2, a3);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_274BF4F04();
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1)
{

  return sub_274ADB48C(v2, v1, a1);
}

uint64_t sub_274ADBBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  HIDWORD(v91) = a6;
  v92 = a5;
  v100 = a4;
  v108 = a3;
  v109 = a2;
  v99 = a1;
  v107 = a9;
  v110 = a11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B550, &qword_274BFDF20);
  v120 = sub_274BF57D4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = a8;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_274BF4964();
  sub_274AD766C(&qword_2815A30F8, &qword_28098B550, &qword_274BFDF20);
  v14 = sub_274BF31C4();
  v95 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v93 = &v83 - v17;
  v18 = sub_274BF3B54();
  MEMORY[0x28223BE20](v18 - 8);
  v86 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_getWitnessTable();
  v90 = v13;
  v106 = v20;
  v21 = sub_274BF4B14();
  v89 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v88 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = &v83 - v24;
  MEMORY[0x28223BE20](v25);
  v87 = &v83 - v26;
  v105 = sub_274BF3A74();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v83 - v27;
  v120 = a7;
  AssociatedTypeWitness = a8;
  v102 = a8;
  v101 = a10;
  v122 = a10;
  v28 = v99;
  WitnessTable = v110;
  v29 = type metadata accessor for TopHitCollectionView(0, &v120);
  v119 = *(v28 + *(v29 + 60));
  v30 = v100;
  v31 = *&v108;
  if (v100)
  {

    sub_274BF2974();
    v33 = v32;
  }

  else
  {
    v33 = *&v108;
  }

  sub_274ADAFF4(v109, v29, v33);
  sub_274BF51A4();
  swift_getWitnessTable();
  sub_274BF53E4();
  v108 = v120;
  v96 = AssociatedTypeWitness;
  v97 = v122;
  v98 = WitnessTable;
  if (sub_274AE28A0(v29))
  {
    v84 = v14;
    if (v30)
    {
      sub_274BF2974();
    }

    else
    {
      v34 = v31;
    }

    sub_274AE29BC(v29, v34);
    sub_274BF3904();
    v37 = sub_274BF2964();
    MEMORY[0x28223BE20](v37);
    v38 = v102;
    *(&v83 - 10) = a7;
    *(&v83 - 9) = v38;
    v39 = v110;
    *(&v83 - 8) = v101;
    *(&v83 - 7) = v39;
    v40 = v96;
    *(&v83 - 6) = v108;
    *(&v83 - 5) = v40;
    v41 = v98;
    *(&v83 - 4) = v97;
    *(&v83 - 3) = v41;
    v42 = v106;
    sub_274ADC748();
    v82 = v42;
    v43 = v85;
    sub_274BF4B04();
    v44 = swift_getWitnessTable();
    v45 = v87;
    sub_274ADB48C(v43, v21, v44);
    v46 = *(v89 + 8);
    v46(v43, v21);
    v47 = v88;
    sub_274ADB48C(v45, v21, v44);
    v111 = sub_274AD766C(&qword_2815A30F0, &qword_28098B550, &qword_274BFDF20);
    v112 = v42;
    v48 = v84;
    v49 = swift_getWitnessTable();
    v50 = v103;
    sub_274ADB9A0(v47, v21, v48, v44, v49, v51, v52, v53, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
    swift_unknownObjectRelease();
    v46(v47, v21);
    v54 = v45;
    v55 = v21;
  }

  else
  {
    if (v30)
    {
      sub_274BF2974();
      v36 = v35;
    }

    else
    {
      v36 = *&v31;
    }

    v56 = sub_274BF2964();
    v58 = v57;
    MEMORY[0x28223BE20](v56);
    v59 = v102;
    *(&v83 - 6) = a7;
    *(&v83 - 5) = v59;
    v60 = v101;
    v61 = v110;
    *(&v83 - 4) = v101;
    *(&v83 - 3) = v61;
    v62 = sub_274B2CD3C(sub_274B322F8, (&v83 - 8), v92, BYTE4(v91) & 1);
    v120 = v36;
    AssociatedTypeWitness = v58;
    v122 = v109;
    WitnessTable = v62;
    LOBYTE(AssociatedConformanceWitness) = v63 & 1;
    v64 = sub_274B2EFBC(&v120, a7, v59, v60, v61);
    v65 = MEMORY[0x28223BE20](v64);
    *(&v83 - 10) = a7;
    *(&v83 - 9) = v59;
    *(&v83 - 8) = v60;
    *(&v83 - 7) = v61;
    v66 = v96;
    *(&v83 - 6) = v108;
    *(&v83 - 5) = v66;
    v67 = v98;
    *(&v83 - 4) = v97;
    *(&v83 - 3) = v67;
    v82 = v28;
    v68 = v94;
    v69(sub_274B32314, v65);

    v70 = sub_274AD766C(&qword_2815A30F0, &qword_28098B550, &qword_274BFDF20);
    v42 = v106;
    v117 = v70;
    v118 = v106;
    v71 = swift_getWitnessTable();
    v72 = v93;
    sub_274ADB48C(v68, v14, v71);
    v46 = *(v95 + 8);
    v46(v68, v14);
    sub_274ADB48C(v72, v14, v71);
    v73 = swift_getWitnessTable();
    v50 = v103;
    sub_274B2CC88(v68, v21, v14, v73, v71, v74, v75, v76, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
    swift_unknownObjectRelease();
    v46(v68, v14);
    v54 = v72;
    v55 = v14;
  }

  v46(v54, v55);
  v77 = swift_getWitnessTable();
  v115 = sub_274AD766C(&qword_2815A30F0, &qword_28098B550, &qword_274BFDF20);
  v116 = v42;
  v78 = swift_getWitnessTable();
  v113 = v77;
  v114 = v78;
  v79 = v105;
  v80 = swift_getWitnessTable();
  sub_274ADB48C(v50, v79, v80);
  return (*(v104 + 8))(v50, v79);
}

uint64_t sub_274ADC698(uint64_t a1, double a2)
{
  v3 = v2 + *(a1 + 72);
  if (*(v3 + 8))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = *v3;
  sub_274BF2954();
  v8 = v6 - (v7 + v7) + -68.0;
  if (v8 <= 68.0)
  {
    return 1;
  }

  for (i = 1; ; ++i)
  {
    result = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v8 + -68.0 - a2;
    if (v8 <= 68.0)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_274ADC748()
{
  OUTLINED_FUNCTION_68();
  sub_274BF3B54();
  sub_274AD9EF0(&qword_2815A2FC8, MEMORY[0x277CE0428]);
  return sub_274BF5DB4();
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{

  return sub_274BF5A74();
}

uint64_t sub_274ADC850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  type metadata accessor for TopHitView(0, a2, a3, a4);
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B740, &qword_274BFE668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B748, &qword_274BFE670);
  sub_274AD766C(&qword_2815A2F38, &qword_28098B740, &qword_274BFE668);
  sub_274ADCA40();
  sub_274AD9EF0(&qword_2815A3918, MEMORY[0x277D7BE40]);
  return sub_274BF4954();
}

uint64_t sub_274ADC9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = sub_274BF4A94();
  a4[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B738, &qword_274BFE660);
  return sub_274ADC850(a1, a2, a3, v13, a5, a6);
}

unint64_t sub_274ADCA40()
{
  result = qword_2815A30D0;
  if (!qword_2815A30D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B748, &qword_274BFE670);
    sub_274AD9EF0(qword_2815A3140, MEMORY[0x277D7D6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30D0);
  }

  return result;
}

uint64_t sub_274ADCAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v15 = type metadata accessor for TopHitView(0, v12, v13, v14);
  (*(a1 + *(v15 + 64)))();
  sub_274ADB48C(v8, a2, a3);
  v16 = *(v6 + 8);
  v16(v8, a2);
  sub_274ADB48C(v11, a2, a3);
  return (v16)(v11, a2);
}

uint64_t sub_274ADCC50@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a2;
  v141 = a1;
  v133 = a5;
  v7 = type metadata accessor for TopHitView(0, a3, a4, a4);
  v125 = *(v7 - 8);
  v123 = *(v125 + 64);
  MEMORY[0x28223BE20](v7);
  v124 = &v110 - v8;
  v132 = sub_274BF38E4();
  v128 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v126 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6D0, &qword_274BFE4D8);
  MEMORY[0x28223BE20](v118);
  v11 = &v110 - v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6D8, &qword_274BFE4E0);
  MEMORY[0x28223BE20](v140);
  v122 = &v110 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B528, &qword_274BFDED0);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v127 = &v110 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B518, &qword_274BFDEC0);
  v17 = sub_274AD9D10();
  *&v154 = v16;
  *(&v154 + 1) = a3;
  *&v155 = v17;
  *(&v155 + 1) = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v154 = v16;
  *(&v154 + 1) = a3;
  v135 = a3;
  *&v155 = v17;
  *(&v155 + 1) = a4;
  v136 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_274BF47F4();
  v115 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v113 = &v110 - v20;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_274ADA8B4();
  v139 = v19;
  *&v154 = v19;
  *(&v154 + 1) = &type metadata for TopHitButtonStyle;
  v138 = WitnessTable;
  *&v155 = WitnessTable;
  *(&v155 + 1) = v22;
  v137 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v116 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v114 = &v110 - v27;
  v28 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v110 - v33;
  v121 = sub_274BF3A74();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v143 = &v110 - v37;
  v134 = v7;
  v38 = (v141 + *(v7 + 68));
  v39 = *v38;
  if (*v38)
  {
    v112 = v38[1];
    v40 = v112;
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = v40;
    MEMORY[0x28223BE20](v41);
    v42 = v136;
    *(&v110 - 4) = v135;
    *(&v110 - 3) = v42;
    *(&v110 - 2) = v117;
    sub_274ADDED0(v39, v40);

    v43 = v113;
    v111 = OpaqueTypeMetadata2;
    sub_274BF47C4();
    v44 = v134;
    v45 = v141;
    v46 = sub_274ADDEEC(*(v141 + *(v134 + 44)));
    v47 = *(v45 + *(v44 + 72));
    LOBYTE(v154) = v46;
    BYTE1(v154) = v47;
    v48 = v139;
    v49 = v138;
    v50 = v137;
    sub_274BF41E4();
    (*(v115 + 8))(v43, v48);
    *&v154 = v48;
    *(&v154 + 1) = &type metadata for TopHitButtonStyle;
    *&v155 = v49;
    *(&v155 + 1) = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = v114;
    sub_274ADB48C(v25, v23, v51);
    v53 = *(v116 + 8);
    v53(v25, v23);
    sub_274ADB48C(v52, v23, v51);
    sub_274ADB9A0(v25, v23, v111, v51, OpaqueTypeConformance2, v54, v55, v56, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
    sub_274AD81C4(v39, v112);
    v53(v25, v23);
    v53(v52, v23);
  }

  else
  {
    v57 = OpaqueTypeConformance2;
    sub_274ADB48C(v117, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    sub_274ADB48C(v34, OpaqueTypeMetadata2, v57);
    *&v154 = v139;
    *(&v154 + 1) = &type metadata for TopHitButtonStyle;
    *&v155 = v138;
    *(&v155 + 1) = v137;
    v58 = swift_getOpaqueTypeConformance2();
    sub_274B2CC88(v31, v23, OpaqueTypeMetadata2, v58, v57, v59, v60, v61, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
    v62 = *(v28 + 8);
    v62(v31, OpaqueTypeMetadata2);
    v62(v34, OpaqueTypeMetadata2);
  }

  v63 = v141;
  v64 = v134;
  v65 = (v141 + *(v134 + 56));
  v66 = v65[1];
  *&v154 = *v65;
  *(&v154 + 1) = v66;
  sub_274ADDF6C();

  v67 = sub_274BF4104();
  v69 = v68;
  v71 = v70;
  v117 = v72;
  sub_274BF4A94();
  sub_274BF30D4();
  v73 = v71 & 1;
  LOBYTE(v146) = v71 & 1;
  KeyPath = swift_getKeyPath();
  v75 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6E0, &qword_274BFE518) + 36)];
  v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6E8, &qword_274BFE520) + 28);
  v77 = *MEMORY[0x277CE0B28];
  v78 = sub_274BF4084();
  (*(*(v78 - 8) + 104))(v75 + v76, v77, v78);
  *v75 = swift_getKeyPath();
  *v11 = v67;
  *(v11 + 1) = v69;
  v11[16] = v73;
  *(v11 + 17) = *v157;
  *(v11 + 5) = *&v157[3];
  *(v11 + 3) = v117;
  v79 = v155;
  *(v11 + 2) = v154;
  *(v11 + 3) = v79;
  *(v11 + 4) = v156;
  *(v11 + 10) = KeyPath;
  v11[88] = 1;
  v80 = swift_getKeyPath();
  v81 = &v11[*(v118 + 36)];
  *v81 = v80;
  v81[8] = 1;
  sub_274ADDFC0();
  v82 = v122;
  sub_274BF42E4();
  sub_274AFA708(v11, &qword_28098B6D0, &qword_274BFE4D8);
  v83 = sub_274ADE078(v64);
  v84 = swift_getKeyPath();
  v85 = (v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B710, &qword_274BFE5D8) + 36));
  *v85 = v84;
  v85[1] = v83;
  v86 = swift_getKeyPath();
  v87 = v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B718, &qword_274BFE610) + 36);
  *v87 = v86;
  *(v87 + 8) = 2;
  *(v87 + 16) = 0;
  v88 = sub_274ADE0D0(v64);
  v89 = swift_getKeyPath();
  v90 = (v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B720, &qword_274BFE648) + 36));
  *v90 = v89;
  v90[1] = v88;
  sub_274ADE3A8(v82 + *(v140 + 36));
  v91 = v126;
  sub_274B2CE88();
  v92 = v125;
  v93 = v124;
  (*(v125 + 16))(v124, v63, v64);
  v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v95 = swift_allocObject();
  v96 = v136;
  *(v95 + 16) = v135;
  *(v95 + 24) = v96;
  (*(v92 + 32))(v95 + v94, v93, v64);
  v141 = sub_274B326A4();
  v97 = sub_274AD9EF0(&qword_2815A3000, MEMORY[0x277CE02A8]);
  v98 = v127;
  v99 = v132;
  sub_274BF44A4();

  (*(v128 + 8))(v91, v99);
  sub_274ADDE2C(v82);
  v100 = v120;
  v101 = v119;
  v102 = v121;
  (*(v120 + 16))(v119, v143, v121);
  v153[0] = v101;
  v103 = v130;
  v104 = v129;
  v105 = v131;
  (*(v130 + 16))(v129, v98, v131);
  v153[1] = v104;
  v152[0] = v102;
  v152[1] = v105;
  v146 = v139;
  v147 = &type metadata for TopHitButtonStyle;
  v148 = v138;
  v149 = v137;
  v144 = swift_getOpaqueTypeConformance2();
  v145 = OpaqueTypeConformance2;
  v106 = swift_getWitnessTable();
  v149 = v97;
  v150 = v106;
  v146 = v140;
  v147 = v99;
  v148 = v141;
  v151 = swift_getOpaqueTypeConformance2();
  sub_274ADE60C(v153, 2, v152);
  v107 = *(v103 + 8);
  v107(v98, v105);
  v108 = *(v100 + 8);
  v108(v143, v102);
  v107(v104, v105);
  return (v108)(v101, v102);
}

uint64_t sub_274ADDBBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3584();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274ADDC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  type metadata accessor for TopHitView(0, *(v7 + 16), *(v7 + 24), v8);
  OUTLINED_FUNCTION_1_1();
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = v7 + v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B510, &qword_274BFDE80);
  OUTLINED_FUNCTION_67();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF38E4();
    OUTLINED_FUNCTION_0_2();
    (*(v12 + 8))(v7 + v10);
  }

  else
  {
  }

  v13 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v14 + 8))(v11 + v13);
  }

  else
  {
  }

  v15 = v6[15];
  sub_274BF2934();
  OUTLINED_FUNCTION_0_2();
  (*(v16 + 8))(v11 + v15);

  if (*(v11 + v6[17]))
  {
  }

  OUTLINED_FUNCTION_72();

  return swift_deallocObject();
}

uint64_t sub_274ADDE2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6D8, &qword_274BFE4E0);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274ADDE8C()
{

  return swift_deallocObject();
}

uint64_t sub_274ADDED0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_274ADDEEC(uint64_t a1)
{
  objc_opt_self();
  result = 0;
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2 || ([v2 hasClearBackground] & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_274ADDF6C()
{
  result = qword_2815A2F48;
  if (!qword_2815A2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2F48);
  }

  return result;
}

unint64_t sub_274ADDFC0()
{
  result = qword_2815A3050;
  if (!qword_2815A3050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6D0, &qword_274BFE4D8);
    sub_274AE4A40();
    sub_274AD766C(&qword_2815A2F80, &qword_28098B708, &qword_274BFE5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3050);
  }

  return result;
}

uint64_t sub_274ADE078(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B730, &qword_274BFE658);
  sub_274BF4784();
  return v2;
}

uint64_t sub_274ADE0D0(uint64_t a1)
{
  v15 = sub_274BF2F04();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_274BF28B4();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274BF28A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2914();
  sub_274B2D01C();
  sub_274BF2874();
  (*(v1 + 8))(v3, v15);
  v11 = (*(v4 + 8))(v6, v14);
  v12 = MEMORY[0x277C62120](v11);
  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t result, uint64_t a2)
{
  *(v2 - 176) = result;
  *(v2 - 168) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_3(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_274ADE3A8@<X0>(uint64_t a2@<X8>)
{
  v16 = a2;
  v15 = sub_274BF2F04();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_274BF28B4();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF28A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2914();
  sub_274B2D01C();
  sub_274BF2874();
  (*(v2 + 8))(v4, v15);
  (*(v5 + 8))(v7, v14);
  sub_274BF2894();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_274ADE60C(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    OUTLINED_FUNCTION_12_5();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19, v10);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_274BF4B64();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_20_6()
{

  return sub_274BF30D4();
}

uint64_t sub_274ADE878@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v60 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B618, &qword_274BFE418);
  MEMORY[0x28223BE20](v50);
  v4 = &v48 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B620, &qword_274BFE420);
  MEMORY[0x28223BE20](v49);
  v6 = &v48 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B628, &qword_274BFE428);
  MEMORY[0x28223BE20](v48);
  v52 = &v48 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B630, &qword_274BFE430);
  MEMORY[0x28223BE20](v51);
  v54 = &v48 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B638, &qword_274BFE438);
  MEMORY[0x28223BE20](v53);
  v56 = &v48 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B640, &qword_274BFE440);
  MEMORY[0x28223BE20](v59);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v48 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B648, &qword_274BFE448);
  MEMORY[0x28223BE20](v58);
  v14 = &v48 - v13;
  v15 = sub_274BF3BC4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  if ((a1 & 0x100) != 0)
  {
    sub_274BF3BD4();
    (*(v16 + 16))(v14, v21, v15);
    swift_storeEnumTagMultiPayload();
    sub_274AD9EF0(&qword_2815A2FC0, MEMORY[0x277CDE278]);
    sub_274ADEF6C();
    sub_274BF3A64();
    return (*(v16 + 8))(v21, v15);
  }

  else
  {
    sub_274BF3BD4();
    if (sub_274BF3BE4() & a1)
    {
      v22 = -0.15;
    }

    else
    {
      v22 = 0.0;
    }

    (*(v16 + 32))(v4, v18, v15);
    *&v4[*(v50 + 36)] = v22;
    if (sub_274BF3BE4() & a1)
    {
      v23 = 0.75;
    }

    else
    {
      v23 = 1.0;
    }

    sub_274B31858(v4, v6, &qword_28098B618, &qword_274BFE418);
    *&v6[*(v49 + 36)] = v23;
    if (a1 & 1 | ((sub_274BF3BE4() & 1) == 0))
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.65;
    }

    v25 = v52;
    v26 = sub_274B31858(v6, v52, &qword_28098B620, &qword_274BFE420);
    *(v25 + *(v48 + 36)) = v24;
    v27 = 0.4;
    v28 = MEMORY[0x277C64360](v26, 0.4, 1.0, 0.0);
    v29 = sub_274BF3BE4();
    v30 = v25;
    v31 = v54;
    sub_274B31858(v30, v54, &qword_28098B628, &qword_274BFE428);
    v32 = v31 + *(v51 + 36);
    *v32 = v28;
    *(v32 + 8) = v29 & 1;
    if (sub_274BF3BE4())
    {
      v33 = 0.91;
    }

    else
    {
      v33 = 1.0;
    }

    sub_274BF4B84();
    v35 = v34;
    v37 = v36;
    v38 = v56;
    sub_274B31858(v31, v56, &qword_28098B630, &qword_274BFE430);
    v39 = v38 + *(v53 + 36);
    *v39 = v33;
    *(v39 + 8) = v33;
    *(v39 + 16) = v35;
    *(v39 + 24) = v37;
    if (sub_274BF3BE4())
    {
      v27 = 0.35;
    }

    if (sub_274BF3BE4())
    {
      v40.n128_f64[0] = 0.5;
    }

    else
    {
      v40.n128_f64[0] = 1.0;
    }

    v41 = MEMORY[0x277C64360](v27, v40, 0.0);
    v42 = sub_274BF3BE4();
    v43 = v38;
    v44 = v55;
    sub_274B31858(v43, v55, &qword_28098B638, &qword_274BFE438);
    v45 = v44 + *(v59 + 36);
    *v45 = v41;
    *(v45 + 8) = v42 & 1;
    v46 = v57;
    sub_274B31858(v44, v57, &qword_28098B640, &qword_274BFE440);
    sub_274B32834(v46, v14, &qword_28098B640, &qword_274BFE440);
    swift_storeEnumTagMultiPayload();
    sub_274AD9EF0(&qword_2815A2FC0, MEMORY[0x277CDE278]);
    sub_274ADEF6C();
    sub_274BF3A64();
    return sub_274AFA708(v46, &qword_28098B640, &qword_274BFE440);
  }
}

uint64_t sub_274ADEF50@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_274ADE878(v2 | *v1, a1);
}

unint64_t sub_274ADEF6C()
{
  result = qword_2815A3030;
  if (!qword_2815A3030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B640, &qword_274BFE440);
    sub_274B311E4();
    sub_274AD766C(&qword_2815A3008, &qword_28098B650, &unk_274BFE450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3030);
  }

  return result;
}

uint64_t sub_274ADF028@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_274BF29C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF28D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  if (*(v2 + *(type metadata accessor for TopHitIconView(0) + 24)))
  {
    v15 = MEMORY[0x277D7D5C0];
  }

  else
  {
    *v11 = 0x3FC0A3D70A3D70A4;
    v15 = MEMORY[0x277D7D5B0];
  }

  (*(v9 + 104))(v11, *v15, v8);
  (*(v9 + 32))(v14, v11, v8);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B580, &qword_274BFE318) + 48);
  *v7 = 0x404C000000000000;
  (*(v9 + 16))(&v7[v16], v14, v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D7D698], v4);
  sub_274ADF358(v2, v7, v14, a1);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B588, &qword_274BFE320) + 36));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B590, &qword_274BFE328);
  sub_274BF34B4();
  sub_274AE0A70();
  v20 = v19;
  v21 = *(sub_274BF3484() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_274BF38C4();
  (*(*(v23 - 8) + 104))(&v17[v21], v22, v23);
  *v17 = v20;
  *(v17 + 1) = v20;
  v17[*(v18 + 36)] = 0;
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_274ADF358@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v134 = a3;
  v164 = a2;
  v162 = a4;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B598, &qword_274BFE330);
  MEMORY[0x28223BE20](v137);
  v138 = &v128 - v5;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5A0, &qword_274BFE338);
  MEMORY[0x28223BE20](v161);
  v139 = (&v128 - v6);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5A8, &qword_274BFE340);
  MEMORY[0x28223BE20](v136);
  v135 = (&v128 - v7);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5B0, &qword_274BFE348);
  MEMORY[0x28223BE20](v149);
  v141 = &v128 - v8;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5B8, &qword_274BFE350);
  MEMORY[0x28223BE20](v142);
  v144 = &v128 - v9;
  v143 = type metadata accessor for TopHitSymbolIconView(0);
  MEMORY[0x28223BE20](v143);
  v140 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_274BF2F04();
  v153 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_274BF29B4();
  v150 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5C0, &qword_274BFE358);
  MEMORY[0x28223BE20](v158);
  v145 = (&v128 - v13);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5C8, &qword_274BFE360);
  MEMORY[0x28223BE20](v163);
  v160 = &v128 - v14;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5D0, &qword_274BFE368);
  MEMORY[0x28223BE20](v155);
  v156 = &v128 - v15;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5D8, &qword_274BFE370);
  MEMORY[0x28223BE20](v159);
  v157 = (&v128 - v16);
  v154 = sub_274BF29E4();
  v17 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v19 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_274BF29C4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_274BF29F4();
  v152 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TopHitIconView(0);
  v28 = a1;
  v29 = *(a1 + *(v27 + 20));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    (*(v21 + 16))(v23, v164, v20);
    (*(v17 + 104))(v19, *MEMORY[0x277D7D6D0], v154);
    v30 = v29;
    sub_274BF2A04();
    v31 = v152;
    (*(v152 + 16))(v156, v26, v24);
    swift_storeEnumTagMultiPayload();
    sub_274AD9EF0(qword_2815A3140, MEMORY[0x277D7D6E0]);
    sub_274AE2F54();
    v32 = v157;
    sub_274BF3A64();
    sub_274B32834(v32, v160, &qword_28098B5D8, &qword_274BFE370);
    swift_storeEnumTagMultiPayload();
    sub_274AE09B4();
    sub_274AE3010();
    sub_274BF3A64();
    sub_274AFA708(v32, &qword_28098B5D8, &qword_274BFE370);
    return (*(v31 + 8))(v26, v24);
  }

  v133 = v27;
  v128 = v17;
  v129 = v23;
  v132 = v21;
  v152 = v20;
  v130 = v19;
  v131 = v24;
  v34 = v164;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 hasClearBackground];
    v38 = v28;
    v40 = v150;
    v39 = v151;
    v41 = v153;
    v42 = v148;
    v43 = v133;
    if (v37 & 1) != 0 || (sub_274BF2924())
    {
      v154 = *(v43 + 28);
      v44 = sub_274BF2904();
      v45 = v146;
      sub_274BF28F4();
      v141 = MEMORY[0x277CDF3E0];
      sub_274B309E8(&qword_28098A7C0, &unk_274BFF8F0, MEMORY[0x277CDF3E0], v46, v47, v48, v49, v50, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
      v51 = sub_274BF29A4();
      v52 = *(v41 + 8);
      v153 = v41 + 8;
      v139 = v52;
      (v52)(v42, v39);
      v53 = v40[1];
      v54 = v42;
      v55 = v147;
      v53(v45, v147);
      v150 = [v36 iconWithSymbolColor:v44 background:v51];

      v56 = v143;
      v57 = v140;
      (*(v132 + 16))(&v140[*(v143 + 20)], v164, v152);
      v58 = *(v38 + *(v133 + 24));
      sub_274BF28F4();
      sub_274B309E8(&qword_28098A7C0, &unk_274BFF8F0, v141, v59, v60, v61, v62, v63, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
      v64 = sub_274BF29A4();
      (v139)(v54, v151);
      v53(v45, v55);
      *v57 = v150;
      *(v57 + *(v56 + 24)) = v58;
      *(v57 + *(v56 + 28)) = v64;
      sub_274AE0874(v57, v144, type metadata accessor for TopHitSymbolIconView);
      swift_storeEnumTagMultiPayload();
      sub_274AD9EF0(qword_2815A33A8, type metadata accessor for TopHitSymbolIconView);
      sub_274AE08CC();
      v65 = v145;
      sub_274BF3A64();
      sub_274AE2EFC(v57, type metadata accessor for TopHitSymbolIconView);
    }

    else
    {
      (*(v132 + 16))(v129, v34, v152);
      (*(v128 + 104))(v130, *MEMORY[0x277D7D6D0], v154);
      v113 = v29;
      v114 = v141;
      sub_274BF2A04();
      KeyPath = swift_getKeyPath();
      v116 = (v114 + *(v149 + 36));
      v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5E0, &qword_274BFE3A8) + 28);
      v118 = *MEMORY[0x277D7D6F0];
      v119 = sub_274BF35E4();
      (*(*(v119 - 8) + 104))(v116 + v117, v118, v119);
      *v116 = KeyPath;
      sub_274B32834(v114, v144, &qword_28098B5B0, &qword_274BFE348);
      swift_storeEnumTagMultiPayload();
      sub_274AD9EF0(qword_2815A33A8, type metadata accessor for TopHitSymbolIconView);
      sub_274AE08CC();
      v65 = v145;
      sub_274BF3A64();
      sub_274AFA708(v114, &qword_28098B5B0, &qword_274BFE348);
    }

    v110 = v157;
    v108 = &qword_28098B5C0;
    v109 = &qword_274BFE358;
    sub_274B32834(v65, v156, &qword_28098B5C0, &qword_274BFE358);
    swift_storeEnumTagMultiPayload();
    sub_274AD9EF0(qword_2815A3140, MEMORY[0x277D7D6E0]);
    sub_274AE2F54();
    sub_274BF3A64();
    v111 = &qword_28098B5D8;
    v112 = &qword_274BFE370;
    sub_274B32834(v110, v160, &qword_28098B5D8, &qword_274BFE370);
    swift_storeEnumTagMultiPayload();
    sub_274AE09B4();
    sub_274AE3010();
  }

  else
  {
    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();
    v67 = v141;
    v68 = v34;
    v70 = v150;
    v69 = v151;
    v71 = v153;
    v72 = v148;
    if (!v66)
    {
      (*(v132 + 16))(v129, v68, v152);
      (*(v128 + 104))(v130, *MEMORY[0x277D7D6D0], v154);
      v121 = v29;
      sub_274BF2A04();
      v122 = swift_getKeyPath();
      v123 = (v67 + *(v149 + 36));
      v124 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5E0, &qword_274BFE3A8) + 28);
      v125 = *MEMORY[0x277D7D6F0];
      v126 = sub_274BF35E4();
      (*(*(v126 - 8) + 104))(v123 + v124, v125, v126);
      *v123 = v122;
      v108 = &qword_28098B5B0;
      v109 = &qword_274BFE348;
      sub_274B32834(v67, v138, &qword_28098B5B0, &qword_274BFE348);
      swift_storeEnumTagMultiPayload();
      sub_274AE52DC();
      sub_274AE08CC();
      v127 = v139;
      sub_274BF3A64();
      sub_274B32834(v127, v160, &qword_28098B5A0, &qword_274BFE338);
      swift_storeEnumTagMultiPayload();
      sub_274AE09B4();
      sub_274AE3010();
      sub_274BF3A64();
      sub_274AFA708(v127, &qword_28098B5A0, &qword_274BFE338);
      v120 = v67;
      return sub_274AFA708(v120, v108, v109);
    }

    v158 = *(v133 + 28);
    v73 = v146;
    sub_274BF28F4();
    v157 = MEMORY[0x277CDF3E0];
    sub_274B309E8(&qword_28098A7C0, &unk_274BFF8F0, MEMORY[0x277CDF3E0], v74, v75, v76, v77, v78, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
    v79 = sub_274BF29A4();
    v80 = *(v71 + 8);
    v80(v72, v69);
    v164 = v29;
    v81 = v70[1];
    v150 = v70 + 1;
    v82 = v147;
    v81(v73, v147);
    v83 = [v79 color];
    v84 = v69;

    v85 = sub_274BF4594();
    sub_274BF28F4();
    sub_274B309E8(&qword_28098A7C0, &unk_274BFF8F0, v157, v86, v87, v88, v89, v90, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
    v91 = sub_274BF29A4();
    v80(v72, v84);
    v81(v73, v82);
    [v91 blendMode];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5F0, &qword_274BFE3B8);
    v65 = v135;
    sub_274BF55E4();
    *v65 = v85;
    sub_274BF4A94();
    sub_274BF30D4();
    v92 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B5E8, &qword_274BFE3B0) + 36));
    v93 = v166;
    *v92 = v165;
    v92[1] = v93;
    v92[2] = v167;
    v94 = sub_274BF4A94();
    v96 = v95;
    v97 = v65 + *(v136 + 36);
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B580, &qword_274BFE318) + 48);
    v99 = v129;
    *v129 = 0x403D000000000000;
    v100 = sub_274BF28D4();
    (*(*(v100 - 8) + 16))(&v99[v98], v134, v100);
    (*(v132 + 104))(v99, *MEMORY[0x277D7D698], v152);
    (*(v128 + 104))(v130, *MEMORY[0x277D7D6D0], v154);
    v101 = v164;
    sub_274BF2A04();
    v102 = swift_getKeyPath();
    v103 = &v97[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B608, &qword_274BFE408) + 36)];
    v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B610, &qword_274BFE410) + 28);
    v105 = *MEMORY[0x277D7D6A8];
    v106 = sub_274BF29D4();
    (*(*(v106 - 8) + 104))(v103 + v104, v105, v106);
    *v103 = v102;
    v107 = &v97[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B600, &qword_274BFE3D0) + 36)];
    *v107 = v94;
    v107[1] = v96;
    v108 = &qword_28098B5A8;
    v109 = &qword_274BFE340;
    sub_274B32834(v65, v138, &qword_28098B5A8, &qword_274BFE340);
    swift_storeEnumTagMultiPayload();
    sub_274AE52DC();
    sub_274AE08CC();
    v110 = v139;
    sub_274BF3A64();
    v111 = &qword_28098B5A0;
    v112 = &qword_274BFE338;
    sub_274B32834(v110, v160, &qword_28098B5A0, &qword_274BFE338);
    swift_storeEnumTagMultiPayload();
    sub_274AE09B4();
    sub_274AE3010();
  }

  sub_274BF3A64();
  sub_274AFA708(v110, v111, v112);
  v120 = v65;
  return sub_274AFA708(v120, v108, v109);
}

uint64_t sub_274AE0874(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

unint64_t sub_274AE08CC()
{
  result = qword_2815A30C8;
  if (!qword_2815A30C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5B0, &qword_274BFE348);
    sub_274AD9EF0(qword_2815A3140, MEMORY[0x277D7D6E0]);
    sub_274AD766C(&qword_2815A2FA8, &qword_28098B5E0, &qword_274BFE3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30C8);
  }

  return result;
}

unint64_t sub_274AE09B4()
{
  result = qword_2815A2FE8;
  if (!qword_2815A2FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5D8, &qword_274BFE370);
    sub_274AD9EF0(qword_2815A3140, MEMORY[0x277D7D6E0]);
    sub_274AE2F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2FE8);
  }

  return result;
}

uint64_t sub_274AE0A70()
{
  v1 = v0;
  v2 = sub_274BF28D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF29C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  if ((*(v7 + 88))(v10, v6) != *MEMORY[0x277D7D698])
  {
    return (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 96))(v10, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B580, &qword_274BFE318);
  (*(v3 + 32))(v5, &v10[*(v11 + 48)], v2);
  sub_274BF28C4();
  return (*(v3 + 8))(v5, v2);
}

__n128 OUTLINED_FUNCTION_4_3()
{
  result = *(v0 - 128);
  v2 = *(v0 - 112);
  *(v0 - 176) = result;
  *(v0 - 160) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2)
{

  return sub_274BF5644();
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_4_14()
{

  return [v0 (v2 + 2865)];
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return swift_task_alloc();
}

double OUTLINED_FUNCTION_4_24(uint64_t a1)
{

  return MutableStateObject.wrappedValue.setter(a1, v4, v3, v5 & 1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t a1, uint64_t a2)
{

  return sub_274BDFDF0(1, a1, a2);
}

id OUTLINED_FUNCTION_29_1()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return sub_274BF2DB4();
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 2, v1);
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t a1, uint64_t a2)
{

  return sub_274B33594(a1, a2, v3, v2);
}

id OUTLINED_FUNCTION_25_3()
{

  return [v0 (v2 + 3941)];
}

uint64_t TopHitCollectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a2;
  sub_274BF3CA4();
  OUTLINED_FUNCTION_1();
  v190 = v4;
  v191 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v189 = v6 - v5;
  OUTLINED_FUNCTION_70();
  v7 = sub_274BF3AC4();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_4();
  v188 = (v9 - v8);
  v10 = a1;
  v11 = *(a1 + 16);
  OUTLINED_FUNCTION_64();
  v12 = sub_274BF51A4();
  v235 = *(v10 + 24);
  v226 = v10;
  OUTLINED_FUNCTION_52();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_0();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v238 = v12;
  OpaqueTypeConformance2 = AssociatedTypeWitness;
  v240 = v235.i64[0];
  v241 = WitnessTable;
  v242 = AssociatedConformanceWitness;
  sub_274BF4964();
  v233 = *(v10 + 40);
  v274 = v233;
  OUTLINED_FUNCTION_0_12();
  v219 = v14;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_274BF2EA4();
  sub_274BF33D4();
  OUTLINED_FUNCTION_65();
  sub_274BF33D4();
  OUTLINED_FUNCTION_59();
  sub_274BF33D4();
  v227 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B538, &qword_274BFDF08);
  sub_274BF33D4();
  v228 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B540, &qword_274BFDF10);
  OUTLINED_FUNCTION_75_0();
  v15 = sub_274BF33D4();
  OUTLINED_FUNCTION_24_1();
  v272 = swift_getWitnessTable();
  v273 = MEMORY[0x277CDFC60];
  OUTLINED_FUNCTION_34_0();
  v270 = swift_getWitnessTable();
  v271 = MEMORY[0x277CDF918];
  v16 = MEMORY[0x277CDF918];
  v268 = swift_getWitnessTable();
  v269 = v16;
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_23_0();
  v230 = sub_274AD766C(v18, &qword_28098B538, &qword_274BFDF08);
  v266 = v17;
  v267 = v230;
  v19 = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  v229 = sub_274AD766C(v20, &qword_28098B540, &qword_274BFDF10);
  v264 = v19;
  v265 = v229;
  OUTLINED_FUNCTION_24();
  v187 = v15;
  v181 = swift_getWitnessTable();
  v21 = sub_274BF3434();
  OUTLINED_FUNCTION_1();
  v184 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_13_0();
  v183 = v24;
  OUTLINED_FUNCTION_19_2();
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_18_2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v180 = v27;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13_0();
  v178 = v25;
  v179 = v29;
  v186 = v21;
  v221 = OpaqueTypeMetadata2;
  v238 = OpaqueTypeMetadata2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v234 = OpaqueTypeConformance2;
  v232 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v185 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15_2();
  v182 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  v214 = &v177 - v35;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B548, &qword_274BFDF18);
  OUTLINED_FUNCTION_1();
  v213 = v36;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13_0();
  v212 = v38;
  OUTLINED_FUNCTION_70();
  sub_274BF2994();
  OUTLINED_FUNCTION_1();
  v210 = v40;
  v211 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  v209 = v42 - v41;
  v220 = v11;
  v43 = sub_274BF57D4();
  OUTLINED_FUNCTION_6_8();
  v44 = swift_getWitnessTable();
  v238 = v43;
  OpaqueTypeConformance2 = AssociatedTypeWitness;
  v240 = v235.i64[0];
  v241 = v44;
  v242 = AssociatedConformanceWitness;
  sub_274BF4964();
  v263 = v233;
  AssociatedTypeWitness = swift_getWitnessTable();
  OUTLINED_FUNCTION_75_0();
  sub_274BF4B14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B550, &qword_274BFDF20);
  OUTLINED_FUNCTION_32_1();
  sub_274AD766C(v45, &qword_28098B550, &qword_274BFDF20);
  OUTLINED_FUNCTION_65();
  sub_274BF31C4();
  OUTLINED_FUNCTION_52();
  v217 = sub_274BF3A74();
  v218 = sub_274BF46B4();
  v219 = sub_274BF33D4();
  v46 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v197 = v47;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_13_0();
  v196 = v49;
  OUTLINED_FUNCTION_70();
  v50 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v202 = v51;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_13_0();
  v199 = v53;
  OUTLINED_FUNCTION_70();
  v54 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v201 = v55;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13_0();
  v198 = v57;
  v58 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v206 = v59;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_13_0();
  v205 = v61;
  OUTLINED_FUNCTION_70();
  v62 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v208 = v63;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_13_0();
  AssociatedConformanceWitness = v65;
  OUTLINED_FUNCTION_65();
  v66 = sub_274BF33D4();
  OUTLINED_FUNCTION_31_0();
  v67 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_0();
  v261 = sub_274AD766C(v68, &qword_28098B550, &qword_274BFDF20);
  v262 = AssociatedTypeWitness;
  OUTLINED_FUNCTION_29_0();
  v69 = swift_getWitnessTable();
  v259 = v67;
  v260 = v69;
  OUTLINED_FUNCTION_3_0();
  v258 = swift_getWitnessTable();
  OUTLINED_FUNCTION_28_0();
  v256 = swift_getWitnessTable();
  v70 = MEMORY[0x277CDF918];
  v257 = MEMORY[0x277CDF918];
  v254 = swift_getWitnessTable();
  v255 = v70;
  v200 = v46;
  v192 = swift_getWitnessTable();
  v252 = v192;
  v253 = v70;
  v204 = v50;
  v193 = swift_getWitnessTable();
  v250 = v193;
  v251 = v70;
  v203 = v54;
  v194 = swift_getWitnessTable();
  v248 = v194;
  v249 = MEMORY[0x277CDF900];
  v207 = v58;
  v195 = swift_getWitnessTable();
  v246 = v195;
  v247 = v230;
  v71 = swift_getWitnessTable();
  v238 = MEMORY[0x277CE1350];
  OpaqueTypeConformance2 = MEMORY[0x277CE1340];
  OUTLINED_FUNCTION_25_0();
  v72 = swift_getOpaqueTypeConformance2();
  v244 = v71;
  v245 = v229;
  v73 = swift_getWitnessTable();
  v219 = v62;
  v238 = v62;
  OpaqueTypeConformance2 = v231;
  v227 = v66;
  v240 = v66;
  v229 = v73;
  v230 = v71;
  v241 = v71;
  AssociatedTypeWitness = v72;
  v242 = v72;
  v243 = v73;
  OUTLINED_FUNCTION_21_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v75 = v74;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_15_2();
  v79 = v77 - v78;
  MEMORY[0x28223BE20](v80);
  v82 = &v177 - v81;
  MEMORY[0x28223BE20](v83);
  v85 = &v177 - v84;
  v216 = v86;
  sub_274BF3A74();
  OUTLINED_FUNCTION_1();
  v217 = v88;
  v218 = v87;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_13_0();
  v228 = v90;
  v91 = v225;
  v92 = v225 + *(v226 + 16);
  v93 = *v92;
  v94 = *(v92 + 8);
  v95 = *(v92 + 16);
  v96 = *(v92 + 24);
  if (v96 < 0)
  {
    v150 = sub_274BF3AB4();
    MEMORY[0x28223BE20](v150);
    *(&v177 - 10) = v220;
    *(&v177 - 9) = v235;
    *(&v177 - 7) = v233;
    *(&v177 - 6) = v94;
    *(&v177 - 5) = v91;
    *(&v177 - 4) = v95;
    *(&v177 - 24) = v96 & 1;
    v176 = v93;
    v151 = v183;
    sub_274BF3424();
    v152 = v189;
    sub_274BF3C94();
    v153 = v186;
    sub_274B2EEE8();
    v154 = v179;
    sub_274BF42D4();
    (*(v190 + 8))(v152, v191);
    (*(v184 + 8))(v151, v153);
    sub_274BF3E34();
    v155 = v182;
    v146 = v221;
    v156 = v234;
    sub_274BF4364();
    (*(v180 + 8))(v154, v146);
    v238 = v146;
    OpaqueTypeConformance2 = v156;
    v157 = OUTLINED_FUNCTION_8_7();
    v158 = v214;
    v159 = v232;
    sub_274ADB48C(v155, v232, v157);
    v235.i64[0] = *(v185 + 8);
    v160 = OUTLINED_FUNCTION_66();
    v161(v160);
    sub_274ADB48C(v158, v159, v157);
    v128 = v219;
    v130 = v231;
    v238 = v219;
    OpaqueTypeConformance2 = v231;
    v149 = v227;
    v240 = v227;
    v241 = v230;
    v147 = AssociatedTypeWitness;
    v242 = AssociatedTypeWitness;
    v243 = v229;
    v162 = OUTLINED_FUNCTION_7_9();
    sub_274B2CC88(v155, v216, v159, v162, v157, v163, v164, v165, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
    v166 = OUTLINED_FUNCTION_66();
    v167 = v235.i64[0];
    (v235.i64[0])(v166);
    v141 = v230;
    v167(v214, v159);
    v148 = v229;
  }

  else
  {
    v214 = v75;
    v97 = v196;
    v98 = v93;
    v99 = v226;
    sub_274AE2370(v98, v94, v95 & 1, 0, 1, v226, v196);
    LODWORD(v187) = sub_274BF3E34();
    v189 = *(v99 + 14);
    LODWORD(v190) = *MEMORY[0x277D7D648];
    v191 = v82;
    v100 = v209;
    v101 = v210;
    v215 = v85;
    v188 = *(v210 + 104);
    v102 = v211;
    v188(v209);
    sub_274BF2984();
    v103 = *(v101 + 8);
    v104 = OUTLINED_FUNCTION_66();
    v103(v104);
    v210 = v79;
    v105 = v200;
    sub_274BF4464();
    (*(v197 + 8))(v97, v105);
    sub_274BF3E54();
    (v188)(v100, v190, v102);
    v106 = v225;
    sub_274BF2984();
    v107 = OUTLINED_FUNCTION_66();
    v103(v107);
    v108 = v198;
    sub_274BF4464();
    v109 = OUTLINED_FUNCTION_24();
    v110(v109);
    sub_274AE2BD8(v226);
    v111 = v205;
    v112 = v203;
    sub_274BF4444();
    v113 = (*(v201 + 8))(v108, v112);
    v226 = &v177;
    v114 = MEMORY[0x28223BE20](v113);
    v115 = v220;
    v114.i64[0] = v220;
    *&v116 = vdupq_laneq_s64(v235, 1).u64[0];
    v117 = v233;
    *(&v116 + 1) = v233;
    *(&v177 - 3) = vzip1q_s64(v114, v235);
    *(&v177 - 2) = v116;
    v176 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B558, &qword_274BFDF28);
    v118 = sub_274BF3484();
    OUTLINED_FUNCTION_26_0();
    v121 = sub_274AD9EF0(v119, v120);
    v238 = v118;
    OpaqueTypeConformance2 = v121;
    swift_getOpaqueTypeConformance2();
    sub_274BF4A94();
    v122 = v207;
    sub_274BF4194();
    (*(v206 + 8))(v111, v122);
    sub_274BF4A64();
    v123 = v212;
    v124 = sub_274BF38D4();
    v226 = &v177;
    MEMORY[0x28223BE20](v124);
    *(&v177 - 6) = v115;
    *(&v177 - 5) = v235;
    *(&v177 - 3) = v117;
    v125 = swift_checkMetadataState();
    v176 = v229;
    v126 = v229;
    v127 = v191;
    v128 = v219;
    v129 = v230;
    v130 = v231;
    v131 = AssociatedConformanceWitness;
    v132 = AssociatedTypeWitness;
    sub_274BF44B4();
    (*(v213 + 8))(v123, v130);
    (*(v208 + 8))(v131, v128);
    v238 = v128;
    OpaqueTypeConformance2 = v130;
    v240 = v125;
    v241 = v129;
    v242 = v132;
    v243 = v126;
    v133 = OUTLINED_FUNCTION_7_9();
    v135 = v215;
    v134 = v216;
    sub_274ADB48C(v127, v216, v133);
    v136 = *(v214 + 1);
    v136(v127, v134);
    v137 = v210;
    sub_274ADB48C(v135, v134, v133);
    v138 = v221;
    v238 = v221;
    OpaqueTypeConformance2 = v234;
    v139 = OUTLINED_FUNCTION_8_7();
    v140 = v133;
    v141 = v230;
    sub_274ADB9A0(v137, v134, v232, v140, v139, v142, v143, v144, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);
    v136(v137, v134);
    v145 = v134;
    v146 = v138;
    v136(v215, v145);
    v147 = AssociatedTypeWitness;
    v148 = v229;
    v149 = v227;
  }

  v238 = v128;
  OpaqueTypeConformance2 = v130;
  v240 = v149;
  v241 = v141;
  v242 = v147;
  v243 = v148;
  v168 = OUTLINED_FUNCTION_7_9();
  v238 = v146;
  OpaqueTypeConformance2 = v234;
  v169 = OUTLINED_FUNCTION_8_7();
  v236 = v168;
  v237 = v169;
  OUTLINED_FUNCTION_3_0();
  swift_getWitnessTable();
  v170 = OUTLINED_FUNCTION_56();
  sub_274ADB48C(v170, v171, v172);
  v173 = OUTLINED_FUNCTION_56();
  return v174(v173);
}

uint64_t sub_274AE2370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a5;
  v34 = a4;
  v31 = a3;
  v30 = a2;
  v29 = a1;
  v37 = a7;
  v8 = a6[2];
  v9 = sub_274BF57D4();
  v10 = a6[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = a6[3];
  v36 = a6;
  v54 = v9;
  v55 = AssociatedTypeWitness;
  v56 = v26;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_274BF4964();
  v12 = a6[5];
  v53 = v12;
  v27 = swift_getWitnessTable();
  sub_274BF4B14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B550, &qword_274BFDF20);
  sub_274AD766C(&qword_2815A30F8, &qword_28098B550, &qword_274BFDF20);
  sub_274BF31C4();
  sub_274BF3A74();
  v13 = sub_274BF46B4();
  v28 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = sub_274BF33D4();
  v33 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  *&v19 = v8;
  *(&v19 + 1) = v26;
  *&v20 = v10;
  *(&v20 + 1) = v12;
  v39 = v20;
  v38 = v19;
  v40 = v32;
  v41 = v29;
  v42 = v30;
  v43 = v31 & 1;
  v44 = v34;
  v45 = v35 & 1;
  v21 = swift_getWitnessTable();
  v51 = sub_274AD766C(&qword_2815A30F0, &qword_28098B550, &qword_274BFDF20);
  v52 = v27;
  v22 = swift_getWitnessTable();
  v49 = v21;
  v50 = v22;
  v23 = swift_getWitnessTable();
  sub_274BF46A4();
  sub_274BF3E34();
  sub_274BF2954();
  v48 = v23;
  v24 = swift_getWitnessTable();
  sub_274BF4464();
  (*(v28 + 8))(v15, v13);
  sub_274BF3EA4();
  sub_274BF2944();
  v46 = v24;
  v47 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_274BF4464();
  return (*(v33 + 8))(v18, v16);
}

uint64_t sub_274AE28A0(uint64_t a1)
{
  v3 = sub_274BF2994();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(a1 + 64) + 24) < 0)
  {
    v8 = 0;
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D7D640], v3, v5);
    v8 = sub_274BF2984();
    (*(v4 + 8))(v7, v3);
  }

  return v8 & 1;
}

uint64_t sub_274AE29BC(uint64_t a1, double a2)
{
  v4 = sub_274BF4A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_274BF4A14();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_274ADC698(a1, a2);
  result = sub_274BF5194();
  if (result >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = result;
  }

  if ((v13 & 1) != 0 && (v14 = __OFADD__(v13, 1), ++v13, v14))
  {
    __break(1u);
  }

  else
  {
    *v7 = 0x4051000000000000;
    (*(v5 + 104))(v7, *MEMORY[0x277CDF0F0], v4);
    sub_274BF4A84();
    sub_274BF4A24();
    return sub_274ADB050(v10, v13);
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_51(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 448) = v3;
  result[2].n128_u64[0] = *(v2 + 432);
  return result;
}

uint64_t sub_274AE2BD8(uint64_t a1)
{
  v3 = sub_274BF3774();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_274BF54A4();
    v9 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274AEF5C0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_274AE2D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B518, &qword_274BFDEC0);
  v13 = a2;
  v14 = sub_274AD9D10();
  v15 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v9 = &v12 - v8;
  v13 = a2;
  v15 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_274ADB48C(a1, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  sub_274ADB48C(v9, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (*(v7 + 8))(v9, OpaqueTypeMetadata2);
}

uint64_t sub_274AE2EFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_274AE2F54()
{
  result = qword_2815A2FF0;
  if (!qword_2815A2FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5C0, &qword_274BFE358);
    sub_274AD9EF0(qword_2815A33A8, type metadata accessor for TopHitSymbolIconView);
    sub_274AE08CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2FF0);
  }

  return result;
}

unint64_t sub_274AE3010()
{
  result = qword_2815A2FE0;
  if (!qword_2815A2FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5A0, &qword_274BFE338);
    sub_274AE52DC();
    sub_274AE08CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2FE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_274BF2BC4();
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_274AE3164@<X0>(double *a2@<X8>)
{
  v3 = sub_274BF2994();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277D7D648], v3, v5);
  v8 = sub_274BF2984();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 22.0;
  }

  v10 = *(sub_274BF3484() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_274BF38C4();
  result = (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  *a2 = v9;
  a2[1] = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

uint64_t OUTLINED_FUNCTION_8_3()
{
}

uint64_t OUTLINED_FUNCTION_8_5(_OWORD *a1)
{
  v3 = v1[1];
  a1[2] = *v1;
  a1[3] = v3;
  a1[4] = v1[2];
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_8(unint64_t *a1)
{
  v4 = MEMORY[0x277D83970];

  return sub_274AFA930(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return sub_274BF2DF4();
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return sub_274B22670(v0 + 184, v0 + 536, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_15()
{
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_274AFA6A8(v3 - 240, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_20(unint64_t *a1)
{
  v4 = MEMORY[0x277CDD938];

  return sub_274AFA930(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_7_5(unint64_t *a1)
{

  return sub_274AFA930(a1, v1, v2, &unk_274C02630);
}

void OUTLINED_FUNCTION_7_6()
{

  JUMPOUT(0x277C64DC0);
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t a1, ...)
{

  return sub_274BF2D74();
}

id OUTLINED_FUNCTION_7_22()
{

  return sub_274B217DC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_23()
{
  v3 = *(v1 - 136);
  v4 = *(v1 - 104);

  return sub_274ADB48C(v3, v0, v4);
}

void sub_274AE3714(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8[0] = v1[2];
  v3 = v8[0];
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  v7 = *(type metadata accessor for TopHitCollectionView(0, v8) - 8);
  sub_274AE37C4(a1, v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6);
}

void sub_274AE37C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_2();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = v31 - v17;
  v31[0] = v19;
  v31[1] = v20;
  v31[2] = v21;
  v31[3] = v22;
  v23 = type metadata accessor for TopHitCollectionView(0, v31);
  (*(v9 + *(v23 + 76)))(v11);
  OUTLINED_FUNCTION_53_0();
  sub_274ADB48C(v24, v25, v26);
  v27 = *(v12 + 8);
  v27(v15, v7);
  OUTLINED_FUNCTION_53_0();
  sub_274ADB48C(v28, v29, v30);
  v27(v18, v7);
  OUTLINED_FUNCTION_72();
}

_BYTE *storeEnumTagSinglePayload for TopHitIconMask(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x274AE39E8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t TopHitView.init(icon:iconMask:badges:name:colorScheme:menu:tapHandler:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *a2;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B510, &qword_274BFDE80);
  OUTLINED_FUNCTION_46();
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for TopHitView(0, a12, a13, v20);
  v22 = v21[9];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  swift_storeEnumTagMultiPayload();
  v23 = (a9 + v21[10]);
  v24 = sub_274AE3C84();
  *v23 = sub_274AE4288(v24);
  v23[1] = v25;
  *(a9 + v21[11]) = a1;
  if (v19 == 2)
  {
    v26 = a1;
    static TopHitIconMask.default(for:)(&v35);

    LOBYTE(v19) = v35;
  }

  *(a9 + v21[12]) = v19 & 1;
  *(a9 + v21[13]) = a3;
  v27 = (a9 + v21[14]);
  *v27 = a4;
  v27[1] = a5;
  v28 = v21[15];
  sub_274BF2934();
  OUTLINED_FUNCTION_2();
  result = (*(v29 + 32))(a9 + v28, a6);
  v31 = (a9 + v21[16]);
  *v31 = a7;
  v31[1] = a8;
  v32 = (a9 + v21[17]);
  *v32 = a10;
  v32[1] = a11;
  *(a9 + v21[18]) = 1;
  return result;
}

uint64_t sub_274AE3C84()
{
  sub_274AD8430(0, &qword_2815A2EF0, 0x277D74310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B750, &qword_274BFE678);
  inited = swift_initStackObject();
  v1 = MEMORY[0x277D74378];
  *(inited + 16) = xmmword_274BFA880;
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = *MEMORY[0x277D76938];
  type metadata accessor for TextStyle(0);
  *(inited + 40) = v3;
  v4 = *MEMORY[0x277D74380];
  *(inited + 64) = v5;
  *(inited + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B758, &qword_274BFE680);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_274BFA880;
  v7 = *MEMORY[0x277D74430];
  type metadata accessor for TraitKey(0);
  sub_274AD9EF0(&qword_2815A2EE0, type metadata accessor for TraitKey);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v7;
  sub_274BF5914();
  v12 = *MEMORY[0x277D74418];
  type metadata accessor for Weight(0);
  *(v6 + 96) = v13;
  *(v6 + 72) = v12;
  sub_274BF4F44();
  sub_274BF5914();
  *(v6 + 168) = MEMORY[0x277D83B88];
  *(v6 + 144) = 3;
  v14 = sub_274BF4E14();
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B760, &qword_274BFE688);
  *(inited + 80) = v14;
  type metadata accessor for AttributeName(0);
  sub_274AD9EF0(&unk_2815A2EC0, type metadata accessor for AttributeName);
  v15 = sub_274BF4E14();
  v16 = sub_274AE4148(v15);
  v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
  v18 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v19 = [v18 scaledFontForFont_];

  v20 = sub_274BF4004();
  return v20;
}

void sub_274AE3F90(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_274AE40C8(uint64_t a1, uint64_t a2)
{
  sub_274BF4F44();
  sub_274BF5CD4();
  sub_274BF4FF4();
  v2 = sub_274BF5D44();

  return v2;
}

id sub_274AE4148(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for AttributeName(0);
  sub_274AD9EF0(&unk_2815A2EC0, type metadata accessor for AttributeName);
  v2 = sub_274BF4DE4();

  v3 = [v1 initWithFontAttributes_];

  return v3;
}

uint64_t sub_274AE4210(uint64_t a1, uint64_t a2)
{
  v2 = sub_274BF4F44();
  v4 = v3;
  v5 = sub_274BF4F44();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_32(v2, v6, v5);
  }

  return v8 & 1;
}

void static TopHitIconMask.default(for:)(BOOL *a1@<X8>)
{
  objc_opt_self();
  OUTLINED_FUNCTION_46();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_46(), swift_dynamicCastObjCClass()) || (objc_opt_self(), OUTLINED_FUNCTION_46(), swift_dynamicCastObjCClass()))
  {
    v2 = 1;
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_46();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 image];
      v5 = [v4 displayStyle];

      v2 = v5 == 1;
    }

    else
    {
      v2 = 0;
    }
  }

  *a1 = v2;
}

void sub_274AE43B4(uint64_t a1)
{
  sub_274AD81E0(319, &qword_2815A3118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_274AD8430(319, &unk_2815A2E80, 0x277D79FB0);
    if (v2 <= 0x3F)
    {
      sub_274BF2934();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_274AE44EC(ValueMetadata **a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B518, &qword_274BFDEC0);
  sub_274AD9D10();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_2();
  sub_274BF47F4();
  OUTLINED_FUNCTION_35_0();
  sub_274ADA8B4();
  OUTLINED_FUNCTION_22();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_76();
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B528, &qword_274BFDED0);
  OUTLINED_FUNCTION_16_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_76();
  sub_274BF4B54();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16_1();
  sub_274BF48A4();
  sub_274BF33D4();
  OUTLINED_FUNCTION_39_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_274BF3DB4();
  OUTLINED_FUNCTION_4_2();
  sub_274BF33D4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_33_0();
  sub_274AD9EF0(v1, v2);
  return swift_getWitnessTable();
}

uint64_t EnvironmentValues.isLockedByAppProtection.getter()
{
  sub_274AE4740();
  sub_274BF3784();
  return v1;
}

unint64_t sub_274AE4740()
{
  result = qword_2815A3880;
  if (!qword_2815A3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3880);
  }

  return result;
}

unint64_t sub_274AE4798()
{
  result = qword_2815A3888[0];
  if (!qword_2815A3888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815A3888);
  }

  return result;
}

uint64_t sub_274AE4828@<X0>(_BYTE *a1@<X8>)
{
  result = static LockedAppKey.read(from:)();
  *a1 = result & 1;
  return result;
}

unint64_t sub_274AE4854()
{
  result = qword_2815A3870;
  if (!qword_2815A3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3870);
  }

  return result;
}

uint64_t static LockedAppTrait.defaultValue.getter(uint64_t a1)
{
  if (qword_2815A3878 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_27(&qword_2815A3878);
  }

  OUTLINED_FUNCTION_1_25(a1);
  return byte_28098DA59;
}

uint64_t sub_274AE4904@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = static LockedAppTrait.defaultValue.getter(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_274AE4930()
{
  result = swift_beginAccess();
  byte_28098DA59 = byte_28098DA58;
  return result;
}

unint64_t sub_274AE4988()
{
  result = qword_2815A3090;
  if (!qword_2815A3090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6F0, &qword_274BFE588);
    sub_274AE4AF8();
    sub_274AD766C(&qword_2815A2FA0, &qword_28098B700, &qword_274BFEF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3090);
  }

  return result;
}

unint64_t sub_274AE4A40()
{
  result = qword_2815A3070;
  if (!qword_2815A3070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6E0, &qword_274BFE518);
    sub_274AE4988();
    sub_274AD766C(&qword_2815A2F90, &qword_28098B6E8, &qword_274BFE520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3070);
  }

  return result;
}

unint64_t sub_274AE4AF8()
{
  result = qword_2815A30B8;
  if (!qword_2815A30B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6F8, &unk_274BFE590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30B8);
  }

  return result;
}

unint64_t sub_274AE4B7C()
{
  result = qword_2815A3068;
  if (!qword_2815A3068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B720, &qword_274BFE648);
    sub_274AE4C34();
    sub_274AD766C(&qword_2815A2F88, &qword_280989AC8, &qword_274BFE650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3068);
  }

  return result;
}

unint64_t sub_274AE4C34()
{
  result = qword_2815A3088;
  if (!qword_2815A3088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B718, &qword_274BFE610);
    sub_274AE4CEC();
    sub_274AD766C(&qword_2815A2F78, &qword_28098B728, &qword_274C01010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3088);
  }

  return result;
}

unint64_t sub_274AE4CEC()
{
  result = qword_2815A30B0;
  if (!qword_2815A30B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B710, &qword_274BFE5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6D0, &qword_274BFE4D8);
    sub_274ADDFC0();
    swift_getOpaqueTypeConformance2();
    sub_274AD766C(&qword_2815A2F98, &qword_280989D90, &qword_274BFB000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30B0);
  }

  return result;
}

unint64_t sub_274AE4E00()
{
  result = qword_2815A2FD8;
  if (!qword_2815A2FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B788, &qword_274BFE718);
    sub_274AD9EF0(&qword_2815A2FC0, MEMORY[0x277CDE278]);
    sub_274ADEF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2FD8);
  }

  return result;
}

unint64_t sub_274AE4EBC()
{
  result = qword_2815A3058;
  if (!qword_2815A3058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B630, &qword_274BFE430);
    sub_274B31270();
    sub_274AD766C(&qword_2815A3008, &qword_28098B650, &unk_274BFE450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3058);
  }

  return result;
}

unint64_t sub_274AE4F74()
{
  result = qword_2815A3098;
  if (!qword_2815A3098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B620, &qword_274BFE420);
    sub_274AE5000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3098);
  }

  return result;
}

unint64_t sub_274AE5000()
{
  result = qword_2815A30C0;
  if (!qword_2815A30C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B618, &qword_274BFE418);
    sub_274AD9EF0(&qword_2815A2FC0, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30C0);
  }

  return result;
}

uint64_t sub_274AE50BC(uint64_t a1)
{
  result = sub_274AD8430(319, &qword_2815A2F20, 0x277D7A158);
  if (v2 <= 0x3F)
  {
    result = sub_274BF29C4();
    if (v3 <= 0x3F)
    {
      result = sub_274AD8430(319, &qword_2815A2EE8, 0x277D79FB8);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_274AE51A0()
{
  result = qword_2815A30A8;
  if (!qword_2815A30A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B588, &qword_274BFE320);
    sub_274AE5258();
    sub_274AD766C(&qword_2815A2FB0, &qword_28098B590, &qword_274BFE328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30A8);
  }

  return result;
}

unint64_t sub_274AE5258()
{
  result = qword_2815A2F68;
  if (!qword_2815A2F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B778, &qword_274BFE708);
    sub_274B327A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2F68);
  }

  return result;
}

unint64_t sub_274AE52DC()
{
  result = qword_2815A3040;
  if (!qword_2815A3040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5A8, &qword_274BFE340);
    sub_274B31158();
    sub_274AD766C(&qword_2815A3018, &qword_28098B600, &qword_274BFE3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3040);
  }

  return result;
}

unint64_t sub_274AE5394()
{
  result = qword_2815A3080;
  if (!qword_2815A3080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5F0, &qword_274BFE3B8);
    sub_274AE5420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3080);
  }

  return result;
}

unint64_t sub_274AE5420()
{
  result = qword_2815A30A0;
  if (!qword_2815A30A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5F8, &unk_274BFE3C0);
    sub_274AD938C();
    sub_274AD766C(&qword_2815A2FB8, &qword_280989D98, &qword_274BFB008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A30A0);
  }

  return result;
}

uint64_t WFDatabaseObjectDescriptor.id.getter()
{
  v1 = [v0 identifier];
  v2 = sub_274BF4F44();

  return v2;
}

uint64_t sub_274AE5590(char a1)
{
  if (a1)
  {
    return 0x6E61747369737361;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_274AE564C(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_8_1())
  {
    sub_274BF3C64();

    return sub_274BF33D4();
  }

  else
  {
    sub_274BF3494();
    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3B64();
    OUTLINED_FUNCTION_4_2();
    sub_274BF33D4();
    sub_274BF5724();
    OUTLINED_FUNCTION_1_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3494();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3B64();
    return sub_274BF33D4();
  }
}

uint64_t sub_274AE5770(uint64_t a1)
{
  if (OUTLINED_FUNCTION_8_1())
  {
    v1 = sub_274BF3C64();
    OUTLINED_FUNCTION_9_2(v1);
  }

  else
  {
    sub_274BF3494();
    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    v2 = sub_274BF3B64();
    OUTLINED_FUNCTION_9_2(v2);
    sub_274BF5724();
    OUTLINED_FUNCTION_1_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3494();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    sub_274BF3B64();
    sub_274BF33D4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274AE5954@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_274AF6294(a2);
  *a1 = result;
  return result;
}

void *sub_274AE59CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_274AE59E0()
{
  v1 = OUTLINED_FUNCTION_3_4();
  result = sub_274AE5A08(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_274AE5A0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_7_4(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AutocompleteAccessoryBar.FadeMaskIntensities(uint64_t result, int a2, int a3)
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

uint64_t sub_274AE5A4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_7_4(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274AE5A64(uint64_t result, int a2, int a3)
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

uint64_t sub_274AE5AE0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.platformViewReusePool.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AE5CE8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A38, &qword_274BFAA88);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_274AE5D50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF3544();
  *a1 = result;
  return result;
}

uint64_t sub_274AE5E00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AFC020();
  *a1 = result;
  return result;
}

uint64_t sub_274AE5EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C70, &qword_274BFAE60);
  OUTLINED_FUNCTION_6_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78, &qword_274BFAE68);
  OUTLINED_FUNCTION_6_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 40) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_274AE5FB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C70, &qword_274BFAE60);
  OUTLINED_FUNCTION_6_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78, &qword_274BFAE68);
    OUTLINED_FUNCTION_6_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_274AE60C0()
{
  type metadata accessor for AutocompleteAccessoryBar(0);
  OUTLINED_FUNCTION_1_1();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DF8, &qword_274BFB068);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF33A4();
    OUTLINED_FUNCTION_0_2();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_2();
  v5 = v0[6];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78, &qword_274BFAE68);
  OUTLINED_FUNCTION_0_2();
  v8 = *(v7 + 8);
  v8(v1 + v3 + v5, v6);
  v9 = OUTLINED_FUNCTION_2_4(v0[7]);
  (v8)(v9);
  v10 = OUTLINED_FUNCTION_2_4(v0[8]);
  (v8)(v10);
  v11 = OUTLINED_FUNCTION_2_4(v0[9]);
  (v8)(v11);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_4_4();

  return swift_deallocObject();
}

uint64_t sub_274AE6270()
{

  return swift_deallocObject();
}

uint64_t sub_274AE62AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274AFCCCC();
  *a1 = result;
  return result;
}

uint64_t sub_274AE62F4()
{
  sub_274B03D34(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_274AE6338()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6370()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_274AE63AC()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6414()
{
  sub_274B064E4(v0[2], v0[3], v0[4], v0[5]);

  return swift_deallocObject();
}

uint64_t sub_274AE64BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0D8, &qword_274BFB748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274AE6524()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A0D8, &qword_274BFB748);
  sub_274B08338();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AE65A8()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6680()
{
  sub_274BF1A24();
  OUTLINED_FUNCTION_0_2();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_274AE6714()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6754(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_274BF2A74();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274AE67DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_274BF2A74();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AE6860()
{
  type metadata accessor for MontaraPreviewView(0);
  OUTLINED_FUNCTION_1_1();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  v4 = v0[6];
  sub_274BF2A74();
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 8))(v3 + v4);
  v6 = (v3 + v0[7]);
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  if (*(v3 + v0[8] + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AE699C()
{
  type metadata accessor for MontaraPreviewView(0);
  OUTLINED_FUNCTION_1_1();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_274BF3114();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v1 + v3;

  v11 = v0[6];
  sub_274BF2A74();
  OUTLINED_FUNCTION_0_2();
  (*(v12 + 8))(v1 + v3 + v11);
  v13 = (v1 + v3 + v0[7]);
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  if (*(v10 + v0[8] + 8))
  {
  }

  (*(v8 + 8))(v1 + ((v3 + v5 + v9) & ~v9), v6);

  return swift_deallocObject();
}

uint64_t sub_274AE6B60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 sub_274AE6BA4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_274AE6BB0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = ObservableDictionary.subscript.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_274AE6BE8()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6C40()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B0CFC4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274AE6F24()
{

  return swift_deallocObject();
}

uint64_t sub_274AE6F68(void *a1)
{
  sub_274BF33D4();
  sub_274B11AF8();
  return swift_getWitnessTable();
}

uint64_t sub_274AE6FCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B10E18();
  *a1 = result;
  return result;
}

uint64_t sub_274AE7004@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3704();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AE7068(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A590, &qword_274BFC3C8);
  OUTLINED_FUNCTION_1_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274AE70D0()
{

  return swift_deallocObject();
}

uint64_t sub_274AE7128()
{

  return swift_deallocObject();
}

uint64_t sub_274AE7168(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_274AE71FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AE7288(void *a1)
{
  sub_274BF33D4();
  sub_274BF3A74();
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A708, &qword_274BFC6F0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  sub_274B178D8(v1, v2, &qword_274BFC6F0, v3);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A718, &qword_274BFC6F8);
  sub_274BF33D4();
  sub_274BF33D4();
  sub_274BF3A74();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_8();
  sub_274B178D8(v4, &qword_28098A718, &qword_274BFC6F8, v5);
  swift_getWitnessTable();
  sub_274B16E38();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274AE74D4()
{
  type metadata accessor for PageIndicator(0);
  OUTLINED_FUNCTION_14_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AE75EC()
{
  type metadata accessor for PageIndicator(0);
  OUTLINED_FUNCTION_14_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AE77C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274AE780C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274AE784C()
{

  OUTLINED_FUNCTION_10_1();

  return swift_deallocObject();
}

uint64_t sub_274AE78A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AA90, &qword_274BFCE10);
  sub_274BF32B4();
  sub_274B214A8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AE7924()
{

  return swift_deallocObject();
}

uint64_t sub_274AE7964()
{

  OUTLINED_FUNCTION_9_7();

  return swift_deallocObject();
}

uint64_t sub_274AE7994()
{

  OUTLINED_FUNCTION_9_7();

  return swift_deallocObject();
}

uint64_t sub_274AE7A38()
{

  return swift_deallocObject();
}

uint64_t sub_274AE7A70()
{

  OUTLINED_FUNCTION_9_7();

  return swift_deallocObject();
}

uint64_t sub_274AE7AC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB8, &qword_274BFD328) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ContentItemPreview.Action(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    sub_274BF2164();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v0 + v2);
  }

  v6 = (v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_274AE7C4C()
{
  v1 = *(type metadata accessor for ContentItemPreview.Action(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_274BF2164();
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_274AE7D6C()
{
  v0 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_274B08760();
  OUTLINED_FUNCTION_3_1();
  sub_274AFA930(v2, &qword_28098AD38, &qword_274BFD270, v3);
  OUTLINED_FUNCTION_2_13();
  sub_274B221BC(v4, v5, MEMORY[0x277D85378]);
  OUTLINED_FUNCTION_13_2();
  sub_274BF4964();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_2();
  sub_274BF4054();
  OUTLINED_FUNCTION_1_3();
  return swift_getWitnessTable();
}

uint64_t sub_274AE7E64(uint64_t *a1)
{
  sub_274B08760();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD38, &qword_274BFD270);
  sub_274BF33D4();
  OUTLINED_FUNCTION_3_1();
  sub_274AFA930(v1, &qword_28098AD38, &qword_274BFD270, v2);
  OUTLINED_FUNCTION_2_13();
  sub_274B221BC(v3, v4, MEMORY[0x277D85378]);
  sub_274BF4964();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  sub_274BF4054();
  sub_274BF3B44();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD50, &qword_274BFD298);
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD58, &qword_274BFD2A0);
  sub_274BF33D4();
  swift_getOpaqueTypeConformance2();
  sub_274AFA930(&qword_28098AD60, &qword_28098AD50, &qword_274BFD298, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_274AFA930(&qword_28098AD68, &qword_28098AD58, &qword_274BFD2A0, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_274AE80FC()
{
  sub_274B08760();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD38, &qword_274BFD270);
  OUTLINED_FUNCTION_3_1();
  sub_274AFA930(v0, &qword_28098AD38, &qword_274BFD270, v1);
  OUTLINED_FUNCTION_2_13();
  sub_274B221BC(v2, v3, MEMORY[0x277D85378]);
  OUTLINED_FUNCTION_13_2();
  sub_274BF4964();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_2();
  sub_274BF4054();
  OUTLINED_FUNCTION_1_3();
  return swift_getWitnessTable();
}

uint64_t sub_274AE824C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3704();
  *a1 = result & 1;
  return result;
}

double sub_274AE82CC@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.overrideTextFieldEdgeInsets.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_274AE8338(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UIKitTextEditor(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28098AF40, &unk_274BFC460);
  sub_274BF33D4();
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_2();
  sub_274AFA930(v4, &unk_28098AF40, &unk_274BFC460, v5);
  OUTLINED_FUNCTION_8_6();
  return swift_getWitnessTable();
}

uint64_t sub_274AE83D8()
{
  MEMORY[0x277C665A0](v0 + 16);
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AE840C()
{

  return swift_deallocObject();
}

uint64_t sub_274AE845C()
{
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AE8490()
{
  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AE84D0()
{

  return swift_deallocObject();
}

uint64_t sub_274AE8510()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AE8570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BF1A24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_274AE861C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_274BF1A24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_274AE86C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF36C4();
  *a1 = result;
  return result;
}

uint64_t sub_274AE8718(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B4B0, &qword_274BFDD80);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274AE8788()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4B0, &qword_274BFDD80);
  sub_274B2C770();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AE8818(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B568, &unk_274BFE0D0);
  OUTLINED_FUNCTION_6_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
    OUTLINED_FUNCTION_6_1();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[9];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_13_4(*(v4 + a3[10]));
      }

      v8 = sub_274BF2934();
      v12 = a3[15];
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_274AE892C()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B568, &unk_274BFE0D0);
  OUTLINED_FUNCTION_6_1();
  if (*(v4 + 84) != v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
    OUTLINED_FUNCTION_6_1();
    if (*(v5 + 84) != v3)
    {
      if (v3 == 0x7FFFFFFF)
      {
        *(v1 + *(v2 + 40)) = (v0 - 1);
        return;
      }

      sub_274BF2934();
    }
  }

  OUTLINED_FUNCTION_80();

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_274AE8A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
  OUTLINED_FUNCTION_6_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_274BF2994();
    OUTLINED_FUNCTION_6_1();
    if (*(v11 + 84) != v3)
    {
      return OUTLINED_FUNCTION_13_4(*(v4 + *(a3 + 60)));
    }

    v8 = v10;
    v9 = v4 + *(a3 + 56);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_274AE8B24()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
  OUTLINED_FUNCTION_6_1();
  if (*(v4 + 84) == v3 || (sub_274BF2994(), OUTLINED_FUNCTION_6_1(), *(v5 + 84) == v3))
  {
    OUTLINED_FUNCTION_80();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 60)) = (v0 - 1);
  }
}

uint64_t sub_274AE8C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
  OUTLINED_FUNCTION_6_1();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_13_4(*(v4 + *(a3 + 20)));
    }

    v8 = sub_274BF2934();
    v9 = v4 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_274AE8CF8()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
  OUTLINED_FUNCTION_6_1();
  if (*(v4 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 20)) = (v0 - 1);
      return;
    }

    sub_274BF2934();
  }

  OUTLINED_FUNCTION_80();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_274AE8DC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_13_4(*a1);
  }

  v7 = sub_274BF29C4();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_274AE8E44()
{
  OUTLINED_FUNCTION_48();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_274BF29C4();
    OUTLINED_FUNCTION_80();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_274AE8EC4()
{

  return swift_deallocObject();
}

void sub_274AE8EFC(id result, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    sub_274AE8F14(result);
  }
}

uint64_t sub_274AE8FE4()
{

  return swift_deallocObject();
}

uint64_t sub_274AE901C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0, &qword_274BFEAC0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 112);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C8, &qword_274BFEAC8);
      v10 = *(a3 + 120);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_274AE9100(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0, &qword_274BFEAC0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 112);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C8, &qword_274BFEAC8);
      v10 = *(a4 + 120);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_274AE91E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B920, &qword_274BFEAE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B928, &qword_274BFEAF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B8A0, &qword_274BFEA58);
  sub_274BF3B44();
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B898, &qword_274BFEA50);
  OUTLINED_FUNCTION_3_3();
  v5 = sub_274AFA930(v3, &qword_28098B898, &qword_274BFEA50, v4);
  v13 = OUTLINED_FUNCTION_7_11(v5, v6, v7, v8, v9, v10, v11, v12, v2);
  OUTLINED_FUNCTION_7_11(v13, v14, v15, v16, v17, v18, v19, v20, v1);
  v29 = sub_274AFA930(qword_28098B930, &qword_28098B928, &qword_274BFEAF0, MEMORY[0x277CDF028]);
  return OUTLINED_FUNCTION_7_11(v29, v21, v22, v23, v24, v25, v26, v27, v0);
}

uint64_t sub_274AE9364@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B02230();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AE93C4(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B9B8, &qword_274BFEBB0);
  type metadata accessor for DebugDatabaseView(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_274ADDF6C();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7_11(OpaqueTypeMetadata2, v5, v6, v7, v8, v9, v10, v11, MEMORY[0x277CE0BD8]);
  swift_getOpaqueTypeConformance2();
  sub_274BF3254();
  return swift_getWitnessTable();
}

uint64_t sub_274AE9520()
{

  return swift_deallocObject();
}

uint64_t sub_274AE9558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3684();
  *a1 = result;
  return result;
}

uint64_t sub_274AE95AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD40, &qword_274BFEF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274AE967C()
{

  return swift_deallocObject();
}

uint64_t sub_274AE96B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD90, &unk_274BFF020);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_274AE976C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD90, &unk_274BFF020);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_274AE987C()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

id sub_274AE98B0()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B44AE4(v1, v2);
  *v0 = result;
  return result;
}

__n128 sub_274AE98E0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_274AE9918()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B45030();
  *v0 = result;
  return result;
}

id sub_274AE9948()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B451DC();
  *v0 = result;
  return result;
}

uint64_t sub_274AE99D0()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B4738C();
  *v0 = result;
  return result;
}

uint64_t sub_274AE9A48@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.triggerManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AE9ACC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContentItemQuickLookModal(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_274AE9B50()
{

  return swift_deallocObject();
}

uint64_t sub_274AE9BCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContentItemQuickLookModalContent(255, *a1, a1[1], a4);
  sub_274BF3A74();
  sub_274BF3A74();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274AE9C94(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C1B8, &qword_274BFF8B8);
  sub_274B4C328();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_274BF3A74();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_274AE9DE8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274AE9E7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AE9F1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C248, &unk_274BFFA28);
  sub_274BF3B04();
  sub_274AFA930(&qword_28098C250, &qword_28098C248, &unk_274BFFA28, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEA008()
{
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AEA044()
{

  return swift_deallocObject();
}

uint64_t sub_274AEA130()
{

  return swift_deallocObject();
}

uint64_t sub_274AEA220()
{
  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t sub_274AEA254()
{

  return swift_deallocObject();
}

uint64_t sub_274AEA34C()
{

  return swift_deallocObject();
}

uint64_t sub_274AEA38C()
{

  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AEA3C0()
{

  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t sub_274AEA444()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C4E8, &qword_274C001A0);
  sub_274B69224();
  sub_274B69268();
  OUTLINED_FUNCTION_0_18();
  sub_274B697E0(v0, v1, MEMORY[0x277D85380]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEA528()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AEA588()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AEA64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF1F54();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_274AEA694(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF1F54();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_274AEA6F0()
{
  MEMORY[0x277C665A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_274AEA728(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_274BF2254();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274AEA7B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_274BF2254();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AEA830()
{
  v1 = (_s14WorkflowUICore11PreviewViewVMa_2(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  sub_274BF2254();
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_274AEA920()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C6F8, &qword_274C00700);
  sub_274B6D87C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEA98C(uint64_t *a1)
{
  type metadata accessor for SizeCategoryCappingModifier(255);
  sub_274BF33D4();
  sub_274B6DCC0();
  return swift_getWitnessTable();
}

uint64_t sub_274AEA9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BF38E4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B568, &unk_274BFE0D0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_274AEAAA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_274BF38E4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B568, &unk_274BFE0D0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void *sub_274AEAB54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B6E36C();
  *a1 = result;
  return result;
}

uint64_t sub_274AEABB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B6E8C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AEAC0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B709B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_274AEAC3C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_274B70C10(a2);
  *a1 = result;
  return result;
}

uint64_t sub_274AEAC9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274AEACDC()
{
  MEMORY[0x277C665A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_274AEAD3C()
{

  return swift_deallocObject();
}

uint64_t sub_274AEAD74()
{

  OUTLINED_FUNCTION_9_10();

  return swift_deallocObject();
}

uint64_t sub_274AEADB8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.glyphCache.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AEADE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B7256C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AEAE40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B725D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AEAE98()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AEAECC()
{

  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t sub_274AEAF20()
{

  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t sub_274AEAF5C()
{
  OUTLINED_FUNCTION_36();

  return swift_deallocObject();
}

uint64_t sub_274AEAF90()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_9_10();

  return swift_deallocObject();
}

uint64_t sub_274AEAFD4()
{

  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t sub_274AEB014(void *a1)
{
  sub_274BF33D4();
  sub_274B74720();
  return swift_getWitnessTable();
}

uint64_t sub_274AEB078()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9B8, &qword_274C00B98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9A8, &qword_274C00B90);
  sub_274AFA930(&qword_28098C9C0, &qword_28098C9B8, &qword_274C00B98, MEMORY[0x277CE04B0]);
  sub_274AFA930(&qword_28098C9C8, &qword_28098C9A8, &qword_274C00B90, MEMORY[0x277CDFB18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEB16C()
{

  return swift_deallocObject();
}

uint64_t sub_274AEB29C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098C9E0, &qword_274C00C60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098CA18, &qword_274C00C88);
  OUTLINED_FUNCTION_4_2();
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28098CA20, &qword_274C00C90);
  OUTLINED_FUNCTION_12_5();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_76();
  sub_274BF4B54();
  OUTLINED_FUNCTION_2_23();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_274BF48A4();
  OUTLINED_FUNCTION_4_13();
  return swift_getWitnessTable();
}

uint64_t sub_274AEB364()
{
  v0 = OUTLINED_FUNCTION_11_7();
  type metadata accessor for WFShowContentDialogRequest.TextLoadingView(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_11_7();
  type metadata accessor for WFShowContentDialogRequest.ImageLoadingView(v4, v5, v6, v7);
  sub_274BF3A74();
  v8 = OUTLINED_FUNCTION_11_7();
  type metadata accessor for WFShowContentDialogRequest.FileLoadingView(v8, v9, v10, v11);
  sub_274BF3A74();
  OUTLINED_FUNCTION_3_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_23();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_20_3();
}

uint64_t sub_274AEB430()
{

  return swift_deallocObject();
}

uint64_t sub_274AEB468@<X0>(uint64_t a1@<X8>)
{
  result = sub_274B770EC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

__n128 sub_274AEB4AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_274AEB4B8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274AEB58C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_274AEB5C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B81410();
  *a1 = result;
  return result;
}

uint64_t sub_274AEB5F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B81304();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274AEB64C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B812DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274AEB6AC()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AEB6E0()
{
  OUTLINED_FUNCTION_1_21();
  v0 = sub_274B82E5C();
  return OUTLINED_FUNCTION_3(v0);
}

uint64_t sub_274AEB74C()
{
  OUTLINED_FUNCTION_1_21();
  v0 = sub_274B82E7C();
  return OUTLINED_FUNCTION_3(v0);
}

uint64_t sub_274AEB7B8()
{
  OUTLINED_FUNCTION_1_21();
  v0 = sub_274B83138();
  return OUTLINED_FUNCTION_3(v0);
}

uint64_t sub_274AEB824()
{
  OUTLINED_FUNCTION_1_21();
  v0 = sub_274B831D4();
  return OUTLINED_FUNCTION_3(v0);
}

uint64_t sub_274AEB9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274BF2164();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_274AEBA98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_274BF2164();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_274AEBB50()
{
  v1 = sub_274BF1F54();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_274AEBC0C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D208, &qword_274C02108);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274AEBC74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D208, &qword_274C02108);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274AEBCEC()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B8B388();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274AEBD40()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B8B360();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274AEBD94()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B8B264();
  *v0 = result & 1;
  return result;
}

uint64_t sub_274AEBE88()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B8A3DC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_274AEBEE0()
{

  sub_274AFA1D0(*(v0 + 128), *(v0 + 136), *(v0 + 144));

  sub_274AFA1D0(*(v0 + 176), *(v0 + 184), *(v0 + 192));

  return swift_deallocObject();
}

uint64_t sub_274AEBF70()
{
  v1 = sub_274BF3114();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_274AEC058()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC0D4()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC10C(uint64_t *a1)
{
  v1 = *a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D3F8, &qword_274C02680);
  v3 = sub_274B8CF28();
  type metadata accessor for LoaderProgressView(255, v1, v2, v3);
  OUTLINED_FUNCTION_0_24();

  return swift_getWitnessTable();
}

uint64_t sub_274AEC178(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274AEC20C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7D0, &unk_274BFF970);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AEC2A4()
{
  type metadata accessor for ContentCollectionGridView(0);
  OUTLINED_FUNCTION_1_1();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_274B21754(*(v3 + 24), *(v3 + 32));

  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274AEC48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_25();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_274AEC500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_25();
  swift_getWitnessTable();

  return sub_274BF5304();
}

uint64_t sub_274AEC574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_25();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_274AEC5E8@<X0>(uint64_t *a1@<X8>)
{
  result = DatabaseResult.descriptors.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AEC628()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC6B0()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC6F0()
{
  v0 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  OUTLINED_FUNCTION_3_3();
  sub_274AFA930(v2, &qword_28098D7A8, &qword_274C02F20, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEC7A8()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC7E8()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC834()
{

  return swift_deallocObject();
}

uint64_t sub_274AEC86C(void *a1)
{
  sub_274BF51A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8B0, &qword_274C031A8);
  OUTLINED_FUNCTION_27_0();
  swift_getWitnessTable();
  sub_274BF4964();
  v1 = OUTLINED_FUNCTION_11_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1, v2);
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C0, &qword_274C031B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098D8C8, &unk_274C031C0);
  OUTLINED_FUNCTION_7_19();
  sub_274AFA930(v3, &qword_28098D8C0, &qword_274C031B8, v4);
  OUTLINED_FUNCTION_6_2();
  sub_274AFA930(v5, &qword_28098D8C8, &unk_274C031C0, v6);
  OUTLINED_FUNCTION_5_15();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_18();
  sub_274AFA930(v7, &qword_28098D8B8, &qword_274C031B0, v8);
  swift_getWitnessTable();
  sub_274BF4054();
  sub_274BF32B4();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_274BF3A74();
  sub_274BF46B4();
  sub_274BF33D4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274AECB74()
{

  return swift_deallocObject();
}

uint64_t sub_274AECBBC@<X0>(uint64_t *a6@<X8>)
{
  result = sub_274B990B4();
  *a6 = result;
  return result;
}

uint64_t sub_274AECC28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B9D580();
  *a1 = result;
  return result;
}

uint64_t sub_274AECC58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B9DB00();
  *a1 = result;
  return result;
}

uint64_t sub_274AECCAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B9DF14();
  *a1 = result;
  return result;
}

uint64_t sub_274AECE80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274B9E610();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AECEFC()
{

  return swift_deallocObject();
}

uint64_t sub_274AECF44()
{

  return swift_deallocObject();
}

uint64_t sub_274AECF8C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLockedByAppProtection.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_274AED000(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_274AED040()
{

  return swift_deallocObject();
}

uint64_t sub_274AED098(void *a1)
{
  sub_274BF33D4();
  sub_274BF3A74();
  sub_274BA3B7C();
  OUTLINED_FUNCTION_11_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_0();
  return swift_getWitnessTable();
}

uint64_t sub_274AED120()
{
  sub_274B4C38C(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_274AED180(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for UIKitTextEditor(255, *a1, v5, a4);
  type metadata accessor for UIKitTextFieldHost(255, v4, v5, v6);
  sub_274BF3A74();
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_0();
  return swift_getWitnessTable();
}

uint64_t sub_274AED228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3684();
  *a1 = result;
  return result;
}

uint64_t sub_274AED2B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BA9150();
  *a1 = result;
  return result;
}

uint64_t sub_274AED304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BA9060();
  *a1 = result;
  return result;
}

uint64_t sub_274AED334(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DEF8, &qword_274C045F8);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274AED3A8()
{

  return swift_deallocObject();
}

uint64_t sub_274AED3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DEF8, &qword_274C045F8);
  OUTLINED_FUNCTION_3_2();
  sub_274AFA930(v0, &qword_28098DEF8, &qword_274C045F8, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AED4D8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.userInterface.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AED534(void *a1)
{
  sub_274BF33D4();
  sub_274BADA80();
  return swift_getWitnessTable();
}

uint64_t sub_274AED5A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3644();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AED5FC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.debugStatistics.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274AED62C(void *a1)
{
  sub_274BF33D4();
  sub_274BAE66C();
  return swift_getWitnessTable();
}

uint64_t sub_274AED694()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E038, &qword_274C04BF0);
  sub_274BAE804();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore25ActionDrawerDebugSnapshot33_52078985FEC5CEC919BB9D4DED11073CLLVSg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return OUTLINED_FUNCTION_21_4(v1);
}

uint64_t sub_274AED7A4()
{
  v0 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_274BC19D4(&unk_28098E078);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AED838()
{
  v0 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989EA8, &qword_274BFB0F0);
  OUTLINED_FUNCTION_14_8();
  sub_274BC19D4(v2);
  OUTLINED_FUNCTION_17();
  sub_274BC19D4(v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AED928@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF4C14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274AED958()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDA84()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDAD4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E508, &qword_274C05C18);
  OUTLINED_FUNCTION_0_2();
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  return a2;
}

BOOL sub_274AEDC3C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_274AEDC68()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDCCC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnvironmentFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AEDD24(void *a1)
{
  sub_274BF33D4();
  sub_274BC4134();
  return swift_getWitnessTable();
}

uint64_t sub_274AEDD88()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDDC4()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDE1C()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDE98()
{

  return swift_deallocObject();
}

uint64_t sub_274AEDEF0()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_17_5();

  return swift_deallocObject();
}

uint64_t sub_274AEDF28(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E950, &qword_274C06740);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274AEDF90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E950, &qword_274C06740);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274AEE054()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274AEE094()
{
  swift_unknownObjectRelease();

  sub_274B4C9F8(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  sub_274B21754(*(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

uint64_t sub_274AEE118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C728, &qword_274C00760);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_274AEE1B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098C728, &qword_274C00760);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274AEE264()
{

  return swift_deallocObject();
}

uint64_t sub_274AEE29C@<X0>(uint64_t *a1@<X8>)
{
  result = MutablePublishedBox.value.getter();
  *a1 = result;
  return result;
}

__n128 sub_274AEE2D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_274AEE318()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_274AEE350()
{

  return swift_deallocObject();
}

uint64_t sub_274AEE394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF23A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274AEE3C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF23D4();
  *a1 = result;
  return result;
}

uint64_t sub_274AEE430()
{

  sub_274AEF5C0(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_274AEE51C()
{
  OUTLINED_FUNCTION_58();
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_14_10();
  type metadata accessor for AsyncLoaderProgressView(v4, v5, v6, v7);
  OUTLINED_FUNCTION_1_1();
  if (!OUTLINED_FUNCTION_29_3())
  {
    OUTLINED_FUNCTION_6_9();
    (*(v8 + 8))(v2, v3);
  }

  OUTLINED_FUNCTION_14_10();
  type metadata accessor for AsyncLoaderProgressView.ContentState(v9, v10, v11, v12);
  sub_274BF47B4();

  OUTLINED_FUNCTION_17_6(v0[11]);

  OUTLINED_FUNCTION_17_6(v0[12]);

  OUTLINED_FUNCTION_17_6(v0[13]);

  OUTLINED_FUNCTION_55();

  return swift_deallocObject();
}

uint64_t sub_274AEE638()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AEE66C()
{
  OUTLINED_FUNCTION_58();
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_14_10();
  type metadata accessor for AsyncLoaderProgressView(v4, v5, v6, v7);
  OUTLINED_FUNCTION_1_1();
  if (!OUTLINED_FUNCTION_29_3())
  {
    OUTLINED_FUNCTION_6_9();
    (*(v8 + 8))(v2, v3);
  }

  OUTLINED_FUNCTION_14_10();
  type metadata accessor for AsyncLoaderProgressView.ContentState(v9, v10, v11, v12);
  sub_274BF47B4();

  OUTLINED_FUNCTION_17_6(v0[11]);

  OUTLINED_FUNCTION_17_6(v0[12]);

  OUTLINED_FUNCTION_17_6(v0[13]);

  OUTLINED_FUNCTION_55();

  return swift_deallocObject();
}

uint64_t sub_274AEE79C()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AEE7D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EDF0, &qword_274C079D0);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274AEE838@<X0>(uint64_t a1@<X8>)
{
  result = sub_274BF3724();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_274AEE870(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098EDD8, &qword_274C079C8);
  sub_274BF3A74();
  sub_274BF46B4();
  sub_274BF31B4();
  OUTLINED_FUNCTION_4_2();
  sub_274BF33D4();
  sub_274BD66FC();
  OUTLINED_FUNCTION_3_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_14();
  sub_274BD7110(v1, v2, MEMORY[0x277CDD8A0]);
  OUTLINED_FUNCTION_11_10();
  return swift_getWitnessTable();
}

uint64_t sub_274AEE958(uint64_t a1)
{
  sub_274BF3A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A860, &unk_274C07B60);
  OUTLINED_FUNCTION_4_2();
  sub_274BF3A74();
  swift_getWitnessTable();
  sub_274B174F4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_2();
  sub_274BF48A4();
  OUTLINED_FUNCTION_4_13();
  return swift_getWitnessTable();
}

uint64_t sub_274AEEB34()
{
  v1 = sub_274BF1F54();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_274AEEBC4()
{

  return swift_deallocObject();
}

uint64_t sub_274AEEBFC@<X0>(uint64_t a1@<X8>)
{
  result = sub_274BDC7B4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_274AEEC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F028, &qword_274C080B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274AEECB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F028, &qword_274C080B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274AEEDC8(void *a1)
{
  sub_274BF3A74();
  OUTLINED_FUNCTION_3_0();
  return swift_getWitnessTable();
}

uint64_t sub_274AEEE44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for QuickLookHostingView(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_37();

  return swift_getWitnessTable();
}

uint64_t sub_274AEEE94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF36E4();
  *a1 = result;
  return result;
}

uint64_t sub_274AEEEF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F4F8, &qword_274C08DE0);
  OUTLINED_FUNCTION_1_33();
  sub_274AFA930(v0, &qword_28098F4F8, &qword_274C08DE0, v1);
  sub_274BE3A20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEEF94()
{
  sub_274BF3C54();
  OUTLINED_FUNCTION_1_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_274AEF010()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F510, &qword_274C08EA8);
  sub_274BF3B24();
  OUTLINED_FUNCTION_17();
  sub_274AFA930(v0, &qword_28098F510, &qword_274C08EA8, v1);
  sub_274BE4320();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEF0B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BE4510();
  *a1 = result;
  return result;
}

uint64_t sub_274AEF0E8()
{

  return swift_deallocObject();
}

uint64_t sub_274AEF120(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F578, &qword_274C08EF0);
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F588, &qword_274C08F48);
  sub_274BF33D4();
  sub_274B83324(&qword_28098F580, &qword_28098F578, &qword_274C08EF0);
  swift_getWitnessTable();
  sub_274B83324(&qword_28098F590, &qword_28098F588, &qword_274C08F48);
  return swift_getWitnessTable();
}

uint64_t sub_274AEF22C()
{

  return swift_deallocObject();
}

uint64_t sub_274AEF28C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098F5B0, &qword_274C093F0);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return a1;
}

id sub_274AEF2EC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 identifier];
  *a2 = result;
  return result;
}

uint64_t sub_274AEF320()
{

  OUTLINED_FUNCTION_35();

  return swift_deallocObject();
}

uint64_t sub_274AEF354()
{
  sub_274B4C38C(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_274AEF390()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F5B0, &qword_274C093F0);
  sub_274BE8048();
  OUTLINED_FUNCTION_1_35();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274AEF3E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F640, &qword_274C09480);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F648, &qword_274C09488);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098F5B0, &qword_274C093F0);
  sub_274BE8048();
  OUTLINED_FUNCTION_1_35();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_2();
  sub_274AFA930(v0, &qword_28098F648, &qword_274C09488, v1);
  return swift_getOpaqueTypeConformance2();
}

char *sub_274AEF52C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274AEF54C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

char *sub_274AEF56C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_16(a3, result);
  }

  return result;
}

uint64_t sub_274AEF5C0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

id WFAskLLMFeedbackPresenter.__allocating_init(model:conversation:controller:wasBlockedBySafety:viewControllerForPresentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v11 = objc_allocWithZone(v5);
  return WFAskLLMFeedbackPresenter.init(model:conversation:controller:wasBlockedBySafety:viewControllerForPresentation:)(a1, a2, a3, v7, a5);
}

id WFAskLLMFeedbackPresenter.init(model:conversation:controller:wasBlockedBySafety:viewControllerForPresentation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_accessedURLs] = MEMORY[0x277D84FA0];
  v12 = OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_model;
  v13 = sub_274BF1A24();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v5[v12], a1, v13);
  *&v5[OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_conversation] = a2;
  *&v5[OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_controller] = a3;
  v5[OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_wasBlockedBySafety] = a4;
  *&v5[OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_viewControllerForPresentation] = a5;
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a1, v13);
  return v15;
}

Swift::Void __swiftcall WFAskLLMFeedbackPresenter.presentRAC()()
{
  sub_274BF25F4();
  OUTLINED_FUNCTION_5();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  v4 = (&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274AEF860(v4);
  sub_274BF4D64();
  (*(v1 + 8))(v4);
}

void sub_274AEF860(uint64_t *a1@<X8>)
{
  v117 = a1;
  v141 = sub_274BF1F54();
  v116 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_274BF2644();
  v125 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v139 = v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v126 = v115 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989608, &qword_274BF9648);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = v115 - v7;
  v122 = sub_274BF2654();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v9 = (v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989610, &qword_274BF9650);
  MEMORY[0x28223BE20](v10 - 8);
  v138 = v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v147 = v115 - v13;
  MEMORY[0x28223BE20](v14);
  v129 = v115 - v15;
  MEMORY[0x28223BE20](v16);
  v128 = v115 - v17;
  v120 = sub_274BF2604();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v127 = v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_274BF4F94();
  MEMORY[0x28223BE20](v19 - 8);
  v115[2] = v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_274BF4DC4();
  v21 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v23 = v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_274BF1AC4();
  MEMORY[0x28223BE20](v24 - 8);
  v118 = v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_274BF4DD4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v137 = v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v115 - v30;
  v136 = v1;
  v32 = *(v1 + OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_conversation);
  v33 = sub_274BF19C4();
  v34 = v33;
  v149 = MEMORY[0x277D84F90];
  v35 = *(v33 + 16);
  v123 = v9;
  if (v35)
  {
    v134 = v23;
    v115[1] = v32;
    v36 = 0;
    v37 = v33 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v144 = v27 + 88;
    *&v145 = v27 + 16;
    LODWORD(v143) = *MEMORY[0x277D42DB8];
    v142 = v27 + 8;
    v133 = (v27 + 96);
    v132 = (v21 + 32);
    v130 = (v21 + 8);
    v148 = MEMORY[0x277D84F90];
    v38 = v137;
    v131 = v37;
    while (1)
    {
      if (v36 >= *(v34 + 16))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v39 = *(v27 + 16);
      v39(v31, v37 + *(v27 + 72) * v36, v26);
      v39(v38, v31, v26);
      v40 = (*(v27 + 88))(v38, v26);
      if (v40 == v143)
      {
        v41 = v35;
        v42 = v27;
        v43 = v34;
        (*v133)(v38, v26);
        v44 = v134;
        v45 = v38;
        v46 = v135;
        (*v132)(v134, v45, v135);
        v47 = sub_274BF4DB4();
        v48 = [v47 CGImageBuilder];

        if (!v48)
        {
          __break(1u);
          return;
        }

        v49 = [v48 buildCGImage];

        (*v130)(v44, v46);
        v50 = (*v142)(v31, v26);
        v34 = v43;
        v27 = v42;
        v38 = v137;
        v35 = v41;
        v37 = v131;
        if (v49)
        {
          MEMORY[0x277C649C0](v50);
          if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_274BF5154();
          }

          sub_274BF5184();
          v148 = v149;
          v38 = v137;
        }
      }

      else
      {
        v51 = *v142;
        (*v142)(v31, v26);
        v51(v38, v26);
      }

      if (v35 == ++v36)
      {

        goto LABEL_14;
      }
    }
  }

  v148 = MEMORY[0x277D84F90];
LABEL_14:
  sub_274BF1B04();
  swift_allocObject();
  sub_274BF1AF4();
  sub_274BF1AB4();
  sub_274BF1AD4();
  v149 = sub_274AF0A44(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989618, &qword_274BF9658);
  sub_274AF56D8();
  v53 = sub_274BF1AE4();
  v55 = v54;
  v134 = 0;

  sub_274BF4F84();
  v56 = sub_274BF4F64();
  v58 = v57;
  sub_274AF58B0(v53, v55);

  if (!v58)
  {
    v58 = 0x8000000274C09920;
    v56 = 0xD000000000000033;
  }

  v142 = sub_274BF19D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989638, &qword_274BF9668);
  v59 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989640, &unk_274BF9670) - 8);
  v60 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
  v61 = swift_allocObject();
  v145 = xmmword_274BF8D80;
  *(v61 + 16) = xmmword_274BF8D80;
  v62 = (v61 + v60);
  v63 = v59[14];
  *v62 = 0xD000000000000012;
  v62[1] = 0x8000000274C098B0;
  v64 = *MEMORY[0x277D08658];
  v65 = sub_274BF2674();
  (*(*(v65 - 8) + 104))(v62, v64, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989648, &qword_274BFFF20);
  v66 = swift_allocObject();
  *(v66 + 16) = v145;
  *(v66 + 32) = sub_274BF1A14();
  *(v66 + 40) = v67;
  *(v62 + v63) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
  sub_274AF4BB8(&qword_280989658, MEMORY[0x277D08668], MEMORY[0x277D08670]);
  v137 = sub_274BF4E14();
  (*(v119 + 104))(v127, *MEMORY[0x277D085B8], v120);
  v68 = v123;
  *v123 = v56;
  v68[1] = v58;
  (*(v121 + 104))(v68, *MEMORY[0x277D08638], v122);
  sub_274BF4FE4("Transcript", 10);
  if (qword_2809893B8 != -1)
  {
LABEL_48:
    swift_once();
  }

  v69 = qword_28098C7C0;
  v70 = sub_274BF4F04();
  v71 = sub_274BF4F04();

  v72 = [v69 localizedStringForKey:v70 value:v71 table:0];

  sub_274BF4F44();
  sub_274BF4FE4("Your conversation with the model", 32);
  v73 = sub_274BF4F04();
  v74 = sub_274BF4F04();

  v75 = [v69 localizedStringForKey:v73 value:v74 table:0];

  sub_274BF4F44();
  v76 = sub_274BF2634();
  __swift_storeEnumTagSinglePayload(v124, 1, 1, v76);
  v77 = v128;
  sub_274BF2624();
  v78 = v146;
  __swift_storeEnumTagSinglePayload(v77, 0, 1, v146);
  __swift_storeEnumTagSinglePayload(v129, 1, 1, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989660, &qword_274BF9688);
  v79 = v125;
  v80 = (*(v125 + 80) + 32) & ~*(v125 + 80);
  v144 = *(v125 + 72);
  v81 = swift_allocObject();
  *(v81 + 16) = v145;
  v143 = v80;
  v135 = v81;
  sub_274AF1354();
  v82 = v148;
  v83 = sub_274B22B94();
  v84 = 0;
  v85 = v82 & 0xC000000000000001;
  v86 = v82 & 0xFFFFFFFFFFFFFF8;
  *&v145 = v79 + 32;
  v87 = MEMORY[0x277D84F90];
LABEL_18:
  v88 = v147;
  while (v83 != v84)
  {
    if (v85)
    {
      v89 = MEMORY[0x277C65230](v84, v148);
    }

    else
    {
      if (v84 >= *(v86 + 16))
      {
        goto LABEL_46;
      }

      v89 = v148[v84 + 4];
    }

    v90 = v89;
    v91 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    sub_274AF162C(v89, v88);
    v88 = v147;

    if (__swift_getEnumTagSinglePayload(v88, 1, v78) != 1)
    {
      v92 = *v145;
      (*v145)(v126, v88, v78);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBACA4();
        v87 = v94;
      }

      v93 = *(v87 + 16);
      if (v93 >= *(v87 + 24) >> 1)
      {
        sub_274BBACA4();
        v87 = v95;
      }

      *(v87 + 16) = v93 + 1;
      v92(v87 + v143 + v93 * v144, v126, v78);
      v84 = v91;
      goto LABEL_18;
    }

    sub_274AF5848(v88);
    ++v84;
  }

  v149 = v135;
  sub_274AF398C(v87);
  v96 = v149;
  v97 = *(v142 + 16);
  if (v97)
  {
    v135 = v149;
    v98 = *(v116 + 16);
    v99 = v142 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v147 = *(v116 + 72);
    v148 = v98;
    v100 = (v116 + 8);
    v101 = MEMORY[0x277D84F90];
    v102 = v138;
    do
    {
      v103 = v140;
      v104 = v141;
      (v148)(v140, v99, v141);
      sub_274AF1F44(v103, v102);
      (*v100)(v103, v104);
      v105 = v146;
      if (__swift_getEnumTagSinglePayload(v102, 1, v146) == 1)
      {
        sub_274AF5848(v102);
      }

      else
      {
        v106 = *v145;
        (*v145)(v139, v102, v105);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274BBACA4();
          v101 = v108;
        }

        v107 = *(v101 + 16);
        if (v107 >= *(v101 + 24) >> 1)
        {
          sub_274BBACA4();
          v101 = v109;
        }

        *(v101 + 16) = v107 + 1;
        v106(v101 + v143 + v107 * v144, v139, v146);
      }

      v99 += v147;
      --v97;
    }

    while (v97);

    v96 = v135;
  }

  else
  {

    v101 = MEMORY[0x277D84F90];
  }

  v149 = v96;
  sub_274AF398C(v101);
  v110 = objc_allocWithZone(sub_274BF2664());
  v111 = sub_274BF2614();
  v112 = v117;
  *v117 = v111;
  v113 = *MEMORY[0x277D08530];
  v114 = sub_274BF25F4();
  (*(*(v114 - 8) + 104))(v112, v113, v114);
}

uint64_t sub_274AF0A44(__n128 a1)
{
  v1 = sub_274BF4DD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_274BF1974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_274BF1F54();
  v9 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_274BF1954();
  v11 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v84 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = &v69 - v14;
  v15 = sub_274BF19B4();
  v16 = *(v15 + 16);
  if (v16)
  {
    v107 = MEMORY[0x277D84F90];
    v82 = v16;
    sub_274B63DBC(0, v16, 0);
    v17 = 0;
    v18 = v107;
    v81 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v80 = v11 + 16;
    v79 = v11 + 88;
    v89 = *MEMORY[0x277CFC040];
    v78 = (v11 + 96);
    v98 = v9 + 16;
    v72 = v9;
    v96 = v6 + 16;
    v97 = (v9 + 8);
    v95 = (v2 + 88);
    v94 = *MEMORY[0x277D42DD0];
    v92 = (v2 + 8);
    v93 = (v6 + 8);
    v91 = (v2 + 96);
    v77 = (v11 + 8);
    v71 = *MEMORY[0x277CFC048];
    v102 = v4;
    v103 = v1;
    v105 = v5;
    v19 = v73;
    v20 = v11;
    v76 = v11;
    v83 = v15;
    v70 = v6;
    v104 = v8;
    while (v17 < *(v15 + 16))
    {
      v87 = v18;
      v88 = v17;
      v21 = *(v20 + 16);
      v22 = v90;
      v21(v90, v81 + *(v20 + 72) * v17, v19);
      v23 = v84;
      v21(v84, v22, v19);
      v24 = (*(v20 + 88))(v23, v19);
      v86 = v24;
      if (v24 == v89)
      {
        (*v78)(v23, v19);
        v28 = *v23;
        v29 = sub_274BF19A4();
        v30 = *(v29 + 16);
        v31 = v72;
        v85 = v28;
        if (v30)
        {
          v106 = MEMORY[0x277D84F90];
          sub_274B63DF4(0, v30, 0);
          v27 = v106;
          v32 = *(v31 + 80);
          v101 = v29;
          v33 = v29 + ((v32 + 32) & ~v32);
          v34 = *(v31 + 72);
          v35 = *(v31 + 16);
          do
          {
            v36 = v99;
            v37 = v100;
            v35(v99, v33, v100);
            v38 = sub_274BF1E94();
            v40 = v39;
            (*v97)(v36, v37);
            v106 = v27;
            v42 = v27[2];
            v41 = v27[3];
            if (v42 >= v41 >> 1)
            {
              sub_274B63DF4(v41 > 1, v42 + 1, 1);
              v27 = v106;
            }

            v27[2] = v42 + 1;
            v43 = &v27[2 * v42];
            *(v43 + 4) = v38;
            *(v43 + 5) = v40;
            v33 += v34;
            --v30;
          }

          while (v30);

          v4 = v102;
          v1 = v103;
          v5 = v105;
          v20 = v76;
          v28 = v85;
        }

        else
        {

          v27 = MEMORY[0x277D84F90];
        }

        v44 = *(sub_274BF1994() + 16);

        v45 = sub_274BF1984();
        v46 = *(v45 + 16);
        v47 = v104;
        if (v46)
        {
          v75 = v44;
          v106 = MEMORY[0x277D84F90];
          sub_274B63DF4(0, v46, 0);
          v48 = v45;
          v25 = v106;
          v49 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v74 = v48;
          v50 = v48 + v49;
          v101 = *(v70 + 72);
          v51 = *(v70 + 16);
          do
          {
            v51(v47, v50, v5);
            sub_274BF1964();
            v52 = (*v95)(v4, v1);
            if (v52 == v94)
            {
              (*v93)(v47, v5);
              (*v91)(v4, v1);
              v54 = *v4;
              v53 = v4[1];
            }

            else
            {
              sub_274AF4BB8(&qword_280989678, MEMORY[0x277CFC060], MEMORY[0x277CFC068]);
              v55 = sub_274BF4E84();
              v56 = v5;
              v54 = v55;
              v57 = v47;
              v53 = v58;
              (*v93)(v57, v56);
              (*v92)(v4, v1);
            }

            v106 = v25;
            v60 = v25[2];
            v59 = v25[3];
            if (v60 >= v59 >> 1)
            {
              sub_274B63DF4(v59 > 1, v60 + 1, 1);
              v25 = v106;
            }

            v25[2] = v60 + 1;
            v61 = &v25[2 * v60];
            v61[4] = v54;
            v61[5] = v53;
            v4 = v102;
            v50 += v101;
            --v46;
            v1 = v103;
            v47 = v104;
            v5 = v105;
          }

          while (v46);
          v19 = v73;
          (*v77)(v90, v73);

          v20 = v76;
          v44 = v75;
        }

        else
        {

          v19 = v73;
          (*v77)(v90, v73);
          v25 = MEMORY[0x277D84F90];
        }

        v26 = v44 != 0;
      }

      else
      {
        if (v24 != v71)
        {
          goto LABEL_31;
        }

        (*v77)(v90, v19);
        (*v78)(v23, v19);
        v25 = 0;
        v27 = *v23;
        v26 = *(v23 + 1);
      }

      v18 = v87;
      v62 = v88;
      v107 = v87;
      v64 = *(v87 + 16);
      v63 = *(v87 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_274B63DBC(v63 > 1, v64 + 1, 1);
        v62 = v88;
        v19 = v73;
        v18 = v107;
      }

      v17 = v62 + 1;
      v65 = v86 != v89;
      *(v18 + 16) = v64 + 1;
      v66 = v18 + 32 * v64;
      *(v66 + 32) = v27;
      *(v66 + 40) = v26;
      *(v66 + 48) = v25;
      *(v66 + 56) = v65;
      v5 = v105;
      v15 = v83;
      if (v17 == v82)
      {
        v67 = v18;

        return v67;
      }
    }

    __break(1u);
LABEL_31:
    result = sub_274BF5C14();
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_274AF1354()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989608, &qword_274BF9648);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_274BF2654();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = sub_274BF1944();
  v6[1] = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D08638], v3);
  sub_274BF4FE4("Model Diagnostics", 17);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v8 = qword_28098C7C0;
  v9 = sub_274BF4F04();
  v10 = sub_274BF4F04();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  sub_274BF4F44();
  sub_274BF4FE4("Diagnostic file containing model information", 44);
  v12 = sub_274BF4F04();
  v13 = sub_274BF4F04();

  v14 = [v8 localizedStringForKey:v12 value:v13 table:0];

  sub_274BF4F44();
  v15 = sub_274BF2634();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v15);
  return sub_274BF2624();
}

uint64_t sub_274AF162C@<X0>(CGImage *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v71 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989608, &qword_274BF9648);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v58 - v3;
  v61 = sub_274BF2654();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v65 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_274BF2BE4();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v58 - v9;
  MEMORY[0x28223BE20](v10);
  v60 = &v58 - v11;
  v66 = sub_274BF2BB4();
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_274BF1F54();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_274BF2164();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_274BF5984();

  v72 = 0xD000000000000014;
  v73 = 0x8000000274C099C0;
  sub_274BF2154();
  v21 = sub_274BF2124();
  v23 = v22;
  (*(v18 + 8))(v20, v17);
  MEMORY[0x277C648E0](v21, v23);

  MEMORY[0x277C648E0](1735290926, 0xE400000000000000);
  v24 = objc_opt_self();
  v25 = sub_274BF4F04();
  v26 = [v24 createTemporaryFileWithFilename_];

  if (!v26)
  {

    sub_274BF2A54();
    v42 = sub_274BF2BD4();
    v43 = sub_274BF5494();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_274AD4000, v42, v43, "Failed to create temporary file URL", v44, 2u);
      MEMORY[0x277C664A0](v44, -1, -1);
    }

    (*(v68 + 8))(v7, v69);
    goto LABEL_16;
  }

  sub_274BF1F04();

  v27 = sub_274BF1ED4();
  sub_274BF2B44();
  sub_274BF2B04();
  (*(v12 + 8))(v14, v66);
  v28 = sub_274BF4F04();

  v29 = CGImageDestinationCreateWithURL(v27, v28, 1uLL, 0);

  if (!v29)
  {

    v45 = v63;
    sub_274BF2A54();
    v46 = sub_274BF2BD4();
    v47 = sub_274BF5494();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v70;
    v50 = v67;
    if (v48)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_274AD4000, v46, v47, "CGImageDestinationCreateWithURL failed", v51, 2u);
      MEMORY[0x277C664A0](v51, -1, -1);
    }

    (*(v68 + 8))(v45, v69);
    (*(v50 + 8))(v16, v49);
    goto LABEL_16;
  }

  CGImageDestinationAddImage(v29, v64, 0);
  v30 = CGImageDestinationFinalize(v29);
  v31 = v67;
  if (!v30)
  {

    v52 = v60;
    sub_274BF2A54();
    v53 = sub_274BF2BD4();
    v54 = sub_274BF5494();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_274AD4000, v53, v54, "CGImageDestinationFinalize failed", v55, 2u);
      MEMORY[0x277C664A0](v55, -1, -1);
    }

    (*(v68 + 8))(v52, v69);
    (*(v31 + 8))(v16, v70);
LABEL_16:
    v41 = 1;
    goto LABEL_17;
  }

  v32 = v65;
  (*(v67 + 16))(v65, v16, v70);
  (*(v59 + 104))(v32, *MEMORY[0x277D08628], v61);
  sub_274BF4FE4("Request image", 13);
  v69 = v16;
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v33 = qword_28098C7C0;
  v34 = sub_274BF4F04();
  v35 = sub_274BF4F04();

  v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

  sub_274BF4F44();
  sub_274BF4FE4("An image submitted to the model as part of the request", 54);
  v37 = sub_274BF4F04();
  v38 = sub_274BF4F04();

  v39 = [v33 localizedStringForKey:v37 value:v38 table:0];

  sub_274BF4F44();
  v40 = sub_274BF2634();
  __swift_storeEnumTagSinglePayload(v62, 1, 1, v40);
  sub_274BF2624();

  (*(v31 + 8))(v69, v70);
  v41 = 0;
LABEL_17:
  v56 = sub_274BF2644();
  return __swift_storeEnumTagSinglePayload(v71, v41, 1, v56);
}

uint64_t sub_274AF1F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = sub_274BF2BE4();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989608, &qword_274BF9648);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v43 - v8;
  v9 = sub_274BF2654();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_274BF1F54();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  if (sub_274BF1F14())
  {
    v22 = *(v13 + 16);
    v22(v18, a1, v12);
    v46 = v9;
    swift_beginAccess();
    sub_274B90DB4(v21, v18);
    swift_endAccess();
    (*(v13 + 8))(v21, v12);
    v22(v11, a1, v12);
    (*(v44 + 104))(v11, *MEMORY[0x277D08628], v46);
    sub_274BF4FE4("Request document", 16);
    if (qword_2809893B8 != -1)
    {
      swift_once();
    }

    v23 = qword_28098C7C0;
    v24 = sub_274BF4F04();
    v25 = sub_274BF4F04();

    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

    sub_274BF4F44();
    sub_274BF4FE4("A document submitted to the model as part of the request", 56);
    v27 = sub_274BF4F04();
    v28 = sub_274BF4F04();

    v29 = [v23 localizedStringForKey:v27 value:v28 table:0];

    sub_274BF4F44();
    sub_274BF1EC4();
    v30 = sub_274BF2634();
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v30);
    v31 = v48;
    sub_274BF2624();
    v32 = 0;
  }

  else
  {
    sub_274BF2A54();
    (*(v13 + 16))(v15, a1, v12);
    v33 = sub_274BF2BD4();
    v34 = sub_274BF5494();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49[0] = v36;
      *v35 = 136315138;
      sub_274AF4BB8(&qword_280989668, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v37 = sub_274BF5BE4();
      v39 = v38;
      (*(v13 + 8))(v15, v12);
      v40 = sub_274AF4F60(v37, v39, v49);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_274AD4000, v33, v34, "Failed to access security scoped resource at %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x277C664A0](v36, -1, -1);
      MEMORY[0x277C664A0](v35, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    (*(v45 + 8))(v6, v46);
    v32 = 1;
    v31 = v48;
  }

  v41 = sub_274BF2644();
  return __swift_storeEnumTagSinglePayload(v31, v32, 1, v41);
}

uint64_t sub_274AF25B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_274BF5B24();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274AF2680(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_274BF5CD4();
  a2(v5, a1);
  return sub_274BF5D44();
}

uint64_t sub_274AF26D4(uint64_t a1)
{
  sub_274BF5CD4();
  sub_274BF5D04();
  return sub_274BF5D44();
}

uint64_t sub_274AF274C(uint64_t a1, char a2)
{
  sub_274BF4FF4();
}

uint64_t sub_274AF27B4(uint64_t a1, char a2)
{
  sub_274BF4FF4();
}

uint64_t sub_274AF28AC(uint64_t a1, char a2)
{
  sub_274BF4FF4();
}

uint64_t sub_274AF2980(uint64_t a1, char a2)
{
  sub_274BF4FF4();
}

uint64_t sub_274AF2B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_274BF5CD4();
  a3(v6, a2);
  return sub_274BF5D44();
}

uint64_t sub_274AF2B98(uint64_t a1, char a2)
{
  sub_274BF5CD4();
  sub_274BF4FF4();

  return sub_274BF5D44();
}

uint64_t sub_274AF2C14(uint64_t a1, unsigned __int8 a2)
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](a2);
  return sub_274BF5D44();
}

uint64_t sub_274AF2C58(uint64_t a1, uint64_t a2)
{
  sub_274BF5CD4();
  sub_274BF5D04();
  return sub_274BF5D44();
}

uint64_t sub_274AF2C9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_274AF25B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_274AF2CCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274AE5590(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_274AF2D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274AF25B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274AF2D48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AF2604();
  *a1 = result;
  return result;
}

uint64_t sub_274AF2D70(uint64_t a1)
{
  v2 = sub_274AF61E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274AF2DAC(uint64_t a1)
{
  v2 = sub_274AF61E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274AF2DE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v15 = a4;
  v6 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989780, &qword_274BFA458);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274AF61E8();
  sub_274BF5D84();
  if (a5)
  {
    LOBYTE(v16) = 1;
    sub_274BF5B84();
  }

  else
  {
    v16 = a2;
    v17 = v6 & 1;
    v18 = v15;
    v19 = 0;
    sub_274AF623C();
    sub_274BF5BB4();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_274AF2F84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656D75636F64 && a2 == 0xE900000000000073;
  if (v4 || (sub_274BF5C24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567616D49736168 && a2 == 0xE800000000000000;
    if (v6 || (sub_274BF5C24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047348 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_274BF5C24();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_274AF30A4(unsigned __int8 a1)
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](a1);
  return sub_274BF5D44();
}

uint64_t sub_274AF30EC(char a1)
{
  if (!a1)
  {
    return 0x746E656D75636F64;
  }

  if (a1 == 1)
  {
    return 0x6567616D49736168;
  }

  return 1954047348;
}

uint64_t sub_274AF3164(uint64_t a1)
{
  v2 = *v1;
  sub_274BF5CD4();
  MEMORY[0x277C65580](v2);
  return sub_274BF5D44();
}

uint64_t sub_274AF31A8(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v13[2] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989838, &qword_274BFA678);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274AF6668();
  sub_274BF5D84();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
  sub_274AF66BC();
  sub_274BF5BB4();
  if (!v4)
  {
    LOBYTE(v15) = 1;
    sub_274BF5B94();
    v15 = a4;
    v14 = 2;
    sub_274BF5BB4();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_274AF3388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274AF2F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274AF33B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AF309C();
  *a1 = result;
  return result;
}

uint64_t sub_274AF33D8(uint64_t a1)
{
  v2 = sub_274AF6668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274AF3414(uint64_t a1)
{
  v2 = sub_274AF6668();

  return MEMORY[0x2821FE720](a1, v2);
}

id WFAskLLMFeedbackPresenter.viewControllerForPresentation(controller:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_viewControllerForPresentation);
  if (v1)
  {

    return v1;
  }

  else
  {
    result = sub_274BF5AC4();
    __break(1u);
  }

  return result;
}

uint64_t WFAskLLMFeedbackPresenter.evaluationDidComplete(controller:evaluation:)()
{
  sub_274BF1F54();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14WorkflowUICore25WFAskLLMFeedbackPresenter_accessedURLs;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  v17 = v3 + 16;

  for (i = 0; v11; result = (*(v3 + 8))(v6, v0))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    (*(v3 + 16))(v6, *(v8 + 48) + *(v3 + 72) * (v16 | (v15 << 6)), v0);
    sub_274BF1EF4();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 56 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id WFAskLLMFeedbackPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFAskLLMFeedbackPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_274AF380C()
{
  swift_getObjectType();
  sub_274AF4BB8(&qword_280989600, type metadata accessor for WFAskLLMFeedbackPresenter, &protocol conformance descriptor for WFAskLLMFeedbackPresenter);

  JUMPOUT(0x277C64640);
}

void sub_274AF3898()
{
  swift_getObjectType();
  sub_274AF4BB8(&qword_280989600, type metadata accessor for WFAskLLMFeedbackPresenter, &protocol conformance descriptor for WFAskLLMFeedbackPresenter);

  JUMPOUT(0x277C64630);
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

uint64_t sub_274AF396C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_274AF398C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_274BDAA78(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_274BF2644();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_274AF3A8C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_274BDAA90(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_274AF3B58(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x277C64B10](a1, &v6);
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

uint64_t sub_274AF3BAC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x277C61E50](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_274AF3C00(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x277C64B20](a1, &v7);
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

uint64_t sub_274AF3C58(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x277C61E60](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_274AF3D5C(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x277C655C0](*&a1);
}

uint64_t sub_274AF3DBC@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_3_13();
  *a1 = result;
  return result;
}

uint64_t sub_274AF3DF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_274BDDADC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_274AF3E20(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_274BDB8BC(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_274AF3E48(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_274BDDB08(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_274AF3E78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_274BDDB40(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_274AF3EAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_274BDDB8C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_274AF3EF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_274BDDAA4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_274AF3F8C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_274BDD9B4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_274AF3FC0@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_274AF397C(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

double sub_274AF4024@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_274AF4030(uint64_t a1)
{
  sub_274AF4BB8(&qword_2809897A8, type metadata accessor for Weight, &unk_274BFA1C0);
  sub_274AF4BB8(&qword_2809897B0, type metadata accessor for Weight, &unk_274BFA160);
  sub_274AF62D0();
  return sub_274BF5B04();
}

_DWORD *sub_274AF40F8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_274AF4108@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_274AF4114(uint64_t a1)
{
  sub_274AF4BB8(&qword_2809897F0, type metadata accessor for UILayoutPriority, &unk_274BF9CE8);
  sub_274AF4BB8(&qword_2809897F8, type metadata accessor for UILayoutPriority, &unk_274BF9C88);
  return sub_274BF5B04();
}

uint64_t sub_274AF41D0(uint64_t a1)
{
  sub_274AF4BB8(&qword_280989798, type metadata accessor for WFContentItemListThumbnailOption, &unk_274BFA38C);
  sub_274AF4BB8(&qword_2809897A0, type metadata accessor for WFContentItemListThumbnailOption, &unk_274BFA2B8);

  return sub_274BF5B04();
}

uint64_t sub_274AF428C(uint64_t a1)
{
  sub_274AF4BB8(&qword_280989560, type metadata accessor for WFTextFieldAutocapitalizationType, &unk_274BF94EC);
  sub_274AF4BB8(&qword_280989568, type metadata accessor for WFTextFieldAutocapitalizationType, &unk_274BF948C);

  return sub_274BF5B04();
}

uint64_t sub_274AF4348(uint64_t a1)
{
  sub_274AF4BB8(&qword_280989570, type metadata accessor for WFTextFieldKeyboardType, &unk_274BF9394);
  sub_274AF4BB8(&qword_280989578, type metadata accessor for WFTextFieldKeyboardType, &unk_274BF9334);

  return sub_274BF5B04();
}

uint64_t sub_274AF4404(uint64_t a1)
{
  sub_274AF4BB8(&qword_280989580, type metadata accessor for Key, &unk_274BF957C);
  sub_274AF4BB8(&qword_280989588, type metadata accessor for Key, &unk_274BF9220);

  return sub_274BF5B04();
}

uint64_t sub_274AF44C0(uint64_t a1)
{
  sub_274AF4BB8(&qword_2809897D0, type metadata accessor for TextStyle, &unk_274BF9F54);
  sub_274AF4BB8(&unk_2809897D8, type metadata accessor for TextStyle, &unk_274BF9EF4);

  return sub_274BF5B04();
}

uint64_t sub_274AF457C(uint64_t a1)
{
  sub_274AF4BB8(&unk_2815A2EC0, type metadata accessor for AttributeName, &unk_274BFA3D0);
  sub_274AF4BB8(&qword_2809897E8, type metadata accessor for AttributeName, "I\rd\r");

  return sub_274BF5B04();
}

uint64_t sub_274AF4638(uint64_t a1)
{
  sub_274AF4BB8(&qword_2815A2EE0, type metadata accessor for TraitKey, &unk_274BFA414);
  sub_274AF4BB8(&qword_2809897C8, type metadata accessor for TraitKey, &unk_274BFA04C);

  return sub_274BF5B04();
}

uint64_t sub_274AF46F4(uint64_t a1)
{
  sub_274AF4BB8(&qword_280989800, type metadata accessor for WFWorkflowRunSource, &unk_274BF9B8C);
  sub_274AF4BB8(&qword_280989808, type metadata accessor for WFWorkflowRunSource, &unk_274BF9B34);

  return sub_274BF5B04();
}

uint64_t sub_274AF47B0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_274BF4F04();

  *a2 = v3;
  return result;
}

uint64_t sub_274AF47F8(uint64_t a1)
{
  sub_274AF4BB8(&qword_280989590, type metadata accessor for OptionKey, &unk_274BF9604);
  sub_274AF4BB8(&qword_280989598, type metadata accessor for OptionKey, &unk_274BF9090);

  return sub_274BF5B04();
}

uint64_t type metadata accessor for WFAskLLMFeedbackPresenter(uint64_t a1)
{
  result = qword_280989438;
  if (!qword_280989438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274AF49A4(uint64_t a1)
{
  result = sub_274BF1A24();
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_274AF4BB8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_274AF4F60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_274AF5024(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_274AF5954(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_274AF5024(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_274AF5124(a5, a6);
    *a1 = v9;
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
    result = sub_274BF59B4();
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

uint64_t sub_274AF5124(uint64_t a1, unint64_t a2)
{
  v3 = sub_274AF5170(a1, a2);
  sub_274AF5288(&unk_2883C6638);
  return v3;
}

uint64_t sub_274AF5170(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_274BF5064())
  {
    result = sub_274AF536C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_274BF5964();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_274BF59B4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_274AF5288(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_274AF53DC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_274AF536C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989670, &qword_274BF9690);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_274AF53DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989670, &qword_274BF9690);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_274AF54D0(uint64_t a1, uint64_t a2)
{
  sub_274BF4F44();
  sub_274BF4FF4();
}

uint64_t sub_274AF5524(uint64_t a1, uint64_t a2)
{
  v2 = sub_274BF4F44();
  v4 = v3;
  if (v2 == sub_274BF4F44() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_274BF5C24();
  }

  return v7 & 1;
}

uint64_t sub_274AF55A8(uint64_t a1)
{
  v1 = sub_274BF4F44();
  v2 = MEMORY[0x277C64930](v1);

  return v2;
}

uint64_t sub_274AF55E0(uint64_t a1, id *a2)
{
  result = sub_274BF4F24();
  *a2 = 0;
  return result;
}