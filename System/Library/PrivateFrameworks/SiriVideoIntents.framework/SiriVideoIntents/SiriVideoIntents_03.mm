id sub_2696CE250(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_269851C84();
    sub_2696CE4BC(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() imageWithData_];

  return v5;
}

id sub_2696CE2D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269851C74();
  v5 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) != 1)
  {
    v5 = sub_269851C24();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v6 = [v2 initWithURL_];

  return v6;
}

void sub_2696CE37C(uint64_t a1, void *a2)
{
  sub_26969329C(0, &qword_2803233C0, 0x277D4C598);
  v3 = sub_269854CA4();

  [a2 setDescriptions_];
}

uint64_t sub_2696CE400(void *a1)
{
  v1 = [a1 _imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269851C94();

  return v3;
}

uint64_t sub_2696CE464(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2696CE4BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2696C1F3C(result, a2);
  }

  return result;
}

double sub_2696CE4DC(double a1, double a2)
{
  v2 = 624.0 / a2;
  if (531.0 / a1 < 624.0 / a2)
  {
    v2 = 531.0 / a1;
  }

  return v2 * a1;
}

uint64_t sub_2696CE508(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_2698548D4();
  v3[22] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v3[23] = v5;
  v3[24] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269851E84();
  v3[25] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v3[26] = v7;
  v3[27] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269851B94();
  v3[28] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v3[29] = v9;
  v3[30] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269851D34();
  v3[31] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v3[32] = v11;
  v3[33] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_2696CE6A0);
}

uint64_t sub_2696CE6A0()
{
  if ([*(v0 + 168) type] == 4)
  {
    if (*(v0 + 160))
    {
      v1 = *(v0 + 168);

      sub_269830930(v1);
    }

    goto LABEL_8;
  }

  sub_2696ADDE8(*(v0 + 152), v0 + 112, &qword_280323398, &unk_26985BAF0);
  if (!*(v0 + 136))
  {
    sub_269698048(v0 + 112, &qword_280323398, &unk_26985BAF0);
LABEL_8:
    OUTLINED_FUNCTION_12_8();

    v18 = OUTLINED_FUNCTION_10_7();

    return v19(v18);
  }

  v2 = *(v0 + 168);
  v3 = *(v0 + 128);
  *(v0 + 72) = *(v0 + 112);
  *(v0 + 88) = v3;
  *(v0 + 104) = *(v0 + 144);
  v4 = [v2 releaseDate];
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 264);
    v7 = *(v0 + 240);
    v37 = *(v0 + 256);
    v38 = *(v0 + 248);
    v8 = *(v0 + 232);
    v36 = *(v0 + 224);
    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    v39 = *(v0 + 200);
    sub_269851D14();

    sub_269851E54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803232E8, &unk_26985A3A0);
    v11 = sub_269851E64();
    OUTLINED_FUNCTION_8();
    v13 = v12;
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_269857710;
    (*(v13 + 104))(v15 + v14, *MEMORY[0x277CC9988], v11);
    sub_2698318AC();
    sub_269851E34();

    (*(v9 + 8))(v10, v39);
    v40 = sub_269851B84();
    v17 = v16;
    (*(v8 + 8))(v7, v36);
    (*(v37 + 8))(v6, v38);
  }

  else
  {
    v40 = 0;
    v17 = 1;
  }

  v21 = [*(v0 + 168) seasonCount];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 integerValue];
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v0 + 168);
  v25 = sub_269831F5C(v24);
  v27 = v26;
  *(v0 + 272) = v26;
  sub_269831FBC(v24);
  if (v28 && (v29 = *(v0 + 168), , sub_269831FC8(v29), v30))
  {

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v0 + 168);
  v33 = [v32 type];
  v34 = [v32 type] == 2 || objc_msgSend(*(v0 + 168), sel_type) == 3;
  *(v0 + 304) = v17 & 1;
  *(v0 + 312) = v22 == 0;
  *(v0 + 16) = v40;
  *(v0 + 24) = *(v0 + 304);
  *(v0 + 32) = v23;
  *(v0 + 40) = *(v0 + 312);
  *(v0 + 48) = v25;
  *(v0 + 56) = v27;
  *(v0 + 64) = v31;
  *(v0 + 65) = v33 == 1;
  *(v0 + 66) = v34;
  v35 = swift_task_alloc();
  *(v0 + 280) = v35;
  *v35 = v0;
  v35[1] = sub_2696CEAF8;

  return sub_2696C0164();
}

uint64_t sub_2696CEAF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_2696CED88;
  }

  else
  {
    *(v4 + 296) = a1;

    v5 = sub_2696CEC28;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2696CEC28()
{
  v1 = *(v0 + 296);
  v2 = [v1 dialog];

  sub_2696D1EC4();
  v3 = sub_269854CB4();

  if (sub_26975004C())
  {
    sub_269750050();
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D646120](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;

    v6 = [v5 fullPrint];

    sub_269854A94();
    sub_2696D1E70(v0 + 72);
  }

  else
  {
    sub_2696D1E70(v0 + 72);
  }

  OUTLINED_FUNCTION_12_8();

  v7 = OUTLINED_FUNCTION_10_7();

  return v8(v7);
}

uint64_t sub_2696CED88()
{

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v1 = v0[36];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F14();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_269684000, v7, v8, "Unable to craft metadata: %@", v10, 0xCu);
    sub_269698048(v11, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v14 = v0[36];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[22];

  (*(v16 + 8))(v15, v17);
  sub_2696D1E70((v0 + 9));

  v18 = v0[1];

  return v18(0, 0);
}

void sub_2696CEF80()
{
  v1 = sub_2697C6B44(v0);
  if (v1)
  {
    v2 = sub_26975004C();
    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {

        return;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D646120](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      if ([v4 type] == 2)
      {
        break;
      }
    }

    v6 = [v5 width];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 height];
      if (v8)
      {
        v9 = v8;
        v10 = sub_2696D2728(v5);
        if (v11)
        {
          v12 = v10;
          v13 = v11;
          sub_2696D2734(v5);
          if (v14)
          {
            v15 = [v7 stringValue];
            v16 = sub_269854A94();
            v81 = v12;
            v18 = v17;

            v84 = v16;
            v19 = sub_269693054();
            v20 = MEMORY[0x277D837D0];
            OUTLINED_FUNCTION_7_14(v19, v21, v22, v23, v24, v25, v26, v27, MEMORY[0x277D837D0], v19, v19, v19, v78, v81, v84, v18, 123);
            OUTLINED_FUNCTION_4_14();
            sub_269855104(v28, v29, v30, v31, v32, v33, v20, v20, v66, v69, v72, v75);

            v34 = [v9 stringValue];
            v35 = sub_269854A94();
            v37 = v36;

            OUTLINED_FUNCTION_7_14(v38, v39, v40, v41, v42, v43, v44, v45, v67, v70, v19, v19, v79, v82, v35, v37, 123);
            OUTLINED_FUNCTION_4_14();
            sub_269855104(v46, v47, v48, v49, v50, v51, v20, v20, v20, v19, v73, v76);

            OUTLINED_FUNCTION_7_14(v52, v53, v54, v55, v56, v57, v58, v59, v68, v71, v19, v19, v80, v83, v83, v13, 123);
            OUTLINED_FUNCTION_4_14();
            sub_269855104(v60, v61, v62, v63, v64, v65, v20, v20, v20, v19, v74, v77);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2696CF28C(unint64_t a1)
{
  if (a1 >= 5)
  {
    result = sub_2698555D4();
    __break(1u);
  }

  else
  {

    return sub_269854A94();
  }

  return result;
}

id sub_2696CF2E8(char *a1)
{
  v126 = sub_269852084();
  OUTLINED_FUNCTION_8();
  v124 = v2;
  MEMORY[0x28223BE20](v3);
  v119 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_13();
  v122 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v120 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12();
  v121 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v108 = &v108 - v10;
  OUTLINED_FUNCTION_2_13();
  sub_269852304();
  OUTLINED_FUNCTION_8();
  v111 = v12;
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12();
  v109 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v110 = &v108 - v16;
  OUTLINED_FUNCTION_2_13();
  sub_269852234();
  OUTLINED_FUNCTION_8();
  v115 = v18;
  v116 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12();
  v113 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v114 = &v108 - v22;
  OUTLINED_FUNCTION_2_13();
  sub_2698521B4();
  OUTLINED_FUNCTION_8();
  v117 = v24;
  v118 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v108 - v29;
  v31 = sub_269852004();
  OUTLINED_FUNCTION_8();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v108 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233C8, &unk_26985E990);
  MEMORY[0x28223BE20](v41 - 8);
  OUTLINED_FUNCTION_12();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v108 - v46;
  v125 = a1;
  sub_269852064();
  v48 = sub_269852024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v48);
  v50 = v126;
  v123 = v47;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_2;
  }

  sub_2696ADDE8(v47, v44, &qword_2803233C8, &unk_26985E990);
  v68 = *(v48 - 8);
  v69 = (*(v68 + 88))(v44, v48);
  if (v69 == *MEMORY[0x277D393A0])
  {
    v70 = OUTLINED_FUNCTION_6_12();
    v71(v70);
    (*(v33 + 32))(v40, v44, v31);
    (*(v33 + 16))(v37, v40, v31);
    v72 = sub_2696CFCF8(v37);
    (*(v33 + 8))(v40, v31);
LABEL_17:
    v74 = v72;
    sub_269698048(v123, &qword_2803233C8, &unk_26985E990);
    v93 = v125;
    v94 = sub_269852034();
    sub_2696C97B8(v94, v95, v74, &selRef_setSummary_);
    v96 = sub_269852044();
    sub_2696C97B8(v96, v97, v74, &selRef_setEntityExperienceUrl_);
    v98 = sub_269852054();
    sub_2696C97B8(v98, v99, v74, &selRef_setMachineGeneratedUtterance_);

    (*(v124 + 8))(v93, v126);
    return v74;
  }

  if (v69 == *MEMORY[0x277D393B0])
  {
    v75 = OUTLINED_FUNCTION_6_12();
    v76(v75);
    v78 = v117;
    v77 = v118;
    (*(v117 + 32))(v30, v44, v118);
    (*(v78 + 16))(v27, v30, v77);
    v72 = sub_2696D02A4(v27);
    (*(v78 + 8))(v30, v77);
    goto LABEL_17;
  }

  if (v69 == *MEMORY[0x277D393B8])
  {
    v79 = OUTLINED_FUNCTION_6_12();
    v80(v79);
    v82 = v114;
    v81 = v115;
    v83 = OUTLINED_FUNCTION_11_8();
    v84 = v116;
    v85(v83);
    v86 = v113;
    (*(v81 + 16))(v113, v82, v84);
    v87 = sub_2696D08F4(v86);
LABEL_16:
    v72 = v87;
    (*(v81 + 8))(v82, v84);
    goto LABEL_17;
  }

  if (v69 == *MEMORY[0x277D393C0])
  {
    v88 = OUTLINED_FUNCTION_6_12();
    v89(v88);
    v82 = v110;
    v81 = v111;
    v90 = OUTLINED_FUNCTION_11_8();
    v84 = v112;
    v91(v90);
    v92 = v109;
    (*(v81 + 16))(v109, v82, v84);
    v87 = sub_2696D0F80(v92);
    goto LABEL_16;
  }

  if (v69 == *MEMORY[0x277D393A8])
  {
    v101 = v122;
    v102 = v120;
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v103 = __swift_project_value_buffer(v101, qword_28033D910);
    v104 = v108;
    (*(v102 + 16))(v108, v103, v101);
    v105 = sub_2698548B4();
    v106 = sub_269854F14();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_269684000, v105, v106, "Received a Person result. Will not attempt to convert to a Content type. Returning nil", v107, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v124 + 8))(v125, v126);
    (*(v102 + 8))(v104, v101);
    (*(v68 + 8))(v44, v48);
    goto LABEL_9;
  }

  (*(v68 + 8))(v44, v48);
  v50 = v126;
LABEL_2:
  v51 = v50;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v52 = v122;
  v53 = __swift_project_value_buffer(v122, qword_28033D910);
  v55 = v120;
  v54 = v121;
  (*(v120 + 16))(v121, v53, v52);
  v57 = v124;
  v56 = v125;
  v58 = v119;
  (*(v124 + 16))(v119, v125, v51);
  v59 = sub_2698548B4();
  v60 = sub_269854F24();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v127 = v62;
    *v61 = 136315138;
    sub_2696D1D94();
    v63 = sub_2698544D4();
    v65 = v64;
    v66 = *(v57 + 8);
    v66(v58, v51);
    v67 = sub_26974F520(v63, v65, &v127);

    *(v61 + 4) = v67;
    _os_log_impl(&dword_269684000, v59, v60, "Unexpected VideoResult type in PegasusResponse: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v66(v125, v51);
    (*(v55 + 8))(v121, v122);
  }

  else
  {

    v73 = *(v57 + 8);
    v73(v56, v51);
    v73(v58, v51);
    (*(v55 + 8))(v54, v52);
  }

LABEL_9:
  sub_269698048(v123, &qword_2803233C8, &unk_26985E990);
  return 0;
}

id sub_2696CFCF8(uint64_t a1)
{
  v57 = sub_269851F64();
  v3 = *(v57 - 8);
  v4 = MEMORY[0x28223BE20](v57);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v53 - v8;
  v10 = sub_269851D34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v1);
  v15 = sub_269854A64();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  v18 = sub_269851FD4();
  sub_2696C97B8(v18, v19, v17, &selRef_setName_);
  v20 = sub_269851F24();
  sub_2696C97B8(v20, v21, v17, &selRef_setUmcId_);
  [v17 setType_];
  if (*(sub_269851FE4() + 16))
  {

    v22 = sub_269854A64();
  }

  else
  {

    v22 = 0;
  }

  [v17 setGenre_];

  if (sub_269851FB4() >= 1)
  {
    sub_269851FB4();
    sub_269851CF4();
    v23 = sub_269851CD4();
    (*(v11 + 8))(v13, v10);
    [v17 setReleaseDate_];
  }

  sub_269851F94();
  sub_269851C64();

  v24 = sub_269851C74();
  v25 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v24) != 1)
  {
    v25 = sub_269851C24();
    (*(*(v24 - 8) + 8))(v9, v24);
  }

  [v17 setDetailsUrl_];

  v26 = sub_269851FF4();
  v27 = *(v26 + 16);
  if (v27)
  {
    v54 = v17;
    v55 = a1;
    v62 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v28 = type metadata accessor for ContentImage();
    v30 = *(v3 + 16);
    v29 = v3 + 16;
    v60 = v30;
    v61 = v28;
    v31 = *(v29 + 64);
    v53 = v26;
    v32 = v26 + ((v31 + 32) & ~v31);
    v34 = v56;
    v33 = v57;
    v59 = *(v29 + 56);
    v35 = v58;
    do
    {
      v36 = v60;
      v60(v35, v32, v33);
      v36(v34, v35, v33);
      sub_2696D22A0(v34);
      (*(v29 - 8))(v35, v33);
      sub_269855284();
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v32 += v59;
      --v27;
    }

    while (v27);

    v37 = v62;
    v17 = v54;
    a1 = v55;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  sub_2697C6BA4(v37, v17);
  v38 = sub_269851FA4();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = sub_269851FA4();
    sub_2696C97B8(v42, v43, v17, &selRef_setRatingValue_);
  }

  v44 = sub_269851FC4();
  v46 = v45;

  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v48 = sub_269851FC4();
    sub_2696C97B8(v48, v49, v17, &selRef_setRatingSystem_);
  }

  sub_269851F84();
  v50 = sub_269855644();
  [v17 setRuntimeInMinutes_];

  v51 = sub_269852004();
  (*(*(v51 - 8) + 8))(a1, v51);
  return v17;
}

id sub_2696D02A4(uint64_t a1)
{
  v56 = sub_269851F64();
  v3 = *(v56 - 8);
  v4 = MEMORY[0x28223BE20](v56);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_269851D34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v1);
  v15 = sub_269854A64();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  v18 = sub_269851FD4();
  sub_2696C97B8(v18, v19, v17, &selRef_setName_);
  v20 = sub_269851F24();
  sub_2696C97B8(v20, v21, v17, &selRef_setUmcId_);
  [v17 setType_];
  if (*(sub_269851FE4() + 16))
  {

    v22 = sub_269854A64();
  }

  else
  {

    v22 = 0;
  }

  [v17 setGenre_];

  if (sub_269851FB4() >= 1)
  {
    sub_269851FB4();
    sub_269851CF4();
    v23 = sub_269851CD4();
    (*(v11 + 8))(v13, v10);
    [v17 setReleaseDate_];
  }

  if (sub_269852134() >= 1)
  {
    sub_269852134();
    sub_269851CF4();
    v24 = sub_269851CD4();
    (*(v11 + 8))(v13, v10);
    [v17 setFinaleDate_];
  }

  sub_269852144();
  sub_269851C64();

  v25 = sub_269851C74();
  v26 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v25) != 1)
  {
    v26 = sub_269851C24();
    (*(*(v25 - 8) + 8))(v9, v25);
  }

  [v17 setDetailsUrl_];

  v27 = sub_2698521A4();
  v28 = *(v27 + 16);
  if (v28)
  {
    v53 = v17;
    v54 = a1;
    v61 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v29 = type metadata accessor for ContentImage();
    v31 = *(v3 + 16);
    v30 = v3 + 16;
    v59 = v31;
    v60 = v29;
    v32 = *(v30 + 64);
    v52 = v27;
    v33 = v27 + ((v32 + 32) & ~v32);
    v35 = v55;
    v34 = v56;
    v58 = *(v30 + 56);
    v36 = v57;
    do
    {
      v37 = v59;
      v59(v36, v33, v34);
      v37(v35, v36, v34);
      sub_2696D22A0(v35);
      (*(v30 - 8))(v36, v34);
      sub_269855284();
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v33 += v58;
      --v28;
    }

    while (v28);

    v38 = v61;
    v17 = v53;
    a1 = v54;
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  sub_2697C6BA4(v38, v17);
  if (sub_269852124() > 0)
  {
    sub_269852124();
    v39 = sub_269855644();
    [v17 setSeasonCount_];
  }

  v40 = sub_269851FC4();
  sub_2696D16F4(v40, v41);
  v43 = v42;

  if (v43)
  {
    v44 = sub_269854A64();
  }

  else
  {
    v44 = 0;
  }

  [v17 setRatingValue_];

  v45 = sub_269852164();
  sub_2696D16F4(v45, v46);
  v48 = v47;

  if (v48)
  {
    v49 = sub_269854A64();
  }

  else
  {
    v49 = 0;
  }

  [v17 setRatingSystem_];

  v50 = sub_2698521B4();
  (*(*(v50 - 8) + 8))(a1, v50);
  return v17;
}

id sub_2696D08F4(uint64_t a1)
{
  v62 = sub_269851F64();
  v3 = *(v62 - 8);
  v4 = MEMORY[0x28223BE20](v62);
  v64 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v58 - v8;
  v10 = sub_269851D34();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2698521B4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v1);
  v18 = sub_269854A64();
  v19 = [v17 initWithIdentifier:0 displayString:v18];

  v20 = v19;
  sub_269852204();
  v21 = sub_269851FD4();
  v23 = v22;
  v24 = *(v14 + 8);
  v61 = v16;
  v24(v16, v13);
  sub_2696C97B8(v21, v23, v20, &selRef_setName_);
  v25 = sub_269851F24();
  sub_2696C97B8(v25, v26, v20, &selRef_setUmcId_);
  [v20 setType_];

  if (sub_2698521F4() >= 1)
  {
    sub_2698521F4();
    sub_269851CF4();
    v27 = sub_269851CD4();
    (*(v66 + 8))(v12, v67);
    [v20 setReleaseDate_];
  }

  sub_2698521E4();
  sub_269851C64();

  v28 = sub_269851C74();
  v29 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v28) != 1)
  {
    v29 = sub_269851C24();
    (*(*(v28 - 8) + 8))(v9, v28);
  }

  [v20 setDetailsUrl_];

  v30 = sub_269852214();
  v31 = *(v30 + 16);
  if (v31)
  {
    v59 = v20;
    v60 = a1;
    v68 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v32 = type metadata accessor for ContentImage();
    v34 = *(v3 + 16);
    v33 = v3 + 16;
    v66 = v34;
    v67 = v32;
    v35 = *(v33 + 64);
    v58[1] = v30;
    v36 = v30 + ((v35 + 32) & ~v35);
    v38 = v62;
    v37 = v63;
    v65 = *(v33 + 56);
    v39 = v64;
    do
    {
      v40 = v66;
      (v66)(v37, v36, v38);
      v40(v39, v37, v38);
      sub_2696D22A0(v39);
      (*(v33 - 8))(v37, v38);
      sub_269855284();
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v36 += v65;
      --v31;
    }

    while (v31);

    v41 = v68;
    v20 = v59;
    a1 = v60;
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  sub_2697C6BA4(v41, v20);
  v42 = sub_269852144();
  v44 = v43;

  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    v46 = sub_269852144();
    sub_2696C97B8(v46, v47, v20, &selRef_setSeasonNumber_);
  }

  if (sub_269852224())
  {
    type metadata accessor for Content();
    v48 = v61;
    sub_269852204();
    v49 = sub_2696D02A4(v48);
    [v20 setShow_];
  }

  v50 = [v20 show];
  if (v50 && (sub_2696D1E04(v50, &selRef_ratingValue), v51))
  {
    v52 = sub_269854A64();
  }

  else
  {
    v52 = 0;
  }

  [v20 setRatingValue_];

  v53 = [v20 show];
  if (v53 && (sub_2696D1E04(v53, &selRef_ratingSystem), v54))
  {
    v55 = sub_269854A64();
  }

  else
  {
    v55 = 0;
  }

  [v20 setRatingSystem_];

  v56 = sub_269852234();
  (*(*(v56 - 8) + 8))(a1, v56);
  return v20;
}

id sub_2696D0F80(uint64_t a1)
{
  v3 = sub_269852234();
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_269851F64();
  v75 = *(v72 - 8);
  v5 = MEMORY[0x28223BE20](v72);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v70 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v66 - v9;
  v76 = sub_269851D34();
  v11 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2698521B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(v1);
  v19 = sub_269854A64();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  sub_2698522B4();
  v22 = sub_269851FD4();
  v24 = v23;
  v25 = *(v15 + 8);
  v69 = v17;
  v25(v17, v14);
  sub_2696C97B8(v22, v24, v21, &selRef_setName_);
  v26 = sub_269852264();
  sub_2696C97B8(v26, v27, v21, &selRef_setUmcId_);
  [v21 setType_];

  if (sub_2698522A4() >= 1)
  {
    sub_2698522A4();
    sub_269851CF4();
    v28 = sub_269851CD4();
    (*(v11 + 8))(v13, v76);
    [v21 setReleaseDate_];
  }

  sub_269852294();
  sub_269851C64();

  v29 = sub_269851C74();
  v30 = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v29) != 1)
  {
    v30 = sub_269851C24();
    (*(*(v29 - 8) + 8))(v10, v29);
  }

  [v21 setDetailsUrl_];

  v31 = sub_2698522C4();
  v32 = *(v31 + 16);
  v33 = v73;
  if (v32)
  {
    v67 = v21;
    v68 = a1;
    v77 = MEMORY[0x277D84F90];
    sub_2698552A4();
    v34 = type metadata accessor for ContentImage();
    v35 = v75 + 16;
    v75 = *(v75 + 16);
    v76 = v34;
    v36 = *(v35 + 64);
    v66 = v31;
    v37 = v31 + ((v36 + 32) & ~v36);
    v74 = *(v35 + 56);
    v38 = v71;
    v39 = v72;
    v40 = v70;
    do
    {
      v41 = v75;
      (v75)(v40, v37, v39);
      v41(v38, v40, v39);
      sub_2696D22A0(v38);
      (*(v35 - 8))(v40, v39);
      sub_269855284();
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v37 += v74;
      --v32;
    }

    while (v32);

    v42 = v77;
    v21 = v67;
    a1 = v68;
    v33 = v73;
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  sub_2697C6BA4(v42, v21);
  v43 = sub_269852274();
  v45 = v44;

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    v47 = sub_269852274();
    sub_2696C97B8(v47, v48, v21, &selRef_setSeasonNumber_);
  }

  v49 = sub_269852284();
  v51 = v50;

  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    v53 = sub_269852284();
    sub_2696C97B8(v53, v54, v21, &selRef_setEpisodeNumber_);
  }

  if (sub_2698522E4())
  {
    type metadata accessor for Content();
    v55 = v69;
    sub_2698522B4();
    v56 = sub_2696D02A4(v55);
    [v21 setShow_];
  }

  if (sub_2698522F4())
  {
    type metadata accessor for Content();
    sub_2698522D4();
    v57 = sub_2696D08F4(v33);
    [v21 setSeason_];
  }

  v58 = [v21 show];
  if (v58 && (sub_2696D1E04(v58, &selRef_ratingValue), v59))
  {
    v60 = sub_269854A64();
  }

  else
  {
    v60 = 0;
  }

  [v21 setRatingValue_];

  v61 = [v21 show];
  if (v61 && (sub_2696D1E04(v61, &selRef_ratingSystem), v62))
  {
    v63 = sub_269854A64();
  }

  else
  {
    v63 = 0;
  }

  [v21 setRatingSystem_];

  v64 = sub_269852304();
  (*(*(v64 - 8) + 8))(a1, v64);
  return v21;
}

uint64_t sub_2696D16F4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

void sub_2696D1748()
{
  v1 = sub_2697C6B44(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_26975004C();
    v4 = 0;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 == v4)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D646120](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_2696D24E4(v19);
      v9 = v19[0];
      v8 = v19[1];
      v10 = v20;
      v18 = v21;

      ++v4;
      if (v8)
      {
        v11 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26977C1C0();
          v11 = v15;
        }

        v12 = *(v11 + 16);
        v17 = v11;
        v13 = v18;
        if (v12 >= *(v11 + 24) >> 1)
        {
          sub_26977C1C0();
          v13 = v18;
          v17 = v16;
        }

        *(v17 + 16) = v12 + 1;
        v14 = v17 + 40 * v12;
        *(v14 + 32) = v9;
        *(v14 + 40) = v8;
        *(v14 + 48) = v10;
        *(v14 + 56) = v13;
        v4 = v7;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

unint64_t sub_2696D18D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v26 = 0, v27 = 1, sub_269854E94(), (v27 & 1) != 0) || (v10 = v26, v10 >= sub_26975004C()))
  {

    return a2;
  }

  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v11 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v6 + 16))(v9, v11, v4);
  v12 = sub_2698548B4();
  v13 = sub_269854F14();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_269684000, v12, v13, "Filtering to %ld items due to VOX", v14, 0xCu);
    OUTLINED_FUNCTION_10();
  }

  (*(v6 + 8))(v9, v4);

  v15 = sub_269771B1C(v10, a2);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2698555A4();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v21 >> 1, v19))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v25 != (v21 >> 1) - v19)
  {
LABEL_19:
    swift_unknownObjectRelease();
LABEL_9:
    sub_2697E0BB4(v15, v17, v19, v21);
    a2 = v22;
    swift_unknownObjectRelease();
    return a2;
  }

  a2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!a2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return a2;
}

void *sub_2696D1B74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_2696D1F08();
  v2 = sub_269854A04();
  v3 = sub_26975004C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D646120](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_26977E46C(v5);
    v9 = v8;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_26973CFEC(v7, v9);
    if (__OFADD__(v2[2], (v11 & 1) == 0))
    {
      goto LABEL_21;
    }

    v12 = v10;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233E8, &qword_26985A578);
    if (sub_2698552E4())
    {
      v14 = sub_26973CFEC(v7, v9);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_24;
      }

      v12 = v14;
    }

    if (v13)
    {
    }

    else
    {
      v2[(v12 >> 6) + 8] |= 1 << v12;
      v16 = (v2[6] + 16 * v12);
      *v16 = v7;
      v16[1] = v9;
      *(v2[7] + 8 * v12) = 0;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
    }

    v20 = v2[7];
    v21 = *(v20 + 8 * v12);
    v18 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v18)
    {
      goto LABEL_22;
    }

    *(v20 + 8 * v12) = v22;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

unint64_t sub_2696D1D94()
{
  result = qword_2803233D0;
  if (!qword_2803233D0)
  {
    sub_269852084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803233D0);
  }

  return result;
}

uint64_t sub_2696D1E04(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_269854A94();

  return v4;
}

unint64_t sub_2696D1EC4()
{
  result = qword_2803233D8;
  if (!qword_2803233D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803233D8);
  }

  return result;
}

unint64_t sub_2696D1F08()
{
  result = qword_2803233E0;
  if (!qword_2803233E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803233E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_8()
{
}

uint64_t sub_2696D2010@<X0>(double a1@<D0>, double a2@<D1>, uint64_t a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X8>)
{
  v6 = v5;
  sub_2696CD57C(v6, &selRef_templateUrl);
  if (v12)
  {
    v13 = a4;
    if (a4)
    {
LABEL_5:
      v90 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_269857710;
      *(v15 + 56) = MEMORY[0x277D85048];
      v16 = sub_2696D27A4();
      *(v15 + 64) = v16;
      *(v15 + 32) = a1;

      v93 = sub_269854AB4();
      v94 = v17;
      v18 = sub_269693054();
      v19 = MEMORY[0x277D837D0];
      v27 = OUTLINED_FUNCTION_1_11(v18, v20, v21, v22, v23, v24, v25, v26, MEMORY[0x277D837D0], v18, v18, v18, 1, 2, a5, v90, v93, v94, 123);
      OUTLINED_FUNCTION_0_18(v27, v28, v29, v30, v31, v32, v33, v34, v73, v76, v79, v82);

      v35 = swift_allocObject();
      *(v35 + 16) = v85;
      *(v35 + 56) = MEMORY[0x277D85048];
      *(v35 + 64) = v16;
      *(v35 + 32) = a2;
      v36 = sub_269854AB4();
      v44 = OUTLINED_FUNCTION_1_11(v36, v37, v38, v39, v40, v41, v42, v43, v74, v77, v18, v18, v85, *(&v85 + 1), v88, v91, v36, v37, 123);
      OUTLINED_FUNCTION_0_18(v44, v45, v46, v47, v48, v49, v50, v51, v19, v18, v80, v83);

      v60 = OUTLINED_FUNCTION_1_11(v52, v53, v54, v55, v56, v57, v58, v59, v75, v78, v18, v18, v86, v87, v89, v92, a3, v92, 123);
      OUTLINED_FUNCTION_0_18(v60, v61, v62, v63, v64, v65, v66, v67, v19, v18, v81, v84);

      sub_269851C64();
    }

    v14 = sub_2696CD57C(v6, &selRef_format);
    if (v13)
    {
      a3 = v14;
      goto LABEL_5;
    }
  }

  sub_269851C74();
  v69 = OUTLINED_FUNCTION_3_0();

  return __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
}

id sub_2696D22A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269851F14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v2);
  v9 = sub_269854A64();
  v10 = [v8 initWithIdentifier:0 displayString:v9];

  v11 = v10;
  sub_269851F54();
  v12 = sub_269855644();
  [v11 setHeight_];

  sub_269851F44();
  v13 = sub_269855644();
  [v11 setWidth_];

  v14 = sub_269851F24();
  sub_2696D2740(v14, v15, v11);

  sub_269851F34();
  v16 = (*(v5 + 88))(v7, v4);
  if (v16 == *MEMORY[0x277D392D0])
  {
    [v11 setType_];
  }

  else
  {
    v17 = v16;
    v18 = *MEMORY[0x277D392C8];
    v19 = v11;
    if (v17 == v18)
    {
      [v19 setType_];
    }

    else
    {
      [v19 setType_];
      (*(v5 + 8))(v7, v4);
    }
  }

  sub_2697C6C18(6778986, 0xE300000000000000, v11);

  v20 = sub_269851F64();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v11;
}

void sub_2696D24E4(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2696CD57C(v1, &selRef_templateUrl);
  v6 = v5;
  if (!v5)
  {
    v7 = 0;
LABEL_11:
    v15 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v7 = v4;
  v8 = [v2 width];
  if (!v8)
  {

LABEL_10:
    v7 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v2 height];
  if (!v10)
  {

    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v2 type];
  v13 = [v9 integerValue];
  v14 = [v11 integerValue];

  if (v12 == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * (v12 == 2);
  }

LABEL_12:
  *a1 = v7;
  a1[1] = v6;
  a1[2] = v15;
  a1[3] = v13;
  a1[4] = v14;
}

uint64_t sub_2696D261C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 height];
  if (v3 && (v4 = v3, [v3 doubleValue], v6 = v5, v4, (v7 = objc_msgSend(v1, sel_width)) != 0))
  {
    v8 = v7;
    [v7 doubleValue];
    v10 = v9;

    v11 = 531.0 / v10;
    if (531.0 / v10 >= 624.0 / v6)
    {
      v11 = 624.0 / v6;
    }

    v12 = v10 * v11;
    v13 = v6 * v11;

    return sub_2696D2010(v12, v13, 6778986, 0xE300000000000000, a1);
  }

  else
  {
    sub_269851C74();
    v15 = OUTLINED_FUNCTION_3_0();

    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }
}

void sub_2696D2740(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setTemplateUrl_];
}

unint64_t sub_2696D27A4()
{
  result = qword_2803233F8;
  if (!qword_2803233F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803233F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_269855104(a1, a2, 0, 0, 0, 1, v12, v12, a9, a10, a11, a12);
}

unint64_t SKIDirectInvocation.Video.rawValue.getter(char a1)
{
  result = 0xD00000000000002ALL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD00000000000002DLL;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

id SKIDirectInvocation.Video.newPayload(userData:)(uint64_t a1, char a2)
{
  sub_2696D2930();
  v4 = SKIDirectInvocation.Video.rawValue.getter(a2);
  v6 = sub_2696D2974(v4, v5);
  if (a1)
  {
    sub_2696D319C(a1, v6);
  }

  return v6;
}

unint64_t sub_2696D2930()
{
  result = qword_280323400;
  if (!qword_280323400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323400);
  }

  return result;
}

id sub_2696D2974(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_269854A64();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

unint64_t SKIDirectInvocation.Video.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2698553E4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2696D2A64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SKIDirectInvocation.Video.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2696D2A94@<X0>(unint64_t *a1@<X8>)
{
  result = SKIDirectInvocation.Video.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2696D2AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449636D556C6C61 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

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

uint64_t sub_2696D2BF0(char a1)
{
  if (!a1)
  {
    return 0x6554686372616573;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 0x6449636D556C6C61;
}

uint64_t sub_2696D2C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696D2AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696D2C88(uint64_t a1)
{
  v2 = sub_2696D3210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696D2CC4(uint64_t a1)
{
  v2 = sub_2696D3210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SKIDirectInvocation.ReformSearchToThirdPartyPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323408, &unk_26985A5E0);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696D3210();
  sub_2698556F4();
  v15 = 0;
  sub_2698554E4();
  if (!v2)
  {
    v14 = 1;
    sub_2698554C4();
    v13 = *(v3 + 32);
    v12[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    sub_2696D3264(&qword_280323418, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_269855514();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t SKIDirectInvocation.ReformSearchToThirdPartyPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323420, &qword_26985A5F0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696D3210();
  sub_2698556E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v6 = sub_269855464();
  v8 = v7;
  v15 = v6;
  v13 = sub_269855414();
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  sub_2696D3264(&qword_280323428, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_269855494();
  v10 = OUTLINED_FUNCTION_0_19();
  v11(v10);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  return result;
}

double sub_2696D313C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  SKIDirectInvocation.ReformSearchToThirdPartyPayload.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

void sub_2696D319C(uint64_t a1, void *a2)
{
  v3 = sub_2698549D4();
  [a2 setUserData_];
}

unint64_t sub_2696D3210()
{
  result = qword_280323410;
  if (!qword_280323410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323410);
  }

  return result;
}

uint64_t sub_2696D3264(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322878, &qword_2698587A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2696D32D4()
{
  result = qword_280323430;
  if (!qword_280323430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323430);
  }

  return result;
}

unint64_t sub_2696D332C()
{
  result = qword_280323438;
  if (!qword_280323438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323440, &qword_26985A698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323438);
  }

  return result;
}

uint64_t _s5VideoOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5VideoOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2696D34F4(uint64_t a1, int a2)
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

uint64_t sub_2696D3534(uint64_t result, int a2, int a3)
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

_BYTE *_s31ReformSearchToThirdPartyPayloadV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2696D366C()
{
  result = qword_280323448;
  if (!qword_280323448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323448);
  }

  return result;
}

unint64_t sub_2696D36C4()
{
  result = qword_280323450;
  if (!qword_280323450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323450);
  }

  return result;
}

unint64_t sub_2696D371C()
{
  result = qword_280323458;
  if (!qword_280323458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323458);
  }

  return result;
}

void sub_2696D3780()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4350]) init];
  if (v1)
  {
    v4 = v1;
    v2 = sub_269854A64();
    [v4 setSystemExtensionBundleId_];

    v3 = sub_269854A64();
    [v4 setLaunchId_];

    [v0 _setMetadata_];
  }
}

uint64_t sub_2696D386C(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 1196314451;
    case 2:
      return 0x4D55424C41;
    case 3:
      return 0x545349545241;
    case 4:
      v4 = 1380861255;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 5:
      return 0x5453494C59414C50;
    case 6:
    case 15:
      return 0x5F54534143444F50;
    case 7:
      return 0x5F54534143444F50;
    case 8:
      return 0xD000000000000010;
    case 9:
      v3 = 0x5F434953554DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x5453000000000000;
    case 10:
      return 0x4F425F4F49445541;
    case 11:
      v4 = 1230393165;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 12:
      return 0x574F48535F5654;
    case 13:
      return 0x5F574F48535F5654;
    case 14:
      return 0x49565F434953554DLL;
    case 16:
      v3 = 0x5F4F49444152;
      return v3 & 0xFFFFFFFFFFFFLL | 0x5453000000000000;
    case 17:
      v2 = 0x4F4954415453;
      return v2 & 0xFFFFFFFFFFFFLL | 0x4E000000000000;
    case 18:
      return 0x434953554DLL;
    case 19:
      return 0xD000000000000019;
    case 20:
      return 1398228302;
    default:
      v2 = 0x574F4E4B4E55;
      return v2 & 0xFFFFFFFFFFFFLL | 0x4E000000000000;
  }
}

uint64_t sub_2696D3A90()
{
  v1 = [v0 modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_2696D3B90();
  v3 = sub_2698549E4();

  sub_26981D0E8(v3, &v6);

  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2696D3BE8(&v6);
    return 0;
  }
}

unint64_t sub_2696D3B90()
{
  result = qword_2803229A0;
  if (!qword_2803229A0)
  {
    type metadata accessor for MLModelMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803229A0);
  }

  return result;
}

uint64_t sub_2696D3BE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F88, qword_26985AB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2696D3C74()
{
  OUTLINED_FUNCTION_19_1();
  v30 = v1;
  v29 = sub_269852564();
  OUTLINED_FUNCTION_8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = sub_269852584();
  OUTLINED_FUNCTION_8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = sub_269851ED4();
  OUTLINED_FUNCTION_8();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323460, &qword_26985A8B8);
  v23 = OUTLINED_FUNCTION_8_9(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_9();
  sub_269851EE4();
  sub_269851EC4();
  (*(v17 + 8))(v21, v15);
  v24 = sub_269852574();
  (*(v10 + 8))(v14, v8);
  sub_269771CD0(v24);

  v25 = sub_269852254();
  if (__swift_getEnumTagSinglePayload(v0, 1, v25) == 1)
  {
    sub_26969B0C0(v0, &qword_280323460, &qword_26985A8B8);
    v26 = 1;
    v27 = v30;
  }

  else
  {
    sub_269852244();
    (*(*(v25 - 8) + 8))(v0, v25);
    v27 = v30;
    sub_269852554();
    (*(v3 + 8))(v7, v29);
    v26 = 0;
  }

  v28 = sub_269852474();
  __swift_storeEnumTagSinglePayload(v27, v26, 1, v28);
  OUTLINED_FUNCTION_21_0();
}

void sub_2696D3F48()
{
  OUTLINED_FUNCTION_19_1();
  v4 = v3;
  v73 = sub_2698520B4();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v71 = v8 - v9;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  v70 = v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323468, &qword_26985A8C0);
  v13 = OUTLINED_FUNCTION_8_9(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_9();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242F0, &qword_26985F360);
  OUTLINED_FUNCTION_8();
  v74 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12();
  v76 = v17 - v18;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v19);
  v72 = v67 - v20;
  v75 = sub_269852084();
  OUTLINED_FUNCTION_8();
  v79 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12();
  v78 = (v23 - v24);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_8();
  v26 = 0;
  v27 = *(v4 + 16);
  v77 = MEMORY[0x277D84F90];
  while (v27 != v26)
  {
    OUTLINED_FUNCTION_18_5();
    sub_2696D4538((v4 + v28 + *(v6 + 72) * v26), v1);
    if (__swift_getEnumTagSinglePayload(v1, 1, v14) == 1)
    {
      sub_26969B0C0(v1, &qword_280323468, &qword_26985A8C0);
      ++v26;
    }

    else
    {
      v29 = v72;
      sub_2696D4D04(v1, v72);
      sub_2696D4D04(v29, v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26977C290(0, *(v77 + 16) + 1, 1, v77);
        v77 = v38;
      }

      v32 = *(v77 + 16);
      v31 = *(v77 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v68 = v32 + 1;
        sub_26977C290(v31 > 1, v32 + 1, 1, v77);
        v33 = v68;
        v77 = v39;
      }

      ++v26;
      *(v77 + 16) = v33;
      OUTLINED_FUNCTION_18_5();
      sub_2696D4D04(v37, v35 + v34 + *(v36 + 72) * v32);
      v0 = v69;
    }
  }

  v40 = sub_2696D4D74(v77);
  v41 = sub_269852464();
  v80 = MEMORY[0x277D84F90];
  v67[0] = v41;
  v42 = *(v41 + 16);
  if (v42)
  {
    v74 = v40;
    v43 = type metadata accessor for Content();
    v44 = *(v79 + 16);
    v45 = v67[0] + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v76 = *(v79 + 72);
    v77 = v43;
    v68 = v6 + 32;
    v69 = v6 + 16;
    v67[1] = v6 + 8;
    v79 += 16;
    v46 = (v79 - 8);
    v47 = v75;
    do
    {
      v44(v2, v45, v47);
      v48 = v78;
      v44(v78, v2, v47);
      v49 = sub_2696CF2E8(v48);
      if (v49)
      {
        v50 = v49;
        v51 = sub_26977E470(v49);
        if (v52)
        {
          if (*(v74 + 16))
          {
            v53 = sub_26973CEF8(v51, v52);
            v55 = v54;

            if (v55)
            {
              v56 = v73;
              v57 = *(v74 + 56) + *(v6 + 72) * v53;
              v58 = v71;
              (*(v6 + 16))(v71, v57, v73);
              v59 = v70;
              (*(v6 + 32))(v70, v58, v56);
              type metadata accessor for ResultEntity();
              v60 = sub_2698520A4();
              v72 = v61;
              v62 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v63 = sub_2697C01B0(v60, v72, 0, 0xE000000000000000);
              v64 = sub_269852094();
              sub_2696D66F8(v64, v65, v63);
              [v50 setResultEntity_];

              (*(v6 + 8))(v59, v73);
            }
          }

          else
          {
          }
        }

        v47 = v75;
        v66 = (*v46)(v2, v75);
        MEMORY[0x26D645B90](v66);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        sub_269854CF4();
      }

      else
      {
        (*v46)(v2, v47);
      }

      v45 += v76;
      --v42;
    }

    while (v42);
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2696D4538@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v68 = sub_269853C34();
  v66 = *(v68 - 8);
  v3 = MEMORY[0x28223BE20](v68);
  v65 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323480, &qword_26985A8D8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v58 - v10;
  v12 = sub_2698544B4();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323488, &qword_26986AAD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v58 - v14;
  v16 = sub_269853B44();
  v69 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269852094();
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  sub_2698544A4();
  sub_2696D683C(&qword_280323490, MEMORY[0x277D5DAD8], MEMORY[0x277D5DAD0]);
  v19 = v71;
  sub_2698544C4();
  if (v19)
  {

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_26969B0C0(v15, &qword_280323488, &qword_26986AAD0);
    goto LABEL_4;
  }

  v64 = v9;
  v21 = v67;
  v20 = v68;
  v71 = a1;
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  v22 = v69;
  (*(v69 + 32))(v18, v15, v16);
  v27 = sub_269853B54();
  v28 = sub_269853D24();
  if (!v28)
  {
    (*(v22 + 8))(v18, v16);
LABEL_23:

    goto LABEL_4;
  }

  v29 = v28;
  sub_269853DB4();
  if (!*(&v73 + 1))
  {
    (*(v22 + 8))(v18, v16);

    sub_26969B0C0(&v72, &qword_280322F88, qword_26985AB90);
    goto LABEL_4;
  }

  sub_269853DC4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v22 + 8))(v18, v16);

    goto LABEL_23;
  }

  v58[1] = v29;
  v58[2] = v27;
  v59 = v16;
  v60 = v18;
  v30 = v75;

  v31 = sub_269853BF4();
  v58[0] = v30;

  v32 = *(v31 + 16);
  v33 = v20;
  v34 = v66;
  v61 = v11;
  v35 = v21;
  v36 = v31;
  if (!v32)
  {
LABEL_19:

    v44 = 1;
LABEL_26:
    v45 = v71;
    v46 = v65;
    v47 = v61;
    __swift_storeEnumTagSinglePayload(v61, v44, 1, v33);
    v48 = v64;
    sub_26969B138(v47, v64, &qword_280323480, &qword_26985A8D8);
    if (__swift_getEnumTagSinglePayload(v48, 1, v33) != 1)
    {
      (*(v34 + 32))(v46, v48, v33);
      v49 = v34;
      v50 = v33;
      v51 = sub_269853C14();
      v53 = v52;

      (*(v49 + 8))(v46, v50);
      sub_26969B0C0(v61, &qword_280323480, &qword_26985A8D8);
      (*(v69 + 8))(v60, v59);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242F0, &qword_26985F360);
      v55 = *(v54 + 48);
      v56 = v70;
      *v70 = v51;
      v56[1] = v53;
      v57 = sub_2698520B4();
      (*(*(v57 - 8) + 16))(v56 + v55, v45, v57);
      v24 = v56;
      v25 = 0;
      v23 = v54;
      return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
    }

    sub_26969B0C0(v61, &qword_280323480, &qword_26985A8D8);
    (*(v69 + 8))(v60, v59);
LABEL_4:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242F0, &qword_26985F360);
    v24 = v70;
    v25 = 1;
    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
  }

  v37 = v32;
  v38 = 0;
  v63 = v31 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
  v62 = v66 + 16;
  v39 = (v66 + 8);
  while (v38 < *(v36 + 16))
  {
    (*(v34 + 16))(v35, v63 + *(v34 + 72) * v38, v33);
    v40 = sub_269853C24();
    if (v41)
    {
      if (v40 == 6516085 && v41 == 0xE300000000000000)
      {

LABEL_25:

        v34 = v66;
        v33 = v20;
        (*(v66 + 32))(v61, v35, v20);
        v44 = 0;
        goto LABEL_26;
      }

      v43 = sub_269855584();

      if (v43)
      {
        goto LABEL_25;
      }
    }

    ++v38;
    v33 = v20;
    result = (*v39)(v35, v20);
    v34 = v66;
    if (v37 == v38)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2696D4D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242F0, &qword_26985F360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696D4D74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323470, &qword_26985A8C8);
    v3 = sub_2698553C4();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2696D62F8(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_2696D4E0C()
{
  OUTLINED_FUNCTION_19_1();
  v0 = sub_2698523F4();
  OUTLINED_FUNCTION_8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = sub_269852444();
  v8 = *(v7 + 16);
  if (v8)
  {
    sub_2698552A4();
    type metadata accessor for UtsSearchParam();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = *(v2 + 16);
    v21 = ObjCClassFromMetadata;
    OUTLINED_FUNCTION_18_5();
    v11 = v7 + v10;
    v13 = *(v12 + 56);
    v14 = (v12 - 8);
    do
    {
      v20(v6, v11, v0);
      v15 = objc_allocWithZone(v21);
      v16 = sub_2697C01B0(0, 0, 0, 0xE000000000000000);
      v17 = sub_269851F24();
      sub_2696D676C(v17, v18, v16);
      v19 = sub_2698523E4();
      sub_2696D67D0(v19, v16);
      (*v14)(v6, v0);
      sub_269855284();
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v11 += v13;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_2696D4FC8()
{
  OUTLINED_FUNCTION_19_1();
  sub_269852534();
  OUTLINED_FUNCTION_8();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v5 = (v4 - v3);
  v6 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277D052B0]) init];
  OUTLINED_FUNCTION_7_15(v7);
  v8 = sub_269851F24();
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_4_15();
  v9(v10);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v11 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v11, sel_setFullPrint_);

  OUTLINED_FUNCTION_7_15(v12);
  sub_269851FD4();
  v13 = OUTLINED_FUNCTION_1_12();
  v9(v13);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v14 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v14, sel_setFullSpeak_);

  OUTLINED_FUNCTION_7_15(v15);
  sub_2698524B4();
  v16 = OUTLINED_FUNCTION_1_12();
  v9(v16);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v17 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v17, sel_setRedactedFullPrint_);

  OUTLINED_FUNCTION_7_15(v18);
  sub_2698524C4();
  v19 = OUTLINED_FUNCTION_1_12();
  v9(v19);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v20 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v20, sel_setRedactedFullSpeak_);

  OUTLINED_FUNCTION_7_15(v21);
  sub_2698521E4();
  v22 = OUTLINED_FUNCTION_1_12();
  v9(v22);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v23 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v23, sel_setSupportingPrint_);

  OUTLINED_FUNCTION_7_15(v24);
  sub_269852144();
  v25 = OUTLINED_FUNCTION_1_12();
  v9(v25);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v26 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v26, sel_setSupportingSpeak_);

  OUTLINED_FUNCTION_7_15(v27);
  sub_2698524E4();
  v28 = OUTLINED_FUNCTION_1_12();
  v9(v28);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v29 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v29, sel_setRedactedSupportingPrint_);

  OUTLINED_FUNCTION_7_15(v30);
  sub_2698524F4();
  v31 = OUTLINED_FUNCTION_1_12();
  v9(v31);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v32 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v32, sel_setRedactedSupportingSpeak_);

  OUTLINED_FUNCTION_7_15(v33);
  sub_2698520D4();
  v34 = OUTLINED_FUNCTION_1_12();
  v9(v34);
  OUTLINED_FUNCTION_5_13();
  sub_269854A64();
  v35 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_13_5(v35, sel_setId_);

  OUTLINED_FUNCTION_7_15(v36);
  LOBYTE(v8) = sub_2698524D4();
  v37 = OUTLINED_FUNCTION_4_15();
  v9(v37);
  OUTLINED_FUNCTION_7_15([v7 setIsApprovedForGrading_]);
  LOBYTE(v8) = sub_269852484();
  v38 = OUTLINED_FUNCTION_4_15();
  v9(v38);
  [v7 setSpokenOnly_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2698590C0;
  *(v39 + 32) = v7;
  sub_2696D1EC4();
  v40 = v7;
  OUTLINED_FUNCTION_5_13();
  v41 = sub_269854CA4();

  [v6 setDialog_];

  OUTLINED_FUNCTION_7_15(v42);
  sub_2698520D4();
  v43 = OUTLINED_FUNCTION_4_15();
  v9(v43);
  v44 = sub_269854A64();

  [v6 setCatId_];

  OUTLINED_FUNCTION_21_0();
}

void sub_2696D53D0()
{
  OUTLINED_FUNCTION_19_1();
  v59 = v1;
  sub_269853464();
  OUTLINED_FUNCTION_8();
  v57 = v3;
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v56 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323498, &qword_26985A8E0);
  v7 = OUTLINED_FUNCTION_8_9(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v55 = v8 - v9;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  v54 = v47 - v11;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v12);
  v63 = v47 - v13;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v14);
  v62 = v47 - v15;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v16);
  v60 = v47 - v17;
  v18 = sub_269853094();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v61 = v21 - v20;
  v22 = sub_269852534();
  OUTLINED_FUNCTION_8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = v47 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = v47 - v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_8();
  sub_269852404();
  v36 = sub_2698520D4();
  v52 = v37;
  v53 = v36;
  v38 = *(v24 + 8);
  v38(v0, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A0, &unk_26985D8D0);
  v39 = *(sub_269853324() - 8);
  v51 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_269857710;
  sub_269852404();
  v40 = sub_2698520D4();
  v48 = v41;
  v49 = v40;
  v38(v35, v22);
  sub_269852404();
  sub_269851FD4();
  OUTLINED_FUNCTION_19_3();
  v38(v32, v22);
  OUTLINED_FUNCTION_24_1();
  sub_269852404();
  sub_269851F24();
  OUTLINED_FUNCTION_19_3();
  v38(v32, v22);
  v42 = v60;
  OUTLINED_FUNCTION_24_1();
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v18);
  sub_269852404();
  v47[3] = sub_269852484();
  v38(v32, v22);
  __swift_storeEnumTagSinglePayload(v62, 1, 1, v18);
  OUTLINED_FUNCTION_11_9(v63, 1);
  sub_2698524C4();
  v43 = OUTLINED_FUNCTION_17_5();
  (v38)(v43);
  v44 = v54;
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_11_9(v44, 0);
  sub_2698524B4();
  v45 = OUTLINED_FUNCTION_17_5();
  (v38)(v45);
  v46 = v55;
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_11_9(v46, 0);
  sub_2698524D4();
  v38(v28, v22);
  sub_2698532F4();
  (*(v57 + 104))(v56, *MEMORY[0x277D5BF60], v58);
  sub_269853284();
  OUTLINED_FUNCTION_21_0();
}

void sub_2696D58DC()
{
  OUTLINED_FUNCTION_19_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233C8, &unk_26985E990);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_9();
  v6 = sub_269852084();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803234A8, &unk_26985A8E8);
  v14 = OUTLINED_FUNCTION_8_9(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_8();
  v19 = sub_269852464();
  v37 = v8;
  v38 = *(v19 + 16);
  if (v38)
  {
    v33 = v1;
    v34 = v17;
    v35 = v3;
    v20 = 0;
    OUTLINED_FUNCTION_18_5();
    v22 = v19 + v21;
    v23 = v8 + 16;
    v36 = *MEMORY[0x277D393A8];
    v24 = (v8 + 8);
    while (v20 < *(v19 + 16))
    {
      (*(v8 + 16))(v12, v22 + *(v8 + 72) * v20, v6);
      sub_269852064();
      v25 = sub_269852024();
      if (__swift_getEnumTagSinglePayload(v0, 1, v25) == 1)
      {
        sub_26969B0C0(v0, &qword_2803233C8, &unk_26985E990);
      }

      else
      {
        v26 = v6;
        v27 = v23;
        v28 = v22;
        v29 = *(v25 - 8);
        if ((*(v29 + 88))(v0, v25) == v36)
        {

          (*(v29 + 8))(v0, v25);
          v1 = v33;
          v6 = v26;
          (*(v37 + 32))(v33, v12, v26);
          v30 = 0;
          v17 = v34;
          v3 = v35;
          goto LABEL_12;
        }

        (*(v29 + 8))(v0, v25);
        v22 = v28;
        v23 = v27;
        v6 = v26;
        v8 = v37;
      }

      ++v20;
      (*v24)(v12, v6);
      if (v38 == v20)
      {

        v30 = 1;
        v17 = v34;
        v3 = v35;
        v1 = v33;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v30 = 1;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v1, v30, 1, v6);
    sub_26969B138(v1, v17, &qword_2803234A8, &unk_26985A8E8);
    if (__swift_getEnumTagSinglePayload(v17, 1, v6) == 1)
    {
      sub_26969B0C0(v1, &qword_2803234A8, &unk_26985A8E8);
      sub_26969B0C0(v17, &qword_2803234A8, &unk_26985A8E8);
      v31 = 1;
    }

    else
    {
      sub_269852074();
      sub_26969B0C0(v1, &qword_2803234A8, &unk_26985A8E8);
      (*(v37 + 8))(v17, v6);
      v31 = 0;
    }

    v32 = sub_269852104();
    __swift_storeEnumTagSinglePayload(v3, v31, 1, v32);
    OUTLINED_FUNCTION_21_0();
  }
}

void sub_2696D5CEC()
{
  OUTLINED_FUNCTION_19_1();
  v0 = sub_2698525A4();
  OUTLINED_FUNCTION_8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  sub_269851FD4();
  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_20_3();
  if (!v10)
  {
    sub_269851F24();
    OUTLINED_FUNCTION_19_3();

    OUTLINED_FUNCTION_20_3();
    if (!v11)
    {
      sub_2698525C4();
      v12 = *(v2 + 104);
      v12(v6, *MEMORY[0x277D39C40], v0);
      sub_2696D683C(&qword_2803234B0, MEMORY[0x277D39C50], MEMORY[0x277D39C58]);
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_22_2();
      v13 = *(v2 + 8);
      v13(v6, v0);
      v13(v9, v0);
      if (v14[1] != v14[0])
      {
        sub_2698525C4();
        v12(v6, *MEMORY[0x277D39C28], v0);
        OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_22_2();
        v13(v6, v0);
        v13(v9, v0);
      }
    }
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2696D5F00()
{
  v0 = sub_2698525A4();
  OUTLINED_FUNCTION_8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  sub_269855204();

  v7 = sub_269851FD4();
  MEMORY[0x26D645A60](v7);

  MEMORY[0x26D645A60](0x69746E656469202CLL, 0xEE00203A72656966);
  v8 = sub_269851F24();
  MEMORY[0x26D645A60](v8);

  MEMORY[0x26D645A60](0x203A65707974202CLL, 0xE800000000000000);
  sub_2698525C4();
  v9 = sub_2696D6094();
  v11 = v10;
  (*(v2 + 8))(v6, v0);
  MEMORY[0x26D645A60](v9, v11);

  return 0x203A797469746E65;
}

uint64_t sub_2696D6094()
{
  v1 = v0;
  v2 = sub_2698525A4();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D39C38])
  {
    (*(v4 + 96))(v8, v2);
    sub_269855204();

    v10 = sub_269855544();
    MEMORY[0x26D645A60](v10);

    return 0xD000000000000017;
  }

  else if (v9 == *MEMORY[0x277D39C48])
  {
    return 0x6E776F6E6B6E75;
  }

  else if (v9 == *MEMORY[0x277D39C30])
  {
    return 0x6669636570736E75;
  }

  else if (v9 == *MEMORY[0x277D39C40])
  {
    return 0x767420656C707061;
  }

  else if (v9 == *MEMORY[0x277D39C28])
  {
    return 0x69736976656C6574;
  }

  else
  {
    (*(v4 + 8))(v8, v2);
    return 0x206E776F6E6B6E75;
  }
}

uint64_t sub_2696D62F8(uint64_t a1, char a2, void *a3)
{
  v53 = a3;
  v5 = sub_2698520B4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242F0, &qword_26985F360);
  v12 = MEMORY[0x28223BE20](v11);
  v51 = (v42 - v14);
  v50 = *(a1 + 16);
  if (!v50)
  {
  }

  v15 = 0;
  v49 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = *(v12 + 48);
  v47 = v10;
  v48 = v16;
  v52 = (v6 + 32);
  v42[2] = v6 + 8;
  v42[3] = v6 + 16;
  v42[1] = v6 + 40;
  v44 = v13;
  v45 = a1;
  v46 = v6;
  while (v15 < *(a1 + 16))
  {
    v17 = v51;
    sub_26969B138(v49 + *(v13 + 72) * v15, v51, &qword_2803242F0, &qword_26985F360);
    v19 = *v17;
    v18 = v17[1];
    v20 = *v52;
    v21 = v17 + v48;
    v22 = v5;
    (*v52)(v10, v21, v5);
    v23 = *v53;
    v25 = sub_26973CEF8(v19, v18);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_18;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323478, &qword_26985A8D0);
        sub_2698552F4();
      }
    }

    else
    {
      sub_26980E34C(v28, a2 & 1);
      v30 = sub_26973CEF8(v19, v18);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_20;
      }

      v25 = v30;
    }

    v32 = *v53;
    if (v29)
    {
      v33 = v46;
      v34 = *(v46 + 72) * v25;
      v35 = v43;
      v5 = v22;
      (*(v46 + 16))(v43, v32[7] + v34, v22);
      v10 = v47;
      (*(v33 + 8))(v47, v22);

      (*(v33 + 40))(v32[7] + v34, v35, v22);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v36 = (v32[6] + 16 * v25);
      *v36 = v19;
      v36[1] = v18;
      v37 = v32[7] + *(v46 + 72) * v25;
      v10 = v47;
      v5 = v22;
      v20(v37, v47, v22);
      v38 = v32[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_19;
      }

      v32[2] = v40;
    }

    ++v15;
    a2 = 1;
    v13 = v44;
    a1 = v45;
    if (v50 == v15)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

void sub_2696D66F8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_269851C84();
  sub_2696C1F3C(a1, a2);
  [a3 setUsoEntity_];
}

void sub_2696D676C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setKey_];
}

void sub_2696D67D0(uint64_t a1, void *a2)
{
  v3 = sub_269854CA4();

  [a2 setValues_];
}

uint64_t sub_2696D683C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_15(uint64_t a1)
{

  return sub_269852404();
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);

  return sub_269852404();
}

id OUTLINED_FUNCTION_13_5(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_15_5()
{
}

uint64_t OUTLINED_FUNCTION_21_4()
{

  return sub_269853074();
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_269854C44();
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return sub_269854C44();
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return sub_269853074();
}

id sub_2696D6A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269851DA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = objc_allocWithZone(MEMORY[0x277D47948]);
  v10 = v8;
  v11 = [v9 init];
  v12 = sub_269854A94();
  sub_2696C97B8(v12, v13, v11, &selRef_setOrigin_);
  sub_2696C97B8(a1, a2, v11, &selRef_setUtterance_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2698590C0;
  *(v14 + 32) = v11;
  v15 = v11;
  sub_2696D6BD4(v14, v10);
  sub_269851D94();
  v16 = sub_269851D54();
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  sub_2697336C8(v16, v18, v10);

  return v10;
}

void sub_2696D6BD4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803234B8, &qword_26985A8F8);
  v3 = sub_269854CA4();

  [a2 setCommands_];
}

void sub_2696D6C54()
{
  v0 = sub_269854534();
  v1 = sub_26975004C();
  for (i = 0; ; ++i)
  {
    if (v1 == i)
    {
LABEL_10:

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D646120](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_269854554();
    if (swift_dynamicCastClass())
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_2696D6D30(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269854A64();
  v13 = [v4 experimentIdentifiersWithNamespaceName_];

  if (v13)
  {
    v14 = [v13 experimentId];
    v15 = sub_269854A94();
    v17 = v16;

    v30[1] = [v13 deploymentId];
    v18 = sub_269855544();
    v20 = v19;
    v21 = [v13 treatmentId];
    v22 = sub_269854A94();
    v24 = v23;
  }

  else
  {
    if (qword_2803226F0 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v8, qword_28033D940);
    (*(v9 + 16))(v11, v25, v8);

    v26 = sub_2698548B4();
    v27 = sub_269854F24();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_26974F520(a1, a2, &v31);
      _os_log_impl(&dword_269684000, v26, v27, "Unable to read TRIClient experimentIdentifiers for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26D647170](v29, -1, -1);
      MEMORY[0x26D647170](v28, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
  }

  *a3 = v15;
  a3[1] = v17;
  a3[2] = v18;
  a3[3] = v20;
  a3[4] = v22;
  a3[5] = v24;
}

double sub_2696D7028@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_2696D6D30(a1, a2, v6);
  v4 = v6[1];
  *a3 = v6[0];
  a3[1] = v4;
  result = *&v7;
  a3[2] = v7;
  return result;
}

uint64_t sub_2696D706C()
{
  sub_269854404();
  swift_allocObject();

  return sub_2698543D4();
}

uint64_t sub_2696D70E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D553D8];
  v3 = sub_269854414();
  (*(*(v3 - 8) + 104))(a1, v2, v3);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t sub_2696D7174()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2696D7290@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  v3 = MEMORY[0x28223BE20](v2);
  v76 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v83 = &v76 - v5;
  OUTLINED_FUNCTION_2_13();
  v82 = sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v80 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v78 = v9 - v8;
  OUTLINED_FUNCTION_2_13();
  v81 = sub_269853874();
  OUTLINED_FUNCTION_8();
  v79 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v77 = v13 - v12;
  OUTLINED_FUNCTION_2_13();
  sub_2698538A4();
  OUTLINED_FUNCTION_8();
  v85 = v15;
  v86 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v84 = v17 - v16;
  v18 = OUTLINED_FUNCTION_2_13();
  v89 = type metadata accessor for MediaNLIntent(v18);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v88 = v21 - v20;
  OUTLINED_FUNCTION_2_13();
  v22 = sub_269853F44();
  OUTLINED_FUNCTION_8();
  v87 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_1();
  v27 = v26 - v25;
  v28 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v30 = v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v76 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v76 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v76 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v76 - v44;
  sub_269853844();
  v46 = (*(v30 + 88))(v45, v28);
  if (v46 != *MEMORY[0x277D5C128])
  {
    if (v46 == *MEMORY[0x277D5C150])
    {
      OUTLINED_FUNCTION_25_1();
      v51 = v28;
      v52(v40, v45, v28);
      OUTLINED_FUNCTION_4_13();
      v53(v40, v28);
      v54 = OUTLINED_FUNCTION_27_1();
      v55(v54);
      if (sub_269853884() == 0xD00000000000002ALL && 0x800000026987A040 == v56)
      {
      }

      else
      {
        v58 = sub_269855584();

        if ((v58 & 1) == 0)
        {
          v59 = OUTLINED_FUNCTION_27_1();
          v60(v59);
          goto LABEL_25;
        }
      }

      sub_269853004();
    }

    else
    {
      if (v46 != *MEMORY[0x277D5C140])
      {
        v51 = v28;
        if (v46 == *MEMORY[0x277D5C148])
        {
          OUTLINED_FUNCTION_25_1();
          v67(v34, v45, v28);
          OUTLINED_FUNCTION_4_13();
          v68(v34, v28);
          v69 = *v34;
          sub_2696D6C54();
          if (v70)
          {
            v71 = v70;
            v72 = v76;
            sub_269854544();

            v73 = 0;
          }

          else
          {
            v73 = 1;
            v72 = v76;
          }

          v74 = sub_269852474();
          __swift_storeEnumTagSinglePayload(v72, v73, 1, v74);
          sub_2696D7A24(v72, v90);

          sub_26969B0C0(v72, &qword_280323360, &unk_26985AB80);
          return (*(v30 + 8))(v45, v51);
        }

LABEL_25:
        sub_269853014();
        return (*(v30 + 8))(v45, v51);
      }

      OUTLINED_FUNCTION_25_1();
      v51 = v28;
      v61(v37, v45, v28);
      OUTLINED_FUNCTION_4_13();
      v62(v37, v28);
      (*(v79 + 32))(v77, v37, v81);
      v63 = v78;
      sub_269853864();
      v64 = v83;
      sub_2696D3C74();
      (*(v80 + 8))(v63, v82);
      sub_2696D7A24(v64, v90);
      sub_26969B0C0(v64, &qword_280323360, &unk_26985AB80);
    }

    v65 = OUTLINED_FUNCTION_27_1();
    v66(v65);
    return (*(v30 + 8))(v45, v51);
  }

  OUTLINED_FUNCTION_25_1();
  v47(v43, v45, v28);
  OUTLINED_FUNCTION_4_13();
  v48(v43, v28);
  v49 = v87;
  (*(v87 + 32))(v27, v43, v22);
  v50 = v88;
  (*(v49 + 16))(v88, v27, v22);
  v51 = v28;
  if (qword_280322628 != -1)
  {
    OUTLINED_FUNCTION_12_10(&qword_280322628);
  }

  sub_2696DAEF8();
  sub_269853D54();
  if (v91 < 2u)
  {
    sub_269853004();
  }

  else if (v91 == 2)
  {
    sub_269852FF4();
  }

  else
  {
    sub_269853014();
  }

  sub_2696CC460(v50);
  (*(v49 + 8))(v27, v22);
  return (*(v30 + 8))(v45, v51);
}

uint64_t sub_2696D7A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[1] = a2;
  v3 = sub_269852594();
  OUTLINED_FUNCTION_8();
  v32[0] = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v17 = OUTLINED_FUNCTION_8_9(v16);
  MEMORY[0x28223BE20](v17);
  v19 = v32 - v18;
  v20 = sub_269852474();
  OUTLINED_FUNCTION_8();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v26 = v25 - v24;
  sub_2696DAE88(a1, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_26969B0C0(v19, &qword_280323360, &unk_26985AB80);
    return sub_269853014();
  }

  else
  {
    (*(v22 + 32))(v26, v19, v20);
    sub_269852424();
    sub_269852364();
    (*(v11 + 8))(v15, v9);
    v28 = v32[0];
    v29 = (*(v32[0] + 88))(v8, v3);
    if (v29 == *MEMORY[0x277D39B10] || v29 == *MEMORY[0x277D39B08])
    {
      sub_269853004();
      return (*(v22 + 8))(v26, v20);
    }

    else
    {
      v31 = (v22 + 8);
      if (v29 == *MEMORY[0x277D39B18])
      {
        sub_269852FF4();
        return (*v31)(v26, v20);
      }

      else
      {
        sub_269853014();
        (*v31)(v26, v20);
        return (*(v28 + 8))(v8, v3);
      }
    }
  }
}

uint64_t sub_2696D7D40()
{
  OUTLINED_FUNCTION_2_7();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323540, &qword_26985B830);
  OUTLINED_FUNCTION_8_9(v4);
  v1[11] = OUTLINED_FUNCTION_4_7();
  v5 = sub_2698548D4();
  v1[12] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_4_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v7);
  v1[15] = OUTLINED_FUNCTION_37_0();
  v1[16] = swift_task_alloc();
  v8 = sub_269851EF4();
  v1[17] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[18] = v9;
  v1[19] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269853874();
  v1[20] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[21] = v11;
  v1[22] = OUTLINED_FUNCTION_4_7();
  v12 = sub_2698538A4();
  v1[23] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_4_7();
  v14 = type metadata accessor for MediaNLIntent(0);
  v1[26] = v14;
  OUTLINED_FUNCTION_8_9(v14);
  v1[27] = OUTLINED_FUNCTION_4_7();
  v15 = sub_269853F44();
  v1[28] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[29] = v16;
  v1[30] = OUTLINED_FUNCTION_4_7();
  v17 = sub_2698538B4();
  v1[31] = v17;
  OUTLINED_FUNCTION_5_12(v17);
  v1[32] = v18;
  v1[33] = OUTLINED_FUNCTION_37_0();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v19 = sub_269853414();
  v1[38] = v19;
  OUTLINED_FUNCTION_5_12(v19);
  v1[39] = v20;
  v1[40] = OUTLINED_FUNCTION_37_0();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v21);
}

uint64_t sub_2696D808C(uint64_t a1)
{
  sub_269853844();
  v2 = OUTLINED_FUNCTION_22_3();
  v4 = v3(v2);
  if (v4 == *MEMORY[0x277D5C128])
  {
    v5 = *(v1 + 288);
    v7 = *(v1 + 232);
    v6 = *(v1 + 240);
    v8 = *(v1 + 224);
    v9 = OUTLINED_FUNCTION_18_6();
    v10(v9);
    v11 = OUTLINED_FUNCTION_7_16();
    v12(v11);
    (*(v7 + 32))(v6, v5, v8);
    v13 = OUTLINED_FUNCTION_27_1();
    v14(v13);
    if (qword_280322628 != -1)
    {
      OUTLINED_FUNCTION_12_10(&qword_280322628);
    }

    sub_2696DAEF8();
    sub_269853D54();
    v15 = *(v1 + 352);
    if (v15 == 7)
    {
      sub_2696CC460(*(v1 + 216));
      v16 = OUTLINED_FUNCTION_7_16();
      v17(v16);
LABEL_6:
      v18 = MEMORY[0x277D5BED0];
LABEL_31:
      (*(*(v1 + 312) + 104))(*(v1 + 336), *v18, *(v1 + 304));
      v52 = OUTLINED_FUNCTION_7_16();
      v53(v52);
      goto LABEL_32;
    }

    v30 = sub_2697A9738(v15);
    v32 = *(v1 + 216);
    if (v30 == 7562617 && v31 == 0xE300000000000000)
    {

      sub_2696CC460(v32);
      v50 = OUTLINED_FUNCTION_7_16();
      v51(v50);
    }

    else
    {
      v34 = sub_269855584();

      sub_2696CC460(v32);
      v35 = OUTLINED_FUNCTION_7_16();
      v36(v35);
      if ((v34 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v18 = MEMORY[0x277D5BED8];
    goto LABEL_31;
  }

  if (v4 != *MEMORY[0x277D5C150])
  {
    if (v4 == *MEMORY[0x277D5C140])
    {
      v37 = *(v1 + 272);
      v38 = *(v1 + 248);
      v39 = *(v1 + 256);
      v40 = *(v1 + 168);
      v41 = *(v1 + 176);
      v43 = *(v1 + 152);
      v42 = *(v1 + 160);
      v44 = *(v1 + 144);
      v98 = *(v1 + 136);
      v99 = *(v1 + 328);
      v45 = *(v1 + 128);
      (*(v39 + 16))(v37, *(v1 + 296), v38);
      (*(v39 + 96))(v37, v38);
      (*(v40 + 32))(v41, v37, v42);
      sub_269853864();
      sub_2696D3C74();
      (*(v44 + 8))(v43, v98);
      sub_2696D8AD8(v45, v99);
      v87 = *(v1 + 168);
      v86 = *(v1 + 176);
      v88 = *(v1 + 160);
      sub_26969B0C0(*(v1 + 128), &qword_280323360, &unk_26985AB80);
      (*(v87 + 8))(v86, v88);
      v89 = OUTLINED_FUNCTION_7_16();
      v90(v89);
LABEL_32:
      v54 = *(v1 + 304);
      v55 = *(v1 + 88);
      (*(*(v1 + 256) + 8))(*(v1 + 296), *(v1 + 248));
      v56 = OUTLINED_FUNCTION_7_16();
      v57(v56);
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
      sub_269853834();
      v58 = OUTLINED_FUNCTION_22_3();
      v59(v58);

      OUTLINED_FUNCTION_7_7();
      goto LABEL_45;
    }

    if (v4 == *MEMORY[0x277D5C148])
    {
      v61 = *(v1 + 264);
      v62 = OUTLINED_FUNCTION_18_6();
      v63(v62);
      v64 = OUTLINED_FUNCTION_7_16();
      v65(v64);
      v66 = *v61;
      sub_2696D6C54();
      if (v67)
      {
        v68 = v67;
        sub_269854544();

        v69 = 0;
      }

      else
      {
        v69 = 1;
      }

      v91 = *(v1 + 320);
      v92 = *(v1 + 120);
      v93 = sub_269852474();
      __swift_storeEnumTagSinglePayload(v92, v69, 1, v93);
      sub_2696D8AD8(v92, v91);
      v94 = *(v1 + 344);
      v96 = *(v1 + 312);
      v95 = *(v1 + 320);
      v97 = *(v1 + 304);
      sub_26969B0C0(*(v1 + 120), &qword_280323360, &unk_26985AB80);

      (*(v96 + 32))(v94, v95, v97);
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  v19 = *(v1 + 280);
  v21 = *(v1 + 192);
  v20 = *(v1 + 200);
  v22 = *(v1 + 184);
  v23 = OUTLINED_FUNCTION_18_6();
  v24(v23);
  v25 = OUTLINED_FUNCTION_7_16();
  v26(v25);
  (*(v21 + 32))(v20, v19, v22);
  if (sub_269853884() == 0xD00000000000002ALL && 0x800000026987A040 == v27)
  {
  }

  else
  {
    v29 = sub_269855584();

    if ((v29 & 1) == 0)
    {
      (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
LABEL_36:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      v71 = *(v1 + 104);
      v70 = *(v1 + 112);
      v72 = *(v1 + 96);
      v73 = __swift_project_value_buffer(v72, qword_28033D910);
      (*(v71 + 16))(v70, v73, v72);
      v74 = sub_2698548B4();
      v75 = sub_269854F24();
      if (os_log_type_enabled(v74, v75))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_31_0(&dword_269684000, v76, v77, "Unsupported parse type");
        OUTLINED_FUNCTION_10();
      }

      v78 = OUTLINED_FUNCTION_22_3();
      v79(v78);
      sub_2696BAE9C();
      OUTLINED_FUNCTION_20_4();
      swift_allocError();
      OUTLINED_FUNCTION_5_14(v80, 13);
      swift_willThrow();
      goto LABEL_44;
    }
  }

  if (sub_269853894())
  {
    sub_26981CFD4();

    if (*(v1 + 40))
    {
      if (swift_dynamicCast())
      {
        v46 = sub_2696F4A14(*(v1 + 48), *(v1 + 56));
        if (v46 != 2)
        {
          v47 = v46;
          v48 = *(v1 + 312);
          (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
          if (v47)
          {
            v49 = MEMORY[0x277D5BED0];
          }

          else
          {
            v49 = MEMORY[0x277D5BED8];
          }

          (*(v48 + 104))(*(v1 + 344), *v49, *(v1 + 304));
          goto LABEL_32;
        }
      }

      goto LABEL_43;
    }
  }

  else
  {
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  sub_26969B0C0(v1 + 16, &qword_280322F88, qword_26985AB90);
LABEL_43:
  v82 = *(v1 + 192);
  v81 = *(v1 + 200);
  v83 = *(v1 + 184);
  sub_2696BAE9C();
  OUTLINED_FUNCTION_20_4();
  swift_allocError();
  OUTLINED_FUNCTION_5_14(v84, 4);
  swift_willThrow();
  (*(v82 + 8))(v81, v83);
LABEL_44:
  (*(*(v1 + 256) + 8))(*(v1 + 296), *(v1 + 248));

  OUTLINED_FUNCTION_7_7();
LABEL_45:

  return v60();
}

uint64_t sub_2696D8AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v38 = sub_269852594();
  OUTLINED_FUNCTION_8();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v16 = OUTLINED_FUNCTION_8_9(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = sub_269852474();
  OUTLINED_FUNCTION_8();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  sub_2696DAE88(a1, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_26969B0C0(v18, &qword_280323360, &unk_26985AB80);
    sub_2696BAE9C();
    OUTLINED_FUNCTION_20_4();
    swift_allocError();
    OUTLINED_FUNCTION_5_14(v26, 11);
    return swift_willThrow();
  }

  (*(v21 + 32))(v25, v18, v19);
  sub_269852424();
  sub_269852364();
  (*(v10 + 8))(v14, v8);
  v28 = v37;
  v29 = v38;
  v30 = (*(v37 + 88))(v7, v38);
  if (v30 == *MEMORY[0x277D39B10])
  {
    v31 = MEMORY[0x277D5BED8];
LABEL_7:
    (*(v21 + 8))(v25, v19);
    v32 = *v31;
    sub_269853414();
    OUTLINED_FUNCTION_4_3();
    return (*(v33 + 104))(v36, v32);
  }

  if (v30 == *MEMORY[0x277D39B08])
  {
    v31 = MEMORY[0x277D5BED0];
    goto LABEL_7;
  }

  sub_2696BAE9C();
  OUTLINED_FUNCTION_20_4();
  swift_allocError();
  *v34 = 0xD00000000000001FLL;
  *(v34 + 8) = 0x800000026987CD30;
  *(v34 + 16) = 0;
  *(v34 + 24) = 1;
  swift_willThrow();
  (*(v21 + 8))(v25, v19);
  return (*(v28 + 8))(v7, v29);
}

uint64_t sub_2696D8E8C()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v3);
  v1[4] = OUTLINED_FUNCTION_4_7();
  v4 = sub_269853634();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2696D8F50()
{
  OUTLINED_FUNCTION_8_5();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  v1 = OUTLINED_FUNCTION_30_0();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_5(v1);

  return v3(v2);
}

uint64_t sub_2696D8FF8()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 72) = v3;
    v11 = OUTLINED_FUNCTION_24_2();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_2696D9138()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_36_0((v1 + 104));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v4 = OUTLINED_FUNCTION_35_0(v3);
  *(v0 + 80) = v4;
  *(v4 + 16) = xmmword_2698590C0;
  *(v4 + 32) = v2;
  v5 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 88) = v6;
  *v6 = v7;
  v6[1] = sub_2696D923C;
  OUTLINED_FUNCTION_9_10();

  return MEMORY[0x2821BB488](v8);
}

uint64_t sub_2696D923C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696D933C()
{
  OUTLINED_FUNCTION_8_5();

  v1 = OUTLINED_FUNCTION_7_16();
  v2(v1);

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_2696D93CC()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v3);
  v1[4] = OUTLINED_FUNCTION_4_7();
  v4 = sub_269853634();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2696D9490()
{
  OUTLINED_FUNCTION_8_5();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  v1 = OUTLINED_FUNCTION_30_0();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_16_5(v1);

  return v3(v2);
}

uint64_t sub_2696D9538()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 72) = v3;
    v11 = OUTLINED_FUNCTION_24_2();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_2696D9678()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_36_0((v1 + 104));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v4 = OUTLINED_FUNCTION_35_0(v3);
  *(v0 + 80) = v4;
  *(v4 + 16) = xmmword_2698590C0;
  *(v4 + 32) = v2;
  v5 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 88) = v6;
  *v6 = v7;
  v6[1] = sub_2696D977C;
  OUTLINED_FUNCTION_9_10();

  return MEMORY[0x2821BB488](v8);
}

uint64_t sub_2696D977C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696D987C()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v4);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v5 = sub_269853634();
  v1[16] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[17] = v6;
  v1[18] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269853234();
  v1[19] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[20] = v8;
  v1[21] = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698548D4();
  v1[22] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[23] = v10;
  v1[24] = OUTLINED_FUNCTION_37_0();
  v1[25] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2696D99E8()
{
  v42 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = __swift_project_value_buffer(v2, qword_28033D910);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v8, v9, "INPlayMedia.RequestTCCAcceptanceStrategy.makePromptForTCCAcceptance() called");
    OUTLINED_FUNCTION_10();
  }

  v10 = v0[23];

  v11 = *(v10 + 8);
  v12 = OUTLINED_FUNCTION_22_3();
  v11(v12);
  v13 = sub_269853274();
  if (v13 && (v14 = v13, v15 = [v13 displayAppName], v14, v15))
  {
    v40 = v11;
    v16 = v0[24];
    v17 = v0[22];
    v18 = sub_269854A94();
    v20 = v19;

    v39 = v20;
    v0[26] = v20;
    v5(v16, v4, v17);

    v21 = sub_2698548B4();
    v22 = sub_269854F14();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[24];
    v25 = v0[22];
    if (v23)
    {
      v38 = v0[24];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41 = v27;
      *v26 = 136315138;
      v28 = sub_2698543F4();
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0xE000000000000000;
      }

      v31 = v18;
      v32 = sub_26974F520(v28, v30, &v41);

      *(v26 + 4) = v32;
      v18 = v31;
      _os_log_impl(&dword_269684000, v21, v22, "INPlayMedia.RequestTCCAcceptanceStrategy.makePromptForTCCAcceptance() app identifier: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v33 = v38;
    }

    else
    {

      v33 = v24;
    }

    v40(v33, v25);
    v37 = swift_task_alloc();
    v0[27] = v37;
    *v37 = v0;
    v37[1] = sub_2696D9D88;

    return sub_2696BDDBC(v18, v39);
  }

  else
  {
    sub_2696BAE9C();
    OUTLINED_FUNCTION_20_4();
    swift_allocError();
    OUTLINED_FUNCTION_5_14(v34, 7);
    swift_willThrow();
    OUTLINED_FUNCTION_29_1();

    OUTLINED_FUNCTION_7_7();

    return v35();
  }
}

uint64_t sub_2696D9D88()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    v6 = sub_2696DA528;
  }

  else
  {

    v6 = sub_2696D9E98;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2696D9E98()
{
  v1 = v0[14];
  sub_2696A73F8((v1 + 13), (v0 + 2));
  v2 = sub_2698543F4();
  sub_269835724(v2, v3);

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  if (sub_2696CB5D4(v4, v5))
  {
    v6 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v6 = sub_269852CF4();
  }

  v7 = v0[21];
  sub_269852E74();
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = 0xD000000000000014;
  v8[4] = 0x800000026987AFD0;
  sub_2698535C4();

  if (v6)
  {
    v9 = v0[29];
    v10 = sub_2696F4BA0();
    if (v9)
    {
      v14 = v0[28];
      (*(v0[17] + 8))(v0[18], v0[16]);
      v15 = OUTLINED_FUNCTION_7_16();
      v16(v15);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_28_1();

      __asm { BRAA            X1, X16 }
    }

    v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v31 = v0[28];
    OUTLINED_FUNCTION_36_0(v0 + 2);
    sub_2696F4DC4(v27, v28, v29, v30, v0 + 7);

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v33 = OUTLINED_FUNCTION_35_0(v32);
    v0[32] = v33;
    *(v33 + 16) = xmmword_2698590C0;
    *(v33 + 32) = v31;
    v34 = v31;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[33] = v35;
    *v35 = v36;
    v35[1] = sub_2696DA424;
    OUTLINED_FUNCTION_28_1();

    return MEMORY[0x2821BB478](v37);
  }

  else
  {
    v19 = v0[28];
    OUTLINED_FUNCTION_36_0(v0 + 2);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v21 = OUTLINED_FUNCTION_35_0(v20);
    v0[30] = v21;
    *(v21 + 16) = xmmword_2698590C0;
    *(v21 + 32) = v19;
    v22 = v19;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[31] = v23;
    *v23 = v24;
    v23[1] = sub_2696DA23C;
    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_28_1();

    return MEMORY[0x2821BB488](v25);
  }
}

uint64_t sub_2696DA23C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696DA33C()
{
  v1 = v0[28];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_7_7();

  return v5();
}

uint64_t sub_2696DA424()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2696DA528()
{

  OUTLINED_FUNCTION_29_1();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

void *sub_2696DA5BC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_2696D1E70(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  return v0;
}

uint64_t sub_2696DA5F4()
{
  sub_2696DA5BC();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_2696DA668()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696D7D40();
}

uint64_t sub_2696DA714()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696D93CC();
}

uint64_t sub_2696DA7B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696D8E8C();
}

uint64_t sub_2696DA84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonIntentClientHandledRequestTCCStrategyAsync(0, a5[10], a5[11], a5[12]);
  *v13 = v6;
  v13[1] = sub_2696DA938;

  return MEMORY[0x2821BA180](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2696DA938()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_2696DAA18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696D987C();
}

uint64_t sub_2696DAAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonIntentClientHandledRequestTCCStrategyAsync(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696DAF80;

  return MEMORY[0x2821B9FE0](a1, a2, a3, v12, a5);
}

uint64_t sub_2696DABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonIntentClientHandledRequestTCCStrategyAsync(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696DAF80;

  return MEMORY[0x2821B9FF0](a1, a2, a3, v12, a5);
}

uint64_t sub_2696DAC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonIntentClientHandledRequestTCCStrategyAsync(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696DAF80;

  return MEMORY[0x2821B9FE8](a1, a2, a3, v12, a5);
}

uint64_t sub_2696DAD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonIntentClientHandledRequestTCCStrategyAsync(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696DAF80;

  return MEMORY[0x2821B9FF8](a1, a2, a3, v12, a5);
}

uint64_t sub_2696DAE88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2696DAEF8()
{
  result = qword_280323548[0];
  if (!qword_280323548[0])
  {
    type metadata accessor for MediaNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280323548);
  }

  return result;
}

void OUTLINED_FUNCTION_5_14(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 3;
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_1()
{
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_31_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_2698535C4();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_269852EA4();
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_task_alloc();
}

uint64_t sub_2696DB190(uint64_t a1)
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

uint64_t sub_2696DB230()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v1[11] = swift_task_alloc();
  v4 = sub_2698532A4();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696DB350);
}

uint64_t sub_2696DB350()
{
  v1 = v0[10];
  sub_269853514();
  v2 = sub_2698534F4();
  v0[15] = v2;
  v3 = sub_2698534E4();
  v0[16] = v3;
  v6 = v1 + 96;
  v5 = *(v1 + 96);
  v4 = *(v6 + 8);
  v10 = (*(v4 + 24) + **(v4 + 24));
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_2696DB4D0;
  v8 = v0[14];

  return v10(v8, v2, v3, v5, v4);
}

uint64_t sub_2696DB4D0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v3 + 144) = v0;

  if (v0)
  {
    v6 = sub_2696DB764;
  }

  else
  {

    v6 = sub_2696DB5E4;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2696DB5E4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 16), *(*(v0 + 72) + 40));
  sub_269852CA4();
  v6 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v7 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2698530B4();
  sub_269698048(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_269698048(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_7_7();

  return v9();
}

uint64_t sub_2696DB764()
{

  OUTLINED_FUNCTION_7_7();

  return v1();
}

char *sub_2696DB7EC()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(*(*(v1 + 96) - 8) + 8))(&v0[*(*v0 + 120)]);
  return v0;
}

uint64_t sub_2696DB86C()
{
  sub_2696DB7EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2696DB8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  v10 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v10;
  v11 = type metadata accessor for CommonHandleIntentStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = sub_2696DC178;

  return MEMORY[0x2821B9C68](a1, a2, v11, a4);
}

uint64_t sub_2696DB9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  v10 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v10;
  v11 = type metadata accessor for CommonHandleIntentStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = sub_2696DC178;

  return MEMORY[0x2821B9C70](a1, a2, v11, a4);
}

uint64_t sub_2696DBA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  v10 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v10;
  v11 = type metadata accessor for CommonHandleIntentStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = sub_2696DC178;

  return MEMORY[0x2821B9C48](a1, a2, v11, a4);
}

uint64_t sub_2696DBB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  v10 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v10;
  v11 = type metadata accessor for CommonHandleIntentStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = sub_2696DBC50;

  return MEMORY[0x2821B9C40](a1, a2, v11, a4);
}

uint64_t sub_2696DBC50()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_2696DBD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  v10 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v10;
  v11 = type metadata accessor for CommonHandleIntentStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = sub_2696DC178;

  return MEMORY[0x2821B9C60](a1, a2, v11, a4);
}

uint64_t sub_2696DBE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  v10 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v10;
  v11 = type metadata accessor for CommonHandleIntentStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = sub_2696DC178;

  return MEMORY[0x2821B9C58](a1, a2, v11, a4);
}

uint64_t sub_2696DBEE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_2696DB230();
}

uint64_t sub_2696DBF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  v10 = *(a3 + 96);
  *(v4 + 16) = *(a3 + 80);
  *(v4 + 32) = v10;
  v11 = type metadata accessor for CommonHandleIntentStrategy(0, v4 + 16);
  *v9 = v4;
  v9[1] = sub_2696DC070;

  return MEMORY[0x2821BBB48](a1, a2, v11, a4);
}

uint64_t sub_2696DC070()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2696DC1C0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2696DC208);
}

uint64_t sub_2696DC208()
{
  v1 = *(v0 + 16);
  sub_2696DC634();
  sub_269853514();
  sub_2698534F4();
  v2 = sub_269853504();
  v3 = sub_269855004();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2698590C0;
  *(v4 + 32) = v3;
  v5 = sub_2698538F4();
  v6 = MEMORY[0x277D5C1D8];
  v1[3] = v5;
  v1[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_2698538E4();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2696DC35C()
{
  sub_2696DC33C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2696DC3A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2696DC678;

  return sub_2696DC1C0(a1, a2);
}

uint64_t sub_2696DC454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for CommonIntentContinueInAppStrategy(0, *(a3 + 80), *(a3 + 88), v10);
  *v9 = v4;
  v9[1] = sub_2696DC678;

  return MEMORY[0x2821B9F10](a1, a2, v11, a4);
}

uint64_t sub_2696DC52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2696C995C;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

unint64_t sub_2696DC634()
{
  result = qword_280323650[0];
  if (!qword_280323650[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280323650);
  }

  return result;
}

void sub_2696DC6B4(uint8_t *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a1;
  v145 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  MEMORY[0x28223BE20](v2 - 8);
  v130 = v125 - v3;
  OUTLINED_FUNCTION_2_13();
  sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v127 = v5;
  v128 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v126 = v7 - v6;
  OUTLINED_FUNCTION_2_13();
  sub_269853874();
  OUTLINED_FUNCTION_8();
  v132 = v9;
  v133 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v131 = v11 - v10;
  OUTLINED_FUNCTION_2_13();
  v12 = sub_2698538A4();
  OUTLINED_FUNCTION_8();
  v134 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_3();
  v129 = v15;
  MEMORY[0x28223BE20](v16);
  v135 = v125 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323330, qword_26985B080);
  MEMORY[0x28223BE20](v18 - 8);
  v137 = v125 - v19;
  OUTLINED_FUNCTION_2_13();
  v138 = sub_269853F44();
  OUTLINED_FUNCTION_8();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v144 = (v24 - v23);
  OUTLINED_FUNCTION_2_13();
  v142 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v30 = (v29 - v28);
  v31 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_23_3();
  v136 = v39;
  MEMORY[0x28223BE20](v40);
  v42 = v125 - v41;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v43 = __swift_project_value_buffer(v31, qword_28033D910);
  v44 = *(v33 + 16);
  v139 = v43;
  v140 = v44;
  v141 = v33 + 16;
  v44(v42);
  v45 = sub_2698548B4();
  v46 = sub_269854F14();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_21_5(v47);
    _os_log_impl(&dword_269684000, v45, v46, "CommonIntentFlowStrategy.actionForInput() called", v31, 2u);
    v31 = v33;
    v33 = v12;
    OUTLINED_FUNCTION_10();
  }

  v50 = *(v33 + 8);
  v48 = (v33 + 8);
  v49 = v50;
  v50(v42, v31);
  sub_269853844();
  v51 = v142;
  v52 = (*(v26 + 88))(v30, v142);
  if (v52 == *MEMORY[0x277D5C128])
  {
    v143 = v48;
    v53 = OUTLINED_FUNCTION_8_10();
    v54(v53);
    v55 = v30;
    v56 = v138;
    (*(v21 + 32))(v144, v55, v138);
    v57 = v137;
    sub_269853F24();
    v58 = sub_269853D94();
    if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
    {
      sub_269698048(v57, &qword_280323330, qword_26985B080);
      v59 = 0;
      v60 = 0;
    }

    else
    {
      v59 = sub_269853D74();
      v60 = v95;
      (*(*(v58 - 8) + 8))(v57, v58);
      v96 = v59 == 0x616964656DLL && v60 == 0xE500000000000000;
      if (v96 || (sub_269855584() & 1) != 0)
      {

        sub_269853004();
        (*(v21 + 8))(v144, v56);
        return;
      }
    }

    v61 = v21;
    v62 = v136;
    OUTLINED_FUNCTION_5_15();
    v63();

    v64 = sub_2698548B4();
    v65 = v31;
    v66 = sub_269854F14();

    if (os_log_type_enabled(v64, v66))
    {
      v67 = OUTLINED_FUNCTION_27_2();
      v68 = OUTLINED_FUNCTION_9_3();
      v146[0] = v68;
      *v67 = 136315138;
      if (v60)
      {
        v69 = v59;
      }

      else
      {
        v69 = 7104878;
      }

      if (!v60)
      {
        v60 = 0xE300000000000000;
      }

      v70 = sub_26974F520(v69, v60, v146);

      *(v67 + 4) = v70;
      _os_log_impl(&dword_269684000, v64, v66, "CommonIntentFlowStrategy.actionForInput() ignoring NLv3 non-media domain %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v71 = v136;
    }

    else
    {

      v71 = v62;
    }

    v49(v71, v65);
    sub_269853014();
    (*(v61 + 8))(v144, v56);
  }

  else if (v52 == *MEMORY[0x277D5C150])
  {
    v72 = OUTLINED_FUNCTION_8_10();
    v73(v72);
    v75 = v134;
    v74 = v135;
    (*(v134 + 32))(v135, v30, v12);
    v76 = sub_269853884();
    if (SKIDirectInvocation.Video.init(rawValue:)(v76, v77) == 5)
    {
      v144 = v49;
      v78 = v125[3];
      OUTLINED_FUNCTION_5_15();
      v79();
      v80 = v129;
      (*(v75 + 16))(v129, v74, v12);
      v81 = v12;
      v82 = sub_2698548B4();
      v83 = v31;
      v84 = sub_269854F14();
      if (os_log_type_enabled(v82, v84))
      {
        v85 = OUTLINED_FUNCTION_27_2();
        v86 = OUTLINED_FUNCTION_9_3();
        v143 = v48;
        v87 = v86;
        v146[0] = v86;
        *v85 = 136315138;
        v142 = v83;
        v88 = sub_269853884();
        v89 = v75;
        v91 = v90;
        v92 = v80;
        v93 = *(v89 + 8);
        v93(v92, v81);
        v94 = sub_26974F520(v88, v91, v146);

        *(v85 + 4) = v94;
        _os_log_impl(&dword_269684000, v82, v84, "CommonIntentFlowStrategy.actionForInput() ignoring directInvocation %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v87);
        OUTLINED_FUNCTION_10();
        v74 = v135;
        OUTLINED_FUNCTION_10();

        v144(v78, v142);
      }

      else
      {

        v114 = v80;
        v93 = *(v75 + 8);
        v93(v114, v81);
        v144(v78, v83);
      }

      sub_269853014();
      v93(v74, v81);
    }

    else
    {
      sub_269853004();
      (*(v75 + 8))(v74, v12);
    }
  }

  else if (v52 == *MEMORY[0x277D5C140])
  {
    v97 = OUTLINED_FUNCTION_8_10();
    v98(v97);
    v100 = v131;
    v99 = v132;
    v101 = v133;
    (*(v132 + 32))(v131, v30, v133);
    v102 = v126;
    sub_269853864();
    v103 = v130;
    sub_2696D3C74();
    (*(v127 + 8))(v102, v128);
    v104 = sub_269852474();
    LODWORD(v102) = __swift_getEnumTagSinglePayload(v103, 1, v104);
    sub_269698048(v103, &qword_280323360, &unk_26985AB80);
    if (v102 == 1)
    {
      v105 = v125[2];
      OUTLINED_FUNCTION_5_15();
      v106();
      v107 = sub_2698548B4();
      v108 = sub_269854F14();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = OUTLINED_FUNCTION_16_2();
        *v109 = 0;
        _os_log_impl(&dword_269684000, v107, v108, "CommonIntentFlowStrategy.actionForInput() ignoring pegasusResults with no videoClientComponent", v109, 2u);
        OUTLINED_FUNCTION_10();
      }

      v49(v105, v31);
      sub_269853014();
    }

    else
    {
      sub_269853004();
    }

    (*(v99 + 8))(v100, v101);
  }

  else if (v52 == *MEMORY[0x277D5C148])
  {
    v110 = OUTLINED_FUNCTION_8_10();
    v111(v110);
    v112 = *v30;
    sub_2696D6C54();
    if (v113)
    {

      sub_269853004();
    }

    else
    {
      v120 = v125[0];
      v121 = v31;
      v140(v125[0], v139, v31);
      v122 = sub_2698548B4();
      v123 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_4(v123))
      {
        v124 = OUTLINED_FUNCTION_16_2();
        *v124 = 0;
        _os_log_impl(&dword_269684000, v122, v123, "CommonIntentFlowStrategy.actionForInput() ignoring pommesResponse with no firstVideoExperience", v124, 2u);
        OUTLINED_FUNCTION_10();
      }

      v49(v120, v121);
      sub_269853014();
    }
  }

  else
  {
    v115 = v125[1];
    OUTLINED_FUNCTION_5_15();
    v116();
    v117 = sub_2698548B4();
    v118 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v118))
    {
      v119 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_21_5(v119);
      _os_log_impl(&dword_269684000, v117, v118, "CommonIntentFlowStrategy.actionForInput(), unsupported parse is ignored", v31, 2u);
      v31 = v48;
      OUTLINED_FUNCTION_10();
    }

    v49(v115, v31);
    sub_269853014();
    (*(v26 + 8))(v30, v51);
  }
}

uint64_t sub_2696DD360()
{
  OUTLINED_FUNCTION_2_7();
  v1[10] = v2;
  v1[11] = v3;
  v1[12] = *v0;
  v4 = sub_2698538A4();
  v1[13] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[14] = v5;
  v1[15] = OUTLINED_FUNCTION_4_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v1[16] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269851EF4();
  v1[17] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[18] = v7;
  v1[19] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269852474();
  v1[20] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[21] = v9;
  v1[22] = OUTLINED_FUNCTION_37_0();
  v1[23] = swift_task_alloc();
  v10 = sub_269853874();
  v1[24] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[25] = v11;
  v1[26] = OUTLINED_FUNCTION_4_7();
  v12 = sub_2698548D4();
  v1[27] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[28] = v13;
  v1[29] = OUTLINED_FUNCTION_37_0();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v14 = sub_269853F44();
  v1[37] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[38] = v15;
  v1[39] = OUTLINED_FUNCTION_37_0();
  v1[40] = swift_task_alloc();
  v16 = sub_2698538B4();
  v1[41] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v1[42] = v17;
  v1[43] = OUTLINED_FUNCTION_37_0();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696DD6F4);
}

uint64_t sub_2696DD6F4()
{
  v219 = v0;
  v218[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  if (!v1)
  {
    v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v2 = *(*(v0 + 336) + 16);
  (v2)(*(v0 + 376), *(v0 + 80), *(v0 + 328));
  v3 = OUTLINED_FUNCTION_25_2();
  v5 = v4(v3);
  v6 = 0x280322000uLL;
  if (v5 == *MEMORY[0x277D5C128])
  {
    v214 = v1;
    v7 = *(v0 + 368);
    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = *(v0 + 88);
    (v2)(v7, *(v0 + 376), *(v0 + 328));
    v12 = OUTLINED_FUNCTION_25_2();
    v13(v12);
    (*(v10 + 32))(v8, v7, v9);
    v14 = qword_2803226E0;
    v15 = v11;
    if (v14 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v16 = *(v0 + 288);
    v17 = *(v0 + 216);
    v18 = *(v0 + 224);
    v19 = __swift_project_value_buffer(v17, qword_28033D910);
    v212 = *(v18 + 16);
    v212(v16, v19, v17);
    v20 = OUTLINED_FUNCTION_15_6();
    v21(v20);
    v22 = sub_2698548B4();
    v23 = sub_269854F44();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 304);
    v26 = *(v0 + 288);
    v27 = *(v0 + 216);
    v28 = *(v0 + 224);
    if (v24)
    {
      v204 = v23;
      v29 = OUTLINED_FUNCTION_27_2();
      v202 = OUTLINED_FUNCTION_9_3();
      v218[0] = v202;
      *v29 = 136315138;
      sub_2696DF35C();
      v206 = v27;
      v201 = sub_269855544();
      v31 = v30;
      v32 = *(v25 + 8);
      v33 = OUTLINED_FUNCTION_22_4();
      v32(v33);
      v34 = sub_26974F520(v201, v31, v218);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_269684000, v22, v204, "Creating intent from NLv3Intent. nlIntent=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v202);
      OUTLINED_FUNCTION_10();
      v35 = v32;
      OUTLINED_FUNCTION_10();

      v36 = *(v28 + 8);
      v38 = v206;
      v37 = v26;
    }

    else
    {

      v35 = *(v25 + 8);
      v50 = OUTLINED_FUNCTION_22_4();
      v35(v50);
      v37 = OUTLINED_FUNCTION_22_3();
    }

    v210 = v36;
    v36(v37, v38);
    v51 = *(v0 + 96);
    v52 = *(v51 + 80);
    v53 = *(v51 + 96);
    v1 = v214;
    sub_2697A1D3C(*(v0 + 320), v52, v53);
    v54 = OUTLINED_FUNCTION_22_3();
    v35(v54);
    goto LABEL_17;
  }

  if (v5 != *MEMORY[0x277D5C150])
  {
    if (v5 != *MEMORY[0x277D5C140])
    {
      if (v5 != *MEMORY[0x277D5C148])
      {
        v49 = *(v0 + 88);
        goto LABEL_49;
      }

      v119 = *(v0 + 352);
      v120 = *(v0 + 88);
      v121 = OUTLINED_FUNCTION_12_11();
      v2(v121);
      v122 = OUTLINED_FUNCTION_7_16();
      v123(v122);
      v124 = *v119;
      v125 = qword_2803226E0;
      v126 = v120;
      if (v125 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      v127 = *(v0 + 216);
      __swift_project_value_buffer(v127, qword_28033D910);
      v128 = OUTLINED_FUNCTION_25_2();
      v212 = v129;
      (v129)(v128);
      v130 = sub_2698548B4();
      v131 = sub_269854F44();
      if (OUTLINED_FUNCTION_19_4(v131))
      {
        v132 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_6(v132);
        _os_log_impl(&dword_269684000, v130, v131, "Creating intent from pommesResponse.", v127, 2u);
        OUTLINED_FUNCTION_4_16();
      }

      v133 = *(v0 + 264);
      v134 = *(v0 + 216);
      v135 = *(v0 + 224);

      v210 = *(v135 + 8);
      v210(v133, v134);
      sub_2696D6C54();
      if (!v136)
      {
        v186 = OUTLINED_FUNCTION_25_2();
        (v212)(v186);
        v187 = sub_2698548B4();
        v188 = sub_269854F14();
        if (OUTLINED_FUNCTION_19_4(v188))
        {
          v189 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_16_6(v189);
          OUTLINED_FUNCTION_10_9(&dword_269684000, v190, v191, "failed to make intent due to missing firstVideoExperience");
          OUTLINED_FUNCTION_4_16();
        }

        v192 = OUTLINED_FUNCTION_22_3();
        (v210)(v192);
        v193 = sub_2696BAE9C();
        OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v193);
        OUTLINED_FUNCTION_3_17(v194, 11);

        goto LABEL_56;
      }

      v137 = v136;
      v139 = *(v0 + 168);
      v138 = *(v0 + 176);
      v217 = *(v0 + 160);
      v140 = *(v0 + 96);
      sub_269854544();
      v141 = v124;
      v142 = *(v140 + 80);
      v143 = *(v140 + 96);
      sub_2697A1D54(v138, v142, v143);

      v53 = v143;
      (*(v139 + 8))(v138, v217);
      v52 = v142;
LABEL_17:
      v55 = (*(*(v0 + 336) + 8))(*(v0 + 376), *(v0 + 328));
      if (qword_2803226E0 != -1)
      {
        v55 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      OUTLINED_FUNCTION_29_2(v55, qword_28033D910);
      v56 = OUTLINED_FUNCTION_12_11();
      (v212)(v56);
      v57 = v1;
      v58 = sub_2698548B4();
      v59 = sub_269854F44();

      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 232);
      v62 = *(v0 + 216);
      if (v60)
      {
        v63 = swift_slowAlloc();
        v218[0] = swift_slowAlloc();
        *v63 = 136315394;
        swift_getObjectType();
        v64 = sub_269855724();
        v213 = v61;
        v207 = v62;
        v66 = v52;
        v67 = sub_26974F520(v64, v65, v218);

        *(v63 + 4) = v67;
        *(v63 + 12) = 2080;
        *(v0 + 64) = v57;
        v68 = (*(*(v53 + 8) + 16))(v66);
        *(v0 + 72) = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803236D8, &unk_26985CEF0);
        v69 = sub_269855094();
        v71 = v70;

        v72 = sub_26974F520(v69, v71, v218);

        *(v63 + 14) = v72;
        _os_log_impl(&dword_269684000, v58, v59, "Finished creating %s from parse. mediaSearch=%s", v63, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        v73 = v213;
        v74 = v207;
      }

      else
      {

        v73 = OUTLINED_FUNCTION_7_16();
      }

      v210(v73, v74);

      v75 = *(v0 + 8);

      return v75(v57);
    }

    v216 = v1;
    v77 = *(v0 + 88);
    v78 = OUTLINED_FUNCTION_12_11();
    v2(v78);
    v79 = OUTLINED_FUNCTION_7_16();
    v80(v79);
    v81 = OUTLINED_FUNCTION_15_6();
    v82(v81);
    v83 = qword_2803226E0;
    v84 = v77;
    if (v83 != -1)
    {
      v84 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v85 = *(v0 + 280);
    v86 = *(v0 + 216);
    v87 = *(v0 + 224);
    OUTLINED_FUNCTION_29_2(v84, qword_28033D910);
    v203 = v88;
    v212 = *(v87 + 16);
    (v212)(v85);
    v89 = sub_2698548B4();
    v90 = sub_269854F44();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v91);
      _os_log_impl(&dword_269684000, v89, v90, "Creating intent from PegasusResult.", v86, 2u);
      OUTLINED_FUNCTION_4_16();
    }

    v92 = *(v0 + 280);
    v94 = *(v0 + 216);
    v93 = *(v0 + 224);
    v95 = *(v0 + 152);
    v208 = *(v0 + 160);
    v97 = *(v0 + 136);
    v96 = *(v0 + 144);
    v98 = *(v0 + 128);

    v210 = *(v93 + 8);
    v210(v92, v94);
    sub_269853864();
    sub_2696D3C74();
    (*(v96 + 8))(v95, v97);
    if (__swift_getEnumTagSinglePayload(v98, 1, v208) == 1)
    {
      v99 = *(v0 + 272);
      v100 = *(v0 + 216);
      sub_269698048(*(v0 + 128), &qword_280323360, &unk_26985AB80);
      v212(v99, v203, v100);
      v101 = sub_2698548B4();
      v102 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_4(v102))
      {
        v103 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_6(v103);
        OUTLINED_FUNCTION_10_9(&dword_269684000, v104, v105, "failed to make intent due to missing videoClientComponent");
        OUTLINED_FUNCTION_4_16();
      }

      v107 = *(v0 + 200);
      v106 = *(v0 + 208);
      v108 = *(v0 + 192);

      v109 = OUTLINED_FUNCTION_22_3();
      (v210)(v109);
      v110 = sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v110);
      OUTLINED_FUNCTION_3_17(v111, 11);

      (*(v107 + 8))(v106, v108);
      goto LABEL_56;
    }

    v144 = *(v0 + 200);
    v209 = *(v0 + 208);
    v146 = *(v0 + 184);
    v145 = *(v0 + 192);
    v147 = *(v0 + 160);
    v148 = *(v0 + 168);
    v149 = *(v0 + 96);
    (*(v148 + 32))(v146, *(v0 + 128), v147);
    v150 = *(v149 + 80);
    v53 = *(v149 + 96);
    v1 = v216;
    sub_2697A1D54(v146, v150, v53);
    (*(v148 + 8))(v146, v147);
    (*(v144 + 8))(v209, v145);
LABEL_69:
    v52 = v150;
    goto LABEL_17;
  }

  v215 = v1;
  v39 = *(v0 + 88);
  v40 = OUTLINED_FUNCTION_12_11();
  v2(v40);
  v41 = OUTLINED_FUNCTION_7_16();
  v42(v41);
  v43 = OUTLINED_FUNCTION_15_6();
  v44(v43);
  v45 = v39;
  if (sub_269853884() == 0xD00000000000002DLL && 0x800000026987A0A0 == v46)
  {

    v6 = 0x280322000uLL;
  }

  else
  {
    v48 = sub_269855584();

    v6 = 0x280322000;
    if ((v48 & 1) == 0)
    {
      v49 = (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
LABEL_49:
      if (*(v6 + 1760) != -1)
      {
        v49 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      OUTLINED_FUNCTION_29_2(v49, qword_28033D910);
      v151 = OUTLINED_FUNCTION_12_11();
      v152(v151);
      v153 = sub_2698548B4();
      v154 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_4(v154))
      {
        v155 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_6(v155);
        OUTLINED_FUNCTION_10_9(&dword_269684000, v156, v157, "failed to make intent - no matching NLv3IntentOnly or directInvocation in Parse");
        OUTLINED_FUNCTION_4_16();
      }

      v158 = OUTLINED_FUNCTION_22_3();
      v159(v158);
      v160 = sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v160);
      OUTLINED_FUNCTION_3_17(v161, 13);

      goto LABEL_56;
    }
  }

  if (sub_269853894())
  {
    v112 = objc_opt_self();
    v113 = sub_2698549D4();

    *(v0 + 56) = 0;
    v114 = [v112 dataWithJSONObject:v113 options:0 error:v0 + 56];

    v115 = *(v0 + 56);
    if (v114)
    {
      v116 = sub_269851C94();
      v118 = v117;

      if (qword_280322440 != -1)
      {
        swift_once();
      }

      sub_2696CC3A4();
      sub_269851A84();
      v169 = sub_2696C1F3C(v116, v118);
      v170 = *(v0 + 24);
      if (v170)
      {
        v171 = *(v0 + 16);
        if (*(v6 + 1760) != -1)
        {
          v169 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
        }

        OUTLINED_FUNCTION_29_2(v169, qword_28033D910);
        v172 = OUTLINED_FUNCTION_12_11();
        v212 = v173;
        (v173)(v172);

        v174 = sub_2698548B4();
        v175 = sub_269854F44();

        v176 = os_log_type_enabled(v174, v175);
        v177 = *(v0 + 216);
        v178 = *(v0 + 224);
        if (v176)
        {
          v211 = *(v0 + 248);
          v179 = OUTLINED_FUNCTION_27_2();
          v180 = OUTLINED_FUNCTION_9_3();
          v218[0] = v180;
          *v179 = 136315138;

          v181 = sub_26974F520(v171, v170, v218);
          v205 = v171;
          v182 = v177;
          v183 = v181;

          *(v179 + 4) = v183;
          _os_log_impl(&dword_269684000, v174, v175, "Creating intent from com.apple.siri.video.ReformSearchToThirdParty. mediaName=%s", v179, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v180);
          v1 = v215;
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_4_16();

          v184 = *(v178 + 8);
          v184(v211, v182);
          v185 = v205;
        }

        else
        {

          v195 = OUTLINED_FUNCTION_22_3();
          v184 = v196;
          (v196)(v195);
          v185 = v171;
        }

        v210 = v184;
        v198 = *(v0 + 112);
        v197 = *(v0 + 120);
        v199 = *(v0 + 96);
        v200 = *(v0 + 104);
        v150 = *(v199 + 80);
        v53 = *(v199 + 96);
        sub_2697A1E44(v185, v170);

        (*(v198 + 8))(v197, v200);
        goto LABEL_69;
      }
    }

    else
    {
      v162 = v115;
      v163 = sub_269851BD4();

      swift_willThrow();
    }
  }

  v164 = sub_2696BAE9C();
  OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v164);
  OUTLINED_FUNCTION_3_17(v165, 4);

  v166 = OUTLINED_FUNCTION_7_16();
  v167(v166);
LABEL_56:
  (*(*(v0 + 336) + 8))(*(v0 + 376), *(v0 + 328));

  v168 = *(v0 + 8);

  return v168();
}

uint64_t sub_2696DE91C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DE9C4;

  return sub_2696DD360();
}

uint64_t sub_2696DE9C4()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2696DEAB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for CommonIntentFlowStrategy(0, a2[10], a2[11], a2[12]);

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2696DEB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696DEBD8;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_2696DEBD8()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2696DECC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonIntentFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696DF3B4;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_2696DEDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonIntentFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696DF3B4;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_2696DEE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonIntentFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696DF3B4;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_2696DEF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonIntentFlowStrategy(0, a5[10], a5[11], a5[12]);
  *v13 = v6;
  v13[1] = sub_2696DF3B4;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2696DF058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonIntentFlowStrategy(0, a5[10], a5[11], a5[12]);
  *v13 = v6;
  v13[1] = sub_2696DF3B4;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2696DF144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonIntentFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = sub_2696DF218;

  return MEMORY[0x2821BBB48](a1, a2, v10, a4);
}

uint64_t sub_2696DF218()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

unint64_t sub_2696DF35C()
{
  result = qword_2803236E0;
  if (!qword_2803236E0)
  {
    sub_269853F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803236E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_17@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a3;
  *(a2 + 24) = 3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_4_16()
{

  JUMPOUT(0x26D647170);
}

void OUTLINED_FUNCTION_10_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

BOOL OUTLINED_FUNCTION_19_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_2696DF51C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  if (qword_2803225D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  v3 = _s10MediaNLAppVMa(0);
  OUTLINED_FUNCTION_0_20();
  sub_2696DFA64(v4, v5, &unk_269860BD8);
  sub_2696DFA64(qword_280323708, _s10MediaNLAppVMa, &unk_2698609DC);
  sub_269853D44();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2696DFAAC(v2);
  }

  else
  {
    sub_2697A5220();
    sub_2696DFB14(v2, _s10MediaNLAppVMa);
  }

  sub_269854404();
  swift_allocObject();
  return sub_2698543D4();
}

uint64_t sub_2696DF710@<X0>(uint64_t a1@<X8>)
{
  if (qword_280322628 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  OUTLINED_FUNCTION_0_20();
  sub_2696DFA64(v2, v3, &unk_269860BD8);
  sub_269853D54();
  if (v11 == 7)
  {
    goto LABEL_4;
  }

  if (sub_2697A9738(v11) == 0x6C65636E6163 && v5 == 0xE600000000000000)
  {

LABEL_12:
    v4 = MEMORY[0x277D553D0];
    goto LABEL_13;
  }

  v7 = sub_269855584();

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_4:
  v4 = MEMORY[0x277D553D8];
LABEL_13:
  v8 = *v4;
  v9 = sub_269854414();
  (*(*(v9 - 8) + 104))(a1, v8, v9);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
}

uint64_t sub_2696DF89C()
{
  sub_2696DFB14(v0 + OBJC_IVAR____TtC16SiriVideoIntents35CommonIntentThirdPartyAppResolution_intent, type metadata accessor for MediaNLIntent);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CommonIntentThirdPartyAppResolution(uint64_t a1)
{
  result = qword_2803236F0;
  if (!qword_2803236F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2696DF968(uint64_t a1)
{
  result = sub_269853F44();
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

uint64_t sub_2696DFA64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2696DFAAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696DFB14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2696DFC18()
{
  OUTLINED_FUNCTION_2_7();
  v1[53] = v2;
  v1[54] = v0;
  v1[55] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323798, &unk_26985C770);
  OUTLINED_FUNCTION_8_9(v3);
  v1[56] = OUTLINED_FUNCTION_4_7();
  v4 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action(0);
  v1[57] = v4;
  OUTLINED_FUNCTION_8_9(v4);
  v1[58] = OUTLINED_FUNCTION_4_7();
  v5 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse(0);
  v1[59] = v5;
  OUTLINED_FUNCTION_8_9(v5);
  v1[60] = OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2696DFD0C()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  *(v0 + 488) = *(v2 + 16);
  v3 = *(v1 + 88);
  *(v0 + 496) = v3;
  v4 = *(v3 + 16);
  *(v0 + 504) = *(v1 + 80);
  v5 = v4();
  sub_2696A73F8(v2 + 72, v0 + 24);
  sub_2696A73F8(v2 + 112, v0 + 64);
  v11 = *(v2 + 152);
  sub_2696A73F8(v2 + 168, v0 + 120);
  sub_2696A73F8(v2 + 208, v0 + 160);
  sub_2696A73F8(v2 + 248, v0 + 200);
  sub_2696A73F8(v2 + 32, v0 + 240);
  sub_2696A73F8(v2 + 288, v0 + 280);
  sub_2696A73F8(v2 + 328, v0 + 320);
  sub_2696A73F8(v2 + 368, v0 + 360);
  *(v0 + 16) = v5 & 1;
  *(v0 + 104) = v11;
  swift_unknownObjectRetain();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 512) = v6;
  *v6 = v7;
  v6[1] = sub_2696DFE70;
  v8 = *(v0 + 480);
  v9 = *(v0 + 424);

  return sub_2697118DC(v8, v9);
}

uint64_t sub_2696DFE70()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696DFF54()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[54];
  v4 = (v1 + *(v2 + 20));
  v6 = *v4;
  v5 = v4[1];
  *(v3 + 425) = v5 != 0;
  *(v3 + 408) = v6;
  *(v3 + 416) = v5;

  *(v3 + 424) = *(v1 + *(v2 + 24));
  v7 = OUTLINED_FUNCTION_7_16();
  sub_2696E2244(v7, v8);
  OUTLINED_FUNCTION_22_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = v0[58];
      v14 = v0[56];
      v15 = v0[54];
      v16 = *v13;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803237A0, qword_26985B440);
      sub_2696E2358(v13 + *(v17 + 48), v14);
      v18 = *(v15 + 24);
      v19 = OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appDisambiguationContext;
      swift_beginAccess();
      sub_2696E23C8(v14, v18 + v19);
      swift_endAccess();
      v20 = *(v16 + 16);
      if (!v20)
      {
        goto LABEL_12;
      }

      sub_2698552A4();
      result = sub_269854404();
      v22 = 0;
      v23 = v16 + 40;
      while (v22 < *(v16 + 16))
      {
        ++v22;

        sub_2698543E4();
        sub_269855284();
        sub_2698552B4();
        sub_2698552C4();
        result = sub_269855294();
        v23 += 16;
        if (v20 == v22)
        {
LABEL_12:

          v24 = v0[60];
          v25 = v0[56];
          sub_2698533E4();
          v10 = sub_2698533A4();

          sub_269698048(v25, &qword_280323798, &unk_26985C770);
          sub_2696E22A8((v0 + 2));
          v11 = v24;
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    case 2u:
      v12 = v0[60];
      sub_2698533E4();
      sub_269854404();
      sub_2698543E4();
      v10 = sub_2698533B4();

      goto LABEL_7;
    case 3u:
      v12 = v0[60];
      sub_2698533E4();
      v10 = sub_269853394();
LABEL_7:
      sub_2696E22A8((v0 + 2));
      v11 = v12;
      goto LABEL_13;
    default:
      if (*(v0[58] + 16) == 1)
      {
        (*(v0[62] + 24))(v0[63]);
      }

      v9 = v0[60];
      sub_2698533E4();
      sub_269854404();
      OUTLINED_FUNCTION_22_3();
      sub_2698543E4();
      v10 = sub_2698533D4();

      sub_2696E22A8((v0 + 2));
      v11 = v9;
LABEL_13:
      sub_2696E22FC(v11);

      v26 = v0[1];

      return v26(v10);
  }
}

uint64_t sub_2696E02E0()
{
  OUTLINED_FUNCTION_2_7();
  v0[2] = v1;
  v2 = sub_2698548D4();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_12(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_4_7();
  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2696E0384()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  __swift_project_value_buffer(*(v0 + 24), qword_28033D910);
  v1 = OUTLINED_FUNCTION_2_8();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v5, v6, "CommonIntentThirdPartyAppResolutionStrategy#makeAppResolutionSuccessfulResponse");
    OUTLINED_FUNCTION_10();
  }

  v7 = *(v0 + 16);

  v8 = OUTLINED_FUNCTION_22_3();
  v9(v8);
  v10 = sub_2698538F4();
  v11 = MEMORY[0x277D5C1D8];
  v7[3] = v10;
  v7[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_2698538E4();

  OUTLINED_FUNCTION_4_17();

  return v12();
}

uint64_t sub_2696E04E0()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_269854454();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269854444();
  v1[8] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = sub_2698548D4();
  v1[12] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2696E0634()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  __swift_project_value_buffer(v0[12], qword_28033D910);
  v1 = OUTLINED_FUNCTION_2_8();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_31_0(&dword_269684000, v5, v6, "CommonIntentThirdPartyAppResolutionStrategy#makeAppResolutionUnsuccessfulResponse");
    OUTLINED_FUNCTION_10();
  }

  v7 = v0[4];

  v8 = OUTLINED_FUNCTION_22_3();
  v9(v8);
  v10 = v0[4];
  if (*(v7 + 425) == 1)
  {
    v11 = *(v10 + 416);
    if (v11)
    {
      v12 = v0[2];
      v13 = *(v10 + 408);
      sub_2696E2200();

      sub_269855204();
      MEMORY[0x26D645A60](0xD000000000000027, 0x800000026987CF80);
      MEMORY[0x26D645A60](v13, v11);

      MEMORY[0x26D645A60](0xD000000000000019, 0x800000026987CFB0);
      v14 = sub_2696D6A0C(0, 0xE000000000000000);
      __swift_project_boxed_opaque_existential_1((v10 + 32), *(v10 + 56));
      sub_269853494();
      v15 = sub_2698538F4();
      v16 = MEMORY[0x277D5C1D8];
      v12[3] = v15;
      v12[4] = v16;
      __swift_allocate_boxed_opaque_existential_1(v12);
      sub_2698538E4();

      OUTLINED_FUNCTION_4_17();
LABEL_20:

      return v17();
    }
  }

  if (*(v10 + 424) == 1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[15] = v18;
    *v18 = v19;
    v18[1] = sub_2696E0B58;
    v20 = v0[2];

    return MEMORY[0x2821BB9F8](v20, 0, 0);
  }

  sub_2698533C4();
  v21 = OUTLINED_FUNCTION_22_3();
  if (v22(v21) != *MEMORY[0x277D55410])
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
LABEL_19:
    sub_2696BAE9C();
    swift_allocError();
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
    *v39 = 1;
    *(v39 + 24) = 3;
    swift_willThrow();

    OUTLINED_FUNCTION_7_7();
    goto LABEL_20;
  }

  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[8];
  v26 = v0[9];
  v27 = v0[7];
  (*(v0[6] + 96))(v27, v0[5]);
  (*(v26 + 32))(v23, v27, v25);
  v28 = OUTLINED_FUNCTION_7_16();
  v29(v28);
  v30 = (*(v26 + 88))(v24, v25);
  v31 = v0[9];
  v32 = v0[8];
  if (v30 != *MEMORY[0x277D553F0])
  {
    v38 = *(v31 + 8);
    v38(v0[11], v32);
    v38(v0[10], v0[8]);
    goto LABEL_19;
  }

  v33 = v0[10];
  (*(v31 + 96))(v33, v32);
  v34 = *v33;
  v0[16] = v34;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[17] = v35;
  *v35 = v36;
  v35[1] = sub_2696E0CC4;
  v37 = v0[2];

  return MEMORY[0x2821BBA00](v37, v34);
}

uint64_t sub_2696E0B58()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2696E0CC4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_2696E0E70;
  }

  else
  {
    v5 = sub_2696E0DC8;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2696E0DC8()
{

  v0 = OUTLINED_FUNCTION_7_16();
  v1(v0);

  OUTLINED_FUNCTION_4_17();

  return v2();
}

uint64_t sub_2696E0E70()
{

  v0 = OUTLINED_FUNCTION_7_16();
  v1(v0);

  OUTLINED_FUNCTION_7_7();

  return v2();
}

uint64_t sub_2696E0F1C()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v4 = __swift_project_value_buffer(v0, qword_28033D910);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "CommonIntentThirdPartyAppResolutionStrategy#parseConfirmationResponse", v7, 2u);
    OUTLINED_FUNCTION_10();
  }

  v8 = OUTLINED_FUNCTION_7_16();
  v9(v8);
  sub_269853564();
  return sub_269853554();
}

uint64_t sub_2696E10B8()
{
  OUTLINED_FUNCTION_2_7();
  v0[7] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v2);
  v0[8] = OUTLINED_FUNCTION_4_7();
  v3 = sub_2698548D4();
  v0[9] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v0[10] = v4;
  v0[11] = OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2696E1188()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  __swift_project_value_buffer(*(v0 + 72), qword_28033D910);
  v1 = OUTLINED_FUNCTION_2_8();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_16_2();
    *v5 = 0;
    _os_log_impl(&dword_269684000, v3, v4, "CommonIntentThirdPartyAppResolutionStrategy#makeConfirmationPrompt", v5, 2u);
    OUTLINED_FUNCTION_10();
  }

  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);

  (*(v7 + 8))(v6, v9);
  v11 = sub_269853234();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  v12 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v13 = MEMORY[0x277D5C1D8];
  v10[3] = v12;
  v10[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v10);
  MEMORY[0x26D643FF0](MEMORY[0x277D84F90], v8, MEMORY[0x277D84F90], v0 + 16);
  sub_269698048(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_269698048(v8, &qword_280323010, &unk_26985B640);

  OUTLINED_FUNCTION_4_17();

  return v14();
}

uint64_t sub_2696E135C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2696E1388()
{
  OUTLINED_FUNCTION_2_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_2696E141C;

  return sub_26970C514();
}

uint64_t sub_2696E141C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_2696E14FC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0((v0 + 368));

  return v0;
}

uint64_t sub_2696E157C()
{
  sub_2696E14FC();

  return MEMORY[0x2821FE8D8](v0, 426, 7);
}

uint64_t sub_2696E15C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696E1660;

  return sub_2696DFC18();
}

uint64_t sub_2696E1660()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2696E174C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696E02E0();
}

uint64_t sub_2696E17E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696E04E0();
}

uint64_t sub_2696E1890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BA010](a1, a2, a3, a4);
}

uint64_t sub_2696E196C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696E10B8();
}

uint64_t sub_2696E1A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BB9E8](a1, a2, a3, a4);
}

uint64_t sub_2696E1AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BB9F0](a1, a2, a3, a4);
}

uint64_t sub_2696E1B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BB9D8](a1, a2, a3, a4);
}

uint64_t sub_2696E1C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BB9E0](a1, a2, a3, a4);
}

uint64_t sub_2696E1D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2696DA938;

  return MEMORY[0x2821BB9D0](a1, a2, a3, a4, a5);
}

uint64_t sub_2696E1E04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2696DAF80;

  return sub_2696E135C(a1, a2);
}

uint64_t sub_2696E1EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}

uint64_t sub_2696E1F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t sub_2696E2038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t sub_2696E20FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2696DAF80;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

unint64_t sub_2696E2200()
{
  result = qword_280323790;
  if (!qword_280323790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323790);
  }

  return result;
}

uint64_t sub_2696E2244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696E22FC(uint64_t a1)
{
  v2 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696E2358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323798, &unk_26985C770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696E23C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323798, &unk_26985C770);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2696E249C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v155 = a1;
  v160 = a3;
  v156 = *v3;
  v157 = a2;
  v135[7] = sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v135[6] = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v6);
  v135[3] = v135 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v9 = OUTLINED_FUNCTION_8_9(v8);
  MEMORY[0x28223BE20](v9);
  v139 = v135 - v10;
  OUTLINED_FUNCTION_2_13();
  v138 = sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v137 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v136 = v14 - v13;
  OUTLINED_FUNCTION_2_13();
  v143 = sub_269852474();
  OUTLINED_FUNCTION_8();
  v159 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v17);
  v158 = v135 - v18;
  OUTLINED_FUNCTION_2_13();
  v142 = sub_269853874();
  OUTLINED_FUNCTION_8();
  v141 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v140 = v22 - v21;
  v23 = OUTLINED_FUNCTION_2_13();
  v147 = type metadata accessor for MediaNLIntent(v23);
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_3_1();
  v148 = v25 - v24;
  OUTLINED_FUNCTION_2_13();
  sub_269853F44();
  OUTLINED_FUNCTION_8();
  v150 = v27;
  v151 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v149 = v29 - v28;
  OUTLINED_FUNCTION_2_13();
  sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v153 = v31;
  v154 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v34 = (v33 - v32);
  v35 = sub_269853404();
  OUTLINED_FUNCTION_8();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_1();
  v41 = (v40 - v39);
  v42 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v48);
  v50 = v135 - v49;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v51 = __swift_project_value_buffer(v42, qword_28033D910);
  v52 = v44;
  v53 = v44 + 16;
  v54 = *(v44 + 16);
  v144 = v51;
  v55 = v42;
  v146 = v53;
  v145 = v54;
  v54(v50);
  v56 = sub_2698548B4();
  v57 = sub_269854F14();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_16_2();
    *v58 = 0;
    _os_log_impl(&dword_269684000, v56, v57, "CommonMediaItemDisambiguationFlowStrategy.actionForInput() called", v58, 2u);
    OUTLINED_FUNCTION_10();
  }

  v59 = *(v52 + 8);
  v152 = v52 + 8;
  v59(v50, v55);
  v60 = v59;
  sub_2698536E4();
  sub_2698536D4();
  v61 = sub_2698533F4();
  v63 = v62;
  (*(v37 + 8))(v41, v35);
  if (v61 == 0x657449616964656DLL && v63 == 0xEA0000000000736DLL)
  {

    v66 = v158;
    v67 = v159;
  }

  else
  {
    v65 = sub_269855584();

    v66 = v158;
    v67 = v159;
    if ((v65 & 1) == 0)
    {
      sub_269853014();
      return;
    }
  }

  sub_269853844();
  v69 = v153;
  v68 = v154;
  v70 = (*(v153 + 88))(v34, v154);
  if (v70 == *MEMORY[0x277D5C128])
  {
    v71 = OUTLINED_FUNCTION_14_7();
    v72(v71);
    v74 = v149;
    v73 = v150;
    v75 = v151;
    (*(v150 + 32))(v149, v34, v151);
    v76 = v148;
    (*(v73 + 16))(v148, v74, v75);
    if (qword_280322580 != -1)
    {
      OUTLINED_FUNCTION_7_17(&qword_280322580);
    }

    sub_2696DAEF8();
    sub_269853D54();
    if (v163)
    {
      v162[2] = v162[4];
      v162[3] = v163;
      OUTLINED_FUNCTION_20_5();
      v162[0] = v77;
      v162[1] = v78;
      v161[0] = 0;
      v161[1] = 0xE000000000000000;
      v79 = sub_269693054();
      OUTLINED_FUNCTION_23_4(v162, v161, v80, v81, v82, v83, MEMORY[0x277D837D0], v84, MEMORY[0x277D837D0], v79, v79, v79);

      sub_2696CC460(v76);

      sub_269853004();
    }

    else
    {
      sub_2696CC460(v76);
      OUTLINED_FUNCTION_5_16();
      v106();
      v107 = sub_2698548B4();
      v108 = sub_269854F14();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_24(v109);
        OUTLINED_FUNCTION_29_3(&dword_269684000, v110, v111, "CommonMediaItemDisambiguationFlowStrategy.actionForInput, MediaNLIntent canonical ID is nil");
        OUTLINED_FUNCTION_12_1();
      }

      v112 = OUTLINED_FUNCTION_0_17();
      (v60)(v112);
      sub_269853014();
    }

    (*(v73 + 8))(v74, v75);
    return;
  }

  v85 = v55;
  if (v70 == *MEMORY[0x277D5C140])
  {
    v159 = v60;
    v86 = OUTLINED_FUNCTION_14_7();
    v87(v86);
    v88 = v141;
    v89 = v140;
    v90 = v34;
    v91 = v142;
    (*(v141 + 32))(v140, v90, v142);
    v92 = v136;
    sub_269853864();
    v93 = v139;
    sub_2696D3C74();
    (*(v137 + 8))(v92, v138);
    v94 = v143;
    if (__swift_getEnumTagSinglePayload(v93, 1, v143) == 1)
    {
      sub_269698048(v93, &qword_280323360, &unk_26985AB80);
    }

    else
    {
      v67[4](v66, v93, v94);
      sub_269852424();
      v113 = sub_2698520D4();
      v115 = v114;
      v116 = OUTLINED_FUNCTION_12_12();
      v117(v116);

      v118 = HIBYTE(v115) & 0xF;
      if ((v115 & 0x2000000000000000) == 0)
      {
        v118 = v113 & 0xFFFFFFFFFFFFLL;
      }

      if (v118)
      {
        sub_269853004();
        v119 = OUTLINED_FUNCTION_17_6();
        v120(v119);
LABEL_39:
        (*(v88 + 8))(v89, v91);
        return;
      }

      v121 = OUTLINED_FUNCTION_17_6();
      v122(v121);
    }

    v123 = v135[4];
    OUTLINED_FUNCTION_5_16();
    v124();
    v125 = sub_2698548B4();
    v126 = sub_269854F14();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v127);
      OUTLINED_FUNCTION_29_3(&dword_269684000, v128, v129, "CommonMediaItemDisambiguationFlowStrategy.actionForInput, pegasusResults missing videoClientComponent or no selectedItemIdentifier");
      OUTLINED_FUNCTION_12_1();
    }

    (v159)(v123, v85);
    sub_269853014();
    goto LABEL_39;
  }

  if (v70 == *MEMORY[0x277D5C148])
  {
    v95 = OUTLINED_FUNCTION_14_7();
    v96(v95);
    v97 = *v34;
    sub_2696D6C54();
    if (v98)
    {
      v99 = v98;
      v100 = v135[1];
      sub_269854544();
      sub_269852424();
      (v67[1])(v100, v143);
      v101 = sub_2698520D4();
      v41 = v102;
      v103 = OUTLINED_FUNCTION_12_12();
      v104(v103);

      v105 = (v41 >> 56) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v105 = v101 & 0xFFFFFFFFFFFFLL;
      }

      if (v105)
      {
        sub_269853004();

        return;
      }
    }

    v130 = v135[0];
    OUTLINED_FUNCTION_5_16();
    v131();
    v132 = sub_2698548B4();
    v133 = sub_269854F14();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v134);
      _os_log_impl(&dword_269684000, v132, v133, "CommonMediaItemDisambiguationFlowStrategy.actionForInput, no firstVideoExperience or no selectedItemIdentifier", v41, 2u);
      OUTLINED_FUNCTION_12_1();
    }

    (v60)(v130, v55);
    sub_269853014();
  }

  else
  {
    sub_269853014();
    (*(v69 + 8))(v34, v68);
  }
}

uint64_t sub_2696E30F4()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = *v0;
  v3 = sub_269853404();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_4_7();
  v5 = sub_2698548D4();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2696E320C()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  __swift_project_value_buffer(*(v0 + 56), qword_28033D910);
  v1 = OUTLINED_FUNCTION_2_8();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_16_2();
    *v5 = 0;
    _os_log_impl(&dword_269684000, v3, v4, "CommonMediaItemDisambiguationFlowStrategy.makeDisambiguationItemContainer() called", v5, 2u);
    OUTLINED_FUNCTION_10();
  }

  v6 = OUTLINED_FUNCTION_17_6();
  v7(v6);
  sub_2698536E4();
  sub_2698536D4();
  v8 = sub_2698533F4();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_0_17();
  v12(v11);
  if (v8 == 0x657449616964656DLL && v10 == 0xEA0000000000736DLL)
  {
  }

  else
  {
    v14 = sub_269855584();

    if ((v14 & 1) == 0)
    {
      v15 = sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v15);
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = 10;
      v17 = 3;
LABEL_17:
      *(v16 + 24) = v17;
      swift_willThrow();

      OUTLINED_FUNCTION_7_7();

      return v26();
    }
  }

  v18 = sub_2698536C4();
  v19 = [v18 disambiguationItems];

  v20 = sub_269854CB4();
  v21 = sub_2696E3558(v20);

  if (!v21)
  {
    v25 = sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v25);
    v17 = 0;
    *v16 = 0xD000000000000013;
    *(v16 + 8) = 0x800000026987CFF0;
    *(v16 + 16) = 0;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323830, qword_26985B560);
  swift_allocObject();
  v22 = sub_2698537E4();

  v23 = *(v0 + 8);

  return v23(v22);
}

uint64_t sub_2696E3558(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2698552A4();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_2696B6F94(v3, v5);
    sub_2696E55AC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_269855284();
    sub_2698552B4();
    sub_2698552C4();
    sub_269855294();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_2696E3644()
{
  OUTLINED_FUNCTION_2_7();
  v1[14] = v2;
  v1[15] = v3;
  v1[12] = v4;
  v1[13] = v5;
  v6 = *v0;
  v1[16] = *v0;
  v1[17] = *(v6 + 80);
  v7 = sub_269853344();
  v1[18] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[19] = v8;
  v1[20] = OUTLINED_FUNCTION_4_7();
  v9 = sub_269852474();
  v1[21] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[22] = v10;
  v1[23] = OUTLINED_FUNCTION_4_7();
  v11 = sub_2698523C4();
  v1[24] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[25] = v12;
  v1[26] = OUTLINED_FUNCTION_4_7();
  v13 = sub_269851EF4();
  v1[27] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[28] = v14;
  v1[29] = OUTLINED_FUNCTION_4_7();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v15);
  v1[30] = OUTLINED_FUNCTION_4_7();
  v16 = sub_269853874();
  v1[31] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v1[32] = v17;
  v1[33] = OUTLINED_FUNCTION_4_7();
  v18 = type metadata accessor for MediaNLIntent(0);
  v1[34] = v18;
  OUTLINED_FUNCTION_8_9(v18);
  v1[35] = OUTLINED_FUNCTION_4_7();
  v19 = sub_269853F44();
  v1[36] = v19;
  OUTLINED_FUNCTION_5_12(v19);
  v1[37] = v20;
  v1[38] = OUTLINED_FUNCTION_4_7();
  v21 = sub_2698538B4();
  v1[39] = v21;
  OUTLINED_FUNCTION_5_12(v21);
  v1[40] = v22;
  v1[41] = OUTLINED_FUNCTION_4_7();
  v23 = sub_2698548D4();
  v1[42] = v23;
  OUTLINED_FUNCTION_5_12(v23);
  v1[43] = v24;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v25);
}

uint64_t sub_2696E39A8()
{
  v98 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v2 = v0[45];
  v3 = v0[43];
  v96 = __swift_project_value_buffer(v0[42], qword_28033D910);
  v95 = *(v3 + 16);
  v95(v2);
  v4 = sub_2698548B4();
  v5 = sub_269854F14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v6);
    _os_log_impl(&dword_269684000, v4, v5, "CommonMediaItemDisambiguationFlowStrategy.parseDisambiguationResult() called", v1, 2u);
    OUTLINED_FUNCTION_12_1();
  }

  v7 = v0[45];
  v9 = v0[42];
  v8 = v0[43];

  v10 = *(v8 + 8);
  v10(v7, v9);
  sub_269853844();
  v11 = OUTLINED_FUNCTION_0_17();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x277D5C128])
  {
    v14 = v0[41];
    v15 = v0[38];
    v17 = v0[36];
    v16 = v0[37];
    v18 = v0[35];
    (*(v0[40] + 96))(v14, v0[39]);
    (*(v16 + 32))(v15, v14, v17);
    (*(v16 + 16))(v18, v15, v17);
    if (qword_280322580 != -1)
    {
      OUTLINED_FUNCTION_7_17(&qword_280322580);
    }

    sub_2696DAEF8();
    sub_269853D54();
    v19 = v0[3];
    v20 = v0[35];
    if (v19)
    {
      v94 = v10;
      v0[4] = v0[2];
      v0[5] = v19;
      OUTLINED_FUNCTION_20_5();
      v0[6] = v21;
      v0[7] = v22;
      v0[8] = 0;
      v0[9] = 0xE000000000000000;
      v23 = sub_269693054();
      v29 = OUTLINED_FUNCTION_23_4((v0 + 6), (v0 + 8), v24, v25, v26, v27, MEMORY[0x277D837D0], v28, MEMORY[0x277D837D0], v23, v23, v23);
      v31 = v30;

      sub_2696CC460(v20);
LABEL_19:
      v68 = OUTLINED_FUNCTION_16_7();
      v70(v68, v69);
      goto LABEL_20;
    }

    sub_2696CC460(v0[35]);
    v58 = OUTLINED_FUNCTION_16_7();
    v59(v58);
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D5C140])
  {
    v94 = v10;
    v32 = v0[41];
    v33 = v0[32];
    v34 = v0[33];
    v36 = v0[30];
    v35 = v0[31];
    v38 = v0[28];
    v37 = v0[29];
    v39 = v0[27];
    v40 = v0[21];
    (*(v0[40] + 96))(v32, v0[39]);
    (*(v33 + 32))(v34, v32, v35);
    sub_269853864();
    sub_2696D3C74();
    (*(v38 + 8))(v37, v39);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v40);
    v42 = v0[30];
    if (EnumTagSinglePayload != 1)
    {
      v63 = v0[25];
      v62 = v0[26];
      v64 = v0[24];
      v65 = v0[21];
      v66 = v0[22];
      sub_269852424();
      (*(v66 + 8))(v42, v65);
      v29 = sub_2698520D4();
      v31 = v67;
      (*(v63 + 8))(v62, v64);
      goto LABEL_19;
    }

    v43 = OUTLINED_FUNCTION_16_7();
    v44(v43);
    sub_269698048(v42, &qword_280323360, &unk_26985AB80);
LABEL_17:
    v60 = sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v60);
    OUTLINED_FUNCTION_5_14(v61, 11);
LABEL_27:
    swift_willThrow();
    goto LABEL_28;
  }

  v45 = v0[40];
  v46 = v0[41];
  v47 = v0[39];
  if (v13 == *MEMORY[0x277D5C148])
  {
    (*(v45 + 96))(v0[41], v0[39]);
    v48 = *v46;
    sub_2696D6C54();
    if (v49)
    {
      v50 = v49;
      v94 = v10;
      v51 = v0[25];
      v52 = v0[26];
      v53 = v0[23];
      v54 = v0[24];
      v55 = v0[21];
      v56 = v0[22];
      sub_269854544();

      sub_269852424();
      (*(v56 + 8))(v53, v55);
      v29 = sub_2698520D4();
      v31 = v57;

      (*(v51 + 8))(v52, v54);
LABEL_20:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323840, &qword_26985B650);
      v0[11] = sub_269853544();
      v71 = swift_task_alloc();
      *(v71 + 16) = v29;
      *(v71 + 24) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323848, &qword_26985B658);
      sub_269693204(qword_280323850, &qword_280323848, &qword_26985B658, MEMORY[0x277D83970]);
      sub_269854C24();

      v72 = v0[10];
      if (v72)
      {
        v74 = v0[19];
        v73 = v0[20];
        v93 = v0[18];

        sub_2698536E4();
        v75 = sub_2698536B4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_2698590C0;
        *(v76 + 32) = v72;
        v77 = v72;
        sub_2697A1EFC(v76);

        v97[3] = sub_2696E55AC();
        v97[0] = v77;
        v78 = v77;
        sub_2698536B4();
        sub_269853334();
        sub_269853424();

        (*(v74 + 8))(v73, v93);

        OUTLINED_FUNCTION_7_7();
        goto LABEL_29;
      }

      (v95)(v0[44], v96, v0[42]);

      v80 = sub_2698548B4();
      v81 = sub_269854F24();

      v82 = os_log_type_enabled(v80, v81);
      v83 = v0[44];
      v84 = v0[42];
      if (v82)
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v97[0] = v86;
        *v85 = 136315138;
        v87 = sub_26974F520(v29, v31, v97);

        *(v85 + 4) = v87;
        _os_log_impl(&dword_269684000, v80, v81, "No content matched selected Identifier: %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v86);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      v94(v83, v84);
      v90 = sub_2696BAE9C();
      OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v90);
      *(v91 + 8) = 0;
      *(v91 + 16) = 0;
      *v91 = 3;
      *(v91 + 24) = 3;
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  v88 = sub_2696BAE9C();
  OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v88);
  OUTLINED_FUNCTION_5_14(v89, 13);
  swift_willThrow();
  (*(v45 + 8))(v46, v47);
LABEL_28:

  OUTLINED_FUNCTION_7_7();
LABEL_29:

  return v79();
}

uint64_t sub_2696E42C0(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2697400A0(*a1);
  if (v6)
  {
    if (v5 == a2 && v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_269855584();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2696E4344()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v4);
  v1[11] = OUTLINED_FUNCTION_4_7();
  v5 = sub_269853234();
  v1[12] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_4_7();
  v7 = sub_2698532A4();
  v1[15] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698548D4();
  v1[18] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_4_7();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2696E44D8()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  __swift_project_value_buffer(v0[18], qword_28033D910);
  v1 = OUTLINED_FUNCTION_2_8();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_16_2();
    *v5 = 0;
    _os_log_impl(&dword_269684000, v3, v4, "CommonMediaItemDisambiguationFlowStrategy.makePromptForDisambiguation() called", v5, 2u);
    OUTLINED_FUNCTION_10();
  }

  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v9 = v0[9];

  (*(v7 + 8))(v6, v8);
  __swift_project_boxed_opaque_existential_1((v9 + 56), *(v9 + 80));
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_2696E4680;
  v11 = v0[17];

  return sub_269788BF4(v11, 0xD000000000000012, 0x800000026987CFD0);
}

uint64_t sub_2696E4680()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  *(v4 + 176) = v0;

  if (v0)
  {
    v5 = sub_2696E4AF0;
  }

  else
  {
    v5 = sub_2696E4788;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2696E4788()
{
  sub_2698536E4();
  v1 = sub_2698536C4();
  v2 = [v1 disambiguationItems];

  v3 = sub_269854CB4();
  v4 = sub_2696E3558(v3);

  if (v4)
  {
    v24 = *(v0 + 136);
    v25 = *(v0 + 128);
    v5 = *(v0 + 112);
    v26 = *(v0 + 120);
    v6 = *(v0 + 104);
    v27 = *(v0 + 96);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = sub_2698536A4();
    sub_26973F904(v5, v4, v10, v8[12]);
    v12 = v11;

    __swift_project_boxed_opaque_existential_1(v8 + 2, v8[5]);
    OUTLINED_FUNCTION_0_17();
    sub_269852CA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2698590C0;
    *(v13 + 32) = v12;
    (*(v6 + 16))(v7, v5, v27);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v27);
    v14 = sub_2698538F4();
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v15 = MEMORY[0x277D5C1D8];
    v9[3] = v14;
    v9[4] = v15;
    __swift_allocate_boxed_opaque_existential_1(v9);
    v16 = v12;
    sub_2698530D4();

    sub_269698048(v0 + 16, &qword_280323028, qword_26985AD20);
    sub_269698048(v7, &qword_280323010, &unk_26985B640);
    (*(v6 + 8))(v5, v27);
    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 120);
    v21 = sub_2696BAE9C();
    OUTLINED_FUNCTION_30_1(&type metadata for VideoError, v21);
    *v22 = 0xD000000000000013;
    *(v22 + 8) = 0x800000026987CFF0;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
  }

  OUTLINED_FUNCTION_7_7();

  return v17();
}

uint64_t sub_2696E4AF0()
{

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2696E4B7C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_2696D1E70(v0 + 56);

  return v0;
}

uint64_t sub_2696E4BAC()
{
  sub_2696E4B7C();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

void sub_2696E4BFC(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for CommonMediaItemDisambiguationFlowStrategy(0, a2[10], a2[11], a2[12]);

  JUMPOUT(0x26D643790);
}

uint64_t sub_2696E4C84(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2696E4D20;

  return sub_2696E30F4();
}

uint64_t sub_2696E4D20(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_2696E4E28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696BBFF8;

  return sub_2696E3644();
}

uint64_t sub_2696E4EEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696BBE14;

  return sub_2696E4344();
}

uint64_t sub_2696E4F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_2696E507C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_2696E5160(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_2696E5234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_2696E5308(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for CommonMediaItemDisambiguationFlowStrategy(0, a2[10], a2[11], a2[12]);

  return sub_2698528E4();
}

uint64_t sub_2696E5364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy(0, a5[10], a5[11], a5[12]);
  *v13 = v6;
  v13[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2696E5450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for CommonMediaItemDisambiguationFlowStrategy(0, a6[10], a6[11], a6[12]);
  *v15 = v7;
  v15[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

unint64_t sub_2696E55AC()
{
  result = qword_280323838;
  if (!qword_280323838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323838);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_269855104(a1, a2, 0, 0, 0, 1, a7, a7, a9, a10, a11, a12);
}

void OUTLINED_FUNCTION_29_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2696E5730@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v88 = v2;
  v89 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v87 = v4 - v3;
  OUTLINED_FUNCTION_2_13();
  v101 = sub_269852474();
  OUTLINED_FUNCTION_8();
  v92 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v85 = v8 - v7;
  OUTLINED_FUNCTION_2_13();
  v93 = sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v91 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v90 = v12 - v11;
  OUTLINED_FUNCTION_2_13();
  v97 = sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v95 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v94 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v18 = OUTLINED_FUNCTION_8_9(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v85 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803238E0, qword_26985B848);
  v22 = OUTLINED_FUNCTION_8_9(v21);
  v23 = MEMORY[0x28223BE20](v22);
  v86 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v99 = &v85 - v25;
  OUTLINED_FUNCTION_2_13();
  v100 = sub_269853874();
  OUTLINED_FUNCTION_8();
  v98 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v96 = v29 - v28;
  v30 = OUTLINED_FUNCTION_2_13();
  type metadata accessor for MediaNLIntent(v30);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_1();
  v34 = v33 - v32;
  v35 = sub_269853F44();
  OUTLINED_FUNCTION_8();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_1();
  v41 = v40 - v39;
  v42 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_1();
  v48 = (v47 - v46);
  sub_269853844();
  v49 = (*(v44 + 88))(v48, v42);
  if (v49 == *MEMORY[0x277D5C128])
  {
    v50 = OUTLINED_FUNCTION_13_6();
    v51(v50);
    (*(v37 + 32))(v41, v48, v35);
    (*(v37 + 16))(v34, v41, v35);
    if (qword_280322628 != -1)
    {
      OUTLINED_FUNCTION_12_10(&qword_280322628);
    }

    OUTLINED_FUNCTION_5_17();
    sub_2696E84DC(v52, v53, &unk_269860BD8);
    sub_269853D54();
    sub_2696CC460(v34);
    if (v103 - 1 >= 2)
    {
      if (v103)
      {
        sub_269853014();
      }

      else
      {
        sub_269853004();
      }
    }

    else
    {
      sub_269852FF4();
    }

    return (*(v37 + 8))(v41, v35);
  }

  else if (v49 == *MEMORY[0x277D5C140])
  {
    v54 = OUTLINED_FUNCTION_13_6();
    v55(v54);
    v56 = v98;
    v57 = v96;
    v58 = v100;
    (*(v98 + 32))(v96, v48, v100);
    v59 = v94;
    sub_269853864();
    sub_2696D3C74();
    (*(v95 + 8))(v59, v97);
    v60 = v101;
    if (__swift_getEnumTagSinglePayload(v20, 1, v101) == 1)
    {
      sub_26969B0C0(v20, &qword_280323360, &unk_26985AB80);
      v61 = 1;
      v62 = v99;
    }

    else
    {
      sub_269852424();
      (*(v92 + 8))(v20, v60);
      v62 = v99;
      sub_269852364();
      v73 = OUTLINED_FUNCTION_23_5();
      v74(v73);
      v61 = 0;
    }

    v75 = sub_269852594();
    __swift_storeEnumTagSinglePayload(v62, v61, 1, v75);
    sub_2696E5FC8(v62);
    sub_26969B0C0(v62, &qword_2803238E0, qword_26985B848);
    return (*(v56 + 8))(v57, v58);
  }

  else if (v49 == *MEMORY[0x277D5C148])
  {
    v63 = OUTLINED_FUNCTION_13_6();
    v64(v63);
    v65 = *v48;
    sub_2696D6C54();
    if (v66)
    {
      v67 = v66;
      v68 = v85;
      sub_269854544();

      sub_269852424();
      (*(v92 + 8))(v68, v101);
      v69 = v86;
      sub_269852364();
      v70 = OUTLINED_FUNCTION_23_5();
      v71(v70);
      v72 = 0;
    }

    else
    {
      v72 = 1;
      v69 = v86;
    }

    v84 = sub_269852594();
    __swift_storeEnumTagSinglePayload(v69, v72, 1, v84);
    sub_2696E5FC8(v69);

    return sub_26969B0C0(v69, &qword_2803238E0, qword_26985B848);
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v77 = v89;
    v78 = __swift_project_value_buffer(v89, qword_28033D910);
    v80 = v87;
    v79 = v88;
    (*(v88 + 16))(v87, v78, v77);
    v81 = sub_2698548B4();
    v82 = sub_269854F14();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = OUTLINED_FUNCTION_16_2();
      *v83 = 0;
      _os_log_impl(&dword_269684000, v81, v82, "CommonNeedsConfirmationFlowStrategy#actionForInput, not a NLv3IntentOnly or pommesResponse parse", v83, 2u);
      MEMORY[0x26D647170](v83, -1, -1);
    }

    (*(v79 + 8))(v80, v77);
    sub_269853014();
    return (*(v44 + 8))(v48, v42);
  }
}

uint64_t sub_2696E5FC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803238E0, qword_26985B848);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_2696E846C(a1, &v13 - v6);
  v8 = sub_269852594();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_2;
  }

  sub_2696E846C(v7, v5);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 88))(v5, v8);
  if (v10 == *MEMORY[0x277D39B10])
  {
    sub_269853004();
    return sub_26969B0C0(v7, &qword_2803238E0, qword_26985B848);
  }

  if (v10 != *MEMORY[0x277D39B08] && v10 != *MEMORY[0x277D39B18])
  {
    (*(v9 + 8))(v5, v8);
LABEL_2:
    sub_269853014();
    return sub_26969B0C0(v7, &qword_2803238E0, qword_26985B848);
  }

  sub_26969B0C0(v7, &qword_2803238E0, qword_26985B848);
  return sub_269852FF4();
}

uint64_t sub_2696E61AC()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v3;
  v1[7] = v4;
  v1[10] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323540, &qword_26985B830);
  OUTLINED_FUNCTION_8_9(v5);
  v1[11] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698548D4();
  v1[12] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[13] = v7;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v8 = sub_269852474();
  v1[18] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[19] = v9;
  v1[20] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269852594();
  v1[21] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[22] = v11;
  v1[23] = OUTLINED_FUNCTION_4_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803238D8, &unk_26985B838);
  v1[24] = v12;
  OUTLINED_FUNCTION_8_9(v12);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v13 = sub_2698523C4();
  v1[27] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v1[28] = v14;
  v1[29] = OUTLINED_FUNCTION_4_7();
  v15 = sub_269851EF4();
  v1[30] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[31] = v16;
  v1[32] = OUTLINED_FUNCTION_4_7();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v17);
  v1[33] = OUTLINED_FUNCTION_4_7();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803238E0, qword_26985B848);
  OUTLINED_FUNCTION_8_9(v18);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v19 = sub_269853874();
  v1[40] = v19;
  OUTLINED_FUNCTION_5_12(v19);
  v1[41] = v20;
  v1[42] = OUTLINED_FUNCTION_4_7();
  v21 = type metadata accessor for MediaNLIntent(0);
  v1[43] = v21;
  OUTLINED_FUNCTION_8_9(v21);
  v1[44] = OUTLINED_FUNCTION_4_7();
  v22 = sub_269853F44();
  v1[45] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v1[46] = v23;
  v1[47] = OUTLINED_FUNCTION_4_7();
  v24 = sub_2698538B4();
  v1[48] = v24;
  OUTLINED_FUNCTION_5_12(v24);
  v1[49] = v25;
  v1[50] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_2696E65F4);
}

uint64_t sub_2696E65F4()
{
  sub_2698536E4();
  v1 = sub_2698536C4();
  v2 = [v1 itemToConfirm];

  sub_269855154();
  swift_unknownObjectRelease();
  sub_2696E55AC();
  if (!swift_dynamicCast())
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    __swift_project_value_buffer(*(v0 + 96), qword_281571B38);
    v18 = OUTLINED_FUNCTION_2_8();
    v19(v18);
    v20 = sub_2698548B4();
    v21 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v21))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v22, v23, "CommonNeedsConfirmationFlowStrategy#parseConfirmationResponse itemToConfirm could not be parsed as INMediaItem");
      OUTLINED_FUNCTION_18_7();
    }

    v25 = *(v0 + 104);
    v24 = *(v0 + 112);
    v26 = *(v0 + 96);

    (*(v25 + 8))(v24, v26);
    sub_2696BAE9C();
    swift_allocError();
    *v27 = xmmword_26985B660;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    swift_willThrow();
    goto LABEL_56;
  }

  v3 = *(v0 + 392);
  v4 = *(v0 + 400);
  v5 = *(v0 + 384);
  v6 = *(v0 + 48);
  sub_269853844();
  v7 = (*(v3 + 88))(v4, v5);
  if (v7 != *MEMORY[0x277D5C128])
  {
    if (v7 != *MEMORY[0x277D5C140])
    {
      if (v7 != *MEMORY[0x277D5C148])
      {
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_10(&qword_2803226E0);
        }

        __swift_project_value_buffer(*(v0 + 96), qword_28033D910);
        v98 = OUTLINED_FUNCTION_2_8();
        v99(v98);
        v100 = sub_2698548B4();
        v101 = sub_269854F14();
        if (OUTLINED_FUNCTION_19_5(v101))
        {
          *OUTLINED_FUNCTION_16_2() = 0;
          OUTLINED_FUNCTION_31_0(&dword_269684000, v102, v103, "CommonNeedsConfirmationFlowStrategy#actionForInput, not a NLv3IntentOnly or pommesResponse parse");
          OUTLINED_FUNCTION_18_7();
        }

        v105 = *(v0 + 392);
        v104 = *(v0 + 400);
        v106 = *(v0 + 384);
        v107 = *(v0 + 136);
        v108 = *(v0 + 96);
        v109 = *(v0 + 104);

        (*(v109 + 8))(v107, v108);
        sub_2696BAE9C();
        swift_allocError();
        *(v110 + 8) = 0;
        *(v110 + 16) = 0;
        *v110 = 13;
        *(v110 + 24) = 3;
        swift_willThrow();

        (*(v105 + 8))(v104, v106);
        goto LABEL_56;
      }

      v179 = v6;
      v43 = *(v0 + 400);
      (*(*(v0 + 392) + 96))(v43, *(v0 + 384));
      v44 = *v43;
      sub_2696D6C54();
      if (v45)
      {
        v46 = v45;
        v47 = *(v0 + 224);
        v48 = *(v0 + 232);
        v177 = *(v0 + 216);
        v49 = *(v0 + 152);
        v50 = *(v0 + 160);
        v51 = *(v0 + 144);
        sub_269854544();

        sub_269852424();
        (*(v49 + 8))(v50, v51);
        sub_269852364();
        (*(v47 + 8))(v48, v177);
        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v130 = *(v0 + 280);
      v129 = *(v0 + 288);
      v131 = *(v0 + 192);
      v132 = *(v0 + 200);
      v134 = *(v0 + 168);
      v133 = *(v0 + 176);
      __swift_storeEnumTagSinglePayload(v129, v52, 1, v134);
      (*(v133 + 104))(v130, *MEMORY[0x277D39B10], v134);
      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v134);
      v138 = *(v131 + 48);
      sub_2696E846C(v129, v132);
      sub_2696E846C(v130, v132 + v138);
      if (__swift_getEnumTagSinglePayload(v132, 1, v134) == 1)
      {
        v140 = *(v0 + 280);
        v139 = *(v0 + 288);
        v141 = *(v0 + 168);

        OUTLINED_FUNCTION_20_6(v140);
        OUTLINED_FUNCTION_20_6(v139);
        v142 = OUTLINED_FUNCTION_22_5();
        v6 = v179;
        if (__swift_getEnumTagSinglePayload(v142, v143, v141) == 1)
        {
          sub_26969B0C0(*(v0 + 200), &qword_2803238E0, qword_26985B848);
          goto LABEL_29;
        }
      }

      else
      {
        v144 = *(v0 + 168);
        sub_2696E846C(*(v0 + 200), *(v0 + 272));
        v145 = OUTLINED_FUNCTION_22_5();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v145, v146, v144);
        v148 = *(v0 + 280);
        v149 = *(v0 + 288);
        v150 = *(v0 + 272);
        if (EnumTagSinglePayload != 1)
        {
          v176 = *(v0 + 200);
          v164 = *(v0 + 288);
          v165 = *(v0 + 176);
          v166 = *(v0 + 184);
          v167 = *(v0 + 168);
          (*(v165 + 32))(v166, v132 + v138, v167);
          OUTLINED_FUNCTION_4_18();
          sub_2696E84DC(v168, v169, MEMORY[0x277D39B28]);
          v170 = sub_269854A54();

          v171 = *(v165 + 8);
          v171(v166, v167);
          OUTLINED_FUNCTION_20_6(v148);
          OUTLINED_FUNCTION_20_6(v164);
          v171(v150, v167);
          OUTLINED_FUNCTION_20_6(v176);
          v6 = v179;
          if ((v170 & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_29;
        }

        v151 = *(v0 + 168);
        v152 = *(v0 + 176);

        OUTLINED_FUNCTION_26_1(v148);
        OUTLINED_FUNCTION_26_1(v149);
        (*(v152 + 8))(v150, v151);
        v6 = v179;
      }

      sub_26969B0C0(*(v0 + 200), &qword_2803238D8, &unk_26985B838);
      goto LABEL_51;
    }

    v178 = v6;
    v29 = *(v0 + 256);
    v28 = *(v0 + 264);
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    v32 = *(v0 + 144);
    (*(*(v0 + 392) + 96))(*(v0 + 400), *(v0 + 384));
    v33 = OUTLINED_FUNCTION_18_3();
    v34(v33);
    sub_269853864();
    sub_2696D3C74();
    (*(v30 + 8))(v29, v31);
    if (__swift_getEnumTagSinglePayload(v28, 1, v32) == 1)
    {
      sub_26969B0C0(*(v0 + 264), &qword_280323360, &unk_26985AB80);
      v35 = 1;
    }

    else
    {
      v53 = *(v0 + 264);
      v54 = *(v0 + 224);
      v55 = *(v0 + 232);
      v56 = *(v0 + 216);
      v58 = *(v0 + 144);
      v57 = *(v0 + 152);
      sub_269852424();
      (*(v57 + 8))(v53, v58);
      sub_269852364();
      (*(v54 + 8))(v55, v56);
      v35 = 0;
    }

    v59 = *(v0 + 304);
    v60 = *(v0 + 208);
    v61 = *(v0 + 192);
    v63 = *(v0 + 168);
    v62 = *(v0 + 176);
    __swift_storeEnumTagSinglePayload(*(v0 + 312), v35, 1, v63);
    (*(v62 + 104))(v59, *MEMORY[0x277D39B10], v63);
    OUTLINED_FUNCTION_24_4();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
    v67 = *(v61 + 48);
    v68 = OUTLINED_FUNCTION_18_3();
    sub_2696E846C(v68, v69);
    sub_2696E846C(v59, v60 + v67);
    if (__swift_getEnumTagSinglePayload(v60, 1, v63) == 1)
    {
      v70 = *(v0 + 328);
      v71 = *(v0 + 336);
      v73 = *(v0 + 312);
      v72 = *(v0 + 320);
      v74 = *(v0 + 168);
      sub_26969B0C0(*(v0 + 304), &qword_2803238E0, qword_26985B848);
      sub_26969B0C0(v73, &qword_2803238E0, qword_26985B848);
      (*(v70 + 8))(v71, v72);
      v75 = OUTLINED_FUNCTION_22_5();
      if (__swift_getEnumTagSinglePayload(v75, v76, v74) == 1)
      {
        sub_26969B0C0(*(v0 + 208), &qword_2803238E0, qword_26985B848);
        v6 = v178;
        goto LABEL_29;
      }
    }

    else
    {
      v112 = *(v0 + 168);
      v111 = *(v0 + 176);
      sub_2696E846C(*(v0 + 208), *(v0 + 296));
      v113 = OUTLINED_FUNCTION_22_5();
      v115 = __swift_getEnumTagSinglePayload(v113, v114, v112);
      v116 = (v111 + 8);
      v118 = *(v0 + 328);
      v117 = *(v0 + 336);
      v119 = *(v0 + 320);
      v175 = *(v0 + 312);
      v120 = *(v0 + 296);
      v121 = *(v0 + 304);
      if (v115 != 1)
      {
        v174 = *(v0 + 208);
        v124 = *(v0 + 184);
        v173 = *(v0 + 320);
        v125 = *(v0 + 168);
        (*(*(v0 + 176) + 32))(v124, v60 + v67, v125);
        OUTLINED_FUNCTION_4_18();
        sub_2696E84DC(v126, v127, MEMORY[0x277D39B28]);
        v172 = sub_269854A54();
        v128 = *v116;
        (*v116)(v124, v125);
        sub_26969B0C0(v121, &qword_2803238E0, qword_26985B848);
        sub_26969B0C0(v175, &qword_2803238E0, qword_26985B848);
        (*(v118 + 8))(v117, v173);
        v128(v120, v125);
        sub_26969B0C0(v174, &qword_2803238E0, qword_26985B848);
        v6 = v178;
        if ((v172 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_29;
      }

      OUTLINED_FUNCTION_26_1(*(v0 + 304));
      OUTLINED_FUNCTION_26_1(v175);
      (*(v118 + 8))(v117, v119);
      v122 = OUTLINED_FUNCTION_18_3();
      v123(v122);
    }

    sub_26969B0C0(*(v0 + 208), &qword_2803238D8, &unk_26985B838);
    v6 = v178;
    goto LABEL_51;
  }

  v8 = *(v0 + 376);
  v10 = *(v0 + 360);
  v9 = *(v0 + 368);
  v11 = *(v0 + 352);
  (*(*(v0 + 392) + 96))(*(v0 + 400), *(v0 + 384));
  v12 = OUTLINED_FUNCTION_18_3();
  v13(v12);
  (*(v9 + 16))(v11, v8, v10);
  if (qword_280322628 != -1)
  {
    OUTLINED_FUNCTION_12_10(&qword_280322628);
  }

  v14 = *(v0 + 352);
  OUTLINED_FUNCTION_5_17();
  sub_2696E84DC(v15, v16, &unk_269860BD8);
  sub_269853D54();
  sub_2696CC460(v14);
  v17 = *(v0 + 408);
  if (v17 == 7)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
LABEL_51:
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    __swift_project_value_buffer(*(v0 + 96), qword_281571B38);
    v153 = OUTLINED_FUNCTION_2_8();
    v154(v153);
    v155 = sub_2698548B4();
    v156 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v156))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_31_0(&dword_269684000, v157, v158, "CommonNeedsConfirmationFlowStrategy#parseConfirmationResponse failed");
      OUTLINED_FUNCTION_18_7();
    }

    v159 = *(v0 + 120);
    v160 = *(v0 + 96);
    v161 = *(v0 + 104);

    (*(v161 + 8))(v159, v160);
    sub_2696BAE9C();
    swift_allocError();
    *v162 = xmmword_26985B670;
    *(v162 + 16) = 0;
    *(v162 + 24) = 1;
    swift_willThrow();

LABEL_56:

    OUTLINED_FUNCTION_7_7();
    goto LABEL_57;
  }

  v36 = sub_2697A9738(v17);
  v38 = *(v0 + 368);
  v39 = *(v0 + 376);
  v40 = *(v0 + 360);
  if (v36 == 7562617 && v37 == 0xE300000000000000)
  {

    (*(v38 + 8))(v39, v40);
  }

  else
  {
    v42 = sub_269855584();

    (*(v38 + 8))(v39, v40);
    if ((v42 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

LABEL_29:
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v180 = v6;
  v77 = *(v0 + 128);
  v79 = *(v0 + 96);
  v78 = *(v0 + 104);
  v80 = __swift_project_value_buffer(v79, qword_281571B38);
  (*(v78 + 16))(v77, v80, v79);
  v81 = sub_2698548B4();
  v82 = sub_269854F14();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = OUTLINED_FUNCTION_16_2();
    *v83 = 0;
    _os_log_impl(&dword_269684000, v81, v82, "CommonNeedsConfirmationFlowStrategy#parseConfirmationResponse confirmed", v83, 2u);
    MEMORY[0x26D647170](v83, -1, -1);
  }

  v84 = *(v0 + 128);
  v86 = *(v0 + 96);
  v85 = *(v0 + 104);
  v87 = *(v0 + 88);

  (*(v85 + 8))(v84, v86);
  v88 = sub_2698536B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_2698590C0;
  *(v89 + 32) = v180;
  v90 = v180;
  sub_2697A1EFC(v89);

  v91 = *MEMORY[0x277D5BED8];
  v92 = sub_269853414();
  OUTLINED_FUNCTION_4_3();
  (*(v93 + 104))(v87, v91, v92);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v92);
  sub_2698536B4();
  sub_2698535B4();

  OUTLINED_FUNCTION_7_7();
LABEL_57:

  return v97();
}

uint64_t sub_2696E767C()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v4);
  v1[11] = OUTLINED_FUNCTION_4_7();
  v5 = sub_2698532A4();
  v1[12] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_2696E7780);
}

uint64_t sub_2696E7780()
{
  sub_2698536E4();
  v1 = sub_2698536A4();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_2696E7844;
  v3 = v0[14];

  return sub_2696BB484(v3, v1);
}

uint64_t sub_2696E7844()
{
  OUTLINED_FUNCTION_2_7();
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v2 = v5;
  *(v5 + 136) = v0;

  if (v0)
  {
    v3 = sub_2696E7AD8;
  }

  else
  {

    v3 = sub_2696E7954;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696E7954()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 56), *(*(v0 + 72) + 80));
  sub_269852CA4();
  sub_269835870();
  sub_269853234();
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v11 = MEMORY[0x277D5C1D8];
  v5[3] = v10;
  v5[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2698530C4();
  sub_26969B0C0(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_7_7();

  return v12();
}

uint64_t sub_2696E7AD8()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2696E7B48()
{
  sub_2696E8524(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t sub_2696E7B70()
{
  sub_2696E7B48();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2696E7BD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696BBFF8;

  return sub_2696E61AC();
}

uint64_t sub_2696E7C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = sub_2696DF218;

  return MEMORY[0x2821B9E10](a1, a2, v10, a4);
}

uint64_t sub_2696E7D60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696BBE14;

  return sub_2696E767C();
}

uint64_t sub_2696E7E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9E28](a1, a2, a3, v12, a5);
}

uint64_t sub_2696E7EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a4[10], a4[11], a4[12]);
  *v11 = v5;
  v11[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9E38](a1, a2, a3, v12, a5);
}

uint64_t sub_2696E7FD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9E30](a1, a2, v10, a4);
}

uint64_t sub_2696E80A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9E40](a1, a2, v10, a4);
}

uint64_t sub_2696E817C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a5[10], a5[11], a5[12]);
  *v13 = v6;
  v13[1] = sub_2696BBFF8;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2696E8268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a5[10], a5[11], a5[12]);
  *v13 = v6;
  v13[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2696E8354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for CommonNeedsConfirmationFlowStrategy(0, a6[10], a6[11], a6[12]);
  *v15 = v7;
  v15[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_2696E846C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803238E0, qword_26985B848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696E84DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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