unint64_t sub_21AFC57F0()
{
  result = qword_27CD43588;
  if (!qword_27CD43588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43588);
  }

  return result;
}

uint64_t sub_21AFC5844(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47280, &qword_21B12A150);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadBlock.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21AFC59A0()
{
  result = qword_27CD43598;
  if (!qword_27CD43598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43598);
  }

  return result;
}

unint64_t sub_21AFC59F4(uint64_t a1)
{
  result = sub_21AFC55C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21AFC5A20()
{
  result = qword_27CD435A0;
  if (!qword_27CD435A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD435A0);
  }

  return result;
}

unint64_t sub_21AFC5A78()
{
  result = qword_27CD435A8;
  if (!qword_27CD435A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD435A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return sub_21AFA8918(a1, v1, v2);
}

id sub_21AFC5B20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21B1123D4();
  if (a3)
  {
    a3 = sub_21B1122E4();
  }

  v6 = [v3 retrieveAssetSet:v5 usages:a3];

  return v6;
}

uint64_t sub_21AFC5BA4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_21AFC5C14(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_21AFC5C14(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_21AFC5C84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  sub_21AFC6010(a1, &v33);
  if (v34)
  {
    sub_21AF81D68(&v33, v35);
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v11 = sub_21B1122D4();
    __swift_project_value_buffer(v11, qword_2811FAB28);
    sub_21AF92198(v35, &v33);
    sub_21AF92198(v35, v32);
    sub_21AF92198(v35, v31);
    v12 = sub_21B1122B4();
    v13 = sub_21B1126E4();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_18_3();
      v14 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v14 = 136643331;
      v15 = __swift_project_boxed_opaque_existential_0(&v33, v34);
      (*(v6 + 16))(v10, v15, v4);
      sub_21AFC9108();
      sub_21B112B84();
      v30 = a2;
      (*(v6 + 8))(v10, v4);
      __swift_destroy_boxed_opaque_existential_0(&v33);
      v16 = OUTLINED_FUNCTION_35_2();
      v19 = sub_21AFCEC24(v16, v17, v18);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      __swift_project_boxed_opaque_existential_0(v32, v32[3]);
      v20 = OUTLINED_FUNCTION_45();
      v21 = type metadata accessor for SODAAsset(v20);
      v22 = (v19 + *(v21 + 24));
      v23 = *v22;
      v24 = v22[1];

      __swift_destroy_boxed_opaque_existential_0(v32);
      sub_21AFCEC24(v23, v24, &v36);
      OUTLINED_FUNCTION_21_2();

      *(v14 + 14) = v23;
      *(v14 + 22) = 2048;
      v25 = __swift_project_boxed_opaque_existential_0(v31, v31[3]);
      v26 = *(v21 + 20);
      a2 = v30;
      v27 = *(v25 + v26);
      __swift_destroy_boxed_opaque_existential_0(v31);
      *(v14 + 24) = v27;
      _os_log_impl(&dword_21AF80000, v12, v13, "Successfully fetched recipe location %{sensitive}s, asset version: %s, content version: %lu ", v14, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v31);

      __swift_destroy_boxed_opaque_existential_0(&v33);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    v29 = __swift_project_boxed_opaque_existential_0(v35, v35[3]);
    (*(v6 + 16))(a2, v29, v4);
    return __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    sub_21AFA8918(&v33, &qword_27CD435B0, &unk_21B1170D0);
    sub_21AFC90B4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_21AFC6010@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  sub_21AFC6760(a1, v87);
  v10 = type metadata accessor for SODAAssetProvider(0);
  sub_21AFC7C04(a1, *(v2 + *(v10 + 28) + 8), v85);
  sub_21AFC91AC(v87, &v81);
  if (v82)
  {
    sub_21AF81D68(&v81, v84);
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v11 = sub_21B1122D4();
    __swift_project_value_buffer(v11, qword_2811FAB28);
    sub_21AF92198(a1, &v81);
    sub_21AF92198(v84, &v78);
    sub_21AF92198(v84, v76);
    sub_21AF92198(v84, v74);
    v12 = sub_21B1122B4();
    v13 = sub_21B1126F4();
    v14 = &unk_21B117000;
    v69 = v5;
    if (os_log_type_enabled(v12, v13))
    {
      v15 = swift_slowAlloc();
      v73[0] = OUTLINED_FUNCTION_38_2();
      *v15 = 136315907;
      v68 = v13;
      v16 = v83;
      __swift_project_boxed_opaque_existential_0(&v81, v82);
      v17 = OUTLINED_FUNCTION_20_3();
      v18(v17, v16);
      __swift_destroy_boxed_opaque_existential_0(&v81);
      v19 = OUTLINED_FUNCTION_35_2();
      v22 = sub_21AFCEC24(v19, v20, v21);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2080;
      __swift_project_boxed_opaque_existential_0(&v78, v79);
      v23 = OUTLINED_FUNCTION_45();
      v24 = type metadata accessor for SODAAsset(v23);
      v25 = (v22 + *(v24 + 24));
      v26 = *v25;
      v27 = v25[1];

      __swift_destroy_boxed_opaque_existential_0(&v78);
      sub_21AFCEC24(v26, v27, v73);
      OUTLINED_FUNCTION_20_3();

      *(v15 + 14) = v26;
      *(v15 + 22) = 2048;
      v28 = *(__swift_project_boxed_opaque_existential_0(v76, v77) + *(v24 + 20));
      __swift_destroy_boxed_opaque_existential_0(v76);
      *(v15 + 24) = v28;
      *(v15 + 32) = 2085;
      v29 = __swift_project_boxed_opaque_existential_0(v74, v75);
      (*(v5 + 16))(v9, v29, v70);
      v30 = sub_21B110C94();
      v32 = v31;
      (*(v5 + 8))(v9, v70);
      __swift_destroy_boxed_opaque_existential_0(v74);
      v33 = v30;
      v14 = &unk_21B117000;
      v34 = sub_21AFCEC24(v33, v32, v73);

      *(v15 + 34) = v34;
      _os_log_impl(&dword_21AF80000, v12, v68, "Successfully fetched UAF asset: %s, asset version: %s, content version: %lu, from %{sensitive}s", v15, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v76);

      __swift_destroy_boxed_opaque_existential_0(&v81);
      __swift_destroy_boxed_opaque_existential_0(&v78);
      __swift_destroy_boxed_opaque_existential_0(v74);
    }

    sub_21AFC91AC(v85, &v78);
    if (v79)
    {
      sub_21AF81D68(&v78, &v81);
      sub_21AF92198(a1, &v78);
      sub_21AF92198(&v81, v76);
      sub_21AF92198(&v81, v74);
      sub_21AF92198(&v81, v73);
      v37 = sub_21B1122B4();
      v38 = sub_21B1126F4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v72 = OUTLINED_FUNCTION_38_2();
        *v39 = v14[5];
        v40 = v80;
        __swift_project_boxed_opaque_existential_0(&v78, v79);
        v41 = OUTLINED_FUNCTION_19_0();
        v43 = v42(v41, v40);
        if (v44)
        {
          v45 = v43;
        }

        else
        {
          v45 = 6369134;
        }

        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = 0xE300000000000000;
        }

        __swift_destroy_boxed_opaque_existential_0(&v78);
        sub_21AFCEC24(v45, v46, &v72);
        OUTLINED_FUNCTION_19_0();

        *(v39 + 4) = v45;
        *(v39 + 12) = 2080;
        __swift_project_boxed_opaque_existential_0(v76, v77);
        v47 = OUTLINED_FUNCTION_45();
        v48 = type metadata accessor for SODAAsset(v47);

        __swift_destroy_boxed_opaque_existential_0(v76);
        v49 = OUTLINED_FUNCTION_35_2();
        v52 = sub_21AFCEC24(v49, v50, v51);

        *(v39 + 14) = v52;
        *(v39 + 22) = 2048;
        v53 = *(__swift_project_boxed_opaque_existential_0(v74, v75) + *(v48 + 20));
        __swift_destroy_boxed_opaque_existential_0(v74);
        *(v39 + 24) = v53;
        *(v39 + 32) = 2085;
        v54 = __swift_project_boxed_opaque_existential_0(v73, v73[3]);
        (*(v69 + 16))(v9, v54, v70);
        v55 = sub_21B110C94();
        v57 = v56;
        (*(v69 + 8))(v9, v70);
        __swift_destroy_boxed_opaque_existential_0(v73);
        sub_21AFCEC24(v55, v57, &v72);
        OUTLINED_FUNCTION_19_0();

        *(v39 + 34) = v55;
        _os_log_impl(&dword_21AF80000, v37, v38, "Successfully fetched OS Installed asset: %s, asset version: %s, content version: %lu, from %{sensitive}s", v39, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_44();
        MEMORY[0x21CEEA9A0]();
        OUTLINED_FUNCTION_44();
        MEMORY[0x21CEEA9A0]();

        v58 = OUTLINED_FUNCTION_17_5();
        sub_21AFA8918(v58, v59, &unk_21B1170D0);
        OUTLINED_FUNCTION_15_6();
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v74);

        v62 = OUTLINED_FUNCTION_17_5();
        sub_21AFA8918(v62, v63, &unk_21B1170D0);
        OUTLINED_FUNCTION_15_6();
        __swift_destroy_boxed_opaque_existential_0(v73);
        __swift_destroy_boxed_opaque_existential_0(v76);
        __swift_destroy_boxed_opaque_existential_0(&v78);
      }

      __swift_project_boxed_opaque_existential_0(v84, v84[3]);
      v64 = OUTLINED_FUNCTION_45();
      v65 = type metadata accessor for SODAAsset(v64);
      v66 = *(&qword_27CD435B0 + *(v65 + 20));
      if (*(__swift_project_boxed_opaque_existential_0(&v81, v82) + *(v65 + 20)) >= v66)
      {
        v67 = &v81;
      }

      else
      {
        v67 = v84;
      }

      sub_21AF92198(v67, a2);
      __swift_destroy_boxed_opaque_existential_0(&v81);
    }

    else
    {
      v60 = OUTLINED_FUNCTION_17_5();
      sub_21AFA8918(v60, v61, &unk_21B1170D0);
      OUTLINED_FUNCTION_15_6();
      sub_21AFA8918(&v78, &qword_27CD435B0, &unk_21B1170D0);
      sub_21AF92198(v84, a2);
    }

    return __swift_destroy_boxed_opaque_existential_0(v84);
  }

  else
  {
    OUTLINED_FUNCTION_15_6();
    result = sub_21AFA8918(&v81, &qword_27CD435B0, &unk_21B1170D0);
    v36 = v85[1];
    *a2 = v85[0];
    *(a2 + 16) = v36;
    *(a2 + 32) = v86;
  }

  return result;
}

uint64_t sub_21AFC6760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v8);
  v215 = &boxed_opaque_existential_1 - v9;
  v213 = sub_21B110CA4();
  OUTLINED_FUNCTION_1();
  v211 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v212 = v13 - v12;
  v14 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_31_3();
  MEMORY[0x28223BE20](v22);
  v24 = &boxed_opaque_existential_1 - v23;
  v25 = sub_21B111A24();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v31 = v30 - v29;
  result = type metadata accessor for SODAAssetProvider(0);
  if (*(v4 + *(result + 32)) != 1)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v204 = v24;
  v205 = v16;
  v206 = v14;
  v210 = a2;
  sub_21B111DF4();
  sub_21AFCB4D0(65, v31, &v222);
  (*(v27 + 8))(v31, v25);
  v33 = v4[3];
  v34 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v33);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v35 = sub_21B0E3C3C();
  v37 = v36;
  v38 = a1[3];
  v39 = a1[4];
  v40 = OUTLINED_FUNCTION_30_2();
  __swift_project_boxed_opaque_existential_0(v40, v41);
  v42 = (*(v39 + 40))(v38, v39);
  v43 = (*(v34 + 8))(v35, v37, v42, v33, v34);

  if (!v43)
  {
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v54 = sub_21B1122D4();
    __swift_project_value_buffer(v54, qword_2811FAB28);
    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_36_2();
    v55 = sub_21B1122B4();
    v56 = sub_21B112704();
    if (OUTLINED_FUNCTION_14_6(v56))
    {
      v57 = OUTLINED_FUNCTION_37_2();
      v217[0] = swift_slowAlloc();
      *v57 = 136315394;
      v58 = OUTLINED_FUNCTION_17_5();
      __swift_project_boxed_opaque_existential_0(v58, v59);
      OUTLINED_FUNCTION_8_9();
      v61 = v60;
      sub_21B0E3C3C();
      OUTLINED_FUNCTION_10_5();
      __swift_destroy_boxed_opaque_existential_0(v221);
      v62 = OUTLINED_FUNCTION_8_9();
      sub_21AFCEC24(v62, v63, v64);
      OUTLINED_FUNCTION_5_9();

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v65 = v220[3];
      v66 = v220[4];
      OUTLINED_FUNCTION_9_4(v220);
      v67 = OUTLINED_FUNCTION_2_12();
      v69 = v68(v67);
      sub_21B112314();
      OUTLINED_FUNCTION_25_1();
      __swift_destroy_boxed_opaque_existential_0(v220);
      sub_21AFCEC24(v65, v66, v217);
      OUTLINED_FUNCTION_20_3();

      *(v57 + 14) = v69;
      OUTLINED_FUNCTION_13_4();
      _os_log_impl(v70, v71, v72, v73, v74, 0x16u);
      OUTLINED_FUNCTION_32_2();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    else
    {

      OUTLINED_FUNCTION_29_3();
    }

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_33_3();
    v94();
    goto LABEL_28;
  }

  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v44);
  (*(v45 + 32))(v44, v45);
  v46 = sub_21B1123D4();

  v47 = [v43 assetNamed_];

  if (!v47)
  {
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v75 = sub_21B1122D4();
    __swift_project_value_buffer(v75, qword_2811FAB28);
    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_36_2();
    v76 = sub_21B1122B4();
    v77 = sub_21B112704();
    if (OUTLINED_FUNCTION_14_6(v77))
    {
      v78 = OUTLINED_FUNCTION_37_2();
      v217[0] = swift_slowAlloc();
      *v78 = 136315394;
      OUTLINED_FUNCTION_9_4(v221);
      v79 = OUTLINED_FUNCTION_2_12();
      v80(v79);
      OUTLINED_FUNCTION_10_5();
      __swift_destroy_boxed_opaque_existential_0(v221);
      v81 = OUTLINED_FUNCTION_8_9();
      sub_21AFCEC24(v81, v82, v83);
      OUTLINED_FUNCTION_5_9();

      *(v78 + 4) = v46;
      *(v78 + 12) = 2080;
      OUTLINED_FUNCTION_9_4(v220);
      v84 = OUTLINED_FUNCTION_2_12();
      v85(v84);
      OUTLINED_FUNCTION_10_5();
      __swift_destroy_boxed_opaque_existential_0(v220);
      v86 = OUTLINED_FUNCTION_8_9();
      sub_21AFCEC24(v86, v87, v88);
      OUTLINED_FUNCTION_5_9();

      *(v78 + 14) = v46;
      OUTLINED_FUNCTION_13_4();
      _os_log_impl(v89, v90, v91, v92, v93, 0x16u);
      OUTLINED_FUNCTION_32_2();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    else
    {

      OUTLINED_FUNCTION_29_3();
    }

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_33_3();
    v95();

    goto LABEL_28;
  }

  v48 = [v47 location];
  if (!v48)
  {
    goto LABEL_22;
  }

  v49 = v48;
  sub_21B110D34();

  v50 = v205;
  v51 = v204;
  v52 = v206;
  (*(v205 + 32))(v204, v3, v206);
  v53 = sub_21B110D14();
  if ((v53 & 1) == 0)
  {
    (*(v50 + 8))(v51, v52);
LABEL_22:
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v107 = sub_21B1122D4();
    __swift_project_value_buffer(v107, qword_2811FAB28);
    OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_36_2();
    sub_21AF92198(a1, v217);
    v108 = sub_21B1122B4();
    v109 = sub_21B112704();
    if (OUTLINED_FUNCTION_14_6(v109))
    {
      OUTLINED_FUNCTION_18_3();
      v110 = swift_slowAlloc();
      v216 = OUTLINED_FUNCTION_38_2();
      *v110 = 136315650;
      v111 = OUTLINED_FUNCTION_17_5();
      __swift_project_boxed_opaque_existential_0(v111, v112);
      OUTLINED_FUNCTION_8_9();
      v114 = v113;
      sub_21B0E3C3C();
      OUTLINED_FUNCTION_10_5();
      __swift_destroy_boxed_opaque_existential_0(v221);
      v115 = OUTLINED_FUNCTION_8_9();
      sub_21AFCEC24(v115, v116, v117);
      OUTLINED_FUNCTION_5_9();

      *(v110 + 4) = v114;
      *(v110 + 12) = 2080;
      OUTLINED_FUNCTION_9_4(v220);
      v118 = OUTLINED_FUNCTION_2_12();
      v119(v118);
      OUTLINED_FUNCTION_10_5();
      __swift_destroy_boxed_opaque_existential_0(v220);
      v120 = OUTLINED_FUNCTION_8_9();
      sub_21AFCEC24(v120, v121, v122);
      OUTLINED_FUNCTION_5_9();

      *(v110 + 14) = v114;
      *(v110 + 22) = 2080;
      v123 = v218;
      v124 = v219;
      OUTLINED_FUNCTION_9_4(v217);
      v125 = OUTLINED_FUNCTION_2_12();
      v127 = v126(v125);
      sub_21B112314();
      OUTLINED_FUNCTION_25_1();
      __swift_destroy_boxed_opaque_existential_0(v217);
      sub_21AFCEC24(v123, v124, &v216);
      OUTLINED_FUNCTION_20_3();

      *(v110 + 24) = v127;
      OUTLINED_FUNCTION_13_4();
      _os_log_impl(v128, v129, v130, v131, v132, 0x20u);
      OUTLINED_FUNCTION_32_2();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    else
    {

      OUTLINED_FUNCTION_29_3();
      __swift_destroy_boxed_opaque_existential_0(v217);
    }

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_33_3();
    v133();

    goto LABEL_28;
  }

  v202 = v47;
  v203 = v43;
  v96 = a1[3];
  v97 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v96);
  v221[0] = (*(v97 + 16))(v96, v97);
  v221[1] = v98;
  v99 = v211;
  v101 = v211 + 104;
  v100 = *(v211 + 104);
  v102 = v212;
  v199 = *MEMORY[0x277CC91D8];
  v103 = v213;
  v201 = v100;
  v100(v212);
  v200 = sub_21AFC921C();
  sub_21B110D84();
  v104 = v103;
  v105 = *(v99 + 8);
  v105(v102, v104);

  v106 = sub_21B110D14();
  v211 = v101;
  if (v106)
  {
    v135 = v223;
    v136 = v224;
    __swift_project_boxed_opaque_existential_0(&v222, v223);
    (*(v136 + 8))(81, v135, v136);
    v137 = *(v205 + 16);
    v138 = v208;
    v139 = v206;
    v137(v208, v214, v206);
    v140 = [v202 metadata];
    v207 = sub_21B112304();

    v141 = type metadata accessor for SODAAsset(0);
    v142 = v210;
    *(v210 + 24) = v141;
    v142[4] = &off_282C96950;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v142);
    v137(boxed_opaque_existential_1, v138, v139);
    v143 = v105;
    v144 = v212;
    v145 = v213;
    v201(v212, v199, v213);
    sub_21B110D74();
    v143(v144, v145);
    v183 = sub_21B110DC4();
    v185 = v184;
    v186 = v141;
    sub_21B110B84();
    swift_allocObject();
    sub_21B110B74();
    sub_21AFC92C0();
    sub_21B110B64();
    v187 = v207;
    v188 = *(v205 + 8);
    v189 = v206;
    v188(v209, v206);

    sub_21AF99728(v183, v185);
    v190 = v186;
    v191 = boxed_opaque_existential_1;
    *(boxed_opaque_existential_1 + *(v186 + 20)) = v221[0];
    v192 = OUTLINED_FUNCTION_23_3();
    v194 = sub_21B0DF160(v192, v193, v187);
    v196 = v195;

    if (!v196)
    {
      v194 = 0x302E302E30;
      v196 = 0xE500000000000000;
    }

    v188(v138, v189);
    v197 = (v191 + *(v190 + 24));
    *v197 = v194;
    v197[1] = v196;

    v188(v214, v189);
    v188(v204, v189);
    return __swift_destroy_boxed_opaque_existential_0(&v222);
  }

  if (qword_2811FAAD8 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v146 = sub_21B1122D4();
  __swift_project_value_buffer(v146, qword_2811FAB28);
  v147 = v205;
  v148 = v207;
  v149 = v214;
  v150 = v206;
  (*(v205 + 16))(v207, v214, v206);
  sub_21AF92198(a1, v221);
  OUTLINED_FUNCTION_36_2();
  sub_21AF92198(a1, v217);
  v151 = sub_21B1122B4();
  v152 = sub_21B112704();
  if (OUTLINED_FUNCTION_14_6(v152))
  {
    v153 = v148;
    v154 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    *v154 = 136643587;
    sub_21AFC9108();
    sub_21B112B84();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_27_3();
    v147(v153, v150);
    v155 = OUTLINED_FUNCTION_8_9();
    sub_21AFCEC24(v155, v156, v157);
    OUTLINED_FUNCTION_5_9();

    *(v154 + 4) = v153;
    *(v154 + 12) = 2080;
    v158 = OUTLINED_FUNCTION_17_5();
    __swift_project_boxed_opaque_existential_0(v158, v159);
    OUTLINED_FUNCTION_8_9();
    v161 = v160;
    sub_21B0E3C3C();
    OUTLINED_FUNCTION_10_5();
    __swift_destroy_boxed_opaque_existential_0(v221);
    v162 = OUTLINED_FUNCTION_8_9();
    sub_21AFCEC24(v162, v163, v164);
    OUTLINED_FUNCTION_5_9();

    *(v154 + 14) = v161;
    *(v154 + 22) = 2080;
    OUTLINED_FUNCTION_9_4(v220);
    v165 = OUTLINED_FUNCTION_2_12();
    v166(v165);
    OUTLINED_FUNCTION_10_5();
    __swift_destroy_boxed_opaque_existential_0(v220);
    v167 = OUTLINED_FUNCTION_8_9();
    sub_21AFCEC24(v167, v168, v169);
    OUTLINED_FUNCTION_5_9();

    *(v154 + 24) = v161;
    *(v154 + 32) = 2080;
    v149 = v214;
    v170 = v218;
    v171 = v219;
    OUTLINED_FUNCTION_9_4(v217);
    v172 = OUTLINED_FUNCTION_2_12();
    v174 = v173(v172);
    sub_21B112314();
    OUTLINED_FUNCTION_25_1();
    __swift_destroy_boxed_opaque_existential_0(v217);
    sub_21AFCEC24(v170, v171, &v216);
    OUTLINED_FUNCTION_20_3();
    v150 = v206;

    *(v154 + 34) = v174;
    OUTLINED_FUNCTION_13_4();
    _os_log_impl(v175, v176, v177, v178, v179, 0x2Au);
    OUTLINED_FUNCTION_32_2();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
  }

  else
  {

    OUTLINED_FUNCTION_27_3();
    v147(v148, v150);
    OUTLINED_FUNCTION_29_3();
    __swift_destroy_boxed_opaque_existential_0(v217);
  }

  v180 = v203;
  v181 = v202;
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_33_3();
  v182();

  v147(v149, v150);
  v147(v204, v150);
LABEL_28:
  v134 = v210;
  *(v210 + 32) = 0;
  *v134 = 0u;
  v134[1] = 0u;
  return __swift_destroy_boxed_opaque_existential_0(&v222);
}

void sub_21AFC7C04(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v71 = sub_21B110CA4();
  OUTLINED_FUNCTION_1();
  v67 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v59 - v13;
  v15 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v72 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v68 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_2();
  v69 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_2();
  v70 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_31_3();
  MEMORY[0x28223BE20](v24);
  v26 = v59 - v25;
  v27 = *(a1 + 24);
  v28 = *(a1 + 32);
  v29 = OUTLINED_FUNCTION_8_9();
  __swift_project_boxed_opaque_existential_0(v29, v30);
  v31 = OUTLINED_FUNCTION_5_9();
  v32(v31, v28);
  if (v33)
  {
    OUTLINED_FUNCTION_10_5();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_21B112484();
    sub_21B110D24();
    sub_21AFA8918(v14, &qword_27CD43750, &qword_21B117A30);

    v73 = a1;
    v74 = v27;
    v63 = *MEMORY[0x277CC91D8];
    v34 = v67;
    v62 = *(v67 + 104);
    v35 = v71;
    v62(v11);
    v61 = sub_21AFC921C();
    sub_21B110D84();
    v60 = *(v34 + 8);
    v60(v11, v35);
    v36 = v72;
    v67 = *(v72 + 8);
    (v67)(v4, v15);

    v37 = *(v36 + 16);
    v38 = v70;
    v65 = v26;
    v37(v70, v26, v15);
    v66 = sub_21B112334();
    v39 = type metadata accessor for SODAAsset(0);
    *(a4 + 24) = v39;
    *(a4 + 32) = &off_282C96950;
    v59[1] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    v40 = v15;
    v72 = v36 + 16;
    v59[0] = v37;
    v37(boxed_opaque_existential_1, v38, v15);
    v41 = v71;
    (v62)(v11, v63, v71);
    sub_21B110D74();
    v60(v11, v41);
    v46 = sub_21B110DC4();
    v48 = v47;
    sub_21B110B84();
    swift_allocObject();
    sub_21B110B74();
    sub_21AFC92C0();
    sub_21B110B64();
    v49 = v67;
    (v67)(v69, v40);

    sub_21AF99728(v46, v48);
    v50 = v39;
    v51 = *(v39 + 20);
    v52 = boxed_opaque_existential_1;
    *(boxed_opaque_existential_1 + v51) = v73;
    v53 = OUTLINED_FUNCTION_23_3();
    v55 = sub_21B0DF160(v53, v54, v66);
    v57 = v56;

    if (!v57)
    {
      v55 = 0x302E302E30;
      v57 = 0xE500000000000000;
    }

    v49(v70, v40);
    v58 = (v52 + *(v50 + 24));
    *v58 = v55;
    v58[1] = v57;
    v49(v65, v40);
  }

  else
  {
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v42 = sub_21B1122D4();
    __swift_project_value_buffer(v42, qword_2811FAB28);
    v43 = sub_21B1122B4();
    v44 = sub_21B1126E4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21AF80000, v43, v44, "Failed to Fetch OS Installed asset since none specified", v45, 2u);
      OUTLINED_FUNCTION_44();
      MEMORY[0x21CEEA9A0]();
    }

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

uint64_t sub_21AFC8478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 224) = a4;
  *(v5 + 232) = a5;
  return MEMORY[0x2822009F8](sub_21AFC8498, 0, 0);
}

uint64_t sub_21AFC8498()
{
  v1 = v0;
  v2 = v0 + 10;
  if (qword_2811FAAD8 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v3 = sub_21B1122D4();
  v1[30] = __swift_project_value_buffer(v3, qword_2811FAB28);
  v4 = OUTLINED_FUNCTION_35_2();
  sub_21AF92198(v4, v5);
  v6 = sub_21B1122B4();
  v7 = sub_21B1126F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_3();
    v28 = swift_slowAlloc();
    *v8 = 136315138;
    v9 = v1[14];
    __swift_project_boxed_opaque_existential_0(v2, v1[13]);
    v10 = OUTLINED_FUNCTION_16_6();
    v12 = v11(v10, v9);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v13 = OUTLINED_FUNCTION_34_3();
    sub_21AFCEC24(v13, v14, v15);
    OUTLINED_FUNCTION_16_6();

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21AF80000, v6, v7, "Executing subscription to known recipe: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  v16 = v1[29];
  v17 = [objc_opt_self() sharedManager];
  v1[31] = v17;
  v18 = OUTLINED_FUNCTION_8_9();
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v20 = OUTLINED_FUNCTION_2_12();
  v21(v20);
  v22 = sub_21B1123D4();
  v1[32] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435C8, &qword_21B1170F0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21B117050;
  *(v23 + 32) = v16;
  sub_21AFC9314();
  v24 = v16;
  v25 = sub_21B1125E4();
  v1[33] = v25;

  v1[2] = v1;
  v1[3] = sub_21AFC87DC;
  v26 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435D8, &qword_21B1170F8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21AFC5BA4;
  v1[13] = &block_descriptor_0;
  v1[14] = v26;
  [v17 subscribe:v22 subscriptions:v25 queue:0 completion:v2];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21AFC87DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_21AFC8958;
  }

  else
  {
    v2 = sub_21AFC88EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21AFC88EC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21AFC8958(uint64_t a1)
{
  v34 = v1;
  v2 = v1[33];
  v4 = v1[31];
  v3 = v1[32];
  v5 = v1[28];
  swift_willThrow();

  sub_21AF92198(v5, (v1 + 10));
  sub_21AF92198(v5, (v1 + 18));
  sub_21AF92198(v5, (v1 + 23));
  v6 = sub_21B1122B4();
  v7 = sub_21B112704();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[34];
  if (v8)
  {
    OUTLINED_FUNCTION_18_3();
    v10 = swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_38_2();
    *v10 = 136315650;
    v11 = v1[14];
    __swift_project_boxed_opaque_existential_0(v1 + 10, v1[13]);
    v12 = OUTLINED_FUNCTION_16_6();
    v14 = v13(v12, v11);
    __swift_destroy_boxed_opaque_existential_0(v1 + 10);
    v15 = OUTLINED_FUNCTION_34_3();
    sub_21AFCEC24(v15, v16, v17);
    OUTLINED_FUNCTION_16_6();

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(v1 + 18, v1[21]);
    OUTLINED_FUNCTION_34_3();
    v18 = sub_21B0E3C3C();
    __swift_destroy_boxed_opaque_existential_0(v1 + 18);
    v19 = OUTLINED_FUNCTION_34_3();
    sub_21AFCEC24(v19, v20, v21);
    OUTLINED_FUNCTION_16_6();

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v22 = v1[27];
    __swift_project_boxed_opaque_existential_0(v1 + 23, v1[26]);
    v23 = OUTLINED_FUNCTION_16_6();
    v25 = v24(v23, v22);
    v26 = sub_21B112314();
    v28 = v27;

    __swift_destroy_boxed_opaque_existential_0(v1 + 23);
    sub_21AFCEC24(v26, v28, &v33);
    OUTLINED_FUNCTION_21_2();

    *(v10 + 24) = v25;
    _os_log_impl(&dword_21AF80000, v6, v7, "Failed to UAFAssetSetManager.subscribe %s, assetSetName: %s, usageTypes: %s", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0](v29);
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0](v30);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v1 + 10);
    __swift_destroy_boxed_opaque_existential_0(v1 + 18);
    __swift_destroy_boxed_opaque_existential_0(v1 + 23);
  }

  v31 = v1[1];

  return v31();
}

uint64_t sub_21AFC8C08(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6556657069636572 && a2 == 0xED00006E6F697372)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21B112D04();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21AFC8CAC()
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](0);
  return sub_21B112F14();
}

uint64_t sub_21AFC8CF0(uint64_t a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](0);
  return sub_21B112F14();
}

uint64_t sub_21AFC8D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21AFC8C08(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21AFC8D8C(uint64_t a1)
{
  v2 = sub_21AFC9558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21AFC8DC8(uint64_t a1)
{
  v2 = sub_21AFC9558();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21AFC8E04(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43610, &qword_21B117270);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21AFC9558();
  sub_21B112F34();
  if (!v1)
  {
    v9 = sub_21B112AB4();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_21AFC8F4C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43620, &qword_21B117278);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21AFC9558();
  sub_21B112F44();
  sub_21B112B44();
  v4 = OUTLINED_FUNCTION_30_2();
  return v5(v4);
}

void *sub_21AFC906C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_21AFC8E04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_21AFC90B4()
{
  result = qword_27CD435B8;
  if (!qword_27CD435B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD435B8);
  }

  return result;
}

unint64_t sub_21AFC9108()
{
  result = qword_2811FAAF0;
  if (!qword_2811FAAF0)
  {
    sub_21B110D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FAAF0);
  }

  return result;
}

uint64_t type metadata accessor for SODAAssetProvider(uint64_t a1)
{
  result = qword_27CD435E8;
  if (!qword_27CD435E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AFC91AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435B0, &unk_21B1170D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21AFC921C()
{
  result = qword_27CD477D0;
  if (!qword_27CD477D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD477D0);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x21CEEA9A0);
  }

  return result;
}

unint64_t sub_21AFC92C0()
{
  result = qword_27CD435C0;
  if (!qword_27CD435C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD435C0);
  }

  return result;
}

unint64_t sub_21AFC9314()
{
  result = qword_27CD435D0;
  if (!qword_27CD435D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD435D0);
  }

  return result;
}

uint64_t sub_21AFC93BC(uint64_t a1)
{
  result = sub_21AFC9498(319, &qword_27CD435F8, &protocol descriptor for UAFAssetSetManaging, 1);
  if (v2 <= 0x3F)
  {
    result = sub_21AFC9498(319, &qword_27CD43600, &protocol descriptor for SODAActivityMonitoring, 0);
    if (v3 <= 0x3F)
    {
      result = sub_21B111E34();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21AFC9498(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_21AFC9504()
{
  result = qword_27CD43608;
  if (!qword_27CD43608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43608);
  }

  return result;
}

unint64_t sub_21AFC9558()
{
  result = qword_27CD43618;
  if (!qword_27CD43618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43618);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigPlistLoader(unsigned int *a1, int a2)
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

_BYTE *sub_21AFC95FC(_BYTE *result, int a2, int a3)
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

unint64_t sub_21AFC96AC()
{
  result = qword_27CD43628;
  if (!qword_27CD43628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43628);
  }

  return result;
}

unint64_t sub_21AFC9704()
{
  result = qword_27CD43630;
  if (!qword_27CD43630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43630);
  }

  return result;
}

unint64_t sub_21AFC975C()
{
  result = qword_27CD43638;
  if (!qword_27CD43638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43638);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_14_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return sub_21AFA8918(v2 - 128, v0, v1);
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return sub_21AF92198(v0, v1 - 168);
}

uint64_t OUTLINED_FUNCTION_25_1()
{
}

uint64_t OUTLINED_FUNCTION_29_3()
{
  __swift_destroy_boxed_opaque_existential_0((v0 - 168));

  return __swift_destroy_boxed_opaque_existential_0((v0 - 208));
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return sub_21AF92198(v0, v1 - 208);
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return swift_slowAlloc();
}

uint64_t sub_21AFC9A34(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_21B110F84();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  if ((a2 & 1) == 0)
  {
    sub_21B110F34();
    sub_21B110F04();
    v15 = *(v9 + 8);
    v15(v12, v8);
    sub_21B0B98E8(v14, 1);
    v17 = v16;
    v15(v14, v8);
    if (a4)
    {
      return *&v17;
    }

    else if (v17 >= *&a3)
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sub_21AFC9BB4(uint64_t result, char a2, double a3, double a4)
{
  v4 = a3 - (a4 + 604800.0);
  if (v4 >= 0.0)
  {
    v5 = v4 / 86400.0;
    if (COERCE__INT64(fabs(v4 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        v6 = v5;
        if (v5 > 6)
        {
          return result;
        }

        v7 = v5;
        if ((a2 & 1) == 0)
        {
          v8 = a3 / 86400.0;
          if (v8 <= -9.22337204e18)
          {
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          if (v8 >= 9.22337204e18)
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          v9 = *&result / 86400.0;
          v10 = COERCE__INT64(fabs(*&result / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL;
          if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v10)
          {
            goto LABEL_27;
          }

          if (v9 <= -9.22337204e18)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          if (v9 >= 9.22337204e18)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v11 = v8 - v9;
          if (__OFSUB__(v8, v9))
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v12 = __OFSUB__(v11, 1);
          v7 = v11 - 1;
          if (v12)
          {
LABEL_31:
            __break(1u);
            return result;
          }
        }

        if (v7 >= v6)
        {
          v7 = v6;
        }

        v12 = __OFSUB__(7, v6);
        v13 = 7 - v6;
        if (!v12)
        {
          if (!__OFADD__(v13, v7))
          {
            return result;
          }

          goto LABEL_24;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21AFC9D08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  sub_21AF93F6C(v1, &v9 - v3);
  v5 = sub_21B111DA4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_21AF9F660(v4, &qword_27CD42C28, &unk_21B113F30);
    return 0x636F486441;
  }

  else
  {
    v6 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
    OUTLINED_FUNCTION_7_2();
    (*(v7 + 8))(v4, v5);
  }

  return v6;
}

uint64_t sub_21AFC9E18(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  sub_21AF93F6C(v3, &v14[-v7]);
  v9 = sub_21B111DA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_2();
  LODWORD(result) = (*(v11 + 88))(v8, v9);
  if (result == *MEMORY[0x277D39E10] || result == *MEMORY[0x277D39E08])
  {
    if (!a2)
    {
      return 0;
    }

    sub_21AFB4EF8(a1, a2, v15);
    result = OUTLINED_FUNCTION_0_11();
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (result != *MEMORY[0x277D39DF8] && result != *MEMORY[0x277D39E00])
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    return 0;
  }

  sub_21AFB4EF8(a1, a2, v15);
  result = OUTLINED_FUNCTION_0_11();
  if (result < 0)
  {
    __break(1u);
LABEL_20:
    result = sub_21B112CF4();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AFC9FB0(uint64_t a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
      return 51;
    case 10:
      result = 4;
      break;
    case 11:
      result = 5;
      break;
    case 12:
      result = 6;
      break;
    case 13:
      result = 7;
      break;
    case 20:
      result = 8;
      break;
    case 21:
      result = 9;
      break;
    case 22:
      result = 10;
      break;
    case 23:
      result = 11;
      break;
    case 24:
      result = 12;
      break;
    case 25:
      result = 13;
      break;
    case 26:
      result = 14;
      break;
    case 27:
      result = 15;
      break;
    case 28:
      result = 16;
      break;
    case 29:
      result = 17;
      break;
    case 30:
      result = 18;
      break;
    case 50:
      result = 19;
      break;
    case 51:
      result = 20;
      break;
    case 61:
      result = 21;
      break;
    case 62:
      result = 22;
      break;
    case 63:
      result = 23;
      break;
    case 64:
      result = 24;
      break;
    case 65:
      result = 25;
      break;
    case 66:
      result = 26;
      break;
    case 67:
      result = 27;
      break;
    default:
      if (!v2 & v1)
      {
        switch(a1)
        {
          case 300:
            return 42;
          case 301:
            return 43;
          case 302:
            return 44;
          default:
            return 51;
        }
      }

      else
      {
        switch(a1)
        {
          case 200:
            result = 32;
            break;
          case 201:
            result = 33;
            break;
          case 202:
            result = 34;
            break;
          case 203:
            result = 35;
            break;
          case 204:
            result = 36;
            break;
          case 205:
            result = 37;
            break;
          case 206:
            result = 38;
            break;
          case 207:
            result = 39;
            break;
          case 208:
            result = 40;
            break;
          case 209:
            result = 41;
            break;
          default:
            JUMPOUT(0);
        }
      }

      return result;
  }

  return result;
}

uint64_t sub_21AFCA23C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21AFC9FB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21AFCA268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AFC9F9C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_21AFCA294()
{
  v0 = type metadata accessor for RecipeIdentifier(0);
  __swift_allocate_value_buffer(v0, qword_27CD6E770);
  v1 = __swift_project_value_buffer(v0, qword_27CD6E770);
  v2 = sub_21B111DA4();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  *(v1 + *(v0 + 20)) = 0;
  return result;
}

BOOL static RecipeIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111DA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43640, &qword_21B1173A8);
  OUTLINED_FUNCTION_6_3();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_21AF93F6C(a1, &v21 - v13);
  sub_21AF93F6C(a2, &v14[v15]);
  OUTLINED_FUNCTION_3_11(v14);
  if (!v16)
  {
    sub_21AF93F6C(v14, v10);
    OUTLINED_FUNCTION_3_11(&v14[v15]);
    if (!v16)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_21AFCA5DC();
      v18 = sub_21B1123C4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21AF9F660(v14, &qword_27CD42C28, &unk_21B113F30);
      if (v18)
      {
        goto LABEL_12;
      }

      return 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_21AF9F660(v14, &qword_27CD43640, &qword_21B1173A8);
    return 0;
  }

  OUTLINED_FUNCTION_3_11(&v14[v15]);
  if (!v16)
  {
    goto LABEL_9;
  }

  sub_21AF9F660(v14, &qword_27CD42C28, &unk_21B113F30);
LABEL_12:
  v20 = type metadata accessor for RecipeIdentifier(0);
  return *(a1 + *(v20 + 20)) == *(a2 + *(v20 + 20));
}

uint64_t type metadata accessor for RecipeIdentifier(uint64_t a1)
{
  result = qword_27CD43650;
  if (!qword_27CD43650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21AFCA5DC()
{
  result = qword_27CD43648;
  if (!qword_27CD43648)
  {
    sub_21B111DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43648);
  }

  return result;
}

void sub_21AFCA660(uint64_t a1)
{
  sub_21AFCA6D4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21AFCA6D4(uint64_t a1)
{
  if (!qword_27CD43660)
  {
    sub_21B111DA4();
    v1 = sub_21B112774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD43660);
    }
  }
}

uint64_t getEnumTagSinglePayload for RecipeActivityOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xCE)
  {
    if (a2 + 50 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 50) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 51;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x33;
  v5 = v6 - 51;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RecipeActivityOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 50 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 50) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xCE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xCD)
  {
    v6 = ((a2 - 206) >> 8) + 1;
    *result = a2 + 50;
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
          *result = a2 + 50;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21AFCA894()
{
  result = qword_27CD43668;
  if (!qword_27CD43668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43668);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{
  v2 = *(v0 - 56);
  *(v0 - 80) = *(v0 - 64);
  *(v0 - 72) = v2;

  return Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter();
}

uint64_t sub_21AFCA92C(void *a1)
{
  sub_21AF92198(a1, v1 + 56);
  v4 = type metadata accessor for FeedbackSchemaProvider(0);
  swift_allocObject();
  v5 = sub_21AFD20D0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    __swift_destroy_boxed_opaque_existential_0((v1 + 56));
    type metadata accessor for FeedbackSchemaTableProvider();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v4;
    v9 = MEMORY[0x277D3E628];
    *&v7 = v5;
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_21AF81D68(&v7, v1 + 16);
  }

  return v1;
}

void *sub_21AFCA9F8()
{
  result = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  v2 = *(*(*result + 16) + 16);
  if ((v2 - 0x400000000000000) >> 59 == 31)
  {
    return (32 * v2);
  }

  __break(1u);
  return result;
}

unint64_t sub_21AFCAA50@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21B111894();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*__swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80)) + 16);
  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));

  sub_21B0B0020(v5);
  v7 = type metadata accessor for FeedbackFilesEnumerator(0);
  swift_allocObject();
  v8 = sub_21B0D3354(v6, v5);
  a1[3] = v7;
  result = sub_21AFCAC0C();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_21AFCAB38()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

unint64_t sub_21AFCAC0C()
{
  result = qword_27CD43670;
  if (!qword_27CD43670)
  {
    type metadata accessor for FeedbackFilesEnumerator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43670);
  }

  return result;
}

void static CASupportedRecipe.allCases.getter()
{
  OUTLINED_FUNCTION_76();
  v0 = type metadata accessor for CASupportedRecipe(0);
  v1 = OUTLINED_FUNCTION_10_6(v0);
  v3 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = sub_21B111D74();
  v8 = *(v7 + 16);
  if (v8)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21AFCC5F4(0, v8, 0);
    v15 = sub_21B111DA4();
    v9 = *(v15 - 8);
    v10 = *(v9 + 16);
    v11 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    do
    {
      v10(v6, v11, v15);
      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21AFCC5F4(v13 > 1, v14 + 1, 1);
      }

      *(v16 + 16) = v14 + 1;
      sub_21AFCC64C(v6, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_77();
}

uint64_t type metadata accessor for CASupportedRecipe(uint64_t a1)
{
  result = qword_27CD43690;
  if (!qword_27CD43690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CASupportedRecipe.init(rawValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &a9 - v25;
  v27 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2();
  v33 = (v32 - v31);
  v34 = type metadata accessor for CASupportedRecipe(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2();
  v38 = v37 - v36;
  sub_21B111D84();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_21AF99BE0(v26, &qword_27CD42C28, &unk_21B113F30);
    v39 = 1;
  }

  else
  {
    v40 = *(v29 + 32);
    v40(v33, v26, v27);
    v40(v38, v33, v27);
    sub_21AFCC64C(v38, v23);
    v39 = 0;
  }

  __swift_storeEnumTagSinglePayload(v23, v39, 1, v34);
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21AFCB038@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_21B111DA4();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);

  return v6(a2, v3, v4);
}

uint64_t sub_21AFCB0A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = CASupportedRecipe.rawValue.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21AFCB0F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_21B112904();
    v5 = 0xD000000000000041;
    v6 = 0x800000021B133090;
  }

  else
  {
    sub_21B112904();
    OUTLINED_FUNCTION_5_7();
    v5 = 0xD000000000000039;
  }

  MEMORY[0x21CEE9770](v5, v6);
  MEMORY[0x21CEE9770](a1, a2);
  return 0;
}

uint64_t SODAActivityMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = sub_21B0B522C();
  return v0;
}

uint64_t SODAActivityMonitor.init()()
{
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = sub_21B0B522C();
  return v0;
}

uint64_t sub_21AFCB270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  result = sub_21AFCB3B4(a2, a3);
  if (!v12)
  {
    return sub_21AF9A6D8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }

  return result;
}

uint64_t sub_21AFCB320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_21AFCB3B4(a2, a3);
  if (!v8)
  {
    return sub_21AF9B2AC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

id *sub_21AFCB4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id **a3@<X8>)
{
  v7 = sub_21B111A24();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = sub_21B111E64();
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = *(v3 + 16);
  (*(v9 + 16))(v13, a2, v7);

  sub_21B111E74();
  v19 = type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  result = sub_21B0EBE74(v18, a1, v17, 0, 1);
  a3[3] = v19;
  a3[4] = &off_282C93248;
  *a3 = result;
  return result;
}

void sub_21AFCB630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_7();
  v6 = sub_21B1123D4();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  OUTLINED_FUNCTION_8_10();
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_1_11();
  v10[2] = v8;
  v10[3] = &block_descriptor_19;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

uint64_t sub_21AFCB6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B1141D0;
  *(inited + 32) = 0x735F657669746361;
  *(inited + 40) = 0xEF736E6F69737365;
  *(inited + 48) = sub_21B1126B4();
  strcpy((inited + 56), "total_sessions");
  *(inited + 71) = -18;
  *(inited + 72) = sub_21B1126B4();
  *(inited + 80) = 0x5F79636E6574616CLL;
  *(inited + 88) = 0xEF737961645F6E69;
  *(inited + 96) = sub_21B1126B4();
  sub_21AFCD0E8();
  return sub_21B112334();
}

id sub_21AFCB814(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_21AFCD0E8();
    v4 = sub_21B1122E4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_21AFCB8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_7();
  v6 = sub_21B1123D4();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  OUTLINED_FUNCTION_8_10();
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_1_11();
  v10[2] = v8;
  v10[3] = &block_descriptor_13;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

uint64_t sub_21AFCB96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B1141D0;
  *(inited + 32) = 0x735F657669746361;
  *(inited + 40) = 0xEF736E6F69737365;
  *(inited + 48) = sub_21B1126B4();
  strcpy((inited + 56), "total_sessions");
  *(inited + 71) = -18;
  *(inited + 72) = sub_21B1126B4();
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000021B133030;
  *(inited + 96) = sub_21B1126B4();
  sub_21AFCD0E8();
  return sub_21B112334();
}

void sub_21AFCBA7C()
{
  OUTLINED_FUNCTION_76();
  v21 = v0;
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_7();
  v13 = sub_21B1123D4();
  (*(v8 + 16))(v12, v5, v6);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v14, v12, v6);
  *(v17 + v15) = v3;
  v18 = v22;
  *(v17 + v16) = v21;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v23[4] = sub_21AFCD12C;
  v23[5] = v17;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_1_11();
  v23[2] = v19;
  v23[3] = &block_descriptor_1;
  v20 = _Block_copy(v23);

  AnalyticsSendEventLazy();
  _Block_release(v20);

  OUTLINED_FUNCTION_77();
}

uint64_t sub_21AFCBC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113D80;
  *(inited + 32) = 0x6D6165727473;
  *(inited + 40) = 0xE600000000000000;
  sub_21B111C74();
  *(inited + 48) = sub_21B1126B4();
  strcpy((inited + 56), "lostDuration");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_21B1126B4();
  *(inited + 80) = 1953722220;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = sub_21B1126B4();
  *(inited + 104) = 0x6574736576726168;
  *(inited + 112) = 0xE900000000000064;
  *(inited + 120) = sub_21B1126B4();
  sub_21AFCD0E8();
  return sub_21B112334();
}

void sub_21AFCBD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v34[3] = a5;
  v34[2] = a4;
  v34[1] = a3;
  v35 = a2;
  v37 = 0xD00000000000001FLL;
  v8 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v34 - v15;
  v17 = *(v10 + 104);
  v17(v34 - v15, *MEMORY[0x277D39DF8], v8);
  v18 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v20 = v19;
  v21 = *(v10 + 8);
  v21(v16, v8);
  v36 = "Weekly.Intervals";
  if (v18 == a1 && v20 == v35)
  {
    goto LABEL_13;
  }

  v34[0] = a1;
  v23 = v35;
  v24 = sub_21B112D04();

  if (v24)
  {
    goto LABEL_14;
  }

  v17(v14, *MEMORY[0x277D39E00], v8);
  v25 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v27 = v26;
  v21(v14, v8);
  if (v25 == v34[0] && v27 == v23)
  {
    v36 = "ODAActivityMonitor";
    v37 = 0xD000000000000020;
LABEL_13:

    goto LABEL_14;
  }

  v29 = sub_21B112D04();

  if ((v29 & 1) == 0)
  {
    return;
  }

  v36 = "ODAActivityMonitor";
  v37 = 0xD000000000000020;
LABEL_14:
  v30 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113D80;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_21B112674();
  *(inited + 56) = 0x656D6F6374756FLL;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_21B1127D4();
  strcpy((inited + 80), "recipe_version");
  *(inited + 95) = -18;
  *(inited + 96) = sub_21B1127D4();
  *(inited + 104) = 0x7473615073796164;
  *(inited + 112) = 0xEB00000000657544;
  *(inited + 120) = sub_21B1126B4();
  sub_21AFCD0E8();
  sub_21B112334();
  strcpy(v38, "com.apple.odla");
  v38[15] = -18;
  MEMORY[0x21CEE9770](46, 0xE100000000000000);
  MEMORY[0x21CEE9770](v30, v36 | 0x8000000000000000);

  v32 = sub_21B1123D4();

  v33 = sub_21B1122E4();
  AnalyticsSendEvent();
}

uint64_t SODAActivityMonitor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_21AFCC250(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_21AFCC2E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

void sub_21AFCC320()
{
  OUTLINED_FUNCTION_17_6();
  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840), OUTLINED_FUNCTION_4_1(), v1 + *(v4 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_3_12();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
    OUTLINED_FUNCTION_3_12();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_21AFCC3E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_21AFCC408(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

void sub_21AFCC430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_17_6();
  if (v8 && (a4(0), OUTLINED_FUNCTION_4_1(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_3_12();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_3_12();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_21AFCC55C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21AFCCB04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21AFCC57C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21AFCCCDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21AFCC64C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CASupportedRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21AFCC6B4()
{
  result = qword_27CD43678;
  if (!qword_27CD43678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD43680, &qword_21B117730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43678);
  }

  return result;
}

unint64_t sub_21AFCC718(uint64_t a1, uint64_t a2)
{
  result = sub_21AFCC740(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21AFCC740(uint64_t a1, uint64_t a2)
{
  result = qword_27CD43688;
  if (!qword_27CD43688)
  {
    type metadata accessor for SODAActivityMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43688);
  }

  return result;
}

uint64_t sub_21AFCC7E0(uint64_t a1)
{
  result = sub_21B111DA4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21AFCCA28()
{
  OUTLINED_FUNCTION_16_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  OUTLINED_FUNCTION_9_5();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C8, &unk_21B117870);
    v7 = swift_allocObject();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_13_5();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_21AFCCB04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436D8, &qword_21B117888);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void sub_21AFCCC04()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436E0, &qword_21B117890);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_13_5();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  v13 = 16 * v7;
  if (v1)
  {
    if (v9 != v0 || &v12[v13] <= v11)
    {
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v13);
  }
}

char *sub_21AFCCCDC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436A0, &qword_21B117848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_21AFCCE0C()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_6_7();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_11_4();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_10_6(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(v6(0) - 8);
  if (v10)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_21AFCC430(v8 + v26, v15, v22 + v26, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_77();
}

void sub_21AFCCFE4()
{
  OUTLINED_FUNCTION_16_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  OUTLINED_FUNCTION_9_5();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436B0, &qword_21B117858);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_14_7(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[24 * v2 + 32] <= v7 + 32)
    {
      v10 = OUTLINED_FUNCTION_12_7();
      memmove(v10, v11, v12);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436B8, &unk_21B117860);
    OUTLINED_FUNCTION_12_7();
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_21AFCD0E8()
{
  result = qword_27CD46FA0;
  if (!qword_27CD46FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD46FA0);
  }

  return result;
}

uint64_t sub_21AFCD12C()
{
  v1 = sub_21B111CB4();
  OUTLINED_FUNCTION_10_6(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);
  v10 = *(v0 + v8);
  v11 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_21AFCBC48(v0 + v6, v9, v10, v11);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21AFCD1F8()
{
  result = qword_27CD43718;
  if (!qword_27CD43718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43718);
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

uint64_t sub_21AFCD26C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_21AFCD2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t OUTLINED_FUNCTION_14_7(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_21AFCD410()
{
  v1 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SODARegisteredHostTask_environmentFactory + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 8))(ObjectType);
}

uint64_t sub_21AFCD45C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SODARegisteredHostTask_environmentFactory + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v5 + 8) + 16))(a1, a2, ObjectType);
}

uint64_t sub_21AFCD514()
{
  v0 = SODAHostTask.deinit();
  swift_unknownObjectRelease();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SODARegisteredHostTask(uint64_t a1)
{
  result = qword_27CD43738;
  if (!qword_27CD43738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AFCD620()
{
  v1 = sub_21B1123D4();
  v2 = [v0 configBoolForKey_];

  return v2 ^ 1;
}

char *sub_21AFCD67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_logger;
  if (qword_2811FAAD8 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
  }

  v10 = sub_21B1122D4();
  v11 = __swift_project_value_buffer(v10, qword_2811FAB28);
  (*(*(v10 - 8) + 16))(&v4[v9], v11, v10);
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = a3;
  *&v4[OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_config] = a4;
  return v4;
}

uint64_t sub_21AFCD74C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v58 = v5;
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21B110FB4();
  OUTLINED_FUNCTION_1();
  v56 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_21B111BF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v50[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v50[-v22];
  if ((*(*(v1 + 32) + 16))())
  {
    v55 = a1;
    sub_21AFCDCD0(*(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_config), v23);
    v24 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_logger;
    v54 = v14;
    v25 = *(v14 + 16);
    v25(v21, v23, v12);
    v25(v18, v23, v12);
    v26 = v2 + v24;
    v27 = sub_21B1122B4();
    v28 = sub_21B1126E4();
    if (OUTLINED_FUNCTION_3_13(v28))
    {
      v29 = swift_slowAlloc();
      v52 = v27;
      v30 = v29;
      v53 = swift_slowAlloc();
      v60 = v53;
      *v30 = 136315394;
      v51 = v26;
      sub_21B111BC4();
      sub_21AFCF328(&qword_27CD43788, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v31 = sub_21B112B84();
      v33 = v32;
      (*(v56 + 8))(v11, v7);
      v34 = v54;
      v56 = *(v54 + 8);
      (v56)(v21, v12);
      v35 = sub_21AFCEC24(v31, v33, &v60);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      v36 = v57;
      sub_21B111BB4();
      sub_21AFCF328(&qword_27CD43790, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v37 = v59;
      v38 = sub_21B112B84();
      v40 = v39;
      (*(v58 + 8))(v36, v37);
      (v56)(v18, v12);
      v41 = sub_21AFCEC24(v38, v40, &v60);

      *(v30 + 14) = v41;
      v42 = v52;
      _os_log_impl(&dword_21AF80000, v52, v51, "Read federated identifier %s from store, created %s.", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_4_4();
    }

    else
    {

      v34 = v54;
      v48 = *(v54 + 8);
      v48(v18, v12);
      v48(v21, v12);
    }

    v49 = v55;
    (*(v34 + 32))(v55, v23, v12);
    return __swift_storeEnumTagSinglePayload(v49, 0, 1, v12);
  }

  else
  {
    v43 = v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_logger;
    v44 = sub_21B1122B4();
    v45 = sub_21B1126F4();
    if (OUTLINED_FUNCTION_3_13(v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_21AF80000, v44, v43, "Production build. No FID.", v46, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v12);
  }
}

uint64_t sub_21AFCDCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v66 = a2;
  v3 = sub_21B110F84();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43798, &qword_21B117AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v51 - v6;
  v7 = sub_21B111BF4();
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v16 = sub_21B111A04();
  v65 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21B110D94();
  v63 = *(v19 - 8);
  v64 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v68[0] = *(v2 + 16);
  v25 = v68[0];
  sub_21AFCEBE0();
  sub_21B111A44();
  v52 = v13;
  v53 = v15;
  v55 = v2;
  v54 = v10;
  v26 = v62;
  v27 = v63;
  v28 = v64;
  (*(v63 + 2))(v22, v24, v64);
  v29 = v25;
  sub_21B1119F4();
  sub_21B1119E4();
  (v65[1])(v18, v16);
  v27[1](v24, v28);
  sub_21AF81D68(v67, v68);
  __swift_project_boxed_opaque_existential_0(v68, v69);
  sub_21AFCF328(&qword_27CD437A8, MEMORY[0x277D39DA8], MEMORY[0x277D39DB8]);
  v30 = v26;
  v31 = v60;
  sub_21B1119D4();
  if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
  {
    sub_21AFCF2D4(v31, &qword_27CD43798, &qword_21B117AD0);
    v32 = v61;
LABEL_7:
    v49 = v54;
    sub_21B111BE4();
    __swift_project_boxed_opaque_existential_0(v68, v69);
    sub_21AFCF328(&qword_27CD437B0, MEMORY[0x277D39DA8], MEMORY[0x277D39DB0]);
    sub_21B1119C4();
    __swift_destroy_boxed_opaque_existential_0(v68);
    return (*(v32 + 32))(v66, v49, v30);
  }

  v32 = v61;
  v33 = *(v61 + 32);
  v34 = v53;
  v33(v53, v31, v30);
  if ((sub_21B111BD4() & 1) == 0)
  {
    (*(v32 + 8))(v34, v30);
    goto LABEL_7;
  }

  v35 = v52;
  (*(v32 + 16))(v52, v34, v30);
  v36 = sub_21B1122B4();
  v37 = sub_21B1126F4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v63 = v38;
    v65 = swift_slowAlloc();
    *&v67[0] = v65;
    *v38 = 136315138;
    v39 = v56;
    LODWORD(v64) = v37;
    sub_21B111BB4();
    sub_21AFCF328(&qword_27CD43790, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v40 = v58;
    v41 = sub_21B112B84();
    v42 = v35;
    v44 = v43;
    (*(v57 + 8))(v39, v40);
    (*(v32 + 8))(v42, v30);
    v45 = sub_21AFCEC24(v41, v44, v67);

    v46 = v63;
    *(v63 + 1) = v45;
    v47 = v46;
    _os_log_impl(&dword_21AF80000, v36, v64, "Found federatedID created on %s", v46, 0xCu);
    v48 = v65;
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x21CEEA9A0](v48, -1, -1);
    v34 = v53;
    MEMORY[0x21CEEA9A0](v47, -1, -1);
  }

  else
  {

    (*(v32 + 8))(v35, v30);
  }

  __swift_destroy_boxed_opaque_existential_0(v68);
  return (v33)(v66, v34, v30);
}

uint64_t sub_21AFCE670()
{
  v1 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27FederatedIdentifierProvider_logger;
  sub_21B1122D4();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(v0 + v1);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21AFCE6DC()
{
  sub_21AFCE670();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id static ConfigPlistLoader.loadConfig(fileManager:userDefaults:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36[-v6];
  v8 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v36[-v18];
  v41 = a1;
  sub_21AFCEBE0();
  sub_21B111A44();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  (*(v10 + 32))(v19, v7, v8);
  if (qword_2811FAAD8 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_2811FAAD8);
  }

  v40 = a2;
  v20 = sub_21B1122D4();
  __swift_project_value_buffer(v20, qword_2811FAB28);
  (*(v10 + 16))(v17, v19, v8);
  v21 = sub_21B1122B4();
  v22 = sub_21B1126E4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = v23;
    v39 = swift_slowAlloc();
    v41 = v39;
    *v23 = 136315138;
    sub_21AFCF328(&qword_2811FAAF0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v37 = v22;
    v24 = sub_21B112B84();
    v26 = v25;
    v27 = OUTLINED_FUNCTION_2_13();
    v2(v27);
    v28 = sub_21AFCEC24(v24, v26, &v41);

    v29 = v38;
    *(v38 + 1) = v28;
    _os_log_impl(&dword_21AF80000, v21, v37, "PegasusConfiguration container URL: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {

    v30 = OUTLINED_FUNCTION_2_13();
    v2(v30);
  }

  sub_21B111A54();
  sub_21B110D04();

  sub_21B111A94();
  v31 = sub_21B111A84();
  v32 = sub_21B110CE4();
  v33 = sub_21B1123D4();
  v34 = [v31 loadWithUrl:v32 userAgent:v33 userDefaults:v40];
  swift_unknownObjectRelease();

  (v2)(v14, v8);
  (v2)(v19, v8);
  return v34;
}

unint64_t sub_21AFCEBE0()
{
  result = qword_2811FA668[0];
  if (!qword_2811FA668[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_2811FA668);
  }

  return result;
}

unint64_t sub_21AFCEC24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21AFCECE8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_21AF94C04(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21AFCECE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21AFCEDE8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_21B112944();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_21AFCEDE8(uint64_t a1, unint64_t a2)
{
  v3 = sub_21AFCEE34(a1, a2);
  sub_21AFCEF4C(&unk_282C8D620);
  return v3;
}

void *sub_21AFCEE34(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21B112514())
  {
    result = sub_21AF98C84(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21B1128E4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_21B112944();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21AFCEF4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_21AFCF030(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_21AFCF030(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t type metadata accessor for FederatedIdentifierProvider(uint64_t a1)
{
  result = qword_27CD43770;
  if (!qword_27CD43770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AFCF178(uint64_t a1)
{
  result = sub_21B1122D4();
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

_BYTE *storeEnumTagSinglePayload for ConfigPlistLoader(_BYTE *result, int a2, int a3)
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

uint64_t sub_21AFCF2D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21AFCF328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL OUTLINED_FUNCTION_3_13(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void (*sub_21AFCF3A4(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;

      v4(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t (*sub_21AFCF438(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3))(unint64_t)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(sub_21B111CB4() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

uint64_t SODAStreamPruner.__allocating_init(userDefaults:fileManager:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  SODAStreamPruner.init(userDefaults:fileManager:)(a1, a2);
  return v4;
}

void *SODAStreamPruner.init(userDefaults:fileManager:)(void *a1, id a2)
{
  v3 = v2;
  v5 = a1;
  if (!a1)
  {
    sub_21AFCF63C();
    a1 = sub_21B0C7218();
  }

  v2[2] = a1;
  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v7 = objc_opt_self();
    v6 = v5;
    a2 = [v7 defaultManager];
  }

  v3[3] = a2;
  type metadata accessor for SODAActivityMonitor();
  v8 = swift_allocObject();
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  v9 = sub_21B0B522C();

  *(v8 + 16) = v9;
  v10 = sub_21AFD0228();
  v3[4] = v8;
  v3[5] = v10;
  return v3;
}

unint64_t sub_21AFCF63C()
{
  result = qword_27CD437B8;
  if (!qword_27CD437B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD437B8);
  }

  return result;
}

void sub_21AFCF680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v50 = a4;
  v51 = a2;
  v54 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v52 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = sub_21B111B24();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v53 = sub_21B111C94();
  v22 = v21;
  v23 = v56;
  sub_21B111C04();
  if (v23)
  {

    return;
  }

  v49 = v4;
  v55 = v9;
  v56 = 0;
  v24 = v54;
  v25 = sub_21B111AF4();
  (*(v16 + 8))(v20, v14);
  v26 = objc_allocWithZone(MEMORY[0x277CF1810]);
  v27 = sub_21AFD0328(v53, v22, v25);
  if (v27)
  {
    v28 = v27;
    sub_21B0DF298(v50, v13);
    v29 = v49;
    sub_21AFD1CB0(v13, v49);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v24);
    v31 = 0.0;
    v32 = v52;
    v33 = v55;
    if (EnumTagSinglePayload != 1)
    {
      (*(v52 + 32))(v55, v29, v24);
      sub_21B110EC4();
      v31 = v34;
      (*(v32 + 8))(v33, v24);
    }

    sub_21AFD1D20(v13);
    sub_21B110EC4();
    v36 = v35;
    if (EnumTagSinglePayload == 1)
    {
      v37 = v35;
    }

    else
    {
      v37 = v31;
    }

    if (v37 >= v35)
    {
      v53 = 0;
    }

    else
    {
      v38 = (v35 - v37) / 3600.0;
      if (COERCE__INT64(fabs((v36 - v37) / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v38 <= -9.22337204e18)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v38 >= 9.22337204e18)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (__OFADD__(v38, 1))
      {
LABEL_27:
        __break(1u);
        return;
      }

      v53 = v38 + 1;
    }

    v59 = 0;
    v58 = 0;
    sub_21B110ED4();
    sub_21B110EC4();
    v40 = v39;
    v41 = *(v32 + 8);
    v41(v33, v24);
    v42 = swift_allocObject();
    *(v42 + 16) = v37;
    *(v42 + 24) = &v59;
    *(v42 + 32) = &v58;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_21AFD1D88;
    *(v43 + 24) = v42;
    aBlock[4] = sub_21AFD1D94;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21AFCFBD0;
    aBlock[3] = &block_descriptor_2;
    v44 = _Block_copy(aBlock);

    [v28 removeEventsFrom:1 to:v44 reason:v40 usingBlock:v36];
    _Block_release(v44);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if ((v44 & 1) == 0)
    {
      if (EnumTagSinglePayload != 1)
      {
        v45 = v55;
        sub_21B110ED4();
        sub_21B110EC4();
        v47 = v46;
        v41(v45, v24);
        if (v31 != v47)
        {
          if (v59 | v58)
          {
            sub_21AFCBA7C();
          }
        }
      }

      return;
    }

    __break(1u);
    goto LABEL_24;
  }
}

void sub_21AFCFB9C(double a1, double a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 < a1)
  {
    v5 = *a4 + 1;
    if (!__OFADD__(*a4, 1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *a5 + 1;
  if (!__OFADD__(*a5, 1))
  {
    a4 = a5;
LABEL_7:
    *a4 = v5;
    return;
  }

  __break(1u);
}

void sub_21AFCFBFC()
{
  v2 = v0;
  v53 = sub_21B111AE4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = sub_21B111C24();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = v16;
  v19 = v17;
  sub_21B111C84();
  v20 = v57;
  sub_21B111C14();
  if (v20)
  {
  }

  else
  {
    v52 = v1;
    v46 = 0;
    v47 = v18;
    v48 = v15;
    v49 = v11;
    v50 = v9;
    v45 = sub_21B0C204C(v18);
    v21 = sub_21B111AB4();
    v22 = 0;
    v23 = *(v21 + 16);
    v56 = v4 + 16;
    v57 = v23;
    v55 = (v4 + 8);
    v51 = (v4 + 32);
    v54 = MEMORY[0x277D84F90];
    v24 = v53;
    while (v57 != v22)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v25 = v2;
      v26 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v27 = *(v4 + 72);
      (*(v4 + 16))(v8, v21 + v26 + v27 * v22, v24);
      if (sub_21B111AD4())
      {
        v44 = *v51;
        v44(v52, v8, v24);
        v28 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21AFCC900(0, *(v28 + 16) + 1, 1);
          v28 = v59;
        }

        v31 = *(v28 + 16);
        v30 = *(v28 + 24);
        v32 = v31 + 1;
        v33 = v52;
        if (v31 >= v30 >> 1)
        {
          v54 = *(v28 + 16);
          v34 = v31 + 1;
          sub_21AFCC900(v30 > 1, v32, 1);
          v32 = v34;
          v24 = v53;
          v31 = v54;
          v33 = v52;
          v28 = v59;
        }

        ++v22;
        *(v28 + 16) = v32;
        v54 = v28;
        v44(v28 + v26 + v31 * v27, v33, v24);
        v2 = v25;
      }

      else
      {
        (*v55)(v8, v24);
        ++v22;
        v2 = v25;
      }
    }

    v59 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD437C8, &qword_21B117AE0);
    sub_21AFD1BA4();
    v35 = sub_21B1126D4();

    v36 = sub_21AFD038C(v35);

    v58 = v36;
    v20 = v46;
    v37 = sub_21AFD0280(&v58);
    if (!v20)
    {
      v38 = v58;
      MEMORY[0x28223BE20](v37);
      v39 = v48;
      *(&v43 - 4) = v2;
      *(&v43 - 3) = v39;
      *(&v43 - 2) = v45;
      sub_21AFCF438(sub_21AFD1C08, (&v43 - 6), v38);
      v41 = v49;
      v40 = v50;
      v42 = v47;

      (*(v41 + 8))(v39, v40);
      return;
    }

LABEL_16:

    __break(1u);
  }
}

uint64_t sub_21AFD0024()
{
  v0 = sub_21B111C94();
  v2 = v1;
  if (v0 == sub_21B111C94() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_21B112D04();
  }

  return v5 & 1;
}

uint64_t sub_21AFD00BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21B110F84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B111C34();
  sub_21AFCF680(a1, v10, a3, a4);
  return (*(v8 + 8))(v10, v7);
}

uint64_t SODAStreamPruner.__deallocating_deinit()
{
  SODAStreamPruner.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t sub_21AFD0228()
{
  result = qword_27CD437C0;
  if (!qword_27CD437C0)
  {
    type metadata accessor for SODAActivityMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD437C0);
  }

  return result;
}

uint64_t sub_21AFD0280(uint64_t *a1)
{
  v2 = *(sub_21B111CB4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D6334(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v10[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v10[1] = v8;
  result = sub_21AFD0480(v10);
  *a1 = v3;
  return result;
}

id sub_21AFD0328(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21B1123D4();

  v6 = [v3 initWithStream:v5 config:a3];

  return v6;
}

char *sub_21AFD038C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_21B0D55BC(*(a1 + 16), 0);
  v4 = *(sub_21B111CB4() - 8);
  sub_21B0BFD70(&v9, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v1, a1);
  v6 = v5;
  v7 = v9;

  sub_21AF9C4BC(v7);
  if (v6 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_21AFD0480(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_21B112B74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21B111CB4();
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21B111CB4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21AFD08D0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21AFD05B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AFD05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21B111CB4();
  v9 = MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = sub_21B111C94();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_21B111C94() && v31 == v32)
        {
          break;
        }

        v34 = sub_21B112D04();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AFD08D0(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = sub_21B111CB4();
  v9 = MEMORY[0x28223BE20](v8);
  v152 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v165 = &v143 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v143 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v161 = &v143 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v160 = &v143 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v29 = &v143 - v25;
  v158 = v26;
  v159 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v27;
  v143 = a4;
  v31 = 0;
  v170 = v26 + 16;
  v168 = (v26 + 32);
  v169 = (v26 + 8);
  v32 = MEMORY[0x277D84F90];
  v162 = v8;
  v154 = v15;
  v144 = v28;
  v146 = &v143 - v25;
  while (1)
  {
    v33 = v31;
    v34 = v31 + 1;
    v149 = v31;
    if (v31 + 1 < v30)
    {
      v164 = v30;
      v145 = v32;
      v35 = v29;
      v36 = *v159;
      v37 = *(v26 + 72);
      v38 = v28;
      v157 = v31 + 1;
      v39 = v31;
      v40 = &v36[v37 * (v31 + 1)];
      v41 = *(v26 + 16);
      v41(v35, v40, v8);
      v42 = &v36[v37 * v39];
      v43 = v146;
      v156 = v41;
      v41(v38, v42, v8);
      LODWORD(v163) = sub_21AFD0024();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v38, v8);
        (v142)(v43, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v32 = v169;
      v44 = *v169;
      (*v169)(v38, v8);
      v155 = v44;
      (v44)(v43, v8);
      v45 = v149 + 2;
      v46 = &v36[v37 * (v149 + 2)];
      v34 = v157;
      v47 = v37;
      v167 = v37;
      v48 = v164;
      while (1)
      {
        v49 = v45;
        if (v34 + 1 >= v48)
        {
          break;
        }

        v50 = v34;
        v51 = v162;
        v5 = v156;
        (v156)(v160, v46, v162);
        v5(v161, v40, v51);
        v52 = sub_21B111C94();
        v54 = v53;
        if (v52 == sub_21B111C94() && v54 == v55)
        {
          v57 = 0;
        }

        else
        {
          v57 = sub_21B112D04();
        }

        v58 = v162;
        v32 = v155;
        (v155)(v161, v162);
        (v32)(v160, v58);
        v47 = v167;
        v46 += v167;
        v40 += v167;
        v34 = v50 + 1;
        v45 = v49 + 1;
        v48 = v164;
        if ((v163 ^ v57))
        {
          goto LABEL_16;
        }
      }

      v34 = v48;
LABEL_16:
      if (v163)
      {
        v33 = v149;
        if (v34 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v34)
        {
          v26 = v158;
          v32 = v145;
          v8 = v162;
          v15 = v154;
          goto LABEL_39;
        }

        if (v48 >= v49)
        {
          v59 = v49;
        }

        else
        {
          v59 = v48;
        }

        v60 = v47 * (v59 - 1);
        v61 = v47 * v59;
        v62 = v149;
        v63 = v149 * v47;
        v64 = v34;
        do
        {
          if (v62 != --v64)
          {
            v65 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v66 = v162;
            v164 = *v168;
            v164(v152, &v65[v63], v162);
            v67 = v63 < v60 || &v65[v63] >= &v65[v61];
            if (v67)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v65[v60], v152, v66);
            v5 = v148;
            v47 = v167;
          }

          ++v62;
          v60 -= v47;
          v61 -= v47;
          v63 += v47;
        }

        while (v62 < v64);
      }

      else
      {
        v5 = v148;
      }

      v26 = v158;
      v32 = v145;
      v8 = v162;
      v15 = v154;
      v33 = v149;
    }

LABEL_39:
    v68 = v159[1];
    if (v34 < v68)
    {
      if (__OFSUB__(v34, v33))
      {
        goto LABEL_146;
      }

      if (v34 - v33 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v34 < v33)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21B0D4B14(0, *(v32 + 2) + 1, 1, v32);
      v32 = v134;
    }

    v91 = *(v32 + 2);
    v90 = *(v32 + 3);
    v92 = v91 + 1;
    v157 = v34;
    if (v91 >= v90 >> 1)
    {
      sub_21B0D4B14(v90 > 1, v91 + 1, 1, v32);
      v32 = v135;
    }

    *(v32 + 2) = v92;
    v93 = v32 + 32;
    v94 = &v32[16 * v91 + 32];
    v95 = v157;
    *v94 = v149;
    *(v94 + 1) = v95;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v91)
    {
      while (1)
      {
        v96 = v92 - 1;
        v97 = &v93[16 * v92 - 16];
        v98 = &v32[16 * v92];
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v99 = *(v32 + 4);
          v100 = *(v32 + 5);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_82:
          if (v102)
          {
            goto LABEL_132;
          }

          v114 = *v98;
          v113 = *(v98 + 1);
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_135;
          }

          v118 = *(v97 + 1);
          v119 = v118 - *v97;
          if (__OFSUB__(v118, *v97))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v116, v119))
          {
            goto LABEL_140;
          }

          if (v116 + v119 >= v101)
          {
            if (v101 < v119)
            {
              v96 = v92 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v92 < 2)
        {
          goto LABEL_134;
        }

        v121 = *v98;
        v120 = *(v98 + 1);
        v109 = __OFSUB__(v120, v121);
        v116 = v120 - v121;
        v117 = v109;
LABEL_97:
        if (v117)
        {
          goto LABEL_137;
        }

        v123 = *v97;
        v122 = *(v97 + 1);
        v109 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v109)
        {
          goto LABEL_139;
        }

        if (v124 < v116)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v96 - 1 >= v92)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v128 = v32;
        v129 = &v93[16 * v96 - 16];
        v32 = *v129;
        v130 = &v93[16 * v96];
        v131 = *(v130 + 1);
        sub_21AFD148C(&(*v159)[*(v158 + 72) * *v129], &(*v159)[*(v158 + 72) * *v130], &(*v159)[*(v158 + 72) * v131], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v131 < v32)
        {
          goto LABEL_127;
        }

        v132 = *(v128 + 2);
        if (v96 > v132)
        {
          goto LABEL_128;
        }

        *v129 = v32;
        *(v129 + 1) = v131;
        if (v96 >= v132)
        {
          goto LABEL_129;
        }

        v92 = v132 - 1;
        sub_21B0D61C0(v130 + 16, v132 - 1 - v96, &v93[16 * v96]);
        v32 = v128;
        *(v128 + 2) = v132 - 1;
        v133 = v132 > 2;
        v15 = v154;
        if (!v133)
        {
          goto LABEL_111;
        }
      }

      v103 = &v93[16 * v92];
      v104 = *(v103 - 8);
      v105 = *(v103 - 7);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_130;
      }

      v108 = *(v103 - 6);
      v107 = *(v103 - 5);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_131;
      }

      v110 = *(v98 + 1);
      v111 = v110 - *v98;
      if (__OFSUB__(v110, *v98))
      {
        goto LABEL_133;
      }

      v109 = __OFADD__(v101, v111);
      v112 = v101 + v111;
      if (v109)
      {
        goto LABEL_136;
      }

      if (v112 >= v106)
      {
        v126 = *v97;
        v125 = *(v97 + 1);
        v109 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v109)
        {
          goto LABEL_144;
        }

        if (v101 < v127)
        {
          v96 = v92 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v26 = v158;
    v30 = v159[1];
    v31 = v157;
    v8 = v162;
    v28 = v144;
    v29 = v146;
    if (v157 >= v30)
    {
      goto LABEL_114;
    }
  }

  v69 = (v33 + v143);
  if (__OFADD__(v33, v143))
  {
    goto LABEL_147;
  }

  if (v69 >= v68)
  {
    v69 = v159[1];
  }

  if (v69 < v33)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v32 = sub_21B0D61A8(v32, v22, v23, v24);
LABEL_116:
    v136 = v32 + 16;
    v137 = *(v32 + 2);
    while (v137 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v138 = v32;
      v32 += 16 * v137;
      v139 = *v32;
      v140 = &v136[2 * v137];
      v141 = *(v140 + 1);
      sub_21AFD148C(&(*v159)[*(v158 + 72) * *v32], &(*v159)[*(v158 + 72) * *v140], &(*v159)[*(v158 + 72) * v141], v170);
      if (v5)
      {
        break;
      }

      if (v141 < v139)
      {
        goto LABEL_141;
      }

      if (v137 - 2 >= *v136)
      {
        goto LABEL_142;
      }

      *v32 = v139;
      *(v32 + 1) = v141;
      v22 = *v136 - v137;
      if (*v136 < v137)
      {
        goto LABEL_143;
      }

      v137 = *v136 - 1;
      sub_21B0D61C0(v140 + 16, v22, v140);
      *v136 = v137;
      v32 = v138;
    }

    goto LABEL_124;
  }

  if (v34 == v69)
  {
    goto LABEL_62;
  }

  v145 = v32;
  v148 = v5;
  v70 = *v159;
  v71 = *(v26 + 72);
  v167 = *(v26 + 16);
  v72 = &v70[v71 * (v34 - 1)];
  v163 = -v71;
  v164 = v70;
  v73 = (v33 - v34);
  v150 = v71;
  v151 = v69;
  v74 = &v70[v34 * v71];
  v75 = v166;
LABEL_48:
  v156 = v72;
  v157 = v34;
  v153 = v74;
  v155 = v73;
  while (1)
  {
    v76 = v167;
    (v167)(v75, v74, v8);
    v76(v15, v72, v8);
    v77 = v15;
    v78 = sub_21B111C94();
    v79 = v8;
    v81 = v80;
    if (v78 == sub_21B111C94() && v81 == v82)
    {

      v89 = *v169;
      (*v169)(v77, v79);
      (v89)(v75, v79);
      v8 = v79;
      v15 = v77;
      goto LABEL_60;
    }

    v84 = v75;
    v85 = sub_21B112D04();

    v86 = *v169;
    (*v169)(v77, v79);
    (v86)(v84, v79);
    v8 = v79;
    v15 = v77;
    if ((v85 & 1) == 0)
    {
      v75 = v166;
LABEL_60:
      v34 = v157 + 1;
      v72 = &v156[v150];
      v73 = v155 - 1;
      v74 = &v153[v150];
      if ((v157 + 1) == v151)
      {
        v34 = v151;
        v5 = v148;
        v32 = v145;
        v33 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v87 = *v168;
    v88 = v165;
    (*v168)(v165, v74, v79);
    swift_arrayInitWithTakeFrontToBack();
    v87(v72, v88, v79);
    v72 += v163;
    v74 += v163;
    v67 = __CFADD__(v73++, 1);
    v75 = v166;
    if (v67)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_21AFD148C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_21B111CB4();
  v9 = MEMORY[0x28223BE20](v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  result = MEMORY[0x28223BE20](v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_21AFCC308(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = sub_21B111C94();
      v36 = v35;
      if (v34 == sub_21B111C94() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = sub_21B112D04();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = v42 + v27;
      v77 = a1;
    }
  }

  sub_21AFCC308(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = sub_21B111C94();
    v54 = v53;
    if (v52 == sub_21B111C94() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_21B112D04();
    }

    v58 = v49 + v68;
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_21AFD1AC0(&v77, &v76, &v75, MEMORY[0x277D39DE0]);
  return 1;
}

uint64_t sub_21AFD1AC0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_21AFD1BA4()
{
  result = qword_27CD437D0;
  if (!qword_27CD437D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD437C8, &qword_21B117AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD437D0);
  }

  return result;
}

uint64_t sub_21AFD1CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFD1D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AFD1E04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_21AFD1E44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t type metadata accessor for FeedbackSchemaProvider(uint64_t a1)
{
  result = qword_27CD437D8;
  if (!qword_27CD437D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AFD1EEC(uint64_t a1)
{
  sub_21AFA861C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_21AFD1F84()
{
  v0 = sub_21B111CB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D39DD8], v0);
  v4 = sub_21B111C64();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_27CD6E790 = v4;
  *algn_27CD6E798 = v6;
  return result;
}

unint64_t sub_21AFD2084(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21AFD20D0()
{
  v44 = sub_21B1110C4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v43 = v5;
  MEMORY[0x28223BE20](v6);
  v42 = &v32 - v7;
  v41 = sub_21B1111C4();
  OUTLINED_FUNCTION_1();
  v45 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FD8, &qword_21B114B40);
  OUTLINED_FUNCTION_25(v13);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14);
  v15 = qword_27CD6E7A0;
  v16 = sub_21B111894();
  __swift_storeEnumTagSinglePayload(v0 + v15, 1, 1, v16);
  if (qword_27CD42520 != -1)
  {
    swift_once();
  }

  sub_21B111924();
  v17 = OUTLINED_FUNCTION_5_11();
  __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);

  v20 = sub_21B111184();
  v21 = v20;
  if (!v1)
  {
    v32 = 0;
    v46 = MEMORY[0x277D84F90];
    v33 = v20;

    sub_21AFCC59C(0, 4, 0);
    v22 = 0;
    v23 = v46;
    v39 = *(v3 + 104);
    v36 = *MEMORY[0x277D3E600];
    v35 = *MEMORY[0x277D3E5C8];
    v34 = *MEMORY[0x277D3E5F8];
    v40 = v3 + 104;
    v24 = (v3 + 32);
    v38 = v45 + 32;
    v37 = *MEMORY[0x277D3E5E8];
    do
    {
      v25 = v12;
      v26 = v37;
      switch(byte_282C8D9C0[v22 + 32])
      {
        case 1:
          v26 = v34;
          break;
        case 2:
          v26 = v35;
          break;
        case 3:
          v26 = v36;
          break;
        default:
          break;
      }

      v28 = v43;
      v27 = v44;
      v39(v43, v26, v44);
      (*v24)(v42, v28, v27);
      v12 = v25;
      sub_21B1111B4();
      v46 = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21AFCC59C(v29 > 1, v30 + 1, 1);
        v23 = v46;
      }

      ++v22;
      *(v23 + 16) = v30 + 1;
      (*(v45 + 32))(v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v30, v25, v41);
    }

    while (v22 != 4);
    v21 = v33;
    sub_21B111174();
  }

  return v21;
}

uint64_t sub_21AFD2514()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  sub_21B111194();
  sub_21B111814();
  if (v1)
  {
  }

  v7 = sub_21B111894();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  v8 = qword_27CD6E7A0;
  swift_beginAccess();
  sub_21AFA867C(v5, v0 + v8);
  return swift_endAccess();
}

uint64_t sub_21AFD2618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = sub_21AFD2084(a1, a2);
  if (v6)
  {
    if (v6 == 4)
    {
      result = OUTLINED_FUNCTION_3_14("Fatal error", v7, v8, v9, v10, "SearchOnDeviceAnalytics/FeedbackSchemaProvider.swift", v11, v12, 58, 0);
      __break(1u);
    }

    else
    {
      v17 = v6;
      v18 = sub_21B111134();
      v20 = v19;
      sub_21AFD2734(v17, v18, v19, a3);
      return sub_21AF99728(v18, v20);
    }
  }

  else
  {
    sub_21B111154();
    Double.fromReferenceToUnixTime.getter(v13);
    *a3 = v14;
    v15 = sub_21B1119B4();
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v15);
  }

  return result;
}

void sub_21AFD2734(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v96 = a2;
  v97 = a3;
  v95 = a1;
  v93 = a4;
  sub_21B111804();
  OUTLINED_FUNCTION_1();
  v87 = v6;
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v86 = v8 - v7;
  sub_21B1117E4();
  OUTLINED_FUNCTION_1();
  v90 = v10;
  v91 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v85 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD437E8, &qword_21B117C88);
  v14 = OUTLINED_FUNCTION_25(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  v92 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v89 = &v85 - v18;
  MEMORY[0x28223BE20](v17);
  v94 = &v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43048, &unk_21B117C90);
  OUTLINED_FUNCTION_25(v20);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  OUTLINED_FUNCTION_25(v24);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v25);
  v27 = &v85 - v26;
  v28 = sub_21B111894();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  v35 = qword_27CD6E7A0;
  swift_beginAccess();
  sub_21AFC555C(v4 + v35, v27, &qword_27CD43038, &qword_21B114C10);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    sub_21AFA8918(v27, &qword_27CD43038, &qword_21B114C10);
    OUTLINED_FUNCTION_3_14("Fatal error", v79, v80, v81, v82, "SearchOnDeviceAnalytics/FeedbackSchemaProvider.swift", v83, v84, 76, 0);
LABEL_21:
    __break(1u);
  }

  else
  {
    (*(v30 + 32))(v34, v27, v28);
    v36 = v98;
    sub_21B111884();
    if (v36)
    {
      v43 = OUTLINED_FUNCTION_1_13();
      v44(v43);
    }

    else
    {
      switch(v95)
      {
        case 1:
          sub_21B111974();
          v45 = OUTLINED_FUNCTION_1_13();
          v46(v45);

          v47 = sub_21B1119B4();
          v48 = OUTLINED_FUNCTION_5_11();
          if (__swift_getEnumTagSinglePayload(v48, v49, v47) == 1)
          {
            v50 = v93;
            *v93 = 0;
            swift_storeEnumTagMultiPayload();
            v51 = OUTLINED_FUNCTION_5_11();
            if (__swift_getEnumTagSinglePayload(v51, v52, v47) != 1)
            {
              sub_21AFA8918(v23, &qword_27CD43048, &unk_21B117C90);
            }
          }

          else
          {
            v50 = v93;
            sub_21AFD2EFC(v23, v93);
          }

          v64 = v50;
          goto LABEL_16;
        case 2:
          v53 = v94;
          OUTLINED_FUNCTION_9_6();
          v54 = v89;
          sub_21AFC555C(v53, v89, &qword_27CD437E8, &qword_21B117C88);
          v55 = v91;
          if (__swift_getEnumTagSinglePayload(v54, 1, v91) == 1)
          {

            sub_21AFA8918(v53, &qword_27CD437E8, &qword_21B117C88);
            v56 = OUTLINED_FUNCTION_1_13();
            v57(v56);
            goto LABEL_12;
          }

          (*(v90 + 32))(v85, v54, v55);
          v66 = v86;
          sub_21B1117C4();
          v98 = sub_21B1117F4();
          v68 = v67;

          (*(v87 + 8))(v66, v88);
          v69 = OUTLINED_FUNCTION_8_11();
          v70(v69);
          sub_21AFA8918(v94, &qword_27CD437E8, &qword_21B117C88);
          v71 = OUTLINED_FUNCTION_1_13();
          v72(v71);
          v73 = v93;
          *v93 = v98;
          v73[1] = v68;
          v47 = sub_21B1119B4();
          swift_storeEnumTagMultiPayload();
          v64 = v73;
LABEL_16:
          v65 = 0;
          v63 = v47;
          break;
        case 3:
          v58 = v92;
          OUTLINED_FUNCTION_9_6();
          v59 = OUTLINED_FUNCTION_5_11();
          if (__swift_getEnumTagSinglePayload(v59, v60, v91) == 1)
          {
            v61 = OUTLINED_FUNCTION_1_13();
            v62(v61);

            sub_21AFA8918(v58, &qword_27CD437E8, &qword_21B117C88);
LABEL_12:
            v63 = sub_21B1119B4();
            v64 = v93;
            v65 = 1;
          }

          else
          {
            v74 = v93;
            sub_21B1117D4();

            v75 = OUTLINED_FUNCTION_1_13();
            v76(v75);
            v77 = OUTLINED_FUNCTION_8_11();
            v78(v77);
            v63 = sub_21B1119B4();
            v64 = v74;
            v65 = 0;
          }

          break;
        default:
          OUTLINED_FUNCTION_3_14("Fatal error", v37, v38, v39, v40, "SearchOnDeviceAnalytics/FeedbackSchemaProvider.swift", v41, v42, 81, 0);
          goto LABEL_21;
      }

      __swift_storeEnumTagSinglePayload(v64, v65, 1, v63);
    }
  }
}

uint64_t sub_21AFD2E70()
{
  v0 = sub_21B1111A4();
  sub_21AFA8918(v0 + qword_27CD6E7A0, &qword_27CD43038, &qword_21B114C10);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AFD2EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B1119B4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_21B1129C4(a1, 11, 2, 0, 0xE000000000000000, a6, 52, 2, a9);
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return sub_21B111994();
}

uint64_t sub_21AFD2FEC(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_282C8D7A0 != a1);
  return v2 & 1;
}

uint64_t sub_21AFD3014(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_282C8D778 != a1);
  return v2 & 1;
}

void sub_21AFD3040(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch(*(a10 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_3_15();
      sub_21B112274();
      return;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v25 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_2_15(v25, xmmword_21B113D90);
      goto LABEL_8;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v17 = swift_allocObject();
      v18 = OUTLINED_FUNCTION_2_15(v17, xmmword_21B113DB0);
      sub_21AF92198(v18, v19);
      v15 = OUTLINED_FUNCTION_4_11();
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_2_15(v20, xmmword_21B1141D0);
      sub_21AF92198(v21, v22);
      v23 = OUTLINED_FUNCTION_4_11();
      sub_21AF92198(v23, v24);
      v15 = a10 + 112;
      v16 = &v20[7];
      goto LABEL_8;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_2_15(v10, xmmword_21B113D80);
      sub_21AF92198(v11, v12);
      v13 = OUTLINED_FUNCTION_4_11();
      sub_21AF92198(v13, v14);
      sub_21AF92198(a10 + 112, &v10[7]);
      v15 = a10 + 152;
      v16 = &v10[9].n128_i64[1];
      goto LABEL_8;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_2_15(v26, xmmword_21B115FB0);
      sub_21AF92198(v27, v28);
      v29 = OUTLINED_FUNCTION_4_11();
      sub_21AF92198(v29, v30);
      sub_21AF92198(a10 + 112, &v26[7]);
      sub_21AF92198(a10 + 152, &v26[9].n128_i64[1]);
      v15 = a10 + 192;
      v16 = &v26[12];
LABEL_8:
      sub_21AF92198(v15, v16);
      OUTLINED_FUNCTION_3_15();
      sub_21B112274();

      break;
    default:
      return;
  }
}

uint64_t sub_21AFD33D0()
{
  OUTLINED_FUNCTION_11_5();
  sub_21B1112D4();
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_14(v1, v21);
  v3(v2);
  v4 = OUTLINED_FUNCTION_4_12();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D3DF98])
  {
    v7 = OUTLINED_FUNCTION_3_16();
    v8(v7);
    return 5;
  }

  else if (v6 == *MEMORY[0x277D3DF88] || v6 == *MEMORY[0x277D3DF78])
  {
    v12 = OUTLINED_FUNCTION_10_7();
    v13(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43840, &unk_21B128610);
    if (OUTLINED_FUNCTION_8_12(v14))
    {
      v15 = OUTLINED_FUNCTION_5_12();
      v9 = v16(v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      OUTLINED_FUNCTION_9_7();
      return 6;
    }
  }

  else if (v6 == *MEMORY[0x277D3DF90])
  {
    v17 = OUTLINED_FUNCTION_3_16();
    v18(v17);
    return 7;
  }

  else if (v6 == *MEMORY[0x277D3DF80])
  {
    return 11;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_3_16();
    v20(v19);
    return 0;
  }

  return v9;
}

uint64_t sub_21AFD359C(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD437F0, MEMORY[0x277D3DFA0], MEMORY[0x277D3DFA8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD35F4()
{
  sub_21B111374();
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_2_16(v1, v12);
  v3(v2);
  v4 = OUTLINED_FUNCTION_6_8();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D3E040])
  {
    v7 = 9;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == *MEMORY[0x277D3E048])
  {
    v8 = 5;
  }

  else
  {
    v8 = v7;
  }

  v9 = OUTLINED_FUNCTION_7_7();
  v10(v9);
  return v8;
}

uint64_t sub_21AFD36D8(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD437F8, MEMORY[0x277D3E050], MEMORY[0x277D3E058]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD3730()
{
  sub_21B111384();
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_2_16(v1, v13);
  v3(v2);
  v4 = OUTLINED_FUNCTION_6_8();
  v6 = v5(v4);
  v7 = *MEMORY[0x277D3E060];
  v8 = *MEMORY[0x277D3E068];
  v9 = OUTLINED_FUNCTION_7_7();
  v10(v9);
  if (v6 == v8 || v6 == v7)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AFD3814(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43800, MEMORY[0x277D3E070], MEMORY[0x277D3E078]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD386C()
{
  OUTLINED_FUNCTION_11_5();
  sub_21B111464();
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_14(v1, v17);
  v3(v2);
  v4 = OUTLINED_FUNCTION_4_12();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D3E110] || v6 == *MEMORY[0x277D3E108])
  {
    v8 = OUTLINED_FUNCTION_10_7();
    v9(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43840, &unk_21B128610);
    if (OUTLINED_FUNCTION_8_12(v10))
    {
      v11 = OUTLINED_FUNCTION_5_12();
      v15 = v12(v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {
      OUTLINED_FUNCTION_9_7();
      return 6;
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_16();
    v14(v13);
    return 0;
  }

  return v15;
}

uint64_t sub_21AFD39C4(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43808, MEMORY[0x277D3E118], MEMORY[0x277D3E120]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD3A1C()
{
  OUTLINED_FUNCTION_11_5();
  sub_21B1112F4();
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_14(v1, v24);
  v3(v2);
  v4 = OUTLINED_FUNCTION_4_12();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D3E020] || v6 == *MEMORY[0x277D3E018])
  {
    v8 = OUTLINED_FUNCTION_3_16();
    v9(v8);
    return 11;
  }

  else if (v6 == *MEMORY[0x277D3E010] || v6 == *MEMORY[0x277D3E000] || v6 == *MEMORY[0x277D3E008])
  {
    v13 = OUTLINED_FUNCTION_3_16();
    v14(v13);
    return 12;
  }

  else if (v6 == *MEMORY[0x277D3DFF8] || v6 == *MEMORY[0x277D3DFF0])
  {
    v16 = OUTLINED_FUNCTION_10_7();
    v17(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43840, &unk_21B128610);
    if (OUTLINED_FUNCTION_8_12(v18))
    {
      v19 = OUTLINED_FUNCTION_5_12();
      v10 = v20(v19);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      OUTLINED_FUNCTION_9_7();
      return 6;
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_3_16();
    v22(v21);
    return 0;
  }

  return v10;
}

uint64_t sub_21AFD3BFC(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43810, MEMORY[0x277D3E028], MEMORY[0x277D3E030]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD3C54()
{
  OUTLINED_FUNCTION_11_5();
  sub_21B1116B4();
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_14(v1, v15);
  v3(v2);
  v4 = OUTLINED_FUNCTION_4_12();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D3E250])
  {
    v7 = 35;
  }

  else if (v6 == *MEMORY[0x277D3E268])
  {
    v7 = 36;
  }

  else if (v6 == *MEMORY[0x277D3E2B0])
  {
    v7 = 34;
  }

  else
  {
    if (v6 != *MEMORY[0x277D3E270])
    {
      if (v6 == *MEMORY[0x277D3E240])
      {
        v7 = 32;
        goto LABEL_11;
      }

      if (v6 == *MEMORY[0x277D3E248] || v6 == *MEMORY[0x277D3E260])
      {
        return 33;
      }

      if (v6 == *MEMORY[0x277D3E2C0] || v6 == *MEMORY[0x277D3E2E0] || v6 == *MEMORY[0x277D3E278] || v6 == *MEMORY[0x277D3E2D8])
      {
        return 34;
      }

      if (v6 == *MEMORY[0x277D3E258])
      {
        return 37;
      }

      if (v6 == *MEMORY[0x277D3E2A0])
      {
        return 38;
      }

      if (v6 == *MEMORY[0x277D3E288])
      {
        return 39;
      }

      if (v6 == *MEMORY[0x277D3E2B8])
      {
        return 38;
      }

      if (v6 == *MEMORY[0x277D3E280])
      {
        return 40;
      }

      if (v6 == *MEMORY[0x277D3E2C8])
      {
        return 41;
      }
    }

    v7 = 10;
  }

LABEL_11:
  v8 = OUTLINED_FUNCTION_3_16();
  v9(v8);
  return v7;
}

uint64_t sub_21AFD3EA8(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43818, MEMORY[0x277D3E2E8], MEMORY[0x277D3E2F0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD3F00()
{
  sub_21B111454();
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_2_16(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_6_8();
  v6 = v5(v4);
  v7 = *MEMORY[0x277D3E0F0];
  v8 = OUTLINED_FUNCTION_7_7();
  v9(v8);
  if (v6 == v7)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AFD3FD4(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43820, MEMORY[0x277D3E0F8], MEMORY[0x277D3E100]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD402C()
{
  OUTLINED_FUNCTION_11_5();
  sub_21B1112E4();
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_14(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_4_12();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D3DFC0])
  {
    v7 = 45;
  }

  else if (v6 == *MEMORY[0x277D3DFB0])
  {
    v7 = 46;
  }

  else if (v6 == *MEMORY[0x277D3DFB8])
  {
    v7 = 47;
  }

  else if (v6 == *MEMORY[0x277D3DFD0])
  {
    v7 = 48;
  }

  else if (v6 == *MEMORY[0x277D3DFD8])
  {
    v7 = 49;
  }

  else if (v6 == *MEMORY[0x277D3DFC8])
  {
    v7 = 48;
  }

  else
  {
    v7 = 0;
  }

  v8 = OUTLINED_FUNCTION_3_16();
  v9(v8);
  return v7;
}

uint64_t sub_21AFD4184(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43828, MEMORY[0x277D3DFE0], MEMORY[0x277D3DFE8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD41FC()
{
  sub_21B111474();
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_2_16(v1, v12);
  v3(v2);
  v4 = OUTLINED_FUNCTION_6_8();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D3E130])
  {
    v7 = 50;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == *MEMORY[0x277D3E128])
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  v9 = OUTLINED_FUNCTION_7_7();
  v10(v9);
  return v8;
}

uint64_t sub_21AFD42E0(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43830, MEMORY[0x277D3E138], MEMORY[0x277D3E140]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD4340(uint64_t a1)
{
  result = sub_21AFD4398(&qword_27CD43838, MEMORY[0x277D85678], MEMORY[0x277D85680]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD4398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21AFD43E0(uint64_t a1)
{
  result = sub_21AF94BA0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21AFD4408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43848, &unk_21B117F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_12()
{
  sub_21AF81D68((v0 - 128), v0 - 72);
  v1 = *(v0 - 48);
  __swift_project_boxed_opaque_existential_0((v0 - 72), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_8_12(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  *(v0 - 96) = 0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;

  return sub_21AFD4408(v0 - 128);
}

BOOL sub_21AFD45D8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_21AFD4664(uint64_t a1, uint64_t a2)
{
  sub_21B099D04();

  return sub_21B111F34();
}

uint64_t sub_21AFD4760@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_SearchSuggestionType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD47B0(uint64_t a1, uint64_t a2)
{
  sub_21B0AA8EC();

  return sub_21B111F34();
}

uint64_t sub_21AFD4890@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_ResultType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD48C4(uint64_t a1, uint64_t a2)
{
  sub_21B09A0A0();

  return sub_21B111F34();
}

uint64_t sub_21AFD49A4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_EngagementActionTarget.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD49F4(uint64_t a1, uint64_t a2)
{
  sub_21B09A04C();

  return sub_21B111F34();
}

uint64_t sub_21AFD4AD4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_EngagementDestination.allCases.getter(a2);
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_CardSectionType.init(rawValue:)(void *a1@<X8>, unint64_t a2@<X0>)
{
  if (a2 >= 0x3E)
  {
    switch(a2)
    {
      case 0xC8uLL:
        a2 = 64;
        break;
      case 0xC9uLL:
        a2 = 65;
        break;
      case 0xCAuLL:
        a2 = 66;
        break;
      case 0xCBuLL:
        a2 = 67;
        break;
      case 0xCCuLL:
        a2 = 68;
        break;
      case 0xCDuLL:
        a2 = 69;
        break;
      case 0xCEuLL:
        a2 = 70;
        break;
      case 0xCFuLL:
        a2 = 71;
        break;
      case 0xD0uLL:
        a2 = 72;
        break;
      case 0xD1uLL:
        a2 = 73;
        break;
      case 0xD2uLL:
        a2 = 74;
        break;
      case 0xD3uLL:
        a2 = 75;
        break;
      case 0xD4uLL:
        a2 = 76;
        break;
      case 0xD5uLL:
        a2 = 77;
        break;
      case 0xD6uLL:
        a2 = 78;
        break;
      default:
        v2 = 62;
        if (a2 != 63)
        {
          v2 = a2;
        }

        if (a2 == 64)
        {
          a2 = 63;
        }

        else
        {
          a2 = v2;
        }

        break;
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_1_5(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_21B127DA0[result];
  }

  return result;
}

uint64_t sub_21AFD4C4C@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD4C80(uint64_t a1, uint64_t a2)
{
  sub_21B09A1F0();

  return sub_21B111F34();
}

uint64_t sub_21AFD4D7C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_CardSectionType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD4DC0(uint64_t a1, uint64_t a2)
{
  sub_21B0AA898();

  return sub_21B111F34();
}

uint64_t sub_21AFD4EA0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_FBTH.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD4EF0(uint64_t a1, uint64_t a2)
{
  sub_21B09A0F4();

  return sub_21B111F34();
}

uint64_t sub_21AFD4FD0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerVisibleResultsEvent.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5014(uint64_t a1, uint64_t a2)
{
  sub_21B09A6DC();

  return sub_21B111F34();
}

uint64_t sub_21AFD50F4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_SessionEndTriggerEvent.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5128(uint64_t a1, uint64_t a2)
{
  sub_21B09A244();

  return sub_21B111F34();
}

uint64_t sub_21AFD5208@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_ActionCardType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5258(uint64_t a1, uint64_t a2)
{
  sub_21B09A2EC();

  return sub_21B111F34();
}

uint64_t sub_21AFD5338@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5388(uint64_t a1, uint64_t a2)
{
  sub_21B09A394();

  return sub_21B111F34();
}

uint64_t sub_21AFD5468@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_EndpointType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD54AC(uint64_t a1, uint64_t a2)
{
  sub_21B0AA844();

  return sub_21B111F34();
}

uint64_t sub_21AFD558C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_IndexType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD55C0(uint64_t a1, uint64_t a2)
{
  sub_21B09A4E4();

  return sub_21B111F34();
}

uint64_t sub_21AFD56A0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_CardDisappearEvent.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD56D4(uint64_t a1, uint64_t a2)
{
  sub_21B09A538();

  return sub_21B111F34();
}

uint64_t sub_21AFD57B4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_ClearInputTriggerEvent.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD57E8(uint64_t a1, uint64_t a2)
{
  sub_21B09A58C();

  return sub_21B111F34();
}

uint64_t sub_21AFD58C8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_SectionEngagementTriggerEvent.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD58FC(uint64_t a1, uint64_t a2)
{
  sub_21B09A5E0();

  return sub_21B111F34();
}

uint64_t sub_21AFD59DC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_VisibleSectionHeaderType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5A2C(uint64_t a1, uint64_t a2)
{
  sub_21B09A490();

  return sub_21B111F34();
}

uint64_t sub_21AFD5B0C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_KnownFeedbackType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5B50(uint64_t a1, uint64_t a2)
{
  sub_21B09A634();

  return sub_21B111F34();
}

uint64_t sub_21AFD5C30@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackGrade.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5C80(uint64_t a1, uint64_t a2)
{
  sub_21B099FF8();

  return sub_21B111F34();
}

uint64_t sub_21AFD5D60@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_TriggerEngagementEvent.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5DA0(uint64_t a1, uint64_t a2)
{
  sub_21AFB4A1C();

  return sub_21B111F34();
}

uint64_t sub_21AFD5E80@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_ViewAppearEvent.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD5ED0(uint64_t a1, uint64_t a2)
{
  sub_21B099F50();

  return sub_21B111F34();
}

uint64_t sub_21AFD5FB0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_ViewDisappearEvent.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6000(uint64_t a1, uint64_t a2)
{
  sub_21B0AA7F0();

  return sub_21B111F34();
}

uint64_t sub_21AFD60FC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_TimingDataDictKeys.allCases.getter(a2);
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_CommandType.init(rawValue:)(unint64_t *a1@<X8>, unint64_t a2@<X0>)
{
  v2 = 48;
  if (a2 != 50)
  {
    v2 = a2;
  }

  if (a2 < 0x30)
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_1_5(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CommandType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_21B128018[result];
  }

  return result;
}

uint64_t sub_21AFD6180@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD61B4(uint64_t a1, uint64_t a2)
{
  sub_21B09A19C();

  return sub_21B111F34();
}

uint64_t sub_21AFD62AC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_CommandType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD62E0(uint64_t a1, uint64_t a2)
{
  sub_21B0AA79C();

  return sub_21B111F34();
}

uint64_t sub_21AFD63C0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD63F4(uint64_t a1, uint64_t a2)
{
  sub_21B0AA748();

  return sub_21B111F34();
}

uint64_t sub_21AFD64D4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsedReason.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6508(uint64_t a1, uint64_t a2)
{
  sub_21B0AA6F4();

  return sub_21B111F34();
}

uint64_t sub_21AFD65E8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_ThirdPartyQueryCompletionMatched.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD661C(uint64_t a1, uint64_t a2)
{
  sub_21B099DAC();

  return sub_21B111F34();
}

uint64_t sub_21AFD66FC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosSuggestionType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6730(uint64_t a1, uint64_t a2)
{
  sub_21B099E00();

  return sub_21B111F34();
}

uint64_t sub_21AFD6810@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_HideReason.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6844(uint64_t a1, uint64_t a2)
{
  sub_21B099E54();

  return sub_21B111F34();
}

uint64_t sub_21AFD6924@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_MailSuggestionDataSources.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6958(uint64_t a1, uint64_t a2)
{
  sub_21B099EA8();

  return sub_21B111F34();
}

uint64_t sub_21AFD6A38@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_CoreSpotlightResultQueryRecency.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6A6C(uint64_t a1, uint64_t a2)
{
  sub_21B099EFC();

  return sub_21B111F34();
}

uint64_t sub_21AFD6B4C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_EmbeddingStatusType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6B9C(uint64_t a1, uint64_t a2)
{
  sub_21B0AA6A0();

  return sub_21B111F34();
}

uint64_t sub_21AFD6C7C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_ContactActionType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6CB0(uint64_t a1, uint64_t a2)
{
  sub_21B09A148();

  return sub_21B111F34();
}

uint64_t sub_21AFD6D90@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_CounterfactualError.allCases.getter(a2);
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  if (!v3 & v2)
  {
    switch(a2)
    {
      case 0:
      case 1:
      case 4:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        break;
      case 2:
        a2 = 1;
        break;
      case 3:
        a2 = 2;
        break;
      case 5:
        a2 = 4;
        break;
      case 6:
        a2 = 5;
        break;
      case 12:
        a2 = 6;
        break;
      case 13:
        a2 = 7;
        break;
      case 14:
        a2 = 8;
        break;
      default:
        switch(a2)
        {
          case 62:
            a2 = 9;
            break;
          case 124:
            a2 = 10;
            break;
          case 125:
            a2 = 11;
            break;
          case 127:
            a2 = 12;
            break;
          case 201:
            a2 = 3;
            break;
        }

        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 172:
        a2 = 13;
        break;
      case 173:
        a2 = 14;
        break;
      case 174:
        a2 = 15;
        break;
      case 175:
        a2 = 16;
        break;
      case 176:
        a2 = 17;
        break;
      case 177:
        a2 = 18;
        break;
      case 178:
        a2 = 19;
        break;
      case 179:
        a2 = 20;
        break;
      case 180:
        a2 = 21;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_1_5(a1);
}

uint64_t Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_21B1281A0[result];
  }

  return result;
}

uint64_t sub_21AFD6F58@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD6F8C(uint64_t a1, uint64_t a2)
{
  sub_21B09A298();

  return sub_21B111F34();
}

uint64_t sub_21AFD7088@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_MKPlaceViewFeedbackType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD70BC(uint64_t a1, uint64_t a2)
{
  sub_21B0AA64C();

  return sub_21B111F34();
}

uint64_t sub_21AFD719C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_SKStoreProductPageResult.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD71E0(uint64_t a1, uint64_t a2)
{
  sub_21B09A340();

  return sub_21B111F34();
}

uint64_t sub_21AFD72C0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_SearchType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7304(uint64_t a1, uint64_t a2)
{
  sub_21B09A3E8();

  return sub_21B111F34();
}

uint64_t sub_21AFD73E4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_EntityType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7418(uint64_t a1, uint64_t a2)
{
  sub_21B099FA4();

  return sub_21B111F34();
}

uint64_t sub_21AFD74F8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_SpotlightQueryIntentType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD752C(uint64_t a1, uint64_t a2)
{
  sub_21B0AA5F8();

  return sub_21B111F34();
}

uint64_t sub_21AFD760C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7650(uint64_t a1, uint64_t a2)
{
  sub_21B09A43C();

  return sub_21B111F34();
}

uint64_t sub_21AFD7730@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosLibraryBucket.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7780(uint64_t a1, uint64_t a2)
{
  sub_21B099D58();

  return sub_21B111F34();
}

uint64_t sub_21AFD7860@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_PhotosRetrievalBucket.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7894(uint64_t a1, uint64_t a2)
{
  sub_21B09A688();

  return sub_21B111F34();
}

uint64_t sub_21AFD7974@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_LookupHintRelevancy.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FlusherEndpoint.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_21AFD79D8@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_FlusherEndpoint.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7A0C(uint64_t a1, uint64_t a2)
{
  sub_21B0AA5A4();

  return sub_21B111F34();
}

uint64_t sub_21AFD7B08@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_FlusherEndpoint.allCases.getter(a2);
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_FeedbackType.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 'd':
      a2 = 45;
      break;
    case 'e':
      a2 = 46;
      break;
    case 'f':
      a2 = 47;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_1_5(a1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_21B128250[result];
  }

  return result;
}

uint64_t sub_21AFD7BB8@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_FeedbackType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7BEC(uint64_t a1, uint64_t a2)
{
  sub_21B0AA550();

  return sub_21B111F34();
}

uint64_t sub_21AFD7CE8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7D1C(uint64_t a1, uint64_t a2)
{
  sub_21B0AA4FC();

  return sub_21B111F34();
}

uint64_t sub_21AFD7DFC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_LookupSelectionType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7E30(uint64_t a1, uint64_t a2)
{
  sub_21B09A730();

  return sub_21B111F34();
}

uint64_t sub_21AFD7F10@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_SkipSearchTriggerEvent.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD7F44(uint64_t a1, uint64_t a2)
{
  sub_21B0AA4A8();

  return sub_21B111F34();
}

uint64_t sub_21AFD8024@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_PrivateRelayStatus.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NullValue.rawValue.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_815();
  }
}

uint64_t sub_21AFD8080@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_NullValue.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFD80B4(uint64_t a1, uint64_t a2)
{
  sub_21B0AA454();

  return sub_21B111F34();
}

uint64_t sub_21AFD81B0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_NullValue.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD81E4(uint64_t a1, uint64_t a2)
{
  sub_21B09A784();

  return sub_21B111F34();
}

uint64_t sub_21AFD82C4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_CBAEngagementType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD8314(uint64_t a1, uint64_t a2)
{
  sub_21B0AA400();

  return sub_21B111F34();
}

uint64_t sub_21AFD8410@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_BundleIdentifier.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD8444(uint64_t a1, uint64_t a2)
{
  sub_21B0AA3AC();

  return sub_21B111F34();
}

uint64_t sub_21AFD8524@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_UserReportType.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD8568(uint64_t a1, uint64_t a2)
{
  sub_21B0AA358();

  return sub_21B111F34();
}

uint64_t sub_21AFD8648@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_Client.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AFD8698(uint64_t a1, uint64_t a2)
{
  sub_21B0AA304();

  return sub_21B111F34();
}

uint64_t sub_21AFD8734()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_688(v2);
  *v0 = v1;
}

uint64_t sub_21AFD87B0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Apple_Parsec_Feedback_V2_FeedbackDeletionReason.allCases.getter(a2);
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 16, v3);
  return *(v2 + 16);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v3);
  v5 = OUTLINED_FUNCTION_650(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B02E86C(v8);
    OUTLINED_FUNCTION_20_1(v9);
  }

  result = OUTLINED_FUNCTION_14_4(v7 + 16, v6);
  *(v7 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_54_0(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_182(v5);
  OUTLINED_FUNCTION_344();
  *(v1 + 80) = *(v0 + 16);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD891C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_197();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21B02E86C(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 16) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.cellRxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 24);
  *(v1 + 72) = *(v0 + 24);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.cellTxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_371();
  *(v1 + 72) = *(v0 + 32);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.connectAttempts.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_54_0(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_182(v5);
  OUTLINED_FUNCTION_12_4(v0 + 40);
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.connectSuccesses.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_54_0(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_182(v5);
  OUTLINED_FUNCTION_12_4(v0 + 44);
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.minRtt.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_54_0(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_182(v5);
  OUTLINED_FUNCTION_12_4(v0 + 48);
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxBytes.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 56);
  *(v1 + 72) = *(v0 + 56);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 64, v3);
  return *(v2 + 64);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 64, v4);
  *(v5 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 64);
  *(v1 + 72) = *(v0 + 64);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD9018()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 64) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxOutOfOrderBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 72, v4);
  *(v5 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxOutOfOrderBytes.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 72);
  *(v1 + 72) = *(v0 + 72);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD9174()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 72) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 80, v3);
  return *(v2 + 80);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 80, v4);
  *(v5 + 80) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 80);
  *(v1 + 72) = *(v0 + 80);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD92F0()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 80) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txBytes.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 88, v3);
  return *(v2 + 88);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 88, v4);
  *(v5 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txBytes.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 88);
  *(v1 + 72) = *(v0 + 88);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD946C()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 88) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txPackets.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 96, v3);
  return *(v2 + 96);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txPackets.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 96, v4);
  *(v5 + 96) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txPackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 96);
  *(v1 + 72) = *(v0 + 96);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD95E8()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 96) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 104, v3);
  return *(v2 + 104);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 104, v4);
  *(v5 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 104);
  *(v1 + 72) = *(v0 + 104);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD9764()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 104) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.varRtt.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_54_0(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_182(v5);
  OUTLINED_FUNCTION_12_4(v0 + 112);
  *(v1 + 80) = *(v0 + 112);
  return OUTLINED_FUNCTION_19_2();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 120, v3);
  return *(v2 + 120);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 120, v4);
  *(v5 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 120);
  *(v1 + 72) = *(v0 + 120);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD99D0()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 120) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 128, v3);
  return *(v2 + 128);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 128, v4);
  *(v5 + 128) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 128);
  *(v1 + 72) = *(v0 + 128);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD9B4C()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 128) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 136, v3);
  return *(v2 + 136);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 136, v4);
  *(v5 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 136);
  *(v1 + 72) = *(v0 + 136);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD9CC8()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 136) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 144, v3);
  return *(v2 + 144);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 144, v4);
  *(v5 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 144);
  *(v1 + 72) = *(v0 + 144);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFD9E44()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 144) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.statsType.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_13_3(*(v0 + v1) + 152, v2);

  return OUTLINED_FUNCTION_52();
}

void sub_21AFD9F10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_TCPInfo.statsType.setter(v1, v2);
}

void Apple_Parsec_Feedback_V2_TCPInfo.statsType.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_798();
  v6 = OUTLINED_FUNCTION_213();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v6);
  v8 = OUTLINED_FUNCTION_651(v7);
  v10 = *(v3 + v5);
  if ((v8 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_16_1();
    v12 = sub_21B02E86C(v11);
    OUTLINED_FUNCTION_454(v12);
  }

  OUTLINED_FUNCTION_14_4(v10 + 152, v9);
  *(v10 + 152) = v4;
  *(v10 + 160) = v2;

  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.statsType.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v4);
  OUTLINED_FUNCTION_281(v5);
  OUTLINED_FUNCTION_12_4(v0 + 152);
  v6 = *(v0 + 160);
  *(v1 + 48) = *(v0 + 152);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_109();
}

void sub_21AFDA02C()
{
  OUTLINED_FUNCTION_186();
  if (v5)
  {
    OUTLINED_FUNCTION_716();
    v6 = OUTLINED_FUNCTION_84();
    Apple_Parsec_Feedback_V2_TCPInfo.statsType.setter(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_528();
    v9 = *(v4 + v1);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_353();
      type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
      OUTLINED_FUNCTION_481();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_16_1();
      v11 = sub_21B02E86C(v10);
      OUTLINED_FUNCTION_24_1(v11);
    }

    OUTLINED_FUNCTION_504(v9 + 152);
    *(v9 + 152) = v3;
    *(v9 + 160) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.getter()
{
  OUTLINED_FUNCTION_253();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3(v2 + 168, v3);
  return *(v2 + 168);
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.setter()
{
  v3 = OUTLINED_FUNCTION_244();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  result = OUTLINED_FUNCTION_14_4(v5 + 168, v4);
  *(v5 + 168) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.modify()
{
  v2 = OUTLINED_FUNCTION_45_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_34_4(v3);
  OUTLINED_FUNCTION_12_4(v0 + 168);
  *(v1 + 72) = *(v0 + 168);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFDA1B8()
{
  OUTLINED_FUNCTION_159();
  v4 = OUTLINED_FUNCTION_500();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo._StorageClass();
    OUTLINED_FUNCTION_481();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21B02E86C(v6);
    OUTLINED_FUNCTION_24_1(v7);
  }

  OUTLINED_FUNCTION_15_4();
  *(v5 + 168) = v2;

  free(v0);
}

void sub_21AFDA2B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_NetworkTimingData.interfaceIdentifier.setter(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.interfaceIdentifier.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  *(v1 + 72) = *(type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4) + 20);
  OUTLINED_FUNCTION_249();
  v5 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_109();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.getter()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_13_3(v0 + 32, v1);
  v2 = OUTLINED_FUNCTION_52();
  sub_21AF99818(v2, v3);
  return OUTLINED_FUNCTION_52();
}

void sub_21AFDA424(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21AF99818(*a1, v2);
  Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.setter(v1, v2);
}

void Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_798();
  v6 = OUTLINED_FUNCTION_213();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v6);
  v8 = OUTLINED_FUNCTION_651(v7);
  v10 = *(v3 + v5);
  if ((v8 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_16_1();
    v12 = sub_21B030D58(v11);
    OUTLINED_FUNCTION_454(v12);
  }

  OUTLINED_FUNCTION_14_4(v10 + 32, v9);
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  *(v10 + 32) = v4;
  *(v10 + 40) = v2;
  sub_21AF99728(v13, v14);
  OUTLINED_FUNCTION_797();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.modify()
{
  v2 = OUTLINED_FUNCTION_471();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_136(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  OUTLINED_FUNCTION_281(v5);
  OUTLINED_FUNCTION_371();
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  sub_21AF99818(v6, v7);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFDA53C()
{
  OUTLINED_FUNCTION_186();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_84();
    sub_21AF99818(v6, v7);
    v8 = OUTLINED_FUNCTION_84();
    Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.setter(v8, v9);
    v10 = v0[6];
    v11 = v0[7];
  }

  else
  {
    v12 = OUTLINED_FUNCTION_528();
    v13 = *(v4 + v1);
    if ((v12 & 1) == 0)
    {
      v14 = OUTLINED_FUNCTION_353();
      type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(v14);
      OUTLINED_FUNCTION_391();
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_16_1();
      v16 = sub_21B030D58(v15);
      OUTLINED_FUNCTION_24_1(v16);
    }

    OUTLINED_FUNCTION_504(v13 + 32);
    v10 = *(v13 + 32);
    v11 = *(v13 + 40);
    *(v13 + 32) = v3;
    *(v13 + 40) = v2;
  }

  sub_21AF99728(v10, v11);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_354(v1, v2);
  return *(v0 + 48);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v3);
  v5 = OUTLINED_FUNCTION_650(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B030D58(v8);
    OUTLINED_FUNCTION_20_1(v9);
  }

  result = OUTLINED_FUNCTION_14_4(v7 + 48, v6);
  *(v7 + 48) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_40_2(v3);
  *(v1 + 80) = v4;
  OUTLINED_FUNCTION_346();
  *(v1 + 84) = *(v0 + 48);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFDA6D8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(v7);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B030D58(v8);
    OUTLINED_FUNCTION_24_1(v9);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 48) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionReused.setter()
{
  v3 = OUTLINED_FUNCTION_187();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v3);
  v5 = OUTLINED_FUNCTION_650(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B030D58(v8);
    OUTLINED_FUNCTION_20_1(v9);
  }

  result = OUTLINED_FUNCTION_14_4(v7 + 49, v6);
  *(v7 + 49) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.connectionReused.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_40_2(v3);
  OUTLINED_FUNCTION_441(v4);
  OUTLINED_FUNCTION_12_4(v0 + 49);
  *(v1 + 84) = *(v0 + 49);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFDA840(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_232();
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(v7);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_16_1();
    v9 = sub_21B030D58(v8);
    OUTLINED_FUNCTION_24_1(v9);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 49) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.startTimeCounts.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v7);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    sub_21B111EB4();
    if (qword_27CD426D8 != -1)
    {
      OUTLINED_FUNCTION_262(&qword_27CD426D8);
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD44758, &qword_21B118100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_123();
    v10 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v10);
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.startTimeCounts.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44758, &qword_21B118100);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  if ((OUTLINED_FUNCTION_651(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_16_1();
    v5 = sub_21B030D58(v4);
    OUTLINED_FUNCTION_454(v5);
  }

  OUTLINED_FUNCTION_123();
  v6 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v6);
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_290(v7);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_NetworkTimingData.startTimeCounts.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_469();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_223(v3);
  v4 = OUTLINED_FUNCTION_455();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_222(v8);
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v9);
  OUTLINED_FUNCTION_135();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224(v13);
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v14);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v15)
  {
    sub_21B111EB4();
    if (qword_27CD426D8 != -1)
    {
      OUTLINED_FUNCTION_262(&qword_27CD426D8);
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD44758, &qword_21B118100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_123();
    v16 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v16);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.hasStartTimeCounts.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_285();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_36_3(v5);
  return OUTLINED_FUNCTION_466();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_NetworkTimingData.clearStartTimeCounts()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44758, &qword_21B118100);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  if ((OUTLINED_FUNCTION_650(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_16_1();
    v5 = sub_21B030D58(v4);
    OUTLINED_FUNCTION_20_1(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_274(v6);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.stopTimeCounts.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_111();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_18_2();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v7);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_343();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_29_4(v8);
  if (v9)
  {
    sub_21B111EB4();
    if (qword_27CD426D8 != -1)
    {
      OUTLINED_FUNCTION_262(&qword_27CD426D8);
    }

    result = OUTLINED_FUNCTION_194();
    if (a1 != 1)
    {
      return sub_21AF99BE0(v1, &qword_27CD44758, &qword_21B118100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_123();
    v10 = OUTLINED_FUNCTION_60();
    return sub_21B03179C(v10);
  }

  return result;
}

uint64_t sub_21AFDAEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_25(v9);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_73();
  v11 = OUTLINED_FUNCTION_90();
  sub_21B0317EC(v11);
  return a7(v7);
}

uint64_t Apple_Parsec_Feedback_V2_NetworkTimingData.stopTimeCounts.setter()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44758, &qword_21B118100);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_64_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v2);
  if ((OUTLINED_FUNCTION_651(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData._StorageClass(0);
    OUTLINED_FUNCTION_391();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_16_1();
    v5 = sub_21B030D58(v4);
    OUTLINED_FUNCTION_454(v5);
  }

  OUTLINED_FUNCTION_123();
  v6 = OUTLINED_FUNCTION_459();
  sub_21B03179C(v6);
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(0);
  OUTLINED_FUNCTION_290(v7);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_415();
  sub_21B099C68();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_NetworkTimingData.stopTimeCounts.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_469();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_223(v3);
  v4 = OUTLINED_FUNCTION_455();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_25(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_222(v8);
  type metadata accessor for Apple_Parsec_Feedback_V2_TCPInfo(v9);
  OUTLINED_FUNCTION_135();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_467(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224(v13);
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v14);
  OUTLINED_FUNCTION_405();
  OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_27_4();
  if (v15)
  {
    sub_21B111EB4();
    if (qword_27CD426D8 != -1)
    {
      OUTLINED_FUNCTION_262(&qword_27CD426D8);
    }

    OUTLINED_FUNCTION_185();
    if (v0 != 1)
    {
      sub_21AF99BE0(v1, &qword_27CD44758, &qword_21B118100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_123();
    v16 = OUTLINED_FUNCTION_440();
    sub_21B03179C(v16);
  }

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_77();
}

void sub_21AFDB194()
{
  OUTLINED_FUNCTION_115();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_48_1();
    sub_21B0317EC(v7);
    v2(v3);
    OUTLINED_FUNCTION_12_7();
    sub_21B03183C();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_114();

  free(v8);
}