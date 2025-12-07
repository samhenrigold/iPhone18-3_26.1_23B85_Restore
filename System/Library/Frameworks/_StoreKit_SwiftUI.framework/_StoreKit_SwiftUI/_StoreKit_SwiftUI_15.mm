uint64_t sub_23BAD990C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v18 = sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FC60, &qword_23BBF9E90);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = sub_23BBDAB48();
  v23 = 0;
  sub_23BAD9C2C(v27);
  memcpy(v25, v27, 0x129uLL);
  memcpy(v26, v27, 0x129uLL);
  sub_23BA9B0D4(v25, v21, &qword_27E19FC68, &qword_23BBF9E98);
  sub_23B9EA92C(v26, &qword_27E19FC68, &qword_23BBF9E98);
  memcpy(&v22[7], v25, 0x129uLL);
  v12 = v23;
  v13 = sub_23BBDB3A8();
  v24 = 1;
  v21[0] = v11;
  v21[1] = 0x4038000000000000;
  LOBYTE(v21[2]) = v12;
  memcpy(&v21[2] + 1, v22, 0x130uLL);
  LOBYTE(v21[41]) = v13;
  memset(&v21[42], 0, 32);
  LOBYTE(v21[46]) = 1;
  sub_23BBDB138();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FC70, &qword_23BBF9EA0);
  v15 = sub_23BADA090();
  sub_23BBDB968();
  (*(v2 + 8))(v5, v18);
  memcpy(v27, v21, 0x171uLL);
  sub_23B9EA92C(v27, &qword_27E19FC70, &qword_23BBF9EA0);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v21[0] = v14;
  v21[1] = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v19;
  sub_23BBDBA28();

  return (*(v7 + 8))(v10, v16);
}

uint64_t sub_23BAD9C2C@<X0>(void *a1@<X8>)
{
  sub_23BB6F948(0, 0, __src, 80.0, 80.0);
  v61 = 1;
  v60 = 1;
  v59 = 1;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v62 = 0;
  v1 = sub_23BBDC318();
  v25 = v2;
  v26 = v1;
  v3 = sub_23BAD961C();
  if (v4)
  {
    v34[0] = v3;
    v34[1] = v4;
    sub_23B9F6A08();
    v5 = sub_23BBDB678();
    v7 = v6;
    v9 = v8;
    sub_23BBDB418();
    sub_23BBDB448();

    v10 = sub_23BBDB618();
    v22 = v11;
    v23 = v10;
    v13 = v12;
    v21 = v14;

    sub_23BA51C9C(v5, v7, v9 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v34[0]) = v13 & 1;
    v15 = v13 & 1;
    v19 = 1;
    v16 = sub_23BBDB388();
    v18 = 65537;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    KeyPath = 0;
    v21 = 0;
    v19 = 0;
    v16 = 0;
    v18 = 0;
    v15 = 0;
  }

  memcpy(__dst, __src, 0x60uLL);
  __dst[12] = 0;
  LOBYTE(__dst[13]) = 1;
  *(&__dst[13] + 1) = *v69;
  HIDWORD(__dst[13]) = *&v69[3];
  __dst[14] = 0;
  LOBYTE(__dst[15]) = 1;
  *(&__dst[15] + 1) = *v68;
  HIDWORD(__dst[15]) = *&v68[3];
  __dst[16] = 0;
  LOBYTE(__dst[17]) = 1;
  HIDWORD(__dst[17]) = *&v67[3];
  *(&__dst[17] + 1) = *v67;
  __dst[18] = 0x4054000000000000;
  LOBYTE(__dst[19]) = 0;
  *(&__dst[19] + 1) = *v66;
  HIDWORD(__dst[19]) = *&v66[3];
  __dst[20] = 0x4054000000000000;
  LOBYTE(__dst[21]) = 0;
  *(&__dst[21] + 1) = *v65;
  HIDWORD(__dst[21]) = *&v65[3];
  __dst[22] = 0x4054000000000000;
  LOWORD(__dst[23]) = 0;
  *(&__dst[23] + 2) = v63;
  HIWORD(__dst[23]) = v64;
  __dst[24] = v26;
  __dst[25] = v25;
  memcpy(v27, __dst, 0xD0uLL);
  v29[0] = v23;
  v29[1] = v22;
  v29[2] = v15;
  v29[3] = v21;
  v29[4] = KeyPath;
  v29[5] = v18;
  v29[6] = v16;
  memset(&v29[7], 0, 32);
  LOBYTE(v29[11]) = v19;
  memcpy(&v27[208], v29, 0x59uLL);
  memcpy(a1, v27, 0x129uLL);
  v30[0] = v23;
  v30[1] = v22;
  v30[2] = v15;
  v30[3] = v21;
  v30[4] = KeyPath;
  v30[5] = v18;
  v30[6] = v16;
  v31 = 0u;
  v32 = 0u;
  v33 = v19;
  sub_23BA9B0D4(__dst, v34, &qword_27E19FC90, &qword_23BBF9EB0);
  sub_23BA9B0D4(v29, v34, &qword_27E19FC98, &qword_23BBF9EB8);
  sub_23B9EA92C(v30, &qword_27E19FC98, &qword_23BBF9EB8);
  memcpy(v34, __src, 0x60uLL);
  v34[12] = 0;
  v35 = 1;
  *v36 = *v69;
  *&v36[3] = *&v69[3];
  v37 = 0;
  v38 = 1;
  *v39 = *v68;
  *&v39[3] = *&v68[3];
  v40 = 0;
  v41 = 1;
  *&v42[3] = *&v67[3];
  *v42 = *v67;
  v43 = 0x4054000000000000;
  v44 = 0;
  *v45 = *v66;
  *&v45[3] = *&v66[3];
  v46 = 0x4054000000000000;
  v47 = 0;
  *v48 = *v65;
  *&v48[3] = *&v65[3];
  v49 = 0x4054000000000000;
  v50 = 0;
  v51 = 0;
  v52 = v63;
  v53 = v64;
  v54 = v26;
  v55 = v25;
  return sub_23B9EA92C(v34, &qword_27E19FC90, &qword_23BBF9EB0);
}

uint64_t sub_23BADA040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_23BBDDA88();
  }
}

unint64_t sub_23BADA090()
{
  result = qword_27E19FC78;
  if (!qword_27E19FC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FC70, &qword_23BBF9EA0);
    sub_23BADA11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FC78);
  }

  return result;
}

unint64_t sub_23BADA11C()
{
  result = qword_27E19FC80;
  if (!qword_27E19FC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FC88, &qword_23BBF9EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FC80);
  }

  return result;
}

uint64_t sub_23BADA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BADA40C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BADA1E4()
{
  sub_23BADA2DC();
  sub_23BBDA958();
  return v1;
}

double sub_23BADA264(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_23BADA274(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_23BBDCE28();

  return v4;
}

unint64_t sub_23BADA2DC()
{
  result = qword_27E19FCA0;
  if (!qword_27E19FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCA0);
  }

  return result;
}

unint64_t sub_23BADA344()
{
  result = qword_27E19FCA8;
  if (!qword_27E19FCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FCB0, &qword_23BBF9F08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FC70, &qword_23BBF9EA0);
    sub_23BADA090();
    swift_getOpaqueTypeConformance2();
    sub_23BAB2CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCA8);
  }

  return result;
}

unint64_t sub_23BADA40C()
{
  result = qword_27E19FCB8;
  if (!qword_27E19FCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FC58, &unk_23BBF9DC8);
    sub_23BADA490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCB8);
  }

  return result;
}

unint64_t sub_23BADA490()
{
  result = qword_27E19FCC0;
  if (!qword_27E19FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

id sub_23BADA504()
{
  v0 = sub_23BBDA658();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 scene];

    if (v2)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v1 = [v3 screen];

        return v1;
      }
    }

    return 0;
  }

  return v1;
}

double sub_23BADA598()
{
  v0 = sub_23BADA504();
  if (!v0)
  {
    v0 = [objc_opt_self() mainScreen];
  }

  v1 = v0;
  [v0 bounds];
  v3 = v2;

  return v3;
}

uint64_t sub_23BADA630()
{
  sub_23BA24088();
  sub_23BBDA958();
  sub_23BA9B0D4(v10, &v7, &qword_27E19FCC8, &qword_23BBFDE00);
  if (v8 || (sub_23B9EA92C(&v7, &qword_27E19FCC8, &qword_23BBFDE00), sub_23BA9B0D4(&v11, &v7, &qword_27E19FCC8, &qword_23BBFDE00), v8))
  {
    sub_23B98473C(&v7, v9);
    v0 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v1 = MEMORY[0x28223BE20](v0);
    (*(v3 + 16))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
    v4 = sub_23BBD9DF8();
    sub_23BADA8C4(v10);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_23B9EA92C(&v7, &qword_27E19FCC8, &qword_23BBFDE00);
    sub_23BAC717C();
    sub_23BBDA958();
    if (v9[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FCD8, &qword_23BBF9FF0);
      sub_23BADA918();
    }

    else
    {
      sub_23BADA870();
    }

    v4 = sub_23BBD9DF8();
    sub_23BADA8C4(v10);
  }

  return v4;
}

uint64_t sub_23BADA848@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BADA630();
  *a1 = result;
  return result;
}

unint64_t sub_23BADA870()
{
  result = qword_27E19FCD0;
  if (!qword_27E19FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCD0);
  }

  return result;
}

unint64_t sub_23BADA918()
{
  result = qword_27E19FCE0;
  if (!qword_27E19FCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FCD8, &qword_23BBF9FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStorePickerStrokeStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x23BADAA48);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BADAA80(uint64_t a1, unsigned __int8 a2)
{
  sub_23BA24088();
  sub_23BBDA958();
  sub_23BA9B0D4(&v12, &v13, &qword_27E19FCE8, &qword_23BBFA088);
  sub_23BADA8C4(v11);
  if (!v14)
  {
    sub_23B9EA92C(&v13, &qword_27E19FCE8, &qword_23BBFA088);
    if (a2 - 1 >= 2)
    {
      if (a2)
      {
        v11[0] = sub_23BBDBD28();
        return sub_23BBD9DF8();
      }

      v8 = sub_23BBDBD28();
    }

    else
    {
      sub_23BBDBD08();
      v8 = sub_23BBDBD58();
    }

    v11[0] = v8;
    return sub_23BBD9DF8();
  }

  sub_23B98473C(&v13, v15);
  sub_23B98473C(v15, v16);
  v3 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_23BBD9DF8();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v7;
}

uint64_t sub_23BADAC68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BADAA80(a1, *v2);
  *a2 = result;
  return result;
}

uint64_t SubscriptionPeriodGroupSet.init(marketingContent:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a7;
  v27 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848, &qword_23BBFA090);
  type metadata accessor for NullaryOrUnaryValue(0, v16, a5, v17);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = (&v26 - v19);
  type metadata accessor for NullaryOrUnaryValue(0, v16, a6, v21);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  v24 = (&v26 - v23);
  *v24 = a1;
  v24[1] = a2;
  swift_storeEnumTagMultiPayload();
  *v20 = a3;
  v20[1] = a4;
  swift_storeEnumTagMultiPayload();
  return sub_23BADADD8(v24, v20, a5, a6, v26, v27, a9);
}

uint64_t sub_23BADADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848, &qword_23BBFA090);
  v16 = type metadata accessor for NullaryOrUnaryValue(0, v14, a4, v15);
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v17 = *(type metadata accessor for SubscriptionPeriodGroupSet(0, v21) + 52);
  v19 = type metadata accessor for NullaryOrUnaryValue(0, v14, a3, v18);
  return (*(*(v19 - 8) + 32))(a7 + v17, a2, v19);
}

uint64_t SubscriptionPeriodGroupSet.init<>(marketingContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848, &qword_23BBFA090);
  type metadata accessor for NullaryOrUnaryValue(0, v10, a3, v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = (&v19[-1] - v13);
  *v14 = a1;
  v14[1] = a2;
  swift_storeEnumTagMultiPayload();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v19[0] = sub_23BADB064;
  v19[1] = v15;
  v20 = 1;
  v16 = sub_23BADB06C();
  return sub_23BADADD8(v14, v19, &type metadata for AutomaticSubscriptionOptionGroupLabel, a3, v16, a4, a5);
}

uint64_t sub_23BADAFF4@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  sub_23BADB06C();

  return sub_23BADB0C0(a1, x8_0);
}

unint64_t sub_23BADB06C()
{
  result = qword_27E19FCF0;
  if (!qword_27E19FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCF0);
  }

  return result;
}

uint64_t sub_23BADB0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-1] - v5;
  sub_23B99FCE0(a1, &v10[-1] - v5, &qword_27E198848, &qword_23BBFA090);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  v10[3] = v4;
  v10[4] = sub_23BADB544();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  sub_23BADC148(v6, boxed_opaque_existential_1);
  return sub_23BADC1C0(v10, a2);
}

void SubscriptionPeriodGroupSet.init<>()(uint64_t a1@<X8>)
{
  *(a1 + 24) = sub_23BADB0C0;
  *(a1 + 32) = 0;
  *(a1 + 73) = 1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t SubscriptionPeriodGroupSet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848, &qword_23BBFA090);
  v4 = *(a1 + 24);
  type metadata accessor for NullaryOrUnaryValue(0, v3, v4, v5);
  OUTLINED_FUNCTION_7();
  v40 = v7;
  v41 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v38 = v3;
  v39 = &v36 - v9;
  v10 = *(a1 + 16);
  v37 = type metadata accessor for NullaryOrUnaryValue(0, v3, v10, v11);
  OUTLINED_FUNCTION_7();
  v13 = v12;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v36 = sub_23BADB544();
  v44 = *(a1 + 32);
  v47[0] = v3;
  v47[1] = v10;
  v47[2] = v4;
  v47[3] = v36;
  v48 = v44;
  v17 = type metadata accessor for SubscriptionOptionGroupSet(0, v47);
  OUTLINED_FUNCTION_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v36 - v24;
  v26 = swift_allocObject();
  *&v27 = v10;
  *(&v27 + 1) = v4;
  v28 = v44;
  *(v26 + 16) = v27;
  *(v26 + 32) = v28;
  v29 = *(a1 + 52);
  v30 = v42;
  (*(v13 + 16))(v16, v42 + v29, v37);
  v31 = v39;
  (*(v40 + 16))(v39, v30, v41);
  *(&v35 + 1) = v44;
  *&v35 = v36;
  sub_23B9AFF04(sub_23BADB620, 0, sub_23BADB8B4, v26, v16, v31, 1, v38, v22, v10, v4, v35, *(&v44 + 1));
  OUTLINED_FUNCTION_1_42();
  WitnessTable = swift_getWitnessTable();
  static StoreContentBuilder.buildExpression<A>(_:)(v22, v17, v25);
  v33 = *(v19 + 8);
  v33(v22, v17);
  (*(v19 + 16))(v22, v25, v17);
  v46 = v17;
  v47[0] = v22;
  v45 = WitnessTable;
  static StoreContentBuilder.buildBlock<each A>(_:)(v47, 1, &v46, &v45, v43);
  v33(v25, v17);
  return (v33)(v22, v17);
}

unint64_t sub_23BADB544()
{
  result = qword_27E19FCF8;
  if (!qword_27E19FCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848, &qword_23BBFA090);
    sub_23BADB5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCF8);
  }

  return result;
}

unint64_t sub_23BADB5C8()
{
  result = qword_27E19FD00[0];
  if (!qword_27E19FD00[0])
  {
    sub_23BBDCD08();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19FD00);
  }

  return result;
}

uint64_t sub_23BADB620@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBDCD08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_23BBDC8F8();
  v15 = sub_23BBDCB58();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v2);
  }

  else
  {
    sub_23B99FCE0(v11, v8, &qword_27E197B90, &qword_23BBE3F90);
    sub_23BBDCA98();
    (*(v3 + 16))(v14, v5, v2);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
    (*(v3 + 8))(v5, v2);
    (*(*(v15 - 8) + 8))(v8, v15);
  }

  sub_23B979910(v11, &qword_27E197B90, &qword_23BBE3F90);
  return sub_23BADC148(v14, a1);
}

BOOL sub_23BADB8C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = sub_23BBDCD08();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_23B99FCE0(a1, v9, &qword_27E198848, &qword_23BBFA090);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_23B979910(v9, &qword_27E198848, &qword_23BBFA090);
    return 0;
  }

  else
  {
    v18 = *(v11 + 32);
    v18(v16, v9, v10);
    sub_23B99FCE0(a2, v6, &qword_27E198848, &qword_23BBFA090);
    if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
    {
      (*(v11 + 8))(v16, v10);
      sub_23B979910(v6, &qword_27E198848, &qword_23BBFA090);
      return 1;
    }

    else
    {
      v18(v13, v6, v10);
      v17 = sub_23BA53C70();
      v19 = *(v11 + 8);
      v19(v13, v10);
      v19(v16, v10);
    }
  }

  return v17;
}

uint64_t sub_23BADBBF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848, &qword_23BBFA090);
  result = type metadata accessor for NullaryOrUnaryValue(319, v2, *(a1 + 24), v3);
  if (v6 <= 0x3F)
  {
    result = type metadata accessor for NullaryOrUnaryValue(319, v2, *(a1 + 16), v5);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BADBCA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 64) <= 0x10uLL)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v7 = *(v5 + 80) & 0xF8 | 7;
  v8 = v6 + ((v4 + v7 + 1) & ~v7) + 1;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v4);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_17:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return (v8 | v13) + 255;
}

void sub_23BADBE38(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (*(*(*(a4 + 24) - 8) + 64) <= 0x10uLL)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = v7 + ((v5 + v8 + 1) & ~v8) + 1;
  v10 = 8 * v9;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v9)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_40:
        __break(1u);
        JUMPOUT(0x23BADC060);
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_23BADC0A0(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848, &qword_23BBFA090);
  v3 = sub_23BADB544();
  v7 = v2;
  v4 = a1[1];
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v7 = type metadata accessor for SubscriptionOptionGroupSet(255, &v7);
  OUTLINED_FUNCTION_1_42();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for TupleStoreContent(255, 1, &v7, &WitnessTable);
  return swift_getWitnessTable();
}

uint64_t sub_23BADC148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848, &qword_23BBFA090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BADC1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4E8, &qword_23BBEF6B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BADC248(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BADC34C()
{
  sub_23BADC2DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t View.subscriptionStoreSignInAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x23EEB43C0](v4, a3, &type metadata for SubscriptionStoreSignInButtonActionModifier);
}

uint64_t sub_23BADC3F4(void *a1)
{
  sub_23BBDA358();
  sub_23BADC458();
  return swift_getWitnessTable();
}

unint64_t sub_23BADC458()
{
  result = qword_27E19FE08;
  if (!qword_27E19FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FE08);
  }

  return result;
}

uint64_t sub_23BADC4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_23BBDCB58();
  OUTLINED_FUNCTION_10_2();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_23BADC5C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_23BBDCB58();
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for SubscriptionOfferManager(uint64_t a1)
{
  result = qword_27E19FE10;
  if (!qword_27E19FE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BADC6F4(uint64_t a1)
{
  sub_23BBDCDB8();
  if (v1 <= 0x3F)
  {
    sub_23BBDCB58();
    if (v2 <= 0x3F)
    {
      sub_23BADC870(319, &qword_27E19ACB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_23BADC870(319, &qword_27E19FE20, &type metadata for IntroductoryOfferProvider, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23BADC870(319, &qword_27E19FE28, &unk_284E65B28, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_23BADC870(319, qword_27E19FE30, &type metadata for PreferredSubscriptionOfferProvider, MEMORY[0x277D83D88]);
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

void sub_23BADC870(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23BADC8C0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = type metadata accessor for Subscription(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_6_1();
  v28 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = 0;
  v13 = *(a3 + 16);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v13 == v12)
    {

      return;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    sub_23BA54F2C(a3 + v14 + v15 * v12, v11);
    v16 = v30(v11);
    if (v3)
    {
      sub_23BA1D2DC(v11);

      return;
    }

    if (v16)
    {
      sub_23BA1D1B4(v11, v28);
      v17 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23BA92C48(0, *(v17 + 16) + 1, 1, v19, v20, v21, v22);
        v17 = v32;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v29 = v24 + 1;
        v27 = v24;
        sub_23BA92C48(v23 > 1, v24 + 1, 1, v19, v20, v21, v22);
        v25 = v29;
        v24 = v27;
        v17 = v32;
      }

      ++v12;
      *(v17 + 16) = v25;
      v29 = v17;
      sub_23BA1D1B4(v28, v17 + v14 + v24 * v15);
    }

    else
    {
      sub_23BA1D2DC(v11);
      ++v12;
    }
  }

  __break(1u);
}

void sub_23BADCAE8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a2;
  v31 = sub_23BBDCC88();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = 0;
  v30 = *(a3 + 16);
  v27 = v5 + 16;
  v12 = (v5 + 8);
  v24 = (v5 + 32);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v30 == v11)
    {

      return;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v31, v8);
    v16 = v28(v10);
    if (v3)
    {
      (*v12)(v10, v31);

      return;
    }

    if (v16)
    {
      v23 = *v24;
      v23(v25, v10, v31);
      v17 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_23BA92C68();
        v19 = v32;
      }

      a3 = v15;
      v20 = *(v19 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v19 + 24) >> 1)
      {
        v26 = v20 + 1;
        v22 = v20;
        sub_23BA92C68();
        v21 = v26;
        v20 = v22;
        a3 = v15;
        v19 = v32;
      }

      ++v11;
      *(v19 + 16) = v21;
      v26 = v19;
      v23((v19 + v13 + v20 * v14), v25, v31);
    }

    else
    {
      (*v12)(v10, v31);
      ++v11;
    }
  }

  __break(1u);
}

uint64_t sub_23BADCDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_43();
  v12 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v54 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v57 = &v50 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v58 = MEMORY[0x277D84F90];
  v26 = type metadata accessor for SubscriptionOfferManager(0);
  v27 = v26;
  v28 = (v4 + *(v26 + 36));
  if (!*v28)
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v12);
    goto LABEL_7;
  }

  sub_23BB78B40(v4, v4 + *(v26 + 20), *v28, v28[1], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v12) == 1)
  {
LABEL_7:
    sub_23B9C8F9C(v3);
    v30 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v55 = v27;
  v56 = a1;
  v52 = *(v14 + 32);
  v52(v25, v3, v12);
  (*(v14 + 16))(v22, v25, v12);
  sub_23B9B7EE0();
  v30 = v29;
  v32 = *(v29 + 16);
  v31 = *(v29 + 24);
  v53 = a2;
  v51 = v32 + 1;
  if (v32 >= v31 >> 1)
  {
    sub_23B9B7EE0();
    v30 = v49;
  }

  (*(v14 + 8))(v25, v12);
  *(v30 + 16) = v51;
  v52((v30 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v32), v22, v12);
  v58 = v30;
  v27 = v55;
  a1 = v56;
  a2 = v53;
LABEL_8:
  sub_23BADD250();
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    sub_23B9C8F9C(v10);
  }

  else
  {
    v56 = a1;
    v36 = a2;
    v37 = *(v14 + 32);
    v38 = v57;
    v37(v57, v10, v12);
    v39 = v54;
    (*(v14 + 16))(v54, v38, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23B9B7EE0();
      v30 = v47;
    }

    v41 = *(v30 + 16);
    if (v41 >= *(v30 + 24) >> 1)
    {
      sub_23B9B7EE0();
      v30 = v48;
    }

    (*(v14 + 8))(v57, v12);
    *(v30 + 16) = v41 + 1;
    v37((v30 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v41), v39, v12);
    v58 = v30;
    a2 = v36;
    v27 = v55;
    a1 = v56;
  }

  v42 = *(v27 + 20);
  v43 = sub_23BBDCA58();
  MEMORY[0x28223BE20](v43);
  *(&v50 - 2) = v4;
  sub_23BADCAE8(sub_23BADD82C, (&v50 - 4), v44);
  sub_23BADD84C(v45);
  sub_23B9C8C18(v4, v4 + v42, v58, a1, a2);
}

void sub_23BADD250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for SubscriptionOfferManager(0);
  v5 = *(v0 + v4[8]);
  if (v5)
  {
    v6 = v4[5];

    sub_23BBDCA78();
    v7 = sub_23BBDCC88();
    if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
    {

      sub_23B9C8F9C(v3);
    }

    else
    {
      sub_23B9C8F9C(v3);
      v8 = *(v5 + 16);

      v8(&v17, v0, v0 + v6);

      if (v17)
      {
        sub_23BBDCA78();

        return;
      }
    }

    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v7);
  }

  else if (*(v0 + v4[7]) == 1)
  {
    sub_23BBDCA78();
  }

  else
  {
    sub_23BBDCC88();
    OUTLINED_FUNCTION_8_1();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_23BADD438@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v41[0] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_6_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v41 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12;
  v14 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v41 - v22;
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_1_43();
  v26 = type metadata accessor for SubscriptionOfferManager(v25);
  v27 = (v3 + *(v26 + 36));
  if (*v27)
  {
    sub_23BB78B40(v3, v3 + *(v26 + 20), *v27, v27[1], v13);
    OUTLINED_FUNCTION_35_3(v13);
    if (!v28)
    {
      v29 = *(v16 + 32);
      v29(v2, v13, v14);
      v30 = v41[0];
      v29(v41[0], v2, v14);
LABEL_11:
      v37 = 0;
      return __swift_storeEnumTagSinglePayload(v30, v37, 1, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v14);
  }

  sub_23B9C8F9C(v13);
  sub_23BADD250();
  OUTLINED_FUNCTION_35_3(v10);
  if (!v28)
  {
    v38 = *(v16 + 32);
    v38(v23, v10, v14);
    v30 = v41[0];
    v38(v41[0], v23, v14);
    goto LABEL_11;
  }

  sub_23B9C8F9C(v10);
  v34 = sub_23BBDCA58();
  MEMORY[0x28223BE20](v34);
  v41[-2] = v3;
  sub_23BADCAE8(sub_23BADD9E0, &v41[-4], v35);
  sub_23BAC7804(v36, v7);

  OUTLINED_FUNCTION_35_3(v7);
  if (!v28)
  {
    v39 = *(v16 + 32);
    v39(v20, v7, v14);
    v30 = v41[0];
    v39(v41[0], v20, v14);
    goto LABEL_11;
  }

  sub_23B9C8F9C(v7);
  v37 = 1;
  v30 = v41[0];
  return __swift_storeEnumTagSinglePayload(v30, v37, 1, v14);
}

BOOL sub_23BADD75C(uint64_t a1)
{
  v1 = sub_23BBDCC38();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = type metadata accessor for SubscriptionOfferManager(0);
    v10[0] = v3;
    v10[1] = v4;
    MEMORY[0x28223BE20](v5);
    v9[2] = v10;
    v7 = sub_23BB78850(sub_23B9AE380, v9, v6);
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_23BADD84C(uint64_t a1)
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

  sub_23BADD94C(result);
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
  result = sub_23BBDCC88();
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

void sub_23BADD94C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_23B9B7EE0();
    *v1 = v5;
  }
}

uint64_t CompactSubscriptionOfferViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030, &qword_23BBE95D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_23BADDB80(a1, v7);
  sub_23B998C6C(v7, v10);
  v11 = *(a1 + *(v5 + 44));

  sub_23BADDBE4(v10, v11, a2);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D20, &unk_23BBEEE20) + 36);
  sub_23BADDB80(a1, v12);
  v13 = *(type metadata accessor for ConfigureSubscriptionOfferViewEnvironmentViewModifier(0) + 20);
  *(v12 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BADDB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionOfferViewStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BADDBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23BBDB588();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D30, qword_23BBE4580);
  *(a3 + v15[9]) = a2;
  sub_23BADE0BC(a1, a3);
  v16 = v15[10];
  *(a3 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8, &qword_23BBE8190);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_0_42(KeyPath);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_0_42(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_0_42(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_0_42(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_0_42(v21);
  v22 = a3 + v15[16];
  v26[1] = 0;
  v27 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197E38, qword_23BBE4780);
  sub_23BBDBF58();
  v23 = v29;
  v24 = v30;
  *v22 = v28;
  *(v22 + 8) = v23;
  *(v22 + 16) = v24;
  (*(v8 + 104))(v14, *MEMORY[0x277CE0AB0], v6);
  if (qword_27E1976F8 != -1)
  {
    swift_once();
  }

  v28 = qword_27E1BFCA0;
  (*(v8 + 16))(v11, v14, v6);
  sub_23B974940();
  sub_23BBD9D18();
  return (*(v8 + 8))(v14, v6);
}

uint64_t sub_23BADDEEC(uint64_t a1)
{
  sub_23BBDA438();
  OUTLINED_FUNCTION_7();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23BBDA708();
}

_BYTE *storeEnumTagSinglePayload for CompactSubscriptionOfferViewStyle(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23BADE080);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23BADE0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030, &qword_23BBE95D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_23BADE138@<W0>(_BYTE *a1@<X8>)
{
  result = sub_23B9DA88C();
  *a1 = result;
  return result;
}

uint64_t sub_23BADE178@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9DA908();
  *a1 = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_42(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_23BADE204@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = sub_23BADE3B4(a1, a2);
  if (a1)
  {
    if (v9)
    {
      v11 = v10 - v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = a4 >> 62;
    v13 = BYTE6(a4);
    switch(v12)
    {
      case 1uLL:
        LODWORD(v14) = HIDWORD(a3) - a3;
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          __break(1u);
        }

        else
        {
          v14 = v14;
LABEL_15:
          if (v11 == v14)
          {
LABEL_16:
            sub_23BAE0F98();
            result = sub_23BBD9538();
            v20 = a1[1];
            *a5 = *a1;
            a5[1] = v20;
            return result;
          }

          if (!v12)
          {
            goto LABEL_22;
          }

          if (v12 != 1)
          {
            v22 = *(a3 + 16);
            v21 = *(a3 + 24);
            v13 = v21 - v22;
            if (!__OFSUB__(v21, v22))
            {
              goto LABEL_22;
            }

LABEL_26:
            __break(1u);
            JUMPOUT(0x23BADE3A4);
          }

          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            v13 = HIDWORD(a3) - a3;
LABEL_22:
            sub_23BAE0F44();
            swift_allocError();
            *v23 = v11;
            *(v23 + 8) = v13;
            *(v23 + 16) = 0;
            return swift_willThrow();
          }
        }

        __break(1u);
        goto LABEL_26;
      case 2uLL:
        v17 = *(a3 + 16);
        v16 = *(a3 + 24);
        v18 = __OFSUB__(v16, v17);
        v14 = v16 - v17;
        if (!v18)
        {
          goto LABEL_15;
        }

        __break(1u);
LABEL_11:
        if (!v11)
        {
          goto LABEL_16;
        }

        v13 = 0;
        goto LABEL_22;
      case 3uLL:
        goto LABEL_11;
      default:
        v14 = v13;
        goto LABEL_15;
    }
  }

  sub_23BAE0F44();
  swift_allocError();
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_23BADE3B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x400000000000000) >> 59 != 31)
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_23BADE42C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for HostingController(0, *((*MEMORY[0x277D85000] & *v5) + qword_27E1BFD88), *((*MEMORY[0x277D85000] & *v5) + qword_27E1BFD88 + 8), a4);
  v14.receiver = v5;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, sel_viewDidDisappear_, a1 & 1);
  if (qword_27E1976D0 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
  }

  v8 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v8, qword_27E1BFC88);
  v9 = sub_23BBDD5B8();
  v10 = sub_23BBD9988();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = OUTLINED_FUNCTION_132();
    v13 = OUTLINED_FUNCTION_131();
    *v11 = 136446466;
    *(v11 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v13);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_23BA5AB90(0xD00000000000001ELL, 0x800000023BBE2170, &v13);
    _os_log_impl(&dword_23B970000, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  result = sub_23BADE3E0();
  if (result)
  {
    [result onDismiss];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23BADE5F4(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_23BADE42C(a3, v6, v4, v5);
}

uint64_t sub_23BADE67C(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_23BAE0E8C(a1, v4, type metadata accessor for SubscriptionOfferViewNoCodeSheet);
  v5 = sub_23BBDABE8();
  sub_23BAE0EEC(a1, type metadata accessor for SubscriptionOfferViewNoCodeSheet);
  return v5;
}

uint64_t sub_23BADE804(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_27E1BFD88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - v5;
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v6, a1, v3);
  v7 = sub_23BBDABE8();
  (*(v4 + 8))(a1, v3);
  return v7;
}

void *sub_23BADE980(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27E1BFD88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - v6;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  v8 = sub_23BBDABD8();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_23BADEAD0(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for HostingController(0, *(v3 + qword_27E1BFD88), *(v3 + qword_27E1BFD88 + 8), v4);
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_23BADEC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HostingController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27E1BFD88), *((*MEMORY[0x277D85000] & *v4) + qword_27E1BFD88 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

unint64_t sub_23BADECF0(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x49746375646F7270;
      break;
    case 2:
      result = 0x4449726566666FLL;
      break;
    case 3:
      result = 0x79654B676F6CLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x546567617373656DLL;
      break;
    case 6:
      result = 0x726576726573;
      break;
    default:
      return result;
  }

  return result;
}

void sub_23BADEDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v343 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v341 = 0u;
    v342 = 0u;
    goto LABEL_6;
  }

  v337 = 0xE600000000000000;
  OUTLINED_FUNCTION_13_24(a1, MEMORY[0x277D837D0], MEMORY[0x277D837E0], a4, a5, a6, a7, a8, v131, v143, v155, v167, v179, v191, v203, v216, v229, v242, v254, v263, v273, v285, v297, v309, v321, v333, *(&v333 + 1), v334, v335, 108);
  OUTLINED_FUNCTION_6_23();
  sub_23BAC5FF8(&v338);
  if (!*(&v342 + 1))
  {
LABEL_6:
    sub_23B979910(&v341, &unk_27E19FEE0, qword_23BBEA8D0);
    goto LABEL_7;
  }

  v9 = swift_dynamicCast();
  if (v9)
  {
    v15 = *(&v338 + 1);
    v16 = v338;
    goto LABEL_10;
  }

LABEL_7:
  OUTLINED_FUNCTION_7_32();
  if (!v17)
  {
    OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
  }

  v18 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v18, qword_27E1BFC88);
  sub_23B9EAEFC();
  v16 = v9;
  v15 = v19;
  if (!a1)
  {
    OUTLINED_FUNCTION_2_37();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v97 = "]: Missing parameters to display offer";
LABEL_34:
    v101 = (v97 - 32) | 0x8000000000000000;
    v100 = 0xD000000000000026;
    goto LABEL_35;
  }

LABEL_10:
  v337 = 0xE800000000000000;
  OUTLINED_FUNCTION_13_24(v9, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v10, v11, v12, v13, v14, v131, v143, v155, v167, v179, v191, v203, v216, v229, v242, v254, v263, v273, v285, v297, v309, v321, v333, *(&v333 + 1), v334, v335, 98);
  OUTLINED_FUNCTION_6_23();
  v20 = sub_23BAC5FF8(&v338);
  if (!*(&v342 + 1))
  {
    sub_23B979910(&v341, &unk_27E19FEE0, qword_23BBEA8D0);
    goto LABEL_25;
  }

  v27 = OUTLINED_FUNCTION_5_29(v20, v21, v22, MEMORY[0x277D837D0], v23, v24, v25, v26, v132, v144, v156, v168, v180, v192, v204, v217, v230, v243, v255, v264, v274, v286, v298, v310, v322, v333, *(&v333 + 1), v334, v335, v336);
  if ((v27 & 1) == 0)
  {
LABEL_25:
    OUTLINED_FUNCTION_7_32();
    if (!v17)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v98 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v98, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v99 = "eters to display offer";
    v100 = 0xD000000000000025;
    goto LABEL_28;
  }

  v33 = v336;
  v34 = v337;
  v337 = 0xE900000000000044;
  OUTLINED_FUNCTION_13_24(v27, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v28, v29, v30, v31, v32, v133, v145, v157, v169, v181, v193, v205, v218, v231, v244, v256, v265, v275, v287, v299, v311, v323, v333, *(&v333 + 1), v334, v335, 112);
  OUTLINED_FUNCTION_6_23();
  v35 = sub_23BAC5FF8(&v338);
  if (!*(&v342 + 1))
  {

    sub_23B979910(&v341, &unk_27E19FEE0, qword_23BBEA8D0);
LABEL_31:
    OUTLINED_FUNCTION_7_32();
    if (!v17)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v102 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v102, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v97 = "]: Missing product ID to display offer";
    goto LABEL_34;
  }

  v42 = OUTLINED_FUNCTION_5_29(v35, v36, v37, MEMORY[0x277D837D0], v38, v39, v40, v41, v134, v146, v158, v170, v182, v194, v206, v219, v232, v245, v257, v266, v276, v288, v300, v312, v324, v333, *(&v333 + 1), v334, v335, v336);
  if ((v42 & 1) == 0)
  {

    goto LABEL_31;
  }

  v48 = v337;
  v337 = 0xE700000000000000;
  OUTLINED_FUNCTION_13_24(v42, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v43, v44, v45, v46, v47, v135, v147, v159, v171, v183, v195, v207, v220, v233, v246, v258, v267, v277, v289, v301, v336, v325, v333, *(&v333 + 1), v334, v335, 111);
  OUTLINED_FUNCTION_6_23();
  v49 = sub_23BAC5FF8(&v338);
  if (!*(&v342 + 1))
  {

    sub_23B979910(&v341, &unk_27E19FEE0, qword_23BBEA8D0);
LABEL_42:
    OUTLINED_FUNCTION_7_32();
    if (!v17)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v110 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v110, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v99 = "ct ID to display offer";
    v100 = 0xD000000000000024;
    goto LABEL_28;
  }

  v56 = OUTLINED_FUNCTION_5_29(v49, v50, v51, MEMORY[0x277D837D0], v52, v53, v54, v55, v136, v148, v160, v172, v184, v196, v208, v221, v234, v247, v259, v268, v278, v290, v302, v313, v326, v333, *(&v333 + 1), v334, v335, v336);
  if ((v56 & 1) == 0)
  {

    goto LABEL_42;
  }

  v303 = v48;
  v62 = v337;
  v337 = 0x800000023BBE2050;
  OUTLINED_FUNCTION_13_24(v56, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v57, v58, v59, v60, v61, v137, v149, v161, v173, v185, v197, v209, v222, v235, v248, v260, v269, v336, v291, v303, v314, v327, v333, *(&v333 + 1), v334, v335, 16);
  OUTLINED_FUNCTION_6_23();
  v63 = sub_23BAC5FF8(&v338);
  if (!*(&v342 + 1))
  {

    sub_23B979910(&v341, &unk_27E19FEE0, qword_23BBEA8D0);
LABEL_47:
    OUTLINED_FUNCTION_7_32();
    if (!v17)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v111 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v111, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();
    MEMORY[0x23EEB5890](91, 0xE100000000000000);
    MEMORY[0x23EEB5890](v16, v15);

    v99 = "clientAuditToken";
    v100 = 0xD000000000000033;
LABEL_28:
    v101 = v99 | 0x8000000000000000;
LABEL_35:
    MEMORY[0x23EEB5890](v100, v101);
    v103 = sub_23BBDD598();

    v104 = sub_23BBD9988();

    if (os_log_type_enabled(v104, v103))
    {
      v105 = OUTLINED_FUNCTION_132();
      *&v338 = OUTLINED_FUNCTION_131();
      v106 = OUTLINED_FUNCTION_19_17(4.8752e-34);
      v107 = OUTLINED_FUNCTION_12_22(v106);

      *(v105 + 14) = v107;
      OUTLINED_FUNCTION_18_15(&dword_23B970000, v108, v109, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    else
    {
    }

    sub_23BADFC4C();
    return;
  }

  v70 = OUTLINED_FUNCTION_5_29(v63, v64, v65, MEMORY[0x277CC9318], v66, v67, v68, v69, v138, v150, v162, v174, v186, v198, v210, v223, v236, v249, v261, v270, v279, v62, v304, v315, v328, v333, *(&v333 + 1), v334, v335, v336);
  if ((v70 & 1) == 0)
  {

    goto LABEL_47;
  }

  v271 = v337;
  v337 = 0xEB00000000657079;
  OUTLINED_FUNCTION_13_24(v70, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v71, v72, v73, v74, v75, v139, v151, v163, v175, v187, v199, v211, v224, v237, v250, v336, v271, v280, v292, v305, v316, v329, v333, *(&v333 + 1), v334, v335, 109);
  OUTLINED_FUNCTION_6_23();
  v76 = sub_23BAC5FF8(&v338);
  v83 = v306;
  if (!*(&v342 + 1))
  {

    sub_23B979910(&v341, &unk_27E19FEE0, qword_23BBEA8D0);
LABEL_52:
    OUTLINED_FUNCTION_7_32();
    if (!v17)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v112 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v112, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v113 = "ta to display offer";
    v114 = 0xD000000000000028;
    goto LABEL_60;
  }

  v84 = OUTLINED_FUNCTION_5_29(v76, v77, v78, MEMORY[0x277D83B88], v79, v80, v81, v82, v140, v152, v164, v176, v188, v200, v212, v225, v238, v251, v262, v272, v281, v293, v306, v317, v330, v333, *(&v333 + 1), v334, v335, v336);
  if ((v84 & 1) == 0)
  {

    goto LABEL_52;
  }

  v337 = 0xE600000000000000;
  OUTLINED_FUNCTION_13_24(v84, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v85, v86, v87, v88, v89, v141, v153, v165, v177, v189, v201, v213, v226, v239, v336, v262, v272, v282, v294, v307, v318, v331, v333, *(&v333 + 1), v334, v335, 115);
  OUTLINED_FUNCTION_6_23();
  v90 = sub_23BAC5FF8(&v338);
  if (!*(&v342 + 1))
  {

    sub_23B979910(&v341, &unk_27E19FEE0, qword_23BBEA8D0);
LABEL_57:
    OUTLINED_FUNCTION_7_32();
    if (!v17)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v115 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v115, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v113 = "ge type to display offer";
    v114 = 0xD000000000000029;
LABEL_60:
    MEMORY[0x23EEB5890](v114, v113 | 0x8000000000000000);
    v116 = sub_23BBDD598();

    v117 = sub_23BBD9988();

    if (os_log_type_enabled(v117, v116))
    {
      v118 = OUTLINED_FUNCTION_132();
      *&v338 = OUTLINED_FUNCTION_131();
      v119 = OUTLINED_FUNCTION_19_17(4.8752e-34);
      v120 = OUTLINED_FUNCTION_12_22(v119);

      *(v118 + 14) = v120;
      OUTLINED_FUNCTION_18_15(&dword_23B970000, v121, v122, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();

LABEL_64:
      sub_23BADFC4C();
      sub_23B9A940C(v262, v272);
      return;
    }

LABEL_63:

    goto LABEL_64;
  }

  if ((OUTLINED_FUNCTION_5_29(v90, v91, v92, MEMORY[0x277D84900], v93, v94, v95, v96, v142, v154, v166, v178, v190, v202, v214, v227, v240, v252, v262, v272, v283, v295, v308, v319, v332, v333, *(&v333 + 1), v334, v335, v336) & 1) == 0)
  {

    goto LABEL_57;
  }

  v241 = v336;
  sub_23BADE204(&v333, 1, v262, v272, &v338);
  v215 = *(&v338 + 1);
  v228 = v338;
  v124 = v339;
  v123 = v340;
  v125 = sub_23BAA1C8C(v241);
  if (v125 == 3)
  {

    OUTLINED_FUNCTION_7_32();
    if (!v17)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v126 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v126, qword_27E1BFC88);
    v127 = sub_23BBDD598();

    v128 = sub_23BBD9988();

    if (os_log_type_enabled(v128, v127))
    {
      v129 = OUTLINED_FUNCTION_132();
      v336 = OUTLINED_FUNCTION_131();
      *v129 = 136446466;
      *&v341 = 91;
      *(&v341 + 1) = 0xE100000000000000;
      MEMORY[0x23EEB5890](v16, v15);
      MEMORY[0x23EEB5890](8285, 0xE200000000000000);
      v130 = sub_23BA5AB90(v341, *(&v341 + 1), &v336);

      *(v129 + 4) = v130;
      *(v129 + 12) = 2082;
      *(v129 + 14) = sub_23BA5AB90(0x206E776F6E6B6E55, 0xEE00726576726573, &v336);
      _os_log_impl(&dword_23B970000, v128, v127, "%{public}s%{public}s", v129, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    goto LABEL_63;
  }

  sub_23BADFCB4(v320, v83, v33, v34, v284, v296, v228, v215, v124, v123, v253, v16, v15, v125);
  sub_23B9A940C(v262, v272);
}

void sub_23BADFC4C()
{
  v1 = [objc_allocWithZone(type metadata accessor for ErrorController()) init];
  [v0 presentViewController:v1 animated:1 completion:0];
}

uint64_t sub_23BADFCB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14)
{
  v81 = a6;
  v78 = a7;
  v79 = a8;
  v75 = a1;
  v76 = a5;
  v80 = a2;
  v70 = a11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v73);
  v72 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v64 - v18;
  v19 = type metadata accessor for Product.TaskState(0);
  MEMORY[0x28223BE20](v19);
  v69 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v64 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8, &unk_23BBF5890);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v64 - v25;
  v27 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  MEMORY[0x28223BE20](v27);
  v74 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v64 - v30;
  v32 = type metadata accessor for SKLogger(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v77 = a3;
  v68 = a14;
  v83 = a12;
  v67 = a10;
  v66 = a9;
  v35 = __swift_project_value_buffer(v32, qword_27E1BFC88);
  sub_23BAE0E8C(v35, v34, type metadata accessor for SKLogger);

  v36 = sub_23BBD9988();
  v37 = sub_23BBD99A8();
  (*(*(v37 - 8) + 8))(v34, v37);
  v38 = sub_23BBDD5B8();

  v39 = os_log_type_enabled(v36, v38);
  v65 = a13;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v64 = v19;
    v41 = v40;
    v42 = a4;
    v43 = swift_slowAlloc();
    *&v86 = v43;
    *v41 = 136315394;
    *(v41 + 4) = sub_23BA5AB90(v83, a13, &v86);
    *(v41 + 12) = 2080;
    v44 = v77;
    *(v41 + 14) = sub_23BA5AB90(v77, v42, &v86);
    _os_log_impl(&dword_23B970000, v36, v38, "[%s] Did start offer view controller for %s.", v41, 0x16u);
    swift_arrayDestroy();
    v45 = v43;
    a4 = v42;
    MEMORY[0x23EEB6DC0](v45, -1, -1);
    MEMORY[0x23EEB6DC0](v41, -1, -1);
  }

  else
  {

    v44 = v77;
  }

  sub_23BBDC818();
  v46 = sub_23BBDC838();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v46);
  swift_storeEnumTagMultiPayload();
  sub_23BAE0E8C(v23, v69, type metadata accessor for Product.TaskState);
  sub_23BBDBF58();
  sub_23BAE0EEC(v23, type metadata accessor for Product.TaskState);
  v47 = a4;
  v48 = sub_23BBDCC88();
  v49 = v71;
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v48);
  sub_23B99FCE0(v49, v72, &unk_27E19FEF0, &unk_23BBE3E40);
  sub_23BBDBF58();
  sub_23B979910(v49, &unk_27E19FEF0, &unk_23BBE3E40);
  v50 = &v31[v27[11]];
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_23BBDBF58();
  v51 = v87;
  *v50 = v86;
  *(v50 + 2) = v51;
  v52 = v76;
  v54 = v80;
  v53 = v81;
  *v31 = v75;
  *(v31 + 1) = v54;
  *(v31 + 2) = v52;
  *(v31 + 3) = v53;
  *(v31 + 4) = v44;
  *(v31 + 5) = v47;
  v55 = v79;
  *(v31 + 6) = v78;
  *(v31 + 7) = v55;
  v56 = v67;
  *(v31 + 8) = v66;
  *(v31 + 9) = v56;
  v31[80] = v68;
  sub_23B99FCE0(v26, &v31[v27[7]], &qword_27E19E5B8, &unk_23BBF5890);
  v57 = v65;

  sub_23B979910(v26, &qword_27E19E5B8, &unk_23BBF5890);
  v58 = &v31[v27[8]];
  *v58 = v83;
  *(v58 + 1) = v57;
  v59 = v74;
  sub_23BAE0E8C(v31, v74, type metadata accessor for SubscriptionOfferViewNoCodeSheet);
  v60 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FF00, qword_23BBFA428));
  v61 = sub_23BADE67C(v59);
  v62 = v82;
  swift_unknownObjectWeakAssign();
  [v62 presentViewController:v61 animated:1 completion:0];

  return sub_23BAE0EEC(v31, type metadata accessor for SubscriptionOfferViewNoCodeSheet);
}

id sub_23BAE0440()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_initWithNibName_bundle_, 0, 0);
}

void sub_23BAE0538()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FEC8, &qword_23BBFA420));
  v3 = sub_23BADE788(sub_23BAE05DC, 0, sub_23BAE06BC, 0);
  sub_23BAE079C(v1);
}

uint64_t sub_23BAE05DC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_23BAE06BC@<X0>(uint64_t a1@<X8>)
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

void sub_23BAE079C(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_23BAE0928(v5);
}

void sub_23BAE0928(id a1)
{
  sub_23BAE0B64(v1, a1);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = MEMORY[0x277D84F90];
  sub_23BAE0E08(0, &qword_27E19FED0, 0x277CCAAD0);
  sub_23BAE0E08(0, &qword_27E19FED8, 0x277D75D18);
  v3 = v1;
  v4 = a1;
  v5 = OUTLINED_FUNCTION_4_27();
  sub_23BAE0C34(v6, 3, 0, v7, 3, v5, v8);
  MEMORY[0x23EEB5A00]();
  OUTLINED_FUNCTION_8_33();
  if (v9)
  {
    OUTLINED_FUNCTION_9_22();
  }

  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_16_13();
  v10 = v4;
  v11 = OUTLINED_FUNCTION_4_27();
  sub_23BAE0C34(v12, 4, 0, v13, 4, v11, v14);
  MEMORY[0x23EEB5A00]();
  OUTLINED_FUNCTION_8_33();
  if (v9)
  {
    OUTLINED_FUNCTION_9_22();
  }

  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_16_13();
  v15 = v10;
  v16 = OUTLINED_FUNCTION_4_27();
  sub_23BAE0C34(v17, 5, 0, v18, 5, v16, v19);
  MEMORY[0x23EEB5A00]();
  OUTLINED_FUNCTION_8_33();
  if (v9)
  {
    OUTLINED_FUNCTION_9_22();
  }

  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_16_13();
  v20 = v15;
  v21 = OUTLINED_FUNCTION_4_27();
  sub_23BAE0C34(v22, 6, 0, v23, 6, v21, v24);
  MEMORY[0x23EEB5A00]();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23BBDD268();
  }

  sub_23BBDD298();
  v25 = sub_23BBDD238();

  [v20 addConstraints_];
}

id sub_23BAE0B64(uint64_t a1, id a2)
{
  v4 = [a2 subviews];
  sub_23BAE0E08(0, &qword_27E19FED8, 0x277D75D18);
  v5 = sub_23BBDD248();

  v9 = a1;
  v8[2] = &v9;
  sub_23BB789D4(sub_23BAE0E6C, v8, v5);
  LOBYTE(v4) = v6;

  if ((v4 & 1) == 0)
  {
    return [a2 addSubview_];
  }

  return result;
}

id sub_23BAE0C34(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_23BBDDA78();
  v15 = a4[3];
  if (v15)
  {
    v16 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v25 = a5;
    v26 = a2;
    v17 = a3;
    v18 = *(v15 - 8);
    v19 = MEMORY[0x28223BE20](v16);
    v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_23BBDDA78();
    (*(v18 + 8))(v21, v15);
    a3 = v17;
    a5 = v25;
    a2 = v26;
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v22 = 0;
  }

  v23 = [swift_getObjCClassFromMetadata() constraintWithItem:v14 attribute:a2 relatedBy:a3 toItem:v22 attribute:a5 multiplier:a6 constant:a7];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v23;
}

uint64_t sub_23BAE0E08(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_23BAE0E8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BAE0EEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23BAE0F44()
{
  result = qword_27E19FF08;
  if (!qword_27E19FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FF08);
  }

  return result;
}

unint64_t sub_23BAE0F98()
{
  result = qword_27E19FF10;
  if (!qword_27E19FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FF10);
  }

  return result;
}

void OUTLINED_FUNCTION_3_34()
{
  *(v0 - 168) = 91;
  *(v0 - 160) = 0xE100000000000000;

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_5_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_6_23()
{

  return sub_23B9F4060(v0, (v1 - 128), v1 - 168);
}

uint64_t OUTLINED_FUNCTION_9_22()
{

  return sub_23BBDD268();
}

unint64_t OUTLINED_FUNCTION_12_22(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;

  return sub_23BA5AB90(v3, v1, (v4 - 168));
}

void *OUTLINED_FUNCTION_13_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{

  return sub_23BBDD718();
}

id OUTLINED_FUNCTION_16_13()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_17_13()
{

  return sub_23BBDD298();
}

void OUTLINED_FUNCTION_18_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t OUTLINED_FUNCTION_19_17(float a1)
{
  *v1 = a1;

  return sub_23BA5AB90(0, 0xE000000000000000, (v2 - 168));
}

uint64_t sub_23BAE1268(uint64_t a1)
{
  result = sub_23BBDCD08();
  if (v2 <= 0x3F)
  {
    result = _s22LocalizedPriceResourceV6FormatOMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23BAE12FC(uint64_t a1)
{
  sub_23BAE1398(319);
  if (v1 <= 0x3F)
  {
    sub_23BAE1418();
    if (v2 <= 0x3F)
    {
      sub_23BAE1440(319);
      if (v3 <= 0x3F)
      {
        sub_23BAE14D4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_23BAE1398(uint64_t a1)
{
  if (!qword_27E19FF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199218, &qword_23BBFA470);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E19FF40);
    }
  }
}

uint64_t sub_23BAE1418()
{
  result = qword_27E19FF48;
  if (!qword_27E19FF48)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27E19FF48);
  }

  return result;
}

void sub_23BAE1440(uint64_t a1)
{
  if (!qword_27E19FF50)
  {
    _s15PricePropertiesVMa(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E19FF50);
    }
  }
}

void sub_23BAE14D4()
{
  if (!qword_27E19FF58)
  {
    v0 = _s15PricePropertiesVMa(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27E19FF58);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
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

  else
  {
    v11 = a4(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v12 = v11;
      v13 = *(a3 + 20);
    }

    else
    {
      v12 = a5(0);
      v13 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v13, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v11 = a5(0);
    if (*(*(v11 - 8) + 84) == a3)
    {
      v12 = v11;
      v13 = *(a4 + 20);
    }

    else
    {
      v12 = a6(0);
      v13 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v7 + v13, a2, a2, v12);
  }

  return result;
}

uint64_t sub_23BAE1754(uint64_t a1)
{
  result = sub_23BBDCBE8();
  if (v2 <= 0x3F)
  {
    result = sub_23BBDCD08();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *_s22LocalizedPriceResourceV14SeparatorStyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x23BAE18BCLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BAE1914(uint64_t a1)
{
  result = _s22LocalizedPriceResourceVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s20LocalizationResourceVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23BAE1994()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v32 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  v13 = OUTLINED_FUNCTION_13_0(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  sub_23BBDC8F8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_23B979910(v15, &qword_27E197B90, &qword_23BBE3F90);
    v23 = sub_23BBDC8E8();
    v25 = v24;
  }

  else
  {
    (*(v18 + 32))(v22, v15, v16);
    v23 = sub_23BBDC8E8();
    v30 = v6;
    v25 = v26;
    sub_23BBDCA98();
    _s22LocalizedPriceResourceVMa(0);
    v31 = v1;
    OUTLINED_FUNCTION_48_4();
    sub_23BACBE14(v5 + v27);
    (*(v32 + 8))(v11, v30);
    (*(v18 + 8))(v22, v16);
    v28 = v5 + *(v1 + 24);
    *v28 = v3;
    *(v28 + 1) = v31;
    _s22LocalizedPriceResourceV6FormatOMa(0);
    swift_storeEnumTagMultiPayload();
  }

  *v5 = v23;
  v5[1] = v25;
  _s11PriceStringOMa(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_9_1();
}

void sub_23BAE1C0C()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v0;
  v3 = _s20LocalizationResourceVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v29 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v15);
  v16 = _s22LocalizedPriceResourceVMa(0);
  v17 = OUTLINED_FUNCTION_13_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_6_24();
  sub_23BAE5514(v2, v24, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BAE545C(v24, v20, _s22LocalizedPriceResourceVMa);
      sub_23BAE1EA0();
      sub_23BBDB668();
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_11_19();
      v28 = v20;
    }

    else
    {
      sub_23BAE545C(v24, v7, _s20LocalizationResourceVMa);
      if (*(v7 + *(v3 + 20)) == 6)
      {
        sub_23BB74064();
      }

      else
      {
        sub_23BB72A48();
      }

      (*(v29 + 32))(v1, v13, v8);
      sub_23BBDB668();
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_1_45();
      v28 = v7;
    }

    sub_23BAE54BC(v28, v27);
  }

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_9_1();
}

void sub_23BAE2194()
{
  OUTLINED_FUNCTION_10_0();
  v4 = v3;
  v6 = v5;
  _s20LocalizationResourceVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v45 = v9 - v8;
  v10 = OUTLINED_FUNCTION_5_3();
  v46 = _s22LocalizedPriceResourceVMa(v10);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = (v13 - v12);
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_35_5();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FFA8, &qword_23BBFA6E0);
  v22 = OUTLINED_FUNCTION_13_0(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_46_2();
  v24 = (v0 + v23);
  sub_23BAE5514(v6, v0, _s11PriceStringOMa);
  sub_23BAE5514(v4, v24, _s11PriceStringOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_24();
      v26 = OUTLINED_FUNCTION_44_2();
      sub_23BAE5514(v26, v27, v28);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_19_18();
        sub_23BAE545C(v24, v14, v29);
        v30 = *v2 == *v14 && v2[1] == v14[1];
        if (v30 || (sub_23BBDDA88()) && (sub_23BBDCCA8())
        {
          sub_23BAE3C9C();
        }

        OUTLINED_FUNCTION_20_13();
        sub_23BAE54BC(v14, v31);
        v32 = v2;
        v33 = v46;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_11_19();
      v43 = v2;
    }

    else
    {
      OUTLINED_FUNCTION_6_24();
      v37 = OUTLINED_FUNCTION_35_0();
      sub_23BAE5514(v37, v38, v39);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_21_14();
        sub_23BAE545C(v24, v45, v40);
        sub_23BBDCCA8();
        OUTLINED_FUNCTION_1_45();
        sub_23BAE54BC(v45, v41);
        OUTLINED_FUNCTION_1_45();
        v32 = v18;
LABEL_27:
        sub_23BAE54BC(v32, v33);
LABEL_28:
        OUTLINED_FUNCTION_22_13();
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_1_45();
      v43 = v18;
    }

    sub_23BAE54BC(v43, v42);
  }

  else
  {
    OUTLINED_FUNCTION_6_24();
    sub_23BAE5514(v0, v1, v34);
    v36 = *v1;
    v35 = v1[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v36 != *v24 || v35 != v24[1])
      {
        sub_23BBDDA88();
      }

      goto LABEL_28;
    }
  }

  sub_23B979910(v0, &qword_27E19FFA8, &qword_23BBFA6E0);
LABEL_29:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAE2584(uint64_t a1)
{
  v3 = _s20LocalizationResourceVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_6_24();
  sub_23BAE5514(v1, v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_19_18();
      sub_23BAE545C(v15, v11, v18);
      MEMORY[0x23EEB63A0](1);
      sub_23BBDD078();
      sub_23BBDCD08();
      OUTLINED_FUNCTION_0_43();
      sub_23BAE5384(v19, v20, MEMORY[0x277CDD308]);
      OUTLINED_FUNCTION_35_0();
      sub_23BBDCE68();
      sub_23BAE4118(a1);
      OUTLINED_FUNCTION_11_19();
      v22 = v11;
    }

    else
    {
      OUTLINED_FUNCTION_21_14();
      sub_23BAE545C(v15, v7, v24);
      MEMORY[0x23EEB63A0](2);
      sub_23BBDCD08();
      OUTLINED_FUNCTION_0_43();
      sub_23BAE5384(v25, v26, MEMORY[0x277CDD308]);
      sub_23BBDCE68();
      v27 = (v7 + *(v3 + 20));
      v28 = *v27;
      if (v28 == 6)
      {
        v29 = 1;
      }

      else
      {
        v29 = *(v27 + 1);
        MEMORY[0x23EEB63A0](0);
        MEMORY[0x23EEB63A0](v28);
      }

      MEMORY[0x23EEB63A0](v29);
      OUTLINED_FUNCTION_1_45();
      v22 = v7;
    }

    return sub_23BAE54BC(v22, v21);
  }

  else
  {
    MEMORY[0x23EEB63A0](0);
    OUTLINED_FUNCTION_35_0();
    sub_23BBDD078();
  }
}

unint64_t sub_23BAE28A8()
{
  result = qword_27E19FF80;
  if (!qword_27E19FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FF80);
  }

  return result;
}

uint64_t sub_23BAE28FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, int a4@<W4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v33[0] = a4;
  v33[1] = a5;
  v38 = a1;
  v39 = a2;
  v40 = a6;
  v7 = sub_23BBD9848();
  MEMORY[0x28223BE20](v7 - 8);
  v36 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v9 - 8);
  v34 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BBDCFA8();
  MEMORY[0x28223BE20](v11 - 8);
  v37 = sub_23BBD96B8();
  v12 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v33 - v16;
  MEMORY[0x28223BE20](v18);
  v35 = v33 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v33 - v21;
  v23 = sub_23BBDCCC8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 1:
      goto LABEL_6;
    case 2:
      sub_23BB72A48();
      sub_23BBDCF98();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      v30 = v37;
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCFB8();
      sub_23BBD9838();
      v31 = v35;
      sub_23BB73D2C();
      (*(v12 + 8))(v22, v30);
      return (*(v12 + 32))(v40, v31, v30);
    case 3:
      if (sub_23BBDCCE8() == 1)
      {
        sub_23BBDCCD8();
        sub_23BB739F8();
        return (*(v24 + 8))(v26, v23);
      }

      else
      {
LABEL_6:
        sub_23BB72A48();
        sub_23BBDCF98();
        sub_23BBDCF88();
        sub_23BBDCF68();
        sub_23BBDCF88();
        v27 = v37;
        sub_23BBDCF78();
        sub_23BBDCF88();
        sub_23BBDCFB8();
        sub_23BBD9838();
        sub_23BB73D2C();
        (*(v12 + 8))(v22, v27);
        v28 = *(v12 + 32);
        v29 = v35;
        v28(v35, v14, v27);
        return (v28)(v40, v29, v27);
      }

    default:
      sub_23BB72A48();
      sub_23BBDCF98();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      v27 = v37;
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCFB8();
      sub_23BBD9838();
      sub_23BB73D2C();
      (*(v12 + 8))(v22, v27);
      v28 = *(v12 + 32);
      v29 = v35;
      v28(v35, v17, v27);
      return (v28)(v40, v29, v27);
  }
}

uint64_t sub_23BAE2F84@<X0>(uint64_t a4@<X8>)
{
  v12[1] = a4;
  v4 = sub_23BBD9848();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23BBDCFA8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23BBD96B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BB72A48();
  sub_23BBDCF98();
  sub_23BBDCF88();
  sub_23BBDCF68();
  sub_23BBDCF88();
  sub_23BBDCF78();
  sub_23BBDCF88();
  sub_23BBDCFB8();
  sub_23BBD9838();
  sub_23BB73D2C();
  return (*(v8 + 8))(v10, v7);
}

void sub_23BAE325C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v49 = a4;
  v5 = sub_23BBD9848();
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDCFA8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23BBD96B8();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v40 = &v39 - v13;
  v14 = sub_23BBDCBE8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = *(_s15PricePropertiesVMa(0) + 20);
  v22 = *(v15 + 16);
  v45 = v4;
  v22(v20, v4 + v21, v14);
  sub_23BBDCBD8();
  sub_23BAE5384(&qword_27E19FFA0, MEMORY[0x277CDD298], MEMORY[0x277CDD2A8]);
  v23 = sub_23BBDCF38();
  v24 = *(v15 + 8);
  v24(v17, v14);
  if (v23)
  {
    v24(v20, v14);
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v25, qword_27E1BFC88);
    v26 = sub_23BBDD5A8();
    v27 = sub_23BBD9988();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v50 = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v50);
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_23BA5AB90(0xD000000000000038, 0x800000023BBE22B0, &v50);
      _os_log_impl(&dword_23B970000, v27, v26, "%{public}s%{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v29, -1, -1);
      MEMORY[0x23EEB6DC0](v28, -1, -1);
    }

    sub_23BAE4520(v46, v47, v48, 0, 0, 0, v30, v31, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  else
  {
    sub_23BBDCBC8();
    v32 = sub_23BBDCF38();
    v24(v17, v14);
    if (v32)
    {
      v24(v20, v14);
      v33 = v40;
      sub_23BB72A48();
      sub_23BBDCF98();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      v34 = v42;
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCFB8();
      sub_23BBD9838();
      sub_23BB73D2C();
      (*(v41 + 8))(v33, v34);
    }

    else
    {
      sub_23BBDCBB8();
      sub_23BBDCF38();
      v24(v17, v14);
      v24(v20, v14);
      v35 = v40;
      sub_23BB72A48();
      v36 = v39;
      sub_23BB72A48();
      sub_23BBDCF98();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      v37 = v42;
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCFB8();
      sub_23BBD9838();
      sub_23BB73D2C();
      v38 = *(v41 + 8);
      v38(v36, v37);
      v38(v35, v37);
    }
  }
}

void sub_23BAE3A20(uint64_t a1)
{
  OUTLINED_FUNCTION_33_4(a1);
  v4 = v4 && v2 == v3;
  if (v4 || (sub_23BBDDA88() & 1) != 0)
  {
    _s22LocalizedPriceResourceVMa(0);
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_45_3(v5);
    if (sub_23BBDCCA8())
    {
      OUTLINED_FUNCTION_45_3(*(v1 + 24));

      sub_23BAE3C9C();
    }
  }
}

uint64_t sub_23BAE3AA0(uint64_t a1)
{
  sub_23BBDD078();
  _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_47_3();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_0_43();
  sub_23BAE5384(v2, v3, MEMORY[0x277CDD308]);
  sub_23BBDCE68();
  return sub_23BAE4118(a1);
}

uint64_t sub_23BAE3B3C(uint64_t a1)
{
  OUTLINED_FUNCTION_54_3(a1);
  sub_23BBDD078();
  _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_47_3();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_0_43();
  v3 = sub_23BAE5384(v1, v2, MEMORY[0x277CDD308]);
  OUTLINED_FUNCTION_26_8(v3, v4);
  sub_23BAE4118(v6);
  return sub_23BBDDBF8();
}

uint64_t sub_23BAE3BDC(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23BBDD078();
  sub_23BBDCD08();
  sub_23BAE5384(qword_27E19FD00, MEMORY[0x277CDD300], MEMORY[0x277CDD308]);
  sub_23BBDCE68();
  sub_23BAE4118(v2);
  return sub_23BBDDBF8();
}

void sub_23BAE3C9C()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v51 = _s15PricePropertiesVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_1();
  v49 = (v7 - v8);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v9);
  v50 = (&v48 - v10);
  v11 = OUTLINED_FUNCTION_5_3();
  _s22LocalizedPriceResourceV6FormatOMa(v11);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v13);
  v15 = (&v48 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  MEMORY[0x28223BE20](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FFB0, &unk_23BBFA6E8);
  v21 = OUTLINED_FUNCTION_13_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_46_2();
  v23 = v0 + v22;
  sub_23BAE5514(v5, v0, _s22LocalizedPriceResourceV6FormatOMa);
  sub_23BAE5514(v3, v23, _s22LocalizedPriceResourceV6FormatOMa);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_38();
      sub_23BAE5514(v0, v18, v43);
      if (OUTLINED_FUNCTION_52_3() != 1)
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    case 2u:
      OUTLINED_FUNCTION_2_38();
      v27 = OUTLINED_FUNCTION_43_4();
      sub_23BAE5514(v27, v28, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
      if (OUTLINED_FUNCTION_52_3() != 2)
      {
        v1 = v15;
LABEL_27:
        OUTLINED_FUNCTION_5_30();
        sub_23BAE54BC(v1, v44);
LABEL_28:
        sub_23B979910(v0, &qword_27E19FFB0, &unk_23BBFA6E8);
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_3_35();
      v30 = v23;
      v31 = v50;
      sub_23BAE545C(v30, v50, v32);
      v33 = *v15 == *v31 && v15[1] == v31[1];
      v34 = v51;
      if (v33 || (sub_23BBDDA88()) && (sub_23B9A0684(v15 + *(v34 + 20), v31 + *(v34 + 20)) & 1) != 0 && (sub_23BBDCCA8() & 1) != 0 && *(v15 + *(v34 + 28)) == *(v31 + *(v34 + 28)))
      {
        OUTLINED_FUNCTION_7_33();
        sub_23BAE54BC(v31, v35);
        sub_23BAE54BC(v15, v34);
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_7_33();
      sub_23BAE54BC(v31, v45);
      v46 = v15;
      goto LABEL_31;
    case 3u:
      OUTLINED_FUNCTION_2_38();
      v36 = OUTLINED_FUNCTION_44_2();
      sub_23BAE5514(v36, v37, v38);
      if (OUTLINED_FUNCTION_52_3() != 3)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_3_35();
      v39 = v49;
      sub_23BAE545C(v23, v49, v40);
      v41 = *v1 == *v39 && v1[1] == v39[1];
      v34 = v51;
      if (v41 || (sub_23BBDDA88()) && (sub_23B9A0684(v1 + *(v34 + 20), v39 + *(v34 + 20)) & 1) != 0 && (sub_23BBDCCA8() & 1) != 0 && *(v1 + *(v34 + 28)) == *(v39 + *(v34 + 28)))
      {
        OUTLINED_FUNCTION_7_33();
        sub_23BAE54BC(v39, v42);
        sub_23BAE54BC(v1, v34);
        OUTLINED_FUNCTION_14_19();
      }

      else
      {
        OUTLINED_FUNCTION_7_33();
        sub_23BAE54BC(v39, v47);
        v46 = v1;
LABEL_31:
        sub_23BAE54BC(v46, v34);
LABEL_32:
        OUTLINED_FUNCTION_14_19();
      }

LABEL_33:
      OUTLINED_FUNCTION_9_1();
      return;
    default:
      OUTLINED_FUNCTION_2_38();
      v24 = OUTLINED_FUNCTION_35_0();
      sub_23BAE5514(v24, v25, v26);
      if (!OUTLINED_FUNCTION_52_3())
      {
        goto LABEL_32;
      }

      goto LABEL_28;
  }
}

uint64_t sub_23BAE4118(uint64_t a1)
{
  v4 = v1;
  v5 = _s15PricePropertiesVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_35_5();
  _s22LocalizedPriceResourceV6FormatOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = (v10 - v9);
  OUTLINED_FUNCTION_2_38();
  sub_23BAE5514(v4, v11, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x23EEB63A0](1);
      goto LABEL_10;
    case 2u:
      v15 = v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20) + 48)];
      OUTLINED_FUNCTION_3_35();
      sub_23BAE545C(v11, v2, v16);
      MEMORY[0x23EEB63A0](2);
      sub_23BBDD078();
      sub_23BBDCBE8();
      OUTLINED_FUNCTION_4_28();
      v19 = sub_23BAE5384(v17, v18, MEMORY[0x277CDD2A0]);
      OUTLINED_FUNCTION_50_3(v19);
      sub_23BBDCD08();
      OUTLINED_FUNCTION_0_43();
      v22 = sub_23BAE5384(v20, v21, MEMORY[0x277CDD308]);
      OUTLINED_FUNCTION_50_3(v22);
      MEMORY[0x23EEB63A0](*(v2 + *(v5 + 28)));
      MEMORY[0x23EEB63A0](v15);
      sub_23BBDDBD8();
      OUTLINED_FUNCTION_5_30();
      v24 = v2;
      goto LABEL_6;
    case 3u:
      OUTLINED_FUNCTION_3_35();
      sub_23BAE545C(v11, v3, v25);
      MEMORY[0x23EEB63A0](3);
      sub_23BBDD078();
      sub_23BBDCBE8();
      OUTLINED_FUNCTION_4_28();
      v28 = sub_23BAE5384(v26, v27, MEMORY[0x277CDD2A0]);
      OUTLINED_FUNCTION_49_2(v28);
      sub_23BBDCD08();
      OUTLINED_FUNCTION_0_43();
      v31 = sub_23BAE5384(v29, v30, MEMORY[0x277CDD308]);
      OUTLINED_FUNCTION_49_2(v31);
      MEMORY[0x23EEB63A0](*(v3 + *(v5 + 28)));
      OUTLINED_FUNCTION_5_30();
      v24 = v3;
LABEL_6:
      result = sub_23BAE54BC(v24, v23);
      break;
    default:
      v13 = *v11;
      v14 = v11[1];
      MEMORY[0x23EEB63A0](0);
      MEMORY[0x23EEB63A0](v13);
      if (v14 != 2)
      {
        sub_23BBDDBD8();
      }

      sub_23BBDDBD8();
LABEL_10:
      result = sub_23BBDDBD8();
      break;
  }

  return result;
}

uint64_t sub_23BAE444C(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_54_3(a1);
  a1(v3);
  return sub_23BBDDBF8();
}

uint64_t sub_23BAE448C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_54_3(a1);
  MEMORY[0x23EEB63A0](v1);
  return sub_23BBDDBF8();
}

void sub_23BAE4520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v22;
  a20 = v23;
  v133 = v24;
  v125 = v25;
  v132 = v26;
  v136 = v27;
  v137 = v28;
  v135 = v29;
  v141 = v30;
  sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v123 = v32;
  v124 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_1();
  v122 = v34 - v33;
  OUTLINED_FUNCTION_5_3();
  v35 = sub_23BBD9848();
  v36 = OUTLINED_FUNCTION_13_0(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  v139 = v38 - v37;
  OUTLINED_FUNCTION_5_3();
  v39 = sub_23BBDCFC8();
  v40 = OUTLINED_FUNCTION_13_0(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  v138 = v42 - v41;
  OUTLINED_FUNCTION_5_3();
  v43 = sub_23BBDCFA8();
  v44 = OUTLINED_FUNCTION_13_0(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_1();
  v131 = v46 - v45;
  OUTLINED_FUNCTION_5_3();
  v140 = sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v134 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_18_3();
  v128 = v52;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18_3();
  v127 = v59;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18_3();
  v126 = v61;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18_3();
  v121 = v64;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18_3();
  v130 = v66;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v67);
  v129 = v118 - v68;
  OUTLINED_FUNCTION_5_3();
  v69 = sub_23BBDCBE8();
  OUTLINED_FUNCTION_7();
  v71 = v70;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v73);
  v75 = v118 - v74;
  _s15PricePropertiesVMa(0);
  OUTLINED_FUNCTION_48_4();
  v76 = v20;
  (*(v71 + 16))(v75, v20 + v77, v69);
  sub_23BBDCBD8();
  OUTLINED_FUNCTION_4_28();
  sub_23BAE5384(v78, v79, MEMORY[0x277CDD2A8]);
  v80 = OUTLINED_FUNCTION_15_20();
  v81 = *(v71 + 8);
  v82 = OUTLINED_FUNCTION_42_4();
  (v81)(v82);
  if (v80)
  {
    v83 = OUTLINED_FUNCTION_43_4();
    (v81)(v83);
    v84 = v129;
    sub_23BB72A48();
    v85 = v134;
    OUTLINED_FUNCTION_23_8();
    if (v88)
    {
      v89 = v86;
    }

    else
    {
      v89 = v87;
    }

    if (v132)
    {
      OUTLINED_FUNCTION_32_3();
      sub_23BBDCF98();
      sub_23BBDCF88();
      OUTLINED_FUNCTION_51_4();
      sub_23BBDCF88();
      sub_23BBDCF68();
      OUTLINED_FUNCTION_39_3();
      sub_23BBDCF78();
      OUTLINED_FUNCTION_29_4();
      v90 = v120;
    }

    else
    {
      OUTLINED_FUNCTION_32_3();
      sub_23BBDCF98();
      sub_23BBDCF88();
      OUTLINED_FUNCTION_51_4();
      sub_23BBDCF88();
      sub_23BBDCF68();
      OUTLINED_FUNCTION_27_5();
      sub_23BBDCF78();
      OUTLINED_FUNCTION_53_3();
      v90 = v121;
    }

    sub_23BBDCFB8();
    sub_23BBD9838();
    sub_23BB73D2C();
    (*(v85 + 8))(v84, v89);
    v105 = *(v85 + 32);
    v106 = v130;
    v105(v130, v90, v89);
    v105(v141, v106, v89);
  }

  else
  {
    sub_23BBDCBB8();
    v91 = OUTLINED_FUNCTION_15_20();
    v92 = OUTLINED_FUNCTION_42_4();
    (v81)(v92);
    if (v91 & 1) != 0 && *(v20 + *(v21 + 28)) == 1 || (sub_23BBDCBC8(), v93 = OUTLINED_FUNCTION_15_20(), v94 = OUTLINED_FUNCTION_42_4(), (v81)(v94), (v93))
    {
      v95 = OUTLINED_FUNCTION_43_4();
      (v81)(v95);
      v96 = v122;
      v97 = v123;
      v98 = v76 + *(v21 + 24);
      v99 = v124;
      (*(v123 + 16))(v122, v98, v124);
      v100 = v132 & 1;
      v101 = v125;
      v102 = v126;
      sub_23BB72A48();
      (*(v97 + 8))(v96, v99);
      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_23_8();
      if (v100)
      {
        OUTLINED_FUNCTION_32_3();
        sub_23BBDCF98();
        sub_23BBDCF88();
        sub_23BBDCF68();
        v103 = v140;
        if (v101)
        {
          OUTLINED_FUNCTION_28_5();
          OUTLINED_FUNCTION_34_4(v102);
          OUTLINED_FUNCTION_31_4();
          sub_23BBDCF68();
          OUTLINED_FUNCTION_39_3();
          OUTLINED_FUNCTION_30_5();
          sub_23BBDCF78();
          OUTLINED_FUNCTION_29_4();
          v104 = &a11;
        }

        else
        {
          OUTLINED_FUNCTION_27_5();
          OUTLINED_FUNCTION_34_4(v102);
          OUTLINED_FUNCTION_31_4();
          sub_23BBDCF68();
          OUTLINED_FUNCTION_39_3();
          OUTLINED_FUNCTION_30_5();
          sub_23BBDCF78();
          OUTLINED_FUNCTION_29_4();
          v104 = &a12;
        }
      }

      else
      {
        OUTLINED_FUNCTION_32_3();
        sub_23BBDCF98();
        sub_23BBDCF88();
        sub_23BBDCF68();
        v103 = v140;
        if (v101)
        {
          OUTLINED_FUNCTION_28_5();
          sub_23BBDCF78();
          OUTLINED_FUNCTION_31_4();
          sub_23BBDCF68();
          sub_23BBDCF88();
          OUTLINED_FUNCTION_30_5();
          sub_23BBDCF78();
          OUTLINED_FUNCTION_53_3();
          v104 = &a13;
        }

        else
        {
          sub_23BBDCF88();
          OUTLINED_FUNCTION_34_4(v102);
          OUTLINED_FUNCTION_31_4();
          sub_23BBDCF68();
          OUTLINED_FUNCTION_27_5();
          OUTLINED_FUNCTION_30_5();
          sub_23BBDCF78();
          OUTLINED_FUNCTION_53_3();
          v104 = &a10;
        }
      }

      v117 = *(v104 - 32);
      sub_23BBDCFB8();
      sub_23BBD9838();
      sub_23BB73D2C();
      (*(v81 + 8))(v102, v103);
      v115 = *(v81 + 32);
      v116 = v127;
      v115(v127, v117, v103);
    }

    else
    {
      sub_23BBDCBB8();
      OUTLINED_FUNCTION_15_20();
      v107 = OUTLINED_FUNCTION_42_4();
      (v81)(v107);
      v108 = OUTLINED_FUNCTION_43_4();
      (v81)(v108);
      v109 = v132 & 1;
      v110 = v118[7];
      sub_23BB72A48();
      v111 = v128;
      sub_23BB72A48();
      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_32_3();
      sub_23BBDCF98();
      sub_23BBDCF88();
      sub_23BBDCF68();
      if (v109)
      {
        OUTLINED_FUNCTION_39_3();
        v103 = v140;
        OUTLINED_FUNCTION_34_4(v110);
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_34_4(v111);
        sub_23BBDCF88();
        sub_23BBDCF68();
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_30_5();
        sub_23BBDCF78();
        OUTLINED_FUNCTION_29_4();
        v112 = &a14;
      }

      else
      {
        sub_23BBDCF88();
        v103 = v140;
        sub_23BBDCF78();
        OUTLINED_FUNCTION_28_5();
        sub_23BBDCF78();
        sub_23BBDCF88();
        sub_23BBDCF68();
        sub_23BBDCF88();
        OUTLINED_FUNCTION_30_5();
        v111 = v128;
        sub_23BBDCF78();
        OUTLINED_FUNCTION_53_3();
        v112 = &a15;
      }

      v113 = *(v112 - 32);
      sub_23BBDCFB8();
      sub_23BBD9838();
      sub_23BB73D2C();
      v114 = *(v81 + 8);
      v114(v111, v103);
      v114(v110, v103);
      v115 = *(v81 + 32);
      v116 = v119;
      v115(v119, v113, v103);
    }

    v115(v141, v116, v103);
  }

  OUTLINED_FUNCTION_9_1();
}

BOOL sub_23BAE50A8(uint64_t a1)
{
  OUTLINED_FUNCTION_33_4(a1);
  v6 = v6 && v4 == v5;
  if (v6 || (sub_23BBDDA88()) && (_s15PricePropertiesVMa(0), OUTLINED_FUNCTION_48_4(), v8 = OUTLINED_FUNCTION_45_3(v7), (sub_23B9A0684(v8, v9)) && (OUTLINED_FUNCTION_45_3(*(v3 + 24)), (sub_23BBDCCA8()))
  {
    return *(v2 + *(v3 + 28)) == *(v1 + *(v3 + 28));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BAE5128(uint64_t a1)
{
  sub_23BBDD078();
  v2 = _s15PricePropertiesVMa(0);
  OUTLINED_FUNCTION_47_3();
  sub_23BBDCBE8();
  OUTLINED_FUNCTION_4_28();
  sub_23BAE5384(v3, v4, MEMORY[0x277CDD2A0]);
  OUTLINED_FUNCTION_44_2();
  sub_23BBDCE68();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_0_43();
  sub_23BAE5384(v5, v6, MEMORY[0x277CDD308]);
  OUTLINED_FUNCTION_44_2();
  sub_23BBDCE68();
  return MEMORY[0x23EEB63A0](*(v1 + *(v2 + 28)));
}

uint64_t sub_23BAE5204(uint64_t a1)
{
  OUTLINED_FUNCTION_54_3(a1);
  sub_23BBDD078();
  v2 = _s15PricePropertiesVMa(0);
  OUTLINED_FUNCTION_47_3();
  sub_23BBDCBE8();
  OUTLINED_FUNCTION_4_28();
  v5 = sub_23BAE5384(v3, v4, MEMORY[0x277CDD2A0]);
  OUTLINED_FUNCTION_26_8(v5, v6);
  sub_23BBDCD08();
  OUTLINED_FUNCTION_0_43();
  v9 = sub_23BAE5384(v7, v8, MEMORY[0x277CDD308]);
  OUTLINED_FUNCTION_26_8(v9, v10);
  MEMORY[0x23EEB63A0](*(v1 + *(v2 + 28)));
  return sub_23BBDDBF8();
}

uint64_t sub_23BAE52F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_23BBDDBB8();
  a4(v6);
  return sub_23BBDDBF8();
}

uint64_t sub_23BAE5384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BAE545C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BAE54BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BAE5514(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return sub_23BAE54BC(v0, _s22LocalizedPriceResourceV6FormatOMa);
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return sub_23BBDCF38();
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return sub_23BAE54BC(v0, _s11PriceStringOMa);
}

uint64_t OUTLINED_FUNCTION_26_8(uint64_t a1, uint64_t a2, ...)
{

  return sub_23BBDCE68();
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_34_4(uint64_t a1)
{

  return sub_23BBDCF78();
}

uint64_t OUTLINED_FUNCTION_39_3()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1)
{

  return sub_23BBDCE68();
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t a1)
{

  return sub_23BBDCE68();
}

uint64_t OUTLINED_FUNCTION_51_4()
{

  return sub_23BBDCF78();
}

uint64_t OUTLINED_FUNCTION_52_3()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_23BBDCF88();
}

void *OUTLINED_FUNCTION_54_3(uint64_t a1, ...)
{

  return sub_23BBDDBB8();
}

uint64_t sub_23BAE596C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, unint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v10 = OUTLINED_FUNCTION_2_6(result, a2);
  v12 = sub_23BA92D68(v10, v11);
  result = sub_23BAF7448(v12, v14, v13 & 1, v8, *(a2 + 16), 0, 1, a2, a3);
  if ((v16 & 0x100) != 0)
  {
    v15 = 0;
    v17 = *(a2 + 16);
    LOBYTE(v16) = 1;
    result = v17;
    goto LABEL_8;
  }

  v17 = *(a2 + 16);
  if (v17 == result)
  {
    if (v16)
    {
      LOBYTE(v16) = 1;
      v17 = result;
LABEL_8:
      v19[0] = result;
      v19[1] = v15;
      v20 = v16 & 1;
      v21 = v17;
      v22 = 0;
      v23 = 1;
      sub_23BAF733C(v19, a2, a3, a4, __src);

      return memcpy(a5, __src, 0x48uLL);
    }

    goto LABEL_10;
  }

  if (v17 >= result)
  {
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_23BAE5A7C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_23BAF70E0(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_23BAF5DA8(result, v3, a2);

      return OUTLINED_FUNCTION_48_1();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23BAE5B10(unsigned int a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v2 = sub_23BBDC208();
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986C8, &qword_23BBE5750);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = v41 - v8;
  v9 = sub_23BBDAA98();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0108, &qword_23BBFA948) - 8;
  MEMORY[0x28223BE20](v49);
  v12 = v41 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0110, &unk_23BBFA950) - 8;
  MEMORY[0x28223BE20](v47);
  v14 = v41 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E8, &qword_23BBFA938) - 8;
  MEMORY[0x28223BE20](v45);
  v16 = v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0118, &qword_23BBFA960);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = v41 - v19;
  sub_23B989ECC(v51, v16, &qword_27E1A00E8, &qword_23BBFA938);
  sub_23B989918(v16, v14, &qword_27E1A0110, &unk_23BBFA950);
  sub_23B989918(v14, v12, &qword_27E1A0108, &qword_23BBFA948);
  (*(v46 + 32))(v48, v12, v9);
  v44 = MEMORY[0x277CE0150];
  sub_23BAF9FDC(&qword_27E1A00F8, MEMORY[0x277CE0150], MEMORY[0x277CE0160]);
  v51 = v9;
  sub_23BBDD188();
  v21 = &v12[*(v49 + 52)];
  v22 = *v21;
  v23 = v21[1];
  v24 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0120, &qword_23BBFA968) + 44)];
  v48 = v23;
  v49 = v22;
  *v24 = v22;
  *(v24 + 1) = v23;
  v25 = &v14[*(v47 + 44)];
  v26 = *v25;
  v27 = v25[1];
  v28 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0128, &qword_23BBFA970) + 36)];
  v46 = v27;
  v47 = v26;
  *v28 = v26;
  *(v28 + 1) = v27;
  v29 = &v16[*(v45 + 52)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v32 = &v20[*(v18 + 52)];
  v41[1] = v31;
  v42 = v30;
  *v32 = v30;
  *(v32 + 1) = v31;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0, &qword_23BBFA940) + 36);
  sub_23BAF9FDC(&qword_27E1984F8, v44, MEMORY[0x277CE0170]);
  v44 = (v43 + 16);
  v45 = v43 + 32;
  v34 = (v43 + 8);
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v20[v33] == v53[0])
    {
      v35 = 1;
      v36 = v52;
    }

    else
    {
      v37 = sub_23BBDD558();
      v36 = v52;
      (*v44)(v52);
      v37(v53, 0);
      sub_23BBDD4B8();
      v35 = 0;
    }

    __swift_storeEnumTagSinglePayload(v36, v35, 1, v2);
    sub_23B989918(v36, v6, &qword_27E1986C8, &qword_23BBE5750);
    if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
    {
      break;
    }

    v38 = v50;
    (*v45)(v50, v6, v2);
    (v49)(v53, v38);
    (*v34)(v38, v2);
    v39 = v53[0];
    LOBYTE(v55) = v53[0];
    if ((v47)(&v55))
    {
      LOBYTE(v53[0]) = v39;
      v42(&v55, v53);
      v54 = ((v54 == 2) | v54) & v55 & 1;
    }
  }

  sub_23B9A8E20(v20, &qword_27E1A0118);
  return v54;
}

uint64_t sub_23BAE6168(int a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v2 = sub_23BBDC208();
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986C8, &qword_23BBE5750);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = v41 - v8;
  v9 = sub_23BBDAA98();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0108, &qword_23BBFA948) - 8;
  MEMORY[0x28223BE20](v49);
  v12 = v41 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0110, &unk_23BBFA950) - 8;
  MEMORY[0x28223BE20](v47);
  v14 = v41 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E8, &qword_23BBFA938) - 8;
  MEMORY[0x28223BE20](v45);
  v16 = v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0118, &qword_23BBFA960);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = v41 - v19;
  sub_23B989ECC(v51, v16, &qword_27E1A00E8, &qword_23BBFA938);
  sub_23B989918(v16, v14, &qword_27E1A0110, &unk_23BBFA950);
  sub_23B989918(v14, v12, &qword_27E1A0108, &qword_23BBFA948);
  (*(v46 + 32))(v48, v12, v9);
  v44 = MEMORY[0x277CE0150];
  sub_23BAF9FDC(&qword_27E1A00F8, MEMORY[0x277CE0150], MEMORY[0x277CE0160]);
  v51 = v9;
  sub_23BBDD188();
  v21 = &v12[*(v49 + 52)];
  v22 = *v21;
  v23 = v21[1];
  v24 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0120, &qword_23BBFA968) + 44)];
  v48 = v23;
  v49 = v22;
  *v24 = v22;
  *(v24 + 1) = v23;
  v25 = &v14[*(v47 + 44)];
  v26 = *v25;
  v27 = v25[1];
  v28 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0128, &qword_23BBFA970) + 36)];
  v46 = v27;
  v47 = v26;
  *v28 = v26;
  *(v28 + 1) = v27;
  v29 = &v16[*(v45 + 52)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v32 = &v20[*(v18 + 52)];
  v41[1] = v31;
  v42 = v30;
  *v32 = v30;
  *(v32 + 1) = v31;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0, &qword_23BBFA940) + 36);
  sub_23BAF9FDC(&qword_27E1984F8, v44, MEMORY[0x277CE0170]);
  v44 = (v43 + 16);
  v45 = v43 + 32;
  v34 = (v43 + 8);
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v20[v33] == v53[0])
    {
      v35 = 1;
      v36 = v52;
    }

    else
    {
      v37 = sub_23BBDD558();
      v36 = v52;
      (*v44)(v52);
      v37(v53, 0);
      sub_23BBDD4B8();
      v35 = 0;
    }

    __swift_storeEnumTagSinglePayload(v36, v35, 1, v2);
    sub_23B989918(v36, v6, &qword_27E1986C8, &qword_23BBE5750);
    if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
    {
      break;
    }

    v38 = v50;
    (*v45)(v50, v6, v2);
    (v49)(v53, v38);
    (*v34)(v38, v2);
    v39 = v53[0];
    LOBYTE(v55) = v53[0];
    if ((v47)(&v55))
    {
      LOBYTE(v53[0]) = v39;
      v42(&v55, v53);
      v54 |= v55;
    }
  }

  sub_23B9A8E20(v20, &qword_27E1A0118);
  return v54 & 1;
}

uint64_t sub_23BAE67D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  if (*(a1 + 16) == 1)
  {
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    sub_23B9ECEE0(a1 + v11, v7);
    v12 = &v7[*(v4 + 28)];
    if (v12[8] == 1)
    {
      v13 = *(*v12 + 16);
      sub_23BAF6B34(v7, type metadata accessor for SubscriptionStoreContentConfiguration);
      if (v13 == 1)
      {
        sub_23B9ECEE0(a1 + v11, v10);
        v14 = 0;
LABEL_10:
        __swift_storeEnumTagSinglePayload(v10, v14, 1, v4);
        return sub_23B989918(v10, a2, qword_27E19A490, qword_23BBEA4A0);
      }
    }

    else
    {
      sub_23BAF6B34(v7, type metadata accessor for SubscriptionStoreContentConfiguration);
    }

    v14 = 1;
    goto LABEL_10;
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

void sub_23BAE69D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v22 = v21;
  v60 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v62 = v31;
  v63 = v32;
  v34 = v33;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v59 - v38;
  *&v68 = v30;
  *(&v68 + 1) = v28;
  *&v69 = v26;
  *(&v69 + 1) = v24;
  v70 = v22;
  v71 = a21;
  v40 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v68);
  v41 = v40[19];
  v61 = v40[18];
  v42 = v36 + v41;
  *v42 = swift_getKeyPath();
  *(v42 + 8) = 0;
  v43 = v36 + v40[20];
  *v43 = swift_getKeyPath();
  *(v43 + 48) = 0;
  v44 = v36 + v40[21];
  *v44 = sub_23BAE7428(2);
  *(v44 + 8) = v45;
  v46 = v36 + v40[22];
  *v46 = swift_getKeyPath();
  *(v46 + 8) = 0;
  v47 = v40[23];
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v64 = v47;
  sub_23BAE7474(&v68);
  (*(*(v30 - 8) + 16))(v36, v34, v30);
  v48 = v40[17];
  *&v68 = v28;
  *(&v68 + 1) = v26;
  v49 = v62;
  *&v69 = v60;
  *(&v69 + 1) = a21;
  v50 = type metadata accessor for SubscriptionStoreContainerContext(0, &v68);
  v51 = *(v50 - 8);
  (*(v51 + 16))(v36 + v48, v49, v50);
  v52 = v63;
  *(v36 + v61) = v63;
  if (v52)
  {
    sub_23BAC78C8(v52, v39);
    (*(v51 + 8))(v49, v50);
    v53 = OUTLINED_FUNCTION_51_5();
    v54(v53);
    v55 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
    if (__swift_getEnumTagSinglePayload(v39, 1, v55) != 1)
    {
      sub_23B97933C(v39, &v65);
      OUTLINED_FUNCTION_30_6();
      sub_23BAF6B34(v39, v58);
      goto LABEL_7;
    }

    sub_23B9A8E20(v39, qword_27E19A490);
  }

  else
  {
    (*(v51 + 8))(v49, v50);
    v56 = OUTLINED_FUNCTION_51_5();
    v57(v56);
  }

  v67 = 0;
  v65 = 0u;
  v66 = 0u;
LABEL_7:
  v68 = v65;
  v69 = v66;
  v70 = v67;
  v71 = 0;
  sub_23BAC4438(&v68, v36 + v64);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAE6CEC(uint64_t a1)
{
  v62 = sub_23BBDA288();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_23BBDC208();
  v3 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v51 - v7;
  MEMORY[0x28223BE20](v8);
  v64 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v69 = &v51 - v11;
  MEMORY[0x28223BE20](v12);
  v59 = &v51 - v13;
  v14 = sub_23BBDAA98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0, &qword_23BBFA940);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  v22 = MEMORY[0x277CE0150];
  sub_23BAF9FDC(&qword_27E1984F8, MEMORY[0x277CE0150], MEMORY[0x277CE0170]);
  sub_23BBDD458();
  sub_23B9B83DC();
  v54 = v23;
  v51 = v15;
  v24 = *(v15 + 16);
  v52 = a1;
  v24(v17, a1, v14);
  sub_23BAF9FDC(&qword_27E1A00F8, v22, MEMORY[0x277CE0160]);
  v63 = v21;
  sub_23BBDD188();
  v25 = *(v19 + 44);
  v66 = (v3 + 32);
  v67 = (v3 + 16);
  v60 = v3;
  v56 = v3 + 8;
  v57 = (v65 + 8);
  LODWORD(v65) = 1;
  v55 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  for (i = v25; ; v25 = i)
  {
    v27 = v63;
    sub_23BBDD4A8();
    if (*(v27 + v25) == *v70)
    {
      break;
    }

    v28 = v26;
    v29 = v5;
    v30 = sub_23BBDD558();
    v31 = v68;
    v32 = *v67;
    v33 = v59;
    (*v67)(v59);
    v30(v70, 0);
    v34 = v14;
    sub_23BBDD4B8();
    v35 = *v66;
    (*v66)(v69, v33, v31);
    v36 = v61;
    sub_23BBDC1D8();
    sub_23BAC3448();
    sub_23BBDA298();
    (*v57)(v36, v62);
    if ((v65 & 1) == 0)
    {
      v5 = v29;
      v26 = v28;
      if (v70[0] == 2 || (v70[0] & 1) != 0)
      {
LABEL_14:
        (v32)(v5, v69, v68);
        v40 = v54;
        v41 = *(v54 + 16);
        v42 = v41 + 1;
        if (v41 >= *(v54 + 24) >> 1)
        {
          sub_23B9B83DC();
          v40 = v47;
          v65 = v5;
          v54 = v47;
        }

        else
        {
          v65 = v5;
        }
      }

      else
      {
LABEL_16:
        (v32)(v53, v69, v68);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v55;
        }

        else
        {
          sub_23B9B83DC();
          v40 = v48;
        }

        v41 = *(v40 + 16);
        v42 = v41 + 1;
        if (v41 >= *(v40 + 24) >> 1)
        {
          sub_23B9B83DC();
          v40 = v49;
          v65 = v53;
          v55 = v49;
        }

        else
        {
          v55 = v40;
          v65 = v53;
        }
      }

      v43 = v60;
      v44 = v68;
      (*(v60 + 8))(v69, v68);
      *(v40 + 16) = v42;
      v35((v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v41), v65, v44);
      LODWORD(v65) = 0;
      goto LABEL_11;
    }

    v5 = v29;
    v26 = v28;
    if (v70[0] == 2)
    {
      goto LABEL_14;
    }

    if ((v70[0] & 1) == 0)
    {
      goto LABEL_16;
    }

    (v32)(v64, v69, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B9B83DC();
      v26 = v45;
    }

    v37 = *(v26 + 16);
    if (v37 >= *(v26 + 24) >> 1)
    {
      sub_23B9B83DC();
      v26 = v46;
    }

    v38 = v60;
    v39 = v68;
    (*(v60 + 8))(v69, v68);
    *(v26 + 16) = v37 + 1;
    v35((v26 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37), v64, v39);
    LODWORD(v65) = 1;
LABEL_11:
    v14 = v34;
  }

  (*(v51 + 8))(v52, v14);
  sub_23B9A8E20(v27, &qword_27E1A00F0);
  return v26;
}

uint64_t sub_23BAE7428(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199218, &qword_23BBFA470);
  sub_23BBDBF58();
  return v2;
}

uint64_t sub_23BAE7474(uint64_t a1)
{
  sub_23B989ECC(a1, v4, &qword_27E197878, &qword_23BBE38D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197878, &qword_23BBE38D0);
  sub_23BBDBF58();
  v1 = OUTLINED_FUNCTION_35_0();
  return sub_23B9A8E20(v1, v2);
}

BOOL sub_23BAE7588(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 88);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v12[15];
  }

  if (v8 == 2)
  {
    v10 = *(v1 + *(a1 + 72));
    if (v10 && *(v10 + 16))
    {
      type metadata accessor for SubscriptionStoreContentConfiguration(0);
      return sub_23BA227E4();
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_23BAE7758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = *(v2 + *(a1 + 72));
  if (v11)
  {
    if (sub_23BAE7588(a1))
    {
      v12 = sub_23BAE74F0();
      if (*(&v18 + 1))
      {
        v20[0] = v17;
        v20[1] = v18;
        v21 = v19;
        MEMORY[0x28223BE20](v12);
        *(&v16 - 2) = v20;
        sub_23B9FCA38(sub_23BAC6090, v11, v10);
        sub_23B989918(v10, v7, qword_27E19A490, qword_23BBEA4A0);
        v13 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
        if (__swift_getEnumTagSinglePayload(v7, 1, v13) != 1)
        {
          sub_23B9ECE7C(v7, a2);
          __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
          return sub_23BAC5FF8(v20);
        }

        sub_23B9A8E20(v7, qword_27E19A490);
        sub_23BAC5FF8(v20);
      }

      else
      {
        sub_23B9A8E20(&v17, &qword_27E197878);
      }
    }

    return sub_23BAC78C8(v11, a2);
  }

  else
  {
    v14 = type metadata accessor for SubscriptionStoreContentConfiguration(0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
  }
}

uint64_t sub_23BAE7994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v293 = a2;
  sub_23BBDB588();
  OUTLINED_FUNCTION_7();
  v284 = v4;
  v285 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  v283 = v5 - v6;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_3();
  v282 = v8;
  v310 = type metadata accessor for StoreKitProminentButtonStyle(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v281 = (v11 - v10);
  v12 = OUTLINED_FUNCTION_48_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v12, v13);
  v15 = OUTLINED_FUNCTION_36_2(&qword_27E1A0068);
  v16 = *(a1 + 40);
  v311 = *(a1 + 16);
  v312 = v16;
  v262 = v15;
  v263 = v14;
  *(&v321[0] + 1) = v14;
  *&v321[0] = v311;
  *(&v321[1] + 1) = v15;
  *&v321[1] = v16;
  v17 = OUTLINED_FUNCTION_31_5();
  v19 = type metadata accessor for CombinedMarketingContent(v17, v18);
  OUTLINED_FUNCTION_55_2();
  v296 = v19;
  sub_23BBDA358();
  OUTLINED_FUNCTION_38_3();
  OpaqueTypeConformance2 = sub_23BBDACE8();
  v306 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  v300 = a1;
  v313 = *(a1 + 24);
  v20 = *(a1 + 48);
  v308 = *(a1 + 56);
  v309 = v20;
  v21 = OUTLINED_FUNCTION_31_5();
  v307 = type metadata accessor for SubscriptionStoreMainContainerContent(v21, v22);
  v23 = OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_6_5(v23, v24, v25);
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  OUTLINED_FUNCTION_4_29();
  sub_23B9A8CB4(v26, &qword_27E19F5A0, &qword_23BBF8390, v27);
  v28 = OUTLINED_FUNCTION_31_5();
  type metadata accessor for StoreContentNavigation(v28, v29);
  OUTLINED_FUNCTION_23_9();
  v30 = sub_23BBDD648();
  OUTLINED_FUNCTION_2_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_46();
  v368 = swift_getWitnessTable();
  v32 = MEMORY[0x277CE1550];
  swift_getWitnessTable();
  v289 = v30;
  v33 = OUTLINED_FUNCTION_31_5();
  type metadata accessor for BottomContentContainer(v33, v34);
  sub_23BBDD648();
  sub_23BBDD648();
  v367 = WitnessTable;
  swift_getWitnessTable();
  v35 = OUTLINED_FUNCTION_31_5();
  type metadata accessor for MagicPocketContainer(v35, v36);
  OUTLINED_FUNCTION_23_9();
  sub_23BBDD648();
  OUTLINED_FUNCTION_26_9();
  v303 = v37;
  v295 = swift_getWitnessTable();
  v298 = sub_23BAF69D4();
  v365 = v295;
  v366 = v298;
  v363 = swift_getWitnessTable();
  v364 = v312;
  OUTLINED_FUNCTION_2_7();
  v290 = v38;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_14();
  v294 = v39;
  v362 = swift_getWitnessTable();
  v291 = v32;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33_5();
  v292 = v40;
  v361 = swift_getWitnessTable();
  swift_getWitnessTable();
  v41 = OUTLINED_FUNCTION_31_5();
  type metadata accessor for SubscriptionStoreStructuredScrollView(v41, v42);
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_32_4();
  v359 = swift_getWitnessTable();
  v360 = sub_23B97AD88();
  v357 = swift_getWitnessTable();
  v358 = sub_23BA3D77C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_15();
  v302 = sub_23BBDACB8();
  v299 = sub_23BBDA358();
  v43 = OUTLINED_FUNCTION_48_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v43, v44);
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_42_5();
  sub_23B9A8CB4(v45, v46, v47, v48);
  v49 = OUTLINED_FUNCTION_31_5();
  type metadata accessor for CombinedMarketingContent(v49, v50);
  sub_23BBDA358();
  sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090, &qword_23BBFA8A0);
  OUTLINED_FUNCTION_48();
  sub_23BBDACE8();
  v51 = OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_5(v51, v306, v52);
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098, &qword_23BBFA8A8);
  v53 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_6_5(v53, v54, v30);
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  v55 = swift_getWitnessTable();
  swift_getWitnessTable();
  v56 = OUTLINED_FUNCTION_31_5();
  type metadata accessor for BottomContentContainer(v56, v57);
  OUTLINED_FUNCTION_48_5();
  sub_23BBDD648();
  OUTLINED_FUNCTION_55_2();
  sub_23BBDACE8();
  v355 = sub_23BAF6A40();
  v356 = v55;
  swift_getWitnessTable();
  v58 = OUTLINED_FUNCTION_31_5();
  type metadata accessor for MagicPocketContainer(v58, v59);
  OUTLINED_FUNCTION_23_9();
  sub_23BBDD648();
  v353 = swift_getWitnessTable();
  v354 = v298;
  v351 = swift_getWitnessTable();
  v352 = v312;
  swift_getWitnessTable();
  v350 = swift_getWitnessTable();
  swift_getWitnessTable();
  v349 = swift_getWitnessTable();
  OUTLINED_FUNCTION_51_5();
  swift_getWitnessTable();
  v60 = OUTLINED_FUNCTION_31_5();
  type metadata accessor for SubscriptionStoreStructuredScrollView(v60, v61);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00A8, &unk_23BBFA8B0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  v62 = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_6();
  v347 = v62;
  v348 = sub_23B9A8CB4(v63, &qword_27E1A00A8, &unk_23BBFA8B0, v64);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_5();
  sub_23BBDAEC8();
  OUTLINED_FUNCTION_38_3();
  v65 = sub_23BBDBE28();
  sub_23B9C7F48();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_12();
  v345 = &unk_23BBFA8B0;
  v346 = swift_getWitnessTable();
  swift_getWitnessTable();
  v344 = OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_3_4();
  v269 = v65;
  v266 = swift_getWitnessTable();
  v267 = &unk_23BBFA8B0;
  v66 = OUTLINED_FUNCTION_52_4();
  v68 = type metadata accessor for FeatureView(v66, v67);
  OUTLINED_FUNCTION_7();
  v273 = v69;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_22_2();
  v271 = v71;
  OUTLINED_FUNCTION_28_6();
  v72 = swift_getWitnessTable();
  OUTLINED_FUNCTION_27_6();
  v75 = sub_23BAF9FDC(v73, v74, &unk_23BC03CEC);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v274 = v77;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_22_2();
  v297 = v79;
  v276 = v68;
  v268 = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v305 = OpaqueTypeMetadata2;
  v306 = v75;
  OUTLINED_FUNCTION_52_4();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v272 = v80;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_22_2();
  v270 = v82;
  v275 = v83;
  v84 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v279 = v85;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_6_1();
  v278 = v87 - v88;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_6_3();
  v277 = v90;
  OUTLINED_FUNCTION_3_2();
  v280 = v91;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_22_2();
  v298 = v93;
  v94 = OUTLINED_FUNCTION_52_4();
  type metadata accessor for SubscriptionStoreContainerContext(v94, v95);
  OUTLINED_FUNCTION_7();
  v287 = v97;
  v288 = v96;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_6_1();
  v100 = v98 - v99;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_6_3();
  v256 = v102;
  OUTLINED_FUNCTION_3_2();
  v254 = v103;
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_3_1();
  v107 = v106 - v105;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_22_2();
  v264 = v109;
  *(v321 + 8) = v313;
  *&v321[0] = v110;
  *(&v321[1] + 1) = v295;
  v322 = v309;
  v323 = v308;
  v111 = OUTLINED_FUNCTION_52_4();
  v113 = type metadata accessor for SubscriptionStoreStaticViewContainer(v111, v112);
  OUTLINED_FUNCTION_7();
  v255 = v114;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v115);
  v117 = &v253 - v116;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  v294 = v113;
  sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v258 = v118;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_22_2();
  v265 = v120;
  v303 = v121;
  v122 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v261 = v123;
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_6_1();
  v260 = v125 - v126;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v127);
  v257 = &v253 - v128;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_6_3();
  v259 = v130;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v131 - 8);
  OUTLINED_FUNCTION_6_1();
  v134 = v132 - v133;
  MEMORY[0x28223BE20](v135);
  v137 = &v253 - v136;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v138);
  v140 = &v253 - v139;
  v141 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_3_1();
  v286 = v144 - v143;
  v291 = v122;
  v292 = v84;
  sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v289 = v146;
  v290 = v145;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_22_2();
  v302 = v148;
  v149 = v300;
  v150 = v301;
  v151 = *(v301 + *(v300 + 72));
  if (v151)
  {
    sub_23BAE67D4(v151, v140);
    if (__swift_getEnumTagSinglePayload(v140, 1, v141) != 1)
    {
      v152 = v286;
      sub_23B9ECE7C(v140, v286);
      sub_23B9ECEE0(v152, v137);
      __swift_storeEnumTagSinglePayload(v137, 0, 1, v141);
      v153 = v311;
      (*(v254 + 16))(v107, v150, v311);
      sub_23BABD26C(v137, v107, v154, v153, v263, v312, v262, v264);
      v155 = v150 + *(v149 + 68);
      v156 = v256;
      (*(v287 + 16))(v256, v155, v288);
      v157 = v152 + *(v141 + 28);
      if (*(v157 + 8) == 1)
      {
        v158 = *v157;
      }

      else
      {
        v158 = MEMORY[0x277D84F90];
      }

      v211 = v309;
      sub_23BAE69D8(v264, v156, v158, v296, v313.i64[0], v313.i64[1], v295, v309, v308, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263);
      OUTLINED_FUNCTION_8_34();
      v212 = v294;
      v213 = swift_getWitnessTable();
      v214 = sub_23BAB3BD0(1, v212, v213);
      (*(v255 + 8))(v117, v212, v214);
      v215 = sub_23B989ECC(v286 + *(v141 + 24), v320, &qword_27E19A528, &unk_23BBEA560);
      if (v320[1])
      {
        MEMORY[0x28223BE20](v215);
        *(&v253 - 8) = v153;
        *(&v253 - 7) = v313;
        *(&v253 - 5) = v312;
        *(&v253 - 4) = v211;
        *(&v253 - 3) = v216;
        v251 = v150;
        sub_23BA23CEC(sub_23BAFA5C8, v321);
      }

      else
      {
        sub_23B9A8E20(v320, &qword_27E19A528);
        bzero(v321, 0x157uLL);
      }

      v217 = v303;
      OUTLINED_FUNCTION_1_15();
      v222 = sub_23B9A8CB4(v218, v219, v220, v221);
      v318 = v213;
      v319 = v222;
      OUTLINED_FUNCTION_10_5();
      v223 = swift_getWitnessTable();
      v224 = v257;
      sub_23BA2241C(v321, v217, v223);
      sub_23B9A8E20(v321, &qword_27E19A528);
      v225 = OUTLINED_FUNCTION_48_1();
      v226(v225);
      v227 = sub_23B9ECF44();
      v316 = v223;
      v317 = v227;
      v228 = v291;
      swift_getWitnessTable();
      v229 = v259;
      sub_23B9D2D88();
      v230 = *(v261 + 8);
      v230(v224, v228);
      v231 = v260;
      OUTLINED_FUNCTION_9_7();
      sub_23B9D2D88();
      *&v321[0] = v305;
      v232 = v310;
      *(&v321[0] + 1) = v310;
      *&v321[1] = OpaqueTypeConformance2;
      *(&v321[1] + 1) = v306;
      OUTLINED_FUNCTION_11_20();
      v233 = swift_getOpaqueTypeConformance2();
      v234 = sub_23BAC5F00();
      v314 = v233;
      v315 = v234;
      v210 = v232;
      swift_getWitnessTable();
      sub_23BA82D64();
      v230(v231, v228);
      v230(v229, v228);
      OUTLINED_FUNCTION_30_6();
      sub_23BAF6B34(v286, v235);
      goto LABEL_14;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v140, 1, 1, v141);
  }

  v159 = OUTLINED_FUNCTION_46();
  sub_23B9A8E20(v159, v160);
  sub_23BAE7758(v149, v137);
  sub_23B989ECC(v137, v134, qword_27E19A490, qword_23BBEA4A0);
  (*(v287 + 16))(v100, v150 + *(v149 + 68), v288);
  sub_23B9EBFF8(v134, v100, v298);
  v296 = v137;
  sub_23BAE936C(v149, v320, v137);
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_44_3(&v253);
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_44_3(&v253);
  v251 = v266;
  v163 = v271;
  sub_23BBC691C(0, sub_23BAF6ABC, v164, sub_23BAF6AD4, v165, v299, v269);
  KeyPath = swift_getKeyPath();
  v342 = 0;
  v168 = v281;
  v167 = v282;
  *v281 = KeyPath;
  *(v168 + 73) = 0;
  v169 = v310;
  v171 = v284;
  v170 = v285;
  v172 = *(v284 + 104);
  LODWORD(v299) = *MEMORY[0x277CE0AC0];
  v295 = v284 + 104;
  v288 = v172;
  v172(v167);
  if (qword_27E197708 != -1)
  {
    swift_once();
  }

  v173 = qword_27E1BFCB0;
  *&v321[0] = qword_27E1BFCB0;
  v287 = *(v171 + 16);
  v174 = v283;
  (v287)(v283, v167, v170);
  v286 = sub_23B974940();
  sub_23BBD9D18();
  v284 = *(v171 + 8);
  v175 = OUTLINED_FUNCTION_46();
  v176(v175);
  *(v168 + *(v169 + 24)) = 0;
  *(v168 + *(v169 + 28)) = 0;
  v177 = v276;
  v178 = v306;
  sub_23BBDB988();
  v269 = type metadata accessor for StoreKitProminentButtonStyle;
  sub_23BAF6B34(v168, type metadata accessor for StoreKitProminentButtonStyle);
  (*(v273 + 8))(v163, v177);
  v179 = swift_getKeyPath();
  v343 = 0;
  *v168 = v179;
  *(v168 + 73) = 0;
  v180 = v310;
  v288(v167, v299, v170);
  *&v321[0] = v173;
  (v287)(v174, v167, v170);
  sub_23BBD9D18();
  v181 = OUTLINED_FUNCTION_46();
  (v284)(v181);
  v182 = v180;
  *(v168 + *(v180 + 24)) = 0;
  *(v168 + *(v180 + 28)) = 0;
  v183 = v270;
  v185 = OpaqueTypeConformance2;
  v184 = v305;
  v186 = v182;
  sub_23BBDBA48();
  sub_23BAF6B34(v168, v269);
  v187 = OUTLINED_FUNCTION_48_1();
  v188(v187);
  sub_23BAE74F0();
  v338 = v184;
  v339 = v186;
  v340 = v185;
  v341 = v178;
  OUTLINED_FUNCTION_11_20();
  v189 = swift_getOpaqueTypeConformance2();
  v190 = v275;
  sub_23BB492B0(v321, v275, v189);
  sub_23B9A8E20(v321, &qword_27E197878);
  (*(v272 + 8))(v183, v190);
  v191 = sub_23BAC5F00();
  v336 = v189;
  v337 = v191;
  OUTLINED_FUNCTION_1_22();
  v192 = v292;
  swift_getWitnessTable();
  v193 = v277;
  OUTLINED_FUNCTION_9_7();
  sub_23B9D2D88();
  v194 = *(v279 + 8);
  v195 = OUTLINED_FUNCTION_9_7();
  v194(v195);
  sub_23B9D2D88();
  OUTLINED_FUNCTION_8_34();
  v196 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v201 = sub_23B9A8CB4(v197, v198, v199, v200);
  v334 = v196;
  v335 = v201;
  v202 = swift_getWitnessTable();
  v203 = sub_23B9ECF44();
  v332 = v202;
  v333 = v203;
  swift_getWitnessTable();
  sub_23BA82E14();
  v204 = OUTLINED_FUNCTION_9_7();
  v194(v204);
  (v194)(v193, v192);
  sub_23B9A8E20(v296, qword_27E19A490);
  *&v205 = vdupq_laneq_s64(v313, 1).u64[0];
  *(&v205 + 1) = v312;
  v206.i64[0] = v311;
  v321[0] = vzip1q_s64(v206, v313);
  v321[1] = v205;
  v322 = v309;
  v323 = v308;
  v207 = OUTLINED_FUNCTION_52_4();
  type metadata accessor for SubscriptionStoreStaticViewContainer.PlacementProperties(v207, v208);
  OUTLINED_FUNCTION_4_1();
  (*(v209 + 8))(v320);
  (*(v280 + 8))(v298, v307);
  v210 = v310;
LABEL_14:
  v236 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v241 = sub_23B9A8CB4(v237, v238, v239, v240);
  v330 = v236;
  v331 = v241;
  OUTLINED_FUNCTION_1_22();
  v242 = swift_getWitnessTable();
  v243 = sub_23B9ECF44();
  v328 = v242;
  v329 = v243;
  v244 = swift_getWitnessTable();
  *&v321[0] = v305;
  *(&v321[0] + 1) = v210;
  *&v321[1] = OpaqueTypeConformance2;
  *(&v321[1] + 1) = v306;
  OUTLINED_FUNCTION_11_20();
  v245 = swift_getOpaqueTypeConformance2();
  v246 = sub_23BAC5F00();
  v326 = v245;
  v327 = v246;
  v247 = swift_getWitnessTable();
  v324 = v244;
  v325 = v247;
  OUTLINED_FUNCTION_2_7();
  v248 = v290;
  swift_getWitnessTable();
  v249 = v302;
  sub_23B9D2D88();
  return (*(v289 + 8))(v249, v248);
}

double sub_23BAE936C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v4 = v3;
  v27 = sub_23BBDA928();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  sub_23B989ECC(a3, &v26 - v12, qword_27E19A490, qword_23BBEA4A0);
  v14 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_23B9A8E20(v13, qword_27E19A490);
    bzero(v29, 0x157uLL);
  }

  else
  {
    sub_23B989ECC(&v13[*(v14 + 24)], v29, &qword_27E19A528, &unk_23BBEA560);
    sub_23BAF6B34(v13, type metadata accessor for SubscriptionStoreContentConfiguration);
    if (*&v29[8])
    {
      memcpy(v30, v29, 0x157uLL);
      v15 = sub_23B9AF0F0(&v30[1], &v28);
      MEMORY[0x28223BE20](v15);
      v16 = *(a1 + 32);
      *(&v26 - 4) = *(a1 + 16);
      *(&v26 - 3) = v16;
      *(&v26 - 2) = *(a1 + 48);
      *(&v26 - 2) = v4;
      sub_23BA899B4(sub_23BAF7CA4, v29);
      sub_23B9ED050(v30);
      goto LABEL_6;
    }
  }

  v17 = sub_23B9A8E20(v29, &qword_27E19A528);
  sub_23B9B78A0(v17);
  sub_23B9AF0F0(v30 + 8, v29);
  sub_23B9ED0A4(v30);
LABEL_6:
  v18 = v4 + *(a1 + 76);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    if ((v19 & 1) == 0)
    {
LABEL_8:
      v20 = 0;
      goto LABEL_13;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v21 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v19, 0);
    (*(v8 + 8))(v10, v27);
    if (LOBYTE(v30[0]) != 1)
    {
      goto LABEL_8;
    }
  }

  v22 = v4 + *(a1 + 68);
  v23 = *(a1 + 48);
  v30[0] = *(a1 + 24);
  v30[1] = v23;
  if (*(v22 + *(type metadata accessor for SubscriptionStoreContainerContext(0, v30) + 60)))
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

LABEL_13:
  result = *v29;
  v25 = *&v29[16];
  *a2 = *v29;
  *(a2 + 16) = v25;
  *(a2 + 32) = *&v29[32];
  *(a2 + 40) = v20;
  return result;
}

uint64_t sub_23BAE96FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v46 = a7;
  v54 = a3;
  v53 = a2;
  v55 = a1;
  v56 = a9;
  v71 = a4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0060, &qword_23BBFA880);
  v52 = v71;
  v73 = a7;
  v74 = sub_23B9A8CB4(&qword_27E1A0068, &qword_27E1A0060, &qword_23BBFA880, MEMORY[0x277D84298]);
  type metadata accessor for CombinedMarketingContent(255, &v71);
  sub_23BBDA358();
  v45 = sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  v14 = a5;
  v49 = a5;
  v71 = a5;
  v72 = a6;
  v15 = a6;
  v50 = a6;
  v51 = a8;
  v73 = a8;
  v74 = a10;
  v48 = a10;
  v47 = type metadata accessor for SubscriptionStoreMainContainerContent(255, &v71);
  swift_getTupleTypeMetadata2();
  v16 = sub_23BBDC3D8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v18 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v71 = v17;
  v72 = v14;
  v73 = v15;
  v74 = v18;
  v75 = a8;
  v76 = a10;
  type metadata accessor for StoreContentNavigation(255, &v71);
  v19 = sub_23BBDD648();
  WitnessTable = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v71 = v16;
  v72 = v19;
  v73 = WitnessTable;
  v74 = v21;
  type metadata accessor for BottomContentContainer(255, &v71);
  v22 = sub_23BBDD648();
  v23 = sub_23BBDD648();
  v69 = WitnessTable;
  v24 = swift_getWitnessTable();
  v71 = v23;
  v72 = v19;
  v73 = v24;
  v74 = v21;
  type metadata accessor for MagicPocketContainer(255, &v71);
  v25 = sub_23BBDD648();
  v67 = swift_getWitnessTable();
  v68 = sub_23BAF69D4();
  v26 = v46;
  v65 = swift_getWitnessTable();
  v66 = v46;
  v27 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v71 = v45;
  v72 = v22;
  v73 = v25;
  v74 = v27;
  v75 = v28;
  v76 = v29;
  type metadata accessor for SubscriptionStoreStructuredScrollView(255, &v71);
  v30 = v47;
  sub_23BBDA358();
  sub_23BBDA358();
  v31 = swift_getWitnessTable();
  v61 = v31;
  v62 = sub_23B97AD88();
  v59 = swift_getWitnessTable();
  v60 = sub_23BA3D77C();
  swift_getWitnessTable();
  sub_23BBDACB8();
  v32 = sub_23BBDA358();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v44 - v37;
  v71 = v52;
  v72 = v49;
  v73 = v50;
  v74 = v26;
  v75 = v51;
  v76 = v48;
  v39 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v71);
  sub_23BAE9D44(v53, v54, v39, v30, v31, v35);
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v57 = v40;
  v58 = v41;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v42 = *(v33 + 8);
  v42(v35, v32);
  sub_23B9D2D88();
  return (v42)(v38, v32);
}

uint64_t sub_23BAE9D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v105 = a4;
  v97 = a5;
  v99 = a2;
  v102 = a1;
  v103 = a6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0060, &qword_23BBFA880);
  v100 = sub_23B9A8CB4(&qword_27E1A0068, &qword_27E1A0060, &qword_23BBFA880, MEMORY[0x277D84298]);
  v7 = *(a3 + 16);
  v88 = *(a3 + 40);
  *v141 = v7;
  *&v141[8] = v101;
  v8 = v7;
  *&v141[16] = v88;
  *&v141[24] = v100;
  type metadata accessor for CombinedMarketingContent(255, v141);
  sub_23BBDA358();
  v9 = v8;
  v96 = v8;
  v104 = sub_23BBDACE8();
  MEMORY[0x28223BE20](v104);
  v98 = &v73[-v10];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  swift_getTupleTypeMetadata2();
  v11 = sub_23BBDC3D8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v13 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v92 = a3;
  v14 = *(a3 + 48);
  v94 = *(a3 + 56);
  v95 = v14;
  *v141 = v12;
  *&v141[24] = v13;
  v142 = v14;
  v143 = v94;
  v15.i64[0] = v9;
  v93 = v15;
  v107 = *(a3 + 24);
  *&v141[8] = v107;
  type metadata accessor for StoreContentNavigation(255, v141);
  v16 = sub_23BBDD648();
  WitnessTable = swift_getWitnessTable();
  v140[16] = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *v141 = v11;
  *&v141[8] = v16;
  *&v141[16] = WitnessTable;
  *&v141[24] = v18;
  type metadata accessor for BottomContentContainer(255, v141);
  v19 = sub_23BBDD648();
  v20 = sub_23BBDD648();
  v140[15] = WitnessTable;
  v21 = swift_getWitnessTable();
  *v141 = v20;
  *&v141[8] = v16;
  *&v141[16] = v21;
  *&v141[24] = v18;
  type metadata accessor for MagicPocketContainer(255, v141);
  v22 = sub_23BBDD648();
  v23 = swift_getWitnessTable();
  v24 = sub_23BAF69D4();
  v140[13] = v23;
  v140[14] = v24;
  v25 = MEMORY[0x277CDFAD8];
  v26 = swift_getWitnessTable();
  v27 = v88;
  v140[11] = v26;
  v140[12] = v88;
  v28 = v104;
  v29 = swift_getWitnessTable();
  v83 = v29;
  v140[10] = swift_getWitnessTable();
  v85 = v19;
  v30 = swift_getWitnessTable();
  v82 = v30;
  v140[9] = swift_getWitnessTable();
  v84 = v22;
  v80 = swift_getWitnessTable();
  *v141 = v28;
  *&v141[8] = v19;
  *&v141[16] = v22;
  *&v141[24] = v29;
  v142 = v30;
  v143 = v80;
  v75 = type metadata accessor for SubscriptionStoreStructuredScrollView(0, v141);
  v91 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v79 = &v73[-v31];
  sub_23BBDA358();
  v32 = sub_23BBDA358();
  v33 = sub_23B97AD88();
  v34 = v97;
  v140[7] = v97;
  v140[8] = v33;
  v90 = v25;
  v35 = swift_getWitnessTable();
  v36 = sub_23BA3D77C();
  v140[5] = v35;
  v140[6] = v36;
  v77 = v32;
  v78 = swift_getWitnessTable();
  v86 = sub_23BBDACB8();
  v87 = sub_23BBDA358();
  v89 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v76 = &v73[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v81 = &v73[-v39];
  sub_23B9AF0F0(v99, v140);
  v40 = v92;
  v41 = v106;
  v42 = (v106 + *(v92 + 84));
  v43 = *v42;
  v44 = *(v42 + 1);
  v141[0] = v43;
  *&v141[8] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0130, &qword_23BBFA978);
  sub_23BBDBF68();
  v74 = v139;
  *&v45 = vdupq_laneq_s64(v107, 1).u64[0];
  v46 = v27;
  *(&v45 + 1) = v27;
  *&v141[16] = v45;
  *v141 = vzip1q_s64(v93, v107);
  v48 = v94;
  v47 = v95;
  v142 = v95;
  v143 = v94;
  type metadata accessor for SubscriptionStoreStaticViewContainer.PlacementProperties(0, v141);
  v49 = sub_23BAEDB28();
  v50 = v98;
  sub_23BAEB680(v51, v40, v101, v100, v98);
  v101 = v73;
  v127 = v96;
  v128 = v107;
  v52 = v105;
  v129 = v105;
  v53 = v46;
  v130 = v46;
  v54 = v47;
  v131 = v47;
  v55 = v48;
  v132 = v48;
  v133 = v34;
  v134 = v140;
  v56 = v41;
  v135 = v41;
  v57 = v102;
  v136 = v102;
  v117 = v96;
  v58 = v96;
  v118 = v107;
  v119 = v105;
  v120 = v53;
  v59 = v53;
  v121 = v54;
  v122 = v55;
  v123 = v34;
  v124 = v140;
  v60 = v34;
  v125 = v56;
  v126 = v102;
  *(&v72 + 1) = v82;
  *&v72 = v83;
  *(&v71 + 1) = v84;
  *&v71 = v85;
  v61 = v79;
  sub_23BAF0478(v74 & 1, 2, v50, sub_23BAF7834, sub_23BAF784C, v104, v79, v49, v71, v72, v80);
  v108 = v58;
  v109 = v107;
  v110 = v52;
  v111 = v59;
  v112 = v54;
  v113 = v55;
  v114 = v60;
  v115 = v57;
  v116 = v106;
  v62 = v75;
  v63 = swift_getWitnessTable();
  sub_23B9C2924(v64);
  v65 = v76;
  sub_23BBDB6B8();
  (*(v91 + 8))(v61, v62);
  v66 = swift_getWitnessTable();
  v137 = v63;
  v138 = v66;
  v67 = v87;
  swift_getWitnessTable();
  v68 = v81;
  sub_23B9D2D88();
  v69 = *(v89 + 8);
  v69(v65, v67);
  sub_23B9D2D88();
  v69(v68, v67);
  return sub_23B97B104(v140);
}

uint64_t sub_23BAEA60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v44 = a7;
  v52 = a5;
  v53 = a6;
  v47 = a4;
  v49 = a3;
  v48 = a2;
  v50 = a1;
  v51 = a9;
  v65 = a5;
  v66 = a6;
  v67 = a8;
  v68 = a10;
  v46 = a8;
  v45 = type metadata accessor for SubscriptionStoreMainContainerContent(255, &v65);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0080, &qword_23BBFA898);
  v14 = sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080, &qword_23BBFA898, MEMORY[0x277D83980]);
  v65 = a4;
  v66 = v13;
  v67 = a7;
  v68 = v14;
  type metadata accessor for CombinedMarketingContent(255, &v65);
  sub_23BBDA358();
  v43 = sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090, &qword_23BBFA8A0);
  sub_23BBDACE8();
  swift_getTupleTypeMetadata2();
  v15 = sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098, &qword_23BBFA8A8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v17 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v65 = v16;
  v66 = v52;
  v67 = v53;
  v68 = v17;
  v69 = a8;
  v70 = a10;
  type metadata accessor for StoreContentNavigation(255, &v65);
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v18 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v65 = v15;
  v66 = v18;
  v67 = WitnessTable;
  v68 = v20;
  type metadata accessor for BottomContentContainer(255, &v65);
  v21 = sub_23BBDD648();
  v22 = sub_23BBDACE8();
  v63 = sub_23BAF6A40();
  v64 = WitnessTable;
  v23 = swift_getWitnessTable();
  v65 = v22;
  v66 = v18;
  v67 = v23;
  v68 = v20;
  type metadata accessor for MagicPocketContainer(255, &v65);
  v24 = sub_23BBDD648();
  v61 = swift_getWitnessTable();
  v62 = sub_23BAF69D4();
  v25 = v44;
  v59 = swift_getWitnessTable();
  v60 = v44;
  v26 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v65 = v43;
  v66 = v21;
  v67 = v24;
  v68 = v26;
  v69 = v27;
  v70 = v28;
  type metadata accessor for SubscriptionStoreStructuredScrollView(255, &v65);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00A8, &unk_23BBFA8B0);
  v29 = sub_23BBDA358();
  v30 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v56 = sub_23B9A8CB4(&qword_27E1A00B0, &qword_27E1A00A8, &unk_23BBFA8B0, MEMORY[0x277CE08A0]);
  v31 = swift_getWitnessTable();
  v65 = v45;
  v66 = v29;
  v67 = v30;
  v68 = v31;
  sub_23BBDAEC8();
  v32 = sub_23BBDBE28();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v42 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v42 - v37;
  v65 = v47;
  v66 = v52;
  v67 = v53;
  v68 = v25;
  v69 = v46;
  v70 = a10;
  v39 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v65);
  sub_23BAEAC78(v48, v49, v39, v30, v35);
  v54 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v40 = *(v33 + 8);
  v40(v35, v32);
  sub_23B9D2D88();
  return (v40)(v38, v32);
}

uint64_t sub_23BAEAC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a5;
  v80 = a2;
  v76 = a1;
  v83 = a6;
  v89 = *(a3 - 8);
  v81 = *(v89 + 64);
  MEMORY[0x28223BE20](a1);
  v78 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v8;
  v75 = *(v8 - 8);
  v79 = *(v75 + 64);
  MEMORY[0x28223BE20](v9);
  v77 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0080, &qword_23BBFA898);
  v14 = sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080, &qword_23BBFA898, MEMORY[0x277D83980]);
  v16 = *(a3 + 40);
  *v105 = *(a3 + 16);
  v15 = *v105;
  *&v105[8] = v13;
  *&v105[16] = v16;
  *&v105[24] = v14;
  v84 = v16;
  type metadata accessor for CombinedMarketingContent(255, v105);
  v70 = sub_23BBDA358();
  v74 = v15;
  v71 = sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090, &qword_23BBFA8A0);
  sub_23BBDACE8();
  swift_getTupleTypeMetadata2();
  v17 = sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098, &qword_23BBFA8A8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v19 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v88 = a3;
  v87 = *(a3 + 48);
  v86 = *(a3 + 56);
  *v105 = v18;
  *&v105[24] = v19;
  *&v105[32] = v87;
  *&v105[40] = v86;
  v20.i64[0] = v15;
  v72 = v20;
  v85 = *(a3 + 24);
  *&v105[8] = v85;
  type metadata accessor for StoreContentNavigation(255, v105);
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v21 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  *v105 = v17;
  *&v105[8] = v21;
  *&v105[16] = WitnessTable;
  *&v105[24] = v23;
  type metadata accessor for BottomContentContainer(255, v105);
  v24 = sub_23BBDD648();
  v25 = sub_23BBDACE8();
  v103 = sub_23BAF6A40();
  v104 = WitnessTable;
  v26 = swift_getWitnessTable();
  *v105 = v25;
  *&v105[8] = v21;
  *&v105[16] = v26;
  *&v105[24] = v23;
  type metadata accessor for MagicPocketContainer(255, v105);
  v27 = sub_23BBDD648();
  v28 = swift_getWitnessTable();
  v29 = sub_23BAF69D4();
  v101 = v28;
  v102 = v29;
  v99 = swift_getWitnessTable();
  v100 = v16;
  v30 = v71;
  v31 = swift_getWitnessTable();
  v98 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v97 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  *v105 = v30;
  *&v105[8] = v24;
  *&v105[16] = v27;
  *&v105[24] = v31;
  *&v105[32] = v32;
  *&v105[40] = v33;
  type metadata accessor for SubscriptionStoreStructuredScrollView(255, v105);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00A8, &unk_23BBFA8B0);
  v34 = sub_23BBDA358();
  v35 = swift_getWitnessTable();
  v36 = sub_23B9A8CB4(&qword_27E1A00B0, &qword_27E1A00A8, &unk_23BBFA8B0, MEMORY[0x277CE08A0]);
  v95 = v35;
  v96 = v36;
  v70 = v34;
  v69 = swift_getWitnessTable();
  v37 = v73;
  *v105 = v73;
  *&v105[8] = v34;
  *&v105[16] = v90;
  *&v105[24] = v69;
  v68 = sub_23BBDAEC8();
  v71 = sub_23BBDBE28();
  v38 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = &v66 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v40);
  v67 = &v66 - v42;
  v43 = v75;
  v44 = *(v75 + 16);
  v45 = v76;
  v44(v91, v76, v37, v41);
  *&v46 = vdupq_laneq_s64(v85, 1).u64[0];
  *(&v46 + 1) = v84;
  *&v105[16] = v46;
  *v105 = vzip1q_s64(v72, v85);
  *&v105[32] = v87;
  *&v105[40] = v86;
  v47 = type metadata accessor for SubscriptionStoreStaticViewContainer.PlacementProperties(0, v105);
  v48 = v80;
  (*(*(v47 - 8) + 16))(v105, v80, v47);
  v49 = v89;
  v50 = v78;
  (*(v89 + 16))(v78, v82, v88);
  sub_23B9AF0F0(v48, v93);
  v51 = v77;
  (v44)(v77, v45, v37);
  v52 = (*(v49 + 80) + 121) & ~*(v49 + 80);
  v53 = (v81 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (*(v43 + 80) + v53 + 40) & ~*(v43 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v74;
  *(v55 + 24) = v85;
  v56 = v84;
  *(v55 + 40) = v37;
  *(v55 + 48) = v56;
  v57 = v86;
  *(v55 + 56) = v87;
  *(v55 + 64) = v57;
  *(v55 + 72) = v90;
  v58 = *&v105[16];
  *(v55 + 80) = *v105;
  *(v55 + 96) = v58;
  *(v55 + 105) = *&v105[25];
  (*(v89 + 32))(v55 + v52, v50, v88);
  v59 = v55 + v53;
  v60 = v93[1];
  *v59 = v93[0];
  *(v59 + 16) = v60;
  *(v59 + 32) = v94;
  (*(v43 + 32))(v55 + v54, v51, v37);
  v61 = v66;
  sub_23BBDBE08();
  v92 = swift_getWitnessTable();
  v62 = v71;
  swift_getWitnessTable();
  v63 = v67;
  sub_23B9D2D88();
  v64 = *(v38 + 8);
  v64(v61, v62);
  sub_23B9D2D88();
  return (v64)(v63, v62);
}

uint64_t sub_23BAEB680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a1;
  v65 = a5;
  v55 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v59 = *(v11 - 8);
  MEMORY[0x28223BE20](v12);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v51 - v17;
  v19 = *(a2 + 40);
  v74[0] = v11;
  v74[1] = a3;
  v64 = v19;
  v74[2] = v19;
  v74[3] = a4;
  v57 = a4;
  v20 = type metadata accessor for CombinedMarketingContent(0, v74);
  v53 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  v63 = v23;
  v24 = sub_23BBDA358();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v51 - v29;
  v31 = sub_23BBDACE8();
  v61 = *(v31 - 8);
  v62 = v31;
  MEMORY[0x28223BE20](v31);
  v60 = &v51 - v32;
  if (*(v5 + *(a2 + 72)))
  {
    sub_23BAE7758(a2, v18);
    v33 = v58;
    (*(v59 + 16))(v58, v5, v11);
    v34 = v54;
    (*(v55 + 16))(v54, v56, a3);
    v35 = v18;
    v36 = v64;
    sub_23BABD26C(v35, v33, v34, v11, a3, v64, v57, v22);
    v37 = v63;
    WitnessTable = swift_getWitnessTable();
    sub_23B97AB10(1, v37, WitnessTable);
    (*(v53 + 8))(v22, v37);
    v39 = sub_23BAF69D4();
    v66 = WitnessTable;
    v67 = v39;
    swift_getWitnessTable();
    sub_23B9D2D88();
    v40 = *(v25 + 8);
    v40(v27, v24);
    sub_23B9D2D88();
    v41 = v60;
    sub_23BA82D64();
    v40(v27, v24);
    v40(v30, v24);
  }

  else
  {
    v42 = v58;
    v36 = v64;
    sub_23B9D2D88();
    v43 = v52;
    sub_23B9D2D88();
    v44 = swift_getWitnessTable();
    v45 = sub_23BAF69D4();
    v72 = v44;
    v73 = v45;
    swift_getWitnessTable();
    v41 = v60;
    sub_23BA82E14();
    v46 = *(v59 + 8);
    v46(v43, v11);
    v46(v42, v11);
  }

  v47 = swift_getWitnessTable();
  v48 = sub_23BAF69D4();
  v70 = v47;
  v71 = v48;
  v68 = swift_getWitnessTable();
  v69 = v36;
  v49 = v62;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v61 + 8))(v41, v49);
}

double sub_23BAEBD04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 72));
  if (v4)
  {

    if (sub_23BAE7588(a1))
    {
      sub_23BAE753C();
      sub_23BAAFC80(v4, v9, v10);
      v6 = v10[1];
      *a2 = v10[0];
      *(a2 + 16) = v6;
      result = *&v11;
      v8 = v12;
      *(a2 + 32) = v11;
      *(a2 + 48) = v8;
      return result;
    }
  }

  *a2 = 1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_23BAEBDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = *(a1 + 48);
  v38 = *(a1 + 24);
  v39 = v4;
  *&v41[16] = v4;
  *v41 = v38;
  v34 = type metadata accessor for SubscriptionStoreContainerContext(0, v41);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v7 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v31 = v6;
  *v41 = v6;
  *&v41[8] = v38;
  *&v41[24] = v7;
  v42 = v39;
  v8 = type metadata accessor for StoreContentNavigation(0, v41);
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v36 = &v30 - v12;
  v13 = sub_23BBDD648();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v20 = *(v2 + *(a1 + 72));
  if (v20 && *(v20 + 16) >= 2uLL)
  {

    if (!sub_23BAE7588(a1))
    {
      *v41 = sub_23BAE5A7C(1, v20);
      *&v41[8] = v23;
      *&v41[16] = v24;
      *&v41[24] = v25;
      v26 = v2 + *(a1 + 68);
      v27 = v33;
      (*(v32 + 16))(v33, v26, v34);
      sub_23BAB6FF0(v41, v27, v31, v38, *(&v38 + 1), v7, v39, *(&v39 + 1), v10);
      swift_getWitnessTable();
      sub_23B9D2D88();
      v28 = v35;
      *&v39 = *(v35 + 8);
      (v39)(v10, v8);
      v29 = v36;
      sub_23B9D2D88();
      (v39)(v29, v8);
      (*(v28 + 32))(v16, v10, v8);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v8);
      goto LABEL_6;
    }
  }

  __swift_storeEnumTagSinglePayload(v16, 1, 1, v8);
  swift_getWitnessTable();
LABEL_6:
  sub_23BB2F9F4(v16, v8);
  v21 = *(v14 + 8);
  v21(v16, v13);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v21)(v19, v13);
}

uint64_t sub_23BAEC254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v96 = a8;
  v95 = a7;
  v90 = a5;
  v88 = a4;
  v89 = a3;
  v69 = a2;
  v81 = a1;
  v91 = a9;
  v87 = a14;
  v70 = a11;
  v100 = a6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0080, &qword_23BBFA898);
  v83 = v101;
  v102 = a11;
  v103 = sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080, &qword_23BBFA898, MEMORY[0x277D83980]);
  v82 = v103;
  type metadata accessor for CombinedMarketingContent(255, &v100);
  sub_23BBDA358();
  v94 = a6;
  v15 = sub_23BBDACE8();
  MEMORY[0x28223BE20](v15);
  v84 = &v69 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090, &qword_23BBFA8A0);
  v86 = a10;
  sub_23BBDACE8();
  swift_getTupleTypeMetadata2();
  v17 = sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098, &qword_23BBFA8A8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v19 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v100 = v18;
  v101 = v95;
  v102 = v96;
  v103 = v19;
  v92 = a12;
  v104 = a12;
  v105 = a13;
  v93 = a13;
  type metadata accessor for StoreContentNavigation(255, &v100);
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v20 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v100 = v17;
  v101 = v20;
  v102 = WitnessTable;
  v103 = v22;
  type metadata accessor for BottomContentContainer(255, &v100);
  v23 = sub_23BBDD648();
  v24 = sub_23BBDACE8();
  v99[7] = sub_23BAF6A40();
  v99[8] = WitnessTable;
  v25 = swift_getWitnessTable();
  v100 = v24;
  v101 = v20;
  v26 = v70;
  v102 = v25;
  v103 = v22;
  type metadata accessor for MagicPocketContainer(255, &v100);
  v27 = sub_23BBDD648();
  v28 = swift_getWitnessTable();
  v29 = sub_23BAF69D4();
  v99[5] = v28;
  v99[6] = v29;
  v99[3] = swift_getWitnessTable();
  v99[4] = v26;
  v30 = swift_getWitnessTable();
  v99[2] = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v99[1] = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v85 = v15;
  v100 = v15;
  v101 = v23;
  v80 = v23;
  v79 = v27;
  v102 = v27;
  v103 = v30;
  v73 = v30;
  v72 = v31;
  v104 = v31;
  v105 = v32;
  v71 = v32;
  v33 = type metadata accessor for SubscriptionStoreStructuredScrollView(0, &v100);
  v77 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v74 = &v69 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00A8, &unk_23BBFA8B0);
  v35 = sub_23BBDA358();
  v78 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v75 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v76 = &v69 - v38;
  v39 = sub_23BBDAA98();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v69 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v42, v81, v40);
  sub_23BAECCBC(v42, &v106);
  v44 = 0.0;
  if ((BYTE1(v106) & 1) == 0)
  {
    v100 = v94;
    v101 = v95;
    v102 = v96;
    v103 = v26;
    v104 = v92;
    v105 = v93;
    type metadata accessor for SubscriptionStoreStaticViewContainer.PlacementProperties(0, &v100);
    v44 = sub_23BAEDB28();
  }

  LODWORD(v69) = (v107[24] == 2) | v107[24];
  LODWORD(v81) = v106;
  v99[0] = *(&v106 + 1);
  v45 = v94;
  v46 = v95;
  v100 = v94;
  v101 = v95;
  v47 = v96;
  v102 = v96;
  v103 = v26;
  v48 = v92;
  v104 = v92;
  v105 = v93;
  v49 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v100);
  v50 = v84;
  v51 = sub_23BAEB680(v99, v49, v83, v82, v84);
  MEMORY[0x28223BE20](v51);
  *(&v69 - 12) = v45;
  *(&v69 - 11) = v46;
  v52 = v86;
  *(&v69 - 10) = v47;
  *(&v69 - 9) = v52;
  *(&v69 - 8) = v53;
  *(&v69 - 7) = v48;
  MEMORY[0x28223BE20](v52);
  *(&v69 - 12) = v45;
  *(&v69 - 11) = v46;
  *(&v69 - 10) = v47;
  *(&v69 - 9) = v54;
  *(&v69 - 8) = v55;
  *(&v69 - 7) = v48;
  v68 = v56;
  *(&v67 + 1) = v72;
  *&v67 = v73;
  *(&v66 + 1) = v79;
  *&v66 = v80;
  v57 = v74;
  sub_23BAF0478(v81, v69 & 1, v50, sub_23BAF6FE4, sub_23BAF6FFC, v85, v74, v44, v66, v67, v71);
  swift_getKeyPath();
  v58 = swift_allocObject();
  v59 = *v107;
  v58[1] = v106;
  v58[2] = v59;
  *(v58 + 41) = *&v107[9];
  v60 = swift_getWitnessTable();
  v61 = v75;
  sub_23BBDB9B8();

  (*(v77 + 8))(v57, v33);
  v62 = sub_23B9A8CB4(&qword_27E1A00B0, &qword_27E1A00A8, &unk_23BBFA8B0, MEMORY[0x277CE08A0]);
  v97 = v60;
  v98 = v62;
  swift_getWitnessTable();
  v63 = v76;
  sub_23B9D2D88();
  v64 = *(v78 + 8);
  v64(v61, v35);
  sub_23B9D2D88();
  return (v64)(v63, v35);
}

uint64_t sub_23BAECCBC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E0, &qword_23BBFA930);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = v100 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E8, &qword_23BBFA938);
  MEMORY[0x28223BE20](v115);
  v111 = v100 - v5;
  v127 = sub_23BBDA288();
  v6 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v102 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = v100 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v100 - v11;
  v130 = sub_23BBDC208();
  v13 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v113 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v100[0] = v100 - v16;
  MEMORY[0x28223BE20](v17);
  v112 = v100 - v18;
  MEMORY[0x28223BE20](v19);
  v123 = v100 - v20;
  MEMORY[0x28223BE20](v21);
  v118 = v100 - v22;
  MEMORY[0x28223BE20](v23);
  v117 = v100 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v100 - v26;
  v28 = sub_23BBDAA98();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0, &qword_23BBFA940);
  MEMORY[0x28223BE20](v32);
  v120 = v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = v100 - v36;
  v122 = v29;
  v38 = *(v29 + 16);
  v114 = a1;
  v124 = (v29 + 16);
  i = v38;
  (v38)(v31, a1, v28, v35);
  v39 = MEMORY[0x277CE0150];
  v40 = sub_23BAF9FDC(&qword_27E1A00F8, MEMORY[0x277CE0150], MEMORY[0x277CE0160]);
  v107 = v31;
  v100[1] = v40;
  sub_23BBDD188();
  v101 = v32;
  v41 = *(v32 + 36);
  sub_23BAF9FDC(&qword_27E1984F8, v39, MEMORY[0x277CE0170]);
  v128 = (v13 + 16);
  v129 = v28;
  v121 = v13;
  v125 = (v13 + 8);
  v126 = (v6 + 8);
  v42 = v28;
  do
  {
    sub_23BBDD4A8();
    v43 = *&v37[v41];
    v44 = v131;
    if (v43 == v131)
    {
      break;
    }

    v45 = sub_23BBDD558();
    v46 = v130;
    (*v128)(v27);
    v45(&v131, 0);
    sub_23BBDD4B8();
    sub_23BBDC1D8();
    sub_23BAF72E8();
    sub_23BBDA298();
    (*v126)(v12, v127);
    v47 = v46;
    v42 = v129;
    (*v125)(v27, v47);
  }

  while (v131 == 2);
  sub_23B9A8E20(v37, &qword_27E1A00F0);
  v133 = v43 != v44;
  v48 = v108;
  v49 = v114;
  (i)(v108, v114, v42);
  v106 = *(v122 + 32);
  v50 = v111;
  (v106)(v111, v48, v42);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0108, &qword_23BBFA948);
  v51 = (v50 + *(v105 + 44));
  *v51 = sub_23BAF24D8;
  v51[1] = 0;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0110, &unk_23BBFA950);
  v52 = (v50 + *(v104 + 36));
  v103 = sub_23BAF77FC;
  *v52 = sub_23BAF77FC;
  v52[1] = 0;
  v53 = (v50 + *(v115 + 44));
  *v53 = sub_23BAF7804;
  v53[1] = 0;
  v109 = sub_23BAE5B10(2u, v50);
  sub_23B9A8E20(v50, &qword_27E1A00E8);
  (i)(v48, v49, v42);
  (v106)(v50, v48, v42);
  v54 = (v50 + *(v105 + 44));
  *v54 = sub_23BAF2608;
  v54[1] = 0;
  v55 = (v50 + *(v104 + 36));
  *v55 = v103;
  v55[1] = 0;
  v56 = (v50 + *(v115 + 44));
  *v56 = sub_23BAF7804;
  v56[1] = 0;
  LOBYTE(v48) = sub_23BAE6168(0, v50);
  sub_23B9A8E20(v50, &qword_27E1A00E8);
  v132 = v48 & 1;
  v57 = v107;
  (i)(v107, v49, v42);
  if (v43 != v44)
  {
    v58 = v120;
    sub_23BBDD188();
    v124 = (v121 + 32);
    v59 = MEMORY[0x277D84F90];
    v60 = 1;
    v61 = *(v101 + 36);
    v105 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v62 = v122;
    for (i = v61; ; v61 = i)
    {
      sub_23BBDD4A8();
      if (*&v61[v58] == v131)
      {
        (*(v62 + 8))(v114, v42);
        result = sub_23B9A8E20(v58, &qword_27E1A00F0);
        v93 = v111;
        v95 = v107;
        v97 = v106;
        goto LABEL_40;
      }

      v63 = sub_23BBDD558();
      v64 = *v128;
      (*v128)(v117);
      v63(&v131, 0);
      sub_23BBDD4B8();
      v65 = *v124;
      v66 = v118;
      (*v124)();
      v67 = v119;
      sub_23BBDC1D8();
      sub_23BAC3448();
      sub_23BBDA298();
      v68 = *v126;
      (*v126)(v67, v127);
      if ((v60 & 1) == 0)
      {
        break;
      }

      if (v131 == 2)
      {
        goto LABEL_18;
      }

      if ((v131 & 1) == 0)
      {
        goto LABEL_29;
      }

      (v64)(v123, v66, v130);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v122;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23B9B83DC();
        v59 = v85;
      }

      v70 = *(v59 + 16);
      if (v70 >= *(v59 + 24) >> 1)
      {
        sub_23B9B83DC();
        v59 = v86;
      }

      v71 = v121;
      v72 = v66;
      v73 = v130;
      (*(v121 + 8))(v72, v130);
      *(v59 + 16) = v70 + 1;
      (v65)(v59 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v70, v123, v73);
      v60 = 1;
      v42 = v129;
LABEL_15:
      v58 = v120;
    }

    if (v131 == 2 || (v131 & 1) != 0)
    {
LABEL_18:
      v74 = v102;
      sub_23BBDC1D8();
      sub_23BAF72E8();
      sub_23BBDA298();
      v68(v74, v127);
      if (v131 == 2 || (v131 & 1) == 0)
      {
        (v64)(v113, v66, v130);
        v75 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B9B83DC();
          v75 = v87;
        }

        v77 = *(v75 + 2);
        v80 = *(v75 + 3);
        v115 = v77 + 1;
        if (v77 < v80 >> 1)
        {
          v78 = v113;
          v107 = v75;
          v79 = &v134;
          goto LABEL_28;
        }

        sub_23B9B83DC();
        v75 = v88;
        v78 = v113;
        v107 = v88;
        v89 = &v134;
      }

      else
      {
        (v64)(v100[0], v66, v130);
        v75 = v105;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B9B83DC();
          v75 = v91;
        }

        v77 = *(v75 + 2);
        v76 = *(v75 + 3);
        v115 = v77 + 1;
        if (v77 < v76 >> 1)
        {
          v78 = v100[0];
          v106 = v75;
          v79 = &v133;
LABEL_28:
          *(v79 - 32) = v75;
LABEL_33:
          v82 = v121;
          v83 = v66;
          v84 = v130;
          (*(v121 + 8))(v83, v130);
          *(v75 + 2) = v115;
          (v65)(&v75[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v77], v78, v84);
          v60 = 0;
          v42 = v129;
          v62 = v122;
          goto LABEL_15;
        }

        sub_23B9B83DC();
        v75 = v88;
        v78 = v100[0];
        v106 = v88;
        v89 = &v133;
      }
    }

    else
    {
LABEL_29:
      (v64)(v112, v66, v130);
      v75 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23B9B83DC();
        v75 = v90;
      }

      v77 = *(v75 + 2);
      v81 = *(v75 + 3);
      v115 = v77 + 1;
      if (v77 < v81 >> 1)
      {
        v111 = v75;
        v78 = v112;
        goto LABEL_33;
      }

      sub_23B9B83DC();
      v75 = v88;
      v78 = v112;
      v89 = &v135;
    }

    *(v89 - 32) = v88;
    goto LABEL_33;
  }

  v59 = sub_23BAE6CEC(v57);
  v93 = v92;
  v95 = v94;
  result = (*(v122 + 8))(v49, v42);
  v97 = MEMORY[0x277D84F90];
LABEL_40:
  v98 = v132;
  v99 = v110;
  *v110 = v133;
  v99[1] = v98;
  *(v99 + 1) = v59;
  *(v99 + 2) = v93;
  *(v99 + 3) = v95;
  *(v99 + 4) = v97;
  v99[40] = v109;
  return result;
}

double sub_23BAEDB28()
{
  v0 = sub_23BAF21C8();
  result = 0.0;
  if (v0)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_23BAEDB50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v74 = a4;
  v75 = a2;
  v69 = a3;
  v73 = a1;
  v76 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090, &qword_23BBFA8A0);
  v70 = a7;
  sub_23BBDACE8();
  swift_getTupleTypeMetadata2();
  v15 = sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098, &qword_23BBFA8A8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v79 = a5;
  v16 = a5;
  v67 = a6;
  v80 = a6;
  v81 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v71 = a10;
  v72 = a11;
  v82 = a10;
  v83 = a11;
  type metadata accessor for StoreContentNavigation(255, &v78);
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v17 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v68 = v15;
  v78 = v15;
  v79 = v17;
  v63 = v17;
  v62 = WitnessTable;
  v80 = WitnessTable;
  v81 = v19;
  v61 = v19;
  v20 = type metadata accessor for BottomContentContainer(0, &v78);
  v66 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v65 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v64 = &v53 - v23;
  v24 = sub_23BBDD648();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v53 - v29;
  v31 = v73;
  if (sub_23BAEE1D0(v73))
  {
    v55 = a12;
    v54 = a9;
    v78 = v74;
    v79 = v16;
    v58 = v30;
    v32 = v67;
    v80 = v67;
    v81 = a9;
    v60 = v24;
    v33 = v71;
    v59 = v25;
    v34 = v72;
    v82 = v71;
    v83 = v72;
    v35 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v78);
    v36 = v75 + *(v35 + 68);
    v78 = v16;
    v79 = v32;
    v80 = v33;
    v81 = v34;
    v56 = *(v36 + *(type metadata accessor for SubscriptionStoreContainerContext(0, &v78) + 56));
    v37 = sub_23B9AF0F0(v31, &v78);
    v57 = &v53;
    MEMORY[0x28223BE20](v37);
    *(&v53 - 12) = v74;
    *(&v53 - 11) = v16;
    v38 = v70;
    *(&v53 - 10) = v32;
    *(&v53 - 9) = v38;
    *(&v53 - 8) = v54;
    *(&v53 - 7) = v33;
    MEMORY[0x28223BE20](v38);
    *(&v53 - 10) = v39;
    *(&v53 - 9) = v16;
    *(&v53 - 8) = v32;
    *(&v53 - 7) = v40;
    v24 = v60;
    v25 = v59;
    v52 = v41;
    *(&v51 + 1) = v63;
    *&v51 = v68;
    v42 = v65;
    sub_23BAEEBE0(v56, &v78, v43, v44, v45, sub_23BAF727C, sub_23BAF72A0, v65, (&v53 - 12), v51, v62, v61);
    swift_getWitnessTable();
    v46 = v64;
    sub_23B9D2D88();
    v47 = v66;
    v48 = *(v66 + 8);
    v48(v42, v20);
    sub_23B9D2D88();
    v48(v46, v20);
    v30 = v58;
    (*(v47 + 32))(v27, v42, v20);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v20);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v20);
    swift_getWitnessTable();
  }

  sub_23BB2F9F4(v27, v20);
  v49 = *(v25 + 8);
  v49(v27, v24);
  v77 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v49)(v30, v24);
}

uint64_t sub_23BAEE1D0(uint64_t a1)
{
  memset(v6, 0, 40);
  v3 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(a1, v6);
  sub_23B97B104(v6);
  if (v3)
  {
    v4 = 1;
  }

  else if (*v1)
  {
    memset(v6, 0, 24);
    *(&v6[1] + 8) = xmmword_23BBE7BC0;
    v4 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(a1, v6);
    sub_23B97B104(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_23BAEE26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v52[1] = a4;
  v60 = a1;
  v67 = a9;
  v66 = a12;
  v55 = *(a8 - 8);
  v59 = a10;
  MEMORY[0x28223BE20](a1);
  v54 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v53 = v52 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0098, &qword_23BBFA8A8);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v22 = v52 - v21;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00B8, &qword_23BBFA918);
  MEMORY[0x28223BE20](v57);
  v24 = v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0090, &qword_23BBFA8A0);
  MEMORY[0x28223BE20](v25);
  v27 = v52 - v26;
  v62 = v28;
  v65 = a8;
  v29 = sub_23BBDACE8();
  v61 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v64 = v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v63 = v52 - v32;
  v76[0] = a5;
  v76[1] = a6;
  v76[2] = a7;
  v77 = v59;
  v78 = a11;
  v33 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, v76);
  sub_23BAEBD04(v33, v76);
  if (*a2)
  {
    v34 = *(a2 + 24);
    v74 = 0;
    memset(v73, 0, sizeof(v73));

    v35 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(a3, v73);
    v36 = sub_23B97B104(v73);
    v37 = 0;
    if (v35)
    {
      v37 = *(a2 + 32);
    }

    MEMORY[0x28223BE20](v36);
    v38 = sub_23BAEEB5C(sub_23BAF72DC);
    *v24 = v34;
    *(v24 + 1) = v37;
    v24[16] = v38 & 1;
    *(v24 + 3) = 0;
    v24[32] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00C0, &unk_23BBFA920);
    sub_23B9A8CB4(&qword_27E1A00C8, &qword_27E1A00C0, &unk_23BBFA920, &unk_23BBFAB64);
    sub_23BAF6A40();
    sub_23BBDACD8();
    sub_23BAF712C();
    v39 = v63;
    v40 = v66;
    sub_23BA82D64();
    sub_23B9A8E20(v27, &qword_27E1A0090);
  }

  else if (*(*(a2 + 8) + 16) || *(*(a2 + 16) + 16))
  {
    *&v73[0] = *(a2 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0080, &qword_23BBFA898);
    sub_23BBDC1E8();
    sub_23BBDC208();
    sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080, &qword_23BBFA898, MEMORY[0x277D83980]);
    sub_23BAF9FDC(&qword_27E197A60, MEMORY[0x277CE12D0], MEMORY[0x277CE12D8]);
    v41 = v22;
    sub_23BBDC198();
    v42 = v56;
    v43 = v58;
    (*(v56 + 16))(v24, v41, v58);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00C0, &unk_23BBFA920);
    sub_23B9A8CB4(&qword_27E1A00C8, &qword_27E1A00C0, &unk_23BBFA920, &unk_23BBFAB64);
    sub_23BAF6A40();
    sub_23BBDACD8();
    sub_23BAF712C();
    v39 = v63;
    v40 = v66;
    sub_23BA82D64();
    sub_23B9A8E20(v27, &qword_27E1A0090);
    (*(v42 + 8))(v41, v43);
  }

  else
  {
    v48 = v53;
    v49 = v65;
    v40 = v66;
    sub_23B9D2D88();
    v50 = v54;
    sub_23B9D2D88();
    sub_23BAF712C();
    v39 = v63;
    sub_23BA82E14();
    v51 = *(v55 + 8);
    v51(v50, v49);
    v51(v48, v49);
  }

  sub_23B989ECC(v76, v73, &qword_27E1A0070, &unk_23BBFA888);
  v75[0] = v73;
  v44 = v61;
  v45 = v64;
  (*(v61 + 16))(v64, v39, v29);
  v75[1] = v45;
  v72[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0070, &unk_23BBFA888);
  v72[1] = v29;
  v70 = sub_23BAF7214(&qword_27E1A00D8, &qword_27E1A0070, &unk_23BBFA888, sub_23BAF71E4);
  v68 = sub_23BAF712C();
  v69 = v40;
  WitnessTable = swift_getWitnessTable();
  sub_23BB6739C(v75, 2, v72);
  v46 = *(v44 + 8);
  v46(v39, v29);
  sub_23B9A8E20(v76, &qword_27E1A0070);
  v46(v45, v29);
  return sub_23B9A8E20(v73, &qword_27E1A0070);
}

uint64_t sub_23BAEEB5C(void (*a1)(void *__return_ptr))
{
  v2 = *(v1 + 40);
  if (v2 == 2 || (v2 & 1) != 0)
  {
    a1(v7);
    memset(v5, 0, sizeof(v5));
    v6 = xmmword_23BBE4070;
    v3 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v7, v5);
    sub_23B97B104(v5);
    sub_23B97B104(v7);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_23BAEEBE0@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t (*a6)(void)@<X5>, void (*a7)(uint64_t)@<X7>, _BYTE *a8@<X8>, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  *a8 = a1;
  sub_23B9AF0F0(a2, (a8 + 8));
  a8[48] = a3;
  a8[49] = a4;
  a8[50] = a5;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  type metadata accessor for BottomContentContainer(0, &v21);
  v18 = a6();
  a7(v18);
  return sub_23B97B104(a2);
}

uint64_t sub_23BAEECBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v71 = a5;
  v69 = a4;
  v75 = a3;
  v76 = a2;
  v77 = a9;
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098, &qword_23BBFA8A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090, &qword_23BBFA8A0);
  v74 = a8;
  sub_23BBDACE8();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  v15 = sub_23BBDACE8();
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v83 = a6;
  v72 = a6;
  v73 = a7;
  v84 = a7;
  *&v85 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  *(&v85 + 1) = *(&a10 + 1);
  v86 = a11;
  v70 = a11;
  type metadata accessor for StoreContentNavigation(255, &v82);
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v16 = sub_23BBDC3D8();
  v80 = sub_23BAF6A40();
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v82 = v15;
  v83 = v16;
  v68 = v17;
  v84 = v17;
  *&v85 = v18;
  v66 = v18;
  v19 = type metadata accessor for MagicPocketContainer(0, &v82);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v67 = &v57 - v24;
  v25 = sub_23BBDD648();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v57 - v30;
  sub_23B9C9234(v78, &v82);
  if ((v85 - 1) >= 2)
  {
    sub_23B9C9290(&v82);
LABEL_6:
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v19);
    swift_getWitnessTable();
    goto LABEL_7;
  }

  v63 = v22;
  v64 = v16;
  v65 = v15;
  v32 = v75;
  if (*(v76 + 1))
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = xmmword_23BBE4070;
    v33 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v78, &v82);
    sub_23B97B104(&v82);
    if ((v33 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v58 = a12;
  v57 = a10;
  v61 = v31;
  v34 = v71;
  v35 = v72;
  v82 = v71;
  v83 = v72;
  v60 = v20;
  v36 = v73;
  v84 = v73;
  v85 = a10;
  v62 = v26;
  v37 = v70;
  v86 = v70;
  v38 = v32;
  v39 = v32 + *(type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v82) + 68);
  v82 = v35;
  v83 = v36;
  v84 = *(&a10 + 1);
  *&v85 = v37;
  v40 = type metadata accessor for SubscriptionStoreContainerContext(0, &v82);
  v59 = &v57;
  MEMORY[0x28223BE20](*(v39 + *(v40 + 56)));
  *(&v57 - 12) = v34;
  *(&v57 - 11) = v35;
  v41 = v74;
  *(&v57 - 10) = v36;
  *(&v57 - 9) = v41;
  *(&v57 - 8) = v57;
  *(&v57 - 7) = *(&a10 + 1);
  v42 = v58;
  *(&v57 - 6) = v37;
  *(&v57 - 5) = v42;
  v43 = v78;
  *(&v57 - 4) = v76;
  *(&v57 - 3) = v43;
  MEMORY[0x28223BE20](v44);
  *(&v57 - 10) = v34;
  *(&v57 - 9) = v35;
  v31 = v61;
  *(&v57 - 8) = v36;
  *(&v57 - 7) = v45;
  *(&v57 - 6) = v46;
  *(&v57 - 5) = *(&a10 + 1);
  v26 = v62;
  *(&v57 - 4) = v37;
  *(&v57 - 3) = v47;
  v56 = v38;
  v48 = v63;
  sub_23BAF03EC(v49, sub_23BAF7080, sub_23BAFA5CC, v63, v65, v64, v68, v66);
  swift_getWitnessTable();
  v50 = v67;
  sub_23B9D2D88();
  v78 = v25;
  v51 = v60;
  v52 = *(v60 + 8);
  v52(v48, v19);
  sub_23B9D2D88();
  v52(v50, v19);
  v53 = v51;
  v25 = v78;
  (*(v53 + 32))(v28, v48, v19);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v19);
LABEL_7:
  sub_23BB2F9F4(v28, v19);
  v54 = *(v26 + 8);
  v54(v28, v25);
  v79 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v54)(v31, v25);
}

uint64_t sub_23BAEF398@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __int128 a8, uint64_t a9, uint64_t a10)
{
  v67 = a5;
  v66 = a4;
  v65 = a3;
  v63 = a2;
  v80 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090, &qword_23BBFA8A0);
  v14 = sub_23BBDACE8();
  v73 = v12;
  swift_getTupleTypeMetadata2();
  v15 = sub_23BBDC3D8();
  v75 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v74 = &v59 - v16;
  v70 = a6;
  v62 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v61 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v60 = &v59 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00B8, &qword_23BBFA918);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v68 = v13;
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v72 = *(v14 - 8);
  MEMORY[0x28223BE20](v27);
  v69 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v71 = &v59 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0098, &qword_23BBFA8A8);
  v64 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v59 - v32;
  v81 = v34;
  v79 = v15;
  v78 = sub_23BBDACE8();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v59 - v35;
  v36 = *a1;
  if (*a1 & 1) != 0 && (v91 = 0, v92 = 0, v93 = 0, v94 = xmmword_23BBE7BC0, v37 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(&v91, v63), sub_23B97B104(&v91), (v37))
  {
    v91 = *(a1 + 4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0080, &qword_23BBFA898);
    sub_23BBDC1E8();
    sub_23BBDC208();
    sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080, &qword_23BBFA898, MEMORY[0x277D83980]);
    sub_23BAF9FDC(&qword_27E197A60, MEMORY[0x277CE12D0], MEMORY[0x277CE12D8]);
    sub_23BBDC198();
    sub_23BAF6A40();
    swift_getWitnessTable();
    v38 = v76;
    v39 = v81;
    sub_23BA82D64();
    (*(v64 + 8))(v33, v39);
  }

  else
  {
    v91 = v65;
    v92 = v66;
    v93 = v67;
    v94 = a8;
    v95 = a9;
    v40 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v91);
    sub_23BAEBD04(v40, &v91);
    if (v36)
    {
      v41 = *(a1 + 3);
      v42 = *(a1 + 4);
      *v23 = v41;
      *(v23 + 1) = v42;
      v23[16] = 1;
      *(v23 + 3) = 0;
      v23[32] = 1;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00C0, &unk_23BBFA920);
      sub_23B9A8CB4(&qword_27E1A00C8, &qword_27E1A00C0, &unk_23BBFA920, &unk_23BBFAB64);
      sub_23BAF6A40();
      sub_23BBDACD8();
      sub_23BAF712C();
      v43 = v71;
      sub_23BA82D64();
      sub_23B9A8E20(v26, &qword_27E1A0090);
    }

    else if (*(*(a1 + 1) + 16) || *(*(a1 + 2) + 16))
    {
      v89[0] = *(a1 + 3);

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0080, &qword_23BBFA898);
      sub_23BBDC1E8();
      sub_23BBDC208();
      sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080, &qword_23BBFA898, MEMORY[0x277D83980]);
      sub_23BAF9FDC(&qword_27E197A60, MEMORY[0x277CE12D0], MEMORY[0x277CE12D8]);
      sub_23BBDC198();
      v44 = v64;
      v45 = v81;
      (*(v64 + 16))(v23, v33, v81);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00C0, &unk_23BBFA920);
      sub_23B9A8CB4(&qword_27E1A00C8, &qword_27E1A00C0, &unk_23BBFA920, &unk_23BBFAB64);
      sub_23BAF6A40();
      sub_23BBDACD8();
      sub_23BAF712C();
      v43 = v71;
      sub_23BA82D64();
      sub_23B9A8E20(v26, &qword_27E1A0090);
      (*(v44 + 8))(v33, v45);
    }

    else
    {
      v55 = v60;
      v56 = v70;
      sub_23B9D2D88();
      v57 = v61;
      sub_23B9D2D88();
      sub_23BAF712C();
      v43 = v71;
      sub_23BA82E14();
      v58 = *(v62 + 8);
      v58(v57, v56);
      v58(v55, v56);
    }

    sub_23B989ECC(&v91, v89, &qword_27E1A0070, &unk_23BBFA888);
    v90[0] = v89;
    v46 = v72;
    v47 = v69;
    (*(v72 + 16))(v69, v43, v14);
    v90[1] = v47;
    v88[0] = v73;
    v88[1] = v14;
    v86 = sub_23BAF7214(&qword_27E1A00D8, &qword_27E1A0070, &unk_23BBFA888, sub_23BAF71E4);
    v84 = sub_23BAF712C();
    v85 = a10;
    WitnessTable = swift_getWitnessTable();
    v48 = v74;
    sub_23BB6739C(v90, 2, v88);
    v49 = *(v46 + 8);
    v49(v47, v14);
    sub_23B9A8E20(v89, &qword_27E1A0070);
    sub_23BAF6A40();
    v50 = v79;
    swift_getWitnessTable();
    v38 = v76;
    sub_23BA82E14();
    (*(v75 + 8))(v48, v50);
    v49(v43, v14);
    sub_23B9A8E20(&v91, &qword_27E1A0070);
  }

  v51 = sub_23BAF6A40();
  v52 = swift_getWitnessTable();
  v82 = v51;
  v83 = v52;
  v53 = v78;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v77 + 8))(v38, v53);
}

void sub_23BAEFFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v22 = v21;
  v75 = v23;
  v76 = v21;
  v79 = v24;
  v80 = v25;
  v26 = v23;
  v28 = v27;
  v81 = v29;
  v82 = v30;
  v32 = v31;
  v73 = a21;
  v74 = v27;
  v33 = OUTLINED_FUNCTION_35_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v33, v34);
  OUTLINED_FUNCTION_4_29();
  v86 = v35;
  v87 = v28;
  v88 = v26;
  v89 = sub_23B9A8CB4(v36, &qword_27E19F5A0, &qword_23BBF8390, v37);
  v90 = v22;
  v91 = a21;
  v38 = OUTLINED_FUNCTION_21_15();
  v77 = type metadata accessor for StoreContentNavigation(v38, v39);
  v40 = sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v78 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_1();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_3();
  v72 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0098, &qword_23BBFA8A8);
  OUTLINED_FUNCTION_7();
  v50 = v49;
  v69 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_1();
  v71 = v52 - v53;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v54);
  v70 = &v69 - v55;
  v86 = *(v32 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0080, &qword_23BBFA898);
  sub_23BBDC1E8();
  sub_23BBDC208();
  OUTLINED_FUNCTION_10_17();
  sub_23B9A8CB4(v56, &qword_27E1A0080, &qword_23BBFA898, v57);
  sub_23BAF9FDC(&qword_27E197A60, MEMORY[0x277CE12D0], MEMORY[0x277CE12D8]);
  sub_23BBDC198();
  v86 = v79;
  v87 = v74;
  v88 = v75;
  v89 = v80;
  v90 = v76;
  v91 = v73;
  v58 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v86);
  sub_23BAEBDB4(v58, v45);
  OUTLINED_FUNCTION_1_46();
  v85[2] = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  WitnessTable = swift_getWitnessTable();
  v60 = v72;
  OUTLINED_FUNCTION_46();
  sub_23B9D2D88();
  v61 = v78;
  v62 = *(v78 + 8);
  v63 = OUTLINED_FUNCTION_46();
  v62(v63);
  v64 = *(v50 + 16);
  v65 = v71;
  v66 = v70;
  v64(v71, v70, v48);
  v86 = v65;
  (*(v61 + 16))(v45, v60, v40);
  v87 = v45;
  v85[0] = v48;
  v85[1] = v40;
  v83 = sub_23BAF6A40();
  v84 = WitnessTable;
  sub_23BB6739C(&v86, 2, v85);
  (v62)(v60, v40);
  v67 = *(v69 + 8);
  v67(v66, v48);
  v68 = OUTLINED_FUNCTION_46();
  v62(v68);
  v67(v65, v48);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAF03EC@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8)
{
  *a4 = a1;
  v12[0] = a5;
  v12[1] = a6;
  v12[2] = a7;
  v12[3] = a8;
  type metadata accessor for MagicPocketContainer(0, v12);
  v10 = a2();
  return a3(v10);
}

uint64_t sub_23BAF0478@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, __int128 a9, __int128 a10, uint64_t a11)
{
  v25 = a6;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v19 = type metadata accessor for SubscriptionStoreStructuredScrollView(0, &v25);
  v20 = v19[21];
  *(a7 + v19[20]) = a1;
  *(a7 + v19[19]) = a8;
  *(a7 + v20) = a2;
  v21 = *(a6 - 8);
  v22 = (*(v21 + 16))(a7, a3, a6);
  v23 = a4(v22);
  a5(v23);
  return (*(v21 + 8))(a3, a6);
}

double sub_23BAF05AC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1))
  {
    sub_23B9AF0F0(a1, v9);
    *&v8 = &unk_284E5A000;
    *(&v8 + 1) = sub_23B9C9318();
    v3 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v7, v9);
    sub_23B97B104(v7);
    if (v3)
    {
      sub_23B97B104(a1);
      v4 = v9;
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      v8 = xmmword_23BBE7BC0;
      v5 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v7, v9);
      sub_23B97B104(v7);
      sub_23B97B104(v9);
      v4 = a1;
      if ((v5 & 1) == 0)
      {
        return result;
      }
    }

    sub_23B97B104(v4);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23BAF0670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v83 = a2;
  v84 = a8;
  v78 = a3;
  v81 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  v79 = a7;
  swift_getTupleTypeMetadata2();
  v17 = sub_23BBDC3D8();
  *&v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  *(&v89 + 1) = a5;
  *&v90 = a6;
  *(&v90 + 1) = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v82 = a10;
  v91 = a10;
  v92 = a11;
  type metadata accessor for StoreContentNavigation(255, &v89);
  v18 = sub_23BBDD648();
  WitnessTable = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v77 = v17;
  *&v89 = v17;
  *(&v89 + 1) = v18;
  v74 = v18;
  v72 = WitnessTable;
  *&v90 = WitnessTable;
  *(&v90 + 1) = v20;
  v69 = v20;
  v21 = type metadata accessor for BottomContentContainer(0, &v89);
  v76 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v75 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v70 = &v62 - v24;
  MEMORY[0x28223BE20](v25);
  v71 = &v62 - v26;
  v27 = sub_23BBDD648();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v80 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v62 - v31;
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v73 = a1;
  v33 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(a1, &v89);
  sub_23B97B104(&v89);
  if (v33 & 1) != 0 || (*&v89 = a4, *(&v89 + 1) = a5, *&v90 = a6, *(&v90 + 1) = v84, v91 = v82, v92 = a11, v54 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v89), v55 = v83 + *(v54 + 84), v56 = *v55, v57 = *(v55 + 8), LOBYTE(v89) = v56, *(&v89 + 1) = v57, __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0130, &qword_23BBFA978), sub_23BBDBF68(), v85 != 2) && (v85)
  {
    v64 = a12;
    *&v89 = a4;
    *(&v89 + 1) = a5;
    v66 = v32;
    *&v90 = a6;
    *(&v90 + 1) = v84;
    v67 = v28;
    v34 = v82;
    v91 = v82;
    v92 = a11;
    v63 = a4;
    v35 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v89);
    v36 = v83;
    v37 = v79;
    v38 = v83 + *(v35 + 68);
    *&v89 = a5;
    *(&v89 + 1) = a6;
    *&v90 = v34;
    *(&v90 + 1) = a11;
    v39 = type metadata accessor for SubscriptionStoreContainerContext(0, &v89);
    v68 = v27;
    v65 = *(v38 + *(v39 + 56));
    sub_23B9AF0F0(v73, &v89);
    v40 = v36 + *(v35 + 84);
    v41 = *v40;
    v42 = *(v40 + 8);
    v85 = v41;
    v86 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0130, &qword_23BBFA978);
    v43 = sub_23BBDBF68();
    v32 = v66;
    MEMORY[0x28223BE20](v43);
    *(&v62 - 10) = v63;
    *(&v62 - 9) = a5;
    *(&v62 - 8) = a6;
    *(&v62 - 7) = v37;
    v61 = v78;
    MEMORY[0x28223BE20](v44);
    *(&v62 - 10) = v45;
    *(&v62 - 9) = a5;
    *(&v62 - 8) = a6;
    *(&v62 - 7) = v37;
    v27 = v68;
    v28 = v67;
    *(&v60 + 1) = v74;
    *&v60 = v77;
    v47 = v70;
    sub_23BAEEBE0(v65, &v89, v46 & 1, v48, 0, sub_23BAF7C14, sub_23BAFA5D0, v70, (&v62 - 12), v60, v72, v69);
    swift_getWitnessTable();
    v49 = v71;
    sub_23B9D2D88();
    v50 = v76;
    v51 = *(v76 + 8);
    v51(v47, v21);
    v52 = v75;
    sub_23B9D2D88();
    v51(v49, v21);
    v53 = v80;
    (*(v50 + 32))(v80, v52, v21);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v21);
  }

  else
  {
    v53 = v80;
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v21);
    swift_getWitnessTable();
  }

  sub_23BB2F9F4(v53, v21);
  v58 = *(v28 + 8);
  v58(v53, v27);
  v87 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v58)(v32, v27);
}

uint64_t sub_23BAF0DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  v30[0] = v17;
  v30[1] = v18;
  v30[2] = v19;
  v30[3] = v20;
  v30[4] = v21;
  v30[5] = v22;
  v23 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, v30);
  sub_23BAEBD04(v23, v30);
  sub_23B9D2D88();
  sub_23B989ECC(v30, v28, &qword_27E1A0070, &unk_23BBFA888);
  v29[0] = v28;
  (*(v11 + 16))(v13, v16, a6);
  v29[1] = v13;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0070, &unk_23BBFA888);
  v27[1] = a6;
  v26[0] = sub_23BAF7214(&qword_27E1A00D8, &qword_27E1A0070, &unk_23BBFA888, sub_23BAF71E4);
  v26[1] = a10;
  sub_23BB6739C(v29, 2, v27);
  v24 = *(v11 + 8);
  v24(v16, a6);
  sub_23B9A8E20(v30, &qword_27E1A0070);
  v24(v13, a6);
  return sub_23B9A8E20(v28, &qword_27E1A0070);
}

uint64_t sub_23BAF0FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v66 = a2;
  v67 = a8;
  v68 = a1;
  v69 = a4;
  v63 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  v65 = a7;
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  v16 = sub_23BBDD648();
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v74 = a5;
  v17 = a6;
  v75 = a6;
  v76 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v77 = a10;
  v78 = a11;
  v64 = a11;
  type metadata accessor for StoreContentNavigation(255, &v73);
  v18 = sub_23BBDD648();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v61 = v18;
  v62 = v16;
  v73 = v16;
  v74 = v18;
  v60 = v19;
  v75 = v19;
  v76 = v20;
  v57 = v20;
  v21 = type metadata accessor for MagicPocketContainer(0, &v73);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v59 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v58 = v53 - v25;
  v26 = sub_23BBDD648();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v53 - v31;
  sub_23B9C9234(v68, &v73);
  if ((v76 - 1) > 1)
  {
    sub_23B9C9290(&v73);
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v21);
    swift_getWitnessTable();
  }

  else
  {
    v53[0] = a12;
    v73 = v69;
    v74 = a5;
    v56 = v27;
    v33 = v67;
    v75 = v17;
    v76 = v67;
    v55 = v32;
    v34 = v64;
    v77 = a10;
    v78 = v64;
    v35 = *(type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v73) + 68);
    v68 = a9;
    v54 = v22;
    v36 = v66 + v35;
    v73 = a5;
    v74 = v17;
    v75 = a10;
    v76 = v34;
    v37 = type metadata accessor for SubscriptionStoreContainerContext(0, &v73);
    v53[1] = v53;
    MEMORY[0x28223BE20](*(v36 + *(v37 + 56)));
    v53[-10] = v69;
    v53[-9] = a5;
    v38 = v65;
    v53[-8] = v17;
    v53[-7] = v38;
    v53[-6] = v33;
    v53[-5] = a10;
    v39 = v53[0];
    v53[-4] = v34;
    v53[-3] = v39;
    v52 = v63;
    MEMORY[0x28223BE20](v40);
    v53[-10] = v41;
    v53[-9] = a5;
    v53[-8] = v17;
    v53[-7] = v42;
    v53[-6] = v33;
    v53[-5] = a10;
    v27 = v56;
    v53[-4] = v34;
    v53[-3] = v43;
    v32 = v55;
    v44 = v59;
    sub_23BAF03EC(v45, sub_23BAF7BF8, sub_23BAF7C10, v59, v62, v61, v60, v57);
    swift_getWitnessTable();
    v46 = v58;
    sub_23B9D2D88();
    v69 = v26;
    v47 = v54;
    v48 = *(v54 + 8);
    v48(v44, v21);
    sub_23B9D2D88();
    v48(v46, v21);
    v49 = v47;
    v26 = v69;
    (*(v49 + 32))(v29, v44, v21);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v21);
  }

  sub_23BB2F9F4(v29, v21);
  v50 = *(v27 + 8);
  v50(v29, v26);
  v70 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v50)(v32, v26);
}

uint64_t sub_23BAF15E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a8;
  v50 = a7;
  v49 = a5;
  v42[1] = a2;
  v52 = a9;
  v48 = a10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070, &unk_23BBFA888);
  swift_getTupleTypeMetadata2();
  v15 = sub_23BBDC3D8();
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v47 = v42 - v16;
  v45 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v43 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v42 - v20;
  v22 = sub_23BBDD648();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v42 - v27;
  v58 = a3;
  v59 = a4;
  v29 = a1;
  v60 = v49;
  v61 = v50;
  v62 = v51;
  v63 = v48;
  v30 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v58);
  v31 = v29 + *(v30 + 84);
  v32 = *v31;
  v33 = *(v31 + 8);
  LOBYTE(v58) = v32;
  v59 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0130, &qword_23BBFA978);
  sub_23BBDBF68();
  if (v56[0] == 2 || (v56[0] & 1) != 0)
  {
    v34 = v25;
    v35 = 1;
  }

  else
  {
    v51 = a11;
    sub_23BAEBD04(v30, &v58);
    v36 = v51;
    sub_23B9D2D88();
    sub_23B989ECC(&v58, v56, &qword_27E1A0070, &unk_23BBFA888);
    v57[0] = v56;
    v37 = v45;
    v38 = v43;
    (*(v45 + 16))(v43, v21, a6);
    v57[1] = v38;
    v55[0] = v44;
    v55[1] = a6;
    v53 = sub_23BAF7214(&qword_27E1A00D8, &qword_27E1A0070, &unk_23BBFA888, sub_23BAF71E4);
    v54 = v36;
    sub_23BB6739C(v57, 2, v55);
    v39 = *(v37 + 8);
    v39(v21, a6);
    sub_23B9A8E20(&v58, &qword_27E1A0070);
    v39(v38, a6);
    sub_23B9A8E20(v56, &qword_27E1A0070);
    (*(v46 + 32))(v25, v47, v15);
    v34 = v25;
    v35 = 0;
  }

  __swift_storeEnumTagSinglePayload(v34, v35, 1, v15);
  swift_getWitnessTable();
  sub_23BB2F9F4(v25, v15);
  v40 = *(v23 + 8);
  v40(v25, v22);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (v40)(v28, v22);
}

void sub_23BAF1B30()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v31[0] = v5;
  v31[1] = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v31[2] = v12;
  v13 = OUTLINED_FUNCTION_35_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v13, v14);
  OUTLINED_FUNCTION_4_29();
  v32 = v15;
  v33 = v9;
  v34 = v7;
  v35 = sub_23B9A8CB4(v16, &qword_27E19F5A0, &qword_23BBF8390, v17);
  v36 = v3;
  v37 = v1;
  type metadata accessor for StoreContentNavigation(255, &v32);
  v18 = sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_1();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v31 - v26;
  v32 = v11;
  v33 = v9;
  v34 = v7;
  v35 = v31[0];
  v36 = v3;
  v37 = v1;
  v28 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v32);
  sub_23BAEBDB4(v28, v24);
  OUTLINED_FUNCTION_1_46();
  v31[3] = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_35_0();
  sub_23B9D2D88();
  v29 = *(v20 + 8);
  v30 = OUTLINED_FUNCTION_35_0();
  v29(v30);
  sub_23B9D2D88();
  (v29)(v27, v18);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAF1CF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v43 = a6;
  v44 = a7;
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  v47 = a8;
  v42 = a9;
  v52[0] = a2;
  v52[1] = a3;
  v52[2] = a4;
  v52[3] = a6;
  v52[4] = a7;
  v52[5] = a9;
  v36 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, v52);
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = &v35 - v12;
  v14 = sub_23BBDA358();
  v45 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = sub_23BBDA358();
  v46 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v35 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v37 = &v35 - v20;
  sub_23BBDBB48();
  v21 = v13;
  v22 = v13;
  v23 = v36;
  (*(v11 + 16))(v22, v38, v36);
  v24 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = v40;
  *(v25 + 2) = v39;
  *(v25 + 3) = v26;
  *(v25 + 4) = v41;
  *(v25 + 5) = a5;
  v27 = v44;
  *(v25 + 6) = v43;
  *(v25 + 7) = v27;
  *(v25 + 8) = v42;
  *(v25 + 9) = a10;
  (*(v11 + 32))(&v25[v24], v21, v23);
  v28 = sub_23B97AD88();
  v50 = a10;
  v51 = v28;
  WitnessTable = swift_getWitnessTable();
  v30 = v35;
  sub_23BB2FDBC(sub_23BAF7B30, v25, v14);

  (*(v45 + 8))(v16, v14);
  v31 = sub_23BA3D77C();
  v48 = WitnessTable;
  v49 = v31;
  swift_getWitnessTable();
  v32 = v37;
  sub_23B9D2D88();
  v33 = *(v46 + 8);
  v33(v30, v17);
  sub_23B9D2D88();
  return (v33)(v32, v17);
}

uint64_t sub_23BAF20AC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v9 = (a2 + *(type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v13) + 84));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v13) = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0130, &qword_23BBFA978);
  return sub_23BBDBF78();
}

uint64_t sub_23BAF2178(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23B9A9DE8(v3, *v1);
  return sub_23BBDDBF8();
}

BOOL sub_23BAF21C8()
{
  sub_23B9AF0F0(v0, &v4);
  v2[0] = v4;
  v2[1] = v5;
  v3 = v6;
  if (*(&v5 + 1) == 2)
  {
    return 1;
  }

  if (*(&v5 + 1) == 1)
  {
    return *(v0 + 40) != 1;
  }

  sub_23B9C9290(v2);
  return 0;
}

uint64_t sub_23BAF2280()
{
  v1 = v0;
  sub_23B9C9234(v0, &v5);
  v2 = v6;
  if (v6 >= 6)
  {
    sub_23B98473C(&v5, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v2 = sub_23BBDCE78();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  MEMORY[0x23EEB63A0](v2);
  return MEMORY[0x23EEB63A0](*(v1 + 40));
}

uint64_t sub_23BAF2318()
{
  sub_23BBDDBB8();
  sub_23BAF2280();
  return sub_23BBDDBF8();
}

uint64_t sub_23BAF2368(uint64_t a1)
{
  sub_23BBDDBB8();
  sub_23BAF2280();
  return sub_23BBDDBF8();
}

uint64_t sub_23BAF23C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v14);
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  type metadata accessor for SubscriptionStoreContainerContext(0, &v14);
  type metadata accessor for SubscriptionStoreControlConfiguration(0, a4, a7, v11);
  sub_23B9774BC();
  return v12 & 1;
}

uint64_t sub_23BAF2460()
{
  sub_23BAF5E64();
  sub_23BBDA298();
  return v1;
}

double sub_23BAF249C(char a1)
{
  sub_23BAF5E64();
  sub_23BBDA2A8();
  return result;
}

uint64_t sub_23BAF24D8@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_23BBDA288();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BBDC1D8();
  sub_23BAF5E64();
  sub_23BBDA298();
  *a1 = v7[15];
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23BAF25D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB30020();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_23BAF2608@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_23BBDA288();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BBDC1D8();
  sub_23BAF72E8();
  sub_23BBDA298();
  v6 = v8[15];
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_23BAF2704(uint64_t a1)
{
  result = 0x3FDB6DB6DB6DB6DBLL;
  v4 = *(v1 + *(a1 + 84));
  if (v4 == 2)
  {
    if (*(v1 + *(a1 + 80)))
    {
      return result;
    }

    return 0;
  }

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23BAF274C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v29 = v26.i64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v7 + 40);
  v10 = *(v7 + 56);
  v11.i64[0] = v4;
  v44 = *(v7 + 48);
  v8 = v44;
  v45 = v10;
  v26 = *(v7 + 24);
  *&v12 = vdupq_laneq_s64(v26, 1).u64[0];
  *(&v12 + 1) = v9;
  v43[0] = vzip1q_s64(v11, v26);
  v43[1] = v12;
  v13 = type metadata accessor for StructuredScrollView(0, v43);
  v27 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26.i8[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v26.i8[-v18];
  (*(v5 + 16))(v29, v2, v4, v17);
  v20 = sub_23BAF2704(a1);
  v21 = *(v2 + *(a1 + 76));
  v37 = v4;
  v38 = v26;
  v39 = v9;
  v40 = v8;
  v41 = v10;
  v42 = v2;
  v30 = v4;
  v31 = v26;
  v32 = v9;
  v33 = v8;
  v34 = v10;
  v35 = v2;
  *(&v25 + 1) = v8;
  *&v25 = v9;
  sub_23B9BF1A8(v29, v20, v22 & 1, sub_23BAF9F90, v36, sub_23BAF9FA8, v4, v15, v21, v26.i64[0], v26.i64[1], v25, v10);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v23 = *(v27 + 8);
  v23(v15, v13);
  sub_23B9D2D88();
  return (v23)(v19, v13);
}

uint64_t sub_23BAF2A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v12;
  type metadata accessor for SubscriptionStoreStructuredScrollView(0, v14);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_23BAF2B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  type metadata accessor for SubscriptionStoreStructuredScrollView(0, v15);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v5 + 8))(v7, a4);
}

uint64_t sub_23BAF2C44()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v2 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v0 + 8, v3);
  sub_23B97B104(v3);
  if (v2)
  {
    return 0x4038000000000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BAF2D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for BottomContentContainer(0, v12);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_23BAF2E08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C0, &qword_23BBFACA8);
  v32 = a1[2];
  v37 = a1[4];
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C8, &unk_23BBFACB0);
  sub_23BBDA358();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  v3 = a1[3];
  v31 = a1[5];
  type metadata accessor for SubscriptionStoreStandardButtonsSectionView(255, v3, v31, v4);
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v5 = sub_23BBDC3D8();
  swift_getWitnessTable();
  v6 = sub_23BBDC078();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  sub_23BBDB038();
  v9 = sub_23BBDA358();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310, &unk_23BBE5200);
  v12 = sub_23BBDA358();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v30 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v33 = &v30 - v15;
  *&v16 = v32;
  *(&v16 + 1) = v3;
  *&v17 = v37;
  *(&v17 + 1) = v31;
  v40 = v16;
  v41 = v17;
  v42 = v38;
  sub_23B9BE15C(v5);
  sub_23BBDC068();
  v18 = sub_23BBDB3A8();
  v19 = sub_23BAF2C44();
  LOBYTE(v5) = v20;
  WitnessTable = swift_getWitnessTable();
  sub_23BB2FA54(v18, v19, v5 & 1, v6, WitnessTable, v22);
  (*(v34 + 8))(v8, v6);
  v23 = sub_23BAF9FDC(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v45 = WitnessTable;
  v46 = v23;
  v24 = swift_getWitnessTable();
  v25 = v30;
  sub_23BBDBBD8();
  (*(v35 + 8))(v11, v9);
  v26 = sub_23B9A8CB4(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
  v43 = v24;
  v44 = v26;
  swift_getWitnessTable();
  v27 = v33;
  sub_23B9D2D88();
  v28 = *(v36 + 8);
  v28(v25, v12);
  sub_23B9D2D88();
  return (v28)(v27, v12);
}

uint64_t sub_23BAF3334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a6;
  v11 = type metadata accessor for SubscriptionStoreStandardButtonsSectionView(0, a3, a5, a4);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v43 - v14;
  v51 = v15;
  v56 = sub_23BBDD648();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = &v43 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C0, &qword_23BBFACA8);
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C8, &unk_23BBFACB0);
  sub_23BBDA358();
  swift_getTupleTypeMetadata2();
  v19 = sub_23BBDC3D8();
  swift_getWitnessTable();
  v20 = sub_23BBDC078();
  v58 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - v24;
  *&v68 = a2;
  *(&v68 + 1) = a3;
  *&v69 = a4;
  *(&v69 + 1) = a5;
  v44 = type metadata accessor for BottomContentContainer(0, &v68);
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a1;
  sub_23B9BE15C(v19);
  sub_23BBDC068();
  WitnessTable = swift_getWitnessTable();
  v52 = v25;
  v48 = WitnessTable;
  sub_23B9D2D88();
  v27 = *(v58 + 8);
  v50 = v58 + 8;
  v49 = v27;
  v27(v22, v20);
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  LOBYTE(v19) = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(&v68, a1 + 8);
  sub_23B97B104(&v68);
  if ((v19 & 1) != 0 && (*(a1 + 50) & 1) == 0)
  {
    v30 = v47;
    sub_23BAF2CAC(v44, v47);
    v31 = v51;
    swift_getWitnessTable();
    v32 = v45;
    sub_23B9D2D88();
    v33 = v46;
    v34 = *(v46 + 8);
    v34(v30, v31);
    sub_23B9D2D88();
    v34(v32, v31);
    v29 = v31;
    v28 = v53;
    (*(v33 + 32))(v53, v30, v31);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v31);
  }

  else
  {
    v28 = v53;
    v29 = v51;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v51);
    swift_getWitnessTable();
  }

  v35 = v55;
  sub_23BB2F9F4(v28, v29);
  v36 = v54;
  v37 = *(v54 + 8);
  v38 = v56;
  v37(v28, v56);
  v39 = v52;
  (*(v58 + 16))(v22, v52, v20);
  *&v68 = v22;
  (*(v36 + 16))(v28, v35, v38);
  *(&v68 + 1) = v28;
  v67[0] = v20;
  v67[1] = v38;
  v65 = v48;
  v64 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  sub_23BB6739C(&v68, 2, v67);
  v37(v35, v38);
  v40 = v39;
  v41 = v49;
  v49(v40, v20);
  v37(v28, v38);
  return v41(v22, v20);
}

uint64_t sub_23BAF39C8@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a6;
  v64 = a3;
  v66 = a5;
  v72 = type metadata accessor for SubscriptionStoreStandardButtonsSectionView(255, a3, a5, a4);
  v73 = sub_23BBDD648();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v59 - v9;
  v63 = a4;
  v10 = sub_23BBDC078();
  v69 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v67 = &v59 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C8, &unk_23BBFACB0);
  v62 = v10;
  v61 = sub_23BBDA358();
  v74 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v76 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v59 - v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197CB0, &qword_23BBFACC0);
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C50, &qword_23BBE42C8);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A03C0, &qword_23BBFACA8);
  MEMORY[0x28223BE20](v60);
  v65 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v59 - v28;
  v30 = 1;
  if (a1[49] == 1)
  {
    sub_23BB254D4(v19);
    v31 = sub_23BBDB388();
    v32 = &v19[*(v17 + 36)];
    *v32 = v31;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    v32[40] = 1;
    v59 = a1;
    if (a1[48] == 1)
    {
      v33 = sub_23BBDB3B8();
    }

    else
    {
      v33 = sub_23BBDB3D8();
    }

    v34 = v33;
    sub_23B989918(v19, v22, &qword_27E197CB0, &qword_23BBFACC0);
    v35 = &v22[*(v20 + 36)];
    *v35 = v34;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    v35[40] = 1;
    sub_23B989918(v22, v25, &qword_27E197C50, &qword_23BBE42C8);
    sub_23B989918(v25, v29, &qword_27E197C50, &qword_23BBE42C8);
    v30 = 0;
    a1 = v59;
  }

  v36 = 1;
  v37 = v29;
  v38 = __swift_storeEnumTagSinglePayload(v29, v30, 1, v20);
  MEMORY[0x28223BE20](v38);
  v39 = v64;
  *(&v59 - 6) = a2;
  *(&v59 - 5) = v39;
  v40 = v63;
  v41 = v66;
  *(&v59 - 4) = v63;
  *(&v59 - 3) = v41;
  *(&v59 - 2) = a1;
  sub_23B9BE15C(a2);
  v42 = v67;
  sub_23BBDC068();
  v43 = v70;
  if (a1[50] == 1)
  {
    v78 = a2;
    v79 = v39;
    v80 = v40;
    v81 = v41;
    v44 = type metadata accessor for BottomContentContainer(0, &v78);
    sub_23BAF2CAC(v44, v43);
    v36 = 0;
  }

  v45 = v72;
  __swift_storeEnumTagSinglePayload(v43, v36, 1, v72);
  v46 = v62;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v48 = v68;
  v49 = sub_23BA20F3C(v43, v46, v45, WitnessTable);
  (*(v71 + 8))(v43, v73, v49);
  (*(v69 + 8))(v42, v46);
  v50 = sub_23B9A8CB4(&qword_27E1A03D0, &qword_27E1A03C8, &unk_23BBFACB0, MEMORY[0x277CE0868]);
  v84[2] = WitnessTable;
  v84[3] = v50;
  v51 = v61;
  v52 = swift_getWitnessTable();
  v53 = v75;
  sub_23B9D2D88();
  v54 = v74;
  v55 = *(v74 + 8);
  v55(v48, v51);
  v56 = v65;
  sub_23B989ECC(v37, v65, &qword_27E1A03C0, &qword_23BBFACA8);
  v78 = v56;
  v57 = v76;
  (*(v54 + 16))(v76, v53, v51);
  v79 = v57;
  v84[0] = v60;
  v84[1] = v51;
  v82 = sub_23BAF7214(qword_27E1A03D8, &qword_27E1A03C0, &qword_23BBFACA8, sub_23B97AE30);
  v83 = v52;
  sub_23BB6739C(&v78, 2, v84);
  v55(v53, v51);
  sub_23B9A8E20(v37, &qword_27E1A03C0);
  v55(v57, v51);
  return sub_23B9A8E20(v56, &qword_27E1A03C0);
}

uint64_t sub_23BAF417C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for BottomContentContainer(0, v11);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23BAF4288@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = a1[4];
  v25 = a1[2];
  v26 = v3;
  sub_23BBDC078();
  v4 = a1[3];
  v5 = a1[5];
  type metadata accessor for SubscriptionStoreStandardButtonsSectionView(255, v4, v5, v6);
  swift_getTupleTypeMetadata2();
  v7 = sub_23BBDC3D8();
  swift_getWitnessTable();
  v8 = sub_23BBDC078();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310, &unk_23BBE5200);
  v11 = sub_23BBDA358();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_23BBDC2A8();
  v24 = &v24;
  *&v18 = v25;
  *&v19 = v26;
  *(&v18 + 1) = v4;
  *(&v19 + 1) = v5;
  v30 = v18;
  v31 = v19;
  v32 = v27;
  sub_23B9BE15C(v7);
  sub_23BBDC068();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBBD8();
  (*(v28 + 8))(v10, v8);
  v21 = sub_23B9A8CB4(&qword_27E198308, &qword_27E198310, &unk_23BBE5200, MEMORY[0x277CE08A0]);
  v33 = WitnessTable;
  v34 = v21;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v22 = *(v12 + 8);
  v22(v14, v11);
  sub_23B9D2D88();
  return (v22)(v17, v11);
}

uint64_t sub_23BAF45F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a1;
  v43 = a6;
  v10 = type metadata accessor for SubscriptionStoreStandardButtonsSectionView(0, a3, a5, a4);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v41 = &v33 - v14;
  v15 = sub_23BBDC078();
  v36 = *(v15 - 8);
  v16 = v36;
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v18;
  MEMORY[0x28223BE20](v19);
  v37 = &v33 - v20;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v54 = v44;
  sub_23B9BE15C(a2);
  sub_23BBDC068();
  v35 = v15;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88();
  v21 = *(v16 + 8);
  v38 = v16 + 8;
  v40 = v21;
  v21(v18, v15);
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = v44;
  sub_23BAA48E0(sub_23BAF9F60, a3, a5, v12);
  v22 = v10;
  v23 = swift_getWitnessTable();
  v24 = v41;
  v25 = v12;
  sub_23B9D2D88();
  v26 = v42;
  v27 = *(v42 + 8);
  v27(v12, v22);
  v28 = v34;
  v29 = v37;
  v30 = v35;
  (*(v36 + 16))(v34, v37, v35);
  v58[0] = v28;
  (*(v26 + 16))(v25, v24, v22);
  v58[1] = v25;
  v57[0] = v30;
  v57[1] = v22;
  v55 = WitnessTable;
  v56 = v23;
  sub_23BB6739C(v58, 2, v57);
  v27(v24, v22);
  v31 = v40;
  v40(v29, v30);
  v27(v25, v22);
  return v31(v28, v30);
}

uint64_t sub_23BAF4A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for MagicPocketContainer(0, v11);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23BAF4B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for MagicPocketContainer(0, v12);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_23BAF4C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *(a1 + 16);
  v24 = a2;
  v4 = sub_23BBDC1E8();
  v5 = sub_23BBDC208();
  v22 = *(a1 + 24);
  v31 = v23;
  v32 = v4;
  v33 = v5;
  v34 = v22;
  v35 = sub_23BAF9FDC(&qword_27E19B1F8, MEMORY[0x277CE12A8], MEMORY[0x277CE12B0]);
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B690, qword_23BBED280);
  v30 = MEMORY[0x277CE12C8];
  swift_getWitnessTable();
  sub_23BBDC078();
  sub_23BBDB038();
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata3();
  v6 = sub_23BBDC3D8();
  swift_getWitnessTable();
  v7 = sub_23BBDC078();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = sub_23BBDA358();
  v21 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v25 = v23;
  v26 = v22;
  v27 = v2;
  sub_23B9BE15C(v6);
  sub_23BBDC068();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBC78();
  (*(v20 + 8))(v9, v7);
  v28 = WitnessTable;
  v29 = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  sub_23B9D2D88();
  v17 = *(v21 + 8);
  v17(v12, v10);
  sub_23B9D2D88();
  return (v17)(v15, v10);
}

uint64_t sub_23BAF5000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v98 = a4;
  v121 = a2;
  v122 = sub_23BBDC1E8();
  v123 = sub_23BBDC208();
  v124 = a3;
  v125 = sub_23BAF9FDC(&qword_27E19B1F8, MEMORY[0x277CE12A8], MEMORY[0x277CE12B0]);
  v7 = sub_23BBDC1A8();
  v120 = MEMORY[0x277CE12C8];
  WitnessTable = swift_getWitnessTable();
  v9 = sub_23BBDC078();
  v83 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v82 = &v81 - v10;
  sub_23BBDB038();
  v104 = v9;
  v11 = sub_23BBDA358();
  v86 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v85 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v81 - v14;
  v15 = sub_23BBDD648();
  v87 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  v101 = v11;
  v97 = sub_23BBDD648();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v103 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v102 = &v81 - v20;
  MEMORY[0x28223BE20](v21);
  v89 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v81 - v32;
  v81 = v34;
  (*(v34 + 16))(v25, a1, a2, v31);
  v35 = v25;
  v36 = v88;
  sub_23B9758C0(v35, a2, v88);
  v93 = v33;
  v100 = WitnessTable;
  sub_23B9D2D88();
  v92 = v26;
  v37 = v26;
  v38 = v87;
  v39 = *(v37 + 8);
  v90 = v29;
  v99 = v7;
  v96 = v37 + 8;
  v95 = v39;
  v39(v29, v7);
  v41 = type metadata accessor for SubscriptionPickerScrollViewContainer(0, a2, v36, v40);
  v42 = (a1 + v41[11]);
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = v41[9];
  v91 = *(a1 + v41[10]);
  (*(v38 + 16))(v17, a1 + v45, v15);
  if (__swift_getEnumTagSinglePayload(v17, 1, a2) == 1)
  {
    (*(v38 + 8))(v17, v15);
    v46 = v44;
    v47 = v103;
    v48 = v101;
    __swift_storeEnumTagSinglePayload(v103, 1, 1, v101);
    v49 = swift_getWitnessTable();
    v50 = sub_23BAF9FDC(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    v118 = v49;
    v119 = v50;
    swift_getWitnessTable();
    sub_23BB2F9F4(v47, v48);
    v51 = v94;
    v52 = *(v94 + 8);
    v53 = v47;
    v54 = v97;
    v52(v53, v97);
  }

  else
  {
    v55 = v81;
    v56 = v89;
    v57 = (*(v81 + 32))();
    MEMORY[0x28223BE20](v57);
    *(&v81 - 4) = a2;
    *(&v81 - 3) = v36;
    *(&v81 - 2) = v56;
    sub_23B9BE15C(v99);
    v58 = v82;
    sub_23BBDC068();
    v59 = sub_23BBDB3A8();
    v60 = v104;
    v61 = swift_getWitnessTable();
    v62 = v85;
    sub_23BB2FA54(v59, 0x4030000000000000, 0, v60, v61, v63);
    (*(v83 + 8))(v58, v60);
    v64 = sub_23BAF9FDC(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    v105 = v61;
    v106 = v64;
    v65 = v101;
    swift_getWitnessTable();
    LODWORD(v88) = v44;
    v66 = v84;
    sub_23B9D2D88();
    v67 = v86;
    v68 = *(v86 + 8);
    v68(v62, v65);
    sub_23B9D2D88();
    v68(v66, v65);
    v69 = v103;
    (*(v67 + 32))(v103, v62, v65);
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v65);
    sub_23BB2F9F4(v69, v65);
    v51 = v94;
    v52 = *(v94 + 8);
    v70 = v69;
    v54 = v97;
    v52(v70, v97);
    v71 = a2;
    v46 = v88;
    (*(v55 + 8))(v89, v71);
  }

  v72 = v90;
  v73 = v93;
  v74 = v99;
  (*(v92 + 16))(v90, v93, v99);
  v114 = v43;
  v115 = v46;
  v116 = 0;
  v117 = v91;
  v121 = v72;
  v122 = &v114;
  v75 = v103;
  v76 = v102;
  (*(v51 + 16))(v103, v102, v54);
  v123 = v75;
  v113[0] = v74;
  v113[1] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B690, qword_23BBED280);
  v113[2] = v54;
  v110 = v100;
  v111 = sub_23BA1A59C();
  v77 = swift_getWitnessTable();
  v78 = sub_23BAF9FDC(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v108 = v77;
  v109 = v78;
  v107 = swift_getWitnessTable();
  v112 = swift_getWitnessTable();
  sub_23BB6739C(&v121, 3, v113);
  v52(v76, v54);
  v79 = v95;
  v95(v73, v74);
  v52(v75, v54);
  return v79(v72, v74);
}

uint64_t sub_23BAF5B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDC1E8();
  v10 = sub_23BBDC208();
  v11 = sub_23BAF9FDC(&qword_27E19B1F8, MEMORY[0x277CE12A8], MEMORY[0x277CE12B0]);
  v22[1] = a2;
  v22[2] = v9;
  v22[3] = v10;
  v22[4] = a3;
  v22[5] = v11;
  v12 = sub_23BBDC1A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v22 - v18;
  (*(v6 + 16))(v8, a1, a2, v17);
  sub_23B9758C0(v8, a2, a3);
  v22[0] = MEMORY[0x277CE12C8];
  swift_getWitnessTable();
  sub_23B9D2D88();
  v20 = *(v13 + 8);
  v20(v15, v12);
  sub_23B9D2D88();
  return (v20)(v19, v12);
}

void sub_23BAF5DA8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SubscriptionStoreContentConfiguration(0);

    return;
  }

LABEL_10:
  __break(1u);
}

unint64_t sub_23BAF5E64()
{
  result = qword_27E19FFC0[0];
  if (!qword_27E19FFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19FFC0);
  }

  return result;
}

void sub_23BAF5EC8(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v20 = 0;
    v28 = v2;
    v4 = *(a1 + 48);
    v19[0] = *(a1 + 24);
    v19[1] = v4;
    v5 = type metadata accessor for SubscriptionStoreContainerContext(319, v19);
    if (v6 <= 0x3F)
    {
      v21 = 0;
      v29 = v5;
      sub_23BAF82C4(319, &qword_27E1A0048, &qword_27E19EF20, &qword_23BBF7380, MEMORY[0x277D83D88]);
      if (v8 <= 0x3F)
      {
        v22 = 0;
        v30 = v7;
        sub_23BAD216C(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v10 <= 0x3F)
        {
          v23 = 0;
          v31 = v9;
          sub_23BAD216C(319, &qword_27E1A0050, &_s34SubscriptionStoreControlPropertiesVN, MEMORY[0x277CDF468]);
          if (v12 <= 0x3F)
          {
            v24 = 0;
            v32 = v11;
            sub_23BAF82C4(319, &qword_27E1A0058, &qword_27E199218, &qword_23BBFA470, MEMORY[0x277CE10B8]);
            if (v14 <= 0x3F)
            {
              v25 = 0;
              v33 = v13;
              sub_23BAD216C(319, &qword_27E19DFE0, &unk_284E611E8, MEMORY[0x277CDF468]);
              if (v16 <= 0x3F)
              {
                v26 = 0;
                v34 = v15;
                sub_23BAF82C4(319, qword_27E19F488, &qword_27E197878, &qword_23BBE38D0, MEMORY[0x277CE10B8]);
                if (v18 <= 0x3F)
                {
                  v27 = 0;
                  v35 = v17;
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

uint64_t sub_23BAF60E0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v41 = *(a3 + 24);
  v7 = *(v41 - 8);
  v8 = *(v6 + 84);
  v9 = *(v7 + 84);
  v10 = sub_23BBDCDB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = v13 - 1;
  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(*(v10 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v19 = *(v11 + 80) & 0xF8;
  v20 = v19 | 7;
  v21 = v19 | 7 | *(v7 + 80);
  v22 = *(v7 + 64) + (v19 | 7);
  v23 = *(v6 + 64) + v21;
  if (v17 < a2)
  {
    v24 = ((((((((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + ((v19 + 87) & ~v20) + (v22 & ~v20) + (v23 & ~v21) + 19) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 48;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v17 + 1;
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
        v28 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          break;
        }

        goto LABEL_31;
      case 2:
        v28 = *(a1 + v24);
        if (*(a1 + v24))
        {
          goto LABEL_31;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAF6448);
      case 4:
        v28 = *(a1 + v24);
        if (!v28)
        {
          break;
        }

LABEL_31:
        v30 = v28 - 1;
        if ((v24 & 0xFFFFFFF8) != 0)
        {
          v30 = 0;
          v31 = *a1;
        }

        else
        {
          v31 = 0;
        }

        return v17 + (v31 | v30) + 1;
      default:
        break;
    }
  }

  if (v8 >= v16)
  {
    v32 = a1;
    v35 = v8;
    v36 = v5;
  }

  else
  {
    v32 = ((a1 + v23) & ~v21);
    if (v9 < v15)
    {
      v33 = ((((v32 + v22) & ~v20) + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) != 0)
      {
        v37 = (v20 + ((((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20;
        if (v12 < 0xFD)
        {
          v39 = *(((v18 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v39 >= 2)
          {
            v40 = (v39 + 2147483646) & 0x7FFFFFFF;
          }

          else
          {
            v40 = -1;
          }

          if ((v40 + 1) >= 2)
          {
            EnumTagSinglePayload = v40;
          }

          else
          {
            EnumTagSinglePayload = 0;
          }
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, v12, v10);
        }

        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v34 = *v33;
        if (*v33 >= 0xFFFFFFFF)
        {
          LODWORD(v34) = -1;
        }

        return (v34 + 1);
      }
    }

    v35 = v9;
    v36 = v41;
  }

  return __swift_getEnumTagSinglePayload(v32, v35, v36);
}