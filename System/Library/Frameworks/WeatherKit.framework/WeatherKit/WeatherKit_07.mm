unint64_t sub_23B42B228()
{
  result = qword_280B43110;
  if (!qword_280B43110)
  {
    sub_23B50AD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43110);
  }

  return result;
}

uint64_t sub_23B42B280(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t WeatherCondition.accessibilityDescription.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_103;
      }

      goto LABEL_80;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_47;
      }

      goto LABEL_93;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_98;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_47;
      }

LABEL_93:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_47:
      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_17_5();
      break;
    case 6:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_12_8(0x7264u);
      break;
    case 7:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_16_4(0x6C66u);
      break;
    case 8:
      if (qword_280B43260 == -1)
      {
        goto LABEL_61;
      }

      goto LABEL_97;
    case 9:
      if (qword_280B43260 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_86;
    case 0xA:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_18_8();
      break;
    case 0xB:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0xC:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_103;
    case 0xD:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_103;
    case 0xE:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_19_7(25960);
      break;
    case 0xF:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_19_7(25960);
      break;
    case 0x10:
      if (qword_280B43260 == -1)
      {
        goto LABEL_61;
      }

LABEL_97:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_61:
      OUTLINED_FUNCTION_3_20();
      break;
    case 0x11:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_10_11(0x7568u);
      break;
    case 0x12:
      if (qword_280B43260 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_86;
    case 0x13:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x14:
      if (qword_280B43260 == -1)
      {
        goto LABEL_49;
      }

      goto LABEL_94;
    case 0x15:
      if (qword_280B43260 == -1)
      {
        goto LABEL_49;
      }

LABEL_94:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_49:
      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_11_6();
      break;
    case 0x16:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_103;
    case 0x17:
      if (qword_280B43260 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_86;
    case 0x18:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x19:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x1A:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

LABEL_103:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_80:
      OUTLINED_FUNCTION_5_0();
      break;
    case 0x1B:
      if (qword_280B43260 != -1)
      {
LABEL_86:
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

LABEL_22:
      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_8();
      break;
    case 0x1C:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x1D:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_13_6(0x6873206E7573);
      break;
    case 0x1E:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_9_10(0x6874u);
      break;
    case 0x1F:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

LABEL_87:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_26:
      OUTLINED_FUNCTION_1_14();
      break;
    case 0x20:
      if (qword_280B43260 != -1)
      {
LABEL_98:
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

LABEL_66:
      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_14_11();
      break;
    case 0x21:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_7_19();
      break;
    default:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_15_6(0x6C62u);
      break;
  }

  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

WeatherKit::WeatherCondition_optional __swiftcall WeatherCondition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D844();

  v5 = 0;
  v6 = 16;
  switch(v3)
  {
    case 0:
      goto LABEL_26;
    case 1:
      v5 = 1;
      goto LABEL_26;
    case 2:
      v5 = 2;
      goto LABEL_26;
    case 3:
      v5 = 3;
      goto LABEL_26;
    case 4:
      v5 = 4;
      goto LABEL_26;
    case 5:
      v5 = 5;
      goto LABEL_26;
    case 6:
      v5 = 6;
      goto LABEL_26;
    case 7:
      v5 = 7;
      goto LABEL_26;
    case 8:
      v5 = 8;
      goto LABEL_26;
    case 9:
      v5 = 9;
      goto LABEL_26;
    case 10:
      v5 = 10;
      goto LABEL_26;
    case 11:
      v5 = 11;
      goto LABEL_26;
    case 12:
      v5 = 12;
      goto LABEL_26;
    case 13:
      v5 = 13;
      goto LABEL_26;
    case 14:
      v5 = 14;
      goto LABEL_26;
    case 15:
      v5 = 15;
LABEL_26:
      v6 = v5;
      break;
    case 16:
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    default:
      v6 = 34;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_23B42BFB4()
{
  result = qword_27E132D10;
  if (!qword_27E132D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132D18, &qword_23B514F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132D10);
  }

  return result;
}

unint64_t sub_23B42C01C()
{
  result = qword_280B42690;
  if (!qword_280B42690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42690);
  }

  return result;
}

unint64_t sub_23B42C070()
{
  result = qword_280B42EA8;
  if (!qword_280B42EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42EA8);
  }

  return result;
}

void sub_23B42C0C4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id *), uint64_t a6)
{
  v7 = v6;
  v58[3] = a6;
  v59 = a5;
  v10 = sub_23B50AD24();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[2] = *a1;
  sub_23B50AD14();
  sub_23B50ABD4();
  v15 = v14;
  (*(v11 + 8))(v13, v10);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v16 = sub_23B50CDF4();
  v17 = __swift_project_value_buffer(v16, qword_280B4E9D8);
  v18 = a3;
  v19 = sub_23B50CDD4();
  v20 = sub_23B50D4C4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v58[1] = v17;
    v23 = v22;
    v60 = v18;
    v61 = v22;
    *v21 = 141558531;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_23B3A3BC8();
    v24 = v18;
    v25 = sub_23B50D1A4();
    v27 = sub_23B391F1C(v25, v26, &v61);

    *(v21 + 14) = v27;
    v7 = v6;
    *(v21 + 22) = 2050;
    *(v21 + 24) = v15;
    _os_log_impl(&dword_23B38D000, v19, v20, "Got response for fetch of available data sets; location=%{private,mask.hash}s, duration=%{public}f", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x23EE9E260](v23, -1, -1);
    MEMORY[0x23EE9E260](v21, -1, -1);
  }

  v28 = v7;
  sub_23B3F486C();
  if (v7)
  {
    v29 = v18;
    v30 = v7;
    v31 = sub_23B50CDD4();
    v32 = sub_23B50D4B4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v60 = v29;
      v61 = v34;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      sub_23B3A3BC8();
      v35 = v29;
      v36 = sub_23B50D1A4();
      v38 = sub_23B391F1C(v36, v37, &v61);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2082;
      ErrorValue = swift_getErrorValue();
      v40 = MEMORY[0x28223BE20](ErrorValue);
      (*(v42 + 16))(v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
      v43 = sub_23B50D184();
      v45 = sub_23B391F1C(v43, v44, &v61);

      *(v33 + 24) = v45;
      _os_log_impl(&dword_23B38D000, v31, v32, "Unexpected error when attempting to parse the available data sets object; location=%{private,mask.hash}s, error=%{public}s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EE9E260](v34, -1, -1);
      MEMORY[0x23EE9E260](v33, -1, -1);
    }

    sub_23B3E3D54();
    v46 = swift_allocError();
    *v47 = 1;
    v61 = v46;
    v62 = 1;
    v59(&v61);

    sub_23B42DBFC(v61, v62);
  }

  else
  {
    v48 = v61;
    v49 = v18;
    v50 = sub_23B50CDD4();
    v51 = sub_23B50D4C4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v60 = v49;
      v61 = v53;
      *v52 = 141558275;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      sub_23B3A3BC8();
      v54 = v49;
      v55 = sub_23B50D1A4();
      v57 = sub_23B391F1C(v55, v56, &v61);

      *(v52 + 14) = v57;
      _os_log_impl(&dword_23B38D000, v50, v51, "Successfully parsed available data sets; location=%{private,mask.hash}s", v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x23EE9E260](v53, -1, -1);
      MEMORY[0x23EE9E260](v52, -1, -1);
    }

    v61 = v48;
    v62 = 0;
    v59(&v61);
  }
}

void sub_23B42C6C8(void *a1, void *a2, void (*a3)(uint64_t *))
{
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v6 = sub_23B50CDF4();
  __swift_project_value_buffer(v6, qword_280B4E9D8);
  v7 = a1;
  v8 = a2;
  v9 = sub_23B50CDD4();
  v10 = sub_23B50D4B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 141558787;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_23B3A3BC8();
    v14 = v8;
    v15 = sub_23B50D1A4();
    v17 = sub_23B391F1C(v15, v16, &v24);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v18 = sub_23B50D874();
    v20 = sub_23B391F1C(v18, v19, &v24);

    *(v11 + 24) = v20;
    *(v11 + 32) = 2112;
    v21 = a1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v22;
    *v12 = v22;
    _os_log_impl(&dword_23B38D000, v9, v10, "Encountered an error when fetching available data sets; location=%{private,mask.hash}s, error=%{public}s %@", v11, 0x2Au);
    sub_23B398890(v12, &qword_27E132D80, &qword_23B5192E0);
    MEMORY[0x23EE9E260](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v13, -1, -1);
    MEMORY[0x23EE9E260](v11, -1, -1);
  }

  v24 = a1;
  v25 = 1;
  v23 = a1;
  a3(&v24);
  sub_23B42DBFC(v24, v25);
}

uint64_t sub_23B42C948(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v39 = a5;
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  MEMORY[0x28223BE20](v38);
  v10 = (v36 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v36 - v12;
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v14 = sub_23B50CDF4();
  __swift_project_value_buffer(v14, qword_280B4E9D8);

  v15 = a4;
  v16 = a1;
  v17 = sub_23B50CDD4();
  v18 = sub_23B50D4B4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36[1] = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41 = v21;
    *v20 = 136446979;
    *(v20 + 4) = sub_23B391F1C(v37, a3, &v41);
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    v40 = v15;
    sub_23B3A3BC8();
    v22 = v15;
    v23 = sub_23B50D1A4();
    v25 = sub_23B391F1C(v23, v24, &v41);

    *(v20 + 24) = v25;
    *(v20 + 32) = 2082;
    ErrorValue = swift_getErrorValue();
    v27 = MEMORY[0x28223BE20](ErrorValue);
    (*(v29 + 16))(v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
    v30 = sub_23B50D184();
    v32 = sub_23B391F1C(v30, v31, &v41);

    *(v20 + 34) = v32;
    _os_log_impl(&dword_23B38D000, v17, v18, "Error while trying to fetch air quality scale; scaleName=%{public}s, location=%{private,mask.hash}s, error=%{public}s", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v21, -1, -1);
    MEMORY[0x23EE9E260](v20, -1, -1);
  }

  v33 = sub_23B50C3C4();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v33);
  v34 = *(v38 + 48);
  *v10 = v39;
  sub_23B3AEA68(v13, v10 + v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D78, &qword_23B515168);
  swift_allocObject();

  return sub_23B50B094();
}

uint64_t sub_23B42CD1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v165 = a3;
  v175 = a2;
  v176 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v166 = v7;
  OUTLINED_FUNCTION_24_0();
  v177 = sub_23B50C3C4();
  OUTLINED_FUNCTION_5();
  v170 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v167 = v11 - v10;
  OUTLINED_FUNCTION_24_0();
  v172 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v168 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_0();
  v164 = v14 - v15;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_1();
  v169 = v17;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_76();
  v171 = v19;
  OUTLINED_FUNCTION_24_0();
  v20 = sub_23B50BAE4();
  OUTLINED_FUNCTION_5();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_0();
  v163 = (v24 - v25);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v26);
  v28 = (&v162 - v27);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  v183 = v30;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_76();
  v173 = v32;
  OUTLINED_FUNCTION_24_0();
  sub_23B50B654();
  OUTLINED_FUNCTION_5();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_0();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v162 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D68, &qword_23B515158);
  v43 = OUTLINED_FUNCTION_3(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_0();
  v174 = v44 - v45;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_76();
  v178 = v47;
  v48 = *(a1 + 16);
  v180 = v20;
  v181 = v22;
  if (v48)
  {
    OUTLINED_FUNCTION_52_0();
    v50 = a1 + v49;
    v51 = *(v34 + 72);
    v182 = (v22 + 32);
    v52 = MEMORY[0x277D84F90];
    v179 = v28;
    do
    {
      sub_23B3A52DC(v50, v41);
      sub_23B3A39AC(v41, v38);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_23B3A582C(v38);
      }

      else if (__swift_getEnumTagSinglePayload(v38, 1, v20) == 1)
      {
        sub_23B398890(v38, &qword_27E132D68, &qword_23B515158);
      }

      else
      {
        v53 = *v182;
        (*v182)(v183, v38, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3A5A20(0, *(v52 + 16) + 1, 1, v52);
          v52 = v58;
        }

        v55 = *(v52 + 16);
        v54 = *(v52 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_23B3A5A20(v54 > 1, v55 + 1, 1, v52);
          v52 = v59;
        }

        *(v52 + 16) = v55 + 1;
        v20 = v180;
        OUTLINED_FUNCTION_52_0();
        v53(v52 + v56 + *(v57 + 72) * v55, v183, v20);
        v28 = v179;
      }

      v50 += v51;
      --v48;
    }

    while (v48);
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  v60 = v178;
  sub_23B3A60F0(v52, v178);

  v61 = v174;
  sub_23B3A61A0(v60, v174);
  if (__swift_getEnumTagSinglePayload(v61, 1, v20) == 1)
  {
    sub_23B398890(v61, &qword_27E132D68, &qword_23B515158);
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280B43440);
    }

    v62 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v62, qword_280B4E9D8);
    v63 = v175;
    v64 = sub_23B50CDD4();
    sub_23B50D4C4();

    if (OUTLINED_FUNCTION_20_7())
    {
      v65 = swift_slowAlloc();
      v66 = OUTLINED_FUNCTION_42_0();
      v184 = v63;
      v185[0] = v66;
      OUTLINED_FUNCTION_5_13(7.2225e-34);
      OUTLINED_FUNCTION_24_6();
      v67 = v63;
      v68 = sub_23B50D1A4();
      v70 = sub_23B391F1C(v68, v69, v185);

      *(v65 + 14) = v70;
      OUTLINED_FUNCTION_7_20();
      _os_log_impl(v71, v72, v73, v74, v75, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_9_11();
    }

LABEL_21:
    sub_23B398890(v60, &qword_27E132D68, &qword_23B515158);
    v76 = 1;
    v77 = v176;
    v78 = v177;
    return __swift_storeEnumTagSinglePayload(v77, v76, 1, v78);
  }

  v80 = v181;
  v81 = v173;
  (*(v181 + 32))(v173, v61, v20);
  v82 = v81;
  v183 = sub_23B50BAC4();
  if (!v83)
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280B43440);
    }

    v107 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v107, qword_280B4E9D8);
    v108 = *(v80 + 16);
    v108(v28, v81, v20);
    v109 = v175;
    v110 = sub_23B50CDD4();
    v111 = sub_23B50D4B4();

    if (OUTLINED_FUNCTION_20_7())
    {
      OUTLINED_FUNCTION_42_0();
      LODWORD(v182) = v111;
      v183 = OUTLINED_FUNCTION_23_7();
      v185[0] = v183;
      *v28 = 136315651;
      v180 = v110;
      v108(v163, v28, v20);
      v112 = sub_23B50D184();
      v114 = v113;
      v115 = *(v80 + 8);
      v115(v28, v20);
      v116 = sub_23B391F1C(v112, v114, v185);

      *(v28 + 4) = v116;
      OUTLINED_FUNCTION_3_21();
      v184 = v109;
      v117 = sub_23B3A3BC8();
      v118 = v109;
      v119 = sub_23B50D1A4();
      sub_23B391F1C(v119, v120, v185);
      OUTLINED_FUNCTION_25_5();
      v28[3] = v117;
      v121 = v180;
      _os_log_impl(&dword_23B38D000, v180, v182, "Missing scale name for air quality data; data will be unavailable; airQuality=%s, location=%{private,mask.hash}s", v28, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_9_11();

      v115(v173, v20);
    }

    else
    {

      v157 = *(v80 + 8);
      v157(v28, v20);
      v157(v81, v20);
    }

    goto LABEL_21;
  }

  v174 = v83;
  v84 = v171;
  sub_23B50AD14();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v85 = sub_23B50CDF4();
  OUTLINED_FUNCTION_88(v85, qword_280B4E9D8);
  v87 = v168;
  v86 = v169;
  v88 = *(v168 + 16);
  v89 = v172;
  v88(v169, v84, v172);
  v90 = v175;
  v182 = v82;
  v91 = sub_23B50CDD4();
  v92 = sub_23B50D4C4();

  v93 = OUTLINED_FUNCTION_20_7();
  v179 = v90;
  if (v93)
  {
    v94 = OUTLINED_FUNCTION_42_0();
    v175 = swift_slowAlloc();
    v184 = v90;
    v185[0] = v175;
    *v94 = 141558531;
    *(v94 + 4) = 1752392040;
    *(v94 + 12) = 2081;
    sub_23B3A3BC8();
    v95 = v90;
    v96 = sub_23B50D1A4();
    v98 = sub_23B391F1C(v96, v97, v185);

    *(v94 + 14) = v98;
    *(v94 + 22) = 2082;
    v99 = v169;
    v88(v164, v169, v89);
    v100 = sub_23B50D1A4();
    v102 = v101;
    v103 = v89;
    v104 = *(v87 + 8);
    (v104)(v99, v103);
    v105 = sub_23B391F1C(v100, v102, v185);
    v106 = v178;

    *(v94 + 24) = v105;
    _os_log_impl(&dword_23B38D000, v91, v92, "About to fetch AQI Scale from cache; location=%{private,mask.hash}s, startTime=%{public}s", v94, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v122 = v89;
    v104 = *(v87 + 8);
    (v104)(v86, v122);
    v106 = v178;
  }

  v123 = v166;
  v124 = v183;
  v125 = v174;
  sub_23B4FF508(v183, v174, v166);
  v78 = v177;
  if (__swift_getEnumTagSinglePayload(v123, 1, v177) == 1)
  {
    sub_23B398890(v123, &qword_27E131EA8, &qword_23B5194F0);
    v126 = v179;

    v127 = sub_23B50CDD4();
    sub_23B50D4B4();

    if (OUTLINED_FUNCTION_20_7())
    {
      OUTLINED_FUNCTION_42_0();
      v182 = v104;
      v185[0] = OUTLINED_FUNCTION_23_7();
      *v104 = 136446723;
      v128 = sub_23B391F1C(v124, v125, v185);

      *(v104 + 4) = v128;
      OUTLINED_FUNCTION_3_21();
      v184 = v126;
      sub_23B3A3BC8();
      v129 = v126;
      v130 = sub_23B50D1A4();
      v132 = sub_23B391F1C(v130, v131, v185);

      *(v104 + 24) = v132;
      OUTLINED_FUNCTION_7_20();
      _os_log_impl(v133, v134, v135, v136, v137, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_9_11();

      v182(v171, v172);
    }

    else
    {

      (v104)(v171, v172);
    }

    v158 = OUTLINED_FUNCTION_26_7();
    v159(v158);
    sub_23B398890(v106, &qword_27E132D68, &qword_23B515158);
    v76 = 1;
    v77 = v176;
  }

  else
  {

    v138 = *(v170 + 32);
    v170 += 32;
    v183 = v138;
    v138(v167, v123, v78);
    v139 = v164;
    sub_23B50AD14();
    v140 = v171;
    sub_23B50ABD4();
    v142 = v141;
    v143 = v172;
    (v104)(v139, v172);
    v144 = v179;
    v145 = sub_23B50CDD4();
    sub_23B50D4C4();

    if (OUTLINED_FUNCTION_20_7())
    {
      v146 = OUTLINED_FUNCTION_42_0();
      v182 = v104;
      v147 = v146;
      v148 = OUTLINED_FUNCTION_42_0();
      v184 = v144;
      v185[0] = v148;
      OUTLINED_FUNCTION_5_13(7.2226e-34);
      OUTLINED_FUNCTION_24_6();
      v149 = v144;
      v150 = sub_23B50D1A4();
      sub_23B391F1C(v150, v151, v185);
      OUTLINED_FUNCTION_25_5();
      *(v147 + 14) = v144;
      *(v147 + 22) = 2050;
      *(v147 + 24) = v142;
      OUTLINED_FUNCTION_7_20();
      _os_log_impl(v152, v153, v154, v155, v156, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v148);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_9_11();

      v182(v140, v172);
    }

    else
    {

      (v104)(v140, v143);
    }

    v160 = OUTLINED_FUNCTION_26_7();
    v161(v160);
    sub_23B398890(v106, &qword_27E132D68, &qword_23B515158);
    v77 = v176;
    v78 = v177;
    v183(v176, v167, v177);
    v76 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v77, v76, 1, v78);
}

void sub_23B42DB1C(void *a1)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_21_5();
  sub_23B42C0C4(a1, v1 + v5, *(v1 + v3), *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_23B42DBFC(id a1, char a2)
{
  if (a2)
  {
  }
}

Swift::Double __swiftcall Double.init(_:)(Swift::Int_optional a1)
{
  result = a1.value;
  if (a1.is_nil)
  {
    return 0.0;
  }

  return result;
}

void WeatherAttribution.init(deprecatedName:deprecatedSourceURL:deprecatedLogoURL:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v6 = OUTLINED_FUNCTION_3(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_49();
  sub_23B3C4528(v4, v0);
  sub_23B3C4528(v2, v9);
  v11 = type metadata accessor for WeatherAttribution.Storage(0);
  OUTLINED_FUNCTION_45(v11);
  sub_23B3C4BA8();
  sub_23B398890(v2, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(v4, &qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

void sub_23B42DD28()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v13 = OUTLINED_FUNCTION_3(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_30_4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132DE0, &qword_23B515490);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - v24;
  v26 = *(v4 + 16) == *(v2 + 16) && *(v4 + 24) == *(v2 + 24);
  if (!v26 && (sub_23B50D834() & 1) == 0 || (OUTLINED_FUNCTION_44_2() & 1) == 0 || (OUTLINED_FUNCTION_44_2() & 1) == 0 || (OUTLINED_FUNCTION_44_2() & 1) == 0 || (OUTLINED_FUNCTION_44_2() & 1) == 0)
  {
    goto LABEL_30;
  }

  v46 = v7;
  v27 = OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL;
  v28 = v4 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL;
  v29 = *(v18 + 48);
  sub_23B3C4528(v28, v25);
  sub_23B3C4528(v2 + v27, &v25[v29]);
  OUTLINED_FUNCTION_46(v25);
  if (!v26)
  {
    sub_23B3C4528(v25, v0);
    OUTLINED_FUNCTION_46(&v25[v29]);
    v31 = v46;
    if (!v30)
    {
      (*(v46 + 32))(v11, &v25[v29], v5);
      OUTLINED_FUNCTION_3_22();
      sub_23B431684(v33, v34, MEMORY[0x277CC9278]);
      HIDWORD(v45) = sub_23B50D134();
      v35 = *(v31 + 8);
      v36 = OUTLINED_FUNCTION_65();
      v35(v36);
      (v35)(v0, v5);
      sub_23B398890(v25, &qword_27E131FC0, &qword_23B515170);
      if ((v45 & 0x100000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    (*(v46 + 8))(v0, v5);
LABEL_18:
    v32 = v25;
LABEL_29:
    sub_23B398890(v32, &qword_27E132DE0, &qword_23B515490);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_46(&v25[v29]);
  if (!v26)
  {
    goto LABEL_18;
  }

  sub_23B398890(v25, &qword_27E131FC0, &qword_23B515170);
LABEL_20:
  v37 = OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL;
  v38 = *(v18 + 48);
  sub_23B3C4528(v2 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL, v22);
  sub_23B3C4528(v2 + v37, v22 + v38);
  OUTLINED_FUNCTION_46(v22);
  if (!v26)
  {
    sub_23B3C4528(v22, v16);
    OUTLINED_FUNCTION_46(v22 + v38);
    if (!v39)
    {
      v40 = v46;
      (*(v46 + 32))(v11, v22 + v38, v5);
      OUTLINED_FUNCTION_3_22();
      sub_23B431684(v41, v42, MEMORY[0x277CC9278]);
      sub_23B50D134();
      v43 = *(v40 + 8);
      v44 = OUTLINED_FUNCTION_65();
      v43(v44);
      (v43)(v16, v5);
      sub_23B398890(v22, &qword_27E131FC0, &qword_23B515170);
      goto LABEL_30;
    }

    (*(v46 + 8))(v16, v5);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_46(v22 + v38);
  if (!v26)
  {
LABEL_28:
    v32 = v22;
    goto LABEL_29;
  }

  sub_23B398890(v22, &qword_27E131FC0, &qword_23B515170);
LABEL_30:
  OUTLINED_FUNCTION_20();
}

void sub_23B42E190()
{
  OUTLINED_FUNCTION_21();
  v3 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v11 = OUTLINED_FUNCTION_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_4();
  sub_23B50D1C4();
  OUTLINED_FUNCTION_3_22();
  sub_23B431684(v13, v14, MEMORY[0x277CC9270]);
  sub_23B50D0E4();
  OUTLINED_FUNCTION_27_6();
  OUTLINED_FUNCTION_27_6();
  OUTLINED_FUNCTION_27_6();
  sub_23B3C4528(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL, v2);
  OUTLINED_FUNCTION_51(v2, 1, v3);
  if (v15)
  {
    sub_23B50D8E4();
  }

  else
  {
    (*(v5 + 32))(v9, v2, v3);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_42_4();
    v16 = OUTLINED_FUNCTION_36();
    v17(v16);
  }

  sub_23B3C4528(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL, v1);
  v18 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_51(v18, v19, v3);
  if (v15)
  {
    sub_23B50D8E4();
  }

  else
  {
    (*(v5 + 32))(v9, v1, v3);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_42_4();
    v20 = OUTLINED_FUNCTION_36();
    v21(v20);
  }

  OUTLINED_FUNCTION_20();
}

void sub_23B42E3E8()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  v11 = OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_legalPageURL;
  v12 = sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  v14 = *(v13 + 32);
  v14(v0 + v11, v8, v12);
  v14(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_squareMarkURL, v6, v12);
  v14(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkDarkURL, v4, v12);
  v14(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkLightURL, v2, v12);
  OUTLINED_FUNCTION_43_4(OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL);
  OUTLINED_FUNCTION_43_4(OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL);
  OUTLINED_FUNCTION_20();
}

void sub_23B42E4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v36 = a4;
  v37 = a5;
  v43 = a1;
  v10 = *v7;
  v41 = a6;
  v42 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  v23 = sub_23B50AB34();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v40 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v39 = &v35 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v35 - v29;
  MEMORY[0x28223BE20](v31);
  v44 = &v35 - v32;
  if (a2)
  {
    v38 = a2;
  }

  else
  {
    v33 = v7[3];
    v43 = v7[2];
    v38 = v33;
  }

  sub_23B3C4528(a3, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    (*(v24 + 16))(v44, v7 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_legalPageURL, v23);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v23);

    if (EnumTagSinglePayload != 1)
    {
      sub_23B398890(v22, &qword_27E131FC0, &qword_23B515170);
    }
  }

  else
  {
    (*(v24 + 32))(v44, v22, v23);
  }

  sub_23B3C4528(v36, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v23) == 1)
  {
    (*(v24 + 16))(v30, v7 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_squareMarkURL, v23);
    if (__swift_getEnumTagSinglePayload(v19, 1, v23) != 1)
    {
      sub_23B398890(v19, &qword_27E131FC0, &qword_23B515170);
    }
  }

  else
  {
    (*(v24 + 32))(v30, v19, v23);
  }

  sub_23B3C4528(v37, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v23) == 1)
  {
    (*(v24 + 16))(v39, v7 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkDarkURL, v23);
    if (__swift_getEnumTagSinglePayload(v16, 1, v23) != 1)
    {
      sub_23B398890(v16, &qword_27E131FC0, &qword_23B515170);
    }
  }

  else
  {
    (*(v24 + 32))(v39, v16, v23);
  }

  sub_23B3C4528(v41, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
  {
    (*(v24 + 16))(v40, v7 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkLightURL, v23);
    if (__swift_getEnumTagSinglePayload(v13, 1, v23) != 1)
    {
      sub_23B398890(v13, &qword_27E131FC0, &qword_23B515170);
    }
  }

  else
  {
    (*(v24 + 32))(v40, v13, v23);
  }

  swift_allocObject();
  sub_23B42E3E8();
}

uint64_t sub_23B42E9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6761506C6167656CLL && a2 == 0xEC0000004C525565;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614D657261757173 && a2 == 0xED00004C52556B72;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000023B531900 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000023B531920 == a2;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5255656372756F73 && a2 == 0xE90000000000004CLL;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4C52556F676F6CLL && a2 == 0xE700000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_23B50D834();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_23B42EC3C(char a1)
{
  result = 0x4E65636976726573;
  switch(a1)
  {
    case 1:
      result = 0x6761506C6167656CLL;
      break;
    case 2:
      result = 0x614D657261757173;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x5255656372756F73;
      break;
    case 6:
      result = 0x4C52556F676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B42ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B42E9E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B42ED64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B42EC34();
  *a1 = result;
  return result;
}

uint64_t sub_23B42ED8C(uint64_t a1)
{
  v2 = sub_23B431630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B42EDC8(uint64_t a1)
{
  v2 = sub_23B431630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B42EE04()
{

  v1 = OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_legalPageURL;
  v2 = sub_23B50AB34();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_squareMarkURL, v2);
  v3(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkDarkURL, v2);
  v3(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkLightURL, v2);
  sub_23B398890(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL, &qword_27E131FC0, &qword_23B515170);
  return v0;
}

uint64_t sub_23B42EF14()
{
  v0 = sub_23B42EE04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B42EF68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132DC0, &qword_23B515480);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431630();
  sub_23B50D974();
  v8[15] = 0;
  sub_23B50D7A4();
  if (!v1)
  {
    v8[14] = 1;
    sub_23B50AB34();
    sub_23B431684(&qword_280B42B68, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_23B50D7F4();
    v8[13] = 2;
    sub_23B50D7F4();
    v8[12] = 3;
    sub_23B50D7F4();
    v8[11] = 4;
    sub_23B50D7F4();
    v8[10] = 5;
    sub_23B50D794();
    v8[9] = 6;
    sub_23B50D794();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23B42F238()
{
  sub_23B50D8C4();
  sub_23B42E190();
  return sub_23B50D914();
}

void *sub_23B42F2C4(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v50 = v2;
  v51 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v36 - v9;
  v10 = sub_23B50AB34();
  v11 = *(v10 - 8);
  v44 = v10;
  v45 = v11;
  MEMORY[0x28223BE20](v10);
  v46 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132DD0, &qword_23B515488);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v23 = &v36 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431630();
  v48 = v23;
  v24 = v50;
  sub_23B50D964();
  if (v24)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v18;
    v25 = v46;
    v50 = a1;
    v58 = 0;
    v26 = v1;
    v1[2] = sub_23B50D6E4();
    v1[3] = v27;
    v57 = 1;
    v28 = sub_23B431684(&qword_27E132DD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v29 = v44;
    sub_23B50D734();
    v37 = *(v45 + 32);
    v38 = v45 + 32;
    v37(v1 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_legalPageURL, v21, v29);
    v56 = 2;
    v30 = v41;
    v39 = v28;
    v40 = 0;
    sub_23B50D734();
    v31 = v29;
    v37(v1 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_squareMarkURL, v30, v29);
    v55 = 3;
    sub_23B50D734();
    a1 = v50;
    v3 = v1;
    v37(v1 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkDarkURL, v15, v31);
    v54 = 4;
    sub_23B50D734();
    v37(v1 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkLightURL, v25, v31);
    v53 = 5;
    v33 = v43;
    v34 = v48;
    sub_23B50D6D4();
    sub_23B3C4E78(v33, v26 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL);
    v52 = 6;
    v35 = v42;
    sub_23B50D6D4();
    (*(v47 + 8))(v34, v49);
    sub_23B3C4E78(v35, v26 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void *sub_23B42FA6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B42F278(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23B42FB34@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherAttribution.serviceName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void WeatherAttribution.serviceName.setter()
{
  OUTLINED_FUNCTION_21();
  v5 = v4;
  v12 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_9_12(v3, 1);
  OUTLINED_FUNCTION_11_7(v0);
  sub_23B42E4E4(v12, v5, v3, v2, v1, v0);

  OUTLINED_FUNCTION_26_8(v0);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_21_6();

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

void (*WeatherAttribution.serviceName.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v3;

  return sub_23B42FD24;
}

void sub_23B42FD24(uint64_t a1, char a2)
{
  if (a2)
  {

    WeatherAttribution.serviceName.setter();
  }

  else
  {
    WeatherAttribution.serviceName.setter();
  }
}

void WeatherAttribution.legalPageURL.setter()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_34_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_39_4();
  v7();
  OUTLINED_FUNCTION_9_12(v1, 0);
  v8 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_7_21(v8, v9);
  v10 = OUTLINED_FUNCTION_10_12();
  v11(v10);
  OUTLINED_FUNCTION_26_8(v0);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_21_6();

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherAttribution.legalPageURL.modify()
{
  v1 = OUTLINED_FUNCTION_37_4();
  v2 = __swift_coroFrameAllocStub(v1);
  *(v0 + 8) = OUTLINED_FUNCTION_15_7(v2);
  OUTLINED_FUNCTION_5();
  *(v0 + 16) = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_36_3(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_17_6(v7);
  OUTLINED_FUNCTION_4_16();
  v8();
  return OUTLINED_FUNCTION_35_6();
}

void WeatherAttribution.squareMarkURL.setter()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_34_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49();
  v9 = OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_11_7(v3);
  OUTLINED_FUNCTION_39_4();
  v10();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  OUTLINED_FUNCTION_11_7(v1);
  v11 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_7_21(v11, v12);
  v13 = OUTLINED_FUNCTION_10_12();
  v14(v13);
  OUTLINED_FUNCTION_26_8(v0);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_21_6();

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherAttribution.squareMarkURL.modify()
{
  v1 = OUTLINED_FUNCTION_37_4();
  v2 = __swift_coroFrameAllocStub(v1);
  *(v0 + 8) = OUTLINED_FUNCTION_15_7(v2);
  OUTLINED_FUNCTION_5();
  *(v0 + 16) = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_36_3(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_17_6(v7);
  OUTLINED_FUNCTION_4_16();
  v8();
  return OUTLINED_FUNCTION_35_6();
}

void WeatherAttribution.combinedMarkDarkURL.setter()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_34_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49();
  v9 = OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_11_7(v3);
  OUTLINED_FUNCTION_11_7(v2);
  OUTLINED_FUNCTION_39_4();
  v10();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v9);
  v11 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_7_21(v11, v12);
  v13 = OUTLINED_FUNCTION_10_12();
  v14(v13);
  OUTLINED_FUNCTION_26_8(v0);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_21_6();

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherAttribution.combinedMarkDarkURL.modify()
{
  v1 = OUTLINED_FUNCTION_37_4();
  v2 = __swift_coroFrameAllocStub(v1);
  *(v0 + 8) = OUTLINED_FUNCTION_15_7(v2);
  OUTLINED_FUNCTION_5();
  *(v0 + 16) = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_36_3(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_17_6(v7);
  OUTLINED_FUNCTION_4_16();
  v8();
  return OUTLINED_FUNCTION_35_6();
}

uint64_t sub_23B43050C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  v8 = *(v7 + 16);

  return v8(a2, v4 + v5, v6);
}

uint64_t sub_23B4305B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_36();
  v11(v10);
  return a5(v9);
}

void WeatherAttribution.combinedMarkLightURL.setter()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_34_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_9_12(v1, 1);
  OUTLINED_FUNCTION_39_4();
  v7();
  OUTLINED_FUNCTION_7_21(v0, 0);
  v8 = OUTLINED_FUNCTION_10_12();
  v9(v8);
  OUTLINED_FUNCTION_26_8(v0);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_21_6();

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherAttribution.combinedMarkLightURL.modify()
{
  v1 = OUTLINED_FUNCTION_37_4();
  v2 = __swift_coroFrameAllocStub(v1);
  *(v0 + 8) = OUTLINED_FUNCTION_15_7(v2);
  OUTLINED_FUNCTION_5();
  *(v0 + 16) = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_36_3(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_17_6(v7);
  OUTLINED_FUNCTION_4_16();
  v8();
  return OUTLINED_FUNCTION_35_6();
}

void sub_23B430894(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  if (a2)
  {
    v7 = *(v4 + 8);
    v8 = *(v4 + 16);
    v9 = OUTLINED_FUNCTION_36();
    v10(v9);
    a3(v6);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    a3(*(v4 + 32));
  }

  free(v5);
  free(v6);

  free(v4);
}

uint64_t sub_23B430998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  (*(v7 + 16))(a2, v4 + v5, v6);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v6);
}

void WeatherAttribution.init(serviceName:legalPageURL:squareMarkURL:combinedMarkDarkURL:combinedMarkLightURL:)()
{
  OUTLINED_FUNCTION_32_4();
  v1 = v0;
  v2 = type metadata accessor for WeatherAttribution.Storage(0);
  OUTLINED_FUNCTION_45(v2);
  OUTLINED_FUNCTION_28_4();
  sub_23B42E3E8();
  *v1 = v3;
}

void WeatherAttribution.init(serviceName:legalPageURL:squareMarkURL:combinedMarkDarkURL:combinedMarkLightURL:name:sourceURL:logoURL:logo:)(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_32_4();

  sub_23B398890(a4, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(a3, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(a2, &qword_27E131FC0, &qword_23B515170);
  v4 = type metadata accessor for WeatherAttribution.Storage(0);
  OUTLINED_FUNCTION_45(v4);
  OUTLINED_FUNCTION_28_4();
  sub_23B42E3E8();
  *a1 = v5;
}

void WeatherAttribution.init(name:sourceURL:logoURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v30 = OUTLINED_FUNCTION_3(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_38_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_30_4();
  sub_23B50AB04();
  v39 = sub_23B50AB34();
  OUTLINED_FUNCTION_51(v20, 1, v39);
  if (v40)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_23B50AB04();
  v41 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_51(v41, v42, v39);
  if (v40)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_23B50AB04();
  OUTLINED_FUNCTION_51(v36, 1, v39);
  if (v40)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_23B50AB04();
  OUTLINED_FUNCTION_51(v33, 1, v39);
  if (!v40)
  {

    sub_23B398890(v24, &qword_27E131FC0, &qword_23B515170);
    sub_23B398890(v26, &qword_27E131FC0, &qword_23B515170);
    v43 = type metadata accessor for WeatherAttribution.Storage(0);
    OUTLINED_FUNCTION_45(v43);
    sub_23B42E3E8();
    *v28 = v44;
    OUTLINED_FUNCTION_20();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_23B430D78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23B50D834();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23B430E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B430D78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23B430E38(uint64_t a1)
{
  v2 = sub_23B431070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B430E74(uint64_t a1)
{
  v2 = sub_23B431070();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static WeatherAttribution.== infix(_:_:)()
{
  type metadata accessor for WeatherAttribution.Storage(0);
  OUTLINED_FUNCTION_65();
  sub_23B42DD28();
  return v0 & 1;
}

uint64_t WeatherAttribution.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D88, &qword_23B515178);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431070();

  sub_23B50D974();
  v13[1] = v9;
  type metadata accessor for WeatherAttribution.Storage(0);
  OUTLINED_FUNCTION_14_12();
  sub_23B431684(v10, v11, &unk_23B515404);
  sub_23B50D7F4();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B431070()
{
  result = qword_280B428B8;
  if (!qword_280B428B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B428B8);
  }

  return result;
}

uint64_t WeatherAttribution.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D98, &qword_23B515180);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431070();
  sub_23B50D964();
  if (!v2)
  {
    type metadata accessor for WeatherAttribution.Storage(0);
    OUTLINED_FUNCTION_14_12();
    sub_23B431684(v11, v12, &unk_23B5153DC);
    sub_23B50D734();
    (*(v7 + 8))(v10, v5);
    *a2 = v14[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WeatherAttribution.hashValue.getter()
{
  sub_23B50D8C4();
  sub_23B42E190();
  return sub_23B50D914();
}

uint64_t sub_23B4312EC(uint64_t a1)
{
  sub_23B50D8C4();
  sub_23B42E190();
  return sub_23B50D914();
}

unint64_t sub_23B431330()
{
  result = qword_27E132DA8;
  if (!qword_27E132DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DA8);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherAttribution.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_23B4314E4()
{
  result = qword_27E132DB0;
  if (!qword_27E132DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DB0);
  }

  return result;
}

unint64_t sub_23B431584()
{
  result = qword_280B428A8;
  if (!qword_280B428A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B428A8);
  }

  return result;
}

unint64_t sub_23B4315DC()
{
  result = qword_280B428B0;
  if (!qword_280B428B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B428B0);
  }

  return result;
}

unint64_t sub_23B431630()
{
  result = qword_27E132DC8;
  if (!qword_27E132DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DC8);
  }

  return result;
}

uint64_t sub_23B431684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for WeatherAttribution.Storage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherAttribution.Storage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B431834()
{
  result = qword_27E132DE8;
  if (!qword_27E132DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DE8);
  }

  return result;
}

unint64_t sub_23B43188C()
{
  result = qword_27E132DF0;
  if (!qword_27E132DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DF0);
  }

  return result;
}

unint64_t sub_23B4318E4()
{
  result = qword_27E132DF8;
  if (!qword_27E132DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DF8);
  }

  return result;
}

WeatherKit::CloudCoverByAltitude __swiftcall CloudCoverByAltitude.init(low:medium:high:)(Swift::Double low, Swift::Double medium, Swift::Double high)
{
  *v3 = low;
  v3[1] = medium;
  v3[2] = high;
  result.high = high;
  result.medium = medium;
  result.low = low;
  return result;
}

uint64_t sub_23B4319E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1751607656 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

uint64_t sub_23B431AEC(char a1)
{
  if (!a1)
  {
    return 7827308;
  }

  if (a1 == 1)
  {
    return 0x6D756964656DLL;
  }

  return 1751607656;
}

uint64_t sub_23B431B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4319E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B431B60(uint64_t a1)
{
  v2 = sub_23B431D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B431B9C(uint64_t a1)
{
  v2 = sub_23B431D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudCoverByAltitude.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132E00, &qword_23B5155A0);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431D78();
  sub_23B50D974();
  v13 = 0;
  OUTLINED_FUNCTION_0_24(&v13);
  if (!v1)
  {
    v12 = 1;
    OUTLINED_FUNCTION_0_24(&v12);
    v11 = 2;
    OUTLINED_FUNCTION_0_24(&v11);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B431D78()
{
  result = qword_27E132E08;
  if (!qword_27E132E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132E08);
  }

  return result;
}

uint64_t CloudCoverByAltitude.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132E10, &qword_23B5155A8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431D78();
  sub_23B50D964();
  if (!v2)
  {
    v21 = 0;
    OUTLINED_FUNCTION_1_15(&v21);
    v12 = v11;
    v20 = 1;
    OUTLINED_FUNCTION_1_15(&v20);
    v15 = v14;
    v19 = 2;
    OUTLINED_FUNCTION_1_15(&v19);
    v17 = v16;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v15;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudCoverByAltitude.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x23EE9DB70](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x23EE9DB70](*&v5);
}

uint64_t CloudCoverByAltitude.hashValue.getter()
{
  sub_23B50D8C4();
  CloudCoverByAltitude.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B432078(uint64_t a1)
{
  sub_23B50D8C4();
  CloudCoverByAltitude.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B4320CC()
{
  result = qword_27E132E18;
  if (!qword_27E132E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132E18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudCoverByAltitude(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CloudCoverByAltitude(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudCoverByAltitude.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B43225C()
{
  result = qword_27E132E20;
  if (!qword_27E132E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132E20);
  }

  return result;
}

unint64_t sub_23B4322B4()
{
  result = qword_27E132E28;
  if (!qword_27E132E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132E28);
  }

  return result;
}

unint64_t sub_23B43230C()
{
  result = qword_27E132E30;
  if (!qword_27E132E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132E30);
  }

  return result;
}

uint64_t sub_23B432448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23B50C7D4();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v6);
  return sub_23B50D474();
}

void static Trend<>.mock(baselineKind:baselineValue:currentValue:deviation:baselineStartDate:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v25[1] = a1;
  v26 = a3;
  v28 = a2;
  v29 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_5();
  v27 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_1_16();
  v14(v13);
  sub_23B3C7DF4(v26, v4);
  OUTLINED_FUNCTION_2_20();
  if (v15)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_2_20();
    if (!v15)
    {
      sub_23B3CF54C(v4);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_15();
    v17(v16);
  }

  v18 = OUTLINED_FUNCTION_9_13();
  v19(v18);
  v20 = OUTLINED_FUNCTION_7_22();
  v21(v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  v23 = OUTLINED_FUNCTION_3_23(v22);
  v24(v23);
  sub_23B3E3DA8(v5, v11, &qword_27E132228, &unk_23B511AB0);
  OUTLINED_FUNCTION_10_13();
}

{
  v25[1] = a1;
  v26 = a3;
  v28 = a2;
  v29 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_5();
  v27 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_1_16();
  v14(v13);
  sub_23B3C7DF4(v26, v4);
  OUTLINED_FUNCTION_2_20();
  if (v15)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_2_20();
    if (!v15)
    {
      sub_23B3CF54C(v4);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_15();
    v17(v16);
  }

  v18 = OUTLINED_FUNCTION_9_13();
  v19(v18);
  v20 = OUTLINED_FUNCTION_7_22();
  v21(v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  v23 = OUTLINED_FUNCTION_3_23(v22);
  v24(v23);
  sub_23B3E3DA8(v5, v11, &qword_27E132218, &qword_23B515890);
  OUTLINED_FUNCTION_10_13();
}

uint64_t sub_23B432AE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_7_0();
  v5 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = OUTLINED_FUNCTION_2_21(v9);
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  OUTLINED_FUNCTION_7_23(v9[8]);
  *(v13 + 16) = 1;
  OUTLINED_FUNCTION_1_17(v9[9]);
  OUTLINED_FUNCTION_5_16(v9[10]);
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  v18 = OUTLINED_FUNCTION_0_25();

  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void static WeatherQuery<A>.daily(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_0();
  v6 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v17 = v16 - v15;
  v18 = *(v8 + 16);
  v18(v4, a1, v6);
  v18(v3, a2, v6);
  sub_23B50AA04();
  (*(v13 + 32))(v2, v17, v11);
  OUTLINED_FUNCTION_12_9(v2);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  v20 = OUTLINED_FUNCTION_2_21(v19);
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v11);
  type metadata accessor for InstantWeatherQueryOptions(0);
  v23 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  v27 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_7_23(v19[8]);
  *(v31 + 16) = 1;
  OUTLINED_FUNCTION_1_17(v19[9]);
  OUTLINED_FUNCTION_5_16(v19[10]);
}

void static WeatherQuery<A>.hourly(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_0();
  v6 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v17 = v16 - v15;
  v18 = *(v8 + 16);
  v18(v4, a1, v6);
  v18(v3, a2, v6);
  sub_23B50AA04();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v11);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  v23 = v22[7];
  (*(v13 + 32))(v2 + v23, v17, v11);
  OUTLINED_FUNCTION_12_9(v2 + v23);
  type metadata accessor for InstantWeatherQueryOptions(0);
  v24 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  v28 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_7_23(v22[8]);
  *(v32 + 16) = 1;
  OUTLINED_FUNCTION_1_17(v22[9]);
  OUTLINED_FUNCTION_5_16(v22[10]);
}

void static WeatherQuery<A>.instants(spanning:stride:)(uint64_t a1, uint64_t *a2)
{
  v5 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeatherQueryOptions(v5);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = v8 - v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F18, &qword_23B515838) + 48);
  v13 = sub_23B50AA24();
  OUTLINED_FUNCTION_6();
  (*(v14 + 16))(v9, a1, v13);
  *v12 = v10;
  *(v12 + 8) = v11;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F20, &qword_23B515840);
  v19 = OUTLINED_FUNCTION_2_21(v18);
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v13);
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_12_9(v2 + v13);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  v22 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_7_23(v18[8]);
  *(v26 + 16) = 1;
  OUTLINED_FUNCTION_1_17(v18[9]);
  OUTLINED_FUNCTION_5_16(v18[10]);
}

void static WeatherQuery<A>.instant(at:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeatherQueryOptions(v3);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v7 = v6 - v5;
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v8 + 16))(v7, a1);
  swift_storeEnumTagMultiPayload();
  v9 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F28, &qword_23B515848);
  v14 = OUTLINED_FUNCTION_2_21(v13);
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_12_9(v1 + v9);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  v17 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_7_23(v13[8]);
  *(v21 + 16) = 1;
  OUTLINED_FUNCTION_1_17(v13[9]);
  OUTLINED_FUNCTION_5_16(v13[10]);
}

void static WeatherQuery<A>.daily(relativeTo:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_0();
  v6 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  v11 = OUTLINED_FUNCTION_2_21(v10);
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = v3 + v10[8];
  *v22 = a2;
  *(v22 + 8) = a3;
  *(v22 + 16) = 0;
  OUTLINED_FUNCTION_1_17(v10[9]);
  OUTLINED_FUNCTION_5_16(v10[10]);
}

void static WeatherQuery<A>.hourly(relativeTo:start:end:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  v13 = OUTLINED_FUNCTION_2_21(v12);
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  OUTLINED_FUNCTION_7_23(v12[8]);
  *(v24 + 16) = 1;
  v25 = a4 + v12[9];
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = v7;
  OUTLINED_FUNCTION_1_17(v12[10]);
}

uint64_t sub_23B4333F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  OUTLINED_FUNCTION_1();
  result = __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v29 = a6 + v16[8];
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = a6 + v16[9];
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 2;
  v31 = a6 + v16[10];
  *v31 = a2;
  *(v31 + 8) = a3;
  *(v31 + 16) = v11;
  return result;
}

uint64_t static WeatherQuery<A>.periodic(periodStart:periodEnd:periodLengths:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  v13 = sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v15 = *(v14 + 16);
  v15(v12, a1, v13);
  v15(v12 + *(PeriodicRelativeRange + 20), a2, v13);
  *(v12 + *(PeriodicRelativeRange + 24)) = a3;
  v16 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F60, &qword_23B50F298);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = v20[12];
  sub_23B3B0A38(v12, a4 + v28, type metadata accessor for WeatherQueryPeriodicRelativeRange);
  __swift_storeEnumTagSinglePayload(a4 + v28, 0, 1, PeriodicRelativeRange);
  v29 = a4 + v20[8];
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = a4 + v20[9];
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 2;
  v31 = a4 + v20[10];
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 2;
}

BOOL HistoricalComparison.isDeviatingFromTrend.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  type metadata accessor for HistoricalComparison(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  v13 = v12 - v11;
  sub_23B433890(v1, v12 - v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 3u:
      sub_23B4338F4(v13, v5, &qword_27E132230, &qword_23B510210);
      v14 = v5[*(v2 + 32)];
      OUTLINED_FUNCTION_24_7();
      break;
    default:
      sub_23B4338F4(v13, v9, &qword_27E132220, &unk_23B510200);
      v14 = v9[*(v6 + 32)];
      v15 = v9;
      v16 = &qword_27E132220;
      v17 = &unk_23B510200;
      break;
  }

  sub_23B398890(v15, v16, v17);
  return v14 != 2;
}

uint64_t sub_23B433890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalComparison(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4338F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return a2;
}

uint64_t static HistoricalComparison.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_0();
  v74 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v73 = &v69 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v71 = &v69 - v15;
  type metadata accessor for HistoricalComparison(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_125();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F30, &unk_23B515880);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v69 - v28;
  v31 = *(v30 + 56);
  sub_23B433890(a1, &v69 - v28);
  sub_23B433890(a2, &v29[v31]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23B433890(v29, v25);
      if (OUTLINED_FUNCTION_27_7() != 1)
      {
        v32 = &qword_27E132220;
        v33 = &unk_23B510200;
        v34 = v25;
        goto LABEL_25;
      }

      sub_23B4338F4(&v29[v31], v13, &qword_27E132220, &unk_23B510200);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      OUTLINED_FUNCTION_4_1();
      sub_23B3F1C50(v54, &qword_27E131E30, &qword_23B511AC0, v55);
      if (sub_23B50D134() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890), (sub_23B50ACD4()) && (sub_23B50D134())
      {
        v56 = *(v70 + 32);
        v57 = v25[v56];
        v58 = *(v13 + v56);
        sub_23B398890(v13, &qword_27E132220, &unk_23B510200);
        if (v57 == v58)
        {
          v43 = &qword_27E132220;
          v44 = &unk_23B510200;
          v45 = v25;
          goto LABEL_37;
        }
      }

      else
      {
        sub_23B398890(v13, &qword_27E132220, &unk_23B510200);
      }

      v59 = &qword_27E132220;
      v60 = &unk_23B510200;
      v61 = v25;
      goto LABEL_40;
    case 2u:
      sub_23B433890(v29, v22);
      if (OUTLINED_FUNCTION_27_7() != 2)
      {
        v32 = &qword_27E132230;
        v33 = &qword_23B510210;
        v34 = v22;
        goto LABEL_25;
      }

      v35 = v73;
      sub_23B4338F4(&v29[v31], v73, &qword_27E132230, &qword_23B510210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_24_7();
      sub_23B3F1C50(v36, v37, v38, v39);
      if (OUTLINED_FUNCTION_20_9(v22, v35) & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0), (sub_23B50ACD4()) && (OUTLINED_FUNCTION_20_9(&v22[*(v72 + 28)], v35 + *(v72 + 28)))
      {
        v40 = *(v72 + 32);
        v41 = v22[v40];
        v42 = *(v35 + v40);
        sub_23B398890(v35, &qword_27E132230, &qword_23B510210);
        if (v41 == v42)
        {
          v43 = &qword_27E132230;
          v44 = &qword_23B510210;
          v45 = v22;
          goto LABEL_37;
        }
      }

      else
      {
        sub_23B398890(v35, &qword_27E132230, &qword_23B510210);
      }

      v59 = &qword_27E132230;
      v60 = &qword_23B510210;
      v61 = v22;
      goto LABEL_40;
    case 3u:
      sub_23B433890(v29, v19);
      if (OUTLINED_FUNCTION_27_7() != 3)
      {
        v32 = &qword_27E132230;
        v33 = &qword_23B510210;
        v34 = v19;
        goto LABEL_25;
      }

      v46 = v74;
      sub_23B4338F4(&v29[v31], v74, &qword_27E132230, &qword_23B510210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_24_7();
      sub_23B3F1C50(v47, v48, v49, v50);
      if (OUTLINED_FUNCTION_20_9(v19, v46) & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0), (sub_23B50ACD4()) && (OUTLINED_FUNCTION_20_9(v19 + *(v72 + 28), v46 + *(v72 + 28)))
      {
        v51 = *(v72 + 32);
        v52 = *(v19 + v51);
        v53 = *(v46 + v51);
        sub_23B398890(v46, &qword_27E132230, &qword_23B510210);
        if (v52 == v53)
        {
          v43 = &qword_27E132230;
          v44 = &qword_23B510210;
          v45 = v19;
          goto LABEL_37;
        }
      }

      else
      {
        sub_23B398890(v46, &qword_27E132230, &qword_23B510210);
      }

      v59 = &qword_27E132230;
      v60 = &qword_23B510210;
      v61 = v19;
      goto LABEL_40;
    default:
      sub_23B433890(v29, v2);
      if (OUTLINED_FUNCTION_27_7())
      {
        v32 = &qword_27E132220;
        v33 = &unk_23B510200;
        v34 = v2;
LABEL_25:
        sub_23B398890(v34, v32, v33);
        sub_23B398890(v29, &qword_27E132F30, &unk_23B515880);
        return 0;
      }

      v62 = v71;
      sub_23B4338F4(&v29[v31], v71, &qword_27E132220, &unk_23B510200);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      OUTLINED_FUNCTION_4_1();
      sub_23B3F1C50(v63, &qword_27E131E30, &qword_23B511AC0, v64);
      if ((OUTLINED_FUNCTION_20_9(v2, v62) & 1) == 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890), (sub_23B50ACD4() & 1) == 0) || (OUTLINED_FUNCTION_20_9(v2 + *(v70 + 28), v62 + *(v70 + 28)) & 1) == 0)
      {
        sub_23B398890(v62, &qword_27E132220, &unk_23B510200);
LABEL_39:
        v59 = &qword_27E132220;
        v60 = &unk_23B510200;
        v61 = v2;
LABEL_40:
        sub_23B398890(v61, v59, v60);
        sub_23B434128(v29);
        return 0;
      }

      v65 = *(v70 + 32);
      v66 = *(v2 + v65);
      v67 = *(v62 + v65);
      sub_23B398890(v62, &qword_27E132220, &unk_23B510200);
      if (v66 != v67)
      {
        goto LABEL_39;
      }

      v43 = &qword_27E132220;
      v44 = &unk_23B510200;
      v45 = v2;
LABEL_37:
      sub_23B398890(v45, v43, v44);
      sub_23B434128(v29);
      return 1;
  }
}

uint64_t sub_23B434128(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalComparison(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B434184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000023B5282C0 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41)
      {

        return 3;
      }

      else
      {
        v9 = sub_23B50D834();

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

unint64_t sub_23B4342FC(char a1)
{
  result = 0x706D655468676968;
  switch(a1)
  {
    case 1:
      result = 0x65706D6554776F6CLL;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6C6C6166776F6E73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4343B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23B50D834();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23B43442C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B434184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B434454(uint64_t a1)
{
  v2 = sub_23B435AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B434490(uint64_t a1)
{
  v2 = sub_23B435AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4344D0(uint64_t a1)
{
  v2 = sub_23B435C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B43450C(uint64_t a1)
{
  v2 = sub_23B435C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B434548(uint64_t a1)
{
  v2 = sub_23B435BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B434584(uint64_t a1)
{
  v2 = sub_23B435BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4345C0(uint64_t a1)
{
  v2 = sub_23B435BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4345FC(uint64_t a1)
{
  v2 = sub_23B435BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B434638(uint64_t a1)
{
  v2 = sub_23B435B50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B434674(uint64_t a1)
{
  v2 = sub_23B435B50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HistoricalComparison.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F38, &qword_23B515898);
  OUTLINED_FUNCTION_5();
  v89 = v4;
  v90 = v3;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52();
  v88 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F40, &qword_23B5158A0);
  OUTLINED_FUNCTION_5();
  v86 = v8;
  v87 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v85 = v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_0();
  v84 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v83 = &v77 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F48, &qword_23B5158A8);
  OUTLINED_FUNCTION_5();
  v81 = v17;
  v82 = v16;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  v80 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F50, &qword_23B5158B0);
  OUTLINED_FUNCTION_5();
  v78 = v21;
  v79 = v20;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v77 - v23;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_125();
  type metadata accessor for HistoricalComparison(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F58, &qword_23B5158B8);
  OUTLINED_FUNCTION_5();
  v94 = v32;
  v95 = v31;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  v35 = &v77 - v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B435AFC();
  sub_23B50D974();
  sub_23B433890(v93, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_218();
      sub_23B4338F4(v65, v66, v67, v68);
      v97 = 1;
      sub_23B435BF8();
      OUTLINED_FUNCTION_10_14(&type metadata for HistoricalComparison.LowTemperatureCodingKeys, &v97);
      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_151();
      sub_23B3F1C50(v69, v70, v71, v72);
      v73 = v82;
      sub_23B50D7F4();
      v74 = OUTLINED_FUNCTION_18_9();
      v75(v74, v73);
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_218();
      sub_23B4338F4(v44, v45, v46, v47);
      v98 = 2;
      sub_23B435BA4();
      v48 = v85;
      OUTLINED_FUNCTION_10_14(&type metadata for HistoricalComparison.PrecipitationAmountCodingKeys, &v98);
      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_151();
      sub_23B3F1C50(v49, v50, v51, v52);
      v53 = v87;
      sub_23B50D7F4();
      (*(v86 + 8))(v48, v53);
LABEL_6:
      OUTLINED_FUNCTION_151();
      break;
    case 3u:
      v54 = v84;
      OUTLINED_FUNCTION_218();
      sub_23B4338F4(v55, v56, v57, v58);
      v99 = 3;
      sub_23B435B50();
      v59 = v88;
      OUTLINED_FUNCTION_10_14(&type metadata for HistoricalComparison.SnowfallAmountCodingKeys, &v99);
      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_151();
      sub_23B3F1C50(v60, v61, v62, v63);
      v64 = v90;
      sub_23B50D7F4();
      (*(v89 + 8))(v59, v64);
      v42 = &qword_27E132230;
      v43 = &qword_23B510210;
      v41 = v54;
      break;
    default:
      sub_23B4338F4(v30, v1, &qword_27E132220, &unk_23B510200);
      v96 = 0;
      sub_23B435C4C();
      OUTLINED_FUNCTION_10_14(&type metadata for HistoricalComparison.HighTemperatureCodingKeys, &v96);
      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_13_8();
      sub_23B3F1C50(v36, v37, v38, v39);
      v40 = v79;
      sub_23B50D7F4();
      (*(v78 + 8))(v24, v40);
      OUTLINED_FUNCTION_13_8();
      break;
  }

  sub_23B398890(v41, v42, v43);
  return (*(v94 + 8))(v35, v30);
}

uint64_t HistoricalComparison.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F98, &qword_23B5158C0);
  OUTLINED_FUNCTION_5();
  v103 = v5;
  v104 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v109 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132FA0, &qword_23B5158C8);
  OUTLINED_FUNCTION_5();
  v101 = v9;
  v102 = v8;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52();
  v108 = v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132FA8, &qword_23B5158D0);
  OUTLINED_FUNCTION_5();
  v110 = v12;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v107 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132FB0, &qword_23B5158D8);
  OUTLINED_FUNCTION_5();
  v98 = v16;
  v99 = v15;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52();
  v106 = v18;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132FB8, &unk_23B5158E0);
  OUTLINED_FUNCTION_5();
  v111 = v19;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v93 - v21;
  v112 = type metadata accessor for HistoricalComparison(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v93 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v93 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v93 - v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_125();
  v37 = a1[3];
  v114 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_23B435AFC();
  v38 = v115;
  sub_23B50D964();
  if (v38)
  {
    goto LABEL_10;
  }

  v94 = v32;
  v95 = v29;
  v96 = v35;
  v93 = v26;
  v115 = v2;
  v40 = v112;
  v39 = v113;
  sub_23B50D744();
  result = sub_23B40D8C8();
  if (v43 == v44 >> 1)
  {
    v45 = v40;
LABEL_9:
    v58 = sub_23B50D5F4();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0);
    *v60 = v45;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = OUTLINED_FUNCTION_14_14();
    v62(v61, v39);
LABEL_10:
    v63 = v114;
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v97 = v22;
  if (v43 < (v44 >> 1))
  {
    v46 = v39;
    v45 = v40;
    v47 = *(v42 + v43);
    v48 = sub_23B40D8C4();
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    v53 = v110;
    if (v50 == v52 >> 1)
    {
      v54 = v115;
      switch(v47)
      {
        case 1:
          v117 = 1;
          sub_23B435BF8();
          v66 = v107;
          OUTLINED_FUNCTION_9_15(&type metadata for HistoricalComparison.LowTemperatureCodingKeys, &v117);
          v71 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v71, v72);
          OUTLINED_FUNCTION_3_24(&qword_27E132FC8);
          v73 = v100;
          sub_23B50D734();
          swift_unknownObjectRelease();
          (*(v53 + 8))(v66, v73);
          v90 = OUTLINED_FUNCTION_11_8();
          v91(v90, v46);
          v92 = v94;
          swift_storeEnumTagMultiPayload();
          v89 = v92;
          v88 = v114;
          v54 = v115;
          break;
        case 2:
          v118 = 2;
          sub_23B435BA4();
          OUTLINED_FUNCTION_9_15(&type metadata for HistoricalComparison.PrecipitationAmountCodingKeys, &v118);
          v110 = v48;
          v64 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
          OUTLINED_FUNCTION_3_24(&qword_27E132FC0);
          sub_23B50D734();
          swift_unknownObjectRelease();
          v74 = OUTLINED_FUNCTION_23_8();
          v75(v74);
          v76 = OUTLINED_FUNCTION_17_7();
          v77(v76);
          v78 = v95;
          swift_storeEnumTagMultiPayload();
          v89 = v78;
          goto LABEL_15;
        case 3:
          v119 = 3;
          sub_23B435B50();
          OUTLINED_FUNCTION_9_15(&type metadata for HistoricalComparison.SnowfallAmountCodingKeys, &v119);
          v110 = v48;
          v67 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
          OUTLINED_FUNCTION_3_24(&qword_27E132FC0);
          v69 = v93;
          v70 = v104;
          OUTLINED_FUNCTION_218();
          sub_23B50D734();
          swift_unknownObjectRelease();
          v79 = OUTLINED_FUNCTION_18_9();
          v80(v79, v70);
          v81 = OUTLINED_FUNCTION_11_8();
          v82(v81, v46);
          swift_storeEnumTagMultiPayload();
          v89 = v69;
LABEL_15:
          v88 = v114;
          break;
        default:
          v116 = 0;
          sub_23B435C4C();
          OUTLINED_FUNCTION_9_15(&type metadata for HistoricalComparison.HighTemperatureCodingKeys, &v116);
          v110 = v48;
          v55 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v55, v56);
          OUTLINED_FUNCTION_3_24(&qword_27E132FC8);
          v57 = v99;
          sub_23B50D734();
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_18_9();
          v84(v83, v57);
          v85 = OUTLINED_FUNCTION_17_7();
          v86(v85);
          v87 = v96;
          swift_storeEnumTagMultiPayload();
          v88 = v114;
          v89 = v87;
          break;
      }

      sub_23B435CA0(v89, v54);
      sub_23B435CA0(v54, v105);
      v63 = v88;
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }

    v39 = v46;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t HistoricalComparison.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  type metadata accessor for HistoricalComparison(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  sub_23B433890(v1, v12 - v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_26_9();
      v13 = 1;
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_25_7();
      v14 = 2;
      goto LABEL_5;
    case 3u:
      OUTLINED_FUNCTION_25_7();
      v14 = 3;
LABEL_5:
      MEMORY[0x23EE9DB40](v14);
      MEMORY[0x23EE9DB40](0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      OUTLINED_FUNCTION_8_9(&qword_280B42BC8);
      OUTLINED_FUNCTION_13_8();
      sub_23B50D0E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0);
      sub_23B50AD24();
      OUTLINED_FUNCTION_7_24();
      sub_23B435D4C(v15, v16, MEMORY[0x277CC9588]);
      sub_23B50D0E4();
      OUTLINED_FUNCTION_13_8();
      sub_23B50D0E4();
      MEMORY[0x23EE9DB40](v5[*(v2 + 32)]);
      v17 = v5;
      v18 = &qword_27E132230;
      v19 = &qword_23B510210;
      break;
    default:
      OUTLINED_FUNCTION_26_9();
      v13 = 0;
LABEL_7:
      MEMORY[0x23EE9DB40](v13);
      MEMORY[0x23EE9DB40](0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      OUTLINED_FUNCTION_8_9(&qword_280B42B80);
      OUTLINED_FUNCTION_13_8();
      sub_23B50D0E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890);
      sub_23B50AD24();
      OUTLINED_FUNCTION_7_24();
      sub_23B435D4C(v20, v21, MEMORY[0x277CC9588]);
      sub_23B50D0E4();
      OUTLINED_FUNCTION_13_8();
      sub_23B50D0E4();
      MEMORY[0x23EE9DB40](v9[*(v6 + 32)]);
      OUTLINED_FUNCTION_24_7();
      break;
  }

  return sub_23B398890(v17, v18, v19);
}

uint64_t HistoricalComparison.hashValue.getter()
{
  sub_23B50D8C4();
  HistoricalComparison.hash(into:)(v1);
  return sub_23B50D914();
}

uint64_t sub_23B435AC0(uint64_t a1)
{
  sub_23B50D8C4();
  HistoricalComparison.hash(into:)(v2);
  return sub_23B50D914();
}

unint64_t sub_23B435AFC()
{
  result = qword_27E132F60;
  if (!qword_27E132F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132F60);
  }

  return result;
}

unint64_t sub_23B435B50()
{
  result = qword_27E132F68;
  if (!qword_27E132F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132F68);
  }

  return result;
}

unint64_t sub_23B435BA4()
{
  result = qword_27E132F78;
  if (!qword_27E132F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132F78);
  }

  return result;
}

unint64_t sub_23B435BF8()
{
  result = qword_27E132F80;
  if (!qword_27E132F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132F80);
  }

  return result;
}

unint64_t sub_23B435C4C()
{
  result = qword_27E132F90;
  if (!qword_27E132F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132F90);
  }

  return result;
}

uint64_t sub_23B435CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalComparison(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B435D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for HistoricalComparison.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_23B435EA0(_BYTE *result, int a2, int a3)
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

unint64_t sub_23B435F50()
{
  result = qword_27E132FD8;
  if (!qword_27E132FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132FD8);
  }

  return result;
}

unint64_t sub_23B435FA8()
{
  result = qword_27E132FE0;
  if (!qword_27E132FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132FE0);
  }

  return result;
}

unint64_t sub_23B436000()
{
  result = qword_27E132FE8;
  if (!qword_27E132FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132FE8);
  }

  return result;
}

unint64_t sub_23B436058()
{
  result = qword_27E132FF0;
  if (!qword_27E132FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132FF0);
  }

  return result;
}

unint64_t sub_23B4360B0()
{
  result = qword_27E132FF8;
  if (!qword_27E132FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132FF8);
  }

  return result;
}

unint64_t sub_23B436108()
{
  result = qword_27E133000;
  if (!qword_27E133000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133000);
  }

  return result;
}

unint64_t sub_23B436160()
{
  result = qword_27E133008;
  if (!qword_27E133008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133008);
  }

  return result;
}

unint64_t sub_23B4361B8()
{
  result = qword_27E133010;
  if (!qword_27E133010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133010);
  }

  return result;
}

unint64_t sub_23B436210()
{
  result = qword_27E133018;
  if (!qword_27E133018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133018);
  }

  return result;
}

unint64_t sub_23B436268()
{
  result = qword_27E133020;
  if (!qword_27E133020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133020);
  }

  return result;
}

unint64_t sub_23B4362C0()
{
  result = qword_27E133028;
  if (!qword_27E133028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133028);
  }

  return result;
}

unint64_t sub_23B436318()
{
  result = qword_27E133030;
  if (!qword_27E133030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133030);
  }

  return result;
}

unint64_t sub_23B436370()
{
  result = qword_27E133038;
  if (!qword_27E133038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133038);
  }

  return result;
}

unint64_t sub_23B4363C8()
{
  result = qword_27E133040;
  if (!qword_27E133040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133040);
  }

  return result;
}

unint64_t sub_23B436420()
{
  result = qword_27E133048;
  if (!qword_27E133048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133048);
  }

  return result;
}

uint64_t sub_23B4364B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133058, &qword_23B515FA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for ReverseGeocodeResult(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_23B3988E8(a1, &qword_27E133058, &qword_23B515FA8);
    sub_23B4378C8(a2, a3, v10);

    return sub_23B3988E8(v10, &qword_27E133058, &qword_23B515FA8);
  }

  else
  {
    sub_23B437AC8(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_23B47E608(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

double sub_23B436644@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_23B3A7084(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_23B3923E8(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t GeocodeManager.__allocating_init(service:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  GeocodeManager.init(service:store:)(a1, a2, a3);
  return v6;
}

void sub_23B436734(uint64_t a1)
{
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v3 = sub_23B50CDF4();
  __swift_project_value_buffer(v3, qword_280B4E9F0);
  v4 = sub_23B50CDD4();
  v5 = sub_23B50D4C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23B38D000, v4, v5, "Handling country code configuration change", v6, 2u);
    MEMORY[0x23EE9E260](v6, -1, -1);
  }

  sub_23B3923E8(a1, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133078, &unk_23B516010);
  if (swift_dynamicCast())
  {
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v22 = 0u;
    v23 = 0u;
    goto LABEL_13;
  }

  v8 = sub_23B50D164();
  v10 = v9;

  sub_23B436644(v8, v10, v7, &v22);

  if (!*(&v23 + 1))
  {
LABEL_13:
    sub_23B3988E8(&v22, &qword_27E133080, &unk_23B519370);
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {

    v11 = v20;
    v12 = v21;
LABEL_17:
    os_unfair_lock_lock((v1 + 48));

    *(v1 + 56) = v11;
    *(v1 + 64) = v12;
    os_unfair_lock_unlock((v1 + 48));
    return;
  }

LABEL_14:
  v13 = [objc_opt_self() sharedConfiguration];
  if (v13)
  {
    v14 = v13;

    v15 = sub_23B391C9C(v14);
    if (v16)
    {
      v11 = v15;
      v12 = v16;
      goto LABEL_17;
    }

    v17 = sub_23B50CDD4();
    v18 = sub_23B50D4B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B38D000, v17, v18, "Could not retrieve countryCode from GEOCountryConfiguration.shared - aborting", v19, 2u);
      MEMORY[0x23EE9E260](v19, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t GeocodeManager.reverseGeocode(location:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for ReverseGeocodeResult(0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133058, &qword_23B515FA8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B436B70, 0, 0);
}

uint64_t sub_23B436B70()
{
  v81 = v0;
  v2 = v0[11];
  v1 = v0[12];
  os_unfair_lock_lock((v1 + 48));
  v3 = *(v1 + 56);
  v0[23] = v3;
  v4 = *(v1 + 64);
  v0[24] = v4;

  os_unfair_lock_unlock((v1 + 48));
  [v2 coordinate];
  v5 = sub_23B50D4E4();
  v7 = v6;
  v79 = v5;
  v0[25] = v5;
  v0[26] = v6;
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v8 = v0[11];
  v9 = sub_23B50CDF4();
  v0[27] = __swift_project_value_buffer(v9, qword_280B4E9F0);
  v10 = v8;
  v11 = sub_23B50CDD4();
  v12 = sub_23B50D4C4();

  if (os_log_type_enabled(v11, v12))
  {
    v77 = v7;
    v13 = v0[11];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v80[0] = v15;
    *v14 = 141558275;
    OUTLINED_FUNCTION_2_22();
    *(v14 + 4) = v16;
    *(v14 + 12) = 2081;
    [v13 coordinate];
    v0[8] = v17;
    v0[9] = v18;
    type metadata accessor for CLLocationCoordinate2D();
    v19 = sub_23B50D184();
    v21 = sub_23B391F1C(v19, v20, v80);
    v7 = v77;

    *(v14 + 14) = v21;
    _os_log_impl(&dword_23B38D000, v11, v12, "About to reverse geocode a location. location=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v22 = v0[22];
  v23 = v0[12];
  os_unfair_lock_lock((v23 + 32));
  sub_23B437790((v23 + 40), v79, v7, v22);
  os_unfair_lock_unlock((v23 + 32));
  v24 = v0[21];
  v25 = v0[13];
  sub_23B4379FC(v0[22], v24);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v25);
  v27 = v0[21];
  if (EnumTagSinglePayload != 1)
  {
    v41 = v0[18];
    v42 = v0[11];

    sub_23B437AC8(v27, v41);
    v43 = v42;
    v44 = sub_23B50CDD4();
    v45 = sub_23B50D4C4();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[22];
    if (v46)
    {
      v48 = v0[11];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v80[0] = v50;
      *v49 = 141558275;
      OUTLINED_FUNCTION_2_22();
      *(v49 + 4) = v51;
      *(v49 + 12) = 2081;
      [v48 coordinate];
      v0[6] = v52;
      v0[7] = v53;
      type metadata accessor for CLLocationCoordinate2D();
      v54 = sub_23B50D184();
      v56 = sub_23B391F1C(v54, v55, v80);

      *(v49 + 14) = v56;
      _os_log_impl(&dword_23B38D000, v44, v45, "Found a rev geo result in the in memory cache. location=%{private,mask.hash}s", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

LABEL_20:
    sub_23B3988E8(v47, &qword_27E133058, &qword_23B515FA8);
    OUTLINED_FUNCTION_1_18();
    sub_23B437AC8(v74, v0[10]);

    OUTLINED_FUNCTION_3_25();

    __asm { BRAA            X1, X16 }
  }

  sub_23B3988E8(v0[21], &qword_27E133058, &qword_23B515FA8);
  if (!sub_23B4366A8())
  {
    goto LABEL_9;
  }

  v28 = v0[20];
  v29 = v7;
  v30 = v0[13];
  v78 = v29;
  GeocodeStore.queryReverseGeocodeResult(for:configuredCountryCode:)(v79, v29, v3, v4, v28);
  v31 = __swift_getEnumTagSinglePayload(v28, 1, v30);
  v32 = v0[20];
  if (v31 != 1)
  {
    v57 = v0[17];
    v58 = v0[11];

    sub_23B437AC8(v32, v57);
    v59 = v58;
    v60 = sub_23B50CDD4();
    v61 = sub_23B50D4C4();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = v0[11];
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v80[0] = v64;
      *v63 = 141558275;
      OUTLINED_FUNCTION_2_22();
      *(v63 + 4) = v65;
      *(v63 + 12) = 2081;
      [v62 coordinate];
      v0[4] = v66;
      v0[5] = v67;
      type metadata accessor for CLLocationCoordinate2D();
      v68 = sub_23B50D184();
      v70 = sub_23B391F1C(v68, v69, v80);

      *(v63 + 14) = v70;
      _os_log_impl(&dword_23B38D000, v60, v61, "Found a rev geo result in the database. location=%{private,mask.hash}s", v63, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v47 = v0[22];
    v71 = v0[19];
    v72 = v0[17];
    v73 = v0[13];
    os_unfair_lock_lock((v23 + 32));
    sub_23B3FE9CC(v72, v71);
    __swift_storeEnumTagSinglePayload(v71, 0, 1, v73);
    sub_23B4364B8(v71, v79, v78);
    os_unfair_lock_unlock((v23 + 32));

    goto LABEL_20;
  }

  sub_23B3988E8(v32, &qword_27E133058, &qword_23B515FA8);
LABEL_9:
  v33 = sub_23B50CDD4();
  v34 = sub_23B50D4C4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_23B38D000, v33, v34, "About to perform reverseGeocode through service", v35, 2u);
    OUTLINED_FUNCTION_38();
  }

  v36 = swift_task_alloc();
  v0[28] = v36;
  *v36 = v0;
  v36[1] = sub_23B437270;
  OUTLINED_FUNCTION_3_25();

  return sub_23B4F30D4(v37, v38);
}

uint64_t sub_23B437270()
{
  *(*v1 + 232) = v0;

  if (v0)
  {

    v2 = sub_23B4376B0;
  }

  else
  {
    v2 = sub_23B437398;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B437398()
{
  v31 = v0;
  v1 = v0[11];
  sub_23B3FE9CC(v0[16], v0[15]);
  v2 = v1;
  v3 = sub_23B50CDD4();
  v4 = sub_23B50D4C4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[11];
    v8 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v8 = 141558787;
    OUTLINED_FUNCTION_2_22();
    *(v8 + 4) = v9;
    *(v8 + 12) = 2081;
    [v7 coordinate];
    v0[2] = v10;
    v0[3] = v11;
    type metadata accessor for CLLocationCoordinate2D();
    v12 = sub_23B50D184();
    v14 = sub_23B391F1C(v12, v13, &v30);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2160;
    OUTLINED_FUNCTION_2_22();
    *(v8 + 24) = v15;
    *(v8 + 32) = 2081;
    sub_23B3FE9CC(v5, v6);
    v16 = sub_23B50D184();
    v18 = v17;
    sub_23B437A6C(v5);
    v19 = sub_23B391F1C(v16, v18, &v30);

    *(v8 + 34) = v19;
    _os_log_impl(&dword_23B38D000, v3, v4, "Successfully reverse geocoded the location. location=%{private,mask.hash}s, result=%{private,mask.hash}s", v8, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v20 = v0[15];

    sub_23B437A6C(v20);
  }

  if (sub_23B4366A8())
  {
    GeocodeStore.saveReverseGeocodeResult(_:for:configuredCountryCode:)(v0[16], v0[25], v0[26], v0[23], v0[24]);
  }

  v22 = v0[25];
  v21 = v0[26];
  v23 = v0[22];
  v24 = v0[19];
  v25 = v0[16];
  v27 = v0[12];
  v26 = v0[13];

  os_unfair_lock_lock(v27 + 8);
  sub_23B3FE9CC(v25, v24);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
  sub_23B4364B8(v24, v22, v21);
  os_unfair_lock_unlock(v27 + 8);
  sub_23B3988E8(v23, &qword_27E133058, &qword_23B515FA8);
  sub_23B437AC8(v0[16], v0[10]);

  v28 = v0[1];

  return v28();
}

uint64_t sub_23B4376B0()
{
  OUTLINED_FUNCTION_1_18();
  sub_23B3988E8(v0, &qword_27E133058, &qword_23B515FA8);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_23B437790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_23B3A7084(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for ReverseGeocodeResult(0);
    sub_23B3FE9CC(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for ReverseGeocodeResult(0);
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t GeocodeManager.deinit()
{

  sub_23B3988E8(v0 + 40, &qword_27E133060, &qword_23B515FB0);
  sub_23B437B2C(v0 + 56);
  return v0;
}

uint64_t GeocodeManager.__deallocating_deinit()
{
  GeocodeManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_23B4378C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_23B3A7084(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133088, &qword_23B519FA0);
    sub_23B50D624();

    v8 = *(v14 + 56);
    v9 = type metadata accessor for ReverseGeocodeResult(0);
    sub_23B437AC8(v8 + *(*(v9 - 8) + 72) * v7, a3);
    sub_23B50D634();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for ReverseGeocodeResult(0);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_23B4379FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133058, &qword_23B515FA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B437A6C(uint64_t a1)
{
  v2 = type metadata accessor for ReverseGeocodeResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B437AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReverseGeocodeResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MoonEvents.mock()@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_27(v7);
  OUTLINED_FUNCTION_0_27(v4);
  v8 = type metadata accessor for MoonEvents(0);
  v9 = *(v8 + 20);
  OUTLINED_FUNCTION_0_27(&a1[v9]);
  v10 = *(v8 + 24);
  OUTLINED_FUNCTION_0_27(&a1[v10]);
  *a1 = 2;
  sub_23B3CF890(v7, &a1[v9]);
  return sub_23B3CF890(v4, &a1[v10]);
}

uint64_t ProviderAttribution.init(name:logoURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(type metadata accessor for ProviderAttribution(0) + 20);
  v9 = sub_23B50AB34();
  __swift_storeEnumTagSinglePayload(a4 + v8, 1, 1, v9);
  *a4 = a1;
  a4[1] = a2;

  return sub_23B437D30(a3, a4 + v8);
}

uint64_t sub_23B437D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ProviderAttribution.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProviderAttribution.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProviderAttribution.logoURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProviderAttribution(0) + 20);

  return sub_23B437D30(a1, v3);
}

uint64_t sub_23B437EB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556F676F6CLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

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

uint64_t sub_23B437F7C(char a1)
{
  if (a1)
  {
    return 0x4C52556F676F6CLL;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23B437FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B437EB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B437FDC(uint64_t a1)
{
  v2 = sub_23B4384AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B438018(uint64_t a1)
{
  v2 = sub_23B4384AC();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static ProviderAttribution.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132DE0, &qword_23B515490);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = *a1 == *a2 && a1[1] == a2[1];
  if (v19 || (v20 = sub_23B50D834(), result = 0, (v20 & 1) != 0))
  {
    v22 = *(type metadata accessor for ProviderAttribution(0) + 20);
    v23 = *(v15 + 48);
    sub_23B3C4528(a1 + v22, v18);
    sub_23B3C4528(a2 + v22, &v18[v23]);
    OUTLINED_FUNCTION_46(v18);
    if (v19)
    {
      OUTLINED_FUNCTION_46(&v18[v23]);
      if (v19)
      {
        sub_23B3988E8(v18, &qword_27E131FC0, &qword_23B515170);
        return 1;
      }
    }

    else
    {
      sub_23B3C4528(v18, v14);
      OUTLINED_FUNCTION_46(&v18[v23]);
      if (!v24)
      {
        (*(v6 + 32))(v10, &v18[v23], v4);
        OUTLINED_FUNCTION_0_28();
        sub_23B438B20(v25, v26, MEMORY[0x277CC9278]);
        v27 = sub_23B50D134();
        v28 = *(v6 + 8);
        v28(v10, v4);
        v28(v14, v4);
        sub_23B3988E8(v18, &qword_27E131FC0, &qword_23B515170);
        return (v27 & 1) != 0;
      }

      (*(v6 + 8))(v14, v4);
    }

    sub_23B3988E8(v18, &qword_27E132DE0, &qword_23B515490);
    return 0;
  }

  return result;
}

uint64_t ProviderAttribution.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133090, &qword_23B516020);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4384AC();
  sub_23B50D974();
  v12[15] = 0;
  sub_23B50D7A4();
  if (!v1)
  {
    type metadata accessor for ProviderAttribution(0);
    v12[14] = 1;
    sub_23B50AB34();
    OUTLINED_FUNCTION_0_28();
    sub_23B438B20(v9, v10, MEMORY[0x277CC9268]);
    sub_23B50D794();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B4384AC()
{
  result = qword_280B42390;
  if (!qword_280B42390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42390);
  }

  return result;
}

uint64_t ProviderAttribution.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v4);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133098, &qword_23B516028);
  OUTLINED_FUNCTION_5();
  v25[1] = v9;
  v25[2] = v8;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for ProviderAttribution(0);
  v12 = OUTLINED_FUNCTION_3(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v15 = (v14 - v13);
  v17 = *(v16 + 28);
  v18 = sub_23B50AB34();
  v26 = v17;
  __swift_storeEnumTagSinglePayload(v15 + v17, 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4384AC();
  sub_23B50D964();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23B3988E8(v15 + v26, &qword_27E131FC0, &qword_23B515170);
  }

  else
  {
    v28 = 0;
    *v15 = sub_23B50D6E4();
    v15[1] = v19;
    v27 = 1;
    OUTLINED_FUNCTION_0_28();
    sub_23B438B20(v20, v21, MEMORY[0x277CC9280]);
    sub_23B50D6D4();
    v22 = OUTLINED_FUNCTION_3_26();
    v23(v22);
    sub_23B437D30(v7, v15 + v26);
    sub_23B4387C0(v15, v25[0]);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23B438824(v15);
  }
}

uint64_t sub_23B4387C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProviderAttribution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B438824(uint64_t a1)
{
  v2 = type metadata accessor for ProviderAttribution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProviderAttribution.hash(into:)(uint64_t a1)
{
  v2 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_23B50D1C4();
  v13 = type metadata accessor for ProviderAttribution(0);
  sub_23B3C4528(v1 + *(v13 + 20), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    return sub_23B50D8E4();
  }

  (*(v4 + 32))(v8, v12, v2);
  sub_23B50D8E4();
  OUTLINED_FUNCTION_0_28();
  sub_23B438B20(v15, v16, MEMORY[0x277CC9270]);
  sub_23B50D0E4();
  return (*(v4 + 8))(v8, v2);
}

uint64_t ProviderAttribution.hashValue.getter()
{
  sub_23B50D8C4();
  ProviderAttribution.hash(into:)(v1);
  return sub_23B50D914();
}

uint64_t sub_23B438A9C(uint64_t a1)
{
  sub_23B50D8C4();
  ProviderAttribution.hash(into:)(v2);
  return sub_23B50D914();
}

uint64_t sub_23B438B20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ProviderAttribution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B438C48()
{
  result = qword_27E1330A8;
  if (!qword_27E1330A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1330A8);
  }

  return result;
}

unint64_t sub_23B438CA0()
{
  result = qword_280B42380;
  if (!qword_280B42380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42380);
  }

  return result;
}

unint64_t sub_23B438CF8()
{
  result = qword_280B42388;
  if (!qword_280B42388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42388);
  }

  return result;
}

Swift::String __swiftcall WeatherCondition.accessibilityDescription(isDaylight:)(Swift::Bool isDaylight)
{
  v2 = *v1;
  if (v2 == 19)
  {
    if (isDaylight)
    {
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }
    }

    else if (qword_280B43260 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_19_9(28525);
    goto LABEL_18;
  }

  if (v2 == 4)
  {
    if (isDaylight)
    {
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }
    }

    else if (qword_280B43260 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    OUTLINED_FUNCTION_5_0();
LABEL_18:
    OUTLINED_FUNCTION_2_12();
    v3 = sub_23B50AAD4();
    goto LABEL_19;
  }

  v3 = WeatherCondition.accessibilityDescription.getter();
LABEL_19:
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t WeatherCondition.Intensity.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_23B438FC4@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherCondition.Intensity.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WeatherCondition.ConditionGeneralCategory.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

Swift::String __swiftcall WeatherCondition.descriptionCategoryExpectedPhrase(isDaylight:isLeading:)(Swift::Bool isDaylight, Swift::Bool isLeading)
{
  v11[1] = *v2;
  WeatherCondition.category.getter(v11);
  switch(v11[0])
  {
    case 1:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_26;
    case 2:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_16_5();
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_156:
        OUTLINED_FUNCTION_5_0();
      }

      break;
    case 3:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_156;
    case 4:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_156;
    case 5:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_101;
      }

      OUTLINED_FUNCTION_6_8();
      if (!v5)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      goto LABEL_141;
    case 6:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        if (v6 != -1)
        {
          OUTLINED_FUNCTION_1_19();
          swift_once();
          OUTLINED_FUNCTION_13_9();
        }
      }

      else if (v6 != -1)
      {
        OUTLINED_FUNCTION_1_19();
        swift_once();
        OUTLINED_FUNCTION_13_9();
      }

      goto LABEL_156;
    case 7:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_147;
    case 8:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_147;
    case 9:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_156;
    case 0xA:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        if (v7 != -1)
        {
          OUTLINED_FUNCTION_1_19();
          swift_once();
          OUTLINED_FUNCTION_13_9();
        }
      }

      else if (v7 != -1)
      {
        OUTLINED_FUNCTION_1_19();
        swift_once();
        OUTLINED_FUNCTION_13_9();
      }

      goto LABEL_156;
    case 0xB:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_147;
    case 0xC:
      if (!isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_101;
      }

      OUTLINED_FUNCTION_6_8();
      if (!v5)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_26:
      OUTLINED_FUNCTION_3_27();
      break;
    case 0xD:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_141;
    case 0xE:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_101:
        OUTLINED_FUNCTION_15_8();
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_141:
        OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_8();
      }

      break;
    case 0xF:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_147;
    case 0x10:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_141;
    case 0x11:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_141;
    case 0x12:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_141;
    case 0x13:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_141;
    case 0x14:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_42();
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_147:
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_8();
      }

      break;
    default:
      OUTLINED_FUNCTION_10_15();
      if (isDaylight)
      {
        if (isLeading)
        {
          OUTLINED_FUNCTION_6_8();
          if (!v5)
          {
            OUTLINED_FUNCTION_0_15();
            swift_once();
          }
        }

        else
        {
          OUTLINED_FUNCTION_6_8();
          if (!v5)
          {
            OUTLINED_FUNCTION_0_15();
            swift_once();
          }
        }
      }

      else if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_156;
  }

  OUTLINED_FUNCTION_2_12();
  v8 = sub_23B50AAD4();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::String __swiftcall WeatherCondition.exactDescriptionPhrase(isDaylight:isLeading:)(Swift::Bool isDaylight, Swift::Bool isLeading)
{
  v3 = sub_23B439D84(*v2, isLeading, isDaylight);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_23B439D84(char a1, char a2, char a3)
{
  switch(a1)
  {
    case 1:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 2:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 3:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 4:
      if (a3)
      {
        if (a2)
        {
          if (qword_280B43260 != -1)
          {
            goto LABEL_206;
          }
        }

        else if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 5:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 6:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 7:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 8:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 9:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 10:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 11:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 12:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 13:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 14:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 15:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 16:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 17:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 18:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 19:
      if (a3)
      {
        if (a2)
        {
          if (qword_280B43260 != -1)
          {
            goto LABEL_206;
          }
        }

        else if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 20:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 21:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 22:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 23:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 24:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 25:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 26:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 27:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 28:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 29:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 30:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 31:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 32:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 33:
      if (a2)
      {
        if (qword_280B43260 == -1)
        {
          return sub_23B50AAD4();
        }
      }

      else if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

LABEL_206:
      swift_once();
      break;
    default:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
  }

  return sub_23B50AAD4();
}

Swift::String __swiftcall WeatherCondition.exactDescriptionExpectedPhrase(isDaylight:isLeading:)(Swift::Bool isDaylight, Swift::Bool isLeading)
{
  v3 = sub_23B43C320(*v2, isLeading, isDaylight);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_23B43C320(char a1, char a2, char a3)
{
  switch(a1)
  {
    case 1:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 2:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 3:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 4:
      if (a3)
      {
        if (a2)
        {
          if (qword_280B43260 != -1)
          {
            goto LABEL_184;
          }
        }

        else if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 5:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 6:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 7:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 8:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 9:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 10:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 11:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 12:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 13:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 14:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 15:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 16:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 17:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 18:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 19:
      if (a3)
      {
        if (a2)
        {
          if (qword_280B43260 != -1)
          {
            goto LABEL_184;
          }
        }

        else if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 20:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 21:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 22:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 23:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 24:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 25:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 26:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 27:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 28:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 29:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 30:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 31:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 32:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    case 33:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_184;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_184;
      }

      break;
    default:
      if (a2)
      {
        if (qword_280B43260 == -1)
        {
          return sub_23B50AAD4();
        }
      }

      else if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

LABEL_184:
      swift_once();
      break;
  }

  return sub_23B50AAD4();
}

unint64_t sub_23B43E6E0()
{
  result = qword_280B426A0;
  if (!qword_280B426A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B426A0);
  }

  return result;
}

unint64_t sub_23B43E738()
{
  result = qword_27E1330B0;
  if (!qword_27E1330B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1330B0);
  }

  return result;
}

_BYTE *_s9IntensityOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s24ConditionGeneralCategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s24ConditionGeneralCategoryOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t WeatherStatisticsModel.init(hourlyTemperatureStatistics:dailyPrecipitationStatistics:monthlyTemperatureStatistics:monthlyPrecipitationStatistics:dailyPrecipitationSummary:)()
{
  sub_23B40A768();
  type metadata accessor for WeatherStatisticsModel(0);
  sub_23B40A768();
  sub_23B40A768();
  sub_23B40A768();
  return sub_23B40A768();
}

unint64_t sub_23B43EAB4(unint64_t result, unint64_t a2)
{
  v3 = *(*v2 + 16);
  if (v3 >= result && v3 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B43EBE4()
{
  OUTLINED_FUNCTION_220();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_6();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_23B43EC40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001BLL && 0x800000023B535B20 == a2;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x800000023B535B40 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x800000023B535B60 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ELL && 0x800000023B535B80 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000019 && 0x800000023B535BA0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_23B50D834();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_23B43EDE4(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B43EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B43EC40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B43EEA4(uint64_t a1)
{
  v2 = sub_23B440270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B43EEE0(uint64_t a1)
{
  v2 = sub_23B440270();

  return MEMORY[0x2821FE720](a1, v2);
}

void WeatherStatisticsModel.monthlyTemperatureRangeAverages.getter()
{
  v37 = type metadata accessor for MonthTemperatureStatistics(0);
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_10(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132AD0, &qword_23B514168);
  OUTLINED_FUNCTION_5();
  v34 = v6;
  v35 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = *(v0 + *(type metadata accessor for WeatherStatisticsModel(0) + 24));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_11_10();
    sub_23B41B3D8(v12, v11, 0);
    v13 = 0;
    v14 = v38;
    OUTLINED_FUNCTION_52_0();
    v33 = v10 + v15;
    v16 = *(v10 + 16);
    v31 = v2;
    v32 = v16;
    v29 = v11;
    v30 = v10;
    while (v13 < *(v10 + 16))
    {
      v17 = v36;
      sub_23B4402C4();
      v18 = *(v35 + 48);
      v19 = v37;
      v20 = v9;
      v21 = *(v37 + 20);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      OUTLINED_FUNCTION_6();
      v24 = *(v23 + 32);
      v25 = v17 + v21;
      v9 = v20;
      v24(v20, v25, v22);
      v24(&v20[v18], v17 + *(v19 + 24), v22);
      v38 = v14;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        v28 = OUTLINED_FUNCTION_12_11(v26);
        sub_23B41B3D8(v28, v27 + 1, 1);
        v14 = v38;
      }

      *(v14 + 16) = v27 + 1;
      OUTLINED_FUNCTION_52_0();
      sub_23B40A768();
      if (v32 == v13)
      {
        goto LABEL_10;
      }

      ++v13;
      v10 = v30;
      if (v29 == v13)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void WeatherStatisticsModel.monthlyPrecipitationAmountAverages.getter()
{
  v23 = type metadata accessor for MonthPrecipitationStatistics(0);
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_10(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v8 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_5_17();
  v11 = *(v0 + *(type metadata accessor for WeatherStatisticsModel(v10) + 28));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_11_10();
    sub_23B41B3F8(v13, v12, 0);
    v14 = 0;
    OUTLINED_FUNCTION_52_0();
    v21 = v15;
    while (v14 < *(v11 + 16))
    {
      v16 = v3;
      sub_23B4402C4();
      (*(v8 + 16))(v1, v22 + *(v23 + 24), v6);
      sub_23B440320(v22, type metadata accessor for MonthPrecipitationStatistics);
      v18 = *(v24 + 16);
      v17 = *(v24 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = OUTLINED_FUNCTION_12_11(v17);
        sub_23B41B3F8(v20, v18 + 1, 1);
      }

      *(v24 + 16) = v18 + 1;
      OUTLINED_FUNCTION_52_0();
      (*(v8 + 32))(v24 + v19 + *(v8 + 72) * v18, v1, v6);
      if (v21 == v14)
      {
        goto LABEL_10;
      }

      ++v14;
      v3 = v16;
      if (v12 == v14)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void WeatherStatisticsModel.precipitationCalendar.getter()
{
  v23 = type metadata accessor for DayPrecipitationStatistics(0);
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v7 = (v6 - v5);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132AB8, &qword_23B5164C0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_5_17();
  v10 = *(v0 + *(type metadata accessor for WeatherStatisticsModel(v9) + 20));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_11_10();
    sub_23B41B418(v12, v11, 0);
    v13 = 0;
    OUTLINED_FUNCTION_52_0();
    v21 = *(v10 + 16);
    while (v13 < *(v10 + 16))
    {
      v14 = v3;
      sub_23B4402C4();
      v15 = *(v22 + 48);
      *v1 = *v7;
      v16 = *(v23 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      OUTLINED_FUNCTION_6();
      (*(v17 + 16))(&v1[v15], &v7[v16]);
      sub_23B440320(v7, type metadata accessor for DayPrecipitationStatistics);
      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = OUTLINED_FUNCTION_12_11(v18);
        sub_23B41B418(v20, v19 + 1, 1);
      }

      *(v24 + 16) = v19 + 1;
      OUTLINED_FUNCTION_52_0();
      sub_23B40A768();
      if (v21 == v13)
      {
        goto LABEL_10;
      }

      ++v13;
      v3 = v14;
      if (v11 == v13)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t WeatherStatisticsModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1330B8, &qword_23B5164C8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B440270();
  sub_23B50D974();
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  sub_23B3F1C50(&qword_27E1330C8, &qword_27E132240, &qword_23B510230, &protocol conformance descriptor for HourlyWeatherStatistics<A>);
  OUTLINED_FUNCTION_18_11(v3, &v22);
  if (!v2)
  {
    v17 = type metadata accessor for WeatherStatisticsModel(0);
    v11 = v17[5];
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
    sub_23B3F1C50(&qword_27E1330D0, &qword_27E132280, &qword_23B510278, &protocol conformance descriptor for DailyWeatherStatistics<A>);
    OUTLINED_FUNCTION_9_16(v3 + v11, &v21);
    v12 = v17[6];
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132270, &unk_23B5164A0);
    OUTLINED_FUNCTION_2_23(&qword_27E1330D8);
    OUTLINED_FUNCTION_9_16(v3 + v12, &v20);
    v13 = v17[7];
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132260, &qword_23B510258);
    OUTLINED_FUNCTION_2_23(&qword_27E1330E0);
    OUTLINED_FUNCTION_9_16(v3 + v13, &v19);
    v14 = v17[8];
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
    sub_23B3F1C50(&qword_27E1330E8, &qword_27E132250, &unk_23B5164B0, &protocol conformance descriptor for DailyWeatherSummary<A>);
    OUTLINED_FUNCTION_18_11(v3 + v14, &v18);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t WeatherStatisticsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24[8] = a2;
  v24[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  v24[1] = v24 - v5;
  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132260, &qword_23B510258);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v24[4] = v24 - v7;
  v24[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132270, &unk_23B5164A0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v24[5] = v24 - v9;
  v24[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_10(v12);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1330F0, &qword_23B5164D0);
  OUTLINED_FUNCTION_5();
  v24[9] = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_5_17();
  type metadata accessor for WeatherStatisticsModel(v15);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  v19 = v18 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B440270();
  v25 = v2;
  v20 = v27;
  sub_23B50D964();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  sub_23B3F1C50(&qword_27E1330F8, &qword_27E132240, &qword_23B510230, &protocol conformance descriptor for HourlyWeatherStatistics<A>);
  sub_23B50D734();
  sub_23B40A768();
  v31 = 1;
  sub_23B3F1C50(&qword_27E133100, &qword_27E132280, &qword_23B510278, &protocol conformance descriptor for DailyWeatherStatistics<A>);
  sub_23B50D734();
  sub_23B40A768();
  v30 = 2;
  OUTLINED_FUNCTION_6_9(&qword_27E133108, &qword_27E132270, &unk_23B5164A0);
  OUTLINED_FUNCTION_15_9();
  sub_23B50D734();
  sub_23B40A768();
  v29 = 3;
  OUTLINED_FUNCTION_6_9(&qword_27E133110, &qword_27E132260, &qword_23B510258);
  OUTLINED_FUNCTION_15_9();
  sub_23B50D734();
  sub_23B40A768();
  v28 = 4;
  sub_23B3F1C50(&qword_27E133118, &qword_27E132250, &unk_23B5164B0, &protocol conformance descriptor for DailyWeatherSummary<A>);
  OUTLINED_FUNCTION_15_9();
  sub_23B50D734();
  v21 = OUTLINED_FUNCTION_14_16();
  v22(v21);
  sub_23B40A768();
  sub_23B4402C4();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B440320(v19, type metadata accessor for WeatherStatisticsModel);
}

BOOL static WeatherStatisticsModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_220();
  sub_23B3E0F28();
  result = 0;
  if (v0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
    OUTLINED_FUNCTION_7_25(*(v1 + 52));
    if (sub_23B50ACD4())
    {
      v2 = OUTLINED_FUNCTION_7_25(*(v1 + 56));
      if (static WeatherMetadata.== infix(_:_:)(v2, v3))
      {
        v4 = type metadata accessor for WeatherStatisticsModel(0);
        v5 = OUTLINED_FUNCTION_7_25(v4[5]);
        if (sub_23B4401E0(v5, v6, v7, v8, v9))
        {
          v10 = OUTLINED_FUNCTION_7_25(v4[6]);
          if (sub_23B4401E0(v10, v11, v12, v13, v14))
          {
            v15 = OUTLINED_FUNCTION_7_25(v4[7]);
            if (sub_23B4401E0(v15, v16, v17, v18, v19))
            {
              sub_23B3E0914();
              if (v20)
              {
                v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
                v22 = OUTLINED_FUNCTION_7_25(*(v21 + 52));
                if (static WeatherMetadata.== infix(_:_:)(v22, v23))
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_23B4401E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_220();
  if ((v9(*v7, *v8) & 1) == 0)
  {
    return 0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_7_25(*(v10 + 52));
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_7_25(*(v10 + 56));

  return static WeatherMetadata.== infix(_:_:)(v11, v12);
}

unint64_t sub_23B440270()
{
  result = qword_27E1330C0;
  if (!qword_27E1330C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1330C0);
  }

  return result;
}

uint64_t sub_23B4402C4()
{
  OUTLINED_FUNCTION_220();
  v2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_23B440320(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherStatisticsModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B440480()
{
  result = qword_27E133120;
  if (!qword_27E133120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133120);
  }

  return result;
}

unint64_t sub_23B4404D8()
{
  result = qword_27E133128;
  if (!qword_27E133128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133128);
  }

  return result;
}

unint64_t sub_23B440530()
{
  result = qword_27E133130;
  if (!qword_27E133130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133130);
  }

  return result;
}

uint64_t WatchWeather.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:alerts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for CurrentWeather(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = type metadata accessor for WatchWeather(0);
  v17 = v16[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = v16[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = v16[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = v16[8];
  type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = v16[9];
  sub_23B3C2510(a1, a7, &qword_27E131C98, &unk_23B50ED60);
  sub_23B3C2510(a2, a7 + v17, &qword_27E131C90, &unk_23B514EC0);
  sub_23B3C2510(a3, a7 + v22, &qword_27E131C88, &unk_23B50ED50);
  sub_23B3C2510(a4, a7 + v27, &qword_27E131C80, &qword_23B50ED48);
  result = sub_23B3C2510(a5, a7 + v32, &qword_27E131C78, &qword_23B50ED40);
  *(a7 + v37) = a6;
  return result;
}

uint64_t type metadata accessor for WatchWeather(uint64_t a1)
{
  result = qword_280B45C68;
  if (!qword_280B45C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WatchWeather.minuteForecast.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for WatchWeather(v0);
  return OUTLINED_FUNCTION_26_10(*(v1 + 20), &qword_27E131C90, &unk_23B514EC0);
}

uint64_t WatchWeather.minuteForecast.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WatchWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WatchWeather.hourlyForecast.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for WatchWeather(v0);
  return OUTLINED_FUNCTION_26_10(*(v1 + 24), &qword_27E131C88, &unk_23B50ED50);
}

uint64_t WatchWeather.hourlyForecast.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WatchWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WatchWeather.dailyForecast.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for WatchWeather(v0);
  return OUTLINED_FUNCTION_26_10(*(v1 + 28), &qword_27E131C80, &qword_23B50ED48);
}

uint64_t WatchWeather.dailyForecast.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WatchWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WatchWeather.airQuality.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for WatchWeather(v0);
  return OUTLINED_FUNCTION_26_10(*(v1 + 32), &qword_27E131C78, &qword_23B50ED40);
}

uint64_t WatchWeather.airQuality.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WatchWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WatchWeather.alerts.getter()
{
  type metadata accessor for WatchWeather(0);
}

uint64_t WatchWeather.alerts.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for WatchWeather(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t WatchWeather.alerts.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WatchWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B440B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F466574756E696DLL && a2 == 0xEE00747361636572;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F46796C72756F68 && a2 == 0xEE00747361636572;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F46796C696164 && a2 == 0xED00007473616365;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x737472656C61 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_23B50D834();

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

uint64_t sub_23B440D8C(char a1)
{
  result = 0x57746E6572727563;
  switch(a1)
  {
    case 1:
      v3 = 0x6574756E696DLL;
      goto LABEL_5;
    case 2:
      v3 = 0x796C72756F68;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 3:
      result = 0x726F46796C696164;
      break;
    case 4:
      result = 0x696C617551726961;
      break;
    case 5:
      result = 0x737472656C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B440E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B440B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B440E8C(uint64_t a1)
{
  v2 = sub_23B4426EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B440EC8(uint64_t a1)
{
  v2 = sub_23B4426EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static WatchWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v150 = a2;
  v135 = type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v131 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52();
  v132 = v8;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133138, &qword_23B5166B0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v136 = v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52();
  v133 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52();
  v137 = v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133140, &qword_23B5166B8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_52();
  v141 = v17;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  v138 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  OUTLINED_FUNCTION_3(v20);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_52();
  v142 = v22;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133148, &qword_23B5166C0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_52();
  v146 = v24;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_52();
  v143 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v27);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_52();
  v147 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133150, &qword_23B5166C8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  v33 = &v130 - v32;
  type metadata accessor for CurrentWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_27();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_3(v38);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v39);
  v41 = &v130 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133158, &qword_23B5166D0);
  OUTLINED_FUNCTION_3(v42);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  v45 = &v130 - v44;
  v47 = *(v46 + 56);
  v149 = a1;
  sub_23B3CE510(a1, &v130 - v44, &qword_27E131C98, &unk_23B50ED60);
  v48 = v150;
  sub_23B3CE510(v150, &v45[v47], &qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_46(v45);
  if (v49)
  {
    OUTLINED_FUNCTION_46(&v45[v47]);
    if (v49)
    {
      sub_23B398890(v45, &qword_27E131C98, &unk_23B50ED60);
      goto LABEL_12;
    }
  }

  else
  {
    sub_23B3CE510(v45, v41, &qword_27E131C98, &unk_23B50ED60);
    OUTLINED_FUNCTION_46(&v45[v47]);
    if (!v49)
    {
      sub_23B442690(&v45[v47], v37, type metadata accessor for CurrentWeather);
      v53 = static CurrentWeather.== infix(_:_:)(v41, v37);
      sub_23B442740();
      sub_23B442740();
      sub_23B398890(v45, &qword_27E131C98, &unk_23B50ED60);
      if (!v53)
      {
        return 0;
      }

LABEL_12:
      v54 = type metadata accessor for WatchWeather(0);
      v55 = *(v30 + 48);
      v56 = v149;
      OUTLINED_FUNCTION_59();
      sub_23B3CE510(v57, v58, v59, v60);
      v61 = v48;
      OUTLINED_FUNCTION_59();
      sub_23B3CE510(v62, v63, v64, v65);
      if (__swift_getEnumTagSinglePayload(v33, 1, v148) == 1)
      {
        OUTLINED_FUNCTION_4_0(&v33[v55]);
        if (!v49)
        {
          goto LABEL_19;
        }

        sub_23B398890(v33, &qword_27E131C90, &unk_23B514EC0);
      }

      else
      {
        v66 = v147;
        sub_23B3CE510(v33, v147, &qword_27E131C90, &unk_23B514EC0);
        OUTLINED_FUNCTION_4_0(&v33[v55]);
        if (v49)
        {
          sub_23B398890(v66, &qword_27E131CA0, &qword_23B5101A0);
LABEL_19:
          v50 = &qword_27E133150;
          v51 = &qword_23B5166C8;
          v52 = v33;
          goto LABEL_20;
        }

        v68 = v143;
        OUTLINED_FUNCTION_59();
        sub_23B3CE5BC(v69, v70, v71, v72);
        OUTLINED_FUNCTION_14_17();
        v74 = sub_23B442514(v66, v68, v73, &qword_27E131CA0, &qword_23B5101A0);
        OUTLINED_FUNCTION_21_8(v68);
        OUTLINED_FUNCTION_21_8(v66);
        sub_23B398890(v33, &qword_27E131C90, &unk_23B514EC0);
        if ((v74 & 1) == 0)
        {
          return 0;
        }
      }

      v75 = *(v144 + 48);
      v45 = v146;
      OUTLINED_FUNCTION_59();
      sub_23B3CE510(v76, v77, v78, v79);
      OUTLINED_FUNCTION_59();
      sub_23B3CE510(v80, v81, v82, v83);
      if (__swift_getEnumTagSinglePayload(v45, 1, v145) == 1)
      {
        OUTLINED_FUNCTION_4_0(&v45[v75]);
        if (!v49)
        {
          goto LABEL_31;
        }

        sub_23B398890(v45, &qword_27E131C88, &unk_23B50ED50);
      }

      else
      {
        v84 = v142;
        sub_23B3CE510(v45, v142, &qword_27E131C88, &unk_23B50ED50);
        OUTLINED_FUNCTION_4_0(&v45[v75]);
        if (v49)
        {
          sub_23B398890(v84, &qword_27E131CA8, &unk_23B50ED70);
LABEL_31:
          v50 = &qword_27E133148;
          v51 = &qword_23B5166C0;
          goto LABEL_10;
        }

        v85 = v138;
        OUTLINED_FUNCTION_59();
        sub_23B3CE5BC(v86, v87, v88, v89);
        OUTLINED_FUNCTION_16_6();
        v91 = sub_23B442514(v84, v85, v90, &qword_27E131CA8, &unk_23B50ED70);
        OUTLINED_FUNCTION_21_8(v85);
        OUTLINED_FUNCTION_21_8(v84);
        sub_23B398890(v45, &qword_27E131C88, &unk_23B50ED50);
        if ((v91 & 1) == 0)
        {
          return 0;
        }
      }

      v92 = *(v139 + 48);
      v93 = v141;
      OUTLINED_FUNCTION_59();
      sub_23B3CE510(v94, v95, v96, v97);
      v98 = v93;
      OUTLINED_FUNCTION_59();
      sub_23B3CE510(v99, v100, v101, v102);
      if (__swift_getEnumTagSinglePayload(v93, 1, v140) == 1)
      {
        OUTLINED_FUNCTION_46(v93 + v92);
        if (!v49)
        {
          goto LABEL_40;
        }

        sub_23B398890(v93, &qword_27E131C80, &qword_23B50ED48);
      }

      else
      {
        v103 = v137;
        sub_23B3CE510(v93, v137, &qword_27E131C80, &qword_23B50ED48);
        OUTLINED_FUNCTION_46(v93 + v92);
        if (v49)
        {
          sub_23B398890(v103, &qword_27E131CB0, &qword_23B516B60);
LABEL_40:
          v50 = &qword_27E133140;
          v51 = &qword_23B5166B8;
LABEL_50:
          v52 = v98;
          goto LABEL_20;
        }

        v104 = v133;
        OUTLINED_FUNCTION_59();
        sub_23B3CE5BC(v105, v106, v107, v108);
        OUTLINED_FUNCTION_15_10();
        v110 = sub_23B442514(v103, v104, v109, &qword_27E131CB0, &qword_23B516B60);
        OUTLINED_FUNCTION_21_8(v104);
        OUTLINED_FUNCTION_21_8(v103);
        sub_23B398890(v98, &qword_27E131C80, &qword_23B50ED48);
        if ((v110 & 1) == 0)
        {
          return 0;
        }
      }

      v111 = *(v134 + 48);
      v112 = v136;
      OUTLINED_FUNCTION_59();
      sub_23B3CE510(v113, v114, v115, v116);
      v98 = v112;
      OUTLINED_FUNCTION_59();
      sub_23B3CE510(v117, v118, v119, v120);
      if (__swift_getEnumTagSinglePayload(v112, 1, v135) == 1)
      {
        OUTLINED_FUNCTION_4_0(v112 + v111);
        if (!v49)
        {
          goto LABEL_49;
        }

        sub_23B398890(v112, &qword_27E131C78, &qword_23B50ED40);
      }

      else
      {
        v121 = v112;
        v122 = v132;
        sub_23B3CE510(v121, v132, &qword_27E131C78, &qword_23B50ED40);
        OUTLINED_FUNCTION_4_0(v98 + v111);
        if (v49)
        {
          sub_23B442740();
LABEL_49:
          v50 = &qword_27E133138;
          v51 = &qword_23B5166B0;
          goto LABEL_50;
        }

        v123 = v98 + v111;
        v124 = v131;
        sub_23B442690(v123, v131, type metadata accessor for AirQuality);
        v125 = static AirQuality.== infix(_:_:)(v122, v124);
        sub_23B442740();
        sub_23B442740();
        sub_23B398890(v98, &qword_27E131C78, &qword_23B50ED40);
        if (!v125)
        {
          return 0;
        }
      }

      v126 = *(v54 + 36);
      v127 = *(v61 + v126);
      if (*(v56 + v126))
      {
        if (!v127)
        {
          return 0;
        }

        sub_23B3E17F4();
        v129 = v128;

        if ((v129 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v127)
      {
        return 0;
      }

      return 1;
    }

    sub_23B442740();
  }

  v50 = &qword_27E133158;
  v51 = &qword_23B5166D0;
LABEL_10:
  v52 = v45;
LABEL_20:
  sub_23B398890(v52, v50, v51);
  return 0;
}

uint64_t WatchWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133160, &qword_23B5166D8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4426EC();
  sub_23B50D974();
  v33[1] = 0;
  type metadata accessor for CurrentWeather(0);
  OUTLINED_FUNCTION_7_26();
  sub_23B442830(v11, v12);
  OUTLINED_FUNCTION_59();
  sub_23B50D794();
  if (!v2)
  {
    v28[0] = type metadata accessor for WatchWeather(0);
    v33[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
    OUTLINED_FUNCTION_1_0(&qword_280B41A88);
    v13 = OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_17_10(v13, v33, v14, v15, v16);
    v32 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
    OUTLINED_FUNCTION_1_0(&qword_280B41A90);
    v17 = OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_17_10(v17, &v32, v18, v19, v20);
    v31 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    OUTLINED_FUNCTION_1_0(qword_280B41A98);
    v21 = OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_17_10(v21, &v31, v22, v23, v24);
    v30 = 4;
    type metadata accessor for AirQuality(0);
    OUTLINED_FUNCTION_9_17();
    sub_23B442830(v25, v26);
    OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_59();
    sub_23B50D794();
    v28[1] = *(v3 + *(v28[0] + 36));
    v29 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
    sub_23B442794(&qword_280B41A38, &unk_280B426F8, &protocol conformance descriptor for WeatherAlert, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_59();
    sub_23B50D794();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t WatchWeather.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52();
  v83 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52();
  v93 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52();
  v91 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v90 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_3(v15);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_52();
  v92 = v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133170, &qword_23B5166E0);
  OUTLINED_FUNCTION_5();
  v89 = v18;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  v22 = type metadata accessor for WatchWeather(0);
  v23 = (v22 - 8);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_27();
  v26 = v25 - v24;
  type metadata accessor for CurrentWeather(0);
  OUTLINED_FUNCTION_1();
  v88 = v27;
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  v31 = v23[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  v85 = v31;
  OUTLINED_FUNCTION_1();
  v87 = v32;
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  v36 = v23[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v84 = v36;
  OUTLINED_FUNCTION_1();
  v86 = v37;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  v41 = v23[9];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = v23[10];
  v47 = type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  v51 = v23[11];
  v97 = v26;
  *(v26 + v51) = 0;
  v52 = a1;
  v53 = a1[3];
  v98 = v52;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  sub_23B4426EC();
  v94 = v21;
  v54 = v96;
  sub_23B50D964();
  if (!v54)
  {
    v96 = v42;
    v80 = v41;
    v81 = v47;
    v55 = v90;
    v79 = v46;
    v78 = v51;
    v56 = v91;
    v57 = v93;
    v58 = v89;
    v104 = 0;
    OUTLINED_FUNCTION_7_26();
    v61 = sub_23B442830(v59, v60);
    v62 = v92;
    OUTLINED_FUNCTION_29_7(v88, &v104, v95, v63, v61);
    v65 = v97;
    sub_23B3C2510(v62, v97, &qword_27E131C98, &unk_23B50ED60);
    v103[1] = 1;
    OUTLINED_FUNCTION_2_4(&qword_27E133180, &qword_27E131CA0, &qword_23B5101A0);
    sub_23B50D6D4();
    sub_23B3C2510(v55, v65 + v85, &qword_27E131C90, &unk_23B514EC0);
    v103[0] = 2;
    v66 = OUTLINED_FUNCTION_2_4(&qword_27E133188, &qword_27E131CA8, &unk_23B50ED70);
    OUTLINED_FUNCTION_29_7(v86, v103, v95, v67, v66);
    sub_23B3C2510(v56, v65 + v84, &qword_27E131C88, &unk_23B50ED50);
    v102 = 3;
    v68 = OUTLINED_FUNCTION_2_4(&qword_27E133190, &qword_27E131CB0, &qword_23B516B60);
    OUTLINED_FUNCTION_29_7(v96, &v102, v95, v69, v68);
    sub_23B3C2510(v57, v65 + v80, &qword_27E131C80, &qword_23B50ED48);
    v101 = 4;
    OUTLINED_FUNCTION_9_17();
    v72 = sub_23B442830(v70, v71);
    v73 = v83;
    OUTLINED_FUNCTION_29_7(v81, &v101, v95, v74, v72);
    sub_23B3C2510(v73, v65 + v79, &qword_27E131C78, &qword_23B50ED40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
    v100 = 5;
    sub_23B442794(&qword_27E1331A0, &qword_27E1331A8, &protocol conformance descriptor for WeatherAlert, MEMORY[0x277D83978]);
    v75 = v94;
    v76 = v95;
    sub_23B50D6D4();
    (*(v58 + 8))(v75, v76);
    *(v65 + v78) = v99;
    sub_23B442874(v65, v82);
  }

  __swift_destroy_boxed_opaque_existential_1(v98);
  return sub_23B442740();
}

uint64_t sub_23B442514(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t *a4, uint64_t *a5)
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (!static WeatherMetadata.== infix(_:_:)(a1 + v9[13], a2 + v9[13]))
  {
    return 0;
  }

  v10 = v9[14];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = v9[15];
  v17 = *(a2 + v16);
  if (*(a1 + v16))
  {
    if (!v17)
    {
      return 0;
    }

    sub_23B3E132C();
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v20 = v9[16];
  v21 = *(a2 + v20);
  if (*(a1 + v20))
  {
    if (!v21)
    {
      return 0;
    }

    sub_23B3E17B4();
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    v24 = v9[17];
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 16);
    v27 = (a2 + v24);
    if (v26)
    {
      if (!*(v27 + 16))
      {
        return 0;
      }
    }

    else
    {
      if (v27[2])
      {
        return 0;
      }

      if (*v25 != *v27 || v25[1] != v27[1])
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v21)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_23B442690(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_65();
  v5(v4);
  return a2;
}

unint64_t sub_23B4426EC()
{
  result = qword_27E133168;
  if (!qword_27E133168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133168);
  }

  return result;
}

uint64_t sub_23B442740()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_23B442794(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131EB8, &unk_23B519380);
    sub_23B442830(a2, type metadata accessor for WeatherAlert);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B442830(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_77();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B442874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchWeather(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23B442900(uint64_t a1)
{
  sub_23B3A85A8(319, qword_280B44EC0, type metadata accessor for CurrentWeather);
  if (v1 <= 0x3F)
  {
    sub_23B442A7C(319, &qword_280B43628, &qword_27E131CA0, &qword_23B5101A0);
    if (v2 <= 0x3F)
    {
      sub_23B442A7C(319, &qword_280B43630, &qword_27E131CA8, &unk_23B50ED70);
      if (v3 <= 0x3F)
      {
        sub_23B442A7C(319, &qword_280B43638, &qword_27E131CB0, &qword_23B516B60);
        if (v4 <= 0x3F)
        {
          sub_23B3A85A8(319, qword_280B44448, type metadata accessor for AirQuality);
          if (v5 <= 0x3F)
          {
            sub_23B442A7C(319, &qword_280B43420, &qword_27E131EB8, &unk_23B519380);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23B442A7C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_77();
    v5 = sub_23B50D504();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for WatchWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B442BAC()
{
  result = qword_27E1331B0;
  if (!qword_27E1331B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1331B0);
  }

  return result;
}

unint64_t sub_23B442C04()
{
  result = qword_27E1331B8;
  if (!qword_27E1331B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1331B8);
  }

  return result;
}

unint64_t sub_23B442C5C()
{
  result = qword_27E1331C0;
  if (!qword_27E1331C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1331C0);
  }

  return result;
}

uint64_t sub_23B442CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = a7;
  v21[3] = a8;
  v13 = type metadata accessor for DailyWeatherSummaryQuery.BuildParameters(0, v21);
  v14 = v13[13];
  sub_23B50BE64();
  OUTLINED_FUNCTION_2();
  (*(v15 + 32))(&a9[v14], a2);
  v16 = v13[14];
  sub_23B50AD24();
  OUTLINED_FUNCTION_2();
  (*(v17 + 32))(&a9[v16], a3);
  v18 = v13[15];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_2();
  return (*(v19 + 32))(&a9[v18], a4);
}

uint64_t sub_23B442E48@<X0>(unsigned int *a1@<X4>, uint64_t *a2@<X5>, uint64_t *a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v9 = *a1;
  sub_23B50C7D4();
  OUTLINED_FUNCTION_2();
  (*(v10 + 104))(a5, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = (a5 + *(result + 52));
  *v12 = a4;
  v12[1] = 0;
  return result;
}

uint64_t sub_23B442FBC(uint64_t a1)
{
  result = type metadata accessor for WeatherModelFactory();
  if (v2 <= 0x3F)
  {
    result = sub_23B50BE64();
    if (v3 <= 0x3F)
    {
      result = sub_23B50AD24();
      if (v4 <= 0x3F)
      {
        result = sub_23B50AEF4();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23B4430B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23B50C7D4();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  (*(v8 + 16))(v7 - v6, v4);
  return sub_23B50D474();
}

uint64_t sub_23B44317C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a3;
  v45 = a4;
  v46 = a2;
  v47 = a6;
  v42 = a1;
  v43 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5();
  v41 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v39 = v10 - v9;
  v38 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  v16 = v15 - v14;
  v17 = sub_23B50BE64();
  OUTLINED_FUNCTION_5();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v23 = v22 - v21;
  v24 = *(a5 + 16);
  v35 = *(a5 + 24);
  v36 = v24;
  v25 = *(a5 + 40);
  v34 = *(a5 + 32);
  v48[0] = v24;
  v48[1] = v35;
  v48[2] = v34;
  v48[3] = v25;
  v37 = type metadata accessor for DailyWeatherSummaryQuery.BuildParameters(0, v48);
  OUTLINED_FUNCTION_5();
  v27 = v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v34 - v30;
  v40 = *(v40 + *(a5 + 52));
  (*(v19 + 16))(v23, v42, v17, v29);
  (*(v12 + 16))(v16, v44, v38);
  v32 = v39;
  (*(v41 + 16))(v39, v45, v43);
  sub_23B442CB0(v46, v23, v16, v32, v36, v35, v34, v25, v31);

  v40(v31);
  return (*(v27 + 8))(v31, v37);
}

uint64_t WeatherServiceAttribution.logoDark3x.setter()
{
  OUTLINED_FUNCTION_4();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherServiceAttribution.logoLight3x.setter()
{
  OUTLINED_FUNCTION_4();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WeatherServiceAttribution.logoSquare3x.setter()
{
  OUTLINED_FUNCTION_4();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}