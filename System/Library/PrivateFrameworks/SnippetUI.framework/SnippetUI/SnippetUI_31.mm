uint64_t OUTLINED_FUNCTION_90_1()
{

  return sub_26A505D1C();
}

uint64_t sub_26A7A5BEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A84E2D8();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84E298();
  sub_26A84E2B8();
  (*(v10 + 8))(v13, v8);
  (*(v4 + 104))(v7, *MEMORY[0x277D62B70], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860, &qword_26A8657D8);
  v14 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26A8570D0;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x277D62A28], v14);
  sub_26A67BF28(v18);
  sub_26A84B688();

  (*(v4 + 8))(v7, v2);
  v19 = sub_26A84B718();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v19);
}

uint64_t sub_26A7A5E74(const void *a1, uint64_t a2)
{
  v4 = sub_26A851618();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v19 = sub_26A851648();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = v15 - v14;
  if (qword_2803A8F90 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_26A7C7B0C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A4F8A68;
  aBlock[3] = &block_descriptor_5;
  _Block_copy(aBlock);
  OUTLINED_FUNCTION_111_0();

  sub_26A851638();
  sub_26A7C7B4C(&qword_2803B60D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60, &qword_26A86E650);
  sub_26A7C7B94(&qword_2803B60E0, &unk_2803B1C60, &qword_26A86E650);
  sub_26A852118();
  MEMORY[0x26D6641A0](0, v16, v10, a1);
  _Block_release(a1);
  (*(v6 + 8))(v10, v4);
  (*(v12 + 8))(v16, v19);
}

uint64_t sub_26A7A613C()
{
  v7 = sub_26A851F18();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26A851EC8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26A851648();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_26A4EC5B0(0, &qword_28157D830, 0x277D85C78);
  sub_26A851638();
  v8 = MEMORY[0x277D84F90];
  sub_26A7C7B4C(&qword_2803B7F78, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7F80, &qword_26A884C88);
  sub_26A7C7B94(&qword_2803B7F88, &qword_2803B7F80, &qword_26A884C88);
  sub_26A852118();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_26A851F48();
  qword_2803B7F50 = result;
  return result;
}

void sub_26A7ACC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_293();
  v18 = v17;
  v19 = a14;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v18))
  {
    OUTLINED_FUNCTION_334();
    if (v14)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88(&qword_2815801E0);
      }

      v30 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v30, qword_281588A30);
      v21 = sub_26A84EAB8();
      if (os_log_type_enabled(v21, v18))
      {
        OUTLINED_FUNCTION_221_0();
        v48 = a14;
        v31 = OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_343(v31);
        v32 = OUTLINED_FUNCTION_188_0(4.8755e-34);
        OUTLINED_FUNCTION_365(v32, v33);
        OUTLINED_FUNCTION_197_0();
        *(a14 + 4) = v21;
        OUTLINED_FUNCTION_165_0();
        *(a14 + 14) = a6;
        OUTLINED_FUNCTION_256();
        v34 = sub_26A852268();
        OUTLINED_FUNCTION_365(v34, v35);
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_333();
        v49 = 0;
        v50 = v36;
        sub_26A852248();

        OUTLINED_FUNCTION_74_2();
        OUTLINED_FUNCTION_348();
        v37 = OUTLINED_FUNCTION_136_0();
        MEMORY[0x26D663B00](v37, 0xE600000000000000);
        MEMORY[0x26D663B00](a12, a13);
        OUTLINED_FUNCTION_270();
        swift_getErrorValue();
        v38 = sub_26A852658();
        MEMORY[0x26D663B00](v38);

        sub_26A7C74C8(0, v50, v51);
        OUTLINED_FUNCTION_5_42();
        *(a14 + 34) = &v49;
        v29 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88(&qword_2815801E0);
      }

      v20 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v20, qword_281588A30);
      v21 = sub_26A84EAB8();
      if (os_log_type_enabled(v21, v18))
      {
        OUTLINED_FUNCTION_221_0();
        v48 = a14;
        v22 = OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_343(v22);
        v23 = OUTLINED_FUNCTION_188_0(4.8755e-34);
        OUTLINED_FUNCTION_365(v23, v24);
        OUTLINED_FUNCTION_197_0();
        *(a14 + 4) = v21;
        OUTLINED_FUNCTION_165_0();
        *(a14 + 14) = a6;
        *(a14 + 22) = 2082;
        v25 = sub_26A852268();
        OUTLINED_FUNCTION_365(v25, v26);
        OUTLINED_FUNCTION_5_42();
        *(a14 + 24) = v21;
        *(a14 + 32) = 2082;
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_26A852248();

        OUTLINED_FUNCTION_74_2();
        OUTLINED_FUNCTION_348();
        v27 = OUTLINED_FUNCTION_136_0();
        MEMORY[0x26D663B00](v27, 0xE600000000000000);
        MEMORY[0x26D663B00](a12, a13);
        OUTLINED_FUNCTION_270();
        swift_getErrorValue();
        v28 = sub_26A852658();
        MEMORY[0x26D663B00](v28);

        sub_26A7C74C8(0, 0xE000000000000000, v51);
        OUTLINED_FUNCTION_5_42();
        *(a14 + 34) = &v49;
        v29 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_14:
        OUTLINED_FUNCTION_304(&dword_26A48D000, a5, v18, v29);
        OUTLINED_FUNCTION_64_3(v39, v40, v41, v42, v43, v44, v45, v46, v47);
        OUTLINED_FUNCTION_103_0();
        v19 = v48;
        OUTLINED_FUNCTION_219_0();

        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

LABEL_16:
}

double sub_26A7B65EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_293();
  v16 = v15;
  sub_26A84B058();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  v21 = a11;
  if (os_log_type_enabled(qword_2815801F0, v16))
  {
    v21 = a9;
    if (v12)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88(&qword_2815801E0);
      }

      v34 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v34, qword_281588A30);
      v35 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_263(v35))
      {
        OUTLINED_FUNCTION_221_0();
        v50 = OUTLINED_FUNCTION_153_0();
        v36 = OUTLINED_FUNCTION_188_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v36, v37);
        OUTLINED_FUNCTION_5_42();
        *(a12 + 4) = v12;
        OUTLINED_FUNCTION_165_0();
        *(a12 + 14) = a6;
        OUTLINED_FUNCTION_256();
        v38 = sub_26A852268();
        OUTLINED_FUNCTION_261(v38, v39);
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_333();
        v48 = 0;
        v49 = v40;
        sub_26A852248();
        OUTLINED_FUNCTION_91_2();
        MEMORY[0x26D663B00](0xD00000000000004ALL);
        v41 = OUTLINED_FUNCTION_346();
        VRXIdiom.idiom.getter(v41, v20);
        OUTLINED_FUNCTION_179_0();
        sub_26A7C7B4C(v42, v43, MEMORY[0x277D62A50]);
        v44 = sub_26A852568();
        MEMORY[0x26D663B00](v44);

        v45 = OUTLINED_FUNCTION_1_30();
        v46(v45);
        OUTLINED_FUNCTION_299(0);
        OUTLINED_FUNCTION_5_42();
        *(a12 + 34) = &v48;
        OUTLINED_FUNCTION_304(&dword_26A48D000, v12, v16, "%{public}s:%{public}lu [%{public}s] %s");
        OUTLINED_FUNCTION_356();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_219_0();

        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88(&qword_2815801E0);
      }

      v22 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v22, qword_281588A30);
      v23 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_263(v23))
      {
        OUTLINED_FUNCTION_221_0();
        v50 = OUTLINED_FUNCTION_153_0();
        v24 = OUTLINED_FUNCTION_188_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v24, v25);
        OUTLINED_FUNCTION_197_0();
        *(a12 + 4) = v12;
        OUTLINED_FUNCTION_165_0();
        *(a12 + 14) = a6;
        *(a12 + 22) = 2082;
        v26 = sub_26A852268();
        OUTLINED_FUNCTION_261(v26, v27);
        OUTLINED_FUNCTION_5_42();
        *(a12 + 24) = v12;
        *(a12 + 32) = 2082;
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_26A852248();
        OUTLINED_FUNCTION_91_2();
        MEMORY[0x26D663B00](0xD00000000000004ALL);
        v28 = OUTLINED_FUNCTION_346();
        VRXIdiom.idiom.getter(v28, v20);
        OUTLINED_FUNCTION_179_0();
        sub_26A7C7B4C(v29, v30, MEMORY[0x277D62A50]);
        v31 = sub_26A852568();
        MEMORY[0x26D663B00](v31);

        v32 = OUTLINED_FUNCTION_1_30();
        v33(v32);
        OUTLINED_FUNCTION_299(0);
        OUTLINED_FUNCTION_5_42();
        *(a12 + 34) = &v48;
        OUTLINED_FUNCTION_304(&dword_26A48D000, a5, v16, "%{public}s:%{public}lu [%{public}s] %{public}s");
        OUTLINED_FUNCTION_356();
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_219_0();

        goto LABEL_14;
      }
    }

    v21 = a11;
  }

LABEL_14:
  sub_26A4D82E8(a10, v21 & 1);

  return result;
}

void sub_26A7BC1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_152_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v11))
  {
    if (v10)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88(&qword_2815801E0);
      }

      v37 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v37, qword_281588A30);
      v38 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v38))
      {
        OUTLINED_FUNCTION_221_0();
        log = v10;
        v71 = OUTLINED_FUNCTION_89_2();
        v72 = v71;
        *v10 = 136446978;
        v39 = OUTLINED_FUNCTION_131_0();
        v41 = sub_26A7C74C8(v39, v40, &v72);

        *(v10 + 4) = v41;
        OUTLINED_FUNCTION_92_1();
        *(v10 + 14) = v13;
        *(v10 + 22) = 2082;
        v42 = OUTLINED_FUNCTION_119_0();
        OUTLINED_FUNCTION_370(v42, v43, v44, v45, v46, v47, v48, v49);
        OUTLINED_FUNCTION_368();
        *(v10 + 24) = v12;
        *(v10 + 32) = 2080;
        v50 = a10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088, &qword_26A85A650);
        v51 = sub_26A8517F8();
        OUTLINED_FUNCTION_370(v51, v52, v53, v54, v55, v56, v57, v58);
        OUTLINED_FUNCTION_368();
        *(v10 + 34) = v12;
        v36 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88(&qword_2815801E0);
      }

      v14 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v14, qword_281588A30);
      v15 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v15))
      {
        OUTLINED_FUNCTION_221_0();
        log = v10;
        v71 = OUTLINED_FUNCTION_89_2();
        v72 = v71;
        *v10 = 136446978;
        v16 = OUTLINED_FUNCTION_131_0();
        v18 = sub_26A7C74C8(v16, v17, &v72);

        *(v10 + 4) = v18;
        OUTLINED_FUNCTION_92_1();
        *(v10 + 14) = v13;
        *(v10 + 22) = 2082;
        v19 = OUTLINED_FUNCTION_119_0();
        OUTLINED_FUNCTION_370(v19, v20, v21, v22, v23, v24, v25, v26);
        OUTLINED_FUNCTION_368();
        *(v10 + 24) = v12;
        *(v10 + 32) = 2082;
        v27 = a10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088, &qword_26A85A650);
        v28 = sub_26A8517F8();
        OUTLINED_FUNCTION_370(v28, v29, v30, v31, v32, v33, v34, v35);
        OUTLINED_FUNCTION_368();
        *(v10 + 34) = v12;
        v36 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_13:
        v59 = v11;
        v60 = log;
        _os_log_impl(&dword_26A48D000, log, v59, v36, v10, 0x2Au);
        OUTLINED_FUNCTION_325(v61, v62, MEMORY[0x277D84F70] + 8, v63, v64, v65, v66, v67, log, v71);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_177_0();
        OUTLINED_FUNCTION_95_0();

        OUTLINED_FUNCTION_306();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_306();
}

uint64_t sub_26A7C076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12)
{
  OUTLINED_FUNCTION_152_0();
  v16 = a12;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v13))
  {

    return sub_26A6A7DE0(v16);
  }

  OUTLINED_FUNCTION_334();
  if (v12)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88(&qword_2815801E0);
    }

    v48 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v48, qword_281588A30);
    v49 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_287(v49))
    {
      OUTLINED_FUNCTION_221_0();
      v50 = OUTLINED_FUNCTION_162_0();
      OUTLINED_FUNCTION_343(v50);
      OUTLINED_FUNCTION_345(4.8755e-34);
      v51 = sub_26A852268();
      v52 = v12;
      OUTLINED_FUNCTION_379(v51, v53);
      OUTLINED_FUNCTION_227_0();
      *(a12 + 4) = a5;
      OUTLINED_FUNCTION_191_0();
      *(a12 + 14) = a6;
      OUTLINED_FUNCTION_308();
      OUTLINED_FUNCTION_13_9();
      v54 = sub_26A852268();
      OUTLINED_FUNCTION_379(v54, v55);
      OUTLINED_FUNCTION_227_0();
      *(a12 + 24) = a5;
      OUTLINED_FUNCTION_161_0();
      __dst[1] = v56;
      sub_26A852248();
      v87 = 0;
      v88 = __dst[1];
      OUTLINED_FUNCTION_91_2();
      v57 = OUTLINED_FUNCTION_326();
      MEMORY[0x26D663B00](v57);
      sub_26A54E058(v83, v58, v59, v60);
      OUTLINED_FUNCTION_298();
      v61 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
      OUTLINED_FUNCTION_354(v62, v63, v64, v65, v66, v67, v68, v69, v79, v82, v83, a12, 0, __dst[1], __dst[2]);
      VRXIdiom.description.getter(*&a11[v61]);
      OUTLINED_FUNCTION_371();

      OUTLINED_FUNCTION_284();
      memcpy(__dst, __srca, sizeof(__dst));
      PluginView.description.getter();
      OUTLINED_FUNCTION_371();

      sub_26A7C74C8(v87, v88, v89);
      OUTLINED_FUNCTION_227_0();
      *(a12 + 34) = a5;
      OUTLINED_FUNCTION_297(&dword_26A48D000, v52, v13, "%{public}s:%{public}lu [%{public}s] %s");
      OUTLINED_FUNCTION_129_0(v70, v71, v72, v73, v74, v75, v76, v77, v81);
      OUTLINED_FUNCTION_95_0();
      v16 = __srca;
      OUTLINED_FUNCTION_219_0();

      return sub_26A6A7DE0(v16);
    }

LABEL_14:

    return sub_26A6A7DE0(v16);
  }

  if (qword_2815801E0 != -1)
  {
    OUTLINED_FUNCTION_3_88(&qword_2815801E0);
  }

  v17 = sub_26A84EAC8();
  OUTLINED_FUNCTION_20_29(v17, qword_281588A30);
  v18 = sub_26A84EAB8();
  if (!OUTLINED_FUNCTION_287(v18))
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_221_0();
  v19 = OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_343(v19);
  OUTLINED_FUNCTION_345(4.8755e-34);
  v20 = sub_26A852268();
  v21 = v12;
  OUTLINED_FUNCTION_379(v20, v22);
  OUTLINED_FUNCTION_227_0();
  *(a12 + 4) = a5;
  OUTLINED_FUNCTION_191_0();
  *(a12 + 14) = a6;
  *(a12 + 22) = 2082;
  OUTLINED_FUNCTION_13_9();
  v23 = sub_26A852268();
  OUTLINED_FUNCTION_379(v23, v24);
  OUTLINED_FUNCTION_227_0();
  *(a12 + 24) = a5;
  *(a12 + 32) = 2082;
  sub_26A852248();
  v87 = 0;
  v88 = 0xE000000000000000;
  OUTLINED_FUNCTION_91_2();
  v25 = OUTLINED_FUNCTION_326();
  MEMORY[0x26D663B00](v25);
  sub_26A54E058(v83, v26, v27, v28);
  OUTLINED_FUNCTION_298();
  v29 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  OUTLINED_FUNCTION_354(v30, v31, v32, v33, v34, v35, v36, v37, v79, v82, v83, a12, 0, 0xE000000000000000, __dst[2]);
  VRXIdiom.description.getter(*&a11[v29]);
  OUTLINED_FUNCTION_371();

  OUTLINED_FUNCTION_284();
  memcpy(__dst, __src, sizeof(__dst));
  PluginView.description.getter();
  OUTLINED_FUNCTION_371();

  sub_26A7C74C8(v87, v88, v89);
  OUTLINED_FUNCTION_227_0();
  *(a12 + 34) = a5;
  OUTLINED_FUNCTION_184_0(&dword_26A48D000, v38, v39, "%{public}s:%{public}lu [%{public}s] %{public}s");
  OUTLINED_FUNCTION_129_0(v40, v41, v42, v43, v44, v45, v46, v47, v80);
  OUTLINED_FUNCTION_95_0();
  v16 = __src;
  OUTLINED_FUNCTION_219_0();

  return sub_26A6A7DE0(v16);
}

void sub_26A7C0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_99_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v11))
  {
    goto LABEL_14;
  }

  if (v12)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88(&qword_2815801E0);
    }

    v34 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v34, qword_281588A30);
    v35 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_260(v35))
    {
      OUTLINED_FUNCTION_221_0();
      v61 = OUTLINED_FUNCTION_89_2();
      *v12 = 136446978;
      v36 = OUTLINED_FUNCTION_178_0();
      v44 = OUTLINED_FUNCTION_377(v36, v37, v38, v39, v40, v41, v42, v43);

      *(v12 + 4) = v44;
      OUTLINED_FUNCTION_92_1();
      *(v12 + 14) = v13;
      *(v12 + 22) = 2082;
      v45 = OUTLINED_FUNCTION_128_0();
      v53 = OUTLINED_FUNCTION_377(v45, v46, v47, v48, v49, v50, v51, v52);

      *(v12 + 24) = v53;
      *(v12 + 32) = 2080;
      *(v12 + 34) = sub_26A7C74C8(a10, a11, &v61);
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88(&qword_2815801E0);
    }

    v14 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v14, qword_281588A30);
    v15 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_260(v15))
    {
      OUTLINED_FUNCTION_221_0();
      v61 = OUTLINED_FUNCTION_89_2();
      *v12 = 136446978;
      v16 = OUTLINED_FUNCTION_178_0();
      v24 = OUTLINED_FUNCTION_377(v16, v17, v18, v19, v20, v21, v22, v23);

      *(v12 + 4) = v24;
      OUTLINED_FUNCTION_92_1();
      *(v12 + 14) = v13;
      *(v12 + 22) = 2082;
      v25 = OUTLINED_FUNCTION_128_0();
      v33 = OUTLINED_FUNCTION_377(v25, v26, v27, v28, v29, v30, v31, v32);

      *(v12 + 24) = v33;
      *(v12 + 32) = 2082;
      *(v12 + 34) = sub_26A7C74C8(a10, a11, &v61);
LABEL_13:
      OUTLINED_FUNCTION_217_0();
      _os_log_impl(v54, v55, v56, v57, v12, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_95_0();

LABEL_14:
      OUTLINED_FUNCTION_306();
      return;
    }
  }

  OUTLINED_FUNCTION_306();
}

void sub_26A7C30BC(uint64_t a1, double a2, double a3)
{
  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_99_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v3))
  {
    goto LABEL_14;
  }

  if (v4)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88(&qword_2815801E0);
    }

    v34 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v34, qword_281588A30);
    v35 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v35))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_153_0();
      OUTLINED_FUNCTION_126_0();
      *v6 = 136446978;
      v36 = OUTLINED_FUNCTION_127_0();
      OUTLINED_FUNCTION_229_0(v36, v37, v38, v39, v40, v41, v42, v43, v75, v81, v87, v91);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_256();
      v44 = OUTLINED_FUNCTION_88_1();
      OUTLINED_FUNCTION_229_0(v44, v45, v46, v47, v48, v49, v50, v51, v79, v85, v90, v93);
      OUTLINED_FUNCTION_98_0();

      *(v6 + 24) = v5;
      *(v6 + 32) = 2080;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_112_0();
      MEMORY[0x26D663B00]();
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_352();
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_51_7();
      v52 = OUTLINED_FUNCTION_164_0();
      v53 = MEMORY[0x26D663B00](v52);
      OUTLINED_FUNCTION_107_0(v53, v54, v55, v56, v57, v58, v59, v60, v80, v86);
      OUTLINED_FUNCTION_98_0();

      *(v6 + 34) = v5;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88(&qword_2815801E0);
    }

    v7 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v7, qword_281588A30);
    v8 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v8))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_153_0();
      OUTLINED_FUNCTION_126_0();
      *v6 = 136446978;
      v9 = OUTLINED_FUNCTION_127_0();
      OUTLINED_FUNCTION_229_0(v9, v10, v11, v12, v13, v14, v15, v16, v75, v81, v87, v91);
      OUTLINED_FUNCTION_232();
      OUTLINED_FUNCTION_48_6();
      *(v6 + 22) = 2082;
      v17 = OUTLINED_FUNCTION_88_1();
      OUTLINED_FUNCTION_229_0(v17, v18, v19, v20, v21, v22, v23, v24, v76, v82, v88, v92);
      OUTLINED_FUNCTION_98_0();

      *(v6 + 24) = v5;
      *(v6 + 32) = 2082;
      OUTLINED_FUNCTION_42_11();
      sub_26A852248();
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_112_0();
      MEMORY[0x26D663B00]();
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_352();
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_51_7();
      v25 = OUTLINED_FUNCTION_164_0();
      v26 = MEMORY[0x26D663B00](v25);
      OUTLINED_FUNCTION_107_0(v26, v27, v28, v29, v30, v31, v32, v33, v77, v83);
      OUTLINED_FUNCTION_98_0();

      *(v6 + 34) = v5;
LABEL_13:
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_304(v61, v62, v63, v64);
      OUTLINED_FUNCTION_61_5(v65, v66, v67, v68, v69, v70, v71, v72, v78, v84);
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_219_0();

LABEL_14:
      OUTLINED_FUNCTION_166_0();
      return;
    }
  }

  OUTLINED_FUNCTION_166_0();
}

void sub_26A7C4804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_149_0();
  v15 = v14;
  OUTLINED_FUNCTION_152_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v12))
  {
    if (v11)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88(&qword_2815801E0);
      }

      v51 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v51, qword_281588A30);
      v52 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v52))
      {
        OUTLINED_FUNCTION_221_0();
        v53 = OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_146_0(v53);
        v54 = OUTLINED_FUNCTION_194_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v54, v55);
        v56 = v11;
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_80_3();
        OUTLINED_FUNCTION_308();
        OUTLINED_FUNCTION_14_29();
        v57 = sub_26A852268();
        OUTLINED_FUNCTION_261(v57, v58);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 24) = v11;
        OUTLINED_FUNCTION_161_0();
        sub_26A852248();

        OUTLINED_FUNCTION_77_1();
        v109 = v60;
        v110 = v59;
        v108 = a10;
        sub_26A852568();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_270();
        OUTLINED_FUNCTION_323(v67, v61, &v107, &v104, v62, v63, v64, v65, v66, v87, v92, v97);
        v68 = v104;
        sub_26A852658();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_282(v69, v70, v71, v72, v73, v74, v75, v76, v90, v95, v99, a10, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 34) = v68;
        OUTLINED_FUNCTION_297(&dword_26A48D000, v56, v12, "%{public}s:%{public}lu [%{public}s] %s");
        OUTLINED_FUNCTION_61_5(v77, v78, v79, v80, v81, v82, v83, v84, v91, v96);
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_180_0();

        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88(&qword_2815801E0);
      }

      v16 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v16, qword_281588A30);
      v17 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v17))
      {
        OUTLINED_FUNCTION_221_0();
        v18 = OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_146_0(v18);
        v19 = OUTLINED_FUNCTION_194_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v19, v20);
        OUTLINED_FUNCTION_197_0();
        OUTLINED_FUNCTION_80_3();
        *(a11 + 22) = 2082;
        OUTLINED_FUNCTION_14_29();
        v21 = sub_26A852268();
        OUTLINED_FUNCTION_261(v21, v22);
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_309();
        sub_26A852248();

        OUTLINED_FUNCTION_77_1();
        v109 = v24;
        v110 = v23;
        v108 = a10;
        sub_26A852568();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_270();
        OUTLINED_FUNCTION_323(v31, v25, &v103, &v100, v26, v27, v28, v29, v30, v87, v92, v97);
        v32 = v100;
        sub_26A852658();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_282(v33, v34, v35, v36, v37, v38, v39, v40, v88, v93, v98, a10, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 34) = v32;
        OUTLINED_FUNCTION_184_0(&dword_26A48D000, v41, v42, "%{public}s:%{public}lu [%{public}s] %{public}s");
        OUTLINED_FUNCTION_61_5(v43, v44, v45, v46, v47, v48, v49, v50, v89, v94);
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_180_0();

LABEL_13:
        OUTLINED_FUNCTION_305();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_305();
}

void sub_26A7C4B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_149_0();
  v15 = v14;
  OUTLINED_FUNCTION_152_0();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (os_log_type_enabled(qword_2815801F0, v12))
  {
    if (v11)
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88(&qword_2815801E0);
      }

      v49 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v49, qword_281588A30);
      v50 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v50))
      {
        OUTLINED_FUNCTION_221_0();
        v51 = OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_146_0(v51);
        v52 = OUTLINED_FUNCTION_194_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v52, v53);
        v54 = v11;
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_80_3();
        OUTLINED_FUNCTION_308();
        OUTLINED_FUNCTION_14_29();
        v55 = sub_26A852268();
        OUTLINED_FUNCTION_261(v55, v56);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 24) = v11;
        OUTLINED_FUNCTION_161_0();
        v106 = 0;
        v107 = v57;
        sub_26A852248();

        OUTLINED_FUNCTION_108_0();
        OUTLINED_FUNCTION_143_0();
        sub_26A852568();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_270();
        OUTLINED_FUNCTION_323(v64, v58, &v104, &v101, v59, v60, v61, v62, v63, v84, v89, v94);
        v65 = v101;
        sub_26A852658();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_282(v66, v67, v68, v69, v70, v71, v72, v73, v87, v92, v96, a10, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 34) = v65;
        OUTLINED_FUNCTION_297(&dword_26A48D000, v54, v12, "%{public}s:%{public}lu [%{public}s] %s");
        OUTLINED_FUNCTION_61_5(v74, v75, v76, v77, v78, v79, v80, v81, v88, v93);
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_180_0();

        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2815801E0 != -1)
      {
        OUTLINED_FUNCTION_3_88(&qword_2815801E0);
      }

      v16 = sub_26A84EAC8();
      OUTLINED_FUNCTION_20_29(v16, qword_281588A30);
      v17 = sub_26A84EAB8();
      if (OUTLINED_FUNCTION_287(v17))
      {
        OUTLINED_FUNCTION_221_0();
        v18 = OUTLINED_FUNCTION_150_0();
        OUTLINED_FUNCTION_146_0(v18);
        v19 = OUTLINED_FUNCTION_194_0(4.8755e-34);
        OUTLINED_FUNCTION_261(v19, v20);
        OUTLINED_FUNCTION_197_0();
        OUTLINED_FUNCTION_80_3();
        *(a11 + 22) = 2082;
        OUTLINED_FUNCTION_14_29();
        v21 = sub_26A852268();
        OUTLINED_FUNCTION_261(v21, v22);
        OUTLINED_FUNCTION_5_42();
        OUTLINED_FUNCTION_309();
        sub_26A852248();

        OUTLINED_FUNCTION_108_0();
        OUTLINED_FUNCTION_143_0();
        sub_26A852568();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_270();
        OUTLINED_FUNCTION_323(v29, v23, &v100, &v97, v24, v25, v26, v27, v28, v84, v89, v94);
        v30 = v97;
        sub_26A852658();
        OUTLINED_FUNCTION_301();

        OUTLINED_FUNCTION_282(v31, v32, v33, v34, v35, v36, v37, v38, v85, v90, v95, a10, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
        OUTLINED_FUNCTION_5_42();
        *(a11 + 34) = v30;
        OUTLINED_FUNCTION_184_0(&dword_26A48D000, v39, v40, "%{public}s:%{public}lu [%{public}s] %{public}s");
        OUTLINED_FUNCTION_61_5(v41, v42, v43, v44, v45, v46, v47, v48, v86, v91);
        OUTLINED_FUNCTION_103_0();
        OUTLINED_FUNCTION_180_0();

LABEL_13:
        OUTLINED_FUNCTION_305();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_305();
}

void sub_26A7C5640(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_1_99();
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  if (!os_log_type_enabled(qword_2815801F0, v2))
  {
    goto LABEL_14;
  }

  if (v3)
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88(&qword_2815801E0);
    }

    v39 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v39, qword_281588A30);
    v40 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v40))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_126_0();
      v41 = OUTLINED_FUNCTION_58_6(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v41, v42, v43, v44, v45, v46, v47, v48, v75, v82, v89, v94);
      OUTLINED_FUNCTION_111_0();

      v49 = OUTLINED_FUNCTION_10_51();
      OUTLINED_FUNCTION_229_0(v49, v50, v51, v52, v53, v54, v55, v56, v79, v86, v92, v96);
      OUTLINED_FUNCTION_98_0();

      OUTLINED_FUNCTION_8_65();
      sub_26A852248();
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_51_7();
      MEMORY[0x26D663B00](0xD00000000000005BLL);
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_216_0();
      OUTLINED_FUNCTION_107_0(v57, v58, v59, v60, v61, v62, v63, v64, v80, v87);
      OUTLINED_FUNCTION_98_0();

      *(v5 + 34) = v4;
      v38 = "%{public}s:%{public}lu [%{public}s] %s";
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_2815801E0 != -1)
    {
      OUTLINED_FUNCTION_3_88(&qword_2815801E0);
    }

    v6 = sub_26A84EAC8();
    OUTLINED_FUNCTION_20_29(v6, qword_281588A30);
    v7 = sub_26A84EAB8();
    if (OUTLINED_FUNCTION_231(v7))
    {
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_126_0();
      v8 = OUTLINED_FUNCTION_58_6(4.8755e-34);
      OUTLINED_FUNCTION_229_0(v8, v9, v10, v11, v12, v13, v14, v15, v75, v82, v89, v94);
      OUTLINED_FUNCTION_111_0();

      v16 = OUTLINED_FUNCTION_11_52();
      OUTLINED_FUNCTION_229_0(v16, v17, v18, v19, v20, v21, v22, v23, v76, v83, v90, v95);
      OUTLINED_FUNCTION_98_0();

      OUTLINED_FUNCTION_14_44();
      sub_26A852248();
      OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_51_7();
      MEMORY[0x26D663B00](0xD00000000000005BLL);
      sub_26A851CC8();
      OUTLINED_FUNCTION_286();

      OUTLINED_FUNCTION_216_0();
      OUTLINED_FUNCTION_107_0(v24, v25, v26, v27, v28, v29, v30, v31, v77, v84);
      OUTLINED_FUNCTION_98_0();

      *(v5 + 34) = v4;
      v38 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_13:
      OUTLINED_FUNCTION_70_1(&dword_26A48D000, v32, v33, v38, v34, v35, v36, v37, v78, v85, v91);
      OUTLINED_FUNCTION_61_5(v65, v66, v67, v68, v69, v70, v71, v72, v81, v88);
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_94_1();

LABEL_14:
      OUTLINED_FUNCTION_166_0();
      return;
    }
  }

  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_26A7C73D0()
{
  sub_26A4EC5B0(0, &qword_281580030, 0x277D86200);
  OUTLINED_FUNCTION_214_0();
  result = sub_26A852058();
  qword_2815801F0 = result;
  return result;
}

uint64_t sub_26A7C743C()
{
  v0 = sub_26A84EAC8();
  __swift_allocate_value_buffer(v0, qword_281588A30);
  __swift_project_value_buffer(v0, qword_281588A30);
  if (qword_2815801E8 != -1)
  {
    swift_once();
  }

  v1 = qword_2815801F0;
  return sub_26A84EAD8();
}

unint64_t sub_26A7C74C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26A7C758C(v11, 0, 0, 1, a1, a2);
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
    sub_26A5136A0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26A7C758C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26A7C768C(a5, a6);
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
    result = sub_26A8522B8();
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

uint64_t sub_26A7C768C(uint64_t a1, unint64_t a2)
{
  v3 = sub_26A7C76D8(a1, a2);
  sub_26A7C77F0(&unk_287B13040);
  return v3;
}

uint64_t sub_26A7C76D8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
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

  for (; v5; v5 = sub_26A8518B8())
  {
    result = sub_26A7C78D4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26A852218();
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

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26A8522B8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
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

void sub_26A7C77F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v5 > *(v3 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    v3 = sub_26A7C7944(isUniquelyReferenced_nonNull_native, v8, 1, v3);
  }

  if (!*(a1 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v9 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v10 = *(v3 + 2);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 2) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_26A7C78D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7F58, &qword_26A884C68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26A7C7944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7F58, &qword_26A884C68);
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

uint64_t sub_26A7C7A38(void *a1)
{
  v1 = [a1 mangledTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A8517B8();

  return v3;
}

uint64_t sub_26A7C7A9C(void *a1)
{
  v2 = [a1 responseModel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A7C7B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A7C7B94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26A7C7BE8()
{
  result = qword_2803AE0E8;
  if (!qword_2803AE0E8)
  {
    sub_26A4EC5B0(255, &qword_2803B10F0, 0x277CD3E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE0E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_88(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_66()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_7_70()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_10_51()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2050;
  *(v2 + 14) = v0;
  *(v2 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_11_52()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2050;
  *(v2 + 14) = v0;
  *(v2 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_18_30()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_19_28()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_20_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 + 4) = v13;
  *(v14 + 12) = 2050;
  *(v14 + 14) = v15;
  *(v14 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_21_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 + 4) = v13;
  *(v14 + 12) = 2050;
  *(v14 + 14) = v15;
  *(v14 + 22) = 2082;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_22_30()
{
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;
}

void OUTLINED_FUNCTION_23_24()
{
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;
}

uint64_t OUTLINED_FUNCTION_31_19()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v2;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_32_12()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v2;
  *(v0 + 22) = 2082;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_48_6()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v0;
}

uint64_t OUTLINED_FUNCTION_52_7(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, unint64_t a14, uint64_t a15)
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_53_7(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15)
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_55_4(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_56_4()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
}

void OUTLINED_FUNCTION_57_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_58_6(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_60_3()
{

  JUMPOUT(0x26D663B00);
}

uint64_t OUTLINED_FUNCTION_61_5(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_62_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63_3(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_64_3(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_65_5(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_66_4(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_67_3(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_68_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v9, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_69_3(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_70_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v11, a4, v12, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_71_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_72_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_73_1()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
}

void OUTLINED_FUNCTION_80_3()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2050;
  *(v2 + 14) = v1;
}

uint64_t OUTLINED_FUNCTION_81_3(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_82_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v13, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_84_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_86_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v13, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_89_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_94_1()
{

  JUMPOUT(0x26D665630);
}

void OUTLINED_FUNCTION_95_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_103_0()
{

  JUMPOUT(0x26D665630);
}

unint64_t OUTLINED_FUNCTION_104_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, ...)
{
  va_start(va, a14);

  return sub_26A7C74C8(a13, a14, va);
}

uint64_t OUTLINED_FUNCTION_105_0(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_106_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_107_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, ...)
{
  va_start(va, a10);

  return sub_26A7C74C8(a9, a10, va);
}

uint64_t OUTLINED_FUNCTION_113_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_116_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v11, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_117_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_127_0()
{

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_128_0()
{

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_129_0(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_131_0()
{

  return sub_26A852268();
}

unint64_t OUTLINED_FUNCTION_135_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  return sub_26A7C74C8(a20, a21, (v21 - 88));
}

void OUTLINED_FUNCTION_139_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
}

void OUTLINED_FUNCTION_141_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
}

void OUTLINED_FUNCTION_144_0()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_147_0()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2050;
  *(v2 + 14) = v1;
}

void OUTLINED_FUNCTION_148_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_151_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_26A852568();
}

unint64_t OUTLINED_FUNCTION_157_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, ...)
{
  va_start(va, a14);

  return sub_26A7C74C8(a13, a14, va);
}

void OUTLINED_FUNCTION_159_0()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_160_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_162_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_177_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_178_0()
{

  return sub_26A852268();
}

void OUTLINED_FUNCTION_180_0()
{

  JUMPOUT(0x26D665630);
}

void OUTLINED_FUNCTION_184_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x2Au);
}

void OUTLINED_FUNCTION_185_0()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_186_0()
{

  JUMPOUT(0x26D663B00);
}

uint64_t OUTLINED_FUNCTION_187_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_188_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_189_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_190_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_192_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_193_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_194_0(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

double OUTLINED_FUNCTION_197_0()
{

  return result;
}

void OUTLINED_FUNCTION_216_0()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_219_0()
{

  JUMPOUT(0x26D665630);
}

uint64_t OUTLINED_FUNCTION_220_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_221_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_223_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_26A7C74C8(a1, a2, va);
}

unint64_t OUTLINED_FUNCTION_224_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_26A7C74C8(a1, a2, va);
}

BOOL OUTLINED_FUNCTION_225_0(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

double OUTLINED_FUNCTION_226_0()
{

  return result;
}

double OUTLINED_FUNCTION_227_0()
{

  return result;
}

unint64_t OUTLINED_FUNCTION_228_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_26A7C74C8(a1, a2, va);
}

unint64_t OUTLINED_FUNCTION_229_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_26A7C74C8(a1, a2, va);
}

BOOL OUTLINED_FUNCTION_231(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

double OUTLINED_FUNCTION_232()
{

  return result;
}

void OUTLINED_FUNCTION_242()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_243(uint64_t a1, unint64_t a2)
{

  return sub_26A7C74C8(a1, a2, (v2 - 88));
}

void OUTLINED_FUNCTION_244()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_245()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_246()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_247()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_248()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_249()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_250()
{

  JUMPOUT(0x26D663B00);
}

BOOL OUTLINED_FUNCTION_251(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

unint64_t OUTLINED_FUNCTION_252(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_26A7C74C8(a1, a2, va);
}

BOOL OUTLINED_FUNCTION_253(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

void OUTLINED_FUNCTION_254(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

BOOL OUTLINED_FUNCTION_255(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

BOOL OUTLINED_FUNCTION_258(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

void OUTLINED_FUNCTION_259()
{

  JUMPOUT(0x26D663B00);
}

BOOL OUTLINED_FUNCTION_260(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

unint64_t OUTLINED_FUNCTION_261(uint64_t a1, unint64_t a2)
{

  return sub_26A7C74C8(a1, a2, (v2 - 88));
}

void OUTLINED_FUNCTION_262()
{

  JUMPOUT(0x26D663B00);
}

BOOL OUTLINED_FUNCTION_263(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

unint64_t OUTLINED_FUNCTION_264(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000039, a2, a3);
}

void OUTLINED_FUNCTION_266()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_270()
{

  JUMPOUT(0x26D663B00);
}

uint64_t OUTLINED_FUNCTION_271(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_26A852268();
}

void OUTLINED_FUNCTION_272(void *a1, int a2, os_log_type_t a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_t log)
{

  _os_log_impl(a1, log, a3, a4, v12, 0x2Au);
}

void OUTLINED_FUNCTION_274()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_275()
{

  JUMPOUT(0x26D663B00);
}

double OUTLINED_FUNCTION_276()
{

  return result;
}

void OUTLINED_FUNCTION_279()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_280()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_281(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000034, a2, a3);
}

unint64_t OUTLINED_FUNCTION_282(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{

  return sub_26A7C74C8(a22, a23, (v23 - 88));
}

void OUTLINED_FUNCTION_283()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_284()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_286()
{

  JUMPOUT(0x26D663B00);
}

BOOL OUTLINED_FUNCTION_287(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_290()
{

  return sub_26A852658();
}

uint64_t OUTLINED_FUNCTION_291()
{

  return sub_26A852658();
}

unint64_t OUTLINED_FUNCTION_292(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000031, a2, a3);
}

void OUTLINED_FUNCTION_295(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

void OUTLINED_FUNCTION_297(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

void OUTLINED_FUNCTION_298()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_299(uint64_t a1)
{

  return sub_26A7C74C8(a1, v1, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_26A8517F8();
}

void OUTLINED_FUNCTION_301()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_302(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD00000000000002ALL, a2, a3);
}

unint64_t OUTLINED_FUNCTION_303(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000020, a2, a3);
}

void OUTLINED_FUNCTION_304(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

void OUTLINED_FUNCTION_310()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_311(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD00000000000002CLL, a2, a3);
}

unint64_t OUTLINED_FUNCTION_312(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000027, a2, a3);
}

unint64_t OUTLINED_FUNCTION_313(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000038, a2, a3);
}

double OUTLINED_FUNCTION_314()
{

  return result;
}

void OUTLINED_FUNCTION_315()
{

  JUMPOUT(0x26D663B00);
}

BOOL OUTLINED_FUNCTION_316(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

unint64_t OUTLINED_FUNCTION_317(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000037, a2, a3);
}

unint64_t OUTLINED_FUNCTION_318(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000028, a2, a3);
}

void OUTLINED_FUNCTION_319()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_320(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000030, a2, a3);
}

void OUTLINED_FUNCTION_321()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_322()
{
}

uint64_t OUTLINED_FUNCTION_323(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_324()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_327()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
}

void OUTLINED_FUNCTION_329()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
}

void OUTLINED_FUNCTION_340()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v2;
}

void OUTLINED_FUNCTION_344()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2050;
  *(v2 + 14) = v1;
}

uint64_t OUTLINED_FUNCTION_346()
{
  v2 = *(v0 - 156) & 1;
  v3 = *(v0 - 128);

  return sub_26A58224C(v3, v2);
}

uint64_t OUTLINED_FUNCTION_347(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_348()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_349(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_350(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_351(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_352()
{

  JUMPOUT(0x26D663B00);
}

uint64_t OUTLINED_FUNCTION_353(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

uint64_t OUTLINED_FUNCTION_354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_355(void x0_0, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_356()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_357(float a1)
{
  *v1 = a1;

  return sub_26A852268();
}

void OUTLINED_FUNCTION_358()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_359(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000051, a2, a3);
}

id OUTLINED_FUNCTION_360(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return v13;
}

double OUTLINED_FUNCTION_361()
{

  return result;
}

unint64_t OUTLINED_FUNCTION_362(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD00000000000003BLL, a2, a3);
}

uint64_t OUTLINED_FUNCTION_363(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_26A8523D8();
}

uint64_t OUTLINED_FUNCTION_364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t *a13)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a13, a11);
}

unint64_t OUTLINED_FUNCTION_365(uint64_t a1, unint64_t a2)
{

  return sub_26A7C74C8(a1, a2, (v2 - 96));
}

void OUTLINED_FUNCTION_366()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_367()
{

  JUMPOUT(0x26D663B00);
}

double OUTLINED_FUNCTION_368()
{

  return result;
}

void OUTLINED_FUNCTION_369()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_370(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_26A7C74C8(a1, a2, va);
}

void OUTLINED_FUNCTION_371()
{

  JUMPOUT(0x26D663B00);
}

void OUTLINED_FUNCTION_372()
{

  JUMPOUT(0x26D663B00);
}

unint64_t OUTLINED_FUNCTION_373(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD00000000000001FLL, a2, a3);
}

unint64_t OUTLINED_FUNCTION_374(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD00000000000002BLL, a2, a3);
}

uint64_t OUTLINED_FUNCTION_375@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, char a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  LOBYTE(a10) = a9;

  return sub_26A7AED10(a1, a2, a3, a4, a5, a6, a7, a8, a10, v30, v29, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

unint64_t OUTLINED_FUNCTION_376(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000036, a2, a3);
}

unint64_t OUTLINED_FUNCTION_377(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_26A7C74C8(a1, a2, va);
}

unint64_t OUTLINED_FUNCTION_378(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_26A7C74C8(0xD000000000000022, a2, a3);
}

unint64_t OUTLINED_FUNCTION_379(uint64_t a1, unint64_t a2)
{

  return sub_26A7C74C8(a1, a2, (v2 - 96));
}

uint64_t sub_26A7C9FB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_26A67F998(a1, a2);
  v29 = sub_26A565D4C(0) & 1;
  v30 = v15;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a1;
  v22[3] = a2;
  v23 = a3;
  v24 = v29;
  v25 = v15;
  OUTLINED_FUNCTION_59_2();
  v20 = type metadata accessor for ExpandableContentModifier(v16, v17, v18, v19);
  MEMORY[0x26D662ED0](v22, a6, v20, a8);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7CA0EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A7CA0CC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A7CA15C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_26A8509A8();
}

uint64_t sub_26A7CA1EC(void (*a1)(void), uint64_t a2)
{
  a1();
  sub_26A84F998();
  return v3;
}

uint64_t sub_26A7CA234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A7CA32C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  sub_26A851078();
  return v1;
}

uint64_t sub_26A7CA380()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = sub_26A7CA32C();
  }

  sub_26A67F998(v1, v2);
  return v3;
}

uint64_t sub_26A7CA3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v44 = a3;
  v5 = type metadata accessor for ExpandableContentStyle(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_10_52();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  v36 = sub_26A84FE88();
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_2_31();
  WitnessTable = swift_getWitnessTable();
  v8 = *(a2 + 24);
  v48 = v36;
  v49 = v7;
  v50 = WitnessTable;
  v51 = v8;
  v9 = sub_26A84F358();
  OUTLINED_FUNCTION_15();
  v43 = v10;
  MEMORY[0x28223BE20](v11);
  v32 = &v31 - v12;
  OUTLINED_FUNCTION_8_66();
  v13 = swift_getWitnessTable();
  v40 = v13;
  OUTLINED_FUNCTION_6_67();
  v39 = sub_26A7CD5E0();
  v48 = v9;
  v49 = v5;
  v50 = v13;
  v51 = v39;
  v41 = MEMORY[0x277CDEB20];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_15();
  v42 = v14;
  MEMORY[0x28223BE20](v15);
  v35 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v37 = &v31 - v18;
  sub_26A7CA380();
  v45 = v7;
  v46 = v8;
  v47 = v38;

  v19 = v32;
  sub_26A84F348();
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v20 = v3 + v5[5];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v5[6];
  *(v3 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4FD8, &qword_26A879520);
  swift_storeEnumTagMultiPayload();
  v22 = v3 + v5[7];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v3 + v5[8];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v35;
  v26 = v39;
  v25 = v40;
  sub_26A850B58();
  sub_26A7CD0B0();
  (*(v43 + 8))(v19, v9);
  v48 = v9;
  v49 = v5;
  v50 = v25;
  v51 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = OpaqueTypeMetadata2;
  sub_26A80757C();
  v29 = *(v42 + 8);
  v29(v24, v28);
  sub_26A80757C();
  return (v29)(v27, v28);
}

uint64_t sub_26A7CA840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ExpandableContentModifier(255, a2, a3, a4);
  swift_getWitnessTable();
  v4 = sub_26A84FE88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  swift_getWitnessTable();
  sub_26A80757C();
  sub_26A80757C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A7CA97C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for ExpandableContentStyle(0);
  OUTLINED_FUNCTION_20_32();
  if (!v6)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v7, &dword_26A48D000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v9, v10, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v0, 0);
    (*(v4 + 8))(v1, v2);
    LOBYTE(v0) = v12;
  }

  return v0 & 1;
}

uint64_t sub_26A7CAA9C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for ExpandableContentStyle(0);
  OUTLINED_FUNCTION_20_32();
  if (!v6)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v7, &dword_26A48D000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v9, v10, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v0, 0);
    (*(v4 + 8))(v1, v2);
    LOBYTE(v0) = v12;
  }

  return v0 & 1;
}

uint64_t type metadata accessor for ExpandableContentStyle(uint64_t a1)
{
  result = qword_2803B8058;
  if (!qword_2803B8058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_26A7CAC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8068, &qword_26A884FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __src - v6;
  *v7 = sub_26A84FBF8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8070, &qword_26A884FF8);
  sub_26A7CAD8C(v2, a1, &v7[*(v8 + 44)]);
  sub_26A851448();
  sub_26A84F628();
  sub_26A4BBC44();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8078, &qword_26A885000);
  return memcpy((a2 + *(v9 + 36)), __src, 0x70uLL);
}

uint64_t sub_26A7CAD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a3;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8080, &qword_26A885008);
  MEMORY[0x28223BE20](v118);
  v119 = &v99 - v5;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8088, &unk_26A885010);
  MEMORY[0x28223BE20](v117);
  v104 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v99 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E50, &qword_26A87C8D0);
  MEMORY[0x28223BE20](v113);
  v102 = &v99 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8090, &unk_26A885020);
  MEMORY[0x28223BE20](v107);
  v112 = &v99 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1840, &qword_26A86D478);
  MEMORY[0x28223BE20](v111);
  v103 = &v99 - v11;
  v12 = sub_26A84F5F8();
  MEMORY[0x28223BE20](v12);
  v106 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8098, &qword_26A885030);
  MEMORY[0x28223BE20](v14 - 8);
  v109 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v110 = &v99 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80A0, &qword_26A885038);
  MEMORY[0x28223BE20](v18);
  v20 = &v99 - v19;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80A8, &qword_26A885040);
  MEMORY[0x28223BE20](v108);
  v120 = &v99 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80B0, &qword_26A885048);
  MEMORY[0x28223BE20](v22 - 8);
  v114 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v116 = &v99 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80B8, &qword_26A885050);
  MEMORY[0x28223BE20](v26);
  v115 = &v99 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80C0, &qword_26A885058);
  MEMORY[0x28223BE20](v28 - 8);
  v122 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v99 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80C8, &qword_26A885060);
  MEMORY[0x28223BE20](v33 - 8);
  v121 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v99 - v36;
  *v37 = sub_26A84FA38();
  *(v37 + 1) = 0;
  v38 = 1;
  v37[16] = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80D0, &qword_26A885068);
  v40 = a1;
  sub_26A7CBC38(a2, &v37[*(v39 + 44)]);
  if (sub_26A850168())
  {
    v101 = v26;
    v100 = v32;
    *v20 = sub_26A84FBF8();
    *(v20 + 1) = 0x4030000000000000;
    v20[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80E0, &qword_26A885078);
    sub_26A850198();
    v41 = sub_26A850268();
    v42 = &v20[*(v18 + 36)];
    *v42 = v41;
    *(v42 + 8) = 0u;
    *(v42 + 24) = 0u;
    v42[40] = 1;
    v43 = *(v12 + 20);
    v44 = *MEMORY[0x277CE0118];
    v45 = sub_26A84FB88();
    v46 = v106;
    (*(*(v45 - 8) + 104))(&v106[v43], v44, v45);
    __asm { FMOV            V0.2D, #8.0 }

    *v46 = _Q0;
    v52 = sub_26A7CAA9C();
    v99 = v40;
    if (v52)
    {
      v53 = v111;
      v54 = v103;
      v55 = &v103[*(v111 + 52)];
      sub_26A850E88();
      v56 = sub_26A850E68();

      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1838, &qword_26A86D470) + 36);
      v58 = *MEMORY[0x277CE13B8];
      v59 = sub_26A8514D8();
      (*(*(v59 - 8) + 104))(v55 + v57, v58, v59);
      *v55 = v56;
      sub_26A7CD274();
      *&v54[*(v53 + 56)] = 256;
    }

    else
    {
      v60 = sub_26A850DF8();
      v61 = v102;
      sub_26A7CD274();
      v62 = v113;
      *&v61[*(v113 + 52)] = v60;
      *&v61[*(v62 + 56)] = 256;
    }

    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A506A30();
    sub_26A506A30();
    sub_26A84FDF8();
    sub_26A505D1C();
    sub_26A7CD0B0();
    sub_26A4D7EA8();
    v63 = sub_26A851448();
    v65 = v64;
    v66 = &v120[*(v108 + 36)];
    sub_26A4D7EA8();
    v67 = &v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80F8, &qword_26A885080) + 36)];
    *v67 = v63;
    v67[1] = v65;
    sub_26A4D7EA8();
    v68 = sub_26A7CAA9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8100, &qword_26A885088);
    v69 = v100;
    if (v68)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26A8570F0;
      v71 = sub_26A850268();
      *(inited + 32) = v71;
      v72 = sub_26A850238();
      *(inited + 33) = v72;
      v73 = sub_26A850288();
      sub_26A850288();
      v74 = sub_26A850288();
      v75 = v117;
      if (v74 != v71)
      {
        v73 = sub_26A850288();
      }

      sub_26A850288();
      v76 = sub_26A850288();
      v77 = v105;
      if (v76 != v72)
      {
        v73 = sub_26A850288();
      }

      sub_26A4D7E54();
      v78 = &v77[*(v75 + 36)];
      *v78 = v73;
      *(v78 + 8) = 0u;
      *(v78 + 24) = 0u;
      v78[40] = 1;
    }

    else
    {
      v79 = swift_initStackObject();
      *(v79 + 16) = xmmword_26A8570F0;
      v80 = sub_26A850268();
      *(v79 + 32) = v80;
      v81 = sub_26A850238();
      *(v79 + 33) = v81;
      v82 = sub_26A850288();
      sub_26A850288();
      v83 = sub_26A850288();
      v84 = v117;
      if (v83 != v80)
      {
        v82 = sub_26A850288();
      }

      sub_26A850288();
      if (sub_26A850288() != v81)
      {
        v82 = sub_26A850288();
      }

      sub_26A84ED48();
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v93 = v104;
      sub_26A4D7E54();
      v94 = &v93[*(v84 + 36)];
      *v94 = v82;
      *(v94 + 1) = v86;
      *(v94 + 2) = v88;
      *(v94 + 3) = v90;
      *(v94 + 4) = v92;
      v94[40] = 0;
    }

    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A7CD400(&qword_2803B8108, &qword_2803B8088, &unk_26A885010, sub_26A7CD104);
    sub_26A84FDF8();
    sub_26A505D1C();
    sub_26A505D1C();
    sub_26A4D7EA8();
    v124 = 0x3FF0000000000000;
    v125 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8138, &unk_26A885098);
    sub_26A506A30();
    v95 = sub_26A84F048();
    v96 = v115;
    sub_26A4D7EA8();
    v97 = v101;
    *&v96[*(v101 + 36)] = v95;
    sub_26A4D7EA8();
    v32 = v69;
    v38 = 0;
    v26 = v97;
  }

  __swift_storeEnumTagSinglePayload(v32, v38, 1, v26);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B80D8, &qword_26A885070);
  sub_26A4D7E54();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7CBC38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8148, &qword_26A8850A8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = sub_26A850178();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_26A850188();
  sub_26A7CBEC4(a1, v8);
  v16 = sub_26A84FA38();
  v17 = &v8[*(v5 + 44)];
  *v17 = v16;
  v17[1] = sub_26A732AD8;
  v17[2] = 0;
  v18 = *(v10 + 16);
  v18(v12, v15, v9);
  v24 = 1;
  sub_26A4D7E54();
  v18(a2, v12, v9);
  v19 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8150, &qword_26A8850B0) + 48)];
  v20 = v24;
  *v19 = 0;
  v19[8] = v20;
  sub_26A4D7E54();
  sub_26A505D1C();
  v21 = *(v10 + 8);
  v21(v15, v9);
  sub_26A505D1C();
  return (v21)(v12, v9);
}

uint64_t sub_26A7CBEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_26A84F588();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v30 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A8501A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = type metadata accessor for ExpandableContentStyle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8158, &qword_26A8850B8);
  v14 = *(v13 - 8);
  v28 = v13;
  v29 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  sub_26A7CD274();
  v17 = a1;
  v18 = a1;
  v19 = v6;
  (*(v7 + 16))(v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v6);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = (v11 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = swift_allocObject();
  sub_26A7CD2C8(v12, v22 + v20);
  (*(v7 + 32))(v22 + v21, v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v34 = v27[1];
  v35 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8160, &qword_26A8850C0);
  sub_26A7CD400(&qword_2803B8168, &qword_2803B8160, &qword_26A8850C0, sub_26A7CD470);
  sub_26A8510D8();
  v23 = v30;
  sub_26A84F578();
  sub_26A506A30();
  sub_26A7CD5E0();
  v24 = v28;
  v25 = v31;
  sub_26A850978();
  (*(v32 + 8))(v23, v25);
  return (*(v29 + 8))(v16, v24);
}

uint64_t sub_26A7CC300(uint64_t a1, uint64_t a2)
{
  sub_26A7CA97C();
  sub_26A8514C8();
  sub_26A84F1C8();
}

uint64_t sub_26A7CC38C()
{
  v0 = sub_26A850158();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_26A7CC3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v60 = a3;
  v61 = a1;
  v3 = sub_26A84F4E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8188, &qword_26A8850D0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (&v50 - v12);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8178, &qword_26A8850C8);
  MEMORY[0x28223BE20](v58);
  v59 = &v50 - v14;
  sub_26A850E88();
  v15 = sub_26A850E68();

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1838, &qword_26A86D470) + 36);
  v17 = *MEMORY[0x277CE13B8];
  v18 = sub_26A8514D8();
  (*(*(v18 - 8) + 104))(v13 + v16, v17, v18);
  *v13 = v15;
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8198, &qword_26A8850D8) + 56)) = 256;
  sub_26A851448();
  sub_26A84F028();
  v19 = (v13 + *(v11 + 44));
  v20 = v72;
  *v19 = v71;
  v19[1] = v20;
  v19[2] = v73;
  v53 = *(type metadata accessor for ExpandableContentStyle(0) + 24);
  sub_26A7204E0(v9);
  v21 = *(v4 + 104);
  v52 = *MEMORY[0x277CDFA90];
  v51 = v21;
  v21(v6);
  sub_26A84F4D8();
  v22 = *(v4 + 8);
  v22(v6, v3);
  v54 = v3;
  v22(v9, v3);
  v23 = sub_26A850F08();
  v56 = sub_26A84FEA8();
  sub_26A850468();
  sub_26A850308();

  v55 = sub_26A8502E8();

  KeyPath = swift_getKeyPath();
  v25 = 0.0;
  if (sub_26A850168())
  {
    sub_26A7204E0(v9);
    v61 = v23;
    v26 = v54;
    v51(v6, v52, v54);
    v27 = sub_26A84F4D8();
    v22(v6, v26);
    v28 = v26;
    v23 = v61;
    v22(v9, v28);
    if (v27)
    {
      v25 = -1.57079633;
    }

    else
    {
      v25 = 1.57079633;
    }
  }

  sub_26A8515A8();
  v30 = v29;
  v32 = v31;
  v33 = sub_26A851448();
  v35 = v34;
  v62[0] = v23;
  v36 = v56;
  LODWORD(v62[1]) = v56;
  v37 = v55;
  v62[2] = KeyPath;
  v62[3] = v55;
  *&v62[4] = v25;
  v62[5] = v30;
  v62[6] = v32;
  v62[7] = v33;
  v62[8] = v34;
  v38 = v59;
  sub_26A4D7EA8();
  memcpy(&v38[*(v58 + 36)], v62, 0x48uLL);
  v62[9] = v23;
  v63 = v36;
  v64 = KeyPath;
  v65 = v37;
  v66 = v25;
  v67 = v30;
  v68 = v32;
  v69 = v33;
  v70 = v35;
  sub_26A4D7E54();
  sub_26A505D1C();
  LOBYTE(v33) = sub_26A850298();
  sub_26A84ED48();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v60;
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8160, &qword_26A8850C0);
  v49 = v47 + *(result + 36);
  *v49 = v33;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  return result;
}

double sub_26A7CC954@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  CGRectGetMinX(*&a2);
  v11.origin.x = OUTLINED_FUNCTION_12_50();
  CGRectGetMinY(v11);
  v12.origin.x = OUTLINED_FUNCTION_12_50();
  CGRectGetWidth(v12);
  v13.origin.x = OUTLINED_FUNCTION_12_50();
  CGRectGetHeight(v13);
  sub_26A8514F8();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

double sub_26A7CCA04@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_26A7CC954(v5, a2);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_26A7CCA4C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_26A7CCA58(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_26A7CCA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A7CDC08();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_26A7CCAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A7CDC08();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_26A7CCB4C(uint64_t a1)
{
  v2 = sub_26A7CDC08();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_26A7CCB98@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v16[0] = a1;
  v16[1] = a3;
  OUTLINED_FUNCTION_11_53();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_150();
  sub_26A84FE88();
  sub_26A84EF28();
  v3 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  OUTLINED_FUNCTION_2_31();
  WitnessTable = swift_getWitnessTable();
  sub_26A6F43B0();
  sub_26A850CC8();
  OUTLINED_FUNCTION_7_71();
  v13 = swift_getWitnessTable();
  v16[2] = WitnessTable;
  v16[3] = v13;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_59_2();
  sub_26A80757C();
  v14 = *(v5 + 8);
  v14(v8, v3);
  OUTLINED_FUNCTION_59_2();
  sub_26A80757C();
  return (v14)(v11, v3);
}

uint64_t sub_26A7CCD8C(uint64_t a1)
{
  sub_26A84F4E8();
  OUTLINED_FUNCTION_15();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26A84F798();
}

unint64_t sub_26A7CCE48()
{
  result = qword_2803B8040;
  if (!qword_2803B8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8040);
  }

  return result;
}

unint64_t sub_26A7CCE9C()
{
  result = qword_2803B8050;
  if (!qword_2803B8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8050);
  }

  return result;
}

void sub_26A7CCF38(uint64_t a1)
{
  sub_26A7CD040(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_26A7CD040(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v2 <= 0x3F)
    {
      sub_26A7CD040(319, &qword_2803B4FB0, MEMORY[0x277CDFAA0]);
      if (v3 <= 0x3F)
      {
        sub_26A5923A4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A7CD040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26A7CD0B0()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A7CD104()
{
  result = qword_2803B8110;
  if (!qword_2803B8110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B80A8, &qword_26A885040);
    sub_26A7CD1BC();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8110);
  }

  return result;
}

unint64_t sub_26A7CD1BC()
{
  result = qword_2803B8118;
  if (!qword_2803B8118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B80A0, &qword_26A885038);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8118);
  }

  return result;
}

uint64_t sub_26A7CD274()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A7CD2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpandableContentStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7CD32C()
{
  v1 = *(type metadata accessor for ExpandableContentStyle(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26A8501A8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26A7CC300(v0 + v2, v5);
}

uint64_t sub_26A7CD400(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    OUTLINED_FUNCTION_58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A7CD470()
{
  result = qword_2803B8170;
  if (!qword_2803B8170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8178, &qword_26A8850C8);
    sub_26A7CD528();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8170);
  }

  return result;
}

unint64_t sub_26A7CD528()
{
  result = qword_2803B8180;
  if (!qword_2803B8180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8188, &qword_26A8850D0);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8180);
  }

  return result;
}

unint64_t sub_26A7CD5E0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A7CD650(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A7CD6C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_26A7CD7FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_26A7CDA18()
{
  result = qword_2803B8238;
  if (!qword_2803B8238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8078, &qword_26A885000);
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8238);
  }

  return result;
}

unint64_t sub_26A7CDB18()
{
  result = qword_2803B8258;
  if (!qword_2803B8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8258);
  }

  return result;
}

unint64_t sub_26A7CDB70()
{
  result = qword_2803B8260;
  if (!qword_2803B8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8260);
  }

  return result;
}

unint64_t sub_26A7CDC08()
{
  result = qword_2803B8268;
  if (!qword_2803B8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8268);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_32@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_26A49035C(v4, v5);
}

uint64_t sub_26A7CDD40(uint64_t a1)
{
  v2 = v1;
  v197 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_0(&v194 - v5);
  v200 = sub_26A850858();
  OUTLINED_FUNCTION_15();
  v199 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v9 - v8);
  v207 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v210 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v13 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF6A0, &qword_26A865100);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_0(&v194 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8270, &qword_26A8852B0);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_0(&v194 - v19);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8278, &qword_26A8852B8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  v22 = &v194 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AB8, &qword_26A8786F8);
  v24 = OUTLINED_FUNCTION_79(v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v194 - v28;
  v30 = sub_26A84AA38();
  v31 = OUTLINED_FUNCTION_79(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v32 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v194 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v194 - v39;
  *&v42 = MEMORY[0x28223BE20](v41).n128_u64[0];
  v44 = &v194 - v43;
  v212 = [v2 inline:v42 image:?element];
  if (v212)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8290, &qword_26A8852C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A8570D0;
    v46 = [v2 engageable];
    if (v46)
    {
      v47 = v46;
      sub_26A7CED2C(&v215);

      v48 = v215;
      v49 = v216;
    }

    else
    {
      v48 = 0;
      v49 = -1;
    }

    v215 = v48;
    LOBYTE(v216) = v49;
    v102 = [v2 color];
    sub_26A5B462C(&v215, v102, inited + 32);

    sub_26A5066E8(v215, v216);
    v103 = MEMORY[0x277D84F90];
    v104 = *(inited + 72);
    if (v104 >> 8 < 0xFF)
    {
      v105 = *(inited + 32);
      v106 = *(inited + 40);
      v107 = *(inited + 48);
      v108 = *(inited + 56);
      v109 = *(inited + 64);
      sub_26A5064E8(v105, v106, v107, v108, v109, *(inited + 72), SBYTE1(v104));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_53();
        sub_26A7A1034();
        v103 = v113;
      }

      v110 = *(v103 + 16);
      v111 = v103;
      if (v110 >= *(v103 + 24) >> 1)
      {
        sub_26A7A1034();
        v111 = v114;
      }

      *(v111 + 16) = v110 + 1;
      v103 = v111;
      v112 = v111 + 48 * v110;
      *(v112 + 32) = v105;
      *(v112 + 40) = v106;
      *(v112 + 48) = v107;
      *(v112 + 56) = v108;
      *(v112 + 64) = v109;
      *(v112 + 72) = v104;
    }

    swift_setDeallocating();
    sub_26A7A0BDC();
    return v103;
  }

  v211 = v26;
  v204 = v22;
  v195 = v37;
  v196 = v34;
  v202 = v44;
  v212 = v32;
  sub_26A58945C(v2);
  if (!v50)
  {
    v115 = v2;
    v116 = sub_26A851E98();
    LOBYTE(v193) = 2;
    sub_26A7AA92C(v116, 1, "SnippetUI/RFFormattedText+FormattedTextView.swift", 49, 2, 67, "asFormattedTextRuns(sectionId:)", 31, v193, v115, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209);
    return MEMORY[0x277D84F90];
  }

  sub_26A84AA28();
  sub_26A84A9D8();
  v205 = v2;
  v51 = [v2 text_encapsulation];
  if (v51)
  {
    v52 = v51;
    sub_26A8076A4();
    sub_26A51D0F8(v29, v211, &qword_2803B4AB8, &qword_26A8786F8);
    sub_26A6ED544();
    sub_26A84A9E8();

    sub_26A4DBD10(v29, &qword_2803B4AB8, &qword_26A8786F8);
  }

  v53 = OUTLINED_FUNCTION_11_54();
  v57 = sub_26A4EC1C4(v53, v54, v55, v56);
  v58 = v208;
  v59 = v210;
  if (!v57)
  {
LABEL_25:
    v84 = v205;
    v85 = [v205 is_highlighted];
    v86 = v212;
    v87 = v195;
    if (v85)
    {
      v88 = v85;
      if ([v85 value])
      {
        sub_26A850E88();
        v89 = sub_26A850E68();

        v215 = v89;
        sub_26A7CFEF8();
        sub_26A84A9E8();
      }
    }

    (*(v196 + 16))(v87, v202, v86);
    v90 = sub_26A850888();
    v92 = v91;
    v94 = v93;
    v95 = [v84 is_bold];
    if (v95)
    {
      v96 = v95;
      [v96 value];
      v97 = sub_26A850728();
      v99 = v98;
      v101 = v100;
    }

    else
    {
      v117 = OUTLINED_FUNCTION_6_68();
      sub_26A4EF6C0(v117, v118, v119);

      v97 = v90;
      v99 = v92;
      v101 = v94;
    }

    v120 = OUTLINED_FUNCTION_6_68();
    sub_26A4EC448(v120, v121, v122);

    v123 = OUTLINED_FUNCTION_11_54();
    v125 = [v123 v124];
    if (v125)
    {
      v126 = v125;
      [v125 value];
    }

    v127 = sub_26A8507F8();
    v129 = v128;
    v131 = v130;
    sub_26A4EC448(v97, v99, v101 & 1);

    v132 = OUTLINED_FUNCTION_11_54();
    v134 = [v132 v133];
    if (v134)
    {
      v135 = v134;
      [v134 value];
    }

    v136 = v198;
    sub_26A850848();
    if (qword_2803A8BF0 != -1)
    {
      swift_once();
    }

    v137 = byte_2803B0440;
    v138 = objc_opt_self();
    v139 = &selRef_systemGrayColor;
    if (!v137)
    {
      v139 = &selRef_systemGray4Color;
    }

    v140 = [v138 *v139];
    sub_26A850D38();
    v141 = sub_26A850868();
    v143 = v142;
    v145 = v144;
    v147 = v146;

    sub_26A4EC448(v127, v129, v131 & 1);

    (*(v199 + 8))(v136, v200);
    v148 = OUTLINED_FUNCTION_11_54();
    v150 = [v148 v149];
    if (v150)
    {
      v151 = v150;
      sub_26A68D9FC(&v215);
      __swift_project_boxed_opaque_existential_1(&v215, v217);
      v152 = sub_26A8506B8();
      v154 = v153;
      v156 = v155;
      v158 = v157;

      __swift_destroy_boxed_opaque_existential_1(&v215);
    }

    else
    {
      sub_26A4EF6C0(v141, v143, v145 & 1);

      v152 = v141;
      v154 = v143;
      v156 = v145;
      v158 = v147;
    }

    sub_26A4EC448(v141, v143, v145 & 1);

    v159 = v205;
    v160 = [v205 font];
    if (v160)
    {
      v161 = v160;
      v162 = sub_26A5FA038();

      v163 = v158;
      if (v162)
      {

        v164 = sub_26A850738();
        v166 = v165;
        v168 = v167;
        v170 = v169;

        OUTLINED_FUNCTION_0_95();
        v152 = v164;
        v154 = v166;
        v159 = v205;
        v156 = v168;
        v163 = v170;
      }
    }

    else
    {
      v163 = v158;
    }

    v171 = [v159 weight];
    v172 = v201;
    if (v171)
    {
      sub_26A5FA2E0([v159 weight]);
      sub_26A850578();
      OUTLINED_FUNCTION_14_45();
      OUTLINED_FUNCTION_0_95();
      OUTLINED_FUNCTION_2_99();
    }

    if ([v159 design])
    {
      sub_26A5FA454([v159 design]);
      sub_26A850568();
      OUTLINED_FUNCTION_14_45();
      sub_26A4DBD10(v172, &qword_2803AB208, &qword_26A857FD0);
      OUTLINED_FUNCTION_0_95();
      OUTLINED_FUNCTION_2_99();
    }

    v173 = sub_26A4EC1C4(v159, &selRef_attributions, &qword_2803B3308, 0x277D4BF68);
    if (v173)
    {
      v174 = v173;
      v175 = OUTLINED_FUNCTION_10_53();
      v103 = sub_26A7CF830(v175, v176, v177, v178, v174, v197);

      OUTLINED_FUNCTION_0_95();
      v179 = OUTLINED_FUNCTION_15_39();
      v180(v179);
    }

    else
    {
      v181 = [v159 engageable];
      if (v181)
      {
        v182 = v181;
        v183 = [v181 command_reference];
        v184 = [v182 preview_list];
        v185 = OUTLINED_FUNCTION_10_53();
        sub_26A7CFBB0(v185, v186, v187, v188, v183, v184);
        v190 = v189;

        v103 = v190;
        OUTLINED_FUNCTION_0_95();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0, &qword_26A884B50);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_26A8570D0;
        *(v103 + 32) = v152;
        *(v103 + 40) = v154;
        *(v103 + 48) = v156 & 1;
        *(v103 + 56) = v163;
        *(v103 + 64) = 0;
        *(v103 + 72) = 0;
      }

      v191 = OUTLINED_FUNCTION_15_39();
      v192(v191);
    }

    return v103;
  }

  v60 = v57;
  result = sub_26A73670C();
  v62 = v202;
  v63 = v214;
  v211 = result;
  if (!result)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v211 >= 1)
  {
    v64 = 0;
    v209 = v60 & 0xC000000000000001;
    v65 = (v196 + 16);
    v66 = (v196 + 8);
    v203 = (v59 + 8);
    v210 = v60;
    do
    {
      if (v209)
      {
        v67 = MEMORY[0x26D6644E0](v64, v60);
      }

      else
      {
        v67 = *(v60 + 8 * v64 + 32);
      }

      v68 = v67;
      v69 = v212;
      (*v65)(v40, v62, v212);
      v70 = sub_26A67C23C(v68, &selRef_substring);
      if (v71)
      {
        v72 = v70;
      }

      else
      {
        v72 = 0;
      }

      if (v71)
      {
        v73 = v71;
      }

      else
      {
        v73 = 0xE000000000000000;
      }

      v215 = v72;
      v216 = v73;
      v74 = sub_26A84AD18();
      __swift_storeEnumTagSinglePayload(v63, 1, 1, v74);
      sub_26A7D0020(&qword_2803B8288, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
      sub_26A53ACC8();
      sub_26A84AAF8();
      v63 = v214;
      sub_26A4DBD10(v214, &qword_2803AF6A0, &qword_26A865100);

      (*v66)(v40, v69);
      if (__swift_getEnumTagSinglePayload(v58, 1, v213) == 1)
      {

        v75 = v58;
        v76 = &qword_2803B8270;
        v77 = &qword_26A8852B0;
      }

      else
      {
        v78 = v58;
        v79 = v204;
        sub_26A7CFF4C(v78, v204);
        v80 = v206;
        sub_26A84ACB8();
        v81 = sub_26A84AC78();
        v83 = v82;
        (*v203)(v80, v207);
        sub_26A7CEF6C(v81, v83, v79);
        v63 = v214;

        v75 = v79;
        v58 = v208;
        v76 = &qword_2803B8278;
        v77 = &qword_26A8852B8;
      }

      sub_26A4DBD10(v75, v76, v77);
      ++v64;
      v60 = v210;
    }

    while (v211 != v64);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_26A7CED2C(uint64_t a1@<X8>)
{
  v3 = [v1 preview_list];
  if (!v3)
  {
    v25 = [v1 command_reference];
    if (v25)
    {
      v24 = 0;
    }

    else
    {
      v24 = -1;
    }

    goto LABEL_25;
  }

  v4 = v3;
  v5 = sub_26A4EC1C4(v3, &selRef_previews, &qword_2803B2438, 0x277D4C048);
  if (!v5)
  {

    v25 = 0;
    v24 = -1;
LABEL_25:
    *a1 = v25;
    *(a1 + 8) = v24;
    return;
  }

  v6 = v5;
  v28 = a1;
  v7 = sub_26A73670C();
  v8 = 0;
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v8)
    {

      v24 = 2;
      a1 = v28;
      v25 = v29;
      goto LABEL_25;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D6644E0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = sub_26A67C23C(v9, &selRef_text);
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = v12;
    v15 = v13;
    v16 = [v10 command_reference];
    if (v16)
    {
      v17 = v16;

      v27 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_0_53();
        sub_26A7A0F68();
        v19 = v22;
      }

      v20 = v19[2];
      if (v20 >= v19[3] >> 1)
      {
        sub_26A7A0F68();
        v26 = v23;
      }

      else
      {
        v26 = v19;
      }

      v26[2] = v20 + 1;
      v21 = &v26[4 * v20];
      v21[4] = v14;
      v21[5] = v15;
      v21[6] = v17;
      *(v21 + 56) = 0;
      v8 = v11;
      v29 = v26;
    }

    else
    {

LABEL_12:

      ++v8;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_26A7CEF6C(uint64_t a1, void (**a2)(void *, uint64_t), uint64_t a3)
{
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8278, &qword_26A8852B8);
  MEMORY[0x28223BE20](v3);
  v57 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8298, &qword_26A8852C8);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v43 - v8;
  MEMORY[0x28223BE20](v9);
  v63 = &v43 - v10;
  v11 = sub_26A8506E8();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_26A84A978();
  v52 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26A84A958();
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v64 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v53 = &v43 - v18;
  v19 = sub_26A84A988();
  v49 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_26A84AA98();
  v22 = *(v48 - 1);
  MEMORY[0x28223BE20](v48);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B82A0, &unk_26A8852D0);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v43 - v27;
  v66 = v58;
  v67 = v59;
  v29 = sub_26A7CFFBC();
  v58 = v3;
  v50 = v29;
  sub_26A84AA08();
  sub_26A84AA88();
  (*(v22 + 8))(v24, v48);
  v30 = v49;
  (*(v49 + 16))(v28, v21, v19);
  v31 = *(v26 + 44);
  v32 = v28;
  v60 = sub_26A7D0020(&qword_2803B82B0, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  sub_26A851D88();
  (*(v30 + 8))(v21, v19);
  v59 = (v52 + 8);
  v48 = (v51 + 16);
  v47 = (v51 + 32);
  v43 = (v54 + 32);
  v46 = (v54 + 16);
  v45 = (v54 + 8);
  v44 = (v51 + 8);
  v54 = v15;
  v51 = v28;
  v52 = v19;
  v49 = v31;
  while (1)
  {
    v33 = v61;
    sub_26A851DD8();
    sub_26A7D0020(&qword_2803B82B8, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v34 = v62;
    v35 = sub_26A851758();
    (*v59)(v33, v34);
    if (v35)
    {
      break;
    }

    v36 = sub_26A851E18();
    v37 = v53;
    (*v48)(v53);
    v36(v65, 0);
    sub_26A851DE8();
    (*v47)(v64, v37, v15);
    sub_26A7D0068();
    v38 = v63;
    sub_26A84A968();
    if (__swift_getEnumTagSinglePayload(v38, 1, v11) == 1)
    {
      sub_26A8506D8();
      if (__swift_getEnumTagSinglePayload(v63, 1, v11) != 1)
      {
        sub_26A4DBD10(v63, &qword_2803B8298, &qword_26A8852C8);
      }
    }

    else
    {
      (*v43)(v13, v63, v11);
    }

    sub_26A62A9E0();
    sub_26A8506C8();
    v39 = v57;
    sub_26A84A948();
    v40 = v55;
    (*v46)(v55, v13, v11);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v11);
    v41 = sub_26A84A9F8();
    sub_26A51D0F8(v40, v56, &qword_2803B8298, &qword_26A8852C8);
    sub_26A84AAA8();
    sub_26A4DBD10(v40, &qword_2803B8298, &qword_26A8852C8);
    v41(v65, 0);
    sub_26A4DBD10(v39, &qword_2803B8278, &qword_26A8852B8);
    (*v45)(v13, v11);
    v15 = v54;
    (*v44)(v64, v54);
    v32 = v51;
  }

  return sub_26A4DBD10(v32, &qword_2803B82A0, &unk_26A8852D0);
}

uint64_t sub_26A7CF830(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  v12 = sub_26A73670C();
  v13 = 0;
  v14 = a5 & 0xFFFFFFFFFFFFFF8;
  while (v12 != v13)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D6644E0](v13, a5);
    }

    else
    {
      if (v13 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v15 = *(a5 + 8 * v13 + 32);
    }

    v7 = v15;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v16 = sub_26A67C23C(v15, &selRef_localized_index);
    if (v17)
    {
      v9 = v16;
      v8 = v17;
      if (v13)
      {
        v18 = sub_26A67C23C(v7, &selRef_localized_separator);
        if (v19)
        {
          LOBYTE(v10) = v19;
          MEMORY[0x26D663B00](v18);
        }
      }

      v6 = v44;
      MEMORY[0x26D663B00](v9, v8);
    }

    ++v13;
  }

  sub_26A53ACC8();
  sub_26A850898();
  sub_26A4F5F10();
  v20 = sub_26A850698();
  v22 = v21;
  v24 = v23;
  v25 = OUTLINED_FUNCTION_6_68();
  sub_26A4EC448(v25, v26, v27);

  sub_26A4F5D20();
  swift_bridgeObjectRetain_n();
  v6 = sub_26A850698();
  v43 = v28;
  v30 = v29;
  v31 = v24 & 1;
  v14 = v32;
  sub_26A4EC448(v20, v22, v31);

  v33 = v30;
  v7 = sub_26A850698();
  v8 = v34;
  LOBYTE(v20) = v35;
  v37 = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0, &qword_26A884B50);
  a5 = swift_allocObject();
  *(a5 + 16) = xmmword_26A857110;
  v9 = v20 & 1;
  *(a5 + 32) = v7;
  *(a5 + 40) = v8;
  *(a5 + 48) = v9;
  *(a5 + 56) = v37;
  *(a5 + 64) = 0;
  *(a5 + 72) = 256;
  v10 = v43 & 1;
  *(a5 + 80) = v6;
  *(a5 + 88) = v14;
  *(a5 + 96) = v10;
  *(a5 + 104) = v33;
  *(a5 + 112) = 0;
  *(a5 + 120) = 768;
  sub_26A4EF6C0(v7, v8, v9);

  sub_26A4EF6C0(v6, v14, v10);
  v38 = qword_2803A8BE8;

  if (v38 == -1)
  {
    goto LABEL_15;
  }

LABEL_18:
  swift_once();
LABEL_15:
  v39 = xmmword_2803B00E0;
  v40 = byte_2803B00F0;
  v41 = qword_2803B00F8;
  *(a5 + 128) = xmmword_2803B00E0;
  *(a5 + 144) = v40;
  *(a5 + 152) = v41;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;
  sub_26A4EF6C0(v39, *(&v39 + 1), v40);

  sub_26A4EC448(v7, v8, v9);

  sub_26A4EC448(v6, v14, v10);

  return a5;
}

void sub_26A7CFBB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  if (!a6)
  {
    v9 = a5;
    if (a5)
    {
      sub_26A53AC74();
      v28 = v9;
      sub_26A850698();
      OUTLINED_FUNCTION_12_51();
      sub_26A5066FC(a5, 0);
    }

    else
    {
      sub_26A4EF6C0(a1, a2, a3 & 1);

      LOBYTE(v9) = a3;
    }

LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0, &qword_26A884B50);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26A8570D0;
    OUTLINED_FUNCTION_7_72(v29, v9 & 1);
    return;
  }

  v9 = a6;
  v10 = sub_26A4EC1C4(v9, &selRef_previews, &qword_2803B2438, 0x277D4C048);
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0, &qword_26A884B50);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_26A8570D0;
    OUTLINED_FUNCTION_7_72(v30, a3 & 1);
    sub_26A4EF6C0(a1, a2, a3 & 1);

    return;
  }

  v11 = v10;
  v33 = v9;
  v12 = sub_26A73670C();
  v13 = 0;
  v34 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v12 == v13)
    {

      sub_26A53AC74();
      sub_26A850698();
      OUTLINED_FUNCTION_12_51();

      sub_26A5066FC(v34, 2u);
      goto LABEL_23;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D6644E0](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v17 = sub_26A67C23C(v14, &selRef_text);
    if (!v18)
    {
      goto LABEL_12;
    }

    v9 = v17;
    v19 = v18;
    v20 = [v15 command_reference];
    if (v20)
    {
      v21 = v20;

      v32 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_0_53();
        sub_26A7A0F68();
        v23 = v26;
      }

      v24 = v23[2];
      if (v24 >= v23[3] >> 1)
      {
        sub_26A7A0F68();
        v31 = v27;
      }

      else
      {
        v31 = v23;
      }

      v31[2] = v24 + 1;
      v25 = &v31[4 * v24];
      v25[4] = v9;
      v25[5] = v19;
      v25[6] = v21;
      *(v25 + 56) = 0;
      v13 = v16;
      v34 = v31;
    }

    else
    {

LABEL_12:

      ++v13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

unint64_t sub_26A7CFEF8()
{
  result = qword_2803B8280;
  if (!qword_2803B8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8280);
  }

  return result;
}

uint64_t sub_26A7CFF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8278, &qword_26A8852B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A7CFFBC()
{
  result = qword_2803B82A8;
  if (!qword_2803B82A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8278, &qword_26A8852B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B82A8);
  }

  return result;
}

uint64_t sub_26A7D0020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A7D0068()
{
  result = qword_2803B82C0;
  if (!qword_2803B82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B82C0);
  }

  return result;
}

double OUTLINED_FUNCTION_0_95()
{
  sub_26A4EC448(v2, v1, v0 & 1);

  return result;
}

uint64_t OUTLINED_FUNCTION_7_72@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = v4;
  *(result + 40) = v3;
  *(result + 48) = a2;
  *(result + 56) = v2;
  *(result + 64) = 0;
  *(result + 72) = 1280;
  return result;
}

uint64_t sub_26A7D0190()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_26A7D02D4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  if (*(v0 + 25) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4F5724(v5, v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v5;
}

uint64_t sub_26A7D0434@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PlainTextView(0);
  sub_26A7D1400(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84EE68();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A7D0624()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for PlainTextView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

double PlainTextView.init(_:)@<D0>(uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  v4 = type metadata accessor for PlainTextView(0);
  v5 = *(v4 + 24);
  *(a3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v6 = a3 + *(v4 + 28);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  sub_26A8517E8();

  return result;
}

uint64_t type metadata accessor for PlainTextView(uint64_t a1)
{
  result = qword_2803B82E8;
  if (!qword_2803B82E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlainTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v68 = sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v70 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v67 = v4 - v3;
  sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v61 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v61 - v10;
  v12 = sub_26A84AF58();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = *(type metadata accessor for PlainTextView(0) + 32);
  sub_26A84AF68();
  v20 = sub_26A84AF48();
  v22 = v21;
  (*(v14 + 8))(v18, v12);
  v71 = v20;
  v72 = v22;
  sub_26A53ACC8();
  v23 = sub_26A850898();
  v25 = v24;
  v27 = v26;
  sub_26A7D0D8C();
  v64 = sub_26A850738();
  v65 = v28;
  v30 = v29;
  v32 = v31;

  sub_26A4EC448(v23, v25, v27 & 1);

  v66 = v19;
  sub_26A84AF88();
  v33 = sub_26A84DFA8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v33) == 1)
  {
    sub_26A4E2544(v11, &qword_2803AD038, &qword_26A872050);
  }

  else
  {
    v34 = v61;
    sub_26A84DF78();
    v35 = _ProtoColor.swiftValue.getter();
    (*(v62 + 8))(v34, v63);
    (*(*(v33 - 8) + 8))(v11, v33);
    if (v35)
    {

      v36 = v64;
      v37 = sub_26A8506A8();
      v62 = v38;
      v63 = v37;
      v40 = v39;
      v42 = v41;

      goto LABEL_6;
    }
  }

  v36 = v64;
  sub_26A4EF6C0(v64, v30, v32 & 1);
  v43 = v65;

  v62 = v30;
  v63 = v36;
  v40 = v32;
  v42 = v43;
LABEL_6:
  v44 = v67;
  v45 = v68;
  sub_26A4EC448(v36, v30, v32 & 1);

  v46 = sub_26A84AF98();
  if (v47)
  {
    v48 = sub_26A7D02D4();
    v50 = v49;
  }

  else
  {
    v48 = v46;
    v50 = 0;
  }

  KeyPath = swift_getKeyPath();
  v52 = swift_getKeyPath();
  v53 = sub_26A7D0624();
  if (v53 == 2 || (v53 & 1) == 0)
  {
    sub_26A7D0434(v44);
  }

  else
  {
    (*(v70 + 104))(v44, *MEMORY[0x277CDF3D0], v45);
  }

  v54 = v44;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B82E0, &unk_26A8853D8);
  v56 = v69;
  v57 = (v69 + *(v55 + 36));
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48, &unk_26A855BA0);
  result = (*(v70 + 32))(v57 + *(v58 + 28), v54, v45);
  *v57 = v52;
  v60 = v62;
  *v56 = v63;
  *(v56 + 8) = v60;
  *(v56 + 16) = v40 & 1;
  *(v56 + 24) = v42;
  *(v56 + 32) = KeyPath;
  *(v56 + 40) = v48;
  *(v56 + 48) = v50 & 1;
  return result;
}

uint64_t sub_26A7D0D8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD040, &qword_26A85D010);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD048, &unk_26A885460);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  type metadata accessor for PlainTextView(0);
  sub_26A84AF28();
  v6 = sub_26A84AEF8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_26A4E2544(v5, &qword_2803AD048, &unk_26A885460);
  }

  else
  {
    v7 = sub_26A5500C8();
    (*(*(v6 - 8) + 8))(v5, v6);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v8 = sub_26A7D0190();
  if (!v8)
  {
    v8 = sub_26A8502F8();
  }

  v7 = v8;
LABEL_7:
  v9 = sub_26A84AF18();
  if (v9 == 2 || (v9 & 1) == 0)
  {

    v10 = v7;
  }

  else
  {
    v10 = sub_26A850308();
  }

  v11 = sub_26A84AF78();
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v12 = sub_26A8503D8();

    v10 = v12;
  }

  sub_26A84AED8();
  v13 = sub_26A84C858();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v13);
  if (EnumTagSinglePayload == 1)
  {

    sub_26A4E2544(v2, &qword_2803AD040, &qword_26A85D010);
  }

  else
  {
    sub_26A5506E0(EnumTagSinglePayload);
    v16 = v15;
    (*(*(v13 - 8) + 8))(v2, v13);
    if (v16)
    {
    }

    else
    {
      v17 = sub_26A850428();

      return v17;
    }
  }

  return v10;
}

uint64_t sub_26A7D1040()
{
  result = swift_allocObject();
  *(result + 16) = sub_26A7D1098;
  *(result + 24) = 0;
  qword_2803B82D0 = sub_26A7D14F8;
  *algn_2803B82D8 = result;
  return result;
}

double sub_26A7D1098@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  sub_26A4EF6C0(v3, v2, v4);

  return result;
}

uint64_t sub_26A7D10E8@<X0>(void *a1@<X8>)
{
  if (qword_2803A8F98 != -1)
  {
    swift_once();
  }

  v2 = qword_2803B82D0;
  v3 = *algn_2803B82D8;
  *a1 = qword_2803B82D0;
  a1[1] = v3;

  return sub_26A4C2304(v2, v3);
}

uint64_t sub_26A7D1158()
{
  sub_26A7D1470();
  sub_26A84F998();
  return v1;
}

uint64_t sub_26A7D11D0@<X0>(uint64_t a2@<X8>)
{
  result = sub_26A84F958();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_26A7D1248(uint64_t a1)
{
  sub_26A576B80(319, &qword_2803B2890, &qword_2803B2898, &unk_26A885450);
  if (v1 <= 0x3F)
  {
    sub_26A576B80(319, &qword_2803B18A8, &qword_2803AB3B8, &qword_26A858510);
    if (v2 <= 0x3F)
    {
      sub_26A5B96FC(319);
      if (v3 <= 0x3F)
      {
        sub_26A576B80(319, &qword_2803B2E18, &qword_2803AFAE8, &qword_26A8676A0);
        if (v4 <= 0x3F)
        {
          sub_26A84AFA8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A7D135C()
{
  result = qword_2803B82F8;
  if (!qword_2803B82F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B82E0, &unk_26A8853D8);
    sub_26A6ECA88();
    sub_26A5C9C88(&qword_2803A9E40, &unk_2803A9E48, &unk_26A855BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B82F8);
  }

  return result;
}

uint64_t sub_26A7D1400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A7D1470()
{
  result = qword_2803B8300;
  if (!qword_2803B8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8300);
  }

  return result;
}

void sub_26A7D1500()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8318, &qword_26A8857B8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = type metadata accessor for DynamicFormattedTextView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = *(v1 + 64);
  if (v12)
  {
    v13 = *(v1 + 56);
    v14 = *(v1 + 48);
    v33 = *(v1 + 40);
    v34 = v14;
    v15 = v13 & 1;
    v35 = v13 & 1;
    v36 = v12;
    v32 = v2;
    v31 = *(v1 + 88);
    v30 = *(v1 + 96);
    v16 = OUTLINED_FUNCTION_5_21();
    sub_26A4EF6C0(v16, v17, v15);

    sub_26A850B28();
    sub_26A4EF6D0();
    sub_26A7D5580();
    sub_26A851248();
    v18 = OUTLINED_FUNCTION_5_21();
    sub_26A4EC448(v18, v19, v15);

    sub_26A51CE58(v1);
    sub_26A4DBD10(v6, &qword_2803B8318, &qword_26A8857B8);
  }

  else
  {
    memcpy(&v30 - v10, v1, 0x78uLL);
    if (qword_2803A8FA0 != -1)
    {
      swift_once();
    }

    type metadata accessor for DynamicFormattedTextView.TextCache();
    OUTLINED_FUNCTION_1_100();
    sub_26A7D5640(v20, v21, v22);

    *(v11 + 15) = sub_26A84F258();
    *(v11 + 16) = v23;
    v24 = *(v7 + 24);
    *&v11[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(KeyPath);
    v26 = *(v7 + 32);
    *&v11[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CA0, &qword_26A87C5D0);
    swift_storeEnumTagMultiPayload();
    v27 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(v27);
    v28 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(v28);
    v29 = swift_getKeyPath();
    OUTLINED_FUNCTION_33_2(v29);
    sub_26A7D5528();
    sub_26A7D5640(&qword_2803B8320, 255, type metadata accessor for DynamicFormattedTextView);
    OUTLINED_FUNCTION_5_21();
    sub_26A851248();
    sub_26A7D5AD4();
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7D18DC()
{
  v1 = 0;
  result = 0;
  v3 = *(*v0 + 16);
LABEL_2:
  v4 = (*v0 + 73 + 48 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_12;
    }

    v6 = *v4;
    v4 += 48;
    ++v1;
    if (v6 == 1)
    {
      v1 = v5;
      if (!__OFADD__(result++, 1))
      {
        goto LABEL_2;
      }

      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_26A7D193C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v53 = a4 & 1;
  v13 = *(a1 + 16);
  v14 = (a1 + 73);
  if (v13)
  {
    while (1)
    {
      v15 = *v14;
      if (((1 << v15) & 3) == 0 && (v15 != 4 || !*(*(v14 - 41) + 80)))
      {
        break;
      }

      v14 += 48;
      if (!--v13)
      {
        goto LABEL_6;
      }
    }

    v27 = OUTLINED_FUNCTION_13_9();
    sub_26A4EF6C0(v27, v28, v29);

    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
  }

  else
  {
LABEL_6:
    swift_bridgeObjectRetain_n();
    v16 = OUTLINED_FUNCTION_13_9();
    sub_26A4EF6C0(v16, v17, v18);

    v19 = OUTLINED_FUNCTION_13_9();
    sub_26A502D68(v19, v20, v21, a5);
    v49 = v23;
    v50 = v22;
    v25 = v24;
    v48 = v26;

    v47 = v25 & 1;
  }

  v30 = *(a1 + 16);
  v31 = (a1 + 73);
  if (v30)
  {
    while (1)
    {
      v32 = *v31;
      if (((1 << v32) & 3) == 0 && (v32 != 4 || !*(*(v31 - 41) + 80)))
      {
        break;
      }

      v31 += 48;
      if (!--v30)
      {
        goto LABEL_13;
      }
    }

    if (qword_2803A8BD0 != -1)
    {
      swift_once();
    }

    v39 = *(&xmmword_2803B0080 + 1);
    v37 = xmmword_2803B0080;
    v41 = byte_2803B0090;
    v43 = qword_2803B0098;
    sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);
  }

  else
  {
LABEL_13:

    v33 = OUTLINED_FUNCTION_13_9();
    sub_26A502D68(v33, v34, v35, a5);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
  }

  v44 = OUTLINED_FUNCTION_13_9();
  sub_26A4EC448(v44, v45, v46);

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = v53;
  *(a8 + 32) = a5;
  *(a8 + 40) = v50;
  *(a8 + 48) = v49;
  *(a8 + 56) = v47;
  *(a8 + 64) = v48;
  *(a8 + 72) = v37;
  *(a8 + 80) = v39;
  *(a8 + 88) = v41 & 1;
  *(a8 + 96) = v43;
  *(a8 + 104) = a6;
  *(a8 + 112) = a7;
}

BOOL sub_26A7D1C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = (a1 + 73); ; i += 48)
  {
    v3 = v1 - 1;
    if (!v1)
    {
      break;
    }

    v4 = *(i - 1);
    v5 = *i;
    switch(v5)
    {
      case 2:
        if (v4 != 255)
        {
          return v1 != 0;
        }

        break;
      case 4:
        v23 = *(i - 17);
        v24 = *(i - 9);
        v21 = *(i - 33);
        v22 = *(i - 25);
        v6 = *(i - 41);
        v7 = *(v6 + 24);
        v8 = *(v6 + 40);
        v9 = *(v6 + 56);
        v10 = *(v6 + 72);
        v15 = *(v6 + 64);
        v16 = *(v6 + 16);
        v13 = *(v6 + 32);
        v14 = *(v6 + 80);
        v11 = *(v6 + 96);
        v25 = *(v6 + 88);
        v17 = *(v6 + 104);
        v19 = *(i - 1);
        v20 = v1;
        sub_26A5064E8(v6, v21, v22, v23, v24, v4, 4);

        sub_26A4EF6C0(v7, v13, v8);

        sub_26A505318(v9, v15, v10, v14);
        sub_26A4EF6C0(v25, v11, v17);

        v18 = sub_26A7D1C0C(v16);

        sub_26A4EC448(v7, v13, v8);

        sub_26A506720(v9, v15, v10, v14);
        sub_26A4EC448(v25, v11, v17);

        sub_26A506604(v6, v21, v22, v23, v24, v19, 4);
        v1 = v20;
        if (v18)
        {
          return v1 != 0;
        }

        break;
      case 5:
        return v1 != 0;
    }

    v1 = v3;
  }

  return v1 != 0;
}

void sub_26A7D1E08(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  switch(*(a1 + 41))
  {
    case 2:
    case 3:
      break;
    case 4:
      v6 = v3[7];
      v7 = v3[8];
      v8 = v3[9];
      v9 = v3[10];
      sub_26A505318(v6, v7, v8, v9);
      break;
    default:
      v8 = *(a1 + 16) & 1;
      sub_26A4EF6C0(*a1, v4, *(a1 + 16) & 1);

      v6 = v3;
      v7 = v4;
      v9 = v5;
      break;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
}

void sub_26A7D1ECC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  switch(*(a1 + 41))
  {
    case 1:
      goto LABEL_4;
    case 2:
    case 3:
      break;
    case 4:
      v6 = v3[7];
      v7 = v3[8];
      v8 = v3[9];
      v9 = v3[10];
      sub_26A505318(v6, v7, v8, v9);
      break;
    default:
      if (*(a1 + 32))
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
      }

      else
      {
LABEL_4:
        v8 = *(a1 + 16) & 1;
        sub_26A4EF6C0(*a1, v4, *(a1 + 16) & 1);

        v6 = v3;
        v7 = v4;
        v9 = v5;
      }

      break;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
}

uint64_t sub_26A7D1FAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDC0, &qword_26A8600E8) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDC8, &qword_26A8600F0) + 28);
  v6 = *MEMORY[0x277CE1050];
  sub_26A850F88();
  OUTLINED_FUNCTION_46();
  (*(v7 + 104))(v4 + v5, v6);
  *v4 = swift_getKeyPath();
  *a2 = a1;
}

void sub_26A7D2084()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8338, &qword_26A885C10);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  v3 = &v11[-1] - v2;
  memcpy(v11, v0, sizeof(v11));
  sub_26A7D2194(v11, v3);
  v5 = sub_26A7D278C(v4);
  v7 = v6;
  v9 = v8;
  sub_26A7D59A8();
  sub_26A850B28();
  sub_26A4EC448(v5, v7, v9 & 1);

  sub_26A4DBD10(v3, &qword_2803B8338, &qword_26A885C10);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7D2194@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8358, &qword_26A885C20);
  MEMORY[0x28223BE20](v31);
  v5 = v28 - v4;
  v6 = type metadata accessor for DynamicFormattedTextView(0);
  v28[2] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v28[1] = v7;
  v28[3] = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8350, &qword_26A885C18);
  MEMORY[0x28223BE20](v30);
  v29 = (v28 - v8);
  v9 = sub_26A84F988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2 + *(v6 + 40);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    if ((v14 & 1) == 0)
    {
LABEL_3:
      v15 = *a1;

      goto LABEL_6;
    }
  }

  else
  {

    sub_26A851EA8();
    v16 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v14, 0);
    (*(v10 + 8))(v12, v9);
    if (v35 != 1)
    {
      goto LABEL_3;
    }
  }

  v15 = sub_26A7D2A70(*a1);
LABEL_6:
  v17 = v2 + *(v6 + 44);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v10 + 8))(v12, v9);
    if (v34 != 1)
    {
      goto LABEL_12;
    }
  }

  if (sub_26A7D1C0C(v15))
  {
    v20 = sub_26A84FA78();
    v21 = v29;
    *v29 = v20;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8360, &qword_26A885C28);
    sub_26A56C934(v15);
    v33 = v22;
    swift_getKeyPath();
    sub_26A7D5528();
    swift_allocObject();
    sub_26A7D5A60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8368, &unk_26A885C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0, &qword_26A87EA60);
    sub_26A54FF6C(&qword_2803B8370, &qword_2803B8368, &unk_26A885C50);
    sub_26A6D1B70();
    sub_26A8512F8();

    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A54FF6C(&qword_2803B8348, &qword_2803B8350, &qword_26A885C18);
    sub_26A84FDF8();
    return sub_26A4DBD10(v21, &qword_2803B8350, &qword_26A885C18);
  }

LABEL_12:

  *v5 = sub_26A7D32B4(a1, v24);
  *(v5 + 1) = v25;
  v5[16] = v26 & 1;
  *(v5 + 3) = v27;
  swift_storeEnumTagMultiPayload();
  sub_26A54FF6C(&qword_2803B8348, &qword_2803B8350, &qword_26A885C18);
  return sub_26A84FDF8();
}

uint64_t sub_26A7D278C(__n128 a1)
{
  v2 = type metadata accessor for DynamicFormattedTextView(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = v1 + *(v3 + 48);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {
    v18 = v6;

    sub_26A851EA8();
    v12 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v11, 0);
    (*(v5 + 8))(v8, v18);
    if (v19 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = sub_26A7D2A70(v9);
    goto LABEL_6;
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_3:

LABEL_6:
  sub_26A7D5528();
  v13 = swift_allocObject();
  sub_26A7D5A60();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_26A7D5AB8;
  *(v14 + 24) = v13;
  v15 = sub_26A50388C(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), v9, sub_26A7D5AD0, v14);

  return v15;
}

uint64_t sub_26A7D2A70(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v1 + 48 * v2;
  while (1)
  {
    if (v3 == v2)
    {
      return v4;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 73);
    ++v2;
    v5 += 48;
    if (v7 != 3)
    {
      v8 = *(v5 - 16);
      v9 = *v5;
      v10 = *(v5 + 8);
      v11 = *(v5 + 16);
      v12 = *(v5 + 24);
      v16 = *(v5 - 8);
      sub_26A5064E8(v8, v16, *v5, v10, v11, v12, v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v1;
      if ((result & 1) == 0)
      {
        result = sub_26A7DCE88(0, *(v4 + 16) + 1, 1);
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_26A7DCE88((v13 > 1), v14 + 1, 1);
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 48 * v14;
      *(v15 + 32) = v8;
      *(v15 + 40) = v16;
      *(v15 + 48) = v9;
      *(v15 + 56) = v10;
      *(v15 + 64) = v11;
      *(v15 + 72) = v12;
      *(v15 + 73) = v7;
      v2 = v6;
      v1 = v17;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_26A7D2BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 49);
  v21 = *(a1 + 8);
  v22 = v3;
  v23 = v5;
  v24 = v4;
  KeyPath = v6;
  v26 = v7;
  if (v8 == 5)
  {
    v27 = 5;
    v9 = sub_26A7D2D8C(&v21);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    KeyPath = swift_getKeyPath();
    v26 = 0;
    v28 = swift_getKeyPath();
    v29 = 0;
    swift_unknownObjectWeakInit();
    v30 = 0;
    v31 = 0;
    v21 = v9;
    v22 = v11;
    LOBYTE(v23) = v13 & 1;
    v24 = v15;
    sub_26A4EF6D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8378, &qword_26A885CB0);
    sub_26A7D5E74();
    sub_26A851248();
    sub_26A4DBD10(&v21, &qword_2803B8378, &qword_26A885CB0);
  }

  else
  {
    v27 = v8;
    v21 = sub_26A7D2D8C(&v21);
    v22 = v16;
    LOBYTE(v23) = v17 & 1;
    v24 = v18;
    sub_26A851248();
  }

  result = sub_26A84FDF8();
  v20 = v22;
  *a2 = v21;
  *(a2 + 8) = v20;
  return result;
}

uint64_t sub_26A7D2D8C(uint64_t a1)
{
  v2 = sub_26A84F988();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for LoadableText.Context(0);
  MEMORY[0x28223BE20](v5);
  v41 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v35[-v8];
  v10 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  switch(*(a1 + 41))
  {
    case 2:
      v39 = *(a1 + 24);
      v40 = v14;
      v18 = type metadata accessor for DynamicFormattedTextView(0);
      v19 = v44;
      v37 = *(v18 + 24);
      sub_26A720064(v9);
      v20 = v19 + *(v18 + 28);
      v21 = *v20;
      LODWORD(v20) = *(v20 + 8);
      v38 = v21;
      v36 = v20;
      if (v20)
      {
        v22 = v21;
      }

      else
      {

        sub_26A851EA8();
        v24 = sub_26A8501F8();
        sub_26A84EA78();

        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A49035C(v21, 0);
        (*(v42 + 8))(v4, v43);
        v22 = v46[0];
      }

      sub_26A7D36EC();
      *&v9[*(v5 + 20)] = v22;
      *&v9[*(v5 + 24)] = v25;
      (v11)(v9);
      sub_26A7D5AD4();
      sub_26A7D3CE8();
      v27 = v40;
      if (v28)
      {
        v11 = v26;
        sub_26A7D5AD4();
      }

      else
      {
        v29 = v41;
        sub_26A720064(v41);
        if (v36)
        {
          v30 = v38;
        }

        else
        {
          v31 = v38;

          sub_26A851EA8();
          v32 = sub_26A8501F8();
          sub_26A84EA78();

          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A49035C(v31, 0);
          (*(v42 + 8))(v4, v43);
          v30 = v46[0];
        }

        sub_26A7D36EC();
        *&v29[*(v5 + 20)] = v30;
        *&v29[*(v5 + 24)] = v33;
        v11 = v27(v29);
        sub_26A7D5AD4();
        sub_26A7D5AD4();
      }

      break;
    case 3:

      sub_26A4EF6C0(v11, v12, v14 & 1);
      sub_26A7D36EC();
      if (v15)
      {
        v16 = v15;
        v17 = Text.superScript(for:)(v15, v11, v12, v14 & 1, v13);

        sub_26A4EC448(v11, v12, v14 & 1);

        v11 = v17;
      }

      break;
    case 4:
      memcpy(v46, (v11 + 16), 0x78uLL);
      sub_26A4F5680(v46, &v45);
      v11 = sub_26A7D32B4(v46, v23);
      sub_26A51CE58(v46);
      break;
    default:
      sub_26A4EF6C0(*a1, *(a1 + 8), v14 & 1);

      break;
  }

  return v11;
}

uint64_t sub_26A7D32B4(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for DynamicFormattedTextView(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v6 = sub_26A84F988();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(v5 + 48);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {
    v20 = v8;

    sub_26A851EA8();
    v14 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v12, 0);
    (*(v7 + 8))(v10, v20);
    if (v21 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = sub_26A7D2A70(*a1);
    goto LABEL_6;
  }

  if (v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = *a1;

LABEL_6:
  sub_26A7D5528();
  v15 = swift_allocObject();
  sub_26A7D5A60();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26A7D5B28;
  *(v16 + 24) = v15;
  v17 = sub_26A50388C(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), v13, sub_26A7D60F4, v16);

  return v17;
}

uint64_t sub_26A7D35B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v1;
  v7 = v2;
  return sub_26A7D2D8C(v5);
}

uint64_t sub_26A7D3604(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  if (v4 == 5 || !*(a1 + 41)) && (v2)
  {
    if (qword_2803A8BD0 != -1)
    {
      swift_once();
    }

    v5 = xmmword_2803B0080;
    sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);
  }

  else
  {
    v7[0] = *a1;
    v7[1] = v1;
    v8 = v2;
    v9 = v3;
    v10 = v4;
    return sub_26A7D2D8C(v7);
  }

  return v5;
}

void sub_26A7D36EC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = sub_26A850438();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  v15 = (v0 + *(type metadata accessor for DynamicFormattedTextView(0) + 36));
  v16 = *v15;
  v17 = *(v15 + 8);

  if ((v17 & 1) == 0)
  {
    sub_26A851EA8();
    v21 = v8;
    v18 = v3;
    v19 = v1;
    v20 = sub_26A8501F8();
    sub_26A84EA78();

    v1 = v19;
    v3 = v18;
    sub_26A84F978();
    OUTLINED_FUNCTION_13_9();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v10 + 8))(v14, v21);
    v16 = v22;
  }

  if (v16)
  {
    sub_26A720490(v7);
    sub_26A8502B8();

    (*(v3 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_27_0();
}

void *sub_26A7D38F0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LoadableText.Source(0);
  sub_26A7D5640(qword_28157F700, 255, type metadata accessor for LoadableText.Source);
  v5 = sub_26A8516A8();
  v6 = MEMORY[0x277D84FA0];
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

void *sub_26A7D3990()
{
  type metadata accessor for DynamicFormattedTextView.TextCache();
  swift_allocObject();
  result = sub_26A7D38F0(&unk_26A8858E0, 0);
  qword_2803D2720 = result;
  return result;
}

uint64_t sub_26A7D39E4()
{
  v0[2] = sub_26A851BD8();
  v0[3] = sub_26A851BC8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26A7D3A90;

  return sub_26A539448();
}

uint64_t sub_26A7D3A90()
{
  OUTLINED_FUNCTION_11_55();
  v6 = *v3;
  OUTLINED_FUNCTION_0_12();
  *v7 = v6;
  *v7 = *v3;
  *(v6 + 40) = v1;

  if (v1)
  {
    sub_26A851B78();
    v8 = sub_26A7D3C8C;
  }

  else
  {
    *(v6 + 72) = v4;
    *(v6 + 48) = v5;
    *(v6 + 56) = v2;
    *(v6 + 64) = v0;
    sub_26A851B78();
    v8 = sub_26A7D3C1C;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26A7D3C1C()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);

  return v2(v3, v4, v1 & 1, v5);
}

uint64_t sub_26A7D3C8C()
{
  OUTLINED_FUNCTION_1_10();

  OUTLINED_FUNCTION_2_9();

  return v0();
}

void sub_26A7D3CE8()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8 = type metadata accessor for LoadableText.Source(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  swift_beginAccess();
  v13 = *(v0 + 16);
  if (*(v13 + 16))
  {

    v14 = sub_26A548888(v3);
    if (v15)
    {
      sub_26A4EF6C0(*(*(v13 + 56) + 32 * v14), *(*(v13 + 56) + 32 * v14 + 8), *(*(v13 + 56) + 32 * v14 + 16));

      goto LABEL_7;
    }
  }

  v23[0] = v12;
  v23[1] = v9;
  v24 = v7;
  swift_beginAccess();

  sub_26A6B5174();
  v17 = v16;

  OUTLINED_FUNCTION_16_33();
  if ((v17 & 1) == 0)
  {
    sub_26A7D5528();
    swift_beginAccess();
    sub_26A6B9864();
    sub_26A7D5AD4();
    swift_endAccess();
    v18 = sub_26A851C18();
    v19 = v24;
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v18);
    sub_26A7D5528();
    sub_26A851BD8();

    v20 = sub_26A851BC8();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v1;
    OUTLINED_FUNCTION_2_100();
    sub_26A7D5A60();
    sub_26A601D48(0, 0, v19, &unk_26A8857A8, v21);

    OUTLINED_FUNCTION_16_33();
  }

LABEL_7:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7D4000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(type metadata accessor for LoadableText.Source(0) - 8);
  v5[10] = v6;
  v5[11] = *(v6 + 64);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8308, &qword_26A8857B0);
  v5[13] = swift_task_alloc();
  sub_26A851BD8();
  v5[14] = sub_26A851BC8();
  v5[15] = sub_26A851B78();
  v5[16] = v7;

  return MEMORY[0x2822009F8](sub_26A7D4130);
}

uint64_t sub_26A7D4130()
{
  OUTLINED_FUNCTION_1_10();
  v4 = (*(v0[8] + 32) + **(v0[8] + 32));
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26A7D4220;
  v2 = v0[9];

  return v4(v2);
}

uint64_t sub_26A7D4220()
{
  OUTLINED_FUNCTION_11_55();
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_0_12();
  *v8 = v7;
  *(v6 + 144) = v1;

  if (v1)
  {
    v9 = &sub_26A7D4500;
  }

  else
  {
    *(v6 + 176) = v4;
    *(v6 + 152) = v5;
    *(v6 + 160) = v2;
    *(v6 + 168) = v0;
    v9 = sub_26A7D4354;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26A7D4354()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 176);

  swift_beginAccess();
  sub_26A4EF6C0(v1, v2, v6 & 1);

  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + 16);
  sub_26A655B5C();
  *(v4 + 16) = v12;
  swift_endAccess();
  swift_beginAccess();
  sub_26A7D4C50(v5, v3);
  sub_26A4DBD10(v3, &qword_2803B8308, &qword_26A8857B0);
  swift_endAccess();
  type metadata accessor for DynamicFormattedTextView.TextCache();
  OUTLINED_FUNCTION_1_100();
  sub_26A7D5640(v7, v8, v9);
  OUTLINED_FUNCTION_10_6();
  sub_26A84EB88();
  sub_26A84EBC8();

  sub_26A4EC448(v1, v2, v6 & 1);

  OUTLINED_FUNCTION_2_9();

  return v10();
}

uint64_t sub_26A7D4650(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v3);
  sub_26A852248();
  MEMORY[0x26D663B00](0xD00000000000002DLL, 0x800000026A892D20);
  sub_26A7D5528();
  v4 = sub_26A8517F8();
  MEMORY[0x26D663B00](v4);

  MEMORY[0x26D663B00](0x203A6874697720, 0xE700000000000000);
  v5 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088, &qword_26A85A650);
  v6 = sub_26A8517F8();
  MEMORY[0x26D663B00](v6);

  return 0;
}

uint64_t sub_26A7D47A4()
{

  return v0;
}

uint64_t sub_26A7D47D4()
{
  sub_26A7D47A4();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_26A7D4844(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26A7D4884(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26A7D48F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DynamicFormattedTextView.TextCache();
  result = sub_26A84EB88();
  *a2 = result;
  return result;
}

void sub_26A7D4968(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  if (v2 >> 8 > 0xFE)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *a1;
    *a2 = v7;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
    *(a2 + 40) = v2;
    sub_26A5064E8(v7, v5, v6, v3, v4, v2, SBYTE1(v2));
  }
}

uint64_t sub_26A7D49A0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    v4 = result;
    sub_26A4EF6C0(result, a2, a3 & 1);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A7D4A28()
{
  OUTLINED_FUNCTION_31_3();
  sub_26A850F88();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_5_21();
  v2(v1);
  return sub_26A84F6A8();
}

uint64_t sub_26A7D4AD4()
{
  v3 = OUTLINED_FUNCTION_31_3();
  v4 = type metadata accessor for LoadableText.Source(v3);
  OUTLINED_FUNCTION_79(v4);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26A68B714;

  return sub_26A7D4000(v0, v7, v8, v9, v1 + v6);
}

uint64_t sub_26A7D4BC4()
{
  v1 = *(type metadata accessor for LoadableText.Source(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26A7D4650(v0 + v2, v3);
}

uint64_t sub_26A7D4C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = type metadata accessor for LoadableText.Source.URLImage(0);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3930, &qword_26A85BD00);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for LoadableText.Source(0);
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v39 = &v33 - v13;
  MEMORY[0x28223BE20](v14);
  v34 = v2;
  v15 = *v2;
  sub_26A8526B8();
  v44 = a1;
  sub_26A538DC4();
  v16 = sub_26A8526F8();
  v17 = -1 << *(v15 + 32);
  v18 = v16 & ~v17;
  v43 = v15 + 56;
  if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
LABEL_14:
    v28 = 1;
    v29 = v35;
    return __swift_storeEnumTagSinglePayload(v29, v28, 1, v9);
  }

  v41 = ~v17;
  v42 = *(v42 + 72);
  v36 = v9;
  v38 = v15;
  while (1)
  {
    v40 = v42 * v18;
    sub_26A7D5528();
    v19 = &v8[*(v6 + 48)];
    sub_26A7D5528();
    sub_26A7D5528();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_26A7D5528();
    v20 = v11[1];
    v51[0] = *v11;
    v51[1] = v20;
    v52[0] = v11[2];
    *(v52 + 9) = *(v11 + 41);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A7D5AD4();
      sub_26A5393B4(v51);
      goto LABEL_10;
    }

    v21 = *(v19 + 1);
    v49[0] = *v19;
    v49[1] = v21;
    v23 = *v19;
    v22 = *(v19 + 1);
    v50[0] = *(v19 + 2);
    *(v50 + 9) = *(v19 + 41);
    v24 = v11[1];
    v47[0] = *v11;
    v47[1] = v24;
    v48[0] = v11[2];
    *(v48 + 9) = *(v11 + 41);
    v45[0] = v23;
    v45[1] = v22;
    v46[0] = *(v19 + 2);
    *(v46 + 9) = *(v19 + 41);
    v25 = sub_26A538794(v47, v45);
    sub_26A7D5AD4();
    sub_26A5393B4(v49);
    sub_26A5393B4(v51);
    if (v25)
    {
      goto LABEL_15;
    }

    sub_26A7D5AD4();
LABEL_13:
    v18 = (v18 + 1) & v41;
    if (((*(v43 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_26A7D5528();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A7D5AD4();
    sub_26A7D5AD4();
LABEL_10:
    sub_26A4DBD10(v8, &unk_2803B3930, &qword_26A85BD00);
    goto LABEL_13;
  }

  sub_26A7D5A60();
  sub_26A538054();
  v27 = v26;
  sub_26A7D5AD4();
  sub_26A7D5AD4();
  sub_26A7D5AD4();
  if ((v27 & 1) == 0)
  {
    sub_26A7D5AD4();
    v9 = v36;
    goto LABEL_13;
  }

LABEL_15:
  sub_26A7D5AD4();
  v30 = v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v51[0] = *v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26A6BC35C();
  }

  v29 = v35;
  sub_26A7D5A60();
  sub_26A7D5204(v18);
  v28 = 0;
  *v30 = *&v51[0];
  v9 = v36;
  return __swift_storeEnumTagSinglePayload(v29, v28, 1, v9);
}

void sub_26A7D5204(int64_t a1)
{
  v25 = type metadata accessor for LoadableText.Source(0);
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = *v1;
  v5 = *v1 + 56;
  v6 = -1 << *(*v1 + 32);
  v7 = (a1 + 1) & ~v6;
  if (((1 << v7) & *(v5 + 8 * (v7 >> 6))) != 0)
  {
    v8 = ~v6;

    v9 = sub_26A852138();
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) != 0)
    {
      v10 = (v9 + 1) & v8;
      v11 = *(v3 + 72);
      while (1)
      {
        v12 = v11 * v7;
        sub_26A7D5528();
        sub_26A8526B8();
        sub_26A538DC4();
        v13 = sub_26A8526F8();
        sub_26A7D5AD4();
        v14 = v13 & v8;
        if (a1 >= v10)
        {
          if (v14 < v10 || a1 < v14)
          {
            goto LABEL_24;
          }
        }

        else if (v14 < v10 && a1 < v14)
        {
          goto LABEL_24;
        }

        v17 = *(v4 + 48);
        v18 = v11 * a1;
        v19 = v17 + v11 * a1;
        v20 = v17 + v12 + v11;
        if (v11 * a1 < v12 || v19 >= v20)
        {
          break;
        }

        a1 = v7;
        if (v18 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v7 = (v7 + 1) & v8;
        if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v7;
      goto LABEL_24;
    }

LABEL_25:

    *(v5 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v5 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v4 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v24;
    ++*(v4 + 36);
  }
}

uint64_t sub_26A7D549C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26A7D49A0(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t type metadata accessor for DynamicFormattedTextView(uint64_t a1)
{
  result = qword_28157E1A8;
  if (!qword_28157E1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7D5528()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_26A7D5580()
{
  result = qword_2803B8328;
  if (!qword_2803B8328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8318, &qword_26A8857B8);
    sub_26A7D5640(&qword_2803ABCA0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8328);
  }

  return result;
}

uint64_t sub_26A7D5640(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_10_6();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26A7D56AC(uint64_t a1)
{
  sub_26A7D57F8(319);
  if (v1 <= 0x3F)
  {
    sub_26A7D5888(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_26A5E8F44(319, &qword_2803AB0C8, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        sub_26A7D5888(319, &qword_2803B28A0, MEMORY[0x277CE0A00]);
        if (v4 <= 0x3F)
        {
          sub_26A67A8EC(319);
          if (v5 <= 0x3F)
          {
            sub_26A5E8F44(319, &qword_2803AB788, MEMORY[0x277D839B0]);
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

void sub_26A7D57F8(uint64_t a1)
{
  if (!qword_2803B8330)
  {
    type metadata accessor for DynamicFormattedTextView.TextCache();
    sub_26A7D5640(&qword_2803B8310, v1, type metadata accessor for DynamicFormattedTextView.TextCache);
    v2 = sub_26A84F288();
    if (!v3)
    {
      atomic_store(v2, &qword_2803B8330);
    }
  }
}

void sub_26A7D5888(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_10_6();
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26A7D58E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 42))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 41);
      if (v3 <= 5)
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

uint64_t sub_26A7D5924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

unint64_t sub_26A7D59A8()
{
  result = qword_2803B8340;
  if (!qword_2803B8340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8338, &qword_26A885C10);
    sub_26A54FF6C(&qword_2803B8348, &qword_2803B8350, &qword_26A885C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8340);
  }

  return result;
}

uint64_t sub_26A7D5A60()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A7D5AD4()
{
  v1 = OUTLINED_FUNCTION_31_3();
  v2(v1);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26A7D5B40(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = OUTLINED_FUNCTION_31_3();
  v5 = type metadata accessor for DynamicFormattedTextView(v4);
  OUTLINED_FUNCTION_79(v5);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a2(v2, v7);
}

uint64_t sub_26A7D5BBC@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for DynamicFormattedTextView(0);
  OUTLINED_FUNCTION_33_10();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_26A4EC448(*(v3 + 8), *(v3 + 16), *(v3 + 24));

  if (*(v3 + 64))
  {
    sub_26A4EC448(*(v3 + 40), *(v3 + 48), *(v3 + 56));
  }

  sub_26A4EC448(*(v3 + 72), *(v3 + 80), *(v3 + 88));

  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = OUTLINED_FUNCTION_6_47(v1[7]);
  sub_26A49035C(v6, v7);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CA0, &qword_26A87C5D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A850438();
    OUTLINED_FUNCTION_46();
    (*(v9 + 8))(v3 + v8);
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_47(v1[9]);
  j__swift_release();
  v10 = OUTLINED_FUNCTION_6_47(v1[10]);
  sub_26A49035C(v10, v11);
  v12 = OUTLINED_FUNCTION_6_47(v1[11]);
  sub_26A49035C(v12, v13);

  return swift_deallocObject();
}

uint64_t sub_26A7D5DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DynamicFormattedTextView(0);
  OUTLINED_FUNCTION_79(v4);

  return sub_26A7D2BC8(a1, a2);
}

unint64_t sub_26A7D5E74()
{
  result = qword_2803B8380;
  if (!qword_2803B8380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8378, &qword_26A885CB0);
    sub_26A6E4C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8380);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FormattedTextModel.Run.VoiceOver(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A7D5FDC()
{
  result = qword_2803B8388;
  if (!qword_2803B8388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8390, qword_26A885CC8);
    sub_26A7D59A8();
    sub_26A7D5640(&qword_2803ABCA0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8388);
  }

  return result;
}

unint64_t sub_26A7D60A0()
{
  result = qword_2803B8398;
  if (!qword_2803B8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8398);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_32(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

double OUTLINED_FUNCTION_22_31()
{

  return result;
}

uint64_t FactItemShortHeroNumberView.init(number:text1:text2:text3:text4:unit:thumbnail:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a7;
  v46 = a3;
  v50 = a6;
  v51 = a5;
  v52 = a4;
  v48 = a2;
  v49 = a1;
  v47 = a8;
  v8 = type metadata accessor for FactItemShortHeroNumberView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  v13 = __swift_project_value_buffer(v12, qword_2803D1A70);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v15 = &v11[*(v14 + 32)];
  sub_26A505CD4(v13, v15, &qword_2803AB6F0, &qword_26A86A0B0);
  sub_26A6AEE74(v55);
  memcpy(v11, v55, 0xBFuLL);
  sub_26A60E54C(v15 + *(v12 + 36), &v11[*(v14 + 28)]);
  v16 = &v11[v8[5]];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v56[0] = xmmword_281588758;
  v56[1] = unk_281588768;
  v56[2] = xmmword_281588778;
  v56[3] = xmmword_281588788;
  v57 = xmmword_281588758;
  v58 = unk_281588768;
  v59 = xmmword_281588778;
  v60 = xmmword_281588788;
  v43 = xmmword_281588788;
  v44 = xmmword_281588778;
  sub_26A505CD4(v56, v61, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v61);
  memcpy(v16, v61, 0xC0uLL);
  v17 = v43;
  *(v16 + 12) = v44;
  *(v16 + 13) = v17;
  v18 = v58;
  *(v16 + 14) = v57;
  *(v16 + 15) = v18;
  v19 = v60;
  *(v16 + 16) = v59;
  *(v16 + 17) = v19;
  v20 = v8[6];
  *&v11[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v21 = v8[7];
  *&v11[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v22 = &v11[v8[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v49;
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  v24 = OUTLINED_FUNCTION_3_89();
  *&v11[v8[9]] = v25(v24);
  v26 = v48;
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  v27 = OUTLINED_FUNCTION_3_89();
  *&v11[v8[10]] = v28(v27);
  v29 = v46;
  sub_26A505CD4(v46, v53, &qword_2803A91B8, &qword_26A8575C0);
  if (v54)
  {
    v30 = OUTLINED_FUNCTION_0_96();
    v31(v30);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A6A1DE4(v53, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  v32 = v45;
  *&v11[v8[11]] = v22;
  sub_26A505CD4(v52, v53, &qword_2803A91B8, &qword_26A8575C0);
  if (v54)
  {
    v33 = OUTLINED_FUNCTION_0_96();
    v34(v33);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A6A1DE4(v53, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  *&v11[v8[12]] = v22;
  sub_26A505CD4(v51, v53, &qword_2803A91B8, &qword_26A8575C0);
  if (v54)
  {
    v35 = OUTLINED_FUNCTION_0_96();
    v36(v35);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A6A1DE4(v53, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  *&v11[v8[13]] = v22;
  sub_26A505CD4(v50, v53, &qword_2803A91B8, &qword_26A8575C0);
  if (v54)
  {
    v37 = OUTLINED_FUNCTION_0_96();
    v38(v37);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A6A1DE4(v53, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  *&v11[v8[14]] = v22;
  sub_26A505CD4(v32, v53, &qword_2803A91B8, &qword_26A8575C0);
  if (v54)
  {
    v39 = OUTLINED_FUNCTION_0_96();
    v41 = v40(v39);
    OUTLINED_FUNCTION_5_77(v32);
    OUTLINED_FUNCTION_5_77(v50);
    OUTLINED_FUNCTION_5_77(v51);
    OUTLINED_FUNCTION_5_77(v52);
    OUTLINED_FUNCTION_5_77(v29);
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    OUTLINED_FUNCTION_4_83(v32);
    OUTLINED_FUNCTION_4_83(v50);
    OUTLINED_FUNCTION_4_83(v51);
    OUTLINED_FUNCTION_4_83(v52);
    OUTLINED_FUNCTION_4_83(v29);
    OUTLINED_FUNCTION_4_83(v53);
    v41 = 0;
  }

  *&v11[v8[15]] = v41;
  sub_26A7D681C(v11, v47);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t type metadata accessor for FactItemShortHeroNumberView(uint64_t a1)
{
  result = qword_2803B8538;
  if (!qword_2803B8538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7D681C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FactItemShortHeroNumberView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7D6880@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FactItemShortHeroNumberView(0);
  sub_26A505CD4(v1 + *(v10 + 24), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A505C8C(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A7D6A68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FactItemShortHeroNumberView(0);
  sub_26A505CD4(v1 + *(v10 + 28), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A7D6C70()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for FactItemShortHeroNumberView(0) + 32);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t FactItemShortHeroNumberView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A7D6880(&v15[-v7]);
  sub_26A7D6FF4(v17);
  sub_26A7D6C70();
  sub_26A7D6A68(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v16 = v1;
  sub_26A4CF258();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CCBC;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8530, &unk_26A885DD0) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  return result;
}

void sub_26A7D6FF4(uint64_t a1@<X8>)
{
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  v3 = 0uLL;
  if (byte_2803B0440 == 1)
  {
    v4 = sub_26A7D6C70();
    if (sub_26A61B05C(v4, &unk_287B13090))
    {
      v5 = type metadata accessor for FactItemShortHeroNumberView(0);
      v6 = 0;
      v7 = (v1 + *(v5 + 20));
      __asm { FMOV            V0.2D, #10.0 }

      v3 = vaddq_f64(v7[12], _Q0);
      v13 = vaddq_f64(v7[13], _Q0);
    }

    else
    {
      v6 = 1;
      v13 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v6 = 1;
    v13 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v13;
  *(a1 + 32) = v6;
}

uint64_t sub_26A7D70B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9740, &qword_26A855758);
  MEMORY[0x28223BE20](v32);
  v4 = &v30 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8558, &unk_26A885E80);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9730, &qword_26A855750);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9720, &qword_26A885E90);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = sub_26A84F3A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A7D6A68(v16);
  v17 = sub_26A84F388();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    *v9 = sub_26A84FC08();
    *(v9 + 1) = 0;
    v9[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8568, &unk_26A885F00);
    sub_26A7D8B38(a1);
    sub_26A851458();
    sub_26A84F628();
    sub_26A505C8C(v9, v12, &qword_2803A9730, &qword_26A855750);
    memcpy(&v12[*(v10 + 36)], __src, 0x70uLL);
    sub_26A505CD4(v12, v6, &qword_2803A9720, &qword_26A885E90);
    swift_storeEnumTagMultiPayload();
    sub_26A4D4134();
    sub_26A4D41EC();
    sub_26A84FDF8();
    return sub_26A6A1DE4(v12, &qword_2803A9720, &qword_26A885E90);
  }

  else
  {
    v19 = v6;
    v20 = v32;
    v21 = type metadata accessor for FactItemShortHeroNumberView(0);
    if (*(a1 + v21[11]) || *(a1 + v21[12]) || *(a1 + v21[13]))
    {
      if (qword_2803A8E00 != -1)
      {
        swift_once();
      }

      v22 = 0;
      v23 = qword_2803D2390;
    }

    else
    {
      v22 = 1;
      v23 = sub_26A84FA78();
    }

    v24 = sub_26A84FA78();
    v25 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 32);
    *v4 = v24;
    *(v4 + 1) = v25;
    v4[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8560, &unk_26A885E98);
    sub_26A7D75D0(a1, v23, v22, &v4[*(v26 + 44)]);
    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9750, &qword_26A855760) + 36)] = 256;
    KeyPath = swift_getKeyPath();
    v28 = swift_getKeyPath();
    v29 = &v4[*(v20 + 36)];
    *v29 = KeyPath;
    v29[8] = 0;
    *(v29 + 2) = v28;
    *(v29 + 12) = 256;
    sub_26A505CD4(v4, v19, &qword_2803A9740, &qword_26A855758);
    swift_storeEnumTagMultiPayload();
    sub_26A4D4134();
    sub_26A4D41EC();
    sub_26A84FDF8();
    return sub_26A6A1DE4(v4, &qword_2803A9740, &qword_26A855758);
  }
}

uint64_t sub_26A7D75D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v42 = a2;
  v40 = a1;
  v45 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8570, &qword_26A885FC8);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = sub_26A84B1D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA488, &qword_26A8560C0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v41 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v40 - v18);
  v20 = *(a1 + *(type metadata accessor for FactItemShortHeroNumberView(0) + 60));
  (*(v11 + 104))(v13, *MEMORY[0x277D62B38], v10);
  KeyPath = swift_getKeyPath();
  v22 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0) + 36));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  (*(v11 + 32))(v22 + v23, v13, v10);
  __swift_storeEnumTagSinglePayload(v22 + v23, 0, 1, v10);
  *v22 = KeyPath;
  *v19 = v20;
  v24 = swift_getKeyPath();
  v25 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448, &qword_26A885F60) + 36);
  *v25 = v24;
  v25[8] = 1;
  v26 = swift_getKeyPath();
  v27 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430, &qword_26A855F90) + 36);
  *v27 = v26;
  v27[8] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v29 = v40;
  v30 = *(v40 + *(v28 + 28) + 32);
  v31 = swift_getKeyPath();
  v32 = v19 + *(v15 + 44);
  *v32 = v31;
  v32[8] = 0;
  *(v32 + 2) = v30;
  v33 = v42;
  *v9 = v42;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8578, &qword_26A885FD0) + 44);

  sub_26A7D7A0C(v29, v44, v33, &v9[v34]);
  v35 = v41;
  sub_26A505CD4(v19, v41, &qword_2803AA488, &qword_26A8560C0);
  v36 = v43;
  sub_26A505CD4(v9, v43, &qword_2803B8570, &qword_26A885FC8);
  v37 = v45;
  sub_26A505CD4(v35, v45, &qword_2803AA488, &qword_26A8560C0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8580, &qword_26A885FD8);
  sub_26A505CD4(v36, v37 + *(v38 + 48), &qword_2803B8570, &qword_26A885FC8);
  sub_26A6A1DE4(v9, &qword_2803B8570, &qword_26A885FC8);
  sub_26A6A1DE4(v19, &qword_2803AA488, &qword_26A8560C0);
  sub_26A6A1DE4(v36, &qword_2803B8570, &qword_26A885FC8);
  return sub_26A6A1DE4(v35, &qword_2803AA488, &qword_26A8560C0);
}

uint64_t sub_26A7D7A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v4 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8588, &qword_26A885FE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8590, &qword_26A885FE8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v14);
  v16 = &v26[-v15 - 8];
  MEMORY[0x28223BE20](v17);
  v19 = &v26[-v18 - 8];
  *v9 = sub_26A84FC08();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8598, &qword_26A885FF0);
  sub_26A7D7D2C(a1, v4, &v9[*(v20 + 44)]);
  sub_26A851448();
  sub_26A84F628();
  sub_26A505C8C(v9, v16, &qword_2803B8588, &qword_26A885FE0);
  memcpy(&v16[*(v11 + 44)], __src, 0x70uLL);
  sub_26A505C8C(v16, v19, &qword_2803B8590, &qword_26A885FE8);
  v21 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 8);
  v27[0] = v25;
  v27[1] = v21;
  v28 = 0;
  sub_26A7D84F0(v4, a1);
  sub_26A505CD4(v19, v13, &qword_2803B8590, &qword_26A885FE8);
  sub_26A505CD4(v27, v26, &qword_2803B85A0, &qword_26A885FF8);
  sub_26A505CD4(v13, a4, &qword_2803B8590, &qword_26A885FE8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85A8, &unk_26A886000);
  v23 = a4 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_26A505CD4(v26, a4 + *(v22 + 64), &qword_2803B85A0, &qword_26A885FF8);
  sub_26A6A1DE4(v27, &qword_2803B85A0, &qword_26A885FF8);
  sub_26A6A1DE4(v19, &qword_2803B8590, &qword_26A885FE8);
  sub_26A6A1DE4(v26, &qword_2803B85A0, &qword_26A885FF8);
  return sub_26A6A1DE4(v13, &qword_2803B8590, &qword_26A885FE8);
}

uint64_t sub_26A7D7D2C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v33) = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85D8, &qword_26A886028);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for FactItemShortHeroNumberView(0);
  v10 = *(a1 + v9[13]);
  if (qword_2803A8FC8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B84E0, v53, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v54);
  memcpy(v52, v54, sizeof(v52));
  v53[11] = 0;
  v53[10] = sub_26A80A810;
  v51 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4EA0D8();
  sub_26A850B98();
  sub_26A6A1DE4(&v51, &qword_2803AAFE0, &qword_26A857AA0);
  v11 = sub_26A850268();
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  if (byte_2803B0440 != 1 || (v12 = sub_26A7D6C70(), !sub_26A61B05C(v12, &unk_287B13090)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  }

  sub_26A84ED48();
  v13 = v8;
  v14 = &v8[*(v4 + 36)];
  *v14 = v11;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  if (v33)
  {
    v19 = *(a1 + v9[10]);
    if (qword_2803A8FB0 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(&unk_2803B83F0, v45, &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v55);
    memcpy(v44, v55, sizeof(v44));
    v47 = 0;
    v46 = sub_26A80A810;
    v43 = v19;
    sub_26A505CD4(&v43, v41, &qword_2803A99A0, &unk_26A856800);
    v42 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A99A0, &unk_26A856800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0, &unk_26A85F860);
    sub_26A4D4C34();
    sub_26A7DA0E4();
    sub_26A84FDF8();
    v20 = &qword_2803A99A0;
    v21 = &unk_26A856800;
  }

  else
  {
    v22 = *(a1 + v9[10]);
    if (qword_2803A8FB0 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(&unk_2803B83F0, v45, &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v55);
    memcpy(v44, v55, sizeof(v44));
    v47 = 0;
    v46 = sub_26A80A810;
    v43 = v22;
    v23 = qword_2803A8E00;

    if (v23 != -1)
    {
      swift_once();
    }

    v48 = qword_2803D2390;
    v49 = sub_26A676018;
    v50 = 0;
    sub_26A505CD4(&v43, v41, &qword_2803ADBA0, &unk_26A85F860);
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A99A0, &unk_26A856800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0, &unk_26A85F860);
    sub_26A4D4C34();
    sub_26A7DA0E4();
    sub_26A84FDF8();
    v20 = &qword_2803ADBA0;
    v21 = &unk_26A85F860;
  }

  sub_26A6A1DE4(&v43, v20, v21);
  v24 = *(a1 + v9[11]);
  if (qword_2803A8FB8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B8440, v45, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v56);
  memcpy(v44, v56, sizeof(v44));
  v47 = 0;
  v46 = sub_26A80A810;
  v43 = v24;
  v25 = *(a1 + v9[12]);
  v26 = qword_2803A8FC0;

  if (v26 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B8490, v40, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v57);
  memcpy(v39, v57, sizeof(v39));
  v40[11] = 0;
  v40[10] = sub_26A80A810;
  v38 = v25;
  v27 = v8;
  v28 = v35;
  sub_26A505CD4(v27, v35, &qword_2803B85D8, &qword_26A886028);
  sub_26A505CD4(&v51, v41, &qword_2803B85E0, &qword_26A886030);
  v33 = v13;
  sub_26A505CD4(&v43, v37, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A505CD4(&v38, v36, &qword_2803AAFE0, &qword_26A857AA0);
  v29 = v34;
  sub_26A505CD4(v28, v34, &qword_2803B85D8, &qword_26A886028);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85E8, &qword_26A886038);
  sub_26A505CD4(v41, v29 + v30[12], &qword_2803B85E0, &qword_26A886030);
  sub_26A505CD4(v37, v29 + v30[16], &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A505CD4(v36, v29 + v30[20], &qword_2803AAFE0, &qword_26A857AA0);

  sub_26A6A1DE4(&v38, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(&v43, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(&v51, &qword_2803B85E0, &qword_26A886030);
  sub_26A6A1DE4(v33, &qword_2803B85D8, &qword_26A886028);
  sub_26A6A1DE4(v36, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(v37, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(v41, &qword_2803B85E0, &qword_26A886030);
  return sub_26A6A1DE4(v28, &qword_2803B85D8, &qword_26A886028);
}

uint64_t sub_26A7D84F0(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = type metadata accessor for FactItemShortHeroNumberView(0);
    v4 = *(a2 + *(v3 + 36));
    if (qword_2803A9048 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(&unk_2803D28A0, v34, &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(__src);
    memcpy(v33, __src, sizeof(v33));
    v36 = 0;
    v35 = sub_26A80A810;
    v32 = v4;
    v5 = *(a2 + *(v3 + 56));
    v6 = qword_2803A8FA8;

    if (v6 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(qword_2803B83A0, v26, &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v41);
    memcpy(v25, v41, sizeof(v25));
    v28 = 0;
    v27 = sub_26A80A810;
    v24 = v5;
    sub_26A505CD4(&v32, v20, &qword_2803A99A0, &unk_26A856800);
    sub_26A505CD4(&v24, v19, &qword_2803AAFE0, &qword_26A857AA0);
    sub_26A505CD4(v20, v21, &qword_2803A99A0, &unk_26A856800);
    sub_26A505CD4(v19, &v22, &qword_2803AAFE0, &qword_26A857AA0);

    sub_26A6A1DE4(v19, &qword_2803AAFE0, &qword_26A857AA0);
    sub_26A6A1DE4(v20, &qword_2803A99A0, &unk_26A856800);
    sub_26A505CD4(v21, v17, &qword_2803B85C0, &qword_26A886020);
    v18 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85C0, &qword_26A886020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85B8, &qword_26A886018);
    v7 = MEMORY[0x277CE14C0];
    sub_26A4DBCC8(&qword_2803B85C8, &qword_2803B85C0, &qword_26A886020, MEMORY[0x277CE14C0]);
    sub_26A4DBCC8(&qword_2803B85D0, &qword_2803B85B8, &qword_26A886018, v7);
    sub_26A84FDF8();
    sub_26A6A1DE4(v21, &qword_2803B85C0, &qword_26A886020);
    sub_26A6A1DE4(&v24, &qword_2803AAFE0, &qword_26A857AA0);
    v8 = &qword_2803A99A0;
    v9 = &unk_26A856800;
  }

  else
  {
    v10 = type metadata accessor for FactItemShortHeroNumberView(0);
    v11 = *(a2 + *(v10 + 36));
    if (qword_2803A9048 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(&unk_2803D28A0, v34, &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(__src);
    memcpy(v33, __src, sizeof(v33));
    v36 = 0;
    v35 = sub_26A80A810;
    v32 = v11;
    v12 = qword_2803A8E00;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_2803D2390;
    v37 = qword_2803D2390;
    v38 = sub_26A676018;
    v39 = 0;
    v14 = *(a2 + *(v10 + 56));
    if (qword_2803A8FA8 != -1)
    {
      swift_once();
    }

    sub_26A505CD4(qword_2803B83A0, v26, &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v41);
    memcpy(v25, v41, sizeof(v25));
    v27 = sub_26A80A810;
    v24 = v14;
    v28 = 0;
    v29 = v13;
    v30 = sub_26A676018;
    v31 = 0;
    sub_26A505CD4(&v32, v20, &qword_2803ADBA0, &unk_26A85F860);
    sub_26A505CD4(&v24, v19, &qword_2803B85B0, &qword_26A886010);
    sub_26A505CD4(v20, v21, &qword_2803ADBA0, &unk_26A85F860);
    sub_26A505CD4(v19, &v23, &qword_2803B85B0, &qword_26A886010);

    sub_26A6A1DE4(v19, &qword_2803B85B0, &qword_26A886010);
    sub_26A6A1DE4(v20, &qword_2803ADBA0, &unk_26A85F860);
    sub_26A505CD4(v21, v17, &qword_2803B85B8, &qword_26A886018);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85C0, &qword_26A886020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85B8, &qword_26A886018);
    v15 = MEMORY[0x277CE14C0];
    sub_26A4DBCC8(&qword_2803B85C8, &qword_2803B85C0, &qword_26A886020, MEMORY[0x277CE14C0]);
    sub_26A4DBCC8(&qword_2803B85D0, &qword_2803B85B8, &qword_26A886018, v15);
    sub_26A84FDF8();
    sub_26A6A1DE4(v21, &qword_2803B85B8, &qword_26A886018);
    sub_26A6A1DE4(&v24, &qword_2803B85B0, &qword_26A886010);
    v8 = &qword_2803ADBA0;
    v9 = &unk_26A85F860;
  }

  return sub_26A6A1DE4(&v32, v8, v9);
}

uint64_t sub_26A7D8B38(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v49 = v1;
  v51 = v3;
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA488, &qword_26A8560C0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v48 - v12);
  v50 = type metadata accessor for FactItemShortHeroNumberView(0);
  v14 = *(v2 + *(v50 + 60));
  (*(v5 + 104))(v7, *MEMORY[0x277D62B38], v4);
  KeyPath = swift_getKeyPath();
  v16 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  (*(v5 + 32))(v16 + v17, v7, v4);
  __swift_storeEnumTagSinglePayload(v16 + v17, 0, 1, v4);
  *v16 = KeyPath;
  *v13 = v14;
  v18 = swift_getKeyPath();
  v19 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448, &qword_26A885F60) + 36);
  *v19 = v18;
  v19[8] = 1;
  v20 = swift_getKeyPath();
  v21 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430, &qword_26A855F90) + 36);
  *v21 = v20;
  v21[8] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v23 = v49;
  v24 = v49 + *(v22 + 28);
  v25 = *(v24 + 32);
  v26 = swift_getKeyPath();
  v27 = v50;
  v28 = v13;
  v29 = v13 + *(v9 + 44);
  v30 = v23;
  *v29 = v26;
  v29[8] = 0;
  *(v29 + 2) = v25;
  v31 = *(v23 + v27[13]);
  v32 = qword_2803A8FC8;

  if (v32 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B84E0, v79, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v80);
  memcpy(v78, v80, sizeof(v78));
  v79[11] = 0;
  v79[10] = sub_26A80A810;
  v77 = v31;
  v33 = *(v30 + v27[10]);
  v34 = qword_2803A8FB0;

  if (v34 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B83F0, v70, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v81);
  memcpy(v69, v81, sizeof(v69));
  v70[11] = 0;
  v70[10] = sub_26A80A810;
  v68 = v33;

  v35 = sub_26A850268();
  v36 = *(v24 + 8);
  sub_26A84ED48();
  v71 = v35;
  v72 = v37;
  v73 = v38;
  v74 = v39;
  v75 = v40;
  v76 = 0;
  v65[0] = sub_26A84FA38();
  v65[1] = v36;
  v66 = 0;
  sub_26A7D929C(v30, v67);
  v41 = *(v30 + v27[11]);
  if (qword_2803A8FB8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B8440, v64, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v82);
  memcpy(v63, v82, sizeof(v63));
  v64[11] = 0;
  v64[10] = sub_26A80A810;
  v62 = v41;
  v42 = *(v30 + v27[12]);
  v43 = qword_2803A8FC0;

  if (v43 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B8490, v61, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v83);
  memcpy(v60, v83, sizeof(v60));
  v61[11] = 0;
  v61[10] = sub_26A80A810;
  v59 = v42;
  v44 = v28;
  v45 = v28;
  v46 = v52;
  sub_26A505CD4(v45, v52, &qword_2803AA488, &qword_26A8560C0);
  v58[0] = v46;
  sub_26A505CD4(&v77, v57, &qword_2803AAFE0, &qword_26A857AA0);
  v58[1] = v57;
  sub_26A505CD4(&v68, v56, &qword_2803AE630, &qword_26A885FC0);
  v58[2] = v56;
  sub_26A505CD4(v65, v55, &qword_2803AE638, &unk_26A861C10);
  v58[3] = v55;
  sub_26A505CD4(&v62, v54, &qword_2803AAFE0, &qword_26A857AA0);
  v58[4] = v54;
  sub_26A505CD4(&v59, v53, &qword_2803AAFE0, &qword_26A857AA0);
  v58[5] = v53;
  sub_26A594B00(v58);

  sub_26A6A1DE4(&v59, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(&v62, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(v65, &qword_2803AE638, &unk_26A861C10);
  sub_26A6A1DE4(&v68, &qword_2803AE630, &qword_26A885FC0);
  sub_26A6A1DE4(&v77, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(v44, &qword_2803AA488, &qword_26A8560C0);
  sub_26A6A1DE4(v53, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(v54, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(v55, &qword_2803AE638, &unk_26A861C10);
  sub_26A6A1DE4(v56, &qword_2803AE630, &qword_26A885FC0);
  sub_26A6A1DE4(v57, &qword_2803AAFE0, &qword_26A857AA0);
  return sub_26A6A1DE4(v46, &qword_2803AA488, &qword_26A8560C0);
}

uint64_t sub_26A7D929C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FactItemShortHeroNumberView(0);
  v5 = *(a1 + *(v4 + 36));
  if (qword_2803A9048 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803D28A0, v16, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v15, __src, sizeof(v15));
  v16[11] = 0;
  v16[10] = sub_26A80A810;
  v14 = v5;
  v6 = *(a1 + *(v4 + 56));
  v7 = qword_2803A8FA8;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(qword_2803B83A0, v13, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v18);
  memcpy(v12, v18, sizeof(v12));
  v13[11] = 0;
  v13[10] = sub_26A80A810;
  v11 = v6;
  sub_26A505CD4(&v14, v10, &qword_2803A99A0, &unk_26A856800);
  sub_26A505CD4(&v11, v9, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A505CD4(v10, a2, &qword_2803A99A0, &unk_26A856800);
  sub_26A505CD4(v9, a2 + 296, &qword_2803AAFE0, &qword_26A857AA0);

  sub_26A6A1DE4(&v11, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(&v14, &qword_2803A99A0, &unk_26A856800);
  sub_26A6A1DE4(v9, &qword_2803AAFE0, &qword_26A857AA0);
  return sub_26A6A1DE4(v10, &qword_2803A99A0, &unk_26A856800);
}

void sub_26A7D94F8(uint64_t a1)
{
  sub_26A662E30(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v2 <= 0x3F)
    {
      sub_26A4D27F4(319);
      if (v3 <= 0x3F)
      {
        sub_26A662E30(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A662E30(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
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

unint64_t sub_26A7D96C8()
{
  result = qword_2803B8548;
  if (!qword_2803B8548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8530, &unk_26A885DD0);
    sub_26A4DBCC8(&qword_2803B8550, &qword_2803A9708, &unk_26A855740, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8548);
  }

  return result;
}

void sub_26A7D97AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850328();
  v6 = sub_26A84FED8();
  v7 = MEMORY[0x277CE04F8];
  v8 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570F0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v10 = qword_281588998;
  *(v9 + 32) = qword_281588998;
  v11 = byte_2815889A0;
  *(v9 + 40) = byte_2815889A0;
  *(v9 + 48) = 1;
  *(v9 + 56) = 3;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  sub_26A850468();
  sub_26A8503A8();
  v13 = sub_26A850428();

  v14 = sub_26A84FEA8();
  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 104) = v14;
  *(inited + 96) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v15 = sub_26A8516A8();
  sub_26A850408();
  sub_26A8503A8();
  sub_26A850428();

  sub_26A84FED8();
  sub_26A80D690(v15);
}

uint64_t sub_26A7D9A54()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, v16, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588898, v14, &qword_2803AA880, &unk_26A8567F0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570F0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  *(v5 + 48) = 1;
  *(v5 + 56) = 3;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v11)
  {
    *(inited + 40) = v11;
    *(inited + 56) = v12;
    *(inited + 72) = v13;
  }

  else
  {
    sub_26A4F20CC(v15, inited + 40);
  }

  sub_26A6A1DE4(v14, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v9 = sub_26A8516A8();
  v15[0] = 0u;
  memset(v14, 0, sizeof(v14));
  sub_26A66DDEC(v9, &unk_2803B8440);

  sub_26A6A1DE4(v14, &qword_2803ABAC0, &unk_26A85AF60);
  return sub_26A6A1DE4(v16, &qword_2803AA880, &unk_26A8567F0);
}

uint64_t sub_26A7D9D58()
{
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2815887F8, v16, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, v14, &qword_2803AA880, &unk_26A8567F0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570F0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  *(v5 + 48) = 1;
  *(v5 + 56) = 3;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v11)
  {
    *(inited + 40) = v11;
    *(inited + 56) = v12;
    *(inited + 72) = v13;
  }

  else
  {
    sub_26A4F20CC(v15, inited + 40);
  }

  sub_26A6A1DE4(v14, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v9 = sub_26A8516A8();
  v15[0] = 0u;
  memset(v14, 0, sizeof(v14));
  sub_26A66DDEC(v9, &unk_2803B8490);

  sub_26A6A1DE4(v14, &qword_2803ABAC0, &unk_26A85AF60);
  return sub_26A6A1DE4(v16, &qword_2803AA880, &unk_26A8567F0);
}

uint64_t sub_26A7DA088(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  return sub_26A505CD4(a3, a4, &qword_2803AA880, &unk_26A8567F0);
}

unint64_t sub_26A7DA0E4()
{
  result = qword_2803B6800;
  if (!qword_2803B6800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADBA0, &unk_26A85F860);
    sub_26A4D4C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6800);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_83(uint64_t a1)
{

  return sub_26A6A1DE4(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_5_77(uint64_t a1)
{

  return sub_26A6A1DE4(a1, v1, v2);
}

uint64_t SliderView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SliderView(0);
  v5 = a2 + v4[6];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a2 + v4[7];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = sub_26A84E1E8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a2, a1, v7);
  v9 = sub_26A84E1A8();
  if (v10)
  {
    sub_26A84E1D8();
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  result = (*(v8 + 8))(a1, v7);
  v14 = (a2 + v4[5]);
  *v14 = v12;
  v14[1] = 0;
  return result;
}

uint64_t type metadata accessor for SliderView(uint64_t a1)
{
  result = qword_2803B85F8;
  if (!qword_2803B85F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7DA34C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = (v0 + *(type metadata accessor for SliderView(0) + 28));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26A851EA8();
    v9 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v9, &dword_26A48D000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v11, v12, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v4 + 8))(v1, v2);
    return v14;
  }

  return v7;
}

uint64_t SliderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SliderView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26A7DA590(v1, a1);
  sub_26A74D864(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26A7DADEC(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B85F0, &qword_26A886090);
  v9 = (a1 + *(result + 36));
  *v9 = sub_26A7DAE50;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

void sub_26A7DA590(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8640, &qword_26A886118);
  MEMORY[0x28223BE20](v35);
  v5 = &v32 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8648, &qword_26A886120);
  MEMORY[0x28223BE20](v33);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8638, &qword_26A886110);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = sub_26A84E1B8();
  v16 = v15;
  v17 = (a1 + *(type metadata accessor for SliderView(0) + 20));
  v18 = *v17;
  v19 = v17[1];
  if (v16)
  {
    v40 = v18;
    v41 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50B8, &qword_26A879660);
    sub_26A851078();
    v20 = v37;
    v21 = v38;
    v22 = v39;
    sub_26A84E1D8();
    v24 = v23;
    sub_26A84E1C8();
    if (v24 <= v25)
    {
      v37 = v20;
      v38 = v21;
      v39 = v22;
      v40 = v24;
      v41 = v25;
      sub_26A7DABAC(MEMORY[0x277D636E8], v9);
      sub_26A7DABAC(MEMORY[0x277D636F0], v34);
      sub_26A7DB258();
      sub_26A56EB70();
      sub_26A851198();
LABEL_6:
      (*(v11 + 16))(v5, v13, v10);
      swift_storeEnumTagMultiPayload();
      sub_26A7DB1F4();
      sub_26A84FDF8();
      (*(v11 + 8))(v13, v10);
      return;
    }

    __break(1u);
  }

  else
  {
    v32 = a2;
    v40 = v18;
    v41 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B50B8, &qword_26A879660);
    sub_26A851078();
    v27 = v37;
    v26 = v38;
    v28 = v39;
    sub_26A84E1D8();
    v30 = v29;
    sub_26A84E1C8();
    if (v30 <= v31)
    {
      v37 = v27;
      v38 = v26;
      v39 = v28;
      v40 = v30;
      v41 = v31;
      v36 = v14;
      sub_26A7DABAC(MEMORY[0x277D636E8], v9);
      sub_26A7DABAC(MEMORY[0x277D636F0], v34);
      sub_26A7DB258();
      sub_26A56EB70();
      sub_26A8511A8();
      goto LABEL_6;
    }
  }

  __break(1u);
}

double sub_26A7DAA2C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = v0 + *(type metadata accessor for SliderView(0) + 24);
  v7 = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v8, &dword_26A48D000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v7, 0);
    (*(v4 + 8))(v1, v2);
    v7 = v14;
  }

  if ((v7 - 1) < 8)
  {
    return dbl_26A886128[v7 - 1];
  }

  v13 = sub_26A851E98();
  sub_26A7A6570(v13, 1, "SnippetUI/Context.swift", 23, 2, 635, "idiom", 5, 2);
  return 40.0;
}

uint64_t sub_26A7DABAC@<X0>(void (*a1)(__n128)@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_26A84BD28();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v19 - v11;
  a1(v10);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {
    sub_26A565064(v12);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE40, &qword_26A8643A0);
    v14 = a2;
    v15 = 1;
  }

  else
  {
    (*(v7 + 16))(v2, v12, v5);
    VisualPropertyView.init(_:)(v2, a2);
    (*(v7 + 8))(v12, v5);
    sub_26A7DAA2C();
    sub_26A7DAA2C();
    sub_26A851448();
    sub_26A84F028();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE40, &qword_26A8643A0);
    v16 = (a2 + *(v13 + 36));
    v17 = v19[1];
    *v16 = v19[0];
    v16[1] = v17;
    v16[2] = v19[2];
    v14 = a2;
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
}

uint64_t sub_26A7DADA4()
{
  sub_26A7DA34C();
  sub_26A84EB98();
}

uint64_t sub_26A7DADEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SliderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7DAE50()
{
  type metadata accessor for SliderView(0);

  return sub_26A7DADA4();
}

void sub_26A7DAEF8(uint64_t a1)
{
  sub_26A84E1E8();
  if (v1 <= 0x3F)
  {
    sub_26A7DAFAC();
    if (v2 <= 0x3F)
    {
      sub_26A4EEA70(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        sub_26A7DAFFC(319);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A7DAFAC()
{
  if (!qword_2803B4FA8)
  {
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B4FA8);
    }
  }
}

void sub_26A7DAFFC(uint64_t a1)
{
  if (!qword_2803B3E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFA68, &qword_26A86B340);
    v1 = sub_26A84EEA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B3E98);
    }
  }
}

unint64_t sub_26A7DB060()
{
  result = qword_2803B8608;
  if (!qword_2803B8608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B85F0, &qword_26A886090);
    sub_26A7DB0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8608);
  }

  return result;
}

unint64_t sub_26A7DB0EC()
{
  result = qword_2803B8610;
  if (!qword_2803B8610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8618, &qword_26A886100);
    sub_26A7DB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8610);
  }

  return result;
}

unint64_t sub_26A7DB170()
{
  result = qword_2803B8620;
  if (!qword_2803B8620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8628, &qword_26A886108);
    sub_26A7DB1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8620);
  }

  return result;
}

unint64_t sub_26A7DB1F4()
{
  result = qword_2803B8630;
  if (!qword_2803B8630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8638, &qword_26A886110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8630);
  }

  return result;
}

unint64_t sub_26A7DB258()
{
  result = qword_2803B8650;
  if (!qword_2803B8650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8648, &qword_26A886120);
    sub_26A5BEB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8650);
  }

  return result;
}

uint64_t sub_26A7DB30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A7DB400();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26A7DB370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A7DB400();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26A7DB3D4(uint64_t a1)
{
  sub_26A7DB400();
  sub_26A8500D8();
  __break(1u);
}

unint64_t sub_26A7DB400()
{
  result = qword_2803B8658;
  if (!qword_2803B8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8658);
  }

  return result;
}

id sub_26A7DB454(uint64_t a1, unint64_t a2, __n128 a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata(a3));
  OUTLINED_FUNCTION_0_97();
  v7 = sub_26A84ABC8();
  v8 = [v3 initWithData_];

  sub_26A513D40(a1, a2);
  return v8;
}

uint64_t Image.init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  sub_26A7DB540();
  v5 = OUTLINED_FUNCTION_0_97();
  sub_26A54D260(v5, v6);
  if (!sub_26A7DB454(a1, a2, v7))
  {
    sub_26A54D2B8(a1, a2);
    return 0;
  }

  _s7SwiftUI5ImageV07SnippetB0E06nativeC0ACSo7UIImageC_tcfC_0();
  v8 = OUTLINED_FUNCTION_0_97();
  sub_26A54D2B8(v8, v9);
  return v2;
}

unint64_t sub_26A7DB540()
{
  result = qword_28157D7E0;
  if (!qword_28157D7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28157D7E0);
  }

  return result;
}

uint64_t static UIImage.imageData(for:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_26A7DB540();

  v6 = a3;
  v7 = sub_26A7DB618(a1, a2, a3, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = UIImage.asPNGData()();

  return v9;
}

id sub_26A7DB618(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_26A851788();

  v8 = [swift_getObjCClassFromMetadata(v7) imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v8;
}

uint64_t UIImage.asPNGData()()
{
  v1 = UIImagePNGRepresentation(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A84ABF8();

  return v3;
}

UIImage_optional __swiftcall UIImage.init(systemName:accessibilityDescription:)(Swift::String systemName, Swift::String_optional accessibilityDescription)
{

  swift_getObjCClassFromMetadata(v3);
  OUTLINED_FUNCTION_0_97();
  v4 = sub_26A851788();

  v5 = [v2 systemImageNamed_];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

void RFVisualProperty.asVisualProperty()()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v58 = sub_26A84BA88();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = sub_26A4EC1C4(v0, &selRef_visual_elements, &qword_28157D848, 0x277D4C188);
  if (!v12)
  {
    sub_26A851E98();
    LOBYTE(v51) = 2;
    OUTLINED_FUNCTION_26_19();
    sub_26A7A88B4(v26, v27, v28, v29, v30, 16, v31, 18, v51, v52, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62, v63, *(&v63 + 1), v64, *(&v64 + 1));
    v66 = sub_26A7DBE8C(MEMORY[0x277D84F90], v32);
    goto LABEL_31;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  v15 = sub_26A73670C();
  v16 = v15;
  v57 = v13;
  if (!v14)
  {
    if (v15)
    {
      v56 = v3;
      *&v63 = MEMORY[0x277D84F90];
      sub_26A7DCBAC(0, v15 & ~(v15 >> 63), 0);
      if (v16 < 0)
      {
        goto LABEL_34;
      }

      v34 = 0;
      v35 = v63;
      v36 = v13 & 0xC000000000000001;
      do
      {
        if (v36)
        {
          v37 = MEMORY[0x26D6644E0](v34, v13);
        }

        else
        {
          v37 = *(v13 + 8 * v34 + 32);
        }

        v38 = v37;
        RFVisualElement.asVisualElement()();

        *&v63 = v35;
        v40 = *(v35 + 16);
        v39 = *(v35 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_26A7DCBAC(v39 > 1, v40 + 1, 1);
          v35 = v63;
        }

        ++v34;
        *(v35 + 16) = v40 + 1;
        OUTLINED_FUNCTION_63_2();
        (*(v5 + 32))(v35 + v41 + *(v5 + 72) * v40, v8, v58);
        v13 = v57;
      }

      while (v16 != v34);
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    v49 = sub_26A7DBE8C(v35, v48);

    v66 = v49;
LABEL_31:
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8660, &unk_26A886270);
    v50 = sub_26A7E021C();
    OUTLINED_FUNCTION_25_26(v50);
LABEL_32:
    OUTLINED_FUNCTION_27_0();
    return;
  }

  if (!v15)
  {
    v42 = v1;

    v19 = MEMORY[0x277D84F90];
LABEL_25:
    v43 = sub_26A7DBE8C(v19, v33);

    v65 = 0;
    v66 = v43;
    v63 = 0u;
    v64 = 0u;
    v44 = [v14 commandItem];
    v45 = v44;
    if (v44)
    {
      v46 = sub_26A4EC5B0(0, &qword_2803B8668, 0x277D4C2B0);
      v44 = sub_26A7E0280();
    }

    else
    {
      v46 = 0;
      *(&v59 + 1) = 0;
      *&v60 = 0;
    }

    *&v59 = v45;
    *(&v60 + 1) = v46;
    v61 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8660, &unk_26A886270);
    v47 = sub_26A7E021C();
    OUTLINED_FUNCTION_25_26(v47);

    goto LABEL_32;
  }

  v54 = v14;
  v56 = v3;
  *&v63 = MEMORY[0x277D84F90];
  v55 = v1;
  v17 = v1;
  sub_26A7DCBAC(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v19 = v63;
    v20 = v13 & 0xC000000000000001;
    do
    {
      if (v20)
      {
        v21 = MEMORY[0x26D6644E0](v18, v13);
      }

      else
      {
        v21 = *(v13 + 8 * v18 + 32);
      }

      v22 = v21;
      RFVisualElement.asVisualElement()();

      *&v63 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_26A7DCBAC(v23 > 1, v24 + 1, 1);
        v19 = v63;
      }

      ++v18;
      *(v19 + 16) = v24 + 1;
      OUTLINED_FUNCTION_63_2();
      (*(v5 + 32))(v19 + v25 + *(v5 + 72) * v24, v11, v58);
      v13 = v57;
    }

    while (v16 != v18);

    v1 = v55;
    v14 = v54;
    goto LABEL_25;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}