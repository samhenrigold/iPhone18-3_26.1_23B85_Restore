void sub_266578BA0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_0();
  v118 = v4;
  v121 = v2;
  v120 = *(v5 + 80);
  OUTLINED_FUNCTION_17_2();
  v119 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v118 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D660, &qword_26666F980);
  OUTLINED_FUNCTION_17_2();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v118 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v118 - v20;
  v22 = *(v12 + 16);
  v22(&v118 - v20, a1, v10);
  v23 = OUTLINED_FUNCTION_23_2();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x277D5BCA0])
  {
    v26 = OUTLINED_FUNCTION_23_2();
    v27(v26);
    v28 = *(v21 + 1);
    v29 = *(v21 + 2);

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v30 = sub_26666C168();
    __swift_project_value_buffer(v30, qword_28156D7E8);
    v31 = v29;
    v32 = sub_26666C148();
    v33 = sub_26666C618();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_21();
      v35 = OUTLINED_FUNCTION_13_0();
      v123 = v35;
      *v34 = 136315138;
      v122 = sub_26662571C(v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D668, &qword_26666F988);
      v36 = sub_26666C318();
      v38 = sub_2665BFC90(v36, v37, &v123);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_266549000, v32, v33, "[FSEAAFlow] Find events flow pre-filtered events %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_4_1();
    }

    v40 = v119;
    v39 = v120;
    (*(v119 + 16))(v9, v121 + *(*v121 + 96), v120);
    v41 = [v31 events];
    if (v41)
    {
      v42 = v41;
      sub_26656CC50();
      v43 = sub_26666C498();
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
    }

    v69 = (*(*(v118 + 88) + 16))(v43, v39);

    (*(v40 + 8))(v9, v39);
    if (!sub_2665C485C())
    {

      v84 = sub_26666C148();
      v85 = sub_26666C618();
      if (OUTLINED_FUNCTION_7_1(v85))
      {
        v86 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_24_3(v86);
        OUTLINED_FUNCTION_2_2();
        _os_log_impl(v87, v88, v89, v90, v91, 2u);
        OUTLINED_FUNCTION_11_6();
      }

      v80 = v28;
      v81 = v28;
      v82 = 0;
      v83 = 0;
      goto LABEL_35;
    }

    v70 = sub_2665C485C();
    v71 = sub_26666C148();
    v72 = sub_26666C618();
    v73 = OUTLINED_FUNCTION_7_1(v72);
    if (v70 >= 2)
    {
      if (v73)
      {
        v74 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_24_3(v74);
        OUTLINED_FUNCTION_2_2();
        _os_log_impl(v75, v76, v77, v78, v79, 2u);
        OUTLINED_FUNCTION_11_6();
      }

      v80 = v28;
      v81 = v69;
      v82 = v28;
      v83 = 1;
LABEL_35:
      sub_26657731C(v81, v82, v83);

      return;
    }

    if (v73)
    {
      v92 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v92);
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      OUTLINED_FUNCTION_11_6();
    }

    sub_2665C4864();
    if ((v69 & 0xC000000000000001) != 0)
    {
      v98 = MEMORY[0x266788B60](0, v69);
    }

    else
    {
      v98 = *(v69 + 32);
    }

    v99 = v98;

    v100 = v28;
    sub_26657731C(v99, v28, 2);
  }

  else if (v25 == *MEMORY[0x277D5BC98])
  {
    v44 = OUTLINED_FUNCTION_23_2();
    v45(v44);
    v46 = *v21;
    v47 = v21[8];
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v48 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v48, qword_28156D7E8);
    v49 = v46;
    v50 = sub_26666C148();
    v51 = sub_26666C5F8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v52 = 136315394;
      if (v47)
      {
        v53 = 0x64656C646E6168;
      }

      else
      {
        v53 = 0x656C646E61686E75;
      }

      if (v47)
      {
        v54 = 0xE700000000000000;
      }

      else
      {
        v54 = 0xE900000000000064;
      }

      v55 = sub_2665BFC90(v53, v54, &v123);

      *(v52 + 4) = v55;
      OUTLINED_FUNCTION_48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
      v56 = sub_26666C318();
      v58 = sub_2665BFC90(v56, v57, &v123);

      *(v52 + 14) = v58;
      OUTLINED_FUNCTION_47(&dword_266549000, v59, v60, "[FSEAAFlow] Find events flow ended in a %s error: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v61 = v46;
    sub_26657731C(v46, v47, 3);
  }

  else if (v25 == *MEMORY[0x277D5BCA8])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v62 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v62, qword_28156D7E8);
    v63 = sub_26666C148();
    v64 = sub_26666C618();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v65);
      _os_log_impl(&dword_266549000, v63, v64, "[FSEAAFlow] User cancelled in find events flow", v21, 2u);
      OUTLINED_FUNCTION_11_6();
    }

    OUTLINED_FUNCTION_44();
    sub_26657731C(v66, v67, v68);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v101 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v101, qword_28156D7E8);
    v22(v19, a1, v10);
    v102 = sub_26666C148();
    v103 = sub_26666C608();
    if (OUTLINED_FUNCTION_7_2(v103))
    {
      v104 = OUTLINED_FUNCTION_21();
      v120 = OUTLINED_FUNCTION_13_0();
      v123 = v120;
      *v104 = 136315138;
      v22(v16, v19, v10);
      v105 = sub_26666C318();
      v107 = v106;
      LODWORD(v119) = v103;
      v108 = OUTLINED_FUNCTION_39();
      v103(v108);
      v109 = sub_2665BFC90(v105, v107, &v123);

      *(v104 + 4) = v109;
      _os_log_impl(&dword_266549000, v102, v119, "[FSEAAFlow] Unhandled case on rchResult %s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v120);
      OUTLINED_FUNCTION_9_5();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      v110 = OUTLINED_FUNCTION_39();
      v103(v110);
    }

    v111 = sub_26656CBFC();
    v112 = OUTLINED_FUNCTION_49(&type metadata for CommonError, v111);
    OUTLINED_FUNCTION_22_0(v112, v113);
    sub_26657731C(v114, v115, v116);
    v117 = OUTLINED_FUNCTION_23_2();
    v103(v117);
  }
}

void sub_2665794E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D648, &unk_26666F970);
  OUTLINED_FUNCTION_17_2();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v99 - v14;
  v16 = *(v9 + 16);
  v16(&v99 - v14, a1, v7);
  v17 = OUTLINED_FUNCTION_35_0();
  v19 = v18(v17);
  if (v19 == *MEMORY[0x277D5BC38])
  {
    v102 = v4;
    v20 = OUTLINED_FUNCTION_35_0();
    v21(v20);
    v22 = *v15;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v23 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v23, qword_28156D7E8);
    v24 = v22;
    v25 = sub_26666C148();
    v26 = sub_26666C618();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_21();
      v28 = OUTLINED_FUNCTION_13_0();
      v103 = v28;
      *v27 = 136315138;
      v29 = v24;
      v30 = [v29 description];
      v31 = sub_26666C308();
      v33 = v32;

      v34 = sub_2665BFC90(v31, v33, &v103);

      *(v27 + 4) = v34;
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_9_5();
    }

    v40 = v24;
    v41 = a3;
    v42 = OUTLINED_FUNCTION_23_2();
    sub_26657731C(v42, v43, 2);

    return;
  }

  if (v19 == *MEMORY[0x277D5BC30])
  {
    v44 = OUTLINED_FUNCTION_35_0();
    v45(v44);
    v46 = *v15;
    v47 = v15[8];
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v48 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v48, qword_28156D7E8);
    v49 = v46;
    v50 = sub_26666C148();
    v51 = sub_26666C5F8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v52 = 136315394;
      if (v47)
      {
        v53 = 0x64656C646E6168;
      }

      else
      {
        v53 = 0x656C646E61686E75;
      }

      if (v47)
      {
        v54 = 0xE700000000000000;
      }

      else
      {
        v54 = 0xE900000000000064;
      }

      v55 = sub_2665BFC90(v53, v54, &v103);

      *(v52 + 4) = v55;
      OUTLINED_FUNCTION_48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
      v56 = sub_26666C318();
      v58 = sub_2665BFC90(v56, v57, &v103);

      *(v52 + 14) = v58;
      OUTLINED_FUNCTION_47(&dword_266549000, v59, v60, "[FSEAAFlow] Disambiguate flow ended in a %s error: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v61 = v46;
    sub_26657731C(v46, v47, 3);

    return;
  }

  if (v19 == *MEMORY[0x277D5BC40])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v62 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v62, qword_28156D7E8);
    v63 = sub_26666C148();
    v64 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v64))
    {
      v65 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v65);
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      OUTLINED_FUNCTION_11_6();
    }

    OUTLINED_FUNCTION_44();
LABEL_31:
    sub_26657731C(v71, v72, v73);
    return;
  }

  if (v19 == *MEMORY[0x277D5BC28])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v74 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v74, qword_28156D7E8);
    v75 = sub_26666C148();
    v76 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v76))
    {
      v77 = OUTLINED_FUNCTION_20();
      *v77 = 0;
      _os_log_impl(&dword_266549000, v75, v76, "[FSEAAFlow] Disambiguate flow ended as unanswered, reprompting", v77, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v78 = a3;

    v72 = a3;
    v73 = 1;
    goto LABEL_31;
  }

  v102 = v4;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v79 = sub_26666C168();
  __swift_project_value_buffer(v79, qword_28156D7E8);
  v16(v13, a1, v7);
  v80 = sub_26666C148();
  v81 = sub_26666C608();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = OUTLINED_FUNCTION_21();
    v100 = v82;
    v101 = OUTLINED_FUNCTION_13_0();
    v103 = v101;
    *v82 = 136315138;
    sub_26657BBD4();
    sub_26666CAA8();
    v83 = *(v9 + 8);
    v84 = OUTLINED_FUNCTION_43();
    v83(v84);
    v85 = OUTLINED_FUNCTION_25();
    v88 = sub_2665BFC90(v85, v86, v87);

    v89 = v100;
    *(v100 + 1) = v88;
    v90 = v83;
    _os_log_impl(&dword_266549000, v80, v81, "[FSEAAFlow] Unhandled case on prompt result %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v101);
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v90 = *(v9 + 8);
    v91 = OUTLINED_FUNCTION_43();
    v90(v91);
  }

  v92 = sub_26656CBFC();
  v93 = OUTLINED_FUNCTION_49(&type metadata for CommonError, v92);
  OUTLINED_FUNCTION_22_0(v93, v94);
  sub_26657731C(v95, v96, v97);
  v98 = OUTLINED_FUNCTION_35_0();
  v90(v98);
}

unint64_t sub_266579BF4(uint64_t a1, uint64_t a2, char a3)
{
  result = 0x726F467964616572;
  switch(a3)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0x726F727265;
      break;
    case 4:
      result = 0x696C616974696E69;
      switch(a1)
      {
        case 1:
          result = 0xD000000000000018;
          break;
        case 2:
          result = 0xD00000000000001CLL;
          break;
        case 3:
          result = 0x656C6C65636E6163;
          break;
        default:
          return result;
      }

      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_266579D28(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_0();
  (*(*(*(v4 + 80) - 8) + 8))(v2 + *(v3 + 96));
  OUTLINED_FUNCTION_15_4();
  __swift_destroy_boxed_opaque_existential_1((v2 + *(v5 + 104)));
  OUTLINED_FUNCTION_15_4();
  sub_26657BCCC(*(v2 + *(v6 + 112)), *(v2 + *(v6 + 112) + 8), *(v2 + *(v6 + 112) + 16));
  return v2;
}

uint64_t sub_266579DCC(uint64_t a1, uint64_t a2)
{
  sub_266579D28(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_266579E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents28FindSingleEventAndActionFlowC5StateOyx_G(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_266579EA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_266579EE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_266579F2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_266579F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26657A00C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26657A00C()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_5_1();
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_26657A11C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26656C894;

  return sub_2665773B0(a1);
}

uint64_t sub_26657A1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FindSingleEventAndActionFlow(0, *(a1 + 80), *(a1 + 88), a4);

  return sub_266669588();
}

uint64_t sub_26657A210()
{
  OUTLINED_FUNCTION_14();
  v3 = (**(v0 + 16) + ***(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26657A2F8;

  return v3();
}

uint64_t sub_26657A2F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_10();

  return v4(v3);
}

uint64_t sub_26657A3DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_12(sub_26657A3F8);
}

uint64_t sub_26657A3F8()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_32_2(v1);

  return v3(v2);
}

uint64_t sub_26657A4D8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_10();

  return v4(v3);
}

uint64_t sub_26657A5BC()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_266669708();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[13] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v6);
  v1[14] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v7);
  v1[15] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26657A730()
{
  OUTLINED_FUNCTION_11();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_10();
  }

  v10 = *(v0 + 72);

  sub_26655358C(v10 + 48, v0 + 16);
  v11 = *(v0 + 40);
  *(v0 + 144) = v11;
  *(v0 + 160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  v12 = type metadata accessor for Snippet(0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
  v19 = swift_task_alloc();
  *(v0 + 168) = v19;
  *v19 = v0;
  v19[1] = sub_26657A8A0;
  v20 = *(v0 + 64);

  return sub_26658E584(v20, v10 + 96);
}

uint64_t sub_26657A8A0()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v5[22] = v0;

  if (v0)
  {
    v9 = v5[17];
    sub_266557D74(v5[16], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v9, &unk_28007DE30, &unk_26666EAF0);
    v10 = sub_26657AE18;
  }

  else
  {
    v5[23] = v3;
    v10 = sub_26657A9E0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26657A9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_36_0();
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = OUTLINED_FUNCTION_25();
  sub_2665D5640(v27);
  OUTLINED_FUNCTION_25();
  sub_26656CFC4();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v14[24] = v28;
  *v28 = v29;
  v28[1] = sub_26657AB2C;
  v30 = v14[23];
  v31 = v14[17];
  v33 = v14[15];
  v32 = v14[16];
  v34 = v14[12];
  v35 = v14[7];

  return sub_2665643AC(v35, v31, v32, v30, 0, 0, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26657AB2C()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[23];
  v14 = v1[17];
  v3 = v1[15];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[12];
  v7 = v1[11];
  v8 = v1[10];
  v9 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;

  (*(v7 + 8))(v6, v8);
  sub_266557D74(v5, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v4, &unk_28007DE20, &unk_26666EAE0);
  sub_266557D74(v3, &qword_28007D338, &qword_26666EEB0);
  v11 = OUTLINED_FUNCTION_35_0();
  sub_266557D74(v11, v12, &unk_26666EAF0);
  sub_266557D74(v14, &unk_28007DE30, &unk_26666EAF0);

  return MEMORY[0x2822009F8](sub_26657AD88, 0, 0);
}

uint64_t sub_26657AD88()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_51();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_26657AE18()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_51();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_26657AEA8(uint64_t a1)
{
  inited = v1;
  if (qword_28156C150 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v4 = sub_26666C168();
  __swift_project_value_buffer(v4, qword_28156D7E8);

  v5 = sub_26666C148();
  v6 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v6))
  {
    v7 = OUTLINED_FUNCTION_21();
    *v7 = 134217984;
    *(v7 + 4) = sub_2665C485C();

    OUTLINED_FUNCTION_12_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_9_5();
  }

  else
  {
  }

  MEMORY[0x28223BE20](v13);
  v48[2] = inited;

  sub_2665EC78C(sub_26657BF8C, v48, a1);
  inited = v14;
  v15 = sub_2665C485C();
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v49 = MEMORY[0x277D84F90];
    while (v16 != v17)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x266788B60](v17, inited);
      }

      else
      {
        if (v17 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v18 = *(inited + 8 * v17 + 32);
      }

      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v19 = v18;
      v20 = sub_2665EC908(v19);

      if (v20)
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }

      ++v17;
    }

    v21 = v49;
    if (sub_2665C485C())
    {
    }

    else
    {

      v21 = inited;
    }

    v36 = sub_26666C148();
    v37 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134218240;
      *(v38 + 4) = sub_2665C485C();

      *(v38 + 12) = 2048;
      *(v38 + 14) = sub_2665C485C();

      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
      OUTLINED_FUNCTION_11_6();
    }

    else
    {
    }
  }

  else
  {

    v22 = sub_26666C148();
    v23 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_1(v23))
    {
      v24 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v24);
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_11_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D670, &qword_26666FA90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26666EED0;
    v30 = sub_2665C485C();
    v31 = 0;
    v32 = a1 & 0xC000000000000001;
    while (v30 != v31)
    {
      if (v32)
      {
        v33 = MEMORY[0x266788B60](v31, a1);
      }

      else
      {
        if (v31 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v33 = *(a1 + 8 * v31 + 32);
      }

      if (__OFADD__(v31, 1))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v34 = v33;
      v35 = sub_2665EC908(v34);

      if (v35)
      {
        goto LABEL_39;
      }

      ++v31;
    }

    if (v30)
    {
      sub_2665C4864();
      if (v32)
      {
        v44 = MEMORY[0x266788B60](0, a1);
      }

      else
      {
        v44 = *(a1 + 32);
      }

      v34 = v44;
    }

    else
    {
      v34 = 0;
    }

LABEL_39:
    *(inited + 32) = v34;
    v21 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
    v45 = *(inited + 32);
    if (v45)
    {
      v46 = v45;
      MEMORY[0x2667887C0]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      v21 = v49;
    }

    swift_setDeallocating();
    sub_266639174();
  }

  return v21;
}

id sub_26657B364(void **a1, uint64_t a2)
{
  v3 = sub_2665EF53C(*a1);
  v5 = v4;
  v6 = *__swift_project_boxed_opaque_existential_1((a2 + 136), *(a2 + 160));
  v11[3] = type metadata accessor for EventProvider();
  v11[4] = &off_287806290;
  v11[0] = v6;
  sub_26655358C(v11, v10);

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);

    v7 = sub_26655A8B4();
    v8 = sub_26665140C(v3, v5, v7);
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_1(v10);
    if (v8)
    {
      if (([v8 isBirthday] & 1) == 0)
      {
        v5 = [v8 isEditable];

        return v5;
      }
    }

    return 0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return v5;
}

uint64_t sub_26657B494(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_12(sub_26657B4B0);
}

uint64_t sub_26657B4B0()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_32_2(v1);

  return v3(v2);
}

uint64_t sub_26657B590(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_12(sub_26657B5A8);
}

uint64_t sub_26657B5A8()
{
  v21 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = *(v0 + 32);
  v2 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v2, qword_28156D7E8);
  v3 = v1;
  v4 = sub_26666C148();
  v5 = sub_26666C618();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = OUTLINED_FUNCTION_21();
    v8 = OUTLINED_FUNCTION_13_0();
    v20 = v8;
    *v7 = 136315138;
    *(v0 + 16) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
    v10 = sub_26666C318();
    v12 = sub_2665BFC90(v10, v11, &v20);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
  }

  sub_266669758();
  sub_266669748();
  OUTLINED_FUNCTION_24_1();

  return v18();
}

uint64_t sub_26657B738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26657BFB0;

  return sub_26657A1F8();
}

uint64_t sub_26657B7C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_26657A5BC();
}

uint64_t sub_26657B870(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26657BFB0;

  return sub_26657B494(a1, a2);
}

uint64_t sub_26657B914(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26657BFB0;

  return sub_26657A3DC(a1, a2);
}

uint64_t sub_26657B9B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26656CD98;

  return sub_26657B590(a1, a2);
}

uint64_t sub_26657BA58()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_26657BAF0;

  return sub_266666A24(v4, v2);
}

uint64_t sub_26657BAF0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_10();

  return v4(v3);
}

unint64_t sub_26657BBD4()
{
  result = qword_28007D650;
  if (!qword_28007D650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007D648, &unk_26666F970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D650);
  }

  return result;
}

uint64_t sub_26657BC38()
{
  OUTLINED_FUNCTION_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_2(v1);

  return sub_266578A24(v3, v4, v5);
}

void sub_26657BCCC(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
      goto LABEL_5;
    case 1:
      v3 = a2;

      goto LABEL_4;
    case 2:
      v3 = a2;

LABEL_4:
      a1 = v3;
LABEL_5:

      goto LABEL_7;
    case 3:

LABEL_7:

      break;
    default:
      return;
  }
}

uint64_t sub_26657BD94()
{
  OUTLINED_FUNCTION_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_2(v1);

  return sub_2665786E0(v3, v4, v5);
}

id sub_26657BE28(id result, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
      goto LABEL_5;
    case 1:
      v4 = a2;

      goto LABEL_4;
    case 2:
      v4 = a2;
      v3 = result;
LABEL_4:
      result = v4;
LABEL_5:

      goto LABEL_7;
    case 3:

LABEL_7:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26657BED0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26657BF10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_9_5()
{

  JUMPOUT(0x266789690);
}

void OUTLINED_FUNCTION_11_6()
{

  JUMPOUT(0x266789690);
}

double OUTLINED_FUNCTION_22_0(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;
  return result;
}

void OUTLINED_FUNCTION_47(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_48()
{
  *(v1 + 12) = 2080;
  *(v2 - 96) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_51()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

void sub_26657C1D0()
{
  OUTLINED_FUNCTION_28_0();
  v64 = v0;
  v2 = v1;
  v3 = sub_266669E88();
  OUTLINED_FUNCTION_3_0();
  v63 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v60 = v7 - v6;
  OUTLINED_FUNCTION_19_4();
  v66 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = sub_266669E18();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_5();
  v61 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v23 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v23, qword_28156D7E8);
  v24 = *(v16 + 16);
  v65 = v2;
  v58 = v24;
  v24(v22, v2, v14);
  v59 = v0;
  v25 = sub_26666C148();
  v26 = sub_26666C5E8();
  v27 = os_log_type_enabled(v25, v26);
  v62 = v16;
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_21();
    v57 = v3;
    v29 = v28;
    v55 = OUTLINED_FUNCTION_13_0();
    v67 = v55;
    *v29 = 136315138;
    OUTLINED_FUNCTION_4_10();
    sub_26657E950(v30, v31, MEMORY[0x277D5C120]);
    v32 = sub_26666CAA8();
    v56 = v13;
    v33 = v9;
    v35 = v34;
    v36 = OUTLINED_FUNCTION_20_3();
    (v16)(v36);
    v37 = sub_2665BFC90(v32, v35, &v67);
    v9 = v33;
    v13 = v56;

    *(v29 + 4) = v37;
    _os_log_impl(&dword_266549000, v25, v26, "#CreateEventCorrectionsFlow evaluting whether input is supported: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_4_1();
    v3 = v57;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v38 = OUTLINED_FUNCTION_20_3();
    (v16)(v38);
  }

  v39 = v65;
  sub_266669DF8();
  if ((*(v9 + 88))(v13, v66) == *MEMORY[0x277D5C160])
  {
    (*(v9 + 96))(v13, v66);
    v40 = v63;
    v41 = v60;
    (*(v63 + 32))(v60, v13, v3);
    sub_26657D3E4();
    (*(v40 + 8))(v41, v3);
  }

  else
  {
    v64 = v16;
    v42 = v61;
    v58(v61, v39, v14);
    v43 = sub_26666C148();
    v44 = sub_26666C5E8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_21();
      v46 = v42;
      v47 = OUTLINED_FUNCTION_13_0();
      v67 = v47;
      *v45 = 136315138;
      OUTLINED_FUNCTION_4_10();
      sub_26657E950(v48, v49, MEMORY[0x277D5C120]);
      v50 = sub_26666CAA8();
      v52 = v51;
      v64(v46, v14);
      v53 = sub_2665BFC90(v50, v52, &v67);

      *(v45 + 4) = v53;
      _os_log_impl(&dword_266549000, v43, v44, "#CreateEventCorrectionsFlow refusing non uso parse %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      v64(v42, v14);
    }

    (*(v9 + 8))(v13, v66);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26657C6FC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_26657C71C, 0, 0);
}

uint64_t sub_26657C71C()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_state;
  v0[5] = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_state;
  if (*(v1 + v2))
  {
    if (*(v1 + v2) == 1)
    {
      v3 = swift_task_alloc();
      v0[6] = v3;
      *v3 = v0;
      v3[1] = sub_26657C8F0;

      return sub_26657CA7C();
    }

    sub_2666698A8();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v5 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v5, qword_28156D7E8);
    v6 = sub_26666C148();
    v7 = sub_26666C5E8();
    if (OUTLINED_FUNCTION_9(v7))
    {
      v8 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v8);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_10();
    }

    v14 = v0[4];

    *(v1 + v2) = 1;
    v0[2] = v14;
    type metadata accessor for CalendarCorrectionsFlow(0);
    OUTLINED_FUNCTION_5_6();
    sub_26657E950(v15, v16, &unk_26666FBA8);
    sub_266669858();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_26657C8F0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_26657C9DC, 0, 0);
}

uint64_t sub_26657C9FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CalendarCorrectionsFlow(0);
  OUTLINED_FUNCTION_5_6();
  sub_26657E950(v2, v3, &unk_26666FBA8);
  return sub_266669548();
}

uint64_t sub_26657CA7C()
{
  OUTLINED_FUNCTION_14();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v3);
  v1[14] = swift_task_alloc();
  updated = type metadata accessor for UpdateEventCorrectionsIntentWrapper(0);
  OUTLINED_FUNCTION_3_3(updated);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask(0);
  v1[17] = v5;
  OUTLINED_FUNCTION_3_3(v5);
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26657CB70, 0, 0);
}

id sub_26657CB70()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsTask;
  swift_beginAccess();
  sub_26657E58C(v2 + v3, v1, type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[18];
  if (EnumCaseMultiPayload == 1)
  {
    sub_26657E528(v5, v0[16]);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v6 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v6, qword_28156D7E8);
    v7 = sub_26666C148();
    v8 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v8))
    {
      v9 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v9);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_10();
    }

    v15 = v0[13];

    sub_26655358C(v15 + 64, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v16 = *(v15 + 56);
    result = [v16 eventIdentifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    v20 = v0[15];
    v19 = v0[16];
    v21 = sub_26666C308();
    v23 = v22;

    sub_26657E58C(v19, v20, type metadata accessor for UpdateEventCorrectionsIntentWrapper);
    v24 = [v16 startDate];
    if (v24)
    {
      v25 = v24;
      sub_266668CE8();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v44 = v0[15];
    v43 = v0[16];
    v45 = v0[14];
    v46 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v45, v26, 1, v46);
    v42 = sub_26657E5EC(v21, v23, v44, v45);

    sub_26656CAEC(v45, &qword_28007D140, &qword_26666F140);
    sub_26657E998(v43, type metadata accessor for UpdateEventCorrectionsIntentWrapper);
    sub_26657E998(v44, type metadata accessor for UpdateEventCorrectionsIntentWrapper);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    v27 = *v5;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v28 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v28, qword_28156D7E8);
    v29 = sub_26666C148();
    v30 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v30))
    {
      v31 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v31);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
    v37 = v27;
    sub_2665EB4F8();
    v39 = v38;
    v40 = [objc_allocWithZone(MEMORY[0x277CD3C10]) init];
    v41 = sub_266551AF8(v39, v40);

    v0[11] = v41;
    sub_2666692A8();
    v42 = sub_266669528();
  }

  v0[10] = v42;
  sub_2666692A8();

  sub_266669878();

  v47 = v0[1];

  return v47();
}

void sub_26657CFBC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_266669B08();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D6C8, &qword_26666FC38);
  v12 = OUTLINED_FUNCTION_3_3(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_5();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  sub_2665764F4(v3, &v39);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D6D0, &unk_26666FC40);
  v20 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v18, v20 ^ 1u, 1, v19);
  sub_26657E808(v18, v15, &qword_28007D6C8, &qword_26666FC38);
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    goto LABEL_7;
  }

  v21 = *(v19 - 8);
  v22 = (*(v21 + 88))(v15, v19);
  if (v22 == *MEMORY[0x277D5B3E0] || v22 != *MEMORY[0x277D5B3D8])
  {
    (*(v21 + 8))(v15, v19);
LABEL_7:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v24 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v24, qword_28156D7E8);
    v25 = sub_26666C148();
    v26 = sub_26666C618();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_20();
      *v27 = 0;
      _os_log_impl(&dword_266549000, v25, v26, "[CreateEventCorrectionsFlow] Created event correction complete", v27, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v28 = MEMORY[0x277D5BF10];
    goto LABEL_17;
  }

  (*(v21 + 96))(v15, v19);
  v29 = *v15;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v30 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v30, qword_28156D7E8);
  v31 = sub_26666C148();
  v32 = sub_26666C618();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_20();
    *v33 = 0;
    _os_log_impl(&dword_266549000, v31, v32, "[CreateEventCorrectionsFlow] Created event correction failed", v33, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  swift_getErrorValue();
  v34 = sub_26666CB38();
  v36 = v35;

  *v10 = v34;
  v10[1] = v36;
  v28 = MEMORY[0x277D5BF08];
LABEL_17:
  (*(v6 + 104))(v10, *v28, v4);
  v37 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsExitValue;
  swift_beginAccess();
  (*(v6 + 40))(v1 + v37, v10, v4);
  swift_endAccess();
  sub_26656CAEC(v18, &qword_28007D6C8, &qword_26666FC38);
  OUTLINED_FUNCTION_27_0();
}

void sub_26657D3E4()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v75 = type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v76 = (v6 - v5);
  v7 = OUTLINED_FUNCTION_19_4();
  updated = type metadata accessor for UpdateEventCorrectionsIntentWrapper(v7);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v70 = v10 - v9;
  OUTLINED_FUNCTION_19_4();
  sub_266669EE8();
  OUTLINED_FUNCTION_3_0();
  v73 = v12;
  v74 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v72 = (v14 - v13);
  OUTLINED_FUNCTION_19_4();
  v15 = sub_266669E88();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_5();
  v68 = (v19 - v20);
  MEMORY[0x28223BE20](v21);
  v23 = v66 - v22;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v24 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v24, qword_28156D7E8);
  v25 = *(v17 + 16);
  v25(v23, v3, v15);
  v71 = v0;
  v26 = sub_26666C148();
  v27 = sub_26666C618();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_21();
    v66[1] = v3;
    v29 = v28;
    v30 = OUTLINED_FUNCTION_13_0();
    v67 = v1;
    v31 = v30;
    v78[0] = v30;
    *v29 = 136315138;
    v25(v68, v23, v15);
    v32 = sub_26666C318();
    v34 = v33;
    (*(v17 + 8))(v23, v15);
    v35 = sub_2665BFC90(v32, v34, v78);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_266549000, v26, v27, "[CreateEventCorrectionsFlow] isCorrectionsSteeringSupportedBySelf %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v1 = v67;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    (*(v17 + 8))(v23, v15);
  }

  v36 = v72;
  sub_266669E78();
  sub_266669ED8();
  (*(v73 + 8))(v36, v74);
  sub_26657D960();
  v38 = v37;

  if (v38)
  {

    v39 = sub_26666C148();
    v40 = sub_26666C618();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_21();
      v42 = OUTLINED_FUNCTION_13_0();
      v77 = v38;
      v78[0] = v42;
      *v41 = 136315138;
      sub_26666AA48();

      v43 = sub_26666C318();
      v45 = sub_2665BFC90(v43, v44, v78);

      *(v41 + 4) = v45;
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_10();
    }

    v51 = v70;
    sub_26655358C(v1 + OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_calendarDateTimeResolver, v70);
    v52 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_locale;
    v53 = *(updated + 24);
    sub_266668D98();
    OUTLINED_FUNCTION_18_2();
    (*(v54 + 16))(v51 + v53, v1 + v52);
    *(v51 + 40) = v38;
    v55 = v76;
    sub_26657E528(v51, v76);
    swift_storeEnumTagMultiPayload();
    v56 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsTask;
    swift_beginAccess();
    v57 = v1 + v56;
    v58 = v55;
  }

  else
  {
    v59 = sub_26666C148();
    v60 = sub_26666C618();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v61);
      _os_log_impl(&dword_266549000, v59, v60, "[CreateEventCorrectionsFlow] steering task not meant for calendar plugin", v36, 2u);
      OUTLINED_FUNCTION_10();
    }

    v62 = *(v1 + 56);
    v63 = v76;
    *v76 = v62;
    swift_storeEnumTagMultiPayload();
    v64 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsTask;
    swift_beginAccess();
    v65 = v62;
    v57 = v1 + v64;
    v58 = v63;
  }

  sub_26657E4C4(v58, v57);
  swift_endAccess();
  OUTLINED_FUNCTION_27_0();
}

void sub_26657D960()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = sub_266669F98();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  if (!v9)
  {
LABEL_41:
    OUTLINED_FUNCTION_27_0();
    return;
  }

  sub_26666ADC8();
  v12 = *(v4 + 16);
  v10 = v4 + 16;
  v11 = v12;
  v13 = v1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v40 = *(v10 + 56);
  v38 = v12;
  while (1)
  {
    v41 = v13;
    v11(v8);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v14 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v14, qword_28156D7E8);

    v15 = sub_26666C148();
    v16 = sub_26666C618();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_21();
      v39 = OUTLINED_FUNCTION_13_0();
      v42 = v39;
      *v17 = 136315138;
      v18 = MEMORY[0x2667887F0](v1, v2);
      v20 = v9;
      v21 = v10;
      v22 = v8;
      v23 = v1;
      v24 = v2;
      v25 = sub_2665BFC90(v18, v19, &v42);

      *(v17 + 4) = v25;
      v2 = v24;
      v1 = v23;
      v8 = v22;
      v10 = v21;
      v9 = v20;
      v11 = v38;
      _os_log_impl(&dword_266549000, v15, v16, "[CreateEventCorrectionsFlow] findCalendarEvent %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v26 = sub_266669F28();
    v27 = v26;
    if (v26 >> 62)
    {
      if (!OUTLINED_FUNCTION_16_4())
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    if ((v27 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x266788B60](0, v27);
LABEL_12:

    sub_26666A658();

    if (v42)
    {
      goto LABEL_40;
    }

LABEL_16:
    sub_26666ADF8();
    v28 = sub_266669F28();
    v29 = v28;
    if (v28 >> 62)
    {
      if (!OUTLINED_FUNCTION_16_4())
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    else if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if ((v29 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266788B60](0, v29);
    }

    else
    {
      if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }
    }

    sub_26666ABF8();

    if (v42)
    {
LABEL_40:
      v36 = OUTLINED_FUNCTION_11_7();
      v37(v36);
      goto LABEL_41;
    }

LABEL_25:
    sub_26666ADE8();
    v30 = sub_266669F28();
    v31 = v30;
    if (v30 >> 62)
    {
      if (!OUTLINED_FUNCTION_16_4())
      {
LABEL_33:
        v34 = OUTLINED_FUNCTION_11_7();
        v35(v34);

        goto LABEL_34;
      }
    }

    else if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    if ((v31 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266788B60](0, v31);
    }

    else
    {
      if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }
    }

    sub_26666A128();

    v32 = OUTLINED_FUNCTION_11_7();
    v33(v32);
    if (v42)
    {
      goto LABEL_41;
    }

LABEL_34:
    v13 = v41 + v40;
    if (!--v9)
    {
      goto LABEL_41;
    }
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_12;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_26657DDA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v1 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_locale;
  sub_266668D98();
  OUTLINED_FUNCTION_18_2();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_calendarDateTimeResolver));
  sub_26657E998(v0 + OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsTask, type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask);
  v3 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsExitValue;
  sub_266669B08();
  OUTLINED_FUNCTION_18_2();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_26657DE7C()
{
  sub_26657DDA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26657DEFC(uint64_t a1)
{
  result = sub_266668D98();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask(319);
    if (v3 <= 0x3F)
    {
      result = sub_266669B08();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_26657E044(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarCorrectionsFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_26657E160(uint64_t a1)
{
  sub_26657E1D4();
  if (v1 <= 0x3F)
  {
    sub_26657E22C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26657E1D4()
{
  if (!qword_28007D6A8)
  {
    v0 = sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
    if (!v1)
    {
      atomic_store(v0, &qword_28007D6A8);
    }
  }
}

void sub_26657E22C()
{
  if (!qword_28007D6B0)
  {
    updated = type metadata accessor for UpdateEventCorrectionsIntentWrapper(0);
    if (!v1)
    {
      atomic_store(updated, &qword_28007D6B0);
    }
  }
}

unint64_t sub_26657E278()
{
  result = qword_28007D6B8;
  if (!qword_28007D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D6B8);
  }

  return result;
}

uint64_t sub_26657E2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19SiriCalendarIntents23CalendarCorrectionsFlow_correctionsExitValue;
  swift_beginAccess();
  v5 = sub_266669B08();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_26657E3A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266559CAC;

  return sub_26657C6FC(a1);
}

uint64_t sub_26657E440(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CalendarCorrectionsFlow(0);

  return sub_266669588();
}

uint64_t sub_26657E4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarCorrectionsFlow.CorrectionsTask(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26657E528(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateEventCorrectionsIntentWrapper(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_26657E58C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26657E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v17 - v10;
  v18[3] = type metadata accessor for UpdateEventCorrectionsIntentWrapper(0);
  v18[4] = &off_2878091C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_26657E58C(a3, boxed_opaque_existential_1, type metadata accessor for UpdateEventCorrectionsIntentWrapper);
  type metadata accessor for RootFlow();
  sub_26655358C(v18, v17);
  sub_26657E808(a4, v11, &qword_28007D140, &qword_26666F140);
  v13 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_26654B7D8(v17, v14 + 32);
  sub_266557CE4(v11, v14 + v13);

  *&v17[0] = sub_2665E587C(MEMORY[0x277D84F90], MEMORY[0x277D84F90], &unk_26666FC50, v14);
  sub_26657E950(qword_28156C2E8, type metadata accessor for RootFlow, &unk_266676B20);
  v15 = sub_266669528();

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

uint64_t sub_26657E808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_18_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26657E868()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v2);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26657A00C;

  return sub_2665FC07C(v5, v6, v0 + 32, v0 + v4);
}

uint64_t sub_26657E950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26657E998(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return sub_26666C768();
}

unint64_t sub_26657EABC()
{
  result = qword_28156D120;
  if (!qword_28156D120)
  {
    sub_26666B878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156D120);
  }

  return result;
}

uint64_t sub_26657EB28(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v6 = sub_26666B5F8();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26666B608();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26666B628();
  __swift_allocate_value_buffer(v18, a2);
  __swift_project_value_buffer(v18, a2);
  (*(v14 + 104))(v17, *a3, v12);
  (*(v8 + 104))(v11, *MEMORY[0x277D56128], v6);
  sub_26666B878();
  sub_26666B998();
  sub_26657EABC();
  sub_26666C258();
  return sub_26666B618();
}

_BYTE *storeEnumTagSinglePayload for UnsupportedValueBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26657EDEC()
{
  result = qword_28007D6E0;
  if (!qword_28007D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D6E0);
  }

  return result;
}

uint64_t CalendarTvOSFlowProvider.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TaskParser(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266669E68();
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_266669648();
  v6 = &v5[v2[5]];
  v6[3] = type metadata accessor for CalendarDateTimeResolver(0);
  v6[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  *boxed_opaque_existential_1 = swift_allocObject();
  sub_266669638();
  sub_266668D88();
  sub_26666B548();
  v8 = &v5[v2[6]];
  v9 = type metadata accessor for CalendarContactResolver(0);
  v8[3] = v9;
  v8[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v8) + *(v9 + 20)) = 0;
  sub_26666B338();
  sub_26666C068();
  v10 = sub_26666C058();
  v11 = &v5[v2[7]];
  v11[3] = &type metadata for CalendarReferenceResolver;
  v11[4] = &off_28780BAC8;
  *v11 = v10;
  a1[3] = v2;
  a1[4] = &off_287808308;
  v12 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_266552BE0(v5, v12);
  a1[8] = type metadata accessor for CalendarFlowCreator(0);
  a1[9] = &off_28780A3E0;
  v13 = __swift_allocate_boxed_opaque_existential_1(a1 + 5);
  sub_2665FB6EC(v13);
  sub_26657F610(v5, type metadata accessor for TaskParser);
  sub_26655358C(v16, (a1 + 10));
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t CalendarTvOSFlowProvider.findFlowForX(parse:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v5 = sub_266669E58();
  v46 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v45 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v42[-v8];
  v10 = type metadata accessor for Signpost.OpenSignpost(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28156C160 != -1)
  {
    swift_once();
  }

  v14 = qword_28156D800;
  sub_26666C088();
  sub_26666C638();
  v47 = v14;
  sub_26666C078();
  v15 = &v13[*(v10 + 20)];
  *v15 = "FindFlowForX";
  *(v15 + 1) = 12;
  v15[16] = 2;
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  if ((sub_266669698() & 1) == 0)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v22 = sub_26666C168();
    __swift_project_value_buffer(v22, qword_28156D7E8);
    v23 = sub_26666C148();
    v24 = sub_26666C5F8();
    if (!OUTLINED_FUNCTION_4_11(v24))
    {
      goto LABEL_20;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    OUTLINED_FUNCTION_3_9(&dword_266549000, v26, OS_LOG_TYPE_DEBUG, "[CalendarTvOSFlowProvider] returning no flow for unsupported device");
    v27 = v25;
LABEL_19:
    MEMORY[0x266789690](v27, -1, -1);
LABEL_20:

LABEL_21:
    sub_266669598();
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v16 = a1;
  sub_26659AC88(a1, &v49);
  if (v50[24] == 255)
  {
    sub_266560930(&v49);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v28 = sub_26666C168();
    __swift_project_value_buffer(v28, qword_28156D7E8);
    v29 = v46;
    v30 = *(v46 + 16);
    v30(v9, v16, v5);
    v23 = sub_26666C148();
    v31 = sub_26666C608();
    if (!OUTLINED_FUNCTION_4_11(v31))
    {

      (*(v29 + 8))(v9, v5);
      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v51 = v44;
    *v32 = 136315138;
    v43 = v16;
    v30(v45, v9, v5);
    v33 = sub_26666C318();
    v35 = v34;
    (*(v29 + 8))(v9, v5);
    v36 = sub_2665BFC90(v33, v35, &v51);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_266549000, v23, v43, "[CalendarTvOSFlowProvider] returning no flow for unknown parse %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_10();
    v27 = v32;
    goto LABEL_19;
  }

  v51 = v49;
  v52[0] = *v50;
  *(v52 + 9) = *&v50[9];
  sub_266553950(&v51, &v49);
  v17 = v50[24];
  sub_266553988(&v49);
  if (v17 == 4)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v18 = sub_26666C168();
    __swift_project_value_buffer(v18, qword_28156D7E8);
    v19 = sub_26666C148();
    v20 = sub_26666C608();
    if (OUTLINED_FUNCTION_4_11(v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_9(&dword_266549000, v21, a1, "[CalendarTvOSFlowProvider] openCalendarView not supported on this platform");
      OUTLINED_FUNCTION_10();
    }

    sub_266669598();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v37 = sub_26666C168();
    __swift_project_value_buffer(v37, qword_28156D7E8);
    v38 = sub_26666C148();
    v39 = sub_26666C618();
    if (os_log_type_enabled(v38, v39))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_9(&dword_266549000, v40, v39, "[CalendarTvOSFlowProvider] Using execute on remote for non open calendar view task");
      OUTLINED_FUNCTION_10();
    }

    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    sub_2665FC298(a1);
    sub_2666695A8();
  }

  sub_266553988(&v51);
LABEL_28:
  sub_26666C628();
  sub_26666C078();
  return sub_26657F610(v13, type metadata accessor for Signpost.OpenSignpost);
}

uint64_t sub_26657F610(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26657F670(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26657F6B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_3_9(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

BOOL OUTLINED_FUNCTION_4_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t Snippet.Calendar.calendarIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Snippet.Calendar.calendarIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippet.Calendar.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Snippet.Calendar.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snippet.Calendar.color.setter(uint64_t result, double a2, double a3, double a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 56) = result;
  return result;
}

uint64_t Snippet.Calendar.init(calendarIdentifier:title:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a5;
  return result;
}

void Snippet.Calendar.init(ekCalendar:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 CGColor];
  if (v4 && (v5 = sub_26665EAC8(v4), v8 != 3))
  {
    v10 = v8;
    v21 = v6;
    v19 = v7;
    v20 = v5;
    v11 = [a1 calendarIdentifier];
    v12 = sub_26666C308();
    v14 = v13;

    v15 = [a1 title];
    v16 = sub_26666C308();
    v18 = v17;

    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    *(a2 + 24) = v18;
    *(a2 + 32) = v20;
    *(a2 + 40) = v21;
    *(a2 + 48) = v19;
    *(a2 + 56) = v10;
  }

  else
  {
    sub_26657F9F8();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }
}

unint64_t sub_26657F9F8()
{
  result = qword_28007D6E8;
  if (!qword_28007D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D6E8);
  }

  return result;
}

uint64_t sub_26657FA4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000026667DF60 == a2;
  if (v3 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26666CAC8();

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

uint64_t sub_26657FB6C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x656C746974;
  }

  return 0x726F6C6F63;
}

uint64_t sub_26657FBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26657FA4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26657FBF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26657FB64();
  *a1 = result;
  return result;
}

uint64_t sub_26657FC18(uint64_t a1)
{
  v2 = sub_26657FE10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26657FC54(uint64_t a1)
{
  v2 = sub_26657FE10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Calendar.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D6F0, &qword_26666FD80);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26657FE10();
  sub_26666CBE8();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v17[0]) = 0;
  OUTLINED_FUNCTION_3_10(v11, v12);
  if (!v2)
  {
    v13 = *(v3 + 16);
    v14 = *(v3 + 24);
    LOBYTE(v17[0]) = 1;
    OUTLINED_FUNCTION_3_10(v13, v14);
    v17[0] = *(v3 + 32);
    *(v17 + 9) = *(v3 + 41);
    v16[15] = 2;
    sub_26657FE64();
    sub_26666CA78();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_26657FE10()
{
  result = qword_28007D6F8;
  if (!qword_28007D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D6F8);
  }

  return result;
}

unint64_t sub_26657FE64()
{
  result = qword_28007D700;
  if (!qword_28007D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D700);
  }

  return result;
}

uint64_t Snippet.Calendar.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D708, &qword_26666FD88);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26657FE10();
  sub_26666CBD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = OUTLINED_FUNCTION_2_10();
  v8 = v7;
  v18 = v6;
  LOBYTE(v22[0]) = 1;
  *&v17 = OUTLINED_FUNCTION_2_10();
  *(&v17 + 1) = v9;
  v27 = 2;
  sub_266580160();
  sub_26666C9E8();
  v10 = OUTLINED_FUNCTION_0_13();
  v11(v10);
  v12 = v28;
  v13 = v29;
  v14 = v30;
  *&v19 = v18;
  *(&v19 + 1) = v8;
  v20 = v17;
  *v21 = v28;
  *&v21[16] = v29;
  v21[24] = v30;
  sub_2665801B4(&v19, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v22[0] = v18;
  v22[1] = v8;
  v23 = v17;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  result = sub_2665801EC(v22);
  v16 = v20;
  *a2 = v19;
  a2[1] = v16;
  a2[2] = *v21;
  *(a2 + 41) = *&v21[9];
  return result;
}

unint64_t sub_266580160()
{
  result = qword_28007D710;
  if (!qword_28007D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D710);
  }

  return result;
}

double sub_26658021C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  Snippet.Calendar.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
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

uint64_t sub_26658029C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_2665802DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *_s8CalendarV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26658041C()
{
  result = qword_28007D718;
  if (!qword_28007D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D718);
  }

  return result;
}

unint64_t sub_266580474()
{
  result = qword_28007D720;
  if (!qword_28007D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D720);
  }

  return result;
}

unint64_t sub_2665804CC()
{
  result = qword_28007D728;
  if (!qword_28007D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D728);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_26666C9B8();
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2)
{

  return sub_26666CA48();
}

uint64_t sub_266580570()
{
  v1 = sub_266668BE8();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D160, &qword_26666E0B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = [v0 nameComponents];
  if (v14)
  {
    v15 = v14;
    sub_266668BB8();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  OUTLINED_FUNCTION_3_11(v11, v16);
  sub_266567590(v11, v13);
  if (!OUTLINED_FUNCTION_17_1(v13))
  {
    (*(v3 + 16))(v7, v13, v1);
    sub_266567600(v13);
    v21 = sub_266668BD8();
    (*(v3 + 8))(v7, v1);
    return v21;
  }

  sub_266567600(v13);
  v17 = [v0 personHandle];
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v19 = [v17 value];
  if (!v19)
  {

    return 0;
  }

  v20 = v19;
  v21 = sub_26666C308();

  return v21;
}

id sub_266580798(void *a1)
{
  v2 = sub_266668BE8();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_2665816B4(a1, &selRef_emailAddress);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    objc_allocWithZone(MEMORY[0x277CD3E98]);
    v13 = v11;
    v14 = v12;
    v15 = 1;
  }

  else
  {
    v16 = sub_2665816B4(a1, &selRef_phoneNumber);
    v18 = v17;
    objc_allocWithZone(MEMORY[0x277CD3E98]);
    v13 = v16;
    if (v18)
    {
      v14 = v18;
      v15 = 2;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  v19 = sub_2665815A0(v13, v14, v15);
  v20 = [a1 nameComponents];
  if (v20)
  {
    sub_266668BB8();

    v20 = sub_266668BA8();
    (*(v4 + 8))(v8, v2);
  }

  sub_2665816B4(a1, &selRef_name);
  if (v21)
  {
    v22 = sub_26666C2F8();
  }

  else
  {
    v22 = 0;
  }

  v23 = a1;
  sub_266581714(v23, &selRef_uniqueIdentifier);
  if (v24)
  {
    v25 = sub_26666C2F8();
  }

  else
  {
    v25 = 0;
  }

  sub_266581714(v23, &selRef_uniqueIdentifier);
  if (v26)
  {
    v27 = sub_26666C2F8();
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersonHandle:v19 nameComponents:v20 displayName:v22 image:0 contactIdentifier:v25 customIdentifier:v27];

  return v28;
}

uint64_t sub_266580A0C()
{
  result = sub_2665816B4(v0, &selRef_contactIdentifier);
  if (!v2)
  {
    result = sub_2665816B4(v0, &selRef_customIdentifier);
    if (!v3)
    {
      result = sub_2665816B4(v0, &selRef_vocabularyIdentifier);
      if (!v4)
      {
        result = sub_2665816B4(v0, &selRef_contactIdentifier);
        if (!v5)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_266580A7C()
{
  result = [v0 personHandle];
  if (result)
  {
    v2 = result;
    v3 = [result type];

    if (v3 != 1)
    {
      return 0;
    }

    result = [v0 personHandle];
    if (!result)
    {
      return result;
    }

    sub_266581714(result, &selRef_value);
    if (v4)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_266580B18(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26666C768();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    result = sub_26666C898();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_266552C44(0, &qword_28007D738, 0x277CC59A0);
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x266788B60](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        sub_266567228(v5);
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      while (v2 != v4);
      return v6;
    }
  }

  return result;
}

uint64_t sub_266580C38(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26666C768();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = sub_26666C898();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x266788B60](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        v6 = v5;
        v7 = sub_26666C658();
        v8 = sub_26666C658();
        [objc_allocWithZone(MEMORY[0x277CD3BE8]) initWithPerson:v6 status:0 isUser:v7 isEventOrganizer:v8];

        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      while (v2 != v4);
      return v9;
    }
  }

  return result;
}

uint64_t sub_266580DB4@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_266668D98();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_1_0();
  v7 = *a1;
  sub_26666BCA8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = v7;
  sub_266669648();
  result = sub_26666BC98();
  *a3 = result;
  return result;
}

uint64_t INPerson.id.getter()
{
  result = sub_2665816B4(v0, &selRef_contactIdentifier);
  if (!v2)
  {
    return 0x3E6C696E3CLL;
  }

  return result;
}

uint64_t sub_266580ECC()
{
  v1 = v0;
  v2 = sub_266668BE8();
  OUTLINED_FUNCTION_3_0();
  v66 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v65 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D160, &qword_26666E0B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v65 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v65 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v65 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v65 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v65 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v65 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v65 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = MEMORY[0x277D84F90];
  v69 = v29 + 16;
  v30 = v1;
  v31 = [v1 nameComponents];
  if (v31)
  {
    v32 = v31;
    sub_266668BB8();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  OUTLINED_FUNCTION_3_11(v26, v33);
  sub_266567590(v26, v28);
  if (OUTLINED_FUNCTION_17_1(v28))
  {
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v34 = sub_266668B58();
    v35 = v36;
  }

  sub_266567600(v28);
  OUTLINED_FUNCTION_2_11();
  sub_2665813F4(v34, v35, v37 & 0xFFFFFFFFFFFFLL | 0x6946000000000000, 0xEF656D614E747372, v29);

  v38 = [v30 nameComponents];
  if (v38)
  {
    v39 = v38;
    sub_266668BB8();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  OUTLINED_FUNCTION_3_11(v20, v40);
  sub_266567590(v20, v23);
  if (OUTLINED_FUNCTION_17_1(v23))
  {
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v41 = sub_266668B68();
    v42 = v43;
  }

  sub_266567600(v23);
  OUTLINED_FUNCTION_2_11();
  sub_2665813F4(v41, v42, v44 & 0xFFFFFFFFFFFFLL | 0x614C000000000000, 0xEE00656D614E7473, v29);

  v45 = [v30 nameComponents];
  if (v45)
  {
    v46 = v45;
    sub_266668BB8();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  OUTLINED_FUNCTION_3_11(v14, v47);
  sub_266567590(v14, v17);
  if (OUTLINED_FUNCTION_17_1(v17))
  {
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v48 = sub_266668BC8();
    v49 = v50;
  }

  sub_266567600(v17);
  OUTLINED_FUNCTION_2_11();
  sub_2665813F4(v48, v49, v51 & 0xFFFFFFFFFFFFLL | 0x694E000000000000, 0xEE00656D614E6B63, v29);

  v52 = [v30 nameComponents];
  if (v52)
  {
    v53 = v52;
    v54 = v67;
    sub_266668BB8();

    v55 = 0;
  }

  else
  {
    v55 = 1;
    v54 = v67;
  }

  OUTLINED_FUNCTION_3_11(v54, v55);
  v56 = v68;
  sub_266567590(v54, v68);
  if (OUTLINED_FUNCTION_17_1(v56))
  {
    sub_266567600(v56);
    v57 = 0;
    v58 = 0;
  }

  else
  {
    v60 = v65;
    v59 = v66;
    (*(v66 + 16))(v65, v56, v2);
    sub_266567600(v56);
    v57 = sub_266668BD8();
    v58 = v61;
    (*(v59 + 8))(v60, v2);
  }

  OUTLINED_FUNCTION_2_11();
  sub_2665813F4(v57, v58, v62 & 0xFFFFFFFFFFFFLL | 0x7546000000000000, 0xEE00656D614E6C6CLL, v29);

  swift_beginAccess();
  v63 = *(v29 + 16);

  return v63;
}

uint64_t sub_2665813F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2666697B8();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v13 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_266669798();
      swift_beginAccess();
      sub_266643F54();
      v14 = *(*(a5 + 16) + 16);
      sub_266643FE0(v14);
      v15 = *(a5 + 16);
      *(v15 + 16) = v14 + 1;
      (*(v9 + 32))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v12, v8);
      *(a5 + 16) = v15;
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_266581574@<X0>(uint64_t *a1@<X8>)
{
  result = INPerson.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_2665815A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26666C2F8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

unint64_t sub_266581618(uint64_t a1)
{
  result = sub_266581640();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_266581640()
{
  result = qword_28007D730;
  if (!qword_28007D730)
  {
    sub_266552C44(255, &qword_28007D148, 0x277CD3E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D730);
  }

  return result;
}

uint64_t sub_2665816B4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_26666C308();

  return v4;
}

uint64_t sub_266581714(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_26666C308();

  return v4;
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_2665817A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_266668D98();
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665818DC, 0, 0);
}

uint64_t sub_2665818DC()
{
  v3 = sub_2665670B0(v0[10]);
  v0[18] = v3;
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (sub_2665C485C() != 1)
  {
    goto LABEL_9;
  }

  sub_2665C4864();
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_59:
    v6 = MEMORY[0x266788B60](0, v5);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = v6;
  v8 = [v6 personHandle];

  if (v8)
  {
    v9 = [v8 type];

    v10 = v9 == 1;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  *(v0 + 176) = v10;
  v11 = sub_2665EF548(v0[10]);
  if (v10)
  {
    v49 = v11;
    v50 = v12;
    v13 = OUTLINED_FUNCTION_8_7();
    if (v13 && (v14 = v13, v15 = [v13 allDay], v14, v15))
    {
      v48 = [v15 BOOLValue];
    }

    else
    {
      v48 = 0;
    }

    v23 = OUTLINED_FUNCTION_9_6();
    if (v23)
    {
      v24 = v23;
      v25 = [v23 startDate];

      if (v25)
      {
        sub_266668CE8();
      }

      v31 = sub_266668D38();
      OUTLINED_FUNCTION_0_14(v31);
    }

    else
    {
      v30 = sub_266668D38();
      OUTLINED_FUNCTION_2_12(v30);
    }

    v32 = OUTLINED_FUNCTION_9_6();
    if (v32)
    {
      v33 = v32;
      v34 = [v32 endDate];

      if (v34)
      {
        sub_266668CE8();
      }

      v36 = sub_266668D38();
      OUTLINED_FUNCTION_0_14(v36);
    }

    else
    {
      v35 = sub_266668D38();
      OUTLINED_FUNCTION_2_12(v35);
    }

    if (v0[18])
    {
      v37 = v0[18];
    }

    else
    {
      v37 = v4;
    }

    if (*(v0 + 176) == 1)
    {
      v45 = sub_266580B18(v37);
    }

    else
    {

      v45 = 0;
    }

    OUTLINED_FUNCTION_6_4();
    v38 = v0[10];
    v40 = v0[7];
    v39 = v0[8];
    sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
    v41 = [v38 (v2 + 677)];
    v42 = [v41 EKRecurrenceRule];

    sub_266560A9C(v48, v4, v1, v49, v50, v45, v40, v39, v42, [v38 location]);

    v43 = OUTLINED_FUNCTION_1_10();

    return v44(v43);
  }

  else
  {

    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v16 = sub_26666C168();
    __swift_project_value_buffer(v16, qword_28156D7E8);
    v17 = sub_26666C148();
    v18 = sub_26666C618();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266549000, v17, v18, "[INCreateEventIntent.buildEKEvent] Participants are not invitable, adding them to event title", v19, 2u);
      MEMORY[0x266789690](v19, -1, -1);
    }

    v20 = v0[10];

    sub_2665EF548(v20);
    if (v21)
    {
      sub_26666C358();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v1 = v0[17];
    v46 = sub_26666BDA8();
    __swift_storeEnumTagSinglePayload(v1, v22, 1, v46);
    v53 = v4;
    v2 = 0;
    v51 = sub_2665C485C();
    v52 = v0;
LABEL_26:
    v0[19] = v4;
    while (v51 != v2)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x266788B60](v2, v5);
      }

      else
      {
        if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v26 = *(v5 + 8 * v2 + 32);
      }

      v4 = v26;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v47 = v2 + 1;
      v0 = v52;
      sub_26666BCA8();
      v27 = v4;
      sub_266669E68();
      v1 = v5;
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_266669648();
      __swift_destroy_boxed_opaque_existential_1(v52 + 2);
      v4 = sub_26666BC98();

      ++v2;
      if (v4)
      {
        MEMORY[0x2667887C0]();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26666C4B8();
        }

        sub_26666C4E8();
        v4 = v53;
        v2 = v47;
        v0 = v52;
        goto LABEL_26;
      }
    }

    __swift_storeEnumTagSinglePayload(v52[16], 1, 1, v46);
    v28 = swift_task_alloc();
    v52[20] = v28;
    *v28 = v52;
    v28[1] = sub_266581F68;

    return sub_2665D8CB8();
  }
}

uint64_t sub_266581F68(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 136);
  v7 = *(v4 + 128);
  if (v1)
  {

    sub_266583058(v7);
    sub_266583058(v6);
    v8 = sub_2665823F8;
  }

  else
  {

    *(v5 + 168) = a1;
    sub_266583058(v7);
    sub_266583058(v6);
    v8 = sub_26658210C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26658210C()
{
  v2 = *(v0 + 168);
  v3 = sub_26655F6C8();
  v5 = v4;

  if (!v5)
  {
    v3 = sub_2665EF548(*(v0 + 80));
    v5 = v6;
  }

  v7 = OUTLINED_FUNCTION_8_7();
  if (v7 && (v8 = v7, v9 = [v7 allDay], v8, v9))
  {
    v49 = [v9 BOOLValue];
  }

  else
  {
    v49 = 0;
  }

  v10 = OUTLINED_FUNCTION_9_6();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 startDate];

    if (v12)
    {
      sub_266668CE8();
    }

    v14 = sub_266668D38();
    OUTLINED_FUNCTION_0_14(v14);
  }

  else
  {
    v13 = sub_266668D38();
    OUTLINED_FUNCTION_2_12(v13);
  }

  v15 = OUTLINED_FUNCTION_9_6();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 endDate];

    if (v17)
    {
      sub_266668CE8();
    }

    v19 = sub_266668D38();
    OUTLINED_FUNCTION_0_14(v19);
  }

  else
  {
    v18 = sub_266668D38();
    OUTLINED_FUNCTION_2_12(v18);
  }

  if (*(v0 + 144))
  {
    v20 = *(v0 + 144);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v50 = v3;
  if (*(v0 + 176) == 1)
  {
    v43 = sub_266580B18(v20);
  }

  else
  {

    v43 = 0;
  }

  OUTLINED_FUNCTION_6_4();
  v21 = *(v0 + 80);
  v46 = v22;
  v47 = *(v0 + 88);
  v24 = *(v0 + 56);
  v23 = *(v0 + 64);
  sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
  v25 = [v21 (v1 + 677)];
  v26 = [v25 EKRecurrenceRule];

  v27 = [v21 location];
  v28 = v23;
  v29 = v24;
  OUTLINED_FUNCTION_5_7(v29, v30, v31, v32, v33, v34, v35, v36, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v5, v50);

  v37 = OUTLINED_FUNCTION_1_10();

  return v38(v37);
}

uint64_t sub_2665823F8()
{
  v2 = sub_2665EF548(*(v0 + 80));
  v47 = v3;
  v48 = v2;

  v4 = OUTLINED_FUNCTION_8_7();
  if (v4 && (v5 = v4, v6 = [v4 allDay], v5, v6))
  {
    v46 = [v6 BOOLValue];
  }

  else
  {
    v46 = 0;
  }

  v7 = OUTLINED_FUNCTION_9_6();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 startDate];

    if (v9)
    {
      sub_266668CE8();
    }

    v11 = sub_266668D38();
    OUTLINED_FUNCTION_0_14(v11);
  }

  else
  {
    v10 = sub_266668D38();
    OUTLINED_FUNCTION_2_12(v10);
  }

  v12 = OUTLINED_FUNCTION_9_6();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 endDate];

    if (v14)
    {
      sub_266668CE8();
    }

    v16 = sub_266668D38();
    OUTLINED_FUNCTION_0_14(v16);
  }

  else
  {
    v15 = sub_266668D38();
    OUTLINED_FUNCTION_2_12(v15);
  }

  if (*(v0 + 144))
  {
    v17 = *(v0 + 144);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (*(v0 + 176) == 1)
  {
    v40 = sub_266580B18(v17);
  }

  else
  {

    v40 = 0;
  }

  OUTLINED_FUNCTION_6_4();
  v18 = *(v0 + 80);
  v43 = v19;
  v44 = *(v0 + 88);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
  v22 = [v18 (v1 + 677)];
  v23 = [v22 EKRecurrenceRule];

  v24 = [v18 location];
  v25 = v20;
  v26 = v21;
  OUTLINED_FUNCTION_5_7(v26, v27, v28, v29, v30, v31, v32, v33, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);

  v34 = OUTLINED_FUNCTION_1_10();

  return v35(v34);
}

id sub_2665826C4()
{
  v1 = sub_2665EF548(v0);
  v3 = v2;
  v4 = [v0 dateTimeRange];
  v5 = sub_2665670B0(v0);
  if (v5)
  {
    v6 = sub_266580C38(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v0 location];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v8 = sub_26666C658();
  v9 = objc_allocWithZone(MEMORY[0x277CD3AD8]);
  v10 = OUTLINED_FUNCTION_0();
  return sub_266582E94(v10, v11, v1, v3, v4, v6, v7, v8, 0, 0);
}

id sub_2665827C8(char a1, unint64_t a2, char a3)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_0();
      goto LABEL_11;
    case 2:
      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_1_6();
      v9 = 1;
      goto LABEL_12;
    case 3:
      if (a3)
      {
        a2 = 1;
      }

      if (a3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      v12 = OUTLINED_FUNCTION_3_12();
      v15 = sub_2665828A0(v12, v13, v14, a2, 0, v11, 0);
      sub_2665671E8(a2, 0, v11);
      return v15;
    default:
LABEL_11:
      OUTLINED_FUNCTION_1_6();
      v9 = 0;
LABEL_12:

      return sub_2665828A0(v3, v4, v5, v6, v7, v8, v9);
  }
}

id sub_2665828A0(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, unint64_t a5, char a6, void *a7)
{
  v8 = v7;
  v16 = sub_2665EF548(v7);
  if (a2)
  {
    v18 = a5;
    v19 = a6;
    if (a2 == 1)
    {
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = a1;
      v21 = a2;
    }

    v35 = v21;
    v22 = v20;
    a6 = v19;
    a5 = v18;
  }

  else
  {
    v22 = v16;
    v35 = v17;
  }

  sub_266567120(a1, a2);
  v23 = [v8 dateTimeRange];
  v24 = v23;
  if (a3 == 1)
  {
    v26 = 0;
  }

  else if (a3)
  {
    v26 = a3;
  }

  else
  {
    v25 = v23;
    v26 = v24;
  }

  sub_26654C590(a3);

  v27 = sub_2665670B0(v8);
  v28 = sub_266566E24(v27, a4, a5, a6);

  v29 = [v8 location];
  v30 = v29;
  if (a7 == 1)
  {
    v32 = 0;
  }

  else if (a7)
  {
    v32 = a7;
  }

  else
  {
    v31 = v29;
    v32 = v30;
  }

  sub_26654C590(a7);

  v33 = objc_allocWithZone(MEMORY[0x277CD3B20]);
  return sub_266571D5C(v22, v35, v26, v28, v32);
}

id sub_266582A50(char a1, void *a2, uint64_t a3, char a4, char a5)
{
  v7 = v5;
  switch(a1)
  {
    case 1:
      result = sub_2665F01A0(a2);
      if (!v6)
      {
        v27 = result;
        if (a5)
        {
          v28 = [v7 dateTimeRange];
          if (v28)
          {
            v29 = v28;
            sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
            v30 = v27;
            sub_2665D23CC();
            v32 = v31;

            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_1_6();
            v15 = OUTLINED_FUNCTION_10_6(v33, v34, v35, v36, v37, v38);

            return v15;
          }
        }

        v16 = v27;
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_6();
        v15 = OUTLINED_FUNCTION_10_6(v39, v40, v41, v42, v43, v44);

        goto LABEL_16;
      }

      return result;
    case 2:
      result = sub_2665F0414(a2);
      if (!v6)
      {
        v16 = result;
        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_1_6();
        v15 = sub_2665828A0(v17, v18, v19, v20, v21, v22, v16);
LABEL_16:

        return v15;
      }

      return result;
    case 3:
      if (a4)
      {
        result = sub_2665F0314(a2);
        if (!v6)
        {
          v23 = result;
          v24 = 0;
          v25 = 1;
LABEL_18:
          v45 = OUTLINED_FUNCTION_3_12();
          v15 = OUTLINED_FUNCTION_10_6(v45, v46, v47, v23, v24, v25);
          sub_2665671E8(v23, v24, v25);
          return v15;
        }
      }

      else
      {
        v24 = a3;
        result = sub_2665F01D8(a2);
        if (!v6)
        {
          v23 = result;
          v25 = 2;
          goto LABEL_18;
        }
      }

      return result;
    default:
      result = sub_2665F044C(a2);
      if (!v6)
      {
        OUTLINED_FUNCTION_1_6();
        v15 = OUTLINED_FUNCTION_10_6(v9, v10, v11, v12, v13, v14);

        return v15;
      }

      return result;
  }
}

id sub_266582C3C(id a1, char a2)
{
  if ((a2 & 1) != 0 && (v4 = [v2 dateTimeRange]) != 0)
  {
    v5 = v4;
    sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
    v6 = [a1 dateTimeRange];
    sub_2665D23CC();
    v8 = v7;
  }

  else
  {
    v8 = [a1 dateTimeRange];
  }

  v9 = v8;
  v10 = sub_2665EF548(a1);
  v12 = v11;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_2665670B0(a1);
  v15 = sub_266566FE4(v14);
  v17 = v16;
  v19 = v18;

  v20 = [a1 location];
  v21 = sub_2665828A0(v13, v12, v9, v15, v17, v19, v20);
  sub_2665671D8(v9);

  sub_2665671E8(v15, v17, v19);
  sub_2665671D8(v9);

  return v21;
}

id sub_266582DC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCode:a1 userActivity:0];
  [v7 setConfirmationReason_];
  if (a4)
  {
    sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
    v8 = a4;
    sub_2665EB4F8();
    v10 = v9;
    [v7 setCreatedEvent_];
  }

  sub_266582FEC(a3, v7);

  return v7;
}

id sub_266582E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  if (a2)
  {
    v17 = sub_26666C2F8();

    if (a4)
    {
LABEL_3:
      v18 = sub_26666C2F8();

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  if (!a6)
  {
    v19 = 0;
    if (a10)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  sub_266552C44(0, &qword_28007D748, 0x277CD3BE8);
  v19 = sub_26666C488();

  if (!a10)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_26666C2F8();

LABEL_11:
  v21 = [v11 initWithEventIdentifier:v17 title:v18 dateTimeRange:a5 participants:v19 location:a7 isContactBirthday:a8 calendarPunchoutURI:v20];

  return v21;
}

void sub_266582FEC(uint64_t a1, void *a2)
{
  v3 = sub_26666C488();

  [a2 setConflictingEventIdentifiers_];
}

uint64_t sub_266583058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v3, v2, 1, a1);

  return sub_266557CE4(v3, v1);
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

id OUTLINED_FUNCTION_5_7(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, uint64_t a19, uint64_t a20)
{

  return sub_266560A9C(a18, v23, v21, a20, a19, a12, a1, v22, v24, v20);
}

id OUTLINED_FUNCTION_8_7()
{
  v2 = *(v0 + 80);

  return [v2 dateTimeRange];
}

id OUTLINED_FUNCTION_9_6()
{
  v3 = *(v0 + 80);

  return [v3 (v1 + 677)];
}

id OUTLINED_FUNCTION_10_6(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, unint64_t a5, char a6)
{

  return sub_2665828A0(a1, a2, a3, a4, a5, a6, 0);
}

id sub_2665831B8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCode:a1 userActivity:0];
  [v3 setConfirmationReason_];
  return v3;
}

_BYTE *storeEnumTagSinglePayload for IntentAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2665832FC()
{
  result = qword_28007D750;
  if (!qword_28007D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D750);
  }

  return result;
}

uint64_t sub_266583350()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_266583388(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  *(v1 + 27) = a1[19];
  *(v1 + 28) = a1[20];
  *(v1 + 29) = a1[21];
  *(v1 + 30) = a1[22];
  v2 = a1[23];

  *(v1 + 31) = v2;
  return v1;
}

double sub_2665833F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD000000000000012 && 0x800000026667CE00 == a2;
  if (v6 || (OUTLINED_FUNCTION_2_6(0xD000000000000012, 0x800000026667CE00) & 1) != 0)
  {
    v9 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  v10 = a1 == 0xD000000000000014 && 0x800000026667CE20 == a2;
  if (v10 || (OUTLINED_FUNCTION_2_6(0xD000000000000014, 0x800000026667CE20) & 1) != 0)
  {
    v9 = v3[25];
    goto LABEL_7;
  }

  v11 = a1 == 0xD000000000000015 && 0x800000026667CE40 == a2;
  if (v11 || (OUTLINED_FUNCTION_2_6(0xD000000000000015, 0x800000026667CE40) & 1) != 0)
  {
    v9 = v3[26];
    goto LABEL_7;
  }

  v12 = a1 == 0xD000000000000016 && 0x800000026667CE60 == a2;
  if (v12 || (OUTLINED_FUNCTION_2_6(0xD000000000000016, 0x800000026667CE60) & 1) != 0)
  {
    v9 = v3[27];
    goto LABEL_7;
  }

  v13 = a1 == 0xD000000000000010 && 0x800000026667CE80 == a2;
  if (v13 || (OUTLINED_FUNCTION_2_6(0xD000000000000010, 0x800000026667CE80) & 1) != 0)
  {
    v9 = v3[28];
    goto LABEL_7;
  }

  v14 = a1 == 0xD000000000000012 && 0x800000026667CEA0 == a2;
  if (v14 || (OUTLINED_FUNCTION_2_6(0xD000000000000012, 0x800000026667CEA0) & 1) != 0)
  {
    v9 = v3[29];
    goto LABEL_7;
  }

  v15 = a1 == 0x61446C6C416C6C61 && a2 == 0xE900000000000079;
  if (v15 || (OUTLINED_FUNCTION_2_6(0x61446C6C416C6C61, 0xE900000000000079) & 1) != 0)
  {
    v9 = v3[30];
    goto LABEL_7;
  }

  v16 = a1 == 0x64656D69546C6C61 && a2 == 0xE800000000000000;
  if (v16 || (OUTLINED_FUNCTION_2_6(0x64656D69546C6C61, 0xE800000000000000) & 1) != 0)
  {
    v9 = v3[31];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

unint64_t sub_2665835E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266583634(char a1)
{
  result = 0x61446C6C416C6C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      return result;
    case 7:
      result = 0x64656D69546C6C61;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_266583760@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2665835E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_266583790@<X0>(unint64_t *a1@<X8>)
{
  result = sub_266583634(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2665837D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26658362C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26658380C(uint64_t a1)
{
  v2 = sub_266583EE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266583848(uint64_t a1)
{
  v2 = sub_266583EE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266583884()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2665838E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D778, &qword_2666701C8);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266583EE4();
  sub_26666CBE8();
  v11 = v3[24];
  v28 = 0;
  OUTLINED_FUNCTION_1_13(v11, &v28);
  if (!v2)
  {
    v12 = v3[25];
    v27 = 1;
    OUTLINED_FUNCTION_1_13(v12, &v27);
    v13 = v3[26];
    v26 = 2;
    OUTLINED_FUNCTION_1_13(v13, &v26);
    v14 = v3[27];
    v25 = 3;
    OUTLINED_FUNCTION_1_13(v14, &v25);
    v15 = v3[28];
    v24 = 4;
    OUTLINED_FUNCTION_1_13(v15, &v24);
    v16 = v3[29];
    v23 = 5;
    OUTLINED_FUNCTION_1_13(v16, &v23);
    v17 = v3[30];
    v22 = 6;
    OUTLINED_FUNCTION_1_13(v17, &v22);
    v18 = v3[31];
    v21 = 7;
    OUTLINED_FUNCTION_1_13(v18, &v21);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_266583AC8(void *a1)
{
  v2 = swift_allocObject();
  sub_266583B3C(a1);
  return v2;
}

uint64_t sub_266583B3C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D768, &qword_2666701C0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266583EE4();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarResultSetIntroOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_1_8(&v21) & 1;
    v20 = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_8(&v20) & 1;
    v19 = 2;
    *(v1 + 26) = OUTLINED_FUNCTION_1_8(&v19) & 1;
    v18 = 3;
    *(v1 + 27) = OUTLINED_FUNCTION_1_8(&v18) & 1;
    v17 = 4;
    *(v1 + 28) = OUTLINED_FUNCTION_1_8(&v17) & 1;
    v16 = 5;
    *(v1 + 29) = OUTLINED_FUNCTION_1_8(&v16) & 1;
    v15 = 6;
    *(v1 + 30) = OUTLINED_FUNCTION_1_8(&v15) & 1;
    v14 = 7;
    v12 = OUTLINED_FUNCTION_1_8(&v14);
    (*(v7 + 8))(v10, v5);
    *(v3 + 31) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_266583DEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266583AC8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266583EA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarResultSetIntroOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266583EE4()
{
  result = qword_28007D770;
  if (!qword_28007D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D770);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarResultSetIntroOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarResultSetIntroOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2665840A0()
{
  result = qword_28007D780;
  if (!qword_28007D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D780);
  }

  return result;
}

unint64_t sub_2665840F8()
{
  result = qword_28007D788;
  if (!qword_28007D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D788);
  }

  return result;
}

unint64_t sub_266584150()
{
  result = qword_28007D790;
  if (!qword_28007D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D790);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1, uint64_t a2)
{

  return sub_26666CA58();
}

uint64_t Snippet.PunchoutButton.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26658427C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7261646E656C6163 && a2 == 0xEB00000000707041)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26666CAC8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266584318(uint64_t a1)
{
  v2 = sub_266584640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266584354(uint64_t a1)
{
  v2 = sub_266584640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266584398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26658427C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2665843C4(uint64_t a1)
{
  v2 = sub_2665845EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266584400(uint64_t a1)
{
  v2 = sub_2665845EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.PunchoutButton.Location.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15_3();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D798, &qword_266670320);
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7A0, &qword_266670328);
  OUTLINED_FUNCTION_3_0();
  v33 = v32;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_2665845EC();
  sub_26666CBE8();
  sub_266584640();
  sub_26666CA08();
  (*(v27 + 8))(v30, v25);
  (*(v33 + 8))(v36, v31);
  OUTLINED_FUNCTION_16_3();
}

unint64_t sub_2665845EC()
{
  result = qword_28007D7A8;
  if (!qword_28007D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D7A8);
  }

  return result;
}

unint64_t sub_266584640()
{
  result = qword_28007D7B0;
  if (!qword_28007D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D7B0);
  }

  return result;
}

void Snippet.PunchoutButton.Location.init(from:)()
{
  OUTLINED_FUNCTION_15_3();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7B8, &qword_266670330);
  OUTLINED_FUNCTION_3_0();
  v36 = v4;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7C0, &unk_266670338);
  OUTLINED_FUNCTION_3_0();
  v37 = v9;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2665845EC();
  sub_26666CBD8();
  if (v0)
  {
    goto LABEL_9;
  }

  v34 = v7;
  v35 = v2;
  v13 = sub_26666C9F8();
  sub_266575484(v13, 0);
  v17 = v12;
  if (v15 == v16 >> 1)
  {
    v36 = v14;
LABEL_8:
    v27 = v8;
    v28 = sub_26666C848();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v30 = &type metadata for Snippet.PunchoutButton.Location;
    v31 = sub_26666C978();
    OUTLINED_FUNCTION_9_7(v31);
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v17, v27);
    v2 = v35;
LABEL_9:
    v32 = v2;
    goto LABEL_10;
  }

  if (v15 < (v16 >> 1))
  {
    v18 = sub_266575DD4();
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = v20 == v22 >> 1;
    v24 = v35;
    v25 = v36;
    if (v23)
    {
      sub_266584640();
      v26 = v34;
      sub_26666C968();
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v3);
      (*(v37 + 8))(v17, v8);
      v32 = v24;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_16_3();
      return;
    }

    v36 = v18;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_266584A2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61436E65706FLL && a2 == 0xEC0000007261646ELL;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69746162726576 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

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

uint64_t sub_266584AF8(char a1)
{
  if (a1)
  {
    return 0x6D69746162726576;
  }

  else
  {
    return 0x656C61436E65706FLL;
  }
}

uint64_t sub_266584B38(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26666CAC8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s19SiriCalendarIntents7SnippetO14PunchoutButtonV8LocationO9hashValueSivg_0()
{
  sub_26666CB88();
  MEMORY[0x266788EE0](0);
  return sub_26666CBC8();
}

uint64_t sub_266584C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266584A2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266584C5C(uint64_t a1)
{
  v2 = sub_266585BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266584C98(uint64_t a1)
{
  v2 = sub_266585BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266584CD4(uint64_t a1)
{
  v2 = sub_266585C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266584D10(uint64_t a1)
{
  v2 = sub_266585C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266584D4C(uint64_t a1)
{
  sub_26666CB88();
  MEMORY[0x266788EE0](0);
  return sub_26666CBC8();
}

uint64_t sub_266584D90(uint64_t a1)
{
  v2 = sub_266585BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266584DCC(uint64_t a1)
{
  v2 = sub_266585BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.PunchoutButton.LocalizedTitle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_15_3();
  v48 = v25;
  v49 = v23;
  v47 = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7C8, &qword_266670348);
  OUTLINED_FUNCTION_3_0();
  v46 = v30;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v31);
  v33 = &v44 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7D0, &qword_266670350);
  OUTLINED_FUNCTION_3_0();
  v44 = v35;
  v45 = v34;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_12();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7D8, &qword_266670358);
  OUTLINED_FUNCTION_3_0();
  v39 = v38;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v40);
  v42 = &v44 - v41;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_266585BA0();
  v43 = v48;
  sub_26666CBE8();
  if (v43)
  {
    sub_266585BF4();
    sub_26666CA08();
    sub_26666CA48();
    (*(v46 + 8))(v33, v29);
  }

  else
  {
    sub_266585C48();
    sub_26666CA08();
    (*(v44 + 8))(v24, v45);
  }

  (*(v39 + 8))(v42, v37);
  OUTLINED_FUNCTION_16_3();
}

void Snippet.PunchoutButton.LocalizedTitle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_3();
  v63 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D7F8, &qword_266670360);
  OUTLINED_FUNCTION_3_0();
  v60 = v28;
  v61 = v29;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_12();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D800, &qword_266670368);
  OUTLINED_FUNCTION_3_0();
  v59 = v32;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v33);
  v35 = v58 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D808, &qword_266670370);
  OUTLINED_FUNCTION_3_0();
  v62 = v36;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v37);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_266585BA0();
  v38 = v63;
  sub_26666CBD8();
  if (v38)
  {
    goto LABEL_9;
  }

  v63 = v35;
  v58[2] = v25;
  sub_26666C9F8();
  sub_266575DD8();
  if (v40 == v41 >> 1)
  {
    v42 = v27;
LABEL_8:
    v48 = sub_26666C848();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v50 = &type metadata for Snippet.PunchoutButton.LocalizedTitle;
    v51 = sub_26666C978();
    OUTLINED_FUNCTION_9_7(v51);
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = OUTLINED_FUNCTION_3_13();
    v53(v52);
    v27 = v42;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_10:
    OUTLINED_FUNCTION_16_3();
    return;
  }

  if (v40 < (v41 >> 1))
  {
    v42 = v27;
    v64 = *(v39 + v40);
    v43 = sub_266575DD4();
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    if (v45 == v47 >> 1)
    {
      v58[1] = v43;
      if (v64)
      {
        sub_266585BF4();
        OUTLINED_FUNCTION_2_13();
        sub_26666C968();
        sub_26666C9B8();
        swift_unknownObjectRelease();
        v54 = OUTLINED_FUNCTION_8_8();
        v55(v54);
      }

      else
      {
        sub_266585C48();
        OUTLINED_FUNCTION_2_13();
        sub_26666C968();
        swift_unknownObjectRelease();
        (*(v59 + 8))(v63, v31);
      }

      v56 = OUTLINED_FUNCTION_3_13();
      v57(v56);
      __swift_destroy_boxed_opaque_existential_1(v27);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_266585598(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

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

uint64_t sub_26658565C(char a1)
{
  if (a1)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_2665856E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266585598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266585708(uint64_t a1)
{
  v2 = sub_266585C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266585744(uint64_t a1)
{
  v2 = sub_266585C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.PunchoutButton.encode(to:)()
{
  OUTLINED_FUNCTION_15_3();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D810, &qword_266670378);
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10);
  v12 = v13 - v11;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_266585C9C();
  sub_26666CBE8();
  LOBYTE(v13[0]) = 0;
  sub_266585CF0();
  sub_26666CA78();
  if (!v0)
  {
    v13[0] = v4;
    v13[1] = v2;
    sub_266585D44();
    sub_26666CA78();
  }

  (*(v9 + 8))(v12, v7);
  OUTLINED_FUNCTION_16_3();
}

void *Snippet.PunchoutButton.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D830, &qword_266670380);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_12();
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266585C9C();
  sub_26666CBD8();
  if (!v1)
  {
    LOBYTE(v10) = 0;
    sub_266585D98();
    OUTLINED_FUNCTION_2_13();
    sub_26666C9E8();
    sub_266585DEC();
    OUTLINED_FUNCTION_2_13();
    sub_26666C9E8();
    (*(v6 + 8))(v2, v4);
    v8 = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_266585A98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = Snippet.PunchoutButton.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

id Snippet.PunchoutButton.Location.command.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_266585B3C(0xD000000000000013, 0x800000026667D670, v0);
  return v0;
}

void sub_266585B3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26666C2F8();

  [a3 setBundleId_];
}

unint64_t sub_266585BA0()
{
  result = qword_28007D7E0;
  if (!qword_28007D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D7E0);
  }

  return result;
}

unint64_t sub_266585BF4()
{
  result = qword_28007D7E8;
  if (!qword_28007D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D7E8);
  }

  return result;
}

unint64_t sub_266585C48()
{
  result = qword_28007D7F0;
  if (!qword_28007D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D7F0);
  }

  return result;
}

unint64_t sub_266585C9C()
{
  result = qword_28007D818;
  if (!qword_28007D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D818);
  }

  return result;
}

unint64_t sub_266585CF0()
{
  result = qword_28007D820;
  if (!qword_28007D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D820);
  }

  return result;
}

unint64_t sub_266585D44()
{
  result = qword_28007D828;
  if (!qword_28007D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D828);
  }

  return result;
}

unint64_t sub_266585D98()
{
  result = qword_28007D838;
  if (!qword_28007D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D838);
  }

  return result;
}

unint64_t sub_266585DEC()
{
  result = qword_28007D840;
  if (!qword_28007D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D840);
  }

  return result;
}

unint64_t sub_266585E44()
{
  result = qword_28007D848;
  if (!qword_28007D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D848);
  }

  return result;
}

unint64_t sub_266585E9C()
{
  result = qword_28007D850;
  if (!qword_28007D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D850);
  }

  return result;
}

unint64_t sub_266585EF4()
{
  result = qword_28007D858;
  if (!qword_28007D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D858);
  }

  return result;
}

uint64_t sub_266585F48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_266585F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_266586024(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DIStringValue.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_266586170(_BYTE *result, int a2, int a3)
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

unint64_t sub_266586230()
{
  result = qword_28007D860;
  if (!qword_28007D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D860);
  }

  return result;
}

unint64_t sub_266586288()
{
  result = qword_28007D868;
  if (!qword_28007D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D868);
  }

  return result;
}

unint64_t sub_2665862E0()
{
  result = qword_28007D870;
  if (!qword_28007D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D870);
  }

  return result;
}

unint64_t sub_266586338()
{
  result = qword_28007D878;
  if (!qword_28007D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D878);
  }

  return result;
}

unint64_t sub_266586390()
{
  result = qword_28007D880;
  if (!qword_28007D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D880);
  }

  return result;
}

unint64_t sub_2665863E8()
{
  result = qword_28007D888;
  if (!qword_28007D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D888);
  }

  return result;
}

unint64_t sub_266586440()
{
  result = qword_28007D890;
  if (!qword_28007D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D890);
  }

  return result;
}

unint64_t sub_266586498()
{
  result = qword_28007D898;
  if (!qword_28007D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D898);
  }

  return result;
}

unint64_t sub_2665864F0()
{
  result = qword_28007D8A0;
  if (!qword_28007D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8A0);
  }

  return result;
}

unint64_t sub_266586548()
{
  result = qword_28007D8A8;
  if (!qword_28007D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8A8);
  }

  return result;
}

unint64_t sub_2665865A0()
{
  result = qword_28007D8B0;
  if (!qword_28007D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8B0);
  }

  return result;
}

unint64_t sub_2665865F8()
{
  result = qword_28007D8B8;
  if (!qword_28007D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8B8);
  }

  return result;
}

unint64_t sub_266586650()
{
  result = qword_28007D8C0;
  if (!qword_28007D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8C0);
  }

  return result;
}

unint64_t sub_2665866A8()
{
  result = qword_28007D8C8;
  if (!qword_28007D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8C8);
  }

  return result;
}

unint64_t sub_266586700()
{
  result = qword_28007D8D0;
  if (!qword_28007D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8D0);
  }

  return result;
}

unint64_t sub_266586758()
{
  result = qword_28007D8D8;
  if (!qword_28007D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D8D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1)
{

  return sub_26666C838();
}

id sub_266586830(void *a1)
{
  v2 = [a1 structuredLocation];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v2 geoLocation];
  if (!v4)
  {

LABEL_6:
    return 0;
  }

  v5 = v4;
  sub_266586910(v3);
  if (v6)
  {
    v7 = sub_26666C2F8();
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() placemarkWithLocation:v5 name:v7 postalAddress:0];

  return v8;
}

uint64_t sub_266586910(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26666C308();

  return v3;
}

uint64_t Snippet.Participant.init(displayName:status:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for Snippet.Participant(0);
  result = _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = a4;
  return result;
}

uint64_t type metadata accessor for Snippet.Participant(uint64_t a1)
{
  result = qword_28156C7D0;
  if (!qword_28156C7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266586A20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465747065636361 && a2 == 0xE800000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64656E696C636564 && a2 == 0xE800000000000000;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656279616DLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26666CAC8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266586B84(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      v3 = 0x747065636361;
      goto LABEL_4;
    case 2:
      v3 = 0x6E696C636564;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 3:
      result = 0x656279616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266586C00(uint64_t a1)
{
  v2 = sub_266587330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266586C3C(uint64_t a1)
{
  v2 = sub_266587330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266586C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266586A20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266586CA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266586B7C();
  *a1 = result;
  return result;
}

uint64_t sub_266586CD0(uint64_t a1)
{
  v2 = sub_266587234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266586D0C(uint64_t a1)
{
  v2 = sub_266587234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266586D48(uint64_t a1)
{
  v2 = sub_2665872DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266586D84(uint64_t a1)
{
  v2 = sub_2665872DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266586DC0(uint64_t a1)
{
  v2 = sub_266587288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266586DFC(uint64_t a1)
{
  v2 = sub_266587288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266586E38(uint64_t a1)
{
  v2 = sub_266587384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266586E74(uint64_t a1)
{
  v2 = sub_266587384();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ParticipantStatus.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_3();
  a23 = v24;
  a24 = v25;
  v76 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D8E0, &qword_266670B50);
  OUTLINED_FUNCTION_3_0();
  v74 = v30;
  v75 = v29;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_9();
  v73 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D8E8, &qword_266670B58);
  OUTLINED_FUNCTION_3_0();
  v71 = v34;
  v72 = v33;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8_9();
  v70 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D8F0, &qword_266670B60);
  OUTLINED_FUNCTION_3_0();
  v69[2] = v38;
  v69[3] = v37;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_12();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D8F8, &qword_266670B68);
  OUTLINED_FUNCTION_3_0();
  v69[1] = v41;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D900, &qword_266670B70);
  OUTLINED_FUNCTION_3_0();
  v45 = v44;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v46);
  v48 = v69 - v47;
  OUTLINED_FUNCTION_28_2(v28);
  v49 = sub_266587234();
  OUTLINED_FUNCTION_26_3(&_s17ParticipantStatusO10CodingKeysON, v50, v49);
  switch(v76)
  {
    case 1:
      OUTLINED_FUNCTION_12_5();
      v66 = sub_266587330();
      OUTLINED_FUNCTION_3_14(&_s17ParticipantStatusO18AcceptedCodingKeysON, &a12, v67, v68, v66);
      v54 = OUTLINED_FUNCTION_10_7();
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_20_4();
      v57 = sub_2665872DC();
      v58 = v70;
      OUTLINED_FUNCTION_3_14(&_s17ParticipantStatusO18DeclinedCodingKeysON, &a13, v59, v60, v57);
      v62 = v71;
      v61 = v72;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_25_3();
      v63 = sub_266587288();
      v58 = v73;
      OUTLINED_FUNCTION_3_14(&_s17ParticipantStatusO15MaybeCodingKeysON, &a14, v64, v65, v63);
      v62 = v74;
      v61 = v75;
LABEL_5:
      (*(v62 + 8))(v58, v61);
      break;
    default:
      a11 = 0;
      v51 = sub_266587384();
      OUTLINED_FUNCTION_3_14(&_s17ParticipantStatusO17UnknownCodingKeysON, &a11, v52, v53, v51);
      v54 = OUTLINED_FUNCTION_21_3();
      v56 = v40;
LABEL_7:
      v55(v54, v56);
      break;
  }

  (*(v45 + 8))(v48, v43);
  OUTLINED_FUNCTION_16_3();
}

unint64_t sub_266587234()
{
  result = qword_28007D908;
  if (!qword_28007D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D908);
  }

  return result;
}

unint64_t sub_266587288()
{
  result = qword_28007D910;
  if (!qword_28007D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D910);
  }

  return result;
}

unint64_t sub_2665872DC()
{
  result = qword_28007D918;
  if (!qword_28007D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D918);
  }

  return result;
}

unint64_t sub_266587330()
{
  result = qword_28007D920;
  if (!qword_28007D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D920);
  }

  return result;
}

unint64_t sub_266587384()
{
  result = qword_28007D928;
  if (!qword_28007D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D928);
  }

  return result;
}

void Snippet.ParticipantStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_15_3();
  a22 = v26;
  a23 = v27;
  v76 = v24;
  v29 = v28;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D930, &qword_266670B78);
  OUTLINED_FUNCTION_3_0();
  v72 = v30;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_9();
  v74 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D938, &qword_266670B80);
  OUTLINED_FUNCTION_3_0();
  v71[8] = v34;
  v71[9] = v33;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8_9();
  v71[10] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D940, &qword_266670B88);
  OUTLINED_FUNCTION_3_0();
  v71[6] = v38;
  v71[7] = v37;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D948, &qword_266670B90);
  OUTLINED_FUNCTION_3_0();
  v71[5] = v40;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D950, &unk_266670B98);
  OUTLINED_FUNCTION_3_0();
  v73 = v43;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v44);
  v46 = v71 - v45;
  OUTLINED_FUNCTION_28_2(v29);
  v47 = sub_266587234();
  OUTLINED_FUNCTION_17_3(&_s17ParticipantStatusO10CodingKeysON, v48, v47);
  if (!v24)
  {
    OUTLINED_FUNCTION_11_8();
    v49 = sub_266575DD8();
    if (v51 != v50 >> 1)
    {
      OUTLINED_FUNCTION_9_8();
      if (v57 == v58)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_24_4(v52, v53, v54, v55, v56);
      sub_266575DD4();
      OUTLINED_FUNCTION_27_4();
      if (v23 == v49 >> 1)
      {
        v59 = v46;
        v60 = v72;
        switch(v59)
        {
          case 1uLL:
            OUTLINED_FUNCTION_12_5();
            sub_266587330();
            OUTLINED_FUNCTION_1_14(&_s17ParticipantStatusO18AcceptedCodingKeysON, &a12);
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2uLL:
            OUTLINED_FUNCTION_20_4();
            sub_2665872DC();
            OUTLINED_FUNCTION_1_14(&_s17ParticipantStatusO18DeclinedCodingKeysON, &a13);
            swift_unknownObjectRelease();
LABEL_14:
            v61 = OUTLINED_FUNCTION_10_7();
            goto LABEL_15;
          case 3uLL:
            OUTLINED_FUNCTION_25_3();
            sub_266587288();
            OUTLINED_FUNCTION_16_5(&_s17ParticipantStatusO15MaybeCodingKeysON);
            swift_unknownObjectRelease();
            (*(v60 + 8))(v29, v25);
            goto LABEL_16;
          default:
            a11 = 0;
            sub_266587384();
            OUTLINED_FUNCTION_1_14(&_s17ParticipantStatusO17UnknownCodingKeysON, &a11);
            swift_unknownObjectRelease();
            v61 = OUTLINED_FUNCTION_10_7();
            v63 = v71[2];
LABEL_15:
            v62(v61, v63);
LABEL_16:
            v69 = OUTLINED_FUNCTION_7_8();
            v70(v69);
            __swift_destroy_boxed_opaque_existential_1(v76);
            break;
        }

        goto LABEL_10;
      }
    }

    v64 = sub_26666C848();
    swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v66 = &type metadata for Snippet.ParticipantStatus;
    sub_26666C978();
    OUTLINED_FUNCTION_15_5();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D84160], v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v67 = OUTLINED_FUNCTION_21_3();
    v68(v67, v42);
    v29 = v76;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
LABEL_10:
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2665878EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657A696E6167726FLL && a2 == 0xE900000000000072;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x5964657469766E69 && a2 == 0xEA0000000000756FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_26666CAC8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266587A54(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6C616E6F6974706FLL;
      break;
    case 2:
      result = 0x657A696E6167726FLL;
      break;
    case 3:
      result = 0x5964657469766E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266587B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665878EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266587B58(uint64_t a1)
{
  v2 = sub_2665893BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266587B94(uint64_t a1)
{
  v2 = sub_2665893BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266587BD0(uint64_t a1)
{
  v2 = sub_266589410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266587C0C(uint64_t a1)
{
  v2 = sub_266589410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266587C48(uint64_t a1)
{
  v2 = sub_2665894B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266587C84(uint64_t a1)
{
  v2 = sub_2665894B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266587CC0(uint64_t a1)
{
  v2 = sub_266589464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266587CFC(uint64_t a1)
{
  v2 = sub_266589464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266587D38(uint64_t a1)
{
  v2 = sub_26658950C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266587D74(uint64_t a1)
{
  v2 = sub_26658950C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ParticipantRole.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_3();
  a23 = v24;
  a24 = v25;
  v76 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D958, &qword_266670BA8);
  OUTLINED_FUNCTION_3_0();
  v74 = v30;
  v75 = v29;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_9();
  v73 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D960, &qword_266670BB0);
  OUTLINED_FUNCTION_3_0();
  v71 = v34;
  v72 = v33;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8_9();
  v70 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D968, &qword_266670BB8);
  OUTLINED_FUNCTION_3_0();
  v69[2] = v38;
  v69[3] = v37;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_12();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D970, &qword_266670BC0);
  OUTLINED_FUNCTION_3_0();
  v69[1] = v41;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D978, &qword_266670BC8);
  OUTLINED_FUNCTION_3_0();
  v45 = v44;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v46);
  v48 = v69 - v47;
  OUTLINED_FUNCTION_28_2(v28);
  v49 = sub_2665893BC();
  OUTLINED_FUNCTION_26_3(&_s15ParticipantRoleO10CodingKeysON, v50, v49);
  switch(v76)
  {
    case 1:
      OUTLINED_FUNCTION_12_5();
      v66 = sub_2665894B8();
      OUTLINED_FUNCTION_3_14(&_s15ParticipantRoleO18OptionalCodingKeysON, &a12, v67, v68, v66);
      v54 = OUTLINED_FUNCTION_10_7();
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_20_4();
      v57 = sub_266589464();
      v58 = v70;
      OUTLINED_FUNCTION_3_14(&_s15ParticipantRoleO19OrganizerCodingKeysON, &a13, v59, v60, v57);
      v62 = v71;
      v61 = v72;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_25_3();
      v63 = sub_266589410();
      v58 = v73;
      OUTLINED_FUNCTION_3_14(&_s15ParticipantRoleO20InvitedYouCodingKeysON, &a14, v64, v65, v63);
      v62 = v74;
      v61 = v75;
LABEL_5:
      (*(v62 + 8))(v58, v61);
      break;
    default:
      a11 = 0;
      v51 = sub_26658950C();
      OUTLINED_FUNCTION_3_14(&_s15ParticipantRoleO17UnknownCodingKeysON, &a11, v52, v53, v51);
      v54 = OUTLINED_FUNCTION_21_3();
      v56 = v40;
LABEL_7:
      v55(v54, v56);
      break;
  }

  (*(v45 + 8))(v48, v43);
  OUTLINED_FUNCTION_16_3();
}

void Snippet.ParticipantRole.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_15_3();
  a22 = v26;
  a23 = v27;
  v76 = v24;
  v29 = v28;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9A8, &qword_266670BD0);
  OUTLINED_FUNCTION_3_0();
  v72 = v30;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_9();
  v74 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9B0, &qword_266670BD8);
  OUTLINED_FUNCTION_3_0();
  v71[8] = v34;
  v71[9] = v33;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8_9();
  v71[10] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9B8, &qword_266670BE0);
  OUTLINED_FUNCTION_3_0();
  v71[6] = v38;
  v71[7] = v37;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9C0, &qword_266670BE8);
  OUTLINED_FUNCTION_3_0();
  v71[5] = v40;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9C8, &qword_266670BF0);
  OUTLINED_FUNCTION_3_0();
  v73 = v43;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v44);
  v46 = v71 - v45;
  OUTLINED_FUNCTION_28_2(v29);
  v47 = sub_2665893BC();
  OUTLINED_FUNCTION_17_3(&_s15ParticipantRoleO10CodingKeysON, v48, v47);
  if (!v24)
  {
    OUTLINED_FUNCTION_11_8();
    v49 = sub_266575DD8();
    if (v51 != v50 >> 1)
    {
      OUTLINED_FUNCTION_9_8();
      if (v57 == v58)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_24_4(v52, v53, v54, v55, v56);
      sub_266575DD4();
      OUTLINED_FUNCTION_27_4();
      if (v23 == v49 >> 1)
      {
        v59 = v46;
        v60 = v72;
        switch(v59)
        {
          case 1uLL:
            OUTLINED_FUNCTION_12_5();
            sub_2665894B8();
            OUTLINED_FUNCTION_1_14(&_s15ParticipantRoleO18OptionalCodingKeysON, &a12);
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2uLL:
            OUTLINED_FUNCTION_20_4();
            sub_266589464();
            OUTLINED_FUNCTION_1_14(&_s15ParticipantRoleO19OrganizerCodingKeysON, &a13);
            swift_unknownObjectRelease();
LABEL_14:
            v61 = OUTLINED_FUNCTION_10_7();
            goto LABEL_15;
          case 3uLL:
            OUTLINED_FUNCTION_25_3();
            sub_266589410();
            OUTLINED_FUNCTION_16_5(&_s15ParticipantRoleO20InvitedYouCodingKeysON);
            swift_unknownObjectRelease();
            (*(v60 + 8))(v29, v25);
            goto LABEL_16;
          default:
            a11 = 0;
            sub_26658950C();
            OUTLINED_FUNCTION_1_14(&_s15ParticipantRoleO17UnknownCodingKeysON, &a11);
            swift_unknownObjectRelease();
            v61 = OUTLINED_FUNCTION_10_7();
            v63 = v71[2];
LABEL_15:
            v62(v61, v63);
LABEL_16:
            v69 = OUTLINED_FUNCTION_7_8();
            v70(v69);
            __swift_destroy_boxed_opaque_existential_1(v76);
            break;
        }

        goto LABEL_10;
      }
    }

    v64 = sub_26666C848();
    swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v66 = &type metadata for Snippet.ParticipantRole;
    sub_26666C978();
    OUTLINED_FUNCTION_15_5();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D84160], v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v67 = OUTLINED_FUNCTION_21_3();
    v68(v67, v42);
    v29 = v76;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
LABEL_10:
  OUTLINED_FUNCTION_16_3();
}

uint64_t Snippet.Participant.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Snippet.Participant.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippet.Participant.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippet.Participant(0) + 28);
  sub_266668D68();
  OUTLINED_FUNCTION_18_2();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Snippet.Participant.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Snippet.Participant(0) + 28);
  sub_266668D68();
  OUTLINED_FUNCTION_18_2();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_2665888D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Snippet.Participant(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v10 = *(v9 + 28);
  _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
  v11 = [a1 person];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 displayName];
    v14 = sub_26666C308();
    v16 = v15;

    *v8 = v14;
    *(v8 + 8) = v16;
    if (sub_266666780())
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    *(v8 + 17) = v17;
    v18 = [a1 status];

    *(v8 + 16) = sub_266588B14(v18);
    sub_266589704(v8, a2);
    __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
    return sub_266589768(v8);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v20 = sub_26666C168();
    __swift_project_value_buffer(v20, qword_28156D7E8);
    v21 = sub_26666C148();
    v22 = sub_26666C608();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_266549000, v21, v22, "INEventParticipant does not have a person object", v23, 2u);
      MEMORY[0x266789690](v23, -1, -1);
    }

    sub_266668D68();
    OUTLINED_FUNCTION_18_2();
    (*(v24 + 8))(v8 + v10);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_266588B14(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 0;
  }

  else
  {
    return (0x1020302010300uLL >> (8 * a1));
  }
}

uint64_t sub_266588B38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701605234 && a2 == 0xE400000000000000;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 25705 && a2 == 0xE200000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26666CAC8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266588C88(char a1)
{
  result = 0x4E79616C70736964;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 1701605234;
      break;
    case 3:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266588D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266588B38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266588D2C(uint64_t a1)
{
  v2 = sub_266589560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266588D68(uint64_t a1)
{
  v2 = sub_266589560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Participant.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9D0, &qword_266670BF8);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266589560();
  sub_26666CBE8();
  v12[15] = 0;
  OUTLINED_FUNCTION_22_1();
  sub_26666CA48();
  if (!v2)
  {
    v12[14] = *(v3 + 16);
    OUTLINED_FUNCTION_12_5();
    sub_2665895B4();
    OUTLINED_FUNCTION_22_1();
    sub_26666CA78();
    v12[12] = *(v3 + 17);
    v12[11] = 2;
    sub_266589608();
    OUTLINED_FUNCTION_22_1();
    sub_26666CA78();
    type metadata accessor for Snippet.Participant(0);
    v12[10] = 3;
    sub_266668D68();
    sub_2665898A8(&qword_28007D9F0, MEMORY[0x277CC95F8]);
    OUTLINED_FUNCTION_22_1();
    sub_26666CA78();
  }

  return (*(v7 + 8))(v10, v5);
}

void Snippet.Participant.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_15_3();
  v28 = v27;
  v44 = v29;
  v47 = sub_266668D68();
  OUTLINED_FUNCTION_3_0();
  v45 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v34 = v33 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D9F8, &qword_266670C00);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v35);
  v36 = type metadata accessor for Snippet.Participant(0);
  MEMORY[0x28223BE20](v36 - 8);
  OUTLINED_FUNCTION_1_0();
  v39 = v38 - v37;
  v46 = *(v40 + 36);
  _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_266589560();
  sub_26666CBD8();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    (*(v45 + 8))(v39 + v46, v47);
  }

  else
  {
    OUTLINED_FUNCTION_23_3();
    *v39 = sub_26666C9B8();
    *(v39 + 8) = v41;
    OUTLINED_FUNCTION_12_5();
    sub_26658965C();
    OUTLINED_FUNCTION_23_3();
    sub_26666C9E8();
    *(v39 + 16) = a15;
    sub_2665896B0();
    OUTLINED_FUNCTION_23_3();
    sub_26666C9E8();
    *(v39 + 17) = a13;
    sub_2665898A8(&qword_28007DA10, MEMORY[0x277CC9618]);
    OUTLINED_FUNCTION_23_3();
    sub_26666C9E8();
    v42 = OUTLINED_FUNCTION_4_13();
    v43(v42);
    (*(v45 + 40))(v39 + v46, v34, v47);
    sub_266589704(v39, v44);
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_266589768(v39);
  }

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_266589318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_266668D68();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_2665893BC()
{
  result = qword_28007D980;
  if (!qword_28007D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D980);
  }

  return result;
}

unint64_t sub_266589410()
{
  result = qword_28007D988;
  if (!qword_28007D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D988);
  }

  return result;
}

unint64_t sub_266589464()
{
  result = qword_28007D990;
  if (!qword_28007D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D990);
  }

  return result;
}

unint64_t sub_2665894B8()
{
  result = qword_28007D998;
  if (!qword_28007D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D998);
  }

  return result;
}

unint64_t sub_26658950C()
{
  result = qword_28007D9A0;
  if (!qword_28007D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D9A0);
  }

  return result;
}

unint64_t sub_266589560()
{
  result = qword_28007D9D8;
  if (!qword_28007D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D9D8);
  }

  return result;
}

unint64_t sub_2665895B4()
{
  result = qword_28007D9E0;
  if (!qword_28007D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D9E0);
  }

  return result;
}

unint64_t sub_266589608()
{
  result = qword_28007D9E8;
  if (!qword_28007D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D9E8);
  }

  return result;
}

unint64_t sub_26658965C()
{
  result = qword_28007DA00;
  if (!qword_28007DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA00);
  }

  return result;
}

unint64_t sub_2665896B0()
{
  result = qword_28007DA08;
  if (!qword_28007DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA08);
  }

  return result;
}

uint64_t sub_266589704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266589768(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2665897C8()
{
  result = qword_28007DA18;
  if (!qword_28007DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA18);
  }

  return result;
}

unint64_t sub_266589820()
{
  result = qword_28007DA20;
  if (!qword_28007DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA20);
  }

  return result;
}

uint64_t sub_2665898A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_266668D68();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266589934(uint64_t a1)
{
  result = sub_266668D68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_266589A28(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266589B48()
{
  result = qword_28007DA30;
  if (!qword_28007DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA30);
  }

  return result;
}

unint64_t sub_266589BA0()
{
  result = qword_28007DA38;
  if (!qword_28007DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA38);
  }

  return result;
}

unint64_t sub_266589BF8()
{
  result = qword_28007DA40;
  if (!qword_28007DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA40);
  }

  return result;
}

unint64_t sub_266589C50()
{
  result = qword_28007DA48;
  if (!qword_28007DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA48);
  }

  return result;
}

unint64_t sub_266589CA8()
{
  result = qword_28007DA50;
  if (!qword_28007DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA50);
  }

  return result;
}

unint64_t sub_266589D00()
{
  result = qword_28007DA58;
  if (!qword_28007DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA58);
  }

  return result;
}

unint64_t sub_266589D58()
{
  result = qword_28007DA60;
  if (!qword_28007DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA60);
  }

  return result;
}

unint64_t sub_266589DB0()
{
  result = qword_28007DA68;
  if (!qword_28007DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA68);
  }

  return result;
}

unint64_t sub_266589E08()
{
  result = qword_28007DA70;
  if (!qword_28007DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA70);
  }

  return result;
}

unint64_t sub_266589E60()
{
  result = qword_28007DA78;
  if (!qword_28007DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA78);
  }

  return result;
}

unint64_t sub_266589EB8()
{
  result = qword_28007DA80;
  if (!qword_28007DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA80);
  }

  return result;
}

unint64_t sub_266589F10()
{
  result = qword_28007DA88;
  if (!qword_28007DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA88);
  }

  return result;
}

unint64_t sub_266589F68()
{
  result = qword_28007DA90;
  if (!qword_28007DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA90);
  }

  return result;
}

unint64_t sub_266589FC0()
{
  result = qword_28007DA98;
  if (!qword_28007DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DA98);
  }

  return result;
}

unint64_t sub_26658A018()
{
  result = qword_28007DAA0;
  if (!qword_28007DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAA0);
  }

  return result;
}

unint64_t sub_26658A070()
{
  result = qword_28007DAA8;
  if (!qword_28007DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAA8);
  }

  return result;
}

unint64_t sub_26658A0C8()
{
  result = qword_28007DAB0;
  if (!qword_28007DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAB0);
  }

  return result;
}

unint64_t sub_26658A120()
{
  result = qword_28007DAB8;
  if (!qword_28007DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAB8);
  }

  return result;
}

unint64_t sub_26658A178()
{
  result = qword_28007DAC0;
  if (!qword_28007DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAC0);
  }

  return result;
}

unint64_t sub_26658A1D0()
{
  result = qword_28007DAC8;
  if (!qword_28007DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAC8);
  }

  return result;
}

unint64_t sub_26658A228()
{
  result = qword_28007DAD0;
  if (!qword_28007DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAD0);
  }

  return result;
}

unint64_t sub_26658A280()
{
  result = qword_28007DAD8;
  if (!qword_28007DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAD8);
  }

  return result;
}

unint64_t sub_26658A2D8()
{
  result = qword_28007DAE0;
  if (!qword_28007DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAE0);
  }

  return result;
}

unint64_t sub_26658A330()
{
  result = qword_28007DAE8;
  if (!qword_28007DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAE8);
  }

  return result;
}

unint64_t sub_26658A388()
{
  result = qword_28007DAF0;
  if (!qword_28007DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DAF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1, uint64_t a2)
{

  return sub_26666C968();
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26666CA08();
}

uint64_t OUTLINED_FUNCTION_11_8()
{
  *(v4 - 192) = v0;
  *(v4 - 184) = v1;
  *(v4 - 176) = v2;
  *(v4 - 88) = v3;

  return sub_26666C9F8();
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return sub_26666C838();
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1)
{

  return sub_26666C968();
}

uint64_t OUTLINED_FUNCTION_17_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26666CBD8();
}

uint64_t OUTLINED_FUNCTION_26_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26666CBE8();
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_26658A5F0()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_26658A628(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  v2 = a1[19];

  *(v1 + 27) = v2;
  return v1;
}

double sub_26658A670@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x800000026667CED0 == a2;
  if (v6 || (OUTLINED_FUNCTION_2_6(0xD000000000000014, 0x800000026667CED0) & 1) != 0)
  {
    v9 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  v10 = a1 == 0xD000000000000016 && 0x800000026667CEF0 == a2;
  if (v10 || (OUTLINED_FUNCTION_2_6(0xD000000000000016, 0x800000026667CEF0) & 1) != 0)
  {
    v9 = v3[25];
    goto LABEL_7;
  }

  v11 = a1 == 0xD000000000000015 && 0x800000026667CF10 == a2;
  if (v11 || (OUTLINED_FUNCTION_2_6(0xD000000000000015, 0x800000026667CF10) & 1) != 0)
  {
    v9 = v3[26];
    goto LABEL_7;
  }

  v12 = a1 == 0xD00000000000001ALL && 0x800000026667CF30 == a2;
  if (v12 || (OUTLINED_FUNCTION_2_6(0xD00000000000001ALL, 0x800000026667CF30) & 1) != 0)
  {
    v9 = v3[27];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

unint64_t sub_26658A78C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26658A7D8(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26658A878@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26658A78C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26658A8A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26658A7D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26658A8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26658A78C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26658A910(uint64_t a1)
{
  v2 = sub_26658AEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26658A94C(uint64_t a1)
{
  v2 = sub_26658AEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26658A988()
{

  return MEMORY[0x2821FE8D8](v0, 28, 7);
}

uint64_t sub_26658A9E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB18, &qword_266671868);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26658AEF8();
  sub_26666CBE8();
  v11 = v3[24];
  v20 = 0;
  OUTLINED_FUNCTION_0_8(v11, &v20);
  if (!v2)
  {
    v12 = v3[25];
    v19 = 1;
    OUTLINED_FUNCTION_0_8(v12, &v19);
    v13 = v3[26];
    v18 = 2;
    OUTLINED_FUNCTION_0_8(v13, &v18);
    v14 = v3[27];
    v17 = 3;
    OUTLINED_FUNCTION_0_8(v14, &v17);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_26658AB5C(void *a1)
{
  v2 = swift_allocObject();
  sub_26658ABD0(a1);
  return v2;
}

uint64_t sub_26658ABD0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB08, &qword_266671860);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26658AEF8();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarResultSetSingleOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_1_8(&v17) & 1;
    v16 = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_8(&v16) & 1;
    v15 = 2;
    *(v1 + 26) = OUTLINED_FUNCTION_1_8(&v15) & 1;
    v14 = 3;
    v12 = OUTLINED_FUNCTION_1_8(&v14);
    (*(v7 + 8))(v10, v5);
    *(v3 + 27) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26658AE00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26658AB5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26658AEB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarResultSetSingleOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26658AEF8()
{
  result = qword_28007DB10;
  if (!qword_28007DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DB10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarResultSetSingleOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26658B02C()
{
  result = qword_28007DB20;
  if (!qword_28007DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DB20);
  }

  return result;
}

unint64_t sub_26658B084()
{
  result = qword_28007DB28;
  if (!qword_28007DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DB28);
  }

  return result;
}

unint64_t sub_26658B0DC()
{
  result = qword_28007DB30;
  if (!qword_28007DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DB30);
  }

  return result;
}

uint64_t sub_26658B138(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26658B178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26658B1E0()
{
  OUTLINED_FUNCTION_14();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v1[15] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[16] = OUTLINED_FUNCTION_19();
  v6 = sub_266669708();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v7);
  v1[20] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26658B39C, 0, 0);
}

void sub_26658B39C()
{
  v1 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB38, &qword_26667BAE0);
  v2 = sub_266669CB8();
  v3 = sub_26658C0E0(v2);
  v5 = v4;
  v6 = *__swift_project_boxed_opaque_existential_1((v1 + 8), *(v1 + 32));
  v7 = type metadata accessor for EventProvider();
  *(v0 + 16) = v6;
  *(v0 + 40) = v7;
  *(v0 + 48) = &off_287806290;
  sub_26655358C(v0 + 16, v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

    v8 = sub_26655A8B4();
    v9 = sub_26665140C(v3, v5, v8);

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (v9)
    {
      sub_2665EF638(v9);
      if (v10)
      {
        v11 = v10;
        goto LABEL_9;
      }
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v9 = 0;
  }

  v12 = [**(v0 + 112) searchQuery];
  if (v12)
  {
    v13 = v12;
    sub_26666C308();
    v11 = v14;
  }

  else
  {

    v11 = 0;
  }

LABEL_9:
  *(v0 + 200) = v9;
  v15 = sub_266669CC8();
  v16 = [v15 unsupportedReason];

  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v17 = *(v0 + 192);
  sub_26666C358();

  v18 = sub_26666BDA8();
  v19 = 1;
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  if (v11)
  {
    sub_26666C358();

    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 184), v19, 1, v18);
  v20 = swift_task_alloc();
  *(v0 + 208) = v20;
  *v20 = v0;
  v20[1] = sub_26658B688;

  sub_2665DDDDC();
}

uint64_t sub_26658B688(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 216) = v1;

  v7 = *(v4 + 192);
  v8 = *(v4 + 184);
  if (v1)
  {
    OUTLINED_FUNCTION_27(v8);
    OUTLINED_FUNCTION_27(v7);
    v9 = sub_26658BC9C;
  }

  else
  {
    *(v5 + 224) = a1;
    OUTLINED_FUNCTION_27(v8);
    OUTLINED_FUNCTION_27(v7);
    v9 = sub_26658B80C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26658B80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[21];
  __swift_project_boxed_opaque_existential_1((v14[14] + 56), *(v14[14] + 80));
  v16 = type metadata accessor for Snippet(0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  *v15 = 0;
  v15[1] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_2666696D8();
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = swift_task_alloc();
  v14[29] = v32;
  *v32 = v14;
  v32[1] = sub_26658B9A0;
  OUTLINED_FUNCTION_4_7();

  return sub_2665643AC(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26658B9A0()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *(*v0 + 128);
  v8 = *(*v0 + 120);
  v9 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;

  sub_266557D74(v8, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v7, &unk_28007DE20, &unk_26666EAE0);
  (*(v5 + 8))(v4, v6);
  sub_266557D74(v3, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v2, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v1, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_26658BBDC()
{
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_5_8(*(v0 + 224));

  OUTLINED_FUNCTION_4_7();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26658BC9C()
{
  OUTLINED_FUNCTION_5_8(*(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26658BD78()
{
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB38, &qword_26667BAE0);
  v1 = sub_266669CB8();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26658BDEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266557FE8;

  return sub_26658B1E0();
}

uint64_t sub_26658BE94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26658BF28;

  return sub_26658BD58(a1);
}

uint64_t sub_26658BF28()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26658C01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2665582C8;

  return MEMORY[0x2821B9E00](a1, a2, a3, a4);
}

uint64_t sub_26658C0E0(void *a1)
{
  v2 = [a1 targetEventIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26666C308();

  return v3;
}

void OUTLINED_FUNCTION_5_8(void *a1@<X8>)
{
}

uint64_t sub_26658C170()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v1[10] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[11] = OUTLINED_FUNCTION_19();
  v6 = sub_266669708();
  v1[12] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[15] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26658C2E0()
{
  OUTLINED_FUNCTION_11();
  sub_26655358C(*(v0 + 72) + 16, v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 144) = v1;
  *(v0 + 160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v2 = type metadata accessor for Snippet(0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = sub_26658C3D0;

  return sub_26658C9DC();
}

uint64_t sub_26658C3D0()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  v5[22] = v0;

  if (v0)
  {
    v8 = v5[17];
    sub_266557D74(v5[16], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v8, &unk_28007DE30, &unk_26666EAF0);
  }

  else
  {
    v5[23] = v3;
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26658C510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_2666696D8();
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_26656CFC4();
  v27 = swift_task_alloc();
  v14[24] = v27;
  *v27 = v14;
  v27[1] = sub_26658C664;
  v28 = v14[23];
  v29 = v14[17];
  v31 = v14[15];
  v30 = v14[16];
  v32 = v14[14];
  v33 = v14[7];

  return sub_2665643AC(v33, v29, v30, v28, 0, 0, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26658C664()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[23];
  v17 = v1[17];
  v3 = v1[16];
  v4 = v1[15];
  v5 = v1[14];
  v6 = v1[13];
  v7 = v1[12];
  v8 = v1[11];
  v9 = v1[10];
  v10 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v11 = v10;

  sub_266557D74(v9, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v8, &unk_28007DE20, &unk_26666EAE0);
  (*(v6 + 8))(v5, v7);
  sub_266557D74(v4, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v3, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v17, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26658C8B4()
{
  OUTLINED_FUNCTION_19_5();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_26658C948()
{
  OUTLINED_FUNCTION_19_5();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_26658C9DC()
{
  OUTLINED_FUNCTION_14();
  v1[9] = v2;
  v1[10] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v3);
  v1[11] = OUTLINED_FUNCTION_19();
  v4 = sub_266668D98();
  v1[12] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[13] = v5;
  v1[14] = OUTLINED_FUNCTION_19();
  v6 = sub_266669AE8();
  v1[15] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[16] = v7;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26658CB10()
{
  v58 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  sub_266669CD8();
  v4 = sub_266669AD8();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);

  v8 = sub_2665FAB78(v4, v6);
  v9 = v8;
  if (v8 == 4)
  {
    v10 = sub_26656CBFC();
    OUTLINED_FUNCTION_49(&type metadata for CommonError, v10);
    *v11 = v4;
    *(v11 + 8) = v6;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v12 = 1;
LABEL_29:
    *(v11 + 32) = v12;
    swift_willThrow();
    goto LABEL_30;
  }

  LOBYTE(v13) = v8;

  if (v9 != 1)
  {
    if (v9 == 3)
    {
      v13 = *(v0[10] + 8);
      v14 = sub_266669CC8();
      v15 = [v14 unsupportedReason];

      if (v15 >= 0xFFFFFFFF80000000)
      {
        if (v15 <= 0x7FFFFFFF)
        {
          v16 = v0[17];
          v17 = v0[15];
          v18 = v0[10];
          sub_266669CD8();
          v56 = sub_266669AC8();
          v55 = v19;
          v7(v16, v17);
          v20 = sub_266669CB8();
          v21 = sub_26658DE5C(v20);
          __swift_project_boxed_opaque_existential_1((v18 + 56), *(v18 + 80));
          sub_266669648();
          v22 = v0[14];
          v23 = v0[11];
          sub_26666C358();

          v24 = sub_26666BDA8();
          __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
          v25 = swift_task_alloc();
          *(v25 + 16) = v21;
          *(v25 + 24) = v22;
          v0[22] = sub_26656DD3C(sub_266570114, v25, v56, v55 & 1);

          v26 = swift_task_alloc();
          v0[23] = v26;
          *v26 = v0;
          v26[1] = sub_26658D324;
          OUTLINED_FUNCTION_17_4();

          return sub_2665D916C();
        }

        __break(1u);
        goto LABEL_38;
      }

      __break(1u);
    }

    else if (qword_28156C150 == -1)
    {
LABEL_15:
      v32 = sub_26666C168();
      __swift_project_value_buffer(v32, qword_28156D7E8);
      v33 = sub_26666C148();
      v34 = sub_26666C608();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v57 = v36;
        *v35 = 136315138;
        if (v13)
        {
          if (v13 == 1)
          {
            v37 = 0x656D695465746164;
          }

          else
          {
            v37 = 0x6E6F697461636F6CLL;
          }

          if (v13 == 1)
          {
            v38 = 0xED000065676E6152;
          }

          else
          {
            v38 = 0xE800000000000000;
          }
        }

        else
        {
          v38 = 0xE500000000000000;
          v37 = 0x656C746974;
        }

        v44 = sub_2665BFC90(v37, v38, &v57);

        *(v35 + 4) = v44;
        _os_log_impl(&dword_266549000, v33, v34, "[CreateEvent UnsupportedValueStrategy] unexpected parameter: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      v45 = sub_26656CBFC();
      v46 = OUTLINED_FUNCTION_49(&type metadata for CommonError, v45);
      OUTLINED_FUNCTION_15_6(v46, v47);
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_1_1(&qword_28156C150);
    goto LABEL_15;
  }

  v29 = sub_266669CC8();
  v0[5] = sub_266552C44(0, &qword_28007DB48, 0x277CD3D40);
  v0[2] = v29;
  v13 = sub_2665F052C(v0 + 2);
  v0[19] = v13;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = &off_279BCF000;
  if ([v13 unsupportedReason] != 1)
  {
    if (qword_28156C150 == -1)
    {
LABEL_24:
      v39 = sub_26666C168();
      __swift_project_value_buffer(v39, qword_28156D7E8);
      v40 = v13;
      v41 = sub_26666C148();
      v42 = sub_26666C608();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 134217984;
        *(v43 + 4) = [v40 v4[485]];

        _os_log_impl(&dword_266549000, v41, v42, "[CreateEvent UnsupportedValueStrategy] unexpected unsupported reason: %ld", v43, 0xCu);
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
      }

      v50 = sub_26656CBFC();
      v51 = OUTLINED_FUNCTION_49(&type metadata for CommonError, v50);
      OUTLINED_FUNCTION_15_6(v51, v52);
      *(v53 + 32) = v54;
      swift_willThrow();

LABEL_30:
      OUTLINED_FUNCTION_5_9();

      OUTLINED_FUNCTION_24_1();
      OUTLINED_FUNCTION_17_4();

      __asm { BRAA            X1, X16 }
    }

LABEL_38:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
    goto LABEL_24;
  }

  v30 = swift_task_alloc();
  v0[20] = v30;
  *v30 = v0;
  v30[1] = sub_26658D19C;
  OUTLINED_FUNCTION_17_4();

  return sub_266657B8C();
}