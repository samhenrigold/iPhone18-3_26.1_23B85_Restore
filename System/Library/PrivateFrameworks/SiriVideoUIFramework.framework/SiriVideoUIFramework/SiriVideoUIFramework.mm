uint64_t sub_2698BD5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (a2)
  {
    v8 = objc_opt_self();

    v9 = [v8 VideosUICoreBundle];
    if (a4)
    {

      v10 = sub_2698BDD48(v9, &selRef_bundleIdentifier);
      if (v11)
      {
        v12 = v10;
        v13 = v11;
        v14 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v14 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          v15 = objc_allocWithZone(MEMORY[0x277D78328]);

          v16 = sub_2698BDBB0(a3, a4, a1, v4, 0, 0, 0);
          v17 = [objc_opt_self() sharedInstance];
          v18 = [v17 badgeForContentRating:v16 drawUnknownRatingBadge:0];
          if (v18)
          {
            v19 = v18;
            v20 = MEMORY[0x26D647A80]();
            if (v20)
            {
              v21 = v20;

              sub_2698CA634();

              sub_2698BDDA0();
              sub_2698BDAAC(v12, v13);
              v4 = sub_2698CA3F4();

              return v4;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D970, &unk_2698CA950);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_2698CA940;
            *(v28 + 56) = MEMORY[0x277D837D0];
            v29 = sub_2698BDB5C();
            *(v28 + 64) = v29;
            *(v28 + 32) = a1;
            *(v28 + 40) = v4;
            OUTLINED_FUNCTION_0(v29, 0x80000002698CAFA0);
            OUTLINED_FUNCTION_1();
          }

          else
          {

            v25 = sub_2698BD924(v16);
            if (v25)
            {
              v26 = v25;
              v27 = [v17 badgeForContentRating:v25 drawUnknownRatingBadge:0];
            }

            else
            {
              v27 = 0;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D970, &unk_2698CA950);
            v30 = swift_allocObject();
            *(v30 + 16) = xmmword_2698CA940;
            *(v30 + 56) = MEMORY[0x277D837D0];
            v31 = sub_2698BDB5C();
            *(v30 + 64) = v31;
            *(v30 + 32) = a1;
            *(v30 + 40) = v4;
            OUTLINED_FUNCTION_0(v31, 0x80000002698CAFA0);
            OUTLINED_FUNCTION_1();
          }

          return 0;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D970, &unk_2698CA950);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2698CA940;
    *(v22 + 56) = MEMORY[0x277D837D0];
    v23 = sub_2698BDB5C();
    *(v22 + 64) = v23;
    *(v22 + 32) = a1;
    *(v22 + 40) = v4;
    OUTLINED_FUNCTION_0(v23, 0x80000002698CAFA0);
    OUTLINED_FUNCTION_1();
    return 0;
  }

  return v4;
}

id sub_2698BD924(void *a1)
{
  sub_2698BDD48(a1, &selRef_ratingLabel);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_2698CA654();
  v5 = v4;

  v6 = v3 == 6369841 && v5 == 0xE300000000000000;
  if (v6 || (sub_2698CA6A4() & 1) != 0)
  {

    if ([a1 ratingSystem] == 134)
    {
      v7 = 12849;
LABEL_9:
      v8 = [a1 rank];
      v9 = sub_2698BDD48(a1, &selRef_ratingDescription);
      v11 = v10;
      v12 = objc_allocWithZone(MEMORY[0x277D78328]);
      return sub_2698BDC88(134, v7, 0xE200000000000000, v8, v9, v11);
    }
  }

  else
  {
    if (v3 == 3682674 && v5 == 0xE300000000000000)
    {
    }

    else
    {
      v15 = sub_2698CA6A4();

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    if ([a1 ratingSystem] == 134)
    {
      v7 = 14385;
      goto LABEL_9;
    }
  }

  return 0;
}

id sub_2698BDAAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2698CA624();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
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

unint64_t sub_2698BDB5C()
{
  result = qword_28033D978;
  if (!qword_28033D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033D978);
  }

  return result;
}

id sub_2698BDBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_2698CA624();

  if (!a4)
  {
    v12 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_2698CA624();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_2698CA624();

LABEL_6:
  v14 = [v7 initWithRatingSystemString:v11 ratingLabel:v12 rank:a5 ratingDescription:v13];

  return v14;
}

id sub_2698BDC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_2698CA624();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_2698CA624();

LABEL_6:
  v12 = [v6 initWithRatingSystem:a1 ratingLabel:v10 rank:a4 ratingDescription:v11];

  return v12;
}

uint64_t sub_2698BDD48(void *a1, SEL *a2)
{
  if (![a1 *a2])
  {
    return 0;
  }

  sub_2698CA634();
  OUTLINED_FUNCTION_1();
  return v2;
}

unint64_t sub_2698BDDA0()
{
  result = qword_28033D980;
  if (!qword_28033D980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28033D980);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x28211E920](0xD00000000000001DLL, a2, v2);
}

void OUTLINED_FUNCTION_1()
{
}

uint64_t ConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v70 = sub_2698CA434();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConfirmationView(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = v9;
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D988, &qword_2698CA960);
  OUTLINED_FUNCTION_1_0();
  v71 = v11;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D990, &qword_2698CA968);
  OUTLINED_FUNCTION_1_0();
  v66 = v16;
  v67 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v65 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v64 = &v54 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v69 = &v54 - v23;
  MEMORY[0x28223BE20](v22);
  v62 = &v54 - v24;
  v55 = v1;
  v59 = v10;
  sub_2698BE4BC(v1, v10);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  sub_2698BE524(v10, v26 + v25);
  v73 = v1;
  sub_2698CA404();
  v27 = *MEMORY[0x277D63A90];
  v60 = *(v3 + 104);
  v28 = v6;
  v29 = v6;
  v30 = v70;
  v60(v29, v27, v70);
  v58 = sub_2698BF164(&qword_28033D9A8, &qword_28033D988, &qword_2698CA960, MEMORY[0x277CDF028]);
  v31 = v63;
  sub_2698CA314();
  v32 = *(v3 + 8);
  v56 = v3 + 8;
  v57 = v32;
  v32(v28, v30);
  v33 = *(v71 + 8);
  v71 += 8;
  v33(v14, v31);
  v34 = v55;
  v35 = v59;
  sub_2698BE4BC(v55, v59);
  v36 = swift_allocObject();
  sub_2698BE524(v35, v36 + v25);
  v72 = v34;
  sub_2698CA404();
  v37 = v70;
  v60(v28, *MEMORY[0x277D63A88], v70);
  v38 = v69;
  sub_2698CA314();
  v57(v28, v37);
  v33(v14, v31);
  v40 = v66;
  v39 = v67;
  v41 = *(v66 + 16);
  v42 = v64;
  v43 = v62;
  v41(v64, v62, v67);
  v44 = v65;
  v41(v65, v38, v39);
  v45 = *(v40 + 80);
  v46 = (v45 + 16) & ~v45;
  v47 = (v18 + v45 + v46) & ~v45;
  v48 = swift_allocObject();
  v49 = *(v40 + 32);
  v49(v48 + v46, v42, v39);
  v49(v48 + v47, v44, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9B0, &qword_2698CA980);
  v50 = sub_2698CA524();
  v51 = sub_2698BEE48();
  v74 = v50;
  v75 = v51;
  swift_getOpaqueTypeConformance2();
  sub_2698CA4D4();
  v52 = *(v40 + 8);
  v52(v69, v39);
  return (v52)(v43, v39);
}

uint64_t type metadata accessor for ConfirmationView(uint64_t a1)
{
  result = qword_28033D9C0;
  if (!qword_28033D9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2698BE4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698BE524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_2698BE618(uint64_t a1, void (*a2)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9E8, &unk_2698CAA20);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  OUTLINED_FUNCTION_3(v7);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F8, &unk_2698CAA30);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_2698CA494();
  v15 = sub_2698CA594();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    return sub_2698BF200(v14, &qword_28033D9F8, &unk_2698CAA30);
  }

  type metadata accessor for ConfirmationView(0);
  a2();
  v17 = sub_2698C9F64();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v17);
  v18 = sub_2698CA504();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
  sub_2698CA584();
  sub_2698BF200(v6, &qword_28033D9E8, &unk_2698CAA20);
  sub_2698BF200(v10, &qword_28033D9F0, &unk_2698CAB60);
  return (*(*(v15 - 8) + 8))(v14, v15);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ConfirmationView(0) - 8);
  v2 = *(*v1 + 80);
  v14 = (v2 + 16) & ~v2;
  v15 = *(*v1 + 64);
  sub_2698CA4B4();
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(v0 + v14);
  v4 = v0 + v14 + v1[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D998, &unk_2698CA970);
  OUTLINED_FUNCTION_0_0();
  v7 = *(v6 + 8);
  v7(v4, v5);
  v8 = sub_2698CA144();
  v9 = v8[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_0();
  v12 = *(v11 + 8);
  v12(v4 + v9, v10);
  v7(v4 + v8[6], v5);
  v12(v4 + v8[7], v10);

  return MEMORY[0x2821FE8E8](v16, v14 + v15, v2 | 7);
}

uint64_t sub_2698BEA04(void (*a1)(void))
{
  v3 = type metadata accessor for ConfirmationView(0);
  OUTLINED_FUNCTION_3(v3);
  return sub_2698BE618(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

uint64_t sub_2698BEA64@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmationView(0);
  a1();
  sub_2698BF1AC();
  result = sub_2698CA2F4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_2698BEB10()
{
  v0 = sub_2698CA524();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D990, &qword_2698CA968);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033D988, &qword_2698CA960);
  v5 = sub_2698BF164(&qword_28033D9A8, &qword_28033D988, &qword_2698CA960, MEMORY[0x277CDF028]);
  v12 = v4;
  v13 = v5;
  swift_getOpaqueTypeConformance2();
  v6 = sub_2698CA304();
  v7 = MEMORY[0x277CE11C8];
  v8 = MEMORY[0x277D63A60];
  v14 = MEMORY[0x277CE11C8];
  v15 = MEMORY[0x277D63A60];
  v12 = v6;
  v9 = sub_2698CA304();
  v11[3] = v7;
  v11[4] = v8;
  v11[0] = v9;
  sub_2698CA514();
  sub_2698BEE48();
  sub_2698CA3B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2698BECE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D990, &qword_2698CA968);
  OUTLINED_FUNCTION_0_0();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t sub_2698BEDA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D990, &qword_2698CA968);

  return sub_2698BEB10();
}

unint64_t sub_2698BEE48()
{
  result = qword_28033D9B8;
  if (!qword_28033D9B8)
  {
    sub_2698CA524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033D9B8);
  }

  return result;
}

uint64_t sub_2698BEEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2698CA4B4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2698CA144();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2698BEFD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2698CA4B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2698CA144();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2698BF09C(uint64_t a1)
{
  result = sub_2698CA4B4();
  if (v2 <= 0x3F)
  {
    result = sub_2698CA144();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2698BF164(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_2698BF1AC()
{
  result = qword_28033D9E0;
  if (!qword_28033D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033D9E0);
  }

  return result;
}

uint64_t sub_2698BF200(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2698BF298(char a1, char a2)
{
  sub_2698C1604();
  sub_2698CA674();
  sub_2698CA674();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_2698CA6A4();
  }

  return v3 & 1;
}

uint64_t DisambiguationList.body.getter()
{
  v0 = type metadata accessor for DisambiguationList(0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2698C1BEC();
  swift_allocObject();
  sub_2698C1F40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA10, &qword_2698CAA58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DA18, &qword_2698CAA60);
  sub_2698BF164(&qword_28033DA20, &qword_28033DA18, &qword_2698CAA60, MEMORY[0x277D63CE0]);
  swift_getOpaqueTypeConformance2();
  return sub_2698CA4D4();
}

uint64_t type metadata accessor for DisambiguationList(uint64_t a1)
{
  result = qword_28033DA28;
  if (!qword_28033DA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2698BF540@<X0>(uint64_t a2@<X8>)
{
  v13[1] = a2;
  v2 = type metadata accessor for DisambiguationList(0);
  MEMORY[0x28223BE20](v2);
  v3 = sub_2698CA574();
  MEMORY[0x28223BE20](v3 - 8);
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA18, &qword_2698CAA60);
  v4 = *(v13[0] - 8);
  v5 = MEMORY[0x28223BE20](v13[0]);
  v7 = v13 - v6;
  v8 = MEMORY[0x26D647520](v5);
  v19 = MEMORY[0x277D837D0];
  v20 = MEMORY[0x277D63F80];
  v17 = v8;
  v18 = v9;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  sub_2698CA564();
  sub_2698C1BEC();
  swift_allocObject();
  sub_2698C1F40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA48, &qword_2698CAB00);
  sub_2698C1520();
  sub_2698CA534();
  v10 = sub_2698CA174();
  sub_2698BF298(v10, 8);
  sub_2698BF164(&qword_28033DA20, &qword_28033DA18, &qword_2698CAA60, MEMORY[0x277D63CE0]);
  v11 = v13[0];
  sub_2698CA3B4();
  return (*(v4 + 8))(v7, v11);
}

uint64_t sub_2698BF850(uint64_t a1)
{
  v1 = type metadata accessor for DisambiguationList(0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2698CA164();
  sub_2698C1BEC();
  swift_allocObject();
  sub_2698C1F40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA68, &qword_2698CAB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA70, &qword_2698CAB10);
  sub_2698BF164(&qword_28033DA78, &qword_28033DA68, &qword_2698CAB08, MEMORY[0x277D83980]);
  sub_2698CA554();
  sub_2698C1A64(&qword_28033DA58, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
  swift_getOpaqueTypeConformance2();
  sub_2698C1A64(&qword_28033DA80, MEMORY[0x277D61E80], MEMORY[0x277D61E88]);
  return sub_2698CA414();
}

uint64_t sub_2698BFAB0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v29 = a3;
  v3 = sub_2698CA1E4();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = v4;
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DisambiguationList(0);
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA88, &qword_2698CAB18);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v24 = sub_2698CA554();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2698CA194();
  v58 = MEMORY[0x277D837D0];
  v59 = MEMORY[0x277D63F80];
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  v56 = v14;
  v57 = v15;
  v16 = sub_2698CA1B4();
  if (v17)
  {
    v18 = MEMORY[0x277D63F80];
    v19 = MEMORY[0x277D837D0];
  }

  else
  {
    v16 = 0;
    v19 = 0;
    v18 = 0;
    v53 = 0;
  }

  v51 = v16;
  v52 = v17;
  v54 = v19;
  v55 = v18;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_2698BFF18(v8);
  sub_2698C1868();
  v20 = sub_2698CA304();
  sub_2698C20BC(v8, &qword_28033DA88, &qword_2698CAB18);
  v31 = MEMORY[0x277CE11C8];
  v32 = MEMORY[0x277D63A60];
  v30 = v20;
  sub_2698CA544();
  sub_2698C1BEC();
  sub_2698C1BEC();
  swift_allocObject();
  sub_2698C1F40();
  sub_2698C1F40();
  sub_2698C1A64(&qword_28033DA58, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
  v21 = v24;
  sub_2698CA344();

  return (*(v9 + 8))(v11, v21);
}

uint64_t sub_2698BFF18@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAF8, &qword_2698CAB70);
  MEMORY[0x28223BE20](v88);
  v87 = &v63 - v1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAD8, &qword_2698CAB38);
  MEMORY[0x28223BE20](v90);
  v3 = &v63 - v2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB00, &qword_2698CAB78);
  MEMORY[0x28223BE20](v77);
  v78 = &v63 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAC8, &qword_2698CAB30);
  MEMORY[0x28223BE20](v89);
  v80 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB08, &qword_2698CAB80);
  MEMORY[0x28223BE20](v6);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB10, &qword_2698CAB88);
  MEMORY[0x28223BE20](v79);
  v82 = &v63 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB18, &qword_2698CAB90);
  MEMORY[0x28223BE20](v71);
  v72 = &v63 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAB0, &qword_2698CAB28);
  MEMORY[0x28223BE20](v81);
  v76 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAA0, &qword_2698CAB20);
  MEMORY[0x28223BE20](v10);
  v83 = &v63 - v11;
  v70 = sub_2698C9F14();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB20, &qword_2698CAB98);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - v14;
  v16 = sub_2698C9FB4();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_2698CA444();
  v85 = *(v17 - 8);
  v86 = v17;
  MEMORY[0x28223BE20](v17);
  v84 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB28, &qword_2698CABA0);
  v74 = *(v19 - 8);
  v75 = v19;
  MEMORY[0x28223BE20](v19);
  v73 = &v63 - v20;
  v67 = sub_2698C9EF4();
  v21 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB30, &qword_2698CABA8);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v63 - v25;
  sub_2698CA1D4();
  v27 = sub_2698CA1C4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_2698C1AAC();
    sub_2698CA294();
    sub_2698C2064();
    swift_storeEnumTagMultiPayload();
    sub_2698C18F4();
    sub_2698C1B60();
    sub_2698CA294();
    return sub_2698C20BC(v3, &qword_28033DAD8, &qword_2698CAB38);
  }

  else
  {
    v65 = v6;
    v66 = v10;
    v29 = v3;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_2698C9FA4();

        v48 = v84;
        sub_2698CA454();
        v49 = v69;
        v50 = v68;
        v51 = v70;
        (*(v69 + 104))(v68, *MEMORY[0x277D62BE0], v70);
        v52 = sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
        v53 = v73;
        v54 = v86;
        sub_2698CA324();
        (*(v49 + 8))(v50, v51);
        (*(v85 + 8))(v48, v54);
        v56 = v74;
        v55 = v75;
        (*(v74 + 16))(v72, v53, v75);
        swift_storeEnumTagMultiPayload();
        v92 = v54;
        v93 = v52;
        swift_getOpaqueTypeConformance2();
        v57 = v76;
        sub_2698CA294();
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C1980();
        sub_2698C1AAC();
        v58 = v83;
        sub_2698CA294();
        sub_2698C20BC(v57, &qword_28033DAB0, &qword_2698CAB28);
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C18F4();
        sub_2698C1B60();
        sub_2698CA294();
        sub_2698C20BC(v58, &qword_28033DAA0, &qword_2698CAB20);
        result = (*(v56 + 8))(v53, v55);
        break;
      case 2u:
      case 3u:
        sub_2698C9F94();
        v43 = v84;
        sub_2698CA454();
        v45 = v85;
        v44 = v86;
        (*(v85 + 16))(v78, v43, v86);
        swift_storeEnumTagMultiPayload();
        sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
        v46 = v80;
        sub_2698CA294();
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C1980();
        sub_2698C1AAC();
        v47 = v83;
        sub_2698CA294();
        sub_2698C20BC(v46, &qword_28033DAC8, &qword_2698CAB30);
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C18F4();
        sub_2698C1B60();
        sub_2698CA294();
        sub_2698C20BC(v47, &qword_28033DAA0, &qword_2698CAB20);
        result = (*(v45 + 8))(v43, v44);
        break;
      case 4u:
      case 5u:
        sub_2698C9F94();
        v59 = v84;
        sub_2698CA454();
        v61 = v85;
        v60 = v86;
        (*(v85 + 16))(v78, v59, v86);
        swift_storeEnumTagMultiPayload();
        sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
        v62 = v80;
        sub_2698CA294();
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C1AAC();
        sub_2698CA294();
        sub_2698C20BC(v62, &qword_28033DAC8, &qword_2698CAB30);
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C18F4();
        sub_2698C1B60();
        sub_2698CA294();
        sub_2698C20BC(v29, &qword_28033DAD8, &qword_2698CAB38);
        result = (*(v61 + 8))(v59, v60);
        break;
      default:
        v64 = v21;
        v30 = *(v21 + 32);
        v63 = v23;
        v31 = v67;
        v30(v23, v26, v67);
        __swift_storeEnumTagSinglePayload(v15, 1, 1, v31);
        sub_2698C9F84();
        sub_2698C20BC(v15, &qword_28033DB20, &qword_2698CAB98);
        v32 = v84;
        sub_2698CA454();
        v33 = v69;
        v34 = v68;
        v35 = v70;
        (*(v69 + 104))(v68, *MEMORY[0x277D62BE0], v70);
        v36 = sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
        v37 = v73;
        v38 = v86;
        sub_2698CA324();
        (*(v33 + 8))(v34, v35);
        (*(v85 + 8))(v32, v38);
        v40 = v74;
        v39 = v75;
        (*(v74 + 16))(v72, v37, v75);
        swift_storeEnumTagMultiPayload();
        v92 = v38;
        v93 = v36;
        swift_getOpaqueTypeConformance2();
        v41 = v76;
        sub_2698CA294();
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C1980();
        sub_2698C1AAC();
        v42 = v83;
        sub_2698CA294();
        sub_2698C20BC(v41, &qword_28033DAB0, &qword_2698CAB28);
        sub_2698C2064();
        swift_storeEnumTagMultiPayload();
        sub_2698C18F4();
        sub_2698C1B60();
        sub_2698CA294();
        sub_2698C20BC(v42, &qword_28033DAA0, &qword_2698CAB20);
        (*(v40 + 8))(v37, v39);
        result = (*(v64 + 8))(v63, v67);
        break;
    }
  }

  return result;
}

uint64_t sub_2698C1054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9E8, &unk_2698CAA20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F8, &unk_2698CAA30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_2698CA494();
  v9 = sub_2698CA594();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2698C20BC(v8, &qword_28033D9F8, &unk_2698CAA30);
  }

  sub_2698CA1A4();
  v11 = sub_2698CA504();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
  sub_2698CA584();
  sub_2698C20BC(v2, &qword_28033D9E8, &unk_2698CAA20);
  sub_2698C20BC(v5, &qword_28033D9F0, &unk_2698CAB60);
  return (*(*(v9 - 8) + 8))(v8, v9);
}

uint64_t sub_2698C1268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2698CA4B4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2698CA184();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2698C1318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2698CA4B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2698CA184();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2698C13BC(uint64_t a1)
{
  result = sub_2698CA4B4();
  if (v2 <= 0x3F)
  {
    result = sub_2698CA184();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2698C149C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DisambiguationList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2698C1520()
{
  result = qword_28033DA50;
  if (!qword_28033DA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DA48, &qword_2698CAB00);
    sub_2698CA554();
    sub_2698C1A64(&qword_28033DA58, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DA50);
  }

  return result;
}

unint64_t sub_2698C1604()
{
  result = qword_28033DA60;
  if (!qword_28033DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DA60);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  type metadata accessor for DisambiguationList(0);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_2698CA4B4();
  OUTLINED_FUNCTION_0_1();
  (*(v7 + 8))(v1 + v4);
  v8 = v1 + v4 + *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_1();
  (*(v9 + 8))(v8);
  v10 = sub_2698CA184();
  v11 = *(v10 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA00, &qword_2698CAA48);
  OUTLINED_FUNCTION_0_1();
  (*(v12 + 8))(v8 + v11);
  v13 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA08, &qword_2698CAA50);
  OUTLINED_FUNCTION_0_1();
  (*(v14 + 8))(v8 + v13);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_2698C17E8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for DisambiguationList(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2698BFAB0(v5, a2);
}

unint64_t sub_2698C1868()
{
  result = qword_28033DA90;
  if (!qword_28033DA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DA88, &qword_2698CAB18);
    sub_2698C18F4();
    sub_2698C1B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DA90);
  }

  return result;
}

unint64_t sub_2698C18F4()
{
  result = qword_28033DA98;
  if (!qword_28033DA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DAA0, &qword_2698CAB20);
    sub_2698C1980();
    sub_2698C1AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DA98);
  }

  return result;
}

unint64_t sub_2698C1980()
{
  result = qword_28033DAA8;
  if (!qword_28033DAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DAB0, &qword_2698CAB28);
    sub_2698CA444();
    sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DAA8);
  }

  return result;
}

uint64_t sub_2698C1A64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2698C1AAC()
{
  result = qword_28033DAC0;
  if (!qword_28033DAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DAC8, &qword_2698CAB30);
    sub_2698C1A64(&qword_28033DAB8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DAC0);
  }

  return result;
}

unint64_t sub_2698C1B60()
{
  result = qword_28033DAD0;
  if (!qword_28033DAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DAD8, &qword_2698CAB38);
    sub_2698C1AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DAD0);
  }

  return result;
}

uint64_t sub_2698C1BEC()
{
  OUTLINED_FUNCTION_4();
  v1(0);
  OUTLINED_FUNCTION_0_0();
  v2 = OUTLINED_FUNCTION_3_0();
  v3(v2);
  return v0;
}

uint64_t sub_2698C1C44()
{
  v2 = (type metadata accessor for DisambiguationList(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  sub_2698CA1E4();
  OUTLINED_FUNCTION_2_0();
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v11 = (v4 + v5 + v10) & ~v10;
  v32 = *(v9 + 64);
  v12 = v3 | v10;
  sub_2698CA4B4();
  OUTLINED_FUNCTION_0_1();
  (*(v13 + 8))(v1 + v4);
  v14 = v1 + v4 + v2[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_0();
  v17 = *(v16 + 8);
  v17(v14, v15);
  v18 = sub_2698CA184();
  v19 = *(v18 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA00, &qword_2698CAA48);
  OUTLINED_FUNCTION_0_1();
  (*(v20 + 8))(v14 + v19);
  v21 = *(v18 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DA08, &qword_2698CAA50);
  OUTLINED_FUNCTION_0_1();
  (*(v22 + 8))(v14 + v21);
  v17(v1 + v11, v15);
  v23 = v0[7];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAE0, &qword_2698CAB40);
  OUTLINED_FUNCTION_0_0();
  v26 = *(v25 + 8);
  v26(v1 + v11 + v23, v24);
  v26(v1 + v11 + v0[8], v24);
  v27 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAE8, &qword_2698CAB48);
  OUTLINED_FUNCTION_0_1();
  (*(v28 + 8))(v1 + v11 + v27);
  v29 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAF0, &unk_2698CAB50);
  OUTLINED_FUNCTION_0_1();
  (*(v30 + 8))(v1 + v11 + v29);

  return MEMORY[0x2821FE8E8](v1, v11 + v32, v12 | 7);
}

uint64_t sub_2698C1F40()
{
  OUTLINED_FUNCTION_4();
  v1(0);
  OUTLINED_FUNCTION_0_0();
  v2 = OUTLINED_FUNCTION_3_0();
  v3(v2);
  return v0;
}

uint64_t sub_2698C1F98()
{
  type metadata accessor for DisambiguationList(0);
  sub_2698CA1E4();

  return sub_2698C1054();
}

uint64_t sub_2698C2064()
{
  OUTLINED_FUNCTION_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_0();
  v3 = OUTLINED_FUNCTION_3_0();
  v4(v3);
  return v0;
}

uint64_t sub_2698C20BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2698C216C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_2698CA4B4();
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_2698CA134();
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_2698C2258(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_2698CA4B4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_2698CA134();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ResultsList(uint64_t a1)
{
  result = qword_28033DB38;
  if (!qword_28033DB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2698C236C(uint64_t a1)
{
  sub_2698C2408(319);
  if (v1 <= 0x3F)
  {
    sub_2698CA4B4();
    if (v2 <= 0x3F)
    {
      sub_2698CA134();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2698C2408(uint64_t a1)
{
  if (!qword_28033DB48)
  {
    sub_2698CA5F4();
    sub_2698C46EC(&qword_28033DB50, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_2698CA274();
    if (!v2)
    {
      atomic_store(v1, &qword_28033DB48);
    }
  }
}

uint64_t sub_2698C24BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB58, &qword_2698CAC38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v32 - v4;
  v6 = type metadata accessor for ResultsList(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB60, &qword_2698CAC40);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  v32[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB68, &qword_2698CAC48);
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v32 - v18;
  sub_2698C428C(v2, v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResultsList);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_2698C422C(v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ResultsList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB80, &qword_2698CAC68);
  sub_2698BF164(&qword_28033DB88, &qword_28033DB80, &qword_2698CAC68, MEMORY[0x277CE14C0]);
  sub_2698CA4D4();
  v22 = *MEMORY[0x277D63BA8];
  sub_2698CA4E4();
  OUTLINED_FUNCTION_0_0();
  (*(v23 + 104))(v5, v22);
  v24 = *MEMORY[0x277D63BC0];
  v25 = sub_2698CA4F4();
  OUTLINED_FUNCTION_0_0();
  (*(v26 + 104))(v5, v24, v25);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v25);
  OUTLINED_FUNCTION_2_1();
  v29 = sub_2698BF164(v27, &qword_28033DB60, &qword_2698CAC40, v28);
  sub_2698CA364();
  sub_2698C20BC(v5, &qword_28033DB58, &qword_2698CAC38);
  (*(v11 + 8))(v14, v9);
  v32[2] = v9;
  v32[3] = v29;
  OUTLINED_FUNCTION_3_1();
  swift_getOpaqueTypeConformance2();
  v30 = v32[0];
  sub_2698CA3B4();
  return (*(v16 + 8))(v19, v30);
}

uint64_t sub_2698C28C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB98, &qword_2698CAC70);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ResultsList(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2698C428C(a1, &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResultsList);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_2698C422C(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ResultsList);
  sub_2698C2F28(sub_2698C3F74, v14, &v23);

  if (v24)
  {
    sub_2698C3FE4(&v23, v25);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v15 = sub_2698CA304();

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2698C20BC(&v23, &qword_28033DBA0, &qword_2698CAC78);
    v15 = 0;
  }

  v25[0] = sub_2698CA124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBA8, &qword_2698CAC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBB0, &qword_2698CAC88);
  type metadata accessor for VideoResult(0);
  sub_2698BF164(&qword_28033DBB8, &qword_28033DBA8, &qword_2698CAC80, MEMORY[0x277D83980]);
  sub_2698C46EC(&qword_28033DBC0, type metadata accessor for VideoResult, &unk_2698CADB4);
  sub_2698C46EC(&qword_28033DBC8, MEMORY[0x277D61E28], MEMORY[0x277D61E30]);
  sub_2698CA414();
  v16 = *(v4 + 16);
  v16(v7, v9, v3);
  v17 = v22;
  *v22 = v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBD0, &unk_2698CAC90);
  v16(v17 + *(v18 + 48), v7, v3);
  v19 = *(v4 + 8);
  v19(v9, v3);
  v19(v7, v3);
}

uint64_t sub_2698C2CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9E8, &unk_2698CAA20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F8, &unk_2698CAA30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  type metadata accessor for ResultsList(0);
  sub_2698CA494();
  v11 = sub_2698CA594();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    return sub_2698C20BC(v10, &qword_28033D9F8, &unk_2698CAA30);
  }

  v13 = sub_2698C9F64();
  (*(*(v13 - 8) + 16))(v7, a1, v13);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);
  v14 = sub_2698CA504();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
  sub_2698CA584();
  sub_2698C20BC(v4, &qword_28033D9E8, &unk_2698CAA20);
  sub_2698C20BC(v7, &qword_28033D9F0, &unk_2698CAB60);
  return (*(*(v11 - 8) + 8))(v10, v11);
}

double sub_2698C2F28@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v55 = a2;
  v56 = a3;
  v50 = a1;
  v3 = sub_2698CA5D4();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB20, &qword_2698CAB98);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v53 = sub_2698CA5B4();
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBE0, &qword_2698CACA0);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBE8, &qword_2698CACA8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = sub_2698CA0F4();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  sub_2698CA114();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v21 = v56;
    sub_2698C20BC(v14, &qword_28033DBE8, &qword_2698CACA8);
    v22 = sub_2698CA104();
    if (v23)
    {
      v69 = MEMORY[0x277D837D0];
      v70 = MEMORY[0x277D63F80];
      v67 = v22;
      v68 = v23;
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      sub_2698CA5C4();
      *(v21 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBF0, &unk_2698CACB0);
      *(v21 + 32) = sub_2698C40E0();
      __swift_allocate_boxed_opaque_existential_1(v21);
      sub_2698C46EC(&qword_28033DC00, MEMORY[0x277D63EB0], MEMORY[0x277D63EA8]);
      v24 = v47;
      sub_2698CA3C4();
      (*(v46 + 8))(v5, v24);
    }

    else
    {
      *(v21 + 32) = 0;
      result = 0.0;
      *v21 = 0u;
      *(v21 + 16) = 0u;
    }
  }

  else
  {
    v26 = MEMORY[0x277D61E40];
    v27 = sub_2698C422C(v14, v20, MEMORY[0x277D61E40]);
    v28 = MEMORY[0x26D647490](v27);
    v29 = MEMORY[0x277D837D0];
    v30 = MEMORY[0x277D63F80];
    v69 = MEMORY[0x277D837D0];
    v70 = MEMORY[0x277D63F80];
    v67 = v28;
    v68 = v31;
    v32 = sub_2698CA0D4();
    *(&v65 + 1) = v29;
    v66 = v30;
    *&v64 = v32;
    *(&v64 + 1) = v33;
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    sub_2698CA0E4();
    sub_2698C37A0(v8, v57);
    sub_2698C20BC(v8, &qword_28033DB20, &qword_2698CAB98);
    __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    v34 = sub_2698CA304();
    v57[8] = MEMORY[0x277CE11C8];
    v57[9] = MEMORY[0x277D63A60];
    v57[5] = v34;
    sub_2698CA5A4();
    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_2698C428C(v20, v18, MEMORY[0x277D61E40]);
    v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v36 = swift_allocObject();
    sub_2698C422C(v18, v36 + v35, v26);
    v37 = (v36 + ((v16 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    v38 = v55;
    *v37 = v50;
    v37[1] = v38;
    v39 = sub_2698C46EC(&qword_28033DC18, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);

    v40 = v51;
    v41 = v53;
    sub_2698CA344();

    (*(v49 + 8))(v10, v41);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC20, qword_2698CACD0);
    v43 = v56;
    *(v56 + 24) = v42;
    v43[4] = sub_2698C4504();
    __swift_allocate_boxed_opaque_existential_1(v43);
    v67 = v41;
    v68 = v39;
    swift_getOpaqueTypeConformance2();
    v44 = v54;
    sub_2698CA3C4();
    (*(v52 + 8))(v40, v44);
    sub_2698C4620(v20);
  }

  return result;
}

uint64_t sub_2698C3610@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2698CA2D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VideoResult(0);
  sub_2698C428C(a1, a2 + *(v8 + 28), MEMORY[0x277D61E28]);
  sub_2698CA5F4();
  sub_2698C46EC(&qword_28033DB50, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *a2 = sub_2698CA264();
  a2[1] = v9;
  _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
  v11[1] = 0x4028000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A80], v4);
  sub_2698C408C();
  return sub_2698CA214();
}

uint64_t sub_2698C37A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_2698C9F14();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2698C9FB4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2698CA444();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB20, &qword_2698CAB98);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = sub_2698C9EF4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2698C467C(a1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    result = sub_2698C20BC(v15, &qword_28033DB20, &qword_2698CAB98);
    v21 = MEMORY[0x277CE1410];
    v22 = v31;
    *(v31 + 24) = MEMORY[0x277CE1428];
    *(v22 + 32) = v21;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v16);
    sub_2698C9F84();
    sub_2698C20BC(v13, &qword_28033DB20, &qword_2698CAB98);
    sub_2698CA454();
    v24 = v29;
    v23 = v30;
    (*(v29 + 104))(v5, *MEMORY[0x277D62AA8], v30);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB28, &qword_2698CABA0);
    v26 = v31;
    *(v31 + 24) = v25;
    v27 = sub_2698C46EC(&qword_28033DAB8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    v32 = v7;
    v33 = v27;
    v26[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v26);
    sub_2698CA324();
    (*(v24 + 8))(v5, v23);
    (*(v28 + 8))(v9, v7);
    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_2698C3BD4(uint64_t a1, void (*a2)(char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_2698C9F64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2698CA0B4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_2698C20BC(v5, &qword_28033D9F0, &unk_2698CAB60);
  }

  (*(v7 + 32))(v9, v5, v6);
  a2(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2698C3D68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ResultsList(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2698C28C4(v4, a1);
}

uint64_t objectdestroyTm_1()
{
  type metadata accessor for ResultsList(0);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 28);
  sub_2698CA4B4();
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 8))(v1 + v4 + v7);
  v9 = v1 + v4 + *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB70, &qword_2698CAC50);
  OUTLINED_FUNCTION_0_1();
  (*(v10 + 8))(v9);
  v11 = sub_2698CA134();
  v12 = *(v11 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB78, &unk_2698CAC58);
  OUTLINED_FUNCTION_0_1();
  (*(v13 + 8))(v9 + v12);
  v14 = *(v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAE0, &qword_2698CAB40);
  OUTLINED_FUNCTION_0_1();
  (*(v15 + 8))(v9 + v14);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_2698C3F74(uint64_t a1)
{
  type metadata accessor for ResultsList(0);

  return sub_2698C2CD4(a1);
}

uint64_t sub_2698C3FE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

unint64_t sub_2698C408C()
{
  result = qword_28033DBD8;
  if (!qword_28033DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DBD8);
  }

  return result;
}

unint64_t sub_2698C40E0()
{
  result = qword_28033DBF8;
  if (!qword_28033DBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DBF0, &unk_2698CACB0);
    sub_2698C46EC(&qword_28033DC00, MEMORY[0x277D63EB0], MEMORY[0x277D63EA8]);
    sub_2698C46EC(&qword_28033DC08, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DBF8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2698C422C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2698C428C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2698C42EC()
{
  sub_2698CA0F4();
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_0();
  v12 = *(v11 + 8);
  v12(v9, v10);
  v12(v9 + v0[7], v10);
  v13 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC10, &unk_2698CACC0);
  OUTLINED_FUNCTION_0_1();
  (*(v14 + 8))(v9 + v13);
  v15 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAF0, &unk_2698CAB50);
  OUTLINED_FUNCTION_0_1();
  (*(v16 + 8))(v9 + v15);

  return MEMORY[0x2821FE8E8](v1, v8 + 16, v6 | 7);
}

uint64_t sub_2698C4474()
{
  v1 = *(sub_2698CA0F4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2698C3BD4(v0 + v2, v3);
}

unint64_t sub_2698C4504()
{
  result = qword_28033DC28;
  if (!qword_28033DC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DC20, qword_2698CACD0);
    sub_2698CA5B4();
    sub_2698C46EC(&qword_28033DC18, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
    swift_getOpaqueTypeConformance2();
    sub_2698C46EC(&qword_28033DC08, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DC28);
  }

  return result;
}

uint64_t sub_2698C4620(uint64_t a1)
{
  v2 = sub_2698CA0F4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2698C467C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB20, &qword_2698CAB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C46EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2698C4734()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DB68, &qword_2698CAC48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DB60, &qword_2698CAC40);
  OUTLINED_FUNCTION_2_1();
  sub_2698BF164(v0, &qword_28033DB60, &qword_2698CAC40, v1);
  OUTLINED_FUNCTION_3_1();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2698C4830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2698CA4B4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2698CA0A4();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2698C48E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2698CA4B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2698CA0A4();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for StandardButtonView(uint64_t a1)
{
  result = qword_28033DC30;
  if (!qword_28033DC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2698C49D0(uint64_t a1)
{
  result = sub_2698CA4B4();
  if (v2 <= 0x3F)
  {
    result = sub_2698CA0A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2698C4A70()
{
  v1 = type metadata accessor for StandardButtonView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2698C531C(v0, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2698C5384(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC40, &qword_2698CAD68);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DC48, &qword_2698CAD70);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033D988, &qword_2698CA960);
  v8 = sub_2698CA4C4();
  v9 = sub_2698BF164(&qword_28033D9A8, &qword_28033D988, &qword_2698CA960, MEMORY[0x277CDF028]);
  v10 = sub_2698C5458();
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v6;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_2698CA4D4();
}

uint64_t sub_2698C4C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v22 = sub_2698CA4C4();
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StandardButtonView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D988, &qword_2698CA960);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC48, &qword_2698CAD70);
  v12 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v14 = &v22 - v13;
  sub_2698C531C(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_2698C5384(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v26 = a1;
  sub_2698CA404();
  sub_2698CA2A4();
  v17 = sub_2698BF164(&qword_28033D9A8, &qword_28033D988, &qword_2698CA960, MEMORY[0x277CDF028]);
  v18 = sub_2698C5458();
  v19 = v22;
  sub_2698CA394();
  (*(v24 + 8))(v4, v19);
  (*(v9 + 8))(v11, v8);
  v27 = v8;
  v28 = v19;
  v29 = v17;
  v30 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v23;
  sub_2698CA3B4();
  return (*(v12 + 8))(v14, v20);
}

uint64_t sub_2698C5010()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9E8, &unk_2698CAA20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F8, &unk_2698CAA30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_2698CA494();
  v9 = sub_2698CA594();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2698C20BC(v8, &qword_28033D9F8, &unk_2698CAA30);
  }

  type metadata accessor for StandardButtonView(0);
  sub_2698CA084();
  v11 = sub_2698C9F64();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  v12 = sub_2698CA504();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v12);
  sub_2698CA584();
  sub_2698C20BC(v2, &qword_28033D9E8, &unk_2698CAA20);
  sub_2698C20BC(v5, &qword_28033D9F0, &unk_2698CAB60);
  return (*(*(v9 - 8) + 8))(v8, v9);
}

uint64_t sub_2698C5230@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StandardButtonView(0);
  MEMORY[0x26D647460]();
  sub_2698BF1AC();
  v2 = sub_2698CA2F4();
  v4 = v3;
  v6 = v5;
  sub_2698CA2C4();
  v7 = sub_2698CA2E4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_2698C566C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_2698C531C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C5384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C53E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StandardButtonView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2698C4C5C(v4, a1);
}

unint64_t sub_2698C5458()
{
  result = qword_28033DC50;
  if (!qword_28033DC50)
  {
    sub_2698CA4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DC50);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for StandardButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_2698CA4B4();
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v3);
  v6 = v0 + v3 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_1();
  (*(v7 + 8))(v6);
  v8 = *(sub_2698CA0A4() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D998, &unk_2698CA970);
  OUTLINED_FUNCTION_0_1();
  (*(v9 + 8))(v6 + v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2698C5604()
{
  type metadata accessor for StandardButtonView(0);

  return sub_2698C5010();
}

uint64_t sub_2698C566C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2698C56C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2698CA2D4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2698CA5F4();
  sub_2698C8D24(&qword_28033DB50, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *a2 = sub_2698CA264();
  a2[1] = v10;
  v11 = type metadata accessor for VideoResult(0);
  _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
  v13[1] = 0x4028000000000000;
  (*(v6 + 104))(v9, *MEMORY[0x277CE0A80], v4);
  sub_2698C408C();
  sub_2698CA214();
  return sub_2698C85B4(a1, a2 + *(v11 + 28), MEMORY[0x277D61E28]);
}

uint64_t type metadata accessor for VideoResult(uint64_t a1)
{
  result = qword_28033DC70;
  if (!qword_28033DC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2698C58B0(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    sub_2698CA4B4();
    OUTLINED_FUNCTION_3_2();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC68, qword_2698CAD80);
      OUTLINED_FUNCTION_3_2();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = sub_2698CA074();
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_2698C59E4(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_2698CA4B4();
    OUTLINED_FUNCTION_3_2();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC68, qword_2698CAD80);
      OUTLINED_FUNCTION_3_2();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = sub_2698CA074();
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_2698C5AF4(uint64_t a1)
{
  sub_2698C2408(319);
  if (v1 <= 0x3F)
  {
    sub_2698CA4B4();
    if (v2 <= 0x3F)
    {
      sub_2698C5BA8(319);
      if (v3 <= 0x3F)
      {
        sub_2698CA074();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2698C5BA8(uint64_t a1)
{
  if (!qword_28033DC80)
  {
    sub_2698C408C();
    v1 = sub_2698CA234();
    if (!v2)
    {
      atomic_store(v1, &qword_28033DC80);
    }
  }
}

uint64_t sub_2698C5C20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for VideoResult(0);
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = v4;
  v55 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC88, &qword_2698CAE08);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC90, &unk_2698CAE10);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v46 = sub_2698CA5B4();
  OUTLINED_FUNCTION_1_0();
  v48 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DBE0, &qword_2698CACA0);
  OUTLINED_FUNCTION_1_0();
  v49 = v15;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC98, &qword_2698CAE20);
  OUTLINED_FUNCTION_1_0();
  v50 = v19;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v20);
  v45 = &v44 - v21;
  v22 = sub_2698CA064();
  v71 = MEMORY[0x277D837D0];
  v72 = MEMORY[0x277D63F80];
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v23)
  {
    v25 = v23;
  }

  v69 = v24;
  v70 = v25;
  sub_2698C6238(v10);
  sub_2698C7FF8(&qword_28033DCA0, &qword_28033DC90, &unk_2698CAE10, sub_2698C7FC8);
  v26 = sub_2698CA304();
  sub_2698BF200(v10, &qword_28033DC90, &unk_2698CAE10);
  v27 = MEMORY[0x277CE11C8];
  v28 = MEMORY[0x277D63A60];
  v67 = MEMORY[0x277CE11C8];
  v68 = MEMORY[0x277D63A60];
  v66 = v26;
  v29 = sub_2698CA014();
  if (v30)
  {
    v31 = MEMORY[0x277D63F80];
    v32 = MEMORY[0x277D837D0];
  }

  else
  {
    v29 = 0;
    v32 = 0;
    v31 = 0;
    v63 = 0;
  }

  v61 = v29;
  v62 = v30;
  v64 = v32;
  v65 = v31;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  sub_2698C6898(v7);
  sub_2698C8110();
  v33 = sub_2698CA304();
  sub_2698C8274(v7);
  v57[4] = v28;
  v57[3] = v27;
  v57[0] = v33;
  sub_2698CA5A4();
  v34 = v55;
  sub_2698C82D4(v2, v55);
  v35 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v36 = swift_allocObject();
  sub_2698C85B4(v34, v36 + v35, type metadata accessor for VideoResult);
  v37 = sub_2698C8D24(&qword_28033DC18, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
  v38 = v46;
  sub_2698CA344();

  (*(v48 + 8))(v14, v38);
  v69 = v38;
  v70 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v45;
  v41 = v53;
  sub_2698CA3B4();
  (*(v49 + 8))(v18, v41);
  v69 = v41;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v52;
  sub_2698CA3C4();
  return (*(v50 + 8))(v40, v42);
}

uint64_t sub_2698C6238@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v41 = sub_2698CA474();
  v39 = *(v41 - 8);
  v3 = MEMORY[0x28223BE20](v41);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v37 = &v35 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD20, &qword_2698CAE80);
  MEMORY[0x28223BE20](v44);
  v42 = &v35 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD28, &qword_2698CAE88);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCB0, &qword_2698CAE28);
  MEMORY[0x28223BE20](v43);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCC0, &qword_2698CAE30);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  type metadata accessor for VideoResult(0);
  v14 = sub_2698CA034();
  v16 = v15;
  v17 = sub_2698CA044();
  v19 = sub_2698BD5A8(v14, v16, v17, v18);
  v21 = v20;
  v46 = v22;

  if (v19)
  {

    *v13 = sub_2698CA284();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD30, &qword_2698CAE90);
    sub_2698C79EC(v2, v19, &v13[*(v23 + 44)]);
    sub_2698C8B60(v13, v8, &qword_28033DCC0, &qword_2698CAE30);
    swift_storeEnumTagMultiPayload();
    sub_2698C80AC();
    sub_2698C8D24(&qword_28033DCC8, MEMORY[0x277D63B48], MEMORY[0x277D63B40]);
    sub_2698CA294();
    sub_2698C8B60(v10, v42, &qword_28033DCB0, &qword_2698CAE28);
    swift_storeEnumTagMultiPayload();
    sub_2698C7FC8();
    sub_2698CA294();

    sub_2698BF200(v10, &qword_28033DCB0, &qword_2698CAE28);
    return sub_2698BF200(v13, &qword_28033DCC0, &qword_2698CAE30);
  }

  else
  {
    v26 = v37;
    v25 = v38;
    v35 = v8;
    v36 = v10;
    v27 = v39;
    v28 = v41;
    if (v46)
    {
      v29 = v46;

      v30 = sub_2698CA024();
      if (v31)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }

      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0xE000000000000000;
      }

      v47 = v32;
      v48 = v33;

      MEMORY[0x26D647A30](v21, v29);

      sub_2698CA484();
      (*(v27 + 16))(v35, v26, v28);
      swift_storeEnumTagMultiPayload();
      sub_2698C80AC();
      sub_2698C8D24(&qword_28033DCC8, MEMORY[0x277D63B48], MEMORY[0x277D63B40]);
      v34 = v36;
      sub_2698CA294();
      sub_2698C8B60(v34, v42, &qword_28033DCB0, &qword_2698CAE28);
      swift_storeEnumTagMultiPayload();
      sub_2698C7FC8();
      sub_2698CA294();

      sub_2698BF200(v34, &qword_28033DCB0, &qword_2698CAE28);
      return (*(v27 + 8))(v26, v28);
    }

    else
    {
      sub_2698CA024();
      sub_2698CA484();
      (*(v27 + 16))(v42, v25, v28);
      swift_storeEnumTagMultiPayload();
      sub_2698C7FC8();
      sub_2698C8D24(&qword_28033DCC8, MEMORY[0x277D63B48], MEMORY[0x277D63B40]);
      sub_2698CA294();
      return (*(v27 + 8))(v25, v28);
    }
  }
}

uint64_t sub_2698C6898@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v90 = sub_2698C9FC4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2698C9F34();
  v86 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v87 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCE0, &qword_2698CAE48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v80 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCE8, &qword_2698CAE50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v80 - v7;
  v9 = sub_2698C9F54();
  MEMORY[0x28223BE20](v9 - 8);
  v85 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCF0, &qword_2698CAE58);
  MEMORY[0x28223BE20](v105);
  v106 = &v80 - v11;
  v108 = sub_2698C9F14();
  v12 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v92 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2698C9FB4();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2698CA444();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x28223BE20](v15);
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB28, &qword_2698CABA0);
  v97 = *(v17 - 8);
  v98 = v17;
  MEMORY[0x28223BE20](v17);
  v96 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCD8, &unk_2698CAE38);
  v100 = *(v19 - 8);
  v101 = v19;
  MEMORY[0x28223BE20](v19);
  v99 = &v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DCF8, &unk_2698CAE60);
  v103 = *(v21 - 8);
  v104 = v21;
  MEMORY[0x28223BE20](v21);
  v102 = &v80 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DB20, &qword_2698CAB98);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v80 - v27;
  v29 = sub_2698C9EF4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VideoResult(0);
  sub_2698CA054();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_2698BF200(v28, &qword_28033DB20, &qword_2698CAB98);
    v33 = sub_2698C9F74();
    v82 = v8;
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v33);
    v34 = sub_2698C9F24();
    v81 = v5;
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v34);
    v35 = v86;
    v36 = v87;
    (*(v86 + 104))(v87, *MEMORY[0x277D62D68], v95);
    v37 = *MEMORY[0x277D62B70];
    v80 = v12;
    v38 = *(v12 + 104);
    v83 = v12 + 104;
    v84 = v38;
    v39 = v92;
    v38(v92, v37, v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD00, &qword_2698CAE70);
    v40 = sub_2698C9F04();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2698CA940;
    (*(v41 + 104))(v43 + v42, *MEMORY[0x277D62A28], v40);
    sub_2698C8674(v43);
    v44 = v89;
    v45 = v88;
    v46 = v90;
    (*(v89 + 104))(v88, *MEMORY[0x277D63838], v90);
    v47 = v82;
    v48 = v36;
    v49 = v81;
    sub_2698C9F44();

    (*(v44 + 8))(v45, v46);
    v50 = *(v80 + 8);
    v51 = v108;
    v50(v39, v108);
    (*(v35 + 8))(v48, v95);
    sub_2698BF200(v49, &qword_28033DCE0, &qword_2698CAE48);
    sub_2698BF200(v47, &qword_28033DCE8, &qword_2698CAE50);
    v52 = v91;
    sub_2698CA464();
    v53 = v51;
    v84(v39, *MEMORY[0x277D62B38], v51);
    v54 = sub_2698C8D24(&qword_28033DAB8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    v55 = v96;
    v56 = v94;
    sub_2698CA324();
    v50(v39, v53);
    (*(v93 + 8))(v52, v56);
    v109 = v56;
    v110 = v54;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = v98;
    v58 = v99;
    sub_2698CA354();
    (*(v97 + 8))(v55, v59);
    v109 = v59;
    v110 = OpaqueTypeConformance2;
    v60 = swift_getOpaqueTypeConformance2();
    v62 = v101;
    v61 = v102;
    sub_2698CA334();
    (*(v100 + 8))(v58, v62);
    v64 = v103;
    v63 = v104;
    (*(v103 + 16))(v106, v61, v104);
    swift_storeEnumTagMultiPayload();
    v109 = v62;
    v110 = v60;
    swift_getOpaqueTypeConformance2();
    sub_2698CA294();
    return (*(v64 + 8))(v61, v63);
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v29);
    sub_2698C9F84();
    sub_2698BF200(v26, &qword_28033DB20, &qword_2698CAB98);
    v66 = v91;
    sub_2698CA454();
    v67 = v92;
    v68 = v108;
    (*(v12 + 104))(v92, *MEMORY[0x277D62B38], v108);
    v69 = sub_2698C8D24(&qword_28033DAB8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    v70 = v96;
    v71 = v94;
    sub_2698CA324();
    (*(v12 + 8))(v67, v68);
    (*(v93 + 8))(v66, v71);
    v109 = v71;
    v110 = v69;
    v72 = swift_getOpaqueTypeConformance2();
    v74 = v98;
    v73 = v99;
    sub_2698CA354();
    (*(v97 + 8))(v70, v74);
    v109 = v74;
    v110 = v72;
    v75 = swift_getOpaqueTypeConformance2();
    v77 = v101;
    v76 = v102;
    sub_2698CA334();
    (*(v100 + 8))(v73, v77);
    v79 = v103;
    v78 = v104;
    (*(v103 + 16))(v106, v76, v104);
    swift_storeEnumTagMultiPayload();
    v109 = v77;
    v110 = v75;
    swift_getOpaqueTypeConformance2();
    sub_2698CA294();
    (*(v79 + 8))(v76, v78);
    return (*(v30 + 8))(v32, v29);
  }
}

uint64_t sub_2698C767C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9E8, &unk_2698CAA20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F8, &unk_2698CAA30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9F0, &unk_2698CAB60);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = sub_2698C9F64();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VideoResult(0);
  sub_2698CA004();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v16 = &qword_28033D9F0;
    v17 = &unk_2698CAB60;
    v18 = v11;
    return sub_2698BF200(v18, v16, v17);
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_2698CA494();
  v19 = sub_2698CA594();
  if (__swift_getEnumTagSinglePayload(v5, 1, v19) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v16 = &qword_28033D9F8;
    v17 = &unk_2698CAA30;
    v18 = v5;
    return sub_2698BF200(v18, v16, v17);
  }

  (*(v13 + 16))(v9, v15, v12);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  v21 = sub_2698CA504();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  sub_2698CA584();
  sub_2698BF200(v2, &qword_28033D9E8, &unk_2698CAA20);
  sub_2698BF200(v9, &qword_28033D9F0, &unk_2698CAB60);
  (*(v13 + 8))(v15, v12);
  return (*(*(v19 - 8) + 8))(v5, v19);
}

uint64_t sub_2698C79EC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v44 = a3;
  v5 = sub_2698CA3D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2698CA474();
  v41 = *(v45 - 8);
  v9 = MEMORY[0x28223BE20](v45);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  type metadata accessor for VideoResult(0);
  sub_2698CA024();
  v42 = v12;
  sub_2698CA484();
  if (*a1)
  {
    v13 = *a1;
    sub_2698CA5E4();

    if (sub_2698CA684())
    {
      v14 = sub_2698CA2B4();
      sub_2698CA204();
      v49[0] = 0;
      LOBYTE(v46) = 0;
      *v52 = a2;
      v52[8] = v14;
      *&v52[16] = v15;
      *&v52[24] = v16;
      *&v52[32] = v17;
      *&v52[40] = v18;
      *&v52[48] = 0;
    }

    else
    {
      (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
      v19 = sub_2698CA3E4();
      (*(v6 + 8))(v8, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC68, qword_2698CAD80);
      sub_2698CA224();
      sub_2698CA424();
      sub_2698CA244();
      v52[0] = 1;
      *&v51[6] = v54;
      *&v51[22] = v55;
      *&v51[38] = v56;
      v20 = sub_2698CA2B4();
      sub_2698CA204();
      v49[0] = 0;
      *v50 = v19;
      *&v50[8] = 0;
      *&v50[16] = 1;
      *&v50[18] = *v51;
      *&v50[34] = *&v51[16];
      *&v50[50] = *&v51[32];
      *&v50[64] = *&v51[46];
      v50[72] = v20;
      *&v50[80] = v21;
      *&v50[88] = v22;
      *&v50[96] = v23;
      *&v50[104] = v24;
      v50[112] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD38, &qword_2698CAE98);
      sub_2698C89B8();
      v25 = sub_2698CA304();
      memcpy(v52, v50, sizeof(v52));
      sub_2698BF200(v52, &qword_28033DD38, &qword_2698CAE98);
      v53 = 1;
      *v49 = v25;
      *&v49[8] = v46;
      *&v49[24] = v47[0];
      *&v49[33] = *(v47 + 9);
      v49[49] = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD68, &qword_2698CAEB0);
    sub_2698C8AF0(&qword_28033DD70, &qword_28033DD68, &qword_2698CAEB0);
    sub_2698CA294();
    v26 = v41;
    v27 = v42;
    v28 = *(v41 + 16);
    v29 = v43;
    v30 = v45;
    v28(v43, v42, v45);
    v46 = *v50;
    v47[0] = *&v50[16];
    v47[1] = *&v50[32];
    v48 = *&v50[48];
    v53 = 1;
    v31 = v44;
    v28(v44, v29, v30);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD78, &qword_2698CAEB8);
    v33 = &v31[*(v32 + 48)];
    v34 = v48;
    *&v49[48] = v48;
    v35 = v47[0];
    *v49 = v46;
    *&v49[16] = v47[0];
    v36 = v47[1];
    *&v49[32] = v47[1];
    *v33 = v46;
    *(v33 + 1) = v35;
    *(v33 + 2) = v36;
    *(v33 + 24) = v34;
    v37 = &v31[*(v32 + 64)];
    LOBYTE(v34) = v53;
    *v37 = 0;
    v37[8] = v34;
    sub_2698C8B60(v49, v52, &qword_28033DD80, &qword_2698CAEC0);
    v38 = *(v26 + 8);
    v38(v27, v30);
    *v52 = v46;
    *&v52[16] = v47[0];
    *&v52[32] = v47[1];
    *&v52[48] = v48;
    sub_2698BF200(v52, &qword_28033DD80, &qword_2698CAEC0);
    return (v38)(v29, v30);
  }

  else
  {
    sub_2698CA5F4();
    sub_2698C8D24(&qword_28033DB50, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_2698CA254();
    __break(1u);
  }

  return result;
}

uint64_t sub_2698C7FF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2698C8D24(&qword_28033DCC8, MEMORY[0x277D63B48], MEMORY[0x277D63B40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2698C80AC()
{
  result = qword_28033DCB8;
  if (!qword_28033DCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DCC0, &qword_2698CAE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DCB8);
  }

  return result;
}

unint64_t sub_2698C8110()
{
  result = qword_28033DCD0;
  if (!qword_28033DCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DC88, &qword_2698CAE08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DCD8, &unk_2698CAE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DB28, &qword_2698CABA0);
    sub_2698CA444();
    sub_2698C8D24(&qword_28033DAB8, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DCD0);
  }

  return result;
}

uint64_t sub_2698C8274(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC88, &qword_2698CAE08);
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2698C82D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C8338()
{
  v1 = (type metadata accessor for VideoResult(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_2698CA4B4();
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 8))(v0 + v3 + v5);
  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC68, qword_2698CAD80);
  OUTLINED_FUNCTION_0_0();
  (*(v8 + 8))(v0 + v3 + v7);
  v9 = v0 + v3 + v1[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAE0, &qword_2698CAB40);
  OUTLINED_FUNCTION_0_0();
  v12 = *(v11 + 8);
  v12(v9, v10);
  v13 = sub_2698CA074();
  v14 = OUTLINED_FUNCTION_2_2(v13[5]);
  (v12)(v14);
  v15 = OUTLINED_FUNCTION_2_2(v13[6]);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_2_2(v13[7]);
  (v12)(v16);
  v17 = OUTLINED_FUNCTION_2_2(v13[8]);
  (v12)(v17);
  v18 = OUTLINED_FUNCTION_2_2(v13[9]);
  (v12)(v18);
  v19 = v13[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DC10, &unk_2698CACC0);
  OUTLINED_FUNCTION_0_0();
  (*(v20 + 8))(v9 + v19);
  v21 = v13[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DAF0, &unk_2698CAB50);
  OUTLINED_FUNCTION_0_0();
  (*(v22 + 8))(v9 + v21);
  v23 = OUTLINED_FUNCTION_2_2(v13[12]);
  (v12)(v23);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2698C85B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2698C8614()
{
  type metadata accessor for VideoResult(0);

  return sub_2698C767C();
}

uint64_t sub_2698C8674(uint64_t a1)
{
  v2 = sub_2698C9F04();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD08, &qword_2698CAE78);
  result = sub_2698CA694();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_2698C8D24(&qword_28033DD10, MEMORY[0x277D62A30], MEMORY[0x277D62A38]);
    v14 = sub_2698CA604();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_2698C8D24(&qword_28033DD18, MEMORY[0x277D62A30], MEMORY[0x277D62A40]);
      v21 = sub_2698CA614();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_2698C89B8()
{
  result = qword_28033DD40;
  if (!qword_28033DD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DD38, &qword_2698CAE98);
    sub_2698C8A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DD40);
  }

  return result;
}

unint64_t sub_2698C8A44()
{
  result = qword_28033DD48;
  if (!qword_28033DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DD50, &qword_2698CAEA0);
    sub_2698C8AF0(&qword_28033DD58, &qword_28033DD60, &qword_2698CAEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DD48);
  }

  return result;
}

uint64_t sub_2698C8AF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2698C8B60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2698C8BC4()
{
  result = qword_28033DD88;
  if (!qword_28033DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DD90, &unk_2698CAEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28033DBE0, &qword_2698CACA0);
    sub_2698CA5B4();
    sub_2698C8D24(&qword_28033DC18, MEMORY[0x277D63E70], MEMORY[0x277D63E68]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2698C8D24(&qword_28033DC08, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28033DD88);
  }

  return result;
}

uint64_t sub_2698C8D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t VideoResultDisambiguationList.body.getter()
{
  v1 = type metadata accessor for VideoResultDisambiguationList(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2698C90F0(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2698C9158(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DDA0, &qword_2698CAEE0);
  sub_2698BF164(&qword_28033DDA8, &qword_28033DDA0, &qword_2698CAEE0, MEMORY[0x277D63CE0]);
  return sub_2698CA4D4();
}

uint64_t type metadata accessor for VideoResultDisambiguationList(uint64_t a1)
{
  result = qword_28033DDB0;
  if (!qword_28033DDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2698C8F20(uint64_t a1)
{
  v2 = type metadata accessor for VideoResultDisambiguationList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2698CA574();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v7 = MEMORY[0x26D6473B0](v6);
  v16 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x277D63F80];
  v14 = v7;
  v15 = v8;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_2698CA564();
  sub_2698C90F0(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_2698C9158(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  type metadata accessor for ResultsList(0);
  sub_2698C95B8(&qword_28033DDD0, type metadata accessor for ResultsList, &unk_2698CABE4);
  return sub_2698CA534();
}

uint64_t sub_2698C90F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoResultDisambiguationList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C9158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoResultDisambiguationList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2698C91F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ResultsList(0);
  sub_2698C9FD4();
  sub_2698CA5F4();
  sub_2698C95B8(&qword_28033DB50, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *a1 = sub_2698CA264();
  a1[1] = v2;
  return _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
}

uint64_t sub_2698C92A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698C9FF4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2698C9304(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698C9FF4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2698C9350(uint64_t a1)
{
  result = sub_2698C9FF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for VideoResultDisambiguationList(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033D9A0, &qword_2698CAA40);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v3);
  v6 = *(sub_2698C9FF4() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28033DD98, &qword_2698CAED8);
  OUTLINED_FUNCTION_0_1();
  (*(v7 + 8))(v0 + v3 + v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2698C9534(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VideoResultDisambiguationList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2698C95B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SnippetProvider.snippet(for:mode:idiom:)(uint64_t a1)
{
  v71 = type metadata accessor for StandardButtonView(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_2();
  v70 = v3 - v2;
  OUTLINED_FUNCTION_4_0();
  v4 = sub_2698CA0A4();
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_2();
  v69 = v7 - v6;
  v8 = OUTLINED_FUNCTION_4_0();
  v68 = type metadata accessor for ConfirmationView(v8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_2();
  v67 = v11 - v10;
  OUTLINED_FUNCTION_4_0();
  v12 = sub_2698CA144();
  v13 = OUTLINED_FUNCTION_3(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_2();
  v66 = v15 - v14;
  v16 = OUTLINED_FUNCTION_4_0();
  type metadata accessor for VideoResultDisambiguationList(v16);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_2();
  v65 = v19 - v18;
  OUTLINED_FUNCTION_4_0();
  v20 = sub_2698C9FF4();
  v21 = OUTLINED_FUNCTION_3(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_2();
  v24 = v23 - v22;
  v25 = type metadata accessor for DisambiguationList(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_2();
  v29 = v28 - v27;
  v30 = sub_2698CA184();
  v31 = OUTLINED_FUNCTION_3(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_2();
  v34 = v33 - v32;
  v35 = type metadata accessor for ResultsList(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_0_2();
  v39 = (v38 - v37);
  v40 = sub_2698CA134();
  v41 = OUTLINED_FUNCTION_3(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_0_2();
  v44 = v43 - v42;
  sub_2698CA1F4();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_0_2();
  sub_2698C9D98(a1, v47 - v46, MEMORY[0x277D61E90]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v62 = OUTLINED_FUNCTION_2_3();
      sub_2698C9D38(v62, v34, v63);
      sub_2698C9D98(v34, v29 + *(v25 + 20), MEMORY[0x277D61E78]);
      _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
      sub_2698C9DF8(&unk_28033DDF0, type metadata accessor for DisambiguationList, &protocol conformance descriptor for DisambiguationList);
      OUTLINED_FUNCTION_5();
      v51 = sub_2698CA304();
      sub_2698C9E40(v29, type metadata accessor for DisambiguationList);
      v52 = MEMORY[0x277D61E78];
      v53 = v34;
      break;
    case 2u:
      v58 = OUTLINED_FUNCTION_2_3();
      sub_2698C9D38(v58, v24, v59);
      sub_2698C9D98(v24, v65, MEMORY[0x277D61E20]);
      sub_2698C9DF8(&qword_28033DDE8, type metadata accessor for VideoResultDisambiguationList, &protocol conformance descriptor for VideoResultDisambiguationList);
      v51 = sub_2698CA304();
      OUTLINED_FUNCTION_6();
      v52 = MEMORY[0x277D61E20];
      v53 = v24;
      break;
    case 3u:
      v60 = OUTLINED_FUNCTION_2_3();
      v55 = v66;
      sub_2698C9D38(v60, v66, v61);
      sub_2698C9D98(v66, v67 + *(v68 + 20), MEMORY[0x277D61E70]);
      _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
      sub_2698C9DF8(&qword_28033DDE0, type metadata accessor for ConfirmationView, &protocol conformance descriptor for ConfirmationView);
      OUTLINED_FUNCTION_5();
      v51 = sub_2698CA304();
      OUTLINED_FUNCTION_6();
      v57 = MEMORY[0x277D61E70];
      goto LABEL_6;
    case 4u:
      v54 = OUTLINED_FUNCTION_2_3();
      v55 = v69;
      sub_2698C9D38(v54, v69, v56);
      sub_2698C9D98(v69, v70 + *(v71 + 20), MEMORY[0x277D61E38]);
      _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
      sub_2698C9DF8(&qword_28033DDD8, type metadata accessor for StandardButtonView, &unk_2698CAD14);
      OUTLINED_FUNCTION_5();
      v51 = sub_2698CA304();
      OUTLINED_FUNCTION_6();
      v57 = MEMORY[0x277D61E38];
LABEL_6:
      v52 = v57;
      v53 = v55;
      break;
    default:
      v48 = OUTLINED_FUNCTION_2_3();
      sub_2698C9D38(v48, v44, v49);
      sub_2698C9D98(v44, v39 + *(v35 + 24), MEMORY[0x277D61E48]);
      sub_2698CA5F4();
      sub_2698C9DF8(&qword_28033DB50, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
      OUTLINED_FUNCTION_5();
      *v39 = sub_2698CA264();
      v39[1] = v50;
      _s20SiriVideoUIFramework16ConfirmationViewV14_actionHandler33_19ADDAB092E0F06738070D2C59FBEF959SnippetUI06ActionG0Vvpfi_0();
      sub_2698C9DF8(&qword_28033DDD0, type metadata accessor for ResultsList, &unk_2698CABE4);
      v51 = sub_2698CA304();
      OUTLINED_FUNCTION_6();
      v52 = MEMORY[0x277D61E48];
      v53 = v44;
      break;
  }

  sub_2698C9E40(v53, v52);
  return v51;
}

uint64_t sub_2698C9D38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2698C9D98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2698C9DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2698C9E40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6()
{

  return sub_2698C9E40(v1, v0);
}