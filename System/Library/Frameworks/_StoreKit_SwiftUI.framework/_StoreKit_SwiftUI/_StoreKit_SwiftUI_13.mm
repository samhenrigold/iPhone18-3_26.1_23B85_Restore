uint64_t sub_23BAAD30C(double a1)
{
  v1 = sub_23BBD9BF8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StructuredScrollViewGradientMaterialBackground(0);
  sub_23B9B6F84();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277CDF3D0])
  {
    return sub_23BBDBD38();
  }

  if (v5 != *MEMORY[0x277CDF3C0])
  {
    v8 = [objc_opt_self() systemBackgroundColor];
    v7 = sub_23BBDBCA8();
    (*(v2 + 8))(v4, v1);
    return v7;
  }

  return sub_23BBDBD18();
}

void *sub_23BAAD460@<X0>(uint64_t a1@<X8>)
{
  sub_23BAAD558(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v6 = sub_23BBDA388();
  v7 = sub_23BBDB398();
  v8 = sub_23BBDB3B8();
  sub_23BBD9B18();
  OUTLINED_FUNCTION_2_23();
  LOBYTE(__src[0]) = 0;
  v9 = sub_23BBDB3A8();
  sub_23BBD9B18();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = memcpy(a1, __dst, 0x110uLL);
  *(a1 + 272) = v6;
  *(a1 + 280) = v7;
  *(a1 + 288) = v8;
  *(a1 + 296) = v1;
  *(a1 + 304) = v2;
  *(a1 + 312) = v3;
  *(a1 + 320) = v4;
  *(a1 + 328) = 0;
  *(a1 + 336) = v9;
  *(a1 + 344) = v11;
  *(a1 + 352) = v13;
  *(a1 + 360) = v15;
  *(a1 + 368) = v17;
  *(a1 + 376) = 0;
  return result;
}

uint64_t sub_23BAAD558@<X0>(uint64_t x8_0@<X8>)
{
  v4 = *v2 * 25.0;
  v5 = sub_23BBDAB48();
  LOBYTE(v28[0]) = 0;
  sub_23BAAD8E4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v25, __src, sizeof(v25));
  sub_23BAAE9D4(__dst, v29, &qword_27E19EDC8, &qword_23BBF6FE8);
  sub_23B979910(v25, &qword_27E19EDC8, &qword_23BBF6FE8);
  memcpy(&v18[7], __dst, 0x58uLL);
  v20[0] = v5;
  v20[1] = 0;
  v21 = v28[0];
  memcpy(v22, v18, sizeof(v22));
  v23 = v4;
  sub_23BAAD30C(v6);
  v7 = sub_23BBDBD58();

  v8 = sub_23BBDC2F8();
  v10 = v9;
  v11 = sub_23BBDAB48();
  LOBYTE(v28[0]) = 0;
  sub_23BAAD8E4(__src);
  memcpy(v26, __src, sizeof(v26));
  memcpy(v27, __src, sizeof(v27));
  sub_23BAAE9D4(v26, v29, &qword_27E19EDC8, &qword_23BBF6FE8);
  sub_23B979910(v27, &qword_27E19EDC8, &qword_23BBF6FE8);
  memcpy(&v16[7], v26, 0x58uLL);
  v12 = v28[0];
  v28[0] = v8;
  v28[1] = v10;
  v28[2] = v11;
  v28[3] = 0;
  LOBYTE(v28[4]) = v12;
  memcpy(&v28[4] + 1, v16, 0x5FuLL);
  memcpy(v17, v28, sizeof(v17));
  v29[0] = v8;
  v29[1] = v10;
  v29[2] = v11;
  v29[3] = 0;
  v30 = v12;
  memcpy(v31, v16, sizeof(v31));
  sub_23BAAE9D4(v28, __src, &qword_27E19EDD0, &qword_23BBF6FF0);
  sub_23B979910(v29, &qword_27E19EDD0, &qword_23BBF6FF0);
  __src[0] = v7;
  memcpy(&__src[1], v17, 0x80uLL);
  v13 = sub_23BBDC318();
  sub_23BAAD7EC(__src, v13, v14, x8_0);
  sub_23B979910(__src, &qword_27E19EDD8, &qword_23BBF6FF8);
  return sub_23B979910(v20, &qword_27E19EDE0, &qword_23BBF7000);
}

uint64_t sub_23BAAD7EC@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, 0x88uLL);
  __srca[17] = a2;
  __srca[18] = a3;
  memcpy(a4, v4, 0x78uLL);
  memcpy((a4 + 120), __srca, 0x98uLL);
  v13 = a2;
  v14 = a3;
  sub_23BAAE9D4(__src, v10, &qword_27E19EDD8, &qword_23BBF6FF8);
  sub_23BAAE9D4(v4, v10, &qword_27E19EDE0, &qword_23BBF7000);
  sub_23BAAE9D4(__srca, v10, &qword_27E19EDE8, &qword_23BBF7008);
  return sub_23B979910(__dst, &qword_27E19EDE8, &qword_23BBF7008);
}

uint64_t sub_23BAAD8E4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EDF0, &qword_23BBF7010);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23BBF6BE0;
  *(v2 + 32) = sub_23BBDBD28();
  sub_23BBDBD38();
  v3 = sub_23BBDBD58();

  *(v2 + 40) = v3;
  sub_23BBDBD38();
  v4 = sub_23BBDBD58();

  *(v2 + 48) = v4;
  sub_23BBDBD38();
  v5 = sub_23BBDBD58();

  *(v2 + 56) = v5;
  sub_23BBDC418();
  sub_23BBDC428();
  MEMORY[0x23EEB4A00](v2);
  sub_23BBDA0A8();
  sub_23BBDC318();
  sub_23BBD9DE8();
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a1, __src, 0x58uLL);
  memcpy(v10, __src, sizeof(v10));
  sub_23BAAE9D4(__dst, &v7, &qword_27E19EDF8, &qword_23BBF7018);
  return sub_23B979910(v10, &qword_27E19EDF8, &qword_23BBF7018);
}

uint64_t sub_23BAADA90@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;

  if ((a2 & 1) == 0)
  {
    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(a1);
    (*(v8 + 8))(v12, v6);
    a1 = v18;
  }

  if (a1)
  {

    result = sub_23BBDC318();
    v16 = sub_23BAAEA30;
    v17 = 256;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    result = 0;
    v15 = 0;
  }

  *a3 = a1;
  a3[1] = v17;
  a3[2] = v16;
  a3[3] = a1;
  a3[4] = result;
  a3[5] = v15;
  return result;
}

void sub_23BAADC0C(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23BBDC438();
  v6 = v5;
  v8 = v7;

  sub_23BBD9E68();
  *a3 = a2;
  *(a3 + 8) = 256;
  *(a3 + 16) = 0x400921FB54442D18;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = v9;
}

uint64_t sub_23BAADC98@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDC298();
  OUTLINED_FUNCTION_4_1();
  v6 = OUTLINED_FUNCTION_17_0();
  v7(v6);
  v8 = sub_23BBDB3B8();
  sub_23BBD9B18();
  OUTLINED_FUNCTION_2_23();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EE00, &qword_23BBF7020);
  v10 = a1 + *(result + 36);
  *v10 = v8;
  *(v10 + 8) = v1;
  *(v10 + 16) = v2;
  *(v10 + 24) = v3;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0;
  return result;
}

uint64_t sub_23BAADD40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810, &qword_23BBE8398);
  __swift_allocate_value_buffer(v0, qword_27E19EC80);
  v1 = __swift_project_value_buffer(v0, qword_27E19EC80);
  v2 = _s34StructuredScrollViewBackgroundModeOMa(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_23BAADDBC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1977C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810, &qword_23BBE8398);
  v3 = __swift_project_value_buffer(v2, qword_27E19EC80);
  return sub_23BAAE9D4(v3, a1, &qword_27E199810, &qword_23BBE8398);
}

uint64_t sub_23BAADE60()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECB8, &qword_23BBF6C98);
  v0 = OUTLINED_FUNCTION_6_9();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_23BAADEC0()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECB8, &qword_23BBF6C98);
  v1 = OUTLINED_FUNCTION_6_9();

  return __swift_storeEnumTagSinglePayload(v1, v2, v0, v3);
}

void sub_23BAADF48(uint64_t a1)
{
  if (!qword_27E19ECD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199810, &qword_23BBE8398);
    v1 = sub_23BBD9C18();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19ECD0);
    }
  }
}

unint64_t sub_23BAAE010()
{
  result = qword_27E19ED20;
  if (!qword_27E19ED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ED18, &qword_23BBF6D58);
    sub_23BAAE09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ED20);
  }

  return result;
}

unint64_t sub_23BAAE09C()
{
  result = qword_27E19ED28;
  if (!qword_27E19ED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ED10, &qword_23BBF6D50);
    sub_23BAAE128();
    sub_23BAAE210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ED28);
  }

  return result;
}

unint64_t sub_23BAAE128()
{
  result = qword_27E19ED30;
  if (!qword_27E19ED30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ED08, &qword_23BBF6D48);
    sub_23BAAE2F8(&qword_27E19ED38, type metadata accessor for StructuredScrollViewGradientMaterialBackground, &unk_23BBF6F98);
    sub_23B97B518(&qword_27E19ED40, &qword_27E19ED48, &qword_23BBF6D90, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ED30);
  }

  return result;
}

unint64_t sub_23BAAE210()
{
  result = qword_27E19ED50;
  if (!qword_27E19ED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ECE8, &qword_23BBF6D28);
    sub_23BAAE2F8(&qword_27E19ED58, type metadata accessor for StructuredScrollViewMaterialBackground, &unk_23BBF6F48);
    sub_23BAAE8FC(&qword_27E19ED60, &qword_27E19ED68, &qword_23BBF6D98, sub_23BAAE340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ED50);
  }

  return result;
}

uint64_t sub_23BAAE2F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BAAE340()
{
  result = qword_27E19ED70;
  if (!qword_27E19ED70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ED78, &qword_23BBF6DA0);
    sub_23BAAE3F8();
    sub_23B97B518(&qword_27E19ED88, &qword_27E19ED90, &qword_23BBF6DA8, MEMORY[0x277CE08B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ED70);
  }

  return result;
}

unint64_t sub_23BAAE3F8()
{
  result = qword_27E19ED80;
  if (!qword_27E19ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ED80);
  }

  return result;
}

uint64_t sub_23BAAE44C(uint64_t a1, uint64_t a2)
{
  v4 = _s34StructuredScrollViewBackgroundModeOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAAE4B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return j__swift_retain_1();
  }

  else
  {
    j__swift_retain_1();
  }
}

double sub_23BAAE504(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    j__swift_release(a1);
  }

  else
  {
    j__swift_release(a1);
  }

  return result;
}

uint64_t sub_23BAAE558(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BAAE5B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BAAE638()
{
  OUTLINED_FUNCTION_19();
  sub_23BBDC298();
  v0 = OUTLINED_FUNCTION_6_9();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_23BAAE68C()
{
  OUTLINED_FUNCTION_19();
  sub_23BBDC298();
  v1 = OUTLINED_FUNCTION_6_9();

  return __swift_storeEnumTagSinglePayload(v1, v2, v0, v3);
}

uint64_t sub_23BAAE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BAAE76C()
{
  OUTLINED_FUNCTION_19();
  v3 = *(v2 + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE98, qword_23BBFF7E0);

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_23BAAE7DC()
{
  OUTLINED_FUNCTION_19();
  v3 = *(v2 + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE98, qword_23BBFF7E0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

void sub_23BAAE83C(uint64_t a1, double a2)
{
  sub_23B985138(319, a2);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23BAAE8FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23BAAE3F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BAAE9D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

unint64_t sub_23BAAEA3C()
{
  result = qword_27E19EE08;
  if (!qword_27E19EE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EE10, &qword_23BBF7028);
    sub_23BAAEAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EE08);
  }

  return result;
}

unint64_t sub_23BAAEAC8()
{
  result = qword_27E19EE18;
  if (!qword_27E19EE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EE20, &qword_23BBF7030);
    sub_23BAAEB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EE18);
  }

  return result;
}

unint64_t sub_23BAAEB54()
{
  result = qword_27E19EE28;
  if (!qword_27E19EE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EE30, &qword_23BBF7038);
    sub_23BAAEBE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EE28);
  }

  return result;
}

unint64_t sub_23BAAEBE0()
{
  result = qword_27E19EE38;
  if (!qword_27E19EE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EE40, &unk_23BBF7040);
    sub_23B97B518(&qword_27E19EE48, &qword_27E19EDE0, &qword_23BBF7000, &unk_23BBF69C8);
    sub_23B97B518(&qword_27E19EE50, &qword_27E19EDE8, &qword_23BBF7008, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EE38);
  }

  return result;
}

unint64_t sub_23BAAECC8()
{
  result = qword_27E19EE58;
  if (!qword_27E19EE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EE00, &qword_23BBF7020);
    sub_23B9A2648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EE58);
  }

  return result;
}

unint64_t sub_23BAAED58()
{
  result = qword_27E19EE60;
  if (!qword_27E19EE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EE68, &qword_23BBF7058);
    sub_23BAAEDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EE60);
  }

  return result;
}

unint64_t sub_23BAAEDDC()
{
  result = qword_27E19EE70;
  if (!qword_27E19EE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EE78, &qword_23BBF7060);
    sub_23B97B518(&qword_27E19EE80, &qword_27E19EE88, &qword_23BBF7068, MEMORY[0x277CDF3A0]);
    sub_23B97B518(&qword_27E19EE90, &qword_27E19EE98, &unk_23BBF7070, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EE70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_12(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BAAEFB0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23BAAF074(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t _s17AccessoryViewHostVMa(uint64_t a1)
{
  result = qword_27E19EEA0;
  if (!qword_27E19EEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAAF16C(uint64_t a1, double a2)
{
  result = type metadata accessor for SubscriptionOptionGroupAccessorySubview(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BAAF1FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s17AccessoryViewHostVMa(0) + 20);
  sub_23BAAF270(v1, a1, v4);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EEB0, qword_23BBF70E8) + 52);

  return sub_23B97933C(v1 + v3, a1 + v5);
}

uint64_t sub_23BAAF270(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23BAAF2D8()
{
  result = qword_27E19EEB8;
  if (!qword_27E19EEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EEB0, qword_23BBF70E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EEB8);
  }

  return result;
}

uint64_t sub_23BAAF33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_23BAAF270(a1, a3, a4);
  v6 = _s17AccessoryViewHostVMa(0);
  return sub_23B97933C(a2, a3 + *(v6 + 20));
}

uint64_t sub_23BAAF390@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197880, &qword_23BBE38D8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EEC0, qword_23BBF7110);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EEC8, &unk_23BBF7D30);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640, &qword_23BBEDCB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = *(type metadata accessor for SubscriptionStoreContentConfiguration(0) + 20);
    v38 = v2;
    v24 = v2 + v23;
    v25 = type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
    sub_23B99FCE0(v24 + *(v25 + 20), v18, &qword_27E199640, &qword_23BBEDCB0);
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {
      sub_23B979910(v18, &qword_27E199640, &qword_23BBEDCB0);
LABEL_8:
      v34 = 1;
      v35 = v42;
      return __swift_storeEnumTagSinglePayload(v35, v34, 1, v41);
    }

    sub_23BAAF928(v18, v22, v26);
    v27 = sub_23BB11230();
    sub_23B9B749C(v22, v28);
    v2 = v38;
    if (!v27)
    {
      goto LABEL_8;
    }
  }

  v29 = v2;
  v30 = v2 + *(type metadata accessor for SubscriptionStoreContentConfiguration(0) + 20);
  v31 = type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
  sub_23B99FCE0(v30 + *(v31 + 20), v15, &qword_27E199640, &qword_23BBEDCB0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v19);
  v33 = sub_23B979910(v15, &qword_27E199640, &qword_23BBEDCB0);
  if (EnumTagSinglePayload == 1 && (v33 = sub_23BA226A4(), (v33 & 1) == 0))
  {
    swift_storeEnumTagMultiPayload();
    sub_23B9B0108();
    sub_23BAAF7BC();
    sub_23BBDACD8();
  }

  else
  {
    MEMORY[0x28223BE20](v33);
    *(&v37 - 2) = v29;
    sub_23BAB3DB4(sub_23BAAF908, v6);
    sub_23B99FCE0(v6, v9, &qword_27E197880, &qword_23BBE38D8);
    swift_storeEnumTagMultiPayload();
    sub_23B9B0108();
    sub_23BAAF7BC();
    sub_23BBDACD8();
    sub_23B979910(v6, &qword_27E197880, &qword_23BBE38D8);
  }

  v35 = v42;
  sub_23BAAF898(v12, v42);
  v34 = 0;
  return __swift_storeEnumTagSinglePayload(v35, v34, 1, v41);
}

unint64_t sub_23BAAF7BC()
{
  result = qword_27E19EED0;
  if (!qword_27E19EED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197880, &qword_23BBE38D8);
    sub_23BAAF840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EED0);
  }

  return result;
}

unint64_t sub_23BAAF840()
{
  result = qword_27E19EED8;
  if (!qword_27E19EED8)
  {
    _s17AccessoryViewHostVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EED8);
  }

  return result;
}

uint64_t sub_23BAAF898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EEC8, &unk_23BBF7D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAAF928(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BAAF99C(uint64_t (*a1)(void *))
{
  sub_23B9A8E74();
  v2 = sub_23BBD9CB8();
  if (v4 == 2 || (v4 & 1) != 0)
  {
    a1(v2);
    return sub_23BBD9CA8();
  }

  else
  {
    sub_23BBD9CA8();
    return sub_23BBD9C98();
  }
}

uint64_t sub_23BAAFA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BAAFAA0();

  return MEMORY[0x282130FC0](a1, a2, a3, a4, v8);
}

unint64_t sub_23BAAFAA0()
{
  result = qword_27E19EEE0;
  if (!qword_27E19EEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EEE8, &qword_23BBF7198);
    sub_23BAAFB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EEE0);
  }

  return result;
}

unint64_t sub_23BAAFB24()
{
  result = qword_27E19EEF0;
  if (!qword_27E19EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EEF0);
  }

  return result;
}

_BYTE *_s14StoreKitSourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BAAFC44);
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

uint64_t sub_23BAAFC80@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  if (*(result + 16) < 2uLL)
  {
    sub_23BAAFCFC(a2);

    v3 = 0;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
  }

  else
  {
    v5 = *(a2 + 16);
    *(a3 + 8) = *a2;
    *(a3 + 24) = v5;
    *(a3 + 40) = *(a2 + 32);
    *(a3 + 56) = *(a2 + 48);
  }

  *a3 = v3;
  return result;
}

uint64_t sub_23BAAFCFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EEF8, &qword_23BBF7220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_s11AnyHashableVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_23BAAFD90(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23BAAFDD0(uint64_t result, int a2, int a3)
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

uint64_t sub_23BAAFE4C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EEF8, &qword_23BBF7220);
  sub_23BBDC118();
  sub_23B99FCE0(v6, v5, &qword_27E19EEF8, &qword_23BBF7220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197878, &qword_23BBE38D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EF00, &unk_23BBF7320);
  sub_23BAB033C();
  sub_23BAB03B8();
  sub_23BBDC058();
  sub_23BAAFCFC(v6);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EF18, &qword_23BBF7378);
  v4 = a1 + *(result + 36);
  *v4 = KeyPath;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_23BAAFF80(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EF20, &qword_23BBF7380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EF28, &qword_23BBF7388);
  sub_23B97B518(&qword_27E19EF30, &qword_27E19EF20, &qword_23BBF7380, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197880, &qword_23BBE38D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197878, &qword_23BBE38D0);
  sub_23BAAF7BC();
  sub_23BAB033C();
  swift_getOpaqueTypeConformance2();
  sub_23BAB0E20(&qword_27E19EF38, type metadata accessor for SubscriptionStoreContentConfiguration, &unk_23BBEDCF8);
  return sub_23BBDC198();
}

uint64_t sub_23BAB010C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640, &qword_23BBEDCB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197880, &qword_23BBE38D8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  sub_23B99FCE0(a1 + *(v14 + 20), v10, &qword_27E199640, &qword_23BBEDCB0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) == 1)
  {
    v16 = _s17AccessoryViewHostVMa(0);
    v17 = v13;
    v18 = 1;
  }

  else
  {
    sub_23BAAF928(v10, v7, v15);
    sub_23BAAF270(v7, v13, v19);
    v20 = _s17AccessoryViewHostVMa(0);
    sub_23B97933C(a1, &v13[*(v20 + 20)]);
    sub_23B9B749C(v7, v21);
    v17 = v13;
    v18 = 0;
    v16 = v20;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
  sub_23B97933C(a1, v26);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197870, &qword_23BBE38C8) + 36);
  v23 = v26[1];
  *v22 = v26[0];
  *(v22 + 16) = v23;
  *(v22 + 32) = v27;
  *(v22 + 40) = 1;
  return sub_23BAB04B0(v13, a2);
}

unint64_t sub_23BAB033C()
{
  result = qword_27E19EF08;
  if (!qword_27E19EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197878, &qword_23BBE38D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EF08);
  }

  return result;
}

unint64_t sub_23BAB03B8()
{
  result = qword_27E19EF10;
  if (!qword_27E19EF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EF00, &unk_23BBF7320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197880, &qword_23BBE38D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197878, &qword_23BBE38D0);
    sub_23BAAF7BC();
    sub_23BAB033C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EF10);
  }

  return result;
}

uint64_t sub_23BAB04B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197880, &qword_23BBE38D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAB052C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
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

uint64_t sub_23BAB056C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

unint64_t sub_23BAB05C4()
{
  result = qword_27E19EF40;
  if (!qword_27E19EF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EF18, &qword_23BBF7378);
    sub_23B97B518(&qword_27E19EF48, &qword_27E19EF50, &qword_23BBF7420, MEMORY[0x277CDF038]);
    sub_23BAB067C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EF40);
  }

  return result;
}

unint64_t sub_23BAB067C()
{
  result = qword_27E19EF58;
  if (!qword_27E19EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EF58);
  }

  return result;
}

uint64_t sub_23BAB06EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v33 = a2;
  v34 = a4;
  v31 = a1;
  v30 = sub_23BBDA928();
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDADB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EF60, &qword_23BBF7478);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9C8, &qword_23BBF7480);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  sub_23BBDADA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EF68, &qword_23BBF7488);
  sub_23B97B518(&qword_27E19EF70, &qword_27E19EF68, &qword_23BBF7488, MEMORY[0x277CE04B0]);
  sub_23BBDB788();
  (*(v6 + 8))(v8, v5);
  v17 = v32;
  v18 = sub_23BBDB3B8();
  sub_23BBD9B18();
  v19 = &v12[*(v10 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_23BBDC318();
  sub_23BBDA488();
  sub_23BAB0AF0(v12, v16);
  memcpy(&v16[*(v14 + 44)], __src, 0x70uLL);
  sub_23BBDB388();
  if ((v17 & 0x100) == 0)
  {
    v24 = v33;

    sub_23BBDD5A8();
    v25 = sub_23BBDB338();
    sub_23BBD9978();

    v26 = v28;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9846DC(v24, v17, 0);
    (*(v29 + 8))(v26, v30);
    LOBYTE(v17) = v35;
  }

  sub_23BAA47A4(v17 & 1, v34);
  return sub_23BAB0B58(v16);
}

uint64_t sub_23BAB0AF0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EF60, &qword_23BBF7478);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BAB0B58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9C8, &qword_23BBF7480);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(a1);
  return a1;
}

unint64_t sub_23BAB0BBC()
{
  result = qword_27E19EF78;
  if (!qword_27E19EF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E9D0, &unk_23BBF6430);
    sub_23BAB0C78();
    sub_23BAB0E20(&qword_27E1985A8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EF78);
  }

  return result;
}

unint64_t sub_23BAB0C78()
{
  result = qword_27E19EF80;
  if (!qword_27E19EF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E9C8, &qword_23BBF7480);
    sub_23BAB0D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EF80);
  }

  return result;
}

unint64_t sub_23BAB0D04()
{
  result = qword_27E19EF88;
  if (!qword_27E19EF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EF60, &qword_23BBF7478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EF68, &qword_23BBF7488);
    sub_23BBDADB8();
    sub_23B97B518(&qword_27E19EF70, &qword_27E19EF68, &qword_23BBF7488, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EF88);
  }

  return result;
}

uint64_t sub_23BAB0E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BAB0E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2 + *(type metadata accessor for SubscribeButtonTopCaptionModifier(0) + 24);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v10, 0);
    (*(v6 + 8))(v8, v5);
    if (v15[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = sub_23BBDAB58();
    goto LABEL_6;
  }

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_23BBDAB48();
LABEL_6:
  *a2 = v11;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFB8, &qword_23BBF7610);
  return sub_23BAB1020(v2, a1, a2 + *(v13 + 44));
}

uint64_t sub_23BAB1020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v38 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFC0, &qword_23BBF7618);
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v36 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFC8, &qword_23BBF7620);
  MEMORY[0x28223BE20](v36);
  v8 = (&v36 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1A8, &qword_23BBE98B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFD0, &qword_23BBF7628);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_23B979910(v11, &qword_27E19A1A8, &qword_23BBE98B0);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v36);
  }

  else
  {
    sub_23BAB2B88();
    *v8 = sub_23BBDC308();
    v8[1] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFE0, &qword_23BBF7638);
    sub_23BAB1494(a1, v14, v8 + *(v22 + 44));
    KeyPath = swift_getKeyPath();
    v24 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFE8, &qword_23BBF7640) + 36);
    *v24 = KeyPath;
    v24[8] = 0;
    *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFF0, &qword_23BBF7648) + 36)) = 256;
    LOBYTE(KeyPath) = sub_23BBDB3A8();
    sub_23BBD9B18();
    v25 = v36;
    v26 = v8 + *(v36 + 36);
    *v26 = KeyPath;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    sub_23B979688();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v25);
    sub_23BAB2780(v14, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
  }

  sub_23B979510();
  v31 = *(v4 + 16);
  v32 = v39;
  v31(v6, v37, v39);
  v33 = v38;
  sub_23B979510();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFD8, &qword_23BBF7630);
  v31((v33 + *(v34 + 48)), v6, v32);
  sub_23B979910(v20, &qword_27E19EFD0, &qword_23BBF7628);
  (*(v4 + 8))(v6, v32);
  return sub_23B979910(v17, &qword_27E19EFD0, &qword_23BBF7628);
}

uint64_t sub_23BAB1494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v56 = a3;
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CD48, &qword_23BBF7650);
  MEMORY[0x28223BE20](v52);
  v53 = v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFF8, &qword_23BBF7658);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = v47 - v10;
  v11 = type metadata accessor for SubscribeButtonTopCaptionModifier(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F000, &qword_23BBF7660);
  MEMORY[0x28223BE20](v50);
  v47[2] = v47 - v13;
  v14 = sub_23BBDA928();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F008, &unk_23BBF7668);
  MEMORY[0x28223BE20](v18 - 8);
  v51 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v57 = v47 - v21;
  v22 = a1 + *(v11 + 24);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    if (v23)
    {
LABEL_3:
      v24 = 1;
      goto LABEL_6;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v47[0] = v14;
    v25 = sub_23BBDB338();
    v47[1] = v12;
    v26 = v25;
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v23, 0);
    (*(v15 + 8))(v17, v47[0]);
    if (v58)
    {
      goto LABEL_3;
    }
  }

  v27 = *(*(a1 + *(v11 + 20)) + 16);
  v58 = 0;
  v59 = v27;
  swift_getKeyPath();
  sub_23BAB2D44();
  swift_allocObject();
  sub_23BAB2B88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DFF8, &qword_23BBF41F0);
  sub_23BAB2C60();
  sub_23BBDC188();
  sub_23B979688();
  v24 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v57, v24, 1, v50);
  v28 = v48;
  sub_23BAB2D44();
  v29 = sub_23BB95790(v28);
  v31 = v30;
  v33 = v32;
  LODWORD(v58) = sub_23BBDAF28();
  v34 = sub_23BBDB5D8();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_23BA51C9C(v29, v31, v33 & 1);

  v58 = v34;
  v59 = v36;
  v60 = v38 & 1;
  v61 = v40;
  v41 = v53;
  sub_23BBDBA68();
  sub_23BA51C9C(v34, v36, v38 & 1);

  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  sub_23BA5204C();

  v42 = v54;
  sub_23BBDBA28();

  sub_23B979910(v41, &qword_27E19CD48, &qword_23BBF7650);
  v43 = v57;
  v44 = v51;
  sub_23B979510();
  v45 = v55;
  sub_23B979510();
  sub_23B979510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F010, &qword_23BBF7698);
  sub_23B979510();
  sub_23B979910(v42, &qword_27E19EFF8, &qword_23BBF7658);
  sub_23B979910(v43, &qword_27E19F008, &unk_23BBF7668);
  sub_23B979910(v45, &qword_27E19EFF8, &qword_23BBF7658);
  return sub_23B979910(v44, &qword_27E19F008, &unk_23BBF7668);
}

void sub_23BAB1BEC(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) - 8;
  MEMORY[0x28223BE20](v6);
  v7 = *a1;
  v8 = type metadata accessor for SubscribeButtonTopCaptionModifier(0);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*(a2 + *(v8 + 20)) + 16))
  {
    sub_23BAB2D44();
    sub_23BB94F68();
    *a3 = v9;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11 & 1;
    *(a3 + 24) = v12;
    return;
  }

  __break(1u);
}

uint64_t sub_23BAB1D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_23BBDA928();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F028, &qword_23BBF7780);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = sub_23BBDB538();
  KeyPath = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F030, &qword_23BBF77B8);
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  v18 = &v14[*(v12 + 44)];
  *v18 = KeyPath;
  v18[1] = v15;
  if ((a3 & 1) == 0)
  {

    sub_23BBDD5A8();
    v19 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(a2, 0);
    (*(v8 + 8))(v10, v7);
    LOBYTE(a2) = v26;
  }

  v20 = (a2 & 1) == 0;
  v21 = swift_getKeyPath();
  v22 = v25;
  sub_23B979688();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F038, &qword_23BBF77F0);
  v24 = v22 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v20;
  return result;
}

uint64_t sub_23BAB1F90()
{
  sub_23BAB2390();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BAB2008()
{
  v0 = sub_23BBDA308();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BBDA6B8();
  v4 = sub_23BBDA2E8();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_23BAB2390();
  sub_23BBDA958();
  return v6[15];
}

uint64_t sub_23BAB2114(uint64_t (*a1)(double), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1A8, &qword_23BBE98B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for SubscribeButtonTopCaptionModifier(0);
  OUTLINED_FUNCTION_4_1();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v19 = a1(v16);
    v20 = a3(v19);
  }

  else
  {
    v21 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v21);
    v20 = MEMORY[0x277D84F90];
  }

  sub_23B979688();
  *&v18[*(v14 + 20)] = v20;
  v22 = &v18[*(v14 + 24)];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  MEMORY[0x23EEB43C0](v18, a6, v14, v24);
  return sub_23BAB2780(v18, type metadata accessor for SubscribeButtonTopCaptionModifier);
}

double sub_23BAB22C4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_23BBDB748();

  return result;
}

uint64_t sub_23BAB2338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BAB1F90();
  *a1 = result & 1;
  return result;
}

unint64_t sub_23BAB2390()
{
  result = qword_27E19EF90;
  if (!qword_27E19EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EF90);
  }

  return result;
}

uint64_t type metadata accessor for SubscribeButtonTopCaptionModifier(uint64_t a1)
{
  result = qword_27E19EF98;
  if (!qword_27E19EF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAB2430@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BAB2008();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BAB2484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1A8, &qword_23BBE98B0);
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

uint64_t sub_23BAB2550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1A8, &qword_23BBE98B0);
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

void sub_23BAB2604(uint64_t a1)
{
  sub_23BAB2700(319, &qword_27E19EFA8, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23BAB2700(319, &qword_27E19EFB0, type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair, MEMORY[0x277D83940]);
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

void sub_23BAB2700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23BAB2780(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BAB27D8()
{
  v3 = type metadata accessor for SubscribeButtonTopCaptionModifier(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = v0 + v4;
  v6 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  if (__swift_getEnumTagSinglePayload(v0 + v4, 1, v6))
  {
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_8;
  }

  v7 = _s11PriceStringOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_23BBDCD08();
      OUTLINED_FUNCTION_4_1();
      (*(v13 + 8))(v0 + v4, v14);
      break;
    case 1:

      _s22LocalizedPriceResourceVMa(0);
      OUTLINED_FUNCTION_1_38();
      v9 = sub_23BBDCD08();
      OUTLINED_FUNCTION_4_1();
      v26 = *(v10 + 8);
      v26(v5 + v2, v9);
      v1 = v5 + *(v1 + 24);
      _s22LocalizedPriceResourceV6FormatOMa(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 == 3 || v11 == 2)
      {

        v2 = _s15PricePropertiesVMa(0);
        v25 = *(v2 + 20);
        sub_23BBDCBE8();
        OUTLINED_FUNCTION_4_1();
        (*(v12 + 8))(v1 + v25);
        v26(v1 + *(v2 + 24), v9);
      }

      break;
    case 0:

      break;
  }

  v15 = v5 + *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v7))
  {
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 == 2)
    {
      sub_23BBDCD08();
      OUTLINED_FUNCTION_4_1();
      (*(v23 + 8))(v15, v24);
      goto LABEL_14;
    }

    if (v17 == 1)
    {

      _s22LocalizedPriceResourceVMa(0);
      OUTLINED_FUNCTION_1_38();
      v18 = sub_23BBDCD08();
      OUTLINED_FUNCTION_4_1();
      v27 = *(v19 + 8);
      v27(v15 + v2, v18);
      v20 = v15 + *(v1 + 24);
      _s22LocalizedPriceResourceV6FormatOMa(0);
      v21 = swift_getEnumCaseMultiPayload();
      if (v21 == 3 || v21 == 2)
      {

        _s15PricePropertiesVMa(0);
        OUTLINED_FUNCTION_1_38();
        sub_23BBDCBE8();
        OUTLINED_FUNCTION_4_1();
        (*(v22 + 8))(v20 + v2);
        v27(v20 + *(v1 + 24), v18);
      }

      goto LABEL_14;
    }

    if (v17)
    {
      goto LABEL_14;
    }

LABEL_8:
  }

LABEL_14:

  sub_23B97B5C0(*(v5 + *(v3 + 24)), *(v5 + *(v3 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_23BAB2B88()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

void sub_23BAB2BE0(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SubscribeButtonTopCaptionModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_23BAB1BEC(a1, v6, a2);
}

unint64_t sub_23BAB2C60()
{
  result = qword_27E19E008;
  if (!qword_27E19E008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DFF8, &qword_23BBF41F0);
    sub_23BA86898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E008);
  }

  return result;
}

unint64_t sub_23BAB2CEC()
{
  result = qword_27E198368;
  if (!qword_27E198368)
  {
    sub_23BBDB2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198368);
  }

  return result;
}

uint64_t sub_23BAB2D44()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

unint64_t sub_23BAB2E20()
{
  result = qword_27E19F040;
  if (!qword_27E19F040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F038, &qword_23BBF77F0);
    sub_23BAB2ED8();
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8, &qword_23BBE6C10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F040);
  }

  return result;
}

unint64_t sub_23BAB2ED8()
{
  result = qword_27E19F048;
  if (!qword_27E19F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F028, &qword_23BBF7780);
    sub_23B97B518(&qword_27E19F050, &qword_27E19F030, &qword_23BBF77B8, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F048);
  }

  return result;
}

uint64_t sub_23BAB2FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  v6 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v54 = _s22LocalizedPriceResourceV6FormatOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v57 = v18;
  v58 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  v22 = _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v26 = (v25 - v24);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getAtKeyPath();

  v52 = v62;
  v53 = v61;
  v59 = swift_getKeyPath();
  swift_getKeyPath();
  v55 = v21;
  swift_getAtKeyPath();

  v27 = type metadata accessor for SubscriptionComparator.Compared(0);
  sub_23B99FCE0(a1 + *(v27 + 20), v5, &unk_27E19FEF0, &unk_23BBE3E40);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_23B979910(v5, &unk_27E19FEF0, &unk_23BBE3E40);
    *v16 = 256;
    v28 = (v16 + 2);
  }

  else
  {
    (*(v8 + 32))(v12, v5, v6);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
    v30 = *(v29 + 48);
    v31 = *(v29 + 64);
    v51 = v6;
    v28 = (v16 + v31);
    v32 = sub_23BBDCC18();
    v49 = v33;
    v50 = v32;
    v34 = v22;
    v35 = _s15PricePropertiesVMa(0);
    sub_23BBDCBF8();
    sub_23BBDCC68();
    v36 = sub_23BBDCC08();
    (*(v8 + 8))(v12, v51);
    v37 = v49;
    *v16 = v50;
    *(v16 + 8) = v37;
    v38 = *(v35 + 28);
    v22 = v34;
    *(v16 + v38) = v36;
    *(v16 + v30) = 0;
  }

  *v28 = 1;
  swift_storeEnumTagMultiPayload();
  v39 = v52;
  *v26 = v53;
  *(v26 + 1) = v39;
  v40 = _s22LocalizedPriceResourceVMa(0);
  (*(v57 + 32))(&v26[*(v40 + 20)], v55, v58);
  sub_23BAB3AD8(v16, &v26[*(v40 + 24)], _s22LocalizedPriceResourceV6FormatOMa);
  swift_storeEnumTagMultiPayload();
  v41 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  v42 = v56;
  v43 = (v56 + *(v41 + 20));
  v44 = swift_getKeyPath();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_28();
  swift_getKeyPath();
  swift_getAtKeyPath();

  v45 = v61;
  v46 = v62;
  v47 = swift_getKeyPath();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_28();
  swift_getKeyPath();
  swift_getAtKeyPath();

  sub_23BAB3750(4u, a1, v43 + *(v40 + 24));
  *v43 = v45;
  v43[1] = v46;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v22);
  return sub_23BAB3AD8(v26, v42, _s11PriceStringOMa);
}

uint64_t sub_23BAB34DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68, qword_23BBE3D90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for Subscription(0);
  v11 = a1 + *(v10 + 20);
  v12 = *(v11 + 8);
  if (v12 == 2)
  {
    v13 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v15 = v14;
  }

  else
  {
    v13 = *v11;
    v15 = v12 & 1;
  }

  sub_23B99FCE0(a2, v9, qword_27E197A68, qword_23BBE3D90);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_23B979910(v9, qword_27E197A68, qword_23BBE3D90);
    sub_23B979A38(v13, v15, v12 == 2);
  }

  else
  {
    v16 = &v9[*(v10 + 20)];
    v17 = v16[8];
    if (v17 == 2)
    {
      v18 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v20 = v19;
    }

    else
    {
      v18 = *v16;
      v20 = v17 & 1;
    }

    v21 = v17 == 2;
    v22 = v12 == 2;
    sub_23BA1D2DC(v9);
    v23 = sub_23BBA7A24(v13, v15, v22, v18, v20, v21);
    sub_23B979A38(v18, v20, v21);
    sub_23B979A38(v13, v15, v22);
    if (v23)
    {
      return 0;
    }
  }

  sub_23B99FCE0(a2, v6, qword_27E197A68, qword_23BBE3D90);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) != 1)
  {
    swift_getKeyPath();
    sub_23B9FCC2C();
    v24 = v25;

    sub_23BA1D2DC(v6);
    return v24;
  }

  sub_23B979910(v6, qword_27E197A68, qword_23BBE3D90);
  return 0;
}

uint64_t sub_23BAB3750@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_23BBDCC88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 == 4)
  {
    v14 = 1;
  }

  else
  {
    v14 = a1;
  }

  v15 = type metadata accessor for SubscriptionComparator.Compared(0);
  sub_23B99FCE0(a2 + *(v15 + 20), v9, &unk_27E19FEF0, &unk_23BBE3E40);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_23B979910(v9, &unk_27E19FEF0, &unk_23BBE3E40);
    *a3 = v14;
    *(a3 + 1) = 1;
    v16 = (a3 + 2);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8, &qword_23BBE9F20);
    v25 = *(v17 + 48);
    v16 = (a3 + *(v17 + 64));
    v18 = sub_23BBDCC18();
    v20 = v19;
    v21 = _s15PricePropertiesVMa(0);
    sub_23BBDCBF8();
    sub_23BBDCC68();
    v22 = sub_23BBDCC08();
    (*(v11 + 8))(v13, v10);
    *a3 = v18;
    *(a3 + 8) = v20;
    *(a3 + *(v21 + 28)) = v22;
    *(a3 + v25) = v14;
  }

  *v16 = 1;
  _s22LocalizedPriceResourceV6FormatOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BAB3A60@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_23BA52DBC(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23BAB3AD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BAB3B58()
{
  sub_23BAB3CF4();
  sub_23BBDA958();
  return v1;
}

double sub_23BAB3BD0(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23BBDB748();

  return result;
}

uint64_t sub_23BAB3C44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BAB3B58();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BAB3C74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BAB3B58();
  *a1 = result & 1;
  return result;
}

unint64_t sub_23BAB3CF4()
{
  result = qword_27E19F060[0];
  if (!qword_27E19F060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19F060);
  }

  return result;
}

void *sub_23BAB3D58(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a3;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BAB3DB4@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v6 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640, &qword_23BBEDCB0);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_23BAAE9D4(v3, &v17 - v12, &qword_27E199640, &qword_23BBEDCB0);
  v14 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  sub_23BAB9504(v13, v9, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
  v18(v9);
  if (!v4)
  {
    sub_23BAB95BC(v9, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
    v14 = 0;
LABEL_4:
    v15 = _s17AccessoryViewHostVMa(0);
    return __swift_storeEnumTagSinglePayload(a2, v14, 1, v15);
  }

  result = sub_23BAB95BC(v9, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
  __break(1u);
  return result;
}

uint64_t sub_23BAB3F68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  sub_23BAAE9D4(a1, &v5 - v3, qword_27E19A490, qword_23BBEA4A0);
  sub_23BBDBF58();
  return sub_23B9846E8(a1, qword_27E19A490, qword_23BBEA4A0);
}

uint64_t sub_23BAB4024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199640, &qword_23BBEDCB0);
  v50 = *(a1 + 32);
  v54 = *(a1 + 16);
  v46 = v54;
  v49 = *(a1 + 48);
  v4 = OUTLINED_FUNCTION_19_14();
  v6 = _s21NavigationDestinationVMa(v4, v5);
  v7 = sub_23BAB87A8();
  OUTLINED_FUNCTION_2_29();
  v68 = v3;
  v69 = v6;
  v70 = v7;
  WitnessTable = swift_getWitnessTable();
  v8 = OUTLINED_FUNCTION_19_14();
  v47 = type metadata accessor for EnvironmentSharingNavigationLink(v8, v9);
  v48 = sub_23BBDA358();
  v10 = *(a1 + 40);
  OUTLINED_FUNCTION_19_14();
  v53 = sub_23BBDC1A8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F100, &unk_23BBF7A80);
  type metadata accessor for SubscriptionStoreContentConfiguration(255);
  sub_23BBDA0D8();
  OUTLINED_FUNCTION_48();
  sub_23BBDA378();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B458, &qword_23BBEC940);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BAB8874();
  OUTLINED_FUNCTION_13_21();
  sub_23BABA2B0(v12, v13, &unk_23BBEDCF8);
  OUTLINED_FUNCTION_4_24();
  v76 = swift_getWitnessTable();
  v77 = sub_23BA3D7D0();
  v45 = MEMORY[0x277CDFAD8];
  v14 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_19();
  v74 = v14;
  v75 = sub_23B97B518(v15, &qword_27E19B458, &qword_23BBEC940, v16);
  v73 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_27();
  OUTLINED_FUNCTION_19_14();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDD648();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = AssociatedTypeWitness;
  v69 = MEMORY[0x277D84030];
  v70 = v11;
  WitnessTable = AssociatedConformanceWitness;
  v72 = MEMORY[0x277D84038];
  OUTLINED_FUNCTION_19_14();
  sub_23BBDC1A8();
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  sub_23BBDACE8();
  v19 = sub_23BBDBE28();
  OUTLINED_FUNCTION_7();
  v46 = v20;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F128, &unk_23BBF8210);
  v24 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v45 - v31;
  v55 = v54;
  v56 = v50;
  v57 = v10;
  v58 = v49;
  v59 = v51;
  OUTLINED_FUNCTION_12_19();
  v33 = swift_getWitnessTable();
  v34 = sub_23BAB892C();
  v66 = v33;
  v67 = v34;
  v65 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_18();
  v35 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_5();
  v36 = swift_getWitnessTable();
  v63 = v35;
  v64 = v36;
  OUTLINED_FUNCTION_2_7();
  v37 = swift_getWitnessTable();
  sub_23BBDBE18();
  v62 = v37;
  OUTLINED_FUNCTION_3_4();
  v38 = swift_getWitnessTable();
  v39 = sub_23BABED24(0, v19, v38);
  (*(v46 + 8))(v23, v19, v39);
  OUTLINED_FUNCTION_2_9();
  v42 = sub_23B97B518(v40, &qword_27E19F128, &unk_23BBF8210, v41);
  v60 = v38;
  v61 = v42;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v43 = *(v26 + 8);
  v43(v29, v24);
  sub_23B9D2D88();
  return (v43)(v32, v24);
}

uint64_t sub_23BAB4630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X8>)
{
  v199 = a7;
  v198 = a6;
  v195 = a5;
  v197 = a4;
  v196 = a3;
  v192 = a1;
  v186 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F100, &unk_23BBF7A80);
  v14 = type metadata accessor for SubscriptionStoreContentConfiguration(255);
  sub_23BBDA0D8();
  v214 = a3;
  v215 = a4;
  v216 = a6;
  v217 = a7;
  v185 = _s21NavigationDestinationVMa(255, &v214);
  WitnessTable = swift_getWitnessTable();
  sub_23BBDA378();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B458, &qword_23BBEC940);
  v15 = sub_23BBDA358();
  v16 = sub_23BAB8874();
  v17 = sub_23BABA2B0(&qword_27E19EF38, type metadata accessor for SubscriptionStoreContentConfiguration, &unk_23BBEDCF8);
  v18 = swift_getWitnessTable();
  v19 = sub_23BA3D7D0();
  v222 = v18;
  v223 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_23B97B518(qword_27E19B460, &qword_27E19B458, &qword_23BBEC940, &unk_23BBECA8C);
  v220 = v20;
  v221 = v21;
  v22 = swift_getWitnessTable();
  v214 = v13;
  v215 = v14;
  v182 = v15;
  v216 = v15;
  v217 = v16;
  v181 = v16;
  v23 = v22;
  v194 = v17;
  v218 = v17;
  v219 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = sub_23BBDD648();
  v26 = v195;
  v172 = *(*(v195 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v214 = AssociatedTypeWitness;
  v215 = MEMORY[0x277D84030];
  v216 = v13;
  v217 = AssociatedConformanceWitness;
  v163 = AssociatedConformanceWitness;
  v218 = MEMORY[0x277D84038];
  v29 = sub_23BBDC1A8();
  swift_getTupleTypeMetadata2();
  v30 = sub_23BBDC3D8();
  v167 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v166 = &v150 - v31;
  v164 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](v32);
  v160 = &v150 - v33;
  v168 = v29;
  v162 = *(v29 - 8);
  MEMORY[0x28223BE20](v34);
  v165 = &v150 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v179 = &v150 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F138, &qword_23BBF7AA0);
  MEMORY[0x28223BE20](v38 - 8);
  v150 = &v150 - v39;
  v184 = v13;
  MEMORY[0x28223BE20](v40);
  v157 = &v150 - v41;
  v161 = OpaqueTypeMetadata2;
  v153 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v42);
  v152 = &v150 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v151 = &v150 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v46 - 8);
  v155 = &v150 - v47;
  v183 = v14;
  MEMORY[0x28223BE20](v48);
  v156 = &v150 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v25;
  v158 = *(v25 - 8);
  MEMORY[0x28223BE20](v50);
  v159 = (&v150 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v52);
  v190 = &v150 - v53;
  v214 = a2;
  v215 = v196;
  v216 = v197;
  v217 = v26;
  v218 = v198;
  v219 = v199;
  v54 = type metadata accessor for StoreContentNavigation(0, &v214);
  v55 = *(v54 - 8);
  v187 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v188 = &v150 - v56;
  v169 = *(a2 - 8);
  MEMORY[0x28223BE20](v57);
  v170 = &v150 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199640, &qword_23BBEDCB0);
  v60 = sub_23BAB87A8();
  v214 = v59;
  v215 = v185;
  v216 = v60;
  v217 = WitnessTable;
  v176 = type metadata accessor for EnvironmentSharingNavigationLink(255, &v214);
  v61 = sub_23BBDA358();
  WitnessTable = a2;
  v214 = a2;
  v215 = MEMORY[0x277D84030];
  v216 = v61;
  v177 = v61;
  v217 = v26;
  v218 = MEMORY[0x277D84038];
  v62 = sub_23BBDC1A8();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v65 = &v150 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v154 = (&v150 - v67);
  v68 = sub_23BBDA928();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v71 = &v150 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v62;
  v185 = v30;
  v72 = v192;
  v175 = sub_23BBDACE8();
  v174 = *(v175 - 8);
  v73.n128_f64[0] = MEMORY[0x28223BE20](v175);
  v173 = &v150 - v74;
  v75 = v72 + *(v54 + 76);
  v76 = *v75;
  v77 = *(v75 + 8) == 1;
  v180 = v23;
  v189 = v54;
  v171 = v55;
  if (v77)
  {
    if (v76)
    {
LABEL_7:
      v88 = WitnessTable;
      (*(v169 + 16))(v170, v72, WitnessTable, v73);
      v89 = v171;
      v90 = v188;
      v91 = v189;
      (*(v171 + 16))(v188, v72, v189);
      v92 = (*(v89 + 80) + 64) & ~*(v89 + 80);
      v93 = swift_allocObject();
      v94 = v196;
      *(v93 + 2) = v88;
      *(v93 + 3) = v94;
      v95 = v195;
      *(v93 + 4) = v197;
      *(v93 + 5) = v95;
      v96 = v199;
      *(v93 + 6) = v198;
      *(v93 + 7) = v96;
      (*(v89 + 32))(&v93[v92], v90, v91);
      v97 = swift_getWitnessTable();
      v98 = sub_23BAB892C();
      v201 = v97;
      v202 = v98;
      v99 = swift_getWitnessTable();
      sub_23BBDC198();
      v200 = v99;
      v100 = v178;
      swift_getWitnessTable();
      v101 = v154;
      sub_23B9D2D88();
      v102 = *(v63 + 8);
      v102(v65, v100);
      sub_23B9D2D88();
      swift_getWitnessTable();
      v103 = v173;
      sub_23BA82D64();
      v102(v65, v100);
      v102(v101, v100);
      goto LABEL_10;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v87 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v76, 0);
    (*(v69 + 8))(v71, v68);
    if (v214 == 1)
    {
      goto LABEL_7;
    }
  }

  v78 = v155;
  sub_23BBDD518();
  v79 = v183;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v183);
  v81 = v194;
  v82 = v197;
  v83 = v188;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v78, qword_27E19A490, qword_23BBEA4A0);
    v84 = v159;
    v85 = v161;
    __swift_storeEnumTagSinglePayload(v159, 1, 1, v161);
    v214 = v184;
    v215 = v79;
    v216 = v182;
    v217 = v181;
    v218 = v81;
    v219 = v180;
    swift_getOpaqueTypeConformance2();
    v86 = v171;
  }

  else
  {
    v154 = type metadata accessor for SubscriptionStoreContentConfiguration;
    v104 = v156;
    sub_23BAB9504(v78, v156, type metadata accessor for SubscriptionStoreContentConfiguration);
    v105 = v189;
    sub_23BAB6284(v104, v189, v157);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F140, &qword_23BBF7AA8);
    v106 = v150;
    sub_23BBDBF88();
    v107 = v79;
    v86 = v171;
    (*(v171 + 16))(v83, v192, v105);
    v108 = (*(v86 + 80) + 64) & ~*(v86 + 80);
    v109 = swift_allocObject();
    v110 = v196;
    *(v109 + 2) = WitnessTable;
    *(v109 + 3) = v110;
    v111 = v195;
    *(v109 + 4) = v82;
    *(v109 + 5) = v111;
    v112 = v199;
    *(v109 + 6) = v198;
    *(v109 + 7) = v112;
    (*(v86 + 32))(&v109[v108], v83, v105);
    v155 = swift_checkMetadataState();
    v113 = v180;
    v114 = v181;
    v115 = v152;
    v116 = v106;
    v117 = v184;
    v118 = v157;
    sub_23BBDBB38();

    sub_23B9846E8(v116, &qword_27E19F138, &qword_23BBF7AA0);
    sub_23B9846E8(v118, &qword_27E19F100, &unk_23BBF7A80);
    sub_23BAB95BC(v156, v154);
    v214 = v117;
    v215 = v107;
    v216 = v155;
    v217 = v114;
    v218 = v81;
    v219 = v113;
    swift_getOpaqueTypeConformance2();
    v119 = v151;
    v85 = v161;
    sub_23B9D2D88();
    v120 = v153;
    v121 = *(v153 + 8);
    v121(v115, v85);
    sub_23B9D2D88();
    v121(v119, v85);
    v72 = v192;
    v84 = v159;
    (*(v120 + 32))(v159, v115, v85);
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v85);
    v82 = v197;
    v83 = v188;
  }

  sub_23BB2F9F4(v84, v85);
  v122 = v158;
  v159 = *(v158 + 8);
  v161 = v158 + 8;
  (v159)(v84, v191);
  v123 = WitnessTable;
  (*(v169 + 16))(v170, v72, WitnessTable);
  v124 = v84;
  sub_23BBDD538();
  v125 = v189;
  (*(v86 + 16))(v83, v72, v189);
  v126 = (*(v86 + 80) + 64) & ~*(v86 + 80);
  v127 = swift_allocObject();
  v128 = v196;
  *(v127 + 2) = v123;
  *(v127 + 3) = v128;
  v129 = v195;
  *(v127 + 4) = v82;
  *(v127 + 5) = v129;
  v130 = v199;
  *(v127 + 6) = v198;
  *(v127 + 7) = v130;
  (*(v86 + 32))(&v127[v126], v83, v125);
  v131 = v165;
  v132 = v184;
  v133 = v181;
  sub_23BBDC198();
  v213[2] = v133;
  v198 = MEMORY[0x277CE1290];
  v134 = v168;
  v197 = swift_getWitnessTable();
  v135 = v179;
  sub_23B9D2D88();
  v136 = v162;
  v199 = *(v162 + 8);
  v199(v131, v134);
  v137 = v191;
  (*(v122 + 16))(v124, v190, v191);
  v213[0] = v124;
  (*(v136 + 16))(v131, v135, v134);
  v213[1] = v131;
  v212[0] = v137;
  v212[1] = v134;
  v214 = v132;
  v215 = v183;
  v216 = v182;
  v217 = v133;
  v218 = v194;
  v219 = v180;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v214 = swift_getWitnessTable();
  v215 = v197;
  v138 = v166;
  sub_23BB6739C(v213, 2, v212);
  v199(v131, v134);
  v139 = v124;
  v140 = v159;
  (v159)(v139, v137);
  v141 = swift_getWitnessTable();
  v142 = sub_23BAB892C();
  v209 = v141;
  v210 = v142;
  v208 = swift_getWitnessTable();
  swift_getWitnessTable();
  v143 = v185;
  swift_getWitnessTable();
  v103 = v173;
  sub_23BA82E14();
  (*(v167 + 8))(v138, v143);
  v199(v179, v134);
  (v140)(v190, v191);
LABEL_10:
  v144 = swift_getWitnessTable();
  v145 = sub_23BAB892C();
  v206 = v144;
  v207 = v145;
  v205 = swift_getWitnessTable();
  v146 = swift_getWitnessTable();
  v147 = swift_getWitnessTable();
  v203 = v146;
  v204 = v147;
  v148 = v175;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v174 + 8))(v103, v148);
}

uint64_t sub_23BAB5DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a8;
  v35 = a7;
  v39 = a6;
  v34 = a5;
  v33 = a4;
  v37 = a3;
  v40 = a2;
  v38 = a1;
  v41 = a9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199640, &qword_23BBEDCB0);
  v53 = a4;
  v54 = a5;
  v55 = a7;
  v56 = a8;
  v13 = _s21NavigationDestinationVMa(255, &v53);
  v14 = sub_23BAB87A8();
  WitnessTable = swift_getWitnessTable();
  v53 = v32;
  v54 = v13;
  v55 = v14;
  v56 = WitnessTable;
  v16 = type metadata accessor for EnvironmentSharingNavigationLink(0, &v53);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - v18;
  v20 = sub_23BBDA358();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v32 - v25;
  v43 = v37;
  v44 = v33;
  v45 = v34;
  v46 = v39;
  v47 = v35;
  v48 = v36;
  v49 = v38;
  v50 = v40;
  v42 = v38;
  sub_23BAB6184(sub_23BABA41C, sub_23BAB8E3C, v19, v32, v13, v14, WitnessTable);
  v27 = swift_getWitnessTable();
  v28 = sub_23BAA51DC(v16, v27);
  (*(v17 + 8))(v19, v16, v28);
  v29 = sub_23BAB892C();
  v51 = v27;
  v52 = v29;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v30 = *(v21 + 8);
  v30(v23, v20);
  sub_23B9D2D88();
  return (v30)(v26, v20);
}

uint64_t sub_23BAB6184@<X0>(void (*a1)(void)@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>)
{
  a1();
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v13 = type metadata accessor for EnvironmentSharingNavigationLink(0, v18);
  a2();
  v14 = v13[14];
  *(a3 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997F8, &qword_23BBE8380);
  swift_storeEnumTagMultiPayload();
  v15 = a3 + v13[15];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a3 + v13[16];
  result = swift_getKeyPath();
  *v16 = result;
  *(v16 + 8) = 0;
  return result;
}

uint64_t sub_23BAB6284@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *(a2 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F118, &unk_23BBF7A90);
  v31 = *(v13 - 8);
  v32 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v30 = &v30 - v15;
  (*(v9 + 16))(v12, v3, a2, v14);
  sub_23BAB9560(a1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubscriptionStoreContentConfiguration);
  v16 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v17 = (v10 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = a2[2];
  *(v18 + 1) = a2[1];
  *(v18 + 2) = v19;
  *(v18 + 3) = a2[3];
  (*(v9 + 32))(&v18[v16], v12, a2);
  sub_23BAB9504(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &v18[v17], type metadata accessor for SubscriptionStoreContentConfiguration);
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197880, &qword_23BBE38D8);
  sub_23BAAF7BC();
  v20 = v30;
  sub_23BBDBFA8();
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v26 = v31;
  v25 = v32;
  v27 = v33;
  (*(v31 + 16))(v33, v20, v32);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F100, &unk_23BBF7A80) + 36);
  *v28 = KeyPath;
  *(v28 + 8) = v38;
  *(v28 + 16) = v22;
  *(v28 + 24) = v37;
  *(v28 + 32) = v23;
  *(v28 + 40) = v36;
  *(v28 + 48) = v24;
  *(v28 + 56) = v35;
  return (*(v26 + 8))(v20, v25);
}

uint64_t sub_23BAB662C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a8;
  v38 = a7;
  v42 = a6;
  v37 = a5;
  v36 = a4;
  v40 = a3;
  v43 = a2;
  v41 = a1;
  v45 = a9;
  sub_23BBDA0D8();
  v58[0] = a4;
  v58[1] = a5;
  v58[2] = a7;
  v58[3] = a8;
  _s21NavigationDestinationVMa(255, v58);
  v35[1] = swift_getWitnessTable();
  v13 = sub_23BBDA378();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - v15;
  v17 = sub_23BBDA358();
  v44 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v35 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B458, &qword_23BBEC940);
  v20 = sub_23BBDA358();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v35 - v25;
  v46 = v40;
  v47 = v36;
  v48 = v37;
  v49 = v42;
  v50 = v38;
  v51 = v39;
  v52 = v41;
  v53 = v43;
  sub_23BBDA368();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_23BA02F24(v13, WitnessTable);
  (*(v14 + 8))(v16, v13, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E798, &qword_23BBF5D70);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_23BBE7F10;
  *(v29 + 32) = swift_getKeyPath();
  v30 = sub_23BA3D7D0();
  v56 = WitnessTable;
  v57 = v30;
  v31 = swift_getWitnessTable();
  View.storeButton(_:for:)();

  (*(v44 + 8))(v19, v17);
  v32 = sub_23B97B518(qword_27E19B460, &qword_27E19B458, &qword_23BBEC940, &unk_23BBECA8C);
  v54 = v31;
  v55 = v32;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v33 = *(v21 + 8);
  v33(v23, v20);
  sub_23B9D2D88();
  return (v33)(v26, v20);
}

uint64_t sub_23BAB6AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a4;
  v36 = a5;
  v37 = a7;
  v38 = a8;
  v15 = OUTLINED_FUNCTION_24_10();
  v17 = _s21NavigationDestinationVMa(v15, v16);
  OUTLINED_FUNCTION_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v26 = OUTLINED_FUNCTION_24_10();
  v28 = type metadata accessor for StoreContentNavigation(v26, v27);
  sub_23BABA50C(v32 + *(v28 + 68), a4, a5, a7, a8, v22);
  OUTLINED_FUNCTION_2_29();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v29 = *(v19 + 8);
  v29(v22, v17);
  sub_23B9D2D88();
  return (v29)(v25, v17);
}

uint64_t sub_23BAB6C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v11 = type metadata accessor for StoreContentNavigation(0, v13);
  return sub_23BAB6284(a1, v11, a8);
}

uint64_t sub_23BAB6CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v23 - v19;
  sub_23BAB9560(a2, v23 - v19, type metadata accessor for SubscriptionStoreContentConfiguration);
  v21 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = a8;
  type metadata accessor for StoreContentNavigation(0, v23);
  sub_23BAAE9D4(v20, v17, qword_27E19A490, qword_23BBEA4A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F140, &qword_23BBF7AA8);
  sub_23BBDBF78();
  return sub_23B9846E8(v20, qword_27E19A490, qword_23BBEA4A0);
}

uint64_t sub_23BAB6E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640, &qword_23BBEDCB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  sub_23BAAE9D4(a1 + *(v11 + 20), v10, &qword_27E199640, &qword_23BBEDCB0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) == 1)
  {
    v12 = _s17AccessoryViewHostVMa(0);
    v13 = a2;
    v14 = 1;
  }

  else
  {
    sub_23BAB9504(v10, v7, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
    sub_23BAB9560(v7, a2, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
    v15 = _s17AccessoryViewHostVMa(0);
    sub_23B97933C(a1, a2 + *(v15 + 20));
    sub_23BAB95BC(v7, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
    v13 = a2;
    v14 = 0;
    v12 = v15;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
}

uint64_t sub_23BAB6FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  OUTLINED_FUNCTION_13_0(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  OUTLINED_FUNCTION_1_4();
  (*(v22 + 32))(a9, a1, a3);
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v23 = OUTLINED_FUNCTION_24_10();
  v25 = type metadata accessor for StoreContentNavigation(v23, v24);
  v26 = *(v25 + 68);
  v33 = a4;
  v34 = a5;
  v35 = a7;
  v36 = a8;
  v27 = OUTLINED_FUNCTION_24_10();
  type metadata accessor for SubscriptionStoreContainerContext(v27, v28);
  OUTLINED_FUNCTION_4_1();
  (*(v29 + 32))(a9 + v26, a2);
  v30 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v30);
  sub_23BAB3F68(v21);
  v31 = a9 + *(v25 + 76);
  result = swift_getKeyPath();
  *v31 = result;
  *(v31 + 8) = 0;
  return result;
}

uint64_t sub_23BAB7188(uint64_t a1)
{
  type metadata accessor for ApplyStoreKitEnvironmentViewModifier(255);
  v17 = *(a1 + 16);
  v3 = sub_23BBDA358();
  v31 = sub_23BABA2B0(qword_27E19F1D0, type metadata accessor for ApplyStoreKitEnvironmentViewModifier, &unk_23BC01FF0);
  v4 = v17;
  v16 = *(a1 + 32);
  v30 = *(&v16 + 1);
  WitnessTable = swift_getWitnessTable();
  v26 = v17;
  v27 = v3;
  v6 = v16;
  v28 = v16;
  v29 = WitnessTable;
  v7 = sub_23BBDA0C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  v23 = v17;
  v24 = v16;
  v25 = v1;
  v19 = v17;
  v20 = v16;
  v21 = v1;
  sub_23BAB796C(sub_23BABA2F8, v22, sub_23BABA310, v18, v4, v3, v6, WitnessTable);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v14 = *(v8 + 8);
  v14(v10, v7);
  sub_23B9D2D88();
  return (v14)(v13, v7);
}

uint64_t sub_23BAB7414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v43 = a4;
  v10 = sub_23BBDA928();
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199800, &qword_23BBE8388);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  type metadata accessor for ApplyStoreKitEnvironmentViewModifier(255);
  v16 = sub_23BBDA358();
  v40 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  v46[0] = a2;
  v46[1] = a3;
  v39 = a3;
  v46[2] = v43;
  v46[3] = a5;
  v41 = a5;
  v22 = type metadata accessor for EnvironmentSharingNavigationLink(0, v46);
  sub_23B9B787C();
  v23 = *(v22 + 60);
  v43 = a1;
  v24 = a1 + v23;
  v25 = *v24;
  LOBYTE(a2) = *(v24 + 8);

  if (a2)
  {
    v26 = v38;
  }

  else
  {
    sub_23BBDD5A8();
    v27 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v25);
    v26 = v38;
    (*(v38 + 8))(v12, v10);
    v25 = v46[0];
  }

  v28 = v43 + *(v22 + 64);
  v29 = *v28;
  v30 = *(v28 + 8);

  if ((v30 & 1) == 0)
  {
    sub_23BBDD5A8();
    v31 = sub_23BBDB338();
    v38 = v10;
    v32 = v26;
    v33 = v31;
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v29);
    (*(v32 + 8))(v12, v38);
    v29 = v46[0];
  }

  v34 = v41;
  sub_23BB74C20(v15, v25, v29, v39, v41);

  sub_23B9846E8(v15, &qword_27E199800, &qword_23BBE8388);
  v35 = sub_23BABA2B0(qword_27E19F1D0, type metadata accessor for ApplyStoreKitEnvironmentViewModifier, &unk_23BC01FF0);
  v44 = v34;
  v45 = v35;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v36 = *(v40 + 8);
  v36(v18, v16);
  sub_23B9D2D88();
  return (v36)(v21, v16);
}

uint64_t sub_23BAB7864(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for EnvironmentSharingNavigationLink(0, v11);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23BAB796C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1);
  v9(v8);
  return sub_23BBDA0B8();
}

void sub_23BAB7A44(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v16 = v2;
    v4 = *(a1 + 48);
    v11[0] = *(a1 + 24);
    v11[1] = v4;
    v5 = type metadata accessor for SubscriptionStoreContainerContext(319, v11);
    if (v6 <= 0x3F)
    {
      v13 = 0;
      v17 = v5;
      sub_23BAB9E50(319, &qword_27E19F0E8, qword_27E19A490, qword_23BBEA4A0, MEMORY[0x277CE10B8]);
      if (v8 <= 0x3F)
      {
        v14 = 0;
        v18 = v7;
        sub_23B9D2354();
        if (v10 <= 0x3F)
        {
          v15 = 0;
          v19 = v9;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BAB7B38(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v55 = *(a3 + 16);
  v3 = *(v55 - 8);
  v52 = *(a3 + 24);
  v59 = *(v52 - 8);
  v4 = *(v3 + 84);
  v5 = *(v59 + 84);
  v49 = sub_23BBDCDB8();
  v6 = *(v49 - 8);
  if (*(v6 + 84) <= 0xFDu)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = v7 - 1;
  v50 = *(v6 + 84);
  v51 = v8;
  if (v8 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  v53 = v8;
  v54 = v5;
  if (v8 <= v5)
  {
    v8 = v5;
  }

  v56 = v4;
  if (v8 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  v10 = v8;
  v11 = sub_23BBDC208();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 - 1;
  if (v16 <= v9)
  {
    v16 = v9;
  }

  v17 = *(v59 + 64);
  v18 = *(v6 + 64);
  v19 = *(v12 + 80);
  if (v13)
  {
    v20 = *(*(v11 - 8) + 64);
  }

  else
  {
    v20 = *(*(v11 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v6 + 80) & 0xF8;
  v22 = v21 | 7;
  v23 = v21 | 7 | *(v59 + 80);
  v24 = v17 + (v21 | 7);
  v25 = *(v3 + 64) + v23;
  v26 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + ((v21 + 87) & ~v22) + ((v17 + v22) & ~v22);
  v27 = v19 | 7;
  v28 = v26 + (v19 | 7) + 12;
  v29 = v19 + 40;
  v30 = a1;
  if (a2 > v16)
  {
    v31 = ((v28 + (v25 & ~v23)) & ~v27) + ((((((v20 + (v29 & ~v19) + ((v20 + v19) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 350) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 17;
    v32 = 8 * v31;
    if (v31 > 3)
    {
      goto LABEL_25;
    }

    v34 = ((a2 - v16 + ~(-1 << v32)) >> v32) + 1;
    if (HIWORD(v34))
    {
      v33 = *&a1[v31];
      if (!v33)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    if (v34 > 0xFF)
    {
      v33 = *&a1[v31];
      if (!*&a1[v31])
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    if (v34 >= 2)
    {
LABEL_25:
      v33 = a1[v31];
      if (!a1[v31])
      {
        goto LABEL_37;
      }

LABEL_32:
      v35 = (v33 - 1) << v32;
      if (v31 <= 3)
      {
        v36 = *a1;
      }

      else
      {
        v35 = 0;
        v36 = *a1;
      }

      return v16 + (v36 | v35) + 1;
    }
  }

LABEL_37:
  if (v56 == v16)
  {
    v38 = v56;
    v39 = v55;
LABEL_39:

    return __swift_getEnumTagSinglePayload(v30, v38, v39);
  }

  v30 = (&a1[v25] & ~v23);
  if (v10 != v16)
  {
    if ((v14 & 0x80000000) != 0)
    {
      if (!v13)
      {
        return 0;
      }

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v29 + (&v30[v28] & ~v27)) & ~v19, v13, v11);
      if (EnumTagSinglePayload < 2)
      {
        return 0;
      }

      v43 = EnumTagSinglePayload - 1;
    }

    else
    {
      v42 = *((&v30[v28] & ~v27) + 0x18);
      if (v42 >= 0xFFFFFFFF)
      {
        LODWORD(v42) = -1;
      }

      v43 = v42 + 1;
    }

    result = v43 - 1;
    if (v43 > 1)
    {
      return result;
    }

    return 0;
  }

  v38 = v54;
  if (v54 >= v53)
  {
    v39 = v52;
    goto LABEL_39;
  }

  v40 = (((&v30[v24] & ~v22) + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v51 & 0x80000000) != 0)
  {
    v45 = (v22 + ((((v40 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22;
    if (v50 < 0xFD)
    {
      v47 = *(((v18 + v45 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v47 >= 2)
      {
        v48 = (v47 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v48 = -1;
      }

      if ((v48 + 1) >= 2)
      {
        v46 = v48;
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v46 = __swift_getEnumTagSinglePayload(v45, v50, v49);
    }

    if (v46 >= 2)
    {
      return v46 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v41 = *v40;
    if (*v40 >= 0xFFFFFFFF)
    {
      LODWORD(v41) = -1;
    }

    return (v41 + 1);
  }
}

void sub_23BAB7FC0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v72 = *(a4 + 16);
  v4 = *(v72 - 8);
  v68 = *(a4 + 24);
  v74 = *(v68 - 8);
  v5 = *(v4 + 84);
  v6 = *(v74 + 84);
  v64 = sub_23BBDCDB8();
  v7 = *(v64 - 8);
  if (*(v7 + 84) <= 0xFDu)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v65 = *(v7 + 84);
  v66 = v8;
  v9 = v8 - 1;
  v67 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  v69 = v9;
  v70 = v6;
  if (v9 <= v6)
  {
    v9 = v6;
  }

  v73 = v5;
  v71 = v9;
  if (v9 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_23BBDC208();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = v4;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v17 - 1 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v17 - 1;
  }

  v19 = *(v7 + 80) & 0xF8;
  v20 = v19 | 7;
  v21 = *(v7 + 80) & 0xF8 | 7 | *(v74 + 80);
  v22 = *(v74 + 64) + (v19 | 7);
  v23 = *(v7 + 64);
  v24 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v25 = *(v14 + 64) + v21;
  v26 = ((v19 + 87) & ~(v19 | 7)) + v24;
  v27 = *(v13 + 80);
  v28 = (v26 + (v22 & ~(v19 | 7)) + (v27 | 7)) | 3;
  v29 = *(v13 + 64);
  if (v15)
  {
    v30 = *(v13 + 64);
  }

  else
  {
    v30 = v29 + 1;
  }

  v31 = ((v30 + v27) & ~v27) + v30;
  v32 = v31 + ((v27 + 40) & ~v27);
  v33 = ((v28 + (v25 & ~v21)) & ~(v27 | 7)) + ((((((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 350) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 17;
  v34 = 8 * v33;
  if (a3 > v18)
  {
    if (v33 <= 3)
    {
      v35 = ((a3 - v18 + ~(-1 << v34)) >> v34) + 1;
      if (HIWORD(v35))
      {
        v12 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v12 = v36;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v18 < a2)
  {
    v37 = ~v18 + a2;
    if (v33 <= 3)
    {
      v39 = (v37 >> v34) + 1;
      v43 = v37 & ~(-1 << v34);
      v38 = a1;
      bzero(a1, v33);
      *a1 = v43;
    }

    else
    {
      v38 = a1;
      bzero(a1, v33);
      *a1 = v37;
      v39 = 1;
    }

    switch(v12)
    {
      case 1:
        v38[v33] = v39;
        return;
      case 2:
        *&v38[v33] = v39;
        return;
      case 3:
        goto LABEL_117;
      case 4:
        *&v38[v33] = v39;
        return;
      default:
        return;
    }
  }

  v40 = ~v20;
  v41 = ~(v27 | 7);
  v42 = a1;
  switch(v12)
  {
    case 1:
      a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    case 2:
      *&a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    case 3:
LABEL_117:
      __break(1u);
      JUMPOUT(0x23BAB8704);
    case 4:
      *&a1[v33] = 0;
      goto LABEL_43;
    default:
LABEL_43:
      if (!a2)
      {
        return;
      }

LABEL_44:
      if (v73 == v18)
      {
        v44 = a2;
        v15 = v73;
        v11 = v72;
LABEL_46:

        __swift_storeEnumTagSinglePayload(v42, v44, v15, v11);
        return;
      }

      v42 = (&a1[v25] & ~v21);
      if (v71 == v18)
      {
        v15 = v70;
        if (v70 >= v69)
        {
          v44 = a2;
          v11 = v68;
          goto LABEL_46;
        }

        v45 = (&v42[v22] & v40);
        if (v69 >= a2)
        {
          v55 = ((v45 + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v67 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v56 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v56 = a2 - 1;
            }

            *v55 = v56;
            return;
          }

          v45 = ((v20 + ((((v55 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v40);
          if (v67 >= a2)
          {
            v47 = a2 - v66;
            if (a2 < v66)
            {
              v44 = a2 + 1;
              v15 = v65;
              if (v65 < 0xFD)
              {
                v63 = &v45[v23 + 7] & 0xFFFFFFFFFFFFFFF8;
                if (a2 > 0xFC)
                {
                  *v63 = 0;
                  *(v63 + 8) = 0;
                  *v63 = a2 - 253;
                }

                else
                {
                  *(v63 + 8) = a2 + 3;
                }

                return;
              }

              v42 = v45;
              v11 = v64;
              goto LABEL_46;
            }
          }

          else
          {
            v47 = a2 - v66;
          }

          bzero(v45, ((v23 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
          if (v24 <= 3)
          {
LABEL_109:
            *v45 = v47;
          }

          else
          {
LABEL_108:
            *v45 = v47;
          }
        }

        else
        {
          if (v26 <= 2)
          {
            v46 = ~(-1 << (8 * (v26 + 1)));
          }

          else
          {
            v46 = -1;
          }

          v47 = v46 & (~v69 + a2);
          if (v26 <= 2)
          {
            v48 = v26 + 1;
          }

          else
          {
            v48 = 4;
          }

          bzero(v45, (v26 + 1));
          switch(v48)
          {
            case 2:
              *v45 = v47;
              break;
            case 3:
              *v45 = v47;
              v45[2] = BYTE2(v47);
              break;
            case 4:
              goto LABEL_108;
            default:
              goto LABEL_109;
          }
        }
      }

      else
      {
        v49 = (&v42[v28] & v41);
        v50 = (((v32 + 7) & 0xFFFFFFF8) + 350) & 0xFFFFFFF8;
        if (v17 - 1 >= a2)
        {
          v53 = a2 - v17;
          if (a2 >= v17)
          {
            v57 = v50 + 10;
            bzero((&v42[v28] & v41), (v50 + 10));
            if (v57 <= 3)
            {
              *v49 = v53;
            }

            else
            {
              *v49 = v53;
            }

            return;
          }

          v54 = a2 + 1;
          if ((v16 & 0x80000000) == 0)
          {
            if (v54 < 0)
            {
              *((&v42[v28] & v41) + 8) = 0u;
              *((&v42[v28] & v41) + 0x18) = 0u;
              *v49 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *((&v42[v28] & v41) + 0x18) = a2;
            }

            return;
          }

          v49 = (&v49[v27 + 40] & ~v27);
          v58 = a2 - v16;
          if (a2 >= v16)
          {
            if (v31 <= 3)
            {
              v61 = ~(-1 << (8 * v31));
            }

            else
            {
              v61 = -1;
            }

            if (v31)
            {
              v52 = v61 & v58;
              if (v31 <= 3)
              {
                v62 = v31;
              }

              else
              {
                v62 = 4;
              }

              bzero(v49, v31);
              switch(v62)
              {
                case 2:
LABEL_114:
                  *v49 = v52;
                  break;
                case 3:
LABEL_115:
                  *v49 = v52;
                  v49[2] = BYTE2(v52);
                  break;
                case 4:
                  goto LABEL_67;
                default:
LABEL_103:
                  *v49 = v52;
                  break;
              }
            }
          }

          else
          {
            if (a2 + 2 <= v15)
            {
              v42 = v49;
              v44 = a2 + 2;
              goto LABEL_46;
            }

            if (v29 <= 3)
            {
              v59 = ~(-1 << (8 * v29));
            }

            else
            {
              v59 = -1;
            }

            if (v29)
            {
              v52 = v59 & (v54 - v15);
              if (v29 <= 3)
              {
                v60 = v29;
              }

              else
              {
                v60 = 4;
              }

              bzero(v49, v29);
              switch(v60)
              {
                case 2:
                  goto LABEL_114;
                case 3:
                  goto LABEL_115;
                case 4:
                  goto LABEL_67;
                default:
                  goto LABEL_103;
              }
            }
          }
        }

        else
        {
          v51 = (v50 + 17) & 0xFFFFFFF8;
          if (v51 != -8)
          {
            v52 = a2 - v17;
            bzero((&v42[v28] & v41), v51 + 8);
LABEL_67:
            *v49 = v52;
          }
        }
      }

      return;
  }
}

unint64_t sub_23BAB87A8()
{
  result = qword_27E19F0F0;
  if (!qword_27E19F0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199640, &qword_23BBEDCB0);
    sub_23BABA2B0(&qword_27E19F0F8, type metadata accessor for SubscriptionOptionGroupAccessorySubview, &unk_23BBFC408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F0F0);
  }

  return result;
}

unint64_t sub_23BAB8874()
{
  result = qword_27E19F108;
  if (!qword_27E19F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F100, &unk_23BBF7A80);
    sub_23B97B518(&qword_27E19F110, &qword_27E19F118, &unk_23BBF7A90, MEMORY[0x277CDF028]);
    sub_23BAB892C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F108);
  }

  return result;
}

unint64_t sub_23BAB892C()
{
  result = qword_27E19F120;
  if (!qword_27E19F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F120);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v2 = *(v0 + 24);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v29 = *(v0 + 16);
  v1 = v29;
  v30 = v2;
  v31 = *(v0 + 32);
  v28 = v31;
  v32 = v4;
  v33 = v3;
  v5 = type metadata accessor for StoreContentNavigation(0, &v29);
  OUTLINED_FUNCTION_57();
  v7 = v0 + ((*(v6 + 80) + 64) & ~*(v6 + 80));
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 8))(v7, v1);
  v9 = v7 + v5[17];
  OUTLINED_FUNCTION_1_4();
  (*(v10 + 8))(v9, v2);
  v29 = v2;
  v30 = v28;
  *&v31 = v4;
  *(&v31 + 1) = v3;
  v11 = v9 + *(type metadata accessor for SubscriptionStoreContainerContext(0, &v29) + 52);

  if (*(v11 + 48))
  {
  }

  v13 = *(type metadata accessor for SubscriptionStoreControlConfiguration(0, v28, v3, v12) + 60);
  v14 = type metadata accessor for Subscription(0);
  if (!__swift_getEnumTagSinglePayload(v11 + v13, 1, v14))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v15 + 8))(v11 + v13);
  }

  v16 = (v7 + v5[18]);
  v17 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  if (!OUTLINED_FUNCTION_25_6(v17))
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    v18 = v16 + v28[5];
    v19 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
    if (!OUTLINED_FUNCTION_26_6(v19))
    {
      sub_23BBDC208();
      OUTLINED_FUNCTION_12_1();
      (*(v20 + 8))(v18);
    }

    v21 = *(type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0) + 20);
    if (!__swift_getEnumTagSinglePayload(&v18[v21], 1, v9))
    {
      sub_23BBDC208();
      OUTLINED_FUNCTION_12_1();
      (*(v22 + 8))(&v18[v21]);
    }

    v23 = (v16 + v28[6]);
    if (v23[1])
    {

      if (v23[5] >= 6uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v23 + 2);
      }

      if (v23[10])
      {
        __swift_destroy_boxed_opaque_existential_1(v23 + 7);
      }

      if (v23[15])
      {
        __swift_destroy_boxed_opaque_existential_1(v23 + 12);
      }

      if (v23[20])
      {
        __swift_destroy_boxed_opaque_existential_1(v23 + 17);
      }

      if (v23[25])
      {
        __swift_destroy_boxed_opaque_existential_1(v23 + 22);
      }

      if (v23[31] >= 3uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v23 + 28);
      }

      if (v23[35] >= 4uLL)
      {

        if (v23[39])
        {
        }
      }
    }

    v24 = OUTLINED_FUNCTION_18_14(v16 + v28[7]);
    j__swift_bridgeObjectRelease(v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F140, &qword_23BBF7AA8);

  v25 = OUTLINED_FUNCTION_18_14(v7 + v5[19]);
  sub_23B97B5C0(v25, v26);
  return swift_deallocObject();
}

uint64_t sub_23BAB8D60(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v15[0] = v2[2];
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v8;
  v15[5] = v9;
  v10 = type metadata accessor for StoreContentNavigation(0, v15);
  OUTLINED_FUNCTION_13_0(v10);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return a2(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23BAB8E88()
{
  v1 = *(v0 + 24);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v44 = *(v0 + 16);
  v2 = v44;
  v45 = v1;
  v46 = *(v0 + 32);
  v42 = v46;
  v47 = v4;
  v48 = v3;
  v5 = type metadata accessor for StoreContentNavigation(0, &v44);
  OUTLINED_FUNCTION_57();
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v43 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  OUTLINED_FUNCTION_57();
  v11 = *(v10 + 80);
  v12 = v9 + v11;
  v13 = v0 + v7;
  OUTLINED_FUNCTION_1_4();
  (*(v14 + 8))(v0 + v7, v2);
  v15 = v0 + v7 + v5[17];
  OUTLINED_FUNCTION_1_4();
  (*(v16 + 8))(v15, v1);
  v44 = v1;
  v45 = v42;
  *&v46 = v4;
  *(&v46 + 1) = v3;
  v17 = v15 + *(type metadata accessor for SubscriptionStoreContainerContext(0, &v44) + 52);

  if (*(v17 + 48))
  {
  }

  v19 = *(type metadata accessor for SubscriptionStoreControlConfiguration(0, v42, v3, v18) + 60);
  v20 = type metadata accessor for Subscription(0);
  if (!__swift_getEnumTagSinglePayload(v17 + v19, 1, v20))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v21 + 8))(v17 + v19);
  }

  v22 = (v7 + v12) & ~v11;
  v23 = (v13 + v5[18]);
  if (!__swift_getEnumTagSinglePayload(v23, 1, v43))
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    v24 = v23 + v43[5];
    v25 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
    if (!OUTLINED_FUNCTION_26_6(v25))
    {
      sub_23BBDC208();
      OUTLINED_FUNCTION_12_1();
      (*(v26 + 8))(v24);
    }

    v27 = *(type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0) + 20);
    if (!__swift_getEnumTagSinglePayload(&v24[v27], 1, v17))
    {
      sub_23BBDC208();
      OUTLINED_FUNCTION_12_1();
      (*(v28 + 8))(&v24[v27]);
    }

    v29 = (v23 + v43[6]);
    if (v29[1])
    {

      if (v29[5] >= 6uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v29 + 2);
      }

      if (v29[10])
      {
        __swift_destroy_boxed_opaque_existential_1(v29 + 7);
      }

      if (v29[15])
      {
        __swift_destroy_boxed_opaque_existential_1(v29 + 12);
      }

      if (v29[20])
      {
        __swift_destroy_boxed_opaque_existential_1(v29 + 17);
      }

      if (v29[25])
      {
        __swift_destroy_boxed_opaque_existential_1(v29 + 22);
      }

      if (v29[31] >= 3uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v29 + 28);
      }

      if (v29[35] >= 4uLL)
      {

        if (v29[39])
        {
        }
      }
    }

    v30 = OUTLINED_FUNCTION_18_14(v23 + v43[7]);
    j__swift_bridgeObjectRelease(v30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F140, &qword_23BBF7AA8);

  v31 = OUTLINED_FUNCTION_18_14(v13 + v5[19]);
  sub_23B97B5C0(v31, v32);
  v33 = v0 + v22;
  __swift_destroy_boxed_opaque_existential_1((v0 + v22));
  v34 = v0 + v22 + v43[5];
  v35 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  if (!OUTLINED_FUNCTION_25_6(v35))
  {
    sub_23BBDC208();
    OUTLINED_FUNCTION_12_1();
    (*(v36 + 8))(v34);
  }

  v37 = *(type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v34 + v37, 1, v23))
  {
    sub_23BBDC208();
    OUTLINED_FUNCTION_12_1();
    (*(v38 + 8))(v34 + v37);
  }

  v39 = (v33 + v43[6]);
  if (v39[1])
  {

    if (v39[5] >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v39 + 2);
    }

    if (v39[10])
    {
      __swift_destroy_boxed_opaque_existential_1(v39 + 7);
    }

    if (v39[15])
    {
      __swift_destroy_boxed_opaque_existential_1(v39 + 12);
    }

    if (v39[20])
    {
      __swift_destroy_boxed_opaque_existential_1(v39 + 17);
    }

    if (v39[25])
    {
      __swift_destroy_boxed_opaque_existential_1(v39 + 22);
    }

    if (v39[31] >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v39 + 28);
    }

    if (v39[35] >= 4uLL)
    {

      if (v39[39])
      {
      }
    }
  }

  v40 = OUTLINED_FUNCTION_18_14(v33 + v43[7]);
  j__swift_bridgeObjectRelease(v40);
  return swift_deallocObject();
}

uint64_t sub_23BAB93C8()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v14[0] = v0[2];
  v1 = v14[0];
  v14[1] = v2;
  v14[2] = v3;
  v14[3] = v4;
  v14[4] = v5;
  v14[5] = v6;
  v7 = *(type metadata accessor for StoreContentNavigation(0, v14) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  OUTLINED_FUNCTION_13_0(v10);
  v12 = v0 + ((v8 + v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_23BAB6CC8(v0 + v8, v12, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_23BAB9504(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BAB9560(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BAB95BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_23BAB9610(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23BAB9E50(319, &qword_27E19F1C8, &qword_27E199800, &qword_23BBE8388, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23BAB9E50(319, &qword_27E19B390, &qword_27E19B398, qword_23BBF7C40, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23BAB9E50(319, &qword_27E199FE8, &qword_27E199FF0, qword_23BBE9530, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23BAB9768(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v30 = *(a3 + 16);
  v31 = *(a3 + 24);
  v5 = *(v31 - 8);
  v6 = *(v5 + 84);
  v7 = *(v30 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_23BBD9728() - 8);
  v11 = 8;
  if (*(v10 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v10 + 64);
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  if (v9 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v9;
  }

  v15 = *(v7 + 80);
  v16 = ((((((v12 + ((v12 + v13 + 1) & ~v13) + 8) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v16 > 8)
  {
    v11 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v5 + 64) + v15;
  v18 = *(v7 + 64) + v13;
  if (v14 < a2)
  {
    v19 = ((((v18 + (v17 & ~v15)) & ~v13) + v11 + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v19 <= 3)
    {
      v20 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      LODWORD(v21) = 4;
    }

    else
    {
      LODWORD(v21) = 2;
    }

    if (v20 < 0x100)
    {
      LODWORD(v21) = 1;
    }

    if (v20 >= 2)
    {
      v21 = v21;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = a1[v19];
        if (!a1[v19])
        {
          break;
        }

        goto LABEL_30;
      case 2:
        v22 = *&a1[v19];
        if (*&a1[v19])
        {
          goto LABEL_30;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAB9A4CLL);
      case 4:
        v22 = *&a1[v19];
        if (!v22)
        {
          break;
        }

LABEL_30:
        v24 = (v22 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v25 = *a1;
        }

        else
        {
          v24 = 0;
          v25 = *a1;
        }

        return v14 + (v25 | v24) + 1;
      default:
        break;
    }
  }

  if (v6 == v14)
  {
    v26 = a1;
    v27 = v6;
    v28 = v31;
  }

  else
  {
    v26 = (&a1[v17] & ~v15);
    if (v8 != v14)
    {
      v29 = *((&v26[v18] & ~v13) + v11);
      if (v29 >= 2)
      {
        return (v29 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v27 = v8;
    v28 = v30;
  }

  return __swift_getEnumTagSinglePayload(v26, v27, v28);
}

void sub_23BAB9A60(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v36 = *(a4 + 24);
  v6 = *(v36 - 8);
  v7 = *(v6 + 84);
  v35 = *(a4 + 16);
  v8 = *(v35 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_23BBD9728() - 8);
  v12 = *(v11 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v13 = *(v11 + 80) & 0xF8 | 7;
  if (v10 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v10;
  }

  v15 = *(v8 + 80);
  v16 = *(v6 + 64) + v15;
  v17 = *(v8 + 64) + v13;
  v18 = ((((((v12 + ((v12 + v13 + 1) & ~v13) + 8) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v18 <= 8)
  {
    v18 = 8;
  }

  v19 = ((((v17 + (v16 & ~v15)) & ~v13) + v18 + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v14 < a2)
  {
    v23 = ~v14 + a2;
    bzero(a1, v19);
    if (v19 <= 3)
    {
      v24 = (v23 >> 8) + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v19 > 3)
    {
      *a1 = v23;
    }

    else
    {
      *a1 = v23;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v19) = v24;
        return;
      case 2:
        *(a1 + v19) = v24;
        return;
      case 3:
        goto LABEL_63;
      case 4:
        *(a1 + v19) = v24;
        return;
      default:
        return;
    }
  }

  v25 = ~v13;
  v26 = ~v15;
  switch(v22)
  {
    case 1:
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 2:
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 3:
LABEL_63:
      __break(1u);
      JUMPOUT(0x23BAB9E18);
    case 4:
      *(a1 + v19) = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v7 == v14)
      {
        v27 = a1;
        v28 = a2;
        v29 = v7;
        v30 = v36;
LABEL_42:

        __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
        return;
      }

      v27 = ((a1 + v16) & v26);
      if (v9 == v14)
      {
        v28 = a2;
        v29 = v9;
        v30 = v35;
        goto LABEL_42;
      }

      v31 = ((v27 + v17) & v25);
      if (a2 > 0xFE)
      {
        if (v18 <= 3)
        {
          v32 = ~(-1 << (8 * (v18 | 1)));
        }

        else
        {
          v32 = -1;
        }

        v33 = v32 & (a2 - 255);
        if (v18 <= 3)
        {
          v34 = v18 + 1;
        }

        else
        {
          v34 = 4;
        }

        bzero(v31, v18 | 1);
        switch(v34)
        {
          case 2:
            *v31 = v33;
            break;
          case 3:
            *v31 = v33;
            v31[2] = BYTE2(v33);
            break;
          case 4:
            *v31 = v33;
            break;
          default:
            *v31 = v33;
            break;
        }
      }

      else
      {
        v31[v18] = -a2;
      }

      return;
  }
}

void sub_23BAB9E50(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23BAB9EB4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199640, &qword_23BBEDCB0);
  v1 = OUTLINED_FUNCTION_20_10();
  _s21NavigationDestinationVMa(v1, v2);
  sub_23BAB87A8();
  OUTLINED_FUNCTION_2_29();
  swift_getWitnessTable();
  v3 = OUTLINED_FUNCTION_20_10();
  type metadata accessor for EnvironmentSharingNavigationLink(v3, v4);
  sub_23BBDA358();
  OUTLINED_FUNCTION_20_10();
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F100, &unk_23BBF7A80);
  type metadata accessor for SubscriptionStoreContentConfiguration(255);
  sub_23BBDA0D8();
  OUTLINED_FUNCTION_48();
  sub_23BBDA378();
  sub_23BBDA358();
  v5 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BAB8874();
  OUTLINED_FUNCTION_13_21();
  sub_23BABA2B0(v7, v8, &unk_23BBEDCF8);
  OUTLINED_FUNCTION_4_24();
  swift_getWitnessTable();
  sub_23BA3D7D0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_19();
  sub_23B97B518(v9, &qword_27E19B458, &qword_23BBEC940, v10);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_27();
  OUTLINED_FUNCTION_20_10();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDD648();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_10();
  sub_23BBDC1A8();
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F128, &unk_23BBF8210);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_19();
  swift_getWitnessTable();
  sub_23BAB892C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_9();
  sub_23B97B518(v11, &qword_27E19F128, &unk_23BBF8210, v12);
  return swift_getWitnessTable();
}

uint64_t sub_23BABA2B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BABA340(uint64_t *a1)
{
  type metadata accessor for ApplyStoreKitEnvironmentViewModifier(255);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BABA2B0(qword_27E19F1D0, type metadata accessor for ApplyStoreKitEnvironmentViewModifier, &unk_23BC01FF0);
  swift_getWitnessTable();
  sub_23BBDA0C8();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_26_6(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t sub_23BABA50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a1;
  v34 = a6;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v30 = a5;
  v31 = type metadata accessor for SubscriptionStoreContainerContext(0, &v35);
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v18 = _s21NavigationDestinationVMa(0, &v35);
  OUTLINED_FUNCTION_7();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v29 - v25;
  sub_23B9ECEE0(v32, v17);
  (*(v11 + 16))(v14, v33, v31);
  sub_23BABB5AC(v17, v14, a2, a3, a4, v30, v23);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v27 = *(v20 + 8);
  v27(v23, v18);
  sub_23B9D2D88();
  return (v27)(v26, v18);
}

uint64_t sub_23BABA790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_23BBDD648();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13[-1] - v7;
  v9 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  sub_23BABC3F8(v2 + *(v9 + 24), &v14);
  if (v15[0])
  {
    sub_23B9ECFF4(v15, v13);
    sub_23B9ED050(&v14);
    v10 = v13[0];

    sub_23B9ED0A4(v13);
  }

  else
  {
    sub_23BABC468(&v14);
    v10 = 0;
  }

  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A530, &unk_23BBF7D40);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v5);
    return (*(*(v5 - 8) + 32))(a2, v8, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v5);
    return (*(*(v5 - 8) + 16))(a2, v2 + *(a1 + 52), v5);
  }
}

uint64_t sub_23BABA948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F258, &qword_23BBF7D28);
  MEMORY[0x28223BE20](v4);
  v90 = &v87 - v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = sub_23BABC2E8();
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v97 = v4;
  v121 = v4;
  v122 = v6;
  v123 = v7;
  v11 = v7;
  v112 = v10;
  v113 = v7;
  v92 = v8;
  v124 = v8;
  v125 = v10;
  v12 = v10;
  v126 = v9;
  v13 = v9;
  v89 = v9;
  v14 = type metadata accessor for SubscriptionStoreStaticViewContainer(0, &v121);
  v93 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v91 = &v87 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  v95 = v14;
  v16 = sub_23BBDA358();
  v102 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v100 = &v87 - v17;
  v106 = v18;
  v19 = sub_23BBDA358();
  v104 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v101 = &v87 - v20;
  type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(255);
  v107 = v19;
  v21 = sub_23BBDA358();
  v108 = *(v21 - 8);
  v109 = v21;
  MEMORY[0x28223BE20](v21);
  v103 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v105 = &v87 - v24;
  v111 = v6;
  MEMORY[0x28223BE20](v25);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v6;
  v122 = v11;
  v123 = v12;
  v124 = v13;
  v28 = type metadata accessor for SubscriptionStoreContainerContext(0, &v121);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v88 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v87 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v87 - v35;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v87 - v39;
  v41 = *(a1 + 52);
  v98 = v29;
  v94 = *(v29 + 16);
  v94(v33, v2 + v41, v28, v38);
  v42 = a1;
  v43 = v2;
  sub_23BABA790(v42, v27);
  v45 = v111;
  v44 = v112;
  v46 = v113;
  sub_23B9962E0(v28, v111, v112, v36);
  v47 = v89;
  v48 = sub_23BABB180(v43, v45, v46, v44, v89);
  v49 = v46;
  v50 = v47;
  v51 = v90;
  sub_23B99652C(v48, v52, v28, v49, v47, v40);

  v53 = v43;
  v54 = v88;
  sub_23BAAF390(0, v51);
  v96 = v40;
  v99 = v28;
  (v94)(v54, v40, v28);
  v55 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  v56 = *(v55 + 28);
  v94 = v53;
  v57 = v53 + v56;
  if (v57[8] == 1)
  {
    v58 = *v57;
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  v59 = v91;
  v60 = v51;
  v61 = v111;
  v62 = v112;
  sub_23BAE69D8(v60, v54, v58, v97, v111, v113, v92, v112, v50, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  v63 = v95;
  WitnessTable = swift_getWitnessTable();
  v65 = OUTLINED_FUNCTION_13();
  v66 = v100;
  v67 = sub_23BAB3BD0(v65 & 1, v63, WitnessTable);
  (*(v93 + 8))(v59, v63, v67);
  v68 = sub_23BABC3F8(v94 + *(v55 + 24), v120);
  if (v120[1])
  {
    MEMORY[0x28223BE20](v68);
    v69 = v113;
    *(&v87 - 6) = v61;
    *(&v87 - 5) = v69;
    *(&v87 - 4) = v62;
    *(&v87 - 3) = v50;
    v70 = v96;
    v85 = v96;
    sub_23BA23CEC(sub_23BABC57C, &v121);
  }

  else
  {
    sub_23BABC468(v120);
    bzero(&v121, 0x157uLL);
    v70 = v96;
  }

  v71 = sub_23BABC4D0();
  v118 = WitnessTable;
  v119 = v71;
  v72 = v106;
  v73 = swift_getWitnessTable();
  v74 = v101;
  sub_23BA2241C(&v121, v72, v73);
  sub_23BABC468(&v121);
  (*(v102 + 8))(v66, v72);
  v75 = sub_23B9ECF44();
  v116 = v73;
  v117 = v75;
  v76 = v107;
  v77 = swift_getWitnessTable();
  v78 = v103;
  sub_23BB74EC8(1, v76, v77, v79);
  (*(v104 + 8))(v74, v76);
  v80 = sub_23BABC534(&qword_27E19F270, type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier, &unk_23BC01ECC);
  v114 = v77;
  v115 = v80;
  v81 = v109;
  swift_getWitnessTable();
  v82 = v105;
  sub_23B9D2D88();
  v83 = *(v108 + 8);
  v83(v78, v81);
  sub_23B9D2D88();
  v83(v82, v81);
  return (*(v98 + 8))(v70, v99);
}

uint64_t (*sub_23BABB180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = _s21NavigationDestinationVMa(0, v18);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return sub_23BABC8BC;
}

uint64_t sub_23BABB2DC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v13 = type metadata accessor for SubscriptionStoreControlConfiguration(0, a4, a6, a4);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v19 - v16;
  (*(v14 + 16))(v19 - v16, a1, v13, v15);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  _s21NavigationDestinationVMa(0, v19);
  sub_23BABB420(v17, a4, a6, x8_0);
  return (*(v14 + 8))(a1, v13);
}

uint64_t sub_23BABB420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v10 = v4 + *(type metadata accessor for SubscriptionStoreContentConfiguration(0) + 28);
  if (*(v10 + 8))
  {
    v11 = type metadata accessor for SubscriptionStoreControlConfiguration(0, a2, a3, v9);
    v12 = *(*(v11 - 8) + 32);

    return v12(a4, a1, v11);
  }

  else
  {
    v14 = *v10;
    v15 = type metadata accessor for SubscriptionStoreControlConfiguration(0, a2, a3, v9);
    sub_23B9785B0(v14);
    v16 = *(*(v15 - 8) + 8);

    return v16(a1, v15);
  }
}

uint64_t sub_23BABB540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  type metadata accessor for SubscriptionStoreContainerContext(0, v10);
  type metadata accessor for SubscriptionStoreControlConfiguration(0, a3, a5, v7);
  sub_23B9774BC();
  return v8 & 1;
}

uint64_t sub_23BABB5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_23B9ECE7C(a1, a7);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v13 = *(_s21NavigationDestinationVMa(0, &v16) + 52);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v14 = type metadata accessor for SubscriptionStoreContainerContext(0, &v16);
  return (*(*(v14 - 8) + 32))(a7 + v13, a2, v14);
}

uint64_t sub_23BABB668(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreContentConfiguration(319);
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v9 = result;
    v4 = *(a1 + 32);
    v6[0] = *(a1 + 16);
    v6[1] = v4;
    result = type metadata accessor for SubscriptionStoreContainerContext(319, v6);
    if (v5 <= 0x3F)
    {
      v8 = 0;
      v10 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BABB6F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = sub_23BBDC208();
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v45 = v4;
  v46 = *(a3 + 16);
  v8 = *(v46 - 8);
  v47 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v8 + 84);
  v11 = sub_23BBDCDB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v14 - 1;
  if ((v14 - 1) <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14 - 1;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v5 + 80);
  if (v6)
  {
    v20 = *(v5 + 64);
  }

  else
  {
    v20 = *(v5 + 64) + 1;
  }

  v21 = *(v12 + 80);
  v22 = *(*(v11 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v23 = v21 & 0xF8;
  v24 = v23 | 7;
  v25 = v23 | 7 | *(v8 + 80);
  v26 = *(v8 + 64) + (v23 | 7);
  v27 = ((((v20 + ((v19 + 40) & ~v19) + ((v20 + v19) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 350) & 0xFFFFFFFFFFFFFFF8) + v25 + 10;
  if (a2 <= v18)
  {
    goto LABEL_41;
  }

  v28 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + ((v23 + 87) & ~v24) + (v26 & ~v24) + (v27 & ~v25) + 12;
  v29 = 8 * v28;
  if (v28 > 3)
  {
    goto LABEL_24;
  }

  v31 = ((a2 - v18 + ~(-1 << v29)) >> v29) + 1;
  if (HIWORD(v31))
  {
    v30 = *(a1 + v28);
    if (!v30)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (v31 > 0xFF)
  {
    v30 = *(a1 + v28);
    if (!*(a1 + v28))
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (v31 >= 2)
  {
LABEL_24:
    v30 = *(a1 + v28);
    if (!*(a1 + v28))
    {
      goto LABEL_41;
    }

LABEL_31:
    v32 = (v30 - 1) << v29;
    if (v28 > 3)
    {
      v32 = 0;
    }

    if (v28)
    {
      if (v28 <= 3)
      {
        v33 = v28;
      }

      else
      {
        v33 = 4;
      }

      switch(v33)
      {
        case 2:
          v34 = *a1;
          break;
        case 3:
          v34 = *a1 | (*(a1 + 2) << 16);
          break;
        case 4:
          v34 = *a1;
          break;
        default:
          v34 = *a1;
          break;
      }
    }

    else
    {
      v34 = 0;
    }

    return v18 + (v34 | v32) + 1;
  }

LABEL_41:
  if (v17 <= v9)
  {
    if ((v47 & 0x80000000) == 0)
    {
      v37 = *(a1 + 3);
      goto LABEL_47;
    }

    if (v6)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v19 + 40) & ~v19, v6, v45);
      v40 = EnumTagSinglePayload != 0;
      result = (EnumTagSinglePayload - 1);
      if (result != 0 && v40)
      {
        return result;
      }
    }

    return 0;
  }

  v35 = (a1 + v27) & ~v25;
  if (v10 >= v16)
  {

    return __swift_getEnumTagSinglePayload(v35, v10, v46);
  }

  else
  {
    v36 = ((((v26 + v35) & ~v24) + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v15 & 0x80000000) == 0)
    {
      v37 = *v36;
LABEL_47:
      if (v37 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      return (v37 + 1);
    }

    v41 = (v24 + ((((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v24;
    if (v13 < 0xFD)
    {
      v43 = *(((v22 + v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v43 >= 2)
      {
        v44 = (v43 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v44 = -1;
      }

      if ((v44 + 1) >= 2)
      {
        v42 = v44;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = __swift_getEnumTagSinglePayload(v41, v13, v11);
    }

    if (v42 >= 2)
    {
      return v42 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BABBB28(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v67 = sub_23BBDC208();
  v5 = *(v67 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v69 = *(a4 + 16);
  v8 = *(v69 - 8);
  v70 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v8 + 84);
  v11 = sub_23BBDCDB8();
  v74 = 0;
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v14 - 1;
  if (v14 - 1 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14 - 1;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  v68 = v6;
  v19 = *(v5 + 80);
  v20 = *(v5 + 64);
  if (v6)
  {
    v21 = *(v5 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = *(v12 + 80) & 0xF8;
  v23 = v22 | 7;
  v24 = v22 | 7 | *(v8 + 80);
  v25 = *(v8 + 64) + (v22 | 7);
  v26 = v25 & ~(v22 | 7);
  v27 = (v22 + 87) & ~(v22 | 7);
  v28 = *(*(v11 - 8) + 64);
  v29 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v30 = ((v21 + v19) & ~v19) + v21;
  v31 = v30 + ((v19 + 40) & ~v19);
  v32 = ((((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 350) & 0xFFFFFFFFFFFFFFF8) + v24 + 10;
  v33 = v27 + v29;
  v34 = v27 + v29 + v26 + 1;
  v35 = v34 + (v32 & ~v24) + 2;
  v36 = 8 * v35;
  if (a3 > v18)
  {
    if (v35 <= 3)
    {
      v38 = ((a3 - v18 + ~(-1 << v36)) >> v36) + 1;
      if (HIWORD(v38))
      {
        v37 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v37 = v39;
        }

        else
        {
          v37 = 0;
        }
      }
    }

    else
    {
      v37 = 1;
    }

    v74 = v37;
  }

  if (v18 < a2)
  {
    v40 = ~v18 + a2;
    if (v35 < 4)
    {
      v41 = (v40 >> v36) + 1;
      if (v34 + (v32 & ~v24) != -2)
      {
        v46 = v40 & ~(-1 << v36);
        bzero(a1, v35);
        if (v35 == 3)
        {
          *a1 = v46;
          *(a1 + 2) = BYTE2(v46);
        }

        else
        {
          if (v35 != 2)
          {
            v54 = v74;
            *a1 = v40;
            goto LABEL_75;
          }

          *a1 = v46;
        }
      }
    }

    else
    {
      bzero(a1, v34 + (v32 & ~v24) + 2);
      *a1 = v40;
      v41 = 1;
    }

    v54 = v74;
LABEL_75:
    switch(v54)
    {
      case 1:
        *(a1 + v35) = v41;
        return;
      case 2:
        *(a1 + v35) = v41;
        return;
      case 3:
        goto LABEL_125;
      case 4:
        *(a1 + v35) = v41;
        return;
      default:
        return;
    }
  }

  v42 = ~v19;
  v43 = ~v24;
  v44 = ~v23;
  v45 = a1;
  switch(v74)
  {
    case 1:
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    case 2:
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    case 3:
LABEL_125:
      __break(1u);
      JUMPOUT(0x23BABC238);
    case 4:
      *(a1 + v35) = 0;
      goto LABEL_44;
    default:
LABEL_44:
      if (!a2)
      {
        return;
      }

LABEL_45:
      if (v17 > v9)
      {
        v45 = ((a1 + v32) & v43);
        if (v17 < a2)
        {
          v47 = (v34 + 2);
          if (v47 <= 3)
          {
            v48 = ~(-1 << (8 * (v34 + 2)));
          }

          else
          {
            v48 = -1;
          }

          if (v34 != -2)
          {
            v49 = v48 & (~v17 + a2);
            if (v47 <= 3)
            {
              v50 = v34 + 2;
            }

            else
            {
              v50 = 4;
            }

            bzero(v45, v47);
            switch(v50)
            {
              case 2:
                goto LABEL_69;
              case 3:
                goto LABEL_98;
              case 4:
                goto LABEL_57;
              default:
                goto LABEL_118;
            }
          }

          return;
        }

        if (v10 >= v16)
        {
          v55 = (a1 + v32) & v43;
          v56 = a2;
          v13 = v10;
          v11 = v69;
        }

        else
        {
          v45 = ((v45 + v25) & v44);
          if (v16 < a2)
          {
            if (v33 <= 2)
            {
              v52 = ~(-1 << (8 * (v33 + 1)));
            }

            else
            {
              v52 = -1;
            }

            v49 = v52 & (~v16 + a2);
            if (v33 <= 2)
            {
              v53 = v33 + 1;
            }

            else
            {
              v53 = 4;
            }

            bzero(v45, v33 + 1);
            switch(v53)
            {
              case 2:
                goto LABEL_69;
              case 3:
LABEL_98:
                *v45 = v49;
                *(v45 + 2) = BYTE2(v49);
                break;
              case 4:
                goto LABEL_57;
              default:
                goto LABEL_118;
            }

            return;
          }

          v61 = ((v45 + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v15 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v62 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v62 = a2 - 1;
            }

            *v61 = v62;
            return;
          }

          v63 = v23 + ((((v61 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
          v45 = (v63 & v44);
          if (v15 < a2)
          {
            v49 = a2 - v14;
            goto LABEL_117;
          }

          v49 = a2 - v14;
          if (a2 >= v14)
          {
LABEL_117:
            bzero((v63 & v44), ((v28 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
            if (v29 <= 3)
            {
LABEL_118:
              *v45 = v49;
              return;
            }

LABEL_57:
            *v45 = v49;
            return;
          }

          v56 = a2 + 1;
          if (v13 < 0xFD)
          {
            v66 = (v45 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFC)
            {
              *v66 = 0;
              *(v66 + 8) = 0;
              *v66 = a2 - 253;
            }

            else
            {
              *(v66 + 8) = a2 + 3;
            }

            return;
          }

          v55 = v63 & v44;
        }

        goto LABEL_82;
      }

      if (v9 < a2)
      {
        v51 = ((((v31 + 7) & 0xFFFFFFF8) + 350) & 0xFFFFFFF8) + 10;
        v49 = ~v9 + a2;
        bzero(a1, v51);
        if (v51 <= 3)
        {
LABEL_69:
          *v45 = v49;
          return;
        }

        goto LABEL_57;
      }

      if ((v70 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *(a1 + 4) = 0u;
          *(a1 + 12) = 0u;
          *a1 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(a1 + 3) = a2 - 1;
        }

        return;
      }

      v57 = ((a1 + v19 + 40) & v42);
      if (v70 >= a2)
      {
        v13 = v68;
        if (a2 < v68)
        {
          v56 = a2 + 1;
          v55 = (a1 + v19 + 40) & v42;
          v11 = v67;
LABEL_82:

          __swift_storeEnumTagSinglePayload(v55, v56, v13, v11);
          return;
        }

        if (v20 <= 3)
        {
          v64 = ~(-1 << (8 * v20));
        }

        else
        {
          v64 = -1;
        }

        if (v20)
        {
          v59 = v64 & (a2 - v68);
          if (v20 <= 3)
          {
            v65 = v20;
          }

          else
          {
            v65 = 4;
          }

          bzero(v57, v20);
          switch(v65)
          {
            case 2:
LABEL_121:
              *v57 = v59;
              break;
            case 3:
LABEL_119:
              *v57 = v59;
              v57[2] = BYTE2(v59);
              break;
            case 4:
LABEL_120:
              *v57 = v59;
              break;
            default:
LABEL_111:
              *v57 = v59;
              break;
          }
        }
      }

      else
      {
        if (v30 <= 3)
        {
          v58 = ~(-1 << (8 * v30));
        }

        else
        {
          v58 = -1;
        }

        if (v30)
        {
          v59 = v58 & (~v70 + a2);
          if (v30 <= 3)
          {
            v60 = v30;
          }

          else
          {
            v60 = 4;
          }

          bzero(v57, v30);
          switch(v60)
          {
            case 2:
              goto LABEL_121;
            case 3:
              goto LABEL_119;
            case 4:
              goto LABEL_120;
            default:
              goto LABEL_111;
          }
        }
      }

      return;
  }
}

unint64_t sub_23BABC2E8()
{
  result = qword_27E19F260;
  if (!qword_27E19F260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F258, &qword_23BBF7D28);
    sub_23BABC36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F260);
  }

  return result;
}

unint64_t sub_23BABC36C()
{
  result = qword_27E19F268;
  if (!qword_27E19F268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EEC8, &unk_23BBF7D30);
    sub_23B9B0108();
    sub_23BAAF7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F268);
  }

  return result;
}

uint64_t sub_23BABC3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A528, &unk_23BBEA560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BABC468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A528, &unk_23BBEA560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23BABC4D0()
{
  result = qword_27E19A1D8;
  if (!qword_27E19A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1D8);
  }

  return result;
}

uint64_t sub_23BABC534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BABC58C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v23 = v2;
  v24 = v1;
  v21 = v3;
  v25 = v3;
  v26 = v4;
  v5 = _s21NavigationDestinationVMa(0, &v23);
  v22 = *(*(v5 - 8) + 80);
  v6 = (v0 + ((v22 + 48) & ~v22));
  __swift_destroy_boxed_opaque_existential_1(v6);
  v7 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  v8 = v6 + v7[5];
  v9 = type metadata accessor for SubscriptionOptionGroupAccessorySubview(0);
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    sub_23BBDC208();
    OUTLINED_FUNCTION_12_1();
    (*(v10 + 8))(v8);
  }

  v11 = *(type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v8 + v11, 1, v9))
  {
    sub_23BBDC208();
    OUTLINED_FUNCTION_12_1();
    (*(v12 + 8))(v8 + v11);
  }

  v13 = (v6 + v7[6]);
  if (v13[1])
  {

    if (v13[5] >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 2);
    }

    if (v13[10])
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 7);
    }

    if (v13[15])
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 12);
    }

    if (v13[20])
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 17);
    }

    if (v13[25])
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 22);
    }

    if (v13[31] >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 28);
    }

    if (v13[35] >= 4uLL)
    {

      if (v13[39])
      {
      }
    }
  }

  j__swift_bridgeObjectRelease(*(v6 + v7[7]));
  v14 = v6 + *(v5 + 52);
  (*(*(v2 - 8) + 8))(v14, v2);
  v23 = v2;
  v24 = v1;
  v25 = v21;
  v26 = v4;
  v15 = &v14[*(type metadata accessor for SubscriptionStoreContainerContext(0, &v23) + 52)];

  if (*(v15 + 6))
  {
  }

  v17 = *(type metadata accessor for SubscriptionStoreControlConfiguration(0, v1, v4, v16) + 60);
  v18 = type metadata accessor for Subscription(0);
  if (!__swift_getEnumTagSinglePayload(&v15[v17], 1, v18))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v19 + 8))(&v15[v17]);
  }

  return swift_deallocObject();
}

uint64_t sub_23BABC8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10[0] = v2[2];
  v5 = v10[0];
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  _s21NavigationDestinationVMa(0, v10);

  return sub_23BABB2DC(a1, v5, v6, v7, v8, a2);
}

uint64_t sub_23BABC978(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F258, &qword_23BBF7D28);
  v3 = sub_23BABC2E8();
  v6 = v2;
  v4 = a1[1];
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  type metadata accessor for SubscriptionStoreStaticViewContainer(255, &v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0, &qword_23BBF2AB0);
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier(255);
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23BABC4D0();
  swift_getWitnessTable();
  sub_23B9ECF44();
  swift_getWitnessTable();
  sub_23BABC534(&qword_27E19F270, type metadata accessor for WriteStoreKitEnvironmentValuesViewModifier, &unk_23BC01ECC);
  return swift_getWitnessTable();
}

uint64_t sub_23BABCB08(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23BABCB48(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23BABCBB4()
{
  sub_23BABD11C();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BABCC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_155();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F278, &qword_23BBF7E90);
  OUTLINED_FUNCTION_155();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23BABCDF8;
  *(v14 + 24) = v13;
  OUTLINED_FUNCTION_155();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F280, &qword_23BBF7EA8);
  OUTLINED_FUNCTION_155();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_23BBF7EA0;
  *(v16 + 24) = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F288, &qword_23BBF7EB0);
  (*(*(v17 - 8) + 16))(a6, a1, v17);
  v18 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F290, &qword_23BBF7EB8) + 36));
  *v18 = KeyPath;
  v18[1] = v14;
  v18[2] = v16;
}

uint64_t sub_23BABCDC4()
{

  OUTLINED_FUNCTION_155();

  return swift_deallocObject();
}

uint64_t sub_23BABCDF8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BABCE2C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_23BABCF30;

  return v9(a2, a3);
}

uint64_t sub_23BABCF30(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_23BABD04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23B9897C0;

  return sub_23BABCE2C(a1, a2, a3, v8);
}

unint64_t sub_23BABD11C()
{
  result = qword_27E19F298;
  if (!qword_27E19F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F298);
  }

  return result;
}

unint64_t sub_23BABD184()
{
  result = qword_27E19F2A0;
  if (!qword_27E19F2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F290, &qword_23BBF7EB8);
    sub_23B97B518(&qword_27E19F2A8, &qword_27E19F288, &qword_23BBF7EB0, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E19F2B0, qword_27E19F2B8, &qword_23BBF7EE8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F2A0);
  }

  return result;
}

uint64_t sub_23BABD26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  __swift_storeEnumTagSinglePayload(a8, 1, 1, v16);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v17 = type metadata accessor for CombinedMarketingContent(0, v20);
  v18 = a8 + v17[15];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  sub_23BABD3B4(a1, a8);
  (*(*(a4 - 8) + 32))(a8 + v17[13], a2, a4);
  return (*(*(a5 - 8) + 32))(a8 + v17[14], a3, a5);
}

uint64_t sub_23BABD3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_23BABD424(uint64_t a1)
{
  sub_23B9ECDC4(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_23B9D2354();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BABD4E0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23BBDC208();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = v10 - 1;
  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(v12 - 8);
  v18 = *(v17 + 84);
  if (v18 > v16)
  {
    v16 = *(v17 + 84);
  }

  v19 = *(v7 + 80);
  if (v8)
  {
    v20 = *(*(v6 - 8) + 64);
  }

  else
  {
    v20 = *(*(v6 - 8) + 64) + 1;
  }

  v21 = *(v14 + 80);
  v22 = *(v17 + 80);
  if (!a2)
  {
    return 0;
  }

  v23 = ((((v20 + ((v19 + 40) & ~v19) + ((v20 + v19) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 350) & 0xFFFFFFFFFFFFFFF8) + v21 + 10;
  v24 = *(*(*(a3 + 16) - 8) + 64) + v22;
  if (v16 < a2)
  {
    v25 = ((*(*(v12 - 8) + 64) + ((v24 + (v23 & ~v21)) & ~v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v25 <= 3)
    {
      v26 = ((a2 - v16 + 255) >> 8) + 1;
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

    switch(v28)
    {
      case 1:
        v29 = a1[v25];
        if (!a1[v25])
        {
          break;
        }

        goto LABEL_32;
      case 2:
        v29 = *&a1[v25];
        if (*&a1[v25])
        {
          goto LABEL_32;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BABD7E4);
      case 4:
        v29 = *&a1[v25];
        if (!v29)
        {
          break;
        }

LABEL_32:
        v30 = (v29 - 1) << (8 * v25);
        if (v25 <= 3)
        {
          v31 = *a1;
        }

        else
        {
          v30 = 0;
          v31 = *a1;
        }

        return v16 + (v31 | v30) + 1;
      default:
        break;
    }
  }

  if (v13 == v16)
  {
    if ((v9 & 0x80000000) != 0)
    {
      if (!v8)
      {
        return 0;
      }

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v19 + 40] & ~v19, v8, v6);
      if (EnumTagSinglePayload < 2)
      {
        return 0;
      }

      v33 = EnumTagSinglePayload - 1;
    }

    else
    {
      v32 = *(a1 + 3);
      if (v32 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      v33 = v32 + 1;
    }

    result = v33 - 1;
    if (v33 > 1)
    {
      return result;
    }

    return 0;
  }

  v35 = &a1[v23] & ~v21;
  if (v15 == v16)
  {
    v36 = v15;
  }

  else
  {
    v35 = (v24 + v35) & ~v22;
    v36 = v18;
    v11 = *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v35, v36, v11);
}

void sub_23BABD7F8(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_23BBDC208();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a4 + 16);
  v15 = *(a4 + 24);
  v16 = *(v14 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v13 - 1)
  {
    v18 = v13 - 1;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(v15 - 8);
  v20 = *(v19 + 84);
  if (v20 > v18)
  {
    v18 = *(v19 + 84);
  }

  v21 = *(v10 + 80);
  v22 = *(v10 + 64);
  if (v11)
  {
    v23 = *(v10 + 64);
  }

  else
  {
    v23 = v22 + 1;
  }

  v24 = ((v23 + v21) & ~v21) + v23;
  v25 = v24 + ((v21 + 40) & ~v21);
  v26 = *(v16 + 80);
  v27 = ((((v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 350) & 0xFFFFFFFFFFFFFFF8) + v26 + 10;
  v28 = *(v19 + 80);
  v29 = *(*(*(a4 + 16) - 8) + 64) + v28;
  v30 = ((*(*(v15 - 8) + 64) + ((v29 + (v27 & ~v26)) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 < a3)
  {
    if (v30 <= 3)
    {
      v31 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v9 = v32;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v18 < a2)
  {
    v33 = ~v18 + a2;
    bzero(a1, v30);
    if (v30 <= 3)
    {
      v34 = (v33 >> 8) + 1;
    }

    else
    {
      v34 = 1;
    }

    if (v30 > 3)
    {
      *a1 = v33;
    }

    else
    {
      *a1 = v33;
    }

    switch(v9)
    {
      case 1:
        *(a1 + v30) = v34;
        return;
      case 2:
        *(a1 + v30) = v34;
        return;
      case 3:
        goto LABEL_84;
      case 4:
        *(a1 + v30) = v34;
        return;
      default:
        return;
    }
  }

  v35 = ~v28;
  switch(v9)
  {
    case 1:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    case 2:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    case 3:
LABEL_84:
      __break(1u);
      JUMPOUT(0x23BABDCA0);
    case 4:
      *(a1 + v30) = 0;
      goto LABEL_40;
    default:
LABEL_40:
      if (!a2)
      {
        return;
      }

LABEL_41:
      if (v13 - 1 != v18)
      {
        v38 = (a1 + v27) & ~v26;
        if (v17 == v18)
        {
          v39 = a2;
          v11 = v17;
        }

        else
        {
          v38 = (v29 + v38) & v35;
          v39 = a2;
          v11 = v20;
          v14 = v15;
        }

LABEL_55:

        __swift_storeEnumTagSinglePayload(v38, v39, v11, v14);
        return;
      }

      v36 = a2 - v13;
      if (a2 >= v13)
      {
        bzero(a1, ((((v25 + 7) & 0xFFFFFFF8) + 350) & 0xFFFFFFF8) + 10);
        if (((((v25 + 7) & 0xFFFFFFF8) + 350) & 0xFFFFFFF8) + 10 <= 3)
        {
          *a1 = v36;
        }

        else
        {
          *a1 = v36;
        }

        return;
      }

      v37 = a2 + 1;
      if ((v12 & 0x80000000) == 0)
      {
        if (v37 < 0)
        {
          *(a1 + 2) = 0u;
          *(a1 + 6) = 0u;
          *a1 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          *(a1 + 3) = a2;
        }

        return;
      }

      v40 = ((a1 + v21 + 40) & ~v21);
      if (a2 < v12)
      {
        if (a2 + 2 > v11)
        {
          if (v22 <= 3)
          {
            v41 = ~(-1 << (8 * v22));
          }

          else
          {
            v41 = -1;
          }

          if (v22)
          {
            v42 = v41 & (v37 - v11);
            if (v22 <= 3)
            {
              v43 = v22;
            }

            else
            {
              v43 = 4;
            }

            bzero(v40, v22);
            switch(v43)
            {
              case 2:
                goto LABEL_82;
              case 3:
                goto LABEL_80;
              case 4:
                goto LABEL_81;
              default:
                goto LABEL_78;
            }
          }

          return;
        }

        v38 = v40;
        v39 = (a2 + 2);
        v14 = v8;
        goto LABEL_55;
      }

      if (v24 <= 3)
      {
        v44 = ~(-1 << (8 * v24));
      }

      else
      {
        v44 = -1;
      }

      if (v24)
      {
        v42 = v44 & (a2 - v12);
        if (v24 <= 3)
        {
          v45 = v24;
        }

        else
        {
          v45 = 4;
        }

        bzero(v40, v24);
        switch(v45)
        {
          case 2:
LABEL_82:
            *v40 = v42;
            break;
          case 3:
LABEL_80:
            *v40 = v42;
            v40[2] = BYTE2(v42);
            break;
          case 4:
LABEL_81:
            *v40 = v42;
            break;
          default:
LABEL_78:
            *v40 = v42;
            break;
        }
      }

      return;
  }
}

uint64_t sub_23BABDD2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F340, qword_23BBF8000);
  v3 = sub_23BBDC1E8();
  v4 = sub_23BBDC208();
  OUTLINED_FUNCTION_0_36();
  v7 = sub_23BABEA38(v5, v6, MEMORY[0x277CE12B0]);
  v23 = v3;
  v24 = v4;
  v20[0] = *(a1 + 16);
  v8 = *(a1 + 40);
  v22 = *(&v20[0] + 1);
  v25 = v8;
  v26 = v7;
  sub_23BBDC1A8();
  swift_getTupleTypeMetadata3();
  v9 = sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  v10 = sub_23BBDC078();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v20 - v15;
  *&v17 = *(a1 + 32);
  *(&v17 + 1) = v8;
  v20[2] = v20[0];
  v20[3] = v17;
  v21 = v1;
  sub_23B9BE15C(v9);
  sub_23BBDC068();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_23B9D2D88();
  return (v18)(v16, v10);
}

uint64_t sub_23BABDF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F340, qword_23BBF8000);
  v20 = a3;
  v21 = sub_23BBDC1E8();
  v22 = sub_23BBDC208();
  v23 = a5;
  v24 = sub_23BABEA38(&qword_27E19B1F8, MEMORY[0x277CE12A8], MEMORY[0x277CE12B0]);
  sub_23BBDC1A8();
  swift_getTupleTypeMetadata3();
  v9 = sub_23BBDC3D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v16 = type metadata accessor for CombinedMarketingContent(0, &v20);
  sub_23BABE1A8(v16, v12);
  swift_getWitnessTable();
  sub_23B9D2D88();
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_23B9D2D88();
  return (v17)(v15, v9);
}

uint64_t sub_23BABE1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v5 = *(a1 + 24);
  v70 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBDC1E8();
  v9 = sub_23BBDC208();
  v10 = *(a1 + 40);
  v11 = sub_23BABEA38(&qword_27E19B1F8, MEMORY[0x277CE12A8], MEMORY[0x277CE12B0]);
  v80 = v5;
  v81 = v8;
  v82 = v9;
  v83 = v10;
  v68 = v10;
  v84 = v11;
  v65 = sub_23BBDC1A8();
  v69 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v57 - v14;
  v15 = sub_23BBDA928();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v59 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F340, qword_23BBF8000);
  MEMORY[0x28223BE20](v64);
  v67 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v57 - v26;
  v66 = *(*(a1 + 16) - 8);
  MEMORY[0x28223BE20](v28);
  v75 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v31 = *(a1 + 32);
  v74 = &v57 - v32;
  v61 = v33;
  v63 = v31;
  sub_23B9D2D88();
  sub_23BA9B0D4(v3, v20, qword_27E19A490, qword_23BBEA4A0);
  v34 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v34);
  v71 = v3;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9EA92C(v20, qword_27E19A490, qword_23BBEA4A0);
    v36 = 1;
  }

  else
  {
    v58 = v15;
    v37 = v3 + *(a1 + 60);
    v38 = *v37;
    if (*(v37 + 8) != 1)
    {

      sub_23BBDD5A8();
      v39 = sub_23BBDB338();
      v57 = v5;
      v40 = v39;
      sub_23BBD9978();

      v5 = v57;
      v41 = v59;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v38, 0);
      (*(v16 + 8))(v41, v58);
      LOBYTE(v38) = v80;
    }

    sub_23BAAF390(v38 & 1, v24);
    sub_23B9ECF98(v20);
    v36 = 0;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F258, &qword_23BBF7D28);
  __swift_storeEnumTagSinglePayload(v24, v36, 1, v42);
  v43 = v27;
  v60 = v27;
  sub_23BABE94C(v24, v27);
  (*(v70 + 16))(v7, v71 + *(a1 + 56), v5);
  v44 = v62;
  sub_23B9758C0(v7, v5, v68);
  v79[3] = MEMORY[0x277CE12C8];
  v45 = v65;
  WitnessTable = swift_getWitnessTable();
  v47 = v72;
  sub_23B9D2D88();
  v48 = v69;
  v71 = *(v69 + 8);
  v71(v44, v45);
  v49 = v66;
  v50 = v75;
  v51 = v61;
  (*(v66 + 16))(v75, v74, v61);
  v80 = v50;
  v52 = v43;
  v53 = v67;
  sub_23BA9B0D4(v52, v67, &qword_27E19F340, qword_23BBF8000);
  v81 = v53;
  (*(v48 + 16))(v44, v47, v45);
  v82 = v44;
  v79[0] = v51;
  v79[1] = v64;
  v79[2] = v45;
  v76 = v63;
  v77 = sub_23BABE9BC(&qword_27E19F348, &qword_27E19F340, qword_23BBF8000, sub_23BABC2E8);
  v78 = WitnessTable;
  sub_23BB6739C(&v80, 3, v79);
  v54 = v71;
  v71(v47, v45);
  sub_23B9EA92C(v60, &qword_27E19F340, qword_23BBF8000);
  v55 = *(v49 + 8);
  v55(v74, v51);
  v54(v44, v45);
  sub_23B9EA92C(v53, &qword_27E19F340, qword_23BBF8000);
  return (v55)(v75, v51);
}

uint64_t sub_23BABE94C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F340, qword_23BBF8000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BABE9BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_23BABEA38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BABEA80(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F340, qword_23BBF8000);
  sub_23BBDC1E8();
  sub_23BBDC208();
  OUTLINED_FUNCTION_0_36();
  sub_23BABEA38(v1, v2, MEMORY[0x277CE12B0]);
  sub_23BBDC1A8();
  swift_getTupleTypeMetadata3();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();
  return swift_getWitnessTable();
}

BOOL sub_23BABEB94(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for SubscriptionStoreContentConfiguration(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) != 0);
  return v7 == v8;
}

uint64_t sub_23BABEC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23B9ECE7C(a1, a3);
  v5 = OUTLINED_FUNCTION_12_8();
  v7 = type metadata accessor for NestedSubscriptionOptionContentView(v5, v6);
  v8 = *(v7 + 52);
  v9 = OUTLINED_FUNCTION_12_8();
  type metadata accessor for SubscriptionStoreContainerContext(v9, v10);
  OUTLINED_FUNCTION_4_1();
  (*(v11 + 32))(a3 + v8, a2);
  v12 = a3 + *(v7 + 56);
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

double sub_23BABED24(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1 & 1;
  sub_23BB1106C(KeyPath, &v8, a2, a3);

  return result;
}

BOOL sub_23BABED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v6 = a1;
  v7 = type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  if (v6 == 2)
  {
    sub_23BBDD518();
    v13 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_23B979910(v12, qword_27E19A490, qword_23BBEA4A0);
      return 0;
    }

    sub_23BAC44A8(&v12[*(v13 + 20)], v9, type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews);
    sub_23BAC4508(v12, type metadata accessor for SubscriptionStoreContentConfiguration);
    v14 = sub_23BA227E4();
    sub_23BAC4508(v9, type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews);
    return v14;
  }

  return v5;
}

uint64_t sub_23BABEF44(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  sub_23B99FCE0(v1 + *(v7 + 24), &v12, &qword_27E19A528, &unk_23BBEA560);
  if (v13[0])
  {
    sub_23B9ECFF4(v13, v11);
    sub_23B9ED050(&v12);
    v8 = v11[0];

    sub_23B9ED0A4(v11);
  }

  else
  {
    sub_23B979910(&v12, &qword_27E19A528, &unk_23BBEA560);
    (*(v4 + 16))(v6, v1 + *(a1 + 52), v3);
    return sub_23BBC4ECC(v6, v3, *(a1 + 32));
  }

  return v8;
}

uint64_t sub_23BABF0A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36[9] = a2;
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = OUTLINED_FUNCTION_8_28();
  v36[4] = type metadata accessor for NestedSubscriptionOptionContentView.LeafView(v6, v7);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F3E0, &unk_23BBF8200);
  OUTLINED_FUNCTION_48();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_48();
  v36[2] = sub_23BBDC3D8();
  v36[0] = sub_23BBDACE8();
  v8 = OUTLINED_FUNCTION_8_28();
  v36[1] = type metadata accessor for NestedSubscriptionOptionContentView.LinkGroupView(v8, v9);
  v10 = OUTLINED_FUNCTION_8_28();
  v12 = type metadata accessor for NestedSubscriptionOptionContentView.TabGroupView(v10, v11);
  OUTLINED_FUNCTION_13_22(v12, &v37);
  v13 = sub_23BBDACE8();
  OUTLINED_FUNCTION_13_22(v13, &v38);
  v14 = sub_23BBDACE8();
  OUTLINED_FUNCTION_13_22(v14, &v39);
  v15 = sub_23BBDACE8();
  OUTLINED_FUNCTION_13_22(v15, &v40);
  sub_23BBDACE8();
  v16 = sub_23BBDBE28();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v36 - v21;
  v36[12] = v3;
  v36[13] = v2;
  v36[14] = v4;
  v36[15] = v5;
  v36[16] = v36[8];
  OUTLINED_FUNCTION_7_29();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_23B9ECF44();
  v36[29] = WitnessTable;
  v36[30] = v24;
  OUTLINED_FUNCTION_0();
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_5();
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x277CE1410];
  v36[27] = MEMORY[0x277CE1410];
  v36[28] = v26;
  v28 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_25();
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_29();
  v30 = swift_getWitnessTable();
  v36[25] = v29;
  v36[26] = v30;
  v36[23] = swift_getWitnessTable();
  v36[24] = v27;
  v31 = swift_getWitnessTable();
  v36[21] = v28;
  v36[22] = v31;
  v32 = swift_getWitnessTable();
  v36[19] = v25;
  v36[20] = v32;
  v33 = swift_getWitnessTable();
  sub_23BBDBE18();
  v36[18] = v33;
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v34 = *(v17 + 8);
  v34(v19, v16);
  sub_23B9D2D88();
  return (v34)(v22, v16);
}

uint64_t sub_23BABF450@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v240 = a1;
  v238 = a6;
  v271 = a2;
  v272 = a3;
  v273 = a4;
  v274 = a5;
  v10 = type metadata accessor for NestedSubscriptionOptionContentView.TabGroupView(0, &v271);
  v199 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v198 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v197 = &v190 - v13;
  v271 = a2;
  v272 = a3;
  v273 = a4;
  v274 = a5;
  v14 = type metadata accessor for NestedSubscriptionOptionContentView.LinkGroupView(255, &v271);
  v237 = v10;
  v15 = sub_23BBDACE8();
  v201 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v200 = &v190 - v16;
  v245 = v14;
  v196 = *(v14 - 8);
  MEMORY[0x28223BE20](v17);
  v195 = &v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v194 = &v190 - v20;
  v239 = v21;
  v22 = sub_23BBDACE8();
  v210 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v209 = &v190 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v211 = &v190 - v25;
  v26 = sub_23BBDA928();
  v192 = *(v26 - 8);
  v193 = v26;
  MEMORY[0x28223BE20](v26);
  v191 = &v190 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F3E0, &unk_23BBF8200);
  v271 = a2;
  v272 = a3;
  v273 = a4;
  v274 = a5;
  v29 = type metadata accessor for NestedSubscriptionOptionContentView(255, &v271);
  swift_getTupleTypeMetadata2();
  v30 = sub_23BBDC3D8();
  v208 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v219 = &v190 - v31;
  v271 = a2;
  v272 = a3;
  v273 = a4;
  v274 = a5;
  v228 = type metadata accessor for SubscriptionStoreContainerContext(0, &v271);
  v212 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v213 = &v190 - v32;
  v233 = v29;
  v204 = *(v29 - 8);
  MEMORY[0x28223BE20](v33);
  v206 = &v190 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v216 = &v190 - v36;
  v207 = v28;
  MEMORY[0x28223BE20](v37);
  v205 = &v190 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v215 = &v190 - v40;
  v41 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  v202 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v203 = &v190 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v214 = &v190 - v44;
  v243 = v30;
  v45 = sub_23BBDACE8();
  v218 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v217 = &v190 - v46;
  v244 = v47;
  v242 = v22;
  v48 = sub_23BBDACE8();
  v226 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v225 = &v190 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v232 = &v190 - v51;
  v223 = type metadata accessor for SubscriptionStoreControlConfiguration(0, a3, a5, v52);
  v221 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v222 = (&v190 - v53);
  v230 = a2;
  v231 = a3;
  v271 = a2;
  v272 = a3;
  v227 = a4;
  v273 = a4;
  v229 = a5;
  v274 = a5;
  v54 = type metadata accessor for NestedSubscriptionOptionContentView.LeafView(0, &v271);
  v224 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v56 = &v190 - v55;
  v57 = sub_23BBDA358();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = &v190 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v63 = &v190 - v62;
  v64 = sub_23BBDACE8();
  v65 = v240;
  v235 = *(v64 - 8);
  v236 = v64;
  v67 = MEMORY[0x28223BE20](v64);
  v69 = &v190 - v68;
  v70 = &v65[*(v41 + 28)];
  v71 = *v70;
  LOBYTE(v70) = v70[8];
  v241 = v69;
  v234 = v54;
  if (v70)
  {
    v72 = v233;
    v223 = v57;
    v224 = v48;
    v73 = *(v71 + 16);
    if (v73 == 1)
    {
      v97 = v71 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
      v98 = v214;
      v222 = type metadata accessor for SubscriptionStoreContentConfiguration;
      sub_23BAC44A8(v97, v214, type metadata accessor for SubscriptionStoreContentConfiguration);
      v99 = v215;
      sub_23BAAF390(1, v215);
      KeyPath = swift_getKeyPath();
      v101 = v207;
      v102 = v99 + *(v207 + 36);
      *v102 = KeyPath;
      *(v102 + 8) = 1;
      v103 = v203;
      sub_23BAC44A8(v98, v203, type metadata accessor for SubscriptionStoreContentConfiguration);
      v104 = v72;
      v105 = v213;
      (*(v212 + 16))(v213, &v240[*(v72 + 52)], v228);
      v106 = v206;
      sub_23BABEC68(v103, v105, v206);
      WitnessTable = swift_getWitnessTable();
      v108 = v216;
      sub_23B9D2D88();
      v109 = v204;
      v110 = *(v204 + 8);
      (v110)(v106, v104);
      v240 = v110;
      v111 = v99;
      v112 = v205;
      sub_23B99FCE0(v111, v205, &qword_27E19F3E0, &unk_23BBF8200);
      v271 = v112;
      (*(v109 + 16))(v106, v108, v104);
      v272 = v106;
      v270[0] = v101;
      v270[1] = v104;
      v268 = sub_23BAC42D8();
      v269 = WitnessTable;
      sub_23BB6739C(&v271, 2, v270);
      (v110)(v106, v104);
      sub_23B979910(v112, &qword_27E19F3E0, &unk_23BBF8200);
      v113 = v243;
      v114 = swift_getWitnessTable();
      v115 = v217;
      v116 = MEMORY[0x277CE1410];
      sub_23BA82E14();
      v266 = v116;
      v267 = v114;
      v117 = v244;
      swift_getWitnessTable();
      v118 = swift_getWitnessTable();
      v119 = swift_getWitnessTable();
      v264 = v118;
      v265 = v119;
      v262 = swift_getWitnessTable();
      v263 = MEMORY[0x277CE1410];
      swift_getWitnessTable();
      sub_23BA82D64();
      (*(v218 + 8))(v115, v117);
      (*(v208 + 8))(v219, v113);
      (v240)(v216, v104);
      v77 = MEMORY[0x277CE1410];
      sub_23B979910(v215, &qword_27E19F3E0, &unk_23BBF8200);
      sub_23BAC4508(v214, v222);
      goto LABEL_19;
    }

    v74 = v244;
    if (!v73)
    {
      v75 = swift_getWitnessTable();
      v76 = v217;
      v77 = MEMORY[0x277CE1410];
      sub_23BA82D64();
      v260 = v77;
      v261 = v75;
      swift_getWitnessTable();
      v78 = swift_getWitnessTable();
      v79 = swift_getWitnessTable();
      v258 = v78;
      v259 = v79;
      v256 = swift_getWitnessTable();
      v257 = v77;
      swift_getWitnessTable();
      sub_23BA82D64();
      (*(v218 + 8))(v76, v74);
LABEL_19:
      v166 = swift_getWitnessTable();
      v270[26] = v77;
      v270[27] = v166;
      v167 = swift_getWitnessTable();
      v168 = swift_getWitnessTable();
      v169 = swift_getWitnessTable();
      v270[24] = v168;
      v270[25] = v169;
      v270[22] = swift_getWitnessTable();
      v270[23] = v77;
      v170 = swift_getWitnessTable();
      v270[20] = v167;
      v270[21] = v170;
      v171 = v224;
      swift_getWitnessTable();
      v172 = v225;
      v173 = v232;
      sub_23B9D2D88();
      v174 = swift_getWitnessTable();
      v175 = sub_23B9ECF44();
      v270[18] = v174;
      v270[19] = v175;
      swift_getWitnessTable();
      sub_23BA82E14();
      v176 = *(v226 + 8);
      v176(v172, v171);
      v176(v173, v171);
      goto LABEL_20;
    }

    v120 = v71;
    v121 = v240;
    sub_23B99FCE0(&v240[*(v66 + 24)], &v271, &qword_27E19A528, &unk_23BBEA560);
    if (v272)
    {
      v122 = v271;
      v123 = v120;

      sub_23B9ED050(&v271);
    }

    else
    {

      sub_23B979910(&v271, &qword_27E19A528, &unk_23BBEA560);
      v124 = &v121[*(v72 + 56)];
      v122 = *v124;
      if (v124[8] != 1)
      {

        sub_23BBDD5A8();
        v125 = sub_23BBDB338();
        sub_23BBD9978();

        v121 = v240;
        v126 = v191;
        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B97B450(v122, 0);
        (*(v192 + 8))(v126, v193);
        v122 = v271;
      }

      v123 = v120;
    }

    v271 = v123;
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EF20, &qword_23BBF7380);
    v128 = sub_23B97B518(&qword_27E19F3E8, &qword_27E19EF20, &qword_23BBF7380, MEMORY[0x277D83988]);
    v129 = v72;
    v130 = sub_23BABED9C(v122, &v271, v72, v127, v128);
    if (v130)
    {
      v132 = v229;
      v131 = v230;
      v133 = v227;
      v134 = v231;
      if (!v130)
      {
        j__swift_bridgeObjectRelease(v120);
        v158 = swift_getWitnessTable();
        v159 = swift_getWitnessTable();
        v270[34] = v158;
        v270[35] = v159;
        swift_getWitnessTable();
        v157 = v211;
        sub_23BA82E14();
        goto LABEL_18;
      }

      v135 = *(v129 + 52);
      v136 = v213;
      (*(v212 + 16))(v213, &v240[v135], v228);
      v137 = v198;
      sub_23BAC10D0(v120, v136, v131, v134, v133, v132, v198);
      v138 = v237;
      v139 = swift_getWitnessTable();
      v140 = v197;
      sub_23B9D2D88();
      v141 = *(v199 + 8);
      v141(v137, v138);
      sub_23B9D2D88();
      v142 = swift_getWitnessTable();
      v143 = v200;
      sub_23BA82E14();
      v270[4] = v142;
      v270[5] = v139;
      v144 = v239;
      swift_getWitnessTable();
      v145 = v211;
      sub_23BA82D64();
      (*(v201 + 8))(v143, v144);
      v141(v137, v138);
      v146 = v140;
      v147 = v138;
    }

    else
    {
      v148 = &v121[*(v72 + 52)];
      v149 = v213;
      (*(v212 + 16))(v213, v148, v228);
      v150 = v195;
      sub_23BAC1018(v120, v149, v230, v231, v227, v229, v195);
      v151 = v245;
      v152 = swift_getWitnessTable();
      v153 = v194;
      sub_23B9D2D88();
      v141 = *(v196 + 8);
      v141(v150, v151);
      sub_23B9D2D88();
      v154 = swift_getWitnessTable();
      v155 = v200;
      sub_23BA82D64();
      v270[2] = v152;
      v270[3] = v154;
      v156 = v239;
      swift_getWitnessTable();
      v145 = v211;
      sub_23BA82D64();
      (*(v201 + 8))(v155, v156);
      v141(v150, v151);
      v146 = v153;
      v147 = v151;
    }

    v141(v146, v147);
    v157 = v145;
LABEL_18:
    v160 = v242;
    v161 = swift_getWitnessTable();
    v162 = swift_getWitnessTable();
    v270[32] = v161;
    v270[33] = v162;
    v270[30] = swift_getWitnessTable();
    v77 = MEMORY[0x277CE1410];
    v270[31] = MEMORY[0x277CE1410];
    swift_getWitnessTable();
    v163 = v209;
    sub_23B9D2D88();
    v164 = swift_getWitnessTable();
    v270[28] = v77;
    v270[29] = v164;
    swift_getWitnessTable();
    sub_23BA82E14();
    v165 = *(v210 + 8);
    v165(v163, v160);
    v165(v157, v160);
    goto LABEL_19;
  }

  v232 = v58;
  v80 = v233;
  v81 = *(v221 + 16);
  v82 = &v65[*(v233 + 52) + *(v228 + 52)];
  v220 = v63;
  v83 = v71;
  v84 = v54;
  v85 = v66;
  v228 = v60;
  v86 = v222;
  v81(v222, v82, v223, v67);

  v87 = sub_23BABEF44(v80);
  sub_23BAC0F5C(v83, v86, v87, v231, v229, v56, v230, v227);
  v88 = *(v85 + 24);
  v89 = swift_getWitnessTable();
  v90 = v228;
  sub_23BA2241C(&v65[v88], v84, v89);
  (*(v224 + 8))(v56, v84);
  v91 = sub_23B9ECF44();
  v254 = v89;
  v255 = v91;
  v240 = swift_getWitnessTable();
  sub_23B9D2D88();
  v92 = *(v232 + 1);
  v92(v90, v57);
  sub_23B9D2D88();
  v93 = swift_getWitnessTable();
  v252 = MEMORY[0x277CE1410];
  v253 = v93;
  v233 = swift_getWitnessTable();
  v94 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v250 = v94;
  v251 = v95;
  v248 = swift_getWitnessTable();
  v249 = MEMORY[0x277CE1410];
  v96 = swift_getWitnessTable();
  v246 = v233;
  v247 = v96;
  swift_getWitnessTable();
  sub_23BA82D64();
  v92(v90, v57);
  v92(v220, v57);
LABEL_20:
  v177 = swift_getWitnessTable();
  v178 = sub_23B9ECF44();
  v270[16] = v177;
  v270[17] = v178;
  v179 = swift_getWitnessTable();
  v180 = swift_getWitnessTable();
  v181 = MEMORY[0x277CE1410];
  v270[14] = MEMORY[0x277CE1410];
  v270[15] = v180;
  v182 = swift_getWitnessTable();
  v183 = swift_getWitnessTable();
  v184 = swift_getWitnessTable();
  v270[12] = v183;
  v270[13] = v184;
  v270[10] = swift_getWitnessTable();
  v270[11] = v181;
  v185 = swift_getWitnessTable();
  v270[8] = v182;
  v270[9] = v185;
  v186 = swift_getWitnessTable();
  v270[6] = v179;
  v270[7] = v186;
  v187 = v236;
  swift_getWitnessTable();
  v188 = v241;
  sub_23B9D2D88();
  return (*(v235 + 8))(v188, v187);
}

uint64_t sub_23BAC0F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, char *a6@<X8>, uint64_t a7@<X3>, uint64_t a8@<X5>)
{
  *a6 = a1;
  v18[0] = a7;
  v18[1] = a4;
  v18[2] = a8;
  v18[3] = a5;
  v13 = type metadata accessor for NestedSubscriptionOptionContentView.LeafView(0, v18);
  v14 = *(v13 + 52);
  v16 = type metadata accessor for SubscriptionStoreControlConfiguration(0, a4, a5, v15);
  result = (*(*(v16 - 8) + 32))(&a6[v14], a2, v16);
  *&a6[*(v13 + 56)] = a3;
  return result;
}

uint64_t sub_23BAC1018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v13 = *(type metadata accessor for NestedSubscriptionOptionContentView.LinkGroupView(0, &v16) + 52);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v14 = type metadata accessor for SubscriptionStoreContainerContext(0, &v16);
  return (*(*(v14 - 8) + 32))(&a7[v13], a2, v14);
}

uint64_t sub_23BAC10D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  *&v28 = a5;
  *(&v28 + 1) = a6;
  v17 = type metadata accessor for NestedSubscriptionOptionContentView.TabGroupView(0, &v27);
  v18 = *(v17 + 56);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_23BAC14A0(&v27);
  *a7 = a1;
  v19 = *(v17 + 52);
  *&v27 = a3;
  *(&v27 + 1) = a4;
  *&v28 = a5;
  *(&v28 + 1) = a6;
  v20 = type metadata accessor for SubscriptionStoreContainerContext(0, &v27);
  v21 = *(v20 - 8);
  (*(v21 + 16))(&a7[v19], a2, v20);
  sub_23BAC78C8(a1, v16);
  (*(v21 + 8))(a2, v20);
  v22 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v22) == 1)
  {
    sub_23B979910(v16, qword_27E19A490, qword_23BBEA4A0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  else
  {
    sub_23B97933C(v16, &v24);
    sub_23BAC4508(v16, type metadata accessor for SubscriptionStoreContentConfiguration);
  }

  v27 = v24;
  v28 = v25;
  v29 = v26;
  v30 = 0;
  return sub_23BAC4438(&v27, &a7[v18]);
}

uint64_t sub_23BAC12DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SubscriptionStoreControlConfiguration(0, *(a1 + 24), *(a1 + 40), a2);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0, &qword_23BBE4020);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v17 - v11;
  v13 = *(v3 + *(a1 + 56));
  v14 = *v3;

  sub_23B9785B0(v14);
  sub_23B977BC0(v6);
  (*(v7 + 8))(v9, v6);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F598, &qword_23BBF8388);
  sub_23B99FCE0(v12, a3 + *(v15 + 36), &qword_27E197BB0, &qword_23BBE4020);
  v17[1] = v13;
  sub_23BBDAFF8();
  return sub_23B979910(v12, &qword_27E197BB0, &qword_23BBE4020);
}

uint64_t sub_23BAC14A0(uint64_t a1)
{
  sub_23B99FCE0(a1, v3, &qword_27E197878, &qword_23BBE38D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197878, &qword_23BBE38D0);
  sub_23BBDBF58();
  return sub_23B979910(a1, &qword_27E197878, &qword_23BBE38D0);
}

uint64_t sub_23BAC1524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F3F8, &unk_23BBF8220);
  sub_23BBDBF68();
  v9 = *(a1 + 32);
  v13 = *(a1 + 16);
  v14 = v9;
  v15 = v2;
  sub_23BBB6F70(sub_23BAC604C, v8);
  sub_23B979910(v16, &qword_27E197878, &qword_23BBE38D0);
  v10 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_23BAC78C8(*v3, a2);
    result = __swift_getEnumTagSinglePayload(v8, 1, v10);
    if (result != 1)
    {
      return sub_23B979910(v8, qword_27E19A490, qword_23BBEA4A0);
    }
  }

  else
  {
    sub_23B9ECE7C(v8, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_23BAC16A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v155 = a1[2];
  v4 = v155;
  v156 = v5;
  v157 = v6;
  v158 = v7;
  v110 = type metadata accessor for SubscriptionStoreContainerContext(0, &v155);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = v105 - v8;
  v136 = v4;
  v155 = v4;
  v156 = v5;
  v135 = v5;
  v134 = v6;
  v157 = v6;
  v158 = v7;
  v133 = v7;
  v9 = type metadata accessor for NestedSubscriptionOptionContentView(0, &v155);
  v112 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v111 = v105 - v10;
  v141 = v11;
  v12 = sub_23BBDA358();
  v115 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v114 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = v105 - v15;
  v128 = v16;
  v130 = sub_23BBDD648();
  v124 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = v105 - v19;
  v120 = *(a1 - 1);
  MEMORY[0x28223BE20](v20);
  v118 = v21;
  v119 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F5B0, &qword_23BBF8398);
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v140 = v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v142 = v105 - v24;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F3E0, &unk_23BBF8200);
  MEMORY[0x28223BE20](v138);
  v106 = v105 - v25;
  v26 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  v116 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v107 = v105 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = v105 - v32;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F5B8, &qword_23BBF83A0);
  MEMORY[0x28223BE20](v122);
  v139 = v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = v105 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v38 - 8);
  v117 = v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = v105 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = v105 - v44;
  v123 = a1;
  sub_23BAC1524(a1, v105 - v44);
  v137 = v45;
  sub_23B99FCE0(v45, v42, qword_27E19A490, qword_23BBEA4A0);
  v121 = v26;
  if (__swift_getEnumTagSinglePayload(v42, 1, v26) == 1)
  {
    sub_23B979910(v42, qword_27E19A490, qword_23BBEA4A0);
    v46 = 1;
    v47 = v37;
    v48 = v138;
  }

  else
  {
    sub_23B9ECE7C(v42, v33);
    v49 = v106;
    sub_23BAAF390(1, v106);
    sub_23BAC4508(v33, type metadata accessor for SubscriptionStoreContentConfiguration);
    KeyPath = swift_getKeyPath();
    v51 = v138;
    v52 = v49 + *(v138 + 36);
    *v52 = KeyPath;
    *(v52 + 8) = 1;
    sub_23BAC5F54(v49, v37);
    v46 = 0;
    v47 = v37;
    v48 = v51;
  }

  v138 = v47;
  __swift_storeEnumTagSinglePayload(v47, v46, 1, v48);
  v53 = v2;
  v54 = *v2;
  v55 = v123;
  v56 = *(v123 + 14);

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F3F8, &unk_23BBF8220);
  v106 = v56;
  v105[1] = v57;
  sub_23BBDBF88();
  sub_23BAAFC80(v54, &v152, &v155);
  v58 = *(v54 + 16);
  v59 = MEMORY[0x277D84F90];
  v132 = v53;
  if (v58)
  {
    v151[0] = MEMORY[0x277D84F90];
    sub_23BA92C88();
    v59 = v151[0];
    v60 = v54 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v61 = *(v116 + 72);
    do
    {
      sub_23BAC44A8(v60, v28, type metadata accessor for SubscriptionStoreContentConfiguration);
      sub_23B97933C(v28, &v152);
      sub_23BAC4508(v28, type metadata accessor for SubscriptionStoreContentConfiguration);
      v151[0] = v59;
      v62 = *(v59 + 16);
      if (v62 >= *(v59 + 24) >> 1)
      {
        sub_23BA92C88();
        v59 = v151[0];
      }

      *(v59 + 16) = v62 + 1;
      v63 = v59 + 40 * v62;
      v64 = v152;
      v65 = v153;
      *(v63 + 64) = v154;
      *(v63 + 32) = v64;
      *(v63 + 48) = v65;
      v60 += v61;
      --v58;
    }

    while (v58);
    v53 = v132;
  }

  *&v152 = v59;
  v66 = v120;
  v67 = v119;
  (*(v120 + 16))(v119, v53, v55);
  v68 = (*(v66 + 80) + 48) & ~*(v66 + 80);
  v69 = swift_allocObject();
  v70 = v135;
  *(v69 + 2) = v136;
  *(v69 + 3) = v70;
  v71 = v133;
  *(v69 + 4) = v134;
  *(v69 + 5) = v71;
  (*(v66 + 32))(&v69[v68], v67, v55);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F5C0, &qword_23BBF83A8);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F5C8, &qword_23BBF83B0);
  v74 = sub_23BAC5D24();
  v75 = sub_23BAC5E84();
  v120 = v72;
  v119 = v73;
  v118 = v74;
  v116 = v75;
  sub_23BBDBC18();

  sub_23B979910(&v155, &qword_27E19F5C0, &qword_23BBF83A8);
  v76 = v117;
  sub_23B99FCE0(v137, v117, qword_27E19A490, qword_23BBEA4A0);
  if (__swift_getEnumTagSinglePayload(v76, 1, v121) == 1)
  {
    sub_23B979910(v76, qword_27E19A490, qword_23BBEA4A0);
    v77 = v129;
    v78 = v128;
    __swift_storeEnumTagSinglePayload(v129, 1, 1, v128);
    WitnessTable = swift_getWitnessTable();
    v80 = sub_23BAC5F00();
    v151[3] = WitnessTable;
    v151[4] = v80;
    swift_getWitnessTable();
  }

  else
  {
    v81 = v107;
    sub_23B9ECE7C(v76, v107);
    sub_23BAC44A8(v81, v28, type metadata accessor for SubscriptionStoreContentConfiguration);
    v82 = v132 + *(v55 + 13);
    v83 = v108;
    (*(v109 + 16))(v108, v82, v110);
    v84 = v111;
    sub_23BABEC68(v28, v83, v111);
    sub_23BBDBF68();
    v85 = v141;
    v86 = swift_getWitnessTable();
    v87 = v114;
    sub_23BB492B0(&v155, v85, v86);
    sub_23B979910(&v155, &qword_27E197878, &qword_23BBE38D0);
    (*(v112 + 8))(v84, v85);
    sub_23BAC4508(v81, type metadata accessor for SubscriptionStoreContentConfiguration);
    v88 = sub_23BAC5F00();
    v143 = v86;
    v144 = v88;
    v78 = v128;
    swift_getWitnessTable();
    v89 = v113;
    sub_23B9D2D88();
    v90 = v115;
    v91 = *(v115 + 8);
    v91(v87, v78);
    sub_23B9D2D88();
    v91(v89, v78);
    v77 = v129;
    (*(v90 + 32))(v129, v87, v78);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v78);
  }

  v92 = v130;
  v93 = v124;
  v94 = v126;
  sub_23BB2F9F4(v77, v78);
  v136 = *(v93 + 8);
  v136(v77, v92);
  v95 = v139;
  sub_23B99FCE0(v138, v139, &qword_27E19F5B8, &qword_23BBF83A0);
  *&v152 = v95;
  v96 = v125;
  v97 = v140;
  v98 = v127;
  (*(v125 + 16))(v140, v142, v127);
  *(&v152 + 1) = v97;
  (*(v93 + 16))(v77, v94, v92);
  *&v153 = v77;
  v151[0] = v122;
  v151[1] = v98;
  v151[2] = v92;
  v148 = sub_23BAC43BC(&qword_27E19F608, &qword_27E19F5B8, &qword_23BBF83A0, sub_23BAC42D8);
  v155 = v120;
  v156 = v119;
  v157 = v118;
  v158 = v116;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = swift_getWitnessTable();
  v100 = sub_23BAC5F00();
  v146 = v99;
  v147 = v100;
  v145 = swift_getWitnessTable();
  v150 = swift_getWitnessTable();
  sub_23BB6739C(&v152, 3, v151);
  v101 = v94;
  v102 = v136;
  v136(v101, v92);
  v103 = *(v96 + 8);
  v103(v142, v98);
  sub_23B979910(v138, &qword_27E19F5B8, &qword_23BBF83A0);
  sub_23B979910(v137, qword_27E19A490, qword_23BBEA4A0);
  v102(v77, v92);
  v103(v140, v98);
  return sub_23B979910(v139, &qword_27E19F5B8, &qword_23BBF83A0);
}

uint64_t sub_23BAC26C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  type metadata accessor for NestedSubscriptionOptionContentView.TabGroupView(0, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F3F8, &unk_23BBF8220);
  v5 = sub_23BBDBF68();
  if (*(&v11 + 1))
  {
    v13[0] = v10;
    v13[1] = v11;
    v14 = v12;
    MEMORY[0x28223BE20](v5);
    v8[2] = v13;
    if (sub_23BABEB94(sub_23BAC5FC4, v8, v6))
    {
      sub_23BAC27E0();
    }

    return sub_23BAC5FF8(v13);
  }

  else
  {
    sub_23B979910(&v10, &qword_27E197878, &qword_23BBE38D0);
    return sub_23BAC27E0();
  }
}

uint64_t sub_23BAC27E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2 - 8];
  sub_23BAC78C8(*v0, &v7[-v2 - 8]);
  v4 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_23B979910(v3, qword_27E19A490, qword_23BBEA4A0);
    memset(v8, 0, sizeof(v8));
    v9 = 0;
  }

  else
  {
    sub_23B97933C(v3, v8);
    sub_23BAC4508(v3, type metadata accessor for SubscriptionStoreContentConfiguration);
  }

  sub_23B99FCE0(v8, v7, &qword_27E197878, &qword_23BBE38D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F3F8, &unk_23BBF8220);
  sub_23BBDBF78();
  return sub_23B979910(v8, &qword_27E197878, &qword_23BBE38D0);
}

uint64_t sub_23BAC2938@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0, &qword_23BBF8390);
  v5 = a1[2];
  v6 = a1[3];
  v7 = sub_23B97B518(&qword_27E19F5A8, &qword_27E19F5A0, &qword_23BBF8390, MEMORY[0x277D83FB8]);
  v95 = a1;
  v8 = a1[4];
  v9 = a1[5];
  v84 = v4;
  v108 = v4;
  v109 = v5;
  v110 = v6;
  v111 = v7;
  v83 = v7;
  v112 = v8;
  v113 = v9;
  v88 = type metadata accessor for StoreContentNavigation(0, &v108);
  v85 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F3E0, &unk_23BBF8200);
  v108 = v5;
  v109 = v6;
  v110 = v8;
  v111 = v9;
  v14 = type metadata accessor for NestedSubscriptionOptionContentView(255, &v108);
  swift_getTupleTypeMetadata2();
  v15 = sub_23BBDC3D8();
  v82 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v81 = &v73 - v16;
  v98 = v5;
  v108 = v5;
  v109 = v6;
  v96 = v6;
  v93 = v9;
  v94 = v8;
  v110 = v8;
  v111 = v9;
  v92 = type metadata accessor for SubscriptionStoreContainerContext(0, &v108);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v73 - v17;
  v79 = *(v14 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v80 = v13;
  MEMORY[0x28223BE20](v24);
  v78 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v73 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490, qword_23BBEA4A0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v73 - v30;
  v32 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v73 - v36;
  v102 = v15;
  v101 = sub_23BBDD648();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v39 = &v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v100 = &v73 - v41;
  v97 = v2;
  v42 = *v2;
  sub_23BAC78C8(v42, v31);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_23B979910(v31, qword_27E19A490, qword_23BBEA4A0);
    v43 = v39;
    v44 = 1;
    v45 = v102;
  }

  else
  {
    sub_23B9ECE7C(v31, v37);
    v77 = v42;
    v76 = v37;
    sub_23BAAF390(1, v28);
    KeyPath = swift_getKeyPath();
    v47 = v80;
    v48 = &v28[*(v80 + 36)];
    *v48 = KeyPath;
    v48[8] = 1;
    v75 = type metadata accessor for SubscriptionStoreContentConfiguration;
    sub_23BAC44A8(v37, v34, type metadata accessor for SubscriptionStoreContentConfiguration);
    v49 = v90;
    (*(v91 + 16))(v90, v97 + *(v95 + 13), v92);
    sub_23BABEC68(v34, v49, v20);
    WitnessTable = swift_getWitnessTable();
    sub_23B9D2D88();
    v51 = v79;
    v74 = v28;
    v52 = *(v79 + 8);
    v52(v20, v14);
    v53 = v78;
    sub_23B99FCE0(v28, v78, &qword_27E19F3E0, &unk_23BBF8200);
    v108 = v53;
    (*(v51 + 16))(v20, v23, v14);
    v109 = v20;
    v106 = v47;
    v107 = v14;
    v42 = v77;
    v104 = sub_23BAC42D8();
    v105 = WitnessTable;
    v54 = v81;
    sub_23BB6739C(&v108, 2, &v106);
    v52(v23, v14);
    sub_23B979910(v74, &qword_27E19F3E0, &unk_23BBF8200);
    sub_23BAC4508(v76, v75);
    v52(v20, v14);
    sub_23B979910(v53, &qword_27E19F3E0, &unk_23BBF8200);
    v45 = v102;
    v82[4](v39, v54, v102);
    v43 = v39;
    v44 = 0;
  }

  __swift_storeEnumTagSinglePayload(v43, v44, 1, v45);
  swift_getWitnessTable();
  sub_23BB2F9F4(v39, v45);
  v55 = *(v99 + 8);
  v81 = ((v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v82 = v55;
  (v55)(v39, v101);
  v56 = v91;
  v57 = v90;

  v108 = sub_23BAE5A7C(1, v42);
  v109 = v58;
  v110 = v59;
  v111 = v60;
  (*(v56 + 16))(v57, v97 + *(v95 + 13), v92);
  v61 = v87;
  sub_23BAB6FF0(&v108, v57, v84, v98, v96, v83, v94, v93, v87);
  v62 = v88;
  v63 = swift_getWitnessTable();
  v64 = v86;
  sub_23B9D2D88();
  v65 = v85;
  v66 = *(v85 + 8);
  v66(v61, v62);
  v67 = v100;
  v68 = v39;
  v69 = v39;
  v70 = v101;
  (*(v99 + 16))(v68, v100, v101);
  v108 = v69;
  (*(v65 + 16))(v61, v64, v62);
  v109 = v61;
  v106 = v70;
  v107 = v62;
  v103 = swift_getWitnessTable();
  v104 = swift_getWitnessTable();
  v105 = v63;
  sub_23BB6739C(&v108, 2, &v106);
  v66(v64, v62);
  v71 = v82;
  (v82)(v67, v70);
  v66(v61, v62);
  return (v71)(v69, v70);
}

uint64_t sub_23BAC3390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F618, &unk_23BBF8430);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_23BAC340C()
{
  sub_23BAC3448();
  sub_23BBDA298();
  return v1;
}

unint64_t sub_23BAC3448()
{
  result = qword_27E19F350[0];
  if (!qword_27E19F350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19F350);
  }

  return result;
}

double sub_23BAC34AC(char a1)
{
  sub_23BAC3448();
  sub_23BBDA2A8();
  return result;
}

uint64_t sub_23BAC34E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BAC340C();
  *a1 = result;
  return result;
}

void sub_23BAC355C(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStoreContentConfiguration(319);
  if (v3 <= 0x3F)
  {
    v10 = 0;
    v13 = v2;
    v4 = *(a1 + 32);
    v9[0] = *(a1 + 16);
    v9[1] = v4;
    v5 = type metadata accessor for SubscriptionStoreContainerContext(319, v9);
    if (v6 <= 0x3F)
    {
      v11 = 0;
      v14 = v5;
      sub_23BA844A8();
      if (v8 <= 0x3F)
      {
        v12 = 0;
        v15 = v7;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BAC3604(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = sub_23BBDC208();
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v45 = v4;
  v46 = *(a3 + 16);
  v8 = *(v46 - 8);
  v47 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v8 + 84);
  v11 = sub_23BBDCDB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v14 - 1;
  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v5 + 80);
  if (v6)
  {
    v20 = *(v5 + 64);
  }

  else
  {
    v20 = *(v5 + 64) + 1;
  }

  v21 = *(v12 + 80);
  v22 = *(v12 + 64);
  if (!a2)
  {
    return 0;
  }

  v23 = v21 & 0xF8;
  v24 = v23 | 7;
  v25 = v23 | 7 | *(v8 + 80);
  v26 = *(v8 + 64) + (v23 | 7);
  v27 = ((((v20 + ((v19 + 40) & ~v19) + ((v20 + v19) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 350) & 0xFFFFFFFFFFFFFFF8) + v25 + 10;
  if (v18 < a2)
  {
    v28 = ((((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + ((v23 + 87) & ~v24) + (v26 & ~v24) + (v27 & ~v25) + 19) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v28 <= 3)
    {
      v29 = ((a2 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    switch(v31)
    {
      case 1:
        v32 = a1[v28];
        if (!a1[v28])
        {
          break;
        }

        goto LABEL_38;
      case 2:
        v32 = *&a1[v28];
        if (*&a1[v28])
        {
          goto LABEL_38;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAC39FCLL);
      case 4:
        v32 = *&a1[v28];
        if (!v32)
        {
          break;
        }

LABEL_38:
        v33 = (v32 - 1) << (8 * v28);
        if (v28 <= 3)
        {
          v34 = *a1;
        }

        else
        {
          v33 = 0;
          v34 = *a1;
        }

        return v18 + (v34 | v33) + 1;
      default:
        break;
    }
  }

  if (v17 <= v9)
  {
    if ((v47 & 0x80000000) == 0)
    {
      v37 = *(a1 + 3);
      goto LABEL_48;
    }

    if (v6)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v19 + 40] & ~v19, v6, v45);
      v40 = EnumTagSinglePayload != 0;
      result = (EnumTagSinglePayload - 1);
      if (result != 0 && v40)
      {
        return result;
      }
    }

    return 0;
  }

  v35 = &a1[v27] & ~v25;
  if (v10 >= v16)
  {

    return __swift_getEnumTagSinglePayload(v35, v10, v46);
  }

  else
  {
    v36 = ((((v26 + v35) & ~v24) + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v15 & 0x80000000) == 0)
    {
      v37 = *v36;
LABEL_48:
      if (v37 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      return (v37 + 1);
    }

    v41 = (v24 + ((((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v24;
    if (v13 < 0xFD)
    {
      v43 = *(((v22 + v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v43 >= 2)
      {
        v44 = (v43 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v44 = -1;
      }

      if ((v44 + 1) >= 2)
      {
        v42 = v44;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = __swift_getEnumTagSinglePayload(v41, v13, v11);
    }

    if (v42 >= 2)
    {
      return v42 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BAC3A10(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v61 = sub_23BBDC208();
  v5 = *(v61 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v62 = *(a4 + 16);
  v8 = *(v62 - 8);
  v64 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v8 + 84);
  v11 = sub_23BBDCDB8();
  v68 = 0;
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v14 - 1;
  if (v14 - 1 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14 - 1;
  }

  v63 = v10;
  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v5 + 80);
  v20 = *(v5 + 64);
  if (v6)
  {
    v21 = *(v5 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = *(v12 + 80) & 0xF8;
  v23 = v22 | 7;
  v24 = v22 | 7 | *(v8 + 80);
  v25 = *(v8 + 64) + (v22 | 7);
  v26 = v25 & ~(v22 | 7);
  v27 = (v22 + 87) & ~(v22 | 7);
  v28 = *(*(v11 - 8) + 64);
  v29 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v30 = ((v21 + v19) & ~v19) + v21;
  v31 = v30 + ((v19 + 40) & ~v19);
  v32 = ((((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 350) & 0xFFFFFFFFFFFFFFF8) + v24 + 10;
  v33 = v27 + v29;
  v34 = v27 + v29 + v26 + 1;
  v35 = ((v34 + (v32 & ~v24) + 9) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 < a3)
  {
    if (v35 <= 3)
    {
      v36 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v36 = 2;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v68 = v38;
  }

  if (v18 < a2)
  {
    v39 = ~v18 + a2;
    bzero(a1, v35);
    if (v35 <= 3)
    {
      v40 = (v39 >> 8) + 1;
    }

    else
    {
      v40 = 1;
    }

    if (v35 > 3)
    {
      *a1 = v39;
    }

    else
    {
      *a1 = v39;
    }

    switch(v68)
    {
      case 1:
        *(a1 + v35) = v40;
        return;
      case 2:
        *(a1 + v35) = v40;
        return;
      case 3:
        goto LABEL_119;
      case 4:
        *(a1 + v35) = v40;
        return;
      default:
        return;
    }
  }

  v41 = ~v24;
  v42 = ~v23;
  v43 = a1;
  switch(v68)
  {
    case 1:
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    case 2:
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    case 3:
LABEL_119:
      __break(1u);
      JUMPOUT(0x23BAC40A4);
    case 4:
      *(a1 + v35) = 0;
      goto LABEL_47;
    default:
LABEL_47:
      if (!a2)
      {
        return;
      }

LABEL_48:
      if (v17 > v9)
      {
        v43 = ((a1 + v32) & v41);
        if (v17 < a2)
        {
          v44 = (v34 + 2);
          if (v44 <= 3)
          {
            v45 = ~(-1 << (8 * (v34 + 2)));
          }

          else
          {
            v45 = -1;
          }

          if (v34 != -2)
          {
            v46 = v45 & (~v17 + a2);
            if (v44 <= 3)
            {
              v47 = v34 + 2;
            }

            else
            {
              v47 = 4;
            }

            bzero(v43, v44);
            switch(v47)
            {
              case 2:
                goto LABEL_106;
              case 3:
                goto LABEL_107;
              case 4:
                goto LABEL_60;
              default:
                goto LABEL_114;
            }
          }

          return;
        }

        if (v63 >= v16)
        {
          v51 = (a1 + v32) & v41;
          v52 = a2;
          v13 = v63;
          v11 = v62;
        }

        else
        {
          v43 = ((v43 + v25) & v42);
          if (v16 < a2)
          {
            if (v33 <= 2)
            {
              v49 = ~(-1 << (8 * (v33 + 1)));
            }

            else
            {
              v49 = -1;
            }

            v46 = v49 & (~v16 + a2);
            if (v33 <= 2)
            {
              v50 = v33 + 1;
            }

            else
            {
              v50 = 4;
            }

            bzero(v43, v33 + 1);
            switch(v50)
            {
              case 2:
                goto LABEL_106;
              case 3:
                goto LABEL_107;
              case 4:
                goto LABEL_60;
              default:
                goto LABEL_114;
            }
          }

          v55 = ((v43 + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v15 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v56 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v56 = a2 - 1;
            }

            *v55 = v56;
            return;
          }

          v57 = v23 + ((((v55 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
          v43 = (v57 & v42);
          if (v15 < a2)
          {
            v46 = a2 - v14;
            goto LABEL_113;
          }

          v46 = a2 - v14;
          if (a2 >= v14)
          {
LABEL_113:
            bzero((v57 & v42), ((v28 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
            if (v29 <= 3)
            {
LABEL_114:
              *v43 = v46;
              return;
            }

LABEL_60:
            *v43 = v46;
            return;
          }

          v52 = a2 + 1;
          if (v13 < 0xFD)
          {
            v60 = (v43 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFC)
            {
              *v60 = 0;
              *(v60 + 8) = 0;
              *v60 = a2 - 253;
            }

            else
            {
              *(v60 + 8) = a2 + 3;
            }

            return;
          }

          v51 = v57 & v42;
        }

        goto LABEL_78;
      }

      if (v9 < a2)
      {
        v48 = ((((v31 + 7) & 0xFFFFFFF8) + 350) & 0xFFFFFFF8) + 10;
        v46 = ~v9 + a2;
        bzero(a1, v48);
        if (v48 <= 3)
        {
LABEL_106:
          *v43 = v46;
          return;
        }

        goto LABEL_60;
      }

      if ((v64 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *(a1 + 2) = 0u;
          *(a1 + 6) = 0u;
          *a1 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(a1 + 3) = a2 - 1;
        }

        return;
      }

      v43 = ((a1 + v19 + 40) & ~v19);
      if (v64 >= a2)
      {
        v13 = v6;
        if (a2 < v6)
        {
          v52 = a2 + 1;
          v51 = (a1 + v19 + 40) & ~v19;
          v11 = v61;
LABEL_78:

          __swift_storeEnumTagSinglePayload(v51, v52, v13, v11);
          return;
        }

        if (v20 <= 3)
        {
          v58 = ~(-1 << (8 * v20));
        }

        else
        {
          v58 = -1;
        }

        if (v20)
        {
          v46 = v58 & (a2 - v6);
          if (v20 <= 3)
          {
            v59 = v20;
          }

          else
          {
            v59 = 4;
          }

          bzero(v43, v20);
          switch(v59)
          {
            case 2:
              goto LABEL_106;
            case 3:
LABEL_107:
              *v43 = v46;
              *(v43 + 2) = BYTE2(v46);
              break;
            case 4:
              goto LABEL_60;
            default:
              goto LABEL_114;
          }
        }
      }

      else
      {
        if (v30 <= 3)
        {
          v53 = ~(-1 << (8 * v30));
        }

        else
        {
          v53 = -1;
        }

        if (v30)
        {
          v46 = v53 & (~v64 + a2);
          if (v30 <= 3)
          {
            v54 = v30;
          }

          else
          {
            v54 = 4;
          }

          bzero(v43, v30);
          switch(v54)
          {
            case 2:
              goto LABEL_106;
            case 3:
              goto LABEL_107;
            case 4:
              goto LABEL_60;
            default:
              goto LABEL_114;
          }
        }
      }

      return;
  }
}

_BYTE *_s33SubscriptionStoreContentComponentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BAC41D8);
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