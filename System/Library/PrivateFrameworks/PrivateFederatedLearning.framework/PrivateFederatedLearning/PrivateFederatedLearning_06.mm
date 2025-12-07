void *static PFLTask.load(from:taskPreferences:excludedFilePostfixes:)(char *a1, uint64_t a2, uint64_t a3)
{
  v109 = a3;
  v103 = a2;
  v123[4] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for PFLTaskPreferences(0);
  MEMORY[0x28223BE20](v5 - 8);
  v104 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A4510B4();
  MEMORY[0x28223BE20](v7 - 8);
  v118 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_21A450AB4();
  v106 = *(v107 - 1);
  MEMORY[0x28223BE20](v107);
  v105 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A450BE4();
  v113 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v110 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v97 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v97 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v97 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v97 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v97 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v97 - v28;
  v30 = v121;
  v31 = sub_21A443404(a1);
  if (v30)
  {
    return v3;
  }

  v32 = v31;
  v120 = v21;
  v121 = v27;
  v116 = v24;
  v100 = v18;
  v108 = 0;
  v101 = v15;
  v102 = v29;
  v33 = *(v31 + 2);
  v112 = v10;
  v117 = v33;
  if (!v33)
  {
    v36 = MEMORY[0x277D84F90];
    v35 = v113;
    v37 = v116;
LABEL_17:
    if (v36[2])
    {
      v47 = *(v35 + 16);
      v119 = ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v48 = v37;
      v121 = v47;
      (v47)(v37, &v119[v36], v10);

      v49 = v102;
      v50 = v48;
      v51 = *(v35 + 32);
      v51(v102, v50, v10);
      v52 = v108;
      v53 = sub_21A450C04();
      if (v52)
      {

        (*(v35 + 8))(v49, v10);
      }

      else
      {
        v114 = v51;
        v116 = (v35 + 32);
        v118 = (v35 + 16);
        v120 = v32;
        v111 = 0;
        v55 = v53;
        v56 = v54;
        v57 = objc_opt_self();
        v58 = sub_21A450C54();
        v123[0] = 0;
        v59 = [v57 JSONObjectWithData:v58 options:0 error:v123];

        if (v59)
        {
          v99 = v55;
          v60 = v123[0];
          sub_21A451694();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
          if (swift_dynamicCast())
          {
            v98 = v56;
            v61 = v122;
            v123[0] = 0xD000000000000013;
            v123[1] = 0x800000021A45BA80;
            v62 = v106;
            v63 = v105;
            v64 = v107;
            (*(v106 + 104))(v105, *MEMORY[0x277CC91D8], v107);
            sub_21A3ED2CC();
            v65 = v100;
            sub_21A450BC4();
            (*(v62 + 8))(v63, v64);
            sub_21A4510A4();
            v66 = v111;
            v67 = sub_21A451044();
            v69 = v102;
            if (v66)
            {

              sub_21A3E759C(v99, v98);

              v3 = (v113 + 8);
              v70 = *(v113 + 8);
              v70(v65, v10);
              v70(v69, v10);
            }

            else
            {
              v108 = 0;
              v106 = v68;
              v105 = v67;
              v78 = *(v113 + 8);
              v111 = (v113 + 8);
              v107 = v78;
              (v78)(v65, v10);
              v79 = v120;
              if (v117)
              {
                v80 = 0;
                v115 = &v119[v120];
                v81 = MEMORY[0x277D84F90];
                v82 = v101;
                v83 = v121;
                do
                {
                  if (v80 >= *(v79 + 2))
                  {
                    __break(1u);
                  }

                  v84 = *(v113 + 72);
                  (v83)(v82, &v115[v84 * v80], v10);
                  v122 = &unk_282B3FF30;

                  v86 = sub_21A443A20(v85);
                  v87 = v122;
                  MEMORY[0x28223BE20](v86);
                  *(&v97 - 2) = v82;
                  v88 = v108;
                  v89 = sub_21A4412B8(sub_21A444338, (&v97 - 4), v87);
                  v108 = v88;

                  if (v89)
                  {
                    (v107)(v82, v10);
                    v79 = v120;
                  }

                  else
                  {
                    v114(v110, v82, v10);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v123[0] = v81;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_21A3E49DC(0, *(v81 + 2) + 1, 1);
                      v81 = v123[0];
                    }

                    v91 = v119;
                    v79 = v120;
                    v93 = *(v81 + 2);
                    v92 = *(v81 + 3);
                    if (v93 >= v92 >> 1)
                    {
                      sub_21A3E49DC((v92 > 1), v93 + 1, 1);
                      v79 = v120;
                      v81 = v123[0];
                    }

                    *(v81 + 2) = v93 + 1;
                    v94 = &v91[v81 + v93 * v84];
                    v10 = v112;
                    v114(v94, v110, v112);
                    v82 = v101;
                  }

                  ++v80;
                  v83 = v121;
                }

                while (v117 != v80);
              }

              else
              {
                v81 = MEMORY[0x277D84F90];
              }

              (v107)(v102, v10);

              sub_21A3E759C(v99, v98);
              v95 = v104;
              sub_21A3D83D8(v103, v104);
              type metadata accessor for PFLTask(0);
              v3 = swift_allocObject();
              v3[5] = v81;
              v3[6] = 0;
              v96 = v106;
              v3[2] = v105;
              v3[3] = v96;
              v3[4] = v61;
              sub_21A40BADC(v95, v3 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences);
              v3[6] = 0;
            }

            return v3;
          }

          sub_21A3E759C(v99, v56);
        }

        else
        {
          v71 = v123[0];

          v72 = sub_21A450A84();

          swift_willThrow();
          sub_21A3E759C(v55, v56);
        }

        (*(v113 + 8))(v102, v10);
      }
    }

    else
    {
    }

    if (qword_27CD28170 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_29;
  }

  v34 = 0;
  v35 = v113;
  v114 = (v113 + 16);
  v111 = (v113 + 8);
  v119 = (v113 + 32);
  v36 = MEMORY[0x277D84F90];
  v115 = a1;
  while (v34 < *(v32 + 2))
  {
    v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v39 = *(v35 + 72);
    (*(v35 + 16))(v121, &v32[v38 + v39 * v34], v10);
    if (sub_21A450B14() == 0x6A2E657069636572 && v40 == 0xEB000000006E6F73)
    {

LABEL_11:
      v42 = *v119;
      (*v119)(v120, v121, v10);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v123[0] = v36;
      if ((v43 & 1) == 0)
      {
        sub_21A3E49DC(0, v36[2] + 1, 1);
        v36 = v123[0];
      }

      v45 = v36[2];
      v44 = v36[3];
      if (v45 >= v44 >> 1)
      {
        sub_21A3E49DC((v44 > 1), v45 + 1, 1);
        v36 = v123[0];
      }

      v36[2] = v45 + 1;
      v46 = v36 + v38 + v45 * v39;
      v10 = v112;
      v42(v46, v120, v112);
      v35 = v113;
      goto LABEL_5;
    }

    v41 = sub_21A4519B4();

    if (v41)
    {
      goto LABEL_11;
    }

    (*v111)(v121, v10);
LABEL_5:
    ++v34;
    v37 = v116;
    if (v117 == v34)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_47:
  swift_once();
LABEL_29:
  v73 = sub_21A450F24();
  __swift_project_value_buffer(v73, qword_27CD28C90);
  v74 = sub_21A450F04();
  v3 = sub_21A451574();
  if (os_log_type_enabled(v74, v3))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_21A3C2000, v74, v3, "Failed to load task due to recipe file missing or malformed.", v75, 2u);
    MEMORY[0x21CEDB220](v75, -1, -1);
  }

  sub_21A3EC940();
  swift_allocError();
  *v76 = 54;
  swift_willThrow();
  return v3;
}

id sub_21A443404(uint64_t a1)
{
  v2 = v1;
  v45[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21A450BE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v43 = v38 - v9;
  LOBYTE(v45[0]) = 0;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  sub_21A450B94();
  v12 = sub_21A451054();

  v13 = [v11 fileExistsAtPath:v12 isDirectory:v45];

  if (!v13 || (v45[0] & 1) == 0)
  {
    (*(v5 + 16))(v8, a1, v4);
    v20 = sub_21A408668(0, 1, 1, MEMORY[0x277D84F90]);
    v21 = v20[2];
    v22 = v20[3];
    v16 = (v21 + 1);
    if (v21 < v22 >> 1)
    {
LABEL_7:
      v20[2] = v16;
      v23 = v20;
      (*(v5 + 32))(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v8, v4);
      return v23;
    }

LABEL_33:
    v20 = sub_21A408668((v22 > 1), v16, 1, v20);
    goto LABEL_7;
  }

  v14 = [v10 defaultManager];
  v15 = sub_21A450B34();
  v45[0] = 0;
  v16 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:4 error:v45];

  v17 = v45[0];
  if (!v16)
  {
    v23 = v45[0];
    sub_21A450A84();

    swift_willThrow();
    return v23;
  }

  v18 = sub_21A4512E4();
  v19 = v17;

  v40 = *(v18 + 16);
  if (v40)
  {
    v21 = 0;
    v38[1] = v5 + 16;
    v39 = (v5 + 8);
    v8 = MEMORY[0x277D84F90];
    v38[0] = v18;
    while (1)
    {
      v22 = *(v18 + 16);
      if (v21 >= v22)
      {
        break;
      }

      v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v42 = *(v5 + 72);
      v26 = v43;
      (*(v5 + 16))(v43, v18 + v25 + v42 * v21, v4);
      v23 = v44;
      v27 = sub_21A443404(v26);
      if (v2)
      {
        (*v39)(v26, v4);

        return v23;
      }

      v16 = v27;
      v41 = v25;
      v28 = v5;
      v5 = 0;
      v29 = v26;
      v30 = v4;
      (*v39)(v29, v4);
      v31 = v16[2];
      v4 = v8[2];
      v32 = v4 + v31;
      if (__OFADD__(v4, v31))
      {
        goto LABEL_30;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v32 > v8[3] >> 1)
      {
        if (v4 <= v32)
        {
          v34 = v4 + v31;
        }

        else
        {
          v34 = v4;
        }

        v8 = sub_21A408668(isUniquelyReferenced_nonNull_native, v34, 1, v8);
      }

      v2 = 0;
      v4 = v30;
      v5 = v28;
      if (v16[2])
      {
        v22 = v8[2];
        if (((v8[3] >> 1) - v22) < v31)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v31)
        {
          v35 = v8[2];
          v36 = __OFADD__(v35, v31);
          v37 = v35 + v31;
          if (v36)
          {
            __break(1u);
          }

          v8[2] = v37;
        }
      }

      else
      {

        if (v31)
        {
          goto LABEL_31;
        }
      }

      ++v21;
      v18 = v38[0];
      if (v40 == v21)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_27:
  v23 = v8;

  return v23;
}

uint64_t sub_21A4438B4(uint64_t *a1)
{
  sub_21A450B84();
  v1 = sub_21A451234();

  return v1 & 1;
}

void *sub_21A443918(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21A40840C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28588, &qword_21A456488);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21A443A20(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21A408CB8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t PFLTask.deinit()
{

  sub_21A3D843C(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences);
  return v0;
}

uint64_t PFLTask.__deallocating_deinit()
{

  sub_21A3D843C(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences);

  return swift_deallocClassInstance();
}

uint64_t sub_21A443BE0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_21A443C34(unint64_t result, uint64_t a2, unint64_t a3)
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
  result = sub_21A451184();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_21A451284();
}

uint64_t sub_21A443CE4(uint64_t a1)
{
  v2 = sub_21A450BE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v74 = MEMORY[0x277D84F90];
  sub_21A3E49BC(0, v6, 0);
  v7 = v74;
  v9 = *(v3 + 16);
  v8 = v3 + 16;
  v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v68 = *(v8 + 56);
  v69 = v9;
  v11 = (v8 - 8);
  do
  {
    v12 = v8;
    (v69)(v5, v10, v2);
    v13 = sub_21A450AD4();
    (*v11)(v5, v2);
    v74 = v7;
    v15 = *(v7 + 16);
    v14 = *(v7 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      sub_21A3E49BC((v14 > 1), v16, 1);
      v16 = v15 + 1;
      v7 = v74;
    }

    *(v7 + 16) = v16;
    *(v7 + 8 * v15 + 32) = v13;
    v10 += v68;
    --v6;
    v8 = v12;
  }

  while (v6);
  v74 = MEMORY[0x277D84F90];
  v67 = v16;
  sub_21A3E499C(0, v16, 0);
  v17 = 0;
  v18 = v74;
  v19 = *(v74 + 16);
  do
  {
    v20 = *(*(v7 + 32 + 8 * v17) + 16);
    v74 = v18;
    v21 = v18[3];
    if (v19 + v17 >= v21 >> 1)
    {
      sub_21A3E499C((v21 > 1), v19 + v17 + 1, 1);
      v18 = v74;
    }

    v22 = v17 + 1;
    v18[2] = v19 + v17 + 1;
    v18[v19 + 4 + v17] = v20;
    v17 = v22;
  }

  while (v15 + 1 != v22);
  v23 = v18[4];
  if (v19 + v22 != 1)
  {
    v24 = v19 + v15;
    if (v19 + v15 >= 4)
    {
      v25 = v24 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v26 = vdupq_n_s64(v23);
      v27 = (v18 + 7);
      v28 = v24 & 0xFFFFFFFFFFFFFFFCLL;
      v29 = v26;
      do
      {
        v26 = vbslq_s8(vcgtq_s64(v26, v27[-1]), v27[-1], v26);
        v29 = vbslq_s8(vcgtq_s64(v29, *v27), *v27, v29);
        v27 += 2;
        v28 -= 4;
      }

      while (v28);
      v30 = vbslq_s8(vcgtq_s64(v29, v26), v26, v29);
      v31 = vextq_s8(v30, v30, 8uLL).u64[0];
      v23 = vbsl_s8(vcgtd_s64(v31, v30.i64[0]), *v30.i8, v31);
      if (v24 == (v24 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 1;
    }

    v32 = v19 - v25 + v22;
    v33 = &v18[v25 + 4];
    do
    {
      v35 = *v33++;
      v34 = v35;
      if (v35 < v23)
      {
        v23 = v34;
      }

      --v32;
    }

    while (v32);
  }

LABEL_20:

  if ((v23 & 0x8000000000000000) == 0)
  {
    if (v23)
    {
      v37 = 0;
      v66 = v15 + 1;
      v38 = MEMORY[0x277D84F90];
      v39 = v67;
      v65 = v23;
      do
      {
        v68 = v37 + 1;
        v69 = v38;
        v74 = MEMORY[0x277D84F90];
        result = sub_21A3E48DC(0, v39, 0);
        v40 = v74;
        v41 = 32;
        v42 = v66;
        do
        {
          v43 = *(v7 + v41);
          if (v37 >= *(v43 + 16))
          {
            __break(1u);
            goto LABEL_46;
          }

          v44 = v43 + 16 * v37;
          v46 = *(v44 + 32);
          v45 = *(v44 + 40);
          v74 = v40;
          v47 = *(v40 + 16);
          v48 = *(v40 + 24);

          if (v47 >= v48 >> 1)
          {
            result = sub_21A3E48DC((v48 > 1), v47 + 1, 1);
            v40 = v74;
          }

          *(v40 + 16) = v47 + 1;
          v49 = v40 + 16 * v47;
          *(v49 + 32) = v46;
          *(v49 + 40) = v45;
          v41 += 8;
          --v42;
        }

        while (v42);
        v50 = sub_21A3D9D50(v40);

        if (*(v50 + 16) != 1)
        {

          v38 = v69;
          if (*(v69 + 2))
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }

        v51 = sub_21A4516B4();
        v38 = v69;
        if (v51 == 1 << *(v50 + 32))
        {

          if (!*(v38 + 2))
          {
            goto LABEL_43;
          }

          goto LABEL_41;
        }

        v52 = sub_21A443BE0(v51, *(v50 + 36), 0, v50);
        v54 = v53;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_21A408CB8(0, *(v38 + 2) + 1, 1, v38);
        }

        v55 = v65;
        v39 = v67;
        v37 = v68;
        v57 = *(v38 + 2);
        v56 = *(v38 + 3);
        if (v57 >= v56 >> 1)
        {
          v59 = sub_21A408CB8((v56 > 1), v57 + 1, 1, v38);
          v39 = v67;
          v38 = v59;
        }

        *(v38 + 2) = v57 + 1;
        v58 = &v38[16 * v57];
        *(v58 + 4) = v52;
        *(v58 + 5) = v54;
      }

      while (v37 != v55);

      if (*(v38 + 2))
      {
        goto LABEL_41;
      }
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_41:
        v74 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
        sub_21A402B04();
        v60 = sub_21A450FD4();
        v62 = v61;

        v74 = 47;
        v75 = 0xE100000000000000;
        MEMORY[0x21CED98B0](v60, v62);

        v72 = 2830174;
        v73 = 0xE300000000000000;
        v70 = 47;
        v71 = 0xE100000000000000;
        sub_21A3ED2CC();
        v63 = sub_21A451654();

        return v63;
      }
    }

LABEL_43:

    return 0;
  }

LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_21A4442E4()
{
  result = qword_27CD28D08;
  if (!qword_27CD28D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28D08);
  }

  return result;
}

uint64_t sub_21A444360(uint64_t a1)
{
  result = type metadata accessor for PFLTaskPreferences(319);
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

void sub_21A444584(uint64_t a1)
{
  sub_21A450D14();
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x277D84A28];
    sub_21A444684(319, &qword_27CD28D58, MEMORY[0x277D837D0]);
    if (v3 <= 0x3F)
    {
      sub_21A444684(319, &unk_27CD28D60, v2);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A444684(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21A4513B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21A4446D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A450D14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21A444738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_21A450D14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21A4447B8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));

  return v2;
}

uint64_t sub_21A4447F0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_21A444828@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D78, &qword_21A459290);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v230 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v230 - v8;
  v10 = sub_21A450D14();
  v247 = *(v10 - 8);
  v248 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v242 = &v230 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v243 = &v230 - v13;
  v14 = type metadata accessor for CKRecipeDescriptorRecord(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v230 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v16[7];
  *&v18[v19] = &unk_282B3FBA0;
  v240 = v16[9];
  *&v18[v240] = &unk_282B3FBD0;
  v241 = v16[10];
  *&v18[v241] = &unk_282B3FC00;
  v239 = v16[12];
  *&v18[v239] = &unk_282B3FC30;
  v20 = v16[14];
  *&v18[v20] = &unk_282B3FC60;
  v249 = a1;
  if (sub_21A4515C4() == *aPolicy_1 && v21 == unk_27CD28D28)
  {
  }

  else
  {
    v22 = sub_21A4519B4();

    if ((v22 & 1) == 0)
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v60 = sub_21A450F24();
      __swift_project_value_buffer(v60, qword_27CD28C90);
      v61 = v249;
      v62 = sub_21A450F04();
      v63 = sub_21A451574();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = v15;
        v65 = swift_slowAlloc();
        v66 = v14;
        v67 = swift_slowAlloc();
        v250 = v67;
        *v65 = 136315138;
        v68 = sub_21A4515C4();
        v70 = sub_21A3E2554(v68, v69, &v250);

        *(v65 + 4) = v70;
        _os_log_impl(&dword_21A3C2000, v62, v63, "Invalid recordType: %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        v71 = v67;
        v14 = v66;
        MEMORY[0x21CEDB220](v71, -1, -1);
        v72 = v65;
        v15 = v64;
        MEMORY[0x21CEDB220](v72, -1, -1);
      }

      else
      {
      }

      goto LABEL_24;
    }
  }

  v244 = v14;
  v245 = v15;
  v246 = a2;
  v23 = [v249 values];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D70, &qword_21A459288);
  v25 = sub_21A450F64();

  if (!*(v25 + 16) || (v26 = sub_21A3DCA2C(0x61645F7472617473, 0xEE00656D69746574), (v27 & 1) == 0))
  {

    (*(v247 + 56))(v9, 1, 1, v248);
    goto LABEL_19;
  }

  v237 = v20;
  v238 = v18;
  v28 = *(*(v25 + 56) + 8 * v26);
  swift_unknownObjectRetain();

  v250 = v28;
  v29 = v248;
  v30 = swift_dynamicCast();
  v31 = v247;
  v32 = *(v247 + 56);
  v32(v9, v30 ^ 1u, 1, v29);
  v33 = *(v31 + 48);
  if (v33(v9, 1, v29) == 1)
  {
LABEL_19:
    sub_21A44715C(v9);
    v15 = v245;
    a2 = v246;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v54 = sub_21A450F24();
    __swift_project_value_buffer(v54, qword_27CD28C90);
    v55 = sub_21A450F04();
    v56 = sub_21A451574();
    v57 = os_log_type_enabled(v55, v56);
    v14 = v244;
    if (v57)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_21A3C2000, v55, v56, "Failed at parsing start_datetime", v58, 2u);
      MEMORY[0x21CEDB220](v58, -1, -1);
    }

    goto LABEL_24;
  }

  v235 = *(v31 + 32);
  v235(v243, v9, v29);
  v34 = [v249 values];
  v236 = v24;
  v35 = sub_21A450F64();

  if (!*(v35 + 16) || (v36 = sub_21A3DCA2C(0x657461645F646E65, 0xEC000000656D6974), (v37 & 1) == 0))
  {

    v32(v7, 1, 1, v248);
    v15 = v245;
    a2 = v246;
    goto LABEL_31;
  }

  v38 = *(*(v35 + 56) + 8 * v36);
  swift_unknownObjectRetain();

  v250 = v38;
  v39 = v248;
  v40 = swift_dynamicCast();
  v32(v7, v40 ^ 1u, 1, v39);
  v41 = v33(v7, 1, v39);
  v15 = v245;
  a2 = v246;
  if (v41 == 1)
  {
LABEL_31:
    sub_21A44715C(v7);
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v73 = sub_21A450F24();
    __swift_project_value_buffer(v73, qword_27CD28C90);
    v74 = sub_21A450F04();
    v75 = sub_21A451574();
    v76 = os_log_type_enabled(v74, v75);
    v77 = v247;
    if (v76)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_21A3C2000, v74, v75, "Failed at parsing end_datetime", v78, 2u);
      MEMORY[0x21CEDB220](v78, -1, -1);
    }

    else
    {
    }

    (*(v77 + 8))(v243, v248);
    goto LABEL_37;
  }

  v42 = v242;
  v235(v242, v7, v39);
  v43 = [v249 values];
  v44 = sub_21A450F64();

  if (!*(v44 + 16) || (v45 = sub_21A3DCA2C(0x74726F686F63, 0xE600000000000000), (v46 & 1) == 0))
  {

    goto LABEL_39;
  }

  v47 = *(*(v44 + 56) + 8 * v45);
  swift_unknownObjectRetain();

  v250 = v47;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v79 = v247;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v80 = sub_21A450F24();
    __swift_project_value_buffer(v80, qword_27CD28C90);
    v81 = sub_21A450F04();
    v82 = sub_21A451574();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_21A3C2000, v81, v82, "Failed at parsing cohort", v83, 2u);
      MEMORY[0x21CEDB220](v83, -1, -1);
    }

    v84 = *(v79 + 8);
    v85 = v248;
    v84(v42, v248);
    v84(v243, v85);
    goto LABEL_37;
  }

  v48 = v252;
  v49 = [v249 values];
  v50 = sub_21A450F64();

  if (*(v50 + 16) && (v51 = sub_21A3DCA2C(0x73656369766564, 0xE700000000000000), (v52 & 1) != 0))
  {
    v53 = *(*(v50 + 56) + 8 * v51);
    swift_unknownObjectRetain();

    v250 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    if (swift_dynamicCast())
    {
      *&v238[v19] = v252;
      goto LABEL_50;
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v86 = sub_21A450F24();
  __swift_project_value_buffer(v86, qword_27CD28C90);
  v87 = sub_21A450F04();
  v88 = sub_21A451574();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_21A3C2000, v87, v88, "devices not set in the CK record. Interpreting this as all device types.", v89, 2u);
    MEMORY[0x21CEDB220](v89, -1, -1);
  }

LABEL_50:
  v90 = [v249 values];
  v91 = sub_21A450F64();

  if (!*(v91 + 16))
  {

LABEL_60:
    v103 = v247;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v104 = sub_21A450F24();
    __swift_project_value_buffer(v104, qword_27CD28C90);
    v105 = sub_21A450F04();
    v106 = sub_21A451574();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_21A3C2000, v105, v106, "Failed at parsing iteration", v107, 2u);
      MEMORY[0x21CEDB220](v107, -1, -1);
    }

    v108 = *(v103 + 8);
    v109 = v248;
    v108(v42, v248);
    v108(v243, v109);
    goto LABEL_65;
  }

  v92 = sub_21A3DCA2C(0x6F69746172657469, 0xE90000000000006ELL);
  if ((v93 & 1) == 0)
  {

    goto LABEL_59;
  }

  v94 = *(*(v91 + 56) + 8 * v92);
  swift_unknownObjectRetain();

  v250 = v94;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    a2 = v246;
    goto LABEL_60;
  }

  v95 = v252;
  v96 = [v249 values];
  v97 = sub_21A450F64();

  v98 = *(v97 + 16);
  v234 = v48;
  v233 = v95;
  if (v98 && (v99 = sub_21A3DCA2C(0x65676175676E616CLL, 0xE900000000000073), (v100 & 1) != 0))
  {
    v101 = *(*(v97 + 56) + 8 * v99);
    swift_unknownObjectRetain();

    v250 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    v102 = swift_dynamicCast();
    a2 = v246;
    if (v102)
    {
      *&v238[v240] = v252;
      goto LABEL_72;
    }
  }

  else
  {

    a2 = v246;
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v110 = sub_21A450F24();
  __swift_project_value_buffer(v110, qword_27CD28C90);
  v111 = sub_21A450F04();
  v112 = sub_21A451574();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_21A3C2000, v111, v112, "languages not set in the CK record. Interpreting this as all languages.", v113, 2u);
    MEMORY[0x21CEDB220](v113, -1, -1);
  }

LABEL_72:
  v114 = [v249 values];
  v115 = sub_21A450F64();

  if (*(v115 + 16) && (v116 = sub_21A3DCA2C(0x73656C61636F6CLL, 0xE700000000000000), (v117 & 1) != 0))
  {
    v118 = *(*(v115 + 56) + 8 * v116);
    swift_unknownObjectRetain();

    v250 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    if (swift_dynamicCast())
    {
      *&v238[v241] = v252;
      goto LABEL_82;
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v119 = sub_21A450F24();
  __swift_project_value_buffer(v119, qword_27CD28C90);
  v120 = sub_21A450F04();
  v121 = sub_21A451574();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&dword_21A3C2000, v120, v121, "locales not set in the CK record. Interpreting this as all locales.", v122, 2u);
    MEMORY[0x21CEDB220](v122, -1, -1);
  }

LABEL_82:
  v123 = [v249 values];
  v124 = sub_21A450F64();

  if (!*(v124 + 16) || (v125 = sub_21A3DCA2C(0x695F6E6967756C70, 0xE900000000000064), (v126 & 1) == 0))
  {

    goto LABEL_90;
  }

  v127 = *(*(v124 + 56) + 8 * v125);
  swift_unknownObjectRetain();

  v252 = v127;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_90:
    v134 = v247;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v135 = sub_21A450F24();
    __swift_project_value_buffer(v135, qword_27CD28C90);
    v136 = sub_21A450F04();
    v137 = sub_21A451574();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_21A3C2000, v136, v137, "Failed at parsing plugin_id", v138, 2u);
      MEMORY[0x21CEDB220](v138, -1, -1);

      v139 = *(v134 + 8);
      v140 = v248;
      v139(v42, v248);
      v139(v243, v140);
    }

    else
    {

      v141 = *(v134 + 8);
      v142 = v248;
      v141(v42, v248);
      v141(v243, v142);
    }

LABEL_65:

LABEL_37:
    v14 = v244;
LABEL_24:

    return (*(v15 + 56))(a2, 1, 1, v14);
  }

  v128 = v251;
  v241 = v250;
  v129 = [v249 values];
  v130 = sub_21A450F64();

  if (*(v130 + 16) && (v131 = sub_21A3DCA2C(0xD000000000000013, 0x800000021A45BF00), (v132 & 1) != 0))
  {
    v133 = *(*(v130 + 56) + 8 * v131);
    swift_unknownObjectRetain();

    v250 = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    if (swift_dynamicCast())
    {
      *&v238[v239] = v252;
      goto LABEL_102;
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v143 = sub_21A450F24();
  __swift_project_value_buffer(v143, qword_27CD28C90);
  v144 = sub_21A450F04();
  v145 = sub_21A451574();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    *v146 = 0;
    _os_log_impl(&dword_21A3C2000, v144, v145, "population_category not set in the CK record. Interpreting this as $all.", v146, 2u);
    MEMORY[0x21CEDB220](v146, -1, -1);
  }

LABEL_102:
  v147 = [v249 values];
  v148 = sub_21A450F64();

  if (!*(v148 + 16) || (v149 = sub_21A3DCA2C(0x695F657069636572, 0xE900000000000064), (v150 & 1) == 0))
  {

    goto LABEL_110;
  }

  v151 = *(*(v148 + 56) + 8 * v149);
  swift_unknownObjectRetain();

  v252 = v151;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_110:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v158 = sub_21A450F24();
    __swift_project_value_buffer(v158, qword_27CD28C90);
    v159 = sub_21A450F04();
    v160 = sub_21A451574();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&dword_21A3C2000, v159, v160, "Failed at parsing recipe_id", v161, 2u);
      MEMORY[0x21CEDB220](v161, -1, -1);
    }

    goto LABEL_114;
  }

  v152 = v250;
  v240 = v251;
  v153 = [v249 values];
  v154 = sub_21A450F64();

  if (*(v154 + 16) && (v155 = sub_21A3DCA2C(0x736E6F69676572, 0xE700000000000000), (v156 & 1) != 0))
  {
    v157 = *(*(v154 + 56) + 8 * v155);
    swift_unknownObjectRetain();

    v250 = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    if (swift_dynamicCast())
    {
      *&v238[v237] = v252;
      goto LABEL_121;
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v164 = sub_21A450F24();
  __swift_project_value_buffer(v164, qword_27CD28C90);
  v165 = sub_21A450F04();
  v166 = sub_21A451574();
  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    *v167 = 0;
    _os_log_impl(&dword_21A3C2000, v165, v166, "regions not set in the CK record. Interpreting this as all regions.", v167, 2u);
    MEMORY[0x21CEDB220](v167, -1, -1);
  }

LABEL_121:
  v168 = [v249 values];
  v169 = sub_21A450F64();

  if (!*(v169 + 16) || (v170 = sub_21A3DCA2C(0x676E696C706D6173, 0xED0000657461725FLL), (v171 & 1) == 0))
  {

LABEL_138:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v198 = sub_21A450F24();
    __swift_project_value_buffer(v198, qword_27CD28C90);
    v159 = sub_21A450F04();
    v199 = sub_21A451574();
    if (!os_log_type_enabled(v159, v199))
    {
      goto LABEL_114;
    }

    v200 = swift_slowAlloc();
    *v200 = 0;
    v201 = "Failed at parsing sampling_rate";
    goto LABEL_142;
  }

  v172 = *(*(v169 + 56) + 8 * v170);
  swift_unknownObjectRetain();

  v250 = v172;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_138;
  }

  v173 = v252;
  v174 = [v249 values];
  v175 = sub_21A450F64();

  if (!*(v175 + 16) || (v176 = sub_21A3DCA2C(0x737574617473, 0xE600000000000000), (v177 & 1) == 0))
  {

LABEL_146:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v202 = sub_21A450F24();
    __swift_project_value_buffer(v202, qword_27CD28C90);
    v159 = sub_21A450F04();
    v199 = sub_21A451574();
    if (!os_log_type_enabled(v159, v199))
    {
      goto LABEL_114;
    }

    v200 = swift_slowAlloc();
    *v200 = 0;
    v201 = "Failed at parsing status";
    goto LABEL_142;
  }

  v178 = *(*(v175 + 56) + 8 * v176);
  swift_unknownObjectRetain();

  v252 = v178;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_146;
  }

  v237 = v250;
  v239 = v251;
  v179 = [v249 values];
  v180 = sub_21A450F64();

  if (!*(v180 + 16) || (v181 = sub_21A3DCA2C(0x635F746567726174, 0xEF61697265746972), (v182 & 1) == 0))
  {

LABEL_152:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v203 = sub_21A450F24();
    __swift_project_value_buffer(v203, qword_27CD28C90);
    v159 = sub_21A450F04();
    v199 = sub_21A451574();
    if (!os_log_type_enabled(v159, v199))
    {
      goto LABEL_114;
    }

    v200 = swift_slowAlloc();
    *v200 = 0;
    v201 = "Failed at reading target_criteria_str from CK record.";
    goto LABEL_142;
  }

  v183 = *(*(v180 + 56) + 8 * v181);
  swift_unknownObjectRetain();

  v252 = v183;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_152;
  }

  v231 = v250;
  v232 = v251;
  v184 = [v249 values];
  v185 = sub_21A450F64();

  if (!*(v185 + 16) || (v186 = sub_21A3DCA2C(0x64695F6B736174, 0xE700000000000000), (v187 & 1) == 0))
  {

LABEL_158:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v204 = sub_21A450F24();
    __swift_project_value_buffer(v204, qword_27CD28C90);
    v159 = sub_21A450F04();
    v199 = sub_21A451574();
    if (!os_log_type_enabled(v159, v199))
    {
      goto LABEL_114;
    }

    v200 = swift_slowAlloc();
    *v200 = 0;
    v201 = "Failed at parsing task_id";
LABEL_142:
    _os_log_impl(&dword_21A3C2000, v159, v199, v201, v200, 2u);
    MEMORY[0x21CEDB220](v200, -1, -1);
LABEL_114:

    v162 = v248;
    v163 = *(v247 + 8);
    v163(v242, v248);
    v163(v243, v162);

    v15 = v245;
    a2 = v246;
    v14 = v244;
    goto LABEL_24;
  }

  v188 = *(*(v185 + 56) + 8 * v186);
  swift_unknownObjectRetain();

  v252 = v188;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_158;
  }

  v189 = v250;
  v190 = v251;
  v191 = [v249 values];
  v192 = sub_21A450F64();

  if (*(v192 + 16) && (v193 = sub_21A3DCA2C(0xD000000000000015, 0x800000021A45B9A0), (v194 & 1) != 0))
  {
    v195 = *(*(v192 + 56) + 8 * v193);
    swift_unknownObjectRetain();

    v252 = v195;
    if (swift_dynamicCast())
    {
      v196 = v251;
      v197 = &v238[v244[20]];
      *v197 = v250;
      *(v197 + 1) = v196;
      goto LABEL_169;
    }
  }

  else
  {
  }

  v205 = &v238[v244[20]];
  *v205 = v241;
  v205[1] = v128;
  v206 = qword_27CD28170;

  if (v206 != -1)
  {
    swift_once();
  }

  v207 = sub_21A450F24();
  __swift_project_value_buffer(v207, qword_27CD28C90);
  v208 = sub_21A450F04();
  v209 = sub_21A451574();
  if (os_log_type_enabled(v208, v209))
  {
    v210 = swift_slowAlloc();
    *v210 = 0;
    _os_log_impl(&dword_21A3C2000, v208, v209, "privacy_budget_prefix not set in the CK record, it is default to plugin bundle id", v210, 2u);
    MEMORY[0x21CEDB220](v210, -1, -1);
  }

LABEL_169:
  v211 = [v249 values];
  v212 = sub_21A450F64();

  if (!*(v212 + 16) || (v213 = sub_21A3DCA2C(0x7364656573, 0xE500000000000000), (v214 & 1) == 0))
  {

    goto LABEL_174;
  }

  v215 = *(*(v212 + 56) + 8 * v213);
  swift_unknownObjectRetain();

  v250 = v215;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D80, &unk_21A459298);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_174:

    v216 = MEMORY[0x277D84F90];
    goto LABEL_175;
  }

  v216 = v252;

LABEL_175:
  v217 = v238;
  v218 = v248;
  v219 = v235;
  v235(v238, v243, v248);
  v220 = v244;
  v219(v217 + v244[5], v242, v218);
  *(v217 + v220[6]) = v234;
  *(v217 + v220[8]) = v233;
  v221 = (v217 + v220[11]);
  v222 = v240;
  *v221 = v241;
  v221[1] = v128;
  v223 = (v217 + v220[13]);
  *v223 = v152;
  v223[1] = v222;
  *(v217 + v220[15]) = v173;
  v224 = (v217 + v220[16]);
  v225 = v239;
  *v224 = v237;
  v224[1] = v225;
  v226 = (v217 + v220[17]);
  v227 = v232;
  *v226 = v231;
  v226[1] = v227;
  v228 = (v217 + v220[18]);
  *v228 = v189;
  v228[1] = v190;
  *(v217 + v220[19]) = v216;
  v229 = v246;
  sub_21A41310C(v217, v246);
  (*(v245 + 56))(v229, 0, 1, v220);
  return sub_21A4471C4(v217);
}

uint64_t sub_21A446940@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A450BE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CKPayloadRecord(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_21A4515C4() == *aPayload && v12 == unk_27CD28D38)
  {
  }

  else
  {
    v14 = sub_21A4519B4();

    if ((v14 & 1) == 0)
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v15 = sub_21A450F24();
      __swift_project_value_buffer(v15, qword_27CD28C90);
      a1 = a1;
      v16 = sub_21A450F04();
      v17 = sub_21A451574();

      if (!os_log_type_enabled(v16, v17))
      {

        goto LABEL_30;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v58 = v19;
      *v18 = 136315138;
      v20 = sub_21A4515C4();
      v22 = sub_21A3E2554(v20, v21, &v58);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_21A3C2000, v16, v17, "Invalid recordType: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x21CEDB220](v19, -1, -1);
      MEMORY[0x21CEDB220](v18, -1, -1);

LABEL_29:
LABEL_30:
      v42 = 1;
      return (*(v9 + 56))(a2, v42, 1, v8);
    }
  }

  v57 = v5;
  v23 = [a1 values];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D70, &qword_21A459288);
  v24 = sub_21A450F64();

  if (!*(v24 + 16) || (v25 = sub_21A3DCA2C(0x695F6E6967756C70, 0xE900000000000064), (v26 & 1) == 0))
  {

    goto LABEL_23;
  }

  v27 = *(*(v24 + 56) + 8 * v25);
  swift_unknownObjectRetain();

  v60 = v27;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v43 = sub_21A450F24();
    __swift_project_value_buffer(v43, qword_27CD28C90);
    v44 = sub_21A450F04();
    v45 = sub_21A451574();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_28;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Failed at parsing plugin_id";
LABEL_27:
    _os_log_impl(&dword_21A3C2000, v44, v45, v47, v46, 2u);
    MEMORY[0x21CEDB220](v46, -1, -1);
LABEL_28:

    goto LABEL_29;
  }

  v55 = v58;
  v56 = v59;
  v28 = [a1 values];
  v29 = sub_21A450F64();

  if (!*(v29 + 16) || (v30 = sub_21A3DCA2C(0x657069636572, 0xE600000000000000), (v31 & 1) == 0))
  {

    goto LABEL_34;
  }

  v32 = *(*(v29 + 56) + 8 * v30);
  swift_unknownObjectRetain();

  v60 = v32;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v49 = sub_21A450F24();
    __swift_project_value_buffer(v49, qword_27CD28C90);
    v44 = sub_21A450F04();
    v45 = sub_21A451574();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_28;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Failed at parsing recipe";
    goto LABEL_27;
  }

  v33 = v58;
  v54 = v59;
  v34 = [a1 values];
  v35 = sub_21A450F64();

  if (!*(v35 + 16) || (sub_21A3DCA2C(0x656D686361747461, 0xEA0000000000746ELL), (v36 & 1) == 0))
  {

LABEL_39:

LABEL_40:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v50 = sub_21A450F24();
    __swift_project_value_buffer(v50, qword_27CD28C90);
    v44 = sub_21A450F04();
    v51 = sub_21A451574();
    if (os_log_type_enabled(v44, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_21A3C2000, v44, v51, "Failed at parsing attachment", v52, 2u);
      MEMORY[0x21CEDB220](v52, -1, -1);
    }

    sub_21A3E759C(v33, v54);
    goto LABEL_28;
  }

  swift_unknownObjectRetain();

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {

    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v38 = [v37 fileURL];
  if (!v38)
  {
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v39 = v38;
  sub_21A450B74();
  swift_unknownObjectRelease();

  v40 = v56;
  *v11 = v55;
  v11[1] = v40;
  v41 = v54;
  v11[2] = v33;
  v11[3] = v41;
  (*(v57 + 32))(v11 + *(v8 + 24), v7, v4);
  sub_21A4470F8(v11, a2);
  v42 = 0;
  return (*(v9 + 56))(a2, v42, 1, v8);
}

uint64_t sub_21A4470F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKPayloadRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A44715C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D78, &qword_21A459290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A4471C4(uint64_t a1)
{
  v2 = type metadata accessor for CKRecipeDescriptorRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A447248(uint64_t a1)
{
  result = sub_21A450BE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

PrivateFederatedLearning::DediscoError_optional __swiftcall DediscoError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue + 0x80;
  if ((rawValue - 9600) >= 0x12)
  {
    v2 = 18;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_21A4472FC()
{
  result = qword_27CD28D98;
  if (!qword_27CD28D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28D98);
  }

  return result;
}

uint64_t sub_21A447350()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 9600);
  return sub_21A451B24();
}

uint64_t sub_21A4473D0(uint64_t a1)
{
  v2 = *v1;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v2 + 9600);
  return sub_21A451B24();
}

unint64_t sub_21A447434(uint64_t a1)
{
  result = sub_21A3D3C88();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21A44745C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A447604();
  v5 = sub_21A41B1AC();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for DediscoError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DediscoError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A447604()
{
  result = qword_27CD28DA0;
  if (!qword_27CD28DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28DA0);
  }

  return result;
}

void *sub_21A44767C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = sub_21A413278(a3, 0);
  v4 = sub_21A3DAD38(v3);

  return v4;
}

uint64_t sub_21A4476CC(float a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455E00;
  *(inited + 32) = a1;
  sub_21A4477F8(inited, a2);
  v6 = v5;
  swift_setDeallocating();
  return v6;
}

void *sub_21A447758(uint64_t a1, unint64_t a2)
{
  v2 = sub_21A413278(a2, 0);
  v3 = sub_21A3DAD38(v2);

  return v3;
}

void *sub_21A4477AC(unint64_t a1)
{
  v1 = sub_21A413278(a1, 0);
  v2 = sub_21A3DAD38(v1);

  return v2;
}

void sub_21A4477F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = sub_21A451344();
      v4[2] = a2;
      bzero(v4 + 4, 4 * a2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = *(a1 + 16);
    if (v5 >= a2)
    {
      v5 = a2;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v5 <= v4[2])
    {
      v6 = 0;
      if (v5 < 8)
      {
        goto LABEL_14;
      }

      if (v4 - a1 < 0x20)
      {
        goto LABEL_14;
      }

      v6 = v5 & 0x7FFFFFFFFFFFFFF8;
      v7 = (a1 + 48);
      v8 = v4 + 6;
      v9 = v5 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v10 = *v7;
        *(v8 - 1) = *(v7 - 1);
        *v8 = v10;
        v7 += 2;
        v8 += 2;
        v9 -= 8;
      }

      while (v9);
      if (v5 != v6)
      {
LABEL_14:
        v11 = v5 - v6;
        v12 = 4 * v6 + 32;
        v13 = (v4 + v12);
        v14 = (a1 + v12);
        do
        {
          v15 = *v14++;
          *v13++ = v15;
          --v11;
        }

        while (v11);
      }

LABEL_16:
      sub_21A3DAD38(v4);

      return;
    }
  }

  __break(1u);
}

uint64_t Dictionary<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_21A4515F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v52 = a1;
  v53 = a2;
  v50 = 46;
  v51 = 0xE100000000000000;
  sub_21A3ED2CC();
  v19 = sub_21A451644();
  v20 = v19[2];
  if (!v20)
  {

    goto LABEL_6;
  }

  v47 = v13;
  v48 = v10;
  v21 = v20 - 1;
  if (v20 == 1)
  {
    v22 = v19[4];
    v23 = v19[5];

    v52 = v22;
    v53 = v23;
    sub_21A450FA4();

    v24 = *(a4 - 8);
    if ((*(v24 + 48))(v18, 1, a4) != 1)
    {
      *(a5 + 24) = a4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
      return (*(v24 + 32))(boxed_opaque_existential_1, v18, a4);
    }

    result = (*(v48 + 8))(v18, v9);
LABEL_6:
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  v43 = v19 + 2;
  v44 = v9;
  v45 = a5;
  v49 = a4 - 8;
  v26 = v19;

  v46 = v26;
  v27 = v26 + 5;
  do
  {
    if (!v21)
    {
      __break(1u);
      goto LABEL_23;
    }

    v28 = *v27;
    v52 = *(v27 - 1);
    v53 = v28;

    sub_21A450FA4();

    v29 = *(a4 - 8);
    v30 = *(v29 + 48);
    if (v30(v16, 1, a4) == 1)
    {
      swift_unknownObjectRelease();

      result = (*(v48 + 8))(v16, v44);
      goto LABEL_19;
    }

    sub_21A450F94();
    result = swift_dynamicCast();
    if (!result)
    {
      swift_unknownObjectRelease();

      goto LABEL_19;
    }

    v27 += 2;
    --v21;
  }

  while (v21);
  v31 = v46;
  result = swift_unknownObjectRelease();
  v32 = v31[2];
  v33 = v44;
  if (!v32)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v34 = &v43[2 * v32];
  v35 = *v34;
  v36 = v34[1];

  v52 = v35;
  v53 = v36;
  v37 = v47;
  sub_21A450FA4();

  if (v30(v37, 1, a4) == 1)
  {
    result = (*(v48 + 8))(v37, v33);
LABEL_19:
    v39 = v45;
    *v45 = 0u;
    *(v39 + 16) = 0u;
    return result;
  }

  v40 = v45;
  *(v45 + 24) = a4;
  v41 = __swift_allocate_boxed_opaque_existential_1(v40);
  return (*(v29 + 32))(v41, v37, a4);
}

unint64_t sub_21A447D80(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t sub_21A447DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v37[0] = a1;
  *(&v37[0] + 1) = a2;
  v38 = 46;
  v39 = 0xE100000000000000;
  sub_21A3ED2CC();
  v6 = sub_21A451644();
  v8 = v6 + 2;
  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_25;
  }

  if (v7 == 1)
  {
    v9 = v6[4];
    v10 = v6[5];

    if (*(a3 + 16))
    {
      v11 = sub_21A3DCA2C(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_21A3D3B94(*(a3 + 56) + 32 * v11, v37);
LABEL_11:
        *(a4 + 24) = MEMORY[0x277D84F70] + 8;
        v28 = swift_allocObject();
        *a4 = v28;
        return sub_21A3D3B38(v37, (v28 + 16));
      }

      goto LABEL_26;
    }

LABEL_25:

LABEL_26:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  sub_21A447D80(1uLL, v6);
  v16 = v15;
  v18 = v17;
  v20 = v19 >> 1;

  v21 = v20 - v18;
  if (v20 == v18)
  {
LABEL_7:
    result = swift_unknownObjectRelease();
    if (*v8)
    {
      v22 = &v8[2 * *v8];
      v23 = *v22;
      v24 = v22[1];

      if (*(a3 + 16))
      {
        v25 = sub_21A3DCA2C(v23, v24);
        v27 = v26;

        if (v27)
        {
          sub_21A3D3B94(*(a3 + 56) + 32 * v25, v37);

          goto LABEL_11;
        }
      }

      else
      {
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (v18 <= v20)
    {
      v29 = v20;
    }

    else
    {
      v29 = v18;
    }

    v30 = v29 - v18;
    v31 = (v16 + 16 * v18 + 8);
    while (v30)
    {
      if (!*(a3 + 16) || (v32 = *(v31 - 1), v33 = *v31, , v34 = sub_21A3DCA2C(v32, v33), v36 = v35, , (v36 & 1) == 0))
      {

        swift_unknownObjectRelease();
        goto LABEL_25;
      }

      sub_21A3D3B94(*(a3 + 56) + 32 * v34, v37);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {

        result = swift_unknownObjectRelease();
        goto LABEL_26;
      }

      a3 = v38;
      --v30;
      v31 += 2;
      if (!--v21)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21A4480BC(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v25 = result;
    v26 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_21A3D3B94(*(a4 + 56) + 32 * v16, &v28);
      *&v27 = v19;
      *(&v27 + 1) = v20;
      v22 = v28;
      v21 = v29;
      v31 = v28;
      v32 = v29;
      v30 = v27;
      *v9 = v27;
      v9[1] = v22;
      v9[2] = v21;
      if (v12 == v8)
      {

        v5 = v26;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 3;

      result = v12;
      v23 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v24 = v10 + 1;
    }

    else
    {
      v24 = v11;
    }

    v10 = v24 - 1;
    v8 = result;
    v5 = v26;
LABEL_23:
    result = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21A44825C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21A4497A4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21A448388(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_21A451B04();

    sub_21A451144();
    v23 = sub_21A451B24();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_21A4519B4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_21A449B18(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_21A451B04();

            sub_21A451144();
            v41 = sub_21A451B24();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_21A4519B4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_21A4498E0(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x21CEDB220](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_21A3C5104(v13);
    return v5;
  }

  result = MEMORY[0x21CEDB220](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21A4488F8(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21A3F6A50(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_21A448964(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21A448964(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21A451964();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28590, &qword_21A4564A0);
        v5 = sub_21A451344();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21A448BD4(v7, v8, a1, v4);
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
    return sub_21A448A6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21A448A6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3;
    v6 = result - a3;
LABEL_6:
    v20 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_21A3E7060(v8, v19, &qword_27CD28590, &qword_21A4564A0);
      v9 = v8 - 3;
      sub_21A3E7060((v8 - 3), v18, &qword_27CD28590, &qword_21A4564A0);
      if (v19[0] == v18[0] && v19[1] == v18[1])
      {
        sub_21A3D3BF0(v18, &qword_27CD28590, &qword_21A4564A0);
        result = sub_21A3D3BF0(v19, &qword_27CD28590, &qword_21A4564A0);
LABEL_5:
        a3 = v20 + 1;
        v5 += 48;
        --v6;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v11 = sub_21A4519B4();
      sub_21A3D3BF0(v18, &qword_27CD28590, &qword_21A4564A0);
      result = sub_21A3D3BF0(v19, &qword_27CD28590, &qword_21A4564A0);
      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = v8[1];
      v12 = v8[2];
      v14 = *v8;
      v15 = *(v8 - 2);
      *v8 = *v9;
      v8[1] = v15;
      v8[2] = *(v8 - 1);
      *v9 = v14;
      *(v8 - 2) = v13;
      v8 -= 3;
      v9[2] = v12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A448BD4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v102 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_103:
    v10 = v6;
    v6 = *v102;
    if (!*v102)
    {
      goto LABEL_144;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_106:
      v116 = result;
      v94 = *(result + 16);
      if (v94 >= 2)
      {
        v4 = 48;
        while (*a3)
        {
          v95 = *(result + 16 * v94);
          v96 = result;
          v97 = *(result + 16 * (v94 - 1) + 40);
          sub_21A44938C((*a3 + 48 * v95), (*a3 + 48 * *(result + 16 * (v94 - 1) + 32)), (*a3 + 48 * v97), v6);
          if (v10)
          {
          }

          if (v97 < v95)
          {
            goto LABEL_131;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_21A449790(v96);
          }

          if (v94 - 2 >= *(v96 + 2))
          {
            goto LABEL_132;
          }

          v98 = &v96[16 * v94];
          *v98 = v95;
          *(v98 + 1) = v97;
          v116 = v96;
          sub_21A449704(v94 - 1);
          result = v116;
          v94 = *(v116 + 16);
          if (v94 <= 1)
          {
          }
        }

        goto LABEL_142;
      }
    }

LABEL_138:
    result = sub_21A449790(v4);
    goto LABEL_106;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = &qword_21A4564A0;
  while (1)
  {
    v11 = v8++;
    v106 = v9;
    if (v8 < v7)
    {
      v12 = v7;
      v13 = v8;
      v14 = *a3;
      v15 = v13;
      sub_21A3E7060(*a3 + 48 * v13, &v114, &qword_27CD28590, &qword_21A4564A0);
      sub_21A3E7060(v14 + 48 * v11, &v112, &qword_27CD28590, &qword_21A4564A0);
      v109 = v6;
      if (v114 == v112 && v115 == v113)
      {
        v104 = 0;
      }

      else
      {
        v104 = sub_21A4519B4();
      }

      sub_21A3D3BF0(&v112, &qword_27CD28590, &qword_21A4564A0);
      result = sub_21A3D3BF0(&v114, &qword_27CD28590, &qword_21A4564A0);
      v16 = (v11 + 2);
      v100 = v11;
      v4 = 48 * v11;
      v17 = v14 + 48 * v11 + 96;
      v18 = v4 + 48;
      v19 = v15;
      v20 = v12;
      do
      {
        v6 = v16;
        v22 = v19;
        v23 = v18;
        if (v16 >= v20)
        {
          break;
        }

        sub_21A3E7060(v17, &v114, &qword_27CD28590, &qword_21A4564A0);
        sub_21A3E7060(v17 - 48, &v112, &qword_27CD28590, &qword_21A4564A0);
        v24 = v114 == v112 && v115 == v113;
        v21 = v24 ? 0 : sub_21A4519B4();
        sub_21A3D3BF0(&v112, &qword_27CD28590, &qword_21A4564A0);
        result = sub_21A3D3BF0(&v114, &qword_27CD28590, &qword_21A4564A0);
        v16 = v6 + 1;
        v17 += 48;
        v19 = v22 + 1;
        v18 = v23 + 48;
      }

      while (((v104 ^ v21) & 1) == 0);
      if (v104)
      {
        v11 = v100;
        if (v6 < v100)
        {
          goto LABEL_135;
        }

        if (v100 < v6)
        {
          v25 = v100;
          do
          {
            if (v25 != v22)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v28 = (v27 + v4);
              v29 = (v27 + v23);
              v30 = *v28;
              v31 = v28[1];
              v32 = v28[2];
              v34 = v29[1];
              v33 = v29[2];
              *v28 = *v29;
              v28[1] = v34;
              v28[2] = v33;
              v29[1] = v31;
              v29[2] = v32;
              *v29 = v30;
            }

            ++v25;
            v23 -= 48;
            v4 += 48;
          }

          while (v25 < v22--);
        }

        v8 = v6;
        v6 = v109;
      }

      else
      {
        v8 = v6;
        v6 = v109;
        v11 = v100;
      }
    }

    v35 = a3[1];
    if (v8 < v35)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_134;
      }

      if (v8 - v11 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v11)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v111 = v6;
    if (result)
    {
      v9 = v106;
    }

    else
    {
      result = sub_21A4089A0(0, *(v106 + 2) + 1, 1, v106);
      v9 = result;
    }

    v4 = *(v9 + 16);
    v49 = *(v9 + 24);
    v50 = v4 + 1;
    if (v4 >= v49 >> 1)
    {
      result = sub_21A4089A0((v49 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v50;
    v51 = v9 + 16 * v4;
    *(v51 + 32) = v11;
    *(v51 + 40) = v8;
    v107 = *v102;
    if (!*v102)
    {
      goto LABEL_143;
    }

    if (v4)
    {
      while (1)
      {
        v52 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v9 + 32);
          v54 = *(v9 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_71:
          if (v56)
          {
            goto LABEL_122;
          }

          v69 = (v9 + 16 * v50);
          v71 = *v69;
          v70 = v69[1];
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_125;
          }

          v75 = (v9 + 32 + 16 * v52);
          v77 = *v75;
          v76 = v75[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_129;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v50 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v79 = (v9 + 16 * v50);
        v81 = *v79;
        v80 = v79[1];
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_85:
        if (v74)
        {
          goto LABEL_124;
        }

        v82 = v9 + 16 * v52;
        v84 = *(v82 + 32);
        v83 = *(v82 + 40);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_127;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_92:
        v4 = v52 - 1;
        if (v52 - 1 >= v50)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v6 = v8;
        v90 = v9;
        v91 = *(v9 + 32 + 16 * v4);
        v92 = *(v9 + 32 + 16 * v52 + 8);
        sub_21A44938C((*a3 + 48 * v91), (*a3 + 48 * *(v9 + 32 + 16 * v52)), (*a3 + 48 * v92), v107);
        if (v111)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_21A449790(v90);
        }

        if (v4 >= *(v90 + 2))
        {
          goto LABEL_119;
        }

        v111 = 0;
        v93 = &v90[16 * v4];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v116 = v90;
        result = sub_21A449704(v52);
        v9 = v116;
        v50 = *(v116 + 16);
        v8 = v6;
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = v9 + 32 + 16 * v50;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_120;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_121;
      }

      v64 = (v9 + 16 * v50);
      v66 = *v64;
      v65 = v64[1];
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_123;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_126;
      }

      if (v68 >= v60)
      {
        v86 = (v9 + 32 + 16 * v52);
        v88 = *v86;
        v87 = v86[1];
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_130;
        }

        if (v55 < v89)
        {
          v52 = v50 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v6 = v111;
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_103;
    }
  }

  v36 = v11 + a4;
  if (__OFADD__(v11, a4))
  {
    goto LABEL_136;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v11)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v8 == v36)
  {
    goto LABEL_51;
  }

  v110 = v6;
  v37 = *a3;
  v38 = *a3 + 48 * v8;
  v103 = v36;
  v105 = v8;
  v101 = v11;
  v39 = v11 - v8;
LABEL_40:
  v4 = v39;
  v40 = v38;
  while (1)
  {
    sub_21A3E7060(v40, &v114, &qword_27CD28590, &qword_21A4564A0);
    v41 = v40 - 3;
    sub_21A3E7060((v40 - 3), &v112, &qword_27CD28590, &qword_21A4564A0);
    if (v114 == v112 && v115 == v113)
    {
      sub_21A3D3BF0(&v112, &qword_27CD28590, &qword_21A4564A0);
      sub_21A3D3BF0(&v114, &qword_27CD28590, &qword_21A4564A0);
LABEL_39:
      v38 += 48;
      --v39;
      if (++v105 == v103)
      {
        v8 = v103;
        v6 = v110;
        v11 = v101;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    v43 = sub_21A4519B4();
    sub_21A3D3BF0(&v112, &qword_27CD28590, &qword_21A4564A0);
    result = sub_21A3D3BF0(&v114, &qword_27CD28590, &qword_21A4564A0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (!v37)
    {
      break;
    }

    v45 = v40[1];
    v44 = v40[2];
    v46 = *v40;
    v47 = *(v40 - 2);
    *v40 = *v41;
    v40[1] = v47;
    v40[2] = *(v40 - 1);
    *v41 = v46;
    *(v40 - 2) = v45;
    v40 -= 3;
    v41[2] = v44;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_39;
    }
  }

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
  return result;
}

uint64_t sub_21A44938C(char *__dst, char *__src, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 48;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 48;
  if (v10 >= v12)
  {
    if (a4 != __src || &__src[48 * v12] <= a4)
    {
      memmove(a4, __src, 48 * v12);
    }

    v13 = &v5[48 * v12];
    if (v11 < 48 || v7 <= v8)
    {
      v19 = v7;
    }

    else
    {
      v20 = v13;
      v36 = v4;
      do
      {
        v19 = v7 - 48;
        v21 = v20 - 48;
        v6 -= 48;
        while (1)
        {
          sub_21A3E7060(v21, &v34, &qword_27CD28590, &qword_21A4564A0);
          sub_21A3E7060((v7 - 48), &v32, &qword_27CD28590, &qword_21A4564A0);
          v24 = v34 == v32 && v35 == v33;
          v25 = v24 ? 0 : sub_21A4519B4();
          sub_21A3D3BF0(&v32, &qword_27CD28590, &qword_21A4564A0);
          sub_21A3D3BF0(&v34, &qword_27CD28590, &qword_21A4564A0);
          if (v25)
          {
            break;
          }

          if (v6 + 48 != v21 + 48)
          {
            v26 = *v21;
            v27 = *(v21 + 2);
            *(v6 + 1) = *(v21 + 1);
            *(v6 + 2) = v27;
            *v6 = v26;
          }

          v22 = v21 - 48;
          v6 -= 48;
          v23 = v21 > v5;
          v21 -= 48;
          if (!v23)
          {
            v13 = v22 + 48;
            v19 = v7;
            goto LABEL_45;
          }
        }

        if (v6 + 48 != v7)
        {
          v28 = *v19;
          v29 = *(v7 - 1);
          *(v6 + 1) = *(v7 - 2);
          *(v6 + 2) = v29;
          *v6 = v28;
        }

        if (v21 + 48 <= v5)
        {
          break;
        }

        v20 = v21 + 48;
        v7 -= 48;
      }

      while (v19 > v8);
      v13 = v21 + 48;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[48 * v10] <= a4)
    {
      memmove(a4, __dst, 48 * v10);
    }

    v13 = &v5[48 * v10];
    if (v9 >= 48 && v7 < v6)
    {
      while (1)
      {
        sub_21A3E7060(v7, &v34, &qword_27CD28590, &qword_21A4564A0);
        sub_21A3E7060(v5, &v32, &qword_27CD28590, &qword_21A4564A0);
        v14 = v34 == v32 && v35 == v33;
        if (v14)
        {
          break;
        }

        v15 = sub_21A4519B4();
        sub_21A3D3BF0(&v32, &qword_27CD28590, &qword_21A4564A0);
        sub_21A3D3BF0(&v34, &qword_27CD28590, &qword_21A4564A0);
        if ((v15 & 1) == 0)
        {
          goto LABEL_16;
        }

        v16 = v7;
        v14 = v8 == v7;
        v7 += 48;
        if (!v14)
        {
          goto LABEL_17;
        }

LABEL_18:
        v8 += 48;
        if (v5 >= v13 || v7 >= v6)
        {
          goto LABEL_20;
        }
      }

      sub_21A3D3BF0(&v32, &qword_27CD28590, &qword_21A4564A0);
      sub_21A3D3BF0(&v34, &qword_27CD28590, &qword_21A4564A0);
LABEL_16:
      v16 = v5;
      v14 = v8 == v5;
      v5 += 48;
      if (v14)
      {
        goto LABEL_18;
      }

LABEL_17:
      v17 = *v16;
      v18 = *(v16 + 2);
      *(v8 + 1) = *(v16 + 1);
      *(v8 + 2) = v18;
      *v8 = v17;
      goto LABEL_18;
    }

LABEL_20:
    v19 = v8;
  }

LABEL_45:
  v30 = (v13 - v5) / 48;
  if (v19 != v5 || v19 >= &v5[48 * v30])
  {
    memmove(v19, v5, 48 * v30);
  }

  return 1;
}

uint64_t sub_21A449704(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21A449790(v3);
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

uint64_t sub_21A4497A4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21A451B04();
  sub_21A451144();
  v6 = sub_21A451B24();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21A4519B4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21A3D8BA4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21A449D3C(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_21A4498E0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_21A449B18(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_21A451B04();

        sub_21A451144();
        v19 = sub_21A451B24();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_21A4519B4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_21A449B18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28460, &unk_21A455FA0);
  result = sub_21A451704();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21A451B04();

    sub_21A451144();
    result = sub_21A451B24();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_21A449D3C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21A4516C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21A451B04();

        sub_21A451144();
        v10 = sub_21A451B24();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_21A449F00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v119 = xmmword_21A458F20;
  v120 = xmmword_21A458F20;
  if (!*(a1 + 16))
  {
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = sub_21A3DCA2C(0xD000000000000010, 0x800000021A45D0A0);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_21A3D3B94(*(a2 + 56) + 32 * v9, &v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v11 = v113;

  v13 = sub_21A3D5FE8(v12);

  v15 = sub_21A3D5FE8(v14);
  if (*(v15 + 16) <= *(v13 + 16) >> 3)
  {
    *&v116 = v13;
    sub_21A44825C(v15);

    v16 = v116;
  }

  else
  {
    v16 = sub_21A448388(v15, v13);
  }

  v18 = &off_21A455000;
  v101 = a3;
  v104 = a1;
  if (*(v16 + 16))
  {
    if (qword_27CD28170 != -1)
    {
LABEL_97:
      swift_once();
    }

    v19 = sub_21A450F24();
    __swift_project_value_buffer(v19, qword_27CD28C90);

    v20 = sub_21A450F04();
    v21 = sub_21A451584();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v116 = v23;
      *v22 = *(v18 + 451);
      v24 = sub_21A4514C4();
      v26 = sub_21A3E2554(v24, v25, &v116);
      a3 = v101;

      *(v22 + 4) = v26;
      v18 = &off_21A455000;
      _os_log_impl(&dword_21A3C2000, v20, v21, "Those keys are provided in your PFL result, but not in Dedisco metadata schema. %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x21CEDB220](v23, -1, -1);
      MEMORY[0x21CEDB220](v22, -1, -1);
    }
  }

  v28 = sub_21A3D5FE8(v27);

  v30 = sub_21A3D5FE8(v29);
  if (*(v30 + 16) <= *(v28 + 16) >> 3)
  {
    *&v116 = v28;
    sub_21A44825C(v30);

    v31 = v116;
  }

  else
  {
    v31 = sub_21A448388(v30, v28);
  }

  if (*(v31 + 16))
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v32 = sub_21A450F24();
    __swift_project_value_buffer(v32, qword_27CD28C90);

    v33 = sub_21A450F04();
    v34 = sub_21A451584();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v116 = v102;
      *v35 = *(v18 + 451);
      v36 = sub_21A4514C4();
      v38 = sub_21A3E2554(v36, v37, &v116);

      *(v35 + 4) = v38;
      _os_log_impl(&dword_21A3C2000, v33, v34, "Those keys are needed per Dedisco metadata schema, but not in your PFL result. %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x21CEDB220](v102, -1, -1);
      v39 = v35;
      a3 = v101;
      MEMORY[0x21CEDB220](v39, -1, -1);
    }
  }

  v40 = v11[2];
  v41 = MEMORY[0x277D84F90];
  if (v40)
  {
    v41 = sub_21A44FC20(v40, 0);
    v42 = sub_21A4480BC(&v116, v41 + 2, v40, v11);
    v43 = v116;
    v18 = v117;
    v44 = v118;

    sub_21A3C5104(v43);
    if (v42 != v40)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      swift_once();
LABEL_91:
      v91 = sub_21A450F24();
      __swift_project_value_buffer(v91, qword_27CD28C90);

      v92 = sub_21A450F04();
      v93 = sub_21A451584();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v113 = v95;
        *v94 = v99;
        v96 = sub_21A3E2554(v44, v18, &v113);

        *(v94 + 4) = v96;
        _os_log_impl(&dword_21A3C2000, v92, v93, "Metadata schema for %s is not type of [String: Any]", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x21CEDB220](v95, -1, -1);
        MEMORY[0x21CEDB220](v94, -1, -1);
      }

      else
      {
      }

      sub_21A3D3C88();
      swift_allocError();
      *v97 = 2;
      swift_willThrow();
      sub_21A3E759C(v119, *(&v119 + 1));
      return sub_21A3E759C(v120, *(&v120 + 1));
    }

    a3 = v101;
    v18 = &off_21A455000;
  }

  *&v116 = v41;
  sub_21A4488F8(&v116);
  if (!v5)
  {

    v45 = 0;
    v100 = v116 + 32;
    v103 = v116;
    v46 = *(v116 + 16);
    v99 = *(v18 + 451);
    v47 = v104;
    for (i = v46; ; v46 = i)
    {
      if (v45 == v46)
      {
        v114 = 0u;
        v115 = 0u;
        v48 = v46;
        v113 = 0u;
      }

      else
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        if (v45 >= *(v103 + 16))
        {
          goto LABEL_96;
        }

        sub_21A3E7060(v100 + 48 * v45, &v113, &qword_27CD28590, &qword_21A4564A0);
        v48 = v45 + 1;
      }

      v116 = v113;
      v117 = v114;
      v118 = v115;
      v18 = *(&v113 + 1);
      if (!*(&v113 + 1))
      {

        return v119;
      }

      v44 = v116;
      sub_21A3D3B38(&v117, &v113);
      if (!swift_dynamicCast())
      {

        if (qword_27CD28170 != -1)
        {
          goto LABEL_102;
        }

        goto LABEL_91;
      }

      v106 = v48;
      v49 = v112[0];
      type metadata accessor for DediscoMetadataSchema();
      swift_allocObject();

      v50 = sub_21A44C580(v49, a3);
      sub_21A447DC4(v44, v18, v47, v112);
      v11 = &unk_21A455FB0;
      sub_21A3E7060(v112, v110, &qword_27CD28468, &unk_21A455FB0);
      if (!v111)
      {
        goto LABEL_59;
      }

      sub_21A3E7060(v110, v109, &qword_27CD28468, &unk_21A455FB0);
      if (swift_dynamicCast())
      {

        sub_21A3F939C(v50 + 48, &v113);
        v51 = *(&v114 + 1);
        v52 = v115;
        __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
        v53 = (*(v52 + 8))(v107, v108, *(v50 + 24), v51, v52);
      }

      else
      {
        sub_21A3D3CDC();
        if (swift_dynamicCast())
        {

          sub_21A3F939C(v50 + 48, &v113);
          v55 = *(&v114 + 1);
          v56 = v115;
          __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
          [v107 floatValue];
          v18 = (*(v56 + 16))(*(v50 + 24), v55, v56);
          v44 = v57;

          goto LABEL_43;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
        if (!swift_dynamicCast())
        {
          if (swift_dynamicCast())
          {

            sub_21A3F939C(v50 + 48, &v113);
            v60 = *(&v114 + 1);
            v11 = v115;
            __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
            v61 = MEMORY[0x277D84F90];
            if (v107 >> 62)
            {
              v62 = sub_21A451844();
              if (!v62)
              {
                goto LABEL_87;
              }

LABEL_49:
              sub_21A3E48BC(0, v62 & ~(v62 >> 63), 0);
              if (v62 < 0)
              {
                __break(1u);
                break;
              }

              for (j = 0; j != v62; ++j)
              {
                if ((v107 & 0xC000000000000001) != 0)
                {
                  v64 = MEMORY[0x21CED9EA0](j);
                }

                else
                {
                  v64 = *(v107 + 8 * j + 32);
                }

                v65 = v64;
                [v64 floatValue];
                v67 = v66;

                v69 = *(v61 + 16);
                v68 = *(v61 + 24);
                if (v69 >= v68 >> 1)
                {
                  sub_21A3E48BC((v68 > 1), v69 + 1, 1);
                }

                *(v61 + 16) = v69 + 1;
                *(v61 + 4 * v69 + 32) = v67;
              }

              v5 = 0;
              a3 = v101;
            }

            else
            {
              v62 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v62)
              {
                goto LABEL_49;
              }

LABEL_87:
            }

            v18 = (v11[4])(v61, *(v50 + 24), v60, v11);
            v44 = v90;

            __swift_destroy_boxed_opaque_existential_0(&v113);
            v80 = v109;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v109);
LABEL_59:
            if (qword_27CD28170 != -1)
            {
              swift_once();
            }

            v70 = sub_21A450F24();
            __swift_project_value_buffer(v70, qword_27CD28C90);

            v71 = sub_21A450F04();
            v72 = sub_21A451584();

            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              *&v113 = v74;
              *v73 = v99;
              v75 = sub_21A3E2554(v44, v18, &v113);

              *(v73 + 4) = v75;
              _os_log_impl(&dword_21A3C2000, v71, v72, "Dedisco metadata schema for %s is provided, but value is not found in your PFL result, or it can't be converted to String, NSNumber, [String] or [NSNumber]", v73, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v74);
              v76 = v74;
              a3 = v101;
              MEMORY[0x21CEDB220](v76, -1, -1);
              MEMORY[0x21CEDB220](v73, -1, -1);
            }

            else
            {
            }

            sub_21A3F939C(v50 + 48, &v113);
            v77 = *(&v114 + 1);
            v78 = v115;
            __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
            v18 = (*(v78 + 40))(*(v50 + 24), v77, v78);
            v44 = v79;
            v80 = &v113;
          }

          __swift_destroy_boxed_opaque_existential_0(v80);
          v47 = v104;
          goto LABEL_66;
        }

        sub_21A3F939C(v50 + 48, &v113);
        v58 = *(&v114 + 1);
        v59 = v115;
        __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
        v53 = (*(v59 + 24))(v107, *(v50 + 24), v58, v59);
      }

      v18 = v53;
      v44 = v54;

LABEL_43:
      __swift_destroy_boxed_opaque_existential_0(&v113);
      __swift_destroy_boxed_opaque_existential_0(v109);
LABEL_66:
      sub_21A3D3BF0(v110, &qword_27CD28468, &unk_21A455FB0);
      if (*(v50 + 16) != 1 || *(v50 + 88) != 1)
      {
        sub_21A450C84();
        goto LABEL_29;
      }

      v81 = v44 >> 62;
      if ((v44 >> 62) > 1)
      {
        if (v81 == 2)
        {
          v84 = *(v18 + 2);
          v83 = *(v18 + 3);
          v82 = v83 - v84;
          if (__OFSUB__(v83, v84))
          {
            goto LABEL_99;
          }

          if (v82)
          {
            goto LABEL_76;
          }
        }
      }

      else if (v81)
      {
        v89 = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_100;
        }

        v82 = v89;
        if (v89)
        {
LABEL_76:
          if (v82 <= 14)
          {
            if (v82 < 0)
            {
              goto LABEL_101;
            }

            v87 = 0;
            v98 = v98 & 0xF00000000000000 | (v82 << 48);
            v88 = v98;
          }

          else
          {
            sub_21A450A44();
            swift_allocObject();
            v85 = sub_21A450A04();
            v86 = v85;
            if (v82 >= 0x7FFFFFFF)
            {
              sub_21A450C34();
              v87 = swift_allocObject();
              *(v87 + 16) = 0;
              *(v87 + 24) = v82;
              v88 = v86 | 0x8000000000000000;
            }

            else
            {
              v87 = v82 << 32;
              v88 = v85 | 0x4000000000000000;
            }
          }

          goto LABEL_85;
        }
      }

      else
      {
        v82 = BYTE6(v44);
        if (BYTE6(v44))
        {
          goto LABEL_76;
        }
      }

      v87 = 0;
      v88 = 0xC000000000000000;
LABEL_85:
      sub_21A450C84();
      sub_21A450C84();
      sub_21A3E759C(v87, v88);
      a3 = v101;
      v47 = v104;
LABEL_29:
      sub_21A3E759C(v18, v44);

      sub_21A3D3BF0(v112, &qword_27CD28468, &unk_21A455FB0);
      v45 = v106;
    }
  }

  __break(1u);
  return result;
}

uint64_t E5Library.__allocating_init(modelPath:devices:cachePath:functions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  E5Library.init(modelPath:devices:cachePath:functions:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

PrivateFederatedLearning::CPUBackend_optional __swiftcall CPUBackend.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A4518A4();

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

  *v2 = v5;
  return result;
}

uint64_t CPUBackend.rawValue.getter()
{
  if (*v0)
  {
    return 1936617058;
  }

  else
  {
    return 0x5F63697373616C63;
  }
}

uint64_t sub_21A44AF70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1936617058;
  }

  else
  {
    v3 = 0x5F63697373616C63;
  }

  if (v2)
  {
    v4 = 0xEB00000000757063;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1936617058;
  }

  else
  {
    v5 = 0x5F63697373616C63;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEB00000000757063;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A4519B4();
  }

  return v8 & 1;
}

uint64_t sub_21A44B018()
{
  sub_21A451B04();
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A44B09C(uint64_t a1)
{
  sub_21A451144();
}

uint64_t sub_21A44B10C(uint64_t a1)
{
  sub_21A451B04();
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A44B18C@<X0>(char *a2@<X8>)
{
  v3 = sub_21A4518A4();

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

void sub_21A44B1EC(uint64_t *a1@<X8>)
{
  v2 = 1936617058;
  if (!*v1)
  {
    v2 = 0x5F63697373616C63;
  }

  v3 = 0xEB00000000757063;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

char *E5Library.init(modelPath:devices:cachePath:functions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = e5rt_e5_compiler_config_options_create();
  sub_21A3DCF54(v8);
  if (!v7)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v9 = 6;
    swift_willThrow();
  }

  type metadata accessor for E5Library();
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t E5Library.__allocating_init(bundlePath:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  E5Library.init(bundlePath:)(a1, a2);
  return v4;
}

uint64_t E5Library.init(bundlePath:)(uint64_t a1, uint64_t a2)
{
  sub_21A4510E4();
  v4 = e5rt_program_library_create();

  sub_21A3DCF54(v4);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v6 = 6;
    swift_willThrow();
  }

  type metadata accessor for E5Library();
  swift_deallocPartialClassInstance();
  return v2;
}

void *sub_21A44BF20(uint64_t a1, uint64_t a2)
{
  type metadata accessor for E5Function();
  swift_allocObject();
  v3 = e5rt_execution_stream_create();
  sub_21A3DCF54(v3);
  if (!v2)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
  }

  return swift_deallocPartialClassInstance();
}

uint64_t sub_21A44C050()
{
  e5_bundle_path = e5rt_program_library_get_e5_bundle_path();
  result = sub_21A3DCF54(e5_bundle_path);
  if (!v0)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v3 = 6;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_21A44C138()
{
  result = qword_27CD28DB0;
  if (!qword_27CD28DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28DB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24PrivateFederatedLearning17ComputeDeviceTypeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21A44C29C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69726F6765746163;
  }

  else
  {
    v3 = 0x636972656D756ELL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB000000006C6163;
  }

  if (*a2)
  {
    v5 = 0x69726F6765746163;
  }

  else
  {
    v5 = 0x636972656D756ELL;
  }

  if (*a2)
  {
    v6 = 0xEB000000006C6163;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A4519B4();
  }

  return v8 & 1;
}

uint64_t sub_21A44C34C()
{
  sub_21A451B04();
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A44C3D8(uint64_t a1)
{
  sub_21A451144();
}

uint64_t sub_21A44C450(uint64_t a1)
{
  sub_21A451B04();
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A44C4D8@<X0>(char *a2@<X8>)
{
  v3 = sub_21A4518A4();

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

void sub_21A44C538(uint64_t *a1@<X8>)
{
  v2 = 0x636972656D756ELL;
  if (*v1)
  {
    v2 = 0x69726F6765746163;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006C6163;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21A44C580(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  v7 = sub_21A3DCA2C(1701869940, 0xE400000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v7, &v47);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = sub_21A4518A4();

  if (!v9)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if (v9 != 1)
  {
LABEL_7:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v11 = sub_21A450F24();
    __swift_project_value_buffer(v11, qword_27CD28C90);

    v12 = sub_21A450F04();
    v13 = sub_21A451584();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v47 = v15;
      *v14 = 136315138;
      v16 = sub_21A450F74();
      v18 = v17;

      v19 = sub_21A3E2554(v16, v18, &v47);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_21A3C2000, v12, v13, "Invalid metadata type in %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x21CEDB220](v15, -1, -1);
      MEMORY[0x21CEDB220](v14, -1, -1);
    }

    else
    {
    }

    sub_21A3D3C88();
    swift_allocError();
    v21 = 3;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_17:
  *(v4 + 16) = v10;
  if (!*(a1 + 16) || (v23 = sub_21A3DCA2C(0x7374656B637562, 0xE700000000000000), (v24 & 1) == 0) || (sub_21A3D3B94(*(a1 + 56) + 32 * v23, &v47), (swift_dynamicCast() & 1) == 0) || v50 < 1)
  {

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v30 = sub_21A450F24();
    __swift_project_value_buffer(v30, qword_27CD28C90);

    v31 = sub_21A450F04();
    v32 = sub_21A451584();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v47 = v34;
      *v33 = 136315138;
      v35 = sub_21A450F74();
      v37 = v36;

      v38 = sub_21A3E2554(v35, v37, &v47);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_21A3C2000, v31, v32, "Metadata buckets not found or <= 0 in %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x21CEDB220](v34, -1, -1);
      MEMORY[0x21CEDB220](v33, -1, -1);
    }

    else
    {
    }

    sub_21A3D3C88();
    swift_allocError();
    v21 = 4;
LABEL_13:
    *v20 = v21;
    swift_willThrow();
LABEL_14:

    type metadata accessor for DediscoMetadataSchema();
    swift_deallocPartialClassInstance();
    return v4;
  }

  *(v4 + 24) = v50;
  v25 = *(a1 + 16);
  if (!v25)
  {
LABEL_32:
    v29 = 0;
    goto LABEL_33;
  }

  v26 = sub_21A3DCA2C(0x616E6F6974636964, 0xEA00000000007972);
  if ((v27 & 1) == 0)
  {
    v25 = 0;
    goto LABEL_32;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v26, &v47);
  v28 = swift_dynamicCast();
  v25 = v50;
  v29 = v51;
  if (!v28)
  {
    v25 = 0;
    v29 = 0;
  }

LABEL_33:
  *(v4 + 32) = v25;
  *(v4 + 40) = v29;

  if (*(v4 + 16))
  {
    v39 = sub_21A44CCF4(a1, a2);
    if (v3)
    {

      goto LABEL_14;
    }

    v46 = v39;

    v40 = type metadata accessor for DediscoCategoricalMetadataEncoder();
    swift_allocObject();
    v41 = sub_21A3DAE00(v46);
    v42 = &off_282B40248;
  }

  else
  {

    v40 = type metadata accessor for DediscoNumericMetadataEncoder();
    v41 = swift_allocObject();
    v42 = &off_282B422B0;
  }

  v48 = v40;
  v49 = v42;
  *&v47 = v41;
  sub_21A3C50DC(&v47, v4 + 48);
  *(v4 + 88) = 0;
  if (*(a1 + 16) && (v43 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45D1B0), (v44 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v43, &v47);

    if (swift_dynamicCast())
    {
      if (v50 == 0x6375735F6B736174 && v51 == 0xEE00646564656563)
      {

        v45 = 1;
      }

      else
      {
        v45 = sub_21A4519B4();
      }

      *(v4 + 88) = v45 & 1;
    }
  }

  else
  {
  }

  return v4;
}

uint64_t sub_21A44CC28()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return swift_deallocClassInstance();
}

unint64_t sub_21A44CCA0()
{
  result = qword_27CD28DB8;
  if (!qword_27CD28DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28DB8);
  }

  return result;
}

uint64_t sub_21A44CCF4(uint64_t a1, uint64_t a2)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v5 = sub_21A450BE4();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v55 - v10;
  MEMORY[0x28223BE20](v9);
  v14 = &v55 - v13;
  if (*(a1 + 16))
  {
    v63 = v12;
    v15 = sub_21A3DCA2C(0x616E6F6974636964, 0xEA00000000007972);
    if (v16)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v15, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
      if (swift_dynamicCast())
      {
        return v64;
      }
    }

    if (*(a1 + 16))
    {
      v18 = sub_21A3DCA2C(0x616E6F6974636964, 0xEF687461705F7972);
      if (v19)
      {
        sub_21A3D3B94(*(a1 + 56) + 32 * v18, v66);
        if (swift_dynamicCast())
        {
          v56 = v11;
          v57 = v2;
          v58 = v14;
          v20 = v65;
          v21 = *(a2 + 16);
          if (!v21)
          {
LABEL_14:

            goto LABEL_28;
          }

          v22 = v64;
          v23 = *(v63 + 16);
          v60 = (v63 + 8);
          v61 = v23;
          v24 = a2 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
          v62 = v63 + 16;
          v59 = *(v63 + 72);
          while (1)
          {
            v61(v8, v24, v5);
            if (sub_21A450B14() == v22 && v25 == v20)
            {
              break;
            }

            v26 = v20;
            v27 = sub_21A4519B4();

            if (v27)
            {
              goto LABEL_16;
            }

            (*v60)(v8, v5);
            v24 += v59;
            --v21;
            v20 = v26;
            if (!v21)
            {
              goto LABEL_14;
            }
          }

LABEL_16:

          v28 = *(v63 + 32);
          v29 = v56;
          v28(v56, v8, v5);
          v30 = v58;
          v28(v58, v29, v5);
          v31 = v57;
          v32 = sub_21A450C04();
          if (v31)
          {

            (*v60)(v30, v5);
            goto LABEL_28;
          }

          v34 = v32;
          v35 = v33;
          v36 = v5;
          v37 = objc_opt_self();
          v38 = sub_21A450C54();
          v66[0] = 0;
          v39 = [v37 JSONObjectWithData:v38 options:4 error:v66];

          if (v39)
          {
            v40 = v66[0];
            sub_21A451694();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
            if ((swift_dynamicCast() & 1) == 0)
            {
              (*v60)(v58, v36);
              sub_21A3E759C(v34, v35);
              goto LABEL_28;
            }

            v41 = v64;
            if (*(v64 + 16))
            {
              v42 = sub_21A3DCA2C(0x616E6F6974636964, 0xEA00000000007972);
              if (v43)
              {
                sub_21A3D3B94(*(v41 + 56) + 32 * v42, v66);
                sub_21A3E759C(v34, v35);
                (*v60)(v58, v36);

                if (swift_dynamicCast())
                {
                  return v64;
                }

                goto LABEL_28;
              }
            }

            sub_21A3E759C(v34, v35);
          }

          else
          {
            v44 = v66[0];
            v45 = sub_21A450A84();

            swift_willThrow();
            sub_21A3E759C(v34, v35);
          }

          (*v60)(v58, v36);
        }
      }
    }
  }

LABEL_28:
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v46 = sub_21A450F24();
  __swift_project_value_buffer(v46, qword_27CD28C90);

  v47 = sub_21A450F04();
  v48 = sub_21A451584();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v66[0] = v50;
    *v49 = 136315138;
    v51 = sub_21A450F74();
    v53 = sub_21A3E2554(v51, v52, v66);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_21A3C2000, v47, v48, "Failed to locate categorical dictionary in %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x21CEDB220](v50, -1, -1);
    MEMORY[0x21CEDB220](v49, -1, -1);
  }

  sub_21A3D3C88();
  swift_allocError();
  *v54 = 5;
  return swift_willThrow();
}

uint64_t OperandDescriptor.__allocating_init(tensorDescriptor:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OperandDescriptor.init(tensorDescriptor:)(a1);
  return v2;
}

uint64_t OperandDescriptor.init(tensorDescriptor:)(uint64_t a1)
{
  v3 = e5rt_operand_desc_retain_from_tensor_desc();
  sub_21A3DCF54(v3);
  if (!v2)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
  }

  type metadata accessor for OperandDescriptor();
  swift_deallocPartialClassInstance();
  return v1;
}

void *sub_21A44D62C(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return MEMORY[0x277D84F90];
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = sub_21A4509F4();
    v8 = a1;
    if (a1)
    {
      a1 = sub_21A450A24();
      if (__OFSUB__(v6, a1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      v8 += v6 - a1;
    }

    v9 = __OFSUB__(v7, v6);
    v10 = v7 - v6;
    if (!v9)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v2)
  {
    __src = a1;
    v20 = a2;
    v21 = BYTE2(a2);
    v22 = BYTE3(a2);
    v23 = BYTE4(a2);
    v3 = (a2 >> 50) & 0x3F;
    v24 = BYTE5(a2);
    if (v3)
    {
      v4 = sub_21A44FAA4((a2 >> 50) & 0x3F, 0);
      memcpy(v4 + 4, &__src, 4 * v3);
      return v4;
    }

    return MEMORY[0x277D84F90];
  }

  v11 = a1;
  v10 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v12 = sub_21A4509F4();
  if (!v12)
  {
    sub_21A450A14();
    return MEMORY[0x277D84F90];
  }

  v13 = v12;
  v14 = sub_21A450A24();
  if (__OFSUB__(v11, v14))
  {
    goto LABEL_30;
  }

  v8 = (v11 - v14 + v13);
LABEL_16:
  v15 = sub_21A450A14();
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = v15 >= v10 ? v10 : v15;
  if ((v16 + 3) < 7)
  {
    return MEMORY[0x277D84F90];
  }

  if (v16 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 3;
  }

  v18 = sub_21A44FAA4(v17 >> 2, 0);
  memcpy(v18 + 4, v8, v17 & 0xFFFFFFFFFFFFFFFCLL);
  return v18;
}

void *sub_21A44D814(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v17 = a1;
      v18 = a2;
      v19 = BYTE2(a2);
      v20 = BYTE3(a2);
      v21 = BYTE4(a2);
      v3 = BYTE6(a2);
      v22 = BYTE5(a2);
      if (BYTE6(a2))
      {
        v4 = sub_21A44FBAC(BYTE6(a2), 0);
        v5 = v4 + 4;
        v6 = &v17;
LABEL_23:
        memcpy(v5, v6, v3);
        return v4;
      }

      return MEMORY[0x277D84F90];
    }

    v14 = a1;
    v12 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = sub_21A4509F4();
      if (!v9)
      {
        goto LABEL_17;
      }

      v15 = sub_21A450A24();
      if (!__OFSUB__(v14, v15))
      {
        v9 += v14 - v15;
        goto LABEL_17;
      }

LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v2 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = sub_21A4509F4();
  if (v9)
  {
    v10 = sub_21A450A24();
    if (__OFSUB__(v7, v10))
    {
      goto LABEL_26;
    }

    v9 += v7 - v10;
  }

  v11 = __OFSUB__(v8, v7);
  v12 = v8 - v7;
  if (v11)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

LABEL_17:
  v16 = sub_21A450A14();
  if (v16 >= v12)
  {
    v3 = v12;
  }

  else
  {
    v3 = v16;
  }

  result = MEMORY[0x277D84F90];
  if (v9 && v3)
  {
    v4 = sub_21A44FBAC(v3, 0);
    v5 = v4 + 4;
    v6 = v9;
    goto LABEL_23;
  }

  return result;
}

uint64_t static DediscoUploader.upload(binaryResult:jsonResult:task:privacyBudgetPrefix:taskSucceeded:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v15[3] = type metadata accessor for DediscoRecorderImpl();
  v15[4] = &off_282B42308;
  v15[0] = swift_allocObject();
  sub_21A44DD68(a1, a2, a3, a4, a5, a6, v15, v7);
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

BOOL sub_21A44DABC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45BC40);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_21A3D3B94(*(v1 + 56) + 32 * v2, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_21A451084();
  if (!*(v11 + 16))
  {

    goto LABEL_10;
  }

  v6 = sub_21A3DCA2C(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_21A3D3B94(*(v11 + 56) + 32 * v6, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v11 == 3157554 && v12 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v10 = sub_21A4519B4();

    return (v10 & 1) != 0;
  }
}

unint64_t sub_21A44DC7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_21A44DABC())
  {
    v4 = type metadata accessor for DediscoMetadataV2();
    v5 = swift_allocObject();
    __asm { FMOV            V0.2D, #-1.0 }

    *(v5 + 24) = _Q0;
    v11 = MEMORY[0x277D84F90];
    *(v5 + 40) = sub_21A3E4F6C(MEMORY[0x277D84F90]);
    *(v5 + 48) = sub_21A3E4F6C(v11);
    *(v5 + 16) = a1;

    v13 = &off_282B40180;
  }

  else
  {
    v4 = type metadata accessor for DediscoMetadataV1();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v5 + 24) = _Q0;

    result = sub_21A3E4F6C(MEMORY[0x277D84F90]);
    *(v5 + 40) = result;
    v13 = &off_282B40148;
  }

  a2[3] = v4;
  a2[4] = v13;
  *a2 = v5;
  return result;
}

uint64_t sub_21A44DD68(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  LODWORD(v99) = a8;
  v97 = a1;
  v98 = a2;
  v15 = sub_21A450D14();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x28223BE20](v15);
  v92 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A3F939C(a7, v114);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v114, v114[3]);
  MEMORY[0x28223BE20](v17);
  v19 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v19);
  v21 = *v19;
  v112 = type metadata accessor for DediscoRecorderImpl();
  v113 = &off_282B42308;
  v111[0] = v21;
  type metadata accessor for DediscoUploader();
  inited = swift_initStackObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v111, v112);
  MEMORY[0x28223BE20](v23);
  v25 = &v87[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v26 + 16))(v25);
  v27 = *v25;

  v95 = a6;
  v96 = a5;
  v28 = sub_21A44FCB0(a5, a6, a4, v27, inited);
  __swift_destroy_boxed_opaque_existential_0(v111);
  __swift_destroy_boxed_opaque_existential_0(v114);
  sub_21A44DC7C(a4, v110);
  v29 = a4[6];
  v100 = v28;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_21A455F00;
    *(v30 + 32) = 0xD000000000000015;
    *(v30 + 40) = 0x800000021A45D280;
    v31 = MEMORY[0x277D83B88];
    *(v30 + 48) = *(v29 + 56);
    *(v30 + 72) = v31;
    *(v30 + 80) = 0xD000000000000015;
    *(v30 + 88) = 0x800000021A45D2A0;
    v32 = *(v29 + 40);
    *(v30 + 120) = MEMORY[0x277D83A90];
    *(v30 + 96) = v32;

    v33 = sub_21A3E4F6C(v30);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109[0] = a3;
    sub_21A3D3D28(v33, sub_21A3EC9F8, 0, isUniquelyReferenced_nonNull_native, v109);

    a3 = v109[0];
  }

  else
  {
  }

  swift_beginAccess();
  v35 = a4[4];
  swift_beginAccess();
  v36 = a4[5];

  v37 = sub_21A449F00(a3, v35, v36, v99 & 1);
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0(v110);
  }

  v42 = v37;
  v43 = a4;
  v44 = v38;
  v45 = v39;
  v46 = v40;
  v89 = v43;

  v91 = v42;
  sub_21A3E700C(v42, v44);
  sub_21A3E700C(v45, v46);
  v99 = v45;
  sub_21A3E759C(v45, v46);
  v47 = v44 >> 62;
  v48 = v46;
  v90 = v46;
  if ((v44 >> 62) > 1)
  {
    if (v47 != 2)
    {
      v49 = v91;
      v50 = v44;
      sub_21A3E759C(v91, v44);
      goto LABEL_20;
    }

    v49 = v91;
    v51 = *(v91 + 16);
    v52 = *(v91 + 24);
    v50 = v44;
    sub_21A3E759C(v91, v44);
    if (v51 == v52)
    {
      goto LABEL_20;
    }
  }

  else if (v47)
  {
    v49 = v91;
    v50 = v44;
    sub_21A3E759C(v91, v44);
    if (v49 == v49 >> 32)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v49 = v91;
    v50 = v44;
    sub_21A3E759C(v91, v44);
    if ((v44 & 0xFF000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  v53 = sub_21A44D814(v49, v50);
  v54 = v53[2];
  v55 = (v53 + 4);
  while (v54)
  {
    v56 = *v55++;
    --v54;
    if (v56)
    {

      sub_21A44F2A4(v49, v50, v110);
      v88 = 1;
      goto LABEL_25;
    }
  }

LABEL_20:
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v57 = sub_21A450F24();
  __swift_project_value_buffer(v57, qword_27CD28C90);
  v58 = sub_21A450F04();
  v59 = sub_21A451574();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_21A3C2000, v58, v59, "No numeric metadata or all zeros, skip Dedisco donating", v60, 2u);
    v61 = v60;
    v48 = v90;
    MEMORY[0x21CEDB220](v61, -1, -1);
  }

  v88 = 0;
LABEL_25:
  sub_21A3E700C(v49, v50);
  v62 = v99;
  sub_21A3E700C(v99, v48);
  sub_21A3E759C(v49, v50);
  v63 = v48 >> 62;
  if ((v48 >> 62) > 1)
  {
    if (v63 != 2)
    {
      sub_21A3E759C(v62, v48);
      goto LABEL_39;
    }

    v64 = v62;
    v62 = *(v62 + 16);
    v65 = *(v64 + 24);
    sub_21A3E759C(v64, v48);
LABEL_32:
    v67 = v62 == v65;
    v62 = v99;
    if (v67)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v63)
  {
    sub_21A3E759C(v62, v48);
    v66 = v62;
    v62 = v62;
    v65 = v66 >> 32;
    goto LABEL_32;
  }

  sub_21A3E759C(v62, v48);
  if ((v48 & 0xFF000000000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v68 = sub_21A44D814(v62, v48);
  v69 = v68[2];
  v70 = (v68 + 4);
  while (v69)
  {
    v71 = *v70++;
    --v69;
    if (v71)
    {

      sub_21A44F638(v62, v48, v110);
      v49 = v91;
      goto LABEL_44;
    }
  }

LABEL_39:
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v72 = sub_21A450F24();
  __swift_project_value_buffer(v72, qword_27CD28C90);
  v73 = sub_21A450F04();
  v74 = sub_21A451574();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_21A3C2000, v73, v74, "No categorical metadata or all zeros, skip Dedisco donating", v75, 2u);
    MEMORY[0x21CEDB220](v75, -1, -1);
  }

LABEL_44:
  v77 = v97;
  v76 = v98;
  if (v98 >> 60 == 15)
  {

    if (!v88)
    {
      __swift_destroy_boxed_opaque_existential_0(v110);

      sub_21A3E759C(v49, v50);
      return sub_21A3E759C(v99, v90);
    }
  }

  else
  {
    sub_21A3E700C(v97, v98);
    sub_21A44E848(v77, v76, v110);
    sub_21A3ECC34(v77, v76);
  }

  v78 = [objc_opt_self() standardUserDefaults];
  v79 = v92;
  sub_21A450D04();
  sub_21A450CE4();
  (*(v93 + 8))(v79, v94);
  v80 = sub_21A451494();
  v101 = 0xD00000000000001FLL;
  v102 = 0x800000021A45D260;
  v81 = v95;
  v107 = v96;
  v108 = v95;
  v105 = 46;
  v106 = 0xE100000000000000;
  v103 = 95;
  v104 = 0xE100000000000000;
  sub_21A3ED2CC();
  v82 = sub_21A451654();
  MEMORY[0x21CED98B0](v82);

  v83 = sub_21A451054();

  [v78 setValue:v80 forKey:v83];

  v84 = v89;
  swift_beginAccess();
  v86 = v84[2];
  v85 = v84[3];

  sub_21A404008(v96, v81, v86, v85);

  sub_21A3E759C(v49, v50);
  sub_21A3E759C(v99, v90);
  return __swift_destroy_boxed_opaque_existential_0(v110);
}

void sub_21A44E848(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3;
  v93 = *MEMORY[0x277D85DE8];
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  (*(v10 + 24))(v9, v10);
  if (v4)
  {
    return;
  }

  v11 = 0;
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  v14 = (*(v13 + 16))(v12, v13);
  v15 = v3[4];
  if ((sub_21A4417EC() & 1) == 0)
  {
    goto LABEL_15;
  }

  v16 = *(v5 + 56);
  v91[0] = *(v5 + 40);
  v91[1] = v16;
  v91[2] = *(v5 + 72);
  v17 = sub_21A4402DC(a1, a2, v15, v91);
  v5 = v17;
  v11 = (v17 >> 62);
  if (v17 >> 62)
  {
LABEL_70:
    a2 = sub_21A451844();
  }

  else
  {
    a2 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = v15;
  if (a2)
  {
    v15 = 0;
    a1 = v5 & 0xC000000000000001;
    v18 = 0.0;
    while (1)
    {
      if (a1)
      {
        v19 = MEMORY[0x21CED9EA0](v15, v5);
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v22 = a2 >> 62;
          if ((a2 >> 62) > 1)
          {
            if (v22 == 2)
            {
              v25 = *(a1 + 16);
              v24 = *(a1 + 24);
              v26 = __OFSUB__(v24, v25);
              v23 = v24 - v25;
              if (v26)
              {
                goto LABEL_72;
              }

LABEL_21:
              if (v23 > 950000)
              {
                sub_21A3D3C88();
                swift_allocError();
                v28 = 16;
                goto LABEL_33;
              }
            }
          }

          else if (v22)
          {
            LODWORD(v23) = HIDWORD(a1) - a1;
            if (!__OFSUB__(HIDWORD(a1), a1))
            {
              v23 = v23;
              goto LABEL_21;
            }

            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
          }

          v29 = sub_21A44D62C(a1, a2);
          v30 = v29;
          v31 = v14;
          __B[0] = v31;
          v32 = *(v15 + 48);
          if (v32)
          {
            __B[0] = *(v32 + 64) * v31;
          }

          v33 = v29[2];

          v34 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_21A407D80(0, v33, 0, v30);
          }

          vDSP_vsdiv(v30 + 8, 1, __B, v34 + 8, 1, v33);

          v35 = a3[3];
          v36 = a3[4];
          __swift_project_boxed_opaque_existential_1(a3, v35);
          v37 = (*(v36 + 32))(1, v35, v36, v14);
          if (!v11)
          {
            v88 = v37;
            sub_21A3D3C88();
            v85 = swift_allocError();
            *v38 = 1;
            v39 = *(v5 + 40);
            v40 = *(v5 + 48);
            v41 = *(v5 + 56);
            v42 = *(v5 + 64);
            v43 = *(v5 + 72);
            v44 = *(v5 + 80);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21A455F10;
            *(inited + 32) = 7104112;
            *(inited + 40) = 0xE300000000000000;
            *(inited + 48) = v39;
            *(inited + 56) = v40;
            *(inited + 64) = 0x73746C75736572;
            *(inited + 72) = 0xE700000000000000;
            *(inited + 80) = v41;
            *(inited + 88) = v42;
            *(inited + 96) = v43;
            *(inited + 104) = v44;

            sub_21A40A794(inited);
            swift_setDeallocating();
            swift_arrayDestroy();
            v46 = sub_21A3DAD38(v34);
            v48 = v47;
            v49 = objc_allocWithZone(MEMORY[0x277D052F8]);
            v50 = sub_21A451054();

            v51 = [v49 initWithKey_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD28DC0, &qword_21A4597F8);
            v52 = swift_allocObject();
            *(v52 + 16) = xmmword_21A455E00;
            *(v52 + 32) = v46;
            *(v52 + 40) = v48;
            sub_21A3E700C(v46, v48);
            v53 = sub_21A4512D4();

            sub_21A3D36A8(v88);

            v54 = sub_21A450F54();

            LODWORD(v39) = [v51 recordFloatVectors:v53 metadata:v54];

            sub_21A3E759C(v46, v48);
            if (v39)
            {

              return;
            }

LABEL_45:
            swift_willThrow();
          }

LABEL_65:

          return;
        }
      }

      else
      {
        if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_14;
        }
      }

      v21 = *(v19 + 32);

      v18 = v18 + v21 * v21;
      ++v15;
      if (v20 == a2)
      {
        goto LABEL_31;
      }
    }
  }

  v18 = 0.0;
LABEL_31:
  if (vabdd_f64(sqrt(v18), v14) <= 0.0001)
  {
    if (!a2)
    {
      goto LABEL_65;
    }

    v15 = 0;
    v89 = v5 & 0xC000000000000001;
    do
    {
      if (v89)
      {
        v55 = MEMORY[0x21CED9EA0](v15, v5);
        v56 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v55 = *(v5 + 8 * v15 + 32);

        v56 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }
      }

      swift_beginAccess();
      if (*(*(v55 + 40) + 16) > 0x39FBCuLL)
      {

        sub_21A3D3C88();
        swift_allocError();
        *v57 = 16;
        swift_willThrow();

        return;
      }

      ++v15;
    }

    while (v56 != a2);
    if (v11)
    {
      v80 = sub_21A451844();
    }

    else
    {
      v80 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v81;
    v58 = 0;
    while (1)
    {
      if (v89)
      {
        v59 = MEMORY[0x21CED9EA0](v58, v5);
        v60 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v58 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v59 = *(v5 + 8 * v58 + 32);

        v60 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_69;
        }
      }

      v61 = *(v59 + 32);
      v62 = *(v15 + 48);
      v84 = v60;
      if (v62)
      {
        v61 = *(v62 + 64) * v61;
      }

      v90 = v61;
      swift_beginAccess();
      v63 = *(v59 + 40);
      v64 = *(v63 + 16);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v59 + 40) = v63;
      v66 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = sub_21A407D80(0, v64, 0, v63);
      }

      *(v59 + 40) = v66;

      vDSP_vsdiv((v63 + 32), 1, &v90, v66 + 8, 1, v64);
      swift_endAccess();

      v67 = a3[3];
      v68 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v67);
      v69 = (*(v68 + 32))(v80, v67, v68, *(v59 + 32));
      v82 = v58;
      sub_21A3D3C88();
      v86 = swift_allocError();
      *v70 = 1;

      v83 = sub_21A3DAD38(v71);
      v87 = v72;

      v73 = objc_allocWithZone(MEMORY[0x277D052F8]);
      v74 = sub_21A451054();

      v75 = [v73 initWithKey_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD28DC0, &qword_21A4597F8);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_21A455E00;
      *(v76 + 32) = v83;
      *(v76 + 40) = v87;
      sub_21A3E700C(v83, v87);
      v77 = sub_21A4512D4();

      sub_21A3D36A8(v69);

      v11 = sub_21A450F54();

      v78 = [v75 recordFloatVectors:v77 metadata:v11];

      sub_21A3E759C(v83, v87);
      if (!v78)
      {
        break;
      }

      v15 = v81;
      v58 = v82 + 1;
      if (v84 == a2)
      {
        goto LABEL_65;
      }
    }

    swift_willThrow();
    v79 = v86;
  }

  else
  {

    sub_21A3D3C88();
    swift_allocError();
    v28 = 15;
LABEL_33:
    *v27 = v28;
    swift_willThrow();
  }
}

void sub_21A44F2A4(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = (*(v8 + 40))(v7, v8);
  if (!v4)
  {
    v40 = v9;
    sub_21A3D3C88();
    v39 = swift_allocError();
    *v10 = 7;
    v12 = v3[5];
    v11 = v3[6];
    v13 = v3[7];
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v42;
    v41 = 7104112;
    v42[0] = 0xE300000000000000;
    v42[1] = v12;
    v42[2] = v11;
    v42[3] = 0x7363697274656DLL;
    v42[4] = 0xE700000000000000;
    v42[5] = v13;
    v42[6] = v14;
    v42[7] = v15;
    v42[8] = v16;

    v18 = 0;
    v19 = MEMORY[0x277D84F90];
LABEL_3:
    if (v18 <= 5)
    {
      v20 = 5;
    }

    else
    {
      v20 = v18;
    }

    v21 = v20 + 1;
    v22 = &v17[2 * v18];
    while (v18 != 5)
    {
      if (v21 == ++v18)
      {
        __break(1u);
        return;
      }

      v24 = *(v22 - 1);
      v23 = *v22;
      v22 += 2;
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v38 = v17;
        v26 = a1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v19;
        v28 = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21A3E48DC(0, *(v19 + 16) + 1, 1);
          v19 = v43;
        }

        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_21A3E48DC((v29 > 1), v30 + 1, 1);
          v19 = v43;
        }

        *(v19 + 16) = v30 + 1;
        v31 = v19 + 16 * v30;
        *(v31 + 32) = v24;
        *(v31 + 40) = v23;
        a2 = v28;
        a1 = v26;
        v17 = v38;
        goto LABEL_3;
      }
    }

    swift_arrayDestroy();
    v43 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    sub_21A402B04();
    sub_21A450FD4();

    v32 = objc_allocWithZone(MEMORY[0x277D052F8]);
    v33 = sub_21A451054();

    v34 = [v32 initWithKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD28DC0, &qword_21A4597F8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21A455E00;
    *(v35 + 32) = a1;
    *(v35 + 40) = a2;
    sub_21A3E700C(a1, a2);
    v36 = sub_21A4512D4();

    sub_21A3D36A8(v40);

    v37 = sub_21A450F54();

    LOBYTE(v32) = [v34 recordFloatVectors:v36 metadata:v37];

    if (v32)
    {
    }

    else
    {
      swift_willThrow();
    }
  }
}

void sub_21A44F638(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = (*(v8 + 48))(v7, v8);
  if (!v4)
  {
    v40 = v9;
    sub_21A3D3C88();
    v39 = swift_allocError();
    *v10 = 8;
    v12 = v3[5];
    v11 = v3[6];
    v13 = v3[7];
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v42;
    v41 = 7104112;
    v42[0] = 0xE300000000000000;
    v42[1] = v12;
    v42[2] = v11;
    v42[3] = 0x617461646174656DLL;
    v42[4] = 0xE800000000000000;
    v42[5] = v13;
    v42[6] = v14;
    v42[7] = v15;
    v42[8] = v16;

    v18 = 0;
    v19 = MEMORY[0x277D84F90];
LABEL_3:
    if (v18 <= 5)
    {
      v20 = 5;
    }

    else
    {
      v20 = v18;
    }

    v21 = v20 + 1;
    v22 = &v17[2 * v18];
    while (v18 != 5)
    {
      if (v21 == ++v18)
      {
        __break(1u);
        return;
      }

      v24 = *(v22 - 1);
      v23 = *v22;
      v22 += 2;
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v38 = v17;
        v26 = a1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v19;
        v28 = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21A3E48DC(0, *(v19 + 16) + 1, 1);
          v19 = v43;
        }

        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_21A3E48DC((v29 > 1), v30 + 1, 1);
          v19 = v43;
        }

        *(v19 + 16) = v30 + 1;
        v31 = v19 + 16 * v30;
        *(v31 + 32) = v24;
        *(v31 + 40) = v23;
        a2 = v28;
        a1 = v26;
        v17 = v38;
        goto LABEL_3;
      }
    }

    swift_arrayDestroy();
    v43 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    sub_21A402B04();
    sub_21A450FD4();

    v32 = objc_allocWithZone(MEMORY[0x277D052E8]);
    v33 = sub_21A451054();

    v34 = [v32 initWithKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD28DC0, &qword_21A4597F8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21A455E00;
    *(v35 + 32) = a1;
    *(v35 + 40) = a2;
    sub_21A3E700C(a1, a2);
    v36 = sub_21A4512D4();

    sub_21A3D36A8(v40);

    v37 = sub_21A450F54();

    LOBYTE(v32) = [v34 recordBitVectors:v36 metadata:v37];

    if (v32)
    {
    }

    else
    {
      swift_willThrow();
    }
  }
}

uint64_t DediscoUploader.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  return v0;
}

uint64_t DediscoUploader.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));

  return swift_deallocClassInstance();
}

void *sub_21A44FAA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_21A44FB28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_21A44FBAC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28908, &qword_21A457248);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_21A44FC20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28698, &unk_21A459800);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_21A44FCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28[3] = type metadata accessor for DediscoRecorderImpl();
  v28[4] = &off_282B42308;
  v28[0] = a4;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  sub_21A3F939C(v28, (a5 + 11));

  has_internal_content = os_variant_has_internal_content();
  v11 = a5[4];
  swift_beginAccess();
  v12 = *(v11 + 32);
  if (!*(v12 + 16))
  {
    goto LABEL_6;
  }

  v13 = sub_21A3DCA2C(0xD000000000000014, 0x800000021A45D2C0);
  if ((v14 & 1) == 0)
  {

LABEL_6:

    __swift_destroy_boxed_opaque_existential_0(v28);
    goto LABEL_7;
  }

  sub_21A3D3B94(*(v12 + 56) + 32 * v13, &v26);

  if (swift_dynamicCast())
  {
    v15 = a5[3];
    v26 = a5[2];
    v27 = v15;

    MEMORY[0x21CED98B0](46, 0xE100000000000000);
    MEMORY[0x21CED98B0]();

    v17 = v26;
    v16 = v27;
    __swift_destroy_boxed_opaque_existential_0(v28);
    goto LABEL_8;
  }

  __swift_destroy_boxed_opaque_existential_0(v28);

LABEL_7:
  v17 = a5[2];
  v16 = a5[3];

LABEL_8:
  v18 = a5[4];
  v19 = *(v18 + 48);
  if (v19)
  {
    v20 = (v19 + 72);
  }

  else
  {
    v20 = (v18 + 16);
    swift_beginAccess();
  }

  v21 = *v20;

  v23 = 0xEA00000000006E6FLL;
  if (has_internal_content)
  {
    v23 = 0xE500000000000000;
  }

  v24 = 0x69746375646F7270;
  a5[5] = v17;
  a5[6] = v16;
  if (has_internal_content)
  {
    v24 = 0x7972726163;
  }

  a5[7] = v24;
  a5[8] = v23;
  a5[9] = v21;
  a5[10] = v22;
  return a5;
}

uint64_t sub_21A44FED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A450E84();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A450E94();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D78, &qword_21A459290);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_21A450D14();
  v35 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v34 = &v32 - v17;
  v18 = [objc_opt_self() standardUserDefaults];
  *&v39 = 0xD00000000000001FLL;
  *(&v39 + 1) = 0x800000021A45D260;
  v45 = a1;
  v46 = a2;
  v43 = 46;
  v44 = 0xE100000000000000;
  v41 = 95;
  v42 = 0xE100000000000000;
  sub_21A3ED2CC();
  v19 = sub_21A451654();
  MEMORY[0x21CED98B0](v19);

  v20 = sub_21A451054();

  v21 = [v18 valueForKey_];

  if (v21)
  {
    sub_21A451694();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v47[0] = v39;
  v47[1] = v40;
  if (!*(&v40 + 1))
  {
    v25 = &qword_27CD28468;
    v26 = &unk_21A455FB0;
    v27 = v47;
    return sub_21A3D3BF0(v27, v25, v26);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_21A450E64();
  v23 = v38;
  (*(v38 + 104))(v6, *MEMORY[0x277CC9968], v4);
  sub_21A450CD4();
  sub_21A450E54();
  v24 = v35;
  v33 = *(v35 + 8);
  v33(v16, v13);
  (*(v23 + 8))(v6, v4);
  (*(v36 + 8))(v9, v37);
  if ((*(v24 + 48))(v12, 1, v13) == 1)
  {
    v25 = &qword_27CD28D78;
    v26 = &qword_21A459290;
    v27 = v12;
    return sub_21A3D3BF0(v27, v25, v26);
  }

  v28 = v34;
  (*(v24 + 32))(v34, v12, v13);
  sub_21A450D04();
  sub_21A450464();
  v29 = sub_21A450FE4();
  v30 = v33;
  v33(v16, v13);
  if (v29)
  {
    sub_21A3EC940();
    swift_allocError();
    *v31 = 14;
    swift_willThrow();
  }

  return v30(v28, v13);
}

unint64_t sub_21A450464()
{
  result = qword_27CD28578;
  if (!qword_27CD28578)
  {
    sub_21A450D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28578);
  }

  return result;
}