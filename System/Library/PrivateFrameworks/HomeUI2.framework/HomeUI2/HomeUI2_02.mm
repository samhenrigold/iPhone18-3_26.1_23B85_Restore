unint64_t sub_2544D9B64()
{
  result = qword_27F5FB9C0;
  if (!qword_27F5FB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9C0);
  }

  return result;
}

unint64_t sub_2544D9BBC()
{
  result = qword_27F5FB9C8;
  if (!qword_27F5FB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9C8);
  }

  return result;
}

unint64_t sub_2544D9C34()
{
  result = qword_27F5FB9D0;
  if (!qword_27F5FB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9D0);
  }

  return result;
}

unint64_t sub_2544D9C8C()
{
  result = qword_27F5FB9D8;
  if (!qword_27F5FB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9D8);
  }

  return result;
}

uint64_t sub_2544D9D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25454AD34();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25454AD44();
}

uint64_t sub_2544D9E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25454AD34();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25454AD44();
}

uint64_t View.setCameraEntityProvider(snapshot:camera:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a2;
  v83 = a5;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  v14 = sub_25454A184();
  v68 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v66 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2544DAD14(&qword_27F5FB9E0, MEMORY[0x277D15088], MEMORY[0x277D15080]);
  v87 = a3;
  v88 = v14;
  v81 = v14;
  v82 = a4;
  v89 = a4;
  v90 = v16;
  v80 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v67 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v65 = &v64 - v20;
  v21 = sub_254549394();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_254549D04();
  v72 = *(v25 - 8);
  v73 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v71 = &v64 - v29;
  v79 = OpaqueTypeMetadata2;
  v84 = a3;
  v30 = sub_25454AD54();
  v76 = *(v30 - 8);
  v77 = v30;
  MEMORY[0x28223BE20](v30);
  v75 = &v64 - v31;
  v70 = a1;
  v32 = sub_254549834();
  sub_254549B84();
  if (*(v32 + 16) && (v33 = sub_2544DA750(v24), (v34 & 1) != 0))
  {
    v35 = v73;
    v36 = v72;
    v37 = *(v72 + 16);
    v37(v28, *(v32 + 56) + *(v72 + 72) * v33, v73);
    (*(v22 + 8))(v24, v21);

    v38 = v36;
    v39 = *(v36 + 32);
    v40 = v71;
    v39(v71, v28, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB9E8, &qword_25454F160);
    v41 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_25454D8F0;
    v37((v42 + v41), v40, v35);
    v87 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB9F0, &qword_25454F168);
    sub_2544DA7E8();
    sub_2544DAD14(&qword_27F5FB118, MEMORY[0x277D16548], MEMORY[0x277D16540]);
    v43 = v66;
    sub_25454BF04();

    v44 = v67;
    v45 = v84;
    v47 = v81;
    v46 = v82;
    v48 = v80;
    sub_25454B284();
    (*(v68 + 8))(v43, v47);
    v87 = v45;
    v88 = v47;
    v89 = v46;
    v90 = v48;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v69;
    v50 = *(v69 + 16);
    v51 = v65;
    v52 = v79;
    v50(v65, v44, v79);
    v53 = *(v49 + 8);
    v53(v44, v52);
    v50(v44, v51, v52);
    v54 = v75;
    v55 = v84;
    sub_2544D9D1C(v44, v52, v84, OpaqueTypeConformance2, v46);
    v53(v44, v52);
    v56 = v51;
    v57 = v55;
    v53(v56, v52);
    (*(v72 + 8))(v71, v73);
  }

  else
  {

    (*(v22 + 8))(v24, v21);
    v58 = *(v8 + 16);
    v57 = v84;
    v58(v13, OpaqueTypeConformance2, v84);
    v58(v11, v13, v57);
    v47 = v81;
    v46 = v82;
    v87 = v57;
    v88 = v81;
    v48 = v80;
    v89 = v82;
    v90 = v80;
    v59 = swift_getOpaqueTypeConformance2();
    v54 = v75;
    sub_2544D9E14(v11, v79, v57, v59, v46);
    v60 = *(v8 + 8);
    v60(v11, v57);
    v60(v13, v57);
  }

  v87 = v57;
  v88 = v47;
  v89 = v46;
  v90 = v48;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = v46;
  v61 = v77;
  swift_getWitnessTable();
  v62 = v76;
  (*(v76 + 16))(v83, v54, v61);
  return (*(v62 + 8))(v54, v61);
}

unint64_t sub_2544DA750(uint64_t a1)
{
  sub_254549394();
  sub_2544DAD14(&qword_27F5FB028, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_25454BBE4();

  return sub_2544DAA2C(a1, v2);
}

unint64_t sub_2544DA7E8()
{
  result = qword_27F5FB9F8;
  if (!qword_27F5FB9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB9F0, &qword_25454F168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB9F8);
  }

  return result;
}

uint64_t sub_2544DA84C(uint64_t *a1)
{
  sub_25454A184();
  sub_2544DAD14(&qword_27F5FB9E0, MEMORY[0x277D15088], MEMORY[0x277D15080]);
  swift_getOpaqueTypeMetadata2();
  sub_25454AD54();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

unint64_t sub_2544DA948(uint64_t a1, uint64_t a2)
{
  sub_25454C3E4();
  sub_25454BD14();
  v4 = sub_25454C434();

  return sub_2544DABEC(a1, a2, v4);
}

unint64_t sub_2544DA9C0(uint64_t a1)
{
  v1 = a1;
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](v1);
  v2 = sub_25454C434();

  return sub_2544DACA4(v1, v2);
}

unint64_t sub_2544DAA2C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_254549394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2544DAD14(&qword_27F5FB0A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_25454BC44();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2544DABEC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25454C334())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2544DACA4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2544DAD14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DigitalClockText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA00, &qword_25454F170);
  MEMORY[0x28223BE20](v37);
  v36 = v30 - v1;
  v2 = sub_25454ABE4();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA08, &qword_25454F178);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA10, &qword_25454F180);
  v30[1] = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA18, &qword_25454F188);
  v10 = MEMORY[0x28223BE20](v32);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = v30 - v13;
  sub_2545493D4();
  v14 = sub_2545493E4();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  v15 = sub_25454B204();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v23 = &v9[*(v7 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA20, &qword_25454F1C0) + 28);
  v25 = *MEMORY[0x277CE0B28];
  v26 = sub_25454B1C4();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v9 = v15;
  *(v9 + 1) = v17;
  v9[16] = v19 & 1;
  *(v9 + 3) = v21;
  *(v9 + 4) = KeyPath;
  *(v9 + 5) = 1;
  v9[48] = 0;
  v27 = v33;
  sub_25454ABC4();
  sub_2544DB36C();
  sub_25454B4A4();
  (*(v34 + 8))(v27, v35);
  sub_2544AE150(v9, &qword_27F5FBA10, &qword_25454F180);
  v28 = v31;
  sub_25454A704();
  sub_2544AE150(v12, &qword_27F5FBA18, &qword_25454F188);
  sub_2544DB508(v28, v36);
  swift_storeEnumTagMultiPayload();
  sub_2544DB578();
  sub_25454AD44();
  return sub_2544AE150(v28, &qword_27F5FBA18, &qword_25454F188);
}

uint64_t sub_2544DB1B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_25454AA44();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2544DB1E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_25454AA44();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2544DB2A0(uint64_t a1)
{
  v2 = sub_25454B1C4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25454A884();
}

unint64_t sub_2544DB36C()
{
  result = qword_27F5FBA28;
  if (!qword_27F5FBA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA10, &qword_25454F180);
    sub_2544DB410();
    sub_2544DB4B4(&qword_27F5FBA50, &qword_27F5FBA20, &qword_25454F1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBA28);
  }

  return result;
}

unint64_t sub_2544DB410()
{
  result = qword_27F5FBA30;
  if (!qword_27F5FBA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA38, &qword_254554820);
    sub_2544DB4B4(&qword_27F5FBA40, &qword_27F5FBA48, &qword_25454F200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBA30);
  }

  return result;
}

uint64_t sub_2544DB4B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2544DB508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA18, &qword_25454F188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2544DB578()
{
  result = qword_27F5FBA58;
  if (!qword_27F5FBA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA18, &qword_25454F188);
    sub_2544DB36C();
    sub_2544DB604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBA58);
  }

  return result;
}

unint64_t sub_2544DB604()
{
  result = qword_27F5FB340;
  if (!qword_27F5FB340)
  {
    sub_25454AEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB340);
  }

  return result;
}

unint64_t sub_2544DB68C()
{
  result = qword_27F5FBA60;
  if (!qword_27F5FBA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA68, &qword_25454F278);
    sub_2544DB578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBA60);
  }

  return result;
}

uint64_t static FormatStyle<>.clockFace.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F5FACA0 != -1)
  {
    swift_once();
  }

  v2 = sub_254549304();
  v3 = __swift_project_value_buffer(v2, qword_27F604AE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2544DB7B8()
{
  v0 = sub_254549304();
  __swift_allocate_value_buffer(v0, qword_27F604AE8);
  v1 = __swift_project_value_buffer(v0, qword_27F604AE8);
  return sub_2544DB804(v1);
}

uint64_t sub_2544DB804@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v26 = sub_2545492C4();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_254549294();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2545492A4();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2545493C4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2545493E4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_254549304();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v21 - v17;
  MEMORY[0x259C0C220](v16);
  sub_2545493D4();
  sub_2545492F4();
  sub_2545493A4();
  sub_2545492D4();
  sub_254549284();
  sub_254549274();
  (*(v22 + 8))(v5, v23);
  sub_254549264();
  (*(v6 + 8))(v8, v21);
  sub_2545492B4();
  sub_2545492E4();
  (*(v24 + 8))(v2, v26);
  v19 = *(v12 + 8);
  v19(v15, v11);
  return (v19)(v18, v11);
}

uint64_t Font.init(softNumericMediumSize:)(CGFloat a1)
{
  v2 = sub_25454BC74();
  CTFontCreateWithNameAndOptions(v2, a1, 0, 0x20000uLL);

  return sub_25454B174();
}

uint64_t Font.init(softNumericBoldSize:)(CGFloat a1)
{
  v2 = sub_25454BC74();
  CTFontCreateWithNameAndOptions(v2, a1, 0, 0x20000uLL);

  return sub_25454B174();
}

uint64_t static Font.softMonospaced(size:weight:)(double a1, double a2)
{
  v2 = sub_25454B0F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25454AFB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454AFA4();
  sub_25454B094();
  (*(v7 + 8))(v9, v6);
  sub_25454AFE4();

  (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
  v10 = sub_25454B114();

  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t View.clockFaceFont(size:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>)
{
  v24 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB390, &qword_25454FBC0);
  v6 = sub_25454A714();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA70, &qword_254553BF0);
  v9 = sub_25454A714();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = sub_25454BC74();
  CTFontCreateWithNameAndOptions(v16, a4, 0, 0x20000uLL);

  sub_25454B174();
  sub_25454AFE4();

  sub_25454B4F4();

  v17 = sub_2544DB4B4(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
  v27 = a2;
  v28 = v17;
  WitnessTable = swift_getWitnessTable();
  sub_25454B3D4();
  (*(v23 + 8))(v8, v6);
  v19 = sub_2544DB4B4(&qword_27F5FBA78, &qword_27F5FBA70, &qword_254553BF0);
  v25 = WitnessTable;
  v26 = v19;
  swift_getWitnessTable();
  sub_2544DAD5C();
  v20 = *(v10 + 8);
  v20(v13, v9);
  sub_2544DAD5C();
  return (v20)(v15, v9);
}

uint64_t sub_2544DC190(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FB390, &qword_25454FBC0);
  sub_25454A714();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBA70, &qword_254553BF0);
  sub_25454A714();
  sub_2544DB4B4(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
  swift_getWitnessTable();
  sub_2544DB4B4(&qword_27F5FBA78, &qword_27F5FBA70, &qword_254553BF0);
  return swift_getWitnessTable();
}

uint64_t DynamicServiceColor.init(_:accented:unreachable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 16);
  v25 = a1;
  v12(a6);
  v24 = a2;
  sub_2544DC694(a2, &v28);
  if (v29)
  {
    sub_2544DC71C(&v28, v26);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v14 = __swift_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x28223BE20](v14);
    (*(v16 + 16))(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = sub_25454A554();

    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for DynamicServiceColor(0, a4, a5, v13);
  *(a6 + *(v18 + 36)) = v17;
  sub_2544DC694(a3, &v28);
  if (v29)
  {
    sub_2544DC71C(&v28, v26);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v19 = __swift_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x28223BE20](v19);
    (*(v21 + 16))(&v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = sub_25454A554();
    sub_2544AE150(a3, &qword_27F5FBA80, &unk_25454F290);
    sub_2544AE150(v24, &qword_27F5FBA80, &unk_25454F290);
    (*(v11 + 8))(v25, a4);

    result = __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    sub_2544AE150(a3, &qword_27F5FBA80, &unk_25454F290);
    sub_2544AE150(v24, &qword_27F5FBA80, &unk_25454F290);
    result = (*(v11 + 8))(v25, a4);
    v22 = 0;
  }

  *(a6 + *(v18 + 40)) = v22;
  return result;
}

uint64_t sub_2544DC694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA80, &unk_25454F290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544DC71C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void DynamicServiceColor.resolve(in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a1;
  v39 = a3;
  v5 = sub_254549ED4();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA88, &unk_25454FB20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_254549854();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + *(a2 + 40));
  if (v14)
  {

    if ((sub_2545498C4() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v14 = *(v3 + *(a2 + 36));
  if (v14)
  {
    v29 = v13;
    v30 = v11;
    v15 = sub_25454BBA4();
    v32 = &v28;
    v33 = v10;
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v15);
    v34 = v5;
    v35 = v3;

    v18 = sub_25454AA04();
    v31 = &v28;
    MEMORY[0x28223BE20](v18);
    v19 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25454BB94();
    LOBYTE(v17) = sub_25454BB74();
    v20 = *(v16 + 8);
    v20(v19, v15);
    v20(v19, v15);
    v10 = v33;
    v5 = v34;
    if (v17)
    {
      goto LABEL_13;
    }

    v13 = v29;
    v11 = v30;
  }

  v21 = *(a2 + 16);
  v22 = *(a2 + 24);
  sub_2545498E4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2544AE150(v9, &qword_27F5FBA88, &unk_25454FB20);
LABEL_12:
    v27 = TileInfoBearer.resolvedForegroundColor.getter(v21, v22);
    v14 = sub_2544DCEDC(v27, v38);

    goto LABEL_13;
  }

  (*(v11 + 32))(v13, v9, v10);
  v23 = v36;
  v24 = v37;
  (*(v37 + 104))(v36, *MEMORY[0x277D169F0], v5);
  v25 = v11;
  v26 = MEMORY[0x259C0CFE0](v13, v23);
  (*(v24 + 8))(v23, v5);
  if (!v26)
  {
    (*(v25 + 8))(v13, v10);
    goto LABEL_12;
  }

  v14 = sub_2544DCEDC(v26, v38);

  (*(v25 + 8))(v13, v10);
LABEL_13:
  *v39 = v14;
}

uint64_t DynamicServiceColor.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[3] = a2;
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2544DD17C();
  v21[1] = v6;
  v21[0] = swift_getWitnessTable();
  v21[6] = MEMORY[0x277CE14A8];
  v21[7] = a1;
  v21[8] = v6;
  v21[9] = v21[0];
  v7 = sub_25454A434();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = sub_25454A714();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  (*(v3 + 16))(v5, v21[2], a1);
  sub_25454A424();
  WitnessTable = swift_getWitnessTable();
  sub_25454B3C4();
  (*(v8 + 8))(v10, v7);
  v21[4] = WitnessTable;
  v21[5] = MEMORY[0x277CE0770];
  swift_getWitnessTable();
  sub_2544DAD5C();
  v19 = *(v12 + 8);
  v19(v15, v11);
  sub_2544DAD5C();
  return (v19)(v17, v11);
}

uint64_t sub_2544DCEDC(unint64_t a1, uint64_t a2)
{
  v4 = sub_25454A454();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25454AA94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454B674();
  v12 = sub_25454B634();

  if (v12 & 1) != 0 || (sub_25454B654(), v13 = sub_25454B634(), , (v13))
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_2544DD740();
    sub_25454AAA4();
    v14 = MEMORY[0x277CDF3D0];
    if (!v25)
    {
      v14 = MEMORY[0x277CDF3C0];
    }

    (*(v5 + 104))(v7, *v14, v4);
    sub_25454A844();
    sub_25454B6A4();
    sub_25454B6B4();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v25 = __PAIR64__(v18, v16);
    v26 = v20;
    v27 = v22;
    v23 = sub_25454A554();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v25 = a1;

    return sub_25454A554();
  }

  return v23;
}

unint64_t sub_2544DD17C()
{
  result = qword_27F5FBA90[0];
  if (!qword_27F5FBA90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5FBA90);
  }

  return result;
}

void sub_2544DD260(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2544DD60C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2544DD2E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_2544DD434(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_2544DD60C()
{
  if (!qword_27F5FBB18)
  {
    v0 = sub_25454C054();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FBB18);
    }
  }
}

uint64_t sub_2544DD668(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DynamicServiceColor(255, *a1, a1[1], a4);
  sub_2544DD17C();
  swift_getWitnessTable();
  sub_25454A434();
  sub_25454A714();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_2544DD740()
{
  result = qword_27F5FBB20;
  if (!qword_27F5FBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBB20);
  }

  return result;
}

uint64_t DynamicToggleColor.init(off:on:accentedOn:accentedOff:isActive:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v35 = a4;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_25454A554();
  sub_2544DC694(a2, &v36);
  if (v37)
  {
    sub_2544DC71C(&v36, v38);
    v13 = __swift_project_boxed_opaque_existential_1(v38, v39);
    MEMORY[0x28223BE20](v13);
    (*(v15 + 16))(&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = sub_25454A554();
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    sub_2544DDC9C(&v36);
    v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x28223BE20](v17);
    (*(v19 + 16))(&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = sub_25454A554();
  }

  sub_2544DC694(a3, &v36);
  if (v37)
  {
    sub_2544DC71C(&v36, v38);
    v20 = __swift_project_boxed_opaque_existential_1(v38, v39);
    MEMORY[0x28223BE20](v20);
    (*(v22 + 16))(&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = sub_25454A554();
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    sub_2544DDC9C(&v36);
    v23 = 0;
  }

  v24 = v35;
  sub_2544DC694(v35, &v36);
  if (v37)
  {
    sub_2544DC71C(&v36, v38);
    v25 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v32 = v16;
    MEMORY[0x28223BE20](v25);
    (*(v27 + 16))(&v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = sub_25454A554();
    sub_2544DDC9C(v24);
    sub_2544DDC9C(a3);
    sub_2544DDC9C(a2);
    v16 = v32;
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    sub_2544DDC9C(v24);
    sub_2544DDC9C(a3);
    sub_2544DDC9C(a2);
    sub_2544DDC9C(&v36);
    v28 = 0;
  }

  v29 = v33 & 1;
  v30 = v34;
  *a6 = v16;
  *(a6 + 8) = v30;
  *(a6 + 16) = v23;
  *(a6 + 24) = v28;
  *(a6 + 32) = v29;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2544DDC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA80, &unk_25454F290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DynamicToggleColor.resolve(in:)@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    v2 = *v1;
    v3 = v1[2];
    if (!v3)
    {
      goto LABEL_9;
    }

    v19 = a1;
    v4 = sub_25454BBA4();
    v18 = &v18;
    v5 = *(v4 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x28223BE20](v4);
    v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;

    v8 = sub_25454AA04();
    MEMORY[0x28223BE20](v8);
    sub_25454BB94();
    v9 = sub_25454BB74();
    v10 = *(v5 + 8);
    v10(&v18 - v7, v4);
    result = (v10)(&v18 - v7, v4);
  }

  else
  {
    v2 = v1[1];
    v3 = v1[3];
    if (!v3)
    {
      goto LABEL_9;
    }

    v19 = a1;
    v12 = sub_25454BBA4();
    v18 = &v18;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x28223BE20](v12);
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;

    v16 = sub_25454AA04();
    MEMORY[0x28223BE20](v16);
    sub_25454BB94();
    v9 = sub_25454BB74();
    v17 = *(v13 + 8);
    v17(&v18 - v15, v12);
    result = (v17)(&v18 - v15, v12);
  }

  if (v9)
  {
    *v19 = v3;
    return result;
  }

  a1 = v19;
LABEL_9:
  *a1 = v2;
}

uint64_t DynamicToggleColor.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 33) = 256;
  *(a1 + 35) = 0;
}

uint64_t sub_2544DE058@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 33) = 256;
  *(a1 + 35) = 0;
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

uint64_t sub_2544DE0DC(uint64_t *a1, int a2)
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

uint64_t sub_2544DE124(uint64_t result, int a2, int a3)
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

unint64_t sub_2544DE188()
{
  result = qword_27F5FBB28;
  if (!qword_27F5FBB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBB30, &qword_25454F478);
    sub_2544DE214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBB28);
  }

  return result;
}

unint64_t sub_2544DE214()
{
  result = qword_27F5FBB38;
  if (!qword_27F5FBB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBB40, &unk_25454F480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBB38);
  }

  return result;
}

uint64_t MicaImage.body.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for MicaImage.CAPackageViewLayer();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;

  return MEMORY[0x282130A98](v2, sub_2544DE4EC, v3, v2);
}

double sub_2544DE330(void *a1, void *a2)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a2 rootLayer];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = [v6 disableActions];
    [v6 setDisableActions_];
    [a1 setAllowsGroupOpacity_];
    [a1 setAllowsGroupBlending_];
    v9 = v5;
    sub_2544DE510(v5);
    sub_2544DE5A8();
    [v6 setDisableActions_];
  }

  else
  {
  }

  return result;
}

uint64_t sub_2544DE4B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2544DE510(void *a1)
{
  v2 = OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer_];
  }
}

void sub_2544DE5A8()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    [v0 bounds];
    v8 = v7 / v4;
    [v0 bounds];
    if (v9 / v6 < v8)
    {
      v8 = v9 / v6;
    }

    [v2 setGeometryFlipped_];
    v10 = *(MEMORY[0x277CD9DE8] + 80);
    *&v15.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&v15.m33 = v10;
    v11 = *(MEMORY[0x277CD9DE8] + 112);
    *&v15.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&v15.m43 = v11;
    v12 = *(MEMORY[0x277CD9DE8] + 16);
    *&v15.m11 = *MEMORY[0x277CD9DE8];
    *&v15.m13 = v12;
    v13 = *(MEMORY[0x277CD9DE8] + 48);
    *&v15.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&v15.m23 = v13;
    [v2 setTransform_];
    CATransform3DMakeScale(&v15, v8, v8, 1.0);
    [v2 setTransform_];
    [v0 bounds];
    MidX = CGRectGetMidX(v17);
    [v0 bounds];
    [v2 setPosition_];
  }
}

id sub_2544DE8C4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2544DE90C()
{
  v1 = *v0;
  v2 = type metadata accessor for MicaImage.CAPackageViewLayer();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;

  return MEMORY[0x282130A98](v2, sub_2544DEA98, v3, v2);
}

uint64_t sub_2544DE998(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2544DE9E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2544DEA30()
{
  result = qword_27F5FBB50;
  if (!qword_27F5FBB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBB58, "ƞ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBB50);
  }

  return result;
}

uint64_t sub_2544DED6C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB68, &qword_25454F588);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2544DEEBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB68, &qword_25454F588);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AccessoryDetailsIconPickerView(uint64_t a1)
{
  result = qword_27F5FBB70;
  if (!qword_27F5FBB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2544DF044(uint64_t a1)
{
  sub_2544DF190(319, &qword_27F5FBB80, MEMORY[0x277D15460], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2544C3A1C();
    if (v2 <= 0x3F)
    {
      sub_2544DF190(319, &qword_27F5FBB88, MEMORY[0x277D15460], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_2544DF190(319, &qword_27F5FBB90, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2544DF190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2544DF210@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25454AA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AccessoryDetailsIconPickerView(0);
  sub_2544AE240(v1 + *(v10 + 32), v9, &qword_27F5FBC50, &qword_25454F680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25454A584();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_25454BF84();
    v13 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2544DF418@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = sub_25454B9D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB98, &qword_25454F600);
  sub_25454B9E4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25454D890;
  v20 = xmmword_25454F570;
  *v5 = xmmword_25454F570;
  v7 = *MEMORY[0x277CDF108];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  sub_25454B9F4();
  *v5 = v20;
  v8(v5, v7, v2);
  sub_25454B9F4();
  *v5 = v20;
  v8(v5, v7, v2);
  sub_25454B9F4();
  *v5 = v20;
  v8(v5, v7, v2);
  sub_25454B9F4();
  v21 = v6;
  v22 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBA0, &qword_25454F608);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBBA8, &qword_25454F610);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBBB0, &qword_25454F618);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBBB8, &qword_25454F620);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBBC0, &qword_25454F628);
  v13 = sub_2544AE1F0(&qword_27F5FBBC8, &qword_27F5FBBC0, &qword_25454F628, MEMORY[0x277CDD6E0]);
  v14 = sub_2544AECF0();
  v23 = v12;
  v24 = MEMORY[0x277D837D0];
  v25 = v13;
  v26 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v11;
  v24 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = sub_2544AE1F0(&qword_27F5FBBD0, &qword_27F5FBBB0, &qword_25454F618, MEMORY[0x277CDDF68]);
  v23 = v9;
  v24 = v10;
  v25 = v16;
  v26 = v17;
  swift_getOpaqueTypeConformance2();
  sub_25454A724();
}

double sub_2544DF81C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_25454AAC4();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBC0, &qword_25454F628);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBB8, &qword_25454F620);
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBA8, &qword_25454F610);
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13);
  v34 = &v29 - v14;
  sub_25454BE14();
  v33 = sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v29 - 2) = a1;
  *(&v29 - 1) = a2;
  sub_25454AF04();
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBD8, &qword_25454F630);
  sub_2544AE1F0(&qword_27F5FBBE0, &qword_27F5FBBD8, &qword_25454F630, MEMORY[0x277CDF170]);
  sub_25454A3C4();
  v41 = sub_25454BCF4();
  v42 = v16;
  v17 = sub_2544AE1F0(&qword_27F5FBBC8, &qword_27F5FBBC0, &qword_25454F628, MEMORY[0x277CDD6E0]);
  v18 = sub_2544AECF0();
  v19 = MEMORY[0x277D837D0];
  sub_25454B3B4();

  (*(v8 + 8))(v10, v7);
  v21 = v38;
  v20 = v39;
  v22 = v31;
  (*(v38 + 104))(v31, *MEMORY[0x277CDDDC0], v39);
  v41 = v7;
  v42 = v19;
  v43 = v17;
  v44 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v34;
  v24 = v35;
  sub_25454B4E4();
  (*(v21 + 8))(v22, v20);
  v26 = (*(v32 + 8))(v12, v24);
  MEMORY[0x28223BE20](v26);
  *(&v29 - 2) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBB0, &qword_25454F618);
  v41 = v24;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2544AE1F0(&qword_27F5FBBD0, &qword_27F5FBBB0, &qword_25454F618, MEMORY[0x277CDDF68]);
  v27 = v37;
  sub_25454B554();
  (*(v36 + 8))(v25, v27);

  return result;
}

double sub_2544DFDC0(uint64_t a1)
{
  v1 = sub_25454ADC4();
  MEMORY[0x28223BE20](v1);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);

  sub_25454AC14();
  sub_2544E2A6C(&qword_27F5FBC60, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_25454C584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC68, &qword_25454F6C0);
  sub_2544E24C8();
  sub_25454BAD4();

  return result;
}

double sub_2544DFFA8(uint64_t *a1)
{
  v2 = type metadata accessor for AccessoryDetailsIconPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *a1;
  swift_getKeyPath();
  sub_2544E2294(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2544E22FC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC88, &unk_25454F6F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC80, &unk_25454F6C8);
  sub_2544AE1F0(&qword_27F5FBC90, &qword_27F5FBC88, &unk_25454F6F0, MEMORY[0x277D83980]);
  sub_2544E2A6C(&qword_27F5FBC98, MEMORY[0x277D15460], MEMORY[0x277D15468]);
  sub_2544AE1F0(&qword_27F5FBC78, &qword_27F5FBC80, &unk_25454F6C8, MEMORY[0x277CDF028]);
  sub_25454B974();

  return result;
}

double sub_2544E022C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a1;
  v21 = a3;
  v3 = sub_254549744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for AccessoryDetailsIconPickerView(0);
  v17 = *(v6 - 8);
  v7 = *(v17 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v18 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = v19;
  sub_2544E2294(v19, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v20;
  (*(v4 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v3);
  v11 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v12 = (v7 + *(v4 + 80) + v11) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_2544E22FC(v8, v13 + v11);
  v14 = (*(v4 + 32))(v13 + v12, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  MEMORY[0x28223BE20](v14);
  *(&v16 - 2) = v9;
  *(&v16 - 1) = v10;
  type metadata accessor for SelectableIconView(0);
  sub_2544E2A6C(&qword_27F5FBCA0, type metadata accessor for SelectableIconView, &protocol conformance descriptor for SelectableIconView);
  sub_25454B7F4();

  return result;
}

double sub_2544E0508(uint64_t a1, uint64_t a2)
{
  v3 = sub_254549744();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v4 + 16);
  v10(v9, a2, v3);
  type metadata accessor for AccessoryDetailsIconPickerView(0);
  v10(v7, v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);
  sub_25454B7B4();
  (*(v4 + 8))(v9, v3);

  return result;
}

void sub_2544E06CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = v32 - v7;
  v8 = sub_254549744();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = v11;
  v37 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - v12;
  sub_25454BE14();
  v39 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryDetailsIconPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);
  sub_25454B7A4();
  sub_2544E2A6C(&qword_27F5FBCB0, MEMORY[0x277D15460], MEMORY[0x277D15470]);
  sub_25454BD94();
  v38 = a2;
  sub_25454BD94();
  v40 = a1;
  if (v42 == v45 && v43 == v46)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_25454C334();
  }

  (*(v9 + 8))(v13, v8);

  v15 = sub_25454BE04();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = MEMORY[0x277D85700];
  *(v16 + 24) = MEMORY[0x277D85700];
  *(v16 + 32) = v14 & 1;
  v18 = sub_25454BE04();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  sub_25454B944();
  v34 = v43;
  v35 = v42;
  v33 = v44;
  v20 = sub_254549F04();
  v21 = *(v20 - 8);
  v32[0] = *(v21 + 56);
  v32[1] = v21 + 56;
  (v32[0])(v41, 1, 1, v20);
  v22 = v37;
  (*(v9 + 16))(v37, v38, v8);
  v23 = sub_25454BE04();
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v17;
  (*(v9 + 32))(v25 + v24, v22, v8);
  v26 = sub_25454BE04();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v17;
  v28 = type metadata accessor for SelectableIconView(0);
  sub_25454B944();
  v29 = *(v40 + 24);
  v30 = v28[6];
  (v32[0])(a3 + v30, 1, 1, v20);
  *(a3 + v28[9]) = 0x4030000000000000;
  *(a3 + v28[10]) = 0x4048000000000000;
  v31 = v34;
  *a3 = v35;
  *(a3 + 8) = v31;
  *(a3 + 16) = v33;

  sub_2544E2C78(v41, a3 + v30);

  *(a3 + v28[7]) = v29;
  *(a3 + v28[8]) = 1;
}

void sub_2544E0BBC(char a1@<W2>, _BYTE *a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = a1 & 1;
}

double sub_2544E0C58()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

double sub_2544E0CE8@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_254549744();
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return result;
}

double sub_2544E0DC4()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

double sub_2544E0E54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBE8, &qword_25454F638);
  MEMORY[0x28223BE20](v29);
  v28 = v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBF0, &qword_25454F640);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = v24 - v5;
  v6 = sub_25454AD84();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBBF8, &qword_25454F648);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  sub_25454BE14();
  v24[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_25454AD64();
  MEMORY[0x28223BE20](v14);
  LOBYTE(v24[-2]) = 1;
  v24[-1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC00, &qword_25454F650);
  sub_2544E20EC();
  sub_25454A494();
  v15 = sub_25454AD74();
  MEMORY[0x28223BE20](v15);
  LOBYTE(v24[-2]) = 1;
  v24[-1] = a1;
  sub_25454A494();
  sub_25454B604();
  sub_2544AE1F0(&qword_27F5FBC40, &qword_27F5FBBF8, &qword_25454F648, MEMORY[0x277CDD7A8]);
  v16 = v25;
  sub_25454A6A4();

  v17 = *(v8 + 8);
  v17(v11, v7);
  v18 = v28;
  v19 = *(v29 + 48);
  (*(v8 + 16))(v28, v13, v7);
  v20 = v26;
  v21 = &v18[v19];
  v22 = v27;
  (*(v26 + 16))(v21, v16, v27);
  sub_25454AC54();
  (*(v20 + 8))(v16, v22);
  v17(v13, v7);

  return result;
}

double sub_2544E12B0@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v30 = a1;
  v36 = a3;
  v3 = sub_25454A384();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC38, &qword_25454F670);
  v29 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v29 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC48, &qword_25454F678);
  MEMORY[0x28223BE20](v33);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AccessoryDetailsIconPickerView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC18, &qword_25454F658);
  MEMORY[0x28223BE20](v34);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC00, &qword_25454F650);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v29 - v16;
  sub_25454BE14();
  v32 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v30)
  {
    sub_25454A364();
    sub_2544E2294(v31, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = swift_allocObject();
    sub_2544E22FC(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    MEMORY[0x259C0E900](v5, sub_2544E244C, v19);
    v20 = v29;
    v21 = v35;
    (*(v29 + 16))(v9, v7, v35);
    swift_storeEnumTagMultiPayload();
    sub_2544E21A4();
    sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670, MEMORY[0x277CDF028]);
    sub_25454AD44();
    (*(v20 + 8))(v7, v21);
  }

  else
  {
    v37 = sub_25454BCF4();
    v38 = v22;
    sub_2544E2294(v31, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v24 = swift_allocObject();
    sub_2544E22FC(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    sub_2544AECF0();
    sub_25454B814();
    v25 = sub_25454B684();
    KeyPath = swift_getKeyPath();
    v27 = &v14[*(v34 + 36)];
    *v27 = KeyPath;
    v27[1] = v25;
    sub_2544AE240(v14, v9, &qword_27F5FBC18, &qword_25454F658);
    swift_storeEnumTagMultiPayload();
    sub_2544E21A4();
    sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670, MEMORY[0x277CDF028]);
    sub_25454AD44();
    sub_2544AE150(v14, &qword_27F5FBC18, &qword_25454F658);
  }

  sub_2544E2368(v17, v36);

  return result;
}

double sub_2544E17FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_25454A584();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544DF210(v5);
  sub_25454A574();
  (*(v3 + 8))(v5, v2);

  return result;
}

double sub_2544E1944@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v30 = a1;
  v36 = a3;
  v3 = sub_25454A384();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC38, &qword_25454F670);
  v29 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v29 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC48, &qword_25454F678);
  MEMORY[0x28223BE20](v33);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AccessoryDetailsIconPickerView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC18, &qword_25454F658);
  MEMORY[0x28223BE20](v34);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC00, &qword_25454F650);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v29 - v16;
  sub_25454BE14();
  v32 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v30)
  {
    sub_25454A374();
    sub_2544E2294(v31, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = swift_allocObject();
    sub_2544E22FC(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    MEMORY[0x259C0E900](v5, sub_2544E2360, v19);
    v20 = v29;
    v21 = v35;
    (*(v29 + 16))(v9, v7, v35);
    swift_storeEnumTagMultiPayload();
    sub_2544E21A4();
    sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670, MEMORY[0x277CDF028]);
    sub_25454AD44();
    (*(v20 + 8))(v7, v21);
  }

  else
  {
    v37 = sub_25454BCF4();
    v38 = v22;
    sub_2544E2294(v31, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v24 = swift_allocObject();
    sub_2544E22FC(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    sub_2544AECF0();
    sub_25454B814();
    v25 = sub_25454B684();
    KeyPath = swift_getKeyPath();
    v27 = &v14[*(v34 + 36)];
    *v27 = KeyPath;
    v27[1] = v25;
    sub_2544AE240(v14, v9, &qword_27F5FBC18, &qword_25454F658);
    swift_storeEnumTagMultiPayload();
    sub_2544E21A4();
    sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670, MEMORY[0x277CDF028]);
    sub_25454AD44();
    sub_2544AE150(v14, &qword_27F5FBC18, &qword_25454F658);
  }

  sub_2544E2368(v17, v36);

  return result;
}

double sub_2544E1E90(uint64_t a1, uint64_t a2)
{
  v3 = sub_25454A584();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC58, &qword_254550350);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a1 + 8);
  type metadata accessor for AccessoryDetailsIconPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);
  sub_25454B7A4();
  v11 = sub_254549744();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v10(v9);
  sub_2544AE150(v9, &qword_27F5FBC58, &qword_254550350);
  sub_2544DF210(v6);
  sub_25454A574();
  (*(v4 + 8))(v6, v3);

  return result;
}

unint64_t sub_2544E20EC()
{
  result = qword_27F5FBC08;
  if (!qword_27F5FBC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBC00, &qword_25454F650);
    sub_2544E21A4();
    sub_2544AE1F0(&qword_27F5FBC30, &qword_27F5FBC38, &qword_25454F670, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBC08);
  }

  return result;
}

unint64_t sub_2544E21A4()
{
  result = qword_27F5FBC10;
  if (!qword_27F5FBC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBC18, &qword_25454F658);
    sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660, MEMORY[0x277CDF028]);
    sub_2544AE1F0(&qword_27F5FB5E8, &qword_27F5FB5F0, &qword_25454E670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBC10);
  }

  return result;
}

uint64_t sub_2544E2294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetailsIconPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544E22FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetailsIconPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544E2368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC00, &qword_25454F650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2544E24C8()
{
  result = qword_27F5FBC70;
  if (!qword_27F5FBC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBC68, &qword_25454F6C0);
    sub_2544AE1F0(&qword_27F5FBC78, &qword_27F5FBC80, &unk_25454F6C8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FBC70);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for AccessoryDetailsIconPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = sub_254549744();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);

  v7 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_25454A584();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_2544E270C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryDetailsIconPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2544E022C(a1, v6, a2);
}

uint64_t sub_2544E278C()
{
  v1 = (type metadata accessor for AccessoryDetailsIconPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*v1 + 64);
  v4 = sub_254549744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v12 = *(v5 + 64);

  v7 = *(v5 + 8);
  v7(v0 + v3 + v1[9], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB60, &qword_25454F580);

  v8 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_25454A584();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  v10 = (v3 + v13 + v6) & ~v6;
  v7(v0 + v10, v4);

  return MEMORY[0x2821FE8E8](v0, v10 + v12, v2 | v6 | 7);
}

double sub_2544E2998()
{
  v1 = *(type metadata accessor for AccessoryDetailsIconPickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_254549744() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2544E0508(v0 + v2, v5);
}

uint64_t sub_2544E2A6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2544E2AB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2544E2AF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2544E2B38()
{
  v1 = sub_254549744();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_2544E2BFC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(sub_254549744() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2544E0CE8(v4, a1);
}

uint64_t sub_2544E2C78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2544E2D40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2544AE240(*a1, a2, &qword_27F5FC090, &qword_25454FCF8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC440, &qword_254550008);
  v5 = v4[12];
  v6 = a1[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC070, &qword_25454FCD8);
  (*(*(v7 - 8) + 16))(a2 + v5, v6, v7);
  v8 = v4[16];
  v9 = a1[2];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC060, &qword_25454FCC8);
  (*(*(v10 - 8) + 16))(a2 + v8, v9, v10);
  sub_2544AE240(a1[3], a2 + v4[20], &qword_27F5FC058, &qword_25454FCC0);
  v11 = v4[24];
  v12 = a1[4];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC048, &qword_25454FCB0);
  (*(*(v13 - 8) + 16))(a2 + v11, v12, v13);
  sub_2544AE240(a1[5], a2 + v4[28], &qword_27F5FC040, &qword_25454FCA8);
  sub_254505BFC(a1[6], a2 + v4[32], type metadata accessor for WalletKeyUWBApproachAngleSection);
  v14 = v4[36];
  v15 = a1[7];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC020, &qword_25454FC88);
  (*(*(v16 - 8) + 16))(a2 + v14, v15, v16);
  v17 = v4[40];
  v18 = a1[8];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC018, &qword_25454FC80);
  (*(*(v19 - 8) + 16))(a2 + v17, v18, v19);
  sub_2544AE240(a1[9], a2 + v4[44], &qword_27F5FC010, &qword_25454FC78);
  sub_2544AE240(a1[10], a2 + v4[48], &qword_27F5FC008, &qword_25454FC70);
  sub_2544AE240(a1[11], a2 + v4[52], &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE240(a1[12], a2 + v4[56], &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE240(a1[13], a2 + v4[60], &qword_27F5FBFE8, &qword_25454FC50);
  sub_2544AE240(a1[14], a2 + v4[64], &qword_27F5FBFC8, &qword_25454FC30);
  return sub_2544AE240(a1[15], a2 + v4[68], &qword_27F5FBFB8, &qword_25454FC20);
}

uint64_t sub_2544E307C(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_25454BB04();
}

void sub_2544E324C(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2544D57B8(0, v4, 0);
    v6 = v17;
    v7 = *(sub_254549784() - 8);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    while (1)
    {
      a1(v16, v8);
      if (v3)
      {
        break;
      }

      v11 = v16[0];
      v10 = v16[1];
      v17 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2544D57B8((v12 > 1), v13 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += v9;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t AccessoryDetailsView.init(accessoryDetails:auxileryViewDelegate:navigationController:dismiss:useLegacyNavBar:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v73 = a6;
  v75 = a7;
  v12 = type metadata accessor for AccessoryDetailsView(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v13 + 28);
  swift_unknownObjectWeakInit();
  v16 = &v15[v12[9]];
  LOBYTE(v77[0]) = 0;
  sub_25454B794();
  v17 = *(&v78 + 1);
  *v16 = v78;
  *(v16 + 1) = v17;
  v18 = &v15[v12[10]];
  LOBYTE(v77[0]) = 0;
  sub_25454B794();
  v19 = *(&v78 + 1);
  *v18 = v78;
  *(v18 + 1) = v19;
  v20 = &v15[v12[11]];
  LOBYTE(v77[0]) = 0;
  sub_25454B794();
  v21 = *(&v78 + 1);
  *v20 = v78;
  *(v20 + 1) = v21;
  v22 = &v15[v12[12]];
  LOBYTE(v77[0]) = 0;
  sub_25454B794();
  v23 = *(&v78 + 1);
  *v22 = v78;
  *(v22 + 1) = v23;
  v24 = &v15[v12[13]];
  LOBYTE(v77[0]) = 0;
  sub_25454B794();
  v25 = *(&v78 + 1);
  *v24 = v78;
  *(v24 + 1) = v25;
  v26 = &v15[v12[14]];
  LOBYTE(v77[0]) = 0;
  sub_25454B794();
  v27 = *(&v78 + 1);
  *v26 = v78;
  *(v26 + 1) = v27;
  v28 = &v15[v12[15]];
  LOBYTE(v77[0]) = 0;
  sub_25454B794();
  v29 = *(&v78 + 1);
  *v28 = v78;
  *(v28 + 1) = v29;
  v30 = &v15[v12[16]];
  LOBYTE(v77[0]) = 0;
  sub_25454B794();
  v31 = *(&v78 + 1);
  *v30 = v78;
  *(v30 + 1) = v31;
  v32 = &v15[v12[17]];
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  sub_25454B794();
  v33 = v79;
  *v32 = v78;
  *(v32 + 2) = v33;
  v34 = v12[19];
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  sub_2544AE240(&v78, v77, &qword_27F5FBCC8, &qword_25454F720);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCC8, &qword_25454F720);
  v71 = v34;
  sub_25454B794();
  sub_2544AE150(&v78, &qword_27F5FBCC8, &qword_25454F720);
  v35 = &v15[v12[21]];
  v77[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD0, &qword_25454F728);
  sub_25454B794();
  v36 = *(&v78 + 1);
  *v35 = v78;
  *(v35 + 1) = v36;
  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v37 = sub_25454A2E4();
  __swift_project_value_buffer(v37, qword_27F5FD410);
  v38 = sub_25454A2C4();
  v39 = sub_25454BF94();
  v40 = os_log_type_enabled(v38, v39);
  v76 = a1;
  v74 = a5;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = a3;
    v43 = a4;
    v44 = swift_slowAlloc();
    *&v78 = v44;
    *v41 = 136315394;
    *(v41 + 4) = sub_254502AAC(0xD000000000000022, 0x80000002545555B0, &v78);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_254502AAC(0xD000000000000059, 0x80000002545555E0, &v78);
    _os_log_impl(&dword_2544A5000, v38, v39, "(%s:%s) - Creating AccessoryDetailsView", v41, 0x16u);
    swift_arrayDestroy();
    v45 = v44;
    a4 = v43;
    a3 = v42;
    MEMORY[0x259C0FDF0](v45, -1, -1);
    v46 = v41;
    a1 = v76;
    MEMORY[0x259C0FDF0](v46, -1, -1);
  }

  v47 = sub_254549AB4();
  v68 = *(v47 - 8);
  v48 = *(v68 + 16);
  v69 = v47;
  v48(v15, a1);
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730) + 28)] = 0;
  sub_2545029C0(a2, &v78);
  sub_2545029C0(&v78, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCE0, &qword_25454F738);
  sub_25454B794();
  __swift_destroy_boxed_opaque_existential_0(&v78);
  swift_unknownObjectWeakAssign();
  v15[v12[8]] = v73 & 1;
  v67 = a4;
  if (a3)
  {
    v49 = swift_allocObject();
    *(v49 + 16) = a3;
    v50 = &v15[v12[6]];
    *v50 = sub_254502A6C;
    v50[1] = v49;
    v51 = v74;
  }

  else
  {
    v52 = &v15[v12[6]];
    v51 = v74;
    *v52 = a4;
    *(v52 + 1) = v51;
    sub_2545029B0(a4, v51);
  }

  v53 = a3;
  v55 = a2[3];
  v54 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v55);
  v56 = *(v54 + 80);
  v57 = v53;
  v56(&v78, v55, v54);
  sub_2545029C0(&v78, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCE8, &qword_25454F740);
  sub_25454B794();
  __swift_destroy_boxed_opaque_existential_0(&v78);
  v58 = a2[3];
  v59 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v58);
  (*(v59 + 152))(&v78, v58, v59);
  sub_2544AE150(&v15[v71], &qword_27F5FBCF0, &qword_25454F748);
  sub_2544AE240(&v78, v77, &qword_27F5FBCC8, &qword_25454F720);
  sub_25454B794();
  sub_2544AE150(&v78, &qword_27F5FBCC8, &qword_25454F720);
  v60 = a2[3];
  v61 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v60);
  v62 = (*(v61 + 144))(v60, v61);
  v63 = &v15[v12[20]];
  v77[0] = v62;
  sub_25454B794();
  sub_254502A24(v67, v51);

  (*(v68 + 8))(v76, v69);
  v64 = *(&v78 + 1);
  *v63 = v78;
  *(v63 + 1) = v64;
  sub_254505BFC(v15, v75, type metadata accessor for AccessoryDetailsView);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_254505C64(v15, type metadata accessor for AccessoryDetailsView);
}

uint64_t AccessoryDetailsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_254549AB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v11 = sub_254549964();
  (*(v8 + 8))(v10, v7);
  v19 = v2;
  v20 = v11 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCF8, &qword_25454F750);
  sub_254503060();
  sub_25454A724();
  sub_254505BFC(v2, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessoryDetailsView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_254507518(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for AccessoryDetailsView);
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBD48, &qword_25454F778) + 36));
  *v14 = sub_2545031FC;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  sub_254505BFC(v2, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessoryDetailsView);
  v15 = swift_allocObject();
  sub_254507518(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v12, type metadata accessor for AccessoryDetailsView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBD50, &qword_25454F780);
  v17 = (a1 + *(result + 36));
  *v17 = 0;
  v17[1] = 0;
  v17[2] = sub_254503458;
  v17[3] = v15;
  return result;
}

void sub_2544E3E24(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v24) = a2;
  v5 = type metadata accessor for AccessoryDetailsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25454BE14();
  v26 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = sub_25454AC14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254505BFC(a1, &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessoryDetailsView);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = v9 + v7;
  v11 = swift_allocObject();
  sub_254507518(v8, v11 + v9, type metadata accessor for AccessoryDetailsView);
  *(v11 + v10) = v24 & 1;

  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  v24 = sub_25454B5F4();
  v23 = sub_25454AF14();
  v13 = (a1 + *(v5 + 24));
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v9) = *(a1 + *(v5 + 32));
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_2545029B0(v14, v15);
  v17 = sub_25454AB04();
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCF8, &qword_25454F750) + 36);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBD40, &qword_25454F770) + 44);
  *v19 = v17;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBF00, &unk_25454FB30);
  sub_2544FD2E4(a1, v19 + *(v20 + 44));

  *v18 = v14;
  *(v18 + 8) = v15;
  *(v18 + 16) = v9;
  *(v18 + 24) = Strong;
  v21 = v24;
  *a3 = v25;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = sub_254504A34;
  *(a3 + 32) = v11;
  *(a3 + 40) = v21;
  *(a3 + 48) = v23;
}

void sub_2544E4124(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_25454ADB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454AE54();
  sub_25454A5A4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = (*(v6 + 8))(v8, v5);
  MEMORY[0x28223BE20](v17);
  *(&v18 - 6) = a2;
  *(&v18 - 40) = a3 & 1;
  *(&v18 - 4) = v10;
  *(&v18 - 3) = v12;
  *(&v18 - 2) = v14;
  *(&v18 - 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFA0, &qword_25454FC10);
  sub_2544AE1F0(&qword_27F5FBFA8, &qword_27F5FBFA0, &qword_25454FC10, MEMORY[0x277CE14C0]);
  sub_25454B184();
}

void sub_2544E4354(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v506 = a2;
  v518 = a1;
  v460 = a3;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFB0, &qword_25454FC18);
  v470 = *(v466 - 8);
  MEMORY[0x28223BE20](v466);
  v436 = v392 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFB8, &qword_25454FC20);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v461 = v392 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v459 = v392 - v15;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFC0, &qword_25454FC28);
  v456 = *(v457 - 8);
  MEMORY[0x28223BE20](v457);
  v435 = v392 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFC8, &qword_25454FC30);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v492 = v392 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v458 = v392 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFD0, &qword_25454FC38);
  v454 = *(v21 - 8);
  v455 = v21;
  MEMORY[0x28223BE20](v21);
  v423 = v392 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFD8, &unk_25454FC40);
  v421 = *(v23 - 8);
  v422 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v420 = v392 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v419 = v392 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFE0, &unk_254550CD0);
  MEMORY[0x28223BE20](v27 - 8);
  v452 = v392 - v28;
  v465 = sub_254549D94();
  v464 = *(v465 - 8);
  MEMORY[0x28223BE20](v465);
  v434 = v392 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFE8, &qword_25454FC50);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v491 = v392 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v493 = v392 - v33;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFF0, &qword_25454FC58);
  v471 = *(v472 - 8);
  MEMORY[0x28223BE20](v472);
  v463 = v392 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFF8, &qword_25454FC60);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v490 = v392 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v489 = v392 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v485 = v392 - v41;
  MEMORY[0x28223BE20](v40);
  v484 = v392 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC000, &qword_25454FC68);
  v450 = *(v43 - 8);
  v451 = v43;
  MEMORY[0x28223BE20](v43);
  v433 = v392 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC008, &qword_25454FC70);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v488 = v392 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v504 = v392 - v48;
  v448 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC010, &qword_25454FC78));
  v49 = MEMORY[0x28223BE20](*&v448);
  v487 = v392 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v503 = v392 - v51;
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC018, &qword_25454FC80);
  v516 = *(v505 - 8);
  v52 = MEMORY[0x28223BE20](v505);
  v486 = v392 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v502 = v392 - v54;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC020, &qword_25454FC88);
  v517 = *(v510 - 8);
  v55 = MEMORY[0x28223BE20](v510);
  v432 = v392 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v495 = v392 - v58;
  MEMORY[0x28223BE20](v57);
  v501 = v392 - v59;
  v60 = type metadata accessor for WalletKeyUWBApproachAngleSection(0);
  v61 = MEMORY[0x28223BE20](v60 - 8);
  v483 = v392 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v500 = v392 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC028, &qword_25454FC90);
  v409 = *(v64 - 8);
  v410 = v64;
  MEMORY[0x28223BE20](v64);
  v398 = v392 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC030, &qword_25454FC98);
  v446 = *(v66 - 8);
  v447 = v66;
  MEMORY[0x28223BE20](v66);
  v408 = v392 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC038, &qword_25454FCA0);
  MEMORY[0x28223BE20](v68 - 8);
  v418 = v392 - v69;
  v70 = sub_25454A124();
  v425 = *(v70 - 8);
  v426 = v70;
  MEMORY[0x28223BE20](v70);
  v424 = v392 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_254549634();
  v430 = *(v72 - 8);
  v431 = v72;
  MEMORY[0x28223BE20](v72);
  v429 = v392 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC040, &qword_25454FCA8);
  v75 = MEMORY[0x28223BE20](v74 - 8);
  v482 = v392 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v499 = v392 - v77;
  v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC048, &qword_25454FCB0);
  v515 = *(v481 - 8);
  v78 = MEMORY[0x28223BE20](v481);
  v480 = v392 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v498 = v392 - v80;
  v468 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC050, &qword_25454FCB8));
  v467 = *(*&v468 - 8);
  MEMORY[0x28223BE20](*&v468);
  v428 = v392 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC058, &qword_25454FCC0);
  v83 = MEMORY[0x28223BE20](v82 - 8);
  v479 = v392 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v509 = v392 - v85;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC060, &qword_25454FCC8);
  v514 = *(v478 - 8);
  v86 = MEMORY[0x28223BE20](v478);
  v477 = v392 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v497 = v392 - v88;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC068, &qword_25454FCD0);
  MEMORY[0x28223BE20](v445);
  v444 = v392 - v89;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC070, &qword_25454FCD8);
  v475 = *(v476 - 8);
  v90 = MEMORY[0x28223BE20](v476);
  v474 = v392 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v496 = v392 - v92;
  updated = type metadata accessor for SoftwareUpdateStatusView(0);
  MEMORY[0x28223BE20](updated);
  v407 = v392 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC078, &qword_25454FCE0);
  v415 = *(v94 - 8);
  v416 = v94;
  MEMORY[0x28223BE20](v94);
  v404 = v392 - v95;
  v413 = sub_254549DC4();
  v427 = *(v413 - 8);
  v96 = MEMORY[0x28223BE20](v413);
  v403 = v392 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x28223BE20](v96);
  v412 = v392 - v99;
  MEMORY[0x28223BE20](v98);
  v438 = v392 - v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC080, &qword_25454FCE8);
  v442 = *(v101 - 8);
  v443 = v101;
  MEMORY[0x28223BE20](v101);
  v414 = v392 - v102;
  v103 = sub_254549DA4();
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v106 = v392 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_25454A0F4();
  v108 = *(v107 - 8);
  v439 = v107;
  v440 = v108;
  v109 = MEMORY[0x28223BE20](v107);
  v402 = v392 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = MEMORY[0x28223BE20](v109);
  v401 = v392 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v406 = v392 - v114;
  MEMORY[0x28223BE20](v113);
  v437 = v392 - v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC088, &qword_25454FCF0);
  MEMORY[0x28223BE20](v116 - 8);
  v118 = v392 - v117;
  v511 = sub_254549AB4();
  v462 = *(v511 - 8);
  v119 = MEMORY[0x28223BE20](v511);
  v449 = v392 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = MEMORY[0x28223BE20](v119);
  v417 = v392 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v400 = v392 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v399 = v392 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v405 = v392 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v494 = v392 - v130;
  MEMORY[0x28223BE20](v129);
  v132 = v392 - v131;
  v133 = sub_254549DD4();
  v134 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v441 = v392 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC090, &qword_25454FCF8);
  v137 = MEMORY[0x28223BE20](v136 - 8);
  v473 = v392 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v137);
  v507 = v392 - v139;
  v140 = sub_25454BE14();
  v453 = sub_25454BE04();
  v469 = v140;
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549994();
  v141 = *(*&v462 + 8);
  v508 = *&v462 + 8;
  v512 = v141;
  v141(v132, v511);
  if ((*(v134 + 48))(v118, 1, v133) == 1)
  {
    sub_2544AE150(v118, &qword_27F5FC088, &qword_25454FCF0);
LABEL_10:
    v161 = 1;
    v162 = v518;
    v157 = v511;
    goto LABEL_13;
  }

  v142 = v441;
  (*(v134 + 32))(v441, v118, v133);
  sub_254549DB4();
  if ((*(v104 + 88))(v106, v103) != *MEMORY[0x277D165F0])
  {
    (*(v134 + 8))(v142, v133);
    (*(v104 + 8))(v106, v103);
    goto LABEL_10;
  }

  v395 = v134;
  v396 = v133;
  (*(v104 + 96))(v106, v103);
  v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2B8, &qword_25454FE70) + 48);
  (*(v440 + 32))(v437, v106, v439);
  v144 = v427;
  v146 = v427 + 8;
  v145 = *(v427 + 8);
  v147 = &v106[v143];
  v148 = v413;
  v145(v147, v413);
  v149 = v494;
  sub_25454B7A4();
  v150 = v438;
  sub_254549954();
  v512(v149, v511);
  v151 = *MEMORY[0x277D16630];
  v152 = v412;
  v394 = *(v144 + 104);
  v394(v412, v151, v148);
  sub_254504430(&qword_27F5FC2C0, MEMORY[0x277D16648], MEMORY[0x277D16650]);
  LOBYTE(v143) = sub_25454BC44();
  v145(v152, v148);
  v397 = v146;
  v145(v150, v148);
  if (v143 & 1) != 0 || (v153 = v145, sub_25454B7A4(), v154 = v438, sub_254549954(), v512(v149, v511), v394(v152, *MEMORY[0x277D16620], v148), v155 = sub_25454BC44(), v145(v152, v148), v145(v154, v148), (v155))
  {
    (*(v440 + 8))(v437, v439);
    (*(v395 + 8))(v441, v396);
    v156 = 1;
    v157 = v511;
    v159 = v415;
    v158 = v416;
    v160 = v414;
  }

  else
  {
    v393 = *(v440 + 16);
    v163 = v406;
    v393(v406, v437, v439);
    sub_25454B7A4();
    sub_254549954();
    v512(v149, v511);
    sub_25454B7A4();
    v164 = *(updated + 32);
    v165 = updated;
    v166 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    *&v407[v164] = v166;
    v394 = v153;
    v167 = v401;
    v168 = v163;
    v169 = v439;
    v170 = v393;
    v393(v401, v168, v439);
    v392[1] = *(v165 + 24);
    v170(v402, v167, v169);
    v393 = v166;
    sub_25454B794();
    v171 = *(v440 + 8);
    v440 += 8;
    v402 = v171;
    (v171)(v167, v169);
    v172 = *(v427 + 16);
    v172(v152, v438, v148);
    v173 = updated;
    v172(v403, v152, v148);
    v174 = v407;
    sub_25454B794();
    (v394)(v152, v148);
    v175 = *(*&v462 + 16);
    v176 = v399;
    v177 = v405;
    v178 = v511;
    v175(v399, v405, v511);
    v175(v400, v176, v178);
    sub_25454B794();
    v179 = v512;
    v512(v176, v178);
    v180 = &v174[*(v173 + 20)];
    v181 = v174;
    LOBYTE(v519[0]) = 0;
    sub_25454B794();
    v182 = *(&v526[0] + 1);
    *v180 = v526[0];
    *(v180 + 1) = v182;
    v183 = v393;
    [v393 setDateStyle_];
    [v183 setTimeStyle_];

    v184 = v177;
    v157 = v178;
    v179(v184, v178);
    (v394)(v438, v148);
    v185 = v439;
    v186 = v402;
    (v402)(v406, v439);
    sub_25454A4D4();
    sub_254504430(&qword_27F5FC2C8, type metadata accessor for SoftwareUpdateStatusView, &protocol conformance descriptor for SoftwareUpdateStatusView);
    v187 = v404;
    sub_25454B3E4();
    sub_254505C64(v181, type metadata accessor for SoftwareUpdateStatusView);
    v186(v437, v185);
    (*(v395 + 8))(v441, v396);
    v160 = v414;
    v159 = v415;
    v188 = v416;
    (*(v415 + 32))(v414, v187, v416);
    v158 = v188;
    v156 = 0;
  }

  (*(v159 + 56))(v160, v156, 1, v158);
  sub_2544B14E8(v160, v507, &qword_27F5FC080, &qword_25454FCE8);
  v161 = 0;
  v162 = v518;
LABEL_13:
  v189 = 1;
  v190 = (*(v442 + 56))(v507, v161, 1, v443);
  MEMORY[0x28223BE20](v190);
  sub_2544EAE04(v162, v444);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC098, &qword_25454FD00);
  sub_254505818(&qword_27F5FC0A0, &qword_27F5FC068, &qword_25454FCD0, sub_254505074);
  sub_25450558C();
  v191 = sub_25454B994();
  MEMORY[0x28223BE20](v191);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC180, &qword_25454FD78);
  sub_2545056D8();
  sub_25454B9A4();
  v192 = v494;
  sub_25454B7A4();
  v193 = sub_254549A04();
  v194 = (v512)(v192, v157);
  v195 = v157;
  if (v193)
  {
    MEMORY[0x28223BE20](v194);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC28, &unk_25454F660);
    sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660, MEMORY[0x277CDF028]);
    v196 = v428;
    sub_25454B9A4();
    (*(*&v467 + 32))(v509, v196, COERCE_DOUBLE(*&v468));
    v189 = 0;
  }

  v197 = (*(*&v467 + 56))(v509, v189, 1, COERCE_DOUBLE(*&v468));
  MEMORY[0x28223BE20](v197);
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v198 = v506;
  if (v506)
  {
    *&v526[0] = sub_25454BCF4();
    *(&v526[0] + 1) = v199;
    sub_2544AECF0();
    v200 = sub_25454B274();
    v202 = v201;
    v204 = v203;
    v206 = v205;

    v207 = v204 & 1;
  }

  else
  {

    v200 = 0;
    v202 = 0;
    v207 = 0;
    v206 = 0;
  }

  *&v526[0] = v200;
  *(&v526[0] + 1) = v202;
  *&v526[1] = v207;
  *(&v526[1] + 1) = v206;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A0, &qword_25454FD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A8, &qword_25454FD90);
  sub_2544AE1F0(&qword_27F5FC1B0, &qword_27F5FC1A0, &qword_25454FD88, MEMORY[0x277CE14C0]);
  sub_254505794();
  sub_25454B9B4();
  v208 = v472;
  if ((v198 & 1) == 0)
  {
    goto LABEL_24;
  }

  v210 = v429;
  v209 = v430;
  v211 = v431;
  (*(v430 + 104))(v429, *MEMORY[0x277D15280], v431);
  sub_254504430(&qword_27F5FC2A0, MEMORY[0x277D15298], MEMORY[0x277D15270]);
  v212 = sub_254549564();
  (*(v209 + 8))(v210, v211);
  if ((v212 & 1) == 0)
  {
    goto LABEL_24;
  }

  v213 = v417;
  sub_25454B7A4();
  v214 = v418;
  sub_2545499C4();
  v215 = v213;
  v216 = v512;
  v512(v215, v195);
  v218 = v425;
  v217 = v426;
  if ((*(v425 + 48))(v214, 1, v426) == 1)
  {
    sub_2544AE150(v214, &qword_27F5FC038, &qword_25454FCA0);
LABEL_24:
    (*(v446 + 56))(v499, 1, 1, v447);
    v219 = v513;
    goto LABEL_25;
  }

  (*(v218 + 32))(v424, v214, v217);
  if (sub_25454A104() & 1) != 0 && (sub_25454A114() & 1) != 0 && (v321 = v494, sub_25454B7A4(), v322 = sub_254549914(), v323 = v216(v321, v195), (v322))
  {
    MEMORY[0x28223BE20](v323);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2A8, &unk_25454FE60);
    sub_2544AE1F0(&qword_27F5FC2B0, &qword_27F5FC2A8, &unk_25454FE60, MEMORY[0x277CE14C0]);
    v324 = v398;
    v217 = v426;
    sub_25454B9A4();
    v218 = v425;
    v326 = v408;
    v325 = v409;
    v327 = v410;
    (*(v409 + 32))(v408, v324, v410);
    v328 = v327;
    v329 = 0;
    v219 = v513;
  }

  else
  {
    v329 = 1;
    v219 = v513;
    v325 = v409;
    v328 = v410;
    v326 = v408;
  }

  (*(v325 + 56))(v326, v329, 1, v328);
  v330 = v499;
  sub_2544B14E8(v326, v499, &qword_27F5FC030, &qword_25454FC98);
  (*(v446 + 56))(v330, 0, 1, v447);
  (*(v218 + 8))(v424, v217);
LABEL_25:
  v220 = v500;
  v221 = sub_25454B7A4();
  *(v220 + v219[7]) = 0;
  MEMORY[0x28223BE20](v221);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1C0, &qword_25454FD98);
  sub_254505818(&qword_27F5FC1C8, &qword_27F5FC1C0, &qword_25454FD98, sub_254505894);
  v222 = sub_25454B9A4();
  MEMORY[0x28223BE20](v222);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC220, &qword_25454FDD0);
  sub_254505B34();
  sub_25454B9A4();
  v223 = v503;
  sub_25454B7A4();
  v224 = type metadata accessor for AutoRelockTimePickerView(0);
  v225 = v223 + *(v224 + 20);
  LOBYTE(v519[0]) = 0;
  sub_25454B794();
  v226 = *(&v526[0] + 1);
  *v225 = v526[0];
  *(v225 + 8) = v226;
  v227 = v223 + *(v224 + 24);
  LOBYTE(v519[0]) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC240, &qword_25454FDE0);
  sub_25454B794();
  v228 = *(&v526[0] + 1);
  *v227 = v526[0];
  *(v227 + 8) = v228;
  *(v223 + v219[7]) = 0;
  KeyPath = swift_getKeyPath();
  v230 = swift_allocObject();
  *(v230 + 16) = (v198 & 1) == 0;
  v231 = (v223 + *(*&v448 + 36));
  *v231 = KeyPath;
  v231[1] = sub_2544C8E8C;
  v231[2] = v230;
  if (v198)
  {
    type metadata accessor for AccessoryDetailsView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
    sub_25454B7A4();
    v232 = *(&v538 + 1);
    v233 = v539;
    __swift_project_boxed_opaque_existential_1(&v537, *(&v538 + 1));
    v447 = (*(v233 + 72))(v232, v233);
    v448 = a4;
    v562.origin.x = a4;
    v462 = a5;
    v562.origin.y = a5;
    v467 = a6;
    v562.size.width = a6;
    v468 = a7;
    v562.size.height = a7;
    CGRectGetWidth(v562);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC288, &qword_25454FE48);
    sub_25454B7A4();
    v234 = *(&v526[1] + 1);
    v235 = *&v526[2];
    __swift_project_boxed_opaque_existential_1(v526, *(&v526[1] + 1));
    (*(v235 + 16))(v234, v235);
    __swift_destroy_boxed_opaque_existential_0(v526);
    sub_25454BA34();
    sub_25454A784();
    __swift_destroy_boxed_opaque_existential_0(&v537);
    v236 = sub_25454AF24();
    LOBYTE(v235) = v236;
    LODWORD(v446) = v236;
    sub_25454A394();
    v238 = v237;
    v240 = v239;
    v242 = v241;
    v244 = v243;
    v536 = 0;
    v245 = sub_25454AF34();
    v246 = v245;
    LODWORD(v445) = v245;
    v247 = sub_25454A394();
    v249 = v248;
    v251 = v250;
    v253 = v252;
    v255 = v254;
    LOBYTE(v559[0]) = 0;
    MEMORY[0x28223BE20](v247);
    v256 = v495;
    sub_25454B9A4();
    v257 = v517;
    v258 = *(v517 + 16);
    v259 = v432;
    v260 = v510;
    v258(v432, v256, v510);
    *&v519[0] = v447;
    *(&v519[6] + 8) = v554;
    *(&v519[3] + 8) = v551;
    *(&v519[4] + 8) = v552;
    *(&v519[5] + 8) = v553;
    *(v519 + 8) = v548;
    *(&v519[1] + 8) = v549;
    *(&v519[2] + 8) = v550;
    BYTE8(v519[7]) = v235;
    *&v520 = v238;
    *(&v520 + 1) = v240;
    *&v521 = v242;
    *(&v521 + 1) = v244;
    LOBYTE(v522) = 0;
    BYTE8(v522) = v246;
    *&v523 = v249;
    *(&v523 + 1) = v251;
    *&v524 = v253;
    *(&v524 + 1) = v255;
    v525 = 0;
    v261 = v447;
    v262 = v433;
    v433[208] = 0;
    v263 = v519[3];
    *(v262 + 2) = v519[2];
    *(v262 + 3) = v263;
    v264 = v519[5];
    *(v262 + 4) = v519[4];
    *(v262 + 5) = v264;
    v265 = v519[1];
    *v262 = v519[0];
    *(v262 + 1) = v265;
    v266 = v523;
    *(v262 + 10) = v522;
    *(v262 + 11) = v266;
    *(v262 + 12) = v524;
    v267 = v519[6];
    v268 = v519[7];
    v269 = v521;
    *(v262 + 8) = v520;
    *(v262 + 9) = v269;
    *(v262 + 6) = v267;
    *(v262 + 7) = v268;
    v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC290, &qword_25454FE50);
    v258(&v262[*(v270 + 48)], v259, v260);
    sub_2544AE240(v519, v526, &qword_27F5FC298, &qword_25454FE58);
    v271 = *(v257 + 8);
    v271(v256, v260);
    v271(v259, v260);
    *(&v526[3] + 8) = v551;
    *(&v526[4] + 8) = v552;
    *(&v526[5] + 8) = v553;
    *(&v526[6] + 8) = v554;
    *(v526 + 8) = v548;
    *(&v526[1] + 8) = v549;
    *&v526[0] = v261;
    *(&v526[2] + 8) = v550;
    BYTE8(v526[7]) = v446;
    *&v527 = v238;
    *(&v527 + 1) = v240;
    *&v528 = v242;
    *(&v528 + 1) = v244;
    v529 = 0;
    v530 = v445;
    v531 = v249;
    v532 = v251;
    v533 = v253;
    v534 = v255;
    v535 = 0;
    sub_2544AE150(v526, &qword_27F5FC298, &qword_25454FE58);
    v272 = v504;
    sub_2544B14E8(v262, v504, &qword_27F5FC000, &qword_25454FC68);
    (*(v450 + 56))(v272, 0, 1, v451);
    a7 = v468;
    a6 = v467;
    a5 = v462;
    a4 = v448;
    v208 = v472;
  }

  else
  {
    (*(v450 + 56))(v504, 1, 1, v451);
  }

  v467 = COERCE_DOUBLE(type metadata accessor for AccessoryDetailsView(0));
  *&v273 = *(*&v467 + 20);
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v274 = *(&v526[1] + 1);
  v275 = *&v526[2];
  __swift_project_boxed_opaque_existential_1(v526, *(&v526[1] + 1));
  v276 = (*(v275 + 56))(v274, v275);
  v277 = __swift_destroy_boxed_opaque_existential_0(v526);
  if (v276 < 2)
  {
    v281 = 1;
    v280 = v484;
    v279 = v471;
  }

  else
  {
    MEMORY[0x28223BE20](v277);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
    sub_254505894();
    v278 = v463;
    sub_25454B9A4();
    v279 = v471;
    v280 = v484;
    (*(v471 + 32))(v484, v278, v208);
    v281 = 0;
  }

  v282 = *(v279 + 56);
  v282(v280, v281, 1, v208);
  sub_25454B7A4();
  v283 = *(&v526[1] + 1);
  v284 = *&v526[2];
  __swift_project_boxed_opaque_existential_1(v526, *(&v526[1] + 1));
  v285 = (*(v284 + 96))(v283, v284);
  v468 = v273;
  if (v285)
  {
    v286 = __swift_destroy_boxed_opaque_existential_0(v526);
LABEL_34:
    MEMORY[0x28223BE20](v286);
    v290 = v518;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
    sub_254505894();
    v291 = v463;
    sub_25454B9A4();
    v292 = v485;
    (*(v471 + 32))(v485, v291, v208);
    v293 = 0;
    goto LABEL_36;
  }

  sub_25454B7A4();
  v287 = *(&v519[1] + 1);
  v288 = *&v519[2];
  __swift_project_boxed_opaque_existential_1(v519, *(&v519[1] + 1));
  v289 = (*(v288 + 88))(v287, v288);
  __swift_destroy_boxed_opaque_existential_0(v519);
  v286 = __swift_destroy_boxed_opaque_existential_0(v526);
  if (v289)
  {
    goto LABEL_34;
  }

  v293 = 1;
  v290 = v518;
  v292 = v485;
LABEL_36:
  v282(v292, v293, 1, v208);
  v294 = v449;
  sub_25454B7A4();
  v295 = v452;
  sub_254549984();
  v296 = v294;
  v297 = v511;
  v512(v296, v511);
  v298 = v464;
  v299 = v465;
  if ((*(v464 + 48))(v295, 1, v465) == 1)
  {
    sub_2544AE150(v295, &qword_27F5FBFE0, &unk_254550CD0);
    v300 = v466;
    v301 = v493;
LABEL_40:
    (*(v454 + 56))(v301, 1, 1, v455);
    v304 = v494;
    goto LABEL_56;
  }

  v302 = v434;
  (*(v298 + 32))(v434, v295, v299);
  v303 = sub_2544F1A00();
  v300 = v466;
  v301 = v493;
  if (v303)
  {
    (*(v298 + 8))(v302, v299);
    goto LABEL_40;
  }

  v305 = v467;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCF0, &qword_25454F748);
  sub_25454B7A4();
  if (*(&v526[1] + 1))
  {
    sub_2544DC71C(v526, v559);
    v306 = v560;
    v307 = v561;
    __swift_project_boxed_opaque_existential_1(v559, v560);
    if ((*(v307 + 32))(v306, v307))
    {
      v308 = &v290[*(*&v305 + 80)];
      v310 = *v308;
      v309 = *(v308 + 1);
      *&v526[0] = v310;
      *(&v526[0] + 1) = v309;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC280, &qword_25454FE40);
      sub_25454B7A4();
      v311 = *&v519[0];
      v563.origin.x = a4;
      v563.origin.y = a5;
      v563.size.width = a6;
      v563.size.height = a7;
      v312 = CGRectGetWidth(v563) + -30.0;
      v564.origin.x = a4;
      v564.origin.y = a5;
      v564.size.width = a6;
      v564.size.height = a7;
      Width = CGRectGetWidth(v564);
      sub_25454BA34();
      if (v312 > Width)
      {
        sub_25454BF84();
        v314 = sub_25454AED4();
        sub_25454A1E4();
      }

      sub_25454A784();
      v315 = sub_25454AF74();
      sub_25454A394();
      *(&v519[3] + 8) = v551;
      *(&v519[4] + 8) = v552;
      *(&v519[5] + 8) = v553;
      *(&v519[6] + 8) = v554;
      *(v519 + 8) = v548;
      *(&v519[1] + 8) = v549;
      LOBYTE(v537) = 0;
      *&v519[0] = v311;
      *(&v519[2] + 8) = v550;
      BYTE8(v519[7]) = v315;
      *&v520 = v316;
      *(&v520 + 1) = v317;
      *&v521 = v318;
      *(&v521 + 1) = v319;
      LOBYTE(v522) = 0;
      nullsub_1();
      v320 = __swift_destroy_boxed_opaque_existential_0(v559);
      v527 = v520;
      v528 = v521;
      v529 = v522;
      v526[4] = v519[4];
      v526[5] = v519[5];
      v526[7] = v519[7];
      v526[6] = v519[6];
      v526[0] = v519[0];
      v526[1] = v519[1];
      v526[3] = v519[3];
      v526[2] = v519[2];
      goto LABEL_55;
    }

    __swift_destroy_boxed_opaque_existential_0(v559);
  }

  else
  {
    sub_2544AE150(v526, &qword_27F5FBCC8, &qword_25454F720);
  }

  sub_254505CCC(v526);
LABEL_55:
  MEMORY[0x28223BE20](v320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC260, &qword_25454FE28);
  sub_2544AE1F0(&qword_27F5FC268, &qword_27F5FC260, &qword_25454FE28, MEMORY[0x277CE14C0]);
  v331 = v419;
  sub_25454B9A4();
  v545 = v527;
  v546 = v528;
  v547 = v529;
  v541 = v526[4];
  v542 = v526[5];
  v544 = v526[7];
  v543 = v526[6];
  v537 = v526[0];
  v538 = v526[1];
  v540 = v526[3];
  v539 = v526[2];
  v333 = v421;
  v332 = v422;
  v334 = *(v421 + 16);
  v335 = v302;
  v336 = v420;
  v334(v420, v331, v422);
  v337 = v546;
  v556 = v545;
  v557 = v546;
  v338 = v541;
  v339 = v542;
  v552 = v541;
  v553 = v542;
  v340 = v544;
  v341 = v543;
  v555 = v544;
  v554 = v543;
  v342 = v537;
  v343 = v538;
  v548 = v537;
  v549 = v538;
  v344 = v540;
  v345 = v539;
  v551 = v540;
  v550 = v539;
  v346 = v423;
  *(v423 + 8) = v545;
  *(v346 + 144) = v337;
  *(v346 + 64) = v338;
  *(v346 + 80) = v339;
  *(v346 + 96) = v341;
  *(v346 + 112) = v340;
  *v346 = v342;
  *(v346 + 16) = v343;
  v558 = v547;
  *(v346 + 160) = v547;
  *(v346 + 32) = v345;
  *(v346 + 48) = v344;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC270, &qword_25454FE30);
  v334((v346 + *(v347 + 48)), v336, v332);
  sub_2544AE240(&v548, v519, &qword_27F5FC278, &qword_25454FE38);
  v348 = *(v333 + 8);
  v348(v331, v332);
  (*(v464 + 8))(v335, v465);
  v348(v336, v332);
  v520 = v545;
  v521 = v546;
  LOBYTE(v522) = v547;
  v519[4] = v541;
  v519[5] = v542;
  v519[7] = v544;
  v519[6] = v543;
  v519[0] = v537;
  v519[1] = v538;
  v519[3] = v540;
  v519[2] = v539;
  sub_2544AE150(v519, &qword_27F5FC278, &qword_25454FE38);
  v349 = v493;
  sub_2544B14E8(v346, v493, &qword_27F5FBFD0, &qword_25454FC38);
  (*(v454 + 56))(v349, 0, 1, v455);
  v297 = v511;
  v304 = v494;
  v300 = v466;
LABEL_56:
  sub_25454B7A4();
  v350 = sub_2545499A4();
  v512(v304, v297);
  if (v350)
  {
    *&v519[0] = sub_25454BCF4();
    *(&v519[0] + 1) = v351;
    sub_25454BE04();
    sub_25454BDB4();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    v353 = v458;
    if ((isCurrentExecutor & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_25454B7A4();
    v354 = *(&v526[1] + 1);
    v355 = *&v526[2];
    __swift_project_boxed_opaque_existential_1(v526, *(&v526[1] + 1));
    v356 = (*(v355 + 40))(v354, v355);
    __swift_destroy_boxed_opaque_existential_0(v526);

    *&v526[0] = v356;
    sub_2544AECF0();
    v357 = v435;
    sub_25454A684();
    v358 = v456;
    v359 = v457;
    (*(v456 + 32))(v353, v357, v457);
    v360 = 0;
  }

  else
  {
    v360 = 1;
    v359 = v457;
    v358 = v456;
    v353 = v458;
  }

  v361 = 1;
  v362 = (*(v358 + 56))(v353, v360, 1, v359);
  v363 = v459;
  if (v506)
  {
    MEMORY[0x28223BE20](v362);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC250, &qword_25454FE20);
    sub_2544AE1F0(&qword_27F5FC258, &qword_27F5FC250, &qword_25454FE20, MEMORY[0x277CE14C0]);
    v364 = v436;
    sub_25454B9A4();
    (*(v470 + 32))(v363, v364, v300);
    v361 = 0;
  }

  (*(v470 + 56))(v363, v361, 1, v300);
  v365 = v473;
  sub_2544AE240(v507, v473, &qword_27F5FC090, &qword_25454FCF8);
  *&v526[0] = v365;
  v366 = v474;
  (*(v475 + 16))(v474, v496, v476);
  *(&v526[0] + 1) = v366;
  v367 = v477;
  (*(v514 + 16))(v477, v497, v478);
  *&v526[1] = v367;
  v368 = v479;
  sub_2544AE240(v509, v479, &qword_27F5FC058, &qword_25454FCC0);
  *(&v526[1] + 1) = v368;
  v369 = v480;
  (*(v515 + 16))(v480, v498, v481);
  *&v526[2] = v369;
  v370 = v482;
  sub_2544AE240(v499, v482, &qword_27F5FC040, &qword_25454FCA8);
  *(&v526[2] + 1) = v370;
  v371 = v483;
  sub_254505BFC(v500, v483, type metadata accessor for WalletKeyUWBApproachAngleSection);
  *&v526[3] = v371;
  v372 = v495;
  (*(v517 + 16))(v495, v501, v510);
  *(&v526[3] + 1) = v372;
  v373 = v486;
  (*(v516 + 16))(v486, v502, v505);
  *&v526[4] = v373;
  v374 = v487;
  sub_2544AE240(v503, v487, &qword_27F5FC010, &qword_25454FC78);
  *(&v526[4] + 1) = v374;
  v375 = v488;
  sub_2544AE240(v504, v488, &qword_27F5FC008, &qword_25454FC70);
  *&v526[5] = v375;
  v376 = v484;
  v377 = v489;
  sub_2544AE240(v484, v489, &qword_27F5FBFF8, &qword_25454FC60);
  *(&v526[5] + 1) = v377;
  v378 = v485;
  v379 = v490;
  sub_2544AE240(v485, v490, &qword_27F5FBFF8, &qword_25454FC60);
  *&v526[6] = v379;
  v380 = v493;
  v381 = v491;
  sub_2544AE240(v493, v491, &qword_27F5FBFE8, &qword_25454FC50);
  *(&v526[6] + 1) = v381;
  v382 = v492;
  sub_2544AE240(v353, v492, &qword_27F5FBFC8, &qword_25454FC30);
  *&v526[7] = v382;
  v383 = v461;
  sub_2544AE240(v363, v461, &qword_27F5FBFB8, &qword_25454FC20);
  *(&v526[7] + 1) = v383;
  sub_2544E2D40(v526, v460);
  sub_2544AE150(v363, &qword_27F5FBFB8, &qword_25454FC20);
  sub_2544AE150(v353, &qword_27F5FBFC8, &qword_25454FC30);
  sub_2544AE150(v380, &qword_27F5FBFE8, &qword_25454FC50);
  sub_2544AE150(v378, &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE150(v376, &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE150(v504, &qword_27F5FC008, &qword_25454FC70);
  sub_2544AE150(v503, &qword_27F5FC010, &qword_25454FC78);
  v384 = *(v516 + 8);
  v516 += 8;
  v518 = v384;
  (v384)(v502, v505);
  v385 = *(v517 + 8);
  v517 += 8;
  v513 = v385;
  (v385)(v501, v510);
  sub_254505C64(v500, type metadata accessor for WalletKeyUWBApproachAngleSection);
  sub_2544AE150(v499, &qword_27F5FC040, &qword_25454FCA8);
  v386 = *(v515 + 8);
  v515 += 8;
  v512 = v386;
  v387 = v481;
  v386(v498, v481);
  sub_2544AE150(v509, &qword_27F5FC058, &qword_25454FCC0);
  v388 = *(v514 + 8);
  v514 += 8;
  v389 = v478;
  v388(v497, v478);
  v390 = *(v475 + 8);
  v391 = v476;
  v390(v496, v476);
  sub_2544AE150(v507, &qword_27F5FC090, &qword_25454FCF8);
  sub_2544AE150(v383, &qword_27F5FBFB8, &qword_25454FC20);
  sub_2544AE150(v492, &qword_27F5FBFC8, &qword_25454FC30);
  sub_2544AE150(v491, &qword_27F5FBFE8, &qword_25454FC50);
  sub_2544AE150(v490, &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE150(v489, &qword_27F5FBFF8, &qword_25454FC60);
  sub_2544AE150(v488, &qword_27F5FC008, &qword_25454FC70);
  sub_2544AE150(v487, &qword_27F5FC010, &qword_25454FC78);
  (v518)(v486, v505);
  (v513)(v495, v510);
  sub_254505C64(v483, type metadata accessor for WalletKeyUWBApproachAngleSection);
  sub_2544AE150(v482, &qword_27F5FC040, &qword_25454FCA8);
  v512(v480, v387);
  sub_2544AE150(v479, &qword_27F5FC058, &qword_25454FCC0);
  v388(v477, v389);
  v390(v474, v391);
  sub_2544AE150(v473, &qword_27F5FC090, &qword_25454FCF8);
}

void sub_2544E8134(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC168, &qword_25454FD68);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC098, &qword_25454FD00);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v8 = sub_25454AB14();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5C0, &qword_2545502A0);
  sub_2544E8408(a1, a2 & 1, &v8[*(v12 + 44)]);
  v13 = sub_25454AF44();
  sub_25454A394();
  v14 = &v8[*(v6 + 36)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBED0, &qword_25454FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25454D8E0;
  v20 = sub_25454AF24();
  *(inited + 32) = v20;
  v21 = sub_25454AF34();
  *(inited + 33) = v21;
  v22 = sub_25454AF54();
  sub_25454AF54();
  if (sub_25454AF54() != v20)
  {
    v22 = sub_25454AF54();
  }

  sub_25454AF54();
  if (sub_25454AF54() != v21)
  {
    v22 = sub_25454AF54();
  }

  sub_25454A394();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_2544B14E8(v8, v11, &qword_27F5FC168, &qword_25454FD68);
  v31 = &v11[*(v9 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_2544B14E8(v11, a3, &qword_27F5FC098, &qword_25454FD00);
}

void sub_2544E8408(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v116 = a3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC488, &qword_254550048);
  MEMORY[0x28223BE20](v104);
  v103 = &v78 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC490, &qword_254550050);
  MEMORY[0x28223BE20](v102);
  v101 = &v78 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5C8, &qword_2545502A8);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v78 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5D0, &qword_2545502B0);
  MEMORY[0x28223BE20](v107);
  v112 = &v78 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5D8, &qword_2545502B8);
  MEMORY[0x28223BE20](v110);
  v113 = &v78 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5E0, &unk_2545502C0);
  v10 = MEMORY[0x28223BE20](v111);
  v115 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v109 = &v78 - v13;
  MEMORY[0x28223BE20](v12);
  v114 = &v78 - v14;
  v97 = sub_254549744();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_25454A0A4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_254549AB4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for AccessoryDetailsView(0);
  v18 = *(v82 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v82);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC80, &unk_25454F6C8);
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v22 = &v78 - v21;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5E8, &qword_2545502D0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v78 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5F0, &qword_2545502D8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v100 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v98 = &v78 - v27;
  sub_25454BE14();
  v99 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v81 = type metadata accessor for AccessoryDetailsView;
  sub_254505BFC(a1, &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v28 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v29 = swift_allocObject();
  v79 = type metadata accessor for AccessoryDetailsView;
  v30 = sub_254507518(v20, v29 + v28, type metadata accessor for AccessoryDetailsView);
  *(v29 + v28 + v19) = a2 & 1;
  MEMORY[0x28223BE20](v30);
  type metadata accessor for SelectableIconView(0);
  v84 = a2;
  sub_254504430(&qword_27F5FBCA0, type metadata accessor for SelectableIconView, &protocol conformance descriptor for SelectableIconView);
  sub_25454B7F4();
  v31 = *(v82 + 44);
  v80 = a1;
  v32 = (a1 + v31);
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v121) = v33;
  v122 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7C4();
  sub_254505BFC(a1, v20, v81);
  v35 = swift_allocObject();
  sub_254507518(v20, v35 + v28, v79);
  v81 = type metadata accessor for AccessoryDetailsIconPickerView(0);
  v82 = sub_2544AE1F0(&qword_27F5FBC78, &qword_27F5FBC80, &unk_25454F6C8, MEMORY[0x277CDF028]);
  v36 = sub_254504430(&qword_27F5FC5F8, type metadata accessor for AccessoryDetailsIconPickerView, &unk_25454F5B0);
  v37 = v85;
  v38 = v86;
  sub_25454B524();

  (*(v83 + 8))(v22, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v39 = v87;
  sub_25454B7A4();
  v40 = v92;
  sub_254549AA4();
  (*(v90 + 8))(v39, v91);
  v41 = v95;
  sub_254549F44();
  (*(v93 + 8))(v40, v94);
  v42 = sub_254549714();
  v44 = v43;
  (*(v96 + 8))(v41, v97);
  v121 = v42;
  v122 = v44;
  v117 = v38;
  v118 = v81;
  v119 = v82;
  v120 = v36;
  swift_getOpaqueTypeConformance2();
  sub_2544AECF0();
  v45 = v98;
  v46 = v89;
  sub_25454B424();

  (*(v88 + 8))(v37, v46);
  sub_25454AB84();
  v47 = v101;
  sub_25454B7C4();
  swift_getKeyPath();
  v48 = v103;
  sub_25454B924();

  sub_2544AE150(v47, &qword_27F5FC490, &qword_254550050);
  swift_getKeyPath();
  sub_25454B924();

  sub_2544AE150(v48, &qword_27F5FC488, &qword_254550048);
  v49 = v105;
  sub_25454BAE4();
  sub_25454B054();
  sub_2544AE1F0(&qword_27F5FC600, &qword_27F5FC5C8, &qword_2545502A8, MEMORY[0x277CDF1A8]);
  v50 = v112;
  v51 = v108;
  sub_25454B2D4();
  (*(v106 + 8))(v49, v51);
  LOBYTE(v46) = v84;
  LOBYTE(v49) = ~v84;
  KeyPath = swift_getKeyPath();
  v53 = swift_allocObject();
  *(v53 + 16) = (v46 & 1) == 0;
  v54 = &v50[*(v107 + 36)];
  *v54 = KeyPath;
  v54[1] = sub_254508108;
  v54[2] = v53;
  if (v49)
  {
    v55 = sub_25454B644();
  }

  else
  {
    v55 = sub_25454B6A4();
  }

  v56 = v55;
  v57 = swift_getKeyPath();
  v58 = v50;
  v59 = v113;
  sub_2544B14E8(v58, v113, &qword_27F5FC5D0, &qword_2545502B0);
  v60 = (v59 + *(v110 + 36));
  *v60 = v57;
  v60[1] = v56;
  LOBYTE(v56) = sub_25454AF44();
  sub_25454A394();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v59;
  v70 = v109;
  sub_2544B14E8(v69, v109, &qword_27F5FC5D8, &qword_2545502B8);
  v71 = v70 + *(v111 + 36);
  *v71 = v56;
  *(v71 + 8) = v62;
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  *(v71 + 32) = v68;
  *(v71 + 40) = 0;
  v72 = v114;
  sub_2544B14E8(v70, v114, &qword_27F5FC5E0, &unk_2545502C0);
  v73 = v100;
  sub_2544AE240(v45, v100, &qword_27F5FC5F0, &qword_2545502D8);
  v74 = v115;
  sub_2544AE240(v72, v115, &qword_27F5FC5E0, &unk_2545502C0);
  v75 = v116;
  sub_2544AE240(v73, v116, &qword_27F5FC5F0, &qword_2545502D8);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC608, &qword_254550310);
  sub_2544AE240(v74, v75 + *(v76 + 48), &qword_27F5FC5E0, &unk_2545502C0);
  v77 = v75 + *(v76 + 64);
  *v77 = 0;
  *(v77 + 8) = 1;
  sub_2544AE150(v72, &qword_27F5FC5E0, &unk_2545502C0);
  sub_2544AE150(v45, &qword_27F5FC5F0, &qword_2545502D8);
  sub_2544AE150(v74, &qword_27F5FC5E0, &unk_2545502C0);
  sub_2544AE150(v73, &qword_27F5FC5F0, &qword_2545502D8);
}

double sub_2544E9324(uint64_t a1, int a2)
{
  v18 = a2;
  v3 = sub_25454A0A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254549AB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v8 + 8))(v10, v7);
  v11 = sub_25454A094();
  (*(v4 + 8))(v6, v3);
  v12 = *(v11 + 16);

  if (v12 && (v18 & 1) != 0)
  {
    v13 = (a1 + *(type metadata accessor for AccessoryDetailsView(0) + 44));
    v14 = *v13;
    v15 = *(v13 + 1);
    v20 = v14;
    v21 = v15;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7B4();
  }

  return result;
}

double sub_2544E9590@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v64) = a2;
  v66 = a1;
  v75 = a3;
  v74 = type metadata accessor for SelectableIconView(0);
  MEMORY[0x28223BE20](v74);
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC610, &qword_254550368);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = &v56 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC488, &qword_254550048);
  MEMORY[0x28223BE20](v73);
  v72 = &v56 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC490, &qword_254550050);
  MEMORY[0x28223BE20](v69);
  v68 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCA8, &unk_254550680);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v56 - v9;
  v78 = sub_25454A0A4();
  v81 = *(v78 - 8);
  v10 = MEMORY[0x28223BE20](v78);
  v71 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v56 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v61 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v18 = sub_254549AB4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v63 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v62 = &v56 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v60 = &v56 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - v26;
  sub_25454BE14();
  v70 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v57 = *(v19 + 8);
  v77 = v18;
  v57(v27, v18);
  v56 = v19 + 8;
  v28 = sub_25454A094();
  v29 = v81 + 8;
  v76 = *(v81 + 8);
  v30 = v78;
  v76(v17, v78);
  v81 = v29;
  v31 = *(v28 + 16);

  LOBYTE(v29) = (v31 != 0) & v64;
  v32 = sub_25454BE04();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  v34 = MEMORY[0x277D85700];
  *(v33 + 24) = MEMORY[0x277D85700];
  *(v33 + 32) = v29;
  v35 = sub_25454BE04();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;
  sub_25454B944();
  v64 = v82;
  v59 = v83;
  v58 = v84;
  v37 = v60;
  sub_25454B7A4();
  v38 = v61;
  sub_254549AA4();
  v39 = v57;
  v57(v37, v77);
  sub_25454A064();
  v40 = v76;
  v76(v38, v30);
  v41 = v68;
  sub_25454B7C4();
  swift_getKeyPath();
  v42 = v72;
  sub_25454B924();

  sub_2544AE150(v41, &qword_27F5FC490, &qword_254550050);
  swift_getKeyPath();
  sub_25454B924();

  sub_2544AE150(v42, &qword_27F5FC488, &qword_254550048);
  v43 = v62;
  sub_25454B7A4();
  v44 = v67;
  sub_254549AA4();
  v45 = v43;
  v46 = v77;
  v39(v45, v77);
  v73 = sub_254549FD4();
  v47 = v78;
  v40(v44, v78);
  v48 = v63;
  sub_25454B7A4();
  v49 = v71;
  sub_254549AA4();
  v39(v48, v46);
  LOBYTE(v35) = sub_254549F94();
  v76(v49, v47);
  v50 = v74;
  v51 = *(v74 + 24);
  v52 = sub_254549F04();
  v53 = v65;
  (*(*(v52 - 8) + 56))(&v65[v51], 1, 1, v52);
  *(v53 + v50[9]) = 0x4030000000000000;
  *(v53 + v50[10]) = 0x4048000000000000;
  v54 = v59;
  *v53 = v64;
  *(v53 + 8) = v54;
  *(v53 + 16) = v58;
  sub_2544B14E8(v80, v53 + v50[5], &qword_27F5FC610, &qword_254550368);
  sub_2544E2C78(v79, v53 + v51);
  *(v53 + v50[7]) = v73;
  *(v53 + v50[8]) = (v35 == 2) | v35 & 1;
  sub_254507518(v53, v75, type metadata accessor for SelectableIconView);

  return result;
}

void sub_2544E9DF8(char a1@<W2>, _BYTE *a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = a1 & 1;
}

double sub_2544E9E94()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

uint64_t sub_2544E9F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

double sub_2544E9FF4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for AccessoryDetailsView(0);
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = v4;
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_254549744();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v60 = &v50 - v9;
  MEMORY[0x28223BE20](v8);
  v65 = &v50 - v10;
  v11 = sub_25454A0A4();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  v19 = sub_254549AB4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v52 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v50 - v26;
  sub_25454BE14();
  v56 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v28 = *(v20 + 8);
  v50 = v20 + 8;
  v28(v27, v19);
  v51 = sub_25454A094();
  v29 = *(v54 + 8);
  v30 = v18;
  v31 = v55;
  v29(v30, v55);
  sub_25454B7A4();
  sub_254549AA4();
  v28(v25, v19);
  sub_254549F44();
  v29(v16, v31);
  v32 = v52;
  sub_25454B7A4();
  v33 = v53;
  sub_254549AA4();
  v28(v32, v19);
  v34 = sub_254549FD4();
  v29(v33, v31);
  v35 = a1;
  v36 = v59;
  sub_254505BFC(v35, v59, type metadata accessor for AccessoryDetailsView);
  v37 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v38 = swift_allocObject();
  sub_254507518(v36, v38 + v37, type metadata accessor for AccessoryDetailsView);
  v39 = *(type metadata accessor for AccessoryDetailsIconPickerView(0) + 32);
  KeyPath = swift_getKeyPath();
  v41 = v64;
  *(v64 + v39) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  swift_storeEnumTagMultiPayload();
  v42 = v51;
  v41[2] = v38;
  v41[3] = v34;
  *v41 = v42;
  v41[1] = sub_254507A3C;
  v44 = v62;
  v43 = v63;
  v45 = *(v62 + 16);
  v46 = v60;
  v47 = v65;
  v45(v60, v65, v63);
  v45(v61, v46, v43);
  sub_25454B794();
  v48 = *(v44 + 8);
  v48(v46, v43);
  v48(v47, v43);

  return result;
}

double sub_2544EA5DC(char *a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_254549AB4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC58, &qword_254550350);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_254549744();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_2544AE240(v28, v10, &qword_27F5FBC58, &qword_254550350);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2544AE150(v10, &qword_27F5FBC58, &qword_254550350);
    v18 = v29;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    v28 = v6;
    v19 = v29;
    sub_25454B7A4();
    v20 = sub_254549A94();
    sub_254549F54();
    v20(v32, 0);
    sub_25454B7B4();
    (*(v12 + 8))(v17, v11);
    v18 = v19;
    v6 = v28;
  }

  v21 = sub_25454BE44();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  v22 = v31;
  sub_254505BFC(v18, v31, type metadata accessor for AccessoryDetailsView);
  sub_25454BE14();
  v23 = sub_25454BE04();
  v24 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  sub_254507518(v22, v25 + v24, type metadata accessor for AccessoryDetailsView);
  sub_2544B5138(0, 0, v6, &unk_254550360, v25);

  return result;
}

uint64_t sub_2544EAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25454A0A4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_254549AB4();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_25454BE14();
  v4[9] = sub_25454BE04();
  v8 = sub_25454BDB4();
  v4[10] = v8;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_2544EAB90, v8, v7);
}

uint64_t sub_2544EAB90()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_2544EAC80;

  return MEMORY[0x282170B58]();
}

uint64_t sub_2544EAC80()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_254508034, v6, v5);
}

void sub_2544EAE04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC0E0, &qword_25454FD20);
  MEMORY[0x28223BE20](v73);
  v79 = &v72 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC0C8, &qword_25454FD18);
  MEMORY[0x28223BE20](v82);
  v80 = &v72 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC590, &qword_2545501E8);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = &v72 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC0C0, &qword_25454FD10);
  MEMORY[0x28223BE20](v76);
  v77 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC0B0, &qword_25454FD08);
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC088, &qword_25454FCF0);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v72 - v12;
  v86 = sub_25454A0A4();
  v13 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_254549AB4();
  v16 = *(v85 - 8);
  v17 = MEMORY[0x28223BE20](v85);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v72 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC068, &qword_25454FCD0);
  MEMORY[0x28223BE20](v22 - 8);
  v88 = &v72 - v23;
  sub_25454BE14();
  v87 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v24 = *(v16 + 8);
  v25 = v21;
  v26 = v85;
  v24(v25, v85);
  v72 = sub_25454A034();
  v28 = v27;
  (*(v13 + 8))(v15, v86);
  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = v28;
  sub_25454B7A4();
  v30 = v84;
  sub_254549994();
  v24(v19, v26);
  v31 = sub_254549DD4();
  v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
  sub_2544AE150(v30, &qword_27F5FC088, &qword_25454FCF0);
  if (v32 != 1)
  {

LABEL_7:
    v71 = v88;
    (*(v89 + 56))(v88, 1, 1, v90);
    goto LABEL_8;
  }

  v33 = sub_25454AC14();
  v102 = 1;
  sub_2544EB830(a1, v72, v29, &v93);
  v109 = v97;
  v110 = v98;
  v111 = v99;
  v112 = v100;
  v105 = v93;
  v106 = v94;
  v107 = v95;
  v108 = v96;
  v113[0] = v93;
  v113[1] = v94;
  v113[2] = v95;
  v113[3] = v96;
  v113[4] = v97;
  v113[5] = v98;
  v113[6] = v99;
  v114 = v100;
  sub_2544AE240(&v105, v92, &qword_27F5FC598, &qword_2545501F0);
  sub_2544AE150(v113, &qword_27F5FC598, &qword_2545501F0);

  *&v101[71] = v109;
  *&v101[87] = v110;
  *&v101[103] = v111;
  *&v101[7] = v105;
  *&v101[23] = v106;
  *&v101[39] = v107;
  v101[119] = v112;
  *&v101[55] = v108;
  v34 = v102;
  sub_25454BA54();
  sub_25454A784();
  *&v103[55] = v96;
  *&v103[71] = v97;
  *&v103[87] = v98;
  *&v103[103] = v99;
  *&v103[7] = v93;
  *&v103[23] = v94;
  *&v103[39] = v95;
  v35 = [objc_opt_self() labelColor];
  v36 = sub_25454B5F4();
  v37 = sub_25454AF34();
  sub_25454A394();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v104 = 0;
  v46 = v79;
  v47 = &v79[*(v73 + 36)];
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC130, &unk_25454FD50) + 28);
  v49 = sub_25454B214();
  (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
  *v47 = swift_getKeyPath();
  v50 = *&v101[80];
  *(v46 + 81) = *&v101[64];
  *(v46 + 97) = v50;
  *(v46 + 113) = *&v101[96];
  v51 = *&v101[16];
  *(v46 + 17) = *v101;
  *(v46 + 33) = v51;
  v52 = *&v101[48];
  *(v46 + 49) = *&v101[32];
  *(v46 + 65) = v52;
  v53 = *&v103[80];
  *(v46 + 201) = *&v103[64];
  *(v46 + 217) = v53;
  *(v46 + 233) = *&v103[96];
  v54 = *&v103[16];
  *(v46 + 137) = *v103;
  *(v46 + 153) = v54;
  v55 = *&v103[48];
  *(v46 + 169) = *&v103[32];
  *v46 = v33;
  *(v46 + 8) = 0;
  *(v46 + 16) = v34;
  *(v46 + 129) = *&v101[112];
  v56 = *&v103[111];
  *(v46 + 185) = v55;
  *(v46 + 248) = v56;
  *(v46 + 256) = v36;
  *(v46 + 264) = v37;
  *(v46 + 268) = *(v92 + 3);
  *(v46 + 265) = v92[0];
  *(v46 + 272) = v39;
  *(v46 + 280) = v41;
  *(v46 + 288) = v43;
  *(v46 + 296) = v45;
  *(v46 + 304) = 0;
  v57 = sub_25454AF94();
  KeyPath = swift_getKeyPath();
  v59 = v80;
  sub_2544B14E8(v46, v80, &qword_27F5FC0E0, &qword_25454FD20);
  v60 = (v59 + *(v82 + 36));
  *v60 = KeyPath;
  v60[1] = v57;
  sub_25454B084();
  sub_254505220();
  v61 = v78;
  sub_25454B2D4();
  sub_2544AE150(v59, &qword_27F5FC0C8, &qword_25454FD18);
  v62 = swift_getKeyPath();
  v63 = v77;
  (*(v81 + 32))(v77, v61, v83);
  v64 = (v63 + *(v76 + 36));
  *v64 = v62;
  v64[1] = 0xC020000000000000;
  v65 = swift_getKeyPath();
  v66 = v75;
  sub_2544B14E8(v63, v75, &qword_27F5FC0C0, &qword_25454FD10);
  v67 = v90;
  v68 = v66 + *(v90 + 36);
  *v68 = v65;
  *(v68 + 8) = 1;
  v69 = v74;
  sub_2544B14E8(v66, v74, &qword_27F5FC0B0, &qword_25454FD08);
  v70 = v69;
  v71 = v88;
  sub_2544B14E8(v70, v88, &qword_27F5FC0B0, &qword_25454FD08);
  (*(v89 + 56))(v71, 0, 1, v67);
LABEL_8:
  sub_2544B14E8(v71, v91, &qword_27F5FC068, &qword_25454FCD0);
}

double sub_2544EB830@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v64 = a2;
  *(&v64 + 1) = a3;
  v67 = sub_25454A0A4();
  v6 = *(v67 - 8);
  v7 = MEMORY[0x28223BE20](v67);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - v9;
  v66 = sub_254549AB4();
  v11 = *(v66 - 8);
  v12 = MEMORY[0x28223BE20](v66);
  v60 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  sub_25454BE14();
  v65 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v62 = a1;
  sub_25454B7A4();
  sub_254549AA4();
  v16 = *(v11 + 8);
  v16(v15, v66);
  v17 = sub_25454A014();
  v19 = v18;
  v20 = *(v6 + 8);
  v63 = v6 + 8;
  v20(v10, v67);
  if (v19)
  {
    v59 = a4;
    *&v102 = v17;
    *(&v102 + 1) = v19;
    v57 = sub_2544AECF0();
    v21 = sub_25454B274();
    v58 = v22;
    v24 = v23;
    v26 = v25;
    v27 = sub_25454AF34();
    v28 = sub_25454AF54();
    sub_25454AF54();
    if (sub_25454AF54() != v27)
    {
      v28 = sub_25454AF54();
    }

    sub_25454A394();
    v93 = v24 & 1;
    v92 = 0;
    *&v88 = v21;
    *(&v88 + 1) = v58;
    LOBYTE(v89) = v24 & 1;
    *(&v89 + 1) = v26;
    LOBYTE(v90) = v28;
    *(&v90 + 1) = v29;
    *&v91[0] = v30;
    *(&v91[0] + 1) = v31;
    *&v91[1] = v32;
    BYTE8(v91[1]) = 0;
    v33 = v60;
    sub_25454B7A4();
    v34 = v61;
    sub_254549AA4();
    v16(v33, v66);
    v35 = sub_254549FB4();
    v37 = v36;
    v20(v34, v67);
    v38 = v64;
    if (v37)
    {
      if (__PAIR128__(v37, v35) == v64)
      {

LABEL_11:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
LABEL_13:
        v70 = v90;
        v71[0] = v91[0];
        *(v71 + 9) = *(v91 + 9);
        v72[2] = v90;
        v73[0] = v91[0];
        *(v73 + 9) = *(v91 + 9);
        v68 = v88;
        v69 = v89;
        v72[0] = v88;
        v72[1] = v89;
        *(v75 + 9) = *(v91 + 9);
        v74[2] = v90;
        v75[0] = v91[0];
        v74[0] = v88;
        v74[1] = v89;
        *&v76 = v44;
        *(&v76 + 1) = v45;
        *&v77 = v46;
        *(&v77 + 1) = v47;
        v81 = v88;
        v82 = v89;
        v86 = v76;
        v87 = v77;
        v84 = v91[0];
        v85 = v75[1];
        v83 = v90;
        sub_2544AE240(&v88, &v102, &qword_27F5FBF58, &qword_25454FB98);
        sub_2544AE240(v72, &v102, &qword_27F5FBF58, &qword_25454FB98);
        sub_2544C9BDC(v44, v45, v46, v47);
        sub_2544C9C20(v44, v45, v46, v47, v51);
        v78[2] = v70;
        v79[0] = v71[0];
        *(v79 + 9) = *(v71 + 9);
        v78[0] = v68;
        v78[1] = v69;
        sub_2544AE150(v78, &qword_27F5FBF58, &qword_25454FB98);
        v80 = 0;
        v106 = v85;
        v107 = v86;
        v108 = v87;
        v102 = v81;
        v103 = v82;
        v104 = v83;
        v105 = v84;
        v109 = 0;
        sub_2544AE240(v74, &v94, &qword_27F5FC5B8, &qword_254550298);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5A8, &qword_254550290);
        sub_2544AE1F0(&qword_27F5FC5B0, &qword_27F5FC5A8, &qword_254550290, MEMORY[0x277CE14C0]);
        sub_25454AD44();
        sub_2544C9C20(v44, v45, v46, v47, v52);
        sub_2544AE150(v74, &qword_27F5FC5B8, &qword_254550298);
        sub_2544AE150(&v88, &qword_27F5FBF58, &qword_25454FB98);

        v106 = v98;
        v107 = v99;
        v108 = v100;
        v109 = v101;
        v102 = v94;
        v103 = v95;
        v104 = v96;
        v105 = v97;
        a4 = v59;
        goto LABEL_14;
      }

      v43 = sub_25454C334();

      if (v43)
      {
        goto LABEL_11;
      }
    }

    v102 = v38;

    v44 = sub_25454B274();
    v45 = v48;
    v47 = v49;
    v46 = v50 & 1;
    sub_2544A8F00(v44, v48, v50 & 1);

    goto LABEL_13;
  }

  v102 = v64;
  sub_2544AECF0();

  v39 = sub_25454B274();
  LOBYTE(v81) = v40 & 1;
  LOBYTE(v74[0]) = 1;
  *&v102 = v39;
  *(&v102 + 1) = v41;
  LOBYTE(v103) = v40 & 1;
  *(&v103 + 1) = v42;
  v109 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC5A8, &qword_254550290);
  sub_2544AE1F0(&qword_27F5FC5B0, &qword_27F5FC5A8, &qword_254550290, MEMORY[0x277CE14C0]);
  sub_25454AD44();

  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v102 = v94;
  v103 = v95;
  v104 = v96;
  v105 = v97;
LABEL_14:
  v53 = v107;
  *(a4 + 64) = v106;
  *(a4 + 80) = v53;
  *(a4 + 96) = v108;
  *(a4 + 112) = v109;
  v54 = v103;
  *a4 = v102;
  *(a4 + 16) = v54;
  result = *&v104;
  v56 = v105;
  *(a4 + 32) = v104;
  *(a4 + 48) = v56;
  return result;
}

void *sub_2544EBF78(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v35 = v2;
  v3 = sub_25454A0A4();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v29 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-v6];
  v8 = sub_254549AB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v27[-v13];
  sub_25454BE14();
  v34 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v31 = *(v9 + 8);
  v31(v14, v8);
  v15 = sub_254549FA4();
  v17 = v16;
  v30 = v1;
  v18 = *(v32 + 8);
  v19 = v7;
  v20 = v33;
  v18(v19, v33);
  if (v17)
  {

    sub_254507580(v47);
  }

  else
  {
    v32 = sub_25454AB14();
    v44[0] = 1;
    sub_2544EC5C8(v15, v47);
    memcpy(v45, v47, sizeof(v45));
    memcpy(v46, v47, sizeof(v46));
    sub_2544AE240(v45, v41, &qword_27F5FC568, &qword_2545501B8);
    sub_2544AE150(v46, &qword_27F5FC568, &qword_2545501B8);
    memcpy(&v43[7], v45, 0x130uLL);
    v28 = v44[0];
    sub_25454B7A4();
    v21 = v29;
    sub_254549AA4();
    v31(v12, v8);
    v22 = sub_254549FC4();
    v18(v21, v20);
    if (v22 == 2)
    {
      sub_254507588(v44);
    }

    else
    {
      sub_25454B7A4();
      sub_254549AA4();
      v31(v12, v8);
      sub_254549FC4();
      v18(v21, v20);
      sub_25454BCF4();
      v23 = sub_25454AB14();
      v39[0] = 1;
      sub_2544ECBA4(v47);
      memcpy(v40, v47, 0x130uLL);
      memcpy(v41, v47, 0x130uLL);
      sub_2544AE240(v40, v44, &qword_27F5FC568, &qword_2545501B8);
      sub_2544AE150(v41, &qword_27F5FC568, &qword_2545501B8);

      memcpy(&v42[7], v40, 0x130uLL);
      v47[0] = v23;
      v47[1] = 0;
      LOBYTE(v47[2]) = v39[0];
      memcpy(&v47[2] + 1, v42, 0x137uLL);
      nullsub_1();
      memcpy(v44, v47, sizeof(v44));
    }

    memcpy(v39, v44, sizeof(v39));
    v24 = v32;
    v37[0] = v32;
    v37[1] = 0;
    v25 = v28;
    LOBYTE(v37[2]) = v28;
    memcpy(&v37[2] + 1, v43, 0x137uLL);
    memcpy(v36, v37, 0x148uLL);
    memcpy(v38, v44, sizeof(v38));
    memcpy(&v36[328], v44, 0x148uLL);
    sub_2544AE240(v37, v47, &qword_27F5FC570, &qword_2545501C0);
    sub_2544AE240(v38, v47, &qword_27F5FC578, &qword_2545501C8);
    sub_2544AE150(v39, &qword_27F5FC578, &qword_2545501C8);
    v40[0] = v24;
    v40[1] = 0;
    LOBYTE(v40[2]) = v25;
    memcpy(&v40[2] + 1, v43, 0x137uLL);
    sub_2544AE150(v40, &qword_27F5FC570, &qword_2545501C0);

    memcpy(v41, v36, sizeof(v41));
    nullsub_1();
    memcpy(v47, v41, 0x290uLL);
  }

  return memcpy(v35, v47, 0x290uLL);
}

double sub_2544EC5C8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v3 = sub_2545493C4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB7C0, &qword_2545501E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = sub_25454AB74();
  MEMORY[0x28223BE20](v8 - 8);
  sub_25454BE14();
  v29 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v69 = sub_25454BCF4();
  v70 = v9;
  sub_2544AECF0();
  *&v30 = sub_25454B274();
  *(&v30 + 1) = v10;
  v12 = v11;
  v27 = v13;
  sub_25454BA64();
  sub_25454A784();
  v14 = v12 & 1;
  v93 = v12 & 1;
  sub_25454AB64();
  sub_25454AB54();
  *&v59 = a1;
  sub_2545493A4();
  sub_2544CDD1C();
  sub_254549114();
  sub_2544AE1F0(&qword_27F5FB7D0, &qword_27F5FB7C0, &qword_2545501E0, MEMORY[0x277CC8CC8]);
  sub_25454C094();
  (*(v5 + 8))(v7, v4);
  sub_25454AB44();

  sub_25454AB54();
  sub_25454AB94();
  v15 = sub_25454B264();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_25454BA74();
  sub_25454A784();
  v19 &= 1u;
  v84 = v19;
  v22 = sub_25454B644();
  KeyPath = swift_getKeyPath();
  v50 = v30;
  LOBYTE(v51) = v14;
  *(&v51 + 1) = *v92;
  DWORD1(v51) = *&v92[3];
  v24 = v27;
  *(&v51 + 1) = v27;
  v56 = v89;
  v57 = v90;
  v58 = v91;
  v52 = v85;
  v53 = v86;
  v54 = v87;
  v55 = v88;
  v42[6] = v89;
  v42[7] = v90;
  v42[2] = v85;
  v42[3] = v86;
  v42[4] = v87;
  v42[5] = v88;
  v42[0] = v30;
  v42[1] = v51;
  *&v59 = v15;
  *(&v59 + 1) = v17;
  LOBYTE(v60) = v19;
  *(&v60 + 1) = *v83;
  DWORD1(v60) = *&v83[3];
  *(&v60 + 1) = v21;
  v65 = v47;
  v66 = v48;
  v67 = v49;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  v64 = v46;
  *&v68 = KeyPath;
  *(&v68 + 1) = v22;
  v42[8] = v91;
  v42[9] = v59;
  v42[16] = v48;
  v42[17] = v49;
  v42[10] = v60;
  v42[11] = v43;
  v42[12] = v44;
  v42[13] = v45;
  v42[14] = v46;
  v42[15] = v47;
  v42[18] = v68;
  memcpy(v28, v42, 0x130uLL);
  v69 = v15;
  v70 = v17;
  v71 = v19;
  *v72 = *v83;
  *&v72[3] = *&v83[3];
  v73 = v21;
  v79 = v48;
  v80 = v49;
  v74 = v43;
  v75 = v44;
  v77 = v46;
  v78 = v47;
  v76 = v45;
  v81 = KeyPath;
  v82 = v22;
  sub_2544AE240(&v50, &v31, &qword_27F5FC580, &qword_2545501D0);
  sub_2544AE240(&v59, &v31, &qword_27F5FC588, &qword_2545501D8);
  sub_2544AE150(&v69, &qword_27F5FC588, &qword_2545501D8);
  v31 = v30;
  v32 = v14;
  *v33 = *v92;
  *&v33[3] = *&v92[3];
  v34 = v24;
  v39 = v89;
  v40 = v90;
  v41 = v91;
  v35 = v85;
  v36 = v86;
  v37 = v87;
  v38 = v88;
  sub_2544AE150(&v31, &qword_27F5FC580, &qword_2545501D0);

  return result;
}

double sub_2544ECBA4@<D0>(void *a3@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v3 = sub_25454B274();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_25454BA64();
  sub_25454A784();
  v10 = v7 & 1;
  v80 = v7 & 1;

  v11 = sub_25454B274();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_25454BA74();
  sub_25454A784();
  v18 = v15 & 1;
  v79 = v15 & 1;
  v19 = sub_25454B644();
  KeyPath = swift_getKeyPath();
  *&v48 = v3;
  *(&v48 + 1) = v5;
  LOBYTE(v49) = v10;
  *(&v49 + 1) = v9;
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v50 = v41;
  v51 = v42;
  v53 = v44;
  v52 = v43;
  __src[0] = v48;
  __src[1] = v49;
  __src[2] = v41;
  __src[3] = v42;
  __src[6] = v45;
  __src[7] = v46;
  __src[4] = v43;
  __src[5] = v44;
  *&v57 = v11;
  *(&v57 + 1) = v13;
  LOBYTE(v58) = v18;
  *(&v58 + 1) = v17;
  v63 = v38;
  v64 = v39;
  v65 = v40;
  v59 = v34;
  v60 = v35;
  v62 = v37;
  v61 = v36;
  *&v66 = KeyPath;
  *(&v66 + 1) = v19;
  __src[18] = v66;
  __src[8] = v47;
  __src[9] = v57;
  __src[12] = v35;
  __src[13] = v36;
  __src[10] = v58;
  __src[11] = v34;
  __src[16] = v39;
  __src[17] = v40;
  __src[14] = v37;
  __src[15] = v38;
  memcpy(a3, __src, 0x130uLL);
  v67[0] = v11;
  v67[1] = v13;
  v68 = v18;
  v69 = v17;
  v74 = v38;
  v75 = v39;
  v76 = v40;
  v70 = v34;
  v71 = v35;
  v73 = v37;
  v72 = v36;
  v77 = KeyPath;
  v78 = v19;
  sub_2544AE240(&v48, v23, &qword_27F5FC580, &qword_2545501D0);
  sub_2544AE240(&v57, v23, &qword_27F5FC588, &qword_2545501D8);
  sub_2544AE150(v67, &qword_27F5FC588, &qword_2545501D8);
  v23[0] = v3;
  v23[1] = v5;
  v24 = v10;
  v25 = v9;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  sub_2544AE150(v23, &qword_27F5FC580, &qword_2545501D0);

  return result;
}

double sub_2544ED094(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9[0] = sub_25454BCF4();
  v9[1] = v5;
  sub_254505BFC(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_254507518(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AccessoryDetailsView);
  sub_2544AECF0();
  sub_25454B814();

  return result;
}

uint64_t sub_2544ED260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_254549AB4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_25454A2E4();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_25454BE14();
  v4[9] = sub_25454BE04();
  v8 = sub_25454BDB4();
  v4[10] = v8;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_2544ED3B0, v8, v7);
}

uint64_t sub_2544ED3B0()
{
  v12 = v0;
  sub_25454A2A4();
  v1 = sub_25454A2C4();
  v2 = sub_25454BF94();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_254502AAC(0xD000000000000022, 0x80000002545555B0, &v11);
    _os_log_impl(&dword_2544A5000, v1, v2, "%s - User tapped Identify button.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x259C0FDF0](v8, -1, -1);
    MEMORY[0x259C0FDF0](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2544ED570;

  return MEMORY[0x28216FC30]();
}

uint64_t sub_2544ED570()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_2544ED6F4, v6, v5);
}

uint64_t sub_2544ED6F4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_2544ED768@<D0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v233 = a2;
  v224 = a3;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC460, &qword_254550020);
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v205 = v167 - v4;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC468, &qword_254550028);
  v5 = MEMORY[0x28223BE20](v200);
  v204 = v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v203 = v167 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v202 = v167 - v10;
  MEMORY[0x28223BE20](v9);
  v201 = v167 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC470, &qword_254550030);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v223 = v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v226 = v167 - v15;
  v172 = sub_25454AAC4();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v170 = v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC200, &qword_25454FDC0);
  MEMORY[0x28223BE20](v197);
  v169 = v167 - v17;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC360, &qword_25454FEE8);
  v174 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v173 = v167 - v18;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC368, &qword_25454FEF0);
  MEMORY[0x28223BE20](v192);
  v194 = v167 - v19;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  MEMORY[0x28223BE20](v193);
  v175 = v167 - v20;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
  v213 = *(v214 - 8);
  v21 = MEMORY[0x28223BE20](v214);
  v195 = v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v196 = v167 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1C0, &qword_25454FD98);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v220 = v167 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v232 = v167 - v27;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC478, &qword_254550038);
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v208 = v167 - v28;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC28, &unk_25454F660);
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = v167 - v29;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC480, &qword_254550040);
  v189 = *(v190 - 8);
  v30 = MEMORY[0x28223BE20](v190);
  v188 = v167 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v207 = v167 - v32;
  v182 = sub_25454A774();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v180 = v167 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC488, &qword_254550048);
  MEMORY[0x28223BE20](v216);
  v215 = v167 - v34;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC490, &qword_254550050);
  MEMORY[0x28223BE20](v212);
  v211 = v167 - v35;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC498, &qword_254550058);
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v177 = v167 - v36;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4A0, &qword_254550060);
  v183 = *(v184 - 8);
  v37 = MEMORY[0x28223BE20](v184);
  v206 = v167 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v225 = v167 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4A8, &qword_254550068);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v229 = v167 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v231 = v167 - v43;
  v227 = type metadata accessor for AccessoryDetailsView(0);
  v44 = *(v227 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v227);
  v46 = v167 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4B0, &qword_254550070);
  v218 = *(v219 - 8);
  v47 = MEMORY[0x28223BE20](v219);
  v228 = v167 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v230 = v167 - v49;
  sub_25454BE14();
  v217 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v50 = v233;
  sub_254505BFC(v233, v167 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v51 = *(v44 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = a1 & 1;
  v53 = sub_254507518(v167 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + ((v51 + 17) & ~v51), type metadata accessor for AccessoryDetailsView);
  v176 = v45;
  MEMORY[0x28223BE20](v53);
  v191 = a1 & 1;
  LOBYTE(v165) = a1 & 1;
  v166 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4B8, &qword_254550078);
  sub_2544AE1F0(&qword_27F5FC4C0, &qword_27F5FC4B8, &qword_254550078, MEMORY[0x277CE1138]);
  sub_25454B7F4();
  v54 = v50 + *(v227 + 36);
  v55 = *v54;
  v56 = *(v54 + 8);
  LOBYTE(v239) = v55;
  *(&v239 + 1) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v199 = a1;
  if (v235 == 1)
  {
    v168 = ~v51;
    v167[3] = sub_25454AB84();
    v167[2] = v57;
    v167[1] = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    v59 = v211;
    v60 = v233;
    sub_25454B7C4();
    swift_getKeyPath();
    v61 = v215;
    sub_25454B924();

    sub_2544AE150(v59, &qword_27F5FC490, &qword_254550050);
    swift_getKeyPath();
    sub_25454B924();

    v62 = sub_2544AE150(v61, &qword_27F5FC488, &qword_254550048);
    v235 = v239;
    v236 = v240;
    v237 = v241;
    MEMORY[0x28223BE20](v62);
    v63 = v60;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4D8, &qword_254550150);
    v165 = sub_2544AE1F0(&qword_27F5FC4E0, &qword_27F5FC4D8, &qword_254550150, MEMORY[0x277CE14C0]);
    v163 = v64;
    v164 = MEMORY[0x277D837E0];
    v65 = v177;
    sub_25454B894();
    v66 = v180;
    sub_25454A764();
    sub_2544AE1F0(&qword_27F5FC4E8, &qword_27F5FC498, &qword_254550058, MEMORY[0x277CDF038]);
    v67 = v179;
    v68 = v182;
    sub_25454B324();
    (*(v181 + 8))(v66, v68);
    (*(v178 + 8))(v65, v67);
    sub_254505BFC(v63, v46, type metadata accessor for AccessoryDetailsView);
    v69 = (v51 + 16) & v168;
    v70 = swift_allocObject();
    sub_254507518(v46, v70 + v69, type metadata accessor for AccessoryDetailsView);
    v71 = v185;
    sub_25454B7F4();
    v72 = v63 + *(v227 + 40);
    v73 = *v72;
    v74 = *(v72 + 8);
    LOBYTE(v235) = v73;
    *(&v235 + 1) = v74;
    sub_25454B7C4();
    LODWORD(v182) = v240;
    sub_254505BFC(v63, v46, type metadata accessor for AccessoryDetailsView);
    v75 = swift_allocObject();
    sub_254507518(v46, v75 + v69, type metadata accessor for AccessoryDetailsView);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4F0, &qword_254550158);
    v164 = sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660, MEMORY[0x277CDF028]);
    v165 = sub_2544AE1F0(&qword_27F5FC4F8, &qword_27F5FC4F0, &qword_254550158, MEMORY[0x277CDDA18]);
    v163 = v76;
    v77 = v207;
    v78 = v187;
    sub_25454B524();

    (*(v186 + 8))(v71, v78);
    v79 = v183;
    v80 = *(v183 + 16);
    v81 = v206;
    v82 = v184;
    v80(v206, v225, v184);
    v83 = v189;
    v84 = *(v189 + 16);
    v85 = v188;
    v86 = v77;
    v87 = v190;
    v84(v188, v86, v190);
    v80(v208, v81, v82);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC500, &qword_254550160);
    v89 = v208;
    v84(&v208[*(v88 + 48)], v85, v87);
    v90 = *(v83 + 8);
    v90(v207, v87);
    v91 = *(v79 + 8);
    v91(v225, v82);
    v90(v85, v87);
    v91(v206, v82);
    v93 = v231;
    sub_2544B14E8(v89, v231, &qword_27F5FC478, &qword_254550038);
    v92 = 0;
  }

  else
  {
    v92 = 1;
    v93 = v231;
  }

  v94 = 1;
  (*(v209 + 56))(v93, v92, 1, v210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v95 = v241;
  v96 = v242;
  __swift_project_boxed_opaque_existential_1(&v239, v241);
  LOBYTE(v95) = (*(v96 + 184))(v95, v96);
  __swift_destroy_boxed_opaque_existential_0(&v239);
  if (v95)
  {
    v97 = sub_25454BCF4();
    v99 = v98;
    sub_25454B7A4();
    v100 = v241;
    v101 = v242;
    __swift_project_boxed_opaque_existential_1(&v239, v241);
    v102 = (*(v101 + 200))(v100, v101);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_25454B7A4();
    v104 = v237;
    v105 = v238;
    __swift_project_boxed_opaque_existential_1(&v235, v237);
    v234 = (*(v105 + 192))(v104, v105);
    v106 = sub_25454C304();
    v108 = v107;
    __swift_destroy_boxed_opaque_existential_0(&v235);
    v109 = sub_25454B604();
    v110 = v109;
    if (Strong)
    {
      v111 = swift_allocObject();
      *(v111 + 16) = Strong;
      *(v111 + 24) = v102;
      MEMORY[0x28223BE20](v111);
      v225 = v102;
      v167[-6] = v97;
      v167[-5] = v99;
      LOBYTE(v163) = 0;
      v164 = v106;
      v165 = v108;
      v166 = v110;
      v112 = Strong;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
      v227 = v110;
      sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0, MEMORY[0x277CE1138]);
      v113 = v175;
      sub_25454B7F4();

      KeyPath = swift_getKeyPath();
      v115 = swift_allocObject();
      *(v115 + 16) = 0;
      v116 = (v113 + *(v193 + 36));
      *v116 = KeyPath;
      v116[1] = sub_254508108;
      v116[2] = v115;
      sub_2544AE240(v113, v194, &qword_27F5FC1E8, &qword_25454FDA8);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v117 = sub_254505A48();
      *&v235 = v197;
      *(&v235 + 1) = v117;
      swift_getOpaqueTypeConformance2();
      v118 = v195;
      sub_25454AD44();

      sub_2544AE150(v113, &qword_27F5FC1E8, &qword_25454FDA8);
    }

    else
    {
      *&v235 = v102;
      MEMORY[0x28223BE20](v109);
      v167[-6] = v106;
      v167[-5] = v108;
      v163 = v97;
      v164 = v99;
      LOBYTE(v165) = 0;
      v166 = v110;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
      sub_254506100();
      v119 = v169;
      sub_25454A674();

      v120 = swift_getKeyPath();
      v121 = swift_allocObject();
      *(v121 + 16) = 0;
      v122 = v197;
      v123 = (v119 + *(v197 + 36));
      *v123 = v120;
      v123[1] = sub_254508108;
      v123[2] = v121;
      v124 = v171;
      v125 = v170;
      v126 = v172;
      (*(v171 + 104))(v170, *MEMORY[0x277CDDDC0], v172);
      v127 = sub_254505A48();
      v128 = v173;
      sub_25454B4E4();
      (*(v124 + 8))(v125, v126);
      sub_2544AE150(v119, &qword_27F5FC200, &qword_25454FDC0);
      v129 = v174;
      v130 = v198;
      (*(v174 + 16))(v194, v128, v198);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      *&v235 = v122;
      *(&v235 + 1) = v127;
      swift_getOpaqueTypeConformance2();
      v118 = v195;
      sub_25454AD44();

      (*(v129 + 8))(v128, v130);
    }

    v131 = v118;
    v132 = v196;
    sub_2544B14E8(v131, v196, &qword_27F5FC1D8, &qword_25454FDA0);
    __swift_destroy_boxed_opaque_existential_0(&v239);
    sub_2544B14E8(v132, v232, &qword_27F5FC1D8, &qword_25454FDA0);
    v94 = 0;
  }

  v133 = 1;
  (*(v213 + 56))(v232, v94, 1, v214);
  if ((sub_2544F1A00() & 1) == 0)
  {
    v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    v134 = v211;
    sub_25454B7C4();
    swift_getKeyPath();
    v135 = v215;
    sub_25454B924();

    sub_2544AE150(v134, &qword_27F5FC490, &qword_254550050);
    swift_getKeyPath();
    sub_25454B924();

    sub_2544AE150(v135, &qword_27F5FC488, &qword_254550048);
    MEMORY[0x28223BE20](v239);
    v136 = v191;
    LOBYTE(v165) = v191;
    v137 = v201;
    sub_25454B8B4();
    v138 = swift_getKeyPath();
    v139 = swift_allocObject();
    v140 = (v199 & 1) == 0;
    *(v139 + 16) = v140;
    v141 = v200;
    v142 = (v137 + *(v200 + 36));
    *v142 = v138;
    v142[1] = sub_254508108;
    v142[2] = v139;
    sub_25454B7C4();
    swift_getKeyPath();
    sub_25454B924();

    sub_2544AE150(v134, &qword_27F5FC490, &qword_254550050);
    swift_getKeyPath();
    sub_25454B924();

    sub_2544AE150(v135, &qword_27F5FC488, &qword_254550048);
    MEMORY[0x28223BE20](v239);
    LOBYTE(v165) = v136;
    v143 = v202;
    sub_25454B8B4();
    v144 = swift_getKeyPath();
    v145 = swift_allocObject();
    *(v145 + 16) = v140;
    v146 = (v143 + *(v141 + 36));
    *v146 = v144;
    v146[1] = sub_254508108;
    v146[2] = v145;
    v147 = v203;
    sub_2544AE240(v137, v203, &qword_27F5FC468, &qword_254550028);
    v148 = v204;
    sub_2544AE240(v143, v204, &qword_27F5FC468, &qword_254550028);
    v149 = v205;
    sub_2544AE240(v147, v205, &qword_27F5FC468, &qword_254550028);
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4C8, &qword_254550110);
    sub_2544AE240(v148, v149 + *(v150 + 48), &qword_27F5FC468, &qword_254550028);
    sub_2544AE150(v143, &qword_27F5FC468, &qword_254550028);
    sub_2544AE150(v137, &qword_27F5FC468, &qword_254550028);
    sub_2544AE150(v148, &qword_27F5FC468, &qword_254550028);
    sub_2544AE150(v147, &qword_27F5FC468, &qword_254550028);
    sub_2544B14E8(v149, v226, &qword_27F5FC460, &qword_254550020);
    v133 = 0;
  }

  v151 = v226;
  (*(v221 + 56))(v226, v133, 1, v222);
  v152 = v218;
  v153 = *(v218 + 16);
  v154 = v228;
  v155 = v219;
  v153(v228, v230, v219);
  v156 = v229;
  sub_2544AE240(v231, v229, &qword_27F5FC4A8, &qword_254550068);
  v157 = v220;
  sub_2544AE240(v232, v220, &qword_27F5FC1C0, &qword_25454FD98);
  v158 = v223;
  sub_2544AE240(v151, v223, &qword_27F5FC470, &qword_254550030);
  v159 = v224;
  v153(v224, v154, v155);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC4D0, &qword_254550118);
  sub_2544AE240(v156, &v159[v160[12]], &qword_27F5FC4A8, &qword_254550068);
  sub_2544AE240(v157, &v159[v160[16]], &qword_27F5FC1C0, &qword_25454FD98);
  sub_2544AE240(v158, &v159[v160[20]], &qword_27F5FC470, &qword_254550030);
  sub_2544AE150(v151, &qword_27F5FC470, &qword_254550030);
  sub_2544AE150(v232, &qword_27F5FC1C0, &qword_25454FD98);
  sub_2544AE150(v231, &qword_27F5FC4A8, &qword_254550068);
  v161 = *(v152 + 8);
  v161(v230, v155);
  sub_2544AE150(v158, &qword_27F5FC470, &qword_254550030);
  sub_2544AE150(v157, &qword_27F5FC1C0, &qword_25454FD98);
  sub_2544AE150(v229, &qword_27F5FC4A8, &qword_254550068);
  v161(v228, v155);

  return result;
}

double sub_2544EF7DC(char a1, uint64_t a2)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    MEMORY[0x28223BE20](isCurrentExecutor);
    sub_25454BA94();
    sub_25454A624();
  }

  else
  {
  }

  return result;
}

double sub_2544EF910(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544EFA78();
  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC540, &qword_2545501A0);
  sub_25454B7B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  sub_25454B7B4();

  return result;
}

void *sub_2544EFA78()
{
  v1 = v0;
  v58 = type metadata accessor for AccessoryDetailsView.RoomSuggestion(0);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_254549074();
  v65 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25454A0A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254549AB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v12 = v74;
  v13 = v75;
  __swift_project_boxed_opaque_existential_1(&v72, v74);
  v14 = (*(v13 + 24))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0(&v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v9 + 8))(v11, v8);
  v15 = sub_254549F34();
  (*(v5 + 8))(v7, v4);
  v67 = v1;
  v16 = 0;
  sub_2544E324C(sub_2545074A0, v66, v15);
  v62 = v17;

  v61 = *(v14 + 16);
  if (v61)
  {
    v19 = 0;
    v20 = *MEMORY[0x277CBE768];
    v59 = *MEMORY[0x277CBE758];
    v60 = v20;
    v53[1] = "HFAccessoryDetailsMultipleRooms";
    v53[0] = v65 + 1;
    v21 = (v14 + 40);
    v65 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D837D0];
    v23 = v56;
    while (v19 < *(v14 + 16))
    {
      v24 = *v21;
      v64 = *(v21 - 1);
      v72 = v64;
      v73 = v24;
      v25 = sub_2544AECF0();

      v26 = sub_25454C064();
      if (v27)
      {
        v63 = v16;
        v28 = v14;
        v72 = v26;
        v73 = v27;
        sub_25454C064();
        v30 = v29;

        if (v30)
        {
          v31 = sub_25454BCC4();
          v33 = v32;

          v72 = v31;
          v73 = v33;
          sub_25454BCF4();
          v34 = sub_25454BCC4();
          v36 = v35;

          v70 = v34;
          v71 = v36;
          v68 = 0;
          v69 = 0xE000000000000000;
          v51 = v25;
          v52 = v25;
          v50[0] = v22;
          v50[1] = v25;
          v37 = sub_25454C084();
          v39 = v38;

          v23 = v56;

          v72 = v37;
          v73 = v39;
          v40 = v54;
          sub_254549064();
          v41 = sub_25454C074();
          v43 = v42;
          (*v53[0])(v40, v55);
        }

        else
        {
          v41 = 0;
          v43 = 0xE000000000000000;
        }

        v14 = v28;
        v16 = v63;
      }

      else
      {
        v41 = 0;
        v43 = 0xE000000000000000;
      }

      v72 = v41;
      v73 = v43;
      MEMORY[0x28223BE20](v26);
      v51 = &v72;
      v44 = sub_254504AD4(sub_2545074C0, v50, v62);

      if (v44)
      {

        v22 = MEMORY[0x277D837D0];
      }

      else
      {
        sub_254549384();
        v45 = (v23 + *(v58 + 20));
        *v45 = v64;
        v45[1] = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = MEMORY[0x277D837D0];
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = sub_2544D38C8(0, v65[2] + 1, 1, v65);
        }

        v48 = v65[2];
        v47 = v65[3];
        if (v48 >= v47 >> 1)
        {
          v65 = sub_2544D38C8((v47 > 1), v48 + 1, 1, v65);
        }

        v49 = v65;
        v65[2] = v48 + 1;
        result = sub_254507518(v23, v49 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v48, type metadata accessor for AccessoryDetailsView.RoomSuggestion);
        if (v48 >= 2)
        {
          goto LABEL_20;
        }
      }

      ++v19;
      v21 += 2;
      if (v61 == v19)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
LABEL_20:

    return v65;
  }

  return result;
}

double sub_2544F0154@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_25454AB14();
  v19 = 1;
  sub_2544F02E4(a1 & 1, a2, &v12);
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v20 = v12;
  v21 = v13;
  v27 = v17;
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v26[0] = v12;
  v26[1] = v13;
  sub_2544AE240(&v20, &v11, &qword_27F5FC560, &qword_2545501B0);
  sub_2544AE150(v26, &qword_27F5FC560, &qword_2545501B0);

  *&v18[71] = v24;
  *&v18[55] = v23;
  *&v18[39] = v22;
  *&v18[23] = v21;
  *&v18[7] = v20;
  v7 = *&v18[48];
  *(a3 + 49) = *&v18[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v18[64];
  result = *v18;
  v9 = *&v18[16];
  *(a3 + 17) = *v18;
  v18[87] = v25;
  v10 = v19;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 97) = *&v18[80];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_2544F02E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *&v49 = a2;
  v47 = a3;
  *&v53 = sub_25454A0A4();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254549AB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v54 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v61 = sub_25454BCF4();
  *(&v61 + 1) = v11;
  v45[2] = sub_2544AECF0();
  v12 = sub_25454B274();
  v14 = v13;
  v16 = v15;
  v48 = v4;
  if (a1)
  {
    sub_25454B6A4();
  }

  else
  {
    sub_25454B644();
  }

  v17 = sub_25454B1D4();
  v50 = v18;
  v51 = v17;
  v46 = v19;
  v52 = v20;

  sub_2544C9C64(v12, v14, v16 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  v21 = *(v8 + 8);
  v45[1] = v8 + 8;
  v21(v10, v7);
  v22 = sub_254549FF4();
  v23 = *(v48 + 8);
  v24 = v53;
  v23(v6, v53);
  if (v22)
  {
    *&v61 = sub_25454BCF4();
    *(&v61 + 1) = v25;
    v56 = sub_25454B274();
    v57 = v26;
    v58 = v27 & 1;
    v59 = v28;
    v60 = 0;
  }

  else
  {
    sub_25454B7A4();
    sub_254549AA4();
    v21(v10, v7);
    v29 = sub_25454A084();
    v31 = v30;
    v23(v6, v24);
    *&v61 = v29;
    *(&v61 + 1) = v31;
    v56 = sub_25454B274();
    v57 = v33;
    v58 = v32 & 1;
    v59 = v34;
    v60 = 1;
  }

  sub_25454AD44();
  v35 = v61;
  v36 = v62;
  v37 = v63;
  v49 = v61;
  v53 = v62;
  v38 = v46 & 1;
  LOBYTE(v61) = v46 & 1;
  LOBYTE(v56) = 1;
  v55 = v63;
  v40 = v50;
  v39 = v51;
  v41 = v47;
  *v47 = v51;
  v41[1] = v40;
  *(v41 + 16) = v38;
  v41[3] = v52;
  v41[4] = 0;
  *(v41 + 40) = 1;
  *(v41 + 3) = v35;
  *(v41 + 4) = v36;
  *(v41 + 80) = v37;
  sub_2544A8F00(v39, v40, v38);

  v42 = v49;
  v43 = v53;
  sub_25450740C(v49, *(&v49 + 1), v53, *(&v53 + 1));
  sub_254507448(v42, *(&v42 + 1), v43, *(&v43 + 1));
  sub_2544C9C64(v39, v40, v38);
}

double sub_2544F07A4@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC510, &qword_254550180);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v47 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = v38 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC518, &qword_254550188);
  v39 = *(v41 - 8);
  v7 = MEMORY[0x28223BE20](v41);
  v40 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = v38 - v9;
  v10 = sub_25454A0A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254549AB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v38[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v15 + 8))(v17, v14);
  v18 = sub_254549F34();
  (*(v11 + 8))(v13, v10);
  v52 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC520, &qword_254550190);
  sub_254549394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC528, &qword_254550198);
  v19 = MEMORY[0x277D83980];
  sub_2544AE1F0(&qword_27F5FC530, &qword_27F5FC520, &qword_254550190, MEMORY[0x277D83980]);
  v48 = MEMORY[0x277CE0BD8];
  v49 = MEMORY[0x277D837D0];
  v50 = MEMORY[0x277CE0BC8];
  v51 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeConformance2();
  sub_254504430(&qword_27F5FC538, MEMORY[0x277D15488], MEMORY[0x277D154B0]);
  v20 = v45;
  sub_25454B984();
  v21 = (a1 + *(type metadata accessor for AccessoryDetailsView(0) + 84));
  v23 = *v21;
  v22 = v21[1];
  v48 = v23;
  v49 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC540, &qword_2545501A0);
  sub_25454B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD0, &qword_25454F728);
  sub_2544AE1F0(&qword_27F5FC548, &qword_27F5FBCD0, &qword_25454F728, v19);
  sub_254504430(&qword_27F5FC550, type metadata accessor for AccessoryDetailsView.RoomSuggestion, &unk_25454F9D8);
  v24 = v46;
  sub_25454B984();
  v25 = v39;
  v26 = v40;
  v27 = *(v39 + 16);
  v28 = v41;
  v27(v40, v20, v41);
  v30 = v43;
  v29 = v44;
  v31 = *(v43 + 16);
  v31(v47, v24, v44);
  v32 = v42;
  v27(v42, v26, v28);
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC558, &qword_2545501A8) + 48)];
  v34 = v47;
  v31(v33, v47, v29);
  v35 = *(v30 + 8);
  v35(v46, v29);
  v36 = *(v25 + 8);
  v36(v45, v28);
  v35(v34, v29);
  v36(v26, v28);

  return result;
}

double sub_2544F0E1C@<D0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_254549774();
  sub_2544AECF0();
  v2 = sub_25454B274();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_254549774();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = 1;

  return result;
}

double sub_2544F0F18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25454AB74();
  MEMORY[0x28223BE20](v4 - 8);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454AB64();
  sub_25454AB54();
  v5 = (a1 + *(type metadata accessor for AccessoryDetailsView.RoomSuggestion(0) + 20));
  v7 = *v5;
  v6 = v5[1];
  sub_25454AB44();
  sub_25454AB54();
  sub_25454BCF4();
  sub_25454AB44();

  sub_25454AB54();
  sub_25454AB94();
  *a2 = sub_25454B264();
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;
  *(a2 + 48) = 1;

  return result;
}

double sub_2544F10E0(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v6 = v18;
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_254505BFC(a1, &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessoryDetailsView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_254507518(v5, v9 + v8, type metadata accessor for AccessoryDetailsView);
  (*(v7 + 16))(sub_254507008, v9, v6, v7);

  __swift_destroy_boxed_opaque_existential_0(v17);
  v10 = a1 + *(v2 + 40);
  v12 = *(v10 + 8);
  LOBYTE(v17[0]) = *v10;
  v11 = v17[0];
  v17[1] = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v14[16] = v11;
  v15 = v12;
  v14[15] = (v16 & 1) == 0;
  sub_25454B7B4();

  return result;
}

double sub_2544F1358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v21 - v8;
  if (v7)
  {
    v10 = [v7 name];
    v11 = sub_25454BC84();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sub_25454BE44();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_254505BFC(a2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  sub_25454BE14();
  v15 = sub_25454BE04();
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_254507518(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AccessoryDetailsView);
  v19 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v11;
  v19[1] = v13;
  sub_2544B5138(0, 0, v9, &unk_254550178, v17);

  return result;
}

void sub_2544F1598(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v2 = sub_25454B274();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
}

double sub_2544F1688(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC508, &qword_254550168);
  sub_2544AECF0();
  swift_getOpaqueTypeConformance2();
  sub_25454A724();

  return result;
}

double sub_2544F17CC()
{
  v0 = sub_25454AAC4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8[2] = (*(v5 + 8))(v4, v5);
  v8[0] = sub_25454BCF4();
  v8[1] = v6;
  (*(v1 + 104))(v3, *MEMORY[0x277CDDDC0], v0);
  sub_2544AECF0();
  sub_25454B454();
  (*(v1 + 8))(v3, v0);

  __swift_destroy_boxed_opaque_existential_0(v9);

  return result;
}

uint64_t sub_2544F1A00()
{
  v0 = sub_2545497B4();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - v4;
  v6 = sub_2545497D4();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254549AB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254549634();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, *MEMORY[0x277D15278], v13);
  sub_254504430(&qword_27F5FC2A0, MEMORY[0x277D15298], MEMORY[0x277D15270]);
  v17 = sub_254549564();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    sub_25454B7A4();
    sub_254549944();
    (*(v10 + 8))(v12, v9);
    sub_2545497C4();
    (*(v24 + 8))(v8, v25);
    v19 = v26;
    v18 = v27;
    (*(v26 + 104))(v3, *MEMORY[0x277D154B8], v27);
    v20 = sub_2545497A4();
    v21 = *(v19 + 8);
    v21(v3, v18);
    v21(v5, v18);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_2544F1DA4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v4 = sub_25454B274();
  v6 = v5;
  v8 = v7;
  if (a1)
  {
    sub_25454B6A4();
  }

  else
  {
    sub_25454B644();
  }

  v9 = sub_25454B1D4();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_2544C9C64(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_2544F1F04@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v4 = sub_25454B274();
  v6 = v5;
  v8 = v7;
  if (a1)
  {
    sub_25454B6A4();
  }

  else
  {
    sub_25454B644();
  }

  v9 = sub_25454B1D4();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_2544C9C64(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

double sub_2544F2064@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a3;
  v144 = sub_25454AAC4();
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v141 = v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2D0, &qword_25454FE88);
  MEMORY[0x28223BE20](v6);
  v140 = v133 - v7;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2D8, &qword_25454FE90);
  v145 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v143 = v133 - v8;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2E0, &qword_25454FE98);
  MEMORY[0x28223BE20](v164);
  v166 = v133 - v9;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  MEMORY[0x28223BE20](v165);
  v148 = v133 - v10;
  v161 = sub_25454A134();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_25454A124();
  v156 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_25454A1D4();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v155 = v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25454A1C4();
  v176 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v152 = v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v162 = v133 - v18;
  v147 = v19;
  MEMORY[0x28223BE20](v17);
  v169 = (v133 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2E8, &qword_25454FEA0);
  v179 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v139 = v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v138 = v133 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v151 = v133 - v27;
  MEMORY[0x28223BE20](v26);
  v150 = v133 - v28;
  v177 = sub_254549AB4();
  v29 = *(v177 - 8);
  v30 = MEMORY[0x28223BE20](v177);
  v32 = v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v133 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2F0, &qword_25454FEA8);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v174 = v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v173 = v133 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v175 = v133 - v41;
  MEMORY[0x28223BE20](v40);
  v178 = v133 - v42;
  sub_25454BE14();
  v172 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v43 = sub_254549A14();
  v45 = *(v29 + 8);
  v44 = v29 + 8;
  v167 = v45;
  v45(v34, v177);
  v170 = a1;
  v137 = a2;
  if (v43)
  {
    v135 = v44;
    v146 = v6;
    v46 = sub_25454BCF4();
    v134 = v47;
    (*(v153 + 104))(v155, *MEMORY[0x277D14FA0], v154);
    (*(v156 + 16))(v157, a2, v158);
    (*(v160 + 104))(v159, *MEMORY[0x277D16E38], v161);
    v48 = v169;
    sub_25454A1B4();
    type metadata accessor for AccessoryDetailsView(0);
    Strong = swift_unknownObjectWeakLoadStrong();
    v50 = sub_25454B644();
    v51 = v176;
    v52 = v162;
    v53 = (*(v176 + 16))(v162, v48, v14);
    v54 = v14;
    v149 = v14;
    v133[1] = v50;
    if (Strong)
    {
      v55 = (*(v51 + 80) + 24) & ~*(v51 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = Strong;
      v57 = (*(v51 + 32))(v56 + v55, v52, v54);
      MEMORY[0x28223BE20](v57);
      v58 = v134;
      v133[-6] = v46;
      v133[-5] = v58;
      LOBYTE(v133[-4]) = 0;
      v133[-3] = 0;
      v133[-2] = 0;
      v133[-1] = v50;
      v133[0] = Strong;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
      v136 = v21;
      sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0, MEMORY[0x277CE1138]);
      v59 = v148;
      sub_25454B7F4();

      KeyPath = swift_getKeyPath();
      v61 = swift_allocObject();
      *(v61 + 16) = 0;
      v62 = v166;
      v63 = (v59 + *(v165 + 36));
      *v63 = KeyPath;
      v63[1] = sub_254508108;
      v63[2] = v61;
      sub_2544AE240(v59, v62, &qword_27F5FC1E8, &qword_25454FDA8);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v64 = sub_2545061B8();
      v6 = v146;
      v180 = v146;
      v181 = v64;
      swift_getOpaqueTypeConformance2();
      v65 = v151;
      v21 = v136;
      sub_25454AD44();
      v66 = v133[0];

      sub_2544AE150(v59, &qword_27F5FC1E8, &qword_25454FDA8);
    }

    else
    {
      MEMORY[0x28223BE20](v53);
      v133[-6] = 0;
      v133[-5] = 0;
      v70 = v134;
      v133[-4] = v46;
      v133[-3] = v70;
      LOBYTE(v133[-2]) = 0;
      v133[-1] = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
      sub_254506100();
      sub_254504430(&qword_27F5FC320, MEMORY[0x277D14F90], MEMORY[0x277D14F88]);
      v71 = v140;
      sub_25454A674();

      v72 = swift_getKeyPath();
      v73 = swift_allocObject();
      *(v73 + 16) = 0;
      v6 = v146;
      v74 = (v71 + *(v146 + 36));
      *v74 = v72;
      v74[1] = sub_254508108;
      v74[2] = v73;
      v75 = v142;
      v76 = v141;
      v77 = v144;
      (*(v142 + 104))(v141, *MEMORY[0x277CDDDC0], v144);
      v78 = sub_2545061B8();
      v79 = v143;
      sub_25454B4E4();
      (*(v75 + 8))(v76, v77);
      sub_2544AE150(v71, &qword_27F5FC2D0, &qword_25454FE88);
      v80 = v145;
      v81 = v163;
      (*(v145 + 16))(v166, v79, v163);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v180 = v6;
      v181 = v78;
      swift_getOpaqueTypeConformance2();
      v65 = v151;
      sub_25454AD44();

      (*(v80 + 8))(v79, v81);
    }

    v14 = v149;
    (*(v176 + 8))(v169, v149);
    v82 = v150;
    sub_2544B14E8(v65, v150, &qword_27F5FC2E8, &qword_25454FEA0);
    v68 = v178;
    sub_2544B14E8(v82, v178, &qword_27F5FC2E8, &qword_25454FEA0);
    v67 = 0;
    v69 = v179;
  }

  else
  {
    v67 = 1;
    v68 = v178;
    v69 = v179;
  }

  v85 = *(v69 + 56);
  v83 = v69 + 56;
  v84 = v85;
  v86 = 1;
  v85(v68, v67, 1, v21);
  sub_25454B7A4();
  v87 = sub_254549A44();
  v167(v32, v177);
  if (v87)
  {
    v179 = v83;
    type metadata accessor for AccessoryDetailsView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
    sub_25454B7A4();
    v88 = v182;
    v89 = v183;
    __swift_project_boxed_opaque_existential_1(&v180, v182);
    v90 = (*(v89 + 136))(v88, v89);
    __swift_destroy_boxed_opaque_existential_0(&v180);
    if (v90)
    {
      v136 = v21;
      v91 = sub_25454BCF4();
      v177 = v92;
      (*(v153 + 104))(v155, *MEMORY[0x277D14F98], v154);
      (*(v156 + 16))(v157, v137, v158);
      (*(v160 + 104))(v159, *MEMORY[0x277D16E38], v161);
      v93 = v152;
      sub_25454A1B4();
      v94 = swift_unknownObjectWeakLoadStrong();
      v95 = sub_25454B644();
      v96 = v176;
      v97 = v162;
      v98 = (*(v176 + 16))(v162, v93, v14);
      v99 = v14;
      v149 = v14;
      v170 = v95;
      if (v94)
      {
        v100 = (*(v96 + 80) + 24) & ~*(v96 + 80);
        v101 = swift_allocObject();
        *(v101 + 16) = v94;
        v102 = (*(v96 + 32))(v101 + v100, v97, v99);
        v168 = v133;
        MEMORY[0x28223BE20](v102);
        v103 = v177;
        v133[-6] = v91;
        v133[-5] = v103;
        LOBYTE(v133[-4]) = 0;
        v133[-3] = 0;
        v133[-2] = 0;
        v133[-1] = v95;
        v169 = v94;
        v146 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
        v104 = v96;
        sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0, MEMORY[0x277CE1138]);
        v105 = v148;
        sub_25454B7F4();

        v106 = swift_getKeyPath();
        v107 = swift_allocObject();
        *(v107 + 16) = 0;
        v108 = v166;
        v109 = (v105 + *(v165 + 36));
        *v109 = v106;
        v109[1] = sub_254508108;
        v109[2] = v107;
        sub_2544AE240(v105, v108, &qword_27F5FC1E8, &qword_25454FDA8);
        swift_storeEnumTagMultiPayload();
        sub_254505964();
        v110 = sub_2545061B8();
        v180 = v146;
        v181 = v110;
        swift_getOpaqueTypeConformance2();
        v111 = v139;
        sub_25454AD44();
        v112 = v169;

        sub_2544AE150(v105, &qword_27F5FC1E8, &qword_25454FDA8);
      }

      else
      {
        v169 = v133;
        MEMORY[0x28223BE20](v98);
        v133[-6] = 0;
        v133[-5] = 0;
        v113 = v177;
        v133[-4] = v91;
        v133[-3] = v113;
        LOBYTE(v133[-2]) = 0;
        v133[-1] = v95;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
        sub_254506100();
        sub_254504430(&qword_27F5FC320, MEMORY[0x277D14F90], MEMORY[0x277D14F88]);
        v114 = v140;
        sub_25454A674();

        v115 = swift_getKeyPath();
        v116 = swift_allocObject();
        *(v116 + 16) = 0;
        v117 = (v114 + *(v6 + 36));
        *v117 = v115;
        v117[1] = sub_254508108;
        v117[2] = v116;
        v118 = v142;
        v119 = v141;
        v120 = v144;
        (*(v142 + 104))(v141, *MEMORY[0x277CDDDC0], v144);
        v121 = sub_2545061B8();
        v122 = v143;
        sub_25454B4E4();
        (*(v118 + 8))(v119, v120);
        sub_2544AE150(v114, &qword_27F5FC2D0, &qword_25454FE88);
        v123 = v145;
        v104 = v96;
        v124 = v163;
        (*(v145 + 16))(v166, v122, v163);
        swift_storeEnumTagMultiPayload();
        sub_254505964();
        v180 = v6;
        v181 = v121;
        swift_getOpaqueTypeConformance2();
        v111 = v139;
        sub_25454AD44();

        (*(v123 + 8))(v122, v124);
      }

      (*(v104 + 8))(v152, v149);
      v125 = v138;
      sub_2544B14E8(v111, v138, &qword_27F5FC2E8, &qword_25454FEA0);
      sub_2544B14E8(v125, v175, &qword_27F5FC2E8, &qword_25454FEA0);
      v86 = 0;
      v21 = v136;
    }

    else
    {
      v86 = 1;
    }
  }

  v126 = v175;
  v84(v175, v86, 1, v21);
  v127 = v178;
  v128 = v173;
  sub_2544AE240(v178, v173, &qword_27F5FC2F0, &qword_25454FEA8);
  v129 = v174;
  sub_2544AE240(v126, v174, &qword_27F5FC2F0, &qword_25454FEA8);
  v130 = v171;
  sub_2544AE240(v128, v171, &qword_27F5FC2F0, &qword_25454FEA8);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC2F8, &qword_25454FEB0);
  sub_2544AE240(v129, v130 + *(v131 + 48), &qword_27F5FC2F0, &qword_25454FEA8);
  sub_2544AE150(v126, &qword_27F5FC2F0, &qword_25454FEA8);
  sub_2544AE150(v127, &qword_27F5FC2F0, &qword_25454FEA8);
  sub_2544AE150(v129, &qword_27F5FC2F0, &qword_25454FEA8);
  sub_2544AE150(v128, &qword_27F5FC2F0, &qword_25454FEA8);

  return result;
}

double sub_2544F375C@<D0>(uint64_t a2@<X8>)
{
  v68 = sub_25454AAC4();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC200, &qword_25454FDC0);
  MEMORY[0x28223BE20](v77);
  v65 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC360, &qword_25454FEE8);
  v70 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = &v58 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC368, &qword_25454FEF0);
  MEMORY[0x28223BE20](v72);
  v74 = &v58 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  MEMORY[0x28223BE20](v73);
  v71 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v75 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v58 - v12;
  v13 = sub_254549AB4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1C0, &qword_25454FD98);
  MEMORY[0x28223BE20](v17 - 8);
  v81 = &v58 - v18;
  sub_25454BE14();
  v78 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v19 = sub_254549A34();
  v20 = *(v14 + 8);
  v20(v16, v13);
  v21 = v13;
  v22 = 1;
  if (v19)
  {
    v63 = v5;
    v64 = a2;
    v59 = v21;
    v61 = sub_25454BCF4();
    v62 = v23;
    type metadata accessor for AccessoryDetailsView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
    sub_25454B7A4();
    v25 = v85;
    v24 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v26 = (*(v24 + 128))(v25, v24);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_25454B7A4();
    v28 = sub_254549A54();
    v20(v16, v59);
    v29 = sub_25454B644();
    v30 = v29;
    v31 = (v28 & 1) == 0;
    v60 = v26;
    if (Strong)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = Strong;
      *(v32 + 24) = v26;
      MEMORY[0x28223BE20](v32);
      v33 = v62;
      *(&v58 - 6) = v61;
      *(&v58 - 5) = v33;
      *(&v58 - 32) = v31;
      *(&v58 - 3) = 0;
      *(&v58 - 2) = 0;
      *(&v58 - 1) = v30;
      v34 = Strong;

      v70 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
      sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0, MEMORY[0x277CE1138]);
      v35 = v71;
      sub_25454B7F4();

      KeyPath = swift_getKeyPath();
      v37 = swift_allocObject();
      *(v37 + 16) = v31;
      v38 = v74;
      v39 = (v35 + *(v73 + 36));
      *v39 = KeyPath;
      v39[1] = sub_254508108;
      v39[2] = v37;
      sub_2544AE240(v35, v38, &qword_27F5FC1E8, &qword_25454FDA8);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v40 = sub_254505A48();
      v82 = v77;
      v83 = v40;
      swift_getOpaqueTypeConformance2();
      v41 = v75;
      sub_25454AD44();

      sub_2544AE150(v35, &qword_27F5FC1E8, &qword_25454FDA8);
    }

    else
    {
      v82 = v26;
      MEMORY[0x28223BE20](v29);
      *(&v58 - 6) = 0;
      *(&v58 - 5) = 0;
      v42 = v62;
      *(&v58 - 4) = v61;
      *(&v58 - 3) = v42;
      *(&v58 - 16) = v31;
      *(&v58 - 1) = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
      sub_254506100();
      v43 = v65;
      sub_25454A674();

      v44 = swift_getKeyPath();
      v45 = swift_allocObject();
      *(v45 + 16) = v31;
      v46 = v77;
      v47 = (v43 + *(v77 + 36));
      *v47 = v44;
      v47[1] = sub_254508108;
      v47[2] = v45;
      v48 = v67;
      v49 = v66;
      v50 = v68;
      (*(v67 + 104))(v66, *MEMORY[0x277CDDDC0], v68);
      v51 = sub_254505A48();
      v52 = v69;
      sub_25454B4E4();
      (*(v48 + 8))(v49, v50);
      sub_2544AE150(v43, &qword_27F5FC200, &qword_25454FDC0);
      v53 = v70;
      v54 = v63;
      (*(v70 + 16))(v74, v52, v63);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v82 = v46;
      v83 = v51;
      swift_getOpaqueTypeConformance2();
      v41 = v75;
      sub_25454AD44();

      (*(v53 + 8))(v52, v54);
    }

    v55 = v76;
    sub_2544B14E8(v41, v76, &qword_27F5FC1D8, &qword_25454FDA0);
    __swift_destroy_boxed_opaque_existential_0(v84);
    sub_2544B14E8(v55, v81, &qword_27F5FC1D8, &qword_25454FDA0);
    v22 = 0;
    a2 = v64;
  }

  v56 = v81;
  (*(v79 + 56))(v81, v22, 1, v80);
  sub_2544B14E8(v56, a2, &qword_27F5FC1C0, &qword_25454FD98);

  return result;
}

double sub_2544F41E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC238, &qword_25454FDD8);
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v25 - v5;
  v6 = sub_254549AB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC220, &qword_25454FDD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v13 = v29;
  sub_25454B7A4();
  v14 = sub_254549904();
  (*(v7 + 8))(v9, v6);
  if (v14 & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18), sub_25454B7A4(), v15 = v33, v16 = v34, __swift_project_boxed_opaque_existential_1(v32, v33), LOBYTE(v15) = (*(v16 + 160))(v15, v16), __swift_destroy_boxed_opaque_existential_0(v32), (v15))
  {
    v17 = v27;
    sub_254505BFC(v13, v27, type metadata accessor for AccessoryDetailsView);
    v18 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v19 = swift_allocObject();
    sub_254507518(v17, v19 + v18, type metadata accessor for AccessoryDetailsView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC448, &qword_254550010);
    sub_2544AE1F0(&qword_27F5FC450, &qword_27F5FC448, &qword_254550010, MEMORY[0x277CE1138]);
    v20 = v28;
    sub_25454B7F4();
    v21 = v30;
    (*(v4 + 32))(v12, v20, v30);
    v22 = v21;
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v22 = v30;
  }

  (*(v4 + 56))(v12, v23, 1, v22);
  sub_2544B14E8(v12, v31, &qword_27F5FC220, &qword_25454FDD0);

  return result;
}

double sub_2544F4670()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 120))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0(v3);

  return result;
}

__n128 sub_2544F4768@<Q0>(__n128 *a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25454AB14();
  sub_2544F483C(&v7);

  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_2544F483C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC458, &qword_254550018);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454B734();
  v5 = *MEMORY[0x277CE1020];
  v6 = sub_25454B744();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = sub_25454B724();

  sub_2544AE150(v4, &qword_27F5FC458, &qword_254550018);
  v16[0] = sub_25454BCF4();
  v16[1] = v9;
  sub_2544AECF0();
  v10 = sub_25454B274();
  v12 = v11;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  LOBYTE(v7) = v13 & 1;
  *(a1 + 24) = v13 & 1;
  *(a1 + 32) = v14;

  sub_2544A8F00(v10, v12, v7);

  sub_2544C9C64(v10, v12, v7);
}

double sub_2544F4AAC@<D0>(uint64_t a2@<X8>)
{
  v69 = sub_25454AAC4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC200, &qword_25454FDC0);
  MEMORY[0x28223BE20](v82);
  v66 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC360, &qword_25454FEE8);
  v71 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v70 = &v66 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC368, &qword_25454FEF0);
  MEMORY[0x28223BE20](v77);
  v79 = &v66 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  MEMORY[0x28223BE20](v78);
  v72 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
  v85 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v80 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1C0, &qword_25454FD98);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v66 - v14;
  sub_25454BE14();
  v83 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v15 = v92;
  v16 = v93;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v17 = (*(v16 + 176))(v15, v16);
  __swift_destroy_boxed_opaque_existential_0(v91);
  if (v17 <= 0 && (sub_25454B7A4(), v18 = v92, v19 = v93, __swift_project_boxed_opaque_existential_1(v91, v92), v20 = (*(v19 + 168))(v18, v19), __swift_destroy_boxed_opaque_existential_0(v91), v20 < 1))
  {
    v64 = 1;
    v63 = v84;
  }

  else
  {
    v74 = v9;
    v75 = v5;
    sub_25454B7A4();
    v21 = v92;
    v22 = v93;
    __swift_project_boxed_opaque_existential_1(v91, v92);
    (*(v22 + 168))(v21, v22);
    __swift_destroy_boxed_opaque_existential_0(v91);
    v73 = sub_25454BCF4();
    v24 = v23;

    sub_25454B7A4();
    v25 = v92;
    v26 = v93;
    __swift_project_boxed_opaque_existential_1(v91, v92);
    v27 = (*(v26 + 48))(v25, v26);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_25454B7A4();
    v30 = v89;
    v29 = v90;
    __swift_project_boxed_opaque_existential_1(&v87, v89);
    v31 = (*(v29 + 168))(v30, v29);
    __swift_destroy_boxed_opaque_existential_0(&v87);
    sub_25454B7A4();
    v32 = v89;
    v33 = v90;
    __swift_project_boxed_opaque_existential_1(&v87, v89);
    if (v31 < 1)
    {
      v34 = (*(v33 + 176))(v32, v33);
    }

    else
    {
      v34 = (*(v33 + 168))(v32, v33);
    }

    v86 = v34;
    v35 = sub_25454C304();
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_0(&v87);
    v76 = a2;
    v38 = sub_25454B644();
    v39 = v38;
    if (Strong)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = Strong;
      *(v40 + 24) = v27;
      MEMORY[0x28223BE20](v40);
      *(&v66 - 6) = v73;
      *(&v66 - 5) = v24;
      *(&v66 - 32) = 0;
      *(&v66 - 3) = v35;
      *(&v66 - 2) = v37;
      *(&v66 - 1) = v39;
      v41 = Strong;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
      v73 = v39;
      sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0, MEMORY[0x277CE1138]);
      v42 = v72;
      sub_25454B7F4();

      KeyPath = swift_getKeyPath();
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      v45 = v79;
      v46 = (v42 + *(v78 + 36));
      *v46 = KeyPath;
      v46[1] = sub_254508108;
      v46[2] = v44;
      sub_2544AE240(v42, v45, &qword_27F5FC1E8, &qword_25454FDA8);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v47 = sub_254505A48();
      v87 = v82;
      v88 = v47;
      swift_getOpaqueTypeConformance2();
      v48 = v80;
      sub_25454AD44();

      sub_2544AE150(v42, &qword_27F5FC1E8, &qword_25454FDA8);
    }

    else
    {
      v87 = v27;
      MEMORY[0x28223BE20](v38);
      *(&v66 - 6) = v35;
      *(&v66 - 5) = v37;
      *(&v66 - 4) = v73;
      *(&v66 - 3) = v24;
      *(&v66 - 16) = 0;
      *(&v66 - 1) = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
      sub_254506100();
      v49 = v66;
      sub_25454A674();

      v50 = swift_getKeyPath();
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      v52 = v82;
      v53 = (v49 + *(v82 + 36));
      *v53 = v50;
      v53[1] = sub_254508108;
      v53[2] = v51;
      v54 = v68;
      v55 = v67;
      v56 = v69;
      (*(v68 + 104))(v67, *MEMORY[0x277CDDDC0], v69);
      v57 = sub_254505A48();
      v58 = v70;
      sub_25454B4E4();
      (*(v54 + 8))(v55, v56);
      sub_2544AE150(v49, &qword_27F5FC200, &qword_25454FDC0);
      v59 = v71;
      v60 = v75;
      (*(v71 + 16))(v79, v58, v75);
      swift_storeEnumTagMultiPayload();
      sub_254505964();
      v87 = v52;
      v88 = v57;
      swift_getOpaqueTypeConformance2();
      v48 = v80;
      sub_25454AD44();

      (*(v59 + 8))(v58, v60);
    }

    v9 = v74;
    v61 = v81;
    sub_2544B14E8(v48, v81, &qword_27F5FC1D8, &qword_25454FDA0);
    __swift_destroy_boxed_opaque_existential_0(v91);
    v62 = v61;
    v63 = v84;
    sub_2544B14E8(v62, v84, &qword_27F5FC1D8, &qword_25454FDA0);
    v64 = 0;
    a2 = v76;
  }

  (*(v85 + 56))(v63, v64, 1, v9);
  sub_2544B14E8(v63, a2, &qword_27F5FC1C0, &qword_25454FD98);

  return result;
}

double sub_2544F5674@<D0>(uint64_t a2@<X8>)
{
  v60 = a2;
  v49 = sub_25454AAC4();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC200, &qword_25454FDC0);
  MEMORY[0x28223BE20](v58);
  v47 = &v47 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC360, &qword_25454FEE8);
  v51 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v50 = &v47 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC368, &qword_25454FEF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v47 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  MEMORY[0x28223BE20](v54);
  v52 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v47 - v9;
  sub_25454BE14();
  v56 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_25454BCF4();
  v12 = v11;
  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v13 = v67;
  v14 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v15 = (*(v14 + 64))(v13, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_25454B7A4();
  v17 = v64;
  v18 = v65;
  __swift_project_boxed_opaque_existential_1(&v62, v64);
  v61 = (*(v18 + 56))(v17, v18);
  v19 = sub_25454C304();
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_0(&v62);
  v22 = sub_25454B644();
  v23 = v22;
  if (Strong)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = Strong;
    *(v24 + 24) = v15;
    MEMORY[0x28223BE20](v24);
    *(&v47 - 6) = v10;
    *(&v47 - 5) = v12;
    *(&v47 - 32) = 0;
    *(&v47 - 3) = v19;
    *(&v47 - 2) = v21;
    *(&v47 - 1) = v23;
    v25 = Strong;
    v51 = v23;
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
    sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0, MEMORY[0x277CE1138]);
    v27 = v52;
    sub_25454B7F4();

    KeyPath = swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = v55;
    v31 = (v27 + *(v54 + 36));
    *v31 = KeyPath;
    v31[1] = sub_254508108;
    v31[2] = v29;
    sub_2544AE240(v27, v30, &qword_27F5FC1E8, &qword_25454FDA8);
    swift_storeEnumTagMultiPayload();
    sub_254505964();
    v32 = sub_254505A48();
    v62 = v58;
    v63 = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v57;
    sub_25454AD44();

    sub_2544AE150(v27, &qword_27F5FC1E8, &qword_25454FDA8);
  }

  else
  {
    v62 = v15;
    MEMORY[0x28223BE20](v22);
    v34 = v3;
    *(&v47 - 6) = v19;
    *(&v47 - 5) = v21;
    *(&v47 - 4) = v10;
    *(&v47 - 3) = v12;
    *(&v47 - 16) = 0;
    *(&v47 - 1) = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
    sub_254506100();
    v35 = v47;
    sub_25454A674();

    v36 = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = v58;
    v39 = (v35 + *(v58 + 36));
    *v39 = v36;
    v39[1] = sub_254508108;
    v39[2] = v37;
    v40 = v48;
    v41 = v49;
    (*(v48 + 104))(v34, *MEMORY[0x277CDDDC0], v49);
    v42 = sub_254505A48();
    v43 = v50;
    sub_25454B4E4();
    (*(v40 + 8))(v34, v41);
    sub_2544AE150(v35, &qword_27F5FC200, &qword_25454FDC0);
    v44 = v51;
    v45 = v59;
    (*(v51 + 2))(v55, v43, v59);
    swift_storeEnumTagMultiPayload();
    sub_254505964();
    v62 = v38;
    v63 = v42;
    swift_getOpaqueTypeConformance2();
    v33 = v57;
    sub_25454AD44();

    (*(v44 + 1))(v43, v45);
  }

  sub_2544B14E8(v33, v60, &qword_27F5FC1D8, &qword_25454FDA0);
  __swift_destroy_boxed_opaque_existential_0(v66);

  return result;
}

double sub_2544F5F18@<D0>(uint64_t a2@<X8>)
{
  v51 = a2;
  v2 = sub_25454AAC4();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC200, &qword_25454FDC0);
  MEMORY[0x28223BE20](v57);
  v5 = &v45 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC360, &qword_25454FEE8);
  v50 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v49 = &v45 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC368, &qword_25454FEF0);
  MEMORY[0x28223BE20](v52);
  v55 = &v45 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1E8, &qword_25454FDA8);
  MEMORY[0x28223BE20](v54);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1D8, &qword_25454FDA0);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v45 - v11;
  v12 = sub_254549AB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v53 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549A24();
  (*(v13 + 8))(v15, v12);
  v16 = sub_25454BCF4();
  v18 = v17;
  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v19 = v62;
  v20 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v21 = (*(v20 + 104))(v19, v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  v23 = sub_25454B644();
  v24 = v23;
  if (Strong)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = Strong;
    *(v25 + 24) = v21;
    MEMORY[0x28223BE20](v25);
    *(&v45 - 6) = v16;
    *(&v45 - 5) = v18;
    *(&v45 - 32) = 0;
    *(&v45 - 3) = 0;
    *(&v45 - 2) = 0;
    *(&v45 - 1) = v24;
    v26 = Strong;

    v50 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC340, &qword_25454FED0);
    sub_2544AE1F0(&qword_27F5FC348, &qword_27F5FC340, &qword_25454FED0, MEMORY[0x277CE1138]);
    sub_25454B7F4();

    KeyPath = swift_getKeyPath();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = v55;
    v30 = &v9[*(v54 + 36)];
    *v30 = KeyPath;
    v30[1] = sub_254508108;
    v30[2] = v28;
    sub_2544AE240(v9, v29, &qword_27F5FC1E8, &qword_25454FDA8);
    swift_storeEnumTagMultiPayload();
    sub_254505964();
    v31 = sub_254505A48();
    v59 = v57;
    v60 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v56;
    sub_25454AD44();

    sub_2544AE150(v9, &qword_27F5FC1E8, &qword_25454FDA8);
  }

  else
  {
    v59 = v21;
    MEMORY[0x28223BE20](v23);
    *(&v45 - 6) = 0;
    *(&v45 - 5) = 0;
    *(&v45 - 4) = v16;
    *(&v45 - 3) = v18;
    *(&v45 - 16) = 0;
    *(&v45 - 1) = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC300, &qword_25454FEB8);
    sub_254506100();
    sub_25454A674();

    v33 = swift_getKeyPath();
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v35 = v57;
    v36 = &v5[*(v57 + 36)];
    *v36 = v33;
    v36[1] = sub_254508108;
    v36[2] = v34;
    v38 = v46;
    v37 = v47;
    v39 = v48;
    (*(v47 + 104))(v46, *MEMORY[0x277CDDDC0], v48);
    v40 = sub_254505A48();
    v41 = v49;
    sub_25454B4E4();
    (*(v37 + 8))(v38, v39);
    sub_2544AE150(v5, &qword_27F5FC200, &qword_25454FDC0);
    v42 = v50;
    v43 = v58;
    (*(v50 + 16))(v55, v41, v58);
    swift_storeEnumTagMultiPayload();
    sub_254505964();
    v59 = v35;
    v60 = v40;
    swift_getOpaqueTypeConformance2();
    v32 = v56;
    sub_25454AD44();

    (*(v42 + 8))(v41, v43);
  }

  sub_2544B14E8(v32, v51, &qword_27F5FC1D8, &qword_25454FDA0);
  __swift_destroy_boxed_opaque_existential_0(v61);

  return result;
}

double sub_2544F67DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a1;
  v115 = a2;
  v119 = sub_25454A0A4();
  v104 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  OpaqueTypeConformance2 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3B8, &qword_25454FF40);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v122 = &v97 - v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3C0, &qword_25454FF48);
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v123 = &v97 - v4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3C8, &qword_25454FF50);
  v113 = *(v114 - 8);
  v5 = MEMORY[0x28223BE20](v114);
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = &v97 - v7;
  v126 = type metadata accessor for AccessoryDetailsView(0);
  v120 = *(v126 - 1);
  MEMORY[0x28223BE20](v126);
  v121 = v8;
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC28, &unk_25454F660);
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v125 = &v97 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3D0, &qword_25454FF58);
  v11 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v97 - v12;
  v13 = sub_254549AB4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v97 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFE0, &unk_254550CD0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v97 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3D8, &unk_25454FF60);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v106 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v97 - v26;
  sub_25454BE14();
  v105 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549984();
  v28 = v19;
  v29 = *(v14 + 8);
  v102 = v13;
  v29(v28, v13);
  v30 = sub_254549D94();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v22, 1, v30);
  v117 = v27;
  if (v32 == 1)
  {
    sub_2544AE150(v22, &qword_27F5FBFE0, &unk_254550CD0);
LABEL_7:
    v47 = 1;
    v46 = v101;
    goto LABEL_8;
  }

  v33 = sub_254549D84();
  (*(v31 + 8))(v22, v30);
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

  v34 = v124;
  sub_254505BFC(v124, v9, type metadata accessor for AccessoryDetailsView);
  v35 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v36 = swift_allocObject();
  sub_254507518(v9, v36 + v35, type metadata accessor for AccessoryDetailsView);
  sub_25454B7F4();
  v37 = v34 + v126[13];
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v135) = v38;
  v136 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  v40 = sub_25454B7C4();
  v97 = &v97;
  MEMORY[0x28223BE20](v40);
  v27 = v117;
  sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660, MEMORY[0x277CDF028]);
  v98 = v29;
  v41 = v99;
  v42 = v118;
  v43 = v125;
  sub_25454B504();

  (*(v116 + 8))(v43, v42);
  v44 = v41;
  v29 = v98;
  v45 = v101;
  (*(v11 + 32))(v27, v44, v101);
  v46 = v45;
  v47 = 0;
LABEL_8:
  (*(v11 + 56))(v27, v47, 1, v46);
  v48 = v124;
  sub_254505BFC(v124, v9, type metadata accessor for AccessoryDetailsView);
  v49 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v50 = swift_allocObject();
  sub_254507518(v9, v50 + v49, type metadata accessor for AccessoryDetailsView);
  sub_25454B7F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB990, "ܡ");
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_25454D8F0;
  sub_25454B7A4();
  v52 = OpaqueTypeConformance2;
  sub_254549AA4();
  v29(v17, v102);
  v53 = sub_25454A074();
  v55 = v54;
  (*(v104 + 8))(v52, v119);
  *(v51 + 56) = MEMORY[0x277D837D0];
  *(v51 + 64) = sub_25450649C();
  *(v51 + 32) = v53;
  *(v51 + 40) = v55;
  v56 = sub_25454BD04();
  v58 = v57;

  v135 = v56;
  v136 = v58;
  v59 = v48 + v126[14];
  v60 = *v59;
  v61 = *(v59 + 8);
  LOBYTE(v139) = v60;
  v140 = v61;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  v62 = sub_25454B7C4();
  MEMORY[0x28223BE20](v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3E8, &qword_25454FF78);
  v119 = sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660, MEMORY[0x277CDF028]);
  v120 = sub_2544AECF0();
  v104 = sub_2545064F8();
  v64 = MEMORY[0x277D837D0];
  v65 = v118;
  v66 = v125;
  sub_25454B444();

  (*(v116 + 8))(v66, v65);
  v67 = v126;
  v125 = v126[5];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v68 = v137;
  v69 = v138;
  __swift_project_boxed_opaque_existential_1(&v135, v137);
  v139 = (*(v69 + 248))(v68, v69);
  v140 = v70;
  v71 = v48 + v67[15];
  v72 = *v71;
  v73 = *(v71 + 8);
  v133 = v72;
  v134 = v73;
  v74 = sub_25454B7C4();
  v102 = &v97;
  MEMORY[0x28223BE20](v74);
  v127 = v65;
  v128 = v64;
  v129 = v63;
  v130 = v119;
  v131 = v120;
  v132 = v104;
  v104 = MEMORY[0x277CDE9D0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v108;
  v76 = v122;
  sub_25454B444();

  (*(v107 + 8))(v76, v75);
  __swift_destroy_boxed_opaque_existential_0(&v135);
  sub_25454B7A4();
  v77 = v137;
  v78 = v138;
  __swift_project_boxed_opaque_existential_1(&v135, v137);
  v139 = (*(v78 + 272))(v77, v78);
  v140 = v79;
  v80 = v48 + v126[16];
  v81 = *v80;
  v82 = *(v80 + 8);
  v133 = v81;
  v134 = v82;
  v83 = sub_25454B7C4();
  MEMORY[0x28223BE20](v83);
  v127 = v75;
  v128 = v64;
  v129 = v65;
  v130 = OpaqueTypeConformance2;
  v131 = v120;
  v132 = v119;
  swift_getOpaqueTypeConformance2();
  v84 = v110;
  v85 = v111;
  v86 = v123;
  sub_25454B444();

  (*(v109 + 8))(v86, v85);
  __swift_destroy_boxed_opaque_existential_0(&v135);
  v87 = v117;
  v88 = v106;
  sub_2544AE240(v117, v106, &qword_27F5FC3D8, &unk_25454FF60);
  v89 = v113;
  v90 = *(v113 + 16);
  v91 = v112;
  v92 = v114;
  v90(v112, v84, v114);
  v93 = v115;
  sub_2544AE240(v88, v115, &qword_27F5FC3D8, &unk_25454FF60);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC408, &qword_25454FF88);
  v90((v93 + *(v94 + 48)), v91, v92);
  v95 = *(v89 + 8);
  v95(v84, v92);
  sub_2544AE150(v87, &qword_27F5FC3D8, &unk_25454FF60);
  v95(v91, v92);
  sub_2544AE150(v88, &qword_27F5FC3D8, &unk_25454FF60);

  return result;
}

uint64_t sub_2544F78C0()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544F796C;

  return sub_2544F7AA8();
}

uint64_t sub_2544F796C()
{

  v1 = sub_25454BDB4();

  return MEMORY[0x2822009F8](sub_25450810C, v1, v0);
}

uint64_t sub_2544F7AA8()
{
  v1[12] = v0;
  v2 = sub_254549AB4();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_25454BE14();
  v1[16] = sub_25454BE04();
  v4 = sub_25454BDB4();
  v1[17] = v4;
  v1[18] = v3;

  return MEMORY[0x2822009F8](sub_2544F7B9C, v4, v3);
}

uint64_t sub_2544F7B9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_2544F7C54;

  return MEMORY[0x28216FBD8]();
}

uint64_t sub_2544F7C54(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = v3[15];
  v6 = v3[14];
  v7 = v3[13];
  v4[20] = a2;

  (*(v6 + 8))(v5, v7);
  v8 = v3[18];
  v9 = v3[17];

  return MEMORY[0x2822009F8](sub_2544F7DE0, v9, v8);
}

uint64_t sub_2544F7DE0()
{
  v1 = *(v0 + 160);

  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 48);
    sub_2544AE2B0(0, &qword_27F5FC418, 0x277CD5528);
    v8 = sub_2544FC16C(v3, v2);
    v9 = [v8 manualEntryCode];
    if (v9)
    {
      v10 = *(v0 + 96);
      v11 = v9;
      v12 = sub_25454BC84();
      v14 = v13;

      v15 = type metadata accessor for AccessoryDetailsView(0);
      v16 = (v10 + *(v15 + 68));
      v17 = *v16;
      v18 = *(v16 + 2);
      *(v0 + 16) = v17;
      *(v0 + 32) = v18;
      *(v0 + 64) = v12;
      *(v0 + 72) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC410, &qword_25454FF90);
      sub_25454B7B4();
      v19 = v10 + *(v15 + 52);
      v20 = *(v19 + 8);
      *(v0 + 80) = *v19;
      *(v0 + 88) = v20;
      *(v0 + 168) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
      sub_25454B7B4();

      goto LABEL_15;
    }

    if (qword_27F5FACE0 != -1)
    {
      swift_once();
    }

    v21 = sub_25454A2E4();
    __swift_project_value_buffer(v21, qword_27F5FD410);
    v5 = sub_25454A2C4();
    v22 = sub_25454BF74();
    if (os_log_type_enabled(v5, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2544A5000, v5, v22, "payload.manualEntryCode is nil", v23, 2u);
      MEMORY[0x259C0FDF0](v23, -1, -1);
    }
  }

  else
  {
    if (qword_27F5FACE0 != -1)
    {
      swift_once();
    }

    v4 = sub_25454A2E4();
    __swift_project_value_buffer(v4, qword_27F5FD410);
    v5 = sub_25454A2C4();
    v6 = sub_25454BF74();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2544A5000, v5, v6, "turnOnPairingMode did not return a payload string", v7, 2u);
      MEMORY[0x259C0FDF0](v7, -1, -1);
    }
  }

LABEL_15:

  v24 = *(v0 + 8);

  return v24();
}

void sub_2544F8220(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v2 = sub_25454B274();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
}

double sub_2544F8310@<D0>(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544F83C0(a1);

  return result;
}

uint64_t sub_2544F83C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for AccessoryDetailsView(0);
  v4 = v3 - 8;
  v59 = *(v3 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25454B5E4();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v64 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = v54 - v9;
  v10 = sub_25454A0A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254549AB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v68 = sub_25454BCF4();
  *(&v68 + 1) = v18;
  v54[1] = sub_2544AECF0();
  v19 = sub_25454B274();
  v62 = v20;
  v63 = v19;
  v60 = v21;
  v61 = v22;
  v55 = "PairingModeItem_Alert_Title";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB990, "ܡ");
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25454D8E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v15 + 8))(v17, v14);
  v24 = sub_25454A074();
  v26 = v25;
  (*(v11 + 8))(v13, v10);
  v27 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v28 = sub_25450649C();
  *(v23 + 64) = v28;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v29 = v2 + *(v4 + 76);
  v30 = *v29;
  v31 = *(v29 + 16);
  v68 = v30;
  v69 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC410, &qword_25454FF90);
  sub_25454B7A4();
  v32 = v66;
  v33 = v67;
  *(v23 + 96) = v27;
  *(v23 + 104) = v28;
  *(v23 + 72) = v32;
  *(v23 + 80) = v33;
  v34 = sub_25454BD04();
  v36 = v35;

  *&v68 = v34;
  *(&v68 + 1) = v36;
  v37 = sub_25454B274();
  v54[3] = v38;
  v55 = v37;
  v54[2] = v39;
  *&v68 = sub_25454BCF4();
  *(&v68 + 1) = v40;
  v41 = sub_25454B274();
  v43 = v42;
  LOBYTE(v34) = v44;
  v45 = v56;
  sub_254505BFC(v2, v56, type metadata accessor for AccessoryDetailsView);
  v46 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v47 = swift_allocObject();
  sub_254507518(v45, v47 + v46, type metadata accessor for AccessoryDetailsView);
  sub_25454B5D4();
  sub_2544C9C64(v41, v43, v34 & 1);

  *&v68 = sub_25454BCF4();
  *(&v68 + 1) = v48;
  v49 = sub_25454B274();
  v51 = v50;
  LOBYTE(v41) = v52;
  sub_25454B5C4();
  sub_2544C9C64(v49, v51, v41 & 1);

  return sub_25454B5B4();
}

double sub_2544F8940(uint64_t a1)
{
  v2 = sub_25454A0A4();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_254549AB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v19[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v10 = v24;
  v11 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549AA4();
  (*(v6 + 8))(v8, v5);
  v12 = sub_25454A074();
  v14 = v13;
  (*(v20 + 8))(v4, v21);
  (*(v11 + 216))(v12, v14, v10, v11);

  __swift_destroy_boxed_opaque_existential_0(v23);
  v15 = (a1 + *(v9 + 56));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v23[0]) = v16;
  v23[1] = v17;
  v22 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();

  return result;
}

void sub_2544F8C04(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v2 = sub_25454B274();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
}

double sub_2544F8CF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC400, &qword_25454FF80);
  MEMORY[0x28223BE20](v71);
  v62 = &v56 - v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC430, &qword_25454FFE8);
  MEMORY[0x28223BE20](v68);
  v70 = &v56 - v3;
  v4 = type metadata accessor for AccessoryDetailsView(0);
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC428, &qword_25454FFB8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC28, &unk_25454F660);
  v69 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v56 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v73 = &v56 - v17;
  v18 = sub_254549AB4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBFE0, &unk_254550CD0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC3E8, &qword_25454FF78);
  MEMORY[0x28223BE20](v25 - 8);
  v67 = &v56 - v26;
  sub_25454BE14();
  v66 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v27 = v65;
  sub_25454B7A4();
  sub_254549984();
  (*(v19 + 8))(v21, v18);
  v28 = sub_254549D94();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v24, 1, v28) == 1)
  {
    sub_2544AE150(v24, &qword_27F5FBFE0, &unk_254550CD0);
LABEL_8:
    sub_25454A354();
    v50 = sub_25454A384();
    (*(*(v50 - 8) + 56))(v9, 0, 1, v50);
    sub_254505BFC(v27, &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
    v51 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v52 = swift_allocObject();
    sub_254507518(&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51, type metadata accessor for AccessoryDetailsView);
    v53 = v73;
    sub_25454B7E4();
    v54 = v69;
    (*(v69 + 16))(v70, v53, v10);
    swift_storeEnumTagMultiPayload();
    sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660, MEMORY[0x277CDF028]);
    sub_2544AE1F0(&qword_27F5FC3F8, &qword_27F5FC400, &qword_25454FF80, MEMORY[0x277CE14C0]);
    v49 = v67;
    sub_25454AD44();
    (*(v54 + 8))(v53, v10);
    goto LABEL_9;
  }

  v30 = sub_254549D84();
  (*(v29 + 8))(v24, v28);
  if ((v30 & 1) == 0)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v31 = v75;
  v32 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  LOBYTE(v31) = (*(v32 + 280))(v31, v32);
  __swift_destroy_boxed_opaque_existential_0(v74);
  if ((v31 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25454A354();
  v33 = sub_25454A384();
  v34 = *(v33 - 8);
  v58 = *(v34 + 56);
  v63 = v34 + 56;
  v58(v9, 0, 1, v33);
  v57 = type metadata accessor for AccessoryDetailsView;
  sub_254505BFC(v27, &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v35 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v36 = swift_allocObject();
  v64 = type metadata accessor for AccessoryDetailsView;
  v37 = sub_254507518(&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for AccessoryDetailsView);
  MEMORY[0x28223BE20](v37);
  *(&v56 - 2) = v27;
  sub_25454B7E4();
  sub_25454A354();
  v58(v9, 0, 1, v33);
  sub_254505BFC(v27, &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v57);
  v38 = swift_allocObject();
  v39 = sub_254507518(&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v35, v64);
  MEMORY[0x28223BE20](v39);
  *(&v56 - 2) = v27;
  v40 = v61;
  sub_25454B7E4();
  v41 = v69;
  v42 = *(v69 + 16);
  v43 = v59;
  v44 = v73;
  v42(v59, v73, v10);
  v45 = v60;
  v42(v60, v40, v10);
  v46 = v62;
  v42(v62, v43, v10);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC438, &qword_25454FFF0);
  v42((v46 + *(v47 + 48)), v45, v10);
  v48 = *(v41 + 8);
  v48(v45, v10);
  v48(v43, v10);
  sub_2544AE240(v46, v70, &qword_27F5FC400, &qword_25454FF80);
  swift_storeEnumTagMultiPayload();
  sub_2544AE1F0(&qword_27F5FBC20, &qword_27F5FBC28, &unk_25454F660, MEMORY[0x277CDF028]);
  sub_2544AE1F0(&qword_27F5FC3F8, &qword_27F5FC400, &qword_25454FF80, MEMORY[0x277CE14C0]);
  v49 = v67;
  sub_25454AD44();
  sub_2544AE150(v46, &qword_27F5FC400, &qword_25454FF80);
  v48(v40, v10);
  v48(v44, v10);
LABEL_9:
  sub_2544B14E8(v49, v72, &qword_27F5FC3E8, &qword_25454FF78);

  return result;
}

uint64_t sub_2544F9824()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544F796C;

  return sub_2544F98D4(0);
}

uint64_t sub_2544F98D4(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 160) = a1;
  v3 = sub_254549AB4();
  *(v2 + 64) = v3;
  *(v2 + 72) = *(v3 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  sub_25454BE14();
  *(v2 + 96) = sub_25454BE04();
  v5 = sub_25454BDB4();
  *(v2 + 104) = v5;
  *(v2 + 112) = v4;

  return MEMORY[0x2822009F8](sub_2544F99D8, v5, v4);
}

uint64_t sub_2544F99D8()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AccessoryDetailsView(0);
  *(v0 + 120) = v2;
  v3 = v1 + *(v2 + 24);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);

    v4(v6);
    sub_254502A24(v4, v5);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
    }
  }

  v9 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  if (v9 == 1)
  {
    sub_25454B7A4();
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_2544F9B84;

    return MEMORY[0x28216FB80]();
  }

  else
  {
    sub_25454B7A4();
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_2544F9DF8;

    return MEMORY[0x28216FB88]();
  }
}

uint64_t sub_2544F9B84()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_2544F9F90;
  }

  else
  {
    v8 = sub_2544F9D1C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2544F9D1C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 208))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2544F9DF8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_2544FA1E8;
  }

  else
  {
    v8 = sub_2545080F4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2544F9F90()
{
  v14 = v0;
  v1 = *(v0 + 136);

  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v2 = sub_25454A2E4();
  __swift_project_value_buffer(v2, qword_27F5FD410);
  v3 = v1;
  v4 = sub_25454A2C4();
  v5 = sub_25454BF74();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_254502AAC(0xD000000000000022, 0x80000002545555B0, &v13);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_254502AAC(0xD000000000000023, 0x8000000254555F90, &v13);
    *(v6 + 22) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v10;
    *v7 = v10;
    _os_log_impl(&dword_2544A5000, v4, v5, "%s - %s: error %@.", v6, 0x20u);
    sub_2544AE150(v7, &qword_27F5FC420, &qword_25454FFB0);
    MEMORY[0x259C0FDF0](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v8, -1, -1);
    MEMORY[0x259C0FDF0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2544FA1E8()
{
  v14 = v0;
  v1 = *(v0 + 152);

  if (qword_27F5FACE0 != -1)
  {
    swift_once();
  }

  v2 = sub_25454A2E4();
  __swift_project_value_buffer(v2, qword_27F5FD410);
  v3 = v1;
  v4 = sub_25454A2C4();
  v5 = sub_25454BF74();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_254502AAC(0xD000000000000022, 0x80000002545555B0, &v13);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_254502AAC(0xD000000000000023, 0x8000000254555F90, &v13);
    *(v6 + 22) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v10;
    *v7 = v10;
    _os_log_impl(&dword_2544A5000, v4, v5, "%s - %s: error %@.", v6, 0x20u);
    sub_2544AE150(v7, &qword_27F5FC420, &qword_25454FFB0);
    MEMORY[0x259C0FDF0](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v8, -1, -1);
    MEMORY[0x259C0FDF0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

double sub_2544FA448(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();

  return result;
}

void sub_2544FA528(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v3 + 232))(v2, v3);
  sub_2544AECF0();
  v4 = sub_25454B274();
  v6 = v5;
  LOBYTE(v3) = v7;
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(v10);

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v9;
}

double sub_2544FA668(uint64_t a1)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();

  return result;
}

void sub_2544FA748(uint64_t a1@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AccessoryDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC248, &qword_25454FE18);
  sub_25454B7A4();
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v3 + 240))(v2, v3);
  sub_2544AECF0();
  v4 = sub_25454B274();
  v6 = v5;
  LOBYTE(v3) = v7;
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(v10);

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v9;
}

uint64_t sub_2544FA888()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544AAF90;

  return sub_2544F98D4(0);
}

double sub_2544FA940@<D0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[2] = a4;
  v17[3] = a5;
  v17[1] = a6;
  v7 = type metadata accessor for AccessoryDetailsView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC428, &qword_25454FFB8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v17 - v11;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454A354();
  v13 = sub_25454A384();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_254505BFC(a1, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_254507518(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AccessoryDetailsView);
  sub_25454B7E4();

  return result;
}

double sub_2544FAB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = a3;
  v18 = a4;
  v17[1] = a2;
  v5 = type metadata accessor for AccessoryDetailsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  sub_25454BE14();
  sub_25454BE04();
  v11 = MEMORY[0x277D85700];
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_25454BE44();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_254505BFC(a1, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v13 = sub_25454BE04();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v11;
  sub_254507518(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AccessoryDetailsView);
  sub_2544B5138(0, 0, v10, v18, v15);

  return result;
}

uint64_t sub_2544FADCC()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544F796C;

  return sub_2544F98D4(1);
}

void sub_2544FAE84(uint64_t a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454BCF4();
  sub_2544AECF0();
  v3 = sub_25454B274();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
}

double sub_2544FAF80(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(v2 + 24)))
  {
    if ((*(a1 + *(v2 + 32)) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        [Strong setNavigationBarHidden:1 animated:0];
      }
    }
  }

  v11 = sub_25454BE44();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_254505BFC(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsView);
  v12 = sub_25454BE04();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = MEMORY[0x277D85700];
  sub_254507518(v5, v14 + v13, type metadata accessor for AccessoryDetailsView);
  sub_2544B5138(0, 0, v8, &unk_25454FB10, v14);

  return result;
}

uint64_t sub_2544FB224()
{
  v0[2] = sub_25454BE14();
  v0[3] = sub_25454BE04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2544F796C;

  return sub_2544FB2D0();
}

uint64_t sub_2544FB2D0()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA88, &unk_25454FB20);
  v1[3] = swift_task_alloc();
  v2 = sub_254549854();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB018, &qword_25454EE70);
  v1[7] = swift_task_alloc();
  v3 = sub_254549AB4();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = sub_254549394();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  sub_25454BE14();
  v1[15] = sub_25454BE04();
  v6 = sub_25454BDB4();
  v1[16] = v6;
  v1[17] = v5;

  return MEMORY[0x2822009F8](sub_2544FB4F8, v6, v5);
}

uint64_t sub_2544FB4F8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549A74();
  v7 = *(v5 + 8);
  v7(v3, v4);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v8 = v0[7];

    v9 = &qword_27F5FB018;
    v10 = &qword_25454EE70;
    v11 = v8;
LABEL_5:
    sub_2544AE150(v11, v9, v10);

    v18 = v0[1];

    return v18();
  }

  v12 = v0[10];
  v13 = v0[8];
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[3];
  (*(v0[13] + 32))(v0[14], v0[7], v0[12]);
  sub_25454B7A4();
  sub_254549974();
  v7(v12, v13);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v17 = v0[3];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v9 = &qword_27F5FBA88;
    v10 = &unk_25454FB20;
    v11 = v17;
    goto LABEL_5;
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  sub_254549594();
  v0[18] = sub_254549584();
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_2544FB7B4;
  v21 = v0[14];
  v22 = v0[6];

  return MEMORY[0x28216E530](v22, v21);
}

uint64_t sub_2544FB7B4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_2544FB8F4, v4, v3);
}

uint64_t sub_2544FB8F4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

double sub_2544FB9DC()
{
  v0 = sub_254549AB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_254549A64();
  (*(v1 + 8))(v3, v0);

  return result;
}

uint64_t sub_2544FBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_254549AB4();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  sub_25454BE14();
  v6[22] = sub_25454BE04();
  v9 = sub_25454BDB4();
  v6[23] = v9;
  v6[24] = v8;

  return MEMORY[0x2822009F8](sub_2544FBC44, v9, v8);
}

uint64_t sub_2544FBC44()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for AccessoryDetailsView(0);
  *(v0 + 200) = v3;
  v4 = (v2 + *(v3 + 36));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 48) = *v4;
  *(v0 + 56) = v6;

  *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  *(v0 + 241) = (*(v0 + 240) & 1) == 0;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  sub_25454B7B4();

  if (v1)
  {
    v7 = *(v0 + 128);
    *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
    sub_25454B7A4();
    *(v0 + 224) = sub_254549A94();
    v8 = swift_task_alloc();
    *(v0 + 232) = v8;
    *v8 = v0;
    v8[1] = sub_2544FBE90;
    v9 = *(v0 + 120);

    return MEMORY[0x282170B78](v9, v7);
  }

  else
  {

    v10 = (*(v0 + 112) + *(*(v0 + 200) + 40));
    v11 = *v10;
    v12 = *(v10 + 1);
    *(v0 + 80) = *v10;
    *(v0 + 88) = v12;

    sub_25454B7A4();
    *(v0 + 96) = v11;
    v13 = *(v0 + 242);
    *(v0 + 104) = v12;
    *(v0 + 243) = (v13 & 1) == 0;
    sub_25454B7B4();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_2544FBE90()
{
  v1 = *v0;
  v2 = *v0 + 16;
  v3 = *(*v0 + 224);

  v3(v2, 0);
  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_2544FBFE4, v5, v4);
}

uint64_t sub_2544FBFE4()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);

  v6 = *(v5 + 16);
  v6(v2, v1, v4);
  v6(v3, v2, v4);
  sub_25454B7B4();
  v7 = *(v5 + 8);
  v7(v2, v4);
  v7(v1, v4);
  v8 = *(v0 + 112) + *(*(v0 + 200) + 40);
  LOBYTE(v5) = *v8;
  v9 = *(v8 + 8);
  *(v0 + 80) = *v8;
  *(v0 + 88) = v9;

  sub_25454B7A4();
  v10 = *(v0 + 242);
  *(v0 + 96) = v5;
  *(v0 + 104) = v9;
  *(v0 + 243) = (v10 & 1) == 0;
  sub_25454B7B4();

  v11 = *(v0 + 8);

  return v11();
}