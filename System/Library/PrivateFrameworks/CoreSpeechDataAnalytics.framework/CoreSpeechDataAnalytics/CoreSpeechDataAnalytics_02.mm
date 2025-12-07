void sub_24790B3A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v2 - 8);
  v110 = &v88 - v3;
  v4 = &qword_27EE572D0;
  v5 = &unk_2479504E0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v88 - v7;
  v100 = sub_24794EBB4();
  v9 = *(v100 - 8);
  v10 = MEMORY[0x28223BE20](v100);
  v89 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v88 - v12;
  v13 = sub_24794EC04();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v115 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v114 = &v88 - v18;
  MEMORY[0x28223BE20](v17);
  v107 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57468, &qword_247951058);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v103 = &v88 - v24;
  v25 = *(a1 + 64);
  v105 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  v91 = MEMORY[0x277D84F90];
  v122 = MEMORY[0x277D84F90];
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v104 = (v26 + 63) >> 6;
  v108 = (v14 + 16);
  v113 = (v14 + 32);
  v97 = (v9 + 48);
  v94 = (v9 + 32);
  v109 = (v14 + 48);
  v98 = v14;
  v111 = (v14 + 8);
  v88 = (v9 + 16);
  v93 = (v9 + 8);
  v99 = a1;

  v29 = 0;
  v120 = v13;
  v106 = v23;
  v102 = v8;
LABEL_4:
  v30 = v105;
  v31 = v104;
  while (v28)
  {
    v32 = v4;
    v33 = v5;
    v34 = v29;
LABEL_17:
    v37 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v38 = v37 | (v34 << 6);
    v39 = v99;
    v40 = v98;
    v41 = v107;
    (*(v98 + 16))(v107, *(v99 + 48) + *(v98 + 72) * v38, v13);
    v42 = *(*(v39 + 56) + 8 * v38);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
    v44 = v13;
    v45 = v43;
    v46 = *(v43 + 48);
    v47 = *(v40 + 32);
    v23 = v106;
    v47(v106, v41, v44);
    *&v23[v46] = v42;
    (*(*(v45 - 8) + 56))(v23, 0, 1, v45);

LABEL_18:
    v48 = v103;
    sub_24790C0BC(v23, v103);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {

      return;
    }

    v50 = *(v48 + *(v49 + 48));
    v51 = v48;
    v13 = v120;
    v101 = *v113;
    v101(v114, v51, v120);
    if (v50 >> 62)
    {
      v52 = sub_24794F414();
    }

    else
    {
      v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v115;
    v5 = v33;
    v4 = v32;
    v54 = v102;
    v118 = v52;
    if (!v52)
    {

      goto LABEL_6;
    }

    v121 = v50 & 0xC000000000000001;
    if ((v50 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x24C1AE890](0, v50);
    }

    else
    {
      if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v55 = *(v50 + 32);
    }

    v56 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_date;
    swift_beginAccess();
    sub_2478E9680(v55 + v56, v54, v4, v5);
    v57 = v100;
    if ((*v97)(v54, 1, v100) == 1)
    {

      sub_2478E9620(v54, v4, v5);
      v13 = v120;
      goto LABEL_6;
    }

    v95 = v55;
    v58 = *v94;
    (*v94)(v96, v54, v57);
    v59 = v118;
    if (v118 < 1)
    {
      goto LABEL_72;
    }

    v92 = v58;
    v116 = 0;
    v117 = 0;
    v60 = 0;
    v112 = 0;
    v61 = 0;
    v62 = 0;
    do
    {
      if (v121)
      {
        v63 = MEMORY[0x24C1AE890](v62, v50);
      }

      else
      {
        v63 = *(v50 + 8 * v62 + 32);
      }

      if (*(v63 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource + 4))
      {
LABEL_29:

        goto LABEL_30;
      }

      v64 = *(v63 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_invocationSource);
      if (v64 > 78)
      {
        if (v64 == 79)
        {
          v66 = __OFADD__(v116++, 1);
          if (v66)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v64 != 80)
          {
            goto LABEL_29;
          }

          v66 = __OFADD__(v117++, 1);
          if (v66)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if (v64 != 17 && v64 != 25)
        {
          goto LABEL_29;
        }

        v66 = __OFADD__(v60++, 1);
        if (v66)
        {
          goto LABEL_68;
        }
      }

      if (v61)
      {
        goto LABEL_29;
      }

      v119 = v60;
      v67 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics17SiriRequestRecord_requestId;
      swift_beginAccess();
      v68 = v110;
      sub_2478E9680(v63 + v67, v110, &qword_27EE57278, &unk_247950590);
      v69 = v120;
      if ((*v109)(v68, 1, v120))
      {

        sub_2478E9620(v68, &qword_27EE57278, &unk_247950590);
        v112 = 0;
        v61 = 0;
      }

      else
      {
        v70 = v107;
        (*v108)(v107, v68, v69);
        sub_2478E9620(v68, &qword_27EE57278, &unk_247950590);
        v112 = sub_24794EBD4();
        v61 = v71;

        (*v111)(v70, v69);
      }

      v53 = v115;
      v59 = v118;
      v60 = v119;
LABEL_30:
      ++v62;
    }

    while (v59 != v62);
    v5 = &unk_2479504E0;
    if (v60 || v117 || v116)
    {
      v73 = v89;
      v74 = v96;
      v75 = v100;
      (*v88)(v89, v96, v100);
      v76 = v120;
      (*v108)(v53, v114, v120);
      v77 = [*(v90 + 16) locale];
      if (!v77)
      {
        goto LABEL_73;
      }

      v78 = v77;

      v121 = sub_24794EF04();
      v119 = v79;

      (*v93)(v74, v75);
      type metadata accessor for SiriSession(0);
      v80 = swift_allocObject();
      v92(v80 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_date, v73, v75);
      v81 = (v80 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo);
      v83 = v116;
      v82 = v117;
      *v81 = v60;
      v81[1] = v82;
      v84 = v112;
      v81[2] = v83;
      v81[3] = v84;
      v81[4] = v61;
      v101((v80 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_sessionClockId), v115, v76);
      v85 = (v80 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
      v86 = v119;
      *v85 = v121;
      v85[1] = v86;

      MEMORY[0x24C1AE560](v87);
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24794F084();
      }

      sub_24794F0A4();

      (*v111)(v114, v76);
      v91 = v122;
      v4 = &qword_27EE572D0;
      v5 = &unk_2479504E0;
      v13 = v76;
      v23 = v106;
      goto LABEL_4;
    }

    (*v93)(v96, v100);
    v4 = &qword_27EE572D0;
    v13 = v120;
    v23 = v106;
LABEL_6:
    (*v111)(v114, v13);
    v30 = v105;
    v31 = v104;
  }

  if (v31 <= v29 + 1)
  {
    v35 = v29 + 1;
  }

  else
  {
    v35 = v31;
  }

  v36 = v35 - 1;
  while (1)
  {
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
      v32 = v4;
      v33 = v5;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57470, &unk_247951060);
      (*(*(v72 - 8) + 56))(v23, 1, 1, v72);
      v28 = 0;
      v29 = v36;
      goto LABEL_18;
    }

    v28 = *(v30 + 8 * v34);
    ++v29;
    if (v28)
    {
      v32 = v4;
      v33 = v5;
      v29 = v34;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_24790BFE0()
{

  return swift_deallocClassInstance();
}

uint64_t (*sub_24790C03C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1AE890](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_24790C20C;
  }

  __break(1u);
  return result;
}

uint64_t sub_24790C0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57468, &qword_247951058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_24790C12C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1AE890](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_24790C1AC;
  }

  __break(1u);
  return result;
}

unint64_t sub_24790C1B4()
{
  result = qword_27EE57250;
  if (!qword_27EE57250)
  {
    sub_24794EC04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57250);
  }

  return result;
}

uint64_t sub_24790C240()
{
  v33 = v0;
  v1 = *(v0[2] + 64);
  v0[3] = v1;
  if (!(*(**(v1 + 16) + 392))())
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);
    v13 = sub_24794ED14();
    v14 = sub_24794F164();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2478E1000, v13, v14, "#SpkrIdOneSessionActionEvent: cannot find storedSession to generate final manifest", v15, 2u);
      MEMORY[0x24C1AF180](v15, -1, -1);
    }

    sub_24790E750();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    goto LABEL_12;
  }

  v3 = (*(**(v1 + 16) + 376))(v2);
  v0[4] = v3;
  if (!v3)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = sub_24794ED14();
    v20 = sub_24794F164();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2478E1000, v19, v20, "#SpkrIdOneSessionActionEvent: cannot find enrollmentMetadata to generate enrollment metadata", v21, 2u);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

    sub_24790E750();
    swift_allocError();
    *v22 = xmmword_247951070;
LABEL_12:
    swift_willThrow();
    v17 = *(v1 + 48);
    goto LABEL_23;
  }

  v4 = sub_24794EBD4();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = sub_24794EEF4();
  v9 = [v7 getVoiceProfileWithVoiceProfileId_];
  v0[5] = v9;

  if (v9)
  {

    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_24790C8A8;

    return sub_24790CCD4(v9);
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v23 = sub_24794ED34();
  __swift_project_value_buffer(v23, qword_27EE58DF8);

  v24 = sub_24794ED14();
  v25 = sub_24794F164();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_247924380(v4, v6, &v32);
    _os_log_impl(&dword_2478E1000, v24, v25, "Cannot get voice profile with id: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x24C1AF180](v27, -1, -1);
    MEMORY[0x24C1AF180](v26, -1, -1);
  }

  sub_24790E750();
  swift_allocError();
  *v28 = v4;
  v28[1] = v6;
  swift_willThrow();

  v17 = *(v1 + 48);
LABEL_23:
  v29 = *(v17 + 16);
  v30 = sub_24794EEF4();

  [v29 removeObjectForKey_];

  v31 = v0[1];

  return v31();
}

uint64_t sub_24790C8A8(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_24790C9A8, 0, 0);
}

uint64_t sub_24790C9A8()
{
  v1 = v0[7];
  if (v1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v2 = sub_24794ED34();
    __swift_project_value_buffer(v2, qword_27EE58DF8);
    v3 = sub_24794ED14();
    v4 = sub_24794F144();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2478E1000, v3, v4, "#SpkrIdSamplingOneSessionActionEvent: generating manifest event for upload", v5, 2u);
      MEMORY[0x24C1AF180](v5, -1, -1);
    }

    if (qword_27EE571E8 != -1)
    {
      swift_once();
    }

    v6 = v0[5];
    v7 = v0[3];
    sub_247939A88(v1);

    v11 = *(*(v7 + 48) + 16);
    v12 = sub_24794EEF4();

    [v11 removeObjectForKey_];

    v13 = v0[1];
  }

  else
  {
    v8 = v0[5];
    v9 = v0[3];
    sub_24790E750();
    swift_allocError();
    *v10 = xmmword_247951080;
    swift_willThrow();

    v14 = *(*(v9 + 48) + 16);
    v15 = sub_24794EEF4();

    [v14 removeObjectForKey_];

    v13 = v0[1];
  }

  return v13();
}

uint64_t sub_24790CCD4(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24790CCF4, 0, 0);
}

uint64_t sub_24790CCF4()
{
  v2 = v0[7];
  v1 = v0[8];
  type metadata accessor for EnrollmentProfileDataGenerator();
  v7 = *(v1 + 48);
  inited = swift_initStackObject();
  v0[9] = inited;
  *(inited + 16) = v2;
  *(inited + 24) = v7;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_24790CDC0;

  return sub_247930460();
}

uint64_t sub_24790CDC0(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_24790CEC0, 0, 0);
}

uint64_t sub_24790CEC0()
{
  if (!v0[11])
  {
    goto LABEL_20;
  }

  v1 = sub_24792EF34();
  if (!v1)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v3 = sub_24794ED34();
    __swift_project_value_buffer(v3, qword_27EE58DF8);
    v4 = sub_24794ED14();
    v5 = sub_24794F164();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2478E1000, v4, v5, "#SpkrIdSamplingOneSessionActionEvent: Cannot get enrollmentProfile event for upload", v6, 2u);
      MEMORY[0x24C1AF180](v6, -1, -1);
    }

    goto LABEL_19;
  }

  v2 = v1;
  if (!(*(**(*(v0[8] + 64) + 16) + 392))() || (v7 = sub_2479489B8(), , !v7))
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);
    v4 = sub_24794ED14();
    v13 = sub_24794F164();
    if (os_log_type_enabled(v4, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2478E1000, v4, v13, "#SpkrIdSamplingOneSessionActionEvent: Cannot get session event for upload", v14, 2u);
      MEMORY[0x24C1AF180](v14, -1, -1);
    }

LABEL_19:

LABEL_20:

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D58910]) init];
  if (!v8)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v18 = sub_24794ED34();
    __swift_project_value_buffer(v18, qword_27EE58DF8);
    v19 = sub_24794ED14();
    v20 = sub_24794F164();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2478E1000, v19, v20, "#SpkrIdSamplingOneSessionActionEvent: Cannot create sample session report", v21, 2u);
      MEMORY[0x24C1AF180](v21, -1, -1);
    }

    goto LABEL_21;
  }

  v9 = v8;
  v10 = sub_24794EEF4();
  v11 = MGGetStringAnswer();

  if (v11)
  {
    sub_24794EF04();
  }

  [v9 setEnrollmentData_];
  [v9 setClockSessionInfo_];
  v22 = sub_24794EEF4();

  [v9 setSystemBuild_];

  v15 = v9;
LABEL_22:
  v16 = v0[1];

  return v16(v15);
}

void sub_24790D458(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24794EBB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v84 - v11;
  v13 = sub_24794EC04();
  v14 = *(v13 - 8);
  v90 = v13;
  v91 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v84 - v18;
  v19 = sub_24790A4C4(a1);
  sub_24790B3A0(v19);
  v21 = v20;

  v22 = sub_247911158(v21);

  if (v22)
  {
    v24 = *(v3 + 64);
    v34 = (*(**(v24 + 16) + 392))(v23);
    v86 = v24;
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v35 = sub_24794ED34();
    v36 = __swift_project_value_buffer(v35, qword_27EE58DF8);

    v37 = sub_24794ED14();
    v38 = sub_24794F144();

    if (os_log_type_enabled(v37, v38))
    {
      v87 = v36;
      v39 = v22;
      v40 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v92 = v84;
      *v40 = 136315394;
      v88 = v34;
      LODWORD(v85) = v38;
      if (v34)
      {
        sub_24794879C();
      }

      else
      {
        sub_24794D0D4(MEMORY[0x277D84F90]);
      }

      v41 = sub_24794EE94();
      v43 = v42;

      v44 = sub_247924380(v41, v43, &v92);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      sub_24794879C();
      v45 = sub_24794EE94();
      v47 = v46;

      v48 = sub_247924380(v45, v47, &v92);

      *(v40 + 14) = v48;
      _os_log_impl(&dword_2478E1000, v37, v85, "stored session: %s, selected session: %s", v40, 0x16u);
      v49 = v84;
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v49, -1, -1);
      v50 = v40;
      v22 = v39;
      MEMORY[0x24C1AF180](v50, -1, -1);

      v36 = v87;
      v34 = v88;
    }

    else
    {
    }

    v51 = [*(*(v3 + 32) + 16) getVoiceProfile];
    if (!v51)
    {
      goto LABEL_25;
    }

    v52 = v51;
    v53 = [v51 profileID];
    if (!v53)
    {

      goto LABEL_25;
    }

    v85 = v22;
    v54 = v53;
    sub_24794EF04();

    sub_24794EBC4();

    v56 = v90;
    v55 = v91;
    if ((*(v91 + 48))(v12, 1, v90) == 1)
    {

      sub_2478E9620(v12, &qword_27EE57278, &unk_247950590);
LABEL_25:
      v72 = sub_24794ED14();
      v73 = sub_24794F164();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_2478E1000, v72, v73, "#SpkrIdOneSessionActionEvent: No voiceProfileId UUID can be found", v74, 2u);
        MEMORY[0x24C1AF180](v74, -1, -1);
      }

      return;
    }

    v88 = v34;
    v57 = *(v55 + 32);
    v58 = v89;
    v57(v89, v12, v56);
    v59 = [v52 locale];
    if (!v59)
    {
      (*(v55 + 8))(v58, v56);

      goto LABEL_25;
    }

    v87 = v36;
    v60 = v55;
    v61 = v59;
    v62 = v56;
    v84 = sub_24794EF04();
    v63 = v58;
    v65 = v64;

    (*(v60 + 16))(v17, v63, v62);
    type metadata accessor for EnrollmentMetadata(0);
    v66 = swift_allocObject();
    v57((v66 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_voiceProfileId), v17, v62);
    v67 = (v66 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale);
    v68 = v84;
    *v67 = v84;
    v67[1] = v65;

    v69 = v85;
    LOBYTE(v68) = sub_24790E2FC(v85, v88, v68, v65);

    if (v68)
    {
      v70 = v86;
      v71 = *(**(v86 + 16) + 400);

      v71(v69);

      sub_247940408();

      v78 = *(**(v70 + 16) + 384);

      v78(v66);

      sub_247940408();

      v79 = sub_24794ED14();
      v80 = sub_24794F144();
      v81 = os_log_type_enabled(v79, v80);
      v82 = v89;
      if (v81)
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_2478E1000, v79, v80, "#SpkrIdOneSessionActionEvent: Successfully stored better session and enrollment metadata", v83, 2u);
        MEMORY[0x24C1AF180](v83, -1, -1);
      }

      else
      {
      }

      (*(v91 + 8))(v82, v90);
    }

    else
    {
      v75 = sub_24794ED14();
      v76 = sub_24794F144();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_2478E1000, v75, v76, "#SpkrIdOneSessionActionEvent: Selected session should not replace stored session", v77, 2u);
        MEMORY[0x24C1AF180](v77, -1, -1);
      }

      else
      {
      }

      (*(v91 + 8))(v89, v90);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v25 = sub_24794ED34();
    __swift_project_value_buffer(v25, qword_27EE58DF8);
    (*(v7 + 16))(v9, a2, v6);
    v26 = sub_24794ED14();
    v27 = sub_24794F144();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v92 = v29;
      *v28 = 136315138;
      sub_2478EC590();
      v30 = sub_24794F4D4();
      v32 = v31;
      (*(v7 + 8))(v9, v6);
      v33 = sub_247924380(v30, v32, &v92);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2478E1000, v26, v27, "#SpkrIdOneSessionActionEvent: No session from the date: %s is selected", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1AF180](v29, -1, -1);
      MEMORY[0x24C1AF180](v28, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_24790E1CC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24790E26C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2478E8998;

  return sub_24790C220();
}

BOOL sub_24790E2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v6 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
  v7 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale + 8);
  if (v6 == a3 && v7 == a4)
  {
    v16 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
    v15 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale + 8);
    v20 = v16 == a3 && v15 == a4;
    if (v20 || (sub_24794F4E4() & 1) != 0)
    {
LABEL_24:
      v28 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo);
      v29 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 8);
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        v32 = *(a1 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 16);
        v30 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (!v30)
        {
          v34 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo);
          v35 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 8);
          v30 = __OFADD__(v34, v35);
          v36 = v34 + v35;
          if (!v30)
          {
            v37 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 16);
            v30 = __OFADD__(v36, v37);
            v38 = v36 + v37;
            if (!v30)
            {
              if (v33 == v38)
              {
                return v28 < v34;
              }

              else
              {
                return v38 < v33;
              }
            }

            goto LABEL_43;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_19:
    v21 = qword_27EE571C0;

    if (v21 == -1)
    {
LABEL_20:
      v22 = sub_24794ED34();
      __swift_project_value_buffer(v22, qword_27EE58DF8);

      v23 = sub_24794ED14();
      v24 = sub_24794F144();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v47 = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_247924380(v6, v7, &v47);
        *(v25 + 12) = 2080;

        v27 = sub_247924380(v16, v15, &v47);

        *(v25 + 14) = v27;
        _os_log_impl(&dword_2478E1000, v23, v24, "#SpkrIdOneSessionActionEvent: Selected session locale (%s) matches current locale, stored session locale (%s) is outdated", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1AF180](v26, -1, -1);
        MEMORY[0x24C1AF180](v25, -1, -1);
      }

      return 1;
    }

LABEL_44:
    swift_once();
    goto LABEL_20;
  }

  v11 = sub_24794F4E4();
  v12 = a3;
  v13 = a4;
  v14 = v11;
  v16 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale);
  v15 = *(a2 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_locale + 8);
  if (v16 == v12 && v15 == v13)
  {
    if (v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v18 = sub_24794F4E4();
    if (v14)
    {
      if (v18)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v40 = qword_27EE571C0;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_24794ED34();
  __swift_project_value_buffer(v41, qword_27EE58DF8);

  v42 = sub_24794ED14();
  v43 = sub_24794F144();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v44 = 136315394;

    v46 = sub_247924380(v16, v15, &v47);

    *(v44 + 4) = v46;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_247924380(v6, v7, &v47);
    _os_log_impl(&dword_2478E1000, v42, v43, "#SpkrIdOneSessionActionEvent: Stored session locale (%s) matches current locale, selected session locale (%s) doesn't match - keeping stored session", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v45, -1, -1);
    MEMORY[0x24C1AF180](v44, -1, -1);
  }

  return 0;
}

unint64_t sub_24790E750()
{
  result = qword_27EE57478;
  if (!qword_27EE57478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57478);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23CoreSpeechDataAnalytics19DeviceSamplingErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24790E7C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24790E824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_24790E874(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_24790E8A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  *(v4 + 72) = 0;
  *(v4 + 80) = 2;
  v7 = *a3;
  if (!*a3)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v14 = sub_24794ED34();
    __swift_project_value_buffer(v14, qword_27EE58DF8);
    v15 = sub_24794ED14();
    v16 = sub_24794F164();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2478E1000, v15, v16, "#CSDASpkrIdSamplingOneSessionPolicy: init failed: samplingUtils is nil", v17, 2u);
      MEMORY[0x24C1AF180](v17, -1, -1);
    }

    v40 = a3[2];
    sub_2478E9620(&v40, &qword_27EE57290, &unk_2479504F0);
    v39 = a3[3];
    sub_2478E9620(&v39, &qword_27EE57298, &unk_2479503D0);
    v38 = a3[4];
    sub_2478E9620(&v38, &qword_27EE572A0, &unk_247950500);
    v37 = a3[5];
    v18 = &qword_27EE572A8;
    v19 = &unk_2479503E0;
    v20 = &v37;
    goto LABEL_16;
  }

  v8 = a3[5];
  if (!v8)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v21 = sub_24794ED34();
    __swift_project_value_buffer(v21, qword_27EE58DF8);
    v22 = sub_24794ED14();
    v23 = sub_24794F164();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2478E1000, v22, v23, "#CSDASpkrIdSamplingOneSessionPolicy: init failed: metadataManager is nil", v24, 2u);
      MEMORY[0x24C1AF180](v24, -1, -1);
    }

    v40 = a3[2];
    sub_2478E9620(&v40, &qword_27EE57290, &unk_2479504F0);
    v39 = a3[3];
    sub_2478E9620(&v39, &qword_27EE57298, &unk_2479503D0);
    v38 = a3[4];
    v18 = &qword_27EE572A0;
    v19 = &unk_247950500;
    v20 = &v38;
LABEL_16:
    sub_2478E9620(v20, v18, v19);
LABEL_29:

    type metadata accessor for SpkrIdSamplingOneSessionPolicy();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = a3[1];
  v10 = a3[3];
  v40 = v10;
  if (!v10)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v25 = sub_24794ED34();
    __swift_project_value_buffer(v25, qword_27EE58DF8);
    v26 = sub_24794ED14();
    v27 = sub_24794F164();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2478E1000, v26, v27, "#CSDASpkrIdSamplingOneSessionPolicy: init failed: siriProfileManager is nil", v28, 2u);
      MEMORY[0x24C1AF180](v28, -1, -1);

      v39 = a3[2];
      sub_2478E9620(&v39, &qword_27EE57290, &unk_2479504F0);
      v29 = &qword_27EE57298;
      v30 = &unk_2479503D0;
      v31 = &v40;
    }

    else
    {

      v39 = a3[2];
      v29 = &qword_27EE57290;
      v30 = &unk_2479504F0;
      v31 = &v39;
    }

    goto LABEL_28;
  }

  v11 = a3[2];
  v39 = v11;
  if (!v11)
  {

    sub_2478E9680(&v40, &v38, &qword_27EE57298, &unk_2479503D0);

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v32 = sub_24794ED34();
    __swift_project_value_buffer(v32, qword_27EE58DF8);
    v33 = sub_24794ED14();
    v34 = sub_24794F164();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2478E1000, v33, v34, "#CSDASpkrIdSamplingOneSessionPolicy: init failed: configUserDefaults is nil", v35, 2u);
      MEMORY[0x24C1AF180](v35, -1, -1);

      sub_2478E9620(&v40, &qword_27EE57298, &unk_2479503D0);

      sub_2478E9620(&v39, &qword_27EE57290, &unk_2479504F0);
    }

    else
    {

      sub_2478E9620(&v40, &qword_27EE57298, &unk_2479503D0);
    }

    v31 = &v40;
    v29 = &qword_27EE57298;
    v30 = &unk_2479503D0;
LABEL_28:
    sub_2478E9620(v31, v29, v30);
    v38 = a3[4];
    sub_2478E9620(&v38, &qword_27EE572A0, &unk_247950500);

    goto LABEL_29;
  }

  v38 = a3[4];
  sub_2478E9620(&v38, &qword_27EE572A0, &unk_247950500);
  *(v4 + 16) = v7;
  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = v10;
  v13 = *(v4 + 72);
  *(v4 + 64) = v11;
  *(v4 + 72) = 0;

  return v4;
}

void sub_24790EEA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v72 = a1;
  v5 = sub_24794EBB4();
  v74 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v73 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  v16 = v2[2];
  v17 = v3[3];
  v18 = (*(v17 + 232))(v16, v17);
  if (v19)
  {
    v20 = v19;
    LOBYTE(v75) = 3;
    v65 = v5;
    v21 = v3[8];
    v22 = *(v17 + 32);
    v71 = v18;
    v63 = v22(&v75, v21, v16, v17);
    v66 = v23;
    v24 = v72;
    (*(v17 + 64))(v21, v72, a2, v16, v17);
    v25 = v3[5];
    v26 = v3[6];
    v69 = v3;
    v70 = v15;
    sub_2478E9680(v15, v13, &qword_27EE572D0, &unk_2479504E0);
    v67 = type metadata accessor for DeterministicUserSelector(0);
    v27 = objc_allocWithZone(v67);
    v28 = &v27[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_locale];
    v62 = v25;
    *v28 = v25;
    v28[1] = v26;
    v29 = &v27[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_deviceID];
    *v29 = v71;
    *(v29 + 1) = v20;
    v30 = &v27[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_siriSharedUserId];
    *v30 = v24;
    v30[1] = a2;
    v31 = a2;
    sub_2478E9680(v13, v10, &qword_27EE572D0, &unk_2479504E0);
    isa = v74[6].isa;
    v33 = v65;
    v34 = (isa)(v10, 1);
    v68 = v13;
    v64 = v26;
    if (v34 == 1)
    {
      v35 = isa;
      v36 = qword_27EE571D0;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v33, qword_27EE57578);
      v39 = v73;
      v38 = v74;
      (v74[2].isa)(v73, v37, v33);
      v40 = v38;
      if (v35(v10, 1, v33) != 1)
      {
        sub_2478E9620(v10, &qword_27EE572D0, &unk_2479504E0);
      }
    }

    else
    {
      v39 = v73;
      v40 = v74;
      (v74[4].isa)(v73, v10, v33);
    }

    (v40[4].isa)(&v27[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_anchorDate], v39, v33);
    v45 = v69;
    if (v66)
    {
      if (qword_27EE571C8 != -1)
      {
        swift_once();
      }

      v46 = off_27EE57570;
      v47 = 1.0;
      if (*(off_27EE57570 + 2))
      {
        v48 = sub_24792BEF8(v62, v64);
        if (v49)
        {
          v47 = *(v46[7] + 8 * v48);
        }
      }
    }

    else
    {
      v47 = *&v63;
    }

    v50 = fmin(v47, 1.0);
    if (v50 < 0.0)
    {
      v50 = 0.0;
    }

    *&v27[OBJC_IVAR____TtC23CoreSpeechDataAnalytics25DeterministicUserSelector_samplingPercentage] = v50;
    v76.receiver = v27;
    v76.super_class = v67;
    v51 = objc_msgSendSuper2(&v76, sel_init);
    sub_2478E9620(v68, &qword_27EE572D0, &unk_2479504E0);
    v52 = v45[9];
    v45[9] = v51;

    if (v31)
    {
      v53 = 0xD000000000000015;
    }

    else
    {
      v53 = 0xD000000000000018;
    }

    if (v31)
    {
      v54 = "without siriSharedUserId";
    }

    else
    {
      v54 = "_cachedDeviceEligibility";
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v55 = sub_24794ED34();
    __swift_project_value_buffer(v55, qword_27EE58DF8);

    v56 = sub_24794ED14();
    v57 = sub_24794F144();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v75 = v59;
      *v58 = 136315394;
      v60 = sub_247924380(v71, v20, &v75);

      *(v58 + 4) = v60;
      *(v58 + 12) = 2080;
      v61 = sub_247924380(v53, v54 | 0x8000000000000000, &v75);

      *(v58 + 14) = v61;
      _os_log_impl(&dword_2478E1000, v56, v57, "#SpkrIdSamplingOneSessionPolicy: initialized user selector with deviceId: %s %s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1AF180](v59, -1, -1);
      MEMORY[0x24C1AF180](v58, -1, -1);
    }

    else
    {
    }

    sub_2478E9620(v70, &qword_27EE572D0, &unk_2479504E0);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v41 = sub_24794ED34();
    __swift_project_value_buffer(v41, qword_27EE58DF8);
    v74 = sub_24794ED14();
    v42 = sub_24794F164();
    if (os_log_type_enabled(v74, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2478E1000, v74, v42, "#SpkrIdSamplingOneSessionPolicy: failed to get device ID", v43, 2u);
      MEMORY[0x24C1AF180](v43, -1, -1);
    }

    v44 = v74;
  }
}

uint64_t sub_24790F610()
{
  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    v2 = sub_2479106A0();
    *(v0 + 80) = v2 & 1;
    if ((v2 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    if (sub_247910468())
    {
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v3 = sub_24794ED34();
      __swift_project_value_buffer(v3, qword_27EE58DF8);
      v4 = sub_24794ED14();
      v5 = sub_24794F144();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_11;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "#SpkrIdSamplingOneSessionPolicy: current user selected for sampling";
    }

    else
    {
      if (!(*(**(*(v0 + 32) + 16) + 392))())
      {
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v10 = sub_24794ED34();
        __swift_project_value_buffer(v10, qword_27EE58DF8);
        v11 = sub_24794ED14();
        v12 = sub_24794F144();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_2478E1000, v11, v12, "#SpkrIdSamplingOneSessionPolicy: not selected for current window and no selected siri session found, device not selected for sampling", v13, 2u);
          MEMORY[0x24C1AF180](v13, -1, -1);
        }

        return 0;
      }

      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v9 = sub_24794ED34();
      __swift_project_value_buffer(v9, qword_27EE58DF8);
      v4 = sub_24794ED14();
      v5 = sub_24794F144();
      if (!os_log_type_enabled(v4, v5))
      {
LABEL_11:

        return 1;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "#SpkrIdSamplingOneSessionPolicy: not selected for current window but selected siri session found, should process";
    }

    _os_log_impl(&dword_2478E1000, v4, v5, v7, v6, 2u);
    MEMORY[0x24C1AF180](v6, -1, -1);
    goto LABEL_11;
  }

  if (v1)
  {
    goto LABEL_5;
  }

  return 0;
}

void sub_24790F9EC()
{
  v1 = sub_24794EBB4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(v0 + 80);
  if (v14 == 2)
  {
    v15 = sub_2479106A0();
    *(v0 + 80) = v15 & 1;
    if ((v15 & 1) == 0)
    {
      return;
    }
  }

  else if ((v14 & 1) == 0)
  {
    return;
  }

  if (sub_247910468())
  {
    v27 = *(v0 + 32);
    isa = v27[2].isa;
    v17 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
    swift_beginAccess();
    sub_2478E9680(isa + v17, v13, &qword_27EE572D0, &unk_2479504E0);
    LODWORD(isa) = (*(v2 + 48))(v13, 1, v1);
    sub_2478E9620(v13, &qword_27EE572D0, &unk_2479504E0);
    if (isa == 1)
    {
      type metadata accessor for Utils();
      sub_24794EBA4();
      sub_247940B60(v5, v7);
      v18 = *(v2 + 8);
      v18(v5, v1);
      (*(v2 + 16))(v11, v7, v1);
      (*(v2 + 56))(v11, 0, 1, v1);
      v19 = v27;
      v20 = v27[2].isa;
      v21 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics22SamplingPolicyMetaData_collectionStartDate;
      swift_beginAccess();

      sub_2479096C8(v11, v20 + v21);
      swift_endAccess();

      sub_247940408();
      sub_2478E9620(v11, &qword_27EE572D0, &unk_2479504E0);
      *(v19[2].isa + 16) = 1;
      sub_247940408();
      v18(v7, v1);
    }
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v22 = sub_24794ED34();
    __swift_project_value_buffer(v22, qword_27EE58DF8);
    v27 = sub_24794ED14();
    v23 = sub_24794F144();
    if (os_log_type_enabled(v27, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2478E1000, v27, v23, "#SpkrIdSamplingOneSessionPolicy: checkAndSelectDeviceForSampling: device is not selected for sampling", v24, 2u);
      MEMORY[0x24C1AF180](v24, -1, -1);
    }

    v25 = v27;
  }
}

BOOL sub_24790FDD8()
{
  if (sub_24790FEEC())
  {
    sub_2479409C0();
  }

  v0 = sub_247910468();
  if (v0)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v1 = sub_24794ED34();
    __swift_project_value_buffer(v1, qword_27EE58DF8);
    v2 = sub_24794ED14();
    v3 = sub_24794F144();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2478E1000, v2, v3, "#SpkrIdSamplingOneSessionPolicy: device is still in sampling window", v4, 2u);
      MEMORY[0x24C1AF180](v4, -1, -1);
    }
  }

  return !v0;
}

uint64_t sub_24790FEEC()
{
  v1 = sub_24794EC04();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(**(*(v0 + 32) + 16) + 376))(v3);
  if (!v6)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v17 = sub_24794ED34();
    __swift_project_value_buffer(v17, qword_27EE58DF8);
    v18 = sub_24794ED14();
    v19 = sub_24794F154();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2478E1000, v18, v19, "#SpkrIdSamplingOneSessionPolicy: no enrollment metadata to compare, don't need to remove enrollmentMetadata", v20, 2u);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    return 0;
  }

  v7 = v6;
  v8 = [*(*(v0 + 56) + 16) getVoiceProfile];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [v8 locale];
  if (!v10)
  {
LABEL_27:

    return 0;
  }

  v11 = v10;
  v12 = sub_24794EF04();
  v14 = v13;

  if (v12 == *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale) && v14 == *(v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_locale + 8))
  {
  }

  else
  {
    v16 = sub_24794F4E4();

    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v21 = [v9 profileID];
  if (v21)
  {
    v22 = v21;
    v23 = sub_24794EF04();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  (*(v2 + 16))(v5, v7 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics18EnrollmentMetadata_voiceProfileId, v1);
  v26 = sub_24794EBD4();
  v28 = v27;
  (*(v2 + 8))(v5, v1);
  if (v25)
  {
    if (v23 == v26 && v25 == v28)
    {

      return 0;
    }

    v29 = sub_24794F4E4();

    if (v29)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v31 = sub_24794ED34();
  __swift_project_value_buffer(v31, qword_27EE58DF8);
  v32 = sub_24794ED14();
  v33 = sub_24794F154();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2478E1000, v32, v33, "#SpkrIdSamplingOneSessionPolicy: should discard enrollmentMetadata as profileId is different for the same locale", v34, 2u);
    MEMORY[0x24C1AF180](v34, -1, -1);
  }

  return 1;
}

BOOL sub_247910468()
{
  v1 = sub_24794EBB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = *(v0 + 72);
  if (v8)
  {
    (*(v2 + 56))(v7, 1, 1, v1);
    v9 = v8;
    sub_24794EBA4();
    v10 = sub_24792A018(v4, v7);

    (*(v2 + 8))(v4, v1);
    sub_2478E9620(v7, &qword_27EE572D0, &unk_2479504E0);
  }

  else
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v11 = sub_24794ED34();
    __swift_project_value_buffer(v11, qword_27EE58DF8);
    v12 = sub_24794ED14();
    v13 = sub_24794F164();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2478E1000, v12, v13, "#SpkrIdSamplingOneSessionPolicy: userSelector is nil, device not selected", v14, 2u);
      MEMORY[0x24C1AF180](v14, -1, -1);
    }

    return 0;
  }

  return v10;
}

uint64_t sub_2479106A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if ((v1[10](v2, v1) & 1) == 0 || (v1[11](v2, v1) & 1) == 0)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v4 = sub_24794ED34();
    __swift_project_value_buffer(v4, qword_27EE58DF8);
    v5 = sub_24794ED14();
    v6 = sub_24794F144();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "#SpkrIdSamplingOneSessionPolicy: Opt-in is not enabled, shoud not sample device";
    goto LABEL_10;
  }

  if ((v1[12](v2, v1) & 1) == 0)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v9 = sub_24794ED34();
    __swift_project_value_buffer(v9, qword_27EE58DF8);
    v5 = sub_24794ED14();
    v6 = sub_24794F144();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "#SpkrIdSamplingOneSessionPolicy: rpi is not turned on, should not sample device";
    goto LABEL_10;
  }

  if (v1[13](v2, v1))
  {
    return 1;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v10 = sub_24794ED34();
  __swift_project_value_buffer(v10, qword_27EE58DF8);
  v5 = sub_24794ED14();
  v6 = sub_24794F144();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "#SpkrIdSamplingOneSessionPolicy: location service is not enabled, should not sample device";
LABEL_10:
    _os_log_impl(&dword_2478E1000, v5, v6, v8, v7, 2u);
    MEMORY[0x24C1AF180](v7, -1, -1);
  }

LABEL_11:

  return 0;
}

uint64_t sub_247910938()
{

  return swift_deallocClassInstance();
}

void sub_247910A28(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = sub_24793B3D0();
  if (v3)
  {
    *(v2 + 16) = v3;
  }

  sub_24790EEA0(0, 0);
}

void *sub_247910A80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = 3;
  type metadata accessor for SiriRequestRecordFactory();
  v6 = swift_allocObject();
  *(v6 + 16) = 3;
  *(v3 + 40) = v6;
  v7 = *a3;
  if (!*a3)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v15 = sub_24794ED34();
    __swift_project_value_buffer(v15, qword_27EE58DF8);
    v16 = sub_24794ED14();
    v17 = sub_24794F164();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2478E1000, v16, v17, "#SpkrIdSamplingOneSessionSelectionRule: samplingUtils is not defined", v18, 2u);
      MEMORY[0x24C1AF180](v18, -1, -1);
    }

    v39 = a3[2];
    sub_2478E9620(&v39, &qword_27EE57290, &unk_2479504F0);
    v38 = a3[3];
    sub_2478E9620(&v38, &qword_27EE57298, &unk_2479503D0);
    v37 = a3[4];
    sub_2478E9620(&v37, &qword_27EE572A0, &unk_247950500);
    v36 = a3[5];
    sub_2478E9620(&v36, &qword_27EE572A8, &unk_2479503E0);
    goto LABEL_27;
  }

  v8 = a3[5];
  if (!v8)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v19 = sub_24794ED34();
    __swift_project_value_buffer(v19, qword_27EE58DF8);
    v20 = sub_24794ED14();
    v21 = sub_24794F164();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2478E1000, v20, v21, "#SpkrIdSamplingOneSessionSelectionRule: metadata manager is not defined", v22, 2u);
      MEMORY[0x24C1AF180](v22, -1, -1);
    }

    v39 = a3[2];
    sub_2478E9620(&v39, &qword_27EE57290, &unk_2479504F0);
    v38 = a3[3];
    sub_2478E9620(&v38, &qword_27EE57298, &unk_2479503D0);
    v37 = a3[4];
    sub_2478E9620(&v37, &qword_27EE572A0, &unk_247950500);
    goto LABEL_27;
  }

  v9 = a3[1];
  v10 = a3[3];
  v39 = v10;
  if (!v10)
  {
    v23 = qword_27EE571C0;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_24794ED34();
    __swift_project_value_buffer(v24, qword_27EE58DF8);
    v25 = sub_24794ED14();
    v26 = sub_24794F164();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2478E1000, v25, v26, "#SpkrIdSamplingOneSessionSelectionRule: siriProfileManager is not defined", v27, 2u);
      MEMORY[0x24C1AF180](v27, -1, -1);

      v38 = a3[2];
      sub_2478E9620(&v38, &qword_27EE57290, &unk_2479504F0);
      v28 = &qword_27EE57298;
      v29 = &unk_2479503D0;
      v30 = &v39;
    }

    else
    {

      v38 = a3[2];
      v28 = &qword_27EE57290;
      v29 = &unk_2479504F0;
      v30 = &v38;
    }

    goto LABEL_26;
  }

  v11 = *(v10 + 16);

  sub_2479113F0(&v39, &v38);
  v12 = [v11 getVoiceProfile];
  if (!v12)
  {
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v31 = sub_24794ED34();
    __swift_project_value_buffer(v31, qword_27EE58DF8);
    v32 = sub_24794ED14();
    v33 = sub_24794F164();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2478E1000, v32, v33, "#SpkrIdSamplingOneSessionSelectionRule: Cannot get voice profile from siriProfileManager", v34, 2u);
      MEMORY[0x24C1AF180](v34, -1, -1);
    }

    sub_2478E9620(&v39, &qword_27EE57298, &unk_2479503D0);
    v38 = a3[2];
    sub_2478E9620(&v38, &qword_27EE57290, &unk_2479504F0);
    v30 = &v39;
    v28 = &qword_27EE57298;
    v29 = &unk_2479503D0;
LABEL_26:
    sub_2478E9620(v30, v28, v29);
    v37 = a3[4];
    sub_2478E9620(&v37, &qword_27EE572A0, &unk_247950500);

LABEL_27:

    type metadata accessor for SpkrIdSamplingOneSessionSelectionRule();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = v12;
  v38 = a3[2];
  sub_2478E9620(&v38, &qword_27EE57290, &unk_2479504F0);
  sub_2478E9620(&v39, &qword_27EE57298, &unk_2479503D0);
  v37 = a3[4];
  sub_2478E9620(&v37, &qword_27EE572A0, &unk_247950500);

  v4[9] = v10;
  type metadata accessor for SiriSessionGenerator();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v4[10] = v14;
  v4[6] = v7;
  v4[7] = v9;
  v4[8] = v8;
  return v4;
}

uint64_t sub_2479110AC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_247911158(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_40:
    if (qword_27EE571C0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      v4 = 0;
      while (1)
      {
        v6 = MEMORY[0x24C1AE890](v4, v1);
        if (v3)
        {
          v7 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 8);
          v8 = __OFADD__(*(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo), v7);
          v9 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo) + v7;
          if (v8)
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v10 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 16);
          v8 = __OFADD__(v9, v10);
          v11 = v9 + v10;
          if (v8)
          {
            goto LABEL_32;
          }

          v12 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo);
          v13 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 8);
          v8 = __OFADD__(v12, v13);
          v14 = v12 + v13;
          if (v8)
          {
            goto LABEL_33;
          }

          v15 = *(v3 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo + 16);
          v8 = __OFADD__(v14, v15);
          v16 = v14 + v15;
          if (v8)
          {
            goto LABEL_34;
          }

          v17 = *(v6 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo) < v12;
          if (v11 != v16)
          {
            v17 = v16 < v11;
          }

          if (!v17)
          {
            swift_unknownObjectRelease();
            goto LABEL_8;
          }

          v5 = v6;

          v6 = v5;
        }

        v3 = v6;
LABEL_8:
        if (v2 == ++v4)
        {
          return v3;
        }
      }
    }

    v3 = 0;
    v18 = (v1 + 32);
    v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo;
    while (1)
    {
      v1 = *v18;
      if (!v3)
      {
        break;
      }

      v20 = *(v1 + v19);
      v21 = *(v1 + v19 + 8);
      v8 = __OFADD__(v20, v21);
      v22 = v20 + v21;
      if (v8)
      {
        goto LABEL_35;
      }

      v23 = *(v1 + v19 + 16);
      v8 = __OFADD__(v22, v23);
      v24 = v22 + v23;
      if (v8)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v2 = sub_24794F414();
        if (!v2)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      }

      v25 = *(v3 + v19);
      v26 = *(v3 + v19 + 8);
      v8 = __OFADD__(v25, v26);
      v27 = v25 + v26;
      if (v8)
      {
        goto LABEL_37;
      }

      v28 = *(v3 + v19 + 16);
      v8 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v8)
      {
        goto LABEL_38;
      }

      v30 = v20 < v25;
      if (v24 != v29)
      {
        v30 = v29 < v24;
      }

      if (v30)
      {

        v19 = OBJC_IVAR____TtC23CoreSpeechDataAnalytics11SiriSession_requestInfo;
        goto LABEL_20;
      }

LABEL_21:
      ++v18;
      if (!--v2)
      {
        return v3;
      }
    }

LABEL_20:
    v3 = v1;
    goto LABEL_21;
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_41:
  v31 = sub_24794ED34();
  __swift_project_value_buffer(v31, qword_27EE58DF8);
  v32 = sub_24794ED14();
  v33 = sub_24794F144();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2478E1000, v32, v33, "#SpkrIdSamplingOneSessionSelectionRule: No sessions generated from records for date", v34, 2u);
    MEMORY[0x24C1AF180](v34, -1, -1);
  }

  return 0;
}

uint64_t sub_2479113F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57298, &unk_2479503D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247911460(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000247952580;
    }

    else
    {
      v6 = 0x80000002479525A0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x72506E6F74747562;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v4)
    {
      v6 = 0xEE00435346737365;
    }

    else
    {
      v6 = 0x8000000247952550;
    }
  }

  v7 = 0x8000000247952580;
  v8 = 0xD000000000000013;
  if (a2 == 2)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v7 = 0x80000002479525A0;
  }

  if (!a2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24794F4E4();
  }

  return v11 & 1;
}

unint64_t SamplingDataCollectionType.rawValue.getter()
{
  v1 = 0x72506E6F74747562;
  v2 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

CoreSpeechDataAnalytics::SamplingDataCollectionType_optional __swiftcall SamplingDataCollectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24794F4A4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_247911688()
{
  sub_24794F584();
  sub_24794EF74();

  return sub_24794F5B4();
}

double sub_24791175C(uint64_t a1)
{
  sub_24794EF74();

  return result;
}

uint64_t sub_24791181C(uint64_t a1)
{
  sub_24794F584();
  sub_24794EF74();

  return sub_24794F5B4();
}

void sub_2479118F8(unint64_t *a1@<X8>)
{
  v2 = 0xEE00435346737365;
  v3 = 0x72506E6F74747562;
  v4 = 0x8000000247952580;
  v5 = 0xD000000000000013;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x80000002479525A0;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000247952550;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id AudioRequestInvocationData.__allocating_init(isVoiceTrigger:isButtonPress:)(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isVoiceTrigger] = a1;
  v5[OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isButtonPress] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id AudioRequestInvocationData.init(isVoiceTrigger:isButtonPress:)(char a1, char a2)
{
  v2[OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isVoiceTrigger] = a1;
  v2[OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isButtonPress] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AudioRequestInvocationData();
  return objc_msgSendSuper2(&v4, sel_init);
}

id AudioRequestInvocationData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioRequestInvocationData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioRequestInvocationData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_247911BA4()
{
  result = qword_27EE57490;
  if (!qword_27EE57490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE57490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SamplingDataCollectionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SamplingDataCollectionType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_247911D74(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_24794EBB4();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57498, &unk_247951530);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247911E90, 0, 0);
}

void sub_247911E90()
{
  *(v0 + 240) = 0;
  v44 = (v0 + 136);
  v1 = (v0 + 176);
  v2 = *(v0 + 256);
  v3 = sub_24794E30C(MEMORY[0x277D84F90]);
  v4 = *(v2 + 32);
  *(v0 + 233) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v2 + 64);

  v8 = 0;
  *(v0 + 328) = v3;
  if (v7)
  {
    v9 = *(v0 + 256);
LABEL_14:
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = (v7 - 1) & v7;
    v18 = __clz(__rbit64(v7)) | (v8 << 6);
    (*(v15 + 16))(v14, *(v9 + 48) + *(v15 + 72) * v18, v16);
    v19 = *(*(v9 + 56) + 8 * v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v21 = *(v20 + 48);
    (*(v15 + 32))(v13, v14, v16);
    *(v13 + v21) = v19;
    (*(*(v20 - 8) + 56))(v13, 0, 1, v20);

    v11 = v8;
    v1 = (v0 + 176);
LABEL_15:
    *(v0 + 336) = v17;
    *(v0 + 344) = v11;
    v22 = *(v0 + 320);
    sub_247917674(*(v0 + 312), v22);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {
      v34 = *(v0 + 264);

      sub_247917728(v34 + 96, v0 + 16);
      v35 = *(v0 + 40);
      v36 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v35);
      v45 = (*(v36 + 48) + **(v36 + 48));
      v37 = swift_task_alloc();
      *(v0 + 392) = v37;
      *v37 = v0;
      v37[1] = sub_247913AA4;

      v45(v35, v36);
    }

    else
    {
      v24 = *(v0 + 296);
      v25 = *(v0 + 264);
      v26 = *(*(v0 + 320) + *(v23 + 48));
      (*(*(v0 + 280) + 32))(v24);
      sub_247917728(v25 + 96, v44);
      v27 = *(v0 + 160);
      v28 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1(v44, v27);
      (*(v28 + 72))(v27, v28);
      __swift_destroy_boxed_opaque_existential_0(v44);
      sub_247917728(v25 + 56, v1);
      v29 = *(v0 + 200);
      v30 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1(v1, v29);
      v31 = (*(v30 + 16))(v26, v24, v29, v30);
      *(v0 + 352) = v31;
      v38 = v31;
      v39 = *(v0 + 264);

      __swift_destroy_boxed_opaque_existential_0(v1);
      if (*(v39 + 184) == 3)
      {
        v40 = swift_task_alloc();
        *(v0 + 360) = v40;
        *v40 = v0;
        v40[1] = sub_24791275C;
        v41 = *(v0 + 296);

        sub_247916730(v38, v41);
      }

      else
      {
        v42 = swift_task_alloc();
        *(v0 + 376) = v42;
        *v42 = v0;
        v42[1] = sub_247913100;
        v43 = *(v0 + 296);

        sub_2479168C8(v38, v43, v0 + 240);
      }
    }
  }

  else
  {
    if (((1 << *(v0 + 233)) + 63) >> 6 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = ((1 << *(v0 + 233)) + 63) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v12 >= (((1 << *(v0 + 233)) + 63) >> 6))
      {
        v32 = *(v0 + 312);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
        (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
        v17 = 0;
        goto LABEL_15;
      }

      v9 = *(v0 + 256);
      v7 = *(v9 + 8 * v12 + 64);
      ++v8;
      if (v7)
      {
        v8 = v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24791275C()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_247914D04;
  }

  else
  {
    v2 = sub_247912890;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_247912890()
{
  v76 = v0;
  v1 = *(v0 + 368);
  (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
LABEL_2:
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  while (v2)
  {
    v72 = v1;
    v10 = *(v0 + 256);
LABEL_15:
    v15 = *(v0 + 304);
    v16 = *(v0 + 312);
    v17 = *(v0 + 272);
    v18 = *(v0 + 280);
    v19 = (v2 - 1) & v2;
    v20 = __clz(__rbit64(v2)) | (v3 << 6);
    (*(v18 + 16))(v15, *(v10 + 48) + *(v18 + 72) * v20, v17);
    v21 = *(*(v10 + 56) + 8 * v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v23 = *(v22 + 48);
    (*(v18 + 32))(v16, v15, v17);
    *(v16 + v23) = v21;
    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);

    v24 = v19;
    v13 = v3;
    v1 = v72;
LABEL_16:
    *(v0 + 336) = v24;
    *(v0 + 344) = v13;
    v25 = *(v0 + 320);
    sub_247917674(*(v0 + 312), v25);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
    {
      v60 = *(v0 + 264);

      sub_247917728(v60 + 96, v0 + 16);
      v61 = *(v0 + 40);
      v62 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v61);
      v74 = (*(v62 + 48) + **(v62 + 48));
      v63 = swift_task_alloc();
      *(v0 + 392) = v63;
      *v63 = v0;
      v63[1] = sub_247913AA4;

      v74(v61, v62);
      return;
    }

    v27 = *(v0 + 296);
    v28 = *(v0 + 264);
    v29 = *(*(v0 + 320) + *(v26 + 48));
    (*(*(v0 + 280) + 32))(v27);
    sub_247917728(v28 + 96, v0 + 136);
    v30 = *(v0 + 160);
    v31 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v30);
    (*(v31 + 72))(v30, v31);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    sub_247917728(v28 + 56, v0 + 176);
    v32 = *(v0 + 200);
    v33 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v32);
    v34 = (*(v33 + 16))(v29, v27, v32, v33);
    *(v0 + 352) = v34;
    if (!v1)
    {
      v64 = v34;
      v65 = *(v0 + 264);

      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (*(v65 + 184) == 3)
      {
        v66 = swift_task_alloc();
        *(v0 + 360) = v66;
        *v66 = v0;
        v66[1] = sub_24791275C;
        v67 = *(v0 + 296);

        sub_247916730(v64, v67);
      }

      else
      {
        v68 = swift_task_alloc();
        *(v0 + 376) = v68;
        *v68 = v0;
        v68[1] = sub_247913100;
        v69 = *(v0 + 296);

        sub_2479168C8(v64, v69, v0 + 240);
      }

      return;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    *(v0 + 248) = v1;
    v35 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
    if (swift_dynamicCast())
    {
      v36 = *(v0 + 216);
      v37 = *(v0 + 224);
      v38 = *(v0 + 232);
      if (v38 == 2 && v36 == 12 && !v37)
      {
        (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

        v1 = 0;
        goto LABEL_2;
      }

      sub_24791778C(v36, v37, v38);
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 288);
    v40 = *(v0 + 296);
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);
    v43 = sub_24794ED34();
    __swift_project_value_buffer(v43, qword_27EE58DF8);
    (*(v41 + 16))(v39, v40, v42);
    v44 = v1;
    v45 = sub_24794ED14();
    v46 = sub_24794F164();

    v47 = os_log_type_enabled(v45, v46);
    v49 = *(v0 + 280);
    v48 = *(v0 + 288);
    v50 = *(v0 + 272);
    if (v47)
    {
      v51 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v75 = v73;
      *v51 = 138412546;
      v52 = v1;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v53;
      *v71 = v53;
      *(v51 + 12) = 2080;
      sub_2479176E4(&qword_27EE57288, MEMORY[0x277CC95B8]);
      v70 = v46;
      v54 = sub_24794F4D4();
      v56 = v55;
      v4 = *(v49 + 8);
      v4(v48, v50);
      v57 = sub_247924380(v54, v56, &v75);

      *(v51 + 14) = v57;
      _os_log_impl(&dword_2478E1000, v45, v70, "#CollectionManager: daily processing failed with error: %@ for date: %s", v51, 0x16u);
      sub_2478E9620(v71, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v71, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x24C1AF180](v73, -1, -1);
      MEMORY[0x24C1AF180](v51, -1, -1);
    }

    else
    {

      v4 = *(v49 + 8);
      v4(v48, v50);
    }

    v5 = *(v0 + 328);
    v6 = *(v0 + 296);
    v7 = *(v0 + 272);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v5;
    sub_24794B724(v1, v6, isUniquelyReferenced_nonNull_native);
    v9 = v75;
    v4(v6, v7);
    v1 = 0;
    v2 = *(v0 + 336);
    v3 = *(v0 + 344);
    *(v0 + 328) = v9;
  }

  v11 = ((1 << *(v0 + 233)) + 63) >> 6;
  if (v11 <= (v3 + 1))
  {
    v12 = v3 + 1;
  }

  else
  {
    v12 = ((1 << *(v0 + 233)) + 63) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v14 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v58 = *(v0 + 312);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
      (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
      v24 = 0;
      goto LABEL_16;
    }

    v10 = *(v0 + 256);
    v2 = *(v10 + 8 * v14 + 64);
    ++v3;
    if (v2)
    {
      v72 = v1;
      v3 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_247913100()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_247915550;
  }

  else
  {
    v2 = sub_247913234;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_247913234()
{
  v76 = v0;
  v1 = *(v0 + 384);
  (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
LABEL_2:
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  while (v2)
  {
    v72 = v1;
    v10 = *(v0 + 256);
LABEL_15:
    v15 = *(v0 + 304);
    v16 = *(v0 + 312);
    v17 = *(v0 + 272);
    v18 = *(v0 + 280);
    v19 = (v2 - 1) & v2;
    v20 = __clz(__rbit64(v2)) | (v3 << 6);
    (*(v18 + 16))(v15, *(v10 + 48) + *(v18 + 72) * v20, v17);
    v21 = *(*(v10 + 56) + 8 * v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v23 = *(v22 + 48);
    (*(v18 + 32))(v16, v15, v17);
    *(v16 + v23) = v21;
    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);

    v24 = v19;
    v13 = v3;
    v1 = v72;
LABEL_16:
    *(v0 + 336) = v24;
    *(v0 + 344) = v13;
    v25 = *(v0 + 320);
    sub_247917674(*(v0 + 312), v25);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
    {
      v60 = *(v0 + 264);

      sub_247917728(v60 + 96, v0 + 16);
      v61 = *(v0 + 40);
      v62 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v61);
      v74 = (*(v62 + 48) + **(v62 + 48));
      v63 = swift_task_alloc();
      *(v0 + 392) = v63;
      *v63 = v0;
      v63[1] = sub_247913AA4;

      v74(v61, v62);
      return;
    }

    v27 = *(v0 + 296);
    v28 = *(v0 + 264);
    v29 = *(*(v0 + 320) + *(v26 + 48));
    (*(*(v0 + 280) + 32))(v27);
    sub_247917728(v28 + 96, v0 + 136);
    v30 = *(v0 + 160);
    v31 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v30);
    (*(v31 + 72))(v30, v31);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    sub_247917728(v28 + 56, v0 + 176);
    v32 = *(v0 + 200);
    v33 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v32);
    v34 = (*(v33 + 16))(v29, v27, v32, v33);
    *(v0 + 352) = v34;
    if (!v1)
    {
      v64 = v34;
      v65 = *(v0 + 264);

      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (*(v65 + 184) == 3)
      {
        v66 = swift_task_alloc();
        *(v0 + 360) = v66;
        *v66 = v0;
        v66[1] = sub_24791275C;
        v67 = *(v0 + 296);

        sub_247916730(v64, v67);
      }

      else
      {
        v68 = swift_task_alloc();
        *(v0 + 376) = v68;
        *v68 = v0;
        v68[1] = sub_247913100;
        v69 = *(v0 + 296);

        sub_2479168C8(v64, v69, v0 + 240);
      }

      return;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    *(v0 + 248) = v1;
    v35 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
    if (swift_dynamicCast())
    {
      v36 = *(v0 + 216);
      v37 = *(v0 + 224);
      v38 = *(v0 + 232);
      if (v38 == 2 && v36 == 12 && !v37)
      {
        (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

        v1 = 0;
        goto LABEL_2;
      }

      sub_24791778C(v36, v37, v38);
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 288);
    v40 = *(v0 + 296);
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);
    v43 = sub_24794ED34();
    __swift_project_value_buffer(v43, qword_27EE58DF8);
    (*(v41 + 16))(v39, v40, v42);
    v44 = v1;
    v45 = sub_24794ED14();
    v46 = sub_24794F164();

    v47 = os_log_type_enabled(v45, v46);
    v49 = *(v0 + 280);
    v48 = *(v0 + 288);
    v50 = *(v0 + 272);
    if (v47)
    {
      v51 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v75 = v73;
      *v51 = 138412546;
      v52 = v1;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v53;
      *v71 = v53;
      *(v51 + 12) = 2080;
      sub_2479176E4(&qword_27EE57288, MEMORY[0x277CC95B8]);
      v70 = v46;
      v54 = sub_24794F4D4();
      v56 = v55;
      v4 = *(v49 + 8);
      v4(v48, v50);
      v57 = sub_247924380(v54, v56, &v75);

      *(v51 + 14) = v57;
      _os_log_impl(&dword_2478E1000, v45, v70, "#CollectionManager: daily processing failed with error: %@ for date: %s", v51, 0x16u);
      sub_2478E9620(v71, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v71, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x24C1AF180](v73, -1, -1);
      MEMORY[0x24C1AF180](v51, -1, -1);
    }

    else
    {

      v4 = *(v49 + 8);
      v4(v48, v50);
    }

    v5 = *(v0 + 328);
    v6 = *(v0 + 296);
    v7 = *(v0 + 272);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v5;
    sub_24794B724(v1, v6, isUniquelyReferenced_nonNull_native);
    v9 = v75;
    v4(v6, v7);
    v1 = 0;
    v2 = *(v0 + 336);
    v3 = *(v0 + 344);
    *(v0 + 328) = v9;
  }

  v11 = ((1 << *(v0 + 233)) + 63) >> 6;
  if (v11 <= (v3 + 1))
  {
    v12 = v3 + 1;
  }

  else
  {
    v12 = ((1 << *(v0 + 233)) + 63) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v14 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v58 = *(v0 + 312);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
      (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
      v24 = 0;
      goto LABEL_16;
    }

    v10 = *(v0 + 256);
    v2 = *(v10 + 8 * v14 + 64);
    ++v3;
    if (v2)
    {
      v72 = v1;
      v3 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_247913AA4()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_247915D9C;
  }

  else
  {
    v2 = sub_247913BB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247913BB8()
{
  v57 = v0;
  v1 = v0[50];
  v0[51] = 0;
  v2 = v0[33];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_247917728(v2 + 16, (v0 + 7));
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
  v5 = (*(v4 + 24))(v3, v4);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
LABEL_3:

    v6 = v0[1];
LABEL_4:

    return v6();
  }

  v8 = v5;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if ((v8 & 1) == 0)
  {
    v13 = v0[30];
    if (v13 >= 1)
    {

      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v14 = sub_24794ED34();
      __swift_project_value_buffer(v14, qword_27EE58DF8);

      v15 = sub_24794ED14();
      v16 = sub_24794F164();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v56[0] = v18;
        *v17 = 134218242;
        *(v17 + 4) = v13;
        *(v17 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574B8, &qword_247951548);
        sub_2479176E4(&qword_27EE574B0, MEMORY[0x277CC9588]);
        v19 = sub_24794EEA4();
        v21 = sub_247924380(v19, v20, v56);

        *(v17 + 14) = v21;
        _os_log_impl(&dword_2478E1000, v15, v16, "#CollectionManager: some audio upload failed, count: %ld for days: %s", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x24C1AF180](v18, -1, -1);
        MEMORY[0x24C1AF180](v17, -1, -1);
      }

      v22 = v0[51];
      sub_2478E95CC();
      swift_allocError();
      *v23 = xmmword_24794FF00;
      *(v23 + 16) = 2;
      swift_willThrow();

      goto LABEL_3;
    }

    if (*(v0[41] + 16))
    {
      v24 = v0[41];
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v25 = sub_24794ED34();
      __swift_project_value_buffer(v25, qword_27EE58DF8);

      v26 = sub_24794ED14();
      v27 = sub_24794F164();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v56[0] = v29;
        *v28 = 134218242;
        *(v28 + 4) = *(v24 + 16);

        *(v28 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
        sub_2479176E4(&qword_27EE574B0, MEMORY[0x277CC9588]);
        v30 = sub_24794EEA4();
        v32 = v31;

        v33 = sub_247924380(v30, v32, v56);

        *(v28 + 14) = v33;
        _os_log_impl(&dword_2478E1000, v26, v27, "#CollectionManager: daily processing failed for %ld days: %s", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x24C1AF180](v29, -1, -1);
        MEMORY[0x24C1AF180](v28, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v34 = v0[51];
      if (v34)
      {
        goto LABEL_31;
      }
    }

    else
    {

      v34 = v0[51];
      if (v34)
      {
LABEL_31:
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v44 = sub_24794ED34();
        __swift_project_value_buffer(v44, qword_27EE58DF8);
        v45 = v34;
        v46 = sub_24794ED14();
        v47 = sub_24794F164();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = v34;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_2478E1000, v46, v47, "#CollectionManager: data aggregation failed with error: %@", v48, 0xCu);
          sub_2478E9620(v49, &qword_27EE57280, &unk_2479503C0);
          MEMORY[0x24C1AF180](v49, -1, -1);
          MEMORY[0x24C1AF180](v48, -1, -1);
        }

        swift_willThrow();
        goto LABEL_3;
      }
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v35 = sub_24794ED34();
    __swift_project_value_buffer(v35, qword_27EE58DF8);

    v36 = sub_24794ED14();
    v37 = sub_24794F144();

    if (!os_log_type_enabled(v36, v37))
    {
LABEL_45:

      v6 = v0[1];
      goto LABEL_4;
    }

    v38 = v0[33];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v56[0] = v40;
    *v39 = 136315138;
    v41 = *(v38 + 184);
    if (v41 > 1)
    {
      v52 = v41 == 2;
      if (v41 == 2)
      {
        v43 = "kerId";
      }

      else
      {
        v43 = "metricsCalculator";
      }

      if (v52)
      {
        v42 = 0xD000000000000011;
      }

      else
      {
        v42 = 0xD000000000000013;
      }
    }

    else
    {
      if (*(v38 + 184))
      {
        v53 = 0xEE00435346737365;
        v42 = 0x72506E6F74747562;
        goto LABEL_44;
      }

      v42 = 0xD000000000000015;
      v43 = "noWakeWord";
    }

    v53 = v43 | 0x8000000000000000;
LABEL_44:
    v54 = sub_247924380(v42, v53, v56);

    *(v39 + 4) = v54;
    _os_log_impl(&dword_2478E1000, v36, v37, "#CollectionManager: finished process for : %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x24C1AF180](v40, -1, -1);
    MEMORY[0x24C1AF180](v39, -1, -1);
    goto LABEL_45;
  }

  sub_247917728(v0[33] + 96, (v0 + 12));
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = *(v10 + 8);
  v55 = (*(v11 + 8) + **(v11 + 8));
  v12 = swift_task_alloc();
  v0[52] = v12;
  *v12 = v0;
  v12[1] = sub_24791449C;

  return v55(v9, v11);
}

uint64_t sub_24791449C()
{
  *(*v1 + 424) = v0;

  if (v0)
  {

    v2 = sub_247916684;
  }

  else
  {
    v2 = sub_2479145B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2479145B8()
{
  v46 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[30];
  if (v1 >= 1)
  {

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v2 = sub_24794ED34();
    __swift_project_value_buffer(v2, qword_27EE58DF8);

    v3 = sub_24794ED14();
    v4 = sub_24794F164();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v45[0] = v6;
      *v5 = 134218242;
      *(v5 + 4) = v1;
      *(v5 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574B8, &qword_247951548);
      sub_2479176E4(&qword_27EE574B0, MEMORY[0x277CC9588]);
      v7 = sub_24794EEA4();
      v9 = sub_247924380(v7, v8, v45);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_2478E1000, v3, v4, "#CollectionManager: some audio upload failed, count: %ld for days: %s", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x24C1AF180](v6, -1, -1);
      MEMORY[0x24C1AF180](v5, -1, -1);
    }

    v10 = v0[51];
    sub_2478E95CC();
    swift_allocError();
    *v11 = xmmword_24794FF00;
    *(v11 + 16) = 2;
    swift_willThrow();

LABEL_26:

    v40 = v0[1];
    goto LABEL_27;
  }

  if (*(v0[41] + 16))
  {
    v12 = v0[41];
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v13 = sub_24794ED34();
    __swift_project_value_buffer(v13, qword_27EE58DF8);

    v14 = sub_24794ED14();
    v15 = sub_24794F164();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45[0] = v17;
      *v16 = 134218242;
      *(v16 + 4) = *(v12 + 16);

      *(v16 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
      sub_2479176E4(&qword_27EE574B0, MEMORY[0x277CC9588]);
      v18 = sub_24794EEA4();
      v20 = v19;

      v21 = sub_247924380(v18, v20, v45);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_2478E1000, v14, v15, "#CollectionManager: daily processing failed for %ld days: %s", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1AF180](v17, -1, -1);
      MEMORY[0x24C1AF180](v16, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v22 = v0[51];
    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v22 = v0[51];
    if (v22)
    {
LABEL_21:
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v32 = sub_24794ED34();
      __swift_project_value_buffer(v32, qword_27EE58DF8);
      v33 = v22;
      v34 = sub_24794ED14();
      v35 = sub_24794F164();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v22;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_2478E1000, v34, v35, "#CollectionManager: data aggregation failed with error: %@", v36, 0xCu);
        sub_2478E9620(v37, &qword_27EE57280, &unk_2479503C0);
        MEMORY[0x24C1AF180](v37, -1, -1);
        MEMORY[0x24C1AF180](v36, -1, -1);
      }

      swift_willThrow();
      goto LABEL_26;
    }
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v23 = sub_24794ED34();
  __swift_project_value_buffer(v23, qword_27EE58DF8);

  v24 = sub_24794ED14();
  v25 = sub_24794F144();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v0[33];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45[0] = v28;
    *v27 = 136315138;
    v29 = *(v26 + 184);
    if (v29 > 1)
    {
      v42 = v29 == 2;
      if (v29 == 2)
      {
        v31 = "kerId";
      }

      else
      {
        v31 = "metricsCalculator";
      }

      if (v42)
      {
        v30 = 0xD000000000000011;
      }

      else
      {
        v30 = 0xD000000000000013;
      }
    }

    else
    {
      if (*(v26 + 184))
      {
        v43 = 0xEE00435346737365;
        v30 = 0x72506E6F74747562;
        goto LABEL_38;
      }

      v30 = 0xD000000000000015;
      v31 = "noWakeWord";
    }

    v43 = v31 | 0x8000000000000000;
LABEL_38:
    v44 = sub_247924380(v30, v43, v45);

    *(v27 + 4) = v44;
    _os_log_impl(&dword_2478E1000, v24, v25, "#CollectionManager: finished process for : %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1AF180](v28, -1, -1);
    MEMORY[0x24C1AF180](v27, -1, -1);
  }

  v40 = v0[1];
LABEL_27:

  return v40();
}

void sub_247914D04()
{
  v77 = v0;
  v1 = *(v0 + 368);
  *(v0 + 248) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
  if (!swift_dynamicCast())
  {
LABEL_10:
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 288);
    v9 = *(v0 + 296);
    v10 = *(v0 + 272);
    v11 = *(v0 + 280);
    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);
    (*(v11 + 16))(v8, v9, v10);
    v13 = v1;
    v14 = sub_24794ED14();
    v15 = sub_24794F164();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v19 = *(v0 + 272);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = v73;
      *v20 = 138412546;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v72 = v22;
      *(v20 + 12) = 2080;
      sub_2479176E4(&qword_27EE57288, MEMORY[0x277CC95B8]);
      v23 = sub_24794F4D4();
      v71 = v15;
      v25 = v24;
      v26 = *(v17 + 8);
      v26(v18, v19);
      v27 = sub_247924380(v23, v25, &v76);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_2478E1000, v14, v71, "#CollectionManager: daily processing failed with error: %@ for date: %s", v20, 0x16u);
      sub_2478E9620(v72, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x24C1AF180](v73, -1, -1);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    else
    {

      v26 = *(v17 + 8);
      v26(v18, v19);
    }

    v28 = *(v0 + 328);
    v29 = *(v0 + 296);
    v30 = *(v0 + 272);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v28;
    sub_24794B724(v1, v29, isUniquelyReferenced_nonNull_native);
    v32 = v76;
    v26(v29, v30);
    v33 = *(v0 + 336);
    v34 = *(v0 + 344);
    *(v0 + 328) = v32;
    if (v33)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  if (v5 != 2 || v3 != 12 || v4 != 0)
  {
    sub_24791778C(v3, v4, v5);
    goto LABEL_10;
  }

  (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

  v33 = *(v0 + 336);
  v34 = *(v0 + 344);
  if (v33)
  {
LABEL_16:
    v35 = *(v0 + 256);
LABEL_26:
    v40 = *(v0 + 304);
    v41 = *(v0 + 312);
    v42 = *(v0 + 272);
    v43 = *(v0 + 280);
    v74 = (v33 - 1) & v33;
    v44 = __clz(__rbit64(v33)) | (v34 << 6);
    (*(v43 + 16))(v40, *(v35 + 48) + *(v43 + 72) * v44, v42);
    v45 = *(*(v35 + 56) + 8 * v44);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v47 = *(v46 + 48);
    (*(v43 + 32))(v41, v40, v42);
    *(v41 + v47) = v45;
    (*(*(v46 - 8) + 56))(v41, 0, 1, v46);

    v48 = v74;
    v38 = v34;
LABEL_27:
    *(v0 + 336) = v48;
    *(v0 + 344) = v38;
    v49 = *(v0 + 320);
    sub_247917674(*(v0 + 312), v49);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      v61 = *(v0 + 264);

      sub_247917728(v61 + 96, v0 + 16);
      v62 = *(v0 + 40);
      v63 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v62);
      v75 = (*(v63 + 48) + **(v63 + 48));
      v64 = swift_task_alloc();
      *(v0 + 392) = v64;
      *v64 = v0;
      v64[1] = sub_247913AA4;

      v75(v62, v63);
    }

    else
    {
      v51 = *(v0 + 296);
      v52 = *(v0 + 264);
      v53 = *(*(v0 + 320) + *(v50 + 48));
      (*(*(v0 + 280) + 32))(v51);
      sub_247917728(v52 + 96, v0 + 136);
      v54 = *(v0 + 160);
      v55 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v54);
      (*(v55 + 72))(v54, v55);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      sub_247917728(v52 + 56, v0 + 176);
      v56 = *(v0 + 200);
      v57 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v56);
      v58 = (*(v57 + 16))(v53, v51, v56, v57);
      *(v0 + 352) = v58;
      v65 = v58;
      v66 = *(v0 + 264);

      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (*(v66 + 184) == 3)
      {
        v67 = swift_task_alloc();
        *(v0 + 360) = v67;
        *v67 = v0;
        v67[1] = sub_24791275C;
        v68 = *(v0 + 296);

        sub_247916730(v65, v68);
      }

      else
      {
        v69 = swift_task_alloc();
        *(v0 + 376) = v69;
        *v69 = v0;
        v69[1] = sub_247913100;
        v70 = *(v0 + 296);

        sub_2479168C8(v65, v70, v0 + 240);
      }
    }

    return;
  }

LABEL_18:
  v36 = ((1 << *(v0 + 233)) + 63) >> 6;
  if (v36 <= (v34 + 1))
  {
    v37 = v34 + 1;
  }

  else
  {
    v37 = ((1 << *(v0 + 233)) + 63) >> 6;
  }

  v38 = v37 - 1;
  while (1)
  {
    v39 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      v59 = *(v0 + 312);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
      (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
      v48 = 0;
      goto LABEL_27;
    }

    v35 = *(v0 + 256);
    v33 = *(v35 + 8 * v39 + 64);
    ++v34;
    if (v33)
    {
      v34 = v39;
      goto LABEL_26;
    }
  }

  __break(1u);
}

void sub_247915550()
{
  v77 = v0;
  v1 = *(v0 + 384);
  *(v0 + 248) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
  if (!swift_dynamicCast())
  {
LABEL_10:
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 288);
    v9 = *(v0 + 296);
    v10 = *(v0 + 272);
    v11 = *(v0 + 280);
    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);
    (*(v11 + 16))(v8, v9, v10);
    v13 = v1;
    v14 = sub_24794ED14();
    v15 = sub_24794F164();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v19 = *(v0 + 272);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = v73;
      *v20 = 138412546;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v72 = v22;
      *(v20 + 12) = 2080;
      sub_2479176E4(&qword_27EE57288, MEMORY[0x277CC95B8]);
      v23 = sub_24794F4D4();
      v71 = v15;
      v25 = v24;
      v26 = *(v17 + 8);
      v26(v18, v19);
      v27 = sub_247924380(v23, v25, &v76);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_2478E1000, v14, v71, "#CollectionManager: daily processing failed with error: %@ for date: %s", v20, 0x16u);
      sub_2478E9620(v72, &qword_27EE57280, &unk_2479503C0);
      MEMORY[0x24C1AF180](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x24C1AF180](v73, -1, -1);
      MEMORY[0x24C1AF180](v20, -1, -1);
    }

    else
    {

      v26 = *(v17 + 8);
      v26(v18, v19);
    }

    v28 = *(v0 + 328);
    v29 = *(v0 + 296);
    v30 = *(v0 + 272);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v28;
    sub_24794B724(v1, v29, isUniquelyReferenced_nonNull_native);
    v32 = v76;
    v26(v29, v30);
    v33 = *(v0 + 336);
    v34 = *(v0 + 344);
    *(v0 + 328) = v32;
    if (v33)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  if (v5 != 2 || v3 != 12 || v4 != 0)
  {
    sub_24791778C(v3, v4, v5);
    goto LABEL_10;
  }

  (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

  v33 = *(v0 + 336);
  v34 = *(v0 + 344);
  if (v33)
  {
LABEL_16:
    v35 = *(v0 + 256);
LABEL_26:
    v40 = *(v0 + 304);
    v41 = *(v0 + 312);
    v42 = *(v0 + 272);
    v43 = *(v0 + 280);
    v74 = (v33 - 1) & v33;
    v44 = __clz(__rbit64(v33)) | (v34 << 6);
    (*(v43 + 16))(v40, *(v35 + 48) + *(v43 + 72) * v44, v42);
    v45 = *(*(v35 + 56) + 8 * v44);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    v47 = *(v46 + 48);
    (*(v43 + 32))(v41, v40, v42);
    *(v41 + v47) = v45;
    (*(*(v46 - 8) + 56))(v41, 0, 1, v46);

    v48 = v74;
    v38 = v34;
LABEL_27:
    *(v0 + 336) = v48;
    *(v0 + 344) = v38;
    v49 = *(v0 + 320);
    sub_247917674(*(v0 + 312), v49);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      v61 = *(v0 + 264);

      sub_247917728(v61 + 96, v0 + 16);
      v62 = *(v0 + 40);
      v63 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v62);
      v75 = (*(v63 + 48) + **(v63 + 48));
      v64 = swift_task_alloc();
      *(v0 + 392) = v64;
      *v64 = v0;
      v64[1] = sub_247913AA4;

      v75(v62, v63);
    }

    else
    {
      v51 = *(v0 + 296);
      v52 = *(v0 + 264);
      v53 = *(*(v0 + 320) + *(v50 + 48));
      (*(*(v0 + 280) + 32))(v51);
      sub_247917728(v52 + 96, v0 + 136);
      v54 = *(v0 + 160);
      v55 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v54);
      (*(v55 + 72))(v54, v55);
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      sub_247917728(v52 + 56, v0 + 176);
      v56 = *(v0 + 200);
      v57 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v56);
      v58 = (*(v57 + 16))(v53, v51, v56, v57);
      *(v0 + 352) = v58;
      v65 = v58;
      v66 = *(v0 + 264);

      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (*(v66 + 184) == 3)
      {
        v67 = swift_task_alloc();
        *(v0 + 360) = v67;
        *v67 = v0;
        v67[1] = sub_24791275C;
        v68 = *(v0 + 296);

        sub_247916730(v65, v68);
      }

      else
      {
        v69 = swift_task_alloc();
        *(v0 + 376) = v69;
        *v69 = v0;
        v69[1] = sub_247913100;
        v70 = *(v0 + 296);

        sub_2479168C8(v65, v70, v0 + 240);
      }
    }

    return;
  }

LABEL_18:
  v36 = ((1 << *(v0 + 233)) + 63) >> 6;
  if (v36 <= (v34 + 1))
  {
    v37 = v34 + 1;
  }

  else
  {
    v37 = ((1 << *(v0 + 233)) + 63) >> 6;
  }

  v38 = v37 - 1;
  while (1)
  {
    v39 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      v59 = *(v0 + 312);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A0, &unk_247951720);
      (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
      v48 = 0;
      goto LABEL_27;
    }

    v35 = *(v0 + 256);
    v33 = *(v35 + 8 * v39 + 64);
    ++v34;
    if (v33)
    {
      v34 = v39;
      goto LABEL_26;
    }
  }

  __break(1u);
}

uint64_t sub_247915D9C()
{
  v55 = v0;
  v0[51] = v0[50];
  v1 = v0[33];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_247917728(v1 + 16, (v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v6 = (*(v3 + 24))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v6)
  {
    sub_247917728(v0[33] + 96, (v0 + 12));
    v7 = v0[15];
    v8 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v7);
    v9 = *(v8 + 8);
    v53 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    v0[52] = v10;
    *v10 = v0;
    v10[1] = sub_24791449C;

    return v53(v7, v9);
  }

  v11 = v0[30];
  if (v11 < 1)
  {
    if (*(v0[41] + 16))
    {
      v22 = v0[41];
      if (qword_27EE571C0 != -1)
      {
        swift_once();
      }

      v23 = sub_24794ED34();
      __swift_project_value_buffer(v23, qword_27EE58DF8);

      v24 = sub_24794ED14();
      v25 = sub_24794F164();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v54[0] = v27;
        *v26 = 134218242;
        *(v26 + 4) = *(v22 + 16);

        *(v26 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574A8, &qword_247951540);
        sub_2479176E4(&qword_27EE574B0, MEMORY[0x277CC9588]);
        v28 = sub_24794EEA4();
        v30 = v29;

        v31 = sub_247924380(v28, v30, v54);

        *(v26 + 14) = v31;
        _os_log_impl(&dword_2478E1000, v24, v25, "#CollectionManager: daily processing failed for %ld days: %s", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x24C1AF180](v27, -1, -1);
        MEMORY[0x24C1AF180](v26, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v32 = v0[51];
      if (v32)
      {
        goto LABEL_30;
      }
    }

    else
    {

      v32 = v0[51];
      if (v32)
      {
LABEL_30:
        if (qword_27EE571C0 != -1)
        {
          swift_once();
        }

        v42 = sub_24794ED34();
        __swift_project_value_buffer(v42, qword_27EE58DF8);
        v43 = v32;
        v44 = sub_24794ED14();
        v45 = sub_24794F164();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          v48 = v32;
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v49;
          *v47 = v49;
          _os_log_impl(&dword_2478E1000, v44, v45, "#CollectionManager: data aggregation failed with error: %@", v46, 0xCu);
          sub_2478E9620(v47, &qword_27EE57280, &unk_2479503C0);
          MEMORY[0x24C1AF180](v47, -1, -1);
          MEMORY[0x24C1AF180](v46, -1, -1);
        }

        swift_willThrow();
        goto LABEL_2;
      }
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v33 = sub_24794ED34();
    __swift_project_value_buffer(v33, qword_27EE58DF8);

    v34 = sub_24794ED14();
    v35 = sub_24794F144();

    if (!os_log_type_enabled(v34, v35))
    {
LABEL_44:

      v4 = v0[1];
      goto LABEL_3;
    }

    v36 = v0[33];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54[0] = v38;
    *v37 = 136315138;
    v39 = *(v36 + 184);
    if (v39 > 1)
    {
      v50 = v39 == 2;
      if (v39 == 2)
      {
        v41 = "kerId";
      }

      else
      {
        v41 = "metricsCalculator";
      }

      if (v50)
      {
        v40 = 0xD000000000000011;
      }

      else
      {
        v40 = 0xD000000000000013;
      }
    }

    else
    {
      if (*(v36 + 184))
      {
        v51 = 0xEE00435346737365;
        v40 = 0x72506E6F74747562;
        goto LABEL_43;
      }

      v40 = 0xD000000000000015;
      v41 = "noWakeWord";
    }

    v51 = v41 | 0x8000000000000000;
LABEL_43:
    v52 = sub_247924380(v40, v51, v54);

    *(v37 + 4) = v52;
    _os_log_impl(&dword_2478E1000, v34, v35, "#CollectionManager: finished process for : %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x24C1AF180](v38, -1, -1);
    MEMORY[0x24C1AF180](v37, -1, -1);
    goto LABEL_44;
  }

  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v12 = sub_24794ED34();
  __swift_project_value_buffer(v12, qword_27EE58DF8);

  v13 = sub_24794ED14();
  v14 = sub_24794F164();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v54[0] = v16;
    *v15 = 134218242;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574B8, &qword_247951548);
    sub_2479176E4(&qword_27EE574B0, MEMORY[0x277CC9588]);
    v17 = sub_24794EEA4();
    v19 = sub_247924380(v17, v18, v54);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_2478E1000, v13, v14, "#CollectionManager: some audio upload failed, count: %ld for days: %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1AF180](v16, -1, -1);
    MEMORY[0x24C1AF180](v15, -1, -1);
  }

  v20 = v0[51];
  sub_2478E95CC();
  swift_allocError();
  *v21 = xmmword_24794FF00;
  *(v21 + 16) = 2;
  swift_willThrow();

LABEL_2:

  v4 = v0[1];
LABEL_3:

  return v4();
}

uint64_t sub_247916684()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247916730(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_247916754, 0, 0);
}

uint64_t sub_247916754()
{
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24794ED34();
  __swift_project_value_buffer(v1, qword_27EE58DF8);
  v2 = sub_24794ED14();
  v3 = sub_24794F144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2478E1000, v2, v3, "speakerIdOneSession processing records", v4, 2u);
    MEMORY[0x24C1AF180](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];

  sub_247917728(v6 + 96, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  (*(v9 + 24))(v7, v5, v8, v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_2479168C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_24794EBB4();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247916998, 0, 0);
}

uint64_t sub_247916998()
{
  v36 = v0;
  if (qword_27EE571C0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[23];
  v5 = sub_24794ED34();
  v0[30] = __swift_project_value_buffer(v5, qword_27EE58DF8);
  v6 = *(v3 + 16);
  v0[31] = v6;
  v0[32] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);

  v7 = sub_24794ED14();
  v8 = sub_24794F154();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[29];
  v11 = v0[26];
  v12 = v0[27];
  if (v9)
  {
    v13 = v0[22];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v14 = 136315394;
    v15 = type metadata accessor for SiriRequestRecord(0);
    v16 = MEMORY[0x24C1AE590](v13, v15);
    v18 = sub_247924380(v16, v17, &v35);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_2479176E4(&qword_27EE57288, MEMORY[0x277CC95B8]);
    v19 = sub_24794F4D4();
    v21 = v20;
    v22 = *(v12 + 8);
    v22(v10, v11);
    v23 = sub_247924380(v19, v21, &v35);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_2478E1000, v7, v8, "#CollectionManager: selectedRecords: %s for date: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1AF180](v33, -1, -1);
    MEMORY[0x24C1AF180](v14, -1, -1);
  }

  else
  {

    v22 = *(v12 + 8);
    v22(v10, v11);
  }

  v0[33] = v22;
  v24 = v0[25];
  v25 = v0[22];
  v26 = v0[23];
  sub_247917728(v24 + 96, (v0 + 2));
  v27 = v0[5];
  v28 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v27);
  (*(v28 + 16))(v25, v26, v27, v28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_247917728(v24 + 96, (v0 + 7));
  v29 = v0[10];
  v30 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v29);
  v34 = (*(v30 + 56) + **(v30 + 56));
  v31 = swift_task_alloc();
  v0[34] = v31;
  *v31 = v0;
  v31[1] = sub_247916D50;

  return v34(v29, v30);
}

uint64_t sub_247916D50()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_2479171B8;
  }

  else
  {
    v2 = sub_247916E64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247916E64()
{
  v1 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_247917728(v1 + 96, (v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_247916FA0;

  return v6(v2, v3);
}

uint64_t sub_247916FA0()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_24791748C;
  }

  else
  {
    v2 = sub_2479170B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2479170B4()
{
  v1 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_247917728(v1 + 96, (v0 + 17));
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  v4 = v0[1];

  return v4();
}

void sub_2479171B8()
{
  v30 = v0;
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[23];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2(v3, v5, v4);
  v6 = v1;
  v7 = sub_24794ED14();
  v8 = sub_24794F164();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[35];
    v10 = v0[28];
    v28 = v0[33];
    v11 = v0[26];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v12 = 138412546;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v16;
    *v13 = v16;
    *(v12 + 12) = 2080;
    sub_2479176E4(&qword_27EE57288, MEMORY[0x277CC95B8]);
    v17 = sub_24794F4D4();
    v19 = v18;
    v28(v10, v11);
    v20 = sub_247924380(v17, v19, &v29);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_2478E1000, v7, v8, "#CollectionManager: upload audio failed with error: %@ for date: %s", v12, 0x16u);
    sub_2478E9620(v13, &qword_27EE57280, &unk_2479503C0);
    MEMORY[0x24C1AF180](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1AF180](v14, -1, -1);
    MEMORY[0x24C1AF180](v12, -1, -1);
  }

  else
  {
    v21 = v0[33];
    v22 = v0[28];
    v23 = v0[26];

    v21(v22, v23);
  }

  v24 = v0[24];
  if (__OFADD__(*v24, 1))
  {
    __break(1u);
  }

  else
  {
    v25 = v0[35];
    ++*v24;
    sub_2478E95CC();
    swift_allocError();
    *v26 = xmmword_24794FF00;
    *(v26 + 16) = 2;
    swift_willThrow();

    v27 = v0[1];

    v27();
  }
}

uint64_t sub_24791748C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247917500()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_2478E9620((v0 + 17), &qword_27EE574C0, &unk_247951550);

  return swift_deallocClassInstance();
}

uint64_t sub_24791758C()
{
  v1 = *v0;
  BYTE8(v3) = 0;
  sub_24794F344();
  MEMORY[0x24C1AE4C0](0xD000000000000022, 0x8000000247955B30);
  *&v3 = *(v1 + 184);
  sub_24794F3F4();
  MEMORY[0x24C1AE4C0](41, 0xE100000000000000);
  return *(&v3 + 1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_247917674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57498, &unk_247951530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2479176E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24794EBB4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247917728(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_24791778C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

id sub_2479177A4(uint64_t a1, uint64_t (**a2)(void, void), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_24794ECC4();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v64 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24794E974();
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  v58 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v57 - v17;
  v19 = sub_24794EBB4();
  v20 = *(v19 - 8);
  v65 = v19;
  v66 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v63 = v57 - v24;
  v25 = type metadata accessor for SiriProfileManager();
  v71 = v25;
  v72 = &off_2859852E8;
  v70[0] = a3;
  *(a6 + 24) = sub_24794DCFC(MEMORY[0x277D84F90]);
  v67 = a2[22](a1, a2);
  if (!v26)
  {
    goto LABEL_8;
  }

  v27 = v26;
  type metadata accessor for MetricsCalcSELFReporter();
  swift_allocObject();

  v28 = sub_247905564(a1, a2, a4, a5);
  if (!v28)
  {

LABEL_8:

LABEL_9:

    type metadata accessor for MetricsCalcActionEvent();
    swift_deallocPartialClassInstance();
    a6 = 0;
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(v70);
    return a6;
  }

  v29 = v28;
  v30 = _sSo17SISchemaISOLocaleC23CoreSpeechDataAnalyticsE10fromStringyABSgSSFZ_0(v67, v27);
  if (!v30)
  {

    goto LABEL_9;
  }

  v57[0] = v29;
  v57[1] = a5;

  __swift_project_boxed_opaque_existential_1(v70, v25);
  sub_2478ED848(v18);
  v31 = v65;
  v32 = v66;
  if ((*(v66 + 48))(v18, 1, v65) == 1)
  {
    sub_2478E9620(v18, &qword_27EE572D0, &unk_2479504E0);
    v33 = 0;
    v34 = 1;
  }

  else
  {
    (*(v32 + 32))(v63, v18, v31);
    sub_24794EC94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574E0, &qword_247951588);
    v35 = sub_24794ECB4();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_247951560;
    (*(v36 + 104))(v38 + v37, *MEMORY[0x277CC9998], v35);
    sub_24792CE2C(v38);
    swift_setDeallocating();
    (*(v36 + 8))(v38 + v37, v35);
    swift_deallocClassInstance();
    sub_24794EBA4();
    v39 = v58;
    v41 = v63;
    v40 = v64;
    sub_24794EC64();

    v42 = *(v66 + 8);
    v66 += 8;
    v43 = v23;
    v44 = v65;
    v42(v43, v65);
    (*(v61 + 8))(v40, v62);
    v45 = sub_24794E944();
    v47 = v46;
    (*(v59 + 8))(v39, v60);
    v48 = v41;
    v33 = v45;
    v49 = v44;
    v34 = v47;
    v42(v48, v49);
  }

  v50 = a2[23](a1, a2);
  v52 = v51;
  v53 = a2[25](a1, a2);
  result = _sSo17SISchemaISOLocaleC23CoreSpeechDataAnalyticsE10fromStringyABSgSSFZ_0(v67, v27);
  if (result || (result = [objc_allocWithZone(MEMORY[0x277D5A900]) init]) != 0)
  {
    v55 = result;

    __swift_project_boxed_opaque_existential_1(v70, v71);
    v56 = sub_2478EDC88();
    v69 = v34 & 1;
    v68 = BYTE4(v56) & 1;
    *(a6 + 32) = v50;
    *(a6 + 40) = v52;
    *(a6 + 48) = v53;
    *(a6 + 56) = v55;
    *(a6 + 64) = v33;
    *(a6 + 72) = v34 & 1;
    *(a6 + 76) = v56;
    *(a6 + 80) = BYTE4(v56) & 1;
    *(a6 + 16) = v57[0];
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_247917DF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_2478E9680(a2, &v35, &qword_27EE574D8, &qword_247951580);
  if (!v36)
  {
    sub_2478E9620(&v35, &qword_27EE574D8, &qword_247951580);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v12 = sub_24794ED34();
    __swift_project_value_buffer(v12, qword_27EE58DF8);
    v13 = sub_24794ED14();
    v14 = sub_24794F164();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2478E1000, v13, v14, "#CollectionManager: CollectionManager cannot be created without a valid policy", v15, 2u);
      MEMORY[0x24C1AF180](v15, -1, -1);
    }

    return 0;
  }

  sub_2478E2F88(&v35, v37);
  sub_2478E9680(a3, &v33, &qword_27EE574D0, &qword_247951578);
  if (!v34)
  {
    sub_2478E9620(&v33, &qword_27EE574D0, &qword_247951578);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v16 = sub_24794ED34();
    __swift_project_value_buffer(v16, qword_27EE58DF8);
    v17 = sub_24794ED14();
    v18 = sub_24794F164();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2478E1000, v17, v18, "#CollectionManager: CollectionManager cannot be created without record selection rules", v19, 2u);
      MEMORY[0x24C1AF180](v19, -1, -1);
    }

    goto LABEL_21;
  }

  sub_2478E2F88(&v33, &v35);
  sub_2478E9680(a4, &v31, &qword_27EE574C8, &qword_247951570);
  if (!v32)
  {
    sub_2478E9620(&v31, &qword_27EE574C8, &qword_247951570);
    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v20 = sub_24794ED34();
    __swift_project_value_buffer(v20, qword_27EE58DF8);
    v21 = sub_24794ED14();
    v22 = sub_24794F164();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2478E1000, v21, v22, "#CollectionManager: CollectionManager cannot be created without a valid action", v23, 2u);
      MEMORY[0x24C1AF180](v23, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(&v35);
LABEL_21:
    __swift_destroy_boxed_opaque_existential_0(v37);
    return 0;
  }

  sub_2478E2F88(&v31, &v33);
  sub_2478E9680(a5, &v29, &qword_27EE574C0, &unk_247951550);
  if (v30)
  {
    sub_2478E2F88(&v29, &v31);
    sub_2478E2F88(v37, &v29);
    sub_2478E2F88(&v35, v28);
    sub_2478E2F88(&v33, v26);
    sub_2478E2F88(&v31, v25);
    type metadata accessor for CollectionManager();
    v11 = swift_allocObject();
    *(v11 + 152) = 0u;
    *(v11 + 168) = 0u;
    *(v11 + 136) = 0u;
    sub_2478E2F88(&v29, v11 + 16);
    sub_2478E2F88(v28, v11 + 56);
    sub_2478E2F88(v26, v11 + 96);
    swift_beginAccess();
    sub_24791995C(v25, v11 + 136);
  }

  else
  {
    sub_2478E9620(&v29, &qword_27EE574C0, &unk_247951550);
    sub_2478E2F88(v37, &v31);
    sub_2478E2F88(&v35, &v29);
    sub_2478E2F88(&v33, v28);
    type metadata accessor for CollectionManager();
    memset(v26, 0, sizeof(v26));
    v27 = 0;
    v11 = swift_allocObject();
    *(v11 + 152) = 0u;
    *(v11 + 168) = 0u;
    *(v11 + 136) = 0u;
    sub_2478E2F88(&v31, v11 + 16);
    sub_2478E2F88(&v29, v11 + 56);
    sub_2478E2F88(v28, v11 + 96);
    swift_beginAccess();
    sub_24791995C(v26, v11 + 136);
  }

  swift_endAccess();
  *(v11 + 176) = a6;
  *(v11 + 184) = v10;

  return v11;
}

uint64_t sub_247918304(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t (**a8)(void, void), char a9)
{
  v138 = a6;
  v137 = a5;
  v136 = sub_24794EBB4();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  type metadata accessor for SamplingPolicyMetaDataManager();
  v17 = swift_allocObject();
  *(v17 + 24) = v16;
  type metadata accessor for SamplingMetaDataPrefStore();
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = v16;
  type metadata accessor for SamplingPolicyMetaDataFactory();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v18 + 32) = v19;
  *(v17 + 48) = v18;
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v17 + 56) = v20;
  v21 = a4;

  v22 = sub_24793F9E8(a2, a3);

  *(v17 + 16) = v22;
  v23 = objc_allocWithZone(MEMORY[0x277D653F0]);
  v24 = sub_24794EEF4();
  v25 = [v23 initWithLocale_];

  v133 = type metadata accessor for SiriProfileManager();
  swift_allocObject();

  v140 = a2;
  v139 = a3;
  v26 = sub_2478EE438(a2, a3, a7, a8, v25);

  type metadata accessor for RequestAudioFileManager();
  v27 = swift_allocObject();
  v27[6] = 0;
  v28 = [objc_opt_self() sharedPreferences];
  v29 = [v28 getRPIAssistantAudioSamplingDirectory];

  v30 = sub_24794EF04();
  v32 = v31;

  v33 = v27;
  v27[2] = v30;
  v27[3] = v32;
  v34 = v26;
  v27[4] = a7;
  v27[5] = a8;
  v27[6] = 0;

  v141 = a7;
  v162[0] = a7;
  v162[1] = a8;
  v142 = a8;
  v35 = v21;
  v162[2] = v21;
  v162[3] = v34;
  v162[4] = v27;
  v162[5] = v17;
  if (v16 <= 1)
  {
    if (!v16)
    {
      v133 = type metadata accessor for SpkrIdSamplingPolicy(0);
      v36 = swift_allocObject();
      v37 = (v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_locale);
      v38 = v140;
      v39 = v139;
      *v37 = v140;
      v37[1] = v39;
      *(v36 + 16) = v38;
      *(v36 + 24) = v39;
      *(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxNumRecordsPerDay) = 4;
      *(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxSamplingDurationInDays) = 180;
      *(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_intermediateUploadCount) = 25;
      *(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_maxTotalRecordsCount) = 150;
      *(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_userSelectionChance) = 0x3FC1EB851EB851ECLL;
      *(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_isNewVoiceProfile) = 0;
      *(v36 + 32) = 0;
      swift_retain_n();
      v40 = v21;
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      v41 = v40;
      v42 = v134;
      sub_24794EBA4();
      (*(v135 + 32))(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_currentDate, v42, v136);
      v136 = type metadata accessor for SiriRequestRecordFactory();
      v43 = swift_allocObject();
      *(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_requestRecordFactory) = v43;
      v44 = (v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_samplingUtils);
      v45 = v142;
      *v44 = v141;
      v44[1] = v45;
      *(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_configUserDefaults) = v41;
      *(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_metaDataManager) = v17;
      *(v43 + 16) = 0;
      *(v36 + OBJC_IVAR____TtC23CoreSpeechDataAnalytics29BaseSiriRequestSamplingPolicy_siriProfileManager) = v34;
      v46 = v41;

      sub_2478EA1B4();

      v135 = type metadata accessor for SpkrIdRecordSelectionRule();
      *(swift_allocObject() + 80) = v46;
      LOBYTE(v156) = 0;
      v103 = v46;

      v104 = sub_2478EC5E8(v38, v39, &v156, v36, v162);

      if (v104)
      {
      }

      v140 = v104;
      if (v36)
      {
        type metadata accessor for SpkrIdActionEvent();
        v105 = swift_allocObject();
        *(v105 + 136) = a9 & 1;
        *(v105 + 120) = v38;
        *(v105 + 128) = v39;
        *(v105 + 88) = v36;
        *(v105 + 16) = v38;
        *(v105 + 24) = v39;
        v106 = v138;
        *(v105 + 48) = v137;
        *(v105 + 56) = v106;
        *(v105 + 80) = 0;
        v107 = swift_allocObject();
        *(v107 + 16) = 0;
        v108 = MEMORY[0x277D84F90];
        *(v105 + 64) = v34;
        *(v105 + 72) = v107;
        *(v105 + 96) = v108;
        *(v105 + 104) = v33;
        v109 = v142;
        *(v105 + 32) = v141;
        *(v105 + 40) = v109;
        LOBYTE(v156) = 0;
        type metadata accessor for SiriRequestBiomeProcessor();
        swift_allocObject();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        swift_retain_n();
        v110 = v103;

        v119 = sub_2478EE784(&v156);

        *(v105 + 112) = v119;
      }

      else
      {
        type metadata accessor for SpkrIdActionEvent();
        swift_allocObject();
        v111 = qword_27EE571C0;
        v142 = v103;
        v112 = v103;

        if (v111 != -1)
        {
          swift_once();
        }

        v113 = sub_24794ED34();
        __swift_project_value_buffer(v113, qword_27EE58DF8);
        v114 = sub_24794ED14();
        v115 = sub_24794F164();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = v34;
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_2478E1000, v114, v115, "#SpkrIdActionEvent: Cannot create sampling policy", v117, 2u);
          v118 = v117;
          v34 = v116;
          MEMORY[0x24C1AF180](v118, -1, -1);
        }

        swift_deallocPartialClassInstance();
        v105 = 0;
        v103 = v142;
      }

      v120 = v140;
      v121 = type metadata accessor for SpkrIdAudioStoreRule();
      v122 = swift_allocObject();
      v161 = 0;
      if (v36)
      {
        v123 = &off_285985290;
        v124 = v36;
        v125 = v133;
      }

      else
      {
        v124 = 0;
        v125 = 0;
        v123 = 0;
        v157 = 0;
        v158 = 0;
      }

      v156 = v124;
      v159 = v125;
      v160 = v123;
      if (v120)
      {
        v126 = &off_2859852D0;
        v127 = v120;
        v128 = v135;
      }

      else
      {
        v127 = 0;
        v128 = 0;
        v126 = 0;
        v152 = 0;
        v153 = 0;
      }

      v151 = v127;
      v154 = v128;
      v155 = v126;
      v129 = 0;
      if (v105)
      {
        v129 = type metadata accessor for SpkrIdActionEvent();
        v130 = &off_2859851F0;
      }

      else
      {
        v130 = 0;
        v147 = 0;
        v148 = 0;
      }

      v146 = v105;
      v149 = v129;
      v150 = v130;
      v145 = &off_2859857B0;
      *(&v144 + 1) = v121;
      *&v143 = v122;

      v98 = sub_247917DF8(&v161, &v156, &v151, &v146, &v143, v34);

      goto LABEL_45;
    }

    v66 = v21;
    swift_retain_n();
    v67 = v66;
    swift_retain_n();
    swift_retain_n();
    v68 = v67;
    v69 = v139;

    v70 = v140;
    v71 = sub_2478FBC2C(v140, v69, v68, v162);
    v141 = type metadata accessor for ButtonPressRecordSelectionRule();
    swift_allocObject();
    LOBYTE(v156) = 1;
    v72 = v34;
    v73 = v68;

    v74 = sub_2478EC5E8(v70, v69, &v156, v71, v162);
    v75 = type metadata accessor for ButtonPressActionEvent();
    swift_allocObject();
    v142 = v73;

    v136 = v33;

    v76 = v138;

    v77 = sub_2478F6F64(v70, v69, v137, v76, v71, v162);
    v78 = type metadata accessor for ButtonPressAudioStoreRule();
    v79 = swift_allocObject();
    *(v79 + 16) = v70;
    *(v79 + 24) = v69;
    v161 = 1;
    if (v71)
    {
      v80 = type metadata accessor for ButtonPressSamplingPolicy(0);
      v81 = &off_285985290;
      v82 = v71;
    }

    else
    {
      v82 = 0;
      v80 = 0;
      v81 = 0;
      v157 = 0;
      v158 = 0;
    }

    v156 = v82;
    v159 = v80;
    v160 = v81;
    if (v74)
    {
      v99 = &off_2859852D0;
      v100 = v74;
      v101 = v141;
    }

    else
    {
      v100 = 0;
      v101 = 0;
      v99 = 0;
      v152 = 0;
      v153 = 0;
    }

    v151 = v100;
    v154 = v101;
    v155 = v99;
    if (v77)
    {
      v102 = &off_2859851F0;
    }

    else
    {
      v75 = 0;
      v102 = 0;
      v147 = 0;
      v148 = 0;
    }

    v146 = v77;
    v149 = v75;
    v150 = v102;
    v145 = &off_285985598;
    *(&v144 + 1) = v78;
    *&v143 = v79;

    v98 = sub_247917DF8(&v161, &v156, &v151, &v146, &v143, v72);

LABEL_23:

LABEL_45:

LABEL_46:
    sub_2478E9620(&v143, &qword_27EE574C0, &unk_247951550);
    sub_2478E9620(&v146, &qword_27EE574C8, &qword_247951570);
    sub_2478E9620(&v151, &qword_27EE574D0, &qword_247951578);
    sub_2478E9620(&v156, &qword_27EE574D8, &qword_247951580);
    return v98;
  }

  if (v16 == 2)
  {
    v139 = type metadata accessor for MetricsCalcSamplingPolicy();
    v47 = swift_allocObject();
    v48 = v142;
    *(v47 + 16) = v141;
    *(v47 + 24) = v48;
    v135 = type metadata accessor for MetricsCalcRecordSelectionRule();
    v49 = swift_allocObject();
    type metadata accessor for SiriRequestRecordFactory();
    v50 = swift_allocObject();
    *(v50 + 16) = 2;
    *(v49 + 16) = v50;
    v51 = v133;
    v159 = v133;
    v160 = &off_2859852E8;
    v156 = v34;
    v134 = type metadata accessor for MetricsCalcActionEvent();
    v52 = swift_allocObject();
    v53 = __swift_mutable_project_boxed_opaque_existential_1(&v156, v51);
    MEMORY[0x28223BE20](v53);
    v55 = v34;
    v56 = (&v132 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = *v56;
    v140 = v55;
    swift_retain_n();
    v59 = v35;

    v136 = v33;

    v60 = v138;

    v61 = sub_2479177A4(v141, v142, v58, v137, v60, v52);
    __swift_destroy_boxed_opaque_existential_0(&v156);
    v62 = type metadata accessor for MetricsCalcAudioStoreRule();
    v63 = swift_allocObject();
    v161 = 2;
    v159 = v139;
    v160 = &off_285985770;
    v156 = v47;
    v154 = v135;
    v155 = &off_285985758;
    v151 = v49;
    if (v61)
    {
      v64 = &off_285985650;
      v65 = v134;
    }

    else
    {
      v65 = 0;
      v64 = 0;
      v147 = 0;
      v148 = 0;
    }

    v146 = v61;
    v149 = v65;
    v150 = v64;
    v145 = &off_2859856B0;
    *(&v144 + 1) = v62;
    *&v143 = v63;

    v98 = sub_247917DF8(&v161, &v156, &v151, &v146, &v143, 0);

    goto LABEL_23;
  }

  v138 = type metadata accessor for SpkrIdSamplingOneSessionPolicy();
  swift_allocObject();
  v83 = v21;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v84 = v83;
  v85 = v139;

  v86 = v140;
  v87 = sub_24790E8A4(v140, v85, v162);
  v88 = type metadata accessor for SpkrIdSamplingOneSessionSelectionRule();
  swift_allocObject();
  v89 = v84;

  v90 = sub_247910A80(v86, v85, v162);
  if (v90)
  {
    v91 = v90;
    v137 = v89;
    v92 = type metadata accessor for SpkrIdSamplingOneSessionActionEvent();
    v93 = swift_allocObject();
    v93[2] = v86;
    v93[3] = v85;
    v93[4] = v34;
    v94 = v142;
    v93[6] = v141;
    v93[7] = v94;
    v93[8] = v17;
    v93[9] = v91;
    type metadata accessor for SiriRequestRecordFactory();
    v95 = swift_allocObject();
    *(v95 + 16) = 3;
    v93[5] = v95;
    v161 = 3;
    if (v87)
    {
      v96 = &off_2859858C8;
      v97 = v138;
    }

    else
    {
      v97 = 0;
      v96 = 0;
      v157 = 0;
      v158 = 0;
    }

    v156 = v87;
    v159 = v97;
    v160 = v96;
    v154 = v88;
    v155 = &off_285985908;
    v151 = v91;
    v149 = v92;
    v150 = &off_2859857D8;
    v146 = v93;
    v145 = 0;
    v144 = 0u;
    v143 = 0u;
    swift_retain_n();

    v98 = sub_247917DF8(&v161, &v156, &v151, &v146, &v143, 0);

    goto LABEL_46;
  }

  return 0;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_24791995C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE574C0, &unk_247951550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CollectionManagerProcessResult.errorMessage.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *CollectionManagerProcessResult.error.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_247919A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_247919AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_247919B08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v46 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE57278, &unk_247950590);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v39 - v8;
  v10 = sub_24794EC04();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v39 - v15;
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = v17;
  if (v17)
  {
    v45 = a4;
    v19 = *(a3 + 16);
    if (v19)
    {
      v40 = a2;
      v41 = v9;
      v42 = v14;
      v43 = v11;
      v47 = *(v11 + 16);
      v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v39[1] = a3;
      v21 = a3 + v20;
      v22 = *(v11 + 72);
      v23 = v10;
      v24 = (v11 + 8);
      v44 = v17;
      v25 = v17;
      do
      {
        v47(v16, v21, v23);
        v26 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v27 = sub_24794EBE4();
        (*v24)(v16, v23);
        v28 = [v26 initWithNSUUID_];

        [v25 addOdsampleIds_];
        v21 += v22;
        --v19;
      }

      while (v19);

      v11 = v43;
      v18 = v44;
      v10 = v23;
      v9 = v41;
      v14 = v42;
      a2 = v40;
    }

    else
    {
      v29 = v17;
    }

    [v18 setCollectionStatus_];

    if (a2)
    {
      sub_24794EBC4();

      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v14, v9, v10);
        v34 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v35 = v18;
        v36 = sub_24794EBE4();
        v37 = [v34 initWithNSUUID_];

        [v35 setUserSamplingId_];
        (*(v11 + 8))(v14, v10);

        return v18;
      }

      sub_2478E9620(v9, &qword_27EE57278, &unk_247950590);
    }

    if (qword_27EE571C0 != -1)
    {
      swift_once();
    }

    v30 = sub_24794ED34();
    __swift_project_value_buffer(v30, qword_27EE58DF8);
    v31 = sub_24794ED14();
    v32 = sub_24794F164();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2478E1000, v31, v32, "#SiriRequestRecord: Cannot initialize ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported", v33, 2u);
      MEMORY[0x24C1AF180](v33, -1, -1);
    }

    return 0;
  }

  else
  {
  }

  return v18;
}

id sub_247919F48(char *a1)
{
  v2 = sub_24794EC04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    v8 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v9 = v7;
    v10 = sub_24794EBE4();
    v11 = [v8 initWithNSUUID_];

    v12 = *(v3 + 8);
    v12(v5, v2);
    [v9 setOdsampleId_];

    v12(a1, v2);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall SISchemaISOLocale.toString()()
{
  v1 = v0;
  v2 = [v0 languageCode];
  if (v2 > 0xB9)
  {
    v3 = @"ISOLANGUAGECODE_UNKNOWN";
    v4 = @"ISOLANGUAGECODE_UNKNOWN";
  }

  else
  {
    v3 = off_278EB41F8[v2];
    v4 = off_278EB47C8[v2];
  }

  v5 = v3;
  v6 = v4;
  sub_24794EF04();

  v7 = [v1 countryCode];
  if (v7 > 0xFA)
  {
    v8 = @"COUNTRYCODE_UNKNOWN";
    v9 = @"COUNTRYCODE_UNKNOWN";
  }

  else
  {
    v8 = off_278EB4D98[v7];
    v9 = off_278EB5570[v7];
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_24794EF04();
  v14 = v13;

  v15 = sub_24794EF24();
  v17 = v16;

  if (sub_24794F004())
  {
    v18 = sub_24794EF84();
    v19 = sub_24791EE78(v18, v12, v14);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v12 = MEMORY[0x24C1AE470](v19, v21, v23, v25);
    v14 = v26;
  }

  MEMORY[0x24C1AE4C0](45, 0xE100000000000000);

  MEMORY[0x24C1AE4C0](v12, v14);

  v27 = v15;
  v28 = v17;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

void sub_24791A2DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v5 = *(sub_24794EC04() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v9 = sub_24794EBE4();
      v10 = [v8 initWithNSUUID_];

      [v3 addOdsampleIds_];
      v6 += v7;
      --v2;
    }

    while (v2);
  }
}

void sub_24791A3D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a1;
  v6 = sub_24794EC04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_24794EBB4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  sub_2478EE3C8(a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2478E9620(v12, &qword_27EE572D0, &unk_2479504E0);
    if (!a3)
    {
LABEL_5:
      v20 = v27;
      (*(v7 + 16))(v9, v27, v6);
      v21 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v22 = sub_24794EBE4();
      v23 = [v21 initWithNSUUID_];

      v24 = *(v7 + 8);
      v24(v9, v6);
      [v18 setEnrollmentDonationId_];

      sub_2478E9620(a4, &qword_27EE572D0, &unk_2479504E0);
      v24(v20, v6);
      return;
    }

LABEL_4:
    v19 = sub_2479440D4(v26, a3);

    [v18 setTriggerPhrase_];
    goto LABEL_5;
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_24794EB74();
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v25 > -1.0)
  {
    if (v25 < 1.84467441e19)
    {
      [v18 setApproximateGenerationTimeStamp_];
      (*(v14 + 8))(v16, v13);
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_24791A758(char *a1, uint64_t a2, char *a3)
{
  v6 = sub_24794EC04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v10)
  {
    v17 = *(v7 + 8);
    goto LABEL_7;
  }

  v25 = a1;
  v26 = a2;
  v11 = *(v7 + 16);
  v11(v9, a1, v6);
  v12 = a3;
  v13 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v23 = v10;
  v14 = v10;
  v15 = sub_24794EBE4();
  v16 = [v13 initWithNSUUID_];

  v17 = *(v7 + 8);
  v17(v9, v6);
  [v14 setClockIdentifier_];

  v24 = v12;
  v11(v9, v12, v6);
  a2 = v26;
  v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v19 = sub_24794EBE4();
  v20 = [v18 initWithNSUUID_];

  v17(v9, v6);
  [v14 setRequestId_];

  sub_24794EB74();
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v21 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v21 < 1.84467441e19)
  {
    [v14 setApproximateSessionTimeStamp_];

    a3 = v24;
    a1 = v25;
LABEL_7:
    v17(a3, v6);
    v22 = sub_24794EBB4();
    (*(*(v22 - 8) + 8))(a2, v22);
    v17(a1, v6);
    return;
  }

LABEL_10:
  __break(1u);
}

unint64_t sub_24791AA24(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_24794F344();

    v4 = 0xD00000000000001ELL;
    swift_getErrorValue();
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_24794F344();

    v4 = 0xD000000000000018;
    swift_getErrorValue();
LABEL_5:
    v1 = sub_24794F524();
    MEMORY[0x24C1AE4C0](v1);

    return v4;
  }

  v3 = 0xD00000000000002FLL;
  if (a1 == 0x8000000000000008)
  {
    v3 = 0xD000000000000037;
  }

  if (a1 == 0x8000000000000000)
  {
    return 0xD000000000000040;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_24791ABA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_24794F344();

    v5 = 0xD00000000000001BLL;
    swift_getErrorValue();
    v3 = sub_24794F524();
    MEMORY[0x24C1AE4C0](v3);
  }

  else
  {
    v5 = 0;
    sub_24794F344();
    MEMORY[0x24C1AE4C0](0xD000000000000025, 0x8000000247955C80);
    sub_24794F0F4();
    MEMORY[0x24C1AE4C0](0x20747562202C7A48, 0xEC00000020746F67);
    sub_24794F0F4();
    MEMORY[0x24C1AE4C0](31304, 0xE200000000000000);
  }

  return v5;
}

unint64_t sub_24791AD04@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_24792FCA8(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_24792FC44(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_24794EAE4();
    v16 = v15;
    result = sub_24791EFD8(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

id _sSo17SISchemaISOLocaleC23CoreSpeechDataAnalyticsE10fromStringyABSgSSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24794E894();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24794E884();
  v24[0] = a1;
  v24[1] = a2;
  sub_24791F02C();
  v8 = sub_24794F254();
  v9 = v8;
  v10 = v8[2];
  if (v10 == 2)
  {
    sub_24794EF34();
    v16 = sub_24794EEF4();

    v13 = v16;
    if ([v13 isEqualToString:@"ISOLANGUAGECODE_UNKNOWN"])
    {
      v14 = 0;
    }

    else if ([v13 isEqualToString:@"AB"])
    {
      v14 = 1;
    }

    else if ([v13 isEqualToString:@"AA"])
    {
      v14 = 2;
    }

    else if ([v13 isEqualToString:@"AF"])
    {
      v14 = 3;
    }

    else if ([v13 isEqualToString:@"AK"])
    {
      v14 = 4;
    }

    else if ([v13 isEqualToString:@"SQ"])
    {
      v14 = 5;
    }

    else if ([v13 isEqualToString:@"AM"])
    {
      v14 = 6;
    }

    else if ([v13 isEqualToString:@"AR"])
    {
      v14 = 7;
    }

    else if ([v13 isEqualToString:@"AN"])
    {
      v14 = 8;
    }

    else if ([v13 isEqualToString:@"HY"])
    {
      v14 = 9;
    }

    else if ([v13 isEqualToString:@"AS"])
    {
      v14 = 10;
    }

    else if ([v13 isEqualToString:@"AV"])
    {
      v14 = 11;
    }

    else if ([v13 isEqualToString:@"AE"])
    {
      v14 = 12;
    }

    else if ([v13 isEqualToString:@"AY"])
    {
      v14 = 13;
    }

    else if ([v13 isEqualToString:@"AZ"])
    {
      v14 = 14;
    }

    else if ([v13 isEqualToString:@"BM"])
    {
      v14 = 15;
    }

    else if ([v13 isEqualToString:@"BA"])
    {
      v14 = 16;
    }

    else if ([v13 isEqualToString:@"EU"])
    {
      v14 = 17;
    }

    else if ([v13 isEqualToString:@"BE"])
    {
      v14 = 18;
    }

    else if ([v13 isEqualToString:@"BN"])
    {
      v14 = 19;
    }

    else if ([v13 isEqualToString:@"BI"])
    {
      v14 = 20;
    }

    else if ([v13 isEqualToString:@"BS"])
    {
      v14 = 21;
    }

    else if ([v13 isEqualToString:@"BR"])
    {
      v14 = 22;
    }

    else if ([v13 isEqualToString:@"BG"])
    {
      v14 = 23;
    }

    else if ([v13 isEqualToString:@"MY"])
    {
      v14 = 24;
    }

    else if ([v13 isEqualToString:@"CA"])
    {
      v14 = 25;
    }

    else if ([v13 isEqualToString:@"CH"])
    {
      v14 = 26;
    }

    else if ([v13 isEqualToString:@"CE"])
    {
      v14 = 27;
    }

    else if ([v13 isEqualToString:@"NY"])
    {
      v14 = 28;
    }

    else if ([v13 isEqualToString:@"ZH"])
    {
      v14 = 29;
    }

    else if ([v13 isEqualToString:@"CV"])
    {
      v14 = 30;
    }

    else if ([v13 isEqualToString:@"KW"])
    {
      v14 = 31;
    }

    else if ([v13 isEqualToString:@"CO"])
    {
      v14 = 32;
    }

    else if ([v13 isEqualToString:@"CR"])
    {
      v14 = 33;
    }

    else if ([v13 isEqualToString:@"HR"])
    {
      v14 = 34;
    }

    else if ([v13 isEqualToString:@"CS"])
    {
      v14 = 35;
    }

    else if ([v13 isEqualToString:@"DA"])
    {
      v14 = 36;
    }

    else if ([v13 isEqualToString:@"DV"])
    {
      v14 = 37;
    }

    else if ([v13 isEqualToString:@"NL"])
    {
      v14 = 38;
    }

    else if ([v13 isEqualToString:@"DZ"])
    {
      v14 = 39;
    }

    else if ([v13 isEqualToString:@"EN"])
    {
      v14 = 40;
    }

    else if ([v13 isEqualToString:@"EO"])
    {
      v14 = 41;
    }

    else if ([v13 isEqualToString:@"ET"])
    {
      v14 = 42;
    }

    else if ([v13 isEqualToString:@"EE"])
    {
      v14 = 43;
    }

    else if ([v13 isEqualToString:@"FO"])
    {
      v14 = 44;
    }

    else if ([v13 isEqualToString:@"FJ"])
    {
      v14 = 45;
    }

    else if ([v13 isEqualToString:@"FI"])
    {
      v14 = 46;
    }

    else if ([v13 isEqualToString:@"FR"])
    {
      v14 = 47;
    }

    else if ([v13 isEqualToString:@"FF"])
    {
      v14 = 48;
    }

    else if ([v13 isEqualToString:@"GL"])
    {
      v14 = 49;
    }

    else if ([v13 isEqualToString:@"KA"])
    {
      v14 = 50;
    }

    else if ([v13 isEqualToString:@"DE"])
    {
      v14 = 51;
    }

    else if ([v13 isEqualToString:@"EL"])
    {
      v14 = 52;
    }

    else if ([v13 isEqualToString:@"GN"])
    {
      v14 = 53;
    }

    else if ([v13 isEqualToString:@"GU"])
    {
      v14 = 54;
    }

    else if ([v13 isEqualToString:@"HT"])
    {
      v14 = 55;
    }

    else if ([v13 isEqualToString:@"HA"])
    {
      v14 = 56;
    }

    else if ([v13 isEqualToString:@"HE"])
    {
      v14 = 57;
    }

    else if ([v13 isEqualToString:@"HZ"])
    {
      v14 = 58;
    }

    else if ([v13 isEqualToString:@"HI"])
    {
      v14 = 59;
    }

    else if ([v13 isEqualToString:@"HO"])
    {
      v14 = 60;
    }

    else if ([v13 isEqualToString:@"HU"])
    {
      v14 = 61;
    }

    else if ([v13 isEqualToString:@"IA"])
    {
      v14 = 62;
    }

    else if ([v13 isEqualToString:@"ID"])
    {
      v14 = 63;
    }

    else if ([v13 isEqualToString:@"IE"])
    {
      v14 = 64;
    }

    else if ([v13 isEqualToString:@"GA"])
    {
      v14 = 65;
    }

    else if ([v13 isEqualToString:@"IG"])
    {
      v14 = 66;
    }

    else if ([v13 isEqualToString:@"IK"])
    {
      v14 = 67;
    }

    else if ([v13 isEqualToString:@"IO"])
    {
      v14 = 68;
    }

    else if ([v13 isEqualToString:@"IS"])
    {
      v14 = 69;
    }

    else if ([v13 isEqualToString:@"IT"])
    {
      v14 = 70;
    }

    else if ([v13 isEqualToString:@"IU"])
    {
      v14 = 71;
    }

    else if ([v13 isEqualToString:@"JA"])
    {
      v14 = 72;
    }

    else if ([v13 isEqualToString:@"JV"])
    {
      v14 = 73;
    }

    else if ([v13 isEqualToString:@"KL"])
    {
      v14 = 74;
    }

    else if ([v13 isEqualToString:@"KN"])
    {
      v14 = 75;
    }

    else if ([v13 isEqualToString:@"KR"])
    {
      v14 = 76;
    }

    else if ([v13 isEqualToString:@"KS"])
    {
      v14 = 77;
    }

    else if ([v13 isEqualToString:@"KK"])
    {
      v14 = 78;
    }

    else if ([v13 isEqualToString:@"KM"])
    {
      v14 = 79;
    }

    else if ([v13 isEqualToString:@"KI"])
    {
      v14 = 80;
    }

    else if ([v13 isEqualToString:@"RW"])
    {
      v14 = 81;
    }

    else if ([v13 isEqualToString:@"KY"])
    {
      v14 = 82;
    }

    else if ([v13 isEqualToString:@"KV"])
    {
      v14 = 83;
    }

    else if ([v13 isEqualToString:@"KG"])
    {
      v14 = 84;
    }

    else if ([v13 isEqualToString:@"KO"])
    {
      v14 = 85;
    }

    else if ([v13 isEqualToString:@"KU"])
    {
      v14 = 86;
    }

    else if ([v13 isEqualToString:@"KJ"])
    {
      v14 = 87;
    }

    else if ([v13 isEqualToString:@"LA"])
    {
      v14 = 88;
    }

    else if ([v13 isEqualToString:@"LB"])
    {
      v14 = 89;
    }

    else if ([v13 isEqualToString:@"LG"])
    {
      v14 = 90;
    }

    else if ([v13 isEqualToString:@"LI"])
    {
      v14 = 91;
    }

    else if ([v13 isEqualToString:@"LN"])
    {
      v14 = 92;
    }

    else if ([v13 isEqualToString:@"LO"])
    {
      v14 = 93;
    }

    else if ([v13 isEqualToString:@"LT"])
    {
      v14 = 94;
    }

    else if ([v13 isEqualToString:@"LU"])
    {
      v14 = 95;
    }

    else if ([v13 isEqualToString:@"LV"])
    {
      v14 = 96;
    }

    else if ([v13 isEqualToString:@"GV"])
    {
      v14 = 97;
    }

    else if ([v13 isEqualToString:@"MK"])
    {
      v14 = 98;
    }

    else if ([v13 isEqualToString:@"MG"])
    {
      v14 = 99;
    }

    else if ([v13 isEqualToString:@"MS"])
    {
      v14 = 100;
    }

    else if ([v13 isEqualToString:@"ML"])
    {
      v14 = 101;
    }

    else if ([v13 isEqualToString:@"MT"])
    {
      v14 = 102;
    }

    else if ([v13 isEqualToString:@"MI"])
    {
      v14 = 103;
    }

    else if ([v13 isEqualToString:@"MR"])
    {
      v14 = 104;
    }

    else if ([v13 isEqualToString:@"MH"])
    {
      v14 = 105;
    }

    else if ([v13 isEqualToString:@"MN"])
    {
      v14 = 106;
    }

    else if ([v13 isEqualToString:@"NA"])
    {
      v14 = 107;
    }

    else if ([v13 isEqualToString:@"NV"])
    {
      v14 = 108;
    }

    else if ([v13 isEqualToString:@"ND"])
    {
      v14 = 109;
    }

    else if ([v13 isEqualToString:@"NE"])
    {
      v14 = 110;
    }

    else if ([v13 isEqualToString:@"NG"])
    {
      v14 = 111;
    }

    else if ([v13 isEqualToString:@"NB"])
    {
      v14 = 112;
    }

    else if ([v13 isEqualToString:@"NN"])
    {
      v14 = 113;
    }

    else if ([v13 isEqualToString:@"NO"])
    {
      v14 = 114;
    }

    else if ([v13 isEqualToString:@"II"])
    {
      v14 = 115;
    }

    else if ([v13 isEqualToString:@"NR"])
    {
      v14 = 116;
    }

    else if ([v13 isEqualToString:@"OC"])
    {
      v14 = 117;
    }

    else if ([v13 isEqualToString:@"OJ"])
    {
      v14 = 118;
    }

    else if ([v13 isEqualToString:@"CU"])
    {
      v14 = 119;
    }

    else if ([v13 isEqualToString:@"OM"])
    {
      v14 = 120;
    }

    else if ([v13 isEqualToString:@"OR"])
    {
      v14 = 121;
    }

    else if ([v13 isEqualToString:@"OS"])
    {
      v14 = 122;
    }

    else if ([v13 isEqualToString:@"PA"])
    {
      v14 = 123;
    }

    else if ([v13 isEqualToString:@"PI"])
    {
      v14 = 124;
    }

    else if ([v13 isEqualToString:@"FA"])
    {
      v14 = 125;
    }

    else if ([v13 isEqualToString:@"PL"])
    {
      v14 = 126;
    }

    else if ([v13 isEqualToString:@"PS"])
    {
      v14 = 127;
    }

    else if ([v13 isEqualToString:@"PT"])
    {
      v14 = 128;
    }

    else if ([v13 isEqualToString:@"QU"])
    {
      v14 = 129;
    }

    else if ([v13 isEqualToString:@"RM"])
    {
      v14 = 130;
    }

    else if ([v13 isEqualToString:@"RN"])
    {
      v14 = 131;
    }

    else if ([v13 isEqualToString:@"RO"])
    {
      v14 = 132;
    }

    else if ([v13 isEqualToString:@"RU"])
    {
      v14 = 133;
    }

    else if ([v13 isEqualToString:@"SA"])
    {
      v14 = 134;
    }

    else if ([v13 isEqualToString:@"SC"])
    {
      v14 = 135;
    }

    else if ([v13 isEqualToString:@"SD"])
    {
      v14 = 136;
    }

    else if ([v13 isEqualToString:@"SE"])
    {
      v14 = 137;
    }

    else if ([v13 isEqualToString:@"SM"])
    {
      v14 = 138;
    }

    else if ([v13 isEqualToString:@"SG"])
    {
      v14 = 139;
    }

    else if ([v13 isEqualToString:@"SR"])
    {
      v14 = 140;
    }

    else if ([v13 isEqualToString:@"GD"])
    {
      v14 = 141;
    }

    else if ([v13 isEqualToString:@"SN"])
    {
      v14 = 142;
    }

    else if ([v13 isEqualToString:@"SI"])
    {
      v14 = 143;
    }

    else if ([v13 isEqualToString:@"SK"])
    {
      v14 = 144;
    }

    else if ([v13 isEqualToString:@"SL"])
    {
      v14 = 145;
    }

    else if ([v13 isEqualToString:@"SO"])
    {
      v14 = 146;
    }

    else if ([v13 isEqualToString:@"ST"])
    {
      v14 = 147;
    }

    else if ([v13 isEqualToString:@"ES"])
    {
      v14 = 148;
    }

    else if ([v13 isEqualToString:@"SU"])
    {
      v14 = 149;
    }

    else if ([v13 isEqualToString:@"SW"])
    {
      v14 = 150;
    }

    else if ([v13 isEqualToString:@"SS"])
    {
      v14 = 151;
    }

    else if ([v13 isEqualToString:@"SV"])
    {
      v14 = 152;
    }

    else if ([v13 isEqualToString:@"TA"])
    {
      v14 = 153;
    }

    else if ([v13 isEqualToString:@"TE"])
    {
      v14 = 154;
    }

    else if ([v13 isEqualToString:@"TG"])
    {
      v14 = 155;
    }

    else if ([v13 isEqualToString:@"TH"])
    {
      v14 = 156;
    }

    else if ([v13 isEqualToString:@"TI"])
    {
      v14 = 157;
    }

    else if ([v13 isEqualToString:@"BO"])
    {
      v14 = 158;
    }

    else if ([v13 isEqualToString:@"TK"])
    {
      v14 = 159;
    }

    else if ([v13 isEqualToString:@"TL"])
    {
      v14 = 160;
    }

    else if ([v13 isEqualToString:@"TN"])
    {
      v14 = 161;
    }

    else if ([v13 isEqualToString:@"TO"])
    {
      v14 = 162;
    }

    else if ([v13 isEqualToString:@"TR"])
    {
      v14 = 163;
    }

    else if ([v13 isEqualToString:@"TS"])
    {
      v14 = 164;
    }

    else if ([v13 isEqualToString:@"TT"])
    {
      v14 = 165;
    }

    else if ([v13 isEqualToString:@"TW"])
    {
      v14 = 166;
    }

    else if ([v13 isEqualToString:@"TY"])
    {
      v14 = 167;
    }

    else if ([v13 isEqualToString:@"UG"])
    {
      v14 = 168;
    }

    else if ([v13 isEqualToString:@"UK"])
    {
      v14 = 169;
    }

    else if ([v13 isEqualToString:@"UR"])
    {
      v14 = 170;
    }

    else if ([v13 isEqualToString:@"UZ"])
    {
      v14 = 171;
    }

    else if ([v13 isEqualToString:@"VE"])
    {
      v14 = 172;
    }

    else if ([v13 isEqualToString:@"VI"])
    {
      v14 = 173;
    }

    else if ([v13 isEqualToString:@"VO"])
    {
      v14 = 174;
    }

    else if ([v13 isEqualToString:@"WA"])
    {
      v14 = 175;
    }

    else if ([v13 isEqualToString:@"CY"])
    {
      v14 = 176;
    }

    else if ([v13 isEqualToString:@"WO"])
    {
      v14 = 177;
    }

    else if ([v13 isEqualToString:@"FY"])
    {
      v14 = 178;
    }

    else if ([v13 isEqualToString:@"XH"])
    {
      v14 = 179;
    }

    else if ([v13 isEqualToString:@"YI"])
    {
      v14 = 180;
    }

    else if ([v13 isEqualToString:@"YO"])
    {
      v14 = 181;
    }

    else if ([v13 isEqualToString:@"ZA"])
    {
      v14 = 182;
    }

    else if ([v13 isEqualToString:@"ZU"])
    {
      v14 = 183;
    }

    else if ([v13 isEqualToString:@"WUU"])
    {
      v14 = 184;
    }

    else if ([v13 isEqualToString:@"YUE"])
    {
      v14 = 185;
    }

    else
    {
      v14 = 0;
    }

    v18 = objc_opt_self();
    if (v9[2] >= 2uLL)
    {
      v19 = v18;

      sub_24794EF34();

      v9 = sub_24794EEF4();
LABEL_1131:

      v17 = [v19 convertCountryCodeToSchemaCountryCode_];
LABEL_1137:

      goto LABEL_1138;
    }

    __break(1u);
    goto LABEL_1126;
  }

  if (v10 == 3)
  {
    v11 = v8[4] == 0x454C41434F4CLL && v8[5] == 0xE600000000000000;
    if (v11 || (sub_24794F4E4() & 1) != 0)
    {

      v12 = sub_24794EEF4();

      v13 = v12;
      if ([v13 isEqualToString:@"ISOLANGUAGECODE_UNKNOWN"])
      {
        v14 = 0;
LABEL_1129:

        v20 = objc_opt_self();
        if (v9[2] >= 3uLL)
        {
          v19 = v20;

          v9 = sub_24794EEF4();
          goto LABEL_1131;
        }

        __break(1u);
        goto LABEL_1133;
      }

      if ([v13 isEqualToString:@"AB"])
      {
        v14 = 1;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AA"])
      {
        v14 = 2;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AF"])
      {
        v14 = 3;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AK"])
      {
        v14 = 4;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SQ"])
      {
        v14 = 5;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AM"])
      {
        v14 = 6;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AR"])
      {
        v14 = 7;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AN"])
      {
        v14 = 8;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"HY"])
      {
        v14 = 9;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AS"])
      {
        v14 = 10;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AV"])
      {
        v14 = 11;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AE"])
      {
        v14 = 12;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AY"])
      {
        v14 = 13;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"AZ"])
      {
        v14 = 14;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"BM"])
      {
        v14 = 15;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"BA"])
      {
        v14 = 16;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"EU"])
      {
        v14 = 17;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"BE"])
      {
        v14 = 18;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"BN"])
      {
        v14 = 19;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"BI"])
      {
        v14 = 20;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"BS"])
      {
        v14 = 21;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"BR"])
      {
        v14 = 22;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"BG"])
      {
        v14 = 23;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"MY"])
      {
        v14 = 24;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"CA"])
      {
        v14 = 25;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"CH"])
      {
        v14 = 26;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"CE"])
      {
        v14 = 27;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"NY"])
      {
        v14 = 28;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"ZH"])
      {
        v14 = 29;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"CV"])
      {
        v14 = 30;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KW"])
      {
        v14 = 31;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"CO"])
      {
        v14 = 32;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"CR"])
      {
        v14 = 33;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"HR"])
      {
        v14 = 34;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"CS"])
      {
        v14 = 35;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"DA"])
      {
        v14 = 36;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"DV"])
      {
        v14 = 37;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"NL"])
      {
        v14 = 38;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"DZ"])
      {
        v14 = 39;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"EN"])
      {
        v14 = 40;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"EO"])
      {
        v14 = 41;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"ET"])
      {
        v14 = 42;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"EE"])
      {
        v14 = 43;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"FO"])
      {
        v14 = 44;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"FJ"])
      {
        v14 = 45;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"FI"])
      {
        v14 = 46;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"FR"])
      {
        v14 = 47;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"FF"])
      {
        v14 = 48;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"GL"])
      {
        v14 = 49;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KA"])
      {
        v14 = 50;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"DE"])
      {
        v14 = 51;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"EL"])
      {
        v14 = 52;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"GN"])
      {
        v14 = 53;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"GU"])
      {
        v14 = 54;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"HT"])
      {
        v14 = 55;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"HA"])
      {
        v14 = 56;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"HE"])
      {
        v14 = 57;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"HZ"])
      {
        v14 = 58;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"HI"])
      {
        v14 = 59;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"HO"])
      {
        v14 = 60;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"HU"])
      {
        v14 = 61;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"IA"])
      {
        v14 = 62;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"ID"])
      {
        v14 = 63;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"IE"])
      {
        v14 = 64;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"GA"])
      {
        v14 = 65;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"IG"])
      {
        v14 = 66;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"IK"])
      {
        v14 = 67;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"IO"])
      {
        v14 = 68;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"IS"])
      {
        v14 = 69;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"IT"])
      {
        v14 = 70;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"IU"])
      {
        v14 = 71;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"JA"])
      {
        v14 = 72;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"JV"])
      {
        v14 = 73;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KL"])
      {
        v14 = 74;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KN"])
      {
        v14 = 75;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KR"])
      {
        v14 = 76;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KS"])
      {
        v14 = 77;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KK"])
      {
        v14 = 78;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KM"])
      {
        v14 = 79;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KI"])
      {
        v14 = 80;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"RW"])
      {
        v14 = 81;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KY"])
      {
        v14 = 82;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KV"])
      {
        v14 = 83;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KG"])
      {
        v14 = 84;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KO"])
      {
        v14 = 85;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KU"])
      {
        v14 = 86;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"KJ"])
      {
        v14 = 87;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"LA"])
      {
        v14 = 88;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"LB"])
      {
        v14 = 89;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"LG"])
      {
        v14 = 90;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"LI"])
      {
        v14 = 91;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"LN"])
      {
        v14 = 92;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"LO"])
      {
        v14 = 93;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"LT"])
      {
        v14 = 94;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"LU"])
      {
        v14 = 95;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"LV"])
      {
        v14 = 96;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"GV"])
      {
        v14 = 97;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"MK"])
      {
        v14 = 98;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"MG"])
      {
        v14 = 99;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"MS"])
      {
        v14 = 100;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"ML"])
      {
        v14 = 101;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"MT"])
      {
        v14 = 102;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"MI"])
      {
        v14 = 103;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"MR"])
      {
        v14 = 104;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"MH"])
      {
        v14 = 105;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"MN"])
      {
        v14 = 106;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"NA"])
      {
        v14 = 107;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"NV"])
      {
        v14 = 108;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"ND"])
      {
        v14 = 109;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"NE"])
      {
        v14 = 110;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"NG"])
      {
        v14 = 111;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"NB"])
      {
        v14 = 112;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"NN"])
      {
        v14 = 113;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"NO"])
      {
        v14 = 114;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"II"])
      {
        v14 = 115;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"NR"])
      {
        v14 = 116;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"OC"])
      {
        v14 = 117;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"OJ"])
      {
        v14 = 118;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"CU"])
      {
        v14 = 119;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"OM"])
      {
        v14 = 120;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"OR"])
      {
        v14 = 121;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"OS"])
      {
        v14 = 122;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"PA"])
      {
        v14 = 123;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"PI"])
      {
        v14 = 124;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"FA"])
      {
        v14 = 125;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"PL"])
      {
        v14 = 126;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"PS"])
      {
        v14 = 127;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"PT"])
      {
        v14 = 128;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"QU"])
      {
        v14 = 129;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"RM"])
      {
        v14 = 130;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"RN"])
      {
        v14 = 131;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"RO"])
      {
        v14 = 132;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"RU"])
      {
        v14 = 133;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SA"])
      {
        v14 = 134;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SC"])
      {
        v14 = 135;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SD"])
      {
        v14 = 136;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SE"])
      {
        v14 = 137;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SM"])
      {
        v14 = 138;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SG"])
      {
        v14 = 139;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SR"])
      {
        v14 = 140;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"GD"])
      {
        v14 = 141;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SN"])
      {
        v14 = 142;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SI"])
      {
        v14 = 143;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SK"])
      {
        v14 = 144;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SL"])
      {
        v14 = 145;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SO"])
      {
        v14 = 146;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"ST"])
      {
        v14 = 147;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"ES"])
      {
        v14 = 148;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SU"])
      {
        v14 = 149;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SW"])
      {
        v14 = 150;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SS"])
      {
        v14 = 151;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"SV"])
      {
        v14 = 152;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TA"])
      {
        v14 = 153;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TE"])
      {
        v14 = 154;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TG"])
      {
        v14 = 155;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TH"])
      {
        v14 = 156;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TI"])
      {
        v14 = 157;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"BO"])
      {
        v14 = 158;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TK"])
      {
        v14 = 159;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TL"])
      {
        v14 = 160;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TN"])
      {
        v14 = 161;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TO"])
      {
        v14 = 162;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TR"])
      {
        v14 = 163;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TS"])
      {
        v14 = 164;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TT"])
      {
        v14 = 165;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TW"])
      {
        v14 = 166;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"TY"])
      {
        v14 = 167;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"UG"])
      {
        v14 = 168;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"UK"])
      {
        v14 = 169;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"UR"])
      {
        v14 = 170;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"UZ"])
      {
        v14 = 171;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"VE"])
      {
        v14 = 172;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"VI"])
      {
        v14 = 173;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"VO"])
      {
        v14 = 174;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"WA"])
      {
        v14 = 175;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"CY"])
      {
        v14 = 176;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"WO"])
      {
        v14 = 177;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"FY"])
      {
        v14 = 178;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"XH"])
      {
        v14 = 179;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"YI"])
      {
        v14 = 180;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"YO"])
      {
        v14 = 181;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"ZA"])
      {
        v14 = 182;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"ZU"])
      {
        v14 = 183;
        goto LABEL_1129;
      }

      if ([v13 isEqualToString:@"WUU"])
      {
        v14 = 184;
        goto LABEL_1129;
      }

LABEL_1126:
      if ([v13 isEqualToString:@"YUE"])
      {
        v14 = 185;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_1129;
    }
  }

  if (sub_24794EF84() == 2)
  {
    sub_24794EF34();
    v15 = sub_24794EEF4();

    v9 = v15;
    if ([v9 isEqualToString:@"ISOLANGUAGECODE_UNKNOWN"])
    {
      v14 = 0;
    }

    else if ([v9 isEqualToString:@"AB"])
    {
      v14 = 1;
    }

    else if ([v9 isEqualToString:@"AA"])
    {
      v14 = 2;
    }

    else if ([v9 isEqualToString:@"AF"])
    {
      v14 = 3;
    }

    else if ([v9 isEqualToString:@"AK"])
    {
      v14 = 4;
    }

    else if ([v9 isEqualToString:@"SQ"])
    {
      v14 = 5;
    }

    else if ([v9 isEqualToString:@"AM"])
    {
      v14 = 6;
    }

    else if ([v9 isEqualToString:@"AR"])
    {
      v14 = 7;
    }

    else if ([v9 isEqualToString:@"AN"])
    {
      v14 = 8;
    }

    else if ([v9 isEqualToString:@"HY"])
    {
      v14 = 9;
    }

    else if ([v9 isEqualToString:@"AS"])
    {
      v14 = 10;
    }

    else if ([v9 isEqualToString:@"AV"])
    {
      v14 = 11;
    }

    else if ([v9 isEqualToString:@"AE"])
    {
      v14 = 12;
    }

    else if ([v9 isEqualToString:@"AY"])
    {
      v14 = 13;
    }

    else if ([v9 isEqualToString:@"AZ"])
    {
      v14 = 14;
    }

    else if ([v9 isEqualToString:@"BM"])
    {
      v14 = 15;
    }

    else if ([v9 isEqualToString:@"BA"])
    {
      v14 = 16;
    }

    else if ([v9 isEqualToString:@"EU"])
    {
      v14 = 17;
    }

    else if ([v9 isEqualToString:@"BE"])
    {
      v14 = 18;
    }

    else if ([v9 isEqualToString:@"BN"])
    {
      v14 = 19;
    }

    else if ([v9 isEqualToString:@"BI"])
    {
      v14 = 20;
    }

    else if ([v9 isEqualToString:@"BS"])
    {
      v14 = 21;
    }

    else if ([v9 isEqualToString:@"BR"])
    {
      v14 = 22;
    }

    else if ([v9 isEqualToString:@"BG"])
    {
      v14 = 23;
    }

    else if ([v9 isEqualToString:@"MY"])
    {
      v14 = 24;
    }

    else if ([v9 isEqualToString:@"CA"])
    {
      v14 = 25;
    }

    else if ([v9 isEqualToString:@"CH"])
    {
      v14 = 26;
    }

    else if ([v9 isEqualToString:@"CE"])
    {
      v14 = 27;
    }

    else if ([v9 isEqualToString:@"NY"])
    {
      v14 = 28;
    }

    else if ([v9 isEqualToString:@"ZH"])
    {
      v14 = 29;
    }

    else if ([v9 isEqualToString:@"CV"])
    {
      v14 = 30;
    }

    else if ([v9 isEqualToString:@"KW"])
    {
      v14 = 31;
    }

    else if ([v9 isEqualToString:@"CO"])
    {
      v14 = 32;
    }

    else if ([v9 isEqualToString:@"CR"])
    {
      v14 = 33;
    }

    else if ([v9 isEqualToString:@"HR"])
    {
      v14 = 34;
    }

    else if ([v9 isEqualToString:@"CS"])
    {
      v14 = 35;
    }

    else if ([v9 isEqualToString:@"DA"])
    {
      v14 = 36;
    }

    else if ([v9 isEqualToString:@"DV"])
    {
      v14 = 37;
    }

    else if ([v9 isEqualToString:@"NL"])
    {
      v14 = 38;
    }

    else if ([v9 isEqualToString:@"DZ"])
    {
      v14 = 39;
    }

    else if ([v9 isEqualToString:@"EN"])
    {
      v14 = 40;
    }

    else if ([v9 isEqualToString:@"EO"])
    {
      v14 = 41;
    }

    else if ([v9 isEqualToString:@"ET"])
    {
      v14 = 42;
    }

    else if ([v9 isEqualToString:@"EE"])
    {
      v14 = 43;
    }

    else if ([v9 isEqualToString:@"FO"])
    {
      v14 = 44;
    }

    else if ([v9 isEqualToString:@"FJ"])
    {
      v14 = 45;
    }

    else if ([v9 isEqualToString:@"FI"])
    {
      v14 = 46;
    }

    else if ([v9 isEqualToString:@"FR"])
    {
      v14 = 47;
    }

    else if ([v9 isEqualToString:@"FF"])
    {
      v14 = 48;
    }

    else if ([v9 isEqualToString:@"GL"])
    {
      v14 = 49;
    }

    else if ([v9 isEqualToString:@"KA"])
    {
      v14 = 50;
    }

    else if ([v9 isEqualToString:@"DE"])
    {
      v14 = 51;
    }

    else if ([v9 isEqualToString:@"EL"])
    {
      v14 = 52;
    }

    else if ([v9 isEqualToString:@"GN"])
    {
      v14 = 53;
    }

    else if ([v9 isEqualToString:@"GU"])
    {
      v14 = 54;
    }

    else if ([v9 isEqualToString:@"HT"])
    {
      v14 = 55;
    }

    else if ([v9 isEqualToString:@"HA"])
    {
      v14 = 56;
    }

    else if ([v9 isEqualToString:@"HE"])
    {
      v14 = 57;
    }

    else if ([v9 isEqualToString:@"HZ"])
    {
      v14 = 58;
    }

    else if ([v9 isEqualToString:@"HI"])
    {
      v14 = 59;
    }

    else if ([v9 isEqualToString:@"HO"])
    {
      v14 = 60;
    }

    else if ([v9 isEqualToString:@"HU"])
    {
      v14 = 61;
    }

    else if ([v9 isEqualToString:@"IA"])
    {
      v14 = 62;
    }

    else if ([v9 isEqualToString:@"ID"])
    {
      v14 = 63;
    }

    else if ([v9 isEqualToString:@"IE"])
    {
      v14 = 64;
    }

    else if ([v9 isEqualToString:@"GA"])
    {
      v14 = 65;
    }

    else if ([v9 isEqualToString:@"IG"])
    {
      v14 = 66;
    }

    else if ([v9 isEqualToString:@"IK"])
    {
      v14 = 67;
    }

    else if ([v9 isEqualToString:@"IO"])
    {
      v14 = 68;
    }

    else if ([v9 isEqualToString:@"IS"])
    {
      v14 = 69;
    }

    else if ([v9 isEqualToString:@"IT"])
    {
      v14 = 70;
    }

    else if ([v9 isEqualToString:@"IU"])
    {
      v14 = 71;
    }

    else if ([v9 isEqualToString:@"JA"])
    {
      v14 = 72;
    }

    else if ([v9 isEqualToString:@"JV"])
    {
      v14 = 73;
    }

    else if ([v9 isEqualToString:@"KL"])
    {
      v14 = 74;
    }

    else if ([v9 isEqualToString:@"KN"])
    {
      v14 = 75;
    }

    else if ([v9 isEqualToString:@"KR"])
    {
      v14 = 76;
    }

    else if ([v9 isEqualToString:@"KS"])
    {
      v14 = 77;
    }

    else if ([v9 isEqualToString:@"KK"])
    {
      v14 = 78;
    }

    else if ([v9 isEqualToString:@"KM"])
    {
      v14 = 79;
    }

    else if ([v9 isEqualToString:@"KI"])
    {
      v14 = 80;
    }

    else if ([v9 isEqualToString:@"RW"])
    {
      v14 = 81;
    }

    else if ([v9 isEqualToString:@"KY"])
    {
      v14 = 82;
    }

    else if ([v9 isEqualToString:@"KV"])
    {
      v14 = 83;
    }

    else if ([v9 isEqualToString:@"KG"])
    {
      v14 = 84;
    }

    else if ([v9 isEqualToString:@"KO"])
    {
      v14 = 85;
    }

    else if ([v9 isEqualToString:@"KU"])
    {
      v14 = 86;
    }

    else if ([v9 isEqualToString:@"KJ"])
    {
      v14 = 87;
    }

    else if ([v9 isEqualToString:@"LA"])
    {
      v14 = 88;
    }

    else if ([v9 isEqualToString:@"LB"])
    {
      v14 = 89;
    }

    else if ([v9 isEqualToString:@"LG"])
    {
      v14 = 90;
    }

    else if ([v9 isEqualToString:@"LI"])
    {
      v14 = 91;
    }

    else if ([v9 isEqualToString:@"LN"])
    {
      v14 = 92;
    }

    else if ([v9 isEqualToString:@"LO"])
    {
      v14 = 93;
    }

    else if ([v9 isEqualToString:@"LT"])
    {
      v14 = 94;
    }

    else if ([v9 isEqualToString:@"LU"])
    {
      v14 = 95;
    }

    else if ([v9 isEqualToString:@"LV"])
    {
      v14 = 96;
    }

    else if ([v9 isEqualToString:@"GV"])
    {
      v14 = 97;
    }

    else if ([v9 isEqualToString:@"MK"])
    {
      v14 = 98;
    }

    else if ([v9 isEqualToString:@"MG"])
    {
      v14 = 99;
    }

    else if ([v9 isEqualToString:@"MS"])
    {
      v14 = 100;
    }

    else if ([v9 isEqualToString:@"ML"])
    {
      v14 = 101;
    }

    else if ([v9 isEqualToString:@"MT"])
    {
      v14 = 102;
    }

    else if ([v9 isEqualToString:@"MI"])
    {
      v14 = 103;
    }

    else if ([v9 isEqualToString:@"MR"])
    {
      v14 = 104;
    }

    else if ([v9 isEqualToString:@"MH"])
    {
      v14 = 105;
    }

    else if ([v9 isEqualToString:@"MN"])
    {
      v14 = 106;
    }

    else if ([v9 isEqualToString:@"NA"])
    {
      v14 = 107;
    }

    else if ([v9 isEqualToString:@"NV"])
    {
      v14 = 108;
    }

    else if ([v9 isEqualToString:@"ND"])
    {
      v14 = 109;
    }

    else if ([v9 isEqualToString:@"NE"])
    {
      v14 = 110;
    }

    else if ([v9 isEqualToString:@"NG"])
    {
      v14 = 111;
    }

    else if ([v9 isEqualToString:@"NB"])
    {
      v14 = 112;
    }

    else if ([v9 isEqualToString:@"NN"])
    {
      v14 = 113;
    }

    else if ([v9 isEqualToString:@"NO"])
    {
      v14 = 114;
    }

    else if ([v9 isEqualToString:@"II"])
    {
      v14 = 115;
    }

    else if ([v9 isEqualToString:@"NR"])
    {
      v14 = 116;
    }

    else if ([v9 isEqualToString:@"OC"])
    {
      v14 = 117;
    }

    else if ([v9 isEqualToString:@"OJ"])
    {
      v14 = 118;
    }

    else if ([v9 isEqualToString:@"CU"])
    {
      v14 = 119;
    }

    else if ([v9 isEqualToString:@"OM"])
    {
      v14 = 120;
    }

    else if ([v9 isEqualToString:@"OR"])
    {
      v14 = 121;
    }

    else if ([v9 isEqualToString:@"OS"])
    {
      v14 = 122;
    }

    else if ([v9 isEqualToString:@"PA"])
    {
      v14 = 123;
    }

    else if ([v9 isEqualToString:@"PI"])
    {
      v14 = 124;
    }

    else if ([v9 isEqualToString:@"FA"])
    {
      v14 = 125;
    }

    else if ([v9 isEqualToString:@"PL"])
    {
      v14 = 126;
    }

    else if ([v9 isEqualToString:@"PS"])
    {
      v14 = 127;
    }

    else if ([v9 isEqualToString:@"PT"])
    {
      v14 = 128;
    }

    else if ([v9 isEqualToString:@"QU"])
    {
      v14 = 129;
    }

    else if ([v9 isEqualToString:@"RM"])
    {
      v14 = 130;
    }

    else if ([v9 isEqualToString:@"RN"])
    {
      v14 = 131;
    }

    else if ([v9 isEqualToString:@"RO"])
    {
      v14 = 132;
    }

    else if ([v9 isEqualToString:@"RU"])
    {
      v14 = 133;
    }

    else if ([v9 isEqualToString:@"SA"])
    {
      v14 = 134;
    }

    else if ([v9 isEqualToString:@"SC"])
    {
      v14 = 135;
    }

    else if ([v9 isEqualToString:@"SD"])
    {
      v14 = 136;
    }

    else if ([v9 isEqualToString:@"SE"])
    {
      v14 = 137;
    }

    else if ([v9 isEqualToString:@"SM"])
    {
      v14 = 138;
    }

    else if ([v9 isEqualToString:@"SG"])
    {
      v14 = 139;
    }

    else if ([v9 isEqualToString:@"SR"])
    {
      v14 = 140;
    }

    else if ([v9 isEqualToString:@"GD"])
    {
      v14 = 141;
    }

    else if ([v9 isEqualToString:@"SN"])
    {
      v14 = 142;
    }

    else if ([v9 isEqualToString:@"SI"])
    {
      v14 = 143;
    }

    else if ([v9 isEqualToString:@"SK"])
    {
      v14 = 144;
    }

    else if ([v9 isEqualToString:@"SL"])
    {
      v14 = 145;
    }

    else if ([v9 isEqualToString:@"SO"])
    {
      v14 = 146;
    }

    else if ([v9 isEqualToString:@"ST"])
    {
      v14 = 147;
    }

    else if ([v9 isEqualToString:@"ES"])
    {
      v14 = 148;
    }

    else if ([v9 isEqualToString:@"SU"])
    {
      v14 = 149;
    }

    else if ([v9 isEqualToString:@"SW"])
    {
      v14 = 150;
    }

    else if ([v9 isEqualToString:@"SS"])
    {
      v14 = 151;
    }

    else if ([v9 isEqualToString:@"SV"])
    {
      v14 = 152;
    }

    else if ([v9 isEqualToString:@"TA"])
    {
      v14 = 153;
    }

    else if ([v9 isEqualToString:@"TE"])
    {
      v14 = 154;
    }

    else if ([v9 isEqualToString:@"TG"])
    {
      v14 = 155;
    }

    else if ([v9 isEqualToString:@"TH"])
    {
      v14 = 156;
    }

    else if ([v9 isEqualToString:@"TI"])
    {
      v14 = 157;
    }

    else if ([v9 isEqualToString:@"BO"])
    {
      v14 = 158;
    }

    else if ([v9 isEqualToString:@"TK"])
    {
      v14 = 159;
    }

    else if ([v9 isEqualToString:@"TL"])
    {
      v14 = 160;
    }

    else if ([v9 isEqualToString:@"TN"])
    {
      v14 = 161;
    }

    else if ([v9 isEqualToString:@"TO"])
    {
      v14 = 162;
    }

    else if ([v9 isEqualToString:@"TR"])
    {
      v14 = 163;
    }

    else if ([v9 isEqualToString:@"TS"])
    {
      v14 = 164;
    }

    else if ([v9 isEqualToString:@"TT"])
    {
      v14 = 165;
    }

    else if ([v9 isEqualToString:@"TW"])
    {
      v14 = 166;
    }

    else if ([v9 isEqualToString:@"TY"])
    {
      v14 = 167;
    }

    else if ([v9 isEqualToString:@"UG"])
    {
      v14 = 168;
    }

    else if ([v9 isEqualToString:@"UK"])
    {
      v14 = 169;
    }

    else if ([v9 isEqualToString:@"UR"])
    {
      v14 = 170;
    }

    else if ([v9 isEqualToString:@"UZ"])
    {
      v14 = 171;
    }

    else if ([v9 isEqualToString:@"VE"])
    {
      v14 = 172;
    }

    else if ([v9 isEqualToString:@"VI"])
    {
      v14 = 173;
    }

    else if ([v9 isEqualToString:@"VO"])
    {
      v14 = 174;
    }

    else if ([v9 isEqualToString:@"WA"])
    {
      v14 = 175;
    }

    else if ([v9 isEqualToString:@"CY"])
    {
      v14 = 176;
    }

    else if ([v9 isEqualToString:@"WO"])
    {
      v14 = 177;
    }

    else if ([v9 isEqualToString:@"FY"])
    {
      v14 = 178;
    }

    else if ([v9 isEqualToString:@"XH"])
    {
      v14 = 179;
    }

    else if ([v9 isEqualToString:@"YI"])
    {
      v14 = 180;
    }

    else if ([v9 isEqualToString:@"YO"])
    {
      v14 = 181;
    }

    else if ([v9 isEqualToString:@"ZA"])
    {
      v14 = 182;
    }

    else if ([v9 isEqualToString:@"ZU"])
    {
      v14 = 183;
    }

    else
    {
      if (([v9 isEqualToString:@"WUU"] & 1) == 0)
      {
LABEL_1133:
        if ([v9 isEqualToString:@"YUE"])
        {
          v14 = 185;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_1136;
      }

      v14 = 184;
    }

LABEL_1136:

    v17 = 0;
    goto LABEL_1137;
  }

  v17 = 0;
  v14 = 0;
LABEL_1138:
  v21 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v22 = v21;
  [v22 setLanguageCode_];
  [v22 setCountryCode_];

  (*(v5 + 8))(v7, v4);
  return v21;
}

unint64_t sub_24791EE78(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_24794EF94();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24794F034();
}

unint64_t sub_24791EF2C()
{
  result = qword_27EE574E8;
  if (!qword_27EE574E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE574E8);
  }

  return result;
}

unint64_t sub_24791EF84()
{
  result = qword_27EE574F0;
  if (!qword_27EE574F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE574F0);
  }

  return result;
}

uint64_t sub_24791EFD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24791F02C()
{
  result = qword_27EE574F8;
  if (!qword_27EE574F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE574F8);
  }

  return result;
}

uint64_t (*sub_24791F080(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_24794EC04();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_247924B68(v4, v9);
  return sub_247927CF8;
}

uint64_t (*sub_24791F198(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_24794EBB4();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_247924CA4(v4, v9);
  return sub_24791F2B0;
}

void sub_24791F2B4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}