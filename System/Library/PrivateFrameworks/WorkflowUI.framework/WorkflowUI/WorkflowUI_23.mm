uint64_t sub_27494F680(uint64_t a1)
{
  OUTLINED_FUNCTION_99_0(a1);
  sub_2749FCE24();

  return sub_2749FDE44();
}

uint64_t sub_27494F6E0(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_99_0(a1);
  OUTLINED_FUNCTION_14_21(v1);
  return sub_2749FDE44();
}

uint64_t sub_27494F720(uint64_t a1)
{
  OUTLINED_FUNCTION_99_0(a1);
  MEMORY[0x277C5FB60](a1);
  return sub_2749FDE44();
}

uint64_t sub_27494F760(uint64_t a1, char a2)
{
  sub_2749FDDF4();
  sub_2749FCE24();

  return sub_2749FDE44();
}

uint64_t sub_27494F7C4(uint64_t a1, char a2)
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a2 & 1);
  return sub_2749FDE44();
}

uint64_t sub_27494F808(uint64_t a1, char a2)
{
  sub_2749FDDF4();
  sub_2749FCE24();

  return sub_2749FDE44();
}

uint64_t sub_27494F884(uint64_t a1)
{
  v1 = sub_2749FDDF4();
  OUTLINED_FUNCTION_14_21(v1);
  return sub_2749FDE44();
}

uint64_t sub_27494F8BC(uint64_t a1, uint64_t a2)
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a2);
  return sub_2749FDE44();
}

double sub_27494F900@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_274797CC0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_274797FD4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_27494F964(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_274797D38();
    if (v3)
    {
      OUTLINED_FUNCTION_43_7(v2);
    }
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_27494F9A8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_274797D7C();
    if (v3)
    {
      OUTLINED_FUNCTION_43_7(v2);
    }
  }

  return OUTLINED_FUNCTION_44();
}

void *sub_27494F9EC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_274797E40();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_27494FA4C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_274797F04(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_274797FD4(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_27494FAB0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2747985F4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void *sub_27494FAF8(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3(a1 & 1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a2 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void *sub_27494FB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_274797CC0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void sub_27494FB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_274797CC0(a1, a2);
    if (v3)
    {
    }
  }
}

uint64_t sub_27494FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_274797CC0(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t SmartShortcutPickerActionTemplate.asSystemAction(with:sectionIdentifier:iconOverride:colorScheme:)()
{
  OUTLINED_FUNCTION_35_0();
  *(v3 + 1064) = v4;
  *(v3 + 1056) = v5;
  *(v3 + 1048) = v6;
  v7 = sub_2749FA4E4();
  *(v3 + 1072) = v7;
  OUTLINED_FUNCTION_27(v7);
  *(v3 + 1080) = v8;
  *(v3 + 1088) = OUTLINED_FUNCTION_45_8();
  memcpy((v3 + 368), v2, 0x81uLL);
  v9 = *v0;
  *(v3 + 185) = *(v0 + 16);
  v10 = *v1;
  v11 = v1[1];
  *(v3 + 1096) = v9;
  *(v3 + 1112) = v10;
  v12 = v1[2];
  *(v3 + 1128) = v11;
  *(v3 + 1144) = v12;
  *(v3 + 186) = *(v1 + 48);
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_27494FD5C()
{
  OUTLINED_FUNCTION_29_14();
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  if (*(v0 + 186))
  {
    v3 = (v0 + 1120);
  }

  else
  {
    v3 = (v0 + 1144);
  }

  v4 = *v3;
  if (*(v0 + 186))
  {
    v5 = (v0 + 1128);
  }

  else
  {
    v5 = (v0 + 1152);
  }

  v6 = *v5;
  v7 = *(v0 + 185);
  memcpy((v0 + 16), *(v0 + 1048), 0x81uLL);
  *(v0 + 152) = v4;
  *(v0 + 160) = v6;
  *(v0 + 168) = v2;
  *(v0 + 176) = v1;
  *(v0 + 184) = v7;
  sub_2749F8F54();
  swift_allocObject();
  sub_274772B38(v0 + 368, v0 + 504);

  v8 = OUTLINED_FUNCTION_44();
  sub_27477D408(v8, v9, v7);
  *(v0 + 1160) = sub_2749F8F44();
  memcpy((v0 + 192), (v0 + 16), 0xA9uLL);
  sub_27477C9A8();
  *(v0 + 1168) = sub_2749F8F34();
  *(v0 + 1176) = v10;
  v11 = *(v0 + 1056);
  if (v11)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_3();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = [v12 symbolName];
      v11 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v15 = v14;

      goto LABEL_12;
    }

    v11 = 0;
  }

  v15 = 0;
LABEL_12:
  *(v0 + 1192) = v15;
  *(v0 + 1184) = v11;
  swift_allocObject();
  *(v0 + 1200) = sub_2749F8F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30, &unk_274A133E0);
  sub_2747EC040();
  *(v0 + 1208) = sub_2749F8F34();
  *(v0 + 1216) = v16;
  v17 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v19 = *(v0 + 1136);
  v20 = *(v0 + 1128);
  v21 = *(v0 + 1120);
  v22 = *(v0 + 1112);
  if (*(v0 + 186) == 1)
  {
    *(v0 + 912) = v22;
    *(v0 + 920) = v21;
    *(v0 + 928) = v20;
    *(v0 + 936) = v19;
    *(v0 + 944) = v18;
    *(v0 + 952) = v17;
    *(v0 + 960) = 1;
    OUTLINED_FUNCTION_8_35();
    memcpy(v23, v24, v25);
    v26 = swift_task_alloc();
    *(v0 + 1224) = v26;
    *v26 = v0;
    v26[1] = sub_274950140;
  }

  else
  {
    *(v0 + 968) = v22;
    *(v0 + 976) = v21;
    *(v0 + 984) = v20;
    *(v0 + 992) = v19;
    *(v0 + 1000) = v18;
    *(v0 + 1008) = v17;
    *(v0 + 1016) = 0;
    OUTLINED_FUNCTION_8_35();
    memcpy(v27, v28, v29);
    v30 = swift_task_alloc();
    *(v0 + 1248) = v30;
    *v30 = v0;
    v30[1] = sub_274950284;
  }

  return SmartShortcutPickerActionTemplate.fullyFormedAction(with:)();
}

uint64_t sub_274950140()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_9_15();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1232) = v4;
  *(v2 + 1240) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_274950284()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_9_15();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1256) = v4;
  *(v2 + 1264) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2749503C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_25_14();
  OUTLINED_FUNCTION_29_14();
  *(v12 + 1040) = &unk_288451868;
  v13 = swift_dynamicCastObjCProtocolConditional();
  v14 = *(v12 + 1256);
  if (v13)
  {
    v15 = v14;
    v16 = [v13 associatedAppBundleIdentifier];
    v17 = *(v12 + 1256);
    if (v16)
    {
      v18 = v16;
      v84 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v20 = v19;
    }

    else
    {

      v84 = 0;
      v20 = 0;
    }
  }

  else
  {
    v84 = sub_2747DDFD4(v14, &selRef_appBundleIdentifier);
    v20 = v21;
  }

  if (*(v12 + 1192) || (sub_2747DDFD4(*(v12 + 1256), &selRef_iconSymbolName), v22))
  {
    v23 = objc_allocWithZone(MEMORY[0x277D79EB8]);
    OUTLINED_FUNCTION_44();
    v24 = sub_2749FCD64();
    v87 = [v23 initWithSystemName_];
  }

  else
  {
    v87 = 0;
  }

  v25 = *(v12 + 1264);
  v26 = OUTLINED_FUNCTION_47_8();
  v83 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v86 = v27;

  v28 = OUTLINED_FUNCTION_47_8();
  v82 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v85 = v29;

  OUTLINED_FUNCTION_8_35();
  memcpy(v30, v31, v32);
  v33 = sub_274937654();
  v34 = v25;
  v35 = *(v12 + 1256);
  v36 = *(v12 + 1216);
  v37 = *(v12 + 1208);
  v38 = *(v12 + 1176);
  v39 = *(v12 + 1168);
  if (v34)
  {

    sub_27477C9FC(v12 + 16);
    sub_2747BD02C(v37, v36);
    v40 = OUTLINED_FUNCTION_18_24();
    sub_2747BD02C(v40, v41);

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_65();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }

  else
  {
    v80 = v33;
    OUTLINED_FUNCTION_8_35();
    memcpy(v51, v52, v53);
    v54 = SmartShortcutPickerActionConfiguration.displayString.getter();
    v78 = v55;
    v79 = v54;
    OUTLINED_FUNCTION_8_35();
    memcpy(v56, v57, v58);
    v59 = SmartShortcutPickerActionConfiguration.displayString.getter();
    v77 = v20;
    v61 = v60;
    objc_allocWithZone(MEMORY[0x277D79E90]);
    v62 = v87;
    OUTLINED_FUNCTION_33_13();
    v63 = sub_274954FDC(v83, v86, v82, v85, v84, v77, v80, v79, v78, v59, v61, 0, 0, v87, 0, *v76, v76[2]);
    objc_allocWithZone(MEMORY[0x277D79E58]);
    sub_2747EC0F4(v37, v36);
    v64 = OUTLINED_FUNCTION_18_24();
    sub_2747EC0F4(v64, v65);
    sub_2749551CC(v63, 0, v39, v38, v37, v36);

    sub_2747BD02C(v37, v36);

    v66 = OUTLINED_FUNCTION_18_24();
    sub_2747BD02C(v66, v67);

    sub_27477C9FC(v12 + 16);

    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_65();

    return v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12);
  }
}

uint64_t sub_274950798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_25_14();
  OUTLINED_FUNCTION_29_14();
  objc_opt_self();
  OUTLINED_FUNCTION_3();
  v13 = swift_dynamicCastObjCClass();
  *(v12 + 1272) = v13;
  if (v13)
  {
    v14 = *(v12 + 1232);

    *(v12 + 1280) = sub_2749FD0A4();
    *(v12 + 1288) = sub_2749FD094();
    OUTLINED_FUNCTION_78();
    sub_2749FD044();
    OUTLINED_FUNCTION_65();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {
    *(v12 + 1024) = &unk_288451868;
    v19 = swift_dynamicCastObjCProtocolConditional();
    v20 = *(v12 + 1232);
    v21 = *(v12 + 1112);
    if (v19)
    {
      v22 = v19;
      v23 = v20;
      v24 = v21;
      v25 = [v22 associatedAppBundleIdentifier];
      v26 = *(v12 + 1232);
      if (v25)
      {
        v27 = v25;
        v102 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v29 = v28;
      }

      else
      {

        v102 = 0;
        v29 = 0;
      }
    }

    else
    {
      v30 = v21;
      v102 = sub_2747DDFD4(v20, &selRef_appBundleIdentifier);
      v29 = v31;
    }

    if (*(v12 + 1192) || (sub_2747DDFD4(*(v12 + 1232), &selRef_iconSymbolName), v32))
    {
      v33 = objc_allocWithZone(MEMORY[0x277D79EB8]);
      OUTLINED_FUNCTION_44();
      v34 = sub_2749FCD64();
      v104 = [v33 initWithSystemName_];
    }

    else
    {
      v104 = 0;
    }

    v35 = *(v12 + 1240);
    v36 = OUTLINED_FUNCTION_47_8();
    v101 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v38 = v37;

    v39 = OUTLINED_FUNCTION_47_8();
    v100 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v103 = v40;

    OUTLINED_FUNCTION_8_35();
    memcpy(v41, v42, v43);
    sub_274937654();
    v44 = v35;
    v45 = *(v12 + 1232);
    v46 = *(v12 + 1216);
    v47 = *(v12 + 1208);
    v48 = *(v12 + 1176);
    v49 = *(v12 + 1168);
    v50 = *(v12 + 1112);
    if (v44)
    {

      sub_27477C9FC(v12 + 16);
      v51 = OUTLINED_FUNCTION_20_18();
      sub_2747BD02C(v51, v52);
      v53 = OUTLINED_FUNCTION_18_24();
      sub_2747BD02C(v53, v54);

      OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_65();

      return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_8_35();
      v98 = v63;
      memcpy(v64, v65, v66);
      v67 = SmartShortcutPickerActionConfiguration.displayString.getter();
      v96 = v68;
      v97 = v67;
      OUTLINED_FUNCTION_8_35();
      memcpy(v69, v70, v71);
      v72 = SmartShortcutPickerActionConfiguration.displayString.getter();
      v95 = v29;
      v74 = v73;
      objc_allocWithZone(MEMORY[0x277D79E90]);
      v75 = v104;
      OUTLINED_FUNCTION_33_13();
      v76 = sub_274954FDC(v101, v38, v100, v103, v102, v95, v98, v97, v96, v72, v74, 0, 0, v104, 0, *v94, v94[2]);
      objc_allocWithZone(MEMORY[0x277D79E58]);
      v77 = OUTLINED_FUNCTION_20_18();
      sub_2747EC0F4(v77, v78);
      v79 = OUTLINED_FUNCTION_18_24();
      sub_2747EC0F4(v79, v80);
      sub_2749551CC(v76, v50, v49, v48, v47, v46);

      v81 = OUTLINED_FUNCTION_20_18();
      sub_2747BD02C(v81, v82);

      v83 = OUTLINED_FUNCTION_18_24();
      sub_2747BD02C(v83, v84);

      sub_27477C9FC(v12 + 16);

      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65();

      return v87(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_274950C44()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 1272);

  *(v0 + 1296) = [v1 linkActionWithSerializedParameters];
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_274950CF0()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 1232);
  *(v0 + 1304) = sub_2749FD094();
  OUTLINED_FUNCTION_78();
  v3 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274950DB0, v3, v2);
}

uint64_t sub_274950DB0()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[159];
  v2 = v0[154];

  v0[164] = [v1 fullyQualifiedLinkActionIdentifier];

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_274950E6C()
{
  v1 = *(v0 + 1312);
  v2 = [objc_allocWithZone(MEMORY[0x277D23C30]) initWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_274A11F70;
  *(v3 + 32) = v1;
  sub_27471CF08(0, &qword_280970708, 0x277D23850);
  v4 = v1;
  OUTLINED_FUNCTION_32_1();
  v5 = sub_2749FCF74();

  *(v0 + 1032) = 0;
  v6 = [v2 actionsWithFullyQualifiedIdentifiers:v5 error:v0 + 1032];

  v7 = *(v0 + 1032);
  v8 = *(v0 + 1312);
  v94 = v2;
  if (!v6)
  {
    v66 = *(v0 + 1232);
    v67 = *(v0 + 1216);
    v68 = *(v0 + 1208);
    v69 = *(v0 + 1176);
    v70 = *(v0 + 1168);
    v93 = *(v0 + 1296);
    v71 = v7;

    sub_2749F8FE4();
    swift_willThrow();
    sub_2747BD02C(v68, v67);

    sub_2747BD02C(v70, v69);

    sub_27477C9FC(v0 + 16);

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970710, &unk_274A28230);
  v9 = sub_2749FCCA4();
  v10 = v7;

  v11 = [v8 bundleIdentifier];
  v12 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v14 = v13;

  v15 = sub_27494FBE0(v12, v14, v9);

  if (!v15 || (v16 = [*(v0 + 1312) actionIdentifier], v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0(), v19 = v18, v16, v20 = sub_27494FB48(v17, v19, v15), , , !v20))
  {
    v49 = *(v0 + 1112);
    sub_2749FA3D4();
    v50 = v49;
    v51 = sub_2749FA4D4();
    v52 = sub_2749FD2C4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(v0 + 1112);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v53;
      *v55 = v53;
      v56 = v53;
      _os_log_impl(&dword_274719000, v51, v52, "Unable to fetch action metadata for action with identifier: %@", v54, 0xCu);
      sub_27493C1E0(v55, &qword_28096A280, &qword_274A16FE0);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();
    }

    v57 = *(v0 + 1312);
    v58 = *(v0 + 1296);
    v59 = *(v0 + 1232);
    v60 = *(v0 + 1208);
    v86 = *(v0 + 1216);
    v89 = *(v0 + 1168);
    v91 = *(v0 + 1176);
    v61 = *(v0 + 1112);

    v62 = OUTLINED_FUNCTION_125();
    v63(v62);
    sub_2749552C0();
    OUTLINED_FUNCTION_26_14();
    swift_allocError();
    *v64 = v61;
    *(v64 + 8) = 0;
    swift_willThrow();
    v65 = v61;

    sub_2747BD02C(v60, v86);

    sub_2747BD02C(v89, v91);

    sub_27477C9FC(v0 + 16);
    goto LABEL_10;
  }

  v21 = *(v0 + 1312);
  v22 = *(v0 + 1296);
  v23 = *(v0 + 1240);
  v24 = *(v0 + 1112);

  v25 = [v21 bundleIdentifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_39_14();

  sub_27471CF08(0, &qword_280970728, 0x277D23728);
  sub_27471CF08(0, &qword_280970730, 0x277D23738);
  v26 = objc_allocWithZone(MEMORY[0x277CD3A70]);
  v27 = v22;
  v92 = v20;
  v28 = OUTLINED_FUNCTION_42();
  v90 = sub_274954DA0(v28, v29, v30, v31);
  OUTLINED_FUNCTION_8_35();
  memcpy(v32, v33, v34);
  v83 = SmartShortcutPickerActionConfiguration.displayString.getter();
  v88 = v35;
  OUTLINED_FUNCTION_8_35();
  memcpy(v36, v37, v38);
  v39 = v24;
  v40 = sub_274937654();
  v41 = v23;
  v85 = *(v0 + 1312);
  v87 = *(v0 + 1296);
  v84 = *(v0 + 1232);
  v42 = *(v0 + 1216);
  v43 = *(v0 + 1208);
  v44 = *(v0 + 1176);
  v45 = *(v0 + 1168);
  v46 = *(v0 + 1112);
  if (v41)
  {
    sub_2747BD02C(*(v0 + 1208), *(v0 + 1216));

    v47 = OUTLINED_FUNCTION_20_18();
    sub_2747BD02C(v47, v48);

    sub_27477C9FC(v0 + 16);

LABEL_10:

    OUTLINED_FUNCTION_48_0();

    return v72();
  }

  v74 = v40;
  v75 = *(v0 + 1056);
  objc_allocWithZone(MEMORY[0x277D79E68]);
  v76 = OUTLINED_FUNCTION_20_18();
  sub_2747EC0F4(v76, v77);
  v78 = v75;
  v79 = sub_274954E6C(v90, v83, v88, v75, v46, v74, v45, v44, v43, v42);

  v80 = OUTLINED_FUNCTION_20_18();
  sub_2747BD02C(v80, v81);

  sub_27477C9FC(v0 + 16);

  OUTLINED_FUNCTION_24_18();

  return v82(v79);
}

uint64_t sub_27495156C()
{
  OUTLINED_FUNCTION_19_21();

  v1 = OUTLINED_FUNCTION_45();
  sub_2747BD02C(v1, v2);

  sub_27477C9FC(v0 + 16);

  OUTLINED_FUNCTION_48_0();

  return v3();
}

uint64_t sub_274951628()
{
  OUTLINED_FUNCTION_19_21();

  v1 = OUTLINED_FUNCTION_45();
  sub_2747BD02C(v1, v2);

  sub_27477C9FC(v0 + 16);

  OUTLINED_FUNCTION_48_0();

  return v3();
}

uint64_t SmartShortcutPickerActionTemplate.fullyFormedAction(with:)()
{
  OUTLINED_FUNCTION_72();
  *(v1 + 240) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970738, &qword_274A28240);
  *(v1 + 248) = OUTLINED_FUNCTION_45_8();
  v3 = sub_2749F9164();
  *(v1 + 256) = v3;
  OUTLINED_FUNCTION_27(v3);
  *(v1 + 264) = v4;
  *(v1 + 272) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 288) = *v0;
  *(v1 + 152) = v6;
  *(v1 + 280) = v5;
  v8 = *(v0 + 48);
  *(v1 + 145) = v8;
  *(v1 + 168) = v7;
  *(v1 + 184) = v0[2];
  *(v1 + 200) = v8;
  v9 = swift_task_alloc();
  *(v1 + 296) = v9;
  *v9 = v1;
  v9[1] = sub_274951860;

  return sub_274952EA8();
}

uint64_t sub_274951860()
{
  OUTLINED_FUNCTION_79();
  v2 = *v1;
  *(v2 + 304) = v3;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_274951998()
{
  v1 = v0;
  memcpy((v0 + 16), *(v0 + 240), 0x81uLL);
  v2 = sub_274772C3C(v0 + 16);
  if (!v2)
  {
    v7 = *(v0 + 145);
    CGSizeMake();
    v93 = v0;
    if (v7 != 1)
    {
      v36 = *(v8 + 16);
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = v36 + 56;
        do
        {
          if (*(v38 + 16))
          {
            v94 = v1[38];
            v39 = *(v38 + 40);

            v40 = OUTLINED_FUNCTION_4_40();
            sub_274772C44(v40, v41, v42, v43, v44);

            v45 = OUTLINED_FUNCTION_4_40();
            sub_274772C44(v45, v46, v47, v48, v49);

            swift_unknownObjectRetain();
            v50 = sub_2749FCD64();
            [v94 setParameterState:v39 forKey:v50];
            v1 = v93;

            v51 = OUTLINED_FUNCTION_4_40();
            sub_274772C94(v51, v52, v53, v54, v55);

            swift_unknownObjectRelease_n();
          }

          v38 += 88;
          --v37;
        }

        while (v37);
      }

      goto LABEL_44;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_3();
    if (swift_dynamicCastObjCClass())
    {
      v9 = *(v0 + 288);
      v10 = [objc_allocWithZone(MEMORY[0x277D23B70]) init];
      v11 = [v9 parameterIdentifier];
      if (v11)
      {
        v12 = v11;
        v14 = *(v0 + 272);
        v13 = *(v0 + 280);
        v15 = *(v0 + 256);
        v16 = *(v0 + 264);
        sub_2749F9144();

        (*(v16 + 32))(v13, v14, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707B0, &unk_274A28250);
        v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_274A0EF10;
        (*(v16 + 16))(v18 + v17, v13, v15);
        v19 = sub_2749FCF74();

        *(v0 + 224) = 0;
        v20 = [v10 propertiesForIdentifiers:v19 error:v0 + 224];

        v21 = *(v0 + 224);
        if (v20)
        {
          v22 = *(v0 + 248);
          sub_27471CF08(0, &qword_2809707B8, 0x277D238D0);
          sub_274955314(&qword_2809707C0, MEMORY[0x277CC95F0]);
          OUTLINED_FUNCTION_42();
          v23 = sub_2749FCCA4();
          v24 = v21;

          sub_2747A6B7C(v23, v22);

          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809688C8, &qword_274A13028);
          if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
          {
            v26 = *(v0 + 248);

            v27 = OUTLINED_FUNCTION_125();
            v28(v27);
            sub_27493C1E0(v26, &qword_280970738, &qword_274A28240);
          }

          else
          {
            v76 = *(*(v0 + 248) + *(v25 + 48));
            v77 = [v76 identifier];

            v78 = v77;
            v79 = v77;
            if (!v77)
            {
              _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v79 = sub_2749FCD64();

              _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v78 = sub_2749FCD64();
            }

            v80 = *(v0 + 304);
            v81 = *(v0 + 256);
            v82 = *(v0 + 248);
            v83 = *(*(v0 + 264) + 8);
            v84 = v77;
            v83(v82, v81);
            v85 = [v80 parameterForKey_];

            if (v85 && ([v85 stateClass], swift_getObjCClassMetadata(), v1[29] = &unk_288451978, swift_dynamicCastTypeToObjCProtocolConditional()))
            {
              v86 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v87 = [objc_allocWithZone(MEMORY[0x277D7C158]) init];
              v88 = [v86 initWithVariable_];

              swift_unknownObjectRetain();
            }

            else
            {
              v88 = 0;
            }

            v1 = v93;
            v89 = *(v93 + 280);
            v90 = *(v93 + 256);
            [*(v93 + 304) setParameterState:v88 forKey:v78];

            swift_unknownObjectRelease_n();
            v83(v89, v90);
          }

          goto LABEL_44;
        }

        v71 = *(v0 + 304);
        v72 = *(v0 + 280);
        v73 = v1[32];
        v74 = v1[33];
        v75 = v21;
        sub_2749F8FE4();

        swift_willThrow();
        (*(v74 + 8))(v72, v73);
        goto LABEL_30;
      }
    }

LABEL_44:

    v91 = v1[1];
    v92 = v1[38];

    return v91(v92);
  }

  if (v2 == 1)
  {
    CGSizeMake();
    v4 = *(v0 + 304);
    if (*(v3 + 72))
    {
      v5 = *(v3 + 96);
      swift_unknownObjectRetain_n();
      OUTLINED_FUNCTION_32_1();
      v6 = sub_2749FCD64();
      [v4 setParameterState:v5 forKey:v6];

      swift_unknownObjectRelease_n();
    }

    else
    {
      OUTLINED_FUNCTION_32_1();
      v56 = sub_2749FCD64();
      v57 = [v4 parameterForKey_];

      if (v57 && ([v57 stateClass], swift_getObjCClassMetadata(), v1[26] = &unk_288451978, swift_dynamicCastTypeToObjCProtocolConditional()))
      {
        v58 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v59 = [objc_allocWithZone(MEMORY[0x277D7C158]) init];
        v60 = [v58 initWithVariable_];

        swift_unknownObjectRetain();
      }

      else
      {
        v60 = 0;
      }

      v69 = v1[38];
      OUTLINED_FUNCTION_32_1();
      v70 = sub_2749FCD64();
      [v69 setParameterState:v60 forKey:v70];

      swift_unknownObjectRelease_n();
    }

    goto LABEL_44;
  }

  v29 = *(v0 + 304);
  CGSizeMake();
  v31 = *(v30 + 32);
  v32 = *(v30 + 48);
  v33 = sub_2749FCD64();
  v34 = [v29 parameterForKey_];

  if (!v32)
  {
    sub_27471CF08(0, &unk_280970450, 0x277D79F40);

    v35 = sub_274952604();
LABEL_24:
    v61 = v35;
    v62 = [objc_allocWithZone(MEMORY[0x277D7C158]) initWithCollectionFilter_];
    if (v34 && ([v34 stateClass], swift_getObjCClassMetadata(), v1[27] = &unk_288451978, swift_dynamicCastTypeToObjCProtocolConditional()))
    {
      v63 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariable_];
      swift_unknownObjectRetain();
    }

    else
    {
      v63 = 0;
    }

    v64 = v1[38];
    v65 = sub_2749FCD64();
    [v64 setParameterState:v63 forKey:v65];

    swift_unknownObjectRelease_n();
    goto LABEL_44;
  }

  if (v32 == 1)
  {
    v35 = [objc_allocWithZone(MEMORY[0x277D79F40]) initWithNamedQueryReference_];
    goto LABEL_24;
  }

  v66 = v1[38];
  sub_27493D788();
  OUTLINED_FUNCTION_26_14();
  swift_allocError();
  swift_willThrow();

LABEL_30:

  v67 = v1[1];

  return v67();
}

uint64_t sub_27495231C()
{
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

id sub_274952410()
{
  OUTLINED_FUNCTION_35_0();
  v2 = sub_2749F9164();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 bundleIdentifier];
  if (!v8)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v8 = sub_2749FCD64();
  }

  v9 = [v0 basePhraseTemplate];
  if (!v9)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = sub_2749FCD64();
  }

  v10 = [v1 actionIdentifier];
  if (!v10)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v10 = sub_2749FCD64();
  }

  v11 = [v0 parameterIdentifier];
  if (v11)
  {
    sub_2749F9144();

    v11 = sub_2749F9124();
    (*(v4 + 8))(v7, v2);
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBundleIdentifier:v8 basePhraseTemplate:v9 actionIdentifier:v10 parameterIdentifier:v11];

  return v12;
}

id sub_274952604()
{
  OUTLINED_FUNCTION_35_0();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_45();
  v1 = sub_2749FCD64();

  v2 = [v0 initWithSystemEntityCollectionIdentifier_];

  return v2;
}

uint64_t SmartShortcutPickerActionTemplate.isConfigured(from:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(v1 + 1);
  v7 = v1[4];
  v8 = v1[5];
  if (v1[6])
  {
    if (*(a1 + 48))
    {
      v9 = a1[3];
      v10 = v1[3];
      v21 = *v1;
      v22 = v6;
      v23 = v10;
      v24 = v7;
      v25 = v8;
      v26 = 1;
      v15 = v2;
      v16 = v3;
      v17 = v9;
      v18 = v4;
      v19 = v5;
      v20 = 1;
      return static SmartShortcutPickerActionTemplate.== infix(_:_:)(&v21, &v15);
    }

    return 0;
  }

  if (a1[6])
  {
    return 0;
  }

  v13 = *v1 == v2 && v6 == v3;
  if (!v13 && (sub_2749FDCC4() & 1) == 0)
  {
    return 0;
  }

  v11 = (v5 | v8) == 0;
  if (!v5 || !v8)
  {
    return v11;
  }

  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_2749FDCC4();
}

BOOL static SmartShortcutPickerActionTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v95[0] = *a1;
  v95[1] = v2;
  v93 = v7;
  v94 = v4;
  v95[2] = v4;
  v95[3] = v5;
  v16 = v6;
  v95[4] = v6;
  v95[5] = v7;
  v96 = v8;
  v97 = v10;
  v98 = v9;
  v99 = v12;
  v100 = v11;
  v101 = v13;
  v102 = v14;
  v103 = v15;
  if ((v8 & 1) == 0)
  {
    if (v15)
    {
      goto LABEL_13;
    }

    v42 = v3 == v10 && v2 == v9;
    if (v42 || (v43 = v2, v44 = sub_2749FDCC4(), v2 = v43, (v44 & 1) != 0))
    {
      v45 = v16;
      if (v5)
      {
        if (v11)
        {
          if (v94 == v12 && v5 == v11)
          {
            goto LABEL_26;
          }

          v47 = v2;
          v48 = sub_2749FDCC4();
          v2 = v47;
          if (v48)
          {
            goto LABEL_26;
          }
        }
      }

      else if (!v11)
      {
LABEL_26:
        if (!v93)
        {
          v70 = OUTLINED_FUNCTION_0_39();
          OUTLINED_FUNCTION_46_10(v70, v71, v72, v73, v74, v75);
          v76 = OUTLINED_FUNCTION_3_50();
          sub_27477C094(v76, v77, v78, v79, v45, 0, 0);

          sub_27493C1E0(v95, &unk_2809707D0, &unk_274A14B20);
          if (v14)
          {
LABEL_46:

            return 0;
          }

          return 1;
        }

        if (v14)
        {
          v49 = v2;
          if (v45 != v13 || v93 != v14)
          {
            v92 = sub_2749FDCC4();
            v51 = OUTLINED_FUNCTION_0_39();
            sub_27477C094(v51, v52, v53, v54, v55, v56, 0);
            sub_27477C094(v3, v49, v94, v5, v45, v93, 0);
            sub_27493C1E0(v95, &unk_2809707D0, &unk_274A14B20);
            return (v92 & 1) != 0;
          }

          v86 = OUTLINED_FUNCTION_1_46();
          v88 = v87;
          sub_27477C094(v86, v89, v90, v91, v45, v87, 0);
          sub_27477C094(v3, v49, v94, v5, v45, v88, 0);
          goto LABEL_49;
        }

        v80 = OUTLINED_FUNCTION_1_46();
        v82 = v81;
        OUTLINED_FUNCTION_46_10(v80, v83, v84, v85, v13, 0);
        v35 = OUTLINED_FUNCTION_3_50();
        v40 = v45;
        v38 = v82;
        goto LABEL_38;
      }

      v57 = OUTLINED_FUNCTION_0_39();
      OUTLINED_FUNCTION_46_10(v57, v58, v59, v60, v61, v62);
      v35 = OUTLINED_FUNCTION_3_50();
      v40 = v45;
    }

    else
    {
      v63 = OUTLINED_FUNCTION_0_39();
      OUTLINED_FUNCTION_46_10(v63, v64, v65, v66, v67, v68);
      v35 = OUTLINED_FUNCTION_3_50();
      v40 = v16;
    }

    v38 = v93;
LABEL_38:
    v41 = 0;
    goto LABEL_39;
  }

  if ((v15 & 1) == 0)
  {
LABEL_13:
    v26 = OUTLINED_FUNCTION_0_39();
    v28 = v27;
    sub_27477C094(v26, v29, v30, v31, v32, v33, v34);
    v35 = v3;
    v36 = v28;
    v38 = v93;
    v37 = v94;
    v39 = v5;
    v40 = v16;
    v41 = v8;
LABEL_39:
    sub_27477C094(v35, v36, v37, v39, v40, v38, v41);
    goto LABEL_40;
  }

  v17 = v2;
  sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
  v18 = OUTLINED_FUNCTION_0_39();
  sub_27477C094(v18, v19, v20, v21, v22, v23, 1);
  sub_27477C094(v3, v17, v94, v5, v16, v93, 1);
  if ((sub_2749FD604() & 1) == 0)
  {
LABEL_40:
    sub_27493C1E0(v95, &unk_2809707D0, &unk_274A14B20);
    return 0;
  }

  if (!v94)
  {

    sub_27493C1E0(v95, &unk_2809707D0, &unk_274A14B20);
    if (v12)
    {
      goto LABEL_46;
    }

    return 1;
  }

  if (!v12)
  {
    goto LABEL_40;
  }

  if (v17 == v9 && v94 == v12)
  {
LABEL_49:
    sub_27493C1E0(v95, &unk_2809707D0, &unk_274A14B20);
    return 1;
  }

  v25 = sub_2749FDCC4();
  sub_27493C1E0(v95, &unk_2809707D0, &unk_274A14B20);
  return (v25 & 1) != 0;
}

id sub_274952B50(void *a1)
{
  v1 = a1;
  WFExecutableAppShortcutIdentifier.description.getter();

  v2 = sub_2749FCD64();

  return v2;
}

uint64_t WFExecutableAppShortcutIdentifier.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0, &qword_274A1B340);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_2749FD934();
  OUTLINED_FUNCTION_6_25();
  MEMORY[0x277C5EBC0](0xD000000000000026);
  v8 = [v0 bundleIdentifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_39_14();

  v9 = OUTLINED_FUNCTION_42();
  MEMORY[0x277C5EBC0](v9);

  MEMORY[0x277C5EBC0](0x74616C706D657420, 0xEB00000000203A65);
  v10 = [v1 basePhraseTemplate];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_39_14();

  v11 = OUTLINED_FUNCTION_42();
  MEMORY[0x277C5EBC0](v11);

  MEMORY[0x277C5EBC0](0x3A6E6F6974636120, 0xE900000000000020);
  v12 = [v1 actionIdentifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_39_14();

  v13 = OUTLINED_FUNCTION_42();
  MEMORY[0x277C5EBC0](v13);

  MEMORY[0x277C5EBC0](0x74656D6172617020, 0xEC000000203A7265);
  v14 = [v1 parameterIdentifier];
  if (v14)
  {
    v15 = v14;
    sub_2749F9144();

    v16 = sub_2749F9164();
    v17 = 0;
  }

  else
  {
    v16 = sub_2749F9164();
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v17, 1, v16);
  v18 = OUTLINED_FUNCTION_45();
  sub_274955358(v18, v19);
  sub_2749F9164();
  if (__swift_getEnumTagSinglePayload(v7, 1, v16) == 1)
  {
    sub_27493C1E0(v7, &qword_2809707E0, &qword_274A1B340);
    v20 = 0xE300000000000000;
    v21 = 7104878;
  }

  else
  {
    v21 = sub_2749F9114();
    v20 = v22;
    OUTLINED_FUNCTION_9_3();
    (*(v23 + 8))(v7, v16);
  }

  MEMORY[0x277C5EBC0](v21, v20);

  return v25[0];
}

uint64_t sub_274952EA8()
{
  OUTLINED_FUNCTION_79();
  v2 = sub_2749FA4E4();
  *(v1 + 152) = v2;
  OUTLINED_FUNCTION_27(v2);
  *(v1 + 160) = v3;
  *(v1 + 168) = OUTLINED_FUNCTION_45_8();
  v4 = sub_2749F9164();
  *(v1 + 176) = v4;
  OUTLINED_FUNCTION_27(v4);
  *(v1 + 184) = v5;
  *(v1 + 192) = OUTLINED_FUNCTION_45_8();
  *(v1 + 200) = *v0;
  *(v1 + 320) = *(v0 + 48);
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_274952FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_25_14();
  OUTLINED_FUNCTION_29_14();
  if (*(v12 + 320))
  {
    v13 = *(v12 + 200);
    v14 = [objc_allocWithZone(MEMORY[0x277D23B70]) initWithOptions_];
    *(v12 + 216) = v14;
    v15 = [v13 bundleIdentifier];
    if (!v15)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v15 = sub_2749FCD64();
    }

    *(v12 + 224) = v15;
    v16 = [v13 basePhraseTemplate];
    if (!v16)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v16 = sub_2749FCD64();
    }

    *(v12 + 232) = v16;
    v17 = [v13 actionIdentifier];
    if (!v17)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v17 = sub_2749FCD64();
    }

    *(v12 + 240) = v17;
    v18 = [v13 parameterIdentifier];
    if (v18)
    {
      v20 = *(v12 + 184);
      v19 = *(v12 + 192);
      v21 = *(v12 + 176);
      sub_2749F9144();

      v18 = sub_2749F9124();
      (*(v20 + 8))(v19, v21);
    }

    *(v12 + 248) = v18;
    *(v12 + 16) = v12;
    *(v12 + 56) = v12 + 144;
    *(v12 + 24) = sub_2749532BC;
    v22 = swift_continuation_init();
    *(v12 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809708A0, &qword_274A28860);
    *(v12 + 80) = MEMORY[0x277D85DD0];
    *(v12 + 88) = 1107296256;
    *(v12 + 96) = sub_2748AECCC;
    *(v12 + 104) = &block_descriptor_43;
    *(v12 + 112) = v22;
    [v14 retrieveActionForBundleIdentifier:v15 basePhraseTemplate:v16 actionIdentifier:v17 parameterIdentifier:v18 completion:v12 + 80];
    OUTLINED_FUNCTION_65();

    return MEMORY[0x282200938](v23);
  }

  else
  {
    v25 = [objc_opt_self() sharedRegistry];
    OUTLINED_FUNCTION_44();
    v26 = sub_2749FCD64();
    [v25 createActionWithIdentifier:v26 serializedParameters:0];

    OUTLINED_FUNCTION_65();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_2749532BC()
{
  OUTLINED_FUNCTION_79();
  *(*v0 + 256) = *(*v0 + 48);
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2749533C4()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v0[33] = v0[18];

  sub_2749FD0A4();
  v0[34] = sub_2749FD094();
  OUTLINED_FUNCTION_78();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274953478, v6, v5);
}

uint64_t sub_274953478()
{
  OUTLINED_FUNCTION_79();

  objc_allocWithZone(sub_2749F9874());
  *(v0 + 280) = sub_2749F9854();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2749534F4()
{
  OUTLINED_FUNCTION_72();
  v1 = [*(v0 + 200) bundleIdentifier];
  v2 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v4 = v3;

  *(v0 + 288) = v4;
  v8 = (*MEMORY[0x277D7BF50] + MEMORY[0x277D7BF50]);
  v5 = swift_task_alloc();
  *(v0 + 296) = v5;
  *v5 = v0;
  v5[1] = sub_2749535E0;
  v6 = *(v0 + 264);

  return v8(v6, 0, v2, v4);
}

uint64_t sub_2749535E0()
{
  OUTLINED_FUNCTION_79();
  v2 = *v1;
  OUTLINED_FUNCTION_9_15();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v4;
  *(v2 + 312) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2749536EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_25_14();
  OUTLINED_FUNCTION_29_14();
  v13 = *(v12 + 304);
  if (v13)
  {
    v14 = v13;
    v15 = [v14 actions];
    sub_27471CF08(0, &qword_28096D540, 0x277D7C098);
    v16 = sub_2749FCF84();

    if (sub_27472D918(v16))
    {
      sub_2747B2790();
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x277C5F6D0](0, v16);
      }

      else
      {
        v17 = *(v16 + 32);
      }

      v18 = *(v12 + 280);
      v19 = *(v12 + 264);

      OUTLINED_FUNCTION_65();

      return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
    }
  }

  v29 = *(v12 + 200);
  sub_2749FA3D4();
  v30 = v29;
  v31 = sub_2749FA4D4();
  v32 = sub_2749FD2C4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v12 + 200);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v33;
    *v35 = v33;
    v36 = v33;
    _os_log_impl(&dword_274719000, v31, v32, "Unable to construct WFAction for action with identifier: %@", v34, 0xCu);
    sub_27493C1E0(v35, &qword_28096A280, &qword_274A16FE0);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();
  }

  v37 = *(v12 + 304);
  v38 = *(v12 + 280);
  v39 = *(v12 + 264);
  v40 = *(v12 + 216);
  v41 = *(v12 + 200);

  v42 = OUTLINED_FUNCTION_125();
  v43(v42);
  sub_2749552C0();
  OUTLINED_FUNCTION_26_14();
  swift_allocError();
  *v44 = v41;
  *(v44 + 8) = 1;
  swift_willThrow();
  v45 = v41;

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_65();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_2749539B8(__n128 a1)
{
  v2 = v1[31];
  v4 = v1[29];
  v3 = v1[30];
  v6 = v1[27];
  v5 = v1[28];
  swift_willThrow();

  OUTLINED_FUNCTION_48_0();

  return v7();
}

uint64_t sub_274953A60()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[27];

  OUTLINED_FUNCTION_48_0();

  return v4();
}

uint64_t sub_274953AEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_25();
  v5 = a1 == 0xD000000000000010 && v4 == a2;
  if (v5 || (OUTLINED_FUNCTION_11_3(0xD000000000000010) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_6_25();
    v8 = a1 == 0xD000000000000017 && v7 == a2;
    if (v8 || (OUTLINED_FUNCTION_11_3(0xD000000000000017) & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_6_25();
      if (a1 == 0xD000000000000017 && v9 == a2)
      {

        return 2;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_11_3(0xD000000000000017);

        if (v11)
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
}

unint64_t sub_274953BD8(char a1)
{
  result = 0xD000000000000017;
  if (!a1)
  {
    return 0xD000000000000010;
  }

  return result;
}

uint64_t sub_274953C28(uint64_t a1, uint64_t a2)
{
  sub_2749FDB74();
  OUTLINED_FUNCTION_78();

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

unint64_t sub_274953C78(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_274953CB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_11_3(0x6E6F69746361) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F68536F747561 && a2 == 0xEC00000074756374)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_11_3(0x726F68536F747561);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_274953D64(char a1)
{
  if (a1)
  {
    return 0x726F68536F747561;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_274953DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274953AEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274953DE4(uint64_t a1)
{
  v2 = sub_2749554EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274953E20(uint64_t a1)
{
  v2 = sub_2749554EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274953E80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_274953C28(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_274953EB0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_274953C78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_274953EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274953C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274953F0C(uint64_t a1)
{
  v2 = sub_27495541C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274953F48(uint64_t a1)
{
  v2 = sub_27495541C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274953F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274953CB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274953FB4(uint64_t a1)
{
  v2 = sub_2749553C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274953FF0(uint64_t a1)
{
  v2 = sub_2749553C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SmartShortcutPickerActionTemplate.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E8, &qword_274A28260);
  OUTLINED_FUNCTION_43();
  v41 = v4;
  v42 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v40 = &v34 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707F0, &qword_274A28268);
  OUTLINED_FUNCTION_43();
  v38 = v8;
  v39 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707F8, &unk_274A28270);
  OUTLINED_FUNCTION_43();
  v45 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = v1[1];
  v43 = *v1;
  v18 = v1[2];
  v36 = v1[3];
  v37 = v18;
  v19 = v1[4];
  v34 = v1[5];
  v35 = v19;
  v20 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2749553C8();
  sub_2749FDE94();
  if (v20)
  {
    OUTLINED_FUNCTION_42_10();
    sub_27495541C();
    v21 = v40;
    OUTLINED_FUNCTION_44_9(&type metadata for SmartShortcutPickerActionTemplate.CodingKeys.AutoShortcutCodingKeys, &v46);
    v22 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    OUTLINED_FUNCTION_6_25();
    v23 = sub_2749FCD64();
    [v22 encodeObject:v43 forKey:v23];

    [v22 finishEncoding];
    v24 = [v22 encodedData];
    v25 = sub_2749F9094();
    v27 = v26;

    v46 = v25;
    v47 = v27;
    v48 = 0;
    sub_27493C23C();
    v28 = v42;
    v29 = v44;
    sub_2749FDC44();
    if (v29)
    {

      v30.n128_f64[0] = sub_2747BD02C(v46, v47);
    }

    else
    {
      sub_2747BD02C(v46, v47);
      v46 = v17;
      v47 = v37;
      v48 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C210, &unk_274A12840);
      sub_274955470();
      sub_2749FDC44();
    }

    (*(v41 + 8))(v21, v28, v30);
    return (*(v45 + 8))(v16, v12);
  }

  else
  {
    LOBYTE(v46) = 0;
    sub_2749554EC();
    OUTLINED_FUNCTION_44_9(&type metadata for SmartShortcutPickerActionTemplate.CodingKeys.ActionCodingKeys, &v46);
    LOBYTE(v46) = 0;
    v31 = v44;
    v32 = v39;
    sub_2749FDC34();
    if (!v31)
    {
      v46 = v37;
      v47 = v36;
      v48 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C210, &unk_274A12840);
      sub_274955470();
      OUTLINED_FUNCTION_22_18();
      v46 = v35;
      v47 = v34;
      v48 = 2;
      OUTLINED_FUNCTION_22_18();
    }

    (*(v38 + 8))(v11, v32);
    return (*(v45 + 8))(v16, v12);
  }
}

uint64_t SmartShortcutPickerActionTemplate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970820, &qword_274A28280);
  OUTLINED_FUNCTION_43();
  v65 = v4;
  v66 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970828, &qword_274A28288);
  OUTLINED_FUNCTION_43();
  v67 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280970830, &qword_274A28290);
  OUTLINED_FUNCTION_43();
  v15 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v61 - v17;
  v19 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2749553C8();
  v20 = v69;
  sub_2749FDE74();
  if (!v20)
  {
    v64 = v7;
    v21 = v67;
    v22 = v68;
    v69 = v15;
    v23 = sub_2749FDBF4();
    if (*(v23 + 16))
    {
      v24 = *(v23 + 32);

      if (v24)
      {
        OUTLINED_FUNCTION_42_10();
        sub_27495541C();
        OUTLINED_FUNCTION_32_15(&type metadata for SmartShortcutPickerActionTemplate.CodingKeys.AutoShortcutCodingKeys, v71);
        v25 = v18;
        v26 = v22;
        v27 = v25;
        v72 = 0;
        sub_27493C0C8();
        sub_2749FDBE4();
        v35 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
        v36 = OUTLINED_FUNCTION_87();
        sub_2747EC0F4(v36, v37);
        v38 = OUTLINED_FUNCTION_87();
        v41 = sub_27493B908(v38, v39);
        sub_27471CF08(0, &qword_280970840, 0x277D79F58);
        v62 = sub_2749FD574();
        OUTLINED_FUNCTION_42_10();
        v42 = sub_2749FDBB4();
        v67 = v41;
        v50 = v69;
        if (!v62)
        {

          sub_2749FD9B4();
          OUTLINED_FUNCTION_26_14();
          swift_allocError();
          v56 = v55;
          sub_2749FDBA4();
          sub_2749FD9A4();
          OUTLINED_FUNCTION_9_3();
          (*(v57 + 104))(v56);
          swift_willThrow();

          v58 = OUTLINED_FUNCTION_87();
          v60 = sub_2747BD02C(v58, v59);
          (*(v65 + 8))(v64, v66, v60);
          (*(v50 + 8))(v27, v13);
          return __swift_destroy_boxed_opaque_existential_0(v70);
        }

        v61 = v43;
        v63 = v42;

        v51 = OUTLINED_FUNCTION_87();
        v53 = sub_2747BD02C(v51, v52);
        (*(v65 + 8))(v64, v66, v53);
        (*(v50 + 8))(v27, v13);
        v49 = 0;
        v65 = 0;
        v47 = 0;
      }

      else
      {
        LOBYTE(v71[0]) = 0;
        sub_2749554EC();
        OUTLINED_FUNCTION_32_15(&type metadata for SmartShortcutPickerActionTemplate.CodingKeys.ActionCodingKeys, v71);
        v31 = v18;
        v26 = v22;
        v32 = v31;
        LOBYTE(v71[0]) = 0;
        OUTLINED_FUNCTION_10_32();
        v62 = sub_2749FDBD4();
        v63 = v33;
        OUTLINED_FUNCTION_42_10();
        OUTLINED_FUNCTION_10_32();
        v34 = sub_2749FDBB4();
        v66 = v40;
        v61 = v34;
        LOBYTE(v71[0]) = 2;
        OUTLINED_FUNCTION_10_32();
        v65 = sub_2749FDBB4();
        v47 = v46;
        v21[1](v12, v8);
        OUTLINED_FUNCTION_41_13();
        v48(v32, v13);
        v49 = v66;
      }

      v54 = v63;
      *v26 = v62;
      *(v26 + 8) = v54;
      *(v26 + 16) = v61;
      *(v26 + 24) = v49;
      *(v26 + 32) = v65;
      *(v26 + 40) = v47;
      *(v26 + 48) = v24;
    }

    else
    {

      sub_2749FD9B4();
      OUTLINED_FUNCTION_26_14();
      swift_allocError();
      v29 = v28;
      sub_2749FDBA4();
      v71[0] = 0;
      v71[1] = 0xE000000000000000;
      sub_2749FD934();
      MEMORY[0x277C5EBC0](0xD000000000000028, 0x8000000274A34180);
      v72 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970848, &qword_274A28298);
      sub_2749FDA74();
      MEMORY[0x277C5EBC0](46, 0xE100000000000000);
      sub_2749FD9A4();
      OUTLINED_FUNCTION_9_3();
      (*(v30 + 104))(v29);
      swift_willThrow();
      OUTLINED_FUNCTION_41_13();
      v44(v18, v13);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v70);
}

uint64_t SmartShortcutPickerActionTemplate.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 48))
  {
    MEMORY[0x277C5FB60](1);
    sub_2749FD614();
    if (v2)
    {
      goto LABEL_6;
    }

    return sub_2749FDE14();
  }

  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  MEMORY[0x277C5FB60](0);
  sub_2749FCE24();
  if (v3)
  {
    sub_2749FDE14();
    OUTLINED_FUNCTION_125();
    sub_2749FCE24();
    if (!v4)
    {
      return sub_2749FDE14();
    }
  }

  else
  {
    sub_2749FDE14();
    if (!v4)
    {
      return sub_2749FDE14();
    }
  }

LABEL_6:
  sub_2749FDE14();

  return sub_2749FCE24();
}

uint64_t SmartShortcutPickerActionTemplate.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  OUTLINED_FUNCTION_99_0(a1);
  SmartShortcutPickerActionTemplate.hash(into:)(v5);
  return sub_2749FDE44();
}

uint64_t sub_274954D14(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  sub_2749FDDF4();
  SmartShortcutPickerActionTemplate.hash(into:)(v5);
  return sub_2749FDE44();
}

id sub_274954DA0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v8 = sub_2749FCD64();

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v9 = sub_2749FDCA4();
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v10 = [v5 initWithAppBundleIdentifier:v8 linkAction:v9 linkActionMetadata:sub_2749FDCA4()];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v10;
}

id sub_274954E6C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v18 = sub_2749FCD64();

  if (a6)
  {
    sub_27471CF08(0, &unk_2809708B0, 0x277D79EC0);
    v20 = sub_2749FCF74();
  }

  else
  {
    v20 = 0;
  }

  if (a8 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_2749F9074();
    v19 = sub_2747BD018(a7, a8);
  }

  if (a10 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_2749F9074();
    v19 = sub_2747BD018(a9, a10);
  }

  v23 = [v11 initWithIntent:a1 named:v18 previewIcon:a4 appShortcutIdentifier:a5 contextualParameters:v20 shortcutsMetadata:v21 colorScheme:{v19, v22}];

  return v23;
}

id sub_274954FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, __int16 a16, char a17)
{
  v28 = sub_2749FCD64();

  if (a4)
  {
    v27 = sub_2749FCD64();
  }

  else
  {
    v27 = 0;
  }

  if (a6)
  {
    v19 = sub_2749FCD64();
  }

  else
  {
    v19 = 0;
  }

  sub_27471CF08(0, &unk_2809708B0, 0x277D79EC0);
  v20 = sub_2749FCF74();

  v21 = sub_2749FCD64();

  v22 = sub_2749FCD64();

  if (a13)
  {
    v23 = sub_2749FCD64();
  }

  else
  {
    v23 = 0;
  }

  BYTE2(v26) = a17 & 1;
  LOWORD(v26) = a16 & 0x101;
  v24 = [v29 initWithIdentifier:v28 wfActionIdentifier:v27 associatedAppBundleIdentifier:v19 parameters:v20 displayString:v21 title:v22 subtitle:v23 icon:a14 accessoryIcon:a15 actionShowsUserInterface:v26 actionHasResult:? isReversible:?];

  return v24;
}

id sub_2749551CC(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_2749F9074();
    sub_2747BD018(a3, a4);
  }

  if (a6 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_2749F9074();
    sub_2747BD018(a5, a6);
  }

  v16 = [v7 initWithContextualAction:a1 appShortcutIdentifier:a2 shortcutsMetadata:v12 colorScheme:v15];

  return v16;
}

unint64_t sub_2749552C0()
{
  result = qword_280970718;
  if (!qword_280970718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970718);
  }

  return result;
}

uint64_t sub_274955314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274955358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0, &qword_274A1B340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2749553C8()
{
  result = qword_280970800;
  if (!qword_280970800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970800);
  }

  return result;
}

unint64_t sub_27495541C()
{
  result = qword_280970808;
  if (!qword_280970808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970808);
  }

  return result;
}

unint64_t sub_274955470()
{
  result = qword_280970810;
  if (!qword_280970810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C210, &unk_274A12840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970810);
  }

  return result;
}

unint64_t sub_2749554EC()
{
  result = qword_280970818;
  if (!qword_280970818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970818);
  }

  return result;
}

unint64_t sub_274955544()
{
  result = qword_280970850;
  if (!qword_280970850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970850);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2749555B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_2749555F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerActionTemplate.CodingKeys.ActionCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_274955750(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_27495584C()
{
  result = qword_280970858;
  if (!qword_280970858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970858);
  }

  return result;
}

unint64_t sub_2749558A4()
{
  result = qword_280970860;
  if (!qword_280970860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970860);
  }

  return result;
}

unint64_t sub_2749558FC()
{
  result = qword_280970868;
  if (!qword_280970868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970868);
  }

  return result;
}

unint64_t sub_274955954()
{
  result = qword_280970870;
  if (!qword_280970870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970870);
  }

  return result;
}

unint64_t sub_2749559AC()
{
  result = qword_280970878;
  if (!qword_280970878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970878);
  }

  return result;
}

unint64_t sub_274955A04()
{
  result = qword_280970880;
  if (!qword_280970880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970880);
  }

  return result;
}

unint64_t sub_274955A5C()
{
  result = qword_280970888;
  if (!qword_280970888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970888);
  }

  return result;
}

unint64_t sub_274955AB4()
{
  result = qword_280970890;
  if (!qword_280970890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970890);
  }

  return result;
}

unint64_t sub_274955B0C()
{
  result = qword_280970898;
  if (!qword_280970898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970898);
  }

  return result;
}

uint64_t sub_274955BC0()
{
  sub_2749F9DB4();
  swift_allocObject();
  result = sub_2749F9DA4();
  qword_2809708C0 = result;
  return result;
}

uint64_t GalleryView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = *(v2 + 32);
  v9 = *(v2 + 48);
  *a2 = sub_2749FC914();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708C8, &qword_274A28868);
  return sub_274955C78(v8, a2 + *(v6 + 44));
}

uint64_t sub_274955C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708E0, &qword_274A28A50);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8 - 8];
  v10 = sub_2749FBC64();
  sub_274955EB4(a1, v9);
  v11 = sub_2749FC914();
  v13 = v12;
  v14 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708E8, &qword_274A28A58) + 36)];
  *v14 = 256;
  *(v14 + 1) = v11;
  *(v14 + 2) = v13;
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = *(a1 + 48);
  v17 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708F0, &qword_274A28A60) + 36)];
  *v17 = sub_274956A48;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  KeyPath = swift_getKeyPath();
  sub_274956A50(a1, v24);
  if (qword_280966C68 != -1)
  {
    swift_once();
  }

  v19 = qword_2809708C0;
  v20 = &v9[*(v4 + 36)];
  *v20 = KeyPath;
  v20[1] = v19;
  sub_274956A88(v9, v7);
  *a2 = 256;
  *(a2 + 2) = v10;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708F8, &qword_274A28A98);
  sub_274956A88(v7, a2 + *(v21 + 48));

  sub_274956AF8(v9);
  return sub_274956AF8(v7);
}

uint64_t sub_274955EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970900, &qword_274A28AA0);
  MEMORY[0x28223BE20](v4);
  v6 = v27 - v5;
  v7 = type metadata accessor for GallerySearchResultsView(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 40))
  {

    v10 = sub_2748C8674();

    if (v10)
    {
      type metadata accessor for GallerySearchManager(0);
      sub_274728F60(&qword_28159F478, type metadata accessor for GallerySearchManager, &protocol conformance descriptor for GallerySearchManager);
      *v9 = sub_2749FB084();
      v9[1] = v11;
      v12 = *(v7 + 20);
      *(v9 + v12) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200, &qword_274A15100);
      swift_storeEnumTagMultiPayload();
      sub_274956EE0(v9, v6);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970950, &qword_274A28AC0);
      sub_274728F60(&qword_280970958, type metadata accessor for GallerySearchResultsView, &unk_274A1FA90);
      sub_274956E00();
      sub_2749FB7B4();
      return sub_274956F44(v9);
    }

    else
    {
      v27[5] = v7;
      v27[6] = a2;
      v15 = *a1;
      v14 = *(a1 + 8);
      v16 = *(a1 + 16);
      v17 = *(a1 + 24);
      v18 = *(a1 + 32);
      v27[4] = v4;
      switch(v18 >> 5)
      {
        case 1u:

          sub_2747A3168(v16, v17);

          KeyPath = swift_getKeyPath();
          v32[0] = 0;
          v36[0] = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970968, &qword_274A28B18);
          sub_2749FC5B4();
          *&v28 = v16;
          *(&v28 + 1) = v17;
          LOBYTE(v29) = v18 & 1 | 0x80;
          *(&v29 + 1) = KeyPath;
          *&v30 = 0;
          BYTE8(v30) = v32[0];
          v31 = __dst[0];
          __dst[0] = v28;
          __dst[1] = v29;
          __dst[2] = v30;
          __dst[3] = v31;
          v33 = 0;
          LOBYTE(__dst[4]) = 0;
          sub_27489DAF8(&v28, v36);
          sub_274956CCC();
          sub_2748302AC();
          sub_2749FB7B4();
          memcpy(__dst, v36, 0x41uLL);
          v34 = 1;
          BYTE1(__dst[4]) = 1;
          goto LABEL_13;
        case 2u:
          v24 = swift_getKeyPath();
          v25 = swift_getKeyPath();
          v34 = 0;
          v33 = 0;
          v32[72] = 1;
          *&__dst[0] = v15;
          *(&__dst[0] + 1) = v24;
          v27[2] = v25;
          v27[3] = v24;
          LOBYTE(__dst[1]) = 0;
          *(&__dst[1] + 1) = v25;
          *&__dst[2] = 0;
          BYTE8(__dst[2]) = 0;
          LOBYTE(__dst[4]) = 1;
          sub_2747A3170(v15, v14, v16, v17, v18);
          sub_2747A3170(v15, v14, v16, v17, v18);
          v27[1] = sub_274956CCC();
          sub_2748302AC();

          sub_2749FB7B4();
          memcpy(__dst, v36, 0x41uLL);
          v35 = 1;
          BYTE1(__dst[4]) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970920, &qword_274A28AB0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970940, &qword_274A28AB8);
          sub_274956BEC();
          sub_274956D20();
          sub_2749FB7B4();
          memcpy(__dst, v32, 0x42uLL);
          LOBYTE(v28) = 0;
          BYTE2(__dst[4]) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970908, &qword_274A28AA8);
          sub_274956B60();
          sub_274956DAC();
          sub_2749FB7B4();
          sub_274725D44(v15, v14, v16, v17, v18);

          goto LABEL_10;
        case 3u:
          v32[0] = 1;
          v36[0] = v15;
          v36[1] = v14;
          LOBYTE(v36[2]) = v16;
          BYTE2(v36[8]) = 1;
          sub_2747A3140(v15, v14, v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970908, &qword_274A28AA8);
          sub_274956B60();
          sub_274956DAC();
          sub_2749FB7B4();
          goto LABEL_15;
        case 4u:
          if (qword_280966C58 != -1)
          {
            swift_once();
          }

          type metadata accessor for GalleryLoader(0);
          sub_274728F60(&qword_280970970, type metadata accessor for GalleryLoader, &protocol conformance descriptor for GalleryLoader);

          v20 = sub_2749FAD84();
          v22 = v21;
          v23 = swift_getKeyPath();
          v34 = 0;
          v33 = 0;
          *&__dst[0] = v20;
          *(&__dst[0] + 1) = v22;
          __dst[1] = v23;
          LOBYTE(__dst[2]) = 0;
          LOBYTE(__dst[4]) = 0;
          sub_274956C78();
          sub_274956CCC();

          sub_2749FB7B4();
          memcpy(__dst, v36, 0x41uLL);
          v35 = 0;
          BYTE1(__dst[4]) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970920, &qword_274A28AB0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970940, &qword_274A28AB8);
          sub_274956BEC();
          sub_274956D20();
          sub_2749FB7B4();
          memcpy(__dst, v32, 0x42uLL);
          LOBYTE(v28) = 0;
          BYTE2(__dst[4]) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970908, &qword_274A28AA8);
          sub_274956B60();
          sub_274956DAC();
          sub_2749FB7B4();

LABEL_10:

          break;
        default:

          v19 = swift_getKeyPath();
          v32[0] = 0;
          v36[0] = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970968, &qword_274A28B18);
          sub_2749FC5B4();
          *&v28 = v16;
          *(&v28 + 1) = v17;
          LOBYTE(v29) = 0;
          *(&v29 + 1) = v19;
          *&v30 = 0;
          BYTE8(v30) = v32[0];
          v31 = __dst[0];
          __dst[0] = v28;
          __dst[1] = v29;
          __dst[2] = v30;
          __dst[3] = v31;
          v33 = 1;
          LOBYTE(__dst[4]) = 1;
          sub_27489DAF8(&v28, v36);
          sub_274956C78();
          sub_274956CCC();
          sub_2749FB7B4();
          memcpy(__dst, v36, 0x41uLL);
          v34 = 0;
          BYTE1(__dst[4]) = 0;
LABEL_13:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970920, &qword_274A28AB0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970940, &qword_274A28AB8);
          sub_274956BEC();
          sub_274956D20();
          sub_2749FB7B4();
          memcpy(__dst, v32, 0x42uLL);
          v35 = 0;
          BYTE2(__dst[4]) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970908, &qword_274A28AA8);
          sub_274956B60();
          sub_274956DAC();
          sub_2749FB7B4();
          sub_274956E8C(&v28);
          break;
      }

      memcpy(__dst, v36, 0x43uLL);
LABEL_15:
      memcpy(v6, __dst, 0x43uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970950, &qword_274A28AC0);
      sub_274728F60(&qword_280970958, type metadata accessor for GallerySearchResultsView, &unk_274A1FA90);
      sub_274956E00();
      return sub_2749FB7B4();
    }
  }

  else
  {
    type metadata accessor for GallerySearchManager(0);
    sub_274728F60(&qword_28159F478, type metadata accessor for GallerySearchManager, &protocol conformance descriptor for GallerySearchManager);
    result = sub_2749FB074();
    __break(1u);
  }

  return result;
}

uint64_t sub_2749568B8()
{
  if (qword_280966C68 != -1)
  {
    swift_once();
  }

  return sub_2749F9D94();
}

uint64_t sub_274956930(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_274956984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_2749569E4()
{
  result = qword_2809708D0;
  if (!qword_2809708D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809708D8, &qword_274A28A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809708D0);
  }

  return result;
}

uint64_t sub_274956A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708E0, &qword_274A28A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274956AF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809708E0, &qword_274A28A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274956B60()
{
  result = qword_280970910;
  if (!qword_280970910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970908, &qword_274A28AA8);
    sub_274956BEC();
    sub_274956D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970910);
  }

  return result;
}

unint64_t sub_274956BEC()
{
  result = qword_280970918;
  if (!qword_280970918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970920, &qword_274A28AB0);
    sub_274956C78();
    sub_274956CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970918);
  }

  return result;
}

unint64_t sub_274956C78()
{
  result = qword_280970928;
  if (!qword_280970928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970928);
  }

  return result;
}

unint64_t sub_274956CCC()
{
  result = qword_280970930;
  if (!qword_280970930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970930);
  }

  return result;
}

unint64_t sub_274956D20()
{
  result = qword_280970938;
  if (!qword_280970938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970940, &qword_274A28AB8);
    sub_274956CCC();
    sub_2748302AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970938);
  }

  return result;
}

unint64_t sub_274956DAC()
{
  result = qword_280970948;
  if (!qword_280970948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970948);
  }

  return result;
}

unint64_t sub_274956E00()
{
  result = qword_280970960;
  if (!qword_280970960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970950, &qword_274A28AC0);
    sub_274956B60();
    sub_274956DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970960);
  }

  return result;
}

uint64_t sub_274956EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GallerySearchResultsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274956F44(uint64_t a1)
{
  v2 = type metadata accessor for GallerySearchResultsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WFAddToHomeScreenItem(uint64_t a1)
{
  result = qword_280970978;
  if (!qword_280970978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274956FEC(uint64_t a1)
{
  result = sub_27471CF08(319, &qword_280970690, 0x277D79FB0);
  if (v2 <= 0x3F)
  {
    result = sub_2749F9EB4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFAddToHomeScreenSection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_274957160()
{
  result = qword_280970988;
  if (!qword_280970988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970988);
  }

  return result;
}

uint64_t sub_2749571B4(uint64_t a1, uint64_t a2)
{
  sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v37 = v5;
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  type metadata accessor for WFAddToHomeScreenItem(0);
  OUTLINED_FUNCTION_9();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v37 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = (&v37 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E18, &qword_274A10100);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v37 - v23;
  v25 = (&v37 + *(v22 + 56) - v23);
  sub_2747CA634(a1, &v37 - v23);
  sub_2747CA634(a2, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2747CA634(v24, v18);
      v32 = *v18;
      v31 = v18[1];
      if (OUTLINED_FUNCTION_3_51() != 1)
      {

        goto LABEL_23;
      }

      if (v32 == *v25 && v31 == v25[1])
      {

        goto LABEL_28;
      }

      v34 = sub_2749FDCC4();

      if (v34)
      {
        goto LABEL_28;
      }

      sub_2747CA698(v24);
      goto LABEL_24;
    case 2u:
      sub_2747CA634(v24, v15);
      if (OUTLINED_FUNCTION_3_51() == 2)
      {
        v28 = v37;
        v27 = v38;
        (*(v37 + 32))(v8, v25, v38);
        v29 = sub_2749F9EA4();
        v30 = *(v28 + 8);
        v30(v8, v27);
        v30(v15, v27);
        goto LABEL_26;
      }

      (*(v37 + 8))(v15, v38);
      goto LABEL_23;
    case 3u:
      sub_2747CA634(v24, v12);
      if (OUTLINED_FUNCTION_3_51() != 3)
      {
        goto LABEL_23;
      }

      v29 = *v12 == *v25;
      goto LABEL_26;
    case 4u:
      if (OUTLINED_FUNCTION_3_51() == 4)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    case 5u:
      if (OUTLINED_FUNCTION_3_51() == 5)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    case 6u:
      if (OUTLINED_FUNCTION_3_51() != 6)
      {
        goto LABEL_23;
      }

LABEL_28:
      sub_2747CA698(v24);
      v29 = 1;
      return v29 & 1;
    default:
      sub_2747CA634(v24, v20);
      v26 = *v20;
      if (OUTLINED_FUNCTION_3_51())
      {

LABEL_23:
        sub_274957CD0(v24);
LABEL_24:
        v29 = 0;
      }

      else
      {
        v35 = *v25;
        sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
        v29 = sub_2749FD604();

LABEL_26:
        sub_2747CA698(v24);
      }

      return v29 & 1;
  }
}

uint64_t sub_2749575BC(char a1)
{
  if (a1 != 3)
  {
    return 0;
  }

  sub_2749FCE14("Search Symbols", 14);
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
  }

  v1 = qword_28159E448;
  OUTLINED_FUNCTION_32_1();
  v2 = sub_2749FCD64();
  OUTLINED_FUNCTION_32_1();
  v3 = sub_2749FCD64();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v5;
}

uint64_t sub_2749576A4(char a1)
{
  switch(a1)
  {
    case 1:
      sub_2749FCE14("Icon Type", 9);
      break;
    case 2:
      sub_2749FCE14("Color", 5);
      break;
    case 3:
      sub_2749FCE14("Symbol", 6);
      break;
    case 4:
      sub_2749FCE14("Image Type", 10);
      break;
    default:
      sub_2749FCE14("Preview", 7);
      break;
  }

  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
  }

  v1 = qword_28159E448;
  v2 = sub_2749FCD64();
  v3 = sub_2749FCD64();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v5;
}

uint64_t sub_2749577DC(char a1)
{
  result = 0x403C000000000000;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0x4038000000000000;
      break;
    case 2:
    case 3:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_274957864()
{
  type metadata accessor for WFAddToHomeScreenItem(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  v3 = v2 - v1;
  v4 = OUTLINED_FUNCTION_32_1();
  sub_2747CA634(v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  v8 = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v8 = 1;
      goto LABEL_3;
    case 3:
    case 4:
    case 5:
    case 6:
      return result;
    default:
LABEL_3:
      sub_2747CA698(v3);
      result = v8;
      break;
  }

  return result;
}

void sub_27495791C(uint64_t a1)
{
  v2 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  type metadata accessor for WFAddToHomeScreenItem(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = (v11 - v10);
  sub_2747CA634(v1, v11 - v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x277C5FB60](3);
      OUTLINED_FUNCTION_32_1();
      sub_2749FCE24();

      return;
    case 2u:
      (*(v4 + 32))(v8, v12, v2);
      MEMORY[0x277C5FB60](4);
      sub_274957C88(&qword_280967AF0, MEMORY[0x277D7D388], MEMORY[0x277D7D390]);
      sub_2749FCD04();
      (*(v4 + 8))(v8, v2);
      return;
    case 3u:
      v15 = *v12;
      MEMORY[0x277C5FB60](6);
      v14 = v15;
      goto LABEL_9;
    case 4u:
      v14 = 0;
      goto LABEL_9;
    case 5u:
      v14 = 1;
      goto LABEL_9;
    case 6u:
      v14 = 5;
LABEL_9:
      MEMORY[0x277C5FB60](v14);
      break;
    default:
      v13 = *v12;
      MEMORY[0x277C5FB60](2);
      sub_2749FD614();

      break;
  }
}

uint64_t sub_274957B34()
{
  sub_2749FDDF4();
  sub_27495791C(v1);
  return sub_2749FDE44();
}

uint64_t sub_274957B80(uint64_t a1)
{
  sub_2749FDDF4();
  sub_27495791C(v2);
  return sub_2749FDE44();
}

unint64_t sub_274957C08(uint64_t a1)
{
  result = sub_274772A28();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_274957C30(uint64_t a1)
{
  result = sub_274957C88(&qword_280967B00, type metadata accessor for WFAddToHomeScreenItem, &unk_274A28C1C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_274957C88(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274957CD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E18, &qword_274A10100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_274957D38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

char *sub_274957D9C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D759E8]) init];
  v10 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton;
  *&v4[v10] = [objc_opt_self() buttonWithType_];
  v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_showsCancelButton] = 0;
  *&v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarCancelButtonHorizontalSpacing] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHeight] = 0x4047000000000000;
  *&v4[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButtonTrailingInset] = 0x4034000000000000;
  v45.receiver = v4;
  v45.super_class = type metadata accessor for WFDrawerSearchControlsView();
  v11 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 labelColor];
  v15 = [v14 colorWithAlphaComponent_];

  v16 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
  [v13 addSubview_];
  if (_UISolariumEnabled())
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v18 = [*&v13[v16] searchTextField];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v17 setFrame_];
    [v17 setAutoresizingMask_];
    [v17 setUserInteractionEnabled_];
    [v17 setBackgroundColor_];
    v27 = [v17 layer];
    [v27 setCornerRadius_];

    v28 = [*&v13[v16] searchTextField];
    [v28 insertSubview:v17 atIndex:0];
  }

  [*&v13[v16] setSearchBarStyle_];
  [*&v13[v16] _setBackdropStyle_];
  [*&v13[v16] setDrawsBackground_];
  v29 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton;
  v30 = *&v13[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton];
  sub_2749FCE14("Cancel", 6);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v31 = qword_28159E448;
  v32 = sub_2749FCD64();
  v33 = sub_2749FCD64();

  v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

  v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v37 = v36;

  sub_274958C38(v35, v37, 0, v30);
  v38 = [*&v13[v29] titleLabel];
  if (v38)
  {
    v39 = v38;
    v40 = [objc_opt_self() preferredFontForTextStyle_];
    [v39 setFont_];
  }

  v41 = *&v13[v29];
  sub_274958CAC();
  OUTLINED_FUNCTION_86();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v41;
  v43 = sub_2749FD644(0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, 0, 0);
  [v42 addAction:v43 forControlEvents:64];

  [*&v13[v29] setAlpha_];
  [v13 addSubview_];

  return v13;
}

void sub_2749582C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
    v5 = [*(Strong + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) delegate];
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        v7 = *&v3[v4];
        [v6 searchBarCancelButtonClicked_];
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_2749583BC(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WFDrawerSearchControlsView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v2 = [v1 effectiveUserInterfaceLayoutDirection];
  v3 = *&v1[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton];
  [v3 intrinsicContentSize];
  v4 = *&v1[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
  if (v1[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_showsCancelButton] == 1 && v2 == 1)
  {
    [v3 frame];
    CGRectGetMaxX(v7);
  }

  OUTLINED_FUNCTION_1_47();
  CGRectGetWidth(v8);
  CGRectMake_2();
  [v4 setFrame_];
  if (v2 != 1)
  {
    [v1 bounds];
    CGRectGetWidth(v9);
  }

  CGRectMake_2();
  return [v3 setFrame_];
}

void sub_2749585BC(char a1)
{
  v2 = a1 & 1;
  if (v1[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_showsCancelButton] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_showsCancelButton] = v2;
    OUTLINED_FUNCTION_86();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v5 = v1;
    v6 = sub_27480FE78(sub_274958BC4, v4, 0.4, 1.0);
    [v6 startAnimation];

    CGAffineTransformMakeScale(&v17, 0.92, 0.94);
    if (a1)
    {
      v7 = *&v5[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton];
      v16 = v17;
      [v7 setTransform_];
      v8 = 0.3;
      v9 = 0.12;
    }

    else
    {
      v9 = 0.0;
      v8 = 0.15;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = v2;
    v11 = *&v17.c;
    *(v10 + 32) = *&v17.a;
    *(v10 + 48) = v11;
    *(v10 + 64) = *&v17.tx;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v12 = v5;
    v13 = sub_27480FE78(sub_274958BCC, v10, v8, 1.0);
    OUTLINED_FUNCTION_86();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v16.tx = sub_274958BDC;
    *&v16.ty = v14;
    *&v16.a = MEMORY[0x277D85DD0];
    *&v16.b = 1107296256;
    *&v16.c = sub_274957D38;
    *&v16.d = &block_descriptor_44;
    v15 = _Block_copy(&v16);

    [v13 addCompletion_];
    _Block_release(v15);
    [v13 startAnimationAfterDelay_];
  }
}

id sub_274958828(void *a1)
{
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

id sub_274958870(uint64_t a1, char a2, uint64_t a3)
{
  v3 = (a3 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton);
  v5 = 0.0;
  if (a2)
  {
    v5 = 1.0;
  }

  v6 = MEMORY[0x277CBF2C0];
  if ((a2 & 1) == 0)
  {
    v6 = a3;
  }

  v11 = *v6;
  if (a2)
  {
    v3 = (MEMORY[0x277CBF2C0] + 16);
  }

  v10 = *v3;
  if (a2)
  {
    v7 = (MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    v7 = (a3 + 32);
  }

  [v4 setAlpha_];
  v12[0] = v11;
  v12[1] = v10;
  v12[2] = v9;
  return [v4 setTransform_];
}

void sub_274958920(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton);
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v6[0] = *MEMORY[0x277CBF2C0];
    v6[1] = v5;
    v6[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v4 setTransform_];
  }
}

void sub_274958A0C()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D759E8]) init];
  v2 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButton;
  *(v0 + v2) = [objc_opt_self() buttonWithType_];
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_showsCancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarCancelButtonHorizontalSpacing) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset) = 0x4031000000000000;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHeight) = 0x4047000000000000;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_cancelButtonTrailingInset) = 0x4034000000000000;
  sub_2749FDAE4();
  __break(1u);
}

id WFDrawerSearchControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFDrawerSearchControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_274958C38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2749FCD64();

  [a4 setTitle:v6 forState:a3];
}

unint64_t sub_274958CAC()
{
  result = qword_28096D750;
  if (!qword_28096D750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28096D750);
  }

  return result;
}

void sub_274958CF8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A08, &qword_274A28E98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __src - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A10, &qword_274A28EA0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = __src - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A18, &qword_274A28EA8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = __src - v13;
  *v6 = sub_2749FB524();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A20, &qword_274A28EB0);
  sub_274958F7C(v2, &v6[*(v15 + 44)]);
  sub_2749FC914();
  sub_2749FB004();
  sub_27475CF54(v6, v10, &qword_280970A08, &qword_274A28E98);
  memcpy(&v10[*(v8 + 44)], __src, 0x70uLL);
  sub_2749FBC74();
  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  sub_27475CF54(v10, v14, &qword_280970A10, &qword_274A28EA0);
  OUTLINED_FUNCTION_2_44(&v14[*(v12 + 44)]);
  sub_2749FBC84();
  sub_2749FA9E4();
  OUTLINED_FUNCTION_36();
  sub_27475CF54(v14, a1, &qword_280970A18, &qword_274A28EA8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A28, &qword_274A28EB8);
  OUTLINED_FUNCTION_2_44(a1 + *(v16 + 36));
}

uint64_t sub_274958F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A30, &qword_274A28EC0);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x28223BE20](v3);
  v44 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A38, &qword_274A28EC8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - v9;
  v10 = type metadata accessor for ModePickerView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A40, &qword_274A28ED0);
  v14 = *(v13 - 8);
  v41 = v13;
  v42 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A48, &qword_274A28ED8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v43 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v38 = a1;
  v39 = &v38 - v20;
  sub_27495B280(a1, &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  sub_27495B2E4(&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A50, &qword_274A28EE0);
  v40 = MEMORY[0x277CE1198];
  sub_27472AB6C(&qword_280970A58, &qword_280970A50, &qword_274A28EE0, MEMORY[0x277CE1198]);
  sub_2749FC624();
  sub_2749FB574();
  v23 = MEMORY[0x277CDF028];
  sub_27472AB6C(&qword_280970A60, &qword_280970A40, &qword_274A28ED0, MEMORY[0x277CDF028]);
  v24 = v39;
  v25 = v41;
  sub_2749FC0E4();

  (*(v42 + 8))(v16, v25);
  v26 = v38;
  sub_27495B280(v38, &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_27495B2E4(&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v21);
  v50 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A68, &qword_274A28EE8);
  sub_27472AB6C(&qword_280970A70, &qword_280970A68, &qword_274A28EE8, v40);
  v28 = v44;
  sub_2749FC624();
  sub_2749FB574();
  sub_27472AB6C(&qword_280970A78, &qword_280970A30, &qword_274A28EC0, v23);
  v29 = v45;
  v30 = v47;
  sub_2749FC0E4();

  (*(v48 + 8))(v28, v30);
  v31 = v24;
  v32 = v24;
  v33 = v43;
  sub_27473F28C(v32, v43, &qword_280970A48, &qword_274A28ED8);
  v34 = v46;
  sub_27473F28C(v29, v46, &qword_280970A38, &qword_274A28EC8);
  v35 = v49;
  sub_27473F28C(v33, v49, &qword_280970A48, &qword_274A28ED8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A80, &qword_274A28EF0);
  sub_27473F28C(v34, v35 + *(v36 + 48), &qword_280970A38, &qword_274A28EC8);
  sub_27472ECBC(v29, &qword_280970A38, &qword_274A28EC8);
  sub_27472ECBC(v31, &qword_280970A48, &qword_274A28ED8);
  sub_27472ECBC(v34, &qword_280970A38, &qword_274A28EC8);
  return sub_27472ECBC(v33, &qword_280970A48, &qword_274A28ED8);
}

uint64_t sub_2749595D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v67 = sub_2749FA304();
  v61 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v60 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AD0, &qword_274A28F40);
  MEMORY[0x28223BE20](v66);
  v69 = v57 - v4;
  v5 = sub_2749FA2F4();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FA2C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AD8, &qword_274A28F48);
  MEMORY[0x28223BE20](v71);
  v13 = v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AE0, &qword_274A28F50);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v68 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v57 - v17;
  v19 = *(type metadata accessor for ModePickerView(0) + 20);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0, &unk_274A1D110);
  v70 = a1;
  v64 = v20;
  sub_2749FC7D4();
  v21 = sub_274880838();
  v23 = v22;

  if (v23 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v57[1] = v19;
  v58 = v18;
  v24 = v71;
  sub_27471CF08(0, &unk_28096B160, 0x277D79FC8);
  sub_2747EC0F4(v21, v23);
  v25 = sub_274881438(v21, v23);
  if (!v25)
  {
    sub_2747BD018(v21, v23);
    v18 = v58;
LABEL_5:
    v59 = v8;
    v43 = objc_opt_self();
    v44 = [v43 grayColor];
    v45 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

    v46 = [v43 secondarySystemFillColor];
    v47 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

    v48 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];
    v49 = objc_allocWithZone(MEMORY[0x277D7A158]);
    sub_274881D2C(0x6F746F6870, 0xE500000000000000, v45, v48);
    (*(v9 + 104))(v11, *MEMORY[0x277D7D680], v59);
    (*(v62 + 104))(v7, *MEMORY[0x277D7D6D0], v63);
    v50 = v60;
    sub_2749FA314();
    v51 = v61;
    v52 = v67;
    (*(v61 + 16))(v69, v50, v67);
    swift_storeEnumTagMultiPayload();
    sub_27495B588();
    sub_27495B674(&qword_28159E800, 255, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    sub_2749FB7B4();
    (*(v51 + 8))(v50, v52);
    goto LABEL_6;
  }

  v26 = v25;
  [objc_allocWithZone(MEMORY[0x277D79FD0]) initWithImage_];
  v61 = v21;
  (*(v9 + 104))(v11, *MEMORY[0x277D7D680], v8);
  (*(v62 + 104))(v7, *MEMORY[0x277D7D6D0], v63);
  sub_2749FA314();
  v27 = sub_2749FC914();
  v29 = v28;
  v30 = &v13[*(v24 + 36)];
  sub_2749FA324();
  v31 = sub_2749FC454();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C4F8, &qword_274A1D228);
  *&v30[*(v32 + 52)] = v31;
  *&v30[*(v32 + 56)] = 256;
  LOBYTE(v31) = sub_2749FBC64();
  sub_2749FA9E4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C500, &qword_274A1D230) + 36)];
  *v41 = v31;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AF8, &qword_274A28F58) + 36)];
  *v42 = v27;
  v42[1] = v29;
  sub_27473F28C(v13, v69, &qword_280970AD8, &qword_274A28F48);
  swift_storeEnumTagMultiPayload();
  sub_27495B588();
  sub_27495B674(&qword_28159E800, 255, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
  v18 = v58;
  sub_2749FB7B4();

  sub_2747BD018(v61, v23);
  sub_27472ECBC(v13, &qword_280970AD8, &qword_274A28F48);
LABEL_6:
  sub_2749FC7D4();
  v53 = sub_27487FC44();

  v54 = v68;
  sub_27473F28C(v18, v68, &qword_280970AE0, &qword_274A28F50);
  v55 = v65;
  sub_27473F28C(v54, v65, &qword_280970AE0, &qword_274A28F50);
  *(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B00, &qword_274A28F60) + 48)) = (v53 & 1) == 0;
  sub_27472ECBC(v18, &qword_280970AE0, &qword_274A28F50);
  return sub_27472ECBC(v54, &qword_280970AE0, &qword_274A28F50);
}

double sub_274959E0C(uint64_t a1, char a2)
{
  type metadata accessor for ModePickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0, &unk_274A1D110);
  sub_2749FC7D4();
  sub_27487FCCC(a2);

  return result;
}

uint64_t sub_274959E80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_2749FB634();
  *(a5 + 8) = 0x4014000000000000;
  *(a5 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(a1);
}

uint64_t sub_274959EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_2749FA2F4();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2749FA2C4();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A90, &qword_274A28F00);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v23 = *(type metadata accessor for ModePickerView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0, &unk_274A1D110);
  sub_2749FC7D4();
  sub_2748809F8();

  (*(v6 + 104))(v8, *MEMORY[0x277D7D680], v24);
  (*(v25 + 104))(v5, *MEMORY[0x277D7D6D0], v26);
  sub_2749FA314();
  v16 = sub_2749FC914();
  v18 = v17;
  v19 = &v15[*(v10 + 44)];
  sub_27495A228(a1, v19);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970A98, &qword_274A28F08) + 36));
  *v20 = v16;
  v20[1] = v18;
  sub_2749FC7D4();
  LOBYTE(v16) = sub_27487FC44();

  sub_27473F28C(v15, v13, &qword_280970A90, &qword_274A28F00);
  v21 = v27;
  sub_27473F28C(v13, v27, &qword_280970A90, &qword_274A28F00);
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AA0, &qword_274A28F10) + 48)) = v16 & 1;
  sub_27472ECBC(v15, &qword_280970A90, &qword_274A28F00);
  return sub_27472ECBC(v13, &qword_280970A90, &qword_274A28F00);
}

uint64_t sub_27495A228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749FA334();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AA8, &qword_274A28F18);
  MEMORY[0x28223BE20](v6);
  v48 = v45 - v7;
  v8 = sub_2749FAA94();
  v52 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v45 - v12;
  v14 = sub_2749F9EB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModePickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0, &unk_274A1D110);
  sub_2749FC7D4();
  sub_27487F7A4(v17);

  if ((*(v15 + 88))(v17, v14) == *MEMORY[0x277D7D380])
  {
    v45[1] = a1;
    v46 = v6;
    v47 = a2;
    (*(v15 + 96))(v17, v14);
    v18 = *(v17 + 1);

    sub_27471CF08(0, &qword_280968670, 0x277D79E20);
    v19 = [v18 endColor];
    v20 = objc_opt_self();
    v21 = [v20 whiteColor];
    v22 = sub_2749FD604();

    if (v22 & 1) != 0 && (v23 = [v18 startColor], v24 = objc_msgSend(v20, sel_whiteColor), v25 = sub_2749FD604(), v23, v24, v26 = v18, (v25))
    {
      sub_27473B1B4();
      v27 = v52;
      (*(v52 + 104))(v11, *MEMORY[0x277CDF3D0], v8);
      v28 = sub_2749FAA84();
      v29 = *(v27 + 8);
      v29(v11, v8);
      v29(v13, v8);
      v6 = v46;
      if (v28)
      {
        v30 = v49;
        sub_2749FA324();
        sub_2749FC454();
        v31 = sub_2749FC484();

        sub_2749FAB34();
        v33 = v50;
        v32 = v51;
        v34 = v26;
        v35 = v48;
        (*(v50 + 16))(v48, v30, v51);
        v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AB0, &qword_274A28F20) + 36);
        v37 = v54;
        *v36 = v53;
        *(v36 + 16) = v37;
        *(v36 + 32) = v55;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AB8, &qword_274A28F28);
        *(v35 + *(v38 + 52)) = v31;
        *(v35 + *(v38 + 56)) = 256;

        v39 = sub_2749FC914();
        v41 = v40;

        (*(v33 + 8))(v30, v32);
        v42 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970AC0, &qword_274A28F30) + 36));
        *v42 = v39;
        v42[1] = v41;
        a2 = v47;
        sub_27475CF54(v35, v47, &qword_280970AA8, &qword_274A28F18);
        v43 = 0;
      }

      else
      {

        v43 = 1;
        a2 = v47;
      }
    }

    else
    {

      v43 = 1;
      v6 = v46;
      a2 = v47;
    }
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    v43 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v43, 1, v6);
}

double sub_27495A7F4@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_2749FC514();
    sub_2749FBD14();
    swift_getKeyPath();
    sub_2749FC3F4();
  }

  else
  {
    sub_2749FC514();
    sub_2749FBD14();
    swift_getKeyPath();
    sub_2749FC4A4();
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B28, &unk_274A29048);
  sub_27495B9B8();
  sub_2749FB7B4();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

id sub_27495A940()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 systemRedColor];
  [v5 setBackgroundColor_];

  v7 = [v5 widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  [v8 setActive_];
  v9 = [v5 heightAnchor];
  v10 = [v9 constraintEqualToConstant_];

  [v10 setActive_];
  v14[3] = ObjectType;
  v14[0] = v5;
  v11 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v12 = sub_2748859DC(v14, sel_onTap);
  [v5 addGestureRecognizer_];

  return v5;
}

uint64_t sub_27495ABD8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC10WorkflowUI33HomeScreenModePickerConfiguration11ContentView_configuration;
  swift_beginAccess();
  return sub_2747B960C(v1 + v3, a1);
}

uint64_t sub_27495AC30(__int128 *a1)
{
  v3 = OBJC_IVAR____TtCC10WorkflowUI33HomeScreenModePickerConfiguration11ContentView_configuration;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  sub_2747A45FC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_27495AD70()
{
  v0 = objc_allocWithZone(type metadata accessor for HomeScreenModePickerConfiguration.ContentView());

  v2 = sub_27495AE78(v1, v0);
  sub_27495B674(&qword_2809709E0, v3, type metadata accessor for HomeScreenModePickerConfiguration.ContentView, &unk_274A28D7C);
  return v2;
}

id sub_27495AE78(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ModePickerView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[3] = type metadata accessor for HomeScreenModePickerConfiguration();
  v18[4] = sub_27495B674(&qword_2809709E8, v8, type metadata accessor for HomeScreenModePickerConfiguration, &unk_274A28DBC);
  v18[0] = a1;
  sub_2747B960C(v18, a2 + OBJC_IVAR____TtCC10WorkflowUI33HomeScreenModePickerConfiguration11ContentView_configuration);
  v17.receiver = a2;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2747B960C(v18, v16);
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F9B0, &qword_274A28DF0);
  if (swift_dynamicCast())
  {
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for HomeScreenIconState(0);
    sub_27495B674(&qword_280968B38, 255, type metadata accessor for HomeScreenIconState, &unk_274A1CEF8);

    sub_2749FC804();
    v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809709F0, &qword_274A28E30));
    v12 = sub_2749FADF4();
    [v10 addSubview_];
    v13 = [v12 wf:v10 addConstraintsToFillSuperview:?];

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return v10;
}

uint64_t type metadata accessor for ModePickerView(uint64_t a1)
{
  result = qword_2809709F8;
  if (!qword_2809709F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27495B180(uint64_t a1)
{
  sub_27472C73C(319, &qword_280968A60, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_27472C73C(319, &qword_28096C408, type metadata accessor for HomeScreenIconState, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_27495B280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModePickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27495B2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModePickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for ModePickerView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0, &unk_274A1D110);
  OUTLINED_FUNCTION_9();
  (*(v5 + 8))(v0 + v2 + v4);

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_27495B588()
{
  result = qword_280970AE8;
  if (!qword_280970AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970AD8, &qword_274A28F48);
    sub_27495B674(&qword_28159E800, 255, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    sub_27472AB6C(&qword_280970AF0, &qword_280970AF8, &qword_274A28F58, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970AE8);
  }

  return result;
}

uint64_t sub_27495B674(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

uint64_t getEnumTagSinglePayload for EnablementCheckmark(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EnablementCheckmark(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_27495B860(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_27495B8E4()
{
  result = qword_280970B18;
  if (!qword_280970B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970A10, &qword_274A28EA0);
    sub_27472AB6C(&qword_280970B20, &qword_280970A08, &qword_274A28E98, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970B18);
  }

  return result;
}

unint64_t sub_27495B9B8()
{
  result = qword_280970B30;
  if (!qword_280970B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970B28, &unk_274A29048);
    sub_27488701C();
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0, &qword_274A15B50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970B30);
  }

  return result;
}

unint64_t sub_27495BA70()
{
  result = qword_280970B38;
  if (!qword_280970B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970B40, &unk_274A29058);
    sub_27495B9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970B38);
  }

  return result;
}

id sub_27495BAFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BE8, &unk_274A0FDD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_274A11F50;
  v1 = *MEMORY[0x277D7CFE0];
  v2 = *MEMORY[0x277D7CFD8];
  *(v0 + 32) = *MEMORY[0x277D7CFE0];
  *(v0 + 40) = v2;
  v6 = *MEMORY[0x277D7CFE8];
  *(v0 + 48) = *MEMORY[0x277D7CFE8];
  off_280970B48 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

uint64_t static WFSmartPromptStatus.allCases.getter()
{
  if (qword_280966C70 != -1)
  {
    OUTLINED_FUNCTION_0_40(&qword_280966C70);
  }

  swift_beginAccess();
}

uint64_t static WFSmartPromptStatus.allCases.setter(void *a1)
{
  if (qword_280966C70 != -1)
  {
    OUTLINED_FUNCTION_0_40(&qword_280966C70);
  }

  swift_beginAccess();
  off_280970B48 = a1;
}

uint64_t (*static WFSmartPromptStatus.allCases.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280966C70 != -1)
  {
    OUTLINED_FUNCTION_0_40(&qword_280966C70);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_27495BCF0(uint64_t a1)
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  v4 = v4 && v1 == v3;
  if (v4)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
LABEL_18:
    sub_2749FCE14("Always Allow", 12, v19, v20);
    goto LABEL_23;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v5)
  {

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
LABEL_20:
    sub_2749FCE14("Don’t Allow", 13);
    goto LABEL_23;
  }

  v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v9 = v8;
  if (v7 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v9 == v10)
  {
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_0();

    if ((v12 & 1) == 0)
    {
      v20 = 0;
      v19 = 28;
      OUTLINED_FUNCTION_7_31();
      __break(1u);
LABEL_17:

      goto LABEL_18;
    }
  }

  sub_2749FCE14("Ask Each Time", 13);
LABEL_23:
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
  }

  OUTLINED_FUNCTION_32();
  v13 = sub_2749FCD64();
  OUTLINED_FUNCTION_32();
  v14 = sub_2749FCD64();

  v16 = OUTLINED_FUNCTION_13_1(v15, sel_localizedStringForKey_value_table_);

  v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v17;
}

uint64_t sub_27495BEE8(uint64_t a1)
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  v4 = v4 && v1 == v3;
  if (v4)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
LABEL_18:
    sub_2749FCE14("Delete Without Asking", 21, v19, v20);
    goto LABEL_19;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_18();
  if (v4 && v1 == v5)
  {

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();

  if (v2)
  {
LABEL_23:
    sub_2749FCE14("Never Delete", 12);
    goto LABEL_19;
  }

  v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v9 = v8;
  if (v7 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v9 == v10)
  {
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_0();

    if ((v12 & 1) == 0)
    {
      v20 = 0;
      v19 = 54;
      OUTLINED_FUNCTION_7_31();
      __break(1u);
LABEL_17:

      goto LABEL_18;
    }
  }

  sub_2749FCE14("Ask To Delete", 13);
LABEL_19:
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
  }

  OUTLINED_FUNCTION_32();
  v13 = sub_2749FCD64();
  OUTLINED_FUNCTION_32();
  v14 = sub_2749FCD64();

  v16 = OUTLINED_FUNCTION_13_1(v15, sel_localizedStringForKey_value_table_);

  v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v17;
}

BOOL sub_27495C0E4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

uint64_t sub_27495C124@<X0>(uint64_t *a1@<X8>)
{
  result = WFSmartPromptStatus.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27495C194@<X0>(uint64_t *a1@<X8>)
{
  result = static WFSmartPromptStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27495C1F0@<X0>(uint64_t a1@<X8>)
{
  v26[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B60, &qword_274A291A8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v5 = v26 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B68, &qword_274A291B0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B70, &qword_274A291B8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - v11;
  v13 = *v1;
  if (v13 == 2)
  {
    v14 = sub_27495C588();
    v26[1] = v15;
    v26[2] = v14;
    v26[4] = a1;
    v26[3] = v26;
    MEMORY[0x28223BE20](v14);
    v26[-2] = v1;
    v16 = OUTLINED_FUNCTION_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    sub_27472AB6C(&qword_280970B98, &qword_280970B90, &qword_274A291C8, MEMORY[0x277CDEFF0]);
    sub_2749FC674();
    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_39(&qword_280970B80, &qword_280970B70, &qword_274A291B8);
    OUTLINED_FUNCTION_2_45();
    sub_27472AB6C(v18, v19, v20, v21);
    sub_2749FB7B4();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    *v5 = sub_2749FB524();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B78, &qword_274A291C0);
    sub_27495CBF4(v1, v13 & 1, &v5[*(v23 + 44)]);
    sub_2747B97A0(v5, v8, &qword_280970B60, &qword_274A291A8);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_39(&qword_280970B80, &qword_280970B70, &qword_274A291B8);
    OUTLINED_FUNCTION_2_45();
    sub_27472AB6C(v24, &qword_280970B60, &qword_274A291A8, v25);
    sub_2749FB7B4();
    return sub_27472ECBC(v5, &qword_280970B60, &qword_274A291A8);
  }
}

uint64_t sub_27495C588()
{
  v1 = v0;
  sub_2749FD0A4();
  sub_27495DBE8(v0, &v10);
  v2 = sub_2749FD094();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(v0 + 16);
  *(v3 + 32) = *v0;
  *(v3 + 48) = v5;
  *(v3 + 64) = *(v0 + 32);
  *(v3 + 80) = *(v0 + 48);
  sub_27495DBE8(v0, &v10);
  v6 = sub_2749FD094();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = *(v1 + 16);
  *(v7 + 32) = *v1;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(v1 + 32);
  *(v7 + 80) = *(v1 + 48);
  sub_2749FC6F4();
  return v10;
}

uint64_t sub_27495C6A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_2749FA2F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FA2C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2749FA304();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = *(v1 + 24);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v13)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
    v15 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v16 = objc_allocWithZone(MEMORY[0x277D7A158]);
    sub_27491A250(0x6C6C69662E707061, 0xE800000000000000, v15);
  }

  (*(v8 + 104))(v10, *MEMORY[0x277D7D6A0], v7);
  (*(v4 + 104))(v6, *MEMORY[0x277D7D6D0], v3);
  v17 = v13;
  sub_2749FA314();
  v18 = *(v2 + 16);
  if (v18)
  {
    v19 = *(v2 + 8);
    v20 = v18;
  }

  else
  {
    sub_2749FCE14("Uninstalled Application", 23);
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v21 = qword_28159E448;
    v22 = sub_2749FCD64();
    v23 = sub_2749FCD64();

    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    v19 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v20 = v25;
  }

  v43 = v19;
  v44 = v20;
  sub_27475D0D0();

  v26 = sub_2749FBEE4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  KeyPath = swift_getKeyPath();
  v38 = &v38;
  v43 = v26;
  v44 = v28;
  v30 &= 1u;
  v45 = v30;
  v46 = v32;
  v47 = KeyPath;
  v48 = 1;
  v49 = 0;
  v34 = MEMORY[0x28223BE20](KeyPath);
  *(&v38 - 2) = &v43;
  MEMORY[0x28223BE20](v34);
  v35 = v42;
  *(&v38 - 2) = v42;
  sub_274754DBC(v26, v28, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BA0, &unk_274A29200);
  sub_27495DB30();
  sub_27495DE88(&qword_28159E800, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
  v36 = v40;
  sub_2749FC584();
  sub_27477656C(v26, v28, v30);

  sub_27477656C(v26, v28, v30);

  return (*(v39 + 8))(v35, v36);
}

uint64_t sub_27495CBF4@<X0>(void *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v46[3] = a2;
  v59 = a3;
  v4 = sub_2749FAE54();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BB0, &qword_274A29218);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BB8, &qword_274A29220);
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v46 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BC0, &qword_274A29228);
  v13 = MEMORY[0x28223BE20](v48);
  v55 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B90, &qword_274A291C8);
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v50 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v47 = v46 - v19;
  sub_27495C6A8(v46 - v19);
  sub_2749FCE14("Authorization Status", 20);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v20 = qword_28159E448;
  v21 = sub_2749FCD64();
  v22 = sub_2749FCD64();

  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v26 = v25;

  v64 = v24;
  v65 = v26;
  v27 = a1[4];
  v28 = a1[5];
  v66 = a1[6];
  v67 = v27;
  v61 = v27;
  v62 = v28;
  v63 = v66;
  MEMORY[0x28223BE20](v29);
  sub_274855714(&v67, v60);

  sub_27495DCA0(&v66, v60);
  type metadata accessor for WFSmartPromptStatus(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BC8, &qword_274A29230);
  sub_27495DE88(&qword_280967060, type metadata accessor for WFSmartPromptStatus, &unk_274A0D580);
  sub_27495DD04();
  sub_27475D0D0();
  sub_2749FC664();
  v30 = sub_27472AB6C(&qword_280970BE8, &qword_280970BB0, &qword_274A29218, MEMORY[0x277CDF038]);
  sub_2749FC064();
  (*(v7 + 8))(v9, v6);
  v31 = v56;
  sub_2749FAE44();
  v61 = v6;
  v62 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v49;
  v33 = v54;
  v34 = v58;
  sub_2749FC004();
  (*(v57 + 8))(v31, v34);
  (*(v53 + 8))(v12, v33);
  v35 = v47;
  *(v32 + *(v48 + 36)) = 257;
  v36 = v50;
  v37 = v51;
  v38 = *(v51 + 16);
  v39 = v52;
  v38(v50, v35, v52);
  v40 = v55;
  sub_2747B97A0(v32, v55, &qword_280970BC0, &qword_274A29228);
  v41 = v59;
  v38(v59, v36, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BF0, &qword_274A29240);
  v43 = &v41[*(v42 + 48)];
  *v43 = 0;
  v43[8] = 1;
  sub_2747B97A0(v40, &v41[*(v42 + 64)], &qword_280970BC0, &qword_274A29228);
  sub_27472ECBC(v32, &qword_280970BC0, &qword_274A29228);
  v44 = *(v37 + 8);
  v44(v35, v39);
  sub_27472ECBC(v40, &qword_280970BC0, &qword_274A29228);
  return (v44)(v36, v39);
}

uint64_t sub_27495D2C4(char a1)
{
  if (qword_280966C70 != -1)
  {
LABEL_23:
    swift_once();
  }

  swift_beginAccess();
  v2 = off_280970B48;
  v3 = *(off_280970B48 + 2);

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if (v4 >= v2[2])
    {
      __break(1u);
      goto LABEL_23;
    }

    v6 = v2[v4 + 4];
    if ((a1 & 1) == 0)
    {
      v15 = v6;
      goto LABEL_16;
    }

    v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = v8;
    if (v7 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v9 == v10)
    {
      v14 = v6;

LABEL_13:
      if ([objc_opt_self() allowsDeletingWithoutConfirmation])
      {
        goto LABEL_16;
      }

      ++v4;
    }

    else
    {
      v12 = sub_2749FDCC4();
      v13 = v6;

      if (v12)
      {
        goto LABEL_13;
      }

LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27476DB9C(0, *(v5 + 16) + 1, 1);
      }

      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_27476DB9C(v16 > 1, v17 + 1, 1);
      }

      ++v4;
      *(v5 + 16) = v17 + 1;
      *(v5 + 8 * v17 + 32) = v6;
    }
  }

  *(swift_allocObject() + 16) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970B58, &qword_274A290A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BE0, &qword_274A29238);
  sub_27472AB6C(&qword_280970BF8, &qword_280970B58, &qword_274A290A8, MEMORY[0x277D83980]);
  sub_27495DD88();
  sub_27495DE88(&qword_280970C00, type metadata accessor for WFSmartPromptStatus, &protocol conformance descriptor for WFSmartPromptStatus);
  return sub_2749FC764();
}

uint64_t sub_27495D5C4(void **a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970C08, &qword_274A29248);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970C10, &qword_274A29250);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = *a1;
  if (a2)
  {
    v25 = sub_27495BEE8(v11);
    v26 = v12;
    sub_27475D0D0();
    *v10 = sub_2749FBEE4();
    *(v10 + 1) = v13;
    v10[16] = v14 & 1;
    *(v10 + 3) = v15;
    *(v10 + 4) = v11;
    v10[40] = 1;
    (*(v8 + 16))(v6, v10, v7);
  }

  else
  {
    v25 = sub_27495BCF0(v11);
    v26 = v16;
    sub_27475D0D0();
    *v10 = sub_2749FBEE4();
    *(v10 + 1) = v17;
    v10[16] = v18 & 1;
    *(v10 + 3) = v19;
    *(v10 + 4) = v11;
    v10[40] = 1;
    (*(v8 + 16))(v6, v10, v7);
  }

  swift_storeEnumTagMultiPayload();
  type metadata accessor for WFSmartPromptStatus(255);
  v21 = v20;
  v22 = sub_27495DE88(&qword_280967060, type metadata accessor for WFSmartPromptStatus, &unk_274A0D580);
  v23 = v11;
  v25 = MEMORY[0x277CE0BD8];
  v26 = v21;
  v27 = MEMORY[0x277CE0BC8];
  v28 = v22;
  swift_getOpaqueTypeConformance2();
  sub_2749FB7B4();
  return (*(v8 + 8))(v10, v7);
}

void sub_27495D870(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BA8, &qword_274A29210);
  MEMORY[0x277C5E410](&v12, v3);
  v4 = v12;
  v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v7 = v6;
  if (v5 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v7 == v8)
  {

    v11 = 0;
  }

  else
  {
    v10 = sub_2749FDCC4();

    v11 = v10 ^ 1;
  }

  *a2 = v11 & 1;
}

uint64_t sub_27495D964(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1)
  {
    v4 = MEMORY[0x277D7CFD8];
  }

  else
  {
    v4 = MEMORY[0x277D7CFE0];
  }

  *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970BA8, &qword_274A29210);
  return sub_2749FC6C4();
}

double sub_27495D9E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  sub_274754DBC(v3, v2, v4);

  return result;
}

uint64_t sub_27495DA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749FA304();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_27495DB30()
{
  result = qword_28159E6E8;
  if (!qword_28159E6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970BA0, &unk_274A29200);
    sub_27472AB6C(&qword_28159E5A8, &unk_28096D970, &qword_274A18560, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6E8);
  }

  return result;
}

uint64_t objectdestroyTm_18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27495DCA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFSmartPromptStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27495DD04()
{
  result = qword_280970BD0;
  if (!qword_280970BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970BC8, &qword_274A29230);
    sub_27495DD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970BD0);
  }

  return result;
}

unint64_t sub_27495DD88()
{
  result = qword_280970BD8;
  if (!qword_280970BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970BE0, &qword_274A29238);
    type metadata accessor for WFSmartPromptStatus(255);
    sub_27495DE88(&qword_280967060, type metadata accessor for WFSmartPromptStatus, &unk_274A0D580);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970BD8);
  }

  return result;
}

uint64_t sub_27495DE88(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unsigned __int8 *sub_27495DED0(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_27495DF7C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27495E050(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_27495E064(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_27495E080()
{
  result = qword_280970C18;
  if (!qword_280970C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970C20, qword_274A29268);
    sub_27472AB6C(&qword_280970B80, &qword_280970B70, &qword_274A291B8, MEMORY[0x277CDF068]);
    sub_27472AB6C(&qword_280970B88, &qword_280970B60, &qword_274A291A8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970C18);
  }

  return result;
}

_BYTE *sub_27495E164(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_27495E240()
{
  result = qword_280970C28;
  if (!qword_280970C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970C28);
  }

  return result;
}

uint64_t sub_27495E314(uint64_t a1, char a2)
{
  _s11SectionTypeOMa(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8, &qword_274A294A8);
  OUTLINED_FUNCTION_43();
  v10 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  _s13RowIdentifierOMa(0);
  sub_2749619D8(&qword_280970CC0, _s11SectionTypeOMa, &unk_274A29450);
  sub_2749619D8(&qword_280970CC8, _s13RowIdentifierOMa, &unk_274A293C0);
  sub_2749FA684();
  v14 = sub_27487FC44();
  v15 = type metadata accessor for WFGlyphCategory(0);
  __swift_storeEnumTagSinglePayload(v7, 1, 5, v15);
  v16 = OUTLINED_FUNCTION_11_27();
  sub_27495F648(v16, v17);
  OUTLINED_FUNCTION_0_41();
  sub_274961A20(v7, v18);
  if (v14)
  {
    __swift_storeEnumTagSinglePayload(v7, 3, 5, v15);
    v19 = OUTLINED_FUNCTION_11_27();
    sub_27495F648(v19, v20);
    OUTLINED_FUNCTION_0_41();
    sub_274961A20(v7, v21);
    if (!a1)
    {
      GlyphRegistry.categories.getter();
    }

    v25 = OUTLINED_FUNCTION_11_27();
    sub_27495FBB8(v25, v26);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 2, 5, v15);
    v22 = OUTLINED_FUNCTION_11_27();
    sub_27495F648(v22, v23);
    OUTLINED_FUNCTION_0_41();
    sub_274961A20(v7, v24);
  }

  sub_274960464();
  sub_2749FA724();
  sub_274960FA4(a2 & 1);
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_27495E5B0(uint64_t a1, uint64_t a2)
{
  sub_2749F9164();
  OUTLINED_FUNCTION_43();
  v56 = v5;
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v54 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0, &qword_274A1B340);
  OUTLINED_FUNCTION_34(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v55 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CA0, &qword_274A29498);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  _s13RowIdentifierOMa(0);
  OUTLINED_FUNCTION_9();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CA8, &qword_274A294A0);
  OUTLINED_FUNCTION_34(v21);
  OUTLINED_FUNCTION_4();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  v26 = &v50 + *(v23 + 56) - v24;
  sub_274961A78(a1, &v50 - v24);
  sub_274961A78(a2, v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_3_52();
      v28 = OUTLINED_FUNCTION_44();
      sub_274961A78(v28, v29);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BC8, &unk_274A13B80);
      v31 = v30[12];
      v32 = *&v18[v31];
      v33 = v30[16];
      v34 = *&v18[v33];
      v35 = v30[20];
      v52 = v18[v35];
      v53 = v34;
      if (OUTLINED_FUNCTION_14_22() != 1)
      {
        sub_27472ECBC(v18, &qword_2809707E0, &qword_274A1B340);
        goto LABEL_19;
      }

      v36 = *&v26[v31];
      v51 = *&v26[v33];
      v37 = v26[v35];
      v38 = *(v11 + 48);
      sub_274961B98(v18, v14, &qword_2809707E0, &qword_274A1B340);
      sub_274961B98(v26, &v14[v38], &qword_2809707E0, &qword_274A1B340);
      v39 = v57;
      if (__swift_getEnumTagSinglePayload(v14, 1, v57) != 1)
      {
        v41 = v55;
        sub_274961AD0(v14, v55);
        if (__swift_getEnumTagSinglePayload(&v14[v38], 1, v39) != 1)
        {
          v50 = v37;
          v42 = v56;
          v43 = &v14[v38];
          v44 = v54;
          (*(v56 + 32))(v54, v43, v39);
          OUTLINED_FUNCTION_2_46();
          sub_2749619D8(v45, v46, MEMORY[0x277CC9610]);
          v47 = sub_2749FCD54();
          v48 = *(v42 + 8);
          v48(v44, v39);
          v48(v41, v39);
          v37 = v50;
          sub_27472ECBC(v14, &qword_2809707E0, &qword_274A1B340);
          if (v47)
          {
            goto LABEL_26;
          }

LABEL_29:
          OUTLINED_FUNCTION_6_38();
          return 0;
        }

        (*(v56 + 8))(v41, v39);
LABEL_24:
        sub_27472ECBC(v14, &qword_280970CA0, &qword_274A29498);
        goto LABEL_29;
      }

      if (__swift_getEnumTagSinglePayload(&v14[v38], 1, v39) != 1)
      {
        goto LABEL_24;
      }

      sub_27472ECBC(v14, &qword_2809707E0, &qword_274A1B340);
LABEL_26:
      if (v32 != v36 || v53 != v51)
      {
        goto LABEL_29;
      }

      v49 = v52 ^ v37;
      OUTLINED_FUNCTION_6_38();
      return v49 ^ 1u;
    case 2u:
      if (OUTLINED_FUNCTION_14_22() != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 3u:
      if (OUTLINED_FUNCTION_14_22() != 3)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 4u:
      if (OUTLINED_FUNCTION_14_22() != 4)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 5u:
      if (OUTLINED_FUNCTION_14_22() != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 6u:
      if (OUTLINED_FUNCTION_14_22() != 6)
      {
        goto LABEL_19;
      }

LABEL_17:
      OUTLINED_FUNCTION_6_38();
      return 1;
    default:
      OUTLINED_FUNCTION_3_52();
      sub_274961A78(v25, v20);
      if (OUTLINED_FUNCTION_14_22())
      {
LABEL_19:
        sub_27472ECBC(v25, &qword_280970CA8, &qword_274A294A0);
        return 0;
      }

      else
      {
        v27 = *v20 == *v26;
        sub_274961A20(v25, _s13RowIdentifierOMa);
      }

      return v27;
  }
}

uint64_t sub_27495EB0C()
{
  v1 = type metadata accessor for WFGlyphCategory(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  v6 = _s11SectionTypeOMa(0);
  v7 = OUTLINED_FUNCTION_34(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_4_41();
  sub_274961A78(v0, v10);
  v11 = 0x53206C6F626D7953;
  switch(__swift_getEnumTagSinglePayload(v10, 5, v1))
  {
    case 1u:
      OUTLINED_FUNCTION_7_32();
      v11 = v13 + 1;
      break;
    case 2u:
      OUTLINED_FUNCTION_7_32();
      v11 = v14 + 5;
      break;
    case 3u:
      return v11;
    case 4u:
      OUTLINED_FUNCTION_7_32();
      v11 = v12 + 3;
      break;
    case 5u:
      OUTLINED_FUNCTION_7_32();
      v11 = v15 | 0xE;
      break;
    default:
      sub_274961B40(v10, v5);
      sub_2749FD934();
      MEMORY[0x277C5EBC0](0xD000000000000011, 0x8000000274A34650);
      sub_2749FDA74();
      v11 = 0;
      sub_274961A20(v5, type metadata accessor for WFGlyphCategory);
      break;
  }

  return v11;
}

uint64_t sub_27495ECFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFGlyphCategory(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = _s11SectionTypeOMa(0);
  v10 = OUTLINED_FUNCTION_34(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970C98, &qword_274A29490);
  OUTLINED_FUNCTION_34(v14);
  OUTLINED_FUNCTION_4();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v19 = *(v16 + 56);
  sub_274961A78(a1, &v30 - v17);
  sub_274961A78(a2, &v18[v19]);
  switch(__swift_getEnumTagSinglePayload(v18, 5, v4))
  {
    case 1u:
      if (OUTLINED_FUNCTION_9_28() == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    case 2u:
      if (OUTLINED_FUNCTION_9_28() != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 3u:
      if (OUTLINED_FUNCTION_9_28() != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 4u:
      if (OUTLINED_FUNCTION_9_28() != 4)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 5u:
      if (OUTLINED_FUNCTION_9_28() == 5)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    default:
      OUTLINED_FUNCTION_4_41();
      sub_274961A78(v18, v13);
      if (OUTLINED_FUNCTION_9_28())
      {
        sub_274961A20(v13, type metadata accessor for WFGlyphCategory);
LABEL_14:
        sub_27472ECBC(v18, &qword_280970C98, &qword_274A29490);
        return 0;
      }

      sub_274961B40(&v18[v19], v8);
      if ((sub_2749F9134() & 1) == 0 || ((v22 = *(v4 + 20), v23 = *(v13 + v22), v24 = *(v13 + v22 + 8), v25 = (v8 + v22), v23 == *v25) ? (v26 = v24 == v25[1]) : (v26 = 0), !v26 && (sub_2749FDCC4() & 1) == 0 || (sub_274785420(*(v13 + *(v4 + 24)), *(v8 + *(v4 + 24))) & 1) == 0))
      {
        OUTLINED_FUNCTION_8_36();
        sub_274961A20(v8, v28);
        sub_274961A20(v13, v4);
        OUTLINED_FUNCTION_0_41();
        sub_274961A20(v18, v29);
        return 0;
      }

      OUTLINED_FUNCTION_8_36();
      sub_274961A20(v8, v27);
      sub_274961A20(v13, v4);
LABEL_13:
      OUTLINED_FUNCTION_0_41();
      sub_274961A20(v18, v20);
      return 1;
  }
}

uint64_t sub_27495EFD0()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = type metadata accessor for WFGlyphCategory(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = _s11SectionTypeOMa(0);
  v8 = OUTLINED_FUNCTION_34(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_4_41();
  sub_274961A78(v0, v11);
  switch(__swift_getEnumTagSinglePayload(v11, 5, v2))
  {
    case 1u:
      v15 = 0;
      goto LABEL_8;
    case 2u:
      v15 = 1;
      goto LABEL_8;
    case 3u:
      v15 = 2;
      goto LABEL_8;
    case 4u:
      v15 = 4;
      goto LABEL_8;
    case 5u:
      v15 = 5;
LABEL_8:
      result = MEMORY[0x277C5FB60](v15);
      break;
    default:
      sub_274961B40(v11, v6);
      MEMORY[0x277C5FB60](3);
      sub_2749F9164();
      OUTLINED_FUNCTION_2_46();
      sub_2749619D8(v12, v13, MEMORY[0x277CC9600]);
      sub_2749FCD04();
      result = sub_274961A20(v6, type metadata accessor for WFGlyphCategory);
      break;
  }

  return result;
}

uint64_t sub_27495F1B4(uint64_t a1)
{
  v2 = sub_2749F9164();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0, &qword_274A1B340);
  v10 = OUTLINED_FUNCTION_34(v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  _s13RowIdentifierOMa(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  OUTLINED_FUNCTION_3_52();
  sub_274961A78(v1, v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BC8, &unk_274A13B80);
      v23 = *&v19[*(v22 + 48)];
      v27[3] = v19[*(v22 + 80)];
      sub_274961B98(v19, v15, &qword_2809707E0, &qword_274A1B340);
      MEMORY[0x277C5FB60](5);
      sub_274961AD0(v15, v13);
      if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
      {
        sub_2749FDE14();
      }

      else
      {
        (*(v4 + 32))(v8, v13, v2);
        sub_2749FDE14();
        OUTLINED_FUNCTION_2_46();
        sub_2749619D8(v25, v26, MEMORY[0x277CC9600]);
        sub_2749FCD04();
        (*(v4 + 8))(v8, v2);
      }

      MEMORY[0x277C5FB60](v23);
      sub_2749FDE24();
      sub_2749FDE14();
      return sub_27472ECBC(v15, &qword_2809707E0, &qword_274A1B340);
    case 2u:
      v21 = 0;
      return MEMORY[0x277C5FB60](v21);
    case 3u:
      v21 = 1;
      return MEMORY[0x277C5FB60](v21);
    case 4u:
      v21 = 3;
      return MEMORY[0x277C5FB60](v21);
    case 5u:
      v21 = 4;
      return MEMORY[0x277C5FB60](v21);
    case 6u:
      v21 = 6;
      return MEMORY[0x277C5FB60](v21);
    default:
      v20 = *v19;
      MEMORY[0x277C5FB60](2);
      v21 = v20;
      return MEMORY[0x277C5FB60](v21);
  }
}

uint64_t sub_27495F4CC(uint64_t (*a1)(void *))
{
  sub_2749FDDF4();
  a1(v3);
  return sub_2749FDE44();
}

uint64_t sub_27495F55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2749FDDF4();
  a4(v6);
  return sub_2749FDE44();
}

uint64_t sub_27495F5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + qword_280970C48 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + qword_280970C30) = a2;
  *(v6 + qword_280970C38) = a3;
  *(v6 + qword_280970C40) = a4;

  return sub_2749FA6D4();
}

uint64_t sub_27495F648(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BB8, &qword_274A13B78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_2749FA4E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s13RowIdentifierOMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s11SectionTypeOMa(0);
  v30 = *(v14 - 8);
  v31 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274961A78(a1, v16);
  v17 = type metadata accessor for WFGlyphCategory(0);
  switch(__swift_getEnumTagSinglePayload(v16, 5, v17))
  {
    case 1u:
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B48, &qword_274A0FD38);
      *(swift_allocObject() + 16) = xmmword_274A0EF10;
      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    case 2u:
      v28 = a1;
      v32 = MEMORY[0x277D84F90];
      sub_27476D608();
      v22 = 0;
      v23 = v32;
      do
      {
        *v13 = byte_28838FC30[v22 + 32];
        swift_storeEnumTagMultiPayload();
        v32 = v23;
        v24 = *(v23 + 16);
        if (v24 >= *(v23 + 24) >> 1)
        {
          sub_27476D608();
          v23 = v32;
        }

        ++v22;
        *(v23 + 16) = v24 + 1;
        sub_274961B40(v13, v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24);
      }

      while (v22 != 3);
      a1 = v28;
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CF8, &qword_274A294D8);
      v25 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_274A0EF10;
      sub_274961A78(a1, v26 + v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8, &qword_274A294A8);
      sub_2749FA654();

      sub_274961A78(a1, v5);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v31);
      sub_2749FA634();

      return sub_27472ECBC(v5, &qword_280968BB8, &qword_274A13B78);
    case 4u:
    case 5u:
      goto LABEL_3;
    default:
      sub_274961A20(v16, _s11SectionTypeOMa);
LABEL_3:
      sub_2749FA3D4();
      v18 = sub_2749FA4D4();
      v19 = sub_2749FD2D4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        MEMORY[0x277C61040](v20, -1, -1);
      }

      return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_27495FBB8(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v4 = _s11SectionTypeOMa(0);
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WFGlyphCategory(0);
  *&v69 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BB8, &qword_274A13B78);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v61 - v11;
  v72 = _s13RowIdentifierOMa(0);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentTraitCollection];
  v66 = [v14 userInterfaceStyle];

  v65 = v2;

  v15 = sub_274795BF8();
  v17 = v16;

  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v71 = v4;
  if (v19)
  {
    v20 = v65;

    v21 = sub_274795BF8();
    v23 = v22;

    sub_2747B9BAC(v21, v23);
    v25 = v24;

    v26 = *(v25 + 16);
    if (v26)
    {
      v68 = v7;
      v74 = MEMORY[0x277D84F90];
      sub_27476D608();
      *&v69 = *(v20 + qword_280970C30);
      v27 = v74;
      v28 = 32;
      v29 = v25;
      do
      {
        v30 = *(v25 + v28);
        v31 = sub_27487F5DC();
        if (v33)
        {
          v34 = v30 == v31;
        }

        else
        {
          sub_2747C6E20(v31, v32, 0);
          v34 = 0;
        }

        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BC8, &unk_274A13B80);
        v36 = v35[12];
        v37 = v35[16];
        v38 = v35[20];
        v39 = sub_2749F9164();
        __swift_storeEnumTagSinglePayload(v13, 1, 1, v39);
        *&v13[v36] = v66;
        *&v13[v37] = v30;
        v13[v38] = v34;
        swift_storeEnumTagMultiPayload();
        v74 = v27;
        v40 = *(v27 + 16);
        if (v40 >= *(v27 + 24) >> 1)
        {
          sub_27476D608();
          v27 = v74;
        }

        *(v27 + 16) = v40 + 1;
        sub_274961B40(v13, v27 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v40);
        v28 += 2;
        --v26;
        v41 = v71;
        v42 = v67;
        v25 = v29;
      }

      while (v26);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CF8, &qword_274A294D8);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_274A0EF10;
      v45 = v68;
      __swift_storeEnumTagSinglePayload(v44 + v43, 4, 5, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8, &qword_274A294A8);
      sub_2749FA654();

      v46 = v62;
      __swift_storeEnumTagSinglePayload(v62, 4, 5, v45);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v41);
      sub_2749FA634();
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CF8, &qword_274A294D8);
      v59 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v60 = swift_allocObject();
      v69 = xmmword_274A0EF10;
      *(v60 + 16) = xmmword_274A0EF10;
      __swift_storeEnumTagSinglePayload(v60 + v59, 5, 5, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8, &qword_274A294A8);
      sub_2749FA654();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B48, &qword_274A0FD38);
      *(swift_allocObject() + 16) = v69;
      swift_storeEnumTagMultiPayload();
      v46 = v62;
      __swift_storeEnumTagSinglePayload(v62, 5, 5, v7);
      __swift_storeEnumTagSinglePayload(v46, 0, 1, v71);
      sub_2749FA634();
    }

    return sub_27472ECBC(v46, &qword_280968BB8, &qword_274A13B78);
  }

  else
  {
    v47 = a1;
    v48 = *(a1 + 16);
    v49 = v62;
    v51 = v66;
    v50 = v67;
    if (v48)
    {
      v52 = 0;
      v53 = v47 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v64 = *(v69 + 72);
      v63 = xmmword_274A0EF10;
      do
      {
        v72 = v53;
        v70 = v48;
        sub_274961A78(v53, v9);
        sub_274961A78(v9, v6);
        v54 = __swift_storeEnumTagSinglePayload(v6, 0, 5, v7);
        MEMORY[0x28223BE20](v54);
        *(&v61 - 4) = v65;
        *(&v61 - 3) = v9;
        *(&v61 - 2) = v51;
        sub_2748889D8(sub_274961BF4, (&v61 - 6), v55);
        v68 = v52;
        *&v69 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CF8, &qword_274A294D8);
        v57 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = v63;
        sub_274961A78(v6, v58 + v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8, &qword_274A294A8);
        sub_2749FA654();
        v52 = v68;

        sub_274961A78(v6, v49);
        __swift_storeEnumTagSinglePayload(v49, 0, 1, v71);
        sub_2749FA634();

        sub_27472ECBC(v49, &qword_280968BB8, &qword_274A13B78);
        sub_274961A20(v6, _s11SectionTypeOMa);
        result = sub_274961A20(v9, type metadata accessor for WFGlyphCategory);
        v53 = v72 + v64;
        v48 = v70 - 1;
      }

      while (v70 != 1);
    }
  }

  return result;
}

uint64_t sub_274960464()
{
  v91 = sub_2749F9284();
  v96 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v75 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = _s13RowIdentifierOMa(0);
  v88 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CD8, &qword_274A294B8);
  MEMORY[0x28223BE20](v4);
  v87 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CE0, &qword_274A294C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v75 - v10);
  v98 = type metadata accessor for WFGlyphCategory(0);
  MEMORY[0x28223BE20](v98);
  v80 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970C98, &qword_274A29490);
  MEMORY[0x28223BE20](v92);
  v14 = &v75 - v13;
  v15 = _s11SectionTypeOMa(0);
  v93 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v97 = &v75 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CE8, &qword_274A294C8);
  MEMORY[0x28223BE20](v83);
  v79 = (&v75 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CF0, &qword_274A294D0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v82 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = (&v75 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CB8, &qword_274A294A8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v75 - v27;
  v95 = sub_2749FA674();
  sub_2749FA744();
  v84 = sub_2749FA674();
  v29 = *(v26 + 8);
  v76 = v28;
  v78 = v25;
  v77 = v26 + 8;
  v75 = v29;
  result = v29(v28, v25);
  v31 = 0;
  v89 = qword_280970C48;
  v32 = (v96 + 8);
  v96 = v9;
  v86 = v18;
  while (1)
  {
    v33 = *(v84 + 16);
    if (v31 == v33)
    {
      v85 = v31;
      v34 = 1;
      v36 = v82;
      v35 = v83;
    }

    else
    {
      if (v31 >= v33)
      {
        goto LABEL_57;
      }

      v37 = v31 + 1;
      v35 = v83;
      v38 = v84 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v31;
      v39 = *(v83 + 48);
      v40 = v79;
      *v79 = v31;
      sub_274961A78(v38, v40 + v39);
      v41 = v40;
      v36 = v82;
      sub_274961B98(v41, v82, &qword_280970CE8, &qword_274A294C8);
      v34 = 0;
      v85 = v37;
    }

    __swift_storeEnumTagSinglePayload(v36, v34, 1, v35);
    v42 = v81;
    sub_274961B98(v36, v81, &qword_280970CF0, &qword_274A294D0);
    if (__swift_getEnumTagSinglePayload(v42, 1, v35) == 1)
    {
    }

    v94 = *v42;
    sub_274961B40(v42 + *(v35 + 48), v97);
    v43 = 0;
    v44 = *(v95 + 16);
LABEL_8:
    if (v43 == v44)
    {
      break;
    }

    v45 = v43++;
    v46 = *(v92 + 48);
    sub_274961A78(v95 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v45, v14);
    sub_274961A78(v97, &v14[v46]);
    switch(__swift_getEnumTagSinglePayload(v14, 5, v98))
    {
      case 1u:
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98) != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_51;
      case 2u:
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98) == 2)
        {
          goto LABEL_51;
        }

        goto LABEL_21;
      case 3u:
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98) == 3)
        {
          goto LABEL_51;
        }

        goto LABEL_21;
      case 4u:
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98) == 4)
        {
          goto LABEL_51;
        }

        goto LABEL_21;
      case 5u:
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98) != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_51;
      default:
        v47 = v86;
        sub_274961A78(v14, v86);
        if (__swift_getEnumTagSinglePayload(&v14[v46], 5, v98))
        {
          sub_274961A20(v47, type metadata accessor for WFGlyphCategory);
LABEL_21:
          sub_27472ECBC(v14, &qword_280970C98, &qword_274A29490);
          goto LABEL_8;
        }

        v48 = &v14[v46];
        v49 = v80;
        sub_274961B40(v48, v80);
        if ((sub_2749F9134() & 1) == 0 || ((v50 = *(v98 + 20), v51 = &v86[v50], result = *&v86[v50], v52 = *&v86[v50 + 8], v53 = (v49 + v50), *v51 == *v53) ? (v54 = v52 == v53[1]) : (v54 = 0), !v54 && (result = sub_2749FDCC4(), (result & 1) == 0) || (v55 = *(v98 + 24), v56 = *&v86[v55], v57 = *(v49 + v55), v58 = *(v56 + 16), v58 != *(v57 + 16))))
        {
LABEL_38:
          sub_274961A20(v49, type metadata accessor for WFGlyphCategory);
          sub_274961A20(v86, type metadata accessor for WFGlyphCategory);
          sub_274961A20(v14, _s11SectionTypeOMa);
          goto LABEL_8;
        }

        if (v58)
        {
          v59 = v56 == v57;
        }

        else
        {
          v59 = 1;
        }

        if (!v59)
        {
          v60 = (v56 + 32);
          v61 = (v57 + 32);
          while (v58)
          {
            if (*v60 != *v61)
            {
              goto LABEL_38;
            }

            ++v60;
            ++v61;
            if (!--v58)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_56;
        }

LABEL_50:
        sub_274961A20(v49, type metadata accessor for WFGlyphCategory);
        sub_274961A20(v86, type metadata accessor for WFGlyphCategory);
LABEL_51:
        sub_274961A20(v14, _s11SectionTypeOMa);
LABEL_52:
        result = sub_274961A20(v97, _s11SectionTypeOMa);
        v31 = v85;
        break;
    }
  }

  v62 = v76;
  sub_2749FA744();
  v63 = v78;
  v64 = sub_2749FA664();
  result = v75(v62, v63);
  v65 = 0;
  v66 = *(v64 + 16);
  while (1)
  {
    if (v65 == v66)
    {
      v67 = 1;
      v65 = v66;
      goto LABEL_45;
    }

    if ((v65 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v65 >= *(v64 + 16))
    {
      goto LABEL_55;
    }

    v68 = v87;
    v69 = v64 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v65;
    v70 = *(v4 + 48);
    *v87 = v65;
    sub_274961A78(v69, v68 + v70);
    v71 = v68;
    v9 = v96;
    sub_274961B98(v71, v96, &qword_280970CD8, &qword_274A294B8);
    v67 = 0;
    ++v65;
LABEL_45:
    __swift_storeEnumTagSinglePayload(v9, v67, 1, v4);
    sub_274961B98(v9, v11, &qword_280970CE0, &qword_274A294C0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
    {

      goto LABEL_52;
    }

    v72 = *v11;
    sub_274961B40(v11 + *(v4 + 48), v3);
    v73 = v3;
    v74 = v90;
    MEMORY[0x277C5AFB0](v72, v94);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2747C5BF0(v74, v73);
      swift_unknownObjectRelease();
    }

    (*v32)(v74, v91);
    result = sub_274961A20(v73, _s13RowIdentifierOMa);
    v3 = v73;
    v9 = v96;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_274960FA4(int a1)
{
  v2 = v1;
  v27 = a1;
  v3 = _s11SectionTypeOMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BB0, &qword_274A13B70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970CD0, &qword_274A294B0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = _s13RowIdentifierOMa(0);
  sub_2749619D8(&qword_280970CC8, _s13RowIdentifierOMa, &unk_274A293C0);
  sub_2749FA784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B48, &qword_274A0FD38);
  v12 = swift_allocObject();
  v29 = xmmword_274A0EF10;
  *(v12 + 16) = xmmword_274A0EF10;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  v30 = v8;
  sub_2749FA754();

  sub_27472ECBC(v7, &qword_280968BB0, &qword_274A13B70);
  v13 = sub_27487FC44();
  v28 = v2;
  if (v13)
  {
    *(swift_allocObject() + 16) = xmmword_274A0F620;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
    sub_2749FA754();

    sub_27472ECBC(v7, &qword_280968BB0, &qword_274A13B70);

    v14 = sub_274795BF8();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    v24 = v17;

    v18 = sub_274795AA4();

    *(swift_allocObject() + 16) = v29;
    swift_storeEnumTagMultiPayload();
    if ((v18 & 1) != 0 || v24)
    {
      v19 = v30;
      sub_2749FA774();
      goto LABEL_10;
    }

    v19 = v30;
  }

  else
  {
    *(swift_allocObject() + 16) = v29;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
    v19 = v30;
    sub_2749FA754();

    sub_27472ECBC(v7, &qword_280968BB0, &qword_274A13B70);
    *(swift_allocObject() + 16) = v29;
    swift_storeEnumTagMultiPayload();
  }

  sub_2749FA764();
LABEL_10:

  v20 = type metadata accessor for WFGlyphCategory(0);
  v21 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 5, v20);
  sub_2749FA734();
  sub_274961A20(v21, _s11SectionTypeOMa);
  return (*(v25 + 8))(v10, v19);
}

uint64_t sub_2749614FC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_27487F5DC();
  if (v10)
  {
    v11 = v7 == v8;
  }

  else
  {
    sub_2747C6E20(v8, v9, 0);
    v11 = 0;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BC8, &unk_274A13B80);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  v16 = sub_2749F9164();
  (*(*(v16 - 8) + 16))(a4, a2, v16);
  __swift_storeEnumTagSinglePayload(a4, 0, 1, v16);
  *(a4 + v13) = a3;
  *(a4 + v14) = v7;
  *(a4 + v15) = v11;
  _s13RowIdentifierOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_274961644()
{

  v1 = v0 + qword_280970C48;

  return sub_2747545BC(v1);
}

uint64_t sub_2749616A4(uint64_t a1)
{

  v2 = a1 + qword_280970C48;

  return sub_2747545BC(v2);
}

uint64_t sub_274961770(uint64_t a1)
{
  v1 = type metadata accessor for WFGlyphCategory(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2749617E8(uint64_t a1)
{
  sub_274961854(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_274961854(uint64_t a1)
{
  if (!qword_280970C80)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809707E0, &qword_274A1B340);
    type metadata accessor for UIUserInterfaceStyle(255);
    type metadata accessor for WFGlyphCharacter(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280970C80);
    }
  }
}

uint64_t sub_2749619D8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274961A20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_274961A78(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_59_0();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

uint64_t sub_274961AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0, &qword_274A1B340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274961B40(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_59_0();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

uint64_t sub_274961B98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

id sub_274961C24(double a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v6 = [objc_opt_self() effectWithVariableBlurRadius:a3 imageMask:a1];
  [v5 setEffect_];

  return v5;
}

uint64_t sub_274961CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2749624FC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274961D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2749624FC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274961D8C(uint64_t a1)
{
  sub_2749624FC();
  sub_2749FB774();
  __break(1u);
}

double sub_274961DC0@<D0>(uint64_t *a1@<X8>)
{
  sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
  v2 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v4 = sub_27480D818(v2, v3);
  v5 = sub_2749FCF74();
  [v4 setValue:v5 forKey:*MEMORY[0x277CDA540]];

  v6 = sub_2749F9884();
  v7 = *MEMORY[0x277CDA360];
  [v4 setValue:v6 forKey:*MEMORY[0x277CDA360]];

  v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v10 = sub_27480D818(v8, v9);
  v11 = sub_2749F9884();
  [v10 setValue:v11 forKey:v7];

  v12 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v14 = sub_27480D818(v12, v13);
  v15 = sub_2749F9884();
  [v14 setValue:v15 forKey:*MEMORY[0x277CDA4F0]];

  v16 = sub_2749FD034();
  [v14 setValue:v16 forKey:*MEMORY[0x277CDA4C8]];

  v17 = sub_2749FD034();
  [v14 setValue:v17 forKey:*MEMORY[0x277CDA448]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v18 = swift_allocObject();
  *&result = 3;
  *(v18 + 16) = xmmword_274A154D0;
  *(v18 + 32) = v4;
  *(v18 + 40) = v10;
  *(v18 + 48) = v14;
  *a1 = v18;
  return result;
}

uint64_t static CustomMaterialConfiguration.searchBackdrop.getter@<X0>(void *a1@<X8>)
{
  if (qword_280966C78 != -1)
  {
    swift_once();
  }

  *a1 = qword_280970D00;
}

uint64_t *CustomMaterialUIView.init(configuration:)(uint64_t *a1)
{
  v2 = *a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CustomMaterialUIView();
  v3 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = [v3 layer];
  v5 = sub_27479BED0(v2);

  sub_27480FF3C(v5, v4);

  return v3;
}

id CustomMaterialUIView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CustomMaterialUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomMaterialUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *CustomMaterialView.makeUIView(context:)()
{
  v3 = *v0;
  v1 = objc_allocWithZone(type metadata accessor for CustomMaterialUIView());

  return CustomMaterialUIView.init(configuration:)(&v3);
}

uint64_t sub_274962300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274962550();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274962364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274962550();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2749623C8(uint64_t a1)
{
  sub_274962550();
  sub_2749FB774();
  __break(1u);
}

unint64_t sub_2749623F4()
{
  result = qword_280970D10;
  if (!qword_280970D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970D10);
  }

  return result;
}

unint64_t sub_2749624A8()
{
  result = qword_280970D18;
  if (!qword_280970D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970D18);
  }

  return result;
}

unint64_t sub_2749624FC()
{
  result = qword_280970D20;
  if (!qword_280970D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970D20);
  }

  return result;
}

unint64_t sub_274962550()
{
  result = qword_280970D28;
  if (!qword_280970D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970D28);
  }

  return result;
}

BOOL sub_2749625B0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_2749625F4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      ++v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0, &unk_274A10120);
      result = sub_2749F95E4();
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_27496267C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      ++v2;
      v3 = OUTLINED_FUNCTION_45();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      result = sub_2749F95E4();
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_274962734(uint64_t a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0, &unk_274A10120);
  v3 = sub_2749F9524();
  v4 = sub_2749625B0(a2, v3);

  if (!v4)
  {
    v18 = a2;
    OUTLINED_FUNCTION_103_1(v5, v6, v7, v8, v9, v10, v11, v12, v16, MEMORY[0x277D84F90]);
    v5 = sub_2749F95E4();
  }

  v18 = a2;
  OUTLINED_FUNCTION_103_1(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17[0]);
  v13 = sub_2749F95C4();
  if (*v14)
  {

    sub_2747829A0();
  }

  return v13(v17, 0);
}

uint64_t sub_274962804(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = sub_2749F9524();
  v10 = a2 & 1;
  LOBYTE(a5) = a5(v10, v9);

  if ((a5 & 1) == 0)
  {
    v25 = v10;
    OUTLINED_FUNCTION_103_1(v11, v12, v13, v14, v15, v16, v17, v18, v23, MEMORY[0x277D84F90]);
    v11 = sub_2749F95E4();
  }

  v25 = v10;
  OUTLINED_FUNCTION_103_1(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24[0]);
  v19 = sub_2749F95C4();
  if (*v20)
  {

    a6(v21);
  }

  return v19(v24, 0);
}

void sub_2749628E8()
{
  OUTLINED_FUNCTION_49_2();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D98, &qword_274A29870);
  OUTLINED_FUNCTION_34(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DA8, &qword_274A10080);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_156_0(v4, 1, v7);
  if (v9)
  {
    sub_27472ECBC(v4, &qword_280970D98, &qword_274A29870);
    v10 = *v0;
    sub_274799308();
    if (v11)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_93_2();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096F040, &unk_274A22380);
      OUTLINED_FUNCTION_143_1(v12);
      v13 = OUTLINED_FUNCTION_246();
      sub_2747D31F8(v13, v1, &qword_280967DA8, &qword_274A10080);
      sub_274772A7C();
      sub_2749FDAA4();
      *v2 = v10;
    }

    OUTLINED_FUNCTION_63_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    sub_27472ECBC(v1, &qword_280970D98, &qword_274A29870);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_3_5();
    sub_2747D31F8(v14, v15, v16, v17);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_153_0();
    sub_2748F9E1C();
    *v0 = v22;
  }

  OUTLINED_FUNCTION_50_0();
}

void sub_274962AD4()
{
  OUTLINED_FUNCTION_49_2();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA8, &unk_274A29880);
  OUTLINED_FUNCTION_34(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F060, &qword_274A223A0);
  OUTLINED_FUNCTION_43();
  v12 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_156_0(v7, 1, v10);
  if (v14)
  {
    sub_27472ECBC(v7, &qword_280970DA8, &unk_274A29880);
    v15 = sub_2747985F4(v5);
    if (v16)
    {
      v17 = v15;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_93_2();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F058, &unk_274A298A0);
      OUTLINED_FUNCTION_143_1(v18);
      sub_2747D31F8(*(v30 + 56) + *(v12 + 72) * v17, v1, &qword_28096F060, &qword_274A223A0);
      sub_274772A28();
      OUTLINED_FUNCTION_47_3();
      sub_2749FDAA4();
      *v3 = v30;
    }

    OUTLINED_FUNCTION_63_0();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    sub_27472ECBC(v1, &qword_280970DA8, &unk_274A29880);
  }

  else
  {
    sub_2747D31F8(v7, v2, &qword_28096F060, &qword_274A223A0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2748FA210(v2, v5, isUniquelyReferenced_nonNull_native, v20, v21, v22, v23, v24, v29, *v3);
    *v3 = v31;
  }

  OUTLINED_FUNCTION_50_0();
}

void sub_274962CE0()
{
  OUTLINED_FUNCTION_49_2();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D70, &unk_274A29808);
  OUTLINED_FUNCTION_34(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFF0, &qword_274A22310);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_156_0(v4, 1, v7);
  if (v9)
  {
    sub_27472ECBC(v4, &qword_280970D70, &unk_274A29808);
    v10 = *v0;
    sub_274799308();
    if (v11)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_93_2();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFE8, &unk_274A29830);
      OUTLINED_FUNCTION_143_1(v12);
      v13 = OUTLINED_FUNCTION_246();
      sub_2747D31F8(v13, v1, &qword_28096EFF0, &qword_274A22310);
      sub_274772930();
      sub_2749FDAA4();
      *v2 = v10;
    }

    OUTLINED_FUNCTION_63_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    sub_27472ECBC(v1, &qword_280970D70, &unk_274A29808);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_3_5();
    sub_2747D31F8(v14, v15, v16, v17);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_153_0();
    sub_2748FA474();
    *v0 = v22;
  }

  OUTLINED_FUNCTION_50_0();
}

void *sub_274962ECC(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_2749FD844();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v4 > *(a2 + 16) >> 3)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_274974114(a1);
    return a2;
  }

  if (a2 < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_2749FD844() / 8 >= v4)
  {
    goto LABEL_14;
  }

  v6 = sub_2749FD844();
  sub_27476683C(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17, v18);
LABEL_11:
  v13 = OUTLINED_FUNCTION_44();

  return sub_27497453C(v13, v14);
}

uint64_t sub_274962FB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_274974358(a1);
    return a2;
  }

  else
  {

    return sub_274974BCC(a1, a2);
  }
}

void sub_274963008(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_27497444C();
  }

  else
  {
    sub_274974FF4();
  }
}

void sub_27496308C(uint64_t *a1, int a2)
{
  v4 = v2;
  HIDWORD(v274) = a2;
  v308 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90, &qword_274A29858);
  v6 = OUTLINED_FUNCTION_0_0(v5, &v307);
  v277 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_1(v273 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v273[0] = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D98, &qword_274A29870);
  OUTLINED_FUNCTION_34(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_1(v273 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DA8, &qword_274A10080);
  v16 = OUTLINED_FUNCTION_0_0(v15, v321);
  v293 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DC0, &qword_274A298B0);
  v21 = OUTLINED_FUNCTION_34(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v23);
  v24 = sub_2749FA4E4();
  v25 = OUTLINED_FUNCTION_0_0(v24, &v316);
  v305 = v26;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_70(v28 - v27);
  v314 = sub_2749F9284();
  v29 = OUTLINED_FUNCTION_27(v314);
  v31 = v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_54_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0, &qword_274A14050);
  v36 = OUTLINED_FUNCTION_34(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0, &unk_274A29860);
  v43 = OUTLINED_FUNCTION_34(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_54_11();
  OUTLINED_FUNCTION_85_1();
  v46 = *(v45 + 152);
  OUTLINED_FUNCTION_77(v2 + v46, v322);
  v310 = v46;
  sub_27473ADB8(v2 + v46, v2, &qword_280967DB0, &unk_274A29860);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB8, &unk_274A10090);
  v48 = sub_2749F9524();
  OUTLINED_FUNCTION_9_3();
  v50 = *(v49 + 8);
  v292 = v2;
  v311 = v50;
  v309 = v49 + 8;
  (v50)(v2, v47);
  v51 = sub_27475F988(v48);
  v313 = v47;
  v52 = sub_2749F9524();
  v289 = sub_27475F988(v52);
  sub_274963008(v289, v51);
  v288 = v53;
  OUTLINED_FUNCTION_85_1();
  v55 = *(v54 + 112);
  swift_beginAccess();
  v275 = v55;
  v298 = *(&v55->isa + v4) + 64;
  OUTLINED_FUNCTION_19_22();
  v58 = v57 & v56;
  v60 = ((v59 + 63) >> 6);
  v301 = v31 + 16;
  v312 = v31 + 32;
  v285 = *MEMORY[0x277D7A490];
  v294 = v31;
  v61 = (v31 + 8);
  v62 = v3;
  v307 = v61;
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_260(v63);
  v295 = v64;

  v65 = 0;
  OUTLINED_FUNCTION_257(MEMORY[0x277D84F98]);
  *&v66 = 136315138;
  v280 = v66;
  v290 = v4;
  v305 = v62;
  v302 = v39;
  v297 = v60;
LABEL_2:
  OUTLINED_FUNCTION_251();
  if (!v58)
  {
    goto LABEL_4;
  }

  do
  {
    v68 = v65;
LABEL_8:
    v69 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v70 = v295;
    v71 = v294;
    (*(v294 + 16))(v300, v295[6] + *(v294 + 72) * (v69 | (v68 << 6)), v314);
    OUTLINED_FUNCTION_245();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
    isa_low = SLODWORD(v60[6].isa);
    v39 = v302;
    (*(v71 + 32))();
    *(v39 + isa_low) = v70;
    OUTLINED_FUNCTION_36_14();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    v77 = v70;
    v62 = v305;
    v55 = i;
LABEL_9:
    sub_2747D31F8(v39, v55, &unk_280968DD0, &qword_274A14050);
    v78 = OUTLINED_FUNCTION_144();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(v78, v79);
    OUTLINED_FUNCTION_48_7(v80);
    if (v81)
    {

      *(&v275->isa + v4) = v276;

      OUTLINED_FUNCTION_85_1();
      v136 = *(v135 + 184);
      OUTLINED_FUNCTION_77(v4 + v136, &v319);
      v298 = v136;
      v137 = *(v4 + v136) + 64;
      OUTLINED_FUNCTION_19_22();
      v140 = (v139 & v138);
      v142 = (v141 + 63) >> 6;
      v305 = v143;

      v144 = 0;
      v309 = v137;
      for (i = v142; ; v142 = i)
      {
        if (!v140)
        {
          while (1)
          {
            v145 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              goto LABEL_78;
            }

            if (v145 >= v142)
            {
              v188 = OUTLINED_FUNCTION_32_1();
              __swift_instantiateConcreteTypeFromMangledNameV2(v188, v189);
              OUTLINED_FUNCTION_88_2();
              __swift_storeEnumTagSinglePayload(v190, v191, v192, v193);
              v140 = 0;
              goto LABEL_44;
            }

            v140 = *(v137 + 8 * v145);
            v144 = (v144 + 1);
            if (v140)
            {
              v144 = v145;
              break;
            }
          }
        }

        OUTLINED_FUNCTION_205();
        v147 = *(v305[6].isa + v146);
        OUTLINED_FUNCTION_159();
        v65 = &qword_274A10080;
        sub_27473ADB8(v148, v149, &qword_280967DA8, &qword_274A10080);
        v150 = OUTLINED_FUNCTION_32_1();
        v152 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v150, v151) + 48);
        v153 = v303;
        *v303 = v147;
        sub_2747D31F8(v58, &v153[v152], &qword_280967DA8, &qword_274A10080);
        OUTLINED_FUNCTION_36_14();
        __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
LABEL_44:
        OUTLINED_FUNCTION_159();
        sub_2747D31F8(v158, v159, &qword_280970DC0, &qword_274A298B0);
        v160 = OUTLINED_FUNCTION_32_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v160, v161);
        v162 = OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_156_0(v162, 1, &unk_280970DC8);
        if (v81)
        {

          OUTLINED_FUNCTION_159();
          OUTLINED_FUNCTION_26_9();
          sub_27473ADB8(v194, v195, v196, v197);
          v198 = v290;
          v199 = v310;
          OUTLINED_FUNCTION_94_2(v290 + v310);
          OUTLINED_FUNCTION_26_9();
          sub_2747D2B90(v200, v201, v202, v203);
          swift_endAccess();
          v204 = *((*MEMORY[0x277D85000] & *v198) + 0x88);
          OUTLINED_FUNCTION_77(v204 + v198, v318);
          v205 = OUTLINED_FUNCTION_61_5();
          v313 = v206;
          v206(v205);
          OUTLINED_FUNCTION_67_6();
          v207 = &unk_274A2989F >> 6;

          v208 = 0;
          if (v199)
          {
            while (1)
            {
              v209 = v208;
LABEL_65:
              OUTLINED_FUNCTION_91_3(__clz(__rbit64(v199)) | (v209 << 6));
              OUTLINED_FUNCTION_256();
              sub_2749F95E4();
            }
          }

          while (1)
          {
            v209 = v208 + 1;
            if (__OFADD__(v208, 1))
            {
              goto LABEL_79;
            }

            if (v209 >= v207)
            {
              swift_endAccess();

              if ((v274 & 0x100000000) != 0)
              {
                v312 = *((*MEMORY[0x277D85000] & *v290) + 0xC8);
                *(v290 + v312) = 1;
                sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
                v210 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                sub_27480D818(v210, v211);
                OUTLINED_FUNCTION_134();
                v212 = sub_2749FD184();
                v213 = OUTLINED_FUNCTION_24_1();
                [v213 v214];

                v215 = sub_2749FD034();
                v216 = OUTLINED_FUNCTION_24_1();
                [v216 v217];

                v218 = sub_2749FD034();
                v219 = OUTLINED_FUNCTION_24_1();
                [v219 v220];

                v221 = OUTLINED_FUNCTION_177();
                [v204 setValue:v221 forKey:*MEMORY[0x277CDA4E8]];

                v222 = sub_2749FCD64();
                v223 = OUTLINED_FUNCTION_24_1();
                [v223 v224];

                v225 = objc_opt_self();
                OUTLINED_FUNCTION_167(v225, &v323);
                OUTLINED_FUNCTION_35_13();
                v226();
                OUTLINED_FUNCTION_130_2();
                OUTLINED_FUNCTION_180();
                i = v227;
                v229 = v228 & 0xFFFFFFFFFFFFFFF8;
                OUTLINED_FUNCTION_101_2(v228 & 0xFFFFFFFFFFFFFFF8);
                v303 = v230;
                v231 = swift_allocObject();
                v232 = OUTLINED_FUNCTION_192(v231);
                v307 = v233;
                v235 = OUTLINED_FUNCTION_195(v232, v234);
                v236(v235);
                v237 = v290;
                *(v144 + v222) = v290;
                *&v222[v229] = v204;
                OUTLINED_FUNCTION_66_4();
                *(v238 - 256) = v239;
                OUTLINED_FUNCTION_60_6();
                v310 = v240;
                v317 = v241;
                OUTLINED_FUNCTION_218(block_descriptor_153);
                OUTLINED_FUNCTION_291();
                v242 = v237;
                v243 = v237;
                v311 = v204;

                OUTLINED_FUNCTION_82_2();
                v315 = MEMORY[0x277D85DD0];
                OUTLINED_FUNCTION_71_4();
                v317 = v244;
                v245 = OUTLINED_FUNCTION_218(block_descriptor_156);
                OUTLINED_FUNCTION_2_23();
                OUTLINED_FUNCTION_63_0();
                [v246 v247];
                _Block_release(v245);
                _Block_release(&selRef_setPlaceholder_);
                *(v242 + v312) = 1;
                v140 = v243;
                [v243 contentInset];
                [v243 contentOffset];
                OUTLINED_FUNCTION_18_25();
                OUTLINED_FUNCTION_35_13();
                v248();
                OUTLINED_FUNCTION_201();
                v249 = swift_allocObject();
                *(v249 + 16) = v288;
                v65 = v308;
                v250 = OUTLINED_FUNCTION_43_8(v249);
                v144 = v307;
                v307(v250);
                OUTLINED_FUNCTION_222(&v324);
                objc_allocWithZone(MEMORY[0x277D75D40]);

                v251 = v243;
                v252 = sub_27480FE78(sub_2749765A0, v249, 0.6, 0.9);
                OUTLINED_FUNCTION_18_25();
                OUTLINED_FUNCTION_35_13();
                v253();
                v254 = swift_allocObject();
                v255 = OUTLINED_FUNCTION_261(v254, &v317);
                v256 = OUTLINED_FUNCTION_43_8(v255);
                v144(v256);
                OUTLINED_FUNCTION_135_2();
                OUTLINED_FUNCTION_64_4();
                *(v257 - 256) = v258;
                v316 = 1107296256;
                OUTLINED_FUNCTION_78_3();
                v317 = v259;
                v260 = OUTLINED_FUNCTION_218(block_descriptor_165_0);
                v261 = v251;

                [v252 addCompletion_];
                _Block_release(v260);
                [v252 startAnimation];
                OUTLINED_FUNCTION_116_3();

LABEL_76:
                (v65[1])(v140, v144);
                return;
              }

              OUTLINED_FUNCTION_68_4();
              while (1)
              {
                v264 = v263 + 1;
                if (__OFADD__(v263, 1))
                {
                  goto LABEL_84;
                }

                if (v264 >= v207)
                {

                  sub_27496A010(v265, v266, v267, v268, v269, v270, v271, v272, v273[0], v273[1], v274, v275, v276, v277, v278, v279, v280, *(&v280 + 1), v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
                  goto LABEL_76;
                }

                ++v263;
                if (*(v58 + 8 * v264))
                {
                  while (1)
                  {
                    do
                    {
                      OUTLINED_FUNCTION_87_3();
                      OUTLINED_FUNCTION_181();
                    }

                    while (!v204);
                    [v204 removeFromSuperview];
                  }
                }
              }
            }

            v199 = *(v58 + 8 * v209);
            ++v208;
            if (v199)
            {
              v208 = v209;
              goto LABEL_65;
            }
          }
        }

        OUTLINED_FUNCTION_213();
        v165 = v164 + *(v163 + 48);
        OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_237();
        v166();
        v167 = *v165;
        OUTLINED_FUNCTION_263(*(v165 + 8));
        v168 = *(v165 + 16);
        v169 = *v58;
        v318[0] = *v58;
        v170 = OUTLINED_FUNCTION_290();
        v58 = 0;
        v171 = *(v170 + 16);
        while (1)
        {
          if (v171 == v58)
          {
            v172 = 0;
            goto LABEL_51;
          }

          if (v169 == *(v170 + v58 + 32))
          {
            break;
          }

          ++v58;
        }

        v172 = v58;
LABEL_51:

        sub_2749F95D4();
        if (v315)
        {
          v302 = v172;
          v65 = v167;
          v173 = v168;
          sub_27484F5CC();
          v175 = v174;
          v177 = v176;

          if (v171 != v58 && (v177 & 1) == 0)
          {
            MEMORY[0x277C5AFB0](v175, v302);
            v178 = v299;
            v58 = v281;
            v179 = v281 + *(v299 + 48);
            OUTLINED_FUNCTION_17_24();
            OUTLINED_FUNCTION_237();
            v180();
            v181 = v311;
            *v179 = v65;
            *(v179 + 8) = v181;
            *(v179 + 16) = v173;
            OUTLINED_FUNCTION_143();
            __swift_storeEnumTagSinglePayload(v182, v183, v184, v178);
            v185 = v290;
            v186 = OUTLINED_FUNCTION_266(&v320);
            OUTLINED_FUNCTION_94_2(v186);
            sub_2747729AC(v65, v181, v173);
            sub_2749628E8();
            swift_endAccess();
            sub_274772984(v65, v181, v173);
            OUTLINED_FUNCTION_124_2();
            OUTLINED_FUNCTION_163();
            OUTLINED_FUNCTION_159();
            v185();
            (v185)(v304, v58);
            goto LABEL_57;
          }
        }

        else
        {
          v65 = v167;
          v173 = v168;
        }

        sub_274772984(v65, v311, v173);
        OUTLINED_FUNCTION_8_2();
        v187(v304, v314);
LABEL_57:
        v137 = v309;
      }
    }

    v82 = *(&v55->isa + SLODWORD(v60[6].isa));
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_237();
    v83();
    OUTLINED_FUNCTION_161();
    OUTLINED_FUNCTION_63_3();
    sub_27473ADB8(v84, v85, &qword_280967DB0, &unk_274A29860);
    OUTLINED_FUNCTION_117_0(&v325);
    sub_2749F9524();
    OUTLINED_FUNCTION_59_7();
    OUTLINED_FUNCTION_38_14();
    v86();
    isa = v60[2].isa;

    v55 = v62;
    v88 = sub_2749F9274();
    if (v88 < 0 || v88 >= isa)
    {

      OUTLINED_FUNCTION_8_2();
LABEL_24:
      v109(v62, v314);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_161();
    v90 = v292;
    sub_27473ADB8(v4 + v89, v292, &qword_280967DB0, &unk_274A29860);
    v91 = sub_2749F9524();
    OUTLINED_FUNCTION_38_14();
    v92();
    if (sub_2749F9274() < 0)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_232();
    if (v94)
    {
      goto LABEL_81;
    }

    v296 = v82;
    v39 = v291;
    v95 = *(v91 + v93 + 32);

    OUTLINED_FUNCTION_161();
    sub_27473ADB8(v4 + v96, v90, &qword_280967DB0, &unk_274A29860);
    v97 = sub_2749F9534();
    OUTLINED_FUNCTION_38_14();
    v98();
    if (sub_2749F9274() < 0)
    {
      goto LABEL_82;
    }

    OUTLINED_FUNCTION_232();
    if (v94)
    {
      goto LABEL_83;
    }

    v100 = *(v97 + 8 * v99 + 32);

    v60 = *(v100 + 16);

    OUTLINED_FUNCTION_201();
    v101 = sub_2749F9264();
    if (v101 < 0 || v101 >= v60)
    {
      sub_2749FA3D4();
      OUTLINED_FUNCTION_8_2();
      v110 = v286;
      v62 = v305;
      OUTLINED_FUNCTION_237();
      v111();
      v55 = sub_2749FA4D4();
      v60 = sub_2749FD2D4();
      if (os_log_type_enabled(v55, v60))
      {
        v112 = OUTLINED_FUNCTION_30_9();
        v113 = OUTLINED_FUNCTION_178();
        *v112 = OUTLINED_FUNCTION_215(v113, &v312).n128_u32[0];
        OUTLINED_FUNCTION_2_47();
        sub_274720F90(&qword_280968FC8, v114);
        v282 = v55;
        v115 = sub_2749FDC74();
        v116 = v110;
        v118 = v117;
        v119 = *v307;
        (*v307)(v116, v314);
        v55 = sub_2747AF460(v115, v118, &v315);

        *(v112 + 4) = v55;
        v120 = v60;
        v60 = v282;
        _os_log_impl(&dword_274719000, v282, v120, "On screen cell at invalid index path: %s", v112, 0xCu);
        v121 = OUTLINED_FUNCTION_47_9(&v312);
        __swift_destroy_boxed_opaque_existential_0(v121);
        OUTLINED_FUNCTION_31();
        v4 = v290;
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_185();

        OUTLINED_FUNCTION_8_2();
        v123(v39, v287);
        v119(v62, v314);
      }

      else
      {
        OUTLINED_FUNCTION_185();

        OUTLINED_FUNCTION_124_2();
        v126 = OUTLINED_FUNCTION_229();
        (v60)(v126);
        OUTLINED_FUNCTION_8_2();
        v127(v39, v287);
        (v60)(v62, v110);
      }

      OUTLINED_FUNCTION_254();
      goto LABEL_35;
    }

    LOBYTE(v319) = v95;
    OUTLINED_FUNCTION_226();
    sub_2749F95D4();
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_161();
    sub_27473ADB8(v4 + v102, v90, &qword_280967DB0, &unk_274A29860);
    OUTLINED_FUNCTION_226();
    sub_2749F95D4();
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_38_14();
    v103();
    v55 = v315;
    if (v60)
    {
      v104 = v296;
      if (!v315)
      {

        OUTLINED_FUNCTION_254();
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_32_1();
      sub_27478547C();
      v106 = v105;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_254();
      if ((v106 & 1) == 0)
      {
        goto LABEL_32;
      }

      v55 = OUTLINED_FUNCTION_290();
      v60 = sub_2748557C8();
      v108 = v107;

      if (v108)
      {
        goto LABEL_32;
      }

      v62 = v305;
      v129 = sub_2749F9264();
      v130 = v300;
      MEMORY[0x277C5AFB0](v129, v60);
      v60 = v104;
      OUTLINED_FUNCTION_47_9(&v304);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_223();
      v55 = &v315;
      v131 = OUTLINED_FUNCTION_24_0();
      sub_2748F9C64(v131, v132);

      OUTLINED_FUNCTION_124_2();
      v133 = OUTLINED_FUNCTION_229();
      (v60)(v133);
      (v60)(v62, v130);
      OUTLINED_FUNCTION_224();
      OUTLINED_FUNCTION_257(v134);
      OUTLINED_FUNCTION_158();
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_254();
    v104 = v296;
LABEL_32:
    if (sub_2747B2784())
    {
      [v104 removeFromSuperview];

      OUTLINED_FUNCTION_8_2();
      v62 = v305;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_8_2();
    v62 = v305;
    v128(v305, v314);

LABEL_35:
    OUTLINED_FUNCTION_251();
    OUTLINED_FUNCTION_158();
  }

  while (v58);
LABEL_4:
  while (1)
  {
    v68 = (v65 + 1);
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v68 >= v60)
    {
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
      OUTLINED_FUNCTION_86_2(v124);
      v58 = 0;
      goto LABEL_9;
    }

    v58 = *(v67 + 8 * v68);
    v65 = (v65 + 1);
    if (v58)
    {
      v65 = v68;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void sub_2749648E0(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v295) = a2;
  v328 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0, &qword_274A29878);
  v5 = OUTLINED_FUNCTION_0_0(v4, &v330);
  v298 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_1(v294 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v294[0] = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA8, &unk_274A29880);
  OUTLINED_FUNCTION_34(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = OUTLINED_FUNCTION_70(v294 - v13);
  v15 = type metadata accessor for WFAddToHomeScreenItem(v14);
  v16 = OUTLINED_FUNCTION_34(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_1(v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F060, &qword_274A223A0);
  v20 = OUTLINED_FUNCTION_0_0(v19, v343);
  v310 = v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DB0, &qword_274A29890);
  v25 = OUTLINED_FUNCTION_34(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v27);
  v28 = sub_2749FA4E4();
  v29 = OUTLINED_FUNCTION_0_0(v28, &v336);
  v326 = v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v33 = (v32 - v31);
  v34 = sub_2749F9284();
  v35 = OUTLINED_FUNCTION_0_0(v34, &v347);
  v37 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = v294 - v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0, &qword_274A14050);
  v44 = OUTLINED_FUNCTION_34(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0, &unk_274A14040);
  v51 = OUTLINED_FUNCTION_34(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_54_11();
  v53 = MEMORY[0x277D85000];
  v54 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  OUTLINED_FUNCTION_77(v2 + v54, &v344);
  v331 = v54;
  sub_27473ADB8(v2 + v54, v2, &unk_280968DC0, &unk_274A14040);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0, &unk_274A10120);
  sub_2749F9524();
  OUTLINED_FUNCTION_9_3();
  v57 = *(v56 + 8);
  v323 = v2;
  v330 = v57;
  v329 = (v56 + 8);
  (v57)(v2, v55);
  v58 = sub_27475FC74();
  v337 = v55;
  OUTLINED_FUNCTION_201();
  sub_2749F9524();
  v307 = sub_27475FC74();
  v306 = sub_274962FB4(v307, v58);
  v59 = *((*v53 & *v2) + 0x70);
  swift_beginAccess();
  v336 = v3;
  v296 = v59;
  v60 = *(v3 + v59);
  v61 = v47;
  v62 = v317;
  v63 = (v60 + 64);
  OUTLINED_FUNCTION_19_22();
  v66 = v65 & v64;
  v68 = ((v67 + 63) >> 6);
  v324 = v37 + 16;
  v335 = (v37 + 32);
  v304 = *MEMORY[0x277D7A490];
  v311 = v37;
  v69 = (v37 + 8);
  v70 = v41;
  v327 = v69;
  OUTLINED_FUNCTION_53();
  v303 = v71;
  v312 = v72;

  v73 = 0;
  OUTLINED_FUNCTION_257(MEMORY[0x277D84F98]);
  *&v74 = 136315138;
  v301 = v74;
  v75 = v332;
  v315 = v33;
  v334 = v70;
  v326 = v61;
  v319 = v63;
  v318 = v68;
  while (v66)
  {
    v76 = v75;
LABEL_8:
    OUTLINED_FUNCTION_187();
    v63 = v312;
    OUTLINED_FUNCTION_243();
    v78(v321);
    OUTLINED_FUNCTION_245();
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0) + 48);
    v80 = v326;
    v81 = OUTLINED_FUNCTION_3_5();
    v75 = v76;
    v82(v81);
    *(v80 + v79) = v63;
    OUTLINED_FUNCTION_36_14();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
    v87 = v63;
    v33 = v315;
    v62 = v317;
    v70 = v334;
LABEL_9:
    OUTLINED_FUNCTION_63_3();
    sub_2747D31F8(v88, v89, &unk_280968DD0, &qword_274A14050);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
    OUTLINED_FUNCTION_48_7(v90);
    if (v91)
    {

      OUTLINED_FUNCTION_231();

      v154 = v336;
      *(v336 + v296) = v297;

      v155 = *((*MEMORY[0x277D85000] & *v154) + 0xB8);
      OUTLINED_FUNCTION_77(v154 + v155, v342);
      v320 = v155;
      v156 = (*(v154 + v155) + 64);
      OUTLINED_FUNCTION_19_22();
      v159 = (v158 & v157);
      v161 = (v160 + 63) >> 6;
      v330 = v162;

      v163 = 0;
      v164 = &unk_280970DB8;
      v329 = v161;
      v334 = v156;
      while (1)
      {
        v165 = v314;
        if (!v159)
        {
          break;
        }

LABEL_40:
        OUTLINED_FUNCTION_205();
        v168 = *(v330[6] + v167);
        OUTLINED_FUNCTION_159();
        sub_27473ADB8(v169, v170, &qword_28096F060, &qword_274A223A0);
        v171 = OUTLINED_FUNCTION_198();
        v173 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v171, v172) + 48);
        *v165 = v168;
        sub_2747D31F8(v70, &v165[v173], &qword_28096F060, &qword_274A223A0);
        OUTLINED_FUNCTION_36_14();
        __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
        v161 = v329;
LABEL_41:
        v178 = v165;
        v179 = v313;
        sub_2747D31F8(v178, v313, &qword_280970DB0, &qword_274A29890);
        v180 = OUTLINED_FUNCTION_198();
        v182 = __swift_instantiateConcreteTypeFromMangledNameV2(v180, v181);
        OUTLINED_FUNCTION_156_0(v179, 1, v182);
        if (v91)
        {

          OUTLINED_FUNCTION_159();
          OUTLINED_FUNCTION_26_9();
          sub_27473ADB8(v212, v213, v214, v215);
          v216 = v336;
          v217 = v331;
          OUTLINED_FUNCTION_94_2(v336 + v331);
          OUTLINED_FUNCTION_26_9();
          sub_2747D2B90(v218, v219, v220, v221);
          swift_endAccess();
          v222 = *((*MEMORY[0x277D85000] & *v216) + 0x88);
          OUTLINED_FUNCTION_77(v222 + v216, v340);
          v223 = OUTLINED_FUNCTION_61_5();
          v335 = v224;
          v224(v223);
          OUTLINED_FUNCTION_67_6();
          v225 = "Item" >> 6;

          v226 = 0;
          if (v217)
          {
            while (1)
            {
              v227 = v226;
LABEL_61:
              OUTLINED_FUNCTION_91_3(__clz(__rbit64(v217)) | (v227 << 6));
              sub_2749F95E4();
            }
          }

          while (1)
          {
            v227 = v226 + 1;
            if (__OFADD__(v226, 1))
            {
              goto LABEL_75;
            }

            if (v227 >= v225)
            {
              swift_endAccess();

              if ((v295 & 0x100000000) != 0)
              {
                OUTLINED_FUNCTION_263(*((*MEMORY[0x277D85000] & *v336) + 0xC8));
                *(v229 + v228) = 1;
                sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
                v230 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                sub_27480D818(v230, v231);
                OUTLINED_FUNCTION_134();
                v232 = sub_2749FD184();
                v233 = OUTLINED_FUNCTION_24_1();
                [v233 v234];

                v235 = sub_2749FD034();
                v236 = OUTLINED_FUNCTION_24_1();
                [v236 v237];

                v238 = sub_2749FD034();
                v239 = OUTLINED_FUNCTION_24_1();
                [v239 v240];

                v241 = OUTLINED_FUNCTION_177();
                [v222 setValue:v241 forKey:*MEMORY[0x277CDA4E8]];

                v242 = sub_2749FCD64();
                v243 = OUTLINED_FUNCTION_24_1();
                [v243 v244];

                v245 = objc_opt_self();
                OUTLINED_FUNCTION_167(v245, &v345);
                OUTLINED_FUNCTION_35_13();
                v246();
                OUTLINED_FUNCTION_130_2();
                OUTLINED_FUNCTION_180();
                v328 = v247;
                v249 = v248 & 0xFFFFFFFFFFFFFFF8;
                v327 = (v248 & 0xFFFFFFFFFFFFFFF8);
                v325 = v250;
                v251 = swift_allocObject();
                v252 = OUTLINED_FUNCTION_192(v251);
                v329 = v253;
                v255 = OUTLINED_FUNCTION_195(v252, v254);
                v256(v255);
                v257 = v336;
                *(v156 + v242) = v336;
                *&v242[v249] = v222;
                OUTLINED_FUNCTION_66_4();
                *(v258 - 256) = v259;
                OUTLINED_FUNCTION_60_6();
                v332 = v260;
                v339 = v261;
                OUTLINED_FUNCTION_218(block_descriptor_99);
                OUTLINED_FUNCTION_291();
                v262 = v257;
                v263 = v257;
                v333 = v222;

                OUTLINED_FUNCTION_82_2();
                v338[0] = MEMORY[0x277D85DD0];
                OUTLINED_FUNCTION_71_4();
                v339 = v264;
                v265 = OUTLINED_FUNCTION_218(block_descriptor_102);
                OUTLINED_FUNCTION_2_23();
                OUTLINED_FUNCTION_63_0();
                [v266 v267];
                _Block_release(v265);
                _Block_release(&selRef_setPlaceholder_);
                OUTLINED_FUNCTION_116_3();
                v262[v268] = 1;
                v159 = v263;
                [v263 contentInset];
                [v263 contentOffset];
                OUTLINED_FUNCTION_18_25();
                OUTLINED_FUNCTION_35_13();
                v269();
                v270 = swift_allocObject();
                *(v270 + 16) = v306;
                v164 = v330;
                v271 = OUTLINED_FUNCTION_43_8(v270);
                v156 = v329;
                v329(v271);
                OUTLINED_FUNCTION_222(&v346);
                objc_allocWithZone(MEMORY[0x277D75D40]);

                v272 = v263;
                v273 = sub_27480FE78(sub_2749763F8, v270, 0.6, 0.9);
                OUTLINED_FUNCTION_18_25();
                OUTLINED_FUNCTION_35_13();
                v274();
                v275 = swift_allocObject();
                v276 = OUTLINED_FUNCTION_261(v275, &v337);
                v277 = OUTLINED_FUNCTION_43_8(v276);
                v156(v277);
                OUTLINED_FUNCTION_135_2();
                OUTLINED_FUNCTION_64_4();
                *(v278 - 256) = v279;
                v338[1] = 1107296256;
                OUTLINED_FUNCTION_78_3();
                v339 = v280;
                v281 = OUTLINED_FUNCTION_218(block_descriptor_111);
                v282 = v272;

                [v273 addCompletion_];
                _Block_release(v281);
                [v273 startAnimation];
                OUTLINED_FUNCTION_161();

LABEL_72:
                v164[1](v159, v156);
                return;
              }

              OUTLINED_FUNCTION_68_4();
              while (1)
              {
                v285 = v284 + 1;
                if (__OFADD__(v284, 1))
                {
                  goto LABEL_80;
                }

                if (v285 >= v225)
                {

                  sub_27496C708(v286, v287, v288, v289, v290, v291, v292, v293, v294[0], v294[1], v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, v303, v304, v305, v306, v307, v308, v309, v310, v311);
                  goto LABEL_72;
                }

                ++v284;
                if (*(v70 + 8 * v285))
                {
                  while (1)
                  {
                    do
                    {
                      OUTLINED_FUNCTION_87_3();
                      OUTLINED_FUNCTION_181();
                    }

                    while (!v222);
                    [v222 removeFromSuperview];
                  }
                }
              }
            }

            v217 = *(v70 + 8 * v227);
            ++v226;
            if (v217)
            {
              v226 = v227;
              goto LABEL_61;
            }
          }
        }

        v183 = &v179[*(v182 + 48)];
        OUTLINED_FUNCTION_213();
        v185 = *(v184 + 48);
        OUTLINED_FUNCTION_8_2();
        v186 = v325;
        v187 = OUTLINED_FUNCTION_45();
        v188(v187);
        sub_27477BDA4(&v183[v185], v186 + v185);
        v189 = *v179;
        v340[0] = *v179;
        sub_27477BDA4(v186 + v185, v333);
        OUTLINED_FUNCTION_201();
        v190 = sub_2749F9524();
        v191 = 0;
        v70 = *(v190 + 16);
        while (1)
        {
          if (v70 == v191)
          {
            v192 = 0;
            goto LABEL_48;
          }

          if (*(v190 + v191 + 32) == v189)
          {
            break;
          }

          ++v191;
        }

        v192 = v191;
LABEL_48:

        sub_2749F95D4();
        if (!v338[0] || (v193 = sub_27484FA08(v333, v338[0]), v195 = v194, , v70 == v191) || (v195 & 1) != 0)
        {
          OUTLINED_FUNCTION_0_42();
          sub_274976940();
          OUTLINED_FUNCTION_8_2();
          v208(v325, v332);
        }

        else
        {
          v196 = v321;
          MEMORY[0x277C5AFB0](v193, v192);
          v197 = v322;
          v198 = *(v322 + 48);
          OUTLINED_FUNCTION_8_2();
          v199 = v308;
          v200 = OUTLINED_FUNCTION_45();
          v201 = v332;
          v202(v200);
          OUTLINED_FUNCTION_6_39();
          v326 = v203;
          sub_2749768E8(v333, v199 + v198);
          OUTLINED_FUNCTION_143();
          __swift_storeEnumTagSinglePayload(v204, v205, v206, v197);
          OUTLINED_FUNCTION_94_2(v336 + v320);
          sub_274962AD4();
          swift_endAccess();
          v70 = v327;
          v207 = *v327;
          (*v327)(v196, v201);
          sub_274976940();
          v207(v325, v201);
        }

        v156 = v334;
        v164 = &unk_280970DB8;
      }

      while (1)
      {
        v166 = v163 + 1;
        if (__OFADD__(v163, 1))
        {
          goto LABEL_74;
        }

        if (v166 >= v161)
        {
          v209 = OUTLINED_FUNCTION_198();
          v211 = __swift_instantiateConcreteTypeFromMangledNameV2(v209, v210);
          OUTLINED_FUNCTION_86_2(v211);
          v159 = 0;
          goto LABEL_41;
        }

        v159 = *(v156 + v166);
        ++v163;
        if (v159)
        {
          v163 = v166;
          goto LABEL_40;
        }
      }
    }

    v92 = *(v63 + *"ion");
    v93 = OUTLINED_FUNCTION_17_24();
    v94(v93, v63, v75);
    OUTLINED_FUNCTION_21_20();
    OUTLINED_FUNCTION_63_3();
    sub_27473ADB8(v95, v96, &unk_280968DC0, &unk_274A14040);
    v97 = v70;
    OUTLINED_FUNCTION_123_2(&v349);
    v68 = sub_2749F9524();
    v98 = OUTLINED_FUNCTION_32_16();
    v99(v98);
    v70 = v68[2];

    v63 = v97;
    v100 = sub_2749F9274();
    if (v100 < 0 || v100 >= v70)
    {

      OUTLINED_FUNCTION_8_2();
      v128 = OUTLINED_FUNCTION_151_0();
      v129(v128, v75);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_89_2();
    }

    else
    {
      OUTLINED_FUNCTION_21_20();
      OUTLINED_FUNCTION_63_3();
      sub_27473ADB8(v101, v102, &unk_280968DC0, &unk_274A14040);
      OUTLINED_FUNCTION_123_2(&v349);
      v103 = sub_2749F9524();
      v104 = OUTLINED_FUNCTION_32_16();
      v105(v104);
      if (sub_2749F9274() < 0)
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_232();
      if (v107)
      {
        goto LABEL_77;
      }

      v316 = v92;
      v108 = v62;
      v109 = *(v103 + v106 + 32);

      OUTLINED_FUNCTION_21_20();
      OUTLINED_FUNCTION_63_3();
      sub_27473ADB8(v110, v111, &unk_280968DC0, &unk_274A14040);
      OUTLINED_FUNCTION_123_2(&v349);
      sub_2749F9534();
      v112 = OUTLINED_FUNCTION_59_7();
      v113 = v334;
      (v330)(v112, v70);
      if (sub_2749F9274() < 0)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_232();
      if (v107)
      {
        goto LABEL_79;
      }

      v115 = *(v103 + 8 * v114 + 32);

      v68 = *(v115 + 16);

      v116 = sub_2749F9264();
      if (v116 < 0 || v116 >= v68)
      {
        sub_2749FA3D4();
        OUTLINED_FUNCTION_8_2();
        v130 = v332;
        v131(v108, v113, v332);
        v63 = v33;
        v132 = v33;
        v133 = sub_2749FA4D4();
        v70 = sub_2749FD2D4();
        if (!os_log_type_enabled(v133, v70))
        {
          OUTLINED_FUNCTION_122_1();

          OUTLINED_FUNCTION_124_2();
          (v68)(v108, v130);
          OUTLINED_FUNCTION_8_2();
          v146(v132, v305);
          (v68)(v113, v130);
          v33 = v132;
          v75 = v130;
          v70 = v113;
          OUTLINED_FUNCTION_206();
          goto LABEL_33;
        }

        v68 = OUTLINED_FUNCTION_30_9();
        v134 = OUTLINED_FUNCTION_178();
        *v68 = OUTLINED_FUNCTION_215(v134, &v333).n128_u32[0];
        OUTLINED_FUNCTION_2_47();
        sub_274720F90(&qword_280968FC8, v135);
        v136 = sub_2749FDC74();
        v138 = v137;
        v139 = *v327;
        (*v327)(v108, v130);
        v63 = sub_2747AF460(v136, v138, v338);

        *(v68 + 4) = v63;
        _os_log_impl(&dword_274719000, v133, v70, "On screen cell at invalid index path: %s", v68, 0xCu);
        v140 = OUTLINED_FUNCTION_47_9(&v333);
        __swift_destroy_boxed_opaque_existential_0(v140);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_122_1();

        OUTLINED_FUNCTION_8_2();
        v33 = v315;
        v142(v315, v305);
        v143 = OUTLINED_FUNCTION_123_2(&v348);
        v139(v143, v130);
        v75 = v130;
        OUTLINED_FUNCTION_206();
        OUTLINED_FUNCTION_89_2();
        v62 = v317;
      }

      else
      {
        v342[0] = v109;
        OUTLINED_FUNCTION_226();
        OUTLINED_FUNCTION_255();
        sub_2749F95D4();
        OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_21_20();
        OUTLINED_FUNCTION_63_3();
        sub_27473ADB8(v117, v118, &unk_280968DC0, &unk_274A14040);
        OUTLINED_FUNCTION_226();
        sub_2749F95D4();
        v119 = OUTLINED_FUNCTION_32_16();
        v120(v119);
        v63 = v338[0];
        if (v68)
        {
          OUTLINED_FUNCTION_206();
          if (v63)
          {

            OUTLINED_FUNCTION_32_1();
            sub_2747857F8();
            v70 = v121;
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            if (v70)
            {
              OUTLINED_FUNCTION_201();
              v63 = sub_2749F9524();
              v68 = sub_27484F9C4(v109, v63);
              v70 = v122;

              if ((v70 & 1) == 0)
              {
                v123 = v334;
                sub_2749F9264();
                OUTLINED_FUNCTION_203();
                MEMORY[0x277C5AFB0]();
                OUTLINED_FUNCTION_122_1();
                v68 = v124;
                OUTLINED_FUNCTION_47_9(&v327);
                swift_isUniquelyReferenced_nonNull_native();
                OUTLINED_FUNCTION_223();
                v63 = v338;
                sub_2748F9C64(v68, v70);

                OUTLINED_FUNCTION_124_2();
                v125 = v70;
                v70 = v123;
                v75 = v332;
                (v68)(v125, v332);
                v126 = OUTLINED_FUNCTION_144();
                (v68)(v126);
                OUTLINED_FUNCTION_224();
                OUTLINED_FUNCTION_257(v127);
                goto LABEL_33;
              }
            }
          }

          else
          {
          }
        }

        else
        {

          OUTLINED_FUNCTION_206();
        }

        if (sub_2747A707C(v109, v307))
        {
          v147 = OUTLINED_FUNCTION_115_2(&v341);
          [v147 v148];

          OUTLINED_FUNCTION_8_2();
          v149 = OUTLINED_FUNCTION_151_0();
          v75 = v332;
          v150(v149, v332);
        }

        else
        {
          OUTLINED_FUNCTION_8_2();
          v151 = OUTLINED_FUNCTION_151_0();
          v75 = v332;
          v152(v151, v332);
          OUTLINED_FUNCTION_122_1();
        }

LABEL_33:
        OUTLINED_FUNCTION_89_2();
        v62 = v108;
      }
    }
  }

  while (1)
  {
    v77 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v77 >= v68)
    {
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
      OUTLINED_FUNCTION_86_2(v144);
      v66 = 0;
      goto LABEL_9;
    }

    v66 = v63[v77];
    ++v73;
    if (v66)
    {
      v76 = v75;
      v73 = v77;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

void sub_274966138(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v229) = a2;
  v266 = a1;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68, &qword_274A29800);
  v232 = *(v234 - 8);
  v4 = MEMORY[0x28223BE20](v234);
  v228 = &v227 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = v5;
  MEMORY[0x28223BE20](v4);
  v233 = &v227 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D70, &unk_274A29808);
  MEMORY[0x28223BE20](v7 - 8);
  v237 = &v227 - v8;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFF0, &qword_274A22310);
  v249 = *(v257 - 8);
  v9 = MEMORY[0x28223BE20](v257);
  v262 = &v227 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v248 = &v227 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D78, &unk_274A29818);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v253 = &v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v252 = &v227 - v15;
  v242 = sub_2749FA4E4();
  v265 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v245 = &v227 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_2749F9284();
  v17 = *(v271 - 1);
  v18 = MEMORY[0x28223BE20](v271);
  v241 = &v227 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v227 - v21;
  MEMORY[0x28223BE20](v20);
  v258 = &v227 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0, &qword_274A14050);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v227 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v261 = &v227 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30, &qword_274A10130);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v255 = &v227 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v227 - v32;
  v34 = MEMORY[0x277D85000];
  v35 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  swift_beginAccess();
  v268 = v35;
  sub_27473ADB8(v35 + v2, v33, &qword_280967E30, &qword_274A10130);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E38, &qword_274A10138);
  v37 = sub_2749F9524();
  v38 = *(v36 - 8);
  v39 = *(v38 + 8);
  v247 = v33;
  v269 = v39;
  v267 = v38 + 8;
  v39(v33, v36);
  v40 = sub_27475FD04(v37);
  v272 = v36;
  v41 = v27;
  v42 = sub_2749F9524();
  v244 = sub_27475FD04(v42);
  sub_274963008(v244, v40);
  v243 = v43;
  v44 = *((*v34 & *v2) + 0x70);
  swift_beginAccess();
  v230 = v44;
  v45 = *(v3 + v44);
  v46 = v3;
  v47 = *(v45 + 64);
  v256 = v45 + 64;
  v48 = 1 << *(v45 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v47;
  v51 = (v48 + 63) >> 6;
  v259 = (v17 + 16);
  v270 = (v17 + 32);
  v240 = *MEMORY[0x277D7A490];
  v250 = v17;
  v263 = (v17 + 8);
  v239 = v265 + 1;
  v52 = v271;
  v53 = v261;
  v251 = v45;

  v54 = 0;
  v231 = MEMORY[0x277D84F98];
  *&v55 = 136315138;
  v235 = v55;
  v56 = v46;
  v260 = v46;
  v264 = v22;
  v254 = v51;
  v246 = v41;
LABEL_4:
  v57 = v256;
  if (!v50)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v58 = v54;
LABEL_10:
    v59 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v60 = v59 | (v58 << 6);
    v61 = v251;
    v62 = v250;
    v63 = v258;
    (*(v250 + 16))(v258, *(v251 + 48) + *(v250 + 72) * v60, v52);
    v64 = *(*(v61 + 56) + 8 * v60);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
    v66 = *(v65 + 48);
    (*(v62 + 32))(v41, v63, v52);
    *(v41 + v66) = v64;
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v65);
    v67 = v64;
    v22 = v264;
    v53 = v261;
    v56 = v260;
LABEL_11:
    sub_2747D31F8(v41, v53, &unk_280968DD0, &qword_274A14050);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
    if (__swift_getEnumTagSinglePayload(v53, 1, v68) == 1)
    {
      break;
    }

    v265 = *(v53 + *(v68 + 48));
    v52 = v271;
    (*v270)(v22, v53, v271);
    v69 = v255;
    sub_27473ADB8(v268 + v56, v255, &qword_280967E30, &qword_274A10130);
    v70 = v272;
    v71 = sub_2749F9524();
    v269(v69, v70);
    v72 = *(v71 + 16);

    v73 = sub_2749F9274();
    if (v73 < 0 || v73 >= v72)
    {

      (*v263)(v22, v52);
    }

    else
    {
      v74 = v247;
      sub_27473ADB8(v268 + v56, v247, &qword_280967E30, &qword_274A10130);
      v75 = v272;
      v76 = sub_2749F9524();
      v269(v74, v75);
      v77 = sub_2749F9274();
      if ((v77 & 0x8000000000000000) != 0)
      {
        goto LABEL_92;
      }

      if (v77 >= *(v76 + 16))
      {
        goto LABEL_93;
      }

      v78 = *(v76 + v77 + 32);

      v79 = v56;
      sub_27473ADB8(v268 + v56, v74, &qword_280967E30, &qword_274A10130);
      v80 = v272;
      v81 = sub_2749F9534();
      v269(v74, v80);
      v82 = sub_2749F9274();
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_94;
      }

      if (v82 >= *(v81 + 16))
      {
        goto LABEL_95;
      }

      v83 = *(v81 + 8 * v82 + 32);

      v84 = *(v83 + 16);

      v85 = sub_2749F9264();
      if (v85 < 0 || v85 >= v84)
      {
        v92 = v245;
        sub_2749FA3D4();
        v93 = v241;
        v94 = v264;
        (*v259)(v241, v264, v52);
        v95 = sub_2749FA4D4();
        v96 = sub_2749FD2D4();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          aBlock = v98;
          *v97 = v235;
          sub_274720F90(&qword_280968FC8, MEMORY[0x277CC9AF8]);
          v238 = v95;
          v99 = sub_2749FDC74();
          v101 = v100;
          v102 = *v263;
          (*v263)(v93, v271);
          v103 = sub_2747AF460(v99, v101, &aBlock);
          v52 = v271;

          *(v97 + 4) = v103;
          v104 = v96;
          v105 = v238;
          _os_log_impl(&dword_274719000, v238, v104, "On screen cell at invalid index path: %s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v98);
          MEMORY[0x277C61040](v98, -1, -1);
          v56 = v260;
          MEMORY[0x277C61040](v97, -1, -1);

          (*v239)(v245, v242);
          v22 = v264;
          v102(v264, v52);
        }

        else
        {
          v56 = v79;

          v107 = *v263;
          (*v263)(v93, v52);
          (*v239)(v92, v242);
          v107(v94, v52);
          v22 = v94;
        }

        v41 = v246;
      }

      else
      {
        v282[0] = v78;
        v86 = v272;
        sub_2749F95D4();
        v87 = aBlock;
        v56 = v79;
        sub_27473ADB8(v268 + v79, v74, &qword_280967E30, &qword_274A10130);
        sub_2749F95D4();
        v269(v74, v86);
        if (v87)
        {
          v22 = v264;
          v41 = v246;
          if (aBlock)
          {
            v88 = sub_274785998(aBlock, v87);

            if (v88)
            {
              sub_2749F9524();
              v89 = sub_2748557C8();
              v91 = v90;

              if ((v91 & 1) == 0)
              {
                v109 = sub_2749F9264();
                v110 = v258;
                MEMORY[0x277C5AFB0](v109, v89);
                v111 = v265;
                v112 = v231;
                swift_isUniquelyReferenced_nonNull_native();
                aBlock = v112;
                sub_2748F9C64(v111, v110);

                v113 = *v263;
                v52 = v271;
                (*v263)(v110, v271);
                v113(v22, v52);
                v231 = aBlock;
                v53 = v261;
                v51 = v254;
                goto LABEL_4;
              }
            }
          }

          else
          {
          }
        }

        else
        {

          v22 = v264;
          v41 = v246;
        }

        if (sub_2747B2784())
        {
          v108 = v265;
          [v265 removeFromSuperview];

          v52 = v271;
          (*v263)(v22, v271);
        }

        else
        {
          v52 = v271;
          (*v263)(v22, v271);
        }
      }

      v53 = v261;
    }

    v57 = v256;
    v51 = v254;
    if (!v50)
    {
LABEL_6:
      while (1)
      {
        v58 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if (v58 >= v51)
        {
          v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
          __swift_storeEnumTagSinglePayload(v41, 1, 1, v106);
          v50 = 0;
          goto LABEL_11;
        }

        v50 = *(v57 + 8 * v58);
        ++v54;
        if (v50)
        {
          v54 = v58;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }
  }

  *(v56 + v230) = v231;

  v114 = *((*MEMORY[0x277D85000] & *v56) + 0xB8);
  swift_beginAccess();
  v254 = v114;
  v115 = *(v56 + v114);
  v118 = *(v115 + 64);
  v117 = v115 + 64;
  v116 = v118;
  v119 = 1 << *(*(v56 + v114) + 32);
  v120 = -1;
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  v121 = v120 & v116;
  v122 = ((v119 + 63) >> 6);
  v264 = *(v56 + v114);

  v123 = 0;
  v124 = v253;
  v267 = v117;
  v265 = v122;
  if (!v121)
  {
LABEL_43:
    while (1)
    {
      v126 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        goto LABEL_90;
      }

      if (v126 >= v122)
      {
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D80, &qword_274A29828);
        __swift_storeEnumTagSinglePayload(v124, 1, 1, v159);
        v121 = 0;
        goto LABEL_48;
      }

      v121 = *(v117 + 8 * v126);
      ++v123;
      if (v121)
      {
        v125 = v124;
        v123 = v126;
        goto LABEL_47;
      }
    }
  }

  while (2)
  {
    v125 = v124;
    v126 = v123;
LABEL_47:
    v127 = __clz(__rbit64(v121));
    v121 &= v121 - 1;
    v128 = v127 | (v126 << 6);
    v129 = *(v264 + 7);
    LODWORD(v269) = *(*(v264 + 6) + v128);
    v130 = v248;
    sub_27473ADB8(v129 + *(v249 + 72) * v128, v248, &qword_28096EFF0, &qword_274A22310);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D80, &qword_274A29828);
    v132 = *(v131 + 48);
    *v125 = v269;
    v124 = v125;
    sub_2747D31F8(v130, &v125[v132], &qword_28096EFF0, &qword_274A22310);
    __swift_storeEnumTagSinglePayload(v125, 0, 1, v131);
LABEL_48:
    v133 = v252;
    sub_2747D31F8(v124, v252, &qword_280970D78, &unk_274A29818);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D80, &qword_274A29828);
    if (__swift_getEnumTagSinglePayload(v133, 1, v134) != 1)
    {
      v135 = &v133[*(v134 + 48) + *(v257 + 48)];
      (*v270)(v262);
      v136 = *v135;
      v269 = *(v135 + 1);
      v137 = v135[16];
      v138 = *v133;
      v281[0] = *v133;
      v139 = sub_2749F9524();
      v140 = 0;
      v141 = *(v139 + 16);
      while (1)
      {
        if (v141 == v140)
        {
          v142 = 0;
          goto LABEL_55;
        }

        if (v138 == v140[v139 + 32])
        {
          break;
        }

        ++v140;
      }

      v142 = v140;
LABEL_55:

      sub_2749F95D4();
      if (aBlock)
      {
        v261 = v142;
        v143 = v136;
        LODWORD(v136) = v137;
        sub_27484FB04();
        v145 = v144;
        v147 = v146;

        v124 = v253;
        if (v141 != v140 && (v147 & 1) == 0)
        {
          v148 = v258;
          MEMORY[0x277C5AFB0](v145, v261);
          v149 = v257;
          v150 = v237;
          v151 = v237 + *(v257 + 48);
          v152 = v148;
          v153 = v271;
          (*v259)(v237, v152, v271);
          v255 = v143;
          v154 = v269;
          *v151 = v143;
          *(v151 + 8) = v154;
          LODWORD(v256) = v136;
          *(v151 + 16) = v136;
          __swift_storeEnumTagSinglePayload(v150, 0, 1, v149);
          swift_beginAccess();
          v155 = v143;
          v156 = v269;
          v157 = v256;
          sub_274772E38(v155, v269, v256);
          sub_274962CE0();
          swift_endAccess();
          sub_274772E24(v255, v156, v157);
          v158 = *v263;
          (*v263)(v258, v153);
          v158(v262, v153);
          goto LABEL_61;
        }
      }

      else
      {
        v143 = v136;
        LOBYTE(v136) = v137;
        v124 = v253;
      }

      sub_274772E24(v143, v269, v136);
      (*v263)(v262, v271);
LABEL_61:
      v117 = v267;
      v122 = v265;
      if (!v121)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  v160 = v247;
  sub_27473ADB8(v266, v247, &qword_280967E30, &qword_274A10130);
  v161 = v260;
  v162 = v268;
  swift_beginAccess();
  sub_2747D2B90(v160, v162 + v161, &qword_280967E30, &qword_274A10130);
  swift_endAccess();
  v163 = *((*MEMORY[0x277D85000] & *v161) + 0x88);
  swift_beginAccess();
  v164 = v232;
  v165 = *(v232 + 16);
  v166 = v233;
  v167 = v234;
  v272 = v232 + 16;
  v271 = v165;
  (v165)(v233, v161 + v163, v234);
  v168 = v243 + 56;
  v169 = 1 << *(v243 + 32);
  v170 = -1;
  if (v169 < 64)
  {
    v170 = ~(-1 << v169);
  }

  v171 = v170 & *(v243 + 56);
  swift_beginAccess();

  v172 = 0;
  while (v171)
  {
    v173 = v172;
LABEL_72:
    v174 = *(*(v243 + 48) + (__clz(__rbit64(v171)) | (v173 << 6)));
    v171 &= v171 - 1;
    v280 = v174;
    v279 = 0;
    sub_2749F95E4();
  }

  while (1)
  {
    v173 = v172 + 1;
    if (__OFADD__(v172, 1))
    {
      break;
    }

    if (v173 >= ((v169 + 63) >> 6))
    {
      swift_endAccess();
      v175 = v243;

      if ((v229 & 0x100000000) != 0)
      {
        v270 = *((*MEMORY[0x277D85000] & *v260) + 0xC8);
        v270[v260] = 1;
        sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
        v176 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v178 = sub_27480D818(v176, v177);
        v179 = sub_2749FD184();
        [v178 setValue:v179 forKey:*MEMORY[0x277CDA4F0]];

        v180 = sub_2749FD034();
        [v178 setValue:v180 forKey:*MEMORY[0x277CDA4C8]];

        v181 = sub_2749FD034();
        [v178 setValue:v181 forKey:*MEMORY[0x277CDA4A0]];

        v182 = sub_2749FCD64();
        [v178 setValue:v182 forKey:*MEMORY[0x277CDA4E8]];

        v183 = sub_2749FCD64();
        [v178 setValue:v183 forKey:*MEMORY[0x277CDA4B8]];

        v262 = objc_opt_self();
        v184 = v228;
        (v271)(v228, v166, v167);
        v185 = *(v164 + 80);
        v186 = (v185 + 24) & ~v185;
        v266 = v186;
        v187 = (v227 + v186 + 7) & 0xFFFFFFFFFFFFFFF8;
        v264 = v187;
        v263 = ((v187 + 15) & 0xFFFFFFFFFFFFFFF8);
        v261 = v185;
        v188 = swift_allocObject();
        *(v188 + 16) = v175;
        v265 = *(v232 + 32);
        v267 = v232 + 32;
        (v265)(v188 + v186, v184, v234);
        v189 = v260;
        *(v188 + v187) = v260;
        *(v188 + ((v187 + 15) & 0xFFFFFFFFFFFFFFF8)) = v178;
        v277 = sub_2749761D4;
        v278 = v188;
        aBlock = MEMORY[0x277D85DD0];
        v274 = 1107296256;
        v268 = &v275;
        v275 = sub_274760264;
        v276 = &block_descriptor_26_0;
        v190 = _Block_copy(&aBlock);

        v191 = v189;
        v192 = v189;
        v269 = v178;

        v277 = CGSizeMake;
        v278 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v274 = 1107296256;
        v275 = sub_27480D7B8;
        v276 = &block_descriptor_29;
        v193 = _Block_copy(&aBlock);
        [v262 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
        _Block_release(v193);
        _Block_release(v190);
        v270[v191] = 1;
        v194 = v192;
        [v192 contentInset];
        v196 = -v195;
        [v192 contentOffset];
        v198 = v196 - v197;
        (v271)(v184, v233, v234);
        v199 = v263;
        v200 = (v263 + 15) & 0xFFFFFFFFFFFFFFF8;
        v201 = swift_allocObject();
        *(v201 + 16) = v243;
        v202 = v266;
        v203 = v265;
        (v265)(v201 + v266, v184, v234);
        v204 = v264;
        *&v264[v201] = v198;
        *&v199[v201] = v194;
        *(v201 + v200) = v196;
        objc_allocWithZone(MEMORY[0x277D75D40]);

        v205 = v194;
        v206 = sub_27480FE78(sub_2749761FC, v201, 0.6, 0.9);
        (v271)(v184, v233, v234);
        v207 = swift_allocObject();
        *(v207 + 16) = v243;
        (v203)(v207 + v202, v184, v234);
        *&v204[v207] = v205;
        v166 = v233;
        v164 = v232;
        v167 = v234;
        v277 = sub_274976224;
        v278 = v207;
        aBlock = MEMORY[0x277D85DD0];
        v274 = 1107296256;
        v275 = sub_274957D38;
        v276 = &block_descriptor_38;
        v208 = _Block_copy(&aBlock);
        v209 = v205;

        [v206 addCompletion_];
        _Block_release(v208);
        [v206 startAnimation];

LABEL_88:
        (*(v164 + 8))(v166, v167);
        return;
      }

      v210 = 0;
      v211 = 1 << *(v175 + 32);
      v212 = *(v175 + 56);
      v213 = -1;
      if (v211 < 64)
      {
        v213 = ~(-1 << v211);
      }

      v214 = v213 & v212;
      v215 = (v211 + 63) >> 6;
      if ((v213 & v212) != 0)
      {
        do
        {
          v216 = v210;
LABEL_83:
          v217 = __clz(__rbit64(v214));
          v214 &= v214 - 1;
          LOBYTE(v279) = *(*(v175 + 48) + (v217 | (v216 << 6)));
          sub_2749F95D4();
          v218 = aBlock;
          if (aBlock)
          {
            [aBlock removeFromSuperview];
          }

          v210 = v216;
          v175 = v243;
        }

        while (v214);
      }

      while (1)
      {
        v216 = v210 + 1;
        if (__OFADD__(v210, 1))
        {
          goto LABEL_96;
        }

        if (v216 >= v215)
        {

          sub_27496F510(v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, *(&v235 + 1), v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
          goto LABEL_88;
        }

        v214 = *(v168 + 8 * v216);
        ++v210;
        if (v214)
        {
          goto LABEL_83;
        }
      }
    }

    v171 = *(v168 + 8 * v173);
    ++v172;
    if (v171)
    {
      v172 = v173;
      goto LABEL_72;
    }
  }

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
}

void sub_274968010(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90, &qword_274A29858);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v30 = objc_opt_self();
  LOBYTE(aBlock[0]) = 0;
  sub_2749FD314();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v9 + 16))(v12, a2, v8);
  v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v9 + 32))(v21 + v19, v12, v8);
  *(v21 + v20) = a3;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2749768B0;
  *(v22 + 24) = v21;
  aBlock[4] = sub_27491222C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274963064;
  aBlock[3] = &block_descriptor_175;
  v23 = _Block_copy(aBlock);

  v24 = a3;
  v25 = a4;

  LODWORD(v26) = v14;
  LODWORD(v27) = v16;
  LODWORD(v28) = v18;
  [v30 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v23);

  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }
}

void sub_2749682D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0, &qword_274A29878);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v30 = objc_opt_self();
  LOBYTE(aBlock[0]) = 0;
  sub_2749FD314();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v9 + 16))(v12, a2, v8);
  v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v9 + 32))(v21 + v19, v12, v8);
  *(v21 + v20) = a3;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_274976448;
  *(v22 + 24) = v21;
  aBlock[4] = sub_27491222C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274963064;
  aBlock[3] = &block_descriptor_121;
  v23 = _Block_copy(aBlock);

  v24 = a3;
  v25 = a4;

  LODWORD(v26) = v14;
  LODWORD(v27) = v16;
  LODWORD(v28) = v18;
  [v30 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v23);

  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }
}

void sub_274968590(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68, &qword_274A29800);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v30 = objc_opt_self();
  LOBYTE(aBlock[0]) = 0;
  sub_2749FD314();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v9 + 16))(v12, a2, v8);
  v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v9 + 32))(v21 + v19, v12, v8);
  *(v21 + v20) = a3;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_27497624C;
  *(v22 + 24) = v21;
  aBlock[4] = sub_2747D22F0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274963064;
  aBlock[3] = &block_descriptor_47;
  v23 = _Block_copy(aBlock);

  v24 = a3;
  v25 = a4;

  LODWORD(v26) = v14;
  LODWORD(v27) = v16;
  LODWORD(v28) = v18;
  [v30 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v23);

  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }
}

void sub_274968850(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v30 = *(*(a1 + 48) + (v12 | (v11 << 6)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90, &qword_274A29858);
    sub_2749F95D4();
    v13 = aBlock[0];
    if (aBlock[0])
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = a3;
      aBlock[4] = sub_2749768D8;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274760264;
      aBlock[3] = &block_descriptor_181;
      v16 = _Block_copy(aBlock);
      v17 = v13;
      v18 = a3;

      [v14 _performWithoutRetargetingAnimations_];
      _Block_release(v16);
      v19 = v17;
      v20 = [v19 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_274A0EF10;
      *(v21 + 56) = sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
      *(v21 + 32) = a4;
      v22 = a4;
      v23 = sub_2749FCF74();

      [v20 setFilters_];

      v24 = [v19 layer];
      v25 = sub_2749F9884();
      v26 = sub_2749FCD64();
      [v24 setValue:v25 forKeyPath:v26];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_274968B78(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v30 = *(*(a1 + 48) + (v12 | (v11 << 6)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0, &qword_274A29878);
    sub_2749F95D4();
    v13 = aBlock[0];
    if (aBlock[0])
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = a3;
      aBlock[4] = sub_2749769EC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274760264;
      aBlock[3] = &block_descriptor_127;
      v16 = _Block_copy(aBlock);
      v17 = v13;
      v18 = a3;

      [v14 _performWithoutRetargetingAnimations_];
      _Block_release(v16);
      v19 = v17;
      v20 = [v19 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_274A0EF10;
      *(v21 + 56) = sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
      *(v21 + 32) = a4;
      v22 = a4;
      v23 = sub_2749FCF74();

      [v20 setFilters_];

      v24 = [v19 layer];
      v25 = sub_2749F9884();
      v26 = sub_2749FCD64();
      [v24 setValue:v25 forKeyPath:v26];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_274968EA0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v30 = *(*(a1 + 48) + (v12 | (v11 << 6)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68, &qword_274A29800);
    sub_2749F95D4();
    v13 = aBlock[0];
    if (aBlock[0])
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = a3;
      aBlock[4] = sub_2749769EC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274760264;
      aBlock[3] = &block_descriptor_53_0;
      v16 = _Block_copy(aBlock);
      v17 = v13;
      v18 = a3;

      [v14 _performWithoutRetargetingAnimations_];
      _Block_release(v16);
      v19 = v17;
      v20 = [v19 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_274A0EF10;
      *(v21 + 56) = sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
      *(v21 + 32) = a4;
      v22 = a4;
      v23 = sub_2749FCF74();

      [v20 setFilters_];

      v24 = [v19 layer];
      v25 = sub_2749F9884();
      v26 = sub_2749FCD64();
      [v24 setValue:v25 forKeyPath:v26];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2749691C8(uint64_t a1, CGFloat a2, uint64_t a3, void *a4)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      LOBYTE(v29.a) = *(*(a1 + 48) + (v14 | (v13 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90, &qword_274A29858);
      sub_2749F95D4();
      if (*&v30.a)
      {
        v15 = *&v30.a;
        [v15 setAlpha_];
        CGAffineTransformMakeScale(&v30, 0.65, 0.65);
        CGAffineTransformTranslate(&v29, &v30, 0.0, a2);
        tx = v29.tx;
        ty = v29.ty;
        v27 = *&v29.c;
        v28 = *&v29.a;
        [v15 bounds];
        Height = CGRectGetHeight(v35);
        *&v30.a = v28;
        *&v30.c = v27;
        v30.tx = tx;
        v30.ty = ty;
        CGAffineTransformTranslate(&v29, &v30, 0.0, Height * -0.175);
        v30 = v29;
        [v15 setTransform_];
      }

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if ((*(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xD8)) & 1) == 0)
  {
    [a4 contentOffset];
    v19 = [a4 setContentOffset_];
  }

  sub_27496A010(v19, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, *&v30.a, *&v30.b, *&v30.c, *&v30.d, *&v30.tx, *&v30.ty, v31, v32, v33, v34);
}

void sub_274969424(uint64_t a1, CGFloat a2, uint64_t a3, void *a4)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      HIBYTE(v31[0]) = *(*(a1 + 48) + (v14 | (v13 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0, &qword_274A29878);
      sub_2749F95D4();
      if (*&v30.a)
      {
        v15 = *&v30.a;
        [v15 setAlpha_];
        CGAffineTransformMakeScale(&v30, 0.65, 0.65);
        CGAffineTransformTranslate(&v29, &v30, 0.0, a2);
        tx = v29.tx;
        ty = v29.ty;
        v27 = *&v29.c;
        v28 = *&v29.a;
        [v15 bounds];
        Height = CGRectGetHeight(v32);
        *&v30.a = v28;
        *&v30.c = v27;
        v30.tx = tx;
        v30.ty = ty;
        CGAffineTransformTranslate(&v29, &v30, 0.0, Height * -0.175);
        v30 = v29;
        [v15 setTransform_];
      }

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if ((*(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xD8)) & 1) == 0)
  {
    [a4 contentOffset];
    v19 = [a4 setContentOffset_];
  }

  sub_27496C708(v19, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, *&v30.a, *&v30.b, *&v30.c, *&v30.d, *&v30.tx, *&v30.ty, v31[0], v31[1], v31[2], v31[3]);
}

void sub_274969680(uint64_t a1, CGFloat a2, uint64_t a3, void *a4)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      HIBYTE(v31[0]) = *(*(a1 + 48) + (v14 | (v13 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68, &qword_274A29800);
      sub_2749F95D4();
      if (*&v30.a)
      {
        v15 = *&v30.a;
        [v15 setAlpha_];
        CGAffineTransformMakeScale(&v30, 0.65, 0.65);
        CGAffineTransformTranslate(&v29, &v30, 0.0, a2);
        tx = v29.tx;
        ty = v29.ty;
        v27 = *&v29.c;
        v28 = *&v29.a;
        [v15 bounds];
        Height = CGRectGetHeight(v32);
        *&v30.a = v28;
        *&v30.c = v27;
        v30.tx = tx;
        v30.ty = ty;
        CGAffineTransformTranslate(&v29, &v30, 0.0, Height * -0.175);
        v30 = v29;
        [v15 setTransform_];
      }

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if ((*(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xD8)) & 1) == 0)
  {
    [a4 contentOffset];
    v19 = [a4 setContentOffset_];
  }

  sub_27496F510(v19, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), *&v29.a, *&v29.b, *&v29.c, *&v29.d, *&v29.tx, *&v29.ty, *&v30.a, *&v30.b, *&v30.c, *&v30.d, *&v30.tx, *&v30.ty, v31[0], v31[1], v31[2], v31[3]);
}

void sub_2749698DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v8 &= v8 - 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90, &qword_274A29858);
    sub_2749F95D4();
    if (v12)
    {
      [v12 removeFromSuperview];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      *(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xC8)) = 0;
      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_274969A38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v8 &= v8 - 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0, &qword_274A29878);
    sub_2749F95D4();
    if (v12)
    {
      [v12 removeFromSuperview];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      *(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xC8)) = 0;
      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_274969B94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; i = v11)
  {
    v11 = i;
LABEL_8:
    v8 &= v8 - 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68, &qword_274A29800);
    sub_2749F95D4();
    if (v12)
    {
      [v12 removeFromSuperview];
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      *(a4 + *((*MEMORY[0x277D85000] & *a4) + 0xC8)) = 0;
      return;
    }

    v8 = *(v5 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

id sub_274969CF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_166();
  v7 = *(v6 + 120);
  OUTLINED_FUNCTION_77(v3 + v7, v36);
  v8 = *(v3 + v7);
  v9 = (v8 + 48);
  v10 = *(v8 + 16) + 1;
  do
  {
    if (!--v10)
    {
      return 0;
    }

    v11 = *(v9 - 2);
    if (*(v9 - 1) == a1 && *v9 == a2)
    {
      break;
    }

    v9 += 3;
    OUTLINED_FUNCTION_34_2();
  }

  while ((sub_2749FDCC4() & 1) == 0);
  OUTLINED_FUNCTION_166();
  v15 = *(v14 + 128);

  OUTLINED_FUNCTION_77(v3 + v15, v35);

  OUTLINED_FUNCTION_34_2();
  v16 = sub_274955B8C();

  if (!v16)
  {
LABEL_17:
    v13 = [objc_allocWithZone(v11) initWithFrame_];

    return v13;
  }

  sub_2747A6AB0(v16);
  if (!v17)
  {

    goto LABEL_17;
  }

  v13 = v17;
  OUTLINED_FUNCTION_10_3(v3 + v15, v34);
  swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v3 + v15);
  *(v3 + v15) = 0x8000000000000000;
  v18 = OUTLINED_FUNCTION_34_2();
  v32 = sub_274797CC0(v18, v19);
  OUTLINED_FUNCTION_168();
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969478, &qword_274A14D58);
  if ((sub_2749FDA84() & 1) == 0)
  {
    v28 = v32;
LABEL_19:
    if (v23)
    {
      v29 = *(*(v33 + 56) + 8 * v28);

      if (v29)
      {

        *(*(v33 + 56) + 8 * v28) = v29;
      }

      else
      {

        sub_274976180(*(v33 + 48) + 16 * v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D60, &unk_274A297F0);
        sub_2749FDAA4();
      }

      *(v3 + v15) = v33;
      swift_endAccess();
      OUTLINED_FUNCTION_166();
      (*(v30 + 80))();
      return v13;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = OUTLINED_FUNCTION_34_2();
  v26 = sub_274797CC0(v24, v25);
  if ((v23 & 1) == (v27 & 1))
  {
    v28 = v26;
    goto LABEL_19;
  }

LABEL_27:
  result = sub_2749FDD54();
  __break(1u);
  return result;
}

void sub_27496A010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_128_1();
  a27 = v30;
  a28 = v31;
  v32 = v28;
  v33 = sub_2749FA4E4();
  v34 = OUTLINED_FUNCTION_0_0(v33, &v443);
  v403[2] = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v36);
  v38 = v403 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D90, &qword_274A29858);
  OUTLINED_FUNCTION_43();
  v403[3] = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v45);
  v46 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v430 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = v403 - v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0, &qword_274A14050);
  v56 = OUTLINED_FUNCTION_34(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_54_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0, &unk_274A29860);
  v60 = OUTLINED_FUNCTION_34(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_54_11();
  [v28 bounds];
  Width = CGRectGetWidth(v489);
  [v28 contentSize];
  [v28 setContentSize_];
  v63 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_136_2();
  v65 = v28 + *(v64 + 160);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v431 = v29;
    v438 = v53;
    v428 = v38;
    v66 = *(v65 + 1);
    [v28 contentOffset];
    v68 = 0.0;
    if (v67 + -70.0 < 0.0)
    {
      v69 = 0.0;
    }

    else
    {
      v69 = v67 + -70.0;
    }

    [v28 frame];
    v445 = v69;
    v71 = v70 + v69 + 70.0;
    [v28 contentSize];
    if (v72 >= v71)
    {
      v73 = v71;
    }

    else
    {
      v73 = v72;
    }

    v444 = v73;
    v449 = [v28 effectiveUserInterfaceLayoutDirection];
    OUTLINED_FUNCTION_136_2();
    v75 = *(v74 + 152);
    OUTLINED_FUNCTION_77(v28 + v75, &v488);
    v427 = v75;
    sub_27473ADB8(v28 + v75, v28, &qword_280967DB0, &unk_274A29860);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB8, &unk_274A10090);
    v77 = sub_2749F9524();
    OUTLINED_FUNCTION_9_3();
    v79 = *(v78 + 8);
    v426 = v76;
    v425 = v79;
    v424 = v78 + 8;
    v79(v28, v76);
    v80 = *(v77 + 16);
    v466 = v28;
    v433 = v39;
    v460 = v46;
    v413 = v77;
    v423 = v80;
    if (v80)
    {
      OUTLINED_FUNCTION_136_2();
      v404 = *(v81 + 208);
      OUTLINED_FUNCTION_136_2();
      v84 = *((v83 & v82) + 0x90);
      v457 = *((v83 & v82) + 0x70);
      OUTLINED_FUNCTION_136_2();
      v411 = *(v85 + 200);
      OUTLINED_FUNCTION_241(v77 + 32);
      OUTLINED_FUNCTION_77(v32 + v86, &v486);
      v412 = v84;
      OUTLINED_FUNCTION_77(v84 + v32, &v485);
      OUTLINED_FUNCTION_39_15();
      v29 = 0;
      OUTLINED_FUNCTION_234();
      OUTLINED_FUNCTION_90_2((v66 + 10));
      OUTLINED_FUNCTION_242();
      v422 = v87;
      OUTLINED_FUNCTION_53();
      *&v456 = v89;
      v436 = v66 + 6;
      v408 = &v472;
      v405 = "ontainerView";
      v90 = 16.0;
      *&v406 = 66.0;
      v467 = v66;
      v448 = v91;
      while (1)
      {
        if (v88 >= *(v77 + 16))
        {
          goto LABEL_179;
        }

        v459 = v88;
        LODWORD(v455) = *(v421 + v88);
        v484 = v455;
        OUTLINED_FUNCTION_63_3();
        sub_27473ADB8(v92, v93, &qword_280967DB0, &unk_274A29860);
        OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_255();
        sub_2749F95D4();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_225();
        v94();
        v95 = v470;
        if (v470)
        {
          v96 = v470 + 32;
          v97 = (v470 + 48);
          v441 = *(v470 + 16);
          v98 = v441 + 1;
          while (--v98)
          {
            v99 = v97 + 24;
            v100 = *v97;
            v97 += 24;
            if ((v100 & 0xFFFFFFFD) == 0)
            {
              v101 = (v99 - 32);
              v96 = (v99 - 40);
              goto LABEL_18;
            }
          }

          if (v441)
          {
            sub_2747B2794();
            v101 = (v95 + 40);
            v100 = *(v95 + 48);
LABEL_18:
            v102 = *v101;
            v103 = *v96;
            v482[0] = *v96;
            v482[1] = v102;
            v483 = v100;
            if (v455)
            {
              v104 = 12.0;
            }

            else
            {
              v104 = v90;
            }

            v416 = v103;
            v417 = v102;
            v418 = v100;
            sub_2747729AC(v103, v102, v100);
            [v32 contentSize];
            v106 = v105 - (v104 + v90 + v104 + v90);
            OUTLINED_FUNCTION_47_9(&v467);
            ObjectType = swift_getObjectType();
            OUTLINED_FUNCTION_118_3();
            v108 = *(v96 + 88);
            v109 = (v108)(v482, ObjectType, v96, v106);
            v110 = *(v96 + 80);
            v111 = v84;
            v468[0] = ObjectType;
            v463 = v110;
            v112 = (v110)(v482, ObjectType, v96);
            v113 = trunc(v106 / v109);
            v442 = v106;
            if (v113 <= 1.0)
            {
              v114 = 0.0;
            }

            else
            {
              v114 = fmod(v106, v109) / (v113 + -1.0);
            }

            v432 = v114;
            if (v459 || *(v32 + v404) == 1)
            {
              v68 = v68 + v90;
            }

            OUTLINED_FUNCTION_212();
            OUTLINED_FUNCTION_47_9(&v438);
            OUTLINED_FUNCTION_131_1();
            v420 = v115;
            v115();
            OUTLINED_FUNCTION_150_0();
            sub_2749F95D4();
            OUTLINED_FUNCTION_278();
            v116 = OUTLINED_FUNCTION_32_1();
            v419 = v117;
            (v117)(v116);
            v118 = v470;
            v447 = v108;
            if (!v470)
            {
              v119 = objc_allocWithZone(type metadata accessor for WFGridSectionContainerView());
              v118 = sub_2747E99D8(v104);
            }

            v120 = v412;
            v121 = v455;
            v122 = v118;
            v451 = v95;
            v123 = v121;
            if (v121)
            {
              v124 = sub_2749FCE14("Symbol", 6);
            }

            else
            {
              v124 = sub_2749FCE14("Color", 5);
            }

            v125 = v124;
            if (qword_28159E3A8 != -1)
            {
              swift_once();
            }

            v126 = qword_28159E448;
            OUTLINED_FUNCTION_32();
            sub_2749FCD64();
            OUTLINED_FUNCTION_59_7();
            sub_2749FCD64();
            OUTLINED_FUNCTION_96();

            OUTLINED_FUNCTION_157_0();
            v129 = [v127 v128];

            v130 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            v132 = v131;

            OUTLINED_FUNCTION_44();
            sub_2749FCD64();
            OUTLINED_FUNCTION_59_7();

            [v122 setAccessibilityLabel_];

            v479 = MEMORY[0x277D84F90];
            v446 = v104;
            OUTLINED_FUNCTION_33_14();
            if (v235)
            {
              [v32 contentSize];
              OUTLINED_FUNCTION_105_3();
              v446 = v133 + v134 - v104;
            }

            v135 = v104 + v104 + v112;
            v440 = v122;
            v414 = v126;
            if (v123)
            {
              sub_2749FCE14("Search Symbols", 14);
              OUTLINED_FUNCTION_34_1();
              if (qword_28159E3A8 != -1)
              {
                OUTLINED_FUNCTION_62();
                swift_once();
              }

              OUTLINED_FUNCTION_32_1();
              v136 = sub_2749FCD64();
              OUTLINED_FUNCTION_32_1();
              sub_2749FCD64();
              OUTLINED_FUNCTION_78();

              OUTLINED_FUNCTION_157_0();
              v139 = [v137 v138];

              if (!v139)
              {
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                sub_2749FCD64();
                OUTLINED_FUNCTION_59_7();
              }

              v140 = sub_27494FA34(v123, *(v120 + v32));
              if (v140)
              {
                v141 = v140;

                v142 = v141;
              }

              else
              {
                type metadata accessor for WFDrawerSearchControlsView();
                v145 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                *&v145[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets] = 0x4020000000000000;
                *&v145[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset] = 0;
                v146 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
                v147 = *&v145[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
                v148 = v145;
                v149 = [v147 searchTextField];
                [v149 setPlaceholder_];

                v150 = *&v145[v146];
                v32 = v466;
                v151 = v148;
                v122 = v440;
                v142 = v151;
                [v150 setDelegate_];
                OUTLINED_FUNCTION_102_3(v120 + v32);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v480[0] = *(v120 + v32);
                sub_2748F9DEC(v142, v123, isUniquelyReferenced_nonNull_native);
                OUTLINED_FUNCTION_224();
                *(v120 + v32) = v153;
                swift_endAccess();
                v141 = 0;
              }

              v154 = v141;
              v155 = [v142 superview];

              if (v155)
              {
              }

              else
              {
                [*&v122[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] addSubview_];
              }

              [v32 contentSize];
              OUTLINED_FUNCTION_105_3();
              v158 = v156 + v157;
              v159 = objc_opt_self();
              v160 = v142;
              [v159 begin];
              [v159 setDisableActions_];
              v161 = OUTLINED_FUNCTION_172();
              [v160 v162];
              MEMORY[0x277C5ECC0]([v159 commit]);
              OUTLINED_FUNCTION_108_3();
              v165 = *(v163 + 16);
              v164 = *(v163 + 24);
              if (v165 >= v164 >> 1)
              {
                OUTLINED_FUNCTION_8(v164);
                sub_2749FCFB4();
              }

              v135 = v135 + 54.0;
              OUTLINED_FUNCTION_45();
              sub_2749FCFF4();
              v144 = v479;

              v143 = *&v406;
            }

            else
            {
              v143 = 16.0;
              v144 = MEMORY[0x277D84F90];
            }

            v450 = v144;
            v84 = v451;
            v166 = v451[2];
            if (v166)
            {
              v122 = objc_opt_self();
              v435 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
              OUTLINED_FUNCTION_256();
              OUTLINED_FUNCTION_77(v32 + v167, &v475);
              if (v455)
              {
                v168 = 8.0;
              }

              else
              {
                v168 = v90;
              }

              v169 = v84 + 9;
              OUTLINED_FUNCTION_249();
              v434 = v170;
              OUTLINED_FUNCTION_260(-v166);
              v171 = -1;
              v172 = v446;
              OUTLINED_FUNCTION_118_3();
              v173 = v442;
              v465 = v122;
              do
              {
                v174 = v32;
                v176 = *(v169 - 5);
                v175 = *(v169 - 4);
                v177 = *(v169 - 24);
                v480[0] = v176;
                v480[1] = v175;
                v481 = v177;
                v469[0] = v175;
                LODWORD(v458) = v177 & 0xFFFFFFFD;
                if ((v177 & 0xFFFFFFFD) != 0 && (v29 & 1) == 0)
                {
                  if (v171 == -1)
                  {
                    v189 = OUTLINED_FUNCTION_47_3();
                    sub_2747729AC(v189, v190, v177);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_282();
                    if (v171 >= *(v180 + 16))
                    {
                      goto LABEL_178;
                    }

                    v166 = *(v169 - 8);
                    v122 = *(v169 - 7);
                    v181 = *(v169 - 48);
                    v470 = v166;
                    v471 = v122;
                    LOBYTE(v472) = v181;
                    v182 = OUTLINED_FUNCTION_47_3();
                    sub_2747729AC(v182, v183, v177);
                    v184 = OUTLINED_FUNCTION_24_0();
                    sub_2747729AC(v184, v185, v181);
                    OUTLINED_FUNCTION_45_3();
                    v186();
                    OUTLINED_FUNCTION_55_6();
                    OUTLINED_FUNCTION_184();
                    sub_274772984(v187, v188, v181);
                    v143 = v143 + v168 + v109;
                  }

                  v172 = v446;
                }

                else
                {
                  v178 = OUTLINED_FUNCTION_47_3();
                  sub_2747729AC(v178, v179, v177);
                }

                [v122 begin];
                [v122 setDisableActions_];
                v468[1] = v176;
                v470 = v176;
                OUTLINED_FUNCTION_267();
                OUTLINED_FUNCTION_88_3(v480);
                v122 = v452;
                v462 = v171 + 1;
                MEMORY[0x277C5AFB0](v171 + 1, v459);
                OUTLINED_FUNCTION_256();
                v192 = *(v174 + v191);
                v29 = v468[0];
                if (*(v192 + 16))
                {

                  v193 = sub_274797E40();
                  if (v194)
                  {
                    v195 = *v456;
                    v166 = *(*(v192 + 56) + 8 * v193);
                    v195(v122, v460);
                    v174 = v195;

LABEL_75:
                    LODWORD(v461) = 0;
                    goto LABEL_77;
                  }
                }

                v109 = v68 + v143;
                v196 = OUTLINED_FUNCTION_52_7();
                v463(v196);
                OUTLINED_FUNCTION_247();
                v197 = v197 && v109 < v444;
                if (!v197)
                {
                  OUTLINED_FUNCTION_70_3();
                  v198 = OUTLINED_FUNCTION_244();
                  (v174)(v198);
                  v166 = 0;
                  goto LABEL_75;
                }

                v166 = (*(v166 + 48))(v174, &v470, v477, v29, v166);
                OUTLINED_FUNCTION_70_3();
                v199 = OUTLINED_FUNCTION_244();
                (v174)(v199);
                LODWORD(v461) = 1;
LABEL_77:
                v84 = v469[0];
                v200 = OUTLINED_FUNCTION_117_0(&v487);
                [v200 v201];
                if (v166)
                {
                  v450 = v174;
                  v443 = v171 + 2;
                  LODWORD(v454) = v177;
                  v109 = (v447)(v480, v29, v467, v173);
                  OUTLINED_FUNCTION_33_14();
                  [v122 begin];
                  [v122 setDisableActions_];
                  v166 = v166;
                  [v166 layoutIfNeeded];
                  v29 = v466;
                  v202 = [v466 traitCollection];
                  [v202 displayScale];

                  OUTLINED_FUNCTION_238();
                  BSFloatRoundForScale();
                  OUTLINED_FUNCTION_133_2();
                  v205 = [v203 v204];
                  [v205 displayScale];

                  BSFloatRoundForScale();
                  v206 = &selRef_createFolderWithName_icon_error_;
                  OUTLINED_FUNCTION_45_3();
                  v207();
                  v208 = OUTLINED_FUNCTION_238();
                  [v209 v210];

                  v211 = [v122 commit];
                  if (v461)
                  {
                    v206 = v439;
                    MEMORY[0x277C5AFB0](v462, v459);
                    v29 = v466;
                    v212 = v457;
                    OUTLINED_FUNCTION_102_3(v466 + v457);
                    v213 = v166;
                    swift_isUniquelyReferenced_nonNull_native();
                    OUTLINED_FUNCTION_263(*(v29 + v212));
                    v214 = OUTLINED_FUNCTION_144();
                    sub_2748F9C64(v214, v215);
                    OUTLINED_FUNCTION_116_3();
                    *(v29 + v212) = v216;
                    OUTLINED_FUNCTION_133_2();
                    v111 = Strong;
                    OUTLINED_FUNCTION_70_3();
                    v450();
                    swift_endAccess();
                    v211 = [OUTLINED_FUNCTION_262(v469) addSubview_];
                  }

                  v84 = &v479;
                  MEMORY[0x277C5ECC0](v211);
                  OUTLINED_FUNCTION_108_3();
                  v122 = *(v217 + 16);
                  v218 = *(v217 + 24);
                  v219 = v454;
                  if (v122 >= v218 >> 1)
                  {
                    OUTLINED_FUNCTION_8(v218);
                    sub_2749FCFB4();
                  }

                  sub_2749FCFF4();
                  v450 = v479;

                  v470 = OUTLINED_FUNCTION_111_2();
                  v471 = v469[0];
                  LOBYTE(v472) = v219;
                  OUTLINED_FUNCTION_282();
                  v223 = *(v222 + 16);
                  v224 = v223 - 1;
                  if (!v223)
                  {
                    v224 = 0;
                  }

                  v32 = v466;
                  v173 = v442;
                  if (v223 && v462 == v224)
                  {
                    sub_274772984(v220, v221, v219);
                    v29 = 0;
                    OUTLINED_FUNCTION_118_3();
LABEL_105:
                    OUTLINED_FUNCTION_184();
                    goto LABEL_106;
                  }

                  v166 = v467;
                  if (!v458)
                  {
                    v84 = v111;
                    v226 = v466;
                    if (v443 >= v223)
                    {
                      v109 = 0.0;
                      OUTLINED_FUNCTION_33_14();
                      v206 = v448;
                      v32 = v447;
                      if (v235)
                      {
                        goto LABEL_100;
                      }

LABEL_93:
                      v231 = OUTLINED_FUNCTION_42_11();
                      v232 = (v32)(v231);
                      v172 = v172 + OUTLINED_FUNCTION_23_18(v232);
                      v109 = v109 + v172;
                      v32 = v226;
                      [v226 contentSize];
                      v235 = v233 == v109;
                      v234 = v233 >= v109;
                    }

                    else
                    {
                      v227 = OUTLINED_FUNCTION_73_3();
                      (v32)(v227);
                      OUTLINED_FUNCTION_55_6();
                      OUTLINED_FUNCTION_133_2();
                      sub_274772984(v228, v229, v230);
                      OUTLINED_FUNCTION_33_14();
                      if (!v235)
                      {
                        goto LABEL_93;
                      }

LABEL_100:
                      v246 = OUTLINED_FUNCTION_42_11();
                      v247 = (v32)(v246);
                      OUTLINED_FUNCTION_16_20(&v462, v247);
                      v32 = v226;
                    }

                    v111 = v84;
                    if (!v235 && v234)
                    {
                      OUTLINED_FUNCTION_49_9();
                      v29 = 0;
                      goto LABEL_105;
                    }
                  }

                  OUTLINED_FUNCTION_52_7();
                  OUTLINED_FUNCTION_188();
                  v111();
                  v248 = OUTLINED_FUNCTION_146();
                  v249 = (v111)(v248);
                  v111 = v32;
                  v32 = v206;
                  v109 = v249;
                  OUTLINED_FUNCTION_49_9();
                  OUTLINED_FUNCTION_196();
                  goto LABEL_105;
                }

                v470 = OUTLINED_FUNCTION_111_2();
                OUTLINED_FUNCTION_267();
                if (v441 && v434 + v171 == -1)
                {
                  sub_274772984(v225, v84, v177);
                  v29 = 0;
                  v32 = v466;
                  OUTLINED_FUNCTION_118_3();
                  goto LABEL_106;
                }

                v32 = v466;
                v166 = v467;
                if (v458)
                {
                  goto LABEL_114;
                }

                v84 = v111;
                v236 = v466;
                if (v171 + 2 >= v441)
                {
                  v109 = 0.0;
                  OUTLINED_FUNCTION_33_14();
                  v174 = v448;
                  v32 = v447;
                  if (v235)
                  {
LABEL_110:
                    v251 = OUTLINED_FUNCTION_42_11();
                    v252 = (v32)(v251);
                    OUTLINED_FUNCTION_16_20(&v462, v252);
                    v32 = v236;
                    goto LABEL_111;
                  }
                }

                else
                {
                  v237 = OUTLINED_FUNCTION_73_3();
                  (v32)(v237);
                  OUTLINED_FUNCTION_55_6();
                  OUTLINED_FUNCTION_184();
                  OUTLINED_FUNCTION_133_2();
                  sub_274772984(v238, v239, v240);
                  OUTLINED_FUNCTION_33_14();
                  if (v235)
                  {
                    goto LABEL_110;
                  }
                }

                v241 = OUTLINED_FUNCTION_42_11();
                v242 = (v32)(v241);
                v172 = v172 + OUTLINED_FUNCTION_23_18(v242);
                v109 = v109 + v172;
                v32 = v236;
                [v236 contentSize];
                v245 = v243 == v109;
                v244 = v243 >= v109;
LABEL_111:
                v111 = v84;
                if (v245 || !v244)
                {
LABEL_114:
                  OUTLINED_FUNCTION_52_7();
                  OUTLINED_FUNCTION_188();
                  v111();
                  v253 = OUTLINED_FUNCTION_146();
                  (v111)(v253);
                  OUTLINED_FUNCTION_184();
                  v111 = v32;
                  v32 = v174;
                  v109 = v254;
                  OUTLINED_FUNCTION_49_9();
                  OUTLINED_FUNCTION_196();
                  goto LABEL_106;
                }

                OUTLINED_FUNCTION_49_9();
                v29 = 0;
LABEL_106:
                v169 += 3;
                ++v171;
                OUTLINED_FUNCTION_109_3();
              }

              while (v250 + v171 != -1);
            }

            v255 = OUTLINED_FUNCTION_123_2(&v476);
            sub_27479BB64(v255);
            sub_2749FCF74();
            OUTLINED_FUNCTION_78();

            v256 = OUTLINED_FUNCTION_117_0(v469);
            [v256 v257];

            [v32 contentSize];
            OUTLINED_FUNCTION_105_3();
            v260 = v258 + v259;
            OUTLINED_FUNCTION_47_9(&Strong);
            OUTLINED_FUNCTION_131_1();
            OUTLINED_FUNCTION_280();
            v261();
            OUTLINED_FUNCTION_150_0();
            sub_2749F95D4();
            OUTLINED_FUNCTION_32_1();
            OUTLINED_FUNCTION_278();
            v419();
            v262 = v470;
            if (v470)
            {

              v90 = 16.0;
            }

            else
            {
              v263 = objc_opt_self();
              OUTLINED_FUNCTION_113_3();
              v264 = v32;
              v265 = swift_allocObject();
              *(v265 + 16) = v122;
              *(v265 + 24) = 0x4030000000000000;
              *(v265 + 32) = v68;
              *(v265 + 40) = v260;
              *(v265 + 48) = v135;
              *(v265 + 56) = v264;
              v266 = v122;
              v267 = v264;
              OUTLINED_FUNCTION_83_2();
              OUTLINED_FUNCTION_32_2();
              v268 = swift_allocObject();
              *(v268 + 16) = sub_2749763AC;
              *(v268 + 24) = v265;
              v473 = sub_27491222C;
              OUTLINED_FUNCTION_56_8(v268);
              *(v269 - 256) = v270;
              v471 = 1107296256;
              OUTLINED_FUNCTION_12_29();
              v472 = v271;
              OUTLINED_FUNCTION_101_2(&block_descriptor_83_1);
              v272 = _Block_copy(&v470);

              [v263 performWithoutAnimation_];
              _Block_release(v272);
              LOBYTE(v263) = OUTLINED_FUNCTION_144_1(v268, "");

              v90 = 16.0;
              if (v263)
              {
                goto LABEL_183;
              }

              v273 = v266;
              v274 = OUTLINED_FUNCTION_24_1();
              [v274 v275];
              [v273 setAlpha_];
              selRef_colorWithDynamicProvider_ = 0;
              selRef_colorWithPaletteColor_ = 0;
              v470 = 0x3FF0000000000000;
              OUTLINED_FUNCTION_101_2(0x3FF0000000000000);
              selRef_colorWithWhite_alpha_ = 0;
              selRef_colors = 0;
              [v273 v276];

              OUTLINED_FUNCTION_88_3(v480);
              OUTLINED_FUNCTION_223();
              v277 = v429;
              OUTLINED_FUNCTION_102_3(v264 + v429);
              v278 = v273;
              v279 = sub_2749F95E4();
              MEMORY[0x28223BE20](v279);
              OUTLINED_FUNCTION_174();
              *(v280 - 16) = v267;
              v84 = (v264 + v277);
              v281 = v407;
              sub_2749F9554();
              v407 = v281;
              OUTLINED_FUNCTION_190();

              swift_endAccess();
              v410 = sub_2749763AC;
              v409 = v265;
              v32 = v264;
            }

            v77 = v413;
            v63 = v440;
            if (*(v32 + v411) == 1)
            {
              v282 = [v440 layer];
              v283 = sub_2749F9884();
              v284 = OUTLINED_FUNCTION_142_1();
              v285 = OUTLINED_FUNCTION_24_1();
              [v285 v286];

              objc_opt_self();
              OUTLINED_FUNCTION_86();
              v287 = swift_allocObject();
              *(v287 + 16) = v63;
              v473 = sub_274976A14;
              OUTLINED_FUNCTION_56_8(v287);
              *(v288 - 256) = v289;
              OUTLINED_FUNCTION_268();
              v472 = sub_274760264;
              OUTLINED_FUNCTION_101_2(&block_descriptor_90);
              v84 = _Block_copy(&v470);
              v290 = v440;

              OUTLINED_FUNCTION_80_2();
              *(v291 - 256) = v292;
              v474 = 0;
              v63 = v440;
              v470 = MEMORY[0x277D85DD0];
              OUTLINED_FUNCTION_268();
              v472 = sub_27480D7B8;
              OUTLINED_FUNCTION_101_2(&block_descriptor_93_1);
              v293 = _Block_copy(&v470);
              OUTLINED_FUNCTION_2_23();
              v294 = OUTLINED_FUNCTION_279();
              [v294 v295];
              _Block_release(v293);
              _Block_release(v84);
            }

            [v63 setFrame_];
            if (v455)
            {
              sub_2749FCE14("Search Symbols", 14);
              OUTLINED_FUNCTION_34_1();
              if (qword_28159E3A8 != -1)
              {
                OUTLINED_FUNCTION_62();
                swift_once();
              }

              OUTLINED_FUNCTION_32_1();
              v296 = sub_2749FCD64();
              OUTLINED_FUNCTION_32_1();
              sub_2749FCD64();
              OUTLINED_FUNCTION_78();

              OUTLINED_FUNCTION_157_0();

              v299 = [*&v63[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
              [v299 setCornerRadius_];

              OUTLINED_FUNCTION_176();
            }

            else
            {
              OUTLINED_FUNCTION_176();
            }

            v68 = v68 + v135;
          }

          else
          {
          }
        }

        v88 = v459 + 1;
        if (v459 + 1 == v423)
        {
          goto LABEL_133;
        }
      }
    }

    OUTLINED_FUNCTION_39_15();
    OUTLINED_FUNCTION_234();
LABEL_133:
    [v32 contentSize];
    [v32 setContentSize_];
    OUTLINED_FUNCTION_136_2();
    v303 = *(v302 + 112);
    OUTLINED_FUNCTION_77(v32 + v303, &v470);
    v453 = v303;
    v463 = (*(v32 + v303) + 64);
    OUTLINED_FUNCTION_27_12();
    v306 = v305 & v304;
    OUTLINED_FUNCTION_136_2();
    v308 = *(v307 + 136);
    v311 = *((v310 & v309) + 0x78);
    OUTLINED_FUNCTION_217(v312, *((v310 & v309) + 0x80));
    v468[0] = v308;
    OUTLINED_FUNCTION_77(v308 + v32, v482);
    v454 = v311;
    OUTLINED_FUNCTION_77(v32 + v311, v480);
    OUTLINED_FUNCTION_132_2(v480);
    v464 = v313;
    OUTLINED_FUNCTION_90_2(v314 + 32);
    OUTLINED_FUNCTION_242();
    v465 = v315;
    v458 = *MEMORY[0x277D7A490];
    v461 = v316 + 8;
    OUTLINED_FUNCTION_98_3(&v428);
    *&v317 = 136315138;
    v456 = v317;
    OUTLINED_FUNCTION_199();
    v462 = v318;
LABEL_134:
    v319 = v463;
    while (v306)
    {
      v320 = v29;
LABEL_141:
      OUTLINED_FUNCTION_62_2();
      v322(v439);
      OUTLINED_FUNCTION_245();
      v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
      v323 = *(v303 + 48);
      v324 = v431;
      v325 = OUTLINED_FUNCTION_29_1();
      v326(v325);
      *(v324 + v323) = v308;
      OUTLINED_FUNCTION_36_14();
      __swift_storeEnumTagSinglePayload(v327, v328, v329, v330);
      v331 = v308;
LABEL_142:
      OUTLINED_FUNCTION_63_3();
      sub_2747D31F8(v332, v333, &unk_280968DD0, &qword_274A14050);
      v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
      OUTLINED_FUNCTION_48_7(v334);
      if (v235)
      {
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_186();

        OUTLINED_FUNCTION_83_2();
        OUTLINED_FUNCTION_147_0();
        OUTLINED_FUNCTION_25_15();
        return;
      }

      v469[0] = *(v308 + *(v303 + 48));
      OUTLINED_FUNCTION_8_2();
      v335 = OUTLINED_FUNCTION_47_3();
      v336(v335);
      v337 = *v467;
      OUTLINED_FUNCTION_119_2();
      OUTLINED_FUNCTION_154();
      v338 = OUTLINED_FUNCTION_47_9(&v459);
      v339 = v433;
      v337(v338);
      v303 = sub_2749F9524();
      OUTLINED_FUNCTION_185();
      v341 = *v340;
      (*v340)(v308, v339);
      v342 = *(v303 + 16);

      v343 = sub_2749F9274();
      if (v343 < 0 || v343 >= v342)
      {
        v29 = v320;
        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_8_2();
        v349 = OUTLINED_FUNCTION_151_0();
        v350 = v460;
        v351(v349, v438, v460);
        v308 = v320;
        v303 = sub_2749FA4D4();
        v352 = sub_2749FD2D4();
        if (os_log_type_enabled(v303, v352))
        {
          v353 = OUTLINED_FUNCTION_30_9();
          v29 = OUTLINED_FUNCTION_178();
          *v353 = OUTLINED_FUNCTION_112_2(v29, &a20).n128_u32[0];
          OUTLINED_FUNCTION_2_47();
          sub_274720F90(&qword_280968FC8, v354);
          v355 = sub_2749FDC74();
          v357 = v356;
          v358 = *v461;
          (*v461)(v337, v460);
          v308 = sub_2747AF460(v355, v357, v477);

          *(v353 + 4) = v308;
          _os_log_impl(&dword_274719000, v303, v352, "Invalid on screen cell index path %s", v353, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          OUTLINED_FUNCTION_199();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_81_2();

          OUTLINED_FUNCTION_14_23();
          v360(v29, v415);
          v358(v438, v353);
        }

        else
        {
          OUTLINED_FUNCTION_81_2();

          OUTLINED_FUNCTION_124_2();
          (v303)(v337, v350);
          OUTLINED_FUNCTION_14_23();
          v362(v29, v415);
          v363 = OUTLINED_FUNCTION_144();
          (v303)(v363);
        }

        OUTLINED_FUNCTION_258();
      }

      else
      {
        OUTLINED_FUNCTION_119_2();
        OUTLINED_FUNCTION_154();
        v344 = OUTLINED_FUNCTION_47_9(&v442);
        v337(v344);
        sub_2749F9534();
        OUTLINED_FUNCTION_59_7();
        OUTLINED_FUNCTION_185();
        v341();
        v345 = sub_2749F9274();
        v29 = v320;
        if ((v303 & 0xC000000000000001) != 0)
        {
          v308 = MEMORY[0x277C5F6D0](v345, v303);
          OUTLINED_FUNCTION_204();
          v347 = v469[0];
        }

        else
        {
          OUTLINED_FUNCTION_204();
          v347 = v469[0];
          if ((v346 & 0x8000000000000000) != 0)
          {
            goto LABEL_180;
          }

          if (v346 >= *((v303 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_181;
          }

          v308 = *(v303 + 8 * v346 + 32);
        }

        [v347 frame];
        [v308 convertRect:v466 toCoordinateSpace:?];
        if (OUTLINED_FUNCTION_141_0(v490) < v445 || (OUTLINED_FUNCTION_92_3(), CGRectGetMinY(v491), OUTLINED_FUNCTION_247(), v197))
        {
          v469[0] = v308;
          [v347 removeFromSuperview];
          OUTLINED_FUNCTION_119_2();
          OUTLINED_FUNCTION_288();
          v368 = 0;
          for (i = (v308 + 6); ; i += 24)
          {
            if (&qword_280968420 == v368)
            {

              OUTLINED_FUNCTION_203();
              OUTLINED_FUNCTION_294();
              v371 = v347;
              v372 = sub_2749FA4D4();
              v373 = sub_2749FD2D4();

              if (os_log_type_enabled(v372, v373))
              {
                v374 = OUTLINED_FUNCTION_30_9();
                i = OUTLINED_FUNCTION_178();
                *v374 = OUTLINED_FUNCTION_112_2(i, &a20).n128_u32[0];
                v479 = swift_getObjectType();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969470, &qword_274A14D50);
                OUTLINED_FUNCTION_228();
                v375 = sub_2749FCDC4();
                v29 = sub_2747AF460(v375, v376, v477);

                *(v374 + 4) = v29;
                OUTLINED_FUNCTION_199();
                _os_log_impl(&dword_274719000, v372, v373, "Recycled cell without a reuse identifier, cell is of type: %s", v374, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(i);
                OUTLINED_FUNCTION_31();
                OUTLINED_FUNCTION_31();
              }

              OUTLINED_FUNCTION_14_23();
              v377(&qword_280968420, v415);
              OUTLINED_FUNCTION_204();
              goto LABEL_175;
            }

            if (v368 >= v308[2])
            {
              goto LABEL_182;
            }

            v29 = *(i - 8);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

            if ([v347 isKindOfClass_])
            {
              break;
            }

            v368 = (v368 + 1);
            OUTLINED_FUNCTION_199();
          }

          v378 = v466;
          v379 = v452;
          OUTLINED_FUNCTION_10_3(&v452[v466], v477);
          OUTLINED_FUNCTION_147_0();
          swift_isUniquelyReferenced_nonNull_native();
          v479 = *&v379[v378];
          *&v379[v378] = 0x8000000000000000;
          v380 = OUTLINED_FUNCTION_198();
          sub_274797CC0(v380, v381);
          OUTLINED_FUNCTION_168();
          if (__OFADD__(v384, v385))
          {
            goto LABEL_184;
          }

          v386 = v382;
          i = v383;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969478, &qword_274A14D58);
          v387 = sub_2749FDA84();
          v388 = v479;
          if (v387)
          {
            v389 = OUTLINED_FUNCTION_198();
            v391 = sub_274797CC0(v389, v390);
            v393 = i & 1;
            i = v460;
            if (v393 != (v392 & 1))
            {
              goto LABEL_185;
            }

            v386 = v391;
          }

          else
          {
            OUTLINED_FUNCTION_204();
          }

          OUTLINED_FUNCTION_119_2();
          *&v452[v394] = v388;
          if (v395)
          {
          }

          else
          {
            sub_274972654(&v479);
            sub_2748FB298();
          }

          OUTLINED_FUNCTION_199();
          v373 = *(v388 + 56) + 8 * v386;
          v396 = v347;
          v397 = OUTLINED_FUNCTION_228();
          sub_274765168(v397, v398);
          v372 = v479;
          swift_endAccess();

          v455 = sub_274972654;
LABEL_175:
          OUTLINED_FUNCTION_158();
          v399 = OUTLINED_FUNCTION_266(&v478);
          OUTLINED_FUNCTION_10_3(v399, v477);
          v308 = (&v372->isa + v373);
          OUTLINED_FUNCTION_123_2(v468);
          v303 = sub_274973FF0();
          swift_endAccess();

          OUTLINED_FUNCTION_81_2();
          v401 = OUTLINED_FUNCTION_17_24();
          v402(v401, i);
          v318 = v462;
          goto LABEL_134;
        }

        OUTLINED_FUNCTION_8_2();
        v348(v438, v342);

        OUTLINED_FUNCTION_258();
      }
    }

    while (1)
    {
      v321 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v321 >= v318)
      {
        v320 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
        OUTLINED_FUNCTION_117_0(&v460);
        OUTLINED_FUNCTION_88_2();
        __swift_storeEnumTagSinglePayload(v364, v365, v366, v367);
        v306 = 0;
        goto LABEL_142;
      }

      v306 = *(v319 + v321);
      ++v63;
      if (v306)
      {
        v320 = v29;
        v63 = v321;
        goto LABEL_141;
      }
    }

    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    sub_2749FDD54();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
    OUTLINED_FUNCTION_113_3();
    v300 = swift_allocObject();
    *(v300 + 16) = xmmword_274A0EF10;
    OUTLINED_FUNCTION_24_19(v300, "Inset:) instead");
    OUTLINED_FUNCTION_25_15();
  }
}

void sub_27496C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_128_1();
  a27 = v30;
  a28 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E10, &unk_274A100F0);
  v34 = OUTLINED_FUNCTION_34(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15();
  v37 = OUTLINED_FUNCTION_70(v36);
  v38 = type metadata accessor for WFAddToHomeScreenItem(v37);
  OUTLINED_FUNCTION_43();
  v500 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_54_1();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (&v427 - v47);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v50);
  v51 = sub_2749FA4E4();
  v52 = OUTLINED_FUNCTION_0_0(v51, &v480);
  v429 = v53;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970DA0, &qword_274A29878);
  v57 = OUTLINED_FUNCTION_0_0(v56, &v503);
  v432 = v58;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v62);
  v63 = sub_2749F9284();
  v64 = OUTLINED_FUNCTION_0_0(v63, &v515);
  v466 = v65;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0, &qword_274A14050);
  v71 = OUTLINED_FUNCTION_34(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_39();
  v74 = v72 - v73;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0, &unk_274A14040);
  v78 = OUTLINED_FUNCTION_34(v77);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_54_11();
  [v28 bounds];
  Width = CGRectGetWidth(v520);
  [v28 contentSize];
  [v28 setContentSize_];
  OUTLINED_FUNCTION_85_1();
  v82 = &v28[*(v81 + 160)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
    OUTLINED_FUNCTION_113_3();
    v332 = swift_allocObject();
    *(v332 + 16) = xmmword_274A0EF10;
    OUTLINED_FUNCTION_24_19(v332, "Inset:) instead");
    OUTLINED_FUNCTION_25_15();

    return;
  }

  v84 = Strong;
  v492 = *(v82 + 1);
  [v28 contentOffset];
  v86 = 0.0;
  if (v85 + -70.0 < 0.0)
  {
    v87 = 0.0;
  }

  else
  {
    v87 = v85 + -70.0;
  }

  [v28 frame];
  v89 = v88 + v87 + 70.0;
  [v28 contentSize];
  if (v90 >= v89)
  {
    v91 = v89;
  }

  else
  {
    v91 = v90;
  }

  v477 = [v28 effectiveUserInterfaceLayoutDirection];
  OUTLINED_FUNCTION_85_1();
  v93 = *(v92 + 152);
  OUTLINED_FUNCTION_77(&v28[v93], &v517);
  v459[2] = v93;
  sub_27473ADB8(&v28[v93], v28, &unk_280968DC0, &unk_274A14040);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0, &unk_274A10120);
  v95 = sub_2749F9524();
  OUTLINED_FUNCTION_9_3();
  v97 = *(v96 + 8);
  v459[1] = v94;
  v459[0] = v97;
  v458 = v96 + 8;
  v97(v28, v94);
  v98 = *(v95 + 16);
  v496 = v28;
  v469[0] = v74;
  v495 = v84;
  v442 = v95;
  v457 = v98;
  if (!v98)
  {
    OUTLINED_FUNCTION_39_15();
    OUTLINED_FUNCTION_234();
    goto LABEL_155;
  }

  OUTLINED_FUNCTION_85_1();
  v428 = *(v99 + 208);
  OUTLINED_FUNCTION_85_1();
  v102 = *((v101 & v100) + 0x90);
  v484 = *((v101 & v100) + 0x70);
  OUTLINED_FUNCTION_85_1();
  v440 = *(v103 + 200);
  v456 = v95 + 32;
  v450 = v104;
  OUTLINED_FUNCTION_77(&v28[v104], &v514);
  v433 = v102;
  OUTLINED_FUNCTION_77(&v28[v102], &v513);
  OUTLINED_FUNCTION_39_15();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_234();
  v476 = v492 + 88;
  *&v486 = v492 + 80;
  v448 = v432 + 16;
  v447 = v432 + 8;
  OUTLINED_FUNCTION_53();
  v482 = v106;
  v469[1] = v107 + 48;
  v437 = &v504;
  v431 = "ontainerView";
  v443 = v91;
  v108 = v441;
  v493 = v38;
  v109 = v455;
  v481 = v48;
  v498 = v29;
LABEL_10:
  if (v105 >= *(v95 + 16))
  {
    goto LABEL_202;
  }

  v110 = v95;
  v487 = v105;
  v111 = *(v456 + v105);
  LOBYTE(v508) = *(v456 + v105);
  OUTLINED_FUNCTION_63_3();
  sub_27473ADB8(v112, v113, &unk_280968DC0, &unk_274A14040);
  OUTLINED_FUNCTION_255();
  sub_2749F95D4();
  v114 = OUTLINED_FUNCTION_32();
  (v459[0])(v114);
  v115 = v502;
  if (!v502)
  {
    goto LABEL_26;
  }

  v116 = 0;
  v488 = v111;
  v501 = *(v502 + 16);
  while (2)
  {
    OUTLINED_FUNCTION_221();
    if (v117 == v116)
    {
      v118 = 1;
      OUTLINED_FUNCTION_88_2();
      __swift_storeEnumTagSinglePayload(v119, v120, v121, v38);
      if (v115[2])
      {
        OUTLINED_FUNCTION_81_2();
        OUTLINED_FUNCTION_6_39();
        sub_2749768E8(v115 + v122, v108);
        v118 = 0;
      }

      __swift_storeEnumTagSinglePayload(v108, v118, 1, v38);
      OUTLINED_FUNCTION_156_0(v463, 1, v38);
      v109 = v455;
      if (!v221)
      {
        sub_27472ECBC(v463, &qword_280967E10, &unk_274A100F0);
      }

LABEL_23:
      OUTLINED_FUNCTION_156_0(v108, 1, v38);
      if (v221)
      {

        sub_27472ECBC(v108, &qword_280967E10, &unk_274A100F0);
LABEL_26:
        v131 = v487;
        v95 = v110;
        goto LABEL_148;
      }

      v462 = v86;
      v132 = v449;
      sub_27477BDA4(v108, v449);
      v467 = v111;
      v133 = dbl_274A298C8[v111];
      [v496 contentSize];
      OUTLINED_FUNCTION_274();
      OUTLINED_FUNCTION_47_9(&v516);
      ObjectType = swift_getObjectType();
      v475 = *(v492 + 88);
      v135 = (v475)(v132, ObjectType, v492, v31);
      OUTLINED_FUNCTION_70_3();
      v485 = v136;
      v137 = v136();
      v138 = trunc(v31 / v135);
      if (v138 <= 1.0)
      {
        v139 = 0.0;
      }

      else
      {
        v139 = fmod(v31, v135) / (v138 + -1.0);
      }

      v473 = v139;
      OUTLINED_FUNCTION_256();
      if (v140 || v496[v428] == 1)
      {
        v462 = v462 + 16.0;
      }

      OUTLINED_FUNCTION_47_9(v469);
      OUTLINED_FUNCTION_131_1();
      v446 = v141;
      v141();
      sub_2749F95D4();
      v142 = OUTLINED_FUNCTION_32_1();
      v445 = v143;
      v143(v142);
      v144 = v502;
      if (!v502)
      {
        v116 = objc_allocWithZone(type metadata accessor for WFGridSectionContainerView());
        v144 = sub_2747E99D8(v133);
      }

      v145 = v144;
      v146 = OUTLINED_FUNCTION_231();
      sub_2749576A4(v146);
      sub_2749FCD64();
      OUTLINED_FUNCTION_78();

      v464 = v145;
      [v145 setAccessibilityLabel_];

      v512 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_37_14();
      v147 = v496;
      if (v221)
      {
        [v496 contentSize];
        OUTLINED_FUNCTION_105_3();
      }

      v148 = v133 + v133 + v137;
      v491 = ObjectType;
      if (v488 == 3)
      {
        v149 = v147;
        sub_2749FCE14("Search Symbols", 14);
        OUTLINED_FUNCTION_34_1();
        v158 = v462;
        if (qword_28159E3A8 != -1)
        {
          OUTLINED_FUNCTION_62();
          swift_once();
        }

        OUTLINED_FUNCTION_32_1();
        v29 = sub_2749FCD64();
        OUTLINED_FUNCTION_32_1();
        sub_2749FCD64();
        OUTLINED_FUNCTION_78();

        OUTLINED_FUNCTION_157_0();
        v152 = [v150 v151];

        if (!v152)
        {
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          sub_2749FCD64();
          OUTLINED_FUNCTION_59_7();
        }

        v153 = v149;
        v154 = sub_27494FAB0(3, *&v149[v433]);
        if (v154)
        {
          v155 = v154;

          v156 = v155;
        }

        else
        {
          type metadata accessor for WFDrawerSearchControlsView();
          v159 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          *&v159[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets] = 0x4020000000000000;
          *&v159[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset] = 0;
          v160 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
          v161 = *&v159[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
          v29 = v159;
          v162 = [v161 searchTextField];
          [v162 setPlaceholder_];

          v163 = v433;
          v164 = *&v159[v160];
          v156 = v29;
          [v164 setDelegate_];
          OUTLINED_FUNCTION_10_3(&v149[v163], &v502);
          swift_isUniquelyReferenced_nonNull_native();
          v165 = OUTLINED_FUNCTION_265(*&v149[v163]);
          sub_2748FA118(v165, 3, v166, v167, v168, v169, v170, v171, v427, v428);
          v153 = v149;
          *&v149[v163] = v511;
          swift_endAccess();
          v155 = 0;
        }

        v172 = v155;
        v173 = [v156 superview];

        OUTLINED_FUNCTION_133_2();
        if (v173)
        {
        }

        else
        {
          [*&v464[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] addSubview_];
        }

        [v153 contentSize];
        OUTLINED_FUNCTION_105_3();
        v176 = v174 + v175;
        v177 = objc_opt_self();
        v178 = v156;
        [v177 begin];
        [v177 setDisableActions_];
        v179 = OUTLINED_FUNCTION_172();
        [v178 v180];
        MEMORY[0x277C5ECC0]([v177 commit]);
        v181 = *((v512 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v512 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v181 >> 1)
        {
          OUTLINED_FUNCTION_8(v181);
          sub_2749FCFB4();
        }

        v133 = v133 + 54.0;
        v148 = v148 + 54.0;
        sub_2749FCFF4();
        v157 = v512;

        v147 = v153;
      }

      else
      {
        v157 = MEMORY[0x277D84F90];
        v158 = v462;
      }

      v454 = v157;
      v460 = v148;
      v182 = v115[2];
      if (!v182)
      {
        goto LABEL_134;
      }

      v497 = objc_opt_self();
      v434 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
      OUTLINED_FUNCTION_81_2();
      v490 = (v115 + ((*(v183 + 80) + 32) & ~*(v183 + 80)));
      OUTLINED_FUNCTION_77(&v147[v484], &v507);
      v184 = 0;
      OUTLINED_FUNCTION_221();
      v220 = v185 != 0;
      v186 = v185 - 1;
      if (!v220)
      {
        v186 = 0;
      }

      v478 = v186;
      OUTLINED_FUNCTION_260((v182 - 1));
      v187 = v444;
      v472 = v115;
      while (1)
      {
LABEL_57:
        v188 = v184;
        while (2)
        {
          if (v188 >= v115[2])
          {
            goto LABEL_199;
          }

          v189 = (v188 + 1);
          OUTLINED_FUNCTION_81_2();
          v191 = *(v190 + 72);
          sub_2749768E8(v490 + v191 * v188, v29);
          sub_2749768E8(v29, v489);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v193 = v498;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_186();
              sub_274976940();
              if (v187)
              {
                goto LABEL_66;
              }

              goto LABEL_61;
            case 3:
            case 4:
            case 5:
            case 6:
              if (v187)
              {
                goto LABEL_66;
              }

LABEL_61:
              if (!v188)
              {
                goto LABEL_66;
              }

              if (v188 > v115[2])
              {
                goto LABEL_201;
              }

              sub_2749768E8(v490 + v191 * (v188 - 1), v471);
              OUTLINED_FUNCTION_31_17();
              OUTLINED_FUNCTION_10_33();
              v195 = v194();
              v193 = v498;
              sub_274976940();
              v133 = v133 + v195 + dbl_274A298F0[v467];
LABEL_66:
              v196 = v497;
              [v497 begin];
              [v196 setDisableActions_];
              LOBYTE(v502) = v488;
              MEMORY[0x277C5AFB0](v188, v487);
              v182 = *&v147[v484];
              v197 = v495;
              if (!*(v182 + 2))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_115_2(&v519);
              v198 = sub_274797E40();
              if (v199)
              {
                v193 = *v482;
                v29 = *(*(v182 + 7) + 8 * v198);
                OUTLINED_FUNCTION_264();
                v193();

                v200 = 0;
              }

              else
              {

LABEL_70:
                v182 = v197;
                OUTLINED_FUNCTION_10_33();
                if (v87 < v158 + v133 + v201() && v158 + v133 < v91)
                {
                  v204 = OUTLINED_FUNCTION_41_12();
                  v182 = v197;
                  v29 = v205(v204);
                  v206 = OUTLINED_FUNCTION_138_0();
                  (v193)(v206);
                  v200 = 1;
                }

                else
                {
                  v203 = OUTLINED_FUNCTION_138_0();
                  (v193)(v203);
                  v29 = 0;
                  v200 = 0;
                }

                v189 = (v188 + 1);
              }

              [v497 commit];
              if (!v29)
              {
                OUTLINED_FUNCTION_221();
                if (!v207 || v478 != v188)
                {
                  OUTLINED_FUNCTION_6_39();
                  OUTLINED_FUNCTION_133_2();
                  OUTLINED_FUNCTION_63_3();
                  sub_2749768E8(v208, v209);
                  v210 = swift_getEnumCaseMultiPayload();
                  v147 = v496;
                  v182 = v495;
                  v48 = v481;
                  switch(v210)
                  {
                    case 1:
                      OUTLINED_FUNCTION_0_42();
                      OUTLINED_FUNCTION_190();
                      sub_274976940();
                      goto LABEL_114;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                      goto LABEL_114;
                    default:
                      OUTLINED_FUNCTION_0_42();
                      OUTLINED_FUNCTION_190();
                      sub_274976940();
                      OUTLINED_FUNCTION_221();
                      v479 = v188;
                      if (v189 >= v211)
                      {
                        v212 = v48;
                        v216 = 0.0;
                        OUTLINED_FUNCTION_37_14();
                        v215 = v475;
                        if (!v221)
                        {
                          goto LABEL_87;
                        }
                      }

                      else
                      {
                        if (v189 >= v115[2])
                        {
                          goto LABEL_200;
                        }

                        v212 = v48;
                        OUTLINED_FUNCTION_72_4();
                        sub_2749768E8(v213, v471);
                        v214 = OUTLINED_FUNCTION_84_3();
                        v215 = v475;
                        v216 = v475(v214);
                        OUTLINED_FUNCTION_208();
                        v147 = v189;
                        sub_274976940();
                        OUTLINED_FUNCTION_37_14();
                        if (!v221)
                        {
LABEL_87:
                          v217 = OUTLINED_FUNCTION_41_14();
                          v218 = v215(v217);
                          [v147 contentSize];
                          v221 = v219 == v216;
                          v220 = v219 >= v216;
                          goto LABEL_91;
                        }
                      }

                      v222 = OUTLINED_FUNCTION_41_14();
                      v223 = v215(v222);
                      OUTLINED_FUNCTION_16_20(&v502, v223);
LABEL_91:
                      v48 = v212;
                      v115 = v472;
                      v188 = v479;
                      if (v221 || !v220)
                      {
LABEL_114:
                        OUTLINED_FUNCTION_183();
                        v257 = v460;
                        switch(v258)
                        {
                          case 2:
                            goto LABEL_129;
                          case 3:
                            goto LABEL_127;
                          default:
                            v259 = OUTLINED_FUNCTION_7_33();
                            v261 = 0.0;
                            v133 = v133 + v260(v259) + 0.0;
                            OUTLINED_FUNCTION_183();
                            switch(v262)
                            {
                              case 2:
                                goto LABEL_130;
                              case 3:
                                goto LABEL_128;
                              default:
                                goto LABEL_131;
                            }
                        }

                        goto LABEL_131;
                      }

                      OUTLINED_FUNCTION_0_42();
                      sub_274976940();
                      OUTLINED_FUNCTION_53_9();
                      if (!v221)
                      {
                        goto LABEL_94;
                      }

LABEL_133:
                      OUTLINED_FUNCTION_284();
                      break;
                  }

                  goto LABEL_134;
                }

                OUTLINED_FUNCTION_0_42();
                OUTLINED_FUNCTION_133_2();
                sub_274976940();
                OUTLINED_FUNCTION_53_9();
                v147 = v496;
                v48 = v481;
                if (v221)
                {
                  goto LABEL_133;
                }

LABEL_94:
                v187 = 0;
                ++v188;
                continue;
              }

              OUTLINED_FUNCTION_250();
              OUTLINED_FUNCTION_31_17();
              (v475)();
              OUTLINED_FUNCTION_37_14();
              v224 = OUTLINED_FUNCTION_115_2(&v518);
              [v224 v225];
              v226 = OUTLINED_FUNCTION_279();
              [v226 v227];
              v228 = v29;
              [v228 layoutIfNeeded];
              v229 = OUTLINED_FUNCTION_117_0(&v517);
              v231 = [v229 v230];
              [v231 displayScale];

              OUTLINED_FUNCTION_238();
              BSFloatRoundForScale();
              v232 = [v189 traitCollection];
              [v232 displayScale];

              BSFloatRoundForScale();
              OUTLINED_FUNCTION_250();
              OUTLINED_FUNCTION_31_17();
              OUTLINED_FUNCTION_10_33();
              v233();
              v234 = OUTLINED_FUNCTION_238();
              [v235 v236];

              v237 = [v147 commit];
              if (v200)
              {
                v238 = v465;
                MEMORY[0x277C5AFB0](v188, v487);
                v239 = v496;
                v240 = v484;
                OUTLINED_FUNCTION_10_3(&v496[v484], &v502);
                v241 = v228;
                swift_isUniquelyReferenced_nonNull_native();
                v242 = OUTLINED_FUNCTION_265(*&v239[v240]);
                sub_2748F9C64(v242, v238);
                *&v239[v240] = v511;
                OUTLINED_FUNCTION_264();
                v193();
                swift_endAccess();
                v237 = [*&v464[v434] addSubview_];
              }

              MEMORY[0x277C5ECC0](v237);
              v243 = *((v512 & 0xFFFFFFFFFFFFFF8) + 0x18);
              v244 = v493;
              if (*((v512 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v243 >> 1)
              {
                OUTLINED_FUNCTION_8(v243);
                sub_2749FCFB4();
              }

              v184 = v188 + 1;
              sub_2749FCFF4();
              v454 = v512;

              v245 = v115[2];
              v246 = v245 - 1;
              if (!v245)
              {
                v246 = 0;
              }

              v147 = v496;
              v182 = v495;
              v91 = v443;
              v29 = v498;
              if (v245 && v246 == v188)
              {
                OUTLINED_FUNCTION_0_42();
                sub_274976940();
                OUTLINED_FUNCTION_284();
                v187 = 0;
                OUTLINED_FUNCTION_53_9();
                v48 = v481;
                v158 = v462;
                if (!v221)
                {
                  goto LABEL_57;
                }

LABEL_134:

                v279 = OUTLINED_FUNCTION_117_0(&v481);
                sub_27479BB64(v279);
                v280 = v147;
                sub_2749FCF74();
                OUTLINED_FUNCTION_78();

                v281 = OUTLINED_FUNCTION_123_2(&v492);
                [v281 v282];

                [v147 contentSize];
                OUTLINED_FUNCTION_105_3();
                v285 = v283 + v284;
                OUTLINED_FUNCTION_47_9(&v468);
                OUTLINED_FUNCTION_131_1();
                v446();
                sub_2749F95D4();
                v286 = OUTLINED_FUNCTION_32_1();
                v445(v286);
                v287 = v502;
                if (v502)
                {

                  v31 = v460;
                  goto LABEL_138;
                }

                v288 = v29;
                v501 = objc_opt_self();
                OUTLINED_FUNCTION_113_3();
                v289 = swift_allocObject();
                *(v289 + 16) = v115;
                *(v289 + 24) = 0x4030000000000000;
                *(v289 + 32) = v158;
                *(v289 + 40) = v285;
                v31 = v460;
                *(v289 + 48) = v460;
                *(v289 + 56) = v280;
                v290 = v115;
                v291 = v280;
                OUTLINED_FUNCTION_83_2();
                OUTLINED_FUNCTION_32_2();
                v292 = swift_allocObject();
                *(v292 + 16) = sub_2749769E8;
                *(v292 + 24) = v289;
                v505 = sub_27491222C;
                v506 = v292;
                v502 = MEMORY[0x277D85DD0];
                v503 = 1107296256;
                OUTLINED_FUNCTION_12_29();
                v504 = v293;
                OUTLINED_FUNCTION_209(block_descriptor_137);
                v294 = _Block_copy(&v502);

                [v501 performWithoutAnimation_];
                _Block_release(v294);
                v295 = OUTLINED_FUNCTION_144_1(v292, "");

                if (v295)
                {
                  goto LABEL_206;
                }

                v296 = v290;
                [v291 insertSubview:v296 atIndex:0];
                [v296 setAlpha_];
                v503 = 0;
                v504 = 0;
                v502 = 0x3FF0000000000000;
                OUTLINED_FUNCTION_209(0x3FF0000000000000);
                v505 = 0;
                v506 = 0;
                [v296 v297];

                LOBYTE(v510) = v488;
                v511 = v296;
                v298 = v450;
                OUTLINED_FUNCTION_10_3(&v280[v450], &v502);
                v299 = v296;
                v300 = sub_2749F95E4();
                MEMORY[0x28223BE20](v300);
                OUTLINED_FUNCTION_174();
                *(v301 - 16) = v291;
                v182 = &v280[v298];
                v302 = v436;
                sub_2749F9554();
                v436 = v302;

                swift_endAccess();
                v439 = sub_2749769E8;
                v438 = v289;
                v115 = v464;
                v29 = v288;
LABEL_138:
                v95 = v442;
                v108 = v441;
                v38 = v493;
                if (v280[v440] == 1)
                {
                  v303 = [v115 layer];
                  v304 = sub_2749F9884();
                  v305 = OUTLINED_FUNCTION_142_1();
                  v306 = OUTLINED_FUNCTION_24_1();
                  [v306 v307];

                  objc_opt_self();
                  OUTLINED_FUNCTION_86();
                  v308 = swift_allocObject();
                  v309 = OUTLINED_FUNCTION_261(v308, &v492);
                  v505 = sub_274976A14;
                  v506 = v309;
                  OUTLINED_FUNCTION_74_3();
                  *(v310 - 256) = v311;
                  v503 = 1107296256;
                  v504 = sub_274760264;
                  OUTLINED_FUNCTION_209(block_descriptor_144);
                  v182 = _Block_copy(&v502);
                  v312 = v464;

                  v505 = CGSizeMake;
                  v506 = 0;
                  OUTLINED_FUNCTION_74_3();
                  *(v313 - 256) = v314;
                  v503 = 1107296256;
                  v504 = sub_27480D7B8;
                  OUTLINED_FUNCTION_209(block_descriptor_147);
                  v315 = _Block_copy(&v502);
                  OUTLINED_FUNCTION_2_23();
                  v316 = OUTLINED_FUNCTION_279();
                  [v316 v317];
                  v318 = v315;
                  v115 = v464;
                  _Block_release(v318);
                  _Block_release(v182);
                }

                OUTLINED_FUNCTION_92_3();
                [v319 v320];
                v321 = OUTLINED_FUNCTION_231();
                *&v322 = COERCE_DOUBLE(sub_2749577DC(v321));
                if ((v323 & 1) == 0)
                {
                  v324 = *&v322;
                  v325 = [*(v115 + OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView) layer];
                  [v325 setCornerRadius_];
                }

                v109 = v455;
                OUTLINED_FUNCTION_183();
                if (v326 == 3)
                {
                  sub_2749FCE14("Search Symbols", 14);
                  OUTLINED_FUNCTION_34_1();
                  if (qword_28159E3A8 != -1)
                  {
                    OUTLINED_FUNCTION_62();
                    swift_once();
                  }

                  OUTLINED_FUNCTION_32_1();
                  v327 = sub_2749FCD64();
                  OUTLINED_FUNCTION_32_1();
                  sub_2749FCD64();
                  OUTLINED_FUNCTION_78();

                  OUTLINED_FUNCTION_157_0();

                  v330 = v464;
                  v331 = [*&v464[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
                  [v331 setCornerRadius_];

                  OUTLINED_FUNCTION_0_42();
                  sub_274976940();
                  v95 = v442;
                  v38 = v493;
                  v109 = v455;
                }

                else
                {
                  OUTLINED_FUNCTION_0_42();
                  sub_274976940();
                }

                v86 = v158 + v31;
                v131 = v487;
LABEL_148:
                v105 = v131 + 1;
                if (v105 == v457)
                {
LABEL_155:
                  v334 = v496;
                  [v496 contentSize];
                  [v334 setContentSize_];
                  OUTLINED_FUNCTION_85_1();
                  v336 = *(v335 + 112);
                  OUTLINED_FUNCTION_77(&v334[v336], &v502);
                  v483 = v336;
                  v337 = *&v334[v336] + 64;
                  OUTLINED_FUNCTION_27_12();
                  v340 = v339 & v338;
                  OUTLINED_FUNCTION_85_1();
                  v342 = *(v341 + 136);
                  v345 = *((v344 & v343) + 0x78);
                  OUTLINED_FUNCTION_217(v346, *((v344 & v343) + 0x80));
                  v500 = v342;
                  OUTLINED_FUNCTION_77(v342 + v334, &v512);
                  v484 = v345;
                  OUTLINED_FUNCTION_77(&v334[v345], &v511);
                  v485 = 0;
                  v347 = 0;
                  v497 = (v466 + 16);
                  OUTLINED_FUNCTION_90_2(v466 + 32);
                  OUTLINED_FUNCTION_242();
                  v498 = v348;
                  OUTLINED_FUNCTION_233(*MEMORY[0x277D7A490]);
                  OUTLINED_FUNCTION_98_3(v459);
                  *&v349 = 136315138;
                  v486 = v349;
                  OUTLINED_FUNCTION_134_2();
                  v492 = v337;
                  v491 = v350;
LABEL_156:
                  OUTLINED_FUNCTION_182();
                  while (v340)
                  {
LABEL_162:
                    OUTLINED_FUNCTION_187();
                    v353 = v489;
                    OUTLINED_FUNCTION_243();
                    v354(v465);
                    v336 = *(*(v353 + 56) + 8 * v336);
                    v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
                    v355 = v342[12];
                    v356 = v469[0];
                    v357 = OUTLINED_FUNCTION_3_5();
                    v358(v357);
                    *(v356 + v355) = v336;
                    OUTLINED_FUNCTION_143();
                    __swift_storeEnumTagSinglePayload(v359, v360, v361, v342);
                    v362 = v336;
                    OUTLINED_FUNCTION_182();
LABEL_163:
                    sub_2747D31F8(v356, v336, &unk_280968DD0, &qword_274A14050);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
                    v363 = OUTLINED_FUNCTION_78();
                    OUTLINED_FUNCTION_156_0(v363, 1, v342);
                    if (v221)
                    {
                      swift_unknownObjectRelease();

                      OUTLINED_FUNCTION_186();

                      OUTLINED_FUNCTION_83_2();
                      OUTLINED_FUNCTION_147_0();
                      OUTLINED_FUNCTION_25_15();
                      return;
                    }

                    v364 = *(v336 + v342[12]);
                    OUTLINED_FUNCTION_8_2();
                    v365 = v470;
                    v366(v470, v336, v48);
                    v336 = *v499;
                    OUTLINED_FUNCTION_26_15();
                    v369 = v468;
                    v370 = v474;
                    (v336)(v468, v367 + v368, v474);
                    v371 = sub_2749F9524();
                    v372 = *v498;
                    (*v498)(v369, v370);
                    v373 = *(v371 + 16);

                    v374 = sub_2749F9274();
                    if (v374 < 0 || v374 >= v373)
                    {
                      OUTLINED_FUNCTION_203();
                      OUTLINED_FUNCTION_294();
                      OUTLINED_FUNCTION_8_2();
                      v336 = v451;
                      v380 = OUTLINED_FUNCTION_44();
                      v48 = v494;
                      v381(v380);
                      v342 = v373;
                      v382 = sub_2749FA4D4();
                      v383 = sub_2749FD2D4();
                      if (os_log_type_enabled(v382, v383))
                      {
                        v384 = OUTLINED_FUNCTION_30_9();
                        v48 = OUTLINED_FUNCTION_178();
                        *v384 = OUTLINED_FUNCTION_112_2(v48, &a21).n128_u32[0];
                        OUTLINED_FUNCTION_2_47();
                        sub_274720F90(&qword_280968FC8, v385);
                        v342 = sub_2749FDC74();
                        v493 = v364;
                        v336 = *v490;
                        OUTLINED_FUNCTION_264();
                        (v336)();
                        v386 = OUTLINED_FUNCTION_32();
                        sub_2747AF460(v386, v387, v388);
                        OUTLINED_FUNCTION_96();

                        *(v384 + 4) = v342;
                        _os_log_impl(&dword_274719000, v382, v383, "Invalid on screen cell index path %s", v384, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0(v48);
                        OUTLINED_FUNCTION_134_2();
                        OUTLINED_FUNCTION_31();
                        v389 = v461;
                        OUTLINED_FUNCTION_31();
                        OUTLINED_FUNCTION_259();

                        OUTLINED_FUNCTION_14_23();
                        v391(v389, v453);
                        (v336)(v470, v48);
                      }

                      else
                      {

                        OUTLINED_FUNCTION_124_2();
                        (v336)();
                        OUTLINED_FUNCTION_14_23();
                        v392(v373, v453);
                        (v336)(v365, v48);
                      }

                      OUTLINED_FUNCTION_182();
                      v337 = v492;
                      OUTLINED_FUNCTION_155_0();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_26_15();
                      v375 = v452;
                      v48 = v474;
                      OUTLINED_FUNCTION_213();
                      (v336)();
                      v376 = sub_2749F9534();
                      v372(v375, v48);
                      v377 = sub_2749F9274();
                      if ((v376 & 0xC000000000000001) != 0)
                      {
                        v342 = MEMORY[0x277C5F6D0](v377, v376);
                        OUTLINED_FUNCTION_134_2();
                        OUTLINED_FUNCTION_182();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_134_2();
                        OUTLINED_FUNCTION_182();
                        if ((v378 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_203;
                        }

                        if (v378 >= *((v376 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_204;
                        }

                        v342 = *(v376 + 8 * v378 + 32);
                      }

                      [v364 frame];
                      [v342 convertRect:v496 toCoordinateSpace:?];
                      if (OUTLINED_FUNCTION_141_0(v521) < v87 || (OUTLINED_FUNCTION_92_3(), v91 < CGRectGetMinY(v522)))
                      {
                        v481 = v342;
                        v493 = v364;
                        [v364 removeFromSuperview];
                        OUTLINED_FUNCTION_119_2();
                        v398 = *(v397 + v484);
                        v399 = *(v398 + 16);

                        v400 = 0;
                        v401 = (v398 + 48);
                        v337 = v492;
                        while (1)
                        {
                          if (v399 == v400)
                          {

                            v336 = v427;
                            OUTLINED_FUNCTION_294();
                            OUTLINED_FUNCTION_259();
                            v405 = v404;
                            v406 = sub_2749FA4D4();
                            v407 = sub_2749FD2D4();

                            if (os_log_type_enabled(v406, v407))
                            {
                              v408 = OUTLINED_FUNCTION_30_9();
                              v409 = OUTLINED_FUNCTION_178();
                              *v408 = OUTLINED_FUNCTION_112_2(v409, &a21).n128_u32[0];
                              v510 = swift_getObjectType();
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969470, &qword_274A14D50);
                              v410 = sub_2749FCDC4();
                              v48 = sub_2747AF460(v410, v411, &v508);

                              *(v408 + 4) = v48;
                              OUTLINED_FUNCTION_134_2();
                              _os_log_impl(&dword_274719000, v406, v407, "Recycled cell without a reuse identifier, cell is of type: %s", v408, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v409);
                              OUTLINED_FUNCTION_31();
                              OUTLINED_FUNCTION_31();
                            }

                            OUTLINED_FUNCTION_14_23();
                            v412(v336, v453);
                            OUTLINED_FUNCTION_158();
                            v413 = v493;
                            goto LABEL_195;
                          }

                          if (v400 >= *(v398 + 16))
                          {
                            goto LABEL_205;
                          }

                          v402 = *(v401 - 1);
                          v48 = *v401;
                          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

                          if ([v493 isKindOfClass_])
                          {
                            break;
                          }

                          ++v400;
                          v401 += 3;
                          OUTLINED_FUNCTION_134_2();
                        }

                        OUTLINED_FUNCTION_158();
                        OUTLINED_FUNCTION_283();
                        OUTLINED_FUNCTION_10_3(v399 + ObjCClassFromMetadata, &v508);
                        OUTLINED_FUNCTION_147_0();
                        swift_isUniquelyReferenced_nonNull_native();
                        v414 = *(v399 + ObjCClassFromMetadata);
                        OUTLINED_FUNCTION_223();
                        *(v399 + ObjCClassFromMetadata) = 0x8000000000000000;
                        v415 = sub_274797CC0(v402, v48);
                        v416 = *(v414 + 16);
                        LODWORD(v485) = v417;
                        if (__OFADD__(v416, (v417 & 1) == 0))
                        {
                          goto LABEL_207;
                        }

                        v336 = v415;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969478, &qword_274A14D58);
                        v418 = sub_2749FDA84();
                        v419 = v510;
                        if (v418)
                        {
                          v420 = sub_274797CC0(v402, v48);
                          if ((v485 & 1) != (v421 & 1))
                          {
                            goto LABEL_208;
                          }

                          v336 = v420;
                        }

                        OUTLINED_FUNCTION_119_2();
                        *(v482 + v422) = v419;
                        if (v423)
                        {
                        }

                        else
                        {
                          sub_274972654(&v510);
                          sub_2748FB298();
                        }

                        v413 = v493;
                        sub_274765168(&v510, v493);
                        OUTLINED_FUNCTION_181();
                        swift_endAccess();

                        v485 = sub_274972654;
                        OUTLINED_FUNCTION_134_2();
                        OUTLINED_FUNCTION_158();
LABEL_195:
                        v424 = OUTLINED_FUNCTION_266(&v509);
                        OUTLINED_FUNCTION_10_3(v424, &v508);
                        OUTLINED_FUNCTION_115_2(&v499);
                        v342 = sub_274973FF0();
                        swift_endAccess();

                        OUTLINED_FUNCTION_282();
                        OUTLINED_FUNCTION_8_2();
                        v426(v336, v48);
                        OUTLINED_FUNCTION_155_0();
                        goto LABEL_156;
                      }

                      OUTLINED_FUNCTION_8_2();
                      v379(v470, v48);

                      v337 = v492;
                      OUTLINED_FUNCTION_155_0();
                    }
                  }

                  while (1)
                  {
                    v352 = v347 + 1;
                    if (__OFADD__(v347, 1))
                    {
                      goto LABEL_198;
                    }

                    if (v352 >= v351)
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
                      v356 = v469[0];
                      OUTLINED_FUNCTION_88_2();
                      __swift_storeEnumTagSinglePayload(v393, v394, v395, v396);
                      v340 = 0;
                      goto LABEL_163;
                    }

                    v340 = *(v337 + 8 * v352);
                    ++v347;
                    if (v340)
                    {
                      v347 = v352;
                      goto LABEL_162;
                    }
                  }
                }

                goto LABEL_10;
              }

              OUTLINED_FUNCTION_6_39();
              sub_2749768E8(v29, v435);
              v247 = swift_getEnumCaseMultiPayload();
              v48 = v481;
              v158 = v462;
              switch(v247)
              {
                case 1:
                  OUTLINED_FUNCTION_0_42();
                  sub_274976940();
                  goto LABEL_125;
                case 3:
                case 4:
                case 5:
                case 6:
                  goto LABEL_125;
                default:
                  v479 = v188;
                  OUTLINED_FUNCTION_0_42();
                  sub_274976940();
                  v248 = v115[2];
                  v430 = v188 + 1;
                  if (v184 < v248)
                  {
                    sub_2747B2794();
                    OUTLINED_FUNCTION_72_4();
                    sub_2749768E8(v249, v471);
                    v250 = OUTLINED_FUNCTION_84_3();
                    v263 = v475(v250);
                    OUTLINED_FUNCTION_208();
                    v147 = v244;
                    sub_274976940();
                    v115 = v472;
                    OUTLINED_FUNCTION_37_14();
                    if (!v221)
                    {
                      goto LABEL_112;
                    }
                  }

                  else
                  {
                    v263 = 0.0;
                    OUTLINED_FUNCTION_37_14();
                    if (!v264)
                    {
LABEL_112:
                      v251 = OUTLINED_FUNCTION_41_14();
                      v253 = v252(v251);
                      [v147 contentSize];
                      v256 = v254 == v263;
                      v255 = v254 >= v263;
                      goto LABEL_119;
                    }
                  }

                  v265 = OUTLINED_FUNCTION_41_14();
                  v267 = v266(v265);
                  OUTLINED_FUNCTION_16_20(&v502, v267);
LABEL_119:
                  v188 = v479;
                  v184 = v430;
                  if (v256 || !v255)
                  {
LABEL_125:
                    OUTLINED_FUNCTION_183();
                    v257 = v460;
                    switch(v268)
                    {
                      case 2:
LABEL_129:
                        v274 = OUTLINED_FUNCTION_7_33();
                        v133 = v133 + v275(v274) + 16.0;
LABEL_130:
                        v261 = 16.0;
                        break;
                      case 3:
LABEL_127:
                        v272 = OUTLINED_FUNCTION_7_33();
                        v133 = v133 + v273(v272) + 8.0;
LABEL_128:
                        v261 = 8.0;
                        break;
                      default:
                        v269 = OUTLINED_FUNCTION_7_33();
                        v261 = 0.0;
                        v133 = v133 + v270(v269) + 0.0;
                        OUTLINED_FUNCTION_183();
                        switch(v271)
                        {
                          case 2:
                            goto LABEL_130;
                          case 3:
                            goto LABEL_128;
                          default:
                            goto LABEL_131;
                        }
                    }

LABEL_131:
                    v276 = OUTLINED_FUNCTION_7_33();
                    v278 = v277(v276);
                    OUTLINED_FUNCTION_0_42();
                    sub_274976940();
                    OUTLINED_FUNCTION_53_9();
                    v460 = v257 + v261 + v278;
                    if (!v221)
                    {
                      v91 = v443;
                      v184 = v188 + 1;
                      v187 = 1;
                      goto LABEL_57;
                    }

                    v444 = 1;
                    v91 = v443;
                    goto LABEL_134;
                  }

                  OUTLINED_FUNCTION_0_42();
                  sub_274976940();
                  OUTLINED_FUNCTION_284();
                  v187 = 0;
                  OUTLINED_FUNCTION_53_9();
                  if (v221)
                  {
                    goto LABEL_134;
                  }

                  break;
              }

              break;
            default:
              OUTLINED_FUNCTION_0_42();
              OUTLINED_FUNCTION_186();
              sub_274976940();
              goto LABEL_66;
          }

          break;
        }
      }
    }

    if (v116 < v115[2])
    {
      sub_2749768E8(v115 + ((*(v500 + 80) + 32) & ~*(v500 + 80)) + *(v500 + 9) * v116, v109);
      sub_2749768E8(v109, v48);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          OUTLINED_FUNCTION_0_42();
          sub_274976940();
          goto LABEL_17;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
LABEL_17:
          OUTLINED_FUNCTION_0_42();
          sub_274976940();
          ++v116;
          continue;
        default:
          OUTLINED_FUNCTION_0_42();
          sub_274976940();
          OUTLINED_FUNCTION_63_3();
          sub_27477BDA4(v123, v124);
          OUTLINED_FUNCTION_143();
          __swift_storeEnumTagSinglePayload(v125, v126, v127, v38);
          sub_27477BDA4(v116, v108);
          OUTLINED_FUNCTION_143();
          __swift_storeEnumTagSinglePayload(v128, v129, v130, v38);
          goto LABEL_23;
      }
    }

    break;
  }

  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  sub_2749FDD54();
  __break(1u);
}

void sub_27496F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_128_1();
  a27 = v30;
  a28 = v33;
  v34 = sub_2749FA4E4();
  v35 = OUTLINED_FUNCTION_0_0(v34, &v503);
  v37 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D68, &qword_274A29800);
  v44 = OUTLINED_FUNCTION_0_0(v43, &v525);
  v461 = v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70(v49);
  v50 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v491 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  v55 = MEMORY[0x28223BE20](v54);
  v57 = v460 - v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0, &qword_274A14050);
  v60 = OUTLINED_FUNCTION_34(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_39();
  v63 = v61 - v62;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30, &qword_274A10130);
  v67 = OUTLINED_FUNCTION_34(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_54_11();
  [v28 bounds];
  Width = CGRectGetWidth(v552);
  [v28 contentSize];
  [v28 setContentSize_];
  v70 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_166();
  v72 = *(v71 + 160);
  v531 = v28;
  v73 = v28 + v72;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v460[1] = v37;
    v492 = v63;
    v519 = v50;
    v74 = *(v73 + 1);
    v75 = OUTLINED_FUNCTION_117_0(&a9);
    [v75 v76];
    v78 = 0.0;
    if (v77 + -70.0 < 0.0)
    {
      v79 = 0.0;
    }

    else
    {
      v79 = v77 + -70.0;
    }

    [v50 frame];
    v503 = v79;
    *&v464 = 70.0;
    v81 = v80 + v79 + 70.0;
    [v50 contentSize];
    if (v82 >= v81)
    {
      v83 = v81;
    }

    else
    {
      v83 = v82;
    }

    v502 = v83;
    v509 = [v50 effectiveUserInterfaceLayoutDirection];
    OUTLINED_FUNCTION_166();
    v85 = *(v84 + 152);
    OUTLINED_FUNCTION_77(v50 + v85, &v550);
    v488 = v85;
    sub_27473ADB8(v50 + v85, v28, &qword_280967E30, &qword_274A10130);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E38, &qword_274A10138);
    v87 = sub_2749F9524();
    OUTLINED_FUNCTION_9_3();
    v89 = *(v88 + 8);
    v487 = v86;
    v486 = v89;
    v485 = v88 + 8;
    v89(v28, v86);
    v90 = *(v87 + 16);
    v460[0] = v40;
    v475 = v57;
    v471 = v87;
    v484 = v90;
    if (v90)
    {
      v91 = v531;
      OUTLINED_FUNCTION_166();
      v462 = *(v92 + 208);
      v28 = *((v94 & v93) + 0x90);
      v516 = *((v94 & v93) + 0x70);
      v469 = *((v94 & v93) + 0xC8);
      OUTLINED_FUNCTION_241(v87 + 32);
      OUTLINED_FUNCTION_77(v91 + v95, &v549);
      v470 = v28;
      OUTLINED_FUNCTION_77(v28 + v91, &v548);
      OUTLINED_FUNCTION_235();
      v70 = 0;
      v465 = 0;
      v508 = v74 + 88;
      v523 = v74 + 80;
      v483 = v461 + 16;
      v482 = v461 + 8;
      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_260(v96);
      v513 = v74;
      v497 = v74 + 48;
      v97 = 0;
      v466 = &v534;
      v463 = "ontainerView";
      while (1)
      {
        if (v97 >= *(v87 + 16))
        {
          goto LABEL_174;
        }

        v512 = v97;
        v517 = *(v97 + v481);
        v547 = v517;
        OUTLINED_FUNCTION_26_15();
        OUTLINED_FUNCTION_63_3();
        sub_27473ADB8(v98, v99, &qword_280967E30, &qword_274A10130);
        OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_255();
        sub_2749F95D4();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_225();
        v101(v100);
        v511 = v532;
        if (v532)
        {
          v102 = (v511 + 48);
          v500 = *(v511 + 16);
          v103 = v500 + 1;
          v104 = v512;
          while (--v103)
          {
            v105 = v102 + 24;
            v106 = *v102;
            v102 += 24;
            if (v106 == 1)
            {
              v108 = *(v105 - 5);
              v107 = *(v105 - 4);
              v109 = 1;
              goto LABEL_19;
            }
          }

          if (v500)
          {
            v110 = v511;
            sub_2747B2794();
            v108 = *(v110 + 32);
            v107 = *(v110 + 40);
            v109 = *(v110 + 48);
            v111 = OUTLINED_FUNCTION_32_1();
            sub_274772E38(v111, v112, v109);
LABEL_19:
            v477 = v108;
            v545[0] = v108;
            v545[1] = v107;
            v478 = v107;
            v476 = v109;
            v546 = v109;
            OUTLINED_FUNCTION_160();
            if (v113)
            {
              v114 = 12.0;
            }

            else
            {
              v114 = 0.0;
            }

            v115 = OUTLINED_FUNCTION_163();
            [v115 v116];
            OUTLINED_FUNCTION_274();
            OUTLINED_FUNCTION_47_9(&v551);
            ObjectType = swift_getObjectType();
            v507 = *(v513 + 88);
            v118 = (v507)(v545, ObjectType, v513, v31);
            OUTLINED_FUNCTION_122_1();
            v522 = v119;
            v120 = v119();
            v121 = trunc(v31 / v118);
            v122 = v470;
            if (v121 <= 1.0)
            {
              v123 = 0.0;
            }

            else
            {
              v123 = fmod(v31, v118) / (v121 + -1.0);
            }

            v493 = v123;
            OUTLINED_FUNCTION_282();
            if (v124 || (OUTLINED_FUNCTION_26_15(), *(v126 + v125) == 1))
            {
              v78 = v78 + 16.0;
            }

            OUTLINED_FUNCTION_212();
            OUTLINED_FUNCTION_47_9(&v498);
            OUTLINED_FUNCTION_131_1();
            v480 = v127;
            v127();
            OUTLINED_FUNCTION_150_0();
            sub_2749F95D4();
            OUTLINED_FUNCTION_278();
            v128 = OUTLINED_FUNCTION_32_1();
            v479 = v129;
            (v129)(v128);
            v130 = v532;
            if (!v532)
            {
              v108 = objc_allocWithZone(type metadata accessor for WFGridSectionContainerView());
              v130 = sub_2747E99D8(v114);
            }

            v525 = ObjectType;
            v499 = v130;
            OUTLINED_FUNCTION_160();
            if (v131)
            {
              sub_2749FCE14("Folder Symbol", 13);
            }

            else
            {
              sub_2749FCE14("Folder Name", 11);
            }

            if (qword_28159E3A8 != -1)
            {
              OUTLINED_FUNCTION_62();
              swift_once();
            }

            v132 = qword_28159E448;
            sub_2749FCD64();
            OUTLINED_FUNCTION_96();
            v133 = sub_2749FCD64();

            v134 = [v132 localizedStringForKey:v108 value:v133 table:0];

            v28 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            v136 = v135;

            OUTLINED_FUNCTION_32();
            v137 = sub_2749FCD64();

            [v499 setAccessibilityLabel_];

            v542 = MEMORY[0x277D84F90];
            v501 = v114;
            OUTLINED_FUNCTION_34_9();
            if (v138)
            {
              v139 = OUTLINED_FUNCTION_163();
              [v139 v140];
              OUTLINED_FUNCTION_105_3();
              v501 = v141 + v142 - v114;
            }

            v143 = v114 + v114 + v120;
            v472 = v132;
            OUTLINED_FUNCTION_160();
            if (v144)
            {
              sub_2749FCE14("Search Symbols", 14);
              if (qword_28159E3A8 != -1)
              {
                OUTLINED_FUNCTION_62();
                swift_once();
              }

              OUTLINED_FUNCTION_93();
              v145 = sub_2749FCD64();
              OUTLINED_FUNCTION_93();
              v146 = sub_2749FCD64();

              v147 = [v132 localizedStringForKey:v145 value:v146 table:0];

              if (!v147)
              {
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                sub_2749FCD64();
                OUTLINED_FUNCTION_78();
              }

              OUTLINED_FUNCTION_81_2();
              v149 = sub_27494FA34(v517, *(v122 + v148));
              if (v149)
              {
                v150 = v149;

                v151 = v150;
              }

              else
              {
                type metadata accessor for WFDrawerSearchControlsView();
                v153 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                *&v153[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets] = 0x4020000000000000;
                *&v153[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset] = 0;
                v154 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
                v155 = *&v153[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
                v156 = v153;
                v157 = [v155 searchTextField];
                [v157 setPlaceholder_];

                v158 = *&v153[v154];
                v159 = v156;
                v160 = v531;
                v151 = v159;
                [v158 setDelegate_];
                OUTLINED_FUNCTION_102_3(v122 + v160);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v543[0] = *(v122 + v160);
                sub_2748FA314(v151, v517, isUniquelyReferenced_nonNull_native);
                OUTLINED_FUNCTION_224();
                *(v122 + v160) = v162;
                swift_endAccess();
                v150 = 0;
              }

              v163 = v150;
              v164 = [v151 superview];

              if (v164)
              {
              }

              else
              {
                [*&v499[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] addSubview_];
              }

              v165 = OUTLINED_FUNCTION_163();
              [v165 v166];
              OUTLINED_FUNCTION_105_3();
              v169 = v167 + v168;
              v170 = objc_opt_self();
              v136 = v151;
              [v170 begin];
              v171 = OUTLINED_FUNCTION_279();
              [v171 v172];
              v173 = OUTLINED_FUNCTION_172();
              [v136 v174];
              v28 = &v542;
              MEMORY[0x277C5ECC0]([v170 commit]);
              OUTLINED_FUNCTION_108_3();
              v177 = *(v175 + 16);
              v176 = *(v175 + 24);
              if (v177 >= v176 >> 1)
              {
                OUTLINED_FUNCTION_8(v176);
                sub_2749FCFB4();
              }

              v143 = v143 + 58.0;
              sub_2749FCFF4();
              OUTLINED_FUNCTION_275();

              v152 = *&v464;
            }

            else
            {
              v152 = 0.0;
              v504 = MEMORY[0x277D84F90];
            }

            v104 = v512;
            v506 = v143;
            OUTLINED_FUNCTION_236();
            v179 = *(v178 + 16);
            if (v179)
            {
              v180 = objc_opt_self();
              v496 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
              OUTLINED_FUNCTION_26_15();
              OUTLINED_FUNCTION_77(v182 + v181, &v537);
              OUTLINED_FUNCTION_236();
              OUTLINED_FUNCTION_249();
              v494 = v183;
              v510 = -v179;
              v184 = -1;
              v185 = v501;
              OUTLINED_FUNCTION_283();
              v530 = v180;
              do
              {
                v188 = *(v186 - 40);
                v187 = *(v186 - 32);
                LODWORD(v189) = *(v186 - 24);
                v543[0] = v188;
                v543[1] = v187;
                v544 = v189;
                LODWORD(v526) = v189;
                v524 = v186;
                if (v189 != 1)
                {
                  if (v70)
                  {
                    v190 = OUTLINED_FUNCTION_169();
                    sub_274772E38(v190, v191, v192);
                  }

                  else
                  {
                    if (v184 == -1)
                    {
                      v200 = OUTLINED_FUNCTION_169();
                      sub_274772E38(v200, v201, v202);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_236();
                      if (v184 >= *(v194 + 16))
                      {
                        goto LABEL_173;
                      }

                      v136 = v104;
                      v189 = *(v193 - 56);
                      v195 = *(v193 - 48);
                      v532 = *(v193 - 64);
                      v533 = v189;
                      LOBYTE(v534) = v195;
                      sub_274772E38(v188, v187, v526);
                      v196 = OUTLINED_FUNCTION_41_12();
                      sub_274772E38(v196, v197, v195);
                      OUTLINED_FUNCTION_264();
                      OUTLINED_FUNCTION_99_3();
                      v32 = v198();
                      OUTLINED_FUNCTION_283();
                      OUTLINED_FUNCTION_140_0(v199);
                      v152 = v152 + v114 + v32;
                    }

                    v185 = v501;
                  }
                }

                [v180 begin];
                [v180 setDisableActions_];
                v532 = v188;
                OUTLINED_FUNCTION_104_2();
                OUTLINED_FUNCTION_88_3(v545);
                v203 = OUTLINED_FUNCTION_144();
                MEMORY[0x277C5AFB0](v203);
                OUTLINED_FUNCTION_26_15();
                v206 = *(v205 + v204);
                v207 = *(v206 + 16);
                v521 = (v184 + 1);
                if (v207)
                {

                  OUTLINED_FUNCTION_250();
                  v208 = sub_274797E40();
                  if (v209)
                  {
                    v210 = v136;
                    v136 = *v514;
                    v211 = *(*(v206 + 56) + 8 * v208);
                    v212 = OUTLINED_FUNCTION_250();
                    (v136)(v212, v519);
                    LODWORD(v189) = v526;

                    v520 = 0;
                    goto LABEL_75;
                  }
                }

                v32 = v78 + v152;
                OUTLINED_FUNCTION_11_28();
                OUTLINED_FUNCTION_99_3();
                v213();
                OUTLINED_FUNCTION_247();
                v214 = v214 && v32 < v502;
                v210 = v136;
                if (v214)
                {
                  v211 = (v136[6])(v531, &v532, &v539, v180, v136);
                  OUTLINED_FUNCTION_109_3();
                  v216 = OUTLINED_FUNCTION_197();
                  (v136)(v216);
                  v520 = 1;
                }

                else
                {
                  OUTLINED_FUNCTION_109_3();
                  v215 = OUTLINED_FUNCTION_197();
                  (v136)(v215);
                  v211 = 0;
                  v520 = 0;
                }

                OUTLINED_FUNCTION_281();
LABEL_75:
                v527 = v184;
                v28 = (v184 + 2);
                [v180 commit];
                if (!v211)
                {
                  v532 = v188;
                  OUTLINED_FUNCTION_104_2();
                  v247 = v527;
                  if (!v500 || v494 + v527 != -1)
                  {
                    v136 = v210;
                    if (v189 != 1)
                    {
                      goto LABEL_97;
                    }

                    if (v28 >= v500)
                    {
                      v32 = 0.0;
                      OUTLINED_FUNCTION_34_9();
                      v180 = v525;
                      if (v138)
                      {
                        goto LABEL_106;
                      }

LABEL_96:
                      v276 = OUTLINED_FUNCTION_20_19();
                      v278 = v277(v276);
                      v185 = v185 + OUTLINED_FUNCTION_23_18(v278);
                      v32 = v32 + v185;
                      v279 = OUTLINED_FUNCTION_163();
                      [v279 v280];
                      if (v281 <= v32)
                      {
                        goto LABEL_97;
                      }

LABEL_107:
                      v70 = 0;
                    }

                    else
                    {
                      v518 = v187;
                      OUTLINED_FUNCTION_259();
                      v187 = *(v270 - 2);
                      v189 = *(v270 - 1);
                      v271 = *v270;
                      v539 = v187;
                      v540 = v189;
                      v541 = v271;
                      v272 = OUTLINED_FUNCTION_41_12();
                      sub_274772E38(v272, v273, v271);
                      OUTLINED_FUNCTION_11_28();
                      OUTLINED_FUNCTION_214();
                      v507();
                      v274 = OUTLINED_FUNCTION_189();
                      v28 = *(v275 - 256);
                      OUTLINED_FUNCTION_140_0(v274);
                      v136 = v28;
                      v104 = v247;
                      OUTLINED_FUNCTION_253();
                      OUTLINED_FUNCTION_34_9();
                      if (!v138)
                      {
                        goto LABEL_96;
                      }

LABEL_106:
                      v290 = OUTLINED_FUNCTION_20_19();
                      v292 = v291(v290);
                      v185 = v185 - OUTLINED_FUNCTION_23_18(v292);
                      if (v185 - v32 > 0.0)
                      {
                        goto LABEL_107;
                      }

LABEL_97:
                      OUTLINED_FUNCTION_11_28();
                      v70 = v104;
                      v282 = v189;
                      v283 = v188;
                      v284 = v522;
                      v522();
                      v285 = OUTLINED_FUNCTION_240();
                      (v284)(v285);
                      OUTLINED_FUNCTION_253();
                      v32 = v286;
                      sub_274772E24(v283, v187, v282);
                      OUTLINED_FUNCTION_120_2();
                    }

                    OUTLINED_FUNCTION_281();
                    goto LABEL_109;
                  }

                  v250 = OUTLINED_FUNCTION_169();
                  sub_274772E24(v250, v251, v252);
                  v70 = 0;
                  goto LABEL_103;
                }

                v505 = v184 + 2;
                *&v515 = v188;
                v518 = v187;
                v217 = v78;
                v218 = Strong;
                v180 = v525;
                v32 = (v507)(v543, v525, v210, v31);
                OUTLINED_FUNCTION_34_9();
                v219 = OUTLINED_FUNCTION_111_2();
                [v219 v220];
                v221 = OUTLINED_FUNCTION_111_2();
                [v221 v222];
                v223 = v211;
                [v223 layoutIfNeeded];
                v224 = OUTLINED_FUNCTION_47_9(&a9);
                v226 = [v224 v225];
                [v226 displayScale];

                BSFloatRoundForScale();
                v228 = v227;
                v229 = [v218 &selRef_setSelectedTabIndex_];
                [v229 displayScale];

                BSFloatRoundForScale();
                v231 = v230;
                OUTLINED_FUNCTION_281();
                OUTLINED_FUNCTION_99_3();
                [v223 setFrame_];

                v233 = [v180 &selRef_applicationDidForeground];
                v234 = v521;
                if (v520)
                {
                  v235 = v498;
                  MEMORY[0x277C5AFB0](v521, v512);
                  v236 = v531;
                  v237 = v516;
                  OUTLINED_FUNCTION_102_3(v516 + v531);
                  v238 = v223;
                  swift_isUniquelyReferenced_nonNull_native();
                  OUTLINED_FUNCTION_263(*(v237 + v236));
                  sub_2748F9C64(v238, v235);
                  OUTLINED_FUNCTION_116_3();
                  *(v237 + v236) = v239;
                  OUTLINED_FUNCTION_109_3();
                  (v136)();
                  swift_endAccess();
                  v233 = [OUTLINED_FUNCTION_262(&v529) addSubview_];
                }

                v28 = &v542;
                MEMORY[0x277C5ECC0](v233);
                OUTLINED_FUNCTION_108_3();
                v242 = *(v240 + 16);
                v241 = *(v240 + 24);
                LODWORD(v243) = v526;
                v136 = v515;
                if (v242 >= v241 >> 1)
                {
                  OUTLINED_FUNCTION_8(v241);
                  sub_2749FCFB4();
                }

                sub_2749FCFF4();
                OUTLINED_FUNCTION_275();

                v532 = v136;
                OUTLINED_FUNCTION_104_2();
                OUTLINED_FUNCTION_236();
                v245 = *(v244 + 16);
                v246 = (v245 - 1);
                if (!v245)
                {
                  v246 = 0;
                }

                v78 = v217;
                v104 = v512;
                v247 = v527;
                if (!v245 || v234 != v246)
                {
                  v210 = v513;
                  if (v243 != 1)
                  {
                    goto LABEL_92;
                  }

                  if (v505 >= v245)
                  {
                    v32 = 0.0;
                    OUTLINED_FUNCTION_34_9();
                    v180 = v525;
                    if (v138)
                    {
                      goto LABEL_100;
                    }

LABEL_91:
                    v259 = OUTLINED_FUNCTION_20_19();
                    v261 = v260(v259);
                    v185 = v185 + OUTLINED_FUNCTION_23_18(v261);
                    v32 = v32 + v185;
                    v262 = OUTLINED_FUNCTION_163();
                    [v262 v263];
                    if (v264 <= v32)
                    {
                      goto LABEL_92;
                    }

LABEL_101:
                    v70 = 0;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_259();
                    v243 = *(v253 - 1);
                    v254 = *v253;
                    v539 = *(v253 - 2);
                    v540 = v243;
                    v541 = v254;
                    v255 = OUTLINED_FUNCTION_41_12();
                    sub_274772E38(v255, v256, v254);
                    OUTLINED_FUNCTION_11_28();
                    OUTLINED_FUNCTION_214();
                    v507();
                    v257 = OUTLINED_FUNCTION_189();
                    v210 = *(v258 - 256);
                    OUTLINED_FUNCTION_140_0(v257);
                    v104 = v247;
                    OUTLINED_FUNCTION_253();
                    OUTLINED_FUNCTION_34_9();
                    if (!v138)
                    {
                      goto LABEL_91;
                    }

LABEL_100:
                    v287 = OUTLINED_FUNCTION_20_19();
                    v289 = v288(v287);
                    v185 = v185 - OUTLINED_FUNCTION_23_18(v289);
                    if (v185 - v32 > 0.0)
                    {
                      goto LABEL_101;
                    }

LABEL_92:
                    OUTLINED_FUNCTION_11_28();
                    v70 = v104;
                    v265 = v522;
                    v522();
                    v266 = OUTLINED_FUNCTION_240();
                    (v265)(v266);
                    OUTLINED_FUNCTION_253();
                    v32 = v267;
                    v268 = OUTLINED_FUNCTION_45();
                    sub_274772E24(v268, v269, v243);
                    OUTLINED_FUNCTION_120_2();
                  }

                  OUTLINED_FUNCTION_281();
LABEL_103:
                  v136 = v210;
                  goto LABEL_109;
                }

                v248 = OUTLINED_FUNCTION_45();
                sub_274772E24(v248, v249, v243);
                v70 = 0;
                OUTLINED_FUNCTION_283();
LABEL_109:
                v186 = v524 + 24;
                v184 = v247 + 1;
              }

              while (v510 + v184 != -1);
            }

            OUTLINED_FUNCTION_190();

            v293 = OUTLINED_FUNCTION_123_2(&v533);
            sub_27479BB64(v293);
            sub_2749FCF74();
            OUTLINED_FUNCTION_78();

            v294 = v499;
            [v499 setAccessibilityElements_];

            v295 = OUTLINED_FUNCTION_115_2(&a9);
            [v295 v296];
            OUTLINED_FUNCTION_105_3();
            v299 = v297 + v298;
            OUTLINED_FUNCTION_47_9(&v497);
            OUTLINED_FUNCTION_131_1();
            OUTLINED_FUNCTION_280();
            v300();
            OUTLINED_FUNCTION_150_0();
            sub_2749F95D4();
            OUTLINED_FUNCTION_32_1();
            OUTLINED_FUNCTION_278();
            v479();
            v301 = v532;
            if (v532)
            {

              v302 = v506;
            }

            else
            {
              v504 = v136;
              v303 = objc_opt_self();
              v304 = v531;
              v305 = v303;
              OUTLINED_FUNCTION_113_3();
              v306 = swift_allocObject();
              v307 = v294;
              v308 = v306;
              *(v306 + 16) = v307;
              *(v306 + 24) = 0x4030000000000000;
              *(v306 + 32) = v78;
              *(v306 + 40) = v299;
              v302 = v506;
              *(v306 + 48) = v506;
              *(v306 + 56) = v304;
              v309 = v307;
              v310 = v304;
              OUTLINED_FUNCTION_287();
              OUTLINED_FUNCTION_32_2();
              v311 = swift_allocObject();
              *(v311 + 16) = sub_2749769E8;
              *(v311 + 24) = v308;
              v535 = sub_27491222C;
              v536 = v311;
              v532 = MEMORY[0x277D85DD0];
              v533 = 1107296256;
              OUTLINED_FUNCTION_12_29();
              v534 = v312;
              OUTLINED_FUNCTION_101_2(&block_descriptor_63);
              v313 = _Block_copy(&v532);

              [v305 performWithoutAnimation_];
              _Block_release(v313);
              LOBYTE(v305) = OUTLINED_FUNCTION_144_1(v311, "");

              if (v305)
              {
                goto LABEL_178;
              }

              v314 = v309;
              [v310 insertSubview:v314 atIndex:0];
              [v314 setAlpha_];
              v533 = 0;
              v534 = 0;
              v532 = 0x3FF0000000000000;
              OUTLINED_FUNCTION_101_2(0x3FF0000000000000);
              v535 = 0;
              v536 = 0;
              [v314 v315];

              OUTLINED_FUNCTION_88_3(v545);
              v543[0] = v314;
              v316 = v490;
              OUTLINED_FUNCTION_102_3(v304 + v490);
              v317 = v314;
              v318 = sub_2749F95E4();
              MEMORY[0x28223BE20](v318);
              OUTLINED_FUNCTION_174();
              *(v319 - 16) = v310;
              v28 = (v304 + v316);
              v320 = v465;
              sub_2749F9554();
              v465 = v320;

              swift_endAccess();
              v468 = sub_2749769E8;
              v467 = v308;
              v104 = v512;
              v294 = v499;
            }

            OUTLINED_FUNCTION_26_15();
            v29 = v475;
            if (*(v322 + v321) == 1)
            {
              v323 = [v294 layer];
              v324 = sub_2749F9884();
              v325 = OUTLINED_FUNCTION_142_1();
              v326 = OUTLINED_FUNCTION_24_1();
              [v326 v327];

              v28 = objc_opt_self();
              OUTLINED_FUNCTION_86();
              v328 = swift_allocObject();
              v329 = OUTLINED_FUNCTION_261(v328, &v529);
              v535 = sub_2747EA124;
              v536 = v329;
              OUTLINED_FUNCTION_75_3();
              *(v330 - 256) = v331;
              OUTLINED_FUNCTION_268();
              v534 = sub_274760264;
              OUTLINED_FUNCTION_101_2(&block_descriptor_69_1);
              v332 = _Block_copy(&v532);
              v333 = v499;

              OUTLINED_FUNCTION_80_2();
              *(v334 - 256) = v335;
              v536 = 0;
              OUTLINED_FUNCTION_75_3();
              *(v336 - 256) = v337;
              OUTLINED_FUNCTION_268();
              v302 = v506;
              v534 = sub_27480D7B8;
              OUTLINED_FUNCTION_101_2(&block_descriptor_72);
              v338 = _Block_copy(&v532);
              OUTLINED_FUNCTION_2_23();
              [v28 v339];
              v294 = v499;
              _Block_release(v338);
              _Block_release(v332);
            }

            [v294 setFrame_];
            OUTLINED_FUNCTION_160();
            if (v340)
            {
              sub_2749FCE14("Search Symbols", 14);
              v28 = v341;
              if (qword_28159E3A8 != -1)
              {
                OUTLINED_FUNCTION_62();
                swift_once();
              }

              OUTLINED_FUNCTION_93();
              v342 = sub_2749FCD64();
              OUTLINED_FUNCTION_93();
              v343 = sub_2749FCD64();

              v344 = [*&v294[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
              [v344 setCornerRadius_];

              OUTLINED_FUNCTION_175();
            }

            else
            {
              v345 = [*&v294[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
              [v345 setCornerRadius_];

              OUTLINED_FUNCTION_175();
            }

            v78 = v78 + v302;
            v87 = v471;
            v57 = v29;
          }

          else
          {
            OUTLINED_FUNCTION_190();
          }
        }

        else
        {
          v104 = v512;
        }

        v97 = (v104 + 1);
        if (v97 == v484)
        {
          goto LABEL_128;
        }
      }
    }

    OUTLINED_FUNCTION_235();
    v465 = 0;
LABEL_128:
    v348 = OUTLINED_FUNCTION_47_9(&a9);
    [v348 v349];
    [v28 setContentSize_];
    v350 = MEMORY[0x277D85000];
    v351 = *((*MEMORY[0x277D85000] & *v28) + 0x70);
    OUTLINED_FUNCTION_77(v351 + v28, &v532);
    v512 = v351;
    v352 = *(v351 + v28) + 64;
    OUTLINED_FUNCTION_27_12();
    v355 = v354 & v353;
    v356 = *v350;
    v357 = *((*v350 & *v28) + 0x88);
    v358 = *((v356 & *v28) + 0x78);
    OUTLINED_FUNCTION_217(v359, *((v356 & *v28) + 0x80));
    v527 = v357;
    OUTLINED_FUNCTION_77(v28 + v357, v545);
    v513 = v358;
    OUTLINED_FUNCTION_77(v28 + v358, v543);
    OUTLINED_FUNCTION_132_2(&v541);
    v523 = v360;
    v529 = v361 + 32;
    OUTLINED_FUNCTION_242();
    v525 = v362;
    OUTLINED_FUNCTION_233(*MEMORY[0x277D7A490]);
    OUTLINED_FUNCTION_98_3(v489);
    *&v363 = 136315138;
    v515 = v363;
    OUTLINED_FUNCTION_230();
    v524 = v352;
    v522 = v364;
    while (v355)
    {
      v365 = v70;
      v366 = v57;
LABEL_135:
      OUTLINED_FUNCTION_62_2();
      v368(v498);
      OUTLINED_FUNCTION_245();
      v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
      v369 = *(v351 + 12);
      v370 = v492;
      v371 = OUTLINED_FUNCTION_144();
      v372 = v365;
      v373(v371);
      *(v370 + v369) = v28;
      OUTLINED_FUNCTION_36_14();
      __swift_storeEnumTagSinglePayload(v374, v375, v376, v377);
      v378 = v28;
LABEL_136:
      OUTLINED_FUNCTION_63_3();
      sub_2747D31F8(v379, v380, &unk_280968DD0, &qword_274A14050);
      v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
      OUTLINED_FUNCTION_48_7(v381);
      if (v138)
      {
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_186();

        OUTLINED_FUNCTION_287();
        sub_27471F8A4(v514, 0);
        OUTLINED_FUNCTION_25_15();
        return;
      }

      v530 = *(v28 + *(v351 + 12));
      OUTLINED_FUNCTION_8_2();
      v57 = v366;
      v382 = v366;
      v70 = v372;
      v383(v382, v28, v372);
      v384 = *v526;
      OUTLINED_FUNCTION_81_2();
      OUTLINED_FUNCTION_154();
      v385 = OUTLINED_FUNCTION_47_9(&v520);
      v386 = v495;
      (v384)(v385);
      v351 = sub_2749F9524();
      v387 = *v525;
      (*v525)(v28, v386);
      v388 = v351[2];

      v389 = sub_2749F9274();
      if (v389 < 0 || v389 >= v388)
      {
        OUTLINED_FUNCTION_203();
        sub_2749FA3D4();
        OUTLINED_FUNCTION_8_2();
        v395 = v473;
        v396 = OUTLINED_FUNCTION_29_1();
        v397(v396);
        v28 = v384;
        v398 = sub_2749FA4D4();
        v399 = sub_2749FD2D4();
        if (os_log_type_enabled(v398, v399))
        {
          v70 = v395;
          v400 = OUTLINED_FUNCTION_30_9();
          v401 = OUTLINED_FUNCTION_178();
          *v400 = OUTLINED_FUNCTION_216(v401, &v544).n128_u32[0];
          OUTLINED_FUNCTION_2_47();
          sub_274720F90(&qword_280968FC8, v402);
          OUTLINED_FUNCTION_231();
          v351 = sub_2749FDC74();
          v28 = v403;
          v404 = *v521;
          (*v521)(v70, v519);
          v405 = OUTLINED_FUNCTION_44();
          sub_2747AF460(v405, v406, v407);
          OUTLINED_FUNCTION_59_7();

          *(v400 + 4) = v351;
          _os_log_impl(&dword_274719000, v398, v399, "Invalid on screen cell index path %s", v400, 0xCu);
          v408 = OUTLINED_FUNCTION_115_2(&v544);
          __swift_destroy_boxed_opaque_existential_0(v408);
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_213();

          OUTLINED_FUNCTION_14_23();
          v410(v489[1], v474);
          v411 = OUTLINED_FUNCTION_115_2(&v504);
          v404(v411, v70);
          v57 = v351;
        }

        else
        {
          OUTLINED_FUNCTION_213();

          OUTLINED_FUNCTION_124_2();
          (v351)(v395, v70);
          OUTLINED_FUNCTION_14_23();
          v413(v384, v474);
          v414 = OUTLINED_FUNCTION_208();
          (v351)(v414);
        }

        v352 = v524;
        OUTLINED_FUNCTION_155_0();
      }

      else
      {
        OUTLINED_FUNCTION_81_2();
        OUTLINED_FUNCTION_154();
        OUTLINED_FUNCTION_47_9(&v502);
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_185();
        (v384)();
        v390 = sub_2749F9534();
        v391 = OUTLINED_FUNCTION_32_1();
        v387(v391);
        v392 = sub_2749F9274();
        if ((v390 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x277C5F6D0](v392, v390);
          v351 = v530;
        }

        else
        {
          v351 = v530;
          if ((v392 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          if (v392 >= *((v390 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_176;
          }

          v28 = *(v390 + 8 * v392 + 32);
        }

        [v351 frame];
        [v28 convertRect:v531 toCoordinateSpace:?];
        if (OUTLINED_FUNCTION_141_0(v553) < v503 || (OUTLINED_FUNCTION_92_3(), CGRectGetMinY(v554), OUTLINED_FUNCTION_247(), v214))
        {
          v516 = v28;
          [v351 removeFromSuperview];
          OUTLINED_FUNCTION_81_2();
          OUTLINED_FUNCTION_288();
          v419 = 0;
          for (i = v28 + 6; ; i += 3)
          {
            v421 = v524;
            if (&qword_280968420 == v419)
            {

              OUTLINED_FUNCTION_203();
              sub_2749FA3D4();
              v426 = v530;
              v70 = v530;
              v427 = sub_2749FA4D4();
              v428 = sub_2749FD2D4();

              if (os_log_type_enabled(v427, v428))
              {
                v429 = OUTLINED_FUNCTION_30_9();
                v430 = OUTLINED_FUNCTION_178();
                *v429 = OUTLINED_FUNCTION_216(v430, v538).n128_u32[0];
                v542 = swift_getObjectType();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969470, &qword_274A14D50);
                OUTLINED_FUNCTION_228();
                v431 = sub_2749FCDC4();
                v70 = v432;
                v433 = sub_2747AF460(v431, v432, &v539);

                *(v429 + 4) = v433;
                _os_log_impl(&dword_274719000, v427, v428, "Recycled cell without a reuse identifier, cell is of type: %s", v429, 0xCu);
                v434 = OUTLINED_FUNCTION_115_2(v538);
                __swift_destroy_boxed_opaque_existential_0(v434);
                OUTLINED_FUNCTION_31();
                v435 = v524;
                OUTLINED_FUNCTION_31();
              }

              else
              {
                v435 = v421;
              }

              OUTLINED_FUNCTION_14_23();
              v449(&qword_280968420, v474);
              OUTLINED_FUNCTION_230();
              goto LABEL_169;
            }

            if (v419 >= v28[2])
            {
              goto LABEL_177;
            }

            v422 = *(i - 1);
            v70 = *i;
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

            v424 = OUTLINED_FUNCTION_111_2();
            if ([v424 v425])
            {
              break;
            }

            v419 = (v419 + 1);
          }

          v436 = v531;
          v437 = v511;
          OUTLINED_FUNCTION_10_3(v531 + v511, &v539);
          sub_27471F8A4(v514, 0);
          swift_isUniquelyReferenced_nonNull_native();
          v542 = *(v436 + v437);
          *(v436 + v437) = 0x8000000000000000;
          sub_274797CC0(v422, v70);
          OUTLINED_FUNCTION_168();
          if (__OFADD__(v440, v441))
          {
            goto LABEL_179;
          }

          v442 = v438;
          LODWORD(v514) = v439;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969478, &qword_274A14D58);
          v443 = sub_2749FDA84();
          v444 = v542;
          if (v443)
          {
            v445 = sub_274797CC0(v422, v70);
            v447 = v530;
            if ((v514 & 1) != (v446 & 1))
            {
              goto LABEL_180;
            }

            v448 = v445;
          }

          else
          {
            v447 = v530;
            v448 = v442;
          }

          OUTLINED_FUNCTION_81_2();
          *(v450 + v437) = v444;
          if (v451)
          {
          }

          else
          {
            sub_274972654(&v542);
            OUTLINED_FUNCTION_41_12();
            sub_2748FB298();
          }

          v435 = v524;
          v426 = v447;
          v427 = (*(v444 + 56) + 8 * v448);
          v452 = v447;
          v453 = OUTLINED_FUNCTION_228();
          sub_274765168(v453, v454);
          v455 = v542;
          swift_endAccess();

          v514 = sub_274972654;
          OUTLINED_FUNCTION_230();
LABEL_169:
          v456 = v531;
          v457 = OUTLINED_FUNCTION_266(&v539);
          OUTLINED_FUNCTION_10_3(v457, &v539);
          v28 = (v427 + v456);
          v351 = sub_274973FF0();
          swift_endAccess();

          OUTLINED_FUNCTION_8_2();
          v458 = OUTLINED_FUNCTION_208();
          v459(v458);
          OUTLINED_FUNCTION_155_0();
          v352 = v435;
        }

        else
        {
          OUTLINED_FUNCTION_8_2();
          v393 = OUTLINED_FUNCTION_208();
          v394(v393);

          OUTLINED_FUNCTION_155_0();
          v352 = v524;
        }
      }
    }

    while (1)
    {
      v367 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v367 >= v364)
      {
        v372 = v70;
        v366 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
        OUTLINED_FUNCTION_117_0(&v521);
        OUTLINED_FUNCTION_88_2();
        __swift_storeEnumTagSinglePayload(v415, v416, v417, v418);
        v355 = 0;
        goto LABEL_136;
      }

      v355 = *(v352 + 8 * v367);
      ++v29;
      if (v355)
      {
        v365 = v70;
        v366 = v57;
        v29 = v367;
        goto LABEL_135;
      }
    }

    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    sub_2749FDD54();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
    OUTLINED_FUNCTION_113_3();
    v346 = swift_allocObject();
    *(v346 + 16) = xmmword_274A0EF10;
    OUTLINED_FUNCTION_24_19(v346, "Inset:) instead");
    OUTLINED_FUNCTION_25_15();
  }
}

void sub_274971E2C(void *a1, void *a2)
{
  [a1 setFrame_];
  if (*(a2 + *((*MEMORY[0x277D85000] & *a2) + 0xC8)) == 1)
  {
    [a1 setAlpha_];
    CGAffineTransformMakeScale(&v23, 0.5, 0.5);
    tx = v23.tx;
    ty = v23.ty;
    v20 = *&v23.c;
    v21 = *&v23.a;
    [a1 bounds];
    Height = CGRectGetHeight(v24);
    *&v23.a = v21;
    *&v23.c = v20;
    v23.tx = tx;
    v23.ty = ty;
    CGAffineTransformTranslate(&v22, &v23, 0.0, Height * -0.175);
    v23 = v22;
    [a1 setTransform_];
    v7 = sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
    v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v10 = sub_27480D818(v8, v9);
    v11 = sub_2749FD184();
    OUTLINED_FUNCTION_164();

    v12 = sub_2749FD034();
    OUTLINED_FUNCTION_164();

    v13 = sub_2749FD034();
    OUTLINED_FUNCTION_164();

    v14 = sub_2749FCD64();
    [v10 setValue:v14 forKey:*MEMORY[0x277CDA4E8]];

    v15 = sub_2749FCD64();
    OUTLINED_FUNCTION_164();

    v16 = [a1 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
    OUTLINED_FUNCTION_113_3();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_274A0EF10;
    *(v17 + 56) = v7;
    *(v17 + 32) = v10;
    v18 = v10;
    v19 = sub_2749FCF74();

    [v16 setFilters_];
  }
}

BOOL sub_2749720D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v19[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB0, &unk_274A29860);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = *((*MEMORY[0x277D85000] & *a5) + 0x98);
  swift_beginAccess();
  sub_27473ADB8(a5 + v9, v8, &qword_280967DB0, &unk_274A29860);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DB8, &unk_274A10090);
  sub_2749F9524();
  v11 = *(*(v10 - 8) + 8);
  v11(v8, v10);
  v12 = sub_2748557C8();
  v14 = v13;

  if (v14)
  {
    return 0;
  }

  sub_27473ADB8(a5 + v9, v8, &qword_280967DB0, &unk_274A29860);
  sub_2749F9524();
  v11(v8, v10);
  v15 = sub_2748557C8();
  v17 = v16;

  return (v17 & 1) == 0 && v12 < v15;
}

BOOL sub_2749722A8(unsigned __int8 a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  HIDWORD(v22) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0, &unk_274A14040);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = *((*MEMORY[0x277D85000] & *a5) + 0x98);
  swift_beginAccess();
  sub_27473ADB8(a5 + v10, v9, &unk_280968DC0, &unk_274A14040);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0, &unk_274A10120);
  v12 = sub_2749F9524();
  v13 = *(*(v11 - 8) + 8);
  v13(v9, v11);
  v14 = sub_27484F9C4(a1, v12);
  v16 = v15;

  if (v16)
  {
    return 0;
  }

  sub_27473ADB8(a5 + v10, v9, &unk_280968DC0, &unk_274A14040);
  v17 = sub_2749F9524();
  v13(v9, v11);
  v18 = sub_27484F9C4(BYTE4(v22), v17);
  v20 = v19;

  return (v20 & 1) == 0 && v14 < v18;
}

BOOL sub_27497247C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v19[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30, &qword_274A10130);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = *((*MEMORY[0x277D85000] & *a5) + 0x98);
  swift_beginAccess();
  sub_27473ADB8(a5 + v9, v8, &qword_280967E30, &qword_274A10130);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E38, &qword_274A10138);
  sub_2749F9524();
  v11 = *(*(v10 - 8) + 8);
  v11(v8, v10);
  v12 = sub_2748557C8();
  v14 = v13;

  if (v14)
  {
    return 0;
  }

  sub_27473ADB8(a5 + v9, v8, &qword_280967E30, &qword_274A10130);
  sub_2749F9524();
  v11(v8, v10);
  v15 = sub_2748557C8();
  v17 = v16;

  return (v17 & 1) == 0 && v12 < v15;
}

void sub_274972654(void *a1@<X8>)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_2749FD844())
  {
    sub_2747B0198(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *a1 = v2;
}

uint64_t sub_2749726B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D88, &unk_274A29848);
  sub_274772930();
  sub_2749F9594();
  OUTLINED_FUNCTION_7_16();
  sub_27496267C(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967910, &qword_274A0FB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0EF10;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  sub_274962804(inited, 0, &qword_280967E38, &qword_274A10138, sub_274976A58, sub_2747829CC);
  swift_setDeallocating();
  sub_2747A34C8();

  sub_274962804(v2, 1, &qword_280967E38, &qword_274A10138, sub_274976A58, sub_2747829CC);
}

uint64_t sub_27497280C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D88, &unk_274A29848);
  sub_274772930();
  sub_2749F9594();

  OUTLINED_FUNCTION_13_28();
  sub_274962804(v0, 1, v1, v2, v3, sub_2747829CC);
}

void sub_2749728C4()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30, &qword_274A10130);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_19();
  v9 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970D88, &unk_274A29848);
    sub_274772930();
    sub_2749F9594();
    sub_27496267C(&unk_28838FD80);
    sub_2747B9BAC(v4, v2);
    v11 = v10;
    v12 = *(v10 + 16);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v32 = v6;
      v33 = MEMORY[0x277D84F90];
      sub_27476D858(0, v12, 0);
      v13 = v33;
      v14 = (v11 + 32);
      v15 = *(v33 + 16);
      v16 = 24 * v15;
      do
      {
        v18 = *v14++;
        v17 = v18;
        v19 = *(v33 + 24);
        v20 = v15 + 1;
        if (v15 >= v19 >> 1)
        {
          sub_27476D858(v19 > 1, v15 + 1, 1);
        }

        *(v33 + 16) = v20;
        v21 = v33 + v16;
        *(v21 + 32) = v17;
        *(v21 + 40) = 0;
        *(v21 + 48) = 1;
        v16 += 24;
        v15 = v20;
        --v12;
      }

      while (v12);
      v6 = v32;
    }

    OUTLINED_FUNCTION_13_28();
    sub_274962804(v13, 1, v22, v23, v24, sub_2747829CC);

    v25 = *(v11 + 16);

    if (!v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967910, &qword_274A0FB20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274A0EF10;
      *(inited + 32) = xmmword_274A11F60;
      *(inited + 48) = 2;
      OUTLINED_FUNCTION_13_28();
      sub_274962804(v27, 1, v28, v29, v30, sub_2747829CC);
      swift_setDeallocating();
      sub_2747A34C8();
    }

    sub_2747D31F8(v0, v6, &qword_280967E30, &qword_274A10130);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_46();

    sub_27497280C();
  }
}

void sub_274972B84()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B180, &qword_274A19C80);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D78, &unk_274A10050);
  OUTLINED_FUNCTION_43();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D80, &unk_274A165C0);
  OUTLINED_FUNCTION_43();
  v30 = v14;
  v31 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  *&v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_glyphRegistryCancellable] = 0;
  v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_renameTextFieldDidAppear] = 0;
  *&v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_allSymbolItems] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_gridView] = v6;
  *&v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_collection] = v4;
  v18 = qword_2815A0A40;
  v19 = v6;
  v32 = v4;

  if (v18 != -1)
  {
    swift_once();
  }

  *&v0[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_glyphRegistry] = qword_2815A0A48;
  v20 = type metadata accessor for WFCollectionConfigurationDataSource();
  v34.receiver = v0;
  v34.super_class = v20;

  v21 = objc_msgSendSuper2(&v34, sel_init);
  OUTLINED_FUNCTION_10_3(*&v21[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_glyphRegistry] + OBJC_IVAR____TtC10WorkflowUI13GlyphRegistry__categories, &v33);
  v22 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88, &qword_274A10060);
  sub_2749FA8D4();
  swift_endAccess();

  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v23 = sub_2749FD404();
  v33 = v23;
  v24 = sub_2749FD3E4();
  OUTLINED_FUNCTION_86_2(v24);
  sub_27472ABB4(&qword_280967D90, &qword_280967D78, &unk_274A10050);
  sub_27477ACFC();
  sub_2749FA954();
  sub_27472ECBC(v1, &qword_28096B180, &qword_274A19C80);

  (*(v11 + 8))(v2, v9);
  OUTLINED_FUNCTION_86();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_32_2();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v19;
  sub_27472ABB4(&qword_280967DA0, &qword_280967D80, &unk_274A165C0);
  v27 = v19;
  v28 = v31;
  v29 = sub_2749FA974();

  (*(v30 + 8))(v17, v28);
  *&v22[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_glyphRegistryCancellable] = v29;

  OUTLINED_FUNCTION_46();
}

char *sub_274972FB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_2749730C4(v2);
    *&v4[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_allSymbolItems] = v5;

    sub_2749733FC(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967910, &qword_274A0FB20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274A0EF10;

    v7 = sub_27478FCD4();

    *(inited + 32) = v7;
    *(inited + 40) = 0;
    *(inited + 48) = 1;
    sub_27477A58C(inited, 0, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);

    swift_setDeallocating();
    return sub_2747A34C8();
  }

  return result;
}

void sub_2749730C4(uint64_t a1)
{
  v2 = type metadata accessor for WFGlyphCategory(0);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  v39 = *(a1 + 16);
  if (!v39)
  {
    return;
  }

  v7 = 0;
  v8 = *(v3 + 80);
  v37 = *(v3 + 72);
  v38 = a1 + ((v8 + 32) & ~v8);
  v36 = v2;
  while (1)
  {
    sub_2749768E8(v38 + v37 * v7, v5);
    v9 = &v5[*(v2 + 20)];
    v11 = *v9;
    v10 = *(v9 + 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2747643D4(0, *(v6 + 16) + 1, 1, v6);
      v6 = v31;
    }

    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      sub_2747643D4(v12 > 1, v13 + 1, 1, v6);
      v6 = v32;
    }

    *(v6 + 16) = v14;
    v15 = v6 + 24 * v13;
    *(v15 + 32) = v11;
    *(v15 + 40) = v10;
    *(v15 + 48) = 0;
    v16 = *&v5[*(v2 + 24)];
    v17 = *(v16 + 16);
    if (v17)
    {
      v40 = MEMORY[0x277D84F90];
      sub_27476D858(0, v17, 0);
      v18 = v40;
      v19 = (v16 + 32);
      v20 = *(v40 + 16);
      v21 = 24 * v20;
      do
      {
        v23 = *v19++;
        v22 = v23;
        v40 = v18;
        v24 = *(v18 + 24);
        if (v20++ >= v24 >> 1)
        {
          sub_27476D858(v24 > 1, v20, 1);
          v18 = v40;
        }

        *(v18 + 16) = v20;
        v26 = v18 + v21;
        *(v26 + 32) = v22;
        *(v26 + 40) = 0;
        *(v26 + 48) = 1;
        v21 += 24;
        --v17;
      }

      while (v17);
      v14 = *(v6 + 16);
      v2 = v36;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      v20 = *(MEMORY[0x277D84F90] + 16);
    }

    v27 = v14 + v20;
    if (__OFADD__(v14, v20))
    {
      break;
    }

    if (v27 > *(v6 + 24) >> 1)
    {
      if (v14 <= v27)
      {
        v33 = v14 + v20;
      }

      else
      {
        v33 = v14;
      }

      sub_2747643D4(1, v33, 1, v6);
      v6 = v34;
      v14 = *(v34 + 16);
      if (*(v18 + 16))
      {
LABEL_17:
        if (((*(v6 + 24) >> 1) - v14) < v20)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v28 = *(v6 + 16);
          v29 = __OFADD__(v28, v20);
          v30 = v28 + v20;
          if (v29)
          {
            goto LABEL_31;
          }

          *(v6 + 16) = v30;
        }

        goto LABEL_26;
      }
    }

    else if (v20)
    {
      goto LABEL_17;
    }

    if (v20)
    {
      goto LABEL_29;
    }

LABEL_26:
    ++v7;
    sub_274976940();
    if (v7 == v39)
    {
      return;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_27497342C()
{
  OUTLINED_FUNCTION_49_2();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_29_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_34(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_3();
  v10 = *(v0 + OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_gridView);
  v3();
  sub_274966138(v1, v5);

  OUTLINED_FUNCTION_7_16();
  sub_27472ECBC(v11, v12, v13);
  OUTLINED_FUNCTION_50_0();
}

void sub_2749734E4()
{
  OUTLINED_FUNCTION_49_2();
  v2 = OUTLINED_FUNCTION_29_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_34(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_3();
  v6 = *(v0 + OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_gridView);
  OUTLINED_FUNCTION_45();
  sub_2749728C4();
  sub_274966138(v1, 0);

  OUTLINED_FUNCTION_7_16();
  sub_27472ECBC(v7, v8, v9);
  OUTLINED_FUNCTION_50_0();
}

void sub_27497359C()
{
  OUTLINED_FUNCTION_48();
  v63 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_59_0();
  sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v61 = v8;
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v60 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = sub_2749FCAC4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - v25;
  if (!v2)
  {
    if (!OUTLINED_FUNCTION_286("IconPickerHeaderView"))
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_59_0();
    type metadata accessor for WFIconPickerHeaderView();
    OUTLINED_FUNCTION_3();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_24_0();
      sub_274885D4C(v30, v31, v32);
      v33 = OUTLINED_FUNCTION_24_0();
      sub_274976098(v33, v34, v29);
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (v2 != 1)
  {
    if (v6 | v4)
    {
      sub_274969CF0(0xD000000000000016, 0x8000000274A2B070);
      goto LABEL_18;
    }

    v59 = v24;
    if (!sub_274969CF0(0xD00000000000002DLL, 0x8000000274A2B900))
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_134();
    type metadata accessor for WFCollectionNameFieldCell();
    v35 = swift_dynamicCastClass();
    if (!v35)
    {

      goto LABEL_18;
    }

    v56 = v6;
    v57 = OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_collection;

    v36 = sub_27478FDB8();
    v38 = v37;

    v39 = (v35 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text);
    *v39 = v36;
    v39[1] = v38;

    sub_27481FB98();
    OUTLINED_FUNCTION_86();
    v40 = swift_allocObject();
    v41 = v63;
    swift_unknownObjectWeakInit();
    v42 = (v35 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler);
    v43 = *(v35 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler + 8);
    v58 = *(v35 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler);
    *v42 = sub_274976150;
    v42[1] = v40;

    sub_27471F8A4(v58, v43);

    if (v41[OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_renameTextFieldDidAppear])
    {
      goto LABEL_18;
    }

    v58 = OBJC_IVAR____TtC10WorkflowUI35WFCollectionConfigurationDataSource_renameTextFieldDidAppear;
    v44 = *&v57[v41];

    sub_27478FDB8();
    OUTLINED_FUNCTION_34_1();

    if (v44 || v40 != 0xE000000000000000)
    {
      OUTLINED_FUNCTION_32_1();
      v45 = sub_2749FDCC4();

      if ((v45 & 1) == 0)
      {
LABEL_22:
        v63[v58] = 1;
        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
    v55 = sub_2749FD404();
    sub_2749FCAB4();
    sub_2749FCB14();
    v46 = *(v59 + 8);
    v59 += 8;
    v57 = v46;
    (v46)(v22, v18);
    OUTLINED_FUNCTION_86();
    v47 = swift_allocObject();
    *(v47 + 16) = v35;
    v64[4] = sub_274976158;
    v64[5] = v47;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 1107296256;
    v64[2] = sub_274760264;
    v64[3] = &block_descriptor_45;
    v54 = _Block_copy(v64);
    v48 = v56;

    sub_2749FCA94();
    v64[0] = MEMORY[0x277D84F90];
    sub_274720F90(&qword_28159E580, MEMORY[0x277D85198]);
    v49 = OUTLINED_FUNCTION_32_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
    sub_27472ABB4(&qword_28159E530, &unk_28096DB60, &qword_274A0F640);
    v51 = v62;
    sub_2749FD7B4();
    v53 = v54;
    v52 = v55;
    MEMORY[0x277C5F120](v26, v17, v11, v54);
    _Block_release(v53);

    (*(v61 + 8))(v11, v51);
    (*(v60 + 8))(v17, v12);
    (v57)(v26, v18);
    goto LABEL_22;
  }

  if (OUTLINED_FUNCTION_286("IconPickerSymbolCell"))
  {
    OUTLINED_FUNCTION_59_0();
    type metadata accessor for WFIconPickerSymbolCell();
    OUTLINED_FUNCTION_3();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph_];
      sub_2749775FC(v28, 1);

      LOWORD(v28) = sub_27478FCD4();

      *(v27 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = v6 == v28;
      sub_274977DCC();
      goto LABEL_18;
    }

LABEL_11:
  }

LABEL_18:
  OUTLINED_FUNCTION_46();
}

double sub_274973C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    sub_27478FE2C(a1, a2);
  }

  return result;
}

id sub_274973CAC(int a1, id a2)
{
  result = [a2 isFirstResponder];
  if (result)
  {
    sub_2749760F0(a2);
    sub_2749734E4();
  }

  return result;
}

void sub_274973D20(uint64_t a1, void *a2)
{
  v2 = sub_2749760F0(a2);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_5:

    sub_274973414(1);
  }
}

double sub_274973DA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      return 50.0;
    }

    if (!(a1 | a2))
    {
      return 54.0;
    }

    if (qword_280966BF0 != -1)
    {
      swift_once();
    }

    return *&qword_2809891A0;
  }

  else
  {
    if (qword_280966C10 != -1)
    {
      swift_once();
    }

    [qword_2809891C8 lineHeight];
    return v4 + 12.0;
  }
}

double sub_274973E68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return 50.0;
  }

  return result;
}

id sub_274973EC0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFCollectionConfigurationDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_274973FF0()
{
  v1 = v0;
  v2 = sub_274797E40();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EFE0, &unk_274A22300);
  sub_2749FDA84();
  v5 = *(v12 + 48);
  v6 = sub_2749F9284();
  OUTLINED_FUNCTION_9();
  (*(v7 + 8))(v5 + *(v7 + 72) * v4, v6);
  v8 = *(*(v12 + 56) + 8 * v4);
  type metadata accessor for WFGridViewCell();
  OUTLINED_FUNCTION_2_47();
  sub_274720F90(v9, v10);
  OUTLINED_FUNCTION_7_16();
  sub_2749FDAA4();
  *v1 = v12;
  return v8;
}

void sub_274974114(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_2749FD844())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2749FD804();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
    sub_27472ABB4(&qword_2809688C0, &qword_280967A10, &qword_274A0FC10);
    sub_2749FD174();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_274730F8C(a1);
      return;
    }

    while (1)
    {
      v16 = sub_274770A04(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_2749FD874())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_274974358(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_274770B38(*(*(a1 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_27497444C()
{
  OUTLINED_FUNCTION_49_2();
  if (*(*v0 + 16))
  {
    v3 = v2;
    v4 = v1;
    v5 = v1 + 56;
    OUTLINED_FUNCTION_19_22();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;

    v11 = 0;
    if (!v8)
    {
      goto LABEL_4;
    }

    do
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v3(*(*(v4 + 48) + (v13 | (v12 << 6))));
    }

    while (v8);
    while (1)
    {
LABEL_4:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v12 >= v10)
      {
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_50_0();
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void *sub_27497453C(uint64_t a1, void *a2)
{
  v4 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!a2[2])
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a1;
  v56 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2749FD804();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
    v4 = v56;
    sub_27472ABB4(&qword_2809688C0, &qword_280967A10, &qword_274A0FC10);
    sub_2749FD174();
    v5 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
    v9 = v66;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v48 = v7;
  v13 = (v7 + 64) >> 6;
  v54 = v6;
  v55 = v4 + 7;
  v14 = v8;
  v15 = v9;
  v51 = v13;
  v52 = v5;
  if (v5 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v16 = v14;
  v17 = v15;
  v8 = v14;
  if (!v15)
  {
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = *(v6 + 8 * v8);
      ++v16;
      if (v17)
      {
        goto LABEL_14;
      }
    }

LABEL_47:
    v40 = v5;
    goto LABEL_52;
  }

LABEL_14:
  v3 = (v17 - 1) & v17;
  v18 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v17)))));
  v2 = v8;
  v50 = v3;
  if (!v18)
  {
    goto LABEL_47;
  }

LABEL_18:
  v53 = v8;
  v7 = v18;
  v20 = sub_2749FD5F4();
  v21 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v15 = v20 & v21;
    v6 = (v20 & v21) >> 6;
    v5 = 1 << (v20 & v21);
    if ((v5 & v55[v6]) == 0)
    {

      v14 = v2;
      v15 = v3;
      v5 = v52;
      v8 = v53;
      v6 = v54;
      v9 = v50;
      v13 = v51;
      if ((v52 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      v50 = v9;
      v19 = sub_2749FD874();
      if (!v19)
      {
        goto LABEL_47;
      }

      v57 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
      swift_dynamicCast();
      v18 = v58;
      v2 = v14;
      v3 = v15;
      if (!v58)
      {
        goto LABEL_47;
      }

      goto LABEL_18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
    v22 = *(v4[6] + 8 * v15);
    v7 = sub_2749FD604();

    if (v7)
    {
      break;
    }

    v20 = v15 + 1;
    v4 = v56;
  }

  v8 = v52;
  v59[0] = v52;
  v59[1] = v54;
  v59[2] = v48;
  v60 = v53;
  v61 = v50;

  v4 = v56;
  v24 = *(v56 + 32);
  v45 = ((1 << v24) + 63) >> 6;
  v7 = 8 * v45;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v46 = &v44;
    MEMORY[0x28223BE20](v23);
    v25 = &v44 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v25, v55, v7);
    v44 = 0;
    v26 = *&v25[8 * v6] & ~v5;
    v27 = v4[2];
    v49 = v25;
    *&v25[8 * v6] = v26;
    v28 = v27 - 1;
    v6 = v54;
    v29 = v51;
LABEL_26:
    v47 = v28;
LABEL_27:
    while (2)
    {
      if (v8 < 0)
      {
        v33 = sub_2749FD874();
        if (!v33)
        {
          v2 = v53;
          goto LABEL_50;
        }

        v57 = v33;
        swift_dynamicCast();
        v32 = v58;
        v5 = v56;
        if (!v58)
        {
LABEL_48:
          v2 = v53;
LABEL_50:
          sub_274975F58();
          v4 = v41;
          v53 = v2;
          goto LABEL_51;
        }

        goto LABEL_37;
      }

      v5 = v56;
      if (v3)
      {
LABEL_33:
        v31 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v32 = *(*(v8 + 48) + ((v2 << 9) | (8 * v31)));
        v53 = v2;
        v50 = v3;
        if (!v32)
        {
          goto LABEL_48;
        }

LABEL_37:
        v7 = v32;
        v34 = sub_2749FD5F4();
        v35 = ~(-1 << *(v5 + 32));
        do
        {
          v15 = v34 & v35;
          v36 = (v34 & v35) >> 6;
          v37 = 1 << (v34 & v35);
          if ((v37 & v55[v36]) == 0)
          {

            v29 = v51;
            v8 = v52;
            v6 = v54;
            goto LABEL_27;
          }

          v4 = *(v56[6] + 8 * v15);
          v7 = sub_2749FD604();

          v34 = v15 + 1;
        }

        while ((v7 & 1) == 0);

        v38 = *&v49[8 * v36];
        *&v49[8 * v36] = v38 & ~v37;
        v39 = (v38 & v37) == 0;
        v29 = v51;
        v8 = v52;
        v6 = v54;
        if (v39)
        {
          continue;
        }

        v28 = v47 - 1;
        if (__OFSUB__(v47, 1))
        {
          __break(1u);
        }

        if (v47 == 1)
        {

          v4 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_26;
      }

      break;
    }

    while (1)
    {
      v30 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v30 >= v29)
      {
        goto LABEL_50;
      }

      v3 = *(v6 + 8 * v30);
      ++v2;
      if (v3)
      {
        v2 = v30;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v43 = swift_slowAlloc();
  v4 = sub_274975A24(v43, v45, v55, v45, v4, v15, v59);

  MEMORY[0x277C61040](v43, -1, -1);
  v8 = v59[0];
  v53 = v60;
LABEL_51:
  v40 = v8;
LABEL_52:
  sub_274730F8C(v40);
  return v4;
}

uint64_t sub_274974BCC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v54 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v41 = 0;
    v4 = 0;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1;
    v8 = -1 << *(a1 + 32);
    v45 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v5;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;
    v13 = 1;
    v47 = a1 + 56;
    v48 = a1;
    if ((v9 & v5) != 0)
    {
LABEL_6:
      v14 = v4;
LABEL_11:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = *(*(a1 + 48) + (v16 | (v14 << 6)));
      sub_2749FDDF4();
      MEMORY[0x277C5FB60](v17);
      v18 = sub_2749FDE44();
      v19 = -1 << *(v3 + 32);
      v20 = ~v19;
      while (1)
      {
        v4 = (v18 & v20);
        v2 = (v18 & v20) >> 6;
        v7 = 1 << (v18 & v20);
        if ((v7 & *(v12 + 8 * v2)) == 0)
        {
          v4 = v14;
          v6 = v47;
          a1 = v48;
          v7 = -1;
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (*(v4 + *(v3 + 48)) == v17)
        {
          break;
        }

        v18 = v4 + 1;
      }

      v51 = v45;
      v52 = v14;
      v53 = v10;
      v50[0] = v48;
      v50[1] = v47;
      v13 = (63 - v19) >> 6;
      v6 = 8 * v13;

      if (v13 > 0x80)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v42 = v13;
        v43 = &v40;
        MEMORY[0x28223BE20](v21);
        v4 = (&v40 - v22);
        memcpy(&v40 - v22, (v3 + 56), v6);
        v23 = v4[v2] & ~v7;
        v24 = *(v3 + 16);
        v46 = v4;
        v4[v2] = v23;
        v25 = v24 - 1;
        v13 = 1;
        v2 = v47;
        v7 = v48;
LABEL_19:
        v44 = v25;
LABEL_20:
        while (v10)
        {
LABEL_25:
          v27 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          v6 = *(*(v7 + 48) + (v27 | (v14 << 6)));
          sub_2749FDDF4();
          v4 = v49;
          MEMORY[0x277C5FB60](v6);
          v28 = sub_2749FDE44();
          v29 = ~(-1 << *(v3 + 32));
          while (1)
          {
            v30 = v28 & v29;
            v31 = (v28 & v29) >> 6;
            v32 = 1 << (v28 & v29);
            if ((v32 & *(v12 + 8 * v31)) == 0)
            {
              break;
            }

            v28 = v30 + 1;
            if (*(*(v3 + 48) + v30) == v6)
            {
              v33 = v46[v31];
              v46[v31] = v33 & ~v32;
              if ((v33 & v32) == 0)
              {
                goto LABEL_20;
              }

              v25 = v44 - 1;
              if (__OFSUB__(v44, 1))
              {
                __break(1u);
              }

              if (v44 == 1)
              {

                v3 = MEMORY[0x277D84FA0];
                goto LABEL_33;
              }

              goto LABEL_19;
            }
          }
        }

        while (1)
        {
          v26 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v26 >= v11)
          {
            v3 = sub_274975BE0(v46, v42, v44, v3);
            goto LABEL_33;
          }

          v10 = *(v2 + 8 * v26);
          ++v14;
          if (v10)
          {
            v14 = v26;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v36 = swift_slowAlloc();
      v37 = v41;
      v38 = sub_274975AAC(v36, v13, (v3 + 56), v13, v3, v4, v50);
      if (v37)
      {

        result = MEMORY[0x277C61040](v36, -1, -1);
        __break(1u);
        return result;
      }

      v39 = v38;

      MEMORY[0x277C61040](v36, -1, -1);
      v7 = v50[0];
      v45 = v51;
      v3 = v39;
LABEL_33:
      v34 = v7;
    }

    else
    {
LABEL_7:
      v15 = v4;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_39;
        }

        if (v14 >= v11)
        {
          break;
        }

        v10 = *(v6 + 8 * v14);
        v15 = (v15 + 1);
        if (v10)
        {
          goto LABEL_11;
        }
      }
    }

    sub_274730F8C(v34);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v3;
}

void sub_274974FF4()
{
  OUTLINED_FUNCTION_48();
  v6 = v2;
  v55 = *MEMORY[0x277D85DE8];
  if (*(v2 + 16))
  {
    v44 = v5;
    v45 = v3;
    v46 = v4;
    v41 = 0;
    v7 = 0;
    v9 = v1 + 56;
    v8 = *(v1 + 56);
    v10 = -1;
    v11 = -1 << *(v1 + 32);
    v47 = ~v11;
    v48 = v1;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v8;
    v14 = (63 - v11) >> 6;
    v15 = v2 + 56;
    v16 = 1;
    v49 = v1 + 56;
    if ((v12 & v8) != 0)
    {
LABEL_6:
      v17 = v7;
LABEL_11:
      OUTLINED_FUNCTION_202();
      v21 = *(*(v19 + 48) + v20);
      sub_2749FDDF4();
      MEMORY[0x277C5FB60](v21);
      v22 = sub_2749FDE44();
      v23 = -1 << *(v6 + 32);
      v24 = ~v23;
      while (1)
      {
        v7 = (v22 & v24);
        v0 = (v22 & v24) >> 6;
        v10 = 1 << (v22 & v24);
        if ((v10 & *(v15 + 8 * v0)) == 0)
        {
          v7 = v17;
          v9 = v49;
          v10 = -1;
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (v21 == *(v7 + *(v6 + 48)))
        {
          break;
        }

        v22 = v7 + 1;
      }

      v52 = v47;
      v53 = v17;
      v54 = v13;
      v51[0] = v48;
      v51[1] = v49;
      v16 = (63 - v23) >> 6;
      v9 = 8 * v16;

      if (v16 > 0x80)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v42 = v16;
        v43 = &v41;
        MEMORY[0x28223BE20](v25);
        v16 = &v41 - v26;
        memcpy(&v41 - v26, (v6 + 56), v9);
        v27 = *(v6 + 16);
        *(v16 + 8 * v0) &= ~v10;
        v28 = (v27 - 1);
        v9 = 1;
        v10 = v48;
        v0 = v49;
        while (1)
        {
          v44 = v28;
LABEL_20:
          if (!v13)
          {
            break;
          }

LABEL_25:
          OUTLINED_FUNCTION_202();
          v31 = *(*(v10 + 48) + v30);
          sub_2749FDDF4();
          v7 = &v50;
          MEMORY[0x277C5FB60](v31);
          v32 = sub_2749FDE44();
          v33 = ~(-1 << *(v6 + 32));
          do
          {
            v34 = v32 & v33;
            v35 = (v32 & v33) >> 6;
            v36 = 1 << (v32 & v33);
            if ((v36 & *(v15 + 8 * v35)) == 0)
            {
              v0 = v49;
              goto LABEL_20;
            }

            v32 = v34 + 1;
          }

          while (v31 != *(*(v6 + 48) + v34));
          v37 = *(v16 + 8 * v35);
          *(v16 + 8 * v35) = v37 & ~v36;
          v0 = v49;
          if ((v37 & v36) == 0)
          {
            goto LABEL_20;
          }

          v28 = v44 - 1;
          if (__OFSUB__(v44, 1))
          {
            __break(1u);
          }

          if (v44 == 1)
          {

            goto LABEL_35;
          }
        }

        while (1)
        {
          v29 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v29 >= v14)
          {
            sub_274975DE0(v16, v42, v44, v6, v45, v46);
            goto LABEL_35;
          }

          v13 = *(v0 + 8 * v29);
          ++v17;
          if (v13)
          {
            v17 = v29;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v39 = swift_slowAlloc();
      v40 = v41;
      (v44)(v39, v16, v6 + 56, v16, v6, v7, v51);
      if (v40)
      {

        OUTLINED_FUNCTION_31();
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_78();

      OUTLINED_FUNCTION_31();
      v47 = v52;
LABEL_35:
      v38 = OUTLINED_FUNCTION_29_1();
    }

    else
    {
LABEL_7:
      v18 = v7;
      while (1)
      {
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_41;
        }

        if (v17 >= v14)
        {
          break;
        }

        v13 = *(v9 + 8 * v17);
        v18 = (v18 + 1);
        if (v13)
        {
          goto LABEL_11;
        }
      }

      OUTLINED_FUNCTION_157_0();
    }

    sub_274730F8C(v38);
  }

  else
  {
  }

  OUTLINED_FUNCTION_46();
}

void sub_274975400(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v25 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_2749FD874())
      {
        goto LABEL_25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
      swift_dynamicCast();
      v13 = v28;
      if (!v28)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_274975F58();
      return;
    }

LABEL_15:
    v16 = sub_2749FD5F4();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_2749FD604();

      v16 = v18 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = *(a1 + 8 * v19);
    *(a1 + 8 * v19) = v23 & ~v20;
    v24 = (v23 & v20) == 0;
    v5 = a5;
    if (v24)
    {
      goto LABEL_3;
    }

    v8 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_27;
    }

    if (v25 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

unint64_t sub_27497564C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
LABEL_2:
  while (1)
  {
    v11 = a5[3];
    v12 = a5[4];
    if (!v12)
    {
      break;
    }

    v13 = a5[3];
LABEL_7:
    v14 = *(*(*a5 + 48) + (__clz(__rbit64(v12)) | (v13 << 6)));
    a5[3] = v13;
    a5[4] = (v12 - 1) & v12;
    sub_2749FDDF4();
    MEMORY[0x277C5FB60](v14);
    result = sub_2749FDE44();
    v15 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = 1 << (result & v15);
      if ((v18 & *(v10 + 8 * v17)) == 0)
      {
        break;
      }

      result = v16 + 1;
      if (*(*(a3 + 48) + v16) == v14)
      {
        v19 = v7[v17];
        v7[v17] = v19 & ~v18;
        if ((v19 & v18) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v9--, 1))
        {
          goto LABEL_16;
        }

        if (v9)
        {
          goto LABEL_2;
        }

        return MEMORY[0x277D84FA0];
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v11;
      a5[4] = 0;

      return sub_274975BE0(v7, a2, v9, a3);
    }

    v12 = *(a5[1] + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2749757E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v9 = result;
  v10 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v12 = a3 + 56;
  v13 = MEMORY[0x277D84FA0];
LABEL_2:
  v27 = v11;
LABEL_3:
  while (1)
  {
    v14 = a5[3];
    v15 = a5[4];
    if (!v15)
    {
      break;
    }

    v16 = a5[3];
LABEL_8:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v15)) | (v16 << 6)));
    a5[3] = v16;
    a5[4] = (v15 - 1) & v15;
    sub_2749FDDF4();
    MEMORY[0x277C5FB60](v17);
    result = sub_2749FDE44();
    v18 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v19 = result & v18;
      v20 = (result & v18) >> 6;
      v21 = 1 << (result & v18);
      if ((v21 & *(v12 + 8 * v20)) == 0)
      {
        break;
      }

      result = v19 + 1;
      if (v17 == *(*(a3 + 48) + v19))
      {
        v22 = *(v9 + 8 * v20);
        *(v9 + 8 * v20) = v22 & ~v21;
        if ((v22 & v21) == 0)
        {
          goto LABEL_3;
        }

        v11 = v27 - 1;
        if (__OFSUB__(v27, 1))
        {
          goto LABEL_18;
        }

        if (v27 != 1)
        {
          goto LABEL_2;
        }

        return v13;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    if (v16 >= ((a5[2] + 64) >> 6))
    {
      break;
    }

    v15 = *(a5[1] + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  a5[3] = v14;
  a5[4] = 0;

  sub_274975DE0(v9, a2, v27, a3, a6, a7);
  return v23;
}

uint64_t sub_27497598C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_2749757E0(a1, a2, a5, a6, a7, &qword_280967A20, &unk_274A0FC20);

  return v12;
}

uint64_t sub_274975A24(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_274975400(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

unint64_t sub_274975AAC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_27497564C(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_274975B34(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_2749757E0(a1, a2, a5, a6, a7, &qword_280967900, &qword_274A29840);

  return v12;
}

uint64_t sub_274975BE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967978, &unk_274A0FB90);
  result = sub_2749FD914();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_2749FDDF4();
    MEMORY[0x277C5FB60](v16);
    result = sub_2749FDE44();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_274975DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      OUTLINED_FUNCTION_292(a1, a2, a3, a4, a5, a6);
      OUTLINED_FUNCTION_96();
      v9 = sub_2749FD914();
      if (v6 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v7;
      }

      v11 = 0;
      while (v10)
      {
        OUTLINED_FUNCTION_277();
LABEL_16:
        v14 = *(*(a4 + 48) + (v12 | (v11 << 6)));
        sub_2749FDDF4();
        MEMORY[0x277C5FB60](v14);
        sub_2749FDE44();
        OUTLINED_FUNCTION_114_2();
        if (v15)
        {
          OUTLINED_FUNCTION_30_1();
          while (++v17 != v19 || (v18 & 1) == 0)
          {
            v20 = v17 == v19;
            if (v17 == v19)
            {
              v17 = 0;
            }

            v18 |= v20;
            if (*(v9 + 56 + 8 * v17) != -1)
            {
              OUTLINED_FUNCTION_29_0();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_31_1();
LABEL_25:
        OUTLINED_FUNCTION_125_2(v16);
        *(v22 + v21) = v14;
        OUTLINED_FUNCTION_248();
        if (v23)
        {
          goto LABEL_29;
        }
      }

      v13 = v11;
      while (1)
      {
        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v11 >= v6)
        {
          goto LABEL_5;
        }

        ++v13;
        if (v7[v11])
        {
          OUTLINED_FUNCTION_276();
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_274975F58()
{
  OUTLINED_FUNCTION_48();
  v8 = v5;
  if (!v4)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (*(v5 + 16) == v4)
  {
LABEL_6:
    OUTLINED_FUNCTION_46();
    return;
  }

  OUTLINED_FUNCTION_292(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_96();
  v9 = sub_2749FD914();
  if (v0 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v1;
  }

  v11 = 0;
  v12 = v9 + 56;
  while (v10)
  {
    OUTLINED_FUNCTION_277();
LABEL_16:
    v15 = *(*(v8 + 48) + 8 * (v13 | (v11 << 6)));
    sub_2749FD5F4();
    OUTLINED_FUNCTION_114_2();
    if (v16)
    {
      OUTLINED_FUNCTION_30_1();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*(v12 + 8 * v18) != -1)
        {
          OUTLINED_FUNCTION_29_0();
          goto LABEL_25;
        }
      }

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_31_1();
LABEL_25:
    OUTLINED_FUNCTION_125_2(v17);
    *(v23 + 8 * v22) = v15;
    OUTLINED_FUNCTION_248();
    if (v24)
    {
      goto LABEL_29;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v0)
    {
      goto LABEL_5;
    }

    ++v14;
    if (v1[v11])
    {
      OUTLINED_FUNCTION_276();
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_274976098(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();
  [a3 setAccessibilityLabel_];
}

uint64_t sub_2749760F0(void *a1)
{
  v1 = [a1 text];
  if (v1)
  {
    v2 = v1;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_274976274(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_27(v4);
  OUTLINED_FUNCTION_51_6();
  v6 = *(v3 + 16);
  v8 = *(v3 + v7);
  v9 = *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(v6, v3 + v5, v8, v9);
}

uint64_t objectdestroy_31Tm_0()
{
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_289();
  v4 = OUTLINED_FUNCTION_170();
  v5(v4);

  OUTLINED_FUNCTION_50_0();

  return MEMORY[0x2821FE8E8](v6);
}

uint64_t sub_2749765C8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, __n128, __n128))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_27(v4);
  OUTLINED_FUNCTION_51_6();
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8.n128_u64[0] = *(v3 + v6);
  v9 = *(v3 + v7);
  v10.n128_u64[0] = *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v3 + 16);

  return a3(v11, v3 + v5, v9, v8, v10);
}

uint64_t objectdestroy_34Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_43();
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = OUTLINED_FUNCTION_170();
  v7(v6);

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_274976750(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_27(v6);
  OUTLINED_FUNCTION_51_6();
  v8 = *(v4 + 16);
  v10 = *(v4 + v9);

  return a4(a1, v8, v4 + v7, v10);
}

uint64_t objectdestroy_22Tm_0()
{
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_289();
  v5 = OUTLINED_FUNCTION_170();
  v6(v5);

  OUTLINED_FUNCTION_50_0();

  return MEMORY[0x2821FE8E8](v7);
}

uint64_t sub_2749768E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_59_0();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

uint64_t sub_274976940()
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(v0);
  return v0;
}

void OUTLINED_FUNCTION_49_9()
{
  v3 = *(v1 - 408);
  v4 = *(v1 - 400);

  sub_274772984(v3, v4, v0);
}

uint64_t OUTLINED_FUNCTION_86_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_87_3()
{
  *(v3 - 232) = *(*(v2 + 48) + (__clz(__rbit64(v0)) | (v1 << 6)));

  return sub_2749F95D4();
}

double OUTLINED_FUNCTION_94_2(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

double OUTLINED_FUNCTION_102_3(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_140_0(uint64_t a1)
{

  return sub_274772E24(a1, v1, v2);
}

CGFloat OUTLINED_FUNCTION_141_0(CGRect rect)
{

  return CGRectGetMaxY(rect);
}

uint64_t OUTLINED_FUNCTION_142_1()
{

  return sub_2749FCD64();
}

uint64_t OUTLINED_FUNCTION_143_1(uint64_t a1)
{

  return sub_2749FDA84();
}

uint64_t OUTLINED_FUNCTION_147_0()
{
  v2 = *(v0 - 536);

  return sub_27471F8A4(v2, 0);
}

id OUTLINED_FUNCTION_164()
{

  return [v0 (v2 + 3192)];
}

uint64_t OUTLINED_FUNCTION_175()
{
  v2 = *(v0 - 872);
  v3 = *(v0 - 864);
  v4 = *(v0 - 876);

  return sub_274772E24(v2, v3, v4);
}

void OUTLINED_FUNCTION_176()
{
  v2 = *(v0 - 880);
  v3 = *(v0 - 872);
  v4 = *(v0 - 860);

  sub_274772984(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_177()
{

  return sub_2749FCD64();
}

uint64_t OUTLINED_FUNCTION_178()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_215@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  *(v2 - 280) = a1;
  return *(v2 - 592);
}

__n128 OUTLINED_FUNCTION_216@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  *(v2 - 312) = a1;
  return *(v2 - 544);
}

uint64_t OUTLINED_FUNCTION_217@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 256) = a2;
  *(v3 - 488) = a1;
}

void *OUTLINED_FUNCTION_218@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return _Block_copy((v1 - 280));
}

void OUTLINED_FUNCTION_222(uint64_t a1@<X8>)
{
  *(v2 + *(a1 - 256)) = v6;
  *(v2 + v1) = v4;
  *(v2 + v3) = v5;
}

id OUTLINED_FUNCTION_286@<X0>(uint64_t a1@<X8>)
{

  return sub_274969CF0(0xD000000000000014, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_287()
{
  v2 = *(v0 - 968);
  v3 = *(v0 - 976);

  return sub_27471F8A4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_288()
{
}

uint64_t OUTLINED_FUNCTION_289()
{
}

uint64_t OUTLINED_FUNCTION_290()
{

  return sub_2749F9524();
}

uint64_t OUTLINED_FUNCTION_291()
{
}

uint64_t OUTLINED_FUNCTION_292(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_294()
{

  return sub_2749FA3D4();
}

id sub_27497759C(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform];
  v3 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v3;
  *(v2 + 2) = a1[2];
  [v1 setNeedsLayout];
  [v1 layoutIfNeeded];

  return sub_27497854C();
}

void sub_2749775FC(void *a1, char a2)
{
  v3 = v2;
  v5 = *&v3[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon];
  *&v3[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon] = a1;
  v6 = a1;

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  v9 = v6;
  [v8 glyph];
  v10 = WFSystemImageNameForGlyphCharacter();
  if (!v10)
  {

LABEL_6:
    v23 = v6;
    goto LABEL_9;
  }

  v11 = v10;
  v12 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v14 = v13;

  if (a2)
  {
    v15 = sub_27486D008(v12, v14);
    v17 = v16;

    v18 = [objc_opt_self() clearColor];
    v19 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v20 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v21 = v15;
    v22 = v17;
  }

  else
  {
    v24 = [objc_opt_self() clearColor];
    v19 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v25 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v21 = v12;
    v22 = v14;
  }

  v23 = sub_27491A250(v21, v22, v19);

LABEL_9:
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    sub_2749F9F84();
    v59 = v23;
    v28 = [v27 symbolName];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    v29 = [v3 traitCollection];
    [v29 displayScale];

    sub_2749F9F74();
    v31 = v30;

    v32 = [v27 symbolName];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    sub_2749F9F64();
    v34 = v33;
    v36 = v35;

    v37 = *&v3[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView];
    sub_27486D4F8();
    v38 = [v27 symbolName];
    v39 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v41 = v40;

    v42 = [objc_opt_self() systemFontOfSize:v31 weight:*MEMORY[0x277D74410]];
    v43 = [objc_opt_self() configurationWithFont_];

    v44 = sub_274977C3C(v39, v41, v43);
    [v37 setImage_];

    CGAffineTransformMakeTranslation(&aBlock, v34, v36);
    sub_27497759C(&aBlock);

LABEL_11:

    return;
  }

  v45 = objc_opt_self();
  v59 = v23;
  v46 = [v45 loadIcon:v59 size:0 style:{40.0, 40.0}];
  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();

  v48 = *&v3[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView];
  if (!v47)
  {
    if (v46)
    {
      v58 = [v46 imageWithRenderingMode_];
    }

    else
    {
      v58 = 0;
    }

    [v48 setImage_];

    goto LABEL_11;
  }

  [*&v3[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView] setImage_];
  v49 = [v47 bundleIdentifier];
  if (!v49)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v49 = sub_2749FCD64();
  }

  v50 = objc_opt_self();
  v51 = [objc_opt_self() currentDevice];
  [v51 screenScale];
  v53 = v52;

  OUTLINED_FUNCTION_86();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = v47;
  *&aBlock.tx = sub_274978A5C;
  *&aBlock.ty = v55;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_27486FE60;
  *&aBlock.d = &block_descriptor_46;
  v56 = _Block_copy(&aBlock);
  v57 = v59;

  [v50 applicationIconImageForBundleIdentifier:v49 length:v56 scale:40.0 completionHandler:v53];

  _Block_release(v56);
}

id sub_274977C3C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_2749FCD64();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() _systemImageNamed_withConfiguration_];

  return v5;
}

void sub_274977CBC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon);
    if (v7)
    {
      v8 = v7 == a3;
    }

    else
    {
      v8 = 0;
    }

    if (v8 && a1 != 0)
    {
      v10 = objc_allocWithZone(MEMORY[0x277D79FD0]);
      v11 = a1;
      v12 = [v10 initWithImage_];
      v13 = [objc_opt_self() loadIcon:v12 size:0 style:{40.0, 40.0}];
      [*&v6[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView] setImage_];

      v6 = v13;
    }
  }
}

id sub_274977DCC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView];
  if (v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected] == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 systemBlueColor];
    [v2 setTintColor_];

    v5 = [v3 systemBlueColor];
    v6 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277D75348]);
    v8 = sub_2747CA0C4(sub_274977F24, 0);
    [v2 setTintColor_];

    v6 = [objc_opt_self() clearColor];
  }

  [v1 setBackgroundColor_];

  return sub_27497854C();
}

id sub_274977F24(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == 2)
  {
    v3 = [v2 systemGray2Color];
    v4 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v5 = [v3 resolvedColorWithTraitCollection_];

    return v5;
  }

  else
  {
    v7 = [v2 systemGrayColor];

    return v7;
  }
}

char *sub_274978008(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v10 = &v4[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform];
  v11 = MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  *v10 = *MEMORY[0x277CBF2C0];
  v10[1] = v12;
  v10[2] = *(v11 + 32);
  *&v4[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon] = 0;
  v4[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected] = 0;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for WFIconPickerSymbolCell();
  v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView;
  v15 = *&v13[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView];
  v16 = v13;
  [v15 setContentMode_];
  v17 = *&v13[v14];
  v18 = v16;
  [v18 addSubview_];
  v19 = [v18 layer];
  [v19 setCornerRadius_];

  v20 = [v18 layer];
  [v20 setCornerCurve_];

  v21 = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  [v21 setMinimumPressDuration_];
  v22 = v21;
  [v22 addTarget:v18 action:sel_handleTap_];
  [v22 setDelegate_];

  [v18 addGestureRecognizer_];
  [v18 setIsAccessibilityElement_];

  return v18;
}

void sub_27497824C(void *a1)
{
  if ([a1 state] == 1)
  {
    OUTLINED_FUNCTION_86();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v4 = v1;
    v5 = sub_2747B68DC;
    v6 = 0.05;
  }

  else
  {
    if ([a1 state] != 3)
    {
      [v1 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [a1 locationInView_];
      v20.x = v15;
      v20.y = v16;
      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      if (CGRectContainsPoint(v21, v20))
      {
        return;
      }
    }

    OUTLINED_FUNCTION_86();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v17 = v1;
    v5 = sub_2747B68F4;
    v6 = 0.6;
  }

  v18 = sub_27480FE78(v5, v3, v6, 1.0);
  [v18 startAnimation];
}

id sub_27497845C(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WFIconPickerSymbolCell();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView];
  [v1 bounds];
  [v2 setFrame_];
  v3 = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform + 16];
  v5[0] = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform];
  v5[1] = v3;
  v5[2] = *&v1[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform + 32];
  return [v2 setTransform_];
}

id sub_27497854C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon];
  if (!v2)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    [v4 glyph];
    v6 = WFNameForGlyphCharacter();
    if (!v6)
    {
      sub_2749FCE14("Unknown Icon", 12);
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
      }

      v7 = sub_2749FCD64();
      v8 = sub_2749FCD64();

      v6 = OUTLINED_FUNCTION_56(v9, sel_localizedStringForKey_value_table_);
    }

    v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v12 = v11;

    sub_2749789F8(v10, v12, v1);
    goto LABEL_15;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
LABEL_14:
    [v1 setAccessibilityLabel_];
    goto LABEL_15;
  }

  v14 = v13;
  sub_2749F93D4();
  v15 = v2;
  sub_2749F93C4();
  v16 = [v14 bundleIdentifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  v17 = sub_2749F93B4();
  v19 = v18;

  if (!v19)
  {
    sub_2749FCE14("App Icon", 8);
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28159E3A8);
    }

    v20 = sub_2749FCD64();
    v21 = sub_2749FCD64();

    v23 = OUTLINED_FUNCTION_56(v22, sel_localizedStringForKey_value_table_);

    v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v19 = v24;
  }

  sub_2749789F8(v17, v19, v1);

LABEL_15:
  v25 = *MEMORY[0x277D76548];
  if (*(v1 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected))
  {
    v26 = *MEMORY[0x277D76598];
  }

  else
  {
    v26 = 0;
  }

  return [v1 setAccessibilityTraits_];
}

void sub_274978838()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = MEMORY[0x277CBF2C0];
  v3 = (v0 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_imageViewTransform);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  *v3 = *MEMORY[0x277CBF2C0];
  v3[1] = v4;
  v3[2] = *(v2 + 32);
  *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 0;
  sub_2749FDAE4();
  __break(1u);
}

void sub_274978914()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_icon);
}

id sub_274978954(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFIconPickerSymbolCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2749789F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setAccessibilityLabel_];
}

void _BTSessionEvent(uint64_t a1, int a2, int a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a1;
  if (!(a3 | a2))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v6 = 0;
    BTLocalDeviceGetDefault();
    BTSessionDetachWithQueue();
    [a4 finishWithDevices:v5];
  }
}

void sub_2749793C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL WFShouldRedrawIconForTraitCollectionChange(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 userInterfaceStyle];
  v6 = [v3 userInterfaceStyle];
  v7 = [v4 accessibilityContrast];

  v8 = [v3 accessibilityContrast];
  return v5 != v6 || v7 != v8;
}

Class initHUTriggerActionFlow()
{
  if (HomeUILibrary_sOnce != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce, &__block_literal_global_518);
  }

  result = objc_getClass("HUTriggerActionFlow");
  classHUTriggerActionFlow = result;
  getHUTriggerActionFlowClass = HUTriggerActionFlowFunction;
  return result;
}

void *__HomeUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUI.framework/HomeUI", 2);
  HomeUILibrary_sLib = result;
  return result;
}

Class initHUTriggerSummaryViewController()
{
  if (HomeUILibrary_sOnce != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce, &__block_literal_global_518);
  }

  result = objc_getClass("HUTriggerSummaryViewController");
  classHUTriggerSummaryViewController = result;
  getHUTriggerSummaryViewControllerClass = HUTriggerSummaryViewControllerFunction;
  return result;
}

Class initHUTriggerBuilderContext()
{
  if (HomeUILibrary_sOnce != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce, &__block_literal_global_518);
  }

  result = objc_getClass("HUTriggerBuilderContext");
  classHUTriggerBuilderContext = result;
  getHUTriggerBuilderContextClass = HUTriggerBuilderContextFunction;
  return result;
}

Class initHFTriggerBuilder()
{
  if (HomeLibrary_sOnce != -1)
  {
    dispatch_once(&HomeLibrary_sOnce, &__block_literal_global_513);
  }

  result = objc_getClass("HFTriggerBuilder");
  classHFTriggerBuilder = result;
  getHFTriggerBuilderClass = HFTriggerBuilderFunction;
  return result;
}

void *__HomeLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib = result;
  return result;
}

Class initHFTriggerItem()
{
  if (HomeLibrary_sOnce != -1)
  {
    dispatch_once(&HomeLibrary_sOnce, &__block_literal_global_513);
  }

  result = objc_getClass("HFTriggerItem");
  classHFTriggerItem = result;
  getHFTriggerItemClass = HFTriggerItemFunction;
  return result;
}

uint64_t __WFAutomationsSortForUI_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 trigger];
  v8 = [v6 trigger];
  v9 = *(a1 + 32);
  v10 = [v9 indexOfObject:objc_opt_class()];
  v11 = [v9 indexOfObject:objc_opt_class()];

  if (v10 == v11)
  {

    v12 = [v5 trigger];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v6 trigger];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = [v5 trigger];
        v8 = [v6 trigger];
        v15 = [v7 event];
        v16 = [v8 event];
        if (!(v15 | v16) || v15 == 1 && v16 == 1)
        {
          v17 = [v7 timeOffset];
          v18 = [v8 timeOffset];
          v19 = -1;
          if (v17 >= v18)
          {
            v19 = 1;
          }

          if (v17 == v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v19;
          }

          goto LABEL_23;
        }

        if (!v15 && v16)
        {
          goto LABEL_26;
        }

        v26 = v15 != 0;
        v28 = v15 == 1 && v16 != 1;
        if (v16)
        {
          v26 = v28;
        }

        if (v26)
        {
          v20 = 1;
          goto LABEL_23;
        }

        if (v16 == 1 && v15 != 1)
        {
LABEL_26:
          v20 = -1;
          goto LABEL_23;
        }

        v23 = [MEMORY[0x277CBEA80] currentCalendar];
        v29 = [v7 time];
        v24 = [v23 dateFromComponents:v29];

        v30 = [v8 time];
        v31 = [v23 dateFromComponents:v30];

        v20 = [v24 compare:v31];
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
    }

    v7 = [v5 trigger];
    v8 = [v7 localizedDescriptionWithConfigurationSummary];
    v23 = [v6 trigger];
    v24 = [v23 localizedDescriptionWithConfigurationSummary];
    v20 = [v8 localizedStandardCompare:v24];
    goto LABEL_22;
  }

  v21 = -1;
  if (v10 < v11)
  {
    v22 = -1;
  }

  else
  {
    v22 = 1;
  }

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = v22;
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 1;
  }

  else
  {
    v20 = v21;
  }

LABEL_23:

  return v20;
}

Class initHFTriggerIconFactory()
{
  if (HomeLibrary_sOnce_1754 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_1754, &__block_literal_global_235);
  }

  result = objc_getClass("HFTriggerIconFactory");
  classHFTriggerIconFactory = result;
  getHFTriggerIconFactoryClass = HFTriggerIconFactoryFunction;
  return result;
}

void *__HomeLibrary_block_invoke_1756()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_1758 = result;
  return result;
}

Class initHFTriggerUISummary()
{
  if (HomeLibrary_sOnce_1754 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_1754, &__block_literal_global_235);
  }

  result = objc_getClass("HFTriggerUISummary");
  classHFTriggerUISummary = result;
  getHFTriggerUISummaryClass = HFTriggerUISummaryFunction;
  return result;
}

void sub_274989AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27498C6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMTAlarmManagerClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTAlarmManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTAlarmManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTAlarmManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAlarmTriggerConfigurationViewController.m" lineNumber:25 description:{@"Unable to find class %s", "MTAlarmManager"}];

    __break(1u);
  }
}

void __getMTAlarmDataSourceClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTAlarmDataSource");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTAlarmDataSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTAlarmDataSourceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAlarmTriggerConfigurationViewController.m" lineNumber:26 description:{@"Unable to find class %s", "MTAlarmDataSource"}];

    __break(1u);
  }
}

void MobileTimerLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MobileTimerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279EE77F0;
    v5 = 0;
    MobileTimerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MobileTimerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFAlarmTriggerConfigurationViewController.m" lineNumber:24 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MobileTimerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileTimerLibraryCore_frameworkLibrary = result;
  return result;
}

Class initSUICProgressEventViewController()
{
  if (SiriUICoreLibrary_sOnce != -1)
  {
    dispatch_once(&SiriUICoreLibrary_sOnce, &__block_literal_global_3076);
  }

  result = objc_getClass("SUICProgressEventViewController");
  classSUICProgressEventViewController = result;
  getSUICProgressEventViewControllerClass = SUICProgressEventViewControllerFunction;
  return result;
}

void *__SiriUICoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SiriUICore.framework/SiriUICore", 2);
  SiriUICoreLibrary_sLib = result;
  return result;
}

void sub_274994BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initAPUIActionCardRequest()
{
  if (AppPredictionUILibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionUILibrary_sOnce, &__block_literal_global_305);
  }

  result = objc_getClass("APUIActionCardRequest");
  classAPUIActionCardRequest = result;
  getAPUIActionCardRequestClass = APUIActionCardRequestFunction;
  return result;
}

void *__AppPredictionUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppPredictionUI.framework/AppPredictionUI", 2);
  AppPredictionUILibrary_sLib = result;
  return result;
}

Class initAPUIActionCardViewConfig()
{
  if (AppPredictionUILibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionUILibrary_sOnce, &__block_literal_global_305);
  }

  result = objc_getClass("APUIActionCardViewConfig");
  classAPUIActionCardViewConfig = result;
  getAPUIActionCardViewConfigClass = APUIActionCardViewConfigFunction;
  return result;
}

void sub_274995984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCRKOverlayButton()
{
  if (CardKitLibrary_sOnce != -1)
  {
    dispatch_once(&CardKitLibrary_sOnce, &__block_literal_global_3549);
  }

  result = objc_getClass("CRKOverlayButton");
  classCRKOverlayButton = result;
  getCRKOverlayButtonClass = CRKOverlayButtonFunction;
  return result;
}

void *__CardKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CardKit.framework/CardKit", 2);
  CardKitLibrary_sLib = result;
  return result;
}

Class initCRKCardPresentationConfiguration()
{
  if (CardKitLibrary_sOnce != -1)
  {
    dispatch_once(&CardKitLibrary_sOnce, &__block_literal_global_3549);
  }

  result = objc_getClass("CRKCardPresentationConfiguration");
  classCRKCardPresentationConfiguration = result;
  getCRKCardPresentationConfigurationClass = CRKCardPresentationConfigurationFunction;
  return result;
}

Class initCRKCardPresentation()
{
  if (CardKitLibrary_sOnce != -1)
  {
    dispatch_once(&CardKitLibrary_sOnce, &__block_literal_global_3549);
  }

  result = objc_getClass("CRKCardPresentation");
  classCRKCardPresentation = result;
  getCRKCardPresentationClass = CRKCardPresentationFunction;
  return result;
}

uint64_t (*initAPUIRegisterCardKitProvidersIfNeeded())(void)
{
  if (AppPredictionUILibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionUILibrary_sOnce, &__block_literal_global_305);
  }

  result = dlsym(AppPredictionUILibrary_sLib, "APUIRegisterCardKitProvidersIfNeeded");
  softLinkAPUIRegisterCardKitProvidersIfNeeded = result;
  if (result)
  {

    return (result)();
  }

  return result;
}

uint64_t (*initAPUIRegisterCardServicesIfNeeded())(void)
{
  if (AppPredictionUILibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionUILibrary_sOnce, &__block_literal_global_305);
  }

  result = dlsym(AppPredictionUILibrary_sLib, "APUIRegisterCardServicesIfNeeded");
  softLinkAPUIRegisterCardServicesIfNeeded = result;
  if (result)
  {

    return result();
  }

  return result;
}

id initCRKCardViewControllerDelegate()
{
  if (CardKitLibrary_sOnce != -1)
  {
    dispatch_once(&CardKitLibrary_sOnce, &__block_literal_global_3549);
  }

  v0 = objc_getProtocol("CRKCardViewControllerDelegate");
  v1 = protocolCRKCardViewControllerDelegate;
  protocolCRKCardViewControllerDelegate = v0;

  getCRKCardViewControllerDelegateProtocol = CRKCardViewControllerDelegateFunction;
  v2 = protocolCRKCardViewControllerDelegate;

  return v2;
}

void sub_274998B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initHUTriggerIconView()
{
  if (HomeUILibrary_sOnce_4353 != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce_4353, &__block_literal_global_4354);
  }

  result = objc_getClass("HUTriggerIconView");
  classHUTriggerIconView = result;
  getHUTriggerIconViewClass = HUTriggerIconViewFunction;
  return result;
}

void *__HomeUILibrary_block_invoke_4358()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUI.framework/HomeUI", 2);
  HomeUILibrary_sLib_4360 = result;
  return result;
}

void WFPresentWorkflowSettingsViewController(void *a1, void *a2, void *a3, void *a4)
{
  v11 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [[WFWorkflowSettingsViewController alloc] initWithWorkflow:v9 database:v8 hideNavigationBar:0];

  if (!v11)
  {
    v11 = objc_opt_new();
    objc_setAssociatedObject(v10, &WFWorkflowSettingsViewControllerDelegateKey, v11, 1);
  }

  [(WFWorkflowSettingsViewController *)v10 setDelegate:v11];
  [(WFWorkflowSettingsViewController *)v10 setModalPresentationStyle:2];
  [v7 presentViewController:v10 animated:1 completion:0];
}

NSString *UIContentSizeCategoryClip(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = v5;
    v9 = UIContentSizeCategoryCompareToCategory(v8, v7);
    v10 = v7;
    if (v9 == NSOrderedDescending || (v11 = UIContentSizeCategoryCompareToCategory(v8, v6), v10 = v6, v11 == NSOrderedAscending))
    {
      v12 = v10;

      v8 = v12;
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

void *UIContentSizeCategoryOneSmallerThanSizeCategory(void *a1)
{
  v1 = a1;
  v2 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D767E8]);
  v3 = *MEMORY[0x277D767F0];
  if (v2)
  {
    v4 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D767F0]);
    v3 = *MEMORY[0x277D767F8];
    if (v4)
    {
      v5 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D767F8]);
      v3 = *MEMORY[0x277D76800];
      if (v5)
      {
        v6 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76800]);
        v3 = *MEMORY[0x277D76808];
        if (v6)
        {
          v7 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76808]);
          v3 = *MEMORY[0x277D76818];
          if (v7)
          {
            v8 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76818]);
            v3 = *MEMORY[0x277D76820];
            if (v8)
            {
              v9 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76820]);
              v3 = *MEMORY[0x277D76828];
              if (v9)
              {
                v10 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76828]);
                v3 = *MEMORY[0x277D76838];
                if (v10)
                {
                  v11 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76838]);
                  v3 = *MEMORY[0x277D76840];
                  if (v11)
                  {
                    v12 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76840]);
                    v3 = *MEMORY[0x277D76858];
                    if (v12)
                    {
                      v13 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76858]);
                      v3 = *MEMORY[0x277D76830];
                      if (v13)
                      {
                        if (UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x277D76830]))
                        {
                          v3 = *MEMORY[0x277D76860];
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

  v14 = v3;

  return v3;
}

Class initHFTriggerIconFactory_4676()
{
  if (HomeLibrary_sOnce_4677 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_4677, &__block_literal_global_253);
  }

  result = objc_getClass("HFTriggerIconFactory");
  classHFTriggerIconFactory_4678 = result;
  getHFTriggerIconFactoryClass_4674 = HFTriggerIconFactoryFunction_4680;
  return result;
}

void *__HomeLibrary_block_invoke_4682()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_4683 = result;
  return result;
}

Class initHFTriggerUISummary_4685()
{
  if (HomeLibrary_sOnce_4677 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_4677, &__block_literal_global_253);
  }

  result = objc_getClass("HFTriggerUISummary");
  classHFTriggerUISummary_4687 = result;
  getHFTriggerUISummaryClass_4673 = HFTriggerUISummaryFunction_4689;
  return result;
}

void sub_27499ED00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getDetailDateMaskToStringSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MobileTimerLibraryCore_frameworkLibrary_5106)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MobileTimerLibraryCore_block_invoke_5107;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279EE79F8;
    v7 = 0;
    MobileTimerLibraryCore_frameworkLibrary_5106 = _sl_dlopen();
  }

  v2 = MobileTimerLibraryCore_frameworkLibrary_5106;
  if (!MobileTimerLibraryCore_frameworkLibrary_5106)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void * _Nonnull MobileTimerLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFAlarmTableViewCell.m" lineNumber:22 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "DetailDateMaskToString");
  *(*(a1[4] + 8) + 24) = result;
  getDetailDateMaskToStringSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __MobileTimerLibraryCore_block_invoke_5107(uint64_t a1)
{
  result = _sl_dlopen();
  MobileTimerLibraryCore_frameworkLibrary_5106 = result;
  return result;
}

void sub_27499F130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTUIAlarmViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MobileTimerUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MobileTimerUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279EE79E0;
    v8 = 0;
    MobileTimerUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileTimerUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void * _Nonnull MobileTimerUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFAlarmTableViewCell.m" lineNumber:25 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MTUIAlarmView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class  _Nonnull getMTUIAlarmViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFAlarmTableViewCell.m" lineNumber:26 description:{@"Unable to find class %s", "MTUIAlarmView"}];

LABEL_10:
    __break(1u);
  }

  getMTUIAlarmViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileTimerUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileTimerUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2749A0C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749A7820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFMessageTriggerConfigurationSenderStringsFromContact(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (WFCNContactIsAuthorizedToAccessContact())
  {
    v2 = [v1 contact];
    v3 = [v2 identifier];

    if (v3)
    {
      v4 = [v1 contact];
      v5 = [v4 identifier];
      v11[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
LABEL_8:

      goto LABEL_9;
    }
  }

  v4 = [v1 contact];
  v6 = objc_opt_new();
  if ([v4 isKeyAvailable:*MEMORY[0x277CBD098]])
  {
    v7 = [v4 phoneNumbers];
    v8 = [v7 if_map:&__block_literal_global_8426];
    [v6 addObjectsFromArray:v8];
  }

  if ([v4 isKeyAvailable:*MEMORY[0x277CBCFC0]])
  {
    v5 = [v4 emailAddresses];
    v9 = [v5 if_map:&__block_literal_global_172];
    [v6 addObjectsFromArray:v9];

    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

id __WFMessageTriggerConfigurationSenderStringsFromContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 unformattedInternationalStringValue];

  return v3;
}

void sub_2749B19F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&a36);
  objc_destroyWeak((v37 - 176));
  _Unwind_Resume(a1);
}

NSString *WFUIContentSizeCategoryClip(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = v5;
    v9 = UIContentSizeCategoryCompareToCategory(v8, v7);
    v10 = v7;
    if (v9 == NSOrderedDescending || (v11 = UIContentSizeCategoryCompareToCategory(v8, v6), v10 = v6, v11 == NSOrderedAscending))
    {
      v12 = v10;

      v8 = v12;
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

void sub_2749B8A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749B94C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

Class initPHAsset()
{
  if (PhotosLibrary_sOnce != -1)
  {
    dispatch_once(&PhotosLibrary_sOnce, &__block_literal_global_10139);
  }

  result = objc_getClass("PHAsset");
  classPHAsset = result;
  getPHAssetClass = PHAssetFunction;
  return result;
}

void *__PhotosLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Photos.framework/Photos", 2);
  PhotosLibrary_sLib = result;
  return result;
}

void sub_2749BB110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2749C0168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHKSPSleepLaunchURLRouteOnboardSleepCoachingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SleepLibrary();
  result = dlsym(v2, "HKSPSleepLaunchURLRouteOnboardSleepCoaching");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKSPSleepLaunchURLRouteOnboardSleepCoachingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SleepLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SleepLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SleepLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279EE7E58;
    v6 = 0;
    SleepLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SleepLibraryCore_frameworkLibrary;
  if (!SleepLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SleepLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFSleepTriggerConfigurationViewController.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getHKSPProvenanceSourceShortcutsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SleepLibrary();
  result = dlsym(v2, "HKSPProvenanceSourceShortcuts");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKSPProvenanceSourceShortcutsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHKSPSleepURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SleepLibrary();
  result = dlsym(v2, "HKSPSleepURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKSPSleepURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SleepLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SleepLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2749C29A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFFooterTextForHomeAction(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 workflow];
  if ([v4 environment] == 1 || (objc_msgSend(v3, "homesToWhichWeCanAddHomeAutomations"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = 0;
  }

  else
  {
    v9 = WFLocalizedString(@"This action will not work when this device is away from your home’s network because you don’t have a home hub set up.");
    v10 = WFLocalizedString(@"Set up home hub…");
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v9, v10];
    v12 = [v11 rangeOfString:v10];
    v14 = v13;
    v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v11];
    v15 = *MEMORY[0x277D740E8];
    v16 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D7D010]];
    [v7 addAttribute:v15 value:v16 range:{v12, v14}];
  }

  return v7;
}

void sub_2749C8C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFAddConstraintsToFillAnchorProvider(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a1;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [v12 topAnchor];
  v25 = [v11 topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:a3];
  v27[0] = v24;
  v13 = [v12 bottomAnchor];
  v14 = [v11 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-a5];
  v27[1] = v15;
  v16 = [v12 leadingAnchor];
  v17 = [v11 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:a4];
  v27[2] = v18;
  v19 = [v12 trailingAnchor];

  v20 = [v11 trailingAnchor];

  v21 = [v19 constraintEqualToAnchor:v20 constant:-a6];
  v27[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v22];

  return v22;
}

uint64_t WFRunSelectionForTrigger(void *a1)
{
  v1 = a1;
  if ([v1 isEnabled])
  {
    v2 = [v1 shouldPrompt];
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

void sub_2749CEA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_13822);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __WFCurrentBundle_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v4, 0, sizeof(v4));
  if (dladdr(WFCurrentBundle, &v4) && v4.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v4.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x277CCA8D8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_274719000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

id WFLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFCurrentBundle();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:0];

  return v6;
}

id WFLocalizedPluralString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v4 = [v2 stringWithFormat:@"%@ (Pluralization)", v3];

    v5 = WFCurrentBundle();
    v6 = [v5 localizedStringForKey:v4 value:v1 table:0];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

void sub_2749D03EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749D0B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a42);
  objc_destroyWeak(&a47);
  objc_destroyWeak(&a52);
  objc_destroyWeak(&a57);
  _Unwind_Resume(a1);
}

void sub_2749D1294(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 120));
  _Unwind_Resume(a1);
}

void sub_2749D305C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void HomeLibrary()
{
  v3 = 0;
  if (!HomeLibraryCore(&v3))
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HomeLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFAutomationTriggerDataSource.m" lineNumber:22 description:{@"%s", v3}];

    __break(1u);
    goto LABEL_5;
  }

  v0 = v3;
  if (v3)
  {
LABEL_5:
    free(v0);
  }
}

void __getHFTriggerItemClass_block_invoke(uint64_t a1)
{
  HomeLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HFTriggerItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHFTriggerItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHFTriggerItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAutomationTriggerDataSource.m" lineNumber:24 description:{@"Unable to find class %s", "HFTriggerItem"}];

    __break(1u);
  }
}

id getHFTriggerUISummaryClass_14509()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getHFTriggerUISummaryClass_softClass;
  v6 = getHFTriggerUISummaryClass_softClass;
  if (!getHFTriggerUISummaryClass_softClass)
  {
    HomeLibraryCore(0);
    v4[3] = objc_getClass("HFTriggerUISummary");
    getHFTriggerUISummaryClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_2749D3400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHFTriggerUISummaryClass_block_invoke(uint64_t a1)
{
  HomeLibraryCore(0);
  result = objc_getClass("HFTriggerUISummary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHFTriggerUISummaryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HomeLibraryCore(uint64_t a1)
{
  if (!HomeLibraryCore_frameworkLibrary)
  {
    HomeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return HomeLibraryCore_frameworkLibrary;
}

uint64_t __HomeLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HomeLibraryCore_frameworkLibrary = result;
  return result;
}

Class initHUTriggerIconView_15166()
{
  if (HomeUILibrary_sOnce_15167 != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce_15167, &__block_literal_global_15168);
  }

  result = objc_getClass("HUTriggerIconView");
  classHUTriggerIconView_15170 = result;
  getHUTriggerIconViewClass_15163 = HUTriggerIconViewFunction_15172;
  return result;
}

void *__HomeUILibrary_block_invoke_15175()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUI.framework/HomeUI", 2);
  HomeUILibrary_sLib_15177 = result;
  return result;
}

void sub_2749D8D68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2749D8F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL WFIsRunningOniPad()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

void sub_2749DBBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749DF420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749E3D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749E4E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFAutomationTableSectionHeaderViewWithTitle(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:2 options:0];
  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
  [v3 setFont:v5];

  [v3 setText:v1];
  [v2 addSubview:v3];
  v6 = [v3 wf_addConstraintsToFillSuperview:v2 insets:{18.0, 0.0, 12.0, 0.0}];

  return v2;
}

void sub_2749E5FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749E673C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749E6C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2749E73B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2749E7A84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_2749E8040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initHUTriggerTypePickerViewController()
{
  if (HomeUILibrary_sOnce_16530 != -1)
  {
    dispatch_once(&HomeUILibrary_sOnce_16530, &__block_literal_global_435);
  }

  result = objc_getClass("HUTriggerTypePickerViewController");
  classHUTriggerTypePickerViewController = result;
  getHUTriggerTypePickerViewControllerClass = HUTriggerTypePickerViewControllerFunction;
  return result;
}

void *__HomeUILibrary_block_invoke_16532()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUI.framework/HomeUI", 2);
  HomeUILibrary_sLib_16533 = result;
  return result;
}

Class initHFHomeKitDispatcher()
{
  if (HomeLibrary_sOnce_16534 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_16534, &__block_literal_global_431);
  }

  result = objc_getClass("HFHomeKitDispatcher");
  classHFHomeKitDispatcher = result;
  getHFHomeKitDispatcherClass = HFHomeKitDispatcherFunction;
  return result;
}

void *__HomeLibrary_block_invoke_16536()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_16537 = result;
  return result;
}

void sub_2749E961C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPKIconForMerchantCategorySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PassKitUILibrary();
  result = dlsym(v2, "PKIconForMerchantCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKIconForMerchantCategorySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *PassKitUILibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PassKitUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279EE88E8;
    v6 = 0;
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PassKitUILibraryCore_frameworkLibrary;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PassKitUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFWalletTransactionTriggerConfigurationViewController.m" lineNumber:36 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PassKitUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WFAutocapitalizationTypeFromLocalizedString(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = [a1 integerValue];
  v2 = 1;
  if (v1 == 1)
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t WFAutocapitalizationTypeFromLocale()
{
  v0 = WFLocalizedStringWithKey(@"Auto-capitalization for Shortcut Name", @"2");
  v1 = v0;
  if (v0)
  {
    v2 = [v0 integerValue];
    v3 = 1;
    if (v2 == 1)
    {
      v3 = 2;
    }

    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void sub_2749EE86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18078(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL WFUIScrollViewCanScroll(void *a1)
{
  v1 = a1;
  [v1 contentSize];
  UIRoundToViewScale();
  v3 = v2;
  [v1 bounds];
  UIRoundToViewScale();
  v5 = v4;

  return v3 > v5;
}

void sub_2749F2840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2749F2BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 112), 8);
  _Unwind_Resume(a1);
}

id WFScaledImage(void *a1)
{
  v1 = a1;
  v5.width = 29.0;
  v5.height = 29.0;
  UIGraphicsBeginImageContextWithOptions(v5, 0, 0.0);
  [v1 drawInRect:{0.0, 0.0, 29.0, 29.0}];

  v2 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v2;
}

void sub_2749F6504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKPaymentTransactionIconGeneratorClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary_19437)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __PassKitUILibraryCore_block_invoke_19438;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279EE8D18;
    v8 = 0;
    PassKitUILibraryCore_frameworkLibrary_19437 = _sl_dlopen();
  }

  if (!PassKitUILibraryCore_frameworkLibrary_19437)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PassKitUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFWalletMerchantSelectionTableViewController.m" lineNumber:22 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PKPaymentTransactionIconGenerator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPKPaymentTransactionIconGeneratorClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFWalletMerchantSelectionTableViewController.m" lineNumber:23 description:{@"Unable to find class %s", "PKPaymentTransactionIconGenerator"}];

LABEL_10:
    __break(1u);
  }

  getPKPaymentTransactionIconGeneratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitUILibraryCore_block_invoke_19438(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary_19437 = result;
  return result;
}

void sub_2749F77D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initTLKImage()
{
  if (TemplateKitLibrary_sOnce != -1)
  {
    dispatch_once(&TemplateKitLibrary_sOnce, &__block_literal_global_332);
  }

  result = objc_getClass("TLKImage");
  classTLKImage = result;
  getTLKImageClass = TLKImageFunction;
  return result;
}

void *__TemplateKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TemplateKit.framework/TemplateKit", 2);
  TemplateKitLibrary_sLib = result;
  return result;
}

Class initTLKRichText()
{
  if (TemplateKitLibrary_sOnce != -1)
  {
    dispatch_once(&TemplateKitLibrary_sOnce, &__block_literal_global_332);
  }

  result = objc_getClass("TLKRichText");
  classTLKRichText = result;
  getTLKRichTextClass = TLKRichTextFunction;
  return result;
}

Class initTLKFormattedText()
{
  if (TemplateKitLibrary_sOnce != -1)
  {
    dispatch_once(&TemplateKitLibrary_sOnce, &__block_literal_global_332);
  }

  result = objc_getClass("TLKFormattedText");
  classTLKFormattedText = result;
  getTLKFormattedTextClass = TLKFormattedTextFunction;
  return result;
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}