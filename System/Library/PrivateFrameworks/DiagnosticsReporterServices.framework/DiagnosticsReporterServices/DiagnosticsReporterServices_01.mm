uint64_t sub_21DD849C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21DD83BD8;

  return sub_21DD734DC(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_21DD84B14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DD74F54;

  return sub_21DD732F8(a1, v4);
}

CFUserNotificationRef sub_21DD84BCC(void *a1)
{
  v28[8] = *MEMORY[0x277D85DE8];
  sub_21DD78438(a1, v28);
  v2 = v28[0];
  v1 = v28[1];
  v4 = v28[2];
  v3 = v28[3];
  v6 = v28[4];
  v5 = v28[5];
  v7 = v28[7];
  v26 = v28[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8F010, qword_21DD8D750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8D690;
  v9 = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = inited;
  v11 = MEMORY[0x277D837D0];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v9;
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  v12 = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 104) = v11;
  *(inited + 72) = v12;
  *(inited + 80) = v4;
  *(inited + 88) = v3;
  v13 = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  *(inited + 144) = v11;
  *(inited + 112) = v13;
  *(inited + 120) = v6;
  *(inited + 128) = v5;
  v14 = *MEMORY[0x277CBF1C0];
  if (!*MEMORY[0x277CBF1C0])
  {
    goto LABEL_15;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v15 = v9;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v10[23] = v11;
  v10[19] = v18;
  v10[20] = v26;
  v10[21] = v7;
  sub_21DD8085C(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EF60, &qword_21DD8D578);
  swift_arrayDestroy();
  error = 0;
  type metadata accessor for CFString();
  sub_21DD85468(&qword_27CE8ED60, type metadata accessor for CFString, &unk_21DD8D004);
  v19 = sub_21DD8BF58();

  v20 = CFUserNotificationCreate(0, 0.0, 2uLL, &error, v19);

  if (!v20)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v21 = sub_21DD8BF08();
    __swift_project_value_buffer(v21, qword_281221D58);
    v22 = sub_21DD8BEE8();
    v23 = sub_21DD8C1D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      swift_beginAccess();
      *(v24 + 4) = error;
      _os_log_impl(&dword_21DD6F000, v22, v23, "Failed to show CFUserNotification. Error: %d", v24, 8u);
      MEMORY[0x223D47710](v24, -1, -1);
    }

    return 0;
  }

  return v20;
}

void sub_21DD84F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21DD8BBB8();
  swift_allocObject();
  sub_21DD8BBA8();
  v31 = a3;
  type metadata accessor for DiagnosticsReporterLaunchOptions();
  sub_21DD85468(&qword_27CE8F008, type metadata accessor for DiagnosticsReporterLaunchOptions, &protocol conformance descriptor for DiagnosticsReporterLaunchOptions);
  v9 = sub_21DD8BB98();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDE8, &unk_21DD8D510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8D6A0;
  *(inited + 32) = 0x736E6F6974706FLL;
  v13 = MEMORY[0x277CC9318];
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  *(inited + 72) = v13;
  *(inited + 80) = 1701869940;
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = a2;
  sub_21DD77B88(v9, v11);
  v14 = sub_21DD728E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EEF0, &unk_21DD8D740);
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277D66BD8]);
  v16 = sub_21DD8BFC8();
  v17 = sub_21DD8BFC8();
  v18 = [v15 initWithServiceName:v16 viewControllerClassName:v17];

  v19 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  sub_21DD8452C(v14);

  v20 = sub_21DD8BF58();

  [v19 setUserInfo_];

  v21 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  v22 = [objc_opt_self() newHandleWithDefinition:v18 configurationContext:v19];
  v23 = type metadata accessor for RemoteAlertDeactivationHandler();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtC27DiagnosticsReporterServices30RemoteAlertDeactivationHandler_completion];
  *v25 = a4;
  *(v25 + 1) = a5;
  v30.receiver = v24;
  v30.super_class = v23;

  v26 = objc_msgSendSuper2(&v30, sel_init);
  v27 = qword_27CE8F000;
  qword_27CE8F000 = v26;
  v28 = v26;

  [v22 registerObserver_];
  v29 = v21;
  [v22 activateWithContext_];
  sub_21DD77BF0(v9, v11);
}

uint64_t sub_21DD85468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21DD854B0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21DD8BFC8();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_281221D48 = v2;
  }

  else
  {
    sub_21DD8C338();
    __break(1u);
  }
}

id sub_21DD85584@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v95 - v6;
  v7 = sub_21DD8BD58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v106 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v110 = &v95 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v98 = &v95 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v104 = &v95 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v95 - v17;
  v19 = type metadata accessor for PanicLog(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v23[v21[7]];
  *v24 = 0x63696E6150;
  v24[1] = 0xE500000000000000;
  v25 = &v23[v21[10]];
  *(v25 + 3) = &type metadata for CriticalPolicy;
  *(v25 + 4) = &off_282F1BF18;
  v99 = v25;
  v26 = &v23[v21[11]];
  *v26 = 0;
  v26[1] = 0;
  *v23 = a1 & 1;
  v27 = MEMORY[0x277D84F90];
  v28 = sub_21DD728E4(MEMORY[0x277D84F90]);
  v29 = *(v19 + 32);
  v112 = v23;
  v109 = v29;
  *&v23[v29] = v27;
  v103 = a2;
  v30 = &a2[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  swift_beginAccess();
  v31 = *(v30 + 1);
  v101 = v20;
  if (!v31)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v40 = sub_21DD8BF08();
    __swift_project_value_buffer(v40, qword_281221D58);
    v41 = sub_21DD8BEE8();
    v42 = sub_21DD8C1D8();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v99;
    v45 = v102;
    if (v43)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_21DD6F000, v41, v42, "Invalid log path", v46, 2u);
      MEMORY[0x223D47710](v46, -1, -1);
    }

    goto LABEL_53;
  }

  v111 = v7;
  v97 = v28;

  v100 = v18;
  sub_21DD8BC98();

  v32 = objc_opt_self();
  result = [v32 defaultManager];
  if (!*(v30 + 1))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v34 = result;

  v35 = sub_21DD8BFC8();

  v36 = [v34 fileExistsAtPath_];

  v37 = v102;
  v107 = v30;
  v105 = v19;
  if (v36)
  {
    v39 = v111;
    v38 = v112;
    (*(v8 + 16))(&v112[*(v19 + 24)], v100, v111);
LABEL_17:
    v60 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
    v61 = v103;
    swift_beginAccess();
    v62 = *(*&v61[v60] + 16);
    if (v62)
    {
      v104 = (v8 + 16);
      v108 = v8 + 32;

      v63 = (v96 + 40);
      v64 = MEMORY[0x277D84F90];
      while (1)
      {
        v66 = *(v63 - 1);
        v65 = *v63;

        v67 = [v32 defaultManager];
        v68 = sub_21DD8BFC8();
        v69 = [v67 fileExistsAtPath_];

        if (v69)
        {
          sub_21DD8BC98();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_21DD86EA0(0, v64[2] + 1, 1, v64, &qword_27CE8ED90, &qword_21DD8D090, MEMORY[0x277CC9260]);
          }

          v39 = v111;
          v38 = v112;
          v71 = v64[2];
          v70 = v64[3];
          if (v71 >= v70 >> 1)
          {
            v64 = sub_21DD86EA0((v70 > 1), v71 + 1, 1, v64, &qword_27CE8ED90, &qword_21DD8D090, MEMORY[0x277CC9260]);
          }

          v64[2] = v71 + 1;
          (*(v8 + 32))(v64 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v71, v110, v39);
        }

        else
        {
          v72 = v107[1];
          if (!v72)
          {

            v39 = v111;
            v38 = v112;
            goto LABEL_21;
          }

          v38 = v112;
          if (v66 == *v107 && v72 == v65)
          {
          }

          else
          {
            v73 = sub_21DD8C428();

            if ((v73 & 1) == 0)
            {
              v39 = v111;
              goto LABEL_21;
            }
          }

          v39 = v111;
          (*v104)(v106, v38 + *(v105 + 24), v111);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_21DD86EA0(0, v64[2] + 1, 1, v64, &qword_27CE8ED90, &qword_21DD8D090, MEMORY[0x277CC9260]);
          }

          v75 = v64[2];
          v74 = v64[3];
          if (v75 >= v74 >> 1)
          {
            v64 = sub_21DD86EA0((v74 > 1), v75 + 1, 1, v64, &qword_27CE8ED90, &qword_21DD8D090, MEMORY[0x277CC9260]);
          }

          v64[2] = v75 + 1;
          (*(v8 + 32))(v64 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v75, v106, v39);
        }

        *(v38 + v109) = v64;
LABEL_21:
        v63 += 2;
        if (!--v62)
        {

          v45 = v102;
          goto LABEL_41;
        }
      }
    }

    v45 = v37;
LABEL_41:
    sub_21DD8BEA8();
    v76 = v105;
    v77 = *(v105 + 24);
    (*(v8 + 16))(v98, &v77[v38], v39);
    v78 = sub_21DD8BE88();
    v79 = v107;
    if (v78)
    {
      v80 = v38;
      v81 = *(v76 + 36);
      v82 = sub_21DD8BE78();

      (*(v8 + 8))(v100, v39);

      *(v80 + v81) = v82;
      *(v80 + 1) = 0;
      sub_21DD87130(v80, v45);
      (*(v101 + 56))(v45, 0, 1, v76);
      return sub_21DD87194(v80);
    }

    v110 = v77;
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v83 = sub_21DD8BF08();
    __swift_project_value_buffer(v83, qword_281221D58);
    v84 = v103;
    v85 = sub_21DD8BEE8();
    v86 = sub_21DD8C1D8();

    LODWORD(v109) = v86;
    if (!os_log_type_enabled(v85, v86))
    {

      v94 = *(v8 + 8);
      v94(v100, v39);
      v19 = v105;
      v90 = v110;
      goto LABEL_49;
    }

    v87 = swift_slowAlloc();
    result = swift_slowAlloc();
    v113 = result;
    *v87 = 136446210;
    v88 = v79;
    v89 = v79[1];
    v90 = v110;
    if (v89)
    {
      v91 = result;
      v92 = *v88;

      v93 = sub_21DD74A90(v92, v89, &v113);

      *(v87 + 4) = v93;
      _os_log_impl(&dword_21DD6F000, v85, v109, "Unable to read header from URL: %{public}s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x223D47710](v91, -1, -1);
      MEMORY[0x223D47710](v87, -1, -1);

      v94 = *(v8 + 8);
      v39 = v111;
      v94(v100, v111);
      v19 = v105;
      v38 = v112;
LABEL_49:
      v94(&v90[v38], v39);

LABEL_51:

      goto LABEL_52;
    }

    goto LABEL_55;
  }

  v47 = v108;
  sub_21DD7871C(v108);
  v39 = v111;
  if ((*(v8 + 48))(v47, 1, v111) != 1)
  {
    v58 = *(v8 + 32);
    v59 = v104;
    v58(v104, v47, v39);
    v38 = v112;
    v58(&v112[*(v19 + 24)], v59, v39);
    goto LABEL_17;
  }

  sub_21DD870C8(v47);
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v48 = sub_21DD8BF08();
  __swift_project_value_buffer(v48, qword_281221D58);
  v49 = v103;
  v50 = sub_21DD8BEE8();
  v51 = sub_21DD8C1D8();

  v45 = v37;
  if (!os_log_type_enabled(v50, v51))
  {

    (*(v8 + 8))(v100, v39);
    goto LABEL_51;
  }

  v52 = v19;
  v53 = swift_slowAlloc();
  result = swift_slowAlloc();
  v114[0] = result;
  *v53 = 136446210;
  v54 = v107[1];
  if (v54)
  {
    v55 = result;
    v56 = *v107;

    v57 = sub_21DD74A90(v56, v54, v114);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_21DD6F000, v50, v51, "Failed reading from URL: %{public}s and retired path.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x223D47710](v55, -1, -1);
    MEMORY[0x223D47710](v53, -1, -1);

    (*(v8 + 8))(v100, v111);

    v19 = v52;
LABEL_52:
    v44 = v99;
LABEL_53:
    __swift_destroy_boxed_opaque_existential_1(v44);
    return (*(v101 + 56))(v45, 1, 1, v19);
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_21DD86240(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x79616C70736944;
  }

  else
  {
    v3 = 1953722184;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x79616C70736944;
  }

  else
  {
    v5 = 1953722184;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DD8C428();
  }

  return v8 & 1;
}

uint64_t sub_21DD862E0()
{
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD8635C(uint64_t a1)
{
  sub_21DD8C098();
}

uint64_t sub_21DD863C4(uint64_t a1)
{
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD8643C@<X0>(char *a2@<X8>)
{
  v3 = sub_21DD8C388();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_21DD8649C(uint64_t *a1@<X8>)
{
  v2 = 1953722184;
  if (*v1)
  {
    v2 = 0x79616C70736944;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_21DD864D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED78, &unk_21DD8D190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DD8D6A0;
  *(inited + 32) = 0x746E656469636E69;
  *(inited + 40) = 0xEB0000000064695FLL;
  v2 = *(v0 + *(type metadata accessor for PanicLog(0) + 36));
  if (*(v2 + 16) && (v3 = sub_21DD72C7C(0x746E656469636E69, 0xEB0000000064695FLL), (v4 & 1) != 0) && (sub_21DD72CF4(*(v2 + 56) + 32 * v3, v9), sub_21DD77C48(), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v8;
  }

  else
  {
    sub_21DD77C48();
    v5 = sub_21DD8C238();
  }

  *(inited + 48) = v5;
  *(inited + 56) = 1701869940;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_21DD8BFC8();
  v6 = sub_21DD8061C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED80, &qword_21DD8D058);
  swift_arrayDestroy();
  return v6;
}

void sub_21DD8665C(void *a1, uint64_t a2)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21DD8BD58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v45 - v9;
  type metadata accessor for PanicLog(0);
  sub_21DD87508(&unk_27CE8F020, MEMORY[0x277CC9278]);
  if ((sub_21DD8BF98() & 1) == 0)
  {
    if (qword_281221BD8 != -1)
    {
      swift_once();
    }

    v11 = sub_21DD8BF08();
    v12 = __swift_project_value_buffer(v11, qword_281221D58);
    v13 = *(v5 + 16);
    v51 = a1;
    v46 = v13;
    v47 = v5 + 16;
    v13(v10, a1, v4);
    v49 = v12;
    v14 = sub_21DD8BEE8();
    v15 = sub_21DD8C1B8();
    v16 = os_log_type_enabled(v14, v15);
    v50 = v5;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v45[0] = v8;
      v19 = v18;
      v52[0] = v18;
      *v17 = 136315138;
      sub_21DD87508(&qword_27CE8EDE0, MEMORY[0x277CC9290]);
      v20 = sub_21DD8C418();
      v45[1] = v2;
      v22 = v21;
      v48 = *(v5 + 8);
      v48(v10, v4);
      v23 = sub_21DD74A90(v20, v22, v52);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_21DD6F000, v14, v15, "Removing file at %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v24 = v19;
      v8 = v45[0];
      MEMORY[0x223D47710](v24, -1, -1);
      MEMORY[0x223D47710](v17, -1, -1);
    }

    else
    {

      v48 = *(v5 + 8);
      v48(v10, v4);
    }

    v25 = [objc_opt_self() defaultManager];
    v26 = v51;
    v27 = sub_21DD8BCB8();
    v52[0] = 0;
    v28 = [v25 removeItemAtURL:v27 error:v52];

    if (v28)
    {
      v29 = v52[0];
    }

    else
    {
      v30 = v52[0];
      v31 = sub_21DD8BC68();

      swift_willThrow();
      v46(v8, v26, v4);
      v32 = v31;
      v33 = v8;
      v34 = sub_21DD8BEE8();
      v35 = sub_21DD8C1D8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52[0] = v51;
        *v36 = 136446466;
        v37 = sub_21DD8BC88();
        v39 = v38;
        v48(v33, v4);
        v40 = sub_21DD74A90(v37, v39, v52);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2082;
        swift_getErrorValue();
        v41 = sub_21DD8C448();
        v43 = sub_21DD74A90(v41, v42, v52);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_21DD6F000, v34, v35, "Failed to remove panic file url: %{public}s. Error: %{public}s", v36, 0x16u);
        v44 = v51;
        swift_arrayDestroy();
        MEMORY[0x223D47710](v44, -1, -1);
        MEMORY[0x223D47710](v36, -1, -1);
      }

      else
      {

        v48(v33, v4);
      }
    }
  }
}

uint64_t sub_21DD86BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_21DD8BD58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21DD86C2C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_21DD86C84()
{
  if (*v0)
  {
    return 0x79616C70736944;
  }

  else
  {
    return 1953722184;
  }
}

uint64_t sub_21DD86CB8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_21DD86D00(uint64_t a1)
{
  v3 = sub_21DD8BD58();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(a1 + 32));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v4 + 8);
    while (v10 < *(v8 + 16))
    {
      (*(v4 + 16))(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v3);
      sub_21DD8665C(v7, v1);
      ++v10;
      result = (*v11)(v7, v3);
      if (v9 == v10)
      {
        return result;
      }
    }

    __break(1u);

    result = (*v11)(v7, v3);
    __break(1u);
  }

  return result;
}

void *sub_21DD86EA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t type metadata accessor for PanicLog(uint64_t a1)
{
  result = qword_281221C78;
  if (!qword_281221C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DD870C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DD87130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PanicLog(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DD87194(uint64_t a1)
{
  v2 = type metadata accessor for PanicLog(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21DD87218(uint64_t a1)
{
  sub_21DD8BD58();
  if (v1 <= 0x3F)
  {
    sub_21DD77658(319);
    if (v2 <= 0x3F)
    {
      sub_21DD776B0();
      if (v3 <= 0x3F)
      {
        sub_21DD77714();
        if (v4 <= 0x3F)
        {
          sub_21DD87304();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21DD87304()
{
  if (!qword_281221BC8)
  {
    v0 = sub_21DD8C248();
    if (!v1)
    {
      atomic_store(v0, &qword_281221BC8);
    }
  }
}

uint64_t getEnumTagSinglePayload for PanicLog.Type(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PanicLog.Type(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DD874B4()
{
  result = qword_27CE8F018;
  if (!qword_27CE8F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8F018);
  }

  return result;
}

uint64_t sub_21DD87508(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21DD8BD58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21DD8755C(uint64_t a1, uint64_t a2)
{
  v16[1] = a1;
  v16[2] = a2;
  v17 = sub_21DD8BE58();
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DD8BC38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DD8BE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8ED70, qword_21DD8D880);
  v9 = sub_21DD8BE48();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DD8CF30;
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277CC9968], v9);
  sub_21DD802FC(v12);
  swift_setDeallocating();
  (*(v10 + 8))(v12 + v11, v9);
  swift_deallocClassInstance();
  sub_21DD8BE28();

  (*(v2 + 8))(v4, v17);
  v13 = sub_21DD8BC18();
  LOBYTE(v10) = v14;
  (*(v6 + 8))(v8, v5);
  return v10 & 1 | (v13 < 7);
}

BOOL sub_21DD87800()
{
  sub_21DD79DBC(0xD000000000000011);

  return sub_21DD79FE0(0xD000000000000011, 0x800000021DD8E890, 1, sub_21DD8755C);
}

unsigned __int8 *sub_21DD87870()
{
  result = sub_21DD7A350(0xD000000000000022, 0x800000021DD8E860);
  if (v1)
  {
    v2 = 3;
  }

  else
  {
    v2 = result;
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_21DD75DD0(0x64uLL);
    return (v3 < 0x7FFFFFFFFFFFFFFFLL && v2 >= (v3 + 1));
  }

  return result;
}

uint64_t sub_21DD878E0(void *a1)
{
  v2 = v1;
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DD8BF08();
  __swift_project_value_buffer(v4, qword_281221D58);
  v5 = sub_21DD8BEE8();
  v6 = sub_21DD8C1E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_21DD74A90(0xD000000000000022, 0x800000021DD8E950, &v10);
    _os_log_impl(&dword_21DD6F000, v5, v6, "%s Going to run completion handler...", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223D47710](v8, -1, -1);
    MEMORY[0x223D47710](v7, -1, -1);
  }

  [a1 unregisterObserver_];
  return (*(v2 + OBJC_IVAR____TtC27DiagnosticsReporterServices30RemoteAlertDeactivationHandler_completion))(0);
}

void sub_21DD87AC0(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DD8BF08();
  __swift_project_value_buffer(v6, qword_281221D58);
  v7 = sub_21DD8BEE8();
  v8 = sub_21DD8C1E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21DD74A90(0xD00000000000002CLL, 0x800000021DD8E920, &v14);
    _os_log_impl(&dword_21DD6F000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223D47710](v10, -1, -1);
    MEMORY[0x223D47710](v9, -1, -1);
  }

  [a1 unregisterObserver_];
  v11 = *(v3 + OBJC_IVAR____TtC27DiagnosticsReporterServices30RemoteAlertDeactivationHandler_completion);
  if (a2)
  {
    v12 = sub_21DD8BC58();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v11();
}

id sub_21DD87D10(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteAlertDeactivationHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21DD87DA4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_21DD74A90(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_21DD87E00(uint64_t a1, unint64_t a2)
{
  v3 = sub_21DD87E4C(a1, a2);
  sub_21DD87F7C(&unk_282F1BC90);
  return v3;
}

void *sub_21DD87E4C(uint64_t a1, unint64_t a2)
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

  v6 = sub_21DD88068(v5, 0);
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

  result = sub_21DD8C328();
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
        v10 = sub_21DD8C0B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21DD88068(v10, 0);
        result = sub_21DD8C2C8();
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

uint64_t sub_21DD87F7C(uint64_t result)
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

  result = sub_21DD880DC(result, v11, 1, v3);
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

void *sub_21DD88068(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8F0A0, &unk_21DD8D8D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21DD880DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8F0A0, &unk_21DD8D8D0);
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

void sub_21DD88318(uint64_t a1, unint64_t a2, int a3, NSObject *a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a4;
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DD8BF08();
    __swift_project_value_buffer(v7, qword_281221AF0);
    v8 = a4;
    oslog = sub_21DD8BEE8();
    v9 = sub_21DD8C1D8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_21DD6F000, oslog, v9, "Error posting report: %@", v10, 0xCu);
      sub_21DD71200(v11, &unk_27CE8EF10, &unk_21DD8D530);
      MEMORY[0x223D47710](v11, -1, -1);
      MEMORY[0x223D47710](v10, -1, -1);

      v14 = oslog;
    }

    else
    {

      v14 = a4;
    }
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      if (qword_281221AE8 != -1)
      {
        swift_once();
      }

      v15 = sub_21DD8BF08();
      __swift_project_value_buffer(v15, qword_281221AF0);
      v16 = sub_21DD8BEE8();
      v17 = sub_21DD8C1D8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_21DD6F000, v16, v17, "No data in response", v18, 2u);
        MEMORY[0x223D47710](v18, -1, -1);
      }
    }

    else
    {
      sub_21DD8BB88();
      swift_allocObject();
      sub_21DD77B88(a1, a2);
      sub_21DD8BB78();
      sub_21DD8A9C4();
      sub_21DD8BB68();
      sub_21DD77BDC(a1, a2);

      swift_beginAccess();
      v22 = *(a5 + 16);
      v23 = *(a5 + 24);
      v24 = *(a5 + 32);
      v25 = *(a5 + 40);
      v26 = *(a5 + 48);
      v27 = *(a5 + 56);
      *(a5 + 16) = v29;
      *(a5 + 32) = v30;
      *(a5 + 48) = v31;
      *(a5 + 56) = v32;
      *(a5 + 64) = v33;
      sub_21DD8AA18(v22, v23, v24, v25, v26, v27);
    }

    sub_21DD8C208();
  }
}

uint64_t sub_21DD887E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_21DD8BD98();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_21DD77BDC(v6, v10);
}

uint64_t sub_21DD888A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F635F7261646172;
  v4 = 0xEF746E656E6F706DLL;
  v5 = 0x800000021DD8E010;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000021DD8E010;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x737261646172;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6F635F7261646172;
  if (*a2 == 1)
  {
    v5 = 0xEF746E656E6F706DLL;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x737261646172;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DD8C428();
  }

  return v11 & 1;
}

uint64_t sub_21DD889B8()
{
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD88A68(uint64_t a1)
{
  sub_21DD8C098();
}

uint64_t sub_21DD88B04(uint64_t a1)
{
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

unint64_t sub_21DD88BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21DD8AC90(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21DD88BE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEF746E656E6F706DLL;
  v5 = 0x6F635F7261646172;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000021DD8E010;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737261646172;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_21DD88C4C()
{
  v1 = 0x6F635F7261646172;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737261646172;
  }
}

unint64_t sub_21DD88CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DD8AC90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DD88CDC(uint64_t a1)
{
  v2 = sub_21DD8B0C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DD88D18(uint64_t a1)
{
  v2 = sub_21DD8B0C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DD88D5C()
{
  sub_21DD8C458();
  sub_21DD8C098();
  return sub_21DD8C478();
}

uint64_t sub_21DD88DC8(uint64_t a1)
{
  sub_21DD8C458();
  sub_21DD8C098();
  return sub_21DD8C478();
}

uint64_t sub_21DD88E18@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_21DD8C388();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_21DD88EA0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_21DD8C388();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_21DD88F04(uint64_t a1)
{
  v2 = sub_21DD8B76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DD88F40(uint64_t a1)
{
  v2 = sub_21DD8B76C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DD88F7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8F0D8, &qword_21DD8DD18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DD8B76C();
  sub_21DD8C498();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_21DD8C3D8();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_21DD890DC()
{
  sub_21DD8C2D8();
  v1 = *v0;

  MEMORY[0x223D46C80](2128928, 0xE300000000000000);
  MEMORY[0x223D46C80](v0[2], v0[3]);
  MEMORY[0x223D46C80](0x203A44492820, 0xE600000000000000);
  v2 = sub_21DD8C418();
  MEMORY[0x223D46C80](v2);

  MEMORY[0x223D46C80](41, 0xE100000000000000);
  return v1;
}

uint64_t sub_21DD891BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  if (v2 != 1)
  {
    v4 = 25705;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6973726576;
  if (*a2 != 1)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DD8C428();
  }

  return v11 & 1;
}

uint64_t sub_21DD892A0()
{
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

uint64_t sub_21DD89330(uint64_t a1)
{
  sub_21DD8C098();
}

uint64_t sub_21DD893AC(uint64_t a1)
{
  sub_21DD8C458();
  sub_21DD8C098();

  return sub_21DD8C478();
}

unint64_t sub_21DD89438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21DD8B240(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21DD89468(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E6F6973726576;
  if (v2 != 1)
  {
    v5 = 25705;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21DD894B4()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 25705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_21DD894FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DD8B240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DD89524(uint64_t a1)
{
  v2 = sub_21DD8B4D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DD89560(uint64_t a1)
{
  v2 = sub_21DD8B4D8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21DD895A0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_21DD8B28C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_21DD895E8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_21DD8ACDC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_21DD89638()
{
  v0 = sub_21DD8BF08();
  __swift_allocate_value_buffer(v0, qword_281221AF0);
  __swift_project_value_buffer(v0, qword_281221AF0);
  return sub_21DD8BEF8();
}

void sub_21DD896B8(uint64_t a2@<X8>)
{
  v3 = sub_21DD8BF38();
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v119 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v109 - v6;
  v122 = sub_21DD8C028();
  v8 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DD8BDF8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8EDC8, &qword_21DD8D500);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v109 - v15;
  v17 = sub_21DD8BD58();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v123 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!os_variant_has_internal_diagnostics())
  {
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v25 = sub_21DD8BF08();
    __swift_project_value_buffer(v25, qword_281221AF0);
    v21 = sub_21DD8BEE8();
    v22 = sub_21DD8C1D8();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_12;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Not posting report";
    goto LABEL_11;
  }

  sub_21DD8BD38();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_21DD71200(v16, &qword_27CE8EDC8, &qword_21DD8D500);
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v20 = sub_21DD8BF08();
    __swift_project_value_buffer(v20, qword_281221AF0);
    v21 = sub_21DD8BEE8();
    v22 = sub_21DD8C1D8();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_12;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Error constructing URL";
LABEL_11:
    _os_log_impl(&dword_21DD6F000, v21, v22, v24, v23, 2u);
    MEMORY[0x223D47710](v23, -1, -1);
LABEL_12:

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 1;
    goto LABEL_47;
  }

  v114 = v7;
  v33 = *(v18 + 32);
  v116 = v17;
  v33(v123, v16, v17);
  v34 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v35 = sub_21DD8BCB8();
  v36 = [v34 initWithURL_];

  v37 = sub_21DD8BFC8();
  [v36 setHTTPMethod_];

  v38 = sub_21DD8BFC8();
  v39 = sub_21DD8BFC8();
  v117 = v36;
  [v36 setValue:v38 forHTTPHeaderField:v39];

  v130 = xmmword_21DD8D8E0;
  v40 = sub_21DD8BD68();
  v115 = v18;
  v110 = v41;
  v109 = v40;
  v42 = sub_21DD8BCA8();
  v44 = v43;
  sub_21DD8BDE8();
  v45 = sub_21DD8BDD8();
  v47 = v46;
  (*(v11 + 8))(v13, v10);
  aBlock = 0;
  v125 = 0xE000000000000000;
  sub_21DD8C2D8();
  MEMORY[0x223D46C80](11565, 0xE200000000000000);
  v112 = v45;
  MEMORY[0x223D46C80](v45, v47);
  MEMORY[0x223D46C80](0xD000000000000040, 0x800000021DD8EA90);
  MEMORY[0x223D46C80](v42, v44);

  MEMORY[0x223D46C80](0xD000000000000025, 0x800000021DD8EAE0);
  v48 = v118;
  sub_21DD8C018();
  v49 = sub_21DD8BFF8();
  v51 = v50;

  v52 = *(v8 + 8);
  v111 = v8 + 8;
  v52(v48, v122);
  if (v51 >> 60 == 15)
  {
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v53 = sub_21DD8BF08();
    __swift_project_value_buffer(v53, qword_281221AF0);
    v54 = sub_21DD8BEE8();
    v55 = sub_21DD8C1D8();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v114;
    v58 = v109;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_21DD6F000, v54, v55, "Failed to encode file name data into request body", v59, 2u);
      MEMORY[0x223D47710](v59, -1, -1);
    }
  }

  else
  {
    sub_21DD8BDA8();
    sub_21DD77BDC(v49, v51);
    v57 = v114;
    v58 = v109;
  }

  sub_21DD8BDA8();
  aBlock = 0;
  v125 = 0xE000000000000000;
  sub_21DD8C2D8();
  MEMORY[0x223D46C80](757926413, 0xE400000000000000);
  MEMORY[0x223D46C80](v112, v47);
  MEMORY[0x223D46C80](0xD000000000000047, 0x800000021DD8EB10);
  sub_21DD8C018();
  v60 = sub_21DD8BFF8();
  v62 = v61;

  v52(v48, v122);
  if (v62 >> 60 == 15)
  {
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v63 = sub_21DD8BF08();
    __swift_project_value_buffer(v63, qword_281221AF0);
    v64 = sub_21DD8BEE8();
    v65 = sub_21DD8C1D8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_21DD6F000, v64, v65, "Failed to encode radars data into request body", v66, 2u);
      MEMORY[0x223D47710](v66, -1, -1);
    }
  }

  else
  {
    sub_21DD8BDA8();
    sub_21DD77BDC(v60, v62);
  }

  aBlock = 0;
  v125 = 0xE000000000000000;
  sub_21DD8C2D8();
  MEMORY[0x223D46C80](757926413, 0xE400000000000000);
  v67 = v112;
  MEMORY[0x223D46C80](v112, v47);
  MEMORY[0x223D46C80](0xD000000000000049, 0x800000021DD8EB60);
  MEMORY[0x223D46C80](v67, v47);
  MEMORY[0x223D46C80](168635693, 0xE400000000000000);
  sub_21DD8C018();
  v68 = sub_21DD8BFF8();
  v70 = v69;

  v52(v48, v122);
  if (v70 >> 60 == 15)
  {
    if (qword_281221AE8 != -1)
    {
      swift_once();
    }

    v71 = sub_21DD8BF08();
    __swift_project_value_buffer(v71, qword_281221AF0);
    v72 = sub_21DD8BEE8();
    v73 = sub_21DD8C1D8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_21DD6F000, v72, v73, "Failed to encode radar component data into request body", v74, 2u);
      MEMORY[0x223D47710](v74, -1, -1);
    }
  }

  else
  {
    sub_21DD8BDA8();
    sub_21DD77BDC(v68, v70);
  }

  v75 = v117;
  [v117 setTimeoutInterval_];
  aBlock = 0;
  v125 = 0xE000000000000000;
  sub_21DD8C2D8();

  aBlock = 0xD00000000000001ELL;
  v125 = 0x800000021DD8EBB0;
  MEMORY[0x223D46C80](v112, v47);

  v76 = sub_21DD8BFC8();

  v77 = sub_21DD8BFC8();
  [v75 setValue:v76 forHTTPHeaderField:v77];

  v78 = sub_21DD8BD88();
  [v75 setHTTPBody_];

  sub_21DD77BF0(v58, v110);
  if (qword_281221AE8 != -1)
  {
    swift_once();
  }

  v79 = sub_21DD8BF08();
  v80 = __swift_project_value_buffer(v79, qword_281221AF0);
  v81 = v130;
  sub_21DD77B88(v130, *(&v130 + 1));
  v114 = v80;
  v82 = sub_21DD8BEE8();
  v83 = sub_21DD8C1B8();
  sub_21DD77BF0(v81, *(&v81 + 1));
  v84 = os_log_type_enabled(v82, v83);
  v113 = a2;
  if (v84)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock = v86;
    *v85 = 136315138;
    sub_21DD8C018();
    v87 = sub_21DD8C008();
    if (v88)
    {
      v89 = v88;
    }

    else
    {
      v87 = 7104878;
      v89 = 0xE300000000000000;
    }

    v90 = sub_21DD74A90(v87, v89, &aBlock);

    *(v85 + 4) = v90;
    _os_log_impl(&dword_21DD6F000, v82, v83, "body: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x223D47710](v86, -1, -1);
    MEMORY[0x223D47710](v85, -1, -1);
  }

  v91 = dispatch_semaphore_create(0);
  v92 = [objc_opt_self() ephemeralSessionConfiguration];
  v93 = objc_opt_self();
  v118 = v92;
  v94 = [v93 sessionWithConfiguration_];
  v95 = swift_allocObject();
  *(v95 + 16) = 1;
  v122 = v95 + 16;
  *(v95 + 24) = 0u;
  *(v95 + 40) = 0u;
  *(v95 + 49) = 0u;
  v96 = swift_allocObject();
  *(v96 + 16) = v95;
  *(v96 + 24) = v91;
  v128 = sub_21DD8A8EC;
  v129 = v96;
  aBlock = MEMORY[0x277D85DD0];
  v125 = 1107296256;
  v126 = sub_21DD887E0;
  v127 = &block_descriptor_0;
  v97 = _Block_copy(&aBlock);
  v98 = v117;

  v99 = v91;

  v100 = v94;
  v101 = [v94 dataTaskWithRequest:v98 completionHandler:v97];
  _Block_release(v97);

  [v101 resume];
  v102 = v119;
  sub_21DD8BF28();
  sub_21DD8BF48();
  v103 = v121;
  v104 = *(v120 + 8);
  v104(v102, v121);
  sub_21DD8C1F8();
  v104(v57, v103);
  if (sub_21DD8BF18())
  {
    v105 = v118;
    v106 = sub_21DD8BEE8();
    v107 = sub_21DD8C1D8();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 134217984;
      *(v108 + 4) = 0x403E000000000000;
      _os_log_impl(&dword_21DD6F000, v106, v107, "Semaphore timed out after %f seconds. Unable to get response from server", v108, 0xCu);
      MEMORY[0x223D47710](v108, -1, -1);
    }

    [v101 cancel];
    (*(v115 + 8))(v123, v116);
  }

  else
  {
    (*(v115 + 8))(v123, v116);
  }

  a2 = v113;
  sub_21DD77BF0(v130, *(&v130 + 1));
  swift_beginAccess();
  v32 = *(v95 + 16);
  v26 = *(v95 + 24);
  v27 = *(v95 + 32);
  v28 = *(v95 + 40);
  v29 = *(v95 + 48);
  v30 = *(v95 + 56);
  v31 = *(v95 + 64);
  sub_21DD8A90C(v32, v26, v27, v28, v29, v30);

LABEL_47:
  *a2 = v32;
  *(a2 + 8) = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = v28;
  *(a2 + 32) = v29;
  *(a2 + 40) = v30;
  *(a2 + 48) = v31;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21DD8A90C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {

    sub_21DD8A980(a2, a3, a4, a5);
  }
}

void sub_21DD8A980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_21DD8A9C4()
{
  result = qword_281221B10;
  if (!qword_281221B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B10);
  }

  return result;
}

void sub_21DD8AA18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {

    sub_21DD8AA8C(a2, a3, a4, a5);
  }
}

void sub_21DD8AA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21DD8AAFC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21DD8AB58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
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

uint64_t sub_21DD8ABF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21DD8AC38(uint64_t result, int a2, int a3)
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

unint64_t sub_21DD8AC90(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DD8C388();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_21DD8ACDC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8F0B0, &qword_21DD8DA28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DD8B0C0();
  sub_21DD8C498();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8F0B8, &qword_21DD8DA30);
    v38 = 0;
    sub_21DD8B114();
    sub_21DD8C3B8();
    v9 = v33;
    v38 = 1;
    sub_21DD8B1EC();
    sub_21DD8C3B8();
    v32 = v9;
    v10 = v34;
    v30 = v36;
    v31 = v35;
    v28 = v33;
    v29 = v37;
    LOBYTE(v33) = 2;
    v11 = sub_21DD8C3A8();
    if (v32 | v10)
    {
      v19 = *(v6 + 8);
      LODWORD(v27) = v11;
      v20 = v10;
      v19(v8, v5);
      v21 = v32;

      v23 = v28;
      v22 = v29;
      v25 = v30;
      v24 = v31;
      sub_21DD8A980(v28, v20, v31, v30);
      __swift_destroy_boxed_opaque_existential_1(a1);

      sub_21DD8AA8C(v23, v20, v24, v25);
      *a2 = v21;
      *(a2 + 8) = v23;
      *(a2 + 16) = v20;
      *(a2 + 24) = v24;
      *(a2 + 32) = v25;
      *(a2 + 40) = v22;
      *(a2 + 48) = v27;
    }

    else
    {
      v12 = sub_21DD8C318();
      swift_allocError();
      v13 = a1[3];
      v26 = a1[4];
      v27 = v14;
      __swift_project_boxed_opaque_existential_1(a1, v13);
      sub_21DD8C488();
      v15 = v27;
      sub_21DD8C308();
      (*(*(v12 - 8) + 104))(v15, *MEMORY[0x277D84168], v12);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
      v27 = 0;
      v17 = v30;
      v16 = v31;
      v18 = v28;
      __swift_destroy_boxed_opaque_existential_1(a1);

      sub_21DD8AA8C(v18, v27, v16, v17);
    }
  }
}

unint64_t sub_21DD8B0C0()
{
  result = qword_281221B68;
  if (!qword_281221B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B68);
  }

  return result;
}

unint64_t sub_21DD8B114()
{
  result = qword_281221AD8;
  if (!qword_281221AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE8F0B8, &qword_21DD8DA30);
    sub_21DD8B198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221AD8);
  }

  return result;
}

unint64_t sub_21DD8B198()
{
  result = qword_281221B38;
  if (!qword_281221B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B38);
  }

  return result;
}

unint64_t sub_21DD8B1EC()
{
  result = qword_281221B18;
  if (!qword_281221B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B18);
  }

  return result;
}

unint64_t sub_21DD8B240(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DD8C388();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DD8B28C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE8F0C0, &qword_21DD8DA38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DD8B4D8();
  sub_21DD8C498();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v9 = sub_21DD8C3C8();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  v23 = 1;
  v12 = sub_21DD8C3C8();
  v19 = v13;
  v22 = 2;
  v14 = sub_21DD8C3D8();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = v20;
  *v20 = v21;
  v16[1] = v11;
  v17 = v19;
  v16[2] = v12;
  v16[3] = v17;
  v16[4] = v14;
  return result;
}

unint64_t sub_21DD8B4D8()
{
  result = qword_281221B30;
  if (!qword_281221B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B30);
  }

  return result;
}

unint64_t sub_21DD8B560()
{
  result = qword_27CE8F0C8;
  if (!qword_27CE8F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8F0C8);
  }

  return result;
}

unint64_t sub_21DD8B5B8()
{
  result = qword_27CE8F0D0;
  if (!qword_27CE8F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8F0D0);
  }

  return result;
}

unint64_t sub_21DD8B610()
{
  result = qword_281221B20;
  if (!qword_281221B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B20);
  }

  return result;
}

unint64_t sub_21DD8B668()
{
  result = qword_281221B28;
  if (!qword_281221B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B28);
  }

  return result;
}

unint64_t sub_21DD8B6C0()
{
  result = qword_281221B58;
  if (!qword_281221B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B58);
  }

  return result;
}

unint64_t sub_21DD8B718()
{
  result = qword_281221B60;
  if (!qword_281221B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B60);
  }

  return result;
}

unint64_t sub_21DD8B76C()
{
  result = qword_281221B50;
  if (!qword_281221B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpeedTracer.Response.Radar.Problem.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SpeedTracer.Response.Radar.Problem.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21DD8B8AC()
{
  result = qword_27CE8F0E0;
  if (!qword_27CE8F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8F0E0);
  }

  return result;
}

unint64_t sub_21DD8B904()
{
  result = qword_281221B40;
  if (!qword_281221B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B40);
  }

  return result;
}

unint64_t sub_21DD8B95C()
{
  result = qword_281221B48;
  if (!qword_281221B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221B48);
  }

  return result;
}

uint64_t sub_21DD8B9F8()
{
  v1 = *v0;
  sub_21DD8C458();
  MEMORY[0x223D47040](v1);
  return sub_21DD8C478();
}

uint64_t sub_21DD8BA6C(uint64_t a1)
{
  v2 = *v1;
  sub_21DD8C458();
  MEMORY[0x223D47040](v2);
  return sub_21DD8C478();
}

unint64_t sub_21DD8BAB0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21DD8BAF0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21DD8BAF0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21DD8BB04()
{
  result = qword_27CE8F0E8;
  if (!qword_27CE8F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE8F0E8);
  }

  return result;
}