uint64_t sub_266CA1588(uint64_t a1)
{
  result = sub_266DA95BC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_266CA167C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7Combine10PublishersO10SiriFindMyE9MapResultV5Inner33_5EBAD5D2A47B66D5934862C2FB6BF173LLC18SubscriptionStatusOy_xq__qd___G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266CA16D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266CA1724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_266CA1788(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266CA1808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB3E0, &qword_266DB3808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CA1878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB3E0, &qword_266DB3808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266CA1908(void *a1)
{
  type metadata accessor for PersonEntityRepresentation(0);
  v2 = a1;
  if (sub_266D1E43C(v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB3E8, &qword_266DB3810);
    swift_allocObject();

    v3 = sub_266DA93CC();
  }

  else
  {

    return 0;
  }

  return v3;
}

uint64_t sub_266CA19B0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB3F0);
  v1 = __swift_project_value_buffer(v0, qword_2800CB3F0);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CA1A78@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v5 = sub_266DA958C();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v85 - v12;
  v14 = sub_266DA94DC();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v91 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v85 - v20;
  sub_266DA950C();
  OUTLINED_FUNCTION_0_2();
  v95 = v23;
  v96 = v22;
  MEMORY[0x28223BE20](v22);
  v25 = (&v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB408, &qword_266DB3818);
  v27 = MEMORY[0x28223BE20](v26);
  v97 = &v85 - v28;
  if (a1)
  {
    v92 = v27;
    v94 = a2;
    v86 = v16;
    v87 = v11;
    v29 = qword_2800C9250;

    if (v29 != -1)
    {
      swift_once();
    }

    v88 = v21;
    v89 = v13;
    v90 = v14;
    v30 = sub_266DA94AC();
    v31 = __swift_project_value_buffer(v30, qword_2800CB3F0);

    v93 = v31;
    v32 = sub_266DA948C();
    v33 = sub_266DAAB0C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_14_0();
      v85 = OUTLINED_FUNCTION_13_0();
      v99 = a1;
      v100 = v85;
      *v34 = 136315138;
      sub_266DA8C1C();

      v35 = sub_266DAA72C();
      v37 = sub_266C22A3C(v35, v36, &v100);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_266C08000, v32, v33, "SRRProvider resolveEntity attempting to resolve entity: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    v38 = v97;
    __swift_project_boxed_opaque_existential_1(v94, v94[3]);
    *v25 = a1;
    v40 = v95;
    v39 = v96;
    (*(v95 + 104))(v25, *MEMORY[0x277D5FEA8], v96);

    sub_266DA943C();
    (*(v40 + 8))(v25, v39);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *v38;
      v42 = v41;
      v43 = sub_266DA948C();
      v44 = sub_266DAAAEC();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = OUTLINED_FUNCTION_14_0();
        v46 = OUTLINED_FUNCTION_13_0();
        v99 = v41;
        v100 = v46;
        *v45 = 136315138;
        v47 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
        v48 = sub_266DAA72C();
        v50 = sub_266C22A3C(v48, v49, &v100);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_266C08000, v43, v44, "SRRProvider resolveEntity failed due to error: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      else
      {
      }
    }

    else
    {
      if ((*(v7 + 88))(v38, v5) == *MEMORY[0x277D5FEC0])
      {
        v97 = a1;
        (*(v7 + 96))(v38, v5);
        v54 = v86;
        v55 = v88;
        v56 = v90;
        (*(v86 + 32))(v88, v38, v90);
        v57 = v91;
        (*(v54 + 16))(v91, v55, v56);
        v58 = sub_266DA948C();
        v59 = sub_266DAAB0C();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = OUTLINED_FUNCTION_14_0();
          v61 = v57;
          v62 = OUTLINED_FUNCTION_13_0();
          v100 = v62;
          *v60 = 136315138;
          sub_266CA23A4(&qword_2800CB418, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
          v63 = sub_266DAB13C();
          v65 = v64;
          v66 = *(v54 + 8);
          v66(v61, v90);
          v67 = sub_266C22A3C(v63, v65, &v100);
          v56 = v90;

          *(v60 + 4) = v67;
          _os_log_impl(&dword_266C08000, v58, v59, "SRRProvider resolveEntity succeeded with match: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
          OUTLINED_FUNCTION_6_1();
          v55 = v88;
          OUTLINED_FUNCTION_6_1();
        }

        else
        {

          v66 = *(v54 + 8);
          v66(v57, v56);
        }

        v80 = v98;
        sub_266DA94CC();

        v66(v55, v56);
        v81 = sub_266DA957C();
        v82 = v80;
        v83 = 0;
        return __swift_storeEnumTagSinglePayload(v82, v83, 1, v81);
      }

      v68 = v89;
      (*(v7 + 32))(v89, v38, v5);
      v69 = v87;
      (*(v7 + 16))(v87, v68, v5);
      v70 = sub_266DA948C();
      v71 = sub_266DAAAEC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = OUTLINED_FUNCTION_14_0();
        v97 = a1;
        v73 = v72;
        v74 = OUTLINED_FUNCTION_13_0();
        v100 = v74;
        *v73 = 136315138;
        sub_266CA23A4(&qword_2800CB410, MEMORY[0x277D5FEE8], MEMORY[0x277D5FEF0]);
        v75 = sub_266DAB13C();
        v77 = v76;
        v78 = *(v7 + 8);
        v78(v69, v5);
        v79 = sub_266C22A3C(v75, v77, &v100);

        *(v73 + 4) = v79;
        _os_log_impl(&dword_266C08000, v70, v71, "SRRProvider resolveEntity succeeded, but did not find a match. Result: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();

        v78(v89, v5);
      }

      else
      {

        v84 = *(v7 + 8);
        v84(v69, v5);
        v84(v68, v5);
      }
    }

    v81 = sub_266DA957C();
    v82 = v98;
    v83 = 1;
    return __swift_storeEnumTagSinglePayload(v82, v83, 1, v81);
  }

  v51 = sub_266DA957C();
  v52 = v98;

  return __swift_storeEnumTagSinglePayload(v52, 1, 1, v51);
}

uint64_t sub_266CA23A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266CA23EC()
{
  OUTLINED_FUNCTION_22_0();
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  *(v0 + 472) = v3;
  *(v0 + 176) = v4;
  v5 = sub_266DA80AC();
  *(v0 + 200) = v5;
  OUTLINED_FUNCTION_11_3(v5);
  *(v0 + 208) = v6;
  *(v0 + 216) = swift_task_alloc();
  v7 = sub_266DA7C0C();
  *(v0 + 224) = v7;
  OUTLINED_FUNCTION_11_3(v7);
  *(v0 + 232) = v8;
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  *(v0 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  *(v0 + 264) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v9);
  *(v0 + 272) = v10;
  *(v0 + 280) = *(v11 + 64);
  *(v0 + 288) = swift_task_alloc();
  *(v0 + 296) = swift_task_alloc();
  *(v0 + 304) = swift_task_alloc();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = swift_task_alloc();
  *(v0 + 336) = swift_task_alloc();
  *(v0 + 344) = swift_task_alloc();
  *(v0 + 352) = type metadata accessor for Snippets(0);
  *(v0 + 360) = swift_task_alloc();
  *(v0 + 368) = swift_task_alloc();
  *(v0 + 376) = swift_task_alloc();
  *(v0 + 384) = swift_task_alloc();
  *(v0 + 392) = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_266CA2688()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  *v1 = 3;
  *(v1 + 8) = xmmword_266DAFA10;
  *(v1 + 24) = 0;
  swift_storeEnumTagMultiPayload();
  v4 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v2);
  sub_266C47750(v1, v3);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v6 = swift_allocObject();
  *(v0 + 400) = v6;
  *(v6 + 16) = xmmword_266DAE3B0;
  v7 = swift_task_alloc();
  *(v0 + 408) = v7;
  *v7 = v0;
  v7[1] = sub_266CA27BC;
  v8 = *(v0 + 472);

  return sub_266D42C44(v8);
}

uint64_t sub_266CA27BC(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[52] = v1;

  if (v1)
  {
    v9 = v5[43];
    sub_266C47654(v5[42], &qword_2800CA050, &qword_266DB0080);
    sub_266C47654(v9, &qword_2800CA050, &qword_266DB0080);
    v10 = sub_266CA3910;
  }

  else
  {
    v5[53] = a1;
    v10 = sub_266CA2900;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_266CA2900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  *(v20[50] + 32) = v20[53];
  sub_266DA7E5C();
  v21 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
  sub_266DA7C7C();
  v24 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    v27 = v20[50] & 0xC000000000000001;
    sub_266CB9F54();
    v28 = v20[50];
    if (v27)
    {
      v29 = MEMORY[0x26D5F1780](0, v28);
    }

    else
    {
      v29 = *(v28 + 32);
    }

    v30 = v29;
    v31 = [v29 catId];

    v114 = sub_266DAA70C();
    v116 = v32;
  }

  else
  {
    v114 = 0;
    v116 = 0;
  }

  v33 = v20[43];
  v117 = v20[44];
  v34 = v20[41];
  v35 = v20[40];
  v115 = v20[39];
  v37 = v20[34];
  v36 = v20[35];
  v110 = v20[33];
  v111 = v20[32];
  v38 = v20[30];
  v109 = v20[31];
  v40 = v20[28];
  v39 = v20[29];
  v112 = v20[27];
  v113 = v33;
  v41 = v20[24];
  sub_266C4756C(v20[42], v34);
  sub_266C4756C(v33, v35);
  v42 = *(v37 + 80);
  v43 = (v42 + 24) & ~v42;
  v44 = (v36 + v42 + v43) & ~v42;
  v45 = swift_allocObject();
  v20[54] = v45;
  *(v45 + 16) = v41;
  sub_266C475DC(v34, v45 + v43);
  sub_266C475DC(v35, v45 + v44);
  (*(v39 + 16))(v38, v109, v40);
  v46 = swift_task_alloc();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 40) = v114;
  *(v46 + 48) = v116;
  *(v46 + 56) = v110;
  *(v46 + 64) = 514;
  *(v46 + 72) = sub_266C4876C;
  *(v46 + 80) = v45;
  *(v46 + 88) = v111;

  sub_266DA800C();

  sub_266C4756C(v113, v115);
  if (__swift_getEnumTagSinglePayload(v115, 1, v117) == 1)
  {
    v47 = v20 + 39;
  }

  else
  {
    v48 = v20[44];
    sub_266C476A8(v20[39], v20[48]);
    v49 = OUTLINED_FUNCTION_42();
    sub_266C4756C(v49, v50);
    v51 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v51, v52, v48) != 1)
    {
      v80 = v20[47];
      v81 = v20[48];
      v82 = v20[44];
      sub_266C476A8(v20[38], v80);
      v20[15] = v82;
      v83 = sub_266C4DB4C();
      v20[16] = v83;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20 + 12);
      sub_266C47750(v81, boxed_opaque_existential_1);
      v20[20] = v82;
      v20[21] = v83;
      v85 = __swift_allocate_boxed_opaque_existential_1(v20 + 17);
      sub_266C47750(v80, v85);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v20[55] = v86;
      *v86 = v87;
      v86[1] = sub_266CA2E98;
      OUTLINED_FUNCTION_39();

      return v93(v88, v89, v90, v91, v92, v93, v94, v95, v109, v110, v111, v112, v113, v114, v115, v116, v117, a18, a19, a20);
    }

    v47 = v20 + 38;
    sub_266C477B4(v20[48]);
  }

  v53 = *v47;
  v54 = v20[44];
  sub_266C47654(v53, &qword_2800CA050, &qword_266DB0080);
  v55 = OUTLINED_FUNCTION_42();
  sub_266C4756C(v55, v56);
  v57 = OUTLINED_FUNCTION_55();
  if (__swift_getEnumTagSinglePayload(v57, v58, v54) == 1)
  {
    v59 = v20[44];
    sub_266C47654(v20[37], &qword_2800CA050, &qword_266DB0080);
    v60 = OUTLINED_FUNCTION_42();
    sub_266C4756C(v60, v61);
    v62 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v62, v63, v59) == 1)
    {
      sub_266C47654(v20[36], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v20[58] = v64;
      *v64 = v65;
      v64[1] = sub_266CA3674;
      OUTLINED_FUNCTION_39();

      return v69(v66, v67, v68, v69, v70, v71, v72, v73, v109, v110, v111, v112, v113, v114, v115, v116, v117, a18, a19, a20);
    }

    v96 = v20[44];
    v97 = v20[45];
    sub_266C476A8(v20[36], v97);
    v20[5] = v96;
    v20[6] = sub_266C4DB4C();
    v98 = __swift_allocate_boxed_opaque_existential_1(v20 + 2);
    sub_266C47750(v97, v98);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v20[57] = v99;
    *v99 = v100;
    OUTLINED_FUNCTION_21_6(v99);
  }

  else
  {
    v75 = v20[46];
    v76 = v20[44];
    sub_266C476A8(v20[37], v75);
    v20[10] = v76;
    v20[11] = sub_266C4DB4C();
    v77 = __swift_allocate_boxed_opaque_existential_1(v20 + 7);
    sub_266C47750(v75, v77);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v20[56] = v78;
    *v78 = v79;
    OUTLINED_FUNCTION_21_6(v78);
  }

  OUTLINED_FUNCTION_39();

  return v105(v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, a18, a19, a20);
}

uint64_t sub_266CA2E98()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CA2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[47];
  v22 = v20[48];
  v23 = v20[42];
  v39 = v20[43];
  v24 = v20[31];
  v25 = v20[28];
  v26 = v20[29];
  v27 = v20[26];
  v28 = v20[27];
  v29 = v20[25];

  sub_266C477B4(v21);
  sub_266C477B4(v22);
  (*(v27 + 8))(v28, v29);
  (*(v26 + 8))(v24, v25);
  sub_266C47654(v23, &qword_2800CA050, &qword_266DB0080);
  sub_266C47654(v39, &qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_1_25();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);
  sub_266C477B4(v27 + 8);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_39();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, v39, a18, a19, a20);
}

uint64_t sub_266CA315C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CA3260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v29 = *(v22 + 368);
  OUTLINED_FUNCTION_25_3();
  sub_266C477B4(v29);
  (*(v28 + 8))(v25, v26);
  (*(v27 + 8))(v23, v24);
  OUTLINED_FUNCTION_30_3(v21);
  OUTLINED_FUNCTION_30_3(v20);
  OUTLINED_FUNCTION_1_25();
  sub_266C47654(&qword_266DB0080, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);
  sub_266C477B4(v21);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_39();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266CA33E8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CA34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v29 = *(v22 + 360);
  OUTLINED_FUNCTION_25_3();
  sub_266C477B4(v29);
  (*(v28 + 8))(v25, v26);
  (*(v27 + 8))(v23, v24);
  OUTLINED_FUNCTION_30_3(v21);
  OUTLINED_FUNCTION_30_3(v20);
  OUTLINED_FUNCTION_1_25();
  sub_266C47654(&qword_266DB0080, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);
  sub_266C477B4(v21);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_39();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266CA3674()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266CA3774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[43];
  v22 = v20[31];
  v23 = v20[28];
  v24 = v20[29];
  v26 = v20[26];
  v25 = v20[27];
  v27 = v20[25];

  (*(v26 + 8))(v25, v27);
  (*(v24 + 8))(v22, v23);
  v28 = OUTLINED_FUNCTION_42();
  sub_266C47654(v28, v29, &qword_266DB0080);
  sub_266C47654(v21, &qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_1_25();
  sub_266C47654(&qword_266DB0080, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);
  sub_266C477B4(&qword_2800CA050);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_39();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266CA3910()
{
  v1 = v0[50];
  sub_266C477B4(v0[49]);
  *(v1 + 16) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t OUTLINED_FUNCTION_25_3()
{
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1)
{

  return sub_266C47654(a1, v1, v2);
}

uint64_t sub_266CA3B10()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB420);
  v1 = __swift_project_value_buffer(v0, qword_2800CB420);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SAFmfSnippet.init(modelData:withSash:)(uint64_t a1, char a2)
{
  FriendSnippetData = type metadata accessor for FindFriendSnippetData(0);
  v5 = MEMORY[0x28223BE20](FriendSnippetData);
  MEMORY[0x28223BE20](v5);
  sub_266DA720C();
  swift_allocObject();
  v6 = sub_266DA71FC();
  sub_266CA3FB8();
  v7 = sub_266DA71EC();
  v9 = v8;
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_266CA40D0(v7, v9, v10);

  if (a2)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
    v12 = sub_266DAA6FC();
    [v11 setApplicationBundleIdentifier_];

    v13 = v11;
    [v10 setSash_];
    sub_266C2BB04(v7, v9);

    sub_266CA4074(a1);
  }

  else
  {
    sub_266CA4074(a1);
    sub_266C2BB04(v7, v9);
  }

  return v10;
}

unint64_t sub_266CA3FB8()
{
  result = qword_2800CB438;
  if (!qword_2800CB438)
  {
    type metadata accessor for FindFriendSnippetData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB438);
  }

  return result;
}

uint64_t sub_266CA4010(uint64_t a1, uint64_t a2)
{
  FriendSnippetData = type metadata accessor for FindFriendSnippetData(0);
  (*(*(FriendSnippetData - 8) + 16))(a2, a1, FriendSnippetData);
  return a2;
}

uint64_t sub_266CA4074(uint64_t a1)
{
  FriendSnippetData = type metadata accessor for FindFriendSnippetData(0);
  (*(*(FriendSnippetData - 8) + 8))(a1, FriendSnippetData);
  return a1;
}

void sub_266CA40D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DA739C();
  [a3 setModelData_];
}

uint64_t sub_266CA4128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_266DAA22C();
  [v7 coordinate];
  v9 = v8;
  v11 = v10;
  v12 = 0;
  v13 = 0;
  v28 = sub_266DAA21C();
  if ((v28 & 1) == 0)
  {
    [v7 horizontalAccuracy];
    v12 = v14;
    [v7 verticalAccuracy];
    v13 = v15;
  }

  v16 = [v7 timestamp];
  v17 = type metadata accessor for Location(0);
  sub_266DA744C();

  v18 = type metadata accessor for Address(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);

  v19 = sub_266DAA23C();
  (*(*(v19 - 8) + 8))(a1, v19);
  v20 = v17[8];
  v21 = v17[9];
  *(a2 + v21) = 6;
  v22 = (a2 + v20);
  v23 = v17[10];
  *(a2 + v23) = 4;
  v24 = v17[11];
  __swift_storeEnumTagSinglePayload(a2 + v24, 1, 1, v18);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v28 & 1;
  *v22 = 0;
  v22[1] = 0;
  *(a2 + v21) = 6;
  *(a2 + v23) = 4;
  result = sub_266C60554(v6, a2 + v24);
  v26 = (a2 + v17[12]);
  *v26 = 1701736302;
  v26[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_266CA4348()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
  sub_266DA816C();
  v6 = sub_266C5DE2C(v4, *v5);
  (*(v2 + 8))(v4, v1);
  if (v6 < 2u)
  {
    return sub_266DA7CBC();
  }

  if (v6 == 2)
  {
    return sub_266DA7CAC();
  }

  return sub_266DA7CCC();
}

uint64_t sub_266CA4470()
{
  OUTLINED_FUNCTION_22_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB458, &unk_266DB4F10);
  OUTLINED_FUNCTION_4_3(v5);
  v1[6] = OUTLINED_FUNCTION_62();
  v6 = sub_266DA81AC();
  v1[7] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266CA4544()
{
  if (qword_2800C93F8 != -1)
  {
    OUTLINED_FUNCTION_7_6(&qword_2800C93F8);
  }

  v1 = sub_266DA94AC();
  v2 = __swift_project_value_buffer(v1, qword_2800E64C0);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_11();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "SetGeoFence parsing confirmation response", v5, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  v9 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB440, &qword_266DB46E0);
  v10 = sub_266DA7FCC();
  v11 = __swift_project_boxed_opaque_existential_1((v9 + 168), *(v9 + 192));
  sub_266DA816C();
  v12 = sub_266C5DE2C(v6, *v11);
  (*(v7 + 8))(v6, v8);
  v13 = sub_266DA948C();
  if (v12 != 3)
  {
    if (v12)
    {
      v22 = sub_266DAAB0C();
      v23 = OUTLINED_FUNCTION_95(v22);
      v16 = MEMORY[0x277D5BED0];
      if (v23)
      {
        v17 = "SetGeoFence user did NOT confirm task, returning ConfirmIntentAnswer with rejected confirmation response";
        goto LABEL_14;
      }
    }

    else
    {
      v14 = sub_266DAAB0C();
      v15 = OUTLINED_FUNCTION_95(v14);
      v16 = MEMORY[0x277D5BED8];
      if (v15)
      {
        v17 = "SetGeoFence user confirmed task, returning ConfirmIntentAnswer with confirmed confirmation response";
LABEL_14:
        v24 = OUTLINED_FUNCTION_11();
        *v24 = 0;
        _os_log_impl(&dword_266C08000, v13, v2, v17, v24, 2u);
        OUTLINED_FUNCTION_6_1();
      }
    }

    v25 = v0[6];

    v26 = *v16;
    v27 = sub_266DA7F5C();
    OUTLINED_FUNCTION_0();
    (*(v28 + 104))(v25, v26, v27);
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
    type metadata accessor for SetGeoFenceIntent();
    sub_266DA7F1C();

    OUTLINED_FUNCTION_15_4();
    goto LABEL_16;
  }

  v18 = sub_266DAAAEC();
  if (OUTLINED_FUNCTION_95(v18))
  {
    v19 = OUTLINED_FUNCTION_11();
    *v19 = 0;
    _os_log_impl(&dword_266C08000, v13, v2, "SetGeoFence unable to make task from parse", v19, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  sub_266C55488();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_28();
LABEL_16:

  return v21();
}

uint64_t sub_266CA4870()
{
  OUTLINED_FUNCTION_22_0();
  v1[305] = v0;
  v1[299] = v2;
  v1[293] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[306] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[307] = OUTLINED_FUNCTION_64();
  v1[308] = swift_task_alloc();
  v1[309] = swift_task_alloc();
  v1[310] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[311] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[312] = v6;
  v1[313] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7C0C();
  v1[314] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[315] = v8;
  v1[316] = OUTLINED_FUNCTION_64();
  v1[317] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[318] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[319] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[320] = v12;
  v1[321] = *(v13 + 64);
  v1[322] = OUTLINED_FUNCTION_64();
  v1[323] = swift_task_alloc();
  v1[324] = swift_task_alloc();
  v1[325] = swift_task_alloc();
  v1[326] = swift_task_alloc();
  v1[327] = swift_task_alloc();
  v1[328] = swift_task_alloc();
  v1[329] = swift_task_alloc();
  v14 = type metadata accessor for Snippets.Contact(0);
  v1[330] = v14;
  OUTLINED_FUNCTION_4_3(v14);
  v1[331] = OUTLINED_FUNCTION_62();
  v15 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
  v1[332] = v15;
  OUTLINED_FUNCTION_4_3(v15);
  v1[333] = OUTLINED_FUNCTION_62();
  v16 = sub_266DA7E5C();
  v1[334] = v16;
  OUTLINED_FUNCTION_11_3(v16);
  v1[335] = v17;
  v1[336] = OUTLINED_FUNCTION_62();
  v18 = type metadata accessor for Address(0);
  v1[337] = v18;
  OUTLINED_FUNCTION_4_3(v18);
  v1[338] = OUTLINED_FUNCTION_64();
  v1[339] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v19);
  v1[340] = OUTLINED_FUNCTION_64();
  v1[341] = swift_task_alloc();
  v20 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v20);
  v1[342] = OUTLINED_FUNCTION_62();
  v21 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v21);
}

uint64_t sub_266CA4BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_66_1();
  if (qword_2800C93F8 != -1)
  {
    OUTLINED_FUNCTION_7_6(&qword_2800C93F8);
  }

  v29 = sub_266DA94AC();
  __swift_project_value_buffer(v29, qword_2800E64C0);
  v30 = sub_266DA948C();
  v31 = sub_266DAAB0C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_11();
    *v32 = 0;
    _os_log_impl(&dword_266C08000, v30, v31, "SetGeoFence making prompt for confirmation", v32, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB440, &qword_266DB46E0);
  v33 = sub_266DA7FCC();
  *(v28 + 2744) = v33;
  v34 = [v33 notifyMe];
  if (v34)
  {
    v35 = v34;
    v102 = [v34 BOOLValue];
  }

  else
  {
    v102 = 0;
  }

  v36 = *(v28 + 2440);
  sub_266DA900C();
  v37 = [v33 friend];
  v38 = [v37 person];

  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_266DA7AFC();
  v39 = sub_266DA8FBC();
  *(v28 + 2752) = v39;
  if ([v33 location])
  {
    sub_266D7FBD8();
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = *(v28 + 2728);
  v42 = *(v28 + 2720);
  v43 = *(v28 + 2696);
  __swift_storeEnumTagSinglePayload(v41, v40, 1, v43);
  sub_266C67BE8(v41, v42, &qword_2800CC420, &unk_266DB0480);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v43);
  v45 = *(v28 + 2728);
  if (EnumTagSinglePayload == 1)
  {
    sub_266C47654(*(v28 + 2728), &qword_2800CC420, &unk_266DB0480);
    v46 = 0;
  }

  else
  {
    v47 = *(v28 + 2712);
    v48 = *(v28 + 2704);
    sub_266CA9C3C(*(v28 + 2720), v47, type metadata accessor for Address);
    sub_266DA8F2C();
    sub_266CA9C98(v47, v48, type metadata accessor for Address);
    v46 = sub_266D7F7B0(v48);
    sub_266CA9CF4(v47, type metadata accessor for Address);
    sub_266C47654(v45, &qword_2800CC420, &unk_266DB0480);
  }

  *(v28 + 2760) = v46;
  v49 = [v33 friend];
  if (v49 && (v50 = v49, v51 = [v49 person], *(v28 + 2768) = v51, v50, v51))
  {
    v100 = *(v28 + 2648);
    v98 = *(v28 + 2640);
    v52 = *(v28 + 2440);
    v96 = v51;
    v53 = __swift_project_boxed_opaque_existential_1((v52 + 48), *(v52 + 72));
    sub_266DA8BAC();
    swift_allocObject();
    v54 = sub_266DA8B9C();
    v55 = v53[3];
    v57 = *v53;
    v56 = v53[1];
    *(v28 + 1880) = v53[2];
    *(v28 + 1896) = v55;
    *(v28 + 1848) = v57;
    *(v28 + 1864) = v56;
    sub_266CC063C(v54);

    sub_266CA8DF8(v52, v28 + 1592);
    v58 = swift_allocObject();
    *(v28 + 2776) = v58;
    memcpy((v58 + 16), (v28 + 1592), 0xD8uLL);
    *(v58 + 232) = v39;

    sub_266CA8EC8();
    swift_asyncLet_begin();
    sub_266CA8DF8(v52, v28 + 1336);
    v59 = swift_allocObject();
    *(v28 + 2784) = v59;
    memcpy((v59 + 16), (v28 + 1336), 0xD8uLL);
    *(v59 + 232) = v102;
    *(v59 + 240) = v39;
    *(v59 + 248) = v33;
    *(v59 + 256) = v46;

    v60 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB450, &unk_266DB3A00);
    swift_asyncLet_begin();
    v61 = v96;
    sub_266DA749C();
    v62 = [v61 displayName];
    v63 = sub_266DAA70C();
    v65 = v64;

    *v100 = v63;
    v100[1] = v65;
    v66 = sub_266C39CB4(v61);
    v68 = v67;

    if (v68)
    {
      v69 = v66;
    }

    else
    {
      v69 = 0;
    }

    v70 = 0xE000000000000000;
    if (v68)
    {
      v70 = v68;
    }

    v100[2] = v69;
    v100[3] = v70;
    v71 = (v100 + *(v98 + 28));
    *v71 = 1701736302;
    v71[1] = 0xE400000000000000;
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_37_1();

    return MEMORY[0x282200930](v72);
  }

  else
  {
    sub_266C55488();
    v103 = swift_allocError();
    *v74 = 0;
    swift_willThrow();

    v84 = *(v28 + 2616);
    v85 = *(v28 + 2608);
    v86 = *(v28 + 2600);
    v87 = *(v28 + 2592);
    v88 = *(v28 + 2584);
    v89 = *(v28 + 2576);
    v90 = *(v28 + 2552);
    v91 = *(v28 + 2544);
    v92 = *(v28 + 2536);
    v93 = *(v28 + 2528);
    v94 = *(v28 + 2504);
    v95 = *(v28 + 2480);
    v97 = *(v28 + 2472);
    v99 = *(v28 + 2464);
    v101 = *(v28 + 2456);

    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_37_1();

    return v76(v75, v76, v77, v78, v79, v80, v81, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v97, v99, v101, v103, a25, a26, a27, a28);
  }
}

uint64_t sub_266CA5308()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 2792) = v0;
  if (v0)
  {
    OUTLINED_FUNCTION_27_5();
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_266CA537C()
{
  OUTLINED_FUNCTION_22_0();
  *(v0 + 2888) = 1;

  v1 = sub_266DA91EC();
  v3 = v2;
  *(v0 + 2232) = v1;
  *(v0 + 2240) = v2;

  *(v0 + 2800) = v3;
  v4 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x282200930](v4);
}

uint64_t sub_266CA5408()
{
  OUTLINED_FUNCTION_22_0();
  v1[351] = v0;
  if (v0)
  {
    OUTLINED_FUNCTION_27_5();
  }

  else
  {
    v1[352] = v1[279];
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_266CA5490()
{
  v17 = *(v0 + 2800);
  v18 = *(v0 + 2816);
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2656);
  v3 = *(v0 + 2648);
  v4 = *(v0 + 2632);
  v19 = *(v0 + 2624);
  v5 = *(v0 + 2448);
  v6 = *(v0 + 2440);
  *(v0 + 2889) = 0;

  v7 = sub_266DA91EC();
  v9 = v8;

  sub_266CA9C3C(v3, v1, type metadata accessor for Snippets.Contact);
  v10 = (v1 + *(v2 + 20));
  *v10 = v18;
  v10[1] = v17;
  v11 = (v1 + *(v2 + 24));
  *v11 = v7;
  v11[1] = v9;
  *(v0 + 2824) = *(v6 + 208);
  sub_266CA9C98(v1, v4, type metadata accessor for Snippets.SetGeoFenceConfirmation);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v5);
  OUTLINED_FUNCTION_56_1(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v15 = swift_allocObject();
  *(v0 + 2832) = v15;
  *(v15 + 16) = xmmword_266DAE3B0;

  return MEMORY[0x282200930](v0 + 16);
}

uint64_t sub_266CA5624()
{
  OUTLINED_FUNCTION_34();
  *(v1 + 2840) = v0;
  if (v0)
  {
    sub_266C47654(*(v1 + 2624), &qword_2800CA050, &qword_266DB0080);
    v2 = OUTLINED_FUNCTION_32();
    sub_266C47654(v2, v3, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_266CA5CC8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 2152));
  __swift_destroy_boxed_opaque_existential_0((v2 + 2072));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CA5DD0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v3 = *(v0 + 2480);
  v4 = *(v0 + 2472);

  sub_266CA9CF4(v4, type metadata accessor for Snippets);
  sub_266CA9CF4(v3, type metadata accessor for Snippets);
  v5 = OUTLINED_FUNCTION_8_5();
  v6(v5);
  v7 = OUTLINED_FUNCTION_24_4();
  v8(v7);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_18();
  sub_266CA9CF4(v3, v9);
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x282200920](v10);
}

uint64_t sub_266CA5F18()
{
  v1 = *(v0 + 2744);
  v2 = *(v0 + 2688);
  v3 = *(v0 + 2680);
  v4 = *(v0 + 2672);

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_15_4();

  return v5();
}

uint64_t sub_266CA6148()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1992));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CA6248()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v3 = *(v0 + 2464);

  OUTLINED_FUNCTION_1_26();
  sub_266CA9CF4(v3, v4);
  v5 = OUTLINED_FUNCTION_8_5();
  v6(v5);
  v7 = OUTLINED_FUNCTION_24_4();
  v8(v7);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_18();
  sub_266CA9CF4(v3, v9);
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x282200920](v10);
}

uint64_t sub_266CA6324()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1912));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CA6424()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v3 = *(v0 + 2456);

  OUTLINED_FUNCTION_1_26();
  sub_266CA9CF4(v3, v4);
  v5 = OUTLINED_FUNCTION_8_5();
  v6(v5);
  v7 = OUTLINED_FUNCTION_24_4();
  v8(v7);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_18();
  sub_266CA9CF4(v3, v9);
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x282200920](v10);
}

uint64_t sub_266CA6500()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266CA6600()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();

  v3 = OUTLINED_FUNCTION_8_5();
  v4(v3);
  v5 = OUTLINED_FUNCTION_24_4();
  v6(v5);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_18();
  sub_266CA9CF4(v0, v7);
  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x282200920](v8);
}

uint64_t sub_266CA6734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_18_8();

  v30 = OUTLINED_FUNCTION_48_3();
  v31(v30);

  OUTLINED_FUNCTION_9_9(*(v28 + 2792));

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_37_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_266CA68F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_18_8();

  v30 = OUTLINED_FUNCTION_48_3();
  v31(v30);

  OUTLINED_FUNCTION_9_9(*(v28 + 2808));

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_37_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_266CA6A54()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 2832);
  OUTLINED_FUNCTION_4_18();
  sub_266CA9CF4(v2, v3);
  *(v1 + 16) = 0;

  v4 = OUTLINED_FUNCTION_16_10();

  return MEMORY[0x282200920](v4);
}

uint64_t sub_266CA6B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_18_8();

  v30 = OUTLINED_FUNCTION_48_3();
  v31(v30);

  OUTLINED_FUNCTION_9_9(*(v28 + 2840));

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_37_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_266CA6C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266CA6C90);
}

uint64_t sub_266CA6C90()
{
  OUTLINED_FUNCTION_22_0();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_266CA6D28;
  v2 = *(v0 + 32);

  return sub_266CB4A58(v2);
}

uint64_t sub_266CA6D28()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_266CA6E58()
{
  **(v0 + 16) = *(v0 + 48);
  OUTLINED_FUNCTION_15_4();
  return v1();
}

uint64_t sub_266CA6E84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CA6F38);
}

uint64_t sub_266CA6F38()
{
  v21 = v0;
  v1 = [*(v0 + 40) location];
  if (!v1 || (v2 = v1, sub_266D6CDF4(&v15), v2, v3 = v17, v17 == 255))
  {
    v7 = sub_266DA919C();
    v8 = OUTLINED_FUNCTION_55();
  }

  else
  {
    v4 = *(v0 + 64);
    v6 = v15;
    v5 = v16;
    v18 = v15;
    v19 = v16;
    v20 = v17;
    sub_266D91274();
    sub_266C23130(v6, v5, v3);
    v7 = sub_266DA919C();
    v8 = v4;
    v9 = 0;
  }

  __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
  GeoFenceTrigger.description.getter([*(v0 + 40) trigger]);
  sub_266DAA74C();

  sub_266DAA77C();

  sub_266DA919C();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_266CA70F8;

  return sub_266CB51A0();
}

uint64_t sub_266CA70F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 80) = v1;

  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  if (!v1)
  {
    *(v5 + 88) = a1;
  }

  OUTLINED_FUNCTION_76_1(v8);
  OUTLINED_FUNCTION_76_1(v7);
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266CA7278()
{
  OUTLINED_FUNCTION_22_0();
  **(v0 + 16) = *(v0 + 88);

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266CA72E4()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CA7348()
{
  OUTLINED_FUNCTION_22_0();
  v1[22] = v2;
  v1[23] = v0;
  v3 = type metadata accessor for Snippets(0);
  v1[24] = v3;
  OUTLINED_FUNCTION_4_3(v3);
  v1[25] = OUTLINED_FUNCTION_64();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v4 = sub_266DA80AC();
  v1[29] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[30] = v5;
  v1[31] = OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v6);
  v1[32] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7C0C();
  v1[33] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_64();
  v1[36] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v9);
  v1[37] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v10);
  v1[38] = v11;
  v1[39] = *(v12 + 64);
  v1[40] = OUTLINED_FUNCTION_64();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_266CA7594()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  *(v0 + 384) = *(*(v0 + 184) + 208);
  OUTLINED_FUNCTION_56_1(v1);
  OUTLINED_FUNCTION_56_1(v2);
  *(v0 + 472) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  swift_allocObject();
  *(v0 + 392) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v3 = swift_allocObject();
  *(v0 + 400) = v3;
  *(v3 + 16) = xmmword_266DAE3B0;
  v4 = swift_task_alloc();
  *(v0 + 408) = v4;
  *v4 = v0;
  v4[1] = sub_266CA76A8;

  return sub_266CB49B0();
}

uint64_t sub_266CA76A8()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[52] = v0;

  if (v0)
  {
    sub_266C47654(v5[46], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  else
  {
    v5[53] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266CA7D88()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CA7E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();
  v25 = *(v22 + 216);

  sub_266CA9CF4(v25, type metadata accessor for Snippets);
  v26 = OUTLINED_FUNCTION_4_4();
  sub_266CA9CF4(v26, v27);
  v28 = OUTLINED_FUNCTION_5_17();
  v29(v28);
  v30 = OUTLINED_FUNCTION_30_4();
  v31(v30);
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_40_1();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CA8014()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CA8114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();
  v25 = *(v22 + 208);

  OUTLINED_FUNCTION_1_26();
  sub_266CA9CF4(v25, v26);
  v27 = OUTLINED_FUNCTION_5_17();
  v28(v27);
  v29 = OUTLINED_FUNCTION_30_4();
  v30(v29);
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_40_1();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CA827C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CA837C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();
  v25 = *(v22 + 200);

  OUTLINED_FUNCTION_1_26();
  sub_266CA9CF4(v25, v26);
  v27 = OUTLINED_FUNCTION_5_17();
  v28(v27);
  v29 = OUTLINED_FUNCTION_30_4();
  v30(v29);
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_40_1();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CA84E4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266CA85E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110_0();

  v24 = OUTLINED_FUNCTION_5_17();
  v25(v24);
  v26 = OUTLINED_FUNCTION_30_4();
  v27(v26);
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_40_1();
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v23, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CA873C()
{
  v1 = *(v0 + 400);

  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_28();

  return v2();
}

uint64_t sub_266CA8888()
{
  OUTLINED_FUNCTION_22_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_266C48BB4;

  return sub_266CA7348();
}

uint64_t sub_266CA891C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266CA4470();
}

uint64_t sub_266CA89CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266CA4870();
}

uint64_t sub_266CA8A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D08](a1, a2, a3, a4);
}

uint64_t sub_266CA8B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D10](a1, a2, a3, a4);
}

uint64_t sub_266CA8BFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266CA7348();
}

uint64_t sub_266CA8C94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266CA8888();
}

uint64_t sub_266CA8D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D00](a1, a2, a3, a4, a5);
}

uint64_t sub_266CA8E30()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 232);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_62_1(v3);

  return sub_266CA6C6C(v5, v6, v2);
}

unint64_t sub_266CA8EC8()
{
  result = qword_2800CB448;
  if (!qword_2800CB448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CB448);
  }

  return result;
}

uint64_t sub_266CA8F0C()
{
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_62_1(v6);

  return sub_266CA6E84(v8, v9, v2, v3, v4, v5);
}

uint64_t objectdestroyTm_8()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v34 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v35 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v35, v36, v1))
        {
          v37 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v38 + 8))(v34 + v37);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v34 + v1[11]);
          v39 = type metadata accessor for Address(0);
          v40 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v40, v41, v39))
          {
            sub_266DA919C();
            v42 = OUTLINED_FUNCTION_109();
            v114 = v43;
            if (!__swift_getEnumTagSinglePayload(v42, v44, v43))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v45 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v46 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v46, v47, v48, v49, v50, v51, v52, v53, v112, v114))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v54 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v113 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v113))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v112 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v112, 1, v113))
              {
                (*(*(v113 - 8) + 8))(v32 + v112);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v55);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v56 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v57 = v0 + v10;
  v58 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v58, v59, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v57);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v64 = v57 + *(type metadata accessor for Friend(0) + 40);
        v65 = type metadata accessor for FriendLocation(0);
        v66 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v66, v67, v65))
        {
          break;
        }

        v68 = v64 + *(v65 + 32);
LABEL_57:
        v99 = type metadata accessor for Location(0);
        v100 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v100, v101, v99))
        {
          v102 = *(v99 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v103 + 8))(v68 + v102);

          v104 = v68 + *(v99 + 44);
          v105 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v105))
          {
            v106 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v104, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v107 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v104 + v107, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104 + v107, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v73 = v57 + *(type metadata accessor for Friend(0) + 40);
        v74 = type metadata accessor for FriendLocation(0);
        v75 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v75, v76, v74))
        {

          v77 = v73 + *(v74 + 32);
          v78 = type metadata accessor for Location(0);
          v79 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v79, v80, v78))
          {
            v81 = *(v78 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v82 + 8))(v77 + v81);

            v2 = (v77 + *(v78 + 44));
            v83 = type metadata accessor for Address(0);
            v84 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v84, v85, v83))
            {
              sub_266DA919C();
              v86 = OUTLINED_FUNCTION_109();
              v115 = v87;
              if (!__swift_getEnumTagSinglePayload(v86, v88, v87))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v89 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v90 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v90, v91, v92, v93, v94, v95, v96, v97, v112, v115))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v98 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v68 = v57 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v108);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v72);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v57 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v69 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v70 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v70 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v109 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v110 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v110 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v60 + 8))(v0 + v10);
        v61 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v62 = *(v61 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v63 + 8))(v57 + v62);
        if (*(v57 + *(v61 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266CA9C3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  v4 = OUTLINED_FUNCTION_4_4();
  v5(v4);
  return a2;
}

uint64_t sub_266CA9C98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  v4 = OUTLINED_FUNCTION_4_4();
  v5(v4);
  return a2;
}

uint64_t sub_266CA9CF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = *(v1 + 2456);
  *(v2 - 96) = *(v1 + 2464);
  *(v2 - 88) = v4;
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_18_8()
{
  v2 = *(v0 + 2768);
}

uint64_t OUTLINED_FUNCTION_27_5()
{
  v2 = *(v0 + 2648);

  return sub_266CA9CF4(v2, type metadata accessor for Snippets.Contact);
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a16;
  *(result + 48) = a19;
  *(result + 56) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_54_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_266DA800C();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return sub_266C67BE8(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_76_1(uint64_t a1)
{

  return sub_266C47654(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_77_2(uint64_t a1)
{

  return sub_266C47654(a1, v1, v2);
}

id sub_266CAA15C()
{
  result = [v0 deviceQuery];
  if (result)
  {
    v2 = result;
    v3 = sub_266CAB114();

    return (v3 & 1);
  }

  return result;
}

void sub_266CAA1A8(uint64_t a1@<X8>)
{
  v3 = [v1 deviceQuery];
  if (v3)
  {
    v5 = v3;
    sub_266CAB098(a1);
  }

  else
  {
    v4 = sub_266DA919C();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }
}

uint64_t FindDeviceAndPlaySoundDevicesUnsupportedReason.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x6C69614668747561;
  switch(v1)
  {
    case 0:
      result = 0xD000000000000011;
      break;
    case 1:
      return result;
    case 2:
      result = 0x6954686372616573;
      break;
    case 3:
      result = 0x646E756F46746F6ELL;
      break;
    case 4:
      result = 0x456E776F6E6B6E75;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x53676E6968746F6ELL;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    default:
      result = sub_266DAB1DC();
      __break(1u);
      break;
  }

  return result;
}

unint64_t FindDeviceAndPlaySoundIntentResponseCode.description.getter(uint64_t a1)
{
  v3 = a1 - 100;
  if (!(!v2 & v1))
  {
    result = 0x6C69614668747561;
    switch(v3)
    {
      case 0:
        OUTLINED_FUNCTION_0_36();
        return v5 | 1;
      case 1:
        return result;
      case 2:
        return 0xD000000000000010;
      case 3:
        return 0x4464696C61766E69;
      case 4:
        return 0xD000000000000010;
      case 5:
        OUTLINED_FUNCTION_0_36();
        return v8 | 6;
      case 6:
        OUTLINED_FUNCTION_0_36();
        return v9 | 4;
      case 7:
        v7 = 5;
        goto LABEL_20;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 0:
      result = 0x6669636570736E75;
      break;
    case 1:
      result = 0x7964616572;
      break;
    case 2:
      result = 0x65756E69746E6F63;
      break;
    case 3:
      result = 0x6572676F72506E69;
      break;
    case 4:
      result = 0x73736563637573;
      break;
    case 5:
      result = 0x6572756C696166;
      break;
    case 6:
      v7 = 9;
LABEL_20:
      result = v7 | 0xD000000000000010;
      break;
    default:
      sub_266DAADFC();

      v6 = sub_266DAB13C();
      MEMORY[0x26D5F1170](v6);

      result = 0xD000000000000016;
      break;
  }

  return result;
}

id sub_266CAA660(__int128 *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = *a1;
  v3 = *(&v14 + 1);
  v4 = v2;
  if (*(&v14 + 1))
  {
    sub_266CAA834(&v14, &v13);
    v3 = sub_266DAA6FC();
    v4 = sub_266CAA8A4(&v14);
  }

  OUTLINED_FUNCTION_0_37(v4, sel_setFirstName_);

  if (*(a1 + 3))
  {

    v6 = sub_266DAA6FC();
  }

  else
  {
    v6 = 0;
  }

  OUTLINED_FUNCTION_0_37(v5, sel_setNickName_);

  if (*(a1 + 5))
  {

    v8 = sub_266DAA6FC();
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_0_37(v7, sel_setLastName_);

  v9 = *(a1 + 64);
  if (v9 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v11 = sub_266CAA7E0(a1);
  OUTLINED_FUNCTION_0_37(v11, sel_setMe_);

  return v2;
}

uint64_t sub_266CAA834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CAA8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OUTLINED_FUNCTION_0_37(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_266CAA924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for DeviceQuery();
  v6 = [v3 displayString];
  v7 = sub_266DAA70C();

  objc_allocWithZone(swift_getObjCClassFromMetadata());

  v8 = sub_266CAB33C(a1, a2, v7);
  v9 = [v3 deviceOwner];
  OUTLINED_FUNCTION_1_27(v9, sel_setDeviceOwner_);

  v10 = sub_266C39CC0(v3, &selRef_deviceType);
  if (v11)
  {
    v12 = sub_266DAA6FC();
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_1_27(v10, sel_setDeviceType_);

  v13 = sub_266C39CC0(v3, &selRef_deviceName);
  if (v14)
  {
    v15 = sub_266DAA6FC();
  }

  else
  {
    v15 = 0;
  }

  OUTLINED_FUNCTION_1_27(v13, sel_setDeviceName_);

  v16 = sub_266CAB458(v3);
  if (v16)
  {
    v17 = sub_266DAA91C();
  }

  else
  {
    v17 = 0;
  }

  OUTLINED_FUNCTION_1_27(v16, sel_setDeviceTypeCategories_);

  sub_266C39CC0(v3, &selRef_deviceTypeOriginalInput);
  if (v18)
  {
    v19 = sub_266DAA6FC();
  }

  else
  {
    v19 = 0;
  }

  [v8 setDeviceTypeOriginalInput_];

  return v8;
}

id sub_266CAAB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = v10;
  if (a2)
  {
    v15 = sub_266DAA6FC();
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(v11);
  v17 = sub_266DAA6FC();
  v18 = [v16 initWithIdentifier:v15 displayString:v17];

  v19 = v18;
  if (a4)
  {
    v20 = sub_266DAA6FC();
  }

  else
  {
    v20 = 0;
  }

  [v18 setDeviceType_];

  if (a6)
  {
    v21 = sub_266DAA6FC();
  }

  else
  {
    v21 = 0;
  }

  [v18 setDeviceTypeOriginalInput_];

  if (a8)
  {
    v22 = sub_266DAA6FC();
  }

  else
  {
    v22 = 0;
  }

  [v18 setDeviceName_];

  [v18 setDeviceOwner_];
  if (a10)
  {
    v23 = sub_266DAA91C();
  }

  else
  {
    v23 = 0;
  }

  [v18 setDeviceTypeCategories_];

  return v18;
}

uint64_t sub_266CAACE4(char a1, void *a2)
{
  v3 = v2;
  v35 = a2;
  v5 = sub_266DA750C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_266C39CC0(v3, &selRef_deviceName);
  v15 = v14;
  if ((a1 & 1) != 0 && !v14)
  {
    sub_266C39CC0(v3, &selRef_deviceTypeOriginalInput);
    v15 = v16;
  }

  type metadata accessor for FindmyDevice.Builder(0);
  swift_allocObject();
  v17 = sub_266C62630();
  if (v15)
  {
    sub_266DAA77C();

    v18 = sub_266DA919C();
    v19 = 0;
  }

  else
  {
    v18 = sub_266DA919C();
    v19 = 1;
  }

  v20 = 1;
  __swift_storeEnumTagSinglePayload(v13, v19, 1, v18);
  v21 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceName;
  OUTLINED_FUNCTION_0_38(v17 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceName);
  sub_266CAB3E8(v13, v17 + v21);
  swift_endAccess();
  sub_266C55ECC(v13);
  sub_266DA900C();
  v22 = [v3 deviceOwner];
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v23 = v3;
  sub_266DA7AFC();
  v24 = sub_266DA8FBC();
  v25 = sub_266C62788(v24);

  sub_266C39CC0(v23, &selRef_deviceType);
  if (v26)
  {
    sub_266DAA77C();

    v20 = 0;
  }

  v27 = v36;
  v28 = sub_266DA919C();
  v29 = 1;
  __swift_storeEnumTagSinglePayload(v11, v20, 1, v28);
  v30 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_productName;
  OUTLINED_FUNCTION_0_38(v25 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_productName);
  sub_266CAB3E8(v11, v25 + v30);
  swift_endAccess();
  sub_266C55ECC(v11);
  sub_266C39CC0(v23, &selRef_deviceType);
  if (v31)
  {
    sub_266DAA77C();

    v29 = 0;
  }

  __swift_storeEnumTagSinglePayload(v27, v29, 1, v28);
  v32 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_conversationalProductName;
  OUTLINED_FUNCTION_0_38(v25 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_conversationalProductName);
  sub_266CAB3E8(v27, v25 + v32);
  swift_endAccess();
  sub_266C55ECC(v27);
  *(v25 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isItem) = sub_266CAB1A8();
  type metadata accessor for FindmyDevice(0);
  swift_allocObject();
  return sub_266C628E8(v25);
}

uint64_t sub_266CAB098@<X0>(uint64_t a1@<X8>)
{
  sub_266C39CC0(v1, &selRef_deviceType);
  if (v3)
  {
    sub_266DAA77C();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_266DA919C();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

uint64_t sub_266CAB114()
{
  sub_266C39CC0(v0, &selRef_deviceType);
  if (v1)
  {
    sub_266C680F8();
    v2 = sub_266DAACBC();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL sub_266CAB1A8()
{
  v1 = sub_266CAB458(v0);
  if (v1)
  {
    v2 = v1;
    strcpy(v6, "IsB389Category");
    v6[15] = -18;
    MEMORY[0x28223BE20](v1);
    v5[2] = v6;
    v3 = sub_266D2D4E0(sub_266CAB4BC, v5, v2);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t sub_266CAB270()
{
  sub_266C39CC0(v0, &selRef_deviceType);
  if (v1)
  {

    v2 = sub_266C39CC0(v0, &selRef_deviceType);
    if (!v3)
    {
      return 0;
    }

    if (v2 == 0x746375646F7270 && v3 == 0xE700000000000000)
    {
    }

    else
    {
      v5 = sub_266DAB17C();

      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }
  }

  sub_266C39CC0(v0, &selRef_deviceName);
  if (v6)
  {

    return 0;
  }

  return 1;
}

id sub_266CAB33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_266DAA6FC();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_266DAA6FC();

  v6 = [v3 initWithIdentifier:v4 displayString:v5];

  return v6;
}

uint64_t sub_266CAB3E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CAB458(void *a1)
{
  v1 = [a1 deviceTypeCategories];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266DAA93C();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_38(uint64_t a1)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_1_27(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

unint64_t sub_266CAB510(uint64_t a1)
{
  v1 = a1;
  sub_266DAADFC();

  if (qword_2800C9308 != -1)
  {
    swift_once();
  }

  v2 = sub_266CAB604(v1);
  v4 = v3;
  v5 = sub_266DA750C();
  v6 = __swift_project_value_buffer(v5, qword_2800E6350);
  v7 = String.firstLetterCapitalized(with:)(v6, v2, v4);
  v9 = v8;

  MEMORY[0x26D5F1170](v7, v9);

  return 0xD000000000000012;
}

unint64_t sub_266CAB604(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x49746361746E6F63;
      break;
    case 3:
      result = 0x75466E6F73726570;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266CAB6E0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB460);
  v1 = __swift_project_value_buffer(v0, qword_2800CB460);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CAB7A8(uint64_t a1, uint64_t a2)
{
  sub_266CAF9A4();

  return sub_266DA79AC();
}

uint64_t sub_266CAB7FC(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v2[44] = type metadata accessor for Snippets(0);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v3 = sub_266DA80AC();
  v2[53] = v3;
  v2[54] = *(v3 - 8);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v4 = sub_266DA7C0C();
  v2[57] = v4;
  v2[58] = *(v4 - 8);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080) - 8);
  v2[66] = v5;
  v2[67] = *(v5 + 64);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CABB50);
}

uint64_t sub_266CABB50()
{
  v1 = *(v0 + 344);
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  if (sub_266DA7B8C() & 1) != 0 || (__swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64)), v2 = OUTLINED_FUNCTION_32(), (sub_266C6A310(v2, v3)))
  {
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    *(v0 + 656) = v5[11];
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
    *(v0 + 834) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
    swift_allocObject();
    *(v0 + 664) = sub_266DA93CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v12 = swift_allocObject();
    *(v0 + 672) = v12;
    *(v12 + 16) = xmmword_266DAE3B0;
    v13 = *__swift_project_boxed_opaque_existential_1(v5 + 17, v5[20]);
    v14 = swift_task_alloc();
    *(v0 + 680) = v14;
    *v14 = v0;
    v14[1] = sub_266CABE10;

    return sub_266D447B0(v13);
  }

  else
  {
    v16 = *(v0 + 576);
    v17 = *(v0 + 352);
    *(v0 + 744) = *(*(v0 + 344) + 88);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    *v16 = 4;
    *(v16 + 8) = xmmword_266DB2290;
    *(v16 + 24) = 0;
    OUTLINED_FUNCTION_32();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    *(v0 + 832) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
    swift_allocObject();
    *(v0 + 752) = sub_266DA93CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v21 = swift_allocObject();
    *(v0 + 760) = v21;
    *(v21 + 16) = xmmword_266DAE3B0;
    *(v0 + 833) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 768) = v22;
    *v22 = v23;
    v22[1] = sub_266CAD104;

    return sub_266D945C8((v0 + 833), 0);
  }
}

uint64_t sub_266CABE10(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[86] = v1;

  if (v1)
  {
    sub_266C47654(v5[80], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
    v11 = sub_266CAE3E8;
  }

  else
  {
    v5[87] = a1;
    v11 = sub_266CABF50;
  }

  return MEMORY[0x2822009F8](v11);
}

void sub_266CABF50()
{
  v1 = v0[61];
  *(v0[84] + 32) = v0[87];
  sub_266DA7E5C();
  v2 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v2, v3, 1, v4);
  sub_266DA7C7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    v9 = v0[84] & 0xC000000000000001;
    sub_266CB9F54();
    v10 = v0[84];
    if (v9)
    {
      v11 = MEMORY[0x26D5F1780](0, v10);
    }

    else
    {
      v11 = *(v10 + 32);
    }

    v12 = v11;
    v13 = [v11 catId];

    v82 = sub_266DAA70C();
    v87 = v14;
  }

  else
  {
    v82 = 0;
    v87 = 0;
  }

  v15 = v0[82];
  v16 = v0[81];
  v17 = v0[79];
  OUTLINED_FUNCTION_39_1();
  v18 = v0[66];
  v76 = v0[65];
  v77 = v0[63];
  v75 = v0[61];
  v79 = v0[56];
  v80 = v16;
  v83 = v0[44];
  v85 = v19;
  sub_266C4756C(v20, v17);
  sub_266C4756C(v16, v1);
  OUTLINED_FUNCTION_38_1();
  v23 = v22 & ~v21;
  v24 = swift_allocObject();
  v0[88] = v24;
  *(v24 + 16) = v15;
  sub_266C475DC(v17, v24 + v18);
  sub_266C475DC(v1, v24 + v23);
  v25 = OUTLINED_FUNCTION_47_1();
  v26(v25);
  v27 = swift_task_alloc();
  v35 = OUTLINED_FUNCTION_21_7(v27, v28, v29, v30, v31, v32, v33, v34, v75, v76, v77, v79, v80, v82, v83, v85, v87);
  *(v35 + 64) = 513;
  *(v35 + 72) = sub_266C48BBC;
  *(v35 + 80) = v24;
  *(v35 + 88) = v78;

  OUTLINED_FUNCTION_52_1();

  sub_266C4756C(v81, v86);
  if (__swift_getEnumTagSinglePayload(v86, 1, v84) == 1)
  {
    v36 = v0 + 77;
  }

  else
  {
    v37 = v0[44];
    sub_266C476A8(v0[77], v0[52]);
    v38 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v38, v39);
    v40 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v40, v41, v37) != 1)
    {
      v61 = v0[44];
      sub_266C476A8(v0[76], v0[51]);
      v0[35] = v61;
      v62 = sub_266C4DB4C();
      v0[36] = v62;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 32);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[40] = v61;
      v0[41] = v62;
      v64 = __swift_allocate_boxed_opaque_existential_1(v0 + 37);
      OUTLINED_FUNCTION_86(v64);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[89] = v65;
      *v65 = v66;
      v65[1] = sub_266CAC4B0;
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v36 = v0 + 76;
    sub_266C477B4(v0[52]);
  }

  v42 = v0[44];
  sub_266C47654(*v36, &qword_2800CA050, &qword_266DB0080);
  v43 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v43, v44);
  v45 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, v46, v42);
  v48 = v0[75];
  v49 = v0[44];
  if (EnumTagSinglePayload == 1)
  {
    v50 = v0[80];
    v51 = v0[74];
    sub_266C47654(v48, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v50, v51);
    v52 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v52, v53, v49) == 1)
    {
      sub_266C47654(v0[74], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[92] = v54;
      *v54 = v55;
      v54[1] = sub_266CACDFC;
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v69 = v0[44];
    sub_266C476A8(v0[74], v0[49]);
    v0[25] = v69;
    v0[26] = sub_266C4DB4C();
    v70 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    OUTLINED_FUNCTION_55_0(v70);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[91] = v71;
    *v71 = v72;
    OUTLINED_FUNCTION_37_2(v71);
  }

  else
  {
    sub_266C476A8(v48, v0[50]);
    v0[30] = v49;
    v0[31] = sub_266C4DB4C();
    v58 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
    OUTLINED_FUNCTION_86(v58);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[90] = v59;
    *v59 = v60;
    OUTLINED_FUNCTION_37_2(v59);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266CAC4B0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CAC5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_43_2();
  v40 = v38[51];
  v39 = v38[52];

  sub_266C477B4(v40);
  sub_266C477B4(v39);
  v41 = OUTLINED_FUNCTION_5_18();
  v42(v41);
  v43 = OUTLINED_FUNCTION_7_15();
  v44(v43);
  OUTLINED_FUNCTION_31_2();
  v45 = v38[65];
  v57 = v38[76];
  v58 = v38[75];
  OUTLINED_FUNCTION_1_28();
  v46 = v38[63];
  v59 = v47;
  v60 = v38[64];
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_30_5();
  sub_266C47654(v46, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v45, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, v57, v58, a13, a14, a15, a16, a17, a18, v59, v60, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_266CAC7D4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CAC8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_43_2();
  v39 = v38[50];

  sub_266C477B4(v39);
  v40 = OUTLINED_FUNCTION_5_18();
  v41(v40);
  v42 = OUTLINED_FUNCTION_7_15();
  v43(v42);
  OUTLINED_FUNCTION_31_2();
  v44 = v38[65];
  v56 = v38[76];
  v57 = v38[75];
  OUTLINED_FUNCTION_1_28();
  v45 = v38[63];
  v58 = v46;
  v59 = v38[64];
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_30_5();
  sub_266C47654(v45, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v44, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, v56, v57, a13, a14, a15, a16, a17, a18, v58, v59, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_266CACAE8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CACBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_43_2();
  v39 = v38[49];

  sub_266C477B4(v39);
  v40 = OUTLINED_FUNCTION_5_18();
  v41(v40);
  v42 = OUTLINED_FUNCTION_7_15();
  v43(v42);
  OUTLINED_FUNCTION_31_2();
  v44 = v38[65];
  v56 = v38[76];
  v57 = v38[75];
  OUTLINED_FUNCTION_1_28();
  v45 = v38[63];
  v58 = v46;
  v59 = v38[64];
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_30_5();
  sub_266C47654(v45, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v44, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, v56, v57, a13, a14, a15, a16, a17, a18, v58, v59, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_266CACDFC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266CACEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_43_2();

  v39 = OUTLINED_FUNCTION_5_18();
  v40(v39);
  v41 = OUTLINED_FUNCTION_7_15();
  v42(v41);
  OUTLINED_FUNCTION_31_2();
  v43 = v38[65];
  v55 = v38[76];
  v56 = v38[75];
  OUTLINED_FUNCTION_1_28();
  v44 = v38[63];
  v57 = v45;
  v58 = v38[64];
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_30_5();
  sub_266C47654(v44, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v43, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, v55, v56, a13, a14, a15, a16, a17, a18, v57, v58, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_266CAD104(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[97] = v1;

  if (v1)
  {
    sub_266C47654(v5[72], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
    v11 = sub_266CAE570;
  }

  else
  {
    v5[98] = a1;
    v11 = sub_266CAD244;
  }

  return MEMORY[0x2822009F8](v11);
}

void sub_266CAD244()
{
  *(v0[95] + 32) = v0[98];
  sub_266DA7E5C();
  v1 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v1, v2, 1, v3);
  sub_266DA7C7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    v8 = v0[95] & 0xC000000000000001;
    sub_266CB9F54();
    v9 = v0[95];
    if (v8)
    {
      v10 = MEMORY[0x26D5F1780](0, v9);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;
    v12 = [v10 catId];

    v80 = sub_266DAA70C();
    v85 = v13;
  }

  else
  {
    v80 = 0;
    v85 = 0;
  }

  v14 = v0[93];
  v15 = v0[79];
  v16 = v0[78];
  v17 = v0[73];
  v18 = v0[66];
  v74 = v0[64];
  v75 = v0[62];
  v73 = v0[59];
  v77 = v0[55];
  v78 = v17;
  v81 = v0[44];
  v83 = v0[71];
  sub_266C4756C(v0[72], v15);
  sub_266C4756C(v17, v16);
  OUTLINED_FUNCTION_38_1();
  v21 = v20 & ~v19;
  v22 = swift_allocObject();
  v0[99] = v22;
  *(v22 + 16) = v14;
  sub_266C475DC(v15, v22 + v18);
  sub_266C475DC(v16, v22 + v21);
  v23 = OUTLINED_FUNCTION_47_1();
  v24(v23);
  v25 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_21_7(v25, v26, v27, v28, v29, v30, v31, v32, v73, v74, v75, v77, v78, v80, v81, v83, v85);
  *(v33 + 64) = 514;
  *(v33 + 72) = sub_266C4764C;
  *(v33 + 80) = v22;
  *(v33 + 88) = v76;

  OUTLINED_FUNCTION_52_1();

  sub_266C4756C(v79, v84);
  if (__swift_getEnumTagSinglePayload(v84, 1, v82) == 1)
  {
    v34 = v0 + 71;
  }

  else
  {
    v35 = v0[44];
    sub_266C476A8(v0[71], v0[48]);
    v36 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v36, v37);
    v38 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v38, v39, v35) != 1)
    {
      v59 = v0[44];
      sub_266C476A8(v0[70], v0[47]);
      v0[15] = v59;
      v60 = sub_266C4DB4C();
      v0[16] = v60;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[20] = v59;
      v0[21] = v60;
      v62 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      OUTLINED_FUNCTION_86(v62);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[100] = v63;
      *v63 = v64;
      v63[1] = sub_266CAD7A4;
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v34 = v0 + 70;
    sub_266C477B4(v0[48]);
  }

  v40 = v0[44];
  sub_266C47654(*v34, &qword_2800CA050, &qword_266DB0080);
  v41 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v41, v42);
  v43 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, v44, v40);
  v46 = v0[69];
  v47 = v0[44];
  if (EnumTagSinglePayload == 1)
  {
    v48 = v0[72];
    v49 = v0[68];
    sub_266C47654(v46, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v48, v49);
    v50 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v50, v51, v47) == 1)
    {
      sub_266C47654(v0[68], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[103] = v52;
      *v52 = v53;
      v52[1] = sub_266CAE0E4;
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v67 = v0[44];
    sub_266C476A8(v0[68], v0[45]);
    v0[5] = v67;
    v0[6] = sub_266C4DB4C();
    v68 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_55_0(v68);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[102] = v69;
    *v69 = v70;
    OUTLINED_FUNCTION_36_4(v69);
  }

  else
  {
    sub_266C476A8(v46, v0[46]);
    v0[10] = v47;
    v0[11] = sub_266C4DB4C();
    v56 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_86(v56);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[101] = v57;
    *v57 = v58;
    OUTLINED_FUNCTION_36_4(v57);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266CAD7A4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CAD8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_47_2();
  v40 = v38[47];
  v39 = v38[48];

  sub_266C477B4(v40);
  sub_266C477B4(v39);
  v41 = OUTLINED_FUNCTION_4_19();
  v42(v41);
  v43 = OUTLINED_FUNCTION_7_15();
  v44(v43);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_39_1();
  v58 = v45;
  v59 = v38[76];
  OUTLINED_FUNCTION_1_28();
  v60 = v46;
  v61 = v38[65];
  v47 = v38[64];
  v48 = v38[62];
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_33_3();
  sub_266C47654(v48, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v47, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, v58, v59, a13, a14, a15, a16, a17, a18, v60, v61, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_266CADAC4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CADBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_47_2();
  v39 = v38[46];

  sub_266C477B4(v39);
  v40 = OUTLINED_FUNCTION_4_19();
  v41(v40);
  v42 = OUTLINED_FUNCTION_7_15();
  v43(v42);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_39_1();
  v57 = v44;
  v58 = v38[76];
  OUTLINED_FUNCTION_1_28();
  v59 = v45;
  v60 = v38[65];
  v46 = v38[64];
  v47 = v38[62];
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_33_3();
  sub_266C47654(v47, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v46, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, v57, v58, a13, a14, a15, a16, a17, a18, v59, v60, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_266CADDD4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CADED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_47_2();
  v39 = v38[45];

  sub_266C477B4(v39);
  v40 = OUTLINED_FUNCTION_4_19();
  v41(v40);
  v42 = OUTLINED_FUNCTION_7_15();
  v43(v42);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_39_1();
  v57 = v44;
  v58 = v38[76];
  OUTLINED_FUNCTION_1_28();
  v59 = v45;
  v60 = v38[65];
  v46 = v38[64];
  v47 = v38[62];
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_33_3();
  sub_266C47654(v47, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v46, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, v57, v58, a13, a14, a15, a16, a17, a18, v59, v60, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_266CAE0E4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266CAE1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_47_2();

  v39 = OUTLINED_FUNCTION_4_19();
  v40(v39);
  v41 = OUTLINED_FUNCTION_7_15();
  v42(v41);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_39_1();
  v56 = v43;
  v57 = v38[76];
  OUTLINED_FUNCTION_1_28();
  v58 = v44;
  v59 = v38[65];
  v45 = v38[64];
  v46 = v38[62];
  OUTLINED_FUNCTION_0_39();
  OUTLINED_FUNCTION_33_3();
  sub_266C47654(v46, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v45, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, v56, v57, a13, a14, a15, a16, a17, a18, v58, v59, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_266CAE3E8()
{

  OUTLINED_FUNCTION_12_11(*(v0 + 672));

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266CAE570()
{

  OUTLINED_FUNCTION_12_11(*(v0 + 760));

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266CAE6F8()
{
  OUTLINED_FUNCTION_22_0();
  v1[35] = v2;
  v1[36] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB478, &qword_266DB7540);
  v1[37] = swift_task_alloc();
  v3 = sub_266DA7C5C();
  v1[38] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[39] = v4;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266CAE7E8()
{
  if (qword_2800C9260 != -1)
  {
    swift_once();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800CB460);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "Executing RequestTooGenericFlow flow", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  v5 = v0[40];
  v6 = v0[41];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[36];

  (*(v7 + 104))(v6, *MEMORY[0x277D5BC10], v8);
  sub_266DA7ADC();
  (*(v7 + 16))(v5, v6, v8);
  sub_266DA7A5C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_18_1();
  v14 = swift_allocObject();
  *(v14 + 16) = 3;
  *(v14 + 24) = 0xD000000000000011;
  *(v14 + 32) = 0x8000000266DC1480;
  sub_266DA7ACC();
  sub_266DA7A1C();
  __swift_project_boxed_opaque_existential_1(v0 + 24, v0[27]);
  sub_266DA7A2C();

  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  sub_266C233D0(v9 + 96, (v0 + 29));
  sub_266CAEC60(v9, (v0 + 2));
  v15 = swift_allocObject();
  memcpy((v15 + 16), v0 + 2, 0xB0uLL);
  sub_266DA75FC();
  swift_allocObject();
  v0[34] = sub_266DA75EC();
  sub_266DA7D5C();

  OUTLINED_FUNCTION_28();

  return v16();
}

uint64_t sub_266CAEB18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C4716C;

  return sub_266CAB7FC(a1);
}

uint64_t sub_266CAEBB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266CAE6F8();
}

uint64_t sub_266CAEC98()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_266C4716C;

  return sub_266CAEB18(v2);
}

uint64_t objectdestroy_10Tm()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v34 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v35 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v35, v36, v1))
        {
          v37 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v38 + 8))(v34 + v37);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v34 + v1[11]);
          v39 = type metadata accessor for Address(0);
          v40 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v40, v41, v39))
          {
            sub_266DA919C();
            v42 = OUTLINED_FUNCTION_109();
            v114 = v43;
            if (!__swift_getEnumTagSinglePayload(v42, v44, v43))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v45 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v46 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v46, v47, v48, v49, v50, v51, v52, v53, v112, v114))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v54 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v113 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v113))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v112 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v112, 1, v113))
              {
                (*(*(v113 - 8) + 8))(v32 + v112);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v55);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v56 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v57 = v0 + v10;
  v58 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v58, v59, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v57);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v64 = v57 + *(type metadata accessor for Friend(0) + 40);
        v65 = type metadata accessor for FriendLocation(0);
        v66 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v66, v67, v65))
        {
          break;
        }

        v68 = v64 + *(v65 + 32);
LABEL_57:
        v99 = type metadata accessor for Location(0);
        v100 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v100, v101, v99))
        {
          v102 = *(v99 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v103 + 8))(v68 + v102);

          v104 = v68 + *(v99 + 44);
          v105 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v105))
          {
            v106 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v104, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v107 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v104 + v107, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104 + v107, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v73 = v57 + *(type metadata accessor for Friend(0) + 40);
        v74 = type metadata accessor for FriendLocation(0);
        v75 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v75, v76, v74))
        {

          v77 = v73 + *(v74 + 32);
          v78 = type metadata accessor for Location(0);
          v79 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v79, v80, v78))
          {
            v81 = *(v78 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v82 + 8))(v77 + v81);

            v2 = (v77 + *(v78 + 44));
            v83 = type metadata accessor for Address(0);
            v84 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v84, v85, v83))
            {
              sub_266DA919C();
              v86 = OUTLINED_FUNCTION_109();
              v115 = v87;
              if (!__swift_getEnumTagSinglePayload(v86, v88, v87))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v89 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v90 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v90, v91, v92, v93, v94, v95, v96, v97, v112, v115))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v98 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v68 = v57 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v108);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v72);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v57 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v69 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v70 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v70 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v109 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v110 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v110 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v60 + 8))(v0 + v10);
        v61 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v62 = *(v61 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v63 + 8))(v57 + v62);
        if (*(v57 + *(v61 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

unint64_t sub_266CAF9A4()
{
  result = qword_2800CB480;
  if (!qword_2800CB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB480);
  }

  return result;
}

void OUTLINED_FUNCTION_0_39()
{
  v3 = v0[49];
  v2 = v0[50];
  *(v1 - 136) = v0[51];
  *(v1 - 128) = v2;
  v5 = v0[47];
  v4 = v0[48];
  *(v1 - 120) = v3;
  *(v1 - 112) = v4;
  v6 = v0[45];
  v7 = v0[46];
  *(v1 - 104) = v5;
  *(v1 - 96) = v7;
  *(v1 - 88) = v6;
}

uint64_t OUTLINED_FUNCTION_12_11(uint64_t a1)
{
  v5 = v1[47];
  v4 = v1[48];
  *(v2 - 128) = v1[49];
  *(v2 - 120) = v4;
  v6 = v1[45];
  v7 = v1[46];
  *(v2 - 112) = v5;
  *(v2 - 104) = v7;
  *(v2 - 96) = v6;
  *(a1 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_21_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a14;
  *(result + 48) = a17;
  *(result + 56) = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_5()
{

  return sub_266C47654(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t sub_266CAFC70@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB488, &qword_266DB3B68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = [v1 userActivity];
  if (v6 && (v7 = sub_266CB0044(v6)) != 0)
  {
    v8 = v7;
    v30 = 0xD00000000000001BLL;
    v31 = 0x8000000266DC2410;
    sub_266DAAD9C();
    sub_266CBD1B0(v8, &v33, v32);

    sub_266CB00BC(v32);
    if (v34)
    {
      if (swift_dynamicCast())
      {
        v9 = v30;
        v10 = v31;
        sub_266DA6FEC();
        swift_allocObject();
        sub_266DA6FDC();
        v11 = sub_266DA939C();
        sub_266CB0110();
        sub_266DA6FCC();
        sub_266C2BB04(v9, v10);

        __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
        (*(*(v11 - 8) + 32))(a1, v5, v11);
        v25 = a1;
        v26 = 0;
        v27 = 1;
        v28 = v11;
        return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
      }
    }

    else
    {
      sub_266C3A088(&v33, &qword_2800CA7C0, &qword_266DB1BD0);
    }

    if (qword_28156F1D8 != -1)
    {
      OUTLINED_FUNCTION_0_19(&qword_28156F1D8);
    }

    v19 = sub_266DA94AC();
    __swift_project_value_buffer(v19, &unk_28156F1E0);
    v20 = sub_266DA948C();
    v21 = sub_266DAAB0C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      OUTLINED_FUNCTION_2_27(&dword_266C08000, v23, v24, "Unable to decode UserInfo appIntentsSpecification. Returning...");
      MEMORY[0x26D5F2480](v22, -1, -1);
    }

    sub_266DA939C();
    v25 = OUTLINED_FUNCTION_1_29();
  }

  else
  {
    if (qword_28156F1D8 != -1)
    {
      OUTLINED_FUNCTION_0_19(&qword_28156F1D8);
    }

    v12 = sub_266DA94AC();
    __swift_project_value_buffer(v12, &unk_28156F1E0);
    v13 = sub_266DA948C();
    v14 = sub_266DAAB0C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      OUTLINED_FUNCTION_2_27(&dword_266C08000, v16, v17, "UserInfo is nil. Returning...");
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    sub_266DA939C();
    v25 = OUTLINED_FUNCTION_1_29();
  }

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

uint64_t sub_266CB0044(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA6AC();

  return v3;
}

unint64_t sub_266CB0110()
{
  result = qword_2800CB490;
  if (!qword_2800CB490)
  {
    sub_266DA939C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB490);
  }

  return result;
}

void OUTLINED_FUNCTION_2_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t FindFriendSnippetData.siriLocale.getter@<X0>(uint64_t a1@<X8>)
{
  sub_266DA750C();
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t FindFriendSnippetData.siriLocale.setter()
{
  OUTLINED_FUNCTION_7_8();
  sub_266DA750C();
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t FindFriendSnippetData.snippetType.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FindFriendSnippetData(0);
  OUTLINED_FUNCTION_3_23();
  return sub_266CB0B74(v1 + v3, a1);
}

uint64_t FindFriendSnippetData.snippetType.setter()
{
  v2 = OUTLINED_FUNCTION_7_8();
  v3 = v1 + *(type metadata accessor for FindFriendSnippetData(v2) + 20);

  return sub_266CB0334(v0, v3);
}

uint64_t sub_266CB0334(uint64_t a1, uint64_t a2)
{
  FriendSnippetType = type metadata accessor for FindFriendSnippetType(0);
  (*(*(FriendSnippetType - 8) + 40))(a2, a1, FriendSnippetType);
  return a2;
}

void (*FindFriendSnippetData.snippetType.modify())()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for FindFriendSnippetData(v0);
  return nullsub_1;
}

uint64_t sub_266CB03DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61636F4C69726973 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5474657070696E73 && a2 == 0xEB00000000657079)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

uint64_t sub_266CB04B0(char a1)
{
  if (a1)
  {
    return 0x5474657070696E73;
  }

  else
  {
    return 0x61636F4C69726973;
  }
}

uint64_t sub_266CB04FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CB03DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CB0524(uint64_t a1)
{
  v2 = sub_266CB074C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CB0560(uint64_t a1)
{
  v2 = sub_266CB074C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FindFriendSnippetData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB498, &qword_266DB3B70);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CB074C();
  sub_266DAB36C();
  v17[15] = 0;
  sub_266DA750C();
  OUTLINED_FUNCTION_6_19();
  sub_266CB07A0(v11, v12, MEMORY[0x277CC9790]);
  OUTLINED_FUNCTION_14_13(v3);
  if (!v2)
  {
    v13 = *(type metadata accessor for FindFriendSnippetData(0) + 20);
    v17[14] = 1;
    type metadata accessor for FindFriendSnippetType(0);
    OUTLINED_FUNCTION_4_20();
    sub_266CB07A0(v14, v15, &protocol conformance descriptor for FindFriendSnippetType);
    OUTLINED_FUNCTION_14_13(v3 + v13);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_266CB074C()
{
  result = qword_2800CB4A0;
  if (!qword_2800CB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB4A0);
  }

  return result;
}

uint64_t sub_266CB07A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FindFriendSnippetData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FindFriendSnippetType(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v7 = v6 - v5;
  v28 = sub_266DA750C();
  OUTLINED_FUNCTION_0_2();
  v26 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_6();
  v27 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB4B8, &qword_266DB3B78);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  FriendSnippetData = type metadata accessor for FindFriendSnippetData(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_6();
  v17 = v16 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CB074C();
  sub_266DAB34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_6_19();
  sub_266CB07A0(v18, v19, MEMORY[0x277CC97A8]);
  sub_266DAB05C();
  (*(v26 + 32))(v17, v27, v28);
  OUTLINED_FUNCTION_4_20();
  sub_266CB07A0(v20, v21, &protocol conformance descriptor for FindFriendSnippetType);
  sub_266DAB05C();
  v22 = OUTLINED_FUNCTION_7_16();
  v23(v22);
  sub_266CB14F0(v7, v17 + *(FriendSnippetData + 20));
  sub_266CB0B74(v17, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_266CB15A0();
}

uint64_t sub_266CB0B74(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_2();
  v5(v4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_266CB0BD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4C646E65697266 && a2 == 0xEE006E6F69746163;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636F4C70616DLL && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

uint64_t sub_266CB0CA4(char a1)
{
  if (a1)
  {
    return 0x7461636F4C70616DLL;
  }

  else
  {
    return 0x6F4C646E65697266;
  }
}

uint64_t sub_266CB0CF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266DAB17C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266CB0D6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

uint64_t sub_266CB0E2C(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_266CB0E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CB0BD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CB0EA4(uint64_t a1)
{
  v2 = sub_266CB1448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CB0EE0(uint64_t a1)
{
  v2 = sub_266CB1448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266CB0F20(uint64_t a1)
{
  v2 = sub_266CB154C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CB0F5C(uint64_t a1)
{
  v2 = sub_266CB154C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266CB0FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CB0D6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CB0FC8(uint64_t a1)
{
  v2 = sub_266CB149C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CB1004(uint64_t a1)
{
  v2 = sub_266CB149C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FindFriendSnippetType.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB4D0, &qword_266DB3B80);
  OUTLINED_FUNCTION_0_2();
  v37 = v3;
  v38 = v2;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_9(v5, v33[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB4D8, &qword_266DB3B88);
  OUTLINED_FUNCTION_0_2();
  v34 = v7;
  v35 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  v33[1] = type metadata accessor for Friend(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  v14 = v13 - v12;
  type metadata accessor for FindFriendSnippetType(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_6();
  v18 = v17 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB4E0, &qword_266DB3B90);
  OUTLINED_FUNCTION_0_2();
  v20 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  v23 = v33 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CB1448();
  sub_266DAB36C();
  OUTLINED_FUNCTION_3_23();
  sub_266CB0B74(v39, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = 1;
    sub_266CB149C();
    v24 = v36;
    v25 = v40;
    sub_266DAB08C();
    v44 = 0;
    v26 = v38;
    v27 = v41;
    sub_266DAB10C();
    if (!v27)
    {
      v43 = 1;
      sub_266DAB10C();
    }

    (*(v37 + 8))(v24, v26);
    return (*(v20 + 8))(v23, v25);
  }

  else
  {
    sub_266CB14F0(v18, v14);
    v42 = 0;
    sub_266CB154C();
    v29 = v40;
    sub_266DAB08C();
    OUTLINED_FUNCTION_5_19();
    sub_266CB07A0(v30, v31, &protocol conformance descriptor for Friend);
    v32 = v35;
    sub_266DAB11C();
    (*(v34 + 8))(v10, v32);
    sub_266CB15A0();
    return (*(v20 + 8))(v23, v29);
  }
}

unint64_t sub_266CB1448()
{
  result = qword_2800CB4E8;
  if (!qword_2800CB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB4E8);
  }

  return result;
}

unint64_t sub_266CB149C()
{
  result = qword_2800CB4F0;
  if (!qword_2800CB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB4F0);
  }

  return result;
}

uint64_t sub_266CB14F0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_2();
  v5(v4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_266CB154C()
{
  result = qword_2800CB4F8;
  if (!qword_2800CB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB4F8);
  }

  return result;
}

uint64_t sub_266CB15A0()
{
  v1 = OUTLINED_FUNCTION_7_8();
  v2(v1);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t FindFriendSnippetType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB508, &qword_266DB3B98);
  OUTLINED_FUNCTION_0_2();
  v67 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_9(v5, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB510, &qword_266DB3BA0);
  OUTLINED_FUNCTION_0_2();
  v63 = v7;
  v64 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v65 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB518, &unk_266DB3BA8);
  OUTLINED_FUNCTION_0_2();
  v68 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  FriendSnippetType = type metadata accessor for FindFriendSnippetType(0);
  OUTLINED_FUNCTION_0();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v58 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  v25 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_266CB1448();
  v26 = v71;
  sub_266DAB34C();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_0(v70);
  }

  v59 = v19;
  v60 = v24;
  v61 = v22;
  v27 = v69;
  v71 = FriendSnippetType;
  sub_266DAB06C();
  result = sub_266C1E2FC();
  v32 = v14;
  if (v30 == v31 >> 1)
  {
LABEL_7:
    v42 = v71;
    v43 = sub_266DAAE4C();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9908, &qword_266DAD8C0);
    *v45 = v42;
    sub_266DAAFBC();
    sub_266DAAE3C();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_8_6();
    v47(v46);
    return __swift_destroy_boxed_opaque_existential_0(v70);
  }

  if (v30 < (v31 >> 1))
  {
    v72 = *(v29 + v30);
    sub_266C1E2EC();
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    v37 = v67;
    if (v34 == v36 >> 1)
    {
      if (v72)
      {
        v74 = 1;
        sub_266CB149C();
        v38 = v66;
        OUTLINED_FUNCTION_15_12(&type metadata for FindFriendSnippetType.MapLocationCodingKeys, &v74);
        v73[2] = 0;
        sub_266DAB03C();
        v39 = v68;
        v41 = v40;
        v73[1] = 1;
        sub_266DAB03C();
        v55 = v54;
        swift_unknownObjectRelease();
        (*(v37 + 8))(v38, v27);
        (*(v39 + 8))(v32, v10);
        v56 = v59;
        *v59 = v41;
        *(v56 + 8) = v55;
      }

      else
      {
        v73[0] = 0;
        sub_266CB154C();
        OUTLINED_FUNCTION_15_12(&type metadata for FindFriendSnippetType.FriendLocationCodingKeys, v73);
        type metadata accessor for Friend(0);
        OUTLINED_FUNCTION_5_19();
        sub_266CB07A0(v48, v49, &protocol conformance descriptor for Friend);
        v56 = v61;
        sub_266DAB05C();
        swift_unknownObjectRelease();
        v50 = OUTLINED_FUNCTION_11_9();
        v51(v50);
        v52 = OUTLINED_FUNCTION_8_6();
        v53(v52);
      }

      swift_storeEnumTagMultiPayload();
      v57 = v60;
      sub_266CB14F0(v56, v60);
      sub_266CB14F0(v57, v62);
      return __swift_destroy_boxed_opaque_existential_0(v70);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_266CB1C7C(uint64_t a1)
{
  result = sub_266DA750C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FindFriendSnippetType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_266CB1D08(uint64_t a1)
{
  type metadata accessor for Friend(319);
  if (v1 <= 0x3F)
  {
    sub_266CB1D7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_266CB1D7C()
{
  if (!qword_2800CB548)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2800CB548);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FindFriendSnippetType.FriendLocationCodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_266CB1EA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266CB1F84()
{
  result = qword_2800CB550;
  if (!qword_2800CB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB550);
  }

  return result;
}

unint64_t sub_266CB1FDC()
{
  result = qword_2800CB558;
  if (!qword_2800CB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB558);
  }

  return result;
}

unint64_t sub_266CB2034()
{
  result = qword_2800CB560;
  if (!qword_2800CB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB560);
  }

  return result;
}

unint64_t sub_266CB208C()
{
  result = qword_2800CB568;
  if (!qword_2800CB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB568);
  }

  return result;
}

unint64_t sub_266CB20E4()
{
  result = qword_2800CB570;
  if (!qword_2800CB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB570);
  }

  return result;
}

unint64_t sub_266CB213C()
{
  result = qword_2800CB578;
  if (!qword_2800CB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB578);
  }

  return result;
}

unint64_t sub_266CB2194()
{
  result = qword_2800CB580;
  if (!qword_2800CB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB580);
  }

  return result;
}

unint64_t sub_266CB21EC()
{
  result = qword_2800CB588;
  if (!qword_2800CB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB588);
  }

  return result;
}

unint64_t sub_266CB2244()
{
  result = qword_2800CB590;
  if (!qword_2800CB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB590);
  }

  return result;
}

unint64_t sub_266CB229C()
{
  result = qword_2800CB598;
  if (!qword_2800CB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB598);
  }

  return result;
}

unint64_t sub_266CB22F4()
{
  result = qword_2800CB5A0;
  if (!qword_2800CB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB5A0);
  }

  return result;
}

unint64_t sub_266CB234C()
{
  result = qword_2800CB5A8;
  if (!qword_2800CB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB5A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_13(uint64_t a1)
{

  return sub_266DAB11C();
}

uint64_t OUTLINED_FUNCTION_15_12(uint64_t a1, uint64_t a2)
{

  return sub_266DAAFAC();
}

uint64_t DeviceLocality.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 1:
      return 0x6C61636F6CLL;
    case 2:
      return 0x65746F6D6572;
  }

  result = sub_266DAB1DC();
  __break(1u);
  return result;
}

uint64_t CBManagerState.description.getter(uint64_t a1)
{
  result = 0x4F64657265776F70;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E75;
      break;
    case 1:
      result = 0x6E69747465736572;
      break;
    case 2:
      v3 = 0x707075736E75;
      goto LABEL_6;
    case 3:
      v3 = 0x687475616E75;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x726F000000000000;
      break;
    case 4:
    case 5:
      return result;
    default:
      sub_266DAADFC();

      v4 = sub_266DAB13C();
      MEMORY[0x26D5F1170](v4);

      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t type metadata accessor for FindMyFriendCATsSimple(uint64_t a1)
{
  result = qword_2800CB5B0;
  if (!qword_2800CB5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266CB2710()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v4);
  v1[5] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266CB27A0()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = v1[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_41_1(v3);
  v1[6] = v4;
  OUTLINED_FUNCTION_3_24(v4, xmmword_266DB05C0);
  if (v2)
  {
    sub_266DA914C();
  }

  else
  {
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v2;
  OUTLINED_FUNCTION_27_6();
  *(v4 + 72) = v5;
  *(v4 + 80) = v6;
  OUTLINED_FUNCTION_26_6();
  *(v4 + 88) = v7;
  OUTLINED_FUNCTION_39_2(&qword_2800CA038, &unk_266DAFBF0, v8);
  v9 = sub_266DA919C();
  OUTLINED_FUNCTION_17_13(v9);
  v10 = v1[5];
  OUTLINED_FUNCTION_33_4();
  if (v11)
  {

    sub_266C3A088(v10, &qword_2800CA038, &unk_266DAFBF0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v12();
  }

  OUTLINED_FUNCTION_12_4(MEMORY[0x277D55C70]);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_44_2(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_38_4(v14);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_31_3(28);
  OUTLINED_FUNCTION_102();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_266CB293C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_11_10();

    return v9(v8);
  }
}

uint64_t sub_266CB2A6C()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CB2AD0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(28);

  return v4(v3);
}

uint64_t sub_266CB2B78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB2B90()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_41_1(v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_3_24(v3, xmmword_266DB05C0);
  if (v1)
  {
    v4 = sub_266DA914C();
    v5 = v1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_32_3();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v6 = v0[3];
  v3[3].n128_u64[0] = v5;
  v3[4].n128_u64[1] = v4;
  v3[5].n128_u64[0] = 0x6E6F73726570;
  v3[5].n128_u64[1] = 0xE600000000000000;
  v7 = 0;
  if (v6)
  {
    v7 = sub_266DA900C();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v6;
  v3[7].n128_u64[1] = v7;
  v11 = OUTLINED_FUNCTION_20_8(MEMORY[0x277D55C70]);

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_38_4(v8);
  v9 = OUTLINED_FUNCTION_31_3(28);

  return v11(v9);
}

uint64_t sub_266CB2CF4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_7();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_2_28();

    return v9(v8);
  }
}

uint64_t sub_266CB2E1C()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CB2E78()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v4);
  v1[5] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266CB2F08()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v5 = OUTLINED_FUNCTION_41_1(v4);
  v0[6] = v5;
  *(v5 + 16) = xmmword_266DB05C0;
  OUTLINED_FUNCTION_15_13();
  *(v7 + 32) = v6 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
  *(v7 + 40) = 0xE900000000000073;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5D8, &unk_266DB42A0);
  *(v5 + 48) = v2;
  OUTLINED_FUNCTION_15_13();
  *(v5 + 72) = v9;
  *(v5 + 80) = v8 & 0xFFFFFFFFFFFFLL | 0x4C73000000000000;
  *(v5 + 88) = 0xEC0000006C656261;
  sub_266C744CC(v3, v1, &qword_2800CA038, &unk_266DAFBF0);
  v10 = sub_266DA919C();
  __swift_getEnumTagSinglePayload(v1, 1, v10);
  v11 = v0[5];
  OUTLINED_FUNCTION_33_4();
  if (v12)
  {

    sub_266C3A088(v11, &qword_2800CA038, &unk_266DAFBF0);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 96));
    (*(*(v10 - 8) + 32))(boxed_opaque_existential_1, v11, v10);
  }

  OUTLINED_FUNCTION_12_4(MEMORY[0x277D55C70]);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_44_2(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_38_4(v15);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_31_3(32);
  OUTLINED_FUNCTION_102();

  return v20(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_266CB30E4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_11_10();

    return v9(v8);
  }
}

uint64_t sub_266CB3214(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB3228()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_36_5(v2);
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_266DAE4A0;
  *(v3 + 32) = 0x4C746361746E6F63;
  *(v3 + 40) = 0xEB00000000747369;
  *(v3 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5D0, &qword_266DB4298);
  *(v3 + 48) = v1;
  v8 = OUTLINED_FUNCTION_20_8(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_3(v4);
  *v5 = v6;
  v5[1] = sub_266CB3360;

  return v8(0xD00000000000001FLL, 0x8000000266DC28A0, v3);
}

uint64_t sub_266CB3360()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_7();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_2_28();

    return v9(v8);
  }
}

uint64_t sub_266CB3488()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CB34E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB34FC()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_41_1(v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_9_10(v3, xmmword_266DB05C0);
  if (v1)
  {
    v4 = sub_266DA900C();
    v5 = v1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_32_3();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v6 = v0[3];
  v3[3].n128_u64[0] = v5;
  v3[4].n128_u64[1] = v4;
  v3[5].n128_u64[0] = 7368801;
  v3[5].n128_u64[1] = 0xE300000000000000;
  v7 = 0;
  if (v6)
  {
    v7 = sub_266DA914C();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v6;
  v3[7].n128_u64[1] = v7;
  v11 = OUTLINED_FUNCTION_20_8(MEMORY[0x277D55C70]);

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_38_4(v8);
  v9 = OUTLINED_FUNCTION_31_3(33);

  return v11(v9);
}

uint64_t sub_266CB365C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_7();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_2_28();

    return v9(v8);
  }
}

uint64_t sub_266CB3784()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(35);

  return v4(v3);
}

uint64_t sub_266CB382C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(34);

  return v4(v3);
}

uint64_t sub_266CB38D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB38E8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_36_5(v3);
  v5 = OUTLINED_FUNCTION_35_3(v4);
  OUTLINED_FUNCTION_9_10(v5, xmmword_266DAE4A0);
  v6 = 0;
  if (v2)
  {
    v6 = sub_266DA900C();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_34_2(v6);
  OUTLINED_FUNCTION_12_12();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_28_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_10(v8);
  OUTLINED_FUNCTION_14_14(26);
  OUTLINED_FUNCTION_102();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_266CB39D0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_7();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_2_28();

    return v9(v8);
  }
}

uint64_t sub_266CB3AF8()
{
  OUTLINED_FUNCTION_22_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v9);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_266CB3B9C()
{
  v2 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = swift_allocObject();
  v1[12] = v3;
  *(v3 + 16) = xmmword_266DB05B0;
  OUTLINED_FUNCTION_15_13();
  *(v5 + 32) = v4 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  *(v5 + 40) = 0xE700000000000000;
  if (v2)
  {
    sub_266DA8F2C();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v2;
  OUTLINED_FUNCTION_27_6();
  *(v3 + 72) = v6;
  *(v3 + 80) = v7;
  OUTLINED_FUNCTION_26_6();
  *(v3 + 88) = v8;
  OUTLINED_FUNCTION_39_2(&qword_2800CA038, &unk_266DAFBF0, v9);
  v10 = sub_266DA919C();
  OUTLINED_FUNCTION_17_13(v10);
  v11 = v1[11];
  OUTLINED_FUNCTION_33_4();
  if (v12)
  {

    sub_266C3A088(v11, &qword_2800CA038, &unk_266DAFBF0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v13();
  }

  v14 = v1[10];
  v15 = v1[4];
  strcpy((v3 + 128), "locationType");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  sub_266C744CC(v15, v14, &qword_2800CA038, &unk_266DAFBF0);
  if (OUTLINED_FUNCTION_21_8() == 1)
  {
    sub_266C3A088(v1[10], &qword_2800CA038, &unk_266DAFBF0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v16();
  }

  v17 = v1[5];
  *(v3 + 176) = 0x65636E6174736964;
  *(v3 + 184) = 0xE800000000000000;
  if (v17)
  {
    v18 = sub_266DA8F9C();
    v19 = v17;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_32_3();
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  v20 = v1[6];
  *(v3 + 192) = v19;
  *(v3 + 216) = v18;
  *(v3 + 224) = 0x646E65697266;
  *(v3 + 232) = 0xE600000000000000;
  if (v20)
  {
    v21 = sub_266DA900C();
    v22 = v20;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_32_3();
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
  }

  v23 = v1[7];
  *(v3 + 240) = v22;
  *(v3 + 264) = v21;
  *(v3 + 272) = 0xD000000000000011;
  *(v3 + 280) = 0x8000000266DC2790;
  if (v23)
  {
    v24 = sub_266DA907C();
    v25 = v23;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_32_3();
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  v26 = v1[8];
  *(v3 + 288) = v25;
  *(v3 + 312) = v24;
  *(v3 + 320) = 0xD000000000000014;
  *(v3 + 328) = 0x8000000266DC27B0;
  v27 = 0;
  if (v26)
  {
    v27 = sub_266DA90CC();
  }

  else
  {
    *(v3 + 344) = 0;
    *(v3 + 352) = 0;
  }

  *(v3 + 336) = v26;
  *(v3 + 360) = v27;
  v30 = OUTLINED_FUNCTION_20_8(MEMORY[0x277D55C70]);

  v28 = swift_task_alloc();
  v1[13] = v28;
  *v28 = v1;
  v28[1] = sub_266CB3F40;

  return v30(0xD000000000000018, 0x8000000266DC27D0, v3);
}

uint64_t sub_266CB3F40()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_11_10();

    return v9(v8);
  }
}

uint64_t sub_266CB407C()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CB40EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB4100()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_36_5(v3);
  v5 = OUTLINED_FUNCTION_35_3(v4);
  OUTLINED_FUNCTION_3_24(v5, xmmword_266DAE4A0);
  v6 = 0;
  if (v2)
  {
    v6 = sub_266DA914C();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_34_2(v6);
  OUTLINED_FUNCTION_12_12();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_28_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_10(v8);
  OUTLINED_FUNCTION_14_14(32);
  OUTLINED_FUNCTION_102();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_266CB41E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB41FC()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_36_5(v3);
  v5 = OUTLINED_FUNCTION_35_3(v4);
  *(v5 + 16) = xmmword_266DAE4A0;
  *(v5 + 32) = 0x6465766C6F736572;
  *(v5 + 40) = 0xEF746361746E6F43;
  v6 = 0;
  if (v2)
  {
    v6 = sub_266DA900C();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_34_2(v6);
  OUTLINED_FUNCTION_12_12();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_28_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_10(v8);
  OUTLINED_FUNCTION_14_14(29);
  OUTLINED_FUNCTION_102();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_266CB4308(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB431C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_36_5(v3);
  v5 = OUTLINED_FUNCTION_35_3(v4);
  OUTLINED_FUNCTION_3_24(v5, xmmword_266DAE4A0);
  v6 = 0;
  if (v2)
  {
    v6 = sub_266DA914C();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_34_2(v6);
  OUTLINED_FUNCTION_12_12();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_28_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_10(v8);
  OUTLINED_FUNCTION_14_14(22);
  OUTLINED_FUNCTION_102();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_266CB4404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB441C()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v2 = swift_allocObject();
  v0[6] = v2;
  OUTLINED_FUNCTION_3_24(v2, xmmword_266DB05D0);
  if (v1)
  {
    v3 = sub_266DA914C();
    v4 = v1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_32_3();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = v0[3];
  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;
  strcpy(&v2[5], "skeletonPerson");
  v2[5].n128_u8[15] = -18;
  v6 = 0;
  if (v5)
  {
    v6 = sub_266DA900C();
  }

  else
  {
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v7 = v0[4];
  v2[6].n128_u64[0] = v5;
  v2[7].n128_u64[1] = v6;
  v2[8].n128_u64[0] = 0xD000000000000010;
  v2[8].n128_u64[1] = 0x8000000266DC2700;
  v2[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5D0, &qword_266DB4298);
  v2[9].n128_u64[0] = v7;
  v12 = OUTLINED_FUNCTION_20_8(MEMORY[0x277D55C70]);

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_44_2(v8);
  *v9 = v10;
  v9[1] = sub_266CB45E8;

  return v12(0xD000000000000017, 0x8000000266DC26E0, v2);
}

uint64_t sub_266CB45E8()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_7();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_2_28();

    return v9(v8);
  }
}

uint64_t sub_266CB4710()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CB476C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB4814;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(24);

  return v4(v3);
}

uint64_t sub_266CB4814()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_266CB4908()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(38);

  return v4(v3);
}

uint64_t sub_266CB49B0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(39);

  return v4(v3);
}

uint64_t sub_266CB4A58(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB4A6C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_36_5(v3);
  v5 = OUTLINED_FUNCTION_35_3(v4);
  OUTLINED_FUNCTION_9_10(v5, xmmword_266DAE4A0);
  v6 = 0;
  if (v2)
  {
    v6 = sub_266DA900C();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_34_2(v6);
  OUTLINED_FUNCTION_12_12();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_28_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_10(v8);
  OUTLINED_FUNCTION_14_14(42);
  OUTLINED_FUNCTION_102();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_266CB4B54()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(37);

  return v4(v3);
}

uint64_t sub_266CB4BFC()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 96) = v5;
  *(v1 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v7);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266CB4CA0()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = swift_allocObject();
  *(v1 + 72) = v3;
  OUTLINED_FUNCTION_9_10(v3, xmmword_266DB4180);
  v4 = 0;
  if (v2)
  {
    v4 = sub_266DA900C();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x796669746F4E7369;
  *(v3 + 88) = 0xEA0000000000654DLL;
  v7 = MEMORY[0x277D839B0];
  *(v3 + 96) = v6;
  *(v3 + 120) = v7;
  *(v3 + 128) = 0x5472656767697274;
  *(v3 + 136) = 0xEB00000000657079;
  OUTLINED_FUNCTION_39_2(&qword_2800CA038, &unk_266DAFBF0, v5);
  v8 = sub_266DA919C();
  OUTLINED_FUNCTION_17_13(v8);
  v9 = *(v1 + 64);
  OUTLINED_FUNCTION_33_4();
  if (v10)
  {

    sub_266C3A088(v9, &qword_2800CA038, &unk_266DAFBF0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v11();
  }

  v12 = *(v1 + 56);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_26_6();
  *(v3 + 176) = v13;
  *(v3 + 184) = v14;
  sub_266C744CC(v15, v12, &qword_2800CA038, &unk_266DAFBF0);
  if (OUTLINED_FUNCTION_21_8() == 1)
  {
    sub_266C3A088(*(v1 + 56), &qword_2800CA038, &unk_266DAFBF0);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 192));
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v16();
  }

  v17 = *(v1 + 40);
  OUTLINED_FUNCTION_15_13();
  *(v3 + 224) = v18 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  *(v3 + 232) = 0xE700000000000000;
  v19 = 0;
  if (v17)
  {
    v19 = sub_266DA8F2C();
  }

  else
  {
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
  }

  *(v3 + 240) = v17;
  *(v3 + 264) = v19;
  OUTLINED_FUNCTION_12_12();
  v20 = swift_task_alloc();
  *(v1 + 80) = v20;
  *v20 = v1;
  v20[1] = sub_266CB4F58;
  OUTLINED_FUNCTION_31_3(37);
  OUTLINED_FUNCTION_102();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_266CB4F58()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_11_10();

    return v9(v8);
  }
}

uint64_t sub_266CB5094(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

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

unint64_t sub_266CB50E8(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_266CB5144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266CB5094(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_266CB5174@<X0>(unint64_t *a1@<X8>)
{
  result = sub_266CB50E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266CB51A0()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 16) = v5;
  *(v1 + 96) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v7);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266CB5244()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  v2 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  *(v3 + 16) = xmmword_266DB4180;
  *(v3 + 32) = 0x796669746F4E7369;
  *(v3 + 40) = 0xEA0000000000654DLL;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x646E65697266;
  *(v3 + 88) = 0xE600000000000000;
  if (v1)
  {
    sub_266DA900C();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v1;
  OUTLINED_FUNCTION_27_6();
  *(v3 + 120) = v5;
  *(v3 + 128) = v6;
  OUTLINED_FUNCTION_26_6();
  *(v3 + 136) = v7;
  OUTLINED_FUNCTION_39_2(&qword_2800CA038, &unk_266DAFBF0, v8);
  v9 = sub_266DA919C();
  OUTLINED_FUNCTION_17_13(v9);
  v10 = *(v0 + 64);
  OUTLINED_FUNCTION_33_4();
  if (v11)
  {

    sub_266C3A088(v10, &qword_2800CA038, &unk_266DAFBF0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v12();
  }

  v13 = *(v0 + 32);
  OUTLINED_FUNCTION_15_13();
  *(v3 + 176) = v14 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  *(v3 + 184) = 0xE700000000000000;
  v15 = 0;
  if (v13)
  {
    v15 = sub_266DA8F2C();
  }

  else
  {
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  v16 = *(v0 + 40);
  *(v3 + 192) = v13;
  *(v3 + 216) = v15;
  *(v3 + 224) = 0x72656767697274;
  *(v3 + 232) = 0xE700000000000000;
  OUTLINED_FUNCTION_39_2(&qword_2800CA038, &unk_266DAFBF0, v16);
  v17 = OUTLINED_FUNCTION_21_8();
  v18 = *(v0 + 56);
  if (v17 == 1)
  {

    sub_266C3A088(v18, &qword_2800CA038, &unk_266DAFBF0);
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
  }

  else
  {
    *(v3 + 264) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 240));
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v19();
  }

  OUTLINED_FUNCTION_12_4(MEMORY[0x277D55C68]);
  v20 = swift_task_alloc();
  *(v0 + 80) = v20;
  sub_266CB6124();
  *v20 = v0;
  v20[1] = sub_266CB5528;
  OUTLINED_FUNCTION_31_3(36);
  OUTLINED_FUNCTION_102();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_266CB5528()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_11_10();

    return v9(v8);
  }
}

uint64_t sub_266CB5664()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CB56D4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(53);

  return v4(v3);
}

uint64_t sub_266CB577C()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v4);
  v1[5] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266CB580C()
{
  v2 = v1[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_41_1(v3);
  v1[6] = v4;
  OUTLINED_FUNCTION_3_24(v4, xmmword_266DB05C0);
  v5 = 0;
  if (v2)
  {
    v5 = sub_266DA914C();
  }

  else
  {
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  v6 = v1[3];
  *(v4 + 48) = v2;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000018;
  *(v4 + 88) = 0x8000000266DC2510;
  OUTLINED_FUNCTION_39_2(&qword_2800CA038, &unk_266DAFBF0, v6);
  v7 = sub_266DA919C();
  OUTLINED_FUNCTION_17_13(v7);
  v8 = v1[5];
  OUTLINED_FUNCTION_33_4();
  if (v9)
  {

    sub_266C3A088(v8, &qword_2800CA038, &unk_266DAFBF0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v10();
  }

  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_44_2(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_38_4(v12);

  return v15(0xD00000000000002FLL, 0x8000000266DC2530, v4);
}

uint64_t sub_266CB59CC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(32);

  return v4(v3);
}

uint64_t sub_266CB5A74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB5A88()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_36_5(v3);
  v5 = OUTLINED_FUNCTION_35_3(v4);
  OUTLINED_FUNCTION_3_24(v5, xmmword_266DAE4A0);
  v6 = 0;
  if (v2)
  {
    v6 = sub_266DA914C();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_34_2(v6);
  OUTLINED_FUNCTION_12_12();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_28_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_10(v8);
  OUTLINED_FUNCTION_14_14(31);
  OUTLINED_FUNCTION_102();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_266CB5B70(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266CB5B88()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_36_5(v2);
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x8000000266DC24A0;
  *(v3 + 72) = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D55C70];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_1_30(v4);
  *(v0 + 24) = v3;
  *(v3 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_266CB5CA0;

  return v8(0xD00000000000001ELL, 0x8000000266DC2480, v3);
}

uint64_t sub_266CB5CA0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_7();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_2_28();

    return v9(v8);
  }
}

uint64_t sub_266CB5DC8()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266CB5E24(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_25_4();
  return sub_266CB5E74(v1, v2, v3);
}

uint64_t sub_266CB5E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_266DA926C();
  OUTLINED_FUNCTION_37_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v12 = OUTLINED_FUNCTION_4_3(v11);
  MEMORY[0x28223BE20](v12);
  sub_266C744CC(a1, &v16 - v13, &qword_2800C9C48, &unk_266DAEBA0);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_266DA91AC();
  (*(v7 + 8))(a2, v3);
  sub_266C3A088(a1, &qword_2800C9C48, &unk_266DAEBA0);
  return v14;
}

uint64_t sub_266CB5FEC(uint64_t a1, uint64_t a2)
{
  sub_266DA926C();
  OUTLINED_FUNCTION_37_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_266DA91BC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_266CB60EC()
{
  v0 = sub_266DA91DC();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

unint64_t sub_266CB6124()
{
  result = qword_2800CB5C8;
  if (!qword_2800CB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB5C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FindMyFriendCATsSimple.SetGeoFenceIntentLabelsDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266CB6258()
{
  result = qword_2800CB5E0;
  if (!qword_2800CB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB5E0);
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_3_24(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 7368801;
  result[2].n128_u64[1] = 0xE300000000000000;
  return result;
}

__n128 *OUTLINED_FUNCTION_9_10(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x646E65697266;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_12()
{
}

uint64_t OUTLINED_FUNCTION_17_13(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_8()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_5(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_39_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_266C744CC(a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t DeviceSpecificityLevel.description.getter(uint64_t a1)
{
  result = 0x614E656369766564;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E75;
      break;
    case 1:
      result = 0x6C43656369766564;
      break;
    case 2:
      result = 0x4E746375646F7270;
      break;
    case 3:
      return result;
    default:
      result = sub_266DAB1DC();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_266CB65EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_266CB662C(uint64_t result, int a2, int a3)
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

uint64_t sub_266CB6678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_266DAB17C();
  }
}

uint64_t sub_266CB66A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a5;
  v65 = a6;
  v63 = a3;
  v59 = a2;
  v10 = sub_266DA926C();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SetGeoFenceIntent();
  type metadata accessor for SetGeoFenceIntentResponse();
  sub_266DA796C();
  MyFriendCATsSimple = type metadata accessor for FindMyFriendCATsSimple(0);
  sub_266DA925C();
  v57 = MyFriendCATsSimple;
  v58 = v12;
  v14 = sub_266DA91CC();
  sub_266DA7E7C();
  swift_allocObject();
  v56 = sub_266DA7E6C();
  if (qword_2800C93F0 != -1)
  {
    swift_once();
  }

  sub_266DA78BC();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5E8, &qword_266DB46C0);
  sub_266DA791C();
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v67[3] = &unk_287867FA0;
  v67[4] = &off_287867FB0;
  sub_266C233D0(a1, v66);
  v16 = v63;
  sub_266C233D0(v63, &v71);
  sub_266C233D0(v67, &v68);
  v17 = swift_allocObject();
  sub_266C0B0D8(v66, v17 + 16);
  *(v17 + 56) = v14;
  sub_266C0B0D8(&v71, v17 + 64);
  sub_266C0B0D8(&v68, v17 + 104);

  __swift_destroy_boxed_opaque_existential_0(v67);
  v61 = v15;
  v55 = a7;
  sub_266DA794C();
  v62 = a4;
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  v18 = __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  v72 = &unk_287867FA0;
  v73 = &off_287867FB0;
  v69 = &type metadata for DisambiguationTask.Parser;
  v70 = &off_2878672C8;
  *&v68 = swift_allocObject();
  sub_266C6F124(v18, v68 + 16);
  swift_allocObject();
  v19 = sub_266DA7E6C();
  sub_266C233D0(a1, v67);
  sub_266D9DAC0(&v67[6]);
  v20 = v16;
  sub_266C233D0(v16, &v67[11]);
  sub_266C233D0(&v71, &v67[16]);
  sub_266C233D0(&v68, &v67[21]);
  v67[5] = v14;
  v67[26] = v19;
  v60 = a1;
  sub_266C233D0(a1, v66);

  sub_266D9DADC(&v66[48]);
  sub_266C233D0(v16, &v66[88]);
  sub_266C233D0(&v71, &v66[128]);
  sub_266C233D0(&v68, &v66[168]);
  *&v66[40] = v14;
  *&v66[208] = v19;
  v21 = swift_allocObject();
  memcpy((v21 + 16), v67, 0xD8uLL);
  memcpy((v21 + 232), v66, 0xD8uLL);

  __swift_destroy_boxed_opaque_existential_0(&v71);
  __swift_destroy_boxed_opaque_existential_0(&v68);
  sub_266DA795C();
  sub_266C233D0(a1, v67);
  v22 = sub_266CAB510(0);
  v24 = v23;
  v25 = sub_266CAB510(1);
  v27 = v26;
  v28 = sub_266CAB510(4);
  v30 = v29;
  v67[9] = &type metadata for BaseNLContextProvider;
  v67[10] = &off_287861AA0;
  v67[6] = swift_allocObject();
  OUTLINED_FUNCTION_0_41();
  v31[2] = v32;
  v31[3] = 0xE700000000000000;
  v31[4] = v22;
  v31[5] = v24;
  v31[6] = v25;
  v31[7] = v27;
  v31[8] = v28;
  v31[9] = v30;
  sub_266C233D0(v20, &v67[11]);
  sub_266C233D0(v62, &v67[16]);
  sub_266C233D0(v64, &v67[21]);
  v67[5] = v14;
  v67[26] = v56;
  v33 = v60;
  sub_266C233D0(v60, v66);
  v34 = swift_allocObject();
  sub_266C0B0D8(v66, v34 + 16);
  sub_266CB75BC();
  sub_266DA78EC();

  sub_266DA792C();
  sub_266C233D0(v33, v66);
  sub_266DA925C();
  v35 = sub_266DA91CC();
  v36 = sub_266CAB510(0);
  v38 = v37;
  v39 = sub_266CAB510(1);
  v41 = v40;
  v42 = sub_266CAB510(4);
  v44 = v43;
  *&v66[80] = &type metadata for BaseNLContextProvider;
  *&v66[88] = &off_287861AA0;
  *&v66[56] = swift_allocObject();
  OUTLINED_FUNCTION_0_41();
  v45[2] = v46;
  v45[3] = 0xE700000000000000;
  v45[4] = v36;
  v45[5] = v38;
  v45[6] = v39;
  v45[7] = v41;
  v45[8] = v42;
  v45[9] = v44;
  v47 = v63;
  sub_266C233D0(v63, &v66[96]);
  v48 = v62;
  sub_266C233D0(v62, &v66[136]);
  swift_allocObject();
  v49 = sub_266DA7E6C();
  *&v66[40] = v59;
  *&v66[48] = v35;
  *&v66[176] = v49;
  sub_266CB7610();
  v50 = sub_266DA78AC();
  v52 = v51;
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  *(v53 + 24) = v52;
  sub_266DA790C();
  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_destroy_boxed_opaque_existential_0(v47);
  __swift_destroy_boxed_opaque_existential_0(v60);
  sub_266CB766C(v66);
  sub_266CB76C0(v67);
  __swift_destroy_boxed_opaque_existential_0(v65);
  return __swift_destroy_boxed_opaque_existential_0(v48);
}

uint64_t sub_266CB6D7C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB440, &qword_266DB46E0);
  v3 = sub_266DA7FCC();
  if ([v3 action] == 1 && (v4 = objc_msgSend(v3, sel_notifyMe)) != 0 && (v5 = v4, v6 = objc_msgSend(v4, sel_BOOLValue), v5, v6))
  {
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    v9 = sub_266C6A310(v7, v8) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v10 = sub_266DA94AC();
  __swift_project_value_buffer(v10, &unk_28156F1E0);
  v11 = sub_266DA948C();
  v12 = sub_266DAAB0C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9 & 1;
    _os_log_impl(&dword_266C08000, v11, v12, "Should confirm intent: %{BOOL}d", v13, 8u);
    MEMORY[0x26D5F2480](v13, -1, -1);
  }

  return v9 & 1;
}

uint64_t sub_266CB6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v35 = a1;
  v10 = sub_266DA7F4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  sub_266DA80EC();
  v14 = sub_266DA7F3C();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  sub_266DA7E7C();
  swift_allocObject();
  v17 = sub_266DA7E6C();

  v18 = sub_266D31B14(v14, v16);
  if (v18 == 2)
  {
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_266DAADFC();
    MEMORY[0x26D5F1170](0xD00000000000003CLL, 0x8000000266DC29D0);
    MEMORY[0x26D5F1170](v14, v16);
    result = sub_266DAAF1C();
    __break(1u);
  }

  else
  {
    v19 = v18;

    sub_266C233D0(a3, v36);
    if (v19)
    {
      sub_266C233D0(a5, v38);
      sub_266C233D0(v34, v39);
      v37 = a4;
      v40[0] = v17;
      sub_266CB7768();

      v20 = sub_266DA78FC();
      sub_266CB77BC(v36);
    }

    else
    {
      v21 = sub_266CAB510(0);
      v23 = v22;
      v24 = sub_266CAB510(1);
      v26 = v25;
      v27 = sub_266CAB510(4);
      v29 = v28;
      v38[3] = &type metadata for BaseNLContextProvider;
      v38[4] = &off_287861AA0;
      v30 = swift_allocObject();
      v38[0] = v30;
      v30[2] = 0x746361746E6F63;
      v30[3] = 0xE700000000000000;
      v30[4] = v21;
      v30[5] = v23;
      v30[6] = v24;
      v30[7] = v26;
      v30[8] = v27;
      v30[9] = v29;
      sub_266C233D0(a5, v39);
      sub_266C233D0(v34, v40);
      v37 = a4;
      v40[5] = v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB620, &qword_266DB4440);
      sub_266C230E8(&qword_2800CB628, &qword_2800CB620, &qword_266DB4440, &unk_266DB3070);
      v20 = sub_266DA78FC();
      sub_266CB7810(v36);
    }

    v31 = v20(v35, a2);

    return v31;
  }

  return result;
}

uint64_t sub_266CB7304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a3;
  v6 = sub_266DA7F4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  sub_266DA80EC();
  v10 = sub_266DA7F3C();
  v12 = v11;
  v13 = *(v7 + 8);
  v13(v9, v6);
  v14 = sub_266D31B14(v10, v12);
  if (v14 == 2)
  {
    v21[2] = 0;
    v21[3] = 0xE000000000000000;
    sub_266DAADFC();
    MEMORY[0x26D5F1170](0xD00000000000003FLL, 0x8000000266DC2990);
    sub_266DA80EC();
    v18 = sub_266DA7F3C();
    v20 = v19;
    v13(v9, v6);
    MEMORY[0x26D5F1170](v18, v20);

    result = sub_266DAAF1C();
    __break(1u);
  }

  else
  {
    if (v14)
    {
      sub_266CB7714();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB608, &qword_266DB4438);
      sub_266C230E8(&qword_2800CB610, &qword_2800CB608, &qword_266DB4438, &unk_266DB50C0);
    }

    v15 = sub_266DA78DC();
    v16 = v15(a1, a2);

    return v16;
  }

  return result;
}

unint64_t sub_266CB75BC()
{
  result = qword_2800CB5F0;
  if (!qword_2800CB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB5F0);
  }

  return result;
}

unint64_t sub_266CB7610()
{
  result = qword_2800CB5F8;
  if (!qword_2800CB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB5F8);
  }

  return result;
}

unint64_t sub_266CB7714()
{
  result = qword_2800CB600;
  if (!qword_2800CB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB600);
  }

  return result;
}

unint64_t sub_266CB7768()
{
  result = qword_2800CB618;
  if (!qword_2800CB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB618);
  }

  return result;
}

uint64_t sub_266CB7810(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB620, &qword_266DB4440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for TimeoutErrors(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266CB793C()
{
  result = qword_2800CB630;
  if (!qword_2800CB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB630);
  }

  return result;
}

void sub_266CB7990()
{
  OUTLINED_FUNCTION_17_14();
  if (v1)
  {
    OUTLINED_FUNCTION_15_14();
    if (!sub_266DAAD5C())
    {
      return;
    }
  }

  else if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5F1780](0, v0);
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    if (v2)
    {
      v3 = *(v0 + 32);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_266CB7A48()
{
  v3 = OUTLINED_FUNCTION_13_9();
  v5 = v4(v3);
  v6 = v5;
  if (v2)
  {
    (*(*(v5 - 8) + 16))(v0, v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v7, 1, v6);
}

double sub_266CB7AE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_266C233D0(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_266CB7B0C()
{
  v3 = OUTLINED_FUNCTION_13_9();
  v4 = type metadata accessor for Location(v3);
  v5 = v4;
  if (v2)
  {
    sub_266C24F5C(v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v0);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v6, 1, v5);
}

uint64_t sub_266CB7BA4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_266DAA88C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266CB7BEC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

uint64_t (*sub_266CB7C40(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = v6[1];
      v28[0] = *v6;
      v28[1] = v7;
      v8 = v6[3];
      v10 = *v6;
      v9 = v6[1];
      v28[2] = v6[2];
      v28[3] = v8;
      v24 = v10;
      v25 = v9;
      v11 = v6[3];
      v26 = v6[2];
      v27 = v11;
      sub_266C24964(v28, &v20);
      v12 = v4(&v24);
      if (v3)
      {
        break;
      }

      result = OUTLINED_FUNCTION_7_17(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      v6 += 4;
      if (!--v5)
      {
        return result;
      }
    }

    return OUTLINED_FUNCTION_7_17(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  }

  return result;
}

void (*sub_266CB7CEC(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = v3;
  v5 = result;
  v6 = (a3 + 40);
  v7 = *(a3 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = v6 + 6;
    v9 = v6[4];
    v11 = *v6;
    v10 = v6[1];
    v12[0] = *(v6 - 1);
    v12[1] = v11;
    v12[2] = v10;
    v13 = *(v6 + 1);
    v14 = v9;

    v5(v12);

    v6 = v8;
  }

  while (!v4);
  return result;
}

void sub_266CB7DC4(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v6 = sub_266C36780(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D5F1780](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v10 = v8;
    a1(&v10);

    if (v3)
    {
      return;
    }
  }
}

id sub_266CB7E9C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_12_13(a1) deviceOwner];
  *v1 = result;
  return result;
}

void *sub_266CB7EE8(unint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v29 = MEMORY[0x277D84F98];
  v3 = sub_266C36780(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5F1780](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v6 = v5;
    v7 = [v6 deviceOwner];
    if (v7)
    {
      v8 = v7;
      v9 = [v8 contactIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = sub_266DAA70C();
        v13 = v12;

        goto LABEL_13;
      }
    }

    else
    {
    }

    v11 = 0;
    v13 = 0;
LABEL_13:
    v15 = sub_266D99E68(v11);
    v16 = v2[2];
    v17 = (v14 & 1) == 0;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_28;
    }

    v18 = v14;
    if (v2[3] < v16 + v17)
    {
      sub_266D2EA80();
      v2 = v29;
      v19 = sub_266D99E68(v11);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_30;
      }

      v15 = v19;
    }

    if (v18)
    {

      v22 = (v2[7] + 8 * v15);
      MEMORY[0x26D5F1270](v21);
      if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      sub_266DAA96C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_266DAE3B0;
      *(v23 + 32) = v6;
      v2[(v15 >> 6) + 8] |= 1 << v15;
      v24 = (v2[6] + 16 * v15);
      *v24 = v11;
      v24[1] = v13;
      *(v2[7] + 8 * v15) = v23;
      v25 = v2[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_29;
      }

      v2[2] = v27;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  result = sub_266DAB1FC();
  __break(1u);
  return result;
}

void *sub_266CB8198(unint64_t a1, SEL *a2)
{
  v3 = MEMORY[0x277D84F98];
  v29 = MEMORY[0x277D84F98];
  v4 = sub_266C36780(a1);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return v3;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D5F1780](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = [v6 *a2];
    if (v8)
    {
      v9 = v8;
      v10 = sub_266DAA70C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v14 = sub_266D99E68(v10);
    v15 = v3[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_25;
    }

    v17 = v13;
    if (v3[3] < v15 + v16)
    {
      sub_266D2EA80();
      v3 = v29;
      v18 = sub_266D99E68(v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

      v14 = v18;
    }

    if (v17)
    {

      v21 = (v3[7] + 8 * v14);
      MEMORY[0x26D5F1270](v20);
      if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      sub_266DAA96C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_266DAE3B0;
      *(v22 + 32) = v7;
      v3[(v14 >> 6) + 8] |= 1 << v14;
      v23 = (v3[6] + 16 * v14);
      *v23 = v10;
      v23[1] = v12;
      *(v3[7] + 8 * v14) = v22;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      v3[2] = v26;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  result = sub_266DAB1FC();
  __break(1u);
  return result;
}

void Array<A>.hasItems.getter(unint64_t a1)
{
  v2 = sub_266C36780(a1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_23_8();
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = OUTLINED_FUNCTION_25_5();
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = sub_266CC7C44();

    v3 = v4 + 1;
  }

  while ((v7 & 1) == 0);
}

void sub_266CB84C8(uint64_t a1)
{
  OUTLINED_FUNCTION_12_13(a1);
  sub_266CB7990();
  *v1 = v2;
}

uint64_t Array<A>.hasMultipleDevicesAllNearby.getter()
{
  OUTLINED_FUNCTION_17_14();
  if (v1)
  {
    OUTLINED_FUNCTION_15_14();
    v2 = sub_266DAAD5C();
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 2)
  {
    v4 = 0;
  }

  else
  {
    Array<A>.hasNonNearbyDevices.getter(v0);
    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void Array<A>.hasSameDeviceName.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_25();
  v2 = v1;
  v3 = sub_266C3A14C();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_6_21(v3, v3 & ~(v3 >> 63));
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_23_8();
        }

        else
        {
          v5 = OUTLINED_FUNCTION_25_5();
        }

        v6 = v5;
        v7 = [v6 deviceName];
        if (v7)
        {
          v8 = v7;
          sub_266DAA70C();
        }

        else
        {
        }

        OUTLINED_FUNCTION_10_11();
        if (v10)
        {
          OUTLINED_FUNCTION_9_11(v9);
        }

        OUTLINED_FUNCTION_16_12();
      }
    }

    __break(1u);
  }

  else
  {
    sub_266CB8718(MEMORY[0x277D84F90]);

    OUTLINED_FUNCTION_4_21();
  }
}

BOOL sub_266CB86A4(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(void))
{
  a2(a1);
  v4 = a3();

  return v4 == 1;
}

void sub_266CB8718(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  v7 = sub_266CB9E58();
  MEMORY[0x26D5F13A0](v5, v6, v7);
  OUTLINED_FUNCTION_20_9();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;

    v16 = OUTLINED_FUNCTION_19_9(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
    sub_266C51408(v16);

    v3 += 16;
  }

  __break(1u);
}

uint64_t sub_266CB87D8(uint64_t *a1)
{
  result = MEMORY[0x26D5F13A0](0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[5];
  v13 = a1[3];
  v12 = a1[7];
  v23 = result;
  v24 = v4;
LABEL_2:
  v7 = *(v4 + 16);
  v8 = v4 + 32 + 40 * v3;
  for (i = v3; ; ++i)
  {
    if (v7 == i)
    {
      v19 = 0u;
      v20 = 0u;
      v21 = 0;
LABEL_10:
      v17[0] = v19;
      v17[1] = v20;
      v18 = v21;
      if (!*(&v20 + 1))
      {
        sub_266CB9ED4(&v24);

        return v23;
      }

      sub_266C0B0D8(v17, v16);
      v13(&v14, v16);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v10 = v14;
      v11 = v15;
      v22[0] = v14;
      v22[1] = v15;
      if (v6(v22))
      {
        *&v19 = v10;
        *(&v19 + 1) = v11;
        v12(v17, &v19);

        sub_266C51548(&v19);
      }

      v3 = v7;
      goto LABEL_2;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v4 + 16))
    {
      goto LABEL_16;
    }

    sub_266C233D0(v8, v17);
    if (v5(v17))
    {
      sub_266C0B0D8(v17, &v19);
      v7 = i + 1;
      goto LABEL_10;
    }

    result = __swift_destroy_boxed_opaque_existential_0(v17);
    v8 += 40;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_266CB89BC(uint64_t a1)
{
  MEMORY[0x26D5F13A0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_20_9();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;

    v13 = OUTLINED_FUNCTION_19_9(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
    sub_266C51548(v13);

    v3 += 16;
  }

  __break(1u);
}

uint64_t sub_266CB8A7C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB638);
  v1 = __swift_project_value_buffer(v0, qword_2800CB638);
  if (qword_2800C90F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E6178);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void Array<A>.hasMultipleItems.getter(unint64_t a1)
{
  v2 = sub_266C36780(a1);
  v3 = a1 & 0xC000000000000001;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = a1 + 32;

  v6 = 0;
  while (1)
  {
    if (v2 == v6)
    {
      goto LABEL_12;
    }

    if (v3)
    {
      v7 = MEMORY[0x26D5F1780](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = sub_266CC7C44();

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      goto LABEL_35;
    }
  }

  v2 = v6;
LABEL_12:
  v11 = sub_266C36780(a1);
  v12 = v11;
  if (v11 >= v2)
  {
    if (v2 != v11)
    {
      v21 = v11;
      v22 = 1;
      v12 = v2;
      goto LABEL_16;
    }

LABEL_30:

    return;
  }

  v21 = v2;
  v22 = -1;
LABEL_16:
  v13 = sub_266C36780(a1);
  v20 = a1;
  v14 = sub_266C36780(a1);
  v15 = 0;
  while (2)
  {
    v10 = __OFADD__(v15, v22);
    v15 += v22;
    if (v10)
    {
      goto LABEL_36;
    }

    if (v12 != v13)
    {
      while (1)
      {
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (v16 == v14)
        {
          break;
        }

        if (v3)
        {
          v17 = MEMORY[0x26D5F1780](v12 + 1, v20);
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          if (v16 >= *(v4 + 16))
          {
            goto LABEL_33;
          }

          v17 = *(v5 + 8 * v16);
        }

        v18 = v17;
        v19 = sub_266CC7C44();

        ++v12;
        if (v19)
        {
          goto LABEL_29;
        }
      }

      v16 = v14;
LABEL_29:
      v12 = v16;
      if (v16 != v21)
      {
        continue;
      }

      goto LABEL_30;
    }

    break;
  }

LABEL_37:
  __break(1u);
}

void Array<A>.hasMultipleAirPods.getter(unint64_t a1)
{
  v2 = sub_266C36780(a1);
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = a1 + 32;
  while (1)
  {
    if (v2 == v3)
    {
      goto LABEL_12;
    }

    if (v4)
    {
      v7 = MEMORY[0x26D5F1780](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v7 = *(a1 + 8 * v3 + 32);
    }

    v8 = v7;
    v9 = sub_266CC7DA4();

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v3++, 1);
    if (v10)
    {
      goto LABEL_35;
    }
  }

  v2 = v3;
LABEL_12:
  v11 = sub_266C36780(a1);
  v12 = v11;
  if (v11 >= v2)
  {
    if (v2 == v11)
    {
      return;
    }

    v21 = v11;
    v22 = 1;
    v12 = v2;
  }

  else
  {
    v21 = v2;
    v22 = -1;
  }

  v13 = sub_266C36780(a1);
  v20 = a1;
  v14 = sub_266C36780(a1);
  v15 = 0;
  while (2)
  {
    v10 = __OFADD__(v15, v22);
    v15 += v22;
    if (v10)
    {
      goto LABEL_36;
    }

    if (v12 == v13)
    {
LABEL_37:
      __break(1u);
      return;
    }

    while (1)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v16 == v14)
      {
        break;
      }

      if (v4)
      {
        v17 = MEMORY[0x26D5F1780](v12 + 1, v20);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        if (v16 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v17 = *(v6 + 8 * v16);
      }

      v18 = v17;
      v19 = sub_266CC7DA4();

      ++v12;
      if (v19)
      {
        goto LABEL_29;
      }
    }

    v16 = v14;
LABEL_29:
    v12 = v16;
    if (v16 != v21)
    {
      continue;
    }

    break;
  }
}

void Array<A>.hasNonNearbyDevices.getter(unint64_t a1)
{
  v2 = sub_266C36780(a1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D5F1780](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = [v5 deviceLocality];

    v3 = v4 + 1;
  }

  while (v7 == 1);
}

void Array<A>.hasSingleRemoteDevices.getter()
{
  OUTLINED_FUNCTION_17_14();
  if (v1)
  {
    OUTLINED_FUNCTION_15_14();
    if (sub_266DAAD5C() != 1 || !sub_266DAAD5C())
    {
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    if (v2 != 1)
    {
      return;
    }
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D5F1780](0, v0);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_5_20();
  if (v3)
  {
    v4 = *(v0 + 32);
LABEL_6:
    v5 = v4;
    [v4 deviceLocality];

    return;
  }

  __break(1u);
}

void Array<A>.hasSingleLocationUnknownDevices.getter()
{
  OUTLINED_FUNCTION_17_14();
  if (v1)
  {
    OUTLINED_FUNCTION_15_14();
    if (sub_266DAAD5C() != 1 || !sub_266DAAD5C())
    {
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    if (v2 != 1)
    {
      return;
    }
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D5F1780](0, v0);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_5_20();
  if (v3)
  {
    v4 = *(v0 + 32);
LABEL_6:
    v5 = v4;
    [v4 deviceLocality];

    return;
  }

  __break(1u);
}