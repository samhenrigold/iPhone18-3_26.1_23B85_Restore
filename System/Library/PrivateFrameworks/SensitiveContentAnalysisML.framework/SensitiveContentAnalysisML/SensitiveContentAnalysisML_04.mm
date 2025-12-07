uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B8CC7D70);
  }

  return result;
}

unint64_t sub_1B8AA6E08()
{
  result = qword_1EBA96B90;
  if (!qword_1EBA96B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B90);
  }

  return result;
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

uint64_t sub_1B8AA6EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B8AA6EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8AA6F98(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1B8AA6FFC()
{
  result = qword_1EBA96B98;
  if (!qword_1EBA96B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96B98);
  }

  return result;
}

unint64_t sub_1B8AA7050()
{
  result = qword_1EBA96BA0;
  if (!qword_1EBA96BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BA0);
  }

  return result;
}

unint64_t sub_1B8AA70A4()
{
  result = qword_1EBA96BA8;
  if (!qword_1EBA96BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BA8);
  }

  return result;
}

unint64_t sub_1B8AA70F8()
{
  result = qword_1EBA96BB0;
  if (!qword_1EBA96BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BB0);
  }

  return result;
}

uint64_t sub_1B8AA7170(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1B8AD846C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1B8AF0A38();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1B8AD846C((v12 > 1), v13 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v13 + 1;
    v14 = v25 + 16 * v13;
    *(v14 + 32) = 0x70616373646E616CLL;
    *(v14 + 40) = 0xE900000000000065;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1B8A896DC(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1B8A896DC(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
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

void sub_1B8AA73D8(void *a3@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = sub_1B8AF06A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AF0698();
  v8 = sub_1B8AF0678();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    goto LABEL_33;
  }

  v40 = MEMORY[0x1E69E7CD0];
  v11 = objc_opt_self();
  v12 = sub_1B8AEFC18();
  *&v45 = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:&v45];

  if (v13)
  {
    v14 = v45;
    sub_1B8AF0A18();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C28, &qword_1B8AF8FC0);
    if (swift_dynamicCast())
    {
      v36 = v8;
      v37 = v10;
      v38 = a3;
      v15 = 0;
      v16 = v42;
      v17 = 1 << *(v42 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v42 + 64);
      v20 = (v17 + 63) >> 6;
      while (1)
      {
        if (!v19)
        {
          if (v20 <= v15 + 1)
          {
            v22 = v15 + 1;
          }

          else
          {
            v22 = v20;
          }

          v23 = v22 - 1;
          while (1)
          {
            v21 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v21 >= v20)
            {
              v19 = 0;
              v43 = 0u;
              v44 = 0u;
              v42 = 0u;
              goto LABEL_18;
            }

            v19 = *(v16 + 64 + 8 * v21);
            ++v15;
            if (v19)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
        }

        v21 = v15;
LABEL_17:
        v24 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v25 = v24 | (v21 << 6);
        v26 = (*(v16 + 48) + 16 * v25);
        v28 = *v26;
        v27 = v26[1];
        sub_1B8A7BBE0(*(v16 + 56) + 32 * v25, v41);
        *&v42 = v28;
        *(&v42 + 1) = v27;
        sub_1B8AAB328(v41, &v43);

        v23 = v21;
LABEL_18:
        v45 = v42;
        v46[0] = v43;
        v46[1] = v44;
        v29 = *(&v42 + 1);
        if (!*(&v42 + 1))
        {

          sub_1B8A89878(v36, v37);
          v35 = v40;
          a3 = v38;
          goto LABEL_31;
        }

        v30 = v45;
        sub_1B8AAB328(v46, &v42);
        if (v30 == 0x73646E616C5F7369 && v29 == 0xEC00000065706163)
        {
        }

        else
        {
          v31 = sub_1B8AF0EA8();

          if ((v31 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        sub_1B8A7BBE0(&v42, v41);
        v32 = swift_dynamicCast();
        if ((v32 & 1) != 0 && v39[0] == 1)
        {
          sub_1B8ABCCAC(v32);
        }

LABEL_7:
        __swift_destroy_boxed_opaque_existential_0(&v42);
        v15 = v23;
      }
    }

    sub_1B8A89878(v8, v10);
  }

  else
  {
    v33 = v45;
    v34 = sub_1B8AEFBD8();

    swift_willThrow();
    sub_1B8A89878(v8, v10);
  }

  v35 = MEMORY[0x1E69E7CD0];
LABEL_31:
  *a3 = v35;
}

uint64_t BackgroundEstimator.__allocating_init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  BackgroundEstimator.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(a1, a2, a3, a4, a5 & 1);
  return v10;
}

char *BackgroundEstimator.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v121 = a5;
  v95 = a4;
  v117 = a3;
  v111 = a2;
  v94 = a1;
  v93 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v89 - v10;
  v11 = sub_1B8AEFCC8();
  v115 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B8AF03A8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v108 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v89 - v17;
  v107 = sub_1B8AF02F8();
  v18 = *(v107 - 8);
  v19 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v89 - v21;
  v118 = sub_1B8AF0328();
  v23 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_logger;
  if (qword_1EBA96478 != -1)
  {
    swift_once();
  }

  v116 = v11;
  v27 = __swift_project_value_buffer(v13, qword_1EBAA5828);
  v109 = v14;
  v28 = *(v14 + 16);
  v112 = v13;
  v113 = v28;
  v114 = v14 + 16;
  v28(&v6[v26], v27, v13);
  v29 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v30 = v118;
  v31 = __swift_project_value_buffer(v118, qword_1EDB75B50);
  v105 = v23;
  v32 = *(v23 + 16);
  v98 = v31;
  v32(&v6[v29]);
  v92 = v29;
  v99 = v23 + 16;
  v97 = v32;
  (v32)(v25, &v6[v29], v30);
  sub_1B8AF02E8();
  v104 = v25;
  v33 = sub_1B8AF0318();
  v34 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v35 = v6;
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v33, v34, v37, "BackgroundEstimator.init", "", v36, 2u);
    v38 = v36;
    v6 = v35;
    MEMORY[0x1B8CC7D70](v38, -1, -1);
  }

  v39 = v107;
  (*(v18 + 16))(v106, v22, v107);
  sub_1B8AF0368();
  swift_allocObject();
  v103 = sub_1B8AF0358();
  (*(v18 + 8))(v22, v39);
  v106 = v6;
  v107 = v26;
  v40 = v100;
  v41 = v112;
  v113(v100, &v6[v26], v112);
  v43 = v115;
  v42 = v116;
  v44 = v101;
  v96 = *(v115 + 16);
  v96(v101, v117, v116);
  v45 = v111;

  v46 = v45;
  v47 = sub_1B8AF0388();
  v48 = sub_1B8AF08E8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v119[0] = v90;
    *v49 = 136446722;
    *(v49 + 4) = sub_1B8A9E870(v94, v46, v119);
    *(v49 + 12) = 2048;
    v50 = v95;
    if (v121)
    {
      v50 = -1;
    }

    *(v49 + 14) = v50;
    *(v49 + 22) = 2080;
    sub_1B8AAA774();
    v51 = sub_1B8AF0D28();
    v53 = v52;
    v101 = *(v115 + 8);
    (v101)(v44, v116);
    v54 = sub_1B8A9E870(v51, v53, v119);
    v42 = v116;

    *(v49 + 24) = v54;
    _os_log_impl(&dword_1B8A3C000, v47, v48, "Begin BackgroundEstimator init useCase=%{public}s  pid=%ld loc=%s", v49, 0x20u);
    v55 = v90;
    swift_arrayDestroy();
    MEMORY[0x1B8CC7D70](v55, -1, -1);
    v56 = v49;
    v43 = v115;
    MEMORY[0x1B8CC7D70](v56, -1, -1);
  }

  else
  {

    v101 = *(v43 + 8);
    (v101)(v44, v42);
  }

  v57 = *(v109 + 8);
  v57(v40, v41);
  v58 = v110;
  v96(v110, v117, v42);
  (*(v43 + 56))(v58, 0, 1, v42);
  type metadata accessor for AFMModel(0);
  v59 = swift_allocObject();
  v60 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v61 = __swift_project_value_buffer(v41, qword_1EDB75B38);
  v113((v59 + v60), v61, v41);
  v62 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  v97(v59 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter, v98, v118);
  v122 = 0;
  v63 = v102;
  sub_1B8A93BF0(v119);
  if (v63)
  {

    sub_1B8A897C4(v110, &qword_1EBA96528, &unk_1B8AF64B0);
    v68 = v112;
    v57((v59 + v60), v112);
    v69 = *(v105 + 8);
    v69(v59 + v62, v118);
    swift_deallocPartialClassInstance();
    v70 = v106;
    v113(v108, &v106[v107], v68);
    v71 = v63;
    v72 = sub_1B8AF0388();
    v73 = sub_1B8AF08D8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      v76 = v63;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 4) = v77;
      *v75 = v77;
      _os_log_impl(&dword_1B8A3C000, v72, v73, "End BackgroundEstimator init with error: %@", v74, 0xCu);
      sub_1B8A897C4(v75, &qword_1EBA96B08, &qword_1B8AF94B0);
      v78 = v75;
      v70 = v106;
      MEMORY[0x1B8CC7D70](v78, -1, -1);
      MEMORY[0x1B8CC7D70](v74, -1, -1);
    }

    v79 = v112;
    v57(v108, v112);
    swift_willThrow();
    v80 = v104;
    sub_1B8AA85A8(v104, "BackgroundEstimator.init", 24, 2, v103);

    (v101)(v117, v116);
    v81 = v80;
    v82 = v118;
    v69(v81, v118);
    v57(&v70[v107], v79);
    v69(&v70[v92], v82);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v64 = v59 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v65 = v119[1];
    *v64 = v119[0];
    *(v64 + 16) = v65;
    *(v64 + 32) = v120;
    LOBYTE(v119[0]) = 0;
    v66 = v110;
    v67 = v91;
    sub_1B8AA2E1C(v110, v91);
    type metadata accessor for AFMModelCore(0);
    swift_allocObject();
    v84 = sub_1B8A8AB94(v119, v94, v111, v95, v121 & 1, v67);
    sub_1B8A897C4(v66, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v59 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v84;
    v70 = v106;
    *(v106 + 2) = v59;
    v85 = sub_1B8AF0388();
    v86 = sub_1B8AF08E8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_1B8A3C000, v85, v86, "End BackgroundEstimator init", v87, 2u);
      MEMORY[0x1B8CC7D70](v87, -1, -1);
    }

    v88 = v104;
    sub_1B8AA85A8(v104, "BackgroundEstimator.init", 24, 2, v103);

    (v101)(v117, v116);
    (*(v105 + 8))(v88, v118);
  }

  return v70;
}

uint64_t sub_1B8AA85A8(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8AA8844(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C90, &qword_1B8AF9198);
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v17 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C98, &qword_1B8AF91A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96CA0, &qword_1B8AF91A8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AAB66C();
  v14 = v21;
  sub_1B8AF1058();
  if (v14)
  {
    v22 = 0;
    sub_1B8AAB714();
    sub_1B8AF0C88();
    sub_1B8AF0C98();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v23 = 1;
    sub_1B8AAB6C0();
    v16 = v17;
    sub_1B8AF0C88();
    (*(v18 + 8))(v16, v19);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B8AA8B3C()
{
  if (*v0)
  {
    return 0x6C69614664616F6CLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B8AA8B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001B8B060E0 == a2 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C69614664616F6CLL && a2 == 0xEA00000000006465)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B8AF0EA8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1B8AA8C70(uint64_t a1)
{
  v2 = sub_1B8AAB66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AA8CAC(uint64_t a1)
{
  v2 = sub_1B8AAB66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AA8CF4(uint64_t a1)
{
  v2 = sub_1B8AAB6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AA8D30(uint64_t a1)
{
  v2 = sub_1B8AAB6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AA8D6C(uint64_t a1)
{
  v2 = sub_1B8AAB714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AA8DA8(uint64_t a1)
{
  v2 = sub_1B8AAB714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B8AA8DE4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B8AAA9B0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1B8AA8E2C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v4;
  v5 = sub_1B8AD73F8(v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v7;
}

uint64_t sub_1B8AA8EF0(uint64_t a1)
{
  v2 = sub_1B8AAB474();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AA8F2C(uint64_t a1)
{
  v2 = sub_1B8AAB474();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t BackgroundEstimator.Estimation.description.getter()
{
  sub_1B8AA7170(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  sub_1B8AAA7CC();
  v1 = sub_1B8AF0608();
  v3 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BC0, &qword_1B8AF8CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8AF6490;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B8AAA830();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  return sub_1B8AF0688();
}

uint64_t BackgroundEstimator.Estimation.Classification.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B8AF0BE8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B8AA90D0()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();
  return sub_1B8AF1038();
}

uint64_t sub_1B8AA9144(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();
  return sub_1B8AF1038();
}

uint64_t sub_1B8AA9198@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B8AF0BE8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1B8AA9264@<X0>(uint64_t *a3@<X8>)
{
  sub_1B8A3F920();
  v4 = sub_1B8AF09C8();
  v5 = *(v4 + 16);
  if (v5)
  {
    v18 = a3;
    v17 = MEMORY[0x1E69E7CC0];
    result = sub_1B8AD84CC(0, v5, 0);
    v7 = 0;
    v8 = v17;
    v9 = (v4 + 40);
    while (v7 < *(v4 + 16))
    {
      v11 = *(v9 - 1);
      v10 = *v9;

      if (sub_1B8AF0BE8())
      {

        sub_1B8AAB2D4();
        swift_allocError();
        *v15 = v11;
        v15[1] = v10;
        swift_willThrow();
      }

      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        result = sub_1B8AD84CC((v12 > 1), v13 + 1, 1);
      }

      ++v7;
      *(v17 + 16) = v14;
      v9 += 2;
      if (v5 == v7)
      {

        a3 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v16 = sub_1B8ABE290(v8);

    *a3 = v16;
  }

  return result;
}

uint64_t sub_1B8AA944C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6966697373616C63 && a2 == 0xEF736E6F69746163)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AA94DC(uint64_t a1)
{
  v2 = sub_1B8AAA884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AA9518(uint64_t a1)
{
  v2 = sub_1B8AAA884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BackgroundEstimator.Estimation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BC8, &qword_1B8AF8CF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AAA884();

  sub_1B8AF1058();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BD8, &qword_1B8AF8D00);
  sub_1B8AAA8D8();
  sub_1B8AF0CC8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B8AA96C8()
{
  sub_1B8AA7170(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  sub_1B8AAA7CC();
  v1 = sub_1B8AF0608();
  v3 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BC0, &qword_1B8AF8CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8AF6490;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B8AAA830();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  return sub_1B8AF0688();
}

uint64_t BackgroundEstimator.estimateBackground(text:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1B8AF02F8();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AA98A4, 0, 0);
}

uint64_t sub_1B8AA98A4(uint64_t a1)
{
  v36 = v1;
  sub_1B8AF02E8();
  v2 = sub_1B8AF0318();
  v3 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v2, v3, v5, "BackgroundEstimator.estimateBackground", "", v4, 2u);
    MEMORY[0x1B8CC7D70](v4, -1, -1);
  }

  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);

  (*(v9 + 16))(v6, v7, v8);
  sub_1B8AF0368();
  swift_allocObject();
  v10 = sub_1B8AF0358();
  *(v1 + 144) = v10;
  (*(v9 + 8))(v7, v8);
  *(v1 + 152) = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_logger;
  v11 = sub_1B8AF0388();
  v12 = sub_1B8AF08E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B8A3C000, v11, v12, "Begin BackgroundEstimator estimateBackground", v13, 2u);
    MEMORY[0x1B8CC7D70](v13, -1, -1);
  }

  sub_1B8AEDD94(0xD000000000000014, 0x80000001B8B05500);
  if (v14)
  {
    sub_1B8AA9264(v35);

    v15 = v35[0];
    if (v35[0])
    {

      v16 = sub_1B8AF0388();
      v17 = sub_1B8AF08E8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v35[0] = v19;
        *v18 = 136315138;
        *(v1 + 72) = v15;
        sub_1B8AAAEA4();

        v20 = sub_1B8AF0D28();
        v22 = v21;

        v23 = sub_1B8A9E870(v20, v22, v35);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1B8A3C000, v16, v17, "End BackgroundEstimator override=%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1B8CC7D70](v19, -1, -1);
        MEMORY[0x1B8CC7D70](v18, -1, -1);
      }

      v24 = *(v1 + 104);
      **(v1 + 80) = v15;
LABEL_17:
      sub_1B8AAA340(v24, "BackgroundEstimator.estimateBackground", 38, 2, v10);

      v34 = *(v1 + 8);

      return v34();
    }
  }

  *(v1 + 40) = &type metadata for FeatureFlags;
  *(v1 + 48) = sub_1B8A9708C();
  *(v1 + 16) = 2;
  v25 = sub_1B8AEFCD8();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  if ((v25 & 1) == 0)
  {
    v30 = sub_1B8AF0388();
    v31 = sub_1B8AF08E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B8A3C000, v30, v31, "End BackgroundEstimator estimateBackground no override or feature flag, defaulting to empty", v32, 2u);
      MEMORY[0x1B8CC7D70](v32, -1, -1);
    }

    v24 = *(v1 + 104);
    v33 = *(v1 + 80);

    *v33 = MEMORY[0x1E69E7CD0];
    goto LABEL_17;
  }

  v26 = swift_task_alloc();
  *(v1 + 160) = v26;
  *v26 = v1;
  v26[1] = sub_1B8AA9EB8;
  v27 = *(v1 + 88);
  v28 = *(v1 + 96);

  return sub_1B8A83078(v1 + 56, v27, v28);
}

uint64_t sub_1B8AA9EB8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1B8AAA1A0;
  }

  else
  {
    v2 = sub_1B8AA9FCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8AA9FCC()
{
  v15 = v0;
  v1 = *(v0 + 56);

  v2 = sub_1B8AF0388();
  v3 = sub_1B8AF08E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136642819;
    *(v0 + 64) = v1;
    sub_1B8AAAEA4();

    v6 = sub_1B8AF0D28();
    v8 = v7;

    v9 = sub_1B8A9E870(v6, v8, &v14);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1B8A3C000, v2, v3, "End BackgroundEstimator estimateBackground output=%{sensitive}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CC7D70](v5, -1, -1);
    MEMORY[0x1B8CC7D70](v4, -1, -1);
  }

  v10 = *(v0 + 144);
  v11 = *(v0 + 104);
  **(v0 + 80) = v1;
  sub_1B8AAA340(v11, "BackgroundEstimator.estimateBackground", 38, 2, v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1B8AAA1A0()
{
  v1 = v0[21];
  v2 = v1;
  v3 = sub_1B8AF0388();
  v4 = sub_1B8AF08D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1B8A3C000, v3, v4, "End BackgroundEstimator estimateBackground with error: %@", v5, 0xCu);
    sub_1B8A897C4(v6, &qword_1EBA96B08, &qword_1B8AF94B0);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
    MEMORY[0x1B8CC7D70](v5, -1, -1);
  }

  v9 = v0[18];
  v10 = v0[13];

  swift_willThrow();
  sub_1B8AAA340(v10, "BackgroundEstimator.estimateBackground", 38, 2, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B8AAA340(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t BackgroundEstimator.deinit()
{

  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t BackgroundEstimator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19BackgroundEstimator_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

unint64_t sub_1B8AAA774()
{
  result = qword_1EDB75370;
  if (!qword_1EDB75370)
  {
    sub_1B8AEFCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB75370);
  }

  return result;
}

unint64_t sub_1B8AAA7CC()
{
  result = qword_1EDB749E8;
  if (!qword_1EDB749E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA965E8, &qword_1B8AF6770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB749E8);
  }

  return result;
}

unint64_t sub_1B8AAA830()
{
  result = qword_1EDB749F8;
  if (!qword_1EDB749F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB749F8);
  }

  return result;
}

unint64_t sub_1B8AAA884()
{
  result = qword_1EBA96BD0;
  if (!qword_1EBA96BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BD0);
  }

  return result;
}

unint64_t sub_1B8AAA8D8()
{
  result = qword_1EBA96BE0;
  if (!qword_1EBA96BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA96BD8, &qword_1B8AF8D00);
    sub_1B8AAA95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BE0);
  }

  return result;
}

unint64_t sub_1B8AAA95C()
{
  result = qword_1EBA96BE8;
  if (!qword_1EBA96BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BE8);
  }

  return result;
}

void *sub_1B8AAA9B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C60, &qword_1B8AF9178);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C68, &qword_1B8AF9180);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C70, &qword_1B8AF9188);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = a1[3];
  v31 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B8AAB66C();
  v15 = v30;
  sub_1B8AF1048();
  if (!v15)
  {
    v30 = v10;
    v16 = sub_1B8AF0C78();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B8AE4FD0();
    v19 = v9;
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v21 = sub_1B8AF0B08();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190);
      *v23 = &type metadata for BackgroundEstimator.Error;
      v14 = v12;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v30 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v36 = 1;
      sub_1B8AAB6C0();
      sub_1B8AF0BF8();
      v20 = v30;
      (*(v28 + 8))(v5, v27);
      (*(v20 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = 0;
    }

    else
    {
      v36 = 0;
      sub_1B8AAB714();
      sub_1B8AF0BF8();
      v25 = v30;
      v14 = sub_1B8AF0C18();
      (*(v29 + 8))(v8, v6);
      (*(v25 + 8))(v12, v19);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  return v14;
}

unint64_t sub_1B8AAAEA4()
{
  result = qword_1EBA96BF0;
  if (!qword_1EBA96BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BF0);
  }

  return result;
}

unint64_t sub_1B8AAAEFC()
{
  result = qword_1EBA96BF8;
  if (!qword_1EBA96BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96BF8);
  }

  return result;
}

uint64_t type metadata accessor for BackgroundEstimator(uint64_t a1)
{
  result = qword_1EDB751A8;
  if (!qword_1EDB751A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8AAAFA4(uint64_t a1)
{
  result = sub_1B8AF03A8();
  if (v2 <= 0x3F)
  {
    result = sub_1B8AF0328();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B8AAB0C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B8AAB10C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8AAB17C()
{
  result = qword_1EBA96C00;
  if (!qword_1EBA96C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C00);
  }

  return result;
}

unint64_t sub_1B8AAB1D4()
{
  result = qword_1EBA96C08;
  if (!qword_1EBA96C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C08);
  }

  return result;
}

unint64_t sub_1B8AAB22C()
{
  result = qword_1EBA96C10;
  if (!qword_1EBA96C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C10);
  }

  return result;
}

unint64_t sub_1B8AAB280()
{
  result = qword_1EBA96C18;
  if (!qword_1EBA96C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C18);
  }

  return result;
}

unint64_t sub_1B8AAB2D4()
{
  result = qword_1EBA96C20;
  if (!qword_1EBA96C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C20);
  }

  return result;
}

_OWORD *sub_1B8AAB328(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B8AAB338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8AAB388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_1B8AAB3DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B8AAB3F4(void *result, int a2)
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

unint64_t sub_1B8AAB424(void *a1)
{
  a1[1] = sub_1B8AAB474();
  a1[2] = sub_1B8AAB4C8();
  a1[3] = sub_1B8AAB51C();
  a1[4] = sub_1B8AAB570();
  a1[5] = sub_1B8AAB5C4();
  result = sub_1B8AAB618();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AAB474()
{
  result = qword_1EBA96C30;
  if (!qword_1EBA96C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C30);
  }

  return result;
}

unint64_t sub_1B8AAB4C8()
{
  result = qword_1EBA96C38;
  if (!qword_1EBA96C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C38);
  }

  return result;
}

unint64_t sub_1B8AAB51C()
{
  result = qword_1EBA96C40;
  if (!qword_1EBA96C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C40);
  }

  return result;
}

unint64_t sub_1B8AAB570()
{
  result = qword_1EBA96C48;
  if (!qword_1EBA96C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C48);
  }

  return result;
}

unint64_t sub_1B8AAB5C4()
{
  result = qword_1EBA96C50;
  if (!qword_1EBA96C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C50);
  }

  return result;
}

unint64_t sub_1B8AAB618()
{
  result = qword_1EBA96C58;
  if (!qword_1EBA96C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C58);
  }

  return result;
}

unint64_t sub_1B8AAB66C()
{
  result = qword_1EBA96C78;
  if (!qword_1EBA96C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C78);
  }

  return result;
}

unint64_t sub_1B8AAB6C0()
{
  result = qword_1EBA96C80;
  if (!qword_1EBA96C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C80);
  }

  return result;
}

unint64_t sub_1B8AAB714()
{
  result = qword_1EBA96C88;
  if (!qword_1EBA96C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96C88);
  }

  return result;
}

unint64_t sub_1B8AAB79C()
{
  result = qword_1EBA96CA8;
  if (!qword_1EBA96CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CA8);
  }

  return result;
}

unint64_t sub_1B8AAB7F4()
{
  result = qword_1EBA96CB0;
  if (!qword_1EBA96CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CB0);
  }

  return result;
}

unint64_t sub_1B8AAB84C()
{
  result = qword_1EBA96CB8;
  if (!qword_1EBA96CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CB8);
  }

  return result;
}

unint64_t sub_1B8AAB8A4()
{
  result = qword_1EBA96CC0;
  if (!qword_1EBA96CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CC0);
  }

  return result;
}

unint64_t sub_1B8AAB8FC()
{
  result = qword_1EBA96CC8;
  if (!qword_1EBA96CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CC8);
  }

  return result;
}

unint64_t sub_1B8AAB954()
{
  result = qword_1EBA96CD0;
  if (!qword_1EBA96CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CD0);
  }

  return result;
}

unint64_t sub_1B8AAB9AC()
{
  result = qword_1EBA96CD8;
  if (!qword_1EBA96CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CD8);
  }

  return result;
}

unint64_t sub_1B8AABA04()
{
  result = qword_1EBA96CE0;
  if (!qword_1EBA96CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CE0);
  }

  return result;
}

uint64_t sub_1B8AABA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1B8AEFB28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a1;
  v18[1] = a2;
  sub_1B8AEFB08();
  sub_1B8A3F920();
  v10 = sub_1B8AF09D8();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = v10 == 48 && v12 == 0xE100000000000000;
  if (v13 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v15 = 0;
  }

  else if (v10 == 49 && v12 == 0xE100000000000000)
  {

    v15 = 1;
  }

  else
  {
    v17 = sub_1B8AF0EA8();

    if (v17)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  *a3 = v15;
  return result;
}

uint64_t *sub_1B8AABBF0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  type metadata accessor for StandaloneBinarySemaphore();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = 0;
  type metadata accessor for Condition();
  v11 = swift_allocObject();
  *(v11 + 16) = *sub_1B8AF0188();
  *(v10 + 120) = v11;
  *(v4 + 80) = v10;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  sub_1B8A85238(a4, v4 + 40);
  sub_1B8A85238(a4, v19);

  v12 = sub_1B8A9D8F0(v18, a1, a2, a3, v19);
  v14 = v13;

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(v19);

  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_0((v4 + 40));

    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v18[0];
    v16 = v18[1];
    *(v4 + 88) = v12;
    *(v4 + 96) = v14;
    *(v4 + 104) = v15;
    *(v4 + 120) = v16;
  }

  return v4;
}

uint64_t *sub_1B8AABD9C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  type metadata accessor for StandaloneBinarySemaphore();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = 0;
  type metadata accessor for Condition();
  v11 = swift_allocObject();
  *(v11 + 16) = *sub_1B8AF0188();
  *(v10 + 120) = v11;
  v4[10] = v10;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_1B8A85238(a4, (v4 + 5));
  sub_1B8A85238(a4, v19);

  v12 = sub_1B8A9DD6C(v18, a1, a2, a3, v19);
  v14 = v13;

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(v19);

  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 5);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v18[0];
    v16 = v18[1];
    v4[11] = v12;
    v4[12] = v14;
    v4[13] = v15;
    v4[14] = v16;
  }

  return v4;
}

uint64_t PeopleCounter.__allocating_init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  PeopleCounter.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(a1, a2, a3, a4, a5 & 1);
  return v10;
}

uint64_t PeopleCounter.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v77 = a4;
  v94 = a5;
  v84 = a3;
  v75 = a1;
  v76 = a2;
  v73 = *v5;
  v6 = sub_1B8AF03A8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v85 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v71 - v10;
  v89 = sub_1B8AF02F8();
  v11 = *(v89 - 8);
  v12 = MEMORY[0x1EEE9AC00](v89);
  v74 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v71 - v14;
  v16 = sub_1B8AF0328();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_logger;
  if (qword_1EDB74C88 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v6, qword_1EDB75B08);
  v79 = v7;
  v80 = v6;
  v22 = *(v7 + 16);
  v90 = v20;
  v87 = v22;
  v88 = v7 + 16;
  v22(v5 + v20, v21, v6);
  v23 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v16, qword_1EDB75B50);
  v82 = v17;
  v25 = *(v17 + 16);
  v25(v5 + v23, v24, v16);
  v72 = v23;
  v83 = v16;
  v25(v19, v5 + v23, v16);
  sub_1B8AF02E8();
  v81 = v19;
  v26 = sub_1B8AF0318();
  v27 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v26, v27, v29, "PeopleCounter.init", "", v28, 2u);
    MEMORY[0x1B8CC7D70](v28, -1, -1);
  }

  v30 = v89;
  (*(v11 + 16))(v74, v15, v89);
  sub_1B8AF0368();
  swift_allocObject();
  v74 = sub_1B8AF0358();
  (*(v11 + 8))(v15, v30);
  v89 = v5;
  v31 = v86;
  v32 = v80;
  v87(v86, v5 + v90, v80);
  v33 = v76;

  v34 = sub_1B8AF0388();
  v35 = sub_1B8AF08E8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v91[0] = v37;
    *v36 = 136446466;
    v38 = v75;
    *(v36 + 4) = sub_1B8A9E870(v75, v33, v91);
    *(v36 + 12) = 2048;
    v39 = v94;
    v40 = v77;
    if (v94)
    {
      v41 = -1;
    }

    else
    {
      v41 = v77;
    }

    *(v36 + 14) = v41;
    _os_log_impl(&dword_1B8A3C000, v34, v35, "Begin PeopleCounter init useCase=%{public}s  pid=%ld", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1B8CC7D70](v37, -1, -1);
    MEMORY[0x1B8CC7D70](v36, -1, -1);

    v42 = v33;
    v43 = v86;
    v86 = *(v79 + 8);
    (v86)(v43, v32);
  }

  else
  {

    v42 = v33;
    v86 = *(v79 + 8);
    (v86)(v31, v32);
    v39 = v94;
    v40 = v77;
    v38 = v75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B8AF6490;
  v95 = 3;
  sub_1B8A96340(v91);
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v45 = sub_1B8AEFE68();
  v47 = v46;
  __swift_destroy_boxed_opaque_existential_0(v91);
  *(v44 + 32) = v45;
  *(v44 + 40) = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = v38;
  *(v48 + 24) = v42;
  *(v48 + 32) = v40;
  *(v48 + 40) = v39 & 1;
  v92 = &type metadata for CoherentAssetLockWrapperFactory;
  v93 = &off_1F3748D00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96CE8, &qword_1B8AF94A8);
  swift_allocObject();
  v49 = v78;
  v50 = sub_1B8AABD9C(v44, sub_1B8AAE1B8, v48, v91);
  if (v49)
  {
    v87(v85, (v89 + v90), v32);
    v51 = v49;
    v52 = sub_1B8AF0388();
    v53 = sub_1B8AF08D8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      v56 = v49;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v57;
      *v55 = v57;
      _os_log_impl(&dword_1B8A3C000, v52, v53, "End PeopleCounter init with error: %@", v54, 0xCu);
      sub_1B8A897C4(v55, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v55, -1, -1);
      MEMORY[0x1B8CC7D70](v54, -1, -1);
    }

    v58 = v86;
    (v86)(v85, v32);
    swift_willThrow();
    v59 = v81;
    sub_1B8AAC9A4(v81, "PeopleCounter.init", 18, 2, v74);

    v60 = sub_1B8AEFCC8();
    (*(*(v60 - 8) + 8))(v84, v60);
    v61 = *(v82 + 8);
    v62 = v59;
    v63 = v83;
    v61(v62, v83);
    v64 = v89;
    v58(v89 + v90, v32);
    v61(v64 + v72, v63);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v64 = v89;
    *(v89 + OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_coherentAssets) = v50;
    v65 = sub_1B8AF0388();
    v66 = sub_1B8AF08E8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1B8A3C000, v65, v66, "End PeopleCounter init", v67, 2u);
      MEMORY[0x1B8CC7D70](v67, -1, -1);
    }

    v68 = v81;
    sub_1B8AAC9A4(v81, "PeopleCounter.init", 18, 2, v74);

    v69 = sub_1B8AEFCC8();
    (*(*(v69 - 8) + 8))(v84, v69);
    (*(v82 + 8))(v68, v83);
  }

  return v64;
}

uint64_t sub_1B8AAC9A4(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1B8AACC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{

  result = sub_1B8AAE624(a1, a2, a3, a4 & 1);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v12;
  }

  return result;
}

SensitiveContentAnalysisML::PeopleCounter::Count::Value_optional __swiftcall PeopleCounter.Count.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8AF0BE8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PeopleCounter.Count.Value.rawValue.getter()
{
  v1 = 6647407;
  if (*v0 != 1)
  {
    v1 = 0x656C7069746C756DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869768058;
  }
}

uint64_t sub_1B8AACD4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 6647407;
  if (v2 != 1)
  {
    v4 = 0x656C7069746C756DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1869768058;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 6647407;
  if (*a2 != 1)
  {
    v8 = 0x656C7069746C756DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1869768058;
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
    v11 = sub_1B8AF0EA8();
  }

  return v11 & 1;
}

uint64_t sub_1B8AACE38()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8AACECC(uint64_t a1)
{
  sub_1B8AF05F8();
}

uint64_t sub_1B8AACF4C(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

void sub_1B8AACFE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 6647407;
  if (v2 != 1)
  {
    v5 = 0x656C7069746C756DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1869768058;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PeopleCounter.Count.hasPeople.getter()
{
  if (*v0)
  {
    v1 = sub_1B8AF0EA8();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t PeopleCounter.Count.hasMultiplePeople.getter()
{
  if (*v0 && *v0 != 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1B8AF0EA8();
  }

  return v1 & 1;
}

uint64_t sub_1B8AAD1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AAD23C(uint64_t a1)
{
  v2 = sub_1B8AAE1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AAD278(uint64_t a1)
{
  v2 = sub_1B8AAE1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PeopleCounter.Count.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96CF0, &qword_1B8AF94B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AAE1DC();
  sub_1B8AF1058();
  v10 = v7;
  sub_1B8AAE230();
  sub_1B8AF0CC8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PeopleCounter.countPeople(pixelBuffer:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8AF02F8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AAD4E8, 0, 0);
}

uint64_t sub_1B8AAD4E8(uint64_t a1)
{
  sub_1B8AF02E8();
  v2 = sub_1B8AF0318();
  v3 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v2, v3, v5, "PeopleCounter.countPeople", "", v4, 2u);
    MEMORY[0x1B8CC7D70](v4, -1, -1);
  }

  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[5];
  v9 = v1[6];

  (*(v9 + 16))(v6, v7, v8);
  sub_1B8AF0368();
  swift_allocObject();
  v1[9] = sub_1B8AF0358();
  (*(v9 + 8))(v7, v8);
  v1[10] = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_logger;
  v10 = sub_1B8AF0388();
  v11 = sub_1B8AF08E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B8A3C000, v10, v11, "Begin PeopleCounter countPeople", v12, 2u);
    MEMORY[0x1B8CC7D70](v12, -1, -1);
  }

  v14 = v1[3];
  v13 = v1[4];

  v15 = *(v13 + OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_coherentAssets);
  v16 = v14;
  v17 = swift_task_alloc();
  v1[11] = v17;
  *v17 = v1;
  v17[1] = sub_1B8AAD744;
  v18 = v1[3];

  return sub_1B8A99FF8((v1 + 13), v15, v18);
}

uint64_t sub_1B8AAD744()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B8AADA20;
  }

  else
  {
    v2 = sub_1B8AAD858;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8AAD858(uint64_t a1)
{
  v17 = v1;
  v2 = *(v1 + 104);
  v3 = sub_1B8AF0388();
  v4 = sub_1B8AF08E8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136642819;
    v7 = 0xE300000000000000;
    v8 = 6647407;
    if (v2 != 1)
    {
      v8 = 0x656C7069746C756DLL;
      v7 = 0xE800000000000000;
    }

    if (v2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1869768058;
    }

    if (v2)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    v11 = sub_1B8A9E870(v9, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1B8A3C000, v3, v4, "End PeopleCounter countPeople result=%{sensitive}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
    MEMORY[0x1B8CC7D70](v5, -1, -1);
  }

  v12 = *(v1 + 72);
  v13 = *(v1 + 32);
  **(v1 + 16) = v2;
  sub_1B8AADBC4(v13, "PeopleCounter.countPeople", 25, 2, v12);

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_1B8AADA20()
{
  v1 = v0[12];
  v2 = v1;
  v3 = sub_1B8AF0388();
  v4 = sub_1B8AF08D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B8A3C000, v3, v4, "End PeopleCounter countPeople with error: %@", v6, 0xCu);
    sub_1B8A897C4(v7, &qword_1EBA96B08, &qword_1B8AF94B0);
    MEMORY[0x1B8CC7D70](v7, -1, -1);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v10 = v0[9];
  v11 = v0[4];

  swift_willThrow();
  sub_1B8AADBC4(v11, "PeopleCounter.countPeople", 25, 2, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8AADBC4(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t PeopleCounter.deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t PeopleCounter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML13PeopleCounter_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

id SCMLPeopleCount.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMLPeopleCount.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SCMLPeopleCount();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void SCMLImageSanitization.peopleCount.getter(char *a1@<X8>)
{
  v3 = [v1 peopleCountInternal];
  if (v3)
  {
    v4 = v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML15SCMLPeopleCount_count];
  }

  else
  {
    v4 = 3;
  }

  *a1 = v4;
}

unint64_t sub_1B8AAE1DC()
{
  result = qword_1EBA96CF8;
  if (!qword_1EBA96CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96CF8);
  }

  return result;
}

unint64_t sub_1B8AAE230()
{
  result = qword_1EBA96D00;
  if (!qword_1EBA96D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D00);
  }

  return result;
}

unint64_t sub_1B8AAE2AC()
{
  result = qword_1EBA96D10;
  if (!qword_1EBA96D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D10);
  }

  return result;
}

uint64_t type metadata accessor for PeopleCounter(uint64_t a1)
{
  result = qword_1EDB75318;
  if (!qword_1EDB75318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8AAE354(uint64_t a1)
{
  result = sub_1B8AF03A8();
  if (v2 <= 0x3F)
  {
    result = sub_1B8AF0328();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B8AAE4CC()
{
  result = qword_1EBA96D18;
  if (!qword_1EBA96D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D18);
  }

  return result;
}

unint64_t sub_1B8AAE524()
{
  result = qword_1EBA96D20;
  if (!qword_1EBA96D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D20);
  }

  return result;
}

unint64_t sub_1B8AAE57C()
{
  result = qword_1EBA96D28;
  if (!qword_1EBA96D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D28);
  }

  return result;
}

unint64_t sub_1B8AAE5D0()
{
  result = qword_1EBA96D30;
  if (!qword_1EBA96D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D30);
  }

  return result;
}

void *sub_1B8AAE624(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = sub_1B8A89360();
  if (v4)
  {
  }

  v42 = v15;
  if (v15)
  {
    v17 = 3;
  }

  else
  {
    v17 = 13;
  }

  v45 = v17;
  v18 = sub_1B8AEFCC8();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v40 = type metadata accessor for AFMModel(0);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v33 = a1;
  v34 = a4;
  v35 = a3;
  v41 = a2;
  v21 = sub_1B8AF03A8();
  v22 = __swift_project_value_buffer(v21, qword_1EDB75B38);
  v38 = *(v21 - 8);
  v39 = v20;
  v23 = *(v38 + 16);
  v36 = v21;
  v23(v19 + v20, v22, v21);
  v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v25 = sub_1B8AF0328();
  v26 = __swift_project_value_buffer(v25, qword_1EDB75B50);
  v27 = *(*(v25 - 8) + 16);
  v37 = v24;
  v27(v19 + v24, v26, v25);
  v28 = v45;
  v46 = v45;
  sub_1B8A93BF0(v43);
  v29 = v19 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
  v30 = v43[1];
  *v29 = v43[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v44;
  LOBYTE(v43[0]) = v28;
  sub_1B8AA2E1C(v14, v12);
  type metadata accessor for AFMModelCore(0);
  swift_allocObject();
  v31 = sub_1B8A8AB94(v43, v33, v41, v35, v34 & 1, v12);
  sub_1B8A897C4(v14, &qword_1EBA96528, &unk_1B8AF64B0);
  *(v19 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v31;
  return v42;
}

uint64_t sub_1B8AAEA74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1B8AD846C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1B8AF0A38();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1B8AD846C((v12 > 1), v13 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v13 + 1;
    v14 = v25 + 16 * v13;
    *(v14 + 32) = 0x79656C696D73;
    *(v14 + 40) = 0xE600000000000000;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1B8A896DC(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1B8A896DC(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
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

void sub_1B8AAECBC(void *a3@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = sub_1B8AF06A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AF0698();
  v8 = sub_1B8AF0678();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    goto LABEL_33;
  }

  v41 = MEMORY[0x1E69E7CD0];
  v11 = objc_opt_self();
  v12 = sub_1B8AEFC18();
  *&v46 = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:&v46];

  if (v13)
  {
    v14 = v46;
    sub_1B8AF0A18();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C28, &qword_1B8AF8FC0);
    if (swift_dynamicCast())
    {
      v37 = v8;
      v38 = v10;
      v39 = a3;
      v15 = 0;
      v16 = v43;
      v17 = v43 + 64;
      v18 = 1 << *(v43 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v43 + 64);
      v21 = (v18 + 63) >> 6;
      while (1)
      {
        if (!v20)
        {
          if (v21 <= v15 + 1)
          {
            v23 = v15 + 1;
          }

          else
          {
            v23 = v21;
          }

          v24 = v23 - 1;
          while (1)
          {
            v22 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v22 >= v21)
            {
              v20 = 0;
              v44 = 0u;
              v45 = 0u;
              v43 = 0u;
              goto LABEL_18;
            }

            v20 = *(v17 + 8 * v22);
            ++v15;
            if (v20)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
        }

        v22 = v15;
LABEL_17:
        v25 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v26 = v25 | (v22 << 6);
        v27 = (*(v16 + 48) + 16 * v26);
        v29 = *v27;
        v28 = v27[1];
        sub_1B8A7BBE0(*(v16 + 56) + 32 * v26, v42);
        *&v43 = v29;
        *(&v43 + 1) = v28;
        sub_1B8AAB328(v42, &v44);

        v24 = v22;
LABEL_18:
        v46 = v43;
        v47[0] = v44;
        v47[1] = v45;
        v30 = *(&v43 + 1);
        if (!*(&v43 + 1))
        {

          sub_1B8A89878(v37, v38);
          v36 = v41;
          a3 = v39;
          goto LABEL_31;
        }

        v31 = v46;
        sub_1B8AAB328(v47, &v43);
        if (v31 == 0x79656C696D73 && v30 == 0xE600000000000000)
        {
        }

        else
        {
          v32 = sub_1B8AF0EA8();

          if ((v32 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        sub_1B8A7BBE0(&v43, v42);
        v33 = swift_dynamicCast();
        if ((v33 & 1) != 0 && v40[0] == 1)
        {
          sub_1B8ABCC84(v33);
        }

LABEL_7:
        __swift_destroy_boxed_opaque_existential_0(&v43);
        v15 = v24;
      }
    }

    sub_1B8A89878(v8, v10);
  }

  else
  {
    v34 = v46;
    v35 = sub_1B8AEFBD8();

    swift_willThrow();
    sub_1B8A89878(v8, v10);
  }

  v36 = MEMORY[0x1E69E7CD0];
LABEL_31:
  *a3 = v36;
}

uint64_t SmileyClassifier.__allocating_init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  SmileyClassifier.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(a1, a2, a3, a4, a5 & 1);
  return v10;
}

char *SmileyClassifier.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v109 = a5;
  v86 = a4;
  v101 = a3;
  v93 = a2;
  v85 = a1;
  v84 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v82 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v81 - v10;
  v11 = sub_1B8AF03A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v98 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v81 - v15;
  v90 = sub_1B8AF02F8();
  v16 = *(v90 - 8);
  v17 = MEMORY[0x1EEE9AC00](v90);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v81 - v20;
  v106 = sub_1B8AF0328();
  v22 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_logger;
  if (qword_1EDB74A00 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v11, qword_1EDB75AF0);
  v99 = v12;
  v27 = *(v12 + 16);
  v102 = v25;
  v103 = v11;
  v104 = v27;
  v105 = v12 + 16;
  v27(&v6[v25], v26, v11);
  v28 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v29 = v106;
  v30 = __swift_project_value_buffer(v106, qword_1EDB75B50);
  v95 = v22;
  v31 = *(v22 + 16);
  v88 = v30;
  v31(&v6[v28]);
  v83 = v28;
  v87 = v31;
  (v31)(v24, &v6[v28], v29);
  sub_1B8AF02E8();
  v94 = v24;
  v32 = sub_1B8AF0318();
  v33 = sub_1B8AF0908();
  v34 = sub_1B8AF0928();
  v96 = v6;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v32, v33, v36, "SmileyClassifier.init", "", v35, 2u);
    v37 = v35;
    v6 = v96;
    MEMORY[0x1B8CC7D70](v37, -1, -1);
  }

  v38 = v90;
  (*(v16 + 16))(v19, v21, v90);
  sub_1B8AF0368();
  swift_allocObject();
  v92 = sub_1B8AF0358();
  (*(v16 + 8))(v21, v38);
  v39 = v103;
  v40 = v97;
  v104(v97, &v6[v102], v103);
  v41 = v93;

  v42 = sub_1B8AF0388();
  v43 = sub_1B8AF08E8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v107[0] = v45;
    *v44 = 136446466;
    *(v44 + 4) = sub_1B8A9E870(v85, v41, v107);
    *(v44 + 12) = 2048;
    v46 = v86;
    if (v109)
    {
      v46 = -1;
    }

    *(v44 + 14) = v46;
    _os_log_impl(&dword_1B8A3C000, v42, v43, "Begin SmileyClassifier init useCase=%{public}s  pid=%ld", v44, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1B8CC7D70](v45, -1, -1);
    MEMORY[0x1B8CC7D70](v44, -1, -1);
  }

  v97 = *(v99 + 8);
  (v97)(v40, v39);
  v47 = sub_1B8AEFCC8();
  v48 = *(v47 - 8);
  v49 = v100;
  (*(v48 + 16))(v100, v101, v47);
  v89 = v48;
  v50 = *(v48 + 56);
  v90 = v47;
  v50(v49, 0, 1, v47);
  type metadata accessor for AFMModel(0);
  v51 = swift_allocObject();
  v52 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v53 = __swift_project_value_buffer(v39, qword_1EDB75B38);
  v104((v51 + v52), v53, v39);
  v54 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  v87(v51 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter, v88, v106);
  v110 = 10;
  v55 = v91;
  sub_1B8A93BF0(v107);
  if (v55)
  {

    sub_1B8A897C4(v100, &qword_1EBA96528, &unk_1B8AF64B0);
    v60 = v103;
    (v97)(v51 + v52, v103);
    v61 = *(v95 + 8);
    v61(v51 + v54, v106);
    swift_deallocPartialClassInstance();
    v62 = v96;
    v104(v98, &v96[v102], v60);
    v63 = v55;
    v64 = sub_1B8AF0388();
    v65 = sub_1B8AF08D8();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      v68 = v55;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v69;
      *v67 = v69;
      _os_log_impl(&dword_1B8A3C000, v64, v65, "End SmileyClassifier init with error: %@", v66, 0xCu);
      sub_1B8A897C4(v67, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v67, -1, -1);
      MEMORY[0x1B8CC7D70](v66, -1, -1);
    }

    v70 = v97;
    v71 = v103;
    (v97)(v98, v103);
    swift_willThrow();
    v72 = v94;
    sub_1B8AAFD68(v94, "SmileyClassifier.init", 21, 2, v92);

    (*(v89 + 8))(v101, v90);
    v73 = v72;
    v74 = v106;
    v61(v73, v106);
    v70(&v62[v102], v71);
    v61(&v62[v83], v74);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v56 = v51 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v57 = v107[1];
    *v56 = v107[0];
    *(v56 + 16) = v57;
    *(v56 + 32) = v108;
    LOBYTE(v107[0]) = 10;
    v58 = v100;
    v59 = v82;
    sub_1B8AA2E1C(v100, v82);
    type metadata accessor for AFMModelCore(0);
    swift_allocObject();
    v76 = sub_1B8A8AB94(v107, v85, v41, v86, v109 & 1, v59);
    sub_1B8A897C4(v58, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v51 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v76;
    v62 = v96;
    *(v96 + 2) = v51;
    v77 = sub_1B8AF0388();
    v78 = sub_1B8AF08E8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1B8A3C000, v77, v78, "End SmileyClassifier init", v79, 2u);
      MEMORY[0x1B8CC7D70](v79, -1, -1);
    }

    v80 = v94;
    sub_1B8AAFD68(v94, "SmileyClassifier.init", 21, 2, v92);

    (*(v89 + 8))(v101, v90);
    (*(v95 + 8))(v80, v106);
  }

  return v62;
}

uint64_t sub_1B8AAFD68(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t SmileyClassifier.Result.description.getter()
{
  sub_1B8AAEA74(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  sub_1B8AAA7CC();
  v1 = sub_1B8AF0608();
  v3 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BC0, &qword_1B8AF8CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8AF6490;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B8AAA830();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  return sub_1B8AF0688();
}

uint64_t SmileyClassifier.Result.Classification.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B8AF0BE8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B8AB015C()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();
  return sub_1B8AF1038();
}

uint64_t sub_1B8AB01C0(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();
  return sub_1B8AF1038();
}

uint64_t sub_1B8AB020C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B8AF0BE8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1B8AB02D0(uint64_t a1)
{
  v2 = sub_1B8AB1360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB030C(uint64_t a1)
{
  v2 = sub_1B8AB1360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SmileyClassifier.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96D38, &qword_1B8AF9798);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AB1360();

  sub_1B8AF1058();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96D48, &qword_1B8AF97A0);
  sub_1B8AB13B4();
  sub_1B8AF0CC8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B8AB04BC()
{
  sub_1B8AAEA74(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  sub_1B8AAA7CC();
  v1 = sub_1B8AF0608();
  v3 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96BC0, &qword_1B8AF8CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8AF6490;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B8AAA830();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  return sub_1B8AF0688();
}

uint64_t SmileyClassifier.classify(text:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1B8AF02F8();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AB0690, 0, 0);
}

uint64_t sub_1B8AB0690(uint64_t a1)
{
  v31 = v1;
  sub_1B8AF02E8();
  v2 = sub_1B8AF0318();
  v3 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v2, v3, v5, "SmileyClassifier.classify", "", v4, 2u);
    MEMORY[0x1B8CC7D70](v4, -1, -1);
  }

  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);

  (*(v9 + 16))(v6, v7, v8);
  sub_1B8AF0368();
  swift_allocObject();
  v10 = sub_1B8AF0358();
  *(v1 + 104) = v10;
  (*(v9 + 8))(v7, v8);
  *(v1 + 112) = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_logger;
  v11 = sub_1B8AF0388();
  v12 = sub_1B8AF08E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B8A3C000, v11, v12, "Begin SmileyClassifier classify", v13, 2u);
    MEMORY[0x1B8CC7D70](v13, -1, -1);
  }

  sub_1B8AEDD94(0x655279656C696D73, 0xEC000000746C7573);
  if (v14)
  {
    sub_1B8AAECBC(&v30);

    v15 = v30;

    v16 = sub_1B8AF0388();
    v17 = sub_1B8AF08E8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      *(v1 + 32) = v15;
      sub_1B8AB148C();

      v20 = sub_1B8AF0D28();
      v22 = v21;

      v23 = sub_1B8A9E870(v20, v22, &v30);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1B8A3C000, v16, v17, "End SmileyClassifier classify override=%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CC7D70](v19, -1, -1);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
    }

    v24 = *(v1 + 64);
    **(v1 + 40) = v15;
    sub_1B8AB0F2C(v24, "SmileyClassifier.classify", 25, 2, v10);

    v25 = *(v1 + 8);

    return v25();
  }

  else
  {
    v27 = swift_task_alloc();
    *(v1 + 120) = v27;
    *v27 = v1;
    v27[1] = sub_1B8AB0AA0;
    v28 = *(v1 + 48);
    v29 = *(v1 + 56);

    return sub_1B8A82BA0(v1 + 16, v28, v29);
  }
}

uint64_t sub_1B8AB0AA0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B8AB0D88;
  }

  else
  {
    v2 = sub_1B8AB0BB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8AB0BB4()
{
  v15 = v0;
  v1 = *(v0 + 16);

  v2 = sub_1B8AF0388();
  v3 = sub_1B8AF08E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136642819;
    *(v0 + 24) = v1;
    sub_1B8AB148C();

    v6 = sub_1B8AF0D28();
    v8 = v7;

    v9 = sub_1B8A9E870(v6, v8, &v14);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1B8A3C000, v2, v3, "End SmileyClassifier classify output=%{sensitive}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CC7D70](v5, -1, -1);
    MEMORY[0x1B8CC7D70](v4, -1, -1);
  }

  v10 = *(v0 + 104);
  v11 = *(v0 + 64);
  **(v0 + 40) = v1;
  sub_1B8AB0F2C(v11, "SmileyClassifier.classify", 25, 2, v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1B8AB0D88()
{
  v1 = v0[16];
  v2 = v1;
  v3 = sub_1B8AF0388();
  v4 = sub_1B8AF08D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B8A3C000, v3, v4, "End SmileyClassifier classify with error: %@", v6, 0xCu);
    sub_1B8A897C4(v7, &qword_1EBA96B08, &qword_1B8AF94B0);
    MEMORY[0x1B8CC7D70](v7, -1, -1);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v10 = v0[13];
  v11 = v0[8];

  swift_willThrow();
  sub_1B8AB0F2C(v11, "SmileyClassifier.classify", 25, 2, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8AB0F2C(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t SmileyClassifier.deinit()
{

  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SmileyClassifier.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML16SmileyClassifier_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

unint64_t sub_1B8AB1360()
{
  result = qword_1EBA96D40;
  if (!qword_1EBA96D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D40);
  }

  return result;
}

unint64_t sub_1B8AB13B4()
{
  result = qword_1EBA96D50;
  if (!qword_1EBA96D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA96D48, &qword_1B8AF97A0);
    sub_1B8AB1438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D50);
  }

  return result;
}

unint64_t sub_1B8AB1438()
{
  result = qword_1EBA96D58;
  if (!qword_1EBA96D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D58);
  }

  return result;
}

unint64_t sub_1B8AB148C()
{
  result = qword_1EDB74AB0;
  if (!qword_1EDB74AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB74AB0);
  }

  return result;
}

unint64_t sub_1B8AB14E4()
{
  result = qword_1EBA96D60;
  if (!qword_1EBA96D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D60);
  }

  return result;
}

uint64_t type metadata accessor for SmileyClassifier(uint64_t a1)
{
  result = qword_1EDB75278;
  if (!qword_1EDB75278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8AB1604()
{
  result = qword_1EBA96D68;
  if (!qword_1EBA96D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D68);
  }

  return result;
}

unint64_t sub_1B8AB165C()
{
  result = qword_1EBA96D70;
  if (!qword_1EBA96D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D70);
  }

  return result;
}

unint64_t sub_1B8AB16B4()
{
  result = qword_1EBA96D78;
  if (!qword_1EBA96D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D78);
  }

  return result;
}

unint64_t sub_1B8AB1708()
{
  result = qword_1EBA96D80;
  if (!qword_1EBA96D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D80);
  }

  return result;
}

uint64_t sub_1B8AB175C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DE0, &qword_1B8AF9CB0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1B8AB1834(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DD0, &qword_1B8AF9CA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AB360C();
  sub_1B8AF1058();
  v12 = 0;
  sub_1B8AF0CA8();
  if (!v3)
  {
    v11 = 1;
    sub_1B8AF0CA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B8AB19D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AB1A54(uint64_t a1)
{
  v2 = sub_1B8AB3A8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB1A90(uint64_t a1)
{
  v2 = sub_1B8AB3A8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AB1ACC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96E30, &qword_1B8AF9F88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AB3A8C();
  sub_1B8AF1048();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_1B8AF0C28();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1B8AB1C2C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96E40, &qword_1B8AF9F90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AB3A8C();
  sub_1B8AF1058();
  sub_1B8AF0CA8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B8AB1D64()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v3;
  v4 = sub_1B8AD713C(v1);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8AB3660(inited + 32);
  return v6;
}

uint64_t sub_1B8AB1E14(uint64_t a1)
{
  v2 = sub_1B8AB37E4();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AB1E50(uint64_t a1)
{
  v2 = sub_1B8AB37E4();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B8AB1E8C()
{
  if (*v0)
  {
    return 98;
  }

  else
  {
    return 97;
  }
}

uint64_t sub_1B8AB1EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 97 && a2 == 0xE100000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B8AF0EA8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1B8AB1F6C(uint64_t a1)
{
  v2 = sub_1B8AB360C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB1FA8(uint64_t a1)
{
  v2 = sub_1B8AB360C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AB1FE4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B8AB3464(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1B8AB202C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v4;
  v5 = sub_1B8AD71E0(v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8AB3660(inited + 32);
  return v7;
}

uint64_t sub_1B8AB20E0(uint64_t a1)
{
  v2 = sub_1B8AB2FAC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AB211C(uint64_t a1)
{
  v2 = sub_1B8AB2FAC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void TextImageAlignmentCalculator.init()(void *a1@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v2 = [objc_allocWithZone(SCMLMADImageEncoder) initWithError_];
  v3 = v12[0];
  if (v2)
  {
    v4 = v2;
    v5 = objc_allocWithZone(SCMLMADTextEncoder);
    v12[0] = 0;
    v6 = v3;
    v7 = [v5 initWithError_];
    v8 = v12[0];
    if (v7)
    {
      *a1 = v4;
      a1[1] = v7;
      v9 = v8;
    }

    else
    {
      v11 = v12[0];
      sub_1B8AEFBD8();

      swift_willThrow();
    }
  }

  else
  {
    v10 = v12[0];
    sub_1B8AEFBD8();

    swift_willThrow();
  }
}

uint64_t TextImageAlignmentCalculator.calculateAlignment(text:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 232) = a3;
  *(v5 + 240) = a4;
  *(v5 + 216) = a1;
  *(v5 + 224) = a2;
  *(v5 + 248) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1B8AB22C4, 0, 0);
}

uint64_t sub_1B8AB22C4()
{
  v1 = v0[30];
  v2 = v0[31];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1B8AB23F8;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA964F0, &qword_1B8AF6288);
  v0[33] = v4;
  v0[25] = v4;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B8AB175C;
  v0[21] = &block_descriptor_0;
  v0[22] = v3;
  [v2 embedPixelBufferAsynchronously:v1 requestType:0 version:8 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B8AB23F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1B8AB2A20;
  }

  else
  {
    v2 = sub_1B8AB2508;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8AB2508()
{
  v1 = v0[32];
  v2 = v0[33];
  v0[35] = v0[26];
  v3 = sub_1B8AF0658();
  v0[36] = v3;
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1B8AB2634;
  v4 = swift_continuation_init();
  v0[25] = v2;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B8AB175C;
  v0[21] = &block_descriptor_3;
  v0[22] = v4;
  [v1 embedTextAsynchronously:v3 version:8 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B8AB2634()
{
  v1 = *(*v0 + 112);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_1B8AB2A8C;
  }

  else
  {
    v2 = sub_1B8AB2744;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8AB2744()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 208);
  v29 = *(v0 + 248);

  v3 = sub_1B8AB2B30(v1);
  v30 = *(v0 + 248);
  v4 = sub_1B8AB2B30(v2);
  v5 = [v2 bias];
  if (v5)
  {
    v6 = v5;
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [v2 scale];
  if (v9)
  {
    v10 = v9;
    [v9 floatValue];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = v3[2];
  v14 = v4[2];
  if (v13 != v14)
  {
    v19 = *(v0 + 280);
    sub_1B8AB2C24();
    swift_allocError();
    *v20 = v13;
    v20[1] = v14;
    swift_willThrow();

    v21 = *(v0 + 8);
    goto LABEL_12;
  }

  v15 = sub_1B8AB2C78(v3, v4);
  v16 = *(v15 + 16);
  if (v16)
  {
    if (v16 > 7)
    {
      v17 = v16 & 0x7FFFFFFFFFFFFFF8;
      v23 = v15 + 48;
      v18 = 0.0;
      v24 = v16 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v18 = (((((((v18 + COERCE_FLOAT(*(v23 - 16))) + COERCE_FLOAT(HIDWORD(*(v23 - 16)))) + COERCE_FLOAT(*(v23 - 8))) + COERCE_FLOAT(HIDWORD(*(v23 - 16)))) + COERCE_FLOAT(*v23)) + COERCE_FLOAT(HIDWORD(*v23))) + COERCE_FLOAT(*(v23 + 8))) + COERCE_FLOAT(HIDWORD(*v23));
        v23 += 32;
        v24 -= 8;
      }

      while (v24);
      if (v16 == v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0.0;
    }

    v25 = v16 - v17;
    v26 = (v15 + 4 * v17 + 32);
    do
    {
      v27 = *v26++;
      v18 = v18 + v27;
      --v25;
    }

    while (v25);
  }

  else
  {
    v18 = 0.0;
  }

LABEL_21:
  v28 = *(v0 + 216);

  *v28 = 1.0 / (expf(-(v8 + (v12 * v18))) + 1.0);
  v21 = *(v0 + 8);
LABEL_12:

  return v21();
}

uint64_t sub_1B8AB2A20(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B8AB2A8C(uint64_t a1)
{
  v2 = v1[36];
  v3 = v1[35];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void *sub_1B8AB2B30(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *v1;
  v9 = 0;
  v2 = [a1 float32DataWithError_];
  v3 = v9;
  if (v2)
  {
    v4 = sub_1B8AEFC28();
    v6 = v5;

    v7 = sub_1B8AB31A4(v4, v6);
    sub_1B8A8988C(v4, v6);
  }

  else
  {
    v7 = v3;
    sub_1B8AEFBD8();

    swift_willThrow();
  }

  return v7;
}

unint64_t sub_1B8AB2C24()
{
  result = qword_1EBA96D88;
  if (!qword_1EBA96D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D88);
  }

  return result;
}

uint64_t sub_1B8AB2C78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1B8AD84EC(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_1B8AD84EC((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 4 * v16 + 32) = v13 * v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 4 * v6);
        v19 = *(v25 + 32 + 4 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_1B8AD84EC((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 4 * v21 + 32) = v18 * v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8AB2E54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B8AB2E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextImageAlignmentCalculator.Result(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TextImageAlignmentCalculator.Result(uint64_t result, int a2, int a3)
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

unint64_t sub_1B8AB2F5C(void *a1)
{
  a1[1] = sub_1B8AB2FAC();
  a1[2] = sub_1B8AB3000();
  a1[3] = sub_1B8AB3054();
  a1[4] = sub_1B8AB30A8();
  a1[5] = sub_1B8AB30FC();
  result = sub_1B8AB3150();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AB2FAC()
{
  result = qword_1EBA96D90;
  if (!qword_1EBA96D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D90);
  }

  return result;
}

unint64_t sub_1B8AB3000()
{
  result = qword_1EBA96D98;
  if (!qword_1EBA96D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96D98);
  }

  return result;
}

unint64_t sub_1B8AB3054()
{
  result = qword_1EBA96DA0;
  if (!qword_1EBA96DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DA0);
  }

  return result;
}

unint64_t sub_1B8AB30A8()
{
  result = qword_1EBA96DA8;
  if (!qword_1EBA96DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DA8);
  }

  return result;
}

unint64_t sub_1B8AB30FC()
{
  result = qword_1EBA96DB0;
  if (!qword_1EBA96DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DB0);
  }

  return result;
}

unint64_t sub_1B8AB3150()
{
  result = qword_1EBA96DB8;
  if (!qword_1EBA96DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DB8);
  }

  return result;
}

void *sub_1B8AB31A4(uint64_t a1, unint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    LOBYTE(v3) = v3 - v4;
    if (!v5)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = HIWORD(a2);
    goto LABEL_9;
  }

  LOBYTE(v3) = BYTE4(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_9:
  if ((v3 & 3) != 0)
  {
    if (v2 == 2)
    {
      v15 = *(a1 + 16);
      v14 = *(a1 + 24);
      v6 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (v2 == 1)
    {
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v6 = HIDWORD(a1) - a1;
LABEL_25:
        sub_1B8AB36C8();
        swift_allocError();
        *v16 = v6;
        return swift_willThrow();
      }

      goto LABEL_46;
    }

    v6 = BYTE6(a2);
    goto LABEL_25;
  }

  if (v2 == 2)
  {
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    v12 = sub_1B8AEFB68();
    if (v12)
    {
      v20 = sub_1B8AEFB88();
      if (__OFSUB__(v18, v20))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      v12 += v18 - v20;
    }

    v5 = __OFSUB__(v19, v18);
    v8 = v19 - v18;
    if (v5)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v13 = sub_1B8AEFB78();
    if (!v12)
    {
      return MEMORY[0x1E69E7CC0];
    }

    goto LABEL_31;
  }

  if (v2 != 1)
  {
    __src = a1;
    v29 = a2;
    v30 = BYTE2(a2);
    v31 = BYTE3(a2);
    v32 = BYTE4(a2);
    v27 = (a2 >> 50) & 0x3F;
    v33 = BYTE5(a2);
    if (v27)
    {
      v23 = sub_1B8ADA9A4((a2 >> 50) & 0x3F, 0);
      v25 = 4 * v27;
      v24 = v23 + 4;
      p_src = &__src;
LABEL_41:
      memcpy(v24, p_src, v25);
      return v23;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v7 = a1;
  v8 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v9 = sub_1B8AEFB68();
  if (!v9)
  {
    sub_1B8AEFB78();
    return MEMORY[0x1E69E7CC0];
  }

  v10 = v9;
  v11 = sub_1B8AEFB88();
  if (__OFSUB__(v7, v11))
  {
    goto LABEL_50;
  }

  v12 = v7 - v11 + v10;
  v13 = sub_1B8AEFB78();
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_31:
  if (v13 >= v8)
  {
    v21 = v8;
  }

  else
  {
    v21 = v13;
  }

  if ((v21 + 3) >= 7)
  {
    if (v21 >= 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 + 3;
    }

    v23 = sub_1B8ADA9A4(v22 >> 2, 0);
    v24 = v23 + 4;
    v25 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    p_src = v12;
    goto LABEL_41;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B8AB3464(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DC0, &qword_1B8AF9CA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AB360C();
  sub_1B8AF1048();
  v8[15] = 0;
  v6 = sub_1B8AF0C28();
  v8[14] = 1;
  sub_1B8AF0C28();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t sub_1B8AB360C()
{
  result = qword_1EBA96DC8;
  if (!qword_1EBA96DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DC8);
  }

  return result;
}

uint64_t sub_1B8AB3660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D0, &qword_1B8AF6740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8AB36C8()
{
  result = qword_1EBA96DD8;
  if (!qword_1EBA96DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DD8);
  }

  return result;
}

unint64_t sub_1B8AB3740()
{
  result = qword_1EBA96DE8;
  if (!qword_1EBA96DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DE8);
  }

  return result;
}

unint64_t sub_1B8AB3794(void *a1)
{
  a1[1] = sub_1B8AB37E4();
  a1[2] = sub_1B8AB3838();
  a1[3] = sub_1B8AB388C();
  a1[4] = sub_1B8AB38E0();
  a1[5] = sub_1B8AB3934();
  result = sub_1B8AB3988();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AB37E4()
{
  result = qword_1EBA96DF0;
  if (!qword_1EBA96DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DF0);
  }

  return result;
}

unint64_t sub_1B8AB3838()
{
  result = qword_1EBA96DF8;
  if (!qword_1EBA96DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96DF8);
  }

  return result;
}

unint64_t sub_1B8AB388C()
{
  result = qword_1EBA96E00;
  if (!qword_1EBA96E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E00);
  }

  return result;
}

unint64_t sub_1B8AB38E0()
{
  result = qword_1EBA96E08;
  if (!qword_1EBA96E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E08);
  }

  return result;
}

unint64_t sub_1B8AB3934()
{
  result = qword_1EBA96E10;
  if (!qword_1EBA96E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E10);
  }

  return result;
}

unint64_t sub_1B8AB3988()
{
  result = qword_1EBA96E18;
  if (!qword_1EBA96E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E18);
  }

  return result;
}

unint64_t sub_1B8AB39E0()
{
  result = qword_1EBA96E20;
  if (!qword_1EBA96E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E20);
  }

  return result;
}

unint64_t sub_1B8AB3A38()
{
  result = qword_1EBA96E28;
  if (!qword_1EBA96E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E28);
  }

  return result;
}

unint64_t sub_1B8AB3A8C()
{
  result = qword_1EBA96E38;
  if (!qword_1EBA96E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E38);
  }

  return result;
}

unint64_t sub_1B8AB3AF4()
{
  result = qword_1EBA96E48;
  if (!qword_1EBA96E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E48);
  }

  return result;
}

unint64_t sub_1B8AB3B4C()
{
  result = qword_1EBA96E50;
  if (!qword_1EBA96E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E50);
  }

  return result;
}

unint64_t sub_1B8AB3BA4()
{
  result = qword_1EBA96E58;
  if (!qword_1EBA96E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E58);
  }

  return result;
}

uint64_t *sub_1B8AB3C10(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B8AB5DBC(a1);
  v9[0] = 0;
  v4 = [objc_allocWithZone(SCMLImageSanitizer) initWithConfiguration:v3 error:v9];
  if (v4)
  {
    v5 = v4;
    v6 = v9[0];
    sub_1B8AB5F28(a1);

    *(v1 + 16) = v5;
  }

  else
  {
    v7 = v9[0];
    sub_1B8AEFBD8();

    swift_willThrow();
    sub_1B8AB5F28(a1);
    swift_deallocPartialClassInstance();
  }

  return v1;
}

uint64_t sub_1B8AB3D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = sub_1B8AF04B8();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AB3DFC, 0, 0);
}

uint64_t sub_1B8AB3DFC()
{
  result = sub_1B8AF0438();
  v0[8] = result;
  v2 = *(result + 16);
  v0[9] = v2;
  if (v2)
  {
    v3 = v0[6];
    v0[10] = 0;
    if (*(result + 16))
    {
      (*(v3 + 16))(v0[7], result + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v0[5]);
      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v4[1] = sub_1B8AB3F34;
      v5 = v0[7];
      v6 = v0[3];
      v7 = v0[2];

      return sub_1B8AB421C(v5, v7, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_1B8AB3F34()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {

    v3 = sub_1B8AB41B8;
  }

  else
  {
    v3 = sub_1B8AB4080;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B8AB4080()
{
  v1 = v0[10] + 1;
  if (v1 == v0[9])
  {

    v2 = v0[1];

    v2();
  }

  else
  {
    v0[10] = v1;
    v3 = v0[8];
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      (*(v0[6] + 16))(v0[7], v3 + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v1, v0[5]);
      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v4[1] = sub_1B8AB3F34;
      v5 = v0[7];
      v6 = v0[3];
      v7 = v0[2];

      sub_1B8AB421C(v5, v7, v6);
    }
  }
}

uint64_t sub_1B8AB41B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AB421C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B8AF04B8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1B8AF04E8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1B8AF04D8();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_1B8AF0498();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AB4400, 0, 0);
}

uint64_t sub_1B8AB4400()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  sub_1B8AF04A8();
  LODWORD(v4) = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x1E69C6318])
  {
    v5 = v0[18];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    (*(v0[16] + 96))(v5, v0[15]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_1B8AB4BF0;
    v10 = v0[4];
    v11 = v0[3];

    return sub_1B8AB3D38(v9, v11, v10);
  }

  if (v4 != *MEMORY[0x1E69C6328])
  {
    goto LABEL_12;
  }

  v13 = v0[18];
  (*(v0[16] + 96))(v13, v0[15]);
  v4 = *v13;
  v0[23] = *v13;
  v14 = *(v4 + 16);
  v0[24] = v14;
  if (!v14)
  {
LABEL_29:

    goto LABEL_30;
  }

  v0[25] = 0;
  if (!*(v4 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    if (v4 != *MEMORY[0x1E69C6320])
    {
      if (v4 == *MEMORY[0x1E69C62F8] || v4 == *MEMORY[0x1E69C6310])
      {
        goto LABEL_30;
      }

      if (v4 != *MEMORY[0x1E69C6300] && v4 != *MEMORY[0x1E69C62E0] && v4 != *MEMORY[0x1E69C62D8])
      {
        if (v4 == *MEMORY[0x1E69C6338])
        {
          v20 = v0[18];
          v22 = v0[13];
          v21 = v0[14];
          v23 = v0[12];
          v24 = v0[5];
          (*(v0[16] + 96))(v20, v0[15]);
          (*(v22 + 32))(v21, v20, v23);
          v25 = *(v24 + 16);
          v26 = swift_task_alloc();
          v0[19] = v26;
          *v26 = v0;
          v26[1] = sub_1B8AB4974;
          v27 = v0[14];
          v28 = v0[3];
          v29 = v0[4];

          return sub_1B8AB5F84(v27, v28, v29, v25);
        }

        if (v4 == *MEMORY[0x1E69C62E8] || v4 != *MEMORY[0x1E69C6308] && v4 != *MEMORY[0x1E69C62C8] && v4 != *MEMORY[0x1E69C6340])
        {
          (*(v0[16] + 8))(v0[18], v0[15]);
          sub_1B8AF04A8();
          v35 = sub_1B8AF06B8();
          v37 = v36;
          sub_1B8AB6C40();
          swift_allocError();
          *v38 = v35;
          *(v38 + 8) = v37;
          *(v38 + 16) = 1;
          swift_willThrow();

          v34 = v0[1];
          goto LABEL_31;
        }
      }
    }

    (*(v0[16] + 8))(v0[18], v0[15]);
LABEL_30:

    v34 = v0[1];
LABEL_31:

    return v34();
  }

  while (1)
  {
    result = sub_1B8AF0438();
    v0[26] = result;
    v15 = *(result + 16);
    v0[27] = v15;
    if (v15)
    {
      break;
    }

    v16 = v0[24];
    v17 = v0[25];

    if (v17 + 1 == v16)
    {
      goto LABEL_29;
    }

    v18 = v0[25] + 1;
    v0[25] = v18;
    if (v18 >= *(v0[23] + 16))
    {
      goto LABEL_11;
    }
  }

  v0[28] = 0;
  if (*(result + 16))
  {
    (*(v0[7] + 16))(v0[8], result + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);
    v30 = swift_task_alloc();
    v0[29] = v30;
    *v30 = v0;
    v30[1] = sub_1B8AB4DB4;
    v31 = v0[8];
    v32 = v0[4];
    v33 = v0[3];

    return sub_1B8AB421C(v31, v33, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8AB4974()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1B8AB4B38;
  }

  else
  {
    v2 = sub_1B8AB4A88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8AB4A88()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8AB4B38()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8AB4BF0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1B8AB5178;
  }

  else
  {
    v2 = sub_1B8AB4D04;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8AB4D04()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8AB4DB4()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {

    v3 = sub_1B8AB50D0;
  }

  else
  {
    v3 = sub_1B8AB4F04;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8AB4F04()
{
  v1 = v0[28] + 1;
  if (v1 == v0[27])
  {
    while (1)
    {
      v2 = v0[24];
      v3 = v0[25];

      if (v3 + 1 == v2)
      {
        break;
      }

      v5 = v0[25] + 1;
      v0[25] = v5;
      if (v5 >= *(v0[23] + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      result = sub_1B8AF0438();
      v0[26] = result;
      v6 = *(result + 16);
      v0[27] = v6;
      if (v6)
      {
        v1 = 0;
        goto LABEL_7;
      }
    }

    v11 = v0[1];

    return v11();
  }

  else
  {
    result = v0[26];
LABEL_7:
    v0[28] = v1;
    if (v1 >= *(result + 16))
    {
LABEL_15:
      __break(1u);
    }

    else
    {
      (*(v0[7] + 16))(v0[8], result + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)) + *(v0[7] + 72) * v1, v0[6]);
      v7 = swift_task_alloc();
      v0[29] = v7;
      *v7 = v0;
      v7[1] = sub_1B8AB4DB4;
      v8 = v0[8];
      v9 = v0[4];
      v10 = v0[3];

      return sub_1B8AB421C(v8, v10, v9);
    }
  }

  return result;
}

uint64_t sub_1B8AB50D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8AB5178()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

void *sub_1B8AB5230()
{
  result = sub_1B8AB5250();
  off_1EBA96E60 = result;
  return result;
}

void *sub_1B8AB5250()
{
  v0 = sub_1B8AE6C50(MEMORY[0x1E69E7CC0]);
  v1 = 0;
  for (i = 0; ; i = 1u)
  {
    v3 = v1;
    v4 = *(&unk_1F3747848 + i + 32);
    v5 = sub_1B8AF0668();
    v7 = v5;
    v8 = v6;
    if (v0[2] && (v9 = sub_1B8AC402C(v5, v6), (v10 & 1) != 0))
    {
      v11 = *(v0[7] + 8 * v9);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96E80, &qword_1B8AFA100);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B8AF6490;
    *(inited + 32) = v4;
    v13 = *(v11 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v15 = *(v11 + 3) >> 1, v15 <= v13))
    {
      v11 = sub_1B8ABAE58(isUniquelyReferenced_nonNull_native, v13 + 1, 1, v11);
      v15 = *(v11 + 3) >> 1;
    }

    v16 = *(v11 + 2);
    if (v15 <= v16)
    {
      break;
    }

    v11[v16 + 32] = *(inited + 32);

    ++*(v11 + 2);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1B8AC402C(v7, v8);
    v20 = v0[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v0[3] < v23)
    {
      sub_1B8AC4E38(v23, v17);
      v18 = sub_1B8AC402C(v7, v8);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      if (v24)
      {
        goto LABEL_2;
      }

      goto LABEL_18;
    }

    if (v17)
    {
      goto LABEL_17;
    }

    v29 = v18;
    sub_1B8AC608C();
    v18 = v29;
    if (v24)
    {
LABEL_2:
      *(v0[7] + 8 * v18) = v11;

      goto LABEL_3;
    }

LABEL_18:
    v0[(v18 >> 6) + 8] |= 1 << v18;
    v26 = (v0[6] + 16 * v18);
    *v26 = v7;
    v26[1] = v8;
    *(v0[7] + 8 * v18) = v11;
    v27 = v0[2];
    v22 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v22)
    {
      goto LABEL_25;
    }

    v0[2] = v28;
LABEL_3:
    v1 = 1;
    if (v3)
    {
      return v0;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B8AF0FB8();
  __break(1u);
  return result;
}

uint64_t sub_1B8AB54E0()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t *sub_1B8AB5548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1B8AB3C10(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B8AB55A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965A8, &qword_1B8AF6720);
    v3 = sub_1B8AF0A78();
    v4 = 0;
    v5 = v3 + 56;
    v24 = a1 + 32;
    v23 = v1;
    while (1)
    {
      v6 = *(v24 + v4);
      v25 = v4 + 1;
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xEA00000000007974;
          v14 = 0x6566615365646F63;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              break;
            case 2:
              v14 = 0x646E417367616C66;
              v13 = 0xEC0000007370614DLL;
              break;
            case 3:
              v13 = 0xE800000000000000;
              v14 = 0x4E4F534A6373696DLL;
              break;
            case 4:
              v14 = 0x6F43656C706F6570;
              v13 = 0xEB00000000746E75;
              break;
            case 5:
              v14 = 0x6544656C706F6570;
              v13 = 0xEF6E6F6974636574;
              break;
            case 6:
              v14 = 0x7365627570657270;
              v13 = 0xEC000000746E6563;
              break;
            case 7:
              v14 = 0xD000000000000014;
              v13 = 0x80000001B8B05560;
              break;
            case 8:
              v14 = 0xD000000000000017;
              v13 = 0x80000001B8B05580;
              break;
            case 9:
              v14 = 0xD000000000000020;
              v13 = 0x80000001B8B055A0;
              break;
            case 0xA:
              v14 = 0xD000000000000014;
              v13 = 0x80000001B8B055D0;
              break;
            case 0xB:
              v14 = 0xD000000000000013;
              v13 = 0x80000001B8B055F0;
              break;
            case 0xC:
              v14 = 0x6566615374786574;
              break;
            case 0xD:
              v14 = 0x65636E656C6F6976;
              v13 = 0xEF65726F47646E41;
              break;
            default:
              v14 = 0xD000000000000014;
              v13 = 0x80000001B8B05500;
              break;
          }

          v15 = 0x6566615365646F63;
          v16 = 0xEA00000000007974;
          switch(v6)
          {
            case 1:
              goto LABEL_44;
            case 2:
              v17 = 0x646E417367616C66;
              v18 = 1936744781;
              goto LABEL_41;
            case 3:
              v16 = 0xE800000000000000;
              if (v14 != 0x4E4F534A6373696DLL)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 4:
              v16 = 0xEB00000000746E75;
              if (v14 != 0x6F43656C706F6570)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 5:
              v16 = 0xEF6E6F6974636574;
              if (v14 != 0x6544656C706F6570)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 6:
              v17 = 0x7365627570657270;
              v18 = 1953391971;
LABEL_41:
              v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v14 != v17)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 7:
              v16 = 0x80000001B8B05560;
              if (v14 != 0xD000000000000014)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 8:
              v16 = 0x80000001B8B05580;
              if (v14 != 0xD000000000000017)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 9:
              v16 = 0x80000001B8B055A0;
              if (v14 != 0xD000000000000020)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 10:
              v15 = 0xD000000000000014;
              v16 = 0x80000001B8B055D0;
LABEL_44:
              if (v14 == v15)
              {
                goto LABEL_45;
              }

              goto LABEL_46;
            case 11:
              v16 = 0x80000001B8B055F0;
              if (v14 != 0xD000000000000013)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 12:
              if (v14 != 0x6566615374786574)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 13:
              v16 = 0xEF65726F47646E41;
              if (v14 != 0x65636E656C6F6976)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            default:
              v16 = 0x80000001B8B05500;
              if (v14 != 0xD000000000000014)
              {
                goto LABEL_46;
              }

LABEL_45:
              if (v13 == v16)
              {

                goto LABEL_4;
              }

LABEL_46:
              v19 = sub_1B8AF0EA8();

              if (v19)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_51;
              }

              break;
          }
        }
      }

LABEL_51:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      v4 = v25;
      if (v25 == v23)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B8AB5C54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D8, &qword_1B8AF6748);
    v3 = sub_1B8AF0A78();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1B8AF1018();

      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1B8AF0EA8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

id sub_1B8AB5DBC(uint64_t a1)
{
  v2 = [objc_allocWithZone(SCMLImageSanitizerConfiguration) init];
  [v2 setMode_];
  sub_1B8AEFEC8();
  v3 = sub_1B8AF0658();

  [v2 setModelManagerServicesUseCaseID_];

  v4 = type metadata accessor for MultimodalSanitizer.Configuration(0);
  v5 = (a1 + *(v4 + 24));
  if (*(v5 + 4))
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = *v5;
  }

  [v2 setOnBehalfOfProcessID_];
  [v2 setGranularity_];
  result = [v2 setRegion_];
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + *(v4 + 20));
  v13 = *(v10 + 56);
  v11 = v10 + 56;
  v12 = v13;
  v14 = 1 << *(v11 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
LABEL_7:
    v16 &= v16 - 1;
    v9 = 64;
  }

  while (1)
  {
    v18 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      [v2 setBackends_];
      return v2;
    }

    v16 = *(v11 + 8 * v18);
    ++v8;
    if (v16)
    {
      v8 = v18;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8AB5F28(uint64_t a1)
{
  v2 = type metadata accessor for MultimodalSanitizer.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8AB5F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8AB5FA8, 0, 0);
}

uint64_t sub_1B8AB5FA8()
{
  v1 = sub_1B8AF04C8();
  v3 = v2;
  v4 = sub_1B8AE1600(v1, v2);
  v0[23] = v4;
  v5 = v4;
  v6 = v0[22];
  v7 = v0[20];
  sub_1B8A8988C(v1, v3);
  v8 = [objc_allocWithZone(SCMLImageSanitizerRequest) initWithPixelBuffer_];
  v0[24] = v8;
  v9 = type metadata accessor for MultimodalSanitizer.Request(0);
  v0[25] = v9;
  [v8 setKeepGoing_];
  if (*(v7 + *(v9 + 20)))
  {
    v10 = 8;
  }

  else
  {
    v10 = 7;
  }

  [v8 setStyle_];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B8AB61D0;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96E70, &qword_1B8AFA0F8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B8AB175C;
  v0[13] = &block_descriptor_1;
  v0[14] = v11;
  [v6 sanitizeRequestAsynchronously:v8 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B8AB61D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1B8AB69D0;
  }

  else
  {
    v2 = sub_1B8AB62E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B8AB62E0()
{
  v1 = [*(v0 + 144) signals];
  if (v1)
  {
    v2 = v1;
    sub_1B8AB6CAC();
    sub_1B8AF05A8();
  }

  sub_1B8AF0B98();
}

uint64_t sub_1B8AB69D0(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[24];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1B8AB6A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965F0, &unk_1B8AF6780);
    v3 = sub_1B8AF0A78();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      sub_1B8AF1018();
      if (v6)
      {
        v7 = 0x65636E656C6F6976;
      }

      else
      {
        v7 = 1701998439;
      }

      if (v6)
      {
        v8 = 0xE800000000000000;
      }

      else
      {
        v8 = 0xE400000000000000;
      }

      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        v23 = v6;
        v15 = ~v10;
        do
        {
          if (*(*(v3 + 48) + v11))
          {
            v16 = 0x65636E656C6F6976;
          }

          else
          {
            v16 = 1701998439;
          }

          if (*(*(v3 + 48) + v11))
          {
            v17 = 0xE800000000000000;
          }

          else
          {
            v17 = 0xE400000000000000;
          }

          if (v16 == v7 && v17 == v8)
          {

            goto LABEL_4;
          }

          v19 = sub_1B8AF0EA8();

          if (v19)
          {
            goto LABEL_4;
          }

          v11 = (v11 + 1) & v15;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while ((v13 & (1 << v11)) != 0);
        LOBYTE(v6) = v23;
      }

      *(v5 + 8 * v12) = v13 | v14;
      *(*(v3 + 48) + v11) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1B8AB6C40()
{
  result = qword_1EBA96E68;
  if (!qword_1EBA96E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96E68);
  }

  return result;
}

unint64_t sub_1B8AB6CAC()
{
  result = qword_1EBA96E78;
  if (!qword_1EBA96E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA96E78);
  }

  return result;
}

uint64_t sub_1B8AB6CF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B8ABE814();
  result = MEMORY[0x1B8CC6080](v2, &type metadata for MultimodalSanitizer.SignalIdentifier, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1B8ABCDAC(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t MultimodalSanitizer.SignalIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0x65636E656C6F6976;
  }

  else
  {
    return 1701998439;
  }
}

uint64_t sub_1B8AB6E3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65636E656C6F6976;
  }

  else
  {
    v3 = 1701998439;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x65636E656C6F6976;
  }

  else
  {
    v5 = 1701998439;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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
    v8 = sub_1B8AF0EA8();
  }

  return v8 & 1;
}

uint64_t sub_1B8AB6EDC()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8AB6F58(uint64_t a1)
{
  sub_1B8AF05F8();
}

uint64_t sub_1B8AB6FC0(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

void sub_1B8AB7044(uint64_t *a1@<X8>)
{
  v2 = 1701998439;
  if (*v1)
  {
    v2 = 0x65636E656C6F6976;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MultimodalSanitizer.Configuration.init(useCaseID:signals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MultimodalSanitizer.Configuration(0);
  v7 = a3 + *(v6 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = sub_1B8AEFED8();
  result = (*(*(v8 - 8) + 32))(a3, a1, v8);
  *(a3 + *(v6 + 20)) = a2;
  return result;
}

uint64_t MultimodalSanitizer.Configuration.withOnBehalfOf(processID:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_1B8ABE1B4(v2, a2, type metadata accessor for MultimodalSanitizer.Configuration);
  result = type metadata accessor for MultimodalSanitizer.Configuration(0);
  v6 = a2 + *(result + 24);
  *v6 = a1;
  *(v6 + 4) = 0;
  return result;
}

uint64_t sub_1B8AB71A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96F60, &qword_1B8AFA3D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8AF6490;
  result = _s21ImageSanitizerBackendCMa();
  *(v0 + 32) = result;
  *(v0 + 40) = &off_1F3749BA0;
  off_1EBA96E88 = v0;
  return result;
}

uint64_t MultimodalSanitizer.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MultimodalSanitizer.init(configuration:)(a1);
  return v2;
}

unint64_t *MultimodalSanitizer.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  v85 = *MEMORY[0x1E69E9840];
  v60[3] = *v1;
  v79 = type metadata accessor for MultimodalSanitizer.Configuration(0);
  MEMORY[0x1EEE9AC00](v79);
  v70 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1B8AF03A8();
  v67 = *(v69 - 8);
  v4 = MEMORY[0x1EEE9AC00](v69);
  v60[2] = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v60 - v6;
  *&v75 = sub_1B8AF02F8();
  v8 = *(v75 - 8);
  v9 = MEMORY[0x1EEE9AC00](v75);
  v74 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v60 - v11;
  v13 = sub_1B8AF0328();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v66 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_signposter;
  if (qword_1EDB75390 != -1)
  {
LABEL_34:
    swift_once();
  }

  v76 = v7;
  v17 = __swift_project_value_buffer(v13, qword_1EDB75B50);
  v62 = v14;
  isa = v14[2].isa;
  isa(&v16[v2], v17, v13);
  v19 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_logger;
  if (qword_1EBA96480 != -1)
  {
    swift_once();
  }

  v20 = v69;
  v21 = __swift_project_value_buffer(v69, qword_1EBAA5840);
  v22 = *(v67 + 16);
  v78 = v19;
  v65 = v67 + 16;
  v64 = v22;
  v22((v2 + v19), v21, v20);
  v68 = v2;
  v63 = v13;
  isa(v66, &v16[v2], v13);
  sub_1B8AF02E8();
  v23 = sub_1B8AF0318();
  v24 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v23, v24, v26, "MultimodalSanitizer.init", "", v25, 2u);
    MEMORY[0x1B8CC7D70](v25, -1, -1);
  }

  v27 = v75;
  (v8[2])(v74, v12, v75);
  sub_1B8AF0368();
  swift_allocObject();
  v61 = sub_1B8AF0358();
  (v8[1])(v12, v27);
  v28 = v71 + *(v79 + 24);
  v29 = *v28;
  v13 = *(v28 + 4);
  v2 = sub_1B8AEFEC8();
  v7 = v30;
  v12 = v78;
  v31 = v76;
  v64(v76, &v78[v68], v69);
  v14 = sub_1B8AF0388();
  v32 = sub_1B8AF08E8();
  if (os_log_type_enabled(v14, v32))
  {
    if (v13)
    {
      v29 = -1;
    }

    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v83[0] = v33;
    *v13 = 136315394;
    v2 = sub_1B8A9E870(v2, v7, v83);

    *(v13 + 4) = v2;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v29;
    _os_log_impl(&dword_1B8A3C000, v14, v32, "Begin MultimodalSanitizer init useCase=%s pid=%d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    v34 = v33;
    v12 = v78;
    MEMORY[0x1B8CC7D70](v34, -1, -1);
    MEMORY[0x1B8CC7D70](v13, -1, -1);
  }

  else
  {
  }

  v8 = *(v67 + 8);
  (v8)(v31, v69);
  v16 = v77;
  v60[1] = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration;
  sub_1B8ABE1B4(v71, v68 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration, type metadata accessor for MultimodalSanitizer.Configuration);
  if (qword_1EBA96468 != -1)
  {
    swift_once();
  }

  v35 = off_1EBA96E88;
  v74 = *(off_1EBA96E88 + 2);
  if (!v74)
  {
    v77 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v54 = v68;
    *(v68 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_backends) = v77;
    v55 = sub_1B8AF0388();
    v56 = sub_1B8AF08E8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1B8A3C000, v55, v56, "End MultimodalSanitizer init", v57, 2u);
      MEMORY[0x1B8CC7D70](v57, -1, -1);
    }

    v58 = v66;
    sub_1B8AB80DC(v66, "MultimodalSanitizer.init", 24, 2, v61);

    (v62[1].isa)(v58, v63);
    sub_1B8ABE3BC(v71, type metadata accessor for MultimodalSanitizer.Configuration);
    return v54;
  }

  v60[0] = v8;
  v36 = 0;
  v37 = *(v71 + *(v79 + 20));
  v73 = off_1EBA96E88 + 32;
  v77 = MEMORY[0x1E69E7CC0];
  v72 = off_1EBA96E88;
  while (1)
  {
    if (v36 >= v35[2])
    {
      __break(1u);
      goto LABEL_34;
    }

    v79 = v36;
    v42 = *&v73[16 * v36 + 8];
    v43 = v42[1];
    v75 = *&v73[16 * v36];
    v14 = v75;
    v76 = v42;
    v44 = v43(v75);
    v45 = *(v44 + 32);
    v46 = v45 & 0x3F;
    v47 = ((1 << v45) + 63) >> 6;
    v13 = 8 * v47;

    if (v46 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v8 = swift_slowAlloc();

    v53 = sub_1B8ABDC50(v8, v47, v44, v37);
    if (v16)
    {
      goto LABEL_36;
    }

    v2 = v53;

    swift_bridgeObjectRelease_n();
    MEMORY[0x1B8CC7D70](v8, -1, -1);
LABEL_21:
    v7 = sub_1B8ABA5C8(v2, MEMORY[0x1E69E7CD0]);

    if ((v7 & 1) == 0)
    {
      v50 = v70;
      sub_1B8ABE1B4(v71, v70, type metadata accessor for MultimodalSanitizer.Configuration);
      v8 = v76;
      v51 = v76[2];
      v84 = v75;
      __swift_allocate_boxed_opaque_existential_1(v83);
      v51(v50, v14, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1B8ABAF4C(0, *(v77 + 2) + 1, 1, v77, &qword_1EBA96F50, &qword_1B8AFA3C8, &qword_1EBA96F58, &qword_1B8AFA3D0);
      }

      v13 = *(v77 + 2);
      v52 = *(v77 + 3);
      v14 = (v13 + 1);
      if (v13 >= v52 >> 1)
      {
        v77 = sub_1B8ABAF4C((v52 > 1), v13 + 1, 1, v77, &qword_1EBA96F50, &qword_1B8AFA3C8, &qword_1EBA96F58, &qword_1B8AFA3D0);
      }

      v38 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
      MEMORY[0x1EEE9AC00](v38);
      v2 = (v60 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v40 + 16))(v2);
      v7 = *v2;
      v81 = _s21ImageSanitizerBackendCMa();
      v82 = &off_1F3749BA0;
      *&v80 = v7;
      v41 = v77;
      *(v77 + 2) = v14;
      sub_1B8A4270C(&v80, &v41[40 * v13 + 32]);
      __swift_destroy_boxed_opaque_existential_0(v83);
      v16 = 0;
      v12 = v78;
    }

    v36 = v79 + 1;
    v35 = v72;
    if (v74 == (v79 + 1))
    {
      goto LABEL_30;
    }
  }

  v8 = v60;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  bzero(v60 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);
  v49 = sub_1B8ABDCE0(v60 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v47, v44, v37);
  if (!v16)
  {
    v2 = v49;

    v12 = v78;
    goto LABEL_21;
  }

  swift_willThrow();

  __break(1u);
LABEL_36:

  result = MEMORY[0x1B8CC7D70](v8, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B8AB80DC(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8AB8384@<X0>(char *a4@<X8>)
{
  v5 = sub_1B8AF0BE8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t MultimodalSanitizer.Request.Origin.rawValue.getter()
{
  if (*v0)
  {
    return 0x74757074756FLL;
  }

  else
  {
    return 0x7475706E69;
  }
}

uint64_t sub_1B8AB8418(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74757074756FLL;
  }

  else
  {
    v3 = 0x7475706E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x74757074756FLL;
  }

  else
  {
    v5 = 0x7475706E69;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B8AF0EA8();
  }

  return v8 & 1;
}

uint64_t sub_1B8AB84B8()
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8AB8534(uint64_t a1)
{
  sub_1B8AF05F8();
}

uint64_t sub_1B8AB859C(uint64_t a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8AB8620@<X0>(char *a3@<X8>)
{
  v4 = sub_1B8AF0BE8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1B8AB867C(uint64_t *a1@<X8>)
{
  v2 = 0x7475706E69;
  if (*v1)
  {
    v2 = 0x74757074756FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MultimodalSanitizer.Request.init(prompt:origin:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for MultimodalSanitizer.Request(0);
  v7 = v6[6];
  v8 = sub_1B8AF04E8();
  result = (*(*(v8 - 8) + 32))(a3, a1, v8);
  *(a3 + v6[5]) = v5;
  *(a3 + v7) = 0;
  *(a3 + v6[7]) = 0;
  return result;
}

uint64_t MultimodalSanitizer.Request.withKeepGoing(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1B8ABE1B4(v2, a2, type metadata accessor for MultimodalSanitizer.Request);
  result = type metadata accessor for MultimodalSanitizer.Request(0);
  *(a2 + *(result + 28)) = a1;
  return result;
}

uint64_t MultimodalSanitizer.Request.withSignals(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B8ABE1B4(v2, a2, type metadata accessor for MultimodalSanitizer.Request);
  v5 = *(type metadata accessor for MultimodalSanitizer.Request(0) + 24);

  *(a2 + v5) = a1;
  return result;
}

uint64_t MultimodalSanitizer.Response.safe.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = v4 & v6;
  v8 = (v3 + 63) >> 6;
  while (v7)
  {
    v9 = v1;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if ((*(*(*v0 + 56) + 12 * (v10 | (v9 << 6))) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 1;
    }

    v7 = *(v5 + 8 * v9);
    ++v1;
    if (v7)
    {
      v1 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t MultimodalSanitizer.Response.sensitive.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = v4 & v6;
  v8 = (v3 + 63) >> 6;
  while (v7)
  {
    v9 = v1;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if (*(*(*v0 + 56) + 12 * (v10 | (v9 << 6)) + 1) == 1)
    {
      return 1;
    }
  }

  while (1)
  {
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 0;
    }

    v7 = *(v5 + 8 * v9);
    ++v1;
    if (v7)
    {
      v1 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t MultimodalSanitizer.Response.signals.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B8AB89E0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = a3;
  v23 = a4;
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FE0, &qword_1B8AFA620);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FE8, &qword_1B8AFA628);
  v18 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FF0, &qword_1B8AFA630);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8ABF38C();
  sub_1B8AF1058();
  v15 = (v12 + 8);
  if (v23)
  {
    v25 = 1;
    sub_1B8ABF3E0();
    sub_1B8AF0C88();
    v16 = v20;
    sub_1B8AF0C98();
    (*(v19 + 8))(v7, v16);
  }

  else
  {
    v24 = 0;
    sub_1B8ABF434();
    sub_1B8AF0C88();
    sub_1B8AF0C98();
    (*(v18 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1B8AB8CD0()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_1B8AB8D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000021 && 0x80000001B8B06480 == a2;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B8B064B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B8AB8DEC(uint64_t a1)
{
  v2 = sub_1B8ABF38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB8E28(uint64_t a1)
{
  v2 = sub_1B8ABF38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AB8E64(uint64_t a1)
{
  v2 = sub_1B8ABF434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB8EA0(uint64_t a1)
{
  v2 = sub_1B8ABF434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AB8EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8AF0EA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8AB8F74(uint64_t a1)
{
  v2 = sub_1B8ABF3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AB8FB0(uint64_t a1)
{
  v2 = sub_1B8ABF3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AB8FEC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B8ABEE58(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1B8AB9040()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = sub_1B8AD7338(v1, v2, v3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v8;
}

uint64_t sub_1B8AB9114(uint64_t a1)
{
  v2 = sub_1B8ABEC60();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AB9150(uint64_t a1)
{
  v2 = sub_1B8ABEC60();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B8AB918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for MultimodalSanitizer.Request(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(v7 + 24));
  if (v10)
  {
    v40 = a1;
    v41 = v7;
    v42 = a2;
    v43 = v3;
    v11 = v10 + 56;
    v12 = 1 << *(v10 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v10 + 56);
    v48 = v2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration;
    v15 = (v12 + 63) >> 6;

    v17 = 0;
    v47 = v10;
    v44 = v15;
    v45 = v10 + 56;
    if (v14)
    {
      while (1)
      {
        v18 = v17;
LABEL_10:
        v19 = *(*(v10 + 48) + (__clz(__rbit64(v14)) | (v18 << 6)));
        v20 = *(v48 + *(type metadata accessor for MultimodalSanitizer.Configuration(0) + 20));
        if (!*(v20 + 16))
        {
          break;
        }

        sub_1B8AF1018();
        v46 = v19;
        if (v19)
        {
          v21 = 0x65636E656C6F6976;
        }

        else
        {
          v21 = 1701998439;
        }

        if (v19)
        {
          v22 = 0xE800000000000000;
        }

        else
        {
          v22 = 0xE400000000000000;
        }

        sub_1B8AF05F8();

        v23 = sub_1B8AF1038();
        v24 = -1 << *(v20 + 32);
        v25 = v23 & ~v24;
        if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
LABEL_36:
          v19 = v46;
          goto LABEL_37;
        }

        v14 &= v14 - 1;
        v49 = ~v24;
        while (1)
        {
          v26 = *(*(v20 + 48) + v25) ? 0x65636E656C6F6976 : 1701998439;
          v27 = *(*(v20 + 48) + v25) ? 0xE800000000000000 : 0xE400000000000000;
          if (v26 == v21 && v27 == v22)
          {
            break;
          }

          v29 = sub_1B8AF0EA8();

          if (v29)
          {
            goto LABEL_33;
          }

          v25 = (v25 + 1) & v49;
          if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

LABEL_33:
        v17 = v18;
        v10 = v47;
        v15 = v44;
        v11 = v45;
        if (!v14)
        {
          goto LABEL_7;
        }
      }

      if (v19)
      {
        v21 = 0x65636E656C6F6976;
      }

      else
      {
        v21 = 1701998439;
      }

LABEL_37:
      if (v19)
      {
        v35 = 0xE800000000000000;
      }

      else
      {
        v35 = 0xE400000000000000;
      }

      sub_1B8AB6C40();
      swift_allocError();
      *v36 = v21;
      *(v36 + 8) = v35;
      *(v36 + 16) = 0;
      swift_willThrow();
    }

    else
    {
LABEL_7:
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v15)
        {

          v37 = v41;
          v38 = *(v40 + *(v41 + 28));
          v39 = v42;
          result = sub_1B8ABE1B4(v40, v42, type metadata accessor for MultimodalSanitizer.Request);
          *(v39 + *(v37 + 28)) = v38;
          return result;
        }

        v14 = *(v11 + 8 * v18);
        ++v17;
        if (v14)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v30 = *(a1 + *(v7 + 28));
    v31 = v2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration;
    v32 = v7;
    v33 = *(v31 + *(type metadata accessor for MultimodalSanitizer.Configuration(0) + 20));
    sub_1B8ABE1B4(a1, v9, type metadata accessor for MultimodalSanitizer.Request);
    v34 = *(v32 + 24);

    *&v9[v34] = v33;
    sub_1B8ABE1B4(v9, a2, type metadata accessor for MultimodalSanitizer.Request);
    *(a2 + *(v32 + 28)) = v30;
    return sub_1B8ABE3BC(v9, type metadata accessor for MultimodalSanitizer.Request);
  }

  return result;
}

uint64_t MultimodalSanitizer.sanitize(request:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1B8AF04B8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for MultimodalSanitizer.Request(0);
  v3[10] = swift_task_alloc();
  v5 = sub_1B8AF02F8();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8AB96D8, 0, 0);
}

uint64_t sub_1B8AB96D8(uint64_t a1)
{
  sub_1B8AF02E8();
  v2 = sub_1B8AF0318();
  v3 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v2, v3, v5, "MultimodalSanitizer.sanitize", "", v4, 2u);
    MEMORY[0x1B8CC7D70](v4, -1, -1);
  }

  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[11];
  v9 = v1[12];

  (*(v9 + 16))(v6, v7, v8);
  sub_1B8AF0368();
  swift_allocObject();
  v1[15] = sub_1B8AF0358();
  (*(v9 + 8))(v7, v8);
  v1[16] = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_logger;
  v10 = sub_1B8AF0388();
  v11 = sub_1B8AF08E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B8A3C000, v10, v11, "Begin MultimodalSanitizer sanitize", v12, 2u);
    MEMORY[0x1B8CC7D70](v12, -1, -1);
  }

  v13 = v1[10];
  v14 = v1[4];

  result = sub_1B8AB918C(v14, v13);
  v16 = *(v1[10] + *(v1[9] + 24));
  v1[17] = v16;
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = v1[5];
  result = sub_1B8AE6D54(MEMORY[0x1E69E7CC0]);
  v1[2] = result;
  v18 = *(v17 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_backends);
  v1[18] = v18;
  v19 = *(v18 + 16);
  v1[19] = v19;
  if (v19)
  {
    v1[20] = 0;
    if (*(v18 + 16))
    {
      v20 = 0;
      while (1)
      {
        v1[21] = *__swift_project_boxed_opaque_existential_1((v18 + 40 * v20 + 32), *(v18 + 40 * v20 + 56));
        result = sub_1B8AF0438();
        v1[22] = result;
        v21 = *(result + 16);
        v1[23] = v21;
        if (v21)
        {
          break;
        }

        v23 = v1[19];
        v22 = v1[20];

        if (v22 + 1 == v23)
        {
          goto LABEL_17;
        }

        v20 = v1[20] + 1;
        v1[20] = v20;
        v18 = v1[18];
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      __break(1u);
    }

    v1[24] = 0;
    if (*(result + 16))
    {
      (*(v1[7] + 16))(v1[8], result + ((*(v1[7] + 80) + 32) & ~*(v1[7] + 80)), v1[6]);
      v24 = swift_task_alloc();
      v1[25] = v24;
      *v24 = v1;
      v24[1] = sub_1B8AB9CF4;
      v25 = v1[10];
      v26 = v1[8];

      return sub_1B8AB421C(v26, v25, (v1 + 2));
    }

    goto LABEL_24;
  }

LABEL_17:
  v27 = v1[17];

  v29 = sub_1B8AB6CF8(v28);
  LOBYTE(v27) = sub_1B8ABA5C8(v27, v29);

  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v30 = sub_1B8AF0388();
  v31 = sub_1B8AF08E8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1B8A3C000, v30, v31, "End MultimodalSanitizer sanitize", v32, 2u);
    MEMORY[0x1B8CC7D70](v32, -1, -1);
  }

  v33 = v1[15];
  v34 = v1[10];
  v35 = v1[5];
  v36 = v1[3];

  *v36 = v1[2];
  sub_1B8ABE3BC(v34, type metadata accessor for MultimodalSanitizer.Request);
  sub_1B8ABA320(v35, "MultimodalSanitizer.sanitize", 28, 2, v33);

  v37 = v1[1];

  return v37();
}

uint64_t sub_1B8AB9CF4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {

    v3 = sub_1B8ABA138;
  }

  else
  {
    v3 = sub_1B8AB9E44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8AB9E44()
{
  v1 = v0[24] + 1;
  if (v1 == v0[23])
  {
    while (1)
    {
      v3 = v0[19];
      v2 = v0[20];

      if (v2 + 1 == v3)
      {
        break;
      }

      v5 = v0[20] + 1;
      v0[20] = v5;
      v6 = v0[18];
      if (v5 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v0[21] = *__swift_project_boxed_opaque_existential_1((v6 + 40 * v5 + 32), *(v6 + 40 * v5 + 56));
      result = sub_1B8AF0438();
      v0[22] = result;
      v7 = *(result + 16);
      v0[23] = v7;
      if (v7)
      {
        v1 = 0;
        goto LABEL_7;
      }
    }

    v11 = v0[17];

    v13 = sub_1B8AB6CF8(v12);
    LOBYTE(v11) = sub_1B8ABA5C8(v11, v13);

    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    v14 = sub_1B8AF0388();
    v15 = sub_1B8AF08E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B8A3C000, v14, v15, "End MultimodalSanitizer sanitize", v16, 2u);
      MEMORY[0x1B8CC7D70](v16, -1, -1);
    }

    v17 = v0[15];
    v18 = v0[10];
    v19 = v0[5];
    v20 = v0[3];

    *v20 = v0[2];
    sub_1B8ABE3BC(v18, type metadata accessor for MultimodalSanitizer.Request);
    sub_1B8ABA320(v19, "MultimodalSanitizer.sanitize", 28, 2, v17);

    v21 = v0[1];

    return v21();
  }

  else
  {
    result = v0[22];
LABEL_7:
    v0[24] = v1;
    if (v1 >= *(result + 16))
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
    }

    else
    {
      (*(v0[7] + 16))(v0[8], result + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)) + *(v0[7] + 72) * v1, v0[6]);
      v8 = swift_task_alloc();
      v0[25] = v8;
      *v8 = v0;
      v8[1] = sub_1B8AB9CF4;
      v9 = v0[10];
      v10 = v0[8];

      return sub_1B8AB421C(v10, v9, (v0 + 2));
    }
  }

  return result;
}

uint64_t sub_1B8ABA138()
{
  v1 = v0[10];

  sub_1B8ABE3BC(v1, type metadata accessor for MultimodalSanitizer.Request);
  v2 = v0[26];
  v3 = v2;
  v4 = sub_1B8AF0388();
  v5 = sub_1B8AF08D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B8A3C000, v4, v5, "End MultimodalSanitizer sanitize with error: %@", v6, 0xCu);
    sub_1B8A897C4(v7, &qword_1EBA96B08, &qword_1B8AF94B0);
    MEMORY[0x1B8CC7D70](v7, -1, -1);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v10 = v0[15];
  v11 = v0[5];

  swift_willThrow();
  sub_1B8ABA320(v11, "MultimodalSanitizer.sanitize", 28, 2, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8ABA320(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B8ABA5C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if (v8)
  {
    do
    {
      v11 = __clz(__rbit64(v8));
      v27 = (v8 - 1) & v8;
LABEL_13:
      v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      sub_1B8AF1018();
      v15 = v14 ? 0x65636E656C6F6976 : 1701998439;
      v16 = v14 ? 0xE800000000000000 : 0xE400000000000000;
      sub_1B8AF05F8();

      v17 = sub_1B8AF1038();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = *(*(a2 + 48) + v19) ? 0x65636E656C6F6976 : 1701998439;
        v22 = *(*(a2 + 48) + v19) ? 0xE800000000000000 : 0xE400000000000000;
        if (v21 == v15 && v22 == v16)
        {
          break;
        }

        v24 = sub_1B8AF0EA8();

        if (v24)
        {
          goto LABEL_35;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_35:
      v9 = v25;
      v3 = v26;
      v8 = v27;
    }

    while (v27);
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t MultimodalSanitizer.deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_signposter;
  v2 = sub_1B8AF0328();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_logger;
  v4 = sub_1B8AF03A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1B8ABE3BC(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration, type metadata accessor for MultimodalSanitizer.Configuration);

  return v0;
}

uint64_t MultimodalSanitizer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_signposter;
  v2 = sub_1B8AF0328();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_logger;
  v4 = sub_1B8AF03A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1B8ABE3BC(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML19MultimodalSanitizer_configuration, type metadata accessor for MultimodalSanitizer.Configuration);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

void *sub_1B8ABA9E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96F38, &unk_1B8AFA3A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96DE0, &qword_1B8AF9CB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8ABAB18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96F40, &qword_1B8AFA3B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8ABAC24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8ABAD30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96F30, &qword_1B8AFA3A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B8ABAE58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96E80, &qword_1B8AFA100);
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

void *sub_1B8ABAF4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B8ABB094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96F48, &qword_1B8AFA3C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B8ABB198(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965A8, &qword_1B8AF6720);
  result = sub_1B8AF0A68();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B8ABB5D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B8AF0A68();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
LABEL_13:
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v19 = -1 << *(v9 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v16 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v16 + 8 * v21);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v20) & ~*(v16 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v14 &= v14 - 1;
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      ++*(v9 + 16);
    }

    while (1)
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = v11[v18];
      ++v10;
      if (v14)
      {
        v10 = v18;
        goto LABEL_13;
      }
    }

    v26 = 1 << *(v7 + 32);
    if (v26 >= 64)
    {
      bzero((v7 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v26;
    }

    v6 = v5;
    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_1B8ABB7F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965F0, &unk_1B8AF6780);
  result = sub_1B8AF0A68();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B8ABBA7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D8, &qword_1B8AF6748);
  result = sub_1B8AF0A68();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B8ABBCDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965A8, &qword_1B8AF6720);
  result = sub_1B8AF0A68();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B8ABC0E8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B8AF0A68();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
LABEL_13:
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v18 = -1 << *(v9 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v15 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v15 + 8 * v20);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v16 = __clz(__rbit64((-1 << v19) & ~*(v15 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v13 &= v13 - 1;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      ++*(v9 + 16);
    }

    while (1)
    {
      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v6 = v5;
        goto LABEL_24;
      }

      v13 = *(v7 + 56 + 8 * v17);
      ++v10;
      if (v13)
      {
        v10 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

LABEL_24:
    *v6 = v9;
  }

  return result;
}