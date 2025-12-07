uint64_t sub_23846BD24(int a1, uint64_t a2)
{
  v33 = sub_23875C1E0();
  v32[1] = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32[0] = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23875BC40();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  v7 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v9 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277D383D8];
  *(v10 + 32) = *MEMORY[0x277D383D8];
  v12 = sub_23875EA80();
  v13 = MEMORY[0x277D38390];
  *(v10 + 40) = v12;
  *(v10 + 48) = v14;
  v15 = *v13;
  *(v10 + 56) = *v13;
  v36 = a1;
  if (a1)
  {
    v16 = 20;
  }

  else
  {
    v16 = 21;
  }

  v17 = sub_23844B4DC(v16);
  v18 = MEMORY[0x277D384B8];
  *(v10 + 64) = v17;
  *(v10 + 72) = v19;
  v20 = *v18;
  *(v10 + 80) = *v18;
  if (v7)
  {
    v21 = 8;
  }

  else
  {
    v21 = 0;
  }

  *(v10 + 88) = sub_238449A8C(v21);
  *(v10 + 96) = v22;
  v23 = v11;
  v24 = v15;
  v25 = v20;
  v26 = sub_23854B138(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v26;
  sub_2385C33E4(v9, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v38);

  v28 = *MEMORY[0x277D38548];
  v29 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23846CEF4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v30 = sub_23875E910();

  [v29 subject:v28 sendEvent:v30];

  sub_2387579D0();
  sub_2387579A0();
  sub_23875BBF0();
  sub_238757990();
  (*(v34 + 8))(v6, v35);
}

uint64_t sub_23846C2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for ExtractedOrderActionsItems(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A390, &qword_2387656C8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23846D3EC(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderActionsItems);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_23846D454(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ExtractedOrderActionsItems);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3A0, &unk_2387656D8);
  sub_23846D6D0();
  sub_23875E200();
  sub_23843A3E8(&qword_27DF0A388, &qword_27DF0A390, &qword_2387656C8, MEMORY[0x277CDF028]);
  sub_23875DE00();
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_23846C578(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 56))(isCurrentExecutor);
}

uint64_t sub_23846C61C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_23875EA80();
  v9 = v8;

  sub_2384397A8(v10, v11, v12);
  sub_23875E190();
  v13 = sub_23875DFF0();
  KeyPath = swift_getKeyPath("h={E", v7, v9);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3A0, &unk_2387656D8);
  v16 = (a1 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  return result;
}

uint64_t sub_23846C7F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v5 || (sub_23875F630()) && (*(a1 + 3) == *(a2 + 3) ? (v6 = *(a1 + 4) == *(a2 + 4)) : (v6 = 0), (v6 || (sub_23875F630()) && ((a1[40] ^ a2[40]) & 1) == 0 && ((a1[41] ^ a2[41]) & 1) == 0 && ((a1[42] ^ a2[42]) & 1) == 0))
  {
    v7 = a1[43] ^ a2[43] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id sub_23846C8C4@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v18 = a2 & 1;
  v5 = [a1 trackedOrderIdentifier];
  v6 = sub_23875EA80();
  v8 = v7;

  v9 = [a1 orderContent];
  v10 = [v9 merchantDisplayName];

  v11 = sub_23875EA80();
  v13 = v12;

  LOBYTE(v10) = [a1 notificationsEnabled];
  v14 = sub_238759460() & 1;
  v15 = [a1 orderContent];
  v16 = sub_23875A5D0();

  result = [a1 isMarkedAsComplete];
  *a3 = v18;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 40) = v10;
  *(a3 + 41) = v14;
  *(a3 + 42) = v16 & 1;
  *(a3 + 43) = result;
  return result;
}

void sub_23846CA4C(uint64_t a1)
{
  sub_23846CAFC(319);
  if (v1 <= 0x3F)
  {
    sub_23846D088(319, &qword_27DF0A0B0, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23846CAFC(uint64_t a1)
{
  if (!qword_27DF09E20)
  {
    sub_23875C1E0();
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF09E20);
    }
  }
}

unint64_t sub_23846CBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0A300;
  if (!qword_27DF0A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A300);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ExtractedOrderActionsMenu(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C1E0();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23846CD8C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_23846CE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A330, &qword_2387655F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23846CEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23846CFC8(uint64_t a1)
{
  sub_23846D088(319, &qword_27DF0A350, MEMORY[0x277CDD630]);
  if (v1 <= 0x3F)
  {
    sub_23846D0DC();
    if (v2 <= 0x3F)
    {
      sub_23846CAFC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23846D088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23846D0DC()
{
  result = qword_27DF0A358;
  if (!qword_27DF0A358)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DF0A358);
  }

  return result;
}

unint64_t sub_23846D12C()
{
  result = qword_27DF0A360;
  if (!qword_27DF0A360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A368, &qword_238765660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A2D8, &qword_2387655A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A310, &unk_2387655D0);
    v1 = sub_23843A3E8(&qword_27DF0A318, &qword_27DF0A2D8, &qword_2387655A0, MEMORY[0x277CDE5B0]);
    sub_2384397A8(v1, v2, v3);
    sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    sub_23846CEF4(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A360);
  }

  return result;
}

unint64_t sub_23846D304()
{
  result = qword_27DF0A380;
  if (!qword_27DF0A380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A378, &qword_2387656C0);
    sub_23843A3E8(&qword_27DF0A388, &qword_27DF0A390, &qword_2387656C8, MEMORY[0x277CDF028]);
    sub_23846CEF4(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A380);
  }

  return result;
}

uint64_t sub_23846D3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23846D454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_32Tm()
{
  v1 = (type metadata accessor for ExtractedOrderActionsItems(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C1E0();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23846D620(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ExtractedOrderActionsItems(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_23846D6D0()
{
  result = qword_27DF0A3A8;
  if (!qword_27DF0A3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3A0, &unk_2387656D8);
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A3A8);
  }

  return result;
}

uint64_t type metadata accessor for OrderWidgetBackground(uint64_t a1)
{
  result = qword_2814F0DE8;
  if (!qword_2814F0DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23846D828(uint64_t a1)
{
  sub_238438628(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23846D8B0@<X0>(_WORD *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

uint64_t sub_23846D940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1;
  v6[1] = a2;
  v7 = sub_23875D640();
  v2 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875D630();
  sub_23875E4A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3C0, &qword_238765788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3C8, &qword_238765790);
  sub_23843A3E8(&qword_2814F0938, &qword_27DF0A3C0, &qword_238765788, MEMORY[0x277CE04B0]);
  sub_23843A3E8(&qword_2814F09C8, &qword_27DF0A3C8, &qword_238765790, MEMORY[0x277CDF3A0]);
  sub_23875DD30();
  return (*(v2 + 8))(v4, v7);
}

uint64_t sub_23846DB08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23846DB50(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23846DBBC@<X0>(uint64_t a1@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D0, &unk_238771220);
  MEMORY[0x28223BE20](v55);
  v4 = &v54 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D8, &unk_23876A8A0);
  MEMORY[0x28223BE20](v56);
  v6 = &v54 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3E0, &qword_238765840);
  MEMORY[0x28223BE20](v57);
  v8 = &v54 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3E8, &unk_23876A8B0);
  MEMORY[0x28223BE20](v58);
  v64 = &v54 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3F0, &qword_238765848);
  MEMORY[0x28223BE20](v63);
  v67 = &v54 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3F8, &unk_23876A8C0);
  MEMORY[0x28223BE20](v66);
  v68 = &v54 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A400, &qword_238765850);
  MEMORY[0x28223BE20](v62);
  v70 = &v54 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A408, &qword_23876A8D0);
  MEMORY[0x28223BE20](v65);
  v69 = &v54 - v13;
  v14 = sub_23875C980();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v59 = *(v1 + 16);
  v19 = qword_238765888[v59];
  v21 = *(v20 + 28);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_23875CF50();
  (*(*(v23 - 8) + 104))(&v16[v21], v22, v23);
  *v16 = v19;
  *(v16 + 1) = v19;

  v61 = v17;
  v60 = v18;
  v24 = sub_23875E0D0();
  v25 = sub_23875D8E0();
  KeyPath = swift_getKeyPath(byte_238765858);
  *&v71 = v24;
  *(&v71 + 1) = KeyPath;
  *&v72 = v25;
  v27 = *MEMORY[0x277CDF9E8];
  v28 = sub_23875C880();
  (*(*(v28 - 8) + 104))(v4, v27, v28);
  sub_23846E6F4();
  result = sub_23875E9E0();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A410, &unk_238773730);
    sub_23846E74C();
    v54 = a1;
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220, MEMORY[0x277D84470]);
    sub_23875DC50();
    sub_23846E804(v4);

    *&v6[*(v56 + 36)] = sub_23875E040();
    sub_23875E4A0();
    sub_23875C9C0();
    sub_2384396E4(v6, v8, &qword_27DF0A3D8, &unk_23876A8A0);
    v30 = &v8[*(v57 + 36)];
    v31 = v76;
    *(v30 + 4) = v75;
    *(v30 + 5) = v31;
    *(v30 + 6) = v77;
    v32 = v72;
    *v30 = v71;
    *(v30 + 1) = v32;
    v33 = v74;
    *(v30 + 2) = v73;
    *(v30 + 3) = v33;
    sub_23875E010();
    v34 = sub_23875E060();

    v35 = v64;
    sub_2384396E4(v8, v64, &qword_27DF0A3E0, &qword_238765840);
    v36 = v35 + *(v58 + 36);
    *v36 = v34;
    *(v36 + 8) = xmmword_2387657B0;
    *(v36 + 24) = 0x4000000000000000;
    v37 = [objc_opt_self() systemBlackColor];
    v38 = sub_23875DFB0();
    LOBYTE(v34) = sub_23875D780();
    v39 = v35;
    v40 = v67;
    sub_2384396E4(v39, v67, &qword_27DF0A3E8, &unk_23876A8B0);
    v41 = v40 + *(v63 + 36);
    *v41 = v38;
    *(v41 + 8) = v34;
    v42 = v59;
    sub_23875E4A0();
    sub_23875C5C0();
    v43 = v68;
    sub_2384396E4(v40, v68, &qword_27DF0A3F0, &qword_238765848);
    v44 = (v43 + *(v66 + 36));
    v45 = v79;
    *v44 = v78;
    v44[1] = v45;
    v44[2] = v80;
    v46 = v70;
    v47 = &v70[*(v62 + 36)];
    sub_23846E86C(v16, v47);
    *(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
    sub_2384396E4(v43, v46, &qword_27DF0A3F8, &unk_23876A8C0);
    v48 = sub_23875E4A0();
    v50 = v49;
    v51 = v69;
    v52 = &v69[*(v65 + 36)];
    sub_23846E418(v16, v42, v52);
    v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20) + 36));
    *v53 = v48;
    v53[1] = v50;
    sub_2384396E4(v46, v51, &qword_27DF0A400, &qword_238765850);
    sub_2384396E4(v51, v54, &qword_27DF0A408, &qword_23876A8D0);
    return sub_23846E8D0(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23846E418@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = sub_23875DFD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22[-v11];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CE0EE0], v6);
    sub_23875E090();
  }

  else
  {
    sub_23875E070();
  }

  v13 = sub_23875E060();

  sub_23875C4C0();
  sub_23846E86C(a1, v12);
  v14 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36)];
  v15 = v23;
  *v14 = *&v22[8];
  *(v14 + 1) = v15;
  *(v14 + 4) = v24;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *&v12[*(v16 + 52)] = v13;
  *&v12[*(v16 + 56)] = 256;
  v17 = sub_23875E4A0();
  v19 = v18;
  v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36)];
  *v20 = v17;
  v20[1] = v19;
  sub_23846E92C(v12, a3);
}

unint64_t sub_23846E6F4()
{
  result = qword_2814F0998;
  if (!qword_2814F0998)
  {
    sub_23875C880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0998);
  }

  return result;
}

unint64_t sub_23846E74C()
{
  result = qword_27DF0A418;
  if (!qword_27DF0A418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A410, &unk_238773730);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A418);
  }

  return result;
}

uint64_t sub_23846E804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D0, &unk_238771220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23846E86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875C980();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23846E8D0(uint64_t a1)
{
  v2 = sub_23875C980();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23846E92C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23846E99C()
{
  result = qword_27DF0A458;
  if (!qword_27DF0A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A408, &qword_23876A8D0);
    sub_23846EA54();
    sub_23843A3E8(&qword_27DF0A4A0, &qword_27DF0A430, &unk_238768E20, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A458);
  }

  return result;
}

unint64_t sub_23846EA54()
{
  result = qword_27DF0A460;
  if (!qword_27DF0A460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A400, &qword_238765850);
    sub_23846EB0C();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A460);
  }

  return result;
}

unint64_t sub_23846EB0C()
{
  result = qword_27DF0A468;
  if (!qword_27DF0A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3F8, &unk_23876A8C0);
    sub_23846EB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A468);
  }

  return result;
}

unint64_t sub_23846EB98()
{
  result = qword_27DF0A470;
  if (!qword_27DF0A470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3F0, &qword_238765848);
    sub_23846EC50();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A470);
  }

  return result;
}

unint64_t sub_23846EC50()
{
  result = qword_27DF0A478;
  if (!qword_27DF0A478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3E8, &unk_23876A8B0);
    sub_23846ECDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A478);
  }

  return result;
}

unint64_t sub_23846ECDC()
{
  result = qword_27DF0A480;
  if (!qword_27DF0A480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3E0, &qword_238765840);
    sub_23846ED68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A480);
  }

  return result;
}

unint64_t sub_23846ED68()
{
  result = qword_27DF0A488;
  if (!qword_27DF0A488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3D8, &unk_23876A8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A410, &unk_238773730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3D0, &unk_238771220);
    sub_23846E74C();
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A488);
  }

  return result;
}

id sub_23846EEBC(double a1)
{
  v1 = sub_23846F130(a1);
  if (!v1)
  {
    v17 = 0u;
    v18 = 0u;
LABEL_10:
    sub_238439884(&v17, &qword_27DF0A4A8, &qword_238767840);
    return 0;
  }

  v2 = v1;
  v3 = sub_23875EA50();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {

    goto LABEL_10;
  }

  sub_23846F4E8();
  if (swift_dynamicCast())
  {
    v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4B8, &qword_2387658E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2387632F0;
    v7 = *MEMORY[0x277CBF930];
    *(inited + 32) = *MEMORY[0x277CBF930];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4C0, &qword_2387658F0);
    *(inited + 40) = v5;
    v8 = v7;
    v9 = v5;
    sub_23854B238(inited);
    swift_setDeallocating();
    sub_238439884(inited + 32, &qword_27DF0A4C8, &qword_23876E8E0);
    v10 = objc_allocWithZone(MEMORY[0x277CBF740]);
    type metadata accessor for CIContextOption(0);
    sub_23846F76C();
    v11 = sub_23875E910();

    v12 = [v10 initWithOptions_];

    [v15 extent];
    v13 = [v12 createCGImage:v15 fromRect:?];

    return v13;
  }

  return 0;
}

id sub_23846F130(double a1)
{
  v2 = sub_238757FE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v13 = sub_23875B260();
  result = 0;
  if (v12 >> 60 != 15)
  {
    v24 = v12;
    sub_23875B270();
    (*(v3 + 16))(v8, v11, v2);
    v15 = (*(v3 + 88))(v8, v2);
    if (v15 == *MEMORY[0x277CC6D70] || v15 == *MEMORY[0x277CC6D88] || v15 == *MEMORY[0x277CC6D78] || v15 == *MEMORY[0x277CC6D80])
    {
      v16 = *(v3 + 8);
      v16(v11, v2);
    }

    else
    {
      v16 = *(v3 + 8);
      v16(v11, v2);
      v16(v8, v2);
    }

    sub_23875B270();
    v17 = v13;
    v18 = v13;
    v19 = v24;
    sub_23846F534(v18, v24, a1);
    v16(v5, v2);
    v20 = sub_23875EA50();

    v21 = sub_23875E910();

    v22 = [objc_opt_self() filterWithName:v20 withInputParameters:v21];

    sub_23844C940(v17, v19);
    return v22;
  }

  return result;
}

unint64_t sub_23846F4E8()
{
  result = qword_27DF0A4B0;
  if (!qword_27DF0A4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0A4B0);
  }

  return result;
}

unint64_t sub_23846F534(uint64_t a1, unint64_t a2, double a3)
{
  v7 = sub_238757FE0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D0, &unk_2387713A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  strcpy((inited + 32), "inputMessage");
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_23844C8EC(a1, a2);
  v12 = sub_23853BB18(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &qword_27DF0A4D8, &qword_238766B00);
  (*(v8 + 16))(v10, v3, v7);
  v13 = (*(v8 + 88))(v10, v7);
  LODWORD(a1) = *MEMORY[0x277CC6D88];
  (*(v8 + 8))(v10, v7);
  if (v13 == a1)
  {
    v20 = MEMORY[0x277D85048];
    v19[0] = a3;
    sub_23846F7C4(v19, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v12;
    sub_2386CC844(v18, 0x6975517475706E69, 0xEF65636170537465, isUniquelyReferenced_nonNull_native);
    return v17;
  }

  return v12;
}

unint64_t sub_23846F76C()
{
  result = qword_27DF09148;
  if (!qword_27DF09148)
  {
    type metadata accessor for CIContextOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09148);
  }

  return result;
}

_OWORD *sub_23846F7C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23846F7D4()
{
  v0 = sub_23875C1E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C120();
  v4 = sub_23875C1B0();
  v5 = sub_23875EFD0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_23846F954()
{
  v1 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  sub_2384723D0(*(v0 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel) + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, &v12 - v5);
  sub_238472368(v6, v3, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return EnumCaseMultiPayload;
      }

      v10 = 8;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v10 = 5;
    }

    else
    {
      v10 = 6;
    }
  }

  else
  {
    v8 = 1;
    v9 = 3;
    if (EnumCaseMultiPayload != 2)
    {
      v9 = 4;
    }

    if (EnumCaseMultiPayload)
    {
      v8 = 2;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }
  }

  sub_238472434(v3, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  return v10;
}

uint64_t sub_23846FABC(uint64_t a1)
{
  v26 = a1;
  v25 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  MEMORY[0x28223BE20](v8);
  v27 = &v23 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A550, &qword_238765A50);
  v10 = *(v2 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2387632F0;
  sub_2384723D0(*(v1 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel) + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, v12 + v11);
  swift_getKeyPath("(;{E");
  swift_getKeyPath("\b;{E");

  sub_23875C2D0();

  v13 = v28;
  v28 = v12;
  sub_238569ACC(v13);
  v14 = v28;
  v15 = *(v28 + 16);
  if (!v15)
  {
LABEL_27:

    return 0;
  }

  v24 = v4;
  result = sub_23875ED50();
  v17 = v14 + v11 + v15 * v10;
  v18 = v14 + v11 + v10 * (v15 - 1);
  while (1)
  {
    if (v15 > *(v14 + 16))
    {
      __break(1u);
      return result;
    }

    sub_2384723D0(v18, v27);
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_238472368(v27, v7, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v20 = 3;
        }

        else
        {
          v20 = 4;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v20 = 5;
      }

      else
      {
        v20 = 6;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v20 = 8;
LABEL_20:
      sub_238472434(v7, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      goto LABEL_21;
    }

    v20 = EnumCaseMultiPayload;
LABEL_21:

    if (v20 == v26)
    {
      break;
    }

    v17 -= v10;
    v18 -= v10;
    if (!--v15)
    {
      goto LABEL_27;
    }
  }

  if (v15 >= *(v14 + 16))
  {
    goto LABEL_27;
  }

  v21 = v24;
  sub_2384723D0(v17, v24);

  v22 = sub_238500420();
  sub_238472434(v21, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  return v22;
}

uint64_t sub_23846FE78(uint64_t a1)
{
  v3 = sub_23875C1E0();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProvisioningStepView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D3B0, &qword_238765A48);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  v26 = a1;
  sub_2384701FC(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &qword_27DF0D3B0, &qword_238765A48);
    sub_23875C120();
    v19 = sub_23875C1B0();
    v20 = sub_23875EFE0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v26;
      _os_log_impl(&dword_2383F8000, v19, v20, "Could not determine a destination for the authorization step %ld.", v21, 0xCu);
      MEMORY[0x23EE64DF0](v21, -1, -1);
    }

    (*(v27 + 8))(v5, v28);
    return 0;
  }

  else
  {
    sub_238472368(v11, v18, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    sub_2384723D0(v18, v15);
    v23 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel);
    *(objc_allocWithZone(type metadata accessor for ProvisioningStepViewController(0)) + qword_27DF0A510) = v23;
    sub_2384723D0(v15, v8);
    *&v8[*(v6 + 20)] = v23;
    swift_retain_n();
    v24 = sub_23875D080();
    sub_238472434(v15, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    sub_238472434(v18, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    return v24;
  }
}

uint64_t sub_2384701FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v26 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A550, &qword_238765A50);
  v9 = *(v3 + 72);
  v23 = v3;
  v10 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2387632F0;
  sub_2384723D0(*(v2 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel) + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, v11 + v10);
  swift_getKeyPath("(;{E");
  swift_getKeyPath("\b;{E");

  sub_23875C2D0();

  v12 = v27;
  v27 = v11;
  sub_238569ACC(v12);
  v13 = v27;
  v14 = *(v27 + 16);
  if (v14)
  {
    result = sub_23875ED50();
    v16 = v13 + v10 + v9 * (v14 - 1);
    v17 = -v9;
    while (1)
    {
      if (v14 > *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      sub_2384723D0(v16, v8);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_238472368(v8, v5, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        break;
      }

      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v19 = 5;
        }

        else
        {
          v19 = 6;
        }

        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v19 = 8;
LABEL_20:
        sub_238472434(v5, type metadata accessor for BankConnectAuthorizationNavigationDestination);
        goto LABEL_21;
      }

      v19 = EnumCaseMultiPayload;
LABEL_21:

      if (v19 == v25)
      {
        v21 = v24;
        sub_2384723D0(v16, v24);
        v20 = 0;
        goto LABEL_27;
      }

      v16 += v17;
      if (!--v14)
      {
        goto LABEL_25;
      }
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v19 = 3;
      }

      else
      {
        v19 = 4;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    goto LABEL_20;
  }

LABEL_25:
  v20 = 1;
  v21 = v24;
LABEL_27:

  return (*(v23 + 56))(v21, v20, 1, v26);
}

id sub_23847056C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v29 = sub_23875C1E0();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for BankConnectAuthorizationError(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_238765908, v11);
  swift_getKeyPath(byte_238765930);

  sub_23875C2D0();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_238439884(v8, &unk_27DF0B540, &qword_238765900);
    sub_23875C120();
    v14 = sub_23875C1B0();
    v15 = sub_23875EFE0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2383F8000, v14, v15, "Requested to build an error alert but no error was thrown during authorization.", v16, 2u);
      MEMORY[0x23EE64DF0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v29);
    return 0;
  }

  else
  {
    sub_238472368(v8, v13, type metadata accessor for BankConnectAuthorizationError);
    BankConnectAuthorizationError.failureReason.getter();
    if (v18)
    {
      v19 = sub_23875EA50();
    }

    else
    {
      v19 = 0;
    }

    v17 = [objc_opt_self() alertControllerWithTitle:v19 message:0 preferredStyle:1];

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v20 = qword_2814F1B90;
    v21 = sub_23875EA50();
    v22 = sub_23875EA50();
    v23 = sub_23875EA50();
    v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

    if (!v24)
    {
      sub_23875EA80();
      v24 = sub_23875EA50();
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a2;
    aBlock[4] = sub_238472348;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_238461390;
    aBlock[3] = &block_descriptor_1;
    v26 = _Block_copy(aBlock);

    v27 = [objc_opt_self() actionWithTitle:v24 style:1 handler:v26];
    _Block_release(v26);

    [v17 addAction_];
    sub_238472434(v13, type metadata accessor for BankConnectAuthorizationError);
  }

  return v17;
}

uint64_t sub_238470A74(uint64_t a1, void (*a2)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

id sub_238470B38()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FKBankConnectProvisioningFlowManager.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v2 = [v1 manager];
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_23846F7D4();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id FKBankConnectProvisioningFlowManager.init(paymentPass:institution:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPaymentPass:a1 institution:a2];

  return v4;
}

{
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(type metadata accessor for BankConnectProvisioningFlowManager());
  *&v2[OBJC_IVAR___FKBankConnectProvisioningFlowManager_manager] = sub_238471E64(a1);
  v8.receiver = v2;
  v8.super_class = FKBankConnectProvisioningFlowManager;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t FKBankConnectProvisioningFlowManager.rootStep.getter()
{
  v1 = [v0 manager];
  v2 = sub_23846F954();

  return v2;
}

BOOL FKBankConnectProvisioningFlowManager.hasErrorAlertToDisplay.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = [v0 manager];
  swift_getKeyPath(byte_238765908);
  swift_getKeyPath(byte_238765930);

  sub_23875C2D0();

  v6 = type metadata accessor for BankConnectAuthorizationError(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_238439884(v4, &unk_27DF0B540, &qword_238765900);
  return v7;
}

uint64_t FKBankConnectProvisioningFlowManager.nextStep(after:)(uint64_t a1)
{
  v3 = [v1 manager];
  v4 = sub_23846FABC(a1);

  return v4;
}

uint64_t FKBankConnectProvisioningFlowManager.viewController(for:)(uint64_t a1)
{
  v3 = [v1 manager];
  v4 = sub_23846FE78(a1);

  return v4;
}

id FKBankConnectProvisioningFlowManager.errorAlert(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 manager];
  v6 = sub_23847056C(a1, a2);

  return v6;
}

id FKBankConnectProvisioningFlowManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2384718F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_2384719E8()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

id sub_238471B18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningStepViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_238471B60(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875B8B0();
  v8 = a1;
  sub_23850A5BC(v7);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_238471CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t sub_238471D54()
{
  swift_getKeyPath(byte_238765908);
  swift_getKeyPath(byte_238765930);
  sub_23875C2D0();
}

uint64_t sub_238471DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_238472494(a1, &v6 - v3);
  return sub_238505570(v4);
}

id sub_238471E64(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_23875A820();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_23875EFB0();
  v15 = v12[8];
  v16 = sub_23875A9A0();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  v17 = v12[9];
  v18 = *MEMORY[0x277CC8260];
  v19 = sub_23875AB40();
  (*(*(v19 - 8) + 104))(&v14[v17], v18, v19);
  *&v14[v12[7]] = a1;
  v14[v12[10]] = 1;
  v20 = a1;
  sub_23875A7E0();
  sub_238758CC0();
  v21 = sub_238758CB0();
  sub_238758890();
  sub_238758880();
  v22 = sub_238758870();

  type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  v23 = swift_allocObject();
  (*(v5 + 16))(v7, v10, v4);
  v24 = sub_2384ABCA4(v14, 0, v7, v21, v22, nullsub_1, 0, v23);

  (*(v5 + 8))(v10, v4);
  *&v2[OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel] = v24;
  v28.receiver = v2;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

unint64_t type metadata accessor for FKBankConnectProvisioningFlowManager()
{
  result = qword_27DF0A508;
  if (!qword_27DF0A508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0A508);
  }

  return result;
}

uint64_t sub_238472278(uint64_t a1)
{
  result = type metadata accessor for BankConnectAuthorizationNavigationDestination(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BankConnectAuthorizationFlowViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238472368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384723D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238472434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238472494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238472504()
{
  result = qword_27DF0A558;
  if (!qword_27DF0A558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A560, &qword_238765AA0);
    sub_238472590();
    sub_238472A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A558);
  }

  return result;
}

unint64_t sub_238472590()
{
  result = qword_27DF0D1D0;
  if (!qword_27DF0D1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A570, &qword_238765AA8);
    sub_23847261C();
    sub_238472908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D1D0);
  }

  return result;
}

unint64_t sub_23847261C()
{
  result = qword_27DF0D1E0;
  if (!qword_27DF0D1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A580, &qword_238765AB0);
    sub_238472DD4(&unk_27DF0D1F0, type metadata accessor for BankConnectTermsAndConditionsView, &protocol conformance descriptor for BankConnectTermsAndConditionsView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A590, &qword_238765AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D200, &qword_238765AC0);
    type metadata accessor for BankConnectPrivacyOnboardingView(255);
    sub_238472DD4(&unk_27DF0A5A0, type metadata accessor for BankConnectPrivacyOnboardingView, &protocol conformance descriptor for BankConnectPrivacyOnboardingView);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D210, &qword_238765AC8);
    sub_2384727E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D1E0);
  }

  return result;
}

unint64_t sub_2384727E4()
{
  result = qword_27DF0A5B0;
  if (!qword_27DF0A5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D210, &qword_238765AC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D220, &qword_238765AD0);
    sub_2384728A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A5B0);
  }

  return result;
}

unint64_t sub_2384728A4()
{
  result = qword_27DF0A5C0;
  if (!qword_27DF0A5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D220, &qword_238765AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A5C0);
  }

  return result;
}

unint64_t sub_238472908()
{
  result = qword_27DF0D230;
  if (!qword_27DF0D230)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A5D0, &qword_238765AD8);
    sub_2384729EC(v1, v2, v3);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_238472A40(OpaqueTypeConformance2, v5, v6);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D230);
  }

  return result;
}

unint64_t sub_2384729EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0D240;
  if (!qword_27DF0D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D240);
  }

  return result;
}

unint64_t sub_238472A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0A5E0;
  if (!qword_27DF0A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A5E0);
  }

  return result;
}

unint64_t sub_238472A94()
{
  result = qword_27DF0D250;
  if (!qword_27DF0D250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A5F0, &qword_238765AE0);
    sub_238472B20();
    sub_238472C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D250);
  }

  return result;
}

unint64_t sub_238472B20()
{
  result = qword_27DF0D260;
  if (!qword_27DF0D260)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A600, &qword_238765AE8);
    v4 = sub_238472BD8(v1, v2, v3);
    sub_238472C2C(v4, v5, v6);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D260);
  }

  return result;
}

unint64_t sub_238472BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0D270;
  if (!qword_27DF0D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D270);
  }

  return result;
}

unint64_t sub_238472C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0A610;
  if (!qword_27DF0A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A610);
  }

  return result;
}

unint64_t sub_238472C80()
{
  result = qword_27DF0D280;
  if (!qword_27DF0D280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A620, &unk_238765AF0);
    type metadata accessor for BankConnectAccountConnectionView(255);
    sub_238472DD4(&unk_27DF0D290, type metadata accessor for BankConnectAccountConnectionView, &protocol conformance descriptor for BankConnectAccountConnectionView);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for BankConnectOfflineLabPrivacyConsentView(255);
    sub_238472DD4(qword_27DF0A630, type metadata accessor for BankConnectOfflineLabPrivacyConsentView, &protocol conformance descriptor for BankConnectOfflineLabPrivacyConsentView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D280);
  }

  return result;
}

uint64_t sub_238472DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238472E1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for BankConnectReviewAccountConnectionFlowView(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BCB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BC90();
  objc_allocWithZone(type metadata accessor for BankConnectReviewAccountConnectionFlowViewController(0));
  sub_23875EFB0();
  (*(v13 + 16))(&v11[v9[7]], v15, v12);
  *&v11[v9[8]] = a2;
  v16 = &v11[v9[9]];
  *v16 = a4;
  *(v16 + 1) = a5;
  v17 = a2;

  v18 = sub_23875D080();
  (*(v13 + 8))(v15, v12);
  return v18;
}

uint64_t type metadata accessor for BankConnectReviewAccountConnectionFlowViewController(uint64_t a1)
{
  result = qword_27DF0A658;
  if (!qword_27DF0A658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id BankConnectReviewAccountConnectionFlowViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectReviewAccountConnectionFlowViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectReviewAccountConnectionFlowViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_238473454()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

id sub_238473588(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_238473618(uint64_t a1)
{
  sub_238473714(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_238473714(319, &qword_27DF0A6E8, MEMORY[0x277CC6F70], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_238473778(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238473714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_238473778(uint64_t a1)
{
  if (!qword_27DF0A6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D390, &unk_238763350);
    v1 = sub_23875E340();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0A6F0);
    }
  }
}

uint64_t sub_2384737F8(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAccountPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *(a1 + *(v2 + 20));
  swift_getKeyPath(byte_238765C88);
  sub_2384756BC(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_238476DF4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for BankConnectAccountPickerView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09548, &unk_238765CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A718, &qword_238765C48);
  sub_23843A3E8(&qword_27DF0A728, &qword_27DF09548, &unk_238765CC0, MEMORY[0x277D83980]);
  sub_2384757A0(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23843A3E8(&qword_27DF0A710, &qword_27DF0A718, &qword_238765C48, MEMORY[0x277CE14C0]);
  sub_23875E370();
}

uint64_t sub_238473AC0(uint64_t a1)
{
  v2 = sub_23875BCB0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_238758650();
}

uint64_t sub_238473B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v136 = a2;
  v112 = a1;
  v133 = a3;
  v110 = sub_23875C880();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v105 = &v96 - v5;
  v108 = sub_23875E360();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09510, &qword_2387637D0);
  v131 = *(v7 - 8);
  v132 = v7;
  MEMORY[0x28223BE20](v7);
  v103 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = &v96 - v10;
  v128 = sub_23875BCB0();
  v125 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v97 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A730, &unk_238765CD0);
  MEMORY[0x28223BE20](v119);
  v127 = &v96 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v134 = &v96 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v96 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09528, &qword_238765CE0);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v129 = &v96 - v22;
  v23 = sub_23875C950();
  v117 = *(v23 - 8);
  v118 = v23;
  MEMORY[0x28223BE20](v23);
  v116 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_238758680();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v101 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  v115 = type metadata accessor for BankConnectAccountPickerView(0);
  v31 = *(v115 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v115);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A738, &qword_238765CE8);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v96 - v33;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A740, &qword_238765CF0);
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v135 = &v96 - v36;
  sub_23875ED50();
  v122 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384756BC(v136, &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v26 + 16);
  v38 = v112;
  v99 = v26 + 16;
  v98 = v37;
  v37(v30, v112, v25);
  v39 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v40 = *(v26 + 80);
  v41 = swift_allocObject();
  sub_238476DF4(&v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v39, type metadata accessor for BankConnectAccountPickerView);
  v42 = *(v26 + 32);
  v100 = v25;
  v43 = v42(v41 + ((v32 + v40 + v39) & ~v40), v30, v25);
  MEMORY[0x28223BE20](v43);
  v44 = v136;
  *(&v96 - 2) = v38;
  *(&v96 - 1) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A748, &qword_238765CF8);
  sub_2384758BC();
  v45 = v111;
  sub_23875E200();
  v46 = v116;
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0A770, &qword_27DF0A738, &qword_238765CE8, MEMORY[0x277CDF028]);
  sub_2384757A0(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v47 = v114;
  v48 = v118;
  sub_23875DB30();
  (*(v117 + 8))(v46, v48);
  (*(v113 + 8))(v45, v47);
  v49 = v120;
  sub_238758640();
  v50 = v125;
  v51 = *(v125 + 56);
  v52 = 1;
  v53 = v128;
  v51(v49, 0, 1, v128);
  v54 = *(v44 + *(v115 + 20));
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = v101;
    v57 = v100;
    v98(v101, v54 + ((v40 + 32) & ~v40) + *(v26 + 72) * (v55 - 1), v100);
    v58 = v134;
    sub_238758640();
    (*(v26 + 8))(v56, v57);
    v52 = 0;
  }

  else
  {
    v58 = v134;
  }

  v51(v58, v52, 1, v53);
  v59 = *(v119 + 48);
  v60 = v127;
  sub_23843981C(v49, v127, &unk_27DF0B520, &qword_2387681F0);
  sub_23843981C(v58, v60 + v59, &unk_27DF0B520, &qword_2387681F0);
  v61 = *(v50 + 48);
  v62 = v61(v60, 1, v53);
  v63 = v121;
  if (v62 == 1)
  {
    sub_238439884(v58, &unk_27DF0B520, &qword_2387681F0);
    sub_238439884(v49, &unk_27DF0B520, &qword_2387681F0);
    if (v61(v60 + v59, 1, v53) == 1)
    {
      sub_238439884(v60, &unk_27DF0B520, &qword_2387681F0);
      v64 = 1;
      v65 = v132;
LABEL_18:
      v80 = v129;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  sub_23843981C(v60, v121, &unk_27DF0B520, &qword_2387681F0);
  if (v61(v60 + v59, 1, v53) == 1)
  {
    sub_238439884(v134, &unk_27DF0B520, &qword_2387681F0);
    sub_238439884(v49, &unk_27DF0B520, &qword_2387681F0);
    (*(v50 + 8))(v63, v53);
LABEL_11:
    sub_238439884(v60, &qword_27DF0A730, &unk_238765CD0);
    v65 = v132;
    goto LABEL_12;
  }

  v81 = v60 + v59;
  v82 = v97;
  (*(v50 + 32))(v97, v81, v53);
  sub_2384757A0(&qword_27DF0A788, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v83 = sub_23875E9E0();
  v84 = *(v50 + 8);
  v84(v82, v53);
  sub_238439884(v134, &unk_27DF0B520, &qword_2387681F0);
  sub_238439884(v49, &unk_27DF0B520, &qword_2387681F0);
  v84(v63, v53);
  sub_238439884(v60, &unk_27DF0B520, &qword_2387681F0);
  v65 = v132;
  if (v83)
  {
    v64 = 1;
    goto LABEL_18;
  }

LABEL_12:
  v66 = v104;
  sub_23875E350();
  v67 = v105;
  sub_2384D5138(v105);
  v68 = v109;
  v69 = v106;
  v70 = v110;
  (*(v109 + 104))(v106, *MEMORY[0x277CDF9D8], v110);
  v71 = sub_23875C870();
  v72 = *(v68 + 8);
  v72(v69, v70);
  v72(v67, v70);
  if (v71)
  {
    v73 = 0x4028000000000000;
  }

  else
  {
    v73 = 0x4030000000000000;
  }

  v74 = sub_23875D780();
  v75 = v103;
  (*(v107 + 32))(v103, v66, v108);
  v76 = &v75[*(v65 + 36)];
  *v76 = v74;
  *(v76 + 1) = 0;
  *(v76 + 2) = v73;
  *(v76 + 3) = 0;
  *(v76 + 4) = 0;
  v76[40] = 0;
  v77 = v75;
  v78 = v102;
  sub_2384396E4(v77, v102, &qword_27DF09510, &qword_2387637D0);
  v79 = v78;
  v80 = v129;
  sub_2384396E4(v79, v129, &qword_27DF09510, &qword_2387637D0);
  v64 = 0;
LABEL_19:
  (*(v131 + 56))(v80, v64, 1, v65);
  v86 = v123;
  v85 = v124;
  v87 = v80;
  v88 = *(v124 + 16);
  v89 = v135;
  v90 = v126;
  v88(v123, v135, v126);
  v91 = v130;
  sub_23843981C(v87, v130, &qword_27DF09528, &qword_238765CE0);
  v92 = v133;
  v88(v133, v86, v90);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A780, &qword_238765D08);
  sub_23843981C(v91, &v92[*(v93 + 48)], &qword_27DF09528, &qword_238765CE0);
  sub_238439884(v87, &qword_27DF09528, &qword_238765CE0);
  v94 = *(v85 + 8);
  v94(v89, v90);
  sub_238439884(v91, &qword_27DF09528, &qword_238765CE0);
  v94(v86, v90);
}

uint64_t sub_238474ADC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758530();
  v6 = sub_23875A9F0();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  type metadata accessor for BankConnectAccountPickerView(0);
  sub_23843981C(v5, v2, &qword_27DF0D390, &unk_238763350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A6D0, &qword_238765BB8);
  sub_23875E2F0();
  sub_238439884(v5, &qword_27DF0D390, &unk_238763350);
}

uint64_t sub_238474CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v41 = a2;
  v48 = a3;
  v3 = sub_23875A9F0();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A790, &qword_238765D10);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = sub_238758680();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v50 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for BankConnectAccountPickerItemView(0);
  MEMORY[0x28223BE20](v45);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A748, &qword_238765CF8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - v21;
  sub_23875ED50();
  v42 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = v17;
  v47 = v16;
  (*(v17 + 16))(v50, v40, v16);
  sub_238758530();
  v22 = v49;
  (*(v49 + 56))(v15, 0, 1, v3);
  type metadata accessor for BankConnectAccountPickerView(0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A6D0, &qword_238765BB8);
  MEMORY[0x23EE62DC0](v23);
  v24 = *(v5 + 48);
  sub_23843981C(v15, v7, &qword_27DF0D390, &unk_238763350);
  sub_23843981C(v12, &v7[v24], &qword_27DF0D390, &unk_238763350);
  v25 = *(v22 + 48);
  if (v25(v7, 1, v3) != 1)
  {
    v30 = v39;
    sub_23843981C(v7, v39, &qword_27DF0D390, &unk_238763350);
    if (v25(&v7[v24], 1, v3) != 1)
    {
      v31 = v49;
      v32 = v38;
      (*(v49 + 32))(v38, &v7[v24], v3);
      sub_2384757A0(&qword_27DF0A798, MEMORY[0x277CC8058], MEMORY[0x277CC8070]);
      v29 = sub_23875E9E0();
      v33 = *(v31 + 8);
      v33(v32, v3);
      sub_238439884(v12, &qword_27DF0D390, &unk_238763350);
      sub_238439884(v15, &qword_27DF0D390, &unk_238763350);
      v33(v39, v3);
      sub_238439884(v7, &qword_27DF0D390, &unk_238763350);
      v28 = v46;
      v27 = v47;
      goto LABEL_10;
    }

    sub_238439884(v12, &qword_27DF0D390, &unk_238763350);
    sub_238439884(v15, &qword_27DF0D390, &unk_238763350);
    (*(v49 + 8))(v30, v3);
    v28 = v46;
    v27 = v47;
    goto LABEL_8;
  }

  sub_238439884(v12, &qword_27DF0D390, &unk_238763350);
  sub_238439884(v15, &qword_27DF0D390, &unk_238763350);
  v26 = v25(&v7[v24], 1, v3);
  v28 = v46;
  v27 = v47;
  if (v26 != 1)
  {
LABEL_8:
    sub_238439884(v7, &qword_27DF0A790, &qword_238765D10);
    v29 = 0;
    goto LABEL_10;
  }

  sub_238439884(v7, &qword_27DF0D390, &unk_238763350);
  v29 = 1;
LABEL_10:
  *v20 = swift_getKeyPath("\b9{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v34 = v45;
  (*(v28 + 32))(&v20[*(v45 + 20)], v50, v27);
  v20[*(v34 + 24)] = v29 & 1;
  v35 = v43;
  sub_238476DF4(v20, v43, type metadata accessor for BankConnectAccountPickerItemView);
  *(v35 + *(v44 + 36)) = 0;
  sub_2384396E4(v35, v48, &qword_27DF0A748, &qword_238765CF8);
}

uint64_t sub_238475364()
{
  v1 = type metadata accessor for ContinuousGroupBoxStyle(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A6F8, &qword_238765C38);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A700, &qword_238765C40);
  sub_2384755B0();
  sub_23875E470();
  *v3 = swift_getKeyPath(byte_238765C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *(v3 + *(v1 + 20)) = 0x403A000000000000;
  sub_23843A3E8(&qword_27DF0A720, &qword_27DF0A6F8, &qword_238765C38, MEMORY[0x277CDF118]);
  sub_2384757A0(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle, &protocol conformance descriptor for ContinuousGroupBoxStyle);
  sub_23875DC00();
  sub_238475660(v3);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2384755B0()
{
  result = qword_27DF0A708;
  if (!qword_27DF0A708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A700, &qword_238765C40);
    sub_23843A3E8(&qword_27DF0A710, &qword_27DF0A718, &qword_238765C48, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A708);
  }

  return result;
}

uint64_t sub_238475660(uint64_t a1)
{
  v2 = type metadata accessor for ContinuousGroupBoxStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384756BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAccountPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238475720@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for BankConnectAccountPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238473B88(a1, v6, a2);
}

uint64_t sub_2384757A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2384757E8()
{
  type metadata accessor for BankConnectAccountPickerView(0);
  sub_238758680();

  return sub_238474ADC();
}

unint64_t sub_2384758BC()
{
  result = qword_27DF0A750;
  if (!qword_27DF0A750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A748, &qword_238765CF8);
    sub_2384757A0(&qword_27DF0A758, type metadata accessor for BankConnectAccountPickerItemView, &unk_238765D74);
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A750);
  }

  return result;
}

uint64_t sub_2384759C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7B0, &qword_238765DC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  *v12 = sub_23875CE60();
  *(v12 + 1) = 0x4020000000000000;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7B8, &qword_238765DD0);
  sub_238475BEC(v1, &v12[*(v13 + 44)]);
  sub_2384D5138(v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF9D8], v3);
  v14 = sub_23875C870();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  if (v14)
  {
    v16 = 0x4028000000000000;
  }

  else
  {
    v16 = 0x4030000000000000;
  }

  v17 = sub_23875D780();
  sub_2384396E4(v12, a1, &qword_27DF0A7B0, &qword_238765DC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7C0, &qword_238765DD8);
  v19 = a1 + *(result + 36);
  *v19 = v17;
  *(v19 + 8) = 0x4028000000000000;
  *(v19 + 16) = v16;
  *(v19 + 24) = 0x4028000000000000;
  *(v19 + 32) = v16;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_238475BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7C8, &qword_238765DE0);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v28 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7D0, &qword_238765DE8);
  MEMORY[0x28223BE20](v29);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  MEMORY[0x28223BE20](v9);
  v33 = &v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7D8, &qword_238765DF0);
  MEMORY[0x28223BE20](v11 - 8);
  v31 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  sub_23875ED50();
  v30 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_23875D030();
  *(v15 + 1) = 0x4008000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7E0, &qword_238765DF8);
  sub_23847602C(a1, &v15[*(v16 + 44)]);
  v17 = sub_23875E0D0();
  v18 = sub_23875DFC0();
  KeyPath = swift_getKeyPath(byte_238765E00);
  v37 = v17;
  v38 = KeyPath;
  v39 = v18;
  sub_23875D870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09678, &unk_2387639F0);
  sub_238448F8C();
  sub_23875DAF0();

  if (*(a1 + *(type metadata accessor for BankConnectAccountPickerItemView(0) + 24)))
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  (*(v32 + 32))(v8, v4, v34);
  *&v8[*(v29 + 36)] = v20;
  v21 = v33;
  sub_2384396E4(v8, v33, &qword_27DF0A7D0, &qword_238765DE8);
  v22 = v31;
  sub_23843981C(v15, v31, &qword_27DF0A7D8, &qword_238765DF0);
  v23 = v35;
  sub_2383FF8B0(v21, v35);
  v24 = v36;
  sub_23843981C(v22, v36, &qword_27DF0A7D8, &qword_238765DF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7E8, &qword_238765E30);
  v26 = v24 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_2383FF8B0(v23, v24 + *(v25 + 64));
  sub_2383FF920(v21);
  sub_238439884(v15, &qword_27DF0A7D8, &qword_238765DF0);
  sub_2383FF920(v23);
  sub_238439884(v22, &qword_27DF0A7D8, &qword_238765DF0);
}

uint64_t sub_23847602C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_23875BD20();
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x28223BE20](v3);
  v80 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238757AD0();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238758B60();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7F0, &qword_238765E38);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v75 - v12;
  v14 = sub_238758090();
  v84 = *(v14 - 8);
  v85 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v83 = &v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7F8, &qword_238765E40);
  MEMORY[0x28223BE20](v19);
  v87 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  sub_23875ED50();
  v86 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v23 = sub_23875CE40();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A800, &qword_238765E48);
  sub_238476900(a1, &v23[*(v24 + 44)]);
  v25 = sub_23875D980();
  KeyPath = swift_getKeyPath("h8{E");
  v27 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A808, &qword_238765E80) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = swift_getKeyPath("88{E");
  v29 = &v23[*(v19 + 36)];
  *v29 = v28;
  *(v29 + 1) = 1;
  v29[16] = 0;
  type metadata accessor for BankConnectAccountPickerItemView(0);
  sub_2387585E0();
  v30 = sub_238759660();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v13, 1, v30) == 1)
  {
    sub_238439884(v13, &qword_27DF0A7F0, &qword_238765E38);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  else
  {
    sub_238759650();
    (*(v31 + 8))(v13, v30);
    sub_238758B50();
    (*(v76 + 8))(v10, v77);
    (*(v84 + 32))(v83, v16, v85);
    sub_238758590();
    v37 = v78;
    v36 = v79;
    v38 = (*(v78 + 88))(v7, v79);
    if (v38 != *MEMORY[0x277CC6B50] && v38 != *MEMORY[0x277CC6B58])
    {
      (*(v37 + 8))(v7, v36);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2387632F0;
    v40 = v80;
    sub_23875BCC0();
    v41 = sub_238758080();
    v43 = v42;
    v44 = (*(v81 + 8))(v40, v82);
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = sub_238448C58(v44, v45, v46);
    *(v39 + 32) = v41;
    *(v39 + 40) = v43;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v47 = qword_2814F1B90;
    v48 = sub_23875EA50();

    v49 = sub_23875EA50();
    v50 = sub_23875EA50();
    v51 = [v47 localizedStringForKey:v48 value:v49 table:v50];

    sub_23875EA80();
    v52 = sub_23875EAA0();
    v54 = v53;

    v89 = v52;
    v90 = v54;
    sub_2384397A8(v55, v56, v57);
    v58 = sub_23875DAA0();
    v60 = v59;
    LOBYTE(v54) = v61;
    LODWORD(v89) = sub_23875D440();
    v62 = sub_23875DA20();
    v64 = v63;
    v66 = v65;
    sub_2384397FC(v58, v60, v54 & 1);

    sub_23875D7F0();
    v32 = sub_23875DA60();
    v33 = v67;
    v69 = v68;
    v35 = v70;

    sub_2384397FC(v62, v64, v66 & 1);

    (*(v84 + 8))(v83, v85);
    v34 = v69 & 1;
    sub_23843980C(v32, v33, v69 & 1);
  }

  v71 = v87;
  sub_23843981C(v23, v87, &qword_27DF0A7F8, &qword_238765E40);
  v72 = v88;
  sub_23843981C(v71, v88, &qword_27DF0A7F8, &qword_238765E40);
  v73 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A810, &qword_238765EB8) + 48));
  sub_238476F5C(v32, v33, v34, v35);
  sub_238476FA0(v32, v33, v34, v35);
  *v73 = v32;
  v73[1] = v33;
  v73[2] = v34;
  v73[3] = v35;
  sub_238439884(v23, &qword_27DF0A7F8, &qword_238765E40);
  sub_238476FA0(v32, v33, v34, v35);
  sub_238439884(v71, &qword_27DF0A7F8, &qword_238765E40);
}

uint64_t sub_238476900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_238757FC0();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A818, &qword_238765EC8);
  MEMORY[0x28223BE20](v5);
  v69 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v54 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  sub_23875ED50();
  v68 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v63 = *(type metadata accessor for BankConnectAccountPickerItemView(0) + 20);
  v72 = sub_2387585B0();
  v73 = v15;
  v64 = sub_2384397A8(v72, v15, v16);
  v17 = sub_23875DAA0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v5 + 36);
  v56 = a1;
  v25 = &v14[v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0);
  v61 = v5;
  v62 = v26;
  v27 = *(v26 + 28);
  v28 = v14;
  v29 = *MEMORY[0x277CE0B28];
  v30 = sub_23875DA00();
  v31 = *(v30 - 8);
  v57 = *(v31 + 104);
  v58 = v31 + 104;
  v57(&v25[v27], v29, v30);
  *v25 = swift_getKeyPath(byte_238765ED8);
  *v28 = v17;
  *(v28 + 8) = v19;
  *(v28 + 16) = v21 & 1;
  *(v28 + 24) = v23;
  v55 = v28;
  sub_23875CF00();
  v32 = sub_23875DA90();
  v34 = v33;
  v59 = v35;
  v60 = v36;
  v37 = v65;
  sub_2387585C0();
  v38 = sub_238757FB0();
  v40 = v39;
  (*(v66 + 8))(v37, v67);
  v72 = v38;
  v73 = v40;
  v41 = sub_23875DAA0();
  v43 = v42;
  LOBYTE(v40) = v44;
  v46 = v45;
  v47 = &v11[*(v61 + 36)];
  v57(&v47[*(v62 + 28)], *MEMORY[0x277CE0B20], v30);
  *v47 = swift_getKeyPath(byte_238765ED8);
  *v11 = v41;
  *(v11 + 1) = v43;
  v11[16] = v40 & 1;
  *(v11 + 3) = v46;
  v48 = v70;
  sub_23843981C(v28, v70, &qword_27DF0A818, &qword_238765EC8);
  v49 = v69;
  sub_23843981C(v11, v69, &qword_27DF0A818, &qword_238765EC8);
  v50 = v71;
  sub_23843981C(v48, v71, &qword_27DF0A818, &qword_238765EC8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A820, &qword_238765F08);
  v52 = v50 + *(v51 + 48);
  *v52 = v32;
  *(v52 + 8) = v34;
  LOBYTE(v46) = v59 & 1;
  *(v52 + 16) = v59 & 1;
  *(v52 + 24) = v60;
  sub_23843981C(v49, v50 + *(v51 + 64), &qword_27DF0A818, &qword_238765EC8);
  sub_23843980C(v32, v34, v46);

  sub_238439884(v11, &qword_27DF0A818, &qword_238765EC8);
  sub_238439884(v55, &qword_27DF0A818, &qword_238765EC8);
  sub_238439884(v49, &qword_27DF0A818, &qword_238765EC8);
  sub_2384397FC(v32, v34, v46);

  sub_238439884(v48, &qword_27DF0A818, &qword_238765EC8);
}

uint64_t sub_238476DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_238476E84(uint64_t a1)
{
  sub_238473714(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_238758680();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_238476F5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23843980C(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_238476FA0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2384397FC(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_238476FE4()
{
  result = qword_27DF0A828;
  if (!qword_27DF0A828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A7C0, &qword_238765DD8);
    sub_23843A3E8(&qword_27DF0A830, &qword_27DF0A7B0, &qword_238765DC8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A828);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2384770BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_238477104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23847717C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_23875CDB0();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v21 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v21 - v5;
  v7 = *v1;
  v32 = v1[1];
  v33 = v7;
  v31 = *(v1 + 40);
  v27 = *(v1 + 4);
  v30 = v27;
  v24 = v31;
  v8 = swift_allocObject();
  v9 = v1[1];
  v8[1] = *v1;
  v8[2] = v9;
  *(v8 + 41) = *(v1 + 25);
  sub_238477AFC(&v33, &v28);
  sub_23843981C(&v32, &v28, &qword_27DF0A118, &unk_2387655C0);
  sub_23843981C(&v30, &v28, &qword_27DF0A838, &unk_238765FF8);
  sub_23875E200();
  v29 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v10 = swift_allocObject();
  v11 = v1[1];
  v10[1] = *v1;
  v10[2] = v11;
  *(v10 + 41) = *(v1 + 25);
  sub_238477AFC(&v33, &v28);
  sub_23843981C(&v32, &v28, &qword_27DF0A118, &unk_2387655C0);
  sub_23843981C(&v30, &v28, &qword_27DF0A838, &unk_238765FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F88, &qword_238764EF0);
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  v12 = v26;
  sub_23843A3E8(&qword_27DF09F98, &qword_27DF09F88, &qword_238764EF0, MEMORY[0x277CDD978]);
  v13 = v25;
  sub_23875DED0();

  (*(v4 + 8))(v6, v13);
  if (v24 == 1)
  {
    v14 = v27;
  }

  else
  {

    sub_23875EFF0();
    v15 = sub_23875D730();
    sub_23875C110();

    v16 = v21;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(&v30, &qword_27DF0A838, &unk_238765FF8);
    (*(v22 + 8))(v16, v23);
    v14 = v28;
  }

  KeyPath = swift_getKeyPath("H7{E");
  v18 = swift_allocObject();
  *(v18 + 16) = v14 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A840, &qword_238766038);
  v20 = (v12 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = sub_238477BAC;
  v20[2] = v18;
  return result;
}

uint64_t sub_238477640(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  v3[1] = *(a1 + 16);
  v5 = *(&v4 + 1);
  sub_23843981C(&v5, v3, &qword_27DF0A848, &unk_238766070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  v3[0] = v4;
  sub_23875E1C0();
  sub_238439884(&v4, &qword_27DF0A118, &unk_2387655C0);
}

uint64_t sub_238477774@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_238477918(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_238462EB0(v2, v3, v4);
  sub_23875C790();
}

uint64_t sub_238477A04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[1];
  *a2 = *a1;
  *(a2 + 8) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FB0, &qword_238766040);
  sub_23875E1A0();
  *(a2 + 16) = v6;
  *(a2 + 32) = swift_getKeyPath(byte_238766048);
  *(a2 + 72) = 0;
}

uint64_t objectdestroyTm_2()
{

  sub_2384348B8(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_238477BBC()
{
  result = qword_27DF0A850;
  if (!qword_27DF0A850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A840, &qword_238766038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09F88, &qword_238764EF0);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_27DF09F98, &qword_27DF09F88, &qword_238764EF0, MEMORY[0x277CDD978]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A850);
  }

  return result;
}

id sub_238477D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v132 = a3;
  v133 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B070, &unk_238766290);
  MEMORY[0x28223BE20](v4 - 8);
  v107 = &v104 - v5;
  v109 = sub_238759FF0();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v104 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v104 - v8;
  v9 = sub_23875A010();
  v127 = *(v9 - 8);
  v128 = v9;
  MEMORY[0x28223BE20](v9);
  v129 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A920, &qword_238766268);
  MEMORY[0x28223BE20](v11 - 8);
  v121 = &v104 - v12;
  v13 = sub_238758F50();
  v130 = *(v13 - 8);
  v131 = v13;
  MEMORY[0x28223BE20](v13);
  v120 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2387587A0();
  v122 = *(v15 - 8);
  v123 = v15;
  MEMORY[0x28223BE20](v15);
  v125 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_238758AD0();
  MEMORY[0x28223BE20](v17 - 8);
  v118 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v19 - 8);
  v116 = &v104 - v20;
  v115 = sub_23875BC40();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v22 - 8);
  v110 = &v104 - v23;
  v124 = sub_238758090();
  v111 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v112 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v104 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A928, &qword_238766270);
  MEMORY[0x28223BE20](v28 - 8);
  v119 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v117 = &v104 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v104 - v33;
  v35 = sub_2387594B0();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_238758E70();
  sub_2387594A0();
  (*(v36 + 8))(v38, v35);
  v40 = sub_23875EA50();

  [v39 setIdentifier_];

  v126 = a1;
  sub_238758E50();
  if (!v41)
  {
    sub_23843981C(v133, v34, &qword_27DF0A928, &qword_238766270);
    v43 = v127;
    v42 = v128;
    if ((*(v127 + 48))(v34, 1, v128) == 1)
    {
      sub_238439884(v34, &qword_27DF0A928, &qword_238766270);
      v44 = 0;
      goto LABEL_6;
    }

    sub_238759E80();
    (*(v43 + 8))(v34, v42);
  }

  v44 = sub_23875EA50();

LABEL_6:
  [v39 setPaymentHash_];

  v45 = v126;
  sub_238758EA0();
  sub_238758060();
  v46 = v111;
  v47 = *(v111 + 8);
  v48 = v124;
  v47(v27, v124);
  v49 = sub_23875F1E0();
  [v39 setAmount_];

  sub_238758EA0();
  sub_238758040();
  v50 = v27;
  v51 = v45;
  v52 = v48;
  v106 = v47;
  v47(v50, v48);
  v53 = sub_23875EA50();

  [v39 setCurrencyCode_];

  v54 = v110;
  sub_238758EE0();
  if ((*(v46 + 48))(v54, 1, v48) == 1)
  {
    sub_238439884(v54, &unk_27DF0B080, &unk_2387662A0);
  }

  else
  {
    (*(v46 + 32))(v112, v54, v48);
    v55 = [objc_allocWithZone(MEMORY[0x277D38148]) init];
    sub_238758060();
    v56 = sub_23875F1E0();
    sub_238758040();
    v57 = sub_23875EA50();

    v58 = PKCurrencyAmountMake();

    [v55 setDestinationCurrencyAmount_];
    v59 = sub_238758F00();
    if ((v61 & 0x100000000) == 0)
    {
      v62 = HIDWORD(v59);
      v63 = HIWORD(v59);
      v64 = v60 >> 16;
      v110 = HIDWORD(v60);
      v65 = HIWORD(v60);
      v111 = v61 >> 16;
      v66 = v59;
      v67 = v61;
      v68 = v60;
      v69 = objc_allocWithZone(MEMORY[0x277CCA980]);
      v134 = v66;
      v135 = v62;
      v52 = v124;
      v136 = v63;
      v137 = v68;
      v138 = v64;
      v139 = v110;
      v140 = v65;
      v141 = v67;
      v51 = v126;
      v142 = v111;
      v70 = [v69 initWithDecimal_];
      [v55 setExchangeRate_];
    }

    [v39 setForeignExchangeInformation_];

    v106(v112, v52);
  }

  v71 = v113;
  sub_238758E80();
  v72 = sub_23875BB40();
  v73 = v114;
  v74 = *(v114 + 8);
  v75 = v115;
  v74(v71, v115);
  [v39 setTransactionDate_];

  v76 = v116;
  sub_238758E40();
  v77 = (*(v73 + 48))(v76, 1, v75);
  v78 = v130;
  v79 = v131;
  v80 = v125;
  if (v77 == 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = sub_23875BB40();
    v74(v76, v75);
  }

  [v39 setTransactionStatusChangedDate_];

  [v39 setTransactionSource_];
  sub_238758F30();
  v82 = sub_23875F170();
  [v39 setTransactionStatus_];
  sub_238758E90();
  v83 = MEMORY[0x23EE63C40](v80);
  [v39 setTransactionType_];
  sub_238758EF0();
  v84 = sub_23875EA50();

  [v39 setMerchantProvidedDescription_];

  sub_238449184(0, &qword_27DF0A958, 0x277D37F50);
  v85 = v120;
  (*(v78 + 16))(v120, v51, v79);
  v86 = v133;
  v87 = v117;
  sub_23843981C(v133, v117, &qword_27DF0A928, &qword_238766270);
  v88 = v121;
  sub_23843981C(v132, v121, &qword_27DF0A920, &qword_238766268);
  v89 = sub_238478C68(v85, v87, v88);
  [v39 setMerchant_];

  v90 = v119;
  sub_23843981C(v86, v119, &qword_27DF0A928, &qword_238766270);
  v92 = v127;
  v91 = v128;
  if ((*(v127 + 48))(v90, 1, v128) == 1)
  {
    sub_238439884(v90, &qword_27DF0A928, &qword_238766270);
    v93 = v130;
    v94 = v131;
  }

  else
  {
    (*(v92 + 32))(v129, v90, v91);
    v95 = v107;
    sub_23875A000();
    v96 = v108;
    v97 = v109;
    if ((*(v108 + 48))(v95, 1, v109) == 1)
    {
      sub_238439884(v95, &unk_27DF0B070, &unk_238766290);
    }

    else
    {
      v98 = v105;
      (*(v96 + 32))(v105, v95, v97);
      sub_238449184(0, &qword_27DF0A960, 0x277CE41F8);
      (*(v96 + 16))(v104, v98, v97);
      v99 = sub_23875EF70();
      [v39 setLocation_];

      v100 = v98;
      v80 = v125;
      (*(v96 + 8))(v100, v97);
    }

    v93 = v130;
    v94 = v131;
    v101 = sub_238759F50();
    if (v101 != 2)
    {
      [v39 setCoarseLocation_];
    }

    (*(v92 + 8))(v129, v91);
  }

  sub_238758E90();
  sub_238758770();
  (*(v122 + 8))(v80, v123);
  v102 = sub_23875EA50();

  [v39 setLocalizedTypeDescription_];

  sub_238439884(v132, &qword_27DF0A920, &qword_238766268);
  sub_238439884(v133, &qword_27DF0A928, &qword_238766270);
  (*(v93 + 8))(v51, v94);
  return v39;
}

id sub_238478C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = &v113 - v7;
  v8 = sub_23875A010();
  v9 = *(v8 - 8);
  v128 = v8;
  v129 = v9;
  MEMORY[0x28223BE20](v8);
  v123 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A968, &unk_2387662B0);
  MEMORY[0x28223BE20](v11 - 8);
  v127 = &v113 - v12;
  v13 = sub_23875B3A0();
  v121 = *(v13 - 8);
  v122 = v13;
  MEMORY[0x28223BE20](v13);
  v116 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v117 = &v113 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A970, &unk_23876E8B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v113 - v18;
  v20 = sub_238757F40();
  v118 = *(v20 - 8);
  v119 = v20;
  MEMORY[0x28223BE20](v20);
  v114 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v115 = &v113 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A928, &qword_238766270);
  MEMORY[0x28223BE20](v24 - 8);
  v120 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v132 = &v113 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A920, &qword_238766268);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v113 - v32;
  MEMORY[0x28223BE20](v34);
  v133 = &v113 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A978, &unk_2387662C0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v113 - v37;
  v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_238758EF0();
  v40 = sub_23875EA50();

  [v39 setName_];

  v131 = a3;
  [v39 setFallbackcategory_];
  v130 = v39;

  v126 = a1;
  sub_238758ED0();
  v41 = sub_238759230();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v38, 1, v41) == 1)
  {
    sub_238439884(v38, &qword_27DF0A978, &unk_2387662C0);
    v43 = 0;
  }

  else
  {
    v44 = sub_238759220();
    (*(v42 + 8))(v38, v41);
    v43 = v44;
  }

  [v130 setIndustryCode_];
  v45 = v133;
  sub_23843981C(v131, v133, &qword_27DF0A920, &qword_238766268);
  v125 = a2;
  sub_23843981C(a2, v132, &qword_27DF0A928, &qword_238766270);
  v46 = sub_238757BB0();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v45, 1, v46) == 1 && (*(v129 + 48))(v132, 1, v128) == 1)
  {
    v49 = v126;
    sub_238758EF0();
    v50 = sub_23875EA50();

    v51 = PKMerchantFormattedDisplayName();

    v52 = v130;
    [v130 setRawName_];

    sub_238758EF0();
    v53 = sub_23875EA50();

    [v52 setRawCANL_];

    v54 = 1;
    v55 = &selRef_setUseRawMerchantData_;
    v56 = v125;
    goto LABEL_63;
  }

  sub_23843981C(v133, v33, &qword_27DF0A920, &qword_238766268);
  if (v48(v33, 1, v46) == 1)
  {
    sub_238439884(v33, &qword_27DF0A920, &qword_238766268);
    (*(v118 + 56))(v19, 1, 1, v119);
LABEL_10:
    sub_238439884(v19, &qword_27DF0A970, &unk_23876E8B0);
    v59 = v129;
    v52 = v130;
    goto LABEL_12;
  }

  sub_238757BA0();
  (*(v47 + 8))(v33, v46);
  v57 = v118;
  v58 = v119;
  if ((*(v118 + 48))(v19, 1, v119) == 1)
  {
    goto LABEL_10;
  }

  v60 = v115;
  (*(v57 + 32))(v115, v19, v58);
  sub_238449184(0, &qword_27DF0A988, 0x277D37F48);
  v61 = v57;
  v62 = v114;
  (*(v57 + 16))(v114, v60, v58);
  v63 = sub_238479BEC(v62);
  v52 = v130;
  [v130 setMapsMerchant_];

  (*(v61 + 8))(v60, v58);
  v59 = v129;
LABEL_12:
  v64 = v122;
  v65 = v127;
  sub_23843981C(v133, v30, &qword_27DF0A920, &qword_238766268);
  v66 = v48(v30, 1, v46);
  v67 = v128;
  if (v66 == 1)
  {
    sub_238439884(v30, &qword_27DF0A920, &qword_238766268);
    (*(v121 + 56))(v65, 1, 1, v64);
    v56 = v125;
    v49 = v126;
    v68 = v123;
    v69 = v124;
  }

  else
  {
    sub_238757B90();
    v65 = v127;
    (*(v47 + 8))(v30, v46);
    v70 = v121;
    v71 = (*(v121 + 48))(v65, 1, v64);
    v56 = v125;
    v49 = v126;
    v68 = v123;
    v69 = v124;
    if (v71 != 1)
    {
      v72 = v67;
      v73 = v126;
      v74 = v125;
      v75 = v117;
      (*(v70 + 32))(v117, v65, v64);
      sub_238449184(0, &qword_27DF0A980, 0x277D37F40);
      v76 = v116;
      (*(v70 + 16))(v116, v75, v64);
      v77 = v70;
      v78 = sub_23847A224(v76);
      [v52 setMapsBrand_];

      v79 = v75;
      v56 = v74;
      v49 = v73;
      v67 = v72;
      v69 = v124;
      v59 = v129;
      (*(v77 + 8))(v79, v64);
      goto LABEL_17;
    }
  }

  sub_238439884(v65, &qword_27DF0A968, &unk_2387662B0);
LABEL_17:
  v80 = v120;
  sub_23843981C(v132, v120, &qword_27DF0A928, &qword_238766270);
  if ((*(v59 + 48))(v80, 1, v67) == 1)
  {
    sub_238439884(v80, &qword_27DF0A928, &qword_238766270);
  }

  else
  {
    (*(v59 + 32))(v68, v80, v67);
    sub_238759F20();
    if (v81)
    {
      v82 = sub_23875EA50();
    }

    else
    {
      v82 = 0;
    }

    [v52 setRawName_];

    sub_238759F40();
    if (v83)
    {
      v84 = sub_23875EA50();
    }

    else
    {
      v84 = 0;
    }

    [v52 setIndustryCategory_];

    sub_238759F70();
    if (v85)
    {
      v86 = sub_23875EA50();
    }

    else
    {
      v86 = 0;
    }

    [v52 setMerchantIdentifier_];

    sub_238759F00();
    if (v87)
    {
      v88 = sub_23875EA50();
    }

    else
    {
      v88 = 0;
    }

    [v52 setRawCANL_];

    sub_238759EA0();
    if (v89)
    {
      v90 = sub_23875EA50();
    }

    else
    {
      v90 = 0;
    }

    [v52 setCity_];

    sub_238759F10();
    if (v91)
    {
      v92 = sub_23875EA50();
    }

    else
    {
      v92 = 0;
    }

    [v52 setRawCity_];

    sub_238759ED0();
    if (v93)
    {
      v94 = sub_23875EA50();
    }

    else
    {
      v94 = 0;
    }

    [v52 setState_];

    sub_238759F60();
    if (v95)
    {
      v96 = sub_23875EA50();
    }

    else
    {
      v96 = 0;
    }

    [v52 setRawState_];

    sub_238759E70();
    if (v97)
    {
      v98 = sub_23875EA50();
    }

    else
    {
      v98 = 0;
    }

    [v52 setZip_];

    sub_238759F80();
    if (v99)
    {
      v100 = sub_23875EA50();
    }

    else
    {
      v100 = 0;
    }

    [v52 setRawCountry_];

    v101 = sub_238759FD0();
    if ((v101 & 0x10000) == 0)
    {
      [v52 setCleanConfidenceLevel_];
    }

    v102 = sub_238759EE0();
    if ((v103 & 1) == 0)
    {
      [v52 setAdamIdentifier_];
    }

    sub_238759FE0();
    v104 = sub_23875B940();
    v105 = *(v104 - 8);
    v106 = 0;
    if ((*(v105 + 48))(v69, 1, v104) != 1)
    {
      v106 = sub_23875B860();
      (*(v105 + 8))(v69, v104);
    }

    [v52 setOriginURL_];

    sub_238759FB0();
    if (v107)
    {
      v108 = sub_23875EA50();
    }

    else
    {
      v108 = 0;
    }

    [v52 setWebMerchantIdentifier_];

    sub_238759F30();
    if (v109)
    {
      v110 = sub_23875EA50();
    }

    else
    {
      v110 = 0;
    }

    [v52 setWebMerchantName_];

    (*(v59 + 8))(v68, v67);
  }

  v54 = 0;
  v55 = &selRef_setMapsDataIsFromLocalMatch_;
LABEL_63:
  [v52 *v55];
  sub_238439884(v131, &qword_27DF0A920, &qword_238766268);
  sub_238439884(v56, &qword_27DF0A928, &qword_238766270);
  v111 = sub_238758F50();
  (*(*(v111 - 8) + 8))(v49, v111);
  sub_238439884(v133, &qword_27DF0A920, &qword_238766268);
  sub_238439884(v132, &qword_27DF0A928, &qword_238766270);
  return v52;
}

id sub_238479BEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v15 setIdentifier_];
  v16 = sub_238757EE0();
  if ((v16 & 0x100000000) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  [v15 setResultProviderIdentifier_];
  sub_238757F20();
  if (v18)
  {
    v19 = sub_23875EA50();
  }

  else
  {
    v19 = 0;
  }

  [v15 setName_];

  sub_238757E30();
  if (v20)
  {
    v21 = sub_23875EA50();
  }

  else
  {
    v21 = 0;
  }

  [v15 setPhoneNumber_];

  sub_238757EF0();
  v22 = sub_23875B940();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = 0;
  if (v24(v14, 1, v22) != 1)
  {
    v25 = sub_23875B860();
    (*(v23 + 8))(v14, v22);
  }

  [v15 setURL_];

  sub_238757E40();
  if (v24(v11, 1, v22) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_23875B860();
    (*(v23 + 8))(v11, v22);
  }

  [v15 setHeroImageURL_];

  sub_238757ED0();
  if (v27)
  {
    v28 = sub_23875EA50();
  }

  else
  {
    v28 = 0;
  }

  [v15 setHeroImageAttributionName_];

  sub_238757E50();
  v29 = sub_238468A30(v6);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  [v15 setCategory_];
  sub_238757EC0();
  if (v32)
  {
    v33 = sub_23875EA50();
  }

  else
  {
    v33 = 0;
  }

  [v15 setDetailedCategory_];

  v34 = sub_238757EB0();
  if (v35 >> 60 == 15)
  {
    v36 = 0;
  }

  else
  {
    v37 = v34;
    v38 = v35;
    v36 = sub_23875B980();
    sub_23844C940(v37, v38);
  }

  v40 = v54;
  v39 = v55;
  [v15 setStylingInfoData_];

  sub_238757E70();
  if (v24(v40, 1, v22) == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_23875B860();
    (*(v23 + 8))(v40, v22);
  }

  [v15 setBusinessChatURL_];

  sub_238757E90();
  v42 = sub_23875BC40();
  v43 = *(v42 - 8);
  v44 = 0;
  if ((*(v43 + 48))(v39, 1, v42) != 1)
  {
    v44 = sub_23875BB40();
    (*(v43 + 8))(v39, v42);
  }

  [v15 setLastProcessedDate_];

  v45 = sub_238757E80();
  if ((v46 & 1) == 0)
  {
    v47 = *&v45;
    v48 = sub_238757EA0();
    if ((v49 & 1) == 0)
    {
      v50 = *&v48;
      [v15 setLocationLatitude_];
      [v15 setLocationLongitude_];
    }
  }

  v51 = sub_238757E60();
  [v15 setPostalAddress_];

  v52 = sub_238757F40();
  (*(*(v52 - 8) + 8))(a1, v52);
  return v15;
}

id sub_23847A224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v18 setIdentifier_];
  v19 = sub_23875B340();
  if ((v19 & 0x100000000) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  [v18 setResultProviderIdentifier_];
  sub_23875B380();
  if (v21)
  {
    v22 = sub_23875EA50();
  }

  else
  {
    v22 = 0;
  }

  [v18 setName_];

  sub_23875B2C0();
  if (v23)
  {
    v24 = sub_23875EA50();
  }

  else
  {
    v24 = 0;
  }

  [v18 setPhoneNumber_];

  sub_23875B350();
  v25 = sub_23875B940();
  v53 = *(v25 - 8);
  v26 = *(v53 + 48);
  v27 = 0;
  if (v26(v17, 1, v25) != 1)
  {
    v27 = sub_23875B860();
    (*(v53 + 8))(v17, v25);
  }

  [v18 setURL_];

  sub_23875B2D0();
  if (v26(v14, 1, v25) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_23875B860();
    (*(v53 + 8))(v14, v25);
  }

  [v18 setHeroImageURL_];

  sub_23875B330();
  if (v29)
  {
    v30 = sub_23875EA50();
  }

  else
  {
    v30 = 0;
  }

  [v18 setHeroImageAttributionName_];

  sub_23875B2E0();
  v31 = sub_238468A30(v6);
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  [v18 setCategory_];
  sub_23875B320();
  if (v34)
  {
    v35 = sub_23875EA50();
  }

  else
  {
    v35 = 0;
  }

  [v18 setDetailedCategory_];

  v36 = sub_23875B310();
  if (v37 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    v39 = v36;
    v40 = v37;
    v38 = sub_23875B980();
    sub_23844C940(v39, v40);
  }

  v41 = v51;
  [v18 setStylingInfoData_];

  sub_23875B2F0();
  if (v26(v11, 1, v25) == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_23875B860();
    (*(v53 + 8))(v11, v25);
  }

  [v18 setBusinessChatURL_];

  sub_23875B300();
  v43 = sub_23875BC40();
  v44 = *(v43 - 8);
  v45 = 0;
  if ((*(v44 + 48))(v41, 1, v43) != 1)
  {
    v45 = sub_23875BB40();
    (*(v44 + 8))(v41, v43);
  }

  [v18 setLastProcessedDate_];

  v46 = v52;
  sub_23875B390();
  if (v26(v46, 1, v25) == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = sub_23875B860();
    (*(v53 + 8))(v46, v25);
  }

  [v18 setLogoURL_];

  v48 = sub_23875B3A0();
  (*(*(v48 - 8) + 8))(a1, v48);
  return v18;
}

id sub_23847A884()
{
  result = [objc_allocWithZone(MEMORY[0x277D37F58]) init];
  qword_27DF0A868 = result;
  return result;
}

uint64_t TransactionIconImage.init(transaction:style:context:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_238758F50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  sub_2387588A0();
  *(a4 + 16) = v12;
  (*(v9 + 16))(v11, a1, v8);
  v13 = qword_238766318[v12];
  type metadata accessor for TransactionIconImage.Loader(0);
  v14 = swift_allocObject();
  v14[2] = 0;
  sub_23875BEC0();
  (*(v9 + 8))(a1, v8);
  v14[3] = v13;
  v14[4] = v13;
  result = (*(v9 + 32))(v14 + OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_transaction, v11, v8);
  *(v14 + OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_context) = a3;
  *a4 = v14;
  *(a4 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for TransactionIconImage.Loader(uint64_t a1)
{
  result = qword_27DF0A8F8;
  if (!qword_27DF0A8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransactionIconImage.body.getter@<X0>(void *a1@<X8>)
{
  v77 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A880, &qword_238766080);
  MEMORY[0x28223BE20](v57);
  v61 = (&v57 - v2);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A888, &qword_238766088);
  MEMORY[0x28223BE20](v59);
  v60 = &v57 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A890, &qword_238766090);
  MEMORY[0x28223BE20](v76);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v57 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A898, &qword_238766098);
  MEMORY[0x28223BE20](v74);
  v75 = &v57 - v7;
  v63 = sub_23875E0E0();
  v8 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A128, &qword_2387660A0);
  MEMORY[0x28223BE20](v64);
  v12 = &v57 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A8A0, &qword_2387660A8);
  MEMORY[0x28223BE20](v65);
  v68 = &v57 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A8A8, &qword_2387660B0);
  MEMORY[0x28223BE20](v67);
  v66 = &v57 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A8B0, &qword_2387660B8);
  MEMORY[0x28223BE20](v73);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v69 = &v57 - v18;
  v19 = sub_23875C980();
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v23 = v1[1];
  v24 = *(v1 + 16);
  v70 = *(v1 + 16);
  v72 = v22;
  *&v80 = v22;
  *(&v80 + 1) = v23;
  v71 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A8B8, &qword_2387660C0);
  sub_23875E1B0();
  v25 = v79;
  swift_getKeyPath(byte_2387660C8);
  *&v80 = v25;
  sub_23847E390(&qword_27DF0A8C0, type metadata accessor for TransactionIconImage.Loader, &unk_238766240);
  sub_23875BE90();

  v26 = *(v25 + 16);
  v27 = v26;

  if (v26)
  {
    v28 = qword_238766348[v24];
    v29 = *(v19 + 20);
    v30 = *MEMORY[0x277CE0118];
    v31 = sub_23875CF50();
    (*(*(v31 - 8) + 104))(&v21[v29], v30, v31);
    *v21 = v28;
    *(v21 + 1) = v28;
    v32 = v27;
    sub_23875E0C0();
    v33 = v63;
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v63);
    v34 = sub_23875E150();

    (*(v8 + 8))(v10, v33);
    sub_23875E4A0();
    sub_23875C5C0();
    LOBYTE(v79) = 1;
    *&v78[6] = v80;
    *&v78[22] = v81;
    *&v78[38] = v82;
    v35 = &v12[*(v64 + 36)];
    sub_23846E86C(v21, v35);
    *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
    v36 = *&v78[16];
    *(v12 + 18) = *v78;
    *v12 = v34;
    *(v12 + 1) = 0;
    *(v12 + 8) = 1;
    *(v12 + 34) = v36;
    *(v12 + 50) = *&v78[32];
    *(v12 + 8) = *&v78[46];
    v37 = sub_23875E4A0();
    v39 = v38;
    v40 = v68;
    v41 = &v68[*(v65 + 36)];
    sub_23847B488(v21, v70, v41);
    v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20) + 36));
    *v42 = v37;
    v42[1] = v39;
    sub_2384396E4(v12, v40, &qword_27DF0A128, &qword_2387660A0);
    v43 = v66;
    sub_2384396E4(v40, v66, &qword_27DF0A8A0, &qword_2387660A8);
    *(v43 + *(v67 + 36)) = 257;
    sub_2384396E4(v43, v16, &qword_27DF0A8A8, &qword_2387660B0);
    v16[*(v73 + 36)] = 1;
    v44 = v69;
    sub_2384396E4(v16, v69, &qword_27DF0A8B0, &qword_2387660B8);
    sub_23843981C(v44, v75, &qword_27DF0A8B0, &qword_2387660B8);
    swift_storeEnumTagMultiPayload();
    sub_23847DFEC();
    sub_23847E1BC();
    sub_23875D1B0();

    sub_238439884(v44, &qword_27DF0A8B0, &qword_2387660B8);
    return sub_23846E8D0(v21);
  }

  else
  {
    v46 = sub_23875E020();
    KeyPath = swift_getKeyPath("x6{E");
    v48 = swift_allocObject();
    v49 = v71;
    *(v48 + 16) = v72;
    *(v48 + 24) = v49;
    *(v48 + 32) = v70;
    v50 = v61;
    v51 = v61 + *(v57 + 36);
    sub_23875C6E0();

    sub_23875ED60();
    *v51 = &unk_238766128;
    *(v51 + 1) = v48;
    *v50 = KeyPath;
    v50[1] = v46;
    sub_23875E4A0();
    sub_23875C5C0();
    v52 = v60;
    sub_2384396E4(v50, v60, &qword_27DF0A880, &qword_238766080);
    v53 = (v52 + *(v59 + 36));
    v54 = v81;
    *v53 = v80;
    v53[1] = v54;
    v53[2] = v82;
    v55 = v58;
    sub_2384396E4(v52, v58, &qword_27DF0A888, &qword_238766088);
    *(v55 + *(v76 + 36)) = 257;
    v56 = v62;
    sub_2384396E4(v55, v62, &qword_27DF0A890, &qword_238766090);
    sub_23843981C(v56, v75, &qword_27DF0A890, &qword_238766090);
    swift_storeEnumTagMultiPayload();
    sub_23847DFEC();
    sub_23847E1BC();
    sub_23875D1B0();
    return sub_238439884(v56, &qword_27DF0A890, &qword_238766090);
  }
}

uint64_t sub_23847B488@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = sub_23875DFD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22[-v11];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CE0EE0], v6);
    sub_23875E090();
  }

  else
  {
    sub_23875E070();
  }

  v13 = sub_23875E060();

  sub_23875C4C0();
  sub_23846E86C(a1, v12);
  v14 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36)];
  v15 = v23;
  *v14 = *&v22[8];
  *(v14 + 1) = v15;
  *(v14 + 4) = v24;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *&v12[*(v16 + 52)] = v13;
  *&v12[*(v16 + 56)] = 256;
  v17 = sub_23875E4A0();
  v19 = v18;
  v20 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36)];
  *v20 = v17;
  v20[1] = v19;
  sub_2384396E4(v12, a3, &qword_27DF0A438, &unk_2387662D0);
}

uint64_t sub_23847B770(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v2[7] = swift_task_alloc();
  v2[8] = sub_23875ED50();
  v2[9] = sub_23875ED40();
  v4 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23847B844, v4, v3);
}

uint64_t sub_23847B844()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A8B8, &qword_2387660C0);
  sub_23875E1B0();
  v4 = v0[4];
  v5 = sub_23875ED80();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);

  v6 = sub_23875ED40();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  sub_23847C784(0, 0, v1, &unk_2387662F0, v7);

  v9 = v0[1];

  return v9();
}

void *sub_23847B9A4()
{
  swift_getKeyPath(byte_2387660C8);
  sub_23847E390(&qword_27DF0A8C0, type metadata accessor for TransactionIconImage.Loader, &unk_238766240);
  sub_23875BE90();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_23847BA4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2387660C8);
  sub_23847E390(&qword_27DF0A8C0, type metadata accessor for TransactionIconImage.Loader, &unk_238766240);
  sub_23875BE90();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_23847BB04(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath(byte_2387660C8);
    MEMORY[0x28223BE20](KeyPath);
    sub_23847E390(&qword_27DF0A8C0, type metadata accessor for TransactionIconImage.Loader, &unk_238766240);
    sub_23875BE80();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_238449184(0, &qword_27DF0A940, 0x277D755B8);
  v5 = v4;
  v6 = a1;
  v7 = sub_23875F1B0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

id sub_23847BC94(uint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x277D38B80]) initWithCache:1 scale:sub_2387588A0()];
  qword_27DF0A870 = result;
  return result;
}

uint64_t sub_23847BCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A990, &qword_2387662F8);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v6 = swift_task_alloc();
  v4[12] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A998, &qword_238766300);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_23875ED50();
  v4[17] = sub_23875ED40();
  v8 = swift_task_alloc();
  v4[18] = v8;
  *v8 = v4;
  v8[1] = sub_23847BEB8;

  return sub_23847CE28(v6);
}

uint64_t sub_23847BEB8()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_23875ECE0();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_23847C5E4;
  }

  else
  {
    v5 = sub_23847C018;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23847C018()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_23875EDB0();
  (*(v2 + 8))(v1, v3);
  v4 = sub_23875ED40();
  v0[22] = v4;
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_23847C108;
  v6 = v0[13];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 6, v4, v7, v6);
}

uint64_t sub_23847C108()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_23847C24C, v3, v2);
}

uint64_t sub_23847C24C()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[7];
    v5 = sub_23875ED80();
    v6 = *(v5 - 8);
    (*(v6 + 56))(v3, 1, 1, v5);

    v7 = v1;
    v8 = sub_23875ED40();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v4;
    v9[5] = v7;
    sub_23843981C(v3, v2, &unk_27DF09920, &qword_238764D80);
    LODWORD(v2) = (*(v6 + 48))(v2, 1, v5);

    v11 = v0[8];
    if (v2 == 1)
    {
      sub_238439884(v0[8], &unk_27DF09920, &qword_238764D80);
    }

    else
    {
      sub_23875ED70();
      (*(v6 + 8))(v11, v5);
    }

    v14 = v9[2];
    swift_unknownObjectRetain();

    if (v14)
    {
      swift_getObjectType();
      v15 = sub_23875ECE0();
      v17 = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    sub_238439884(v0[9], &unk_27DF09920, &qword_238764D80);
    v18 = swift_allocObject();
    *(v18 + 16) = &unk_238766310;
    *(v18 + 24) = v9;
    if (v17 | v15)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v15;
      v0[5] = v17;
    }

    swift_task_create();

    v19 = sub_23875ED40();
    v0[22] = v19;
    v20 = swift_task_alloc();
    v0[23] = v20;
    *v20 = v0;
    v20[1] = sub_23847C108;
    v21 = v0[13];
    v22 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 6, v19, v22, v21);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_23847C5E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23847C67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23875ED50();
  v5[4] = sub_23875ED40();
  v7 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23847C714, v7, v6);
}

uint64_t sub_23847C714()
{
  v1 = *(v0 + 24);

  v2 = v1;
  sub_23847BB04(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23847C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23843981C(a3, v22 - v9, &unk_27DF09920, &qword_238764D80);
  v11 = sub_23875ED80();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_238439884(v10, &unk_27DF09920, &qword_238764D80);
  }

  else
  {
    sub_23875ED70();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23875ECE0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23875EB00() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_238439884(a3, &unk_27DF09920, &qword_238764D80);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238439884(a3, &unk_27DF09920, &qword_238764D80);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_23847CA30(uint64_t *a3@<X8>)
{
  v5 = sub_238757D00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v29 - v13;
  sub_23875A230();
  v15 = sub_23875A080();
  if (!v3)
  {
    v16 = v15;
    if (!v15)
    {
      v18 = MEMORY[0x277D84F90];
LABEL_21:
      *a3 = v18;
      return;
    }

    v29[1] = 0;
    v17 = sub_23875A0B0();
    v30 = a3;
    if (v17)
    {
      v29[0] = v17;
      sub_238757BC0();
      (*(v6 + 104))(v14, *MEMORY[0x277CC6BE8], v5);
      v18 = sub_2384980F8(0, 1, 1, MEMORY[0x277D84F90]);
      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_2384980F8((v19 > 1), v20 + 1, 1, v18);
      }

      v18[2] = v20 + 1;
      (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v14, v5);
      a3 = v30;
      v21 = sub_23875A1E0();
      if (!v21)
      {
LABEL_7:
        v22 = sub_23875A0D0();
        if (v22)
        {
LABEL_8:
          v23 = v22;
          sub_23875A020();
          (*(v6 + 104))(v8, *MEMORY[0x277CC6BF0], v5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_2384980F8(0, v18[2] + 1, 1, v18);
          }

          v25 = v18[2];
          v24 = v18[3];
          if (v25 >= v24 >> 1)
          {
            v18 = sub_2384980F8((v24 > 1), v25 + 1, 1, v18);
          }

          v18[2] = v25 + 1;
          (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, v8, v5);
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      v21 = sub_23875A1E0();
      if (!v21)
      {
        goto LABEL_7;
      }
    }

    v26 = v21;
    sub_23875A8B0();
    (*(v6 + 104))(v11, *MEMORY[0x277CC6BE0], v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_2384980F8(0, v18[2] + 1, 1, v18);
    }

    v28 = v18[2];
    v27 = v18[3];
    if (v28 >= v27 >> 1)
    {
      v18 = sub_2384980F8((v27 > 1), v28 + 1, 1, v18);
    }

    v18[2] = v28 + 1;
    (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v28, v11, v5);
    a3 = v30;
    v22 = sub_23875A0D0();
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_20:

    goto LABEL_21;
  }
}

uint64_t sub_23847CE28(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A918, &qword_238766260);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_238758F50();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_238757D00();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A920, &qword_238766268);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A928, &qword_238766270);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_23875BCB0();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = sub_23875ED50();
  v2[23] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v2[24] = v8;
  v2[25] = v7;

  return MEMORY[0x2822009F8](sub_23847D0F0, v8, v7);
}

uint64_t sub_23847D0F0()
{
  v1 = v0[4];
  v0[26] = OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_transaction;
  sub_238758F10();
  v0[27] = *(v1 + OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_context);
  v0[28] = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23847D1AC, v3, v2);
}

uint64_t sub_23847D1AC()
{
  v1 = v0[27];
  v3 = v0[20];
  v2 = v0[21];

  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A930, &qword_238766278);
  sub_23875F120();
  v0[29] = 0;
  v5 = v0[21];
  v6 = v0[19];

  v0[30] = v0[2];
  (*(v3 + 8))(v5, v6);
  v7 = v0[24];
  v8 = v0[25];

  return MEMORY[0x2822009F8](sub_23847D2D8, v7, v8);
}

uint64_t sub_23847D2D8()
{
  v1 = v0[30];
  v2 = v0[18];
  v3 = v0[16];

  v4 = sub_23875A010();
  v5 = *(v4 - 8);
  v38 = v4;
  v37 = *(v5 + 56);
  v37(v2, 1, 1);
  v6 = sub_238757BB0();
  v7 = *(v6 - 8);
  v47 = v6;
  v44 = *(v7 + 56);
  v44(v3, 1, 1);
  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = v0[13];
    v11 = *(v9 + 16);
    v10 = v9 + 16;
    v50 = v11;
    v12 = v0[30] + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v49 = *(v10 + 56);
    v48 = *MEMORY[0x277CC6BE8];
    v43 = *MEMORY[0x277CC6BE0];
    v13 = (v10 + 80);
    v36 = (v5 + 32);
    v14 = (v7 + 32);
    v40 = *MEMORY[0x277CC6BF0];
    do
    {
      v15 = v0[14];
      v16 = v0[12];
      v50(v15, v12, v16);
      v17 = (*(v10 + 72))(v15, v16);
      if (v17 == v48)
      {
        v18 = v0[16];
        v19 = v0[14];
        v20 = v0[12];
        sub_238439884(v18, &qword_27DF0A920, &qword_238766268);
        (*v13)(v19, v20);
        (*v14)(v18, v19, v47);
        (v44)(v18, 0, 1, v47);
      }

      else if (v17 == v43 || v17 != v40)
      {
        (*(v10 - 8))(v0[14], v0[12]);
      }

      else
      {
        v21 = v0[18];
        v22 = v0[14];
        v23 = v0[12];
        sub_238439884(v21, &qword_27DF0A928, &qword_238766270);
        (*v13)(v22, v23);
        (*v36)(v21, v22, v38);
        (v37)(v21, 0, 1, v38);
      }

      v12 += v49;
      --v8;
    }

    while (v8);
  }

  v24 = v0[26];
  v26 = v0[17];
  v25 = v0[18];
  v39 = v0[16];
  v41 = v0[15];
  v27 = v0[10];
  v28 = v0[11];
  v29 = v0[9];
  v30 = v0[7];
  v45 = v0[8];
  v46 = v0[6];
  v31 = v0[4];
  v42 = v0[5];
  sub_238449184(0, &qword_27DF0A938, 0x277D38140);
  (*(v27 + 16))(v28, v31 + v24, v29);
  sub_23843981C(v25, v26, &qword_27DF0A928, &qword_238766270);
  sub_23843981C(v39, v41, &qword_27DF0A920, &qword_238766268);
  v32 = sub_238477D44(v28, v26, v41);
  v33 = swift_task_alloc();
  v33[2] = v32;
  v33[3] = v31;
  v33[4] = v42;
  sub_238449184(0, &qword_27DF0A940, 0x277D755B8);
  (*(v30 + 104))(v45, *MEMORY[0x277D85778], v46);
  sub_23875EDD0();

  sub_238439884(v39, &qword_27DF0A920, &qword_238766268);
  sub_238439884(v25, &qword_27DF0A928, &qword_238766270);

  v34 = v0[1];

  return v34();
}

uint64_t sub_23847D80C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_23847D8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A948, &qword_238766280);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v20 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A950, &qword_238766288);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27DF08CB8 != -1)
  {
    swift_once();
  }

  v11 = qword_27DF0A870;
  if (qword_27DF0A870)
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 32);
    (*(v8 + 16))(v10, a1, v7);
    v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    (*(v8 + 32))(v15 + v14, v10, v7);
    aBlock[4] = sub_23847E634;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23847DD7C;
    aBlock[3] = &block_descriptor_2;
    v16 = _Block_copy(aBlock);

    v17 = [v11 iconForTransaction:v23 size:0 ignoreLogoURL:0 requestType:v16 iconHandler:{v12, v13}];
    _Block_release(v16);
    if (v17)
    {
      aBlock[0] = v17;
      v18 = v20;
      sub_23875ED90();
      (*(v21 + 8))(v18, v22);
    }
  }

  return result;
}

void sub_23847DC58(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A948, &qword_238766280);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  if (a2)
  {
    if (a1)
    {
      v11[1] = a1;
      v9 = v6;
      v10 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A950, &qword_238766288);
      sub_23875ED90();
      (*(v5 + 8))(v8, v9);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A950, &qword_238766288);
    sub_23875EDA0();
  }
}

void sub_23847DD7C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_23847DDF4()
{
  v1 = OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_transaction;
  v2 = sub_238758F50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader___observationRegistrar;
  v4 = sub_23875BED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_23847DEEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CAE0();
  *a1 = result;
  return result;
}

uint64_t sub_23847DF44()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_23847B770(v2, v3);
}

unint64_t sub_23847DFEC()
{
  result = qword_27DF0A8C8;
  if (!qword_27DF0A8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A8B0, &qword_2387660B8);
    v3 = sub_23847E078();
    sub_23844970C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8C8);
  }

  return result;
}

unint64_t sub_23847E078()
{
  result = qword_27DF0A8D0;
  if (!qword_27DF0A8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A8A8, &qword_2387660B0);
    sub_23847E104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8D0);
  }

  return result;
}

unint64_t sub_23847E104()
{
  result = qword_27DF0A8D8;
  if (!qword_27DF0A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A8A0, &qword_2387660A8);
    sub_238464A90();
    sub_23843A3E8(&qword_27DF0A4A0, &qword_27DF0A430, &unk_238768E20, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8D8);
  }

  return result;
}

unint64_t sub_23847E1BC()
{
  result = qword_27DF0A8E0;
  if (!qword_27DF0A8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A890, &qword_238766090);
    sub_23847E248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8E0);
  }

  return result;
}

unint64_t sub_23847E248()
{
  result = qword_27DF0A8E8;
  if (!qword_27DF0A8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A888, &qword_238766088);
    sub_23847E2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8E8);
  }

  return result;
}

unint64_t sub_23847E2D4()
{
  result = qword_27DF0A8F0;
  if (!qword_27DF0A8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A880, &qword_238766080);
    sub_2384497EC();
    sub_23847E390(&qword_27DF08DC8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8F0);
  }

  return result;
}

uint64_t sub_23847E390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23847E3F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23847E43C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23847E494(uint64_t a1)
{
  result = sub_238758F50();
  if (v2 <= 0x3F)
  {
    result = sub_23875BED0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23847E580()
{
  result = qword_27DF0A908;
  if (!qword_27DF0A908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A910, &qword_238766238);
    sub_23847DFEC();
    sub_23847E1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A908);
  }

  return result;
}

void sub_23847E634(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A950, &qword_238766288);

  sub_23847DC58(a1, a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23847E6D8(unint64_t result)
{
  if (result >= 9)
  {
    return -1;
  }

  return result;
}

uint64_t sub_23847E6E4(uint64_t result)
{
  if ((result - 1) >= 0x16)
  {
    return 0;
  }

  return result;
}

id sub_23847E6F4(uint64_t a1, uint64_t a2)
{
  v28[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A978, &unk_2387662C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A920, &qword_238766268);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  v15 = sub_238757E10();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23843981C(a2, v8, &qword_27DF0A920, &qword_238766268);
  v19 = sub_238757BB0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    sub_238439884(v8, &qword_27DF0A920, &qword_238766268);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  else
  {
    sub_238757B80();
    (*(v20 + 8))(v8, v19);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v18, v14, v15);
      (*(v16 + 16))(v11, v18, v15);
      (*(v16 + 56))(v11, 0, 1, v15);
      v25 = sub_238468A30(v11);
      v27 = v26;
      (*(v16 + 8))(v18, v15);
      if ((v27 & 1) == 0)
      {
        result = v25;
        if (v25)
        {
          return result;
        }
      }

      goto LABEL_5;
    }
  }

  sub_238439884(v14, &qword_27DF0A2C0, &qword_23876BCF0);
LABEL_5:
  sub_238758ED0();
  v21 = sub_238759230();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v5, 1, v21) == 1)
  {
    sub_238439884(v5, &qword_27DF0A978, &unk_2387662C0);
    return 0;
  }

  v23 = sub_238759220();
  (*(v22 + 8))(v5, v21);
  if (v23 < 1)
  {
    return 0;
  }

  if (qword_27DF08CB0 != -1)
  {
    swift_once();
  }

  return [qword_27DF0A868 categoryForIndustryCode_];
}

void sub_23847EB70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_23847EBA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_23847BCE0(a1, v4, v5, v6);
}

uint64_t sub_23847EC5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_23847C67C(a1, v4, v5, v7, v6);
}

uint64_t sub_23847ED1C()
{
  swift_getKeyPath(byte_2387665A0);
  swift_getKeyPath(byte_2387665C8);
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23847ED90@<X0>(uint64_t a1@<X8>)
{
  v13[0] = a1;
  v1 = sub_238759A00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  sub_238757AE0();
  v8 = MEMORY[0x277CC7BF0];
  sub_238484974(&qword_27DF0AA10, MEMORY[0x277CC7BF0], MEMORY[0x277CC7C00]);
  sub_23875F300();
  sub_238484974(&qword_27DF0AA18, v8, MEMORY[0x277CC7BF8]);
  v9 = sub_23875E9E0();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);
  if ((v9 & 1) == 0)
  {
    return sub_238757AE0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA20, &qword_238766608);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_238763320;
  sub_2387599B0();
  sub_2387599A0();
  sub_2387599F0();
  sub_238759990();
  sub_2387599C0();
  v13[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA28, &qword_238766610);
  sub_23843A3E8(&qword_27DF0AA30, &qword_27DF0AA28, &qword_238766610, MEMORY[0x277D83970]);
  return sub_23875F310();
}

uint64_t BankConnectPrivacyOnboardingViewModel.__allocating_init(institution:fpanID:isExistingConnection:flowManager:flowType:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v17 = a5[3];
  v16 = a5[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a5, v17);
  v19 = sub_23848428C(a1, a2, a3, v12, v18, a6, a7, a8, v8, v17, v16);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v19;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t BankConnectPrivacyOnboardingViewModel.init(institution:fpanID:isExistingConnection:flowManager:flowType:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v11 = a4;
  v16 = a5[3];
  v15 = a5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a5, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_2384840A4(a1, a2, a3, v11, v20, a6, v24, v25, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v22;
}

uint64_t sub_23847F278()
{
  v1 = type metadata accessor for BankConnectPrivacyOnboardingResult(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_isExistingConnection))
  {
    v4 = *(v0 + 56);
    v5 = type metadata accessor for BankConnectAuthorizationFlow(0);
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    v4(v3);
    return sub_238484A4C(v3, type metadata accessor for BankConnectPrivacyOnboardingResult);
  }

  else
  {
    v7 = swift_allocObject();
    swift_weakInit();

    sub_23847FD50(&unk_238766600, v7);
  }
}

uint64_t sub_23847F3D0(uint64_t a1)
{
  v1[25] = a1;
  v2 = sub_23875A820();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  type metadata accessor for BankConnectPrivacyOnboardingResult(0);
  v1[29] = swift_task_alloc();
  sub_23875ED50();
  v1[30] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v1[31] = v4;
  v1[32] = v3;

  return MEMORY[0x2822009F8](sub_23847F4F0, v4, v3);
}

uint64_t sub_23847F4F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[33] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[34] = v2;
    *v2 = v0;
    v2[1] = sub_23847F5F8;
    v3 = v0[29];

    return sub_238480290(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23847F5F8()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x2822009F8](sub_23847F718, v3, v2);
}

uint64_t sub_23847F718()
{
  v29 = v0;
  v1 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  v5 = MEMORY[0x277D38550];
  if (!*(v1 + 72))
  {
    v5 = MEMORY[0x277D38560];
  }

  v6 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v8 = sub_23867B330(v2);
  v10 = v9;
  (*(v3 + 8))(v2, v4);
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_238763300;
  v13 = *MEMORY[0x277D383D8];
  *(v12 + 32) = *MEMORY[0x277D383D8];
  *(v12 + 40) = sub_23875EA80();
  *(v12 + 48) = v14;
  v15 = *MEMORY[0x277D38390];
  *(v12 + 56) = *MEMORY[0x277D38390];
  *(v12 + 64) = 0x65756E69746E6F63;
  v16 = *MEMORY[0x277D384B8];
  *(v12 + 72) = 0xE800000000000000;
  *(v12 + 80) = v16;
  strcpy((v12 + 88), "consentPrompt");
  *(v12 + 102) = -4864;
  v17 = v13;
  v18 = v15;
  v19 = v16;
  v20 = sub_23854B138(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v20;
  sub_2385C33E4(v11, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v28);

  v22 = v0[33];
  v23 = v0[29];
  v24 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238484974(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v25 = sub_23875E910();

  [v24 subject:v6 sendEvent:v25];

  (*(v22 + 56))(v23);
  sub_238484A4C(v23, type metadata accessor for BankConnectPrivacyOnboardingResult);

  v26 = v0[1];

  return v26();
}

void sub_23847FABC()
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v6 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x277D384B8];
  *(inited + 56) = *MEMORY[0x277D384B8];
  strcpy((inited + 64), "consentPrompt");
  *(inited + 78) = -4864;
  v9 = v6;
  v10 = v8;
  *(inited + 80) = sub_23875EA50();
  sub_23875A7E0();
  v11 = sub_23867B330(v4);
  v13 = v12;
  (*(v2 + 8))(v4, v1);
  *(inited + 88) = v11;
  *(inited + 96) = v13;
  sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  v14 = MEMORY[0x277D38550];
  if (!*(v0 + 72))
  {
    v14 = MEMORY[0x277D38560];
  }

  v15 = *v14;
  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238484974(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v17 = sub_23875E910();

  [v16 subject:v15 sendEvent:v17];
}

double sub_23847FD50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15[-v8];
  swift_getKeyPath(byte_2387665A0, v7);
  swift_getKeyPath(byte_2387665C8);
  sub_23875C2D0();

  if ((v15[15] & 1) == 0)
  {
    v11 = sub_23875ED80();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_23875ED50();

    v12 = sub_23875ED40();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v3;
    v13[5] = a1;
    v13[6] = a2;
    sub_2386C3BA4(0, 0, v9, &unk_2387665F0, v13);
  }

  return result;
}

uint64_t sub_23847FEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_23875ED50();
  v6[5] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_23847FF7C, v8, v7);
}

uint64_t sub_23847FF7C()
{
  v1 = *(v0 + 24);
  swift_getKeyPath(byte_2387665A0);
  swift_getKeyPath(byte_2387665C8);
  *(v0 + 72) = 1;

  sub_23875C2E0();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2384800C0;

  return v4();
}

uint64_t sub_2384800C0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2384801E0, v3, v2);
}

uint64_t sub_2384801E0()
{

  swift_getKeyPath(byte_2387665A0);
  swift_getKeyPath(byte_2387665C8);
  *(v0 + 73) = 0;

  sub_23875C2E0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238480290(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23875A980();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_238757B60();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_23875A9A0();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_23875C1E0();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_23875ED50();
  v2[22] = sub_23875ED40();
  v9 = sub_23875ECE0();
  v2[23] = v9;
  v2[24] = v8;

  return MEMORY[0x2822009F8](sub_238480518, v9, v8);
}

uint64_t sub_238480518()
{
  v1 = v0[3];
  v2 = *(v1 + 5);
  v3 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution;
  v5 = *&v1[OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_fpanID];
  v6 = *&v1[OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_fpanID + 8];
  v10 = (*(v3 + 8) + **(v3 + 8));
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_23848067C;
  v8 = v0[21];

  return v10(v8, &v1[v4], v5, v6, v2, v3);
}

uint64_t sub_23848067C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_238480BBC;
  }

  else
  {
    v5 = sub_2384807B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2384807B8()
{
  v43 = v0;
  v1 = v0[21];
  v3 = v0[19];
  v2 = v0[20];

  sub_23875C120();
  sub_238484D78(v1, v2, type metadata accessor for BankConnectAuthorizationFlow);
  sub_238484D78(v1, v3, type metadata accessor for BankConnectAuthorizationFlow);
  v4 = sub_23875C1B0();
  v5 = sub_23875F000();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[16];
  v10 = v0[14];
  v41 = v0[13];
  if (v6)
  {
    v39 = v0[14];
    v40 = v0[16];
    v12 = v0[11];
    v11 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    v31 = v13;
    v32 = v0[7];
    v33 = v0[6];
    v34 = v0[5];
    v35 = v0[4];
    v37 = v5;
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v16 = 136315394;
    log = v4;
    sub_238724998(v11);
    sub_23875A900();
    v17 = *(v12 + 8);
    v17(v11, v13);
    v18 = sub_238757B40();
    v20 = v19;
    (*(v15 + 8))(v14, v32);
    sub_238484A4C(v7, type metadata accessor for BankConnectAuthorizationFlow);
    v21 = sub_2384615AC(v18, v20, &v42);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    sub_238724998(v11);
    sub_23875A990();
    v17(v11, v31);
    v22 = sub_23875A970();
    v24 = v23;
    (*(v34 + 8))(v33, v35);
    sub_238484A4C(v8, type metadata accessor for BankConnectAuthorizationFlow);
    v25 = sub_2384615AC(v22, v24, &v42);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2383F8000, log, v37, "Privacy onboarding step successfully initiated consent for institutionID: %s with consentID: %s.", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE64DF0](v38, -1, -1);
    MEMORY[0x23EE64DF0](v16, -1, -1);

    (*(v39 + 8))(v40, v41);
  }

  else
  {

    sub_238484A4C(v8, type metadata accessor for BankConnectAuthorizationFlow);
    sub_238484A4C(v7, type metadata accessor for BankConnectAuthorizationFlow);
    (*(v10 + 8))(v9, v41);
  }

  v26 = v0[17];
  v27 = v0[18];
  v28 = v0[2];
  sub_238484DE0(v0[21], v28, type metadata accessor for BankConnectAuthorizationFlow);
  (*(v27 + 56))(v28, 0, 1, v26);
  type metadata accessor for BankConnectPrivacyOnboardingResult(0);
  swift_storeEnumTagMultiPayload();

  v29 = v0[1];

  return v29();
}

uint64_t sub_238480BBC()
{
  v1 = v0[26];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v3, v4, "Privacy onboarding step failed to initialise authorization flow with error: %@", v6, 0xCu);
    sub_238439884(v7, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v10 = v0[26];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[13];
  v14 = v0[2];

  (*(v12 + 8))(v11, v13);
  *v14 = v10;
  type metadata accessor for BankConnectPrivacyOnboardingResult(0);
  swift_storeEnumTagMultiPayload();

  v15 = v0[1];

  return v15();
}

uint64_t BankConnectPrivacyOnboardingViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution;
  v2 = sub_238757B60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t BankConnectPrivacyOnboardingViewModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution;
  v2 = sub_238757B60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_238480F90@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t sub_238480FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23843981C(v2, &v14 - v9, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C880();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t BankConnectPrivacyOnboardingView.init(viewModel:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = swift_getKeyPath(byte_2387663B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x277CDFA10];
  v7 = sub_23875C880();
  result = (*(*(v7 - 8) + 104))(&a2[v5], v6, v7);
  v9 = &a2[*(v4 + 24)];
  *v9 = sub_238447830;
  *(v9 + 1) = a1;
  v9[16] = 0;
  return result;
}

uint64_t BankConnectPrivacyOnboardingView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A9A8, &qword_2387663F0);
  return sub_238481300(v2, a2 + *(v4 + 44));
}

uint64_t sub_238481300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = v4;
  v23 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA38, &qword_238766618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  sub_23875ED50();
  v20[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875D760();
  MEMORY[0x28223BE20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA40, &qword_238766620);
  sub_238484AB4();
  v10 = sub_23875C410();
  MEMORY[0x28223BE20](v10);
  sub_23875D020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA60, &qword_238766630);
  sub_23843A3E8(&qword_27DF0AA68, &qword_27DF0AA38, &qword_238766618, MEMORY[0x277CDD6E0]);
  sub_238484B74();
  v11 = v24;
  sub_23875DBA0();
  (*(v6 + 8))(v8, v5);
  v12 = sub_23875C910();
  v13 = sub_23875D7D0();
  v14 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAA8, &qword_238766650) + 36);
  *v14 = v12;
  *(v14 + 8) = v13;
  v15 = v23;
  sub_238484D78(a1, v23, type metadata accessor for BankConnectPrivacyOnboardingView);
  v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v17 = swift_allocObject();
  sub_238484DE0(v15, v17 + v16, type metadata accessor for BankConnectPrivacyOnboardingView);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAB0, &qword_238766658);
  v19 = (v11 + *(result + 36));
  *v19 = sub_238484E48;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t sub_2384816D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAF8, &qword_2387666C0);
  sub_2384817F8(a1, a2 + *(v4 + 44));
  v5 = sub_23875D790();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA40, &qword_238766620);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

void sub_2384817F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB00, &qword_2387666C8);
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x28223BE20](v3);
  v93 = (&v93 - v4);
  v94 = sub_23875C880();
  v106 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v102 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB08, &qword_2387666D0);
  MEMORY[0x28223BE20](v6 - 8);
  v109 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v111 = &v93 - v9;
  v10 = sub_238759A00();
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x28223BE20](v10);
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238757B60();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v110 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v17 = (v113 + *(v16 + 24));
  v18 = *v17;
  v19 = v17[1];
  v98 = v16;
  v99 = v18;
  v96 = v19;
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  v95 = sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel, &protocol conformance descriptor for BankConnectPrivacyOnboardingViewModel);
  v20 = sub_23875C490();
  (*(v13 + 16))(v15, v20 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution, v12);

  KeyPath = swift_getKeyPath(byte_2387666D8);
  LOBYTE(v177) = 0;
  v127[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v118 = *(&v128 + 1);
  v119 = v128;
  v21 = sub_238757B40();
  v115 = v22;
  v116 = v21;
  (*(v13 + 8))(v15, v12);
  v114 = v177;
  v117 = sub_23875D7A0();
  sub_23875C3D0();
  v103 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v112 = sub_23875D030();
  LOBYTE(v177) = 0;
  v30 = v113;
  sub_238482474(&v128);
  v171 = *&v129[48];
  v172[0] = *&v129[64];
  *(v172 + 9) = *&v129[73];
  v167 = v128;
  v168 = *v129;
  v169 = *&v129[16];
  v170 = *&v129[32];
  v173[0] = v128;
  v173[1] = *v129;
  v173[2] = *&v129[16];
  v173[3] = *&v129[32];
  v173[4] = *&v129[48];
  v174[0] = *&v129[64];
  *(v174 + 9) = *&v129[73];
  sub_23843981C(&v167, v127, &qword_27DF0AB10, &qword_238766710);
  sub_238439884(v173, &qword_27DF0AB10, &qword_238766710);
  *(&v161[3] + 7) = v170;
  *(&v161[4] + 7) = v171;
  *(&v161[5] + 7) = v172[0];
  v161[6] = *(v172 + 9);
  *(v161 + 7) = v167;
  *(&v161[1] + 7) = v168;
  *(&v161[2] + 7) = v169;
  v104 = v177;
  v105 = sub_23875D770();
  sub_23875C3D0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v162 = 0;
  sub_23875E4B0();
  v39 = 1;
  sub_23875C9C0();
  *&v163[55] = v180;
  *&v163[71] = v181;
  *&v163[87] = v182;
  *&v163[103] = v183;
  *&v163[7] = v177;
  *&v163[23] = v178;
  *&v163[39] = v179;
  sub_23875C490();
  v40 = v97;
  sub_23847ED90(v97);

  v99 = sub_238721A7C();
  (*(v100 + 8))(v40, v101);
  LODWORD(v101) = sub_23875D770();
  sub_23875C3D0();
  v100 = v41;
  v96 = v43;
  v97 = v42;
  v95 = v44;
  v45 = v102;
  sub_238480FD0(v102);
  sub_238484974(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v46 = v94;
  LOBYTE(v18) = sub_23875E990();
  (*(v106 + 8))(v45, v46);
  v47 = v108;
  if (v18)
  {
    v48 = sub_23875D020();
    v49 = v93;
    *v93 = v48;
    *(v49 + 8) = 0;
    *(v49 + 16) = 1;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAC8, &qword_238766668);
    sub_238483030(v30, (v49 + *(v50 + 44)));
    v51 = sub_23875D770();
    v106 = v32;
    sub_23875C3D0();
    v102 = v34;
    v53 = v52;
    v98 = v36;
    v55 = v54;
    v56 = v38;
    v58 = v57;
    v113 = v29;
    v59 = v27;
    v61 = v60;
    v62 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA90, &qword_238766640) + 36);
    *v62 = v51;
    *(v62 + 8) = v53;
    *(v62 + 16) = v55;
    *(v62 + 24) = v58;
    *(v62 + 32) = v61;
    v38 = v56;
    *(v62 + 40) = 0;
    v63 = sub_23875D7A0();
    sub_23875C3D0();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA78, &qword_238766638) + 36);
    *v72 = v63;
    *(v72 + 8) = v65;
    *(v72 + 16) = v67;
    v27 = v59;
    v29 = v113;
    v32 = v106;
    *(v72 + 24) = v69;
    *(v72 + 32) = v71;
    v34 = v102;
    v36 = v98;
    *(v72 + 40) = 0;
    v73 = sub_23875D790();
    sub_23875C3D0();
    v74 = v49 + *(v47 + 36);
    *v74 = v73;
    *(v74 + 8) = v75;
    *(v74 + 16) = v76;
    *(v74 + 24) = v77;
    *(v74 + 32) = v78;
    *(v74 + 40) = 0;
    sub_238485078(v49, v111);
    v39 = 0;
  }

  v79 = v111;
  (*(v107 + 56))(v111, v39, 1, v47);
  v80 = v109;
  sub_23843981C(v79, v109, &qword_27DF0AB08, &qword_2387666D0);
  *&v121 = v116;
  *(&v121 + 1) = v115;
  LOBYTE(v122) = 3;
  *(&v122 + 1) = v165[0];
  DWORD1(v122) = *(v165 + 3);
  *(&v122 + 1) = 0x3FB999999999999ALL;
  *&v123 = KeyPath;
  BYTE8(v123) = v114;
  HIDWORD(v123) = *&v164[3];
  *(&v123 + 9) = *v164;
  *&v124 = v119;
  *(&v124 + 1) = v118;
  LOBYTE(v125) = v117;
  DWORD1(v125) = *&v166[3];
  *(&v125 + 1) = *v166;
  v81 = v103;
  *(&v125 + 1) = v103;
  *&v126[0] = v25;
  *(&v126[0] + 1) = v27;
  *&v126[1] = v29;
  BYTE8(v126[1]) = 0;
  v82 = v122;
  *a2 = v121;
  *(a2 + 16) = v82;
  v83 = v123;
  v84 = v124;
  v85 = v125;
  v86 = v126[0];
  *(a2 + 89) = *(v126 + 9);
  *(a2 + 64) = v85;
  *(a2 + 80) = v86;
  *(a2 + 32) = v83;
  *(a2 + 48) = v84;
  v127[0] = v112;
  v127[1] = 0;
  v87 = v104;
  LOBYTE(v127[2]) = v104;
  *(&v127[6] + 1) = v161[2];
  *(&v127[4] + 1) = v161[1];
  *(&v127[2] + 1) = v161[0];
  *(&v127[14] + 1) = v161[6];
  *(&v127[12] + 1) = v161[5];
  *(&v127[10] + 1) = v161[4];
  *(&v127[8] + 1) = v161[3];
  HIDWORD(v127[16]) = *&v176[3];
  *(&v127[16] + 1) = *v176;
  v88 = v105;
  LOBYTE(v127[17]) = v105;
  HIDWORD(v127[17]) = *&v175[3];
  *(&v127[17] + 1) = *v175;
  v127[18] = v32;
  v127[19] = v34;
  v127[20] = v36;
  v127[21] = v38;
  LOBYTE(v127[22]) = 0;
  *(&v127[32] + 1) = *&v163[80];
  *(&v127[34] + 1) = *&v163[96];
  *(&v127[28] + 1) = *&v163[48];
  *(&v127[26] + 1) = *&v163[32];
  *(&v127[24] + 1) = *&v163[16];
  *(&v127[22] + 1) = *v163;
  v127[36] = *&v163[111];
  *(&v127[30] + 1) = *&v163[64];
  memcpy((a2 + 112), v127, 0x128uLL);
  *(a2 + 408) = v99;
  *(a2 + 416) = v101;
  v90 = v96;
  v89 = v97;
  *(a2 + 424) = v100;
  *(a2 + 432) = v89;
  v91 = v95;
  *(a2 + 440) = v90;
  *(a2 + 448) = v91;
  *(a2 + 456) = 0;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB18, &unk_238766718);
  sub_23843981C(v80, a2 + *(v92 + 80), &qword_27DF0AB08, &qword_2387666D0);
  sub_23843981C(&v121, &v128, &qword_27DF095D8, &qword_238763980);
  sub_23843981C(v127, &v128, &qword_27DF0AB20, &qword_238766728);

  sub_238439884(v79, &qword_27DF0AB08, &qword_2387666D0);
  sub_238439884(v80, &qword_27DF0AB08, &qword_2387666D0);

  *&v129[49] = v161[3];
  *&v129[65] = v161[4];
  *&v129[81] = v161[5];
  *&v129[97] = v161[6];
  *&v129[1] = v161[0];
  *&v129[17] = v161[1];
  v128 = v112;
  v129[0] = v87;
  *&v129[33] = v161[2];
  *&v130[3] = *&v176[3];
  *v130 = *v176;
  v131 = v88;
  *&v132[3] = *&v175[3];
  *v132 = *v175;
  v133 = v32;
  v134 = v34;
  v135 = v36;
  v136 = v38;
  v137 = 0;
  v143 = *&v163[80];
  *v144 = *&v163[96];
  v142 = *&v163[64];
  *&v144[15] = *&v163[111];
  v138 = *v163;
  v139 = *&v163[16];
  v140 = *&v163[32];
  v141 = *&v163[48];
  sub_238439884(&v128, &qword_27DF0AB20, &qword_238766728);
  v145[0] = v116;
  v145[1] = v115;
  v146 = 3;
  *v147 = v165[0];
  *&v147[3] = *(v165 + 3);
  v148 = 0x3FB999999999999ALL;
  v149 = KeyPath;
  v150 = v114;
  *v151 = *v164;
  *&v151[3] = *&v164[3];
  v152 = v119;
  v153 = v118;
  v154 = v117;
  *&v155[3] = *&v166[3];
  *v155 = *v166;
  v156 = v81;
  v157 = v25;
  v158 = v27;
  v159 = v29;
  v160 = 0;
  sub_238439884(v145, &qword_27DF095D8, &qword_238763980);
}

uint64_t sub_238482474@<X0>(uint64_t a2@<X8>)
{
  v66 = sub_238757B60();
  v3 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v70 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v63 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v64 = "ON_PICKER_CANCEL_BUTTON_TITLE";
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  v79 = v11;
  v80 = v13;
  sub_2384397A8(v14, v15, v16);
  v17 = sub_23875DAA0();
  v68 = v18;
  v69 = v17;
  v65 = v19;
  v67 = v20;
  v62 = "PRIVACY_ONBOARDING_TITLE";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2387632F0;
  type metadata accessor for BankConnectPrivacyOnboardingView(0);
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel, &protocol conformance descriptor for BankConnectPrivacyOnboardingViewModel);
  v22 = sub_23875C490();
  v23 = v66;
  (*(v3 + 16))(v5, v22 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution, v66);

  v24 = sub_238757B50();
  v26 = v25;
  (*(v3 + 8))(v5, v23);
  v79 = v24;
  v80 = v26;
  *&v75 = 32;
  *(&v75 + 1) = 0xE100000000000000;
  v71[0] = 41154;
  v71[1] = 0xA200000000000000;
  v27 = MEMORY[0x277D837D0];
  v28 = sub_23875F260();
  v30 = v29;

  *(v21 + 56) = v27;
  *(v21 + 64) = sub_238448C58(v31, v32, v33);
  *(v21 + 32) = v28;
  *(v21 + 40) = v30;
  v34 = sub_23875EA50();
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = [v63 localizedStringForKey:v34 value:v35 table:v36];

  sub_23875EA80();
  v38 = sub_23875EAA0();
  v40 = v39;

  v79 = v38;
  v80 = v40;
  v41 = sub_23875DAA0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LOBYTE(v27) = sub_23875D7A0();
  sub_23875C3D0();
  LOBYTE(v38) = v65 & 1;
  v72 = v65 & 1;
  v48 = *v74;
  *(&v76 + 1) = *v74;
  DWORD1(v76) = *&v74[3];
  DWORD1(v77) = *&v73[3];
  v49 = *v73;
  *(&v77 + 1) = *v73;
  *(a2 + 16) = v65 & 1;
  *&v75 = v41;
  *(&v75 + 1) = v43;
  LOBYTE(v76) = v45 & 1;
  *(&v76 + 1) = v47;
  LOBYTE(v77) = v27;
  *(&v77 + 1) = v50;
  *&v78[0] = v51;
  *(&v78[0] + 1) = v52;
  *&v78[1] = v53;
  BYTE8(v78[1]) = 0;
  v55 = v68;
  v54 = v69;
  *a2 = v69;
  *(a2 + 8) = v55;
  *(a2 + 24) = v67;
  v56 = v77;
  v57 = v78[0];
  *(a2 + 89) = *(v78 + 9);
  *(a2 + 64) = v56;
  *(a2 + 80) = v57;
  v58 = v76;
  *(a2 + 32) = v75;
  *(a2 + 48) = v58;
  v79 = v41;
  v80 = v43;
  v81 = v45 & 1;
  *&v82[3] = *&v74[3];
  *v82 = v48;
  v83 = v47;
  v84 = v27;
  *&v85[3] = *&v73[3];
  *v85 = v49;
  v86 = v50;
  v87 = v51;
  v88 = v52;
  v89 = v53;
  v90 = 0;
  v59 = v54;
  v60 = v55;
  sub_23843980C(v54, v55, v38);

  sub_23843981C(&v75, v71, &qword_27DF0AB28, &qword_238771F60);
  sub_238439884(&v79, &qword_27DF0AB28, &qword_238771F60);
  sub_2384397FC(v59, v60, v38);
}

void sub_238482A50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_23875CFB0();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA78, &qword_238766638);
  MEMORY[0x28223BE20](v40);
  v6 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAB8, &qword_238766660);
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = &v38 - v8;
  v9 = sub_23875C880();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA60, &qword_238766630);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238480FD0(v12);
  type metadata accessor for BankConnectPrivacyOnboardingView(0);
  sub_238484974(&qword_27DF0AAC0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v16 = sub_23875E990();
  (*(v10 + 8))(v12, v9);
  v17 = 1;
  v18 = v44;
  if ((v16 & 1) == 0)
  {
    *v6 = sub_23875D020();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAC8, &qword_238766668);
    sub_238483030(a1, &v6[*(v19 + 44)]);
    v20 = sub_23875D770();
    sub_23875C3D0();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA90, &qword_238766640) + 36)];
    *v29 = v20;
    *(v29 + 1) = v22;
    *(v29 + 2) = v24;
    *(v29 + 3) = v26;
    *(v29 + 4) = v28;
    v29[40] = 0;
    v30 = sub_23875D7A0();
    sub_23875C3D0();
    v31 = v41;
    v32 = &v6[*(v40 + 36)];
    *v32 = v30;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    sub_23875CFA0();
    sub_238484C34();
    v37 = v39;
    sub_23875DD10();
    (*(v42 + 8))(v31, v43);
    sub_238439884(v6, &qword_27DF0AA78, &qword_238766638);
    (*(v7 + 32))(v15, v37, v18);
    v17 = 0;
  }

  (*(v7 + 56))(v15, v17, 1, v18);
  sub_2383FFEFC(v15, v45);
}

double sub_238482F10(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectPrivacyOnboardingView(0);
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel, &protocol conformance descriptor for BankConnectPrivacyOnboardingViewModel);
  sub_23875C490();
  sub_23847FABC();

  return result;
}

void sub_238483030(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD0, &qword_238766670);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v59 = &v56 - v4;
  v5 = sub_23875D910();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v60 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23875EA80();
  v16 = v15;

  v75 = v14;
  v76 = v16;
  sub_2384397A8(v17, v18, v19);
  v20 = sub_23875DAA0();
  v22 = v21;
  LOBYTE(v11) = v23;
  sub_23875D930();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0A10], v5);
  sub_23875D950();

  (*(v6 + 8))(v8, v5);
  v24 = sub_23875DA60();
  v26 = v25;
  v28 = v27;

  sub_2384397FC(v20, v22, v11 & 1);

  LODWORD(v75) = sub_23875D440();
  v65 = sub_23875DA20();
  v56 = v29;
  LOBYTE(v20) = v30;
  v66 = v31;
  sub_2384397FC(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath(byte_238766678);
  v64 = sub_23875D7A0();
  v33 = sub_23875C3D0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v20 & 1;
  LOBYTE(v75) = v20 & 1;
  LOBYTE(v70) = 0;
  MEMORY[0x28223BE20](v33);
  *(&v56 - 2) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  sub_23843A3E8(&qword_27DF0AAE0, &qword_27DF0AAD8, &qword_23876B8C0, &unk_23877E960);
  v43 = v59;
  sub_23875D1D0();
  v44 = v62;
  v45 = *(v62 + 16);
  v46 = v61;
  v47 = v63;
  v45(v61, v43, v63);
  *&v70 = v65;
  v48 = v56;
  *(&v70 + 1) = v56;
  LOBYTE(v71) = v42;
  *(&v71 + 1) = *v69;
  DWORD1(v71) = *&v69[3];
  *(&v71 + 1) = v66;
  *&v72 = KeyPath;
  BYTE8(v72) = 0;
  HIDWORD(v72) = *&v68[3];
  *(&v72 + 9) = *v68;
  LOBYTE(v73) = v64;
  DWORD1(v73) = *&v67[3];
  *(&v73 + 1) = *v67;
  *(&v73 + 1) = v35;
  *v74 = v37;
  *&v74[8] = v39;
  *&v74[16] = v41;
  v74[24] = 0;
  v49 = v71;
  v50 = v57;
  *v57 = v70;
  v50[1] = v49;
  v51 = v72;
  v52 = v73;
  v53 = *v74;
  *(v50 + 73) = *&v74[9];
  v50[3] = v52;
  v50[4] = v53;
  v50[2] = v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAE8, &qword_2387666B0);
  v45(v50 + *(v54 + 48), v46, v47);
  sub_23843981C(&v70, &v75, &qword_27DF0AAF0, &qword_2387666B8);
  v55 = *(v44 + 8);
  v55(v43, v47);
  v55(v46, v47);
  v75 = v65;
  v76 = v48;
  v77 = v42;
  *v78 = *v69;
  *&v78[3] = *&v69[3];
  v79 = v66;
  v80 = KeyPath;
  v81 = 0;
  *v82 = *v68;
  *&v82[3] = *&v68[3];
  v83 = v64;
  *&v84[3] = *&v67[3];
  *v84 = *v67;
  v85 = v35;
  v86 = v37;
  v87 = v39;
  v88 = v41;
  v89 = 0;
  sub_238439884(&v75, &qword_27DF0AAF0, &qword_2387666B8);
}

double sub_238483788@<D0>(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238483838(a1);

  return result;
}

uint64_t sub_238483838@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23875EA80();
  v12 = v11;

  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel, &protocol conformance descriptor for BankConnectPrivacyOnboardingViewModel);
  sub_23875C490();
  swift_getKeyPath(byte_2387665A0);
  swift_getKeyPath(byte_2387665C8);
  sub_23875C2D0();

  v13 = v20;
  sub_238484D78(v1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectPrivacyOnboardingView);
  v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v15 = swift_allocObject();
  sub_238484DE0(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for BankConnectPrivacyOnboardingView);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  result = sub_23875D610();
  *a1 = v10;
  a1[1] = v12;
  *(a1 + *(v16 + 40)) = v13;
  v18 = (a1 + *(v16 + 44));
  *v18 = sub_23848501C;
  v18[1] = v15;
  return result;
}

double sub_238483B30()
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for BankConnectPrivacyOnboardingView(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel, &protocol conformance descriptor for BankConnectPrivacyOnboardingViewModel);
  v33 = v6;
  v32 = v7;
  v31 = v8;
  v30[1] = v9;
  LODWORD(v6) = *(sub_23875C490() + 72);

  v10 = MEMORY[0x277D38550];
  if (!v6)
  {
    v10 = MEMORY[0x277D38560];
  }

  v11 = *v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v13 = sub_23867B330(v4);
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  *(inited + 40) = v13;
  *(inited + 48) = v15;
  v16 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_238763300;
  v18 = *MEMORY[0x277D383D8];
  *(v17 + 32) = *MEMORY[0x277D383D8];
  *(v17 + 40) = sub_23875EA80();
  *(v17 + 48) = v19;
  v20 = *MEMORY[0x277D38390];
  *(v17 + 56) = *MEMORY[0x277D38390];
  *(v17 + 64) = 0x65756E69746E6F63;
  v21 = *MEMORY[0x277D384B8];
  *(v17 + 72) = 0xE800000000000000;
  *(v17 + 80) = v21;
  strcpy((v17 + 88), "consentPrompt");
  *(v17 + 102) = -4864;
  v22 = v18;
  v23 = v20;
  v24 = v21;
  v25 = sub_23854B138(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v25;
  sub_2385C33E4(v16, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v34);

  v27 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238484974(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v28 = sub_23875E910();

  [v27 subject:v11 sendEvent:v28];

  sub_23875C490();
  sub_23847F278();

  return result;
}

uint64_t sub_238483F60@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A9A8, &qword_2387663F0);
  return sub_238481300(v2, a2 + *(v4 + 44));
}

void sub_238483FB0(_BYTE *a2@<X8>)
{
  swift_getKeyPath(byte_2387665A0);
  swift_getKeyPath(byte_2387665C8);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_238484030(char *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_2387665A0);
  swift_getKeyPath(byte_2387665C8);

  return sub_23875C2E0();
}

uint64_t sub_2384840A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = a7;
  v31 = a8;
  v29 = a4;
  v28 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - v17;
  v34 = a10;
  v35 = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a5, a10);
  v20 = *a6;
  v21 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel__isLoading;
  v32 = 0;
  sub_23875C290();
  (*(v16 + 32))(a9 + v21, v18, v15);
  v22 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution;
  v23 = sub_238757B60();
  (*(*(v23 - 8) + 32))(a9 + v22, a1, v23);
  v24 = (a9 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_fpanID);
  v25 = v28;
  *v24 = a2;
  v24[1] = v25;
  *(a9 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_isExistingConnection) = v29;
  sub_2384347C0(&v33, a9 + 16);
  *(a9 + 72) = v20;
  v26 = v31;
  *(a9 + 56) = v30;
  *(a9 + 64) = v26;
  return a9;
}

uint64_t sub_23848428C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = a7;
  v24 = a8;
  v22 = a6;
  v16 = *(a10 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a5, a10);
  return sub_2384840A4(a1, a2, a3, a4, v18, v22, v23, v24, v19, a10, a11);
}

void sub_23848446C(uint64_t a1)
{
  sub_2384847B4(319, &qword_27DF0A9C0, type metadata accessor for BankConnectAuthorizationFlow, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_238484510();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_238484510()
{
  result = qword_27DF0A9C8;
  if (!qword_27DF0A9C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DF0A9C8);
  }

  return result;
}

void sub_23848459C(uint64_t a1)
{
  sub_238757B60();
  if (v1 <= 0x3F)
  {
    sub_238461990();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2384846E8(uint64_t a1)
{
  sub_2384847B4(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23875C880();
    if (v2 <= 0x3F)
    {
      sub_238484818(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384847B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_238484818(uint64_t a1)
{
  if (!qword_27DF0A9F0)
  {
    type metadata accessor for BankConnectPrivacyOnboardingViewModel(255);
    sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel, &protocol conformance descriptor for BankConnectPrivacyOnboardingViewModel);
    v1 = sub_23875C4B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0A9F0);
    }
  }
}

uint64_t sub_2384848AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238449A7C;

  return sub_23847FEE0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_238484974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2384849BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_23847F3D0(v0);
}

uint64_t sub_238484A4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_238484AB4()
{
  result = qword_27DF0AA48;
  if (!qword_27DF0AA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AA40, &qword_238766620);
    sub_23843A3E8(&qword_27DF0AA50, &qword_27DF0AA58, &qword_238766628, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AA48);
  }

  return result;
}

unint64_t sub_238484B74()
{
  result = qword_27DF0AA70;
  if (!qword_27DF0AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AA60, &qword_238766630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AA78, &qword_238766638);
    sub_238484C34();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AA70);
  }

  return result;
}

unint64_t sub_238484C34()
{
  result = qword_27DF0AA80;
  if (!qword_27DF0AA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AA78, &qword_238766638);
    sub_238484CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AA80);
  }

  return result;
}

unint64_t sub_238484CC0()
{
  result = qword_27DF0AA88;
  if (!qword_27DF0AA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AA90, &qword_238766640);
    sub_23843A3E8(&qword_27DF0AA98, &qword_27DF0AAA0, &qword_238766648, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AA88);
  }

  return result;
}

uint64_t sub_238484D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238484DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_238484E48()
{
  v1 = *(type metadata accessor for BankConnectPrivacyOnboardingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_238482F10(v2);
}

uint64_t objectdestroy_33Tm()
{
  v1 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C880();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  v8 = sub_23875C880();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  sub_2383FC164(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238485078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB00, &qword_2387666C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238485114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23848515C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384851A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0AB30;
  if (!qword_27DF0AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AB30);
  }

  return result;
}

uint64_t sub_238485218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2384397A8(a1, a2, a3);

  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  sub_23875E080();
  v10 = sub_23875DA10();
  v12 = v11;
  v14 = v13;

  sub_2384397FC(v5, v7, v9 & 1);

  sub_23875D980();
  v15 = sub_23875DA60();
  v17 = v16;
  v19 = v18;

  sub_2384397FC(v10, v12, v14 & 1);

  sub_23875D890();
  v20 = sub_23875D9E0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_2384397FC(v15, v17, v19 & 1);

  v27 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB38, &unk_238766830) + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v29 = sub_23875DA40();
  (*(*(v29 - 8) + 56))(&v27[v28], 1, 1, v29);
  *v27 = result;
  *a4 = v20;
  *(a4 + 8) = v22;
  *(a4 + 16) = v24 & 1;
  *(a4 + 24) = v26;
  return result;
}

unint64_t sub_238485418()
{
  result = qword_27DF0AB40;
  if (!qword_27DF0AB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AB38, &unk_238766830);
    sub_2384854A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AB40);
  }

  return result;
}

unint64_t sub_2384854A4()
{
  result = qword_27DF09C60;
  if (!qword_27DF09C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09C20, &qword_2387711C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09C60);
  }

  return result;
}

void sub_238485558(uint64_t a1)
{
  sub_23875B290();
  if (v1 <= 0x3F)
  {
    sub_2384857E4(319, &qword_27DF0A0C8, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_23848561C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23875B290();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1D0();
  LOBYTE(a1) = *(v2 + *(a1 + 20));
  v6 = type metadata accessor for BarcodeView_iOS(0);
  v7 = (a2 + *(v6 + 20));
  result = v9;
  *v7 = v9;
  v7[1].n128_u64[0] = v10;
  *(a2 + *(v6 + 24)) = a1;
  return result;
}

void sub_23848573C(uint64_t a1)
{
  sub_23875B290();
  if (v1 <= 0x3F)
  {
    sub_2384857E4(319, &qword_27DF0AB68, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2384857E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09540, &unk_238763800);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

double sub_23848586C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB88, &qword_238766958);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB90, &qword_238766960);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB98, &qword_238766968);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = (a1 + *(type metadata accessor for BarcodeView_iOS(0) + 20));
  v13 = *v12;
  v14 = *(v12 + 2);
  v23 = v13;
  v24 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB80, &qword_238766950);
  MEMORY[0x23EE62DC0](&v22, v15);
  v16 = v22;
  if (v22)
  {
    *v5 = sub_23875D020();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABB8, &qword_238766978);
    sub_238485BA8(v16, &v5[*(v17 + 44)]);
    sub_23843981C(v5, v8, &qword_27DF0AB88, &qword_238766958);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABA0, &qword_238766970);
    sub_238486A50();
    sub_238486AB4();
    sub_23875D1B0();

    sub_238439884(v5, &qword_27DF0AB88, &qword_238766958);
  }

  else
  {
    v18 = [objc_opt_self() systemBackgroundColor];
    *v8 = sub_23875DFB0();
    *(v8 + 1) = 0;
    *(v8 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABA0, &qword_238766970);
    sub_238486A50();
    sub_238486AB4();
    sub_23875D1B0();
  }

  sub_2384003D8(v11, v21);

  return result;
}

double sub_238485BA8@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABC0, &qword_238766980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238485DC8(a1, v21);
  sub_238486244(v9);
  v18 = v21[2];
  v19 = v21[3];
  v20 = v22;
  v16 = v21[0];
  v17 = v21[1];
  sub_23843981C(v9, v6, &qword_27DF0ABC0, &qword_238766980);
  v10 = v19;
  v23[2] = v18;
  v23[3] = v19;
  v11 = v20;
  v24 = v20;
  v13 = v16;
  v12 = v17;
  v23[0] = v16;
  v23[1] = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *a2 = v13;
  *(a2 + 16) = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABC8, &qword_238766988);
  sub_23843981C(v6, a2 + *(v14 + 48), &qword_27DF0ABC0, &qword_238766980);
  sub_238486B38(v23, v25);
  sub_238439884(v9, &qword_27DF0ABC0, &qword_238766980);
  sub_238439884(v6, &qword_27DF0ABC0, &qword_238766980);
  v25[2] = v18;
  v25[3] = v19;
  v26 = v20;
  v25[0] = v16;
  v25[1] = v17;
  sub_238486BA8(v25);

  return result;
}

double sub_238485DC8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_238757FE0();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v30 - v7;
  v8 = sub_23875E0E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875E0F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  sub_23875E0C0();
  (*(v13 + 104))(v15, *MEMORY[0x277CE0FF8], v12);
  sub_23875E100();

  (*(v13 + 8))(v15, v12);
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v17 = sub_23875E150();

  (*(v9 + 8))(v11, v8);
  if (*(v2 + *(type metadata accessor for BarcodeView_iOS(0) + 24)) == 1)
  {
    v18 = v31;
    sub_23875B270();
    v19 = *(v34 + 88);
    v20 = v32;
    v21 = v19(v18, v32);
    v22 = *MEMORY[0x277CC6D70];
    if (v21 != *MEMORY[0x277CC6D70] && v21 != *MEMORY[0x277CC6D88] && v21 != *MEMORY[0x277CC6D78] && v21 != *MEMORY[0x277CC6D80])
    {
      (*(v34 + 8))(v18, v20);
    }

    v23 = v33;
    sub_23875B270();
    v24 = v19(v23, v20);
    if (v24 != v22 && v24 != *MEMORY[0x277CC6D88] && v24 != *MEMORY[0x277CC6D78] && v24 != *MEMORY[0x277CC6D80])
    {
      (*(v34 + 8))(v33, v20);
    }
  }

  sub_23875E4A0();
  sub_23875C5C0();
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  v36 = v40;
  v35 = 1;
  *a2 = v17;
  *(a2 + 8) = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  *(a2 + 32) = v28;
  result = *&v41;
  *(a2 + 40) = v41;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  return result;
}

uint64_t sub_238486244@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23875C880();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABD8, &qword_238766998);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = sub_23875B280();
  if (v10)
  {
    v48 = v9;
    v49 = v10;
    sub_2384397A8(v9, v10, v11);
    v12 = sub_23875DAA0();
    v44 = v8;
    v14 = v13;
    v16 = v15;
    sub_23875D980();
    v17 = sub_23875DA60();
    v45 = a1;
    v46 = v6;
    v18 = v17;
    v42 = v5;
    v43 = v2;
    v20 = v19;
    v22 = v21;

    sub_2384397FC(v12, v14, v16 & 1);

    v23 = sub_23875DA70();
    v25 = v24;
    v27 = v26;
    sub_2384397FC(v18, v20, v22 & 1);

    sub_23875D890();
    v28 = sub_23875D9E0();
    v30 = v29;
    LOBYTE(v20) = v31;
    v33 = v32;
    sub_2384397FC(v23, v25, v27 & 1);

    v48 = v28;
    v49 = v30;
    LOBYTE(v20) = v20 & 1;
    v50 = v20;
    v51 = v33;
    v35 = v42;
    v34 = v43;
    (*(v3 + 104))(v42, *MEMORY[0x277CDF9E8], v43);
    v36 = v44;
    sub_23875DC40();
    (*(v3 + 8))(v35, v34);
    sub_2384397FC(v28, v30, v20);

    v37 = v46;
    v38 = v45;
    (*(v47 + 32))(v45, v36, v46);
    return (*(v47 + 56))(v38, 0, 1, v37);
  }

  else
  {
    v40 = *(v47 + 56);

    return v40(a1, 1, 1, v6);
  }
}

uint64_t sub_2384865C0(uint64_t a1)
{
  *(v1 + 48) = a1;
  sub_23875ED50();
  *(v1 + 56) = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238486658, v3, v2);
}

uint64_t sub_238486658()
{

  v1 = sub_23846EEBC(4.0);
  if (v1)
  {
    v2 = v1;
    v3 = v0[6];
    v4 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v1 scale:0 orientation:1.0];
    v5 = (v3 + *(type metadata accessor for BarcodeView_iOS(0) + 20));
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v0[2] = v6;
    v0[3] = v7;
    v0[4] = v8;
    v0[5] = v4;
    v9 = v8;
    v10 = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB80, &qword_238766950);
    sub_23875E2F0();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_238486794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_23848586C(v2, a2);
  sub_2384868BC(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_238486920(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB78, &qword_238766948) + 36));
  sub_23875C6E0();
  result = sub_23875ED60();
  *v8 = &unk_238766940;
  v8[1] = v7;
  return result;
}

uint64_t sub_2384868BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarcodeView_iOS(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238486920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarcodeView_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238486984()
{
  v2 = *(type metadata accessor for BarcodeView_iOS(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_2384865C0(v0 + v3);
}

unint64_t sub_238486A50()
{
  result = qword_27DF0ABA8;
  if (!qword_27DF0ABA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AB88, &qword_238766958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ABA8);
  }

  return result;
}

unint64_t sub_238486AB4()
{
  result = qword_27DF0ABB0;
  if (!qword_27DF0ABB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ABA0, &qword_238766970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ABB0);
  }

  return result;
}

uint64_t sub_238486B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABD0, &qword_238766990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238486BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ABD0, &qword_238766990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238486C10()
{
  result = qword_27DF0ABE0;
  if (!qword_27DF0ABE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AB78, &qword_238766948);
    sub_238486CCC();
    sub_238486DDC(&qword_27DF08DC8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ABE0);
  }

  return result;
}

unint64_t sub_238486CCC()
{
  result = qword_27DF0ABE8;
  if (!qword_27DF0ABE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ABF0, &unk_2387669A0);
    sub_238486D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ABE8);
  }

  return result;
}

unint64_t sub_238486D50()
{
  result = qword_27DF0ABF8;
  if (!qword_27DF0ABF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AB98, &qword_238766968);
    sub_238486A50();
    sub_238486AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ABF8);
  }

  return result;
}

uint64_t sub_238486DDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *FinancialConnectionUIExtensionHostView.init(financialExtension:authorizationParams:completionHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2384347C0(a1, a5);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  *(a5 + 40) = sub_238486EF8;
  *(a5 + 48) = result;
  *(a5 + 56) = 0;
  return result;
}

void *sub_238486E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FinancialConnectionUIExtensionHostViewModel();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = 0;

  return v6;
}

uint64_t FinancialConnectionUIExtensionHostView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875C0A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23845C998(v1, v11);
  type metadata accessor for FinancialConnectionUIExtensionHostViewModel();
  sub_238487058();
  v7 = sub_23875C490();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2387591C0();
  v8 = sub_23875C090();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(v11);
  result = sub_23875D7A0();
  *a1 = v8;
  *(a1 + 8) = v7;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_238487058()
{
  result = qword_27DF0AC00;
  if (!qword_27DF0AC00)
  {
    type metadata accessor for FinancialConnectionUIExtensionHostViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AC00);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2384870F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238487140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384871A0()
{
  result = qword_27DF0AC08;
  if (!qword_27DF0AC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AC10, &qword_238766AA8);
    sub_23848722C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AC08);
  }

  return result;
}

unint64_t sub_23848722C()
{
  result = qword_27DF0AC18;
  if (!qword_27DF0AC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AC20, &qword_238766AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AC18);
  }

  return result;
}

id sub_238487290()
{
  type metadata accessor for BrightnessCoordinator();
  v0 = swift_allocObject();
  v0[2] = 1127299088;
  v0[3] = 0x3FD999999999999ALL;
  result = [objc_allocWithZone(MEMORY[0x277CFD390]) init];
  v0[4] = result;
  qword_27DF2F670 = v0;
  return result;
}

void sub_238487300(char a1)
{
  if (a1)
  {
    v3 = 177.22;
  }

  else
  {
    v3 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D0, &unk_2387713A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763B60;
  *(inited + 32) = 1937009006;
  v5 = MEMORY[0x277D83A90];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  *(inited + 72) = v5;
  *(inited + 80) = 0x646F69726570;
  *(inited + 120) = MEMORY[0x277D839F8];
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x3FD999999999999ALL;
  sub_23853BB18(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D8, &qword_238766B00);
  swift_arrayDestroy();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_2387632F0;
  *(v6 + 32) = 0x57656C6261736944;
  v7 = v6 + 32;
  *(v6 + 40) = 0xEE00746669685350;
  *(v6 + 72) = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  sub_23853BB18(v6);
  swift_setDeallocating();
  sub_2384875DC(v7);
  v8 = *(v1 + 32);
  v9 = sub_23875E910();

  v10 = sub_23875EA50();
  [v8 setProperty:v9 forKey:v10];

  v11 = *(v1 + 32);
  v12 = sub_23875E910();

  v13 = sub_23875EA50();
  [v11 setProperty:v12 forKey:v13];
}

uint64_t sub_238487580()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2384875DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D8, &qword_238766B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238487644()
{
  v0 = sub_238758850();
  __swift_allocate_value_buffer(v0, qword_2814F1B98);
  __swift_project_value_buffer(v0, qword_2814F1B98);
  return sub_238758830();
}

uint64_t sub_2384876A8()
{
  v0 = sub_238758850();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384877C4();
  if (qword_2814F1178 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_2814F1B98);
  (*(v1 + 16))(v3, v4, v0);
  result = sub_23875F180();
  qword_2814F1B90 = result;
  return result;
}

unint64_t sub_2384877C4()
{
  result = qword_2814F0878;
  if (!qword_2814F0878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814F0878);
  }

  return result;
}

uint64_t _s5SmallVMa(uint64_t a1)
{
  result = qword_2814F1008;
  if (!qword_2814F1008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238487884(uint64_t a1)
{
  type metadata accessor for OrderWidgetTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_238487958(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_238487958(319, &qword_2814F09C0, MEMORY[0x277CE3AF8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238487958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2384879C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC38, &qword_238766B68);
  v109 = *(v3 - 8);
  v110 = v3;
  MEMORY[0x28223BE20](v3);
  v101 = (&v84 - v4);
  v98 = type metadata accessor for OrderWidgetMoreTextView(0);
  MEMORY[0x28223BE20](v98);
  v100 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v84 - v7;
  v90 = sub_23875E7A0();
  v87 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v84 - v10;
  v95 = sub_23875E360();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC40, &qword_238766B70);
  MEMORY[0x28223BE20](v89);
  v93 = &v84 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC48, &qword_238766B78);
  MEMORY[0x28223BE20](v91);
  v97 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = &v84 - v15;
  MEMORY[0x28223BE20](v16);
  v96 = &v84 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC50, &qword_238766B80);
  MEMORY[0x28223BE20](v18 - 8);
  v108 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v107 = &v84 - v21;
  v84 = _s5SmallVMa(0);
  v102 = *(v84 - 8);
  v22 = *(v102 + 64);
  MEMORY[0x28223BE20](v84);
  v104 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v84 - v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC60, &qword_238766B90);
  MEMORY[0x28223BE20](v103);
  v106 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v84 - v28;
  MEMORY[0x28223BE20](v30);
  v112 = &v84 - v31;
  sub_23875ED50();
  v105 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = a1;
  v33 = *a1;
  v34 = *(*a1 + 16);
  v35 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v36 = *(v35 - 8);
  if (v34)
  {
    sub_2384897B4(v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v25, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    (*(v36 + 56))(v25, 0, 1, v35);
  }

  else
  {
    (*(v36 + 56))(v25, 1, 1, v35);
  }

  v37 = v32;
  v38 = v32;
  v39 = v104;
  sub_2384897B4(v38, v104, _s5SmallVMa);
  v40 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v41 = swift_allocObject();
  sub_23848974C(v39, v41 + v40, _s5SmallVMa);
  type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v42 = *(v36 + 56);
  v43 = 1;
  v42(v29, 1, 1, v35);
  sub_2384895F4(v25, v29);
  v44 = &v29[*(v103 + 36)];
  *v44 = sub_238489574;
  v44[1] = v41;
  sub_2384396E4(v29, v112, &qword_27DF0AC60, &qword_238766B90);
  v45 = *(v37 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v46 = v107;
  if (v45 >= 2)
  {
    v47 = v92;
    sub_23875E350();
    v104 = *(v84 + 24);
    v48 = v85;
    sub_2384D5188(v85);
    v49 = v86;
    sub_23875E790();
    v50 = sub_23875E780();
    v51 = *(v87 + 8);
    v52 = v49;
    v53 = v90;
    v51(v52, v90);
    v51(v48, v53);
    if (v50)
    {
      v54 = sub_23875E020();
    }

    else
    {
      v55 = [objc_opt_self() systemGroupedBackgroundColor];
      v54 = sub_23875DFB0();
    }

    v56 = v54;
    v57 = sub_23875D780();
    v58 = v93;
    (*(v94 + 32))(v93, v47, v95);
    v59 = v58 + *(v89 + 36);
    *v59 = v56;
    *(v59 + 8) = v57;
    LOBYTE(v56) = sub_23875D790();
    sub_23875C3D0();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v88;
    sub_2384396E4(v58, v88, &qword_27DF0AC40, &qword_238766B70);
    v69 = v68 + *(v91 + 36);
    *v69 = v56;
    *(v69 + 8) = v61;
    *(v69 + 16) = v63;
    *(v69 + 24) = v65;
    *(v69 + 32) = v67;
    *(v69 + 40) = 0;
    v70 = v96;
    sub_2384396E4(v68, v96, &qword_27DF0AC48, &qword_238766B78);
    v71 = v45 - 1;
    v72 = v98;
    v73 = v99;
    sub_2384D5188(&v99[*(v98 + 20)]);
    *v73 = v71;
    v74 = *(v72 + 24);
    *(v73 + v74) = swift_getKeyPath(byte_238766BA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v75 = v97;
    sub_23843981C(v70, v97, &qword_27DF0AC48, &qword_238766B78);
    v76 = v100;
    sub_2384897B4(v73, v100, type metadata accessor for OrderWidgetMoreTextView);
    v77 = v101;
    *v101 = 0;
    *(v77 + 8) = 1;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC78, &qword_238766BD0);
    sub_23843981C(v75, v77 + *(v78 + 48), &qword_27DF0AC48, &qword_238766B78);
    sub_2384897B4(v76, v77 + *(v78 + 64), type metadata accessor for OrderWidgetMoreTextView);
    sub_23848981C(v73, type metadata accessor for OrderWidgetMoreTextView);
    sub_238439884(v70, &qword_27DF0AC48, &qword_238766B78);
    sub_23848981C(v76, type metadata accessor for OrderWidgetMoreTextView);
    sub_238439884(v75, &qword_27DF0AC48, &qword_238766B78);
    sub_2384396E4(v77, v46, &qword_27DF0AC38, &qword_238766B68);
    v43 = 0;
  }

  (*(v109 + 56))(v46, v43, 1, v110);
  v79 = v112;
  v80 = v106;
  sub_23843981C(v112, v106, &qword_27DF0AC60, &qword_238766B90);
  v81 = v108;
  sub_23843981C(v46, v108, &qword_27DF0AC50, &qword_238766B80);
  v82 = v111;
  sub_23843981C(v80, v111, &qword_27DF0AC60, &qword_238766B90);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC70, &qword_238766B98);
  sub_23843981C(v81, v82 + *(v83 + 48), &qword_27DF0AC50, &qword_238766B80);
  sub_238439884(v46, &qword_27DF0AC50, &qword_238766B80);
  sub_238439884(v79, &qword_27DF0AC60, &qword_238766B90);
  sub_238439884(v81, &qword_27DF0AC50, &qword_238766B80);
  sub_238439884(v80, &qword_27DF0AC60, &qword_238766B90);
}

double sub_238488554@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23875D030();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC80, &qword_238766BD8);
  return sub_2384885B8(a1, a2, a3 + *(v6 + 44));
}

double sub_2384885B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v114 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC88, &qword_238766BE0);
  MEMORY[0x28223BE20](v4 - 8);
  v115 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v113 = (v98 - v7);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC90, &qword_238766BE8);
  MEMORY[0x28223BE20](v105);
  v108 = v98 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC98, &qword_238766BF0);
  MEMORY[0x28223BE20](v107);
  v112 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = v98 - v11;
  MEMORY[0x28223BE20](v12);
  v109 = v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA0, &qword_238766BF8);
  MEMORY[0x28223BE20](v14);
  v16 = v98 - v15;
  v17 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  MEMORY[0x28223BE20](v17 - 8);
  v116 = v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  MEMORY[0x28223BE20](v117);
  v20 = v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v119);
  v102 = v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v98 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v98 - v26;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA8, &qword_238766C00);
  MEMORY[0x28223BE20](v100);
  v29 = v98 - v28;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACB0, &qword_238766C08);
  MEMORY[0x28223BE20](v101);
  v104 = v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v99 = v98 - v32;
  MEMORY[0x28223BE20](v33);
  v118 = v98 - v34;
  sub_23875ED50();
  v103 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384897B4(a1, v27, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v116;
    sub_23848974C(v27, v116, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v37 = *(v35 + 80);
    v36 = *(v35 + 88);

    v38 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    v39 = v35;
  }

  else
  {
    sub_23848974C(v27, v20, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v40 = &v20[v117[8]];
    v37 = *v40;
    v36 = *(v40 + 1);

    v38 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    v39 = v20;
  }

  v41 = sub_23848981C(v39, v38);
  v120 = v37;
  v121 = v36;
  v98[1] = sub_2384397A8(v41, v42, v43);
  v44 = sub_23875DAA0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_2384897B4(a1, v24, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v110 = a1;
  v98[0] = v20;
  if (EnumCaseMultiPayload == 1)
  {
    v52 = v116;
    sub_23848974C(v24, v116, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v53 = *(v52 + 96);

    v54 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    v55 = v52;
  }

  else
  {
    sub_23848974C(v24, v20, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v53 = *&v20[v117[9]];

    v54 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    v55 = v20;
  }

  sub_23848981C(v55, v54);
  v120 = v44;
  v121 = v46;
  v122 = v48 & 1;
  v123 = v50;
  sub_23875D890();
  sub_23875DAF0();
  *&v16[*(v14 + 36)] = v53;
  sub_238489664();

  sub_23875DAB0();
  sub_2384397FC(v44, v46, v48 & 1);

  sub_238439884(v16, &qword_27DF0ACA0, &qword_238766BF8);
  KeyPath = swift_getKeyPath("(0{E");
  v57 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC0, &qword_238766C40) + 36)];
  *v57 = KeyPath;
  *(v57 + 1) = 1;
  v57[16] = 0;
  v58 = swift_getKeyPath(byte_238766C48);
  v59 = &v29[*(v100 + 36)];
  *v59 = v58;
  v59[8] = 1;
  v60 = sub_23875D7F0();
  v61 = swift_getKeyPath(byte_238766C78);
  v62 = v29;
  v63 = v99;
  sub_2384396E4(v62, v99, &qword_27DF0ACA8, &qword_238766C00);
  v64 = (v63 + *(v101 + 36));
  *v64 = v61;
  v64[1] = v60;
  sub_2384396E4(v63, v118, &qword_27DF0ACB0, &qword_238766C08);
  v65 = v110;
  v66 = v102;
  sub_2384897B4(v110, v102, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = v116;
    sub_23848974C(v66, v116, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v69 = *(v67 + 32);
    v68 = *(v67 + 40);

    v70 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v67 = v98[0];
    sub_23848974C(v66, v98[0], type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v71 = (v67 + v117[7]);
    v69 = *v71;
    v68 = v71[1];

    v70 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23848981C(v67, v70);
  v120 = v69;
  v121 = v68;
  v72 = sub_23875DAA0();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = *(v105 + 36);
  v80 = swift_getKeyPath(byte_238766BA0);
  v81 = v108;
  *&v108[v79] = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *v81 = v72;
  *(v81 + 8) = v74;
  *(v81 + 16) = v76 & 1;
  *(v81 + 24) = v78;
  v82 = sub_23875D960();
  v83 = swift_getKeyPath(byte_238766C78);
  v84 = v106;
  sub_2384396E4(v81, v106, &qword_27DF0AC90, &qword_238766BE8);
  v85 = (v84 + *(v107 + 36));
  *v85 = v83;
  v85[1] = v82;
  v86 = v109;
  sub_2384396E4(v84, v109, &qword_27DF0AC98, &qword_238766BF0);
  v87 = sub_23875CE60();
  v88 = v113;
  *v113 = v87;
  *(v88 + 8) = 0;
  *(v88 + 16) = 1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC8, &qword_238766CA8);
  sub_238489120(v65, v111, (v88 + *(v89 + 44)));
  v90 = v118;
  v91 = v104;
  sub_23843981C(v118, v104, &qword_27DF0ACB0, &qword_238766C08);
  v92 = v112;
  sub_23843981C(v86, v112, &qword_27DF0AC98, &qword_238766BF0);
  v93 = v115;
  sub_23843981C(v88, v115, &qword_27DF0AC88, &qword_238766BE0);
  v94 = v114;
  sub_23843981C(v91, v114, &qword_27DF0ACB0, &qword_238766C08);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACD0, &qword_238766CB0);
  sub_23843981C(v92, v94 + v95[12], &qword_27DF0AC98, &qword_238766BF0);
  v96 = v94 + v95[16];
  *v96 = 0x4010000000000000;
  *(v96 + 8) = 0;
  sub_23843981C(v93, v94 + v95[20], &qword_27DF0AC88, &qword_238766BE0);
  sub_238439884(v88, &qword_27DF0AC88, &qword_238766BE0);
  sub_238439884(v86, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v90, &qword_27DF0ACB0, &qword_238766C08);
  sub_238439884(v93, &qword_27DF0AC88, &qword_238766BE0);
  sub_238439884(v92, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v91, &qword_27DF0ACB0, &qword_238766C08);

  return result;
}

void sub_238489120(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a1;
  v31 = a3;
  v4 = sub_23875C880();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderWidgetImageView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  sub_23875ED50();
  v30 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384897B4(v29, v32, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (*(a2 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24)) < 2)
  {
    v24 = 68.0;
  }

  else
  {
    _s5SmallVMa(0);
    sub_2384D5138(v9);
    v21 = v28;
    (*(v5 + 104))(v28, *MEMORY[0x277CDFA00], v4);
    sub_23848987C();
    v22 = sub_23875E9B0();
    v23 = *(v5 + 8);
    v23(v21, v4);
    v23(v9, v4);
    if (v22)
    {
      v24 = 56.0;
    }

    else
    {
      v24 = 60.0;
    }
  }

  sub_23848974C(v32, v17, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  *&v17[v12[5]] = v24;
  *&v17[v12[6]] = 0x4051000000000000;
  *&v17[v12[7]] = 0x4018000000000000;
  sub_23848974C(v17, v20, type metadata accessor for OrderWidgetImageView);
  sub_2384897B4(v20, v14, type metadata accessor for OrderWidgetImageView);
  v25 = v31;
  *v31 = 0;
  *(v25 + 8) = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACD8, &qword_238766CB8);
  sub_2384897B4(v14, v25 + *(v26 + 48), type metadata accessor for OrderWidgetImageView);
  sub_23848981C(v20, type metadata accessor for OrderWidgetImageView);
  sub_23848981C(v14, type metadata accessor for OrderWidgetImageView);
}

void sub_238489524(uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC30, &qword_238766B60);
  sub_2384879C8(v2, a2 + *(v4 + 44));
}

double sub_238489574@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s5SmallVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238488554(a1, v6, a2);
}

uint64_t sub_2384895F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_238489664()
{
  result = qword_27DF0ACB8;
  if (!qword_27DF0ACB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ACA0, &qword_238766BF8);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0ACB8);
  }

  return result;
}

uint64_t sub_23848974C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384897B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23848981C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23848987C()
{
  result = qword_27DF0AAC0;
  if (!qword_27DF0AAC0)
  {
    sub_23875C880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AAC0);
  }

  return result;
}

uint64_t AccountTimeShareButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v12[0] = sub_23875C950();
  v2 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACF0, &qword_238766CD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v9;
  v14 = *(v1 + 32);
  v12[4] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACF8, &qword_238766CD8);
  sub_23843A3E8(&qword_27DF0AD00, &qword_27DF0ACF8, &qword_238766CD8, &protocol conformance descriptor for AccountTimeSharingRow<A>);
  sub_23875E200();
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0AD08, &qword_27DF0ACF0, &qword_238766CD0, MEMORY[0x277CDF028]);
  sub_238489C10();
  v10 = v12[0];
  sub_23875DB30();
  (*(v2 + 8))(v4, v10);
  return (*(v6 + 8))(v8, v5);
}

double sub_238489B40@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  sub_238489C84(v8);

  v9[25] = v4;
  v5 = *v9;
  a2[2] = v8[2];
  a2[3] = v5;
  v6 = v8[1];
  *a2 = v8[0];
  a2[1] = v6;
  result = *&v9[10];
  *(a2 + 58) = *&v9[10];
  return result;
}

unint64_t sub_238489C10()
{
  result = qword_27DF0A778;
  if (!qword_27DF0A778)
  {
    sub_23875C950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A778);
  }

  return result;
}

void sub_238489C84(uint64_t a2@<X8>)
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v3 = qword_2814F1B90;
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  sub_23875EA80();
  sub_2384397A8(v8, v9, v10);
  v11 = sub_23875DAA0();
  v13 = v12;
  LOBYTE(v5) = v14;
  sub_23875D420();
  v15 = sub_23875DA20();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_2384397FC(v11, v13, v5 & 1);

  LOBYTE(v11) = sub_23875D7D0();
  sub_23875C3D0();
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = v11;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
  *(a2 + 72) = 0;
}

uint64_t sub_238489E60@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v12[0] = sub_23875C950();
  v2 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACF0, &qword_238766CD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v9;
  v14 = *(v1 + 32);
  v12[4] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACF8, &qword_238766CD8);
  sub_23843A3E8(&qword_27DF0AD00, &qword_27DF0ACF8, &qword_238766CD8, &protocol conformance descriptor for AccountTimeSharingRow<A>);
  sub_23875E200();
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0AD08, &qword_27DF0ACF0, &qword_238766CD0, MEMORY[0x277CDF028]);
  sub_238489C10();
  v10 = v12[0];
  sub_23875DB30();
  (*(v2 + 8))(v4, v10);
  return (*(v6 + 8))(v8, v5);
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

uint64_t sub_23848A0E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23848A128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23848A180()
{
  result = qword_27DF0AD10;
  if (!qword_27DF0AD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AD18, &qword_238766D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ACF0, &qword_238766CD0);
    sub_23875C950();
    sub_23843A3E8(&qword_27DF0AD08, &qword_27DF0ACF0, &qword_238766CD0, MEMORY[0x277CDF028]);
    sub_238489C10();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_23848A29C(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD10);
  }

  return result;
}

unint64_t sub_23848A29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0AD20;
  if (!qword_27DF0AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD20);
  }

  return result;
}

double sub_23848A2F4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AD30, &qword_238766E48);
  sub_23848A5AC();
  sub_23875DE00();

  return result;
}

id sub_23848A510()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _CloseButton.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23848A5AC()
{
  result = qword_27DF0AD38;
  if (!qword_27DF0AD38)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AD30, &qword_238766E48);
    sub_23848A638(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD38);
  }

  return result;
}

unint64_t sub_23848A638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0AD40;
  if (!qword_27DF0AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD40);
  }

  return result;
}

unint64_t sub_23848A69C()
{
  result = qword_27DF0AD48;
  if (!qword_27DF0AD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AD50, &qword_238766E50);
    sub_23848A5AC();
    sub_23844E9B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD48);
  }

  return result;
}

id sub_23848A72C()
{
  v0 = [objc_opt_self() buttonWithType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AD60, &unk_238766F38);
  sub_23875D600();
  [v0 addTarget:v2 action:sel_doAction_ forControlEvents:64];

  return v0;
}

double sub_23848A7D0()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AD60, &unk_238766F38);
  sub_23875D600();
  v3 = &v5[OBJC_IVAR____TtCV12FinanceKitUIP33_749EBBE7CDDBA07A8878912459ED339212_CloseButton11Coordinator_configuration];
  *v3 = v2;
  *(v3 + 1) = v1;

  return result;
}

void *sub_23848A858@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for _CloseButton.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV12FinanceKitUIP33_749EBBE7CDDBA07A8878912459ED339212_CloseButton11Coordinator_configuration];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_23848A924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23848AA14(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23848A988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23848AA14(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23848A9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23848AA14(a1, a2, a3);
  sub_23875D120();
  __break(1u);
}

unint64_t sub_23848AA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0AD58;
  if (!qword_27DF0AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AD58);
  }

  return result;
}

uint64_t BankConnectAuthorizationError.failureReason.getter()
{
  v1 = v0;
  v2 = sub_238757B60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BankConnectAuthorizationError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23848B020(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_2814F0880 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_2814F0880 == -1)
    {
LABEL_11:
      v26 = qword_2814F1B90;
      v27 = sub_23875EA50();
      v28 = sub_23875EA50();
      v29 = sub_23875EA50();
      v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

      v25 = sub_23875EA80();
      return v25;
    }

    swift_once();
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2387632F0;
    v11 = sub_238757B50();
    v13 = v12;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_238448C58(v11, v12, v14);
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    if (qword_2814F0880 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  (*(v3 + 32))(v5, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2387632F0;
  v16 = sub_238757B50();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_238448C58(v16, v17, v19);
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  if (qword_2814F0880 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_9:
  v20 = qword_2814F1B90;
  v21 = sub_23875EA50();
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

  sub_23875EA80();
  v25 = sub_23875EAA0();

  (*(v3 + 8))(v5, v2);
  return v25;
}

uint64_t type metadata accessor for BankConnectAuthorizationError(uint64_t a1)
{
  result = qword_27DF0AD70;
  if (!qword_27DF0AD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23848B020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectAuthorizationError.errorDescription.getter()
{
  v1 = type metadata accessor for BankConnectAuthorizationError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23848B020(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_2814F0880 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_2814F0880 == -1)
    {
LABEL_11:
      v11 = qword_2814F1B90;
      v12 = sub_23875EA50();
      v13 = sub_23875EA50();
      v14 = sub_23875EA50();
      v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

      v10 = sub_23875EA80();
      return v10;
    }

    swift_once();
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    if (qword_2814F0880 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (qword_2814F0880 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_9:
  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23875EA80();
  sub_23848BBAC(v3);
  return v10;
}

double sub_23848B458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  v13 = sub_23875EA80();
  v15 = v14;

  v21[0] = v13;
  v21[1] = v15;
  sub_23875C3B0();
  v16 = sub_23875C3C0();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  sub_2384397A8(v17, v18, v19);

  sub_23875E220();

  return result;
}

double sub_23848B6C0(void (*a1)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);

  return result;
}

void sub_23848B770(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = BankConnectAuthorizationError.failureReason.getter();
  sub_2384397A8(v2, v3, v4);
  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
}