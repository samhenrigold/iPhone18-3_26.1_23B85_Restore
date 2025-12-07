unint64_t sub_1C047AAE0()
{
  result = (*(*v0 + 184))();
  if (result > 0x21 || ((1 << result) & 0x327000000) == 0)
  {
    sub_1C047ABF8(1);
    result = sub_1C04F6490();
    if (v4 == 5)
    {
      sub_1C047ACAC();
      v3 = (*(*v0 + 488))();
      sub_1C047AE18(v3 & 1);
    }
  }

  return result;
}

uint64_t sub_1C047ABF8(uint64_t a1)
{
  v1 = a1;

  sub_1C047AC48(v1);
}

void sub_1C047AC48(char a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  *(v1 + 16) = a1;

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1C047ACAC()
{
  OUTLINED_FUNCTION_141();
  swift_beginAccess();

  v0 = sub_1C047AD00();

  return v0;
}

uint64_t sub_1C047AD00()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v0);
  return v2;
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1)
{
  *(v5 - 144) = v1;

  return sub_1C049FB48(v4, v3, 0xD00000000000001BLL, v2 | 0x8000000000000000, a1);
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_21_4()
{

  return swift_task_alloc();
}

void sub_1C047AE18(char a1)
{
  v2 = sub_1C04F6200();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_1C04F5340();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  if ((a1 & 1) == 0)
  {
    if (qword_1EDE42870 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v19 = sub_1C04D1C14();

    if (!v19)
    {
      if (qword_1EDE44480 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
      }

      v32 = sub_1C04F6400();
      __swift_project_value_buffer(v32, qword_1EDE44DB0);
      v21 = sub_1C04F63E0();
      v33 = sub_1C04F6A20();
      if (!OUTLINED_FUNCTION_19_1(v33))
      {
        goto LABEL_20;
      }

      v25 = OUTLINED_FUNCTION_25_0();
      *v25 = 0;
      v26 = "Device hasn't completed setup, skipping warmup";
      goto LABEL_19;
    }
  }

  sub_1C047B774();
  sub_1C04F5330();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C04CBB84(v11, &qword_1EBE0CE60, &unk_1C04F9130);
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
    }

    v20 = sub_1C04F6400();
    __swift_project_value_buffer(v20, qword_1EDE44DB0);
    v21 = sub_1C04F63E0();
    v22 = sub_1C04F6A20();
    if (!OUTLINED_FUNCTION_19_1(v22))
    {
      goto LABEL_20;
    }

    v25 = OUTLINED_FUNCTION_25_0();
    *v25 = 0;
    v26 = "Could construct warmup url";
LABEL_19:
    OUTLINED_FUNCTION_13_5(&dword_1C0479000, v23, v24, v26);
    MEMORY[0x1C68DCEB0](v25, -1, -1);
LABEL_20:

    return;
  }

  (*(v14 + 32))(v18, v11, v12);
  if (qword_1EDE44480 != -1)
  {
    OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
  }

  v27 = sub_1C04F6400();
  __swift_project_value_buffer(v27, qword_1EDE44DB0);
  v28 = sub_1C04F63E0();
  v29 = sub_1C04F6A10();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_25_0();
    *v30 = 0;
    _os_log_impl(&dword_1C0479000, v28, v29, "Warming up connection if needed", v30, 2u);
    MEMORY[0x1C68DCEB0](v30, -1, -1);
  }

  sub_1C04F61D0();
  v31 = sub_1C047BB00();
  sub_1C047BBD0(v8, v18, v31 & 1, 0, 0, 0, 0);
  (*(v4 + 8))(v8, v2);
  (*(v14 + 8))(v18, v12);
}

uint64_t OUTLINED_FUNCTION_225(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return sub_1C04F6C40();
}

double OUTLINED_FUNCTION_0_18(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_21()
{
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C047B774()
{
  OUTLINED_FUNCTION_9_5(v0 + 24);

  sub_1C047B9BC();

  return OUTLINED_FUNCTION_12_4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_9@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_1C04F54A0();
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  sub_1C04A1208((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_13()
{

  JUMPOUT(0x1C68DCEB0);
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{

  return sub_1C049FB48(v1, v2, 0x6567612D72657375, 0xEA0000000000746ELL, a1);
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_9_8()
{
}

uint64_t sub_1C047B9BC()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t OUTLINED_FUNCTION_25(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v24[55] = result;
  v24[22] = result;
  v24[23] = a24;
  return result;
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x1C68DCEB0);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_4()
{
}

uint64_t OUTLINED_FUNCTION_25_6()
{

  return swift_slowAlloc();
}

uint64_t sub_1C047BAC8()
{
  OUTLINED_FUNCTION_24_0();
  v0 = sub_1C047BBA0();

  return v0 & 1;
}

uint64_t OUTLINED_FUNCTION_24_0()
{
}

uint64_t OUTLINED_FUNCTION_24_3()
{
}

uint64_t sub_1C047BBA0()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);
  os_unfair_lock_unlock(v0);
  return v2;
}

uint64_t sub_1C047BBD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v39 = a4;
  v40 = a5;
  v37 = a3;
  sub_1C04F65E0();
  OUTLINED_FUNCTION_0();
  v46 = v9;
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C04F6610();
  OUTLINED_FUNCTION_0();
  v43 = v12;
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1C04F5340();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v21 = &v36[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDE44040 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDE44D88;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v17 + 16))(&v36[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v15);
  v23 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v24 = v23 + v19;
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  (*(v17 + 32))(v25 + v23, v21, v15);
  *(v25 + v24) = v37 & 1;
  v26 = v25 + (v24 & 0xFFFFFFFFFFFFFFF8);
  v28 = v39;
  v27 = v40;
  *(v26 + 8) = v39;
  *(v26 + 16) = v27;
  v29 = (v25 + (((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v31 = v41;
  v30 = v42;
  *v29 = v41;
  v29[1] = v30;
  v53 = sub_1C047C258;
  v54 = v25;
  OUTLINED_FUNCTION_1_10();
  v50 = 1107296256;
  v51 = sub_1C047C214;
  v52 = &block_descriptor_37;
  v32 = _Block_copy(aBlock);

  sub_1C047BFEC(v28, v27);
  sub_1C047BFEC(v31, v30);
  sub_1C04F65F0();
  v48 = MEMORY[0x1E69E7CC0];
  sub_1C047C15C(qword_1EDE44180, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8F8, &qword_1C04FAA18);
  sub_1C047C1A4(&qword_1EDE44178, &qword_1EBE0D8F8, &qword_1C04FAA18, MEMORY[0x1E69E6328]);
  v33 = v45;
  v34 = v47;
  sub_1C04F6BC0();
  MEMORY[0x1C68DC350](0, v14, v33, v32);
  _Block_release(v32);
  (*(v46 + 8))(v33, v34);
  (*(v43 + 8))(v14, v44);
}

uint64_t sub_1C047BFEC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C047BFFC()
{
  MEMORY[0x1C68DCF50](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C047C034()
{
  v1 = sub_1C04F5340();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 24) & ~v4;
  v7 = (v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v6, v1);
  if (*(v0 + v7 + 8))
  {
  }

  if (*(v0 + v8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + 16, v4 | 7);
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

uint64_t sub_1C047C15C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C047C1A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1C047C214(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C047C258()
{
  v1 = sub_1C04F5340();
  OUTLINED_FUNCTION_66(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  v10 = *(v0 + v7);
  v11 = v0 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(v0 + v8);
  v15 = *(v0 + v8 + 8);

  sub_1C047C31C(v9, v0 + v6, v10, v12, v13, v14, v15);
}

void OUTLINED_FUNCTION_105_0()
{

  JUMPOUT(0x1C68DC0D0);
}

void sub_1C047C31C(uint64_t a1, uint64_t a2, int a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130 = a6;
  v131 = a7;
  v125 = a5;
  v129 = a4;
  v128 = a3;
  v8 = sub_1C04F5230();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v116[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1C04F5340();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v116[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v116[-v15];
  v17 = sub_1C04F5460();
  v134 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v133 = &v116[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D000, &qword_1C04FAA20);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v124 = &v116[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v127 = &v116[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v116[-v24];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v123 = a2;
    v132 = sub_1C04F52E0();
    v136 = v28;
    if (!v28)
    {
      if (qword_1EDE440E0 != -1)
      {
        swift_once();
      }

      v33 = sub_1C04F6400();
      __swift_project_value_buffer(v33, qword_1EDE44D90);
      v34 = v27;
      v35 = sub_1C04F63E0();
      v36 = sub_1C04F6A20();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock[0] = v38;
        *v37 = 136315138;
        v39 = sub_1C047D6CC();
        v41 = sub_1C047D76C(v39, v40, aBlock);

        *(v37 + 4) = v41;
        v42 = "Throttling warmup for session: %s couldn't infer hostname";
LABEL_23:
        v53 = v36;
        v54 = v35;
        v55 = v37;
        v56 = 12;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v121 = v9;
    if (qword_1EDE44020 != -1)
    {
      swift_once();
    }

    v30 = sub_1C047D240(v29);

    sub_1C047D284(v136, v30, v25);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v17);
    v32 = v12;
    v122 = v17;
    if (EnumTagSinglePayload)
    {
      sub_1C04CBB84(v25, &qword_1EBE0D000, &qword_1C04FAA20);
    }

    else
    {
      v44 = v133;
      v43 = v134;
      (*(v134 + 16))(v133, v25, v17);
      sub_1C04CBB84(v25, &qword_1EBE0D000, &qword_1C04FAA20);
      sub_1C04F5430();
      v46 = v45;
      (*(v43 + 8))(v44, v17);
      v47 = fabs(v46);
      if (v47 < 180.0)
      {

        if (qword_1EDE440E0 != -1)
        {
          swift_once();
        }

        v48 = sub_1C04F6400();
        __swift_project_value_buffer(v48, qword_1EDE44D90);
        v34 = v27;
        v35 = sub_1C04F63E0();
        v49 = sub_1C04F6A40();

        if (os_log_type_enabled(v35, v49))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          aBlock[0] = v38;
          *v37 = 136315394;
          v50 = sub_1C047D6CC();
          v52 = sub_1C047D76C(v50, v51, aBlock);

          *(v37 + 4) = v52;
          *(v37 + 12) = 2048;
          *(v37 + 14) = v47;
          v42 = "Throttling warmup for session: %s attempted %f seconds ago";
          v53 = v49;
          v54 = v35;
          v55 = v37;
          v56 = 22;
LABEL_24:
          _os_log_impl(&dword_1C0479000, v54, v53, v42, v55, v56);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x1C68DCEB0](v38, -1, -1);
          MEMORY[0x1C68DCEB0](v37, -1, -1);

          return;
        }

LABEL_25:

        return;
      }
    }

    if (qword_1EDE44038 != -1)
    {
      swift_once();
    }

    v57 = qword_1EDE44D80;

    Lock.lock()();
    swift_beginAccess();
    if (*(v57 + 24))
    {
      Lock.unlock()();

      if (qword_1EDE440E0 != -1)
      {
        swift_once();
      }

      v58 = sub_1C04F6400();
      __swift_project_value_buffer(v58, qword_1EDE44D90);
      v34 = v27;
      v35 = sub_1C04F63E0();
      v36 = sub_1C04F6A40();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock[0] = v38;
        *v37 = 136315138;
        v59 = sub_1C047D6CC();
        v61 = sub_1C047D76C(v59, v60, aBlock);

        *(v37 + 4) = v61;
        v42 = "Throttling warmup for session: %s: already in progress";
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v120 = v8;
    *(v57 + 24) = 1;
    Lock.unlock()();

    if (qword_1EDE440E0 != -1)
    {
      swift_once();
    }

    v62 = sub_1C04F6400();
    v63 = __swift_project_value_buffer(v62, qword_1EDE44D90);
    v64 = *(v12 + 16);
    v65 = v123;
    v64(v16, v123, v11);
    v66 = v27;
    v119 = v63;
    v67 = sub_1C04F63E0();
    v68 = sub_1C04F6A10();

    v69 = os_log_type_enabled(v67, v68);
    v118 = v66;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v70 = 136315394;
      v117 = v68;
      v72 = sub_1C047D6CC();
      v74 = sub_1C047D76C(v72, v73, aBlock);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      v75 = sub_1C04F52D0();
      v77 = v76;
      (*(v32 + 8))(v16, v11);
      v78 = sub_1C047D76C(v75, v77, aBlock);

      *(v70 + 14) = v78;
      _os_log_impl(&dword_1C0479000, v67, v117, "Warming up session %s to %s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C68DCEB0](v71, -1, -1);
      v79 = v70;
      v65 = v123;
      MEMORY[0x1C68DCEB0](v79, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v16, v11);
    }

    v80 = v129;
    v64(v126, v65, v11);
    v81 = v135;
    sub_1C04F51F0();
    sub_1C04F51B0();
    sub_1C04F51E0();
    if (v80)
    {
      v82 = v125;

      v80(v81);
      sub_1C047D1E0(v80, v82);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D900, &qword_1C04FAA28);
    swift_allocObject();
    v83 = sub_1C047D92C(0);
    v84 = sub_1C04F51C0();
    v85 = swift_allocObject();
    v86 = v118;
    swift_unknownObjectWeakInit();
    v87 = swift_allocObject();
    v87[2] = v83;
    v87[3] = v85;
    v89 = v130;
    v88 = v131;
    v87[4] = v130;
    v87[5] = v88;
    aBlock[4] = sub_1C047DFD8;
    aBlock[5] = v87;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C047DCE8;
    aBlock[3] = &block_descriptor_44;
    v90 = _Block_copy(aBlock);

    sub_1C047BFEC(v89, v88);

    v91 = [v86 dataTaskWithRequest:v84 completionHandler:v90];
    _Block_release(v90);

    v92 = v91;
    sub_1C047D9FC();

    v93 = v127;
    sub_1C04F5450();
    v94 = v122;
    __swift_storeEnumTagSinglePayload(v93, 0, 1, v122);

    v96 = sub_1C047D240(v95);
    if (__swift_getEnumTagSinglePayload(v93, 1, v94) == 1)
    {
      sub_1C04CBB84(v93, &qword_1EBE0D000, &qword_1C04FAA20);
      v97 = sub_1C047D36C();
      if (v98)
      {
        v99 = v97;
        swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF18, &qword_1C04FAA30);
        v81 = v135;
        sub_1C04F6CC0();
        v100 = aBlock[0];

        v101 = v124;
        (*(v134 + 32))(v124, *(v100 + 56) + *(v134 + 72) * v99, v122);
        sub_1C04F6CE0();
        v102 = 0;
      }

      else
      {
        v102 = 1;
        v101 = v124;
      }

      __swift_storeEnumTagSinglePayload(v101, v102, 1, v122);

      sub_1C04CBB84(v101, &qword_1EBE0D000, &qword_1C04FAA20);
    }

    else
    {
      (*(v134 + 32))(v133, v93, v122);
      swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v96;
      sub_1C047DB10();
    }

    sub_1C047DCE0();

    v103 = v86;
    v104 = sub_1C04F63E0();
    v105 = sub_1C04F6A40();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      aBlock[0] = v107;
      *v106 = 136315138;
      v108 = sub_1C047D6CC();
      v110 = sub_1C047D76C(v108, v109, aBlock);

      *(v106 + 4) = v110;
      _os_log_impl(&dword_1C0479000, v104, v105, "Kicked off connection warmup for session %s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v107);
      MEMORY[0x1C68DCEB0](v107, -1, -1);
      v111 = v106;
      v81 = v135;
      MEMORY[0x1C68DCEB0](v111, -1, -1);
    }

    v112 = v120;
    v113 = *MEMORY[0x1E696A9C8];
    v114 = v92;
    LODWORD(v115) = v113;
    [v114 setPriority_];
    [v114 set:1 preconnect:?];

    [v114 resume];

    (*(v121 + 8))(v81, v112);
  }
}

uint64_t sub_1C047D1E0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C047D1F0()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C047D24C()
{
  OUTLINED_FUNCTION_22_5();
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v0);
  return v2;
}

uint64_t sub_1C047D29C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_1C047D36C(), (a2 & 1) != 0))
  {
    v9 = v8;
    v10 = *(a3 + 56);
    v11 = a4(0);
    OUTLINED_FUNCTION_152();
    (*(v12 + 16))(a5, v10 + *(v12 + 72) * v9, v11);
    v13 = a5;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v15 = (a4)(0, a2);
    v13 = a5;
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

unint64_t sub_1C047D36C()
{
  OUTLINED_FUNCTION_312();
  sub_1C04F6E60();
  sub_1C04F67E0();
  sub_1C04F6E80();
  v0 = OUTLINED_FUNCTION_293();

  return sub_1C047D3E8(v0, v1, v2);
}

unint64_t sub_1C047D3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C04F6D80() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v18 - 120) = v17[45];
  v20 = v17[41];
  *(v18 - 112) = v17[42];
  *(v18 - 104) = v20;
  *(v18 - 96) = v17[37];

  return sub_1C04A1144(a1, a2);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_5()
{

  JUMPOUT(0x1C68DCEB0);
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1)
{
  *(v2 + 552) = a1;
  v5 = v1[9];
  v4 = v1[10];
  *(v2 + 16) = v1[8];
  *(v2 + 32) = v5;
  *(v2 + 48) = v4;
  *(v2 + 144) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 112) = 0u;

  return sub_1C04C68D4(v2 + 16, v2 + 64);
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C047D6CC()
{
  result = sub_1C04AE604(v0, &selRef_sessionDescription);
  if (!v2)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_1C047D728(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C047D76C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_312();

  OUTLINED_FUNCTION_171();
  v10 = v13[0];
  if (sub_1C047D820(v7, v8, v9, 1, v4, v3))
  {
    OUTLINED_FUNCTION_244();
    ObjectType = swift_getObjectType();
    v13[0] = v5;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v13[0] = v4;
    v13[1] = v3;
  }

  v11 = *a3;
  if (*a3)
  {
    sub_1C047D9A0(v13, *a3);
    *a3 = v11 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

unint64_t sub_1C047D820(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C049EA14(a5, a6);
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
    result = sub_1C04F6C70();
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

uint64_t sub_1C047D92C(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D908, &qword_1C04FAA38);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;

  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_1C047D9A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C047D9FC()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1C047DA64();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C047DB10()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_108();
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF18, &qword_1C04FAA30);
  OUTLINED_FUNCTION_224();
  if (sub_1C04F6CC0())
  {
    OUTLINED_FUNCTION_293();
    v9 = sub_1C047D36C();
    if ((v8 & 1) == (v10 & 1))
    {
      v7 = v9;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_1C04F6DD0();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v8)
  {
    sub_1C04F5460();
    OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_314();

    __asm { BRAA            X3, X16 }
  }

  sub_1C04A104C(v7, v3, v2, v0, *v1);
  OUTLINED_FUNCTION_314();
}

uint64_t OUTLINED_FUNCTION_113()
{

  return sub_1C04F6400();
}

unint64_t OUTLINED_FUNCTION_248()
{

  return sub_1C047D36C();
}

void sub_1C047DC98()
{
  OUTLINED_FUNCTION_11_5();
  *(v1 + 16) = v0;

  os_unfair_lock_unlock(v2);
}

uint64_t sub_1C047DCE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1C04F53C0();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1C047E0BC(v6, v10, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, vars0);
}

void sub_1C047DDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_1EDE440E0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C04F6400();
    __swift_project_value_buffer(v12, qword_1EDE44D90);
    v13 = v11;
    v14 = sub_1C04F63E0();
    v15 = sub_1C04F6A40();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = sub_1C047D6CC();
      v20 = sub_1C047D76C(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1C0479000, v14, v15, "warmup attempt complete for session %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1C68DCEB0](v17, -1, -1);
      MEMORY[0x1C68DCEB0](v16, -1, -1);
    }

    if (a7)
    {

      v21 = sub_1C04E4258();
      if (v21)
      {
        v22 = v21;
        a7(v21);
      }

      sub_1C047D1E0(a7, a8);
    }

    if (qword_1EDE44038 != -1)
    {
      swift_once();
    }

    sub_1C047DFE4(0);
  }

  sub_1C047E03C();
}

void sub_1C047DFE4(char a1)
{
  Lock.lock()();
  swift_beginAccess();
  *(v1 + 24) = a1;
  Lock.unlock()();
}

void sub_1C047E03C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1C04E5CE8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1C047E0BC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C04A1144(result, a2);
  }

  return result;
}

uint64_t sub_1C047E0D0()
{
  sub_1C047E104();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C047E104()
{
  MEMORY[0x1C68DCF50](v0 + 16);

  return v0;
}

uint64_t sub_1C047E140(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C047E48C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C047E4D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEB8, &qword_1C04F8628);
  OUTLINED_FUNCTION_152();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C047E560()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE0, &qword_1C04F8640);
  OUTLINED_FUNCTION_152();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1C047E604()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047E63C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE8, &qword_1C04F8668);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1C04F60B0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_6();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1C047E774()
{
  MEMORY[0x1C68DCF50](v0 + 16);
  OUTLINED_FUNCTION_6_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C047E7A8()
{
  v1 = sub_1C04F55B0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1C047E878()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C047E8C4()
{

  OUTLINED_FUNCTION_7_5();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C047E950()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C047E988()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C047E9E8()
{
  v1 = sub_1C04F65C0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v7 = (v4 + 72) & ~v4;
  (*(v3 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1C047EAE0()
{
  v1 = *(type metadata accessor for CancellableStoreKey(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1C04F54B0();
  OUTLINED_FUNCTION_152();
  (*(v5 + 8))(v0 + v3);

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1C047EBE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047EC44()
{
  v1 = sub_1C04F5700();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 24) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v6, v1);
  if (*(v0 + v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v7));
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1C047ED28()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C047ED60()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C047EDA0()
{
  sub_1C04F5700();
  OUTLINED_FUNCTION_152();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C047EE64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047EED8()
{
  sub_1C04F5AF0();
  OUTLINED_FUNCTION_152();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C047EF8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047EFC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C04B73D8();
  *a1 = result;
  return result;
}

uint64_t sub_1C047F098()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C047F0CC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_6_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C047F144()
{
  sub_1C04F5E70();
  OUTLINED_FUNCTION_152();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1C047F1D0()
{
  sub_1C04F5E70();
  OUTLINED_FUNCTION_152();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C047F2A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C047F2E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047F41C()
{
  sub_1C04F5790();
  OUTLINED_FUNCTION_152();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1C047F4A8()
{
  sub_1C04F5790();
  OUTLINED_FUNCTION_152();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C047F578()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C047F5B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047F5F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_44_0();
  *(v1 + 24) = v2;
  return OUTLINED_FUNCTION_12_5(v2);
}

uint64_t sub_1C047F614(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = OUTLINED_FUNCTION_44_0();
  v2[4] = v3;
  return OUTLINED_FUNCTION_12_5(v3);
}

uint64_t sub_1C047F670()
{

  v1 = OUTLINED_FUNCTION_3_12();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C047F6B0()
{

  v0 = OUTLINED_FUNCTION_3_12();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C047F6E0()
{

  v0 = OUTLINED_FUNCTION_3_12();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C047F718()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D5B8, &unk_1C04FA1B0);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C047F7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C04F54B0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C047F824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C04F54B0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C047F958()
{
  v1 = sub_1C04F5CE0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1C047FA24()
{
  sub_1C04F5CE0();
  OUTLINED_FUNCTION_152();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C047FAD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047FB18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C047FC2C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8C0, &qword_1C04FA8D8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C047FC5C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D8C8, &qword_1C04FA8E0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C047FCBC()
{
  sub_1C04F5230();
  OUTLINED_FUNCTION_1_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1C047FD4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C047FD84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t NetworkFeedbackGenerator.feedbackID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NetworkFeedbackGenerator.consumer.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void NetworkFeedbackGenerator.init(isBodyDataRedacted:consumer:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C04F54B0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_1C04F54A0();
  v15 = sub_1C04F5470();
  v17 = v16;
  (*(v10 + 8))(v14, v8);
  *v7 = v15;
  *(v7 + 8) = v17;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v1;
  OUTLINED_FUNCTION_6();
}

void NetworkFeedbackGenerator.onRequest(url:headers:bodyData:payloadSize:requestId:)()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v0;
  v46 = v3;
  v44 = v4;
  v56 = v5;
  v57 = v6;
  v51 = v7;
  v47 = v8;
  v48 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CAA0, &qword_1C04F7A40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v44 - v11;
  sub_1C04F55B0();
  OUTLINED_FUNCTION_0();
  v54 = v13;
  v55 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v52 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v49 = OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v50 = sub_1C04F5AC0();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v44 - v30;
  v32 = *(v2 + 16);
  v45 = *(v2 + 24);

  sub_1C04F5AB0();
  mach_absolute_time();
  sub_1C04F59F0();
  OUTLINED_FUNCTION_5();
  sub_1C04F59D0();
  if ((v32 & 1) == 0)
  {
    v33 = OUTLINED_FUNCTION_5();
    sub_1C048087C(v33, v34);
    OUTLINED_FUNCTION_5();
    sub_1C04F5A80();
  }

  v35 = OUTLINED_FUNCTION_5();
  if (MEMORY[0x1C68DAC70](v35) < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C04F5A20();
    if ((v46 & 1) == 0)
    {
      sub_1C04F5A40();
    }

    sub_1C04F5A50();
    if (v51)
    {

      sub_1C04F5A70();
    }

    v36 = v50;
    (*(v24 + 32))(v31, v28, v50);
    (*(v24 + 16))(v22, v31, v36);
    v37 = v49;
    (*(v18 + 104))(v22, *MEMORY[0x1E69BCB98], v49);
    sub_1C04F55A0();
    v38 = v53;
    (*(v18 + 32))(v53, v22, v37);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v37);
    sub_1C04F5580();
    v40 = v54;
    v39 = v55;
    v41 = v52;
    v42 = OUTLINED_FUNCTION_4_0();
    v43(v42);
    v45(v41);
    (*(v40 + 8))(v1, v39);
    (*(v24 + 8))(v31, v36);
    OUTLINED_FUNCTION_6();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C048087C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void NetworkFeedbackGenerator.onResponse(result:messageLength:httpURLResponse:contentSize:timingData:requestId:)()
{
  OUTLINED_FUNCTION_7_0();
  v50 = v2;
  v51 = v3;
  v47 = v4;
  v48 = v5;
  v45 = v6;
  v46 = v7;
  v43 = v8;
  v44 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CAA0, &qword_1C04F7A40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  sub_1C04F55B0();
  OUTLINED_FUNCTION_0();
  v52 = v14;
  v53 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v49 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = sub_1C04F5A10();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v32 = *v0;
  v33 = v0[1];
  v34 = *(v0 + 16);
  v35 = v0[4];
  v42 = v0[3];
  v54 = v32;
  v55 = v33;
  v56 = v34;
  v57 = v42;
  v58 = v35;
  sub_1C0480BCC(v43, v44, v45, v46, v47, v50, v51, v31);
  (*(v27 + 16))(v24, v31, v25);
  (*(v20 + 104))(v24, *MEMORY[0x1E69BCB90], v18);
  sub_1C04F55A0();
  (*(v20 + 32))(v12, v24, v18);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  sub_1C04F5580();
  v37 = v52;
  v36 = v53;
  v38 = v49;
  v39 = OUTLINED_FUNCTION_4_0();
  v40(v39);
  v42(v38);
  (*(v37 + 8))(v1, v36);
  (*(v27 + 8))(v31, v25);
  OUTLINED_FUNCTION_6();
}

void sub_1C0480BCC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void **p_cache@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v79 = a7;
  v75 = a6;
  v76 = a2;
  v77 = a4;
  v78 = a1;
  v82 = a8;
  v11 = sub_1C04F5D60();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C04F5A10();
  v80 = *(v15 - 8);
  v81 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v8 + 8);

  sub_1C04F5A00();
  mach_absolute_time();
  sub_1C04F59F0();
  sub_1C04F59D0();
  v83 = a3;
  v19 = [a3 statusCode];
  if (v19 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_84;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
    goto LABEL_5;
  }

  v20 = sub_1C04F5940();
  (p_cache)(v20);
  sub_1C04F5D30();
  sub_1C04F5960();
  sub_1C04F5950();
  v21 = sub_1C04F5D50();
  v18 = *(v12 + 8);
  v18(v14, v11);
  p_cache = &OBJC_METACLASS____TtC10PegasusKit17ParsecdConnection.cache;
  if (v21)
  {
    goto LABEL_8;
  }

  if (qword_1EDE44480 != -1)
  {
    goto LABEL_85;
  }

LABEL_5:
  v22 = sub_1C04F6400();
  __swift_project_value_buffer(v22, qword_1EDE44DB0);
  v23 = sub_1C04F63E0();
  v24 = sub_1C04F6A20();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1C0479000, v23, v24, "RPC request did not reuse connection", v25, 2u);
    MEMORY[0x1C68DCEB0](v25, -1, -1);
  }

LABEL_8:
  sub_1C04F5950();
  v26 = sub_1C04F5D40();
  v18(v14, v11);
  if (v26 >= 0x65)
  {
    if (p_cache[144] != -1)
    {
      swift_once();
    }

    v27 = sub_1C04F6400();
    __swift_project_value_buffer(v27, qword_1EDE44DB0);
    v28 = v79;

    v29 = sub_1C04F63E0();
    v30 = sub_1C04F6A10();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v28;
      v32 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v84 = v74;
      *v32 = 136446466;
      *(v32 + 4) = sub_1C047D76C(v75, v31, &v84);
      *(v32 + 12) = 2082;
      swift_beginAccess();
      sub_1C04F5950();
      swift_endAccess();
      sub_1C04821D4();
      v33 = sub_1C04F6380();
      v35 = v34;
      v18(v14, v11);
      v36 = sub_1C047D76C(v33, v35, &v84);

      *(v32 + 14) = v36;
      _os_log_impl(&dword_1C0479000, v29, v30, "Response Network Timing Data for request %{public}s: %{public}s", v32, 0x16u);
      v37 = v74;
      swift_arrayDestroy();
      MEMORY[0x1C68DCEB0](v37, -1, -1);
      MEMORY[0x1C68DCEB0](v32, -1, -1);
    }
  }

  v38 = sub_1C04F6740();
  v39 = v83;
  v40 = [v83 valueForHTTPHeaderField_];

  if (v40)
  {
    sub_1C04F6750();

    swift_beginAccess();
    sub_1C04F59C0();
    swift_endAccess();
  }

  if ([v39 statusCode] != 200)
  {
    swift_beginAccess();
    goto LABEL_38;
  }

  v41 = sub_1C04F6740();
  v42 = [v39 valueForHTTPHeaderField_];

  if (!v42)
  {
    goto LABEL_88;
  }

  v43 = sub_1C04F6750();
  v45 = v44;

  v46 = HIBYTE(v45) & 0xF;
  v47 = v43 & 0xFFFFFFFFFFFFLL;
  if ((v45 & 0x2000000000000000) != 0)
  {
    v48 = HIBYTE(v45) & 0xF;
  }

  else
  {
    v48 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {
    goto LABEL_82;
  }

  if ((v45 & 0x1000000000000000) != 0)
  {
    LOBYTE(v84) = 0;

    v51 = sub_1C049EDC0(v43, v45, 10);
    v72 = v71;

    if (v72)
    {
      goto LABEL_82;
    }

LABEL_87:
    swift_beginAccess();
    sub_1C04F5980();
    swift_endAccess();
    if (!v51)
    {
LABEL_88:
      swift_beginAccess();
      sub_1C04F5990();
      sub_1C04F59A0();
      swift_endAccess();
      v73 = v78;
      sub_1C04820C0(v78, v87);
      if (v88)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CB40, &qword_1C04F7B88);
        if (swift_dynamicCast())
        {
          if (*(&v85 + 1))
          {
            sub_1C047E140(&v84, v87);
            __swift_project_boxed_opaque_existential_1(v87, v88);
            sub_1C04F5B40();
            swift_beginAccess();
            sub_1C04F59E0();
            swift_endAccess();
            __swift_destroy_boxed_opaque_existential_1(v87);
            goto LABEL_95;
          }
        }

        else
        {
          v86 = 0;
          v84 = 0u;
          v85 = 0u;
        }
      }

      else
      {
        sub_1C0482130(v87, &qword_1EBE0CB20, &unk_1C04F8B20);
        v84 = 0u;
        v85 = 0u;
        v86 = 0;
      }

      sub_1C0482130(&v84, &qword_1EBE0CB28, &qword_1C04F7B70);
LABEL_95:
      sub_1C04820C0(v73, v87);
      v56 = v80;
      v55 = v81;
      if (v88)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB38, &qword_1C04F7B80);
        if (swift_dynamicCast())
        {
          if (*(&v85 + 1))
          {
            sub_1C047E140(&v84, v87);
            __swift_project_boxed_opaque_existential_1(v87, v88);
            sub_1C04F5B30();
            swift_beginAccess();
            sub_1C04F59B0();
            swift_endAccess();
            __swift_destroy_boxed_opaque_existential_1(v87);
            goto LABEL_102;
          }
        }

        else
        {
          v86 = 0;
          v84 = 0u;
          v85 = 0u;
        }
      }

      else
      {
        sub_1C0482130(v87, &qword_1EBE0CB20, &unk_1C04F8B20);
        v84 = 0u;
        v85 = 0u;
        v86 = 0;
      }

      sub_1C0482130(&v84, &qword_1EBE0CB30, &qword_1C04F7B78);
      goto LABEL_102;
    }

LABEL_38:
    v56 = v80;
    v55 = v81;
LABEL_102:
    (*(v56 + 16))(v82, v17, v55);
    (*(v56 + 8))(v17, v55);
    return;
  }

  if ((v45 & 0x2000000000000000) == 0)
  {
    if ((v43 & 0x1000000000000000) != 0)
    {
      v49 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v49 = sub_1C04F6C70();
    }

    v50 = *v49;
    if (v50 == 43)
    {
      if (v47 >= 1)
      {
        v46 = v47 - 1;
        if (v47 != 1)
        {
          v51 = 0;
          if (v49)
          {
            v60 = v49 + 1;
            while (1)
            {
              v61 = *v60 - 48;
              if (v61 > 9)
              {
                goto LABEL_80;
              }

              v62 = 10 * v51;
              if ((v51 * 10) >> 64 != (10 * v51) >> 63)
              {
                goto LABEL_80;
              }

              v51 = v62 + v61;
              if (__OFADD__(v62, v61))
              {
                goto LABEL_80;
              }

              ++v60;
              if (!--v46)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_80;
      }

      goto LABEL_106;
    }

    if (v50 != 45)
    {
      if (v47)
      {
        v51 = 0;
        if (v49)
        {
          while (1)
          {
            v66 = *v49 - 48;
            if (v66 > 9)
            {
              goto LABEL_80;
            }

            v67 = 10 * v51;
            if ((v51 * 10) >> 64 != (10 * v51) >> 63)
            {
              goto LABEL_80;
            }

            v51 = v67 + v66;
            if (__OFADD__(v67, v66))
            {
              goto LABEL_80;
            }

            ++v49;
            if (!--v47)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_80:
      v51 = 0;
      LOBYTE(v46) = 1;
LABEL_81:
      LOBYTE(v84) = v46;
      if (v46)
      {
LABEL_82:

        goto LABEL_88;
      }

      goto LABEL_87;
    }

    if (v47 >= 1)
    {
      v46 = v47 - 1;
      if (v47 != 1)
      {
        v51 = 0;
        if (v49)
        {
          v52 = v49 + 1;
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              goto LABEL_80;
            }

            v54 = 10 * v51;
            if ((v51 * 10) >> 64 != (10 * v51) >> 63)
            {
              goto LABEL_80;
            }

            v51 = v54 - v53;
            if (__OFSUB__(v54, v53))
            {
              goto LABEL_80;
            }

            ++v52;
            if (!--v46)
            {
              goto LABEL_81;
            }
          }
        }

LABEL_72:
        LOBYTE(v46) = 0;
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v87[0] = v43;
  v87[1] = v45 & 0xFFFFFFFFFFFFFFLL;
  if (v43 != 43)
  {
    if (v43 != 45)
    {
      if (v46)
      {
        v51 = 0;
        v68 = v87;
        while (1)
        {
          v69 = *v68 - 48;
          if (v69 > 9)
          {
            break;
          }

          v70 = 10 * v51;
          if ((v51 * 10) >> 64 != (10 * v51) >> 63)
          {
            break;
          }

          v51 = v70 + v69;
          if (__OFADD__(v70, v69))
          {
            break;
          }

          ++v68;
          if (!--v46)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    if (v46)
    {
      if (--v46)
      {
        v51 = 0;
        v57 = v87 + 1;
        while (1)
        {
          v58 = *v57 - 48;
          if (v58 > 9)
          {
            break;
          }

          v59 = 10 * v51;
          if ((v51 * 10) >> 64 != (10 * v51) >> 63)
          {
            break;
          }

          v51 = v59 - v58;
          if (__OFSUB__(v59, v58))
          {
            break;
          }

          ++v57;
          if (!--v46)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    goto LABEL_105;
  }

  if (v46)
  {
    if (--v46)
    {
      v51 = 0;
      v63 = v87 + 1;
      while (1)
      {
        v64 = *v63 - 48;
        if (v64 > 9)
        {
          break;
        }

        v65 = 10 * v51;
        if ((v51 * 10) >> 64 != (10 * v51) >> 63)
        {
          break;
        }

        v51 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          break;
        }

        ++v63;
        if (!--v46)
        {
          goto LABEL_81;
        }
      }
    }

    goto LABEL_80;
  }

LABEL_107:
  __break(1u);
}

void NetworkFeedbackGenerator.onError(_:)()
{
  OUTLINED_FUNCTION_7_0();
  v34 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CAA0, &qword_1C04F7A40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v34 - v4;
  sub_1C04F55B0();
  OUTLINED_FUNCTION_0();
  v37 = v6;
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v35 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1C04F5930();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = v0[1];
  v25 = *(v0 + 16);
  v26 = v0[3];
  v27 = v0[4];
  v39 = *v0;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  sub_1C04819E8(v34);
  (*(v19 + 16))(v16, v23, v17);
  (*(v12 + 104))(v16, *MEMORY[0x1E69BCBA0], v10);
  sub_1C04F55A0();
  v28 = v36;
  (*(v12 + 32))(v36, v16, v10);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v10);
  sub_1C04F5580();
  v30 = v37;
  v29 = v38;
  v31 = v35;
  v32 = OUTLINED_FUNCTION_4_0();
  v33(v32);
  v26(v31);
  (*(v30 + 8))(v1, v29);
  (*(v19 + 8))(v23, v17);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04819E8(char *a1)
{
  v3 = sub_1C04F5BB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  v27 = *v1;
  sub_1C04F5BA0();
  sub_1C04F5920();
  v35 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v11 = DynamicType;
    v12 = v32;
    v26 = v9;
    v13 = v3;
    v14 = v33;
    v15 = v34;
    sub_1C04C971C(DynamicType, v32, v33, v34);
    v16 = v14;
    v3 = v13;
    v9 = v26;
    sub_1C0482080(v11, v12, v16, v15);
  }

  else
  {

    v35 = a1;
    v17 = a1;
    if (swift_dynamicCast())
    {
      v26 = a1;
      v18 = DynamicType;
      v19 = v32;
      v20 = v33;
      sub_1C04E32F0(DynamicType, v32, v33);
      v25[1] = v21;
      if (v20 == 1)
      {
        [v18 code];
        sub_1C0482070(v18, v19, 1);
      }

      else
      {
        sub_1C0482070(v18, v19, 0);
      }
    }

    else
    {

      v35 = a1;
      v22 = a1;
      if (!swift_dynamicCast())
      {

        swift_getErrorValue();
        sub_1C04F6E10();
        goto LABEL_10;
      }

      v23 = v30;
      DynamicType = 0;
      v32 = 0xE000000000000000;
      sub_1C04F6C40();
      MEMORY[0x1C68DC0D0](0xD000000000000012, 0x80000001C04FBBA0);
      v28 = v23;
      sub_1C04F6CB0();
    }
  }

LABEL_10:
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  v32 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB18, &unk_1C04F7B60);
  sub_1C04F6790();
  sub_1C04F5B80();
  sub_1C04F5B90();
  sub_1C04F5B70();

  sub_1C04F5900();
  (*(v4 + 16))(v6, v9, v3);
  sub_1C04F5910();
  return (*(v4 + 8))(v9, v3);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0481E1C(uint64_t a1, int a2)
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

uint64_t sub_1C0481E5C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C0481ECC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0481EEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0481F4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0481F6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GZIPError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GZIPError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1C0482024(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_1C0482070(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C0482080(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C04820C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB20, &unk_1C04F8B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0482130(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C04821D4()
{
  result = qword_1EDE41E08;
  if (!qword_1EDE41E08)
  {
    sub_1C04F5D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41E08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_1C04F5540();
}

uint64_t sub_1C0482278@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 type] - 1;
  if (v3 > 0xC)
  {
    v4 = MEMORY[0x1E69BCEF8];
  }

  else
  {
    v4 = qword_1E8117B18[v3];
  }

  v5 = *v4;
  v6 = sub_1C04F5BF0();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t sub_1C0482318()
{
  v1 = sub_1C04F5460();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = [v0 timestamp];
  sub_1C04F5440();

  sub_1C04F5430();
  v10 = v9;
  result = (*(v3 + 8))(v7, v1);
  if (v10 >= 0.0)
  {
    return sub_1C04F6280();
  }

  v12 = fabs(v10);
  if (v12 >= 2147483650.0 || v12 < 2147483650.0)
  {
    return sub_1C04F62A0();
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Apple_Parsec_Search_PegasusQueryContext.augment(withLocation:)(CLLocation withLocation)
{
  isa = withLocation.super.isa;
  v2 = sub_1C04F6290();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v4 = sub_1C04F5BF0();
  v5 = OUTLINED_FUNCTION_2_1(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1C04F5C50();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v18 - v16;
  sub_1C04F5C40();
  [(objc_class *)isa horizontalAccuracy];
  sub_1C04F5BD0();
  [(objc_class *)isa coordinate];
  sub_1C04F5C20();
  [(objc_class *)isa coordinate];
  sub_1C04F5C30();
  sub_1C0482278(v8);
  sub_1C04F5C00();
  sub_1C0482318();
  sub_1C04F5BE0();
  (*(v11 + 16))(v14, v17, v9);
  sub_1C04F54E0();
  (*(v11 + 8))(v17, v9);
}

uint64_t sub_1C0482664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v7 = OUTLINED_FUNCTION_2_1(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = sub_1C04F54F0();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_1C0482788(a1, v9, a3);
  sub_1C0482A3C(v9);
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v10);
}

uint64_t sub_1C0482788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v7 = OUTLINED_FUNCTION_2_1(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1C04F54F0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  sub_1C04829CC(a2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C0482A3C(v9);
    (*(v12 + 16))(v18, v3, v10);
    result = (*(v12 + 32))(v25, v18, v10);
  }

  else
  {
    v20 = *(v12 + 32);
    v20(v15, v9, v10);
    sub_1C04F54C0();
    if (v4)
    {
      return (*(v12 + 8))(v15, v10);
    }

    (*(v12 + 8))(v15, v10);
    result = (v20)(v25, v18, v10);
  }

  if (v23 != 13)
  {
    v21 = sub_1C04F54D0();
    sub_1C04F5C10();
    return v21(v24, 0);
  }

  return result;
}

uint64_t sub_1C04829CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0482A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

const char *sub_1C0482AB0(uint64_t a1)
{
  result = "unknown";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "configuration";
      break;
    case 2:
      result = "parsecdSearch";
      break;
    case 3:
      result = "parsecdZeroKeyWord";
      break;
    case 4:
      result = "parsecdLookup";
      break;
    case 5:
      result = "parsecdFlight";
      break;
    case 6:
      result = "parsecdMoreResults";
      break;
    case 7:
      result = "parsecdCard";
      break;
    case 8:
      result = "parsecdWarm";
      break;
    case 9:
      result = "bagResourceDownload";
      break;
    case 10:
      result = "pegasusKitVisualSearch";
      break;
    case 11:
      result = "pegasusKitSiriPersonalization";
      break;
    case 12:
      result = "pegasusKitHashtagImages";
      break;
    case 13:
      result = "pegasusKitAssistant";
      break;
    case 14:
      result = "pegasusKitBagFetchXPC";
      break;
    case 15:
      result = "pegasusKitContextFetchXPC";
      break;
    case 16:
      result = "pegasusKitLookup";
      break;
    case 17:
      result = "pegasusKitSpotlightZKW";
      break;
    case 18:
      result = "pegasusKitEngagementSearch";
      break;
    case 19:
      result = "engagementCache";
      break;
    case 20:
      result = "topicCache";
      break;
    case 21:
      result = "pegasusKitIntelligencePlatform";
      break;
    case 22:
    case 36:
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
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_90;
    case 23:
      result = "pegasusKitIntelligenceFlow";
      break;
    case 24:
      result = "pegasusKitSafariAssistantPrefetch";
      break;
    case 25:
      result = "pegasusKitSafariAssistantSummarize";
      break;
    case 26:
      result = "pegasusKitEncryptedVisualSearch";
      break;
    case 27:
      result = "pegasusKitSportsWatchFace";
      break;
    case 28:
      result = "pegasusKitLookupSearch";
      break;
    case 29:
      result = "pegasusKitEncryptedVisualSearchConfig";
      break;
    case 30:
      result = "pegasusKitSafariSearch";
      break;
    case 31:
      result = "pegasusKitCameraVisualSearch";
      break;
    case 32:
      result = "pegasusKitEncryptedPQAGeo";
      break;
    case 33:
      result = "pegasusKitEncryptedPQAGeoConfig";
      break;
    case 34:
      result = "pegasusKitEncryptedVisualSearchSupportedUsecases";
      break;
    case 35:
      result = "pegasusKitEncryptedPQAGeoSupportedUsecases";
      break;
    case 37:
      result = "pegasusKitFlightUtilities";
      break;
    case 38:
      result = "pegasusKitFlightUtilitiesSubscribe";
      break;
    case 39:
      result = "pegasusKitDeviceExpertSearch";
      break;
    case 50:
      result = "installedAppWhitelist";
      break;
    case 60:
      result = "assetDeliveryPreloadAsset";
      break;
    case 61:
      result = "assetDeliveryPrefilterPrefetch";
      break;
    case 62:
      result = "assetDeliveryGetPreloadedData";
      break;
    case 63:
      result = "assetDeliveryBloomFilter";
      break;
    case 65:
      result = "assetDeliveryRetrieveAsset";
      break;
    case 66:
      result = "assetDeliveryRedact";
      break;
    case 67:
      result = "assetDeliveryFeatureSupported";
      break;
    case 100:
      result = "contextFetchAMSTreatments";
      break;
    default:
      switch(a1)
      {
        case 200:
          result = "feedbackEnumerator";
          break;
        case 201:
          result = "feedbackFileCreation";
          break;
        case 202:
          result = "simpleFeedbackEnumerator";
          break;
        case 300:
          result = "aggregation";
          break;
        case 301:
          result = "uploadaggregates";
          break;
        case 400:
          result = "clientXPCConnection";
          break;
        case 401:
          result = "clientSessionComplete";
          break;
        case 500:
          result = "sbaPlugin";
          break;
        case 600:
          result = "parsecdCloudConnectionSubscribe";
          break;
        case 601:
          result = "parsecdCloudConnectionUnsubscribe";
          break;
        case 602:
          result = "parsecdCloudConnectionFetchLatestPush";
          break;
        case 700:
          result = "parseKeys";
          break;
        default:
LABEL_90:
          result = sub_1C04F6DB0();
          __break(1u);
          break;
      }

      break;
  }

  return result;
}

uint64_t sub_1C0482EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = a5 & 1;
  *(v6 + qword_1EDE44718) = 0;
  *(v6 + qword_1EDE44DF8) = 0;
  v11 = v6 + qword_1EDE44DF0;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v6 + qword_1EDE44720) = 0;
  v12 = qword_1EDE44DE8;
  v13 = sub_1C04F6200();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6 + v12, a3, v13);
  *v11 = a4;
  *(v11 + 8) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  if (a5)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C04F7BB0;
    v16 = sub_1C04F61E0();
    v18 = v17;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1C0483A94();
    *(inited + 32) = v16;
    *(inited + 40) = v18;
  }

  else
  {
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_1C04F7BA0;
    v20 = sub_1C04F61E0();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v23 = sub_1C0483A94();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v24 = MEMORY[0x1E69E7738];
    *(v19 + 96) = MEMORY[0x1E69E76D8];
    *(v19 + 104) = v24;
    *(v19 + 64) = v23;
    *(v19 + 72) = a4;
  }

  sub_1C04D85D0();
  v26 = v25;
  (*(v14 + 8))(a3, v13);
  return v26;
}

uint64_t sub_1C048310C()
{

  v1 = qword_1EDE44DE8;
  sub_1C04F6200();
  OUTLINED_FUNCTION_1_0();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1C0483178()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_1C0483574();
  }

  v1 = sub_1C04E84A0();

  v2 = qword_1EDE44DE8;
  sub_1C04F6200();
  OUTLINED_FUNCTION_1_0();
  (*(v3 + 8))(v1 + v2);
  return v1;
}

uint64_t sub_1C04831F0()
{
  v0 = sub_1C0483178();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ResourceAccessSpan(uint64_t a1)
{
  result = qword_1EDE44708;
  if (!qword_1EDE44708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0483290(uint64_t a1)
{
  result = sub_1C04F6200();
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

uint64_t sub_1C0483348()
{
  sub_1C04F6A20();
  OUTLINED_FUNCTION_0_0();
  sub_1C04F6390(v1);
  sub_1C04E85B8();
  sub_1C04F6A20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C04F7BB0;
  v3 = sub_1C04F6790();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C0483A94();
  *(v2 + 64) = v7;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  OUTLINED_FUNCTION_0_0();
  sub_1C04F6390(v8);

  sub_1C04F6A20();
  v9 = OUTLINED_FUNCTION_2_2();
  *(v9 + 16) = xmmword_1C04F7BB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC78, &qword_1C04F7CD0);
  v10 = sub_1C04F6790();
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  OUTLINED_FUNCTION_0_0();
  sub_1C04F6390(v12);

  sub_1C04F6A20();
  v13 = OUTLINED_FUNCTION_2_2();
  v14 = *(v0 + qword_1EDE44DF8);
  *(v13 + 16) = xmmword_1C04F7BB0;
  v15 = v14 == 0;
  v16 = 7562617;
  if (v15)
  {
    v16 = 28526;
  }

  v17 = 0xE300000000000000;
  *(v13 + 56) = v6;
  *(v13 + 64) = v7;
  if (v15)
  {
    v17 = 0xE200000000000000;
  }

  *(v13 + 32) = v16;
  *(v13 + 40) = v17;
  OUTLINED_FUNCTION_0_0();
  sub_1C04F6390(v18);

  sub_1C04F6A20();
  OUTLINED_FUNCTION_0_0();
  return sub_1C04F6390(v19);
}

void sub_1C0483574()
{
  if ((v0[88] & 1) == 0)
  {
    v1 = v0;
    if (*&v0[qword_1EDE44DF8])
    {

      sub_1C04EAD44(v2);
    }

    v3 = MEMORY[0x1E69E6158];
    if ((v0[qword_1EDE44720] & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC80, &qword_1C04F7CD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C04F7BA0;
      *(inited + 32) = 0x726574706F6461;
      *(inited + 40) = 0xE700000000000000;
      sub_1C04F61F0();
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      *(inited + 56) = 0x656D6F6374756FLL;
      *(inited + 64) = 0xE700000000000000;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      sub_1C0483AE8();
      v5 = sub_1C04F66F0();
      sub_1C04837D8(v5);
      v7 = v6;

      sub_1C04E9054(v7);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C04F7BB0;
    v9 = sub_1C04F6790();
    v11 = v10;
    *(v8 + 56) = v3;
    *(v8 + 64) = sub_1C0483A94();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_1C04E9BEC("outcome=%{signpost.description:attribute,public}s", 49, 2, v8);

    v12 = *(*&v1[*(*v1 + 152)] + 16);

    os_unfair_lock_lock(v12);
    if ((v1[88] & 1) == 0)
    {
      sub_1C04E9738();
    }

    os_unfair_lock_unlock(v12);
  }
}

void sub_1C04837D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC88, &unk_1C04F7CE0);
    v2 = sub_1C04F6D30();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_1C047D36C();
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      *v19 = v13;
      v19[1] = v12;

      v20 = v2[7];
      v21 = *(v20 + 8 * v17);
      *(v20 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v22 = (v2[6] + 16 * v16);
      *v22 = v13;
      v22[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

unint64_t sub_1C04839BC(uint64_t a1)
{
  *(a1 + 8) = sub_1C04839EC();
  result = sub_1C0483A40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C04839EC()
{
  result = qword_1EDE446D0;
  if (!qword_1EDE446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE446D0);
  }

  return result;
}

unint64_t sub_1C0483A40()
{
  result = qword_1EDE446C0;
  if (!qword_1EDE446C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE446C0);
  }

  return result;
}

unint64_t sub_1C0483A94()
{
  result = qword_1EDE44780;
  if (!qword_1EDE44780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44780);
  }

  return result;
}

unint64_t sub_1C0483AE8()
{
  result = qword_1EDE44778;
  if (!qword_1EDE44778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE44778);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return swift_allocObject();
}

void *BaseSiriSearchProxy.init()()
{
  OUTLINED_FUNCTION_5_0();
  *&v5 = v1;
  *(&v5 + 1) = v0;
  OUTLINED_FUNCTION_3_1();
  v6 = v2;
  v7 = v3;
  v8 = xmmword_1C04F80E0;
  return sub_1C0483BC8(&v5);
}

void *sub_1C0483BC8(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_1C04F6240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C04F6260();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v2[8] = *a1;
  v2[9] = v12;
  v2[10] = a1[2];
  (*(v5 + 104))(v7, *MEMORY[0x1E69BDB08], v4);
  sub_1C04F6270();
  v13 = sub_1C04F6250();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  if (qword_1EDE44538 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDE44DC8;
  v17 = qword_1EDE44DC8;
  return sub_1C04B8AAC(v13, v15, 0, 0, 0xF000000000000000, v16);
}

void *_s10PegasusKit0A24ProxyForIntelligenceFlowC8endpointACSS_tcfc_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_0();
  *(v2 + 128) = v6;
  *(v2 + 136) = v5;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 144) = v7;
  *(v2 + 152) = v8;
  *(v2 + 160) = xmmword_1C04F80E0;
  if (qword_1EDE44538 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDE44DC8;
  v10 = qword_1EDE44DC8;

  return sub_1C04B979C(a1, a2, 0, v9);
}

uint64_t sub_1C0483EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v57 = a3;
  v54 = a2;
  v55 = a1;
  sub_1C04F5CB0();
  OUTLINED_FUNCTION_0();
  v62 = v5;
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_1();
  v61 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_1C04F5610();
  OUTLINED_FUNCTION_0();
  v59 = v8;
  v60 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_1();
  v58 = v9;
  OUTLINED_FUNCTION_4_1();
  v56 = sub_1C04F54F0();
  OUTLINED_FUNCTION_0();
  v53 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_1();
  v52 = v12;
  OUTLINED_FUNCTION_4_1();
  v13 = sub_1C04F5CA0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_1_1();
  v50 = v14;
  OUTLINED_FUNCTION_4_1();
  sub_1C04F5650();
  OUTLINED_FUNCTION_0();
  v48 = v15;
  v49 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v51 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v46 - v20;
  OUTLINED_FUNCTION_4_1();
  v21 = sub_1C04F54B0();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C04F55F0();
  v46 = *(v27 - 8);
  v28 = v46;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C04F56F0();
  sub_1C04F55E0();
  sub_1C04F54A0();
  sub_1C04F5470();
  (*(v23 + 8))(v26, v21);
  v31 = v27;
  v32 = v46;
  sub_1C04F55C0();

  sub_1C04F55D0();
  v33 = sub_1C04F56E0();
  v35 = v34;
  sub_1C04B2B20();
  v36 = *(*v35 + 16);
  sub_1C04B2BAC(v36);
  v37 = v28;
  v38 = v48;
  v39 = *v35;
  *(v39 + 16) = v36 + 1;
  v40 = v39 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v37 + 72) * v36;
  v41 = v47;
  (*(v32 + 16))(v40, v30, v31);
  v33(v65, 0);
  v42 = v49;
  sub_1C04F5640();
  sub_1C04F5C90();
  sub_1C04F5630();
  (*(v53 + 16))(v52, v57, v56);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F56B0();
  sub_1C04F5680();
  (*(v42 + 16))(v51, v41, v38);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F5670();
  sub_1C04F56D0();
  if (qword_1EDE41E20 != -1)
  {
    swift_once();
  }

  v43 = byte_1EDE44D78;
  sub_1C04F5660();
  v44 = MEMORY[0x1E69BCBB8];
  if (!v43)
  {
    v44 = MEMORY[0x1E69BCBB0];
  }

  (*(v59 + 104))(v58, *v44, v60);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F56C0();
  (*(v62 + 16))(v61, v64, v63);
  OUTLINED_FUNCTION_6_0();
  sub_1C04F5690();
  (*(v42 + 8))(v41, v38);
  return (*(v32 + 8))(v30, v31);
}

uint64_t sub_1C0484440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1C04F54F0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  sub_1C04829CC(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C0482A3C(v8);
    sub_1C04F5700();
    OUTLINED_FUNCTION_7_2();
    return (*(v19 + 16))(a3, a2);
  }

  else
  {
    (*(v11 + 32))(v18, v8, v9);
    sub_1C04F5700();
    OUTLINED_FUNCTION_7_2();
    (*(v21 + 16))(a3, a2);
    (*(v11 + 16))(v15, v18, v9);
    sub_1C04F56B0();
    return (*(v11 + 8))(v18, v9);
  }
}

uint64_t sub_1C0484644@<X0>(uint64_t a1@<X8>)
{
  sub_1C04F56A0();
  v2 = sub_1C04F54F0();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

BOOL sub_1C0484694(uint64_t a1)
{
  sub_1C04F5730();
  OUTLINED_FUNCTION_0();
  v52 = v3;
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_1();
  v51 = v4;
  OUTLINED_FUNCTION_4_1();
  v5 = sub_1C04F5C60();
  OUTLINED_FUNCTION_0();
  v55 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v54 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = sub_1C04F5750();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = (v17 - v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - v22;
  v24 = *(v15 + 16);
  v24(&v47 - v22, a1, v13, v21);
  (v24)(v19, a1, v13);
  v25 = sub_1C04F63E0();
  v26 = sub_1C04F6A40();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v48 = v26;
    v28 = v27;
    v49 = swift_slowAlloc();
    v56 = v49;
    *v28 = 136315394;
    v47 = v25;
    sub_1C04F5710();
    v29 = sub_1C04F6790();
    v31 = v30;
    v50 = a1;
    v32 = *(v15 + 8);
    v32(v23, v13);
    v33 = sub_1C047D76C(v29, v31, &v56);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = v51;
    sub_1C04F5740();
    v35 = sub_1C04F5720();
    v37 = v36;
    (*(v52 + 8))(v34, v53);
    v32(v19, v13);
    v38 = sub_1C047D76C(v35, v37, &v56);

    *(v28 + 14) = v38;
    v39 = v47;
    _os_log_impl(&dword_1C0479000, v47, v48, "received rpc response with search status: %s, error detail: %s", v28, 0x16u);
    v40 = v49;
    swift_arrayDestroy();
    MEMORY[0x1C68DCEB0](v40, -1, -1);
    MEMORY[0x1C68DCEB0](v28, -1, -1);
  }

  else
  {

    v41 = *(v15 + 8);
    v41(v19, v13);
    v41(v23, v13);
  }

  sub_1C04F5710();
  v43 = v54;
  v42 = v55;
  (*(v55 + 104))(v54, *MEMORY[0x1E69BD138], v5);
  sub_1C0484C50();
  v44 = sub_1C04F6730();
  v45 = *(v42 + 8);
  v45(v43, v5);
  v45(v12, v5);
  return (v44 & 1) == 0;
}

uint64_t BaseSiriSearchProxy.deinit()
{
  v1 = BasePegasusProxy.deinit();
  OUTLINED_FUNCTION_8(v1);

  return v0;
}

uint64_t BaseSiriSearchProxy.__deallocating_deinit()
{
  v1 = BasePegasusProxy.deinit();
  OUTLINED_FUNCTION_8(v1);

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t type metadata accessor for BaseSiriSearchProxy(uint64_t a1)
{
  result = qword_1EDE41980;
  if (!qword_1EDE41980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C0484C50()
{
  result = qword_1EDE41528;
  if (!qword_1EDE41528)
  {
    sub_1C04F5C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41528);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1)
{
}

void *sub_1C0484D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v10 = *(*v4 + 80);
  v6 = type metadata accessor for TimedReference.State(0, v10, a3, a4);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD48, &qword_1C04F81F8);
  sub_1C0485168(sub_1C048514C, &v9, v5, v6, v7);

  return v4;
}

void *sub_1C0484E24@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*result + qword_1EBE0CCB0);
  if (v3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    sub_1C04F6990();
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_1C0484EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C0484D70(a1, a2, a3, a4);

  return MEMORY[0x1EEE6BDC0](v4, 24, 7);
}

void sub_1C0484F04(uint64_t a1)
{
  sub_1C048508C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1C0484FB8()
{
  swift_unknownObjectRelease();
  sub_1C04850E4(v0 + qword_1EBE0CC90);
  sub_1C047D1E0(*(v0 + qword_1EBE0CCA0), *(v0 + qword_1EBE0CCA0 + 8));
  sub_1C047D1E0(*(v0 + qword_1EBE0CCA8), *(v0 + qword_1EBE0CCA8 + 8));

  return v0;
}

uint64_t sub_1C0485020()
{
  v0 = sub_1C0484FB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1C048508C(uint64_t a1)
{
  if (!qword_1EBE0CD38)
  {
    sub_1C04F6C80();
    v1 = sub_1C04F6B20();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBE0CD38);
    }
  }
}

uint64_t sub_1C04850E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD40, &qword_1C04F81F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C04851F4(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t static PegasusProxyForNews.useragent.getter()
{
  v0 = sub_1C04F6240();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C04F6260();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69BDB08], v0, v10);
  sub_1C04F6270();
  v13 = sub_1C04F6250();
  (*(v8 + 8))(v12, v6);
  return v13;
}

void sub_1C0485470(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C0486944(319);
    if (v2 <= 0x3F)
    {
      sub_1C04F5460();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void *sub_1C04855B0()
{
  OUTLINED_FUNCTION_0_1();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v4 + 112));
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_4();
  sub_1C04871F4(v0 + *(v6 + 136), &qword_1EBE0CD58, &qword_1C04F8388);
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 144);
  sub_1C04F5460();
  OUTLINED_FUNCTION_6_1();
  (*(v9 + 8))(v0 + v8);
  OUTLINED_FUNCTION_4();

  return v0;
}

uint64_t sub_1C048573C()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_1();
  v4 = type metadata accessor for ActivitySpan.ActivityData(0, *(v2 + 80), *(v2 + 88), v3);

  v40 = v4;
  sub_1C04BD518(sub_1C0486E4C);

  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  v5 = *&v1[*(*v1 + 128)];
  v6 = sub_1C04F6A20();
  sub_1C04F6390("LEAKED SPAN: {{{", 16, 2, &dword_1C0479000, v5, v6, MEMORY[0x1E69E7CC0]);
  sub_1C04F6A20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C04F8240;
  sub_1C0485D7C();
  v8 = sub_1C04F6C50();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1C0483A94();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = sub_1C0485D28();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  v15 = sub_1C0485CD4();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  v43 = v12;
  *(v7 + 112) = v15;
  *(v7 + 120) = v16;
  sub_1C04F6390("Name: %s, Category: %s, Subsystem: %s", v38, v40, v42);

  if ((BYTE1(v49) & 1) == 0)
  {
    sub_1C04F6A20();
    v17 = OUTLINED_FUNCTION_5_1();
    *(v17 + 16) = xmmword_1C04F7BB0;
    v18 = sub_1C04F6C50();
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = v12;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    OUTLINED_FUNCTION_3_2("Format string: %s");
    sub_1C04F6390(v20);

    v21 = v50;
    if (v50)
    {

      sub_1C04F6A20();
      v22 = OUTLINED_FUNCTION_5_1();
      *(v22 + 16) = xmmword_1C04F7BB0;
      *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD80, &qword_1C04FAF60);
      *(v22 + 64) = sub_1C047C1A4(&unk_1EBE0CD88, &qword_1EBE0CD80, &qword_1C04FAF60, MEMORY[0x1E6969E28]);
      *(v22 + 32) = v21;
      OUTLINED_FUNCTION_3_2("Arguments: %@");
      sub_1C04F6390(v23);
    }
  }

  v24 = *(&v49 + 1);
  if (*(&v49 + 1))
  {

    sub_1C04F6A20();
    v25 = OUTLINED_FUNCTION_5_1();
    *(v25 + 16) = xmmword_1C04F7BB0;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD70, &qword_1C04F8390);
    *(v25 + 64) = sub_1C047C1A4(&qword_1EBE0CD78, &qword_1EBE0CD70, &qword_1C04F8390, MEMORY[0x1E6969D58]);
    *(v25 + 32) = v24;
    OUTLINED_FUNCTION_3_2("Analytics: %@");
    sub_1C04F6390(v26);
  }

  v27 = *(&v50 + 1);
  result = sub_1C04EB71C(*(&v50 + 1));
  v29 = v41;
  if (result)
  {
    v30 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v39 = v1;

    v31 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68DC500](v31, v27);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v31;
      sub_1C04F6A20();
      v32 = OUTLINED_FUNCTION_5_1();
      *(v32 + 16) = xmmword_1C04F7BB0;
      swift_unknownObjectRetain();
      v33 = sub_1C04F6790();
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = v43;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_1C04F6390("Leaked cancellables: %s", v39);
      swift_unknownObjectRelease();
    }

    while (v30 != v31);

    v29 = v41;
  }

  sub_1C04F6A20();
  OUTLINED_FUNCTION_3_2("}}}");
  sub_1C04F6390(v35);
  if (sub_1C0485DE4())
  {
    sub_1C04F6A30();
    OUTLINED_FUNCTION_3_2("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.");
    sub_1C04F6390(v36);
  }

  OUTLINED_FUNCTION_6_1();
  return (*(v37 + 8))(&v48, v29);
}

uint64_t sub_1C0485CD4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  return (*(*(v0 + 88) + 24))();
}

uint64_t sub_1C0485D28()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  return (*(*(v0 + 88) + 32))();
}

uint64_t sub_1C0485D7C()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2();
  return v1(*(v0 + 80));
}

uint64_t sub_1C0485DE4()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 80);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - v4;
  OUTLINED_FUNCTION_1_2();
  (*(v7 + 16))(v5, v0 + *(v6 + 112), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD98, &qword_1C04F8398);
  if (swift_dynamicCast())
  {
    sub_1C047E140(v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1C04871F4(v12, &unk_1EBE0CDA0, &qword_1C04F83A0);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1C0485F5C()
{
  v1 = sub_1C04F5460();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4();
  (*(v2 + 16))(v4, v0 + *(v5 + 144), v1);
  sub_1C04F5430();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C04860BC(void (*a1)(void), uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v5 = *(*(v2 + *(v4 + 152)) + 16);

  os_unfair_lock_lock(v5);
  sub_1C0486AA8(v2, a1);
  os_unfair_lock_unlock(v5);
}

uint64_t sub_1C0486144()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51[-v7];
  v9 = *(v2 + 80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51[-v15];
  v17 = *(v1 + 40);
  v61 = *(v1 + 24);
  v62 = v17;
  v63 = *(v1 + 56);
  v64 = *(v1 + 72);
  v18 = *(&v17 + 1);
  v55 = *(v2 + 88);
  v20 = type metadata accessor for ActivitySpan.ActivityData(0, v9, v55, v19);
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v54 = v20;
  v22(v56, &v61);
  sub_1C0486AFC(v18);
  if ((BYTE1(v62) & 1) == 0)
  {
    v23 = v63;
    if (v63)
    {
      v53 = *(&v61 + 1);
      v24 = v61;
      v52 = v62;
      OUTLINED_FUNCTION_2();
      (*(v10 + 16))(v16, v1 + *(v25 + 112), v9);
      OUTLINED_FUNCTION_2();
      v27 = *(v26 + 136);
      swift_beginAccess();
      sub_1C04870FC(v1 + v27, v8);
      v28 = sub_1C04F63D0();
      result = __swift_getEnumTagSinglePayload(v8, 1, v28);
      if (result != 1)
      {
        v30 = v8;
        OUTLINED_FUNCTION_2();
        v32 = *(v1 + *(v31 + 128));

        sub_1C0486814(v30, v32, v24, v53, v52, v23, v9, v55);

        (*(v10 + 8))(v16, v9);
        OUTLINED_FUNCTION_6_1();
        (*(v33 + 8))(v30, v28);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_2();
  (*(v10 + 16))(v13, v1 + *(v34 + 112), v9);
  OUTLINED_FUNCTION_2();
  v36 = *(v35 + 136);
  swift_beginAccess();
  sub_1C04870FC(v1 + v36, v5);
  v37 = sub_1C04F63D0();
  result = __swift_getEnumTagSinglePayload(v5, 1, v37);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2();
  v32 = *(v1 + *(v38 + 128));
  sub_1C0486784(v5, v32, v9, v55);
  (*(v10 + 8))(v13, v9);
  OUTLINED_FUNCTION_6_1();
  (*(v39 + 8))(v5, v37);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = type metadata accessor for ActivitySpan(0, v9, v55, v41);
    sub_1C04E82E4(v1, v42, v43, &off_1F3F85FC0);
    v59 = 0uLL;
    v60 = 0;
    *&v58[6] = 0;
    *&v58[14] = 0;

    v44 = *(v21 + 8);
    v45 = v54;
    v44(&v61, v54);
    v46 = *(v1 + 40);
    v56[0] = *(v1 + 24);
    v47 = *(v1 + 56);
    v56[1] = v46;
    v56[2] = v47;
    v57 = *(v1 + 72);
    *(v1 + 24) = v59;
    *(v1 + 40) = v60;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v58;
    v48 = MEMORY[0x1E69E7CC0];
    *(v1 + 56) = *&v58[14];
    *(v1 + 64) = v48;
    *(v1 + 72) = 0;
    v44(v56, v45);
    OUTLINED_FUNCTION_2();
    *(v1 + *(v49 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1C0485DE4())
    {
      v50 = sub_1C04F6A30();
      sub_1C04F6390("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_1C0479000, v32, v50, MEMORY[0x1E69E7CC0]);
    }

    return (*(v21 + 8))(&v61, v54);
  }
}

uint64_t sub_1C04866E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  OUTLINED_FUNCTION_4();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  sub_1C0486CD4(v4, a1, a2, v6, a4);
  os_unfair_lock_unlock(v10);
}

uint64_t sub_1C0486784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C04F6AD0();
  (*(a4 + 40))(a3, a4);

  return sub_1C04F63B0();
}

void sub_1C0486814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1C04F6AD0();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_1C04D8118(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_1C04868D4()
{
  sub_1C04855B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1C0486944(uint64_t a1)
{
  if (!qword_1EDE44790)
  {
    sub_1C04F63D0();
    v1 = sub_1C04F6B20();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE44790);
    }
  }
}

uint64_t sub_1C048699C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C0486A00(uint64_t a1, int a2)
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

uint64_t sub_1C0486A40(uint64_t result, int a2, int a3)
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

uint64_t sub_1C0486AA8(uint64_t result, void (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_1C0486144();
  }

  return result;
}

void sub_1C0486AFC(uint64_t a1)
{
  if (sub_1C0486E54(a1))
  {
    OUTLINED_FUNCTION_4();
    sub_1C04F6A10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1C04F7BA0;
    v2 = sub_1C0485D28();
    v4 = v3;
    v5 = MEMORY[0x1E69E6158];
    *(v1 + 56) = MEMORY[0x1E69E6158];
    v6 = sub_1C0483A94();
    *(v1 + 64) = v6;
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    sub_1C048716C();
    OUTLINED_FUNCTION_7_3();
    v7 = sub_1C04F66D0();
    *(v1 + 96) = v5;
    *(v1 + 104) = v6;
    *(v1 + 72) = v7;
    *(v1 + 80) = v8;
    OUTLINED_FUNCTION_3_2("Reporting to CA event: '%s'\n\twith data: %@");
    sub_1C04F6390(v9);

    sub_1C0485CD4();
    v10 = sub_1C0485D28();
    v12 = v11;

    MEMORY[0x1C68DC0D0](46, 0xE100000000000000);
    MEMORY[0x1C68DC0D0](v10, v12);

    v13 = sub_1C04F6740();

    OUTLINED_FUNCTION_7_3();
    v14 = sub_1C04F66B0();
    AnalyticsSendEvent();
  }
}

uint64_t sub_1C0486CD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 41) = 0;
  *(a1 + 56) = a5;
}

uint64_t sub_1C0486D20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 5);
  v10[0] = *(a1 + 3);
  v10[1] = v4;
  v11 = *(a1 + 7);
  v5 = v11;
  v12 = a1[9];
  v6 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = v6;
  v7 = type metadata accessor for ActivitySpan.ActivityData(0, *(v3 + 80), *(v3 + 88), a2);
  return (*(*(v7 - 8) + 16))(v9, v10, v7);
}

uint64_t sub_1C0486E54(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  (*(v6 + 16))(&v19 - v9, v2 + *(v11 + 112), v5, v8);
  DynamicType = swift_getDynamicType();
  (*(v6 + 8))(v10, v5);
  v14 = dynamic_cast_existential_1_conditional(DynamicType, DynamicType, &protocol descriptor for __CoreAnalyticsActivity);
  result = 0;
  if (v14)
  {
    if (a1)
    {
      v16 = v13;
      v17 = *(v13 + 16);

      v17(v14, v16);
      sub_1C04F68E0();
      sub_1C04F6B80();
      swift_isUniquelyReferenced_nonNull_native();
      v19 = a1;
      sub_1C049FA54();

      v18 = v19;
      (*(v16 + 8))(v14, v16);
      sub_1C0485F5C();
      sub_1C04F69C0();
      swift_isUniquelyReferenced_nonNull_native();
      v20 = v18;
      sub_1C049FA54();

      return v20;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C04870FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CD58, &qword_1C04F8388);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C048716C()
{
  result = qword_1EDE446A0;
  if (!qword_1EDE446A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE446A0);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C04871F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_allocObject();
}

unint64_t sub_1C048728C(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_311();
            while (1)
            {
              OUTLINED_FUNCTION_194();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_133();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_295();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_79:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_194();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_133();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_295();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_311();
          while (1)
          {
            OUTLINED_FUNCTION_194();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_133();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_295();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C04F6C70();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_194();
                if (!v9 & v8)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_133();
                if (!v9)
                {
                  goto LABEL_68;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_295();
                if (v9)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_68;
        }

        goto LABEL_78;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_68;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_68;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_68;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_68:
        v7 = 0;
        v12 = 1;
        goto LABEL_69;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_194();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_133();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_295();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_59:
          v12 = 0;
LABEL_69:
          v23 = v12;
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v7 = sub_1C049EDC0(result, a2, 10);
  v23 = v24;
LABEL_70:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1C04874F4()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0CDB0);
  __swift_project_value_buffer(v0, qword_1EBE0CDB0);
  return sub_1C04F63F0();
}

uint64_t sub_1C0487570()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EBE0CDC8 = v9;
  unk_1EBE0CDD0 = v11;
  return result;
}

void sub_1C04876F8()
{
  qword_1EBE0CDD8 = 0xD000000000000023;
  unk_1EBE0CDE0 = 0x80000001C04FCD70;
  qword_1EBE0CDE8 = 0x686372616553;
  unk_1EBE0CDF0 = 0xE600000000000000;
  qword_1EBE0CDF8 = 0xD000000000000010;
  unk_1EBE0CE00 = 0x80000001C04FCDF0;
}

void sub_1C048774C()
{
  qword_1EBE0CE08 = 0xD000000000000023;
  unk_1EBE0CE10 = 0x80000001C04FCD70;
  qword_1EBE0CE18 = 0xD000000000000016;
  unk_1EBE0CE20 = 0x80000001C04FCDA0;
  qword_1EBE0CE28 = 0xD000000000000020;
  unk_1EBE0CE30 = 0x80000001C04FCDC0;
}

void *PegasusProxyForFlightSearch.init()()
{
  if (qword_1EBE0C998 != -1)
  {
    OUTLINED_FUNCTION_132(&qword_1EBE0C998);
  }

  OUTLINED_FUNCTION_141();

  return sub_1C04B8AAC(v0, v1, v2, v3, 0xF000000000000000, 0);
}

void sub_1C0487854(uint64_t a1)
{
  v2 = sub_1C04F6130();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1C04F6200();
  v10 = OUTLINED_FUNCTION_2_1(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  (*(v4 + 104))(v8, *MEMORY[0x1E69BDAC0], v2);

  sub_1C04F6120();
  v14 = OUTLINED_FUNCTION_293();
  v15(v14);
  sub_1C04F6210();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v16 = OUTLINED_FUNCTION_204();
  sub_1C0482EFC(v16, a1, v13, 0, 1);
  OUTLINED_FUNCTION_314();
}

uint64_t sub_1C04879BC()
{
  OUTLINED_FUNCTION_144();
  v1[33] = v2;
  v1[34] = v0;
  v1[32] = v3;
  v1[35] = *v0;
  v4 = sub_1C04F5B60();
  v1[36] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[37] = v5;
  v1[38] = OUTLINED_FUNCTION_287();
  v6 = sub_1C04F5BC0();
  v1[39] = v6;
  OUTLINED_FUNCTION_66(v6);
  v1[40] = v7;
  v1[41] = OUTLINED_FUNCTION_286();
  v1[42] = swift_task_alloc();
  v8 = sub_1C04F5EB0();
  v1[43] = v8;
  OUTLINED_FUNCTION_66(v8);
  v1[44] = v9;
  v1[45] = OUTLINED_FUNCTION_286();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  OUTLINED_FUNCTION_2_1(v10);
  v1[48] = OUTLINED_FUNCTION_287();
  v11 = sub_1C04F54F0();
  v1[49] = v11;
  OUTLINED_FUNCTION_66(v11);
  v1[50] = v12;
  v1[51] = OUTLINED_FUNCTION_286();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v13 = sub_1C04F5DC0();
  v1[54] = v13;
  OUTLINED_FUNCTION_66(v13);
  v1[55] = v14;
  v1[56] = OUTLINED_FUNCTION_287();
  v15 = sub_1C04F5530();
  v1[57] = v15;
  OUTLINED_FUNCTION_66(v15);
  v1[58] = v16;
  v1[59] = OUTLINED_FUNCTION_287();
  v17 = sub_1C04F5E30();
  v1[60] = v17;
  OUTLINED_FUNCTION_66(v17);
  v1[61] = v18;
  v1[62] = OUTLINED_FUNCTION_286();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v19);
}

uint64_t sub_1C0487CD8()
{
  if (qword_1EBE0C998 != -1)
  {
    OUTLINED_FUNCTION_132(&qword_1EBE0C998);
  }

  sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_307();
  v1 = OUTLINED_FUNCTION_136();
  sub_1C049FB48(v1, v2, v3, 0xEA0000000000746ELL, v4);
  sub_1C04B7390();
  if (qword_1EBE0C990 != -1)
  {
    OUTLINED_FUNCTION_65(&qword_1EBE0C990);
  }

  v5 = v0[61];
  v6 = sub_1C04F6400();
  v0[65] = __swift_project_value_buffer(v6, qword_1EBE0CDB0);
  v8 = *(v5 + 16);
  v7 = v5 + 16;
  v0[66] = v8;
  v0[67] = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_237();
  v8();
  OUTLINED_FUNCTION_237();
  v8();
  v9 = sub_1C04F63E0();
  v10 = sub_1C04F6A10();
  v11 = OUTLINED_FUNCTION_143();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[63];
  v14 = v0[64];
  v17 = v0[60];
  v16 = v0[61];
  if (v13)
  {
    v19 = v0[58];
    v18 = v0[59];
    v37 = v0[57];
    v38 = v0[56];
    v39 = v0[55];
    v40 = v0[54];
    OUTLINED_FUNCTION_155();
    swift_slowAlloc();
    OUTLINED_FUNCTION_170();
    *v7 = 136643075;
    log = v9;
    sub_1C04F5DF0();
    sub_1C04F5500();
    (*(v19 + 8))(v18, v37);
    v20 = *(v16 + 8);
    v20(v14, v17);
    v21 = OUTLINED_FUNCTION_238();
    v24 = sub_1C047D76C(v21, v22, v23);

    *(v7 + 4) = v24;
    *(v7 + 12) = 2085;
    sub_1C04F5E20();
    sub_1C04F5DB0();
    OUTLINED_FUNCTION_161();
    (*(v39 + 8))(v38, v40);
    v20(v15, v17);
    v25 = OUTLINED_FUNCTION_135();
    v28 = sub_1C047D76C(v25, v26, v27);

    *(v7 + 14) = v28;
    _os_log_impl(&dword_1C0479000, log, v10, "Searching for fight %{sensitive}s, [bundleId: %{sensitive}s]", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    v29 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v29);
  }

  else
  {

    v20 = *(v16 + 8);
    v20(v15, v17);
    v20(v14, v17);
  }

  v0[68] = v20;
  sub_1C0487854(37);
  v0[69] = v30;
  v31 = swift_task_alloc();
  v0[70] = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_246(v31);
  OUTLINED_FUNCTION_142();

  return sub_1C04B832C(v32, v33, v34, v35);
}

uint64_t sub_1C0488068()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_77();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 568) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C0488160()
{
  OUTLINED_FUNCTION_144();
  (*(v0 + 528))(*(v0 + 496), *(v0 + 264), *(v0 + 480));
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225(&qword_1EDE42870);
  }

  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  *(v0 + 576) = qword_1EDE42878;

  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v0 + 584) = v1;
  *v1 = v2;
  v1[1] = sub_1C0488258;

  return sub_1C04D0E9C();
}

uint64_t sub_1C0488258()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  *(v3 + 592) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C0488358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();
  v20 = *(v18 + 400);
  v22 = *(v18 + 384);
  v21 = *(v18 + 392);
  sub_1C04F5E00();
  OUTLINED_FUNCTION_319();
  v23 = *(v20 + 8);
  v24 = OUTLINED_FUNCTION_136();
  v23(v24);
  if (__swift_getEnumTagSinglePayload(v22, 1, v21) == 1)
  {
    sub_1C04A12B4(*(v18 + 384), &qword_1EBE0CC70, &qword_1C04F8CB0);
    v25 = sub_1C04F63E0();
    v26 = sub_1C04F6A20();
    v27 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_154();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_158(v29);
      OUTLINED_FUNCTION_80(&dword_1C0479000, v30, v31, "unable to create unified query context");
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    v32 = *(v18 + 424);
    v33 = *(v18 + 392);

    v34 = sub_1C049FC7C();
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_142();
    v35 = swift_allocError();
    OUTLINED_FUNCTION_320(v35, v36);
    (v23)(v32, v33);
    *(v18 + 216) = v19;
    v37 = v19;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    if (OUTLINED_FUNCTION_297(v38) && *(v18 + 130) == 9)
    {
      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_324(qword_1EDE44718);
      OUTLINED_FUNCTION_142();
      v39 = swift_allocError();
      OUTLINED_FUNCTION_221(v39, v40);

      v41 = OUTLINED_FUNCTION_131();
      v26(v41);
    }

    else
    {

      v60 = v19;
      v61 = sub_1C04F63E0();
      sub_1C04F6A20();

      if (OUTLINED_FUNCTION_323())
      {
        OUTLINED_FUNCTION_145();
        swift_slowAlloc();
        v62 = OUTLINED_FUNCTION_245();
        *v34 = 138412290;
        v63 = v19;
        v64 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_313(v64);
        OUTLINED_FUNCTION_67();
        _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
        sub_1C04A12B4(v62, &qword_1EBE0CE38, &unk_1C04FB970);
        v70 = OUTLINED_FUNCTION_50();
        MEMORY[0x1C68DCEB0](v70);
        v71 = OUTLINED_FUNCTION_63();
        MEMORY[0x1C68DCEB0](v71);
      }

      OUTLINED_FUNCTION_279();

      OUTLINED_FUNCTION_253(qword_1EDE44718);
      swift_willThrow();
      v72 = OUTLINED_FUNCTION_131();
      v26(v72);

      a14 = v19;
    }

    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_200(v73);

    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_195();

    return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v42 = *(v18 + 416);
    v43 = *(v18 + 392);
    v44 = OUTLINED_FUNCTION_289();
    v45(v44);
    v46 = OUTLINED_FUNCTION_192();
    v47(v46);
    sub_1C04F5E10();
    (v23)(v42, v43);
    v48 = OUTLINED_FUNCTION_193();
    v23(v48);
    *(v18 + 600) = sub_1C047ACAC();
    if (qword_1EBE0C9A0 != -1)
    {
      swift_once();
    }

    *(v18 + 608) = OUTLINED_FUNCTION_316(&qword_1EBE0CDD8);
    OUTLINED_FUNCTION_288();
    OUTLINED_FUNCTION_315();
    OUTLINED_FUNCTION_146();
    *(v18 + 616) = v49;
    *v49 = v50;
    v49[1] = sub_1C04887CC;
    OUTLINED_FUNCTION_304();
    OUTLINED_FUNCTION_195();

    return v57(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1C04887CC()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_49();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 624) = v0;

  sub_1C04A12B4(v2 + 64, &qword_1EBE0CE40, &qword_1C04F8900);
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1C0488924()
{
  v59 = v0;
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[40];
  v4 = *(v0[44] + 32);
  v4(v0[47], v0[46], v0[43]);
  sub_1C04F5E90();
  (*(v3 + 104))(v1, *MEMORY[0x1E69BCED0], v2);
  OUTLINED_FUNCTION_217();
  v7 = sub_1C04A1764(v5, v6, MEMORY[0x1E69BCEE8]);
  v8 = OUTLINED_FUNCTION_302(v7);
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  v11 = OUTLINED_FUNCTION_136();
  v10(v11);
  v12 = OUTLINED_FUNCTION_294();
  v10(v12);
  if (v8)
  {
    (*(v0[44] + 16))(v0[45], v0[47], v0[43]);
    v13 = sub_1C04F63E0();
    sub_1C04F6A20();
    OUTLINED_FUNCTION_190();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[45];
    if (v15)
    {
      OUTLINED_FUNCTION_145();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_149();
      v18 = swift_slowAlloc();
      v58[0] = v18;
      *v17 = 136315138;
      if (sub_1C04F5EA0())
      {
        sub_1C04F5E80();
        v9 = sub_1C04F5B50();
        v16 = v19;
        v20 = OUTLINED_FUNCTION_189();
        v21(v20);
      }

      else
      {
        OUTLINED_FUNCTION_308();
      }

      v57 = *(v0[44] + 8);
      (v57)(v0[45], v0[43]);
      v45 = sub_1C047D76C(v9, v16, v58);

      *(v17 + 4) = v45;
      OUTLINED_FUNCTION_223(&dword_1C0479000, v46, v47, "search received status error: %s");
      __swift_destroy_boxed_opaque_existential_1(v18);
      v48 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v48);
      v49 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v49);
    }

    else
    {

      v43 = OUTLINED_FUNCTION_160();
      v57 = v44;
      v44(v43);
    }

    v54 = v0[68];
    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v50 = 6;
    swift_willThrow();

    v51 = OUTLINED_FUNCTION_231();
    v57(v51);
    v52 = OUTLINED_FUNCTION_282();
    v54(v52);
    OUTLINED_FUNCTION_79();

    OUTLINED_FUNCTION_150();
  }

  else
  {
    v56 = v4;
    v22 = sub_1C04F63E0();
    sub_1C04F6A10();
    OUTLINED_FUNCTION_190();
    if (os_log_type_enabled(v22, v23))
    {
      v25 = v0[58];
      v24 = v0[59];
      v55 = v0[57];
      OUTLINED_FUNCTION_145();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_149();
      v27 = swift_slowAlloc();
      v58[0] = v27;
      OUTLINED_FUNCTION_296(4.9654e-34);
      sub_1C04F5DF0();
      v28 = sub_1C04F5500();
      v30 = v29;
      (*(v25 + 8))(v24, v55);
      swift_endAccess();
      v31 = sub_1C047D76C(v28, v30, v58);

      *(v26 + 4) = v31;
      OUTLINED_FUNCTION_223(&dword_1C0479000, v32, v33, "fetched flight %{sensitive}s successfully");
      __swift_destroy_boxed_opaque_existential_1(v27);
      v34 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v34);
      v35 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v35);
    }

    v36 = v0[68];
    v37 = v0[62];
    v38 = v0[60];
    v39 = v0[47];
    v40 = v0[43];
    v41 = v0[32];
    *(v0[69] + qword_1EDE44718) = 2;
    sub_1C0483574();

    v56(v41, v39, v40);
    v36(v37, v38);

    OUTLINED_FUNCTION_150();
  }

  return v42();
}

uint64_t sub_1C0488EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();
  v19 = *(v18 + 568);
  *(v18 + 208) = v19;
  v20 = (v18 + 208);
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  OUTLINED_FUNCTION_238();
  v22 = swift_dynamicCast();
  v23 = *(v18 + 568);
  if (v22)
  {

    v24 = *(v18 + 129);
    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v25 = swift_allocError();
    *v26 = v24;
    OUTLINED_FUNCTION_285(v25);
  }

  else
  {

    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v27 = swift_allocError();
    *v28 = 0;
    OUTLINED_FUNCTION_285(v27);
  }

  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_200(v29);

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_195();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C0489078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();

  v22 = *(v20 + 592);
  OUTLINED_FUNCTION_321();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v23 = *(v19 - 86) == 9;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v37 = *(v20 + 544);
    v38 = *(v20 + 496);
    v39 = *(v20 + 480);

    OUTLINED_FUNCTION_324(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v40 = swift_allocError();
    OUTLINED_FUNCTION_221(v40, v41);

    v37(v38, v39);
  }

  else
  {

    v24 = v22;
    v25 = sub_1C04F63E0();
    sub_1C04F6A20();

    if (OUTLINED_FUNCTION_323())
    {
      OUTLINED_FUNCTION_145();
      swift_slowAlloc();
      v26 = OUTLINED_FUNCTION_245();
      *v21 = 138412290;
      v27 = v22;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_313(v28);
      OUTLINED_FUNCTION_67();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_1C04A12B4(v26, &qword_1EBE0CE38, &unk_1C04FB970);
      v34 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v34);
      v35 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v35);
    }

    OUTLINED_FUNCTION_279();

    OUTLINED_FUNCTION_253(qword_1EDE44718);
    a14 = v22;
    swift_willThrow();
    v36 = OUTLINED_FUNCTION_131();
    v18(v36);
  }

  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_200(v42);

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_195();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C04892F4()
{
  v56 = v0;
  v1 = *(v0 + 624);
  *(v0 + 224) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  OUTLINED_FUNCTION_135();
  v3 = swift_dynamicCast();
  v4 = *(v0 + 624);
  if (v3)
  {
    v5 = *(v0 + 552);
    OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_300();
    v6 = OUTLINED_FUNCTION_159();
    sub_1C04B915C(v6, v7, v8, v9, v5);
    v10 = OUTLINED_FUNCTION_159();
    sub_1C0482080(v10, v11, v12, v13);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_298(v14, 7);

    v15 = OUTLINED_FUNCTION_294();
LABEL_8:
    v54(v15);
    goto LABEL_9;
  }

  *(v0 + 232) = v4;
  v16 = v4;
  v18 = OUTLINED_FUNCTION_251(v16, v0 + 232, v17, &_s13ResponseErrorON);
  v19 = *(v0 + 624);
  if (v18)
  {
    v20 = *(v0 + 552);
    OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_300();
    v21 = OUTLINED_FUNCTION_227();
    sub_1C04B93C4(v21, v22, v23, v20);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_298(v24, 5);

    v25 = OUTLINED_FUNCTION_227();
    sub_1C0482070(v25, v26, v27);
    v28 = *(v0 + 232);
LABEL_7:

    v15 = OUTLINED_FUNCTION_193();
    goto LABEL_8;
  }

  *(v0 + 240) = v19;
  v29 = v19;
  v31 = OUTLINED_FUNCTION_251(v29, v0 + 240, v30, &type metadata for ProxyError);
  v32 = *(v0 + 624);
  v33 = *(v0 + 552);
  if (v31)
  {
    OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_300();
    v34 = *(v0 + 131);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v35 = swift_allocError();
    *v36 = v34;
    sub_1C04B9574(v35, v33);

    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v37 = v34;
    swift_willThrow();

    v28 = *(v0 + 240);
    goto LABEL_7;
  }

  *(v33 + qword_1EDE44718) = 51;
  sub_1C0483574();
  v40 = v32;
  v41 = sub_1C04F63E0();
  sub_1C04F6A20();

  if (os_log_type_enabled(v41, v33))
  {
    v42 = *(v0 + 624);
    OUTLINED_FUNCTION_145();
    v43 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v55 = swift_slowAlloc();
    *v43 = 136315138;
    *(v0 + 248) = v42;
    v44 = v42;
    v45 = sub_1C04F6790();
    v47 = sub_1C047D76C(v45, v46, &v55);

    *(v43 + 4) = v47;
    OUTLINED_FUNCTION_247(&dword_1C0479000, v48, v33, "search failure: %s");
    OUTLINED_FUNCTION_78();
    v49 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v49);
  }

  v50 = *(v0 + 624);
  v51 = *(v0 + 544);
  sub_1C049FC7C();
  OUTLINED_FUNCTION_142();
  swift_allocError();
  OUTLINED_FUNCTION_298(v52, 1);

  v53 = OUTLINED_FUNCTION_131();
  v51(v53);
LABEL_9:
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_150();

  return v38();
}

uint64_t sub_1C0489740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  *(v6 + 56) = a5;
  v13 = swift_task_alloc();
  *(v6 + 64) = v13;
  *v13 = v6;
  v13[1] = sub_1C048981C;

  return sub_1C048EA80(a1, a2, a3, a4, a5, v7);
}

uint64_t sub_1C048981C()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_77();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_150();

    return v8();
  }
}

uint64_t sub_1C0489930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  *(v6 + 56) = a5;
  v13 = swift_task_alloc();
  *(v6 + 64) = v13;
  *v13 = v6;
  v13[1] = sub_1C048981C;

  return sub_1C048FFC4(a1, a2, a3, a4, a5, v7);
}

uint64_t sub_1C0489A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_109(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_12(v12);
  OUTLINED_FUNCTION_241();

  return sub_1C0491508(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C0489A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_109(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_12(v12);
  OUTLINED_FUNCTION_241();

  return sub_1C0492A4C(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C0489B24()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_77();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_150();

    return v8();
  }
}

uint64_t sub_1C0489C38()
{
  OUTLINED_FUNCTION_172();
  sub_1C04A13B0(v0[7], (v0 + 2), &qword_1EBE0CE40, &qword_1C04F8900);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    (*(v3 + 24))(v2, v1, v3);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_1C04A12B4((v0 + 2), &qword_1EBE0CE40, &qword_1C04F8900);
  }

  swift_willThrow();
  OUTLINED_FUNCTION_150();

  return v4();
}

uint64_t sub_1C0489D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_109(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_12(v12);
  OUTLINED_FUNCTION_241();

  return sub_1C04940F4(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C0489DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_109(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_12(v12);
  OUTLINED_FUNCTION_241();

  return sub_1C0495638(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C0489E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_109(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_12(v12);
  OUTLINED_FUNCTION_241();

  return sub_1C0496B7C(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C0489EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_109(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_12(v12);
  OUTLINED_FUNCTION_241();

  return sub_1C04980C0(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C0489F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_109(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_12(v12);
  OUTLINED_FUNCTION_241();

  return sub_1C0499604(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C0489FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_109(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_12(v12);
  OUTLINED_FUNCTION_241();

  return sub_1C049AB48(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C048A068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_17(v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_109(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_12(v12);
  OUTLINED_FUNCTION_241();

  return sub_1C049C08C(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C048A0F4()
{
  OUTLINED_FUNCTION_172();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_81(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_226(v1);

  return sub_1C048A264();
}

uint64_t sub_1C048A184()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v1 = *v0;
  OUTLINED_FUNCTION_49();
  *v2 = v1;

  OUTLINED_FUNCTION_150();

  return v3();
}

uint64_t sub_1C048A264()
{
  OUTLINED_FUNCTION_144();
  v1[33] = v2;
  v1[34] = v0;
  v1[32] = v3;
  v1[35] = *v0;
  v4 = sub_1C04F5B60();
  v1[36] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[37] = v5;
  v1[38] = OUTLINED_FUNCTION_287();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE48, &qword_1C04F8440);
  OUTLINED_FUNCTION_2_1(v6);
  v1[39] = OUTLINED_FUNCTION_287();
  v7 = sub_1C04F5BC0();
  v1[40] = v7;
  OUTLINED_FUNCTION_66(v7);
  v1[41] = v8;
  v1[42] = OUTLINED_FUNCTION_286();
  v1[43] = swift_task_alloc();
  v9 = sub_1C04F60B0();
  v1[44] = v9;
  OUTLINED_FUNCTION_66(v9);
  v1[45] = v10;
  v1[46] = OUTLINED_FUNCTION_286();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  OUTLINED_FUNCTION_2_1(v11);
  v1[49] = OUTLINED_FUNCTION_287();
  v12 = sub_1C04F54F0();
  v1[50] = v12;
  OUTLINED_FUNCTION_66(v12);
  v1[51] = v13;
  v1[52] = OUTLINED_FUNCTION_286();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v14 = sub_1C04F5530();
  v1[55] = v14;
  OUTLINED_FUNCTION_66(v14);
  v1[56] = v15;
  v1[57] = OUTLINED_FUNCTION_287();
  v16 = sub_1C04F6060();
  v1[58] = v16;
  OUTLINED_FUNCTION_66(v16);
  v1[59] = v17;
  v1[60] = OUTLINED_FUNCTION_286();
  v1[61] = swift_task_alloc();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v18);
}

uint64_t sub_1C048A554()
{
  if (qword_1EBE0C998 != -1)
  {
    OUTLINED_FUNCTION_132(&qword_1EBE0C998);
  }

  sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_307();
  v1 = OUTLINED_FUNCTION_136();
  sub_1C049FB48(v1, v2, v3, 0xEA0000000000746ELL, v4);
  sub_1C04B7390();
  if (qword_1EBE0C990 != -1)
  {
    OUTLINED_FUNCTION_65(&qword_1EBE0C990);
  }

  v5 = v0[59];
  v6 = sub_1C04F6400();
  v0[62] = __swift_project_value_buffer(v6, qword_1EBE0CDB0);
  v0[63] = *(v5 + 16);
  v0[64] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_237();
  v7();
  v8 = sub_1C04F63E0();
  v9 = sub_1C04F6A10();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[59];
  if (v10)
  {
    v12 = v0[56];
    v13 = v0[57];
    v29 = v0[55];
    OUTLINED_FUNCTION_145();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v31 = swift_slowAlloc();
    *v14 = 136642819;
    v30 = v9;
    sub_1C04F6030();
    sub_1C04F5500();
    OUTLINED_FUNCTION_161();
    (*(v12 + 8))(v13, v29);
    v15 = *(v11 + 8);
    v16 = OUTLINED_FUNCTION_189();
    v15(v16);
    v17 = OUTLINED_FUNCTION_135();
    v20 = sub_1C047D76C(v17, v18, v19);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1C0479000, v8, v30, "Subscribing to flight status updates for %{sensitive}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  else
  {

    v15 = *(v11 + 8);
    v21 = OUTLINED_FUNCTION_189();
    v15(v21);
  }

  v0[65] = v15;
  sub_1C0487854(38);
  v0[66] = v22;
  v23 = swift_task_alloc();
  v0[67] = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_246(v23);
  OUTLINED_FUNCTION_142();

  return sub_1C04B832C(v24, v25, v26, v27);
}

uint64_t sub_1C048A830()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_77();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C048A928()
{
  OUTLINED_FUNCTION_144();
  (*(v0 + 504))(*(v0 + 480), *(v0 + 264), *(v0 + 464));
  if (qword_1EDE42870 != -1)
  {
    OUTLINED_FUNCTION_225(&qword_1EDE42870);
  }

  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  *(v0 + 552) = qword_1EDE42878;

  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v0 + 560) = v1;
  *v1 = v2;
  v1[1] = sub_1C048AA1C;

  return sub_1C04D0E9C();
}

uint64_t sub_1C048AA1C()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  *(v3 + 568) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C048AB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();
  v20 = *(v18 + 408);
  v22 = *(v18 + 392);
  v21 = *(v18 + 400);
  sub_1C04F6040();
  OUTLINED_FUNCTION_319();
  v23 = *(v20 + 8);
  v24 = OUTLINED_FUNCTION_136();
  v23(v24);
  if (__swift_getEnumTagSinglePayload(v22, 1, v21) == 1)
  {
    sub_1C04A12B4(*(v18 + 392), &qword_1EBE0CC70, &qword_1C04F8CB0);
    v25 = sub_1C04F63E0();
    v26 = sub_1C04F6A20();
    v27 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_154();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_158(v29);
      OUTLINED_FUNCTION_80(&dword_1C0479000, v30, v31, "unable to create unified query context");
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    v32 = *(v18 + 432);
    v33 = *(v18 + 400);

    v34 = sub_1C049FC7C();
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_142();
    v35 = swift_allocError();
    OUTLINED_FUNCTION_320(v35, v36);
    (v23)(v32, v33);
    *(v18 + 216) = v19;
    v37 = v19;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    if (OUTLINED_FUNCTION_297(v38) && *(v18 + 130) == 9)
    {
      OUTLINED_FUNCTION_280();

      OUTLINED_FUNCTION_324(qword_1EDE44718);
      OUTLINED_FUNCTION_142();
      v39 = swift_allocError();
      OUTLINED_FUNCTION_221(v39, v40);

      v41 = OUTLINED_FUNCTION_131();
      v26(v41);
    }

    else
    {

      v60 = v19;
      v61 = sub_1C04F63E0();
      sub_1C04F6A20();

      if (OUTLINED_FUNCTION_323())
      {
        OUTLINED_FUNCTION_145();
        swift_slowAlloc();
        v62 = OUTLINED_FUNCTION_245();
        *v34 = 138412290;
        v63 = v19;
        v64 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_313(v64);
        OUTLINED_FUNCTION_67();
        _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
        sub_1C04A12B4(v62, &qword_1EBE0CE38, &unk_1C04FB970);
        v70 = OUTLINED_FUNCTION_50();
        MEMORY[0x1C68DCEB0](v70);
        v71 = OUTLINED_FUNCTION_63();
        MEMORY[0x1C68DCEB0](v71);
      }

      OUTLINED_FUNCTION_280();

      OUTLINED_FUNCTION_253(qword_1EDE44718);
      swift_willThrow();
      v72 = OUTLINED_FUNCTION_131();
      v26(v72);

      a14 = v19;
    }

    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_240(v73);

    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_195();

    return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v42 = *(v18 + 424);
    v43 = *(v18 + 400);
    v44 = OUTLINED_FUNCTION_289();
    v45(v44);
    v46 = OUTLINED_FUNCTION_192();
    v47(v46);
    sub_1C04F6050();
    (v23)(v42, v43);
    v48 = OUTLINED_FUNCTION_193();
    v23(v48);
    *(v18 + 576) = sub_1C047ACAC();
    if (qword_1EBE0C9A8 != -1)
    {
      swift_once();
    }

    *(v18 + 584) = OUTLINED_FUNCTION_316(&qword_1EBE0CE08);
    OUTLINED_FUNCTION_288();
    OUTLINED_FUNCTION_315();
    OUTLINED_FUNCTION_146();
    *(v18 + 592) = v49;
    *v49 = v50;
    v49[1] = sub_1C048AF88;
    OUTLINED_FUNCTION_304();
    OUTLINED_FUNCTION_195();

    return v57(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1C048AF88()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_49();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 600) = v0;

  sub_1C04A12B4(v2 + 64, &qword_1EBE0CE40, &qword_1C04F8900);
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1C048B0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t), uint64_t (*a12)(void), uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_220();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_230();
  a24 = v26;
  v29 = v26[42];
  v30 = v26[40];
  v31 = v26[41];
  (*(v26[45] + 32))(v26[48], v26[47], v26[44]);
  sub_1C04F5E90();
  (*(v31 + 104))(v29, *MEMORY[0x1E69BCED0], v30);
  OUTLINED_FUNCTION_217();
  v34 = sub_1C04A1764(v32, v33, MEMORY[0x1E69BCEE8]);
  v35 = OUTLINED_FUNCTION_302(v34);
  v36 = *(v31 + 8);
  v37 = OUTLINED_FUNCTION_136();
  v36(v37);
  v38 = OUTLINED_FUNCTION_294();
  v36(v38);
  if (v35)
  {
    (*(v26[45] + 16))(v26[46], v26[48], v26[44]);
    v39 = sub_1C04F63E0();
    sub_1C04F6A20();
    OUTLINED_FUNCTION_190();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v26[46];
    if (v41)
    {
      OUTLINED_FUNCTION_145();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_149();
      v44 = swift_slowAlloc();
      a14 = v44;
      *v43 = 136315138;
      if (sub_1C04F60A0())
      {
        sub_1C04F6080();
        v36 = sub_1C04F5B50();
        v42 = v45;
        v46 = OUTLINED_FUNCTION_189();
        v47(v46);
      }

      else
      {
        OUTLINED_FUNCTION_308();
      }

      a12 = *(v26[45] + 8);
      (a12)(v26[46], v26[44]);
      v83 = sub_1C047D76C(v36, v42, &a14);

      *(v43 + 4) = v83;
      OUTLINED_FUNCTION_223(&dword_1C0479000, v84, v85, "subscribe token received status error: %s");
      __swift_destroy_boxed_opaque_existential_1(v44);
      v86 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v86);
      v87 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v87);
    }

    else
    {

      v70 = OUTLINED_FUNCTION_160();
      a12 = v71;
      v71(v70);
    }

    a11 = v26[65];
    OUTLINED_FUNCTION_306();
    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_233(v88, 6);

    v89 = OUTLINED_FUNCTION_231();
    a12(v89);
    v90 = OUTLINED_FUNCTION_282();
    a11(v90);
    goto LABEL_16;
  }

  *(v26[66] + qword_1EDE44718) = 2;
  sub_1C0483574();
  v48 = sub_1C04F63E0();
  sub_1C04F6A10();
  OUTLINED_FUNCTION_190();
  if (os_log_type_enabled(v48, v49))
  {
    OUTLINED_FUNCTION_145();
    v50 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v51 = swift_slowAlloc();
    a14 = v51;
    OUTLINED_FUNCTION_296(4.9654e-34);
    sub_1C04F6030();
    v52 = sub_1C04F5500();
    v54 = v53;
    v55 = OUTLINED_FUNCTION_231();
    v56(v55);
    swift_endAccess();
    v57 = sub_1C047D76C(v52, v54, &a14);

    *(v50 + 4) = v57;
    OUTLINED_FUNCTION_223(&dword_1C0479000, v58, v59, "successfully received subscription token for flight %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1(v51);
    v60 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v60);
    v61 = OUTLINED_FUNCTION_63();
    MEMORY[0x1C68DCEB0](v61);
  }

  v62 = v26[39];
  v63 = sub_1C04F6070();
  sub_1C048C2B4(v63, v62);

  v64 = sub_1C04F5F20();
  if (__swift_getEnumTagSinglePayload(v62, 1, v64) == 1)
  {
    v65 = v26[65];
    OUTLINED_FUNCTION_306();
    sub_1C04A12B4(v26[39], &qword_1EBE0CE48, &qword_1C04F8440);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_233(v66, 10);

    v67 = OUTLINED_FUNCTION_231();
    v68(v67);
    v69 = OUTLINED_FUNCTION_282();
    v65(v69);
LABEL_16:
    v91 = OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_318(v91);

    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_195();

    return v93(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v72 = v26[48];
  v73 = sub_1C04F5F10();
  v75 = v74;
  v26[76] = v74;
  v76 = OUTLINED_FUNCTION_135();
  v77(v76);
  v78 = swift_task_alloc();
  v26[77] = v78;
  v78[2] = v73;
  v78[3] = v75;
  v78[4] = v72;
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  v26[78] = v79;
  *v79 = v80;
  v79[1] = sub_1C048B6C8;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x1EEE6DE38](v81);
}

uint64_t sub_1C048B6C8()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  *(v3 + 632) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C048B7D4()
{
  v1 = v0[65];
  v2 = v0[48];
  v4 = v0[44];
  v3 = v0[45];

  (*(v3 + 8))(v2, v4);
  v5 = OUTLINED_FUNCTION_189();
  v1(v5);

  OUTLINED_FUNCTION_150();

  return v6();
}

uint64_t sub_1C048B930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();
  v19 = *(v18 + 544);
  *(v18 + 208) = v19;
  v20 = (v18 + 208);
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  OUTLINED_FUNCTION_238();
  v22 = swift_dynamicCast();
  v23 = *(v18 + 544);
  if (v22)
  {

    v24 = *(v18 + 129);
    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v25 = swift_allocError();
    *v26 = v24;
    OUTLINED_FUNCTION_285(v25);
  }

  else
  {

    OUTLINED_FUNCTION_301(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v27 = swift_allocError();
    *v28 = 0;
    OUTLINED_FUNCTION_285(v27);
  }

  v29 = OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_240(v29);

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_195();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C048BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_230();

  v22 = *(v20 + 568);
  OUTLINED_FUNCTION_321();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v23 = *(v19 - 86) == 9;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v37 = *(v20 + 520);
    v38 = *(v20 + 480);
    v39 = *(v20 + 464);

    OUTLINED_FUNCTION_324(qword_1EDE44718);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v40 = swift_allocError();
    OUTLINED_FUNCTION_221(v40, v41);

    v37(v38, v39);
  }

  else
  {

    v24 = v22;
    v25 = sub_1C04F63E0();
    sub_1C04F6A20();

    if (OUTLINED_FUNCTION_323())
    {
      OUTLINED_FUNCTION_145();
      swift_slowAlloc();
      v26 = OUTLINED_FUNCTION_245();
      *v21 = 138412290;
      v27 = v22;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_313(v28);
      OUTLINED_FUNCTION_67();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_1C04A12B4(v26, &qword_1EBE0CE38, &unk_1C04FB970);
      v34 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v34);
      v35 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v35);
    }

    OUTLINED_FUNCTION_280();

    OUTLINED_FUNCTION_253(qword_1EDE44718);
    a14 = v22;
    swift_willThrow();
    v36 = OUTLINED_FUNCTION_131();
    v18(v36);
  }

  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_240(v42);

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_195();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C048BD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_220();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_230();
  a24 = v26;
  v29 = *(v26 + 600);
  *(v26 + 224) = v29;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  OUTLINED_FUNCTION_135();
  v31 = swift_dynamicCast();
  v32 = *(v26 + 600);
  if (v31)
  {
    v33 = *(v26 + 528);
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_300();
    v34 = OUTLINED_FUNCTION_159();
    sub_1C04B915C(v34, v35, v36, v37, v33);
    v38 = OUTLINED_FUNCTION_159();
    sub_1C0482080(v38, v39, v40, v41);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_233(v42, 7);

    v43 = OUTLINED_FUNCTION_294();
LABEL_8:
    a12(v43);
    goto LABEL_9;
  }

  *(v26 + 232) = v32;
  v44 = v32;
  v46 = OUTLINED_FUNCTION_251(v44, v26 + 232, v45, &_s13ResponseErrorON);
  v47 = *(v26 + 600);
  if (v46)
  {
    v48 = *(v26 + 528);
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_300();
    v49 = OUTLINED_FUNCTION_227();
    sub_1C04B93C4(v49, v50, v51, v48);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    OUTLINED_FUNCTION_233(v52, 5);

    v53 = OUTLINED_FUNCTION_227();
    sub_1C0482070(v53, v54, v55);
    v56 = *(v26 + 232);
LABEL_7:

    v43 = OUTLINED_FUNCTION_193();
    goto LABEL_8;
  }

  *(v26 + 240) = v47;
  v57 = v47;
  v59 = OUTLINED_FUNCTION_251(v57, v26 + 240, v58, &type metadata for ProxyError);
  v60 = *(v26 + 600);
  v61 = *(v26 + 528);
  if (v59)
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_300();
    v62 = *(v26 + 131);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v63 = swift_allocError();
    *v64 = v62;
    sub_1C04B9574(v63, v61);

    OUTLINED_FUNCTION_142();
    v65 = swift_allocError();
    *v66 = v62;
    a13 = v65;
    swift_willThrow();

    v56 = *(v26 + 240);
    goto LABEL_7;
  }

  *(v61 + qword_1EDE44718) = 51;
  sub_1C0483574();
  v77 = v60;
  v78 = sub_1C04F63E0();
  sub_1C04F6A20();

  if (os_log_type_enabled(v78, v61))
  {
    v79 = *(v26 + 600);
    OUTLINED_FUNCTION_145();
    v80 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    a14 = swift_slowAlloc();
    *v80 = 136315138;
    *(v26 + 248) = v79;
    v81 = v79;
    v82 = sub_1C04F6790();
    v84 = sub_1C047D76C(v82, v83, &a14);

    *(v80 + 4) = v84;
    OUTLINED_FUNCTION_247(&dword_1C0479000, v85, v61, "search failure: %s");
    OUTLINED_FUNCTION_78();
    v86 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v86);
  }

  v87 = *(v26 + 600);
  v88 = *(v26 + 520);
  sub_1C049FC7C();
  OUTLINED_FUNCTION_142();
  swift_allocError();
  OUTLINED_FUNCTION_233(v89, 1);

  v90 = OUTLINED_FUNCTION_131();
  v88(v90);
LABEL_9:
  v67 = OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_318(v67);

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_195();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C048C15C()
{
  v1 = *(v0 + 520);

  v2 = OUTLINED_FUNCTION_82();
  v3(v2);
  v4 = OUTLINED_FUNCTION_136();
  v1(v4);
  OUTLINED_FUNCTION_106();

  OUTLINED_FUNCTION_150();

  return v5();
}

uint64_t sub_1C048C2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1C04F5F20();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1C048C5F0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C04F60B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1EBE0C990 != -1)
    {
      swift_once();
    }

    v9 = sub_1C04F6400();
    __swift_project_value_buffer(v9, qword_1EBE0CDB0);
    v10 = a1;
    v11 = sub_1C04F63E0();
    v12 = sub_1C04F6A20();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1C0479000, v11, v12, "returning error from subscription %@", v13, 0xCu);
      sub_1C04A12B4(v14, &qword_1EBE0CE38, &unk_1C04FB970);
      MEMORY[0x1C68DCEB0](v14, -1, -1);
      MEMORY[0x1C68DCEB0](v13, -1, -1);
    }

    v23[1] = a1;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE8, &qword_1C04F8668);
    return sub_1C04F6950();
  }

  else
  {
    if (qword_1EBE0C990 != -1)
    {
      swift_once();
    }

    v19 = sub_1C04F6400();
    __swift_project_value_buffer(v19, qword_1EBE0CDB0);
    v20 = sub_1C04F63E0();
    v21 = sub_1C04F6A10();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C0479000, v20, v21, "returning flight subscription token response", v22, 2u);
      MEMORY[0x1C68DCEB0](v22, -1, -1);
    }

    (*(v6 + 16))(v8, a3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE8, &qword_1C04F8668);
    return sub_1C04F6960();
  }
}

uint64_t sub_1C048C8F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B0, &qword_1C04F8450);
  v6 = OUTLINED_FUNCTION_2_1(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = sub_1C04F6980();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_1C048CBF0(0, 0, v8, &unk_1C04F8460, v10);

  return sub_1C04A12B4(v8, &qword_1EBE0D1B0, &qword_1C04F8450);
}

uint64_t sub_1C048CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_1C048CABC;

  return sub_1C048CEA8(a5, a6);
}

uint64_t sub_1C048CABC()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_77();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C048CBBC()
{
  **(v0 + 16) = *(v0 + 32) != 0;
  OUTLINED_FUNCTION_150();
  return v1();
}

uint64_t sub_1C048CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B0, &qword_1C04F8450);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1C04A13B0(a3, v24 - v10, &qword_1EBE0D1B0, &qword_1C04F8450);
  v12 = sub_1C04F6980();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C04A12B4(v11, &qword_1EBE0D1B0, &qword_1C04F8450);
  }

  else
  {
    sub_1C04F6970();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C04F6940();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C04F67B0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD48, &qword_1C04F81F8);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD48, &qword_1C04F81F8);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C048CEA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  OUTLINED_FUNCTION_171();
  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1C048CED4(uint64_t a1)
{
  OUTLINED_FUNCTION_188();
  if (qword_1EBE0C990 != -1)
  {
    OUTLINED_FUNCTION_65(&qword_1EBE0C990);
  }

  v2 = sub_1C04F6400();
  __swift_project_value_buffer(v2, qword_1EBE0CDB0);
  OUTLINED_FUNCTION_147();

  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A10();

  if (OUTLINED_FUNCTION_243())
  {
    OUTLINED_FUNCTION_145();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v17 = swift_slowAlloc();
    *v5 = 136315138;
    v6 = OUTLINED_FUNCTION_192();
    *(v5 + 4) = sub_1C047D76C(v6, v7, v8);
    OUTLINED_FUNCTION_247(&dword_1C0479000, v9, v4, "unsubscribing flight updates for channel %s");
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    v10 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v10);
  }

  v12 = v1[2];
  v11 = v1[3];
  v13 = swift_task_alloc();
  v1[4] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = swift_task_alloc();
  v1[5] = v14;
  *v14 = v1;
  v14[1] = sub_1C048D0A4;
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DE38](v15);
}

uint64_t sub_1C048D0A4()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C048D1C8()
{
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t sub_1C048D400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a1;
    if (qword_1EBE0C990 != -1)
    {
      swift_once();
    }

    v6 = sub_1C04F6400();
    __swift_project_value_buffer(v6, qword_1EBE0CDB0);
    v7 = a1;
    v8 = sub_1C04F63E0();
    v9 = sub_1C04F6A20();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1C0479000, v8, v9, "Failed to unsubscribe from flight updates: %@", v10, 0xCu);
      sub_1C04A12B4(v11, &qword_1EBE0CE38, &unk_1C04FB970);
      MEMORY[0x1C68DCEB0](v11, -1, -1);
      MEMORY[0x1C68DCEB0](v10, -1, -1);
    }

    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE0, &qword_1C04F8640);
    return sub_1C04F6950();
  }

  else
  {
    if (qword_1EBE0C990 != -1)
    {
      swift_once();
    }

    v17 = sub_1C04F6400();
    __swift_project_value_buffer(v17, qword_1EBE0CDB0);

    v18 = sub_1C04F63E0();
    v19 = sub_1C04F6A10();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1C047D76C(a3, a4, &v22);
      _os_log_impl(&dword_1C0479000, v18, v19, "successfully unsubscribed flight updates for channel %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C68DCEB0](v21, -1, -1);
      MEMORY[0x1C68DCEB0](v20, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE0, &qword_1C04F8640);
    return sub_1C04F6960();
  }
}

uint64_t sub_1C048D6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  OUTLINED_FUNCTION_171();
  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1C048D6F8(uint64_t a1)
{
  OUTLINED_FUNCTION_188();
  if (qword_1EBE0C990 != -1)
  {
    OUTLINED_FUNCTION_65(&qword_1EBE0C990);
  }

  v2 = sub_1C04F6400();
  __swift_project_value_buffer(v2, qword_1EBE0CDB0);
  OUTLINED_FUNCTION_147();

  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A10();

  if (OUTLINED_FUNCTION_243())
  {
    OUTLINED_FUNCTION_145();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_149();
    v17 = swift_slowAlloc();
    *v5 = 136315138;
    v6 = OUTLINED_FUNCTION_192();
    *(v5 + 4) = sub_1C047D76C(v6, v7, v8);
    OUTLINED_FUNCTION_247(&dword_1C0479000, v9, v4, "fetching flight update for channel %s");
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
    v10 = OUTLINED_FUNCTION_50();
    MEMORY[0x1C68DCEB0](v10);
  }

  v12 = v1[3];
  v11 = v1[4];
  v13 = swift_task_alloc();
  v1[5] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = swift_task_alloc();
  v1[6] = v14;
  sub_1C04F6020();
  *v14 = v1;
  v14[1] = sub_1C048D8D0;
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DE38](v15);
}

uint64_t sub_1C048D8D0()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_150();

    return v8();
  }
}

uint64_t sub_1C048D9EC()
{
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t sub_1C048DC08(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v88 = a4;
  v86 = sub_1C04F6020();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v76 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEC0, &qword_1C04F8630);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - v17;
  v19 = sub_1C04F6300();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEC8, &qword_1C04F8638);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v76 - v21;
  v23 = sub_1C04F5D90();
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    v82 = v24;
    v91 = a1;
    v92 = a2;
    v90 = 0;
    memset(v89, 0, sizeof(v89));
    sub_1C04A12A0(a1, a2);
    v83 = a1;
    sub_1C048087C(a1, a2);
    sub_1C04F62F0();
    sub_1C04A1764(&qword_1EBE0CED0, MEMORY[0x1E69BD4C0], MEMORY[0x1E69BD4B8]);
    sub_1C04F6360();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
    (*(v82 + 32))(v26, v22, v23);
    v36 = v18;
    sub_1C04F5D80();
    v37 = sub_1C04F5D70();
    if (__swift_getEnumTagSinglePayload(v18, 1, v37) != 1)
    {
      sub_1C04A13B0(v18, v15, &qword_1EBE0CEC0, &qword_1C04F8630);
      v38 = *(v37 - 8);
      if ((*(v38 + 88))(v15, v37) == *MEMORY[0x1E69BD4B0])
      {
        (*(v38 + 96))(v15, v37);
        v39 = v84;
        v40 = v86;
        v41 = v87;
        (*(v84 + 32))(v87, v15, v86);
        if (qword_1EBE0C990 != -1)
        {
          swift_once();
        }

        v42 = sub_1C04F6400();
        __swift_project_value_buffer(v42, qword_1EBE0CDB0);
        v81 = *(v39 + 16);
        v81(v10, v41, v40);
        v43 = sub_1C04F63E0();
        HIDWORD(v80) = sub_1C04F6A10();
        if (os_log_type_enabled(v43, BYTE4(v80)))
        {
          v44 = swift_slowAlloc();
          v79 = v44;
          v78 = swift_slowAlloc();
          *&v89[0] = v78;
          *v44 = 136642819;
          sub_1C04A1764(&qword_1EBE0CED8, MEMORY[0x1E69BDA60], MEMORY[0x1E69BDA58]);
          v77 = v43;
          v45 = sub_1C04F6370();
          v47 = v46;
          v84 = *(v39 + 8);
          (v84)(v10, v40);
          v48 = sub_1C047D76C(v45, v47, v89);
          v41 = v87;

          v49 = v79;
          *(v79 + 1) = v48;
          v50 = v77;
          _os_log_impl(&dword_1C0479000, v77, BYTE4(v80), "received flightPush in proxy: %{sensitive}s", v49, 0xCu);
          v51 = v78;
          __swift_destroy_boxed_opaque_existential_1(v78);
          MEMORY[0x1C68DCEB0](v51, -1, -1);
          MEMORY[0x1C68DCEB0](v79, -1, -1);
        }

        else
        {

          v84 = *(v39 + 8);
          (v84)(v10, v40);
        }

        v81(v85, v41, v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEB8, &qword_1C04F8628);
        sub_1C04F6960();
        sub_1C047E0BC(v83, a2, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
        (v84)(v41, v40);
LABEL_26:
        (*(v82 + 8))(v26, v23);
        return sub_1C04A12B4(v36, &qword_1EBE0CEC0, &qword_1C04F8630);
      }

      (*(v38 + 8))(v15, v37);
    }

    if (qword_1EBE0C990 != -1)
    {
      swift_once();
    }

    v56 = sub_1C04F6400();
    __swift_project_value_buffer(v56, qword_1EBE0CDB0);
    v57 = sub_1C04F63E0();
    v58 = sub_1C04F6A20();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v83;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1C0479000, v57, v58, "push message received does not contain flights push payload", v61, 2u);
      MEMORY[0x1C68DCEB0](v61, -1, -1);
    }

    sub_1C049FC7C();
    v62 = swift_allocError();
    *v63 = 0;
    *&v89[0] = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEB8, &qword_1C04F8628);
    sub_1C04F6950();
    sub_1C047E0BC(v60, a2, v64, v65, v66, v67, v68, v69, v76, v77, v78, v79, v80, v81, v82, v83, v84);
    goto LABEL_26;
  }

  if (qword_1EBE0C990 != -1)
  {
    swift_once();
  }

  v27 = sub_1C04F6400();
  __swift_project_value_buffer(v27, qword_1EBE0CDB0);
  v28 = a3;
  v29 = sub_1C04F63E0();
  v30 = sub_1C04F6A20();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    if (a3)
    {
      v33 = a3;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = v34;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    *(v31 + 4) = v34;
    *v32 = v35;
    _os_log_impl(&dword_1C0479000, v29, v30, "failed to get latest push, %@", v31, 0xCu);
    sub_1C04A12B4(v32, &qword_1EBE0CE38, &unk_1C04FB970);
    MEMORY[0x1C68DCEB0](v32, -1, -1);
    MEMORY[0x1C68DCEB0](v31, -1, -1);
  }

  v52 = a3;
  if (!a3)
  {
    sub_1C049FC7C();
    v52 = swift_allocError();
    *v53 = 0;
  }

  *&v89[0] = v52;
  v54 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEB8, &qword_1C04F8628);
  return sub_1C04F6950();
}

uint64_t PegasusProxyForFlightSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C048E70C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C04A1810;

  return sub_1C04879BC();
}

uint64_t sub_1C048E7B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C04A1810;

  return sub_1C048A0F4();
}

uint64_t sub_1C048E888(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C04A1810;

  return sub_1C048CEA8(a1, a2);
}

uint64_t sub_1C048E924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C04A1810;

  return sub_1C048D6C8(a1, a2, a3);
}

uint64_t sub_1C048E9D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C04A1810;

  return sub_1C048A264();
}

uint64_t sub_1C048EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C048ED50);
}

uint64_t sub_1C048FB94()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C048FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C0490294);
}

uint64_t sub_1C04910D8()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C0491508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04917D8);
}

uint64_t sub_1C049261C()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C0492A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C0492D1C);
}

uint64_t sub_1C0493B60()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C0493F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[56];
  sub_1C04A1144(v8[55], v8[54]);
  v10 = OUTLINED_FUNCTION_83();
  v11(v10);
  v12 = OUTLINED_FUNCTION_135();
  v9(v12);
  sub_1C04A1144(v8[24], v8[25]);
  sub_1C04A1144(v8[22], v8[23]);

  OUTLINED_FUNCTION_150();

  return v13();
}

uint64_t sub_1C04940F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04943C4);
}

uint64_t sub_1C0495208()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C0495638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C0495908);
}

uint64_t sub_1C049674C()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C0496B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C0496E4C);
}

uint64_t sub_1C0497C90()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C04980C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C0498390);
}

uint64_t sub_1C04991D4()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C0499604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04998D4);
}

uint64_t sub_1C049A718()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C049AB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C049AE18);
}

uint64_t sub_1C049BC5C()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C049C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 477) = a6;
  *(v7 + 240) = a5;
  *(v7 + 248) = v6;
  *(v7 + 224) = a3;
  *(v7 + 232) = a4;
  *(v7 + 208) = a1;
  *(v7 + 216) = a2;
  v8 = sub_1C04F61C0();
  *(v7 + 256) = v8;
  *(v7 + 264) = *(v8 - 8);
  *(v7 + 272) = swift_task_alloc();
  v9 = sub_1C04F62E0();
  *(v7 + 280) = v9;
  *(v7 + 288) = *(v9 - 8);
  *(v7 + 296) = swift_task_alloc();
  v10 = sub_1C04F5230();
  *(v7 + 304) = v10;
  *(v7 + 312) = *(v10 - 8);
  *(v7 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v11 = sub_1C04F5340();
  *(v7 + 344) = v11;
  *(v7 + 352) = *(v11 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_1C04F54B0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C049C35C);
}

uint64_t sub_1C049D1A0()
{
  OUTLINED_FUNCTION_172();
  v2 = *v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v2 + 464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

void sub_1C049D5D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, unint64_t *a6@<X6>, uint64_t (*a7)(uint64_t)@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v180 = a7;
  v179 = a6;
  v181 = a4;
  v178 = a8;
  v24 = sub_1C04F6300();
  v25 = OUTLINED_FUNCTION_2_1(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v26 = a5(0);
  OUTLINED_FUNCTION_0();
  v177 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v170 - v29;
  v182 = a1;
  v31 = sub_1C04F61B0();
  if (!v31)
  {
    goto LABEL_10;
  }

  v32 = v31;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {

LABEL_10:
    *&v186 = sub_1C04F61B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
    v46 = sub_1C04F6790();
    v48 = v47;
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v49 = v46;
    v49[1] = v48;
    v49[2] = 0;
    OUTLINED_FUNCTION_299(v49, 1);
    return;
  }

  v34 = v33;
  v176 = a2;
  v189 = 0u;
  v190 = 0u;
  if ([v33 statusCode] != 200)
  {
    v50 = v34;
    if (qword_1EDE44480 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v51 = sub_1C04F6400();
    __swift_project_value_buffer(v51, qword_1EDE44DB0);
    v52 = v32;
    v53 = sub_1C04F63E0();
    v54 = sub_1C04F6A10();
    v55 = OUTLINED_FUNCTION_143();
    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_145();
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = [v50 statusCode];

      _os_log_impl(&dword_1C0479000, v53, v54, "Non 200 HTTP status %ld", v57, 0xCu);
      v58 = OUTLINED_FUNCTION_63();
      MEMORY[0x1C68DCEB0](v58);
    }

    else
    {

      v53 = v52;
    }

    v59 = [v50 statusCode];
    v60 = v52;
    v61 = [v50 description];
    v62 = sub_1C04F6750();
    v64 = v63;

    sub_1C04A0FF8();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v65 = v59;
    v65[1] = v62;
    v65[2] = v64;
    v66 = OUTLINED_FUNCTION_299(v65, 2);
    OUTLINED_FUNCTION_191(v66, v67, &qword_1EBE0CE40, &qword_1C04F8900);
    if (*(&v187 + 1))
    {
      v68 = v188;
      v69 = __swift_project_boxed_opaque_existential_1(&v186, *(&v187 + 1));
      MEMORY[0x1EEE9AC00](v69);
      OUTLINED_FUNCTION_249();
      (*(v68 + 16))(&v189, 0, v50, 0, a19);

LABEL_38:
      sub_1C04A12B4(&v189, &qword_1EBE0CB20, &unk_1C04F8B20);
      __swift_destroy_boxed_opaque_existential_1(&v186);
      return;
    }

    sub_1C04A12B4(&v189, &qword_1EBE0CB20, &unk_1C04F8B20);

    goto LABEL_78;
  }

  v174 = a3;
  v35 = sub_1C04F6740();
  v175 = v34;
  v36 = [v34 valueForHTTPHeaderField_];

  if (v36)
  {
    v173 = v32;
    v37 = sub_1C04F6750();
    v39 = v38;

    v172 = v37;
    v40 = sub_1C048728C(v37, v39);
    if ((v41 & 1) == 0 && v40)
    {
      v180 = v40;
      v42 = sub_1C04F6740();
      v43 = [v175 valueForHTTPHeaderField_];

      if (v43)
      {
        v44 = sub_1C04F6750();
        v30 = v45;
      }

      else
      {
        v44 = 0;
        v30 = 0xE000000000000000;
      }

      v32 = v173;
      if (qword_1EDE44480 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v81 = sub_1C04F6400();
      __swift_project_value_buffer(v81, qword_1EDE44DB0);

      v82 = sub_1C04F63E0();
      sub_1C04F6A10();

      v83 = OUTLINED_FUNCTION_203();
      if (os_log_type_enabled(v83, v84))
      {
        OUTLINED_FUNCTION_155();
        v85 = swift_slowAlloc();
        *&v186 = swift_slowAlloc();
        *v85 = 136315394;
        v86 = sub_1C047D76C(v172, v39, &v186);

        *(v85 + 4) = v86;
        *(v85 + 12) = 2080;
        *(v85 + 14) = sub_1C047D76C(v44, v30, &v186);
        OUTLINED_FUNCTION_322(&dword_1C0479000, v87, v88, "RPC error: %s: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_134();
        MEMORY[0x1C68DCEB0]();
        OUTLINED_FUNCTION_134();
        MEMORY[0x1C68DCEB0]();
      }

      else
      {
      }

      sub_1C04A0FF8();
      OUTLINED_FUNCTION_142();
      swift_allocError();
      *v89 = v180;
      v89[1] = v44;
      v89[2] = v30;
      v90 = OUTLINED_FUNCTION_299(v89, 3);
      OUTLINED_FUNCTION_191(v90, v91, &qword_1EBE0CE40, &qword_1C04F8900);
      if (*(&v187 + 1))
      {
        a17 = a18;
LABEL_36:
        v92 = OUTLINED_FUNCTION_219();
        MEMORY[0x1EEE9AC00](v92);
        OUTLINED_FUNCTION_249();
        (*(v30 + 2))(&v189, 0, v175, 0, a17);
        goto LABEL_37;
      }

      goto LABEL_77;
    }

    v32 = v173;
  }

  v184 = sub_1C04F61A0();
  v185 = v70;
  if (sub_1C04E2444(v184, v70))
  {
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    v71[1] = 0;
    v71[2] = 0;
    *v71 = 0;
    OUTLINED_FUNCTION_299(v71, 5);
    v72 = sub_1C04A1144(v184, v185);
    OUTLINED_FUNCTION_191(v72, v73, &qword_1EBE0CE40, &qword_1C04F8900);
    if (*(&v187 + 1))
    {
      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_252();
      MEMORY[0x1EEE9AC00](v74);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_305();
LABEL_23:
      v75();
LABEL_37:

      goto LABEL_38;
    }

LABEL_77:
    sub_1C04A12B4(&v189, &qword_1EBE0CB20, &unk_1C04F8B20);

LABEL_78:
    sub_1C04A12B4(&v186, &qword_1EBE0CE40, &qword_1C04F8900);
    return;
  }

  v76 = sub_1C049E6A8();
  if (v19)
  {
    v77 = sub_1C04A1144(v184, v185);
    OUTLINED_FUNCTION_191(v77, v78, &qword_1EBE0CE40, &qword_1C04F8900);
    if (*(&v187 + 1))
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

  v80 = v76;
  v93 = bswap32(sub_1C049E82C());
  v173 = v93;
  v95 = v184;
  v94 = v185;
  if (MEMORY[0x1C68DAC70](v184, v185) != v93)
  {
    *&v186 = 0;
    *(&v186 + 1) = 0xE000000000000000;
    sub_1C04F6C40();
    MEMORY[0x1C68DC0D0](0xD000000000000018, 0x80000001C04FCC90);
    LODWORD(v183) = v93;
    v112 = sub_1C04F6D60();
    MEMORY[0x1C68DC0D0](v112);

    MEMORY[0x1C68DC0D0](0xD000000000000019, 0x80000001C04FCCB0);
    v183 = MEMORY[0x1C68DAC70](v184, v185);
    v113 = sub_1C04F6D60();
    MEMORY[0x1C68DC0D0](v113);

    v114 = v186;
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_142();
    v115 = swift_allocError();
    *v116 = v114;
    *(v116 + 16) = 0;
    OUTLINED_FUNCTION_299(v116, 4);
    v117 = sub_1C04A1144(v184, v185);
    OUTLINED_FUNCTION_191(v117, v118, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!*(&v187 + 1))
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_169();
    if ((v93 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    __break(1u);
    OUTLINED_FUNCTION_0_2();
    swift_once();
    v151 = sub_1C04F6400();
    __swift_project_value_buffer(v151, qword_1EDE44DB0);
    v152 = v115;
    v153 = sub_1C04F63E0();
    v154 = sub_1C04F6A20();

    v155 = os_log_type_enabled(v153, v154);
    v171 = v93;
    if (v155)
    {
      OUTLINED_FUNCTION_145();
      v156 = swift_slowAlloc();
      OUTLINED_FUNCTION_149();
      v157 = swift_slowAlloc();
      *&v186 = v157;
      *v156 = 136315138;
      v191 = v115;
      v158 = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v159 = sub_1C04F6790();
      v161 = sub_1C047D76C(v159, v160, &v186);

      *(v156 + 4) = v161;
      _os_log_impl(&dword_1C0479000, v153, v154, "Couldn't parse response data. Error: %s", v156, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v157);
      v162 = OUTLINED_FUNCTION_50();
      MEMORY[0x1C68DCEB0](v162);
      OUTLINED_FUNCTION_134();
      MEMORY[0x1C68DCEB0]();
    }

    swift_willThrow();
    v168 = sub_1C04A1144(v184, v185);
    OUTLINED_FUNCTION_191(v168, v169, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!*(&v187 + 1))
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_219();
    if ((v172 & 0x80000000) == 0)
    {
LABEL_53:
      OUTLINED_FUNCTION_252();
      MEMORY[0x1EEE9AC00](v122);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_305();
      goto LABEL_23;
    }

LABEL_81:
    __break(1u);
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v172 = v93;
  if (!v80)
  {
    goto LABEL_68;
  }

  v96 = v94;
  v171 = a12;
  if (qword_1EDE44480 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v97 = sub_1C04F6400();
  v170 = __swift_project_value_buffer(v97, qword_1EDE44DB0);
  v98 = sub_1C04F63E0();
  v99 = sub_1C04F6A10();
  v100 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v100, v101))
  {
    OUTLINED_FUNCTION_154();
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_1C0479000, v98, v99, "Response indicates compressed payload, attempting to inflate", v102, 2u);
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  v103 = OUTLINED_FUNCTION_236();
  sub_1C048087C(v103, v104);
  v105 = sub_1C04CAAA4(v171, v95, v96);
  v106 = OUTLINED_FUNCTION_236();
  sub_1C04A1144(v106, v107);
  if ((v105 & 1) == 0)
  {
    sub_1C04A0FF8();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v119 = 0xD000000000000043;
    v119[1] = 0x80000001C04FCCD0;
    v119[2] = 0;
    OUTLINED_FUNCTION_299(v119, 4);
    v120 = sub_1C04A1144(v184, v185);
    OUTLINED_FUNCTION_191(v120, v121, &qword_1EBE0CE40, &qword_1C04F8900);
    if (!*(&v187 + 1))
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_169();
    if ((v172 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_81;
  }

  v108 = OUTLINED_FUNCTION_236();
  sub_1C048087C(v108, v109);
  v110 = OUTLINED_FUNCTION_236();
  v171 = sub_1C04E2498(v110, v111);
  v124 = v123;
  v125 = OUTLINED_FUNCTION_236();
  sub_1C04A1144(v125, v126);
  v127 = OUTLINED_FUNCTION_284();
  sub_1C048087C(v127, v128);
  v129 = sub_1C04F63E0();
  sub_1C04F6A10();
  v130 = OUTLINED_FUNCTION_143();
  if (os_log_type_enabled(v130, v131))
  {
    OUTLINED_FUNCTION_155();
    v132 = swift_slowAlloc();
    *v132 = 134218240;
    OUTLINED_FUNCTION_141();
    swift_beginAccess();
    v133 = 0;
    switch(v185 >> 62)
    {
      case 1uLL:
        OUTLINED_FUNCTION_202();
        if (v137)
        {
          goto LABEL_84;
        }

        v133 = v136;
        break;
      case 2uLL:
        OUTLINED_FUNCTION_201();
        if (v137)
        {
          goto LABEL_85;
        }

        break;
      case 3uLL:
        break;
      default:
        v133 = BYTE6(v185);
        break;
    }

    *(v132 + 4) = v133;
    *(v132 + 12) = 2048;
    v138 = 0;
    switch(v124 >> 62)
    {
      case 1uLL:
        LODWORD(v138) = HIDWORD(v171) - v171;
        if (__OFSUB__(HIDWORD(v171), v171))
        {
          goto LABEL_86;
        }

        v138 = v138;
        break;
      case 2uLL:
        v140 = *(v171 + 16);
        v139 = *(v171 + 24);
        v137 = __OFSUB__(v139, v140);
        v138 = v139 - v140;
        if (v137)
        {
          goto LABEL_87;
        }

        break;
      case 3uLL:
        break;
      default:
        v138 = BYTE6(v124);
        break;
    }

    *(v132 + 14) = v138;
    v141 = OUTLINED_FUNCTION_284();
    sub_1C04A1144(v141, v142);
    OUTLINED_FUNCTION_322(&dword_1C0479000, v143, v144, "Response inflated in size from %ld to %ld");
    OUTLINED_FUNCTION_134();
    MEMORY[0x1C68DCEB0]();
  }

  else
  {
    v134 = OUTLINED_FUNCTION_284();
    sub_1C04A1144(v134, v135);
  }

  swift_beginAccess();
  v145 = v184;
  v146 = v185;
  v147 = v171;
  v184 = v171;
  v185 = v124;
  sub_1C048087C(v171, v124);
  sub_1C04A1144(v145, v146);
  v148 = MEMORY[0x1C68DAC70](v147, v124);
  v149 = v147;
  v150 = v148;
  sub_1C04A1144(v149, v124);
  if (v150 < 0)
  {
    goto LABEL_82;
  }

LABEL_68:
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  sub_1C048087C(v184, v185);
  sub_1C04F62F0();
  sub_1C04A1764(v179, v180, a9);
  sub_1C04F6340();
  *(&v187 + 1) = v26;
  __swift_allocate_boxed_opaque_existential_0(&v186);
  OUTLINED_FUNCTION_310();
  v163();
  sub_1C04A12B4(&v189, &qword_1EBE0CB20, &unk_1C04F8B20);
  v189 = v186;
  v190 = v187;
  OUTLINED_FUNCTION_310();
  v164();
  v165 = sub_1C04A1144(v184, v185);
  OUTLINED_FUNCTION_191(v165, v166, &qword_1EBE0CE40, &qword_1C04F8900);
  v167 = v172;
  if (!*(&v187 + 1))
  {
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_169();
  if ((v167 & 0x80000000) == 0)
  {
    goto LABEL_53;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_1C049E6A8()
{
  v14 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1C68DAC70](*v0, v0[1]) < 1)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    OUTLINED_FUNCTION_141();
    sub_1C049E964(v4, v5, v6, v7);
    return swift_willThrow();
  }

  v13 = 0;
  v1 = *v0;
  v2 = 0;
  switch(v0[1] >> 62)
  {
    case 1:
      v2 = v1;
      break;
    case 2:
      v2 = *(v1 + 16);
      break;
    default:
      break;
  }

  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (v2 + 1 < v2)
  {
    goto LABEL_10;
  }

  v9 = OUTLINED_FUNCTION_309();
  sub_1C048087C(v9, v10);
  OUTLINED_FUNCTION_317(&v13);
  v11 = OUTLINED_FUNCTION_309();
  sub_1C04A1144(v11, v12);
  OUTLINED_FUNCTION_141();
  sub_1C04F5360();
  return v13;
}

uint64_t sub_1C049E82C()
{
  v14 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1C68DAC70](*v0, v0[1]) < 4)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    OUTLINED_FUNCTION_141();
    sub_1C049E964(v2, v3, v4, v5);
    return swift_willThrow();
  }

  v13 = 0;
  v7 = *v0;
  v8 = 0;
  switch(v0[1] >> 62)
  {
    case 1:
      v8 = v7;
      break;
    case 2:
      v8 = *(v7 + 16);
      break;
    default:
      break;
  }

  if (__OFADD__(v8, 4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (v8 + 4 < v8)
  {
    goto LABEL_10;
  }

  v9 = OUTLINED_FUNCTION_309();
  sub_1C048087C(v9, v10);
  OUTLINED_FUNCTION_317(&v13);
  v11 = OUTLINED_FUNCTION_309();
  sub_1C04A1144(v11, v12);
  OUTLINED_FUNCTION_141();
  sub_1C04F5360();
  return v13;
}

id sub_1C049E964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C04F6740();

  if (a4)
  {
    v8 = sub_1C04F66B0();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1C049EA14(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C049EA60(a1, a2);
  sub_1C049EB78(&unk_1F3F866D0);
  return v3;
}

uint64_t sub_1C049EA60(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1C04F6850())
  {
    result = sub_1C049EC5C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C04F6C20();
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
          result = sub_1C04F6C70();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C049EB78(uint64_t result)
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

    result = sub_1C049ECCC(result, v7, 1, v3);
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

void *sub_1C049EC5C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE70, &qword_1C04F8590);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1C049ECCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE70, &qword_1C04F8590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unsigned __int8 *sub_1C049EDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_1C04F68C0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C049F2D8(result, v5);
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C04F6C70();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_292();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_290();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_292();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_290();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_153();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_290();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_153();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_290();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_153();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_290();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}