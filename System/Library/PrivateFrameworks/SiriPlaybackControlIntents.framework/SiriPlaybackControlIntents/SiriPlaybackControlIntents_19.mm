void sub_268A926D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = var50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MediaPlayerIntent(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v9 + 100)];
  v14 = *v12;
  v13 = v12[1];

  sub_2688E73C0(v11, type metadata accessor for MediaPlayerIntent);
  if (v13)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v15, v4);
    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = sub_268B18100(a2);
    if (v19)
    {
      v20 = v19;
      if (sub_2688EFD0C())
      {
        sub_2688EFD10();
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x26D625BD0](0, v20);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v22 = v21;

        v23 = sub_268B37BC4();

        [v22 setRouteId_];

        sub_2688C063C();
        v24 = sub_268B38054();
        [v22 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v31) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v31, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], vars8);
    v26 = v25;
    sub_2688C063C();
    v27 = sub_268B38054();
    [v26 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268B3BBA0;
    *(v28 + 32) = v26;
    v29 = off_287959FD0;
    v30 = type metadata accessor for SetRepeatStateIntent();
    v24 = v26;
    v29(v28, v30, &off_287959FB0);
LABEL_13:
  }
}

void sub_268A92AB0(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v8);
  sub_268A92DF0(&qword_2802A58E0, type metadata accessor for MediaPlayerIntent, &unk_268B3E718);
  v9 = sub_268B37854();
  sub_2688E73C0(v8, type metadata accessor for MediaPlayerIntent);
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v21);
      sub_26890C900(v21, v20);
      sub_268AC88F0(v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v22;
    v13 = off_28795BB78;
    v14 = type metadata accessor for SetRepeatStateIntent();
    v13(v12, v14, &off_28795BB68);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Home Automation entities are empty, skip adding to intent.", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_268A92DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_5_26()
{

  return sub_2688C058C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return sub_2688E73C0(v0, type metadata accessor for MediaIntent);
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return sub_2688E73C0(v0, type metadata accessor for MediaPlayerIntent);
}

uint64_t OUTLINED_FUNCTION_8_28()
{

  return sub_2688C058C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_23()
{
  result = v0;
  *(v1 - 152) = *(*(v1 - 104) + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_19(uint64_t a1, uint64_t a2)
{

  return sub_2688F1FA4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_17_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_268B37BB4();
}

uint64_t OUTLINED_FUNCTION_28_18()
{

  return type metadata accessor for Device();
}

id OUTLINED_FUNCTION_29_14(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return sub_268B37BC4();
}

id OUTLINED_FUNCTION_32_11(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);

  return v2;
}

id sub_268A93098()
{
  if (qword_2802A5018 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB18;
  qword_2802CDA88 = qword_2802CDB18;

  return v1;
}

void sub_268A930FC()
{
  OUTLINED_FUNCTION_26();
  v83 = v0;
  v84 = v1;
  v85 = v2;
  v74 = v3;
  v5 = v4;
  v80 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x28223BE20](v8);
  v79 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v73 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v77 = &v71 - v15;
  OUTLINED_FUNCTION_9();
  v78 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v76 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v75 = v19 - v18;
  OUTLINED_FUNCTION_9();
  v20 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20_0();
  v26 = (v24 - v25);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v71 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v71 - v31;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v33 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v34 = *(v22 + 16);
  v81 = v33;
  v82 = v34;
  (v34)(v32);
  v35 = sub_268B37A34();
  v36 = sub_268B37ED4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_14();
    v72 = v20;
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "SetRepeatStateHandleIntentStrategy.makeIntentHandledResponse()", v37, 2u);
    v20 = v72;
    OUTLINED_FUNCTION_12();
  }

  v38 = *(v22 + 8);
  v38(v32, v20);
  if (!sub_268B18100(v5))
  {
    goto LABEL_10;
  }

  if (!sub_2688EFD0C())
  {

LABEL_10:
    v82(v26, v81, v20);
    v47 = sub_268B37A34();
    v48 = sub_268B37EE4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_14();
      *v49 = 0;
      _os_log_impl(&dword_2688BB000, v47, v48, "Did not receive intent response for repeat request or devices not populated!", v49, 2u);
      OUTLINED_FUNCTION_12();
    }

    v38(v26, v20);
    OUTLINED_FUNCTION_59_0((v83 + 104), *(v83 + 128));
    sub_2688C2ECC();
    v50 = OUTLINED_FUNCTION_26_1();
    v52 = v50;
    goto LABEL_21;
  }

  if ([v5 repeatState] - 1 >= 3)
  {

    v82(v30, v81, v20);
    v53 = sub_268B37A34();
    v54 = sub_268B37EE4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_14();
      *v55 = 0;
      _os_log_impl(&dword_2688BB000, v53, v54, "Unexpected repeat mode during handle dialog", v55, 2u);
      OUTLINED_FUNCTION_12();
    }

    v38(v30, v20);
    sub_268B36E84();
    v56 = v83;
    v71 = v5;
    if (!v57)
    {
      OUTLINED_FUNCTION_8_29();
      sub_268947F08();
    }

    OUTLINED_FUNCTION_59_0((v56 + 104), *(v56 + 128));
    (*(v76 + 104))(v75, *MEMORY[0x277D5BC00], v78);
    v58 = sub_268B350F4();
    v59 = v77;
    __swift_storeEnumTagSinglePayload(v77, 1, 1, v58);
    v60 = *MEMORY[0x277D5B908];
    v61 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    v63 = v79;
    (*(v62 + 104))(v79, v60, v61);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v61);
    v64 = v73;
    sub_2688F1FA4(v59, v73, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v64, 1, v58) == 1)
    {
      sub_2688C058C(v64, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      OUTLINED_FUNCTION_15_23();
      (*(v65 + 8))(v64, v58);
    }

    v66 = v79;
    v67 = v75;
    sub_2688E388C();

    sub_2688C058C(v66, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v77, &unk_2802A57B0, &unk_268B3CE00);
    (*(v76 + 8))(v67, v78);
    OUTLINED_FUNCTION_59_0((v56 + 104), *(v56 + 128));
    sub_2688C2ECC();
    v50 = OUTLINED_FUNCTION_26_1();
    v52 = v50;
LABEL_21:
    OUTLINED_FUNCTION_7_30(v50, v51);

    v68 = OUTLINED_FUNCTION_26_1();
    v70 = OUTLINED_FUNCTION_13_16(v68, v69);
    v84(v70);
    sub_2688C058C(v89, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_22;
  }

  sub_268AADF00(v86);
  memcpy(v87, &v86[2], 0x51uLL);
  sub_2688C058C(v87, &qword_2802A5C88, qword_268B418C0);
  v86[2] = 0;
  memset(&v86[4], 0, 72);
  LOBYTE(v86[22]) = 1;
  sub_268AE4194();

  v39 = v83;
  memcpy(v89, v86, 0x5DuLL);
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = v5;
  v41 = v74;
  v42 = v80;
  v40[4] = v74;
  v40[5] = v42;
  v43 = v5;
  v44 = v85;
  v40[6] = v84;
  v40[7] = v44;

  v45 = v43;
  v46 = v41;

  sub_268AB4D6C(v89, sub_268A9843C, v40);

  memcpy(v88, v86, 0x5DuLL);
  sub_268A9844C(v88);
LABEL_22:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A93914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v52 = a6;
  v53 = a7;
  v50 = a3;
  v51 = a5;
  v45 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v43 - v15;
  v49 = sub_268B34E24();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v23);
  v25 = (&v43 - v24);
  sub_2688F1FA4(a1, &v43 - v24, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    v27 = sub_268B36E84();
    if (v28)
    {
      v45 = v27;
    }

    else
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
      v45 = v34;
    }

    v29 = a2;
    __swift_project_boxed_opaque_existential_1(v29 + 13, v29[16]);
    (*(v47 + 104))(v46, *MEMORY[0x277D5BC00], v49);
    v35 = sub_268B350F4();
    v36 = v48;
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v35);
    v37 = sub_268B34B94();
    v38 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v37);
    sub_2688F1FA4(v36, v14, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v14, 1, v35) == 1)
    {
      sub_2688C058C(v14, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v35 - 8) + 8))(v14, v35);
    }

    v39 = v46;
    sub_2688E388C();

    sub_2688C058C(v38, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v48, &unk_2802A57B0, &unk_268B3CE00);
    (*(v47 + 8))(v39, v49);
    __swift_project_boxed_opaque_existential_1(v29 + 13, v29[16]);
    sub_2688C2ECC();
    v40 = swift_allocError();
    *v41 = 77;
    sub_26894B450();

    v54[0] = v26;
    v55 = 1;
    v42 = v26;
    v52(v54);

    return sub_2688C058C(v54, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v25, v22);
    __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    v30 = sub_268B36FA4();
    sub_2688F1FA4(v22, v20, &unk_2802A56E0, &unk_268B3CDF0);
    v31 = *&v20[*(v17 + 48)];
    if (v30)
    {
      sub_268A93F54();
    }

    else
    {
      sub_268A94CC0();
    }

    sub_2688C058C(v22, &unk_2802A56E0, &unk_268B3CDF0);
    v32 = sub_268B350F4();
    return (*(*(v32 - 8) + 8))(v20, v32);
  }
}

void sub_268A93F54()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v76 = v2;
  v77 = v3;
  v75 = v4;
  v83 = v5;
  v7 = v6;
  v9 = v8;
  sub_268B35044();
  OUTLINED_FUNCTION_1();
  v79 = v11;
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v78 = v13 - v12;
  OUTLINED_FUNCTION_9();
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_1();
  v71 = v22;
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v25);
  v72 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v82 = &v63 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v63 - v29;
  v31 = sub_268B350F4();
  v73 = *(v31 - 8);
  v74 = v31;
  (*(v73 + 16))(v30, v9);
  v32 = *(v21 + 48);
  v81 = v30;
  *&v30[v32] = v7;
  v33 = qword_2802A4F30;
  v34 = v7;
  if (v33 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v35 = __swift_project_value_buffer(v14, qword_2802CDA10);
  (*(v16 + 16))(v20, v35, v14);
  v36 = sub_268B37A34();
  v37 = sub_268B37ED4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_14();
    *v38 = 0;
    _os_log_impl(&dword_2688BB000, v36, v37, "SetRepeatStateHandleIntentStrategy#intentHandledResponse...", v38, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v16 + 8))(v20, v14);
  OUTLINED_FUNCTION_59_0(v1 + 2, v1[5]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_268B3BBA0;
    *(v39 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  sub_26890C900((v1 + 33), v84);
  v68 = v86;
  v69 = v85;
  *(&v70 + 1) = __swift_project_boxed_opaque_existential_1(v84, v85);
  v40 = v82;
  sub_2688F1FA4(v81, v82, &unk_2802A56E0, &unk_268B3CDF0);
  *&v70 = *(v40 + *(v21 + 48));
  if (sub_268B18100(v83))
  {
    sub_268921344();
    v42 = v41;

    if (v42[2])
    {
      v43 = v42[5];
      v66 = v42[4];
      v67 = v43;
    }

    else
    {
      OUTLINED_FUNCTION_16_3();
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_3();
  }

  v44 = *__swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  if (v44)
  {
    v45 = OUTLINED_FUNCTION_28_1();
    HIDWORD(v65) = [v44 BOOLForKey_];
  }

  else
  {
    HIDWORD(v65) = 0;
  }

  if (v39 >> 62)
  {
    sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

    v64 = sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    v64 = v39;
  }

  v46 = v78;
  v47 = v83;
  sub_268A82B50(v83, v78);
  v48 = sub_2689F0948();
  v49 = v1;
  v50 = v81;
  v51 = v72;
  sub_2688F1FA4(v81, v72, &unk_2802A56E0, &unk_268B3CDF0);
  v52 = (*(v71 + 80) + 40) & ~*(v71 + 80);
  v53 = (v24 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v54[2] = v47;
  v54[3] = v49;
  v54[4] = v76;
  sub_2689186C8(v51, v54 + v52);
  v55 = (v54 + v53);
  v56 = v77;
  *v55 = v75;
  v55[1] = v56;
  v57 = v47;

  LOBYTE(v61) = v48 & 1;
  v58 = (v49 + 23);
  v59 = v82;
  v60 = v70;
  sub_268A83648(v82, v70, v66, v67, HIDWORD(v65), v64, v46, v58, v61, sub_268A98330, v54, v69, v68, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);

  (*(v79 + 8))(v46, v80);
  sub_2688C058C(v50, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v73 + 8))(v59, v74);
  __swift_destroy_boxed_opaque_existential_0Tm(v84);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A945FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v55 = a7;
  v56 = a6;
  v52 = a4;
  v61 = a2;
  v62 = a3;
  v54 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = v46 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  MEMORY[0x28223BE20](v47);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v46 - v16;
  v18 = sub_268B34E24();
  v58 = *(v18 - 8);
  v59 = v18;
  MEMORY[0x28223BE20](v18);
  v57 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v51 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v46 - v24;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v49 = *(v21 + 16);
  v50 = v26;
  v49(v25);
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v53 = v11;
    v30 = a5;
    v31 = v21;
    v32 = v29;
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "SetRepeatStateHandleIntentStrategy#intentHandledResponse output has been created.", v29, 2u);
    v33 = v32;
    v21 = v31;
    a5 = v30;
    v11 = v53;
    MEMORY[0x26D6266E0](v33, -1, -1);
  }

  v34 = *(v21 + 8);
  v53 = (v21 + 8);
  v48 = v34;
  v34(v25, v20);
  sub_268947F08();
  v46[1] = v35;
  __swift_project_boxed_opaque_existential_1((v62 + 104), *(v62 + 128));
  (*(v58 + 104))(v57, *MEMORY[0x277D5BC10], v59);
  sub_2688F1FA4(a5, v11, &unk_2802A56E0, &unk_268B3CDF0);

  v36 = sub_268B350F4();
  v37 = *(v36 - 8);
  (*(v37 + 32))(v17, v11, v36);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v36);
  v38 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v38);
  sub_2688F1FA4(v17, v15, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v15, 1, v36) == 1)
  {
    sub_2688C058C(v15, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v37 + 8))(v15, v36);
  }

  v39 = v57;
  v40 = v60;
  sub_2688E388C();

  sub_2688C058C(v40, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v17, &unk_2802A57B0, &unk_268B3CE00);
  (*(v58 + 8))(v39, v59);
  __swift_project_boxed_opaque_existential_1((v62 + 104), *(v62 + 128));
  sub_26894B450();
  v41 = v51;
  (v49)(v51, v50, v20);
  v42 = sub_268B37A34();
  v43 = sub_268B37ED4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "SetRepeatStateHandleIntentStrategy#intentHandledResponse returning output", v44, 2u);
    MEMORY[0x26D6266E0](v44, -1, -1);
  }

  v48(v41, v20);
  return v56(v54);
}

uint64_t sub_268A951D4(uint64_t a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, unint64_t a9, uint64_t a10)
{
  v100 = a8;
  v101 = a7;
  v105 = a6;
  v96 = a5;
  v107 = a3;
  v94 = a2;
  v102 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v86 - v12;
  v93 = sub_268B35044();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v97 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_268B37A54();
  v98 = *(v99 - 8);
  v14 = MEMORY[0x28223BE20](v99);
  v90 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v89 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v95 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v86 = &v86 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v86 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v87 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v88 = &v86 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v86 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v86 - v35;
  v37 = sub_268B34E24();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v86 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v86 - v43;
  v106 = a4;
  v104 = v42;
  v103 = v38;
  if (v94)
  {
    v45 = v105;
    sub_268B36E84();
    if (!v46)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v67 = v104;
    v68 = v41;
    __swift_project_boxed_opaque_existential_1(v106 + 13, v106[16]);
    (*(v103 + 104))(v41, *MEMORY[0x277D5BC00], v67);
    sub_2688F1FA4(v45, v24, &unk_2802A56E0, &unk_268B3CDF0);

    v69 = sub_268B350F4();
    v70 = *(v69 - 8);
    v71 = v88;
    (*(v70 + 32))(v88, v24, v69);
    __swift_storeEnumTagSinglePayload(v71, 0, 1, v69);
    v72 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v72);
    v73 = v87;
    sub_2688F1FA4(v71, v87, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v73, 1, v69) == 1)
    {
      sub_2688C058C(v73, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v70 + 8))(v73, v69);
    }

    v74 = v98;
    v75 = v90;
    v76 = v95;
    sub_2688E388C();

    sub_2688C058C(v76, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v71, &unk_2802A57B0, &unk_268B3CE00);
    (*(v103 + 8))(v68, v104);
    __swift_project_boxed_opaque_existential_1(v106 + 13, v106[16]);
    sub_2688C2ECC();
    v77 = swift_allocError();
    *v78 = 76;
    sub_26894B450();

    v79 = v102;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v80 = v99;
    v81 = __swift_project_value_buffer(v99, qword_2802CDA10);
    (*(v74 + 16))(v75, v81, v80);
    v82 = sub_268B37A34();
    v83 = sub_268B37ED4();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_2688BB000, v82, v83, "SetRepeatStateHandleIntentStrategy#legacyHandledResponse returning failure output.", v84, 2u);
      MEMORY[0x26D6266E0](v84, -1, -1);
    }

    (*(v74 + 8))(v75, v80);
    v110[0] = v79;
    v113 = 1;
    sub_268A98214(v79, 1);
  }

  else
  {
    sub_268947F08();
    v95 = v47;
    __swift_project_boxed_opaque_existential_1(a4 + 13, a4[16]);
    (*(v38 + 104))(v44, *MEMORY[0x277D5BC10], v37);
    sub_2688F1FA4(v105, v26, &unk_2802A56E0, &unk_268B3CDF0);

    v48 = sub_268B350F4();
    v49 = *(v48 - 8);
    (*(v49 + 32))(v36, v26, v48);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v48);
    v50 = sub_268B34B94();
    v51 = v86;
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v50);
    sub_2688F1FA4(v36, v34, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v34, 1, v48) == 1)
    {
      sub_2688C058C(v34, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v49 + 8))(v34, v48);
    }

    v52 = v98;
    v53 = v107;
    sub_2688E388C();

    sub_2688C058C(v51, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v36, &unk_2802A57B0, &unk_268B3CE00);
    (*(v103 + 8))(v44, v104);
    v54 = v106;
    __swift_project_boxed_opaque_existential_1(v106 + 13, v106[16]);
    sub_26894B450();
    __swift_project_boxed_opaque_existential_1(v54 + 13, v54[16]);
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v110[0] = v102;

    sub_268948494(v110);
    sub_2688C058C(v110, &byte_2802A6450, &byte_268B3BE10);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v55 = v99;
    v56 = __swift_project_value_buffer(v99, qword_2802CDA10);
    v57 = v89;
    (*(v52 + 16))(v89, v56, v55);
    v58 = sub_268B37A34();
    v59 = sub_268B37ED4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2688BB000, v58, v59, "SetRepeatStateHandleIntentStrategy#legacyHandledResponse returning output.", v60, 2u);
      MEMORY[0x26D6266E0](v60, -1, -1);
    }

    (*(v52 + 8))(v57, v55);
    sub_268A82B50(v53, v97);
    if (a9 >> 62)
    {
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);

      sub_268B38294();
    }

    else
    {

      sub_268B38454();
      sub_2688EA03C(0, &qword_2802A5938, 0x277D471B0);
    }

    v111 = sub_268B354F4();
    v112 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v110);
    v61 = 0;
    if (sub_2689F0948())
    {
      v61 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v62 = sub_268B38064();
      [v61 setMinimumAutoDismissalTimeInMs_];

      [v61 setPremptivelyResumeMedia_];
    }

    __swift_project_boxed_opaque_existential_1(v54 + 2, v54[5]);
    sub_268B34CA4();
    v63 = v91;
    v64 = v92;
    v65 = v97;
    v66 = v93;
    (*(v91 + 16))(v92, v97, v93);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v66);
    v109 = 0;
    memset(v108, 0, sizeof(v108));
    sub_268B34EF4();

    sub_2688C058C(v108, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v64, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v63 + 8))(v65, v66);
    v113 = 0;
  }

  v101(v110);
  return sub_2688C058C(v110, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268A96098()
{
  OUTLINED_FUNCTION_26();
  v116 = v0;
  v117 = v1;
  v114 = v2;
  v115 = v3;
  v5 = v4;
  v118 = v6;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v101 = v8;
  v102 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v100 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x28223BE20](v12);
  v112 = v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  v105 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v110 = v99 - v19;
  OUTLINED_FUNCTION_9();
  v111 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v109 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v108 = v23 - v22;
  OUTLINED_FUNCTION_9();
  v24 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_0();
  v30 = v28 - v29;
  v32 = MEMORY[0x28223BE20](v31);
  v103 = v99 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = v99 - v34;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v36 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v37 = *(v26 + 16);
  v106 = v36;
  v107 = v37;
  (v37)(v35);
  v38 = sub_268B37A34();
  v39 = sub_268B37ED4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_14();
    *v40 = 0;
    _os_log_impl(&dword_2688BB000, v38, v39, "SetRepeatStateHandleIntentStrategy.makeFailureHandlingIntentResponse()", v40, 2u);
    OUTLINED_FUNCTION_12();
  }

  v43 = *(v26 + 8);
  v42 = v26 + 8;
  v41 = v43;
  (v43)(v35, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v45 = OBJC_IVAR___SetRepeatStateIntentResponse_code;
  swift_beginAccess();
  v104 = v45;
  v121[0] = *&v5[v45];
  sub_268B38404();
  v113 = v5;
  v46 = sub_268B36E94();
  v48 = v47;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v46;
  *(inited + 56) = v48;
  v49 = sub_268B37B84();
  v50 = v118;
  v51 = [v118 repeatState];
  if ((v51 - 1) >= 3)
  {

    v67 = v103;
    v107(v103, v106, v24);
    v68 = sub_268B37A34();
    v69 = sub_268B37EE4();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_14();
      *v70 = 0;
      _os_log_impl(&dword_2688BB000, v68, v69, "Unexpected repeat mode found", v70, 2u);
      OUTLINED_FUNCTION_12();
    }

    (v41)(v67, v24);
    v71 = sub_268B36E84();
    if (!v72)
    {
      OUTLINED_FUNCTION_8_29();
      sub_268947F08();
    }

    v113 = v71;
    v82 = v116;
    OUTLINED_FUNCTION_59_0((v116 + 104), *(v116 + 128));
    (*(v109 + 104))(v108, *MEMORY[0x277D5BC00], v111);
    v83 = sub_268B350F4();
    v84 = v110;
    __swift_storeEnumTagSinglePayload(v110, 1, 1, v83);
    v85 = *MEMORY[0x277D5B908];
    v86 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    v88 = v112;
    (*(v87 + 104))(v112, v85, v86);
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v86);
    v89 = v84;
    v90 = v105;
    sub_2688F1FA4(v89, v105, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v90, 1, v83) == 1)
    {
      sub_2688C058C(v90, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      OUTLINED_FUNCTION_15_23();
      (*(v91 + 8))(v90, v83);
    }

    v92 = v108;
    v93 = v112;
    sub_2688E388C();

    sub_2688C058C(v93, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v110, &unk_2802A57B0, &unk_268B3CE00);
    (*(v109 + 8))(v92, v111);
    OUTLINED_FUNCTION_59_0((v82 + 104), *(v82 + 128));
    sub_2688C2ECC();
    v94 = OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_7_30(v94, v95);

    v96 = OUTLINED_FUNCTION_26_1();
    v98 = OUTLINED_FUNCTION_13_16(v96, v97);
    v115(v98);
    sub_2688C058C(v121, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v111 = v49;
    v112 = v41;
    sub_268AADF20(v120, (3u >> ((v51 - 1) & 7)) & 1);
    v52 = sub_268B18100(v50);
    if (v52)
    {
      v53 = v52;
      if (sub_2688EFD0C())
      {
        memcpy(v121, &v120[1], 0x51uLL);
        sub_2688C058C(v121, &qword_2802A5C88, qword_268B418C0);
        LODWORD(v120[1]) = 0;
        memset(&v120[2], 0, 72);
        LOBYTE(v120[11]) = 1;
        sub_268AE41BC(v53);
      }
    }

    sub_268B36754();
    v54 = sub_268B36734();
    v99[1] = v42;
    if (!v54)
    {
      v54 = sub_268B36744();
    }

    v55 = v54;
    v107(v30, v106, v24);

    v56 = v30;
    v57 = sub_268B37A34();
    v58 = sub_268B37ED4();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v121[0] = v60;
      *v59 = 136315138;
      v110 = v56;
      sub_268B36714();
      v61 = v100;
      sub_268B36B14();

      v62 = sub_268B36784();
      v64 = v63;
      (*(v101 + 8))(v61, v102);
      v65 = sub_26892CDB8(v62, v64, v121);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_2688BB000, v57, v58, "SetRepeatStateHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      v50 = v118;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v66 = v110;
    }

    else
    {

      v66 = v56;
    }

    (v112)(v66, v24);
    v73 = v114;
    v74 = swift_allocObject();
    v75 = v113;
    v74[2] = v55;
    v74[3] = v75;
    v76 = v115;
    v77 = v116;
    v74[4] = v50;
    v74[5] = v77;
    v74[6] = v73;
    v74[7] = v76;
    v74[8] = v117;
    if (*&v75[v104] == 100)
    {
      memcpy(v121, v120, 0x5EuLL);

      v78 = v75;
      v79 = v50;

      OUTLINED_FUNCTION_4_39();
      sub_268AC6434();
    }

    else
    {
      memcpy(v121, v120, 0x5EuLL);

      v80 = v75;
      v81 = v50;

      OUTLINED_FUNCTION_4_39();
      sub_268AB3F14();
    }

    memcpy(v119, v120, 0x5EuLL);
    sub_268A97F84(v119);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A96BB4(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v123 = a7;
  v121 = a5;
  v122 = a6;
  v124 = a4;
  v125 = a3;
  v118 = a2;
  v114 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v7 - 8);
  v113 = &v104 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v9 = MEMORY[0x28223BE20](v120);
  v112 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v108 = &v104 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v104 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v119 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v110 = &v104 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v109 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v117 = &v104 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v106 = &v104 - v25;
  MEMORY[0x28223BE20](v24);
  v107 = (&v104 - v26);
  v27 = sub_268B34E24();
  v126 = *(v27 - 8);
  v127 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v116 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v115 = &v104 - v30;
  v31 = sub_268B37A54();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v111 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v104 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v104 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v40);
  v42 = (&v104 - v41);
  sub_2688F1FA4(v114, &v104 - v41, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v42;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v31, qword_2802CDA10);
    v45 = v32;
    (*(v32 + 16))(v39, v44, v31);
    v46 = sub_268B37A34();
    v47 = sub_268B37EE4();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v124;
    v50 = v107;
    if (v48)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2688BB000, v46, v47, "SetRepeatStateHandleIntentStrategy.makeFailureHandlingIntentResponse failed to execute dialog", v51, 2u);
      v52 = v51;
      v45 = v32;
      MEMORY[0x26D6266E0](v52, -1, -1);
    }

    (*(v45 + 8))(v39, v31);
    v53 = sub_268B36E84();
    if (v54)
    {
      v55 = v54;
      v120 = v53;
    }

    else
    {
      sub_268947F08();
      v120 = v66;
      v55 = v67;
    }

    v68 = v110;
    __swift_project_boxed_opaque_existential_1(v49 + 13, v49[16]);
    (*(v126 + 104))(v115, *MEMORY[0x277D5BC00], v127);
    v69 = sub_268B350F4();
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v69);
    v70 = *MEMORY[0x277D5B8E0];
    v71 = sub_268B34B94();
    (*(*(v71 - 8) + 104))(v68, v70, v71);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v71);
    v72 = v106;
    sub_2688F1FA4(v50, v106, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v72, 1, v69) == 1)
    {
      sub_2688C058C(v72, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v119 = v55;
      sub_268B350B4();
      (*(*(v69 - 8) + 8))(v72, v69);
    }

    v73 = v115;
    sub_2688E388C();

    sub_2688C058C(v68, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v50, &unk_2802A57B0, &unk_268B3CE00);
    (*(v126 + 8))(v73, v127);
    __swift_project_boxed_opaque_existential_1(v49 + 13, v49[16]);
    sub_2688C2ECC();
    v74 = swift_allocError();
    *v75 = -97;
    sub_26894B450();

    v76 = swift_allocError();
    *v77 = -97;
    v128[0] = v76;
    v129 = 1;
    v122(v128);

    return sub_2688C058C(v128, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v42, v14);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v56 = __swift_project_value_buffer(v31, qword_2802CDA10);
    v57 = v32;
    v58 = v31;
    v59 = *(v57 + 16);
    v114 = v56;
    v110 = v59;
    (v59)(v37);
    v60 = sub_268B37A34();
    v61 = sub_268B37ED4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2688BB000, v60, v61, "SetRepeatStateHandleIntentStrategy.makeFailureHandlingIntentResponse executed failure dialog creating output", v62, 2u);
      MEMORY[0x26D6266E0](v62, -1, -1);
    }

    v63 = *(v57 + 8);
    v115 = (v57 + 8);
    v107 = v63;
    v63(v37, v58);
    v64 = v118;
    sub_268B36E84();
    v104 = v58;
    if (!v65)
    {
      v79 = OBJC_IVAR___SetRepeatStateIntentResponse_code;
      swift_beginAccess();
      v130 = *(v64 + v79);
      sub_268B38404();
      sub_268947F08();
    }

    __swift_project_boxed_opaque_existential_1(v124 + 13, v124[16]);
    (*(v126 + 104))(v116, *MEMORY[0x277D5BC00], v127);
    v80 = v108;
    sub_2688F1FA4(v14, v108, &unk_2802A56E0, &unk_268B3CDF0);

    v81 = sub_268B350F4();
    v82 = *(v81 - 8);
    v83 = v117;
    (*(v82 + 32))(v117, v80, v81);
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v81);
    v84 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v84);
    v85 = v109;
    sub_2688F1FA4(v83, v109, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, 1, v81);
    v105 = v14;
    v118 = v82;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688C058C(v85, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v82 + 8))(v85, v81);
    }

    v87 = v116;
    v88 = v119;
    sub_2688E388C();

    sub_2688C058C(v88, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v117, &unk_2802A57B0, &unk_268B3CE00);
    (*(v126 + 8))(v87, v127);
    v89 = v124;
    __swift_project_boxed_opaque_existential_1(v124 + 13, v124[16]);
    sub_2688C2ECC();
    v90 = swift_allocError();
    *v91 = 79;
    sub_26894B450();

    v92 = v111;
    v93 = v104;
    (v110)(v111, v114, v104);
    v94 = sub_268B37A34();
    v95 = sub_268B37ED4();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_2688BB000, v94, v95, "SetRepeatStateHandleIntentStrategy.makeFailureHandlingIntentResponse returning failure output", v96, 2u);
      MEMORY[0x26D6266E0](v96, -1, -1);
    }

    v107(v92, v93);
    v97 = v89[36];
    v98 = v89[37];
    __swift_project_boxed_opaque_existential_1(v89 + 33, v97);
    v99 = v105;
    v100 = v112;
    sub_2688F1FA4(v105, v112, &unk_2802A56E0, &unk_268B3CDF0);
    v101 = *(v100 + *(v120 + 48));
    v102 = v113;
    sub_268A82B50(v125, v113);
    v103 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v102, 0, 1, v103);
    (*(v98 + 40))(v100, v101, v102, v122, v123, v97, v98);

    sub_2688C058C(v102, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v99, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v118 + 8))(v100, v81);
  }
}

uint64_t sub_268A97A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A97AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A97B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A97C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A97C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268A97D24()
{
  if (qword_2802A4F88 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDA88;

  return v1;
}

uint64_t sub_268A97D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268A97DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268A97E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268A97E90(uint64_t a1)
{
  result = sub_268A97EB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A97EB8()
{
  result = qword_2802A7C90;
  if (!qword_2802A7C90)
  {
    type metadata accessor for SetRepeatStateHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7C90);
  }

  return result;
}

uint64_t sub_268A97F10()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_268A98000()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = (((((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = v1 + v4;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v7);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v3 | 7);
}

uint64_t sub_268A98138(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_268A951D4(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_268A98214(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_268A98220()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = v1 + v4;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v7);

  return MEMORY[0x2821FE8E8](v1, v6 + 16, v3 | 7);
}

uint64_t sub_268A98330(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268A945FC(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268A983E4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void OUTLINED_FUNCTION_7_30(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;

  sub_26894B450();
}

Swift::String_optional __swiftcall UsoTask_update_common_MediaItem.verb()()
{
  sub_268B36154();
  sub_268A98E1C(&qword_2802A7C98, &protocol conformance descriptor for UsoTask_update_common_MediaItem);
  v0 = *(sub_268B373B4() + 16);

  if (v0)
  {
    v1 = 0x705365766F6D6572;
  }

  else
  {
    v1 = 0x6B61657053646461;
  }

  if (v0)
  {
    v2 = 0xED000072656B6165;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void *UsoTask_update_common_MediaItem.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36224();
  result = v19;
  if (v19)
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v9, v4);

    v10 = sub_268B37A34();
    v11 = sub_268B37EE4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v2;
      v19 = v13;
      *v12 = 136315138;
      sub_268B36154();

      v14 = sub_268B37C24();
      v16 = sub_26892CDB8(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2688BB000, v10, v11, "Task: %s -- is an add to library task and not addSpeaker. This is not a controls task", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x26D6266E0](v13, -1, -1);
      MEMORY[0x26D6266E0](v12, -1, -1);
    }

    result = (*(v5 + 8))(v7, v4);
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  *a1 = v17;
  return result;
}

uint64_t sub_268A988DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A98930(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A98984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A989D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A98A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A98A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A98AD4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A98B28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A98B8C(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A98BE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A98C44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A98CA8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A98D0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A98D70(uint64_t a1)
{
  result = sub_268A98E1C(&qword_2802A7C98, &protocol conformance descriptor for UsoTask_update_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A98E1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B36154();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A98E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = (*(a2 + 8))();
  v5 = sub_26892E388([v3 unsupportedReason], v4);

  if (v5 == 3)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268A99158(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7CB0, &unk_268B4A3B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBD0;
  *(inited + 32) = 1;
  *(inited + 40) = 1;
  *(inited + 48) = 2;
  *(inited + 56) = 0;
  result = sub_268B37B84();
  *a2 = result;
  return result;
}

uint64_t sub_268A99540(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7CB0, &unk_268B4A3B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = a2;
  *(inited + 40) = 0;
  result = sub_268B37B84();
  *a3 = result;
  return result;
}

uint64_t sub_268A995E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

_BYTE *storeEnumTagSinglePayload for CommonUnsupportedReason(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268A99758);
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

unint64_t sub_268A99794()
{
  result = qword_2802A7CB8;
  if (!qword_2802A7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7CB8);
  }

  return result;
}

uint64_t sub_268A99804(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v69 = a8;
  v66 = a5;
  v67 = a7;
  v61 = a6;
  v62 = a2;
  v64 = a3;
  v65 = a4;
  v63 = a1;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v59 = v9;
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v21 = *(v13 + 16);
  v21(v19, v20, v11);
  v22 = sub_268B37A34();
  v23 = sub_268B37ED4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v17;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "WhatDidTheySayUnsupportedValueStrategy.makeUnsupportedValueOutput()", v25, 2u);
    v26 = v25;
    v17 = v24;
    MEMORY[0x26D6266E0](v26, -1, -1);
  }

  v27 = *(v13 + 8);
  v27(v19, v11);
  sub_268B36754();
  v28 = sub_268B36734();
  if (!v28)
  {
    v28 = sub_268B36744();
  }

  v29 = v28;
  v21(v17, v20, v11);

  v30 = sub_268B37A34();
  v31 = sub_268B37ED4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v57 = v17;
    v33 = v32;
    v34 = swift_slowAlloc();
    v56 = v27;
    v35 = v34;
    v70 = v34;
    *v33 = 136315138;
    sub_268B36714();
    v36 = v58;
    sub_268B36B14();

    v37 = sub_268B36784();
    v39 = v38;
    (*(v59 + 8))(v36, v60);
    v40 = sub_26892CDB8(v37, v39, &v70);

    *(v33 + 4) = v40;
    _os_log_impl(&dword_2688BB000, v30, v31, "WhatDidTheySayUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x26D6266E0](v35, -1, -1);
    MEMORY[0x26D6266E0](v33, -1, -1);

    v56(v57, v11);
  }

  else
  {

    v27(v17, v11);
  }

  v41 = swift_allocObject();
  v43 = v64;
  v42 = v65;
  v41[2] = v29;
  v41[3] = v43;
  v44 = v61;
  v45 = v62;
  v41[4] = v42;
  v41[5] = v45;
  v47 = v67;
  v46 = v68;
  v41[6] = v44;
  v41[7] = v46;
  v41[8] = v63;
  v41[9] = v47;
  v48 = v69;
  v41[10] = v69;
  swift_retain_n();
  v49 = v44;
  swift_retain_n();
  v50 = v49;

  v51 = v50;

  v52 = v45;

  sub_2689FB67C(v53, v52, v43, v42, v66, v51, v46, v47, v48, v51, v46, sub_268A9AA34);
}

uint64_t sub_268A99D88(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v102 = a8;
  v89 = a7;
  v97 = a6;
  v87 = a5;
  v98 = a4;
  v86 = a3;
  v84 = a2;
  v93 = a1;
  v101 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v80 - v10;
  v11 = sub_268B37A54();
  v99 = *(v11 - 8);
  v100 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v96 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v15 - 8);
  v95 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v88 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v85 = &v80 - v20;
  v21 = sub_268B34E24();
  v94 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = MEMORY[0x28223BE20](v24);
  v90 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v80 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v80 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v32);
  v34 = &v80 - v33;
  sub_268935590(v93, &v80 - v33, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v34, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v35 = v100;
    v36 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v37 = v99;
    (*(v99 + 16))(v96, v36, v35);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "WhatDidTheySayUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v40, 2u);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v37 + 8))(v96, v35);
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = -81;
    v103[0] = v41;
    v104 = 1;
    v102(v103);
    return sub_2688EF38C(v103, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v34, v31);
    v44 = v98;
    sub_2688E1C2C();
    v82 = v45;
    v83 = v46;
    v47 = __swift_project_boxed_opaque_existential_1(v97 + 13, v97[16]);
    v48 = *MEMORY[0x277D5BBE0];
    v49 = *(v94 + 104);
    v86 = v23;
    v87 = v21;
    v49(v23, v48, v21);
    sub_268935590(v31, v29, &unk_2802A56E0, &unk_268B3CDF0);
    v96 = v24;

    v50 = sub_268B350F4();
    v51 = *(v50 - 8);
    v52 = v85;
    (*(v51 + 32))(v85, v29, v50);
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v50);
    v53 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v53);
    v54 = *v47;
    v55 = v88;
    sub_268935590(v52, v88, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v50);
    v84 = v31;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v55, &unk_2802A57B0, &unk_268B3CE00);
      v57 = 0;
      v58 = 0;
    }

    else
    {
      v59 = v55;
      v57 = sub_268B350B4();
      v58 = v60;
      (*(v51 + 8))(v59, v50);
    }

    v81 = v51;
    v93 = v50;
    v79 = v54;
    v61 = v86;
    v62 = v95;
    sub_2688E3AD8(v89, v86, v44, v57, v58, v82, v83, v95, v79);

    sub_2688EF38C(v62, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v52, &unk_2802A57B0, &unk_268B3CE00);
    (*(v94 + 8))(v61, v87);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v63 = v100;
    v64 = __swift_project_value_buffer(v100, qword_2802CDA10);
    v65 = v99;
    v66 = v91;
    (*(v99 + 16))(v91, v64, v63);
    v67 = sub_268B37A34();
    v68 = sub_268B37ED4();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v97;
    if (v69)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2688BB000, v67, v68, "WhatDidTheySayUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v71, 2u);
      MEMORY[0x26D6266E0](v71, -1, -1);
    }

    (*(v65 + 8))(v66, v63);
    v72 = v70[21];
    v73 = v70[22];
    __swift_project_boxed_opaque_existential_1(v70 + 18, v72);
    v74 = v84;
    v75 = v90;
    sub_268935590(v84, v90, &unk_2802A56E0, &unk_268B3CDF0);
    v76 = *(v75 + *(v96 + 12));
    v77 = v92;
    sub_268A82B50(v98, v92);
    v78 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v78);
    (*(v73 + 40))(v75, v76, v77, v102, v101, v72, v73);

    sub_2688EF38C(v77, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v74, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v81 + 8))(v75, v93);
  }
}

uint64_t sub_268A9A74C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void *a4)
{
  sub_268935590(a1, v15, &unk_2802A57C0, &qword_268B3BE00);
  v7 = v16;
  sub_2688EF38C(v15, &unk_2802A57C0, &qword_268B3BE00);
  if (v7 != 1)
  {
    return a2(a1);
  }

  v8 = WhatDidTheySayDeviceUnsupportedReason.init(rawValue:)([a4 unsupportedReason]);
  if (v9)
  {
    goto LABEL_3;
  }

  if ((v8 - 2) >= 2)
  {
    if (v8 == 1)
    {
      sub_2688C2ECC();
      v10 = swift_allocError();
      v12 = -106;
      goto LABEL_4;
    }

LABEL_3:
    sub_2688C2ECC();
    v10 = swift_allocError();
    v12 = -105;
LABEL_4:
    *v11 = v12;
    v15[0] = v10;
    v16 = 1;
    a2(v15);
    return sub_2688EF38C(v15, &unk_2802A57C0, &qword_268B3BE00);
  }

  v14 = v8 == 3;
  sub_268B37B84();
  sub_268A367E4(v14);
}

uint64_t sub_268A9A8F4()
{
  v0 = sub_2689FD340();
  sub_26895F84C((v0 + 23));

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t type metadata accessor for WhatDidTheySayUnsupportedValueStrategy(uint64_t a1)
{
  result = qword_2802A7CC0;
  if (!qword_2802A7CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A9A9CC()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268A9AAA8(uint64_t a1)
{
  v2 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v45 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5D40, &qword_268B3FFE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v44 = type metadata accessor for SettingsIntent(0);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2();
  v43 = v10;
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v42 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v40 = *(v13 + 16);
  v41 = v19;
  v40(v18);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = v4;
    v23 = v2;
    v24 = v11;
    v25 = v13;
    v26 = a1;
    v27 = v22;
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "GetVolumeLevel.shouldHandle() called", v22, 2u);
    v28 = v27;
    a1 = v26;
    v13 = v25;
    v11 = v24;
    v2 = v23;
    v4 = v39;
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  v29 = *(v13 + 8);
  v29(v18, v11);
  v30 = v45;
  (*(v4 + 16))(v45, a1, v2);
  sub_26897BBA8(v30, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v44) == 1)
  {
    sub_26891E52C(v9);
    return 0;
  }

  else
  {
    v31 = v43;
    sub_26891E594(v9, v43);
    switch(*v31)
    {
      case 1:
      case 2:
      case 3:
        v32 = sub_268B38444();

        if (v32)
        {
          break;
        }

        v34 = v42;
        (v40)(v42, v41, v11);
        v35 = sub_268B37A34();
        v36 = sub_268B37EE4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_2688BB000, v35, v36, "Incorrect verb in intent for flow, ignoring input", v37, 2u);
          MEMORY[0x26D6266E0](v37, -1, -1);
        }

        v29(v34, v11);
        sub_26891E5F8(v31);
        return 0;
      case 4:
        break;
      default:

        break;
    }

    sub_26891E5F8(v31);
    return 1;
  }
}

Swift::String_optional __swiftcall UsoTask_shuffle_uso_NoEntity.verb()()
{
  v0 = 0x656C6666756873;
  v1 = 0xE700000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_shuffle_uso_NoEntity.referencedSetting()(uint64_t a1)
{
  result = sub_268B36304();
  if (result)
  {
    v2 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v2);
      }

      else
      {
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268A9B074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A9B0C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A9B11C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A9B170(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A9B1C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A9B218(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A9B26C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A9B2C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A9B324(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A9B378(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A9B3DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A9B440(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A9B4A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A9B508(uint64_t a1)
{
  result = sub_268A9B5B4(&qword_2802A7CD0, &protocol conformance descriptor for UsoTask_shuffle_uso_NoEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A9B5B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B35FA4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_268A9B5F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v53 = a2;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v46 = v10;
  v13 = __swift_project_value_buffer(v4, qword_2802CDA10);
  v14 = *(v5 + 16);
  v48 = v13;
  v49 = v14;
  (v14)(v12);
  v15 = sub_268B37A34();
  v16 = sub_268B37F04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "QuickStopNothingToStopFlow#execute generating dialog and sending a stop command to the local device just in case...", v17, 2u);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  v50 = *(v5 + 8);
  v51 = v5 + 8;
  v50(v12, v4);
  type metadata accessor for DeviceSelectingUtil();
  v18 = v3[22];
  v19 = sub_268901CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  inited = swift_initStackObject();
  v47 = xmmword_268B3BBA0;
  *(inited + 16) = xmmword_268B3BBA0;
  *(inited + 32) = v19;
  v21 = v19;
  sub_268A32010(inited, 0, v18);
  swift_setDeallocating();
  sub_268ACE718();
  __swift_project_boxed_opaque_existential_1(v3 + 23, v3[26]);
  v22 = swift_initStackObject();
  *(v22 + 16) = v47;
  *(v22 + 32) = v21;
  v23 = v21;
  sub_268921344();
  swift_setDeallocating();
  sub_268ACE718();
  sub_268B36E34();

  __swift_project_boxed_opaque_existential_1(v3 + 28, v3[31]);
  v24 = COERCE_DOUBLE(sub_2688F2F10());
  if ((v25 & 1) == 0)
  {
    v32 = v24;
    v33 = v24;
    v29 = v24 >= 30.0;
    v31 = v46;
    v49(v46, v48, v4);
    v27 = sub_268B37A34();
    v34 = sub_268B37F04();
    if (!os_log_type_enabled(v27, v34))
    {
      goto LABEL_12;
    }

    v30 = swift_slowAlloc();
    *v30 = 134218240;
    *(v30 + 4) = v32;
    *(v30 + 12) = 1024;
    *(v30 + 14) = v33 >= 30.0;
    _os_log_impl(&dword_2688BB000, v27, v34, "QuickStopNothingToStopFlow#execute nothingToStop has occurred %f seconds ago. isSilent = %{BOOL}d", v30, 0x12u);
    goto LABEL_10;
  }

  v26 = v45;
  v49(v45, v48, v4);
  v27 = sub_268B37A34();
  v28 = sub_268B37F04();
  v29 = 1;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = 1;
    _os_log_impl(&dword_2688BB000, v27, v28, "QuickStopNothingToStopFlow#execute This is the first nothingToStop. isSilent = %{BOOL}d", v30, 8u);
    v31 = v26;
LABEL_10:
    MEMORY[0x26D6266E0](v30, -1, -1);
    goto LABEL_12;
  }

  v31 = v26;
LABEL_12:

  v50(v31, v4);
  OUTLINED_FUNCTION_0_46();
  v35 = sub_268B34D24();
  OUTLINED_FUNCTION_0_46();
  v36 = sub_268B34C84();
  OUTLINED_FUNCTION_0_46();
  v37 = sub_268B34C74();
  v38 = swift_allocObject();
  *(v38 + 16) = v3;
  *(v38 + 24) = v29;
  v39 = v53;
  *(v38 + 32) = v52;
  *(v38 + 40) = v39;
  if (v29)
  {
    v40 = v3[15];
    v41 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v40);

    v42 = sub_268B37B84();
    (*(v41 + 8))(0xD00000000000001DLL, 0x8000000268B5C260, v42, 1, sub_268A9C650, v38, v40, v41);
  }

  else
  {
    if (v37)
    {
      v43 = 0x10000;
    }

    else
    {
      v43 = 0;
    }

    if (v36)
    {
      v44 = 256;
    }

    else
    {
      v44 = 0;
    }

    sub_268910850(v44 & 0xFFFFFFFE | v35 & 1 | v43, sub_268A9C650, v38);
  }

  __swift_project_boxed_opaque_existential_1(v3 + 28, v3[31]);
  sub_2688F30FC();
}

uint64_t sub_268A9BC0C(uint64_t a1, void *a2, int a3, void (*a4)(_BYTE *), uint64_t a5)
{
  v59 = a5;
  v60 = a4;
  v53 = a3;
  v55 = a2;
  v61 = sub_268B34F84();
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = sub_268B37A54();
  v7 = *(v56 - 8);
  v8 = MEMORY[0x28223BE20](v56);
  v54 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v52[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v52[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v18);
  v20 = &v52[-v19];
  sub_2688F1FA4(a1, &v52[-v19], &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v55;
    sub_2688C058C(v20, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v22 = v56;
    v23 = __swift_project_value_buffer(v56, qword_2802CDA10);
    (*(v7 + 16))(v11, v23, v22);
    v24 = sub_268B37A34();
    v25 = sub_268B37EE4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2688BB000, v24, v25, "QuickStopNothingToStopFlow#execute DialogEngine returned an error", v26, 2u);
      MEMORY[0x26D6266E0](v26, -1, -1);
    }

    (*(v7 + 8))(v11, v22);
    __swift_project_boxed_opaque_existential_1(v21 + 17, v21[20]);
    sub_2688C2ECC();
    v27 = swift_allocError();
    *v28 = 15;
    sub_26894B450();

    sub_268947F08();
    v30 = v29;
    v32 = v31;
    __swift_project_boxed_opaque_existential_1(v21 + 17, v21[20]);
    sub_268948620(0xD000000000000051, 0x8000000268B57400, 4, 59, 0, 0, 0, v30, v32);

    v33 = v57;
    sub_268B34F64();
    v60(v33);
    return (*(v58 + 8))(v33, v61);
  }

  else
  {
    sub_2689186C8(v20, v17);
    sub_2688F1FA4(v17, v15, &unk_2802A56E0, &unk_268B3CDF0);
    v35 = *&v15[*(v12 + 48)];
    v36 = v53;
    v37 = v55;
    sub_268A9C36C(v15, v35, v53 & 1);

    v38 = sub_268B350F4();
    (*(*(v38 - 8) + 8))(v15, v38);
    v39 = v37;
    if (sub_2688EFD0C())
    {
      __swift_project_boxed_opaque_existential_1(v37 + 2, v37[5]);
      sub_268B35114();
    }

    v40 = v56;
    v41 = v54;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v40, qword_2802CDA10);
    (*(v7 + 16))(v41, v42, v40);
    v43 = sub_268B37A34();
    v44 = sub_268B37F04();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "QuickStopNothingToStopFlow#execute dialog generated successfully", v45, 2u);
      MEMORY[0x26D6266E0](v45, -1, -1);
    }

    (*(v7 + 8))(v41, v40);
    __swift_project_boxed_opaque_existential_1(v39 + 17, v39[20]);
    sub_26894B450();
    if (v36)
    {
      v46 = 22;
    }

    else
    {
      v46 = 21;
    }

    sub_26894BC08(v46);
    sub_268947F08();
    v48 = v47;
    v50 = v49;

    __swift_project_boxed_opaque_existential_1(v39 + 17, v39[20]);
    sub_268948620(0xD000000000000051, 0x8000000268B57400, 2, 1, 0, 0, 0, v48, v50);

    v51 = v57;
    sub_268B34F64();
    v60(v51);
    (*(v58 + 8))(v51, v61);
    return sub_2688C058C(v17, &unk_2802A56E0, &unk_268B3CDF0);
  }
}

uint64_t sub_268A9C36C(uint64_t a1, void *a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v11 + 16))(v10, a1);
  *&v10[*(v8 + 56)] = a2;
  if (a3)
  {
    v12 = a2;
    v13 = sub_268AAC1F4((v3 + 56));
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
    v14 = a2;
    sub_268B34CA4();
    sub_268B34E14();
    swift_allocObject();
    sub_268B34E04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_268B3BBA0;
    *(v13 + 32) = sub_268B34DF4();
  }

  sub_2688C058C(v10, &unk_2802A56E0, &unk_268B3CDF0);
  return v13;
}

void *sub_268A9C50C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_2689198BC((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  return v0;
}

uint64_t sub_268A9C55C()
{
  sub_268A9C50C();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t sub_268A9C5D8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for QuickStopNothingToStopFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_268A9C610()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_268A9C688(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t OUTLINED_FUNCTION_0_46()
{
  v1 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
  return v1;
}

uint64_t ControlsFlowProviding.makeFlow(for:)()
{
  v1 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_139();
  v6(v5);
  v7 = sub_268B37A34();
  v8 = sub_268B37EE4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_14();
    *v9 = 0;
    _os_log_impl(&dword_2688BB000, v7, v8, "ControlsFlowProviding#makeFlow default implementation should not be used", v9, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v3 + 8))(v0, v1);
  return 0;
}

uint64_t ControlsFlowProviding.findFlowFor(parse:)()
{
  v1 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_139();
  v6(v5);
  v7 = sub_268B37A34();
  v8 = sub_268B37EE4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_14();
    *v9 = 0;
    _os_log_impl(&dword_2688BB000, v7, v8, "ControlsFlowProviding#findFlowFor default implementation should not be used", v9, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v3 + 8))(v0, v1);
  return sub_268B34AB4();
}

void sub_268A9CA20(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, char a7)
{
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v11, qword_2802CDA10);
  v15 = OUTLINED_FUNCTION_139();
  v16(v15);
  v17 = sub_268B37A34();
  v18 = sub_268B37EE4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_14();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, a6, v19, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v13 + 8))(v7, v11);
  sub_2688C2ECC();
  v20 = swift_allocError();
  *v21 = a7;
  a2(v20, 1);
}

void ControlsFlowProviding.makeResumeAppFlow(for:with:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v5, qword_2802CDA10);
  v9 = OUTLINED_FUNCTION_139();
  v10(v9);
  v11 = sub_268B37A34();
  v12 = sub_268B37EE4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_14();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "ControlsFlowProviding#makeResumeAppFlow default implementation should not be used", v13, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v7 + 8))(v3, v5);
  sub_2688C2ECC();
  v14 = swift_allocError();
  *v15 = -62;
  a3(v14, 1);
}

void sub_268A9CE64(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if ((sub_268983434(v7) & 1) != 0 && (v11 = sub_268A3239C(), v12))
  {
    v13 = v11;
    v14 = v12;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v5, qword_2802CDA10);
    (*(v6 + 16))(v9, v15, v5);

    v16 = sub_268B37A34();
    v17 = sub_268B37F04();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29[0] = a2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v29[1] = v2;
      v21 = v20;
      v30 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26892CDB8(v13, v14, &v30);
      _os_log_impl(&dword_2688BB000, v16, v17, "Local SideKick device, using endpointId: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x26D6266E0](v21, -1, -1);
      v22 = v19;
      a2 = v29[0];
      MEMORY[0x26D6266E0](v22, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v23 = [v10 context];
    if (v23 && (v24 = sub_268B0F784(v23), v25))
    {
      v13 = v24;
      v14 = v25;
    }

    else
    {
      v26 = [v10 routeId];
      if (v26)
      {
        v27 = v26;
        v13 = sub_268B37BF4();
        v14 = v28;
      }

      else
      {

        v13 = 0;
        v14 = 0;
      }
    }
  }

  *a2 = v13;
  a2[1] = v14;
}

unint64_t sub_268A9D17C(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  a2();
  if (!v5)
  {
    a3(a1);
    if (!v6)
    {
      return 6;
    }
  }

  return sub_2689ABD04();
}

void sub_268A9D328()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v45 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v41 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_35_0();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  if (!v4(v12))
  {
    goto LABEL_31;
  }

  v15 = OUTLINED_FUNCTION_9_25();

  if (!v15)
  {
    goto LABEL_31;
  }

  v42 = *(v15 + 16);
  if (!v42)
  {
LABEL_30:

LABEL_31:
    OUTLINED_FUNCTION_23();
    return;
  }

  v39 = v14;
  v16 = 0;
  OUTLINED_FUNCTION_1_50();
  v18 = v15 + v17;
  v43 = v6 + 16;
  v44 = v15;
  v40 = v6 + 8;
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v19 = OUTLINED_FUNCTION_13_20();
    v4(v19);
    sub_268B358C4();
    if (!v20)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_28_6();
    if (v21 == v23 + 1 && v22 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_25_17(v21);
    OUTLINED_FUNCTION_24_16();
    if (v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    ++v16;
    (*(v6 + 8))(v0, v45);
    v15 = v44;
    if (v42 == v16)
    {
      goto LABEL_30;
    }
  }

LABEL_16:
  v25 = v45;
  (*(v6 + 32))(v39, v0, v45);
  v26 = 0;
  v27 = v41;
  v40 = v40 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (v26 < *(v44 + 16))
  {
    (v4)(v27, v18, v25);
    sub_268B358C4();
    if (v28)
    {
      OUTLINED_FUNCTION_28_6();
      if (v30 == v31 && v29 == 0x8000000268B580B0)
      {

        v37 = OUTLINED_FUNCTION_10_25();
        v25 = v45;
        v2(v37, v45);
LABEL_29:
        v2(v39, v25);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_8_30();
      v33 = sub_268B38444();

      v34 = OUTLINED_FUNCTION_10_25();
      v25 = v45;
      v2(v34, v45);
      if (v33)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v35 = OUTLINED_FUNCTION_10_25();
      v2(v35, v25);
    }

    ++v26;
    v18 += v15;
    if (v42 == v26)
    {

      sub_268B358B4();
      v36 = OUTLINED_FUNCTION_20_19();
      (v2)(v36);
      goto LABEL_31;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_268A9D65C()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v44 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v40 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_35_0();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v4(&v45, v12);
  if (!v45)
  {
    goto LABEL_31;
  }

  v15 = OUTLINED_FUNCTION_9_25();

  if (!v15)
  {
    goto LABEL_31;
  }

  v41 = *(v15 + 16);
  if (!v41)
  {
LABEL_30:

LABEL_31:
    OUTLINED_FUNCTION_23();
    return;
  }

  v38 = v14;
  v16 = 0;
  OUTLINED_FUNCTION_1_50();
  v18 = v15 + v17;
  v42 = v6 + 16;
  v43 = v15;
  v39 = v6 + 8;
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v19 = OUTLINED_FUNCTION_13_20();
    (v4)(v19);
    sub_268B358C4();
    if (!v20)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_28_6();
    if (v21 == v23 + 1 && v22 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_25_17(v21);
    OUTLINED_FUNCTION_24_16();
    if (v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    ++v16;
    (*(v6 + 8))(v0, v44);
    v15 = v43;
    if (v41 == v16)
    {
      goto LABEL_30;
    }
  }

LABEL_16:
  v25 = v44;
  (*(v6 + 32))(v38, v0, v44);
  v26 = 0;
  v27 = v40;
  v39 = v39 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (v26 < *(v43 + 16))
  {
    (v4)(v27, v18, v25);
    sub_268B358C4();
    if (v28)
    {
      OUTLINED_FUNCTION_28_6();
      if (v30 == v31 && v29 == 0x8000000268B580B0)
      {

        v37 = OUTLINED_FUNCTION_10_25();
        v25 = v44;
        v2(v37, v44);
LABEL_29:
        v2(v38, v25);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_8_30();
      v33 = sub_268B38444();

      v34 = OUTLINED_FUNCTION_10_25();
      v25 = v44;
      v2(v34, v44);
      if (v33)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v35 = OUTLINED_FUNCTION_10_25();
      v2(v35, v25);
    }

    ++v26;
    v18 += v15;
    if (v41 == v26)
    {

      sub_268B358B4();
      v36 = OUTLINED_FUNCTION_20_19();
      (v2)(v36);
      goto LABEL_31;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_268A9D994()
{
  OUTLINED_FUNCTION_26();
  v5 = v4;
  v6 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_11_28();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v31 - v12;
  v14 = v5(v11);
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = OUTLINED_FUNCTION_9_25();

  if (!v15)
  {
    goto LABEL_15;
  }

  v35 = *(v15 + 16);
  if (!v35)
  {

LABEL_15:
    v28 = v5(v14);
LABEL_16:
    if (v28)
    {
      sub_268B35D94();
    }

LABEL_21:
    OUTLINED_FUNCTION_23();
    return;
  }

  v32 = v5;
  v33 = v13;
  v31[1] = v0;
  OUTLINED_FUNCTION_1_50();
  v34 = v15 + v16;
  while (*(v15 + 16))
  {
    v17 = OUTLINED_FUNCTION_22_18();
    v18(v17);
    sub_268B358C4();
    if (v19)
    {
      OUTLINED_FUNCTION_28_6();
      if (v21 == v22 && v20 == v2)
      {

LABEL_20:

        (*(v8 + 32))(v33, v1, v6);
        sub_268B358B4();
        v29 = OUTLINED_FUNCTION_12_24();
        v30(v29);
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_25_17(v24);
      OUTLINED_FUNCTION_24_16();
      if (v3)
      {
        goto LABEL_20;
      }
    }

    v25 = OUTLINED_FUNCTION_21_17();
    v26(v25);
    if (!v35)
    {

      v28 = v32(v27);
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_268A9DBC0()
{
  OUTLINED_FUNCTION_26();
  v5 = v4;
  v6 = sub_268B358D4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_11_28();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  v14 = v5(&v33, v11);
  if (!v33 || (v15 = OUTLINED_FUNCTION_9_25(), v14 = , !v15))
  {
LABEL_14:
    v5(&v33, v14);
    if (v33)
    {
      sub_268B35D94();
    }

LABEL_19:
    OUTLINED_FUNCTION_23();
    return;
  }

  v29[0] = v13;
  v29[1] = v0;
  v30 = v5;
  v32 = *(v15 + 16);
  if (!v32)
  {
LABEL_13:

    v5 = v30;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1_50();
  v31 = v15 + v16;
  while (*(v15 + 16))
  {
    v17 = OUTLINED_FUNCTION_22_18();
    v18(v17);
    sub_268B358C4();
    if (v19)
    {
      OUTLINED_FUNCTION_28_6();
      if (v21 == v22 && v20 == v2)
      {

LABEL_18:

        (*(v8 + 32))(v29[0], v1, v6);
        sub_268B358B4();
        v27 = OUTLINED_FUNCTION_12_24();
        v28(v27);
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_25_17(v24);
      OUTLINED_FUNCTION_24_16();
      if (v3)
      {
        goto LABEL_18;
      }
    }

    v25 = OUTLINED_FUNCTION_21_17();
    v26(v25);
    if (!v32)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

Swift::String_optional __swiftcall UsoTask_enable_common_Setting.verb()()
{
  if (sub_268A9DE98() == 3)
  {
    if (sub_2689B83B8() == 5)
    {
      sub_268B36334();
      if (v6 && (sub_268962A68(), v1 = v0, v2 = v0, , v2 != 24))
      {
        v3 = sub_26893E3F8(v1);
      }

      else
      {
        v3 = 0;
        v4 = 0;
      }
    }

    else
    {
      v4 = 0xE600000000000000;
      v3 = 0x656C62616E65;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7628147;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_268A9DE98()
{
  v0 = OUTLINED_FUNCTION_6_36();
  if (sub_268A9D17C(v0, sub_268A9D65C, sub_268A9DBC0) >= 3u)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268A9DF14()
{
  v0 = OUTLINED_FUNCTION_6_36();
  v1 = sub_268A9D17C(v0, sub_268A9D65C, sub_268A9DBC0);
  if (v1 >= 3u)
  {
    return 7;
  }

  else
  {
    return 0x60605u >> (8 * v1);
  }
}

void UsoTask_enable_common_Setting.shouldHandle(requestContext:)()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v10 = (v8 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v47 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_28();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v16);
  v18 = v47 - v17;
  v19 = sub_268B36334();
  if (v47[1])
  {
    sub_2689633E8();
    if (v20)
    {
      if (qword_2802A4F30 != -1)
      {
        v20 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_1_28(v20, qword_2802CDA10);
      v21(v18);
      v22 = sub_268B37A34();
      v23 = sub_268B37F04();
      if (OUTLINED_FUNCTION_2_19(v23))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_22_6(&dword_2688BB000, v24, v25, "UsoTask_enable_common_Setting#shouldHandle Task is mediaPlayer. Handling in controls");
        OUTLINED_FUNCTION_12();
      }

      v26 = 0;
    }

    else
    {
      sub_268964334();
      if ((v31 & 1) != 0 && (sub_268963658(), (v32 & 1) == 0))
      {
        if (qword_2802A4F30 != -1)
        {
          v32 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_1_28(v32, qword_2802CDA10);
        v42(v1);
        v43 = sub_268B37A34();
        v44 = sub_268B37F04();
        if (OUTLINED_FUNCTION_2_19(v44))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_22_6(&dword_2688BB000, v45, v46, "UsoTask_enable_common_Setting#shouldHandle Task is media. Handling in controls");
          OUTLINED_FUNCTION_12();
        }

        v26 = 1;
        v18 = v1;
      }

      else
      {
        sub_268963658();
        if (v33)
        {
          if (qword_2802A4F30 != -1)
          {
            v33 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          OUTLINED_FUNCTION_1_28(v33, qword_2802CDA10);
          v34(v0);
          v35 = sub_268B37A34();
          v36 = sub_268B37F04();
          if (OUTLINED_FUNCTION_2_19(v36))
          {
            v37 = OUTLINED_FUNCTION_14();
            *v37 = 0;
            _os_log_impl(&dword_2688BB000, v35, v14, "UsoTask_enable_common_Setting#shouldHandle Task is settings. Handling in controls", v37, 2u);
            OUTLINED_FUNCTION_12();
          }

          v26 = 2;
          v18 = v0;
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            v33 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          OUTLINED_FUNCTION_1_28(v33, qword_2802CDA10);
          v38(v14);
          v39 = sub_268B37A34();
          v40 = sub_268B37EE4();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = OUTLINED_FUNCTION_14();
            *v41 = 0;
            _os_log_impl(&dword_2688BB000, v39, v40, "UsoTask_enable_common_Setting#shouldHandle Task is not mediaPlayer/media/setting: Not handling in controls", v41, 2u);
            OUTLINED_FUNCTION_12();
          }

          v26 = 3;
          v18 = v14;
        }
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v19 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_1_28(v19, qword_2802CDA10);
    v27(v10);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_14();
      *v30 = 0;
      _os_log_impl(&dword_2688BB000, v28, v29, "UsoTask_enable_common_Setting#shouldHandle no referenced setting found in task. Not handling in Controls", v30, 2u);
      OUTLINED_FUNCTION_12();
    }

    v26 = 3;
    v18 = v10;
  }

  (*(v6 + 8))(v18, v4);
  *v3 = v26;
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A9E4C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A9E514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A9E568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A9E5BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A9E610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A9E664(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A9E6B8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A9E70C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A9E770(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A9E7C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A9E828(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A9E88C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A9E8F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A9E954(uint64_t a1)
{
  result = sub_268A9EA00(&qword_2802A7D40, &protocol conformance descriptor for UsoTask_enable_common_Setting);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A9EA00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B35FF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_25()
{

  return sub_268B35BC4();
}

uint64_t OUTLINED_FUNCTION_24_16()
{
}

uint64_t OUTLINED_FUNCTION_25_17(uint64_t a1)
{

  return sub_268B38444();
}

id sub_268A9EB64()
{
  result = [objc_allocWithZone(type metadata accessor for SetAudioLanguageIntentHandler()) init];
  qword_2802CDB08 = result;
  return result;
}

uint64_t sub_268A9EB98()
{
  v7 = sub_268B37F44();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37F34();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268B37B14();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v8 = MEMORY[0x277D84F90];
  sub_268AA0C2C(&unk_2802A5890, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268B37F74();
  qword_2802CDB10 = result;
  return result;
}

uint64_t sub_268A9EDEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v64 = a2;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v56 = v3;
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v55 = v5 - v4;
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v60 = v7;
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v62 = v8;
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v58 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v59 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v25 = *(v16 + 16);
  v25(v23, v24, v14);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "SetAudioLanguageFlowStrategy#actionForInput called", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v16 + 8);
  v29(v23, v14);
  v30 = v65;
  v31 = v63;
  sub_268B35414();
  sub_26892E9C4(v30, 1, v13);
  v32 = type metadata accessor for MediaIntent(0);
  LODWORD(v30) = __swift_getEnumTagSinglePayload(v13, 1, v32);
  sub_268A03080(v13);
  if (v30 == 1)
  {
    v33 = v58;
    v25(v58, v24, v14);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "SetAudioLanguageFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    v29(v33, v14);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_6(0xD00000000000002DLL, "makeIntentFromParseQueue");
    return sub_268B34ED4();
  }

  else
  {
    v58 = (v16 + 8);
    v38 = v62;
    sub_268B35414();
    v40 = v60;
    v39 = v61;
    v41 = (*(v60 + 88))(v38, v61);
    if (v41 == *MEMORY[0x277D5C128] || v41 == *MEMORY[0x277D5C160])
    {
      (*(v40 + 8))(v38, v39);
      return sub_268B34EC4();
    }

    else
    {
      v25(v59, v24, v14);
      v43 = v55;
      v44 = v56;
      v45 = v57;
      (*(v56 + 16))(v55, v31, v57);
      v46 = sub_268B37A34();
      v47 = sub_268B37EE4();
      if (os_log_type_enabled(v46, v47))
      {
        v49 = v43;
        v50 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v66 = v63;
        *v50 = 136315138;
        sub_268B35414();
        v51 = sub_268B37C24();
        v53 = v52;
        (*(v44 + 8))(v49, v45);
        v54 = sub_26892CDB8(v51, v53, &v66);
        v39 = v61;

        *(v50 + 4) = v54;
        _os_log_impl(&dword_2688BB000, v46, v47, "SetAudioLanguageFlowStrategy#actionForInput received unexpected parse type: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        v40 = v60;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v44 + 8))(v43, v45);
      }

      v29(v59, v14);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_3_6(0xD00000000000001FLL, "reateFailed_MediaPlayerIntent");
      sub_268B34ED4();
      return (*(v40 + 8))(v62, v39);
    }
  }
}

uint64_t sub_268A9F470(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v34 = a3;
  v36 = a2;
  v35 = sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_268B37B14();
  OUTLINED_FUNCTION_1();
  v39 = v11;
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v21 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A5010 != -1)
  {
    swift_once();
  }

  v33 = qword_2802CDB10;
  (*(v17 + 16))(&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 16) = v36;
  (*(v17 + 32))(v24 + v22, v21, v15);
  v26 = (v24 + v23);
  v28 = v37;
  v27 = v38;
  *v26 = v34;
  v26[1] = v28;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_268AA0B28;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_11;
  v29 = _Block_copy(aBlock);
  v30 = v25;

  sub_268B37AE4();
  v42 = MEMORY[0x277D84F90];
  sub_268AA0C2C(&unk_2802A7010, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v31 = v35;
  sub_268B38124();
  MEMORY[0x26D625950](0, v14, v9, v29);
  _Block_release(v29);
  (*(v41 + 8))(v9, v31);
  (*(v39 + 8))(v14, v40);
}

void sub_268A9F83C(id a1, char *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v93 = a5;
  v105 = a3;
  v106 = a4;
  v103 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v91 - v7;
  v95 = type metadata accessor for MediaIntent(0);
  MEMORY[0x28223BE20](v95);
  v91 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B35494();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v96 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v92 = &v91 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v102 = &v91 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v91 - v18;
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v94 = &v91 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v91 - v26;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v20, qword_2802CDA10);
  v29 = *(v21 + 16);
  v97 = v28;
  v98 = v29;
  v99 = (v21 + 16);
  v29(v27);
  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v104 = a1;
    v33 = v11;
    v34 = v8;
    v35 = v10;
    v36 = v19;
    v37 = v20;
    v38 = v21;
    v39 = v32;
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "SetAudioLanguageFlowStrategy#makeIntentFromParse called", v32, 2u);
    v40 = v39;
    v21 = v38;
    v20 = v37;
    v19 = v36;
    v10 = v35;
    v8 = v34;
    v11 = v33;
    a1 = v104;
    MEMORY[0x26D6266E0](v40, -1, -1);
  }

  v100 = *(v21 + 8);
  v101 = v21 + 8;
  v100(v27, v20);
  if (a1)
  {
    v104 = a1;
  }

  else
  {
    v104 = [objc_allocWithZone(type metadata accessor for SetAudioLanguageIntent()) init];
  }

  v41 = v103;
  v42 = v107;
  v43 = *(v11 + 16);
  v43(v19, v103, v10);
  v44 = (*(v11 + 88))(v19, v10);
  if (v44 == *MEMORY[0x277D5C128] || v44 == *MEMORY[0x277D5C160])
  {
    v46 = *(v11 + 8);
    v47 = a1;
    v46(v19, v10);
    v48 = v41;
    v49 = v102;
    v43(v102, v48, v10);
    sub_26892E9C4(v49, 1, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v95) == 1)
    {
      sub_268A03080(v8);
      v50 = v94;
      (v98)(v94, v97, v20);
      v51 = v92;
      v43(v92, v48, v10);
      v52 = sub_268B37A34();
      v53 = sub_268B37EE4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        LODWORD(v103) = v53;
        v55 = v54;
        v107 = swift_slowAlloc();
        v108 = v107;
        *v55 = 136315138;
        v43(v102, v51, v10);
        v56 = sub_268B37C24();
        v58 = v57;
        v46(v51, v10);
        v59 = sub_26892CDB8(v56, v58, &v108);

        *(v55 + 4) = v59;
        v60 = v55;
        _os_log_impl(&dword_2688BB000, v52, v103, "SetAudioLanguageFlowStrategy#makeIntentFromParse failed to create MediaIntent from parse: %s", v55, 0xCu);
        v61 = v107;
        __swift_destroy_boxed_opaque_existential_0Tm(v107);
        MEMORY[0x26D6266E0](v61, -1, -1);
        MEMORY[0x26D6266E0](v60, -1, -1);

        v62 = v94;
      }

      else
      {

        v46(v51, v10);
        v62 = v50;
      }

      v100(v62, v20);
      type metadata accessor for ErrorFilingHelper();
      static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000032, 0x8000000268B56D00, 0xD000000000000010, 0x8000000268B5C300, 0xD000000000000014, 0x8000000268B56D40);
      sub_2688C2ECC();
      v89 = swift_allocError();
      *v90 = 61;
      v105(v89, 1);
    }

    else
    {
      v79 = v91;
      sub_26893207C(v8, v91);
      v80 = v104;
      sub_268A19CF0(v79);
      sub_26895F7A8(v79);
      v81 = v93;
      v82 = v93[5];
      v83 = v93[6];
      __swift_project_boxed_opaque_existential_1(v93 + 2, v82);
      v84 = swift_allocObject();
      v85 = v106;
      v84[2] = v105;
      v84[3] = v85;
      v84[4] = v80;
      v86 = v80;

      sub_268AD35F4(v86, &off_287953C48, (v81 + 7), sub_268AA0C20, v84, v82, v83);
    }
  }

  else
  {
    v103 = v19;
    (v98)(v42, v97, v20);
    v63 = v96;
    v43(v96, v41, v10);
    v64 = a1;
    v65 = sub_268B37A34();
    v66 = sub_268B37EE4();
    if (os_log_type_enabled(v65, v66))
    {
      v68 = swift_slowAlloc();
      v98 = v68;
      v99 = swift_slowAlloc();
      v108 = v99;
      *v68 = 136315138;
      v43(v102, v63, v10);
      v69 = sub_268B37C24();
      v71 = v70;
      v72 = *(v11 + 8);
      v72(v63, v10);
      v73 = sub_26892CDB8(v69, v71, &v108);

      v74 = v98;
      *(v98 + 1) = v73;
      v75 = v104;
      v76 = v66;
      v77 = v74;
      _os_log_impl(&dword_2688BB000, v65, v76, "SetAudioLanguageFlowStrategy#makeIntentFromParse unexpected parse type: %s", v74, 0xCu);
      v78 = v99;
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
      MEMORY[0x26D6266E0](v78, -1, -1);
      MEMORY[0x26D6266E0](v77, -1, -1);

      v100(v107, v20);
    }

    else
    {

      v72 = *(v11 + 8);
      v72(v63, v10);
      v100(v42, v20);
      v75 = v104;
    }

    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000024, 0x8000000268B5A090, 0xD000000000000010, 0x8000000268B5C300, 0xD000000000000014, 0x8000000268B56D40);
    sub_2688C2ECC();
    v87 = swift_allocError();
    *v88 = 62;
    v105(v87, 1);

    v72(v103, v10);
  }
}

uint64_t sub_268AA024C(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "SetAudioLanguageFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_268AA0444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA04D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268AA0520()
{
  if (qword_2802A5008 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB08;

  return v1;
}

uint64_t sub_268AA057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA05E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA0654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA06C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268AA0710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268AA0764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA07D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AA084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AA09A0(uint64_t a1, uint64_t a2)
{
  result = sub_268AA0C2C(&qword_2802A7D60, a2, type metadata accessor for SetAudioLanguageFlowStrategy, &unk_268B4AB88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AA0A40()
{
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

void sub_268AA0B28()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_268A9F83C(v5, (v0 + v2), v8, v9, v7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268AA0BE0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268AA0C2C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_268AA0C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = (*(a2 + 8))(a1, a2);
  if (v11)
  {
    v12 = v11;
    if (sub_2688EFD0C() == 1 && sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26D625BD0](0, v12);
      }

      else
      {
        v13 = *(v12 + 32);
      }

      v14 = v13;

      v15 = DeviceQuery.hasReferenceOnly.getter();

      v16 = v15 ^ 1;
    }

    else
    {

      v16 = 1;
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v17 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v10, v17, v4);
    v18 = sub_268B37A34();
    v19 = sub_268B37ED4();
    if (!os_log_type_enabled(v18, v19))
    {
      v8 = v10;
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = v16 & 1;
    _os_log_impl(&dword_2688BB000, v18, v19, "DeviceQueryableIntent#isWholeHouseAudio: %{BOOL}d", v20, 8u);
    v8 = v10;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v21 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v8, v21, v4);
    v18 = sub_268B37A34();
    v22 = sub_268B37ED4();
    if (!os_log_type_enabled(v18, v22))
    {
      v16 = 0;
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2688BB000, v18, v22, "DeviceQueryableIntent#isWholeHouseAudio No deviceQueries found in the intent. This is not a WHA intent", v20, 2u);
    v16 = 0;
  }

  MEMORY[0x26D6266E0](v20, -1, -1);
LABEL_19:

  (*(v5 + 8))(v8, v4);
  return v16 & 1;
}

id sub_268AA0FD8()
{
  result = [objc_allocWithZone(type metadata accessor for SetRepeatStateIntentHandler()) init];
  qword_2802CDB18 = result;
  return result;
}

uint64_t sub_268AA100C()
{
  v7 = sub_268B37F44();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37F34();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268B37B14();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2688C2FC8();
  sub_268B37AF4();
  v8 = MEMORY[0x277D84F90];
  sub_268AA2D18(&unk_2802A5890, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268B37F74();
  qword_2802CDB20 = result;
  return result;
}

uint64_t sub_268AA1260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  sub_268B35434();
  OUTLINED_FUNCTION_1();
  v66 = v3;
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v65 = v5 - v4;
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v70 = v7;
  v71 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v72 = v8;
  MEMORY[0x28223BE20](v9);
  v75 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v65 - v12;
  v14 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v68 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v69 = &v65 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - v22;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v25 = *(v16 + 16);
  v25(v23, v24, v14);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "SetRepeatStateFlowStrategy#actionForInput called", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v16 + 8);
  v29(v23, v14);
  v30 = v73;
  sub_268B35414();
  sub_26893BA8C(v13);
  v31 = type metadata accessor for MediaPlayerIntent(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v31);
  sub_2688C2E64(v13);
  if (EnumTagSinglePayload == 1)
  {
    v33 = v68;
    v25(v68, v24, v14);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "SetRepeatStateFlowStrategy#actionForInput unable to create MediaPlayerIntent from parse", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    v29(v33, v14);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_4_10(v37 + 25, v38, v39, v40);
    return sub_268B34ED4();
  }

  else
  {
    v68 = (v16 + 8);
    v42 = v72;
    sub_268B35414();
    v44 = v70;
    v43 = v71;
    v45 = (*(v70 + 88))(v42, v71);
    if (v45 == *MEMORY[0x277D5C128] || v45 == *MEMORY[0x277D5C150] || v45 == *MEMORY[0x277D5C160])
    {
      (*(v44 + 8))(v42, v43);
      return sub_268B34EC4();
    }

    else
    {
      v25(v69, v24, v14);
      v48 = v65;
      v49 = v66;
      v50 = v67;
      (*(v66 + 16))(v65, v30, v67);
      v51 = sub_268B37A34();
      v52 = sub_268B37EE4();
      if (os_log_type_enabled(v51, v52))
      {
        v54 = v48;
        v55 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v76 = v73;
        *v55 = 136315138;
        sub_268B35414();
        v56 = sub_268B37C24();
        v58 = v57;
        (*(v49 + 8))(v54, v50);
        v59 = sub_26892CDB8(v56, v58, &v76);
        v43 = v71;

        *(v55 + 4) = v59;
        _os_log_impl(&dword_2688BB000, v51, v52, "SetRepeatStateFlowStrategy#actionForInput received no valid parse %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        v44 = v70;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v49 + 8))(v48, v50);
      }

      v29(v69, v14);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_1_51();
      OUTLINED_FUNCTION_4_10(v61 | v60, v62, v63, v64);
      sub_268B34ED4();
      return (*(v44 + 8))(v72, v43);
    }
  }
}

uint64_t sub_268AA18E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v35 = a3;
  v36 = a2;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  v41 = v6;
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_268B37B14();
  OUTLINED_FUNCTION_1();
  v39 = v11;
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v21 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A5020 != -1)
  {
    swift_once();
  }

  v34 = qword_2802CDB20;
  (*(v17 + 16))(&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v22 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v17 + 32))(v25 + v22, v21, v15);
  v26 = (v25 + v23);
  v27 = v36;
  v29 = v37;
  v28 = v38;
  *v26 = v35;
  v26[1] = v28;
  *(v25 + v24) = v27;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_268AA2C0C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0B300;
  aBlock[3] = &block_descriptor_12;
  v30 = _Block_copy(aBlock);
  v31 = v27;

  sub_268B37AE4();
  v43 = MEMORY[0x277D84F90];
  sub_268AA2D18(&unk_2802A7010, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v32 = v42;
  sub_268B38124();
  MEMORY[0x26D625950](0, v14, v9, v30);
  _Block_release(v30);
  (*(v41 + 8))(v9, v32);
  (*(v39 + 8))(v14, v40);
}

void sub_268AA1CAC(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4, void *a5)
{
  v63 = a5;
  v69 = a3;
  v70 = a4;
  v68 = a2;
  v65 = a1;
  v67 = sub_268B35494();
  v71 = *(v67 - 8);
  v5 = MEMORY[0x28223BE20](v67);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v59 - v10;
  v64 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v64);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v59 = *(v15 + 16);
  v60 = v20;
  v59(v19);
  v21 = sub_268B37A34();
  v22 = sub_268B37F04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = v8;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "SetRepeatStateFlowStrategy#makeIntentFromParse called", v27, 2u);
    v28 = v27;
    v8 = v26;
    v15 = v25;
    v14 = v24;
    v13 = v23;
    MEMORY[0x26D6266E0](v28, -1, -1);
  }

  v61 = *(v15 + 8);
  v61(v19, v14);
  v29 = *(v71 + 16);
  v30 = v65;
  v31 = v67;
  v29(v8, v65, v67);
  sub_26893BC0C(v8, 1, v32, v33, v34, v35, v36, v37, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  if (__swift_getEnumTagSinglePayload(v11, 1, v64) == 1)
  {
    sub_2688C2E64(v11);
    (v59)(v66, v60, v14);
    v38 = v62;
    v29(v62, v30, v31);
    v39 = v31;
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72 = v70;
      *v42 = 136315138;
      v29(v8, v38, v39);
      v43 = sub_268B37C24();
      v45 = v44;
      (*(v71 + 8))(v38, v39);
      v46 = sub_26892CDB8(v43, v45, &v72);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_2688BB000, v40, v41, "SetRepeatStateFlowStrategy#makeIntentFromParse received unexpected parse: %s", v42, 0xCu);
      v47 = v70;
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      MEMORY[0x26D6266E0](v47, -1, -1);
      MEMORY[0x26D6266E0](v42, -1, -1);
    }

    else
    {

      (*(v71 + 8))(v38, v31);
    }

    v61(v66, v14);
    type metadata accessor for ErrorFilingHelper();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(0xD000000000000032, 0x8000000268B56D00, 0x6165706552746553, 0xEE00657461745374, 0xD000000000000014, 0x8000000268B56D40);
    sub_2688C2ECC();
    v49 = swift_allocError();
    *v50 = 73;
    v68(v49, 1);
  }

  else
  {
    sub_2688C0464(v11, v13);
    if (v70)
    {
      v48 = v70;
    }

    else
    {
      v48 = [objc_allocWithZone(type metadata accessor for SetRepeatStateIntent()) init];
    }

    v51 = v70;
    sub_268A91044(v13);
    v52 = v63;
    v53 = v63[5];
    v54 = v63[6];
    __swift_project_boxed_opaque_existential_1(v63 + 2, v53);
    v55 = v13;
    v56 = swift_allocObject();
    v57 = v69;
    v56[2] = v68;
    v56[3] = v57;
    v56[4] = v48;
    v58 = v48;

    sub_268AD35F4(v58, &off_287953BA8, (v52 + 7), sub_268AA2D0C, v56, v53, v54);

    sub_2688C2F6C(v55);
  }
}

uint64_t sub_268AA2350(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "SetRepeatStateFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_268AA2548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA25D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BB208](a1, v5, a3);
}

id sub_268AA2624()
{
  if (qword_2802A5018 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB18;

  return v1;
}

uint64_t sub_268AA2680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA26EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA2758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA27C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268AA2814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268AA2868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268AA28D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AA2950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetRepeatStateFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AA2AA4(uint64_t a1, uint64_t a2)
{
  result = sub_268AA2D18(&qword_2802A7D80, a2, type metadata accessor for SetRepeatStateFlowStrategy, &unk_268B4AE64);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AA2B44()
{
  v1 = sub_268B35494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_268AA2C0C()
{
  v1 = *(sub_268B35494() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = *(v5 + 8);

  sub_268AA1CAC(v0 + v2, v8, v9, v6, v7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268AA2CCC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268AA2D18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_268AA2D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "SeekTimeDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v15 = sub_268B35244();
  sub_268AE2278(v15);
  v17 = v16;

  v18 = sub_268B35254();
  sub_268AE23DC(v18);
  v20 = v19;

  sub_268AB1AA8(v17, v20 & 1, a4, a5);
}

void sub_268AA2FC8()
{
  type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268AA30B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268AA3164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268AA3214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268AA32AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268AA3368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for SeekTimeDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268AA33FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_268AA34E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for SeekTimeDeviceDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_268AA36CC(uint64_t a1, uint64_t a2)
{
  result = sub_268AA3724(&qword_2802A7DA0, a2, type metadata accessor for SeekTimeDeviceDisambiguationStrategy, &unk_268B4B048);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AA3724(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *storeEnumTagSinglePayload for ConfirmationStateValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268AA3874);
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

unint64_t sub_268AA38B0()
{
  result = qword_2802A7DA8;
  if (!qword_2802A7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DA8);
  }

  return result;
}

unint64_t sub_268AA3904(uint64_t a1)
{
  v1 = sub_268B382F4();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_268AA395C(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

unint64_t sub_268AA39C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268AA3904(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_268AA39F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268AA395C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268AA3A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268AA3BB8();
  v5 = sub_268AA3C0C();
  v6 = sub_268AA3C60();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_268AA3AA4()
{
  result = qword_2802A7DB0;
  if (!qword_2802A7DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A7DB8, &qword_268B4B198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DB0);
  }

  return result;
}

unint64_t sub_268AA3B0C()
{
  result = qword_2802A7DC0;
  if (!qword_2802A7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DC0);
  }

  return result;
}

unint64_t sub_268AA3B64()
{
  result = qword_2802A7DC8;
  if (!qword_2802A7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DC8);
  }

  return result;
}

unint64_t sub_268AA3BB8()
{
  result = qword_2802A7DD0;
  if (!qword_2802A7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DD0);
  }

  return result;
}

unint64_t sub_268AA3C0C()
{
  result = qword_2802A7DD8;
  if (!qword_2802A7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DD8);
  }

  return result;
}

unint64_t sub_268AA3C60()
{
  result = qword_2802A7DE0;
  if (!qword_2802A7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7DE0);
  }

  return result;
}

id MoveSpeakerIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_268AA3CEC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = [v0 source];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 devices];

    if (v12)
    {
      v31 = v5;
      type metadata accessor for Device();
      v13 = sub_268B37CF4();

      v14 = sub_2688EFD0C();
      for (i = 0; ; ++i)
      {
        if (v14 == i)
        {

          goto LABEL_13;
        }

        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x26D625BD0](i, v13);
        }

        else
        {
          if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v16 = *(v13 + 8 * i + 32);
        }

        v12 = v16;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        sub_26892D418(v16);
        if (v17)
        {
          break;
        }
      }

      if (sub_268983434(v18))
      {
        v19 = sub_268A3239C();
        if (v20)
        {
          v2 = v19;
          v14 = v20;
          if (qword_2802A4F30 == -1)
          {
LABEL_17:
            v21 = __swift_project_value_buffer(v3, qword_2802CDA10);
            (*(v31 + 16))(v9, v21, v3);

            v22 = sub_268B37A34();
            v23 = sub_268B37F04();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              v32 = v25;
              *v24 = 136315138;
              *(v24 + 4) = sub_26892CDB8(v2, v14, &v32);
              _os_log_impl(&dword_2688BB000, v22, v23, "Local SideKick device, using endpointId: %s", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v25);
              OUTLINED_FUNCTION_12();
              OUTLINED_FUNCTION_12();
            }

            (*(v31 + 8))(v9, v3);
            goto LABEL_13;
          }

LABEL_29:
          OUTLINED_FUNCTION_0_2();
          swift_once();
          goto LABEL_17;
        }
      }

      v26 = [v12 context];
      if (v26 && (v27 = v26, v28 = [v26 routeId], v27, v28))
      {
        sub_268B37BF4();
      }

      else
      {
        v29 = [v12 routeId];
        if (v29)
        {
          v30 = v29;
          sub_268B37BF4();
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_23();
}

void sub_268AA4074()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  if (v1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_268B382A4())
  {
    if (!i)
    {
LABEL_20:
      OUTLINED_FUNCTION_23();
      return;
    }

    sub_268B38234();
    if (i < 0)
    {
      break;
    }

    v32 = v1 & 0xC000000000000001;
    sub_2688C063C();
    v10 = 0;
    v29 = (v4 + 16);
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = (v4 + 8);
    *&v11 = 138412290;
    v26 = v11;
    v31 = i;
    v27 = v8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v32)
      {
        v13 = MEMORY[0x26D625BD0](v10, v1);
      }

      else
      {
        if (v10 >= *(v30 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v1 + 8 * v10 + 32);
      }

      v14 = v13;
      v4 = [v13 silentPrimary];
      v15 = sub_268B38054();
      v16 = v15;
      if (v4)
      {
        v17 = sub_268B38074();

        if (v17)
        {
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_2();
            swift_once();
          }

          v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
          (*v29)(v8, v18, v2);
          v19 = v14;
          v20 = sub_268B37A34();
          v4 = sub_268B37F04();

          if (os_log_type_enabled(v20, v4))
          {
            v21 = swift_slowAlloc();
            v22 = v2;
            v23 = v1;
            v24 = swift_slowAlloc();
            *v21 = v26;
            *(v21 + 4) = v19;
            *v24 = v19;
            v25 = v19;
            _os_log_impl(&dword_2688BB000, v20, v4, "Device: %@ is silent primary. Converting its nowPlayingState to .paused", v21, 0xCu);
            sub_2688C058C(v24, &qword_2802A6420, &unk_268B3C680);
            v1 = v23;
            v2 = v22;
            v8 = v27;
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_12();
          }

          (*v28)(v8, v2);
          [v19 setNowPlayingState_];
        }
      }

      else
      {
      }

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      ++v10;
      if (v12 == v31)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  __break(1u);
}

void sub_268AA43C8(uint64_t a1)
{
  v1 = sub_268AA4490(a1);
  v2 = sub_2688EFD0C();
  v3 = 0;
  while (1)
  {
    v4 = v3;
    if (v2 == v3)
    {
LABEL_10:

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = sub_268983434(v5);

    v3 = v4 + 1;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_268AA4490(uint64_t a1)
{
  result = sub_2688EFD0C();
  v3 = result;
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F90];
  v28 = a1;
  v29 = a1 & 0xC000000000000001;
  v32 = a1 + 32;
  v30 = result;
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v5)
    {
      result = MEMORY[0x26D625BD0](v4, v28);
    }

    else
    {
      if (v4 >= *(v33 + 16))
      {
        goto LABEL_40;
      }

      result = *(v32 + 8 * v4);
    }

    v7 = result;
    v8 = __OFADD__(v4++, 1);
    if (v8)
    {
      break;
    }

    v9 = sub_2689CB550();

    if (v9 >> 62)
    {
      v10 = sub_268B382A4();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_268B382A4();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = result + v10;
    if (__OFADD__(result, v10))
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v11)
      {
LABEL_17:
        sub_268B382A4();
      }

LABEL_18:
      result = sub_268B381F4();
      v6 = result;
      v13 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_19;
    }

    if (v11)
    {
      goto LABEL_17;
    }

    v13 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v12 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_19:
    v34 = v13;
    v35 = v6;
    v14 = *(v13 + 16);
    v15 = (*(v13 + 24) >> 1) - v14;
    v16 = v13 + 8 * v14;
    if (v9 >> 62)
    {
      v19 = sub_268B382A4();
      if (v19)
      {
        v20 = v19;
        result = sub_268B382A4();
        if (v15 < result)
        {
          goto LABEL_45;
        }

        if (v20 < 1)
        {
          goto LABEL_46;
        }

        v31 = result;
        v21 = v16 + 32;
        sub_268AA8960();
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B38, &unk_268B51420);
          v23 = sub_26892D47C(v36, i, v9);
          v25 = *v24;
          v23(v36, 0);
          *(v21 + 8 * i) = v25;
        }

        v5 = v29;
        v3 = v30;
        v18 = v31;
        goto LABEL_29;
      }

LABEL_33:

      if (v10 > 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_33;
      }

      if (v15 < v17)
      {
        goto LABEL_44;
      }

      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      type metadata accessor for Device();
      swift_arrayInitWithCopy();
LABEL_29:

      v6 = v35;
      if (v18 < v10)
      {
        goto LABEL_42;
      }

      if (v18 > 0)
      {
        v26 = *(v34 + 16);
        v8 = __OFADD__(v26, v18);
        v27 = v26 + v18;
        if (v8)
        {
          goto LABEL_43;
        }

        *(v34 + 16) = v27;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void MoveSpeakerIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v27 = sub_268B36C44();
  sub_268B37204();
  v26 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v34);
  sub_268AD33CC(v33);
  sub_268B36754();
  v25 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v31 = v0;
  v32 = MEMORY[0x277D5F680];
  *&v30 = v1;
  v11 = type metadata accessor for AnalyticsServiceLogger();
  v29[4] = &off_28795F5E0;
  v29[3] = v11;
  v29[0] = v10;
  v28[4] = &off_287960608;
  v28[3] = v2;
  v28[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, v11);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v16;
  v24 = *v21;
  v12[5] = v11;
  v12[6] = &off_28795F5E0;
  v12[2] = v23;
  v12[21] = v2;
  v12[22] = &off_287960608;
  v12[18] = v24;
  sub_2688E6514(v33, (v12 + 7));
  v12[12] = v25;
  sub_2688E6514(&v30, (v12 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  sub_268B34C64();
  sub_268AA83B4(v27, v26, &v35, v12, v34);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268AA4B7C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_12(v2);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v0;
  v6 = qword_2802A5028;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  v7 = OUTLINED_FUNCTION_4_13();
  v8(v7);
  OUTLINED_FUNCTION_5_5();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_20(v9, 23);
  v11(v10);
  OUTLINED_FUNCTION_9_10();
  *(v12 + 8) = sub_268958724;
  *(v12 + 16) = v5;

  sub_268B38004();
  sub_268B37A04();

  sub_268AA4D4C(v15, v16, sub_268AA86E8, v9);

  v13 = OUTLINED_FUNCTION_11_12();
  v14(v13);
  OUTLINED_FUNCTION_23();
}

void sub_268AA4D4C(void *a1, uint64_t a2, void (*a3)(uint64_t *), char *a4)
{
  v92 = a2;
  v97 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v94 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v85 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v85 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v93 = &v85 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v85 - v16;
  v18 = swift_allocObject();
  v95 = a3;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268958D98;
  *(v19 + 24) = v18;
  v20 = qword_2802A4F30;

  v96 = v18;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v22 = *(v7 + 16);
  v22(v17, v21, v6);
  v23 = sub_268B37A34();
  v24 = sub_268B37F04();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v91 = (v7 + 16);
    v26 = v21;
    v27 = v6;
    v28 = v19;
    v29 = v7;
    v30 = v22;
    v31 = a4;
    v32 = v25;
    *v25 = 0;
    _os_log_impl(&dword_2688BB000, v23, v24, "MoveSpeakerIntentHandler.handle() called", v25, 2u);
    v33 = v32;
    a4 = v31;
    v22 = v30;
    v7 = v29;
    v19 = v28;
    v6 = v27;
    v21 = v26;
    MEMORY[0x26D6266E0](v33, -1, -1);
  }

  v34 = *(v7 + 8);
  v34(v17, v6);
  v35 = v97;
  v36 = [v97 source];
  if (!v36)
  {
    goto LABEL_10;
  }

  v37 = v36;
  v91 = v34;
  v38 = sub_268B0F7F4(v35);
  if (!v38)
  {

    v34 = v91;
LABEL_10:

    v56 = v94;
    v22(v94, v21, v6);
    v57 = sub_268B37A34();
    v58 = sub_268B37EE4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2688BB000, v57, v58, "Could not find a valid source and/or destinations in the intent", v59, 2u);
      MEMORY[0x26D6266E0](v59, -1, -1);
    }

    v34(v56, v6);
    v60 = sub_268B36EA4();
    v61 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
    v62 = v60;
    v63 = MoveSpeakerIntentResponse.init(code:userActivity:)(5, v60);
    v98 = v63;
    v95(&v98);

    goto LABEL_13;
  }

  v39 = v38;
  v94 = a4;
  v40 = v93;
  v86 = v21;
  v87 = v22;
  v22(v93, v21, v6);
  v41 = v37;
  v42 = sub_268B37A34();
  v43 = sub_268B37F04();

  v44 = os_log_type_enabled(v42, v43);
  v88 = v41;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v98 = v85;
    *v45 = 136315394;
    v46 = sub_2688F3970();
    v48 = sub_26892CDB8(v46, v47, &v98);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    v49 = type metadata accessor for DeviceGroup();
    v50 = MEMORY[0x26D625710](v39, v49);
    v52 = v51;

    v53 = sub_26892CDB8(v50, v52, &v98);

    *(v45 + 14) = v53;
    _os_log_impl(&dword_2688BB000, v42, v43, "Resolved Source: %s, Resolved Destinations: %s", v45, 0x16u);
    v54 = v85;
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v54, -1, -1);
    MEMORY[0x26D6266E0](v45, -1, -1);

    v55 = v93;
  }

  else
  {

    v55 = v40;
  }

  v64 = v91;
  v91(v55, v6);
  v65 = v92;
  sub_268A581C0(*(v92 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_aceServiceHelper));
  if (!*(v66 + 16))
  {

    v69 = v90;
    v87(v90, v86, v6);
    v70 = sub_268B37A34();
    v71 = sub_268B37EE4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2688BB000, v70, v71, "Empty destination ids found after filtration. Returning error", v72, 2u);
      MEMORY[0x26D6266E0](v72, -1, -1);
    }

    v64(v69, v6);
    v73 = sub_268B36EA4();
    v74 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
    v75 = v73;
    v76 = MoveSpeakerIntentResponse.init(code:userActivity:)(5, v73);
    v98 = v76;
    v95(&v98);

LABEL_13:

    return;
  }

  v67 = swift_allocObject();
  *(v67 + 16) = sub_2688E19F8;
  *(v67 + 24) = v19;
  sub_268AA3CEC();
  if (v68)
  {
    __swift_project_boxed_opaque_existential_1((v65 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_playbackController), *(v65 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_playbackController + 24));
    sub_268B36DC4();
  }

  else
  {

    v77 = v89;
    v87(v89, v86, v6);
    v78 = sub_268B37A34();
    v79 = sub_268B37EE4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_2688BB000, v78, v79, "Failed to get the device id of the source. Returning error", v80, 2u);
      MEMORY[0x26D6266E0](v80, -1, -1);
    }

    v91(v77, v6);
    v81 = sub_268B36EA4();
    v82 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
    v83 = v81;
    v84 = MoveSpeakerIntentResponse.init(code:userActivity:)(5, v81);
    v98 = v84;
    v95(&v98);
  }
}

void sub_268AA56B8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v70 = a3;
  v71 = a2;
  v72 = sub_268B37A54();
  v69 = *(v72 - 8);
  v4 = MEMORY[0x28223BE20](v72);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v62 - v7;
  v8 = sub_268B36F24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v66 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v67 = a1;
  sub_2688F1FA4(a1, &v62 - v18, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v16, v19, v8);
    v20 = v8;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v21 = v72;
    v22 = __swift_project_value_buffer(v72, qword_2802CDA10);
    v23 = v68;
    v24 = v69;
    (*(v69 + 16))(v68, v22, v21);
    v25 = v9;
    v63 = *(v9 + 16);
    v64 = v16;
    v63(v14, v16, v20);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v65 = v20;
      v29 = v28;
      v62 = swift_slowAlloc();
      v73 = v62;
      *v29 = 136315138;
      sub_26899693C(&qword_2802A5F88, MEMORY[0x277D5F6E0], MEMORY[0x277D5F6E8]);
      v30 = sub_268B384A4();
      v31 = v24;
      v33 = v32;
      v34 = *(v9 + 8);
      v34(v14, v65);
      v35 = sub_26892CDB8(v30, v33, &v73);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_2688BB000, v26, v27, "Failed to move the source stream to the expected destinations. Error: %s", v29, 0xCu);
      v36 = v62;
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x26D6266E0](v36, -1, -1);
      v37 = v29;
      v20 = v65;
      MEMORY[0x26D6266E0](v37, -1, -1);

      (*(v31 + 8))(v68, v72);
    }

    else
    {

      v34 = *(v9 + 8);
      v34(v14, v20);
      (*(v24 + 8))(v23, v72);
    }

    v46 = v66;
    v47 = v64;
    v63(v66, v64, v20);
    v48 = (*(v25 + 88))(v46, v20);
    if (v48 == *MEMORY[0x277D5F6C0])
    {
      v49 = sub_268B36ED4();
      v50 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
      v51 = v49;
      v52 = MoveSpeakerIntentResponse.init(code:userActivity:)(100, v49);
      v71();

      v34(v47, v20);
    }

    else
    {
      if (v48 == *MEMORY[0x277D5F6A8])
      {
        v53 = sub_268B36ED4();
        v54 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
        v55 = v53;
        v56 = MoveSpeakerIntentResponse.init(code:userActivity:)(101, v53);
        v71();

        v57 = v47;
      }

      else
      {
        v58 = sub_268B36ED4();
        v59 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
        v60 = v58;
        v61 = MoveSpeakerIntentResponse.init(code:userActivity:)(5, v58);
        v71();

        v34(v47, v20);
        v57 = v46;
      }

      v34(v57, v20);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = v72;
    v39 = __swift_project_value_buffer(v72, qword_2802CDA10);
    v40 = v69;
    (*(v69 + 16))(v6, v39, v38);
    v41 = sub_268B37A34();
    v42 = sub_268B37F04();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "Success moving devices", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    (*(v40 + 8))(v6, v38);
    v44 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
    v45 = MoveSpeakerIntentResponse.init(code:userActivity:)(4, 0);
    v71();
  }
}

void sub_268AA5E74()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_12(v2);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v0;
  v6 = qword_2802A5028;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  v7 = OUTLINED_FUNCTION_4_13();
  v8(v7);
  OUTLINED_FUNCTION_5_5();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_20(v9, 24);
  v11(v10);
  OUTLINED_FUNCTION_9_10();
  *(v12 + 8) = sub_2689969C0;
  *(v12 + 16) = v5;

  sub_268B38004();
  sub_268B37A04();

  sub_268AA6044(v16, v15, sub_268AA86E8, v9);

  v13 = OUTLINED_FUNCTION_11_12();
  v14(v13);
  OUTLINED_FUNCTION_23();
}

void sub_268AA6044(uint64_t a1, uint64_t a2, void (*a3)(void **), uint64_t a4)
{
  v40 = a2;
  v43 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = swift_allocObject();
  v42 = a3;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_268958D98;
  *(v15 + 24) = v14;
  v16 = qword_2802A4F30;
  v45 = a4;

  v44 = v14;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v18 = *(v7 + 16);
  v18(v13, v17, v6);
  v19 = sub_268B37A34();
  v20 = sub_268B37F04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "MoveSpeakerIntentHandler.resolveSource()", v21, 2u);
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  v22 = *(v7 + 8);
  v22(v13, v6);
  __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState), *(v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState + 24));
  if ((sub_2688C3240() & 1) == 0)
  {

    v26 = v41;
    v18(v41, v17, v6);
    v27 = sub_268B37A34();
    v28 = sub_268B37EE4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "Whole House Audio requests are unsupported on this platform", v29, 2u);
      MEMORY[0x26D6266E0](v29, -1, -1);
    }

    v22(v26, v6);
    type metadata accessor for MoveSpeakerSourceResolutionResult();
    v30 = 4;
    goto LABEL_17;
  }

  v23 = v40;
  if (!sub_268B1CC90(v40))
  {
LABEL_14:

    v31 = v39;
    v18(v39, v17, v6);
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2688BB000, v32, v33, "Could not find any device queries in the intent. Returning error", v34, 2u);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    v22(v31, v6);
    type metadata accessor for MoveSpeakerSourceResolutionResult();
    v30 = 3;
LABEL_17:
    v35 = sub_268B17B04(v30);
    v46 = v35;
    v42(&v46);

    return;
  }

  if (!sub_2688EFD0C())
  {

    goto LABEL_14;
  }

  if (sub_268B1CCB0(v23))
  {
    sub_268AA4074();
    v25 = v24;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  sub_268920A60();
  v37 = v36;

  v38 = swift_allocObject();
  *(v38 + 16) = sub_268958EA4;
  *(v38 + 24) = v15;
  sub_2688F9A5C(v37, v25, 1, sub_268AA89C4, v38);
}

void sub_268AA6570(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (!sub_2688EFD0C())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v8, v24, v4);
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2688BB000, v25, v26, "Could not find a source stream for the move request.", v27, 2u);
      MEMORY[0x26D6266E0](v27, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    type metadata accessor for MoveSpeakerSourceResolutionResult();
    v28 = 2;
    goto LABEL_20;
  }

  if (sub_2688EFD0C() != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v11, v29, v4);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "Multiple sources found for move request.", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    type metadata accessor for MoveSpeakerSourceResolutionResult();
    v28 = 1;
LABEL_20:
    v23 = sub_268B17B04(v28);
    a2();
    goto LABEL_21;
  }

  sub_2688EFD10();
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    v14 = *(a1 + 32);
  }

  v15 = v14;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v13, v16, v4);
  v17 = v15;
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_2688BB000, v18, v19, "Success resolving source: %@.", v20, 0xCu);
    sub_2688C058C(v21, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v21, -1, -1);
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v5 + 8))(v13, v4);
  type metadata accessor for MoveSpeakerSourceResolutionResult();
  v23 = sub_268B32628(v17);
  a2();

LABEL_21:
}

uint64_t sub_268AA6A6C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_268AA6B14()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_12(v2);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v0;
  v6 = qword_2802A5028;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  v7 = OUTLINED_FUNCTION_4_13();
  v8(v7);
  OUTLINED_FUNCTION_5_5();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_20(v9, 30);
  v11(v10);
  OUTLINED_FUNCTION_9_10();
  *(v12 + 8) = sub_2688E19C4;
  *(v12 + 16) = v5;

  sub_268B38004();
  sub_268B37A04();

  sub_268AA6CE4(v15, v16, sub_268AA86E8, v9);

  v13 = OUTLINED_FUNCTION_11_12();
  v14(v13);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AA6CE4(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v33 = a2;
  v38 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = swift_allocObject();
  v35 = a3;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_268958D98;
  *(v13 + 24) = v12;
  v14 = qword_2802A4F30;
  v37 = a4;

  v36 = v12;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v16 = *(v7 + 16);
  v16(v11, v15, v6);
  v17 = sub_268B37A34();
  v18 = sub_268B37F04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "MoveSpeakerIntentHandler.resolveDestination() called", v19, 2u);
    MEMORY[0x26D6266E0](v19, -1, -1);
  }

  v20 = *(v7 + 8);
  v20(v11, v6);
  v21 = sub_268B1CC90(v38);
  if (v21)
  {
    v22 = v21;
    if (sub_2688EFD0C())
    {
      v23 = v33;
      sub_268920A60();
      sub_268B1CCB0(v38);
      v24 = swift_allocObject();
      v24[2] = sub_2688E19F8;
      v24[3] = v13;
      v24[4] = v23;
      v24[5] = v22;
      v25 = v23;
      sub_2688FDFDC();

      goto LABEL_12;
    }
  }

  v26 = v34;
  v16(v34, v15, v6);
  v27 = sub_268B37A34();
  v28 = sub_268B37EE4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "Could not find a device query. Returning error", v29, 2u);
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  v20(v26, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_268B3BBA0;
  type metadata accessor for MoveSpeakerDestinationsResolutionResult();
  *(v30 + 32) = sub_268B1CD38(2);
  v39 = v30;
  v35(&v39);

LABEL_12:
}

uint64_t sub_268AA710C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v121 = a5;
  v124 = sub_268B37464();
  v109 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v111 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  MEMORY[0x28223BE20](v120);
  v11 = &v102 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v114 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v102 - v16;
  MEMORY[0x28223BE20](v15);
  v122 = &v102 - v17;
  v18 = sub_268B37A54();
  v112 = *(v18 - 8);
  v113 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v110 = &v102 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v105 = &v102 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v102 - v26;
  v125 = a1;
  v28 = sub_2688EFD0C();
  if (v28)
  {
    v29 = v28;
    v107 = a3;
    v108 = a2;
    v30 = (a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState);
    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState), *(a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState + 24));
    v31 = sub_268B34C74();
    sub_268AA43C8(v125);
    if (v32)
    {
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      if ((sub_268B34D04() & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v30, v30[3]);
        if (((sub_268B34D24() | v31) & 1) == 0)
        {
          if (qword_2802A4F30 != -1)
          {
            goto LABEL_65;
          }

          goto LABEL_37;
        }
      }
    }

    v33 = 0;
    v34 = (v125 & 0xC000000000000001);
    v35 = v125 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v29 == v33)
      {
        goto LABEL_46;
      }

      if (v34)
      {
        v36 = MEMORY[0x26D625BD0](v33, v125);
      }

      else
      {
        if (v33 >= *(v35 + 16))
        {
          goto LABEL_60;
        }

        v36 = *(v125 + 8 * v33 + 32);
      }

      v37 = v36;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if ([v36 type] == 7)
      {
        sub_2689CB550();
        v45 = sub_2688EFD0C();

        if (v45 >= 2)
        {
          v102 = v34;
          v46 = v121;
          v47 = sub_2688EFD0C();
          v48 = 0;
          v118 = v46 & 0xC000000000000001;
          v119 = v47;
          v117 = v46 & 0xFFFFFFFFFFFFFF8;
          v116 = *MEMORY[0x277D5F868];
          v115 = (v109 + 13);
          v104 = (v109 + 4);
          ++v109;
          v49 = &qword_2802A5BA8;
          v34 = &qword_268B3C690;
          v103 = v11;
          while (1)
          {
            if (v119 == v48)
            {
              if (qword_2802A4F30 != -1)
              {
                swift_once();
              }

              v74 = v113;
              v75 = __swift_project_value_buffer(v113, qword_2802CDA10);
              v76 = v112;
              v77 = v105;
              (*(v112 + 16))(v105, v75, v74);
              v78 = sub_268B37A34();
              v79 = sub_268B37EE4();
              v80 = os_log_type_enabled(v78, v79);
              v81 = v108;
              if (v80)
              {
                v82 = swift_slowAlloc();
                *v82 = 0;
                _os_log_impl(&dword_2688BB000, v78, v79, "User asked for a single device matching a deviceType, but multiple devices were found. Returning an error", v82, 2u);
                MEMORY[0x26D6266E0](v82, -1, -1);
              }

              (*(v76 + 8))(v77, v74);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
              v83 = swift_allocObject();
              *(v83 + 16) = xmmword_268B3BBA0;
              type metadata accessor for MoveSpeakerDestinationsResolutionResult();
              *(v83 + 32) = sub_268B1CD38(1);
              v81(v83);
            }

            if (v118)
            {
              v50 = MEMORY[0x26D625BD0](v48, v121);
            }

            else
            {
              if (v48 >= *(v117 + 16))
              {
                goto LABEL_62;
              }

              v50 = *(v121 + 8 * v48 + 32);
            }

            v51 = v50;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_61;
            }

            v52 = v122;
            DeviceQuery.deviceQuantifier.getter();
            v54 = v123;
            v53 = v124;
            (*v115)(v123, v116, v124);
            __swift_storeEnumTagSinglePayload(v54, 0, 1, v53);
            v55 = *(v120 + 48);
            sub_2688F1FA4(v52, v11, v49, v34);
            sub_2688F1FA4(v54, &v11[v55], v49, v34);
            if (__swift_getEnumTagSinglePayload(v11, 1, v53) == 1)
            {
              break;
            }

            v56 = v123;
            v57 = v124;
            v58 = v114;
            sub_2688F1FA4(v11, v114, v49, v34);
            if (__swift_getEnumTagSinglePayload(&v11[v55], 1, v57) == 1)
            {

              sub_2688C058C(v56, v49, v34);
              sub_2688C058C(v122, v49, v34);
              (*v109)(v58, v57);
LABEL_31:
              sub_2688C058C(v11, &qword_2802A5BA0, &unk_268B41020);
              goto LABEL_33;
            }

            v59 = &v11[v55];
            v60 = v34;
            v61 = v49;
            v62 = v111;
            (*v104)(v111, v59, v57);
            sub_26899693C(&qword_2802A5BB0, MEMORY[0x277D5F880], MEMORY[0x277D5F890]);
            v106 = sub_268B37BB4();

            v63 = *v109;
            v64 = v62;
            v49 = v61;
            v34 = v60;
            v11 = v103;
            (*v109)(v64, v57);
            sub_2688C058C(v56, v49, v34);
            sub_2688C058C(v122, v49, v34);
            v63(v58, v57);
            sub_2688C058C(v11, v49, v34);
            if (v106)
            {
              goto LABEL_45;
            }

LABEL_33:
            ++v48;
          }

          sub_2688C058C(v123, v49, v34);
          sub_2688C058C(v52, v49, v34);
          if (__swift_getEnumTagSinglePayload(&v11[v55], 1, v124) == 1)
          {
            sub_2688C058C(v11, &qword_2802A5BA8, &qword_268B3C690);
LABEL_45:

            v34 = v102;
            goto LABEL_46;
          }

          goto LABEL_31;
        }

LABEL_46:
        if (qword_2802A4F30 == -1)
        {
LABEL_47:
          v84 = v113;
          v85 = __swift_project_value_buffer(v113, qword_2802CDA10);
          v86 = v112;
          v87 = v110;
          (*(v112 + 16))(v110, v85, v84);

          v88 = sub_268B37A34();
          v89 = sub_268B37F04();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v126 = v91;
            *v90 = 136315138;
            v92 = type metadata accessor for DeviceGroup();
            v93 = MEMORY[0x26D6256F0](v125, v92);
            v95 = sub_26892CDB8(v93, v94, &v126);

            *(v90 + 4) = v95;
            _os_log_impl(&dword_2688BB000, v88, v89, "Success resolving destination: %s.", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v91);
            MEMORY[0x26D6266E0](v91, -1, -1);
            MEMORY[0x26D6266E0](v90, -1, -1);
          }

          (*(v86 + 8))(v87, v84);
          v96 = sub_2688EFD0C();
          v27 = MEMORY[0x277D84F90];
          if (!v96)
          {
            goto LABEL_57;
          }

          v97 = v96;
          v126 = MEMORY[0x277D84F90];
          sub_268B38234();
          if ((v97 & 0x8000000000000000) == 0)
          {
            type metadata accessor for MoveSpeakerDestinationsResolutionResult();
            v98 = 0;
            do
            {
              if (v34)
              {
                v99 = MEMORY[0x26D625BD0](v98, v125);
              }

              else
              {
                v99 = *(v125 + 8 * v98 + 32);
              }

              v100 = v99;
              ++v98;
              sub_268B319C8(v99);

              sub_268B38214();
              sub_268B38244();
              sub_268B38254();
              sub_268B38224();
            }

            while (v97 != v98);
            v27 = v126;
LABEL_57:
            v108(v27);
          }

          __break(1u);
LABEL_65:
          swift_once();
LABEL_37:
          v65 = v113;
          v66 = __swift_project_value_buffer(v113, qword_2802CDA10);
          v67 = v112;
          (*(v112 + 16))(v27, v66, v65);
          v68 = sub_268B37A34();
          v69 = sub_268B37EE4();
          v70 = os_log_type_enabled(v68, v69);
          v71 = v108;
          if (v70)
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_2688BB000, v68, v69, "MoveSpeaker destination device is not TV or HomePod. Returning an error", v72, 2u);
            MEMORY[0x26D6266E0](v72, -1, -1);
          }

          (*(v67 + 8))(v27, v65);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_268B3BBA0;
          type metadata accessor for MoveSpeakerDestinationsResolutionResult();
          *(v73 + 32) = sub_268B1CD38(3);
          v71(v73);
        }

LABEL_63:
        swift_once();
        goto LABEL_47;
      }

      ++v33;
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v38 = v113;
  v39 = __swift_project_value_buffer(v113, qword_2802CDA10);
  v40 = v112;
  (*(v112 + 16))(v21, v39, v38);
  v41 = sub_268B37A34();
  v42 = sub_268B37EE4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "Could not resolve any destination for move speaker request.", v43, 2u);
    MEMORY[0x26D6266E0](v43, -1, -1);
  }

  (*(v40 + 8))(v21, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_268B3BBA0;
  type metadata accessor for MoveSpeakerDestinationsResolutionResult();
  *(v44 + 32) = sub_268B1CD38(1);
  a2(v44);
}

void sub_268AA7EA8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MoveSpeakerDestinationsResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_268AA7F14(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_268B37A34();
  v10 = sub_268B37F04();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2688BB000, v9, v10, "MoveSpeakerIntentHandler.confirm() called", v11, 2u);
    MEMORY[0x26D6266E0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
  v13 = MoveSpeakerIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v13);

  _Block_release(a3);
}

void sub_268AA80EC(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v5 + 16))(v9, v10, v3);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "MoveSpeakerIntentHandler.confirm() called", v13, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v5 + 8))(v9, v3);
  v14 = objc_allocWithZone(type metadata accessor for MoveSpeakerIntentResponse());
  v15 = MoveSpeakerIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

id MoveSpeakerIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MoveSpeakerIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268AA83B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v34[3] = sub_268B36C54();
  v34[4] = MEMORY[0x277D5F680];
  v34[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v33[3] = v10;
  v33[4] = &off_2879539D0;
  v33[0] = a4;
  v11 = type metadata accessor for MoveSpeakerIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v33, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v32[3] = v10;
  v32[4] = &off_2879539D0;
  v32[0] = v17;
  sub_26890C900(a3, v31);
  sub_26890C900(v32, &v29);
  sub_26890C900(a5, v28);
  sub_268B376A4();
  v18 = sub_268B37694();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  MEMORY[0x28223BE20](v19);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_26892D53C(a2, v31, *v21, v28, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceSelector] = v23;
  sub_26890C900(v34, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_playbackController]);
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_deviceState]);
  sub_26890C900(a3, v31);
  sub_26890C900(a5, &v29);
  type metadata accessor for AceServiceHelper();
  v24 = swift_allocObject();
  sub_2688E6514(v31, v24 + 16);
  sub_2688E6514(&v29, v24 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents24MoveSpeakerIntentHandler_aceServiceHelper] = v24;
  v27.receiver = v12;
  v27.super_class = v11;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  return v25;
}

uint64_t sub_268AA86B4()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268AA8704(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268B37A24() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

uint64_t sub_268AA88CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268AA890C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_268AA8960()
{
  result = qword_2802A5B40;
  if (!qword_2802A5B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802A5B38, &unk_268B51420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5B40);
  }

  return result;
}

uint64_t sub_268AA8A0C()
{
  sub_268AA8A78();
  result = sub_268B38084();
  qword_2802CDB28 = result;
  return result;
}

unint64_t sub_268AA8A78()
{
  result = qword_2802A7E08;
  if (!qword_2802A7E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A7E08);
  }

  return result;
}

uint64_t sub_268AA8ABC()
{
  v0 = sub_268B37A54();
  __swift_allocate_value_buffer(v0, qword_2802CDB30);
  __swift_project_value_buffer(v0, qword_2802CDB30);
  return sub_268B37A44();
}

uint64_t sub_268AA8B40()
{
  sub_268B366C4();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_103();

  return v1(v0);
}

uint64_t sub_268AA8BA0()
{
  if (qword_2802A5098 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_47();
  sub_268AABFC0(v0, v1, &unk_268B4B4F8);
  v2 = sub_268B35C64();
  if (v6)
  {
    v3 = v5;
    MEMORY[0x28223BE20](v2);
    if (sub_268ACD018())
    {

      return 0;
    }
  }

  else
  {
    if (qword_2802A5088 != -1)
    {
      swift_once();
    }

    sub_268B35C64();
    if (v5)
    {
      return 0;
    }

    if (qword_2802A4F40 != -1)
    {
      swift_once();
    }

    v3 = qword_2802CDA30;
  }

  return v3;
}

uint64_t sub_268AA8D70@<X0>(_BYTE *a1@<X8>)
{
  v35 = a1;
  v1 = sub_268B37924();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v33 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA0, &qword_268B3CE28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_20_0();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v31[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v31[-v19];
  if (qword_2802A5078 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_47();
  sub_268AABFC0(v21, v22, &unk_268B4B4F8);
  sub_268B35C64();
  v23 = *MEMORY[0x277D5F9F8];
  v34 = *(v3 + 104);
  v34(v18, v23, v1);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v1);
  v24 = *(v7 + 48);
  sub_2688C053C(v20, v10, &qword_2802A5CA8, &unk_268B3CE30);
  sub_2688C053C(v18, &v10[v24], &qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_14_22(v10);
  if (!v25)
  {
    sub_2688C053C(v10, v14, &qword_2802A5CA8, &unk_268B3CE30);
    OUTLINED_FUNCTION_14_22(&v10[v24]);
    if (!v25)
    {
      v27 = &v10[v24];
      v28 = v33;
      (*(v3 + 32))(v33, v27, v1);
      sub_268AABFC0(&qword_2802A5CB0, MEMORY[0x277D5FA18], MEMORY[0x277D5FA28]);
      v32 = sub_268B37BB4();
      v29 = *(v3 + 8);
      v29(v28, v1);
      sub_2688C058C(v18, &qword_2802A5CA8, &unk_268B3CE30);
      v29(v14, v1);
      sub_2688C058C(v10, &qword_2802A5CA8, &unk_268B3CE30);
      if (v32)
      {
        goto LABEL_14;
      }

      return sub_268954254(v20, v35, &qword_2802A5CA8, &unk_268B3CE30);
    }

    sub_2688C058C(v18, &qword_2802A5CA8, &unk_268B3CE30);
    (*(v3 + 8))(v14, v1);
LABEL_11:
    sub_2688C058C(v10, &qword_2802A5CA0, &qword_268B3CE28);
    return sub_268954254(v20, v35, &qword_2802A5CA8, &unk_268B3CE30);
  }

  sub_2688C058C(v18, &qword_2802A5CA8, &unk_268B3CE30);
  OUTLINED_FUNCTION_14_22(&v10[v24]);
  if (!v25)
  {
    goto LABEL_11;
  }

  sub_2688C058C(v10, &qword_2802A5CA8, &unk_268B3CE30);
LABEL_14:
  sub_2688C058C(v20, &qword_2802A5CA8, &unk_268B3CE30);
  v30 = v35;
  v34(v35, *MEMORY[0x277D5FA08], v1);
  return __swift_storeEnumTagSinglePayload(v30, 0, 1, v1);
}

uint64_t sub_268AA91F0()
{
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  v6 = (v4 - v5);
  MEMORY[0x28223BE20](v7);
  v48 = &v47 - v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v47 = &v47 - v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v12 = __swift_project_value_buffer(v0, qword_2802CDA10);
  v13 = *(v2 + 16);
  v14 = OUTLINED_FUNCTION_6_37();
  v13(v14);
  v15 = sub_268B37A34();
  v16 = sub_268B37F04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "Getting MediaType", v17, 2u);
    OUTLINED_FUNCTION_12();
  }

  v18 = *(v2 + 8);
  v19 = OUTLINED_FUNCTION_103();
  v18(v19);
  if (qword_2802A5048 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_0_47();
  sub_268AABFC0(v20, v21, &unk_268B4B4F8);
  sub_268B35C64();
  v22 = v49;
  if (v49 == 26)
  {
    (v13)(v6, v12, v0);
    v23 = sub_268B37A34();
    v24 = sub_268B37F04();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2688BB000, v23, v24, "No mediaType found the intent.", v25, 2u);
      OUTLINED_FUNCTION_12();
    }

    v26 = v6;
    goto LABEL_11;
  }

  if ((sub_268AAAC70() & 1) == 0)
  {
    v36 = v47;
    v37 = OUTLINED_FUNCTION_6_37();
    v13(v37);
    v38 = v36;
    v39 = sub_268B37A34();
    v40 = sub_268B37F04();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v42;
      *v41 = 136315138;
      v43 = sub_268942D54(v22);
      v45 = sub_26892CDB8(v43, v44, &v49);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2688BB000, v39, v40, "MediaType: %s found in the intent but it was not explicitly mentioned by the user. Returning nil mediaType", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (v18)(v38, v0);
      return 26;
    }

    v26 = v38;
LABEL_11:
    (v18)(v26, v0);
    return 26;
  }

  v28 = OUTLINED_FUNCTION_6_37();
  v13(v28);
  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49 = v32;
    *v31 = 136315138;
    v33 = sub_268942D54(v22);
    v35 = sub_26892CDB8(v33, v34, &v49);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_2688BB000, v29, v30, "Returning mediaType = %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (v18)(v48, v0);
  }

  else
  {

    v46 = OUTLINED_FUNCTION_103();
    v18(v46);
  }

  return v22;
}

uint64_t sub_268AA96E4()
{
  if (qword_2802A50A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_268AA9798()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EB8, &qword_268B4B350);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802A7E20 = result;
  return result;
}

uint64_t sub_268AA9800()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EE0, &qword_268B4B380);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(26, v1);
  qword_2802A7E28 = result;
  return result;
}

uint64_t sub_268AA9854()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7ED8, &qword_268B4B378);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(27, v1);
  qword_2802A7E30 = result;
  return result;
}

uint64_t sub_268AA98A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EC8, &qword_268B4B368);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(21, v1);
  qword_2802A7E38 = result;
  return result;
}

uint64_t sub_268AA98FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7ED0, &qword_268B4B370);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(23, v1);
  qword_2802A7E40 = result;
  return result;
}

uint64_t sub_268AA9950()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(23, v1);
  qword_2802A7E48 = result;
  return result;
}

uint64_t sub_268AA99A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EC0, &unk_268B4B358);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802A7E50 = result;
  return result;
}

uint64_t sub_268AA9A0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7E88, &qword_268B4B310);
  OUTLINED_FUNCTION_245(v0);
  OUTLINED_FUNCTION_1_25();
  result = OUTLINED_FUNCTION_7_13(18, v1);
  qword_2802A7E58 = result;
  return result;
}

uint64_t type metadata accessor for MediaPlayerNLv3Intent(uint64_t a1)
{
  result = qword_2802A7EF8;
  if (!qword_2802A7EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268AA9AD8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_245(v6);
  result = sub_268B35784();
  *a5 = result;
  return result;
}

uint64_t sub_268AA9B34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802A7E68 = result;
  return result;
}

uint64_t sub_268AA9B98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  swift_allocObject();
  result = sub_268B35784();
  qword_2802A7E70 = result;
  return result;
}

uint64_t sub_268AA9C08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3BBD0;
  if (qword_2802A5098 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A7E70;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  *(v0 + 56) = v2;
  v3 = sub_268A19C14(&qword_2802A71F0, &qword_2802A6A88, &unk_268B414B0);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_2802A5090;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2802A7E68;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  sub_268B356D4();
  swift_allocObject();

  result = sub_268B356C4();
  qword_2802A7E78 = result;
  return result;
}

uint64_t sub_268AA9D68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A71D8, &unk_268B48EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B4B300;
  if (qword_2802A5038 != -1)
  {
    swift_once();
  }

  v1 = qword_2802A7E10;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EF0, qword_268B4B398);
  *(v0 + 64) = sub_268A19C14(&qword_2802A7F28, &qword_2802A7EF0, qword_268B4B398);
  *(v0 + 32) = v1;
  v2 = qword_2802A5040;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_2802A7E18;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A88, &unk_268B414B0);
  *(v0 + 96) = v4;
  v5 = sub_268A19C14(&qword_2802A71F0, &qword_2802A6A88, &unk_268B414B0);
  *(v0 + 104) = v5;
  *(v0 + 72) = v3;
  v6 = qword_2802A50A0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2802A7E78;
  v8 = sub_268B356D4();
  v9 = MEMORY[0x277D5E210];
  *(v0 + 136) = v8;
  *(v0 + 144) = v9;
  *(v0 + 112) = v7;
  v10 = qword_2802A5048;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_2802A7E20;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EB8, &qword_268B4B350);
  *(v0 + 184) = sub_268A19C14(&qword_2802A7F30, &qword_2802A7EB8, &qword_268B4B350);
  *(v0 + 152) = v11;
  v12 = qword_2802A5050;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2802A7E28;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EE0, &qword_268B4B380);
  *(v0 + 224) = sub_268A19C14(&qword_2802A7F38, &qword_2802A7EE0, &qword_268B4B380);
  *(v0 + 192) = v13;
  v14 = qword_2802A5058;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_2802A7E30;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7ED8, &qword_268B4B378);
  *(v0 + 264) = sub_268A19C14(&qword_2802A7F40, &qword_2802A7ED8, &qword_268B4B378);
  *(v0 + 232) = v15;
  v16 = qword_2802A5068;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_2802A7E40;
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7ED0, &qword_268B4B370);
  *(v0 + 304) = sub_268A19C14(&qword_2802A7F48, &qword_2802A7ED0, &qword_268B4B370);
  *(v0 + 272) = v17;
  v18 = qword_2802A5060;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_2802A7E38;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EC8, &qword_268B4B368);
  *(v0 + 344) = sub_268A19C14(&qword_2802A7F50, &qword_2802A7EC8, &qword_268B4B368);
  *(v0 + 312) = v19;
  v20 = qword_2802A5070;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_2802A7E48;
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7170, &qword_268B442C0);
  *(v0 + 384) = sub_268A19C14(&qword_2802A71E8, &qword_2802A7170, &qword_268B442C0);
  *(v0 + 352) = v21;
  v22 = qword_2802A5078;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_2802A7E50;
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EC0, &unk_268B4B358);
  *(v0 + 424) = sub_268A19C14(&qword_2802A7F58, &qword_2802A7EC0, &unk_268B4B358);
  *(v0 + 392) = v23;
  v24 = qword_2802A5080;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_2802A7E58;
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7E88, &qword_268B4B310);
  *(v0 + 464) = sub_268A19C14(&qword_2802A7F60, &qword_2802A7E88, &qword_268B4B310);
  *(v0 + 432) = v25;
  v26 = qword_2802A5088;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_2802A7E60;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EE8, &unk_268B4B388);
  *(v0 + 504) = sub_268A19C14(&qword_2802A7F68, &qword_2802A7EE8, &unk_268B4B388);
  *(v0 + 472) = v27;
  v28 = qword_2802A4DC8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_2802A69D0;
  *(v0 + 536) = v4;
  *(v0 + 544) = v5;
  *(v0 + 512) = v29;
  v30 = qword_2802A4D88;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_2802A6990;
  *(v0 + 576) = v4;
  *(v0 + 584) = v5;
  *(v0 + 552) = v31;
  v32 = qword_2802A4D90;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_2802A6998;
  *(v0 + 616) = v4;
  *(v0 + 624) = v5;
  *(v0 + 592) = v33;
  v34 = qword_2802A4D98;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_2802A69A0;
  *(v0 + 656) = v4;
  *(v0 + 664) = v5;
  *(v0 + 632) = v35;
  v36 = qword_2802A4DA0;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_2802A69A8;
  *(v0 + 696) = v4;
  *(v0 + 704) = v5;
  *(v0 + 672) = v37;
  v38 = qword_2802A4DA8;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_2802A69B0;
  *(v0 + 736) = v4;
  *(v0 + 744) = v5;
  *(v0 + 712) = v39;
  v40 = qword_2802A4DB0;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_2802A69B8;
  *(v0 + 776) = v4;
  *(v0 + 784) = v5;
  *(v0 + 752) = v41;
  v42 = qword_2802A4DB8;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_2802A69C0;
  *(v0 + 816) = v4;
  *(v0 + 824) = v5;
  *(v0 + 792) = v43;
  v44 = qword_2802A4DC0;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = qword_2802A69C8;
  *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6AA0, &unk_268B4B530);
  *(v0 + 864) = sub_268A19C14(&qword_2802A71F8, &qword_2802A6AA0, &unk_268B4B530);
  *(v0 + 832) = v45;
  v46 = qword_2802A4DD0;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = qword_2802A69D8;
  *(v0 + 896) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A98, &unk_268B414C0);
  *(v0 + 904) = sub_268A19C14(&qword_2802A7200, &qword_2802A6A98, &unk_268B414C0);
  *(v0 + 872) = v47;
  v48 = qword_2802A4DD8;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = qword_2802A69E0;
  *(v0 + 936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6A90, &qword_268B4B540);
  *(v0 + 944) = sub_268A19C14(&qword_2802A7208, &qword_2802A6A90, &qword_268B4B540);
  *(v0 + 912) = v49;
  sub_268B35774();
  swift_allocObject();

  result = sub_268B35764();
  qword_2802A7E80 = result;
  return result;
}

uint64_t sub_268AAA778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v63 = v4;
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v66 = v6 - v5;
  v7 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v60 = v11 - v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  v62 = &v56[-v14];
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v56[-v16];
  v18 = sub_268B366C4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v24 = (v23 - v22);
  v65 = type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v28 = v27 - v26;
  v61 = *(v9 + 16);
  (v61)(v17, a1, v7);
  v29 = (*(v9 + 88))(v17, v7);
  v30 = *(v9 + 8);
  if (v29 == *MEMORY[0x277D5C128])
  {
    v30(a1, v7);
    (*(v9 + 96))(v17, v7);
    v31 = *(v20 + 32);
    v31(v24, v17, v18);
    v31(v28, v24, v18);
    v32 = v67;
    sub_268AAC008(v28, v67);
    v33 = 0;
    v34 = v32;
  }

  else
  {
    v59 = *(v9 + 8);
    v30(v17, v7);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v35 = v64;
    v36 = __swift_project_value_buffer(v64, qword_2802CDA10);
    v37 = v63;
    (*(v63 + 16))(v66, v36, v35);
    v38 = v62;
    v39 = v61;
    (v61)(v62, a1, v7);
    v40 = sub_268B37A34();
    v41 = sub_268B37F04();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v58 = a1;
      v43 = v42;
      v44 = swift_slowAlloc();
      v68 = v44;
      *v43 = 136315138;
      v57 = v41;
      v45 = OUTLINED_FUNCTION_103();
      v39(v45);
      v46 = sub_268B37C24();
      v48 = v47;
      v49 = v38;
      v50 = v59;
      v59(v49, v7);
      v51 = sub_26892CDB8(v46, v48, &v68);
      v52 = v37;
      v53 = v51;

      *(v43 + 4) = v53;
      _os_log_impl(&dword_2688BB000, v40, v57, "Unsupported parse while creating MediaPlayerNLv3Intent: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v50(v58, v7);
      (*(v52 + 8))(v66, v64);
    }

    else
    {

      v54 = v59;
      v59(a1, v7);
      v54(v38, v7);
      (*(v37 + 8))(v66, v35);
    }

    v33 = 1;
    v34 = v67;
  }

  return __swift_storeEnumTagSinglePayload(v34, v33, 1, v65);
}

uint64_t sub_268AAAC70()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  v102 = v0;
  v103 = v1;
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v94 = &v90 - v6;
  MEMORY[0x28223BE20](v5);
  v91 = &v90 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7E90, &qword_268B4B318);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7E98, &qword_268B4B320);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = &v90 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EA0, &qword_268B4B328);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v93 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EA8, &unk_268B4B330);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v90 - v17;
  v99 = sub_268B35934();
  v97 = *(v99 - 8);
  v19 = MEMORY[0x28223BE20](v99);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v98 = &v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6150, qword_268B412C0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v90 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7EB0, &unk_268B4B340);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v90 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7B98, &qword_268B494B8);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v90 - v30;
  v32 = sub_268B35A94();
  v100 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v101 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A5048 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  sub_268AABFC0(&qword_2802A5A98, type metadata accessor for MediaPlayerNLv3Intent, &unk_268B4B4F8);
  sub_268B35C54();
  v34 = sub_268B35C14();
  if (__swift_getEnumTagSinglePayload(v25, 1, v34) == 1)
  {
    v35 = &qword_2802A6150;
    v36 = qword_268B412C0;
    v37 = v25;
LABEL_7:
    sub_2688C058C(v37, v35, v36);
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);
LABEL_8:
    v40 = &qword_2802A7B98;
    v41 = &qword_268B494B8;
    v42 = v31;
LABEL_9:
    sub_2688C058C(v42, v40, v41);
LABEL_10:
    v43 = v103;
LABEL_11:
    v44 = v102;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v44, qword_2802CDA10);
    (*(v43 + 16))(v4, v45, v44);
    v46 = sub_268B37A34();
    v47 = sub_268B37F04();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2688BB000, v46, v47, "MediaType node is not inferred, or could not find origin details. isMediaTypeExplicitlyMentioned: true.", v48, 2u);
      MEMORY[0x26D6266E0](v48, -1, -1);
    }

    (*(v43 + 8))(v4, v44);
    return 1;
  }

  v38 = sub_268B35C04();
  (*(*(v34 - 8) + 8))(v25, v34);
  sub_268AABAF8(v38, v28);

  v39 = sub_268B35B14();
  if (__swift_getEnumTagSinglePayload(v28, 1, v39) == 1)
  {
    v35 = &qword_2802A7EB0;
    v36 = &unk_268B4B340;
    v37 = v28;
    goto LABEL_7;
  }

  sub_268B35AB4();
  (*(*(v39 - 8) + 8))(v28, v39);
  v50 = v32;
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    goto LABEL_8;
  }

  v52 = v100;
  v51 = v101;
  (*(v100 + 32))(v101, v31, v32);
  sub_268B35A74();
  v53 = v99;
  if (__swift_getEnumTagSinglePayload(v18, 1, v99) == 1)
  {
    (*(v52 + 8))(v51, v32);
    v40 = &qword_2802A7EA8;
    v41 = &unk_268B4B330;
    v42 = v18;
    goto LABEL_9;
  }

  v54 = v97;
  v55 = v98;
  v97[4](v98, v18, v53);
  v54[13](v21, *MEMORY[0x277D5E560], v53);
  v56 = sub_268920830(v55, v21);
  v57 = v54[1];
  (v57)(v21, v53);
  if ((v56 & 1) == 0)
  {
    (v57)(v55, v53);
    (*(v100 + 8))(v101, v32);
    goto LABEL_10;
  }

  v97 = v57;
  v58 = v96;
  v59 = v101;
  sub_268B35A84();
  v60 = sub_268B35954();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v60);
  v43 = v103;
  if (EnumTagSinglePayload == 1)
  {
    (v97)(v55, v53);
    (*(v100 + 8))(v59, v32);
    sub_2688C058C(v58, &qword_2802A7E98, &qword_268B4B320);
    goto LABEL_11;
  }

  v62 = v58;
  v63 = *(v60 - 8);
  if ((*(v63 + 88))(v62, v60) != *MEMORY[0x277D5E580])
  {
    (v97)(v55, v53);
    (*(v100 + 8))(v101, v32);
    (*(v63 + 8))(v62, v60);
    goto LABEL_11;
  }

  (*(v63 + 96))(v62, v60);
  v64 = v95;
  sub_268954254(v62, v95, &qword_2802A7EA0, &qword_268B4B328);
  v65 = v93;
  sub_2688C053C(v64, v93, &qword_2802A7EA0, &qword_268B4B328);
  v66 = sub_268B359A4();
  if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
  {
    sub_2688C058C(v65, &qword_2802A7EA0, &qword_268B4B328);
    v67 = v102;
    v68 = v94;
LABEL_36:
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v77 = __swift_project_value_buffer(v67, qword_2802CDA10);
    (*(v43 + 16))(v68, v77, v67);
    v78 = sub_268B37A34();
    v79 = sub_268B37EC4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = v64;
      v81 = v50;
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_2688BB000, v78, v79, "MediaType inferred, but no explanation found or explanation shows it was mentioned by the user. isMediaTypeExplicitlyMentioned: true", v82, 2u);
      MEMORY[0x26D6266E0](v82, -1, -1);

      (*(v43 + 8))(v68, v67);
      sub_2688C058C(v80, &qword_2802A7EA0, &qword_268B4B328);
      (v97)(v98, v53);
      (*(v100 + 8))(v101, v81);
    }

    else
    {

      (*(v43 + 8))(v68, v67);
      sub_2688C058C(v64, &qword_2802A7EA0, &qword_268B4B328);
      (v97)(v98, v53);
      (*(v100 + 8))(v101, v50);
    }

    return 1;
  }

  v69 = v92;
  sub_268B35994();
  (*(*(v66 - 8) + 8))(v65, v66);
  v70 = sub_268B35A14();
  v71 = __swift_getEnumTagSinglePayload(v69, 1, v70);
  v68 = v94;
  if (v71 == 1)
  {
    sub_2688C058C(v69, &qword_2802A7E90, &qword_268B4B318);
    v50 = v32;
    v67 = v102;
    goto LABEL_36;
  }

  v72 = sub_268B35A04();
  v74 = v73;
  (*(*(v70 - 8) + 8))(v69, v70);
  v50 = v32;
  v67 = v102;
  if (!v74)
  {
    goto LABEL_36;
  }

  if (v72 == 0xD00000000000001DLL && v74 == 0x8000000268B5C640)
  {
  }

  else
  {
    v76 = sub_268B38444();

    if ((v76 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v83 = __swift_project_value_buffer(v67, qword_2802CDA10);
  v84 = v91;
  (*(v43 + 16))(v91, v83, v67);
  v85 = sub_268B37A34();
  v86 = sub_268B37EC4();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = v67;
    v88 = v50;
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_2688BB000, v85, v86, "MediaType inferred, and the user didn't explicitly mention it. This is possibly a SmartPlay reformation. isMediaTypeExplicitlyMentioned: false", v89, 2u);
    MEMORY[0x26D6266E0](v89, -1, -1);

    (*(v43 + 8))(v84, v87);
    sub_2688C058C(v64, &qword_2802A7EA0, &qword_268B4B328);
    (v97)(v98, v53);
    (*(v100 + 8))(v101, v88);
  }

  else
  {

    (*(v43 + 8))(v84, v67);
    sub_2688C058C(v64, &qword_2802A7EA0, &qword_268B4B328);
    (v97)(v98, v53);
    (*(v100 + 8))(v101, v50);
  }

  return 0;
}

uint64_t sub_268AABAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_268B35B14();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_268B35B14();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_268AABBDC(uint64_t a1)
{
  v2 = sub_268AABFC0(&qword_2802A7F10, type metadata accessor for MediaPlayerNLv3Intent, &unk_268B4B4B8);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268AABC58(uint64_t a1)
{
  v2 = sub_268AABFC0(&qword_2802A7F10, type metadata accessor for MediaPlayerNLv3Intent, &unk_268B4B4B8);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_268AABCC4(uint64_t a1)
{
  v2 = sub_268AABFC0(&qword_2802A7F10, type metadata accessor for MediaPlayerNLv3Intent, &unk_268B4B4B8);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_268AABDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268AABE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_268B366C4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_268AABE54(uint64_t a1)
{
  result = sub_268AABFC0(&qword_2802A7F08, type metadata accessor for MediaPlayerNLv3Intent, &unk_268B4B3D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AABEAC(uint64_t a1)
{
  *(a1 + 8) = sub_268AABFC0(&qword_2802A7F10, type metadata accessor for MediaPlayerNLv3Intent, &unk_268B4B4B8);
  result = sub_268AABFC0(&qword_2802A7F18, type metadata accessor for MediaPlayerNLv3Intent, &unk_268B4B458);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268AABFC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268AAC008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerNLv3Intent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268AAC0B4(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_268B3BBA0;
    *(v4 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B34CF4() & 1) != 0 || (a2)
  {
    [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    MEMORY[0x26D6256C0]();
    OUTLINED_FUNCTION_0_48();
    if (v6)
    {
      OUTLINED_FUNCTION_1_52(v5);
      sub_268B37D14();
    }

    sub_268B37D44();
  }

  return v4;
}

uint64_t sub_268AAC1F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_268B3BBA0;
    *(v2 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2688C3308() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), (sub_268B34CF4()))
  {
    [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    MEMORY[0x26D6256C0]();
    OUTLINED_FUNCTION_0_48();
    if (v4)
    {
      OUTLINED_FUNCTION_1_52(v3);
      sub_268B37D14();
    }

    sub_268B37D44();
  }

  return v2;
}

uint64_t sub_268AAC34C(void *a1, uint64_t a2, _BYTE *a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_268B34D04())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_268B3BBA0;
    *(v5 + 32) = [objc_allocWithZone(MEMORY[0x277D47A78]) init];
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2688C3308())
  {
    v6 = sub_2688EFD0C();
    for (i = 0; v6 != i; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D625BD0](i, a2);
      }

      else
      {
        v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i >= v8)
        {
          goto LABEL_25;
        }

        v9 = *(a2 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = [v9 context];
      if (!v11)
      {
        goto LABEL_13;
      }

      v12 = v11;
      v13 = [v11 proximity];

      if ((v13 - 1) < 4)
      {
        goto LABEL_13;
      }

      if (v13)
      {
        result = sub_268B38474();
        __break(1u);
        return result;
      }

      v14 = [v10 context];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 nowPlayingMediaType];

        if (v16 == 7)
        {
          *a3 = 1;
          goto LABEL_21;
        }
      }

      else
      {
LABEL_13:
      }
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_268B34CF4();
  v18 = v5;
  if (v17)
  {
LABEL_21:
    [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    MEMORY[0x26D6256C0]();
    OUTLINED_FUNCTION_0_48();
    if (v19)
    {
LABEL_26:
      OUTLINED_FUNCTION_1_52(v8);
      sub_268B37D14();
    }

    sub_268B37D44();
    return v5;
  }

  return v18;
}

uint64_t sub_268AAC60C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7F70, qword_268B4B548);
  v6 = MEMORY[0x28223BE20](v36);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  sub_268B35E24();
  v12 = sub_268B35E34();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  v24 = v3;
  sub_268AACB70(v11, v9);
  v25 = *(v12 - 8);
  v26 = (*(v25 + 88))(v9, v12);
  if (v26 == *MEMORY[0x277D5E920])
  {
    v27 = MEMORY[0x277D5E630];
LABEL_22:
    v31 = *v27;
    v32 = sub_268B35AA4();
    (*(*(v32 - 8) + 104))(a1, v31, v32);
    v29 = a1;
    v30 = 0;
    v28 = v32;
    goto LABEL_23;
  }

  if (v26 == *MEMORY[0x277D5E978])
  {
    v27 = MEMORY[0x277D5E620];
    goto LABEL_22;
  }

  if (v26 == *MEMORY[0x277D5E970])
  {
    v27 = MEMORY[0x277D5E618];
    goto LABEL_22;
  }

  if (v26 == *MEMORY[0x277D5E940])
  {
    v27 = MEMORY[0x277D5E5E8];
    goto LABEL_22;
  }

  if (v26 == *MEMORY[0x277D5E948])
  {
    v27 = MEMORY[0x277D5E5F0];
    goto LABEL_22;
  }

  if (v26 == *MEMORY[0x277D5E928])
  {
    v27 = MEMORY[0x277D5E5E0];
    goto LABEL_22;
  }

  if (v26 == *MEMORY[0x277D5E950])
  {
    v27 = MEMORY[0x277D5E5F8];
    goto LABEL_22;
  }

  (*(v25 + 8))(v9, v12);
  v3 = v24;
LABEL_2:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v13, v2);

  v14 = sub_268B37A34();
  v15 = sub_268B37EE4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v35 = a1;
    v19 = v18;
    v37 = v18;
    *v17 = 136315138;
    sub_268B35E24();
    v20 = sub_268B37C24();
    v22 = sub_26892CDB8(v20, v21, &v37);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2688BB000, v14, v15, "UsoEntityCommonTimeUnit#getPeriod case not yet implemented %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v23 = v19;
    a1 = v35;
    MEMORY[0x26D6266E0](v23, -1, -1);
    MEMORY[0x26D6266E0](v17, -1, -1);

    (*(v34 + 8))(v5, v2);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v28 = sub_268B35AA4();
  v29 = a1;
  v30 = 1;
LABEL_23:
  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  return sub_268AACB08(v11);
}

uint64_t sub_268AACB08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7F70, qword_268B4B548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268AACB70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7F70, qword_268B4B548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268AACBE0()
{
  if (qword_2802A50B0 != -1)
  {
    swift_once();
  }

  v0 = sub_268B37BC4();
  v1 = MGGetSInt32Answer();

  swift_beginAccess();
  v2 = sub_26892E248(v1, qword_2802A7F78);
  swift_endAccess();
  return v2;
}

uint64_t sub_268AACC9C()
{
  result = sub_268B37B84();
  qword_2802A7F78 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x268AACDB8);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268AACDF4()
{
  result = qword_2802A7F80;
  if (!qword_2802A7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7F80);
  }

  return result;
}

uint64_t sub_268AACE48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v55 = a4;
  v56 = a5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v54);
  v53 = (&v51 - v6);
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v52 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v16 = __swift_project_value_buffer(v7, qword_2802CDA10);
    v17 = v8[2];
    v17(v15, v16, v7);
    v18 = sub_268B37A34();
    v19 = sub_268B37ED4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v51 = v17;
      *v20 = 0;
      _os_log_impl(&dword_2688BB000, v18, v19, "SeekTimeConfirmIntentStrategy.makePromptForConfirmation()", v20, 2u);
      v17 = v51;
      OUTLINED_FUNCTION_12();
    }

    v22 = v8[1];
    ++v8;
    v21 = v22;
    (v22)(v15, v7);
    v23 = sub_268B18100(a2);
    if (!v23)
    {
      break;
    }

    a2 = v23;
    v51 = v21;
    v24 = sub_2688EFD0C();
    if (!v24)
    {

      v21 = v51;
      break;
    }

    v25 = v24;
    v26 = v52;
    v17(v52, v16, v7);
    v15 = v26;
    v27 = sub_268B37A34();
    v11 = sub_268B37EC4();
    if (os_log_type_enabled(v27, v11))
    {
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v57 = v28;
      *v15 = 136315138;
      v29 = type metadata accessor for Device();
      v30 = MEMORY[0x26D6256F0](a2, v29);
      v8 = v31;
      v32 = sub_26892CDB8(v30, v31, &v57);

      *(v15 + 4) = v32;
      _os_log_impl(&dword_2688BB000, v27, v11, "Confirming devices: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      (v51)(v52, v7);
    }

    else
    {

      (v51)(v26, v7);
    }

    v7 = 0;
    v40 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v25 == v7)
      {

        sub_268AB1E30(v40, v55, v56);
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x26D625BD0](v7, a2);
      }

      else
      {
        if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v41 = *(a2 + 8 * v7 + 32);
      }

      v8 = v41;
      v11 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v42 = sub_268988580(v41);
      if (v43)
      {
        v44 = v42;
        v15 = v43;

        goto LABEL_23;
      }

      v44 = sub_268988568(v8);
      v15 = v45;

      ++v7;
      if (v15)
      {
LABEL_23:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689876A4();
          v40 = v49;
        }

        v46 = *(v40 + 16);
        v47 = v40;
        if (v46 >= *(v40 + 24) >> 1)
        {
          sub_2689876A4();
          v47 = v50;
        }

        *(v47 + 16) = v46 + 1;
        v40 = v47;
        v48 = v47 + 16 * v46;
        *(v48 + 32) = v44;
        *(v48 + 40) = v15;
        v7 = v11;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  v17(v11, v16, v7);
  v33 = sub_268B37A34();
  v34 = sub_268B37EE4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2688BB000, v33, v34, "Could not find any devices in the intent for confirmation", v35, 2u);
    OUTLINED_FUNCTION_12();
  }

  (v21)(v11, v7);
  sub_2688C2ECC();
  v36 = swift_allocError();
  *v37 = 50;
  v38 = v53;
  *v53 = v36;
  swift_storeEnumTagMultiPayload();
  v55(v38);
  return sub_268919854(v38);
}

void sub_268AAD45C()
{
  type metadata accessor for SeekTimeConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268AAD4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SeekTimeConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AAD59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SeekTimeConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268AAD62C(uint64_t a1)
{
  result = sub_268AAD654();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268AAD654()
{
  result = qword_2802A7F88;
  if (!qword_2802A7F88)
  {
    type metadata accessor for SeekTimeConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7F88);
  }

  return result;
}

uint64_t sub_268AAD6A8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v49);
  v50 = (&v48 - v6);
  v7 = sub_268B37A54();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  inited = &v48 - v13;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v15 = __swift_project_value_buffer(v7, qword_2802CDA10);
    v16 = *(v8 + 16);
    v16(inited, v15, v7);
    v17 = sub_268B37A34();
    v18 = sub_268B37ED4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2688BB000, v17, v18, "WhatDidTheySayConfirmIntentStrategy.makeDialogForConfirmation()", v19, 2u);
      OUTLINED_FUNCTION_12();
    }

    v20 = *(v8 + 8);
    v20(inited, v7);
    v21 = [a2 device];
    if (!v21)
    {
      break;
    }

    a2 = v21;
    v16(v53, v15, v7);
    v22 = a2;
    v23 = sub_268B37A34();
    v24 = sub_268B37EC4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = a2;
      v27 = v22;
      _os_log_impl(&dword_2688BB000, v23, v24, "Confirming device: %@", v25, 0xCu);
      sub_2688EF38C(v26, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v20(v53, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBA0;
    *(inited + 32) = v22;
    v8 = inited & 0xFFFFFFFFFFFFFF8;
    v7 = v22;
    v28 = MEMORY[0x277D84F90];
    if ((inited & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x26D625BD0](0, inited);
LABEL_10:
      v30 = v29;
      v31 = sub_268988580(v29);
      if (v32)
      {
        v33 = v31;
        v34 = v32;

        goto LABEL_13;
      }

      v33 = sub_268988568(v30);
      v34 = v35;

      if (v34)
      {
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689876A4();
          v28 = v38;
        }

        v36 = *(v28 + 16);
        if (v36 >= *(v28 + 24) >> 1)
        {
          sub_2689876A4();
          v28 = v39;
        }

        *(v28 + 16) = v36 + 1;
        v37 = v28 + 16 * v36;
        *(v37 + 32) = v33;
        *(v37 + 40) = v34;
      }

      swift_setDeallocating();
      sub_268ACE718();
      sub_268A38304(v28, v51, v52);
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(inited + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v41 = v48;
  v16(v48, v15, v7);
  v42 = sub_268B37A34();
  v43 = sub_268B37EE4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "Could not find any devices in the intent for confirmation", v44, 2u);
    OUTLINED_FUNCTION_12();
  }

  v20(v41, v7);
  sub_2688C2ECC();
  v45 = swift_allocError();
  *v46 = -111;
  v47 = v50;
  *v50 = v45;
  swift_storeEnumTagMultiPayload();
  v51(v47);
  return sub_2688EF38C(v47, &qword_2802A6300, &unk_268B3BD80);
}

void sub_268AADC88()
{
  type metadata accessor for WhatDidTheySayConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268AADD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for WhatDidTheySayConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AADDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for WhatDidTheySayConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268AADE64(uint64_t a1)
{
  result = sub_268AADE8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268AADE8C()
{
  result = qword_2802A7F90;
  if (!qword_2802A7F90)
  {
    type metadata accessor for WhatDidTheySayConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7F90);
  }

  return result;
}

void sub_268AADEE0(uint64_t x8_0@<X8>)
{
  *&v2 = OUTLINED_FUNCTION_183_1(x8_0);
  *(v3 + 76) = v2;
  *(v3 + 96) = v4;
}

void sub_268AADF00(uint64_t x8_0@<X8>)
{
  *&v2 = OUTLINED_FUNCTION_183_1(x8_0);
  *(v3 + 76) = v2;
  *(v3 + 92) = v4;
}

void sub_268AADF24(uint64_t x8_0@<X8>)
{
  *&v2 = OUTLINED_FUNCTION_183_1(x8_0);
  *(v3 + 77) = v2;
  *(v3 + 93) = v4;
}

void sub_268AADF44()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8328, &qword_268B4D088);
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  v2 = sub_268AC2CB8();
  OUTLINED_FUNCTION_25_13(&type metadata for DialogProvider.PausedParameters.CodingKeys, v3, v2);
  v11[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v4 = OUTLINED_FUNCTION_36_9();
    sub_268AC2D0C(v4, v5);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v6 = OUTLINED_FUNCTION_39_7();
    memcpy(v6, v7, v8);
    sub_268AC1E28(v11, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
  }

  v9 = OUTLINED_FUNCTION_59_3();
  v10(v9);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268AAE0F0()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8338, &qword_268B4D090);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  v3 = sub_268AC2CB8();
  OUTLINED_FUNCTION_21_12(&type metadata for DialogProvider.PausedParameters.CodingKeys, v4, v3);
  if (v1)
  {
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_141_1();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v5 = OUTLINED_FUNCTION_36_11();
    sub_268918D64(v5);
  }

  else
  {
    v22 = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    v6 = sub_268B38344();
    OUTLINED_FUNCTION_98_3(v6);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v7 = v21[14];
    v9 = v21[15];
    v8 = v21[16];
    v30 = v21[17];
    v20 = v21[18];
    OUTLINED_FUNCTION_3_43();
    sub_268AC1E28(v21, &qword_2802A5C88);
    OUTLINED_FUNCTION_4_28(4);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(5);
    sub_268B38344();
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    v10 = OUTLINED_FUNCTION_17_19();
    v11(v10);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_93_7();
    OUTLINED_FUNCTION_24_17();
    v13 = OUTLINED_FUNCTION_119_1(v12);
    sub_268AC2D0C(v13, v14);
    OUTLINED_FUNCTION_138_1(v0);
    v23 = v19;
    OUTLINED_FUNCTION_179_1();
    v24 = v15;
    v25 = v7;
    v26 = v9;
    v27 = v8;
    v28 = v30;
    v29 = v20;
    OUTLINED_FUNCTION_23_20();
    v16 = OUTLINED_FUNCTION_113_2();
    sub_268918D64(v16);
    v17 = OUTLINED_FUNCTION_176_1();
    memcpy(v17, v18, 0x5CuLL);
  }

  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_198();
}