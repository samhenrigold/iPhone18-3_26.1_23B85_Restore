uint64_t type metadata accessor for RootNavigationDestination(uint64_t a1)
{
  result = qword_28159E9F0;
  if (!qword_28159E9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27471CDAC(uint64_t a1)
{
  sub_27471CE58();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WFWorkflowTypeName(319);
    if (v2 <= 0x3F)
    {
      sub_27471CF08(319, &qword_28159E490, 0x277D7A1C0);
      if (v3 <= 0x3F)
      {
        sub_2749F9514();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_27471CE58()
{
  if (!qword_28159E830)
  {
    v0 = sub_2749FD6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_28159E830);
    }
  }
}

void sub_27471CEBC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_27471CF08(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_27471CF4C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedManager];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;
  v64 = sub_2747A4718;
  v65 = v6;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_115;
  v7 = _Block_copy(&v60);

  v8 = sub_2749FCD64();
  [v4 registerHandler:v7 forIncomingRequestsWithAction:v8 scheme:0];

  _Block_release(v7);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  v64 = sub_2747A473C;
  v65 = v10;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_122;
  v11 = _Block_copy(&v60);

  v12 = sub_2749FCD64();
  [v4 &selRef_accessoryIcon + 6];

  _Block_release(v11);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v13;
  v64 = sub_2747A4760;
  v65 = v14;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_129;
  v15 = _Block_copy(&v60);

  v16 = sub_2749FCD64();
  [v4 &selRef_accessoryIcon + 6];

  _Block_release(v15);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v17;
  v64 = sub_2747A476C;
  v65 = v18;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_136;
  v19 = _Block_copy(&v60);

  v20 = sub_2749FCD64();
  v21 = sub_2749FCD64();
  [v4 registerHandler:v19 forIncomingRequestsWithAction:v20 legacyAction:v21 scheme:0];

  _Block_release(v19);
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = v23;
  v64 = sub_2747A4778;
  v65 = v24;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C618;
  v63 = &block_descriptor_143;
  v25 = _Block_copy(&v60);

  [v22 registerRunWorkflowHandler_];
  _Block_release(v25);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = a2;
  v27[4] = v26;
  v64 = sub_2747A47A4;
  v65 = v27;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479CCC8;
  v63 = &block_descriptor_150;
  v28 = _Block_copy(&v60);

  [v22 registerOpenWorkflowHandler_];
  _Block_release(v28);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = a1;
  v30[3] = a2;
  v30[4] = v29;
  v64 = sub_2747A47B0;
  v65 = v30;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_157;
  v31 = _Block_copy(&v60);

  v32 = sub_2749FCD64();
  v33 = sub_2749FCD64();
  [v4 registerHandler:v31 forIncomingRequestsWithAction:v32 legacyAction:v33 scheme:0];

  _Block_release(v31);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v35[2] = a1;
  v35[3] = a2;
  v35[4] = v34;
  v64 = sub_2747A47BC;
  v65 = v35;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_164;
  v36 = _Block_copy(&v60);

  v37 = sub_2749FCD64();
  v38 = sub_2749FCD64();
  [v4 registerHandler:v36 forIncomingRequestsWithAction:v37 legacyAction:v38 scheme:0];

  _Block_release(v36);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = a2;
  v40[4] = v39;
  v64 = sub_2747A47C8;
  v65 = v40;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_171;
  v41 = _Block_copy(&v60);

  v42 = sub_2749FCD64();
  [v4 registerHandler:v41 forIncomingRequestsWithAction:v42 scheme:0];

  _Block_release(v41);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  v44[2] = a1;
  v44[3] = a2;
  v44[4] = v43;
  v64 = sub_2747A47D4;
  v65 = v44;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_178;
  v45 = _Block_copy(&v60);

  v46 = sub_2749FCD64();
  v47 = v4;
  [v4 registerHandler:v45 forIncomingRequestsWithAction:v46 scheme:0];

  _Block_release(v45);
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  v49[2] = a1;
  v49[3] = a2;
  v49[4] = v48;
  v64 = sub_2747A47E0;
  v65 = v49;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_185;
  v50 = _Block_copy(&v60);

  v51 = sub_2749FCD64();
  [v4 registerHandler:v50 forIncomingRequestsWithAction:v51 scheme:0];

  _Block_release(v50);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v53[2] = a1;
  v53[3] = a2;
  v53[4] = v52;
  v64 = sub_2747A47EC;
  v65 = v53;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_192;
  v54 = _Block_copy(&v60);

  v55 = sub_2749FCD64();
  [v4 registerHandler:v54 forIncomingRequestsWithAction:v55 scheme:0];

  _Block_release(v54);
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  v57[2] = a1;
  v57[3] = a2;
  v57[4] = v56;
  v64 = sub_2747A47F8;
  v65 = v57;
  v60 = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_27479C03C;
  v63 = &block_descriptor_199;
  v58 = _Block_copy(&v60);

  v59 = sub_2749FCD64();
  [v47 registerHandler:v58 forIncomingRequestsWithAction:v59 scheme:0];

  _Block_release(v58);
}

uint64_t sub_27471DB7C()
{
  MEMORY[0x277C61150](v0 + 16);
  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_27471DBAC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27471DF20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27471DF58(uint64_t a1)
{
  result = sub_2749F9164();
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

uint64_t MyShortcutsSidebarSection.init(name:)(char a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 40) = v3;
  *(v1 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 64) = 256;
  *(v1 + 80) = 0;
  sub_2749F9154();
  v4 = 0;
  v5 = 0;
  if (a1)
  {
    sub_2749FCE14("Library", 7);
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
    }

    v6 = qword_28159E448;
    v7 = sub_2749FCD64();
    v8 = sub_2749FCD64();

    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v5 = v10;
  }

  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v11 = [objc_allocWithZone(MEMORY[0x277D7C4E0]) initWithSleepFeature_];
  *(v1 + 72) = v11;
  [v11 setObserver_];
  sub_27471E18C();
  return v1;
}

void sub_27471E18C()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v2 = type metadata accessor for RootNavigationDestination(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_39();
  v111 = (v4 - v5);
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v6);
  v106 = (&v102 - v7);
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v8);
  v113 = &v102 - v9;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v10);
  v105 = &v102 - v11;
  OUTLINED_FUNCTION_108_0();
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A30, &qword_274A16A80);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_274A0EF10;
  v114 = v14;
  v107 = v2;
  swift_storeEnumTagMultiPayload();
  v16 = qword_28159F7A0;
  v115 = v15;

  if (v16 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v17 = qword_28159F7A8;
    sub_27471FE94();
    v19 = v18;
    v20 = sub_274722FD4();
    v109 = *(v20 + 16);
    if (!v109)
    {
      break;
    }

    v103 = v17;
    v21 = 0;
    v110 = v20;
    v108 = v20 + v114;
    v112 = v115;
    v104 = v1;
    while (v21 < *(v110 + 16))
    {
      OUTLINED_FUNCTION_0_3();
      sub_2747231DC();
      if (*(v19 + 16))
      {
        sub_2749FDDF4();
        RootNavigationDestination.hash(into:)(v117);
        sub_2749FDE44();
        OUTLINED_FUNCTION_36_1();
        v24 = ~v23;
        do
        {
          v25 = v22 & v24;
          OUTLINED_FUNCTION_91();
          if (((*(v19 + 56 + v26) >> v25) & 1) == 0)
          {
            v1 = v104;
            goto LABEL_15;
          }

          sub_2747231DC();
          static RootNavigationDestination.== infix(_:_:)();
          v28 = v27;
          sub_274722608();
          v22 = v25 + 1;
        }

        while ((v28 & 1) == 0);
        OUTLINED_FUNCTION_0_3();
        sub_2747231DC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_5();
          v43 = OUTLINED_FUNCTION_24_2();
          sub_274723598(v43, v44, v45, v46, v47, v48, v49);
          v112 = v50;
        }

        v30 = *(v112 + 16);
        v29 = *(v112 + 24);
        if (v30 >= v29 >> 1)
        {
          v51 = OUTLINED_FUNCTION_8(v29);
          sub_274723598(v51, v30 + 1, 1, v112, sub_2747223FC, type metadata accessor for RootNavigationDestination, type metadata accessor for RootNavigationDestination);
          v112 = v52;
        }

        v1 = v104;
        *(v112 + 16) = v30 + 1;
        OUTLINED_FUNCTION_0_3();
        sub_274722708();
      }

LABEL_15:
      OUTLINED_FUNCTION_0_3();
      sub_2747231DC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_2_5();
        v33 = OUTLINED_FUNCTION_24_2();
        sub_274723598(v33, v34, v35, v36, v37, v38, v39);
        v115 = v40;
      }

      v32 = *(v115 + 16);
      v31 = *(v115 + 24);
      if (v32 >= v31 >> 1)
      {
        v41 = OUTLINED_FUNCTION_8(v31);
        sub_274723598(v41, v32 + 1, 1, v115, sub_2747223FC, type metadata accessor for RootNavigationDestination, type metadata accessor for RootNavigationDestination);
        v115 = v42;
      }

      ++v21;
      OUTLINED_FUNCTION_15_3();
      sub_274722608();
      *(v115 + 16) = v32 + 1;
      sub_274722708();
      if (v21 == v109)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_49:
    OUTLINED_FUNCTION_57(&qword_28159F7A0);
  }

  v112 = v115;
LABEL_22:
  sub_274722764();
  v113 = v53;
  v54 = sub_2747242E0();
  v55 = *(v54 + 16);
  v110 = v54;
  if (v55)
  {
    v56 = (v54 + 32);
    do
    {
      v57 = *v56;
      v58 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v60 = v59;
      if (v58 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v60 == v61)
      {
        v71 = v57;
      }

      else
      {
        OUTLINED_FUNCTION_105_0();
        v63 = sub_2749FDCC4();
        v64 = v57;

        if ((v63 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if ([*(v1 + 72) sleepOnboardingStatus] == 1)
      {
LABEL_32:
        sub_274722D30(v57, v113, v65, v66, v67, v68, v69, v70, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116[0], v116[1], v116[2], v116[3], v116[4], v116[5], v117[0], v117[1]);
        if ((v72 & 1) == 0)
        {
          OUTLINED_FUNCTION_144_0(v106);
          v73 = v57;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_2_5();
            v89 = OUTLINED_FUNCTION_24_2();
            sub_274723598(v89, v90, v91, v92, v93, v94, v95);
            v112 = v96;
          }

          v75 = *(v112 + 16);
          v74 = *(v112 + 24);
          if (v75 >= v74 >> 1)
          {
            v97 = OUTLINED_FUNCTION_8(v74);
            sub_274723598(v97, v75 + 1, 1, v112, sub_2747223FC, type metadata accessor for RootNavigationDestination, type metadata accessor for RootNavigationDestination);
            v112 = v98;
          }

          *(v112 + 16) = v75 + 1;
          OUTLINED_FUNCTION_0_3();
          sub_274722708();
        }

        OUTLINED_FUNCTION_144_0(v111);
        v76 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_5();
          v79 = OUTLINED_FUNCTION_24_2();
          sub_274723598(v79, v80, v81, v82, v83, v84, v85);
          v115 = v86;
        }

        v78 = *(v115 + 16);
        v77 = *(v115 + 24);
        if (v78 >= v77 >> 1)
        {
          v87 = OUTLINED_FUNCTION_8(v77);
          sub_274723598(v87, v78 + 1, 1, v115, sub_2747223FC, type metadata accessor for RootNavigationDestination, type metadata accessor for RootNavigationDestination);
          v115 = v88;
        }

        *(v115 + 16) = v78 + 1;
        OUTLINED_FUNCTION_0_3();
        sub_274722708();
        goto LABEL_44;
      }

LABEL_44:
      ++v56;
      --v55;
    }

    while (v55);
  }

  swift_beginAccess();
  *(v1 + 32) = v112;

  swift_beginAccess();
  *(v1 + 40) = v115;

  OUTLINED_FUNCTION_77(v1 + 48, v116);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v99 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    v101 = sub_274720E30(&qword_280967BB8, 255, type metadata accessor for MyShortcutsSidebarSection);
    (*(v99 + 8))(v1, v101, ObjectType, v99);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_64_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(result + 64) = a2;
  *(result + 32) = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2749FD994();
}

void OUTLINED_FUNCTION_40_0()
{
}

id OUTLINED_FUNCTION_40_6()
{

  return [v0 (v1 + 2168)];
}

void *OUTLINED_FUNCTION_40_10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(__srca, a21);
  __src = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);

  return memcpy(a1, __srca, 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_40_11()
{

  return sub_2749F90E4();
}

uint64_t OUTLINED_FUNCTION_103(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_59_3(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_59_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

void *sub_27471ED9C()
{
  type metadata accessor for SidebarPreferences();
  swift_allocObject();
  result = sub_27471EDFC();
  qword_28159F7A8 = result;
  return result;
}

void *sub_27471EDFC()
{
  v1 = v0;
  v2 = [objc_opt_self() systemShortcutsUserDefaults];
  v1[2] = v2;
  v1[3] = 0xD00000000000001CLL;
  v1[4] = 0x8000000274A2AC10;
  v1[5] = 0xD000000000000022;
  v1[6] = 0x8000000274A2AC30;
  v1[7] = 0xD00000000000001FLL;
  v1[8] = 0x8000000274A2AC60;
  v3 = *MEMORY[0x277D7A880];
  v4 = *MEMORY[0x277D7A878];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BA8, &unk_274A14680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0EF10;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x8000000274A2AC10;
  v22 = MEMORY[0x277D84F90];
  v6 = v3;
  v7 = v4;
  v8 = v2;
  sub_27471F128();
  v9 = v22;
  v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v12 = v11;
  v13 = *(v22 + 16);
  if (v13 >= *(v22 + 24) >> 1)
  {
    sub_27471F128();
    v9 = v22;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = v10;
  *(v14 + 40) = v12;

  v15 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v17 = v16;

  v18 = *(v9 + 16);
  if (v18 >= *(v9 + 24) >> 1)
  {
    sub_27471F128();
    v9 = v22;
  }

  *(v9 + 16) = v18 + 1;
  v19 = v9 + 16 * v18;
  *(v19 + 32) = v15;
  *(v19 + 40) = v17;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BB0, &unk_274A0FD90);
  *(inited + 48) = v9;
  sub_2749FCCB4();
  v20 = sub_2749FCC94();

  [v8 registerDefaults_];

  return v1;
}

void sub_27471F064()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280968DF0, &unk_274A11F40);
    v8 = OUTLINED_FUNCTION_55(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_9_0(v9);
  }

  OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    OUTLINED_FUNCTION_109();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_2749FDCC4();
}

id OUTLINED_FUNCTION_1_0()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_148@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return type metadata accessor for SmartShortcutPickerAppShortcutDataSource(0);
}

uint64_t OUTLINED_FUNCTION_10_10@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_27471F620(v4, v5);
}

id OUTLINED_FUNCTION_10_11(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v5, 0, 1, a4);

  return sub_2748605C4(v5, v4);
}

uint64_t OUTLINED_FUNCTION_10_18()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_21()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_10_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2749FB7B4();
}

void *OUTLINED_FUNCTION_10_24()
{

  return memcpy((v0 + 280), (v0 + 472), 0xB9uLL);
}

id OUTLINED_FUNCTION_10_25()
{

  return [v0 (v1 + 930)];
}

uint64_t OUTLINED_FUNCTION_10_27()
{
  sub_2747CB3B0(*(v0 + 120), *(v0 + 128), *(v0 + 136));
}

uint64_t OUTLINED_FUNCTION_10_28(uint64_t a1)
{

  return sub_2749FDA84();
}

uint64_t OUTLINED_FUNCTION_10_30(uint64_t a1)
{

  return sub_2749FDCC4();
}

uint64_t OUTLINED_FUNCTION_10_31(uint64_t a1, uint64_t a2)
{

  return sub_2749FDB94();
}

uint64_t sub_27471F620(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_2749FCD64();
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1)
{

  return sub_2749FCE24();
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_28_6(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(v4 - 144) = a2;
  *(v4 - 128) = a4;
  *(v4 - 200) = a3;
  *(v4 - 184) = a1;
}

void *OUTLINED_FUNCTION_28_7(void *a1)
{

  return memcpy(a1, (v1 + 1344), 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_28_11()
{

  return sub_2749FBE94();
}

void *OUTLINED_FUNCTION_28_12(void *a1)
{

  return memcpy(a1, (v1 + 1936), 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_20_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_57_1()
{
  v2 = *(v0 - 912);
  v3 = *(v0 - 920);

  return sub_27471F8A4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_57_2()
{

  return swift_beginAccess();
}

uint64_t sub_27471F8A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_2749FA8F4();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_9_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1)
{

  return sub_2749FDCC4();
}

uint64_t OUTLINED_FUNCTION_5()
{
}

uint64_t OUTLINED_FUNCTION_9_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_9_19()
{

  return memcpy((v0 + 192), (v1 + 32), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_9_21(uint64_t a1)
{

  return sub_2749FD7B4();
}

uint64_t OUTLINED_FUNCTION_9_23(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_2749FDCC4();
}

void *OUTLINED_FUNCTION_9_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x250], 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_9_28()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 5, v1);
}

uint64_t OUTLINED_FUNCTION_37()
{
}

void *OUTLINED_FUNCTION_37_3()
{

  return memcpy((v0 + 1488), (v1 + 192), 0xB9uLL);
}

id OUTLINED_FUNCTION_37_4()
{

  return [v0 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_37_5(uint64_t result)
{
  *v1 = result;
  *(v1 + 89) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_8()
{

  return sub_2749FCD64();
}

void *OUTLINED_FUNCTION_37_9(void *a1)
{

  return memcpy(a1, v1, 0xB9uLL);
}

void OUTLINED_FUNCTION_37_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_27471FE94()
{
  OUTLINED_FUNCTION_48();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967850, &qword_274A0F648);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v33 - v3;
  v5 = type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_43();
  v33[2] = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_4();
  v8 = *(v0 + 16);
  v9 = sub_2749FCD64();
  v10 = [v8 stringArrayForKey_];

  if (v10)
  {
    v33[1] = v1;
    v11 = sub_2749FCF84();

    v12 = 0;
    v13 = *(v11 + 16);
    v14 = v11 + 40;
    v34 = MEMORY[0x277D84F90];
    v33[0] = v11 + 40;
LABEL_3:
    for (i = v14 + 16 * v12; ; i += 16)
    {
      if (v13 == v12)
      {

        v32 = v34;
        goto LABEL_16;
      }

      if (v12 >= *(v11 + 16))
      {
        break;
      }

      v16 = sub_2749FDB74();

      if (v16 < 2)
      {
        OUTLINED_FUNCTION_125();
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
        OUTLINED_FUNCTION_0_3();
        sub_274722708();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v17 = v34;
        }

        else
        {
          OUTLINED_FUNCTION_2_5();
          v21 = OUTLINED_FUNCTION_24_2();
          sub_274723598(v21, v22, v23, v24, v25, v26, v27);
          v17 = v28;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        if (v19 >= v18 >> 1)
        {
          v29 = OUTLINED_FUNCTION_8(v18);
          sub_274723598(v29, v19 + 1, 1, v30, sub_2747223FC, type metadata accessor for RootNavigationDestination, type metadata accessor for RootNavigationDestination);
          v17 = v31;
        }

        ++v12;
        *(v17 + 16) = v19 + 1;
        OUTLINED_FUNCTION_71();
        v34 = v20;
        OUTLINED_FUNCTION_0_3();
        sub_274722708();
        v14 = v33[0];
        goto LABEL_3;
      }

      __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
      sub_2747359D0(v4, &qword_280967850, &qword_274A0F648);
      ++v12;
    }

    __break(1u);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
LABEL_16:
    sub_274720C3C(v32);
    OUTLINED_FUNCTION_46();
  }
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1)
{

  return MEMORY[0x2821FF708](v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_33_0()
{
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return sub_2749FDCC4();
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);

  return SmartShortcutPickerAppShortcutDataSource.init(provider:options:denyListEnvironment:)(v45, va, 4);
}

id OUTLINED_FUNCTION_5_17()
{

  return [v0 (v1 + 2250)];
}

uint64_t OUTLINED_FUNCTION_5_21(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_32()
{
  v2 = *(v0 + 160);

  return sub_2748D7720(v2, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
}

uint64_t OUTLINED_FUNCTION_5_34()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_5_38()
{
}

uint64_t OUTLINED_FUNCTION_5_39(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CDF068];

  return sub_27472AB6C(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_274722608();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
}

id OUTLINED_FUNCTION_1_6()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1)
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_1_17(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t result)
{
  *(v2 - 192) = v1;
  *(v2 - 184) = result;
  *(v2 - 224) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_30(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return sub_2749FDCC4();
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_52(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_1_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_39()
{

  return sub_2749FDCC4();
}

void *OUTLINED_FUNCTION_1_45(void *a1)
{

  return memcpy(a1, v1, 0xB9uLL);
}

id OUTLINED_FUNCTION_1_47()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_1_48()
{

  return sub_2749FDAE4();
}

uint64_t sub_274720C3C(uint64_t a1)
{
  v2 = type metadata accessor for RootNavigationDestination(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_274720E30(qword_28159EA08, 255, type metadata accessor for RootNavigationDestination);
  v11 = MEMORY[0x277C5EEC0](v9, v2, v10);
  v18 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_2747231DC();
      sub_274764E74(v8, v6);
      sub_274722608();
      v13 += v14;
      --v12;
    }

    while (v12);

    return v18;
  }

  else
  {
    v15 = v11;
  }

  return v15;
}

uint64_t sub_274720DEC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274720E30(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274720E74(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274720EB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274720F00(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274720F48(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274720F90(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  type metadata accessor for ShortcutsEmptyStateContent(0);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x277C61040);
}

id OUTLINED_FUNCTION_2_8()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_2_10()
{
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 1;

  return MEMORY[0x2821E4CB8](0);
}

__n128 OUTLINED_FUNCTION_2_12(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v11 + 280) = a1;
  result = a10;
  a1[1] = a10;
  a1[2].n128_u64[0] = v13;
  a1[2].n128_u64[1] = v10;
  a1[3].n128_u64[0] = v12;
  return result;
}

void OUTLINED_FUNCTION_2_16()
{

  sub_2747BC46C();
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_2749FDAE4();
}

id OUTLINED_FUNCTION_2_21(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_56(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_2_26(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_2_30()
{
  sub_27477656C(v0, v1, v2 & 1);
}

uint64_t OUTLINED_FUNCTION_2_34(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_2_35(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_274797CC0(a2, a3);
}

id OUTLINED_FUNCTION_2_36()
{

  return [v0 (v1 + 4088)];
}

void *OUTLINED_FUNCTION_2_37(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  return memcpy(va, (v34 + 40), 0x59uLL);
}

void *OUTLINED_FUNCTION_2_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &STACK[0x340], 0xB9uLL);
}

void OUTLINED_FUNCTION_2_44(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

uint64_t sub_27472153C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274721580(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_6()
{

  return sub_2749FDCC4();
}

id OUTLINED_FUNCTION_0_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{

  return sub_2749F95A4();
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_0_28()
{

  return memcpy((v1 - 160), (v0 + 32), 0x5AuLL);
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return sub_2748AF614(v0, type metadata accessor for SmartShortcutPickerEntry);
}

uint64_t OUTLINED_FUNCTION_0_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_40(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_3(uint64_t a1)
{

  return sub_2749FCE24();
}

void *OUTLINED_FUNCTION_23_6(void *a1)
{

  return memcpy(a1, (v1 + 2752), 0xBAuLL);
}

id OUTLINED_FUNCTION_23_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_23_13(uint64_t a1)
{

  return sub_2749FB7B4();
}

uint64_t OUTLINED_FUNCTION_23_14()
{

  return sub_274721C98(v0 + 16);
}

id OUTLINED_FUNCTION_4_2()
{

  return [v0 localizedStringForKey:v2 value:v1 table:0];
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2, ...)
{

  return sub_2749F92D4();
}

void OUTLINED_FUNCTION_4_7()
{
  v1 = *(v0 - 272);
  *(v0 - 168) = *(v0 - 304);
  *(v0 - 160) = v1;
  v2 = *(v0 - 256);
  *(v0 - 152) = *(v0 - 264);
  *(v0 - 144) = v2;
}

id OUTLINED_FUNCTION_4_15()
{

  return [v0 (v1 + 2250)];
}

id OUTLINED_FUNCTION_4_20@<X0>(uint64_t a1@<X8>)
{

  return sub_2748565B8(0xD000000000000010, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1)
{

  return sub_2749FD7B4();
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t result)
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

uint64_t OUTLINED_FUNCTION_4_30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CDD7F8];

  return sub_27472AB6C(a1, a2, a3, v4);
}

__n128 OUTLINED_FUNCTION_4_31()
{
  result = *(v1 - 160);
  *(v0 + 40) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_34()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_38()
{

  return sub_2749FDCC4();
}

id OUTLINED_FUNCTION_25_3()
{

  return [v1 (v0 + 2424)];
}

void *OUTLINED_FUNCTION_25_5(void *a1)
{

  return memcpy(a1, (v1 + 1752), 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_50()
{

  return sub_2749FA8D4();
}

uint64_t OUTLINED_FUNCTION_25_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return swift_getOpaqueTypeConformance2();
}

unint64_t OUTLINED_FUNCTION_25_11(unint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a4 + 48) + result) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_12(uint64_t a1)
{

  return swift_weakInit();
}

void OUTLINED_FUNCTION_25_13(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = -1;
}

size_t sub_274722304(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = *(a5(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  if (v8)
  {
    if (result - v9 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_38_6((result - v9) / v8);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_2()
{
  *v0 = v1;
  *(v0 + 8) = 1;
  type metadata accessor for LibrarySectionOptions.SectionType(0);

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_99_0(uint64_t a1, ...)
{

  return sub_2749FDDF4();
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_36_4()
{

  return memcpy((v0 + 1296), (v0 + 1872), 0xB9uLL);
}

void *OUTLINED_FUNCTION_36_6@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 264) = a1;

  return _Block_copy((v1 - 288));
}

void OUTLINED_FUNCTION_36_11()
{
}

void OUTLINED_FUNCTION_36_13(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  *(a1 + 73) = a5;
  *(a1 + 48) = a3;
  *(a1 + 64) = a4;
  *(a1 + 32) = a2;
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_72_3()
{

  return sub_2749FD094();
}

uint64_t sub_274722608()
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  OUTLINED_FUNCTION_1_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_274722658(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2747226B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_274722708()
{
  OUTLINED_FUNCTION_130();
  v2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 32))(v0, v1);
  return v0;
}

void sub_274722764()
{
  OUTLINED_FUNCTION_49_2();
  v1 = *(v0 + 16);
  v2 = sub_2749FCD64();
  v3 = [v1 stringArrayForKey_];

  if (v3)
  {
    v4 = sub_2749FCF84();

    v5 = 0;
    v6 = *(v4 + 16);
    v7 = v4 + 40;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v6 == v5)
      {

        goto LABEL_11;
      }

      if (v5 >= *(v4 + 16))
      {
        break;
      }

      v9 = sub_2749FCD64();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_2();
        sub_274724D8C();
        v8 = v12;
      }

      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_8(v10);
        sub_274724D8C();
        v8 = v13;
      }

      *(v8 + 16) = v11 + 1;
      *(v8 + 8 * v11 + 32) = v9;
      v7 += 16;
      ++v5;
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_50_0();

    sub_274722984();
  }
}

uint64_t OUTLINED_FUNCTION_73_2()
{

  return sub_274772B38(v1 + 56, v0 + 688);
}

double OUTLINED_FUNCTION_73_3()
{
  v3 = *(v0 - 2);
  v4 = *(v0 - 1);
  v5 = *v0;
  *(v1 - 312) = v3;
  *(v1 - 304) = v4;
  *(v1 - 296) = v5;
  sub_2747729AC(v3, v4, v5);
  return v2;
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 40) = v2;

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_81_1()
{
  v2 = *(v1 - 272);
  *(v1 - 168) = v0;
  *(v1 - 160) = v2;
}

void sub_274722B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_139();
  v34 = v33;
  v51 = v32;
  v52 = v35;
  v36 = *v32;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749FDDF4();
  sub_2749FCE24();
  v37 = sub_2749FDE44();

  OUTLINED_FUNCTION_36_1();
  v39 = ~v38;
  while (1)
  {
    v40 = v37 & v39;
    if (((1 << (v37 & v39)) & *(v36 + 56 + (((v37 & v39) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *v51;
      v48 = v34;
      sub_2747240B4(v48, v40, isUniquelyReferenced_nonNull_native);
      *v51 = v53;
      *v52 = v48;
      goto LABEL_13;
    }

    v41 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v43 = v42;
    if (v41 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v43 == v44)
    {

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_99();
    v46 = sub_2749FDCC4();

    if (v46)
    {
      break;
    }

    v37 = v40 + 1;
  }

LABEL_12:
  v49 = *(*(v36 + 48) + 8 * v40);
  *v52 = v49;
  v50 = v49;
LABEL_13:
  OUTLINED_FUNCTION_137();
}

uint64_t OUTLINED_FUNCTION_90_0()
{
}

void sub_274722D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_89();
  if (*(v30 + 16))
  {
    OUTLINED_FUNCTION_35_0();
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    sub_2749FDDF4();
    sub_2749FCE24();
    v31 = sub_2749FDE44();

    OUTLINED_FUNCTION_36_1();
    v33 = ~v32;
    do
    {
      OUTLINED_FUNCTION_50_3();
      if (!v34)
      {
        break;
      }

      v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v37 = v36;
      if (v35 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v37 == v38)
      {

        break;
      }

      OUTLINED_FUNCTION_43_0();
      v40 = sub_2749FDCC4();

      v31 = (v31 & v33) + 1;
    }

    while ((v40 & 1) == 0);
  }

  OUTLINED_FUNCTION_88();
}

void OUTLINED_FUNCTION_88_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  LibraryConfiguration.init(destination:)(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_135_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_135_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_274722F58(uint64_t a1)
{
  result = sub_274720E30(&qword_28159EB90, 255, type metadata accessor for MyShortcutsSidebarSection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_274722FD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A30, &qword_274A16A80);
  v0 = OUTLINED_FUNCTION_134();
  type metadata accessor for RootNavigationDestination(v0);
  OUTLINED_FUNCTION_110();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_274A0F620;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  return v1;
}

uint64_t OUTLINED_FUNCTION_124_0(uint64_t a1)
{
  *(v3 + *(v1 + 44)) = v2;

  return sub_2749F9154();
}

uint64_t OUTLINED_FUNCTION_124_1@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t sub_27472317C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2747231DC()
{
  OUTLINED_FUNCTION_130();
  v2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_274723238(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return __isPlatformVersionAtLeast(2, 18, 1, 0);
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{

  return sub_2749FD724();
}

void OUTLINED_FUNCTION_56_0()
{

  JUMPOUT(0x277C5EBC0);
}

id OUTLINED_FUNCTION_14_8(uint64_t a1)
{

  return [v1 (v2 + 896)];
}

id OUTLINED_FUNCTION_13_1(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t a1)
{

  return sub_2749FB7B4();
}

void OUTLINED_FUNCTION_14_12()
{
  v0[28] = v2;
  v0[29] = v3;
  v0[30] = v4 & 1;
  v0[31] = v1;
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t a1, uint64_t a2)
{

  return sub_2749FCE84();
}

uint64_t OUTLINED_FUNCTION_14_20()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_21(uint64_t a1, ...)
{

  return sub_2749FCE24();
}

uint64_t OUTLINED_FUNCTION_14_22()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_274723598(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_5_5();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_25_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  a6(0);
  OUTLINED_FUNCTION_71();
  if (a1)
  {
    sub_274724BB4(a4 + v16, v14, v15 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t result)
{
  *v1 = result;
  *(result + 32) = v2;
  return result;
}

id OUTLINED_FUNCTION_15_4()
{

  return sub_2747A3170(v3, v4, v1, v0, v2);
}

void *OUTLINED_FUNCTION_15_6(void *a1)
{

  return memcpy(a1, (v1 + 1728), 0xB9uLL);
}

id OUTLINED_FUNCTION_15_7(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

CGFloat OUTLINED_FUNCTION_15_10()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetWidth(*&v5);
}

void OUTLINED_FUNCTION_15_11(unint64_t a1@<X8>)
{

  sub_27476D6D8(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_15_12()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t OUTLINED_FUNCTION_15_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2748A06D8(a1);
}

void *OUTLINED_FUNCTION_15_17()
{

  return memcpy((v0 + 384), (v0 + 712), 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_15_18()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_19(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_20()
{
}

uint64_t OUTLINED_FUNCTION_15_21()
{
}

void OUTLINED_FUNCTION_15_22()
{

  sub_27479930C();
}

uint64_t OUTLINED_FUNCTION_15_25()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_27475D0D0();
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return sub_274772ADC(v0 + 1712, v0 + 808);
}

id OUTLINED_FUNCTION_11_2(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return type metadata accessor for SmartShortcutPickerEntry(0);
}

uint64_t OUTLINED_FUNCTION_137_0()
{

  return sub_2749FDA24();
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2)
{

  return sub_2749FD094();
}

id OUTLINED_FUNCTION_6_6(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, a2, a3, a4, a5, a6, a7, a8, v13, v12, v11, v10);
}

id OUTLINED_FUNCTION_6_9()
{

  return [v1 (v0 + 3668)];
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_6_12(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_6_13(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_27472ABB4(a1, a2, a3);
}

__n128 OUTLINED_FUNCTION_6_23()
{
  v1 = *(v0 + 32);
  result = *v0;
  v3 = *(v0 + 16);
  *(v0 + 224) = *v0;
  *(v0 + 240) = v3;
  *(v0 + 256) = v1;
  return result;
}

void OUTLINED_FUNCTION_6_24(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __n128 a9@<Q0>, __n128 a10@<Q1>, __n128 a11@<Q2>, __n128 a12@<Q3>, uint64_t a13@<X8>, __n128 a14@<Q4>, __n128 a15@<Q5>, __n128 a16@<Q6>)
{

  sub_2747D2BDC(a1, a2, a3, a4, a5, a6, a7, a8, a9.n128_i64[0], a9.n128_i64[1], a10.n128_i64[0], a10.n128_u64[1], a11.n128_u64[0], a11.n128_i64[1], a12.n128_i64[0], a12.n128_i64[1], a14.n128_i64[0], a14.n128_i64[1], a15.n128_i64[0], a15.n128_i64[1], a16.n128_i64[0], a16.n128_i64[1], a13, v16);
}

uint64_t OUTLINED_FUNCTION_6_27()
{

  return sub_2748D7720(v0, type metadata accessor for SmartShortcutPickerEntry);
}

uint64_t OUTLINED_FUNCTION_6_30()
{

  return swift_getOpaqueTypeConformance2();
}

void *OUTLINED_FUNCTION_6_33(void *a1)
{

  return memcpy(a1, (v1 + 40), 0x59uLL);
}

void OUTLINED_FUNCTION_6_34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + a2);
  *(v2 + a2) = a1;
}

uint64_t OUTLINED_FUNCTION_6_36()
{

  return sub_2749FDBD4();
}

uint64_t OUTLINED_FUNCTION_6_38()
{

  return sub_274961A20(v0, _s13RowIdentifierOMa);
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_34_4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);

  return sub_274813620(v4, v5, v6);
}

__n128 OUTLINED_FUNCTION_34_5(uint64_t a1)
{
  v2 = *(v1 - 240);
  *(a1 + 32) = *(v1 - 256);
  *(a1 + 48) = v2;
  result = *(v1 - 224);
  *(a1 + 64) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_34_6(uint64_t a1)
{
  v2 = *(v1 - 144);
  *(a1 + 16) = *(v1 - 160);
  *(a1 + 32) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_8(uint64_t result)
{
  *v5 = v4;
  *(v5 + 8) = v3;
  *(v5 + 16) = 1;
  *(v5 + 24) = v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_128_0(uint64_t a1)
{
  *(v2 + *(v1 + 36)) = 0;

  return sub_2749F9154();
}

uint64_t sub_2747240B4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274766D5C();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_27476B29C();
LABEL_10:
      v13 = *v3;
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      sub_2749FDDF4();
      sub_2749FCE24();
      v14 = sub_2749FDE44();

      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFWorkflowTypeName(0);
        v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v18 = v17;
        if (v16 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v18 == v19)
        {
          goto LABEL_19;
        }

        v21 = sub_2749FDCC4();

        if (v21)
        {
          goto LABEL_20;
        }

        v14 = a2 + 1;
      }
    }

    result = sub_27476A654();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_77(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_127_0()
{

  JUMPOUT(0x277C5FB60);
}

uint64_t sub_2747242E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A38, &unk_274A0FC30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_274A0F610;
  v1 = *MEMORY[0x277D7A898];
  v2 = *MEMORY[0x277D7A8B0];
  *(v0 + 32) = *MEMORY[0x277D7A898];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277D7A880];
  v4 = *MEMORY[0x277D7A878];
  *(v0 + 48) = *MEMORY[0x277D7A880];
  *(v0 + 56) = v4;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  return v0;
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return sub_27472AFE4();
}

uint64_t OUTLINED_FUNCTION_45_1(uint64_t a1)
{
  v4 = *(v1 + 320);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_45_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2749FD7B4();
}

uint64_t OUTLINED_FUNCTION_45_6(uint64_t a1)
{

  return sub_274835920(a1);
}

uint64_t OUTLINED_FUNCTION_45_8()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_113_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 104) = a7;
  *(v9 - 96) = v8;
  *(v9 - 128) = a8;
  *(v9 - 120) = a3;
  *(v9 - 112) = a6;
  *(v9 - 144) = a5;
  *(v9 - 136) = a2;
}

uint64_t OUTLINED_FUNCTION_113_1()
{
}

uint64_t sub_274724544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_2749F9164();
  if (v7 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FoldersSidebarSection.init(folders:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_2749F9154();
  *(v1 + OBJC_IVAR____TtC10WorkflowUI21FoldersSidebarSection_observeChanges) = 0;
  *(v1 + 32) = a1;
  return v1;
}

uint64_t sub_274724630(uint64_t a1)
{
  result = sub_274720E30(qword_28159F010, 255, type metadata accessor for FoldersSidebarSection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27472468C(uint64_t a1)
{
  result = sub_274720E30(qword_28159E950, 255, type metadata accessor for AutoShortcutsSidebarSection);
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_2749F92D4();
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v18 + 192) = v15;
  *(v18 + 200) = v16;
  *(v18 + 208) = v17;
  result = a15;
  *(v18 + 216) = a15;
  return result;
}

id OUTLINED_FUNCTION_3_11()
{

  return [v0 (v1 + 2808)];
}

id OUTLINED_FUNCTION_3_19(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_3_20(uint64_t a1)
{
  v4 = v1 + *(a1 + 28);

  return sub_2747B96CC(v2, v4);
}

id OUTLINED_FUNCTION_3_21(objc_super *a1, SEL a2)
{

  return objc_msgSendSuper2(a1, a2, v6, v5, v4, v3);
}

uint64_t OUTLINED_FUNCTION_3_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __int128 a21, int a22)
{
  *(a1 + 16) = a19;
  *(a1 + 32) = a20;
  *(a1 + 48) = a21;
  *(a1 + 64) = a22;
  *(a1 + 72) = v23;
  *(a1 + 80) = v22;
}

uint64_t OUTLINED_FUNCTION_3_27()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_3_31()
{
  v1 = *(v0 - 144);
  *(v0 - 224) = *(v0 - 160);
  *(v0 - 208) = v1;
  *(v0 - 192) = *(v0 - 128);
  result = *(v0 - 119);
  *(v0 - 183) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_33(uint64_t a1)
{
  *(a1 + 8) = sub_27485DE5C;
  result = *(v1 + 32);
  *(v2 + 16) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_34()
{

  sub_274866F14(v1, v0, v2, 0);
}

uint64_t OUTLINED_FUNCTION_3_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2749FA424();
}

void *OUTLINED_FUNCTION_20_2(void *a1)
{

  return memcpy(a1, v1, 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_3_42()
{
}

uint64_t OUTLINED_FUNCTION_3_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned __int8 a11)
{

  return sub_2747CB3B0(v12, v11, a11);
}

uint64_t OUTLINED_FUNCTION_3_46(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D844D0];

  return sub_27472AB6C(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_3_51()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_274724BB4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_130();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_9(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_26();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_26();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 288);

  return sub_274723238(v3, v6, a3);
}

void OUTLINED_FUNCTION_54_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1)
{

  return sub_2749FA914();
}

uint64_t OUTLINED_FUNCTION_54_10()
{

  return sub_2749FD044();
}

void sub_274724D8C()
{
  OUTLINED_FUNCTION_28_1();
  if (v6)
  {
    OUTLINED_FUNCTION_5_5();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_25_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A38, &unk_274A0FC30);
    v9 = OUTLINED_FUNCTION_69();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_2();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_73();
  if (v1)
  {
    if (v9 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_42();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    type metadata accessor for WFWorkflowTypeName(0);
    OUTLINED_FUNCTION_34_0();
  }
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_allocObject();
}

uint64_t sub_274724E88(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274724ED0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274724F18(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t AutoShortcutsSidebarSection.init(dataSource:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_2749F9154();
  *(v1 + OBJC_IVAR____TtC10WorkflowUI27AutoShortcutsSidebarSection_dataSource) = a1;
  *(v1 + 16) = 0;
  return v1;
}

uint64_t ShortcutMoveService.init(database:undoManager:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_116_2(uint64_t a1)
{

  return sub_2749FDCC4();
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_42_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_42_4()
{
  type metadata accessor for ExpandedSmartShortcutPickerViewLayout(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_7(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_130_0(uint64_t a1)
{

  return sub_2749FDCC4();
}

id sub_2747251C0()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___dataSource);
  }

  else
  {
    v4 = [objc_allocWithZone(WFAutomationTriggerDataSource) initWithDatabase_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_274725460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI28GalleryNavigationDestinationO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

void sub_2747254DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2749FA924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_274725528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

__n128 GalleryView.init(destination:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  type metadata accessor for GallerySearchManager(0);
  sub_274728F60(&qword_28159F478, type metadata accessor for GallerySearchManager, &protocol conformance descriptor for GallerySearchManager);
  v7 = *(a1 + 16);
  v8 = *a1;
  *(a2 + 40) = sub_2749FB084();
  *(a2 + 48) = v5;
  result = v8;
  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  return result;
}

void RootNavigationDestination.displayName.getter()
{
  OUTLINED_FUNCTION_48();
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_0_9();
  v6 = OUTLINED_FUNCTION_32_1();
  sub_274723238(v6, v7, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v16 = *v5;
      v17 = WFHumanReadableNameForWorkflowType();
      if (v17)
      {
        goto LABEL_11;
      }

      break;
    case 2u:
      v16 = *v5;
      v17 = [*v5 name];
LABEL_11:
      v22 = v17;
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_84();

      break;
    case 3u:
      v18 = OUTLINED_FUNCTION_119();
      v19(v18);
      sub_2749F94B4();
      OUTLINED_FUNCTION_84();
      v20 = OUTLINED_FUNCTION_66();
      v21(v20);
      break;
    case 4u:
      sub_274722658(v5, type metadata accessor for RootNavigationDestination);
      break;
    case 5u:
      v23 = WFLocalizedAllShortcutsString();
      goto LABEL_17;
    case 6u:
      sub_2749FCE14("Automation", 10);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    case 7u:
      sub_2749FCE14("Recently Modified", 17);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    case 8u:
      sub_2749FCE14("Recently Run", 12);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_16;
      }

LABEL_23:
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
LABEL_16:
      OUTLINED_FUNCTION_32_1();
      v24 = sub_2749FCD64();
      OUTLINED_FUNCTION_32_1();
      sub_2749FCD64();
      OUTLINED_FUNCTION_78();

      v23 = OUTLINED_FUNCTION_20_0(v25, sel_localizedStringForKey_value_table_);

LABEL_17:
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_84();

      break;
    default:
      v9 = *(v5 + 8);
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v12 = *(v5 + 32);
      if (v12 <= 0xFD && (v31[0] = *v5, v31[1] = v9, v31[2] = v11, v31[3] = v10, v32 = v12, v0 = v31, sub_274725AE0(), v13))
      {
        OUTLINED_FUNCTION_84();
        v14 = OUTLINED_FUNCTION_99();
        sub_274725D30(v14, v15, v11, v10, v12);
      }

      else
      {
        sub_2749FCE14("Gallery", 7);
        OUTLINED_FUNCTION_34_1();
        if (qword_28159E3A8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
        }

        v26 = qword_28159E448;
        OUTLINED_FUNCTION_32_1();
        v27 = sub_2749FCD64();
        OUTLINED_FUNCTION_32_1();
        sub_2749FCD64();
        OUTLINED_FUNCTION_78();

        v28 = OUTLINED_FUNCTION_65_3(v26, sel_localizedStringForKey_value_table_, v27);

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_84();

        v29 = OUTLINED_FUNCTION_99();
        sub_274725D30(v29, v30, v11, v10, v12);
      }

      break;
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_46();
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return sub_2749FCD64();
}

uint64_t sub_274725AE0()
{
  switch(*(v0 + 32) >> 5)
  {
    case 2:
      goto LABEL_4;
    case 3:
      if (*(v0 + 16))
      {
LABEL_4:
        v1 = [*v0 name];
        if (v1)
        {
          v2 = v1;
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        }
      }

      break;
    case 4:
      return OUTLINED_FUNCTION_24_0();
    default:

      break;
  }

  return OUTLINED_FUNCTION_24_0();
}

void *OUTLINED_FUNCTION_35_2()
{

  return memcpy((v0 + 912), (v0 + 1872), 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_35_9()
{
  sub_27489DADC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_274830180(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  return *(v0 + 64);
}

void OUTLINED_FUNCTION_35_10()
{
}

uint64_t OUTLINED_FUNCTION_35_11()
{

  return sub_2749FB7B4();
}

void sub_274725D30(void *result, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFDu)
  {
    sub_274725D44(result, a2, a3, a4, a5);
  }
}

void sub_274725D44(void *a1, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  switch(a5 >> 5)
  {
    case 0:

      break;
    case 1:

      sub_27476D244(a3, a4);
      break;
    case 2:

      break;
    case 3:

      sub_27476D24C(a1, a2, a3);
      break;
    default:
      return;
  }
}

uint64_t sub_274725E7C(uint64_t a1)
{
  result = sub_2749F9164();
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

uint64_t StaticSidebarSection.init(name:destinations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 64) = 0;
  sub_2749F9154();
  *(v3 + OBJC_IVAR____TtC10WorkflowUI20StaticSidebarSection_shouldDisplay) = 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = a3;

  return v3;
}

uint64_t sub_274725FB4(uint64_t a1)
{
  result = sub_274720E30(qword_28159F128, 255, type metadata accessor for StaticSidebarSection);
  *(a1 + 8) = result;
  return result;
}

__n128 RootNavigationContext.init(dismissOccludingViewController:clearSearchState:animateTransition:createAutomation:transitionType:pptTest:)@<Q0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char *a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  v8 = a6[1].n128_u64[0];
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  *(a7 + 4) = v7;
  result = *a6;
  *(a7 + 8) = *a6;
  *(a7 + 24) = v8;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI15RootPPTTestCaseVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void RootView.navigate(to:with:completion:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v227 = v5;
  v228 = v6;
  v8 = v7;
  v232 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967850, &qword_274A0F648);
  OUTLINED_FUNCTION_34(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70(&v210 - v12);
  v215 = sub_2749F90F4();
  OUTLINED_FUNCTION_43();
  v214 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_70(v16 - v15);
  v218 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v217 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v19);
  v21 = OUTLINED_FUNCTION_70(&v210 - v20);
  v22 = type metadata accessor for LibraryConfiguration(v21);
  v23 = OUTLINED_FUNCTION_34(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v24);
  v230 = &v210 - v25;
  v231 = type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v27);
  v29 = &v210 - v28;
  v30 = *v8;
  v224 = v8[1];
  v31 = v8[2];
  v226 = v8[3];
  v32 = *(v2 + 72);
  v229 = v0;
  v32(v4, v2);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = *(AssociatedConformanceWitness + 88);
  v35 = swift_checkMetadataState();
  v34(v232, 0, v35, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v225 = v31;
  if (v31 == 1)
  {
    v36 = v229;
    v37 = v4;
    v38 = (*(v2 + 128))(v4, v2);
  }

  else
  {
    v37 = v4;
    v38 = (v30 >> 16) & 1;
    v36 = v229;
  }

  v39 = v30;
  OUTLINED_FUNCTION_0_9();
  v40 = v232;
  sub_274723238(v232, v29, v41);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v132 = *v29;
      OUTLINED_FUNCTION_0_9();
      v136 = OUTLINED_FUNCTION_53_2(v133, v134, v135);
      OUTLINED_FUNCTION_88_1(v136, v137, v138, v139, v140, v141, v142, v143, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
      OUTLINED_FUNCTION_31_5();
      swift_getAssociatedTypeWitness();
      v144 = OUTLINED_FUNCTION_11_6();
      v145(v144);
      v218 = *(v2 + 8);
      OUTLINED_FUNCTION_3_15();
      v221 = v146;
      OUTLINED_FUNCTION_54_2(v147, v148, v149);
      v150 = *(v2 + 64);
      v69 = v132;
      v151 = OUTLINED_FUNCTION_119();
      v150(v151);
      OUTLINED_FUNCTION_24_0();
      swift_getAssociatedConformanceWitness();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_37_2();
      LibraryView.init(database:delegate:workflowType:configuration:shortcutMoveService:)();
      goto LABEL_13;
    case 2u:
      v50 = *v29;
      OUTLINED_FUNCTION_0_9();
      v54 = OUTLINED_FUNCTION_53_2(v51, v52, v53);
      OUTLINED_FUNCTION_88_1(v54, v55, v56, v57, v58, v59, v60, v61, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
      OUTLINED_FUNCTION_31_5();
      swift_getAssociatedTypeWitness();
      v62 = OUTLINED_FUNCTION_11_6();
      v63(v62);
      v218 = *(v2 + 8);
      OUTLINED_FUNCTION_3_15();
      v221 = v64;
      OUTLINED_FUNCTION_54_2(v65, v66, v67);
      v68 = *(v2 + 64);
      v69 = v50;
      v70 = OUTLINED_FUNCTION_119();
      v68(v70);
      OUTLINED_FUNCTION_24_0();
      swift_getAssociatedConformanceWitness();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_37_2();
      LibraryView.init(database:delegate:collection:configuration:shortcutMoveService:)();
LABEL_13:
      RootNavigationDestination.accessibilityIdentifier.getter();
      OUTLINED_FUNCTION_74_1();
      v152();
      OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_23_4();
      v153();

      goto LABEL_15;
    case 3u:
      v71 = v217;
      v72 = v216;
      v73 = OUTLINED_FUNCTION_80_1();
      v74 = v218;
      v75(v73);
      OUTLINED_FUNCTION_0_9();
      v76 = v40;
      v77 = v221;
      sub_274723238(v76, v221, v78);
      LibraryConfiguration.init(destination:)(v77, v79, v80, v81, v82, v83, v84, v85, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274A11F70;
      (*(v71 + 16))(v219, v72, v74);
      v220 = v39;
      v87 = OUTLINED_FUNCTION_19_4();
      v88(v87);
      v89 = objc_allocWithZone(type metadata accessor for AutoShortcutsGroup(0));
      OUTLINED_FUNCTION_93();
      sub_2747880C0();
      *(inited + 32) = v90;
      OUTLINED_FUNCTION_31_5();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v92 = OUTLINED_FUNCTION_19_4();
      v211 = v93(v92);
      v212 = *(v2 + 8);
      v94 = sub_27479BB78(inited);
      swift_setDeallocating();
      sub_2747A3418();
      OUTLINED_FUNCTION_3_15();
      v221 = v95;
      v96 = v222;
      sub_274723238(v230, v222, v97);
      v98 = OUTLINED_FUNCTION_19_4();
      v100 = v99(v98);
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_92_1();
      v101 = swift_getAssociatedConformanceWitness();
      v219 = v38;
      v102 = *(v101 + 88);
      swift_unknownObjectRetain();
      v103 = v94;
      v40 = v232;
      v102(v211, v36, v212, v103, v96, v100, AssociatedTypeWitness, v101);
      RootNavigationDestination.accessibilityIdentifier.getter();
      OUTLINED_FUNCTION_92_1();
      v104();
      v105 = [objc_opt_self() workflowUserDefaults];
      v106 = v213;
      sub_2749F90E4();
      v107 = sub_2749F90B4();
      (*(v214 + 8))(v106, v215);
      [v105 setObject:v107 forKey:*MEMORY[0x277D7CD40]];

      OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_23_4();
      v108();
      swift_unknownObjectRelease();
      sub_274722658(v230, v221);
      (*(v217 + 8))(v216, v218);
      break;
    case 4u:
      OUTLINED_FUNCTION_81_1();
      v238 = v49;
      v239 = v226;
      (*(v2 + 144))(v237, v227, v228, v37, v2);
      break;
    case 5u:
      OUTLINED_FUNCTION_0_9();
      v157 = OUTLINED_FUNCTION_53_2(v154, v155, v156);
      OUTLINED_FUNCTION_88_1(v157, v158, v159, v160, v161, v162, v163, v164, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
      OUTLINED_FUNCTION_31_5();
      swift_getAssociatedTypeWitness();
      v165 = OUTLINED_FUNCTION_11_6();
      v166(v165);
      OUTLINED_FUNCTION_3_15();
      v221 = v167;
      OUTLINED_FUNCTION_54_2(v168, v169, v170);
      v171 = OUTLINED_FUNCTION_119();
      v172(v171);
      v173 = OUTLINED_FUNCTION_119();
      v174(v173);
      OUTLINED_FUNCTION_24_0();
      swift_getAssociatedConformanceWitness();
      swift_unknownObjectRetain();
      LibraryView.init(database:delegate:configuration:autoShortcutsDataSource:shortcutMoveService:)();
      RootNavigationDestination.accessibilityIdentifier.getter();
      OUTLINED_FUNCTION_74_1();
      v175();
      OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_23_4();
      v176();
LABEL_15:
      swift_unknownObjectRelease();
      v40 = v232;
      sub_274722658(v230, v221);
      break;
    case 6u:
      OUTLINED_FUNCTION_81_1();
      v238 = v177;
      v239 = v226;
      (*(v2 + 168))(v38 & 1, v237, v227, v228, v37, v2);
      break;
    case 7u:
      v219 = v38;
      v220 = v30;
      OUTLINED_FUNCTION_0_9();
      OUTLINED_FUNCTION_111_1(v109, v110, v111);
      LibraryConfiguration.init(destination:)(v30, v112, v113, v114, v115, v116, v117, v118, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B38, &unk_274A10B80);
      OUTLINED_FUNCTION_49_0();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_274A0EF10;
      v120 = *(v2 + 56);
      v121 = OUTLINED_FUNCTION_119();
      v122 = v120(v121);
      v123 = [v122 recentlyModifiedShortcuts];

      sub_2749FCE14("No shortcuts have been modified in the last 30 days", 51);
      OUTLINED_FUNCTION_106_1();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
      }

      OUTLINED_FUNCTION_99();
      v124 = sub_2749FCD64();
      OUTLINED_FUNCTION_99();
      v125 = sub_2749FCD64();

      v127 = OUTLINED_FUNCTION_112_1(v126, sel_localizedStringForKey_value_table_);

      v128 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v130 = v129;

      objc_allocWithZone(type metadata accessor for DateBucketedGroup());
      v131 = sub_27479BA7C;
      goto LABEL_20;
    case 8u:
      v219 = v38;
      v220 = v30;
      OUTLINED_FUNCTION_0_9();
      OUTLINED_FUNCTION_111_1(v178, v179, v180);
      LibraryConfiguration.init(destination:)(v30, v181, v182, v183, v184, v185, v186, v187, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B38, &unk_274A10B80);
      OUTLINED_FUNCTION_49_0();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_274A0EF10;
      v120 = *(v2 + 56);
      v188 = OUTLINED_FUNCTION_119();
      v189 = v120(v188);
      v123 = [v189 recentlyRunShortcuts];

      sub_2749FCE14("No shortcuts have been run in the last 30 days", 46);
      OUTLINED_FUNCTION_106_1();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
      }

      OUTLINED_FUNCTION_99();
      v190 = sub_2749FCD64();
      OUTLINED_FUNCTION_99();
      v191 = sub_2749FCD64();

      v193 = OUTLINED_FUNCTION_112_1(v192, sel_localizedStringForKey_value_table_);

      v128 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v130 = v194;

      objc_allocWithZone(type metadata accessor for DateBucketedGroup());
      v131 = sub_27479BAE8;
LABEL_20:
      *(v119 + 32) = sub_274789894(v123, v131, 0, v128, v130);
      *(v119 + 40) = &off_288391638;
      v218 = v119;
      OUTLINED_FUNCTION_31_5();
      v195 = swift_getAssociatedTypeWitness();
      v196 = v229;
      v197 = OUTLINED_FUNCTION_119();
      v216 = v120(v197);
      v217 = *(v2 + 8);
      OUTLINED_FUNCTION_3_15();
      v221 = v198;
      v199 = v230;
      v200 = v222;
      sub_274723238(v230, v222, v201);
      v202 = OUTLINED_FUNCTION_119();
      v204 = v203(v202);
      OUTLINED_FUNCTION_24_0();
      v205 = swift_getAssociatedConformanceWitness();
      v206 = *(v205 + 88);
      swift_unknownObjectRetain();
      v206(v216, v196, v217, v218, v200, v204, v195, v205);
      OUTLINED_FUNCTION_4_7();
      v207();
      swift_unknownObjectRelease();
      sub_274722658(v199, v221);
      v40 = v232;
      break;
    default:
      v42 = *(v29 + 1);
      v43 = *(v29 + 2);
      v44 = *(v29 + 3);
      v45 = v29[32];
      v237[0] = *v29;
      v237[1] = v42;
      v238 = v43;
      v239 = v44;
      v240 = v45;
      v233 = v39;
      v234 = v224;
      v235 = v225;
      v236 = v226;
      OUTLINED_FUNCTION_23_4();
      v46();
      v47 = OUTLINED_FUNCTION_78_1();
      v40 = v232;
      sub_274725D30(v47, v48, v43, v44, v45);
      break;
  }

  OUTLINED_FUNCTION_0_9();
  v208 = v223;
  sub_274723238(v40, v223, v209);
  __swift_storeEnumTagSinglePayload(v208, 0, 1, v231);
  (*(v2 + 96))(v208, v37, v2);
  OUTLINED_FUNCTION_46();
}

void *OUTLINED_FUNCTION_70_0()
{

  return memcpy((v0 + 456), (v0 + 1416), 0xB9uLL);
}

BOOL OUTLINED_FUNCTION_70_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_274726F58(uint64_t a1)
{
  type metadata accessor for RootNavigationDestination(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LibraryEditingBehavior(319);
    if (v2 <= 0x3F)
    {
      sub_2747270A8(319, &qword_28159E558, &type metadata for LibraryEditingAction, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_27478BF10(319, &qword_28159E498, type metadata accessor for WFWorkflowRunSource);
        if (v4 <= 0x3F)
        {
          sub_2747270A8(319, qword_28159F880, &type metadata for LibraryLayoutMode, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2747270A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_47_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_47_6(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

id OUTLINED_FUNCTION_47_7(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27477C094(a1, a2, a3, a4, a5, v5, 0);
}

id OUTLINED_FUNCTION_47_8()
{

  return [v0 (v1 + 1656)];
}

void sub_27472722C()
{
  OUTLINED_FUNCTION_48();
  type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_4();
  v3 = [*(v0 + 32) descriptors];
  sub_27471CF08(0, &qword_28159E490, 0x277D7A1C0);
  OUTLINED_FUNCTION_3();
  v4 = sub_2749FCF84();

  v5 = sub_2747276D0(v4);
  if (!v5)
  {
LABEL_10:

    OUTLINED_FUNCTION_46();
    return;
  }

  v6 = v5;
  v11 = MEMORY[0x277D84F90];
  sub_274727880();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x277C5F6D0](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      *v1 = v8;
      OUTLINED_FUNCTION_119();
      swift_storeEnumTagMultiPayload();
      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_8(v9);
        sub_274727880();
      }

      ++v7;
      *(v11 + 16) = v10 + 1;
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_0_3();
      sub_274722708();
    }

    while (v6 != v7);
    goto LABEL_10;
  }

  __break(1u);
}

id OUTLINED_FUNCTION_13_3(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return sub_27472AFE4();
}

uint64_t OUTLINED_FUNCTION_125_0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1)
{

  return sub_2749F95D4();
}

id OUTLINED_FUNCTION_13_7()
{

  return [v0 (v3 + 3668)];
}

uint64_t OUTLINED_FUNCTION_13_12()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  return sub_2749FD934();
}

id OUTLINED_FUNCTION_13_14()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_13_19()
{
}

void OUTLINED_FUNCTION_18_2()
{
  v2 = *(v1 - 88);
  *v0 = *(v1 - 96);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_13_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  return sub_2747D2AC8(va, &a11);
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1)
{

  return sub_2749FDCC4();
}

uint64_t OUTLINED_FUNCTION_13_26()
{
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;

  return sub_2749FD754();
}

uint64_t OUTLINED_FUNCTION_13_27()
{

  return sub_2749FDCC4();
}

uint64_t sub_2747276D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2749FD844();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_2747276F4()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (v9)
  {
    OUTLINED_FUNCTION_5_5();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_25_1();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_92_0();
  if (v10 ^ v11 | v27)
  {
    v19 = v0;
  }

  else
  {
    v19 = v18;
  }

  if (!v19)
  {
    v25 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_102_1(v12, v13, v14, v15, v16, v17);
  v20 = v4(0);
  OUTLINED_FUNCTION_27(v20);
  v22 = *(v21 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v26 = _swift_stdlib_malloc_size(v25);
  if (!v22)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = v26 - v24 == 0x8000000000000000 && v22 == -1;
  if (v27)
  {
    goto LABEL_22;
  }

  v25[2] = v0;
  v25[3] = 2 * ((v26 - v24) / v22);
LABEL_17:
  v4(0);
  OUTLINED_FUNCTION_71();
  if (v8)
  {
    sub_274724BB4(v6 + v28, v0, v25 + v28, v2);
    *(v6 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return sub_2749FDCC4();
}

void OUTLINED_FUNCTION_27_2(unint64_t a1@<X8>)
{

  sub_2747308B0(a1 > 1, v1, 1, v2);
}

void OUTLINED_FUNCTION_27_3()
{
  v2 = *(v0 + 16) + 1;

  sub_274735AB4(0, v2, 1, v0);
}

__n128 OUTLINED_FUNCTION_27_4()
{
  v4 = *(v2 + 16);
  *(v0 + 1872) = *v2;
  *(v0 + 1888) = v4;
  result = *(v2 + 32);
  *(v0 + 1904) = result;
  *(v0 + 1920) = v3;
  *(v0 + 1928) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1)
{

  return sub_2749FB7B4();
}

uint64_t OUTLINED_FUNCTION_27_10()
{
  *(v4 + 16) = v0;
  v6 = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2;

  return sub_2748605C4(v1, v6);
}

uint64_t OUTLINED_FUNCTION_111_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 296);

  return sub_274723238(v3, v6, a3);
}

void sub_274727A94()
{
  OUTLINED_FUNCTION_48();
  type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_13_4();
  v2 = sub_2749F9824();
  v3 = *(v2 + 16);
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    sub_274727880();
    v10 = sub_2749F9514();
    v4 = *(v10 - 8);
    v5 = *(v4 + 16);
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      v5(v0, v6, v10);
      swift_storeEnumTagMultiPayload();
      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_8(v8);
        sub_274727880();
      }

      *(v11 + 16) = v9 + 1;
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_0_3();
      sub_274722708();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_55_0(void *a1)
{

  return memcpy(a1, (v1 + 2264), 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_55_2(uint64_t a1, __n128 a2, __n128 a3)
{

  return sub_27480FE78(a1, v3, v5, 1.0);
}

uint64_t OUTLINED_FUNCTION_55_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_27477DEAC();
}

void OUTLINED_FUNCTION_55_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_58_0()
{

  return [v1 (v3 + 3668)];
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return sub_2749F9444();
}

void sub_274727E04(uint64_t a1@<X8>)
{
  type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_0_9();
  v4 = OUTLINED_FUNCTION_32();
  sub_274723238(v4, v5, v6);
  OUTLINED_FUNCTION_66_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v7 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B78, &qword_274A0FD60);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_274A0EF10;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      v9 = 2;
      *(v8 + 48) = 0;
      *(v8 + 56) = 2;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      v10 = WFWorkflowCollectionIdentifierForWorkflowType();
      if (v10)
      {
        v11 = v10;
        v12 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v14 = v13;

        v15 = RootNavigationDestination.symbolName.getter();
        v17 = *(v8 + 16);
        v9 = *(v8 + 24);
        v18 = v17 + 1;
        if (v17 >= v9 >> 1)
        {
          v31 = v15;
          v28 = v16;
          OUTLINED_FUNCTION_63_0();
          sub_2747281B4();
          v16 = v28;
          v8 = v29;
          v15 = v31;
          v9 = *(v8 + 24);
        }

        *(v8 + 16) = v18;
        v19 = (v8 + 48 * v17);
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = v12;
        v19[7] = v14;
        v19[8] = v15;
        v19[9] = v16;
      }

      else
      {
        v18 = 1;
      }

      if (v18 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_63_0();
        sub_2747281B4();
        v8 = v27;
      }

      *(v8 + 16) = v18 + 1;
      v26 = (v8 + 48 * v18);
      v26[4] = 0;
      v26[5] = 0;
      v26[6] = 0;
      v26[7] = 5;
      v26[8] = 0;
      v26[9] = 0;
      *a1 = v8;
      goto LABEL_16;
    case 2u:
      v30 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968760, &unk_274A12830);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_274A11F50;
      *(v21 + 32) = &unk_28838F958;
      *(v21 + 40) = 0;
      *(v21 + 48) = v30;
      *(v21 + 56) = 1;
      *(v21 + 64) = v30;
      *(v21 + 72) = 2;
      *a1 = v21;
      type metadata accessor for LibraryEditingBehavior(0);
      OUTLINED_FUNCTION_107();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_50_0();

      v24 = v22;
      return;
    case 3u:
      sub_2749F9514();
      OUTLINED_FUNCTION_9();
      (*(v20 + 32))(a1, v1);
      type metadata accessor for LibraryEditingBehavior(0);
      OUTLINED_FUNCTION_107();
      goto LABEL_17;
    case 5u:
      *a1 = &unk_28838F8A8;
LABEL_16:
      *(a1 + 8) = 0;
      type metadata accessor for LibraryEditingBehavior(0);
      OUTLINED_FUNCTION_107();
LABEL_17:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      type metadata accessor for LibraryEditingBehavior(0);
      OUTLINED_FUNCTION_107();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_10();
      sub_274722658(v1, v25);
      break;
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t OUTLINED_FUNCTION_91_0@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  result = *v3;
  *v1 = *v3;
  *(v1 + 8) = *(v3 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_91_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 217) = *(*(*(v1 - 256) + 48) + a1);
  *(v2 - 232) = 0;
  return v2 - 232;
}

void sub_2747281B4()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B78, &qword_274A0FD60);
    v8 = OUTLINED_FUNCTION_48_2(v7);
    OUTLINED_FUNCTION_8_4(v8);
  }

  OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    OUTLINED_FUNCTION_72_0();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_7_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_2747938DC(a1, 0xD000000000000014, (a2 - 32) | 0x8000000000000000, v2, v3);
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t a1)
{
  *(v1 + 272) = a1;

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_7_10(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

unint64_t OUTLINED_FUNCTION_7_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v18 - 112) = v17;
  *(v18 - 104) = v16;
  *(v18 - 128) = 10;
  *(v18 - 120) = 0xE100000000000000;
  *(v18 - 144) = 32;
  *(v18 - 136) = 0xE100000000000000;

  return sub_27475D0D0();
}

void *OUTLINED_FUNCTION_7_18()
{

  return memcpy((v0 + 96), (v1 + 32), 0x5AuLL);
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_2749FBE94();
}

uint64_t OUTLINED_FUNCTION_7_21(unint64_t *a1)
{
  v4 = MEMORY[0x277CDD7A8];

  return sub_27472AB6C(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_24(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277CDD978];

  return sub_27472AC38(a1, a2, a3, v4);
}

void *OUTLINED_FUNCTION_7_26(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return memcpy(va, (v23 + 40), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_7_28(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void *OUTLINED_FUNCTION_7_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x280], 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_7_31()
{

  return sub_2749FDAE4();
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI20LibraryEditingActionO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return sub_274976A54();
}

id OUTLINED_FUNCTION_29_5(uint64_t a1)
{

  return [v1 (v2 + 120)];
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return sub_274772ADC(v0 + 1712, v0 + 1328);
}

void OUTLINED_FUNCTION_16_0(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  v14 = *(v3 + 88);
  v13 = *(v3 + 80);
  v12 = *(v3 + 64);

  sub_2747D2480(v4, v5, v6, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, v14);
}

uint64_t OUTLINED_FUNCTION_29_9(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_29_10()
{
  *(v1 + 16) = v4;
  v6 = (v1 + 40 * v2);
  v7 = *(v0 + 248);
  v6[4] = *(v0 + 256);
  v6[5] = v7;
  v6[6] = v5;
  v6[7] = v3;
}

void *OUTLINED_FUNCTION_29_11()
{

  return memcpy((v0 + 288), (v0 + 480), 0xB9uLL);
}

void *OUTLINED_FUNCTION_29_12(void *a1)
{

  return memcpy(a1, v1, 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return sub_2749FDE14();
}

uint64_t RootViewSidebar.setup(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_136();
  v17 = v16;
  v36 = v18;
  v37 = v19;
  v38 = (*(v16 + 72))(v19, v16);
  v20 = *(v38 + 16);
  if (v20)
  {
    v21 = *(v17 + 8);
    v22 = (v38 + 40);
    do
    {
      v23 = *v22;
      ObjectType = swift_getObjectType();
      v25 = *(v23 + 72);
      swift_unknownObjectRetain();
      v26 = swift_unknownObjectRetain();
      v25(v26, v21, ObjectType, v23);
      swift_unknownObjectRelease();
      v22 += 2;
      --v20;
    }

    while (v20);
  }

  v39 = *(v17 + 48);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_138();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, v17 + 48, v36, v37, v39, a13, a14, a15, a16);
}

uint64_t sub_27472897C()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_42_1(v1 + 48, v2);
  *(v1 + 56) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_2747289CC()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_42_1(v1 + 16, v2);
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_274728A20()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_42_1(v1 + 24, v3);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return swift_unknownObjectRelease();
}

id TriggerRootViewController.init(with:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_homeManager;
  *&v1[v4] = [objc_opt_self() sharedManager];
  *&v1[OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_createAutomationController] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___automationListViewController] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___emptyStateViewController] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI25TriggerRootViewController_database] = a1;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  v7 = sub_2747251C0();
  [v7 prewarm];

  return v6;
}

uint64_t sub_274728B90(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 32) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    v2 = 0x80;
  }

  *(result + 32) = v2;
  return result;
}

uint64_t sub_274728BBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 33))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 32) >> 1) & 0xF))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void sub_274728C48(uint64_t a1)
{
  sub_2747254DC(319, &qword_28159E788, &type metadata for GallerySearchManager.State);
  if (v1 <= 0x3F)
  {
    sub_2747254DC(319, &qword_28159E750, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t GallerySearchManager.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_43();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB88, &qword_274A1F948);
  OUTLINED_FUNCTION_43();
  v9 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager__state;
  v17 = xmmword_274A11F60;
  v18 = 2;
  sub_2749FA8C4();
  (*(v9 + 32))(v0 + v13, v12, v7);
  *(v0 + OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager_currentTask) = 0;
  v14 = OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager__isActive;
  LOBYTE(v17) = 0;
  sub_2749FA8C4();
  (*(v3 + 32))(v0 + v14, v6, v1);
  v15 = (v0 + OBJC_IVAR____TtC10WorkflowUI20GallerySearchManager_searchTerm);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_274728F18(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274728F60(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_27475A880(a1, v3, a3);
}

void *OUTLINED_FUNCTION_41_7(void *a1)
{

  return memcpy(a1, (v1 + 2688), 0xBAuLL);
}

void *OUTLINED_FUNCTION_41_8(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_41_10()
{
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1)
{

  return sub_2749FA8E4();
}

id OUTLINED_FUNCTION_22_5(uint64_t a1)
{

  return [v1 setBackgroundColor_];
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1)
{

  return sub_274962734(a1, 3u);
}

uint64_t OUTLINED_FUNCTION_22_12()
{
  *(v1 + 264) = v2;
  *(v1 + 272) = v0;
  return v3;
}

uint64_t OUTLINED_FUNCTION_22_14()
{

  return sub_2747B97A0(v0 + 112, v0 + 336, v1, v2);
}

uint64_t OUTLINED_FUNCTION_22_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return sub_2748AC444(va, v21, v24, v22, v23);
}

uint64_t OUTLINED_FUNCTION_22_18()
{

  return sub_2749FDC44();
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1)
{

  return sub_2749FAEA4();
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return sub_2749FCD64();
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

void OUTLINED_FUNCTION_19_2(unint64_t a1@<X8>)
{

  sub_27476D500(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return sub_27472AFE4();
}

uint64_t OUTLINED_FUNCTION_98_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

id OUTLINED_FUNCTION_19_9(void *a1)
{

  return [a1 (v1 + 3832)];
}

void OUTLINED_FUNCTION_19_10()
{
  v2 = *(v0 + 16) + 1;

  sub_27476D6D8(0, v2, 1);
}

id OUTLINED_FUNCTION_19_11()
{

  return [v0 (v1 + 2808)];
}

void OUTLINED_FUNCTION_19_13()
{
  sub_274877EBC(*(v0 + 72), *(v0 + 80));
  sub_274830180(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 112);
}

uint64_t OUTLINED_FUNCTION_19_14()
{

  return sub_2749FCD64();
}

uint64_t OUTLINED_FUNCTION_19_15()
{

  return sub_2749FC5B4();
}

void OUTLINED_FUNCTION_19_16()
{
}

uint64_t OUTLINED_FUNCTION_19_17(uint64_t a1)
{

  return sub_27473ADB8(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_19_20(uint64_t a1, uint64_t a2)
{

  return sub_2749FDC04();
}

double OUTLINED_FUNCTION_19_21()
{
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1208);

  return sub_2747BD02C(v3, v2);
}

id sub_274729584()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_28159E448 = result;
  return result;
}

uint64_t RootView.navigate(to:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = xmmword_274A11F60;
  return (*(*(a5 + 16) + 32))(a1, v6, a2, a3, a4);
}

void sub_274729678(uint64_t a1)
{
  sub_2747270A8(319, &qword_28159E550, &type metadata for LibraryEditingOption, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2749F9514();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t RootNavigationDestination.sidebarIdentifier.getter()
{
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = (v3 - v2);
  OUTLINED_FUNCTION_0_9();
  v5 = OUTLINED_FUNCTION_121();
  sub_274723238(v5, v6, v7);
  OUTLINED_FUNCTION_34_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = *v4;
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_97_1();

      break;
    case 2u:
      v13 = *v4;
      v14 = [*v4 identifier];
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_97_1();

      break;
    case 3u:
      v8 = OUTLINED_FUNCTION_29_1();
      v9(v8);
      sub_2749F94D4();
      OUTLINED_FUNCTION_97_1();
      v10 = OUTLINED_FUNCTION_119();
      v11(v10);
      break;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      return OUTLINED_FUNCTION_93();
    default:
      sub_274722658(v4, type metadata accessor for RootNavigationDestination);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

id OUTLINED_FUNCTION_65_3(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_65_4(uint64_t a1)
{

  return sub_2749FD9A4();
}

void LibraryConfiguration.init(destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = OUTLINED_FUNCTION_69_0();
  type metadata accessor for RootNavigationDestination(v26);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_82_1();
  MEMORY[0x28223BE20](v28);
  v30 = (&a9 - v29);
  sub_274729CBC(v25, v20);
  RootNavigationDestination.displayName.getter();
  v32 = v31;
  v34 = v33;
  v35 = type metadata accessor for LibraryConfiguration(0);
  v36 = (v20 + v35[5]);
  *v36 = v32;
  v36[1] = v34;
  v37 = OUTLINED_FUNCTION_94_0();
  sub_274729CBC(v37, v38);
  OUTLINED_FUNCTION_65_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v41 = *v30;
      v40 = 1;
      break;
    case 5:
      v40 = 2;
      v41 = 1;
      break;
    case 2:
      v40 = 0;
      v41 = *v30;
      break;
    default:
      OUTLINED_FUNCTION_10_2();
      sub_27472AFE4();
      v41 = 0;
      v40 = 2;
      break;
  }

  v42 = v20 + v35[6];
  *v42 = v41;
  *(v42 + 8) = v40;
  sub_274727E04(v20 + v35[7]);
  sub_274729DCC();
  *(v20 + v35[8]) = v43;
  *(v20 + v35[9]) = RootNavigationDestination.runSource.getter();
  *(v20 + v35[10]) = 1;
  sub_27472A55C(v25, v21);
  OUTLINED_FUNCTION_66();
  v44 = swift_getEnumCaseMultiPayload();
  if (v44 != 5)
  {
    sub_27472AFE4();
  }

  *(v20 + v35[11]) = v44 != 5;
  OUTLINED_FUNCTION_46();
}

void *OUTLINED_FUNCTION_52_2(uint64_t a1)
{
  v2 = *(v1 + 632);
  *v2 = a1;
  return v2;
}

__n128 OUTLINED_FUNCTION_52_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *v10 = a10.n128_u32[0];
  return result;
}

void *OUTLINED_FUNCTION_52_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x258], 0x81uLL);
}

uint64_t OUTLINED_FUNCTION_118_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t sub_274729CBC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_59_0();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_56_6()
{

  return swift_task_alloc();
}

unint64_t OUTLINED_FUNCTION_56_7@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a7 = v7;

  return sub_274947AD8(a1, &a7);
}

void sub_274729DCC()
{
  OUTLINED_FUNCTION_48();
  type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = (v4 - v3);
  v51 = &unk_28838FA08;
  sub_27472A270(&unk_28838FAB8);
  OUTLINED_FUNCTION_0_9();
  v6 = OUTLINED_FUNCTION_45();
  sub_274723238(v6, v7, v8);
  OUTLINED_FUNCTION_24_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v5;
    v10 = WFWorkflowCollectionIdentifierForWorkflowType();
    if (v10)
    {
      v11 = v10;
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_97_1();

      v12 = WFHumanReadableNameForWorkflowType();
      if (v12)
      {
        v13 = v12;
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_76_1();

        sub_2749FCE14("Remove from %@", 14);
        OUTLINED_FUNCTION_106_1();
        if (qword_28159E3A8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
        }

        v14 = 0xEC000000656C6372;
        OUTLINED_FUNCTION_99();
        v15 = sub_2749FCD64();
        OUTLINED_FUNCTION_99();
        v16 = sub_2749FCD64();

        OUTLINED_FUNCTION_92_1();
        v19 = [v17 v18];

        v20 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v22 = v21;

        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628, &qword_274A0FF40);
        v24 = OUTLINED_FUNCTION_83_1(v23);
        *(v24 + 16) = xmmword_274A0EF10;
        *(v24 + 56) = MEMORY[0x277D837D0];
        *(v24 + 64) = sub_27475C4F4();
        *(v24 + 32) = v11;
        *(v24 + 40) = v1;
        sub_2749FCD74();
        OUTLINED_FUNCTION_76_1();

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        if (v22 == OUTLINED_FUNCTION_84_1() && v20 == v25)
        {
          goto LABEL_29;
        }

        v27 = OUTLINED_FUNCTION_36_3();
        v28 = OUTLINED_FUNCTION_116_2(v27);

        if (v28)
        {
          goto LABEL_30;
        }

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        if (v28 == OUTLINED_FUNCTION_84_1() && v20 == v29)
        {
        }

        else
        {
          v31 = OUTLINED_FUNCTION_36_3();
          v32 = OUTLINED_FUNCTION_116_2(v31);

          if ((v32 & 1) == 0)
          {
            _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            if (v32 != OUTLINED_FUNCTION_84_1() || v20 != v33)
            {
              v35 = OUTLINED_FUNCTION_36_3();
              v36 = OUTLINED_FUNCTION_116_2(v35);

              if ((v36 & 1) == 0)
              {
                v37 = 0;
                v14 = 0;
LABEL_31:
                v41 = v51;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_2747281B4();
                  v41 = v49;
                }

                v42 = v41[2];
                if (v42 >= v41[3] >> 1)
                {
                  sub_2747281B4();
                  v41 = v50;
                }

                v41[2] = v42 + 1;
                v43 = &v41[6 * v42];
                v43[4] = v11;
                v43[5] = v1;
                v43[6] = v0;
                v43[7] = &v51;
                v43[8] = v37;
                v43[9] = v14;
                v51 = v41;
                goto LABEL_36;
              }

LABEL_30:
              v37 = 0x69632E73756E696DLL;
              goto LABEL_31;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        v14 = 0x8000000274A2C330;
        v37 = 0xD000000000000010;
        goto LABEL_31;
      }
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1_10();
  sub_274722658(v5, v38);
  v39 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_2();
    sub_2747281B4();
    v39 = v47;
  }

  if (v39[2] >= v39[3] >> 1)
  {
    sub_2747281B4();
    v39 = v48;
  }

  OUTLINED_FUNCTION_98_2();
  v40[6] = 0;
  v40[7] = 1;
  v40[8] = 0;
  v40[9] = 0;
  v51 = v39;
LABEL_36:
  v44 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_2();
    sub_2747281B4();
    v44 = v46;
  }

  if (v44[2] >= v44[3] >> 1)
  {
    sub_2747281B4();
  }

  OUTLINED_FUNCTION_98_2();
  v45[6] = 0;
  v45[7] = 5;
  v45[8] = 0;
  v45[9] = 0;
  OUTLINED_FUNCTION_46();
}

void sub_27472A270(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_27472A31C(v4, 1, sub_2747281B4);
  OUTLINED_FUNCTION_76_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_7();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_21_3(v3 + 48 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_71_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_27472A31C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void OUTLINED_FUNCTION_71_1()
{
  *(v3 - 96) = v0;

  sub_2747A12C0((v3 - 96), v1, v2, (v3 - 104));
}

uint64_t OUTLINED_FUNCTION_71_2()
{
  if (v0 < 0)
  {
    return v0;
  }

  else
  {
    return v0 & 0xFFFFFFFFFFFFFF8;
  }
}

id RootNavigationDestination.runSource.getter()
{
  type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_0_9();
  v4 = OUTLINED_FUNCTION_32_1();
  sub_274723238(v4, v5, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_274722658(v3, type metadata accessor for RootNavigationDestination);
      goto LABEL_3;
    case 2u:
      sub_274722658(v3, type metadata accessor for RootNavigationDestination);
      v7 = MEMORY[0x277D7A838];
      goto LABEL_7;
    case 5u:
      v7 = MEMORY[0x277D7A858];
      goto LABEL_7;
    case 7u:
    case 8u:
LABEL_3:
      v7 = MEMORY[0x277D7A830];
LABEL_7:
      v8 = *v7;
      v9 = *v7;
      break;
    default:
      sub_274722658(v3, type metadata accessor for RootNavigationDestination);
      v8 = 0;
      break;
  }

  return v8;
}

uint64_t sub_27472A55C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_59_0();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

void *OUTLINED_FUNCTION_30_4()
{

  return memcpy((v0 + 808), (v0 + 1712), 0xB9uLL);
}

double OUTLINED_FUNCTION_30_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  result = 0.0;
  *(a9 + 41) = 0u;
  a9[1] = 0u;
  a9[2] = 0u;
  *a9 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_10()
{

  return MEMORY[0x282131EE8](0);
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI07LibraryA16CreationBehaviorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void LibraryView.init(database:delegate:configuration:autoShortcutsDataSource:shortcutMoveService:)()
{
  OUTLINED_FUNCTION_48();
  v24 = v0;
  v2 = v1;
  v23 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for LibraryConfiguration(0);
  v13 = OUTLINED_FUNCTION_34(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B38, &unk_274A10B80);
  v18 = OUTLINED_FUNCTION_102(v17);
  *(v18 + 16) = xmmword_274A0EF10;
  v19 = objc_allocWithZone(type metadata accessor for AllShortcutsGroup());
  v20 = v5;
  v21 = v11;
  sub_27472A868();
  *(v18 + 32) = v22;
  *(v18 + 40) = &protocol witness table for AllShortcutsGroup;
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_136_0();
  (*(v2 + 88))(v21, v9, v7, v18, v16, v23, v24, v2);

  OUTLINED_FUNCTION_16_4();
  sub_27472AFE4();
  OUTLINED_FUNCTION_46();
}

void sub_27472A868()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681F8, &unk_274A115A0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v0[OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_shouldUpdate] = 0;
  OUTLINED_FUNCTION_98_1(OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_delegate);
  *&v0[OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup__autoShortcutApps] = 0;
  *&v0[OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_cancellables] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_database] = v4;
  v6 = v4;
  v7 = [v6 sortedVisibleFolders];
  *&v0[OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_collectionsResult] = v7;
  *&v0[OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_autoShortcutsDataSource] = v2;
  v8 = type metadata accessor for AllShortcutsGroup();
  v15.receiver = v0;
  v15.super_class = v8;
  v9 = v2;
  objc_msgSendSuper2(&v15, sel_init);
  if (v2)
  {
    v10 = v9;
    sub_2749F9834();

    OUTLINED_FUNCTION_86();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_39_1();
    sub_27472ABF8(v11, v12);
    sub_2749FA974();

    v13 = OUTLINED_FUNCTION_119();
    v14(v13);
    swift_beginAccess();
    sub_2749FA834();
    swift_endAccess();

    v6 = v10;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_27472AA98()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

void OUTLINED_FUNCTION_97_0()
{

  JUMPOUT(0x277C5FB60);
}

uint64_t OUTLINED_FUNCTION_97_2(uint64_t a1)
{

  return sub_2749FCC94();
}

uint64_t sub_27472AB6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_27472ABB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27472ABF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_108(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27472AC38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_108(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_27472AC84(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      *(Strong + OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup__autoShortcutApps) = v2;
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = v5 + OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_delegate;
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      v9 = *(v7 + 8);

      if (v8)
      {
        ObjectType = swift_getObjectType();
        (*(v9 + 8))(1, ObjectType, v9);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2749FA424();
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_17_8()
{
}

id OUTLINED_FUNCTION_17_10()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t a1)
{

  return sub_2749FA904();
}

uint64_t OUTLINED_FUNCTION_17_13()
{
  *(v1 + 16) = v0;

  return sub_2748605C4(v2, v1 + v5 + v4 * v3);
}

void *OUTLINED_FUNCTION_17_14()
{

  return memcpy(&STACK[0x4A8], &STACK[0x318], 0xC2uLL);
}

uint64_t OUTLINED_FUNCTION_17_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_274880618(a1, v3, a3);
}

void OUTLINED_FUNCTION_17_17(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_17_20(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_21()
{

  return sub_2749FCD64();
}

id OUTLINED_FUNCTION_17_22()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_27472AFE4()
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(v0);
  return v0;
}

id OUTLINED_FUNCTION_16_5()
{

  return [v0 (v3 + 3668)];
}

void *OUTLINED_FUNCTION_16_6()
{

  return memcpy((v0 + 248), (v0 + 440), 0xB9uLL);
}

id OUTLINED_FUNCTION_16_8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_16_10()
{
  v5 = *(v0 + 96);

  return sub_2747B97A0(v3, v5, v1, v2);
}

uint64_t OUTLINED_FUNCTION_16_11()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_16_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14, unint64_t a15)
{
  result = a14;
  *v15 = a14;
  v15[1].n128_u64[0] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_1()
{
}

__n128 OUTLINED_FUNCTION_16_14@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  *a1 = *(v1 - 136);
  *(a1 + 16) = v2;
  result = *(v1 - 104);
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return swift_getWitnessTable();
}

id OUTLINED_FUNCTION_16_16()
{

  return [v1 (v0 + 3941)];
}

uint64_t OUTLINED_FUNCTION_16_17(uint64_t a1, uint64_t a2)
{

  return sub_2749FDB94();
}

uint64_t RootNavigationDestination.accessibilityIdentifier.getter()
{
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_0_9();
  v4 = OUTLINED_FUNCTION_70_1();
  sub_274723238(v4, v5, v6);
  OUTLINED_FUNCTION_121();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v7 = *v0;
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_40_2();
      if (v0 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v1 == v8)
      {

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_66();
      v10 = sub_2749FDCC4();

      if (v10)
      {
LABEL_20:

        return 0x696C5F6863746177;
      }

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_40_2();
      if (v10 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v1 == v11)
      {
      }

      else
      {
        OUTLINED_FUNCTION_66();
        v13 = sub_2749FDCC4();

        if ((v13 & 1) == 0)
        {

          return 0;
        }
      }

      v14 = 0xD000000000000013;

      return v14;
    case 2u:
      v19 = *v0;
      v20 = [*v0 name];
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_120_0();

      MEMORY[0x277C5EBC0](0x7972617262696C5FLL, 0xE800000000000000);
      return v1;
    case 3u:
      v15 = OUTLINED_FUNCTION_93();
      v16(v15);
      sub_2749FD934();
      sub_2749F94D4();
      OUTLINED_FUNCTION_101_1();

      MEMORY[0x277C5EBC0](0x68735F6F7475615FLL, 0xEF7374756374726FLL);
      v14 = v1;
      v17 = OUTLINED_FUNCTION_45();
      v18(v17);
      return v14;
    case 5u:
      return 0xD000000000000015;
    case 6u:
      return 0xD000000000000013;
    default:
      sub_274722658(v0, type metadata accessor for RootNavigationDestination);
      return 0;
  }
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return sub_2749FCD64();
}

__n128 OUTLINED_FUNCTION_21_5(__n128 *a1)
{
  result = v1[38];
  a1[1] = result;
  a1[2].n128_u64[0] = 1701667182;
  a1[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_7(__n128 a1, __n128 a2)
{

  return sub_2749F9DA4();
}

uint64_t OUTLINED_FUNCTION_21_8()
{

  return sub_2747D2220(v0, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_10(uint64_t a1, uint64_t a2)
{

  return sub_2749FDB94();
}

uint64_t OUTLINED_FUNCTION_21_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t sub_27472B7B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

BOOL LibraryEditingBehavior.allowsMultipleSelection.getter()
{
  type metadata accessor for LibraryEditingBehavior(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_4();
  v1 = OUTLINED_FUNCTION_32();
  sub_274729CBC(v1, v2);
  OUTLINED_FUNCTION_45();
  v3 = swift_getEnumCaseMultiPayload() != 2;
  sub_27472AFE4();
  return v3;
}

size_t OUTLINED_FUNCTION_8_4(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_11()
{
  v2 = *(v0 + 128) + 56;

  return sub_274772B38(v2, v0 + 536);
}

id OUTLINED_FUNCTION_8_12(unsigned int a1, uint64_t a2, void *a3)
{
  v4 = a1 | 0x6C69662E00000000;

  return sub_2747F3934(v4, 0xE90000000000006CLL, a3);
}

id OUTLINED_FUNCTION_8_13(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;

  return sub_2748E92E4(0x74756374726F6853, v4, v2);
}

uint64_t OUTLINED_FUNCTION_8_14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_27472ABB4(a1, a2, a3);
}

id OUTLINED_FUNCTION_8_15()
{

  return [v0 (v1 + 2808)];
}

__n128 OUTLINED_FUNCTION_8_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26, __int128 a27, __int128 a28)
{
  *(v28 + 16) = v29;
  v32 = (v28 + (v31 << 6));
  result = a26;
  *(v32 + 73) = *(v30 + 41);
  v32[3] = a27;
  v32[4] = a28;
  v32[2] = a26;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return sub_274738558(v0, v0 + 40, v1, v2);
}

void *OUTLINED_FUNCTION_8_22()
{

  return memcpy((v0 + 96), (v0 + 192), 0x59uLL);
}

id OUTLINED_FUNCTION_8_23(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_8_25()
{
  v3 = *(v1 - 96);
  v4 = *(v1 - 112);
  *v0 = *(v1 - 128);
  *(v0 + 16) = v4;
  *(v0 + 32) = v3;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_8_27(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4)
{

  _os_signpost_emit_with_name_impl(a1, v4, v6, a4, v5, v7, v8, 2u);
}

void *OUTLINED_FUNCTION_8_29()
{

  return memcpy((v1 - 168), (v0 + 40), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_8_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return sub_274772ADC(&STACK[0x340], &a41);
}

void sub_27472BC94(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_3();
    v5 = sub_2749FA924();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_27472BCE4(uint64_t a1)
{
  sub_27472BC94(319, &unk_28159E740, &qword_2809687C8, &qword_274A129B0);
  if (v1 <= 0x3F)
  {
    sub_2747254DC(319, &qword_28159E7A0, &type metadata for LibraryLayoutMode);
    if (v2 <= 0x3F)
    {
      sub_2747254DC(319, &qword_28159E750, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_27472BC94(319, &qword_2809688A0, &qword_2809687B8, &qword_274A12998);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_27472BF0C(uint64_t a1)
{
  type metadata accessor for LibrarySectionOptions(319);
  if (v1 <= 0x3F)
  {
    sub_27472C384(319);
    if (v2 <= 0x3F)
    {
      sub_27472D350(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27472BFD0(uint64_t a1)
{
  type metadata accessor for LibrarySectionOptions.Header(319);
  if (v1 <= 0x3F)
  {
    sub_27478BEA8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LibrarySectionOptions.SectionType(319);
      if (v3 <= 0x3F)
      {
        sub_27478BF10(319, &qword_280968148, type metadata accessor for ShortcutsEmptyStateContent);
        if (v4 <= 0x3F)
        {
          sub_2749F9164();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27472C0C8(uint64_t a1)
{
  if (!qword_28159E568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C210, &unk_274A12840);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28159E568);
    }
  }
}

void sub_27472C13C(uint64_t a1)
{
  sub_27472C0C8(319);
  if (v1 <= 0x3F)
  {
    sub_27472C1C4();
    if (v2 <= 0x3F)
    {
      sub_2749F9514();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_27472C1C4()
{
  result = qword_280968150;
  if (!qword_280968150)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280968150);
  }

  return result;
}

void sub_27472C20C(uint64_t a1)
{
  if (!qword_28159E500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967A10, &qword_274A0FC10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28159E500);
    }
  }
}

void sub_27472C284(uint64_t a1)
{
  sub_27472C20C(319);
  if (v1 <= 0x3F)
  {
    sub_27472C2F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_27472C2F8(uint64_t a1)
{
  if (!qword_28159E810)
  {
    sub_2749F9514();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28159E810);
    }
  }
}

void sub_27472C384(uint64_t a1)
{
  if (!qword_2809688A8)
  {
    type metadata accessor for ShortcutsLibraryItem(255);
    v1 = sub_2749F95A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2809688A8);
    }
  }
}

uint64_t sub_27472C40C(uint64_t a1)
{
  result = type metadata accessor for ShortcutsLibraryItem.ItemType(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NameIconView.Model(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_27472C490(uint64_t a1)
{
  sub_27471CF08(319, &qword_28159E4A8, 0x277D7CAA8);
  if (v1 <= 0x3F)
  {
    sub_27471CF08(319, &qword_28159E460, 0x277D79F50);
    if (v2 <= 0x3F)
    {
      sub_27472C54C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for LibrarySectionOptions(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_27472C54C(uint64_t a1)
{
  if (!qword_28159E808)
  {
    sub_2749F97C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28159E808);
    }
  }
}

void sub_27472C5D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_3();
    v4 = sub_2749FAAB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_27472C628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_27472C68C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_6_32();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_27472C6EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_3();
    v4 = sub_2749FAAB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_27472C73C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_27472C7A0(uint64_t a1)
{
  sub_27472C628(319, &qword_28159E7B0, type metadata accessor for ShortcutChiclet.RunButton.Model, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_27472C628(319, &qword_28159E7B8, type metadata accessor for ShortcutChiclet.Progress, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_27472C628(319, &qword_28159E7E0, type metadata accessor for PopoverModel, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_27472D2FC(319, &qword_28159E750, MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t type metadata accessor for ShortcutChiclet.RunButton.Model(uint64_t a1)
{
  result = qword_28159FED0;
  if (!qword_28159FED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27472C9E4(uint64_t a1)
{
  sub_27472CBCC(319, &qword_28159E738, &qword_28096F700, &qword_274A238A8);
  if (v1 <= 0x3F)
  {
    sub_2747254DC(319, &qword_28159E770, MEMORY[0x277CE0F78]);
    if (v2 <= 0x3F)
    {
      sub_2747254DC(319, &qword_28159E750, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_2747254DC(319, &qword_28159E768, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_27472CBCC(319, &qword_28159E730, &unk_28096FAE0, &qword_274A180F0);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_27472CBCC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2749FA924();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_27472CC40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_27472CC90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_27472CCE0(uint64_t a1)
{
  sub_27472CC40(319, &qword_28159E7C0, &type metadata for ShortcutChiclet.Progress.State, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27472CDB4(uint64_t a1)
{
  sub_27472BC94(319, &qword_28159E790, &qword_280968888, &qword_274A12F18);
  if (v1 <= 0x3F)
  {
    sub_27472BC94(319, &qword_28159E798, &qword_280968890, &qword_274A12F20);
    if (v2 <= 0x3F)
    {
      sub_27472BC94(319, &qword_28159E7A8, &qword_280968898, &qword_274A12F28);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_27472CF58(uint64_t a1)
{
  sub_2749F9164();
  if (v1 <= 0x3F)
  {
    sub_2747254DC(319, &qword_28159E750, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_27472D100(319, &qword_28159E760, &qword_280968908, &unk_274A23340, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_2747254DC(319, &qword_28159E7E8, &type metadata for WorkflowIcon);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_27472D100(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_50_7(0, a2, a3);
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8, v9);
    v11 = a5(a1, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_27472D190(uint64_t a1)
{
  result = sub_2749F9164();
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

uint64_t sub_27472D25C(uint64_t a1)
{
  result = sub_2749F9164();
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

void sub_27472D2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_27472D350(uint64_t a1)
{
  if (!qword_28159EE08[0])
  {
    type metadata accessor for LibrarySectionOptions.Header(255);
    v1 = sub_2749FD6C4();
    if (!v2)
    {
      atomic_store(v1, qword_28159EE08);
    }
  }
}

void LibraryDataSource.init(layoutMode:canChangeLayoutModes:shortcutMoveService:database:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v0;
  v51 = v3;
  v52 = v4;
  v49 = v5;
  v50 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687B0, &qword_274A12990);
  OUTLINED_FUNCTION_43();
  v47 = v8;
  v48 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v46 = v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687B8, &qword_274A12998);
  OUTLINED_FUNCTION_43();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_1();
  v44 = v14;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_43();
  v19 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_64_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687C0, &qword_274A129A8);
  OUTLINED_FUNCTION_43();
  v23 = v22;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_82();
  v25 = sub_27472D918(MEMORY[0x277D84F90]);
  v26 = MEMORY[0x277D84FA0];
  if (v25)
  {
    v27 = sub_2747AFE44(MEMORY[0x277D84F90]);
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
  }

  v0[2] = v27;
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  v0[6] = 0;
  v28 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource__selectedWorkflowIds[0];
  v54 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687C8, &qword_274A129B0);
  sub_2749FA8C4();
  (*(v23 + 32))(v0 + v28, v0, v21);
  v29 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource__isEditing;
  LOBYTE(v54) = 0;
  sub_2749FA8C4();
  (*(v19 + 32))(v2 + v29, v1, v43);
  v30 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sections) = MEMORY[0x277D84F90];
  v31 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource__sortedSections;
  type metadata accessor for ShortcutsLibrarySection(0);
  sub_2749F9594();
  v32 = v45;
  (*(v12 + 16))(v44, v17, v45);
  v33 = v46;
  OUTLINED_FUNCTION_43_0();
  sub_2749FA8C4();
  (*(v12 + 8))(v17, v32);
  (*(v47 + 32))(v2 + v31, v33, v48);
  *(v2 + OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sortOrderComparators) = v30;
  v34 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_onSortComparatorChanged;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687D8, &qword_274A129B8);
  OUTLINED_FUNCTION_132(v35);
  *(v2 + v34) = sub_2749FA884();
  *(v2 + OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_observeChanges) = 0;
  v36 = v49;
  if (v49 == 2)
  {
    v37 = [objc_opt_self() standardUserDefaults];
    v38 = sub_2749FCD64();
    v39 = [v37 stringForKey_];

    if (v39)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

      v40._countAndFlagsBits = OUTLINED_FUNCTION_66_2();
      v41.value = LibraryLayoutMode.init(rawValue:)(v40).value;
      v36 = (v41.value == WorkflowUI_LibraryLayoutMode_unknownDefault) | v41.value;
    }

    else
    {
      v36 = 1;
    }
  }

  OUTLINED_FUNCTION_5_4(v2 + OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource__layoutMode);
  v53 = v36 & 1;
  sub_2749FA8C4();
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_canChangeLayoutModes) = v50 & 1;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_shortcutMoveService) = v51;
  v2[3] = v52;
  OUTLINED_FUNCTION_46();
}

uint64_t OUTLINED_FUNCTION_83_0(uint64_t a1)
{
  *v1 = a1;
  *(v1 + 8) = 1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_83_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_83_2()
{
  v2 = *(v0 - 960);
  v3 = *(v0 - 968);

  return sub_27471F8A4(v2, v3);
}

uint64_t sub_27472D938()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_1();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27472D9A8@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_40_3();
  result = (*(v2 + 344))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27472DA44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_1();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27472DAB4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_40_3();
  result = (*(v2 + 296))();
  *a1 = result;
  return result;
}

uint64_t sub_27472DB30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();
}

uint64_t sub_27472DC14(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_87_2();
  sub_2749FA8D4();
  return swift_endAccess();
}

_BYTE *storeEnumTagSinglePayload for LibraryLayoutMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27472DD54);
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

uint64_t getEnumTagSinglePayload for SidebarStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t LibraryLayoutMode.symbolName.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C75622E7473696CLL;
  }
}

void LibraryEditingBehavior.actions.getter()
{
  OUTLINED_FUNCTION_48();
  type metadata accessor for LibraryEditingBehavior(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  v3 = (v2 - v1);
  OUTLINED_FUNCTION_4_4();
  v4 = OUTLINED_FUNCTION_32_1();
  sub_274729CBC(v4, v5);
  v6 = OUTLINED_FUNCTION_135_0();
  if (v6 == 1)
  {
    v7 = 0;
    v8 = *v3;
    v9 = *(*v3 + 16);
    v10 = *v3 + 40;
    v11 = MEMORY[0x277D84F90];
LABEL_6:
    v12 = (v10 + 16 * v7);
    while (v9 != v7)
    {
      if (v7 >= *(v8 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      v13 = v12 + 16;
      ++v7;
      v14 = *v12;
      v12 += 16;
      if (!v14)
      {
        v15 = *(v13 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_2();
          sub_274763A80();
          v11 = v17;
        }

        v16 = *(v11 + 16);
        if (v16 >= *(v11 + 24) >> 1)
        {
          sub_274763A80();
          v11 = v18;
        }

        *(v11 + 16) = v16 + 1;
        *(v11 + 8 * v16 + 32) = v15;
        goto LABEL_6;
      }
    }

    v19 = 0;
    v20 = *(v11 + 16);
    v21 = MEMORY[0x277D84F90];
    while (v20 != v19)
    {
      if (v19 >= *(v11 + 16))
      {
        goto LABEL_33;
      }

      v22 = *(v11 + 8 * v19 + 32);
      v23 = *(v22 + 16);
      v24 = *(v21 + 16);
      if (__OFADD__(v24, v23))
      {
        goto LABEL_34;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v23 > *(v21 + 24) >> 1)
      {
        sub_2747281B4();
        v21 = v25;
      }

      if (*(v22 + 16))
      {
        if ((*(v21 + 24) >> 1) - *(v21 + 16) < v23)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (v23)
        {
          v26 = *(v21 + 16);
          v27 = __OFADD__(v26, v23);
          v28 = v26 + v23;
          if (v27)
          {
            goto LABEL_37;
          }

          *(v21 + 16) = v28;
        }
      }

      else
      {

        if (v23)
        {
          goto LABEL_35;
        }
      }

      ++v19;
    }
  }

  else if (v6)
  {
    sub_27472AFE4();
  }

  else if (v3[8])
  {
    sub_27478A020(*v3, v3[8]);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t OUTLINED_FUNCTION_67_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return sub_274772B38(&STACK[0x258], &a33);
}

void OUTLINED_FUNCTION_67_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_67_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_60_2()
{
}

id OUTLINED_FUNCTION_60_3()
{

  return [v0 (v1 + 2808)];
}

uint64_t LibraryEditingAction.title.getter()
{
  v1 = *(v0 + 24);
  switch(v1)
  {
    case 0uLL:
      return OUTLINED_FUNCTION_44();
    case 1uLL:
      sub_2749FCE14("Move", 4);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 != -1)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    case 2uLL:
      sub_2749FCE14("Duplicate", 9);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    case 3uLL:
      sub_2749FCE14("Share", 5);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    case 4uLL:
      v2 = sub_2749FCE14("Shortcut Details title", 22);
      sub_2749FCE14("Details", 7);
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
      }

      v3 = qword_28159E448;
      OUTLINED_FUNCTION_45();
      sub_2749FCD64();
      OUTLINED_FUNCTION_134_0();
      OUTLINED_FUNCTION_70_1();
      v4 = sub_2749FCD64();

      v5 = [v3 localizedStringForKey:v2 value:v4 table:0];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_84();

      return OUTLINED_FUNCTION_44();
    case 5uLL:
      sub_2749FCE14("Delete", 6);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    case 6uLL:
      sub_2749FCE14("Run", 3);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    case 7uLL:
      sub_2749FCE14("Stop", 4);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    case 8uLL:
      sub_2749FCE14("Edit Name and Icon", 18);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    case 9uLL:
      sub_2749FCE14("Edit", 4);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    case 0xAuLL:
      sub_2749FCE14("Rename", 6);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    case 0xBuLL:
      sub_2749FCE14("Add to Dock", 11);
      OUTLINED_FUNCTION_34_1();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_24;
      }

LABEL_31:
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
LABEL_24:
      OUTLINED_FUNCTION_32_1();
      v6 = sub_2749FCD64();
      OUTLINED_FUNCTION_32_1();
      sub_2749FCD64();
      OUTLINED_FUNCTION_78();

      v8 = OUTLINED_FUNCTION_20_0(v7, sel_localizedStringForKey_value_table_);

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_84();

      break;
    default:
      if (!v1[1])
      {
        sub_2749FCE14("Remove", 6);
        OUTLINED_FUNCTION_34_1();
        if (qword_28159E3A8 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
        }

        v10 = qword_28159E448;
        OUTLINED_FUNCTION_32_1();
        v11 = sub_2749FCD64();
        OUTLINED_FUNCTION_32_1();
        sub_2749FCD64();
        OUTLINED_FUNCTION_78();

        v12 = [v10 localizedStringForKey:v11 value:v1 table:0];

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_84();
      }

      break;
  }

  return OUTLINED_FUNCTION_44();
}

double sub_27472E8C4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t static LibraryEditingAction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  v66[0] = *a1;
  v66[1] = v2;
  v66[2] = v4;
  v66[3] = v5;
  v66[4] = v6;
  v66[5] = v7;
  v66[6] = v9;
  v66[7] = v8;
  v66[8] = v11;
  v66[9] = v10;
  v66[10] = v13;
  v66[11] = v12;
  switch(v5)
  {
    case 0uLL:
      if (v10)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 1uLL:
      if (v10 != 1)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2uLL:
      if (v10 != 2)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3uLL:
      if (v10 != 3)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 4uLL:
      if (v10 != 4)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 5uLL:
      if (v10 != 5)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 6uLL:
      if (v10 != 6)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 7uLL:
      if (v10 != 7)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 8uLL:
      if (v10 == 8)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    case 9uLL:
      if (v10 != 9)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 0xAuLL:
      if (v10 != 10)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 0xBuLL:
      if (v10 != 11)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    default:
      if (v10 >= 0xC)
      {
        v65 = v6;
        if (v2)
        {
          if (!v8)
          {
            goto LABEL_53;
          }

          if (v3 != v9 || v2 != v8)
          {
            OUTLINED_FUNCTION_43_0();
            v62 = v29;
            v30 = sub_2749FDCC4();
            v4 = v62;
            if ((v30 & 1) == 0)
            {
              goto LABEL_53;
            }
          }
        }

        else if (v8)
        {
          goto LABEL_53;
        }

        v31 = v4 == v11 && v5 == v10;
        if (v31 || (v63 = v4, OUTLINED_FUNCTION_67_1(), v32 = sub_2749FDCC4(), v4 = v63, (v32 & 1) != 0))
        {
          if (v7)
          {
            if (!v12)
            {
              v40 = OUTLINED_FUNCTION_25_2();
              v45 = 0;
              goto LABEL_54;
            }

            v64 = v4;
            if (v65 == v13 && v7 == v12)
            {
              OUTLINED_FUNCTION_45();
              OUTLINED_FUNCTION_67_1();
              v54 = v53;
              sub_27472EC68(v55, v56, v57, v58, v53, v7);
              v59 = OUTLINED_FUNCTION_43_0();
              sub_27472EC68(v59, v60, v64, v5, v54, v7);
LABEL_25:
              sub_27478C584(v66, &unk_2809680C0);
            }

            else
            {
              v61 = sub_2749FDCC4();
              OUTLINED_FUNCTION_45();
              OUTLINED_FUNCTION_67_1();
              sub_27472EC68(v34, v35, v36, v37, v13, v12);
              v38 = OUTLINED_FUNCTION_43_0();
              sub_27472EC68(v38, v39, v64, v5, v65, v7);
              sub_27478C584(v66, &unk_2809680C0);
              if ((v61 & 1) == 0)
              {
                return 0;
              }
            }
          }

          else
          {
            v46 = OUTLINED_FUNCTION_25_2();
            sub_27472EC68(v46, v47, v48, v49, v50, v12);
            v51 = OUTLINED_FUNCTION_43_0();
            sub_27472EC68(v51, v52, v8, v5, v65, 0);

            sub_27478C584(v66, &unk_2809680C0);
            if (v12)
            {

              return 0;
            }
          }

          return 1;
        }

LABEL_53:
        v40 = OUTLINED_FUNCTION_25_2();
        v45 = v12;
LABEL_54:
        sub_27472EC68(v40, v41, v42, v43, v44, v45);
        v23 = OUTLINED_FUNCTION_43_0();
        v25 = v8;
        v26 = v5;
        v27 = v65;
        goto LABEL_29;
      }

LABEL_28:
      OUTLINED_FUNCTION_45();
      v16 = v15;
      OUTLINED_FUNCTION_67_1();
      v18 = v17;
      sub_27472EC68(v19, v20, v21, v22, v13, v12);
      v23 = OUTLINED_FUNCTION_43_0();
      v25 = v16;
      v26 = v5;
      v27 = v18;
LABEL_29:
      sub_27472EC68(v23, v24, v25, v26, v27, v7);
      sub_27478C584(v66, &unk_2809680C0);
      return 0;
  }
}

void sub_27472EC68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 0xC)
  {
  }
}

uint64_t sub_27472ECBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t LibraryEditingAction.symbolName.getter()
{
  switch(*(v0 + 24))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
      return OUTLINED_FUNCTION_32_1();
    default:

      break;
  }

  return OUTLINED_FUNCTION_32_1();
}

id LibraryConfiguration.workflowCreationBehavior.getter()
{
  v0 = OUTLINED_FUNCTION_69_0();
  v1 = type metadata accessor for LibraryConfiguration(v0);
  v2 = OUTLINED_FUNCTION_91_0(*(v1 + 24));

  return sub_27472EEFC(v2, v3);
}

id sub_27472EEFC(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_27472EF10(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t static LibraryWorkflowCreationBehavior.== infix(_:_:)()
{
  OUTLINED_FUNCTION_109_0();
  if (v3)
  {
    if (v3 == 1)
    {
      if (v1 == 1)
      {
        v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v6 = v5;
        if (v4 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v6 == v7)
        {
          v9 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_89_0();
          v9 = sub_2749FDCC4();
        }

        v25 = OUTLINED_FUNCTION_78_0();
        sub_27472EEFC(v25, v26);
        v27 = OUTLINED_FUNCTION_92();
        sub_27472EEFC(v27, v28);
        v29 = OUTLINED_FUNCTION_78_0();
        sub_27472EEFC(v29, v30);
        v31 = OUTLINED_FUNCTION_92();
        sub_27472EEFC(v31, v32);

        v33 = OUTLINED_FUNCTION_92();
        sub_27472F124(v33, v34);
        v35 = OUTLINED_FUNCTION_78_0();
        sub_27472F124(v35, v36);
        v37 = OUTLINED_FUNCTION_78_0();
        sub_27472F124(v37, v38);
        v14 = OUTLINED_FUNCTION_92();
        goto LABEL_25;
      }
    }

    else if (v2)
    {
      if (v1 == 2 && v0 == 1)
      {
        v9 = 1;
        sub_27472F124(1, 2u);
        v14 = 1;
        v15 = 2;
LABEL_25:
        sub_27472F124(v14, v15);
        return v9 & 1;
      }
    }

    else if (v1 == 2 && v0 == 0)
    {
      sub_27472F124(0, 2u);
      sub_27472F124(0, 2u);
      v9 = 1;
      return v9 & 1;
    }
  }

  else if (!v1)
  {
    sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
    v10 = OUTLINED_FUNCTION_78();
    sub_27472EEFC(v10, 0);
    sub_27472EEFC(v2, 0);
    OUTLINED_FUNCTION_45();
    v11 = sub_2749FD604();
    sub_27472F124(v2, 0);
    sub_27472F124(v0, 0);
    return v11 & 1;
  }

  v17 = OUTLINED_FUNCTION_44();
  sub_27472EEFC(v17, v18);
  v19 = OUTLINED_FUNCTION_66_2();
  sub_27472EEFC(v19, v20);
  v21 = OUTLINED_FUNCTION_66_2();
  sub_27472F124(v21, v22);
  v23 = OUTLINED_FUNCTION_44();
  sub_27472F124(v23, v24);
  v9 = 0;
  return v9 & 1;
}

uint64_t OUTLINED_FUNCTION_104_0()
{

  return swift_allocObject();
}

void sub_27472F124(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t LibraryConfiguration.title.getter()
{
  type metadata accessor for LibraryConfiguration(0);

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_27472F1B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27472F204(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_27472F258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

Swift::Void __swiftcall LibraryView.reload(animated:)(Swift::Bool animated)
{
  v3 = v2;
  v4 = OUTLINED_FUNCTION_108(animated, v1);
  v36 = v5;
  v37 = v5(v4);
  v6 = *(v37 + 16);
  if (v6)
  {
    v7 = *(v3 + 8);
    v8 = (v37 + 40);
    do
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 48);
      swift_unknownObjectRetain();
      v12 = swift_unknownObjectRetain();
      v11(v12, v7, ObjectType, v9);
      swift_unknownObjectRelease();
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  v13 = OUTLINED_FUNCTION_24_0();
  v38 = v14(v13);
  v15 = OUTLINED_FUNCTION_24_0();
  v16 = v36(v15);
  v17 = 0;
  v18 = *(v16 + 16);
  v19 = (v16 + 40);
  v20 = MEMORY[0x277D84F90];
  while (v18 != v17)
  {
    if (v17 >= *(v16 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v21 = *v19;
    swift_getObjectType();
    v22 = *(v21 + 8);
    swift_unknownObjectRetain();
    v23 = OUTLINED_FUNCTION_99();
    v24 = v22(v23);
    swift_unknownObjectRelease();
    v25 = *(v24 + 16);
    v26 = *(v20 + 16);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v27 > *(v20 + 24) >> 1)
    {
      if (v26 <= v27)
      {
        v29 = v26 + v25;
      }

      else
      {
        v29 = v26;
      }

      sub_2747308B0(isUniquelyReferenced_nonNull_native, v29, 1, v20);
      v20 = v30;
    }

    if (*(v24 + 16))
    {
      v31 = (*(v20 + 24) >> 1) - *(v20 + 16);
      type metadata accessor for LibrarySectionOptions(0);
      if (v31 < v25)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v32 = *(v20 + 16);
        v33 = __OFADD__(v32, v25);
        v34 = v32 + v25;
        if (v33)
        {
          goto LABEL_28;
        }

        *(v20 + 16) = v34;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_26;
      }
    }

    v19 += 2;
    ++v17;
  }

  (*(*v38 + 248))(v20, animated);
}

uint64_t sub_27472F75C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  OUTLINED_FUNCTION_32();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void sub_27472F7CC()
{
  OUTLINED_FUNCTION_48();
  v3 = v0;
  v86 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v88 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v85 = v7 - v6;
  v8 = OUTLINED_FUNCTION_57_0();
  v97 = type metadata accessor for LibrarySectionOptions.Header(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_4();
  v95 = type metadata accessor for RootNavigationDestination(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v94 = (v12 - v11);
  v13 = OUTLINED_FUNCTION_57_0();
  v14 = type metadata accessor for LibrarySectionOptions(v13);
  OUTLINED_FUNCTION_43();
  v96 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39();
  v87 = v17 - v18;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_54_1();
  MEMORY[0x28223BE20](v20);
  v82 = &v81 - v21;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v22);
  v81 = &v81 - v23;
  v24 = [*(v0 + OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_collectionsResult) descriptors];
  sub_27471CF08(0, &qword_28159E490, 0x277D7A1C0);
  v25 = sub_2749FCF84();

  v26 = sub_27472D918(v25);
  p_opt_class_meths = &OBJC_PROTOCOL___UIGestureRecognizerDelegate.opt_class_meths;
  v83 = v0;
  if (v26)
  {
    v28 = v26;
    v99 = MEMORY[0x277D84F90];
    sub_274730188();
    if ((v28 & 0x8000000000000000) == 0)
    {
      v29 = v99;
      v93 = v25 & 0xC000000000000001;
      v30 = type metadata accessor for ShortcutsEmptyStateContent(0);
      v31 = 0;
      v89 = *(v0 + OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_database);
      v90 = v30;
      v84 = v25 & 0xFFFFFFFFFFFFFF8;
      v91 = v28;
      v92 = v25;
      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v93)
        {
          v33 = MEMORY[0x277C5F6D0](v31, v25);
        }

        else
        {
          if (v31 >= *(v84 + 16))
          {
            goto LABEL_27;
          }

          v33 = *(v25 + 8 * v31 + 32);
        }

        v34 = v33;
        v35 = [v33 name];
        v36 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v38 = v37;

        v39 = sub_2747301E0(v34);
        v41 = 0x7265646C6F66;
        if (v40)
        {
          v41 = v39;
        }

        *v1 = v36;
        v1[1] = v38;
        v42 = 0xE600000000000000;
        if (v40)
        {
          v42 = v40;
        }

        v1[2] = v41;
        v1[3] = v42;
        swift_storeEnumTagMultiPayload();
        v43 = v2 + v14[7];
        v44 = v34;
        *v43 = [v89 sortedVisibleWorkflowsInCollection_];
        *(v43 + 8) = 0;
        type metadata accessor for LibrarySectionOptions.SectionType(0);
        OUTLINED_FUNCTION_3();
        swift_storeEnumTagMultiPayload();
        v45 = v94;
        *v94 = v44;
        swift_storeEnumTagMultiPayload();
        v46 = v44;
        v47 = static ShortcutsEmptyStateContent.emptyStateContent(for:)(v45);
        OUTLINED_FUNCTION_10_2();
        sub_27472AFE4();
        OUTLINED_FUNCTION_14_2();
        sub_27472A55C(v1, v2);
        *(v2 + v14[5]) = 1;
        *(v2 + v14[6]) = v34;
        v48 = v2 + v14[8];
        *v48 = v34;
        *(v48 + 8) = 0;
        *(v2 + v14[9]) = v47;
        sub_2749F9154();

        v99 = v29;
        v50 = *(v29 + 16);
        v49 = *(v29 + 24);
        if (v50 >= v49 >> 1)
        {
          OUTLINED_FUNCTION_8(v49);
          sub_274730188();
          v29 = v99;
        }

        *(v29 + 16) = v50 + 1;
        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_2_9();
        sub_27472A55C(v2, v51);
        ++v31;
        v25 = v92;
        if (v32 == v91)
        {

          v3 = v83;
          p_opt_class_meths = (&OBJC_PROTOCOL___UIGestureRecognizerDelegate + 48);
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    v52 = v81;
    sub_27473054C(&OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_delegate);
    v53 = v52 + v14[7];
    *v53 = [*(p_opt_class_meths[29] + v3) sortedVisibleWorkflowsInCollection_];
    *(v53 + 8) = 1;
    v54 = type metadata accessor for LibrarySectionOptions.SectionType(0);
    OUTLINED_FUNCTION_24_0();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ShortcutsEmptyStateContent(0);
    v55 = v94;
    swift_storeEnumTagMultiPayload();
    v56 = static ShortcutsEmptyStateContent.emptyStateContent(for:)(v55);
    sub_27472AFE4();
    *(v52 + v14[5]) = 1;
    *(v52 + v14[6]) = 0;
    OUTLINED_FUNCTION_119_0(v52 + v14[8]);
    *(v52 + v57) = v56;
    sub_2749F9154();
    v58 = v82;
    swift_storeEnumTagMultiPayload();
    v93 = v54;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v59 = static ShortcutsEmptyStateContent.emptyStateContent(for:)(v55);
    sub_27472AFE4();
    *(v58 + v14[5]) = 1;
    *(v58 + v14[6]) = 0;
    OUTLINED_FUNCTION_119_0(v58 + v14[8]);
    *(v58 + v60) = v59;
    sub_2749F9154();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B70, &qword_274A0FD58);
    v61 = *(v96 + 72);
    v62 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_274A0F620;
    v95 = v62;
    v64 = v63 + v62;
    sub_274729CBC(v58, v64);
    v96 = v61;
    sub_274729CBC(v52, v64 + v61);
    v99 = v63;
    OUTLINED_FUNCTION_41_3();
    sub_2747307B4();
    v65 = sub_274730918();
    if (v65)
    {
      v66 = v65;
      v67 = *(v65 + 16);
      if (v67)
      {
        v98 = MEMORY[0x277D84F90];
        sub_274730188();
        v68 = v98;
        v69 = v87;
        v70 = *(v88 + 16);
        OUTLINED_FUNCTION_71();
        v72 = v66 + v71;
        v94 = *(v73 + 56);
        v88 = v73;
        v91 = v66;
        v92 = (v73 - 8);
        v74 = v85;
        do
        {
          v75 = v86;
          v70(v74, v72, v86);
          v70(v69, v74, v75);
          swift_storeEnumTagMultiPayload();
          v76 = v69 + v14[7];
          v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680D0, &qword_274A10BA8) + 48);
          v70(v76, v74, v75);
          *(v76 + v77) = 0;
          v69 = v87;
          swift_storeEnumTagMultiPayload();
          *(v69 + v14[5]) = 1;
          *(v69 + v14[6]) = 0;
          OUTLINED_FUNCTION_24_3(v69 + v14[8]);
          *(v69 + v14[9]) = 0;
          sub_2749F9154();
          (*v92)(v74, v75);
          v98 = v68;
          v79 = *(v68 + 16);
          v78 = *(v68 + 24);
          if (v79 >= v78 >> 1)
          {
            OUTLINED_FUNCTION_8(v78);
            sub_274730188();
            v69 = v87;
            v68 = v98;
          }

          *(v68 + 16) = v79 + 1;
          OUTLINED_FUNCTION_2_9();
          sub_27472A55C(v69, v80);
          v72 += v94;
          --v67;
        }

        while (v67);
      }

      OUTLINED_FUNCTION_41_3();
      sub_2747307B4();
    }

    sub_27472AFE4();
    sub_27472AFE4();
    OUTLINED_FUNCTION_46();
  }
}

id OUTLINED_FUNCTION_44_3()
{

  return [v0 (v1 + 1016)];
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return sub_2749FA3D4();
}

uint64_t OUTLINED_FUNCTION_44_9(uint64_t a1, uint64_t a2)
{

  return sub_2749FDC04();
}

uint64_t sub_2747301E0(void *a1)
{
  v1 = [a1 systemIconName];
  if (v1)
  {
    v2 = v1;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_84();
  }

  return OUTLINED_FUNCTION_44();
}

id OUTLINED_FUNCTION_12_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void *OUTLINED_FUNCTION_12_7(uint64_t a1, ...)
{

  return sub_2749FDDF4();
}

id OUTLINED_FUNCTION_12_15()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_12_17(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_12_19()
{
  result = v1;
  *(v2 - 200) = *(v0 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return sub_2749FB8D4();
}

id OUTLINED_FUNCTION_12_23()
{

  return sub_274832BA4(v2, (v0 + 288), v1, v3);
}

uint64_t OUTLINED_FUNCTION_12_28(uint64_t a1, uint64_t a2)
{

  return sub_2749FDC04();
}

uint64_t sub_2747304D4(void *a1)
{
  v2 = v1 + *a1;
  OUTLINED_FUNCTION_72_1(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_27473054C(void *a1)
{
  sub_2747304D4(a1);
  OUTLINED_FUNCTION_61();

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_68_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_66_3(uint64_t a1, uint64_t a2)
{

  return sub_2749FDB94();
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

uint64_t sub_274730740(uint64_t a1, uint64_t a2)
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749FDDF4();
  sub_2749FCE24();
  v2 = sub_2749FDE44();

  return v2;
}

void sub_2747307B4()
{
  OUTLINED_FUNCTION_49_2();
  v4 = OUTLINED_FUNCTION_9_2(v3);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_27472A31C(v4, 1, v5);
  v9 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v8(0);
  if (v10 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v9;
    OUTLINED_FUNCTION_50_0();
    return;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v0);
  v12 = v11 + v0;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_274730918()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup__autoShortcutApps);
  if (!v1)
  {
    if (*(v0 + OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_autoShortcutsDataSource))
    {
      v1 = sub_2749F9824();
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

void sub_27473097C()
{
  v1 = v0;
  v2 = type metadata accessor for LibrarySectionOptions.SectionType(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for LibrarySectionOptions(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84FA0];
  v53 = MEMORY[0x277D84FA0];
  v10 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sections;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v5 + 28);
    v14 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);

    do
    {
      sub_2747310DC(v14, v8);
      sub_2747310DC(&v8[v13], v4);
      sub_274731134();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_274731134();
      }

      else
      {
        sub_274731184(v59, *v4);
      }

      v14 += v15;
      --v12;
    }

    while (v12);

    v9 = v53;
  }

  v16 = *(v1 + 16);
  *(v1 + 16) = v9;
  v17 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_observeChanges;
  swift_beginAccess();
  if (*(v1 + v17) == 1)
  {
    swift_bridgeObjectRetain_n();
    v50 = v16;
    v18 = sub_274962ECC(v16, v9);
    v19 = v18;
    if ((v18 & 0xC000000000000001) != 0)
    {
      sub_2749FD804();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
      sub_27472ABB4(&qword_2809688C0, &qword_280967A10, &qword_274A0FC10);
      sub_2749FD174();
      v19 = v54;
      v20 = v55;
      v21 = v56;
      v22 = v57;
      v23 = v58;
    }

    else
    {
      v22 = 0;
      v24 = -1 << *(v18 + 32);
      v20 = (v18 + 56);
      v21 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v23 = v26 & *(v18 + 56);
    }

    v49 = v21;
    v27 = (v21 + 64) >> 6;
    if (v19 < 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v28 = v22;
      v29 = v23;
      v30 = v22;
      if (!v23)
      {
        break;
      }

LABEL_21:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v19 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
      if (!v32)
      {
LABEL_27:
        sub_274730F8C(v19);
        v34 = sub_274962ECC(v9, v50);

        if ((v34 & 0xC000000000000001) != 0)
        {
          sub_2749FD804();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
          sub_27472ABB4(&qword_2809688C0, &qword_280967A10, &qword_274A0FC10);
          sub_2749FD174();
          v34 = v59[0];
          v35 = v59[1];
          v36 = v59[2];
          v37 = v59[3];
          v38 = v59[4];
        }

        else
        {
          v37 = 0;
          v39 = -1 << *(v34 + 32);
          v35 = (v34 + 56);
          v36 = ~v39;
          v40 = -v39;
          if (v40 < 64)
          {
            v41 = ~(-1 << v40);
          }

          else
          {
            v41 = -1;
          }

          v38 = (v41 & *(v34 + 56));
        }

        v50 = v36;
        v42 = (v36 + 64) >> 6;
        if (v34 < 0)
        {
          goto LABEL_40;
        }

        while (1)
        {
          v43 = v37;
          v44 = v38;
          v45 = v37;
          if (!v38)
          {
            break;
          }

LABEL_38:
          v46 = (v44 - 1) & v44;
          v47 = *(*(v34 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));
          if (!v47)
          {
LABEL_44:
            sub_274730F8C(v34);
            return;
          }

          while (1)
          {
            [v47 unregisterObserver_];

            v37 = v45;
            v38 = v46;
            if ((v34 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_40:
            v48 = sub_2749FD874();
            if (v48)
            {
              v51 = v48;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
              swift_dynamicCast();
              v47 = v52;
              v45 = v37;
              v46 = v38;
              if (v52)
              {
                continue;
              }
            }

            goto LABEL_44;
          }
        }

        while (1)
        {
          v45 = (v43 + 1);
          if (__OFADD__(v43, 1))
          {
            goto LABEL_46;
          }

          if (v45 >= v42)
          {
            goto LABEL_44;
          }

          v44 = v35[v45];
          ++v43;
          if (v44)
          {
            goto LABEL_38;
          }
        }
      }

      while (1)
      {
        [v32 registerObserver_];

        v22 = v30;
        v23 = v31;
        if ((v19 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_23:
        v33 = sub_2749FD874();
        if (v33)
        {
          v52 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
          swift_dynamicCast();
          v32 = v59[0];
          v30 = v22;
          v31 = v23;
          if (v59[0])
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        goto LABEL_27;
      }

      v29 = v20[v30];
      ++v28;
      if (v29)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_274730F94(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sections;
  OUTLINED_FUNCTION_42_1(v2 + OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sections, a2);
  *(v2 + v5) = a1;

  sub_27473097C();
  OUTLINED_FUNCTION_86();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;

  sub_2749F9F14();
}

uint64_t sub_274731070()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747310A4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747310DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_59_0();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

uint64_t sub_274731134()
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  OUTLINED_FUNCTION_1_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return swift_arrayInitWithCopy();
}

void sub_27473137C()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_19_1(v4, v5, v6);
  OUTLINED_FUNCTION_26();
  sub_2749FD8F4();
  OUTLINED_FUNCTION_127();
  if (v7)
  {
    v19 = v0;
    v8 = 0;
    OUTLINED_FUNCTION_16_3();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_33_2();
LABEL_9:
        v13 = *(*(v1 + 48) + 8 * (v9 | (v8 << 6)));
        sub_2749FD5F4();
        OUTLINED_FUNCTION_22_1();
        if (v14)
        {
          break;
        }

        OUTLINED_FUNCTION_31_1();
LABEL_17:
        OUTLINED_FUNCTION_18_5(v15);
        *(v18 + 8 * v17) = v13;
        OUTLINED_FUNCTION_40_1();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_30_1();
      while (1)
      {
        OUTLINED_FUNCTION_133();
        if (v14)
        {
          if (v16)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_83();
        if (!v14)
        {
          OUTLINED_FUNCTION_29_0();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v10 = v8;
      while (1)
      {
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v8 >= v3)
        {

          v0 = v19;
          goto LABEL_21;
        }

        ++v10;
        if (*(v1 + 56 + 8 * v8))
        {
          OUTLINED_FUNCTION_21();
          v0 = (v12 & v11);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v0 = v2;
    OUTLINED_FUNCTION_56_1();
  }
}

void sub_2747314A0(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274731854();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_27473137C();
LABEL_8:
      v8 = *v3;
      v9 = sub_2749FD5F4();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_2749FD604();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_27476A8E4();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_2749FDD44();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

void *OUTLINED_FUNCTION_24_5(void *a1)
{

  return memcpy(a1, (v1 + 1536), 0xBAuLL);
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_2747B24E0(va1, va);
}

uint64_t OUTLINED_FUNCTION_24_8()
{

  return sub_2749FDAE4();
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return sub_2749FCD64();
}

uint64_t OUTLINED_FUNCTION_24_12()
{
}

void OUTLINED_FUNCTION_24_13(char *a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *(v1 - 104) = v2;
  *(v1 - 96) = v3;
}

void OUTLINED_FUNCTION_24_15()
{
}

uint64_t OUTLINED_FUNCTION_24_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2749FDC34();
}

uint64_t OUTLINED_FUNCTION_24_19@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = v2;
  a1[4] = 0xD000000000000043;
  a1[5] = a2 | 0x8000000000000000;

  return sub_2749FD8A4();
}

double OUTLINED_FUNCTION_120_2()
{
  result = v1 + v2;
  *(v0 - 616) = *(v0 - 616) + v1 + v2;
  return result;
}

void sub_274731854()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_19_1(v3, v4, v5);
  OUTLINED_FUNCTION_26();
  sub_2749FD8F4();
  OUTLINED_FUNCTION_127();
  if (!v6)
  {
LABEL_28:

    *v0 = v2;
    OUTLINED_FUNCTION_46();
    return;
  }

  v7 = 0;
  v8 = (v1 + 56);
  v9 = 1 << *(v1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v1 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v2 + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_21();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_54_0();
    if (v25 >= 64)
    {
      OUTLINED_FUNCTION_140(v25);
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
      *v8 = v26;
    }

    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_107_0();
LABEL_12:
    v18 = *(*(v1 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = sub_2749FD5F4() & ~(-1 << *(v2 + 32));
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_31_1();
LABEL_22:
    *(v13 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v2 + 48) + 8 * v20) = v18;
    OUTLINED_FUNCTION_40_1();
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_30_1();
  while (1)
  {
    OUTLINED_FUNCTION_133();
    if (v24)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v13 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_29_0();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}