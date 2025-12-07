uint64_t sub_237AD8AA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_7_30();
  sub_237AD94B0(v2, v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      result = sub_237AD9458(v17, type metadata accessor for MLSoundClassifier.DataSource);
      goto LABEL_5;
    case 3u:
      v22 = *v17;
      v23 = *(v17 + 8);

      *a1 = v22;
      *(a1 + 8) = v23;
      break;
    case 4u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);

      (*(v6 + 32))(v13, v17, v4);
      sub_237B3C658();

      v20 = OUTLINED_FUNCTION_55();
      v21(v20);
      sub_237A70684(v10, 0, &v26);
      result = (*(v6 + 8))(v13, v4);
      v24 = v27;
      *a1 = v26;
      *(a1 + 8) = v24;
      break;
    default:
      sub_237C05ADC();
      OUTLINED_FUNCTION_4();
      result = (*(v18 + 8))(v17);
LABEL_5:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237AD8D80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 16) = xmmword_237C0B680;
  strcpy((inited + 32), "overlap_factor");
  *(inited + 47) = -18;
  v6 = MEMORY[0x277D839F8];
  *(inited + 48) = v1;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000237C1AEE0;
  v7 = 0.975;
  if (!v3)
  {
    v7 = v2;
  }

  *(inited + 96) = v7;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x8000000237C1AF40;
  v8 = sub_237AD9058();
  *(v5 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  *(v5 + 144) = v8;
  return sub_237C085AC();
}

uint64_t sub_237AD8ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = sub_237AC9A74(a1, &v24, 0x5F70616C7265766FLL, 0xEE00726F74636166);
  if (!v25)
  {
    goto LABEL_7;
  }

  if ((OUTLINED_FUNCTION_25_17(v4, v5, v6, MEMORY[0x277D839F8], v7, v8) & 1) == 0)
  {
LABEL_6:

    goto LABEL_9;
  }

  sub_237AC9A74(a1, &v24, 0xD000000000000011, 0x8000000237C1AF40);
  if (!v25)
  {
LABEL_7:

    goto LABEL_8;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  if ((OUTLINED_FUNCTION_25_17(v9, v10, v11, v9, v12) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_237AD91E0(v23, &v24);
  v13 = BYTE8(v24);
  if (BYTE8(v24) == 255)
  {
    goto LABEL_6;
  }

  v15 = v24;
  v16 = OUTLINED_FUNCTION_40_9();
  sub_237AC9A74(a1, v18, v16, v17);

  if (!v25)
  {
LABEL_8:
    result = sub_2379D9054(&v24, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_25_17(v19, v20, v21, MEMORY[0x277D839F8], v22);
  if (result)
  {
    *a2 = v23;
    *(a2 + 8) = v23;
    *(a2 + 16) = 0;
    *(a2 + 24) = v15;
    *(a2 + 32) = v13 & 1;
    return result;
  }

LABEL_9:
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = -1;
  return result;
}

uint64_t sub_237AD9058()
{
  v1 = *v0;
  if (v0[1])
  {
    sub_237C085AC();
    OUTLINED_FUNCTION_39_8();
    v2 = OUTLINED_FUNCTION_18_24();
    sub_237B40B6C(v2, 1684957547, 0xE400000000000000);
    OUTLINED_FUNCTION_45_5();
    OUTLINED_FUNCTION_39_8();
    v3 = OUTLINED_FUNCTION_18_24();
    sub_237B40B6C(v3, 1701869940, 0xE400000000000000);
    OUTLINED_FUNCTION_39_8();
    v4 = OUTLINED_FUNCTION_18_24();
    sub_237B40B6C(v4, 0x6E6F697369766572, 0xE800000000000000);
    return v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    *(inited + 32) = 1684957547;
    *(inited + 40) = 0xE400000000000000;
    OUTLINED_FUNCTION_44_9();
    v7[6] = v8;
    v7[7] = v9;
    v7[9] = v10;
    v7[10] = 0x6E6F697369766572;
    v7[15] = MEMORY[0x277D83B88];
    v7[11] = 0xE800000000000000;
    v7[12] = v1;
    return sub_237C085AC();
  }
}

uint64_t sub_237AD91E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237AC9A74(a1, &v42, 0x6E6F697369766572, 0xE800000000000000);
  if (v43)
  {
    OUTLINED_FUNCTION_23_20(v4, v5, v6, MEMORY[0x277D83B88], v7, v8, v9, v10, v38);
    if (swift_dynamicCast())
    {
      v11 = v38;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2379D9054(&v42, &qword_27DE9A998, &unk_237C0C100);
  }

  v11 = 1;
LABEL_6:
  v12 = OUTLINED_FUNCTION_19_22();
  sub_237AC9A74(a1, v14, v12, v13);
  if (!v43)
  {
    sub_2379D9054(&v42, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_23_20(v15, v16, v17, MEMORY[0x277D837D0], v18, v19, v20, v21, v38);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v22 = v39 == 0x687369676776 && v41 == 0xE600000000000000;
  if (!v22 && (sub_237C0929C() & 1) == 0)
  {
    if (v39 == 0xD000000000000011 && 0x8000000237C1AF60 == v41)
    {

      goto LABEL_25;
    }

    v26 = sub_237C0929C();

    if (v26)
    {
LABEL_25:
      sub_237AC9A74(a1, &v42, 1701869940, 0xE400000000000000);

      if (v43)
      {
        OUTLINED_FUNCTION_23_20(v27, v28, v29, MEMORY[0x277D837D0], v30, v31, v32, v33, v39);
        if (swift_dynamicCast())
        {
          v34 = v40;
          v35 = v41;
LABEL_30:
          if (v34 == 0x646E756F73 && v35 == 0xE500000000000000)
          {

LABEL_37:
            v24 = 1;
            goto LABEL_17;
          }

          v37 = sub_237C0929C();

          if (v37)
          {
            goto LABEL_37;
          }

LABEL_16:
          v11 = 0;
          v24 = -1;
          goto LABEL_17;
        }
      }

      else
      {
        sub_2379D9054(&v42, &qword_27DE9A998, &unk_237C0C100);
      }

      v35 = 0xE500000000000000;
      v34 = 0x646E756F73;
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  v24 = 0;
LABEL_17:
  *a2 = v11;
  *(a2 + 8) = v24;
  return result;
}

uint64_t sub_237AD9458(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237AD94B0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237AD950C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_25()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 264);

  return sub_2379E86D4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_25_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27_9(uint64_t a1, uint64_t a2)
{

  return sub_237C0929C();
}

uint64_t OUTLINED_FUNCTION_35_10(uint64_t a1, uint64_t a2)
{

  return sub_237C0929C();
}

double OUTLINED_FUNCTION_37_9()
{

  return sub_237AC9A74(v0, (v1 - 280), 1752457584, 0xE400000000000000);
}

uint64_t OUTLINED_FUNCTION_39_8()
{
  sub_2379DAD24((v0 - 80), (v0 - 112));

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_237AD982C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_237B1A25C(sub_237AD9B00);
}

uint64_t sub_237AD988C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_237AD98C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_237A9D194();
  v4 = *(*(a1 + 24) + 16);
  sub_237A9D310(v4);
  v5 = *(a1 + 24);
  *(v5 + 16) = v4 + 1;
  v6 = sub_237C074BC();
  (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *(a1 + 24) = v5;
  return swift_endAccess();
}

BOOL sub_237AD99A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_237C0749C();
  sub_237AC9A5C(v2, &v5);

  v3 = v6 != 0;
  sub_237AD9A98(&v5);
  return v3;
}

uint64_t sub_237AD9A40()
{
  sub_237AD9A18();

  return swift_deallocClassInstance();
}

uint64_t sub_237AD9A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C998, &qword_237C117C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLImageClassifier.prediction(from:)(CGImageRef from)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = OUTLINED_FUNCTION_4_43();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  sub_237AD9BC4(v3, from);
  OUTLINED_FUNCTION_5_38();
  v7 = v2;
  v8 = v1;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

id sub_237AD9BC4(uint64_t a1, id a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  v58 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  sub_2379E8EE0(0, &qword_27DE9C9A0, 0x277CE2C38);
  v17 = sub_237B1EED0(*v2);
  if (v3)
  {
    return a2;
  }

  v18 = v17;
  v57 = [objc_allocWithZone(MEMORY[0x277CE2C40]) initWithModel_];
  sub_237A6FAB8(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v58) == 1)
  {
    sub_237A6FB28(v8);
    if (!a2)
    {
      sub_2379E8AF0();
      v52 = swift_allocError();
      *v53 = 0xD000000000000019;
      v53[1] = 0x8000000237C1B020;
      OUTLINED_FUNCTION_1_11(v52, v53);

      return a2;
    }

    type metadata accessor for VNImageOption(0);
    OUTLINED_FUNCTION_0_47();
    sub_237ADABBC(v19, v20, &unk_237C0A678);
    v21 = a2;
    v22 = sub_237C085AC();
    v23 = objc_allocWithZone(MEMORY[0x277CE2D50]);
    v24 = sub_237B22EA0(v21, v22);
  }

  else
  {
    v56 = v18;
    v25 = v10;
    (*(v10 + 32))(v16, v8, v58);
    v26 = [objc_opt_self() defaultManager];
    sub_237C05A9C();
    v27 = sub_237C086BC();

    v28 = [v26 fileExistsAtPath_];

    if ((v28 & 1) == 0)
    {
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_237C08EDC();

      v59 = 0xD000000000000012;
      v60 = 0x8000000237C1B040;
      sub_237ADABBC(&qword_27DE9B3B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      a2 = v58;
      v47 = sub_237C0924C();
      MEMORY[0x2383DC360](v47);

      MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C1B060);
      v48 = v59;
      v49 = v60;
      sub_2379E8AF0();
      v50 = swift_allocError();
      *v51 = v48;
      v51[1] = v49;
      OUTLINED_FUNCTION_1_11(v50, v51);

      (*(v25 + 8))(v16, a2);
      return a2;
    }

    v29 = v58;
    (*(v25 + 16))(v13, v16, v58);
    type metadata accessor for VNImageOption(0);
    OUTLINED_FUNCTION_0_47();
    sub_237ADABBC(v30, v31, &unk_237C0A678);
    v32 = sub_237C085AC();
    v33 = objc_allocWithZone(MEMORY[0x277CE2D50]);
    v24 = sub_237ADAA08(v13, v32);
    (*(v25 + 8))(v16, v29);
    v18 = v56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_237C10D30;
  v35 = v57;
  *(v34 + 32) = v57;
  sub_2379E8EE0(0, &qword_27DE9C768, 0x277CE2DF0);
  v36 = v35;
  v37 = v24;
  v38 = sub_237C0892C();

  v59 = 0;
  v39 = [v37 performRequests:v38 error:&v59];

  a2 = v59;
  if (!v39)
  {
    v46 = v59;

    sub_237C0593C();
LABEL_17:
    swift_willThrow();

    return a2;
  }

  v40 = v59;
  v41 = sub_237B233B8(v36);
  if (!v41 || (v42 = sub_237B1ED90(v41), , !v42))
  {
    a2 = 0x8000000237C1AFE0;
    sub_2379E8AF0();
    swift_allocError();
    *v54 = 0xD000000000000033;
    *(v54 + 8) = 0x8000000237C1AFE0;
    *(v54 + 16) = 0u;
    *(v54 + 32) = 0u;
    *(v54 + 48) = 0;
    goto LABEL_17;
  }

  sub_237A254DC();
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x2383DCAF0](0, v42);
  }

  else
  {
    v43 = *(v42 + 4);
  }

  v44 = v43;

  v45 = [v44 identifier];

  a2 = sub_237C086EC();
  return a2;
}

uint64_t MLImageClassifier.prediction(from:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = OUTLINED_FUNCTION_4_43();
  (*(*(v5 - 8) + 16))(v2, a1, v5);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  sub_237AD9BC4(v2, 0);
  OUTLINED_FUNCTION_5_38();
  return v1;
}

uint64_t *MLImageClassifier.predictions(from:)(uint64_t a1)
{
  v4 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = v1;
    v25 = MEMORY[0x277D84F90];
    v12 = &v25;
    sub_237C08FCC();
    v14 = *(v6 + 16);
    v13 = v6 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v23 = v13 - 8;
    v24 = v14;
    v22 = *(v13 + 56);
    while (1)
    {
      v24(v9, v15, v4);
      sub_237C06ACC();
      if (v2)
      {
        break;
      }

      v16 = OUTLINED_FUNCTION_2_47();
      v17(v16);
      v12 = &v25;
      sub_237C08F8C();
      sub_237C08FEC();
      sub_237C08FFC();
      sub_237C08F9C();
      v15 += v22;
      if (!--v10)
      {
        v11 = v25;
        goto LABEL_6;
      }
    }

    v18 = OUTLINED_FUNCTION_2_47();
    v19(v18);
  }

  else
  {
LABEL_6:
    v12 = sub_237ADA570(v11);
  }

  return v12;
}

id sub_237ADA570(uint64_t a1)
{
  sub_2379E8EE0(0, &qword_27DE9C9A0, 0x277CE2C38);
  result = sub_237B1EED0(*v1);
  if (!v2)
  {
    v5 = result;
    v8 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x2383DD1C0]();
    sub_237ADA644(v5, a1, &v8, &v7);
    objc_autoreleasePoolPop(v6);

    return v8;
  }

  return result;
}

void sub_237ADA644(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v34 = [objc_allocWithZone(MEMORY[0x277CE2C40]) initWithModel_];
  v35 = sub_237A254D8(a2);
  for (i = 0; ; ++i)
  {
    if (v35 == i)
    {

      return;
    }

    sub_237A254DC();
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2383DCAF0](i, a2);
    }

    else
    {
      v7 = *(a2 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
    }

    type metadata accessor for VNImageOption(0);
    sub_237ADABBC(&qword_27DE9A7C0, type metadata accessor for VNImageOption, &unk_237C0A678);
    v9 = v8;
    v10 = sub_237C085AC();
    v11 = objc_allocWithZone(MEMORY[0x277CE2D50]);
    v12 = sub_237ADAB00(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_237C10D30;
    *(v13 + 32) = v34;
    sub_2379E8EE0(0, &qword_27DE9C768, 0x277CE2DF0);
    v14 = v34;
    v15 = sub_237C0892C();

    v36[0] = 0;
    v16 = [v12 performRequests:v15 error:v36];

    if (!v16)
    {
      break;
    }

    v17 = v36[0];
    v18 = sub_237B233B8(v14);
    if (!v18 || (v19 = sub_237B1ED90(v18), , !v19))
    {
      sub_2379E8AF0();
      v29 = swift_allocError();
      *v30 = 0xD000000000000033;
      *(v30 + 8) = 0x8000000237C1AFE0;
      *(v30 + 16) = 0u;
      *(v30 + 32) = 0u;
      *(v30 + 48) = 0;
      v31 = v9;
      goto LABEL_17;
    }

    sub_237A254DC();
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x2383DCAF0](0, v19);
    }

    else
    {
      v20 = *(v19 + 4);
    }

    v21 = v20;

    v22 = [v21 identifier];

    v23 = sub_237C086EC();
    v25 = v24;

    sub_237A9D104();
    v26 = *(*a3 + 16);
    sub_237A9D220(v26);

    v27 = *a3;
    *(v27 + 16) = v26 + 1;
    v28 = v27 + 16 * v26;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
  }

  v32 = v36[0];

  v29 = sub_237C0593C();
  v31 = v12;
  v12 = v9;
LABEL_17:
  swift_willThrow();

  *a4 = v29;
}

id sub_237ADAA08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_237C059EC();
  type metadata accessor for VNImageOption(0);
  OUTLINED_FUNCTION_0_47();
  sub_237ADABBC(v6, v7, &unk_237C0A678);
  v8 = sub_237C0855C();

  v9 = [v3 initWithURL:v5 options:v8];

  v10 = sub_237C05ADC();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

id sub_237ADAB00(void *a1, uint64_t a2)
{
  type metadata accessor for VNImageOption(0);
  sub_237ADABBC(&qword_27DE9A7C0, type metadata accessor for VNImageOption, &unk_237C0A678);
  v4 = sub_237C0855C();

  v5 = [v2 initWithCIImage:a1 options:v4];

  return v5;
}

uint64_t sub_237ADABBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_4_43()
{

  return sub_237C05ADC();
}

uint64_t OUTLINED_FUNCTION_5_38()
{

  return sub_237A6FB28(v0);
}

void MLDataTable.group<A>(columnsNamed:aggregators:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v71 = a2;
  v60 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v65 = &v58 - v12;
  v63 = *v5;
  v61 = *(v5 + 8);
  v13 = MEMORY[0x2383DDAC0](0, v11);
  if (!v13)
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v14 = v13;
  type metadata accessor for CMLSequence();
  inited = swift_initStackObject();
  v59 = v14;
  *(inited + 16) = v14;
  v67 = inited;
  *(inited + 24) = 1;
  v16 = a1 + 40;
  v17 = *(a1 + 16) + 1;
  while (--v17)
  {
    type metadata accessor for CMLFeatureValue();
    swift_bridgeObjectRetain_n();
    v18 = sub_237A2E7CC();
    v16 += 16;

    sub_237A2DE9C(v18);
  }

  v19 = MEMORY[0x2383DDB50](0);
  if (!v19)
  {
    goto LABEL_55;
  }

  v20 = v19;
  type metadata accessor for CMLAggregator();
  v21 = swift_initStackObject();
  *(v21 + 16) = v20;
  (*(v8 + 16))(v10, v71, a3);
  sub_237C0885C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_237C08D7C();
    v22 = v72;
    if (!v72)
    {
      break;
    }

    v24 = v73;
    v23 = v74;

    v70 = v24;
    v71 = v23;
    sub_237ADB770(v25);
    v69 = *(v22 + 2);
    if (v69)
    {
      v26 = 0;
      v27 = v22 + 48;
      v68 = v22;
      while (v26 < *(v22 + 2))
      {
        v29 = *(v27 - 2);
        v28 = *(v27 - 1);
        ++v26;
        v30 = 0xEF656772654D7972;
        v31 = 0x616E6F6974636944;
        v32 = *v27;
        switch(*v27)
        {
          case 1:
            v30 = 0xE600000000000000;
            v31 = 0x6E696D677241;
            break;
          case 2:
            v30 = 0xE600000000000000;
            v31 = 0x78616D677241;
            break;
          case 3:
            v30 = 0xE300000000000000;
            v31 = 7235917;
            switch(v29)
            {
              case 1:
                v31 = 7889229;
                break;
              case 2:
                v31 = 7173459;
                break;
              case 3:
                v30 = 0xE400000000000000;
                v31 = 1851876685;
                break;
              case 4:
                v30 = 0xE500000000000000;
                v31 = 0x7665647453;
                break;
              case 5:
                v30 = 0xE500000000000000;
                v31 = 0x746E756F43;
                break;
              case 6:
                v31 = 0x74636E6974736944;
                v46 = 0x746E756F43;
                goto LABEL_39;
              case 7:
                v30 = 0xE800000000000000;
                v31 = 0x65636E6169726156;
                break;
              case 8:
                v31 = 0x65636E6575716553;
                v46 = 0x656772654DLL;
LABEL_39:
                v30 = v46 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 9:
                v30 = 0xE900000000000065;
                v31 = 0x6E4F7463656C6553;
                break;
              default:
                goto LABEL_14;
            }

            break;
          default:
            break;
        }

LABEL_14:
        v72 = v70;
        v73 = v71;

        v33 = OUTLINED_FUNCTION_175();
        sub_237ADB7B0(v33, v34, v32);
        MEMORY[0x2383DC360](v31, v30);

        v35 = v72;
        v36 = v73;
        switch(v32)
        {
          case 0:

            sub_237A31448(v35, v36, v70, v71, v29, v28);

            v37 = OUTLINED_FUNCTION_175();
            sub_237ADB7C8(v37, v38, 0);
            v39 = OUTLINED_FUNCTION_175();
            v41 = 0;
            goto LABEL_22;
          case 1:

            OUTLINED_FUNCTION_4_44(0);

            v44 = OUTLINED_FUNCTION_175();
            sub_237ADB7C8(v44, v45, 1u);
            v39 = OUTLINED_FUNCTION_175();
            v41 = 1;
            goto LABEL_22;
          case 2:

            OUTLINED_FUNCTION_4_44(1);

            v42 = OUTLINED_FUNCTION_175();
            sub_237ADB7C8(v42, v43, 2u);
            v39 = OUTLINED_FUNCTION_175();
            v41 = 2;
LABEL_22:
            sub_237ADB7C8(v39, v40, v41);
            break;
          case 3:
            switch(v29)
            {
              case 1:
                OUTLINED_FUNCTION_1_47(7889261);
                goto LABEL_41;
              case 2:
                OUTLINED_FUNCTION_1_47(7173491);
                goto LABEL_41;
              case 3:
                OUTLINED_FUNCTION_1_47(6780513);
                goto LABEL_41;
              case 4:
                OUTLINED_FUNCTION_1_47(6583411);
                goto LABEL_41;
              case 5:

                sub_237A310C8(0x746E756F63, 0xE500000000000000, 0x746E756F43, 0xE500000000000000, 0, 0xE000000000000000);
                goto LABEL_42;
              case 6:
                OUTLINED_FUNCTION_2_48(0x69645F746E756F63, 0xEE0074636E697473);
                goto LABEL_41;
              case 7:
                OUTLINED_FUNCTION_1_47(7496054);
                goto LABEL_41;
              case 8:
                OUTLINED_FUNCTION_2_48(0x7461636E6F63, 0xE600000000000000);
                goto LABEL_41;
              case 9:
                OUTLINED_FUNCTION_2_48(0x6F5F7463656C6573, 0xEA0000000000656ELL);
                goto LABEL_41;
              default:
                OUTLINED_FUNCTION_1_47(7235949);
LABEL_41:

                break;
            }

            break;
          default:
            JUMPOUT(0);
        }

LABEL_42:
        v22 = v68;
        v27 += 24;
        if (v69 == v26)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_49:
      v49 = swift_allocError();
      *v53 = v26;

      goto LABEL_50;
    }

LABEL_43:
  }

  (*(v62 + 8))(v65, AssociatedTypeWitness);
  v26 = v63;
  if ((v61 & 1) == 0)
  {
    v50 = *(*(v63 + 2) + 16);
    v51 = *(v21 + 16);
    sub_2379DBCF4(v63, 0);
    v52 = sub_237B14194(v50, v59, v51);
    v56 = v52;
    if (v52)
    {
      type metadata accessor for CMLTable();
      v57 = swift_allocObject();
      *(v57 + 16) = v56;

      sub_2379DBC9C(v63, 0);
      type metadata accessor for _DataTable();
      swift_allocObject();
      v49 = sub_237B6C578(v57);
      v54 = 0;
      goto LABEL_51;
    }

LABEL_56:
    __break(1u);
    OUTLINED_FUNCTION_0_48();
    swift_unexpectedError();
    __break(1u);
    JUMPOUT(0x237ADB618);
  }

  v72 = v63;
  v47 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  v48 = sub_237C0925C();
  if (!v48)
  {
    goto LABEL_49;
  }

  v49 = v48;

  sub_2379DBC9C(v26, 1);
LABEL_50:
  v54 = 1;
LABEL_51:
  v55 = v60;
  *v60 = v49;
  *(v55 + 8) = v54;
}

uint64_t MLDataTable.Aggregator.operations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MLDataTable.Aggregator.columnName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MLDataTable.Aggregator.columnName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MLDataTable.Aggregator.init(operations:of:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_237ADB770(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_237ADB7B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_237ADB7C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8CreateML11MLDataTableV10AggregatorV10OperationsO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_237ADB80C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_237ADB84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_237ADB890(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_47(uint64_t a1)
{
  v5 = *(v3 - 192);
  v6 = *(v3 - 184);

  return sub_237A310C8(a1, 0xE300000000000000, v1, v2, v5, v6);
}

uint64_t OUTLINED_FUNCTION_2_48(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 - 192);
  v7 = *(v4 - 184);

  return sub_237A310C8(a1, a2, v2, v3, v6, v7);
}

uint64_t OUTLINED_FUNCTION_4_44(uint64_t a1)
{
  v7 = *(v5 - 192);
  v8 = *(v5 - 184);

  return sub_237A311F4(a1, v1, v3, v7, v8, v4, v2);
}

void sub_237ADB934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v26 = MEMORY[0x277D84F90];
    sub_237AC8A34(0, v1, 0);
    v5 = sub_237AE854C(v2);
    v6 = 0;
    v7 = v2 + 56;
    v21 = v2 + 64;
    v22 = v1;
    v23 = v2;
    v24 = v2 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v9 = v4;
        v25 = v3;

        v10 = sub_237C0879C();

        v12 = *(v26 + 16);
        v11 = *(v26 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_237AC8A34(v11 > 1, v12 + 1, 1);
        }

        *(v26 + 16) = v12 + 1;
        *(v26 + 8 * v12 + 32) = v10;
        if (v9)
        {
          goto LABEL_29;
        }

        v2 = v23;
        v7 = v24;
        v13 = 1 << *(v23 + 32);
        if (v5 >= v13)
        {
          goto LABEL_26;
        }

        v14 = *(v24 + 8 * v8);
        if ((v14 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v23 + 36) != v25)
        {
          goto LABEL_28;
        }

        v15 = v14 & (-2 << (v5 & 0x3F));
        if (v15)
        {
          v13 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v8 << 6;
          v17 = v8 + 1;
          v18 = (v21 + 8 * v8);
          while (v17 < (v13 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_2379E8FD0(v5, v25, 0);
              v13 = __clz(__rbit64(v19)) + v16;
              goto LABEL_19;
            }
          }

          sub_2379E8FD0(v5, v25, 0);
        }

LABEL_19:
        if (++v6 == v22)
        {
          return;
        }

        v4 = 0;
        v3 = *(v23 + 36);
        v5 = v13;
        if (v13 < 0)
        {
          break;
        }
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
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

BOOL MLClassifierMetrics.isValid.getter()
{
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_45();
  v2 = OUTLINED_FUNCTION_11_31();
  sub_237ADD8DC(v2, v3);
  v4 = swift_getEnumCaseMultiPayload() < 2;
  sub_237ADE880(v0, type metadata accessor for MLClassifierMetrics.Contents);
  return v4;
}

unint64_t MLClassifierMetrics.description.getter()
{
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  sub_237ADD8DC(v0, v0);
  OUTLINED_FUNCTION_11_31();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v5 = *v0;
    v7 = 0;
    swift_getErrorValue();
    sub_237C0927C();
  }

  else
  {
    OUTLINED_FUNCTION_9_31();
    sub_237ADE880(v0, v2);
    v7 = 0xD000000000000023;
    ML19MLClassifierMetricsV16debugDescriptionSSvg_0 = _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
    MEMORY[0x2383DC360](ML19MLClassifierMetricsV16debugDescriptionSSvg_0);

    sub_237ADD940();
    MEMORY[0x2383DC360]();

    v4 = sub_237ADE14C();
    MEMORY[0x2383DC360](v4);
  }

  return v7;
}

uint64_t sub_237ADBD64(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_237ADFA24(0, result, v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      a3(0);

      return OUTLINED_FUNCTION_11_31();
    }
  }

  __break(1u);
  return result;
}

uint64_t MLClassifierMetrics.init(classificationError:confusion:precisionRecall:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(a2 + 8);
  v11 = *a1;
  v12 = v6;
  v9 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_237A70ED4(&v11, a3 + *(v9 + 20));
  v11 = v7;
  v12 = v8;
  sub_237A70ED4(&v11, a3 + *(v9 + 24));
  *a3 = a4;
  type metadata accessor for MLClassifierMetrics.Contents(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MLClassifierMetrics.error.getter()
{
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  sub_237ADD8DC(v0, v3 - v2);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return *v4;
  }

  sub_237ADE880(v4, type metadata accessor for MLClassifierMetrics.Contents);
  return 0;
}

double MLClassifierMetrics.classificationError.getter()
{
  v3 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = (v6 - v5);
  v8 = type metadata accessor for AnyClassificationMetrics(0);
  v9 = OUTLINED_FUNCTION_20(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_45();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  sub_237ADD8DC(v0, v2);
  v11 = OUTLINED_FUNCTION_25_18();
  if (v11)
  {
    if (v11 == 1)
    {
      sub_237ADE8D8(v2, v7);
      v12 = *v7;
      OUTLINED_FUNCTION_2_49();
      sub_237ADE880(v7, v13);
      v14 = 1.0 - v12;
    }

    else
    {
      OUTLINED_FUNCTION_9_31();
      sub_237ADE880(v2, v16);
      v14 = 0.0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_24_20();
    v14 = sub_237B0D7E8();
    OUTLINED_FUNCTION_0_49();
    sub_237ADE880(v1, v15);
  }

  return 1.0 - v14;
}

double sub_237ADC0C4()
{
  v3 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = (v6 - v5);
  v8 = type metadata accessor for AnyClassificationMetrics(0);
  v9 = OUTLINED_FUNCTION_20(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_45();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  sub_237ADD8DC(v0, v2);
  v11 = OUTLINED_FUNCTION_25_18();
  if (v11)
  {
    if (v11 == 1)
    {
      sub_237ADE8D8(v2, v7);
      v12 = *v7;
      OUTLINED_FUNCTION_2_49();
      sub_237ADE880(v7, v13);
      return 1.0 - v12;
    }

    else
    {
      sub_237ADE880(v2, type metadata accessor for MLClassifierMetrics.Contents);
      return 0.0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_24_20();
    v14 = sub_237B0D7E8();
    OUTLINED_FUNCTION_0_49();
    sub_237ADE880(v1, v15);
  }

  return v14;
}

void MLClassifierMetrics.confusionDataFrame.getter()
{
  OUTLINED_FUNCTION_153();
  v35 = v0;
  v36 = v4;
  v34 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0();
  v33[2] = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_94();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v33[1] = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_60();
  v16 = type metadata accessor for AnyClassificationMetrics(0);
  v17 = OUTLINED_FUNCTION_20(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  sub_237ADD8DC(v35, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_48();
    sub_237ADE8D8(v0, v20);
    sub_2379D8FF4(v20, v3, &qword_27DE9A9F8, &unk_237C0E1C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = OUTLINED_FUNCTION_12_26();
      v30(v29);
      sub_2379E575C(v2);
      (*(v0 + 8))(v2, v6);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_13_23();
      v32(v31);
      sub_2379E51D0(v13);
      (*(v14 + 8))(v13, v9);
    }

    OUTLINED_FUNCTION_0_49();
    v28 = v20;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v23 = OUTLINED_FUNCTION_11_31();
    sub_237ADE8D8(v23, v24);
    v25 = *(v34 + 20);
    sub_237C05DBC();
    OUTLINED_FUNCTION_4();
    (*(v26 + 16))(v36, v1 + v25);
    OUTLINED_FUNCTION_2_49();
    v28 = v1;
LABEL_9:
    sub_237ADE880(v28, v27);
    goto LABEL_10;
  }

  sub_237ADE880(v0, type metadata accessor for MLClassifierMetrics.Contents);
  sub_237C05DAC();
LABEL_10:
  OUTLINED_FUNCTION_150();
}

void MLClassifierMetrics.precisionRecall.getter(void *a1@<X8>)
{
  v3 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_45();
  MLClassifierMetrics.precisionRecallDataFrame.getter();
  sub_237A70684(v1, 0, a1);
}

void MLClassifierMetrics.precisionRecallDataFrame.getter()
{
  OUTLINED_FUNCTION_153();
  v40 = v0;
  v41 = v4;
  v39 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0();
  v38[2] = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_94();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v38[1] = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_60();
  v16 = type metadata accessor for AnyClassificationMetrics(0);
  v17 = OUTLINED_FUNCTION_20(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  sub_237ADD8DC(v40, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_48();
    sub_237ADE8D8(v0, v20);
    sub_2379D8FF4(v20, v3, &qword_27DE9A9F8, &unk_237C0E1C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = OUTLINED_FUNCTION_12_26();
      v30(v29);
      sub_2379E62D4(v2, v31, v32, v33, v34, v35);
      (*(v0 + 8))(v2, v6);
    }

    else
    {
      v36 = OUTLINED_FUNCTION_13_23();
      v37(v36);
      sub_2379E5C70(v13);
      (*(v14 + 8))(v13, v9);
    }

    OUTLINED_FUNCTION_0_49();
    v28 = v20;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v23 = OUTLINED_FUNCTION_11_31();
    sub_237ADE8D8(v23, v24);
    v25 = *(v39 + 24);
    sub_237C05DBC();
    OUTLINED_FUNCTION_4();
    (*(v26 + 16))(v41, v1 + v25);
    OUTLINED_FUNCTION_2_49();
    v28 = v1;
LABEL_9:
    sub_237ADE880(v28, v27);
    goto LABEL_10;
  }

  sub_237ADE880(v0, type metadata accessor for MLClassifierMetrics.Contents);
  sub_237C05DAC();
LABEL_10:
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237ADCB34()
{
  v3 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v5 = type metadata accessor for AnyClassificationMetrics(0);
  v6 = OUTLINED_FUNCTION_20(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_45();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  sub_237ADD8DC(v0, v2);
  v8 = OUTLINED_FUNCTION_25_18();
  if (v8)
  {
    if (v8 != 1)
    {
      sub_237ADE880(v2, type metadata accessor for MLClassifierMetrics.Contents);
      return MEMORY[0x277D84FA0];
    }

    sub_237ADE8D8(v2, v0);
    sub_237ADCCA0();
    v10 = v9;
    OUTLINED_FUNCTION_2_49();
    v12 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_24_20();
    sub_237B0D298();
    v10 = v13;
    OUTLINED_FUNCTION_0_49();
    v12 = v1;
  }

  sub_237ADE880(v12, v11);
  return v10;
}

void sub_237ADCCA0()
{
  OUTLINED_FUNCTION_153();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v52 = v2;
  v53 = v1;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_20(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  OUTLINED_FUNCTION_0();
  v54 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_94();
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v55 = v15;
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_237C05DFC();
  v19 = sub_237C05FFC();
  if (!swift_dynamicCastMetatype())
  {
    v35 = v52;
    v34 = v53;
    if (!swift_dynamicCastMetatype())
    {
      sub_237ADFA70();
      v41 = v56;
      v42 = sub_237C08B3C();
      v43 = MEMORY[0x277D84F90];
      if (v42)
      {
        v44 = v42;
        v59 = MEMORY[0x277D84F90];
        sub_237AC8A74();
        v43 = v59;
        sub_237C08B2C();
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        __break(1u);
LABEL_18:
        sub_237AC8A74();
        v43 = v59;
        while (1)
        {
          *(v43 + 16) = v19;
          v50 = v43 + 16 * v34;
          *(v50 + 32) = v8;
          *(v50 + 40) = v0;
          sub_237C08B6C();
          if (!--v44)
          {
            break;
          }

LABEL_19:
          v45 = sub_237C08B9C();
          sub_2379D8FF4(v46, v57, &qword_27DE9A998, &unk_237C0C100);
          v45(v58, 0);
          sub_2379D8FF4(v57, v58, &qword_27DE9A998, &unk_237C0C100);
          v47 = OUTLINED_FUNCTION_11_31();
          __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
          v8 = sub_237C0874C();
          v0 = v49;
          sub_237A286E0(v57);
          v59 = v43;
          v34 = *(v43 + 16);
          v19 = v34 + 1;
          if (v34 >= *(v43 + 24) >> 1)
          {
            goto LABEL_18;
          }
        }
      }

      sub_237B42F98(v43);
      OUTLINED_FUNCTION_15_23();
      v37 = v18;
      v40 = v41;
      goto LABEL_14;
    }

    sub_237C05FEC();
    v58[0] = 0;
    v58[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_3_39(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
    sub_237C05EAC();
    (*(v35 + 8))(v5, v34);
    sub_237B43058();
    OUTLINED_FUNCTION_15_23();
    v37 = v18;
LABEL_13:
    v40 = v56;
LABEL_14:
    v36(v37, v40);
    OUTLINED_FUNCTION_150();
    return;
  }

  sub_237C05FEC();
  v58[0] = 0;
  OUTLINED_FUNCTION_3_39(&qword_27DE9C7A0, &qword_27DE9AB98, &unk_237C0B900);
  sub_237C05EAC();
  (*(v10 + 8))(v0, v8);
  sub_2379D9224(&qword_27DE9C9E0, &qword_27DE9C798, &qword_237C10E70, MEMORY[0x277CE18B0]);
  v20 = sub_237C08B3C();
  v21 = v18;
  if (!v20)
  {
    v38 = OUTLINED_FUNCTION_20_18();
    v39(v38);
    v23 = MEMORY[0x277D84F90];
LABEL_12:
    sub_237B42F98(v23);
    OUTLINED_FUNCTION_15_23();
    v37 = v21;
    goto LABEL_13;
  }

  v22 = v20;
  v57[0] = MEMORY[0x277D84F90];
  sub_237AC8A74();
  v23 = v57[0];
  sub_237C08B2C();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v53 = v21;
    do
    {
      v24 = sub_237C08B9C();
      v26 = *v25;
      v24(v58, 0);
      v58[0] = v26;
      v27 = sub_237C0924C();
      v29 = v28;
      v57[0] = v23;
      v30 = *(v23 + 16);
      if (v30 >= *(v23 + 24) >> 1)
      {
        sub_237AC8A74();
        v23 = v57[0];
      }

      *(v23 + 16) = v30 + 1;
      v31 = v23 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v29;
      sub_237C08B6C();
      --v22;
    }

    while (v22);
    v32 = OUTLINED_FUNCTION_20_18();
    v33(v32);
    v21 = v53;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_237ADD304()
{
  v3 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v5 = type metadata accessor for AnyClassificationMetrics(0);
  v6 = OUTLINED_FUNCTION_20(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_45();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  sub_237ADD8DC(v0, v2);
  v8 = OUTLINED_FUNCTION_25_18();
  if (v8)
  {
    if (v8 == 1)
    {
      sub_237ADE8D8(v2, v0);
      sub_237ADCCA0();
      v10 = v9;
      OUTLINED_FUNCTION_2_49();
      sub_237ADE880(v0, v11);
      v12 = *(v10 + 16);
    }

    else
    {
      sub_237ADE880(v2, type metadata accessor for MLClassifierMetrics.Contents);
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_24_20();
    sub_237B0D484();
    v12 = v13;
    OUTLINED_FUNCTION_0_49();
    sub_237ADE880(v1, v14);
  }

  return v12;
}

void sub_237ADD47C()
{
  OUTLINED_FUNCTION_153();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  v9 = type metadata accessor for AnyClassificationMetrics(0);
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  sub_237ADD8DC(v0, v16 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_237ADE880(v17, type metadata accessor for MLClassifierMetrics.Contents);
      goto LABEL_7;
    }

    sub_237ADE8D8(v17, v1);
    sub_237C05DEC();
    sub_237C05F7C();
    (*(v4 + 8))(v7, v2);
    OUTLINED_FUNCTION_2_49();
    v20 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    sub_237ADE8D8(v17, v13);
    sub_237B0D63C();
    OUTLINED_FUNCTION_0_49();
    v20 = v13;
  }

  sub_237ADE880(v20, v19);
LABEL_7:
  OUTLINED_FUNCTION_150();
}

unint64_t _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0()
{
  sub_237C08EDC();

  sub_237ADD47C();
  v0 = sub_237C0924C();
  MEMORY[0x2383DC360](v0);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  sub_237C08EDC();

  sub_237ADD304();
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1B1E0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237C0B660;
  v3 = sub_237ADC0C4();
  v4 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3 * 100.0;
  v5 = sub_237C0871C();
  MEMORY[0x2383DC360](v5);

  return 0xD000000000000014;
}

uint64_t sub_237ADD8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLClassifierMetrics.Contents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_237ADD940()
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v61 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v1 = &v61 - v0;
  v2 = sub_237ADCB34();
  sub_237B98EF8(v2, v3, v4, v5, v6, v7, v8, v9, v61, v62);
  v11 = v10;

  v71 = v1;
  sub_237ADE9A4(v11, v1);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  *&v69 = v12;
  if (v12)
  {
    v77 = MEMORY[0x277D84F90];
    sub_237AC8A34(0, v12, 0);
    v14 = v77;
    v15 = v11 + 40;
    do
    {

      v16 = sub_237C0879C();

      v77 = v14;
      v18 = v14[2];
      v17 = v14[3];
      if (v18 >= v17 >> 1)
      {
        sub_237AC8A34(v17 > 1, v18 + 1, 1);
        v14 = v77;
      }

      v14[2] = v18 + 1;
      v14[v18 + 4] = v16;
      v15 += 16;
      --v12;
    }

    while (v12);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v19 = sub_2379FBD74(v14);
  v21 = v20;

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  v70 = sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
  v23 = sub_237C0834C();
  v24 = *(v23 + 16);
  if (v24)
  {
    v67 = v22;
    v68 = v11;
    v77 = v13;
    sub_237AC8A34(0, v24, 0);
    v25 = 32;
    v26 = v77;
    while (1)
    {
      v27 = *(v23 + v25);
      if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v27 <= -9.2234e18)
      {
        goto LABEL_59;
      }

      if (v27 >= 9.2234e18)
      {
        goto LABEL_60;
      }

      v75 = v27;
      sub_237C0924C();
      v28 = sub_237C0879C();

      v77 = v26;
      v30 = v26[2];
      v29 = v26[3];
      if (v30 >= v29 >> 1)
      {
        sub_237AC8A34(v29 > 1, v30 + 1, 1);
        v26 = v77;
      }

      v26[2] = v30 + 1;
      v26[v30 + 4] = v28;
      v25 += 4;
      if (!--v24)
      {

        v22 = v67;
        v11 = v68;
        goto LABEL_21;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_21:
  v31 = sub_2379FBD74(v26);
  v33 = v32;

  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v31;
  }

  if (v34 <= v22)
  {
    v34 = v22;
  }

  if (__OFADD__(v34, 1))
  {
    goto LABEL_65;
  }

  v35 = sub_237C0879C();
  if (v35 <= v22)
  {
    v36 = v22;
  }

  else
  {
    v36 = v35;
  }

  v66 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    goto LABEL_66;
  }

  v62 = sub_237ADBD64(20, v11, sub_237A59760);
  v65 = v37;
  v39 = v38;
  v41 = v40;
  v77 = 0xD00000000000001ELL;
  v78 = 0x8000000237C1B180;
  if (v69 >= 0x15)
  {
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_237C08EDC();

    v75 = 0xD000000000000010;
    v76 = 0x8000000237C1B1A0;
    v73 = 20;
    v42 = sub_237C0924C();
    MEMORY[0x2383DC360](v42);

    MEMORY[0x2383DC360](762929709, 0xE400000000000000);
    v73 = 20;
    v43 = sub_237C0924C();
    MEMORY[0x2383DC360](v43);

    MEMORY[0x2383DC360](0xA2A2A2A2A2029, 0xE700000000000000);
    MEMORY[0x2383DC360](v75, v76);
  }

  MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C1B0B0);
  v75 = 0x6572505C65757254;
  v76 = 0xE900000000000064;
  v73 = 32;
  v74 = 0xE100000000000000;
  sub_2379F3408();
  v44 = sub_237C08DAC();
  MEMORY[0x2383DC360](v44);

  v45 = v41 >> 1;
  v46 = (v41 >> 1) - v39;
  v64 = v41 >> 1;
  if (v41 >> 1 == v39)
  {
LABEL_38:
    MEMORY[0x2383DC360](10, 0xE100000000000000);
    v50 = v45 - v39;
    v51 = __OFSUB__(v45, v39);
    v63 = v51;
    swift_unknownObjectRetain();
    v52 = 0;
    v69 = xmmword_237C0B670;
    while (!__OFADD__(v52, 1))
    {
      if (v39 == v45)
      {
        swift_unknownObjectRelease_n();
        (*(v61 + 8))(v71, v72);
        return;
      }

      if (v39 >= v45)
      {
        goto LABEL_62;
      }

      v68 = v52 + 1;
      v53 = *(v65 + 16 * v39 + 8);
      v75 = *(v65 + 16 * v39);
      v76 = v53;
      v73 = 32;
      v74 = 0xE100000000000000;
      v54 = sub_237C08DAC();
      MEMORY[0x2383DC360](v54);

      if (v63)
      {
        goto LABEL_63;
      }

      if (v50 < 0)
      {
        goto LABEL_64;
      }

      v67 = v39;
      if (v50)
      {
        v55 = 0;
        while (1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v56 = swift_allocObject();
          *(v56 + 16) = v69;
          *(v56 + 32) = v52;
          *(v56 + 40) = v55;
          sub_237C0835C();

          if ((v75 & 0x7FFFFFFF) > 0x7F7FFFFF)
          {
            break;
          }

          if (*&v75 <= -9.2234e18)
          {
            goto LABEL_56;
          }

          if (*&v75 >= 9.2234e18)
          {
            goto LABEL_57;
          }

          ++v55;
          v75 = *&v75;
          v75 = sub_237C0924C();
          v76 = v57;
          v73 = 32;
          v74 = 0xE100000000000000;
          v58 = sub_237C08DAC();
          v60 = v59;

          MEMORY[0x2383DC360](v58, v60);

          if (v50 == v55)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_53:
      v39 = v67 + 1;
      MEMORY[0x2383DC360](10, 0xE100000000000000);
      v52 = v68;
      v45 = v64;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if ((v41 >> 1) > v39)
  {
    swift_unknownObjectRetain();
    v47 = (v65 + 16 * v39 + 8);
    do
    {
      v48 = *v47;
      v75 = *(v47 - 1);
      v76 = v48;
      v73 = 32;
      v74 = 0xE100000000000000;
      v49 = sub_237C08DAC();
      MEMORY[0x2383DC360](v49);

      v47 += 2;
      --v46;
    }

    while (v46);
    swift_unknownObjectRelease();
    v45 = v64;
    goto LABEL_38;
  }

LABEL_67:
  __break(1u);
}

unint64_t sub_237ADE14C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v51 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v62 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v47 - v3;
  v5 = sub_237C0602C();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v47 - v9);
  v11 = sub_237C05DBC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MLClassifierMetrics.precisionRecallDataFrame.getter();
  if (sub_237C05C5C())
  {
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  else
  {
    v59 = v12;
    v49 = v11;
    v50 = v8;
    v61 = v7;
    v16 = sub_237ADCB34();
    sub_237ADB934(v16);
    v18 = v17;

    v19 = sub_2379FBD74(v18);
    v60 = v4;
    v21 = v20;

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v19;
    }

    v69 = 0xD000000000000041;
    v70 = 0x8000000237C1B110;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v23 = swift_allocObject();
    v55 = xmmword_237C0B680;
    *(v23 + 16) = xmmword_237C0B680;
    v67 = 0x7373616C43;
    v68 = 0xE500000000000000;
    v65 = 32;
    v66 = 0xE100000000000000;
    sub_2379F3408();
    v24 = MEMORY[0x277D837D0];
    v54 = v22;
    v25 = sub_237C08DAC();
    v27 = v26;
    *(v23 + 56) = v24;
    v28 = sub_237A8E8E4();
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    *(v23 + 96) = v24;
    *(v23 + 104) = v28;
    *(v23 + 64) = v28;
    strcpy((v23 + 72), "Precision(%)");
    *(v23 + 85) = 0;
    *(v23 + 86) = -5120;
    *(v23 + 136) = v24;
    *(v23 + 144) = v28;
    v53 = v28;
    *(v23 + 112) = 0x25286C6C61636552;
    *(v23 + 120) = 0xE900000000000029;
    v29 = sub_237C0871C();
    MEMORY[0x2383DC360](v29);

    v30 = v52;
    sub_237C05DFC();
    sub_237B63BC4(v10);
    v57[1](v30, v58);
    v31 = MEMORY[0x277D839F8];
    v32 = v60;
    sub_237C05DEC();
    sub_237C05DEC();
    result = sub_237C05F1C();
    v58 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      v48 = v14;
      v57 = v10;
      v33 = 0;
      v52 = "----------------\n";
      v34 = MEMORY[0x277D83A80];
      while (1)
      {
        v35 = v59;
        if (v58 == v33)
        {
          MEMORY[0x2383DC360](10, 0xE100000000000000);
          v46 = *(v51 + 8);
          v46(v62, v0);
          v46(v32, v0);
          (*(v50 + 8))(v57, v61);
          (*(v35 + 8))(v48, v49);
          return v69;
        }

        if (__OFADD__(v33, 1))
        {
          break;
        }

        v36 = v31;
        v37 = swift_allocObject();
        *(v37 + 16) = v55;
        result = sub_237C05F9C();
        if (!v68)
        {
          goto LABEL_18;
        }

        v65 = v67;
        v66 = v68;
        v63 = 32;
        v64 = 0xE100000000000000;
        v38 = MEMORY[0x277D837D0];
        v39 = sub_237C08DAC();
        v41 = v40;

        v42 = v53;
        *(v37 + 56) = v38;
        *(v37 + 64) = v42;
        *(v37 + 32) = v39;
        *(v37 + 40) = v41;
        v32 = v60;
        result = sub_237C05F9C();
        if (v68)
        {
          goto LABEL_19;
        }

        v43 = *&v67 * 100.0;
        v31 = v36;
        *(v37 + 96) = v36;
        *(v37 + 104) = v34;
        *(v37 + 72) = v43;
        result = sub_237C05F9C();
        if (v68)
        {
          goto LABEL_20;
        }

        v44 = *&v67 * 100.0;
        *(v37 + 136) = v36;
        *(v37 + 144) = v34;
        *(v37 + 112) = v44;
        v45 = sub_237C0871C();
        MEMORY[0x2383DC360](v45);

        ++v33;
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_237ADE880(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237ADE8D8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t MLClassifierMetrics.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = OUTLINED_FUNCTION_11_31();
  v5 = v4;
  sub_237A02218(v3, v6, 0);
  OUTLINED_FUNCTION_87();
  result = sub_237A022C0();
  a1[3] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_237ADE9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v73 = &v61 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  v69 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v83 = &v61 - v6;
  v77 = sub_237C0602C();
  v72 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v10 = *(v9 - 8);
  v70 = v9;
  v71 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v66 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v61 - v18;
  v19 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  MEMORY[0x28223BE20](v19);
  v81 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AnyClassificationMetrics(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MLClassifierMetrics.Contents(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237ADD8DC(v80, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v62 = a2;
      sub_237ADE8D8(v26, v81);
      LODWORD(v85) = 0;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
      v28 = swift_allocObject();
      v79 = xmmword_237C0B670;
      *(v28 + 16) = xmmword_237C0B670;
      v29 = *(a1 + 16);
      *(v28 + 32) = v29;
      *(v28 + 40) = v29;
      v78 = sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
      sub_237C0837C();
      v65 = *(v19 + 20);
      sub_237C05DFC();
      v30 = v12;
      sub_237B63BC4(v12);
      v64 = *(v72 + 8);
      v64(v8, v77);
      v85 = 0;
      v86 = 0xE000000000000000;
      v72 = MEMORY[0x277CE18F0];
      v63 = sub_2379D9224(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE18F0]);
      v31 = v70;
      sub_237C05EAC();
      v32 = *(v71 + 8);
      v32(v30, v31);
      sub_237C05DFC();
      sub_237B63BC4(v30);
      v64(v8, v77);
      v85 = 0;
      v86 = 0xE000000000000000;
      v33 = v14;
      sub_237C05EAC();
      v32(v30, v31);
      v34 = v73;
      sub_237C05DEC();
      v85 = 0;
      sub_2379D9224(&qword_27DE9C7A0, &qword_27DE9AB98, &unk_237C0B900, v72);
      v35 = v75;
      sub_237C05EAC();
      (*(v74 + 8))(v34, v35);
      sub_2379D9224(&qword_27DE9C9E0, &qword_27DE9C798, &qword_237C10E70, MEMORY[0x277CE18B0]);
      sub_237C08B2C();
      sub_237C08B5C();
      result = sub_237C08B4C();
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        v37 = result;
        v38 = v62;
        if (result)
        {
          v39 = 0;
          do
          {
            v40 = sub_237ADF37C(v39);
            v42 = sub_2379EB28C(v40, v41, a1);
            v44 = v43;

            if ((v44 & 1) == 0)
            {
              v45 = sub_237ADF37C(v39);
              v47 = sub_2379EB28C(v45, v46, a1);
              v49 = v48;

              if ((v49 & 1) == 0)
              {
                v50 = swift_allocObject();
                *(v50 + 16) = v79;
                *(v50 + 32) = v42;
                *(v50 + 40) = v47;
                *&v85 = sub_237ADF518(v39);
                sub_237C0836C();
              }
            }

            ++v39;
          }

          while (v37 != v39);
        }

        (*(v69 + 8))(v83, v76);
        v51 = *(v67 + 8);
        v52 = v68;
        v51(v33, v68);
        v51(v17, v52);
        sub_237ADE880(v81, type metadata accessor for MLClassifierMetrics.Precomputed);
        return (*(v66 + 32))(v38, v82, v84);
      }
    }

    else
    {
      sub_237ADE880(v26, type metadata accessor for MLClassifierMetrics.Contents);
      sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
      return sub_237C0832C();
    }
  }

  else
  {
    v53 = sub_237ADE8D8(v26, v23);
    sub_237B0DA34(v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    return sub_237ADE880(v23, type metadata accessor for AnyClassificationMetrics);
  }

  return result;
}

uint64_t sub_237ADF37C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-1] - v4;
  v12[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  sub_237C05E3C();
  sub_2379D9224(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE1908]);
  v6 = sub_237C08B9C();
  v8 = *v7;
  v9 = v7[1];

  v6(v12, 0);
  (*(v3 + 8))(v5, v2);
  if (!v9)
  {
    sub_237C05E2C();
    return v12[0];
  }

  return v8;
}

uint64_t sub_237ADF518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-1] - v4;
  v12[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  sub_237C05E3C();
  sub_2379D9224(&qword_27DE9BD80, &qword_27DE9AB98, &unk_237C0B900, MEMORY[0x277CE1908]);
  v6 = sub_237C08B9C();
  v8 = *v7;
  v9 = *(v7 + 8);
  v6(v12, 0);
  (*(v3 + 8))(v5, v2);
  if (v9 == 1)
  {
    sub_237C05E2C();
    return v12[0];
  }

  return v8;
}

uint64_t sub_237ADF6BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5 = type metadata accessor for MLClassifierMetrics.Contents(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_237ADF714(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5 = type metadata accessor for MLClassifierMetrics.Contents(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_237ADF77C(uint64_t a1)
{
  result = type metadata accessor for MLClassifierMetrics.Contents(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237ADF7E8(uint64_t a1)
{
  result = type metadata accessor for AnyClassificationMetrics(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLClassifierMetrics.Precomputed(319);
    if (v3 <= 0x3F)
    {
      result = sub_237ADF870();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_237ADF870()
{
  result = qword_27DE9C9C8;
  if (!qword_27DE9C9C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DE9C9C8);
  }

  return result;
}

uint64_t sub_237ADF8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C05DBC();
  v7 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_237ADF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_237C05DBC();
  v8 = a1 + *(a4 + 20);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_237ADF9A8(uint64_t a1)
{
  result = sub_237C05DBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237ADFA24(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_237ADFA70()
{
  result = qword_27DE9C058;
  if (!qword_27DE9C058)
  {
    sub_237C0602C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C058);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_20()
{

  return sub_237ADE8D8(v1, v0);
}

uint64_t OUTLINED_FUNCTION_25_18()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_237ADFBE4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_7:
      v6[0] = v4;
      v6[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      result = sub_237B0FAE4(v6);
      if (!v2 && !result)
      {
        __break(1u);
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      result = sub_237B0FAE4((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (v2 || result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_7;
    }
  }

  result = sub_237C08ECC();
  if (!v2)
  {
    return v6[2];
  }

  return result;
}

uint64_t sub_237ADFC80(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_50(sub_237ADFCC0);
}

uint64_t sub_237ADFCC0()
{
  OUTLINED_FUNCTION_49();
  *(v0[3] + 40) = 0;
  v0[5] = sub_237A31828();
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_237ADFDC4;

  return sub_237A6FB90();
}

uint64_t sub_237ADFDC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {

    v4 = sub_237ADFF9C;
  }

  else
  {
    v4 = sub_237ADFEE0;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_237ADFEE0()
{
  result = sub_237B98710(*(v0 + 40), *(v0 + 48));
  if (result == 28)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = *(v0 + 64);
    v4 = *(v0 + 24);
    *(v4 + 16) = *(v0 + 16);
    *(v4 + 24) = v3;
    *(v4 + 32) = result;

    v5 = v3;
    if ((sub_237A37A64() & 1) == 0)
    {
      sub_237A37DD8(v2, 2u);
    }

    v6 = *(v0 + 8);
    v7 = *(v0 + 24);

    return v6(v7);
  }

  return result;
}

uint64_t sub_237ADFF9C()
{
  OUTLINED_FUNCTION_49();

  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_50();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t *sub_237AE0018(uint64_t a1)
{
  *(v1 + 40) = 0;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  sub_237B983D8(a1, v4);
  v7 = sub_237ADFBE4(v5, v6);
  if (v2)
  {

    OUTLINED_FUNCTION_2_50();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v7;

    type metadata accessor for CMLModel();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v1 + 16) = v9;
    *(v1 + 32) = a1;
  }

  return v1;
}

uint64_t sub_237AE0110(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  *(v4 + 40) = *v3;
  return OUTLINED_FUNCTION_0_50(sub_237AE0158);
}

uint64_t sub_237AE0158(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  *(*(v2 + 32) + 40) = 0;
  sub_237B983D8(v3, a2);
  v5 = v4;
  v7 = v6;

  v8 = sub_237ADFBE4(v5, v7);
  v9 = *(v2 + 24);
  v10 = v8;

  type metadata accessor for CMLModel();
  v11 = swift_allocObject();
  *(v2 + 48) = v11;
  *(v11 + 16) = v10;
  if (v9)
  {

    sub_237A6F428();
  }

  if (sub_237A37A64())
  {
    v13 = *(v2 + 16);

    sub_237A31864(5, v13);
  }

  else
  {
    sub_237B983D8(*(v2 + 80), v12);
    result = sub_237B98710(v14, v15);
    if (result == 28)
    {
      __break(1u);
      return result;
    }

    v17 = result;
    v18 = *(v2 + 16);

    Current = CFAbsoluteTimeGetCurrent();
    sub_237A37DD8(v17, 2u);
    sub_237A31864(5, v18);

    sub_237A37F70(v17, 0x676E696E69617254, 0xE800000000000000, Current);
  }

  v20 = swift_task_alloc();
  *(v2 + 56) = v20;
  *v20 = v2;
  v20[1] = sub_237AE040C;

  return sub_237A6FB90();
}

uint64_t sub_237AE040C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v5 = sub_237AE05C8;
  }

  else
  {
    *(v4 + 72) = v3;
    v5 = sub_237AE0530;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_237AE0530()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 80);

  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(v0 + 8);
  v6 = *(v0 + 32);

  return v5(v6);
}

uint64_t sub_237AE05C8()
{
  OUTLINED_FUNCTION_49();

  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_50();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_237AE0658(uint64_t a1, uint64_t a2, const void *a3)
{
  sub_237C05ADC();
  OUTLINED_FUNCTION_1_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &__dst[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a3, sizeof(__dst));
  sub_237B980B4(*(v4 + 32));
  sub_2379F29AC(a1, a2, v14, v15);
  if (v5)
  {
  }

  sub_237AE078C(v13, __dst);
  return (*(v10 + 8))(v13, v3);
}

uint64_t sub_237AE078C(char *a1, uint64_t *a2)
{
  v73 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v63 - v6;
  sub_237C05ADC();
  OUTLINED_FUNCTION_1_7();
  v71 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v70 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v68 = v12;
  v69 = v13;
  v15 = a2[4];
  v16 = a2[5];
  v66 = v14;
  v67 = v15;
  v18 = a2[6];
  v17 = a2[7];
  v19 = a2[8];
  i = v3;
  sub_237B980B4(*(v3 + 32));
  v20 = v76;
  sub_2379F25FC();
  if (v20)
  {
  }

  v64 = v16;
  v65 = v17;
  v76 = v18;
  v73 = v11;

  __swift_storeEnumTagSinglePayload(v7, 1, 1, v2);
  v22 = v2;
  v23 = sub_237A6F760(v7);
  sub_237A6FB28(v7);
  v24 = MEMORY[0x2383DDA80](0);
  if (v24)
  {
    v25 = v24;
    v63[2] = type metadata accessor for CMLDictionary();
    inited = swift_initStackObject();
    *(inited + 16) = v25;
    v63[1] = v23;
    if (v70)
    {
      type metadata accessor for CMLFeatureValue();

      v27 = sub_237A2E7CC();
      v28 = OUTLINED_FUNCTION_4_45();
      sub_237A2EABC(v28, v29, v27);

      v30 = sub_237A2E7CC();
      sub_237A2EABC(0xD000000000000011, 0x8000000237C1B2E0, v30);

      if (v64)
      {

        OUTLINED_FUNCTION_3_5();
        v31 = sub_237A2E7CC();
        sub_237A2EABC(0x65736E6563696CLL, 0xE700000000000000, v31);
      }

      OUTLINED_FUNCTION_3_5();
      v32 = sub_237A2E7CC();
      sub_237A2EABC(0x5F6E6F6973726576, 0xEE00676E69727473, v32);
    }

    else
    {
      v33 = NSFullUserName();
      sub_237C086EC();

      type metadata accessor for CMLFeatureValue();

      v34 = sub_237A2E7CC();

      v35 = OUTLINED_FUNCTION_4_45();
      sub_237A2EABC(v35, v36, v34);
    }

    sub_237BAC418();
    v37 = sub_237C085AC();
    if (v70 && v19)
    {

      v37 = v19;
    }

    v68 = inited;
    v69 = v22;
    swift_isUniquelyReferenced_nonNull_native();
    v74 = v37;
    sub_237B40C78();
    v38 = v74;
    v39 = MEMORY[0x2383DDA80](0);
    if (!v39)
    {
      goto LABEL_25;
    }

    v40 = v39;
    v76 = swift_initStackObject();
    *(v76 + 16) = v40;
    v41 = v38 + 64;
    v42 = 1 << *(v38 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v38 + 64);
    v45 = (v42 + 63) >> 6;

    v46 = 0;
    v70 = v38 + 64;
    for (i = v38; v44; v41 = v70)
    {
      v47 = v46;
LABEL_20:
      v48 = (*(v38 + 48) + ((v47 << 10) | (16 * __clz(__rbit64(v44)))));
      v50 = *v48;
      v49 = v48[1];
      type metadata accessor for CMLFeatureValue();
      swift_bridgeObjectRetain_n();

      v51 = sub_237A2E7CC();

      sub_237A2EABC(v50, v49, v51);
      v44 &= v44 - 1;

      v46 = v47;
      v38 = i;
    }

    while (1)
    {
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v47 >= v45)
      {

        type metadata accessor for CMLFeatureValue();

        v53 = sub_237A2E858(v52);
        sub_237A2EABC(0x6665645F72657375, 0xEC00000064656E69, v53);
        v54 = v69;
        v55 = v71;
        v56 = v73;

        sub_237A6F534();
        sub_237A6F634();
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_237C08EDC();

        OUTLINED_FUNCTION_8_29();
        v74 = v58 + 19;
        v75 = v57;
        v59 = sub_237C05A9C();
        MEMORY[0x2383DC360](v59);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v60 = v74;
        v61 = v75;
        v62 = sub_237C08C1C();
        sub_237BABE74(v60, v61, v62);

        swift_setDeallocating();
        tc_v1_release();

        swift_setDeallocating();
        tc_v1_release();
        return (*(v55 + 8))(v56, v54);
      }

      v44 = *(v41 + 8 * v47);
      ++v46;
      if (v44)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237AE1168()
{

  return v0;
}

uint64_t sub_237AE1198()
{
  sub_237AE1168();

  return swift_deallocClassInstance();
}

void sub_237AE123C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v5 = sub_237AE8508(v2);
    v6 = 0;
    v7 = v2 + 56;
    v27 = v2 + 64;
    v28 = v1;
    v8 = 1;
    v29 = v2 + 56;
    v30 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < v8 << *(v2 + 32))
      {
        v9 = v5 >> 6;
        v10 = v8 << v5;
        if ((*(v7 + 8 * (v5 >> 6)) & (v8 << v5)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_31;
        }

        v32 = v4;
        v31 = v3;
        v11 = (*(v2 + 48) + 16 * v5);
        v12 = v11[1];
        if (v12)
        {
          v13 = *v11;
        }

        else
        {
          v13 = 0;
        }

        if (v12)
        {
          v14 = v11[1];
        }

        else
        {
          v14 = 0xE000000000000000;
        }

        v16 = *(v33 + 16);
        v15 = *(v33 + 24);

        if (v16 >= v15 >> 1)
        {
          sub_237AC8A74();
        }

        *(v33 + 16) = v16 + 1;
        v17 = v33 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        if (v32)
        {
          goto LABEL_35;
        }

        v7 = v29;
        v2 = v30;
        v18 = 1 << *(v30 + 32);
        if (v5 >= v18)
        {
          goto LABEL_32;
        }

        v19 = *(v29 + 8 * v9);
        if ((v19 & v10) == 0)
        {
          goto LABEL_33;
        }

        if (*(v30 + 36) != v31)
        {
          goto LABEL_34;
        }

        if ((v19 & (-2 << (v5 & 0x3F))) != 0)
        {
          OUTLINED_FUNCTION_60_6();
        }

        else
        {
          OUTLINED_FUNCTION_57_6();
          v24 = (v27 + 8 * v9);
          while (v23 < v22)
          {
            v26 = *v24++;
            v25 = v26;
            v10 += 64;
            ++v23;
            if (v26)
            {
              OUTLINED_FUNCTION_71_3(v20, v21);
              v8 = 1;
              v18 = __clz(__rbit64(v25)) + v10;
              goto LABEL_25;
            }
          }

          OUTLINED_FUNCTION_71_3(v20, v21);
          v8 = 1;
        }

LABEL_25:
        if (++v6 == v28)
        {
          return;
        }

        v4 = 0;
        v3 = *(v30 + 36);
        v5 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void sub_237AE1458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    sub_237AC8A34(0, v1, 0);
    v5 = sub_237AE8508(a1);
    v6 = 0;
    v7 = a1 + 56;
    v8 = 1;
    v9 = -2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < v8 << *(a1 + 32))
      {
        v10 = v5 >> 6;
        v11 = v8 << v5;
        if ((*(v7 + 8 * (v5 >> 6)) & (v8 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_28;
        }

        v12 = *(a1 + 48) + 16 * v5;
        if (*(v12 + 8))
        {
          v13 = 0;
        }

        else
        {
          v13 = *v12;
        }

        v15 = *(v26 + 16);
        v14 = *(v26 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_237AC8A34(v14 > 1, v15 + 1, 1);
          OUTLINED_FUNCTION_40_10();
        }

        *(v26 + 16) = v15 + 1;
        *(v26 + 8 * v15 + 32) = v13;
        if (v4)
        {
          goto LABEL_32;
        }

        v16 = v8 << *(a1 + 32);
        if (v5 >= v16)
        {
          goto LABEL_29;
        }

        v17 = *(v7 + 8 * v10);
        if ((v17 & v11) == 0)
        {
          goto LABEL_30;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_31;
        }

        if ((v17 & (v9 << (v5 & 0x3F))) != 0)
        {
          OUTLINED_FUNCTION_60_6();
        }

        else
        {
          OUTLINED_FUNCTION_57_6();
          v23 = (a1 + 64 + 8 * v10);
          while (v22 < v21)
          {
            v25 = *v23++;
            v24 = v25;
            v11 += 64;
            ++v22;
            if (v25)
            {
              OUTLINED_FUNCTION_71_3(v19, v20);
              OUTLINED_FUNCTION_40_10();
              v16 = __clz(__rbit64(v24)) + v11;
              goto LABEL_22;
            }
          }

          OUTLINED_FUNCTION_71_3(v19, v20);
          OUTLINED_FUNCTION_40_10();
        }

LABEL_22:
        if (++v6 == v18)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_237AE1668(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA30, &qword_237C13C90);
    OUTLINED_FUNCTION_39_9();
    v2 = sub_237C08EAC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B210, &unk_237C11B00);
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v23 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
LABEL_32:
      v7 &= v7 - 1;

      swift_dynamicCast();
      sub_237AE8368(v25, v26);
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v8)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v24);
      ++v23;
      if (v7)
      {
        v23 = v24;
        goto LABEL_32;
      }
    }
  }

  else
  {
    v9 = v2 + 56;

    v10 = 0;
    if (v7)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v8)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
    }

    while (!v7);
    v10 = v11;
    while (1)
    {
LABEL_13:

      swift_dynamicCast();
      sub_237C093CC();
      sub_237C093EC();
      if (v28)
      {
        sub_237C0878C();
      }

      sub_237C0940C();
      OUTLINED_FUNCTION_43_5();
      if (((v14 << v13) & ~*(v9 + 8 * v12)) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_3_40();
LABEL_24:
      v7 &= v7 - 1;
      OUTLINED_FUNCTION_31_7();
      *(v9 + v19) |= v20;
      v22 = (*(v2 + 48) + 16 * v21);
      *v22 = v27;
      v22[1] = v28;
      ++*(v2 + 16);
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_7_20();
    while (++v15 != v17 || (v16 & 1) == 0)
    {
      v18 = v15 == v17;
      if (v15 == v17)
      {
        v15 = 0;
      }

      v16 |= v18;
      if (*(v9 + 8 * v15) != -1)
      {
        OUTLINED_FUNCTION_4_39();
        goto LABEL_24;
      }
    }

LABEL_36:
    __break(1u);
  }

  __break(1u);
}

void sub_237AE1948(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA38, &unk_237C13CA0);
    OUTLINED_FUNCTION_39_9();
    v2 = sub_237C08EAC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA40, &unk_237C11B10);
    swift_dynamicCast();
    sub_237C093CC();
    sub_237C093EC();
    if (v22 != 1)
    {
      MEMORY[0x2383DCF70]();
    }

    sub_237C0940C();
    OUTLINED_FUNCTION_43_5();
    if (((v12 << v11) & ~*(v7 + 8 * v10)) == 0)
    {
      OUTLINED_FUNCTION_7_20();
      while (++v13 != v15 || (v14 & 1) == 0)
      {
        v16 = v13 == v15;
        if (v13 == v15)
        {
          v13 = 0;
        }

        v14 |= v16;
        if (*(v7 + 8 * v13) != -1)
        {
          OUTLINED_FUNCTION_4_39();
          goto LABEL_23;
        }
      }

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_3_40();
LABEL_23:
    v5 &= v5 - 1;
    OUTLINED_FUNCTION_31_7();
    *(v7 + v17) |= v18;
    v20 = *(v2 + 48) + 16 * v19;
    *v20 = v21;
    *(v20 + 8) = v22;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

id MLRandomForestClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLRandomForestClassifier(0) + 20));

  return v1;
}

uint64_t type metadata accessor for MLRandomForestClassifier(uint64_t a1)
{
  result = qword_27DE9CA18;
  if (!qword_27DE9CA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLRandomForestClassifier.model.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLRandomForestClassifier(v2) + 20);

  *(v1 + v3) = v0;
}

void (*MLRandomForestClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLRandomForestClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLRandomForestClassifier.targetColumn.getter()
{
  type metadata accessor for MLRandomForestClassifier(0);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLRandomForestClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLRandomForestClassifier(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*MLRandomForestClassifier.targetColumn.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLRandomForestClassifier(v0);
  return nullsub_1;
}

uint64_t MLRandomForestClassifier.featureColumns.getter()
{
  type metadata accessor for MLRandomForestClassifier(0);
}

uint64_t MLRandomForestClassifier.featureColumns.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLRandomForestClassifier(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

void (*MLRandomForestClassifier.featureColumns.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLRandomForestClassifier(v0);
  return nullsub_1;
}

uint64_t MLRandomForestClassifier.modelParameters.getter()
{
  v2 = OUTLINED_FUNCTION_146();
  v3 = v1 + *(type metadata accessor for MLRandomForestClassifier(v2) + 32);

  return sub_237AE1E74(v3, v0);
}

uint64_t MLRandomForestClassifier.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLRandomForestClassifier(v0);
  return OUTLINED_FUNCTION_24_21(*(v1 + 36));
}

uint64_t MLRandomForestClassifier.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLRandomForestClassifier(v0);
  return OUTLINED_FUNCTION_24_21(*(v1 + 40));
}

uint64_t sub_237AE1F28()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9C9E8);
  v1 = __swift_project_value_buffer(v0, qword_27DE9C9E8);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLRandomForestClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A620 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v2, qword_27DE9C9E8);
  OUTLINED_FUNCTION_3_46();
  return sub_237AE6D08(v3, a1);
}

void MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v222 = v20;
  v231 = v21;
  v223 = v22;
  v229 = v23;
  v219 = v24;
  v236 = v25;
  v27 = v26;
  v28 = type metadata accessor for AnyClassificationMetrics(0);
  v29 = OUTLINED_FUNCTION_20(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  v32 = OUTLINED_FUNCTION_21_3(v31);
  v33 = type metadata accessor for MLClassifierMetrics(v32);
  v34 = OUTLINED_FUNCTION_20(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_58();
  v37 = OUTLINED_FUNCTION_21_3(v36);
  v38 = type metadata accessor for AnyTreeClassifierModel(v37);
  v39 = OUTLINED_FUNCTION_1(v38);
  v206 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77_0(&v196 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v207 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v45);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_77_0(&v196 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v48);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_3(&v196 - v50);
  v212 = sub_237C0602C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  v55 = OUTLINED_FUNCTION_21_3(v54);
  v56 = type metadata accessor for AnyTreeClassifier(v55);
  v57 = OUTLINED_FUNCTION_20(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v59 - v58);
  v230 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v225 = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_58();
  v66 = OUTLINED_FUNCTION_21_3(v65);
  v220 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(v66);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v69 - v68);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v75);
  v77 = &v196 - v76;
  v227 = sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v226 = v78;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v80);
  v82 = &v196 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v85 = v84;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v86);
  v88 = &v196 - v87;
  v89 = type metadata accessor for MLRandomForestClassifier(0);
  v90 = (v27 + *(v89 + 36));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v88);
  sub_2379E5C70(v88);
  (*(v85 + 8))(v88, v83);
  v91 = v27;
  v92 = v231;
  *v90 = 0;
  v93 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v224 = v90;
  swift_storeEnumTagMultiPayload();
  v205 = v89;
  v94 = *(v89 + 40);
  v95 = v82;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v96 = swift_allocError();
  *v97 = 0xD0000000000000C0;
  v97[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v96, v97);
  *(v91 + v94) = v98;
  v228 = v91;
  v203 = v93;
  swift_storeEnumTagMultiPayload();
  sub_237AE1E74(v92, v235);
  sub_237C071CC();
  sub_237C070DC();
  sub_237C0709C();
  sub_237C070FC();
  sub_237C0715C();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237C0711C();
  sub_237C0713C();
  sub_237AE35BC(v235);
  sub_2379E9068(v92, &v233, &qword_27DE9A998, &unk_237C0C100);
  if (v234)
  {
    OUTLINED_FUNCTION_34_10();
    v100 = *(v99 + 48);
    sub_2379DAD24(&v233, v235);
    v101 = v221;
    swift_dynamicCast();
    v102 = v222;
    sub_237A65054(v77, &v77[v100], v236);
    if (v102)
    {
      OUTLINED_FUNCTION_72_4();
      OUTLINED_FUNCTION_35_11();

      sub_237AE35BC(v92);
      OUTLINED_FUNCTION_36_3();
      v103(v236, v230);
      v104 = OUTLINED_FUNCTION_5_39();
      v105(v104);
      OUTLINED_FUNCTION_7_31();
      sub_237AE7174();
      sub_237AE7174();
      sub_237AE7174();
    }

    else
    {
      OUTLINED_FUNCTION_7_31();
      sub_237AE7174();
      v106 = v229;
      sub_237B19700(v77, v219, v229, v223);
      v222 = v107;
      v220 = v94;

      v223 = v77;
      OUTLINED_FUNCTION_48_9();
      sub_2379E9068(v108, v109, v110, v111);
      OUTLINED_FUNCTION_34_10();
      v113 = *(v112 + 48);
      v114 = v230;
      if (__swift_getEnumTagSinglePayload(v101 + v113, 1, v230) == 1)
      {
        sub_2379D9054(v101 + v113, &qword_27DE9A9A0, &qword_237C0BF60);
        v115 = *(v225 + 8);
        v116 = (v225 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v115(v101, v114);
      }

      else
      {
        OUTLINED_FUNCTION_58_7();
        v130 = v101 + v113;
        v131 = v101;
        v101 = v210;
        (*(v129 + 32))(v210, v130, v114);
        v221 = *(v77 + 1);
        v221(v131, v114);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_237C0B660;
        *(inited + 32) = v219;
        *(inited + 40) = v106;

        sub_2379F2DA4();
        v216 = (v77 + 8);
        swift_setDeallocating();
        sub_237B9082C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
        v144 = swift_allocObject();
        *(v144 + 16) = xmmword_237C0B670;
        v145 = MEMORY[0x277D83B88];
        *(v144 + 32) = MEMORY[0x277D837D0];
        *(v144 + 40) = v145;
        sub_2379F30EC();
        v116 = v216 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v114 = v230;
        v115 = v221;
        v221(v101, v230);
      }

      v117 = v223;
      OUTLINED_FUNCTION_48_9();
      sub_2379E9068(v118, v119, v120, v121);
      sub_237C05DFC();
      v115(v101, v114);
      v122 = v117;
      v123 = v214;
      sub_2379E9068(v122, v214, &qword_27DE9ADC0, &unk_237C0BF40);
      OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_48_9();
      sub_237AE7128(v124, v125, v126, v127);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, 1, v114);
      v221 = v115;
      v216 = v116;
      if (EnumTagSinglePayload == 1)
      {
        v115(v123, v114);
        sub_2379D9054(v101, &qword_27DE9A9A0, &qword_237C0BF60);
        v123 = v213;
        __swift_storeEnumTagSinglePayload(v213, 1, 1, v212);
      }

      else
      {
        OUTLINED_FUNCTION_58_7();
        sub_237C05DFC();
        v115(v101, v114);
        __swift_storeEnumTagSinglePayload(v123, 0, 1, v212);
        v115(v214, v114);
      }

      v133 = v226;
      OUTLINED_FUNCTION_34_10();
      v214 = *(v134 + 48);
      v135 = v211;
      (*(v133 + 16))(v211, v95, v227);

      v136 = v222;

      v137 = sub_237AB7E28(v217, v123, v219, v106, v136, v135, v215);
      OUTLINED_FUNCTION_52_9(v137, &qword_27DE9A9A0, &qword_237C0BF60);
      OUTLINED_FUNCTION_71();
      v138 = v215;
      sub_237AB87DC(v139, v140, v141, v142, v143);
      v218 = v95;
      if ((sub_237A37A64() & 1) == 0)
      {
        OUTLINED_FUNCTION_35_11();
        OUTLINED_FUNCTION_48_9();
        sub_2379E9068(v146, v147, v148, v149);
        OUTLINED_FUNCTION_34_10();
        v151 = *(v150 + 48);
        v152 = sub_237C05D3C();
        OUTLINED_FUNCTION_15_24();
        v153();
        sub_237A37AEC(1, 0xD000000000000015, 0x8000000237C17C00, v152);
        sub_2379D9054(v138 + v151, &qword_27DE9A9A0, &qword_237C0BF60);
        sub_237A37AEC(1, 0xD000000000000010, 0x8000000237C1AE80, *(v215[3] + 16));
      }

      v154 = v205;
      v155 = v228;
      v156 = (v228 + v205[6]);
      v157 = v229;
      *v156 = v219;
      v156[1] = v157;
      v158 = v154[8];
      sub_237AE1E74(v231, v155 + v158);
      *(v155 + v154[7]) = v222;
      OUTLINED_FUNCTION_2_51();
      v159 = v209;
      v160 = v208;
      sub_237AE6D08(v209, v208);
      v161 = (*(v206 + 80) + 16) & ~*(v206 + 80);
      swift_allocObject();
      OUTLINED_FUNCTION_20_19();
      sub_237AE71C8(v160, v162 + v161);
      sub_2379DD56C();
      v164 = v163;
      v219 = v158;

      v165 = v228;
      *(v228 + v154[5]) = v164;
      OUTLINED_FUNCTION_2_51();
      sub_237AE6D08(v159, v165);
      v166 = v204;
      v167 = v223;
      OUTLINED_FUNCTION_11();
      sub_237A5DEEC(v168, v169);
      v171 = *v228;
      v170 = v228[1];
      sub_237C05DFC();
      OUTLINED_FUNCTION_58_7();
      v217 = v171;
      v214 = v170;
      sub_237C05DFC();
      v172 = v202;
      sub_237B0CBBC();
      v173 = v230;
      v221(v166, v230);
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_48_9();
      sub_237AE71C8(v174, v175);
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v172, v224);
      v176 = v201;
      sub_2379E9068(v167, v201, &qword_27DE9ADC0, &unk_237C0BF40);
      OUTLINED_FUNCTION_34_10();
      v178 = *(v177 + 48);
      if (__swift_getEnumTagSinglePayload(v176 + v178, 1, v173) == 1)
      {
        sub_237AE35BC(v231);
        v179 = OUTLINED_FUNCTION_61_6();
        v180 = v221;
        (v221)(v179);
        OUTLINED_FUNCTION_1_50();
        sub_237AE7174();
        sub_2379D9054(v167, &qword_27DE9ADC0, &unk_237C0BF40);
        v181 = OUTLINED_FUNCTION_5_39();
        v182(v181);
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_74_3();
        sub_2379D9054(v176 + v178, &qword_27DE9A9A0, &qword_237C0BF60);
        v180(v176, v173);
      }

      else
      {
        (*(v225 + 32))(v199, v176 + v178, v173);
        v183 = v176;
        v184 = v221;
        v221(v183, v173);
        OUTLINED_FUNCTION_11();
        sub_237A5DEEC(v185, v186);
        sub_237C05DFC();
        OUTLINED_FUNCTION_58_7();
        v187 = v199;
        sub_237C05DFC();
        v188 = v198;
        sub_237B0CBBC();
        v184(v200, v173);
        OUTLINED_FUNCTION_55_6();
        v189 = OUTLINED_FUNCTION_61_6();
        (v184)(v189);
        v184(v187, v173);
        OUTLINED_FUNCTION_1_50();
        sub_237AE7174();
        v190 = OUTLINED_FUNCTION_35_11();
        sub_2379D9054(v190, v191, v192);
        v193 = OUTLINED_FUNCTION_5_39();
        v194(v193);
        OUTLINED_FUNCTION_8_30();
        v195 = v197;
        sub_237AE71C8(v188, v197);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_74_3();
        sub_2379DC1F8(v195, v228 + v220);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237AE3610(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2379F89CC;

  return sub_237B919A4();
}

uint64_t sub_237AE36BC()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for AnyTreeClassifierModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237AE3610(v5);
}

uint64_t MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_237C05DBC();
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = (v13 - v12);
  LOBYTE(v13) = *(a1 + 8);
  v20 = *a1;
  LOBYTE(v21) = v13;
  sub_237A70ED4(&v20, v14);
  sub_237AE1E74(a5, &v20);
  MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v14, a2, a3, a4, &v20, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return sub_237AE35BC(a5);
}

void MLRandomForestClassifier.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v87 = v0;
  v95 = v1;
  v3 = v2;
  v77 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v6);
  sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v92 = v7;
  v93 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v84 = v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_138();
  v91 = v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v88 = v13;
  v90 = type metadata accessor for AnyTreeClassifier(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  v85 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - v17;
  v19 = type metadata accessor for AnyTreeClassifierModel(0);
  v20 = OUTLINED_FUNCTION_1(v19);
  v81 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v83 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  v80 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_58();
  v86 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_58();
  v82 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v32 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  v35 = &v73 - v34;
  v36 = type metadata accessor for MLRandomForestClassifier(0);
  v37 = (v3 + *(v36 + 36));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v35);
  sub_2379E5C70(v35);
  (*(v32 + 8))(v35, v30);
  *v37 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v89 = v37;
  v38 = v3;
  swift_storeEnumTagMultiPayload();
  v74 = v36;
  v39 = *(v36 + 40);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v40 = swift_allocError();
  *v41 = 0xD0000000000000C0;
  v41[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v40, v41);
  *(v38 + v39) = v42;
  swift_storeEnumTagMultiPayload();
  switch(*(v95 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v43 = sub_237C0929C();

      if (v43)
      {
LABEL_4:
        v78 = v39;
        v73 = v23;
        v79 = v38;
        sub_237AE1948(MEMORY[0x277D84FA0]);
        v45 = v44;
        v46 = v88;
        sub_237C071CC();
        *v18 = 0;
        *(v18 + 1) = 0xE000000000000000;
        v47 = MEMORY[0x277D84F90];
        *(v18 + 2) = MEMORY[0x277D84F90];
        v48 = v87;
        sub_237AE1458(v45);
        v50 = v49;

        v94[0] = v50;

        OUTLINED_FUNCTION_22_17();
        sub_237AE6AA4(v94, v51, v52, sub_237AE7450, sub_237AE732C);
        if (v48)
        {

          __break(1u);
          JUMPOUT(0x237AE42B0);
        }

        v53 = v93;
        *(v18 + 3) = v94[0];
        v18[32] = 0;
        *(v18 + 5) = v47;
        *(v18 + 6) = 0xD000000000000013;
        *(v18 + 7) = 0x8000000237C17BE0;
        v87 = *(v53 + 16);
        v87(v91, v46, v92);
        sub_237C06D7C();
        v54 = *(v53 + 8);
        v55 = OUTLINED_FUNCTION_13_11();
        v93 = v53 + 8;
        v54(v55);
        sub_237AE6A00();
        v56 = v86;
        OUTLINED_FUNCTION_61_6();
        sub_237C0743C();
        OUTLINED_FUNCTION_0_51();
        sub_237AE7174();
        v59 = v79;
        v60 = v82;
        sub_237AE71C8(v56, v82);
        OUTLINED_FUNCTION_2_51();
        v61 = v80;
        sub_237AE6D08(v60, v80);
        v62 = (*(v81 + 80) + 16) & ~*(v81 + 80);
        v63 = swift_allocObject();
        sub_237AE71C8(v61, v63 + v62);
        sub_2379DD56C();
        v65 = v64;

        v66 = v74;
        *(v59 + v74[5]) = v65;
        OUTLINED_FUNCTION_2_51();
        sub_237AE6D08(v60, v59);
        v67 = v76;
        *v76 = 0;
        *(v67 + 8) = 0;
        *(v67 + 16) = 256;
        v68 = v77;
        swift_storeEnumTagMultiPayload();
        v69 = v59 + v66[8];
        *v69 = 0u;
        *(v69 + 16) = 0u;
        *(v69 + 32) = xmmword_237C0BF20;
        *(v69 + 48) = xmmword_237C0BF30;
        *(v69 + 64) = 42;
        *(v69 + 72) = vdupq_n_s64(0x3FE999999999999AuLL);
        v70 = v75;
        sub_237AE6D08(v67, v75);
        v94[3] = v68;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v94);
        sub_237AE71C8(v70, boxed_opaque_existential_0);
        OUTLINED_FUNCTION_7_31();
        sub_237AE7174();
        sub_2379DAE54(v94, v69);
        v72 = (v59 + v66[6]);
        *v72 = 0;
        v72[1] = 0xE000000000000000;
        OUTLINED_FUNCTION_19_24();
        sub_237AE7174();
        OUTLINED_FUNCTION_1_50();
        sub_237AE7174();
        *(v59 + v66[7]) = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v57 = swift_allocError();
        *v58 = 0xD00000000000004ELL;
        v58[1] = 0x8000000237C1B300;
        OUTLINED_FUNCTION_23_3(v57, v58);
        swift_willThrow();
        sub_237AE7174();
        sub_237AE7174();
        sub_237AE7174();
      }

      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237AE42C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2379F9374;

  return sub_237B919A4();
}

void static MLRandomForestClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v2 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = *(v1 + 8);
  v11 = *v1;
  v12 = v9;
  sub_2379DBCF4(v11, v9);
  sub_237A70ED4(&v11, v8);
  static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v4 + 8))(v8, v2);
  if (!v0)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA08, &qword_237C119F8);
    OUTLINED_FUNCTION_91(v10);
    sub_237BEC454();
  }

  OUTLINED_FUNCTION_73();
}

void static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v1 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = (v6 - v5);
  v8 = *(v0 + 8);
  v9 = *v0;
  v10 = v8;
  sub_2379DBCF4(v9, v8);
  sub_237A70ED4(&v9, v7);
  static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v37 = v1;
  v38 = v2;
  v4 = v3;
  v40 = v5;
  v36 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters(0);
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  v35 = v12;
  v13 = sub_237C071DC();
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_0();
  v39 = v18;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_138();
  v21 = v20;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  v25 = v4;
  sub_2379E9068(v4, &v44, &qword_27DE9A998, &unk_237C0C100);
  if (v45)
  {
    v26 = *(v16 + 48);
    sub_2379DAD24(&v44, &v41);
    swift_dynamicCast();
    sub_237A65054(v24, &v24[v26], v8);
    OUTLINED_FUNCTION_7_31();
    sub_237AE7174();
    if (!v0)
    {
      sub_2379E9068(v24, v21, &qword_27DE9ADC0, &unk_237C0BF40);
      v33 = *(v16 + 48);
      sub_2379E9068(v24, v39, &qword_27DE9ADC0, &unk_237C0BF40);
      sub_237AE1E74(v25, &v41);

      sub_237C071CC();
      sub_237C070DC();
      sub_237C0709C();
      sub_237C070FC();
      sub_237C0715C();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237C0711C();
      sub_237C0713C();
      sub_237AE35BC(&v41);
      OUTLINED_FUNCTION_3_46();
      v27 = v35;
      sub_237AE6D08(v38, v35);
      v28 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v28);
      sub_237A6A6F8();
      OUTLINED_FUNCTION_46();
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      v30 = (*(v29 + 8))(v39);
      OUTLINED_FUNCTION_69_4(v30, &qword_27DE9A9A0, &qword_237C0BF60);
      v42 = v28;
      v43 = &off_284AC2A08;
      *&v41 = v27;
      OUTLINED_FUNCTION_3_46();
      v31 = v34;
      sub_237AE6D08(v38, v34);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA10, &qword_237C11A00);
      OUTLINED_FUNCTION_91(v32);

      sub_2379E4248(&v41, v31, 1);
      sub_2379D9054(v24, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLRandomForestClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA08, &qword_237C119F8);
  OUTLINED_FUNCTION_91(v1);

  sub_237BEC454();
}

void static MLRandomForestClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v6)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA08, &qword_237C119F8);
    OUTLINED_FUNCTION_91(v7);
    sub_237BEC454();
  }
}

void static MLRandomForestClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-1] - v8;
  OUTLINED_FUNCTION_3_46();
  sub_237AE6D08(a1, v9);
  v10 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v10);
  v11 = OUTLINED_FUNCTION_39_9();
  v12 = sub_237A6A5D0(v11);
  if (!v1)
  {
    v15[3] = v10;
    v15[4] = &off_284AC2A08;
    v15[0] = v12;
    OUTLINED_FUNCTION_3_46();
    sub_237AE6D08(a1, v6);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA10, &qword_237C11A00);
    OUTLINED_FUNCTION_91(v13);
    sub_2379E4248(v15, v6, 1);
  }
}

uint64_t sub_237AE4C00(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA28, &qword_237C11AD0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-v15 - 8];
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    a4(v12);
    return sub_2379D9054(v12, &qword_27DE9CA28, &qword_237C11AD0);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_dynamicCast();
    v19 = v22;
    v20 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = a4;
    v21[6] = a5;

    sub_237BBAEC8(0, 0, v16, &unk_237C11AE0, v21);
  }
}

uint64_t sub_237AE4DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA28, &qword_237C11AD0);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237AE4EA8);
}

uint64_t sub_237AE4EA8()
{
  OUTLINED_FUNCTION_9();

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_237AE4F48;

  return sub_237AE521C();
}

uint64_t sub_237AE4F48()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237AE5044()
{
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_37_0();
  sub_237AE7128(v1, v2, &qword_27DE9CA28, &qword_237C11AD0);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = OUTLINED_FUNCTION_13_11();
  sub_237AE7128(v5, v6, &qword_27DE9CA28, &qword_237C11AD0);
  v4(v3);
  sub_2379D9054(v3, &qword_27DE9CA28, &qword_237C11AD0);

  OUTLINED_FUNCTION_8();

  return v7();
}

uint64_t sub_237AE5134()
{
  *v0[7] = v0[10];
  swift_storeEnumTagMultiPayload();
  v1 = v0[8];
  v2 = v0[3];
  sub_237AE7128(v0[7], v1, &qword_27DE9CA28, &qword_237C11AD0);
  v2(v1);
  sub_2379D9054(v1, &qword_27DE9CA28, &qword_237C11AD0);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237AE521C()
{
  OUTLINED_FUNCTION_9();
  v0[36] = v1;
  v0[37] = v2;
  v3 = type metadata accessor for AnyClassificationMetrics(0);
  v0[38] = v3;
  OUTLINED_FUNCTION_20(v3);
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC88, &unk_237C11AF0);
  OUTLINED_FUNCTION_20(v4);
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v5 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_20(v5);
  v0[43] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[44] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[45] = v7;
  v0[46] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v8);
  v0[47] = OUTLINED_FUNCTION_19();
  v9 = type metadata accessor for MLRandomForestClassifier(0);
  v0[48] = v9;
  OUTLINED_FUNCTION_20(v9);
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v10);
  v0[51] = OUTLINED_FUNCTION_19();
  v11 = sub_237C071DC();
  v0[52] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[53] = v12;
  v0[54] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v13);
  v0[55] = OUTLINED_FUNCTION_19();
  v14 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v0[56] = v14;
  OUTLINED_FUNCTION_20(v14);
  v0[57] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_237AE5494()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 448);
  v6 = *(v0 + 456);
  v8 = *(v0 + 432);
  v9 = *(v0 + 416);
  v10 = *(v0 + 424);
  v11 = *(v0 + 408);
  v12 = *(v0 + 376);
  v13 = *(v0 + 296);
  sub_237AE71C8(*(v0 + 440), v6);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379E9068(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237AAC8D8(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v15 = v14[1];
  v32 = *v14;
  *(v0 + 464) = v15;
  v16 = *(v6 + v7[7]);
  *(v0 + 472) = v16;
  v17 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v13 + v17, v12, &qword_27DE9BC78, &qword_237C0EBD0);
  v18 = type metadata accessor for AnyTreeClassifierModel(0);
  result = __swift_getEnumTagSinglePayload(v12, 1, v18);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = *(v0 + 384);
  v19 = *(v0 + 392);
  v22 = *(v0 + 360);
  v21 = *(v0 + 368);
  v23 = *(v0 + 352);
  sub_237AE1E74(v0 + 16, v0 + 104);
  v24 = v20[9];
  *(v0 + 512) = v24;
  v25 = (v19 + v24);

  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v21);
  sub_2379E5C70(v21);
  (*(v22 + 8))(v21, v23);
  *v25 = 0;
  *(v0 + 480) = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v26 = v20[10];
  *(v0 + 516) = v26;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v27 = swift_allocError();
  *v28 = 0xD0000000000000C0;
  v28[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v27, v28);
  *(v19 + v26) = v29;
  swift_storeEnumTagMultiPayload();
  *(v19 + v20[7]) = v16;
  v30 = (v19 + v20[6]);
  *v30 = v32;
  v30[1] = v15;
  v31 = swift_task_alloc();
  *(v0 + 488) = v31;
  *v31 = v0;
  v31[1] = sub_237AE57D4;

  return sub_237B919A4();
}

uint64_t sub_237AE57D4()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 496) = v0;

  if (!v0)
  {
    *(v5 + 504) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237AE58E4()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[42];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[36];
  *(v2 + *(v3 + 20)) = v0[63];
  OUTLINED_FUNCTION_20_19();
  sub_237AE71C8(v8, v2);
  memcpy((v2 + *(v3 + 32)), v0 + 13, 0x58uLL);
  sub_237AE71C8(v2, v1);
  sub_237AE71C8(v1, v7);
  v9 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v6 + v9, v4, &qword_27DE9BC88, &unk_237C11AF0);
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[48];
    v13 = v0[42];
    v12 = v0[43];
    v14 = v0[41];
    v16 = v0[37];
    v15 = v0[38];
    v17 = v0[36];
    sub_237AE35BC((v0 + 2));
    OUTLINED_FUNCTION_8_30();
    sub_237AE71C8(v13, v12);
    OUTLINED_FUNCTION_37_0();
    swift_storeEnumTagMultiPayload();
    sub_2379DC1F8(v12, v17 + *(v11 + 36));
    v18 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v16 + v18, v14, &qword_27DE9BC88, &unk_237C11AF0);

    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      v19 = v0[41];
      OUTLINED_FUNCTION_12_27();
      sub_237AE7174();
      sub_2379D9054(v19, &qword_27DE9BC88, &unk_237C11AF0);
    }

    else
    {
      v20 = v0[48];
      v21 = v0[40];
      v22 = v0[39];
      v23 = v0[36];
      sub_237AE71C8(v0[41], v21);
      sub_237AE71C8(v21, v22);
      v24 = *(v20 + 40);
      sub_237AE7174();
      sub_237AE71C8(v22, v23 + v24);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_27();
      sub_237AE7174();
    }

    OUTLINED_FUNCTION_8();

    return v25();
  }

  return result;
}

uint64_t sub_237AE5C14()
{
  sub_237AE35BC(v0 + 104);
  OUTLINED_FUNCTION_1_50();
  sub_237AE7174();

  sub_237AE7174();
  sub_237AE7174();

  sub_237AE35BC(v0 + 16);
  OUTLINED_FUNCTION_12_27();
  sub_237AE7174();

  OUTLINED_FUNCTION_8();

  return v1();
}

void MLRandomForestClassifier.predictions(from:)()
{
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v2 = OUTLINED_FUNCTION_47_3();
  type metadata accessor for MLRandomForestClassifier(v2);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v0)
  {
    OUTLINED_FUNCTION_11();
    sub_237A5DEEC(v3, v4);
    sub_237C05DFC();
    v5 = OUTLINED_FUNCTION_13_11();
    v6(v5);
  }
}

uint64_t MLRandomForestClassifier.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v6 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v10 = sub_237C0602C();
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v12 = *(a1 + 8);
  v14 = *a1;
  v15 = v12;
  sub_2379DBCF4(v14, v12);
  sub_237A70ED4(&v14, v3);
  MLRandomForestClassifier.predictions(from:)();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  (*(v8 + 8))(v3, v6);
  return sub_237A72900(v4, 1, v1);
}

uint64_t MLRandomForestClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_146();
  v5 = type metadata accessor for AnyClassificationMetrics(v4);
  v6 = OUTLINED_FUNCTION_20(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_47_3();
  v8 = type metadata accessor for MLRandomForestClassifier(v7);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v10 = (v1 + *(v8 + 24));
  v11 = v10[1];
  *(inited + 32) = *v10;
  *(inited + 40) = v11;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  sub_237A5EF84(a1, v2);
  OUTLINED_FUNCTION_8_30();
  v13 = OUTLINED_FUNCTION_13_11();
  sub_237AE71C8(v13, v14);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload();
}

{
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  sub_2379DBCF4(v11, v9);
  sub_237A70ED4(&v11, v8);
  MLRandomForestClassifier.evaluation(on:)(v8);
  return (*(v4 + 8))(v8, v2);
}

void MLRandomForestClassifier.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v42 = v0;
  v3 = v2;
  v4 = type metadata accessor for AnyTreeClassifierModel(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v18 = v3;
  v21 = v20 - v19;
  memcpy(v41, v18, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v34 = v11;
    OUTLINED_FUNCTION_2_51();
    sub_237AE6D08(v42, v8);
    v22 = *(&v41[0] + 1);
    if (*(&v41[0] + 1))
    {
      v23 = *&v41[0];
      v24 = *(&v41[1] + 1);
      v25 = *&v41[1];
      v26 = v41[2];
      v27 = *(&v41[3] + 1);
      v28 = *&v41[3];
      v29 = *&v41[4];
    }

    else
    {
      v30 = v21;
      v31 = NSFullUserName();
      v23 = sub_237C086EC();
      v22 = v32;

      v21 = v30;
      v29 = 0;
      v24 = 0x8000000237C17C90;
      v25 = 0xD000000000000033;
      v26 = 0uLL;
      v27 = 0xE100000000000000;
      v28 = 49;
    }

    v36[0] = v23;
    v36[1] = v22;
    v36[2] = v25;
    v36[3] = v24;
    v37 = v26;
    v38 = v28;
    v39 = v27;
    v40 = v29;
    sub_2379E9068(v41, &v35, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB398(v36);
    OUTLINED_FUNCTION_1_50();
    sub_237AE7174();
    sub_2379FC064(v36);
    sub_237C07E5C();
    (*(v34 + 8))(v15, v9);
    OUTLINED_FUNCTION_36_3();
    v33(v21, v16);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLRandomForestClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v22[1] = v4;
  v23 = v2;
  v6 = v5;
  v7 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = v22 - v13;
  v15 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  memcpy(v24, v6, sizeof(v24));
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v9 + 104))(v3, *MEMORY[0x277CC91D8], v7);

  sub_237C05ABC();
  MLRandomForestClassifier.write(to:metadata:)();
  (*(v17 + 8))(v21, v15);
  OUTLINED_FUNCTION_73();
}

unint64_t MLRandomForestClassifier.debugDescription.getter()
{
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v3 = type metadata accessor for MLRandomForestClassifier(0);
  v4 = MLRandomForestClassifier.ModelParameters.description.getter();
  v6 = v5;
  v7 = MLClassifierMetrics.description.getter();
  v9 = v8;
  sub_237AE6D08(v0 + *(v3 + 40), v1);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  sub_237AE7174();
  v10 = MLClassifierMetrics.description.getter();
  v12 = v11;
  MEMORY[0x2383DC360](v4, v6);

  MEMORY[0x2383DC360](v7, v9);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (v3 <= 1)
  {
    MEMORY[0x2383DC360](v10, v12);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  return 0xD000000000000023;
}

id MLRandomForestClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLRandomForestClassifier.debugDescription.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

unint64_t sub_237AE6A00()
{
  result = qword_27DE9CA00;
  if (!qword_27DE9CA00)
  {
    type metadata accessor for AnyTreeClassifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CA00);
  }

  return result;
}

uint64_t sub_237AE6AA4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_237AE7220(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for AnyTreeClassifierModel(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 16))
  {
  }

  v3 = *(v1 + 24);
  sub_237C0704C();
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(v2 + v3);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AE6C4C()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for AnyTreeClassifierModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237AE42C4(v5);
}

uint64_t sub_237AE6D08(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

id sub_237AE6D60@<X0>(void *a1@<X8>)
{
  result = MLRandomForestClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237AE6DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_87();
  v7 = type metadata accessor for AnyTreeClassifierModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = type metadata accessor for MLClassifierMetrics(0);
    v9 = v3 + *(a3 + 36);
    goto LABEL_8;
  }

  v10 = *(v3 + *(a3 + 20));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_237AE6E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_87();
  result = type metadata accessor for AnyTreeClassifierModel(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v10 = type metadata accessor for MLClassifierMetrics(0);
    v11 = v4 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_237AE6F4C(uint64_t a1)
{
  type metadata accessor for AnyTreeClassifierModel(319);
  if (v1 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v2 <= 0x3F)
    {
      sub_2379FC328();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MLClassifierMetrics(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_237AE7020()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AE7068(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_237AE4DEC(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_237AE7128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_151(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v4;
}

uint64_t sub_237AE7174()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237AE71C8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

uint64_t sub_237AE7220(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_237C0923C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v11 = sub_237C0898C();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_237AE732C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_237AE7388(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_237C0929C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_237AE7450(uint64_t **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC0B38();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_237BC0B38();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_237AE8050((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_237AE7DF8(&v77, *result, a3);
LABEL_89:
}

void sub_237AE78F0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_237C0929C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_237C0929C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_237C0929C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC0B38();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_237BC0B38();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_237AE81C4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_237AE7F24(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_237AE7DF8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_237BA12F8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_237AE8050((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_237AE7F24(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_237BA12F8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_237AE81C4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_237AE8050(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_237A20CF8(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_237A20CF8(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_237AE81C4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_237A1DCBC(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_237C0929C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_237A1DCBC(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_237C0929C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_237AE8368(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_237C093CC();
  sub_237C093EC();
  if (a2)
  {
    sub_237C0878C();
  }

  result = sub_237C0940C();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 16 * v9);
      v16 = v15[1];
      if (v16)
      {
        if (a2)
        {
          v17 = *v15 == a1 && v16 == a2;
          if (v17 || (result = sub_237C0929C(), (result & 1) != 0))
          {
LABEL_18:
            *v15 = a1;
            v15[1] = a2;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_18;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
    }

    while ((v11 & (1 << v9)) != 0);
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v7 + 8 * v10) = v11 | v12;
    v18 = (*(v5 + 48) + 16 * v9);
    *v18 = a1;
    v18[1] = a2;
    v19 = *(v5 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(v5 + 16) = v21;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_21@<X0>(uint64_t a1@<X8>)
{

  return sub_237AE6D08(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_52_9(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 376) + *(v3 - 408);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_55_6()
{
  v2 = *(v0 - 272);

  return sub_237AE35BC(v2);
}

uint64_t OUTLINED_FUNCTION_69_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 72) + *(v3 - 272);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_71_3(uint64_t a1, uint64_t a2)
{

  return sub_2379E8FD0(v2, a2, 0);
}

uint64_t OUTLINED_FUNCTION_72_4()
{
}

uint64_t OUTLINED_FUNCTION_73_3()
{
}

uint64_t OUTLINED_FUNCTION_74_3()
{

  return sub_237AE7174();
}

uint64_t sub_237AE8814(char a1)
{
  result = 0x6172745F74696E69;
  switch(a1)
  {
    case 1:
    case 8:
      OUTLINED_FUNCTION_0_52();
      result = v8 - 1;
      break;
    case 2:
      OUTLINED_FUNCTION_0_52();
      result = v6 + 3;
      break;
    case 3:
      result = 0x745F656D75736572;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E69617274;
      break;
    case 6:
      result = 1702257011;
      break;
    case 7:
      result = 0x6174656D5F646461;
      break;
    case 9:
      result = 0x737265765F746567;
      break;
    case 10:
      result = 0x74636964657270;
      break;
    case 11:
      result = 0x657A696C797473;
      break;
    case 12:
      OUTLINED_FUNCTION_0_52();
      result = v3 + 1;
      break;
    case 13:
      result = 0x657461756C617665;
      break;
    case 14:
      result = 0x74706F5F74696E69;
      break;
    case 15:
      result = 0x6569665F7473696CLL;
      break;
    case 16:
      result = 0x756C61765F746567;
      break;
    case 17:
      result = 0x6E656D6D6F636572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      OUTLINED_FUNCTION_0_52();
      result = v10 + 7;
      break;
    case 20:
      OUTLINED_FUNCTION_0_52();
      result = v7 | 0xC;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      OUTLINED_FUNCTION_0_52();
      result = v9 | 8;
      break;
    case 23:
      OUTLINED_FUNCTION_0_52();
      result = v11 + 26;
      break;
    case 24:
      OUTLINED_FUNCTION_0_52();
      result = v5 + 19;
      break;
    case 25:
      OUTLINED_FUNCTION_0_52();
      result = v4 + 9;
      break;
    case 26:
      OUTLINED_FUNCTION_0_52();
      result = v12 + 16;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237AE8BE0()
{
  v3 = OUTLINED_FUNCTION_87();
  v4 = _s13GraphCNNModelVMa(v3);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  OUTLINED_FUNCTION_20(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_237C05ADC();
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  sub_237C05A2C();
  v28[0] = 1;
  v29 = 44;
  v30 = 0xE100000000000000;
  v31 = 0;
  v32 = 0xE000000000000000;
  v33 = 92;
  v34 = 0xE100000000000000;
  v35 = 1;
  v36 = 34;
  v37 = 0xE100000000000000;
  v38 = 1;
  v39 = &unk_284ABEBF0;
  v40 = 10;
  v42 = 0;
  v43 = 0;
  v41 = 0xE100000000000000;
  v44 = 1;
  v45 = 0;
  MLDataTable.init(contentsOf:options:)(v14, v28, &v27);
  if (!v1)
  {
    v15 = OUTLINED_FUNCTION_8_9();
    v17 = sub_237AE8EA4(v15, v16);
    v18 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
    swift_beginAccess();
    v26 = v0;
    sub_237AF1B7C(v0 + v18, v2);
    sub_237AECC58(v2);
    sub_237AF1BD8(v2, _s13GraphCNNModelVMa);
    v19 = v0;
    v20 = v26;
    sub_237AE9804(v21, v19, v9, v17);
    v22 = OUTLINED_FUNCTION_8_9();
    sub_2379DBC9C(v22, v23);

    v24 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer;
    swift_beginAccess();
    sub_237AF19C8(v9, v20 + v24);
    swift_endAccess();
  }
}

id sub_237AE8EA4(void *a1, char a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  v6 = sub_237C085AC();
  v63 = a1;
  v7 = a2 & 1;
  v64 = v7;
  sub_2379DBCF4(a1, v7);
  v8 = 0;
  v53 = a1;
  for (i = v7; ; v7 = i)
  {
    v60 = a1;
    LOBYTE(v61) = v7;
    if (v8 == MLDataTable.size.getter())
    {
      break;
    }

    MLDataTable.Rows.subscript.getter(v8, &v60);
    v9 = v61;
    v10 = sub_237B6A8E8(v8);
    if (!v9[2])
    {
      goto LABEL_36;
    }

    v11 = v10;
    v12 = sub_237ACAC78(1937335659, 0xE400000000000000);
    if ((v13 & 1) == 0)
    {
      goto LABEL_36;
    }

    v54 = v11;
    v14 = sub_237A2E9C8(*(v9[7] + 8 * v12));
    if (v3)
    {
      goto LABEL_50;
    }

    sub_237AFC548(v14, &v60);
    v16 = v60;
    v15 = v61;
    if (v62 != 2)
    {
      sub_2379E8CE8(v60, v61, v62);
LABEL_36:

      sub_2379E8AF0();
      swift_allocError();
      *v45 = 0xD000000000000055;
      *(v45 + 8) = 0x8000000237C1B800;
      *(v45 + 16) = 0u;
      *(v45 + 32) = 0u;
      *(v45 + 48) = 2;
      swift_willThrow();
LABEL_41:

LABEL_42:

      break;
    }

    if (!v9[2])
    {
      goto LABEL_40;
    }

    sub_2379E9288(v60, v61, 2);
    v17 = sub_237ACAC78(0x7365756C6176, 0xE600000000000000);
    if ((v18 & 1) == 0)
    {
      v46 = v16;
      v47 = v15;
      v48 = 2;
      goto LABEL_39;
    }

    v58 = v16;
    v3 = 0;
    v19 = sub_237A2E9C8(*(v9[7] + 8 * v17));
    sub_237AFC548(v19, &v60);
    v20 = v60;
    v57 = v61;
    v21 = v62;
    if (v62 != 3)
    {
      sub_2379E8CE8(v58, v15, 2);
      v46 = v20;
      v16 = v58;
      v47 = v57;
      v48 = v21;
LABEL_39:
      sub_2379E8CE8(v46, v47, v48);
LABEL_40:

      sub_2379E8AF0();
      swift_allocError();
      *v49 = 0xD00000000000005BLL;
      *(v49 + 8) = 0x8000000237C1B860;
      *(v49 + 16) = 0u;
      *(v49 + 32) = 0u;
      *(v49 + 48) = 2;
      swift_willThrow();
      sub_2379E8CE8(v16, v15, 2);
      goto LABEL_41;
    }

    v56 = v15;

    v22 = sub_237A2E9F4();
    if (sub_237A2E9F4() < 0)
    {
      goto LABEL_45;
    }

    v23 = sub_237A2E9F4();
    if (v22 < 0 || v23 < v22)
    {
LABEL_46:
      __break(1u);

      __break(1u);

      __break(1u);

      __break(1u);
LABEL_47:
      __break(1u);

      __break(1u);

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      while (1)
      {
LABEL_50:
        swift_unexpectedError();
        __break(1u);
      }
    }

    if (v22)
    {
      v51 = v6;
      v60 = MEMORY[0x277D84F90];
      sub_237AC8B54();
      v24 = 0;
      v25 = v60;
      while (2)
      {
        v26 = sub_237A2E9C8(v24);
        v27 = v24 + 1;
        switch(sub_237A2E910())
        {
          case 1u:

            sub_237B0E848();
            v29 = v28;

            v60 = v25;
            v30 = v25[2];
            if (v30 >= v25[3] >> 1)
            {
              sub_237AC8B54();
              v25 = v60;
            }

            v25[2] = v30 + 1;
            v25[v30 + 4] = v29;
            if (v24 >= sub_237A2E9F4())
            {
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            ++v24;
            if (v22 != v27)
            {
              continue;
            }

            v32 = v57;
            sub_2379E8CE8(v20, v57, 3);
            v6 = v51;
            break;
          case 2u:

            v33 = sub_237A2DE60();
            v35 = v34;
            v55 = 2;

            sub_2379E8CE8(v20, v57, 3);
            v36 = v56;
            sub_2379E8CE8(v58, v56, 2);
            goto LABEL_33;
          case 3u:
            v40 = sub_237B0DD68(*(v26 + 16));
            v6 = v51;
            v36 = v56;
            if (!v40)
            {
              goto LABEL_48;
            }

            v41 = v40;

            v55 = 3;
            sub_2379E8CE8(v20, v57, 3);
            sub_2379E8CE8(v58, v56, 2);
            type metadata accessor for CMLSequence();
            v33 = swift_allocObject();
            v35 = 0;
            *(v33 + 16) = v41;
            *(v33 + 24) = 1;
            goto LABEL_34;
          case 4u:
            v42 = sub_237B0DDC8(*(v26 + 16));
            if (!v42)
            {
              goto LABEL_49;
            }

            type metadata accessor for CMLDictionary();
            v43 = swift_allocObject();
            *(v43 + 16) = v42;
            v65[0] = v43;
            v65[1] = sub_237B004D4;
            v65[2] = 0;
            v65[3] = sub_237B02424;
            v65[4] = 0;
            v65[5] = sub_237AB65A0;
            v65[6] = 0;
            v59 = MEMORY[0x277D84F98];
            swift_retain_n();
            sub_237B019D8(v65, 1, &v59);
            v36 = v56;

            sub_2379E8CE8(v20, v57, 3);
            sub_2379E8CE8(v58, v56, 2);
            v35 = 0;
            v33 = v59;
            v39 = 4;
            goto LABEL_32;
          case 5u:

            sub_2379E8CE8(v20, v57, 3);
            v36 = v56;
            sub_2379E8CE8(v58, v56, 2);
            v33 = 0;
            v35 = 0;
            v39 = 6;
            goto LABEL_32;
          case 6u:

            sub_237AC8278(v38, &v59);
            if (!v59)
            {
              goto LABEL_47;
            }

            v33 = v59;

            sub_2379E8CE8(v20, v57, 3);
            v36 = v56;
            sub_2379E8CE8(v58, v56, 2);
            v35 = 0;
            v39 = 5;
LABEL_32:
            v55 = v39;
LABEL_33:
            v6 = v51;
LABEL_34:
            sub_2379E8AF0();
            swift_allocError();
            *v44 = 0xD000000000000058;
            *(v44 + 8) = 0x8000000237C1B8C0;
            *(v44 + 16) = 0u;
            *(v44 + 32) = 0u;
            *(v44 + 48) = 2;
            swift_willThrow();
            sub_2379E8CE8(v33, v35, v55);

            sub_2379E8CE8(v58, v36, 2);

            sub_2379E8CE8(v20, v57, 3);
            goto LABEL_42;
          default:
            v37 = *(v26 + 16);

            v33 = sub_237B0ECCC(v37);

            sub_2379E8CE8(v20, v57, 3);
            v36 = v56;
            sub_2379E8CE8(v58, v56, 2);
            v35 = 0;
            v55 = 0;
            goto LABEL_33;
        }

        break;
      }
    }

    else
    {
      v32 = v57;
      sub_2379E8CE8(v20, v57, 3);
      v25 = MEMORY[0x277D84F90];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v6;
    sub_237B40F54(v25, v58, v56, isUniquelyReferenced_nonNull_native);
    sub_2379E8CE8(v58, v56, 2);
    sub_2379E8CE8(v20, v32, 3);

    sub_2379E8CE8(v58, v56, 2);
    v6 = v60;
    a1 = v53;
    v8 = v54;
  }

  sub_2379DBC9C(v63, v64);
  return v6;
}

uint64_t sub_237AE9804(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v70 = a3;
  v58 = sub_237C062EC();
  *&v73 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v49 - v8;
  v63 = sub_237C0638C();
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v49 - v11;
  v68 = sub_237C065CC();
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v61 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v49 - v14;
  v82 = sub_237C0697C();
  v50 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v20 = _s13GraphCNNModelVMa(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  sub_237AF1B7C(v4 + v23, v22);
  v72 = v4;
  v24 = sub_237AEA2A4();
  result = sub_237AF1BD8(v22, _s13GraphCNNModelVMa);
  v26 = 0;
  v69 = v24 + 32;
  v51 = (v73 + 32);
  v52 = (v73 + 8);
  v54 = (v65 + 4);
  v55 = (v65 + 1);
  v59 = v64 + 4;
  v60 = (v64 + 1);
  v64 = (v50 + 32);
  v65 = (v50 + 8);
  v66 = v24;
  while (1)
  {
    v27 = *(v24 + 16);
    v28 = 0uLL;
    if (v26 == v27)
    {
      v29 = 0uLL;
      v30 = 0uLL;
      goto LABEL_6;
    }

    if (v26 >= v27)
    {
      break;
    }

    *&v78 = v26;
    sub_2379E8624(v69 + 40 * v26, &v78 + 8);
    v28 = v78;
    v29 = v79;
    ++v26;
    v30 = v80;
LABEL_6:
    v81[0] = v28;
    v81[1] = v29;
    v81[2] = v30;
    if (!v30)
    {
    }

    v73 = v28;
    sub_237AC1720((v81 + 8), &v78);
    v76 = 0x5F726579616CLL;
    v77 = 0xE600000000000000;
    v74 = v73;
    v31 = sub_237C0924C();
    MEMORY[0x2383DC360](v31);

    v32 = v76;
    v33 = v77;
    sub_2379E8624(&v78, &v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    v34 = v82;
    if (swift_dynamicCast())
    {
      (*v64)(v16, v19, v34);
      sub_237AEA510(v16, v70, v32, v33, v71);
      if (v5)
      {

        (*v65)(v16, v34);
        goto LABEL_27;
      }

      (*v65)(v16, v34);
    }

    else
    {
      v35 = v16;
      v36 = v67;
      v37 = v68;
      if (swift_dynamicCast())
      {
        v38 = v61;
        (*v59)(v61, v36, v37);
        sub_237AEB3DC(v38, v70, v32, v33, v71, MEMORY[0x277D2CE80], sub_237A7ED98, MEMORY[0x277D2CE70], MEMORY[0x277D2CE68], MEMORY[0x277D2CE58], MEMORY[0x277D2CE60]);
        if (v5)
        {

          (*v60)(v38, v37);
          goto LABEL_27;
        }

        (*v60)(v38, v37);
      }

      else
      {
        v39 = v62;
        v40 = v63;
        if (swift_dynamicCast())
        {
          v41 = v56;
          (*v54)(v56, v39, v40);
          sub_237AEB3DC(v41, v70, v32, v33, v71, MEMORY[0x277D2CE20], sub_237A7FBB8, MEMORY[0x277D2CE10], MEMORY[0x277D2CE08], MEMORY[0x277D2CDF8], MEMORY[0x277D2CE00]);
          if (v5)
          {

            (*v55)(v41, v40);
            goto LABEL_27;
          }

          (*v55)(v41, v40);
        }

        else
        {
          v42 = v57;
          v43 = v58;
          if ((swift_dynamicCast() & 1) == 0)
          {

            v74 = 0;
            v75 = 0xE000000000000000;
            sub_237C08EDC();
            MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C1B610);
            __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
            sub_237C0927C();
            MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C1B640);
            v46 = v74;
            v47 = v75;
            sub_2379E8AF0();
            swift_allocError();
            *v48 = v46;
            *(v48 + 8) = v47;
            *(v48 + 16) = 0u;
            *(v48 + 32) = 0u;
            *(v48 + 48) = 2;
            swift_willThrow();
            goto LABEL_28;
          }

          v44 = v42;
          v45 = v53;
          (*v51)(v53, v44, v43);
          sub_237AEBDFC(v45, v70, v32, v33, v71);
          if (v5)
          {

            (*v52)(v45, v43);
LABEL_27:

LABEL_28:
            __swift_destroy_boxed_opaque_existential_1(&v76);
            return __swift_destroy_boxed_opaque_existential_1(&v78);
          }

          (*v52)(v45, v43);
        }
      }

      v16 = v35;
      v24 = v66;
    }

    __swift_destroy_boxed_opaque_existential_1(&v76);
    result = __swift_destroy_boxed_opaque_existential_1(&v78);
  }

  __break(1u);
  return result;
}

uint64_t sub_237AEA2A4()
{
  _s13GraphCNNModelVMa(0);
  sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
  sub_237C0645C();
  sub_237C0906C();
  v0 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_237C0913C();
    if (!v14)
    {
      break;
    }

    sub_237AC1720(&v13, v12);
    sub_2379E8624(v12, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC48, &qword_237C12138);
    if (swift_dynamicCast())
    {
      sub_2379E8624(v12, &v8);
      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v1 = *(sub_237C063AC() + 16);

      if (v1)
      {
        sub_2379E8624(v12, &v8);
      }

      else
      {
        v10 = 0;
        v8 = 0u;
        v9 = 0u;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (*(&v9 + 1))
    {
      sub_237AC1720(&v8, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC114C();
        v0 = v3;
      }

      v2 = *(v0 + 16);
      if (v2 >= *(v0 + 24) >> 1)
      {
        sub_237BC114C();
        v0 = v4;
      }

      *(v0 + 16) = v2 + 1;
      sub_237AC1720(v11, v0 + 40 * v2 + 32);
    }

    else
    {
      sub_2379D9054(&v8, &qword_27DE9CC50, &unk_237C12140);
    }
  }

  return v0;
}

uint64_t sub_237AEA510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v132 = a3;
  v135 = a4;
  v122 = a2;
  v129 = a1;
  v7 = sub_237C060BC();
  v8 = *(v7 - 8);
  v116 = v7;
  v117 = v8;
  MEMORY[0x28223BE20](v7);
  v113 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v115 = &v98 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  MEMORY[0x28223BE20](v12 - 8);
  v119 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v121 = &v98 - v15;
  v125 = sub_237C0683C();
  v127 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v118 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = &v98 - v18;
  MEMORY[0x28223BE20](v19);
  v123 = &v98 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  MEMORY[0x28223BE20](v21 - 8);
  v124 = &v98 - v22;
  v128 = sub_237C069CC();
  v130 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v98 - v26;
  v28 = sub_237C0697C();
  v126 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_237ABDDA4(v29);
  sub_237BAFA0C();
  v34 = v33;
  v35 = v131;
  sub_237A7E6C0(v132, v135, v31);
  v131 = v35;
  if (v35)
  {
  }

  v107 = v24;
  v111 = v34;
  v109 = a5;
  v110 = v5;
  v114 = v31;
  v112 = v28;
  sub_237C0693C();
  sub_237C0699C();
  v38 = v130 + 8;
  v37 = *(v130 + 8);
  v37(v27, v128);
  v39 = sub_237ACDA80();
  if (!v39)
  {

    v133 = 0;
    v134 = 0xE000000000000000;
    sub_237C08EDC();

    v133 = 0xD000000000000019;
    v134 = 0x8000000237C1B660;
    MEMORY[0x2383DC360](v132, v135);
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1B680);
    v58 = v133;
    v59 = v134;
    sub_2379E8AF0();
    swift_allocError();
    *v60 = v58;
    *(v60 + 8) = v59;
    *(v60 + 16) = 0u;
    *(v60 + 32) = 0u;
    *(v60 + 48) = 2;
    swift_willThrow();
    return (*(v126 + 8))(v114, v112);
  }

  v40 = v39;
  v105 = v37;
  v108 = v32;
  v130 = v38;
  v41 = v123;
  sub_237C0692C();
  v42 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  v43 = sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
  v104 = v42;
  v44 = v124;
  v106 = v43;
  sub_237C063BC();
  v46 = v127 + 8;
  v45 = *(v127 + 8);
  v47 = v41;
  v48 = v125;
  v45(v47, v125);
  sub_2379D9054(v44, &qword_27DE9B410, &qword_237C0CCC8);
  swift_endAccess();
  v49 = v120;
  sub_237C0692C();
  v50 = v121;
  sub_237C0679C();
  v120 = v45;
  v45(v49, v48);
  v103 = sub_237C0610C();
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v103);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v52 = swift_allocObject();
  v102 = xmmword_237C0B660;
  *(v52 + 16) = xmmword_237C0B660;
  *(v52 + 56) = MEMORY[0x277D837D0];
  v53 = sub_237A8E8E4();
  *(v52 + 64) = v53;
  v54 = v135;
  *(v52 + 32) = v132;
  *(v52 + 40) = v54;

  v55 = sub_237C0871C();
  v56 = v131;
  sub_237AEC70C(v40, v50, v109, v55, v57);
  if (v56)
  {

    sub_2379D9054(v50, &qword_27DE9BEE0, &unk_237C12120);
    return (*(v126 + 8))(v114, v112);
  }

  v99 = v53;
  v100 = v51;
  v101 = v40;
  v61 = v114;
  v127 = v46;
  v131 = 0;
  sub_2379D9054(v50, &qword_27DE9BEE0, &unk_237C12120);

  v62 = v107;
  sub_237C0691C();
  sub_237C0699C();
  v105(v62, v128);
  v63 = sub_237ACDA80();

  if (v63)
  {
    v64 = v123;
    sub_237C0690C();
    swift_beginAccess();
    v65 = v124;
    sub_237C063BC();
    v66 = v125;
    v130 = v63;
    v67 = v120;
    (v120)(v64, v125);
    sub_2379D9054(v65, &qword_27DE9B410, &qword_237C0CCC8);
    swift_endAccess();
    v68 = v118;
    sub_237C0690C();
    v69 = v119;
    sub_237C0679C();
    v67(v68, v66);
    v70 = v130;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v103);
    v71 = swift_allocObject();
    *(v71 + 16) = v102;
    v72 = v99;
    *(v71 + 56) = MEMORY[0x277D837D0];
    *(v71 + 64) = v72;
    *(v71 + 32) = v132;
    *(v71 + 40) = v135;

    v73 = sub_237C0871C();
    v74 = v131;
    sub_237AEC70C(v70, v69, v109, v73, v75);
    v76 = v126;
    if (v74)
    {

      sub_2379D9054(v69, &qword_27DE9BEE0, &unk_237C12120);
      v77 = *(v76 + 8);
      v78 = v61;
      return v77(v78, v112);
    }

    v131 = 0;
    sub_2379D9054(v69, &qword_27DE9BEE0, &unk_237C12120);

    v82 = v115;
    sub_237C068CC();
    sub_237C0609C();
    v84 = v117 + 8;
    v83 = *(v117 + 8);
    v83(v82, v116);
    v85 = sub_237ACDA80();
    v86 = v112;
    v128 = v85;
    if (v85)
    {
      sub_237C068BC();
      v117 = v84;
      swift_beginAccess();
      v87 = v124;
      sub_237C063BC();
      (v120)(v64, v125);
      sub_2379D9054(v87, &qword_27DE9B410, &qword_237C0CCC8);
      swift_endAccess();
      v88 = v113;
      sub_237C068EC();
      sub_237C0609C();
      v83(v88, v116);
      v89 = sub_237ACDA80();

      if (!v89)
      {
        v133 = 0;
        v134 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1B660);
        MEMORY[0x2383DC360](v132, v135);
        MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1B6E0);
        v95 = v133;
        v96 = v134;
        sub_2379E8AF0();
        swift_allocError();
        *v97 = v95;
        *(v97 + 8) = v96;
        *(v97 + 16) = 0u;
        *(v97 + 32) = 0u;
        *(v97 + 48) = 2;
        swift_willThrow();

        v77 = *(v76 + 8);
        v78 = v114;
        return v77(v78, v112);
      }

      v90 = v114;
      sub_237C068DC();
      swift_beginAccess();
      v91 = v124;
      sub_237C063BC();
      (v120)(v64, v125);
      sub_2379D9054(v91, &qword_27DE9B410, &qword_237C0CCC8);
      swift_endAccess();

      return (*(v76 + 8))(v90, v112);
    }

    else
    {

      v133 = 0;
      v134 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1B660);
      MEMORY[0x2383DC360](v132, v135);
      MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1B6C0);
      v92 = v133;
      v93 = v134;
      sub_2379E8AF0();
      swift_allocError();
      *v94 = v92;
      *(v94 + 8) = v93;
      *(v94 + 16) = 0u;
      *(v94 + 32) = 0u;
      *(v94 + 48) = 2;
      swift_willThrow();

      return (*(v76 + 8))(v114, v86);
    }
  }

  else
  {

    v133 = 0;
    v134 = 0xE000000000000000;
    sub_237C08EDC();

    v133 = 0xD000000000000019;
    v134 = 0x8000000237C1B660;
    MEMORY[0x2383DC360](v132, v135);
    MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1B6A0);
    v79 = v133;
    v80 = v134;
    sub_2379E8AF0();
    swift_allocError();
    *v81 = v79;
    *(v81 + 8) = v80;
    *(v81 + 16) = 0u;
    *(v81 + 32) = 0u;
    *(v81 + 48) = 2;
    swift_willThrow();

    return (*(v126 + 8))(v61, v112);
  }
}

uint64_t sub_237AEB3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, void, uint64_t), uint64_t (*a8)(uint64_t), void (*a9)(uint64_t), void (*a10)(uint64_t), void (*a11)(uint64_t))
{
  v120 = a8;
  v127 = a7;
  v130 = a4;
  v118 = a2;
  v123 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C810, &qword_237C12130);
  OUTLINED_FUNCTION_20(v15);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v111 = v102 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  v19 = OUTLINED_FUNCTION_20(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_0();
  v110 = v20;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_58();
  v116 = v22;
  v124 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v119 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_0();
  v112 = v25;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  v115 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_58();
  *&v114 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v31 = OUTLINED_FUNCTION_20(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_0();
  v113 = v32;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  v117 = v34;
  v122 = sub_237C069CC();
  OUTLINED_FUNCTION_0();
  v125 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_0();
  v39 = v38 - v37;
  v40 = a6(0);
  OUTLINED_FUNCTION_0();
  v121 = v41;
  OUTLINED_FUNCTION_7();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = v102 - v44;
  v46 = sub_237ABDDA4(v43);
  v47 = v126;
  v48 = v127(a5, a3, v130);
  if (v47)
  {
  }

  v108 = v11;
  v109 = a5;
  v107 = 0;
  v126 = v40;
  v127 = a3;
  v50 = v124;
  v120(v48);
  sub_237C0699C();
  v51 = v125 + 8;
  v52 = *(v125 + 8);
  v52(v39, v122);
  v53 = sub_237ACDA80();
  if (v53)
  {
    v54 = v53;
    v103 = v52;
    v105 = v46;
    v125 = v51;
    v55 = v114;
    (a9)();
    v56 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
    v120 = v54;
    swift_beginAccess();
    OUTLINED_FUNCTION_8_31();
    v59 = sub_237AEE02C(v57, v58, &unk_237C120A8);
    v104 = v56;
    v60 = v120;
    v61 = v117;
    v102[2] = v59;
    sub_237C063BC();
    v62 = *(v119 + 8);
    v63 = v55;
    v64 = v119 + 8;
    v62(v63, v50);
    sub_2379D9054(v61, &qword_27DE9B410, &qword_237C0CCC8);
    v65 = swift_endAccess();
    v66 = v115;
    v106 = v45;
    a9(v65);
    v67 = v116;
    sub_237C0679C();
    v62(v66, v50);
    v115 = sub_237C0610C();
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v115);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v68 = swift_allocObject();
    v114 = xmmword_237C0B660;
    *(v68 + 16) = xmmword_237C0B660;
    *(v68 + 56) = MEMORY[0x277D837D0];
    v69 = sub_237A8E8E4();
    *(v68 + 64) = v69;
    v70 = v130;
    *(v68 + 32) = v127;
    *(v68 + 40) = v70;

    v71 = sub_237C0871C();
    v72 = v107;
    sub_237AEC70C(v60, v67, v109, v71, v73);
    if (v72)
    {

      sub_2379D9054(v67, &qword_27DE9BEE0, &unk_237C12120);
      OUTLINED_FUNCTION_51_5();
      v75 = v106;
    }

    else
    {
      v102[0] = v69;
      v102[1] = v62;
      v107 = v64;
      sub_2379D9054(v67, &qword_27DE9BEE0, &unk_237C12120);

      v80 = v113;
      v81 = v106;
      a10(v79);
      v82 = v124;
      if (__swift_getEnumTagSinglePayload(v80, 1, v124) == 1)
      {
        OUTLINED_FUNCTION_51_5();
        v83(v81, v126);

        return sub_2379D9054(v80, &qword_27DE9B410, &qword_237C0CCC8);
      }

      v84 = (*(v119 + 32))(v112, v80, v82);
      v85 = v111;
      a11(v84);
      v86 = v122;
      if (__swift_getEnumTagSinglePayload(v85, 1, v122) == 1)
      {

        sub_2379D9054(v85, &qword_27DE9C810, &qword_237C12130);
      }

      else
      {
        sub_237C0699C();
        v87 = OUTLINED_FUNCTION_128();
        v103(v87);
        v86 = v105;
        v88 = sub_237ACDA80();

        if (v88)
        {
          swift_beginAccess();
          v89 = v117;
          sub_237C063BC();
          sub_2379D9054(v89, &qword_27DE9B410, &qword_237C0CCC8);
          swift_endAccess();
          v90 = v110;
          sub_237C0679C();
          __swift_storeEnumTagSinglePayload(v90, 0, 1, v115);
          v91 = swift_allocObject();
          *(v91 + 16) = v114;
          v92 = v102[0];
          *(v91 + 56) = MEMORY[0x277D837D0];
          *(v91 + 64) = v92;
          *(v91 + 32) = v127;
          *(v91 + 40) = v70;

          v93 = sub_237C0871C();
          sub_237AEC70C(v88, v90, v109, v93, v94);
          v95 = v126;
          v96 = v121;

          sub_2379D9054(v90, &qword_27DE9BEE0, &unk_237C12120);
          OUTLINED_FUNCTION_44_10();
          v97();
          return (*(v96 + 8))(v106, v95);
        }
      }

      v128 = 0;
      v129 = 0xE000000000000000;
      sub_237C08EDC();

      MEMORY[0x2383DC360](v98, v70);
      MEMORY[0x2383DC360](v86 - 7, 0x8000000237C1B720);
      sub_2379E8AF0();
      v99 = swift_allocError();
      OUTLINED_FUNCTION_35_12(v99, v100);

      OUTLINED_FUNCTION_44_10();
      v101();
      OUTLINED_FUNCTION_51_5();
      v75 = v81;
    }
  }

  else
  {

    v128 = 0;
    v129 = 0xE000000000000000;
    sub_237C08EDC();

    MEMORY[0x2383DC360](v76, v130);
    MEMORY[0x2383DC360](v46 - 5, 0x8000000237C1B700);
    sub_2379E8AF0();
    v77 = swift_allocError();
    OUTLINED_FUNCTION_35_12(v77, v78);
    OUTLINED_FUNCTION_51_5();
    v75 = v45;
  }

  return v74(v75, v126);
}

uint64_t sub_237AEBDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v75 = a5;
  v76 = a3;
  v77 = a4;
  v58 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  v55 = _s13GraphCNNModelVMa(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_237C069CC();
  v13 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  MEMORY[0x28223BE20](v15 - 8);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v53 - v18;
  v74 = sub_237C0683C();
  v19 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C062EC();
  v65 = a1;
  v22 = sub_237C0640C();
  v67 = *(v22 + 16);
  v80 = v7;
  v70 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  v23 = v21;
  result = swift_beginAccess();
  v25 = 0;
  v61 = (v19 + 32);
  v60 = (v13 + 8);
  v64 = (v19 + 8);
  v68 = v22;
  v26 = (v22 + 48);
  v56 = v21;
  v59 = v11;
  while (1)
  {
    if (v67 == v25)
    {
    }

    if (v25 >= *(v68 + 16))
    {
      break;
    }

    v27 = *(v26 - 2);
    v28 = *(v26 - 1);
    v73 = v26;
    v29 = *v26;

    v30 = v66;
    v31 = v76;
    sub_237A806E8(v27, v28, v76, v77, v66);
    if (v6)
    {
    }

    v71 = v25;
    v32 = v74;
    if (__swift_getEnumTagSinglePayload(v30, 1, v74) == 1)
    {

      sub_2379D9054(v30, &qword_27DE9B410, &qword_237C0CCC8);
      v78 = 0;
      v79 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C1A910);
      MEMORY[0x2383DC360](v31, v77);
      MEMORY[0x2383DC360](0x74656D6172617020, 0xEB00000000207265);
      MEMORY[0x2383DC360](v27, v28);

      v47 = v78;
      v48 = v79;
      sub_2379E8AF0();
      swift_allocError();
      *v49 = v47;
      *(v49 + 8) = v48;
      *(v49 + 16) = 0u;
      *(v49 + 32) = 0u;
      *(v49 + 48) = 0;
      swift_willThrow();
    }

    v72 = v27;
    v33 = v77;
    (*v61)(v23, v30, v32);

    v34 = v62;
    swift_getAtKeyPath();

    v35 = sub_237C0699C();
    v36.n128_f64[0] = (*v60)(v34, v63);
    v37 = sub_237ABDDA4(v36);
    if (v37[2] && (v38 = sub_237ACB20C(v35), (v39 & 1) != 0))
    {
      v40 = *(v37[7] + 8 * v38);

      v41 = v76;
    }

    else
    {
      v69 = v29;
      v41 = v76;

      v42 = v54;
      sub_237AF1B7C(v80 + v70, v54);
      sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
      v43 = sub_237C063DC();
      MEMORY[0x28223BE20](v43);
      *(&v53 - 2) = v42;
      *(&v53 - 2) = v35;
      v40 = sub_237AB9E1C(sub_237AC16C4, (&v53 - 4), v43);

      sub_237AF1BD8(v42, _s13GraphCNNModelVMa);
      if (!v40)
      {

        v78 = 0;
        v79 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C1A910);
        MEMORY[0x2383DC360](v41, v33);
        MEMORY[0x2383DC360](0x74656D6172617020, 0xEB00000000207265);
        MEMORY[0x2383DC360](v72, v28);

        v50 = v78;
        v51 = v79;
        sub_2379E8AF0();
        swift_allocError();
        *v52 = v50;
        *(v52 + 8) = v51;
        *(v52 + 16) = 0u;
        *(v52 + 32) = 0u;
        *(v52 + 48) = 0;
        swift_willThrow();

        return (*v64)(v56, v74);
      }

      v23 = v56;
    }

    swift_beginAccess();
    sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
    v44 = v57;
    sub_237C063BC();
    sub_2379D9054(v44, &qword_27DE9B410, &qword_237C0CCC8);
    swift_endAccess();
    v45 = sub_237C0610C();
    v46 = v59;
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v45);
    v78 = v41;
    v79 = v33;

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    MEMORY[0x2383DC360](v72, v28);

    sub_237AEC70C(v40, v46, v75, v78, v79);

    sub_2379D9054(v46, &qword_27DE9BEE0, &unk_237C12120);
    result = (*v64)(v23, v74);
    v26 = v73 + 3;
    v25 = v71 + 1;
  }

  __break(1u);
  return result;
}

void sub_237AEC70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v46 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_237C0683C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v41 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v42 = &v36 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  MEMORY[0x28223BE20](v17 - 8);
  v40 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  sub_237AF1A38(a2, &v36 - v20);
  v22 = sub_237C0610C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v44 = a4;
  v45 = a5;
  if (EnumTagSinglePayload != 1)
  {
    v43 = a3;
    v39 = v13;
    sub_237C060EC();
    (*(*(v22 - 8) + 8))(v21, v22);
    goto LABEL_13;
  }

  v38 = v22;
  sub_2379D9054(v21, &qword_27DE9BEE0, &unk_237C12120);
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_237C08EDC();

  v47 = a4;
  v48 = a5;

  MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1A8B0);
  v24 = sub_237ACDA88();

  if (!v24)
  {
    return;
  }

  v43 = a3;
  v39 = v13;
  v37 = v11;
  v25 = *(v24 + 16);
  if (!v25)
  {

    v11 = v37;
    v22 = v38;
LABEL_13:
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_237C08EDC();

    v47 = v44;
    v48 = v45;

    MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1A890);
    v31 = sub_237ACDA88();

    if (v31)
    {
      v32 = v40;
      sub_237C0611C();
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v22);
      v33 = v41;
      sub_237B666C0(v32, v31, v41);

      sub_2379D9054(v32, &qword_27DE9BEE0, &unk_237C12120);
      v34 = v39;
      v35 = v42;
      (*(v39 + 32))(v42, v33, v12);
      (*(v34 + 16))(v11, v35, v12);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C808, &qword_237C10EE0);
      sub_237C0627C();
      (*(v34 + 8))(v35, v12);
    }

    else
    {
    }

    return;
  }

  v36 = v12;
  v47 = MEMORY[0x277D84F90];
  sub_237AC8A34(0, v25, 0);
  v26 = 32;
  v27 = v47;
  while (1)
  {
    v28 = *(v24 + v26);
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v28 <= -9.22337204e18)
    {
      goto LABEL_19;
    }

    if (v28 >= 9.22337204e18)
    {
      goto LABEL_20;
    }

    v47 = v27;
    v30 = *(v27 + 16);
    v29 = *(v27 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_237AC8A34(v29 > 1, v30 + 1, 1);
      v27 = v47;
    }

    *(v27 + 16) = v30 + 1;
    *(v27 + 8 * v30 + 32) = v28;
    v26 += 8;
    if (!--v25)
    {

      v12 = v36;
      v11 = v37;
      v22 = v38;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_237AECC58(uint64_t a1)
{
  v2 = 0xD000000000000033;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3C0, &unk_237C0CC60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v21 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3C8, &unk_237C12150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_237ACDA88();
  if (!v9)
  {
    v2 = 0xD000000000000037;
LABEL_20:
    sub_2379E8AF0();
    swift_allocError();
    *v20 = v2;
    *(v20 + 8) = v10 | 0x8000000000000000;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 2;
    return swift_willThrow();
  }

  v11 = v9;
  if (*(v9 + 16) != 1)
  {
    v2 = 0xD000000000000037;
    goto LABEL_19;
  }

  v21[1] = a1;
  v12 = sub_237ACDA88();
  v10 = "e checkpoint dictionary";
  if (!v12)
  {
LABEL_19:

    goto LABEL_20;
  }

  v13 = v12;
  if (*(v12 + 16) != 1)
  {
LABEL_18:

    goto LABEL_19;
  }

  result = sub_237ACDA88();
  v10 = "eckpoint dictionary";
  if (!result)
  {
LABEL_17:
    v2 = 0xD00000000000003FLL;
    goto LABEL_18;
  }

  v15 = result;
  if (*(result + 16) != 1)
  {

    goto LABEL_17;
  }

  if (!*(v11 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (!*(v13 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!*(v15 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = *(v15 + 32);

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16 > -9.22337204e18)
  {
    if (v16 < 9.22337204e18)
    {
      v17 = sub_237C061EC();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);
      *v5 = 981668463;
      v18 = *MEMORY[0x277D2CD68];
      v19 = sub_237C061BC();
      (*(*(v19 - 8) + 104))(v5, v18, v19);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v19);
      _s13GraphCNNModelVMa(0);
      sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
      return sub_237C0628C();
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_237AED020(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3C0, &unk_237C0CC60);
  OUTLINED_FUNCTION_20(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = (&v50 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3C8, &unk_237C12150);
  OUTLINED_FUNCTION_20(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v51 = &v50 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  OUTLINED_FUNCTION_20(v19);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  v52 = &v50 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_20(v22);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v26 = _s13GraphCNNModelVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  v6[2] = a1;
  v6[3] = a3;
  v6[4] = a4;
  *(v30 + *(v31 + 36)) = a2;
  *(v30 + *(v31 + 40)) = a5;
  sub_237C0623C();

  sub_237C0622C();
  v32 = sub_237C0621C();
  OUTLINED_FUNCTION_21_22(v33, v34, v32, v32);
  v35 = sub_237C0616C();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v35);
  OUTLINED_FUNCTION_17_3();
  sub_237C0620C();
  sub_2379D9054(v25, &qword_27DE9ACC8, &qword_237C10CF0);
  sub_237C0636C();
  v36 = sub_237C0622C();
  v37 = sub_237C0621C();
  OUTLINED_FUNCTION_34_11(v36, v37, v38, v39);
  OUTLINED_FUNCTION_17_3();
  sub_237C0687C();

  sub_237AEFBD8(v30 + *(v26 + 32));
  sub_237C061CC();
  OUTLINED_FUNCTION_7_32(v25, 1, 1, v35);
  sub_237C0620C();
  sub_2379D9054(v25, &qword_27DE9ACC8, &qword_237C10CF0);
  sub_237C0622C();
  v40 = OUTLINED_FUNCTION_87();
  _s5TorsoVMa(v40);
  sub_237C0636C();
  v41 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  sub_237AF1AA8(v30, v6 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model);
  swift_beginAccess();
  sub_237AF1B7C(v6 + v41, v30);
  v42 = sub_237C061EC();
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v42);
  *v15 = 981668463;
  v43 = *MEMORY[0x277D2CD68];
  v44 = sub_237C061BC();
  OUTLINED_FUNCTION_4();
  (*(v45 + 104))(v15, v43, v44);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v44);
  OUTLINED_FUNCTION_8_31();
  sub_237AEE02C(v46, v47, &unk_237C120A8);
  v48 = v52;
  sub_237C0628C();
  sub_237AF1BD8(v30, _s13GraphCNNModelVMa);
  sub_237AF1B0C(v48, v6 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer);
  return v6;
}

uint64_t sub_237AED4B0()
{

  sub_237AF1BD8(v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, _s13GraphCNNModelVMa);
  sub_2379D9054(v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer, &qword_27DE9C7B8, &unk_237C12110);
  return v0;
}

uint64_t sub_237AED514()
{
  sub_237AED4B0();

  return swift_deallocClassInstance();
}

void sub_237AED594(uint64_t a1)
{
  _s13GraphCNNModelVMa(319);
  if (v1 <= 0x3F)
  {
    sub_237AED6A0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_237AED6A0(uint64_t a1)
{
  if (!qword_27DE9CA58)
  {
    _s13GraphCNNModelVMa(255);
    sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
    v1 = sub_237C062AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9CA58);
    }
  }
}

uint64_t sub_237AED748(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_5_31();
  sub_237C0697C();
  OUTLINED_FUNCTION_135();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_7_3();
  }

  else
  {
    sub_237C0638C();
    OUTLINED_FUNCTION_135();
    if (*(v10 + 84) == v3)
    {
      v8 = v9;
      v11 = a3[5];
    }

    else
    {
      sub_237C0688C();
      OUTLINED_FUNCTION_135();
      if (*(v13 + 84) == v3)
      {
        v8 = v12;
        v11 = a3[7];
      }

      else
      {
        _s5TorsoVMa(0);
        OUTLINED_FUNCTION_135();
        if (*(v15 + 84) != v3)
        {
          v17 = *(v4 + a3[9]);
          if (v17 >= 2)
          {
            return OUTLINED_FUNCTION_53_7(v17);
          }

          else
          {
            return 0;
          }
        }

        v8 = v14;
        v11 = a3[8];
      }
    }

    v7 = v4 + v11;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_237AED8E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_5_31();
  sub_237C0697C();
  OUTLINED_FUNCTION_135();
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_47_10();
  }

  else
  {
    sub_237C0638C();
    OUTLINED_FUNCTION_135();
    if (*(v9 + 84) != a3)
    {
      sub_237C0688C();
      OUTLINED_FUNCTION_135();
      if (*(v10 + 84) != a3)
      {
        _s5TorsoVMa(0);
        OUTLINED_FUNCTION_135();
        if (*(v11 + 84) != a3)
        {
          *(v5 + a4[9]) = v4 + 1;
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_55_7();

  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_237AEDA38(uint64_t a1, __n128 a2)
{
  v2 = sub_237C0697C();
  if (v3 <= 0x3F)
  {
    v4 = sub_237C0638C();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_237C0688C();
      if (v6 <= 0x3F)
      {
        v2 = _s5TorsoVMa(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_237AEDB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_5_31();
  _s17SingleStreamBlockVMa(v6);
  OUTLINED_FUNCTION_135();
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_7_3();
  }

  else
  {
    v9 = sub_237C0638C();
    v8 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

uint64_t sub_237AEDBF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_5_31();
  _s17SingleStreamBlockVMa(v5);
  OUTLINED_FUNCTION_135();
  if (*(v6 + 84) == a3)
  {
    OUTLINED_FUNCTION_47_10();
  }

  else
  {
    sub_237C0638C();
  }

  OUTLINED_FUNCTION_55_7();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_237AEDC84(uint64_t a1)
{
  result = _s17SingleStreamBlockVMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_237C0638C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237AEDD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA80, &qword_237C11B78);
  OUTLINED_FUNCTION_135();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_7_3();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA88, &unk_237C11B80);
    v7 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

uint64_t sub_237AEDDE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA80, &qword_237C11B78);
  OUTLINED_FUNCTION_135();
  if (*(v5 + 84) == a3)
  {
    OUTLINED_FUNCTION_47_10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA88, &unk_237C11B80);
  }

  OUTLINED_FUNCTION_55_7();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_237AEDE94(uint64_t a1)
{
  sub_237AEDF70(319, &qword_27DE9CAA0, _s24DownsampledResidualLayerVMa);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_237AEDF70(319, qword_27DE9CAB0, _s13ResidualLayerVMa);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_237AEDF70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = _s16InvertedResidualVMa(255);
    v7 = sub_237AEE02C(&qword_27DE9CAA8, _s16InvertedResidualVMa, &unk_237C11F00);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_237AEE02C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237AEE0A4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237AEE114(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
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
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237AEE260(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
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

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x237AEE464);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}