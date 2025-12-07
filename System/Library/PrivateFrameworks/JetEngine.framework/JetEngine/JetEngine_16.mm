void sub_1AB13EE00(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a4;
  v8 = sub_1AB45FFD4();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  sub_1AB014A58(a1, v72, &qword_1EB436768, &qword_1AB4D44A0);
  if (v73)
  {
    sub_1AB0149B0(v72, a5);
  }

  else
  {
    v56 = v8;
    v74 = v5;
    v68 = *(&v72[0] + 1);
    v58 = *&v72[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v19 = sub_1AB45FFC4();
    v20 = __swift_project_value_buffer(v19, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v60 = v20;
    v21 = sub_1AB45FFA4();
    v22 = sub_1AB461234();
    v23 = sub_1AB461314();
    v64 = v10;
    v61 = a5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v71[0].tv_sec = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1AB030D2C(0x6143746E65746E49, 0xEB00000000656863, &v71[0].tv_sec);
      v26 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v21, v22, v26, "MakeDependency", "object=%s,type=lazy", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v27 = v25;
      v10 = v64;
      MEMORY[0x1AC59F020](v27, -1, -1);
      MEMORY[0x1AC59F020](v24, -1, -1);
    }

    (*(v11 + 16))(v15, v18, v10);
    sub_1AB460014();
    swift_allocObject();
    v28 = sub_1AB460004();
    v30 = *(v11 + 8);
    v29 = v11 + 8;
    v59 = v30;
    v30(v18, v10);
    static MonotonicTime.now.getter(v71);
    tv_sec = v71[0].tv_sec;
    tv_nsec = v71[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v62 = v28;
    sub_1AB4622E4();
    v32 = v71[0].tv_sec;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436748, &qword_1AB4D4480);
    if (v33 == type metadata accessor for StartUpPerformanceEvent())
    {
      v35 = 0;
    }

    else
    {
      type metadata accessor for BaseObjectGraph();
      v34 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v71[0].tv_sec = v34;

      swift_task_localValuePush();
      v35 = sub_1AB01DBA0(*(v34 + 16));
      swift_task_localValuePop();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v36 = swift_allocObject();
    *(v36 + 24) = 0;
    v37 = (v36 + 24);
    *(v36 + 16) = 0;
    v71[0].tv_sec = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v38 = v74;
    sub_1AB12C208(v58, v68, v65, v66);
    v74 = v38;
    v66 = v35;
    if (v35)
    {
      v70.tv_sec = v33;
      StartUpPerformanceEvent.record(checkpoint:)(&v70.tv_sec);
    }

    v65 = v29;
    sub_1AB014AC0(a1, &qword_1EB436768, &qword_1AB4D44A0);
    sub_1AB01494C(v71, a1);
    *(a1 + 40) = 1;
    static MonotonicTime.now.getter(&v70);
    v39 = v70.tv_sec;
    v40 = v70.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v41 = v40 / *&qword_1ED4D1F90 + v39 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v42 = sub_1AB45FFA4();
    v43 = v69;
    sub_1AB45FFF4();
    v44 = sub_1AB461224();

    v45 = sub_1AB461314();
    v46 = v67;
    if (v45)
    {

      sub_1AB460024();

      v47 = v63;
      v48 = v56;
      if ((*(v63 + 88))(v46, v56) == *MEMORY[0x1E69E93E8])
      {
        v49 = 0;
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(v47 + 8))(v46, v48);
        v50 = "selfTime=%f";
        v49 = 1;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      *(v51 + 1) = v49;
      *(v51 + 2) = 2048;
      os_unfair_lock_lock(v37);
      v52 = *(v36 + 16);
      os_unfair_lock_unlock(v37);
      *(v51 + 4) = v41 - v52;
      v53 = v69;
      v54 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v42, v44, v54, "MakeDependency", v50, v51, 0xCu);
      v55 = v51;
      v43 = v53;
      MEMORY[0x1AC59F020](v55, -1, -1);
    }

    v59(v43, v64);
    os_unfair_lock_lock((v32 + 24));
    *(v32 + 16) = v41 + *(v32 + 16);
    os_unfair_lock_unlock((v32 + 24));
    sub_1AB0149B0(&v71[0].tv_sec, v61);
    swift_task_localValuePop();
  }
}

void sub_1AB13F5DC(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a4;
  v8 = sub_1AB45FFD4();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  sub_1AB014A58(a1, v72, &qword_1EB436680, &qword_1AB4D43C8);
  if (v73)
  {
    sub_1AB0149B0(v72, a5);
  }

  else
  {
    v56 = v8;
    v74 = v5;
    v68 = *(&v72[0] + 1);
    v58 = *&v72[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v19 = sub_1AB45FFC4();
    v20 = __swift_project_value_buffer(v19, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v60 = v20;
    v21 = sub_1AB45FFA4();
    v22 = sub_1AB461234();
    v23 = sub_1AB461314();
    v64 = v10;
    v61 = a5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v71[0].tv_sec = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1AB030D2C(0xD000000000000010, 0x80000001AB4FF070, &v71[0].tv_sec);
      v26 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v21, v22, v26, "MakeDependency", "object=%s,type=lazy", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v27 = v25;
      v10 = v64;
      MEMORY[0x1AC59F020](v27, -1, -1);
      MEMORY[0x1AC59F020](v24, -1, -1);
    }

    (*(v11 + 16))(v15, v18, v10);
    sub_1AB460014();
    swift_allocObject();
    v28 = sub_1AB460004();
    v30 = *(v11 + 8);
    v29 = v11 + 8;
    v59 = v30;
    v30(v18, v10);
    static MonotonicTime.now.getter(v71);
    tv_sec = v71[0].tv_sec;
    tv_nsec = v71[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v62 = v28;
    sub_1AB4622E4();
    v32 = v71[0].tv_sec;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660, &qword_1AB4D43A8);
    if (v33 == type metadata accessor for StartUpPerformanceEvent())
    {
      v35 = 0;
    }

    else
    {
      type metadata accessor for BaseObjectGraph();
      v34 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v71[0].tv_sec = v34;

      swift_task_localValuePush();
      v35 = sub_1AB01DBA0(*(v34 + 16));
      swift_task_localValuePop();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v36 = swift_allocObject();
    *(v36 + 24) = 0;
    v37 = (v36 + 24);
    *(v36 + 16) = 0;
    v71[0].tv_sec = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v38 = v74;
    sub_1AB12C208(v58, v68, v65, v66);
    v74 = v38;
    v66 = v35;
    if (v35)
    {
      v70.tv_sec = v33;
      StartUpPerformanceEvent.record(checkpoint:)(&v70.tv_sec);
    }

    v65 = v29;
    sub_1AB014AC0(a1, &qword_1EB436680, &qword_1AB4D43C8);
    sub_1AB01494C(v71, a1);
    *(a1 + 40) = 1;
    static MonotonicTime.now.getter(&v70);
    v39 = v70.tv_sec;
    v40 = v70.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v41 = v40 / *&qword_1ED4D1F90 + v39 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v42 = sub_1AB45FFA4();
    v43 = v69;
    sub_1AB45FFF4();
    v44 = sub_1AB461224();

    v45 = sub_1AB461314();
    v46 = v67;
    if (v45)
    {

      sub_1AB460024();

      v47 = v63;
      v48 = v56;
      if ((*(v63 + 88))(v46, v56) == *MEMORY[0x1E69E93E8])
      {
        v49 = 0;
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(v47 + 8))(v46, v48);
        v50 = "selfTime=%f";
        v49 = 1;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      *(v51 + 1) = v49;
      *(v51 + 2) = 2048;
      os_unfair_lock_lock(v37);
      v52 = *(v36 + 16);
      os_unfair_lock_unlock(v37);
      *(v51 + 4) = v41 - v52;
      v53 = v69;
      v54 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v42, v44, v54, "MakeDependency", v50, v51, 0xCu);
      v55 = v51;
      v43 = v53;
      MEMORY[0x1AC59F020](v55, -1, -1);
    }

    v59(v43, v64);
    os_unfair_lock_lock((v32 + 24));
    *(v32 + 16) = v41 + *(v32 + 16);
    os_unfair_lock_unlock((v32 + 24));
    sub_1AB0149B0(&v71[0].tv_sec, v61);
    swift_task_localValuePop();
  }
}

void sub_1AB13FDB4(uint64_t a1@<X0>, uint64_t a3@<X2>, __darwin_time_t a4@<X3>, _OWORD *a5@<X8>)
{
  v88 = a4;
  v87 = a3;
  v91 = a5;
  v7 = sub_1AB45FFD4();
  v81 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1AB460134();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  v89 = a1;
  sub_1AB014A58(a1, v94, &qword_1EB436720, &qword_1AB4D4458);
  if (v95)
  {
    v20 = v94[3];
    v21 = v91;
    v91[2] = v94[2];
    v21[3] = v20;
    v21[4] = v94[4];
    v22 = v94[1];
    *v21 = v94[0];
    v21[1] = v22;
  }

  else
  {
    v74 = v7;
    v82 = v13;
    v96 = v5;
    v90 = *(&v94[0] + 1);
    v75 = *&v94[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1AB45FFC4();
    v24 = __swift_project_value_buffer(v23, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v78 = v24;
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v83 = v10;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = v11;
      v30 = swift_slowAlloc();
      v93[0].tv_sec = v30;
      *v28 = 136315138;
      *(v28 + 4) = sub_1AB030D2C(0x72756769666E6F43, 0xED00006E6F697461, &v93[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v31, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v11 = v29;
      MEMORY[0x1AC59F020](v32, -1, -1);
      v33 = v28;
      v10 = v83;
      MEMORY[0x1AC59F020](v33, -1, -1);
    }

    (*(v11 + 16))(v16, v19, v10);
    sub_1AB460014();
    swift_allocObject();
    sub_1AB460004();
    v34 = *(v11 + 8);
    v79 = v11 + 8;
    v77 = v34;
    v34(v19, v10);
    static MonotonicTime.now.getter(v93);
    tv_sec = v93[0].tv_sec;
    tv_nsec = v93[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v76 = v93[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v37 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v93[0].tv_sec = v37;

    swift_task_localValuePush();
    v38 = sub_1AB01DBA0(*(v37 + 16));
    swift_task_localValuePop();

    if (v38 && (v39 = swift_conformsToProtocol2()) != 0)
    {
      v40 = *(v39 + 8);

      v40();
      sub_1AB0318FC();
      sub_1AB460184();
      v41 = sub_1AB460154();
      v42 = *(v38 + 48);

      os_unfair_lock_lock((v42 + 20));
      v43 = *(v42 + 16);
      os_unfair_lock_unlock((v42 + 20));

      if (v43 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v41);

      sub_1AB460164();
    }

    else
    {
      v41 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    v45 = (v44 + 24);
    *(v44 + 16) = 0;
    v93[0].tv_sec = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v46 = v96;
    sub_1AB12C208(v75, v90, v87, v88);
    v96 = v46;
    v47 = v41;
    if (v41)
    {
      v48 = *MEMORY[0x1E6977AC8];
      v49 = v85;
      v50 = *(v85 + 104);
      v88 = v44;
      v51 = tv_nsec;
      v52 = v84;
      v53 = v86;
      v50(v84, v48, v86);
      sub_1AB460174();
      v54 = v52;
      tv_nsec = v51;
      v45 = (v44 + 24);
      v44 = v88;
      (*(v49 + 8))(v54, v53);
    }

    v88 = v47;
    if (v38)
    {
      v92.tv_sec = &type metadata for JetPackAssetSession.Configuration;
      StartUpPerformanceEvent.record(checkpoint:)(&v92.tv_sec);
    }

    v55 = v89;
    sub_1AB014AC0(v89, &qword_1EB436720, &qword_1AB4D4458);
    sub_1AB0261D0(v93, v55);
    *(v55 + 80) = 1;
    static MonotonicTime.now.getter(&v92);
    v56 = v92.tv_sec;
    v57 = v92.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v58 = v57 / *&qword_1ED4D1F90 + v56 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v59 = sub_1AB45FFA4();
    v60 = v82;
    sub_1AB45FFF4();
    v61 = sub_1AB461224();

    if (sub_1AB461314())
    {
      LODWORD(v89) = v61;

      v62 = v80;
      sub_1AB460024();

      v63 = v81;
      v64 = v74;
      if ((*(v81 + 88))(v62, v74) == *MEMORY[0x1E69E93E8])
      {
        v65 = 0;
        v66 = "[Error] Interval already ended";
      }

      else
      {
        (*(v63 + 8))(v62, v64);
        v66 = "selfTime=%f";
        v65 = 1;
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      *(v67 + 1) = v65;
      *(v67 + 2) = 2048;
      os_unfair_lock_lock(v45);
      v68 = *(v44 + 16);
      os_unfair_lock_unlock(v45);
      *(v67 + 4) = v58 - v68;
      v60 = v82;
      v69 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v59, v89, v69, "MakeDependency", v66, v67, 0xCu);
      MEMORY[0x1AC59F020](v67, -1, -1);
    }

    v77(v60, v83);
    v70 = v76;
    os_unfair_lock_lock(v76 + 6);
    *&v70[4]._os_unfair_lock_opaque = v58 + *&v70[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v70 + 6);
    v71 = v93[3];
    v72 = v91;
    v91[2] = v93[2];
    v72[3] = v71;
    v72[4] = v93[4];
    v73 = v93[1];
    *v72 = v93[0];
    v72[1] = v73;
    swift_task_localValuePop();
  }
}

void sub_1AB14084C(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a4;
  v8 = sub_1AB45FFD4();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  sub_1AB014A58(a1, v72, &qword_1EB436738, &qword_1AB4D4470);
  if (v73)
  {
    sub_1AB0149B0(v72, a5);
  }

  else
  {
    v56 = v8;
    v74 = v5;
    v68 = *(&v72[0] + 1);
    v58 = *&v72[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v19 = sub_1AB45FFC4();
    v20 = __swift_project_value_buffer(v19, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v60 = v20;
    v21 = sub_1AB45FFA4();
    v22 = sub_1AB461234();
    v23 = sub_1AB461314();
    v64 = v10;
    v61 = a5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v71[0].tv_sec = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1AB030D2C(0xD000000000000011, 0x80000001AB4FF200, &v71[0].tv_sec);
      v26 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v21, v22, v26, "MakeDependency", "object=%s,type=lazy", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v27 = v25;
      v10 = v64;
      MEMORY[0x1AC59F020](v27, -1, -1);
      MEMORY[0x1AC59F020](v24, -1, -1);
    }

    (*(v11 + 16))(v15, v18, v10);
    sub_1AB460014();
    swift_allocObject();
    v28 = sub_1AB460004();
    v30 = *(v11 + 8);
    v29 = v11 + 8;
    v59 = v30;
    v30(v18, v10);
    static MonotonicTime.now.getter(v71);
    tv_sec = v71[0].tv_sec;
    tv_nsec = v71[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v62 = v28;
    sub_1AB4622E4();
    v32 = v71[0].tv_sec;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436730, &qword_1AB4D4468);
    if (v33 == type metadata accessor for StartUpPerformanceEvent())
    {
      v35 = 0;
    }

    else
    {
      type metadata accessor for BaseObjectGraph();
      v34 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v71[0].tv_sec = v34;

      swift_task_localValuePush();
      v35 = sub_1AB01DBA0(*(v34 + 16));
      swift_task_localValuePop();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v36 = swift_allocObject();
    *(v36 + 24) = 0;
    v37 = (v36 + 24);
    *(v36 + 16) = 0;
    v71[0].tv_sec = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v38 = v74;
    sub_1AB12C208(v58, v68, v65, v66);
    v74 = v38;
    v66 = v35;
    if (v35)
    {
      v70.tv_sec = v33;
      StartUpPerformanceEvent.record(checkpoint:)(&v70.tv_sec);
    }

    v65 = v29;
    sub_1AB014AC0(a1, &qword_1EB436738, &qword_1AB4D4470);
    sub_1AB01494C(v71, a1);
    *(a1 + 40) = 1;
    static MonotonicTime.now.getter(&v70);
    v39 = v70.tv_sec;
    v40 = v70.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v41 = v40 / *&qword_1ED4D1F90 + v39 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v42 = sub_1AB45FFA4();
    v43 = v69;
    sub_1AB45FFF4();
    v44 = sub_1AB461224();

    v45 = sub_1AB461314();
    v46 = v67;
    if (v45)
    {

      sub_1AB460024();

      v47 = v63;
      v48 = v56;
      if ((*(v63 + 88))(v46, v56) == *MEMORY[0x1E69E93E8])
      {
        v49 = 0;
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(v47 + 8))(v46, v48);
        v50 = "selfTime=%f";
        v49 = 1;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      *(v51 + 1) = v49;
      *(v51 + 2) = 2048;
      os_unfair_lock_lock(v37);
      v52 = *(v36 + 16);
      os_unfair_lock_unlock(v37);
      *(v51 + 4) = v41 - v52;
      v53 = v69;
      v54 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v42, v44, v54, "MakeDependency", v50, v51, 0xCu);
      v55 = v51;
      v43 = v53;
      MEMORY[0x1AC59F020](v55, -1, -1);
    }

    v59(v43, v64);
    os_unfair_lock_lock((v32 + 24));
    *(v32 + 16) = v41 + *(v32 + 16);
    os_unfair_lock_unlock((v32 + 24));
    sub_1AB0149B0(&v71[0].tv_sec, v61);
    swift_task_localValuePop();
  }
}

__darwin_time_t *sub_1AB141024(uint64_t a1, uint64_t a2, uint64_t a3, __darwin_time_t a4)
{
  v93 = a3;
  v94 = a4;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v75 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v77 = v7;
  v78 = v6;
  v86 = v17;
  v92 = v20;
  v96 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v82 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v87 = v22;
  v88 = v11;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = v12;
    v31 = swift_slowAlloc();
    v95.tv_sec = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AB030D2C(0xD000000000000013, 0x80000001AB4FF1E0, &v95.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v33 = v31;
    v12 = v30;
    v22 = v87;
    MEMORY[0x1AC59F020](v33, -1, -1);
    v34 = v29;
    v11 = v88;
    MEMORY[0x1AC59F020](v34, -1, -1);
  }

  (*(v12 + 16))(v15, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v84 = sub_1AB460004();
  v36 = *(v12 + 8);
  v35 = v12 + 8;
  v81 = v36;
  v36(v19, v11);
  static MonotonicTime.now.getter(&v95);
  v79 = v95;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v83 = v35;
  sub_1AB4622E4();
  tv_sec = v95.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v37 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v95.tv_sec = v37;

  swift_task_localValuePush();
  v38 = sub_1AB01DBA0(*(v37 + 16));
  swift_task_localValuePop();

  if (v38)
  {
    v39 = type metadata accessor for JetPackAssetSession();
    v40 = swift_conformsToProtocol2();
    v41 = 0;
    v42 = v92;
    if (!v40 || !v39)
    {
      goto LABEL_19;
    }

    v43 = *(v40 + 8);
    v44 = v40;

    v43(v39, v44);
    sub_1AB0318FC();
    sub_1AB460184();
    v41 = sub_1AB460154();
    v45 = *(v38 + 48);

    os_unfair_lock_lock((v45 + 20));
    v46 = *(v45 + 16);
    os_unfair_lock_unlock((v45 + 20));

    if (v46 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v41);

    sub_1AB460164();
  }

  else
  {
    v41 = 0;
  }

  v42 = v92;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v76 = (v47 + 24);
  *(v47 + 16) = 0;
  v95.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
  swift_task_localValuePush();
  v48 = v96;
  v49 = sub_1AB12C354(v42, v22, v93, v94);
  v21 = v49;
  v96 = v48;
  if (v41)
  {
    v50 = *MEMORY[0x1E6977AC8];
    v94 = v47;
    v51 = v49;
    v52 = v42;
    v53 = a1;
    v54 = v38;
    v55 = v22;
    v56 = v89;
    v57 = v90;
    v58 = v91;
    (*(v90 + 104))(v89, v50, v91);
    sub_1AB460174();
    (*(v57 + 8))(v56, v58);
    v22 = v55;
    v38 = v54;
    a1 = v53;
    v42 = v52;
    v21 = v51;
    v47 = v94;
  }

  if (v38)
  {
    v95.tv_sec = *v21;
    StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
  }

  sub_1AB057304(v42, v22, 0);
  *a1 = v21;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;

  static MonotonicTime.now.getter(&v95);
  v59 = v95.tv_sec;
  tv_nsec = v95.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v61 = tv_nsec / *&qword_1ED4D1F90 + v59 - (v79.tv_nsec / *&qword_1ED4D1F90 + v79.tv_sec);

  v62 = sub_1AB45FFA4();
  v63 = v86;
  sub_1AB45FFF4();
  LODWORD(v94) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v64 = v85;
    sub_1AB460024();

    v65 = v77;
    v66 = v78;
    if ((*(v77 + 88))(v64, v78) == *MEMORY[0x1E69E93E8])
    {
      v67 = 0;
      v68 = "[Error] Interval already ended";
    }

    else
    {
      (*(v65 + 8))(v64, v66);
      v68 = "selfTime=%f";
      v67 = 1;
    }

    v69 = swift_slowAlloc();
    *v69 = 0;
    *(v69 + 1) = v67;
    *(v69 + 2) = 2048;
    v70 = v76;
    os_unfair_lock_lock(v76);
    v71 = *(v47 + 16);
    os_unfair_lock_unlock(v70);
    *(v69 + 4) = v61 - v71;
    v63 = v86;
    v72 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, v94, v72, "MakeDependency", v68, v69, 0xCu);
    MEMORY[0x1AC59F020](v69, -1, -1);
    v42 = v92;
  }

  v81(v63, v88);
  v73 = tv_sec;
  os_unfair_lock_lock(tv_sec + 6);
  *&v73[4]._os_unfair_lock_opaque = v61 + *&v73[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v73 + 6);
  swift_task_localValuePop();

  sub_1AB057304(v42, v87, 0);

  return v21;
}

void sub_1AB1419CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a3;
  v90 = a4;
  v87 = a2;
  v8 = sub_1AB45FFD4();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &tv_sec - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &tv_sec - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for JetPackAsset(0);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &tv_sec - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1AB45FF84();
  v99 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &tv_sec - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &tv_sec - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &tv_sec - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366E0, &qword_1AB4D4418);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &tv_sec - v21;
  v91 = a1;
  sub_1AB014A58(a1, &tv_sec - v21, &qword_1EB4366E0, &qword_1AB4D4418);
  v88 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AB0342CC(v22, a5, type metadata accessor for JetPackAsset);
  }

  else
  {
    v83 = a5;
    v23 = *(v22 + 1);
    v76 = *v22;
    v92 = v23;
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v79 = v25;
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v30 = v94;
    v29 = v95;
    v97 = v5;
    if (v28)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v98.tv_sec = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AB030D2C(0x416B63615074654ALL, 0xEC00000074657373, &v98.tv_sec);
      v33 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v33, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1AC59F020](v32, -1, -1);
      MEMORY[0x1AC59F020](v31, -1, -1);
    }

    v34 = v99;
    v35 = v96;
    (*(v99 + 16))(v16, v19, v96);
    sub_1AB460014();
    swift_allocObject();
    v36 = sub_1AB460004();
    v37 = *(v34 + 8);
    v99 = v34 + 8;
    v78 = v37;
    v37(v19, v35);
    static MonotonicTime.now.getter(&v98);
    tv_nsec = v98.tv_nsec;
    tv_sec = v98.tv_sec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v77 = v98.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v98.tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    v87 = v36;
    if (v40 && (v41 = swift_conformsToProtocol2()) != 0)
    {
      v42 = *(v41 + 8);
      v43 = v41;

      v42(v29, v43);
      sub_1AB0318FC();
      sub_1AB460184();
      v44 = sub_1AB460154();
      v45 = *(v40 + 48);

      os_unfair_lock_lock((v45 + 20));
      v46 = *(v45 + 16);
      os_unfair_lock_unlock((v45 + 20));

      if (v46 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v44);

      sub_1AB460164();
    }

    else
    {
      v44 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v47 = swift_allocObject();
    *(v47 + 24) = 0;
    v48 = (v47 + 24);
    *(v47 + 16) = 0;
    v98.tv_sec = v47;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v49 = v97;
    sub_1AB12C208(v76, v92, v89, v90);
    v97 = v49;
    if (v44)
    {
      v51 = v85;
      v50 = v86;
      v52 = v30;
      v53 = tv_nsec;
      v54 = v84;
      (*(v85 + 104))(v84, *MEMORY[0x1E6977AC8], v86);
      sub_1AB460174();
      v55 = v54;
      tv_nsec = v53;
      v30 = v52;
      (*(v51 + 8))(v55, v50);
      v29 = v95;
    }

    if (v40)
    {
      v98.tv_sec = v29;
      StartUpPerformanceEvent.record(checkpoint:)(&v98.tv_sec);
    }

    v56 = v91;
    sub_1AB014AC0(v91, &qword_1EB4366E0, &qword_1AB4D4418);
    sub_1AB03AB54(v30, v56, type metadata accessor for JetPackAsset);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v98);
    v57 = v98.tv_sec;
    v58 = v98.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v59 = v58 / *&qword_1ED4D1F90 + v57 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v60 = sub_1AB45FFA4();
    v61 = v93;
    sub_1AB45FFF4();
    LODWORD(v95) = sub_1AB461224();

    v62 = sub_1AB461314();
    v63 = v83;
    if (v62)
    {

      v64 = v80;
      sub_1AB460024();

      v66 = v81;
      v65 = v82;
      if ((*(v81 + 88))(v64, v82) == *MEMORY[0x1E69E93E8])
      {
        v67 = 0;
        v68 = "[Error] Interval already ended";
      }

      else
      {
        (*(v66 + 8))(v64, v65);
        v68 = "selfTime=%f";
        v67 = 1;
      }

      v69 = swift_slowAlloc();
      *v69 = 0;
      *(v69 + 1) = v67;
      *(v69 + 2) = 2048;
      os_unfair_lock_lock(v48);
      v70 = *(v47 + 16);
      os_unfair_lock_unlock(v48);
      *(v69 + 4) = v59 - v70;
      v71 = v93;
      v72 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v60, v95, v72, "MakeDependency", v68, v69, 0xCu);
      v73 = v69;
      v61 = v71;
      MEMORY[0x1AC59F020](v73, -1, -1);
      v63 = v83;
      v30 = v94;
    }

    v78(v61, v96);
    v74 = v77;
    os_unfair_lock_lock(v77 + 6);
    *&v74[4]._os_unfair_lock_opaque = v59 + *&v74[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v74 + 6);
    sub_1AB0342CC(v30, v63, type metadata accessor for JetPackAsset);
    swift_task_localValuePop();
  }
}

void sub_1AB142454(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a4;
  v83 = a3;
  v8 = sub_1AB45FFD4();
  v79 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1AB460134();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v94 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  v85 = a1;
  sub_1AB014A58(a1, v91, &qword_1EB436700, &qword_1AB4D4438);
  if (v93)
  {
    v20 = v91[1];
    *a5 = v91[0];
    *(a5 + 16) = v20;
    *(a5 + 32) = v91[2];
    *(a5 + 48) = v92;
  }

  else
  {
    v70 = v8;
    v87 = v5;
    v86 = *(&v91[0] + 1);
    v72 = *&v91[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1AB45FFC4();
    v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v75 = v22;
    v23 = sub_1AB45FFA4();
    v24 = sub_1AB461234();
    v25 = sub_1AB461314();
    v26 = v13;
    v77 = a5;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = v13;
      v29 = v11;
      v30 = v28;
      v89[0].tv_sec = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1AB030D2C(0xD000000000000011, 0x80000001AB4FF180, &v89[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v31, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v11 = v29;
      v26 = v76;
      MEMORY[0x1AC59F020](v32, -1, -1);
      MEMORY[0x1AC59F020](v27, -1, -1);
    }

    v33 = v94;
    (*(v94 + 16))(v16, v19, v11);
    sub_1AB460014();
    swift_allocObject();
    v34 = sub_1AB460004();
    v35 = *(v33 + 8);
    v76 = v11;
    v94 = v33 + 8;
    v74 = v35;
    v35(v19, v11);
    static MonotonicTime.now.getter(v89);
    v71 = v89[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v89[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v36 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v89[0].tv_sec = v36;

    swift_task_localValuePush();
    v37 = sub_1AB01DBA0(*(v36 + 16));
    swift_task_localValuePop();

    if (v37 && (v38 = swift_conformsToProtocol2()) != 0)
    {
      v39 = v34;
      v40 = *(v38 + 8);

      v40();
      sub_1AB0318FC();
      sub_1AB460184();
      v41 = sub_1AB460154();
      v42 = *(v37 + 48);

      os_unfair_lock_lock((v42 + 20));
      v43 = *(v42 + 16);
      os_unfair_lock_unlock((v42 + 20));

      if (v43 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v41);

      sub_1AB460164();

      v34 = v39;
    }

    else
    {
      v41 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    v45 = (v44 + 24);
    *(v44 + 16) = 0;
    v89[0].tv_sec = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v46 = v87;
    sub_1AB12C208(v72, v86, v83, v84);
    v87 = v46;
    v47 = v41;
    if (v41)
    {
      v48 = v81;
      v49 = v80;
      v50 = v82;
      (*(v81 + 104))(v80, *MEMORY[0x1E6977AC8], v82);
      sub_1AB460174();
      (*(v48 + 8))(v49, v50);
    }

    v84 = v47;
    if (v37)
    {
      v88.tv_sec = &type metadata for DiskJetPackLoader;
      StartUpPerformanceEvent.record(checkpoint:)(&v88.tv_sec);
    }

    v51 = v85;
    sub_1AB014AC0(v85, &qword_1EB436700, &qword_1AB4D4438);
    sub_1AB03FFF8(v89, v51);
    *(v51 + 56) = 1;
    static MonotonicTime.now.getter(&v88);
    v52 = v88.tv_sec;
    tv_nsec = v88.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v54 = tv_nsec / *&qword_1ED4D1F90 + v52 - (v71.tv_nsec / *&qword_1ED4D1F90 + v71.tv_sec);

    v55 = sub_1AB45FFA4();
    sub_1AB45FFF4();
    v56 = sub_1AB461224();

    if (sub_1AB461314())
    {
      LODWORD(v83) = v56;

      v57 = v34;
      v58 = v78;
      sub_1AB460024();
      v85 = v57;

      v59 = v79;
      v60 = v70;
      if ((*(v79 + 88))(v58, v70) == *MEMORY[0x1E69E93E8])
      {
        v61 = 0;
        v62 = "[Error] Interval already ended";
      }

      else
      {
        (*(v59 + 8))(v58, v60);
        v62 = "selfTime=%f";
        v61 = 1;
      }

      v63 = swift_slowAlloc();
      *v63 = 0;
      *(v63 + 1) = v61;
      *(v63 + 2) = 2048;
      os_unfair_lock_lock(v45);
      v64 = *(v44 + 16);
      os_unfair_lock_unlock(v45);
      *(v63 + 4) = v54 - v64;
      v65 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v55, v83, v65, "MakeDependency", v62, v63, 0xCu);
      MEMORY[0x1AC59F020](v63, -1, -1);
    }

    v74(v26, v76);
    v66 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v66[4]._os_unfair_lock_opaque = v54 + *&v66[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v66 + 6);
    v67 = v89[1];
    v68 = v77;
    *v77 = v89[0];
    v68[1] = v67;
    v68[2] = v89[2];
    v68[3].tv_sec = v90;
    swift_task_localValuePop();
  }
}

void sub_1AB142EA8(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a4;
  v83 = a3;
  v8 = sub_1AB45FFD4();
  v79 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1AB460134();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v94 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  v85 = a1;
  sub_1AB014A58(a1, v91, &qword_1EB4366F0, &qword_1AB4D4428);
  if (v93)
  {
    v20 = v91[1];
    *a5 = v91[0];
    *(a5 + 16) = v20;
    *(a5 + 32) = v91[2];
    *(a5 + 48) = v92;
  }

  else
  {
    v70 = v8;
    v87 = v5;
    v86 = *(&v91[0] + 1);
    v72 = *&v91[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1AB45FFC4();
    v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v75 = v22;
    v23 = sub_1AB45FFA4();
    v24 = sub_1AB461234();
    v25 = sub_1AB461314();
    v26 = v13;
    v77 = a5;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = v13;
      v29 = v11;
      v30 = v28;
      v89[0].tv_sec = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1AB030D2C(0xD000000000000015, 0x80000001AB4FF160, &v89[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v31, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v11 = v29;
      v26 = v76;
      MEMORY[0x1AC59F020](v32, -1, -1);
      MEMORY[0x1AC59F020](v27, -1, -1);
    }

    v33 = v94;
    (*(v94 + 16))(v16, v19, v11);
    sub_1AB460014();
    swift_allocObject();
    v34 = sub_1AB460004();
    v35 = *(v33 + 8);
    v76 = v11;
    v94 = v33 + 8;
    v74 = v35;
    v35(v19, v11);
    static MonotonicTime.now.getter(v89);
    v71 = v89[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v89[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v36 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v89[0].tv_sec = v36;

    swift_task_localValuePush();
    v37 = sub_1AB01DBA0(*(v36 + 16));
    swift_task_localValuePop();

    if (v37 && (v38 = swift_conformsToProtocol2()) != 0)
    {
      v39 = v34;
      v40 = *(v38 + 8);

      v40();
      sub_1AB0318FC();
      sub_1AB460184();
      v41 = sub_1AB460154();
      v42 = *(v37 + 48);

      os_unfair_lock_lock((v42 + 20));
      v43 = *(v42 + 16);
      os_unfair_lock_unlock((v42 + 20));

      if (v43 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v41);

      sub_1AB460164();

      v34 = v39;
    }

    else
    {
      v41 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    v45 = (v44 + 24);
    *(v44 + 16) = 0;
    v89[0].tv_sec = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v46 = v87;
    sub_1AB12C208(v72, v86, v83, v84);
    v87 = v46;
    v47 = v41;
    if (v41)
    {
      v48 = v81;
      v49 = v80;
      v50 = v82;
      (*(v81 + 104))(v80, *MEMORY[0x1E6977AC8], v82);
      sub_1AB460174();
      (*(v48 + 8))(v49, v50);
    }

    v84 = v47;
    if (v37)
    {
      v88.tv_sec = &type metadata for InMemoryJetPackLoader;
      StartUpPerformanceEvent.record(checkpoint:)(&v88.tv_sec);
    }

    v51 = v85;
    sub_1AB014AC0(v85, &qword_1EB4366F0, &qword_1AB4D4428);
    sub_1AB019BC0(v89, v51);
    *(v51 + 56) = 1;
    static MonotonicTime.now.getter(&v88);
    v52 = v88.tv_sec;
    tv_nsec = v88.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v54 = tv_nsec / *&qword_1ED4D1F90 + v52 - (v71.tv_nsec / *&qword_1ED4D1F90 + v71.tv_sec);

    v55 = sub_1AB45FFA4();
    sub_1AB45FFF4();
    v56 = sub_1AB461224();

    if (sub_1AB461314())
    {
      LODWORD(v83) = v56;

      v57 = v34;
      v58 = v78;
      sub_1AB460024();
      v85 = v57;

      v59 = v79;
      v60 = v70;
      if ((*(v79 + 88))(v58, v70) == *MEMORY[0x1E69E93E8])
      {
        v61 = 0;
        v62 = "[Error] Interval already ended";
      }

      else
      {
        (*(v59 + 8))(v58, v60);
        v62 = "selfTime=%f";
        v61 = 1;
      }

      v63 = swift_slowAlloc();
      *v63 = 0;
      *(v63 + 1) = v61;
      *(v63 + 2) = 2048;
      os_unfair_lock_lock(v45);
      v64 = *(v44 + 16);
      os_unfair_lock_unlock(v45);
      *(v63 + 4) = v54 - v64;
      v65 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v55, v83, v65, "MakeDependency", v62, v63, 0xCu);
      MEMORY[0x1AC59F020](v63, -1, -1);
    }

    v74(v26, v76);
    v66 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v66[4]._os_unfair_lock_opaque = v54 + *&v66[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v66 + 6);
    v67 = v89[1];
    v68 = v77;
    *v77 = v89[0];
    v68[1] = v67;
    v68[2] = v89[2];
    v68[3].tv_sec = v90;
    swift_task_localValuePop();
  }
}

__darwin_time_t *sub_1AB1438FC(uint64_t a1, uint64_t a2, uint64_t a3, __darwin_time_t a4)
{
  v93 = a3;
  v94 = a4;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v75 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v77 = v7;
  v78 = v6;
  v86 = v17;
  v92 = v20;
  v96 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v82 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v87 = v22;
  v88 = v11;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = v12;
    v31 = swift_slowAlloc();
    v95.tv_sec = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AB030D2C(0xD00000000000001ALL, 0x80000001AB4FF010, &v95.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v33 = v31;
    v12 = v30;
    v22 = v87;
    MEMORY[0x1AC59F020](v33, -1, -1);
    v34 = v29;
    v11 = v88;
    MEMORY[0x1AC59F020](v34, -1, -1);
  }

  (*(v12 + 16))(v15, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v84 = sub_1AB460004();
  v36 = *(v12 + 8);
  v35 = v12 + 8;
  v81 = v36;
  v36(v19, v11);
  static MonotonicTime.now.getter(&v95);
  v79 = v95;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v83 = v35;
  sub_1AB4622E4();
  tv_sec = v95.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v37 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v95.tv_sec = v37;

  swift_task_localValuePush();
  v38 = sub_1AB01DBA0(*(v37 + 16));
  swift_task_localValuePop();

  if (v38)
  {
    v39 = type metadata accessor for PageRenderMetricsPresenter();
    v40 = swift_conformsToProtocol2();
    v41 = 0;
    v42 = v92;
    if (!v40 || !v39)
    {
      goto LABEL_19;
    }

    v43 = *(v40 + 8);
    v44 = v40;

    v43(v39, v44);
    sub_1AB0318FC();
    sub_1AB460184();
    v41 = sub_1AB460154();
    v45 = *(v38 + 48);

    os_unfair_lock_lock((v45 + 20));
    v46 = *(v45 + 16);
    os_unfair_lock_unlock((v45 + 20));

    if (v46 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v41);

    sub_1AB460164();
  }

  else
  {
    v41 = 0;
  }

  v42 = v92;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v76 = (v47 + 24);
  *(v47 + 16) = 0;
  v95.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
  swift_task_localValuePush();
  v48 = v96;
  v49 = sub_1AB12C354(v42, v22, v93, v94);
  v21 = v49;
  v96 = v48;
  if (v41)
  {
    v50 = *MEMORY[0x1E6977AC8];
    v94 = v47;
    v51 = v49;
    v52 = v42;
    v53 = a1;
    v54 = v38;
    v55 = v22;
    v56 = v89;
    v57 = v90;
    v58 = v91;
    (*(v90 + 104))(v89, v50, v91);
    sub_1AB460174();
    (*(v57 + 8))(v56, v58);
    v22 = v55;
    v38 = v54;
    a1 = v53;
    v42 = v52;
    v21 = v51;
    v47 = v94;
  }

  if (v38)
  {
    v95.tv_sec = *v21;
    StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
  }

  sub_1AB057304(v42, v22, 0);
  *a1 = v21;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;

  static MonotonicTime.now.getter(&v95);
  v59 = v95.tv_sec;
  tv_nsec = v95.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v61 = tv_nsec / *&qword_1ED4D1F90 + v59 - (v79.tv_nsec / *&qword_1ED4D1F90 + v79.tv_sec);

  v62 = sub_1AB45FFA4();
  v63 = v86;
  sub_1AB45FFF4();
  LODWORD(v94) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v64 = v85;
    sub_1AB460024();

    v65 = v77;
    v66 = v78;
    if ((*(v77 + 88))(v64, v78) == *MEMORY[0x1E69E93E8])
    {
      v67 = 0;
      v68 = "[Error] Interval already ended";
    }

    else
    {
      (*(v65 + 8))(v64, v66);
      v68 = "selfTime=%f";
      v67 = 1;
    }

    v69 = swift_slowAlloc();
    *v69 = 0;
    *(v69 + 1) = v67;
    *(v69 + 2) = 2048;
    v70 = v76;
    os_unfair_lock_lock(v76);
    v71 = *(v47 + 16);
    os_unfair_lock_unlock(v70);
    *(v69 + 4) = v61 - v71;
    v63 = v86;
    v72 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, v94, v72, "MakeDependency", v68, v69, 0xCu);
    MEMORY[0x1AC59F020](v69, -1, -1);
    v42 = v92;
  }

  v81(v63, v88);
  v73 = tv_sec;
  os_unfair_lock_lock(tv_sec + 6);
  *&v73[4]._os_unfair_lock_opaque = v61 + *&v73[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v73 + 6);
  swift_task_localValuePop();

  sub_1AB057304(v42, v87, 0);

  return v21;
}

char *sub_1AB1442A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v77 = a4;
  v6 = sub_1AB45FFD4();
  v72 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45FF84();
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v62 - v15;
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  if (*(a1 + 17))
  {
    return *a1;
  }

  v63 = v6;
  v73 = v14;
  v78 = v17;
  v79 = v13;
  v81 = v4;
  v21 = qword_1EB434BA8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1AB45FFC4();
  v23 = __swift_project_value_buffer(v22, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v68 = v23;
  v24 = sub_1AB45FFA4();
  v25 = sub_1AB461234();
  v26 = sub_1AB461314();
  v74 = v19;
  v75 = v18;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v80.tv_sec = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1AB030D2C(0xD000000000000038, 0x80000001AB4FEFD0, &v80.tv_sec);
    v29 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v29, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1AC59F020](v28, -1, -1);
    v30 = v27;
    v18 = v75;
    MEMORY[0x1AC59F020](v30, -1, -1);
  }

  v31 = v79;
  (*(v79 + 16))(v11, v16, v8);
  sub_1AB460014();
  swift_allocObject();
  v32 = sub_1AB460004();
  v34 = *(v31 + 8);
  v33 = v31 + 8;
  v69 = v8;
  v67 = v34;
  v34(v16, v8);
  static MonotonicTime.now.getter(&v80);
  v64 = v80;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v70 = v32;
  v79 = v33;
  sub_1AB4622E4();
  tv_sec = v80.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v35 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v80.tv_sec = v35;

  swift_task_localValuePush();
  v36 = sub_1AB01DBA0(*(v35 + 16));
  swift_task_localValuePop();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  v62 = (v37 + 24);
  *(v37 + 16) = 0;
  v80.tv_sec = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
  swift_task_localValuePush();
  v38 = v78;
  v39 = v81;
  v20 = sub_1AB12C4B0(v18, v78, v76, v77);
  v41 = v40;
  v43 = v42;
  v81 = v39;
  v65 = v36;
  if (v36)
  {
    v80.tv_sec = &type metadata for IntentDispatchOptions.BadOrderingCanary;
    StartUpPerformanceEvent.record(checkpoint:)(&v80.tv_sec);
  }

  v44 = v18;
  v45 = v74;
  sub_1AB0D60E4(v44, v38, v74, 0);
  *a1 = v20;
  *(a1 + 8) = v41;
  *(a1 + 16) = v43;
  *(a1 + 17) = 1;
  static MonotonicTime.now.getter(&v80);
  v46 = v80.tv_sec;
  tv_nsec = v80.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v48 = tv_nsec / *&qword_1ED4D1F90 + v46 - (v64.tv_nsec / *&qword_1ED4D1F90 + v64.tv_sec);

  v49 = sub_1AB45FFA4();
  v50 = v73;
  sub_1AB45FFF4();
  LODWORD(v77) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v51 = v71;
    sub_1AB460024();

    v52 = v72;
    v53 = v63;
    if ((*(v72 + 88))(v51, v63) == *MEMORY[0x1E69E93E8])
    {
      v54 = 0;
      v55 = "[Error] Interval already ended";
    }

    else
    {
      (*(v52 + 8))(v51, v53);
      v55 = "selfTime=%f";
      v54 = 1;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    *(v56 + 1) = v54;
    *(v56 + 2) = 2048;
    v57 = v62;
    os_unfair_lock_lock(v62);
    v58 = *(v37 + 16);
    os_unfair_lock_unlock(v57);
    *(v56 + 4) = v48 - v58;
    v50 = v73;
    v59 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v49, v77, v59, "MakeDependency", v55, v56, 0xCu);
    MEMORY[0x1AC59F020](v56, -1, -1);
    v45 = v74;
  }

  v67(v50, v69);
  v60 = tv_sec;
  os_unfair_lock_lock(tv_sec + 6);
  *&v60[4]._os_unfair_lock_opaque = v48 + *&v60[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v60 + 6);
  swift_task_localValuePop();

  sub_1AB0D60E4(v75, v78, v45, 0);

  return v20;
}

void sub_1AB144A64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }
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

unint64_t sub_1AB144AF4()
{
  sub_1AB4615D4();

  v25[0] = 0xD00000000000003FLL;
  v25[1] = 0x80000001AB4FF2D0;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v26 = 0xD00000000000003FLL;
  v27 = 0x80000001AB4FF2D0;
  v3 = v0[2];
  if (*(sub_1AB12C610(v3) + 2))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8, &qword_1AB4D43F0);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v25[0], v25[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v26;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v25, v9 + 4, v7, v3);
  v11 = v25[0];

  sub_1AB0309A4(v11);
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v25[0] = v9;

  sub_1AB390A78(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1AB03BD38(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v15);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1AB03BD38((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8, &qword_1AB4D4400, MEMORY[0x1E69E6310]);
  v21 = sub_1AB460484();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1AC59BA20](v21, v23);

  MEMORY[0x1AC59BA20](v25[0], v25[1]);

  return v26;
}

unint64_t sub_1AB144F54()
{
  sub_1AB4615D4();

  v25[0] = 0xD000000000000027;
  v25[1] = 0x80000001AB4FF380;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v26 = 0xD000000000000027;
  v27 = 0x80000001AB4FF380;
  v3 = v0[2];
  if (*(sub_1AB12C8F8(v3) + 2))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8, &qword_1AB4D43F0);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v25[0], v25[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v26;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v25, v9 + 4, v7, v3);
  v11 = v25[0];

  sub_1AB0309A4(v11);
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v25[0] = v9;

  sub_1AB390A78(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1AB03BD38(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v15);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1AB03BD38((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8, &qword_1AB4D4400, MEMORY[0x1E69E6310]);
  v21 = sub_1AB460484();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1AC59BA20](v21, v23);

  MEMORY[0x1AC59BA20](v25[0], v25[1]);

  return v26;
}

unint64_t sub_1AB1453B4()
{
  sub_1AB016760(0, &unk_1ED4D1398, 0x1E698CAC8);
  sub_1AB4615D4();

  v26[0] = 0xD000000000000015;
  v26[1] = 0x80000001AB4FF330;
  v1 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v1);

  MEMORY[0x1AC59BA20](0x20646E756F66203ELL, 0xEC00000022206E69);
  swift_beginAccess();
  v2 = v0[3];
  v3 = v0[4];

  MEMORY[0x1AC59BA20](v2, v3);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v27 = 0xD000000000000015;
  v28 = 0x80000001AB4FF330;
  v4 = v0[2];
  if (*(sub_1AB12CC88(v4) + 2))
  {
    v26[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8, &qword_1AB4D43F0);
    sub_1AB157EB4();
    v5 = sub_1AB460484();
    v7 = v6;

    sub_1AB4615D4();

    strcpy(v26, " Did you mean ");
    HIBYTE(v26[1]) = -18;
    MEMORY[0x1AC59BA20](v5, v7);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v26[0], v26[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v27;
  }

  v8 = *(v4 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    goto LABEL_6;
  }

  v10 = sub_1AB1AFE78(*(v4 + 16), 0);
  v11 = sub_1AB1AF5B8(v26, v10 + 4, v8, v4);
  v12 = v26[0];

  sub_1AB0309A4(v12);
  if (v11 != v8)
  {
    __break(1u);
LABEL_6:
    v10 = v9;
  }

  v26[0] = v10;

  sub_1AB390A78(v26);

  v13 = *(v26[0] + 2);
  if (v13)
  {
    sub_1AB03BD38(0, v13, 0);
    v14 = 32;
    v15 = v9;
    do
    {
      v26[0] = 60;
      v26[1] = 0xE100000000000000;
      v16 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v16);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v17 = v26[0];
      v18 = v26[1];
      v20 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_1AB03BD38((v19 > 1), v20 + 1, 1);
      }

      *(v15 + 2) = v20 + 1;
      v21 = &v15[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v26[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8, &qword_1AB4D4400, MEMORY[0x1E69E6310]);
  v22 = sub_1AB460484();
  v24 = v23;

  strcpy(v26, " Candidates: ");
  HIWORD(v26[1]) = -4864;
  MEMORY[0x1AC59BA20](v22, v24);

  MEMORY[0x1AC59BA20](v26[0], v26[1]);

  return v27;
}

uint64_t sub_1AB14586C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
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

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AB14595C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1AB1459B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AB145A20()
{
  sub_1AB4615D4();

  v25[0] = 0xD000000000000028;
  v25[1] = 0x80000001AB4FF350;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v26 = 0xD000000000000028;
  v27 = 0x80000001AB4FF350;
  v3 = v0[2];
  if (*(sub_1AB12CF74(v3) + 2))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8, &qword_1AB4D43F0);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v25[0], v25[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v26;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v25, v9 + 4, v7, v3);
  v11 = v25[0];

  sub_1AB0309A4(v11);
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v25[0] = v9;

  sub_1AB390A78(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1AB03BD38(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v15);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1AB03BD38((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8, &qword_1AB4D4400, MEMORY[0x1E69E6310]);
  v21 = sub_1AB460484();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1AC59BA20](v21, v23);

  MEMORY[0x1AC59BA20](v25[0], v25[1]);

  return v26;
}

unint64_t sub_1AB145E80()
{
  sub_1AB4615D4();

  v25[0] = 0xD000000000000033;
  v25[1] = 0x80000001AB4FF290;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v26 = 0xD000000000000033;
  v27 = 0x80000001AB4FF290;
  v3 = v0[2];
  if (*(sub_1AB12D258(v3) + 2))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8, &qword_1AB4D43F0);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v25[0], v25[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v26;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v25, v9 + 4, v7, v3);
  v11 = v25[0];

  sub_1AB0309A4(v11);
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v25[0] = v9;

  sub_1AB390A78(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1AB03BD38(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v15);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1AB03BD38((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8, &qword_1AB4D4400, MEMORY[0x1E69E6310]);
  v21 = sub_1AB460484();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1AC59BA20](v21, v23);

  MEMORY[0x1AC59BA20](v25[0], v25[1]);

  return v26;
}

unint64_t sub_1AB1462E0()
{
  sub_1AB4615D4();

  v25[0] = 0xD000000000000024;
  v25[1] = 0x80000001AB4FF260;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v26 = 0xD000000000000024;
  v27 = 0x80000001AB4FF260;
  v3 = v0[2];
  if (*(sub_1AB12D534(v3) + 2))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8, &qword_1AB4D43F0);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v25[0], v25[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v26;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v25, v9 + 4, v7, v3);
  v11 = v25[0];

  sub_1AB0309A4(v11);
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v25[0] = v9;

  sub_1AB390A78(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1AB03BD38(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v15);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1AB03BD38((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8, &qword_1AB4D4400, MEMORY[0x1E69E6310]);
  v21 = sub_1AB460484();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1AC59BA20](v21, v23);

  MEMORY[0x1AC59BA20](v25[0], v25[1]);

  return v26;
}

unint64_t sub_1AB146740()
{
  sub_1AB4615D4();

  v25[0] = 0xD000000000000034;
  v25[1] = 0x80000001AB4FF1A0;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v26 = 0xD000000000000034;
  v27 = 0x80000001AB4FF1A0;
  v3 = v0[2];
  if (*(sub_1AB12D80C(v3) + 2))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8, &qword_1AB4D43F0);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v25[0], v25[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v26;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v25, v9 + 4, v7, v3);
  v11 = v25[0];

  sub_1AB0309A4(v11);
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v25[0] = v9;

  sub_1AB390A78(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1AB03BD38(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v15);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1AB03BD38((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8, &qword_1AB4D4400, MEMORY[0x1E69E6310]);
  v21 = sub_1AB460484();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1AC59BA20](v21, v23);

  MEMORY[0x1AC59BA20](v25[0], v25[1]);

  return v26;
}

unint64_t sub_1AB146B9C()
{
  sub_1AB4615D4();

  v25[0] = 0xD00000000000002DLL;
  v25[1] = 0x80000001AB4FF0C0;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v26 = 0xD00000000000002DLL;
  v27 = 0x80000001AB4FF0C0;
  v3 = v0[2];
  if (*(sub_1AB12DB58(v3) + 2))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8, &qword_1AB4D43F0);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v25[0], v25[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v26;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v25, v9 + 4, v7, v3);
  v11 = v25[0];

  sub_1AB0309A4(v11);
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v25[0] = v9;

  sub_1AB390A78(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1AB03BD38(0, v12, 0);
    v13 = 32;
    v14 = v8;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v15);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1AB03BD38((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8, &qword_1AB4D4400, MEMORY[0x1E69E6310]);
  v21 = sub_1AB460484();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1AC59BA20](v21, v23);

  MEMORY[0x1AC59BA20](v25[0], v25[1]);

  return v26;
}

void sub_1AB146FFC(uint64_t (**a1)(uint64_t)@<X0>, double a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t (**a5)(uint64_t)@<X8>)
{
  v6 = v5;
  v83 = a3;
  v84 = a4;
  v9 = sub_1AB45FFD4();
  v76 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB460134();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB45FF84();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - v20;
  v22 = *a1;
  if (a1[2])
  {
    *a5 = v22;
  }

  else
  {
    v66 = v9;
    v71 = v19;
    v80 = v22;
    v23 = qword_1EB434BA8;
    v81 = a1[1];
    v82 = v6;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v68 = v25;
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v72 = v13;
    v70 = a5;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v85.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1AB030D2C(0xD000000000000017, 0x80000001AB4FEEF0, &v85.tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1AC59F020](v30, -1, -1);
      v32 = v29;
      v13 = v72;
      MEMORY[0x1AC59F020](v32, -1, -1);
    }

    (*(v14 + 16))(v17, v21, v13);
    sub_1AB460014();
    swift_allocObject();
    v74 = sub_1AB460004();
    v33 = v14 + 8;
    v34 = *(v14 + 8);
    v34(v21, v13);
    static MonotonicTime.now.getter(&v85);
    v67 = v85;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v69 = v33;
    sub_1AB4622E4();
    tv_sec = v85.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v35 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v85.tv_sec = v35;

    swift_task_localValuePush();
    v36 = sub_1AB01DBA0(*(v35 + 16));
    swift_task_localValuePop();

    if (v36 && (v37 = swift_conformsToProtocol2()) != 0)
    {
      v38 = *(v37 + 8);

      v38();
      sub_1AB0318FC();
      sub_1AB460184();
      v39 = sub_1AB460154();
      v40 = *(v36 + 48);

      os_unfair_lock_lock((v40 + 20));
      v41 = *(v40 + 16);
      os_unfair_lock_unlock((v40 + 20));

      if (v41 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v39);

      sub_1AB460164();
    }

    else
    {
      v39 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v85.tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v45 = v80;
    v44 = v81;
    v46 = v82;
    sub_1AB12C208(v80, v81, *&v83, v84);
    if (v46)
    {
      swift_task_localValuePop();
      sub_1AB157FC0(v45, v44, 0, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v84 = v34;
      v82 = 0;
      if (v39)
      {
        v48 = v77;
        v47 = v78;
        v49 = v79;
        (*(v78 + 104))(v77, *MEMORY[0x1E6977AC8], v79);
        sub_1AB460174();
        (*(v47 + 8))(v48, v49);
      }

      if (v36)
      {
        v85.tv_sec = &type metadata for AsyncObjectGraphMetrics;
        StartUpPerformanceEvent.record(checkpoint:)(&v85.tv_sec);
      }

      sub_1AB157FC0(*a1, a1[1], *(a1 + 16), MEMORY[0x1E69E7CF8]);
      *a1 = v86;
      a1[1] = 0;
      *(a1 + 16) = 1;

      static MonotonicTime.now.getter(&v85);
      v50 = v85.tv_sec;
      tv_nsec = v85.tv_nsec;
      v52 = v81;
      if (qword_1ED4D1F88 != -1)
      {
        v83 = v85.tv_nsec;
        swift_once();
        tv_nsec = v83;
      }

      v53 = tv_nsec / *&qword_1ED4D1F90 + v50 - (v67.tv_nsec / *&qword_1ED4D1F90 + v67.tv_sec);

      v54 = sub_1AB45FFA4();
      v55 = v71;
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      if (sub_1AB461314())
      {

        v56 = v75;
        sub_1AB460024();

        v57 = v76;
        v58 = v66;
        if ((*(v76 + 88))(v56, v66) == *MEMORY[0x1E69E93E8])
        {
          v59 = 0;
          v60 = "[Error] Interval already ended";
        }

        else
        {
          (*(v57 + 8))(v56, v58);
          v60 = "selfTime=%f";
          v59 = 1;
        }

        v61 = swift_slowAlloc();
        *v61 = 0;
        *(v61 + 1) = v59;
        *(v61 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v62 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v61 + 4) = v53 - v62;
        v55 = v71;
        v63 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v54, LOBYTE(v83), v63, "MakeDependency", v60, v61, 0xCu);
        MEMORY[0x1AC59F020](v61, -1, -1);
        v52 = v81;
      }

      v84(v55, v72);
      v64 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v64[4]._os_unfair_lock_opaque = v53 + *&v64[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v64 + 6);
      *v70 = v86;
      swift_task_localValuePop();
      sub_1AB157FC0(v80, v52, 0, MEMORY[0x1E69E7CF8]);
    }
  }
}

char *sub_1AB1479D8(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4)
{
  v69 = a4;
  v67 = *&a3;
  v6 = sub_1AB45FFD4();
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45FF84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v18 = *a1;
  if (*(a1 + 16))
  {
  }

  v55 = v6;
  v65 = v18;
  v66 = v4;
  v19 = qword_1EB434BA8;
  v64 = *(a1 + 8);

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1AB45FFC4();
  v21 = __swift_project_value_buffer(v20, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v58 = v21;
  v22 = sub_1AB45FFA4();
  v23 = sub_1AB461234();
  v24 = sub_1AB461314();
  v59 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v61 = v9;
    v26 = v8;
    v27 = v25;
    v28 = swift_slowAlloc();
    v68.tv_sec = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1AB030D2C(0xD000000000000017, 0x80000001AB4FEF80, &v68.tv_sec);
    v29 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v22, v23, v29, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1AC59F020](v28, -1, -1);
    v30 = v27;
    v8 = v26;
    v9 = v61;
    MEMORY[0x1AC59F020](v30, -1, -1);
  }

  (*(v9 + 16))(v14, v17, v8);
  sub_1AB460014();
  swift_allocObject();
  v31 = sub_1AB460004();
  v60 = v8;
  v61 = v31;
  v57 = *(v9 + 8);
  v57(v17, v8);
  static MonotonicTime.now.getter(&v68);
  v56 = v68;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  tv_sec = v68.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  v34 = (v33 + 24);
  *(v33 + 16) = 0;
  v68.tv_sec = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
  swift_task_localValuePush();
  v36 = v64;
  v35 = v65;
  v37 = v66;
  v38 = sub_1AB12C354(v65, v64, *&v67, v69);
  if (v37)
  {
    swift_task_localValuePop();
    sub_1AB057304(v35, v36, 0);
  }

  else
  {
    v17 = v38;
    v69 = tv_sec;
    v66 = 0;
    sub_1AB057304(v35, v36, 0);
    *a1 = v17;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v68);
    v39 = v68.tv_sec;
    tv_nsec = v68.tv_nsec;
    v41 = v36;
    if (qword_1ED4D1F88 != -1)
    {
      v67 = v68.tv_nsec;
      swift_once();
      tv_nsec = v67;
    }

    v42 = tv_nsec / *&qword_1ED4D1F90 + v39 - (v56.tv_nsec / *&qword_1ED4D1F90 + v56.tv_sec);

    v43 = sub_1AB45FFA4();
    v44 = v59;
    sub_1AB45FFF4();
    LODWORD(v67) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v45 = v62;
      sub_1AB460024();

      v46 = v63;
      v47 = v55;
      if ((*(v63 + 88))(v45, v55) == *MEMORY[0x1E69E93E8])
      {
        v48 = 0;
        v49 = "[Error] Interval already ended";
      }

      else
      {
        (*(v46 + 8))(v45, v47);
        v49 = "selfTime=%f";
        v48 = 1;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      *(v50 + 1) = v48;
      *(v50 + 2) = 2048;
      os_unfair_lock_lock(v34);
      v51 = *(v33 + 16);
      os_unfair_lock_unlock(v34);
      *(v50 + 4) = v42 - v51;
      v52 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v43, LOBYTE(v67), v52, "MakeDependency", v49, v50, 0xCu);
      MEMORY[0x1AC59F020](v50, -1, -1);
      v41 = v64;
    }

    v57(v44, v60);
    v53 = v69;
    os_unfair_lock_lock(v69 + 6);
    *&v53[4]._os_unfair_lock_opaque = v42 + *&v53[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v53 + 6);
    swift_task_localValuePop();
    sub_1AB057304(v65, v41, 0);
  }

  return v17;
}

void sub_1AB1480CC(uint64_t a1, uint64_t a2, char *a3, void *(*a4)(char **__return_ptr, uint64_t))
{
  v88 = a3;
  v89 = a4;
  v6 = sub_1AB45FFD4();
  v84 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = COERCE_DOUBLE(sub_1AB460134());
  v82 = *(v8 - 8);
  v83 = *&v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v72 - v17;
  v20 = *a1;
  v19 = *(a1 + 8);
  if (*(a1 + 16))
  {
    sub_1AB04B604(*a1, *(a1 + 8));
  }

  else
  {
    v73 = v6;
    v91 = v16;
    v87 = v4;
    v21 = qword_1EB434BA8;

    if (v21 != -1)
    {
      swift_once();
    }

    v86 = v19;
    v22 = sub_1AB45FFC4();
    v23 = __swift_project_value_buffer(v22, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v76 = v23;
    v24 = sub_1AB45FFA4();
    v25 = sub_1AB461234();
    v26 = sub_1AB461314();
    v77 = v10;
    v27 = v20;
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v90.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1AB030D2C(0xD00000000000001ELL, 0x80000001AB4FF310, &v90.tv_sec);
      v30 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v30, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v31 = v29;
      v10 = v77;
      MEMORY[0x1AC59F020](v31, -1, -1);
      MEMORY[0x1AC59F020](v28, -1, -1);
    }

    v32 = v91;
    (*(v91 + 16))(v14, v18, v10);
    sub_1AB460014();
    swift_allocObject();
    v79 = sub_1AB460004();
    v34 = *(v32 + 8);
    v33 = v32 + 8;
    v75 = v34;
    v34(v18, v10);
    static MonotonicTime.now.getter(&v90);
    v74 = v90;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v90.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v35 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v90.tv_sec = v35;

    swift_task_localValuePush();
    v36 = sub_1AB01DBA0(*(v35 + 16));
    swift_task_localValuePop();

    if (v36)
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570, &qword_1AB4D41C8);
      v38 = swift_conformsToProtocol2();
      v39 = 0;
      if (v38 && v37)
      {
        v40 = *(v38 + 8);
        v41 = v38;

        v40(v37, v41);
        sub_1AB0318FC();
        sub_1AB460184();
        v39 = sub_1AB460154();
        v42 = *(v36 + 48);

        os_unfair_lock_lock((v42 + 20));
        LODWORD(v40) = *(v42 + 16);
        os_unfair_lock_unlock((v42 + 20));

        if (v40 == 1)
        {

          sub_1AB460124();
        }

        sub_1AB3858E0(v39);

        sub_1AB460164();
      }
    }

    else
    {
      v39 = 0;
    }

    v91 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v43 = swift_allocObject();
    *(v43 + 24) = 0;
    *(v43 + 16) = 0;
    v90.tv_sec = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v44 = v86;
    v45 = v87;
    v46 = sub_1AB12C0AC(v27, v86, v88, v89);
    if (v45)
    {
      swift_task_localValuePop();

      sub_1AB157FF4(v27, v44, 0);
    }

    else
    {
      v48 = v47;
      v88 = v46;
      v72 = (v43 + 24);
      v89 = v27;
      v87 = 0;
      if (v39)
      {
        v50 = v82;
        v49 = v83;
        v51 = v36;
        v52 = v81;
        (*(v82 + 104))(v81, *MEMORY[0x1E6977AC8], COERCE_DOUBLE(*&v83));
        sub_1AB460174();
        v53 = v52;
        v36 = v51;
        (*(v50 + 8))(v53, COERCE_DOUBLE(*&v49));
      }

      v54 = v85;
      v55 = v86;
      if (v36)
      {
        v90.tv_sec = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570, &qword_1AB4D41C8);
        StartUpPerformanceEvent.record(checkpoint:)(&v90.tv_sec);
      }

      sub_1AB157FF4(v89, v55, 0);
      v56 = v88;
      *a1 = v88;
      *(a1 + 8) = v48;
      *(a1 + 16) = 1;
      sub_1AB04B604(v56, v48);
      static MonotonicTime.now.getter(&v90);
      v57 = v90.tv_sec;
      tv_nsec = v90.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v83 = v90.tv_nsec;
        swift_once();
        tv_nsec = v83;
      }

      v59 = tv_nsec / *&qword_1ED4D1F90 + v57 - (v74.tv_nsec / *&qword_1ED4D1F90 + v74.tv_sec);

      v60 = sub_1AB45FFA4();
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      v61 = sub_1AB461314();
      v62 = v84;
      if (v61)
      {

        v63 = v80;
        sub_1AB460024();

        v64 = v73;
        if ((*(v62 + 88))(v63, v73) == *MEMORY[0x1E69E93E8])
        {
          v65 = 0;
          v66 = "[Error] Interval already ended";
        }

        else
        {
          (*(v62 + 8))(v63, v64);
          v66 = "selfTime=%f";
          v65 = 1;
        }

        v67 = swift_slowAlloc();
        *v67 = 0;
        *(v67 + 1) = v65;
        *(v67 + 2) = 2048;
        v68 = v72;
        os_unfair_lock_lock(v72);
        v69 = *(v43 + 16);
        os_unfair_lock_unlock(v68);
        *(v67 + 4) = v59 - v69;
        v70 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v60, LOBYTE(v83), v70, "MakeDependency", v66, v67, 0xCu);
        MEMORY[0x1AC59F020](v67, -1, -1);
      }

      v75(v54, v77);
      v71 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v71[4]._os_unfair_lock_opaque = v59 + *&v71[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v71 + 6);
      swift_task_localValuePop();

      sub_1AB157FF4(v89, v86, 0);
    }
  }
}

void sub_1AB148A98(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, os_unfair_lock_s *a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a3;
  v90 = a4;
  v88 = a2;
  v92 = a5;
  v78 = sub_1AB45FFD4();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB460134();
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FD64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1AB45FF84();
  v94 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v73 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436930, &unk_1AB4D46A0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v73 - v20;
  v85 = a1;
  sub_1AB014A58(a1, &v73 - v20, &qword_1EB436930, &unk_1AB4D46A0);
  v83 = v19;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v92, v21, v9);
  }

  else
  {
    v79 = v10;
    v86 = v9;
    v22 = *(v21 + 1);
    v75 = *v21;
    v84 = v22;
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1AB45FFC4();
    v24 = __swift_project_value_buffer(v23, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v74 = v24;
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v28 = v79;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v95.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1AB030D2C(0x7963696C6F50, 0xE600000000000000, &v95.tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1AC59F020](v30, -1, -1);
      MEMORY[0x1AC59F020](v29, -1, -1);
    }

    v32 = v94;
    v33 = v91;
    (*(v94 + 16))(v15, v18, v91);
    sub_1AB460014();
    swift_allocObject();
    sub_1AB460004();
    v34 = *(v32 + 8);
    v94 = v32 + 8;
    (*&v34)(v18, v33);
    static MonotonicTime.now.getter(&v95);
    v73 = v95;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v95.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v36 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v95.tv_sec = v36;

    swift_task_localValuePush();
    v37 = sub_1AB01DBA0(*(v36 + 16));
    swift_task_localValuePop();

    if (v37 && (v38 = v86, (v39 = swift_conformsToProtocol2()) != 0))
    {
      v40 = v34;
      v41 = *(v39 + 8);
      v42 = v39;

      v41(v38, v42);
      sub_1AB0318FC();
      sub_1AB460184();
      v43 = sub_1AB460154();
      v44 = *(v37 + 48);

      os_unfair_lock_lock((v44 + 20));
      v45 = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));

      if (v45 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v43);

      sub_1AB460164();
      v88 = v43;

      v34 = v40;
    }

    else
    {
      v88 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v46 = swift_allocObject();
    *(v46 + 24) = 0;
    v47 = (v46 + 24);
    *(v46 + 16) = 0;
    v95.tv_sec = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v48 = v96;
    sub_1AB12C208(v75, v84, *&v89, v90);
    v96 = v48;
    if (v48)
    {
      swift_task_localValuePop();
    }

    else
    {
      v90 = tv_sec;
      if (v88)
      {
        v49 = *MEMORY[0x1E6977AC8];
        v89 = v34;
        v51 = v80;
        v50 = v81;
        v52 = v82;
        (*(v81 + 104))(v80, v49, v82);
        sub_1AB460174();
        (*(v50 + 8))(v51, v52);
        v34 = v89;
      }

      v53 = v86;
      if (v37)
      {
        v95.tv_sec = v86;
        StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
      }

      v54 = v85;
      sub_1AB014AC0(v85, &qword_1EB436930, &unk_1AB4D46A0);
      (*(v28 + 16))(v54, v93, v53);
      swift_storeEnumTagMultiPayload();
      static MonotonicTime.now.getter(&v95);
      v55 = v95.tv_sec;
      tv_nsec = v95.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v89 = v95.tv_nsec;
        swift_once();
        tv_nsec = v89;
      }

      v57 = tv_nsec / *&qword_1ED4D1F90 + v55 - (v73.tv_nsec / *&qword_1ED4D1F90 + v73.tv_sec);

      v58 = sub_1AB45FFA4();
      v59 = v87;
      sub_1AB45FFF4();
      LODWORD(v89) = sub_1AB461224();

      v60 = sub_1AB461314();
      v61 = v92;
      if (v60)
      {

        v62 = v76;
        sub_1AB460024();

        v63 = v77;
        v64 = v78;
        if ((*(v77 + 88))(v62, v78) == *MEMORY[0x1E69E93E8])
        {
          v65 = 0;
          v66 = "[Error] Interval already ended";
        }

        else
        {
          (*(v63 + 8))(v62, v64);
          v66 = "selfTime=%f";
          v65 = 1;
        }

        v67 = swift_slowAlloc();
        *v67 = 0;
        *(v67 + 1) = v65;
        *(v67 + 2) = 2048;
        os_unfair_lock_lock(v47);
        v68 = *(v46 + 16);
        os_unfair_lock_unlock(v47);
        *(v67 + 4) = v57 - v68;
        v69 = v87;
        v70 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v58, LOBYTE(v89), v70, "MakeDependency", v66, v67, 0xCu);
        v71 = v67;
        v59 = v69;
        MEMORY[0x1AC59F020](v71, -1, -1);
        v61 = v92;
        v28 = v79;
      }

      (*&v34)(v59, v91);
      v72 = v90;
      os_unfair_lock_lock(v90 + 6);
      *&v72[4]._os_unfair_lock_opaque = v57 + *&v72[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v72 + 6);
      (*(v28 + 32))(v61, v93, v86);
      swift_task_localValuePop();
    }
  }
}

void sub_1AB149574(__darwin_time_t *a1@<X0>, void (*a3)(void, void)@<X2>, double a4@<X3>, uint64_t (**a5)(uint64_t)@<X8>)
{
  v6 = v5;
  v99 = a4;
  v94 = a3;
  v9 = sub_1AB45FFD4();
  v86 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB460134();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB45FF84();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v75 - v20;
  v23 = *a1;
  v22 = a1[1];
  v24 = a1[2];
  v25 = a1[3];
  if (a1[4])
  {
    *a5 = v23;
    a5[1] = v22;
    a5[2] = v24;
    a5[3] = v25;
  }

  else
  {
    v75 = v9;
    v92 = v23;
    v93 = v6;
    v82 = v24;
    v83 = v25;
    v26 = qword_1EB434BA8;
    v91 = v22;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1AB45FFC4();
    v28 = __swift_project_value_buffer(v27, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v77 = v28;
    v29 = sub_1AB45FFA4();
    v30 = sub_1AB461234();
    v31 = sub_1AB461314();
    v80 = v13;
    v79 = a5;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v96.tv_sec = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1AB030D2C(0x656C69666F7250, 0xE700000000000000, &v96.tv_sec);
      v34 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v29, v30, v34, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1AC59F020](v33, -1, -1);
      v35 = v32;
      v13 = v80;
      MEMORY[0x1AC59F020](v35, -1, -1);
    }

    (*(v14 + 16))(v18, v21, v13);
    sub_1AB460014();
    swift_allocObject();
    v84 = sub_1AB460004();
    v38 = *(v14 + 8);
    v36 = v14 + 8;
    v37 = v38;
    v38(v21, v13);
    static MonotonicTime.now.getter(&v96);
    v76 = v96;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v78 = v36;
    sub_1AB4622E4();
    tv_sec = v96.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v96.tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    if (v40 && (v41 = swift_conformsToProtocol2()) != 0)
    {
      v42 = *(v41 + 8);

      v42();
      sub_1AB0318FC();
      sub_1AB460184();
      v43 = sub_1AB460154();
      v44 = *(v40 + 48);

      os_unfair_lock_lock((v44 + 20));
      LODWORD(v42) = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));

      if (v42 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v43);

      sub_1AB460164();
    }

    else
    {
      v43 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    v46 = (v45 + 24);
    *(v45 + 16) = 0;
    v96.tv_sec = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v48 = v91;
    v47 = v92;
    v49 = v93;
    sub_1AB12C208(v92, v91, v94, *&v99);
    if (v49)
    {
      swift_task_localValuePop();
      sub_1AB158048(v47, v48, v82, v83, 0);
    }

    else
    {
      v93 = 0;
      if (v43)
      {
        v51 = v88;
        v50 = v89;
        v52 = v37;
        v53 = v87;
        (*(v88 + 104))(v87, *MEMORY[0x1E6977AC8], v89);
        sub_1AB460174();
        v54 = v53;
        v37 = v52;
        (*(v51 + 8))(v54, v50);
      }

      v55 = v90;
      if (v40)
      {
        v95.tv_sec = &type metadata for Bag.Profile;
        StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
      }

      sub_1AB158048(*a1, a1[1], a1[2], a1[3], *(a1 + 32));
      tv_nsec = v96.tv_nsec;
      v57 = v97;
      v58 = v98;
      *a1 = v96.tv_sec;
      a1[1] = tv_nsec;
      a1[2] = v57;
      a1[3] = v58;
      *(a1 + 32) = 1;

      static MonotonicTime.now.getter(&v95);
      v59 = v95.tv_sec;
      v60 = v95.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v99 = v95.tv_nsec;
        swift_once();
        v60 = v99;
      }

      v61 = v60 / *&qword_1ED4D1F90 + v59 - (v76.tv_nsec / *&qword_1ED4D1F90 + v76.tv_sec);

      v62 = sub_1AB45FFA4();
      sub_1AB45FFF4();
      LODWORD(v99) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v94 = v37;

        v63 = v85;
        sub_1AB460024();

        v64 = v86;
        v65 = v75;
        if ((*(v86 + 88))(v63, v75) == *MEMORY[0x1E69E93E8])
        {
          v66 = 0;
          v67 = "[Error] Interval already ended";
        }

        else
        {
          (*(v64 + 8))(v63, v65);
          v67 = "selfTime=%f";
          v66 = 1;
        }

        v68 = swift_slowAlloc();
        *v68 = 0;
        *(v68 + 1) = v66;
        *(v68 + 2) = 2048;
        os_unfair_lock_lock(v46);
        v69 = *(v45 + 16);
        os_unfair_lock_unlock(v46);
        *(v68 + 4) = v61 - v69;
        v70 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, LOBYTE(v99), v70, "MakeDependency", v67, v68, 0xCu);
        MEMORY[0x1AC59F020](v68, -1, -1);
        v37 = v94;
      }

      v37(v55, v80);
      v71 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v71[4]._os_unfair_lock_opaque = v61 + *&v71[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v71 + 6);
      v72 = v97;
      v73 = v98;
      v74 = v79;
      *v79 = v96;
      v74[1].tv_sec = v72;
      v74[1].tv_nsec = v73;
      swift_task_localValuePop();
      sub_1AB158048(v92, v91, v82, v83, 0);
    }
  }
}

void sub_1AB149F70(uint64_t (**a1)(uint64_t)@<X0>, os_unfair_lock_s *a3@<X2>, os_unfair_lock_s *a4@<X3>, uint64_t (**a5)(uint64_t)@<X8>)
{
  v93 = a3;
  v94 = a4;
  v8 = sub_1AB45FFD4();
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = COERCE_DOUBLE(sub_1AB460134());
  v89 = *(v10 - 8);
  v90 = *&v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v76 - v19;
  v21 = *a1;
  v98 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  if (a1[4])
  {
    v24 = v98;
    *a5 = v21;
    a5[1] = v24;
    a5[2] = v22;
    a5[3] = v23;
    sub_1AB144A64(v21, v24, v22, v23);
  }

  else
  {
    v80 = v18;
    v91 = v21;
    v82 = v22;
    v83 = v23;
    v79 = a5;
    v92 = v5;
    v25 = qword_1EB434BA8;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1AB45FFC4();
    v27 = __swift_project_value_buffer(v26, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v77 = v27;
    v28 = sub_1AB45FFA4();
    v29 = sub_1AB461234();
    v30 = sub_1AB461314();
    v81 = v12;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = v13;
      v33 = swift_slowAlloc();
      v96.tv_sec = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AB030D2C(0xD000000000000012, 0x80000001AB4D4260, &v96.tv_sec);
      v34 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v28, v29, v34, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v35 = v33;
      v13 = v32;
      MEMORY[0x1AC59F020](v35, -1, -1);
      v36 = v31;
      v12 = v81;
      MEMORY[0x1AC59F020](v36, -1, -1);
    }

    (*(v13 + 16))(v16, v20, v12);
    sub_1AB460014();
    swift_allocObject();
    v84 = sub_1AB460004();
    v37 = *(v13 + 8);
    v78 = v13 + 8;
    v37(v20, v12);
    static MonotonicTime.now.getter(&v96);
    v76 = v96;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v96.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v96.tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    if (v40 && (v41 = swift_conformsToProtocol2()) != 0)
    {
      v42 = *(v41 + 8);

      v42();
      sub_1AB0318FC();
      sub_1AB460184();
      v43 = sub_1AB460154();
      v44 = *(v40 + 48);

      os_unfair_lock_lock((v44 + 20));
      v45 = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));

      if (v45 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v43);

      sub_1AB460164();
    }

    else
    {
      v43 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v46 = swift_allocObject();
    *(v46 + 24) = 0;
    *(v46 + 16) = 0;
    v96.tv_sec = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v47 = v91;
    v48 = v92;
    sub_1AB12C208(v91, v98, v93, v94);
    if (v48)
    {
      swift_task_localValuePop();
      sub_1AB157FE4(v47, v98, v82, v83, 0);
    }

    else
    {
      v93 = (v46 + 24);
      v94 = tv_sec;
      if (v43)
      {
        v49 = v89;
        v50 = v90;
        v51 = v40;
        v52 = v37;
        v53 = v88;
        (*(v89 + 104))(v88, *MEMORY[0x1E6977AC8], COERCE_DOUBLE(*&v90));
        sub_1AB460174();
        v54 = v53;
        v37 = v52;
        v40 = v51;
        (*(v49 + 8))(v54, COERCE_DOUBLE(*&v50));
      }

      if (v40)
      {
        v95.tv_sec = &type metadata for JetEngineBootstrap.URLProtocolHandler;
        StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
      }

      sub_1AB157FE4(*a1, a1[1], a1[2], a1[3], *(a1 + 32));
      v55 = v96;
      v56 = v97;
      *a1 = v96;
      *(a1 + 1) = v56;
      *(a1 + 32) = 1;
      sub_1AB144A64(v55.tv_sec, v55.tv_nsec, v56.tv_sec, v56.tv_nsec);
      static MonotonicTime.now.getter(&v95);
      v57 = v95.tv_sec;
      tv_nsec = v95.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v90 = v95.tv_nsec;
        swift_once();
        tv_nsec = v90;
      }

      v59 = tv_nsec / *&qword_1ED4D1F90 + v57 - (v76.tv_nsec / *&qword_1ED4D1F90 + v76.tv_sec);

      v60 = sub_1AB45FFA4();
      v61 = v80;
      sub_1AB45FFF4();
      LODWORD(v90) = sub_1AB461224();

      if (sub_1AB461314())
      {

        v62 = v85;
        sub_1AB460024();

        v64 = v86;
        v63 = v87;
        v65 = (*(v86 + 88))(v62, v87);
        v66 = *MEMORY[0x1E69E93E8];
        v92 = 0;
        if (v65 == v66)
        {
          v67 = 0;
          v68 = "[Error] Interval already ended";
        }

        else
        {
          (*(v64 + 8))(v62, v63);
          v68 = "selfTime=%f";
          v67 = 1;
        }

        v69 = swift_slowAlloc();
        *v69 = 0;
        *(v69 + 1) = v67;
        *(v69 + 2) = 2048;
        v70 = v93;
        os_unfair_lock_lock(v93);
        v71 = *(v46 + 16);
        os_unfair_lock_unlock(v70);
        *(v69 + 4) = v59 - v71;
        v61 = v80;
        v72 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v60, LOBYTE(v90), v72, "MakeDependency", v68, v69, 0xCu);
        MEMORY[0x1AC59F020](v69, -1, -1);
      }

      v37(v61, v81);
      v73 = v94;
      os_unfair_lock_lock(v94 + 6);
      *&v73[4]._os_unfair_lock_opaque = v59 + *&v73[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v73 + 6);
      v74 = v97;
      v75 = v79;
      *v79 = v96;
      v75[1] = v74;
      swift_task_localValuePop();
      sub_1AB157FE4(v91, v98, v82, v83, 0);
    }
  }
}

void sub_1AB14A970(uint64_t (**a1)(uint64_t)@<X0>, double a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t (**a5)(uint64_t)@<X8>)
{
  v6 = v5;
  v83 = a3;
  v84 = a4;
  v9 = sub_1AB45FFD4();
  v76 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB460134();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB45FF84();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - v20;
  v22 = *a1;
  if (a1[2])
  {
    *a5 = v22;
    swift_unknownObjectRetain();
  }

  else
  {
    v66 = v9;
    v71 = v19;
    v80 = v22;
    v23 = qword_1EB434BA8;
    v81 = a1[1];
    v82 = v6;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v68 = v25;
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v72 = v13;
    v70 = a5;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v85.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1AB030D2C(6775106, 0xE300000000000000, &v85.tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1AC59F020](v30, -1, -1);
      v32 = v29;
      v13 = v72;
      MEMORY[0x1AC59F020](v32, -1, -1);
    }

    (*(v14 + 16))(v17, v21, v13);
    sub_1AB460014();
    swift_allocObject();
    v74 = sub_1AB460004();
    v33 = v14 + 8;
    v34 = *(v14 + 8);
    v34(v21, v13);
    static MonotonicTime.now.getter(&v85);
    v67 = v85;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v69 = v33;
    sub_1AB4622E4();
    tv_sec = v85.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v35 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v85.tv_sec = v35;

    swift_task_localValuePush();
    v36 = sub_1AB01DBA0(*(v35 + 16));
    swift_task_localValuePop();

    if (v36 && (v37 = swift_conformsToProtocol2()) != 0)
    {
      v38 = *(v37 + 8);

      v38();
      sub_1AB0318FC();
      sub_1AB460184();
      v39 = sub_1AB460154();
      v40 = *(v36 + 48);

      os_unfair_lock_lock((v40 + 20));
      v41 = *(v40 + 16);
      os_unfair_lock_unlock((v40 + 20));

      if (v41 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v39);

      sub_1AB460164();
    }

    else
    {
      v39 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v85.tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v45 = v80;
    v44 = v81;
    v46 = v82;
    sub_1AB12C208(v80, v81, *&v83, v84);
    if (v46)
    {
      swift_task_localValuePop();
      sub_1AB157FC0(v45, v44, 0, MEMORY[0x1E69E7D60]);
    }

    else
    {
      v84 = v34;
      v82 = 0;
      if (v39)
      {
        v48 = v77;
        v47 = v78;
        v49 = v79;
        (*(v78 + 104))(v77, *MEMORY[0x1E6977AC8], v79);
        sub_1AB460174();
        (*(v47 + 8))(v48, v49);
      }

      if (v36)
      {
        v85.tv_sec = &type metadata for Bag;
        StartUpPerformanceEvent.record(checkpoint:)(&v85.tv_sec);
      }

      sub_1AB157FC0(*a1, a1[1], *(a1 + 16), MEMORY[0x1E69E7D60]);
      *a1 = v86;
      a1[1] = 0;
      *(a1 + 16) = 1;
      swift_unknownObjectRetain();
      static MonotonicTime.now.getter(&v85);
      v50 = v85.tv_sec;
      tv_nsec = v85.tv_nsec;
      v52 = v81;
      if (qword_1ED4D1F88 != -1)
      {
        v83 = v85.tv_nsec;
        swift_once();
        tv_nsec = v83;
      }

      v53 = tv_nsec / *&qword_1ED4D1F90 + v50 - (v67.tv_nsec / *&qword_1ED4D1F90 + v67.tv_sec);

      v54 = sub_1AB45FFA4();
      v55 = v71;
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      if (sub_1AB461314())
      {

        v56 = v75;
        sub_1AB460024();

        v57 = v76;
        v58 = v66;
        if ((*(v76 + 88))(v56, v66) == *MEMORY[0x1E69E93E8])
        {
          v59 = 0;
          v60 = "[Error] Interval already ended";
        }

        else
        {
          (*(v57 + 8))(v56, v58);
          v60 = "selfTime=%f";
          v59 = 1;
        }

        v61 = swift_slowAlloc();
        *v61 = 0;
        *(v61 + 1) = v59;
        *(v61 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v62 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v61 + 4) = v53 - v62;
        v55 = v71;
        v63 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v54, LOBYTE(v83), v63, "MakeDependency", v60, v61, 0xCu);
        MEMORY[0x1AC59F020](v61, -1, -1);
        v52 = v81;
      }

      v84(v55, v72);
      v64 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v64[4]._os_unfair_lock_opaque = v53 + *&v64[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v64 + 6);
      *v70 = v86;
      swift_task_localValuePop();
      sub_1AB157FC0(v80, v52, 0, MEMORY[0x1E69E7D60]);
    }
  }
}

void sub_1AB14B340(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t *a5, void *a6, void (*a7)(char *, uint64_t, void))
{
  v106 = a5;
  v103 = *&a3;
  v104 = a4;
  v10 = sub_1AB45FFD4();
  v93 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB460134();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AB45FF84();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v83 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v83 - v22;
  v24 = *v21;
  if (*(v21 + 16))
  {
    v25 = v24;
  }

  else
  {
    v85 = v10;
    v100 = v24;
    v101 = v7;
    v98 = a7;
    v88 = v21;
    v26 = *(v21 + 8);
    v27 = qword_1EB434BA8;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_1AB45FFC4();
    v29 = __swift_project_value_buffer(v28, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v87 = v29;
    v30 = sub_1AB45FFA4();
    v31 = sub_1AB461234();
    v32 = sub_1AB461314();
    v99 = v26;
    v89 = a6;
    v90 = v14;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v105.tv_sec = v34;
      *v33 = 136315138;
      sub_1AB016760(0, v106, a6);
      v35 = sub_1AB462314();
      v37 = v15;
      v38 = sub_1AB030D2C(v35, v36, &v105.tv_sec);

      *(v33 + 4) = v38;
      v15 = v37;
      v39 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v30, v31, v39, "MakeDependency", "object=%s,type=lazy", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1AC59F020](v34, -1, -1);
      v40 = v33;
      v14 = v90;
      MEMORY[0x1AC59F020](v40, -1, -1);
    }

    (*(v15 + 16))(v19, v23, v14);
    sub_1AB460014();
    swift_allocObject();
    v41 = sub_1AB460004();
    v44 = *(v15 + 8);
    v43 = (v15 + 8);
    v42 = v44;
    v44(v23, v14);
    static MonotonicTime.now.getter(&v105);
    v86 = v105;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v105.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v45 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v105.tv_sec = v45;

    swift_task_localValuePush();
    v46 = sub_1AB01DBA0(*(v45 + 16));
    swift_task_localValuePop();

    v92 = v41;
    if (v46)
    {
      v47 = sub_1AB016760(0, v106, v89);
      v48 = swift_conformsToProtocol2();
      v49 = 0;
      if (v48 && v47)
      {
        v50 = *(v48 + 8);
        v51 = v48;

        v50(v47, v51);
        sub_1AB0318FC();
        sub_1AB460184();
        v49 = sub_1AB460154();
        v52 = *(v46 + 48);

        os_unfair_lock_lock((v52 + 20));
        v53 = *(v52 + 16);
        os_unfair_lock_unlock((v52 + 20));

        if (v53 == 1)
        {

          sub_1AB460124();
        }

        sub_1AB3858E0(v49);

        sub_1AB460164();
      }
    }

    else
    {
      v49 = 0;
    }

    v106 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v54 = swift_allocObject();
    *(v54 + 24) = 0;
    v55 = (v54 + 24);
    *(v54 + 16) = 0;
    v105.tv_sec = v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v57 = v99;
    v56 = v100;
    v58 = v101;
    v59 = sub_1AB12C354(v100, v99, *&v103, v104);
    if (v58)
    {
      swift_task_localValuePop();

      v98(v56, v57, 0);
    }

    else
    {
      v60 = v59;
      v101 = 0;
      v61 = v49;
      if (v49)
      {
        v63 = v95;
        v62 = v96;
        v64 = v42;
        v65 = v94;
        (*(v95 + 104))(v94, *MEMORY[0x1E6977AC8], v96);
        sub_1AB460174();
        v66 = v65;
        v42 = v64;
        (*(v63 + 8))(v66, v62);
      }

      v67 = v99;
      v68 = v97;
      v89 = v61;
      if (v46)
      {
        v105.tv_sec = swift_getObjectType();
        StartUpPerformanceEvent.record(checkpoint:)(&v105.tv_sec);
      }

      v98(v100, v67, 0);
      v69 = v88;
      *v88 = v60;
      v69[1] = 0;
      *(v69 + 16) = 1;
      v104 = v60;
      static MonotonicTime.now.getter(&v105);
      v70 = v105.tv_sec;
      tv_nsec = v105.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v103 = v105.tv_nsec;
        swift_once();
        tv_nsec = v103;
      }

      v72 = tv_nsec / *&qword_1ED4D1F90 + v70 - (v86.tv_nsec / *&qword_1ED4D1F90 + v86.tv_sec);

      v73 = sub_1AB45FFA4();
      sub_1AB45FFF4();
      LODWORD(v103) = sub_1AB461224();

      if (sub_1AB461314())
      {

        sub_1AB460024();

        v74 = v93;
        v75 = v85;
        v76 = (*(v93 + 88))(v68, v85) == *MEMORY[0x1E69E93E8];
        v84 = v42;
        if (v76)
        {
          v78 = 0;
          v77 = "[Error] Interval already ended";
        }

        else
        {
          (*(v74 + 8))(v68, v75);
          v77 = "selfTime=%f";
          v78 = 1;
        }

        v79 = swift_slowAlloc();
        *v79 = 0;
        *(v79 + 1) = v78;
        *(v79 + 2) = 2048;
        os_unfair_lock_lock(v55);
        v80 = *(v54 + 16);
        os_unfair_lock_unlock(v55);
        *(v79 + 4) = v72 - v80;
        v81 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v73, LOBYTE(v103), v81, "MakeDependency", v77, v79, 0xCu);
        MEMORY[0x1AC59F020](v79, -1, -1);
        v67 = v99;
        v42 = v84;
      }

      v42(v102, v90);
      v82 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v82[4]._os_unfair_lock_opaque = v72 + *&v82[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v82 + 6);
      swift_task_localValuePop();

      v98(v100, v67, 0);
    }
  }
}

__darwin_time_t *sub_1AB14BD4C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v95 = *&a4;
  v93 = a3;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v76 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v76 = v7;
  v77 = v6;
  v81 = v17;
  v91 = v20;
  v92 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v79 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v90 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v88 = v12;
    v30 = v29;
    v31 = swift_slowAlloc();
    v94.tv_sec = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1AB030D2C(0x73746E756F636341, 0xE800000000000000, &v94.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1AC59F020](v31, -1, -1);
    v33 = v30;
    v12 = v88;
    MEMORY[0x1AC59F020](v33, -1, -1);
  }

  (*(v12 + 2))(v15, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v37 = *(v12 + 1);
  v36 = v12 + 8;
  v35 = v37;
  (v37)(v19, v11);
  static MonotonicTime.now.getter(&v94);
  v78 = v94;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB46C208;
  sub_1AB4622E4();
  tv_sec = v94.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v38 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v94.tv_sec = v38;

  swift_task_localValuePush();
  v39 = sub_1AB01DBA0(*(v38 + 16));
  swift_task_localValuePop();

  if (v39)
  {
    v40 = type metadata accessor for Unstable.Accounts();
    v41 = swift_conformsToProtocol2();
    v89 = 0;
    if (v41 && v40)
    {
      v88 = v35;
      v42 = *(v41 + 8);
      v43 = v41;

      v42(v40, v43);
      sub_1AB0318FC();
      sub_1AB460184();
      v44 = sub_1AB460154();
      v45 = *(v39 + 48);

      os_unfair_lock_lock((v45 + 20));
      v46 = *(v45 + 16);
      os_unfair_lock_unlock((v45 + 20));

      if (v46 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v44);

      sub_1AB460164();
      v89 = v44;

      v35 = v88;
    }
  }

  else
  {
    v89 = 0;
  }

  v83 = v34;
  v88 = v36;
  v80 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v48 = (v47 + 24);
  *(v47 + 16) = 0;
  v94.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
  swift_task_localValuePush();
  v49 = v90;
  v50 = v91;
  v51 = v92;
  v52 = sub_1AB12C354(v91, v90, v93, *&v95);
  if (v51)
  {
    swift_task_localValuePop();

    sub_1AB057304(v50, v49, 0);
  }

  else
  {
    v21 = v52;
    v92 = 0;
    if (v89)
    {
      v53 = *MEMORY[0x1E6977AC8];
      v55 = v86;
      v54 = v87;
      v56 = *(v86 + 104);
      *&v95 = v47 + 24;
      v57 = v39;
      v58 = v35;
      v59 = v85;
      v56(v85, v53, v87);
      sub_1AB460174();
      v60 = v59;
      v35 = v58;
      v39 = v57;
      v48 = *&v95;
      (*(v55 + 8))(v60, v54);
    }

    v61 = v90;
    if (v39)
    {
      v94.tv_sec = *v21;
      StartUpPerformanceEvent.record(checkpoint:)(&v94.tv_sec);
    }

    sub_1AB057304(v91, v61, 0);
    *a1 = v21;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v94);
    v62 = v94.tv_sec;
    tv_nsec = v94.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v95 = v94.tv_nsec;
      swift_once();
      tv_nsec = v95;
    }

    v64 = tv_nsec / *&qword_1ED4D1F90 + v62 - (v78.tv_nsec / *&qword_1ED4D1F90 + v78.tv_sec);

    v65 = sub_1AB45FFA4();
    v66 = v81;
    sub_1AB45FFF4();
    LODWORD(v95) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v67 = v84;
      sub_1AB460024();

      v68 = v76;
      v69 = v77;
      if ((*(v76 + 88))(v67, v77) == *MEMORY[0x1E69E93E8])
      {
        v70 = 0;
        v93 = "[Error] Interval already ended";
      }

      else
      {
        (*(v68 + 8))(v67, v69);
        v93 = "selfTime=%f";
        v70 = 1;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      *(v71 + 1) = v70;
      *(v71 + 2) = 2048;
      os_unfair_lock_lock(v48);
      v72 = *(v47 + 16);
      os_unfair_lock_unlock(v48);
      *(v71 + 4) = v64 - v72;
      v66 = v81;
      v73 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v65, LOBYTE(v95), v73, "MakeDependency", v93, v71, 0xCu);
      MEMORY[0x1AC59F020](v71, -1, -1);
    }

    (v35)(v66, v80);
    v74 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v74[4]._os_unfair_lock_opaque = v64 + *&v74[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v74 + 6);
    swift_task_localValuePop();

    sub_1AB057304(v91, v90, 0);
  }

  return v21;
}

void sub_1AB14C718(uint64_t (**a1)(uint64_t)@<X0>, double a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t (**a5)(uint64_t)@<X8>)
{
  v6 = v5;
  v83 = a3;
  v84 = a4;
  v9 = sub_1AB45FFD4();
  v76 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB460134();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB45FF84();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - v20;
  v22 = *a1;
  if (a1[2])
  {
    *a5 = v22;
  }

  else
  {
    v66 = v9;
    v71 = v19;
    v80 = v22;
    v23 = qword_1EB434BA8;
    v81 = a1[1];
    v82 = v6;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v68 = v25;
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v72 = v13;
    v70 = a5;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v85.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1AB030D2C(0x746E6F434E4F534ALL, 0xEB00000000747865, &v85.tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1AC59F020](v30, -1, -1);
      v32 = v29;
      v13 = v72;
      MEMORY[0x1AC59F020](v32, -1, -1);
    }

    (*(v14 + 16))(v17, v21, v13);
    sub_1AB460014();
    swift_allocObject();
    v74 = sub_1AB460004();
    v33 = v14 + 8;
    v34 = *(v14 + 8);
    v34(v21, v13);
    static MonotonicTime.now.getter(&v85);
    v67 = v85;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v69 = v33;
    sub_1AB4622E4();
    tv_sec = v85.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v35 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v85.tv_sec = v35;

    swift_task_localValuePush();
    v36 = sub_1AB01DBA0(*(v35 + 16));
    swift_task_localValuePop();

    if (v36 && (v37 = swift_conformsToProtocol2()) != 0)
    {
      v38 = *(v37 + 8);

      v38();
      sub_1AB0318FC();
      sub_1AB460184();
      v39 = sub_1AB460154();
      v40 = *(v36 + 48);

      os_unfair_lock_lock((v40 + 20));
      v41 = *(v40 + 16);
      os_unfair_lock_unlock((v40 + 20));

      if (v41 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v39);

      sub_1AB460164();
    }

    else
    {
      v39 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v85.tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v45 = v80;
    v44 = v81;
    v46 = v82;
    sub_1AB12C208(v80, v81, *&v83, v84);
    if (v46)
    {
      swift_task_localValuePop();
      sub_1AB157FC0(v45, v44, 0, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v84 = v34;
      v82 = 0;
      if (v39)
      {
        v48 = v77;
        v47 = v78;
        v49 = v79;
        (*(v78 + 104))(v77, *MEMORY[0x1E6977AC8], v79);
        sub_1AB460174();
        (*(v47 + 8))(v48, v49);
      }

      if (v36)
      {
        v85.tv_sec = &type metadata for JSONContext;
        StartUpPerformanceEvent.record(checkpoint:)(&v85.tv_sec);
      }

      sub_1AB157FC0(*a1, a1[1], *(a1 + 16), MEMORY[0x1E69E7CF8]);
      *a1 = v86;
      a1[1] = 0;
      *(a1 + 16) = 1;

      static MonotonicTime.now.getter(&v85);
      v50 = v85.tv_sec;
      tv_nsec = v85.tv_nsec;
      v52 = v81;
      if (qword_1ED4D1F88 != -1)
      {
        v83 = v85.tv_nsec;
        swift_once();
        tv_nsec = v83;
      }

      v53 = tv_nsec / *&qword_1ED4D1F90 + v50 - (v67.tv_nsec / *&qword_1ED4D1F90 + v67.tv_sec);

      v54 = sub_1AB45FFA4();
      v55 = v71;
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      if (sub_1AB461314())
      {

        v56 = v75;
        sub_1AB460024();

        v57 = v76;
        v58 = v66;
        if ((*(v76 + 88))(v56, v66) == *MEMORY[0x1E69E93E8])
        {
          v59 = 0;
          v60 = "[Error] Interval already ended";
        }

        else
        {
          (*(v57 + 8))(v56, v58);
          v60 = "selfTime=%f";
          v59 = 1;
        }

        v61 = swift_slowAlloc();
        *v61 = 0;
        *(v61 + 1) = v59;
        *(v61 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v62 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v61 + 4) = v53 - v62;
        v55 = v71;
        v63 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v54, LOBYTE(v83), v63, "MakeDependency", v60, v61, 0xCu);
        MEMORY[0x1AC59F020](v61, -1, -1);
        v52 = v81;
      }

      v84(v55, v72);
      v64 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v64[4]._os_unfair_lock_opaque = v53 + *&v64[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v64 + 6);
      *v70 = v86;
      swift_task_localValuePop();
      sub_1AB157FC0(v80, v52, 0, MEMORY[0x1E69E7CF8]);
    }
  }
}

__darwin_time_t *sub_1AB14D0F8(uint64_t a1, uint64_t a2, __darwin_time_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = a3;
  v96 = a4;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = COERCE_DOUBLE(sub_1AB460134());
  v93 = *(v10 - 8);
  v94 = *&v10;
  MEMORY[0x1EEE9AC00](v10);
  v92 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v79 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v21 = v79 - v20;
  v22 = *v19;
  if (*(v19 + 16))
  {

    return v22;
  }

  else
  {
    v80 = v9;
    v81 = v7;
    v82 = v6;
    v89 = v18;
    v98 = v17;
    v87 = v19;
    v24 = *(v19 + 8);
    v25 = qword_1EB434BA8;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1AB45FFC4();
    v27 = __swift_project_value_buffer(v26, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v85 = v27;
    v28 = sub_1AB45FFA4();
    v29 = sub_1AB461234();
    v30 = sub_1AB461314();
    v90 = v12;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      tv_nsec = v24;
      v33 = v22;
      v34 = v5;
      v35 = v32;
      v97.tv_sec = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AB030D2C(0x697669746341574ELL, 0xEA00000000007974, &v97.tv_sec);
      v36 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v28, v29, v36, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v37 = v35;
      v5 = v34;
      v22 = v33;
      v24 = tv_nsec;
      MEMORY[0x1AC59F020](v37, -1, -1);
      v38 = v31;
      v12 = v90;
      MEMORY[0x1AC59F020](v38, -1, -1);
    }

    v39 = v98;
    (*(v98 + 16))(v15, v21, v12);
    sub_1AB460014();
    swift_allocObject();
    v40 = sub_1AB460004();
    v42 = *(v39 + 8);
    v41 = v39 + 8;
    v84 = v42;
    v42(v21, v12);
    static MonotonicTime.now.getter(&v97);
    tv_sec = v97.tv_sec;
    tv_nsec = v97.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v91 = v40;
    v98 = v41;
    v23 = qword_1EB46C208;
    sub_1AB4622E4();
    v43 = v97.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v44 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v97.tv_sec = v44;

    swift_task_localValuePush();
    v45 = sub_1AB01DBA0(*(v44 + 16));
    swift_task_localValuePop();

    if (v45)
    {
      v46 = sub_1AB460184();
      v47 = swift_conformsToProtocol2();
      v48 = 0;
      if (v47 && v46)
      {
        v86 = v43;
        v49 = *(v47 + 8);
        v50 = v47;

        v49(v46, v50);
        sub_1AB0318FC();
        v48 = sub_1AB460154();
        v51 = *(v45 + 48);

        os_unfair_lock_lock((v51 + 20));
        v52 = *(v51 + 16);
        os_unfair_lock_unlock((v51 + 20));

        if (v52 == 1)
        {

          sub_1AB460124();
        }

        sub_1AB3858E0(v48);

        sub_1AB460164();

        v43 = v86;
      }
    }

    else
    {
      v48 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v53 = swift_allocObject();
    *(v53 + 24) = 0;
    *(v53 + 16) = 0;
    v97.tv_sec = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v54 = sub_1AB12C354(v22, v24, v95, v96);
    if (v5)
    {
      swift_task_localValuePop();

      sub_1AB057304(v22, v24, 0);
    }

    else
    {
      v23 = v54;
      v79[0] = (v53 + 24);
      v55 = v48;
      v86 = v43;
      v96 = 0;
      if (v48)
      {
        v56 = v92;
        v57 = v93;
        v58 = v45;
        v59 = v24;
        v60 = v94;
        (*(v93 + 104))(v92, *MEMORY[0x1E6977AC8], COERCE_DOUBLE(*&v94));
        sub_1AB460174();
        v61 = v60;
        v24 = v59;
        v45 = v58;
        (*(v57 + 8))(v56, COERCE_DOUBLE(*&v61));
      }

      v79[1] = v55;
      if (v45)
      {
        v97.tv_sec = *v23;
        StartUpPerformanceEvent.record(checkpoint:)(&v97.tv_sec);
      }

      sub_1AB057304(v22, v24, 0);
      v95 = v22;
      v62 = v87;
      *v87 = v23;
      v62[1] = 0;
      *(v62 + 16) = 1;

      static MonotonicTime.now.getter(&v97);
      v63 = v97.tv_sec;
      v64 = v97.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v94 = v97.tv_nsec;
        swift_once();
        v64 = v94;
      }

      v65 = v64 / *&qword_1ED4D1F90 + v63 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

      v66 = sub_1AB45FFA4();
      v67 = v89;
      sub_1AB45FFF4();
      LODWORD(v94) = sub_1AB461224();

      if (sub_1AB461314())
      {
        tv_nsec = v24;

        v68 = v80;
        sub_1AB460024();

        v70 = v81;
        v69 = v82;
        if ((*(v81 + 88))(v68, v82) == *MEMORY[0x1E69E93E8])
        {
          v71 = 0;
          v72 = "[Error] Interval already ended";
        }

        else
        {
          (*(v70 + 8))(v68, v69);
          v72 = "selfTime=%f";
          v71 = 1;
        }

        v73 = swift_slowAlloc();
        *v73 = 0;
        *(v73 + 1) = v71;
        *(v73 + 2) = 2048;
        v74 = v79[0];
        os_unfair_lock_lock(v79[0]);
        v75 = *(v53 + 16);
        os_unfair_lock_unlock(v74);
        *(v73 + 4) = v65 - v75;
        v67 = v89;
        v76 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v66, LOBYTE(v94), v76, "MakeDependency", v72, v73, 0xCu);
        MEMORY[0x1AC59F020](v73, -1, -1);
        v24 = tv_nsec;
      }

      v84(v67, v90);
      v77 = v86;
      os_unfair_lock_lock(v86 + 6);
      *&v77[4]._os_unfair_lock_opaque = v65 + *&v77[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v77 + 6);
      swift_task_localValuePop();

      sub_1AB057304(v95, v24, 0);
    }
  }

  return v23;
}

void sub_1AB14DAFC(uint64_t a1@<X0>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v8 = sub_1AB45FFD4();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v68 = a1;
  sub_1AB014A58(a1, v74, &qword_1EB4366A0, &qword_1AB4D43E8);
  if (v75)
  {
    sub_1AB0149B0(v74, v71);
  }

  else
  {
    v58 = v8;
    v63 = v13;
    v76 = v11;
    v20 = *(&v74[0] + 1);
    v65 = *&v74[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1AB45FFC4();
    v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v61 = v22;
    v23 = sub_1AB45FFA4();
    v24 = sub_1AB461234();
    v25 = sub_1AB461314();
    v64 = v10;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      tv_nsec = v20;
      v28 = v27;
      v73[0].tv_sec = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1AB030D2C(0xD000000000000021, 0x80000001AB4FF090, &v73[0].tv_sec);
      v29 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v30 = v28;
      v6 = v5;
      v20 = tv_nsec;
      MEMORY[0x1AC59F020](v30, -1, -1);
      v31 = v26;
      v10 = v64;
      MEMORY[0x1AC59F020](v31, -1, -1);
    }

    v32 = v76;
    (*(v76 + 16))(v16, v19, v10);
    sub_1AB460014();
    swift_allocObject();
    sub_1AB460004();
    v34 = *(v32 + 8);
    v33 = v32 + 8;
    v60 = v34;
    v34(v19, v10);
    static MonotonicTime.now.getter(v73);
    tv_sec = v73[0].tv_sec;
    tv_nsec = v73[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v35 = v73[0].tv_sec;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436690, &qword_1AB4D43D8);
    started = type metadata accessor for StartUpPerformanceEvent();
    v76 = v33;
    if (v36 == started)
    {
      v40 = 0;
    }

    else
    {
      v38 = v6;
      type metadata accessor for BaseObjectGraph();
      v39 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v73[0].tv_sec = v39;

      swift_task_localValuePush();
      v40 = sub_1AB01DBA0(*(v39 + 16));
      swift_task_localValuePop();

      v6 = v38;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    v42 = (v41 + 24);
    *(v41 + 16) = 0;
    v73[0].tv_sec = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    sub_1AB12C208(v65, v20, *&v69, v70);
    if (v6)
    {
      swift_task_localValuePop();
    }

    else
    {
      if (v40)
      {
        v72.tv_sec = v36;
        StartUpPerformanceEvent.record(checkpoint:)(&v72.tv_sec);
      }

      v70 = v40;
      v43 = v68;
      sub_1AB014AC0(v68, &qword_1EB4366A0, &qword_1AB4D43E8);
      sub_1AB01494C(v73, v43);
      *(v43 + 40) = 1;
      static MonotonicTime.now.getter(&v72);
      v44 = v72.tv_sec;
      v45 = v72.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v69 = v72.tv_nsec;
        swift_once();
        v45 = v69;
      }

      v46 = v45 / *&qword_1ED4D1F90 + v44 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

      v47 = sub_1AB45FFA4();
      v48 = v63;
      sub_1AB45FFF4();
      LODWORD(v69) = sub_1AB461224();

      if (sub_1AB461314())
      {
        tv_nsec = v20;

        v49 = v66;
        sub_1AB460024();

        v50 = v67;
        v51 = v58;
        v52 = (*(v67 + 88))(v49, v58) == *MEMORY[0x1E69E93E8];
        v65 = 0;
        if (v52)
        {
          v54 = 0;
          v53 = "[Error] Interval already ended";
        }

        else
        {
          (*(v50 + 8))(v49, v51);
          v53 = "selfTime=%f";
          v54 = 1;
        }

        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v55 + 1) = v54;
        *(v55 + 2) = 2048;
        os_unfair_lock_lock(v42);
        v56 = *(v41 + 16);
        os_unfair_lock_unlock(v42);
        *(v55 + 4) = v46 - v56;
        v48 = v63;
        v57 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v47, LOBYTE(v69), v57, "MakeDependency", v53, v55, 0xCu);
        MEMORY[0x1AC59F020](v55, -1, -1);
      }

      v60(v48, v64);
      os_unfair_lock_lock((v35 + 24));
      *(v35 + 16) = v46 + *(v35 + 16);
      os_unfair_lock_unlock((v35 + 24));
      sub_1AB0149B0(&v73[0].tv_sec, v71);
      swift_task_localValuePop();
    }
  }
}

void sub_1AB14E350(uint64_t a1@<X0>, __darwin_time_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a4;
  v85 = a3;
  v8 = sub_1AB45FFD4();
  v78 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v68 - v19;
  v22 = *a1;
  v21 = *(a1 + 8);
  if (*(a1 + 16))
  {
    *a5 = v22;
    *(a5 + 8) = v21 & 1;
  }

  else
  {
    v68 = v8;
    v74 = v18;
    v82 = v22;
    v83 = v21;
    v84 = v5;
    v23 = qword_1EB434BA8;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v71 = v25;
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v75 = v12;
    v73 = a5;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v88.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1AB030D2C(0xD000000000000015, 0x80000001AB4FF050, &v88.tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1AC59F020](v30, -1, -1);
      v32 = v29;
      v12 = v75;
      MEMORY[0x1AC59F020](v32, -1, -1);
    }

    (*(v13 + 16))(v16, v20, v12);
    sub_1AB460014();
    swift_allocObject();
    v76 = sub_1AB460004();
    v33 = v13 + 8;
    v70 = *(v13 + 8);
    v70(v20, v12);
    static MonotonicTime.now.getter(&v88);
    v69 = v88;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v88.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v35 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v88.tv_sec = v35;

    swift_task_localValuePush();
    v36 = sub_1AB01DBA0(*(v35 + 16));
    swift_task_localValuePop();

    v72 = v33;
    if (v36 && (v37 = swift_conformsToProtocol2()) != 0)
    {
      v38 = *(v37 + 8);

      v38();
      sub_1AB0318FC();
      sub_1AB460184();
      v39 = sub_1AB460154();
      v40 = *(v36 + 48);

      os_unfair_lock_lock((v40 + 20));
      v41 = *(v40 + 16);
      os_unfair_lock_unlock((v40 + 20));

      if (v41 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v39);

      sub_1AB460164();
    }

    else
    {
      v39 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v88.tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v45 = v82;
    v44 = v83;
    v46 = v84;
    sub_1AB12C208(v82, v83, v85, *&v89);
    if (v46)
    {
      swift_task_localValuePop();
      sub_1AB0D60F4(v45, v44, 0);
    }

    else
    {
      v84 = 0;
      if (v39)
      {
        v48 = v80;
        v47 = v81;
        v49 = tv_sec;
        v50 = v79;
        (*(v80 + 104))(v79, *MEMORY[0x1E6977AC8], v81);
        sub_1AB460174();
        v51 = v50;
        tv_sec = v49;
        (*(v48 + 8))(v51, v47);
      }

      if (v36)
      {
        v88.tv_sec = &type metadata for IntentDispatchTimeout;
        StartUpPerformanceEvent.record(checkpoint:)(&v88.tv_sec);
      }

      sub_1AB0D60F4(*a1, *(a1 + 8), *(a1 + 16));
      v52 = v87;
      *a1 = v86;
      *(a1 + 8) = v52;
      *(a1 + 16) = 1;
      static MonotonicTime.now.getter(&v88);
      v53 = v88.tv_sec;
      tv_nsec = v88.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v89 = v88.tv_nsec;
        swift_once();
        tv_nsec = v89;
      }

      v55 = tv_nsec / *&qword_1ED4D1F90 + v53 - (v69.tv_nsec / *&qword_1ED4D1F90 + v69.tv_sec);

      v56 = sub_1AB45FFA4();
      v57 = v74;
      sub_1AB45FFF4();
      LODWORD(v89) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v85 = tv_sec;

        v58 = v77;
        sub_1AB460024();

        v59 = v78;
        v60 = v68;
        if ((*(v78 + 88))(v58, v68) == *MEMORY[0x1E69E93E8])
        {
          v61 = 0;
          v62 = "[Error] Interval already ended";
        }

        else
        {
          (*(v59 + 8))(v58, v60);
          v62 = "selfTime=%f";
          v61 = 1;
        }

        v63 = swift_slowAlloc();
        *v63 = 0;
        *(v63 + 1) = v61;
        *(v63 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v64 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v63 + 4) = v55 - v64;
        v57 = v74;
        v65 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v56, LOBYTE(v89), v65, "MakeDependency", v62, v63, 0xCu);
        MEMORY[0x1AC59F020](v63, -1, -1);
        tv_sec = v85;
      }

      v70(v57, v75);
      os_unfair_lock_lock((tv_sec + 24));
      *(tv_sec + 16) = v55 + *(tv_sec + 16);
      os_unfair_lock_unlock((tv_sec + 24));
      v66 = v87;
      v67 = v73;
      *v73 = v86;
      *(v67 + 8) = v66;
      swift_task_localValuePop();
      sub_1AB0D60F4(v82, v83, 0);
    }
  }
}

void sub_1AB14ED0C(uint64_t a1@<X0>, uint64_t a2@<X1>, __darwin_time_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a3;
  v86 = a4;
  v84 = a2;
  v8 = sub_1AB45FFD4();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for PageIntentInstrumentation(0);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1AB45FF84();
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436640, &qword_1AB4D4388);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v81 = a1;
  sub_1AB014A58(a1, &v71 - v21, &qword_1EB436640, &qword_1AB4D4388);
  v80 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AB0342CC(v22, a5, type metadata accessor for PageIntentInstrumentation);
  }

  else
  {
    v72 = a5;
    v23 = *(v22 + 1);
    v73 = *v22;
    v82 = v23;
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v90 = v5;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v91.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1AB030D2C(0xD000000000000019, 0x80000001AB4FF030, &v91.tv_sec);
      v30 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v30, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1AC59F020](v29, -1, -1);
      MEMORY[0x1AC59F020](v28, -1, -1);
    }

    v31 = v92;
    v32 = v88;
    (*(v92 + 16))(v16, v19, v88);
    sub_1AB460014();
    swift_allocObject();
    v84 = sub_1AB460004();
    v33 = *(v31 + 8);
    v92 = v31 + 8;
    (*&v33)(v19, v32);
    static MonotonicTime.now.getter(&v91);
    v71 = v91;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v91.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v35 = static BaseObjectGraph.current.getter();
    v36 = v87;
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v91.tv_sec = v35;

    swift_task_localValuePush();
    v37 = sub_1AB01DBA0(*(v35 + 16));
    swift_task_localValuePop();

    if (v37 && (v38 = swift_conformsToProtocol2()) != 0)
    {
      v39 = *(v38 + 8);
      v40 = v38;

      v39(v36, v40);
      sub_1AB0318FC();
      sub_1AB460184();
      v41 = sub_1AB460154();
      v42 = *(v37 + 48);

      os_unfair_lock_lock((v42 + 20));
      v43 = *(v42 + 16);
      os_unfair_lock_unlock((v42 + 20));

      if (v43 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v41);

      v44 = v41;
      sub_1AB460164();
    }

    else
    {
      v44 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    v46 = (v45 + 24);
    *(v45 + 16) = 0;
    v91.tv_sec = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v47 = v90;
    sub_1AB12C208(v73, v82, v85, *&v86);
    v90 = v47;
    if (v47)
    {
      swift_task_localValuePop();
    }

    else
    {
      if (v44)
      {
        v48 = *MEMORY[0x1E6977AC8];
        v86 = v33;
        v50 = v77;
        v49 = v78;
        v51 = v79;
        (*(v78 + 104))(v77, v48, v79);
        sub_1AB460174();
        v52 = v51;
        v36 = v87;
        (*(v49 + 8))(v50, v52);
        v33 = v86;
      }

      v87 = v44;
      if (v37)
      {
        v91.tv_sec = v36;
        StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
      }

      v53 = v81;
      sub_1AB014AC0(v81, &qword_1EB436640, &qword_1AB4D4388);
      sub_1AB03AB54(v89, v53, type metadata accessor for PageIntentInstrumentation);
      swift_storeEnumTagMultiPayload();
      static MonotonicTime.now.getter(&v91);
      v54 = v91.tv_sec;
      tv_nsec = v91.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v86 = v91.tv_nsec;
        swift_once();
        tv_nsec = v86;
      }

      v56 = tv_nsec / *&qword_1ED4D1F90 + v54 - (v71.tv_nsec / *&qword_1ED4D1F90 + v71.tv_sec);

      v57 = sub_1AB45FFA4();
      v58 = v83;
      sub_1AB45FFF4();
      LODWORD(v86) = sub_1AB461224();

      v59 = sub_1AB461314();
      v60 = v72;
      if (v59)
      {
        v85 = tv_sec;

        v61 = v74;
        sub_1AB460024();

        v63 = v75;
        v62 = v76;
        if ((*(v75 + 88))(v61, v76) == *MEMORY[0x1E69E93E8])
        {
          v64 = 0;
          v65 = "[Error] Interval already ended";
        }

        else
        {
          (*(v63 + 8))(v61, v62);
          v65 = "selfTime=%f";
          v64 = 1;
        }

        v66 = swift_slowAlloc();
        *v66 = 0;
        *(v66 + 1) = v64;
        *(v66 + 2) = 2048;
        os_unfair_lock_lock(v46);
        v67 = *(v45 + 16);
        os_unfair_lock_unlock(v46);
        *(v66 + 4) = v56 - v67;
        v68 = v83;
        v69 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v57, LOBYTE(v86), v69, "MakeDependency", v65, v66, 0xCu);
        v70 = v66;
        v58 = v68;
        MEMORY[0x1AC59F020](v70, -1, -1);
        v60 = v72;
        tv_sec = v85;
      }

      (*&v33)(v58, v88);
      os_unfair_lock_lock((tv_sec + 24));
      *(tv_sec + 16) = v56 + *(tv_sec + 16);
      os_unfair_lock_unlock((tv_sec + 24));
      sub_1AB0342CC(v89, v60, type metadata accessor for PageIntentInstrumentation);
      swift_task_localValuePop();
    }
  }
}

__darwin_time_t *sub_1AB14F7B8(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v95 = *&a4;
  v93 = a3;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v76 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v76 = v7;
  v77 = v6;
  v81 = v17;
  v91 = v20;
  v92 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v79 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v90 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v88 = v12;
    v30 = v29;
    v31 = swift_slowAlloc();
    v94.tv_sec = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1AB030D2C(0xD000000000000014, 0x80000001AB4FF240, &v94.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1AC59F020](v31, -1, -1);
    v33 = v30;
    v12 = v88;
    MEMORY[0x1AC59F020](v33, -1, -1);
  }

  (*(v12 + 2))(v15, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v37 = *(v12 + 1);
  v36 = v12 + 8;
  v35 = v37;
  (v37)(v19, v11);
  static MonotonicTime.now.getter(&v94);
  v78 = v94;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB46C208;
  sub_1AB4622E4();
  tv_sec = v94.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v38 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v94.tv_sec = v38;

  swift_task_localValuePush();
  v39 = sub_1AB01DBA0(*(v38 + 16));
  swift_task_localValuePop();

  if (v39)
  {
    v40 = type metadata accessor for PageMetricsPresenter();
    v41 = swift_conformsToProtocol2();
    v89 = 0;
    if (v41 && v40)
    {
      v88 = v35;
      v42 = *(v41 + 8);
      v43 = v41;

      v42(v40, v43);
      sub_1AB0318FC();
      sub_1AB460184();
      v44 = sub_1AB460154();
      v45 = *(v39 + 48);

      os_unfair_lock_lock((v45 + 20));
      v46 = *(v45 + 16);
      os_unfair_lock_unlock((v45 + 20));

      if (v46 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v44);

      sub_1AB460164();
      v89 = v44;

      v35 = v88;
    }
  }

  else
  {
    v89 = 0;
  }

  v83 = v34;
  v88 = v36;
  v80 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v48 = (v47 + 24);
  *(v47 + 16) = 0;
  v94.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
  swift_task_localValuePush();
  v49 = v90;
  v50 = v91;
  v51 = v92;
  v52 = sub_1AB12C354(v91, v90, v93, *&v95);
  if (v51)
  {
    swift_task_localValuePop();

    sub_1AB057304(v50, v49, 0);
  }

  else
  {
    v21 = v52;
    v92 = 0;
    if (v89)
    {
      v53 = *MEMORY[0x1E6977AC8];
      v55 = v86;
      v54 = v87;
      v56 = *(v86 + 104);
      *&v95 = v47 + 24;
      v57 = v39;
      v58 = v35;
      v59 = v85;
      v56(v85, v53, v87);
      sub_1AB460174();
      v60 = v59;
      v35 = v58;
      v39 = v57;
      v48 = *&v95;
      (*(v55 + 8))(v60, v54);
    }

    v61 = v90;
    if (v39)
    {
      v94.tv_sec = *v21;
      StartUpPerformanceEvent.record(checkpoint:)(&v94.tv_sec);
    }

    sub_1AB057304(v91, v61, 0);
    *a1 = v21;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v94);
    v62 = v94.tv_sec;
    tv_nsec = v94.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v95 = v94.tv_nsec;
      swift_once();
      tv_nsec = v95;
    }

    v64 = tv_nsec / *&qword_1ED4D1F90 + v62 - (v78.tv_nsec / *&qword_1ED4D1F90 + v78.tv_sec);

    v65 = sub_1AB45FFA4();
    v66 = v81;
    sub_1AB45FFF4();
    LODWORD(v95) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v67 = v84;
      sub_1AB460024();

      v68 = v76;
      v69 = v77;
      if ((*(v76 + 88))(v67, v77) == *MEMORY[0x1E69E93E8])
      {
        v70 = 0;
        v93 = "[Error] Interval already ended";
      }

      else
      {
        (*(v68 + 8))(v67, v69);
        v93 = "selfTime=%f";
        v70 = 1;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      *(v71 + 1) = v70;
      *(v71 + 2) = 2048;
      os_unfair_lock_lock(v48);
      v72 = *(v47 + 16);
      os_unfair_lock_unlock(v48);
      *(v71 + 4) = v64 - v72;
      v66 = v81;
      v73 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v65, LOBYTE(v95), v73, "MakeDependency", v93, v71, 0xCu);
      MEMORY[0x1AC59F020](v71, -1, -1);
    }

    (v35)(v66, v80);
    v74 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v74[4]._os_unfair_lock_opaque = v64 + *&v74[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v74 + 6);
    swift_task_localValuePop();

    sub_1AB057304(v91, v90, 0);
  }

  return v21;
}

void sub_1AB150188(const char *a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, os_unfair_lock_s *a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a4;
  v93 = a2;
  v94 = a3;
  v8 = sub_1AB45FFD4();
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v75 - v20;
  v90 = a1;
  sub_1AB014A58(a1, v98, &qword_1EB436830, &qword_1AB4D4568);
  if (v100)
  {
    v22 = v98[11];
    *(a5 + 160) = v98[10];
    *(a5 + 176) = v22;
    *(a5 + 192) = v99;
    v23 = v98[7];
    *(a5 + 96) = v98[6];
    *(a5 + 112) = v23;
    v24 = v98[9];
    *(a5 + 128) = v98[8];
    *(a5 + 144) = v24;
    v25 = v98[3];
    *(a5 + 32) = v98[2];
    *(a5 + 48) = v25;
    v26 = v98[5];
    *(a5 + 64) = v98[4];
    *(a5 + 80) = v26;
    v27 = v98[1];
    *a5 = v98[0];
    *(a5 + 16) = v27;
  }

  else
  {
    v28 = a5;
    v80 = v15;
    v91 = *(&v98[0] + 1);
    v82 = *&v98[0];
    v92 = v5;
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v29 = sub_1AB45FFC4();
    v30 = __swift_project_value_buffer(v29, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v78 = v30;
    v31 = sub_1AB45FFA4();
    v32 = sub_1AB461234();
    v33 = sub_1AB461314();
    v81 = v12;
    v79 = v28;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v93 = v13;
      v36 = v35;
      v96[0].tv_sec = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1AB030D2C(0x507363697274654DLL, 0xEF656E696C657069, &v96[0].tv_sec);
      v37 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v31, v32, v37, "MakeDependency", "object=%s,type=lazy", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v38 = v36;
      v13 = v93;
      MEMORY[0x1AC59F020](v38, -1, -1);
      v39 = v34;
      v12 = v81;
      MEMORY[0x1AC59F020](v39, -1, -1);
    }

    (*(v13 + 16))(v18, v21, v12);
    sub_1AB460014();
    swift_allocObject();
    v83 = sub_1AB460004();
    v40 = *(v13 + 8);
    v93 = v13 + 8;
    v77 = v40;
    v40(v21, v12);
    static MonotonicTime.now.getter(v96);
    v76 = v96[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v96[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v42 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v96[0].tv_sec = v42;

    swift_task_localValuePush();
    v43 = sub_1AB01DBA0(*(v42 + 16));
    swift_task_localValuePop();

    if (v43 && (v44 = swift_conformsToProtocol2()) != 0)
    {
      v45 = *(v44 + 8);

      v45();
      sub_1AB0318FC();
      sub_1AB460184();
      v46 = sub_1AB460154();
      v47 = *(v43 + 48);

      os_unfair_lock_lock((v47 + 20));
      LODWORD(v45) = *(v47 + 16);
      os_unfair_lock_unlock((v47 + 20));

      if (v45 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v46);

      sub_1AB460164();
    }

    else
    {
      v46 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v48 = swift_allocObject();
    *(v48 + 24) = 0;
    v49 = (v48 + 24);
    *(v48 + 16) = 0;
    v96[0].tv_sec = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v50 = v92;
    sub_1AB12C208(v82, v91, *&v94, v101);
    if (v50)
    {
      swift_task_localValuePop();
    }

    else
    {
      v92 = 0;
      v101 = tv_sec;
      if (v46)
      {
        v51 = v87;
        v52 = v88;
        v53 = v89;
        (*(v88 + 104))(v87, *MEMORY[0x1E6977AC8], v89);
        sub_1AB460174();
        (*(v52 + 8))(v51, v53);
      }

      if (v43)
      {
        v95.tv_sec = &type metadata for MetricsPipeline;
        StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
      }

      v54 = v90;
      sub_1AB014AC0(v90, &qword_1EB436830, &qword_1AB4D4568);
      sub_1AB0560F8(v96, v54);
      *(v54 + 193) = 1;
      static MonotonicTime.now.getter(&v95);
      v55 = v95.tv_sec;
      tv_nsec = v95.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v94 = v95.tv_nsec;
        swift_once();
        tv_nsec = v94;
      }

      v57 = tv_nsec / *&qword_1ED4D1F90 + v55 - (v76.tv_nsec / *&qword_1ED4D1F90 + v76.tv_sec);

      v58 = sub_1AB45FFA4();
      v59 = v80;
      sub_1AB45FFF4();
      LODWORD(v94) = sub_1AB461224();

      if (sub_1AB461314())
      {

        v60 = v84;
        sub_1AB460024();

        v62 = v85;
        v61 = v86;
        if ((*(v85 + 88))(v60, v86) == *MEMORY[0x1E69E93E8])
        {
          v63 = 0;
          v90 = "[Error] Interval already ended";
        }

        else
        {
          (*(v62 + 8))(v60, v61);
          v90 = "selfTime=%f";
          v63 = 1;
        }

        v64 = swift_slowAlloc();
        *v64 = 0;
        *(v64 + 1) = v63;
        *(v64 + 2) = 2048;
        os_unfair_lock_lock(v49);
        v65 = *(v48 + 16);
        os_unfair_lock_unlock(v49);
        *(v64 + 4) = v57 - v65;
        v59 = v80;
        v66 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v58, LOBYTE(v94), v66, "MakeDependency", v90, v64, 0xCu);
        MEMORY[0x1AC59F020](v64, -1, -1);
      }

      v77(v59, v81);
      v67 = v101;
      os_unfair_lock_lock(v101 + 6);
      *&v67[4]._os_unfair_lock_opaque = v57 + *&v67[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v67 + 6);
      v68 = v96[11];
      v69 = v79;
      v79[10] = v96[10];
      v69[11] = v68;
      LOBYTE(v69[12].tv_sec) = v97;
      v70 = v96[7];
      v69[6] = v96[6];
      v69[7] = v70;
      v71 = v96[9];
      v69[8] = v96[8];
      v69[9] = v71;
      v72 = v96[3];
      v69[2] = v96[2];
      v69[3] = v72;
      v73 = v96[5];
      v69[4] = v96[4];
      v69[5] = v73;
      v74 = v96[1];
      *v69 = v96[0];
      v69[1] = v74;
      swift_task_localValuePop();
    }
  }
}

void sub_1AB150BCC(uint64_t a1@<X0>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v8 = sub_1AB45FFD4();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v68 = a1;
  sub_1AB014A58(a1, v74, &qword_1EB4367F0, &qword_1AB4D4528);
  if (v75)
  {
    sub_1AB0149B0(v74, v71);
  }

  else
  {
    v58 = v8;
    v63 = v13;
    v76 = v11;
    v20 = *(&v74[0] + 1);
    v65 = *&v74[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1AB45FFC4();
    v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v61 = v22;
    v23 = sub_1AB45FFA4();
    v24 = sub_1AB461234();
    v25 = sub_1AB461314();
    v64 = v10;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      tv_nsec = v20;
      v28 = v27;
      v73[0].tv_sec = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1AB030D2C(0x50746E756F636341, 0xEF72656469766F72, &v73[0].tv_sec);
      v29 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v30 = v28;
      v6 = v5;
      v20 = tv_nsec;
      MEMORY[0x1AC59F020](v30, -1, -1);
      v31 = v26;
      v10 = v64;
      MEMORY[0x1AC59F020](v31, -1, -1);
    }

    v32 = v76;
    (*(v76 + 16))(v16, v19, v10);
    sub_1AB460014();
    swift_allocObject();
    sub_1AB460004();
    v34 = *(v32 + 8);
    v33 = v32 + 8;
    v60 = v34;
    v34(v19, v10);
    static MonotonicTime.now.getter(v73);
    tv_sec = v73[0].tv_sec;
    tv_nsec = v73[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v35 = v73[0].tv_sec;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436578, &qword_1AB4D41D0);
    started = type metadata accessor for StartUpPerformanceEvent();
    v76 = v33;
    if (v36 == started)
    {
      v40 = 0;
    }

    else
    {
      v38 = v6;
      type metadata accessor for BaseObjectGraph();
      v39 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v73[0].tv_sec = v39;

      swift_task_localValuePush();
      v40 = sub_1AB01DBA0(*(v39 + 16));
      swift_task_localValuePop();

      v6 = v38;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    v42 = (v41 + 24);
    *(v41 + 16) = 0;
    v73[0].tv_sec = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    sub_1AB12C208(v65, v20, *&v69, v70);
    if (v6)
    {
      swift_task_localValuePop();
    }

    else
    {
      if (v40)
      {
        v72.tv_sec = v36;
        StartUpPerformanceEvent.record(checkpoint:)(&v72.tv_sec);
      }

      v70 = v40;
      v43 = v68;
      sub_1AB014AC0(v68, &qword_1EB4367F0, &qword_1AB4D4528);
      sub_1AB01494C(v73, v43);
      *(v43 + 40) = 1;
      static MonotonicTime.now.getter(&v72);
      v44 = v72.tv_sec;
      v45 = v72.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v69 = v72.tv_nsec;
        swift_once();
        v45 = v69;
      }

      v46 = v45 / *&qword_1ED4D1F90 + v44 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

      v47 = sub_1AB45FFA4();
      v48 = v63;
      sub_1AB45FFF4();
      LODWORD(v69) = sub_1AB461224();

      if (sub_1AB461314())
      {
        tv_nsec = v20;

        v49 = v66;
        sub_1AB460024();

        v50 = v67;
        v51 = v58;
        v52 = (*(v67 + 88))(v49, v58) == *MEMORY[0x1E69E93E8];
        v65 = 0;
        if (v52)
        {
          v54 = 0;
          v53 = "[Error] Interval already ended";
        }

        else
        {
          (*(v50 + 8))(v49, v51);
          v53 = "selfTime=%f";
          v54 = 1;
        }

        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v55 + 1) = v54;
        *(v55 + 2) = 2048;
        os_unfair_lock_lock(v42);
        v56 = *(v41 + 16);
        os_unfair_lock_unlock(v42);
        *(v55 + 4) = v46 - v56;
        v48 = v63;
        v57 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v47, LOBYTE(v69), v57, "MakeDependency", v53, v55, 0xCu);
        MEMORY[0x1AC59F020](v55, -1, -1);
      }

      v60(v48, v64);
      os_unfair_lock_lock((v35 + 24));
      *(v35 + 16) = v46 + *(v35 + 16);
      os_unfair_lock_unlock((v35 + 24));
      sub_1AB0149B0(&v73[0].tv_sec, v71);
      swift_task_localValuePop();
    }
  }
}

void sub_1AB151428(uint64_t a1@<X0>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v90 = a4;
  v89 = a3;
  v95 = a5;
  v7 = sub_1AB45FFD4();
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1AB460134();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  v86 = a1;
  sub_1AB014A58(a1, v93, &qword_1EB436798, &qword_1AB4D44D0);
  if (v94)
  {
    v20 = v93[5];
    v21 = v95;
    v95[4] = v93[4];
    v21[5] = v20;
    v21[6] = v93[6];
    v22 = v93[1];
    *v21 = v93[0];
    v21[1] = v22;
    v23 = v93[3];
    v21[2] = v93[2];
    v21[3] = v23;
  }

  else
  {
    v78 = v13;
    v88 = v5;
    v87 = *(&v93[0] + 1);
    v79 = *&v93[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v76 = v25;
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v29 = v11;
    v74 = v7;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = v10;
      v32 = swift_slowAlloc();
      v92[0].tv_sec = v32;
      *v30 = 136315138;
      *(v30 + 4) = sub_1AB030D2C(0xD000000000000013, 0x80000001AB4FF220, &v92[0].tv_sec);
      v33 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v33, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      v34 = v32;
      v10 = v31;
      v29 = v11;
      MEMORY[0x1AC59F020](v34, -1, -1);
      MEMORY[0x1AC59F020](v30, -1, -1);
    }

    (*(v29 + 16))(v16, v19, v10);
    sub_1AB460014();
    swift_allocObject();
    v80 = sub_1AB460004();
    v37 = *(v29 + 8);
    v36 = v29 + 8;
    v35 = v37;
    v77 = v10;
    (v37)(v19, v10);
    static MonotonicTime.now.getter(v92);
    v75 = v92[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v92[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v92[0].tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    if (v40 && (v41 = swift_conformsToProtocol2()) != 0)
    {
      v42 = *(v41 + 8);

      v42();
      sub_1AB0318FC();
      sub_1AB460184();
      v43 = sub_1AB460154();
      v44 = *(v40 + 48);

      os_unfair_lock_lock((v44 + 20));
      v45 = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));

      if (v45 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v43);

      sub_1AB460164();
    }

    else
    {
      v43 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v46 = swift_allocObject();
    *(v46 + 24) = 0;
    v47 = (v46 + 24);
    *(v46 + 16) = 0;
    v92[0].tv_sec = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v48 = v88;
    sub_1AB12C208(v79, v87, v89, v90);
    if (v48 == 0.0)
    {
      v79 = v35;
      v89 = tv_sec;
      v49 = v43;
      if (v43)
      {
        v50 = v36;
        v51 = v84;
        v52 = v83;
        v53 = v85;
        (*(v84 + 104))(v83, *MEMORY[0x1E6977AC8], v85);
        sub_1AB460174();
        (*(v51 + 8))(v52, v53);
        v36 = v50;
      }

      v54 = v49;
      if (v40)
      {
        v91.tv_sec = &type metadata for SentryConfiguration;
        StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
      }

      v90 = v36;
      v55 = v86;
      sub_1AB014AC0(v86, &qword_1EB436798, &qword_1AB4D44D0);
      sub_1AB157F64(v92, v55);
      *(v55 + 112) = 1;
      static MonotonicTime.now.getter(&v91);
      v56 = v91.tv_sec;
      tv_nsec = v91.tv_nsec;
      v58 = v89;
      v86 = v54;
      if (qword_1ED4D1F88 != -1)
      {
        v88 = v91.tv_nsec;
        swift_once();
        tv_nsec = v88;
      }

      v59 = tv_nsec / *&qword_1ED4D1F90 + v56 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

      v60 = sub_1AB45FFA4();
      v61 = v78;
      sub_1AB45FFF4();
      LODWORD(v85) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v88 = 0.0;

        v62 = v81;
        sub_1AB460024();

        v63 = v82;
        v64 = v74;
        if ((*(v82 + 88))(v62, v74) == *MEMORY[0x1E69E93E8])
        {
          v65 = 0;
          v66 = "[Error] Interval already ended";
        }

        else
        {
          (*(v63 + 8))(v62, v64);
          v66 = "selfTime=%f";
          v65 = 1;
        }

        v67 = swift_slowAlloc();
        *v67 = 0;
        *(v67 + 1) = v65;
        *(v67 + 2) = 2048;
        os_unfair_lock_lock(v47);
        v68 = *(v46 + 16);
        os_unfair_lock_unlock(v47);
        *(v67 + 4) = v59 - v68;
        v61 = v78;
        v69 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v60, v85, v69, "MakeDependency", v66, v67, 0xCu);
        MEMORY[0x1AC59F020](v67, -1, -1);
      }

      (v79)(v61, v77);
      os_unfair_lock_lock((v58 + 24));
      *(v58 + 16) = v59 + *(v58 + 16);
      os_unfair_lock_unlock((v58 + 24));
      v70 = v92[5];
      v71 = v95;
      v95[4] = v92[4];
      v71[5] = v70;
      v71[6] = v92[6];
      v72 = v92[1];
      *v71 = v92[0];
      v71[1] = v72;
      v73 = v92[3];
      v71[2] = v92[2];
      v71[3] = v73;
      swift_task_localValuePop();
    }

    else
    {
      swift_task_localValuePop();
    }
  }
}

void sub_1AB151F38(uint64_t a1@<X0>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v8 = sub_1AB45FFD4();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v68 = a1;
  sub_1AB014A58(a1, v74, &qword_1EB436770, &qword_1AB4D44A8);
  if (v75)
  {
    sub_1AB0149B0(v74, v71);
  }

  else
  {
    v58 = v8;
    v63 = v13;
    v76 = v11;
    v20 = *(&v74[0] + 1);
    v65 = *&v74[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1AB45FFC4();
    v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v61 = v22;
    v23 = sub_1AB45FFA4();
    v24 = sub_1AB461234();
    v25 = sub_1AB461314();
    v64 = v10;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      tv_nsec = v20;
      v28 = v27;
      v73[0].tv_sec = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1AB030D2C(0x6143746E65746E49, 0xEB00000000656863, &v73[0].tv_sec);
      v29 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v30 = v28;
      v6 = v5;
      v20 = tv_nsec;
      MEMORY[0x1AC59F020](v30, -1, -1);
      v31 = v26;
      v10 = v64;
      MEMORY[0x1AC59F020](v31, -1, -1);
    }

    v32 = v76;
    (*(v76 + 16))(v16, v19, v10);
    sub_1AB460014();
    swift_allocObject();
    sub_1AB460004();
    v34 = *(v32 + 8);
    v33 = v32 + 8;
    v60 = v34;
    v34(v19, v10);
    static MonotonicTime.now.getter(v73);
    tv_sec = v73[0].tv_sec;
    tv_nsec = v73[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v35 = v73[0].tv_sec;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436748, &qword_1AB4D4480);
    started = type metadata accessor for StartUpPerformanceEvent();
    v76 = v33;
    if (v36 == started)
    {
      v40 = 0;
    }

    else
    {
      v38 = v6;
      type metadata accessor for BaseObjectGraph();
      v39 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v73[0].tv_sec = v39;

      swift_task_localValuePush();
      v40 = sub_1AB01DBA0(*(v39 + 16));
      swift_task_localValuePop();

      v6 = v38;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    v42 = (v41 + 24);
    *(v41 + 16) = 0;
    v73[0].tv_sec = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    sub_1AB12C208(v65, v20, *&v69, v70);
    if (v6)
    {
      swift_task_localValuePop();
    }

    else
    {
      if (v40)
      {
        v72.tv_sec = v36;
        StartUpPerformanceEvent.record(checkpoint:)(&v72.tv_sec);
      }

      v70 = v40;
      v43 = v68;
      sub_1AB014AC0(v68, &qword_1EB436770, &qword_1AB4D44A8);
      sub_1AB01494C(v73, v43);
      *(v43 + 40) = 1;
      static MonotonicTime.now.getter(&v72);
      v44 = v72.tv_sec;
      v45 = v72.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v69 = v72.tv_nsec;
        swift_once();
        v45 = v69;
      }

      v46 = v45 / *&qword_1ED4D1F90 + v44 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

      v47 = sub_1AB45FFA4();
      v48 = v63;
      sub_1AB45FFF4();
      LODWORD(v69) = sub_1AB461224();

      if (sub_1AB461314())
      {
        tv_nsec = v20;

        v49 = v66;
        sub_1AB460024();

        v50 = v67;
        v51 = v58;
        v52 = (*(v67 + 88))(v49, v58) == *MEMORY[0x1E69E93E8];
        v65 = 0;
        if (v52)
        {
          v54 = 0;
          v53 = "[Error] Interval already ended";
        }

        else
        {
          (*(v50 + 8))(v49, v51);
          v53 = "selfTime=%f";
          v54 = 1;
        }

        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v55 + 1) = v54;
        *(v55 + 2) = 2048;
        os_unfair_lock_lock(v42);
        v56 = *(v41 + 16);
        os_unfair_lock_unlock(v42);
        *(v55 + 4) = v46 - v56;
        v48 = v63;
        v57 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v47, LOBYTE(v69), v57, "MakeDependency", v53, v55, 0xCu);
        MEMORY[0x1AC59F020](v55, -1, -1);
      }

      v60(v48, v64);
      os_unfair_lock_lock((v35 + 24));
      *(v35 + 16) = v46 + *(v35 + 16);
      os_unfair_lock_unlock((v35 + 24));
      sub_1AB0149B0(&v73[0].tv_sec, v71);
      swift_task_localValuePop();
    }
  }
}

void sub_1AB152790(uint64_t a1@<X0>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v8 = sub_1AB45FFD4();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v68 = a1;
  sub_1AB014A58(a1, v74, &qword_1EB436688, &qword_1AB4D43D0);
  if (v75)
  {
    sub_1AB0149B0(v74, v71);
  }

  else
  {
    v58 = v8;
    v63 = v13;
    v76 = v11;
    v20 = *(&v74[0] + 1);
    v65 = *&v74[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1AB45FFC4();
    v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v61 = v22;
    v23 = sub_1AB45FFA4();
    v24 = sub_1AB461234();
    v25 = sub_1AB461314();
    v64 = v10;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      tv_nsec = v20;
      v28 = v27;
      v73[0].tv_sec = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1AB030D2C(0xD000000000000010, 0x80000001AB4FF070, &v73[0].tv_sec);
      v29 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v30 = v28;
      v6 = v5;
      v20 = tv_nsec;
      MEMORY[0x1AC59F020](v30, -1, -1);
      v31 = v26;
      v10 = v64;
      MEMORY[0x1AC59F020](v31, -1, -1);
    }

    v32 = v76;
    (*(v76 + 16))(v16, v19, v10);
    sub_1AB460014();
    swift_allocObject();
    sub_1AB460004();
    v34 = *(v32 + 8);
    v33 = v32 + 8;
    v60 = v34;
    v34(v19, v10);
    static MonotonicTime.now.getter(v73);
    tv_sec = v73[0].tv_sec;
    tv_nsec = v73[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v35 = v73[0].tv_sec;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660, &qword_1AB4D43A8);
    started = type metadata accessor for StartUpPerformanceEvent();
    v76 = v33;
    if (v36 == started)
    {
      v40 = 0;
    }

    else
    {
      v38 = v6;
      type metadata accessor for BaseObjectGraph();
      v39 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v73[0].tv_sec = v39;

      swift_task_localValuePush();
      v40 = sub_1AB01DBA0(*(v39 + 16));
      swift_task_localValuePop();

      v6 = v38;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    v42 = (v41 + 24);
    *(v41 + 16) = 0;
    v73[0].tv_sec = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    sub_1AB12C208(v65, v20, *&v69, v70);
    if (v6)
    {
      swift_task_localValuePop();
    }

    else
    {
      if (v40)
      {
        v72.tv_sec = v36;
        StartUpPerformanceEvent.record(checkpoint:)(&v72.tv_sec);
      }

      v70 = v40;
      v43 = v68;
      sub_1AB014AC0(v68, &qword_1EB436688, &qword_1AB4D43D0);
      sub_1AB01494C(v73, v43);
      *(v43 + 40) = 1;
      static MonotonicTime.now.getter(&v72);
      v44 = v72.tv_sec;
      v45 = v72.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v69 = v72.tv_nsec;
        swift_once();
        v45 = v69;
      }

      v46 = v45 / *&qword_1ED4D1F90 + v44 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

      v47 = sub_1AB45FFA4();
      v48 = v63;
      sub_1AB45FFF4();
      LODWORD(v69) = sub_1AB461224();

      if (sub_1AB461314())
      {
        tv_nsec = v20;

        v49 = v66;
        sub_1AB460024();

        v50 = v67;
        v51 = v58;
        v52 = (*(v67 + 88))(v49, v58) == *MEMORY[0x1E69E93E8];
        v65 = 0;
        if (v52)
        {
          v54 = 0;
          v53 = "[Error] Interval already ended";
        }

        else
        {
          (*(v50 + 8))(v49, v51);
          v53 = "selfTime=%f";
          v54 = 1;
        }

        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v55 + 1) = v54;
        *(v55 + 2) = 2048;
        os_unfair_lock_lock(v42);
        v56 = *(v41 + 16);
        os_unfair_lock_unlock(v42);
        *(v55 + 4) = v46 - v56;
        v48 = v63;
        v57 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v47, LOBYTE(v69), v57, "MakeDependency", v53, v55, 0xCu);
        MEMORY[0x1AC59F020](v55, -1, -1);
      }

      v60(v48, v64);
      os_unfair_lock_lock((v35 + 24));
      *(v35 + 16) = v46 + *(v35 + 16);
      os_unfair_lock_unlock((v35 + 24));
      sub_1AB0149B0(&v73[0].tv_sec, v71);
      swift_task_localValuePop();
    }
  }
}

void sub_1AB152FE4(uint64_t a1@<X0>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v89 = a4;
  v88 = a3;
  v94 = a5;
  v7 = sub_1AB45FFD4();
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1AB460134();
  isa = v83[-1].isa;
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  v85 = a1;
  sub_1AB014A58(a1, v92, &qword_1EB436728, &qword_1AB4D4460);
  if (v93)
  {
    v20 = v92[3];
    v21 = v94;
    v94[2] = v92[2];
    v21[3] = v20;
    v21[4] = v92[4];
    v22 = v92[1];
    *v21 = v92[0];
    v21[1] = v22;
  }

  else
  {
    v77 = v13;
    v87 = v5;
    v86 = *(&v92[0] + 1);
    v78 = *&v92[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1AB45FFC4();
    v24 = __swift_project_value_buffer(v23, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v75 = v24;
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v73 = v7;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = v11;
      v30 = v10;
      v31 = swift_slowAlloc();
      v91[0].tv_sec = v31;
      *v28 = 136315138;
      *(v28 + 4) = sub_1AB030D2C(0x72756769666E6F43, 0xED00006E6F697461, &v91[0].tv_sec);
      v32 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v33 = v31;
      v10 = v30;
      v11 = v29;
      MEMORY[0x1AC59F020](v33, -1, -1);
      MEMORY[0x1AC59F020](v28, -1, -1);
    }

    (*(v11 + 16))(v16, v19, v10);
    sub_1AB460014();
    swift_allocObject();
    v34 = sub_1AB460004();
    v37 = *(v11 + 8);
    v36 = v11 + 8;
    v35 = v37;
    v76 = v10;
    (v37)(v19, v10);
    static MonotonicTime.now.getter(v91);
    v74 = v91[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v91[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v91[0].tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    if (v40 && (v41 = swift_conformsToProtocol2()) != 0)
    {
      v42 = *(v41 + 8);

      v42();
      sub_1AB0318FC();
      sub_1AB460184();
      v43 = sub_1AB460154();
      v44 = *(v40 + 48);

      os_unfair_lock_lock((v44 + 20));
      v45 = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));

      if (v45 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v43);

      sub_1AB460164();
      v84 = v43;
    }

    else
    {
      v84 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v46 = swift_allocObject();
    *(v46 + 24) = 0;
    v47 = (v46 + 24);
    *(v46 + 16) = 0;
    v91[0].tv_sec = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v48 = v87;
    sub_1AB12C208(v78, v86, v88, v89);
    if (v48 == 0.0)
    {
      v78 = v35;
      v88 = tv_sec;
      if (v84)
      {
        v49 = *MEMORY[0x1E6977AC8];
        v89 = v34;
        v50 = isa;
        v51 = v81;
        v52 = v83;
        (*(isa + 13))(v81, v49, v83);
        sub_1AB460174();
        (*(v50 + 1))(v51, v52);
      }

      if (v40)
      {
        v90.tv_sec = &type metadata for JetPackAssetSession.Configuration;
        StartUpPerformanceEvent.record(checkpoint:)(&v90.tv_sec);
      }

      v89 = v36;
      v53 = v85;
      sub_1AB014AC0(v85, &qword_1EB436728, &qword_1AB4D4460);
      sub_1AB0261D0(v91, v53);
      *(v53 + 80) = 1;
      static MonotonicTime.now.getter(&v90);
      v54 = v90.tv_sec;
      tv_nsec = v90.tv_nsec;
      v56 = v88;
      if (qword_1ED4D1F88 != -1)
      {
        v87 = v90.tv_nsec;
        swift_once();
        tv_nsec = v87;
      }

      v57 = tv_nsec / *&qword_1ED4D1F90 + v54 - (v74.tv_nsec / *&qword_1ED4D1F90 + v74.tv_sec);

      v58 = sub_1AB45FFA4();
      v59 = v77;
      sub_1AB45FFF4();
      LODWORD(v85) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v83 = v58;
        v87 = 0.0;

        v60 = v79;
        sub_1AB460024();

        v61 = v80;
        v62 = v73;
        if ((*(v80 + 88))(v60, v73) == *MEMORY[0x1E69E93E8])
        {
          v63 = 0;
          v64 = "[Error] Interval already ended";
        }

        else
        {
          (*(v61 + 8))(v60, v62);
          v64 = "selfTime=%f";
          v63 = 1;
        }

        v65 = swift_slowAlloc();
        *v65 = 0;
        *(v65 + 1) = v63;
        *(v65 + 2) = 2048;
        os_unfair_lock_lock(v47);
        v66 = *(v46 + 16);
        os_unfair_lock_unlock(v47);
        *(v65 + 4) = v57 - v66;
        v59 = v77;
        v67 = sub_1AB45FF64();
        v68 = v83;
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v83, v85, v67, "MakeDependency", v64, v65, 0xCu);
        v69 = v65;
        v58 = v68;
        MEMORY[0x1AC59F020](v69, -1, -1);
      }

      (v78)(v59, v76);
      os_unfair_lock_lock((v56 + 24));
      *(v56 + 16) = v57 + *(v56 + 16);
      os_unfair_lock_unlock((v56 + 24));
      v70 = v91[3];
      v71 = v94;
      v94[2] = v91[2];
      v71[3] = v70;
      v71[4] = v91[4];
      v72 = v91[1];
      *v71 = v91[0];
      v71[1] = v72;
      swift_task_localValuePop();
    }

    else
    {
      swift_task_localValuePop();
    }
  }
}

void sub_1AB153AD0(uint64_t a1@<X0>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v8 = sub_1AB45FFD4();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v68 = a1;
  sub_1AB014A58(a1, v74, &qword_1EB436740, &qword_1AB4D4478);
  if (v75)
  {
    sub_1AB0149B0(v74, v71);
  }

  else
  {
    v58 = v8;
    v63 = v13;
    v76 = v11;
    v20 = *(&v74[0] + 1);
    v65 = *&v74[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1AB45FFC4();
    v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v61 = v22;
    v23 = sub_1AB45FFA4();
    v24 = sub_1AB461234();
    v25 = sub_1AB461314();
    v64 = v10;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      tv_nsec = v20;
      v28 = v27;
      v73[0].tv_sec = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1AB030D2C(0xD000000000000011, 0x80000001AB4FF200, &v73[0].tv_sec);
      v29 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v30 = v28;
      v6 = v5;
      v20 = tv_nsec;
      MEMORY[0x1AC59F020](v30, -1, -1);
      v31 = v26;
      v10 = v64;
      MEMORY[0x1AC59F020](v31, -1, -1);
    }

    v32 = v76;
    (*(v76 + 16))(v16, v19, v10);
    sub_1AB460014();
    swift_allocObject();
    sub_1AB460004();
    v34 = *(v32 + 8);
    v33 = v32 + 8;
    v60 = v34;
    v34(v19, v10);
    static MonotonicTime.now.getter(v73);
    tv_sec = v73[0].tv_sec;
    tv_nsec = v73[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v35 = v73[0].tv_sec;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436730, &qword_1AB4D4468);
    started = type metadata accessor for StartUpPerformanceEvent();
    v76 = v33;
    if (v36 == started)
    {
      v40 = 0;
    }

    else
    {
      v38 = v6;
      type metadata accessor for BaseObjectGraph();
      v39 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v73[0].tv_sec = v39;

      swift_task_localValuePush();
      v40 = sub_1AB01DBA0(*(v39 + 16));
      swift_task_localValuePop();

      v6 = v38;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    v42 = (v41 + 24);
    *(v41 + 16) = 0;
    v73[0].tv_sec = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    sub_1AB12C208(v65, v20, *&v69, v70);
    if (v6)
    {
      swift_task_localValuePop();
    }

    else
    {
      if (v40)
      {
        v72.tv_sec = v36;
        StartUpPerformanceEvent.record(checkpoint:)(&v72.tv_sec);
      }

      v70 = v40;
      v43 = v68;
      sub_1AB014AC0(v68, &qword_1EB436740, &qword_1AB4D4478);
      sub_1AB01494C(v73, v43);
      *(v43 + 40) = 1;
      static MonotonicTime.now.getter(&v72);
      v44 = v72.tv_sec;
      v45 = v72.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v69 = v72.tv_nsec;
        swift_once();
        v45 = v69;
      }

      v46 = v45 / *&qword_1ED4D1F90 + v44 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

      v47 = sub_1AB45FFA4();
      v48 = v63;
      sub_1AB45FFF4();
      LODWORD(v69) = sub_1AB461224();

      if (sub_1AB461314())
      {
        tv_nsec = v20;

        v49 = v66;
        sub_1AB460024();

        v50 = v67;
        v51 = v58;
        v52 = (*(v67 + 88))(v49, v58) == *MEMORY[0x1E69E93E8];
        v65 = 0;
        if (v52)
        {
          v54 = 0;
          v53 = "[Error] Interval already ended";
        }

        else
        {
          (*(v50 + 8))(v49, v51);
          v53 = "selfTime=%f";
          v54 = 1;
        }

        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v55 + 1) = v54;
        *(v55 + 2) = 2048;
        os_unfair_lock_lock(v42);
        v56 = *(v41 + 16);
        os_unfair_lock_unlock(v42);
        *(v55 + 4) = v46 - v56;
        v48 = v63;
        v57 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v47, LOBYTE(v69), v57, "MakeDependency", v53, v55, 0xCu);
        MEMORY[0x1AC59F020](v55, -1, -1);
      }

      v60(v48, v64);
      os_unfair_lock_lock((v35 + 24));
      *(v35 + 16) = v46 + *(v35 + 16);
      os_unfair_lock_unlock((v35 + 24));
      sub_1AB0149B0(&v73[0].tv_sec, v71);
      swift_task_localValuePop();
    }
  }
}

__darwin_time_t *sub_1AB154324(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v95 = *&a4;
  v93 = a3;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v76 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v76 = v7;
  v77 = v6;
  v81 = v17;
  v91 = v20;
  v92 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v79 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v90 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v88 = v12;
    v30 = v29;
    v31 = swift_slowAlloc();
    v94.tv_sec = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1AB030D2C(0xD000000000000013, 0x80000001AB4FF1E0, &v94.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1AC59F020](v31, -1, -1);
    v33 = v30;
    v12 = v88;
    MEMORY[0x1AC59F020](v33, -1, -1);
  }

  (*(v12 + 2))(v15, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v37 = *(v12 + 1);
  v36 = v12 + 8;
  v35 = v37;
  (v37)(v19, v11);
  static MonotonicTime.now.getter(&v94);
  v78 = v94;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB46C208;
  sub_1AB4622E4();
  tv_sec = v94.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v38 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v94.tv_sec = v38;

  swift_task_localValuePush();
  v39 = sub_1AB01DBA0(*(v38 + 16));
  swift_task_localValuePop();

  if (v39)
  {
    v40 = type metadata accessor for JetPackAssetSession();
    v41 = swift_conformsToProtocol2();
    v89 = 0;
    if (v41 && v40)
    {
      v88 = v35;
      v42 = *(v41 + 8);
      v43 = v41;

      v42(v40, v43);
      sub_1AB0318FC();
      sub_1AB460184();
      v44 = sub_1AB460154();
      v45 = *(v39 + 48);

      os_unfair_lock_lock((v45 + 20));
      v46 = *(v45 + 16);
      os_unfair_lock_unlock((v45 + 20));

      if (v46 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v44);

      sub_1AB460164();
      v89 = v44;

      v35 = v88;
    }
  }

  else
  {
    v89 = 0;
  }

  v83 = v34;
  v88 = v36;
  v80 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v48 = (v47 + 24);
  *(v47 + 16) = 0;
  v94.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
  swift_task_localValuePush();
  v49 = v90;
  v50 = v91;
  v51 = v92;
  v52 = sub_1AB12C354(v91, v90, v93, *&v95);
  if (v51)
  {
    swift_task_localValuePop();

    sub_1AB057304(v50, v49, 0);
  }

  else
  {
    v21 = v52;
    v92 = 0;
    if (v89)
    {
      v53 = *MEMORY[0x1E6977AC8];
      v55 = v86;
      v54 = v87;
      v56 = *(v86 + 104);
      *&v95 = v47 + 24;
      v57 = v39;
      v58 = v35;
      v59 = v85;
      v56(v85, v53, v87);
      sub_1AB460174();
      v60 = v59;
      v35 = v58;
      v39 = v57;
      v48 = *&v95;
      (*(v55 + 8))(v60, v54);
    }

    v61 = v90;
    if (v39)
    {
      v94.tv_sec = *v21;
      StartUpPerformanceEvent.record(checkpoint:)(&v94.tv_sec);
    }

    sub_1AB057304(v91, v61, 0);
    *a1 = v21;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v94);
    v62 = v94.tv_sec;
    tv_nsec = v94.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v95 = v94.tv_nsec;
      swift_once();
      tv_nsec = v95;
    }

    v64 = tv_nsec / *&qword_1ED4D1F90 + v62 - (v78.tv_nsec / *&qword_1ED4D1F90 + v78.tv_sec);

    v65 = sub_1AB45FFA4();
    v66 = v81;
    sub_1AB45FFF4();
    LODWORD(v95) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v67 = v84;
      sub_1AB460024();

      v68 = v76;
      v69 = v77;
      if ((*(v76 + 88))(v67, v77) == *MEMORY[0x1E69E93E8])
      {
        v70 = 0;
        v93 = "[Error] Interval already ended";
      }

      else
      {
        (*(v68 + 8))(v67, v69);
        v93 = "selfTime=%f";
        v70 = 1;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      *(v71 + 1) = v70;
      *(v71 + 2) = 2048;
      os_unfair_lock_lock(v48);
      v72 = *(v47 + 16);
      os_unfair_lock_unlock(v48);
      *(v71 + 4) = v64 - v72;
      v66 = v81;
      v73 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v65, LOBYTE(v95), v73, "MakeDependency", v93, v71, 0xCu);
      MEMORY[0x1AC59F020](v71, -1, -1);
    }

    (v35)(v66, v80);
    v74 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v74[4]._os_unfair_lock_opaque = v64 + *&v74[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v74 + 6);
    swift_task_localValuePop();

    sub_1AB057304(v91, v90, 0);
  }

  return v21;
}

void sub_1AB154CF4(uint64_t a1@<X0>, uint64_t a2@<X1>, __darwin_time_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a3;
  v86 = a4;
  v84 = a2;
  v8 = sub_1AB45FFD4();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for JetPackAsset(0);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1AB45FF84();
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366E8, &qword_1AB4D4420);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v81 = a1;
  sub_1AB014A58(a1, &v71 - v21, &qword_1EB4366E8, &qword_1AB4D4420);
  v80 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AB0342CC(v22, a5, type metadata accessor for JetPackAsset);
  }

  else
  {
    v72 = a5;
    v23 = *(v22 + 1);
    v73 = *v22;
    v82 = v23;
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v90 = v5;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v91.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1AB030D2C(0x416B63615074654ALL, 0xEC00000074657373, &v91.tv_sec);
      v30 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v30, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1AC59F020](v29, -1, -1);
      MEMORY[0x1AC59F020](v28, -1, -1);
    }

    v31 = v92;
    v32 = v88;
    (*(v92 + 16))(v16, v19, v88);
    sub_1AB460014();
    swift_allocObject();
    v84 = sub_1AB460004();
    v33 = *(v31 + 8);
    v92 = v31 + 8;
    (*&v33)(v19, v32);
    static MonotonicTime.now.getter(&v91);
    v71 = v91;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v91.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v35 = static BaseObjectGraph.current.getter();
    v36 = v87;
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v91.tv_sec = v35;

    swift_task_localValuePush();
    v37 = sub_1AB01DBA0(*(v35 + 16));
    swift_task_localValuePop();

    if (v37 && (v38 = swift_conformsToProtocol2()) != 0)
    {
      v39 = *(v38 + 8);
      v40 = v38;

      v39(v36, v40);
      sub_1AB0318FC();
      sub_1AB460184();
      v41 = sub_1AB460154();
      v42 = *(v37 + 48);

      os_unfair_lock_lock((v42 + 20));
      v43 = *(v42 + 16);
      os_unfair_lock_unlock((v42 + 20));

      if (v43 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v41);

      v44 = v41;
      sub_1AB460164();
    }

    else
    {
      v44 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    v46 = (v45 + 24);
    *(v45 + 16) = 0;
    v91.tv_sec = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v47 = v90;
    sub_1AB12C208(v73, v82, v85, *&v86);
    v90 = v47;
    if (v47)
    {
      swift_task_localValuePop();
    }

    else
    {
      if (v44)
      {
        v48 = *MEMORY[0x1E6977AC8];
        v86 = v33;
        v50 = v77;
        v49 = v78;
        v51 = v79;
        (*(v78 + 104))(v77, v48, v79);
        sub_1AB460174();
        v52 = v51;
        v36 = v87;
        (*(v49 + 8))(v50, v52);
        v33 = v86;
      }

      v87 = v44;
      if (v37)
      {
        v91.tv_sec = v36;
        StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
      }

      v53 = v81;
      sub_1AB014AC0(v81, &qword_1EB4366E8, &qword_1AB4D4420);
      sub_1AB03AB54(v89, v53, type metadata accessor for JetPackAsset);
      swift_storeEnumTagMultiPayload();
      static MonotonicTime.now.getter(&v91);
      v54 = v91.tv_sec;
      tv_nsec = v91.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v86 = v91.tv_nsec;
        swift_once();
        tv_nsec = v86;
      }

      v56 = tv_nsec / *&qword_1ED4D1F90 + v54 - (v71.tv_nsec / *&qword_1ED4D1F90 + v71.tv_sec);

      v57 = sub_1AB45FFA4();
      v58 = v83;
      sub_1AB45FFF4();
      LODWORD(v86) = sub_1AB461224();

      v59 = sub_1AB461314();
      v60 = v72;
      if (v59)
      {
        v85 = tv_sec;

        v61 = v74;
        sub_1AB460024();

        v63 = v75;
        v62 = v76;
        if ((*(v75 + 88))(v61, v76) == *MEMORY[0x1E69E93E8])
        {
          v64 = 0;
          v65 = "[Error] Interval already ended";
        }

        else
        {
          (*(v63 + 8))(v61, v62);
          v65 = "selfTime=%f";
          v64 = 1;
        }

        v66 = swift_slowAlloc();
        *v66 = 0;
        *(v66 + 1) = v64;
        *(v66 + 2) = 2048;
        os_unfair_lock_lock(v46);
        v67 = *(v45 + 16);
        os_unfair_lock_unlock(v46);
        *(v66 + 4) = v56 - v67;
        v68 = v83;
        v69 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v57, LOBYTE(v86), v69, "MakeDependency", v65, v66, 0xCu);
        v70 = v66;
        v58 = v68;
        MEMORY[0x1AC59F020](v70, -1, -1);
        v60 = v72;
        tv_sec = v85;
      }

      (*&v33)(v58, v88);
      os_unfair_lock_lock((tv_sec + 24));
      *(tv_sec + 16) = v56 + *(tv_sec + 16);
      os_unfair_lock_unlock((tv_sec + 24));
      sub_1AB0342CC(v89, v60, type metadata accessor for JetPackAsset);
      swift_task_localValuePop();
    }
  }
}

void sub_1AB1557A4(uint64_t a1@<X0>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v86 = a3;
  v87 = a4;
  v94 = a5;
  v7 = sub_1AB45FFD4();
  v78 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1AB460134();
  isa = v81[-1].isa;
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v83 = a1;
  sub_1AB014A58(a1, v91, &qword_1EB436708, &qword_1AB4D4440);
  if (v93)
  {
    v20 = v91[1];
    v21 = v94;
    *v94 = v91[0];
    v21[1] = v20;
    v21[2] = v91[2];
    *(v21 + 6) = v92;
  }

  else
  {
    v75 = v13;
    v85 = v5;
    v84 = *(&v91[0] + 1);
    v76 = *&v91[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v22 = sub_1AB45FFC4();
    v23 = __swift_project_value_buffer(v22, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v73 = v23;
    v24 = sub_1AB45FFA4();
    v25 = sub_1AB461234();
    v26 = sub_1AB461314();
    v71 = v7;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = v11;
      v29 = v10;
      v30 = swift_slowAlloc();
      v89[0].tv_sec = v30;
      *v27 = 136315138;
      *(v27 + 4) = sub_1AB030D2C(0xD000000000000011, 0x80000001AB4FF180, &v89[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v31, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v10 = v29;
      v11 = v28;
      MEMORY[0x1AC59F020](v32, -1, -1);
      MEMORY[0x1AC59F020](v27, -1, -1);
    }

    (*(v11 + 16))(v16, v19, v10);
    sub_1AB460014();
    swift_allocObject();
    v33 = sub_1AB460004();
    v36 = *(v11 + 8);
    v35 = v11 + 8;
    v34 = v36;
    v74 = v10;
    (v36)(v19, v10);
    static MonotonicTime.now.getter(v89);
    v72 = v89[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v89[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v38 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v89[0].tv_sec = v38;

    swift_task_localValuePush();
    v39 = sub_1AB01DBA0(*(v38 + 16));
    swift_task_localValuePop();

    if (v39 && (v40 = swift_conformsToProtocol2()) != 0)
    {
      v41 = *(v40 + 8);

      v41();
      sub_1AB0318FC();
      sub_1AB460184();
      v42 = sub_1AB460154();
      v43 = *(v39 + 48);

      os_unfair_lock_lock((v43 + 20));
      v44 = *(v43 + 16);
      os_unfair_lock_unlock((v43 + 20));

      if (v44 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v42);

      sub_1AB460164();
      v82 = v42;
    }

    else
    {
      v82 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    v46 = (v45 + 24);
    *(v45 + 16) = 0;
    v89[0].tv_sec = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v47 = v85;
    sub_1AB12C208(v76, v84, v86, v87);
    if (v47 == 0.0)
    {
      v76 = v34;
      v86 = tv_sec;
      if (v82)
      {
        v48 = *MEMORY[0x1E6977AC8];
        v87 = v33;
        v49 = isa;
        v50 = v79;
        v51 = v81;
        (*(isa + 13))(v79, v48, v81);
        sub_1AB460174();
        (*(v49 + 1))(v50, v51);
      }

      if (v39)
      {
        v88.tv_sec = &type metadata for DiskJetPackLoader;
        StartUpPerformanceEvent.record(checkpoint:)(&v88.tv_sec);
      }

      v87 = v35;
      v52 = v83;
      sub_1AB014AC0(v83, &qword_1EB436708, &qword_1AB4D4440);
      sub_1AB03FFF8(v89, v52);
      *(v52 + 56) = 1;
      static MonotonicTime.now.getter(&v88);
      v53 = v88.tv_sec;
      tv_nsec = v88.tv_nsec;
      v55 = v86;
      if (qword_1ED4D1F88 != -1)
      {
        v85 = v88.tv_nsec;
        swift_once();
        tv_nsec = v85;
      }

      v56 = tv_nsec / *&qword_1ED4D1F90 + v53 - (v72.tv_nsec / *&qword_1ED4D1F90 + v72.tv_sec);

      v57 = sub_1AB45FFA4();
      v58 = v75;
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v81 = v57;
        v85 = 0.0;

        v59 = v77;
        sub_1AB460024();

        v60 = v78;
        v61 = v71;
        if ((*(v78 + 88))(v59, v71) == *MEMORY[0x1E69E93E8])
        {
          v62 = 0;
          v63 = "[Error] Interval already ended";
        }

        else
        {
          (*(v60 + 8))(v59, v61);
          v63 = "selfTime=%f";
          v62 = 1;
        }

        v64 = swift_slowAlloc();
        *v64 = 0;
        *(v64 + 1) = v62;
        *(v64 + 2) = 2048;
        os_unfair_lock_lock(v46);
        v65 = *(v45 + 16);
        os_unfair_lock_unlock(v46);
        *(v64 + 4) = v56 - v65;
        v58 = v75;
        v66 = sub_1AB45FF64();
        v67 = v81;
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v81, v83, v66, "MakeDependency", v63, v64, 0xCu);
        v68 = v64;
        v57 = v67;
        MEMORY[0x1AC59F020](v68, -1, -1);
      }

      (v76)(v58, v74);
      os_unfair_lock_lock((v55 + 24));
      *(v55 + 16) = v56 + *(v55 + 16);
      os_unfair_lock_unlock((v55 + 24));
      v69 = v89[1];
      v70 = v94;
      *v94 = v89[0];
      v70[1] = v69;
      v70[2] = v89[2];
      v70[3].tv_sec = v90;
      swift_task_localValuePop();
    }

    else
    {
      swift_task_localValuePop();
    }
  }
}

void sub_1AB156228(uint64_t a1@<X0>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v86 = a3;
  v87 = a4;
  v94 = a5;
  v7 = sub_1AB45FFD4();
  v78 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1AB460134();
  isa = v81[-1].isa;
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v83 = a1;
  sub_1AB014A58(a1, v91, &qword_1EB4366F8, &qword_1AB4D4430);
  if (v93)
  {
    v20 = v91[1];
    v21 = v94;
    *v94 = v91[0];
    v21[1] = v20;
    v21[2] = v91[2];
    *(v21 + 6) = v92;
  }

  else
  {
    v75 = v13;
    v85 = v5;
    v84 = *(&v91[0] + 1);
    v76 = *&v91[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v22 = sub_1AB45FFC4();
    v23 = __swift_project_value_buffer(v22, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v73 = v23;
    v24 = sub_1AB45FFA4();
    v25 = sub_1AB461234();
    v26 = sub_1AB461314();
    v71 = v7;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = v11;
      v29 = v10;
      v30 = swift_slowAlloc();
      v89[0].tv_sec = v30;
      *v27 = 136315138;
      *(v27 + 4) = sub_1AB030D2C(0xD000000000000015, 0x80000001AB4FF160, &v89[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v31, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v10 = v29;
      v11 = v28;
      MEMORY[0x1AC59F020](v32, -1, -1);
      MEMORY[0x1AC59F020](v27, -1, -1);
    }

    (*(v11 + 16))(v16, v19, v10);
    sub_1AB460014();
    swift_allocObject();
    v33 = sub_1AB460004();
    v36 = *(v11 + 8);
    v35 = v11 + 8;
    v34 = v36;
    v74 = v10;
    (v36)(v19, v10);
    static MonotonicTime.now.getter(v89);
    v72 = v89[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v89[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v38 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v89[0].tv_sec = v38;

    swift_task_localValuePush();
    v39 = sub_1AB01DBA0(*(v38 + 16));
    swift_task_localValuePop();

    if (v39 && (v40 = swift_conformsToProtocol2()) != 0)
    {
      v41 = *(v40 + 8);

      v41();
      sub_1AB0318FC();
      sub_1AB460184();
      v42 = sub_1AB460154();
      v43 = *(v39 + 48);

      os_unfair_lock_lock((v43 + 20));
      v44 = *(v43 + 16);
      os_unfair_lock_unlock((v43 + 20));

      if (v44 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v42);

      sub_1AB460164();
      v82 = v42;
    }

    else
    {
      v82 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    v46 = (v45 + 24);
    *(v45 + 16) = 0;
    v89[0].tv_sec = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
    swift_task_localValuePush();
    v47 = v85;
    sub_1AB12C208(v76, v84, v86, v87);
    if (v47 == 0.0)
    {
      v76 = v34;
      v86 = tv_sec;
      if (v82)
      {
        v48 = *MEMORY[0x1E6977AC8];
        v87 = v33;
        v49 = isa;
        v50 = v79;
        v51 = v81;
        (*(isa + 13))(v79, v48, v81);
        sub_1AB460174();
        (*(v49 + 1))(v50, v51);
      }

      if (v39)
      {
        v88.tv_sec = &type metadata for InMemoryJetPackLoader;
        StartUpPerformanceEvent.record(checkpoint:)(&v88.tv_sec);
      }

      v87 = v35;
      v52 = v83;
      sub_1AB014AC0(v83, &qword_1EB4366F8, &qword_1AB4D4430);
      sub_1AB019BC0(v89, v52);
      *(v52 + 56) = 1;
      static MonotonicTime.now.getter(&v88);
      v53 = v88.tv_sec;
      tv_nsec = v88.tv_nsec;
      v55 = v86;
      if (qword_1ED4D1F88 != -1)
      {
        v85 = v88.tv_nsec;
        swift_once();
        tv_nsec = v85;
      }

      v56 = tv_nsec / *&qword_1ED4D1F90 + v53 - (v72.tv_nsec / *&qword_1ED4D1F90 + v72.tv_sec);

      v57 = sub_1AB45FFA4();
      v58 = v75;
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v81 = v57;
        v85 = 0.0;

        v59 = v77;
        sub_1AB460024();

        v60 = v78;
        v61 = v71;
        if ((*(v78 + 88))(v59, v71) == *MEMORY[0x1E69E93E8])
        {
          v62 = 0;
          v63 = "[Error] Interval already ended";
        }

        else
        {
          (*(v60 + 8))(v59, v61);
          v63 = "selfTime=%f";
          v62 = 1;
        }

        v64 = swift_slowAlloc();
        *v64 = 0;
        *(v64 + 1) = v62;
        *(v64 + 2) = 2048;
        os_unfair_lock_lock(v46);
        v65 = *(v45 + 16);
        os_unfair_lock_unlock(v46);
        *(v64 + 4) = v56 - v65;
        v58 = v75;
        v66 = sub_1AB45FF64();
        v67 = v81;
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v81, v83, v66, "MakeDependency", v63, v64, 0xCu);
        v68 = v64;
        v57 = v67;
        MEMORY[0x1AC59F020](v68, -1, -1);
      }

      (v76)(v58, v74);
      os_unfair_lock_lock((v55 + 24));
      *(v55 + 16) = v56 + *(v55 + 16);
      os_unfair_lock_unlock((v55 + 24));
      v69 = v89[1];
      v70 = v94;
      *v94 = v89[0];
      v70[1] = v69;
      v70[2] = v89[2];
      v70[3].tv_sec = v90;
      swift_task_localValuePop();
    }

    else
    {
      swift_task_localValuePop();
    }
  }
}

__darwin_time_t *sub_1AB156CAC(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v95 = *&a4;
  v93 = a3;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v76 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v76 = v7;
  v77 = v6;
  v81 = v17;
  v91 = v20;
  v92 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v79 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v90 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v88 = v12;
    v30 = v29;
    v31 = swift_slowAlloc();
    v94.tv_sec = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1AB030D2C(0xD00000000000001ALL, 0x80000001AB4FF010, &v94.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1AC59F020](v31, -1, -1);
    v33 = v30;
    v12 = v88;
    MEMORY[0x1AC59F020](v33, -1, -1);
  }

  (*(v12 + 2))(v15, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v37 = *(v12 + 1);
  v36 = v12 + 8;
  v35 = v37;
  (v37)(v19, v11);
  static MonotonicTime.now.getter(&v94);
  v78 = v94;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB46C208;
  sub_1AB4622E4();
  tv_sec = v94.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v38 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v94.tv_sec = v38;

  swift_task_localValuePush();
  v39 = sub_1AB01DBA0(*(v38 + 16));
  swift_task_localValuePop();

  if (v39)
  {
    v40 = type metadata accessor for PageRenderMetricsPresenter();
    v41 = swift_conformsToProtocol2();
    v89 = 0;
    if (v41 && v40)
    {
      v88 = v35;
      v42 = *(v41 + 8);
      v43 = v41;

      v42(v40, v43);
      sub_1AB0318FC();
      sub_1AB460184();
      v44 = sub_1AB460154();
      v45 = *(v39 + 48);

      os_unfair_lock_lock((v45 + 20));
      v46 = *(v45 + 16);
      os_unfair_lock_unlock((v45 + 20));

      if (v46 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v44);

      sub_1AB460164();
      v89 = v44;

      v35 = v88;
    }
  }

  else
  {
    v89 = 0;
  }

  v83 = v34;
  v88 = v36;
  v80 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v48 = (v47 + 24);
  *(v47 + 16) = 0;
  v94.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
  swift_task_localValuePush();
  v49 = v90;
  v50 = v91;
  v51 = v92;
  v52 = sub_1AB12C354(v91, v90, v93, *&v95);
  if (v51)
  {
    swift_task_localValuePop();

    sub_1AB057304(v50, v49, 0);
  }

  else
  {
    v21 = v52;
    v92 = 0;
    if (v89)
    {
      v53 = *MEMORY[0x1E6977AC8];
      v55 = v86;
      v54 = v87;
      v56 = *(v86 + 104);
      *&v95 = v47 + 24;
      v57 = v39;
      v58 = v35;
      v59 = v85;
      v56(v85, v53, v87);
      sub_1AB460174();
      v60 = v59;
      v35 = v58;
      v39 = v57;
      v48 = *&v95;
      (*(v55 + 8))(v60, v54);
    }

    v61 = v90;
    if (v39)
    {
      v94.tv_sec = *v21;
      StartUpPerformanceEvent.record(checkpoint:)(&v94.tv_sec);
    }

    sub_1AB057304(v91, v61, 0);
    *a1 = v21;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v94);
    v62 = v94.tv_sec;
    tv_nsec = v94.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v95 = v94.tv_nsec;
      swift_once();
      tv_nsec = v95;
    }

    v64 = tv_nsec / *&qword_1ED4D1F90 + v62 - (v78.tv_nsec / *&qword_1ED4D1F90 + v78.tv_sec);

    v65 = sub_1AB45FFA4();
    v66 = v81;
    sub_1AB45FFF4();
    LODWORD(v95) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v67 = v84;
      sub_1AB460024();

      v68 = v76;
      v69 = v77;
      if ((*(v76 + 88))(v67, v77) == *MEMORY[0x1E69E93E8])
      {
        v70 = 0;
        v93 = "[Error] Interval already ended";
      }

      else
      {
        (*(v68 + 8))(v67, v69);
        v93 = "selfTime=%f";
        v70 = 1;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      *(v71 + 1) = v70;
      *(v71 + 2) = 2048;
      os_unfair_lock_lock(v48);
      v72 = *(v47 + 16);
      os_unfair_lock_unlock(v48);
      *(v71 + 4) = v64 - v72;
      v66 = v81;
      v73 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v65, LOBYTE(v95), v73, "MakeDependency", v93, v71, 0xCu);
      MEMORY[0x1AC59F020](v71, -1, -1);
    }

    (v35)(v66, v80);
    v74 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v74[4]._os_unfair_lock_opaque = v64 + *&v74[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v74 + 6);
    swift_task_localValuePop();

    sub_1AB057304(v91, v90, 0);
  }

  return v21;
}

void *(*sub_1AB15767C(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4))(char **__return_ptr, uint64_t)
{
  v87 = *&a4;
  v85 = a3;
  v6 = sub_1AB45FFD4();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v78 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45FF84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v69 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v69 - v15;
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  if (*(a1 + 17))
  {
    return *a1;
  }

  v74 = v14;
  v82 = v19;
  v83 = v17;
  v84 = v4;
  v21 = qword_1EB434BA8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1AB45FFC4();
  v23 = __swift_project_value_buffer(v22, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v73 = v23;
  v24 = sub_1AB45FFA4();
  v25 = sub_1AB461234();
  v26 = sub_1AB461314();
  v75 = v8;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v81 = v9;
    v28 = v27;
    v29 = v18;
    v30 = swift_slowAlloc();
    v86.tv_sec = v30;
    *v28 = 136315138;
    *(v28 + 4) = sub_1AB030D2C(0xD000000000000038, 0x80000001AB4FEFD0, &v86.tv_sec);
    v31 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v31, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v32 = v30;
    v18 = v29;
    v8 = v75;
    MEMORY[0x1AC59F020](v32, -1, -1);
    v33 = v28;
    v9 = v81;
    MEMORY[0x1AC59F020](v33, -1, -1);
  }

  (*(v9 + 16))(v12, v16, v8);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v36 = *(v9 + 8);
  v35 = v9 + 8;
  v72 = v36;
  v36(v16, v8);
  static MonotonicTime.now.getter(&v86);
  v71 = v86;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v77 = v34;
  v81 = v35;
  sub_1AB4622E4();
  tv_sec = v86.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v37 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v86.tv_sec = v37;

  swift_task_localValuePush();
  v20 = sub_1AB01DBA0(*(v37 + 16));
  swift_task_localValuePop();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  v39 = (v38 + 24);
  *(v38 + 16) = 0;
  v86.tv_sec = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8, &qword_1AB4D4310);
  swift_task_localValuePush();
  v40 = v18;
  v41 = v18;
  v43 = v83;
  v42 = v84;
  v44 = sub_1AB12C4B0(v40, v83, v85, *&v87);
  if (v42)
  {
    swift_task_localValuePop();

    sub_1AB0D60E4(v41, v43, v82, 0);
  }

  else
  {
    v47 = v45;
    v48 = v46;
    v49 = v44;
    v70 = v41;
    v84 = 0;
    v69[1] = v20;
    if (v20)
    {
      v86.tv_sec = &type metadata for IntentDispatchOptions.BadOrderingCanary;
      StartUpPerformanceEvent.record(checkpoint:)(&v86.tv_sec);
    }

    sub_1AB0D60E4(v70, v83, v82, 0);
    v20 = v49;
    *a1 = v49;
    *(a1 + 8) = v47;
    *(a1 + 16) = v48;
    *(a1 + 17) = 1;
    static MonotonicTime.now.getter(&v86);
    v50 = v86.tv_sec;
    tv_nsec = v86.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v87 = v86.tv_nsec;
      swift_once();
      tv_nsec = v87;
    }

    v52 = tv_nsec / *&qword_1ED4D1F90 + v50 - (v71.tv_nsec / *&qword_1ED4D1F90 + v71.tv_sec);

    v53 = sub_1AB45FFA4();
    v54 = v74;
    sub_1AB45FFF4();
    LODWORD(v87) = sub_1AB461224();

    v55 = sub_1AB461314();
    v56 = v70;
    if (v55)
    {
      v85 = v53;

      v57 = v78;
      sub_1AB460024();

      v59 = v79;
      v58 = v80;
      if ((*(v79 + 88))(v57, v80) == *MEMORY[0x1E69E93E8])
      {
        v60 = 0;
        v61 = "[Error] Interval already ended";
      }

      else
      {
        (*(v59 + 8))(v57, v58);
        v61 = "selfTime=%f";
        v60 = 1;
      }

      v62 = swift_slowAlloc();
      *v62 = 0;
      *(v62 + 1) = v60;
      *(v62 + 2) = 2048;
      os_unfair_lock_lock(v39);
      v63 = *(v38 + 16);
      os_unfair_lock_unlock(v39);
      *(v62 + 4) = v52 - v63;
      v54 = v74;
      v64 = sub_1AB45FF64();
      v65 = v85;
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v85, LOBYTE(v87), v64, "MakeDependency", v61, v62, 0xCu);
      v66 = v62;
      v53 = v65;
      MEMORY[0x1AC59F020](v66, -1, -1);
      v56 = v70;
    }

    v72(v54, v75);
    v67 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v67[4]._os_unfair_lock_opaque = v52 + *&v67[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v67 + 6);
    swift_task_localValuePop();

    sub_1AB0D60E4(v56, v83, v82, 0);
  }

  return v20;
}