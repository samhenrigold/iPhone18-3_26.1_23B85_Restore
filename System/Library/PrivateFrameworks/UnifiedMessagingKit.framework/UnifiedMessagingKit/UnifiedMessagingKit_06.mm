uint64_t OUTLINED_FUNCTION_30_5@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *(v2 - 96) = *v3;
  *(v2 - 88) = v5;
  *(v2 - 80) = v6;
  *(v2 - 72) = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return sub_2705D8024();
}

void OUTLINED_FUNCTION_46_2()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = -2;
}

void OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  sub_2703AFC10(a13, a12, a11, a10);
}

void *OUTLINED_FUNCTION_48()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_49_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2705D8484();
}

void OUTLINED_FUNCTION_50_0()
{
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  sub_2703AFC10(v5, v6, v7, v8);
}

void OUTLINED_FUNCTION_51_0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_2703AFC10(v2, v3, v4, v5);
}

void OUTLINED_FUNCTION_58_0()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
  v4 = *(v0 - 80);
  v5 = *(v0 - 72);

  sub_2703AFC10(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_59_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2705D84C4();
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{

  return sub_2705D7FE4();
}

uint64_t OUTLINED_FUNCTION_61_0(uint64_t a1)
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_62_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return type metadata accessor for FlowAction.Destination(0);
}

void OUTLINED_FUNCTION_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  sub_2703B4AA0(a1, a2, a17, a14);
}

uint64_t sub_27042CEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2120, &unk_2705EB890);
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

uint64_t sub_27042CF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2120, &unk_2705EB890);
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

uint64_t type metadata accessor for FlowAuthorityActions(uint64_t a1)
{
  result = qword_2807D2128;
  if (!qword_2807D2128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27042D074(uint64_t a1)
{
  sub_27042D0F8(319);
  if (v1 <= 0x3F)
  {
    sub_2705D6914();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27042D0F8(uint64_t a1)
{
  if (!qword_2807D2138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2140, &qword_2705EB8B8);
    v1 = sub_2705D5F34();
    if (!v2)
    {
      atomic_store(v1, &qword_2807D2138);
    }
  }
}

uint64_t sub_27042D178()
{
  type metadata accessor for FlowAuthorityActions(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2148, &qword_2705EB910);
  sub_2705D6914();
  OUTLINED_FUNCTION_0_25();
  sub_2703AFBC8(v0, &qword_2807D2148, &qword_2705EB910, v1);
  return sub_2705D59A4();
}

uint64_t sub_27042D248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v71 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2158, &qword_2705EB918);
  v3 = *(v2 - 8);
  v69 = v2;
  v70 = v3;
  MEMORY[0x28223BE20](v2);
  v68 = v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2160, &qword_2705EB920);
  v6 = *(v5 - 8);
  v66 = v5;
  v67 = v6;
  MEMORY[0x28223BE20](v5);
  v65 = v56 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2168, &qword_2705EB928);
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = v56 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2120, &unk_2705EB890);
  MEMORY[0x28223BE20](v75);
  v10 = v56 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2170, &unk_2705EB930);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490, &qword_2705E0140);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v63 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v79 = v56 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v81 = v56 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v56 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v56 - v24;
  sub_2705D5F24();
  v74 = type metadata accessor for FlowAction(0);
  v26 = sub_2705D6914();
  v73 = sub_27042DB8C(&qword_2807D2178, &unk_2705EA114);
  v72 = sub_27042DB8C(&qword_2807D2180, &unk_2705EA0DC);
  sub_2705D4854();
  v27 = v26;
  sub_2705D6A14();
  v80 = *(v14 + 16);
  v78 = v14 + 16;
  v61 = v25;
  v80(v25, v23, v13);
  sub_2703AFBC8(&qword_2807D2188, &qword_2807D2170, &unk_2705EB930, MEMORY[0x277D7EBB8]);
  v28 = v57;
  sub_2705D69E4();
  v82 = *(v14 + 8);
  v77 = v14 + 8;
  v82(v23, v13);
  (*(v58 + 8))(v12, v28);
  v56[2] = v10;
  sub_2705D5F24();
  v29 = v60;
  v56[1] = v27;
  sub_2705D48C4();
  v30 = v81;
  sub_2705D6A14();
  v31 = v23;
  v59 = v23;
  v32 = v30;
  v80(v31, v30, v13);
  sub_2703AFBC8(&qword_2807D2190, &qword_2807D2168, &qword_2705EB928, MEMORY[0x277D7EC20]);
  v33 = v62;
  sub_2705D69E4();
  v34 = v32;
  v35 = v82;
  v82(v34, v13);
  (*(v64 + 8))(v29, v33);
  sub_2705D5F24();
  v36 = v65;
  sub_2705D4874();
  v37 = v79;
  sub_2705D6A14();
  v80(v81, v37, v13);
  sub_2703AFBC8(&qword_2807D2198, &qword_2807D2160, &qword_2705EB920, MEMORY[0x277D7EBD8]);
  v38 = v66;
  sub_2705D69E4();
  v39 = v77;
  v35(v37, v13);
  (*(v67 + 8))(v36, v38);
  sub_2705D5F24();
  v40 = v68;
  sub_2705D48A4();
  v41 = v63;
  sub_2705D6A14();
  v42 = v80;
  v80(v37, v41, v13);
  sub_2703AFBC8(&qword_2807D21A0, &qword_2807D2158, &qword_2705EB918, MEMORY[0x277D7EBF0]);
  v43 = v69;
  sub_2705D69E4();
  v82(v41, v13);
  (*(v70 + 8))(v40, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930, &unk_2705E13F0);
  v44 = *(v39 + 64);
  v45 = (*(v39 + 72) + 32) & ~*(v39 + 72);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2705EB880;
  v47 = v46 + v45;
  v48 = v61;
  v42(v47, v61, v13);
  v49 = v59;
  v42(v47 + v44, v59, v13);
  v50 = v81;
  v42(v47 + 2 * v44, v81, v13);
  v51 = v47 + 3 * v44;
  v52 = v79;
  v42(v51, v79, v13);
  sub_2703D3E64(v46);
  swift_setDeallocating();
  sub_2704890E4();
  v53 = v52;
  v54 = v82;
  v82(v53, v13);
  v54(v50, v13);
  v54(v49, v13);
  return (v54)(v48, v13);
}

uint64_t sub_27042DB8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27042DBD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2148, &qword_2705EB910);
  sub_2705D6914();
  OUTLINED_FUNCTION_0_25();
  sub_2703AFBC8(v0, &qword_2807D2148, &qword_2705EB910, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27042DC80()
{
  sub_2703CCD80();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DCC0()
{
  sub_2703E13D4();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DD00()
{
  sub_2703E6230();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DD40()
{
  sub_2703FA3A8();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DD80()
{
  sub_27041FE40();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DDC0()
{
  sub_2704365B8();

  return sub_2705D4784();
}

uint64_t sub_27042DE04()
{
  sub_2704371EC();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DE44()
{
  sub_270437294();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DE84(uint64_t a1, uint64_t a2)
{
  sub_27043709C();

  return sub_2705D4784();
}

uint64_t sub_27042DEE4()
{
  sub_2704370F0();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DF24()
{
  sub_2704372E8();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DF64()
{
  sub_27043733C();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DFA4()
{
  sub_270437198();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DFE4()
{
  sub_270436710();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042E024()
{
  type metadata accessor for UnifiedButtonComponentView(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_0();
  sub_2704367E8(v0, v3 - v2);
  sub_270435EC4(&qword_2807D2448, type metadata accessor for UnifiedButtonComponentView, &unk_270609D5C);
  return sub_2705D4784();
}

uint64_t sub_27042E0F4()
{
  sub_270437144();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042E134()
{
  sub_270437240();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

void sub_27042E174()
{
  OUTLINED_FUNCTION_26_1();
  v43 = v1;
  v39[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21E0, &qword_2705EC560);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27_5();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21E8, &qword_2705EC568);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21F0, &qword_2705EC570);
  v14 = *(v13 - 8);
  v41 = v13;
  v42 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v40 = v39 - v16;
  memcpy(v51, v0, 0x330uLL);
  v48 = v0[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21F8, &qword_2705EC578);
  sub_2705D5E54();
  v17 = v45;
  v48 = v0[50];
  sub_2705D5E54();

  v18 = swift_allocObject();
  memcpy((v18 + 16), v51, 0x330uLL);
  *&v12[v9[18]] = v17;
  v45 = 0;
  v46 = 0;
  sub_2704358D4(v51, &v48);
  type metadata accessor for CGSize(0);
  sub_2705D5E44();
  v19 = v49;
  *v12 = v48;
  *(v12 + 2) = v19;
  sub_2705D4F94();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_2703CF590(v8, v5, &qword_2807D21E0, &qword_2705EC560);
  sub_2705D5E44();
  sub_2703C2EFC(v8, &qword_2807D21E0, &qword_2705EC560);
  v24 = &v12[v9[16]];
  v45 = 0;
  v46 = 0;
  v47 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13D0, &qword_2705EC580);
  sub_2705D5E44();
  v25 = v49;
  v26 = v50;
  *v24 = v48;
  v24[16] = v25;
  *(v24 + 3) = v26;
  v27 = &v12[v9[17]];
  LOBYTE(v45) = 0;
  sub_2705D5E44();
  v28 = *(&v48 + 1);
  *v27 = v48;
  *(v27 + 1) = v28;
  v12[v9[19]] = 0;
  v29 = &v12[v9[20]];
  *v29 = sub_27042E640;
  v29[1] = 0;
  v30 = &v12[v9[21]];
  *v30 = sub_2704358CC;
  v30[1] = v18;
  v44 = v51;
  v31 = sub_2705D6914();
  OUTLINED_FUNCTION_9_18();
  v34 = sub_2703AFBC8(v32, &qword_2807D21E8, &qword_2705EC568, v33);
  v35 = v40;
  sub_2705D59A4();
  sub_2703C2EFC(v12, &qword_2807D21E8, &qword_2705EC568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2208, &unk_2705EC588);
  OUTLINED_FUNCTION_21_3();
  sub_2705D5084();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2705DC030;
  sub_2705D5074();
  *&v48 = v9;
  *(&v48 + 1) = v31;
  v49 = v34;
  OUTLINED_FUNCTION_9_11();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v41;
  MEMORY[0x2743A2000](1, v36, v41, OpaqueTypeConformance2);

  (*(v42 + 8))(v35, v38);
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27042E640@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2280, &qword_2705EC688);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v43 - v6;
  v43 = *a1;
  sub_27042EBA0();
  v7 = v55;
  v8 = v56;
  v9 = v57;
  v10 = v58;
  sub_2703C3A18(v55, v56, v57, v58);
  sub_2704360B8(&v54);
  if (v8)
  {
    v53[0] = v9;
    v53[1] = v10;
    sub_2703C2F54();

    v11 = sub_2705D5944();
    v13 = v12;
    v15 = v14;
    sub_2703C3A5C(v7, v8, v9, v10);
    sub_2705D5784();
    v16 = sub_2705D5914();
    v18 = v17;
    v20 = v19;

    sub_2703CEDB0(v11, v13, v15 & 1);

    sub_2705D57C4();
    v21 = sub_2705D58E4();
    v23 = v22;
    LOBYTE(v13) = v24;
    sub_2703CEDB0(v16, v18, v20 & 1);

    v53[0] = sub_2705D5D54();
    v25 = sub_2705D58F4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_2703CEDB0(v21, v23, v13 & 1);

    sub_2705D60A4();
    sub_2705D5094(v51);
    v49 = v29 & 1;
    KeyPath = swift_getKeyPath();
    LOBYTE(v21) = sub_2705D56C4();
    v50[0] = 1;
    v52[0] = v25;
    v52[1] = v27;
    LOBYTE(v52[2]) = v29 & 1;
    v52[3] = v31;
    memcpy(&v52[4], v51, 0x70uLL);
    v52[18] = KeyPath;
    LOBYTE(v52[19]) = 1;
    LOBYTE(v52[20]) = v21;
    memset(&v52[21], 0, 32);
    LOBYTE(v52[25]) = 1;
    CGSizeMake();
    memcpy(v53, v52, 0xC9uLL);
  }

  else
  {
    sub_27043610C(v53);
  }

  v33 = sub_27042EC60();

  v52[0] = v33;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2288, &qword_2705EC6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2290, &qword_2705EC6B8);
  sub_2703AFBC8(&qword_2807D2298, &qword_2807D2288, &qword_2705EC6B0, MEMORY[0x277D83980]);
  sub_2703AFBC8(&qword_2807D22A0, &qword_2807D2290, &qword_2705EC6B8, MEMORY[0x277CE14C0]);
  v34 = v44;
  sub_2705D5F74();
  memcpy(v50, v53, sizeof(v50));
  v36 = v47;
  v35 = v48;
  v37 = *(v47 + 16);
  v38 = v45;
  v37(v45, v34, v48);
  memcpy(v51, v50, 0xC9uLL);
  v39 = v46;
  memcpy(v46, v50, 0xC9uLL);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D22A8, &qword_2705EC6C0);
  v37(&v39[*(v40 + 48)], v38, v35);
  sub_2703CF590(v51, v52, &qword_2807D22B0, &qword_2705EC6C8);
  v41 = *(v36 + 8);
  v41(v34, v35);
  v41(v38, v35);
  memcpy(v52, v50, 0xC9uLL);
  return sub_2703C2EFC(v52, &qword_2807D22B0, &qword_2705EC6C8);
}

uint64_t sub_27042EBA0()
{
  OUTLINED_FUNCTION_31_4();
  swift_getKeyPath();
  __dst[0] = v0;
  OUTLINED_FUNCTION_1_29();
  sub_270435EC4(v2, v3, &unk_2705EC4B8);
  sub_2705D45F4();

  memcpy(__dst, (v0 + 16), sizeof(__dst));
  memcpy(v1, (v0 + 16), 0x318uLL);
  return sub_270436178(__dst, &v5);
}

uint64_t sub_27042EC60()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_29();
  v3 = sub_270435EC4(v1, v2, &unk_2705EC4B8);
  OUTLINED_FUNCTION_4_9(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_2705D45F4();

  swift_beginAccess();
  v11 = *(v0 + 808);

  return v11;
}

uint64_t sub_27042ED18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2268, &qword_2705FA3D0);
  v4 = MEMORY[0x28223BE20](v3);
  v82 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v72 - v6;
  v7 = sub_2705D47C4();
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2705D47F4();
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2705D47A4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v72 - v15);
  v17 = sub_2705D45C4();
  v85 = *(v17 - 8);
  v86 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ComponentShelf(0);
  MEMORY[0x28223BE20](v89);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D22B8, &unk_2705EC700);
  MEMORY[0x28223BE20](v77);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D22C0, &qword_2705FA3B0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v79 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v88 = &v72 - v27;
  v28 = *(a1 + 16);
  v78 = *(a1 + 24);
  v29 = *(v28 + 16);
  v84 = v3;
  if (v29)
  {
    v30 = v89;
    v31 = *(v89 + 24);
    v32 = sub_2705D6A54();
    v74 = v12;
    __swift_storeEnumTagSinglePayload(&v21[v31], 1, 1, v32);

    sub_2705D45B4();
    v33 = sub_2705D45A4();
    v35 = v34;
    (*(v85 + 8))(v19, v86);
    *v21 = xmmword_2705EB940;
    *(v21 + 1) = 0u;
    *(v21 + 2) = 0u;
    *(v21 + 41) = 0u;
    *(v21 + 57) = v92[0];
    *(v21 + 15) = *(v92 + 3);
    *(v21 + 8) = 0;
    v21[72] = -1;
    *(v21 + 73) = *v91;
    *(v21 + 19) = *&v91[3];
    *(v21 + 10) = 0;
    v21[88] = -1;
    v36 = *v90;
    *(v21 + 23) = *&v90[3];
    *(v21 + 89) = v36;
    *(v21 + 13) = 0;
    *(v21 + 14) = 0;
    *(v21 + 12) = 0;
    v21[120] = -2;
    *(v21 + 16) = v28;
    v37 = &v21[*(v30 + 28)];
    *v37 = v33;
    v37[1] = v35;
    *v16 = 1;
    v38 = *(v74 + 104);
    v76 = *MEMORY[0x277D7EB30];
    v38(v16);
    v73 = v11;
    sub_2705D47D4();
    sub_2705D47B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2258, &qword_2705EC640);
    sub_270435EC4(&qword_2807CFF60, type metadata accessor for ComponentShelf, &unk_2705E3664);
    sub_2703AFBC8(&qword_2807D2260, &qword_2807D2258, &qword_2705EC640, MEMORY[0x277D7EB08]);
    v12 = v74;
    v11 = v73;
    sub_2705D48F4();
    LOBYTE(v35) = sub_2705D56D4();
    sub_2705D4D34();
    v39 = &v23[*(v84 + 36)];
    *v39 = v35;
    *(v39 + 1) = v40;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    *(v39 + 4) = v43;
    v39[40] = 0;
    LOBYTE(v35) = sub_2705D56E4();
    sub_2705D4D34();
    v44 = v77;
    v45 = &v23[*(v77 + 36)];
    *v45 = v35;
    *(v45 + 1) = v46;
    *(v45 + 2) = v47;
    *(v45 + 3) = v48;
    *(v45 + 4) = v49;
    v45[40] = 0;
    v50 = v88;
    sub_2703CF3E8(v23, v88, &qword_2807D22B8, &unk_2705EC700);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v44);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v77);
    v76 = *MEMORY[0x277D7EB30];
  }

  v51 = v89;
  v52 = *(v89 + 24);
  v53 = sub_2705D6A54();
  __swift_storeEnumTagSinglePayload(&v21[v52], 1, 1, v53);
  v54 = v78;

  sub_2705D45B4();
  v55 = sub_2705D45A4();
  v57 = v56;
  (*(v85 + 8))(v19, v86);
  *v21 = xmmword_2705EB940;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 41) = 0u;
  *(v21 + 57) = v92[0];
  *(v21 + 15) = *(v92 + 3);
  *(v21 + 8) = 0;
  v21[72] = -1;
  *(v21 + 73) = *v91;
  *(v21 + 19) = *&v91[3];
  *(v21 + 10) = 0;
  v21[88] = -1;
  v58 = *v90;
  *(v21 + 23) = *&v90[3];
  *(v21 + 89) = v58;
  *(v21 + 13) = 0;
  *(v21 + 14) = 0;
  *(v21 + 12) = 0;
  v21[120] = -2;
  *(v21 + 16) = v54;
  v59 = &v21[*(v51 + 28)];
  *v59 = v55;
  v59[1] = v57;
  *v16 = 3;
  (*(v12 + 104))(v16, v76, v11);
  sub_2705D4794();
  (*(v12 + 8))(v16, v11);
  sub_2705D47D4();
  sub_2705D47B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2258, &qword_2705EC640);
  sub_270435EC4(&qword_2807CFF60, type metadata accessor for ComponentShelf, &unk_2705E3664);
  sub_2703AFBC8(&qword_2807D2260, &qword_2807D2258, &qword_2705EC640, MEMORY[0x277D7EB08]);
  v60 = v81;
  sub_2705D48F4();
  LOBYTE(v55) = sub_2705D5724();
  sub_2705D4D34();
  v61 = v60 + *(v84 + 36);
  *v61 = v55;
  *(v61 + 8) = v62;
  *(v61 + 16) = v63;
  *(v61 + 24) = v64;
  *(v61 + 32) = v65;
  *(v61 + 40) = 0;
  v66 = v88;
  v67 = v79;
  sub_2703CF590(v88, v79, &qword_2807D22C0, &qword_2705FA3B0);
  v68 = v82;
  sub_2703CF590(v60, v82, &qword_2807D2268, &qword_2705FA3D0);
  v69 = v83;
  sub_2703CF590(v67, v83, &qword_2807D22C0, &qword_2705FA3B0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D22C8, &qword_2705EC710);
  sub_2703CF590(v68, v69 + *(v70 + 48), &qword_2807D2268, &qword_2705FA3D0);
  sub_2703C2EFC(v60, &qword_2807D2268, &qword_2705FA3D0);
  sub_2703C2EFC(v66, &qword_2807D22C0, &qword_2705FA3B0);
  sub_2703C2EFC(v68, &qword_2807D2268, &qword_2705FA3D0);
  return sub_2703C2EFC(v67, &qword_2807D22C0, &qword_2705FA3B0);
}

uint64_t sub_27042F710@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704D5B94();
  *a1 = result;
  return result;
}

uint64_t sub_27042F758@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704D5C84();
  *a1 = result;
  return result;
}

uint64_t sub_27042F788@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_2705D47C4();
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2705D47F4();
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2705D47A4();
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2705D45C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ComponentShelf(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a1 + 800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21F8, &qword_2705EC578);
  sub_2705D5E54();
  sub_27042FC54();
  v18 = v17;

  v19 = *(v14 + 24);
  v20 = sub_2705D6A54();
  __swift_storeEnumTagSinglePayload(&v16[v19], 1, 1, v20);
  sub_2705D45B4();
  v21 = sub_2705D45A4();
  v23 = v22;
  (*(v11 + 8))(v13, v10);
  *v16 = xmmword_2705EB940;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 41) = 0u;
  *(v16 + 57) = v43;
  *(v16 + 15) = *(&v43 + 3);
  *(v16 + 8) = 0;
  v16[72] = -1;
  *(v16 + 73) = v42;
  *(v16 + 19) = *(&v42 + 3);
  *(v16 + 10) = 0;
  v16[88] = -1;
  v24 = *v44;
  *(v16 + 23) = *&v44[3];
  *(v16 + 89) = v24;
  *(v16 + 13) = 0;
  *(v16 + 14) = 0;
  *(v16 + 12) = 0;
  v16[120] = -2;
  *(v16 + 16) = v18;
  v25 = &v16[*(v14 + 28)];
  *v25 = v21;
  v25[1] = v23;
  *v9 = 1;
  (*(v7 + 104))(v9, *MEMORY[0x277D7EB30], v38);
  sub_2705D47D4();
  sub_2705D47B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2258, &qword_2705EC640);
  sub_270435EC4(&qword_2807CFF60, type metadata accessor for ComponentShelf, &unk_2705E3664);
  sub_2703AFBC8(&qword_2807D2260, &qword_2807D2258, &qword_2705EC640, MEMORY[0x277D7EB08]);
  v26 = v41;
  sub_2705D48F4();
  LOBYTE(v18) = sub_2705D56D4();
  sub_2705D4D34();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2268, &qword_2705FA3D0);
  v36 = v26 + *(result + 36);
  *v36 = v18;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  return result;
}

void sub_27042FC54()
{
  OUTLINED_FUNCTION_26_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_23_0(v0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  v44 = v43 - v2;
  v3 = sub_2705D6774();
  v4 = OUTLINED_FUNCTION_23_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v43[2] = v6 - v5;
  sub_27043157C();
  if (*(&v59[1] + 1))
  {
    memcpy(v60, v59, 0x50uLL);
    v7 = sub_2704313C4();
    v8 = sub_2703D5248(&v60[2] + 8, v7);

    sub_270435F0C(v60);
    if (v8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_2703C2EFC(v59, &qword_2807D2220, &unk_2705EC5B0);
  }

  v9 = sub_27042EC60();

  sub_270431630(v9, v60);

  if (*(&v60[1] + 1))
  {
    sub_2703BD1EC(&v60[2] + 8, &v57);
    sub_270435F0C(v60);
    v59[0] = v57;
    v59[1] = *v58;
    *&v59[2] = *&v58[16];
    v10 = sub_2704313C4();
    v11 = sub_2703D5248(v59, v10);

    if (v11)
    {
      v12 = *(v11 + 16);
      v43[1] = v11;
      v13 = MEMORY[0x277D84F90];
      if (v12)
      {
        v14 = v11 + 32;
        while (1)
        {
          sub_2703B4E54(v14, v60);
          sub_2703B4E54(v60, v51);
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB0, &qword_2705DC8B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2270, &qword_2705EC648);
          if (!swift_dynamicCast())
          {
            break;
          }

          v46 = v12;
          v47 = v13;
          sub_2703B291C(&v48, &v57);
          v45 = *&v58[8];
          v16 = __swift_project_boxed_opaque_existential_1(&v57, *&v58[8]);
          v52 = v45;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v51);
          sub_2703CF590(v16, &v48, &qword_2807CF140, &qword_2705DEE60);
          v18 = v50;
          v19 = v49;
          *boxed_opaque_existential_1Tm = v48;
          *(boxed_opaque_existential_1Tm + 1) = v19;
          boxed_opaque_existential_1Tm[4] = v18;
          *&v45 = v15;
          sub_2705D6764();
          *(&v49 + 1) = sub_2705D65B4();
          v50 = MEMORY[0x277D21B60];
          __swift_allocate_boxed_opaque_existential_1Tm(&v48);
          sub_2705D65A4();
          v20 = type metadata accessor for ButtonComponentModel(0);
          v21 = v44;
          sub_2703CF590(v16 + v20[6], v44, &qword_2807CF130, &unk_2705DEE50);
          sub_2703CF3E8(v21, boxed_opaque_existential_1Tm + v20[6], &qword_2807CF190, &unk_2705DEE80);
          v22 = (v16 + v20[7]);
          v23 = *(v16 + v20[8]);
          v24 = *(v16 + v20[9]);
          v25 = *v22;
          v26 = v22[1];
          *(boxed_opaque_existential_1Tm + 7) = 0u;
          boxed_opaque_existential_1Tm[9] = 0;
          *(boxed_opaque_existential_1Tm + 5) = 0u;

          sub_2703B4B64(&v48, (boxed_opaque_existential_1Tm + 5));
          v27 = (boxed_opaque_existential_1Tm + v20[7]);
          *v27 = v25;
          v27[1] = v26;
          *(boxed_opaque_existential_1Tm + v20[8]) = v23;
          *(boxed_opaque_existential_1Tm + v20[9]) = v24;
          *(boxed_opaque_existential_1Tm + v20[10]) = 0;
          *(boxed_opaque_existential_1Tm + v20[11]) = 0;
          __swift_destroy_boxed_opaque_existential_1(v60);
          sub_2703B4E54(v51, &v48);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v55 = 0;
            v53 = 0u;
            v54 = 0u;
          }

          __swift_destroy_boxed_opaque_existential_1(v51);
          __swift_destroy_boxed_opaque_existential_1(&v57);
          v12 = v46;
          v13 = v47;
          if (*(&v54 + 1))
          {
            goto LABEL_15;
          }

          sub_2703C2EFC(&v53, &qword_2807D2228, &unk_2705FA3E0);
LABEL_20:
          v14 += 40;
          if (!--v12)
          {
            goto LABEL_21;
          }
        }

        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        sub_2703C2EFC(&v48, &qword_2807D2278, &unk_2705EC650);
        sub_2703B291C(v60, &v53);
LABEL_15:
        sub_2703B291C(&v53, &v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = OUTLINED_FUNCTION_21_8();
          sub_270499284(v38, v39, v40, v13);
          v13 = v41;
          v56 = v41;
        }

        v30 = v13[2];
        v29 = v13[3];
        if (v30 >= v29 >> 1)
        {
          sub_270499284(v29 > 1, v30 + 1, 1, v13);
          v13 = v42;
          v56 = v42;
        }

        v31 = *&v58[8];
        v32 = *&v58[16];
        v33 = __swift_mutable_project_boxed_opaque_existential_1(&v57, *&v58[8]);
        MEMORY[0x28223BE20](v33);
        OUTLINED_FUNCTION_4_0();
        v36 = v35 - v34;
        (*(v37 + 16))(v35 - v34);
        sub_2704743B4(v30, v36, &v56, v31, v32);
        __swift_destroy_boxed_opaque_existential_1(&v57);
        goto LABEL_20;
      }

LABEL_21:

      sub_2703D7E30(v59);
    }

    else
    {
      sub_2703D7E30(v59);
    }
  }

  else
  {
    sub_2703C2EFC(v60, &qword_2807D2220, &unk_2705EC5B0);
  }

LABEL_24:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27043021C(uint64_t a1, uint64_t a2)
{
  sub_2705D4774();
  sub_2703DF344();
  return sub_2705D4744();
}

uint64_t sub_270430280@<X0>(uint64_t *a1@<X8>)
{
  sub_2704D5B94();
  v2 = sub_2704D5360();

  *a1 = v2;
  return result;
}

uint64_t sub_2704302CC@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490, &qword_2705E0140);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = swift_allocObject();
  memcpy((v10 + 16), a1, 0x330uLL);
  sub_2704358D4(a1, v18);
  sub_2705D6914();
  sub_2705D6A14();
  v18[0] = sub_270435B00;
  v18[1] = v10;
  v16 = *(v4 + 16);
  v16(v9, v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2210, &qword_2705EC598);
  sub_2703AFBC8(&qword_2807D2218, &qword_2807D2210, &qword_2705EC598, &unk_2705FA508);
  sub_2705D69E4();
  v11 = *(v4 + 8);
  v11(v7, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930, &unk_2705E13F0);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2705DC030;
  v16((v13 + v12), v9, v3);
  sub_2703D3E64(v13);
  swift_setDeallocating();
  sub_2704890E4();
  return (v11)(v9, v3);
}

uint64_t sub_270430544(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0, &qword_2705E8160);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  v7 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_270435B08(a1, v10);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  memcpy(v8 + 4, a2, 0x330uLL);
  memcpy(v8 + 106, v10, 0x50uLL);
  sub_2704358D4(a2, v10);
  sub_270482728();
}

uint64_t sub_27043066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_270430690, 0, 0);
}

uint64_t sub_270430690()
{
  sub_2705D78A4();
  *(v0 + 40) = sub_2705D7894();
  v2 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_270430724, v2, v1);
}

uint64_t sub_270430778(uint64_t a1)
{
  *(swift_task_alloc() + 16) = v4;
  sub_2705D4F14();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_27043080C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21F8, &qword_2705EC578);
  sub_2705D5E54();
  sub_270430880();
}

void sub_270430880()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  sub_27043157C();
  if (!*(&__src[1] + 1))
  {
    v34 = &qword_2807D2220;
    v35 = &unk_2705EC5B0;
LABEL_14:
    sub_2703C2EFC(__src, v34, v35);
    goto LABEL_15;
  }

  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_27042EC60();
  sub_270432BBC(__dst, v4, v5, &v116);

  v6 = v117;
  if (!v117)
  {
    sub_270435F0C(__dst);
    goto LABEL_15;
  }

  v7 = v116;
  v8 = v118;
  v9 = v119;
  v10 = v120;
  v101 = v119;
  v102 = v120;

  sub_270432C7C(&__dst[2] + 8, v9, v10, &v121);

  if (!v124)
  {

    sub_270435F0C(__dst);
    sub_2703C2EFC(&v121, &qword_2807D2228, &unk_2705FA3E0);
    memset(__src, 0, 40);
LABEL_13:
    v34 = &qword_2807D2230;
    v35 = &unk_2705EC5C0;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB0, &qword_2705DC8B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2238, &qword_2705EC5D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__src, 0, 40);
    goto LABEL_12;
  }

  if (!*(&__src[1] + 1))
  {
LABEL_12:

    sub_270435F0C(__dst);
    goto LABEL_13;
  }

  v81 = v7;
  v91 = v8;
  v96 = v3;
  sub_2703B291C(__src, &v126);
  v12 = *(&v127 + 1);
  v11 = v128;
  __swift_project_boxed_opaque_existential_1(&v126, *(&v127 + 1));
  v86 = *(v11 + 16);
  v124 = v12;
  v125 = v11;
  __swift_allocate_boxed_opaque_existential_1Tm(&v121);
  v86(0, v12, v11);
  sub_2703B4E54(&v121, __src);
  if (swift_dynamicCast())
  {
    sub_2703B291C(&v106, v109);
    v13 = v110;
    v14 = v111;
    v15 = __swift_project_boxed_opaque_existential_1(v109, v110);
    sub_270474448(&__dst[2] + 8, v15, &v101, v13, v14);
    *&__src[0] = v81;
    *(&__src[0] + 1) = v6;
    *&__src[1] = v91;
    *(&__src[1] + 1) = v101;
    *&__src[2] = v102;
    swift_getKeyPath();
    *&v106 = v1;
    OUTLINED_FUNCTION_1_29();
    v18 = sub_270435EC4(v16, v17, &unk_2705EC4B8);
    OUTLINED_FUNCTION_28_5(v18, v19, v20, v21, v22, v23, v24, v25, v77, v81, v86, v91, v96, v101, v102, v103, v104, v105, v106);
    sub_2705D45F4();

    *&v106 = v1;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_28_5(KeyPath, v27, v28, v29, v30, v31, v32, v33, v78, v82, v87, v92, v97, v101, v102, v103, v104, v105, v106);
    sub_2705D4614();

    swift_beginAccess();
    sub_270432D84(__dst, __src);
    swift_endAccess();

    *&v106 = v1;
    swift_getKeyPath();
    sub_2705D4604();

    sub_270435F0C(__dst);
    __swift_destroy_boxed_opaque_existential_1(v109);
  }

  else
  {

    sub_270435F0C(__dst);
    v106 = 0u;
    v107 = 0u;
    v108 = 0;
    sub_2703C2EFC(&v106, &qword_2807D2228, &unk_2705FA3E0);
  }

  v3 = v96;
  __swift_destroy_boxed_opaque_existential_1(&v121);
  __swift_destroy_boxed_opaque_existential_1(&v126);
LABEL_15:
  v36 = sub_27042EC60();
  sub_270432BBC(v3, v36, v37, &v121);

  v38 = v122;
  if (!v122)
  {
    goto LABEL_25;
  }

  v39 = v121;
  v40 = v123;
  v41 = v124;
  v42 = v125;
  v112 = v124;
  v113 = v125;

  sub_270432C7C(v3 + 40, v41, v42, &v126);

  if (!*(&v127 + 1))
  {

    sub_2703C2EFC(&v126, &qword_2807D2228, &unk_2705FA3E0);
    memset(__dst, 0, 40);
LABEL_24:
    sub_2703C2EFC(__dst, &qword_2807D2230, &unk_2705EC5C0);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB0, &qword_2705DC8B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2238, &qword_2705EC5D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__dst, 0, 40);
    goto LABEL_23;
  }

  if (!*(&__dst[1] + 1))
  {
LABEL_23:

    goto LABEL_24;
  }

  v83 = v39;
  v88 = v1;
  v93 = v40;
  v98 = v3;
  sub_2703B291C(__dst, v109);
  v44 = v110;
  v43 = v111;
  __swift_project_boxed_opaque_existential_1(v109, v110);
  v45 = *(v43 + 16);
  *(&v107 + 1) = v44;
  v108 = v43;
  __swift_allocate_boxed_opaque_existential_1Tm(&v106);
  v45(1, v44, v43);
  sub_2703B4E54(&v106, __dst);
  if (swift_dynamicCast())
  {
    sub_2703B291C(&v126, &v101);
    v46 = v104;
    v47 = v105;
    v48 = __swift_project_boxed_opaque_existential_1(&v101, v104);
    v49 = v98;
    sub_270474448(v98 + 40, v48, &v112, v46, v47);
    *&v126 = v83;
    *(&v126 + 1) = v38;
    *&v127 = v93;
    *(&v127 + 1) = v112;
    v128 = v113;
    swift_getKeyPath();
    v50 = v88;
    *&__dst[0] = v88;
    OUTLINED_FUNCTION_1_29();
    v53 = sub_270435EC4(v51, v52, &unk_2705EC4B8);
    OUTLINED_FUNCTION_16_8(v53, v54, v55, v56, v57, v58, v59, v60, v77, v83, v88, v93, v98, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109[0], v109[1], v109[2], v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), __dst[0]);
    sub_2705D45F4();

    *&__dst[0] = v50;
    v61 = swift_getKeyPath();
    OUTLINED_FUNCTION_16_8(v61, v62, v63, v64, v65, v66, v67, v68, v79, v84, v89, v94, v99, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109[0], v109[1], v109[2], v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), __dst[0]);
    sub_2705D4614();

    swift_beginAccess();
    sub_270432D84(v49, &v126);
    swift_endAccess();

    *&__dst[0] = v50;
    v69 = swift_getKeyPath();
    OUTLINED_FUNCTION_16_8(v69, v70, v71, v72, v73, v74, v75, v76, v80, v85, v90, v95, v100, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109[0], v109[1], v109[2], v110, v111, v112, v113, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), __dst[0]);
    sub_2705D4604();

    sub_270435B08(v49, __dst);
    sub_2704318E8(__dst);
    __swift_destroy_boxed_opaque_existential_1(&v101);
  }

  else
  {

    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    sub_2703C2EFC(&v126, &qword_2807D2228, &unk_2705FA3E0);
  }

  __swift_destroy_boxed_opaque_existential_1(&v106);
  __swift_destroy_boxed_opaque_existential_1(v109);
LABEL_25:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2704310B4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_270436178(__dst, &v3);
  return sub_270431110(__src);
}

uint64_t sub_270431110(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_36_2(KeyPath, sub_2704361D4, v2, &OBJC_IVAR____TtCV19UnifiedMessagingKit16GridSelectorView7Content___observationRegistrar, &qword_2807D2240, type metadata accessor for GridSelectorView.Content, &unk_2705EC4B8, v3, v5);
  sub_2704360B8(__dst);
}

uint64_t sub_2704311C4(uint64_t a1, const void *a2)
{
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  memcpy((a1 + 16), a2, 0x318uLL);
  sub_270436178(a2, &v5);
  return sub_2704360B8(__dst);
}

uint64_t sub_270431234(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_27043127C(v1, v2);
}

uint64_t sub_27043127C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_36_2(KeyPath, sub_27043604C, v3, &OBJC_IVAR____TtCV19UnifiedMessagingKit16GridSelectorView7Content___observationRegistrar, &qword_2807D2240, type metadata accessor for GridSelectorView.Content, &unk_2705EC4B8, v4, v6);
}

uint64_t sub_270431338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 808) = a2;
  *(a1 + 816) = a3;
}

uint64_t sub_2704313C4()
{
  swift_getKeyPath();
  sub_270435EC4(&qword_2807D2240, type metadata accessor for GridSelectorView.Content, &unk_2705EC4B8);
  sub_2705D45F4();
}

uint64_t sub_270431494(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_270433B00(KeyPath, sub_27043609C, &v5, &OBJC_IVAR____TtCV19UnifiedMessagingKit16GridSelectorView7Content___observationRegistrar, &qword_2807D2240, type metadata accessor for GridSelectorView.Content, &unk_2705EC4B8);
}

uint64_t sub_270431540(uint64_t a1, uint64_t a2)
{
  *(a1 + 824) = a2;
}

uint64_t sub_27043157C()
{
  OUTLINED_FUNCTION_31_4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_29();
  v4 = sub_270435EC4(v2, v3, &unk_2705EC4B8);
  OUTLINED_FUNCTION_4_9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v0);
  sub_2705D45F4();

  swift_beginAccess();
  return sub_2703CF590(v0 + 832, v1, &qword_2807D2220, &unk_2705EC5B0);
}

uint64_t sub_270431630@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v11 = *(result + 16);
  if (v11)
  {
    v2 = 0;
    v3 = result + 32;
    v10 = result + 32;
    while (2)
    {
      v4 = (v3 + 40 * v2);
      v5 = v4[1];
      v6 = v4[3];
      v12 = *v4;
      v13 = v2 + 1;
      v7 = *(v6 + 16);
      v8 = v6 + 32;
      swift_bridgeObjectRetain_n();
      v15 = v5;

      v9 = 0;
      while (v7 != v9)
      {
        if (v9 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        sub_2703B4E54(v8, v19);
        sub_2703B4E54(v19, v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB0, &qword_2705DC8B8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2238, &qword_2705EC5D0);
        if (swift_dynamicCast())
        {

          sub_2703C2EFC(v16, &qword_2807D2230, &unk_2705EC5C0);
          v18[0] = v12;
          v18[1] = v15;

          sub_2705D7CF4();
          __swift_project_boxed_opaque_existential_1(v19, v19[3]);
          sub_2705D67D4();

          return __swift_destroy_boxed_opaque_existential_1(v19);
        }

        ++v9;
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        sub_2703C2EFC(v16, &qword_2807D2230, &unk_2705EC5C0);
        result = __swift_destroy_boxed_opaque_existential_1(v19);
        v8 += 40;
      }

      result = swift_bridgeObjectRelease_n();
      v3 = v10;
      v2 = v13;
      if (v13 != v11)
      {
        continue;
      }

      break;
    }
  }

  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_2704318E8(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_36_2(KeyPath, sub_270435F64, v3, &OBJC_IVAR____TtCV19UnifiedMessagingKit16GridSelectorView7Content___observationRegistrar, &qword_2807D2240, type metadata accessor for GridSelectorView.Content, &unk_2705EC4B8, v4, v6);

  return sub_2703C2EFC(a1, &qword_2807D2220, &unk_2705EC5B0);
}

uint64_t sub_27043199C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_270435F80(a2, a1 + 832);
  return swift_endAccess();
}

uint64_t sub_270431A00(const void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_2705D7494();
  *(v2 + 808) = v4;
  *(v2 + 816) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1358, &qword_2705E7578);
  *(v2 + 824) = sub_2705D7494();
  *(v2 + 832) = 0u;
  *(v2 + 848) = 0u;
  *(v2 + 864) = 0u;
  *(v2 + 880) = 0u;
  *(v2 + 896) = 0u;
  sub_2705D4624();
  memcpy((v2 + 16), a1, 0x318uLL);
  sub_270431B64();
  v7 = v6;

  v8 = OUTLINED_FUNCTION_30_6();
  sub_27043127C(v8, v9);

  sub_270431494(v10);

  sub_2704328D4(v7, v12);

  sub_2704318E8(v12);
  return v2;
}

void sub_270431B64()
{
  OUTLINED_FUNCTION_26_1();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_21_3();
  v3 = type metadata accessor for ButtonComponentModel(v2);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27_5();
  v139 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v122 - v8;
  v134 = type metadata accessor for TextComponentModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27_5();
  v133 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v132 = &v122 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF190, &unk_2705DEE80);
  OUTLINED_FUNCTION_23_0(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v143 = &v122 - v17;
  v136 = type metadata accessor for ArtworkCaptionGridCellComponentModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_0();
  v142 = v20 - v19;
  v21 = *(v0 + 784);

  v22 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_30_6();
  v23 = sub_2705D7494();
  v179[20] = v22;
  v179[21] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1358, &qword_2705E7578);
  OUTLINED_FUNCTION_30_6();
  v140 = sub_2705D7494();
  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22;
  }

  v124 = 0x8000000270613D30;
  v126 = 0;
  v127 = 0x8000000270613D10;
  v179[18] = 0;
  v179[19] = 0;
  v179[17] = v24;
  v125 = v3;
  v135 = v9;
LABEL_5:
  sub_2704CD43C(v158);
  memcpy(v178, v158, 0x81uLL);
  memcpy(v179, v178, 0x81uLL);
  if (sub_2704369B4(v179) == 1)
  {

    OUTLINED_FUNCTION_25_1();
    return;
  }

  strcpy(v158, "section-");
  v158[9] = 0;
  *&v158[10] = 0;
  *&v158[12] = -402653184;
  *&v161 = v179[0];
  v25 = sub_2705D80A4();
  MEMORY[0x2743A3A90](v25);

  v26 = *v158;
  v27 = *&v158[8];
  v28 = MEMORY[0x277D84F90];
  v29 = sub_2705D7494();
  v176 = v28;
  v177 = v29;
  memcpy(v158, &v179[1], 0x79uLL);
  *&v145 = v26;
  *(&v145 + 1) = v27;
  sub_270432EF8();
  v123 = v30;
  v137 = v179[5];

  sub_2703C2EFC(v178, &qword_2807D2398, &qword_2705ECBE0);
  v31 = 0;
  v32 = 32;
  while (1)
  {
    v33 = *(v137 + 16);
    if (v31 == v33)
    {

      v121 = v145;
      v161 = v145;

      OUTLINED_FUNCTION_24_9(&v161);
      v180 = v121;
      v181 = v123;
      v182 = v176;
      v183 = v177;
      sub_270432D84(v158, &v180);

      sub_2703D7E30(v158);
      goto LABEL_5;
    }

    if (v31 >= v33)
    {
      break;
    }

    v141 = v32;
    memcpy(v159, (v137 + v32), sizeof(v159));
    memcpy(&v158[8], v159, 0x280uLL);
    sub_2704166B8(&v158[8], v160);
    v151[0] = v145;

    sub_270416714(v159, v158);
    MEMORY[0x2743A3A90](0x2D6D6574692DLL, 0xE600000000000000);
    v146 = v31;
    *v158 = v31;
    v34 = sub_2705D80A4();
    MEMORY[0x2743A3A90](v34);

    v35 = v151[0];
    sub_2704166B8(v160, &v161);
    v147 = v35;
    *v158 = v35;

    OUTLINED_FUNCTION_24_9(v158);
    sub_2705D6A54();
    OUTLINED_FUNCTION_3_14();
    v144 = v36;
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
    v40 = v173;
    v41 = v174;
    v42 = v175;
    v152 = v173;
    v153 = v174;
    v154 = v175;
    memcpy(v158, v164, 0x160uLL);
    if (get_enum_tag_for_layout_string_19UnifiedMessagingKit13BrandingModelVSg_0(v158) == 1)
    {
      sub_2704369CC(v151);
      v43 = v151;
LABEL_14:
      memcpy(v148, v43, 0xB0uLL);
      goto LABEL_15;
    }

    memcpy(v151, v158, sizeof(v151));
    if (!sub_2703BB658(v151))
    {
      v44 = sub_2703BB26C(v151);
      memcpy(v149, v44, sizeof(v149));
      CGSizeMake();
      memcpy(v150, v164, sizeof(v150));
      sub_2703BE7D0(v150, v148);
      v43 = v149;
      goto LABEL_14;
    }

    sub_2704369CC(v148);
LABEL_15:
    memcpy(v151, v148, 0xB0uLL);
    v45 = v172;
    type metadata accessor for ArtworkCaptionGridCellModel(0);
    v46 = swift_allocObject();
    sub_2703C3A18(v40, *(&v40 + 1), v41, v42);
    sub_270433F10(&v152, v151, v45 & 1);
    v48 = v142;
    v47 = v143;
    *(v142 + 32) = v157;
    v49 = v156;
    *v48 = v155;
    *(v48 + 16) = v49;
    *(v48 + 40) = 0u;
    *(v48 + 56) = 0u;
    *(v48 + 72) = 0;
    v50 = v136;
    sub_2703CF3E8(v47, v48 + *(v136 + 24), &qword_2807CF190, &unk_2705DEE80);
    *(v48 + *(v50 + 28)) = v46;
    *(&v151[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23A0, &qword_2705ECBE8);
    *&v151[2] = sub_2703AFBC8(&qword_2807D23A8, &qword_2807D23A0, &qword_2705ECBE8, &unk_2705FA548);
    __swift_allocate_boxed_opaque_existential_1Tm(v151);
    sub_2705D6764();
    *v150 = v145;

    sub_2705D7CF4();
    v51 = *(&v147 + 1);
    v52 = v147;
    *v150 = v147;

    OUTLINED_FUNCTION_24_9(v150);
    sub_2703B4B64(v151, v48 + 40);
    *v150 = __PAIR128__(v51, v52);

    OUTLINED_FUNCTION_24_9(v150);
    v150[3] = v50;
    v150[4] = sub_270435EC4(&qword_2807D2300, type metadata accessor for ArtworkCaptionGridCellComponentModel, &unk_2705EC7C8);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v150);
    OUTLINED_FUNCTION_10_17();
    sub_2704367E8(v48, boxed_opaque_existential_1Tm);
    v54 = v177;
    if (*(v177 + 16) && (v55 = sub_2703D7390(v151), (v56 & 1) != 0))
    {
      v57 = *(*(v54 + 56) + 8 * v55);
      v58 = v176;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        sub_270435E80(v58);
        v58 = v120;
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }
      }

      if (v57 >= v58[2])
      {
        goto LABEL_47;
      }

      __swift_assign_boxed_opaque_existential_1(&v58[5 * v57 + 4], v150);
      v176 = v58;
    }

    else
    {
      sub_2704369D4(v151, boxed_opaque_existential_1Tm, &v176);
    }

    __swift_destroy_boxed_opaque_existential_1(v150);
    sub_2703D7E30(v151);
    v59 = v166;
    v60 = v146;
    if (v166)
    {
      v61 = v167;
      v62 = v168;
      v138 = v165;
      if (v169)
      {
        v63 = v171;
        v64 = v170;
        *&v151[0] = 0xD000000000000017;
        *(&v151[0] + 1) = v124;
        v130 = v167;
        v131 = v166;
        v129 = v168;
        sub_2703C3A18(v165, v166, v167, v168);
        v65 = OUTLINED_FUNCTION_33_4();
        sub_2703C3A18(v65, v66, v67, v68);
        v69 = v132;
        OUTLINED_FUNCTION_24_9(v151);
        v70 = sub_2705D58B4();
        v71 = sub_2705D60A4();
        v128 = v72;
        v73 = v134;
        OUTLINED_FUNCTION_3_14();
        __swift_storeEnumTagSinglePayload(v74, v75, v76, v144);
        OUTLINED_FUNCTION_20_7(v69 + *(v73 + 52));

        v77 = sub_2705D5D54();
        v78 = OUTLINED_FUNCTION_33_4();
        sub_2703C3A5C(v78, v79, v80, v81);
        *(v69 + 40) = 0x4020000000000000;
        *(v69 + 48) = 0;
        *(v69 + 56) = v70;
        *(v69 + 64) = 0;
        *(v69 + 72) = 1;
        *(v69 + 80) = v77;
        *(v69 + 88) = v71;
        *(v69 + 96) = v128;
        *(v69 + 104) = 0;
        *(v69 + 112) = 1;
        v82 = (v69 + *(v73 + 56));
        *v82 = v64;
        v82[1] = v63;
        OUTLINED_FUNCTION_0_26();
        sub_2704367E8(v69, v133);
        sub_270499284(0, 1, 1, MEMORY[0x277D84F90]);
        v84 = v83;
        v86 = v83[2];
        v85 = v83[3];
        if (v86 >= v85 >> 1)
        {
          sub_270499284(v85 > 1, v86 + 1, 1, v83);
          v84 = v119;
        }

        v87 = v135;
        sub_270436C28(v132, type metadata accessor for TextComponentModel);
        *(&v151[1] + 1) = v134;
        OUTLINED_FUNCTION_5_24();
        *&v151[2] = sub_270435EC4(&qword_2807D23B0, v88, &unk_270608CD8);
        __swift_allocate_boxed_opaque_existential_1Tm(v151);
        OUTLINED_FUNCTION_0_26();
        v89 = v133;
        sub_2704367E8(v133, v90);
        v84[2] = v86 + 1;
        sub_2703B291C(v151, &v84[5 * v86 + 4]);
        sub_270436C28(v89, type metadata accessor for TextComponentModel);
        v3 = v125;
        v61 = v130;
        v59 = v131;
        v62 = v129;
      }

      else
      {

        v84 = MEMORY[0x277D84F90];
        v87 = v135;
      }

      *&v151[0] = 0xD000000000000018;
      *(&v151[0] + 1) = v127;
      OUTLINED_FUNCTION_24_9(v151);
      OUTLINED_FUNCTION_29_4();
      OUTLINED_FUNCTION_3_14();
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v144);

      v94 = sub_2705D58C4();
      *(v87 + 40) = 0u;
      *(v87 + 56) = 0u;
      *(v87 + 72) = 0;
      sub_2703B4B64(v151, v87 + 40);
      sub_2703C3A5C(v138, v59, v61, v62);
      v95 = (v87 + v3[7]);
      *v95 = v61;
      v95[1] = v62;
      *(v87 + v3[8]) = v94;
      *(v87 + v3[9]) = 0;
      *(v87 + v3[10]) = 1;
      *(v87 + v3[11]) = 0;
      v96 = v163;
      if (v163 == 254)
      {
        OUTLINED_FUNCTION_29_4();
      }

      else
      {
        v97 = *(&v161 + 1);
        v98 = v162;
        *v150 = v161;
        v150[2] = v162;
        LOBYTE(v150[3]) = v163;

        sub_2703AE9E8(v97, v98, v96);
        v99 = v126;
        sub_2703B3B04(v150, v151);
        if (v99)
        {

          memset(v151, 0, 40);
          OUTLINED_FUNCTION_34_4();
          v126 = 0;
        }

        else
        {
          v126 = 0;
          OUTLINED_FUNCTION_34_4();
        }

        v87 = v135;
      }

      sub_2703B4B64(v151, v87 + 40);
      OUTLINED_FUNCTION_8_21();
      sub_2704367E8(v87, v139);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = OUTLINED_FUNCTION_21_8();
        sub_270499284(v111, v112, v113, v84);
        v84 = v114;
      }

      v101 = v84[2];
      v100 = v84[3];
      if (v101 >= v100 >> 1)
      {
        v115 = OUTLINED_FUNCTION_12_14(v100);
        sub_270499284(v115, v116, v117, v84);
        v84 = v118;
      }

      *(&v151[1] + 1) = v3;
      *&v151[2] = sub_270435EC4(&qword_2807D0100, type metadata accessor for ButtonComponentModel, &unk_2705E3044);
      __swift_allocate_boxed_opaque_existential_1Tm(v151);
      OUTLINED_FUNCTION_8_21();
      v102 = v139;
      sub_2704367E8(v139, v103);
      v84[2] = v101 + 1;
      sub_2703B291C(v151, &v84[5 * v101 + 4]);
      sub_270436C28(v102, type metadata accessor for ButtonComponentModel);
      *v150 = v147;
      OUTLINED_FUNCTION_24_9(v150);
      v104 = v140;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150[0] = v104;
      sub_2703BC598(v84, v151, isUniquelyReferenced_nonNull_native, v106, v107, v108, v109, v110, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
      sub_2704167C4(v160);
      sub_2703D7E30(v151);
      v140 = v150[0];
      sub_270436C28(v87, type metadata accessor for ButtonComponentModel);
      v60 = v146;
    }

    else
    {

      sub_2704167C4(v160);
    }

    sub_270436C28(v142, type metadata accessor for ArtworkCaptionGridCellComponentModel);
    v32 = v141 + 640;
    v31 = v60 + 1;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_2704328D4@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = &qword_2807CEDB0;
    v6 = &qword_2705DC8B8;
    v7 = &qword_2807D2238;
    v8 = &qword_2705EC5D0;
    v21 = result + 32;
    v22 = *(result + 16);
    while (1)
    {
      v9 = (v4 + 40 * v3);
      v10 = v9[3];
      v26 = *(v10 + 16);
      if (v26)
      {
        break;
      }

LABEL_13:
      ++v3;

      if (v3 == v2)
      {
        goto LABEL_14;
      }
    }

    v11 = v9[1];
    v24 = *v9;
    v25 = v3;
    v12 = v10 + 32;
    swift_bridgeObjectRetain_n();

    v13 = 0;
    while (v13 < *(v10 + 16))
    {
      sub_2703B4E54(v12, v33);
      sub_2703B4E54(v33, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      if (swift_dynamicCast())
      {
        v14 = v10;
        v15 = v8;
        v16 = v7;
        v17 = v6;
        v18 = v5;
        sub_2703B291C(v27, v30);
        v19 = v31;
        v20 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        if ((*(v20 + 8))(v19, v20))
        {

          v29[0] = v24;
          v29[1] = v11;

          sub_2705D7CF4();
          __swift_project_boxed_opaque_existential_1(v33, v33[3]);
          sub_2705D67D4();

          __swift_destroy_boxed_opaque_existential_1(v30);
          return __swift_destroy_boxed_opaque_existential_1(v33);
        }

        __swift_destroy_boxed_opaque_existential_1(v30);
        v5 = v18;
        v6 = v17;
        v7 = v16;
        v8 = v15;
        v10 = v14;
      }

      else
      {
        v28 = 0;
        memset(v27, 0, sizeof(v27));
        sub_2703C2EFC(v27, &qword_2807D2230, &unk_2705EC5C0);
      }

      ++v13;
      result = __swift_destroy_boxed_opaque_existential_1(v33);
      v12 += 40;
      if (v26 == v13)
      {

        v4 = v21;
        v2 = v22;
        v3 = v25;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_270432BBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!*(a3 + 16) || (result = sub_2703D7390(result), (v7 & 1) == 0))
  {
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_7;
  }

  v8 = *(*(a3 + 56) + 8 * result);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(a2 + 16))
  {
    v9 = (a2 + 40 * v8);
    v11 = v9[4];
    v10 = v9[5];
    v12 = v9[6];
    v13 = v9[7];
    v14 = v9[8];

LABEL_7:
    *a4 = v11;
    a4[1] = v10;
    a4[2] = v12;
    a4[3] = v13;
    a4[4] = v14;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_270432C7C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_2703D7390(result), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 8 * result);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(a2 + 16))
    {
      return sub_2703B4E54(a2 + 40 * v8 + 32, a4);
    }

    __break(1u);
  }

  else
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

unint64_t sub_270432D00@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a4 + 16) && (result = sub_2703D7318(result, a2), (v8 & 1) != 0))
  {
    v9 = *(*(a4 + 56) + 8 * result);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *(a3 + 16))
    {
      return sub_2703B4E54(a3 + 40 * v9 + 32, a5);
    }

    __break(1u);
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

void sub_270432D84(uint64_t a1, __int128 *a2)
{
  v5 = sub_2703D51F4(a1, v2[1]);
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    v8 = *v2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_270435E6C(v8);
      v8 = v13;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < *(v8 + 16))
        {
          v9 = v8 + 40 * v7;
          v11 = a2[1];
          v18 = *a2;
          v10 = v18;
          v12 = *(a2 + 2);
          v16 = *(a2 + 3);
          v17 = v12;
          v15 = *(a2 + 4);
          *(v9 + 64) = v15;
          *(v9 + 32) = v10;
          *(v9 + 48) = v11;
          sub_270435FF0(&v18, v14);
          sub_2703CF590(&v17, v14, &qword_2807D1358, &qword_2705E7578);
          sub_2703CF590(&v16, v14, &qword_2807D1358, &qword_2705E7578);
          sub_2703CF590(&v15, v14, &qword_2807D2248, &qword_2705EC630);

          *v2 = v8;
          return;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  sub_2704356F8(a1, a2);
}

void sub_270432EF8()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_21_3();
  v6 = type metadata accessor for TextComponentModel(v5);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_5();
  v74 = v8 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v68 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - v17;
  v19 = v0[1];
  v20 = v0[10];
  v21 = v0[12];
  v72 = v0[11];
  v73 = v21;
  if (!v19)
  {
    v34 = MEMORY[0x277D84F90];
    if (!v20)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v22 = v0[3];
  v68 = v0[2];
  v69 = v20;
  v70 = v4;
  v71 = v2;
  v75 = v4;
  v76 = v2;

  MEMORY[0x2743A3A90](0x7265646165682DLL, 0xE700000000000000);
  sub_2705D7CF4();
  v23 = sub_2705D58C4();
  v24 = sub_2705D5D54();
  v25 = sub_2705D60A4();
  v27 = v26;
  sub_2705D6A54();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_20_7(&v18[*(v6 + 52)]);
  *(v18 + 5) = 0;
  v18[48] = 0;
  *(v18 + 7) = v23;
  *(v18 + 8) = 0;
  v18[72] = 1;
  *(v18 + 10) = v24;
  *(v18 + 11) = v25;
  *(v18 + 12) = v27;
  *(v18 + 13) = 0x4030000000000000;
  *(v18 + 56) = 256;
  v32 = &v18[*(v6 + 56)];
  *v32 = v68;
  *(v32 + 1) = v22;
  OUTLINED_FUNCTION_0_26();
  sub_2704367E8(v18, v16);

  sub_270499284(0, 1, 1, MEMORY[0x277D84F90]);
  v34 = v33;
  v35 = v33[3];
  if (v33[2] >= v35 >> 1)
  {
    v57 = OUTLINED_FUNCTION_12_14(v35);
    sub_270499284(v57, v58, v59, v34);
    v34 = v60;
  }

  OUTLINED_FUNCTION_11_17();
  sub_270436C28(v18, v36);
  v77 = v6;
  OUTLINED_FUNCTION_5_24();
  v78 = sub_270435EC4(v37, v38, &unk_270608CD8);
  __swift_allocate_boxed_opaque_existential_1Tm(&v75);
  OUTLINED_FUNCTION_0_26();
  sub_2704367E8(v16, v39);
  OUTLINED_FUNCTION_25_6();
  sub_270436C28(v16, v27);
  v4 = v70;
  v2 = v71;
  if (v69)
  {
LABEL_7:
    v75 = v4;
    v76 = v2;

    MEMORY[0x2743A3A90](0x646165686275732DLL, 0xEA00000000007265);
    sub_2705D7CF4();
    v40 = sub_2705D5894();
    v41 = sub_2705D5C74();
    v42 = sub_2705D60A4();
    v44 = v43;
    sub_2705D6A54();
    OUTLINED_FUNCTION_3_14();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    OUTLINED_FUNCTION_20_7(&v13[*(v6 + 52)]);
    *(v13 + 5) = 0;
    v13[48] = 0;
    *(v13 + 7) = v40;
    *(v13 + 8) = 0;
    v13[72] = 1;
    *(v13 + 10) = v41;
    *(v13 + 11) = v42;
    *(v13 + 12) = v44;
    *(v13 + 13) = 0x4030000000000000;
    *(v13 + 56) = 256;
    v49 = &v13[*(v6 + 56)];
    v50 = v73;
    *v49 = v72;
    *(v49 + 1) = v50;
    OUTLINED_FUNCTION_0_26();
    v51 = v74;
    sub_2704367E8(v13, v74);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = OUTLINED_FUNCTION_21_8();
      sub_270499284(v61, v62, v63, v34);
      v34 = v64;
    }

    v52 = v34[3];
    if (v34[2] >= v52 >> 1)
    {
      v65 = OUTLINED_FUNCTION_12_14(v52);
      sub_270499284(v65, v66, v67, v34);
    }

    OUTLINED_FUNCTION_11_17();
    sub_270436C28(v13, v53);
    v77 = v6;
    OUTLINED_FUNCTION_5_24();
    v78 = sub_270435EC4(v54, v55, &unk_270608CD8);
    __swift_allocate_boxed_opaque_existential_1Tm(&v75);
    OUTLINED_FUNCTION_0_26();
    sub_2704367E8(v51, v56);
    OUTLINED_FUNCTION_25_6();
    sub_270436C28(v51, v50);
  }

LABEL_12:
  OUTLINED_FUNCTION_25_1();
}

char *sub_27043332C()
{
  memcpy(v4, (v0 + 16), 0x318uLL);
  sub_2704360B8(v4);

  sub_2703C2EFC(v0 + 832, &qword_2807D2220, &unk_2705EC5B0);
  v1 = OBJC_IVAR____TtCV19UnifiedMessagingKit16GridSelectorView7Content___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_270433418(uint64_t a1)
{
  result = sub_2705D4634();
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

double sub_2704334D4@<D0>(uint64_t a1@<X8>)
{
  sub_2703CF590(v1, v5, &qword_2807CF140, &qword_2705DEE60);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_27043352C@<X0>(uint64_t x8_0@<X8>)
{
  v4 = OUTLINED_FUNCTION_30_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23_0(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = type metadata accessor for ArtworkCaptionGridCellComponentModel(0);
  sub_2703CF590(v2 + *(v10 + 24), v9, &qword_2807CF130, &unk_2705DEE50);
  return sub_2703CF3E8(v9, x8_0, &qword_2807CF190, &unk_2705DEE80);
}

uint64_t sub_270433650()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_24();
  v3 = sub_270435EC4(v1, v2, &unk_2705EC49C);
  OUTLINED_FUNCTION_4_9(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2705D45F4();

  return *(v0 + 224);
}

uint64_t sub_2704336D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ArtworkCaptionGridCellComponentModel(0);
  sub_270433730(a1);
  OUTLINED_FUNCTION_10_17();
  return sub_2704367E8(v2, a2);
}

uint64_t sub_270433730(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 224) == (result & 1))
  {
    *(v1 + 224) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x28223BE20](KeyPath);
    v5[2] = v1;
    v6 = v2;
    sub_270433B00(v4, sub_27043466C, v5, &OBJC_IVAR____TtC19UnifiedMessagingKit27ArtworkCaptionGridCellModel___observationRegistrar, &qword_2807D21D8, type metadata accessor for ArtworkCaptionGridCellModel, &unk_2705EC49C);
  }

  return result;
}

void sub_270433818()
{
  OUTLINED_FUNCTION_31_4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_24();
  v4 = sub_270435EC4(v2, v3, &unk_2705EC49C);
  OUTLINED_FUNCTION_4_9(v4, v5, v6, v7, v8, v9, v10, v11, v16, v0);
  sub_2705D45F4();

  v12 = v0[2];
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[5];
  *v1 = v12;
  v1[1] = v13;
  v1[2] = v14;
  v1[3] = v15;
  sub_2703C3A18(v12, v13, v14, v15);
}

double sub_2704338B0@<D0>(_OWORD *a1@<X8>)
{
  sub_270433818();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void sub_270433938()
{
  OUTLINED_FUNCTION_26_1();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = OUTLINED_FUNCTION_1_11();
  sub_2703C3A18(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_1_11();
  v14 = sub_2703CBC68(v10, v11, v12, v13, v2, v3, v4, v5);
  v15 = OUTLINED_FUNCTION_1_11();
  sub_2703C3A5C(v15, v16, v17, v18);
  if (v14)
  {
    KeyPath = swift_getKeyPath();
    v20 = MEMORY[0x28223BE20](KeyPath);
    v26[2] = v0;
    v26[3] = v2;
    v26[4] = v3;
    v26[5] = v4;
    v26[6] = v5;
    sub_270433B00(v20, sub_270434684, v26, &OBJC_IVAR____TtC19UnifiedMessagingKit27ArtworkCaptionGridCellModel___observationRegistrar, &qword_2807D21D8, type metadata accessor for ArtworkCaptionGridCellModel, &unk_2705EC49C);
    sub_2703C3A5C(v2, v3, v4, v5);

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_26_6();
    v0[2] = v2;
    v0[3] = v3;
    v0[4] = v4;
    v0[5] = v5;
    OUTLINED_FUNCTION_25_1();

    sub_2703C3A5C(v21, v22, v23, v24);
  }
}

void sub_270433A94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  a1[5] = a5;
  sub_2703C3A18(a2, a3, a4, a5);
  sub_2703C3A5C(v5, v6, v7, v8);
}

uint64_t sub_270433B90()
{
  OUTLINED_FUNCTION_31_4();
  swift_getKeyPath();
  __dst[0] = v0;
  OUTLINED_FUNCTION_4_24();
  sub_270435EC4(v2, v3, &unk_2705EC49C);
  sub_2705D45F4();

  memcpy(__dst, (v0 + 48), sizeof(__dst));
  memcpy(v1, (v0 + 48), 0xB0uLL);
  return sub_2703CF590(__dst, &v5, &qword_2807D22D0, &unk_2705EC740);
}

uint64_t sub_270433CA4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_2703CF590(__dst, &v3, &qword_2807D22D0, &unk_2705EC740);
  return sub_270433D10(__src);
}

uint64_t sub_270433D10(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_36_2(KeyPath, sub_270436854, v2, &OBJC_IVAR____TtC19UnifiedMessagingKit27ArtworkCaptionGridCellModel___observationRegistrar, &qword_2807D21D8, type metadata accessor for ArtworkCaptionGridCellModel, &unk_2705EC49C, v3, v5);
  sub_2703C2EFC(__dst, &qword_2807D22D0, &unk_2705EC740);
}

uint64_t sub_270433DD4(uint64_t a1, const void *a2)
{
  memcpy(__dst, (a1 + 48), sizeof(__dst));
  memcpy((a1 + 48), a2, 0xB0uLL);
  sub_2703CF590(a2, &v5, &qword_2807D22D0, &unk_2705EC740);
  return sub_2703C2EFC(__dst, &qword_2807D22D0, &unk_2705EC740);
}

uint64_t sub_270433E6C()
{
  if ((sub_270433650() & 1) == 0)
  {
    if (qword_2807CE7A8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_2807CE790 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
}

uint64_t sub_270433F10(_OWORD *a1, const void *a2, char a3)
{
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  sub_2704369CC(__src);
  memcpy((v3 + 48), __src, 0xB0uLL);
  sub_2705D4624();
  v7 = OUTLINED_FUNCTION_26_6();
  sub_2703C3A5C(v7, v8, v9, v10);
  v11 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v11;
  memcpy(__dst, (v3 + 48), 0xB0uLL);
  sub_2703C2EFC(__dst, &qword_2807D22D0, &unk_2705EC740);
  memcpy((v3 + 48), a2, 0xB0uLL);
  *(v3 + 224) = a3;
  return v3;
}

uint64_t sub_270433FC8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_6();
  sub_2703C3A5C(v2, v3, v4, v5);
  memcpy(v9, (v1 + 48), sizeof(v9));
  sub_2703C2EFC(v9, &qword_2807D22D0, &unk_2705EC740);
  v6 = OBJC_IVAR____TtC19UnifiedMessagingKit27ArtworkCaptionGridCellModel___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v7 + 8))(v1 + v6);
  return v1;
}

uint64_t sub_270434070(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2704340F4(uint64_t a1)
{
  result = sub_2705D4634();
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

uint64_t sub_2704341A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_2704341E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270434250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 816))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 792);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_270434290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 808) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 816) = 1;
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
      *(result + 792) = (a2 - 1);
      return result;
    }

    *(result + 816) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2704343B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_2704343F8(uint64_t result, int a2, int a3)
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

uint64_t sub_27043446C()
{
  sub_2705D7D04();

  strcpy(v7, "{\n  caption: ");
  HIWORD(v7[1]) = -4864;
  sub_270433818();

  sub_2703C3A5C(0, 0xE000000000000000, v5, v6);
  MEMORY[0x2743A3A90]();

  MEMORY[0x2743A3A90](0x6C6553736920200ALL, 0xEF203A6465746365);
  v0 = sub_270433650();
  v1 = (v0 & 1) == 0;
  if (v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x2743A3A90](v2, v3);

  MEMORY[0x2743A3A90](32010, 0xE200000000000000);
  return v7[0];
}

uint64_t sub_270434614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270433650();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2704346A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ArtworkCaptionGridCellComponentModel(0) + 28));
}

uint64_t sub_2704346F4@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, 0xB0uLL);
  v3 = sub_2705D5CD4();
  v4 = sub_2705D60A4();
  v6 = v5;
  v7 = swift_allocObject();
  memcpy((v7 + 16), v1, 0xB0uLL);
  *a1 = v3;
  a1[1] = sub_270436F34;
  a1[2] = v7;
  a1[3] = v4;
  a1[4] = v6;
  return sub_270436F3C(__dst, v9);
}

void *sub_2704347A0@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2705D6734();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C0, &unk_2705EF750);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  *v10 = sub_2705D53C4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  memcpy(v23, a1, 0xB0uLL);
  if (sub_270436F74(v23) == 1)
  {
    sub_2705D6724();
  }

  else
  {
    v11 = *&v23[7];
    v12 = *&v23[8];
    v20 = v23[9];
    v21 = a2;
    v13 = v23[10];
    type metadata accessor for AMSMediaArtworkColorKind(0);
    type metadata accessor for CGColor(0);
    sub_270435EC4(&qword_2807CEB80, type metadata accessor for AMSMediaArtworkColorKind, &unk_2705DB288);

    v14 = sub_2705D7494();
    v15 = v13;
    a2 = v21;
    v16 = sub_27047D104(v20, v15, v14, v12, v11);
    v22[3] = &type metadata for CoreMediaArtworkSource;
    v22[4] = sub_270436F8C();
    v22[0] = v16;
    sub_2705D6744();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C8, &unk_2705ECC00);
  sub_2705D4EB4();
  sub_2705D6714();
  (*(v5 + 8))(v7, v4);
  sub_2705D4EB4();
  sub_2705D4EB4();
  sub_2705D60A4();
  sub_2705D5094(v22);
  sub_2703CF3E8(v10, a2, &qword_2807D23C0, &unk_2705EF750);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23D0, &unk_2705EF760);
  return memcpy((a2 + *(v17 + 36)), v22, 0x70uLL);
}

void *sub_270434B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2705D53C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2318, &qword_2705EC950);
  return sub_270434B68(a1, a2 + *(v4 + 44));
}

void *sub_270434B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v53 = sub_2705D6024();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2320, &qword_2705EC958) - 8;
  MEMORY[0x28223BE20](v3);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2328, &qword_2705EC960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2330, &qword_2705EC968);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v54 = sub_2705D5CD4();
  v12 = sub_2705D60A4();
  v14 = v13;
  sub_270435140(v58);
  memcpy(v60, v58, 0x2B8uLL);
  v60[87] = v12;
  v60[88] = v14;
  memcpy(v56, v60, sizeof(v56));
  memcpy(v61, v58, sizeof(v61));
  v62 = v12;
  v63 = v14;
  sub_2703CF590(v60, v57, &qword_2807D2338, &qword_2705EC970);
  sub_2703C2EFC(v61, &qword_2807D2338, &qword_2705EC970);
  sub_2705D60A4();
  sub_2705D5094(v57);
  v59 = 0;
  v15 = *(sub_2705D5064() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_2705D5344();
  (*(*(v17 - 8) + 104))(&v5[v15], v16, v17);
  __asm { FMOV            V0.2D, #10.0 }

  *v5 = _Q0;
  v50 = v3;
  sub_2705D6004();
  *&v5[*(v3 + 64)] = 256;
  v23 = sub_270433E6C();
  sub_270433650();
  sub_2705D4DC4();
  sub_2704367E8(v5, v8);
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5C0, &unk_2705E0530) + 36)];
  v25 = *&v58[16];
  *v24 = *v58;
  *(v24 + 1) = v25;
  *(v24 + 4) = *&v58[32];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5C8, &unk_2705E5BD0);
  *&v8[*(v26 + 52)] = v23;
  *&v8[*(v26 + 56)] = 256;
  v27 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2340, &qword_2705EC978) + 36)];
  sub_2703CF590(v5, v27, &qword_2807D2320, &qword_2705EC958);
  v28 = sub_2705D60A4();
  v30 = v29;
  sub_2703C2EFC(v5, &qword_2807D2320, &qword_2705EC958);
  v31 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2348, &qword_2705EC980) + 36));
  *v31 = v28;
  v31[1] = v30;
  v32 = v52;
  sub_2705D6004();
  sub_2704367E8(v8, v11);
  v33 = v50;
  v34 = v51;
  v35 = v53;
  (*(v51 + 16))(&v11[*(v50 + 60)], v32, v53);
  *&v11[*(v33 + 64)] = 256;
  v49 = v11;
  v36 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2350, &qword_2705EC988) + 36)];
  sub_2703CF590(v8, v36, &qword_2807D2328, &qword_2705EC960);
  v37 = sub_2705D60A4();
  v39 = v38;
  (*(v34 + 8))(v32, v35);
  sub_2703C2EFC(v8, &qword_2807D2328, &qword_2705EC960);
  v40 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2358, &qword_2705EC990) + 36));
  *v40 = v37;
  v40[1] = v39;
  v41 = sub_2705D60A4();
  v43 = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2360, &qword_2705EC998);
  v45 = v55;
  v46 = v55 + *(v44 + 36);
  sub_2703CF3E8(v49, v46, &qword_2807D2330, &qword_2705EC968);
  v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2368, &qword_2705EC9A0) + 36));
  *v47 = v41;
  v47[1] = v43;
  *v45 = v54;
  memcpy((v45 + 8), v56, 0x2C8uLL);
  result = memcpy((v45 + 720), v57, 0x70uLL);
  *(v45 + 832) = 0x3FF0000000000000;
  *(v45 + 840) = 0;
  return result;
}

double sub_270435140@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2705D53C4();
  v36 = 1;
  sub_270435348(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v40, __src, sizeof(v40));
  sub_2703CF590(__dst, v33, &qword_2807D2370, &qword_2705EC9A8);
  sub_2703C2EFC(v40, &qword_2807D2370, &qword_2705EC9A8);
  memcpy(&v35[7], __dst, 0x1A0uLL);
  v4 = v36;
  sub_2705D60A4();
  sub_2705D5094(__src);
  v5 = sub_2705D56B4();
  sub_2705D4D34();
  v31 = v7;
  v32 = v6;
  v29 = v9;
  v30 = v8;
  v37 = 0;
  v10 = sub_2705D56D4();
  sub_2705D4D34();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v38 = 0;
  v19 = sub_2705D56E4();
  sub_2705D4D34();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  memcpy((a2 + 17), v35, 0x1A7uLL);
  memcpy((a2 + 440), __src, 0x70uLL);
  *(a2 + 552) = v5;
  *(a2 + 560) = v32;
  *(a2 + 568) = v31;
  result = v29;
  *(a2 + 576) = v30;
  *(a2 + 584) = v29;
  *(a2 + 592) = 0;
  *(a2 + 600) = v10;
  *(a2 + 608) = v12;
  *(a2 + 616) = v14;
  *(a2 + 624) = v16;
  *(a2 + 632) = v18;
  *(a2 + 640) = 0;
  *(a2 + 648) = v19;
  *(a2 + 656) = v21;
  *(a2 + 664) = v23;
  *(a2 + 672) = v25;
  *(a2 + 680) = v27;
  *(a2 + 688) = 0;
  return result;
}

uint64_t sub_270435348@<X0>(void *a1@<X8>)
{
  sub_270433B90();
  sub_2705D60A4();
  sub_2705D5094(&__src[22]);
  v42 = 0;
  sub_270433818();
  if (v39[1])
  {
    __dst[1] = v39[3];
    sub_2703C2F54();

    v1 = sub_2705D5944();
    v3 = v2;
    v5 = v4;
    sub_2703C3A5C(v39[0], v39[1], v39[2], v39[3]);
    sub_2705D5894();
    v6 = sub_2705D5914();
    v8 = v7;
    v10 = v9;

    sub_2703CEDB0(v1, v3, v5 & 1);

    __dst[0] = sub_2705D5D54();
    v11 = sub_2705D58F4();
    v32 = v12;
    v33 = v11;
    v14 = v13;
    v31 = v15;
    sub_2703CEDB0(v6, v8, v10 & 1);

    KeyPath = swift_getKeyPath();
    v16 = sub_2705D56D4();
    sub_2705D4D34();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    LOBYTE(__dst[0]) = v14 & 1;
    LOBYTE(v38[0]) = 0;
    LOBYTE(v37[0]) = 0;
    v25 = v14 & 1;
    v26 = v16;
    v29 = 0x3FF0000000000000;
    v27 = 2;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    KeyPath = 0;
    v31 = 0;
    v27 = 0;
    v29 = 0;
    v26 = 0;
    v25 = 0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
  }

  memcpy(__dst, __src, 0x120uLL);
  __dst[36] = 0x3FF0000000000000;
  LOWORD(__dst[37]) = 0;
  memcpy(v35, __dst, 0x12AuLL);
  v37[0] = v33;
  v37[1] = v32;
  v37[2] = v25;
  v37[3] = v31;
  v37[4] = KeyPath;
  v37[5] = v27;
  v37[6] = 0;
  v37[7] = v26;
  v37[8] = v18;
  v37[9] = v20;
  v37[10] = v22;
  v37[11] = v24;
  v37[12] = 0;
  v37[13] = v29;
  memcpy(&v35[304], v37, 0x70uLL);
  memcpy(a1, v35, 0x1A0uLL);
  v38[0] = v33;
  v38[1] = v32;
  v38[2] = v25;
  v38[3] = v31;
  v38[4] = KeyPath;
  v38[5] = v27;
  v38[6] = 0;
  v38[7] = v26;
  v38[8] = v18;
  v38[9] = v20;
  v38[10] = v22;
  v38[11] = v24;
  v38[12] = 0;
  v38[13] = v29;
  sub_2703CF590(__dst, v39, &qword_2807D2378, &qword_2705EC9B0);
  sub_2703CF590(v37, v39, &qword_2807D2380, &qword_2705EC9B8);
  sub_2703C2EFC(v38, &qword_2807D2380, &qword_2705EC9B8);
  memcpy(v39, __src, 0x120uLL);
  v39[36] = 0x3FF0000000000000;
  v40 = 0;
  return sub_2703C2EFC(v39, &qword_2807D2378, &qword_2705EC9B0);
}

uint64_t sub_2704356F8(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  sub_2703BD1EC(a1, v27);
  v5 = a2[1];
  v34 = *a2;
  v6 = *(a2 + 2);
  v32 = *(a2 + 3);
  v33 = v6;
  v31 = *(a2 + 4);
  v28 = v34;
  v29 = v5;
  v30 = v31;
  sub_2703CF590(v27, v23, &qword_2807D2250, &qword_2705EC638);
  v7 = v24;
  v19 = v26;
  v20 = v25;
  sub_270435FF0(&v34, v22);
  sub_2703CF590(&v33, v22, &qword_2807D1358, &qword_2705E7578);
  sub_2703CF590(&v32, v22, &qword_2807D1358, &qword_2705E7578);
  sub_2703CF590(&v31, v22, &qword_2807D2248, &qword_2705EC630);
  sub_2704E8CCC();
  v8 = *(*v3 + 16);
  sub_2704E8D70(v8);
  v9 = *v3;
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 40 * v8;
  *(v10 + 32) = v7;
  *(v10 + 40) = v20;
  *(v10 + 56) = v19;
  *v3 = v9;
  sub_2703D7E30(v23);
  sub_2703CF590(v27, v23, &qword_2807D2250, &qword_2705EC638);
  v11 = *(v9 + 16) - 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2703BC4CC(v11, v23, isUniquelyReferenced_nonNull_native, v13, v14, v15, v16, v17, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, v3[1], v22[1], v23[0], v23[1], v23[2], v23[3], v23[4], v24, v25, *(&v25 + 1), v26);
  v3[1] = v22[0];
  sub_2703C2EFC(v27, &qword_2807D2250, &qword_2705EC638);
  sub_2703D7E30(v23);
}

uint64_t objectdestroyTm_2()
{

  if (v0[9] >> 8 != 0xFFFFFFFFLL || v0[20] >= 0x100uLL)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4940(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  }

  if (v0[53] >> 8 != 0xFFFFFFFFLL || (v0[64] & 0x1FFFFFFFFFFFFF00) != 0)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4D28(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  }

  if (v0[93])
  {
  }

  if (v0[97])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_270435B40()
{
  swift_unknownObjectRelease();

  if (v0[11] >> 8 != 0xFFFFFFFFLL || v0[22] >= 0x100uLL)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4940(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  }

  if (v0[55] >> 8 != 0xFFFFFFFFLL || (v0[66] & 0x1FFFFFFFFFFFFF00) != 0)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4D28(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  }

  if (v0[95])
  {
  }

  if (v0[99])
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 106);
  __swift_destroy_boxed_opaque_existential_1(v0 + 111);

  return swift_deallocObject();
}

uint64_t sub_270435D48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2703F6C98;

  return sub_27043066C(a1, v4, v5, v1 + 32, v1 + 848);
}

uint64_t sub_270435E18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2705D51B4();
  *a1 = result;
  return result;
}

uint64_t sub_270435E94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27042EC60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270435EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_270435F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2220, &unk_2705EC5B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_27043606C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704313C4();
  *a1 = result;
  return result;
}

uint64_t sub_27043611C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2705D51B4();
  *a1 = result;
  return result;
}

uint64_t sub_270436214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2704362BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_270436348(uint64_t a1)
{
  sub_2703C1B58(319);
  if (v1 <= 0x3F)
  {
    sub_2703D0264(319, &qword_2807CF198, &qword_2807D65D0, &unk_2705DC050, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2703D0264(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80, MEMORY[0x277D21D28]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ArtworkCaptionGridCellModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_270436454()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D21F0, &qword_2705EC570);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D21E8, &qword_2705EC568);
  sub_2705D6914();
  OUTLINED_FUNCTION_9_18();
  sub_2703AFBC8(v0, &qword_2807D21E8, &qword_2705EC568, v1);
  OUTLINED_FUNCTION_9_11();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2704365B8()
{
  result = qword_2807D22F0;
  if (!qword_2807D22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D22F0);
  }

  return result;
}

unint64_t sub_270436610()
{
  result = qword_2807D22F8;
  if (!qword_2807D22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D22F8);
  }

  return result;
}

unint64_t sub_270436710()
{
  result = qword_2807D2308;
  if (!qword_2807D2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2308);
  }

  return result;
}

unint64_t sub_270436778()
{
  result = qword_2807D2310;
  if (!qword_2807D2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2310);
  }

  return result;
}

uint64_t sub_2704367E8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_270436870(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 176))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2704368C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t sub_2704369B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2704369D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v34[3] = type metadata accessor for ArtworkCaptionGridCellComponentModel(0);
  v34[4] = sub_270435EC4(&qword_2807D2300, type metadata accessor for ArtworkCaptionGridCellComponentModel, &unk_2705EC7C8);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v34);
  sub_2704367E8(a2, boxed_opaque_existential_1Tm);
  sub_2703BD1EC(a1, v32);
  sub_2703B4E54(v34, &v33);
  sub_2703CF590(v32, v24, &qword_2807D23B8, &unk_2705ECBF0);
  sub_2704E8CB4();
  v7 = *(*a3 + 16);
  sub_2704E8D58(v7);
  v8 = v30;
  v9 = v31;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v13 + 16))(v12);
  sub_2704743B4(v7, v12, a3, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v14 = *a3;
  sub_2703D7E30(v24);
  sub_2703CF590(v32, v24, &qword_2807D23B8, &unk_2705ECBF0);
  v15 = *(v14 + 16) - 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2703BC4CC(v15, v24, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21, a3[1], *v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4]);
  a3[1] = v23;
  sub_2703C2EFC(v32, &qword_2807D23B8, &unk_2705ECBF0);
  sub_2703D7E30(v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_270436C28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

uint64_t sub_270436EA4()
{
  if (*(v0 + 96))
  {

    v1 = *(v0 + 64);
    if (v1 != 255)
    {
      sub_2703B8738(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1 & 1);
    }

    v2 = *(v0 + 152);
    if (v2 != 255)
    {
      sub_2703B8738(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), v2 & 1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_270436F74(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_270436F8C()
{
  result = qword_2807D23D8;
  if (!qword_2807D23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D23D8);
  }

  return result;
}

unint64_t sub_270436FE4()
{
  result = qword_2807D23E0;
  if (!qword_2807D23E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D23E8, &qword_2705ECC10);
    sub_2703AFBC8(&qword_2807D23F0, &qword_2807D23F8, &qword_2705ECC18, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D23E0);
  }

  return result;
}

unint64_t sub_27043709C()
{
  result = qword_2807D2400;
  if (!qword_2807D2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2400);
  }

  return result;
}

unint64_t sub_2704370F0()
{
  result = qword_2807D2408;
  if (!qword_2807D2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2408);
  }

  return result;
}

unint64_t sub_270437144()
{
  result = qword_2807D2410;
  if (!qword_2807D2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2410);
  }

  return result;
}

unint64_t sub_270437198()
{
  result = qword_2807D2418;
  if (!qword_2807D2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2418);
  }

  return result;
}

unint64_t sub_2704371EC()
{
  result = qword_2807D2420;
  if (!qword_2807D2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2420);
  }

  return result;
}

unint64_t sub_270437240()
{
  result = qword_2807D2428;
  if (!qword_2807D2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2428);
  }

  return result;
}

unint64_t sub_270437294()
{
  result = qword_2807D2430;
  if (!qword_2807D2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2430);
  }

  return result;
}

unint64_t sub_2704372E8()
{
  result = qword_2807D2438;
  if (!qword_2807D2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2438);
  }

  return result;
}

unint64_t sub_27043733C()
{
  result = qword_2807D2440;
  if (!qword_2807D2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2440);
  }

  return result;
}

double OUTLINED_FUNCTION_20_7@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_9(uint64_t a1)
{

  return sub_2705D7CF4();
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  *(v2 + 16) = v0;

  return sub_2703B291C((v3 - 120), v2 + 40 * v1 + 32);
}

double OUTLINED_FUNCTION_29_4()
{
  *(v0 + 1136) = 0;
  result = 0.0;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  return result;
}

void OUTLINED_FUNCTION_34_4()
{

  sub_2703AFC10(v2, v3, v1, v0);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_270433B00(a1, a2, &a9, a4, a5, a6, a7);
}

void *HalfImageModel.init(additionalActionElements:asset:branding:subtitle:title:primaryActionElement:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, const void *a3@<X1>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, const void *a6@<X5>, void *a7@<X8>)
{
  v13 = a7 + 45;
  memcpy(a7 + 53, __src, 0x160uLL);
  *a7 = a2;
  memcpy(a7 + 1, a3, 0x160uLL);
  v14 = a5[1];
  v13[2] = *a5;
  v13[3] = v14;
  v15 = a4[1];
  *v13 = *a4;
  v13[1] = v15;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  sub_2703B2934(v17, &qword_2807D2450, &qword_2705ECC20);
  return memcpy(a7 + 97, a6, 0x78uLL);
}

uint64_t sub_27043764C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000270613D50 == a2;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E69646E617262 && a2 == 0xE800000000000000;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000014 && 0x8000000270613D70 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_2705D8134();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_270437838(char a1)
{
  result = 0x7465737361;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x676E69646E617262;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_27043790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043764C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270437934(uint64_t a1)
{
  v2 = sub_270437E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270437970(uint64_t a1)
{
  v2 = sub_270437E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HalfImageModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2458, &qword_2705ECC28);
  OUTLINED_FUNCTION_5_25();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = *v1;
  memcpy(v34, v1 + 1, sizeof(v34));
  v10 = v1[45];
  v25 = v1[46];
  v26 = v10;
  v11 = v1[47];
  v23 = v1[48];
  v24 = v11;
  v12 = v1[50];
  v19 = v1[49];
  v20 = v12;
  v13 = v1[51];
  v21 = v1[52];
  v22 = v13;
  memcpy(v35, v1 + 53, sizeof(v35));
  memcpy(__dst, v1 + 97, 0x78uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270437E18();

  sub_2705D84C4();
  v33[0] = v9;
  v32[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2468, &unk_2705ECC30);
  sub_27043852C(&qword_2807D2470, sub_2703B15B8, MEMORY[0x277D83948]);
  v14 = v27;
  sub_2705D8024();
  if (v14)
  {
  }

  else
  {
    v16 = v25;
    v15 = v26;

    memcpy(v33, v34, sizeof(v33));
    __dst[143] = 1;
    sub_2703CAAEC(v34, v32, &qword_2807D2478, &qword_2705F05B0);
    sub_2703BAED8();
    OUTLINED_FUNCTION_6_22(v33);
    memcpy(v32, v33, sizeof(v32));
    sub_2703B2934(v32, &qword_2807D2478, &qword_2705F05B0);
    v31[0] = v15;
    v31[1] = v16;
    v31[2] = v24;
    v31[3] = v23;
    v30[0] = 2;
    sub_2703C3A18(v15, v16, v24, v23);
    sub_2703C3970();
    OUTLINED_FUNCTION_4_25();
    OUTLINED_FUNCTION_1_30();
    v31[0] = v19;
    v31[1] = v20;
    v31[2] = v22;
    v31[3] = v21;
    v30[0] = 3;
    sub_2703C3A18(v19, v20, v22, v21);
    OUTLINED_FUNCTION_4_25();
    OUTLINED_FUNCTION_1_30();
    memcpy(v31, v35, sizeof(v31));
    __dst[142] = 4;
    sub_2703CAAEC(v35, v30, &qword_2807D2480, &qword_2705ECC40);
    sub_2703BE9D4();
    OUTLINED_FUNCTION_6_22(v31);
    memcpy(v30, v31, sizeof(v30));
    sub_2703B2934(v30, &qword_2807D2480, &qword_2705ECC40);
    memcpy(v29, __dst, sizeof(v29));
    __dst[141] = 5;
    sub_2703CAAEC(__dst, v28, &qword_2807D2450, &qword_2705ECC20);
    sub_2703B15B8();
    OUTLINED_FUNCTION_6_22(v29);
    memcpy(v28, v29, sizeof(v28));
    sub_2703B2934(v28, &qword_2807D2450, &qword_2705ECC20);
  }

  return (*(v5 + 8))(v8, v2);
}

unint64_t sub_270437E18()
{
  result = qword_2807D2460;
  if (!qword_2807D2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2460);
  }

  return result;
}

uint64_t HalfImageModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2488, &qword_2705ECC48);
  OUTLINED_FUNCTION_5_25();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270437E18();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    memset(v36, 0, 120);
    return sub_2703B2934(v36, &qword_2807D2450, &qword_2705ECC20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2468, &unk_2705ECC30);
    sub_27043852C(&qword_2807D2490, sub_2703B1564, MEMORY[0x277D83978]);
    sub_2705D7F44();
    v6 = v36[0];
    v71[375] = 1;
    sub_2703BAE84();
    OUTLINED_FUNCTION_2_25();
    memcpy(v71, v69, 0x160uLL);
    sub_2703C3F58();
    OUTLINED_FUNCTION_3_27(&type metadata for TextModel);
    v30 = v36[0];
    v31 = v36[1];
    v32 = v36[2];
    v26 = v36[3];
    LOBYTE(v35[0]) = 3;
    OUTLINED_FUNCTION_3_27(&type metadata for TextModel);
    v7 = v36[0];
    v28 = v36[1];
    v29 = v36[2];
    v27 = v36[3];
    v71[374] = 4;
    sub_2703BE980();
    OUTLINED_FUNCTION_2_25();
    memcpy(v70, v68, sizeof(v70));
    v71[373] = 5;
    sub_2703B1564();
    OUTLINED_FUNCTION_2_25();
    v8 = OUTLINED_FUNCTION_0_27();
    v9(v8);
    v11 = v53;
    v24 = v55;
    v25 = v54;
    v22 = v57;
    v23 = v56;
    v20 = v59;
    v21 = v58;
    v18 = v61;
    v19 = v60;
    v16 = v63;
    v17 = v62;
    v14 = v65;
    v15 = v64;
    v12 = v67;
    v13 = v66;
    memset(v33, 0, sizeof(v33));
    v34 = 0;
    sub_2703B2934(v33, &qword_2807D2450, &qword_2705ECC20);
    v35[0] = v6;
    memcpy(&v35[1], v71, 0x160uLL);
    v35[45] = v30;
    v35[46] = v31;
    v35[47] = v32;
    v35[48] = v26;
    v35[49] = v7;
    v35[50] = v28;
    v35[51] = v29;
    v35[52] = v27;
    memcpy(&v35[53], v70, 0x160uLL);
    v35[97] = v11;
    v35[98] = v25;
    v35[99] = v24;
    v35[100] = v23;
    v35[101] = v22;
    v35[102] = v21;
    v35[103] = v20;
    v35[104] = v19;
    v35[105] = v18;
    v35[106] = v17;
    v35[107] = v16;
    v35[108] = v15;
    v35[109] = v14;
    v35[110] = v13;
    v35[111] = v12;
    memcpy(a2, v35, 0x380uLL);
    sub_2704385A4(v35, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36[0] = v6;
    memcpy(&v36[1], v71, 0x160uLL);
    v36[45] = v30;
    v36[46] = v31;
    v36[47] = v32;
    v36[48] = v26;
    v36[49] = v7;
    v36[50] = v28;
    v36[51] = v29;
    v36[52] = v27;
    memcpy(v37, v70, sizeof(v37));
    v38 = v11;
    v39 = v25;
    v40 = v24;
    v41 = v23;
    v42 = v22;
    v43 = v21;
    v44 = v20;
    v45 = v19;
    v46 = v18;
    v47 = v17;
    v48 = v16;
    v49 = v15;
    v50 = v14;
    v51 = v13;
    v52 = v12;
    return sub_2704385DC(v36);
  }
}

uint64_t sub_27043852C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2468, &unk_2705ECC30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit17ActionableElementVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27043865C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 896))
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

uint64_t sub_2704386B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 888) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 896) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 896) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HalfImageModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x2704388CCLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270438908()
{
  result = qword_2807D2498;
  if (!qword_2807D2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2498);
  }

  return result;
}

unint64_t sub_270438960()
{
  result = qword_2807D24A0;
  if (!qword_2807D24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D24A0);
  }

  return result;
}

unint64_t sub_2704389B8()
{
  result = qword_2807D24A8;
  if (!qword_2807D24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D24A8);
  }

  return result;
}

void OUTLINED_FUNCTION_1_30()
{
  v2 = v0[84];
  v3 = v0[85];
  v4 = v0[86];
  v5 = v0[87];

  sub_2703C3A5C(v2, v3, v4, v5);
}

void *OUTLINED_FUNCTION_2_25()
{

  return sub_2705D7F44();
}

void *OUTLINED_FUNCTION_3_27(uint64_t a1)
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return sub_2705D8024();
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t a1)
{

  return sub_2705D8024();
}

uint64_t sub_270438AF8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B0, &unk_2705EDB30);
  OUTLINED_FUNCTION_46_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D47F0, &qword_2705F64B0);
  OUTLINED_FUNCTION_46_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B8, &unk_2705EDB40);
  OUTLINED_FUNCTION_46_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_270438C68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B0, &unk_2705EDB30);
  OUTLINED_FUNCTION_46_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D47F0, &qword_2705F64B0);
    OUTLINED_FUNCTION_46_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B8, &unk_2705EDB40);
      OUTLINED_FUNCTION_46_0();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for HalfImageView(uint64_t a1)
{
  result = qword_2807D24C0;
  if (!qword_2807D24C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270438E00(uint64_t a1)
{
  sub_270438EF8(319, &qword_2807D24D0, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_270438EF8(319, &qword_2807D4810, MEMORY[0x277CDD848]);
    if (v2 <= 0x3F)
    {
      sub_270438EF8(319, &qword_2807D24D8, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_270438EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2705D4D94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_270438F68@<X0>(void *a1@<X8>)
{
  v3 = v1;
  v5 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E0, &unk_2705F17A0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_2703CF590(v3, &v15 - v10, &qword_2807D24E0, &unk_2705F17A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4D84();
    OUTLINED_FUNCTION_14();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    sub_2705D7A84();
    v14 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath(a1);

    return (*(v7 + 8))(v2, v5);
  }
}

uint64_t sub_27043913C@<X0>(void *a1@<X8>)
{
  v4 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0, &unk_2705F1AD0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for HalfImageView(0);
  sub_2703CF590(v1 + *(v11 + 24), v10, &qword_2807D24F0, &unk_2705F1AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_14();
    return (*(v12 + 32))(a1, v10);
  }

  else
  {
    sub_2705D7A84();
    v14 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath(a1);

    return (*(v6 + 8))(v2, v4);
  }
}

uint64_t sub_270439318@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = type metadata accessor for HalfImageView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_27043C664(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_27043C6CC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_27043C730;
  a1[1] = v7;
  return result;
}

uint64_t sub_27043940C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21E0, &qword_2705EC560);
  v5 = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v38 - v7;
  v8 = type metadata accessor for HalfImageView(0);
  v9 = v8 - 8;
  v40 = *(v8 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_2705D4ED4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = *(v9 + 36);
  v39 = a2;
  memcpy(v51, (a2 + v14), 0x380uLL);
  (*(v12 + 16))(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  sub_27043C664(a2, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = *(v40 + 80);
  v17 = (v13 + v16 + v15) & ~v16;
  v18 = swift_allocObject();
  v19 = *(v12 + 32);
  v20 = v18 + v15;
  v21 = v18;
  v40 = v18;
  v19(v20, &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_27043C6CC(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v17);
  sub_27043C664(v39, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (v16 + 16) & ~v16;
  v23 = swift_allocObject();
  sub_27043C6CC(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F8, &unk_2705EDBC8);
  v25 = v41;
  memcpy((v41 + v24[18]), v51, 0x380uLL);
  v45 = 0;
  v46 = 0;
  sub_2704385A4(v51, &v48);
  type metadata accessor for CGSize(0);
  sub_2705D5E44();
  v26 = v49;
  *v25 = v48;
  *(v25 + 16) = v26;
  v27 = sub_2705D4F94();
  v28 = v42;
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v27);
  sub_2703CF590(v28, v43, &qword_2807D21E0, &qword_2705EC560);
  sub_2705D5E44();
  sub_2703C1634(v28, &qword_2807D21E0, &qword_2705EC560);
  v29 = v25 + v24[16];
  v45 = 0;
  v46 = 0;
  v47 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13D0, &qword_2705EC580);
  sub_2705D5E44();
  v30 = v49;
  v31 = v50;
  *v29 = v48;
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  v32 = v25 + v24[17];
  LOBYTE(v45) = 0;
  result = sub_2705D5E44();
  v34 = *(&v48 + 1);
  *v32 = v48;
  *(v32 + 8) = v34;
  *(v25 + v24[19]) = 0;
  v35 = (v25 + v24[20]);
  v36 = v40;
  *v35 = sub_27043CBB4;
  v35[1] = v36;
  v37 = (v25 + v24[21]);
  *v37 = sub_27043D034;
  v37[1] = v23;
  return result;
}

uint64_t sub_27043984C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v147 = a2;
  v148 = a3;
  v142 = a4;
  v5 = sub_2705D5004();
  v144 = *(v5 - 8);
  v145 = v5;
  MEMORY[0x28223BE20](v5);
  v143 = (&v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF0F0, &qword_2705F0D60);
  MEMORY[0x28223BE20](v7 - 8);
  v134 = &v119 - v8;
  v135 = sub_2705D58D4();
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v132 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2705D4D84();
  v122 = *(v10 - 8);
  v123 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v121 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v119 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280, &unk_2705E4700);
  MEMORY[0x28223BE20](v14 - 8);
  v124 = &v119 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2588, &qword_2705EDC48);
  v129 = *(v16 - 8);
  v130 = v16;
  MEMORY[0x28223BE20](v16);
  v128 = &v119 - v17;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2590, &qword_2705EDC50);
  v18 = MEMORY[0x28223BE20](v139);
  v127 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v119 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2598, &qword_2705EDC58);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v141 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v119 - v24;
  memcpy(v158, a1, sizeof(v158));
  v26 = *(a1 + 46);
  v27 = *(a1 + 47);
  v28 = *(a1 + 48);
  v29 = *(a1 + 49);
  v30 = *(a1 + 50);
  v31 = *(a1 + 51);
  v32 = *(a1 + 52);
  memcpy(v166, a1 + 53, sizeof(v166));
  sub_2705D4EB4();
  v140 = v26;
  v159 = v26;
  v136 = v28;
  v137 = v27;
  v160 = v27;
  v161 = v28;
  v162 = v29;
  v138 = v30;
  v163 = v30;
  v131 = v31;
  v164 = v31;
  v125 = v32;
  v165 = v32;
  v35 = sub_27043A530(v158, v33, v34);
  v146 = v25;
  if (v36)
  {
    v119 = v35;
    v37 = v120;
    sub_270438F68(v120);
    v39 = v121;
    v38 = v122;
    v40 = v123;
    (*(v122 + 104))(v121, *MEMORY[0x277CDF3C0], v123);
    sub_2705D4D74();
    v41 = *(v38 + 8);
    v41(v39, v40);
    v41(v37, v40);

    v25 = v146;
    sub_2705D4454();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25B0, &qword_2705EDD00);
    sub_27043D558();
    v42 = v128;
    sub_2705D4CE4();
    sub_2705D4EB4();
    sub_2705D4EB4();
    sub_2705D6084();
    sub_2705D4E64();
    v43 = v127;
    (*(v129 + 32))(v127, v42, v130);
    v44 = v139;
    v45 = &v43[*(v139 + 36)];
    v46 = v168;
    *v45 = v167;
    *(v45 + 1) = v46;
    *(v45 + 2) = v169;
    v47 = v43;
    v48 = v126;
    sub_2703CF3E8(v47, v126, &qword_2807D2590, &qword_2705EDC50);
    sub_2703CF3E8(v48, v25, &qword_2807D2590, &qword_2705EDC50);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v44 = v139;
  }

  __swift_storeEnumTagSinglePayload(v25, v49, 1, v44);
  sub_2705D4EB4();
  sub_27043B3D8(v50);
  v51 = MEMORY[0x277D84F90];
  if (v138)
  {
    v52 = v125;

    LODWORD(v147) = sub_2705D56D4();
    sub_2705D4D34();
    v138 = v54;
    v139 = v53;
    v129 = v56;
    v130 = v55;
    v158[0] = 0;
    LOBYTE(v156[0]) = 0;
    LODWORD(v128) = sub_2705D56B4();
    sub_2705D4D34();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v127 = v63;
    LOBYTE(v157[0]) = 0;
    LODWORD(v126) = sub_2705D56E4();
    sub_2705D4D34();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v158[0] = 0;
    v72 = v132;
    v73 = v133;
    v74 = v135;
    (*(v133 + 104))(v132, *MEMORY[0x277CE0A50], v135);
    v75 = sub_2705D5794();
    v76 = v134;
    __swift_storeEnumTagSinglePayload(v134, 1, 1, v75);
    sub_2705D57C4();
    v77 = sub_2705D5854();
    sub_2703C1634(v76, &qword_2807CF0F0, &qword_2705F0D60);
    (*(v73 + 8))(v72, v74);
    KeyPath = swift_getKeyPath();
    v79 = swift_getKeyPath();
    v158[0] = 1;
    v80 = v143;
    sub_27043913C(v143);
    v81 = sub_2705D4FE4();
    (*(v144 + 8))(v80, v145);
    LOBYTE(v80) = (v81 & 1) == 0;
    v82 = swift_getKeyPath();
    sub_2705D60A4();
    sub_2705D5094(v170);
    memcpy(&v149[7], v170, 0x70uLL);
    v157[0] = v131;
    v157[1] = v52;
    LOBYTE(v157[2]) = 0;
    v157[3] = v51;
    LOBYTE(v157[4]) = v147;
    v157[5] = v139;
    v157[6] = v138;
    v157[7] = v130;
    v157[8] = v129;
    LOBYTE(v157[9]) = 0;
    LOBYTE(v157[10]) = v128;
    v157[11] = v58;
    v157[12] = v60;
    v157[13] = v62;
    v157[14] = v127;
    LOBYTE(v157[15]) = 0;
    LOBYTE(v157[16]) = v126;
    v157[17] = v65;
    v157[18] = v67;
    v157[19] = v69;
    v157[20] = v71;
    LOBYTE(v157[21]) = 0;
    v157[22] = KeyPath;
    v157[23] = v77;
    v157[24] = v79;
    v157[25] = 0;
    LOBYTE(v157[26]) = 1;
    *(&v157[26] + 1) = 256;
    v157[27] = v82;
    LOBYTE(v157[28]) = v80;
    memcpy(&v157[28] + 1, v149, 0x77uLL);
    CGSizeMake();
    memcpy(v158, v157, 0x158uLL);
  }

  else
  {
    sub_27043D538(v158);
  }

  if (v140)
  {
    v83 = v136;

    LODWORD(v147) = sub_2705D56D4();
    sub_2705D4D34();
    v139 = v85;
    v140 = v84;
    v138 = v86;
    v135 = v87;
    LOBYTE(v157[0]) = 0;
    v155[0] = 0;
    v88 = sub_2705D56B4();
    sub_2705D4D34();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    LOBYTE(v156[0]) = 0;
    v97 = sub_2705D56E4();
    sub_2705D4D34();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    LOBYTE(v157[0]) = 0;
    v106 = sub_2705D5774();
    v107 = swift_getKeyPath();
    v108 = swift_getKeyPath();
    LOBYTE(v157[0]) = 1;
    v109 = v143;
    sub_27043913C(v143);
    v110 = sub_2705D4FE4();
    (*(v144 + 8))(v109, v145);
    LOBYTE(v109) = (v110 & 1) == 0;
    v111 = swift_getKeyPath();
    sub_2705D60A4();
    sub_2705D5094(v171);
    memcpy(&v150[7], v171, 0x70uLL);
    v156[0] = v137;
    v156[1] = v83;
    LOBYTE(v156[2]) = 0;
    v156[3] = MEMORY[0x277D84F90];
    LOBYTE(v156[4]) = v147;
    v156[5] = v140;
    v156[6] = v139;
    v156[7] = v138;
    v156[8] = v135;
    LOBYTE(v156[9]) = 0;
    LOBYTE(v156[10]) = v88;
    v156[11] = v90;
    v156[12] = v92;
    v156[13] = v94;
    v156[14] = v96;
    LOBYTE(v156[15]) = 0;
    LOBYTE(v156[16]) = v97;
    v156[17] = v99;
    v156[18] = v101;
    v156[19] = v103;
    v156[20] = v105;
    LOBYTE(v156[21]) = 0;
    v156[22] = v107;
    v156[23] = v106;
    v156[24] = v108;
    v156[25] = 0;
    LOBYTE(v156[26]) = 1;
    *(&v156[26] + 1) = 256;
    v156[27] = v111;
    LOBYTE(v156[28]) = v109;
    memcpy(&v156[28] + 1, v150, 0x77uLL);
    CGSizeMake();
    memcpy(v157, v156, sizeof(v157));
  }

  else
  {
    sub_27043D538(v157);
  }

  v112 = v146;
  v113 = v141;
  sub_2703CF590(v146, v141, &qword_2807D2598, &qword_2705EDC58);
  memcpy(v152, v158, sizeof(v152));
  memcpy(v151, v157, sizeof(v151));
  v114 = v142;
  sub_2703CF590(v113, v142, &qword_2807D2598, &qword_2705EDC58);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25A0, &qword_2705EDC60);
  v116 = *(v115 + 48);
  memcpy(v153, v152, sizeof(v153));
  memcpy((v114 + v116), v152, 0x158uLL);
  v117 = *(v115 + 64);
  memcpy(v154, v151, sizeof(v154));
  memcpy((v114 + v117), v151, 0x158uLL);
  sub_2703CF590(v153, v156, &qword_2807D25A8, &qword_2705EDC68);
  sub_2703CF590(v154, v156, &qword_2807D25A8, &qword_2705EDC68);
  sub_2703C1634(v112, &qword_2807D2598, &qword_2705EDC58);
  memcpy(v155, v151, sizeof(v155));
  sub_2703C1634(v155, &qword_2807D25A8, &qword_2705EDC68);
  memcpy(v156, v152, sizeof(v156));
  sub_2703C1634(v156, &qword_2807D25A8, &qword_2705EDC68);
  return sub_2703C1634(v113, &qword_2807D2598, &qword_2705EDC58);
}

uint64_t sub_27043A530(uint64_t a1, double a2, double a3)
{
  memcpy(__dst, (a1 + 8), sizeof(__dst));
  memcpy(v113, (a1 + 8), 0x160uLL);
  if (get_enum_tag_for_layout_string_19UnifiedMessagingKit13BrandingModelVSg_0(v113) == 1)
  {
    return 0;
  }

  memcpy(v104, __dst, sizeof(v104));
  v4 = objc_opt_self();
  sub_2703BE7D0(v104, v103);
  v5 = [v4 mainScreen];
  [v5 scale];

  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  sub_2704369CC(__src);
  memcpy(v102, __src, sizeof(v102));
  v8 = v106;
  v9 = v107;
  memcpy(v101, v108, sizeof(v101));
  v10 = v109;
  v11 = v110;
  memcpy(v111, v113, sizeof(v111));
  switch(sub_2703BB658(v111))
  {
    case 1u:
    case 2u:
    case 4u:
      sub_2703BB26C(v111);
      sub_2703C1634(__dst, &qword_2807D2478, &qword_2705F05B0);
      OUTLINED_FUNCTION_6_23();
      v103[9] = v8;
      v103[10] = v9;
      OUTLINED_FUNCTION_3_28();
      v103[20] = v10;
      v103[21] = v11;
      v12 = v103;
      goto LABEL_14;
    case 3u:
      v13 = sub_2703BB26C(v111);
      v14 = v13;
      if (v7 == 1)
      {
        sub_2703B6DF4(v13, v103);
        sub_2703C1634(__dst, &qword_2807D2478, &qword_2705F05B0);
        memcpy(v103, v14, 0xB0uLL);
        CGSizeMake();
        memcpy(v98, v103, 0x48uLL);
        v15 = v103[9];
        v16 = v103[10];
        memcpy(v96, &v103[11], 0x48uLL);
        v17 = v103[20];
        v18 = v103[21];
      }

      else
      {
        sub_2703CF590(v13 + 176, v103, &qword_2807D22D0, &unk_2705EC740);
        sub_2703C1634(__dst, &qword_2807D2478, &qword_2705F05B0);
        memcpy(v98, v14 + 22, 0x48uLL);
        v15 = v14[31];
        v22 = v14[32];
        memcpy(v96, v14 + 33, 0x48uLL);
        v17 = v14[42];
        v18 = v14[43];
        v16 = v22;
      }

      OUTLINED_FUNCTION_6_23();
      v103[9] = v8;
      v103[10] = v9;
      OUTLINED_FUNCTION_3_28();
      v103[20] = v10;
      v103[21] = v11;
      sub_2703C1634(v103, &qword_2807D22D0, &unk_2705EC740);
      memcpy(v102, v98, sizeof(v102));
      memcpy(v101, v96, sizeof(v101));
      v20 = v17;
      v21 = v18;
      goto LABEL_9;
    default:
      v19 = sub_2703BB26C(v111);
      memcpy(v98, v19, sizeof(v98));
      CGSizeMake();
      OUTLINED_FUNCTION_14_17(v103);
      v103[9] = v8;
      v103[10] = v9;
      memcpy(&v103[11], v101, 0x48uLL);
      v103[20] = v10;
      v103[21] = v11;
      sub_2703C1634(v103, &qword_2807D22D0, &unk_2705EC740);
      memcpy(v102, v98, sizeof(v102));
      v15 = v98[9];
      v16 = v98[10];
      memcpy(v101, &v98[11], sizeof(v101));
      v20 = v98[20];
      v21 = v98[21];
LABEL_9:
      if (v7 == 1)
      {
        v23 = 0x3057464D552E4642;
      }

      else
      {
        v23 = 0x3054464D552E5442;
      }

      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_3_28();
      v103[9] = v15;
      v103[10] = v16;
      v103[20] = v20;
      v103[21] = v21;
      if (sub_270436F74(v103) == 1)
      {

        OUTLINED_FUNCTION_14_17(v98);
        v98[9] = v15;
        v98[10] = v16;
        OUTLINED_FUNCTION_3_28();
        v98[20] = v20;
        v98[21] = v21;
        v12 = v98;
LABEL_14:
        sub_2703C1634(v12, &qword_2807D22D0, &unk_2705EC740);
        return 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25E0, &unk_2705F3A60);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2705EB880;
      *(v25 + 32) = 8222587;
      *(v25 + 40) = 0xE300000000000000;
      OUTLINED_FUNCTION_15_13();
      if (!(v30 ^ v31 | v29))
      {
        goto LABEL_45;
      }

      if (v27 <= -9.22337204e18)
      {
        goto LABEL_46;
      }

      *v91 = v28;
      if (v27 >= 9.22337204e18)
      {
        goto LABEL_47;
      }

      v32 = v26;
      v90 = v27;
      v98[0] = v27;

      v32[6] = sub_2705D80A4();
      v32[7] = v33;
      v32[8] = 8218747;
      v32[9] = 0xE300000000000000;
      OUTLINED_FUNCTION_15_13();
      if (!(v30 ^ v31 | v29))
      {
        goto LABEL_48;
      }

      if (v34 <= -9.22337204e18)
      {
        goto LABEL_49;
      }

      v92 = v21;
      v93 = v20;
      v95 = v15;
      if (v34 >= 9.22337204e18)
      {
        goto LABEL_50;
      }

      v88 = v34;
      v98[0] = v34;
      v32[10] = sub_2705D80A4();
      v32[11] = v35;
      v32[12] = 8217467;
      v32[13] = 0xE300000000000000;
      v89 = v23;
      v32[14] = v23;
      v32[15] = 0xE900000000000031;
      v32[16] = 8218235;
      v32[17] = 0xE300000000000000;
      v32[18] = 1667851624;
      v32[19] = 0xE400000000000000;

      v36 = sub_2705D7494();
      OUTLINED_FUNCTION_5_26();
      v39 = v38 & v37;
      v41 = (v40 + 63) >> 6;

      v42 = v16;
      v43 = 0;
      v44 = v15;
      v94 = v42;
      if (!v39)
      {
        goto LABEL_26;
      }

      while (2)
      {
        v45 = v43;
LABEL_30:
        v46 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v47 = (v45 << 10) | (16 * v46);
        v48 = (*(v36 + 48) + v47);
        v49 = *v48;
        v50 = v48[1];
        v51 = (*(v36 + 56) + v47);
        v52 = *v51;
        v53 = v51[1];
        v98[0] = v44;
        v98[1] = v42;
        v96[0] = v49;
        v96[1] = v50;
        v99 = v52;
        v100 = v53;
        sub_2703C2F54();

        v44 = OUTLINED_FUNCTION_9_19(v96, &v99, v54, v55, v56, v57, MEMORY[0x277D837D0]);
        v59 = v58;

        v42 = v59;
        if (v39)
        {
          continue;
        }

        break;
      }

      while (1)
      {
LABEL_26:
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          JUMPOUT(0x27043AE98);
        }

        if (v45 >= v41)
        {
          break;
        }

        v39 = *(v36 + 64 + 8 * v45);
        ++v43;
        if (v39)
        {
          v43 = v45;
          goto LABEL_30;
        }
      }

      v87 = v44;

      OUTLINED_FUNCTION_14_17(v98);
      OUTLINED_FUNCTION_3_28();
      v60 = v15;
      v98[9] = v15;
      v98[10] = v94;
      v98[20] = v93;
      v98[21] = v92;
      v61 = v94;
      if (sub_270436F74(v98) != 1)
      {

        v60 = v93;
        v61 = v92;
      }

      v62 = swift_allocObject();
      *(v62 + 16) = *v91;
      *(v62 + 32) = 8222587;
      *(v62 + 40) = 0xE300000000000000;
      v96[0] = v90;
      *(v62 + 48) = sub_2705D80A4();
      *(v62 + 56) = v63;
      *(v62 + 64) = 8218747;
      *(v62 + 72) = 0xE300000000000000;
      v96[0] = v88;
      *(v62 + 80) = sub_2705D80A4();
      *(v62 + 88) = v64;
      *(v62 + 96) = 8217467;
      *(v62 + 104) = 0xE300000000000000;
      *(v62 + 112) = v89;
      *(v62 + 120) = 0xE900000000000031;
      *(v62 + 128) = 8218235;
      *(v62 + 136) = 0xE300000000000000;
      *(v62 + 144) = 1667851624;
      *(v62 + 152) = 0xE400000000000000;
      v65 = sub_2705D7494();
      OUTLINED_FUNCTION_5_26();
      v68 = v67 & v66;
      v70 = (v69 + 63) >> 6;

      v71 = 0;
      if (v68)
      {
        while (1)
        {
          v72 = v71;
LABEL_40:
          v73 = __clz(__rbit64(v68));
          v68 &= v68 - 1;
          v74 = (v72 << 10) | (16 * v73);
          v75 = (*(v65 + 48) + v74);
          v76 = *v75;
          v77 = v75[1];
          v78 = (*(v65 + 56) + v74);
          v79 = *v78;
          v80 = v78[1];
          v96[0] = v60;
          v96[1] = v61;
          v99 = v76;
          v100 = v77;
          v97[0] = v79;
          v97[1] = v80;
          sub_2703C2F54();

          v60 = OUTLINED_FUNCTION_9_19(&v99, v97, v81, v82, v83, v84, MEMORY[0x277D837D0]);
          v86 = v85;

          v61 = v86;
          if (!v68)
          {
            goto LABEL_36;
          }
        }
      }

      while (1)
      {
LABEL_36:
        v72 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_44;
        }

        if (v72 >= v70)
        {
          break;
        }

        v68 = *(v65 + 64 + 8 * v72);
        ++v71;
        if (v68)
        {
          v71 = v72;
          goto LABEL_40;
        }
      }

      OUTLINED_FUNCTION_14_17(v96);
      v96[9] = v95;
      v96[10] = v94;
      OUTLINED_FUNCTION_3_28();
      v96[20] = v93;
      v96[21] = v92;
      sub_2703C1634(v96, &qword_2807D22D0, &unk_2705EC740);
      return v87;
  }
}

uint64_t sub_27043AEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D5E04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2705D4FC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277CDD9C8])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v13 = sub_2705D5E24();
    (*(v5 + 8))(v7, v4);
    v18 = v13;
    LOBYTE(v19) = 1;
    swift_retain_n();
    sub_2705D5434();
    v18 = v20;
    v19 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25C8, &qword_2705EDD08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25D8, &unk_2705EDD10);
    sub_27043D5E4();
    sub_27043D668();
    sub_2705D5434();
  }

  else
  {
    if (v12 == *MEMORY[0x277CDD9C0])
    {
      (*(v9 + 8))(v11, v8);
      LOBYTE(v18) = 0;
      sub_2705D5434();
      v18 = v20;
      v19 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25C8, &qword_2705EDD08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25D8, &unk_2705EDD10);
      sub_27043D5E4();
      sub_27043D668();
      result = sub_2705D5434();
      goto LABEL_6;
    }

    if (v12 != *MEMORY[0x277CDD9B8])
    {
      LOBYTE(v18) = 1;
      sub_2705D5434();
      v18 = v20;
      v19 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25C8, &qword_2705EDD08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25D8, &unk_2705EDD10);
      sub_27043D5E4();
      sub_27043D668();
      sub_2705D5434();
      v15 = v20;
      v16 = v21;
      v17 = v22;
      result = (*(v9 + 8))(v11, v8);
      goto LABEL_7;
    }

    v18 = sub_2705D5C74();
    LOBYTE(v19) = 0;

    sub_2705D5434();
    v18 = v20;
    v19 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25C8, &qword_2705EDD08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25D8, &unk_2705EDD10);
    sub_27043D5E4();
    sub_27043D668();
    sub_2705D5434();
  }

LABEL_6:
  v15 = v20;
  v16 = v21;
  v17 = v22;
LABEL_7:
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 9) = v17;
  return result;
}

double sub_27043B3D8(double a1)
{
  if (a1 < 0.0 || (v1 = 16.0, a1 > 374.0))
  {
    if (a1 < 375.0 || (v1 = 24.0, a1 > 413.0))
    {
      v2 = a1 > 727.0 || a1 < 414.0;
      v1 = 16.0;
      if (!v2)
      {
        return 44.0;
      }
    }
  }

  return v1;
}

uint64_t sub_27043B448@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2500, &qword_2705EDBD8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  v7 = a1 + *(type metadata accessor for HalfImageView(0) + 28);
  memcpy(v14, (v7 + 776), sizeof(v14));
  memcpy(__dst, (v7 + 776), sizeof(__dst));
  if (__dst[5])
  {
    sub_2703B1414(__dst, v12);
    memcpy(v13, v12, sizeof(v13));
    memcpy(v11, v14, sizeof(v11));
    sub_270416AC0(v11, v10);
    *v6 = sub_2705D53C4();
    *(v6 + 1) = 0x4014000000000000;
    v6[16] = 0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2508, &unk_2705EDBE0);
    sub_27043B610(v13, a1, &v6[*(v8 + 44)]);
    sub_2703C1634(v14, &qword_2807D2450, &qword_2705ECC20);
    sub_2703CF3E8(v6, a2, &qword_2807D2500, &qword_2705EDBD8);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_27043B610@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v45 = a2;
  v49 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2510, &unk_2705EDBF0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6600, &qword_270608E00);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2518, &qword_2705EDC00);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v46 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v43 = &v42 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v21 = sub_2705D4D24();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
  *v55 = *a1;
  *&v55[9] = *(a1 + 9);
  *__dst = *a1;
  *(&__dst[1] + 1) = *(a1 + 9);
  sub_27043D09C(v55, v54);
  sub_2703B3B04(__dst, v54);
  sub_27043D0F8(v55);
  v22 = swift_allocObject();
  memcpy((v22 + 16), a1, 0x78uLL);
  sub_2703B1428(a1, __dst);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2520, &qword_2705EDC08);
  sub_27043D154();
  sub_2705D4724();
  v24 = *(v45 + *(type metadata accessor for HalfImageView(0) + 28));
  if (v24 && *(v24 + 16))
  {
    v45 = v23;
    memcpy(v53, (v24 + 32), sizeof(v53));
    sub_2703B1414(v53, v54);
    memcpy(__dst, v54, 0x78uLL);
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v21);
    v25 = v54[1];
    v26 = v54[2];
    v27 = v54[3];
    v51[0] = v54[0];
    v51[1] = v54[1];
    v51[2] = v54[2];
    v52 = v54[3];
    sub_270416AC0(v53, v50);

    sub_2703AE9E8(v25, v26, v27);
    sub_2703B3B04(v51, v50);

    sub_2703AE980(v25, v26, v27);
    v28 = swift_allocObject();
    memcpy((v28 + 16), __dst, 0x78uLL);
    v29 = v43;
    sub_2705D4724();
    v30 = v47;
    v31 = v29;
    v32 = v13;
    (*(v14 + 32))(v47, v31, v13);
    v33 = v30;
    v34 = 0;
  }

  else
  {
    v30 = v47;
    v33 = v47;
    v34 = 1;
    v32 = v13;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, 1, v13);
  v35 = *(v14 + 16);
  v36 = v46;
  v35(v46, v20, v32);
  v37 = v48;
  sub_2703CF590(v30, v48, &qword_2807D2510, &unk_2705EDBF0);
  v38 = v49;
  v35(v49, v36, v32);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2560, &qword_2705EDC28);
  sub_2703CF590(v37, &v38[*(v39 + 48)], &qword_2807D2510, &unk_2705EDBF0);
  sub_2703C1634(v30, &qword_2807D2510, &unk_2705EDBF0);
  v40 = *(v14 + 8);
  v40(v20, v32);
  sub_2703C1634(v37, &qword_2807D2510, &unk_2705EDBF0);
  return (v40)(v36, v32);
}

uint64_t sub_27043BB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2558, &qword_2705EDC20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2548, &qword_2705EDC18);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2538, &qword_2705EDC10);
  MEMORY[0x28223BE20](v12);
  v14 = &v28[-v13];
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2568, &qword_2705EDC30);
  sub_27043D418();
  sub_2705D5E94();
  sub_2705D60A4();
  sub_2705D5094(__src);
  (*(v5 + 32))(v11, v7, v4);
  memcpy(&v11[*(v9 + 44)], __src, 0x70uLL);
  if (qword_2807CE790 != -1)
  {
    swift_once();
  }

  v15 = qword_2807CFC70;
  v16 = sub_2705D56C4();
  sub_2703CF3E8(v11, v14, &qword_2807D2548, &qword_2705EDC18);
  v17 = &v14[*(v12 + 36)];
  *v17 = v15;
  v17[8] = v16;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2520, &qword_2705EDC08) + 36));
  v19 = *(sub_2705D5064() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_2705D5344();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #14.0 }

  *v18 = _Q0;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620, &unk_2705E2CB0) + 36)] = 256;
  sub_2703CF3E8(v14, a2, &qword_2807D2538, &qword_2705EDC10);
}

__n128 sub_27043BF14@<Q0>(uint64_t a2@<X8>)
{

  sub_2705D58C4();
  v3 = sub_2705D5914();
  v5 = v4;
  v7 = v6;

  *&v33 = sub_2705D5CF4();
  v8 = sub_2705D58F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_2703CEDB0(v3, v5, v7 & 1);

  LOBYTE(v3) = sub_2705D56B4();
  sub_2705D4D34();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v33) = v12 & 1;
  LOBYTE(v5) = sub_2705D5724();
  sub_2705D4D34();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_2705D60A4();
  sub_2705D4E64();
  *&v32[7] = v33;
  *&v32[23] = v34;
  *&v32[39] = v35;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v3;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = v22;
  *(a2 + 72) = 0;
  *(a2 + 80) = v5;
  *(a2 + 88) = v24;
  *(a2 + 96) = v26;
  *(a2 + 104) = v28;
  *(a2 + 112) = v30;
  *(a2 + 120) = 0;
  result = *v32;
  *(a2 + 168) = *(&v35 + 1);
  *(a2 + 153) = *&v32[32];
  *(a2 + 137) = *&v32[16];
  *(a2 + 121) = *v32;
  return result;
}

uint64_t sub_27043C100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2558, &qword_2705EDC20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2548, &qword_2705EDC18);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2538, &qword_2705EDC10);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v28[-v14];
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2568, &qword_2705EDC30);
  sub_27043D418();
  sub_2705D5E94();
  sub_2705D60A4();
  sub_2705D5094(__src);
  (*(v5 + 32))(v11, v7, v4);
  memcpy(&v11[*(v9 + 44)], __src, 0x70uLL);
  v16 = sub_2705D5CD4();
  LOBYTE(a1) = sub_2705D56C4();
  sub_2703CF3E8(v11, v15, &qword_2807D2548, &qword_2705EDC18);
  v17 = &v15[*(v13 + 44)];
  *v17 = v16;
  v17[8] = a1;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2520, &qword_2705EDC08) + 36));
  v19 = *(sub_2705D5064() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_2705D5344();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #14.0 }

  *v18 = _Q0;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620, &unk_2705E2CB0) + 36)] = 256;
  return sub_2703CF3E8(v15, a2, &qword_2807D2538, &qword_2705EDC10);
}

__n128 sub_27043C43C@<Q0>(uint64_t a2@<X8>)
{

  sub_2705D58C4();
  v3 = sub_2705D5914();
  v5 = v4;
  v7 = v6;

  if (qword_2807CE790 != -1)
  {
    swift_once();
  }

  *&v35 = qword_2807CFC70;

  v8 = sub_2705D58F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_2703CEDB0(v3, v5, v7 & 1);

  v15 = sub_2705D56B4();
  sub_2705D4D34();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v35) = v12 & 1;
  v24 = sub_2705D5724();
  sub_2705D4D34();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_2705D60A4();
  sub_2705D4E64();
  *&v34[7] = v35;
  *&v34[23] = v36;
  *&v34[39] = v37;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v19;
  *(a2 + 56) = v21;
  *(a2 + 64) = v23;
  *(a2 + 72) = 0;
  *(a2 + 80) = v24;
  *(a2 + 88) = v26;
  *(a2 + 96) = v28;
  *(a2 + 104) = v30;
  *(a2 + 112) = v32;
  *(a2 + 120) = 0;
  result = *v34;
  *(a2 + 168) = *(&v37 + 1);
  *(a2 + 153) = *&v34[32];
  *(a2 + 137) = *&v34[16];
  *(a2 + 121) = *v34;
  return result;
}

uint64_t sub_27043C664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HalfImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27043C6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HalfImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27043C730()
{
  v0 = OUTLINED_FUNCTION_8_22();
  type metadata accessor for HalfImageView(v0);
  v1 = OUTLINED_FUNCTION_10_18();

  return sub_27043940C(v1, v2, v3);
}

uint64_t sub_27043C798()
{
  v2 = sub_2705D4ED4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for HalfImageView(0);
  OUTLINED_FUNCTION_34_0();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E0, &unk_2705F17A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4D84();
    OUTLINED_FUNCTION_11_1();
    (*(v11 + 8))(v1 + v9);
  }

  else
  {
  }

  v12 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E8, &qword_2705EDBC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4E94();
    OUTLINED_FUNCTION_11_1();
    (*(v13 + 8))(v10 + v12);
  }

  else
  {
  }

  v14 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0, &unk_2705F1AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_11_1();
    (*(v15 + 8))(v10 + v14);
  }

  else
  {
  }

  v16 = v10 + v0[7];

  OUTLINED_FUNCTION_16_9();
  if (!v27 || v17 >= 0x100)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4940(v18, v19, v20, v21, v22, v23, v24, v25, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  }

  if (*(v16 + 368))
  {
  }

  if (*(v16 + 400))
  {
  }

  OUTLINED_FUNCTION_12_15();
  v27 = v27 && v26 == 0;
  if (!v27)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4D28(v28, v29, v30, v31, v32, v33, v34, v35, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  }

  if (*(v16 + 816))
  {

    v36 = *(v16 + 800);
    if (v36 != 255)
    {
      sub_2703AE630(*(v16 + 784), *(v16 + 792), v36);
    }

    v37 = *(v16 + 856);
    if (v37 != 255)
    {
      sub_2703AE630(*(v16 + 840), *(v16 + 848), v37);
    }

    if (*(v16 + 872))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_27043CBB4()
{
  OUTLINED_FUNCTION_8_22();
  v3 = *(sub_2705D4ED4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for HalfImageView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_27043984C(v0, v1 + v4, v7, v2);
}

uint64_t objectdestroyTm_3()
{
  type metadata accessor for HalfImageView(0);
  OUTLINED_FUNCTION_34_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E0, &unk_2705F17A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4D84();
    OUTLINED_FUNCTION_11_1();
    (*(v5 + 8))(v1 + v3);
  }

  else
  {
  }

  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E8, &qword_2705EDBC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4E94();
    OUTLINED_FUNCTION_11_1();
    (*(v7 + 8))(v4 + v6);
  }

  else
  {
  }

  v8 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0, &unk_2705F1AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_11_1();
    (*(v9 + 8))(v4 + v8);
  }

  else
  {
  }

  v10 = v4 + v0[7];

  OUTLINED_FUNCTION_16_9();
  if (!v21 || v11 >= 0x100)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4940(v12, v13, v14, v15, v16, v17, v18, v19, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  }

  if (*(v10 + 368))
  {
  }

  if (*(v10 + 400))
  {
  }

  OUTLINED_FUNCTION_12_15();
  v21 = v21 && v20 == 0;
  if (!v21)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4D28(v22, v23, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  }

  if (*(v10 + 816))
  {

    v30 = *(v10 + 800);
    if (v30 != 255)
    {
      sub_2703AE630(*(v10 + 784), *(v10 + 792), v30);
    }

    v31 = *(v10 + 856);
    if (v31 != 255)
    {
      sub_2703AE630(*(v10 + 840), *(v10 + 848), v31);
    }

    if (*(v10 + 872))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_27043D034()
{
  v0 = OUTLINED_FUNCTION_8_22();
  type metadata accessor for HalfImageView(v0);
  OUTLINED_FUNCTION_10_18();

  return sub_27043B448(v1, v2);
}

unint64_t sub_27043D154()
{
  result = qword_2807D2528;
  if (!qword_2807D2528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2520, &qword_2705EDC08);
    sub_27043D20C();
    sub_2703AFBC8(&qword_2807D0080, &qword_2807CF620, &unk_2705E2CB0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2528);
  }

  return result;
}

unint64_t sub_27043D20C()
{
  result = qword_2807D2530;
  if (!qword_2807D2530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2538, &qword_2705EDC10);
    sub_27043D2C4();
    sub_2703AFBC8(&qword_2807D0B60, &qword_2807D0B68, &unk_2705E5CB0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2530);
  }

  return result;
}

unint64_t sub_27043D2C4()
{
  result = qword_2807D2540;
  if (!qword_2807D2540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2548, &qword_2705EDC18);
    sub_2703AFBC8(&qword_2807D2550, &qword_2807D2558, &qword_2705EDC20, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2540);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{

  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_2703AE630(*(v0 + 24), *(v0 + 32), v1);
  }

  v2 = *(v0 + 96);
  if (v2 != 255)
  {
    sub_2703AE630(*(v0 + 80), *(v0 + 88), v2);
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_27043D418()
{
  result = qword_2807D2570;
  if (!qword_2807D2570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2568, &qword_2705EDC30);
    sub_27043D4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2570);
  }

  return result;
}

unint64_t sub_27043D4A4()
{
  result = qword_2807D2578;
  if (!qword_2807D2578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2580, &qword_2705EDC38);
    sub_2703CF2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2578);
  }

  return result;
}

unint64_t sub_27043D558()
{
  result = qword_2807D25B8;
  if (!qword_2807D25B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D25B0, &qword_2705EDD00);
    sub_27043D5E4();
    sub_27043D668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D25B8);
  }

  return result;
}

unint64_t sub_27043D5E4()
{
  result = qword_2807D25C0;
  if (!qword_2807D25C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D25C8, &qword_2705EDD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D25C0);
  }

  return result;
}

unint64_t sub_27043D668()
{
  result = qword_2807D25D0;
  if (!qword_2807D25D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D25D8, &unk_2705EDD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D25D0);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_28()
{

  return memcpy((v0 + 88), &STACK[0x208], 0x48uLL);
}

void *OUTLINED_FUNCTION_6_23()
{

  return memcpy(&STACK[0x298], &STACK[0x250], 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_2705D7C64();
}

void *OUTLINED_FUNCTION_14_17(void *a1)
{

  return memcpy(a1, &STACK[0x250], 0x48uLL);
}

uint64_t sub_27043D84C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v18 = **a1;
  v17 = *(*a1 + 8);
  v24 = *(*a1 + 9);
  v5 = *v4;
  v6 = *(v4 + 8);
  v23 = *(v4 + 9);
  v7 = a1[2];
  memcpy(__dst, v7, 0xA8uLL);
  memcpy(&__src[6], v7, 0xA8uLL);
  v8 = a1[3];
  v9 = a1[4];
  v10 = *v8;
  LOWORD(v7) = *(v8 + 4);
  v11 = *(v8 + 10);
  v21 = *(v8 + 11);
  v12 = v21;
  v13 = *v9;
  v14 = *(v9 + 8);
  v20 = *(v9 + 9);
  v15 = v20;
  LOBYTE(v8) = v24;
  LOBYTE(v9) = v23;
  *a2 = v18;
  *(a2 + 8) = v17;
  *(a2 + 9) = v8;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 25) = v9;
  memcpy((a2 + 26), __src, 0xAEuLL);
  *(a2 + 200) = v10;
  *(a2 + 210) = v11;
  *(a2 + 208) = v7;
  *(a2 + 211) = v12;
  *(a2 + 216) = v13;
  *(a2 + 224) = v14;
  *(a2 + 225) = v15;
  return sub_2703FC5C0(__dst, v19, &qword_2807D28A0, &unk_2705EE998);
}

uint64_t sub_27043D984(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  sub_2704ADCDC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v21;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v19 = a3 + v9;
      a1(v20, &v19);
      if (v4)
      {
        goto LABEL_20;
      }

      v21 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2704ADCDC((v11 > 1), v12 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v12 + 1;
      v13 = (v6 + (v12 << 6));
      v14 = v20[0];
      v15 = v20[1];
      v16 = v20[3];
      v13[4] = v20[2];
      v13[5] = v16;
      v13[2] = v14;
      v13[3] = v15;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

double sub_27043DAF0(unsigned __int8 a1, uint64_t a2, char a3, double a4, double a5)
{
  if (!a3)
  {
    return *&a2;
  }

  if (a3 == 1)
  {
    return *&a2 * a4;
  }

  if (a2 < 1)
  {
    return 0.0;
  }

  if (a1 < 3u)
  {
    return (a4 - (a2 + -1.0) * a5) / a2;
  }

  return a4 / a2;
}

uint64_t sub_27043DB5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465786966 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E656D676573 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_27043DC70(char a1)
{
  if (!a1)
  {
    return 0x6465786966;
  }

  if (a1 == 1)
  {
    return 0x61746E6563726570;
  }

  return 0x746E656D676573;
}

uint64_t sub_27043DCC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_27043DD50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_27043DDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_1();
  v56 = v22;
  v57 = v20;
  v55 = v23;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2758, &qword_2705EE2D0);
  OUTLINED_FUNCTION_0();
  v53 = v27;
  v54 = v26;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17_0();
  v52 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2760, &qword_2705EE2D8);
  OUTLINED_FUNCTION_0();
  v50 = v31;
  v51 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  v34 = &v48 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2768, &qword_2705EE2E0);
  OUTLINED_FUNCTION_0();
  v49 = v36;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  v39 = &v48 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2770, &qword_2705EE2E8);
  OUTLINED_FUNCTION_0();
  v42 = v41;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_30_1();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_270441A9C();
  sub_2705D84C4();
  if (v55)
  {
    if (v55 == 1)
    {
      sub_2704437F0();
      OUTLINED_FUNCTION_25_7(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint.PercentageCodingKeys);
      sub_2703EC7A4();
      v44 = v51;
      sub_2705D8084();
      v45 = *(v50 + 8);
      v46 = v34;
    }

    else
    {
      sub_27044379C();
      v47 = v52;
      OUTLINED_FUNCTION_25_7(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint.SegmentCodingKeys);
      v44 = v54;
      sub_2705D8064();
      v45 = *(v53 + 8);
      v46 = v47;
    }

    v45(v46, v44);
  }

  else
  {
    sub_270443844();
    OUTLINED_FUNCTION_25_7(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint.FixedCodingKeys);
    sub_2703EC7A4();
    sub_2705D8084();
    (*(v49 + 8))(v39, v35);
  }

  (*(v42 + 8))(v21, v40);
  OUTLINED_FUNCTION_11_3();
}

void sub_27043E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_1();
  a19 = v22;
  a20 = v23;
  v86 = v20;
  v25 = v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2718, &qword_2705EE2A8);
  OUTLINED_FUNCTION_0();
  v82 = v26;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_0();
  v83 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2720, &qword_2705EE2B0);
  OUTLINED_FUNCTION_0();
  v80 = v29;
  v81 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_21_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2728, &qword_2705EE2B8);
  OUTLINED_FUNCTION_0();
  v79 = v33;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  v36 = &v73 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2730, &unk_2705EE2C0);
  OUTLINED_FUNCTION_0();
  v39 = v38;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_30_1();
  v41 = v25[3];
  v85 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v41);
  sub_270441A9C();
  v42 = v86;
  sub_2705D8484();
  v86 = v42;
  if (v42)
  {
    v43 = v85;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_11_3();
    return;
  }

  v75 = v32;
  v76 = v36;
  v77 = v39;
  v78 = v21;
  v44 = sub_2705D7FB4();
  sub_27042C9F0(v44, 0);
  if (v46 == v47 >> 1)
  {
LABEL_10:
    v56 = sub_2705D7D84();
    swift_allocError();
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60, &qword_2705DBDD0);
    *v58 = &type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint;
    v59 = v78;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v77 + 8))(v59, v37);
    v43 = v85;
    goto LABEL_11;
  }

  v74 = v37;
  if (v46 < (v47 >> 1))
  {
    v48 = *(v45 + v46);
    v49 = sub_27042C9E4(v46 + 1);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    v73 = v49;
    if (v51 == v53 >> 1)
    {
      v54 = v48;
      if (v48)
      {
        v55 = v74;
        if (v54 == 1)
        {
          LOBYTE(a10) = 1;
          sub_2704437F0();
          OUTLINED_FUNCTION_26_7(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint.PercentageCodingKeys, &a10);
          sub_2703EC654();
          OUTLINED_FUNCTION_36_3(MEMORY[0x277D85048]);
          swift_unknownObjectRelease();
          v65 = OUTLINED_FUNCTION_11_19();
          v66(v65);
          v67 = OUTLINED_FUNCTION_12_16();
          v68(v67, v55);
          v43 = v85;
        }

        else
        {
          LOBYTE(a10) = 2;
          sub_27044379C();
          v61 = v78;
          v62 = v86;
          sub_2705D7ED4();
          v43 = v85;
          if (v62)
          {
            (*(v77 + 8))(v61, v55);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_2705D7F84();
            v64 = v77;
            swift_unknownObjectRelease();
            v71 = OUTLINED_FUNCTION_33_5();
            v72(v71);
            (*(v64 + 8))(v78, v55);
          }
        }
      }

      else
      {
        LOBYTE(a10) = 0;
        sub_270443844();
        v60 = v74;
        OUTLINED_FUNCTION_26_7(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint.FixedCodingKeys, &a10);
        sub_2703EC654();
        OUTLINED_FUNCTION_36_3(MEMORY[0x277D85048]);
        v43 = v85;
        v63 = v77;
        swift_unknownObjectRelease();
        v69 = OUTLINED_FUNCTION_11_19();
        v70(v69);
        (*(v63 + 8))(v21, v60);
      }

      goto LABEL_11;
    }

    v37 = v74;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_27043E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043DB5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27043E828(uint64_t a1)
{
  v2 = sub_270441A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27043E864(uint64_t a1)
{
  v2 = sub_270441A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27043E8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043DCC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27043E8D0(uint64_t a1)
{
  v2 = sub_270443844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27043E90C(uint64_t a1)
{
  v2 = sub_270443844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27043E94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043DD50(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27043E978(uint64_t a1)
{
  v2 = sub_2704437F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27043E9B4(uint64_t a1)
{
  v2 = sub_2704437F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27043E9F0(uint64_t a1)
{
  v2 = sub_27044379C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27043EA2C(uint64_t a1)
{
  v2 = sub_27044379C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27043EAB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68746469576E696DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x687464695778616DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6469576C61656469 && a2 == 0xEA00000000006874;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x68676965486E696DLL && a2 == 0xE900000000000074;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x686769654878616DLL && a2 == 0xE900000000000074;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6965486C61656469 && a2 == 0xEB00000000746867)
          {

            return 5;
          }

          else
          {
            v11 = sub_2705D8134();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_27043ECBC(char a1)
{
  result = 0x68746469576E696DLL;
  switch(a1)
  {
    case 1:
      result = 0x687464695778616DLL;
      break;
    case 2:
      result = 0x6469576C61656469;
      break;
    case 3:
      v3 = 1215195501;
      goto LABEL_6;
    case 4:
      v3 = 1215848813;
LABEL_6:
      result = v3 | 0x6867696500000000;
      break;
    case 5:
      result = 0x6965486C61656469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27043ED88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D26D8, &qword_2705EE028);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704414F0();
  sub_2705D84C4();
  v14 = *v3;
  v15 = *(v3 + 8);
  v13 = 0;
  sub_270441598();
  OUTLINED_FUNCTION_3_20();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v13 = 1;
    OUTLINED_FUNCTION_3_20();
    v14 = v3[4];
    v15 = *(v3 + 40);
    v13 = 2;
    OUTLINED_FUNCTION_3_20();
    v14 = v3[6];
    v15 = *(v3 + 56);
    v13 = 3;
    OUTLINED_FUNCTION_3_20();
    v14 = v3[8];
    v15 = *(v3 + 72);
    v13 = 4;
    OUTLINED_FUNCTION_3_20();
    v14 = v3[10];
    v15 = *(v3 + 88);
    v13 = 5;
    OUTLINED_FUNCTION_3_20();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_27043EF9C()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D26C0, &qword_2705EE020);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2704414F0();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_270441544();
    OUTLINED_FUNCTION_2_26(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint);
    v22 = v4;
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_26(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint);
    v21 = v4;
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_26(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint);
    v19 = v11;
    v20 = v4;
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_26(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint);
    v17 = v11;
    v18 = v4;
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_26(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint);
    v16 = v23;
    HIDWORD(v15) = v24;
    OUTLINED_FUNCTION_2_26(&type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint);
    (*(v7 + 8))(v10, v5);
    v12 = v23;
    v13 = v24;
    __swift_destroy_boxed_opaque_existential_1(v2);
    v14 = v22;
    *v22 = v21;
    *(v14 + 8) = v11;
    v14[2] = v20;
    *(v14 + 24) = v19;
    v14[4] = v18;
    *(v14 + 40) = v17;
    v14[6] = v4;
    *(v14 + 56) = v11;
    v14[8] = v16;
    *(v14 + 72) = BYTE4(v15);
    v14[10] = v12;
    *(v14 + 88) = v13;
  }

  OUTLINED_FUNCTION_11_3();
}

unint64_t sub_27043F218(uint64_t a1, uint64_t a2)
{
  v2 = sub_2705D7EB4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_27043F264(char a1)
{
  result = 0x676E696461656CLL;
  switch(a1)
  {
    case 1:
      result = 0x676E696C69617274;
      break;
    case 2:
      result = 0x7265746E6563;
      break;
    case 3:
      result = 0x6576456563617073;
      break;
    case 4:
      result = 0x6F72416563617073;
      break;
    case 5:
      result = 0x7465426563617073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27043F34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043EAB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27043F374(uint64_t a1)
{
  v2 = sub_2704414F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27043F3B0(uint64_t a1)
{
  v2 = sub_2704414F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_27043F3EC(void *a1@<X8>)
{
  sub_27043EF9C();
  if (!v1)
  {
    memcpy(a1, v3, 0x59uLL);
  }
}

unint64_t sub_27043F474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27043F218(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_27043F4A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27043F264(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_27043F580()
{
  v1 = sub_2703FC5C0(v0 + 304, &v13, &qword_2807CF2D8, &unk_2705DF6E0);
  *&result = OUTLINED_FUNCTION_11_9(v1, v2, v3, v4, v5, v6, v7, v8, v9, v12, v10, v13, v14).n128_u64[0];
  return result;
}

uint64_t sub_27043F5C8@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  v6 = type metadata accessor for HorizontalStackComponentModel(0);
  sub_2703FC5C0(v1 + *(v6 + 52), v2, &qword_2807CF130, &unk_2705DEE50);
  return sub_2703FC3D4(v2, a1, &qword_2807CF190, &unk_2705DEE80);
}

uint64_t sub_27043F67C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x8000000270613DD0 == a2;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7562697274736964 && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000270613DF0 == a2;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000270613E10 == a2;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x79616C7265646E75 && a2 == 0xE800000000000000;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
                  if (v13 || (sub_2705D8134() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000011 && 0x80000002706137E0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2705D8134();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_27043F994(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E656E6F706D6F63;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x7562697274736964;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x676E6964646170;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x79616C7265646E75;
      break;
    case 8:
      result = 0x6575676573;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_27043FADC()
{
  OUTLINED_FUNCTION_10_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2688, &qword_2705EE010);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21_2();
  v7 = OUTLINED_FUNCTION_17_10();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_27044129C();
  sub_2705D84C4();
  LOBYTE(v30[0]) = 0;
  v9 = OUTLINED_FUNCTION_17_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_14_18(&qword_2807CFE90);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  if (!v1)
  {
    v32 = *(v0 + 40);
    v31 = 1;
    v11 = OUTLINED_FUNCTION_17_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_14_18(&unk_2807D2690);
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    memcpy(v30, (v0 + 48), 0x59uLL);
    LOBYTE(v23[0]) = 2;
    sub_2704413F4();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    LOBYTE(v30[0]) = *(v0 + 137);
    LOBYTE(v23[0]) = 3;
    sub_270441448();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    v13 = *(v0 + 152);
    v28 = *(v0 + 144);
    v29 = v13;
    v27 = 4;
    sub_2703E9140();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    v14 = *(v0 + 176);
    v30[0] = *(v0 + 160);
    v30[1] = v14;
    v30[2] = *(v0 + 192);
    *(&v30[2] + 9) = *(v0 + 201);
    LOBYTE(v23[0]) = 5;
    sub_2703E10C0();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    v15 = *(v0 + 232);
    v25 = *(v0 + 224);
    v26 = v15;
    v24 = 6;
    v16 = OUTLINED_FUNCTION_17_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    OUTLINED_FUNCTION_14_18(&unk_2807D26B0);
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    v18 = *(v0 + 256);
    v30[0] = *(v0 + 240);
    v30[1] = v18;
    v19 = *(v0 + 288);
    v21 = *(v0 + 240);
    v20 = *(v0 + 256);
    v30[2] = *(v0 + 272);
    v30[3] = v19;
    v23[0] = v21;
    v23[1] = v20;
    v23[2] = v30[2];
    v23[3] = *(v0 + 288);
    v22[79] = 7;
    sub_2703FC5C0(v30, v22, &qword_2807CFE38, &qword_2705E2990);
    sub_2703E1114();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    OUTLINED_FUNCTION_24_10(v23);
    sub_2703C2EFC(v22, &qword_2807CFE38, &qword_2705E2990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    sub_2703E0F80(&qword_2807CFE98);
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    type metadata accessor for HorizontalStackComponentModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    sub_2703E1004();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_11_3();
}

void sub_27043FFBC()
{
  OUTLINED_FUNCTION_10_1();
  v38 = v0;
  v3 = v2;
  v36[0] = v4;
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2660, &unk_2705EE000);
  OUTLINED_FUNCTION_0();
  v37 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_2();
  v9 = type metadata accessor for HorizontalStackComponentModel(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 28) = 0;
  v12[232] = 1;
  *(v12 + 15) = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 17) = 0u;
  memset(v55, 0, 40);
  *(v12 + 18) = 0u;
  *(v12 + 19) = 0u;
  *(v12 + 20) = 0u;
  *(v12 + 42) = 0;
  sub_2703F92B0(v55, (v12 + 304), &unk_2807CF480, &unk_2705DC040);
  v13 = *(v10 + 60);
  v14 = sub_2705D6A54();
  v40 = v13;
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v14);
  v15 = v3[3];
  v39 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v15);
  sub_27044129C();
  v16 = v38;
  sub_2705D8484();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    v19 = *(v12 + 16);
    v55[0] = *(v12 + 15);
    v55[1] = v19;
    v20 = *(v12 + 18);
    v55[2] = *(v12 + 17);
    v55[3] = v20;
    sub_2703C2EFC(v55, &qword_2807CFE38, &qword_2705E2990);
    sub_2703C2EFC((v12 + 304), &qword_2807CF2D8, &unk_2705DF6E0);
    sub_2703C2EFC(&v12[v40], &qword_2807CF130, &unk_2705DEE50);
  }

  else
  {
    v38 = v1;
    v17 = OUTLINED_FUNCTION_17_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    LOBYTE(v49[0]) = 0;
    OUTLINED_FUNCTION_14_18(&qword_2807CFE40);
    OUTLINED_FUNCTION_15_14();
    v21 = v55[1];
    *v12 = v55[0];
    *(v12 + 1) = v21;
    *(v12 + 4) = *&v55[2];
    v22 = OUTLINED_FUNCTION_17_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    LOBYTE(v49[0]) = 1;
    OUTLINED_FUNCTION_14_18(&unk_2807D2670);
    OUTLINED_FUNCTION_15_14();
    v24 = v12 + 240;
    *(v12 + 5) = *&v55[0];
    v54 = 2;
    sub_2704412F0();
    OUTLINED_FUNCTION_5_27();
    sub_2705D7F44();
    v25 = v37;
    memcpy(v12 + 48, v55, 0x59uLL);
    LOBYTE(v47[0]) = 3;
    sub_270441344();
    OUTLINED_FUNCTION_5_27();
    sub_2705D7F44();
    v12[137] = v49[0];
    LOBYTE(v47[0]) = 4;
    sub_2703E9098();
    OUTLINED_FUNCTION_5_27();
    sub_2705D7F44();
    v26 = BYTE8(v49[0]);
    *(v12 + 18) = *&v49[0];
    v12[152] = v26;
    v50 = 5;
    sub_2703E0E1C();
    OUTLINED_FUNCTION_5_27();
    sub_2705D7F44();
    v27 = v52;
    *(v12 + 10) = v51;
    *(v12 + 11) = v27;
    *(v12 + 12) = *v53;
    *(v12 + 201) = *&v53[9];
    LOBYTE(v43) = 6;
    if ((sub_2705D7FC4() & 1) != 0 && (sub_2705D7FD4() & 1) == 0)
    {
      sub_2705D7EF4();
      sub_27044AE4C(v49);
      v28 = *&v47[0];
      v29 = BYTE8(v47[0]);
      v25 = v37;
      v24 = v12 + 240;
    }

    else
    {
      v28 = 0;
      v29 = 1;
    }

    *(v12 + 28) = v28;
    v12[232] = v29;
    v48 = 7;
    sub_2703E0ED4();
    v37 = &qword_2807D02C8;
    sub_2705D7F44();
    v43 = v49[0];
    v44 = v49[1];
    v45 = v49[2];
    v46 = v49[3];
    v30 = v24[1];
    v47[0] = *v24;
    v47[1] = v30;
    v31 = v24[3];
    v47[2] = v24[2];
    v47[3] = v31;
    sub_2703C2EFC(v47, &qword_2807CFE38, &qword_2705E2990);
    v32 = v44;
    *v24 = v43;
    v24[1] = v32;
    v33 = v46;
    v24[2] = v45;
    v24[3] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8, &unk_2705DF6E0);
    v41 = 8;
    sub_2703E0F80(&qword_2807CFE48);
    sub_2705D7FA4();
    sub_2703F92B0(v42, (v12 + 304), &qword_2807CF2D8, &unk_2705DF6E0);
    v42[0] = 9;
    sub_2703E0C88();
    v34 = v38;
    OUTLINED_FUNCTION_5_27();
    sub_2705D7FA4();
    (v25[1])(v37, v6);
    sub_2703F92B0(v34, &v12[v40], &qword_2807CF130, &unk_2705DEE50);
    OUTLINED_FUNCTION_7_17();
    sub_270444368(v12, v36[0], v35);
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_270441398(v12);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270440730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043F67C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270440758@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27043F98C();
  *a1 = result;
  return result;
}

uint64_t sub_270440780(uint64_t a1)
{
  v2 = sub_27044129C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704407BC(uint64_t a1)
{
  v2 = sub_27044129C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270440830@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_7_17();
  sub_270444368(v3, v5, v4);
  type metadata accessor for HorizontalStackState(0);
  *(swift_allocObject() + 16) = 0;
  sub_2705D4624();
  v6 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
  result = sub_2705D5E44();
  *v6 = v8;
  v6[1] = v9;
  return result;
}

double sub_2704408D0()
{
  swift_getKeyPath();
  sub_270441040(&unk_2807D2610);
  sub_2705D45F4();

  return *(v0 + 16);
}

void sub_270440970(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x28223BE20](KeyPath);
    v5[2] = v1;
    *&v5[3] = a1;
    sub_270440A20(v4, sub_270440C88, v5);
  }
}

uint64_t sub_270440AD8()
{
  v1 = OBJC_IVAR____TtC19UnifiedMessagingKit20HorizontalStackState___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_270440B94(uint64_t a1)
{
  result = sub_2705D4634();
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

double sub_270440C88()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_270440CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_87(*(a1 + 24));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
  v8 = a1 + *(a3 + 52);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_270440D48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130, &unk_2705DEE50);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_270440DF4(uint64_t a1)
{
  sub_2703C1B58(319);
  if (v1 <= 0x3F)
  {
    sub_270441084(319);
    if (v2 <= 0x3F)
    {
      sub_2704410E0(319, &qword_2807D2630, &type metadata for HorizontalStackComponentModel.SizingConstraints, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2704410E0(319, &qword_2807D2638, &type metadata for HorizontalDistribution, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2704410E0(319, &qword_2807D2640, &unk_2880520D0, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2704410E0(319, &qword_2807CFE10, &unk_288052148, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2704410E0(319, &qword_2807D2648, MEMORY[0x277CE00B0], type metadata accessor for CodableOptionalByProxy);
              if (v7 <= 0x3F)
              {
                sub_2704410E0(319, &qword_2807CFE18, &unk_28805D3D0, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_2703DFCDC(319, &qword_2807CF320, &qword_2807CF328, qword_2705DF710);
                  if (v9 <= 0x3F)
                  {
                    sub_2703DFCDC(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80);
                    if (v10 <= 0x3F)
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

unint64_t sub_270441040(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_270441084(uint64_t a1)
{
  if (!qword_2807D2628)
  {
    sub_2703E346C();
    v1 = sub_2705D6A24();
    if (!v2)
    {
      atomic_store(v1, &qword_2807D2628);
    }
  }
}

void sub_2704410E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_27044114C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 89))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_270441190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

unint64_t sub_270441200()
{
  result = qword_2807D2650;
  if (!qword_2807D2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2650);
  }

  return result;
}

unint64_t sub_27044129C()
{
  result = qword_2807D2668;
  if (!qword_2807D2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2668);
  }

  return result;
}

unint64_t sub_2704412F0()
{
  result = qword_2807D2678;
  if (!qword_2807D2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2678);
  }

  return result;
}

unint64_t sub_270441344()
{
  result = qword_2807D2680;
  if (!qword_2807D2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2680);
  }

  return result;
}

uint64_t sub_270441398(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalStackComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2704413F4()
{
  result = qword_2807D2698;
  if (!qword_2807D2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2698);
  }

  return result;
}

unint64_t sub_270441448()
{
  result = qword_2807D26A0;
  if (!qword_2807D26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26A0);
  }

  return result;
}

unint64_t sub_27044149C()
{
  result = qword_2807D26B8;
  if (!qword_2807D26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26B8);
  }

  return result;
}

unint64_t sub_2704414F0()
{
  result = qword_2807D26C8;
  if (!qword_2807D26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26C8);
  }

  return result;
}

unint64_t sub_270441544()
{
  result = qword_2807D26D0;
  if (!qword_2807D26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26D0);
  }

  return result;
}

unint64_t sub_270441598()
{
  result = qword_2807D26E0;
  if (!qword_2807D26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26E0);
  }

  return result;
}

_BYTE *sub_2704415EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x2704416B8);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HorizontalStackComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HorizontalStackComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x270441844);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270441890()
{
  result = qword_2807D26E8;
  if (!qword_2807D26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26E8);
  }

  return result;
}

unint64_t sub_2704418E8()
{
  result = qword_2807D26F0;
  if (!qword_2807D26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26F0);
  }

  return result;
}

unint64_t sub_270441940()
{
  result = qword_2807D26F8;
  if (!qword_2807D26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26F8);
  }

  return result;
}

unint64_t sub_270441998()
{
  result = qword_2807D2700;
  if (!qword_2807D2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2700);
  }

  return result;
}

unint64_t sub_2704419F0()
{
  result = qword_2807D2708;
  if (!qword_2807D2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2708);
  }

  return result;
}

unint64_t sub_270441A48()
{
  result = qword_2807D2710;
  if (!qword_2807D2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2710);
  }

  return result;
}

unint64_t sub_270441A9C()
{
  result = qword_2807D2738;
  if (!qword_2807D2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2738);
  }

  return result;
}

uint64_t sub_270441AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v140 = a1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2800, &qword_2705EE8B8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_0();
  v139 = v5;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2808, &qword_2705EE8C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v125 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2810, &qword_2705EE8C8);
  OUTLINED_FUNCTION_23_0(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  v137 = v10;
  v11 = type metadata accessor for HorizontalStackComponentModelView(0);
  v133 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v134 = v12;
  v13 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2818, &unk_2705EE8D0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1760, &qword_2705E77D8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v117 - v16;
  v122.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1750, &qword_2705E77D0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v117 - v19;
  *&v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1740, &qword_2705E77C8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_0();
  v124 = v22;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1730, &qword_2705E77C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_21_2();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1770, &qword_2705E77E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  v26 = &v117 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1720, &unk_2705EE8E0);
  v28 = OUTLINED_FUNCTION_23_0(v27);
  v29 = MEMORY[0x28223BE20](v28);
  v127 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v130 = &v117 - v31;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1710, &unk_2705E77B0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  v34 = &v117 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D16C0, &qword_2705EE8F0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v117 - v37;
  LODWORD(v37) = *(v3 + 232);
  v132 = v36;
  if (v37 == 1)
  {
    v39 = sub_2705D52D4();
  }

  else
  {
    v39 = *(v3 + 224);
  }

  v40 = *(v3 + 152);
  if (v40 == 255)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v3 + 144);
    if (v40)
    {
      v41 = qword_2705EE9A8[v41];
    }
  }

  v135 = v38;
  *v26 = v39;
  *(v26 + 1) = v41;
  v26[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2820, &qword_2705EE8F8);
  sub_2704425C8(v3, &v26[*(v42 + 44)]);
  v43 = *(v3 + 168);
  if (v43 == 254)
  {
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v44, v45, v46, v47);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_20();
    sub_2704442E8(v48);
    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_33_2();
    sub_2703E2A50(v49);
    sub_2705D5434();
  }

  else
  {
    v119 = v13;
    v50 = *(v3 + 160);
    v51 = *(v3 + 192);
    v152 = *(v3 + 176);
    v153[0] = v51;
    *(v153 + 9) = *(v3 + 201);
    v150 = v50;
    v151 = v43;
    v52 = sub_2705D56F4();
    sub_270416214();
    v53 = 0uLL;
    v120 = 0u;
    v54 = 0uLL;
    if ((v55 & 1) == 0)
    {
      sub_2705D4D34();
      OUTLINED_FUNCTION_29_5();
    }

    v117 = v54;
    v118 = v53;
    sub_2703FC5C0(v26, v17, &qword_2807D1770, &qword_2705E77E0);
    v56 = &v17[*(v121 + 36)];
    *v56 = v52;
    v57 = v118;
    *(v56 + 24) = v117;
    OUTLINED_FUNCTION_13_13(v56, v57);
    v58 = sub_2705D5714();
    sub_27041624C();
    v59 = 0uLL;
    if ((v60 & 1) == 0)
    {
      sub_2705D4D34();
      OUTLINED_FUNCTION_29_5();
      v120 = v61;
    }

    v118 = v59;
    v121 = v34;
    sub_2703FC3D4(v17, v20, &qword_2807D1760, &qword_2705E77D8);
    v62 = &v20[*(v122.n128_u64[0] + 36)];
    *v62 = v58;
    *(v62 + 24) = v118;
    OUTLINED_FUNCTION_13_13(v62, v120);
    v63 = sub_2705D56D4();
    sub_270417938();
    v64 = 0uLL;
    v122 = 0u;
    v65 = 0uLL;
    if ((v66 & 1) == 0)
    {
      sub_2705D4D34();
      OUTLINED_FUNCTION_29_5();
    }

    v118 = v65;
    v120 = v64;
    v67 = v20;
    v68 = v124;
    sub_2703FC3D4(v67, v124, &qword_2807D1750, &qword_2705E77D0);
    v69 = v68 + *(v123 + 36);
    *v69 = v63;
    *(v69 + 24) = v118;
    OUTLINED_FUNCTION_13_13(v69, v120);
    v70 = sub_2705D56E4();
    sub_270417900();
    v71 = 0uLL;
    v13 = v119;
    if ((v72 & 1) == 0)
    {
      sub_2705D4D34();
      OUTLINED_FUNCTION_29_5();
      v122 = v73;
    }

    v123 = v71;
    sub_2703FC3D4(v68, v2, &qword_2807D1740, &qword_2705E77C8);
    v74 = v2 + *(v128 + 36);
    *v74 = v70;
    v75 = v122;
    *(v74 + 24) = v123;
    OUTLINED_FUNCTION_13_13(v74, v75);
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v76, v77, v78, v79);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_20();
    OUTLINED_FUNCTION_33_2();
    sub_2704442E8(v80);
    OUTLINED_FUNCTION_8_23();
    sub_2703E2A50(v81);
    sub_2705D5434();
    OUTLINED_FUNCTION_33_2();
    sub_2703C2EFC(v82, v83, v84);
    v34 = v121;
  }

  sub_2703C2EFC(v26, &qword_2807D1770, &qword_2705E77E0);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC3D4(v85, v86, v87, v88);
  sub_2705D60A4();
  sub_2705D5094(v148);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC3D4(v89, v90, v91, v92);
  memcpy(&v34[*(v129 + 36)], v148, 0x70uLL);
  sub_270444368(v3, v13, type metadata accessor for HorizontalStackComponentModelView);
  v93 = (*(v133 + 80) + 16) & ~*(v133 + 80);
  v94 = swift_allocObject();
  sub_2704443C8(v13, v94 + v93);
  v95 = sub_2705D60A4();
  v97 = v96;
  v98 = sub_2705D5CD4();
  v99 = sub_2705D60A4();
  v101 = v100;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_27044442C;
  *(v102 + 24) = v94;
  v103 = v135;
  sub_2703FC3D4(v34, v135, &qword_2807D1710, &unk_2705E77B0);
  v104 = (v103 + *(v132 + 36));
  *v104 = v98;
  v104[1] = sub_270412C5C;
  v104[2] = v102;
  v104[3] = v99;
  v104[4] = v101;
  v104[5] = v95;
  v104[6] = v97;
  v105 = *(v3 + 288);
  v145 = *(v3 + 272);
  v146 = v105;
  v106 = *(v3 + 256);
  v143 = *(v3 + 240);
  v144 = v106;
  v147[2] = v145;
  v147[3] = v105;
  v147[0] = v143;
  v147[1] = v106;
  if (v143)
  {
    sub_2703E2A94(v147, v149);
    v142[0] = v143;
    v142[1] = v144;
    v142[2] = v145;
    v142[3] = v146;
    sub_270444564(v142, &v141);
    v107 = v103;
    sub_270406288(v149);
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v108, v109, v110, v111);
    swift_storeEnumTagMultiPayload();
    sub_2704444D8();
    sub_2704148A8();
    v112 = v137;
    sub_2705D5434();
    sub_2703C2EFC(&v143, &qword_2807CFE38, &qword_2705E2990);
    OUTLINED_FUNCTION_33_2();
    sub_2703C2EFC(v113, v114, v115);
  }

  else
  {
    sub_2703FC5C0(v103, v139, &qword_2807D16C0, &qword_2705EE8F0);
    swift_storeEnumTagMultiPayload();
    sub_2704444D8();
    v107 = v103;
    sub_2704148A8();
    v112 = v137;
    sub_2705D5434();
  }

  sub_2703FC3D4(v112, v140, &qword_2807D2810, &qword_2705EE8C8);
  return sub_2703C2EFC(v107, &qword_2807D16C0, &qword_2705EE8F0);
}

uint64_t sub_2704425C8@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for HorizontalStackComponentModelView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2838, &qword_2705EE930);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v31 - v10;
  v11 = *(a1 + 137);
  v39 = 0;
  if (v11 - 1 > 3)
  {
    v12 = 256;
  }

  else
  {
    v12 = 1;
  }

  v40 = v12;
  v13 = sub_2705D5434();
  v35 = v41;
  v33 = v43;
  v34 = v42;
  MEMORY[0x28223BE20](v13);
  v30 = a1;
  v41 = sub_27043D984(sub_2704445C0, (&v31 - 4), 0, v14);
  sub_270444368(a1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HorizontalStackComponentModelView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_2704443C8(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2840, &qword_2705EE938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2848, &unk_2705EE940);
  sub_2703E2A50(&unk_2807D2850);
  sub_2703E2A50(&unk_2807D2858);
  v30 = sub_2703E2A50(&unk_2807D2860);
  sub_2705D5F84();
  v17 = v11 > 4 || v11 == 1;
  v39 = 0;
  if (v17)
  {
    v18 = 256;
  }

  else
  {
    v18 = 1;
  }

  v40 = v18;
  sub_2705D5434();
  v32 = v41;
  v19 = v42;
  v20 = v43;
  v21 = *(v7 + 16);
  v22 = v36;
  v23 = v38;
  v21(v36, v38, v6);
  v24 = v37;
  *v37 = v35;
  v25 = v33;
  *(v24 + 8) = v34;
  *(v24 + 9) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2870, &qword_2705EE950);
  v21(v24 + *(v26 + 48), v22, v6);
  v27 = v24 + *(v26 + 64);
  *v27 = v32;
  v27[8] = v19;
  v27[9] = v20;
  v28 = *(v7 + 8);
  v28(v23, v6);
  return (v28)(v22, v6);
}

unint64_t *sub_270442A64@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  v12 = 759386952;
  v13 = 0xE400000000000000;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(a2 + 40);
  if (v4 >= *(v5 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5 + 40 * v4;
  sub_2703B4E54(v6 + 32, v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2705D67D4();
  v7 = sub_2705D7CC4();
  MEMORY[0x2743A3A90](v7);

  sub_2703D7E30(&v10);
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  if (v4 < *(v5 + 16))
  {
    v8 = v12;
    v9 = v13;
    result = sub_2703B4E54(v6 + 32, (a3 + 2));
    a3[7] = v4;
    *a3 = v8;
    a3[1] = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_270442B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v5) = *(a2 + 137);
  v80 = v5 - 3;
  if ((v5 - 3) >= 2u)
  {
    *v104 = 0;
    *&v104[8] = 256;
    sub_2705D5434();
    v88 = __dst[0];
    v86 = BYTE1(__dst[1]);
    v87 = __dst[1];
  }

  else
  {
    *v104 = 0;
    *&v104[8] = 1;
    sub_2705D5434();
    v88 = __dst[0];
    v86 = BYTE1(__dst[1]);
    v87 = __dst[1];
    if (v5 == 4)
    {
      *v104 = 0;
      *&v104[8] = 1;
      goto LABEL_6;
    }
  }

  *v104 = 0;
  *&v104[8] = 256;
LABEL_6:
  sub_2705D5434();
  v85 = __dst[0];
  v83 = BYTE1(__dst[1]);
  v84 = __dst[1];
  sub_2703FC5C0(a1 + 16, __dst, &qword_2807D2878, &qword_2705EE958);
  sub_2703B4E54(__dst, v104);
  KeyPath = swift_getKeyPath();
  v81 = swift_allocObject();
  sub_2703B291C(v104, v81 + 16);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v6 = *(a2 + 56);
  v89 = v5;
  if (v6 == 254)
  {
    v7 = 0.0;
    v90 = 0.0;
    v94 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 1;
    v92 = 1;
    v96 = 1;
    v12 = 1;
    v13 = 1;
    v14 = 1;
  }

  else
  {
    v97 = *(a2 + 64);
    v15 = *(a2 + 72);
    v16 = *(a2 + 88);
    v75 = *(a2 + 96);
    v76 = *(a2 + 112);
    v77 = *(a2 + 80);
    v17 = *(a2 + 120);
    v91 = *(a2 + 128);
    v93 = *(a2 + 136);
    v95 = *(a2 + 104);
    v14 = v6 == 255;
    if (v6 == 255)
    {
      v10 = 0.0;
    }

    else
    {
      v5 = *(a2 + 48);
      v18 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v20 = *v18;
      v19 = v18[1];
      __dst[0] = v20;
      __dst[1] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830, &qword_2705EE928);
      sub_2705D5E54();
      v21 = sub_2704408D0();

      v22 = *(a2 + 152);
      if (v22 == 255)
      {
        v23 = 0.0;
      }

      else if (v22)
      {
        v23 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v23 = *(a2 + 144);
      }

      v24 = v5;
      LOBYTE(v5) = v89;
      v10 = sub_27043DAF0(v89, v24, v6, v21, v23);
    }

    v13 = v16 == 255;
    if (v16 == 255)
    {
      v9 = 0.0;
    }

    else
    {
      v25 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v27 = *v25;
      v26 = v25[1];
      __dst[0] = v27;
      __dst[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830, &qword_2705EE928);
      sub_2705D5E54();
      v28 = sub_2704408D0();

      v29 = *(a2 + 152);
      if (v29 == 255)
      {
        v30 = 0.0;
      }

      else if (v29)
      {
        v30 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v30 = *(a2 + 144);
      }

      v9 = sub_27043DAF0(v5, v77, v16, v28, v30);
    }

    v78 = v17;
    if (v15 == 255)
    {
      v37 = 0.0;
    }

    else
    {
      v31 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v33 = *v31;
      v32 = v31[1];
      __dst[0] = v33;
      __dst[1] = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830, &qword_2705EE928);
      sub_2705D5E54();
      v34 = sub_2704408D0();

      v35 = *(a2 + 152);
      if (v35 == 255)
      {
        v36 = 0.0;
      }

      else if (v35)
      {
        v36 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v36 = *(a2 + 144);
      }

      v37 = sub_27043DAF0(v5, v97, v15, v34, v36);
    }

    v96 = v95 == 255;
    v12 = v15 == 255;
    if (v95 == 255)
    {
      v94 = 0.0;
      v43 = v93;
    }

    else
    {
      v38 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v40 = *v38;
      v39 = v38[1];
      __dst[0] = v40;
      __dst[1] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830, &qword_2705EE928);
      sub_2705D5E54();
      v41 = sub_2704408D0();

      v42 = *(a2 + 152);
      v43 = v93;
      if (v42 == 255)
      {
        v44 = 0.0;
      }

      else if (v42)
      {
        v44 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v44 = *(a2 + 144);
      }

      v94 = sub_27043DAF0(v5, v75, v95, v41, v44);
    }

    v92 = v43 == 255;
    if (v43 == 255)
    {
      v90 = 0.0;
    }

    else
    {
      v45 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v47 = *v45;
      v46 = v45[1];
      __dst[0] = v47;
      __dst[1] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830, &qword_2705EE928);
      sub_2705D5E54();
      v48 = sub_2704408D0();

      v49 = *(a2 + 152);
      if (v49 == 255)
      {
        v50 = 0.0;
      }

      else if (v49)
      {
        v50 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v50 = *(a2 + 144);
      }

      v90 = sub_27043DAF0(v5, v91, v43, v48, v50);
    }

    v8 = v37;
    if (v78 == 255)
    {
      v7 = 0.0;
      v11 = 1;
    }

    else
    {
      v51 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v53 = *v51;
      v52 = v51[1];
      __dst[0] = v53;
      __dst[1] = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830, &qword_2705EE928);
      sub_2705D5E54();
      v54 = sub_2704408D0();

      v55 = *(a2 + 152);
      if (v55 == 255)
      {
        v56 = 0.0;
      }

      else if (v55)
      {
        v56 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v56 = *(a2 + 144);
      }

      v57 = sub_27043DAF0(v5, v76, v78, v54, v56);
      v11 = 0;
      v7 = v57;
    }
  }

  sub_2705D60A4();
  v58 = v10;
  if (v14)
  {
    v58 = -INFINITY;
  }

  v59 = v9;
  if (v13)
  {
    v59 = v58;
  }

  v60 = v8;
  if (v12)
  {
    v60 = v59;
  }

  if (v58 > v59 || v59 > v60)
  {
    goto LABEL_77;
  }

  v62 = v94;
  if (v96)
  {
    v62 = -INFINITY;
  }

  v63 = v90;
  if (v92)
  {
    v63 = v62;
  }

  v64 = v7;
  if (v11)
  {
    v64 = v63;
  }

  if (v62 > v63 || v63 > v64)
  {
LABEL_77:
    sub_2705D7A84();
    v66 = sub_2705D56A4();
    sub_2705D4C04();
  }

  sub_2705D5094(__src);
  v117 = 0;
  v116 = 0;
  if (v80 >= 2)
  {
    if (v89 == 5)
    {
      sub_2703FC5C0(a1 + 16, __dst, &qword_2807D2878, &qword_2705EE958);
      v70 = *(*(a2 + 40) + 16) - 1;
      v71 = __dst[5];
      __swift_destroy_boxed_opaque_existential_1(__dst);
      *v104 = 0;
      if (v71 >= v70)
      {
        v72 = 256;
      }

      else
      {
        v72 = 1;
      }

      *&v104[8] = v72;
      sub_2705D5434();
      if (BYTE1(__dst[1]))
      {
        v73 = 256;
      }

      else
      {
        v73 = 0;
      }

      *v104 = __dst[0];
      *&v104[8] = v73 | LOBYTE(__dst[1]);
      v104[10] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2898, &qword_2705EE990);
      sub_270444888();
      sub_2705D5434();
      *v104 = __dst[0];
      *&v104[10] = BYTE2(__dst[1]) != 0;
      *&v104[8] = __dst[1];
    }

    else
    {
      *v104 = 0;
      *&v104[8] = 0x1000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2880, &qword_2705EE988);
    sub_2704447FC();
    sub_2705D5434();
    v67 = __dst[0];
    v68 = LOWORD(__dst[1]) | (BYTE2(__dst[1]) << 16);
    v69 = BYTE3(__dst[1]);
    goto LABEL_91;
  }

  *v104 = 0;
  *&v104[8] = 1;
  v104[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2898, &qword_2705EE990);
  sub_270444888();
  sub_2705D5434();
  *v104 = __dst[0];
  *&v104[10] = BYTE2(__dst[1]) != 0;
  *&v104[8] = __dst[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2880, &qword_2705EE988);
  sub_2704447FC();
  sub_2705D5434();
  v67 = __dst[0];
  v68 = LOWORD(__dst[1]) | (BYTE2(__dst[1]) << 16);
  v69 = BYTE3(__dst[1]);
  if (v89 != 4)
  {
LABEL_91:
    *v104 = 0;
    *&v104[8] = 256;
    goto LABEL_92;
  }

  *v104 = 0;
  *&v104[8] = 1;
LABEL_92:
  sub_2705D5434();
  v108 = v88;
  v109 = v87;
  v110 = v86;
  v105 = v85;
  v106 = v84;
  v107 = v83;
  v111[0] = &v108;
  v111[1] = &v105;
  *v104 = KeyPath;
  v104[8] = 0;
  *&v104[9] = *v115;
  *&v104[12] = *&v115[3];
  *&v104[16] = sub_2703E2B30;
  *&v104[24] = v81;
  v104[32] = 0;
  *&v104[33] = *v114;
  *&v104[36] = *&v114[3];
  *&v104[40] = sub_2703DF000;
  *&v104[48] = 0;
  memcpy(&v104[56], __src, 0x70uLL);
  v100 = v67;
  v102 = BYTE2(v68);
  v101 = v68;
  v103 = v69;
  v111[2] = v104;
  v111[3] = &v100;
  v98 = __dst[0];
  v99 = __dst[1];
  v111[4] = &v98;
  sub_27043D84C(v111, a3);
  memcpy(__dst, v104, sizeof(__dst));
  return sub_2703C2EFC(__dst, &qword_2807D28A0, &unk_2705EE998);
}

uint64_t sub_270443718(double a1)
{
  type metadata accessor for HorizontalStackComponentModelView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830, &qword_2705EE928);
  sub_2705D5E54();
  sub_270440970(a1);
}

unint64_t sub_27044379C()
{
  result = qword_2807D2740;
  if (!qword_2807D2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2740);
  }

  return result;
}

unint64_t sub_2704437F0()
{
  result = qword_2807D2748;
  if (!qword_2807D2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2748);
  }

  return result;
}

unint64_t sub_270443844()
{
  result = qword_2807D2750;
  if (!qword_2807D2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2750);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HorizontalStackComponentModel.SizingConstraints.Constraint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x270443964);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2704439C0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x270443A5CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_270443A98()
{
  result = qword_2807D2778;
  if (!qword_2807D2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2778);
  }

  return result;
}