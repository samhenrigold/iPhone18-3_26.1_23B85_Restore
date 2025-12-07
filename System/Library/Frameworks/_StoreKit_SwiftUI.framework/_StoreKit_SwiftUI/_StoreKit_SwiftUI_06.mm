void sub_23B9FC744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23B9FC7A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23B9FC890@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = 0;
  v13 = *(a2 + 16);
  v14 = (v7 + 8);
  while (1)
  {
    if (v13 == v12)
    {
      v16 = 1;
      v17 = a3;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v5);
    }

    (*(v7 + 16))(v11, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v5);
    v15 = a1(v11);
    if (v3)
    {
      return (*v14)(v11, v5);
    }

    if (v15)
    {
      break;
    }

    (*v14)(v11, v5);
    ++v12;
  }

  v17 = a3;
  (*(v7 + 32))(a3, v11, v5);
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v5);
}

uint64_t sub_23B9FCA8C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(void)@<X4>, void (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v23 = a5;
  v22 = a6;
  v21 = a3(0);
  OUTLINED_FUNCTION_7();
  v11 = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = 0;
  v16 = *(a2 + 16);
  while (1)
  {
    if (v16 == v15)
    {
      v18 = 1;
      v19 = v22;
      return __swift_storeEnumTagSinglePayload(v19, v18, 1, v21);
    }

    sub_23B9FF800(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15, v14, a4);
    v17 = a1(v14);
    if (v6)
    {
      return sub_23B9FF860(v14, v23);
    }

    if (v17)
    {
      break;
    }

    sub_23B9FF860(v14, v23);
    ++v15;
  }

  v19 = v22;
  sub_23B9FF8B8(v14, v22, a4);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v21);
}

uint64_t sub_23B9FCC00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDCAA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_23B9FCC2C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v9 = OUTLINED_FUNCTION_13_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_15_7();
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    sub_23B979910(v12, &qword_27E197B90, &qword_23BBE3F90);
    __break(1u);
  }

  else
  {
    sub_23B979910(v0, &qword_27E197B90, &qword_23BBE3F90);
    v14 = OUTLINED_FUNCTION_10_8();
    v15(v14);
    swift_getAtKeyPath();
    (*(v3 + 8))(v7, v1);
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_23B9FCDA8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v9 = OUTLINED_FUNCTION_13_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_15_7();
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    sub_23B979910(v12, &qword_27E197B90, &qword_23BBE3F90);
    __break(1u);
  }

  else
  {
    sub_23B979910(v0, &qword_27E197B90, &qword_23BBE3F90);
    v14 = OUTLINED_FUNCTION_10_8();
    v15(v14);
    swift_getAtKeyPath();
    (*(v3 + 8))(v7, v1);
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_23B9FCF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v20;
  a20 = v21;
  v22 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v30 = OUTLINED_FUNCTION_13_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_1();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  sub_23BBDC8F8();
  sub_23B99FCE0(v36, v33, &qword_27E197B90, &qword_23BBE3F90);
  if (__swift_getEnumTagSinglePayload(v33, 1, v22) == 1)
  {
    sub_23B979910(v33, &qword_27E197B90, &qword_23BBE3F90);
    __break(1u);
  }

  else
  {
    sub_23B979910(v36, &qword_27E197B90, &qword_23BBE3F90);
    (*(v24 + 32))(v28, v33, v22);
    swift_getAtKeyPath();
    (*(v24 + 8))(v28, v22);
    OUTLINED_FUNCTION_9_1();
  }
}

void sub_23B9FD0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_0();
  v24 = v23;
  v50 = v25;
  v51 = v26;
  v49 = v27;
  v48 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  OUTLINED_FUNCTION_13_0(v37);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v48 - v39;
  v41 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  v52[0] = v24;
  v52[1] = a21;
  v52[2] = a22;
  v52[3] = a23;
  v42 = type metadata accessor for SubscriptionOfferViewEntitlementLoadingView(0, v52);
  v43 = v42[19];
  *(v36 + v43) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
  swift_storeEnumTagMultiPayload();
  v44 = v36 + v42[20];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  *(v44 + 40) = 0;
  v45 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v45);
  sub_23B9FD298(v40);
  *v36 = v41;
  *(v36 + 8) = v34;
  *(v36 + 16) = v32;
  *(v36 + 24) = v30;
  (*(*(a21 - 8) + 32))(v36 + v42[14], v48, a21);
  *(v36 + v42[15]) = v49;
  v46 = v51;
  *(v36 + v42[18]) = v50;
  sub_23B9FF644(v46, v36 + v42[16]);
  v47 = v36 + v42[17];
  *v47 = 0;
  *(v47 + 8) = 1;
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9FD298(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  sub_23B99FCE0(a1, &v5 - v3, qword_27E199BF8, &qword_23BBE8DF0);
  sub_23BBDBF58();
  return sub_23B979910(a1, qword_27E199BF8, &qword_23BBE8DF0);
}

void sub_23B9FD354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_0();
  v24 = v23;
  v26 = v25;
  v56 = v27;
  v55 = v28;
  v53 = v29;
  v54 = v30;
  v52 = v31;
  v33 = v32;
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  OUTLINED_FUNCTION_13_0(v36);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v51 - v38;
  v40 = *v33;
  v41 = *(v33 + 8);
  v42 = *v26;
  v57[0] = v24;
  v57[1] = a21;
  v57[2] = a22;
  v57[3] = a23;
  v43 = type metadata accessor for SubscriptionOfferViewEntitlementLoadingView(0, v57);
  v44 = v43[19];
  *(v35 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8, &unk_23BBE8170);
  swift_storeEnumTagMultiPayload();
  v45 = v35 + v43[20];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0u;
  *(v45 + 24) = 0u;
  *(v45 + 40) = 0;
  v46 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v46);
  sub_23B9FD298(v39);
  *v35 = v40;
  *(v35 + 8) = v41;
  v47 = v53;
  *(v35 + 16) = v52;
  *(v35 + 24) = v47;
  (*(*(a21 - 8) + 32))(v35 + v43[14], v54, a21);
  *(v35 + v43[15]) = v55;
  *(v35 + v43[18]) = v56;
  v48 = v43[16];
  v49 = type metadata accessor for Subscription(0);
  __swift_storeEnumTagSinglePayload(v35 + v48, 1, 1, v49);
  v50 = v35 + v43[17];
  *v50 = v42;
  *(v50 + 8) = 0;
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9FD534@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_23BBDCDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  if (*(v1 + 8) != 1)
  {
    goto LABEL_4;
  }

  sub_23BAC75B8(*v1, v5);
  v16 = type metadata accessor for Subscription(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v16) == 1)
  {
    sub_23B979910(v5, qword_27E197A68, qword_23BBE3D90);
LABEL_4:
    v17 = type metadata accessor for Subscription(0);
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
  }

  v19 = *(v7 + 16);
  v19(v12, v5, v6);
  sub_23B9FF860(v5, type metadata accessor for Subscription);
  (*(v7 + 32))(v15, v12, v6);
  v19(v9, v15, v6);
  sub_23BBA7878(v9, 0, 1, a1);
  return (*(v7 + 8))(v15, v6);
}

uint64_t sub_23B9FD78C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CF0, &qword_23BBEB2D0);
  sub_23BBDBF68();
  v3 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  v4 = 0;
  if (!__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    v4 = *&v2[*(v3 + 28)];
  }

  sub_23B979910(v2, qword_27E199BF8, &qword_23BBE8DF0);
  return v4;
}

uint64_t sub_23B9FD884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-v7];
  if (*(v2 + 8) == 1)
  {
    v9 = *v2;
    MEMORY[0x28223BE20](v6);
    v10 = *(a1 + 32);
    *&v16[-48] = *(a1 + 16);
    *&v16[-32] = v10;
    *&v16[-16] = v2;

    sub_23B9FCA8C(sub_23B9FF5A4, v9, type metadata accessor for Subscription, type metadata accessor for Subscription, type metadata accessor for Subscription, v8);
    sub_23B9CEC50(v9, 1);
    v11 = type metadata accessor for Subscription(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
    {
      sub_23B979910(v8, qword_27E197A68, qword_23BBE3D90);
      v12 = a2;
      v13 = 1;
    }

    else
    {
      sub_23B9FF8B8(v8, a2, type metadata accessor for Subscription);
      v12 = a2;
      v13 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  }

  else
  {
    v14 = type metadata accessor for Subscription(0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
  }
}

uint64_t sub_23B9FDA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  v12 = v11;
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  type metadata accessor for SubscriptionOfferViewEntitlementLoadingView(0, v18);
  v13 = sub_23B9FD78C();
  if (v14)
  {
    if (v10 == v13 && v14 == v12)
    {

      v16 = 1;
    }

    else
    {
      v16 = sub_23BBDDA88();
    }
  }

  else
  {

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_23B9FDB88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_23B9FD534(&v7 - v1);
  v3 = type metadata accessor for Subscription(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_23B979910(v2, qword_27E197A68, qword_23BBE3D90);
    return 0;
  }

  else
  {
    swift_getKeyPath();
    sub_23B9FCDA8();
    v4 = v5;

    sub_23B9FF860(v2, type metadata accessor for Subscription);
  }

  return v4;
}

uint64_t sub_23B9FDC9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBDCDB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08, &qword_23BBE8F80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  sub_23B9FD534(v8);
  v12 = type metadata accessor for Subscription(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_23B979910(v8, qword_27E197A68, qword_23BBE3D90);
    v13 = sub_23BBD9848();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
    sub_23B9B75B4();
    result = __swift_getEnumTagSinglePayload(v11, 1, v13);
    if (result != 1)
    {
      return sub_23B979910(v11, qword_27E199D08, &qword_23BBE8F80);
    }
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    v15 = sub_23B9FF860(v8, type metadata accessor for Subscription);
    MEMORY[0x23EEB50B0](v15);
    (*(v3 + 8))(v5, v2);
    v16 = sub_23BBD9848();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v16);
    return (*(*(v16 - 8) + 32))(a1, v11, v16);
  }

  return result;
}

uint64_t sub_23B9FDF48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9FDFA8(v2, a1[2], a1[3], a1[4], a1[5], &v6);
  v4 = v6;

  return sub_23B9FE3B8(v4, 0, 0, 2, a2);
}

void *sub_23B9FDFA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v44 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0, &qword_23BBE7740);
  v13 = sub_23BBDA358();
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = sub_23BBDA928();
  v45 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v19 = type metadata accessor for SubscriptionOfferViewEntitlementLoadingView(0, &v53);
  if (*(a1 + v19[15]) == 1 && swift_dynamicCastMetatype())
  {
    v50 = 0;
    sub_23B9AD84C();
    result = sub_23BBDC0D8();
    v53 = result;
  }

  else
  {
    v46 = v15;
    v47 = v13;
    v21 = v19[20];
    v48 = a1;
    v49 = a5;
    v22 = a1 + v21;
    v24 = *v22;
    v23 = *(v22 + 8);
    v26 = *(v22 + 16);
    v25 = *(v22 + 24);
    v27 = *(v22 + 32);
    if (*(v22 + 40) == 1)
    {
      v53 = *v22;
      v54 = v23;
      v55 = v26;
      v56 = v25;
      v57 = v27;
    }

    else
    {
      v41 = *(v22 + 24);

      sub_23BBDD5A8();
      v28 = sub_23BBDB338();
      v42 = a6;
      v29 = v28;
      sub_23BBD9978();

      a6 = v42;
      sub_23BBDA918();
      swift_getAtKeyPath();
      v30 = sub_23B9AD3D4(v24, v23, v26, v41, v27, 0);
      (*(v45 + 8))(v18, v16, v30);
    }

    v31 = swift_dynamicCastMetatype();
    v33 = v47;
    v32 = v48;
    v34 = v46;
    if (v31 || swift_dynamicCastMetatype())
    {
      sub_23B9AD794();
      v35 = v49;
      sub_23BBDB8A8();
      v36 = sub_23B97B518(&qword_27E1991E0, &qword_27E1991D0, &qword_23BBE7740, MEMORY[0x277CE0740]);
      v51 = v35;
      v52 = v36;
      swift_getWitnessTable();
      v37 = v34;
      v38 = v33;
    }

    else
    {
      v39 = v43;
      (*(v44 + 16))(v43, v32 + v19[14], a3);
      v37 = v39;
      v38 = a3;
    }

    result = sub_23BAC7CC4(v37, v38, &v53);
  }

  *a6 = v53;
  return result;
}

uint64_t sub_23B9FE3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  v14 = v13[8];
  v15 = sub_23BBDCC88();
  __swift_storeEnumTagSinglePayload(a5 + v14, 1, 1, v15);
  v16 = type metadata accessor for Subscription(0);
  __swift_storeEnumTagSinglePayload(a5, 1, 1, v16);
  v17 = v13[5];
  v18 = type metadata accessor for SubscriptionComparator.Compared(0);
  __swift_storeEnumTagSinglePayload(a5 + v17, 1, 1, v18);
  v19 = sub_23BBDCDB8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v19);
  v20 = v13[12];
  __swift_storeEnumTagSinglePayload(a5 + v20, 1, 1, v19);
  v21 = (a5 + v13[6]);
  *v21 = 0;
  v21[1] = 0;
  *(a5 + v13[9]) = a1;
  v22 = (a5 + v13[7]);
  *v22 = 0;
  v22[1] = 0;
  v23 = a5 + v13[10];
  *v23 = a2;
  *(v23 + 8) = a3;
  *(v23 + 16) = a4;
  *(a5 + v13[11]) = MEMORY[0x277D84F90];
  return sub_23B9FF5CC(v12, a5 + v20);
}

void sub_23B9FE544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v97 = v25;
  sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v95 = v27;
  v96 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v94 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CA8, &unk_23BBE8F10);
  OUTLINED_FUNCTION_13_0(v30);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_13_3(&v79 - v32);
  v33 = sub_23BBDC5F8();
  v34 = OUTLINED_FUNCTION_13_9(v33, &v109);
  v84 = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v37 - v36);
  v98 = v24;
  v83 = v24 + 5;
  v38 = v24[2];
  v39 = v24[4];
  type metadata accessor for StaticSubscriptionOfferView(255, v38, v39, v40);
  sub_23BBDACE8();
  v108 = OUTLINED_FUNCTION_6_10();
  v109 = MEMORY[0x277CE11C0];
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  v41 = sub_23BBDC098();
  OUTLINED_FUNCTION_7();
  v88 = v42;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v43);
  v80 = &v79 - v44;
  type metadata accessor for SubscriptionEntitlementValidator(255);
  v45 = sub_23BBDA358();
  OUTLINED_FUNCTION_13_9(v45, &a13);
  v91 = v46;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_13_3(&v79 - v48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CE8, &unk_23BBE8F40);
  v89 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v93 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_1();
  v85 = v51 - v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_13_3(&v79 - v54);
  *&v55 = v38;
  *(&v55 + 1) = v24[3];
  *&v56 = v39;
  *(&v56 + 1) = *v83;
  v99 = v55;
  v100 = v56;
  v101 = v20;
  sub_23B9C2924(*&v38);
  sub_23BBDC088();
  v57 = sub_23B9FDB88();
  v59 = v58;
  v60 = v84;
  v61 = v86;
  (*(v84 + 104))(v86, *MEMORY[0x277CDD090], v33);
  v62 = *(v20 + 8);
  v106 = *v20;
  v107 = v62;
  sub_23B9CEC34(v106, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CF0, &qword_23BBEB2D0);
  v63 = v92;
  sub_23BBDBF88();
  OUTLINED_FUNCTION_11_7();
  WitnessTable = swift_getWitnessTable();
  v65 = v82;
  v66 = v80;
  sub_23BB529FC(v57, v59, v61, &v106, v63, v41, WitnessTable, v82);

  sub_23B979910(v63, &qword_27E199CA8, &unk_23BBE8F10);
  sub_23B9CEC50(v106, v107);
  (*(v60 + 8))(v61, v81);
  (*(v88 + 8))(v66, v41);
  swift_getKeyPath();
  v67 = v94;
  sub_23B9FDC9C(v94);
  v69 = sub_23B9CEC6C(v68);
  v104 = WitnessTable;
  v105 = v69;
  v70 = v87;
  v71 = swift_getWitnessTable();
  v72 = v85;
  sub_23BBDB748();

  (*(v95 + 8))(v67, v96);
  (*(v91 + 8))(v65, v70);
  OUTLINED_FUNCTION_1_15();
  v75 = sub_23B97B518(v73, &qword_27E199CE8, &unk_23BBE8F40, v74);
  v102 = v71;
  v103 = v75;
  v76 = v89;
  swift_getWitnessTable();
  v77 = v90;
  sub_23B9D2D88();
  v78 = *(v93 + 8);
  v78(v72, v76);
  sub_23B9D2D88();
  v78(v77, v76);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9FEBA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a6;
  v11 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23BBDA928();
  v88 = *(v13 - 8);
  v89 = v13;
  MEMORY[0x28223BE20](v13);
  v87 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StaticSubscriptionOfferView(0, a2, a4, v17);
  v85 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v84 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v22 - 8);
  v80 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v79 = &v74 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - v27;
  v29 = type metadata accessor for Subscription(0);
  MEMORY[0x28223BE20](v29);
  v81 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199BF8, &qword_23BBE8DF0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v74 - v32;
  v34 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  MEMORY[0x28223BE20](v34);
  v78 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v86 = &v74 - v37;
  v91 = v18;
  v38 = sub_23BBDACE8();
  v93 = *(v38 - 8);
  v94 = v38;
  MEMORY[0x28223BE20](v38);
  v92 = &v74 - v39;
  if (*(a1 + 8) == 1)
  {
    v40 = *a1;
    v76 = a2;
    v98 = a2;
    v99 = a3;
    v74 = a3;
    v77 = a4;
    v100 = a4;
    v101 = a5;
    v75 = a5;
    v41 = type metadata accessor for SubscriptionOfferViewEntitlementLoadingView(0, &v98);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CF0, &qword_23BBEB2D0);
    sub_23BBDBF68();
    if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
    {
      sub_23B9CEC50(v40, 1);
      v42 = qword_27E199BF8;
      v43 = &qword_23BBE8DF0;
      v44 = v33;
    }

    else
    {
      v45 = v86;
      sub_23B9FF8B8(v33, v86, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
      sub_23B9FD534(v28);
      if (__swift_getEnumTagSinglePayload(v28, 1, v29) != 1)
      {
        v61 = v28;
        v62 = v81;
        sub_23B9FF8B8(v61, v81, type metadata accessor for Subscription);
        sub_23B9FD884(v41, v79);
        sub_23B99FCE0(a1 + v41[16], v80, qword_27E197A68, qword_23BBE3D90);
        v63 = v41[18];
        v64 = a1 + v41[17];
        v65 = *v64;
        LOBYTE(v64) = *(v64 + 8);
        v98 = v65;
        LOBYTE(v99) = v64;
        v66 = *(a1 + v63);
        v67 = *(a1 + 16);

        v68 = v45;
        v69 = v82;
        v67(v62);
        sub_23B9FF800(v68, v78, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
        v70 = v84;
        sub_23BA0F648(&v98, v40, v66, v69, v76, v84, v77);
        v71 = v91;
        swift_getWitnessTable();
        v72 = v83;
        sub_23B9D2D88();
        v73 = *(v85 + 8);
        v73(v70, v71);
        sub_23B9D2D88();
        v58 = v92;
        sub_23BA82D64();
        v73(v70, v71);
        v73(v72, v71);
        sub_23B9FF860(v62, type metadata accessor for Subscription);
        sub_23B9FF860(v86, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
        goto LABEL_11;
      }

      sub_23B9FF860(v45, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
      sub_23B9CEC50(v40, 1);
      v42 = qword_27E197A68;
      v43 = qword_23BBE3D90;
      v44 = v28;
    }

    sub_23B979910(v44, v42, v43);
    a4 = v77;
    a5 = v75;
    a3 = v74;
    a2 = v76;
  }

  v98 = a2;
  v99 = a3;
  v100 = a4;
  v101 = a5;
  v46 = type metadata accessor for SubscriptionOfferViewEntitlementLoadingView(0, &v98);
  v47 = a1 + *(v46 + 80);
  v49 = *v47;
  v48 = *(v47 + 8);
  v50 = *(v47 + 32);
  if (*(v47 + 40) == 1)
  {
  }

  else
  {
    v51 = *(v47 + 16);
    v52 = *(v47 + 24);

    sub_23BBDD5A8();
    v53 = sub_23BBDB338();
    sub_23BBD9978();

    v54 = v87;
    sub_23BBDA918();
    swift_getAtKeyPath();
    v55 = sub_23B9AD3D4(v49, v48, v51, v52, v50, 0);
    (*(v88 + 8))(v54, v89, v55);
    v49 = v98;
  }

  v56 = v90;
  sub_23B9FDF48(v46, v90);
  v57 = v49(v56);

  sub_23B9FF860(v56, type metadata accessor for SubscriptionOfferViewStyleConfiguration);
  v98 = v57;
  swift_getWitnessTable();
  v58 = v92;
  sub_23BA82E14();

LABEL_11:
  WitnessTable = swift_getWitnessTable();
  v97 = MEMORY[0x277CE11C0];
  v59 = v94;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v93 + 8))(v58, v59);
}

uint64_t sub_23B9FF578@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDCAA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B9FF5CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9FF644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9FF6B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StaticSubscriptionOfferView(255, *a1, a1[2], a4);
  sub_23BBDACE8();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  sub_23BBDC098();
  type metadata accessor for SubscriptionEntitlementValidator(255);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CE8, &unk_23BBE8F40);
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  sub_23B9CEC6C(v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v5, &qword_27E199CE8, &unk_23BBE8F40, v6);
  return swift_getWitnessTable();
}

uint64_t sub_23B9FF800(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B9FF860(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B9FF8B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return sub_23B99FCE0(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return sub_23BBDC8F8();
}

uint64_t View.manageSubscriptionsSheet(isPresented:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for ManageSubscriptionsSheetModifier(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_9();
  v14 = *(v13 + 20);
  v15 = *MEMORY[0x277CDD148];
  sub_23BBDC7C8();
  OUTLINED_FUNCTION_4_1();
  (*(v16 + 104))(v5 + v14, v15);
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_15(KeyPath);

  MEMORY[0x23EEB43C0](v5, a4, v11, a5);
  return sub_23B9FFCA4(v5);
}

uint64_t type metadata accessor for ManageSubscriptionsSheetModifier(uint64_t a1)
{
  result = qword_27E19ACC8;
  if (!qword_27E19ACC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.manageSubscriptionsSheet(isPresented:subscriptionGroupID:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for ManageSubscriptionsSheetModifier(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_9();
  v17 = (v7 + *(v16 + 20));
  *v17 = a4;
  v17[1] = a5;
  v18 = *MEMORY[0x277CDD150];
  sub_23BBDC7C8();
  OUTLINED_FUNCTION_4_1();
  (*(v19 + 104))(v17, v18);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_15(KeyPath);

  MEMORY[0x23EEB43C0](v7, a6, v14, a7);
  return sub_23B9FFCA4(v7);
}

uint64_t sub_23B9FFC6C()
{
  type metadata accessor for ManageSubscriptionsCoordinator();
  swift_allocObject();
  return sub_23B9EA0D8();
}

uint64_t sub_23B9FFCA4(uint64_t a1)
{
  v2 = type metadata accessor for ManageSubscriptionsSheetModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9FFD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ManageSubscriptionsSheetModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v20 = *v2;
  v21 = v8;
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC118();
  v10 = v18[0];
  v11 = v18[1];
  v12 = v19;
  sub_23BA01AF0(v2, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ManageSubscriptionsSheetModifier);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_23BA01A20(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ACF8, &qword_23BBEB4D8);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AD00, &unk_23BBEB4E0);
  v17 = a2 + *(result + 36);
  *v17 = v10;
  *(v17 + 8) = v11;
  *(v17 + 16) = v12;
  *(v17 + 24) = sub_23BA01A84;
  *(v17 + 32) = v14;
  return result;
}

uint64_t sub_23B9FFEC8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageSubscriptionsSheetModifier(0);
  v5 = v4 - 8;
  v47 = *(v4 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v47 - v8;
  v9 = type metadata accessor for SKLogger(0);
  MEMORY[0x28223BE20](v9);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BBDA928();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a2 + *(v5 + 32);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v18 = v17;
    if (!v17)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v19 = v6;
    v20 = v9;
    v21 = a2;
    v22 = v15;
    v23 = sub_23BBDB338();
    sub_23BBD9978();

    v15 = v22;
    a2 = v21;
    v9 = v20;
    v6 = v19;
    sub_23BBDA918();
    swift_getAtKeyPath();
    v24 = sub_23B9EA1D4(v17, 0);
    (*(v12 + 8))(v14, v11, v24);
    v17 = v52;
    if (!v52)
    {
      goto LABEL_10;
    }
  }

  v25 = [v17 scene];

  if (v25)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      if (v15)
      {
        v27 = v26;
        v28 = sub_23BBDD368();
        v29 = v49;
        __swift_storeEnumTagSinglePayload(v49, 1, 1, v28);
        v30 = v48;
        sub_23BA01AF0(a2, v48, type metadata accessor for ManageSubscriptionsSheetModifier);
        sub_23BBDD308();
        v31 = v25;
        v32 = sub_23BBDD2F8();
        v33 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v34 = (v6 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D85700];
        *(v35 + 16) = v32;
        *(v35 + 24) = v36;
        sub_23BA01A20(v30, v35 + v33);
        *(v35 + v34) = v27;
        sub_23BA00B68(v29, &unk_23BBEB500, v35);

        sub_23B979910(v29, &qword_27E198320, &unk_23BBEEBC0);
      }

      else
      {
      }

      return sub_23BA00480(a2);
    }
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438, &qword_23BBEB4F0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_23BBE7F10;
  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 32) = 0xD000000000000051;
  *(v37 + 40) = 0x800000023BBE0B20;
  sub_23BBDDB98();

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v9, qword_27E1BFC88);
  v39 = v50;
  sub_23BA01AF0(v38, v50, type metadata accessor for SKLogger);
  v40 = sub_23BBD9988();
  v41 = sub_23BBD99A8();
  (*(*(v41 - 8) + 8))(v39, v41);
  v42 = sub_23BBDD598();
  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_23B970000, v40, v42, "Attempting to present an manageSubscriptionsSheet without being in the hierarchy.", v43, 2u);
    MEMORY[0x23EEB6DC0](v43, -1, -1);
  }

  v44 = *(a2 + 8);
  v45 = *(a2 + 16);
  v52 = *a2;
  v53 = v44;
  v54 = v45;
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC0F8();
  return sub_23BA00480(a2);
}

uint64_t sub_23BA00480(uint64_t a1)
{
  v2 = type metadata accessor for ManageSubscriptionsSheetModifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_23BA01AF0(a1, v5, type metadata accessor for ManageSubscriptionsSheetModifier);
  sub_23BBDD308();
  v10 = sub_23BBDD2F8();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_23BA01A20(v5, v12 + v11);
  sub_23BA00B68(v8, &unk_23BBEB540, v12);

  return sub_23B979910(v8, &qword_27E198320, &unk_23BBEEBC0);
}

uint64_t sub_23BA00640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23BBDD308();
  v5[4] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_23BA006D8, v7, v6);
}

uint64_t sub_23BA006D8()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ManageSubscriptionsSheetModifier(0);
  *(v0 + 56) = v2;
  v3 = v1 + *(v2 + 28);
  *(v0 + 64) = *v3;
  *(v0 + 72) = *(v3 + 8);
  *(v0 + 124) = *(v3 + 16);
  *(v0 + 80) = type metadata accessor for ManageSubscriptionsCoordinator();
  OUTLINED_FUNCTION_3_14();
  *(v0 + 88) = sub_23BA02300(v4, v5, &unk_23BBEB470);
  v6 = OUTLINED_FUNCTION_17_7();
  *(v0 + 96) = v6;

  return MEMORY[0x2822009F8](sub_23BA007B0, v6, 0);
}

uint64_t sub_23BA007B0()
{
  OUTLINED_FUNCTION_3_13();
  v0[13] = swift_unknownObjectWeakLoadStrong();
  v1 = v0[5];
  v2 = v0[6];

  return MEMORY[0x2822009F8](sub_23BA00818, v1, v2);
}

uint64_t sub_23BA00818()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 104);

  if (v1)
  {

    OUTLINED_FUNCTION_1_16();

    return v2();
  }

  else
  {
    v4 = *(v0 + 56);
    v5 = sub_23BBD9C48();
    *(v0 + 112) = v5;
    *(v0 + 120) = *(v4 + 20);

    return MEMORY[0x2822009F8](sub_23BA008E0, v5, 0);
  }
}

uint64_t sub_23BA008E0()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BA00954(*(v0 + 24), *(v0 + 16) + *(v0 + 120));

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_23B9E87D4, v1, v2);
}

uint64_t sub_23BA00954(void *a1, uint64_t a2)
{
  v5 = sub_23BBDC7C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a2, v5);
  v13 = sub_23BA02300(&qword_27E19AD08, type metadata accessor for ManageSubscriptionsCoordinator, &unk_23BBEB4A8);
  v14 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v2;
  *(v15 + 3) = v13;
  *(v15 + 4) = v2;
  *(v15 + 5) = a1;
  (*(v6 + 32))(&v15[v14], v8, v5);
  swift_retain_n();
  v16 = a1;
  sub_23BA00B68(v11, &unk_23BBEB520, v15);

  return sub_23B979910(v11, &qword_27E198320, &unk_23BBEEBC0);
}

uint64_t sub_23BA00B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_23BA01FD8(a1, v15 - v7);
  v9 = sub_23BBDD368();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_23B979910(v8, &qword_27E198320, &unk_23BBEEBC0);
  }

  else
  {
    sub_23BBDD358();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = sub_23BBDD2D8();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  if (v12 | v10)
  {
    v15[0] = 0;
    v15[1] = 0;
    v15[2] = v10;
    v15[3] = v12;
  }

  return swift_task_create();
}

uint64_t sub_23BA00D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_23B9F3414;

  return sub_23BA00DE8(a5, a6);
}

uint64_t sub_23BA00DE8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = type metadata accessor for SKLogger(0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BA00E98, v2, 0);
}

uint64_t sub_23BA00E98()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 104);
  swift_unknownObjectWeakAssign();
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 128);
    *(v0 + 16) = *(v1 + 112);
    *(v0 + 24) = v2;
    *(v0 + 32) = v3 & 1;
    *(v0 + 33) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
    sub_23BBDC0F8();
  }

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 136);
  *(v0 + 144) = __swift_project_value_buffer(*(v0 + 112), qword_27E1BFC88);
  OUTLINED_FUNCTION_0_17();
  sub_23BA01AF0(v5, v4, v6);
  v7 = sub_23BBD9988();
  *(v0 + 152) = sub_23BBD99A8();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 8);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4);
  v10 = sub_23BBDD5B8();
  if (os_log_type_enabled(v7, v10))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_8(&dword_23B970000, v11, v12, "Presenting manage subscriptions.");
    OUTLINED_FUNCTION_15_3();
  }

  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *v13 = v0;
  v13[1] = sub_23BA0109C;
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);

  return MEMORY[0x28212C3D8](v15, v14);
}

uint64_t sub_23BA0109C()
{
  OUTLINED_FUNCTION_4_11();
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_23BA01338;
  }

  else
  {
    v4 = sub_23BA011C4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23BA011C4()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  OUTLINED_FUNCTION_0_17();
  sub_23BA01AF0(v4, v3, v5);
  v6 = sub_23BBD9988();
  v1(v3, v2);
  v7 = sub_23BBDD5B8();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_8(&dword_23B970000, v8, v9, "Presenting manage subscriptions completed.");
    OUTLINED_FUNCTION_15_3();
  }

  v10 = *(v0 + 104);

  v11 = *(v10 + 120);
  if (v11)
  {
    v12 = *(v0 + 104);
    v13 = *(v12 + 128);
    *(v0 + 64) = *(v12 + 112);
    *(v0 + 72) = v11;
    *(v0 + 80) = v13 & 1;
    *(v0 + 35) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
    sub_23BBDC0F8();
  }

  swift_unknownObjectWeakAssign();

  OUTLINED_FUNCTION_1_16();

  return v14();
}

uint64_t sub_23BA01338()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);
  OUTLINED_FUNCTION_0_17();
  sub_23BA01AF0(v5, v4, v6);
  v7 = v1;
  v8 = sub_23BBD9988();
  v2(v4, v3);
  v9 = sub_23BBDD598();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = sub_23BBD9658();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_23B970000, v8, v9, "Presenting manage subscriptions failed due to %{public}@.", v10, 0xCu);
    sub_23B979910(v11, &qword_27E19A458, &qword_23BBEB530);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  v13 = *(v0 + 104);

  swift_unknownObjectWeakAssign();
  v14 = *(v13 + 120);
  v15 = *(v0 + 184);
  if (v14)
  {
    v16 = *(v0 + 104);
    v17 = *(v16 + 128);
    *(v0 + 40) = *(v16 + 112);
    *(v0 + 48) = v14;
    *(v0 + 56) = v17 & 1;
    *(v0 + 34) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
    sub_23BBDC0F8();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_16();

  return v18();
}

uint64_t sub_23BA01554(uint64_t *a1)
{
  type metadata accessor for ManageSubscriptionsSheetModifier(255);
  sub_23BBDA358();
  sub_23BA02300(&qword_27E19ACC0, type metadata accessor for ManageSubscriptionsSheetModifier, &unk_23BBEB420);
  return swift_getWitnessTable();
}

uint64_t sub_23BA01604(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23BBDC7C8();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23BA016A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23BBDC7C8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BA01720(uint64_t a1)
{
  sub_23BA017D4();
  if (v1 <= 0x3F)
  {
    sub_23BBDC7C8();
    if (v2 <= 0x3F)
    {
      sub_23BA01824(319);
      if (v3 <= 0x3F)
      {
        sub_23BA01888(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23BA017D4()
{
  if (!qword_27E19A2A8)
  {
    v0 = sub_23BBDC138();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19A2A8);
    }
  }
}

void sub_23BA01824(uint64_t a1)
{
  if (!qword_27E19ACD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ACE0, &qword_23BBEB418);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19ACD8);
    }
  }
}

void sub_23BA01888(uint64_t a1)
{
  if (!qword_27E19ACE8)
  {
    type metadata accessor for ManageSubscriptionsCoordinator();
    sub_23BA02300(&qword_27E19ACF0, type metadata accessor for ManageSubscriptionsCoordinator, &unk_23BBEB470);
    v1 = sub_23BBD9C58();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19ACE8);
    }
  }
}

uint64_t sub_23BA01938()
{
  type metadata accessor for ManageSubscriptionsSheetModifier(0);
  OUTLINED_FUNCTION_8_3();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 28);
  sub_23BBDC7C8();
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 8))(v3 + v4);
  OUTLINED_FUNCTION_11_10();

  return swift_deallocObject();
}

uint64_t sub_23BA01A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageSubscriptionsSheetModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA01A84()
{
  v2 = OUTLINED_FUNCTION_15_8();
  v3 = *(type metadata accessor for ManageSubscriptionsSheetModifier(v2) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23B9FFEC8(v0, v4);
}

uint64_t sub_23BA01AF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BA01B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_23BBDD308();
  v4[9] = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_23BA01BE8, v6, v5);
}

uint64_t sub_23BA01BE8()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 64);
  type metadata accessor for ManageSubscriptionsSheetModifier(0);
  type metadata accessor for ManageSubscriptionsCoordinator();
  OUTLINED_FUNCTION_3_14();
  sub_23BA02300(v2, v3, &unk_23BBEB470);
  v4 = OUTLINED_FUNCTION_17_7();
  *(v0 + 96) = v4;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0, qword_23BBE9AD0);
  sub_23BBDC118();
  v7 = *(v0 + 48);
  *(v0 + 104) = *(v0 + 40);
  *(v0 + 112) = v7;
  *(v0 + 33) = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_23BA01CF4, v4, 0);
}

uint64_t sub_23BA01CF4()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *(v0 + 33);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  *(v3 + 112) = *(v0 + 104);
  *(v3 + 120) = v2;
  *(v3 + 128) = v1;

  sub_23B9EAA78(v4, v5);

  v6 = *(v0 + 80);
  v7 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_23B9EA4CC, v6, v7);
}

uint64_t sub_23BA01DB0()
{
  type metadata accessor for ManageSubscriptionsSheetModifier(0);
  OUTLINED_FUNCTION_8_3();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v6 = v1 + v3;

  v7 = v0[7];
  sub_23BBDC7C8();
  OUTLINED_FUNCTION_4_1();
  (*(v8 + 8))(v6 + v7);
  sub_23B9EA1D4(*(v6 + v0[8]), *(v6 + v0[8] + 8));
  sub_23B9EA1E0(*(v6 + v0[9]), *(v6 + v0[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_23BA01ED0()
{
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = *(type metadata accessor for ManageSubscriptionsSheetModifier(v1) - 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_10(v5);
  *v6 = v7;
  v6[1] = sub_23BA027BC;
  v8 = OUTLINED_FUNCTION_8_13();

  return sub_23BA00640(v8, v9, v3, v10, v4);
}

uint64_t sub_23BA01FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA02048(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23BA02140;

  return v6(a1);
}

uint64_t sub_23BA02140()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t sub_23BA02224()
{

  return swift_deallocObject();
}

uint64_t sub_23BA0225C()
{
  OUTLINED_FUNCTION_4_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v1[1] = sub_23B9F3414;
  v3 = OUTLINED_FUNCTION_8_13();

  return v4(v3);
}

uint64_t sub_23BA02300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA02348()
{
  v1 = sub_23BBDC7C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23BA0241C()
{
  OUTLINED_FUNCTION_15_8();
  sub_23BBDC7C8();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_10(v4);
  *v5 = v6;
  v5[1] = sub_23B9F3414;
  v7 = OUTLINED_FUNCTION_8_13();

  return sub_23BA00D3C(v7, v8, v1, v2, v3, v9);
}

uint64_t sub_23BA0250C()
{
  type metadata accessor for ManageSubscriptionsSheetModifier(0);
  OUTLINED_FUNCTION_8_3();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = *(v0 + 28);
  sub_23BBDC7C8();
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 8))(v1 + v3 + v4);
  OUTLINED_FUNCTION_11_10();

  return swift_deallocObject();
}

uint64_t sub_23BA025FC()
{
  OUTLINED_FUNCTION_41_0();
  v1 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for ManageSubscriptionsSheetModifier(v1);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_10(v3);
  *v4 = v5;
  v4[1] = sub_23BA027BC;
  v6 = OUTLINED_FUNCTION_8_13();

  return sub_23BA01B50(v6, v7, v2, v8);
}

unint64_t sub_23BA026D8()
{
  result = qword_27E19AD10;
  if (!qword_27E19AD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AD00, &unk_23BBEB4E0);
    sub_23B97B518(&qword_27E19AD18, &qword_27E19ACF8, &qword_23BBEB4D8, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E19A470, &unk_27E19B600, qword_23BBEA470, MEMORY[0x277CE05A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AD10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  v4 = v3 + *(v2 + 28);
  *v4 = sub_23B9FFC6C;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  return result;
}

double OUTLINED_FUNCTION_11_10()
{
  sub_23B9EA1D4(*(v1 + *(v0 + 32)), *(v1 + *(v0 + 32) + 8));
  v2 = (v1 + *(v0 + 36));
  v3 = *v2;
  v4 = v2[1];

  return sub_23B9EA1E0(v3, v4);
}

void OUTLINED_FUNCTION_16_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return sub_23BBD9C48();
}

uint64_t sub_23BA028D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BA02914(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23BA02984@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADC8, &qword_23BBEB748);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADD0, &qword_23BBEB750);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  if (a1)
  {
    *v6 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750, &unk_23BBF5AC0);
    swift_storeEnumTagMultiPayload();
    sub_23BA06038();
    sub_23BBDBA68();
    sub_23B9A8E20(v6, &qword_27E19ADC8);
    sub_23B989918(v9, a2, &qword_27E19ADD0, &qword_23BBEB750);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v7);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  }
}

uint64_t sub_23BA02B3C@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v17[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AD90, &qword_23BBEB728);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AD98, &qword_23BBEB730);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = sub_23BBDAB68();
  v12 = sub_23BBDA9B8();
  v13 = &v10[*(v8 + 36)];
  sub_23BA02984(a2, v13);
  v14 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADA0, &qword_23BBEB738) + 36));
  *v14 = v11;
  v14[1] = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADA8, &qword_23BBEB740);
  (*(*(v15 - 8) + 16))(v10, a1, v15);
  sub_23B989ECC(v10, v7, &qword_27E19AD98, &qword_23BBEB730);
  swift_storeEnumTagMultiPayload();
  sub_23BA05F30();
  sub_23B9A8CB4(&qword_27E19ADB8, &qword_27E19ADA8, &qword_23BBEB740, MEMORY[0x277CE04B0]);
  sub_23BBDACD8();
  return sub_23B9A8E20(v10, &qword_27E19AD98);
}

uint64_t sub_23BA02D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(a2, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a2) = v15[15];
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AD68, &qword_23BBEB670);
  (*(*(v13 - 8) + 16))(a4, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AD70, &qword_23BBEB678);
  *(a4 + *(result + 36)) = a2 & 1;
  return result;
}

double sub_23BA02F24(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x23EEB43C0](&KeyPath, a1, &type metadata for DynamicCloseButtonModifier, a2);

  return result;
}

double sub_23BA02FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissButtonStyle(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (sub_23BBDC2A8())
  {
    if (qword_27E1976F0 != -1)
    {
      swift_once();
    }

    v8 = &qword_27E19AD50;
  }

  else
  {
    if (qword_27E1976E8 != -1)
    {
      swift_once();
    }

    v8 = &qword_27E19AD38;
  }

  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);

  v14[1] = a1;
  v14[2] = a2;
  v14[3] = v9;
  v14[4] = v10;
  v15 = v11;
  *v7 = sub_23BBDC2A8() & 1;
  v12 = *(v4 + 20);
  *&v7[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
  swift_storeEnumTagMultiPayload();
  sub_23BA067AC();
  sub_23BA06800(&qword_27E19AE80, type metadata accessor for DismissButtonStyle, &unk_23BBEBB98);
  sub_23BBDB738();
  sub_23BA06848(v7);

  return result;
}

double sub_23BA03190@<D0>(uint64_t a1@<X8>)
{
  sub_23BA031D0(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

double sub_23BA031D0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBD9E48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  if (qword_27E1977E0 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D0 == 1 || byte_27E1A04D0 == 3 && (storekit_dyld_fall_2024_os_versions(), dyld_program_sdk_at_least()))
  {
    sub_23B9B762C();
    v9 = *(v3 + 32);
    v9(v5, v8, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    v9((v11 + v10), v5, v2);
    v18 = sub_23BA07AEC;
    v19 = v11;
    v20 = 0;
  }

  else
  {
    sub_23B9B762C();
    v12 = *(v3 + 32);
    v12(v5, v8, v2);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    v12((v14 + v13), v5, v2);
    v18 = sub_23BA063CC;
    v19 = v14;
    v20 = 1;
  }

  sub_23BA063D0();
  sub_23BA06424();
  sub_23BBDACD8();
  result = *&v21;
  v16 = v22;
  *a1 = v21;
  *(a1 + 16) = v16;
  return result;
}

uint64_t sub_23BA03438()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AEF0, &qword_23BBEBC20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AEF8, &qword_23BBEBC28);
  sub_23BBDA9F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF00, &qword_23BBEBC30);
  sub_23BA07024();
  swift_getOpaqueTypeConformance2();
  sub_23BA06800(&qword_27E19AF20, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  swift_getOpaqueTypeConformance2();
  return sub_23BBDBFA8();
}

uint64_t sub_23BA03594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_23BBDA9F8();
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF00, &qword_23BBEBC30);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AEF8, &qword_23BBEBC28);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  sub_23BBDBE98();
  v14 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v16 = &v9[*(v7 + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = sub_23BA07024();

  sub_23BBDB6D8();
  sub_23B9A8E20(v9, &qword_27E19AF00);
  sub_23BBDA9E8();
  v24 = v7;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  sub_23BA06800(&qword_27E19AF20, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v18 = v21;
  sub_23BBDB6E8();
  (*(v22 + 8))(v6, v18);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_23BA038A0@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23BA03988@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDBE38();
  *a1 = result;
  return result;
}

uint64_t sub_23BA039C0()
{
  result = sub_23BBDB418();
  xmmword_27E19AD20 = result;
  byte_27E19AD30 = 1;
  return result;
}

void sub_23BA039EC()
{
  v0 = sub_23BBDB428();
  sub_23BBDB478();
  qword_27E19AD38 = v0;
  qword_27E19AD40 = v1;
  byte_27E19AD48 = 0;
}

void sub_23BA03A28()
{
  v0 = sub_23BBDB4E8();
  sub_23BBDB498();
  qword_27E19AD50 = v0;
  qword_27E19AD58 = v1;
  byte_27E19AD60 = 0;
}

uint64_t sub_23BA03AA0@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v30 = sub_23BBDA1C8();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_23BBDA408();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE88, &unk_23BBEB9F0);
  v25 = *(v13 - 8);
  v26 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = qword_27E1976E0;

  if (v16 != -1)
  {
    swift_once();
  }

  v31 = a1;
  v32 = a2;
  v33 = xmmword_27E19AD20;
  v34 = byte_27E19AD30;

  sub_23BBDA3F8();
  v17 = sub_23BA067AC();
  v18 = sub_23BA06800(&qword_27E19AE90, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_23BBDB728();
  (*(v10 + 8))(v12, v9);

  sub_23BBDA1B8();
  v19 = v27;
  sub_23BBDA198();
  v20 = *(v28 + 8);
  v21 = v30;
  v20(v8, v30);
  v31 = &type metadata for UnstyledDismissButton;
  v32 = v9;
  *&v33 = v17;
  *(&v33 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_23BBDB818();
  v20(v19, v21);
  return (*(v25 + 8))(v15, v22);
}

void sub_23BA03E58(SEL *a1@<X1>, SEL *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = objc_opt_self();
  v8 = [v7 *a1];
  sub_23BBDBCA8();
  v9 = [v7 *a2];
  sub_23BBDBCA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270, &unk_23BBE65E0);
  sub_23B987F20();
  sub_23B9A8CB4(&qword_27E198298, &qword_27E198270, &unk_23BBE65E0, &unk_23BBEAA18);
  sub_23BBDBDE8();
  v10 = sub_23BBDBD58();

  *a3 = v10;
}

__n128 sub_23BA03F9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE30, &qword_23BBEB898);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE38, &unk_23BBEB8A0);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE40, &qword_23BBF3740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BBE94D0;
  v9 = sub_23BBDB3A8();
  *(inited + 32) = v9;
  v10 = sub_23BBDB3E8();
  *(inited + 33) = v10;
  v11 = sub_23BBDB3D8();
  sub_23BBDB3D8();
  if (sub_23BBDB3D8() != v9)
  {
    v11 = sub_23BBDB3D8();
  }

  sub_23BBDB3D8();
  if (sub_23BBDB3D8() != v10)
  {
    v11 = sub_23BBDB3D8();
  }

  if (qword_27E197710 != -1)
  {
    swift_once();
  }

  v12 = byte_27E1BFCC0;
  v13 = 0uLL;
  v14 = 0uLL;
  if ((byte_27E1BFCC0 & 1) == 0)
  {
    sub_23BBD9B18();
    *(&v14 + 1) = v15;
    v13.n128_u64[1] = v16;
  }

  v19 = v14;
  v20 = v13;
  sub_23B989918(v6, a2, &qword_27E19AE30, &qword_23BBEB898);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE48, &qword_23BBEB8B0) + 36);
  *v17 = v11;
  result = v20;
  *(v17 + 24) = v19;
  *(v17 + 8) = result;
  *(v17 + 40) = v12;
  return result;
}

double sub_23BA041BC()
{
  v15 = sub_23BBDA928();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = sub_23BBD9BF8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DismissButtonStyle(0);
  sub_23B989ECC(v0 + *(v11 + 20), v6, qword_27E197E68, &qword_23BBE8360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v15);
  }

  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277CDF3C0])
  {
    return 0.4;
  }

  (*(v8 + 8))(v10, v7);
  return 0.2;
}

double sub_23BA0447C()
{
  v16 = sub_23BBDA928();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68, &qword_23BBE8360);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = sub_23BBD9BF8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DismissButtonStyle(0);
  sub_23B989ECC(v0 + *(v11 + 20), v6, qword_27E197E68, &qword_23BBE8360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 0.0;
  if (v13 != *MEMORY[0x277CDF3C0])
  {
    (*(v8 + 8))(v10, v7, 0.0);
    return -0.025;
  }

  return result;
}

uint64_t sub_23BA04734@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF28, &qword_23BBEBC78);
  v46 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v6 = &v44 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF30, &qword_23BBEBC80);
  v45 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v8 = &v44 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF38, &qword_23BBEBC88);
  MEMORY[0x28223BE20](v48);
  v50 = &v44 - v9;
  v47 = sub_23BBDACF8();
  v10 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF40, &qword_23BBEBC90);
  MEMORY[0x28223BE20](v13);
  v15 = (&v44 - v14);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF48, &qword_23BBEBC98);
  v16 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v19 = &v44 - v18;
  if (*v3)
  {
    MEMORY[0x28223BE20](v17);
    *(&v44 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF50, &qword_23BBEBCA0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF58, &qword_23BBEBCA8);
    v21 = sub_23BA07118();
    v22 = sub_23BA07328();
    v54 = v20;
    v55 = MEMORY[0x277CE1120];
    v56 = v21;
    v57 = v22;
    swift_getOpaqueTypeConformance2();
    v23 = sub_23BBDAE68();
    MEMORY[0x28223BE20](v23);
    *(&v44 - 2) = a1;
    *(&v44 - 1) = v3;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AFA0, &qword_23BBEBCC8);
    v25 = sub_23B9A8CB4(&qword_27E19AFA8, &qword_27E19AF28, &qword_23BBEBC78, MEMORY[0x277CE0480]);
    v26 = sub_23BA07384(&qword_27E19AFB0, &qword_27E19AFA0, &qword_23BBEBCC8, sub_23BA07404);
    v27 = v8;
    v28 = v51;
    sub_23BBDB7B8();
    (*(v46 + 8))(v6, v28);
    v29 = v45;
    v30 = v52;
    (*(v45 + 16))(v50, v27, v52);
    swift_storeEnumTagMultiPayload();
    v31 = sub_23BA07574();
    v32 = sub_23BA06800(&qword_27E19B030, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
    v54 = v13;
    v55 = v47;
    v56 = v31;
    v57 = v32;
    swift_getOpaqueTypeConformance2();
    v54 = v28;
    v55 = v24;
    v56 = v25;
    v57 = v26;
    swift_getOpaqueTypeConformance2();
    sub_23BBDACD8();
    return (*(v29 + 8))(v27, v30);
  }

  else
  {
    *v15 = sub_23BBDC318();
    v15[1] = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B038, &qword_23BBEBD08);
    sub_23BA04F6C(v15 + *(v35 + 44));
    *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B008, &qword_23BBEBCF0) + 36)) = 0;
    v36 = v15 + *(v13 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B028, &qword_23BBEBD00);
    sub_23BBDA518();
    *v36 = 0;
    sub_23BBDA558();
    v37 = sub_23BA07574();
    v38 = sub_23BA06800(&qword_27E19B030, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
    v39 = v47;
    sub_23BBDB758();
    (*(v10 + 8))(v12, v39);
    sub_23B9A8E20(v15, &qword_27E19AF40);
    v40 = v49;
    (*(v16 + 16))(v50, v19, v49);
    swift_storeEnumTagMultiPayload();
    v54 = v13;
    v55 = v39;
    v56 = v37;
    v57 = v38;
    swift_getOpaqueTypeConformance2();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AFA0, &qword_23BBEBCC8);
    v42 = sub_23B9A8CB4(&qword_27E19AFA8, &qword_27E19AF28, &qword_23BBEBC78, MEMORY[0x277CE0480]);
    v43 = sub_23BA07384(&qword_27E19AFB0, &qword_27E19AFA0, &qword_23BBEBCC8, sub_23BA07404);
    v54 = v51;
    v55 = v41;
    v56 = v42;
    v57 = v43;
    swift_getOpaqueTypeConformance2();
    sub_23BBDACD8();
    return (*(v16 + 8))(v19, v40);
  }
}

uint64_t sub_23BA04F6C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = sub_23BBDA308();
  v50 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_23BBDB068();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B040, &qword_23BBEBD10);
  MEMORY[0x28223BE20](v45);
  v6 = &v44 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B048, &qword_23BBEBD18);
  MEMORY[0x28223BE20](v48);
  v8 = &v44 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B050, &qword_23BBEBD20);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B058, &qword_23BBEBD28);
  MEMORY[0x28223BE20](v12);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  sub_23BBDC278();
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B060, &qword_23BBEBD30) + 56)] = 256;
  v17 = sub_23BA0447C();
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B068, &qword_23BBEBD38) + 36)] = v17;
  if (qword_27E197718 != -1)
  {
    swift_once();
  }

  sub_23BBDC318();
  sub_23BBD9DE8();
  v18 = v16;
  v19 = &v16[*(v12 + 36)];
  v20 = v58;
  *v19 = v57;
  *(v19 + 1) = v20;
  *(v19 + 2) = v59;
  sub_23BBDB078();
  v21 = sub_23BBDAF28();
  v22 = 1.0;
  if (sub_23BBDB088())
  {
    v22 = sub_23BA041BC();
  }

  (*(v2 + 32))(v6, v4, v47);
  v23 = &v6[*(v45 + 36)];
  *v23 = v21;
  *(v23 + 1) = v22;
  v24 = 1.0;
  if (sub_23BBDB088())
  {
    if (qword_27E197720 != -1)
    {
      swift_once();
    }

    v24 = *&qword_27E1BFCD0;
  }

  sub_23BBDC438();
  v26 = v25;
  v28 = v27;
  sub_23B989918(v6, v8, &qword_27E19B040, &qword_23BBEBD10);
  v29 = &v8[*(v48 + 36)];
  *v29 = v24;
  v29[1] = v24;
  *(v29 + 2) = v26;
  *(v29 + 3) = v28;
  v30 = v50;
  v31 = v52;
  v32 = v55;
  (*(v50 + 104))(v52, *MEMORY[0x277CDF9D8], v55);
  sub_23BA07384(&qword_27E19B070, &qword_27E19B048, &qword_23BBEBD18, sub_23BA07710);
  v33 = v46;
  sub_23BBDB888();
  (*(v30 + 8))(v31, v32);
  sub_23B9A8E20(v8, &qword_27E19B048);
  v34 = v18;
  v35 = v49;
  sub_23B989ECC(v18, v49, &qword_27E19B058, &qword_23BBEBD28);
  v36 = v51;
  v37 = *(v51 + 16);
  v39 = v53;
  v38 = v54;
  v37(v54, v33, v53);
  v40 = v56;
  sub_23B989ECC(v35, v56, &qword_27E19B058, &qword_23BBEBD28);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B080, &qword_23BBEBD40);
  v37((v40 + *(v41 + 48)), v38, v39);
  v42 = *(v36 + 8);
  v42(v33, v39);
  sub_23B9A8E20(v34, &qword_27E19B058);
  v42(v38, v39);
  return sub_23B9A8E20(v35, &qword_27E19B058);
}

uint64_t sub_23BA055EC()
{
  v0 = sub_23BBDC0C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF70, &unk_23BBFFD50);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF68, &unk_23BBEBCB0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF58, &qword_23BBEBCA8);
  MEMORY[0x28223BE20](v20);
  v11 = &v17 - v10;
  sub_23BBDB078();
  if (qword_27E197718 != -1)
  {
    swift_once();
  }

  sub_23BBDC318();
  sub_23BBD9DE8();
  v12 = &v9[*(v7 + 36)];
  v13 = v22;
  *v12 = v21;
  *(v12 + 1) = v13;
  *(v12 + 2) = v23;
  v19 = v7;
  v14 = *MEMORY[0x277CDF9F0];
  v15 = sub_23BBDA308();
  (*(*(v15 - 8) + 104))(v6, v14, v15);
  sub_23BA06800(&qword_27E198F50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_23BBDCF38();
  if (result)
  {
    sub_23BA0726C();
    v18 = v0;
    sub_23B9A8CB4(&qword_27E19AF80, &qword_27E19AF70, &unk_23BBFFD50, MEMORY[0x277D84470]);
    sub_23BBDB898();
    sub_23B9A8E20(v6, &qword_27E19AF70);
    sub_23B9A8E20(v9, &qword_27E19AF68);
    v11[*(v20 + 36)] = 0;
    sub_23BBDC0A8();
    sub_23BA07118();
    sub_23BA07328();
    sub_23BBDB7D8();
    (*(v1 + 8))(v3, v18);
    return sub_23B9A8E20(v11, &qword_27E19AF58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BA059C8()
{
  MEMORY[0x23EEB4B20](0.5, 0.4, 0.0);
  sub_23BBDC338();

  return sub_23BBD9CA8();
}

uint64_t sub_23BA05A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AFD0, &qword_23BBEBCD8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AFC0, &qword_23BBEBCD0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  if (sub_23BBDB088())
  {
    v11 = 0.09;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AFE0, &qword_23BBEBCE0);
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  *&v7[*(v5 + 44)] = v11;
  v13 = sub_23BBDAEF8();
  v14 = 1.0;
  if (sub_23BBDB088())
  {
    v14 = sub_23BA041BC();
  }

  sub_23B989918(v7, v10, &qword_27E19AFD0, &qword_23BBEBCD8);
  v15 = &v10[*(v8 + 36)];
  *v15 = v13;
  *(v15 + 1) = v14;
  v16 = 1.0;
  if (sub_23BBDB088())
  {
    if (qword_27E197720 != -1)
    {
      swift_once();
    }

    v16 = *&qword_27E1BFCD0;
  }

  sub_23BBDC438();
  v18 = v17;
  v20 = v19;
  sub_23B989918(v10, a2, &qword_27E19AFC0, &qword_23BBEBCD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AFA0, &qword_23BBEBCC8);
  v22 = (a2 + *(result + 36));
  *v22 = v16;
  v22[1] = v16;
  *(v22 + 2) = v18;
  *(v22 + 3) = v20;
  return result;
}

uint64_t sub_23BA05CA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA16F7C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BA05CD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA16F7C();
  *a1 = result & 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CloseButtonModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BA05DCCLL);
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

unint64_t sub_23BA05E08()
{
  result = qword_27E19AD78;
  if (!qword_27E19AD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AD70, &qword_23BBEB678);
    sub_23B9A8CB4(&qword_27E19AD80, &qword_27E19AD68, &qword_23BBEB670, MEMORY[0x277CE04B0]);
    sub_23BA05EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AD78);
  }

  return result;
}

unint64_t sub_23BA05EC0()
{
  result = qword_27E19AD88;
  if (!qword_27E19AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AD88);
  }

  return result;
}

unint64_t sub_23BA05F30()
{
  result = qword_27E19ADB0;
  if (!qword_27E19ADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AD98, &qword_23BBEB730);
    sub_23B9A8CB4(&qword_27E19ADB8, &qword_27E19ADA8, &qword_23BBEB740, MEMORY[0x277CE04B0]);
    sub_23B9A8CB4(&qword_27E19ADC0, &qword_27E19ADA0, &qword_23BBEB738, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ADB0);
  }

  return result;
}

unint64_t sub_23BA06038()
{
  result = qword_27E19ADD8;
  if (!qword_27E19ADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ADC8, &qword_23BBEB748);
    sub_23BA06800(&qword_27E19ADE0, type metadata accessor for LinkCheckedEnvironmentActionDismissButton, &unk_23BBEB848);
    sub_23BA06114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ADD8);
  }

  return result;
}

unint64_t sub_23BA06114()
{
  result = qword_27E19ADE8;
  if (!qword_27E19ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ADE8);
  }

  return result;
}

uint64_t sub_23BA0618C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADF0, &unk_23BBEB7B0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BA061F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADF0, &unk_23BBEB7B0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_23BA0624C(uint64_t a1)
{
  sub_23BA06AD0(319, &qword_27E19AE08, MEMORY[0x277CDD848]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23BA062D8()
{
  result = qword_27E19AE10;
  if (!qword_27E19AE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AE18, &qword_23BBEB7F0);
    sub_23BA05F30();
    sub_23B9A8CB4(&qword_27E19ADB8, &qword_27E19ADA8, &qword_23BBEB740, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AE10);
  }

  return result;
}

unint64_t sub_23BA063D0()
{
  result = qword_27E19AE20;
  if (!qword_27E19AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AE20);
  }

  return result;
}

unint64_t sub_23BA06424()
{
  result = qword_27E19AE28;
  if (!qword_27E19AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AE28);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  sub_23BBD9E48();
  OUTLINED_FUNCTION_4_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

unint64_t sub_23BA06580()
{
  result = qword_27E19AE50;
  if (!qword_27E19AE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AE58, &qword_23BBEB910);
    sub_23BA063D0();
    sub_23BA06424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AE50);
  }

  return result;
}

unint64_t sub_23BA06610()
{
  result = qword_27E19AE60;
  if (!qword_27E19AE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AE48, &qword_23BBEB8B0);
    sub_23BA0669C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AE60);
  }

  return result;
}

unint64_t sub_23BA0669C()
{
  result = qword_27E19AE68;
  if (!qword_27E19AE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AE30, &qword_23BBEB898);
    sub_23B9A8CB4(&qword_27E19AE70, &qword_27E19AE38, &unk_23BBEB8A0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AE68);
  }

  return result;
}

unint64_t sub_23BA067AC()
{
  result = qword_27E19AE78;
  if (!qword_27E19AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AE78);
  }

  return result;
}

uint64_t sub_23BA06800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA06848(uint64_t a1)
{
  v2 = type metadata accessor for DismissButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA068B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE98, qword_23BBFF7E0);
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_23BA06958(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE98, qword_23BBFF7E0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BA069E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23BA06A80(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_23BA06AD0(319, &qword_27E197F08, MEMORY[0x277CDF3E0]);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA06A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27E19AEB0)
  {
    v4 = type metadata accessor for IdiomValue(0, &type metadata for DismissButtonStyle.Variant, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27E19AEB0);
    }
  }
}

void sub_23BA06AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBD9C18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DismissButtonStyle.Variant(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BA06BF0);
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

uint64_t sub_23BA06C48(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BA06C88(uint64_t result, int a2, int a3)
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

unint64_t sub_23BA06CE0()
{
  result = qword_27E19AEB8;
  if (!qword_27E19AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AEC0, &qword_23BBEBA78);
    type metadata accessor for DismissButtonStyle(255);
    sub_23BA067AC();
    sub_23BA06800(&qword_27E19AE80, type metadata accessor for DismissButtonStyle, &unk_23BBEBB98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AEB8);
  }

  return result;
}

unint64_t sub_23BA06DE4()
{
  result = qword_27E19AEC8;
  if (!qword_27E19AEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AED0, &qword_23BBEBA80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AE88, &unk_23BBEB9F0);
    sub_23BBDA408();
    sub_23BA067AC();
    sub_23BA06800(&qword_27E19AE90, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23B9A8CB4(&qword_27E19AED8, &unk_27E19AEE0, &unk_23BBEBA88, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AEC8);
  }

  return result;
}

unint64_t sub_23BA06F90()
{
  result = qword_27E19AEE8;
  if (!qword_27E19AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AEE8);
  }

  return result;
}

unint64_t sub_23BA07024()
{
  result = qword_27E19AF08;
  if (!qword_27E19AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF00, &qword_23BBEBC30);
    sub_23B9A8CB4(&qword_27E19AF10, &qword_27E19AF18, &unk_23BBEBC38, MEMORY[0x277CDEFF0]);
    sub_23B9A8CB4(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AF08);
  }

  return result;
}

unint64_t sub_23BA07118()
{
  result = qword_27E19AF60;
  if (!qword_27E19AF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF58, &qword_23BBEBCA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF68, &unk_23BBEBCB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF70, &unk_23BBFFD50);
    sub_23BA0726C();
    sub_23B9A8CB4(&qword_27E19AF80, &qword_27E19AF70, &unk_23BBFFD50, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_23B9A8CB4(&qword_27E19AF88, &unk_27E19AF90, &unk_23BBEBCC0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AF60);
  }

  return result;
}

unint64_t sub_23BA0726C()
{
  result = qword_27E19AF78;
  if (!qword_27E19AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF68, &unk_23BBEBCB0);
    sub_23BA06800(&qword_27E197E58, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AF78);
  }

  return result;
}

unint64_t sub_23BA07328()
{
  result = qword_27E19AF98;
  if (!qword_27E19AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AF98);
  }

  return result;
}

uint64_t sub_23BA07384(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_2_6(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BA07404()
{
  result = qword_27E19AFB8;
  if (!qword_27E19AFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AFC0, &qword_23BBEBCD0);
    sub_23BA074BC();
    sub_23B9A8CB4(&qword_27E19AFE8, &unk_27E19AFF0, &unk_23BBEBCE8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AFB8);
  }

  return result;
}

unint64_t sub_23BA074BC()
{
  result = qword_27E19AFC8;
  if (!qword_27E19AFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AFD0, &qword_23BBEBCD8);
    sub_23B9A8CB4(&qword_27E19AFD8, &qword_27E19AFE0, &qword_23BBEBCE0, MEMORY[0x277CE0520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AFC8);
  }

  return result;
}

unint64_t sub_23BA07574()
{
  result = qword_27E19AFF8;
  if (!qword_27E19AFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF40, &qword_23BBEBC90);
    sub_23BA0762C();
    sub_23B9A8CB4(&qword_27E19B020, &qword_27E19B028, &qword_23BBEBD00, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19AFF8);
  }

  return result;
}

unint64_t sub_23BA0762C()
{
  result = qword_27E19B000;
  if (!qword_27E19B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B008, &qword_23BBEBCF0);
    sub_23B9A8CB4(&qword_27E19B010, &unk_27E19B018, &unk_23BBEBCF8, MEMORY[0x277CE11A8]);
    sub_23B9A8CB4(&qword_27E19AF88, &unk_27E19AF90, &unk_23BBEBCC0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B000);
  }

  return result;
}

unint64_t sub_23BA07710()
{
  result = qword_27E19B078;
  if (!qword_27E19B078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B040, &qword_23BBEBD10);
    sub_23BA06800(&qword_27E197E58, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_23B9A8CB4(&qword_27E19AFE8, &unk_27E19AFF0, &unk_23BBEBCE8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B078);
  }

  return result;
}

uint64_t sub_23BA077F8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BA0784C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_23BA078F8()
{
  result = qword_27E19B098;
  if (!qword_27E19B098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B0A0, qword_23BBEBD70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF40, &qword_23BBEBC90);
    sub_23BBDACF8();
    sub_23BA07574();
    sub_23BA06800(&qword_27E19B030, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AF28, &qword_23BBEBC78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AFA0, &qword_23BBEBCC8);
    sub_23B9A8CB4(&qword_27E19AFA8, &qword_27E19AF28, &qword_23BBEBC78, MEMORY[0x277CE0480]);
    sub_23BA07384(&qword_27E19AFB0, &qword_27E19AFA0, &qword_23BBEBCC8, sub_23BA07404);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B098);
  }

  return result;
}

uint64_t sub_23BA07AF4()
{
  v1 = v0;
  v2 = sub_23BBDCE08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_23BBDD018();
    v48 = v1;
    v13 = v12;

    sub_23BB02B28(v11, v13);
    sub_23B9A935C();
    sub_23BBDCDE8();
    v14 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v14, v15);
    v16 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v16, v17, v5);
    v18 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v18, v19);
    sub_23BBDCDD8();
    (*(v3 + 8))(v5, v2);
    v20 = OUTLINED_FUNCTION_0_7();
    v22 = sub_23B9A940C(v20, v21);
    v23 = sub_23BB02FE4(v8, v22);
    v25 = v24;
    v1 = v48;

    v26 = sub_23BBD97D8();
    v28 = v27;
    sub_23B9A940C(v23, v25);
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = sub_23B9D4CA8(v26, v28);

  if (v29)
  {
    return 0;
  }

  sub_23BBC909C();
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  v32 = *(v1 + 40);
  v50 = *(v1 + 24);
  v51 = v32;
  v52 = *(v1 + 56);
  v53 = *(v1 + 72);
  v33 = sub_23BBCA150(v30);
  if (!v33)
  {
LABEL_15:

    return 0;
  }

  v34 = v33;
  type metadata accessor for SubscriptionViewDisappearEvent(0);
  v35 = sub_23BBC95BC();
  if (!v35)
  {

    goto LABEL_15;
  }

  v36 = v35;
  v37 = sub_23BB024A0(v34, v31, 1);
  v38 = sub_23BB024A0(v36, v37, 1);
  v39 = &unk_284E56F70;
  v40 = 4;
  do
  {
    v41 = *(v39 - 1);
    v42 = *v39;

    v43 = sub_23BB03A88(v41, v42);
    v45 = v44;

    if (v45)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v49 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010, qword_23BBE7230);
      sub_23BBDD8D8();
      v38 = v49;

      sub_23B9A9318();
      sub_23BBDD8F8();
    }

    v39 += 2;
    --v40;
  }

  while (v40);
  return v38;
}

uint64_t type metadata accessor for SubscriptionViewDisappearEvent(uint64_t a1)
{
  result = qword_27E19B0A8;
  if (!qword_27E19B0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BA07F30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for MintDisappearBaseEvent(0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_23BA07FD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for MintDisappearBaseEvent(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23BA08058(uint64_t a1)
{
  result = type metadata accessor for MintDisappearBaseEvent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA080DC()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BAC6A58();
  return OUTLINED_FUNCTION_15_1(v0);
}

__n128 sub_23BA08104@<Q0>(__n128 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160, &unk_23BBEBF40);
  sub_23BBDC118();
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  a1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_23BA08184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v4 = sub_23BBDAD58();
  v5 = sub_23BBDAA98();
  OUTLINED_FUNCTION_7_18();
  v8 = sub_23BA0E954(v6, v7, MEMORY[0x277CE0168]);
  v45 = v5;
  v9 = *(a1 + 40);
  v47 = v8;
  v48 = v9;
  v32 = *(a1 + 16);
  v46 = *(&v32 + 1);
  v10 = type metadata accessor for SubscriptionStorePickerOptionsGroup(255, &v45);
  OUTLINED_FUNCTION_6_11();
  WitnessTable = swift_getWitnessTable();
  v45 = v5;
  v46 = v10;
  v47 = v5;
  v48 = MEMORY[0x277CE0148];
  v49 = WitnessTable;
  v50 = MEMORY[0x277CE0148];
  v12 = type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView(255, &v45);
  v13 = *(a1 + 32);
  OUTLINED_FUNCTION_4_12();
  v16 = sub_23BA0E954(v14, v15, MEMORY[0x277CE0398]);
  v45 = v32;
  v46 = v4;
  v47 = v12;
  v48 = v13;
  v49 = v16;
  v17 = sub_23BBDC1A8();
  OUTLINED_FUNCTION_3_15();
  v44 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_18();
  v18 = swift_getWitnessTable();
  v20 = type metadata accessor for SubscriptionStorePickerLayoutInternal.LayoutView(0, v17, v18, v19);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v31 - v25;
  v27 = *(a1 + 56);
  *&v28 = v13;
  *(&v28 + 1) = v9;
  v42 = v28;
  v41 = v32;
  v43 = v2;
  v37 = v32;
  v38 = v13;
  v39 = v9;
  v40 = v2;
  v33 = v32;
  v34 = v13;
  v35 = v9;
  v36 = v2;
  sub_23BA6B3D8(sub_23BA0CE90, sub_23BA0CEA0, sub_23BA0CEB0, *(v2 + v27), v17, v23, v18);
  OUTLINED_FUNCTION_5_14();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v29 = *(v21 + 8);
  v29(v23, v20);
  sub_23B9D2D88();
  return (v29)(v26, v20);
}

uint64_t sub_23BA08498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v14 = a1 + *(type metadata accessor for SubscriptionStorePickerControlWrapper(0, v18) + 60);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v15, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(v15) = v18[0];
  }

  return v15 & 1;
}

double sub_23BA08618@<D0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9.n128_u64[0] = a1;
  v9.n128_u64[1] = a2;
  *&v10 = a3;
  *(&v10 + 1) = a4;
  type metadata accessor for SubscriptionStorePickerControlWrapper(0, &v9);
  sub_23BA08104(&v9);
  result = v9.n128_f64[0];
  v8 = v10;
  *a5 = v9;
  *(a5 + 16) = v8;
  *(a5 + 32) = v11;
  return result;
}

uint64_t sub_23BA08674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a6;
  v57 = a2;
  v58 = a3;
  v49 = a3;
  v50 = a5;
  v59 = a4;
  v60 = a5;
  v12 = type metadata accessor for SubscriptionStorePickerControlWrapper(0, &v57);
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v52 = v48 - v13;
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[1] = v17;
  v18 = sub_23BBDAD58();
  v48[3] = v18;
  v19 = sub_23BBDAA98();
  v20 = sub_23BA0E954(&qword_27E199628, MEMORY[0x277CE0150], MEMORY[0x277CE0168]);
  v57 = v19;
  v58 = a3;
  v59 = v20;
  v60 = a5;
  v21 = type metadata accessor for SubscriptionStorePickerOptionsGroup(255, &v57);
  WitnessTable = swift_getWitnessTable();
  v57 = v19;
  v58 = v21;
  v59 = v19;
  v60 = MEMORY[0x277CE0148];
  v61 = WitnessTable;
  v62 = MEMORY[0x277CE0148];
  v23 = type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView(255, &v57);
  v48[2] = v23;
  v24 = sub_23BA0E954(&qword_27E19B150, MEMORY[0x277CE0390], MEMORY[0x277CE0398]);
  v57 = a2;
  v58 = v18;
  v59 = v23;
  v60 = a4;
  v25 = a4;
  v61 = v24;
  v26 = sub_23BBDC1A8();
  v51 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = v48 - v31;
  v33 = v17;
  v34 = a1;
  v35 = a1;
  v36 = a2;
  (*(v14 + 16))(v33, v35, a2, v30);
  v37 = v52;
  v38 = v53;
  v39 = v34;
  v40 = v54;
  (*(v53 + 16))(v52, v39, v54);
  v41 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v42 = swift_allocObject();
  v44 = v49;
  v43 = v50;
  *(v42 + 2) = v36;
  *(v42 + 3) = v44;
  *(v42 + 4) = v25;
  *(v42 + 5) = v43;
  (*(v38 + 32))(&v42[v41], v37, v40);
  v45 = swift_getWitnessTable();
  sub_23BA0E954(&qword_27E19B158, MEMORY[0x277CE03A0], MEMORY[0x277CE03A8]);
  sub_23BBDC198();
  v56 = v45;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v46 = *(v51 + 8);
  v46(v28, v26);
  sub_23B9D2D88();
  return (v46)(v32, v26);
}

uint64_t sub_23BA08B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a2;
  v46 = a7;
  v13 = sub_23BBDAA98();
  v45 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v44 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = sub_23BA0E954(&qword_27E199628, MEMORY[0x277CE0150], MEMORY[0x277CE0168]);
  v54 = v13;
  v55 = a4;
  v19 = a4;
  v37 = a4;
  v56 = v18;
  v57 = a6;
  v20 = type metadata accessor for SubscriptionStorePickerOptionsGroup(255, &v54);
  v42 = v20;
  WitnessTable = swift_getWitnessTable();
  v54 = v13;
  v55 = v20;
  v56 = v13;
  v57 = MEMORY[0x277CE0148];
  v58 = WitnessTable;
  v59 = MEMORY[0x277CE0148];
  v21 = type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView(0, &v54);
  v43 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v40 = &v37 - v25;
  v26 = a3;
  v54 = a3;
  v55 = v19;
  v27 = a5;
  v56 = a5;
  v57 = a6;
  v28 = a6;
  v29 = type metadata accessor for SubscriptionStorePickerControlWrapper(0, &v54);
  v30 = v41;
  v38 = *(v41 + *(v29 + 56));
  v31 = v17;
  sub_23BBDAD78();
  v32 = v44;
  sub_23BBDAD68();
  v48 = v26;
  v49 = v37;
  v50 = v27;
  v51 = v28;
  v52 = a1;
  v53 = v30;
  sub_23BA6B0D8(v32, sub_23BA0D028, v47, v38, v13, v13, v23, MEMORY[0x277CE0148], MEMORY[0x277CE0148], WitnessTable);
  v33 = *(v45 + 8);
  v33(v32, v13);
  v33(v31, v13);
  swift_getWitnessTable();
  v34 = v40;
  sub_23B9D2D88();
  v35 = *(v43 + 8);
  v35(v23, v21);
  sub_23B9D2D88();
  return (v35)(v34, v21);
}

uint64_t sub_23BA08EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a3;
  v30 = a5;
  v31 = a2;
  v32 = a7;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BBDAA98();
  v26 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23BA0E954(&qword_27E199628, MEMORY[0x277CE0150], MEMORY[0x277CE0168]);
  v33.n128_u64[0] = v11;
  v33.n128_u64[1] = a4;
  v34 = v27;
  v35 = a6;
  v14 = type metadata accessor for SubscriptionStorePickerOptionsGroup(0, &v33);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_23BBDAD88();
  v33.n128_u64[0] = v29;
  v33.n128_u64[1] = a4;
  v34 = v30;
  v35 = a6;
  v21 = type metadata accessor for SubscriptionStorePickerControlWrapper(0, &v33);
  v22 = *(v9 + 16);
  v23 = v28;
  v22(v28, v31 + *(v21 + 52), a4);
  sub_23BA08104(&v33);
  sub_23BA09190(v13, v23, &v33, v26, a4, v27, a6, v17);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v24 = *(v15 + 8);
  v24(v17, v14);
  sub_23B9D2D88();
  return (v24)(v20, v14);
}

uint64_t sub_23BA09190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v15 = type metadata accessor for SubscriptionStorePickerOptionsGroup(0, v20);
  (*(*(a5 - 8) + 32))(a8 + v15[13], a2, a5);
  v16 = a8 + v15[14];
  v17 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(a3 + 32);
  v18 = a8 + v15[15];
  result = swift_getKeyPath();
  *v18 = result;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  return result;
}

__n128 sub_23BA092A4@<Q0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  (*(v16 + 32))(a8);
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v17 = type metadata accessor for SubscriptionStorePickerControlWrapper(0, v22);
  (*(*(a5 - 8) + 32))(a8 + v17[13], a1, a5);
  *(a8 + v17[14]) = a2;
  v18 = a8 + v17[15];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a8 + v17[16];
  result = *a3;
  v21 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v21;
  *(v19 + 32) = *(a3 + 32);
  return result;
}

uint64_t sub_23BA093D4()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BAC6A58();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BA093FC(uint64_t a1)
{
  v2 = v1 + *(a1 + 56);
  v3 = *(v2 + 8);
  v4 = *(v2 + 32);
  v7[3] = *v2;
  v7[4] = v3;
  v8 = *(v2 + 16);
  v9 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160, &unk_23BBEBF40);
  MEMORY[0x23EEB48C0](v7, v5);
  return v7[0];
}

uint64_t sub_23BA094DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = *(a1 - 8);
  v44 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v42 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDC1E8();
  v41 = v9;
  v10 = *(a1 + 24);
  sub_23BBDC208();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B1F0, &unk_23BBEBFE0);
  v38 = v10;
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v11 = sub_23BBDC078();
  v48 = *(a1 + 32);
  WitnessTable = swift_getWitnessTable();
  v54 = v6;
  v55 = v10;
  v56 = v11;
  v45 = v48;
  v57 = v48;
  v58 = WitnessTable;
  v37[1] = type metadata accessor for SubscriptionStorePickerOptionsGroup.PickerOption(255, &v54);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310, &unk_23BBE5200);
  v39 = sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E18, &qword_23BBE9230);
  v13 = sub_23BBDA358();
  v40 = v13;
  v14 = sub_23BA0E954(&qword_27E19B1F8, MEMORY[0x277CE12A8], MEMORY[0x277CE12B0]);
  v54 = v6;
  v55 = v9;
  v56 = v13;
  *&v57 = v48;
  *(&v57 + 1) = v14;
  v15 = sub_23BBDC1A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v37 - v21;
  v23 = *(v7 + 16);
  v24 = v43;
  v37[0] = v6;
  v23(v47, v43, v6, v20);
  v25 = v42;
  (*(v3 + 16))(v42, v24, a1);
  v26 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v27 = swift_allocObject();
  *&v28 = v6;
  *(&v28 + 1) = v38;
  v29 = v48;
  *(v27 + 16) = v28;
  *(v27 + 32) = v29;
  (*(v3 + 32))(v27 + v26, v25, a1);
  v30 = swift_getWitnessTable();
  v31 = sub_23B97B518(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
  v52 = v30;
  v53 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_23B97B518(qword_27E199E40, &qword_27E199E18, &qword_23BBE9230, MEMORY[0x277CE0858]);
  v50 = v32;
  v51 = v33;
  v34 = swift_getWitnessTable();
  sub_23BA0E954(&qword_27E197A60, MEMORY[0x277CE12D0], MEMORY[0x277CE12D8]);
  sub_23BBDC198();
  v49 = v34;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v35 = *(v16 + 8);
  v35(v18, v15);
  sub_23B9D2D88();
  return (v35)(v22, v15);
}

uint64_t sub_23BA09AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v107 = a2;
  v105 = a7;
  sub_23BBDC208();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B1F0, &unk_23BBEBFE0);
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v90 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_23BBDC078();
  MEMORY[0x28223BE20](v12);
  v106 = &v85 - v13;
  v14 = swift_getWitnessTable();
  v109 = a3;
  v110 = a4;
  v116 = a3;
  v117 = a4;
  v98 = v12;
  v118 = v12;
  v119 = a5;
  v111 = a5;
  v108 = a6;
  v120 = a6;
  v121 = v14;
  v93 = v14;
  v15 = type metadata accessor for SubscriptionStorePickerOptionsGroup.PickerOption(0, &v116);
  v95 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v94 = &v85 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310, &unk_23BBE5200);
  v97 = v15;
  v17 = sub_23BBDA358();
  v100 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v96 = &v85 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E18, &qword_23BBE9230);
  v102 = v17;
  v19 = sub_23BBDA358();
  v103 = *(v19 - 8);
  v104 = v19;
  MEMORY[0x28223BE20](v19);
  v99 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v101 = &v85 - v22;
  v23 = type metadata accessor for Subscription(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23BBDA288();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760, &unk_23BBE9220);
  MEMORY[0x28223BE20](v33 - 8);
  v88 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v85 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v85 - v39;
  v92 = a1;
  sub_23BBDC1D8();
  sub_23B9D28AC();
  sub_23BBDA298();
  (*(v30 + 8))(v32, v29);
  v91 = v40;
  sub_23B9D2B28(v40, v37);
  v87 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v87);
  if (EnumTagSinglePayload == 1)
  {
    v41 = sub_23BA0E8F8(v37, &qword_27E199760, &unk_23BBE9220);
    v42 = 0;
    v43 = 0;
    v44 = -1;
  }

  else
  {
    sub_23BA0DA94(v37, v28, type metadata accessor for SubscriptionStoreControlOption);
    sub_23BA0DAF8(v37, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
    sub_23BA0DA94(v28, v25, type metadata accessor for Subscription);
    sub_23BA0DAF8(v28, type metadata accessor for SubscriptionStoreControlOption);
    v45 = &v25[*(v23 + 20)];
    v46 = v45[8];
    if (v46 == 2)
    {
      v42 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v43 = v47;
      v41 = sub_23BA0DAF8(v25, type metadata accessor for Subscription);
      v44 = 1;
    }

    else
    {
      v42 = *v45;
      v43 = v46 & 1;
      v41 = sub_23BA0DAF8(v25, type metadata accessor for Subscription);
      v44 = 0;
    }
  }

  MEMORY[0x28223BE20](v41);
  v48 = v109;
  v49 = v110;
  *(&v85 - 10) = v109;
  *(&v85 - 9) = v49;
  v50 = v111;
  v52 = v107;
  v51 = v108;
  *(&v85 - 8) = v111;
  *(&v85 - 7) = v51;
  *(&v85 - 6) = v92;
  *(&v85 - 5) = v52;
  v92 = v42;
  *(&v85 - 4) = v42;
  *(&v85 - 3) = v43;
  v85 = v43;
  LOBYTE(v84) = v44;
  sub_23B9BE15C(v90);
  sub_23BBDC068();
  v116 = v48;
  v117 = v49;
  v118 = v50;
  v119 = v51;
  v53 = type metadata accessor for SubscriptionStorePickerOptionsGroup(0, &v116);
  v56 = sub_23BA093FC(v53);
  v57 = v54;
  v58 = v55;
  if (EnumTagSinglePayload != 1)
  {
    if (v55 != -1)
    {
      v60 = v92;
      v61 = v85;
      v59 = sub_23BBA7A24(v92, v85, v44 & 1, v56, v54, v55 & 1);
      goto LABEL_11;
    }

    v59 = 0;
LABEL_14:
    v60 = v92;
    v61 = v85;
    goto LABEL_15;
  }

  if (v55 == -1)
  {
    v59 = 1;
    goto LABEL_14;
  }

  v59 = 0;
  v60 = v92;
  v61 = v85;
LABEL_11:
  sub_23BA0D94C(v56, v57, v58);
LABEL_15:
  v62 = v108;
  v63 = v109;
  v64 = v110;
  v65 = v111;
  v66 = sub_23BA0ACD8(v60, v61, v44, v107, v109, v110, v111, v108);
  v68 = v67;
  sub_23BA0D94C(v60, v61, v44);
  v69 = v94;
  sub_23BA0B108(v106, v59 & 1, v66, v68, v63, v64, v98, v65, v94, v62, v93);
  v70 = v91;
  __swift_getEnumTagSinglePayload(v91, 1, v87);
  v71 = v97;
  v72 = swift_getWitnessTable();
  v73 = v96;
  sub_23BBDBBD8();
  (*(v95 + 8))(v69, v71);
  v74 = v88;
  sub_23B9D2B28(v70, v88);
  v75 = sub_23B97B518(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
  v114 = v72;
  v115 = v75;
  v76 = v102;
  v77 = swift_getWitnessTable();
  v78 = v99;
  sub_23B9D1ED0(v74, v76, v77);
  (*(v100 + 8))(v73, v76);
  v79 = sub_23B97B518(qword_27E199E40, &qword_27E199E18, &qword_23BBE9230, MEMORY[0x277CE0858]);
  v112 = v77;
  v113 = v79;
  v80 = v104;
  swift_getWitnessTable();
  v81 = v101;
  sub_23B9D2D88();
  v82 = *(v103 + 8);
  v82(v78, v80);
  sub_23B9D2D88();
  v82(v81, v80);
  return sub_23BA0E8F8(v70, &qword_27E199760, &unk_23BBE9220);
}

uint64_t sub_23BA0A574@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, char *a4@<X5>, char *a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v66 = a2;
  v65 = a1;
  v76 = a7;
  v63 = sub_23BBDAD18();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B1F0, &unk_23BBEBFE0);
  v13 = sub_23BBDA358();
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v64 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v58 - v16;
  v71 = sub_23BBDD648();
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v74 = &v58 - v20;
  v21 = sub_23BBDC208();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v73 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v75 = v22;
  v26 = *(v22 + 16);
  v68 = &v58 - v27;
  v67 = v28;
  v70 = v22 + 16;
  v69 = v26;
  v26(v25);
  v86 = a4;
  v87 = a5;
  v29 = a5;
  v88 = a6;
  v89 = a8;
  v77 = a8;
  v30 = type metadata accessor for SubscriptionStorePickerOptionsGroup(0, &v86);
  v31 = sub_23BA093FC(v30);
  if (v33 == -1)
  {
    if (a3 == -1)
    {
      goto LABEL_6;
    }

LABEL_8:
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v13);
    v47 = sub_23B97B518(&qword_27E19B208, &qword_27E19B1F0, &unk_23BBEBFE0, &unk_23BBED738);
    v85[2] = v77;
    v85[3] = v47;
    swift_getWitnessTable();
    goto LABEL_9;
  }

  v34 = v31;
  v35 = v32;
  v36 = v33;
  if (a3 == -1)
  {
    sub_23BA0D94C(v31, v32, v33);
    goto LABEL_8;
  }

  v37 = sub_23BBA7A24(v31, v32, v33 & 1, v65, v66, a3 & 1);
  sub_23BA0D94C(v34, v35, v36);
  if ((v37 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_23B985698();
  v38 = v60;
  sub_23BBDAFA8();
  v39 = sub_23BA0DEA4();
  v40 = v64;
  v41 = v77;
  sub_23BA1ECA4(v38, v42, v29, MEMORY[0x277CE04C8], v77, v39, v64);
  (*(v61 + 8))(v38, v63);
  v43 = sub_23B97B518(&qword_27E19B208, &qword_27E19B1F0, &unk_23BBEBFE0, &unk_23BBED738);
  v78 = v41;
  v79 = v43;
  swift_getWitnessTable();
  v44 = v62;
  sub_23B9D2D88();
  v45 = v59;
  v46 = *(v59 + 8);
  v46(v40, v13);
  sub_23B9D2D88();
  v46(v44, v13);
  (*(v45 + 32))(v18, v40, v13);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v13);
LABEL_9:
  v48 = v74;
  sub_23BB2F9F4(v18, v13);
  v49 = v72;
  v50 = *(v72 + 8);
  v51 = v71;
  v50(v18, v71);
  v52 = v73;
  v53 = v68;
  v54 = v67;
  (v69)(v73, v68, v67);
  v86 = v52;
  (*(v49 + 16))(v18, v48, v51);
  v87 = v18;
  v85[0] = v54;
  v85[1] = v51;
  v83 = MEMORY[0x277CE12C8];
  v55 = sub_23B97B518(&qword_27E19B208, &qword_27E19B1F0, &unk_23BBEBFE0, &unk_23BBED738);
  v81 = v77;
  v82 = v55;
  WitnessTable = swift_getWitnessTable();
  v84 = swift_getWitnessTable();
  sub_23BB6739C(&v86, 2, v85);
  v50(v48, v51);
  v56 = *(v75 + 8);
  v56(v53, v54);
  v50(v18, v51);
  return (v56)(v52, v54);
}

void (*sub_23BA0ACD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v27 = a4;
  v28 = a8;
  v29 = a1;
  v30 = a2;
  v31[0] = a5;
  v31[1] = a6;
  v31[2] = a7;
  v31[3] = a8;
  v12 = ~a3;
  v13 = type metadata accessor for SubscriptionStorePickerOptionsGroup(0, v31);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v27 - v17;
  if (v12)
  {
    (*(v14 + 16))(v18, v27, v13, v16);
    v19 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = a5;
    *(v20 + 3) = a6;
    v21 = v28;
    *(v20 + 4) = a7;
    *(v20 + 5) = v21;
    (*(v14 + 32))(&v20[v19], v18, v13);
    v22 = &v20[(v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8];
    v23 = v29;
    v24 = v30;
    *v22 = v29;
    *(v22 + 1) = v24;
    v22[16] = a3 & 1;
    v25 = sub_23BA0DD68;
  }

  else
  {
    v25 = nullsub_1;
    v23 = v29;
    v24 = v30;
  }

  sub_23BA0DC14(v23, v24, a3);
  return v25;
}

uint64_t sub_23BA0AE94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a2;
  v35 = a3;
  v14 = sub_23BBDA928();
  v31 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v32 = type metadata accessor for SubscriptionStorePickerOptionsGroup(0, &v39);
  v33 = a1;
  v17 = a1 + *(v32 + 60);
  v19 = *v17;
  v18 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v22 = *(v17 + 32);
  if (*(v17 + 33) == 1)
  {
    sub_23BA0DE40(*v17, v18, v20, v21, v22);
  }

  else
  {

    sub_23BBDD5A8();
    v23 = sub_23BBDB338();
    v30 = v14;
    v24 = v23;
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v25 = sub_23BA0D8D8(v19, v18, v20, v21, v22, 0);
    (*(v31 + 8))(v16, v30, v25);
    v19 = v39;
    v18 = v40;
    v20 = v41;
    v21 = v42;
    LOBYTE(v22) = v43;
  }

  v27 = v34;
  v26 = v35;
  if (v18)
  {
    v39 = v19;
    v40 = v18;
    v41 = v20;
    v42 = v21;
    v43 = v22;
    v28 = a4 & 1;
    v36 = v34;
    v37 = v35;
    v38 = a4 & 1;
    sub_23B9BDCD4(v34, v35, a4 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160, &unk_23BBEBF40);
    sub_23BBDC0F8();

    sub_23BA0D94C(v20, v21, v22);
  }

  else
  {
    v28 = a4 & 1;
  }

  sub_23B9BDCD4(v27, v26, a4 & 1);
  return sub_23BA09468(v27, v26, v28, v32);
}

uint64_t sub_23BA0B108@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v23[0] = a5;
  v23[1] = a6;
  v23[2] = a7;
  v23[3] = a8;
  v23[4] = a10;
  v23[5] = a11;
  v19 = type metadata accessor for SubscriptionStorePickerOptionsGroup.PickerOption(0, v23);
  *(a9 + v19[17]) = a2;
  v20 = (a9 + v19[18]);
  *v20 = a3;
  v20[1] = a4;
  v21 = a9 + v19[19];
  result = swift_getKeyPath();
  *v21 = result;
  *(v21 + 8) = 0;
  return result;
}

uint64_t sub_23BA0B1EC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B2B0, &qword_23BBEC228);
  sub_23BBDAB18();
  if (v2 == 1)
  {
    *(swift_allocObject() + 16) = xmmword_23BBE94D0;
    sub_23BBDAAF8();
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_23BBE7F10;
  }

  sub_23BBDAB08();
  sub_23BA0E954(&qword_27E19B2B8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B2C0, &unk_23BBEC230);
  sub_23B97B518(&qword_27E19B2C8, &qword_27E19B2C0, &unk_23BBEC230, MEMORY[0x277D83970]);
  return sub_23BBDD6C8();
}

uint64_t sub_23BA0B3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v2 = *(a1 + 32);
  v35 = *(a1 + 56);
  sub_23BBDBFC8();
  sub_23BBDB2B8();
  v4 = sub_23BBDA358();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B298, &unk_23BBEC0F0);
  WitnessTable = swift_getWitnessTable();
  v56 = sub_23BA0E954(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v37 = MEMORY[0x277CDFAD8];
  v30 = v4;
  v28 = swift_getWitnessTable();
  v27 = sub_23B97B518(&qword_27E19B2A0, &qword_27E19B298, &unk_23BBEC0F0, &unk_23BBE4798);
  v51 = v4;
  v52 = v29;
  v53 = v28;
  v54 = v27;
  swift_getOpaqueTypeMetadata2();
  sub_23BBDACE8();
  v5 = sub_23BBDBE28();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  v8 = sub_23BBDA358();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_23BBDA358();
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v31 = &v25 - v15;
  v26 = a1;
  v39 = *(a1 + 16);
  v40 = v2;
  v41 = *(a1 + 40);
  v16 = v35;
  v17 = v36;
  v42 = v35;
  v43 = v36;
  v51 = v30;
  v52 = v29;
  v53 = v28;
  v54 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v16;
  v18 = swift_getWitnessTable();
  sub_23BBDBE18();
  swift_getKeyPath();
  LOBYTE(v51) = 1;
  v48 = v18;
  v19 = swift_getWitnessTable();
  sub_23BBDB748();

  (*(v32 + 8))(v7, v5);
  swift_getKeyPath();
  LOBYTE(v51) = *(v17 + *(v26 + 68));
  v20 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  v46 = v19;
  v47 = v20;
  v21 = swift_getWitnessTable();
  sub_23BBDB748();

  (*(v33 + 8))(v10, v8);
  v44 = v21;
  v45 = v20;
  swift_getWitnessTable();
  v22 = v31;
  sub_23B9D2D88();
  v23 = *(v34 + 8);
  v23(v13, v11);
  sub_23B9D2D88();
  return (v23)(v22, v11);
}

uint64_t sub_23BA0B9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v100 = a8;
  v77[0] = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v87 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v86 = v77 - v17;
  v96 = sub_23BBDAB18();
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a2;
  v107 = a2;
  KeyPath = a3;
  v92 = a3;
  v109 = a4;
  v110 = a5;
  v94 = a5;
  v95 = a6;
  v111 = a6;
  v112 = a7;
  v19 = type metadata accessor for SubscriptionStorePickerOptionsGroup.PickerOption(0, &v107);
  v79 = *(v19 - 8);
  v77[2] = *(v79 + 64);
  MEMORY[0x28223BE20](v19);
  v78 = v77 - v20;
  v106 = a7;
  v21 = sub_23BBDBFC8();
  v84 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v82 = v77 - v22;
  sub_23BBDB2B8();
  v23 = sub_23BBDA358();
  v89 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v88 = v77 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B298, &unk_23BBEC0F0);
  v85 = v21;
  WitnessTable = swift_getWitnessTable();
  v27 = sub_23BA0E954(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v77[1] = WitnessTable;
  v122 = WitnessTable;
  v123 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_23B97B518(&qword_27E19B2A0, &qword_27E19B298, &unk_23BBEC0F0, &unk_23BBE4798);
  v103 = v23;
  v104 = v25;
  v107 = v23;
  KeyPath = v25;
  v105 = v28;
  v109 = v28;
  v110 = v29;
  v101 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v81 = v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v80 = v77 - v33;
  v34 = sub_23BBDA928();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = OpaqueTypeMetadata2;
  v102 = a4;
  v38 = sub_23BBDACE8();
  v99 = *(v38 - 8);
  v39.n128_f64[0] = MEMORY[0x28223BE20](v38);
  v97 = v77 - v40;
  v41 = v19;
  v42 = *(v19 + 76);
  v43 = a1;
  v44 = a1 + v42;
  v45 = *v44;
  if (*(v44 + 8) != 1)
  {

    sub_23BBDD5A8();
    v52 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v45, 0);
    (*(v35 + 8))(v37, v34);
    if (v107 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v53 = v79;
    v54 = v78;
    (*(v79 + 16))(v78, a1, v41, v39);
    v55 = *(v53 + 80);
    v87 = v38;
    v56 = (v55 + 64) & ~v55;
    v57 = swift_allocObject();
    v58 = v91;
    v59 = v92;
    *(v57 + 2) = v91;
    *(v57 + 3) = v59;
    v60 = v94;
    *(v57 + 4) = v102;
    *(v57 + 5) = v60;
    v61 = v95;
    v62 = v106;
    *(v57 + 6) = v95;
    *(v57 + 7) = v62;
    v63 = (*(v53 + 32))(&v57[v56], v54, v41);
    MEMORY[0x28223BE20](v63);
    v77[-8] = v58;
    v77[-7] = v59;
    v77[-6] = v102;
    v77[-5] = v60;
    v64 = v106;
    v77[-4] = v61;
    v77[-3] = v64;
    v77[-2] = v43;
    v65 = v82;
    sub_23BBDBFA8();
    v66 = v90;
    sub_23BA0B1EC(v41);
    v67 = v88;
    v68 = v85;
    sub_23BBDB9D8();
    (*(v93 + 8))(v66, v96);
    (*(v84 + 8))(v65, v68);
    LOBYTE(v107) = *(v43 + *(v41 + 68));
    KeyPath = swift_getKeyPath();
    v113 = 0;
    v114 = swift_getKeyPath();
    v115 = 0;
    v116 = swift_getKeyPath();
    v117 = 0;
    v118 = swift_getKeyPath();
    v119 = 0;
    v69 = v81;
    v71 = v103;
    v70 = v104;
    v72 = v105;
    v49 = v101;
    sub_23BBDB988();
    sub_23BA0E8F8(&v107, &qword_27E19B298, &unk_23BBEC0F0);
    (*(v89 + 8))(v67, v71);
    v107 = v71;
    KeyPath = v70;
    v109 = v72;
    v110 = v49;
    swift_getOpaqueTypeConformance2();
    v73 = v80;
    v74 = v98;
    sub_23B9D2D88();
    v75 = *(v83 + 8);
    v75(v69, v74);
    sub_23B9D2D88();
    v50 = v97;
    sub_23BA82D64();
    v75(v69, v74);
    v75(v73, v74);
    v38 = v87;
    goto LABEL_6;
  }

  if (v45)
  {
    goto LABEL_5;
  }

LABEL_3:
  v46 = v86;
  v47 = v102;
  sub_23B9D2D88();
  v48 = v87;
  sub_23B9D2D88();
  v107 = v103;
  KeyPath = v104;
  v49 = v101;
  v109 = v105;
  v110 = v101;
  swift_getOpaqueTypeConformance2();
  v50 = v97;
  sub_23BA82E14();
  v51 = *(v77[0] + 8);
  v51(v48, v47);
  v51(v46, v47);
LABEL_6:
  v107 = v103;
  KeyPath = v104;
  v109 = v105;
  v110 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v121 = v106;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v99 + 8))(v50, v38);
}

double sub_23BA0C558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_23BBDC358();
  sub_23BBD9CA8();
  sub_23B9A8E74();
  sub_23BBD9CC8();
  sub_23BBDA3B8();

  return result;
}

uint64_t sub_23BA0C61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a7;
  v8 = type metadata accessor for SubscriptionStorePickerOptionsGroup.PickerOption(0, v10);
  return (*(a1 + *(v8 + 72)))();
}

uint64_t sub_23BA0C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v5 + 8))(v7, a4);
}

unint64_t sub_23BA0C7D4()
{
  result = qword_27E19B0B8[0];
  if (!qword_27E19B0B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19B0B8);
  }

  return result;
}

void sub_23BA0C838(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23B9D2354();
      if (v3 <= 0x3F)
      {
        sub_23BA0D5EC(319, &qword_27E19B140, &qword_27E19B148, &unk_23BBFE400, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BA0C928(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  v12 = *(*(v7 - 8) + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v11;
  if (v13 < a2)
  {
    v15 = (((v14 & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 57;
    v16 = (a2 - v13 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      LODWORD(v18) = 4;
    }

    else
    {
      LODWORD(v18) = 2;
    }

    if (v17 < 0x100)
    {
      LODWORD(v18) = 1;
    }

    if (v17 >= 2)
    {
      v18 = v18;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        v19 = a1[v15];
        if (!a1[v15])
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v19 = *&a1[v15];
        if (*&a1[v15])
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA0CAF8);
      case 4:
        v19 = *&a1[v15];
        if (!v19)
        {
          break;
        }

LABEL_25:
        v21 = (v19 - 1) << (8 * v15);
        if (v15 <= 3)
        {
          v22 = *a1;
        }

        else
        {
          v21 = 0;
          v22 = *a1;
        }

        return v13 + (v22 | v21) + 1;
      default:
        break;
    }
  }

  if (v6 == v13)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  a1 = (&a1[v14] & ~v11);
  if (v9 == v13)
  {
    v6 = v9;
    v5 = v7;
    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v23 = *((&a1[v12] & 0xFFFFFFFFFFFFFFF8) + 32);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  return (v23 + 1);
}

void sub_23BA0CB0C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64);
  v17 = ((v15 + v16) & 0xFFFFFFFFFFFFFFF8) + 57;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = (a3 - v12 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (v12 < a2)
  {
    v22 = ~v12 + a2;
    bzero(a1, ((v15 + v16) & 0xFFFFFFFFFFFFFFF8) + 57);
    if (v17 <= 3)
    {
      v23 = (v22 >> 8) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v17 > 3)
    {
      *v6 = v22;
    }

    else
    {
      *v6 = v22;
    }

    switch(v21)
    {
      case 1:
        v6[v17] = v23;
        return;
      case 2:
        *&v6[v17] = v23;
        return;
      case 3:
        goto LABEL_47;
      case 4:
        *&v6[v17] = v23;
        return;
      default:
        return;
    }
  }

  switch(v21)
  {
    case 1:
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_47:
      __break(1u);
      JUMPOUT(0x23BA0CD80);
    case 4:
      *&a1[v17] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 == v12)
      {
        goto LABEL_36;
      }

      a1 = (&a1[v14] & ~v13);
      if (v11 == v12)
      {
        v8 = v11;
        v7 = v9;
LABEL_36:

        __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
      }

      else
      {
        v24 = &a1[v16] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v24 + 40) = 0;
          *(v24 + 48) = 0;
          *(v24 + 56) = 0;
          *(v24 + 24) = a2 & 0x7FFFFFFF;
          *(v24 + 32) = 0;
        }

        else
        {
          *(v24 + 32) = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_23BA0CDC8(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_23BBDA958();
  return v3;
}

void sub_23BA0D040(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23BA0D5EC(319, &qword_27E19B140, &qword_27E19B148, &unk_23BBFE400, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_23BA0D5EC(319, &qword_27E19B1E8, &qword_27E1988A8, &unk_23BBE60A0, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BA0D154(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  v12 = *(*(v7 - 8) + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v11;
  if (v13 < a2)
  {
    v15 = ((v12 + (v14 & ~v11) + 47) & 0xFFFFFFFFFFFFFFF8) + 34;
    v16 = (a2 - v13 + 0xFFFF) >> 16;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      LODWORD(v18) = 4;
    }

    else
    {
      LODWORD(v18) = 2;
    }

    if (v17 < 0x100)
    {
      LODWORD(v18) = 1;
    }

    if (v17 >= 2)
    {
      v18 = v18;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        v19 = *(a1 + v15);
        if (!*(a1 + v15))
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v19 = *(a1 + v15);
        if (*(a1 + v15))
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA0D330);
      case 4:
        v19 = *(a1 + v15);
        if (!v19)
        {
          break;
        }

LABEL_25:
        v21 = (v19 - 1) << (8 * v15);
        if (v15 <= 3)
        {
          v22 = *a1;
        }

        else
        {
          v21 = 0;
          v22 = *a1;
        }

        return v13 + (v22 | v21) + 1;
      default:
        break;
    }
  }

  if (v6 == v13)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  a1 = ((a1 + v14) & ~v11);
  if (v9 == v13)
  {
    v6 = v9;
    v5 = v7;
    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v23 = *(((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  return (v23 + 1);
}

void sub_23BA0D344(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64);
  v17 = ((v16 + v15 + 47) & 0xFFFFFFFFFFFFFFF8) + 34;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = (a3 - v12 + 0xFFFF) >> 16;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (v12 < a2)
  {
    v22 = ~v12 + a2;
    bzero(a1, ((v16 + v15 + 47) & 0xFFFFFFFFFFFFFFF8) + 34);
    if (v17 <= 3)
    {
      v23 = HIWORD(v22) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v17 > 3)
    {
      *v6 = v22;
    }

    else
    {
      *v6 = v22;
    }

    switch(v21)
    {
      case 1:
        v6[v17] = v23;
        return;
      case 2:
        *&v6[v17] = v23;
        return;
      case 3:
        goto LABEL_47;
      case 4:
        *&v6[v17] = v23;
        return;
      default:
        return;
    }
  }

  switch(v21)
  {
    case 1:
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_47:
      __break(1u);
      JUMPOUT(0x23BA0D5C4);
    case 4:
      *&a1[v17] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 == v12)
      {
        goto LABEL_36;
      }

      a1 = (&a1[v14] & ~v13);
      if (v11 == v12)
      {
        v8 = v11;
        v7 = v9;
LABEL_36:

        __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
      }

      else
      {
        v24 = &a1[v16 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v24 + 16) = 0;
          *(v24 + 24) = 0;
          *(v24 + 32) = 0;
          *v24 = a2 & 0x7FFFFFFF;
          *(v24 + 8) = 0;
        }

        else
        {
          *(v24 + 8) = (a2 - 1);
        }
      }

      return;
  }
}

void sub_23BA0D5EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23BA0D650(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = sub_23BBDAD58();
  v6 = sub_23BBDAA98();
  OUTLINED_FUNCTION_7_18();
  v20 = v6;
  v21 = v1;
  v22 = sub_23BA0E954(v7, v8, MEMORY[0x277CE0168]);
  v23 = v4;
  v9 = type metadata accessor for SubscriptionStorePickerOptionsGroup(255, &v20);
  OUTLINED_FUNCTION_6_11();
  WitnessTable = swift_getWitnessTable();
  v20 = v6;
  v21 = v9;
  v22 = v6;
  v23 = MEMORY[0x277CE0148];
  v24 = WitnessTable;
  v25 = MEMORY[0x277CE0148];
  v11 = type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView(255, &v20);
  OUTLINED_FUNCTION_4_12();
  v14 = sub_23BA0E954(v12, v13, MEMORY[0x277CE0398]);
  v20 = v2;
  v21 = v5;
  v22 = v11;
  v23 = v3;
  v24 = v14;
  v15 = sub_23BBDC1A8();
  OUTLINED_FUNCTION_3_15();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v16 = OUTLINED_FUNCTION_4();
  type metadata accessor for SubscriptionStorePickerLayoutInternal.LayoutView(v16, v15, v17, v18);
  OUTLINED_FUNCTION_5_14();
  return swift_getWitnessTable();
}

double sub_23BA0D8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_23BA0D8E4(a1, a2, a3, a4, a5);
  }

  else
  {
  }

  return result;
}

void sub_23BA0D8E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a5;

    sub_23BA0D94C(a3, a4, v5);
  }
}

uint64_t sub_23BA0D94C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_23B979A38(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23BA0D990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_10();
  a23 = v25;
  a24 = v26;
  v27 = v24[3];
  v28 = v24[4];
  v29 = v24[5];
  v41 = v30;
  a11 = v24[2];
  a12 = v27;
  a13 = v28;
  a14 = v29;
  v31(0, &a11);
  OUTLINED_FUNCTION_12_10();

  return v38(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_23BA0DA94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BA0DAF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BA0DB54()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BA0CDA8();
  return OUTLINED_FUNCTION_15_1(v0);
}

unint64_t sub_23BA0DBC0()
{
  result = qword_27E19B200;
  if (!qword_27E19B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B200);
  }

  return result;
}

uint64_t sub_23BA0DC14(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_23B9BDCD4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23BA0DD68()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v12[0] = v0[2];
  v1 = v12[0];
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v5 = *(type metadata accessor for SubscriptionStorePickerOptionsGroup(0, v12) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];

  return sub_23BA0AE94(v0 + v6, v8, v9, v10, v1, v2, v3, v4);
}

void sub_23BA0DE40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    sub_23BA0DC14(a3, a4, a5);
  }
}

unint64_t sub_23BA0DEA4()
{
  result = qword_27E19B210[0];
  if (!qword_27E19B210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19B210);
  }

  return result;
}

void sub_23BA0DF10(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23B975E04();
    if (v2 <= 0x3F)
    {
      sub_23B9D2354();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA0DFB8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA0E10CLL);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_22:
        v15 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v16 = *a1;
        }

        else
        {
          v15 = 0;
          v16 = *a1;
        }

        return v7 + (v16 | v15) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *((&a1[v6] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_23BA0E120(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, (((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BA0E310);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0x7FFFFFFF)
        {
          v17 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
            *(v17 + 16) = 0;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *(v17 + 8) = v18;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23BA0E338(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = sub_23BBDC1E8();
  sub_23BBDC208();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B1F0, &unk_23BBEBFE0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDD648();
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  v5 = sub_23BBDC078();
  WitnessTable = swift_getWitnessTable();
  v11 = v3;
  v12 = v2;
  v13 = v5;
  v14 = *(a1 + 1);
  v10 = v14;
  v15 = WitnessTable;
  type metadata accessor for SubscriptionStorePickerOptionsGroup.PickerOption(255, &v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310, &unk_23BBE5200);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E18, &qword_23BBE9230);
  OUTLINED_FUNCTION_4();
  v7 = sub_23BBDA358();
  v8 = sub_23BA0E954(&qword_27E19B1F8, MEMORY[0x277CE12A8], MEMORY[0x277CE12B0]);
  v11 = v3;
  v12 = v4;
  v13 = v7;
  *&v14 = v10;
  *(&v14 + 1) = v8;
  sub_23BBDC1A8();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
  swift_getWitnessTable();
  sub_23B97B518(qword_27E199E40, &qword_27E199E18, &qword_23BBE9230, MEMORY[0x277CE0858]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_18();
  return swift_getWitnessTable();
}

uint64_t sub_23BA0E634()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BA0C754();
  return OUTLINED_FUNCTION_15_1(v0);
}

unint64_t sub_23BA0E6A8()
{
  result = qword_27E19B2A8;
  if (!qword_27E19B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B2A8);
  }

  return result;
}

uint64_t sub_23BA0E6FC()
{
  v6 = v0[2];
  v7[0] = v0[1];
  v1 = v0[3];
  v7[1] = v6;
  v7[2] = v1;
  v2 = (type metadata accessor for SubscriptionStorePickerOptionsGroup.PickerOption(0, v7) - 8);
  v3 = v0 + ((*(*v2 + 80) + 64) & ~*(*v2 + 80));
  OUTLINED_FUNCTION_1_4();
  (*(v4 + 8))(v3);

  sub_23B97B5C0(*&v3[v2[21]], v3[v2[21] + 8]);
  return swift_deallocObject();
}

double sub_23BA0E804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_10();
  a23 = v25;
  a24 = v26;
  v27 = v24[3];
  v28 = v24[4];
  v29 = v24[5];
  v30 = v24[6];
  v31 = v24[7];
  a9 = v24[2];
  a10 = v27;
  a11 = v28;
  a12 = v29;
  a13 = v30;
  a14 = v31;
  type metadata accessor for SubscriptionStorePickerOptionsGroup.PickerOption(0, &a9);
  OUTLINED_FUNCTION_12_10();

  return sub_23BA0C558(v32, v33, v34, v35, v36, v37, v38);
}

uint64_t sub_23BA0E8F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23BA0E954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA0E9DC(uint64_t a1)
{
  sub_23BBDBFC8();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B298, &unk_23BBEC0F0);
  swift_getWitnessTable();
  sub_23BA0E954(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19B2A0, &qword_27E19B298, &unk_23BBEC0F0, &unk_23BBE4798);
  swift_getOpaqueTypeMetadata2();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  sub_23BBDA358();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0, &qword_23BBF2AB0, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_10_9()
{
  v3 = v1 + *(v0 + 60);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 33);
  v9 = *(v3 + 32);

  return sub_23BA0D8D8(v4, v5, v6, v7, v9, v8);
}

uint64_t RegularProductViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ProductViewStyleConfiguration(0);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BA0EFA4(a1, v9, v7);
  sub_23B998028(v9, 0, a2);
  v10 = *(a1 + *(v6 + 36));
  KeyPath = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199108, &qword_23BBE7618);
  *(a2 + v12[9]) = v10;
  v13 = v12[10];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  v14 = v12[11];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v12[12];
  *v15 = KeyPath;
  v15[8] = 0;
  v16 = a2 + v12[13];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = a2 + v12[14];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1990F8, &qword_23BBE7610) + 36);
  sub_23BA0EFA4(a1, v18, v19);
  v20 = *(type metadata accessor for ConfigureProductViewEnvironmentViewModifier(0) + 20);
  *&v18[v20] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BA0EFA4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for ProductViewStyleConfiguration(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BA0F024()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBAFB7C();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BA0F04C()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBAFB7C();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BA0F084()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBAF6C0();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BA0F0AC()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBAF6C0();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BA0F0D4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B9AEDC4();
  *v0 = result;
  return result;
}

uint64_t sub_23BA0F0FC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B9AEDC4();
  *v0 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RegularProductViewStyle(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x23BA0F234);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionComparator(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BA0F33CLL);
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

uint64_t sub_23BA0F388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Subscription(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BA0F444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Subscription(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for SubscriptionComparator.Compared(uint64_t a1)
{
  result = qword_27E19B2D0;
  if (!qword_27E19B2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BA0F540(uint64_t a1)
{
  type metadata accessor for Subscription(319);
  if (v1 <= 0x3F)
  {
    sub_23BA15428(319, &qword_27E197B58, MEMORY[0x277CDD2B8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BA0F5F4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B9C8B44();
  *v0 = result;
  return result;
}

uint64_t sub_23BA0F648@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  sub_23B979688();
  v15 = type metadata accessor for StaticSubscriptionOfferView(0, a6, a8, v14);
  sub_23B979688();
  v16 = a7 + v15[10];
  *v16 = v12;
  *(v16 + 8) = v13;
  *(a7 + v15[11]) = a2;
  *(a7 + v15[12]) = a3;
  (*(*(a6 - 8) + 32))(a7 + v15[13], a4, a6);
  sub_23BA161C0();
  v17 = a7 + v15[15];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a7 + v15[16];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 0;
  v19 = a7 + v15[17];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a7 + v15[18];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v21 = a7 + v15[19];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  v22 = a7 + v15[20];
  KeyPath = swift_getKeyPath();
  LOBYTE(v35[0]) = 0;
  v24 = swift_getKeyPath();
  v40 = 0;
  v25 = swift_getKeyPath();
  v39 = 0;
  v26 = swift_getKeyPath();
  v38 = 0;
  v27 = swift_getKeyPath();
  v37 = 0;
  *v22 = KeyPath;
  *(v22 + 8) = 0;
  *(v22 + 16) = v24;
  *(v22 + 24) = 0;
  *(v22 + 32) = v25;
  *(v22 + 40) = 0;
  *(v22 + 48) = v26;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  *(v22 + 72) = v27;
  *(v22 + 80) = 0;
  *(v22 + 88) = 0;
  v28 = v15[21];
  *(a7 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  swift_storeEnumTagMultiPayload();
  v29 = (a7 + v15[22]);
  *v29 = sub_23BA0F934(0);
  v29[1] = v30;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_23BA0F97C(v35);
  v31 = a7 + v15[24];
  result = sub_23B9BE5CC(0);
  *v31 = result & 1;
  *(v31 + 8) = v33;
  return result;
}

uint64_t sub_23BA0F934(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B2F0, &qword_23BC02CB0);
  sub_23BBDBF58();
  return v2;
}

uint64_t sub_23BA0F97C(uint64_t a1)
{
  sub_23B979510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A9E8, &unk_23BBEC6B0);
  sub_23BBDBF58();
  return sub_23B9846E8(a1, &qword_27E19A9E8, &unk_23BBEC6B0);
}

uint64_t sub_23BA0F9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v105 = sub_23BBDCDB8();
  v110 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v95 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0, &unk_23BBE5E10);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198850, &qword_23BBE5EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v90 - v10;
  v99 = *(a1 + 16);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v11);
  v97 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_23BBDA928();
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F0, &qword_23BBEC8A8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v90 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v17 - 8);
  v101 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v108 = &v90 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - v22;
  v24 = type metadata accessor for Subscription(0);
  v94 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v109 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v90 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v29 - 8);
  v107 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v90 - v32;
  MEMORY[0x28223BE20](v34);
  v91 = (&v90 - v35);
  MEMORY[0x28223BE20](v36);
  v38 = &v90 - v37;
  v39 = sub_23BBDCC88();
  v106 = v38;
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  sub_23BA10668(a1, v23);
  v100 = v24;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v24);
  v102 = a1;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v23, qword_27E197A68, qword_23BBE3D90);
    v41 = v103;
    v43 = v98;
    v42 = v99;
    goto LABEL_14;
  }

  sub_23BA161C0();
  sub_23BA10FD4(v28, a1, v16);
  v44 = type metadata accessor for SubscriptionOfferManager(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v44) != 1)
  {
    v42 = v99;
    v45 = v91;
    if (*&v16[*(v44 + 40)])
    {

      sub_23BADCDAC(v46, v33);
      if (__swift_getEnumTagSinglePayload(v33, 1, v39) == 1)
      {
        sub_23BADD250();

        sub_23BA1616C(v28, type metadata accessor for Subscription);
        sub_23B9846E8(v106, &unk_27E19FEF0, &unk_23BBE3E40);
        v47 = __swift_getEnumTagSinglePayload(v33, 1, v39);
        v43 = v98;
        if (v47 != 1)
        {
          sub_23B9846E8(v33, &unk_27E19FEF0, &unk_23BBE3E40);
        }

        goto LABEL_12;
      }

      sub_23BA1616C(v28, type metadata accessor for Subscription);
      sub_23B9846E8(v106, &unk_27E19FEF0, &unk_23BBE3E40);
      (*(*(v39 - 8) + 32))(v45, v33, v39);
      __swift_storeEnumTagSinglePayload(v45, 0, 1, v39);
    }

    else
    {
      sub_23BADD438(v91);
      sub_23BA1616C(v28, type metadata accessor for Subscription);
      sub_23B9846E8(v106, &unk_27E19FEF0, &unk_23BBE3E40);
    }

    v43 = v98;
LABEL_12:
    sub_23BA1616C(v16, type metadata accessor for SubscriptionOfferManager);
    goto LABEL_13;
  }

  sub_23BA1616C(v28, type metadata accessor for Subscription);
  sub_23B9846E8(v106, &unk_27E19FEF0, &unk_23BBE3E40);
  sub_23B9846E8(v16, &qword_27E19B3F0, &qword_23BBEC8A8);
  __swift_storeEnumTagSinglePayload(v91, 1, 1, v39);
  v43 = v98;
  v42 = v99;
LABEL_13:
  sub_23B979688();
  a1 = v102;
  v41 = v103;
LABEL_14:
  v48 = v104;
  sub_23B979510();
  sub_23B979510();
  v49 = v3 + *(a1 + 60);
  v50 = *v49;
  v51 = *(v49 + 8);

  if ((v51 & 1) == 0)
  {
    sub_23BBDD5A8();
    v52 = sub_23BBDB338();
    sub_23BBD9978();

    v53 = v92;
    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v50);
    (*(v93 + 8))(v53, v96);
    v50 = v112;
  }

  if (v50)
  {
    v55 = *(v50 + 16);
    v54 = *(v50 + 24);
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v54;
    v99 = v56;

    v98 = sub_23BA155DC;
  }

  else
  {
    v98 = 0;
    v99 = 0;
  }

  v57 = v97;
  (*(v43 + 2))(v97, v3 + *(a1 + 52), v42);
  v58 = *(a1 + 24);
  sub_23BAC7CC4(v57, v42, &v112);
  v96 = v112;
  sub_23BA1166C(a1, v41);
  v60 = sub_23BA11900(v3, v42, v58, v59);
  v61 = v60;
  v97 = v62;
  v63 = *(v3 + *(a1 + 44));
  v64 = *(v63 + 16);
  v65 = MEMORY[0x277D84F90];
  if (v64)
  {
    v91 = v60;
    v92 = v3;
    v93 = a2;
    v111 = MEMORY[0x277D84F90];
    sub_23BA92B88(0, v64, 0);
    v66 = v95;
    v67 = v63 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v68 = *(v94 + 72);
    v65 = v111;
    v69 = (v110 + 16);
    v70 = v105;
    do
    {
      v71 = v109;
      sub_23BA16114();
      (*v69)(v66, v71, v70);
      sub_23BA1616C(v71, type metadata accessor for Subscription);
      v111 = v65;
      v73 = *(v65 + 16);
      v72 = *(v65 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_23BA92B88(v72 > 1, v73 + 1, 1);
        v70 = v105;
        v65 = v111;
      }

      *(v65 + 16) = v73 + 1;
      (*(v110 + 32))(v65 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v73, v66, v70);
      v67 += v68;
      --v64;
    }

    while (v64);
    v3 = v92;
    a2 = v93;
    v48 = v104;
    a1 = v102;
    v61 = v91;
  }

  v74 = *(v3 + *(a1 + 48));
  v75 = v3 + *(a1 + 56);
  v76 = *(v75 + *(type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0) + 24));

  v77 = v101;
  sub_23BA10668(a1, v101);
  sub_23B9846E8(v106, &unk_27E19FEF0, &unk_23BBE3E40);
  if (__swift_getEnumTagSinglePayload(v77, 1, v100) == 1)
  {
    sub_23B9846E8(v77, qword_27E197A68, qword_23BBE3D90);
    v78 = 1;
    v79 = v105;
  }

  else
  {
    v79 = v105;
    (*(v110 + 16))(v48, v77, v105);
    sub_23BA1616C(v77, type metadata accessor for Subscription);
    v78 = 0;
  }

  __swift_storeEnumTagSinglePayload(v48, v78, 1, v79);
  v80 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  v81 = v79;
  v82 = v80;
  v83 = *(v80 + 48);
  __swift_storeEnumTagSinglePayload(a2 + v83, 1, 1, v81);
  sub_23B979688();
  sub_23B979688();
  v84 = (a2 + v82[6]);
  v85 = v99;
  *v84 = v98;
  v84[1] = v85;
  *(a2 + v82[9]) = v96;
  sub_23B979688();
  v86 = (a2 + v82[7]);
  v87 = v97;
  *v86 = v61;
  v86[1] = v87;
  v88 = a2 + v82[10];
  *v88 = v65;
  *(v88 + 8) = v74;
  *(v88 + 16) = 1;
  *(a2 + v82[11]) = v76;
  return sub_23B9FF5CC(v48, a2 + v83);
}

uint64_t sub_23BA10668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198850, &qword_23BBE5EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v70 - v10;
  MEMORY[0x28223BE20](v11);
  v72 = &v70 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  v76 = 0;
  v19 = type metadata accessor for Subscription(0);
  v70 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  MEMORY[0x28223BE20](v25);
  v71 = &v70 - v26;
  MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  v30 = v29;
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v18, 1, v30) == 1)
  {
    v31 = v30;
    sub_23B9846E8(v18, qword_27E197A68, qword_23BBE3D90);
    v32 = *(v2 + *(a1 + 44));
    if (*(v32 + 16) == 1)
    {
      return sub_23BAC75B8(v32, a2);
    }

    v37 = v2;
    v38 = (v2 + *(a1 + 40));
    v39 = a2;
    if (v38[1])
    {
      v34 = a2;
      v35 = 1;
      v36 = v31;
      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
    }

    v40 = *v38;
    v41 = v31;
    switch(v40)
    {
      case 1:
        v42 = v32;
        sub_23B979510();
        if (__swift_getEnumTagSinglePayload(v15, 1, v31) == 1)
        {
          sub_23B9846E8(v15, qword_27E197A68, qword_23BBE3D90);
          v43 = v42;
        }

        else
        {
          sub_23BA161C0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B8, &qword_23BBE8180);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_23BBE7F10;
          v44 = sub_23BA161C0();
        }

        v41 = v31;
        goto LABEL_26;
      case 2:
        v51 = a2;
        v52 = v32;
        v46 = a1;
        v53 = v73;
        sub_23B979510();
        if (__swift_getEnumTagSinglePayload(v53, 1, v41) == 1)
        {
          sub_23B9846E8(v53, qword_27E197A68, qword_23BBE3D90);
          v43 = v52;

          v39 = v51;
          goto LABEL_26;
        }

        v54 = v41;
        v62 = sub_23BA161C0();
        MEMORY[0x28223BE20](v62);
        *(&v70 - 2) = v24;

        v63 = v76;
        sub_23BADC8C0(sub_23BA162AC, (&v70 - 4), v52);
        v58 = v64;
        v76 = v63;
        v21 = v24;
        v39 = v51;
        goto LABEL_25;
      case 3:
      case 5:
      case 6:
      case 7:
        goto LABEL_13;
      case 4:
        v45 = v32;
        v46 = a1;
        v47 = v72;
        sub_23B979510();
        if (__swift_getEnumTagSinglePayload(v47, 1, v31) == 1)
        {
          sub_23B9846E8(v47, qword_27E197A68, qword_23BBE3D90);
          v43 = v45;

          goto LABEL_26;
        }

        v54 = v31;
        v21 = v71;
        v55 = sub_23BA161C0();
        MEMORY[0x28223BE20](v55);
        *(&v70 - 2) = v21;

        v56 = v76;
        sub_23BADC8C0(sub_23BA162CC, (&v70 - 4), v45);
        v58 = v57;
        v76 = v56;
        goto LABEL_25;
      case 8:
        v48 = a2;
        v49 = v32;
        v46 = a1;
        v50 = v74;
        sub_23B979510();
        if (__swift_getEnumTagSinglePayload(v50, 1, v31) == 1)
        {
          sub_23B9846E8(v50, qword_27E197A68, qword_23BBE3D90);
          v43 = v49;

          v39 = v48;
        }

        else
        {
          v54 = v31;
          v59 = sub_23BA161C0();
          MEMORY[0x28223BE20](v59);
          *(&v70 - 2) = v21;

          v60 = v76;
          sub_23BADC8C0(sub_23BA1628C, (&v70 - 4), v49);
          v58 = v61;
          v76 = v60;
          v39 = v48;
LABEL_25:
          v44 = sub_23BA1616C(v21, type metadata accessor for Subscription);
          v41 = v54;
          a1 = v46;
          v43 = v58;
          if (!v58)
          {
            goto LABEL_28;
          }
        }

LABEL_26:
        v65 = v41;
        MEMORY[0x28223BE20](v44);
        *(&v70 - 2) = *(a1 + 16);
        *(&v70 - 2) = v37;
        v66 = sub_23BA121B8(sub_23BA16218, (&v70 - 6), v43);

        v78 = v66;
        v77 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B410, &unk_23BBEC8D0);
        sub_23B97B518(&qword_27E19B418, &qword_27E19B410, &unk_23BBEC8D0, MEMORY[0x277D83970]);
        sub_23BA16238();
        v67 = sub_23BBDD178();

        v68 = v75;
        sub_23BAC7720(v67, v75);

        v69 = type metadata accessor for SubscriptionComparator.Compared(0);
        if (__swift_getEnumTagSinglePayload(v68, 1, v69) != 1)
        {
          sub_23BA16114();
          sub_23BA1616C(v68, type metadata accessor for SubscriptionComparator.Compared);
          v34 = v39;
          v35 = 0;
          v36 = v65;
          return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
        }

        sub_23B9846E8(v68, &qword_27E198850, &qword_23BBE5EC0);
        v41 = v65;
LABEL_28:
        v34 = v39;
        v35 = 1;
        v36 = v41;
        return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
      default:
        if (v40 == 15)
        {
          goto LABEL_28;
        }

LABEL_13:
        v43 = v32;

        goto LABEL_26;
    }
  }

  sub_23BA161C0();
  sub_23BA161C0();
  v34 = a2;
  v35 = 0;
  v36 = v30;
  return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
}

uint64_t sub_23BA10FD4@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53[-v7];
  v64 = sub_23BBDCB58();
  v57 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v56 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = type metadata accessor for SubscriptionOfferManager(0);
  MEMORY[0x28223BE20](v66);
  v55 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_23BBDA928();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_23BBDCDB8();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = v20;
  v63 = v19;
  (*(v20 + 16))(v18, a1, v16);
  v21 = v3 + a2[14];
  v22 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  v23 = *(v21 + *(v22 + 28) + 16);
  v54 = *(v21 + *(v22 + 20));
  v24 = v3 + a2[18];
  v25 = *v24;
  v26 = *(v24 + 8);
  LODWORD(v24) = *(v24 + 16);
  v61 = v23;
  v59 = v11;
  if (v24 == 1)
  {

    v58 = v26;
    sub_23BA15604(v25, v26, 1);
  }

  else
  {

    sub_23BA15604(v25, v26, 0);
    sub_23BBDD5A8();
    v60 = v18;
    v27 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v18 = v60;
    v29 = sub_23BA15630(v25, v26, 0, v28);
    (*(v12 + 8))(v14, v11, v29);
    v25 = v68;
    v58 = v69;
  }

  v30 = v3 + a2[19];
  v31 = *v30;
  v32 = *(v30 + 8);
  LODWORD(v30) = *(v30 + 16);
  v65 = v8;
  v60 = v25;
  if (v30 == 1)
  {
    sub_23BA1569C(v31, v32);
  }

  else
  {

    sub_23BBDD5A8();
    v33 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v35 = sub_23BA15630(v31, v32, 0, v34);
    (*(v12 + 8))(v14, v59, v35);
    v31 = v68;
    v32 = v69;
  }

  v36 = v3 + a2[17];
  v37 = *v36;
  v38 = *(v36 + 8);

  if ((v38 & 1) == 0)
  {
    sub_23BBDD5A8();
    v39 = v12;
    v40 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v37);
    (*(v39 + 8))(v14, v59);
    v37 = v68;
  }

  v41 = v65;
  sub_23BBDC8F8();
  v42 = v64;
  if (__swift_getEnumTagSinglePayload(v41, 1, v64) == 1)
  {
    (*(v62 + 8))(v18, v63);

    sub_23BA1565C(v31, v32);
    sub_23BA1565C(v60, v58);

    sub_23B9846E8(v41, &qword_27E197B90, &qword_23BBE3F90);
    v43 = 1;
    v45 = v66;
    v44 = v67;
  }

  else
  {
    v46 = v56;
    v47 = *(v57 + 32);
    v47(v56, v41, v42);
    v48 = v55;
    (*(v62 + 32))(v55, v18, v63);
    v45 = v66;
    v47(&v48[*(v66 + 20)], v46, v42);
    *&v48[v45[6]] = v61;
    v48[v45[7]] = v54;
    v49 = &v48[v45[8]];
    v50 = v58;
    *v49 = v60;
    v49[1] = v50;
    v51 = &v48[v45[9]];
    *v51 = v31;
    v51[1] = v32;
    *&v48[v45[10]] = v37;
    v44 = v67;
    sub_23BA161C0();
    v43 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v44, v43, 1, v45);
}

uint64_t sub_23BA1166C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SubscriptionComparator.Compared(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  v11 = *(v2 + *(a1 + 44));
  v19 = *(a1 + 16);
  v20 = v2;
  v12 = sub_23BA121B8(sub_23BA1659C, v18, v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    sub_23BA16114();
    for (i = 1; ; ++i)
    {
      if (v13 == i)
      {

        sub_23BA161C0();
        v15 = a2;
        v16 = 0;
        return __swift_storeEnumTagSinglePayload(v15, v16, 1, v5);
      }

      if (i >= *(v12 + 16))
      {
        break;
      }

      sub_23BA16114();
      if (sub_23BA127FC(v7, v10))
      {
        sub_23BA1616C(v10, type metadata accessor for SubscriptionComparator.Compared);
        sub_23BA161C0();
      }

      else
      {
        sub_23BA1616C(v7, type metadata accessor for SubscriptionComparator.Compared);
      }
    }

    __break(1u);

    sub_23BA1616C(v7, type metadata accessor for SubscriptionComparator.Compared);
    result = sub_23BA1616C(v10, type metadata accessor for SubscriptionComparator.Compared);
    __break(1u);
  }

  else
  {

    v15 = a2;
    v16 = 1;
    return __swift_storeEnumTagSinglePayload(v15, v16, 1, v5);
  }

  return result;
}

void (*sub_23BA11900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for StaticSubscriptionOfferView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_23BA15A24;
}

void sub_23BA11A64(uint64_t a1)
{
  v2 = v1;
  v58 = a1;
  v3 = a1 - 8;
  v55 = *(a1 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](a1);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320, &unk_23BBEEBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_23BBDCDB8();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = *(v3 + 96);
  v59 = v2;
  v19 = (v2 + v18);
  v20 = v19[1];
  v53 = *v19;
  *&v61[0] = v53;
  *(&v61[0] + 1) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0, &qword_23BC00A10);
  sub_23BBDBF68();
  if (v60)
  {
  }

  else
  {
    v47 = v14;
    v48 = v21;
    v49 = v20;
    v50 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = v4;
    v52 = v17;
    v22 = v56;
    v23 = v58;
    sub_23BA10668(v58, v9);
    v24 = type metadata accessor for Subscription(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v24) == 1)
    {
      sub_23B9846E8(v9, qword_27E197A68, qword_23BBE3D90);
    }

    else
    {
      v25 = v22;
      v26 = *(v22 + 16);
      v43 = v22 + 16;
      v44 = v26;
      v27 = v47;
      v28 = v10;
      v26(v47, v9, v10);
      sub_23BA1616C(v9, type metadata accessor for Subscription);
      v29 = *(v25 + 32);
      v45 = v25 + 32;
      v46 = v29;
      v30 = v52;
      v29(v52, v27, v28);
      v62 = 0;
      memset(v61, 0, sizeof(v61));
      sub_23B979510();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E8, &qword_23BBEC8A0);
      v31 = v59;
      sub_23BBDBF78();
      sub_23B9846E8(v61, &qword_27E19A9E8, &unk_23BBEC6B0);
      v32 = v57;
      sub_23BBDD328();
      v33 = sub_23BBDD368();
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
      v34 = v54;
      v35 = v55;
      (*(v55 + 16))(v54, v31, v23);
      v36 = v50;
      v44(v50, v30, v28);
      sub_23BBDD308();
      v37 = sub_23BBDD2F8();
      v38 = (*(v35 + 80) + 48) & ~*(v35 + 80);
      v39 = (v51 + *(v25 + 80) + v38) & ~*(v25 + 80);
      v40 = swift_allocObject();
      v41 = MEMORY[0x277D85700];
      *(v40 + 16) = v37;
      *(v40 + 24) = v41;
      *(v40 + 32) = *(v23 + 16);
      (*(v35 + 32))(v40 + v38, v34, v23);
      v46(v40 + v39, v36, v28);
      sub_23BB5D2B8();
      *&v61[0] = v53;
      *(&v61[0] + 1) = v49;
      v60 = v42;
      sub_23BBDBF78();
      (*(v25 + 8))(v52, v28);
    }
  }
}

BOOL sub_23BA11FA8(uint64_t a1)
{
  v1 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  v3 = v2;
  if (v1 == _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0() && v3 == v4)
  {

    return 0;
  }

  else
  {
    v6 = sub_23BBDDA88();

    result = 0;
    if ((v6 & 1) == 0)
    {
      swift_getKeyPath();
      sub_23B9FCC2C();
      v9 = v8;

      swift_getKeyPath();
      sub_23B9FCC2C();
      v11 = v10;

      return v9 == v11;
    }
  }

  return result;
}

BOOL sub_23BA120A8()
{
  swift_getKeyPath();
  sub_23B9FCC2C();
  v1 = v0;

  swift_getKeyPath();
  sub_23B9FCC2C();
  v3 = v2;

  return v3 < v1;
}

BOOL sub_23BA12130()
{
  swift_getKeyPath();
  sub_23B9FCC2C();
  v1 = v0;

  swift_getKeyPath();
  sub_23B9FCC2C();
  v3 = v2;

  return v1 < v3;
}

uint64_t sub_23BA121B8(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198850, &qword_23BBE5EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for SubscriptionComparator.Compared(0);
  v24[2] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v24[3] = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v24[1] = v24 - v12;
  v13 = 0;
  v14 = *(a3 + 16);
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v13)
    {
      return v25;
    }

    v15 = *(type metadata accessor for Subscription(0) - 8);
    a1(a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_23B9846E8(v8, &qword_27E198850, &qword_23BBE5EC0);
      ++v13;
    }

    else
    {
      v24[0] = type metadata accessor for SubscriptionComparator.Compared;
      sub_23BA161C0();
      sub_23BA161C0();
      v16 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23B9B7E08();
        v16 = v20;
      }

      v17 = v16;
      v18 = *(v16 + 16);
      v25 = v17;
      v19 = v18 + 1;
      if (v18 >= *(v17 + 24) >> 1)
      {
        v24[0] = v18 + 1;
        sub_23B9B7E08();
        v19 = v24[0];
        v25 = v21;
      }

      ++v13;
      *(v25 + 16) = v19;
      sub_23BA161C0();
    }
  }

  v22 = v25;

  return v22;
}

uint64_t sub_23BA124D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F0, &qword_23BBEC8A8);
  v9 = OUTLINED_FUNCTION_13_0(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  v13 = OUTLINED_FUNCTION_13_0(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v19 = type metadata accessor for Subscription(0);
  v20 = OUTLINED_FUNCTION_13_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  sub_23BA16114();
  v22 = type metadata accessor for StaticSubscriptionOfferView(0, a2, a3, v21);
  sub_23BA10FD4(a1, v22, v11);
  v23 = type metadata accessor for SubscriptionOfferManager(0);
  OUTLINED_FUNCTION_33_0(v11);
  if (v24)
  {
    sub_23B9846E8(v11, &qword_27E19B3F0, &qword_23BBEC8A8);
    v25 = sub_23BBDCC88();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v25);
  }

  else
  {
    if (*&v11[*(v23 + 40)])
    {

      sub_23BADCDAC(v26, v15);
      v27 = sub_23BBDCC88();
      OUTLINED_FUNCTION_33_0(v15);
      if (v24)
      {
        sub_23BADD250();

        OUTLINED_FUNCTION_33_0(v15);
        if (!v24)
        {
          sub_23B9846E8(v15, &unk_27E19FEF0, &unk_23BBE3E40);
        }
      }

      else
      {

        (*(*(v27 - 8) + 32))(v18, v15, v27);
        __swift_storeEnumTagSinglePayload(v18, 0, 1, v27);
      }
    }

    else
    {
      sub_23BADD438(v18);
    }

    sub_23BA1616C(v11, type metadata accessor for SubscriptionOfferManager);
  }

  sub_23BA161C0();
  v28 = type metadata accessor for SubscriptionComparator.Compared(0);
  sub_23B979688();
  return __swift_storeEnumTagSinglePayload(a4, 0, 1, v28);
}

uint64_t sub_23BA127FC(uint64_t a1, unint64_t a2)
{
  v81 = a2;
  v3 = sub_23BBDCCC8();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v61 - v6;
  v7 = sub_23BBDCD08();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  type metadata accessor for SubscriptionComparator.Compared(0);
  sub_23B979510();
  v17 = sub_23BBDCC88();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
  v63 = a1;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v16, &unk_27E19FEF0, &unk_23BBE3E40);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v61 - 2) = v20;
    swift_getKeyPath();
    swift_getAtKeyPath();

    LODWORD(v21) = v78;
    v74 = WORD2(v78);
    v71 = HIWORD(v78);
    LODWORD(v22) = v79;
    v73 = WORD2(v79);
    v72 = HIWORD(v79);
    LOWORD(v23) = v80;
    LOWORD(v24) = HIWORD(v80);
  }

  else
  {
    v21 = sub_23BBDCC58();
    v22 = v25;
    v23 = v26;
    (*(*(v17 - 8) + 8))(v16, v17);
    v78 = v21;
    v79 = v22;
    v80 = v23;
    v73 = HIDWORD(v22);
    v74 = HIDWORD(v21);
    v71 = HIWORD(v21);
    v72 = HIWORD(v22);
    v24 = HIWORD(v23);
  }

  v27 = v22;
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v13, 1, v17) == 1)
  {
    sub_23B9846E8(v13, &unk_27E19FEF0, &unk_23BBE3E40);
    v28 = swift_getKeyPath();
    MEMORY[0x28223BE20](v28);
    *(&v61 - 2) = v29;
    swift_getKeyPath();
    swift_getAtKeyPath();

    LODWORD(v30) = v75;
    LOWORD(v31) = WORD2(v75);
    v32 = HIWORD(v75);
    LODWORD(v33) = v76;
    LOWORD(v34) = WORD2(v76);
    v35 = HIWORD(v76);
    LOWORD(v36) = v77;
    LOWORD(v37) = HIWORD(v77);
  }

  else
  {
    v30 = sub_23BBDCC58();
    v33 = v38;
    v36 = v39;
    (*(*(v17 - 8) + 8))(v13, v17);
    v31 = HIDWORD(v30);
    v75 = v30;
    v76 = v33;
    v77 = v36;
    v32 = HIWORD(v30);
    v34 = HIDWORD(v33);
    v35 = HIWORD(v33);
    v37 = HIWORD(v36);
  }

  v40 = v33;
  v41 = v21 | (v74 << 32) | (v71 << 48);
  v42 = v27 | (v73 << 32) | (v72 << 48);
  v43 = v23 | (v24 << 16);
  v44 = v30 | (v31 << 32) | (v32 << 48);
  v45 = v36 | (v37 << 16);
  v46 = v40 | (v34 << 32) | (v35 << 48);
  if (MEMORY[0x23EEB5E00](v41, v42, v43, v44, v46, v45))
  {
    v47 = swift_getKeyPath();
    MEMORY[0x28223BE20](v47);
    *(&v61 - 2) = v48;
    swift_getKeyPath();
    v49 = v62;
    swift_getAtKeyPath();

    v50 = v67;
    sub_23BBDCCD8();
    v51 = v66;
    v52 = *(v65 + 8);
    v52(v49, v66);
    v53 = swift_getKeyPath();
    MEMORY[0x28223BE20](v53);
    *(&v61 - 2) = v54;
    swift_getKeyPath();
    v55 = v64;
    swift_getAtKeyPath();

    v56 = v68;
    sub_23BBDCCD8();
    v52(v55, v51);
    sub_23BA164F4(&qword_27E19B408, MEMORY[0x277CDD2F0], MEMORY[0x277CDD2F8]);
    v57 = v70;
    v58 = sub_23BBDCEC8();
    v59 = *(v69 + 8);
    v59(v56, v57);
    v59(v50, v57);
  }

  else
  {
    v58 = MEMORY[0x23EEB5DF0](v41, v42, v43, v44, v46, v45);
  }

  return v58 & 1;
}

double sub_23BA12EC8@<D0>(uint64_t a2@<X8>)
{
  sub_23BA52DEC();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_23BA13004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  v5 = OUTLINED_FUNCTION_13_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v46 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3D8, &unk_23BBEC820);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  v18 = (&v44 - v17);
  v48 = a1;
  v49 = v2;
  v19 = v2 + *(a1 + 64);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 32);
  if (*(v19 + 40) == 1)
  {
  }

  else
  {
    v23 = *(v19 + 16);
    v44 = *(v19 + 24);
    v45 = v23;

    sub_23BBDD5A8();
    v24 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v25 = sub_23B9AD3D4(v20, v21, v45, v44, v22, 0);
    (*(v10 + 8))(v14, v46, v25);
    v20 = v52;
  }

  v27 = v48;
  v26 = v49;
  sub_23BA0F9FC(v48, v8);
  v28 = v20(v8);

  OUTLINED_FUNCTION_2_17();
  sub_23BA1616C(v8, v29);
  v52 = *(v26 + *(v27 + 88));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0, &qword_23BC00A10);
  sub_23BBDBF68();
  v30 = v50;
  if (v50)
  {
  }

  v31 = v30 != 0;
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = *(v15 + 36);
  if (qword_27E197748 != -1)
  {
    swift_once();
  }

  v35 = (v18 + v34);
  type metadata accessor for CanMakePaymentsCache(0);
  sub_23BA164F4(&qword_27E1982E8, type metadata accessor for CanMakePaymentsCache, &unk_23BBEFE88);

  *v35 = sub_23BBDA0E8();
  v35[1] = v36;
  v37 = *(type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0) + 20);
  *(v35 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982F0, &unk_23BBEC890);
  swift_storeEnumTagMultiPayload();
  *v18 = v28;
  v18[1] = KeyPath;
  v18[2] = sub_23B989418;
  v18[3] = v33;
  v38 = (v49 + *(v48 + 96));
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v50) = v39;
  v51 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  sub_23BBDBF88();
  v41 = v52;
  v42 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E8, &qword_23BBEC8A0);
  sub_23BBDBF68();
  sub_23BBB77D8(v41, *(&v41 + 1), v42);

  sub_23B9846E8(&v52, &qword_27E19A9E8, &unk_23BBEC6B0);
  return sub_23B9846E8(v18, &qword_27E19B3D8, &unk_23BBEC820);
}

uint64_t sub_23BA13480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[40] = a6;
  v7[41] = a7;
  v7[38] = a4;
  v7[39] = a5;
  v8 = sub_23BBDC5F8();
  v7[42] = v8;
  v7[43] = *(v8 - 8);
  v7[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  v7[45] = swift_task_alloc();
  v7[46] = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  v7[47] = swift_task_alloc();
  type metadata accessor for PurchaseAction(0);
  v7[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F8, &unk_23BBEC8C0);
  v7[49] = swift_task_alloc();
  sub_23BBDD308();
  v7[50] = sub_23BBDD2F8();
  v10 = sub_23BBDD2D8();
  v7[51] = v10;
  v7[52] = v9;

  return MEMORY[0x2822009F8](sub_23BA13644, v10, v9);
}

uint64_t sub_23BA13644()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v14 = *(v0 + 352);
  v3 = *(v0 + 344);
  v13 = *(v0 + 336);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  sub_23BBCA338(v1);
  v7 = type metadata accessor for PurchaseConfigurationEvent(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v7);
  v9 = type metadata accessor for StaticSubscriptionOfferView(0, v5, v4, v8);
  *(v0 + 424) = v9;
  memcpy((v0 + 16), (v6 + *(v9 + 80)), 0x59uLL);
  sub_23BA5DACC(v0 + 112);
  sub_23B9B7654();
  sub_23BA0F9FC(v9, v2);
  sub_23B979510();
  OUTLINED_FUNCTION_2_17();
  sub_23BA1616C(v2, v10);
  (*(v3 + 104))(v14, *MEMORY[0x277CDD090], v13);
  v11 = swift_task_alloc();
  *(v0 + 432) = v11;
  v11[2] = v5;
  v11[3] = v4;
  v11[4] = v6;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 248) = 0;

  return MEMORY[0x2822009F8](sub_23BA137D4, 0, 0);
}

uint64_t sub_23BA137D4()
{
  *(v0 + 440) = sub_23BA5E908();
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_23BA138B4;

  return sub_23BA5EA98();
}

uint64_t sub_23BA138B4()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;
  v19 = v1[48];
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 360);
  v6 = v1[44];
  v7 = v1[43];
  v8 = v1[42];
  v9 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v10 = v9;

  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v11 + 112), v1[15]);
  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v12 + 128), v1[17]);
  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v13 + 144), v1[19]);
  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v14 + 160), v1[21]);
  *(v2 + 16) = *(v2 + 11);
  *(v2 + 272) = *(v2 + 192);
  sub_23B9846E8((v2 + 32), &qword_27E19B400, &qword_23BBFF360);

  (*(v7 + 8))(v6, v8);
  sub_23B9846E8(v5, &unk_27E19FEF0, &unk_23BBE3E40);
  sub_23BA1616C(v19, type metadata accessor for PurchaseAction);
  OUTLINED_FUNCTION_43_0();
  v16 = *(v15 + 416);
  v17 = v1[51];

  return MEMORY[0x2822009F8](sub_23BA13B90, v17, v16);
}

uint64_t sub_23BA13B90()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 392);
  v3 = *(v0 + 304);

  *(v0 + 280) = *(v3 + *(v1 + 88));
  *(v0 + 296) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0, &qword_23BC00A10);
  sub_23BBDBF78();
  sub_23B9846E8(v2, &qword_27E19B3F8, &unk_23BBEC8C0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23BA13C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23BA160B0(a1, v13);
  v8 = type metadata accessor for StaticSubscriptionOfferView(0, a3, a4, v7);
  sub_23B979510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E8, &qword_23BBEC8A0);
  sub_23BBDBF78();
  sub_23B9846E8(v13, &qword_27E19A9E8, &unk_23BBEC6B0);
  v9 = (a2 + *(v8 + 96));
  v10 = *v9;
  v11 = *(v9 + 1);
  v13[0] = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078, &unk_23BBEF500);
  return sub_23BBDBF78();
}

uint64_t sub_23BA13D88()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA19284();
  *v0 = result;
  return result;
}

uint64_t sub_23BA13DE0()
{
  v0 = sub_23BA13E88();
  v2 = v1;
  v4 = v3;
  v5 = sub_23BA13E88();
  if (MEMORY[0x23EEB5DF0](v0, v2, v4, v5, v6, v7))
  {
    return -1;
  }

  sub_23BA13E88();
  v9 = sub_23BA13E88();
  return MEMORY[0x23EEB5DF0](v9) & 1;
}

uint64_t sub_23BA13E88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v30[-v1];
  v3 = sub_23BBDCC88();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23BBDCD08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getAtKeyPath();

  v9 = sub_23BA144CC();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v35 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getAtKeyPath();

  MEMORY[0x23EEB5E10](v11, v9);
  v12 = sub_23BBDD608();
  v14 = v13;
  v16 = v15;
  if (sub_23BBDCC98())
  {
    MEMORY[0x23EEB5DD0](6);
    v12 = sub_23BBDD608();
    v14 = v17;
    v16 = v18;
  }

  type metadata accessor for SubscriptionComparator.Compared(0);
  sub_23B979510();
  v19 = v34;
  if (__swift_getEnumTagSinglePayload(v2, 1, v34) == 1)
  {
    sub_23B9846E8(v2, &unk_27E19FEF0, &unk_23BBE3E40);
  }

  else
  {
    v31 = v16;
    (*(v33 + 32))(v32, v2, v19);
    sub_23BBDCC68();
    v20 = sub_23BA144CC();
    v10(v8, v5);
    sub_23BBDCC58();
    MEMORY[0x23EEB5E10](v20);
    v21 = sub_23BBDD608();
    v23 = v22;
    v25 = v24;
    if (sub_23BBDCC98())
    {
      MEMORY[0x23EEB5DD0](6);
      v21 = sub_23BBDD608();
      v23 = v26;
      v25 = v27;
    }

    v28 = MEMORY[0x23EEB5DF0](v12, v14, v31, v21, v23, v25);
    (*(v33 + 8))(v32, v34);
    if ((v28 & 1) == 0)
    {
      return v21;
    }
  }

  return v12;
}

uint64_t sub_23BA142D4(char a1)
{
  sub_23BBDDBB8();
  sub_23BBD9868();
  return sub_23BBDDBF8();
}

uint64_t sub_23BA14344(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23BBD9868();
  return sub_23BBDDBF8();
}

unint64_t sub_23BA14398()
{
  result = qword_27E19B2E0;
  if (!qword_27E19B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B2E0);
  }

  return result;
}

unint64_t sub_23BA143F0()
{
  result = qword_27E19B2E8;
  if (!qword_27E19B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B2E8);
  }

  return result;
}

uint64_t sub_23BA1445C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA19284();
  *v0 = result;
  return result;
}

uint64_t sub_23BA14490()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B9C8B44();
  *v0 = result;
  return result;
}

double sub_23BA144CC()
{
  v0 = sub_23BBDCCC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDCCD8();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CDD2D0])
  {
    v5 = sub_23BBDCCE8();
    return v5 / 30.0;
  }

  v6 = v4;
  if (v4 == *MEMORY[0x277CDD2D8])
  {
    v5 = sub_23BBDCCE8() * 7.0;
    return v5 / 30.0;
  }

  if (v4 == *MEMORY[0x277CDD2E8])
  {
    return sub_23BBDCCE8();
  }

  v9 = *MEMORY[0x277CDD2E0];
  v7 = sub_23BBDCCE8();
  if (v6 == v9)
  {
    return v7 * 12.0;
  }

  (*(v1 + 8))(v3, v0);
  return v7;
}

void sub_23BA14784(uint64_t a1)
{
  sub_23BA15428(319, &qword_27E197B28, type metadata accessor for Subscription, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23BA154F0(319, &qword_27E19ACA8, &type metadata for Product.SubscriptionRelationship, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23BA15428(319, &qword_27E19B388, type metadata accessor for Subscription, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23BA154F0(319, &qword_27E19ACB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(319);
            if (v6 <= 0x3F)
            {
              sub_23BA1548C(319, &qword_27E199FE8, &qword_27E199FF0, qword_23BBE9530, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_23BA154F0(319, &qword_27E19ACB8, &type metadata for AnySubscriptionOfferViewStyle, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_23BA1548C(319, &qword_27E19B390, &qword_27E19B398, qword_23BBF7C40, MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_23BA1548C(319, &qword_27E19B3A0, &qword_27E19B3A8, qword_23BBEC7B0, MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
                    {
                      sub_23BA1548C(319, &qword_27E19B3B0, &qword_27E19B3B8, qword_23BC00900, MEMORY[0x277CDF468]);
                      if (v11 <= 0x3F)
                      {
                        sub_23BA15428(319, &qword_27E19B3C0, type metadata accessor for PurchaseAction, MEMORY[0x277CDF468]);
                        if (v12 <= 0x3F)
                        {
                          sub_23BA1548C(319, &qword_27E19B3C8, &qword_27E19B2F0, &qword_23BC02CB0, MEMORY[0x277CE10B8]);
                          if (v13 <= 0x3F)
                          {
                            sub_23BA1548C(319, &qword_27E19B3D0, &qword_27E19A9E8, &unk_23BBEC6B0, MEMORY[0x277CE10B8]);
                            if (v14 <= 0x3F)
                            {
                              sub_23BA154F0(319, &qword_27E199908, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                              if (v15 <= 0x3F)
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
    }
  }
}

uint64_t sub_23BA14B78(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v42 = sub_23BBDCDB8();
  v5 = *(v42 - 8);
  v43 = *(v5 + 84);
  if (v43 <= 0xFD)
  {
    v6 = 253;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v7 = v6 - 1;
  v40 = *(a3 + 16);
  v8 = *(v40 - 8);
  if ((v6 - 1) <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v6 - 1;
  }

  v41 = *(v8 + 84);
  if (v9 <= v41)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_23BBDB328() - 8);
  if (((*(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = ((*(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v13 = *(v5 + 64);
  v14 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v5 + 80) & 0xF8 | 7;
  v17 = v15 + v16 + 9;
  v18 = v13 + 55;
  v19 = v14 + 8;
  v20 = *(v8 + 64) + v16;
  v21 = a1;
  if (v10 < a2)
  {
    v22 = *(v11 + 80) & 0xF8 | 7;
    v23 = ((((v12 + ((((((v15 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v22 + ((v20 + ((v19 + ((((v18 + (v17 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14)) & ~v16) + 241) & ~v22) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
    v24 = v23 & 0xFFFFFFF8;
    if ((v23 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v10 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    switch(v27)
    {
      case 1:
        v28 = *(a1 + v23);
        if (!*(a1 + v23))
        {
          break;
        }

        goto LABEL_31;
      case 2:
        v28 = *(a1 + v23);
        if (*(a1 + v23))
        {
          goto LABEL_31;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA14F34);
      case 4:
        v28 = *(a1 + v23);
        if (!v28)
        {
          break;
        }

LABEL_31:
        v30 = v28 - 1;
        if ((v23 & 0xFFFFFFF8) != 0)
        {
          v30 = 0;
          v24 = *a1;
        }

        return v10 + (v24 | v30) + 1;
      default:
        break;
    }
  }

  if (v7 == v10)
  {
    v31 = v43;
    if (v43 >= 0xFD)
    {
LABEL_37:
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v31, v42);
LABEL_52:
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    v36 = a1 + v13;
LABEL_43:
    v37 = *(((v36 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v37 >= 2)
    {
      v38 = (v37 + 2147483646) & 0x7FFFFFFF;
    }

    else
    {
      v38 = -1;
    }

    if ((v38 + 1) >= 2)
    {
      EnumTagSinglePayload = v38;
    }

    else
    {
      EnumTagSinglePayload = 0;
    }

    goto LABEL_52;
  }

  v33 = ~v16;
  v34 = ((v18 + ((a1 + v17) & ~v16)) & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 0x80000000) != 0)
  {
    v39 = (v19 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14;
    if (v41 < v9)
    {
      v21 = ((v20 + v39) & v33);
      v31 = v43;
      if (v43 >= 0xFD)
      {
        goto LABEL_37;
      }

      v36 = v21 + v13;
      goto LABEL_43;
    }

    return __swift_getEnumTagSinglePayload(v39, v41, v40);
  }

  else
  {
    v35 = *v34;
    if (*v34 >= 0xFFFFFFFF)
    {
      LODWORD(v35) = -1;
    }

    return (v35 + 1);
  }
}

void sub_23BA14F48(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = sub_23BBDCDB8();
  v7 = *(v6 - 8);
  v8 = v7;
  if (*(v7 + 84) <= 0xFDu)
  {
    v9 = 253;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v46 = *(v7 + 84);
  v47 = v9;
  v10 = v9 - 1;
  v43 = *(a4 + 16);
  v44 = v6;
  v11 = *(v43 - 8);
  v12 = *(v11 + 84);
  if ((v9 - 1) <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v9 - 1;
  }

  v45 = v13;
  if (v13 <= v12)
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v13;
  }

  v15 = *(sub_23BBDB328() - 8);
  if (((*(v15 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = ((*(v15 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v7 + 64);
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + 9;
  v20 = *(v8 + 80) & 0xF8 | 7;
  v21 = *(v11 + 80);
  v22 = v18 + 9 + v20;
  v23 = *(v11 + 64) + v20;
  v24 = *(v15 + 80) & 0xF8 | 7;
  v25 = ((((v16 + ((((((v18 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v24 + ((v23 + ((v21 + 8 + ((((v17 + 55 + (v22 & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v20) + 241) & ~v24) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v28 = 0;
  }

  else
  {
    if (((((v16 + ((((((v18 + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + v24 + ((v23 + ((v21 + 8 + ((((v17 + 55 + (v22 & ~v20)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v21)) & ~v20) + 241) & ~v24) + 31) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a3 - v14 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  if (a2 > v14)
  {
    if (v25)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v14;
    }

    if (v25)
    {
      bzero(a1, v25);
      *a1 = ~v14 + a2;
    }

    switch(v28)
    {
      case 1:
        *(a1 + v25) = v29;
        return;
      case 2:
        *(a1 + v25) = v29;
        return;
      case 3:
        goto LABEL_78;
      case 4:
        *(a1 + v25) = v29;
        return;
      default:
        return;
    }
  }

  v30 = ~v20;
  switch(v28)
  {
    case 1:
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    case 2:
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    case 3:
LABEL_78:
      __break(1u);
      JUMPOUT(0x23BA15400);
    case 4:
      *(a1 + v25) = 0;
      goto LABEL_40;
    default:
LABEL_40:
      if (!a2)
      {
        return;
      }

LABEL_41:
      if (v10 != v14)
      {
        v36 = ((v17 + 55 + ((a1 + v22) & v30)) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v37 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v37 = a2 - 1;
          }

          *v36 = v37;
          return;
        }

        v34 = ((v21 + 8 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21);
        if (v12 >= v45)
        {
          v32 = a2;
          v33 = v12;
          v35 = v43;
          goto LABEL_65;
        }

        v38 = ((v34 + v23) & v30);
        if (v45 >= a2)
        {
          if (v10 >= a2)
          {
            v40 = a2 - v47;
            if (a2 < v47)
            {
              v32 = a2 + 1;
              v33 = v46;
              if (v46 >= 0xFD)
              {
                v34 = ((v34 + v23) & v30);
                goto LABEL_45;
              }

              v41 = &v38[v17];
LABEL_58:
              v42 = (v41 + 7) & 0xFFFFFFFFFFFFFFF8;
              if (a2 > 0xFC)
              {
                *v42 = 0;
                *(v42 + 8) = 0;
                *v42 = a2 - 253;
              }

              else
              {
                *(v42 + 8) = v32 + 2;
              }

              return;
            }
          }

          else
          {
            v40 = a2 - v47;
          }

          bzero(v38, v18 + 9);
          if (v19 <= 3)
          {
            *v38 = v40;
            return;
          }
        }

        else
        {
          v39 = (((v18 + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
          if (v39 == -24)
          {
            return;
          }

          v40 = ~v45 + a2;
          bzero(((v34 + v23) & v30), (v39 + 24));
        }

        *v38 = v40;
        return;
      }

      v31 = a2 - v47;
      if (a2 >= v47)
      {
        bzero(a1, v18 + 9);
        if (v19 <= 3)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v31;
        }

        return;
      }

      v32 = a2 + 1;
      v33 = v46;
      if (v46 < 0xFD)
      {
        v41 = a1 + v17;
        goto LABEL_58;
      }

      v34 = a1;
LABEL_45:
      v35 = v44;
LABEL_65:

      __swift_storeEnumTagSinglePayload(v34, v32, v33, v35);
      return;
  }
}

void sub_23BA15428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23BA1548C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_23BA154F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23BA155A4()
{

  return swift_deallocObject();
}

uint64_t sub_23BA15604(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_23BA1569C(a1, a2);
  }
}

double sub_23BA15630(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  if (a3)
  {
    return sub_23BA1565C(a1, a2);
  }

  return result;
}

double sub_23BA1565C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_23BA1569C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BA156DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 16);
  type metadata accessor for StaticSubscriptionOfferView(0, v6, *(v5 + 24), a4);
  OUTLINED_FUNCTION_19_0();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v5 + v8;
  v10 = type metadata accessor for Subscription(0);
  if (!__swift_getEnumTagSinglePayload(v5 + v8, 1, v10))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v11 + 8))(v5 + v8);
  }

  v12 = v4[9];
  if (!__swift_getEnumTagSinglePayload(v9 + v12, 1, v10))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v13 + 8))(v9 + v12);
  }

  (*(*(v6 - 8) + 8))(v9 + v4[13], v6);
  v14 = v9 + v4[14];
  if (!__swift_getEnumTagSinglePayload(v14, 1, v10))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v15 + 8))(v14);
  }

  type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);

  OUTLINED_FUNCTION_16_9((v9 + v4[15]));
  OUTLINED_FUNCTION_13_11(v9 + v4[16]);
  OUTLINED_FUNCTION_16_9((v9 + v4[17]));
  v17.n128_f64[0] = OUTLINED_FUNCTION_15_9(v9 + v4[18], v16);
  OUTLINED_FUNCTION_15_9(v9 + v4[19], v17);
  v18 = v9 + v4[20];
  j__swift_release(*v18);
  j__swift_release(*(v18 + 16));
  j__swift_release(*(v18 + 32));
  v20.n128_f64[0] = sub_23BA15630(*(v18 + 48), *(v18 + 56), *(v18 + 64), v19);
  sub_23BA15630(*(v18 + 72), *(v18 + 80), *(v18 + 88), v20);
  v21 = v9 + v4[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_12_1();
    (*(v22 + 8))(v21);
  }

  else
  {
  }

  if (*(v9 + v4[23] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v9 + v4[23]));
  }

  return swift_deallocObject();
}

void sub_23BA15A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for StaticSubscriptionOfferView(0, v5, v6, a4);
  OUTLINED_FUNCTION_13_0(v7);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_23BA11A38(v10, v5, v6, v8);
}

uint64_t sub_23BA15AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 32);
  type metadata accessor for StaticSubscriptionOfferView(0, v6, *(v5 + 40), a4);
  OUTLINED_FUNCTION_19_0();
  v8 = *(v7 + 80);
  v26 = *(v9 + 64);
  v10 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  v13 = *(v11 + 80);
  swift_unknownObjectRelease();
  v14 = v5 + ((v8 + 48) & ~v8);
  v15 = type metadata accessor for Subscription(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    (*(v12 + 8))(v5 + ((v8 + 48) & ~v8), v10);
  }

  v16 = v4[9];
  if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v15))
  {
    (*(v12 + 8))(v14 + v16, v10);
  }

  (*(*(v6 - 8) + 8))(v14 + v4[13], v6);
  v17 = v14 + v4[14];
  if (!__swift_getEnumTagSinglePayload(v17, 1, v15))
  {
    (*(v12 + 8))(v17, v10);
  }

  type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);

  OUTLINED_FUNCTION_16_9((v14 + v4[15]));
  OUTLINED_FUNCTION_13_11(v14 + v4[16]);
  OUTLINED_FUNCTION_16_9((v14 + v4[17]));
  v19.n128_f64[0] = OUTLINED_FUNCTION_15_9(v14 + v4[18], v18);
  OUTLINED_FUNCTION_15_9(v14 + v4[19], v19);
  v20 = v14 + v4[20];
  j__swift_release(*v20);
  j__swift_release(*(v20 + 16));
  j__swift_release(*(v20 + 32));
  v22.n128_f64[0] = sub_23BA15630(*(v20 + 48), *(v20 + 56), *(v20 + 64), v21);
  sub_23BA15630(*(v20 + 72), *(v20 + 80), *(v20 + 88), v22);
  v23 = v14 + v4[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8, &qword_23BC00990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_12_1();
    (*(v24 + 8))(v23);
  }

  else
  {
  }

  if (*(v14 + v4[23] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v14 + v4[23]));
  }

  (*(v12 + 8))(v5 + ((((v8 + 48) & ~v8) + v26 + v13) & ~v13), v10);

  return swift_deallocObject();
}

uint64_t sub_23BA15E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for StaticSubscriptionOfferView(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_13_0(v13);
  v15 = (v11 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v4[2];
  v17 = v4[3];
  v18 = swift_task_alloc();
  *(v6 + 16) = v18;
  *v18 = v6;
  v18[1] = sub_23BA15FB8;

  return sub_23BA13480(a1, v16, v17, v4 + v11, v4 + v15, v9, v8);
}

uint64_t sub_23BA15FB8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_23BA160B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23BA16114()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BA1616C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BA161C0()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

unint64_t sub_23BA16238()
{
  result = qword_27E19B420;
  if (!qword_27E19B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B420);
  }

  return result;
}

unint64_t sub_23BA162F4()
{
  result = qword_27E19B428;
  if (!qword_27E19B428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B430, &qword_23BBEC910);
    sub_23BA16380();
    sub_23BA1653C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B428);
  }

  return result;
}

unint64_t sub_23BA16380()
{
  result = qword_27E19B438;
  if (!qword_27E19B438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B3D8, &unk_23BBEC820);
    sub_23BA1643C();
    sub_23BA164F4(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier, &unk_23BBEFFCC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B438);
  }

  return result;
}

unint64_t sub_23BA1643C()
{
  result = qword_27E19B440;
  if (!qword_27E19B440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B448, &qword_23BBEC918);
    sub_23B97B518(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B440);
  }

  return result;
}

uint64_t sub_23BA164F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BA1653C()
{
  result = qword_27E19B450;
  if (!qword_27E19B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19B450);
  }

  return result;
}

double OUTLINED_FUNCTION_13_11@<D0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return sub_23B9AD3D4(v2, v3, v4, v5, v6, v7);
}

double OUTLINED_FUNCTION_15_9@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);

  return sub_23BA15630(v3, v4, v5, a2);
}

uint64_t OUTLINED_FUNCTION_16_9@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return j__swift_release(v2);
}

uint64_t static StoreButtonKind.cancellation.getter@<X0>(uint64_t *a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  return result;
}

uint64_t View.storeButton(_:for:)()
{
  OUTLINED_FUNCTION_3_16();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B458, &qword_23BBEC940);
  return MEMORY[0x23EEB43C0](&v4, v1, v2, v0);
}

unint64_t sub_23BA166B8()
{
  sub_23BA17678();
  sub_23BBDA958();
  return v1 | (v2 << 32);
}

uint64_t sub_23BA16740(uint64_t result, uint64_t a2)
{
  if (a2 != 3)
  {
    *result = a2;
    *(result + 2) = BYTE2(a2);
    *(result + 3) = BYTE3(a2);
    *(result + 4) = BYTE4(a2);
  }

  return result;
}

uint64_t StoreContent.storeButton(_:for:)()
{
  OUTLINED_FUNCTION_3_16();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B458, &qword_23BBEC940);
  OUTLINED_FUNCTION_0_19();
  v6 = sub_23B97B518(v4, &qword_27E19B458, &qword_23BBEC940, v5);
  return sub_23BB6B068(&v8, v1, v3, v0, v6, v2);
}

uint64_t static StoreButtonKind.restorePurchases.getter@<X0>(uint64_t *a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  return result;
}

uint64_t static StoreButtonKind.redeemCode.getter@<X0>(uint64_t *a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  return result;
}

uint64_t static StoreButtonKind.signIn.getter@<X0>(uint64_t *a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  return result;
}

uint64_t static StoreButtonKind.policies.getter@<X0>(uint64_t *a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  return result;
}

uint64_t sub_23BA168D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B458, &qword_23BBEC940);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_0_19();
  sub_23B97B518(v0, &qword_27E19B458, &qword_23BBEC940, v1);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BA16958(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B458, &qword_23BBEC940);
  OUTLINED_FUNCTION_0_19();
  v7[0] = v1;
  v7[1] = v3;
  v7[2] = v2;
  v7[3] = sub_23B97B518(v4, &qword_27E19B458, &qword_23BBEC940, v5);
  type metadata accessor for ModifiedStoreContent(255, v7);
  return swift_getWitnessTable();
}

uint64_t sub_23BA169F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA16A78(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 1) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFD)
      {
        return __swift_getEnumTagSinglePayload(&a1[v7 + 1] & ~v7, v6, v4);
      }

      v16 = *a1;
      if (v16 >= 3)
      {
        return v16 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (a1[2] << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}