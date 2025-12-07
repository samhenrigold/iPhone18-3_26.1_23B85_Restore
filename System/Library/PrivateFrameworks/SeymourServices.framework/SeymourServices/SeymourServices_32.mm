uint64_t sub_2271DDE2C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_2271DE464;
  }

  else
  {
    v2 = sub_2271DDF70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271DDF70()
{
  v1 = v0[19];
  v2 = v0[17];
  __swift_project_boxed_opaque_existential_0((v0[4] + 120), *(v0[4] + 144));
  sub_2271D7EE8();
  v3 = sub_226F44260(v1);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2271DE038()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2271DE2B0;
  }

  else
  {

    v2 = sub_2271DE154;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271DE154()
{
  __swift_project_boxed_opaque_existential_0((v0[4] + 120), *(v0[4] + 144));
  sub_2271D7EE8();
  sub_22766A6D0();
  v1 = sub_22766B380();
  v2 = sub_22766C890();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[23];
  v5 = v0[7];
  v6 = v0[5];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226E8E000, v1, v2, "Removed existing EstimatedCalories.", v7, 2u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  v4(v5, v6);

  v8 = v0[1];
  v9 = MEMORY[0x277D84FA0];

  return v8(v9);
}

uint64_t sub_2271DE2B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271DE344()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271DE3D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271DE464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271DE4F8(void *a1, uint64_t a2)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0E0, qword_22767C998);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_2272F9B64(0x64);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    return swift_deallocClassInstance();
  }

  else
  {
    v16 = v12;
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
    swift_deallocClassInstance();
    __swift_project_boxed_opaque_existential_0((a2 + 120), *(a2 + 144));
    v19 = sub_2271DC5D8(v16);

    sub_2272D7DB0(1, v19, a1);
  }
}

uint64_t sub_2271DE75C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0F8, &qword_22767C9F0);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_2272379B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    return swift_deallocClassInstance();
  }

  else
  {
    v16 = v12;
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
    swift_deallocClassInstance();
    v19 = sub_2271DC3BC(v16);

    v20 = sub_226F441CC(v19);

    *a2 = v20;
  }

  return result;
}

void sub_2271DE9A0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22756E334(a2, v7[1], *(v7 + 16), v7[3]);
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a3 + 120), *(a3 + 144));
    sub_2271DCCA4(a2, a1);
  }
}

uint64_t sub_2271DEA24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0E0, qword_22767C998);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_227237CB8(100);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    return swift_deallocClassInstance();
  }

  else
  {
    v16 = v12;
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
    result = swift_deallocClassInstance();
    *a2 = v16;
  }

  return result;
}

uint64_t sub_2271DEC38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EC0, &qword_22767C990);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DECE8, 0, 0);
}

uint64_t sub_2271DECE8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[13];
  v4 = v1[14];
  __swift_project_boxed_opaque_existential_0(v1 + 10, v3);
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = v2;
  v10 = (*(v4 + 24) + **(v4 + 24));
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_2271DEE5C;
  v7 = v0[7];
  v8 = v0[5];

  return v10(v7, sub_2271E0694, v5, v8, v3, v4);
}

uint64_t sub_2271DEE5C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2271DF14C;
  }

  else
  {

    v2 = sub_2271DEF78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271DEF78()
{
  v1 = v0[6];
  sub_226E93170(v0[7], v1, &qword_27D7B9EC0, &qword_22767C990);
  v2 = sub_227665100();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[7];
    sub_226E97D1C(v0[6], &qword_27D7B9EC0, &qword_22767C990);
    sub_2271E0640();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    sub_226E97D1C(v4, &qword_27D7B9EC0, &qword_22767C990);
  }

  else
  {
    v7 = v0[6];
    v8 = v0[2];
    sub_226E97D1C(v0[7], &qword_27D7B9EC0, &qword_22767C990);
    (*(v3 + 32))(v8, v7, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_2271DF14C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271DF1C0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0E0, qword_22767C998);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  swift_getKeyPath();
  if (a2 >> 31)
  {
    __break(1u);
LABEL_8:
    sub_22766C360();
    goto LABEL_6;
  }

  v31 = MEMORY[0x277D849A8];
  v30[0] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v12 = sub_22766C820();
  sub_226E93170(v30, v28, &unk_27D7BC990, &qword_227670A30);
  v13 = v29;
  if (v29)
  {
    v14 = __swift_project_boxed_opaque_existential_0(v28, v29);
    v15 = *(v13 - 8);
    v16 = MEMORY[0x28223BE20](v14);
    v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_22766D170();
    (*(v15 + 8))(v18, v13);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v21 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0E8 &qword_22767C9E0))];

  sub_226E97D1C(v30, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v8 = v21;
  v10 = sub_22766A080();
  v23 = v22;
  MEMORY[0x22AA985C0]();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22766C3A0();
  (v10)(v30, 0);
  swift_endAccess();

  v24 = MEMORY[0x22AA99A00]();
  sub_227544A14(v32);
  objc_autoreleasePoolPop(v24);
  swift_setDeallocating();

  v25 = qword_2813B2078;
  v26 = sub_22766A100();
  (*(*(v26 - 8) + 8))(v9 + v25, v26);
  return swift_deallocClassInstance();
}

void sub_2271DF5E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  v61 = sub_22766B390();
  v6 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v55[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v55[-v13];
  v15 = objc_opt_self();
  if ([v15 isAvailable])
  {
    v59 = a3;
    v60 = a1;
    v16 = sub_2272DC458(a1);
    sub_2276650F0();
    v64[0] = 0;
    v17 = [v15 lookupCalorieDataForCMWorkoutType:v16 duration:a2 userInfo:v64 error:?];
    v18 = v64[0];
    if (v17)
    {
      v19 = v17;
      v67 = sub_226E99364(0, &qword_281398B30, 0x277CC1C40);
      v68 = &off_283AC5C68;
      *&v66 = v19;
      sub_226E92AB8(&v66, v69);
      v20 = v18;
    }

    else
    {
      v25 = v64[0];
      v26 = sub_2276622C0();

      swift_willThrow();
      sub_22766A6D0();
      v27 = v26;
      v28 = sub_22766B380();
      v29 = sub_22766C890();

      v30 = os_log_type_enabled(v28, v29);
      v58 = v26;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v66 = v57;
        *v31 = 134218242;
        *(v31 + 4) = v60;
        *(v31 + 12) = 2080;
        swift_getErrorValue();
        v56 = v29;
        v32 = MEMORY[0x22AA995D0](v62, v63);
        v34 = sub_226E97AE8(v32, v33, &v66);

        *(v31 + 14) = v34;
        _os_log_impl(&dword_226E8E000, v28, v56, "Failed fetching calorie data for %lu with error: %s", v31, 0x16u);
        v35 = v57;
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x22AA9A450](v35, -1, -1);
        MEMORY[0x22AA9A450](v31, -1, -1);
      }

      (*(v6 + 8))(v8, v61);
      sub_2276650F0();
      v64[0] = 0;
      v36 = [v15 lookupCalorieDataForCMWorkoutType:v16 duration:v64 error:?];
      v37 = v64[0];
      if (!v36)
      {
        v54 = v64[0];
        sub_2276622C0();

        swift_willThrow();
        return;
      }

      v38 = v36;
      v67 = sub_226E99364(0, &qword_281398B30, 0x277CC1C40);
      v68 = &off_283AC5C68;
      v39 = v37;

      *&v66 = v38;
      sub_226E92AB8(&v66, v69);
    }

    sub_22766A6D0();
    sub_226E91B50(v69, &v66);
    v40 = sub_22766B380();
    v41 = sub_22766C8B0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65 = v43;
      *v42 = 136315138;
      sub_226E91B50(&v66, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0D8, &qword_22767C988);
      v44 = sub_22766C060();
      v46 = v45;
      __swift_destroy_boxed_opaque_existential_0(&v66);
      v47 = sub_226E97AE8(v44, v46, &v65);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_226E8E000, v40, v41, "Got calorie data: %s from CoreMotion.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AA9A450](v43, -1, -1);
      MEMORY[0x22AA9A450](v42, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v66);
    }

    (*(v6 + 8))(v14, v61);
    v48 = v70;
    v49 = v71;
    __swift_project_boxed_opaque_existential_0(v69, v70);
    (*(v49 + 8))(v48, v49);
    v50 = v70;
    v51 = v71;
    __swift_project_boxed_opaque_existential_0(v69, v70);
    (*(v51 + 16))(v50, v51);
    v52 = v70;
    v53 = v71;
    __swift_project_boxed_opaque_existential_0(v69, v70);
    (*(v53 + 16))(v52, v53);
    sub_2276650B0();
    __swift_destroy_boxed_opaque_existential_0(v69);
  }

  else
  {
    sub_22766A6D0();
    v21 = sub_22766B380();
    v22 = sub_22766C890();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226E8E000, v21, v22, "Invalid platform, Calorie Utils unavailable.", v23, 2u);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    (*(v6 + 8))(v11, v61);
    sub_2271E0640();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }
}

uint64_t sub_2271DFCB0()
{
  v1[2] = v0;
  v2 = sub_227662940();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v1[6] = swift_task_alloc();
  v3 = sub_227662750();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C8, &qword_22767C978);
  v1[11] = swift_task_alloc();
  v4 = sub_227662190();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DFEB0, 0, 0);
}

uint64_t sub_2271DFEB0()
{
  v1 = v0[2];
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v2 = sub_22766A320();
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_22767CA08[v2];
  }

  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v4 = sub_22766A330();
  if (v4 > 2)
  {
    v51 = 0;
  }

  else
  {
    v51 = qword_22767CA28[v4];
  }

  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v5 = sub_22766A350();
  v6 = [objc_opt_self() meterUnitWithMetricPrefix_];
  [v5 doubleValueForUnit_];
  v8 = v7;

  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v9 = sub_22766A370();
  v10 = [objc_opt_self() gramUnitWithMetricPrefix_];
  [v9 doubleValueForUnit_];
  v12 = v11;

  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  sub_22766A360();
  v13 = v0[15];
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[11];
  v17 = v0[8];
  v48 = v0[7];
  v50 = v3;
  v19 = v0[5];
  v18 = v0[6];
  v20 = v0[4];
  v46 = v0[3];
  (*(v14 + 56))(v16, 0, 1, v15);
  (*(v14 + 32))(v13, v16, v15);
  sub_227662920();
  sub_2276628D0();
  v21 = *(v20 + 8);
  v21(v19, v46);
  if ((*(v17 + 48))(v18, 1, v48) == 1)
  {
    v22 = v0[6];
    (*(v0[13] + 8))(v0[15], v0[12]);
    sub_226E97D1C(v22, &qword_27D7B9690, qword_227670B50);
    v23 = 30.0;
    v24 = v50;
  }

  else
  {
    v49 = v0[12];
    v25 = v0[9];
    v40 = v0[10];
    v26 = v0[8];
    v41 = v0[7];
    v42 = v0[14];
    v27 = v0[5];
    v43 = v0[3];
    v44 = v0[13];
    v45 = v0[15];
    (*(v26 + 32))();
    sub_227662920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
    v28 = sub_227662930();
    v29 = *(v28 - 8);
    v39 = v21;
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_227670CD0;
    (*(v29 + 104))(v31 + v30, *MEMORY[0x277CC9988], v28);
    sub_226F4CE68(v31);
    swift_setDeallocating();
    (*(v29 + 8))(v31 + v30, v28);
    swift_deallocClassInstance();
    sub_227662740();
    sub_2276628A0();

    v32 = *(v26 + 8);
    v32(v25, v41);
    v39(v27, v43);
    v47 = sub_227662140();
    v34 = v33;
    v35 = *(v44 + 8);
    v35(v42, v49);
    v32(v40, v41);
    v35(v45, v49);
    v23 = 30.0;
    v24 = v50;
    if ((v34 & 1) == 0)
    {
      v23 = v47;
    }
  }

  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v36 = [objc_allocWithZone(MEMORY[0x277CC1C48]) initWithAge:v24 gender:v51 height:sub_22766A340() & 1 weight:v23 condition:v8 betaBlockerUse:v12];

  v37 = v0[1];

  return v37(v36);
}

uint64_t sub_2271E05C4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_2271E0640()
{
  result = qword_27D7BC0D0;
  if (!qword_27D7BC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC0D0);
  }

  return result;
}

void sub_2271E06F4(id a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v34 = &v31 - v13;
  MEMORY[0x28223BE20](v14);
  v35 = &v31 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v38 = &v31 - v18;
  v19 = [a1 remoteURL];
  if (v19)
  {
    v20 = v19;
    sub_22766C000();
  }

  sub_227662310();
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    v5 = v8;
LABEL_9:
    sub_226E97D1C(v5, &unk_27D7BB570, &unk_227670FC0);
    v24 = sub_227664DD0();
    sub_2271E1298(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51028], v24);
    swift_willThrow();

    return;
  }

  v32 = *(v10 + 32);
  v32(v38, v8, v9);
  v33 = a1;
  v22 = [a1 localURL];
  if (v22)
  {
    v23 = v22;
    sub_22766C000();
  }

  sub_227662310();
  if (v21(v5, 1, v9) == 1)
  {
    (*(v10 + 8))(v38, v9);
    a1 = v33;
    goto LABEL_9;
  }

  v26 = v35;
  v32(v35, v5, v9);
  v27 = *(v10 + 16);
  v28 = v38;
  v27(v34, v38, v9);
  v27(v36, v26, v9);
  v29 = v33;
  [v33 downloadToken];
  sub_227665470();

  v30 = *(v10 + 8);
  v30(v26, v9);
  v30(v28, v9);
}

void *static AssetResumableLoad.representativeSamples()()
{
  v36 = sub_2276624A0();
  v0 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v34 = &v25 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC100, &qword_22767CA40);
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v25 - v5;
  v32 = sub_227665490();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276622F0();
  v10 = sub_2276622F0();
  sub_226FFFEB8();
  v11 = sub_22766CFA0();
  v45 = v10;
  v46[0] = v9;
  v46[1] = v46;
  v46[2] = &v45;
  v44 = v11;
  v46[3] = &v44;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B78, &qword_2276753E0);
  v38 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v39 = v38;
  v40 = sub_226F5BF60(&qword_27D7B9B88, &qword_27D7B9B78, &qword_2276753E0);
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v37 = MEMORY[0x277D84F90];
    result = sub_226F20228(0, v13, 0);
    v15 = 0;
    v16 = v37;
    v26 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = (v0 + 16);
    v25 = v6 + 32;
    v29 = v6;
    v30 = v4;
    v28 = v12;
    v27 = v13;
    v18 = v31;
    while (v15 < *(v12 + 16))
    {
      sub_2271E1034(v26 + *(v4 + 72) * v15, v18);
      v19 = *(v33 + 48);
      v20 = v8;
      v21 = *v17;
      v22 = v36;
      (*v17)(v34, v18, v36);
      v21(v35, v18 + v19, v22);
      v8 = v20;
      sub_227665470();
      sub_226E97D1C(v18, &qword_27D7BC100, &qword_22767CA40);
      v37 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F20228((v23 > 1), v24 + 1, 1);
        v16 = v37;
      }

      ++v15;
      *(v16 + 16) = v24 + 1;
      result = (*(v29 + 32))(v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, v20, v32);
      v4 = v30;
      v12 = v28;
      if (v27 == v15)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2271E1034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC100, &qword_22767CA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271E10A4(uint64_t a1)
{
  result = sub_2271E1298(&qword_28139B840, MEMORY[0x277D51680], &protocol conformance descriptor for AssetResumableLoad);
  *(a1 + 8) = result;
  return result;
}

id sub_2271E10FC(void *a1)
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665480();
  sub_227662390();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v7 = sub_22766BFD0();

  [a1 setRemoteURL_];

  sub_227665460();
  sub_227662390();
  v6(v5, v2);
  v8 = sub_22766BFD0();

  [a1 setLocalURL_];

  v9 = sub_227665450();
  if (v9 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
  }

  return [a1 setDownloadToken_];
}

uint64_t sub_2271E1298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2271E12E0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_22766B390();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271E13AC, 0, 0);
}

uint64_t sub_2271E13AC(uint64_t a1)
{
  sub_22766A610();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_226E8E000, v2, v3, "[SessionEnergyBurnedDataProvider] Loading [%ld] sessions", v6, 0xCu);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  else
  {
  }

  v7 = v1[16];
  v8 = v1[13];
  v9 = v1[14];
  v10 = *(v9 + 8);
  v1[17] = v10;
  v1[18] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  v11 = swift_task_alloc();
  v1[19] = v11;
  *v11 = v1;
  v11[1] = sub_2271E1518;
  v12 = v1[11];

  return sub_2271E3018(v12);
}

uint64_t sub_2271E1518(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_2271E2234;
  }

  else
  {
    v4 = sub_2271E162C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271E162C()
{
  v1 = v0[20];
  if (v1 >> 62)
  {
LABEL_30:
    v33 = sub_22766CD20();
    v0[22] = v33;
    if (v33)
    {
      goto LABEL_3;
    }

LABEL_22:

    v26 = v0[1];

    return v26();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[22] = v2;
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    v4 = v0[20];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AA991A0](v3);
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    v0[23] = v5;
    v0[24] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = v7;
    v6 = v6;
    v9 = [v8 totalEnergyBurned];
    if (!v9)
    {
      goto LABEL_19;
    }

    v10 = v9;
    v11 = [objc_opt_self() kilocalorieUnit];
    [v10 doubleValueForUnit_];
    v13 = v12;

    v14 = [v8 metadata];
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = v14;
    v16 = sub_22766BEB0();

    v17 = sub_227669CA0();
    if (!*(v16 + 16))
    {

LABEL_18:

LABEL_19:

LABEL_20:
      goto LABEL_21;
    }

    v19 = sub_226E92000(v17, v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_18;
    }

    sub_226E97CC0(*(v16 + 56) + 32 * v19, (v0 + 2));

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v22 = v0[11];
    v24 = v0[6];
    v23 = v0[7];
    v0[8] = v24;
    v0[9] = v23;
    v25 = swift_task_alloc();
    *(v25 + 16) = v0 + 8;
    LOBYTE(v22) = sub_226F7E160(sub_226FA6D84, v25, v22);

    if (v22)
    {
      break;
    }

LABEL_21:
    v3 = v0[24];
    if (v3 == v0[22])
    {
      goto LABEL_22;
    }
  }

  v28 = v0[12];
  v29 = v28[20];
  __swift_project_boxed_opaque_existential_0(v28 + 16, v28[19]);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v0[25] = v31;
  v31[2] = v30;
  v31[3] = v24;
  v31[4] = v23;
  v31[5] = v13;
  v34 = (*(v29 + 24) + **(v29 + 24));
  v32 = swift_task_alloc();
  v0[26] = v32;
  *v32 = v0;
  v32[1] = sub_2271E1AA0;

  return v34();
}

uint64_t sub_2271E1AA0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {

    v3 = sub_2271E2044;
  }

  else
  {

    v3 = sub_2271E1BF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271E1BF4()
{
  v3 = *(v0 + 192);
  if (v3 == *(v0 + 176))
  {
LABEL_20:

    v22 = *(v0 + 8);

    return v22();
  }

  while (1)
  {
    v4 = *(v0 + 160);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AA991A0](v3);
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    *(v0 + 184) = v5;
    *(v0 + 192) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = v7;
    v6 = v6;
    v9 = [v8 totalEnergyBurned];
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9;
    v11 = [objc_opt_self() kilocalorieUnit];
    [v10 doubleValueForUnit_];
    v2 = v12;

    v13 = [v8 metadata];
    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = v13;
    v15 = sub_22766BEB0();

    v16 = sub_227669CA0();
    if (!*(v15 + 16))
    {

LABEL_16:

LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

    v18 = sub_226E92000(v16, v17);
    v1 = v19;

    if ((v1 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_226E97CC0(*(v15 + 56) + 32 * v18, v0 + 16);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v20 = *(v0 + 88);
    v1 = *(v0 + 48);
    v3 = *(v0 + 56);
    *(v0 + 64) = v1;
    *(v0 + 72) = v3;
    v21 = swift_task_alloc();
    *(v21 + 16) = v0 + 64;
    LOBYTE(v20) = sub_226F7E160(sub_226FA6D84, v21, v20);

    if (v20)
    {
      goto LABEL_25;
    }

LABEL_19:
    v3 = *(v0 + 192);
    if (v3 == *(v0 + 176))
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  v24 = *(v0 + 96);
  v25 = v24[20];
  __swift_project_boxed_opaque_existential_0(v24 + 16, v24[19]);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v0 + 200) = v27;
  v27[2] = v26;
  v27[3] = v1;
  v27[4] = v3;
  v27[5] = v2;
  v29 = (*(v25 + 24) + **(v25 + 24));
  v28 = swift_task_alloc();
  *(v0 + 208) = v28;
  *v28 = v0;
  v28[1] = sub_2271E1AA0;

  return v29();
}

uint64_t sub_2271E2044()
{
  v21 = v0;
  v1 = v0[23];

  v2 = v0[27];
  sub_22766A610();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v0[17];
    v6 = v0[15];
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v0[10] = v2;
    v10 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "[SessionEnergyBurnedDataProvider] Failed to load sessions with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v19(v6, v7);
  }

  else
  {
    v14 = v0[17];
    v15 = v0[15];
    v16 = v0[13];

    v14(v15, v16);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_2271E2234(uint64_t a1)
{
  v21 = v1;
  v2 = v1[21];
  sub_22766A610();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v19 = v1[17];
    v6 = v1[15];
    v7 = v1[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v1[10] = v2;
    v10 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "[SessionEnergyBurnedDataProvider] Failed to load sessions with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v19(v6, v7);
  }

  else
  {
    v14 = v1[17];
    v15 = v1[15];
    v16 = v1[13];

    v14(v15, v16);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_2271E2418(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v81 = sub_22766B390();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v73 - v12;
  MEMORY[0x28223BE20](v13);
  v75 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA8, &unk_227672A50);
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v73 - v18;
  v19 = sub_227664530();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v83 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  swift_beginAccess();
  v79 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 24, v86);

    __swift_project_boxed_opaque_existential_0(v86, v87);
    v32 = v84;
    sub_2274B4E8C(a3, a4, a1, v27);
    v33 = v32;
    if (v32)
    {
      return __swift_destroy_boxed_opaque_existential_0(v86);
    }

    v74 = a3;
    v34 = a4;
    if ((*(v20 + 48))(v27, 1, v19) == 1)
    {
      sub_226E97D1C(v27, &qword_27D7B8E60, &unk_2276724B0);
      sub_226F73CD0();
      swift_allocError();
      *v35 = 0;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0(v86);
    }

    (*(v20 + 32))(v30, v27, v19);
    (*(v20 + 56))(v30, 0, 1, v19);
    __swift_destroy_boxed_opaque_existential_0(v86);
  }

  else
  {
    v74 = a3;
    v34 = a4;
    (*(v20 + 56))(v30, 1, 1, v19);
    v33 = v84;
  }

  sub_226E93170(v30, v24, &qword_27D7B8E60, &unk_2276724B0);
  v36 = (*(v20 + 48))(v24, 1, v19);
  v37 = v83;
  if (v36 == 1)
  {
    sub_226E97D1C(v24, &qword_27D7B8E60, &unk_2276724B0);
    v38 = v78;
    sub_22766A610();

    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v86[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_226E97AE8(v74, v34, v86);
      _os_log_impl(&dword_226E8E000, v39, v40, "[SessionEnergyBurnedDataProvider] No session found for session identifier %s, skipping energyBurnedCache update", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AA9A450](v42, -1, -1);
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v80 + 8))(v38, v81);
    return sub_226E97D1C(v30, &qword_27D7B8E60, &unk_2276724B0);
  }

  (*(v20 + 32))(v83, v24, v19);
  swift_beginAccess();
  v43 = swift_weakLoadStrong();
  if (v43)
  {
    sub_226E91B50(v43 + 24, v86);

    __swift_project_boxed_opaque_existential_0(v86, v87);
    v44 = v82;
    sub_2274B6BAC(a1, v82);
    if (v33)
    {
      (*(v20 + 8))(v37, v19);
      sub_226E97D1C(v30, &qword_27D7B8E60, &unk_2276724B0);
      return __swift_destroy_boxed_opaque_existential_0(v86);
    }

    v46 = v37;
    v47 = sub_227666FF0();
    (*(*(v47 - 8) + 56))(v44, 0, 1, v47);
    __swift_destroy_boxed_opaque_existential_0(v86);
  }

  else
  {
    v46 = v37;
    v47 = sub_227666FF0();
    v44 = v82;
    (*(*(v47 - 8) + 56))(v82, 1, 1, v47);
  }

  v48 = v44;
  v49 = v77;
  sub_226E93170(v48, v77, &qword_27D7B8FA8, &unk_227672A50);
  sub_227666FF0();
  v50 = *(v47 - 8);
  if ((*(v50 + 48))(v49, 1, v47) == 1)
  {
    sub_226E97D1C(v49, &qword_27D7B8FA8, &unk_227672A50);
    v51 = v76;
    sub_22766A610();

    v52 = sub_22766B380();
    v53 = sub_22766C8B0();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v86[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_226E97AE8(v74, v34, v86);
      _os_log_impl(&dword_226E8E000, v52, v53, "[SessionEnergyBurnedDataProvider] No modality reference for session identifier %s, skipping energyBurnedCache update", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AA9A450](v55, -1, -1);
      MEMORY[0x22AA9A450](v54, -1, -1);

      (*(v80 + 8))(v76, v81);
    }

    else
    {

      (*(v80 + 8))(v51, v81);
    }

    sub_226E97D1C(v82, &qword_27D7B8FA8, &unk_227672A50);
    (*(v20 + 8))(v83, v19);
    return sub_226E97D1C(v30, &qword_27D7B8E60, &unk_2276724B0);
  }

  v78 = v30;
  v84 = v33;
  v56 = sub_227666F70();
  v58 = v57;
  (*(v50 + 8))(v49, v47);
  swift_beginAccess();
  v59 = swift_weakLoadStrong();
  v60 = v75;
  if (v59)
  {
    v61 = v59;
    swift_beginAccess();
    v62 = *(v61 + 16);
    if (*(v62 + 16))
    {
      v63 = sub_226E92000(v56, v58);
      if (v64)
      {
        v65 = *(*(v62 + 56) + 8 * v63);
        swift_endAccess();

        if (v65 >= a5)
        {
          goto LABEL_35;
        }

        goto LABEL_30;
      }
    }

    swift_endAccess();
  }

  if (a5 <= 0.0)
  {
LABEL_35:

    goto LABEL_36;
  }

LABEL_30:
  sub_22766A610();

  v66 = sub_22766B380();
  v67 = sub_22766C8B0();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v85[0] = v69;
    *v68 = 136315394;
    *(v68 + 4) = sub_226E97AE8(v56, v58, v85);
    *(v68 + 12) = 2048;
    *(v68 + 14) = a5;
    _os_log_impl(&dword_226E8E000, v66, v67, "[SessionEnergyBurnedDataProvider] Updating current best for modalityIdentifier %s to %f", v68, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x22AA9A450](v69, -1, -1);
    MEMORY[0x22AA9A450](v68, -1, -1);

    (*(v80 + 8))(v75, v81);
  }

  else
  {

    (*(v80 + 8))(v60, v81);
  }

  swift_beginAccess();
  v70 = swift_weakLoadStrong();
  if (!v70)
  {
    goto LABEL_35;
  }

  v71 = v70;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = *(v71 + 16);
  *(v71 + 16) = 0x8000000000000000;
  sub_227369DA0(v56, v58, isUniquelyReferenced_nonNull_native, a5);

  *(v71 + 16) = v88;
  swift_endAccess();

LABEL_36:
  sub_226E97D1C(v82, &qword_27D7B8FA8, &unk_227672A50);
  (*(v20 + 8))(v46, v19);
  return sub_226E97D1C(v78, &qword_27D7B8E60, &unk_2276724B0);
}

uint64_t sub_2271E3018(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2271E3038, 0, 0);
}

uint64_t sub_2271E3038()
{
  v9 = *(v0 + 24);
  v1 = objc_opt_self();
  sub_227669CA0();
  v2 = sub_22766BFD0();

  sub_22707415C(v9);
  v3 = sub_22766C2B0();

  v4 = [v1 predicateForObjectsWithMetadataKey:v2 allowedValues:v3];
  *(v0 + 40) = v4;

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v9;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BE8, &unk_227675760);
  *v6 = v0;
  v6[1] = sub_2271E31D8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000026, 0x800000022769B520, sub_2271E3910, v5, v7);
}

uint64_t sub_2271E31D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2271E335C;
  }

  else
  {

    v2 = sub_2271E32F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E32F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2271E335C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2271E33C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  sub_226E99364(0, &qword_281398B48, 0x277CCD8D8);
  v12 = [swift_getObjCClassFromMetadata() workoutType];
  v13 = *(a3 + 16);
  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  v16 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
  v17 = sub_22766C2B0();
  aBlock[4] = sub_2271E391C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2274FCD04;
  aBlock[3] = &block_descriptor_20;
  v18 = _Block_copy(aBlock);
  v19 = [v16 initWithSampleType:v12 predicate:a2 limit:v13 sortDescriptors:v17 resultsHandler:v18];

  _Block_release(v18);

  __swift_project_boxed_opaque_existential_0(a4 + 8, a4[11]);
  sub_227669CD0();
}

uint64_t sub_2271E3640(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (!a3)
    {
      sub_226F73CD0();
      v15 = swift_allocError();
      *v18 = 8;
      goto LABEL_9;
    }

LABEL_8:
    v15 = a3;
LABEL_9:
    v20 = v15;
    v16 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
    return sub_22766C440();
  }

  if (a3)
  {
    goto LABEL_8;
  }

  v10 = v7;

  sub_22766A610();

  v11 = sub_22766B380();
  v12 = sub_22766C8B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    if (a2 >> 62)
    {
      v14 = sub_22766CD20();
    }

    else
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 4) = v14;

    _os_log_impl(&dword_226E8E000, v11, v12, "[SessionEnergyBurnedDataProvider] HealthKit query returned %ld results", v13, 0xCu);
    MEMORY[0x22AA9A450](v13, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v9, v10);
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  return sub_22766C450();
}

uint64_t sub_2271E3878()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2271E391C(uint64_t a1, unint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);

  return sub_2271E3640(a1, a2, a3);
}

void sub_2271E39B0(void *a1)
{
  v2 = a1;
  v3 = [a1 name];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [v2 languageCode];
  if (!v5)
  {

LABEL_7:
    v11 = sub_227664DD0();
    sub_2271E41DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51028], v11);
    swift_willThrow();
LABEL_8:

    return;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [v2 capabilities];
  if (!v7)
  {
    v13 = sub_227664DD0();
    sub_2271E41DC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51028], v13);
    swift_willThrow();

    goto LABEL_10;
  }

  v8 = v7;
  v9 = MEMORY[0x22AA99A00]();
  v10 = sub_227155904(v8);
  if (!v1)
  {
    v15 = v10;
    objc_autoreleasePoolPop(v9);
    sub_226F3ECEC(v15);

    [v2 isPrimary];
    sub_227665540();
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v9);

  v2 = v8;
LABEL_10:
}

void sub_2271E3C64(void *a1, uint64_t a2)
{
  sub_227665570();
  v5 = sub_22766BFD0();

  [a1 setName_];

  sub_227665560();
  v6 = sub_22766BFD0();

  [a1 setLanguageCode_];

  [a1 setIsPrimary_];
  v7 = sub_227665550();
  sub_227647448(a2, v7);
  v9 = v8;

  if (!v2)
  {
    [a1 setCapabilities_];
  }
}

void *static LanguageDisclaimer.representativeSamples()()
{
  v21 = sub_2276655A0();
  v0 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  v4 = sub_22766C090();
  v5 = sub_22766C410();
  sub_2271E40F0();
  sub_226F51824();
  v6 = sub_227663B50();
  v7 = sub_226F3ECEC(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC108, &qword_22767CAF8);
  v8 = sub_22766C380();
  v8[2] = 3;
  v8[4] = v7;
  v8[5] = v7;
  v8[6] = v7;
  v33 = v5;
  v34[0] = v8;
  v34[1] = v34;
  v34[2] = &v33;
  v31 = v4;
  v32 = v3;
  v34[3] = &v32;
  v34[4] = &v31;
  swift_bridgeObjectRetain_n();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC110, &qword_22767CB00);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8ED8, &qword_227672868);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v30 = v29;
  v23 = sub_226F5BF60(&qword_27D7BC118, &qword_27D7BC110, &qword_22767CB00);
  v24 = sub_226F5BF60(&qword_27D7B8EE8, &qword_27D7B8ED8, &qword_227672868);
  v25 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v26 = v25;
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    result = sub_226F1F388(0, v10, 0);
    v12 = 0;
    v13 = v22;
    v17[1] = v0 + 32;
    v14 = v9 + 72;
    v19 = v9;
    v20 = v0;
    v18 = v10;
    while (v12 < *(v9 + 16))
    {

      sub_227665540();
      v22 = v13;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F1F388((v15 > 1), v16 + 1, 1);
        v13 = v22;
      }

      ++v12;
      *(v13 + 16) = v16 + 1;
      result = (*(v20 + 32))(v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v16, v2, v21);
      v14 += 48;
      v9 = v19;
      if (v18 == v12)
      {

        return v13;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2271E40F0()
{
  result = qword_27D7BE7B0;
  if (!qword_27D7BE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7B0);
  }

  return result;
}

uint64_t sub_2271E4184(uint64_t a1)
{
  result = sub_2271E41DC(&qword_27D7BC120, MEMORY[0x277D51730], &protocol conformance descriptor for LanguageDisclaimer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2271E41DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2271E4224(uint64_t a1)
{
  v34 = sub_227666B60();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 64;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 48) + *(v3 + 72) * v8, v34);
      v36 = sub_227666A90();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271E452C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB090, &qword_227679BB0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v27 - v4);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v27 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_226F20268(0, v6, 0);
  v7 = v35;
  v8 = a1 + 56;
  result = sub_22766CC90();
  v10 = result;
  v11 = 0;
  v28 = a1 + 64;
  v29 = v6;
  v30 = a1 + 56;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v33 = v11;
    v34 = v14;
    v15 = *(a1 + 48);
    v16 = sub_227666B60();
    (*(*(v16 - 8) + 16))(v5 + *(v32 + 48), v15 + *(*(v16 - 8) + 72) * v10, v16);
    *v5 = sub_227666A50();
    v5[1] = v17;
    v35 = v7;
    v19 = *(v7 + 16);
    v18 = *(v7 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_226F20268((v18 > 1), v19 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v19 + 1;
    result = sub_226E95D18(v5, v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v19, &qword_27D7BB090, &qword_227679BB0);
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v8 = v30;
    v20 = *(v30 + 8 * v13);
    if ((v20 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v10 & 0x3F));
    if (v21)
    {
      v12 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v13 << 6;
      v23 = v13 + 1;
      v24 = (v28 + 8 * v13);
      while (v23 < (v12 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_226EB526C(v10, v34, 0);
          v12 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v10, v34, 0);
    }

LABEL_4:
    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v29)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2271E4844(uint64_t a1)
{
  v34 = sub_227666B60();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 64;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 72;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 56) + *(v3 + 72) * v8, v34);
      v36 = sub_227666A90();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271E4B4C(uint64_t a1)
{
  v40 = sub_227666FF0();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v32[1] = v1;
    v47 = MEMORY[0x277D84F90];
    sub_226F20248(0, v5, 0);
    v46 = v47;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v33 = a1 + 64;
    v34 = v5;
    v35 = v3;
    v36 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v41 = *(a1 + 36);
      v12 = v39;
      v13 = v40;
      (*(v3 + 16))(v39, *(a1 + 48) + *(v3 + 72) * v8, v40);
      v14 = sub_227666F70();
      v44 = v15;
      v45 = v14;
      v43 = sub_227666FB0();
      v17 = v16;
      v42 = v18;
      result = (*(v3 + 8))(v12, v13);
      v19 = v46;
      v47 = v46;
      v20 = a1;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_226F20248((v21 > 1), v22 + 1, 1);
        v19 = v47;
      }

      *(v19 + 16) = v22 + 1;
      v46 = v19;
      v23 = v19 + 40 * v22;
      v24 = v44;
      *(v23 + 32) = v45;
      *(v23 + 40) = v24;
      *(v23 + 48) = v43;
      *(v23 + 56) = v17;
      *(v23 + 64) = v42 & 1;
      v10 = 1 << *(v20 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v36;
      v25 = *(v36 + 8 * v11);
      if ((v25 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v20;
      if (v41 != *(v20 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v8 & 0x3F));
      if (v26)
      {
        v10 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v35;
      }

      else
      {
        v27 = v11 << 6;
        v28 = v11 + 1;
        v29 = (v33 + 8 * v11);
        v3 = v35;
        while (v28 < (v10 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_226EB526C(v8, v41, 0);
            v10 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v41, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v34)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271E4E80(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A8, &qword_22767CD50);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = v34 - v6;
  v7 = sub_2276627D0();
  MEMORY[0x28223BE20](v7 - 8);
  v46 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_227667CD0();
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_227668260();
  v11 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v14)
  {
    v34[1] = v1;
    v54 = MEMORY[0x277D84F90];
    sub_226F202E8(0, v14, 0);
    v53 = v54;
    v16 = a1 + 56;
    result = sub_22766CC90();
    v17 = result;
    v18 = 0;
    v39 = v9 + 8;
    v40 = v9 + 16;
    v37 = v13;
    v38 = v11 + 32;
    v35 = a1 + 64;
    v36 = v14;
    v41 = a1 + 56;
    v42 = v11;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
    {
      if ((*(v16 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_22;
      }

      v51 = v17 >> 6;
      v52 = 1 << v17;
      v20 = *(a1 + 36);
      v49 = v18;
      v50 = v20;
      v22 = v44;
      v21 = v45;
      (*(v9 + 16))(v44, *(a1 + 48) + *(v9 + 72) * v17, v45);
      sub_227667C90();
      sub_227667CA0();
      sub_227667CB0();
      sub_227668250();
      (*(v9 + 8))(v22, v21);
      v23 = v53;
      v54 = v53;
      v25 = *(v53 + 16);
      v24 = *(v53 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F202E8((v24 > 1), v25 + 1, 1);
        v23 = v54;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v53 = v23;
      result = (*(v42 + 32))(v23 + v26 + *(v42 + 72) * v25, v37, v43);
      v19 = 1 << *(a1 + 32);
      v16 = v41;
      if (v17 >= v19)
      {
        goto LABEL_23;
      }

      v27 = *(v41 + 8 * v51);
      if ((v27 & v52) == 0)
      {
        goto LABEL_24;
      }

      if (v50 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v17 & 0x3F));
      if (v28)
      {
        v19 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v51 << 6;
        v30 = v51 + 1;
        v31 = (v35 + 8 * v51);
        while (v30 < (v19 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v17, v50, 0);
            v19 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v17, v50, 0);
      }

LABEL_4:
      v18 = v49 + 1;
      v17 = v19;
      if (v49 + 1 == v36)
      {
        return v53;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271E5358(uint64_t a1)
{
  v43 = sub_227666B60();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_227666F60();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_226F1FA28(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      sub_227666A50();
      v19 = v39;
      sub_227666F30();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1FA28((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_226EB526C(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271E5734(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v2 = v25;
  v24 = a1 + 56;
  result = sub_22766CC90();
  v5 = result;
  v6 = 0;
  v23 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v24 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_227663FB0();
    v12 = *(v25 + 16);
    if (v12 >= *(v25 + 24) >> 1)
    {
      v21 = v11;
      v22 = result;
      sub_226F1EF90();
      v11 = v21;
      result = v22;
    }

    *(v25 + 16) = v12 + 1;
    v13 = v25 + 16 * v12;
    *(v13 + 32) = result;
    *(v13 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v9);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v23;
    }

    else
    {
      v16 = v9 << 6;
      v17 = v9 + 1;
      v8 = v23;
      v18 = (a1 + 64 + 8 * v9);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_226EB526C(v5, v10, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2271E5958(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v46 = a3;
  v45 = a2(0);
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v34 - v6;
  v43 = sub_2276627D0();
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v41 = v9;
    v34 = v3;
    v50 = MEMORY[0x277D84F90];
    sub_226F20288(0, v10, 0);
    v48 = a1 + 56;
    v49 = v50;
    result = sub_22766CC90();
    v12 = v7;
    v13 = result;
    v14 = 0;
    v39 = v5 + 8;
    v40 = v5 + 16;
    v42 = v12;
    v37 = v5;
    v38 = v12 + 32;
    v35 = a1 + 64;
    v36 = v10;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v48 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v47 = *(a1 + 36);
      v19 = v44;
      v18 = v45;
      v20 = (*(v5 + 16))(v44, *(a1 + 48) + *(v5 + 72) * v13, v45);
      v21 = a1;
      v22 = v41;
      v46(v20);
      (*(v5 + 8))(v19, v18);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F20288((v24 > 1), v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v49 = v23;
      result = (*(v42 + 32))(v23 + v26 + *(v42 + 72) * v25, v22, v43);
      v15 = 1 << *(v21 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v27 = *(v48 + 8 * v17);
      if ((v27 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v21;
      if (v47 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v13 & 0x3F));
      if (v28)
      {
        v15 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v36;
      }

      else
      {
        v29 = v17 << 6;
        v30 = v17 + 1;
        v16 = v36;
        v31 = (v35 + 8 * v17);
        while (v30 < (v15 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v13, v47, 0);
            v15 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v13, v47, 0);
      }

LABEL_4:
      ++v14;
      v13 = v15;
      v5 = v37;
      if (v14 == v16)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_2271E5D20(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v10 = v9 | (v8 << 6);
        v11 = *(*(a1 + 56) + 8 * v10);
        if (v11[2])
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v13 = (*(a1 + 48) + 16 * v10);
      v31 = v13[1];
      v32 = *v13;
      v29 = v11[4];
      v30 = v11[5];
      v14 = *(v2 + 16);
      if (*(v2 + 24) <= v14)
      {

        sub_226FE4E4C(v14 + 1, 1);
        v2 = v33;
      }

      else
      {
      }

      sub_22766D370();
      sub_22766C100();
      v15 = sub_22766D3F0();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = v15 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        break;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v30;
LABEL_24:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = 16 * v20;
      v27 = (*(v2 + 48) + v26);
      *v27 = v32;
      v27[1] = v31;
      v28 = (*(v2 + 56) + v26);
      *v28 = v29;
      v28[1] = v21;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v22 = 0;
    v23 = (63 - v17) >> 6;
    v21 = v30;
    while (++v19 != v23 || (v22 & 1) == 0)
    {
      v24 = v19 == v23;
      if (v19 == v23)
      {
        v19 = 0;
      }

      v22 |= v24;
      v25 = *(v16 + 8 * v19);
      if (v25 != -1)
      {
        v20 = __clz(__rbit64(~v25)) + (v19 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v12 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v12);
      ++v8;
      if (v6)
      {
        v8 = v12;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2271E5F78(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v6 = sub_227665F20();
  MEMORY[0x28223BE20](v6);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v49 = a3;
  v50 = &v39 - v13;
  v14 = 0;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v47 = v11;
  v48 = v11 + 32;
  v42 = (v11 + 8);
  v43 = v11 + 16;
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

    v23 = v4;
LABEL_10:
    v24 = *(v49 + 48);
    v25 = v47;
    v41 = *(v47 + 72);
    v26 = v44;
    (*(v47 + 16))(v44, v24 + v41 * (__clz(__rbit64(v20)) | (v14 << 6)), v6, v12);
    v27 = *(v25 + 32);
    v28 = v6;
    v29 = v50;
    v30 = v28;
    v27(v50, v26);
    v31 = v45(v29);
    v4 = v23;
    if (v23)
    {
      (*v42)(v50, v30);

      return;
    }

    v20 &= v20 - 1;
    if (v31)
    {
      v6 = v30;
      (v27)(v39, v50, v30);
      v32 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226F1F708(0, *(v32 + 16) + 1, 1);
        v6 = v30;
        v32 = v51;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v38 = v35 + 1;
        v40 = v35;
        sub_226F1F708((v34 > 1), v35 + 1, 1);
        v36 = v38;
        v35 = v40;
        v6 = v30;
        v32 = v51;
      }

      *(v32 + 16) = v36;
      v37 = *(v47 + 80);
      v40 = v32;
      (v27)(v32 + ((v37 + 32) & ~v37) + v35 * v41, v39, v6);
    }

    else
    {
      v6 = v30;
      (*v42)(v50, v30);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      v23 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_2271E62E8(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v24 = sub_2276627D0();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v6 = v25;
  if (v5)
  {
    v8 = *(v3 + 16);
    v7 = v3 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v21 = *(v7 + 56);
    v22 = v8;
    v20 = (v7 - 8);
    do
    {
      v11 = v23;
      v10 = v24;
      v12 = v7;
      v22(v23, v9, v24);
      sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v13 = sub_22766D140();
      v15 = v14;
      (*v20)(v11, v10);
      v25 = v6;
      v16 = *(v6 + 16);
      if (v16 >= *(v6 + 24) >> 1)
      {
        sub_226F1EF90();
        v6 = v25;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v9 += v21;
      --v5;
      v7 = v12;
    }

    while (v5);
  }

  sub_2272D7E08(1, v6, v19);
}

uint64_t sub_2271E6520(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_227669910();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v5 + 104))(v7, *a3, v4);
    sub_227669660();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_2271E6694()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_2271E680C;

    return sub_2271E6B88();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[12] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[13] = v5;
      *v5 = v0;
      v5[1] = sub_2271E6A10;

      return sub_2271E7130();
    }

    else
    {
      v6 = v0[1];

      return v6();
    }
  }
}

uint64_t sub_2271E680C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2271E6B24;
  }

  else
  {

    v2 = sub_2271E6928;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E6928()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2271E6A10;

    return sub_2271E7130();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2271E6A10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2271E6B24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271E6B88()
{
  v1[2] = v0;
  v2 = sub_22766A170();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_227669D60();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271E6CA4, 0, 0);
}

uint64_t sub_2271E6CA4()
{
  v1 = *(v0 + 16);
  v2 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v1[16]);
  v3 = *(v2 + 24);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_2271E6E08;

  return v6();
}

uint64_t sub_2271E6E08()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2271E70B4;
  }

  else
  {

    v2 = sub_2271E6F24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E6F24()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v5 = v0[2];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v4);
  __swift_project_boxed_opaque_existential_0((v5 + 40), *(v5 + 64));
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v11 + 8))(v3, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2271E70B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271E7130()
{
  v1[6] = v0;
  v2 = sub_227669D60();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_22766B390();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271E7258, 0, 0);
}

uint64_t sub_2271E7258(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[6];
  sub_22766A630();
  sub_22766B370();
  v6 = *(v4 + 8);
  v1[14] = v6;
  v1[15] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v5[16]);
  v8 = *(v7 + 24);

  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[16] = v9;
  *v9 = v1;
  v9[1] = sub_2271E7424;

  return v11();
}

uint64_t sub_2271E7424()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2271E7678;
  }

  else
  {

    v2 = sub_2271E7540;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E7540()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = objc_opt_self();
  sub_227665EE0();
  v6 = sub_22766C0B0();

  [v5 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_0((v4 + 40), *(v4 + 64));
  sub_2271D7EE8();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2271E7678()
{
  v20 = v0;
  v1 = *(v0 + 136);

  sub_22766A630();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v18 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "[WorkoutPlanSystem] Failed to deduplicate active workout plans: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v18(v6, v7);
  }

  else
  {
    v13 = *(v0 + 112);
    v14 = *(v0 + 96);
    v15 = *(v0 + 80);

    v13(v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2271E7860(uint64_t a1, uint64_t a2)
{
  v2 = sub_227669D60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = objc_opt_self();
    sub_227665EE0();
    v8 = sub_22766C0B0();

    [v7 postNotificationName_];

    swift_getObjectType();
    sub_227669D50();
    sub_2276699D0();
    (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_2271E79D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766A170();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669D60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = objc_opt_self();
    sub_227665EE0();
    v14 = v2;
    v11 = sub_22766C0B0();

    [v10 postNotificationName_];

    swift_getObjectType();
    sub_227669D50();
    v2 = v14;
    sub_2276699D0();
    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_22766A160();
    sub_2276699D0();
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_2271E7C80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_226F73E2C;

    return sub_2271E7D68();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2271E7D68()
{
  v1[2] = v0;
  v2 = sub_2276638D0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_2271E7E6C;

  return sub_226E988E0(v3);
}

uint64_t sub_2271E7E6C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2271E84C4;
  }

  else
  {
    v2 = sub_2271E7F80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E7F80()
{
  __swift_project_boxed_opaque_existential_0((v0[2] + 264), *(v0[2] + 288));
  v1 = sub_22766A2C0();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_2271E8050;
  v3 = v0[5];
  v4 = v0[6];

  return sub_2271F2D88(v3, v4, v1);
}

uint64_t sub_2271E8050()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2271E8530;
  }

  else
  {
    v2 = sub_2271E8180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E8180()
{
  sub_226EAC024(&qword_27D7B8920, MEMORY[0x277D50180], MEMORY[0x277D50190]);
  if (sub_22766BFB0())
  {
    v1 = v0[6];
    v2 = v0[3];
    v3 = *(v0[4] + 8);
    v3(v0[5], v2);
    v3(v1, v2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_2271E8300;
    v7 = v0[5];

    return sub_2271FDFD0(v7);
  }
}

uint64_t sub_2271E8300()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2271E85B4;
  }

  else
  {
    v2 = sub_2271E8414;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E8414()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v0[4] + 8);
  v3(v0[5], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271E84C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271E8530()
{
  (*(v0[4] + 8))(v0[6], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2271E85B4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v0[4] + 8);
  v3(v0[5], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271E8658(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2271E8678, 0, 0);
}

uint64_t sub_2271E8678()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2271E8768;
    v3 = v0[5];

    return sub_2271E88A4(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2271E8768()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22700162C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2271E88A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276638D0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[7] = v4;
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_2271E89A8;

  return sub_226E988E0(v4);
}

uint64_t sub_2271E89A8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2271E8FDC;
  }

  else
  {
    v2 = sub_2271E8ABC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E8ABC()
{
  v1 = sub_227667CE0();
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_2271E8B68;
  v3 = v0[6];
  v4 = v0[7];

  return sub_2271F2D88(v3, v4, v1);
}

uint64_t sub_2271E8B68()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2271E9048;
  }

  else
  {
    v2 = sub_2271E8C98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E8C98()
{
  sub_226EAC024(&qword_27D7B8920, MEMORY[0x277D50180], MEMORY[0x277D50190]);
  if (sub_22766BFB0())
  {
    v1 = v0[7];
    v2 = v0[4];
    v3 = *(v0[5] + 8);
    v3(v0[6], v2);
    v3(v1, v2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_2271E8E18;
    v7 = v0[6];

    return sub_2271FDFD0(v7);
  }
}

uint64_t sub_2271E8E18()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2271E90CC;
  }

  else
  {
    v2 = sub_2271E8F2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E8F2C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  v3(v0[6], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271E8FDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271E9048()
{
  (*(v0[5] + 8))(v0[7], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2271E90CC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  v3(v0[6], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

void *sub_2271E9170()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0(v0 + 46);

  __swift_destroy_boxed_opaque_existential_0(v0 + 53);
  return v0;
}

uint64_t sub_2271E91F8()
{
  sub_2271E9170();

  return swift_deallocClassInstance();
}

uint64_t sub_2271E9250(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227667370();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271E9310, 0, 0);
}

uint64_t sub_2271E9310()
{
  v1 = *(v0 + 32);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *(v3 + 24);

  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC158, &qword_22767CCD8);
  *v5 = v0;
  v5[1] = sub_2271E9488;
  v7 = *(v0 + 32);

  return v9(v0 + 16, sub_22720E170, v7, v6, v2, v3);
}

uint64_t sub_2271E9488()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2271E98B8;
  }

  else
  {

    v2 = sub_2271E95A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271E95A4()
{
  v1 = v0[4];
  v0[10] = sub_22704DD68(v0[2]);
  v0[11] = v2;
  v0[12] = v1[51];
  v3 = v1[16];
  v4 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v3);
  v5 = *(v4 + 24);

  v11 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_2271E9718;
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];

  return (v11)(v7, sub_22720E100, v8, v9, v3, v4);
}

uint64_t sub_2271E9718()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271E9B7C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_2271E9924;
    v4 = v2[10];
    v5 = v2[7];
    v6 = v2[3];

    return sub_2275B3834(v6, v5, v4);
  }
}

uint64_t sub_2271E98B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271E9924()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271E9B18, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2271E9B18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271E9B7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271E9BFC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_227667100();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for WorkoutPlanScheduleResult(0);
  v3[16] = swift_task_alloc();
  v6 = sub_227667370();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = sub_2276627D0();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271E9DE8, 0, 0);
}

uint64_t sub_2271E9DE8()
{
  v1 = *(v0 + 72);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *(v3 + 24);

  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC158, &qword_22767CCD8);
  *v5 = v0;
  v5[1] = sub_2271E9F60;
  v7 = *(v0 + 72);

  return v9(v0 + 48, sub_22720E170, v7, v6, v2, v3);
}

uint64_t sub_2271E9F60()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_2271EA450;
  }

  else
  {

    v2 = sub_2271EA07C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271EA07C()
{
  v1 = *(v0 + 72);
  *(v0 + 200) = sub_22704DD68(*(v0 + 48));
  *(v0 + 208) = v2;
  *(v0 + 216) = v1[52];
  *(v0 + 16) = sub_22720C954();
  *(v0 + 24) = v3;
  *(v0 + 224) = v3;
  *(v0 + 232) = sub_227667930();
  sub_227667920();
  *(v0 + 296) = sub_227667910();
  *(v0 + 240) = sub_227667940();
  *(v0 + 32) = sub_227667970();
  *(v0 + 40) = v4;
  *(v0 + 248) = sub_227667980();
  *(v0 + 256) = sub_227667960();
  v5 = v1[16];
  v6 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 264) = v8;
  *v8 = v0;
  v8[1] = sub_2271EA23C;
  v9 = *(v0 + 152);
  v10 = *(v0 + 136);
  v11 = *(v0 + 72);

  return (v13)(v9, sub_22720E100, v11, v10, v5, v6);
}

uint64_t sub_2271EA23C()
{
  v2 = *v1;
  *(v2 + 272) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271EA6A8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 16);

    v5 = swift_task_alloc();
    *(v2 + 280) = v5;
    *v5 = v2;
    v5[1] = sub_2271EA4F8;
    v6 = *(v2 + 232);
    v7 = *(v2 + 224);
    v8 = *(v2 + 200);
    v9 = *(v2 + 208);
    v10 = *(v2 + 176);
    v11 = *(v2 + 128);

    return sub_227043188(v11, v4, v7, v6, v10, v8, v9, v3 & 1);
  }
}

uint64_t sub_2271EA450()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271EA4F8()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_2271EA9F8;
  }

  else
  {
    v2 = sub_2271EA760;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271EA6A8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2271EA760()
{
  v21 = v0[20];
  v22 = v0[22];
  v1 = v0[18];
  v18 = v0[19];
  v19 = v0[21];
  v2 = v0[16];
  v17 = v0[17];
  v20 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v23 = v0[7];
  v15 = v0[14];
  v16 = sub_227149C78(MEMORY[0x277D84F90]);
  sub_22766C490();
  v7 = sub_22766C4B0();
  (*(*(v7 - 8) + 56))(v15, 0, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v4, v2, v6);
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v8;
  (*(v5 + 32))(&v10[v9], v4, v6);
  *&v10[(v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8] = v16;
  sub_2272CA940(0, 0, v15, &unk_22767CF40, v10);

  (*(v1 + 8))(v18, v17);
  (*(v19 + 8))(v22, v21);
  v11 = *(v20 + 20);
  v12 = sub_227665C20();
  (*(*(v12 - 8) + 16))(v23, v2 + v11, v12);
  sub_22720DA88(v2, type metadata accessor for WorkoutPlanScheduleResult);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2271EA9F8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271EAACC(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_22766A170();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_227669D60();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_2276638D0();
  v3[28] = v6;
  v7 = *(v6 - 8);
  v3[29] = v7;
  v3[30] = *(v7 + 64);
  v3[31] = swift_task_alloc();
  v8 = sub_227667370();
  v3[32] = v8;
  v3[33] = *(v8 - 8);
  v3[34] = swift_task_alloc();
  v9 = sub_227663540();
  v3[35] = v9;
  v3[36] = *(v9 - 8);
  v3[37] = swift_task_alloc();
  v10 = sub_227665C20();
  v3[38] = v10;
  v3[39] = *(v10 - 8);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E10, &qword_227676660);
  v3[41] = swift_task_alloc();
  v11 = sub_2276627D0();
  v3[42] = v11;
  v3[43] = *(v11 - 8);
  v3[44] = swift_task_alloc();
  v12 = sub_227665CA0();
  v3[45] = v12;
  v13 = *(v12 - 8);
  v3[46] = v13;
  v3[47] = *(v13 + 64);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271EAE68, 0, 0);
}

uint64_t sub_2271EAE68()
{
  v1 = *(v0 + 168);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *__swift_project_boxed_opaque_existential_0(v1 + 18, v1[21]);
  *(v0 + 40) = type metadata accessor for WorkoutPlanDataStore();
  *(v0 + 48) = &off_283AA53B8;
  *(v0 + 16) = v4;
  sub_226E91B50(v0 + 16, v0 + 56);
  v5 = swift_allocObject();
  sub_226E92AB8((v0 + 56), v5 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v6 = swift_allocObject();
  *(v0 + 400) = v6;
  *(v6 + 16) = sub_22720CD20;
  *(v6 + 24) = v5;
  v10 = (*(v3 + 24) + **(v3 + 24));
  v7 = swift_task_alloc();
  *(v0 + 408) = v7;
  *v7 = v0;
  v7[1] = sub_2271EB064;
  v8 = MEMORY[0x277D839B0];

  return v10(v0 + 552, sub_22720CD3C, v6, v8, v2, v3);
}

uint64_t sub_2271EB064()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_2271EC514;
  }

  else
  {

    v2 = sub_2271EB180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271EB180()
{
  if (*(v0 + 552) == 1)
  {
    v1 = sub_227664EC0();
    sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D51160], v1);
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 168);
    v6 = v5[16];
    v7 = v5[17];
    __swift_project_boxed_opaque_existential_0(v5 + 13, v6);
    v8 = *(v7 + 24);

    v12 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 424) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC158, &qword_22767CCD8);
    *v9 = v0;
    v9[1] = sub_2271EB460;
    v11 = *(v0 + 168);

    return v12(v0 + 144, sub_22720CD74, v11, v10, v6, v7);
  }
}

uint64_t sub_2271EB460()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_2271EBA1C;
  }

  else
  {

    v2 = sub_2271EB57C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271EB57C()
{
  v1 = *(v0 + 168);
  *(v0 + 440) = sub_22704DD68(*(v0 + 144));
  *(v0 + 448) = v2;
  *(v0 + 456) = v1[52];
  *(v0 + 96) = sub_22720C954();
  *(v0 + 104) = v3;
  *(v0 + 464) = v3;
  *(v0 + 472) = sub_2276656C0();
  *(v0 + 112) = sub_2276656E0();
  *(v0 + 120) = v4;
  *(v0 + 480) = v4;
  sub_2276656B0();
  sub_2276656D0();
  sub_2276656F0();
  sub_227665700();
  *(v0 + 128) = sub_227665710();
  *(v0 + 136) = v5;
  *(v0 + 488) = sub_2276656A0();
  v6 = v1[16];
  v7 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v6);
  v8 = *(v7 + 24);

  v14 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 496) = v9;
  *v9 = v0;
  v9[1] = sub_2271EB758;
  v10 = *(v0 + 272);
  v11 = *(v0 + 256);
  v12 = *(v0 + 168);

  return (v14)(v10, sub_22720E100, v12, v11, v6, v7);
}

uint64_t sub_2271EB758()
{
  v2 = *v1;
  v2[63] = v0;

  if (v0)
  {
    v3 = v2[43];
    v21 = v2[42];
    v22 = v2[44];
    v20 = v2[41];
    v4 = v2[39];
    v19 = v2[40];
    v5 = v2[37];
    v18 = v2[38];
    v6 = v2[35];
    v7 = v2[36];

    (*(v7 + 8))(v5, v6);
    (*(v4 + 8))(v19, v18);
    sub_226E97D1C(v20, &qword_27D7B9E10, &qword_227676660);
    (*(v3 + 8))(v22, v21);

    return MEMORY[0x2822009F8](sub_2271EBE6C, 0, 0);
  }

  else
  {
    v8 = v2[14];
    v9 = v2[12];

    v10 = swift_task_alloc();
    v2[64] = v10;
    *v10 = v2;
    v10[1] = sub_2271EBB14;
    v11 = v2[60];
    v12 = v2[58];
    v13 = v2[59];
    v14 = v2[49];
    v15 = v2[44];
    v16 = v2[19];

    return sub_22703DD14(v16, v14, v9, v12, v13, v8, v11, v15);
  }
}

uint64_t sub_2271EBA1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271EBB14()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v17 = v2[44];
  v3 = v2[43];
  v16 = v2[42];
  v15 = v2[41];
  v14 = v2[40];
  v4 = v2[39];
  v13 = v2[38];
  v12 = v2[37];
  v5 = v2[36];
  v6 = v2[35];
  v7 = v2[34];
  v8 = v2[33];
  v9 = v2[32];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v14, v13);
  sub_226E97D1C(v15, &qword_27D7B9E10, &qword_227676660);
  (*(v3 + 8))(v17, v16);
  if (v18)
  {
    v10 = sub_2271EC60C;
  }

  else
  {
    v10 = sub_2271EBF5C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2271EBE6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271EBF5C()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[46];
  v4 = v0[45];
  v17 = v4;
  v5 = v0[31];
  v16 = v0[30];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[21];
  v9 = v0[19];
  v20 = v0[47];
  v19 = v8[17];
  __swift_project_boxed_opaque_existential_0(v8 + 13, v8[16]);
  (*(v6 + 16))(v5, v9, v7);
  (*(v3 + 16))(v2, v1, v4);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = (v16 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v0[66] = v12;
  (*(v6 + 32))(v12 + v10, v5, v7);
  (*(v3 + 32))(v12 + v11, v2, v17);
  *(v12 + ((v20 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  v13 = *(v19 + 24);

  v18 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[67] = v14;
  *v14 = v0;
  v14[1] = sub_2271EC1C0;

  return v18();
}

uint64_t sub_2271EC1C0()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_2271EC6FC;
  }

  else
  {
    v2 = sub_2271EC2F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271EC2F4()
{
  v14 = v0[49];
  v12 = v0[46];
  v13 = v0[45];
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v10 = v0[24];
  v11 = v0[22];
  v5 = v0[21];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_0((v5 + 40), *(v5 + 64));
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v4 + 8))(v10, v11);
  (*(v12 + 8))(v14, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2271EC514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271EC60C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271EC6FC()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[19];
  (*(v0[46] + 8))(v0[49], v0[45]);
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271EC824(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v4 = swift_task_alloc();
  v3[9] = v4;
  v5 = sub_2276638D0();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v3[12] = *(v6 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[16] = v7;
  *v7 = v3;
  v7[1] = sub_2271ECA34;

  return sub_226E988E0(v4);
}

uint64_t sub_2271ECA34()
{

  if (v0)
  {

    v1 = sub_2271ED310;
  }

  else
  {
    v1 = sub_2271ECB4C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2271ECB4C()
{
  v1 = v0[15];
  v23 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v20 = v0[14];
  v21 = v2;
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  (*(v3 + 56))(v4, 0, 1, v2);
  v22 = *(v3 + 32);
  v22(v1, v4, v2);
  v10 = sub_227662750();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_2276627D0();
  v12 = *(*(v11 - 8) + 56);
  v12(v6, 1, 1, v11);
  v13 = sub_227663540();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v12(v7, 1, 1, v11);
  sub_227663890();
  sub_226E97D1C(v7, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v9, &qword_27D7BC128, &unk_22767CC20);
  sub_226E97D1C(v6, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v5, &qword_27D7B9690, qword_227670B50);
  v14 = v8[17];
  __swift_project_boxed_opaque_existential_0(v8 + 13, v8[16]);
  (*(v3 + 16))(v23, v20, v21);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  v0[17] = v16;
  *(v16 + 16) = v8;
  v22(v16 + v15, v23, v21);
  v17 = *(v14 + 24);

  v24 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[18] = v18;
  *v18 = v0;
  v18[1] = sub_2271ECF1C;

  return v24();
}

uint64_t sub_2271ECF1C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2271ED3E4;
  }

  else
  {
    v2 = sub_2271ED04C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271ED04C()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  v3(v0[14], v2);
  v3(v1, v2);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_2271ED11C;
  v5 = v0[3];
  v6 = v0[2];

  return sub_2271EAACC(v6, v5);
}

uint64_t sub_2271ED11C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2271ED310()
{
  v1 = v0[9];
  (*(v0[11] + 56))(v1, 1, 1, v0[10]);
  sub_226E97D1C(v1, &unk_27D7BB920, &unk_227672480);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_2271ED11C;
  v3 = v0[3];
  v4 = v0[2];

  return sub_2271EAACC(v4, v3);
}

uint64_t sub_2271ED3E4()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  v3(v0[14], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271ED4D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271ED5EC(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_227667370();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_227663540();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_227665C20();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E10, &qword_227676660);
  v3[21] = swift_task_alloc();
  v7 = sub_2276627D0();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v8 = sub_227665CA0();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271ED858, 0, 0);
}

uint64_t sub_2271ED858()
{
  v1 = *(v0 + 88);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *(v3 + 24);

  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC158, &qword_22767CCD8);
  *v5 = v0;
  v5[1] = sub_2271ED9D0;
  v7 = *(v0 + 88);

  return v9(v0 + 64, sub_22720E170, v7, v6, v2, v3);
}

uint64_t sub_2271ED9D0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_2271EDF84;
  }

  else
  {

    v2 = sub_2271EDAEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271EDAEC()
{
  v1 = *(v0 + 88);
  *(v0 + 240) = sub_22704DD68(*(v0 + 64));
  *(v0 + 248) = v2;
  *(v0 + 256) = v1[52];
  *(v0 + 16) = sub_22720C954();
  *(v0 + 24) = v3;
  *(v0 + 264) = v3;
  *(v0 + 272) = sub_2276656C0();
  *(v0 + 32) = sub_2276656E0();
  *(v0 + 40) = v4;
  *(v0 + 280) = v4;
  sub_2276656B0();
  sub_2276656D0();
  sub_2276656F0();
  sub_227665700();
  *(v0 + 48) = sub_227665710();
  *(v0 + 56) = v5;
  *(v0 + 288) = sub_2276656A0();
  v6 = v1[16];
  v7 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v6);
  v8 = *(v7 + 24);

  v14 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 296) = v9;
  *v9 = v0;
  v9[1] = sub_2271EDCC4;
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);

  return (v14)(v10, sub_22720E100, v11, v12, v6, v7);
}

uint64_t sub_2271EDCC4()
{
  v2 = *v1;
  v2[38] = v0;

  if (v0)
  {
    v3 = v2[23];
    v21 = v2[22];
    v22 = v2[24];
    v20 = v2[21];
    v4 = v2[19];
    v19 = v2[20];
    v5 = v2[17];
    v18 = v2[18];
    v6 = v2[15];
    v7 = v2[16];

    (*(v7 + 8))(v5, v6);
    (*(v4 + 8))(v19, v18);
    sub_226E97D1C(v20, &qword_27D7B9E10, &qword_227676660);
    (*(v3 + 8))(v22, v21);

    return MEMORY[0x2822009F8](sub_2271EE3BC, 0, 0);
  }

  else
  {
    v8 = v2[4];
    v9 = v2[2];

    v10 = swift_task_alloc();
    v2[39] = v10;
    *v10 = v2;
    v10[1] = sub_2271EE038;
    v11 = v2[35];
    v12 = v2[33];
    v13 = v2[34];
    v14 = v2[27];
    v15 = v2[24];
    v16 = v2[9];

    return sub_22703DD14(v16, v14, v9, v12, v13, v8, v11, v15);
  }
}

uint64_t sub_2271EDF84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271EE038()
{
  v2 = *v1;
  v17 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v16 = *(*v1 + 176);
  v15 = *(*v1 + 168);
  v14 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v13 = *(*v1 + 144);
  v12 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v11 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  *(*v1 + 320) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v12, v11);
  (*(v4 + 8))(v14, v13);
  sub_226E97D1C(v15, &qword_27D7B9E10, &qword_227676660);
  (*(v3 + 8))(v17, v16);
  if (v0)
  {
    v9 = sub_2271EE514;
  }

  else
  {
    (*(v2[26] + 8))(v2[27], v2[25]);
    v9 = sub_2271EE468;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2271EE3BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271EE468()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271EE514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271EE5C0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_227667370();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_227665C20();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E10, &qword_227676660);
  v3[19] = swift_task_alloc();
  v6 = sub_2276627D0();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v3[26] = swift_task_alloc();
  v7 = sub_227663540();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_2276638D0();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v3[33] = *(v9 + 64);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v10 = sub_227663090();
  v3[40] = v10;
  v11 = *(v10 - 8);
  v3[41] = v11;
  v3[42] = *(v11 + 64);
  v3[43] = swift_task_alloc();
  v3[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC208, &qword_22767CF50);
  v3[45] = swift_task_alloc();
  v12 = sub_227665CA0();
  v3[46] = v12;
  v13 = *(v12 - 8);
  v3[47] = v13;
  v3[48] = *(v13 + 64);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271EEA90, 0, 0);
}

uint64_t sub_2271EEA90()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v5[16];
  v8 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v7);
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[54] = v10;
  (*(v4 + 32))(v10 + v9, v1, v3);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v11 = *(v8 + 24);

  v16 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[55] = v12;
  *v12 = v0;
  v12[1] = sub_2271EEC7C;
  v14 = v0[44];
  v13 = v0[45];

  return (v16)(v13, sub_22720DAE8, v10, v14, v7, v8);
}

uint64_t sub_2271EEC7C()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_2271F0DDC;
  }

  else
  {

    v2 = sub_2271EED98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271EED98()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v6 = *(v0 + 360);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(*(v0 + 352) + 48);
  sub_226E95D18(v6, v2, &unk_27D7BB920, &unk_227672480);
  v10 = *(v5 + 32);
  *(v0 + 456) = v10;
  *(v0 + 464) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v3, v6 + v9, v4);
  sub_226E93170(v2, v1, &unk_27D7BB920, &unk_227672480);
  if ((*(v8 + 48))(v1, 1, v7) == 1)
  {
    sub_226E97D1C(*(v0 + 416), &unk_27D7BB920, &unk_227672480);
LABEL_9:
    v33 = *(v0 + 96);
    sub_2276627C0();
    v34 = v33[16];
    v35 = v33[17];
    __swift_project_boxed_opaque_existential_0(v33 + 13, v34);
    v36 = *(v35 + 24);

    v58 = (v36 + *v36);
    v37 = swift_task_alloc();
    *(v0 + 552) = v37;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC158, &qword_22767CCD8);
    *v37 = v0;
    v37[1] = sub_2271EFB4C;
    v39 = *(v0 + 96);

    return v58(v0 + 72, sub_22720E170, v39, v38, v34, v35);
  }

  v11 = *(v0 + 416);
  v12 = *(v0 + 312);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = *(v14 + 32);
  *(v0 + 472) = v15;
  *(v0 + 480) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v12, v11, v13);
  v16 = sub_227663050();
  v18 = v17;
  *(v0 + 16) = v16;
  *(v0 + 24) = v17;
  v20 = v19 & 1;
  *(v0 + 32) = v19 & 1;
  *(v0 + 33) = 0;
  sub_22720DDF8();
  sub_22720DE4C();
  v21 = sub_227663B30();
  sub_226EB2DFC(v16, v18, v20);
  if ((v21 & 1) == 0)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 312), *(v0 + 248));
    goto LABEL_9;
  }

  v22 = *(v0 + 448);
  sub_227663080();
  sub_227663800();
  if (v22)
  {
    v23 = *(v0 + 424);
    v24 = *(v0 + 408);
    v26 = *(v0 + 368);
    v25 = *(v0 + 376);
    v27 = *(v0 + 312);
    v28 = *(v0 + 248);
    v29 = *(v0 + 256);
    v30 = *(v0 + 96);
    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
    (*(v29 + 8))(v27, v28);
    sub_2271F273C(v30);
    (*(v25 + 8))(v24, v26);
    sub_226E97D1C(v23, &unk_27D7BB920, &unk_227672480);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v57 = *(v0 + 296);
    v40 = *(v0 + 256);
    v60 = *(v0 + 248);
    v42 = *(v0 + 216);
    v41 = *(v0 + 224);
    v44 = *(v0 + 200);
    v43 = *(v0 + 208);
    v56 = v43;
    v45 = *(v0 + 184);
    v46 = *(v0 + 192);
    v48 = *(v0 + 160);
    v47 = *(v0 + 168);
    v59 = *(v0 + 96);
    (*(v41 + 8))(*(v0 + 240), v42);
    v49 = sub_227662750();
    (*(*(v49 - 8) + 56))(v43, 1, 1, v49);
    sub_2276627C0();
    v50 = *(v47 + 56);
    v50(v44, 0, 1, v48);
    (*(v41 + 56))(v45, 1, 1, v42);
    v50(v46, 1, 1, v48);
    sub_227663890();
    sub_226E97D1C(v46, &unk_27D7BB9D0, &qword_227671550);
    sub_226E97D1C(v45, &qword_27D7BC128, &unk_22767CC20);
    sub_226E97D1C(v44, &unk_27D7BB9D0, &qword_227671550);
    sub_226E97D1C(v56, &qword_27D7B9690, qword_227670B50);
    v51 = *(v40 + 8);
    *(v0 + 488) = v51;
    *(v0 + 496) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51(v57, v60);
    __swift_project_boxed_opaque_existential_0((v59 + 264), *(v59 + 288));
    v52 = sub_22766A2C0();
    *(v0 + 504) = v52;
    v53 = swift_task_alloc();
    *(v0 + 512) = v53;
    *v53 = v0;
    v53[1] = sub_2271EF4E8;
    v54 = *(v0 + 304);
    v55 = *(v0 + 288);

    return sub_2271F2D88(v55, v54, v52);
  }
}

uint64_t sub_2271EF4E8()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_2271F1388;
  }

  else
  {
    v2 = sub_2271EF61C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271EF61C()
{
  v1 = v0[59];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[31];
  v7 = v0[12];
  v8 = v7[17];
  __swift_project_boxed_opaque_existential_0(v7 + 13, v7[16]);
  (*(v4 + 16))(v3, v2, v6);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[66] = v10;
  v1(v10 + v9, v3, v6);
  *(v10 + ((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v11 = *(v8 + 24);

  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[67] = v12;
  *v12 = v0;
  v12[1] = sub_2271EF808;

  return v14();
}

uint64_t sub_2271EF808()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_2271F157C;
  }

  else
  {
    v2 = sub_2271EF93C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271EF93C()
{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[47];
  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[12];
  v8 = v0[10];
  v1(v0[38], v6);
  v1(v4, v6);
  v2(v8, v5, v6);
  sub_2271F273C(v7);
  v9 = v0[53];
  (*(v3 + 8))(v0[51], v0[46]);
  sub_226E97D1C(v9, &unk_27D7BB920, &unk_227672480);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2271EFB4C()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_2271F011C;
  }

  else
  {

    v2 = sub_2271EFC68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271EFC68()
{
  v1 = v0[19];
  v2 = v0[12];
  v0[71] = sub_22704DD68(v0[9]);
  v0[72] = v3;
  v0[73] = v2[52];
  v0[5] = sub_22720C954();
  v0[6] = v4;
  v0[74] = v4;
  v0[75] = sub_227665C60();
  v0[7] = sub_227665C70();
  v0[8] = v5;
  v0[76] = v5;
  v6 = sub_2276686C0();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_227665C90();
  sub_227663080();
  v0[77] = sub_227665C30();
  v7 = v2[16];
  v8 = v2[17];
  __swift_project_boxed_opaque_existential_0(v2 + 13, v7);
  v9 = *(v8 + 24);

  v15 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[78] = v10;
  *v10 = v0;
  v10[1] = sub_2271EFE74;
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[13];

  return (v15)(v11, sub_22720E100, v12, v13, v7, v8);
}

uint64_t sub_2271EFE74()
{
  v2 = *v1;
  v2[79] = v0;

  if (v0)
  {
    v3 = v2[28];
    v16 = v2[29];
    v4 = v2[27];
    v20 = v2[19];
    v5 = v2[17];
    v17 = v2[16];
    v18 = v2[18];

    (*(v3 + 8))(v16, v4);
    (*(v5 + 8))(v18, v17);
    sub_226E97D1C(v20, &qword_27D7B9E10, &qword_227676660);

    return MEMORY[0x2822009F8](sub_2271F0618, 0, 0);
  }

  else
  {
    v6 = v2[7];
    v7 = v2[5];

    v8 = swift_task_alloc();
    v2[80] = v8;
    *v8 = v2;
    v8[1] = sub_2271F0318;
    v9 = v2[76];
    v10 = v2[75];
    v11 = v2[74];
    v12 = v2[50];
    v13 = v2[34];
    v14 = v2[22];

    return sub_22703DD14(v13, v12, v7, v11, v10, v6, v9, v14);
  }
}

uint64_t sub_2271F011C()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[47];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[12];

  (*(v6 + 8))(v5, v7);
  sub_2271F273C(v8);
  (*(v4 + 8))(v2, v3);
  sub_226E97D1C(v1, &unk_27D7BB920, &unk_227672480);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2271F0318()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  v13 = v2[29];
  v3 = v2[28];
  v11 = v2[27];
  v14 = v2[19];
  v12 = v2[18];
  v4 = v2[17];
  v10 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  v7 = v2[13];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v13, v11);
  (*(v4 + 8))(v12, v10);
  sub_226E97D1C(v14, &qword_27D7B9E10, &qword_227676660);
  if (v15)
  {
    v8 = sub_2271F0F70;
  }

  else
  {
    v8 = sub_2271F0804;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2271F0618()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[12];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_2271F273C(v5);
  (*(v4 + 8))(v2, v3);
  sub_226E97D1C(v1, &unk_27D7BB920, &unk_227672480);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2271F0804()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v18 = v0[48];
  v4 = v0[46];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v17 = v0[33];
  v8 = v0[31];
  v9 = v0[12];
  v19 = v9[17];
  v20 = v0[57];
  __swift_project_boxed_opaque_existential_0(v9 + 13, v9[16]);
  (*(v7 + 16))(v5, v6, v8);
  (*(v3 + 16))(v2, v1, v4);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v17 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v0[82] = v12;
  v13 = *(v7 + 32);
  v0[83] = v13;
  v0[84] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v10, v5, v8);
  v20(v12 + v11, v2, v4);
  *(v12 + ((v18 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v14 = *(v19 + 24);

  v21 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[85] = v15;
  *v15 = v0;
  v15[1] = sub_2271F0A7C;

  return v21();
}

uint64_t sub_2271F0A7C()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_2271F115C;
  }

  else
  {
    v2 = sub_2271F0BB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271F0BB0()
{
  v12 = v0[83];
  v1 = v0[34];
  v2 = v0[31];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[12];
  v7 = v0[10];
  v11 = *(v0[47] + 8);
  v11(v0[50], v0[46]);
  (*(v4 + 8))(v3, v5);
  v12(v7, v1, v2);
  sub_2271F273C(v6);
  v8 = v0[53];
  v11(v0[51], v0[46]);
  sub_226E97D1C(v8, &unk_27D7BB920, &unk_227672480);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2271F0DDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271F0F70()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[12];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_2271F273C(v5);
  (*(v4 + 8))(v2, v3);
  sub_226E97D1C(v1, &unk_27D7BB920, &unk_227672480);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2271F115C()
{
  v12 = v0[51];
  v13 = v0[53];
  v1 = v0[46];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[20];
  v11 = v0[12];
  v8 = *(v0[47] + 8);
  v8(v0[50], v1);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v6, v7);
  sub_2271F273C(v11);
  v8(v12, v1);
  sub_226E97D1C(v13, &unk_27D7BB920, &unk_227672480);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2271F1388()
{
  v1 = v0[61];
  v2 = v0[53];
  v3 = v0[51];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[39];
  v7 = v0[31];
  v8 = v0[12];
  v1(v0[38], v7);
  v1(v6, v7);
  sub_2271F273C(v8);
  (*(v5 + 8))(v3, v4);
  sub_226E97D1C(v2, &unk_27D7BB920, &unk_227672480);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2271F157C()
{
  v1 = v0[61];
  v11 = v0[53];
  v2 = v0[51];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[31];
  v8 = v0[12];
  v1(v0[36], v7);
  v1(v6, v7);
  v1(v5, v7);
  sub_2271F273C(v8);
  (*(v3 + 8))(v2, v4);
  sub_226E97D1C(v11, &unk_27D7BB920, &unk_227672480);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2271F1784@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v106 = a4;
  v9 = sub_227665CA0();
  v127 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v112 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC148, &unk_22767CCA0);
  MEMORY[0x28223BE20](v11 - 8);
  v110 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v103 - v14;
  v16 = sub_2276627D0();
  v119 = *(v16 - 8);
  v120 = v16;
  MEMORY[0x28223BE20](v16);
  v116 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v109 = &v103 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20);
  MEMORY[0x28223BE20](v20 - 8);
  v114 = &v103 - v21;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v107);
  v111 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v103 - v24;
  MEMORY[0x28223BE20](v26);
  v113 = &v103 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v103 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v31 - 8);
  v108 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v103 - v34;
  v36 = sub_2276638D0();
  v121 = *(v36 - 8);
  v122 = v36;
  MEMORY[0x28223BE20](v36);
  v115 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v118 = &v103 - v39;
  v123 = a2;
  v40 = sub_227663060();
  v117 = a3;
  if ((v40 & 1) == 0)
  {
    v42 = a1;
    v43 = v127;
    goto LABEL_7;
  }

  v103 = v15;
  v104 = v9;
  __swift_project_boxed_opaque_existential_0(a3 + 18, a3[21]);
  v41 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  v105 = a1;
  (v41)(a1);
  if (v4)
  {

    (*(v121 + 56))(v35, 1, 1, v122);
    v5 = 0;
LABEL_6:
    v43 = v127;
    sub_226E97D1C(v35, &unk_27D7BB920, &unk_227672480);
    v9 = v104;
    v15 = v103;
    v42 = v105;
    goto LABEL_7;
  }

  v45 = v121;
  v44 = v122;
  if ((*(v121 + 48))(v35, 1, v122) == 1)
  {
    goto LABEL_6;
  }

  (*(v45 + 32))(v118, v35, v44);
  v50 = sub_227662750();
  (*(*(v50 - 8) + 56))(v30, 1, 1, v50);
  v51 = v120;
  v52 = *(v119 + 56);
  v53 = v113;
  v52(v113, 1, 1, v120);
  v54 = sub_227663540();
  v55 = v114;
  (*(*(v54 - 8) + 56))(v114, 1, 1, v54);
  v52(v25, 1, 1, v51);
  v56 = v115;
  sub_227663890();
  sub_226E97D1C(v25, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v55, &qword_27D7BC128, &unk_22767CC20);
  sub_226E97D1C(v53, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v30, &qword_27D7B9690, qword_227670B50);
  v42 = v105;
  sub_22727EB5C(v56, v105);
  v43 = v127;
  __swift_project_boxed_opaque_existential_0(v117 + 5, v117[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_227670CD0;
  v65 = v109;
  sub_2276637C0();
  sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v66 = v120;
  v67 = sub_22766D140();
  v69 = v68;
  (*(v119 + 8))(v65, v66);
  *(v64 + 32) = v67;
  *(v64 + 40) = v69;
  sub_2272D7E08(0, v64, v42);

  v89 = v122;
  v90 = *(v121 + 8);
  v90(v115, v122);
  v90(v118, v89);
  v9 = v104;
  v15 = v103;
LABEL_7:
  result = sub_22727E684(v42);
  if (!v5)
  {
    if (result)
    {
      v47 = sub_227664EC0();
      sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D51160], v47);
      return swift_willThrow();
    }

    else
    {
      __swift_project_boxed_opaque_existential_0(v117 + 18, v117[21]);
      v49 = v116;
      sub_227663070();
      sub_227254380(v49, v42, v15);
      v57 = v42;
      v58 = v119;
      v59 = v49;
      v60 = v120;
      (*(v119 + 8))(v59, v120);
      v61 = v110;
      sub_226E93170(v15, v110, &qword_27D7BC148, &unk_22767CCA0);
      if ((*(v43 + 48))(v61, 1, v9) == 1)
      {
        sub_226E97D1C(v61, &qword_27D7BC148, &unk_22767CCA0);
        v62 = sub_227664EC0();
        sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
        swift_allocError();
        (*(*(v62 - 8) + 104))(v63, *MEMORY[0x277D51198], v62);
        swift_willThrow();
        return sub_226E97D1C(v15, &qword_27D7BC148, &unk_22767CCA0);
      }

      else
      {
        v103 = v15;
        v123 = 0;
        v70 = *(v43 + 32);
        v104 = v9;
        v121 = v43 + 32;
        v122 = v70;
        v70(v112, v61, v9);
        v71 = __swift_project_boxed_opaque_existential_0(v57, v57[3]);
        v72 = *v71;
        v73 = v71[1];
        v74 = *(v71 + 16);
        v75 = v71[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
        v76 = swift_allocObject();
        v77 = v72;
        v78 = v73;

        sub_22766A070();
        *(v76 + 16) = v77;
        *(v76 + 24) = v78;
        *(v76 + 32) = v74;
        *(v76 + 40) = v75;
        swift_getKeyPath();
        v79 = v111;
        sub_227663070();
        (*(v58 + 56))(v79, 0, 1, v60);
        v126[3] = v107;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v126);
        sub_226E93170(v79, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
        sub_226F06498();

        v81 = sub_22766C820();
        sub_226E93170(v126, v124, &unk_27D7BC990, &qword_227670A30);
        v82 = v125;
        if (v125)
        {
          v83 = __swift_project_boxed_opaque_existential_0(v124, v125);
          v84 = *(v82 - 8);
          v85 = MEMORY[0x28223BE20](v83);
          v87 = &v103 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v84 + 16))(v87, v85);
          v88 = sub_22766D170();
          (*(v84 + 8))(v87, v82);
          __swift_destroy_boxed_opaque_existential_0(v124);
        }

        else
        {
          v88 = 0;
        }

        v91 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v92 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

        sub_226E97D1C(v111, &unk_27D7BB9D0, &qword_227671550);
        sub_226E97D1C(v126, &unk_27D7BC990, &qword_227670A30);
        swift_beginAccess();
        v93 = v92;
        v94 = sub_22766A080();
        v96 = v95;
        MEMORY[0x22AA985C0]();
        if (*((*v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22766C360();
        }

        sub_22766C3A0();
        v94(v126, 0);
        swift_endAccess();

        swift_getKeyPath();
        sub_227397FC8();

        v98 = MEMORY[0x22AA99A00](v97);
        v99 = v108;
        v100 = v123;
        sub_227544D6C(v108);
        objc_autoreleasePoolPop(v98);

        if (v100)
        {
          (*(v127 + 8))(v112, v104);
          return sub_226E97D1C(v103, &qword_27D7BC148, &unk_22767CCA0);
        }

        else
        {
          sub_226E97D1C(v103, &qword_27D7BC148, &unk_22767CCA0);
          v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC208, &qword_22767CF50) + 48);
          v102 = v106;
          sub_226E95D18(v99, v106, &unk_27D7BB920, &unk_227672480);
          return v122(v102 + v101, v112, v104);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2271F273C(void *a1)
{
  v14 = sub_22766A170();
  v2 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669D60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  sub_227665EE0();
  v10 = sub_22766C0B0();

  [v9 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v6 + 8))(v8, v5);
  __swift_project_boxed_opaque_existential_0(a1 + 5, a1[8]);
  sub_2271D7EE8();
  sub_22766A160();
  v11 = v14;
  sub_2276699D0();
  return (*(v2 + 8))(v4, v11);
}

uint64_t sub_2271F2960(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v38 = a3;
  v7 = sub_2276627D0();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v40 = a1;
  v11 = __swift_project_boxed_opaque_existential_0(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF30, &qword_22767CC30);
  v12 = sub_2276638D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v39 = xmmword_227670CD0;
  *(v15 + 16) = xmmword_227670CD0;
  (*(v13 + 16))(v15 + v14, a2, v12);
  sub_22756601C(v15, v11[1], *(v11 + 16), v11[3]);

  if (!v4)
  {
    v34 = a2;
    v35 = v9;
    v17 = __swift_project_boxed_opaque_existential_0(v40, v40[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0D0, &qword_227677F00);
    v18 = sub_227665CA0();
    v19 = *(v18 - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v39;
    (*(v19 + 16))(v21 + v20, v38, v18);
    sub_22756554C(v21, v17[1], *(v17 + 16), v17[3]);

    v22 = v36;
    v33[2] = *__swift_project_boxed_opaque_existential_0((v36 + 40), *(v36 + 64));
    v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v23 = swift_allocObject();
    *(v23 + 16) = v39;
    v24 = v35;
    sub_2276637C0();
    v34 = sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = sub_22766D140();
    v27 = v26;
    v28 = *(v37 + 8);
    v28(v24, v7);
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    sub_2272D7E08(0, v23, v40);

    __swift_project_boxed_opaque_existential_0((v22 + 40), *(v22 + 64));
    v29 = swift_allocObject();
    *(v29 + 16) = v39;
    sub_227665C40();
    v30 = sub_22766D140();
    v32 = v31;
    v28(v24, v7);
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    sub_2272D7DDC(0, v29, v40);
  }

  return result;
}

uint64_t sub_2271F2D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v4[25] = swift_task_alloc();
  v5 = sub_227667370();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  v4[29] = swift_task_alloc();
  v6 = sub_227666B60();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = sub_2276638D0();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v8 = sub_2276627D0();
  v4[38] = v8;
  v4[39] = *(v8 - 8);
  v4[40] = swift_task_alloc();
  v9 = sub_22766B390();
  v4[41] = v9;
  v4[42] = *(v9 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271F30CC, 0, 0);
}

uint64_t sub_2271F30CC()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = swift_allocBox();
  v0[45] = v6;
  v0[46] = v7;
  v8 = *(v2 + 16);
  v0[47] = v8;
  v0[48] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v7, v5, v1);
  v9 = v3[16];
  v10 = v3[17];
  __swift_project_boxed_opaque_existential_0(v3 + 13, v9);
  v11 = swift_allocObject();
  v0[49] = v11;
  v11[2] = v3;
  v11[3] = v6;
  v11[4] = v4;
  v12 = *(v10 + 24);

  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  v0[50] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC220, qword_22767CF68);
  *v13 = v0;
  v13[1] = sub_2271F32C4;

  return (v16)(v0 + 14, sub_22720DEE0, v11, v14, v9, v10);
}

uint64_t sub_2271F32C4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_2271F47CC;
  }

  else
  {

    v2 = sub_2271F33E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271F33E0()
{
  v66 = v0;
  v1 = *(v0 + 120);
  *(v0 + 416) = *(v0 + 112);
  *(v0 + 424) = v1;
  if (!*(v1 + 16))
  {
    v22 = *(v0 + 376);
    v23 = *(v0 + 368);
    v24 = *(v0 + 264);
    v25 = *(v0 + 144);

    swift_beginAccess();
    v26 = v25;
    v27 = v23;
LABEL_18:
    v22(v26, v27, v24);

    v56 = *(v0 + 8);

    return v56();
  }

  sub_22766A630();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  if (os_log_type_enabled(v2, v3))
  {
    v57 = *(v0 + 376);
    v4 = *(v0 + 368);
    v5 = *(v0 + 336);
    v62 = *(v0 + 328);
    v64 = *(v0 + 352);
    v6 = *(v0 + 312);
    v7 = *(v0 + 320);
    v58 = *(v0 + 304);
    v60 = v3;
    v8 = *(v0 + 296);
    log = v2;
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v65 = v59;
    *v11 = 136315394;
    swift_beginAccess();
    v57(v8, v4, v10);
    sub_2276637C0();
    (*(v9 + 8))(v8, v10);
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_22766D140();
    v14 = v13;
    (*(v6 + 8))(v7, v58);
    v15 = sub_226E97AE8(v12, v14, &v65);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = sub_22766C610();
    v18 = sub_226E97AE8(v16, v17, &v65);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_226E8E000, log, v60, "Found missing workouts in plan (%s): %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    v21 = *(v5 + 8);
    v20 = v5 + 8;
    v19 = v21;
    v21(v64, v62);
  }

  else
  {
    v28 = *(v0 + 352);
    v29 = *(v0 + 328);
    v30 = *(v0 + 336);

    v31 = *(v30 + 8);
    v20 = v30 + 8;
    v19 = v31;
    v31(v28, v29);
  }

  *(v0 + 432) = v20;
  *(v0 + 440) = v19;
  v32 = *(v1 + 32);
  *(v0 + 544) = v32;
  v33 = 1 << v32;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & *(v1 + 56);
  swift_beginAccess();
  if (!v35)
  {
    v38 = 0;
    v37 = *(v0 + 424);
    while (1)
    {
      v36 = v38 + 1;
      if (v38 + 1 >= ((1 << *(v0 + 544)) + 63) >> 6)
      {
        break;
      }

      v35 = *(v37 + 8 * v38++ + 64);
      if (v35)
      {
        goto LABEL_14;
      }
    }

    v22 = *(v0 + 376);
    v54 = *(v0 + 368);
    v24 = *(v0 + 264);
    v55 = *(v0 + 144);

    swift_beginAccess();
    v26 = v55;
    v27 = v54;
    goto LABEL_18;
  }

  v36 = 0;
  v37 = *(v0 + 424);
LABEL_14:
  *(v0 + 448) = v35;
  *(v0 + 456) = v36;
  v39 = *(v0 + 376);
  v40 = *(v0 + 368);
  v41 = *(v0 + 288);
  v42 = *(v0 + 264);
  v43 = *(v0 + 168);
  v44 = (*(v37 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v35)))));
  *(v0 + 464) = *v44;
  *(v0 + 472) = v44[1];
  *(v0 + 480) = v43[52];

  *(v0 + 128) = sub_22720C954();
  *(v0 + 136) = v45;
  *(v0 + 488) = v45;
  v39(v41, v40, v42);
  v46 = v43[16];
  v47 = v43[17];
  __swift_project_boxed_opaque_existential_0(v43 + 13, v46);
  v48 = *(v47 + 24);

  v63 = (v48 + *v48);
  v49 = swift_task_alloc();
  *(v0 + 496) = v49;
  *v49 = v0;
  v49[1] = sub_2271F3A00;
  v50 = *(v0 + 224);
  v51 = *(v0 + 208);
  v52 = *(v0 + 168);

  return (v63)(v50, sub_22720E100, v52, v51, v46, v47);
}

uint64_t sub_2271F3A00()
{
  v2 = *v1;
  v2[63] = v0;

  if (v0)
  {
    (*(v2[34] + 8))(v2[36], v2[33]);

    return MEMORY[0x2822009F8](sub_2271F3DD8, 0, 0);
  }

  else
  {
    v3 = v2[16];

    v4 = swift_task_alloc();
    v2[64] = v4;
    *v4 = v2;
    v4[1] = sub_2271F3BE4;
    v5 = v2[61];
    v6 = v2[58];
    v7 = v2[59];
    v8 = v2[52];
    v9 = v2[36];
    v11 = v2[28];
    v10 = v2[29];

    return sub_227049244(v10, v3, v5, v6, v7, v9, v8, v11);
  }
}

uint64_t sub_2271F3BE4()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = v2[36];
    v4 = v2[33];
    v5 = v2[34];
    v7 = v2[27];
    v6 = v2[28];
    v8 = v2[26];

    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v3, v4);
    v9 = sub_2271F48EC;
  }

  else
  {
    v10 = v2[36];
    v11 = v2[33];
    v12 = v2[34];
    v14 = v2[27];
    v13 = v2[28];
    v15 = v2[26];

    (*(v14 + 8))(v13, v15);
    v16 = *(v12 + 8);
    v2[66] = v16;
    v2[67] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v10, v11);
    v9 = sub_2271F3EF8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2271F3DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271F3EF8()
{
  v80 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226E97D1C(v3, &qword_27D7B8F20, &qword_2276767D0);
    sub_22766A630();

    v4 = sub_22766B380();
    v5 = sub_22766C890();

    if (os_log_type_enabled(v4, v5))
    {
      v69 = *(v0 + 528);
      v6 = *(v0 + 464);
      v7 = *(v0 + 472);
      v78 = *(v0 + 440);
      v67 = *(v0 + 376);
      v65 = *(v0 + 368);
      v8 = *(v0 + 320);
      v73 = *(v0 + 328);
      v74 = *(v0 + 344);
      v9 = *(v0 + 312);
      v71 = *(v0 + 304);
      v10 = *(v0 + 296);
      v11 = *(v0 + 264);
      v12 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v79[0] = v72;
      *v12 = 136315394;
      v13 = sub_226E97AE8(v6, v7, v79);

      *(v12 + 4) = v13;
      *(v12 + 12) = 2080;
      v67(v10, v65, v11);
      sub_2276637C0();
      v69(v10, v11);
      sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v14 = sub_22766D140();
      v16 = v15;
      (*(v9 + 8))(v8, v71);
      v17 = sub_226E97AE8(v14, v16, v79);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_226E8E000, v4, v5, "Couldn't find replacement for %s in %s.", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v72, -1, -1);
      MEMORY[0x22AA9A450](v12, -1, -1);

      result = v78(v74, v73);
    }

    else
    {
      v31 = *(v0 + 440);
      v32 = *(v0 + 344);
      v33 = *(v0 + 328);

      result = v31(v32, v33);
    }
  }

  else
  {
    v19 = *(v0 + 528);
    v58 = *(v0 + 464);
    v59 = *(v0 + 472);
    v20 = *(v0 + 376);
    v21 = *(v0 + 368);
    v57 = *(v0 + 360);
    v22 = *(v0 + 296);
    v64 = *(v0 + 304);
    v66 = v22;
    v60 = *(v0 + 280);
    v61 = *(v0 + 312);
    v76 = *(v0 + 272);
    v23 = *(v0 + 264);
    v62 = *(v0 + 200);
    v63 = *(v0 + 192);
    v70 = *(v0 + 184);
    v68 = *(v0 + 176);
    v24 = *(v2 + 32);
    v75 = v2;
    v25 = *(v0 + 256);
    v24();
    v20(v22, v21, v23);
    v26 = sub_227663840();
    v19(v22, v23);
    v27 = swift_task_alloc();
    v27[2] = v58;
    v27[3] = v59;
    v27[4] = v57;
    v27[5] = v25;
    sub_2271C3570(sub_22720DF00, v27, v26);

    v20(v60, v21, v23);
    v28 = sub_227662750();
    (*(*(v28 - 8) + 56))(v62, 1, 1, v28);
    v29 = *(v61 + 56);
    v29(v63, 1, 1, v64);
    v30 = sub_227663540();
    (*(*(v30 - 8) + 56))(v68, 1, 1, v30);
    v29(v70, 1, 1, v64);
    sub_227663890();

    sub_226E97D1C(v70, &unk_27D7BB9D0, &qword_227671550);
    sub_226E97D1C(v68, &qword_27D7BC128, &unk_22767CC20);
    sub_226E97D1C(v63, &unk_27D7BB9D0, &qword_227671550);
    sub_226E97D1C(v62, &qword_27D7B9690, qword_227670B50);
    v19(v60, v23);
    (*(v76 + 40))(v21, v66, v23);
    result = (*(v75 + 8))(v25, v1);
  }

  v34 = *(v0 + 456);
  v35 = (*(v0 + 448) - 1) & *(v0 + 448);
  if (v35)
  {
    v36 = *(v0 + 424);
LABEL_12:
    *(v0 + 448) = v35;
    *(v0 + 456) = v34;
    v38 = *(v0 + 376);
    v39 = *(v0 + 368);
    v40 = *(v0 + 288);
    v41 = *(v0 + 264);
    v42 = *(v0 + 168);
    v43 = (*(v36 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v35)))));
    *(v0 + 464) = *v43;
    *(v0 + 472) = v43[1];
    *(v0 + 480) = v42[52];

    *(v0 + 128) = sub_22720C954();
    *(v0 + 136) = v44;
    *(v0 + 488) = v44;
    v38(v40, v39, v41);
    v45 = v42[16];
    v46 = v42[17];
    __swift_project_boxed_opaque_existential_0(v42 + 13, v45);
    v47 = *(v46 + 24);

    v77 = (v47 + *v47);
    v48 = swift_task_alloc();
    *(v0 + 496) = v48;
    *v48 = v0;
    v48[1] = sub_2271F3A00;
    v49 = *(v0 + 224);
    v50 = *(v0 + 208);
    v51 = *(v0 + 168);

    return (v77)(v49, sub_22720E100, v51, v50, v45, v46);
  }

  else
  {
    while (1)
    {
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        return result;
      }

      if (v37 >= (((1 << *(v0 + 544)) + 63) >> 6))
      {
        break;
      }

      v36 = *(v0 + 424);
      v35 = *(v36 + 8 * v37 + 56);
      ++v34;
      if (v35)
      {
        v34 = v37;
        goto LABEL_12;
      }
    }

    v52 = *(v0 + 376);
    v53 = *(v0 + 368);
    v54 = *(v0 + 264);
    v55 = *(v0 + 144);

    swift_beginAccess();
    v52(v55, v53, v54);

    v56 = *(v0 + 8);

    return v56();
  }
}

uint64_t sub_2271F47CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271F48EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271F4A0C(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v21 = sub_2276627D0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF30, &qword_22767CC30);
  v9 = sub_2276638D0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v19 = xmmword_227670CD0;
  *(v12 + 16) = xmmword_227670CD0;
  (*(v10 + 16))(v12 + v11, a2, v9);
  sub_22756601C(v12, v8[1], *(v8 + 16), v8[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((v20 + 40), *(v20 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v14 = swift_allocObject();
    *(v14 + 16) = v19;
    sub_2276637C0();
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = v21;
    v16 = sub_22766D140();
    v18 = v17;
    (*(v22 + 8))(v7, v15);
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    sub_2272D7E08(0, v14, a1);
  }

  return result;
}

uint64_t sub_2271F4CA8()
{
  v43 = sub_227665440();
  v0 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC138, &unk_22767CC80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v36 - v6;
  result = sub_227663840();
  v9 = 0;
  v11 = result + 64;
  v10 = *(result + 64);
  v40 = v0;
  v41 = result;
  v12 = 1 << *(result + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  v36[1] = v0 + 32;
  v36[2] = v0 + 16;
  v42 = (v0 + 8);
  v37 = v7;
  v38 = v4;
  if ((v13 & v10) != 0)
  {
    while (1)
    {
      v16 = v9;
LABEL_12:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v16 << 6);
      v22 = v40;
      v21 = v41;
      v23 = v39;
      v24 = v43;
      (*(v40 + 16))(v39, *(v41 + 48) + *(v40 + 72) * v20, v43);
      v25 = *(*(v21 + 56) + 8 * v20);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
      v27 = *(v26 + 48);
      v28 = *(v22 + 32);
      v4 = v38;
      v28(v38, v23, v24);
      *&v4[v27] = v25;
      (*(*(v26 - 8) + 56))(v4, 0, 1, v26);

      v18 = v16;
      v7 = v37;
LABEL_13:
      sub_226E95D18(v4, v7, &qword_27D7BC138, &unk_22767CC80);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
      v30 = (*(*(v29 - 8) + 48))(v7, 1, v29);
      if (v30 == 1)
      {

        return v30 != 1;
      }

      v31 = *&v7[*(v29 + 48)];
      v32 = *(v31 + 16);
      v33 = sub_226F45450(v31);

      v34 = *(v33 + 16);

      if (v32 != v34)
      {
        break;
      }

      result = (*v42)(v7, v43);
      v9 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v42)(v7, v43);
    return v30 != 1;
  }

  else
  {
LABEL_5:
    if (v15 <= v9 + 1)
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = v15;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v16 >= v15)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
        (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v16);
      ++v9;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2271F50AC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227666E60();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_227665750();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_2276638D0();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1F0, &qword_22767CF18);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = sub_227666E30();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v2[24] = *(v7 + 64);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271F5314, 0, 0);
}

uint64_t sub_2271F5314()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v5[16];
  v7 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v6);
  (*(v3 + 16))(v1, v4, v2);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[26] = v9;
  *(v9 + 16) = v5;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = *(v7 + 24);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[27] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1F8, &qword_22767CF20);
  *v11 = v0;
  v11[1] = sub_2271F550C;

  return (v14)(v0 + 2, sub_22720D894, v9, v12, v6, v7);
}

uint64_t sub_2271F550C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_2271F68B8;
  }

  else
  {

    v2 = sub_2271F5628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271F5628()
{
  v91 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 16);
  *(v0 + 232) = v2;
  v3 = *(v2 + 32);
  *(v0 + 304) = v3;
  v4 = -1;
  v5 = -1 << v3;
  v6 = *(v2 + 64);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v82 = *(v0 + 224);
  *(v0 + 240) = MEMORY[0x277D84F98];
  v7 = v4 & v6;
  if (v7)
  {
    v8 = 0;
LABEL_8:
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 120);
    v87 = (v7 - 1) & v7;
    v14 = __clz(__rbit64(v7)) | (v8 << 6);
    (*(v1 + 16))(v12, *(v2 + 48) + *(v1 + 72) * v14, v13);
    v15 = *(*(v2 + 56) + 8 * v14);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
    v17 = *(v16 + 48);
    (*(v1 + 32))(v11, v12, v13);
    *(v11 + v17) = v15;
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);

    v18 = v87;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v2 + 72 + 8 * v9++);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v39 = *(v0 + 160);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
    (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
    v18 = 0;
  }

  *(v0 + 248) = v18;
  *(v0 + 256) = v10;
  v19 = *(v0 + 168);
  sub_226E95D18(*(v0 + 160), v19, &qword_27D7BC1F0, &qword_22767CF18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {

    v21 = sub_227666DF0();
    v22 = MEMORY[0x277D84F98];
    v23 = *(MEMORY[0x277D84F98] + 16);
    v88 = v21;
    if (v23)
    {
      v24 = *(v0 + 128);
      v80 = sub_2274CDB2C(v23, 0);
      sub_2274CEFEC(&v90, &v80[(*(v24 + 80) + 32) & ~*(v24 + 80)], v23, MEMORY[0x277D84F98]);
      v26 = v25;
      v27 = v90;

      result = sub_226EBB21C(v27);
      if (v26 != v23)
      {
        goto LABEL_44;
      }

      v29 = v80;
      v30 = v88;
    }

    else
    {
      v30 = v21;
      v29 = MEMORY[0x277D84F90];
    }

    v84 = *(v30 + 16);
    if (!v84)
    {
LABEL_29:

      v57 = *(v29 + 2);
      if (v57)
      {
        v58 = *(v0 + 128);
        v59 = &v29[(*(v58 + 80) + 32) & ~*(v58 + 80)];
        v60 = *(v58 + 72);
        v89 = *(v0 + 72);
        v61 = MEMORY[0x277D84F90];
        v85 = v60;
        v86 = v0;
        do
        {
          if (*(v22 + 16))
          {
            v64 = sub_226F3B3E8(v59);
            if (v65)
            {
              v66 = v61;
              v67 = *(v0 + 88);
              v68 = *(v0 + 96);
              v70 = *(v0 + 72);
              v69 = *(v0 + 80);
              v71 = *(v0 + 64);
              v72 = *(v22 + 56);
              v73 = *(v89 + 72);
              (*(v89 + 16))(v67, v72 + v73 * v64, v71);
              v74 = *(v70 + 32);
              v74(v68, v67, v71);
              v75 = v68;
              v61 = v66;
              v74(v69, v75, v71);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v61 = sub_2273A6974(0, v66[2] + 1, 1, v66);
              }

              v77 = v61[2];
              v76 = v61[3];
              if (v77 >= v76 >> 1)
              {
                v61 = sub_2273A6974((v76 > 1), v77 + 1, 1, v61);
              }

              v62 = *(v86 + 80);
              v63 = *(v86 + 64);
              v61[2] = v77 + 1;
              v74(v61 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + v77 * v73, v62, v63);
              v0 = v86;
              v22 = MEMORY[0x277D84F98];
              v60 = v85;
            }
          }

          v59 += v60;
          --v57;
        }

        while (v57);
      }

      else
      {
        v61 = MEMORY[0x277D84F90];
      }

      v78 = *(v0 + 8);

      return v78(v61);
    }

    v41 = *(v0 + 48);
    v42 = *(v41 + 16);
    v43 = *(v0 + 56);
    v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v81 = *(v41 + 72);
    v42(v43, v30 + v44, *(v0 + 40));
    sub_227666E50();
    v45 = swift_task_alloc();
    *(v45 + 16) = v43;
    v90 = v29;

    sub_22720AB34(sub_22720D914, v45);
    if (v82)
    {
    }

    v46 = *(v0 + 56);
    v47 = *(v0 + 40);

    v29 = v90;

    v83 = *(v41 + 8);
    result = v83(v46, v47);
    if (v84 == 1)
    {
      v22 = MEMORY[0x277D84F98];
      goto LABEL_29;
    }

    v79 = v42;
    v48 = v29;
    v49 = v88;
    v50 = v88 + v81 + v44;
    v51 = 1;
    while (v51 < *(v49 + 16))
    {
      v52 = *(v0 + 56);
      v79(v52, v50, *(v0 + 40));
      sub_227666E50();
      v53 = swift_task_alloc();
      *(v53 + 16) = v52;
      v90 = v48;

      sub_22720AB34(sub_22720D914, v53);
      v54 = *(v0 + 56);
      v55 = *(v0 + 40);

      ++v51;
      v48 = v90;

      v56 = v55;
      v49 = v88;
      result = v83(v54, v56);
      v50 += v81;
      if (v84 == v51)
      {
        v22 = MEMORY[0x277D84F98];
        v29 = v48;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v32 = *(v0 + 136);
  v31 = *(v0 + 144);
  v33 = *(v0 + 120);
  v34 = *(v0 + 128);
  v35 = *(v0 + 32);
  v36 = *(*(v0 + 168) + *(v20 + 48));
  *(v0 + 264) = v36;
  (*(v34 + 32))(v31);
  (*(v34 + 16))(v32, v31, v33);
  v37 = swift_task_alloc();
  *(v0 + 272) = v37;
  *v37 = v0;
  v37[1] = sub_2271F5E98;
  v38 = *(v0 + 112);

  return sub_227432300(v38, v35 + 304, v36);
}

uint64_t sub_2271F5E98()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[16];
    v3 = v2[17];
    v5 = v2[15];
    v6 = *(v4 + 8);
    v2[36] = v6;
    v2[37] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v5);

    v7 = sub_2271F69C4;
  }

  else
  {

    v7 = sub_2271F5FFC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2271F5FFC()
{
  v95 = v0;
  v1 = *(v0 + 240);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  (*(*(v0 + 72) + 32))(v6, *(v0 + 112), *(v0 + 64));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = v1;
  sub_22736B424(v6, v3, isUniquelyReferenced_nonNull_native);
  v8 = *(v5 + 8);
  v8(v3, v4);
  result = (v8)(v2, v4);
  v10 = *(v0 + 280);
  v11 = *(v0 + 248);
  v12 = *(v0 + 256);
  v93 = v1;
  *(v0 + 240) = v1;
  v86 = v10;
  if (!v11)
  {
    v14 = ((1 << *(v0 + 304)) + 63) >> 6;
    if (v14 <= (v12 + 1))
    {
      v15 = v12 + 1;
    }

    else
    {
      v15 = ((1 << *(v0 + 304)) + 63) >> 6;
    }

    v16 = v15 - 1;
    while (1)
    {
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v48 = *(v0 + 160);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
        (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
        v22 = 0;
        goto LABEL_12;
      }

      v13 = *(v0 + 232);
      v11 = *(v13 + 8 * v17 + 64);
      ++v12;
      if (v11)
      {
        v12 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v13 = *(v0 + 232);
LABEL_11:
  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  v22 = (v11 - 1) & v11;
  v23 = __clz(__rbit64(v11)) | (v12 << 6);
  (*(v21 + 16))(v19, *(v13 + 48) + *(v21 + 72) * v23, v20);
  v24 = *(*(v13 + 56) + 8 * v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
  v26 = *(v25 + 48);
  (*(v21 + 32))(v18, v19, v20);
  *(v18 + v26) = v24;
  (*(*(v25 - 8) + 56))(v18, 0, 1, v25);

  v16 = v12;
LABEL_12:
  *(v0 + 248) = v22;
  *(v0 + 256) = v16;
  v27 = *(v0 + 168);
  sub_226E95D18(*(v0 + 160), v27, &qword_27D7BC1F0, &qword_22767CF18);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
  v29 = v93;
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
  {

    v30 = sub_227666DF0();
    v31 = *(v93 + 16);
    v91 = v30;
    if (v31)
    {
      v32 = *(v0 + 128);
      v33 = sub_2274CDB2C(v31, 0);
      v34 = *(v32 + 80);
      v29 = v93;
      v35 = v33;
      sub_2274CEFEC(&v94, &v33[(v34 + 32) & ~v34], v31, v93);
      v37 = v36;
      v38 = v94;

      result = sub_226EBB21C(v38);
      if (v37 != v31)
      {
LABEL_48:
        __break(1u);
        return result;
      }

      v39 = v35;
      v30 = v91;
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v89 = *(v30 + 16);
    if (!v89)
    {
LABEL_32:

      v65 = *(v39 + 16);
      if (v65)
      {
        v66 = *(v0 + 128);
        v67 = v39 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
        v68 = *(v66 + 72);
        v92 = *(v0 + 72);
        v69 = MEMORY[0x277D84F90];
        v88 = v68;
        do
        {
          if (*(v29 + 16))
          {
            v72 = sub_226F3B3E8(v67);
            if (v73)
            {
              v75 = *(v0 + 88);
              v74 = *(v0 + 96);
              v76 = v69;
              v77 = *(v0 + 72);
              v78 = *(v0 + 80);
              v79 = *(v0 + 64);
              v90 = *(v92 + 72);
              (*(v92 + 16))(v75, *(v29 + 56) + v90 * v72, v79);
              v80 = *(v77 + 32);
              v80(v74, v75, v79);
              v81 = v78;
              v69 = v76;
              v80(v81, v74, v79);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v69 = sub_2273A6974(0, v76[2] + 1, 1, v76);
              }

              v83 = v69[2];
              v82 = v69[3];
              v68 = v88;
              if (v83 >= v82 >> 1)
              {
                v69 = sub_2273A6974((v82 > 1), v83 + 1, 1, v69);
              }

              v70 = *(v0 + 80);
              v71 = *(v0 + 64);
              v69[2] = v83 + 1;
              v80(v69 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + v83 * v90, v70, v71);
              v29 = v93;
            }
          }

          v67 += v68;
          --v65;
        }

        while (v65);
      }

      else
      {
        v69 = MEMORY[0x277D84F90];
      }

      v84 = *(v0 + 8);

      return v84(v69);
    }

    v50 = *(v0 + 48);
    v51 = *(v50 + 16);
    v52 = *(v0 + 56);
    v53 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v54 = *(v50 + 72);
    v51(v52, v30 + v53, *(v0 + 40));
    sub_227666E50();
    v55 = swift_task_alloc();
    *(v55 + 16) = v52;
    v94 = v39;

    sub_22720AB34(sub_22720D914, v55);
    if (v86)
    {
    }

    v87 = v54;
    v56 = *(v0 + 56);
    v57 = *(v0 + 40);

    v39 = v94;

    v85 = *(v50 + 8);
    result = v85(v56, v57);
    if (v89 == 1)
    {
      v29 = v93;
      goto LABEL_32;
    }

    v58 = v39;
    v59 = v91 + v87 + v53;
    v60 = 1;
    while (v60 < *(v91 + 16))
    {
      v61 = *(v0 + 56);
      v51(v61, v59, *(v0 + 40));
      sub_227666E50();
      v62 = swift_task_alloc();
      *(v62 + 16) = v61;
      v94 = v58;

      sub_22720AB34(sub_22720D914, v62);
      v63 = *(v0 + 56);
      v64 = *(v0 + 40);

      ++v60;
      v58 = v94;

      result = v85(v63, v64);
      v59 += v87;
      if (v89 == v60)
      {
        v29 = v93;
        v39 = v58;
        goto LABEL_32;
      }
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v41 = *(v0 + 136);
  v40 = *(v0 + 144);
  v42 = *(v0 + 120);
  v43 = *(v0 + 128);
  v44 = *(v0 + 32);
  v45 = *(*(v0 + 168) + *(v28 + 48));
  *(v0 + 264) = v45;
  (*(v43 + 32))(v40);
  (*(v43 + 16))(v41, v40, v42);
  v46 = swift_task_alloc();
  *(v0 + 272) = v46;
  *v46 = v0;
  v46[1] = sub_2271F5E98;
  v47 = *(v0 + 112);

  return sub_227432300(v47, v44 + 304, v45);
}

uint64_t sub_2271F68B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271F69C4()
{
  v1 = v0[36];
  v2 = v0[18];
  v3 = v0[15];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271F6AF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_227663FA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 224), *(a2 + 248));
  result = sub_226EAF48C(a1, v12);
  if (!v4)
  {
    sub_227663F60();
    v15 = v14;
    (*(v10 + 8))(v12, v9);
    v16 = sub_22727F174(a3, a1);
    MEMORY[0x28223BE20](v16);
    *(&v20 - 4) = a2;
    *(&v20 - 3) = v15;
    *(&v20 - 2) = a1;
    sub_22708B1A4(MEMORY[0x277D84F98], sub_22720D934, (&v20 - 6), v17);
    v19 = v18;

    *a4 = v19;
  }

  return result;
}

uint64_t sub_2271F6CA0(uint64_t *a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v24 = a1;
  v9 = sub_2276627D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276638D0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a2, v13, v15);
  sub_2276637C0();
  sub_2276637D0();
  v18 = sub_226F491E8();
  v19 = sub_22727227C(v12, v18, a5, a3);
  if (v5)
  {

    (*(v10 + 8))(v12, v9);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    v21 = v19;
    (*(v10 + 8))(v12, v9);

    v22 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;
    sub_22736B650(v21, v17, isUniquelyReferenced_nonNull_native);
    result = (*(v14 + 8))(v17, v13);
    *v22 = v25;
  }

  return result;
}

uint64_t sub_2271F6EF0()
{
  v0 = sub_227663540();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_227666E40();
  v7 = sub_2276629E0();
  sub_2276638B0();
  sub_2276638B0();
  if (v7)
  {
    v8 = MEMORY[0x22AA8F7D0](v6, v3);
  }

  else
  {
    sub_226EAC024(&qword_28139BCD0, MEMORY[0x277D4FFA8], MEMORY[0x277D4FFB8]);
    v8 = sub_22766BF80();
  }

  v9 = v8;
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  return v9 & 1;
}

uint64_t sub_2271F70F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276638D0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_22766B390();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC150, &qword_22767CCB8);
  v2[12] = swift_task_alloc();
  v2[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC148, &unk_22767CCA0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271F72FC, 0, 0);
}

uint64_t sub_2271F72FC()
{
  v1 = v0[3];
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_2271F745C;
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[3];

  return (v10)(v6, sub_22720CCC4, v8, v7, v2, v3);
}

uint64_t sub_2271F745C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2271F7B40;
  }

  else
  {

    v2 = sub_2271F7578;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271F7578()
{
  v46 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = *(v0[11] + 48);
  sub_226E95D18(v5, v2, &unk_27D7BB920, &unk_227672480);
  sub_226E95D18(v5 + v6, v3, &qword_27D7BC148, &unk_22767CCA0);
  sub_22766A630();
  sub_226E93170(v2, v1, &unk_27D7BB920, &unk_227672480);
  sub_226E93170(v3, v4, &qword_27D7BC148, &unk_22767CCA0);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  if (v9)
  {
    v11 = v0[15];
    v12 = v0[9];
    v44 = v0[10];
    v43 = v0[8];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v45[0] = v14;
    *v13 = 136315394;
    v15 = sub_22766CB80();
    v17 = v16;
    sub_226E97D1C(v10, &unk_27D7BB920, &unk_227672480);
    v18 = sub_226E97AE8(v15, v17, v45);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v19 = sub_22766CB80();
    v21 = v20;
    sub_226E97D1C(v11, &qword_27D7BC148, &unk_22767CCA0);
    v22 = sub_226E97AE8(v19, v21, v45);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_226E8E000, v7, v8, "Active Workout Plan: %s, template: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    (*(v12 + 8))(v44, v43);
  }

  else
  {
    v23 = v0[15];
    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];

    sub_226E97D1C(v23, &qword_27D7BC148, &unk_22767CCA0);
    sub_226E97D1C(v10, &unk_27D7BB920, &unk_227672480);
    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[18];
  v28 = v0[4];
  v29 = v0[5];
  sub_226E93170(v0[20], v27, &unk_27D7BB920, &unk_227672480);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v30 = v0[20];
    v31 = v0[16];
    sub_226E97D1C(v0[18], &unk_27D7BB920, &unk_227672480);
    v32 = sub_227664EC0();
    sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51188], v32);
    swift_willThrow();
    sub_226E97D1C(v31, &qword_27D7BC148, &unk_22767CCA0);
    sub_226E97D1C(v30, &unk_27D7BB920, &unk_227672480);
  }

  else
  {
    v35 = v0[20];
    v36 = v0[16];
    v37 = v0[14];
    v39 = v0[6];
    v38 = v0[7];
    v40 = v0[4];
    v41 = v0[5];
    (*(v41 + 32))(v38);
    (*(v41 + 16))(v39, v38, v40);
    sub_226E93170(v36, v37, &qword_27D7BC148, &unk_22767CCA0);
    sub_227666E70();
    (*(v41 + 8))(v38, v40);
    sub_226E97D1C(v36, &qword_27D7BC148, &unk_22767CCA0);
    sub_226E97D1C(v35, &unk_27D7BB920, &unk_227672480);
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_2271F7B40()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_2271F7C34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = sub_2276627D0();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276638D0();
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC148, &unk_22767CCA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v22 = *(a2 + 168);
  v44 = a2;
  __swift_project_boxed_opaque_existential_0((a2 + 144), v22);
  v23 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  v24 = v47;
  result = (v23)(a1);
  if (!v24)
  {
    v26 = v44;
    v27 = v41;
    v28 = v42;
    v29 = a1;
    v38 = v15;
    v47 = 0;
    sub_226E93170(v21, v18, &unk_27D7BB920, &unk_227672480);
    v30 = v45;
    if ((*(v46 + 48))(v18, 1, v45) == 1)
    {
      sub_226E97D1C(v18, &unk_27D7BB920, &unk_227672480);
      v31 = sub_227665CA0();
      v32 = v38;
      (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
      v33 = v43;
    }

    else
    {
      v37 = v21;
      (*(v46 + 32))(v27, v18, v30);
      __swift_project_boxed_opaque_existential_0((v26 + 144), *(v26 + 168));
      v34 = v28;
      sub_227663820();
      v35 = v47;
      sub_227254380(v28, v29, v12);
      v47 = v35;
      v33 = v43;
      if (v35)
      {
        (*(v39 + 8))(v34, v40);
        (*(v46 + 8))(v27, v30);
        return sub_226E97D1C(v37, &unk_27D7BB920, &unk_227672480);
      }

      (*(v39 + 8))(v34, v40);
      (*(v46 + 8))(v27, v30);
      v32 = v38;
      sub_226E95D18(v12, v38, &qword_27D7BC148, &unk_22767CCA0);
      v21 = v37;
    }

    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC150, &qword_22767CCB8) + 48);
    sub_226E95D18(v21, v33, &unk_27D7BB920, &unk_227672480);
    return sub_226E95D18(v32, v33 + v36, &qword_27D7BC148, &unk_22767CCA0);
  }

  return result;
}

uint64_t sub_2271F80C8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227668E60();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_2276627D0();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v2[11] = *(v6 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v7 = sub_2276638D0();
  v2[14] = v7;
  v2[15] = *(v7 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271F825C, 0, 0);
}

uint64_t sub_2271F825C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  v5 = v0[4];
  sub_227668E40();
  v6 = v5[16];
  v7 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v6);
  (*(v3 + 16))(v2, v1, v4);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[17] = v9;
  *(v9 + 16) = v5;
  (*(v3 + 32))(v9 + v8, v2, v4);
  v10 = *(v7 + 24);

  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_2271F844C;
  v12 = v0[16];
  v13 = v0[14];

  return v15(v12, sub_22720E118, v9, v13, v6, v7);
}

uint64_t sub_2271F844C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2271F8580;
  }

  else
  {
    v2 = sub_2271F8624;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271F8580()
{
  (*(v0[10] + 8))(v0[13], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2271F8624()
{
  v1 = v0[8];
  v18 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  (*(v0[10] + 8))(v0[13], v0[9]);
  v6 = sub_2276637D0();
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v8 = sub_227469E40(sub_22720D4EC, v7, v6);

  v9 = v4[17];
  v17 = v4[16];
  __swift_project_boxed_opaque_existential_0(v4 + 13, v17);
  (*(v3 + 16))(v1, v5, v2);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v0[20] = v11;
  *(v11 + 16) = v4;
  (*(v3 + 32))(v11 + v10, v1, v2);
  *(v11 + ((v18 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  v12 = *(v9 + 24);

  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  v0[21] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC160, &qword_22767CCF0);
  *v13 = v0;
  v13[1] = sub_2271F88A0;

  return (v16)(v0 + 2, sub_22720D50C, v11, v14, v17, v9);
}

uint64_t sub_2271F88A0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2271F8AE4;
  }

  else
  {
    v2 = sub_2271F89D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271F89D4(uint64_t a1)
{
  v3 = v1[15];
  v2 = v1[16];
  v4 = v1[14];
  v5 = v1[2];
  v6 = sub_2276637D0();

  sub_22720D2A0(v6, v5);
  swift_bridgeObjectRelease_n();

  v7 = sub_226F491E8();
  (*(v3 + 8))(v2, v4);

  v8 = v1[1];

  return v8(v7);
}

uint64_t sub_2271F8AE4()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2271F8B88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v24[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC168, &qword_22767CCF8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v13 = *a2;
  v12 = a2[1];
  v14 = sub_227665F20();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v11, a1, v14);
  v16 = &v11[*(v6 + 56)];
  *v16 = v13;
  *(v16 + 1) = v12;
  sub_226E93170(v11, v8, &qword_27D7BC168, &qword_22767CCF8);

  v17 = sub_227667380();
  v19 = v18;

  if (v17 == sub_227668E50() && v19 == v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_22766D190();
  }

  sub_226E97D1C(v11, &qword_27D7BC168, &qword_22767CCF8);
  (*(v15 + 8))(v8, v14);
  return v22 & 1;
}

uint64_t sub_2271F8D84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v23 = a3;
  v24 = a4;
  v22 = a5;
  v8 = sub_2276627D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227663FA0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 224), *(a2 + 248));
  result = sub_226EAF48C(a1, v15);
  if (!v5)
  {
    sub_227668E40();
    sub_227663F70();
    v18 = v17;

    v19 = sub_226F491E8();
    v20 = sub_22727FE50(v11, v19, a1, v18);

    (*(v9 + 8))(v11, v8);
    result = (*(v13 + 8))(v15, v12);
    *v22 = v20;
  }

  return result;
}

char *sub_2271F8FC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v190 = a2;
  v189 = a3;
  v171 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1B0, qword_22767CD58);
  MEMORY[0x28223BE20](v5 - 8);
  v173 = &v161 - v6;
  v179 = sub_227667C40();
  v174 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v172 = &v161 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC168, &qword_22767CCF8);
  v181 = *(v10 - 8);
  v182 = v10;
  MEMORY[0x28223BE20](v10);
  v180 = &v161 - v11;
  v177 = sub_227666B60();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227663FA0();
  v183 = *(v13 - 8);
  v184 = v13;
  MEMORY[0x28223BE20](v13);
  v186 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276627D0();
  v187 = *(v15 - 8);
  v188 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227662930();
  v185 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v161 - v22;
  v24 = sub_2276638D0();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v191;
  result = sub_226E9B790(0, 1, a1);
  if (!v28)
  {
    v169 = 0;
    v191 = a1;
    v170 = v27;
    sub_22722AEAC(result, v23);

    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_226E97D1C(v23, &unk_27D7BB920, &unk_227672480);
      v30 = sub_227664EC0();
      sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D511A8], v30);
      return swift_willThrow();
    }

    else
    {
      (*(v25 + 32))(v170, v23, v24);
      v32 = v185;
      v33 = v18;
      (*(v185 + 104))(v20, *MEMORY[0x277CC9968], v18);
      v34 = sub_227663810();
      (*(v32 + 8))(v20, v33);
      v35 = __swift_project_boxed_opaque_existential_0((v190 + 424), *(v190 + 448));
      v36 = v17;
      sub_2276637C0();

      v37 = sub_226F491E8();
      __swift_project_boxed_opaque_existential_0(v35, v35[3]);
      v38 = v186;
      v39 = v191;
      v40 = v169;
      sub_226EAF48C(v191, v186);
      if (v40)
      {

        (*(v187 + 8))(v36, v188);
        return (*(v25 + 8))(v170, v24);
      }

      else
      {
        v189 = v25;
        v190 = v24;
        sub_227663F60();
        v42 = v41;
        (*(v183 + 8))(v38, v184);
        v186 = sub_22727227C(v36, v37, v39, v42);
        (*(v187 + 8))(v36, v188);

        v43 = __swift_project_boxed_opaque_existential_0(v39, v39[3]);
        v44 = *v43;
        v45 = v43[1];
        v46 = *(v43 + 16);
        v47 = v43[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
        v48 = swift_allocObject();
        v49 = v44;
        v50 = v45;

        sub_22766A070();
        *(v48 + 2) = v49;
        *(v48 + 3) = v50;
        v48[32] = v46;
        *(v48 + 5) = v47;
        swift_getKeyPath();
        swift_getKeyPath();

        v51 = sub_22720C6D8(v34, sub_22720D714);
        v188 = 0;
        v168 = v34;

        v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
        v194 = v51;
        v52 = sub_226F06498();

        v187 = v52;
        v53 = sub_22766C820();
        sub_226E93170(&v194, v192, &unk_27D7BC990, &qword_227670A30);
        v54 = v193;
        if (v193)
        {
          v55 = __swift_project_boxed_opaque_existential_0(v192, v193);
          v56 = *(v54 - 8);
          v57 = MEMORY[0x28223BE20](v55);
          v59 = &v161 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v56 + 16))(v59, v57);
          v60 = sub_22766D170();
          (*(v56 + 8))(v59, v54);
          __swift_destroy_boxed_opaque_existential_0(v192);
        }

        else
        {
          v60 = 0;
        }

        v61 = objc_opt_self();
        v62 = [v61 expressionForConstantValue_];
        swift_unknownObjectRelease();
        [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

        sub_226E97D1C(&v194, &unk_27D7BC990, &qword_227670A30);
        swift_beginAccess();
        v63 = sub_22766A080();
        v65 = v64;
        MEMORY[0x22AA985C0]();
        if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_69;
        }

        while (1)
        {
          sub_22766C3A0();
          (v63)(&v194, 0);
          swift_endAccess();

          v66 = v188;
          v67 = sub_226EE010C(100);
          if (v66)
          {

            swift_setDeallocating();

            v68 = qword_2813B2078;
            v69 = sub_22766A100();
            (*(*(v69 - 8) + 8))(&v48[v68], v69);
            swift_deallocClassInstance();

            return (*(v189 + 8))(v170, v190);
          }

          v70 = v67;
          swift_setDeallocating();

          v71 = qword_2813B2078;
          v72 = sub_22766A100();
          v73 = *(v72 - 8);
          v183 = *(v73 + 8);
          v184 = v72;
          v169 = v73 + 8;
          (v183)(&v48[v71]);
          swift_deallocClassInstance();
          v74 = sub_2271E452C(v70);

          if (*(v74 + 16))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9940, &qword_227674D80);
            v75 = sub_22766D010();
          }

          else
          {
            v75 = MEMORY[0x277D84F98];
          }

          v167 = v61;
          v194 = v75;

          sub_22720A5C8(v76, 1, &v194);

          v77 = v194;
          v78 = __swift_project_boxed_opaque_existential_0(v191, v191[3]);
          v79 = *v78;
          v80 = v78[1];
          v81 = *(v78 + 16);
          v82 = v78[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
          v48 = swift_allocObject();
          v83 = v79;
          v84 = v80;

          sub_22766A070();
          *(v48 + 2) = v83;
          *(v48 + 3) = v84;
          v48[32] = v81;
          *(v48 + 5) = v82;
          swift_getKeyPath();

          v86 = sub_2271E4844(v85);
          v87 = 0;
          v188 = v77;

          v88 = sub_226F3E6A8(v86);

          sub_227230638(v88);
          v90 = v89;

          v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
          v195 = v165;
          v194 = v90;

          v91 = sub_22766C820();
          sub_226E93170(&v194, v192, &unk_27D7BC990, &qword_227670A30);
          v92 = v193;
          if (v193)
          {
            v93 = __swift_project_boxed_opaque_existential_0(v192, v193);
            v94 = *(v92 - 8);
            v95 = MEMORY[0x28223BE20](v93);
            v97 = &v161 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v94 + 16))(v97, v95);
            v98 = sub_22766D170();
            (*(v94 + 8))(v97, v92);
            __swift_destroy_boxed_opaque_existential_0(v192);
          }

          else
          {
            v98 = 0;
          }

          v99 = [v167 expressionForConstantValue_];
          swift_unknownObjectRelease();
          [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1B8 qword_227688130))];

          sub_226E97D1C(&v194, &unk_27D7BC990, &qword_227670A30);
          swift_beginAccess();
          v63 = sub_22766A080();
          v101 = v100;
          MEMORY[0x22AA985C0]();
          if (*((*v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_72:
            sub_22766C360();
          }

          sub_22766C3A0();
          (v63)(&v194, 0);
          swift_endAccess();

          v102 = sub_226EB1A68(100);
          if (v87)
          {

            swift_setDeallocating();

            (v183)(&v48[qword_2813B2078], v184);
            swift_deallocClassInstance();

            return (*(v189 + 8))(v170, v190);
          }

          v103 = v102;
          swift_setDeallocating();

          (v183)(&v48[qword_2813B2078], v184);
          swift_deallocClassInstance();
          v104 = sub_2271E4B4C(v103);

          if (*(v104 + 16))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE0, &unk_227672B70);
            v105 = sub_22766D010();
          }

          else
          {
            v105 = MEMORY[0x277D84F98];
          }

          v194 = v105;
          sub_226F7E3E0(v104, 1, &v194);
          v162 = 0;
          v185 = v194;
          v106 = __swift_project_boxed_opaque_existential_0(v191, v191[3]);
          v107 = *v106;
          v108 = v106[1];
          v109 = *(v106 + 16);
          v110 = v106[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
          v111 = swift_allocObject();
          v112 = v107;
          v48 = v108;

          v63 = MEMORY[0x277D84F90];
          sub_22766A070();
          *(v111 + 16) = v112;
          *(v111 + 24) = v48;
          *(v111 + 32) = v109;
          v163 = v111;
          *(v111 + 40) = v110;
          KeyPath = swift_getKeyPath();
          v87 = v188 + 64;
          v113 = 1 << *(v188 + 32);
          v114 = -1;
          if (v113 < 64)
          {
            v114 = ~(-1 << v113);
          }

          v115 = v114 & *(v188 + 64);
          v116 = (v113 + 63) >> 6;
          v117 = v176;
          v191 = (v176 + 16);
          v166 = v176 + 8;
          swift_retain_n();
          v61 = 0;
          v118 = v177;
          while (v115)
          {
            v119 = v175;
LABEL_35:
            (*(v117 + 16))(v119, *(v188 + 56) + *(v117 + 72) * (__clz(__rbit64(v115)) | (v61 << 6)), v118);
            v48 = sub_227666AA0();
            (*(v117 + 8))(v119, v118);
            v121 = *(v48 + 2);
            v122 = *(v63 + 16);
            v123 = v122 + v121;
            if (__OFADD__(v122, v121))
            {
              __break(1u);
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v123 > *(v63 + 24) >> 1)
            {
              if (v122 <= v123)
              {
                v125 = v122 + v121;
              }

              else
              {
                v125 = v122;
              }

              v63 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v125, 1, v63);
            }

            v118 = v177;
            v117 = v176;
            v115 &= v115 - 1;
            if (*(v48 + 2))
            {
              if ((*(v63 + 24) >> 1) - *(v63 + 16) < v121)
              {
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                sub_22766C360();
                v140 = v174;
                goto LABEL_51;
              }

              swift_arrayInitWithCopy();

              if (v121)
              {
                v126 = *(v63 + 16);
                v127 = __OFADD__(v126, v121);
                v128 = v126 + v121;
                if (v127)
                {
                  goto LABEL_74;
                }

                *(v63 + 16) = v128;
              }
            }

            else
            {

              if (v121)
              {
                goto LABEL_71;
              }
            }
          }

          v119 = v175;
          while (1)
          {
            v120 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              __break(1u);
              goto LABEL_68;
            }

            if (v120 >= v116)
            {
              break;
            }

            v115 = *(v87 + 8 * v120);
            ++v61;
            if (v115)
            {
              v61 = v120;
              goto LABEL_35;
            }
          }

          v129 = sub_226F3E6A8(v63);

          sub_227230638(v129);
          v131 = v130;

          v195 = v165;
          v194 = v131;

          v132 = sub_22766C820();
          sub_226E93170(&v194, v192, &unk_27D7BC990, &qword_227670A30);
          v133 = v193;
          if (v193)
          {
            v134 = __swift_project_boxed_opaque_existential_0(v192, v193);
            v135 = *(v133 - 8);
            v136 = MEMORY[0x28223BE20](v134);
            v138 = &v161 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v135 + 16))(v138, v136);
            v139 = sub_22766D170();
            (*(v135 + 8))(v138, v133);
            __swift_destroy_boxed_opaque_existential_0(v192);
          }

          else
          {
            v139 = 0;
          }

          v116 = v173;
          v140 = v174;
          v115 = v182;
          v87 = v168;
          v61 = v163;
          v141 = [v167 expressionForConstantValue_];
          swift_unknownObjectRelease();
          [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9088 &unk_227672D70))];

          sub_226E97D1C(&v194, &unk_27D7BC990, &qword_227670A30);
          swift_beginAccess();
          v63 = sub_22766A080();
          v143 = v142;
          MEMORY[0x22AA985C0]();
          if (*((*v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_75;
          }

LABEL_51:
          sub_22766C3A0();
          (v63)(&v194, 0);
          swift_endAccess();

          v144 = swift_getKeyPath();
          v145 = swift_getKeyPath();
          v146 = v162;
          sub_226F7D81C(v144, v145);
          if (v146)
          {

            swift_setDeallocating();

            (v183)(v61 + qword_2813B2078, v184);
            swift_deallocClassInstance();

            return (*(v189 + 8))(v170, v190);
          }

          v148 = v147;

          swift_setDeallocating();

          (v183)(v61 + qword_2813B2078, v184);
          swift_deallocClassInstance();
          sub_2271E5D20(v148);
          v191 = v149;
          v169 = 0;

          v194 = v87;
          swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1C0, &unk_22767CE98);
          v63 = sub_226E9CFD0(&qword_27D7BC1C8, &qword_27D7BC1C0, &unk_22767CE98, MEMORY[0x277D83520]);
          sub_226EAC024(&qword_27D7BC1D0, MEMORY[0x277D51FE0], MEMORY[0x277D51FF0]);
          v48 = sub_22766C220();

          v187 = *(v48 + 2);
          if (!v187)
          {
            break;
          }

          v61 = 0;
          v184 = (v140 + 48);
          v150 = (v140 + 32);
          v151 = MEMORY[0x277D84F90];
          v153 = v180;
          v152 = v181;
          while (v61 < *(v48 + 2))
          {
            v63 = v116;
            v154 = v48;
            sub_226E93170(&v48[((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v61], v153, &qword_27D7BC168, &qword_22767CCF8);
            sub_2271FACB0(v153, *(v153 + *(v115 + 48)), *(v153 + *(v115 + 48) + 8), v188, v185, v191, v186, v116);
            sub_226E97D1C(v153, &qword_27D7BC168, &qword_22767CCF8);
            v155 = v179;
            if ((*v184)(v116, 1, v179) == 1)
            {
              sub_226E97D1C(v116, &qword_27D7BC1B0, qword_22767CD58);
              v115 = v182;
            }

            else
            {
              v156 = *v150;
              v157 = v172;
              (*v150)(v172, v116, v155);
              v156(v178, v157, v155);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v151 = sub_2273A69EC(0, v151[2] + 1, 1, v151);
              }

              v115 = v182;
              v159 = v151[2];
              v158 = v151[3];
              if (v159 >= v158 >> 1)
              {
                v160 = sub_2273A69EC((v158 > 1), v159 + 1, 1, v151);
                v115 = v182;
                v151 = v160;
              }

              v151[2] = v159 + 1;
              (v156)(v151 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v159, v178);
              v116 = v173;
            }

            ++v61;
            v153 = v180;
            v152 = v181;
            v48 = v154;
            if (v187 == v61)
            {
              goto LABEL_65;
            }
          }

LABEL_68:
          __break(1u);
LABEL_69:
          sub_22766C360();
        }

        v151 = MEMORY[0x277D84F90];
LABEL_65:

        result = (*(v189 + 8))(v170, v190);
        *v171 = v151;
      }
    }
  }

  return result;
}

uint64_t sub_2271FAC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_getAtKeyPath();

  return v4;
}

uint64_t sub_2271FACB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v126 = a7;
  v124 = a6;
  v131 = a5;
  v139 = a8;
  v140 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  MEMORY[0x28223BE20](v11 - 8);
  v127 = v123 - v12;
  v141 = sub_227665F20();
  v138 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v14 = v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v130 = v123 - v16;
  MEMORY[0x28223BE20](v17);
  v125 = v123 - v18;
  v19 = sub_22766B390();
  v136 = *(v19 - 8);
  v137 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v123 - v23;
  MEMORY[0x28223BE20](v25);
  v128 = v123 - v26;
  v27 = sub_227666B60();
  v134 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v123 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v123 - v34;
  v132 = a2;
  v135 = a3;
  v36 = sub_227667380();
  if (!*(a4 + 16))
  {

    goto LABEL_10;
  }

  v133 = v35;
  v129 = v27;
  v38 = sub_226E92000(v36, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
LABEL_10:
    sub_22766A630();
    v63 = v138;
    v64 = v141;
    (*(v138 + 16))(v14, v140, v141);

    v65 = sub_22766B380();
    v66 = sub_22766C890();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v142[0] = v68;
      *v67 = 136315394;
      v69 = sub_227667390();
      v71 = sub_226E97AE8(v69, v70, v142);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      sub_226EAC024(&qword_27D7BC1D8, MEMORY[0x277D51FE0], MEMORY[0x277D52000]);
      v72 = sub_22766D140();
      v74 = v73;
      (*(v63 + 8))(v14, v64);
      v75 = sub_226E97AE8(v72, v74, v142);

      *(v67 + 14) = v75;
      _os_log_impl(&dword_226E8E000, v65, v66, "Couldn't find CatalogWorkoutReference %s for plan item %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v68, -1, -1);
      MEMORY[0x22AA9A450](v67, -1, -1);
    }

    else
    {

      (*(v63 + 8))(v14, v64);
    }

    (*(v136 + 8))(v21, v137);
    goto LABEL_14;
  }

  v41 = v134[2];
  v42 = v129;
  v41(v133, *(a4 + 56) + v134[9] * v38);
  v43 = sub_227666A90();
  v45 = v131;
  if (!*(v131 + 16))
  {

    v49 = v24;
LABEL_17:
    sub_22766A630();
    v79 = v133;
    (v41)(v29, v133, v42);
    v80 = v138;
    v81 = v130;
    v82 = v141;
    (*(v138 + 16))(v130, v140, v141);
    v140 = v49;
    v83 = sub_22766B380();
    v84 = sub_22766C890();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v142[0] = v135;
      *v85 = 136315394;
      v86 = sub_227666A90();
      v87 = v42;
      v89 = v88;
      v90 = v134[1];
      v90(v29, v87);
      v91 = sub_226E97AE8(v86, v89, v142);

      *(v85 + 4) = v91;
      *(v85 + 12) = 2080;
      sub_226EAC024(&qword_27D7BC1D8, MEMORY[0x277D51FE0], MEMORY[0x277D52000]);
      v92 = v141;
      v93 = sub_22766D140();
      v95 = v94;
      (*(v80 + 8))(v81, v92);
      v96 = sub_226E97AE8(v93, v95, v142);

      *(v85 + 14) = v96;
      _os_log_impl(&dword_226E8E000, v83, v84, "Couldn't find CatalogModalityReference %s for plan item %s", v85, 0x16u);
      v97 = v135;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v97, -1, -1);
      MEMORY[0x22AA9A450](v85, -1, -1);

      (*(v136 + 8))(v140, v137);
      v90(v133, v129);
    }

    else
    {

      (*(v80 + 8))(v81, v82);
      v98 = v134[1];
      v98(v29, v42);
      (*(v136 + 8))(v140, v137);
      v98(v79, v42);
    }

LABEL_14:
    v76 = 1;
    v57 = v139;
    goto LABEL_15;
  }

  v46 = sub_226E92000(v43, v44);
  v48 = v47;

  v49 = v24;
  if ((v48 & 1) == 0)
  {
    goto LABEL_17;
  }

  v50 = *(v45 + 56) + 24 * v46;
  v51 = *v50;
  v52 = *(v50 + 16);
  v130 = *(v50 + 8);
  v131 = v51;
  v123[3] = v52;
  sub_226EB396C(v51, v130, v52);
  v53 = sub_227666AA0();
  if (v53[2])
  {
    v54 = v53[4];
    v55 = v53[5];

    v56 = v124;
    v58 = v138;
    v57 = v139;
    v59 = v128;
    if (*(v124 + 16))
    {
      v60 = sub_226E92000(v54, v55);
      if (v61)
      {
        v62 = *(*(v56 + 56) + 16 * v60);

        goto LABEL_26;
      }
    }
  }

  else
  {

    v58 = v138;
    v57 = v139;
    v59 = v128;
  }

  sub_22766A630();
  (v41)(v32, v133, v42);
  v99 = v125;
  v100 = v141;
  (*(v58 + 16))(v125, v140, v141);
  v101 = sub_22766B380();
  v102 = sub_22766C890();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v142[0] = v139;
    *v103 = 136315394;
    LODWORD(v138) = v102;
    sub_227666AA0();
    v104 = MEMORY[0x22AA98660]();
    v106 = v105;

    (v134[1])(v32, v129);
    v107 = sub_226E97AE8(v104, v106, v142);

    *(v103 + 4) = v107;
    *(v103 + 12) = 2080;
    sub_226EAC024(&qword_27D7BC1D8, MEMORY[0x277D51FE0], MEMORY[0x277D52000]);
    v108 = sub_22766D140();
    v110 = v109;
    (*(v58 + 8))(v99, v100);
    v111 = sub_226E97AE8(v108, v110, v142);

    *(v103 + 14) = v111;
    _os_log_impl(&dword_226E8E000, v101, v138, "Couldn't find TrainerReference %s for plan item %s", v103, 0x16u);
    v112 = v139;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v112, -1, -1);
    MEMORY[0x22AA9A450](v103, -1, -1);

    (*(v136 + 8))(v128, v137);
  }

  else
  {

    (*(v58 + 8))(v99, v100);
    (v134[1])(v32, v42);
    (*(v136 + 8))(v59, v137);
  }

  v62 = 0;
LABEL_26:
  sub_227667380();
  v113 = v126;
  v114 = v127;
  if (*(v126 + 16) && (v115 = sub_226F3A6FC(v140), (v116 & 1) != 0))
  {
    v117 = v115;
    v118 = *(v113 + 56);
    v119 = sub_227664530();
    v141 = v62;
    v120 = v119;
    v121 = *(v119 - 8);
    (*(v121 + 16))(v114, v118 + *(v121 + 72) * v117, v119);
    (*(v121 + 56))(v114, 0, 1, v120);
  }

  else
  {
    v122 = sub_227664530();
    (*(*(v122 - 8) + 56))(v114, 1, 1, v122);
  }

  sub_226E97D1C(v114, &qword_27D7B8E60, &unk_2276724B0);
  sub_227667C30();
  (v134[1])(v133, v129);
  v76 = 0;
LABEL_15:
  v77 = sub_227667C40();
  return (*(*(v77 - 8) + 56))(v57, v76, 1, v77);
}

uint64_t sub_2271FB980(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_227667370();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_2276638D0();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_22766B390();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FBAFC, 0, 0);
}

uint64_t sub_2271FBAFC(uint64_t a1)
{
  v3 = v1[16];
  v2 = v1[17];
  v4 = v1[15];
  v5 = v1[8];
  sub_22766A630();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v1[18] = v5[52];
  v1[2] = sub_22720C954();
  v1[3] = v6;
  v1[19] = v6;
  v1[4] = sub_227668740();
  v1[5] = v7;
  v1[20] = v7;
  sub_227668730();
  v1[21] = sub_227668750();
  v8 = v5[16];
  v9 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v8);
  v10 = *(v9 + 24);

  v16 = (v10 + *v10);
  v11 = swift_task_alloc();
  v1[22] = v11;
  *v11 = v1;
  v11[1] = sub_2271FBCF8;
  v12 = v1[11];
  v13 = v1[8];
  v14 = v1[9];

  return (v16)(v12, sub_22720CAF4, v13, v14, v8, v9);
}

uint64_t sub_2271FBCF8()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v4 = v2[13];
    v3 = v2[14];
    v5 = v2[12];

    (*(v4 + 8))(v3, v5);

    return MEMORY[0x2822009F8](sub_2271FC190, 0, 0);
  }

  else
  {
    v6 = v2[4];
    v7 = v2[2];

    v8 = swift_task_alloc();
    v2[24] = v8;
    *v8 = v2;
    v8[1] = sub_2271FBEFC;
    v9 = v2[20];
    v10 = v2[21];
    v11 = v2[19];
    v12 = v2[14];
    v13 = v2[11];
    v14 = v2[6];

    return sub_227047060(v14, v7, v11, v6, v9, v12, v10, v13);
  }
}

uint64_t sub_2271FBEFC()
{
  v10 = *(*v1 + 112);
  v2 = *(*v1 + 104);
  v9 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v10, v9);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271FC214, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_2271FC190()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271FC214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271FC298(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766A170();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_227669D60();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_227668430();
  v3[11] = v6;
  v7 = *(v6 - 8);
  v3[12] = v7;
  v3[13] = *(v7 + 64);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FC41C, 0, 0);
}

uint64_t sub_2271FC41C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v5[16];
  v7 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v6);
  (*(v3 + 16))(v1, v4, v2);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[15] = v9;
  *(v9 + 16) = v5;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = *(v7 + 24);

  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[16] = v11;
  v12 = sub_2276638D0();
  *v11 = v0;
  v11[1] = sub_2271FC608;
  v13 = v0[2];

  return v15(v13, sub_22720CCE0, v9, v12, v6, v7);
}

uint64_t sub_2271FC608()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2271FC8C4;
  }

  else
  {

    v2 = sub_2271FC724;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271FC724()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v11 = v0[6];
  v10 = v0[5];
  v5 = v0[4];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v4);
  __swift_project_boxed_opaque_existential_0((v5 + 40), *(v5 + 64));
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v11 + 8))(v3, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2271FC8C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271FC950@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227665F20();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2276627D0();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_2276638D0();
  v32 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a2 + 18, a2[21]);
  sub_227668420();
  v34 = a1;
  v15 = v35;
  sub_22714E27C(v11, a1, v14);
  if (v15)
  {
    return v36[1](v11, v37);
  }

  v28 = v8;
  v17 = v36[1];
  v35 = v12;
  v36 = v17;
  (v17)(v11, v37);
  v18 = v29;
  sub_227668400();
  sub_227668410();
  v19 = v33;
  sub_2276638A0();

  (*(v30 + 8))(v18, v31);
  sub_22727EB5C(v19, v34);
  v31 = *__swift_project_boxed_opaque_existential_0(a2 + 5, a2[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_227670CD0;
  v21 = v28;
  sub_2276637C0();
  sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v22 = v37;
  v23 = sub_22766D140();
  v25 = v24;
  (v36)(v21, v22);
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  sub_2272D7E08(0, v20, v34);
  v26 = v32;

  return (*(v26 + 8))(v14, v35);
}

uint64_t sub_2271FCD9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A170();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227669D60();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_2276627D0();
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v2[12] = *(v6 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v7 = sub_22766B390();
  v2[15] = v7;
  v2[16] = *(v7 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FCF84, 0, 0);
}

uint64_t sub_2271FCF84(uint64_t a1)
{
  v38 = v1;
  v2 = v1[14];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[2];
  sub_22766A630();
  v35 = *(v4 + 16);
  v35(v2, v5, v3);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[16];
  v9 = v1[17];
  v11 = v1[14];
  v12 = v1[15];
  v14 = v1[10];
  v13 = v1[11];
  if (v8)
  {
    v34 = v1[15];
    v15 = swift_slowAlloc();
    v32 = v7;
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315138;
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22766D140();
    v33 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_226E97AE8(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v6, v32, "Deleting Workout Plan: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v10 + 8))(v33, v34);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = v1[13];
  v22 = v1[10];
  v23 = v1[11];
  v24 = v1[2];
  v25 = v1[3];
  v26 = v25[17];
  __swift_project_boxed_opaque_existential_0(v25 + 13, v25[16]);
  v35(v21, v24, v22);
  v27 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v28 = swift_allocObject();
  v1[18] = v28;
  *(v28 + 16) = v25;
  (*(v23 + 32))(v28 + v27, v21, v22);
  v29 = *(v26 + 24);

  v36 = (v29 + *v29);
  v30 = swift_task_alloc();
  v1[19] = v30;
  *v30 = v1;
  v30[1] = sub_2271FD318;

  return v36();
}

uint64_t sub_2271FD318()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2271FD5EC;
  }

  else
  {

    v2 = sub_2271FD434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271FD434()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v5 = v0[3];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v4);
  __swift_project_boxed_opaque_existential_0((v5 + 40), *(v5 + 64));
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v11 + 8))(v3, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2271FD5EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271FD694(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669D60();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_2276627D0();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[12] = v6;
  v2[13] = *(v6 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FD820, 0, 0);
}

uint64_t sub_2271FD820(uint64_t a1)
{
  v38 = v1;
  v2 = v1[11];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[2];
  sub_22766A630();
  v35 = *(v4 + 16);
  v35(v2, v5, v3);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[13];
  v9 = v1[14];
  v11 = v1[11];
  v12 = v1[12];
  v14 = v1[7];
  v13 = v1[8];
  if (v8)
  {
    v34 = v1[12];
    v15 = swift_slowAlloc();
    v32 = v7;
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315138;
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22766D140();
    v33 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_226E97AE8(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v6, v32, "Deleting Workout Plan Template: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v10 + 8))(v33, v34);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = v1[10];
  v22 = v1[7];
  v23 = v1[8];
  v24 = v1[2];
  v25 = v1[3];
  v26 = v25[17];
  __swift_project_boxed_opaque_existential_0(v25 + 13, v25[16]);
  v35(v21, v24, v22);
  v27 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v28 = swift_allocObject();
  v1[15] = v28;
  *(v28 + 16) = v25;
  (*(v23 + 32))(v28 + v27, v21, v22);
  v29 = *(v26 + 24);

  v36 = (v29 + *v29);
  v30 = swift_task_alloc();
  v1[16] = v30;
  *v30 = v1;
  v30[1] = sub_2271FDBB4;

  return v36();
}

uint64_t sub_2271FDBB4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2271FDE24;
  }

  else
  {

    v2 = sub_2271FDCD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}