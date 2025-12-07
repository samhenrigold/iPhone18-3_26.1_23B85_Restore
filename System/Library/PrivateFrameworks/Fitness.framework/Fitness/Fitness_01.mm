unint64_t sub_24B39865C()
{
  result = qword_27EFE5020;
  if (!qword_27EFE5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5020);
  }

  return result;
}

uint64_t sub_24B3986E8(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

void PredictedWorkoutIntent.init()(uint64_t *a1@<X8>)
{
  v74 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FF0, &qword_24B3AF608);
  MEMORY[0x28223BE20](v1 - 8);
  v73 = v65 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FC8, &qword_24B3AF5F0);
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FA0, &qword_24B3AF5D8);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = v65 - v6;
  v86 = sub_24B3AB2E4();
  v7 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v66 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F78, &qword_24B3AF5C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F80, &qword_24B3AF5C8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v65 - v16;
  v18 = sub_24B3AB434();
  v82 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F88, &qword_24B3AF5D0);
  sub_24B3AB424();
  v84 = *(v19 + 56);
  v85 = v19 + 56;
  v84(v17, 1, 1, v18);
  v90 = 33;
  v22 = sub_24B3AB194();
  v87 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v83 = v24;
  v25 = v23 + 56;
  v26 = v14;
  v24(v14, 1, 1, v22);
  v79 = v12;
  v24(v12, 1, 1, v22);
  v80 = *MEMORY[0x277CBA308];
  v27 = *(v7 + 104);
  v81 = v7 + 104;
  v77 = v27;
  v28 = v66;
  v27(v66);
  sub_24B396070();
  sub_24B3AB894();
  sub_24B3960C4();
  v72 = sub_24B3AB1E4();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FA8, &qword_24B3AF5E0);
  sub_24B3AB424();
  v29 = v17;
  v30 = v82;
  v84(v17, 1, 1, v82);
  LOBYTE(v88) = 0;
  v31 = sub_24B3AB764();
  (*(*(v31 - 8) + 56))(v68, 1, 1, v31);
  v32 = v26;
  v83(v26, 1, 1, v87);
  v33 = v28;
  v34 = v28;
  v35 = v86;
  v36 = v77;
  v77(v34, v80, v86);
  v75 = v29;
  v76 = v21;
  v65[0] = v32;
  v68 = sub_24B3AB204();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FB0, &qword_24B3AF5E8);
  sub_24B3AB424();
  v84(v29, 1, 1, v30);
  v90 = 0;
  v37 = v87;
  v38 = v83;
  v83(v32, 1, 1, v87);
  v38(v79, 1, 1, v37);
  v78 = v25;
  v39 = v33;
  v40 = v80;
  v36(v33, v80, v35);
  sub_24B396B3C();
  sub_24B3AB894();
  sub_24B396B90();
  v41 = v75;
  v42 = v65[0];
  v67 = sub_24B3AB1E4();
  v65[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FD0, &qword_24B3AF5F8);
  sub_24B3AB424();
  v43 = v82;
  v84(v41, 1, 1, v82);
  v88 = 0;
  LOBYTE(v89) = 0;
  v83(v42, 1, 1, v87);
  (*(v70 + 104))(v69, *MEMORY[0x277CB9ED0], v71);
  v44 = v39;
  v45 = v39;
  v46 = v86;
  v47 = v77;
  v77(v45, v40, v86);
  v71 = sub_24B3AB214();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FD8, &qword_24B3AF600);
  sub_24B3AB424();
  v48 = v41;
  v49 = v84;
  v84(v48, 1, 1, v43);
  v90 = 0;
  v50 = v87;
  v51 = v83;
  v83(v42, 1, 1, v87);
  v51(v79, 1, 1, v50);
  v52 = v80;
  v53 = v46;
  v54 = v47;
  v47(v44, v80, v53);
  sub_24B397630();
  sub_24B3AB894();
  sub_24B397684();
  v55 = v75;
  v79 = sub_24B3AB1E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4FF8, &qword_24B3AF610);
  sub_24B3AB424();
  v49(v55, 1, 1, v82);
  v56 = sub_24B3AB684();
  v88 = 0;
  v89 = 0;
  (*(*(v56 - 8) + 56))(v73, 1, 1, v56);
  v51(v42, 1, 1, v87);
  v54(v44, v52, v86);
  v57 = sub_24B3AB1F4();
  if (qword_27EFE59C0[0] != -1)
  {
    swift_once();
  }

  v58 = sub_24B3AB5E4();
  __swift_project_value_buffer(v58, qword_27EFE78D0);
  v59 = sub_24B3AB5C4();
  v60 = sub_24B3AB7B4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_24B35E000, v59, v60, "PredictedWorkoutIntent instantiated", v61, 2u);
    MEMORY[0x24C23F390](v61, -1, -1);
  }

  v62 = v74;
  v63 = v68;
  *v74 = v72;
  v62[1] = v63;
  v64 = v71;
  v62[2] = v67;
  v62[3] = v64;
  v62[4] = v79;
  v62[5] = v57;
}

uint64_t PredictedWorkoutIntent.init(predictedWorkout:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  *&v22.workoutActivityType = *a1;
  *&v22.thirdPartyBundleID.value._object = v3;
  v22.workoutGoalValue.is_nil = *(a1 + 32);
  if (qword_27EFE59C0[0] != -1)
  {
    swift_once();
  }

  v4 = sub_24B3AB5E4();
  __swift_project_value_buffer(v4, qword_27EFE78D0);
  v5 = sub_24B3AB5C4();
  v6 = sub_24B3AB7B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24B35E000, v5, v6, "PredictedWorkoutIntent instantiated with predicted workout", v7, 2u);
    MEMORY[0x24C23F390](v7, -1, -1);
  }

  PredictedWorkoutIntent.init()(&v16);
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  *a2 = v16;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v13;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v15 = v22;

  PredictedWorkoutIntent.configure(with:)(&v15);

  return sub_24B39C000(&v22);
}

uint64_t sub_24B399428()
{
  if (qword_27EFE59C0[0] != -1)
  {
    swift_once();
  }

  v1 = sub_24B3AB5E4();
  __swift_project_value_buffer(v1, qword_27EFE78D0);
  v2 = sub_24B3AB5C4();
  v3 = sub_24B3AB7B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24B35E000, v2, v3, "Attempting to open Fitness on iOS", v4, 2u);
    MEMORY[0x24C23F390](v4, -1, -1);
  }

  if (qword_27EFE5990 != -1)
  {
    swift_once();
  }

  v5 = qword_27EFE5998;
  swift_willThrow();
  v7 = *(v0 + 8);
  v5;

  return v7();
}

uint64_t *sub_24B39958C()
{
  if (qword_27EFE5990 != -1)
  {
    swift_once();
  }

  return &qword_27EFE5998;
}

uint64_t sub_24B3995DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4EF8, &qword_24B3AF300);
  *(v1 + 152) = swift_task_alloc();
  v2 = sub_24B3AB464();
  *(v1 + 160) = v2;
  *(v1 + 168) = *(v2 - 8);
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  v3 = v0[1];
  *(v1 + 192) = *v0;
  *(v1 + 208) = v3;
  *(v1 + 224) = v0[2];

  return MEMORY[0x2822009F8](sub_24B3996EC, 0, 0);
}

uint64_t sub_24B3996EC()
{
  v35 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 208);
  v34[0] = *(v0 + 192);
  v34[1] = v4;
  v34[2] = *(v0 + 224);
  PredictedWorkoutIntent.startWorkoutURL.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24B364D34(*(v0 + 152), &qword_27EFE4EF8, &qword_24B3AF300);
    if (qword_27EFE59C0[0] != -1)
    {
      swift_once();
    }

    v5 = sub_24B3AB5E4();
    __swift_project_value_buffer(v5, qword_27EFE78D0);
    v6 = sub_24B3AB5C4();
    v7 = sub_24B3AB7B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24B35E000, v6, v7, "Unable to build URI for starting workout", v8, 2u);
      MEMORY[0x24C23F390](v8, -1, -1);
    }

    if (qword_27EFE59B0 != -1)
    {
      swift_once();
    }

    v9 = qword_27EFE59B8;
    swift_willThrow();
    v9;

    v10 = *(v0 + 8);

    return v10(0);
  }

  else
  {
    (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
    if (qword_27EFE59C0[0] != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 160);
    v15 = *(v0 + 168);
    v16 = sub_24B3AB5E4();
    __swift_project_value_buffer(v16, qword_27EFE78D0);
    (*(v15 + 16))(v12, v13, v14);
    v17 = sub_24B3AB5C4();
    v18 = sub_24B3AB7C4();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 160);
    if (v19)
    {
      v23 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v34[0] = v33;
      *v23 = 136315138;
      sub_24B39C054();
      v24 = sub_24B3AB974();
      v26 = v25;
      v27 = *(v21 + 8);
      v27(v20, v22);
      v28 = sub_24B363F6C(v24, v26, v34);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_24B35E000, v17, v18, "Attempting to open Workout with URI: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C23F390](v33, -1, -1);
      MEMORY[0x24C23F390](v23, -1, -1);
    }

    else
    {

      v27 = *(v21 + 8);
      v27(v20, v22);
    }

    *(v0 + 240) = v27;
    v29 = [objc_opt_self() defaultWorkspace];
    *(v0 + 248) = v29;
    if (v29)
    {
      v30 = v29;
      v31 = sub_24B3AB444();
      *(v0 + 256) = v31;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_24B399BC8;
      v32 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5028, &unk_24B3AF670);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_24B399EB4;
      *(v0 + 104) = &block_descriptor;
      *(v0 + 112) = v32;
      [v30 openURL:v31 configuration:0 completionHandler:v0 + 80];
      v29 = (v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v29);
  }
}

uint64_t sub_24B399BC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_24B399D9C;
  }

  else
  {
    v2 = sub_24B399CD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B399CD8()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  (*(v0 + 240))(*(v0 + 184), *(v0 + 160));

  v3 = *(v0 + 8);

  return v3(1);
}

uint64_t sub_24B399D9C()
{
  v1 = v0[32];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[23];
  v5 = v0[20];
  swift_willThrow();
  v3(v4, v5);

  v6 = v0[1];

  return v6(0);
}

uint64_t *sub_24B399E64()
{
  if (qword_27EFE59B0 != -1)
  {
    swift_once();
  }

  return &qword_27EFE59B8;
}

uint64_t sub_24B399EB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE50A0, &qword_24B3AF9B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_24B3AB634();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

id sub_24B399FD4()
{
  v24 = v0;
  sub_24B3AB1B4();
  v1 = v0[3];
  if (!v1)
  {
    if (qword_27EFE59C0[0] != -1)
    {
      swift_once();
    }

    v13 = sub_24B3AB5E4();
    __swift_project_value_buffer(v13, qword_27EFE78D0);
    v14 = sub_24B3AB5C4();
    v15 = sub_24B3AB7B4();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_16;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24B35E000, v14, v15, "PredictedWorkoutIntent: No third party bundle ID defined", v16, 2u);
    v17 = v16;
LABEL_15:
    MEMORY[0x24C23F390](v17, -1, -1);
LABEL_16:

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v2 = v0[2];
  if (qword_27EFE59C0[0] != -1)
  {
    swift_once();
  }

  v3 = sub_24B3AB5E4();
  __swift_project_value_buffer(v3, qword_27EFE78D0);

  v4 = sub_24B3AB5C4();
  v5 = sub_24B3AB7C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24B363F6C(v2, v1, &v23);
    _os_log_impl(&dword_24B35E000, v4, v5, "PredictedWorkoutIntent: Attempting to open third party app with bundle ID: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C23F390](v7, -1, -1);
    MEMORY[0x24C23F390](v6, -1, -1);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = sub_24B3AB694();
  v11 = [v9 openApplicationWithBundleID_];

  if ((v11 & 1) == 0)
  {

    v14 = sub_24B3AB5C4();
    v18 = sub_24B3AB7B4();

    if (!os_log_type_enabled(v14, v18))
    {

      goto LABEL_18;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    v21 = sub_24B363F6C(v2, v1, &v23);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_24B35E000, v14, v18, "PredictedWorkoutIntent: Failed to open third party app with bundle ID: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C23F390](v20, -1, -1);
    v17 = v19;
    goto LABEL_15;
  }

  v12 = 1;
LABEL_19:
  v22 = v0[1];

  return v22(v12);
}

uint64_t sub_24B39A368@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFE5950 != -1)
  {
    swift_once();
  }

  v2 = sub_24B3AB434();
  v3 = __swift_project_value_buffer(v2, qword_27EFE5958);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24B39A420(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5000, &qword_24B3AF618);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5008, &qword_24B3AF620);
  MEMORY[0x28223BE20](v3);
  sub_24B3AB2C4();
  sub_24B3AB2B4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5018, &qword_24B3AF650);
  sub_24B3AB2A4();

  sub_24B3AB2B4();
  sub_24B3AB2D4();
  return sub_24B3AB294();
}

uint64_t sub_24B39A5B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24B39A644;

  return PredictedWorkoutIntent.perform()();
}

uint64_t sub_24B39A644()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B39A73C(uint64_t a1)
{
  v2 = sub_24B397FF8();

  return MEMORY[0x28210B538](a1, v2);
}

void sub_24B39A77C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5088, &qword_24B3AF998);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B3AF5B0;
  *(inited + 32) = sub_24B3AB6A4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000035;
  *(inited + 56) = 0x800000024B3B7D90;
  sub_24B39C3E4(inited);
  swift_setDeallocating();
  sub_24B364D34(inited + 32, &qword_27EFE5090, &qword_24B3AF9A0);
  v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v3 = sub_24B3AB694();
  v4 = sub_24B3AB624();

  v5 = [v2 initWithDomain:v3 code:1001 userInfo:v4];

  qword_27EFE5998 = v5;
}

void sub_24B39A8FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5088, &qword_24B3AF998);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B3AF5B0;
  *(inited + 32) = sub_24B3AB6A4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000002CLL;
  *(inited + 56) = 0x800000024B3B7D30;
  sub_24B39C3E4(inited);
  swift_setDeallocating();
  sub_24B364D34(inited + 32, &qword_27EFE5090, &qword_24B3AF9A0);
  v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v3 = sub_24B3AB694();
  v4 = sub_24B3AB624();

  v5 = [v2 initWithDomain:v3 code:1002 userInfo:v4];

  qword_27EFE59A8 = v5;
}

uint64_t *sub_24B39AA58()
{
  if (qword_27EFE59A0 != -1)
  {
    swift_once();
  }

  return &qword_27EFE59A8;
}

void sub_24B39AACC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5088, &qword_24B3AF998);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B3AF5B0;
  *(inited + 32) = sub_24B3AB6A4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000020;
  *(inited + 56) = 0x800000024B3B7D60;
  sub_24B39C3E4(inited);
  swift_setDeallocating();
  sub_24B364D34(inited + 32, &qword_27EFE5090, &qword_24B3AF9A0);
  v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v3 = sub_24B3AB694();
  v4 = sub_24B3AB624();

  v5 = [v2 initWithDomain:v3 code:1003 userInfo:v4];

  qword_27EFE59B8 = v5;
}

id sub_24B39AC4C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_24B39ACAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B3AB694();
  v3 = FILocalizedStringForKey(v2);

  if (v3)
  {
    sub_24B3AB6A4();
  }

  else
  {
  }

  return sub_24B3AB424();
}

uint64_t sub_24B39AD40()
{
  v0 = sub_24B3AB5E4();
  __swift_allocate_value_buffer(v0, qword_27EFE78D0);
  __swift_project_value_buffer(v0, qword_27EFE78D0);
  return sub_24B3AB5D4();
}

uint64_t sub_24B39ADF4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t PredictedWorkoutIntent.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5038, &qword_24B3AF680);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F80, &qword_24B3AF5C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_24B3AB434();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = *v0;
  v15 = v0[1];
  v16 = v9;
  v14 = v0[2];
  v10 = sub_24B3AB694();
  v11 = FILocalizedStringForKey(v10);

  if (v11)
  {
    sub_24B3AB6A4();
  }

  sub_24B3AB424();
  sub_24B3AB424();
  (*(v8 + 56))(v6, 0, 1, v7);
  v17 = v16;
  v18 = v15;
  v19 = v14;
  PredictedWorkoutIntent.symbolName.getter();
  sub_24B3AB254();
  v12 = sub_24B3AB264();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  return sub_24B3AB274();
}

unint64_t PredictedWorkoutIntent.symbolName.getter()
{
  sub_24B3AB1B4();
  result = 0x612E657275676966;
  switch(v15)
  {
    case 1:
      return result;
    case 2:
    case 56:
      return 0xD00000000000001ALL;
    case 3:
    case 50:
    case 52:
      return 0xD000000000000010;
    case 4:
    case 54:
      return 0x622E657275676966;
    case 5:
      return 0xD000000000000011;
    case 6:
      return 0x622E657275676966;
    case 7:
      return 0x622E657275676966;
    case 8:
    case 9:
    case 76:
      return 0x632E657275676966;
    case 10:
      return 0xD000000000000015;
    case 11:
      return 0x632E657275676966;
    case 12:
      sub_24B3AB1B4();
      v1 = v7;
      v2 = 0xD000000000000014;
      v6 = 0xD000000000000013;
      goto LABEL_30;
    case 13:
      return 0xD000000000000011;
    case 15:
    case 16:
      return 0x662E657275676966;
    case 17:
      return 0xD000000000000022;
    case 18:
      return 0x672E657275676966;
    case 19:
      return 0xD000000000000011;
    case 20:
      return 0x682E657275676966;
    case 21:
      return 0x682E657275676966;
    case 22:
      sub_24B3AB1B4();
      v3 = v8;
      v4 = 0xD000000000000013;
      v5 = 0xD000000000000011;
      goto LABEL_45;
    case 23:
      return 0x682E657275676966;
    case 24:
      return 0x6C2E657275676966;
    case 25:
    case 43:
    case 63:
    case 69:
    case 70:
      return 0xD000000000000013;
    case 26:
    case 40:
    case 49:
    case 55:
    case 65:
      return 0xD000000000000014;
    case 27:
      return 0x72632E322E72616FLL;
    case 28:
    case 62:
      return 0x702E657275676966;
    case 29:
      return 0x722E657275676966;
    case 30:
    case 58:
    case 71:
    case 74:
      return 0xD000000000000012;
    case 31:
      sub_24B3AB1B4();
      v1 = v9;
      v2 = 0xD000000000000015;
      goto LABEL_29;
    case 32:
    case 66:
      return 0x722E657275676966;
    case 33:
      sub_24B3AB1B4();
      if (v10 == 1)
      {
        return 0xD000000000000014;
      }

      else
      {
        return 0x722E657275676966;
      }

    case 34:
      return 0x732E657275676966;
    case 35:
      sub_24B3AB1B4();
      if (v11 == 1)
      {
        return 0xD000000000000012;
      }

      else
      {
        return 0x732E657275676966;
      }

    case 36:
      return 0x6B616C66776F6E73;
    case 37:
      sub_24B3AB1B4();
      v1 = v12;
      v2 = 0xD000000000000015;
LABEL_29:
      v6 = 0xD000000000000014;
LABEL_30:
      if (v1 == 1)
      {
        result = v6;
      }

      else
      {
        result = v2;
      }

      break;
    case 38:
    case 39:
    case 41:
    case 64:
      result = 0x732E657275676966;
      break;
    case 42:
      sub_24B3AB1B4();
      if (v13 <= 1u)
      {
        result = 0xD000000000000010;
      }

      else
      {
        result = 0xD000000000000016;
      }

      break;
    case 44:
    case 68:
      result = 0x742E657275676966;
      break;
    case 45:
    case 57:
      result = 0xD000000000000016;
      break;
    case 46:
      result = 0xD000000000000023;
      break;
    case 47:
      result = 0xD000000000000011;
      break;
    case 48:
      sub_24B3AB1B4();
      v3 = v14;
      v4 = 0x772E657275676966;
      v5 = 0xD000000000000015;
LABEL_45:
      if (v3 == 1)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      break;
    case 51:
      result = 0x61772E7265746177;
      break;
    case 53:
      result = 0x792E657275676966;
      break;
    case 59:
      result = 0xD000000000000025;
      break;
    case 60:
      result = 0x6A2E657275676966;
      break;
    case 61:
      result = 0xD000000000000011;
      break;
    case 67:
      result = 0xD000000000000017;
      break;
    case 72:
      result = 0x746E6F63656D6167;
      break;
    case 73:
      result = 0x642E657275676966;
      break;
    case 75:
      result = 0xD000000000000011;
      break;
    case 77:
    case 79:
      result = 0xD000000000000011;
      break;
    case 78:
      result = 0x656C637269632E74;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_24B39BB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24B39A644;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_24B39BBE4(uint64_t a1)
{
  v2 = sub_24B39C390();

  return MEMORY[0x28210C4B8](a1, v2);
}

void *sub_24B39BC30(uint64_t a1, unint64_t a2)
{
  v3 = sub_24B39BC7C(a1, a2);
  sub_24B39BDAC(&unk_285E5E7E0);
  return v3;
}

void *sub_24B39BC7C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24B39BE98(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24B3AB8B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24B3AB6E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B39BE98(v10, 0);
        result = sub_24B3AB874();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24B39BDAC(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24B39BF0C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24B39BE98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE50A8, &qword_24B3AF9B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24B39BF0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE50A8, &qword_24B3AF9B8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_24B39C054()
{
  result = qword_27EFE5030;
  if (!qword_27EFE5030)
  {
    sub_24B3AB464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5030);
  }

  return result;
}

unint64_t sub_24B39C0B0()
{
  result = qword_27EFE5040;
  if (!qword_27EFE5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5040);
  }

  return result;
}

unint64_t sub_24B39C10C()
{
  result = qword_27EFE5048;
  if (!qword_27EFE5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5048);
  }

  return result;
}

unint64_t sub_24B39C164()
{
  result = qword_27EFE5050;
  if (!qword_27EFE5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5050);
  }

  return result;
}

unint64_t sub_24B39C20C()
{
  result = qword_27EFE5058;
  if (!qword_27EFE5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5058);
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

uint64_t sub_24B39C294(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B39C2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B39C348(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_24B39C390()
{
  result = qword_27EFE5080;
  if (!qword_27EFE5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5080);
  }

  return result;
}

unint64_t sub_24B39C3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5098, &qword_24B3AF9A8);
    v3 = sub_24B3AB944();
    v4 = a1 + 32;

    while (1)
    {
      sub_24B39C4F4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24B391B44(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24B39C564(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24B39C4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5090, &qword_24B3AF9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24B39C564(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_24B39C634()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

id sub_24B39C674(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHealthStore_];

  return v2;
}

id sub_24B39C6BC(void *a1)
{
  *&v1[OBJC_IVAR___FIPregnancyStateProvider_query] = 0;
  v3 = OBJC_IVAR___FIPregnancyStateProvider_observers;
  *&v1[v3] = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR___FIPregnancyStateProvider_pregnancyModel] = 0;
  *&v1[OBJC_IVAR___FIPregnancyStateProvider_healthStore] = a1;
  v7.receiver = v1;
  v7.super_class = FIPregnancyStateProvider;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v5 activate];

  return v5;
}

id sub_24B39C7B0()
{
  swift_getObjectType();
  v1 = sub_24B3AB7C4();
  v2 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_24B3ABA14();
    v8 = sub_24B363F6C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24B35E000, v3, v1, "%s De-init called.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23F390](v5, -1, -1);
    MEMORY[0x24C23F390](v4, -1, -1);
  }

  [v0 stopQuery];
  v11.receiver = v0;
  v11.super_class = FIPregnancyStateProvider;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

void *sub_24B39C98C()
{
  v1 = *(v0 + OBJC_IVAR___FIPregnancyStateProvider_pregnancyModel);
  v2 = v1;
  return v1;
}

void *sub_24B39C9CC()
{
  result = *(v0 + OBJC_IVAR___FIPregnancyStateProvider_pregnancyModel);
  if (result)
  {
    return ([result state] == 1);
  }

  return result;
}

void sub_24B39CAA8(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR___FIPregnancyStateProvider_observers) allObjects];
  v4 = sub_24B3AB724();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_15;
  }

  v5 = sub_24B3AB934();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C23E6E0](i, v4);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        [v7 pregnancyModelDidChangeWithProvider:v1 model:a1];
      }

      swift_unknownObjectRelease();
    }

LABEL_15:

    return;
  }

  __break(1u);
}

void sub_24B39CC88()
{
  ObjectType = swift_getObjectType();
  v2 = sub_24B3AB7C4();
  v3 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], v2))
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;
    v7 = sub_24B3ABA14();
    v9 = sub_24B363F6C(v7, v8, v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24B35E000, v4, v2, "%s Starting pregnancy state query.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23F390](v6, -1, -1);
    MEMORY[0x24C23F390](v5, -1, -1);
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = ObjectType;
  v12 = objc_allocWithZone(MEMORY[0x277CCD5B0]);
  v16[4] = sub_24B363770;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_24B3636D0;
  v16[3] = &block_descriptor_0;
  v13 = _Block_copy(v16);

  v14 = [v12 initWithUpdateHandler_];
  _Block_release(v13);

  [*(v0 + OBJC_IVAR___FIPregnancyStateProvider_healthStore) executeQuery_];
  v15 = *(v0 + OBJC_IVAR___FIPregnancyStateProvider_query);
  *(v0 + OBJC_IVAR___FIPregnancyStateProvider_query) = v14;
}

void sub_24B39CF0C()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR___FIPregnancyStateProvider_query);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___FIPregnancyStateProvider_healthStore);
    v11 = v1;
    [v2 stopQuery_];
    v3 = sub_24B3AB7C4();
    v4 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], v3))
    {
      v5 = v4;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      v8 = sub_24B3ABA14();
      v10 = sub_24B363F6C(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_24B35E000, v5, v3, "%s Stopping pregnancy state query.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C23F390](v7, -1, -1);
      MEMORY[0x24C23F390](v6, -1, -1);
    }

    else
    {
    }
  }
}

void __swiftcall FIPregnancyStateProvider.init()(FIPregnancyStateProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for FIPregnancyStateProvider()
{
  result = qword_27EFE5ED0;
  if (!qword_27EFE5ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFE5ED0);
  }

  return result;
}

uint64_t sub_24B39D1B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5140, &qword_24B3AF9C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Fitness::WorkoutActivityType_optional __swiftcall WorkoutActivityType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 62;
  switch(rawValue)
  {
    case 1:
      goto LABEL_80;
    case 2:
      v2 = 1;
      goto LABEL_80;
    case 3:
      v2 = 2;
      goto LABEL_80;
    case 4:
      v2 = 3;
      goto LABEL_80;
    case 5:
      v2 = 4;
      goto LABEL_80;
    case 6:
      v2 = 5;
      goto LABEL_80;
    case 7:
      v2 = 6;
      goto LABEL_80;
    case 8:
      v2 = 7;
      goto LABEL_80;
    case 9:
      v2 = 8;
      goto LABEL_80;
    case 10:
      v2 = 9;
      goto LABEL_80;
    case 11:
      v2 = 10;
      goto LABEL_80;
    case 12:
      v2 = 11;
      goto LABEL_80;
    case 13:
      v2 = 12;
      goto LABEL_80;
    case 14:
    case 15:
    case 30:
    case 81:
      goto LABEL_5;
    case 16:
      v2 = 13;
      goto LABEL_80;
    case 17:
      v2 = 14;
      goto LABEL_80;
    case 18:
      v2 = 15;
      goto LABEL_80;
    case 19:
      v2 = 16;
      goto LABEL_80;
    case 20:
      v2 = 17;
      goto LABEL_80;
    case 21:
      v2 = 18;
      goto LABEL_80;
    case 22:
      v2 = 19;
      goto LABEL_80;
    case 23:
      v2 = 20;
      goto LABEL_80;
    case 24:
      v2 = 21;
      goto LABEL_80;
    case 25:
      v2 = 22;
      goto LABEL_80;
    case 26:
      v2 = 23;
      goto LABEL_80;
    case 27:
      v2 = 24;
      goto LABEL_80;
    case 28:
      v2 = 25;
      goto LABEL_80;
    case 29:
      v2 = 26;
      goto LABEL_80;
    case 31:
      v2 = 27;
      goto LABEL_80;
    case 32:
      v2 = 28;
      goto LABEL_80;
    case 33:
      v2 = 29;
      goto LABEL_80;
    case 34:
      v2 = 30;
      goto LABEL_80;
    case 35:
      v2 = 31;
      goto LABEL_80;
    case 36:
      v2 = 32;
      goto LABEL_80;
    case 37:
      v2 = 33;
      goto LABEL_80;
    case 38:
      v2 = 34;
      goto LABEL_80;
    case 39:
      v2 = 35;
      goto LABEL_80;
    case 40:
      v2 = 36;
      goto LABEL_80;
    case 41:
      v2 = 37;
      goto LABEL_80;
    case 42:
      v2 = 38;
      goto LABEL_80;
    case 43:
      v2 = 39;
      goto LABEL_80;
    case 44:
      v2 = 40;
      goto LABEL_80;
    case 45:
      v2 = 41;
      goto LABEL_80;
    case 46:
      v2 = 42;
      goto LABEL_80;
    case 47:
      v2 = 43;
      goto LABEL_80;
    case 48:
      v2 = 44;
      goto LABEL_80;
    case 49:
      v2 = 45;
      goto LABEL_80;
    case 50:
      v2 = 46;
      goto LABEL_80;
    case 51:
      v2 = 47;
      goto LABEL_80;
    case 52:
      v2 = 48;
      goto LABEL_80;
    case 53:
      v2 = 49;
      goto LABEL_80;
    case 54:
      v2 = 50;
      goto LABEL_80;
    case 55:
      v2 = 51;
      goto LABEL_80;
    case 56:
      v2 = 52;
      goto LABEL_80;
    case 57:
      v2 = 53;
      goto LABEL_80;
    case 58:
      v2 = 54;
      goto LABEL_80;
    case 59:
      v2 = 55;
      goto LABEL_80;
    case 60:
      v2 = 56;
      goto LABEL_80;
    case 61:
      v2 = 57;
      goto LABEL_80;
    case 62:
      v2 = 58;
      goto LABEL_80;
    case 63:
      v2 = 59;
      goto LABEL_80;
    case 64:
      v2 = 60;
      goto LABEL_80;
    case 65:
      v2 = 61;
LABEL_80:
      v3 = v2;
      goto LABEL_81;
    case 66:
LABEL_81:
      *v1 = v3;
      break;
    case 67:
      *v1 = 63;
      break;
    case 68:
      *v1 = 64;
      break;
    case 69:
      *v1 = 65;
      break;
    case 70:
      *v1 = 66;
      break;
    case 71:
      *v1 = 67;
      break;
    case 72:
      *v1 = 68;
      break;
    case 73:
      *v1 = 69;
      break;
    case 74:
      *v1 = 70;
      break;
    case 75:
      *v1 = 71;
      break;
    case 76:
      *v1 = 72;
      break;
    case 77:
      *v1 = 73;
      break;
    case 78:
      *v1 = 74;
      break;
    case 79:
      *v1 = 75;
      break;
    case 80:
      *v1 = 76;
      break;
    case 82:
      *v1 = 77;
      break;
    case 83:
      *v1 = 78;
      break;
    default:
      if (rawValue == 3000)
      {
        *v1 = 79;
      }

      else
      {
LABEL_5:
        *v1 = 80;
      }

      break;
  }

  return rawValue;
}

uint64_t sub_24B39D55C()
{
  v1 = *v0;
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](qword_24B3AFF00[v1]);
  return sub_24B3ABA04();
}

uint64_t sub_24B39D5E4(uint64_t a1)
{
  v2 = *v1;
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](qword_24B3AFF00[v2]);
  return sub_24B3ABA04();
}

uint64_t sub_24B39D650()
{
  v0 = sub_24B3AB324();
  __swift_allocate_value_buffer(v0, qword_27EFE5EE8);
  __swift_project_value_buffer(v0, qword_27EFE5EE8);
  return sub_24B3AB314();
}

uint64_t sub_24B39D6B4()
{
  if (qword_27EFE5EE0 != -1)
  {
    swift_once();
  }

  v0 = sub_24B3AB324();

  return __swift_project_value_buffer(v0, qword_27EFE5EE8);
}

uint64_t static WorkoutActivityType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFE5EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_24B3AB324();
  v3 = __swift_project_value_buffer(v2, qword_27EFE5EE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static WorkoutActivityType.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27EFE5EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_24B3AB324();
  v3 = __swift_project_value_buffer(v2, qword_27EFE5EE8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static WorkoutActivityType.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EFE5EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_24B3AB324();
  __swift_project_value_buffer(v1, qword_27EFE5EE8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24B39D960()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5290, &qword_24B3AFEE0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5298, &qword_24B3AFEE8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24B3AF9D0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_24B3AB244();
  v4[v1] = 1;
  sub_24B3AB244();
  v4[2 * v1] = 2;
  sub_24B3AB244();
  v4[3 * v1] = 3;
  sub_24B3AB244();
  v4[4 * v1] = 4;
  sub_24B3AB244();
  v4[5 * v1] = 5;
  sub_24B3AB244();
  v4[6 * v1] = 6;
  sub_24B3AB244();
  v4[7 * v1] = 7;
  sub_24B3AB244();
  v4[8 * v1] = 8;
  sub_24B3AB244();
  v4[9 * v1] = 9;
  sub_24B3AB244();
  v4[10 * v1] = 10;
  sub_24B3AB244();
  v4[11 * v1] = 11;
  sub_24B3AB244();
  v4[12 * v1] = 12;
  sub_24B3AB244();
  v4[13 * v1] = 13;
  sub_24B3AB244();
  v4[14 * v1] = 14;
  sub_24B3AB244();
  v4[15 * v1] = 15;
  sub_24B3AB244();
  v4[16 * v1] = 16;
  sub_24B3AB244();
  v4[17 * v1] = 17;
  sub_24B3AB244();
  v4[18 * v1] = 18;
  sub_24B3AB244();
  v4[19 * v1] = 19;
  sub_24B3AB244();
  v4[20 * v1] = 20;
  sub_24B3AB244();
  v4[21 * v1] = 21;
  sub_24B3AB244();
  v4[22 * v1] = 22;
  sub_24B3AB244();
  v4[23 * v1] = 23;
  sub_24B3AB244();
  v4[24 * v1] = 24;
  sub_24B3AB244();
  v4[25 * v1] = 25;
  sub_24B3AB244();
  v4[26 * v1] = 26;
  sub_24B3AB244();
  v4[27 * v1] = 27;
  sub_24B3AB244();
  v4[28 * v1] = 28;
  sub_24B3AB244();
  v4[29 * v1] = 29;
  sub_24B3AB244();
  v4[30 * v1] = 30;
  sub_24B3AB244();
  v4[31 * v1] = 31;
  sub_24B3AB244();
  v4[32 * v1] = 32;
  sub_24B3AB244();
  v4[33 * v1] = 33;
  sub_24B3AB244();
  v4[34 * v1] = 34;
  sub_24B3AB244();
  v4[35 * v1] = 35;
  sub_24B3AB244();
  v4[36 * v1] = 36;
  sub_24B3AB244();
  v4[37 * v1] = 37;
  sub_24B3AB244();
  v4[38 * v1] = 38;
  sub_24B3AB244();
  v4[39 * v1] = 39;
  sub_24B3AB244();
  v4[40 * v1] = 40;
  sub_24B3AB244();
  v4[41 * v1] = 41;
  sub_24B3AB244();
  v4[42 * v1] = 42;
  sub_24B3AB244();
  v4[43 * v1] = 43;
  sub_24B3AB244();
  v4[44 * v1] = 44;
  sub_24B3AB244();
  v4[45 * v1] = 45;
  sub_24B3AB244();
  v4[46 * v1] = 46;
  sub_24B3AB244();
  v4[47 * v1] = 47;
  sub_24B3AB244();
  v4[48 * v1] = 48;
  sub_24B3AB244();
  v4[49 * v1] = 49;
  sub_24B3AB244();
  v4[50 * v1] = 50;
  sub_24B3AB244();
  v4[51 * v1] = 51;
  sub_24B3AB244();
  v4[52 * v1] = 52;
  sub_24B3AB244();
  v4[53 * v1] = 53;
  sub_24B3AB244();
  v4[54 * v1] = 54;
  sub_24B3AB244();
  v4[55 * v1] = 55;
  sub_24B3AB244();
  v4[56 * v1] = 56;
  sub_24B3AB244();
  v4[57 * v1] = 57;
  sub_24B3AB244();
  v4[58 * v1] = 58;
  sub_24B3AB244();
  v4[59 * v1] = 59;
  sub_24B3AB244();
  v4[60 * v1] = 60;
  sub_24B3AB244();
  v4[61 * v1] = 61;
  sub_24B3AB244();
  v4[62 * v1] = 62;
  sub_24B3AB244();
  v4[63 * v1] = 63;
  sub_24B3AB244();
  v4[64 * v1] = 64;
  sub_24B3AB244();
  v4[65 * v1] = 65;
  sub_24B3AB244();
  v4[66 * v1] = 66;
  sub_24B3AB244();
  v4[67 * v1] = 67;
  sub_24B3AB244();
  v4[68 * v1] = 68;
  sub_24B3AB244();
  v4[69 * v1] = 69;
  sub_24B3AB244();
  v4[70 * v1] = 70;
  sub_24B3AB244();
  v4[71 * v1] = 71;
  sub_24B3AB244();
  v4[72 * v1] = 72;
  sub_24B3AB244();
  v4[73 * v1] = 73;
  sub_24B3AB244();
  v4[74 * v1] = 74;
  sub_24B3AB244();
  v4[75 * v1] = 75;
  sub_24B3AB244();
  v4[76 * v1] = 76;
  sub_24B3AB244();
  v4[77 * v1] = 77;
  sub_24B3AB244();
  v4[78 * v1] = 78;
  sub_24B3AB244();
  v4[79 * v1] = 79;
  sub_24B3AB244();
  v5 = sub_24B39F920(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27EFE5F08 = v5;
  return result;
}

uint64_t *sub_24B39E8BC()
{
  if (qword_27EFE5F00 != -1)
  {
    swift_once();
  }

  return &qword_27EFE5F08;
}

uint64_t (*static WorkoutActivityType.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EFE5F00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24B39E9EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFE5EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_24B3AB324();
  v3 = __swift_project_value_buffer(v2, qword_27EFE5EE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24B39EAAC(uint64_t a1)
{
  v2 = sub_24B3960C4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24B39EB1C(uint64_t a1)
{
  v2 = sub_24B39F3BC();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_24B39EB78()
{
  result = sub_24B39FAE8(&unk_285E5EAD8);
  qword_27EFE5F18 = result;
  return result;
}

uint64_t *sub_24B39EBA0()
{
  if (qword_27EFE5F10 != -1)
  {
    swift_once();
  }

  return &qword_27EFE5F18;
}

uint64_t (*static WorkoutActivityType.healthKitMap.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EFE5F10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_24B39ECC0()
{
  result = sub_24B39FBC8(&unk_285E5EFF8);
  qword_27EFE5F28 = result;
  return result;
}

uint64_t *sub_24B39ECE8()
{
  if (qword_27EFE5F20 != -1)
  {
    swift_once();
  }

  return &qword_27EFE5F28;
}

uint64_t sub_24B39ED5C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_24B39EDDC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static WorkoutActivityType.activityTypeMap.modify(uint64_t a1))()
{
  if (qword_27EFE5F20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t WorkoutActivityType.healthKitValue.getter()
{
  v1 = *v0;
  if (qword_27EFE5F20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27EFE5F28[0];
  if (*(qword_27EFE5F28[0] + 16) && (v3 = sub_24B39F120(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = 3000;
  }

  swift_endAccess();
  return v5;
}

char WorkoutActivityType.init(activityType:)@<W0>(Swift::Int a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(a1) = WorkoutActivityType.init(rawValue:)(a1);
    *a2 = v4;
  }

  return a1;
}

uint64_t sub_24B39EFD8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_24B39F038()
{
  v1 = *v0;
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](v1);
  return sub_24B3ABA04();
}

uint64_t sub_24B39F0AC(uint64_t a1)
{
  v2 = *v1;
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](v2);
  return sub_24B3ABA04();
}

void *sub_24B39F104@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_24B39F120(uint64_t a1)
{
  v1 = a1;
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](qword_24B3AFF00[v1]);
  v2 = sub_24B3ABA04();

  return sub_24B39F834(v1, v2);
}

unint64_t sub_24B39F19C()
{
  result = qword_27EFE5210;
  if (!qword_27EFE5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5210);
  }

  return result;
}

unint64_t sub_24B39F1F4()
{
  result = qword_27EFE5218;
  if (!qword_27EFE5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5218);
  }

  return result;
}

unint64_t sub_24B39F24C()
{
  result = qword_27EFE5220;
  if (!qword_27EFE5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5220);
  }

  return result;
}

unint64_t sub_24B39F2B4()
{
  result = qword_27EFE5228;
  if (!qword_27EFE5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5228);
  }

  return result;
}

unint64_t sub_24B39F30C()
{
  result = qword_27EFE5230;
  if (!qword_27EFE5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5230);
  }

  return result;
}

unint64_t sub_24B39F364()
{
  result = qword_27EFE5238;
  if (!qword_27EFE5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5238);
  }

  return result;
}

unint64_t sub_24B39F3BC()
{
  result = qword_27EFE5240;
  if (!qword_27EFE5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5240);
  }

  return result;
}

unint64_t sub_24B39F464()
{
  result = qword_27EFE5248;
  if (!qword_27EFE5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5248);
  }

  return result;
}

unint64_t sub_24B39F4C0()
{
  result = qword_27EFE5250;
  if (!qword_27EFE5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5250);
  }

  return result;
}

unint64_t sub_24B39F518()
{
  result = qword_27EFE5258;
  if (!qword_27EFE5258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE5260, &qword_24B3AFC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5258);
  }

  return result;
}

void type metadata accessor for HKWorkoutActivityType()
{
  if (!qword_27EFE5270)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EFE5270);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB1)
  {
    goto LABEL_17;
  }

  if (a2 + 79 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 79) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 79;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 79;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 79;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x50;
  v8 = v6 - 80;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutActivityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 79 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 79) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB1)
  {
    v4 = 0;
  }

  if (a2 > 0xB0)
  {
    v5 = ((a2 - 177) >> 8) + 1;
    *result = a2 + 79;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 79;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24B39F784(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKWorkoutActivityType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B39F7C8(uint64_t a1)
{
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](a1);
  v2 = sub_24B3ABA04();

  return sub_24B39F8B4(a1, v2);
}

unint64_t sub_24B39F834(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_24B3AFF00[*(*(v2 + 48) + result)] == qword_24B3AFF00[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24B39F8B4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24B39F920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5298, &qword_24B3AFEE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52A0, &unk_24B3AFEF0);
    v7 = sub_24B3AB944();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_24B39FCA8(v9, v5);
      result = sub_24B39F120(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_24B3AB284();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B39FAE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5288, &qword_24B3AFED8);
    v3 = sub_24B3AB944();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24B39F7C8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B39FBC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5280, &qword_24B3AFED0);
    v3 = sub_24B3AB944();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_24B39F120(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24B39FCA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5298, &qword_24B3AFEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B39FD5C(unsigned __int8 a1)
{
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](a1);
  return sub_24B3ABA04();
}

uint64_t sub_24B39FDB8()
{
  v1 = *v0;
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](v1);
  return sub_24B3ABA04();
}

uint64_t sub_24B39FE2C(uint64_t a1)
{
  v2 = *v1;
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](v2);
  return sub_24B3ABA04();
}

void sub_24B3A00F8(uint64_t a1)
{
  v3 = [objc_opt_self() sharedBehavior];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [v3 features];

  if (!v5)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v6 = [v5 pauseRings];

  if (!v6)
  {
    return;
  }

  v17 = MEMORY[0x277D84F90];
  v7 = *&v1[OBJC_IVAR___FIPauseRingsCoordinator_internalQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = &v17;
  *(v8 + 24) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24B3A4D9C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_24B3A6FB8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B364CE8;
  aBlock[3] = &block_descriptor_19;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v17 + 16);
  if (v13)
  {
    v14 = (v17 + 40);
    while (*(v14 - 1) > a1 || *v14 <= a1)
    {
      v14 += 2;
      if (!--v13)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
  }
}

void sub_24B3A0360(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedBehavior];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = v5;
  v7 = [v5 features];

  if (!v7)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v8 = [v7 pauseRings];

  if (!v8)
  {
    return;
  }

  v23 = MEMORY[0x277D84F90];
  v9 = *&v2[OBJC_IVAR___FIPauseRingsCoordinator_internalQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = &v23;
  *(v10 + 24) = v2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24B3A6FA8;
  *(v11 + 24) = v10;
  aBlock[4] = sub_24B3A6FB8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B364CE8;
  aBlock[3] = &block_descriptor_29;
  v12 = _Block_copy(aBlock);
  v13 = v2;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = *(v23 + 16);
  if (v15)
  {
    v16 = (v23 + 40);
    while (1)
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = v18 > a1 || v17 <= a1;
      v20 = !v19 && v18 <= a2;
      if (v20 && v17 > a2)
      {
        break;
      }

      v16 += 2;
      if (!--v15)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
  }
}

void sub_24B3A05E8(char *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v4 = sub_24B3AB5F4();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B3AB614();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B3AB4C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() sharedBehavior];
  if (!v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = v14;
  v16 = [v14 features];

  if (!v16)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v17 = [v16 pauseRings];

  if (v17)
  {
    v26 = *&v3[OBJC_IVAR___FIPauseRingsCoordinator_internalQueue];
    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
    v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v19 = swift_allocObject();
    v20 = v28;
    *(v19 + 2) = v3;
    *(v19 + 3) = v20;
    v27 = v9;
    v21 = v4;
    v22 = v29;
    *(v19 + 4) = v29;
    (*(v11 + 32))(&v19[v18], v13, v10);
    aBlock[4] = sub_24B3A4DEC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B361F38;
    aBlock[3] = &block_descriptor_35;
    v23 = _Block_copy(aBlock);
    v24 = v3;
    sub_24B3A4E54(v20, v22);
    v25 = v27;
    sub_24B3AB604();
    v33 = MEMORY[0x277D84F90];
    sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
    sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
    sub_24B3AB854();
    MEMORY[0x24C23E640](0, v25, v6, v23);
    _Block_release(v23);
    (*(v32 + 8))(v6, v21);
    (*(v30 + 8))(v25, v31);
  }
}

void sub_24B3A0A00(char *a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  v8 = sub_24B3AB5F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B3AB614();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = OBJC_IVAR___FIPauseRingsCoordinator_state;
  v17 = *&a1[OBJC_IVAR___FIPauseRingsCoordinator_state];
  if (!v17)
  {
    v69 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = v15;
    v71 = v13;
    v72 = v9;
    v73 = v8;
    v74 = a3;
    v20 = sub_24B3A5AC4(a4);
    v21 = v20;
    sub_24B3A1504(v20, 0);
    v22 = *&a1[v16];
    *&a1[v16] = v20;
    if (v22 >= 2)
    {
      sub_24B361648(0, &qword_27EFE5318, 0x277CCD788);
      v34 = v21;
      sub_24B364D10(v22);
      v35 = sub_24B3AB824();
      sub_24B362E44(v22);
      if (v35)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v23 = v21;
    }

    sub_24B362B50();
LABEL_19:
    sub_24B362E44(v22);

    v36 = sub_24B3A1764(0);
    v37 = sub_24B3A1764(1);
    if (FIIsFitnessTrackingEnabled())
    {
      v68 = *&a1[OBJC_IVAR___FIPauseRingsCoordinator_metricQueue];
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = 0;
      *(v38 + 32) = v20;
      *(v38 + 40) = v36 & 1;
      *(v38 + 41) = v37 & 1;
      v81 = sub_24B3A6FAC;
      v82 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v78 = 1107296256;
      v79 = sub_24B361F38;
      v80 = &block_descriptor_131;
      v66 = _Block_copy(&aBlock);
      v67 = v21;
      v39 = v69;
      sub_24B3AB604();
      v76 = MEMORY[0x277D84F90];
      sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
      sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
      v40 = v73;
      sub_24B3AB854();
      v41 = v66;
      MEMORY[0x24C23E640](0, v39, v11, v66);
      _Block_release(v41);

      (*(v72 + 8))(v11, v40);
      (*(v70 + 8))(v39, v71);
    }

    else
    {
    }

    v42 = *&a1[OBJC_IVAR___FIPauseRingsCoordinator_healthStore];
    v43 = swift_allocObject();
    *(v43 + 16) = a1;
    v81 = sub_24B3A6DC4;
    v82 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_24B3A1ABC;
    v80 = &block_descriptor_124;
    v44 = _Block_copy(&aBlock);
    v45 = a1;

    [v42 saveObject:v21 withCompletion:v44];
    _Block_release(v44);

    if (!a2)
    {
      goto LABEL_24;
    }

LABEL_23:
    a2(1, 0);
LABEL_24:
    sub_24B362E44(v17);
    return;
  }

  if (v17 != 1)
  {
    v69 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = v11;
    v70 = v15;
    v71 = v13;
    v72 = v9;
    v73 = v8;
    v74 = a3;
    v67 = a2;
    sub_24B364D10(v17);
    sub_24B364D10(v17);
    v24 = sub_24B3A617C(v17);
    v25 = sub_24B3A5AC4(a4);
    v75[4] = v24;
    v75[5] = v25;
    v26 = MEMORY[0x277D84F90];
    aBlock = MEMORY[0x277D84F90];
    v66 = v24;
    v68 = v25;
    for (i = 0; i != 2; ++i)
    {
      v28 = v75[i + 4];
      if (v28)
      {
        v29 = v28;
        MEMORY[0x24C23E540]();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24B3AB734();
        }

        sub_24B3AB754();
        v26 = aBlock;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5358, qword_24B3B0338);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5308, &unk_24B3B02F0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_24B3B0180;
    v65 = v30;
    *(v30 + 32) = v17;
    sub_24B364D10(v17);
    sub_24B364D10(v17);
    sub_24B3A1504(v25, v17);
    v31 = *&a1[v16];
    *&a1[v16] = v25;
    if (v31 >= 2)
    {
      sub_24B361648(0, &qword_27EFE5318, 0x277CCD788);
      v32 = v68;
      v46 = v68;
      sub_24B364D10(v31);
      v47 = sub_24B3AB824();
      sub_24B362E44(v31);
      if (v47)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v32 = v68;
      v33 = v68;
    }

    sub_24B362B50();
LABEL_28:
    sub_24B362E44(v31);

    v48 = sub_24B3A1764(0);
    v49 = sub_24B3A1764(1);
    if (FIIsFitnessTrackingEnabled())
    {
      v63 = *&a1[OBJC_IVAR___FIPauseRingsCoordinator_metricQueue];
      v50 = swift_allocObject();
      *(v50 + 16) = 1;
      *(v50 + 24) = v17;
      *(v50 + 32) = v25;
      *(v50 + 40) = v48 & 1;
      *(v50 + 41) = v49 & 1;
      v81 = sub_24B3A6FAC;
      v82 = v50;
      aBlock = MEMORY[0x277D85DD0];
      v78 = 1107296256;
      v79 = sub_24B361F38;
      v80 = &block_descriptor_144;
      v51 = _Block_copy(&aBlock);
      sub_24B364D10(v17);
      v62 = v32;
      v52 = v69;
      sub_24B3AB604();
      v76 = MEMORY[0x277D84F90];
      sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
      sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
      v53 = v64;
      v54 = v73;
      sub_24B3AB854();
      MEMORY[0x24C23E640](0, v52, v53, v51);
      _Block_release(v51);

      sub_24B362E44(v17);
      (*(v72 + 8))(v53, v54);
      (*(v70 + 8))(v52, v71);
    }

    else
    {

      sub_24B362E44(v17);
    }

    v55 = *&a1[OBJC_IVAR___FIPauseRingsCoordinator_healthStore];
    if (v26 >> 62)
    {
      sub_24B361648(0, &qword_27EFE5310, 0x277CCD6F0);

      sub_24B3AB924();
    }

    else
    {

      sub_24B3AB994();
      sub_24B361648(0, &qword_27EFE5310, 0x277CCD6F0);
    }

    sub_24B361648(0, &qword_27EFE5310, 0x277CCD6F0);
    v56 = sub_24B3AB714();

    v57 = sub_24B3AB714();

    v58 = swift_allocObject();
    *(v58 + 16) = a1;
    v81 = sub_24B3A6E04;
    v82 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_24B3A1ABC;
    v80 = &block_descriptor_137;
    v59 = _Block_copy(&aBlock);
    v60 = a1;

    [v55 saveObjects:v56 deleteObjects:v57 associations:0 completion:v59];
    _Block_release(v59);

    sub_24B362E44(v17);
    a2 = v67;
    if (!v67)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (a2)
  {
    sub_24B3A68FC();
    v18 = swift_allocError();
    *v19 = 0;
    a2(0, v18);
  }
}

uint64_t sub_24B3A1504(void *a1, char *a2)
{
  v5 = OBJC_IVAR___FIPauseRingsCoordinator_pauseIntervals;
  v6 = *(v2 + OBJC_IVAR___FIPauseRingsCoordinator_pauseIntervals);
  v22 = v6;
  swift_bridgeObjectRetain_n();
  sub_24B3A5070(&v22);

  v7 = v22;
  if (a2)
  {
    v8 = *(v22 + 2);
    if (v8)
    {
      v6 = (v8 - 1);
      v9 = &v22[16 * v8 - 16];
      v11 = *(v9 + 4);
      v10 = *(v9 + 5);
      a2 = a2;
      v12 = [a2 startDateIndex];
      if (v12 < v11)
      {

        if (!a1)
        {
          goto LABEL_21;
        }

LABEL_12:
        v13 = a1;
        v14 = [v13 startDateIndex];
        v15 = [v13 endDateIndex];
        if (v15 < v14)
        {
          __break(1u);
        }

        else
        {
          v6 = v15;
          a2 = v22;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_14:
            v17 = *(a2 + 2);
            v16 = *(a2 + 3);
            if (v17 >= v16 >> 1)
            {
              a2 = sub_24B3A4E70((v16 > 1), v17 + 1, 1, a2, &qword_27EFE5320, &qword_24B3B0300);
            }

            *(a2 + 2) = v17 + 1;
            v18 = &a2[16 * v17];
            *(v18 + 4) = v14;
            *(v18 + 5) = v6;
            goto LABEL_22;
          }
        }

        a2 = sub_24B3A4E70(0, *(a2 + 2) + 1, 1, a2, &qword_27EFE5320, &qword_24B3B0300);
        goto LABEL_14;
      }

      if (v12 < v10)
      {
        if (v11 == [a2 startDateIndex])
        {
          sub_24B3A3558(v8 - 1);

          if (!a1)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }

        v19 = [a2 startDateIndex];
        if (v19 < v11)
        {
          __break(1u);
        }

        else
        {
          v10 = v19;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_19;
          }
        }

        v7 = sub_24B3A51C4(v7);
LABEL_19:

        if (v8 > *(v7 + 2))
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v20 = &v7[16 * v6];
        *(v20 + 4) = v11;
        *(v20 + 5) = v10;
        v22 = v7;
        if (!a1)
        {
          goto LABEL_21;
        }

        goto LABEL_12;
      }
    }
  }

  if (a1)
  {
    goto LABEL_12;
  }

LABEL_21:
  a2 = v22;
LABEL_22:
  *(v2 + v5) = a2;
}

uint64_t sub_24B3A1764(char a1)
{
  v2 = sub_24B3A35E4(a1 & 1);
  v4 = *(v1 + OBJC_IVAR___FIPauseRingsCoordinator_pauseIntervals);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 - 1;
  v7 = (v4 + 40);
  do
  {
    v8 = v6;
    v9 = *(v7 - 1);
    v11 = v2 < *v7 && v9 != *v7;
    LODWORD(v12) = v9 < v3 && v11;
    if (v2 == v3)
    {
      v12 = 0;
    }

    else
    {
      v12 = v12;
    }

    if (v12)
    {
      break;
    }

    v6 = v8 - 1;
    v7 += 2;
  }

  while (v8);
  return v12;
}

uint64_t sub_24B3A17E0()
{
  v1 = sub_24B3AB5F4();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B3AB614();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR___FIPauseRingsCoordinator_syncQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24B3A69D4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B361F38;
  aBlock[3] = &block_descriptor_91;
  v8 = _Block_copy(aBlock);

  sub_24B3AB604();
  v13 = MEMORY[0x277D84F90];
  sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3AB854();
  MEMORY[0x24C23E640](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_24B3A1ABC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24B3A1B34(char a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[0] = a6;
  v10 = sub_24B3AB5F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24B3AB614();
  v14 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&a3[OBJC_IVAR___FIPauseRingsCoordinator_internalQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  aBlock[4] = a5;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B361F38;
  aBlock[3] = v22[0];
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a3;
  sub_24B3AB604();
  v24 = MEMORY[0x277D84F90];
  sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
  sub_24B3AB854();
  MEMORY[0x24C23E640](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23);
}

void sub_24B3A1F4C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_24B3AB414();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_24B3A1FBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_24B3AB5F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B3AB614();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedBehavior];
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v12 features];

  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15 = [v14 pauseRings];

  if (v15)
  {
    v19[1] = *&v2[OBJC_IVAR___FIPauseRingsCoordinator_internalQueue];
    v16 = swift_allocObject();
    v16[2] = v2;
    v16[3] = a1;
    v16[4] = a2;
    aBlock[4] = sub_24B3A4E64;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B361F38;
    aBlock[3] = &block_descriptor_41;
    v17 = _Block_copy(aBlock);
    v18 = v2;
    sub_24B3A4E54(a1, a2);
    sub_24B3AB604();
    v21 = MEMORY[0x277D84F90];
    sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
    sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
    sub_24B3AB854();
    MEMORY[0x24C23E640](0, v11, v8, v17);
    _Block_release(v17);
    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v20);
  }
}

void sub_24B3A22FC(char *a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = sub_24B3AB5F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B3AB614();
  v11 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___FIPauseRingsCoordinator_state;
  v16 = *&a1[OBJC_IVAR___FIPauseRingsCoordinator_state];
  if (!v16)
  {
    if (!a2)
    {
      return;
    }

    sub_24B3A68FC();
    v17 = swift_allocError();
    *v19 = 2;
    goto LABEL_7;
  }

  if (v16 == 1)
  {
    if (!a2)
    {
      return;
    }

    sub_24B3A68FC();
    v17 = swift_allocError();
    *v18 = 0;
LABEL_7:
    a2(0, v17);

    return;
  }

  v49 = v12;
  v50 = v7;
  v51 = v6;
  v52 = v11;
  v54 = a3;
  v55 = a2;
  v20 = v16;
  v21 = sub_24B3A617C(v20);
  v53 = v20;
  if (v21)
  {
    v22 = v21;
    v23 = v20;
    sub_24B3A1504(v22, v16);
    sub_24B362E44(v16);
    v48 = *&a1[OBJC_IVAR___FIPauseRingsCoordinator_healthStore];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5308, &unk_24B3B02F0);
    v24 = swift_allocObject();
    v46 = xmmword_24B3B0180;
    *(v24 + 16) = xmmword_24B3B0180;
    *(v24 + 32) = v22;
    sub_24B361648(0, &qword_27EFE5310, 0x277CCD6F0);
    v47 = v22;
    v25 = sub_24B3AB714();

    v26 = swift_allocObject();
    *(v26 + 16) = v46;
    *(v26 + 32) = v23;
    v27 = v23;
    v28 = sub_24B3AB714();

    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    v61 = sub_24B3A6994;
    v62 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_24B3A1ABC;
    v60 = &block_descriptor_81;
    v30 = _Block_copy(&aBlock);
    v31 = a1;

    [v48 saveObjects:v25 deleteObjects:v28 associations:0 completion:v30];
    _Block_release(v30);
  }

  else
  {
    v32 = v20;
    sub_24B3A1504(0, v16);
    sub_24B362E44(v16);
    v33 = *&a1[OBJC_IVAR___FIPauseRingsCoordinator_healthStore];
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    v61 = sub_24B3A6950;
    v62 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_24B3A1ABC;
    v60 = &block_descriptor_69;
    v35 = _Block_copy(&aBlock);
    v36 = a1;

    [v33 deleteObject:v32 options:2 withCompletion:v35];
    _Block_release(v35);
  }

  v37 = v53;
  v38 = sub_24B3A1764(0);
  v39 = sub_24B3A1764(1);
  if (FIIsFitnessTrackingEnabled())
  {
    v53 = *&a1[OBJC_IVAR___FIPauseRingsCoordinator_metricQueue];
    v40 = swift_allocObject();
    *(v40 + 16) = 2;
    *(v40 + 24) = v16;
    *(v40 + 32) = 0;
    *(v40 + 40) = v38 & 1;
    *(v40 + 41) = v39 & 1;
    v61 = sub_24B3A6990;
    v62 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_24B361F38;
    v60 = &block_descriptor_75;
    v41 = _Block_copy(&aBlock);
    v42 = v37;
    sub_24B3AB604();
    v56 = MEMORY[0x277D84F90];
    sub_24B361690(&unk_280B17E60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52F0, &unk_24B3B01B0);
    sub_24B3616D8(&qword_280B17E58, &qword_27EFE52F0, &unk_24B3B01B0);
    v43 = v51;
    sub_24B3AB854();
    MEMORY[0x24C23E640](0, v14, v9, v41);
    _Block_release(v41);
    sub_24B362E44(v16);
    (*(v50 + 8))(v9, v43);
    (*(v49 + 8))(v14, v52);
  }

  else
  {
    sub_24B362E44(v16);
  }

  v44 = v55;
  v45 = *&a1[v15];
  *&a1[v15] = 0;
  if (v45)
  {
    sub_24B362B50();
  }

  sub_24B362E44(v45);
  if (v44)
  {
    v44(1, 0);
  }

  sub_24B362E44(v16);
}

uint64_t sub_24B3A2BA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B3AB584();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F08, &qword_24B3AF450);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_24B3AB404();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = [objc_opt_self() sharedBehavior];
  if (!v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v16 features];

  if (!v18)
  {
LABEL_16:
    __break(1u);
LABEL_19:
    result = sub_24B3AB914();
    __break(1u);
    return result;
  }

  v19 = [v18 pauseRings];

  if (v19)
  {
    v40 = v4;
    v41 = v3;
    v42 = a1;
    v46 = 2;
    v20 = *&v1[OBJC_IVAR___FIPauseRingsCoordinator_internalQueue];
    v21 = swift_allocObject();
    *(v21 + 16) = &v46;
    *(v21 + 24) = v1;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_24B364CB8;
    *(v22 + 24) = v21;
    aBlock[4] = sub_24B3A6FB8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B364CE8;
    aBlock[3] = &block_descriptor_51;
    v23 = _Block_copy(aBlock);
    v24 = v1;

    dispatch_sync(v20, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v26 = v46;
      if (v46 < 3)
      {
        v27 = sub_24B3AB4C4();
        (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
        v28 = v26;
LABEL_13:
        sub_24B364D20(v28);
      }

      sub_24B364D10(v46);
      [v26 endDateIndex];
      v32 = _HKActivityCacheDateComponentsFromCacheIndex();
      if (v32)
      {
        v33 = v32;
        sub_24B3AB3B4();

        v35 = v43;
        v34 = v44;
        (*(v43 + 32))(v15, v13, v44);
        v36 = [objc_opt_self() hk_gregorianCalendar];
        sub_24B3AB524();

        sub_24B3AB534();
        (*(v40 + 8))(v6, v41);
        v37 = sub_24B3AB4C4();
        v38 = *(v37 - 8);
        if ((*(v38 + 48))(v9, 1, v37) != 1)
        {
          (*(v35 + 8))(v15, v34);
          sub_24B364D20(v26);
          v39 = v42;
          (*(v38 + 32))(v42, v9, v37);
          (*(v38 + 56))(v39, 0, 1, v37);
          v28 = v46;
          goto LABEL_13;
        }

        sub_24B364D34(v9, &qword_27EFE4F08, &qword_24B3AF450);
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_15;
  }

  v29 = sub_24B3AB4C4();
  v30 = *(*(v29 - 8) + 56);

  return v30(a1, 1, 1, v29);
}

uint64_t sub_24B3A31D4()
{
  v1 = v0;
  v2 = sub_24B3AB4C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = [v1 resumeDate];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  sub_24B3AB494();

  (*(v3 + 32))(v8, v6, v2);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v11 setDateStyle_];
  [v11 setTimeStyle_];
  v12 = sub_24B3AB474();
  v13 = [v11 stringFromDate_];

  v14 = sub_24B3AB6A4();
  (*(v3 + 8))(v8, v2);
  return v14;
}

void sub_24B3A341C(uint64_t a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = sub_24B3AB7C4();
    v4 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], v3))
    {
      log = v4;
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      if (a2)
      {
        v7 = a2;
        v8 = _swift_stdlib_bridgeErrorToNSError();
        v9 = v8;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      *(v5 + 4) = v8;
      *v6 = v9;
      _os_log_impl(&dword_24B35E000, log, v3, "[PauseRingsCoordinator] Failed to nano sync after updating pause samples: %@", v5, 0xCu);
      sub_24B364D34(v6, &qword_27EFE5140, &qword_24B3AF9C8);
      MEMORY[0x24C23F390](v6, -1, -1);
      MEMORY[0x24C23F390](v5, -1, -1);
    }
  }
}

uint64_t sub_24B3A3558(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24B3A51C4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24B3A35E4(int a1)
{
  v58[3] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52E8, &qword_24B3B01A8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v66 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v63 = v58 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v60 = v58 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v67 = v58 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v61 = v58 - v11;
  MEMORY[0x28223BE20](v10);
  v68 = v58 - v12;
  v13 = sub_24B3AB574();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F08, &qword_24B3AF450);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v58 - v18;
  v20 = sub_24B3AB584();
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24B3AB4C4();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v58 - v28;
  sub_24B3AB4B4();
  v30 = [objc_opt_self() hk_gregorianCalendar];
  sub_24B3AB524();

  (*(v14 + 104))(v16, *MEMORY[0x277CC9968], v13);
  sub_24B3AB554();
  (*(v14 + 8))(v16, v13);
  v31 = *(v24 + 48);
  if (v31(v19, 1, v23) == 1)
  {
    (*(v24 + 16))(v27, v29, v23);
    v32 = v29;
    if (v31(v19, 1, v23) != 1)
    {
      sub_24B364D34(v19, &qword_27EFE4F08, &qword_24B3AF450);
    }
  }

  else
  {
    (*(v24 + 32))(v27, v19, v23);
    v32 = v29;
  }

  v33 = sub_24B3AB474();
  v34 = sub_24B3AB504();
  v35 = _HKActivityCacheDateComponentsFromDate();

  v62 = v23;
  v59 = v27;
  if (v35)
  {
    v36 = v61;
    sub_24B3AB3B4();

    v37 = 0;
  }

  else
  {
    v37 = 1;
    v36 = v61;
  }

  v38 = sub_24B3AB404();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v41 = 1;
  v40(v36, v37, 1, v38);
  sub_24B364A44(v36, v68);
  v61 = v32;
  v42 = sub_24B3AB474();
  v43 = sub_24B3AB504();
  v44 = _HKActivityCacheDateComponentsFromDate();

  v45 = v60;
  if (v44)
  {
    sub_24B3AB3B4();

    v41 = 0;
  }

  v40(v45, v41, 1, v38);
  v46 = v67;
  sub_24B364A44(v45, v67);
  v47 = v63;
  sub_24B364AB4(v68, v63);
  v48 = *(v39 + 48);
  if (v48(v47, 1, v38) == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_24B3AB3A4();
    (*(v39 + 8))(v47, v38);
  }

  v50 = v66;
  v51 = _HKCacheIndexFromDateComponents();

  sub_24B364AB4(v46, v50);
  if (v48(v50, 1, v38) == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = sub_24B3AB3A4();
    (*(v39 + 8))(v50, v38);
  }

  v53 = v61;
  v54 = _HKCacheIndexFromDateComponents();

  sub_24B364D34(v46, &qword_27EFE52E8, &qword_24B3B01A8);
  sub_24B364D34(v68, &qword_27EFE52E8, &qword_24B3B01A8);
  v55 = *(v24 + 8);
  v56 = v62;
  v55(v59, v62);
  (*(v64 + 8))(v22, v65);
  result = (v55)(v53, v56);
  if (v54 >= v51)
  {
    return v51;
  }

  __break(1u);
  return result;
}

void sub_24B3A3D38(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5328, &qword_24B3B0308);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B3B0190;
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = sub_24B3AB7A4();
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x800000024B3B90C0;
  if (a2)
  {
    sub_24B3A3F5C();
  }

  *(inited + 72) = sub_24B3AB784();
  strcpy((inited + 80), "pauseDuration");
  *(inited + 94) = -4864;
  if (a3)
  {
    sub_24B3A4338();
  }

  *(inited + 96) = sub_24B3AB7A4();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x800000024B3B90E0;
  *(inited + 120) = sub_24B3AB774();
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x800000024B3B9100;
  *(inited + 144) = sub_24B3AB774();
  v8 = sub_24B3A6AE0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5330, &qword_24B3B0310);
  swift_arrayDestroy();
  v9 = sub_24B3AB694();
  sub_24B3A4B14(v8);

  sub_24B361648(0, &qword_280B17DF8, 0x277D82BB8);
  v10 = sub_24B3AB624();

  FIActivityAnalyticsSubmissionWithPayload(v9, v10);
}

id sub_24B3A3F5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52E8, &qword_24B3B01A8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_24B3AB584();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24B3AB4C4();
  v14 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B3AB4B4();
  v17 = [objc_opt_self() hk_gregorianCalendar];
  sub_24B3AB524();

  v18 = sub_24B3AB474();
  v19 = sub_24B3AB504();
  v20 = _HKActivityCacheDateComponentsFromDate();

  if (v20)
  {
    sub_24B3AB3B4();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_24B3AB404();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v8, v21, 1, v22);
  sub_24B364A44(v8, v10);
  sub_24B364AB4(v10, v5);
  v24 = 0;
  if ((*(v23 + 48))(v5, 1, v22) != 1)
  {
    v24 = sub_24B3AB3A4();
    (*(v23 + 8))(v5, v22);
  }

  v25 = _HKCacheIndexFromDateComponents();

  v26 = [v1 endDateIndex];
  result = [v1 startDateIndex];
  if (__OFSUB__(v26, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v28 = [v1 startDateIndex];
  sub_24B364D34(v10, &qword_27EFE52E8, &qword_24B3B01A8);
  (*(v31 + 8))(v13, v32);
  result = (*(v14 + 8))(v16, v30);
  if (__OFSUB__(v25, v28))
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_24B3A4338()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F08, &qword_24B3AF450);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v69 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v75 = &v64 - v5;
  v78 = sub_24B3AB4C4();
  v76 = *(v78 - 8);
  v6 = MEMORY[0x28223BE20](v78);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v64 - v8;
  v9 = sub_24B3AB404();
  v79 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v68 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v77 = &v64 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  v22 = sub_24B3AB584();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v67 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v64 - v26;
  v28 = [objc_opt_self() hk_gregorianCalendar];
  sub_24B3AB524();

  v29 = v1;
  [v1 startDateIndex];
  v30 = _HKActivityCacheDateComponentsFromCacheIndex();
  if (v30)
  {
    v31 = v30;
    v71 = v27;
    v72 = v23;
    v74 = v22;
    v32 = v78;
    sub_24B3AB3B4();

    v33 = v79;
    v34 = *(v79 + 32);
    v34(v21, v19, v9);
    [v29 endDateIndex];
    v35 = _HKActivityCacheDateComponentsFromCacheIndex();
    v36 = v21;
    if (v35)
    {
      v37 = v35;
      sub_24B3AB3B4();

      v38 = v77;
      v34(v77, v14, v9);
      v39 = v75;
      v40 = v71;
      sub_24B3AB534();
      v41 = v76;
      v42 = *(v76 + 48);
      v43 = v32;
      if (v42(v39, 1, v32) == 1)
      {
        v44 = *(v79 + 8);
        v44(v38, v9);
        v44(v36, v9);
        (*(v72 + 8))(v40, v74);
        v45 = v39;
      }

      else
      {
        v65 = v9;
        v66 = v36;
        v46 = v41;
        v47 = *(v41 + 32);
        v48 = v73;
        v47(v73, v39, v32);
        v49 = v69;
        sub_24B3AB534();
        if (v42(v49, 1, v43) != 1)
        {
          v47(v70, v49, v43);
          v54 = v67;
          sub_24B3AB564();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4F28, &qword_24B3B01C0);
          v55 = sub_24B3AB574();
          v56 = *(v55 - 8);
          v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_24B3AF5B0;
          (*(v56 + 104))(v58 + v57, *MEMORY[0x277CC9968], v55);
          sub_24B39505C(v58);
          swift_setDeallocating();
          (*(v56 + 8))(v58 + v57, v55);
          swift_deallocClassInstance();
          v59 = v68;
          v60 = v70;
          sub_24B3AB4E4();

          v75 = *(v72 + 8);
          (v75)(v54, v74);
          v72 = sub_24B3AB3C4();
          v61 = *(v79 + 8);
          v62 = v65;
          v61(v59, v65);
          v63 = *(v46 + 8);
          v63(v60, v43);
          v63(v73, v43);
          v61(v77, v62);
          v61(v66, v62);
          (v75)(v40, v74);
          return v72;
        }

        (*(v41 + 8))(v48, v43);
        v50 = v49;
        v51 = *(v79 + 8);
        v52 = v65;
        v51(v77, v65);
        v51(v66, v52);
        (*(v72 + 8))(v40, v74);
        v45 = v50;
      }

      sub_24B364D34(v45, &qword_27EFE4F08, &qword_24B3AF450);
    }

    else
    {
      (*(v33 + 8))(v21, v9);
      (*(v72 + 8))(v71, v74);
    }
  }

  else
  {
    (*(v23 + 8))(v27, v22);
  }

  return 0;
}

void sub_24B3A4B14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5338, &qword_24B3B0318);
    v2 = sub_24B3AB944();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_24B391B44(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void __swiftcall FIPauseRingsCoordinator.init()(FIPauseRingsCoordinator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_24B3A4D8C(id result)
{
  if (result != 2)
  {
    return sub_24B364D10(result);
  }

  return result;
}

uint64_t sub_24B3A4DA0()
{
  **(v0 + 16) = *(*(v0 + 24) + OBJC_IVAR___FIPauseRingsCoordinator_pauseIntervals);
}

void sub_24B3A4DEC()
{
  v1 = *(sub_24B3AB4C4() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_24B3A0A00(v2, v3, v4, v5);
}

uint64_t sub_24B3A4E54(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

char *sub_24B3A4E70(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_24B3A4F6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5320, &qword_24B3B0300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_24B3A5070(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24B3A5AB0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_24B3AB964();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5348, &qword_24B3B0328);
      v7 = sub_24B3AB744();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_24B3A51FC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24B3A51FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24B3A5998(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_24B3A5794((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B3A4E70(0, *(v8 + 16) + 1, 1, v8, &qword_27EFE5350, &qword_24B3B0330);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_24B3A4E70((v33 > 1), v5 + 1, 1, v8, &qword_27EFE5350, &qword_24B3B0330);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_24B3A5794((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_24B3A5794(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

char *sub_24B3A59AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5350, &qword_24B3B0330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id sub_24B3A5AC4(uint64_t a1)
{
  v61 = a1;
  v1 = sub_24B3AB584();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B3AB4C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52E8, &qword_24B3B01A8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v52 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v52 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  sub_24B3AB4B4();
  v24 = sub_24B3AB474();
  v25 = *(v6 + 8);
  v52 = v5;
  v25(v8, v5);
  v26 = objc_opt_self();
  v27 = [v26 hk_gregorianCalendar];
  sub_24B3AB524();

  v28 = sub_24B3AB504();
  v29 = *(v2 + 8);
  v56 = v2 + 8;
  v57 = v1;
  v54 = v29;
  v29(v4, v1);
  v30 = _HKActivityCacheDateComponentsFromDate();

  if (v30)
  {
    sub_24B3AB3B4();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = sub_24B3AB404();
  v33 = *(v32 - 8);
  v53 = *(v33 + 56);
  v53(v21, v31, 1, v32);
  sub_24B364A44(v21, v23);
  v59 = v23;
  sub_24B364AB4(v23, v18);
  v34 = *(v33 + 48);
  v35 = 0;
  if (v34(v18, 1, v32) != 1)
  {
    v35 = sub_24B3AB3A4();
    (*(v33 + 8))(v18, v32);
  }

  v36 = _HKCacheIndexFromDateComponents();

  v37 = sub_24B3AB474();
  v38 = [v26 hk_gregorianCalendar];
  sub_24B3AB524();

  v39 = sub_24B3AB504();
  v54(v4, v57);
  v40 = _HKActivityCacheDateComponentsFromDate();

  if (v40)
  {
    v41 = v55;
    sub_24B3AB3B4();

    v42 = 0;
    v43 = v60;
  }

  else
  {
    v42 = 1;
    v43 = v60;
    v41 = v55;
  }

  v53(v41, v42, 1, v32);
  sub_24B364A44(v41, v43);
  v44 = v58;
  sub_24B364AB4(v43, v58);
  if (v34(v44, 1, v32) == 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_24B3AB3A4();
    (*(v33 + 8))(v44, v32);
  }

  v46 = v59;
  v47 = _HKCacheIndexFromDateComponents();

  if (v36 >= v47)
  {
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_24B3AB884();
    MEMORY[0x24C23E510](0xD00000000000001DLL, 0x800000024B3B9170);
    sub_24B361690(&qword_27EFE4F10, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v51 = sub_24B3AB974();
    MEMORY[0x24C23E510](v51);

    MEMORY[0x24C23E510](0xD000000000000015, 0x800000024B3B9190);
    result = sub_24B3AB914();
    __break(1u);
  }

  else
  {
    v48 = [objc_opt_self() localDevice];
    v49 = [objc_opt_self() pauseRingsScheduleWithStartDateIndex:v36 endDateIndex:v47 device:v48 metadata:0];

    sub_24B364D34(v43, &qword_27EFE52E8, &qword_24B3B01A8);
    sub_24B364D34(v46, &qword_27EFE52E8, &qword_24B3B01A8);
    return v49;
  }

  return result;
}

id sub_24B3A617C(void *a1)
{
  v35 = a1;
  v1 = sub_24B3AB584();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B3AB4C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE52E8, &qword_24B3B01A8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  sub_24B3AB4B4();
  v18 = sub_24B3AB474();
  (*(v6 + 8))(v8, v5);
  v19 = [objc_opt_self() hk_gregorianCalendar];
  sub_24B3AB524();

  v20 = sub_24B3AB504();
  (*(v2 + 8))(v4, v1);
  v21 = _HKActivityCacheDateComponentsFromDate();

  if (v21)
  {
    sub_24B3AB3B4();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_24B3AB404();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v15, v22, 1, v23);
  sub_24B364A44(v15, v17);
  sub_24B364AB4(v17, v12);
  v25 = 0;
  if ((*(v24 + 48))(v12, 1, v23) != 1)
  {
    v25 = sub_24B3AB3A4();
    (*(v24 + 8))(v12, v23);
  }

  v26 = _HKCacheIndexFromDateComponents();

  v27 = v35;
  if (v26 < [v35 startDateIndex])
  {
    result = sub_24B3AB914();
    __break(1u);
  }

  else
  {
    v28 = [v27 startDateIndex];
    v29 = [objc_opt_self() localDevice];
    v30 = [objc_opt_self() pauseRingsScheduleWithStartDateIndex:v28 endDateIndex:v26 device:v29 metadata:0];

    v31 = [v30 startDateIndex];
    v32 = [v30 endDateIndex];
    sub_24B364D34(v17, &qword_27EFE52E8, &qword_24B3B01A8);
    if (v31 == v32)
    {

      return 0;
    }

    return v30;
  }

  return result;
}

unint64_t sub_24B3A6618()
{
  result = qword_27EFE52F8;
  if (!qword_27EFE52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE52F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwimmingLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SwimmingLocation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So23FIPauseRingsCoordinatorC7FitnessE5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B3A67EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B3A6848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24B3A68A4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_24B3A68E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24B3A68FC()
{
  result = qword_27EFE5300;
  if (!qword_27EFE5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5300);
  }

  return result;
}

void sub_24B3A69D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(MEMORY[0x277CCD6A8]) initWithHealthStore_];
    aBlock[4] = sub_24B3A341C;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B3A1ABC;
    aBlock[3] = &block_descriptor_94;
    v3 = _Block_copy(aBlock);
    [v2 forceNanoSyncWithOptions:0 completion:v3];

    _Block_release(v3);
  }
}

unint64_t sub_24B3A6AE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5340, &qword_24B3B0320);
    v3 = sub_24B3AB944();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24B391B44(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_24B3A6BE4()
{
  v1 = [objc_opt_self() defaultCenter];
  v0 = [swift_getObjCClassFromMetadata() didUpdatePauseStateNotification];
  [v1 postNotificationName:v0 object:0];
}

void sub_24B3A6C8C(const char *a1)
{
  v2 = *(v1 + 24);
  if (*(v1 + 16) == 1 && v2 == 0)
  {
    sub_24B3A17E0();
  }

  else
  {
    v5 = sub_24B3AB7C4();
    v6 = *MEMORY[0x277CCC270];
    v7 = os_log_type_enabled(*MEMORY[0x277CCC270], v5);
    if (v7)
    {
      v8 = v6;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      if (v2)
      {
        v11 = v2;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v9 + 4) = v12;
      *v10 = v13;
      _os_log_impl(&dword_24B35E000, v8, v5, a1, v9, 0xCu);
      sub_24B364D34(v10, &qword_27EFE5140, &qword_24B3AF9C8);
      MEMORY[0x24C23F390](v10, -1, -1);
      MEMORY[0x24C23F390](v9, -1, -1);
    }

    sub_24B36300C(v7);
  }
}

uint64_t objectdestroy_83Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24B3A6EB0()
{
  v1 = *(v0 + 16);
  v3 = [objc_opt_self() defaultCenter];
  v2 = [swift_getObjCClassFromMetadata() initialPauseStateLoadedNotification];
  [v3 postNotificationName:v2 object:v1 userInfo:0];
}

Fitness::SwimmingLocation_optional __swiftcall SwimmingLocation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24B3A703C()
{
  v0 = sub_24B3AB324();
  __swift_allocate_value_buffer(v0, qword_27EFE6838);
  __swift_project_value_buffer(v0, qword_27EFE6838);
  return sub_24B3AB314();
}

uint64_t sub_24B3A70A0()
{
  if (qword_27EFE6830 != -1)
  {
    swift_once();
  }

  v0 = sub_24B3AB324();

  return __swift_project_value_buffer(v0, qword_27EFE6838);
}

uint64_t static SwimmingLocation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFE6830 != -1)
  {
    swift_once();
  }

  v2 = sub_24B3AB324();
  v3 = __swift_project_value_buffer(v2, qword_27EFE6838);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SwimmingLocation.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27EFE6830 != -1)
  {
    swift_once();
  }

  v2 = sub_24B3AB324();
  v3 = __swift_project_value_buffer(v2, qword_27EFE6838);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SwimmingLocation.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EFE6830 != -1)
  {
    swift_once();
  }

  v1 = sub_24B3AB324();
  __swift_project_value_buffer(v1, qword_27EFE6838);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24B3A734C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE53D8, &qword_24B3B0748);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE53E0, &qword_24B3B0750) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24B3B0360;
  v4 = (v3 + v2);
  *v4 = 2;
  sub_24B3AB244();
  v4[v1] = 1;
  sub_24B3AB244();
  v4[2 * v1] = 0;
  sub_24B3AB244();
  v5 = sub_24B3A8058(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27EFE6858 = v5;
  return result;
}

uint64_t *sub_24B3A74D8()
{
  if (qword_27EFE6850 != -1)
  {
    swift_once();
  }

  return &qword_27EFE6858;
}

uint64_t (*static SwimmingLocation.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EFE6850 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24B3A7604@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFE6830 != -1)
  {
    swift_once();
  }

  v2 = sub_24B3AB324();
  v3 = __swift_project_value_buffer(v2, qword_27EFE6838);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24B3A76C4(uint64_t a1)
{
  v2 = sub_24B397684();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24B3A7734(uint64_t a1)
{
  v2 = sub_24B3A7D1C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_24B3A7790()
{
  result = sub_24B3A8220(&unk_285E60020);
  qword_27EFE6868 = result;
  return result;
}

uint64_t *sub_24B3A77B8()
{
  if (qword_27EFE6860 != -1)
  {
    swift_once();
  }

  return &qword_27EFE6868;
}

uint64_t (*static SwimmingLocation.healthKitMap.modify(uint64_t a1))(void)
{
  if (qword_27EFE6860 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_24B3A78D8()
{
  result = sub_24B3A8300(&unk_285E60070);
  qword_27EFE6878[0] = result;
  return result;
}

uint64_t *sub_24B3A7900()
{
  if (qword_27EFE6870 != -1)
  {
    swift_once();
  }

  return qword_27EFE6878;
}

uint64_t (*static SwimmingLocation.healthKitInverseMap.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EFE6870 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t SwimmingLocation.healthKitValue.getter()
{
  v1 = *v0;
  if (qword_27EFE6870 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27EFE6878[0];
  if (*(qword_27EFE6878[0] + 16) && (v3 = sub_24B3A7AEC(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = 0;
  }

  swift_endAccess();
  return v5;
}

unint64_t sub_24B3A7AEC(uint64_t a1)
{
  v1 = a1;
  sub_24B3AB9E4();
  MEMORY[0x24C23E830](v1);
  v2 = sub_24B3ABA04();

  return sub_24B3A7FE8(v1, v2);
}

unint64_t sub_24B3A7B60()
{
  result = qword_27EFE5360;
  if (!qword_27EFE5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5360);
  }

  return result;
}

unint64_t sub_24B3A7BB8()
{
  result = qword_27EFE5368;
  if (!qword_27EFE5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5368);
  }

  return result;
}

unint64_t sub_24B3A7C14()
{
  result = qword_27EFE5370;
  if (!qword_27EFE5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5370);
  }

  return result;
}

unint64_t sub_24B3A7C6C()
{
  result = qword_27EFE5378;
  if (!qword_27EFE5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5378);
  }

  return result;
}

unint64_t sub_24B3A7CC4()
{
  result = qword_27EFE5380;
  if (!qword_27EFE5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5380);
  }

  return result;
}

unint64_t sub_24B3A7D1C()
{
  result = qword_27EFE5388;
  if (!qword_27EFE5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5388);
  }

  return result;
}

unint64_t sub_24B3A7DC4()
{
  result = qword_27EFE5390;
  if (!qword_27EFE5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5390);
  }

  return result;
}

unint64_t sub_24B3A7E20()
{
  result = qword_27EFE5398;
  if (!qword_27EFE5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5398);
  }

  return result;
}

unint64_t sub_24B3A7E78()
{
  result = qword_27EFE53A0;
  if (!qword_27EFE53A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE53A8, &qword_24B3B05C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE53A0);
  }

  return result;
}

void type metadata accessor for HKWorkoutSwimmingLocationType()
{
  if (!qword_27EFE53B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EFE53B8);
    }
  }
}

uint64_t sub_24B3A7FA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKWorkoutSwimmingLocationType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B3A7FE8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24B3A8058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE53E0, &qword_24B3B0750);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE53E8, &qword_24B3B0758);
    v7 = sub_24B3AB944();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_24B3A83E0(v9, v5);
      result = sub_24B3A7AEC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_24B3AB284();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B3A8220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE53D0, &qword_24B3B0740);
    v3 = sub_24B3AB944();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24B39F7C8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B3A8300(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE53C8, &qword_24B3B0738);
    v3 = sub_24B3AB944();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_24B3A7AEC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24B3A83E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE53E0, &qword_24B3B0750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Fitness::WorkoutGoalType_optional __swiftcall WorkoutGoalType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24B3A847C()
{
  v0 = sub_24B3AB324();
  __swift_allocate_value_buffer(v0, qword_27EFE7088);
  __swift_project_value_buffer(v0, qword_27EFE7088);
  return sub_24B3AB314();
}

uint64_t sub_24B3A84E0()
{
  if (qword_27EFE7080 != -1)
  {
    swift_once();
  }

  v0 = sub_24B3AB324();

  return __swift_project_value_buffer(v0, qword_27EFE7088);
}

uint64_t static WorkoutGoalType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFE7080 != -1)
  {
    swift_once();
  }

  v2 = sub_24B3AB324();
  v3 = __swift_project_value_buffer(v2, qword_27EFE7088);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static WorkoutGoalType.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27EFE7080 != -1)
  {
    swift_once();
  }

  v2 = sub_24B3AB324();
  v3 = __swift_project_value_buffer(v2, qword_27EFE7088);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static WorkoutGoalType.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EFE7080 != -1)
  {
    swift_once();
  }

  v1 = sub_24B3AB324();
  __swift_project_value_buffer(v1, qword_27EFE7088);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24B3A878C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5470, &qword_24B3B0B18);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5478, &qword_24B3B0B20) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24B3AF430;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_24B3AB244();
  v4[v1] = 1;
  sub_24B3AB244();
  v4[2 * v1] = 2;
  sub_24B3AB244();
  v4[3 * v1] = 3;
  sub_24B3AB244();
  v5 = sub_24B3A9574(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27EFE70A8 = v5;
  return result;
}

uint64_t *sub_24B3A893C()
{
  if (qword_27EFE70A0 != -1)
  {
    swift_once();
  }

  return &qword_27EFE70A8;
}

uint64_t (*static WorkoutGoalType.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EFE70A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24B3A8A68@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFE7080 != -1)
  {
    swift_once();
  }

  v2 = sub_24B3AB324();
  v3 = __swift_project_value_buffer(v2, qword_27EFE7088);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24B3A8B28(uint64_t a1)
{
  v2 = sub_24B396B90();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24B3A8B98(uint64_t a1)
{
  v2 = sub_24B3A9168();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_24B3A8BF4()
{
  result = sub_24B3A973C(&unk_285E601C0);
  qword_27EFE70B8 = result;
  return result;
}

uint64_t *sub_24B3A8C1C()
{
  if (qword_27EFE70B0 != -1)
  {
    swift_once();
  }

  return &qword_27EFE70B8;
}

uint64_t (*static WorkoutGoalType.healthKitMap.modify(uint64_t a1))(void)
{
  if (qword_27EFE70B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_24B3A8D3C()
{
  result = sub_24B3A981C(&unk_285E60220);
  qword_27EFE70C8[0] = result;
  return result;
}

uint64_t *sub_24B3A8D64()
{
  if (qword_27EFE70C0 != -1)
  {
    swift_once();
  }

  return qword_27EFE70C8;
}

uint64_t (*static WorkoutGoalType.healthKitInverseMap.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EFE70C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t WorkoutGoalType.healthKitValue.getter()
{
  v1 = *v0;
  if (qword_27EFE70C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27EFE70C8[0];
  if (*(qword_27EFE70C8[0] + 16) && (v3 = sub_24B3A7AEC(v1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = 0;
  }

  swift_endAccess();
  return v5;
}

unint64_t sub_24B3A8F54()
{
  result = qword_27EFE53F0;
  if (!qword_27EFE53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE53F0);
  }

  return result;
}

unint64_t sub_24B3A8FAC()
{
  result = qword_27EFE53F8;
  if (!qword_27EFE53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE53F8);
  }

  return result;
}

unint64_t sub_24B3A9004()
{
  result = qword_27EFE5400;
  if (!qword_27EFE5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5400);
  }

  return result;
}

unint64_t sub_24B3A9060()
{
  result = qword_27EFE5408;
  if (!qword_27EFE5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5408);
  }

  return result;
}

unint64_t sub_24B3A90B8()
{
  result = qword_27EFE5410;
  if (!qword_27EFE5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5410);
  }

  return result;
}

unint64_t sub_24B3A9110()
{
  result = qword_27EFE5418;
  if (!qword_27EFE5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5418);
  }

  return result;
}

unint64_t sub_24B3A9168()
{
  result = qword_27EFE5420;
  if (!qword_27EFE5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5420);
  }

  return result;
}

unint64_t sub_24B3A9210()
{
  result = qword_27EFE5428;
  if (!qword_27EFE5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5428);
  }

  return result;
}

unint64_t sub_24B3A926C()
{
  result = qword_27EFE5430;
  if (!qword_27EFE5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5430);
  }

  return result;
}

unint64_t sub_24B3A92C4()
{
  result = qword_27EFE5438;
  if (!qword_27EFE5438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE5440, &qword_24B3B09B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE5438);
  }

  return result;
}

void type metadata accessor for _HKWorkoutGoalType()
{
  if (!qword_27EFE5450)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EFE5450);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutGoalType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutGoalType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24B3A9530(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _HKWorkoutGoalType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B3A9574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5478, &qword_24B3B0B20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFE5480, &qword_24B3B0B28);
    v7 = sub_24B3AB944();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_24B3A98FC(v9, v5);
      result = sub_24B3A7AEC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_24B3AB284();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B3A973C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5468, &qword_24B3B0B10);
    v3 = sub_24B3AB944();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24B39F7C8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B3A981C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5460, &qword_24B3B0B08);
    v3 = sub_24B3AB944();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_24B3A7AEC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24B3A98FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE5478, &qword_24B3B0B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void FIRandomKeyForPrefixWithTableName_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24B35E000, a2, OS_LOG_TYPE_DEBUG, "Could not find random key for prefix %@, returning prefix itself", &v2, 0xCu);
}

void FIRandomStringWithKeyAndPossibleSuffixesWithTableName_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_24B35E000, log, OS_LOG_TYPE_ERROR, "Error formatting prefix (%@) with name: %@", &v3, 0x16u);
}

void FIIsDeviceSatellitePaired_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  FISystemRootDirectory_cold_1();
}

void FIActivityMoveModeWithHealthStore_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "Error reading activity mode characteristic. error=%@", &v2, 0xCu);
}