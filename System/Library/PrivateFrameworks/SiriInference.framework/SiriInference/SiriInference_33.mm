uint64_t sub_1DD5EB25C()
{
  OUTLINED_FUNCTION_13_48();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_0();
  v13 = &unk_1F58B4A50;
  v3 = swift_allocObject();
  v12 = v3;
  v4 = v1[1];
  v3[1] = *v1;
  v3[2] = v4;
  *(v3 + 42) = *(v1 + 26);
  sub_1DD640E88();
  sub_1DD640E98();
  v5 = OUTLINED_FUNCTION_7_70();
  v6(v5);
  sub_1DD395950();
  v15 = sub_1DD63FC88();
  sub_1DD6409E8();
  while (1)
  {
    sub_1DD640A88();
    if (!v14)
    {

      return v15;
    }

    v7 = OUTLINED_FUNCTION_2_112();
    sub_1DD5F06F8(v7, v8, v9);
    if (v0)
    {
      break;
    }

    OUTLINED_FUNCTION_15_50();
  }

  sub_1DD390754(v11, &qword_1ECCDCFE0, &unk_1DD64CDB0);
}

void *sub_1DD5EB3F8(uint64_t a1)
{
  v3 = 0;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_0();
  v111 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC30, &unk_1DD663650);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC10, &unk_1DD664BA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v108 = &v98 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v115 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v98 - v20;
  v22 = *v1;
  v23 = a1;
  v24 = *(a1 + 16);
  v107 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (v24 != v3)
  {
    v26 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v27 = *(v115 + 72);
    sub_1DD4DDC08(v23 + v26 + v27 * v3, v21, &qword_1ECCDBBE8, &qword_1DD644470);
    if (v21[*(type metadata accessor for Contact(0) + 84)])
    {
      sub_1DD390754(v21, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v3;
    }

    else
    {
      sub_1DD4DDCBC(v21, v112, &qword_1ECCDBBE8, &qword_1DD644470);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_14_45();
        v25 = __dst[0];
      }

      v30 = v25[2];
      v29 = v25[3];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v100 = v30 + 1;
        v99 = v30;
        sub_1DD42B4F8(v29 > 1, v30 + 1, 1);
        v31 = v100;
        v30 = v99;
        v25 = __dst[0];
      }

      ++v3;
      v25[2] = v31;
      sub_1DD4DDCBC(v112, v25 + v26 + v30 * v27, &qword_1ECCDBBE8, &qword_1DD644470);
    }
  }

  if (v25[2])
  {
    return v25;
  }

  v32 = 0;
  for (i = MEMORY[0x1E69E7CC0]; ; sub_1DD4DDCBC(v114, i + v36 + v44 * v37, &qword_1ECCDBBE8, &qword_1DD644470))
  {
    v34 = v32;
    v35 = v113;
LABEL_13:
    if (v34 == v24)
    {
      break;
    }

    v36 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v37 = *(v115 + 72);
    v32 = v34 + 1;
    sub_1DD4DDC08(v23 + v36 + v37 * v34, v35, &qword_1ECCDBBE8, &qword_1DD644470);
    v38 = *(v35 + *(type metadata accessor for Contact(0) + 80));
    v39 = (v38 + 48);
    v40 = *(v38 + 16) + 1;
    do
    {
      if (!--v40)
      {
        sub_1DD390754(v35, &qword_1ECCDBBE8, &qword_1DD644470);
        v34 = v32;
        goto LABEL_13;
      }

      v41 = *v39;
      v39 += 80;
    }

    while (v41 != v22);
    sub_1DD4DDCBC(v35, v114, &qword_1ECCDBBE8, &qword_1DD644470);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = i;
    if ((v42 & 1) == 0)
    {
      OUTLINED_FUNCTION_14_45();
      i = __dst[0];
    }

    v44 = *(i + 16);
    v43 = *(i + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1DD42B4F8(v43 > 1, v44 + 1, 1);
      i = __dst[0];
    }

    *(i + 16) = v44 + 1;
  }

  v45 = v108;
  sub_1DD558E30(v23, v108);
  if (__swift_getEnumTagSinglePayload(v45, 1, v109) == 1)
  {
    v46 = &qword_1ECCDFC10;
    v47 = &unk_1DD664BA0;
    v48 = v45;
LABEL_33:
    sub_1DD390754(v48, v46, v47);
    v58 = *(i + 16);

    OUTLINED_FUNCTION_1_41();
    if (v58)
    {
      v60 = v59;
    }

    else
    {
      v60 = 0xE700000000000000;
    }

    OUTLINED_FUNCTION_19_37();
    __dst[0] = v61;
    __dst[1] = v62;
    __dst[2] = v63;
    __dst[3] = v60;
    __dst[4] = v58;
    v117 = v64;
    v118 = 0x80000001DD66CE50;
    v65 = qword_1ECCDFC20;

    v66 = OUTLINED_FUNCTION_11_0();
    MEMORY[0x1E12B2260](v66);

    OUTLINED_FUNCTION_26_28();
    if (v65)
    {
    }

    else
    {
      OUTLINED_FUNCTION_40();
      v67 = sub_1DD63FDA8();

      sub_1DD395950();
      v68 = sub_1DD63FC48();

      OUTLINED_FUNCTION_11_0();
      AnalyticsSendEvent();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v49 = v106;
  sub_1DD4DDCBC(v45, v106, &qword_1ECCDBBE8, &qword_1DD644470);
  if (*(i + 16) != 1)
  {
    v46 = &qword_1ECCDBBE8;
    v47 = &qword_1DD644470;
    v48 = v49;
    goto LABEL_33;
  }

  v50 = type metadata accessor for Contact(0);
  v51 = *(v49 + *(v50 + 80));
  v52 = *(v51 + 16);
  v53 = (v51 + 32);
  if (v52)
  {
    while (1)
    {
      memcpy(__dst, v53, 0x4AuLL);
      if (LOBYTE(__dst[2]) == v22)
      {
        break;
      }

      v53 += 80;
      if (!--v52)
      {
        goto LABEL_30;
      }
    }

    v69 = *(v49 + *(v109 + 36) + 272);
    v70 = *(v69 + 16);
    result = sub_1DD3C6A40(__dst, &v117);
    v72 = 0;
    for (j = v110; ; result = sub_1DD390754(j, &qword_1ECCDBBD8, &unk_1DD645A90))
    {
      if (v70 == v72)
      {
        v74 = 1;
        v75 = v105;
        goto LABEL_46;
      }

      if (v72 >= *(v69 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1DD4DDC08(v69 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v72, j, &qword_1ECCDBBD8, &unk_1DD645A90);
      if (*(j + 16) == v22)
      {
        break;
      }

      ++v72;
    }

    v75 = v105;
    sub_1DD4DDCBC(j, v105, &qword_1ECCDBBD8, &unk_1DD645A90);
    v74 = 0;
LABEL_46:
    v76 = v103;
    __swift_storeEnumTagSinglePayload(v75, v74, 1, v103);
    v77 = v102;
    sub_1DD4DDC08(v75, v102, &qword_1ECCDFC30, &unk_1DD663650);
    if (__swift_getEnumTagSinglePayload(v77, 1, v76) != 1)
    {
      sub_1DD4DDCBC(v77, v104, &qword_1ECCDBBD8, &unk_1DD645A90);
      v117 = 0x73736563637573;
      v118 = 0xE700000000000000;
      v119[0] = 1701736302;
      v119[1] = 0xE400000000000000;
      v120 = 0;
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_18_39(v82);
      v83 = qword_1ECCDFC20;
      v84 = off_1ECCDFC28;

      MEMORY[0x1E12B2260](v83, v84);

      v85 = v116;
      OUTLINED_FUNCTION_12_47();
      if (v84)
      {
      }

      else
      {
        v89 = sub_1DD63FDA8();

        sub_1DD395950();
        v84 = sub_1DD63FC48();

        AnalyticsSendEvent();
      }

      v90 = v101;
      sub_1DD4DDC08(v49, v101, &qword_1ECCDBBE8, &qword_1DD644470);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC40, &unk_1DD647D60);
      v25 = swift_allocObject();
      v114 = xmmword_1DD643F90;
      *(v25 + 1) = xmmword_1DD643F90;
      memcpy(v25 + 4, __dst, 0x4AuLL);
      v91 = *(v50 + 80);

      *(v90 + v91) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE0, &qword_1DD663660);
      v92 = OUTLINED_FUNCTION_9_60();
      OUTLINED_FUNCTION_21_35(v92);
      v94 = v104;
      sub_1DD4DDC08(v104, v93 + v85, &qword_1ECCDBBD8, &unk_1DD645A90);
      v95 = v90 + *(v109 + 36);

      *(v95 + 272) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
      v96 = OUTLINED_FUNCTION_9_60();
      OUTLINED_FUNCTION_21_35(v96);
      sub_1DD4DDCBC(v90, v97 + v95, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v94, &qword_1ECCDBBD8, &unk_1DD645A90);
      sub_1DD390754(v75, &qword_1ECCDFC30, &unk_1DD663650);
      sub_1DD390754(v49, &qword_1ECCDBBE8, &qword_1DD644470);
      return v25;
    }

    sub_1DD3C6A9C(__dst);
    sub_1DD390754(v77, &qword_1ECCDFC30, &unk_1DD663650);
    OUTLINED_FUNCTION_19_37();
    v117 = v78;
    v118 = 0xE700000000000000;
    strcpy(v119, "missingSignal");
    HIWORD(v119[1]) = -4864;
    v120 = 0;
    OUTLINED_FUNCTION_1_41();
    OUTLINED_FUNCTION_18_39(v79);
    v80 = qword_1ECCDFC20;
    v81 = off_1ECCDFC28;

    MEMORY[0x1E12B2260](v80, v81);

    OUTLINED_FUNCTION_12_47();
    if (v81)
    {
    }

    else
    {
      OUTLINED_FUNCTION_40();
      v88 = sub_1DD63FDA8();

      sub_1DD395950();
      v81 = sub_1DD63FC48();

      AnalyticsSendEvent();
    }

    sub_1DD390754(v75, &qword_1ECCDFC30, &unk_1DD663650);
  }

  else
  {
LABEL_30:
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1DD6408D8();
    LOBYTE(v117) = v22;
    sub_1DD6409F8();
    MEMORY[0x1E12B2260](0xD000000000000011, 0x80000001DD674950);
    v54 = __dst[0];
    v55 = __dst[1];
    __dst[0] = 0x6572756C696166;
    __dst[1] = 0xE700000000000000;
    __dst[2] = v54;
    __dst[3] = v55;
    __dst[4] = 0;
    v117 = 0xD000000000000019;
    v118 = 0x80000001DD66CE50;
    v56 = qword_1ECCDFC20;

    v57 = OUTLINED_FUNCTION_11_0();
    MEMORY[0x1E12B2260](v57);

    OUTLINED_FUNCTION_26_28();
    if (v56)
    {
    }

    else
    {
      OUTLINED_FUNCTION_40();
      v86 = sub_1DD63FDA8();

      sub_1DD395950();
      v87 = sub_1DD63FC48();

      OUTLINED_FUNCTION_11_0();
      AnalyticsSendEvent();
    }
  }

  sub_1DD390754(v49, &qword_1ECCDBBE8, &qword_1DD644470);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD5EC144(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  *v46 = a3;
  *&v46[8] = a4;
  *&v46[16] = a5;
  *&v46[24] = a6;
  v46[26] = BYTE2(a6);
  sub_1DD4DDC08(a2, v44, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v10 = *&v44[8];
  if (!*&v44[8])
  {
    __break(1u);
    goto LABEL_41;
  }

  v6 = *v44;
  __swift_destroy_boxed_opaque_existential_1(&v44[16]);
  sub_1DD4DDC08(a2, v44, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&v44[16], v43);
  sub_1DD395720(v43, v44);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    *v44 = *a1;
    sub_1DD396778();

    *a1 = *v44;
LABEL_10:
    v12 = v43;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  sub_1DD395720(v43, v44);
  if (swift_dynamicCast())
  {
    v11 = *&v40[0];
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v43, v44);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v43, v44);
  if (swift_dynamicCast())
  {
    v11 = LOBYTE(v40[0]);
    goto LABEL_6;
  }

  sub_1DD395720(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(v40, v44);
    v14 = *&v44[24];
    v15 = v45;
    __swift_project_boxed_opaque_existential_1(v44, *&v44[24]);
    (*(v15 + 8))(v14, v15);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = *a1;
    sub_1DD396778();

    *a1 = *&v40[0];
    __swift_destroy_boxed_opaque_existential_1(v43);
    v12 = v44;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1DD390754(v40, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(v40, v44);
    v16 = *&v44[24];
    v17 = v45;
    __swift_project_boxed_opaque_existential_1(v44, *&v44[24]);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1DD390754(v40, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v40[1] + 1))
  {
    v7 = v46;
    sub_1DD390754(v40, &qword_1ECCDB980, &unk_1DD643DC0);
    *v44 = *v46;
    *&v44[11] = *&v46[11];
    sub_1DD5F1244(v46, v40);
    if (sub_1DD63FE38() == 7104878 && v18 == 0xE300000000000000)
    {
    }

    else
    {
      v20 = sub_1DD640CD8();

      if ((v20 & 1) == 0)
      {
        sub_1DD395720(v43, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(v40, v44);
          __swift_project_boxed_opaque_existential_1(v44, *&v44[24]);
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v41 = 0;
        memset(v40, 0, sizeof(v40));
        sub_1DD390754(v40, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v27 = sub_1DD63F9F8();
          __swift_project_value_buffer(v27, qword_1EE16F068);
          sub_1DD395720(v43, v44);
          sub_1DD5F1244(v46, v40);

          v28 = sub_1DD63F9D8();
          v29 = sub_1DD640378();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v42[0] = v31;
            *v30 = 136315650;
            v32 = sub_1DD39565C(v6, v10, v42);

            *(v30 + 4) = v32;
            *(v30 + 12) = 2080;
            sub_1DD395720(v44, v40);
            v33 = sub_1DD63FE38();
            v35 = v34;
            __swift_destroy_boxed_opaque_existential_1(v44);
            v36 = sub_1DD39565C(v33, v35, v42);

            *(v30 + 14) = v36;
            *(v30 + 22) = 2080;
            v40[0] = *v46;
            *(v40 + 11) = *(v7 + 11);
            v37 = sub_1DD63FE38();
            v39 = sub_1DD39565C(v37, v38, v42);

            *(v30 + 24) = v39;
            _os_log_impl(&dword_1DD38D000, v28, v29, "cannot log key=%s value=%s in %s", v30, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v31, -1, -1);
            MEMORY[0x1E12B3DA0](v30, -1, -1);
          }

          else
          {

            sub_1DD5F12BC(v46);

            __swift_destroy_boxed_opaque_existential_1(v44);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD63F9F8();
    __swift_project_value_buffer(v21, qword_1EE16F068);

    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v44 = v25;
      *v24 = 136315138;
      v26 = sub_1DD39565C(v6, v10, v44);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_1DD38D000, v22, v23, "nil value for key=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E12B3DA0](v25, -1, -1);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v43);

  return sub_1DD390754(v40, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5ECA0C(void *a1, uint64_t a2, __int128 *a3)
{
  sub_1DD4DDC08(a2, &v44, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v7 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = v44;
  __swift_destroy_boxed_opaque_existential_1(&v45);
  sub_1DD4DDC08(a2, &v44, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&v45, v43);
  sub_1DD395720(v43, &v44);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    *&v44 = *a1;
    sub_1DD396778();

    *a1 = v44;
LABEL_10:
    v9 = v43;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  sub_1DD395720(v43, &v44);
  if (swift_dynamicCast())
  {
    v8 = v39;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v43, &v44);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v43, &v44);
  if (swift_dynamicCast())
  {
    v8 = v39;
    goto LABEL_6;
  }

  sub_1DD395720(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v39, &v44);
    v11 = *(&v45 + 1);
    v12 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    (*(v12 + 8))(v11, v12);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    *&v39 = *a1;
    sub_1DD396778();

    *a1 = v39;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v9 = &v44;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1DD390754(&v39, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v39, &v44);
    v13 = *(&v45 + 1);
    v14 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1DD390754(&v39, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v43, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v40 + 1))
  {
    sub_1DD390754(&v39, &qword_1ECCDB980, &unk_1DD643DC0);
    v15 = a3[1];
    v44 = *a3;
    v45 = v15;
    v46 = *(a3 + 4);
    sub_1DD5F1310(a3, &v39);
    if (sub_1DD63FE38() == 7104878 && v16 == 0xE300000000000000)
    {
    }

    else
    {
      v18 = sub_1DD640CD8();

      if ((v18 & 1) == 0)
      {
        sub_1DD395720(v43, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v39, &v44);
          __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_1DD390754(&v39, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v25 = sub_1DD63F9F8();
          __swift_project_value_buffer(v25, qword_1EE16F068);
          sub_1DD395720(v43, &v39);
          sub_1DD5F1310(a3, &v44);

          v26 = sub_1DD63F9D8();
          v27 = sub_1DD640378();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v42[0] = v29;
            *v28 = 136315650;
            v30 = sub_1DD39565C(v3, v7, v42);

            *(v28 + 4) = v30;
            *(v28 + 12) = 2080;
            sub_1DD395720(&v39, &v44);
            v31 = sub_1DD63FE38();
            v33 = v32;
            __swift_destroy_boxed_opaque_existential_1(&v39);
            v34 = sub_1DD39565C(v31, v33, v42);

            *(v28 + 14) = v34;
            *(v28 + 22) = 2080;
            v35 = a3[1];
            v44 = *a3;
            v45 = v35;
            v46 = *(a3 + 4);
            v36 = sub_1DD63FE38();
            v38 = sub_1DD39565C(v36, v37, v42);

            *(v28 + 24) = v38;
            _os_log_impl(&dword_1DD38D000, v26, v27, "cannot log key=%s value=%s in %s", v28, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v29, -1, -1);
            MEMORY[0x1E12B3DA0](v28, -1, -1);
          }

          else
          {

            sub_1DD5F1388(a3);

            __swift_destroy_boxed_opaque_existential_1(&v39);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1EE16F068);

    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640368();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v44 = v23;
      *v22 = 136315138;
      v24 = sub_1DD39565C(v3, v7, &v44);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_1DD38D000, v20, v21, "nil value for key=%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v43);

  return sub_1DD390754(&v39, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5ED2C0(void *a1, uint64_t a2, const void *a3)
{
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v7 = *(&__dst[0] + 1);
  if (!*(&__dst[0] + 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = *&__dst[0];
  __swift_destroy_boxed_opaque_existential_1(&__dst[1]);
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&__dst[1], v42);
  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    *&__dst[0] = *a1;
    sub_1DD396778();

    *a1 = *&__dst[0];
LABEL_10:
    v9 = v42;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    v8 = v37;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    v8 = v37;
    goto LABEL_6;
  }

  sub_1DD395720(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v37, __dst);
    v11 = *(&__dst[1] + 1);
    v12 = *&__dst[2];
    __swift_project_boxed_opaque_existential_1(__dst, *(&__dst[1] + 1));
    (*(v12 + 8))(v11, v12);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    *&v37 = *a1;
    sub_1DD396778();

    *a1 = v37;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v9 = __dst;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_1DD390754(&v37, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v37, __dst);
    v13 = *(&__dst[1] + 1);
    v14 = *&__dst[2];
    __swift_project_boxed_opaque_existential_1(__dst, *(&__dst[1] + 1));
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_1DD390754(&v37, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v42, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v38 + 1))
  {
    sub_1DD390754(&v37, &qword_1ECCDB980, &unk_1DD643DC0);
    memcpy(__dst, a3, 0x89uLL);
    sub_1DD5F14A8(a3, &v37);
    if (sub_1DD63FE38() == 7104878 && v15 == 0xE300000000000000)
    {
    }

    else
    {
      v17 = sub_1DD640CD8();

      if ((v17 & 1) == 0)
      {
        sub_1DD395720(v42, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v37, __dst);
          __swift_project_boxed_opaque_existential_1(__dst, *(&__dst[1] + 1));
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        sub_1DD390754(&v37, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v24 = sub_1DD63F9F8();
          __swift_project_value_buffer(v24, qword_1EE16F068);
          sub_1DD395720(v42, &v37);
          sub_1DD5F14A8(a3, __dst);

          v25 = sub_1DD63F9D8();
          v26 = sub_1DD640378();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v41[0] = v28;
            *v27 = 136315650;
            v29 = sub_1DD39565C(v3, v7, v41);

            *(v27 + 4) = v29;
            *(v27 + 12) = 2080;
            sub_1DD395720(&v37, __dst);
            v30 = sub_1DD63FE38();
            v32 = v31;
            __swift_destroy_boxed_opaque_existential_1(&v37);
            v33 = sub_1DD39565C(v30, v32, v41);

            *(v27 + 14) = v33;
            *(v27 + 22) = 2080;
            memcpy(__dst, a3, 0x89uLL);
            v34 = sub_1DD63FE38();
            v36 = sub_1DD39565C(v34, v35, v41);

            *(v27 + 24) = v36;
            _os_log_impl(&dword_1DD38D000, v25, v26, "cannot log key=%s value=%s in %s", v27, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v28, -1, -1);
            MEMORY[0x1E12B3DA0](v27, -1, -1);
          }

          else
          {

            sub_1DD45735C(a3);

            __swift_destroy_boxed_opaque_existential_1(&v37);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    __swift_project_value_buffer(v18, qword_1EE16F068);

    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640368();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&__dst[0] = v22;
      *v21 = 136315138;
      v23 = sub_1DD39565C(v3, v7, __dst);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1DD38D000, v19, v20, "nil value for key=%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
      MEMORY[0x1E12B3DA0](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v42);

  return sub_1DD390754(&v37, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5EDB74(void *a1, uint64_t a2, const void *a3)
{
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v7 = *&__dst[8];
  if (!*&__dst[8])
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = *__dst;
  __swift_destroy_boxed_opaque_existential_1(&__dst[16]);
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&__dst[16], v42);
  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    *__dst = *a1;
    sub_1DD396778();

    *a1 = *__dst;
LABEL_10:
    v9 = v42;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    v8 = v37;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    v8 = v37;
    goto LABEL_6;
  }

  sub_1DD395720(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v37, __dst);
    v11 = *&__dst[24];
    v12 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    (*(v12 + 8))(v11, v12);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    *&v37 = *a1;
    sub_1DD396778();

    *a1 = v37;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v9 = __dst;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_1DD390754(&v37, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v37, __dst);
    v13 = *&__dst[24];
    v14 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_1DD390754(&v37, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v42, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v38 + 1))
  {
    sub_1DD390754(&v37, &qword_1ECCDB980, &unk_1DD643DC0);
    memcpy(__dst, a3, sizeof(__dst));
    sub_1DD5F1520(a3, &v37);
    if (sub_1DD63FE38() == 7104878 && v15 == 0xE300000000000000)
    {
    }

    else
    {
      v17 = sub_1DD640CD8();

      if ((v17 & 1) == 0)
      {
        sub_1DD395720(v42, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v37, __dst);
          __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        sub_1DD390754(&v37, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v24 = sub_1DD63F9F8();
          __swift_project_value_buffer(v24, qword_1EE16F068);
          sub_1DD395720(v42, &v37);
          sub_1DD5F1520(a3, __dst);

          v25 = sub_1DD63F9D8();
          v26 = sub_1DD640378();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v41[0] = v28;
            *v27 = 136315650;
            v29 = sub_1DD39565C(v3, v7, v41);

            *(v27 + 4) = v29;
            *(v27 + 12) = 2080;
            sub_1DD395720(&v37, __dst);
            v30 = sub_1DD63FE38();
            v32 = v31;
            __swift_destroy_boxed_opaque_existential_1(&v37);
            v33 = sub_1DD39565C(v30, v32, v41);

            *(v27 + 14) = v33;
            *(v27 + 22) = 2080;
            memcpy(__dst, a3, sizeof(__dst));
            v34 = sub_1DD63FE38();
            v36 = sub_1DD39565C(v34, v35, v41);

            *(v27 + 24) = v36;
            _os_log_impl(&dword_1DD38D000, v25, v26, "cannot log key=%s value=%s in %s", v27, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v28, -1, -1);
            MEMORY[0x1E12B3DA0](v27, -1, -1);
          }

          else
          {

            sub_1DD3E61D8(a3);

            __swift_destroy_boxed_opaque_existential_1(&v37);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    __swift_project_value_buffer(v18, qword_1EE16F068);

    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640368();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *__dst = v22;
      *v21 = 136315138;
      v23 = sub_1DD39565C(v3, v7, __dst);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1DD38D000, v19, v20, "nil value for key=%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
      MEMORY[0x1E12B3DA0](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v42);

  return sub_1DD390754(&v37, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5EE428(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v47 = a3;
  *(&v47 + 1) = a4;
  *&v48 = a5;
  *(&v48 + 1) = a6;
  sub_1DD4DDC08(a2, &v44, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v9 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v6 = v44;
  __swift_destroy_boxed_opaque_existential_1(&v45);
  sub_1DD4DDC08(a2, &v44, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&v45, v43);
  sub_1DD395720(v43, &v44);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    *&v44 = *a1;
    sub_1DD396778();

    *a1 = v44;
LABEL_10:
    v11 = v43;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  sub_1DD395720(v43, &v44);
  if (swift_dynamicCast())
  {
    v10 = v39;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v43, &v44);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v43, &v44);
  if (swift_dynamicCast())
  {
    v10 = v39;
    goto LABEL_6;
  }

  sub_1DD395720(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v39, &v44);
    v13 = *(&v45 + 1);
    v14 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    (*(v14 + 8))(v13, v14);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    *&v39 = *a1;
    sub_1DD396778();

    *a1 = v39;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v11 = &v44;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1DD390754(&v39, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v39, &v44);
    v15 = *(&v45 + 1);
    v16 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1DD390754(&v39, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v43, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v40 + 1))
  {
    sub_1DD390754(&v39, &qword_1ECCDB980, &unk_1DD643DC0);
    v44 = v47;
    v45 = v48;
    sub_1DD5F13DC(&v47, &v39);
    if (sub_1DD63FE38() == 7104878 && v17 == 0xE300000000000000)
    {
    }

    else
    {
      v19 = sub_1DD640CD8();

      if ((v19 & 1) == 0)
      {
        sub_1DD395720(v43, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v39, &v44);
          __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_1DD390754(&v39, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v26 = sub_1DD63F9F8();
          __swift_project_value_buffer(v26, qword_1EE16F068);
          sub_1DD395720(v43, &v44);
          sub_1DD5F13DC(&v47, &v39);

          v27 = sub_1DD63F9D8();
          v28 = sub_1DD640378();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v42[0] = v30;
            *v29 = 136315650;
            v31 = sub_1DD39565C(v6, v9, v42);

            *(v29 + 4) = v31;
            *(v29 + 12) = 2080;
            sub_1DD395720(&v44, &v39);
            v32 = sub_1DD63FE38();
            v34 = v33;
            __swift_destroy_boxed_opaque_existential_1(&v44);
            v35 = sub_1DD39565C(v32, v34, v42);

            *(v29 + 14) = v35;
            *(v29 + 22) = 2080;
            v39 = v47;
            v40 = v48;
            v36 = sub_1DD63FE38();
            v38 = sub_1DD39565C(v36, v37, v42);

            *(v29 + 24) = v38;
            _os_log_impl(&dword_1DD38D000, v27, v28, "cannot log key=%s value=%s in %s", v29, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v30, -1, -1);
            MEMORY[0x1E12B3DA0](v29, -1, -1);
          }

          else
          {

            sub_1DD5F1454(&v47);

            __swift_destroy_boxed_opaque_existential_1(&v44);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);

    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v44 = v24;
      *v23 = 136315138;
      v25 = sub_1DD39565C(v6, v9, &v44);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DD38D000, v21, v22, "nil value for key=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v43);

  return sub_1DD390754(&v39, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5EECD0(void *a1, uint64_t a2, __int128 *a3)
{
  sub_1DD4DDC08(a2, &v46, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v8 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = v46;
  __swift_destroy_boxed_opaque_existential_1(&v47);
  sub_1DD4DDC08(a2, &v46, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&v47, v45);
  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    *&v46 = *a1;
    sub_1DD396778();

    *a1 = v46;
LABEL_10:
    v10 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    v9 = v41;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    v9 = v41;
    goto LABEL_6;
  }

  sub_1DD395720(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v41, &v46);
    v12 = *(&v47 + 1);
    v13 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    (*(v13 + 8))(v12, v13);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    *&v41 = *a1;
    sub_1DD396778();

    *a1 = v41;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v10 = &v46;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1DD390754(&v41, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v41, &v46);
    v14 = *(&v47 + 1);
    v15 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1DD390754(&v41, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v45, &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v42 + 1))
  {
    v4 = &v46;
    sub_1DD390754(&v41, &qword_1ECCDB980, &unk_1DD643DC0);
    v16 = *a3;
    v49 = a3[1];
    v50[0] = v16;
    v46 = v16;
    v47 = v49;
    v48 = *(a3 + 4);
    sub_1DD406EC4(v50, &v41);
    sub_1DD406EC4(&v49, &v41);
    if (sub_1DD63FE38() == 7104878 && v17 == 0xE300000000000000)
    {
    }

    else
    {
      v19 = sub_1DD640CD8();

      if ((v19 & 1) == 0)
      {
        sub_1DD395720(v45, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v41, &v46);
          __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        sub_1DD390754(&v41, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v26 = sub_1DD63F9F8();
          __swift_project_value_buffer(v26, qword_1EE16F068);
          sub_1DD395720(v45, &v41);
          sub_1DD406EC4(v50, &v46);
          sub_1DD406EC4(&v49, &v46);

          v27 = sub_1DD63F9D8();
          v28 = sub_1DD640378();

          sub_1DD406F20(v50);
          sub_1DD406F20(&v49);
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v40 = v30;
            *v29 = 136315650;
            v31 = sub_1DD39565C(v3, v8, &v40);

            *(v29 + 4) = v31;
            *(v29 + 12) = 2080;
            sub_1DD395720(&v41, &v46);
            v32 = sub_1DD63FE38();
            v34 = v33;
            __swift_destroy_boxed_opaque_existential_1(&v41);
            v35 = sub_1DD39565C(v32, v34, &v40);

            *(v29 + 14) = v35;
            *(v29 + 22) = 2080;
            v36 = a3[1];
            v46 = *a3;
            v4[1] = v36;
            v48 = *(a3 + 4);
            sub_1DD406EC4(v50, v44);
            sub_1DD406EC4(&v49, v44);
            v37 = sub_1DD63FE38();
            v39 = sub_1DD39565C(v37, v38, &v40);

            *(v29 + 24) = v39;
            _os_log_impl(&dword_1DD38D000, v27, v28, "cannot log key=%s value=%s in %s", v29, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v30, -1, -1);
            MEMORY[0x1E12B3DA0](v29, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v41);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);

    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v46 = v24;
      *v23 = 136315138;
      v25 = sub_1DD39565C(v3, v8, &v46);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DD38D000, v21, v22, "nil value for key=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v45);

  return sub_1DD390754(&v41, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5EF5D0(void *a1, uint64_t a2, const void *a3)
{
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v7 = *&__dst[8];
  if (!*&__dst[8])
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = *__dst;
  __swift_destroy_boxed_opaque_existential_1(&__dst[16]);
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&__dst[16], v42);
  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    *__dst = *a1;
    sub_1DD396778();

    *a1 = *__dst;
LABEL_10:
    v9 = v42;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    v8 = v38;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    v8 = v38;
    goto LABEL_6;
  }

  sub_1DD395720(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v38, __dst);
    v11 = *&__dst[24];
    v12 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    (*(v12 + 8))(v11, v12);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    *&v38 = *a1;
    sub_1DD396778();

    *a1 = v38;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v9 = __dst;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1DD390754(&v38, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v38, __dst);
    v13 = *&__dst[24];
    v14 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1DD390754(&v38, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v42, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v39 + 1))
  {
    sub_1DD390754(&v38, &qword_1ECCDB980, &unk_1DD643DC0);
    memcpy(__dst, a3, sizeof(__dst));
    if (sub_1DD63FE38() == 7104878 && v15 == 0xE300000000000000)
    {
    }

    else
    {
      v17 = sub_1DD640CD8();

      if ((v17 & 1) == 0)
      {
        sub_1DD395720(v42, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v38, __dst);
          __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        sub_1DD390754(&v38, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v24 = sub_1DD63F9F8();
          __swift_project_value_buffer(v24, qword_1EE16F068);
          sub_1DD395720(v42, &v38);

          v25 = sub_1DD63F9D8();
          v26 = sub_1DD640378();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v41[0] = v28;
            *v27 = 136315650;
            v29 = sub_1DD39565C(v3, v7, v41);

            *(v27 + 4) = v29;
            *(v27 + 12) = 2080;
            sub_1DD395720(&v38, __dst);
            v30 = sub_1DD63FE38();
            v32 = v31;
            __swift_destroy_boxed_opaque_existential_1(&v38);
            v33 = sub_1DD39565C(v30, v32, v41);

            *(v27 + 14) = v33;
            *(v27 + 22) = 2080;
            memcpy(__dst, a3, sizeof(__dst));
            v34 = sub_1DD63FE38();
            v36 = sub_1DD39565C(v34, v35, v41);

            *(v27 + 24) = v36;
            _os_log_impl(&dword_1DD38D000, v25, v26, "cannot log key=%s value=%s in %s", v27, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v28, -1, -1);
            MEMORY[0x1E12B3DA0](v27, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v38);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    __swift_project_value_buffer(v18, qword_1EE16F068);

    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640368();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *__dst = v22;
      *v21 = 136315138;
      v23 = sub_1DD39565C(v3, v7, __dst);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1DD38D000, v19, v20, "nil value for key=%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
      MEMORY[0x1E12B3DA0](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v42);

  return sub_1DD390754(&v38, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5EFE64(void *a1, uint64_t a2, const void *a3)
{
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v7 = *&__dst[8];
  if (!*&__dst[8])
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = *__dst;
  __swift_destroy_boxed_opaque_existential_1(&__dst[16]);
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&__dst[16], v42);
  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    *__dst = *a1;
    sub_1DD396778();

    *a1 = *__dst;
LABEL_10:
    v9 = v42;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    v8 = v38;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v42, __dst);
  if (swift_dynamicCast())
  {
    v8 = v38;
    goto LABEL_6;
  }

  sub_1DD395720(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v38, __dst);
    v11 = *&__dst[24];
    v12 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    (*(v12 + 8))(v11, v12);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    *&v38 = *a1;
    sub_1DD396778();

    *a1 = v38;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v9 = __dst;
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1DD390754(&v38, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v38, __dst);
    v13 = *&__dst[24];
    v14 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1DD390754(&v38, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v42, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v39 + 1))
  {
    sub_1DD390754(&v38, &qword_1ECCDB980, &unk_1DD643DC0);
    memcpy(__dst, a3, sizeof(__dst));
    if (sub_1DD63FE38() == 7104878 && v15 == 0xE300000000000000)
    {
    }

    else
    {
      v17 = sub_1DD640CD8();

      if ((v17 & 1) == 0)
      {
        sub_1DD395720(v42, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v38, __dst);
          __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        sub_1DD390754(&v38, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v24 = sub_1DD63F9F8();
          __swift_project_value_buffer(v24, qword_1EE16F068);
          sub_1DD395720(v42, &v38);

          v25 = sub_1DD63F9D8();
          v26 = sub_1DD640378();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v41[0] = v28;
            *v27 = 136315650;
            v29 = sub_1DD39565C(v3, v7, v41);

            *(v27 + 4) = v29;
            *(v27 + 12) = 2080;
            sub_1DD395720(&v38, __dst);
            v30 = sub_1DD63FE38();
            v32 = v31;
            __swift_destroy_boxed_opaque_existential_1(&v38);
            v33 = sub_1DD39565C(v30, v32, v41);

            *(v27 + 14) = v33;
            *(v27 + 22) = 2080;
            memcpy(__dst, a3, sizeof(__dst));
            v34 = sub_1DD63FE38();
            v36 = sub_1DD39565C(v34, v35, v41);

            *(v27 + 24) = v36;
            _os_log_impl(&dword_1DD38D000, v25, v26, "cannot log key=%s value=%s in %s", v27, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v28, -1, -1);
            MEMORY[0x1E12B3DA0](v27, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v38);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    __swift_project_value_buffer(v18, qword_1EE16F068);

    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640368();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *__dst = v22;
      *v21 = 136315138;
      v23 = sub_1DD39565C(v3, v7, __dst);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1DD38D000, v19, v20, "nil value for key=%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
      MEMORY[0x1E12B3DA0](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v42);

  return sub_1DD390754(&v38, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5F06F8(void *a1, uint64_t a2, __int128 *a3)
{
  sub_1DD4DDC08(a2, &v45, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v8 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = v45;
  __swift_destroy_boxed_opaque_existential_1(v46);
  sub_1DD4DDC08(a2, &v45, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(v46, v44);
  sub_1DD395720(v44, &v45);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    *&v45 = *a1;
    sub_1DD396778();

    *a1 = v45;
LABEL_10:
    v10 = v44;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  sub_1DD395720(v44, &v45);
  if (swift_dynamicCast())
  {
    v9 = v40;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v44, &v45);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v44, &v45);
  if (swift_dynamicCast())
  {
    v9 = v40;
    goto LABEL_6;
  }

  sub_1DD395720(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v40, &v45);
    v12 = *&v46[8];
    v13 = *&v46[16];
    __swift_project_boxed_opaque_existential_1(&v45, *&v46[8]);
    (*(v13 + 8))(v12, v13);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    swift_isUniquelyReferenced_nonNull_native();
    *&v40 = *a1;
    sub_1DD396778();

    *a1 = v40;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v10 = &v45;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_1DD390754(&v40, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v40, &v45);
    v14 = *&v46[8];
    v15 = *&v46[16];
    __swift_project_boxed_opaque_existential_1(&v45, *&v46[8]);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_1DD390754(&v40, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v44, &v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v41 + 1))
  {
    v4 = &v45;
    sub_1DD390754(&v40, &qword_1ECCDB980, &unk_1DD643DC0);
    v16 = a3[1];
    v45 = *a3;
    *v46 = v16;
    *&v46[10] = *(a3 + 26);
    if (sub_1DD63FE38() == 7104878 && v17 == 0xE300000000000000)
    {
    }

    else
    {
      v19 = sub_1DD640CD8();

      if ((v19 & 1) == 0)
      {
        sub_1DD395720(v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v40, &v45);
          __swift_project_boxed_opaque_existential_1(&v45, *&v46[8]);
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v42 = 0;
        v40 = 0u;
        v41 = 0u;
        sub_1DD390754(&v40, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v26 = sub_1DD63F9F8();
          __swift_project_value_buffer(v26, qword_1EE16F068);
          sub_1DD395720(v44, &v40);

          v27 = sub_1DD63F9D8();
          v28 = sub_1DD640378();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v43[0] = v30;
            *v29 = 136315650;
            v31 = sub_1DD39565C(v3, v8, v43);

            *(v29 + 4) = v31;
            *(v29 + 12) = 2080;
            sub_1DD395720(&v40, &v45);
            v32 = sub_1DD63FE38();
            v34 = v33;
            __swift_destroy_boxed_opaque_existential_1(&v40);
            v35 = sub_1DD39565C(v32, v34, v43);

            *(v29 + 14) = v35;
            *(v29 + 22) = 2080;
            v36 = a3[1];
            v45 = *a3;
            *v46 = v36;
            *(v4 + 26) = *(a3 + 26);
            v37 = sub_1DD63FE38();
            v39 = sub_1DD39565C(v37, v38, v43);

            *(v29 + 24) = v39;
            _os_log_impl(&dword_1DD38D000, v27, v28, "cannot log key=%s value=%s in %s", v29, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v30, -1, -1);
            MEMORY[0x1E12B3DA0](v29, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v40);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);

    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v45 = v24;
      *v23 = 136315138;
      v25 = sub_1DD39565C(v3, v8, &v45);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DD38D000, v21, v22, "nil value for key=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);

  return sub_1DD390754(&v40, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5F0F94(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 1))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFFE | *a3 & 1;
  if (*(a3 + 2))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (*(a3 + 25))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFE | *(a3 + 24) & 1;
  if (*(a3 + 26))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  return sub_1DD5EC144(a1, a2, v4 | v5, *(a3 + 8), *(a3 + 16), v7 | v8);
}

uint64_t sub_1DD5F1000(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v6 = *(a3 + 32);
  return sub_1DD5ECA0C(a1, a2, v5);
}

uint64_t sub_1DD5F10EC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 256;
  if ((*(a3 + 25) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFFELL | *(a3 + 24) & 1;
  v5 = 0x10000;
  if ((*(a3 + 26) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if ((*(a3 + 27) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v4 | v5 | v6;
  v8 = 0x100000000;
  if ((*(a3 + 28) & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 0x10000000000;
  if ((*(a3 + 29) & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x1000000000000;
  if ((*(a3 + 30) & 1) == 0)
  {
    v10 = 0;
  }

  v11 = v8 | v9;
  v12 = 0x100000000000000;
  if ((*(a3 + 31) & 1) == 0)
  {
    v12 = 0;
  }

  return sub_1DD5EE428(a1, a2, *a3, *(a3 + 8), *(a3 + 16), v7 | v11 | v10 | v12);
}

uint64_t sub_1DD5F11A0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v6 = *(a3 + 32);
  return sub_1DD5EECD0(a1, a2, v5);
}

unint64_t sub_1DD5F11F0()
{
  result = qword_1ECCDFC68;
  if (!qword_1ECCDFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFC68);
  }

  return result;
}

uint64_t sub_1DD5F1598(uint64_t a1, int a2)
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

uint64_t sub_1DD5F15D8(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_11_52()
{
}

uint64_t OUTLINED_FUNCTION_12_47()
{

  return sub_1DD5EAD78();
}

uint64_t OUTLINED_FUNCTION_13_48()
{

  return sub_1DD640EA8();
}

void OUTLINED_FUNCTION_14_45()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD42B4F8(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_24_25(uint64_t a1)
{

  return sub_1DD46D298(a1, v1);
}

uint64_t OUTLINED_FUNCTION_26_28()
{

  return sub_1DD5EAD78();
}

uint64_t sub_1DD5F1704()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = xmmword_1DD644500;
  *(inited + 48) = 0;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(1, 12);
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_34();
  v2 = DateTime.init(withDate:)(v1);
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(1, 3);
  OUTLINED_FUNCTION_1_11();
  v3 = OUTLINED_FUNCTION_34();
  v4 = DateTime.init(withDate:)(v3);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v2, v4);
  OUTLINED_FUNCTION_1_11();
  v5 = OUTLINED_FUNCTION_34();
  *(inited + 56) = DateTime.init(occurringIn:)(v5);
  *(inited + 64) = xmmword_1DD644510;
  *(inited + 80) = 1;
  type metadata accessor for DateTime.Date.Holiday();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_5_2(v6, 0x80000001DD668D30, 0xD000000000000011, 0x80000001DD66A480, v7, v8, v9, v10, v28, *v30, *&v30[4], v30[6], 2);
  OUTLINED_FUNCTION_2_10();
  v11 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v11);
  OUTLINED_FUNCTION_1_11();
  v12 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v12);
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x757165686372616DLL, 0xEC000000786F6E69, 0x714520686372614DLL, 0xED0000786F6E6975, &v34);
  OUTLINED_FUNCTION_2_10();
  v13 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v13);
  OUTLINED_FUNCTION_1_11();
  v14 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v14);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v15 = OUTLINED_FUNCTION_34();
  v16 = DateTime.init(occurringIn:)(v15);
  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 88) = v16;
  *(inited + 112) = 1;
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x736C6F73656E756ALL, 0xEC00000065636974, 0x6C6F5320656E754ALL, 0xED00006563697473, &v34);
  OUTLINED_FUNCTION_2_10();
  v17 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v17);
  OUTLINED_FUNCTION_1_11();
  v18 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v18);
  v19 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v19, 0x80000001DD668D10, 0xD000000000000011, 0x80000001DD66A460, v20, v21, v22, v23, v29, v31, v32, v33, v34);
  OUTLINED_FUNCTION_2_10();
  v24 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v24);
  OUTLINED_FUNCTION_1_11();
  v25 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v25);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v26 = OUTLINED_FUNCTION_34();
  *(inited + 120) = DateTime.init(occurringIn:)(v26);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD5F1A20()
{
  sub_1DD3B7F10();
  v0 = sub_1DD640638();
  v1 = sub_1DD43C2BC(v0);
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for TaskMetadata(uint64_t a1)
{
  result = qword_1EE163270;
  if (!qword_1EE163270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5F1B20(uint64_t a1)
{
  result = sub_1DD63D078();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD5F1B9C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TaskMetadata(0);

  return sub_1DD63D028();
}

_BYTE *storeEnumTagSinglePayload for StreamIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5F1D1C()
{
  result = qword_1ECCDFC70;
  if (!qword_1ECCDFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFC70);
  }

  return result;
}

uint64_t sub_1DD5F1D70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA48, &qword_1DD649EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD6444F0;
  *(v0 + 56) = &type metadata for RemindersLocationTaskSuccessEvaluable;
  *(v0 + 64) = &off_1F58BEC00;
  OUTLINED_FUNCTION_15_51();
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  strcpy((v1 + 16), "AddTasksIntent");
  *(v1 + 31) = -18;
  *(v1 + 32) = 0x6E6F697461636F6CLL;
  *(v1 + 40) = 0xE800000000000000;
  *(v1 + 48) = 256;
  *(v0 + 96) = &type metadata for RemindersDateTimeTaskSuccessEvaluable;
  *(v0 + 104) = &off_1F58BEB48;
  OUTLINED_FUNCTION_15_51();
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  strcpy((v2 + 16), "AddTasksIntent");
  *(v2 + 31) = -18;
  *(v2 + 32) = 0x656D695465746164;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 256;
  *(v0 + 136) = &type metadata for AlarmsDateTimeTaskSuccessEvaluable;
  *(v0 + 144) = &off_1F58B02C0;
  OUTLINED_FUNCTION_15_51();
  result = swift_allocObject();
  *(v0 + 112) = result;
  *(result + 16) = 0xD000000000000011;
  *(result + 24) = 0x80000001DD674970;
  *(result + 32) = 0x656D695465746164;
  *(result + 40) = 0xE800000000000000;
  *(result + 48) = 257;
  qword_1EE16EF40 = v0;
  return result;
}

uint64_t sub_1DD5F1ED4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for TaskMetadata(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_15_25();
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16F0C8);
  sub_1DD5F3734(a2, v2, type metadata accessor for TaskMetadata);
  sub_1DD3C2388(a1, &v42);
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v9 = 136315394;
    sub_1DD3B7F10();
    v10 = sub_1DD640638();
    v11 = sub_1DD43C2BC(v10);
    v13 = v12;

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v11 = 0;
      v14 = 0xE000000000000000;
    }

    sub_1DD5F3794(v2, type metadata accessor for TaskMetadata);
    v15 = sub_1DD39565C(v11, v14, &v46);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    v16 = v45;
    __swift_project_boxed_opaque_existential_1(&v42, v44);
    v17 = OUTLINED_FUNCTION_9_61();
    v19 = v18(v17, v16);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v22 = sub_1DD39565C(v19, v21, &v46);

    *(v9 + 14) = v22;
    _os_log_impl(&dword_1DD38D000, v7, v8, "taskMetadata.typeRoot = %s, evaluable.taskType: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {

    sub_1DD5F3794(v2, type metadata accessor for TaskMetadata);
    __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  v23 = sub_1DD5F1A20();
  v25 = v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = OUTLINED_FUNCTION_9_61();
  if (v23 == v28(v27, v26) && v25 == v29)
  {
    goto LABEL_20;
  }

  v31 = sub_1DD640CD8();

  if ((v31 & 1) == 0)
  {
    v33 = sub_1DD5F1A20();
    v35 = v34;
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v37 = OUTLINED_FUNCTION_9_61();
    v39 = v38(v37, v36);
    v42 = 20041;
    v43 = 0xE200000000000000;
    MEMORY[0x1E12B2260](v39);

    if (v33 != v42 || v35 != v43)
    {
      v32 = sub_1DD640CD8();
LABEL_21:

      return v32 & 1;
    }

LABEL_20:
    v32 = 1;
    goto LABEL_21;
  }

  v32 = 1;
  return v32 & 1;
}

uint64_t sub_1DD5F22C0(uint64_t (*a1)(void, void, unint64_t), uint64_t a2)
{
  v88 = a1;
  v89 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC78, &qword_1DD6637E0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  OUTLINED_FUNCTION_25(v74 - v8);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC80, &qword_1DD6637E8);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  OUTLINED_FUNCTION_25(v74 - v14);
  v15 = type metadata accessor for TaskSuccessEvaluator(0);
  OUTLINED_FUNCTION_0();
  v84 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_40();
  v82 = v18;
  v83 = v19;
  v81 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v90 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_40();
  v79 = v22;
  v80 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25(v74 - v8);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25(v74 - v14);
  v85 = v15;
  v86 = v2;
  v26 = *(v2 + *(v15 + 20));
  v27 = *(v26 + 16);
  if (v27 || (result = v88(MEMORY[0x1E69E7CC0], 0, 0xE000000000000000), (v27 = *(v26 + 16)) != 0))
  {
    v29 = v26 + 32;
    v78 = v90 + 16;
    v77 = v90 + 32;
    v76 = (v4 + 8);
    v75 = (v10 + 8);
    do
    {
      sub_1DD3C2388(v29, v92);
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v30 = OUTLINED_FUNCTION_10_55();
      if (v31(v30))
      {
        v32 = *(v85 + 28);
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v33 = OUTLINED_FUNCTION_10_55();
        v35 = v34(v33);
        v37 = *(OUTLINED_FUNCTION_14_46(v35, v36) + 24);
        v38 = v86;
        sub_1DD63CF48();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
        OUTLINED_FUNCTION_6_76();
        sub_1DD3FAC5C(&qword_1ECCDFC90, &qword_1ECCDFC88, &unk_1DD6637F0, v39);
        v40 = v38 + v32;
        v41 = v74[3];
        sub_1DD63DA38();
        v42 = v90;
        v43 = v38 + v37;
        v44 = v79;
        v45 = v81;
        (*(v90 + 16))(v79, v43, v81);
        OUTLINED_FUNCTION_1_127();
        v46 = v38;
        v47 = v82;
        sub_1DD5F3734(v46, v82, v48);
        OUTLINED_FUNCTION_5_88();
        v49 = swift_allocObject();
        (*(v42 + 32))(v49 + v40, v44, v45);
        sub_1DD5F2DEC(v47, v49 + v32);
        OUTLINED_FUNCTION_8_72();
        sub_1DD3FAC5C(&qword_1ECCDFCA0, &qword_1ECCDFC80, &qword_1DD6637E8, v50);
        OUTLINED_FUNCTION_19_38();
        sub_1DD63D4C8();

        *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
        v51 = swift_allocObject();
        OUTLINED_FUNCTION_3_96(v51);
        sub_1DD3FAC5C(&qword_1ECCDFCA8, &qword_1ECCDFC78, &qword_1DD6637E0, v52);
        swift_retain_n();

        v54 = OUTLINED_FUNCTION_11_53(sub_1DD5F3284, v53, sub_1DD5F3288);
        v55 = v41;
      }

      else
      {
        v56 = *(v85 + 24);
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v57 = OUTLINED_FUNCTION_10_55();
        v59 = v58(v57);
        v32 = *(OUTLINED_FUNCTION_14_46(v59, v60) + 24);
        v61 = v86;
        sub_1DD63CF48();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
        OUTLINED_FUNCTION_6_76();
        sub_1DD3FAC5C(&qword_1EE1637B8, &qword_1ECCDFC98, &unk_1DD6639C0, v62);
        v63 = v61 + v56;
        v55 = v74[1];
        sub_1DD63DA38();
        v64 = v90;
        v47 = v79;
        v65 = v81;
        (*(v90 + 16))(v79, v61 + v32, v81);
        OUTLINED_FUNCTION_1_127();
        v66 = v61;
        v67 = v82;
        sub_1DD5F3734(v66, v82, v68);
        OUTLINED_FUNCTION_5_88();
        v69 = swift_allocObject();
        (*(v64 + 32))(v69 + v63, v47, v65);
        sub_1DD5F2DEC(v67, v69 + v32);
        OUTLINED_FUNCTION_8_72();
        sub_1DD3FAC5C(&qword_1EE1637C8, &qword_1ECCDFC80, &qword_1DD6637E8, v70);
        OUTLINED_FUNCTION_19_38();
        sub_1DD63D4C8();

        *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
        v71 = swift_allocObject();
        OUTLINED_FUNCTION_3_96(v71);
        sub_1DD3FAC5C(&unk_1EE1637D0, &qword_1ECCDFC78, &qword_1DD6637E0, v72);
        swift_retain_n();

        v54 = OUTLINED_FUNCTION_11_53(sub_1DD5F3BF0, v73, sub_1DD5F3BF4);
      }

      (*v76)(v47, v32);
      (*v75)(v55, v91);

      result = __swift_destroy_boxed_opaque_existential_1(v92);
      v29 += 40;
      --v27;
    }

    while (v27);
  }

  return result;
}

uint64_t type metadata accessor for TaskSuccessEvaluator(uint64_t a1)
{
  result = qword_1EE161D50;
  if (!qword_1EE161D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5F2A88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = 0;
  v8 = *(v5 + *(type metadata accessor for TaskSuccessEvaluator(0) + 20));
  v9 = *(v8 + 16);
  result = v8 + 32;
  v35 = v9;
  v36 = a4;
  while (1)
  {
    if (v9 == v7)
    {
      sub_1DD5F36E0();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
      return v4;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    v37 = result;
    sub_1DD3C2388(result, &v42);
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v11 = sub_1DD63F9F8();
    __swift_project_value_buffer(v11, qword_1EE16F0C8);
    sub_1DD3C2388(&v42, v39);

    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640368();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = v8;
      v16 = v7;
      v18 = v40;
      v17 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v19 = v18;
      v8 = v15;
      v20 = (*(v17 + 16))(v19, v17);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v39);
      v23 = sub_1DD39565C(v20, v22, &v49);
      v7 = v16;
      a4 = v36;

      *(v14 + 4) = v23;
      *(v14 + 12) = 2080;
      v9 = v35;
      *(v14 + 14) = sub_1DD39565C(a3, v36, &v49);
      _os_log_impl(&dword_1DD38D000, v12, v13, "[postSiriActivityType] evaluable.entityType = %s, entityType: %s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    v24 = v43;
    v25 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    v26 = (*(v25 + 16))(v24, v25);
    v4 = v27;
    if (v26 == a3 && v27 == a4)
    {

LABEL_17:
      sub_1DD3FAED4(&v42, v45);
      sub_1DD3FAED4(v45, v46);
      v31 = v47;
      v32 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v4 = (*(v32 + 40))(a1, a2, v31, v32);
      __swift_destroy_boxed_opaque_existential_1(v46);
      return v4;
    }

    v29 = sub_1DD640CD8();

    if (v29)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(&v42);
    result = v37 + 40;
    ++v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5F2DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskSuccessEvaluator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1DD5F2E54(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v44 = type metadata accessor for TaskSuccessEvaluator(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_25();
  v7 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v18 = sub_1DD63F9F8();
  __swift_project_value_buffer(v18, qword_1EE16F0C8);
  v19 = *(v9 + 16);
  v19(v17, a2, v7);
  v47 = a2;
  v19(v48, a2, v7);
  OUTLINED_FUNCTION_1_127();
  v45 = a3;
  sub_1DD5F3734(a3, v3, v20);
  v21 = v46;
  v22 = sub_1DD63F9D8();
  v23 = sub_1DD640368();

  v24 = &selRef_setIsFamilyNameMatch_;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v46 = v21;
    v26 = v25;
    *v25 = 134218496;
    sub_1DD63CF48();
    v28 = v27;
    v29 = *(v9 + 8);
    v42 = v3;
    v43 = v23;
    v29(v17, v7);
    *(v26 + 1) = v28;
    *(v26 + 6) = 2048;
    [v46 timestamp];
    *(v26 + 14) = v30;
    *(v26 + 11) = 2048;
    v31 = v48;
    sub_1DD63CF98();
    sub_1DD63CF48();
    v24 = &selRef_setIsFamilyNameMatch_;
    v33 = v32;
    v29(v12, v7);
    OUTLINED_FUNCTION_7_71();
    sub_1DD5F3794(v42, v34);
    v29(v31, v7);
    *(v26 + 3) = v33;
    _os_log_impl(&dword_1DD38D000, v22, v43, "lastCachedAt: %f biomeEvent.timestamp: %f, timeLimit: %f", v26, 0x20u);
    v21 = v46;
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {

    OUTLINED_FUNCTION_7_71();
    sub_1DD5F3794(v3, v35);
    v29 = *(v9 + 8);
    v29(v48, v7);
    v29(v17, v7);
  }

  [v21 v24[120]];
  v37 = v36;
  sub_1DD63CF98();
  sub_1DD63CF48();
  v39 = v38;
  v29(v12, v7);
  return v37 <= v39;
}

uint64_t sub_1DD5F3200(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();

  a2(v9, a5, a6);
}

uint64_t objectdestroyTm_1()
{
  v1 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for TaskSuccessEvaluator(0) - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = *(*v8 + 64);
  v12 = v4 | v9;
  v13 = *(v3 + 8);
  v13(v0 + v5, v1);

  v14 = type metadata accessor for TaskMetadata(0);
  v13(v0 + v10 + *(v14 + 24), v1);

  v15 = v8[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  OUTLINED_FUNCTION_7();
  (*(v16 + 8))(v0 + v10 + v15);
  v17 = v8[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
  OUTLINED_FUNCTION_7();
  (*(v18 + 8))(v0 + v10 + v17);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v11, v12 | 7);
}

BOOL sub_1DD5F3484(void *a1)
{
  v3 = *(sub_1DD63D078() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TaskSuccessEvaluator(0) - 8);
  return sub_1DD5F2E54(a1, v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1DD5F35A8(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v13 = v3;
    v4 = [v3 serialize];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1DD63CF28();
      v8 = v7;

      v9 = [v13 dataVersion];
      swift_beginAccess();
      sub_1DD3BE06C();
      v10 = *(*(a2 + 16) + 16);
      sub_1DD3BE22C(v10);
      v11 = *(a2 + 16);
      *(v11 + 16) = v10 + 1;
      v12 = v11 + 24 * v10;
      *(v12 + 32) = v6;
      *(v12 + 40) = v8;
      *(v12 + 48) = v9;
      *(a2 + 16) = v11;
      swift_endAccess();

      sub_1DD3AD790(v6, v8);
    }

    else
    {
    }
  }
}

unint64_t sub_1DD5F36E0()
{
  result = qword_1ECCDFCB0;
  if (!qword_1ECCDFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFCB0);
  }

  return result;
}

uint64_t sub_1DD5F3734(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5F3794(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_16Tm()
{

  OUTLINED_FUNCTION_15_51();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

_BYTE *storeEnumTagSinglePayload for TaskSuccessEvaluationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD5F3918(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 20))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DD5F3964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1DD5F39EC(uint64_t a1)
{
  type metadata accessor for TaskMetadata(319);
  if (v1 <= 0x3F)
  {
    sub_1DD5F3AD8(319);
    if (v2 <= 0x3F)
    {
      sub_1DD5F3B3C(319, &qword_1EE1637B0, &qword_1EE160230, 0x1E698F2B0);
      if (v3 <= 0x3F)
      {
        sub_1DD5F3B3C(319, &qword_1EE1637C0, &qword_1EE160240, 0x1E698F248);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD5F3AD8(uint64_t a1)
{
  if (!qword_1EE1602E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCA50, &qword_1DD649EF8);
    v1 = sub_1DD640178();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1602E8);
    }
  }
}

void sub_1DD5F3B3C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1DD39638C(255, a3, a4);
    v5 = sub_1DD63DA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DD5F3B98()
{
  result = qword_1ECCDFCB8;
  if (!qword_1ECCDFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFCB8);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_96(void *result)
{
  v3 = *(v2 - 168);
  result[2] = *(v2 - 176);
  result[3] = v3;
  v4 = *(v2 - 288);
  result[4] = v1;
  result[5] = v4;
  result[6] = *(v2 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_53(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 184);

  return MEMORY[0x1EEDF0598](a1, v5, a3, v4, v8, v3);
}

uint64_t OUTLINED_FUNCTION_14_46(uint64_t a1, uint64_t a2)
{
  *(v2 - 288) = a1;
  *(v2 - 296) = a2;

  return type metadata accessor for TaskMetadata(0);
}

uint64_t sub_1DD5F3CA4(uint64_t result)
{
  v1 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v2 = *(result + 16);
  v3 = result + 48;
  v12 = result + 48;
LABEL_2:
  v4 = (v3 + 24 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_12;
    }

    v6 = *v4;
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v9 = objc_opt_self();
    sub_1DD3D01B4(v8, v7);
    v10 = sub_1DD63CF08();
    v11 = [v9 eventWithData:v10 dataVersion:v6];

    result = sub_1DD3AD790(v8, v7);
    ++v1;
    v4 += 6;
    if (v11)
    {
      MEMORY[0x1E12B23F0](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD640138();
      }

      result = sub_1DD640168();
      v13 = v14;
      v1 = v5;
      v3 = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD5F3E04(void *a1)
{
  v1 = [a1 intentResponse];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
LABEL_11:

    return 0;
  }

  v4 = sub_1DD5F413C(v3);
  if (!v4)
  {

    return v4;
  }

  if (!sub_1DD3CC020())
  {

    goto LABEL_11;
  }

  sub_1DD408BFC();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E12B2C10](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v6 identifier];

  if (!v7)
  {
    goto LABEL_11;
  }

  v4 = sub_1DD63FDD8();

  return v4;
}

uint64_t sub_1DD5F3F18(uint64_t result)
{
  v1 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v2 = result + 48;
  v3 = *(result + 16);
  v20 = result + 48;
  v22 = v3;
LABEL_2:
  for (i = (v2 + 24 * v1); ; i += 6)
  {
    if (v3 == v1)
    {
      return v21;
    }

    if (v1 >= v3)
    {
      break;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_17;
    }

    v5 = *i;
    v6 = objc_opt_self();
    v7 = OUTLINED_FUNCTION_15_1();
    sub_1DD3D01B4(v7, v8);
    OUTLINED_FUNCTION_15_1();
    v9 = sub_1DD63CF08();
    v10 = [v6 eventWithData:v9 dataVersion:v5];

    if (v10)
    {
      v11 = [v10 interaction];
      v12 = sub_1DD63CF28();
      v14 = v13;

      sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
      sub_1DD39638C(0, &qword_1EE166248, 0x1E696E8B8);
      v17 = sub_1DD6403D8();

      sub_1DD3AD790(v12, v14);
      v18 = OUTLINED_FUNCTION_15_1();
      result = sub_1DD3AD790(v18, v19);
      if (v17)
      {
        MEMORY[0x1E12B23F0](result);
        v3 = v22;
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        result = sub_1DD640168();
        v21 = v23;
        ++v1;
        v2 = v20;
        goto LABEL_2;
      }

      v3 = v22;
    }

    else
    {
      v15 = OUTLINED_FUNCTION_15_1();
      result = sub_1DD3AD790(v15, v16);
    }

    ++v1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DD5F413C(void *a1)
{
  v1 = [a1 addedTasks];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DD39638C(0, &qword_1ECCDFCC0, 0x1E696EA98);
  v3 = sub_1DD640118();

  return v3;
}

id sub_1DD5F41AC()
{
  v1 = v0;
  v2 = type metadata accessor for TaskSuccessMetricsPublisher(0);
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC78, &qword_1DD6637E0);
  OUTLINED_FUNCTION_0();
  v49 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC80, &qword_1DD6637E8);
  OUTLINED_FUNCTION_0();
  v46 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  sub_1DD63CF58();
  sub_1DD63CF48();
  (*(v13 + 8))(v16, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  sub_1DD3FAC5C(&qword_1EE1637B8, &qword_1ECCDFC98, &unk_1DD6639C0, MEMORY[0x1E698F180]);
  sub_1DD63DA38();
  sub_1DD3FAC5C(&qword_1EE1637C8, &qword_1ECCDFC80, &qword_1DD6637E8, MEMORY[0x1E698F098]);
  v47 = v17;
  v45 = v21;
  sub_1DD63D4C8();
  sub_1DD628CE8();
  sub_1DD5F657C(v1, v6, type metadata accessor for TaskSuccessMetricsPublisher);
  v22 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v23 = swift_allocObject();
  sub_1DD5F65DC(v6, v23 + v22, type metadata accessor for TaskSuccessMetricsPublisher);
  v24 = v1;
  v25 = v48;
  sub_1DD5F657C(v24, v48, type metadata accessor for TaskSuccessMetricsPublisher);
  v26 = v44;
  v27 = swift_allocObject();
  sub_1DD5F65DC(v25, v27 + v22, type metadata accessor for TaskSuccessMetricsPublisher);
  sub_1DD3FAC5C(&unk_1EE1637D0, &qword_1ECCDFC78, &qword_1DD6637E0, MEMORY[0x1E698F088]);
  v48 = v10;
  v28 = sub_1DD63D4D8();

  swift_unknownObjectRelease();
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v29 = sub_1DD63F9F8();
  __swift_project_value_buffer(v29, qword_1EE16F0C8);
  v30 = v28;
  v31 = sub_1DD63F9D8();
  v32 = sub_1DD640368();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50 = v35;
    *v33 = 136315394;
    v36 = [v30 debugDescription];
    v37 = sub_1DD63FDD8();
    v39 = v38;

    v40 = sub_1DD39565C(v37, v39, &v50);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2112;
    v41 = [v30 status];
    *(v33 + 14) = v41;
    *v34 = v41;
    _os_log_impl(&dword_1DD38D000, v31, v32, "Biome: Created Sink: %s, Sink Status: %@", v33, 0x16u);
    sub_1DD3CBE0C(v34);
    MEMORY[0x1E12B3DA0](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E12B3DA0](v35, -1, -1);
    MEMORY[0x1E12B3DA0](v33, -1, -1);
  }

  (*(v49 + 8))(v48, v26);
  (*(v46 + 8))(v45, v47);
  return v30;
}

uint64_t type metadata accessor for TaskSuccessMetricsPublisher(uint64_t a1)
{
  result = qword_1EE1610D8;
  if (!qword_1EE1610D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1DD5F483C(void *a1)
{
  v1 = [a1 eventBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 donatedBySiri];

  return v3;
}

void sub_1DD5F4894(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD63F9F8();
  __swift_project_value_buffer(v5, qword_1EE16F0C8);
  v6 = a1;
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_1DD38D000, v7, v8, "TaskSuccessMetricsPublisher completion: %@", v9, 0xCu);
    sub_1DD3CBE0C(v10);
    MEMORY[0x1E12B3DA0](v10, -1, -1);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
  }

  v12 = type metadata accessor for TaskSuccessMetricsPublisher(0);
  v13 = swift_unknownObjectRetain();
  sub_1DD6291C4(v13);
  v14 = a3 + *(v12 + 28);
  v15 = *v14;
  if (*v14)
  {
    v16 = *(v14 + 8);

    v15(v17);

    sub_1DD39E698(v15, v16);
  }

  else
  {
    oslog = sub_1DD63F9D8();
    v18 = sub_1DD640368();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DD38D000, oslog, v18, "no sinkCompletion provided, returning", v19, 2u);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
    }
  }
}

void sub_1DD5F4AD4(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E12B3350]();
  sub_1DD5F4B34(a1, a2);

  objc_autoreleasePoolPop(v4);
}

void sub_1DD5F4B34(void *a1, uint64_t a2)
{
  v132 = a2;
  v130 = type metadata accessor for TaskSuccessMetricsPublisher(0);
  v126 = *(v130 - 8);
  v4 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v131 = type metadata accessor for TaskSuccessEvaluator(0);
  v123 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v124 = v5;
  v125 = &v109[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v109[-v7];
  v133 = type metadata accessor for TaskMetadata(0);
  v122 = *(v133 - 8);
  v9 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v120 = &v109[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v109[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v109[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v109[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v109[-v18];
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v22 = &v109[-v21];
  v23 = [a1 eventBody];
  if (!v23)
  {
    goto LABEL_4;
  }

  v24 = v23;
  v116 = v4;
  v117 = &v109[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = v8;
  v119 = v12;
  v121 = v22;
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  sub_1DD39638C(0, &qword_1EE166248, 0x1E696E8B8);
  v25 = [v24 interaction];
  v26 = sub_1DD63CF28();
  v27 = v24;
  v29 = v28;

  v30 = sub_1DD6403D8();
  if (v2)
  {

    sub_1DD3AD790(v26, v29);
LABEL_4:
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v31 = sub_1DD63F9F8();
    __swift_project_value_buffer(v31, qword_1EE16F0C8);
    v32 = a1;
    v33 = sub_1DD63F9D8();
    v34 = sub_1DD640368();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v134[0] = v36;
      *v35 = 136315138;
      v37 = v32;
      v38 = [v37 description];
      v39 = sub_1DD63FDD8();
      v41 = v40;

      v42 = sub_1DD39565C(v39, v41, v134);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_1DD38D000, v33, v34, "event: %s is ineligible for task success evaluation, returning", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1E12B3DA0](v36, -1, -1);
      MEMORY[0x1E12B3DA0](v35, -1, -1);
    }

    return;
  }

  v43 = v30;
  v115 = v27;
  sub_1DD3AD790(v26, v29);
  if (!v43)
  {

    goto LABEL_4;
  }

  v114 = 0;
  v113 = v43;
  v44 = sub_1DD5F64EC([v43 intent]);
  if (v45)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  v47 = 0xE000000000000000;
  if (v45)
  {
    v48 = v45;
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  v49 = sub_1DD3D00A4(v115);
  if (v50)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0;
  }

  if (v50)
  {
    v47 = v50;
  }

  [a1 timestamp];
  v52 = v121;
  sub_1DD63CF38();
  *v52 = v46;
  v52[1] = v48;
  v52[2] = v51;
  v52[3] = v47;
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v53 = sub_1DD63F9F8();
  v54 = __swift_project_value_buffer(v53, qword_1EE16F0C8);
  v55 = v127;
  sub_1DD5F657C(v52, v127, type metadata accessor for TaskMetadata);
  v56 = v128;
  sub_1DD5F657C(v52, v128, type metadata accessor for TaskMetadata);
  v57 = v129;
  sub_1DD5F657C(v52, v129, type metadata accessor for TaskMetadata);
  v112 = v54;
  v58 = sub_1DD63F9D8();
  v59 = sub_1DD640368();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v119;
  if (v60)
  {
    v62 = v56;
    v63 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v134[0] = v111;
    *v63 = 136315650;
    v110 = v59;
    v64 = *v55;
    v65 = v55[1];

    sub_1DD5F679C(v55, type metadata accessor for TaskMetadata);
    v66 = sub_1DD39565C(v64, v65, v134);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2080;
    v67 = *(v62 + 16);
    v68 = *(v62 + 24);

    sub_1DD5F679C(v62, type metadata accessor for TaskMetadata);
    v69 = sub_1DD39565C(v67, v68, v134);

    *(v63 + 14) = v69;
    *(v63 + 22) = 2048;
    sub_1DD63CF48();
    v71 = v70;
    v52 = v121;
    sub_1DD5F679C(v57, type metadata accessor for TaskMetadata);
    *(v63 + 24) = v71;
    _os_log_impl(&dword_1DD38D000, v58, v110, "taskMetadata: id:%s type: %s, beganAt: %f", v63, 0x20u);
    v72 = v111;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v72, -1, -1);
    MEMORY[0x1E12B3DA0](v63, -1, -1);
  }

  else
  {

    sub_1DD5F679C(v57, type metadata accessor for TaskMetadata);
    sub_1DD5F679C(v56, type metadata accessor for TaskMetadata);
    sub_1DD5F679C(v55, type metadata accessor for TaskMetadata);
  }

  v73 = v114;
  v74 = v132;
  sub_1DD5F657C(v52, v61, type metadata accessor for TaskMetadata);
  v75 = v131;
  v76 = *(v131 + 24);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  v78 = v61;
  v79 = v118;
  (*(*(v77 - 8) + 16))(&v118[v76], v74, v77);
  v80 = *(v130 + 20);
  v81 = v75[7];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
  (*(*(v82 - 8) + 16))(v79 + v81, v74 + v80, v82);
  if (qword_1EE161D68 != -1)
  {
    swift_once();
  }

  v83 = sub_1DD5F657C(v78, v79, type metadata accessor for TaskMetadata);
  MEMORY[0x1EEE9AC00](v83);
  *&v109[-16] = v78;

  sub_1DD3EC25C();
  v85 = v84;
  v114 = v73;
  *(v79 + v75[5]) = v84;
  *(v79 + v75[8]) = 0x4072C00000000000;
  sub_1DD5F679C(v78, type metadata accessor for TaskMetadata);
  if (*(v85 + 16))
  {
    v86 = v125;
    sub_1DD5F657C(v79, v125, type metadata accessor for TaskSuccessEvaluator);
    v87 = v117;
    sub_1DD5F657C(v74, v117, type metadata accessor for TaskSuccessMetricsPublisher);
    sub_1DD5F657C(v121, v78, type metadata accessor for TaskMetadata);
    v88 = (*(v123 + 80) + 16) & ~*(v123 + 80);
    v89 = (v124 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = (*(v126 + 80) + v89 + 8) & ~*(v126 + 80);
    v91 = (v116 + *(v122 + 80) + v90) & ~*(v122 + 80);
    v92 = swift_allocObject();
    sub_1DD5F65DC(v86, v92 + v88, type metadata accessor for TaskSuccessEvaluator);
    v93 = v113;
    *(v92 + v89) = v113;
    sub_1DD5F65DC(v87, v92 + v90, type metadata accessor for TaskSuccessMetricsPublisher);
    sub_1DD5F65DC(v119, v92 + v91, type metadata accessor for TaskMetadata);
    v94 = v93;
    sub_1DD5F22C0(sub_1DD5F663C, v92);

    sub_1DD5F679C(v121, type metadata accessor for TaskMetadata);
    v95 = v79;
  }

  else
  {
    v96 = v79;
    v97 = v120;
    v98 = v121;
    sub_1DD5F657C(v121, v120, type metadata accessor for TaskMetadata);
    v99 = sub_1DD63F9D8();
    v100 = sub_1DD640368();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v134[0] = v102;
      *v101 = 136315138;
      sub_1DD5F657C(v97, v78, type metadata accessor for TaskMetadata);
      v103 = sub_1DD63FE38();
      v104 = v97;
      v105 = v103;
      v107 = v106;
      sub_1DD5F679C(v104, type metadata accessor for TaskMetadata);
      v108 = sub_1DD39565C(v105, v107, v134);

      *(v101 + 4) = v108;
      _os_log_impl(&dword_1DD38D000, v99, v100, "Task %s is not eligible for task success evaluation", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      MEMORY[0x1E12B3DA0](v102, -1, -1);
      MEMORY[0x1E12B3DA0](v101, -1, -1);
    }

    else
    {

      sub_1DD5F679C(v97, type metadata accessor for TaskMetadata);
    }

    sub_1DD5F679C(v98, type metadata accessor for TaskMetadata);
    v95 = v96;
  }

  sub_1DD5F679C(v95, type metadata accessor for TaskSuccessEvaluator);
}

void sub_1DD5F5AD8(char a1, uint64_t a2, const char *a3, NSObject *a4)
{
  v5 = v4;
  v67 = a3;
  v9 = type metadata accessor for TaskMetadata(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v68[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68[-1] - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68[-1] - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68[-1] - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v68[-1] - v22;
  switch(a1)
  {
    case 1:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v50 = sub_1DD63F9F8();
      __swift_project_value_buffer(v50, qword_1EE16F0C8);
      sub_1DD5F657C(a4, v23, type metadata accessor for TaskMetadata);
      v51 = sub_1DD63F9D8();
      v52 = sub_1DD640368();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v68[0] = v54;
        *v53 = 136315138;
        sub_1DD5F657C(v23, v20, type metadata accessor for TaskMetadata);
        v55 = sub_1DD63FE38();
        v57 = v56;
        sub_1DD5F679C(v23, type metadata accessor for TaskMetadata);
        v58 = sub_1DD39565C(v55, v57, v68);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_1DD38D000, v51, v52, "Logging success for .none activityType for task: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x1E12B3DA0](v54, -1, -1);
        MEMORY[0x1E12B3DA0](v53, -1, -1);
      }

      else
      {

        sub_1DD5F679C(v23, type metadata accessor for TaskMetadata);
      }

      v61 = type metadata accessor for TaskSuccessMetricsPublisher(0);
      __swift_project_boxed_opaque_existential_1((v5 + *(v61 + 24)), *(v5 + *(v61 + 24) + 24));
      sub_1DD5A7890(a4, a2, v67, v62, v63, v64, v65, v66, v67, v68[0], v68[1]);
      break;
    case 2:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v33 = sub_1DD63F9F8();
      __swift_project_value_buffer(v33, qword_1EE16F0C8);
      sub_1DD5F657C(a4, v17, type metadata accessor for TaskMetadata);
      v34 = sub_1DD63F9D8();
      v35 = sub_1DD640368();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v68[0] = v37;
        *v36 = 136315138;
        sub_1DD5F657C(v17, v20, type metadata accessor for TaskMetadata);
        v38 = sub_1DD63FE38();
        v40 = v39;
        sub_1DD5F679C(v17, type metadata accessor for TaskMetadata);
        v41 = sub_1DD39565C(v38, v40, v68);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1DD38D000, v34, v35, "Logging failure for .update activityType for task: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        v42 = v37;
        goto LABEL_14;
      }

      v59 = v17;
      goto LABEL_21;
    case 3:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v43 = sub_1DD63F9F8();
      __swift_project_value_buffer(v43, qword_1EE16F0C8);
      sub_1DD5F657C(a4, v14, type metadata accessor for TaskMetadata);
      v34 = sub_1DD63F9D8();
      v44 = sub_1DD640368();
      if (os_log_type_enabled(v34, v44))
      {
        v36 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v68[0] = v45;
        *v36 = 136315138;
        sub_1DD5F657C(v14, v20, type metadata accessor for TaskMetadata);
        v46 = sub_1DD63FE38();
        v48 = v47;
        sub_1DD5F679C(v14, type metadata accessor for TaskMetadata);
        v49 = sub_1DD39565C(v46, v48, v68);

        *(v36 + 4) = v49;
        _os_log_impl(&dword_1DD38D000, v34, v44, "Logging failure for .delete activityType for task: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        v42 = v45;
LABEL_14:
        MEMORY[0x1E12B3DA0](v42, -1, -1);
        MEMORY[0x1E12B3DA0](v36, -1, -1);
      }

      else
      {

        v59 = v14;
LABEL_21:
        sub_1DD5F679C(v59, type metadata accessor for TaskMetadata);
      }

      v60 = type metadata accessor for TaskSuccessMetricsPublisher(0);
      __swift_project_boxed_opaque_existential_1((v5 + *(v60 + 24)), *(v5 + *(v60 + 24) + 24));
      sub_1DD5A795C(a4, a2, v67);
      break;
    default:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v24 = sub_1DD63F9F8();
      __swift_project_value_buffer(v24, qword_1EE16F0C8);
      sub_1DD5F657C(a4, v11, type metadata accessor for TaskMetadata);
      v25 = sub_1DD63F9D8();
      v26 = sub_1DD640368();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v68[0] = v28;
        *v27 = 136315138;
        sub_1DD5F657C(v11, v20, type metadata accessor for TaskMetadata);
        v29 = sub_1DD63FE38();
        v31 = v30;
        sub_1DD5F679C(v11, type metadata accessor for TaskMetadata);
        v32 = sub_1DD39565C(v29, v31, v68);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_1DD38D000, v25, v26, "Not logging success metrics for .notApplication activityType for task: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1E12B3DA0](v28, -1, -1);
        MEMORY[0x1E12B3DA0](v27, -1, -1);
      }

      else
      {

        sub_1DD5F679C(v11, type metadata accessor for TaskMetadata);
      }

      break;
  }
}

void sub_1DD5F62B0(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TaskSuccessMetricsPublisher(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1DD5F4894(a1, a2, v6);
}

uint64_t objectdestroyTm_2()
{
  type metadata accessor for TaskSuccessMetricsPublisher(0);
  OUTLINED_FUNCTION_2_113();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  OUTLINED_FUNCTION_7();
  (*(v7 + 8))(v1 + v4);
  v8 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
  OUTLINED_FUNCTION_7();
  (*(v9 + 8))(v1 + v4 + v8);
  __swift_destroy_boxed_opaque_existential_1((v1 + v4 + v0[6]));
  if (*(v1 + v4 + v0[7]))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

void sub_1DD5F647C(void *a1)
{
  v3 = *(type metadata accessor for TaskSuccessMetricsPublisher(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1DD5F4AD4(a1, v4);
}

uint64_t sub_1DD5F64EC(void *a1)
{
  v2 = [a1 intentId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD5F657C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5F65DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1DD5F663C(uint64_t a1, uint64_t a2, const char *a3)
{
  v7 = *(type metadata accessor for TaskSuccessEvaluator(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for TaskSuccessMetricsPublisher(0) - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for TaskMetadata(0) - 8);
  v14 = *(v3 + v9);
  v15 = (v3 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)));

  sub_1DD5F5854(a1, a2, a3, v3 + v8, v14, v3 + v11, v15);
}

uint64_t sub_1DD5F679C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1DD5F681C(uint64_t a1)
{
  sub_1DD5F3B3C(319, &qword_1EE1637B0, &qword_1EE160230, 0x1E698F2B0);
  if (v1 <= 0x3F)
  {
    sub_1DD5F3B3C(319, &qword_1EE1637C0, &qword_1EE160240, 0x1E698F248);
    if (v2 <= 0x3F)
    {
      sub_1DD5F69A4(319, &qword_1EE1623E8, &protocol descriptor for TaskSuccessLogger, 1);
      if (v3 <= 0x3F)
      {
        sub_1DD5F6940(319);
        if (v4 <= 0x3F)
        {
          sub_1DD5F69A4(319, qword_1EE161CB8, &protocol descriptor for UserDefaultsProvider, 0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DD5F6940(uint64_t a1)
{
  if (!qword_1EE160128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCFB0, &qword_1DD6639F0);
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE160128);
    }
  }
}

uint64_t sub_1DD5F69A4(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t TerminalElement.TemporalIntent.toTemporalIntent()@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD63DFE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69D1848])
  {
    *a1 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D1858])
  {
    v10 = 1;
LABEL_7:
    *a1 = v10;
    return result;
  }

  if (result == *MEMORY[0x1E69D1850])
  {
    v10 = 2;
    goto LABEL_7;
  }

  *a1 = 4;
  return (*(v5 + 8))(v8, v4);
}

uint64_t DateTime.TemporalIntent.init(rawValue:)@<X0>(char *a2@<X8>)
{
  v3 = sub_1DD640AA8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t DateTime.TemporalIntent.rawValue.getter()
{
  result = 1953718640;
  switch(*v0)
  {
    case 1:
      result = 0x746E6573657270;
      break;
    case 2:
      result = 0x657275747566;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5F6C5C@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.TemporalIntent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DD5F6D38()
{
  result = qword_1ECCDFCC8;
  if (!qword_1ECCDFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFCC8);
  }

  return result;
}

_BYTE *_s14TemporalIntentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5F6E68()
{
  result = qword_1ECCDFCD0;
  if (!qword_1ECCDFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFCD0);
  }

  return result;
}

void sub_1DD5F6EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void))
{
  v42 = a3;
  v9 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v41 = sub_1DD63C868();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48) == 4)
  {
    if (*(a1 + 24) == 2)
    {
      v35 = a6;
      v36 = v6;
      v26 = *a6;
      v43 = MEMORY[0x1E69E7CC0];
      v40 = sub_1DD3CC020();
      v27 = 0;
      OUTLINED_FUNCTION_0_143();
      while (v40 != v27)
      {
        if (v38)
        {
          MEMORY[0x1E12B2C10](v27, v39);
        }

        else
        {
          if (v27 >= *(v37 + 16))
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_6_77();
        }

        if (__OFADD__(v27, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return;
        }

        v28 = OUTLINED_FUNCTION_2_114();
        v29(v28);
        sub_1DD63C848();
        v30 = OUTLINED_FUNCTION_3_97();
        v31(v30);
        v32 = OUTLINED_FUNCTION_1_128();
        v33(v32);
        sub_1DD63CFB8();
        v34 = OUTLINED_FUNCTION_4_92();
        v26(v34);
        (v26)(v13, v9);
        if (v16)
        {
          sub_1DD640958();
          v26 = *(v43 + 16);
          sub_1DD640998();
          sub_1DD6409A8();
          sub_1DD640968();
        }

        else
        {
        }

        ++v27;
      }
    }

    else
    {
      if (*(a1 + 24))
      {
        return;
      }

      v35 = a6;
      v36 = v6;
      v17 = *a6;
      v43 = MEMORY[0x1E69E7CC0];
      v40 = sub_1DD3CC020();
      v18 = 0;
      OUTLINED_FUNCTION_0_143();
      while (v40 != v18)
      {
        if (v38)
        {
          MEMORY[0x1E12B2C10](v18, v39);
        }

        else
        {
          if (v18 >= *(v37 + 16))
          {
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_6_77();
        }

        if (__OFADD__(v18, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        v19 = OUTLINED_FUNCTION_2_114();
        v20(v19);
        sub_1DD63C848();
        v21 = OUTLINED_FUNCTION_3_97();
        v22(v21);
        v23 = OUTLINED_FUNCTION_1_128();
        v24(v23);
        sub_1DD63CFC8();
        v25 = OUTLINED_FUNCTION_4_92();
        v17(v25);
        (v17)(v13, v9);
        if (v16)
        {
          sub_1DD640958();
          v17 = *(v43 + 16);
          sub_1DD640998();
          sub_1DD6409A8();
          sub_1DD640968();
        }

        else
        {
        }

        ++v18;
      }
    }

    *v35 = v43;
  }
}

uint64_t sub_1DD5F7328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1DD63D188();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v18 - v13;
  (*(v8 + 104))(v10, *MEMORY[0x1E6969868], v7, v12);
  sub_1DD63D198();
  (*(v8 + 8))(v10, v7);
  v15 = sub_1DD63D2D8();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v16 = sub_1DD63D328();
  (*(*(v16 - 8) + 16))(v6, a2, v16);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v16);
  return sub_1DD63CB68(v14, v6, 0, 1, a1, 0, 11, 0, 0, 1, 0);
}

uint64_t sub_1DD5F765C(uint64_t a1)
{
  result = type metadata accessor for SiriVocabularySearcher(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StringTokenizer(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD5F7708(uint64_t a1)
{
  result = sub_1DD63D168();
  if (v2 <= 0x3F)
  {
    result = sub_1DD39638C(319, &qword_1EE1601C0, 0x1E6997E98);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD5F779C(_DWORD *a1, void *a2)
{
  v145 = a2;
  v143 = a1;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v138 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v137 = v4;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v128 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v128 - v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v128 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v142 = (&v128 - v14);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v128 - v16;
  type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_0();
  v147 = v18;
  v148 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  v135 = v19;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v128 - v21;
  v22 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v26 = qword_1EE16F0C0;
    v27 = v25 + *(v22 + 20);
    *v27 = "ContactResolver.3PMatcher";
    *(v27 + 8) = 25;
    *(v27 + 16) = 2;
    v28 = v26;
    sub_1DD63F9B8();
    *(v25 + *(v22 + 24)) = v28;
    v29 = v28;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DD643F90;
    v31 = sub_1DD6408F8();
    v33 = v32;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1DD392BD8();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    v130 = v29;
    v131 = v25;
    sub_1DD63F998();

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v34 = sub_1DD63F9F8();
    v35 = __swift_project_value_buffer(v34, qword_1EE16F068);

    v144 = v35;
    v36 = sub_1DD63F9D8();
    v37 = sub_1DD640368();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v139;
    if (v38)
    {
      v40 = OUTLINED_FUNCTION_54();
      v41 = OUTLINED_FUNCTION_62();
      v151 = v41;
      *v40 = 136315138;
      v42 = sub_1DD640278();
      v44 = sub_1DD39565C(v42, v43, &v151);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1DD38D000, v36, v37, "finding 3p contact matches in %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v151 = MEMORY[0x1E69E7CD0];
    MEMORY[0x1EEE9AC00](v45);
    sub_1DD583330();
    v47 = v46;
    v132 = sub_1DD5F9AC8();

    v48 = sub_1DD63F9D8();
    v49 = sub_1DD640368();

    v50 = os_log_type_enabled(v48, v49);
    v141 = v7;
    v136 = v47;
    if (v50)
    {
      LODWORD(v145) = v49;
      v51 = OUTLINED_FUNCTION_54();
      v134 = OUTLINED_FUNCTION_62();
      v150[0] = v134;
      v143 = v51;
      *v51 = 136315138;
      v52 = *(v47 + 16);
      v53 = MEMORY[0x1E69E7CC0];
      if (v52)
      {
        v129 = v48;
        v149 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_19_39();
        v53 = v149;
        OUTLINED_FUNCTION_18_3();
        v55 = v47 + v54;
        v57 = *(v56 + 72);
        do
        {
          OUTLINED_FUNCTION_16_52();
          sub_1DD3C4EB4();
          OUTLINED_FUNCTION_3_98();
          sub_1DD5FA998();
          sub_1DD390754(v51, &qword_1ECCDBBE8, &qword_1DD644470);
          v149 = v53;
          v58 = v39;
          v60 = *(v53 + 16);
          v59 = *(v53 + 24);
          v51 = (v60 + 1);
          if (v60 >= v59 >> 1)
          {
            v63 = OUTLINED_FUNCTION_1_0(v59);
            sub_1DD42B5EC(v63, v60 + 1, 1);
            v53 = v149;
          }

          *(v53 + 16) = v51;
          OUTLINED_FUNCTION_18_3();
          sub_1DD3C95D4(v58, v53 + v61 + *(v62 + 72) * v60);
          v55 += v57;
          --v52;
          v39 = v58;
        }

        while (v52);
        v7 = v141;
        v47 = v136;
        v48 = v129;
      }

      v64 = MEMORY[0x1E12B2430](v53, v148);
      v66 = v65;

      v67 = sub_1DD39565C(v64, v66, v150);

      v68 = v143;
      *(v143 + 1) = v67;
      _os_log_impl(&dword_1DD38D000, v48, v145, "std 3p matches: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v134);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v69 = v132;

    v70 = sub_1DD63F9D8();
    v71 = sub_1DD640368();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = OUTLINED_FUNCTION_54();
      v145 = OUTLINED_FUNCTION_62();
      v150[0] = v145;
      *v72 = 136315138;
      v73 = *(v69 + 16);
      v74 = MEMORY[0x1E69E7CC0];
      if (v73)
      {
        v139 = v72;
        LODWORD(v143) = v71;
        v144 = v70;
        v149 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_19_39();
        v74 = v149;
        OUTLINED_FUNCTION_18_3();
        v76 = v69 + v75;
        v78 = *(v77 + 72);
        v79 = v135;
        do
        {
          OUTLINED_FUNCTION_16_52();
          sub_1DD3C4EB4();
          OUTLINED_FUNCTION_3_98();
          sub_1DD5FA998();
          sub_1DD390754(v69, &qword_1ECCDBBE8, &qword_1DD644470);
          v149 = v74;
          v81 = *(v74 + 16);
          v80 = *(v74 + 24);
          v69 = v81 + 1;
          if (v81 >= v80 >> 1)
          {
            v84 = OUTLINED_FUNCTION_1_0(v80);
            sub_1DD42B5EC(v84, v81 + 1, 1);
            v74 = v149;
          }

          *(v74 + 16) = v69;
          OUTLINED_FUNCTION_18_3();
          sub_1DD3C95D4(v79, v74 + v82 + *(v83 + 72) * v81);
          v76 += v78;
          --v73;
        }

        while (v73);
        v7 = v141;
        v47 = v136;
        v70 = v144;
        LOBYTE(v71) = v143;
        v72 = v139;
      }

      v85 = MEMORY[0x1E12B2430](v74, v148);
      v87 = v86;

      v88 = sub_1DD39565C(v85, v87, v150);

      *(v72 + 4) = v88;
      _os_log_impl(&dword_1DD38D000, v70, v71, "nlx 3p matches: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v135 = *(v47 + 16);
    if (!v135)
    {
      break;
    }

    v22 = 0;
    v139 = ((*(v138 + 80) + 32) & ~*(v138 + 80));
    v134 = &v139[v47];
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v22 >= *(v47 + 16))
      {
        goto LABEL_83;
      }

      v89 = *(v138 + 72);
      v143 = v22;
      sub_1DD3C4EB4();
      v22 = v25;
      v90 = *(v25 + 16);
      if (v90)
      {
        break;
      }

LABEL_55:
      v90 = v142;
      sub_1DD3C4EB4();
      v25 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEC44(0, *(v22 + 16) + 1, 1, v22);
        v25 = v105;
      }

      v22 = v143;
      v104 = *(v25 + 16);
      v103 = *(v25 + 24);
      v7 = v141;
      if (v104 >= v103 >> 1)
      {
        v106 = OUTLINED_FUNCTION_1_0(v103);
        sub_1DD3BEC44(v106, v104 + 1, 1, v25);
        v25 = v107;
      }

      v47 = v136;
      *(v25 + 16) = v104 + 1;
      sub_1DD447808();
LABEL_60:
      ++v22;
      sub_1DD390754(v90, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v22 == v135)
      {

        goto LABEL_64;
      }
    }

    v91 = 0;
    v25 = *v142;
    v7 = v142[1];
    v92 = v142[5];
    v144 = v142[6];
    v145 = v92;
    v93 = (v142 + *(v148 + 88));
    v94 = *v93;
    v47 = v93[1];
    v95 = &v139[v22];
    v96 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v96 = v25 & 0xFFFFFFFFFFFFLL;
    }

    v146 = v96;
    v147 = v94;
    while (v91 < *(v22 + 16))
    {
      sub_1DD3C4EB4();
      v97 = *v12 == v25 && *(v12 + 1) == v7;
      if (!v97 && (sub_1DD640CD8() & 1) == 0 && v146)
      {
        goto LABEL_53;
      }

      v98 = &v12[*(v148 + 88)];
      v99 = *(v98 + 1);
      if (v99)
      {
        if (!v47)
        {

LABEL_53:
          sub_1DD390754(v12, &qword_1ECCDBBE8, &qword_1DD644470);
          goto LABEL_54;
        }

        v100 = *v98 == v147 && v99 == v47;
        if (!v100 && (sub_1DD640CD8() & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {

        if (v47)
        {
          goto LABEL_53;
        }
      }

      if (*(v12 + 5) == v145 && *(v12 + 6) == v144)
      {
        sub_1DD390754(v12, &qword_1ECCDBBE8, &qword_1DD644470);
        OUTLINED_FUNCTION_15_52();
        goto LABEL_60;
      }

      v102 = sub_1DD640CD8();
      sub_1DD390754(v12, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v102)
      {
        OUTLINED_FUNCTION_15_52();
        goto LABEL_60;
      }

LABEL_54:
      ++v91;
      v95 += v89;
      if (v90 == v91)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_64:
  v108 = *(v132 + 16);
  if (v108)
  {
    v109 = v25;
    OUTLINED_FUNCTION_18_3();
    v148 = v110;
    v112 = v111 + v110;
    v114 = *(v113 + 72);
    v147 = v7 + 344;
    do
    {
      sub_1DD3C4EB4();
      v12 = v109;
      v115 = sub_1DD5FA120(v7, v109);
      if (v116)
      {
        sub_1DD3C4EB4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3BEC44(0, *(v109 + 16) + 1, 1, v109);
          v109 = v122;
        }

        v118 = *(v109 + 16);
        v117 = *(v109 + 24);
        if (v118 >= v117 >> 1)
        {
          v123 = OUTLINED_FUNCTION_1_0(v117);
          sub_1DD3BEC44(v123, v118 + 1, 1, v109);
          v109 = v124;
        }

        sub_1DD390754(v7, &qword_1ECCDBBE8, &qword_1DD644470);
        *(v109 + 16) = v118 + 1;
        sub_1DD447808();
      }

      else
      {
        v22 = v115;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD586A18();
          v109 = v125;
        }

        v119 = v133;
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        if (v22 >= *(v109 + 16))
        {
          goto LABEL_85;
        }

        v12 = (v109 + v148 + v22 * v114);
        v12[*(v133 + 36) + 339] = 1;
        v120 = *(v147 + *(v119 + 36));
        v121 = v7;
        v7 = v119;
        sub_1DD390754(v121, &qword_1ECCDBBE8, &qword_1DD644470);
        if (v22 >= *(v109 + 16))
        {
          goto LABEL_86;
        }

        *&v12[*(v7 + 36) + 344] = v120;
        v7 = v141;
      }

      v112 += v114;
      --v108;
    }

    while (v108);

    v25 = v109;
  }

  else
  {
  }

  sub_1DD6404C8();
  v126 = v131;
  sub_1DD63F9A8();
  sub_1DD41BFFC(v126);
  return v25;
}

unint64_t sub_1DD5F853C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DD63FF98();
  }

  else if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = __OFADD__(v6, 2);
  result = v6 + 2;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E12B21B0](result);
    MEMORY[0x1E12B2250](a1, a2);

    while (1)
    {
      v9 = sub_1DD63FF88();
      if (!v10)
      {
        break;
      }

      v13 = v9;
      v14 = v10;
      MEMORY[0x1E12B2250](v9, v10, v11, v12);
      v15 = v13 == a1 && v14 == a2;
      if (v15 || (sub_1DD640CD8() & 1) != 0)
      {
        MEMORY[0x1E12B2250](v13, v14);
      }
    }

    MEMORY[0x1E12B2250](a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_1DD5F8668(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v92) = a3;
  v94 = a1;
  v6 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v10 = qword_1EE16F0C0;
  v11 = &v9[*(v6 + 20)];
  *v11 = "ContactResolver.3PMatcher.Search";
  *(v11 + 1) = 32;
  v11[16] = 2;
  v12 = v10;
  sub_1DD63F9B8();
  *&v9[*(v6 + 24)] = v12;
  v13 = v12;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DD643F90;
  v15 = sub_1DD6408F8();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1DD392BD8();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v93 = v13;
  sub_1DD63F998();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643B80;
  *(inited + 32) = CKVCustomTypeToNumber();
  sub_1DD418A94(inited);
  if (*(a2 + 16))
  {
    v20 = a2;
  }

  else
  {
    v20 = 0;
  }

  v91 = v20;
  v92 = v19;
  if (sub_1DD4F9BB8(v19) & 1) != 0 || (v97 = sub_1DD63D118(), v98 = v25, v95 = 24938, v96 = 0xE200000000000000, sub_1DD3B52B8(), v26 = sub_1DD3B530C(), v27 = OUTLINED_FUNCTION_11_54(v26, MEMORY[0x1E69E6158]), , (v27) || (v97 = sub_1DD63D118(), v98 = v28, v95 = 28523, v96 = 0xE200000000000000, v29 = OUTLINED_FUNCTION_11_54(v97, MEMORY[0x1E69E6158]), , (v29))
  {
    v30 = v94;
    v31 = *(v94 + 16);
    if (v31)
    {
      v89 = v4;
      v90 = v9;
      v95 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v31, 0, v21, v22, v23, v24);
      v32 = v95;
      v33 = (v30 + 40);
      do
      {
        v34 = *(v33 - 1);
        v35 = *v33;
        v97 = 37;
        v98 = 0xE100000000000000;

        MEMORY[0x1E12B2260](v34, v35);
        MEMORY[0x1E12B2260](37, 0xE100000000000000);

        v37 = v97;
        v36 = v98;
        v95 = v32;
        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        if (v39 >= v38 >> 1)
        {
          v41 = OUTLINED_FUNCTION_1_0(v38);
          sub_1DD42A2D4(v41, v39 + 1, 1, v42, v43, v44, v45);
          v32 = v95;
        }

        *(v32 + 16) = v39 + 1;
        v40 = v32 + 16 * v39;
        *(v40 + 32) = v37;
        *(v40 + 40) = v36;
        v33 += 2;
        --v31;
      }

      while (v31);
      v4 = v89;
      v9 = v90;
      v30 = v94;
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v46 = sub_1DD63F9F8();
    __swift_project_value_buffer(v46, qword_1EE16F068);

    v47 = sub_1DD63F9D8();
    v48 = sub_1DD640368();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_54();
      v50 = OUTLINED_FUNCTION_62();
      v97 = v50;
      *v49 = 136315138;
      v51 = MEMORY[0x1E12B2430](v30, MEMORY[0x1E69E6158]);
      v53 = sub_1DD39565C(v51, v52, &v97);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_1DD38D000, v47, v48, "cjk search for %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v54 = *(v4 + *(type metadata accessor for SiriVocabularySearcher(0) + 20));
    v55 = sub_1DD6400F8();

    if (v91)
    {
      v56 = sub_1DD640258();
    }

    else
    {
      v56 = 0;
    }

    sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
    sub_1DD41B0B0();
    v57 = sub_1DD640258();

    v58 = [v54 searchCustomVocabularyWithWildcardPatterns:v55 appIds:v56 vocabularyTypes:v57];
  }

  else
  {
    v62 = v94;
    v63 = *(v94 + 16);
    v64 = MEMORY[0x1E69E7CC0];
    if (v63)
    {
      v65 = v9;
      v95 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v63, 0, v21, v22, v23, v24);
      v64 = v95;
      v66 = (v62 + 40);
      do
      {
        v67 = *v66;
        v97 = *(v66 - 1);
        v98 = v67;
        swift_bridgeObjectRetain_n();
        MEMORY[0x1E12B2260](42, 0xE100000000000000);
        v68 = sub_1DD5F853C(34, 0xE100000000000000, v97, v98);
        v70 = v69;

        v95 = v64;
        v72 = *(v64 + 16);
        v71 = *(v64 + 24);
        if (v72 >= v71 >> 1)
        {
          v74 = OUTLINED_FUNCTION_1_0(v71);
          sub_1DD42A2D4(v74, v72 + 1, 1, v75, v76, v77, v78);
          v64 = v95;
        }

        *(v64 + 16) = v72 + 1;
        v73 = v64 + 16 * v72;
        *(v73 + 32) = v68;
        *(v73 + 40) = v70;
        v66 += 2;
        --v63;
      }

      while (v63);
      v9 = v65;
    }

    v97 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD3FAC5C(qword_1EE166498, &unk_1ECCDFD20, &qword_1DD648290, MEMORY[0x1E69E6310]);
    v79 = sub_1DD63FD58();
    v81 = v80;

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v82 = sub_1DD63F9F8();
    __swift_project_value_buffer(v82, qword_1EE16F068);

    v83 = sub_1DD63F9D8();
    v84 = sub_1DD640368();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = OUTLINED_FUNCTION_54();
      v86 = OUTLINED_FUNCTION_62();
      v97 = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_1DD39565C(v79, v81, &v97);
      _os_log_impl(&dword_1DD38D000, v83, v84, "prefix search for %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v87 = *(v4 + *(type metadata accessor for SiriVocabularySearcher(0) + 20));
    v55 = sub_1DD63FDA8();

    if (v91)
    {
      v56 = sub_1DD640258();
    }

    else
    {
      v56 = 0;
    }

    sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
    sub_1DD41B0B0();
    v57 = sub_1DD640258();

    v58 = [v87 searchCustomVocabulary:v55 appIds:v56 vocabularyTypes:v57];
  }

  v59 = v58;

  sub_1DD39638C(0, &unk_1ECCDFD30, 0x1E6997E90);
  v60 = sub_1DD640118();

  sub_1DD6404C8();
  sub_1DD63F9A8();
  sub_1DD41BFFC(v9);
  return v60;
}

uint64_t sub_1DD5F8EB8@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  memcpy(v19, __src, sizeof(v19));
  type metadata accessor for ThirdPartyContactMatcher(0);
  v18[3] = type metadata accessor for StringTokenizer(0);
  v18[4] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_1DD5FA998();
  sub_1DD41E258();
  v16[6] = v18;
  v17 = 1;
  sub_1DD582E38();
  v9 = v8;

  __swift_destroy_boxed_opaque_existential_1(v18);

  sub_1DD56EDB0();
  v11 = v10;

  if (v11)
  {
    v12 = sub_1DD5F8668(v9, a3, 1);

    MEMORY[0x1EEE9AC00](v13);
    v16[2] = __src;
    v16[3] = a2;
    v14 = sub_1DD5E85CC(sub_1DD5FA9F0, v16, v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v14;
  return result;
}

uint64_t sub_1DD5F9088@<X0>(char **a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v109 = a3;
  v106 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v99 - v9;
  v11 = *a1;
  v12 = &selRef_setUnderlyingQueue_;
  v13 = [v11 vocabularyItem];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_50;
    }

    goto LABEL_15;
  }

  v15 = v14;
  v102 = v13;
  v10[16] = 2;
  v104 = v4;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0xE000000000000000;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0xE000000000000000;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0xE000000000000000;
  *(v10 + 11) = 0;
  *(v10 + 12) = 0xE000000000000000;
  *(v10 + 13) = 0;
  *(v10 + 14) = 0xE000000000000000;
  *(v10 + 15) = 0;
  *(v10 + 16) = 0xE000000000000000;
  *(v10 + 17) = 0;
  *(v10 + 18) = 0xE000000000000000;
  *(v10 + 19) = 0;
  *(v10 + 20) = 0xE000000000000000;
  *(v10 + 21) = 0;
  *(v10 + 22) = 0xE000000000000000;
  *(v10 + 23) = 0;
  *(v10 + 24) = 0xE000000000000000;
  *(v10 + 25) = 0;
  *(v10 + 26) = 0xE000000000000000;
  v110 = a2;
  v16 = MEMORY[0x1E69E7CC0];
  *(v10 + 27) = MEMORY[0x1E69E7CC0];
  v17 = type metadata accessor for Contact(0);
  v108 = v11;
  v18 = v17;
  v19 = *(v17 + 76);
  v20 = sub_1DD63CBB8();
  __swift_storeEnumTagSinglePayload(&v10[v19], 1, 1, v20);
  *&v10[v18[20]] = v16;
  v10[v18[21]] = 0;
  v21 = &v10[v18[22]];
  *v21 = 0;
  v21[1] = 0;
  v10[v18[23]] = 2;
  v22 = &v10[v18[24]];
  *v22 = 0;
  *(v22 + 1) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v103 = v7;
  v23 = &v10[v7[9]];
  sub_1DD5FA998();
  v24 = sub_1DD5FA8C8(v15);
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  *v10 = v26;
  *(v10 + 1) = v27;
  v107 = v15;
  v28 = [v15 term];
  v29 = sub_1DD63FDD8();
  v31 = v30;

  *(v10 + 5) = v29;
  *(v10 + 6) = v31;
  v32 = v108;
  v33 = [v108 originAppId];
  v34 = sub_1DD63FDD8();
  v36 = v35;

  *v21 = v34;
  v21[1] = v36;
  v37 = type metadata accessor for ContactResolver.SignalSet(0);
  v23[*(v37 + 168) + 9] = 1;
  v38 = [v32 originAppId];
  v39 = sub_1DD63FDD8();
  v41 = v40;

  v100 = v37;
  v42 = *(v37 + 172);
  v105 = v23;
  v43 = &v23[v42];

  *(v43 + 2) = v39;
  *(v43 + 3) = v41;
  v23[338] = 1;
  memcpy(v118, v110, sizeof(v118));
  v44 = *(v110 + 30);
  v117 = *(v110 + 248);
  type metadata accessor for ThirdPartyContactMatcher(0);
  v45 = type metadata accessor for StringTokenizer(0);
  v115 = v45;
  v116 = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(&v113);
  sub_1DD5FA998();
  memcpy(v111, v118, 0xF0uLL);
  v110 = v44;
  v111[30] = v44;
  v112 = v117;
  sub_1DD41E258();
  MEMORY[0x1EEE9AC00](v46);
  *(&v99 - 2) = &v113;
  *(&v99 - 4) = 1;
  v47 = v104;
  sub_1DD582E38();
  v49 = v48;
  v12 = v47;

  v50 = sub_1DD41859C(v49);
  __swift_destroy_boxed_opaque_existential_1(&v113);
  v111[3] = v45;
  v111[4] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v111);
  sub_1DD5FA998();
  v101 = v10;
  sub_1DD40FC64();
  MEMORY[0x1EEE9AC00](v51);
  *(&v99 - 2) = v111;
  *(&v99 - 4) = 1;
  sub_1DD582E38();
  v53 = v52;

  v54 = sub_1DD41859C(v53);
  __swift_destroy_boxed_opaque_existential_1(v111);
  v55 = sub_1DD5839F8(v54, v50);
  v11 = v105;
  v105[333] = v55 & 1;
  v56 = sub_1DD5839F8(v50, v54);

  v11[334] = v56 & 1;
  if (sub_1DD4F9BB8(v57) & 1) != 0 || (v58 = sub_1DD63D118(), v11 = v59, v111[0] = v58, v111[1] = v59, v113 = 24938, v114 = 0xE200000000000000, v12 = sub_1DD3B52B8(), sub_1DD3B530C(), v60 = sub_1DD63FD48(), , (v60) || (v61 = sub_1DD63D118(), v11 = v62, v111[0] = v61, v111[1] = v62, v113 = 28523, v114 = 0xE200000000000000, v63 = sub_1DD63FD48(), , (v63))
  {

    if (v105[*(v100 + 180)] == 1)
    {
LABEL_12:
      swift_unknownObjectRelease();
      v64 = v106;
      v65 = v103;
      goto LABEL_13;
    }
  }

  else
  {
    if (v55 & v56)
    {
      goto LABEL_19;
    }

    v96 = v103;
    if ((v105[*(v100 + 180)] & 1) != 0 || v105[*(v100 + 148)] == 1)
    {
      swift_unknownObjectRelease();

      v64 = v106;
      v65 = v96;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v65);
      v66 = v101;
      return sub_1DD390754(v66, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    if (v55)
    {
LABEL_19:
    }

    else
    {
      v111[0] = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFD10, &qword_1DD6589F0);
      sub_1DD3FAC5C(&qword_1ECCDFD18, &qword_1ECCDFD10, &qword_1DD6589F0, MEMORY[0x1E69E6508]);
      sub_1DD3B7F10();
      sub_1DD640088();
      v11 = v97;

      v98 = sub_1DD63FF08();

      if (v98 <= 2)
      {
        goto LABEL_12;
      }
    }
  }

  v104 = v47;
  v77 = 0;
  v109 = *(v110 + 2);
  v78 = (v110 + 72);
  v7 = v107;
  while (1)
  {
    if (v109 == v77)
    {
      swift_unknownObjectRelease();
      goto LABEL_41;
    }

    if (v77 >= *(v110 + 2))
    {
      break;
    }

    v79 = *(v78 - 4);
    v11 = *(v78 - 3);
    v81 = *(v78 - 2);
    v80 = *(v78 - 1);
    v82 = *v78;

    v83 = sub_1DD5FA8C8(v7);
    if (!v84)
    {
      goto LABEL_36;
    }

    v12 = v84;
    if (v81 == v83 && v84 == v80)
    {
    }

    else
    {
      v86 = sub_1DD640CD8();

      if ((v86 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v87 = [v108 originAppId];
    v12 = sub_1DD63FDD8();
    v89 = v88;

    if (v79 == v12 && v11 == v89)
    {

      swift_unknownObjectRelease();

      goto LABEL_40;
    }

    v91 = sub_1DD640CD8();

    v7 = v107;
    if (v91)
    {

      swift_unknownObjectRelease();
LABEL_40:

      v92 = v105;
      v105[339] = 1;
      *(v92 + 43) = v82;
LABEL_41:
      v93 = v103;
      v94 = v101;
      v95 = v106;
      sub_1DD3C4EB4();
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v93);
      v66 = v94;
      return sub_1DD390754(v66, &qword_1ECCDBBE8, &qword_1DD644470);
    }

LABEL_36:

    v78 += 6;
    ++v77;
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_15:
  v67 = sub_1DD63F9F8();
  __swift_project_value_buffer(v67, qword_1EE16F068);
  v68 = v11;
  v69 = sub_1DD63F9D8();
  v70 = sub_1DD640378();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v111[0] = v72;
    *v71 = 136315138;
    v118[0] = [v68 v12[80]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC750, &qword_1DD648228);
    v73 = sub_1DD63FE38();
    v75 = sub_1DD39565C(v73, v74, v111);

    *(v71 + 4) = v75;
    _os_log_impl(&dword_1DD38D000, v69, v70, "wanted CKVCustomTerm, got %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x1E12B3DA0](v72, -1, -1);
    MEMORY[0x1E12B3DA0](v71, -1, -1);
  }

  return __swift_storeEnumTagSinglePayload(v106, 1, 1, v7);
}

uint64_t sub_1DD5F9AC8()
{
  OUTLINED_FUNCTION_18_7();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCF0, &unk_1DD663B98);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v61 = v3;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v52 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v58 = v7;
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - v8;
  v10 = 0;
  v75 = MEMORY[0x1E69E7CC8];
  v11 = *(v1 + 16);
  while (v11 != v10)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
    sub_1DD5FA378(&v75, v1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10++, v0);
  }

  v13 = v75;
  v14 = *(v75 + 16);
  if (v14)
  {
    v52 = 0;
    v75 = MEMORY[0x1E69E7CC0];
    sub_1DD42B4F8(0, v14, 0);
    v74 = v75;
    result = sub_1DD5FAA0C(v13);
    v18 = 0;
    v19 = v13 + 64;
    v54 = v16;
    v53 = v13 + 72;
    v55 = v14;
    v57 = v13 + 64;
    v56 = v13;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v13 + 32))
    {
      if ((*(v19 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v13 + 36) != v16)
      {
        goto LABEL_28;
      }

      v65 = 1 << result;
      v66 = result >> 6;
      v63 = v18;
      v64 = v16;
      v62 = v17;
      v20 = (*(v13 + 48) + 48 * result);
      v67 = *v20;
      v21 = v20[1];
      v70 = v20[2];
      v22 = v70;
      v71 = v21;
      v24 = v20[3];
      v68 = v20[4];
      v23 = v68;
      v69 = v24;
      v25 = v20[5];
      v26 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
      v72 = v26;
      sub_1DD3C4EB4();
      v27 = v61;
      *v61 = v67;
      v27[1] = v21;
      v27[2] = v22;
      v27[3] = v24;
      v27[4] = v23;
      v27[5] = v25;
      sub_1DD447808();
      *v9 = 0;
      *(v9 + 1) = 0xE000000000000000;
      v9[16] = 2;
      *(v9 + 3) = 0;
      *(v9 + 4) = 0xE000000000000000;
      *(v9 + 7) = 0;
      *(v9 + 8) = 0xE000000000000000;
      *(v9 + 9) = 0;
      *(v9 + 10) = 0xE000000000000000;
      *(v9 + 11) = 0;
      *(v9 + 12) = 0xE000000000000000;
      *(v9 + 13) = 0;
      *(v9 + 14) = 0xE000000000000000;
      *(v9 + 15) = 0;
      *(v9 + 16) = 0xE000000000000000;
      *(v9 + 17) = 0;
      *(v9 + 18) = 0xE000000000000000;
      *(v9 + 19) = 0;
      *(v9 + 20) = 0xE000000000000000;
      *(v9 + 21) = 0;
      *(v9 + 22) = 0xE000000000000000;
      *(v9 + 23) = 0;
      *(v9 + 24) = 0xE000000000000000;
      *(v9 + 25) = 0;
      *(v9 + 26) = 0xE000000000000000;
      v28 = MEMORY[0x1E69E7CC0];
      *(v9 + 27) = MEMORY[0x1E69E7CC0];
      v29 = type metadata accessor for Contact(0);
      v30 = v29[19];
      v31 = sub_1DD63CBB8();
      __swift_storeEnumTagSinglePayload(&v9[v30], 1, 1, v31);
      *&v9[v29[20]] = v28;
      v9[v29[21]] = 0;
      v32 = &v9[v29[22]];
      *v32 = 0;
      *(v32 + 1) = 0;
      v9[v29[23]] = 2;
      v33 = &v9[v29[24]];
      *v33 = 0;
      *(v33 + 1) = 0xE000000000000000;
      v34 = &v9[*(v59 + 36)];
      sub_1DD5FA998();
      v35 = v68;
      *(v9 + 5) = v69;
      *(v9 + 6) = v35;
      swift_bridgeObjectRetain_n();
      v36 = v70;
      swift_bridgeObjectRetain_n();

      v37 = v71;
      *v32 = v71;
      *(v32 + 1) = v36;
      v34[339] = 1;
      *(v34 + 43) = v25;
      v38 = type metadata accessor for ContactResolver.SignalSet(0);
      v34[*(v38 + 168) + 9] = 1;
      v39 = &v34[*(v38 + 172)];

      *(v39 + 2) = v37;
      *(v39 + 3) = v36;
      v40 = v74;
      sub_1DD390754(v27, &unk_1ECCDFCF0, &unk_1DD663B98);
      v75 = v40;
      v42 = *(v40 + 16);
      v41 = *(v40 + 24);
      v74 = v40;
      if (v42 >= v41 >> 1)
      {
        v51 = OUTLINED_FUNCTION_1_0(v41);
        sub_1DD42B4F8(v51, v42 + 1, 1);
        v74 = v75;
      }

      *(v74 + 16) = v42 + 1;
      OUTLINED_FUNCTION_18_3();
      sub_1DD447808();
      v13 = v56;
      v43 = 1 << *(v56 + 32);
      result = v72;
      v19 = v57;
      if (v72 >= v43)
      {
        goto LABEL_29;
      }

      v44 = *(v57 + 8 * v66);
      if ((v44 & v65) == 0)
      {
        goto LABEL_30;
      }

      if (*(v56 + 36) != v64)
      {
        goto LABEL_31;
      }

      v45 = v44 & (-2 << (v72 & 0x3F));
      if (v45)
      {
        v43 = __clz(__rbit64(v45)) | v72 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v46 = v66 << 6;
        v47 = v66 + 1;
        v48 = (v53 + 8 * v66);
        while (v47 < (v43 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            sub_1DD3AA558(v72, v64, v62 & 1);
            v43 = __clz(__rbit64(v49)) + v46;
            goto LABEL_22;
          }
        }

        sub_1DD3AA558(v72, v64, v62 & 1);
      }

LABEL_22:
      v17 = 0;
      v18 = v63 + 1;
      result = v43;
      v16 = v54;
      if (v63 + 1 == v55)
      {

        return v74;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD5FA120(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v25 - v6);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[5];
  v25 = a1[6];
  v26 = v10;
  v11 = type metadata accessor for Contact(0);
  v30 = *(a2 + 16);
  if (v30)
  {
    v12 = 0;
    v13 = (a1 + *(v11 + 88));
    v14 = v13[1];
    v28 = *v13;
    v29 = v11;
    v15 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    v17 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v17 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v27 = v17;
    do
    {
      sub_1DD3C4EB4();
      v18 = *v7 == v8 && v7[1] == v9;
      if (!v18 && (sub_1DD640CD8() & 1) == 0 && v27)
      {
        goto LABEL_28;
      }

      v19 = (v7 + *(v29 + 88));
      v20 = v19[1];
      if (v20)
      {
        if (!v14)
        {

LABEL_28:
          sub_1DD390754(v7, &qword_1ECCDBBE8, &qword_1DD644470);
          goto LABEL_29;
        }

        v21 = *v19 == v28 && v20 == v14;
        if (!v21 && (sub_1DD640CD8() & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_28;
        }
      }

      if (v7[5] == v26 && v7[6] == v25)
      {
        sub_1DD390754(v7, &qword_1ECCDBBE8, &qword_1DD644470);
        return v12;
      }

      v23 = sub_1DD640CD8();
      sub_1DD390754(v7, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v23)
      {
        return v12;
      }

LABEL_29:
      ++v12;
      v15 += v16;
    }

    while (v30 != v12);
  }

  return 0;
}

void sub_1DD5FA378(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v42[-v7];
  v47 = sub_1DD63E428();
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = a2;
  v53 = *(a2 + 240);
  v52 = *(v53 + 16);
  if (!v52)
  {
    return;
  }

  v10 = 0;
  v51 = v53 + 32;
  v45 = *MEMORY[0x1E69D1AE8];
  v44 = (v8 + 104);
  v43 = (v8 + 8);
  v50 = a1;
  while (v10 < *(v53 + 16))
  {
    v11 = v51 + 48 * v10;
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v16 = *(v11 + 40);
    LOBYTE(v56) = *v11;
    *(&v56 + 1) = v13;
    *&v57 = v12;
    *(&v57 + 1) = v14;
    *&v58 = v15;
    *(&v58 + 1) = v16;
    if (*(a3 + 16))
    {
      sub_1DD640E28();
      swift_bridgeObjectRetain_n();

      sub_1DD63FD28();
      v17 = sub_1DD640E78();
      v18 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v19 = v17 & v18;
        if (((*(a3 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          break;
        }

        v20 = (*(a3 + 48) + 16 * v19);
        if (*v20 != v13 || v20[1] != v12)
        {
          v22 = sub_1DD640CD8();
          v17 = v19 + 1;
          if ((v22 & 1) == 0)
          {
            continue;
          }
        }

        v59 = v15;

        goto LABEL_19;
      }

      if (*(a3 + 16))
      {
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
    }

    v59 = v15;
    v23 = v46;
    v24 = v47;
    (*v44)(v46, v45, v47);
    v25 = sub_1DD63E418();
    v27 = v26;
    (*v43)(v23, v24);
    if (v13 == v25 && v12 == v27)
    {

      a1 = v50;
      goto LABEL_31;
    }

    v29 = sub_1DD640CD8();

    a1 = v50;
    if (v29)
    {
      goto LABEL_30;
    }

LABEL_19:
    sub_1DD3C4EB4();
    swift_isUniquelyReferenced_nonNull_native();
    v55[0] = *a1;
    v30 = v55[0];
    v31 = sub_1DD3FED98();
    if (__OFADD__(*(v30 + 16), (v32 & 1) == 0))
    {
      goto LABEL_34;
    }

    v33 = v31;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD00, &qword_1DD663BA8);
    if (sub_1DD640A08())
    {
      v33 = sub_1DD3FED98();
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_36;
      }

      if ((v34 & 1) == 0)
      {
LABEL_25:
        v36 = v55[0];
        *(v55[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v37 = (*(v36 + 48) + 48 * v33);
        v38 = v57;
        *v37 = v56;
        v37[1] = v38;
        v37[2] = v58;
        sub_1DD447808();
        v39 = *(v36 + 16);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_35;
        }

        *(v36 + 16) = v41;
        goto LABEL_27;
      }
    }

    else if ((v34 & 1) == 0)
    {
      goto LABEL_25;
    }

    v36 = v55[0];
    sub_1DD5FA928(v54, *(v55[0] + 56) + *(v48 + 72) * v33);
LABEL_27:
    a1 = v50;
    *v50 = v36;
LABEL_31:
    if (++v10 == v52)
    {
      return;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_1DD640D58();
  __break(1u);
}

uint64_t sub_1DD5FA8C8(void *a1)
{
  v1 = [a1 vocabularyId];
  if (v1)
  {
    v2 = v1;
    sub_1DD63FDD8();
  }

  return OUTLINED_FUNCTION_15_0();
}

uint64_t sub_1DD5FA928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD5FA998()
{
  OUTLINED_FUNCTION_18_7();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_54(uint64_t a1, uint64_t a2)
{

  return sub_1DD63FD48();
}

void OUTLINED_FUNCTION_19_39()
{

  sub_1DD42B5EC(0, v0, 0);
}

Swift::Bool __swiftcall TerminalElement.Time.canConvertToTime()()
{
  v0 = sub_1DD63E118();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A8, &qword_1DD64F428);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  sub_1DD63E0E8();
  if ((v14 & 1) == 0)
  {
    return 1;
  }

  sub_1DD63E0B8();
  if ((v15 & 1) == 0)
  {
    return 1;
  }

  sub_1DD63E0D8();
  if (!v16)
  {
    sub_1DD63E0C8();
    v18 = sub_1DD63DFD8();
    if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
    {
      sub_1DD417838(v13, &qword_1ECCDD2A8, &qword_1DD64F428);
      return 0;
    }

    sub_1DD63DFC8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v0) == 1)
    {
      sub_1DD417838(v9, &qword_1ECCDD2A0, &qword_1DD64F420);
LABEL_11:
      OUTLINED_FUNCTION_72();
      (*(v19 + 8))(v13, v18);
      return 0;
    }

    (*(v2 + 16))(v5, v9, v0);
    v20 = (*(v2 + 88))(v5, v0);
    if (v20 == *MEMORY[0x1E69D18A0] || v20 == *MEMORY[0x1E69D19A0])
    {
      (*(v2 + 8))(v9, v0);
    }

    else
    {
      v22 = *(v2 + 8);
      if (v20 != *MEMORY[0x1E69D18B8])
      {
        v22(v5, v0);
        v22(v9, v0);
        goto LABEL_11;
      }

      v22(v9, v0);
    }

    OUTLINED_FUNCTION_72();
    (*(v21 + 8))(v13, v18);
    return 1;
  }

  return 1;
}

uint64_t TerminalElement.Time.toTime()()
{
  sub_1DD63E118();
  OUTLINED_FUNCTION_0();
  v47 = v0;
  v48 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v46 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A8, &qword_1DD64F428);
  OUTLINED_FUNCTION_3(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = sub_1DD63E0D8();
  if (v16 && (v51 = v15, v52 = v16, v49 = 19777, v50 = 0xE200000000000000, v17 = sub_1DD3B7F10(), v19 = OUTLINED_FUNCTION_4_93(v17, MEMORY[0x1E69E6158], v18, v17), , !v19))
  {
    v25 = 0;
  }

  else
  {
    v20 = sub_1DD63E0D8();
    if (v21 && (v51 = v20, v52 = v21, v49 = 19792, v50 = 0xE200000000000000, v22 = sub_1DD3B7F10(), v24 = OUTLINED_FUNCTION_4_93(v22, MEMORY[0x1E69E6158], v23, v22), , !v24))
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }
  }

  sub_1DD63E0F8();
  v26 = sub_1DD63E1B8();
  if (__swift_getEnumTagSinglePayload(v14, 1, v26) == 1)
  {
    sub_1DD417838(v14, &qword_1ECCDD2B0, &qword_1DD64F430);
LABEL_11:
    v29 = 0;
    goto LABEL_13;
  }

  TerminalElement.Qualifier.toQualifier()(&v51);
  OUTLINED_FUNCTION_72();
  (*(v27 + 8))(v14, v26);
  v28 = v51;
  if (v51 == 20)
  {
    goto LABEL_11;
  }

  LOBYTE(v51) = 38;
  LOBYTE(v49) = v28;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v29 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, 0, 0, 0, 0, &v51, &v49);

LABEL_13:
  v30 = sub_1DD63E0E8();
  v32 = v31;
  v33 = sub_1DD63E0B8();
  v35 = v34;
  LOBYTE(v51) = v25;
  sub_1DD63E0C8();
  v36 = sub_1DD63DFD8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v36) != 1)
  {
    sub_1DD63DFC8();

    v38 = v47;
    if (__swift_getEnumTagSinglePayload(v6, 1, v47) == 1)
    {
      sub_1DD417838(v6, &qword_1ECCDD2A0, &qword_1DD64F420);
      v37 = 3;
LABEL_23:
      OUTLINED_FUNCTION_72();
      (*(v43 + 8))(v10, v36);
      goto LABEL_24;
    }

    v45 = v33;
    v39 = v30;
    v40 = v48;
    v41 = v46;
    (*(v48 + 16))(v46, v6, v38);
    v42 = (*(v40 + 88))(v41, v38);
    if (v42 == *MEMORY[0x1E69D18A0])
    {
      v37 = 0;
      v30 = v39;
    }

    else
    {
      v30 = v39;
      if (v42 != *MEMORY[0x1E69D19A0])
      {
        v33 = v45;
        if (v42 == *MEMORY[0x1E69D18B8])
        {
          v37 = 2;
        }

        else
        {
          (*(v48 + 8))(v46, v38);
          v37 = 3;
        }

        goto LABEL_22;
      }

      v37 = 1;
    }

    v33 = v45;
LABEL_22:
    (*(v48 + 8))(v6, v38);
    goto LABEL_23;
  }

  sub_1DD417838(v10, &qword_1ECCDD2A8, &qword_1DD64F428);
  v37 = 3;
LABEL_24:
  LOBYTE(v49) = v37;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  return DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v30, v32 & 1, v33, v35 & 1, 0, 1, &v51, &v49, v29, 1);
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:second:meridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  OUTLINED_FUNCTION_1_129();
  v8 = swift_allocObject();
  DateTime.Time.init(withHour:minute:second:meridiem:)(a1, a2, a3, a4);
  return v8;
}

uint64_t static DateTime.Time.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 57);
  v3 = *(a2 + 57);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      LOBYTE(v3) = 0;
      goto LABEL_6;
    }
  }

  else if (v3 != 2)
  {
    if (((v3 ^ v2) & 1) == 0)
    {
LABEL_6:
      if (*(a1 + 24) & 1) != 0 || (*(a2 + 24))
      {
        return 0;
      }

      v4 = *(a1 + 16);
      v5 = *(a2 + 16);
      v6 = (v2 & (v4 < 12)) != 0 ? v4 + 12 : *(a1 + 16);
      v7 = (v3 & (v5 < 12)) != 0 ? v5 + 12 : *(a2 + 16);
      if (v6 >= v7)
      {
        if (v6 != v7)
        {
          return 0;
        }

        if (*(a1 + 40))
        {
          return 0;
        }

        if (*(a2 + 40))
        {
          return 0;
        }

        v8 = *(a1 + 32);
        v9 = *(a2 + 32);
        if (v8 >= v9 && (v8 != v9 || v4 >= v5 && (v4 != v5 || (*(a1 + 56) & 1) != 0 || (*(a2 + 56) & 1) != 0 || *(a1 + 48) >= *(a2 + 48))))
        {
          return 0;
        }
      }

      return 1;
    }

    if (v2 & 1) == 0 && (v3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL static DateTime.Time.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 58);
  v6 = *(a2 + 58);
  if (v5 == 3)
  {
    if (v6 != 3)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  v8 = *(a1 + 57);
  v9 = *(a2 + 57);
  result = v9 == 2 && v8 == 2;
  if (v8 != 2 && v9 != 2)
  {
    return ((v9 ^ v8) & 1) == 0;
  }

  return result;
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_14_47();
  OUTLINED_FUNCTION_1_129();
  v10 = swift_allocObject();
  result = OUTLINED_FUNCTION_9_62(v10);
  *(result + 56) = a6 & 1;
  *(result + 57) = v12;
  *(result + 58) = v13;
  *(result + 64) = a9;
  *(result + 72) = a10;
  return result;
}

uint64_t DateTime.Time.__allocating_init(withHour:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_129();
  v2 = swift_allocObject();
  DateTime.Time.init(withHour:)(a1);
  return v2;
}

uint64_t DateTime.Time.init(withHour:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 57) = 770;
  return OUTLINED_FUNCTION_0_144(1);
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_129();
  v4 = swift_allocObject();
  DateTime.Time.init(withHour:minute:)(a1, a2);
  return v4;
}

uint64_t DateTime.Time.init(withHour:minute:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = a2;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 57) = 770;
  return OUTLINED_FUNCTION_0_144(1);
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:second:)()
{
  OUTLINED_FUNCTION_1_129();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_30_0();
  DateTime.Time.init(withHour:minute:second:)(v1, v2, v3);
  return v0;
}

uint64_t DateTime.Time.init(withHour:minute:second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 48) = a3;
  *(v3 + 56) = 0;
  *(v3 + 57) = 770;
  *(v3 + 64) = 0;
  return OUTLINED_FUNCTION_2_115(1);
}

uint64_t DateTime.Time.__allocating_init(withHour:meridiem:)(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_1_129();
  v4 = swift_allocObject();
  DateTime.Time.init(withHour:meridiem:)(a1, a2);
  return v4;
}

uint64_t DateTime.Time.init(withHour:meridiem:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 57) = v3;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 58) = 3;
  return OUTLINED_FUNCTION_0_144(1);
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:meridiem:)()
{
  OUTLINED_FUNCTION_1_129();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_30_0();
  DateTime.Time.init(withHour:minute:meridiem:)(v1, v2, v3);
  return v0;
}

uint64_t DateTime.Time.init(withHour:minute:meridiem:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 57) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 3;
  return OUTLINED_FUNCTION_0_144(1);
}

uint64_t DateTime.Time.init(withHour:minute:second:meridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 32) = a2;
  *(v4 + 40) = 0;
  *(v4 + 48) = a3;
  *(v4 + 56) = 0;
  *(v4 + 57) = v5;
  *(v4 + 58) = 3;
  *(v4 + 64) = 0;
  return OUTLINED_FUNCTION_2_115(1);
}

uint64_t DateTime.Time.__allocating_init(withDefinedValue:)(_BYTE *a1)
{
  OUTLINED_FUNCTION_1_129();
  v2 = swift_allocObject();
  DateTime.Time.init(withDefinedValue:)(a1);
  return v2;
}

uint64_t DateTime.Time.init(withDefinedValue:)(_BYTE *a1)
{
  *(v1 + 58) = *a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 513;
  return OUTLINED_FUNCTION_0_144(1);
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:second:meridiem:definedValue:setByUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_14_47();
  OUTLINED_FUNCTION_1_129();
  v10 = swift_allocObject();
  result = OUTLINED_FUNCTION_9_62(v10);
  *(result + 56) = a6 & 1;
  *(result + 57) = v12;
  *(result + 58) = v13;
  *(result + 64) = 0;
  *(result + 72) = a9;
  return result;
}

uint64_t DateTime.Time.init(withHour:minute:second:meridiem:definedValue:setByUser:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char *a7, char *a8, char a9)
{
  v10 = *a7;
  v11 = *a8;
  *(v9 + 73) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4 & 1;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6 & 1;
  *(v9 + 57) = v10;
  *(v9 + 58) = v11;
  *(v9 + 64) = 0;
  return OUTLINED_FUNCTION_16_41(a9);
}

uint64_t DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char *a7, char *a8, uint64_t a9, char a10)
{
  v11 = *a7;
  v12 = *a8;
  *(v10 + 73) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4 & 1;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6 & 1;
  *(v10 + 57) = v11;
  *(v10 + 58) = v12;
  *(v10 + 64) = a9;
  return OUTLINED_FUNCTION_16_41(a10);
}

uint64_t sub_1DD5FBA5C()
{
  if (*(v0 + 24) == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1DD640E48();
    MEMORY[0x1E12B3140](v1);
  }

  if (*(v0 + 40) == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    v2 = *(v0 + 32);
    sub_1DD640E48();
    MEMORY[0x1E12B3140](v2);
  }

  if (*(v0 + 56) == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    v3 = *(v0 + 48);
    sub_1DD640E48();
    MEMORY[0x1E12B3140](v3);
  }

  v4 = *(v0 + 58);
  sub_1DD640E48();
  if (v4 != 3)
  {
    MEMORY[0x1E12B3140](v4);
  }

  v5 = *(v0 + 57);
  sub_1DD640E48();
  if (v5 != 2)
  {
    MEMORY[0x1E12B3140](v5 & 1);
  }

  sub_1DD640E48();
  if (!*(v0 + 64))
  {
    return sub_1DD640E48();
  }

  sub_1DD640E48();
  return sub_1DD49CDC8();
}

BOOL static DateTime.Time.> infix(_:_:)(uint64_t a1)
{
  type metadata accessor for DateTime.Time();
  OUTLINED_FUNCTION_1_8();
  return !static DateTime.Time.<= infix(_:_:)();
}

BOOL static DateTime.Time.<= infix(_:_:)()
{
  type metadata accessor for DateTime.Time();
  v0 = OUTLINED_FUNCTION_1_8();
  if (static DateTime.Time.< infix(_:_:)(v0, v1))
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_1_8();
  return static DateTime.Time.== infix(_:_:)(v3, v4);
}

BOOL static DateTime.Time.>= infix(_:_:)()
{
  type metadata accessor for DateTime.Time();
  v0 = OUTLINED_FUNCTION_1_8();
  return (static DateTime.Time.< infix(_:_:)(v0, v1) & 1) == 0;
}

uint64_t sub_1DD5FBC68()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v1 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v1);

    sub_1DD3BE2A4();
    if (*(v2 + 16) >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    OUTLINED_FUNCTION_17_41();
    v3 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v3);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if ((*(v0 + 56) & 1) == 0)
  {
    OUTLINED_FUNCTION_17_41();
    v5 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v5);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 57) != 2)
  {
    MEMORY[0x1E12B2260](0x6D6569646972656DLL, 0xE90000000000003DLL);
    sub_1DD6409F8();
    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 58) != 3)
  {
    MEMORY[0x1E12B2260](0x5664656E69666564, 0xED00003D65756C61);
    sub_1DD6409F8();
    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 64))
  {

    v6 = sub_1DD49D2E4();
    MEMORY[0x1E12B2260](v6);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v7 = sub_1DD63FD58();
  v9 = v8;

  MEMORY[0x1E12B2260](v7, v9);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x5B656D6954;
}

uint64_t sub_1DD5FC048()
{
  result = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {
    v2 = *(v0 + 57);
    if ((v2 & 1 & (result < 12)) != 0)
    {
      v3 = result + 12;
    }

    else
    {
      v3 = *(v0 + 16);
    }

    if (v3 == 12 && (v2 & 1) == 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    if (v2 != 2)
    {
      return v5;
    }
  }

  return result;
}

void sub_1DD5FC0A4()
{
  v1 = v0;
  if (qword_1ECCDB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1ECD0DDC0);

  oslog = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240960;
    *(v4 + 4) = (v1[24] & 1) == 0;
    *(v4 + 8) = 1026;
    *(v4 + 10) = (v1[40] & 1) == 0;
    *(v4 + 14) = 1026;
    *(v4 + 16) = (v1[56] & 1) == 0;
    *(v4 + 20) = 1026;
    *(v4 + 22) = v1[57] != 2;

    _os_log_impl(&dword_1DD38D000, oslog, v3, "hour present: %{BOOL,public}d, minute present: %{BOOL,public}d, second present: %{BOOL,public}d, meridiem present: %{BOOL,public}d", v4, 0x1Au);
    MEMORY[0x1E12B3DA0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD5FC228(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574756E696DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646E6F636573 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D6569646972656DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5664656E69666564 && a2 == 0xEC00000065756C61;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6972727563636FLL && a2 == 0xEB000000006E4967;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6573557942746573 && a2 == 0xE900000000000072;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000011 && 0x80000001DD674A30 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD640CD8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD5FC4B8(char a1)
{
  result = 1920298856;
  switch(a1)
  {
    case 1:
      result = 0x6574756E696DLL;
      break;
    case 2:
      result = 0x646E6F636573;
      break;
    case 3:
      result = 0x6D6569646972656DLL;
      break;
    case 4:
      result = 0x5664656E69666564;
      break;
    case 5:
      result = 0x6E6972727563636FLL;
      break;
    case 6:
      result = 0x6573557942746573;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5FC5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5FC228(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5FC5D4(uint64_t a1)
{
  v2 = sub_1DD5FCEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5FC610(uint64_t a1)
{
  v2 = sub_1DD5FCEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTime.Time.__deallocating_deinit()
{

  OUTLINED_FUNCTION_1_129();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD5FC69C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFD40, &qword_1DD663BB8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5FCEA8();
  sub_1DD640EF8();
  LOBYTE(v14) = 0;
  OUTLINED_FUNCTION_32();
  sub_1DD640BF8();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    OUTLINED_FUNCTION_32();
    sub_1DD640BF8();
    LOBYTE(v14) = 2;
    OUTLINED_FUNCTION_32();
    sub_1DD640BF8();
    LOBYTE(v14) = *(v3 + 57);
    v15 = 3;
    sub_1DD5FCEFC();
    OUTLINED_FUNCTION_10_56();
    sub_1DD640C08();
    LOBYTE(v14) = *(v3 + 58);
    v15 = 4;
    sub_1DD5FCF50();
    OUTLINED_FUNCTION_10_56();
    sub_1DD640C08();
    v14 = *(v3 + 64);
    v15 = 5;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_8_73();
    sub_1DD5FD04C(v11, 255, v12, &protocol conformance descriptor for DateTime.DateTimeRange);
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    LOBYTE(v14) = 6;
    OUTLINED_FUNCTION_32();
    sub_1DD640C28();
    swift_beginAccess();
    v15 = 7;
    OUTLINED_FUNCTION_10_56();
    sub_1DD640C28();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD5FC940()
{
  sub_1DD640E28();
  sub_1DD5FBA5C();
  return sub_1DD640E78();
}

uint64_t DateTime.Time.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_1_129();
  v2 = swift_allocObject();
  DateTime.Time.init(from:)(a1);
  return v2;
}

uint64_t DateTime.Time.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFD60, &qword_1DD663BC0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = v1;
  *(v1 + 73) = 0;
  v6 = (v1 + 73);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5FCEA8();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.Time();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16) = 0;
    OUTLINED_FUNCTION_5_85();
    *(v1 + 16) = sub_1DD640B08();
    *(v1 + 24) = v7 & 1;
    OUTLINED_FUNCTION_3_99(1);
    *(v1 + 32) = sub_1DD640B08();
    *(v1 + 40) = v8 & 1;
    OUTLINED_FUNCTION_3_99(2);
    *(v1 + 48) = sub_1DD640B08();
    *(v1 + 56) = v9 & 1;
    sub_1DD5FCFA4();
    OUTLINED_FUNCTION_5_85();
    sub_1DD640B18();
    *(v1 + 57) = 0;
    sub_1DD5FCFF8();
    OUTLINED_FUNCTION_5_85();
    sub_1DD640B18();
    *(v1 + 58) = 0;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_8_73();
    sub_1DD5FD04C(v10, 255, v11, &protocol conformance descriptor for DateTime.DateTimeRange);
    OUTLINED_FUNCTION_5_85();
    sub_1DD640B18();
    *(v1 + 64) = v16;
    OUTLINED_FUNCTION_3_99(6);
    *(v1 + 72) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_99(7);
    v13 = sub_1DD640B38();
    v14 = OUTLINED_FUNCTION_13_49();
    v15(v14);
    swift_beginAccess();
    *v6 = v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t sub_1DD5FCD40(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD5FBA5C();
  return sub_1DD640E78();
}

uint64_t sub_1DD5FCE34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.Time.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD5FCEA8()
{
  result = qword_1ECCDFD48;
  if (!qword_1ECCDFD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD48);
  }

  return result;
}

unint64_t sub_1DD5FCEFC()
{
  result = qword_1ECCDFD50;
  if (!qword_1ECCDFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD50);
  }

  return result;
}

unint64_t sub_1DD5FCF50()
{
  result = qword_1ECCDFD58;
  if (!qword_1ECCDFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD58);
  }

  return result;
}

unint64_t sub_1DD5FCFA4()
{
  result = qword_1ECCDFD68;
  if (!qword_1ECCDFD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD68);
  }

  return result;
}

unint64_t sub_1DD5FCFF8()
{
  result = qword_1ECCDFD70;
  if (!qword_1ECCDFD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD70);
  }

  return result;
}

uint64_t sub_1DD5FD04C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s4TimeC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5FD428()
{
  result = qword_1ECCDFD80;
  if (!qword_1ECCDFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD80);
  }

  return result;
}

unint64_t sub_1DD5FD480()
{
  result = qword_1ECCDFD88;
  if (!qword_1ECCDFD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD88);
  }

  return result;
}

unint64_t sub_1DD5FD4D8()
{
  result = qword_1ECCDFD90;
  if (!qword_1ECCDFD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD90);
  }

  return result;
}

unint64_t DateTime.TimeUnit.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 13;
  if (result < 0xD)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD5FD5A4()
{
  result = qword_1ECCDFD98;
  if (!qword_1ECCDFD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD98);
  }

  return result;
}

uint64_t sub_1DD5FD600@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.TimeUnit.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s8TimeUnitOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5FD7B4()
{
  result = qword_1ECCDFDA0;
  if (!qword_1ECCDFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFDA0);
  }

  return result;
}

uint64_t sub_1DD5FD81C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v8 = 1;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  DateTime.Time.init(withHour:minute:second:meridiem:)(7, 0, 0, &v8);
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_34();
  v2 = DateTime.init(withTime:)(v1);
  v8 = 1;
  swift_allocObject();
  DateTime.Time.init(withHour:minute:second:meridiem:)(11, 59, 59, &v8);
  OUTLINED_FUNCTION_1_11();
  v3 = OUTLINED_FUNCTION_34();
  v4 = DateTime.init(withTime:)(v3);
  v8 = 1;
  type metadata accessor for DateTime.Interval();
  swift_allocObject();
  v5 = DateTime.Interval.init(withQuantity:timeUnit:)(&v8, 0.0);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:interval:)(v2, v4, v5);
  OUTLINED_FUNCTION_1_11();
  v6 = OUTLINED_FUNCTION_34();
  *(inited + 56) = DateTime.init(occurringIn:)(v6);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD5FD9DC@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v67 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61[-v8 - 8];
  sub_1DD4BF298(a1, &v61[-v8 - 8]);
  v10 = v9[3];
  OUTLINED_FUNCTION_0_145();
  if (v11)
  {

    v4 = OUTLINED_FUNCTION_1_130(v12, v13, v14, v15);
    v3 = v16;
    v5 = v10;

    if (v10)
    {
      return sub_1DD3D40D8(v9, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v9[3] = v4;
    v9[4] = v3;
  }

  OUTLINED_FUNCTION_0_145();
  if (v17)
  {

    OUTLINED_FUNCTION_1_130(v18, v19, v20, v21);
    OUTLINED_FUNCTION_3_100();
    if (v5)
    {
      return sub_1DD3D40D8(v9, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v9[5] = v3;
    v9[6] = v4;
  }

  OUTLINED_FUNCTION_0_145();
  if (v22)
  {

    OUTLINED_FUNCTION_1_130(v23, v24, v25, v26);
    OUTLINED_FUNCTION_3_100();
    if (v5)
    {
      return sub_1DD3D40D8(v9, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v9[7] = v3;
    v9[8] = v4;
  }

  OUTLINED_FUNCTION_0_145();
  if (v27)
  {

    OUTLINED_FUNCTION_1_130(v28, v29, v30, v31);
    OUTLINED_FUNCTION_3_100();
    if (v5)
    {
      return sub_1DD3D40D8(v9, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v9[9] = v3;
    v9[10] = v4;
  }

  OUTLINED_FUNCTION_0_145();
  if (v32)
  {

    OUTLINED_FUNCTION_1_130(v33, v34, v35, v36);
    OUTLINED_FUNCTION_3_100();
    if (v5)
    {
      return sub_1DD3D40D8(v9, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v9[11] = v3;
    v9[12] = v4;
  }

  OUTLINED_FUNCTION_0_145();
  if (v37)
  {

    OUTLINED_FUNCTION_1_130(v38, v39, v40, v41);
    OUTLINED_FUNCTION_3_100();
    if (v5)
    {
      return sub_1DD3D40D8(v9, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v9[15] = v3;
    v9[16] = v4;
  }

  OUTLINED_FUNCTION_0_145();
  if (!v42)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_1_130(v43, v44, v45, v46);
  OUTLINED_FUNCTION_3_100();
  if (v5)
  {
    return sub_1DD3D40D8(v9, &qword_1ECCDBC18, &unk_1DD6459A0);
  }

  v9[17] = v3;
  v9[18] = v4;
LABEL_22:
  v47 = v9[19];
  OUTLINED_FUNCTION_0_145();
  if (v48)
  {

    v53 = OUTLINED_FUNCTION_1_130(v49, v50, v51, v52);
    v55 = v54;

    if (v47)
    {
      return sub_1DD3D40D8(v9, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v9[19] = v53;
    v9[20] = v55;
  }

  v57 = v9 + *(v7 + 36);
  v57[*(type metadata accessor for ContactResolver.SignalSet(0) + 180)] = 1;
  memcpy(v63, v9, sizeof(v63));
  memcpy(v62, v9, sizeof(v62));
  memcpy(v64, a1, sizeof(v64));
  memcpy(v61, a1, sizeof(v61));
  sub_1DD3C9478(v63, v66);
  sub_1DD3C9478(v64, v66);
  LOBYTE(v57) = static ContactQuery.== infix(_:_:)(v62, v61);
  memcpy(v65, v61, sizeof(v65));
  sub_1DD3C9580(v65);
  memcpy(v66, v62, 0x108uLL);
  sub_1DD3C9580(v66);
  if (v57)
  {
    sub_1DD3D40D8(v9, &qword_1ECCDBC18, &unk_1DD6459A0);
    v58 = 1;
    v59 = v67;
  }

  else
  {
    v59 = v67;
    sub_1DD5C22B4(v9, v67);
    v58 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v59, v58, 1, v7);
}

uint64_t sub_1DD5FDD34(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE658, &qword_1DD664070);
  sub_1DD63DA78();
  OUTLINED_FUNCTION_4_63();
  v5 = v4;
  v7 = *(v6 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DD643F80;
  v10 = v9 + v8;
  v11 = *(v5 + 104);
  v11(v10, *MEMORY[0x1E69B28C8], v2);
  v11(v10 + v7, *MEMORY[0x1E69B28E0], v2);
  sub_1DD63DAA8();
  v12 = swift_allocObject();
  v13 = sub_1DD63DA98();
  if (!v1)
  {
    v12 = v13;

    sub_1DD63DA88();
  }

  sub_1DD63D168();
  OUTLINED_FUNCTION_2_0();
  (*(v14 + 8))(a1);
  return v12;
}

unint64_t sub_1DD5FDF3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE650, &unk_1DD658720);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_1DD63DAE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v29 = a1;
  sub_1DD63DA58();
  sub_1DD53D0F0(&qword_1EE165CB0, MEMORY[0x1E69B2888], v11);
  sub_1DD640068();
  sub_1DD53D0F0(&qword_1EE165CA8, MEMORY[0x1E69B2890], v12);
  v13 = (v6 + 32);
  v25 = v6;
  v14 = (v6 + 8);
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD640628();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      break;
    }

    v15 = *v13;
    (*v13)(v10, v4, v5);
    if (sub_1DD63DAD8())
    {
      v15(v26, v10, v5);
      v16 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42B9B0(0, *(v16 + 16) + 1, 1);
        v16 = v28;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v27 = v19 + 1;
        v24 = v19;
        sub_1DD42B9B0(v18 > 1, v19 + 1, 1);
        v20 = v27;
        v19 = v24;
        v16 = v28;
      }

      *(v16 + 16) = v20;
      v21 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = v16;
      v15((v16 + v21 + *(v25 + 72) * v19), v26, v5);
    }

    else
    {
      (*v14)(v10, v5);
    }
  }

  sub_1DD3D40D8(v4, &qword_1ECCDE650, &unk_1DD658720);
  return v27;
}

uint64_t sub_1DD5FE24C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = v3;
  sub_1DD63DAE8();
  OUTLINED_FUNCTION_4_63();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DD63DA68();
  if (!v3)
  {
    v16 = sub_1DD5FDF3C(v11);
    v17 = *(v16 + 16);
    if (v17)
    {
      v40 = v10;
      v36[2] = 0;
      v42 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v17, 0, v12, v13, v14, v15);
      v18 = v42;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v21 = *(v19 + 64);
      v36[1] = v16;
      v22 = v16 + ((v21 + 32) & ~v21);
      v38 = *(v19 + 56);
      v39 = v20;
      v37 = (v19 - 8);
      v41 = v19;
      do
      {
        v23 = v40;
        v39(v40, v22, v4);
        v24 = sub_1DD63DAC8();
        v26 = v25;
        v27 = v4;
        (*v37)(v23, v4);
        v42 = v18;
        v33 = *(v18 + 16);
        v32 = *(v18 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1DD42A2D4(v32 > 1, v33 + 1, 1, v28, v29, v30, v31);
          v18 = v42;
        }

        *(v18 + 16) = v33 + 1;
        v34 = v18 + 16 * v33;
        *(v34 + 32) = v24;
        *(v34 + 40) = v26;
        v22 += v38;
        --v17;
        v4 = v27;
      }

      while (v17);
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v42 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v5 = sub_1DD63FD58();
  }

  return v5;
}

uint64_t OUTLINED_FUNCTION_3_100()
{
}

uint64_t sub_1DD5FE4D4(uint64_t a1)
{
  result = sub_1DD6405F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD5FE544(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DD5FE6BC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
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
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

void *sub_1DD5FE9FC()
{
  v0[2] = 0xD000000000000028;
  v0[3] = 0x80000001DD674AB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDB8, &unk_1DD6641E0);
  v1 = swift_allocObject();
  *(v1 + 56) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v0[5] = v1;
  v2 = [objc_opt_self() clientWithIdentifier_];
  v0[4] = v2;
  v3 = v2;

  v4 = sub_1DD63FDA8();

  v5 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_1DD5FF4E8;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD54F324;
  v9[3] = &block_descriptor_23;
  v6 = _Block_copy(v9);

  v7 = [v3 addUpdateHandlerForNamespaceName:v4 queue:0 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  sub_1DD5FECD8();
  return v0;
}

uint64_t sub_1DD5FEBB4(uint64_t a1, uint64_t a2)
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F0C8);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD38D000, v3, v4, "TrialAppRankerSELFConfigProvider got Trial update", v5, 2u);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 32) refresh];
    sub_1DD5FECD8();
  }

  return result;
}

uint64_t sub_1DD5FECD8()
{
  v1 = v0[4];
  v2 = sub_1DD63FDA8();
  v4 = v0[2];
  v3 = v0[3];
  v67 = v0;
  v5 = sub_1DD63FDA8();
  v68 = v1;
  v6 = [v1 levelForFactor:v2 withNamespaceName:v5];

  if (v6)
  {
    v7 = [v6 longValue];
  }

  else
  {
    v7 = 0;
  }

  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD63F9F8();
  __swift_project_value_buffer(v8, qword_1EE16F0C8);
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640368();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_54();
    v11 = OUTLINED_FUNCTION_1_131();
    *&v70[0] = v11;
    *v4 = 136315138;
    *&v73 = v7;
    BYTE8(v73) = v6 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFDB0, &qword_1DD6641D8);
    v12 = sub_1DD63FE38();
    v14 = sub_1DD39565C(v12, v13, v70);

    *(v4 + 4) = v14;
    OUTLINED_FUNCTION_3_101(&dword_1DD38D000, v15, v16, "TrialAppRankerSELFConfigProvider read from Trial, frequency: %s");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_0_1();
    v4 = v3;
    OUTLINED_FUNCTION_0_1();
  }

  v17 = 0.0;
  if (v6 && v7 >= 1)
  {
    v17 = 1.0 / v7;
  }

  v18 = sub_1DD63FDA8();
  v19 = sub_1DD63FDA8();
  v20 = [v68 levelForFactor:v18 withNamespaceName:v19];

  if (v20)
  {
    v21 = [v20 longValue];
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_1DD63F9D8();
  v23 = sub_1DD640368();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_54();
    v24 = OUTLINED_FUNCTION_1_131();
    *&v70[0] = v24;
    *v4 = 136315138;
    *&v73 = v21;
    BYTE8(v73) = v20 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFDB0, &qword_1DD6641D8);
    v25 = sub_1DD63FE38();
    v27 = sub_1DD39565C(v25, v26, v70);

    *(v4 + 4) = v27;
    OUTLINED_FUNCTION_3_101(&dword_1DD38D000, v28, v29, "TrialAppRankerSELFConfigProvider read from Trial, cooldownMinutes: %s");
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  if (v20)
  {
    v30 = v21 * 60.0;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = sub_1DD63FDA8();
  v32 = [v68 experimentIdentifiersWithNamespaceName_];

  if (v32)
  {
    v33 = [v32 deploymentId];
    v34 = [v32 treatmentId];
    v69 = sub_1DD63FDD8();
    v36 = v35;
  }

  else
  {
    v33 = 0;
    v69 = 0;
    v36 = 0;
  }

  v37 = sub_1DD63F9D8();
  v38 = sub_1DD640368();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_54();
    v40 = swift_slowAlloc();
    *&v73 = v40;
    *v39 = 136315138;
    v41 = v33;
    LODWORD(v70[0]) = v33;
    BYTE4(v70[0]) = v32 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFDA8, &qword_1DD6641D0);
    v42 = sub_1DD63FE38();
    v44 = sub_1DD39565C(v42, v43, &v73);

    *(v39 + 4) = v44;
    OUTLINED_FUNCTION_4_94(&dword_1DD38D000, v45, v46, "TrialAppRankerSELFConfigProvider read from Trial, deploymentId %s");
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
    v41 = v33;
  }

  v47 = sub_1DD63F9D8();
  v48 = sub_1DD640368();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_54();
    v50 = swift_slowAlloc();
    *&v70[0] = v50;
    *v49 = 136315138;
    v51 = v69;
    *&v73 = v69;
    *(&v73 + 1) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
    v52 = sub_1DD63FE38();
    v54 = sub_1DD39565C(v52, v53, v70);

    *(v49 + 4) = v54;
    OUTLINED_FUNCTION_4_94(&dword_1DD38D000, v55, v56, "TrialAppRankerSELFConfigProvider read from Trial, treatmentId %s");
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    v51 = v69;
  }

  *&v73 = v17;
  *(&v73 + 1) = v30;
  LODWORD(v74) = v41;
  BYTE4(v74) = v32 == 0;
  *(&v74 + 1) = v51;
  v75 = v36;

  v57 = sub_1DD63F9D8();
  v58 = sub_1DD640368();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = OUTLINED_FUNCTION_54();
    v60 = swift_slowAlloc();
    *v59 = 136315138;
    v70[0] = v73;
    v70[1] = v74;
    v71 = v75;
    v72 = v60;

    v61 = sub_1DD63FE38();
    v63 = sub_1DD39565C(v61, v62, &v72);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_1DD38D000, v57, v58, "TrialAppRankerSELFConfigProvider setting AppRanker SELF config to %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v64 = v67[5];
  MEMORY[0x1EEE9AC00](v65);
  os_unfair_lock_lock(v64 + 14);
  sub_1DD5FF4CC(&v64[4]);
  os_unfair_lock_unlock(v64 + 14);
}

uint64_t sub_1DD5FF3DC(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 24);
  return sub_1DD4DF5DC(&v7, &v6);
}

uint64_t sub_1DD5FF444()
{

  return v0;
}

uint64_t sub_1DD5FF474()
{
  sub_1DD5FF444();

  return swift_deallocClassInstance();
}

double block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void OUTLINED_FUNCTION_3_101(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_1DD5FF528@<X0>(uint64_t a1@<X8>)
{
  result = [v1 directoryValue];
  if (result)
  {
    v4 = sub_1DD520E2C(result, &selRef_path);
    if (v5)
    {
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {
        sub_1DD63CDF8();
        v7 = 0;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }

    v8 = sub_1DD63CE68();

    return __swift_storeEnumTagSinglePayload(a1, v7, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DD5FF5E8()
{
  OUTLINED_FUNCTION_12_48();
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
}

uint64_t sub_1DD5FF628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v4;
  v6 = *(a1 + 56);
  *(a2 + 16) = *(a1 + 40);
  *(a2 + 32) = v6;
  *(a2 + 48) = v5;
}

uint64_t sub_1DD5FF6B8()
{
  OUTLINED_FUNCTION_12_48();
  v2 = v1;
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  return sub_1DD3CDD14(v0 + 24, v2, &qword_1ECCDBF80, &unk_1DD657A00);
}

uint64_t sub_1DD5FF718()
{
  OUTLINED_FUNCTION_12_48();
  v2 = v1;
  v4 = *(*v3 + 96);
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  return sub_1DD3CDD14(v0 + v4, v2, &qword_1ECCDC700, &qword_1DD64AE00);
}

uint64_t sub_1DD5FF78C()
{
  OUTLINED_FUNCTION_12_48();
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
}

uint64_t sub_1DD5FF7CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DD6015BC;
  *(v8 + 24) = v7;
  v11[4] = sub_1DD6015C8;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DD5FFDB0;
  v11[3] = &block_descriptor_24;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FF92C()
{
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_10_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_89(v3);
  v4 = OUTLINED_FUNCTION_14_48(&unk_1F58C3C70);
  *(v4 + 16) = sub_1DD601644;
  *(v4 + 24) = v0;
  v8[4] = sub_1DD601844;
  v8[5] = v4;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_0_146();
  v8[2] = v5;
  v8[3] = &block_descriptor_44;
  _Block_copy(v8);
  OUTLINED_FUNCTION_7_72();

  OUTLINED_FUNCTION_15_53();
  _Block_release(v2);
  OUTLINED_FUNCTION_3_102(v6, "");
  OUTLINED_FUNCTION_15_2();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FFA18()
{
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_10_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_89(v3);
  v4 = OUTLINED_FUNCTION_14_48(&unk_1F58C3CE8);
  *(v4 + 16) = sub_1DD601870;
  *(v4 + 24) = v0;
  v8[4] = sub_1DD601844;
  v8[5] = v4;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_0_146();
  v8[2] = v5;
  v8[3] = &block_descriptor_54_0;
  _Block_copy(v8);
  OUTLINED_FUNCTION_7_72();

  OUTLINED_FUNCTION_15_53();
  _Block_release(v2);
  OUTLINED_FUNCTION_3_102(v6, "");
  OUTLINED_FUNCTION_15_2();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FFB04()
{
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_10_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_89(v3);
  v4 = OUTLINED_FUNCTION_14_48(&unk_1F58C3BF8);
  *(v4 + 16) = sub_1DD601624;
  *(v4 + 24) = v0;
  v8[4] = sub_1DD601844;
  v8[5] = v4;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_0_146();
  v8[2] = v5;
  v8[3] = &block_descriptor_34;
  _Block_copy(v8);
  OUTLINED_FUNCTION_7_72();

  OUTLINED_FUNCTION_15_53();
  _Block_release(v2);
  OUTLINED_FUNCTION_3_102(v6, "");
  OUTLINED_FUNCTION_15_2();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FFBF0()
{
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_10_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_89(v3);
  v4 = OUTLINED_FUNCTION_14_48(&unk_1F58C3B80);
  *(v4 + 16) = sub_1DD6015BC;
  *(v4 + 24) = v0;
  v8[4] = sub_1DD601844;
  v8[5] = v4;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_0_146();
  v8[2] = v5;
  v8[3] = &block_descriptor_24;
  _Block_copy(v8);
  OUTLINED_FUNCTION_7_72();

  OUTLINED_FUNCTION_15_53();
  _Block_release(v2);
  OUTLINED_FUNCTION_3_102(v6, "");
  OUTLINED_FUNCTION_15_2();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FFCDC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 24);
  return swift_endAccess();
}

uint64_t sub_1DD5FFD3C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 96);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t sub_1DD5FFDD8()
{
  sub_1DD640488();

  return v1;
}

__n128 sub_1DD5FFE5C@<Q0>(uint64_t a1@<X8>)
{
  sub_1DD640488();

  result = v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1DD5FFF0C(uint64_t a1, uint64_t a2)
{
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1(&qword_1EE160540);
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EF00);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD38D000, v3, v4, "updating TrialManager because of a notification", v5, 2u);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DD600008();
  }

  return result;
}