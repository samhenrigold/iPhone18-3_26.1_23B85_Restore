void sub_18F033130(uint64_t a1, void *a2)
{
  v3 = v2;
  v67 = a2;
  v5 = sub_18F0932BC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v76 = v65 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v65 - v12;
  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v14 = sub_18F093A2C();
  v15 = __swift_project_value_buffer(v14, qword_1ED60C1C0);
  v74 = *(v6 + 16);
  v75 = v6 + 16;
  v74(v13, a1, v5);
  v85[6] = v15;
  v16 = sub_18F093A0C();
  v17 = sub_18F093EDC();
  v18 = os_log_type_enabled(v16, v17);
  v78 = v5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v77 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v85[0] = v21;
    *v20 = 136315138;
    sub_18F034544();
    v22 = sub_18F0943FC();
    v68 = v2;
    v23 = v6;
    v25 = v24;
    v73 = *(v23 + 8);
    v73(v13, v78);
    v26 = sub_18F0462AC(v22, v25, v85);
    v6 = v23;
    v3 = v68;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_18EF7E000, v16, v17, "Found daemon record: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v27 = v21;
    v5 = v78;
    MEMORY[0x193AD9AF0](v27, -1, -1);
    v28 = v20;
    a1 = v77;
    MEMORY[0x193AD9AF0](v28, -1, -1);
  }

  else
  {

    v73 = *(v6 + 8);
    v73(v13, v5);
  }

  v29 = sub_18F034500();
  v30 = v76;
  v74(v76, a1, v5);
  v77 = v29;
  v31 = sub_18F03E9B0(v30);
  if (!v31)
  {
    return;
  }

  v32 = v31;
  *&v83 = 0x506C6C6174736E49;
  *(&v83 + 1) = 0xEB00000000687461;
  v33 = [v31 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v33)
  {
    goto LABEL_43;
  }

  sub_18F093FAC();
  swift_unknownObjectRelease();
  sub_18EFB6E2C(v85, &v83);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_18EFB6E2C(v85, &v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    if (swift_dynamicCast())
    {
      v35 = v81;
      v37 = *(v81 + 16);
      if (!v37)
      {
        goto LABEL_41;
      }

      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v85);
LABEL_43:

    return;
  }

  v34 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D0, &qword_18F0A1218);
  v35 = swift_allocObject();
  *(&v36 + 1) = 2;
  *(v35 + 16) = xmmword_18F09BCC0;
  *(v35 + 32) = v34;
  v37 = 1;
LABEL_12:
  v66 = v32;
  v68 = v3;
  v72 = v6 + 8;
  v65[1] = v35;
  v38 = (v35 + 40);
  *&v36 = 136315138;
  v71 = v36;
  *&v36 = 136446210;
  v70 = v36;
  do
  {
    v39 = *(v38 - 1);
    v40 = *v38;
    swift_bridgeObjectRetain_n();
    v41 = sub_18F093A0C();
    v42 = sub_18F093EDC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v83 = v44;
      *v43 = v71;
      *(v43 + 4) = sub_18F0462AC(v39, v40, &v83);
      _os_log_impl(&dword_18EF7E000, v41, v42, "Registering daemon from: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v45 = v44;
      v5 = v78;
      MEMORY[0x193AD9AF0](v45, -1, -1);
      MEMORY[0x193AD9AF0](v43, -1, -1);
    }

    sub_18F09323C();
    v46 = v76;
    v74(v76, v9, v5);
    v47 = sub_18F03E9B0(v46);
    if (!v47)
    {
      goto LABEL_34;
    }

    v48 = v47;
    *&v81 = 0x6C6562614CLL;
    *(&v81 + 1) = 0xE500000000000000;
    v49 = [v47 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v49)
    {
      sub_18F093FAC();
      swift_unknownObjectRelease();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    v83 = v81;
    v84 = v82;
    if (!*(&v82 + 1))
    {
      goto LABEL_31;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_33;
    }

    v50 = v80;
    v69 = v79;
    *&v81 = 0x6E65746E49707041;
    *(&v81 + 1) = 0xEA00000000007374;
    v51 = [v48 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v51)
    {
      sub_18F093FAC();
      swift_unknownObjectRelease();
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
    }

    v83 = v81;
    v84 = v82;
    v5 = v78;
    if (!*(&v82 + 1))
    {

LABEL_31:

      sub_18F021E3C(&v83);
      goto LABEL_34;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_33:

      goto LABEL_34;
    }

    v52 = v79;
    objc_allocWithZone(type metadata accessor for DaemonRecord());
    v53 = v52;
    v54 = sub_18F033D28(v69, v50, v53);
    if (v54)
    {
      v55 = v54;

      v56 = v55;
      v57 = v67;
      MEMORY[0x193AD88C0]();
      if (*((*v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F093DFC();
      }

      sub_18F093E3C();

      v58 = v9;
      v5 = v78;
      goto LABEL_38;
    }

    v5 = v78;
LABEL_34:

    v59 = sub_18F093A0C();
    v60 = sub_18F093ECC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v83 = v62;
      *v61 = v70;
      v63 = sub_18F0462AC(v39, v40, &v83);

      *(v61 + 4) = v63;
      _os_log_impl(&dword_18EF7E000, v59, v60, "Failed to register daemon from: %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      v64 = v62;
      v5 = v78;
      MEMORY[0x193AD9AF0](v64, -1, -1);
      MEMORY[0x193AD9AF0](v61, -1, -1);
    }

    else
    {
    }

    v58 = v9;
LABEL_38:
    v73(v58, v5);
    v38 += 2;
    --v37;
  }

  while (v37);
  v32 = v66;
LABEL_41:

  __swift_destroy_boxed_opaque_existential_1Tm(v85);
}

uint64_t *sub_18F033A7C()
{
  if (qword_1ED5FDB08 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1ED5FDB08);
  }

  return &qword_1ED5FDAE0;
}

uint64_t static DaemonRecord.enumerated.getter(uint64_t a1)
{
  if (qword_1ED5FDB08 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_9(&qword_1ED5FDB08);
  }

  OUTLINED_FUNCTION_2_7(a1);
}

uint64_t static DaemonRecord.enumerated.setter(uint64_t a1)
{
  v1 = a1;
  if (qword_1ED5FDB08 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_9(&qword_1ED5FDB08);
  }

  OUTLINED_FUNCTION_3_6(a1);
  qword_1ED5FDAE0 = v1;
}

uint64_t (*static DaemonRecord.enumerated.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED5FDB08 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1ED5FDB08);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F033C78@<X0>(void *a1@<X8>)
{
  sub_18F033A7C();
  swift_beginAccess();
  *a1 = qword_1ED5FDAE0;
}

uint64_t sub_18F033CCC(uint64_t *a1)
{
  v1 = *a1;

  sub_18F033A7C();
  swift_beginAccess();
  qword_1ED5FDAE0 = v1;
}

id sub_18F033D28(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v38 = a1;
  ObjectType = swift_getObjectType();
  v42 = sub_18F0931FC();
  v36 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v33 - v9;
  v44 = sub_18F0932BC();
  v10 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v3[OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v48 = 0xD000000000000015;
  *(&v48 + 1) = 0x800000018F0B0440;
  v13 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (*(&v49 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    if (swift_dynamicCast())
    {
      v39 = v45;
      v14 = &v3[OBJC_IVAR___swift_DaemonRecord_bundleIdentifier];
      *v14 = v38;
      *(v14 + 1) = a2;
      *&v50 = 0xD00000000000001BLL;
      *(&v50 + 1) = 0x800000018F0B0460;
      a2 = sub_18F09448C();
      v15 = [a3 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v15)
      {
        sub_18F093FAC();
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      v50 = v48;
      v51 = v49;
      v35 = v3;
      v34 = a3;
      v33 = ObjectType;
      if (*(&v49 + 1))
      {
        v23 = swift_dynamicCast();
        if (v23)
        {
          v24 = v45;
        }

        else
        {
          v24 = 0;
        }

        if (v23)
        {
          v25 = v46;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        sub_18F021E3C(&v50);
        v24 = 0;
        v25 = 0;
      }

      swift_beginAccess();
      *v12 = v24;
      *(v12 + 1) = v25;

      v26 = 0;
      v38 = *(v39 + 16);
      v37 = *MEMORY[0x1E6968F70];
      v27 = (v36 + 104);
      a3 = (v39 + 40);
      v28 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v38 == v26)
        {

          v31 = v35;
          *&v35[OBJC_IVAR___swift_DaemonRecord_metadataURLs] = v28;
          v47.receiver = v31;
          v47.super_class = v33;
          v22 = objc_msgSendSuper2(&v47, sel_init);

          return v22;
        }

        if (v26 >= *(v39 + 16))
        {
          break;
        }

        __swift_storeEnumTagSinglePayload(v40, 1, 1, v44);
        a2 = v41;
        (*v27)(v41, v37, v42);

        sub_18F09329C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_18F00ECBC(0, *(v28 + 16) + 1, 1, v28);
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          v28 = sub_18F00ECBC(v29 > 1, v30 + 1, 1, v28);
        }

        *(v28 + 16) = v30 + 1;
        (*(v10 + 32))(v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v43, v44);
        a3 += 2;
        ++v26;
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    sub_18F021E3C(&v50);
  }

  if (qword_1ED5FEEB8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v16 = sub_18F093A2C();
  __swift_project_value_buffer(v16, qword_1ED60C1C0);

  v17 = sub_18F093A0C();
  v18 = sub_18F093ECC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v50 = v20;
    *v19 = 136446210;
    v21 = sub_18F0462AC(v38, a2, &v50);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_18EF7E000, v17, v18, "The plist for %{public}s should contain MetadataAbsolutePaths", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x193AD9AF0](v20, -1, -1);
    MEMORY[0x193AD9AF0](v19, -1, -1);
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id DaemonRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18F034500()
{
  result = qword_1ED5FDAD8;
  if (!qword_1ED5FDAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FDAD8);
  }

  return result;
}

unint64_t sub_18F034544()
{
  result = qword_1ED5FEC20;
  if (!qword_1ED5FEC20)
  {
    sub_18F0932BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC20);
  }

  return result;
}

void *sub_18F0345A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t), void *a8)
{
  v110 = a6;
  v111 = a7;
  v108 = a3;
  v109 = a5;
  v112 = a2;
  v113 = a4;
  v107 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v98 = &v96 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9658, &qword_18F0AB918);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v97 = &v96 - v12;
  v104 = sub_18F0938DC();
  OUTLINED_FUNCTION_7();
  v102 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42();
  v99 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v96 - v18;
  v106 = sub_18F09373C();
  OUTLINED_FUNCTION_7();
  v105 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_42();
  v101 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v96 - v25;
  v26 = sub_18F09395C();
  OUTLINED_FUNCTION_7();
  v103 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_42();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v96 - v33;
  v35 = sub_18F09398C();
  OUTLINED_FUNCTION_7();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_42();
  v41 = v39 - v40;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v96 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v96 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v48;
  (*(v48 + 16))(v47, v115, a8);
  if (swift_dynamicCast())
  {
    (*(v37 + 32))(v41, v45, v35);
    v49 = sub_18F039084(v107, v112, v108, v113, v109, v110, v111);
    (*(v37 + 8))(v41, v35);
LABEL_13:
    (*(v114 + 8))(v47, a8);
    return v49;
  }

  if (swift_dynamicCast())
  {
    v50 = v103;
    (*(v103 + 32))(v31, v34, v26);
    result = sub_18F09393C();
    if (result[2])
    {
      v52 = v105;
      v53 = *(v105 + 16);
      v54 = result + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v55 = v100;
      v115 = a8;
      v56 = v106;
      v53(v100, v54, v106);

      v104 = sub_18F09371C();
      v102 = v57;
      v58 = sub_18F09394C();
      MEMORY[0x1EEE9AC00](v58);
      v59 = v112;
      *(&v96 - 8) = v107;
      *(&v96 - 7) = v59;
      v60 = v113;
      *(&v96 - 6) = v108;
      *(&v96 - 5) = v60;
      v61 = v110;
      *(&v96 - 4) = v109;
      *(&v96 - 3) = v61;
      v95 = v111;
      v62 = v50;
      v68 = sub_18EFBB02C(sub_18F034EB0, (&v96 - 10), v58, v63, v64, v65, v66, v67, v96, v97, v98, v99);

      v69 = objc_allocWithZone(LNActionConfigurationSwitch);
      v49 = sub_18EFBB720(v104, v102, v68);
      v70 = v56;
      a8 = v115;
      (*(v52 + 8))(v55, v70);
      (*(v62 + 8))(v31, v26);
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    v71 = v104;
    if (!swift_dynamicCast())
    {
      type metadata accessor for SchemaLocalization();
      v81 = v98;
      static SchemaLocalization.bundleURL.getter(v98);
      v82 = sub_18F042CCC(v113);
      v84 = v83;
      v85 = objc_allocWithZone(LNActionSummary);
      v49 = sub_18EFA4E30(0, v81, v82, v84, MEMORY[0x1E69E7CC0]);
      goto LABEL_13;
    }

    v72 = v99;
    (*(v102 + 32))(v99, v19, v71);
    result = sub_18F09388C();
    if (result[2])
    {
      (*(v105 + 16))(v101, result + ((*(v105 + 80) + 32) & ~*(v105 + 80)), v106);

      v115 = sub_18F09371C();
      v74 = v73;
      v75 = sub_18F09389C();
      v76 = v97;
      sub_18F0938BC();
      v77 = sub_18F09390C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v77);
      v79 = v112;
      if (EnumTagSinglePayload == 1)
      {
        sub_18EFBB8A4(v76);
        v80 = 0;
      }

      else
      {
        v86 = sub_18EFBA3B4();
        v87 = v76;
        v80 = v86;
        (*(*(v77 - 8) + 8))(v87, v77);
      }

      v103 = sub_18EF825F4(0, &unk_1ED5FD650, off_1E72AFE68);
      v88 = objc_allocWithZone(LNActionConfigurationCondition);
      v115 = sub_18EFBB90C(v115, v74, v75, v80);
      sub_18F0938AC();
      __swift_project_boxed_opaque_existential_1Tm(v117, v117[3]);
      v89 = v107;
      v90 = v79;
      v91 = v108;
      v92 = v109;
      v93 = v113;
      v100 = OUTLINED_FUNCTION_2_8(v107, v90, v108, v113, v109);
      sub_18F0938CC();
      __swift_project_boxed_opaque_existential_1Tm(v116, v116[3]);
      v94 = OUTLINED_FUNCTION_2_8(v89, v112, v91, v93, v92);
      v49 = sub_18EFA4F58(v115, v100, v94);
      (*(v105 + 8))(v101, v106);
      (*(v102 + 8))(v72, v104);
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F034F28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  OUTLINED_FUNCTION_0_10();
  v9 = v8 & v7;
  if (!v9)
  {
    OUTLINED_FUNCTION_7_3();
    while (v15 < v13)
    {
      v17 = *v14++;
      v16 = v17;
      v12 += 64;
      ++v15;
      if (v17)
      {
        v69 = v11;
        v10 = __clz(__rbit64(v16)) + v12;
        goto LABEL_7;
      }
    }

    return 1;
  }

  v69 = v6;
  v10 = __clz(__rbit64(v9));
LABEL_7:
  v18 = *(*(v5 + 48) + 8 * v10);
  v19 = sub_18F093B8C();
  v21 = v20;
  v23 = v19 == sub_18F093B8C() && v21 == v22;
  if (v23)
  {
    v54 = v18;

    goto LABEL_34;
  }

  v24 = sub_18F09444C();
  v25 = v18;

  if (v24)
  {
LABEL_34:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v56 = OUTLINED_FUNCTION_1_8();
      v58 = sub_18F036988(v56, v57, a1, 0xE400000000000000, v21);

LABEL_40:

      return v58 & 1;
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_18F093B8C();
  v27 = v26;
  sub_18F093B8C();
  OUTLINED_FUNCTION_10_3();
  if (v23 && v27 == v28)
  {

LABEL_37:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v59 = OUTLINED_FUNCTION_1_8();
      v61 = a2;
LABEL_39:
      v58 = sub_18F036988(v59, v60, v61, 0xE400000000000000, v21);

      goto LABEL_40;
    }

    goto LABEL_59;
  }

  v30 = OUTLINED_FUNCTION_9_3();
  v32 = OUTLINED_FUNCTION_6_5(v30, v27, v31);

  if (v32)
  {
    goto LABEL_37;
  }

  sub_18F093B8C();
  v34 = v33;
  sub_18F093B8C();
  OUTLINED_FUNCTION_10_3();
  if (v23 && v34 == v35)
  {

LABEL_42:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v59 = OUTLINED_FUNCTION_1_8();
      v61 = a1;
      goto LABEL_39;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v37 = OUTLINED_FUNCTION_9_3();
  v39 = OUTLINED_FUNCTION_6_5(v37, v34, v38);

  if (v39)
  {
    goto LABEL_42;
  }

  sub_18F093B8C();
  v41 = v40;
  sub_18F093B8C();
  OUTLINED_FUNCTION_10_3();
  if (v23 && v41 == v42)
  {
  }

  else
  {
    v44 = OUTLINED_FUNCTION_9_3();
    v46 = OUTLINED_FUNCTION_6_5(v44, v41, v45);

    if ((v46 & 1) == 0)
    {
      sub_18F093B8C();
      v48 = v47;
      sub_18F093B8C();
      OUTLINED_FUNCTION_10_3();
      if (v23 && v48 == v49)
      {

        goto LABEL_48;
      }

      v51 = OUTLINED_FUNCTION_9_3();
      v53 = OUTLINED_FUNCTION_6_5(v51, v48, v52);

      if (v53)
      {

LABEL_48:

        return 1;
      }

      v62 = sub_18F093B8C();
      v64 = v63;
      v65 = sub_18F093B8C();
      if (v62 != v65 || v64 != v66)
      {
        v68 = OUTLINED_FUNCTION_6_5(v62, v64, v65);

        if (v68)
        {
LABEL_56:

          return 1;
        }

        OUTLINED_FUNCTION_3_7();
        __break(1u);
      }

      goto LABEL_56;
    }
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v59 = OUTLINED_FUNCTION_1_8();
    v61 = v69;
    goto LABEL_39;
  }

LABEL_61:
  __break(1u);
  return result;
}

void sub_18F035410(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[16];
  v5 = sub_18F0127F0(v1);
  if (v5)
  {
    v6 = v5;
    LOBYTE(v28) = v2;
    v29 = v3;
    v30 = v4;
    if (sub_18F034F28(841889585, 841888817))
    {
      goto LABEL_17;
    }

    LOBYTE(v28) = v2;
    v29 = v3;
    v30 = v4;
    if (sub_18F035650())
    {
      sub_18F035AF4(v3);
      v3 = v7;
    }

    else
    {
    }

    v11 = sub_18F035C2C(v3, v6);

    if ((v11 & 1) == 0)
    {
LABEL_17:
      v21 = v26;

      OUTLINED_FUNCTION_11_2();
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC8];
      OUTLINED_FUNCTION_0_10();
      v14 = v13 & v12;
      v16 = (v15 + 63) >> 6;

      v17 = 0;
      if (!v14)
      {
        goto LABEL_12;
      }

      do
      {
        v18 = v17;
LABEL_15:
        v19 = (v18 << 9) | (8 * __clz(__rbit64(v14)));
        v20 = *(*(v6 + 56) + v19);
        v28 = *(*(v6 + 48) + v19);
        v29 = v20;
        v11 = v28;
        v2 = v20;
        sub_18F03615C(&v27, &v28);
        v14 &= v14 - 1;

        v17 = v18;
      }

      while (v14);
      while (1)
      {
LABEL_12:
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);

          __break(1u);
          return;
        }

        if (v18 >= v16)
        {
          break;
        }

        v14 = *(v6 + 64 + 8 * v18);
        ++v17;
        if (v14)
        {
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_11_2();

      sub_18F036A14(v22, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_2();

    v10 = v8;
  }
}

id sub_18F035650()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_0_10();
  v4 = v3 & v2;
  if (!v4)
  {
    OUTLINED_FUNCTION_7_3();
    while (v9 < v7)
    {
      v11 = *v8++;
      v10 = v11;
      v6 += 64;
      ++v9;
      if (v11)
      {
        v5 = __clz(__rbit64(v10)) + v6;
        goto LABEL_7;
      }
    }

    goto LABEL_59;
  }

  v5 = __clz(__rbit64(v4));
LABEL_7:
  v12 = *(*(v1 + 48) + 8 * v5);
  v13 = sub_18F093B8C();
  v15 = v14;
  if (v13 == sub_18F093B8C() && v15 == v16)
  {
    v39 = v12;

    goto LABEL_34;
  }

  v18 = sub_18F09444C();
  v19 = v12;

  if (v18)
  {
LABEL_34:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v41 = result;
      v42 = OUTLINED_FUNCTION_8_3();
      v44 = sub_18F036988(v42, v43, 808334897, 0xE400000000000000, v41);

LABEL_41:

      v50 = v44 ^ 1;
      return (v50 & 1);
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_18F093B8C();
  v20 = OUTLINED_FUNCTION_4_8();
  if (v18 == v20 && v15 == v21)
  {

LABEL_37:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v45 = result;
      v46 = OUTLINED_FUNCTION_8_3();
LABEL_39:
      v49 = 0xE400000000000000;
LABEL_40:
      v44 = sub_18F036988(v46, v47, v48, v49, v45);

      goto LABEL_41;
    }

    goto LABEL_61;
  }

  v23 = OUTLINED_FUNCTION_2_9(v20);

  if (v23)
  {
    goto LABEL_37;
  }

  sub_18F093B8C();
  v24 = OUTLINED_FUNCTION_4_8();
  if (v23 == v24 && v15 == v25)
  {

LABEL_44:
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v45 = result;
      v46 = OUTLINED_FUNCTION_8_3();
      v48 = 808334897;
      goto LABEL_39;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v27 = OUTLINED_FUNCTION_2_9(v24);

  if (v27)
  {
    goto LABEL_44;
  }

  sub_18F093B8C();
  v28 = OUTLINED_FUNCTION_4_8();
  if (v27 == v28 && v15 == v29)
  {
  }

  else
  {
    v31 = OUTLINED_FUNCTION_2_9(v28);

    if ((v31 & 1) == 0)
    {
      v32 = sub_18F093B8C();
      v34 = v33;
      v35 = sub_18F093B8C();
      if (v32 == v35 && v34 == v36)
      {

        goto LABEL_50;
      }

      v38 = OUTLINED_FUNCTION_5_5(v35);

      if (v38)
      {

LABEL_50:

LABEL_59:
        v50 = 0;
        return (v50 & 1);
      }

      v51 = sub_18F093B8C();
      v53 = v52;
      v54 = sub_18F093B8C();
      if (v51 != v54 || v53 != v55)
      {
        v57 = OUTLINED_FUNCTION_5_5(v54);

        if (v57)
        {
LABEL_58:

          goto LABEL_59;
        }

        OUTLINED_FUNCTION_3_7();
        __break(1u);
      }

      goto LABEL_58;
    }
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v45 = result;
    v46 = OUTLINED_FUNCTION_8_3();
    v48 = 3157561;
    v49 = 0xE300000000000000;
    goto LABEL_40;
  }

LABEL_63:
  __break(1u);
  return result;
}

void sub_18F035AF4(uint64_t a1)
{
  v17 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  OUTLINED_FUNCTION_0_10();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  for (i = 0; v6; i = v10)
  {
    v10 = i;
LABEL_6:
    v11 = __clz(__rbit64(v6)) | (v10 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v13 = *(a1 + 56) + 16 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16[0] = v12;
    v16[1] = v14;
    v16[2] = v15;
    v1 = v12;

    sub_18F036668(&v17, v16);
    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      OUTLINED_FUNCTION_11_2();
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  __break(1u);

  __break(1u);
}

BOOL sub_18F035C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; i = v11)
  {
    v11 = i;
LABEL_8:
    v12 = (*(a1 + 56) + 16 * (__clz(__rbit64(v7)) | (v11 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v64 = 0.0;
    MEMORY[0x1EEE9AC00](v9);
    if ((v13 & 0x1000000000000000) != 0)
    {
LABEL_29:
      v2 = v15;
      v27 = v15;

      sub_18F09405C();
      goto LABEL_20;
    }

    if ((v13 & 0x2000000000000000) != 0)
    {
      v62[0] = v14;
      v62[1] = v13 & 0xFFFFFFFFFFFFFFLL;
      v2 = v15;
      v18 = v15;

      if (v14 < 0x21u && ((0x100003E01uLL >> v14) & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((v14 & 0x1000000000000000) == 0)
      {
        goto LABEL_29;
      }

      v16 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v2 = v15;
      v17 = v15;

      if (v16 < 0x21 && ((0x100003E01uLL >> v16) & 1) != 0)
      {
LABEL_18:
        v20 = 0;
        goto LABEL_19;
      }
    }

    v19 = _swift_stdlib_strtod_clocale();
    if (!v19)
    {
      goto LABEL_18;
    }

    v20 = *v19 == 0;
LABEL_19:
    v63 = v20;
LABEL_20:

    v7 &= v7 - 1;
    if (v63)
    {
      if (*(a2 + 16))
      {
        v3 = v64;
        v21 = sub_18EFB9084(v2);
        if (v22)
        {
          v23 = *(*(a2 + 56) + 8 * v21);
          v24 = sub_18F0127E4(v23);
          if (v25)
          {
            v62[0] = 0;
            v26 = sub_18F036B10(v24, v25, v62);

            if (v26)
            {
              goto LABEL_33;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return 0;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_33:
  v29 = *v62;
  v30 = sub_18F093B8C();
  v32 = v31;
  if (v30 == sub_18F093B8C() && v32 == v33)
  {
  }

  else
  {
    v35 = sub_18F09444C();

    if ((v35 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (v3 < v29)
  {
    goto LABEL_65;
  }

LABEL_41:
  v36 = sub_18F093B8C();
  v38 = v37;
  if (v36 == sub_18F093B8C() && v38 == v39)
  {
  }

  else
  {
    v41 = sub_18F09444C();

    if ((v41 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  if (v3 < v29)
  {
    goto LABEL_65;
  }

LABEL_49:
  v42 = sub_18F093B8C();
  v44 = v43;
  if (v42 == sub_18F093B8C() && v44 == v45)
  {
  }

  else
  {
    v47 = sub_18F09444C();

    if ((v47 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  if (v3 < v29)
  {
    goto LABEL_65;
  }

LABEL_57:
  v48 = sub_18F093B8C();
  v50 = v49;
  if (v48 == sub_18F093B8C() && v50 == v51)
  {

LABEL_64:
    if (v3 >= v29)
    {
      goto LABEL_66;
    }

LABEL_65:

    return 1;
  }

  v53 = sub_18F09444C();

  if (v53)
  {
    goto LABEL_64;
  }

LABEL_66:
  v54 = sub_18F093B8C();
  v56 = v55;
  if (v54 == sub_18F093B8C() && v56 == v57)
  {

    return v3 < v29;
  }

  v59 = sub_18F09444C();

  result = 0;
  if (v59)
  {
    return v3 < v29;
  }

  return result;
}

void sub_18F03615C(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = sub_18F093B8C();
  v7 = v6;
  if (v5 == sub_18F093B8C() && v7 == v8)
  {
LABEL_22:

    goto LABEL_23;
  }

  v10 = sub_18F09444C();

  if (v10)
  {
LABEL_23:
    v29 = v4;
    v31 = v3;
    v32 = 841889585;
    v33 = 808335153;
LABEL_24:
    v30 = sub_18F036418(v31, v32, 0xE400000000000000, v33, 0xE400000000000000);
    goto LABEL_25;
  }

  v11 = sub_18F093B8C();
  v13 = v12;
  if (v11 == sub_18F093B8C() && v13 == v14)
  {

    goto LABEL_27;
  }

  v16 = sub_18F09444C();

  if (v16)
  {
LABEL_27:
    v29 = v4;
    v33 = 808334385;
    v32 = 841888817;
LABEL_28:
    v31 = v3;
    goto LABEL_24;
  }

  v17 = sub_18F093B8C();
  v19 = v18;
  if (v17 == sub_18F093B8C() && v19 == v20)
  {
    goto LABEL_22;
  }

  v22 = sub_18F09444C();

  if (v22)
  {
    goto LABEL_23;
  }

  v23 = sub_18F093B8C();
  v25 = v24;
  if (v23 == sub_18F093B8C() && v25 == v26)
  {

    goto LABEL_30;
  }

  v28 = sub_18F09444C();

  if (v28)
  {
LABEL_30:
    v29 = v4;
    v33 = 808333361;
    v32 = 841887793;
    goto LABEL_28;
  }

  v29 = v4;
  v30 = v3;
LABEL_25:
  v34 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *a1;
  sub_18F041268(v34, v29, isUniquelyReferenced_nonNull_native);

  *a1 = v36;
}

id sub_18F036418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_18F0127E4(a1);
  if (!v10)
  {
    goto LABEL_7;
  }

  if (v9 == 42 && v10 == 0xE100000000000000)
  {

    goto LABEL_13;
  }

  v12 = sub_18F09444C();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = [objc_opt_self() defaultWorkspace];
    if (v13)
    {
      v14 = v13;
      v15 = sub_18F0127E4(a1);
      if (v16)
      {
        v17 = sub_18F0365B8(v15, v16, a4, a5, a2, a3);

        if (v17)
        {
          v18 = sub_18F013BB8(a1);
          v20 = v19;
          v21 = sub_18F013BC4(a1);
          v23 = v22;
          objc_allocWithZone(LNAvailabilityAnnotation);

          v24 = sub_18EFABB48(a2, a3, v18, v20, v21, v23);
        }

        else
        {
          v24 = a1;
        }

        v26 = v24;

        return v26;
      }
    }
  }

LABEL_13:

  return a1;
}

uint64_t sub_18F0365B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_18F093B5C();
  v10 = sub_18F036A9C(a1, a2, v9, v6);

  if (v10)
  {
    v11 = sub_18F093B5C();
    v12 = sub_18F036A9C(a1, a2, v11, v6);

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_18F036668(uint64_t *a1, void **a2)
{
  v3 = 808334897;
  v4 = *a2;
  v5 = sub_18F093B8C();
  v7 = v6;
  if (v5 == sub_18F093B8C() && v7 == v8)
  {
    v13 = v4;
    goto LABEL_8;
  }

  v10 = sub_18F09444C();
  v11 = v4;

  if ((v10 & 1) == 0)
  {
    v15 = sub_18F093B8C();
    v17 = v16;
    if (v15 == sub_18F093B8C() && v17 == v18)
    {
      v12 = 0xE400000000000000;
      v3 = 808334129;
      goto LABEL_9;
    }

    v20 = sub_18F09444C();

    if (v20)
    {
      v12 = 0xE400000000000000;
      v3 = 808334129;
      goto LABEL_10;
    }

    v21 = sub_18F093B8C();
    v23 = v22;
    if (v21 != sub_18F093B8C() || v23 != v24)
    {
      v26 = sub_18F09444C();

      if (v26)
      {
        goto LABEL_6;
      }

      v3 = 3157561;
      v27 = sub_18F093B8C();
      v29 = v28;
      if (v27 == sub_18F093B8C() && v29 == v30)
      {
        v12 = 0xE300000000000000;
      }

      else
      {
        v32 = sub_18F09444C();

        if (v32)
        {
          v12 = 0xE300000000000000;
          goto LABEL_10;
        }

        v33 = sub_18F093B8C();
        v35 = v34;
        if (v33 != sub_18F093B8C() || v35 != v36)
        {
          sub_18F09444C();
        }

        v12 = 0xE100000000000000;
        v3 = 42;
      }

LABEL_9:

      goto LABEL_10;
    }

LABEL_8:
    v12 = 0xE400000000000000;
    goto LABEL_9;
  }

LABEL_6:
  v12 = 0xE400000000000000;
LABEL_10:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *a1;
  sub_18F041480(v3, v12, v4, isUniquelyReferenced_nonNull_native);

  *a1 = v38;
}

_BYTE *sub_18F03691C@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

id sub_18F036988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_18F093B5C();

  v7 = sub_18F093B5C();

  v8 = [a5 isVersion:v6 greaterThanOrEqualToVersion:v7];

  return v8;
}

id sub_18F036A14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LNPlatformName(0, a2, a3, a4);
  v5 = sub_18EFABC24();
  sub_18EFABC68(v5, v6, v7, v8);
  v9 = sub_18F093A3C();

  v10 = [a2 copyWithoutMangledTypeNameWithAvailability_];

  return v10;
}

id sub_18F036A9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_18F093B5C();
  v7 = [a4 isVersion:v6 greaterThanOrEqualToVersion:a3];

  return v7;
}

BOOL sub_18F036B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_18F09405C();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_18F036C20(uint64_t a1, char a2)
{
  v3 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a2;
  type metadata accessor for LNPlatformName(0, v6, v7, v8);
  sub_18F038348(&qword_1ED5FFA38);
  v9 = sub_18F093A5C();
  v11[8] = 0;
  v12 = v9;
  v13 = 0;
  LNActionMetadata.wrapper(encodingContext:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9670, &qword_18F0AB940);
  sub_18F038304(&unk_1EACB9688);
  sub_18F038348(&unk_1EACB8288);
  sub_18F09446C();
  return sub_18F0382A8(v5);
}

char *sub_18F036DF0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  HIBYTE(v20) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9660, &qword_18F0AB920);
  sub_18F038304(&unk_1EACB6B78);
  sub_18F038348(&unk_1ED5FF230);
  sub_18F09445C();
  if (!v1)
  {
    sub_18F03838C();
    sub_18F0383D0(v11, v9);
    v12 = sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
    LNActionMetadata.init(from:bundleMetadataVersion:bundleURL:effectiveBundleIdentifier:)(v9, 1, v5, 0, v13, v14, v15, v16, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, vars0, vars8);
    v5 = v17;
    sub_18F0382A8(v11);
  }

  return v5;
}

__n128 AssistantPrebuiltIntent.init(identifier:exampleUtterances:negativePhrases:metadata:conformanceType:visibility:requiredEntitlements:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 48);
  v10 = *a5;
  v11 = *a6;
  *a8 = *a1;
  *(a8 + 8) = v8;
  result = *(a1 + 16);
  v13 = *(a1 + 32);
  *(a8 + 16) = result;
  *(a8 + 32) = v13;
  *(a8 + 48) = v9;
  *(a8 + 56) = a2;
  *(a8 + 64) = a3;
  *(a8 + 72) = a4;
  *(a8 + 80) = v10;
  *(a8 + 81) = v11;
  *(a8 + 88) = a7;
  return result;
}

uint64_t AssistantPrebuiltIntent.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  v4 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

__n128 AssistantPrebuiltIntent.identifier.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = a1[3].n128_u64[0];

  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v4;
  result = a1[1];
  v7 = a1[2];
  v1[1] = result;
  v1[2] = v7;
  v1[3].n128_u64[0] = v5;
  return result;
}

uint64_t AssistantPrebuiltIntent.requiredEntitlements.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

__n128 AssistantPrebuiltIntent.init(identifier:exampleUtterances:negativePhrases:metadata:conformanceType:visibility:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, __n128 *a7@<X8>)
{
  v7 = a1->n128_u64[0];
  v8 = a1->n128_u64[1];
  v9 = a1[3].n128_u64[0];
  v10 = *a5;
  v11 = *a6;
  a7[5].n128_u64[1] = 0;
  a7->n128_u64[0] = v7;
  a7->n128_u64[1] = v8;
  result = a1[1];
  v13 = a1[2];
  a7[1] = result;
  a7[2] = v13;
  a7[3].n128_u64[0] = v9;
  a7[3].n128_u64[1] = a2;
  a7[4].n128_u64[0] = a3;
  a7[4].n128_u64[1] = a4;
  a7[5].n128_u8[0] = v10;
  a7[5].n128_u8[1] = v11;
  return result;
}

void AssistantPrebuiltIntent.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9660, &qword_18F0AB920);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F037754();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_18F0294C0();
    OUTLINED_FUNCTION_1_9();
    sub_18F0942CC();
    v19 = a2;
    v18 = v25;
    v22 = v26;
    v17 = v27;
    v21 = v28;
    v20 = v29;
    v23 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9668, &qword_18F0AB928);
    OUTLINED_FUNCTION_5_6(1);
    sub_18F0377A8();
    OUTLINED_FUNCTION_3_8();
    sub_18F0942CC();
    v15 = v30;
    v16 = v25;
    OUTLINED_FUNCTION_5_6(3);
    OUTLINED_FUNCTION_3_8();
    sub_18F0942CC();
    v13 = v25;
    OUTLINED_FUNCTION_3_8();
    v14 = sub_18F036DF0(v6);
    OUTLINED_FUNCTION_5_6(4);
    sub_18F029514();
    OUTLINED_FUNCTION_1_9();
    sub_18F09426C();
    v7 = v25;
    v12 = v25 == 2;
    OUTLINED_FUNCTION_5_6(5);
    sub_18F029568();
    OUTLINED_FUNCTION_1_9();
    sub_18F09426C();
    v11 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9350, &qword_18F0AA7F8);
    v38 = 6;
    sub_18F037CF8(&qword_1EACB9358);
    OUTLINED_FUNCTION_3_8();
    sub_18F09426C();
    v8 = OUTLINED_FUNCTION_2_10();
    v9(v8);
    __src[0] = v25;
    __src[1] = v26;
    __src[2] = v27;
    __src[3] = v28;
    __src[4] = v29;
    __src[5] = v30;
    __src[6] = v31;
    __src[7] = v25;
    __src[8] = v25;
    __src[9] = v14;
    LOBYTE(__src[10]) = v12 | v25 & 1;
    BYTE1(__src[10]) = v25;
    __src[11] = v39;
    v10 = v39;
    memcpy(v19, __src, 0x60uLL);
    sub_18EFB5BE0(__src, &v25);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v25 = v18;
    v26 = v22;
    v27 = v17;
    v28 = v21;
    v29 = v20;
    v30 = v15;
    v31 = v23;
    v32 = v16;
    v33 = v13;
    v34 = v14;
    v35 = (v12 | v7) & 1;
    v36 = v11;
    v37 = v10;
    sub_18EFB5C3C(&v25);
  }
}

unint64_t sub_18F037754()
{
  result = qword_1EACB6D88;
  if (!qword_1EACB6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D88);
  }

  return result;
}

unint64_t sub_18F0377A8()
{
  result = qword_1EACB6C60;
  if (!qword_1EACB6C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9668, &qword_18F0AB928);
    sub_18F037C84(&qword_1EACB6C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C60);
  }

  return result;
}

uint64_t AssistantPrebuiltIntent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9670, &qword_18F0AB940);
  OUTLINED_FUNCTION_7();
  v26 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = *v2;
  v10 = v2[1];
  v12 = v2[6];
  v11 = v2[7];
  v13 = v2[9];
  v23 = v2[8];
  v24 = v11;
  v22 = v13;
  v32 = *(v2 + 80);
  v21 = *(v2 + 81);
  v20 = v2[11];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F037754();

  sub_18F0945BC();
  v27 = v9;
  v28 = v10;
  v14 = *(v2 + 1);
  v30 = *(v2 + 2);
  v29 = v14;
  v31 = v12;
  v33 = 0;
  sub_18F029880();
  OUTLINED_FUNCTION_1();
  v15 = v25;
  sub_18F0943CC();
  if (v15)
  {

    return (*(v26 + 8))(v8, v4);
  }

  else
  {
    v18 = v22;
    v17 = v23;
    v19 = v26;

    v27 = v24;
    v33 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9668, &qword_18F0AB928);
    sub_18F037BC8();
    OUTLINED_FUNCTION_1();
    sub_18F0943CC();
    v27 = v17;
    v33 = 3;
    OUTLINED_FUNCTION_1();
    sub_18F0943CC();
    sub_18F036C20(v18, 2);
    LOBYTE(v27) = v32;
    v33 = 4;
    sub_18F0298D4();
    OUTLINED_FUNCTION_1();
    sub_18F0943CC();
    LOBYTE(v27) = v21;
    v33 = 5;
    sub_18F029928();
    OUTLINED_FUNCTION_1();
    sub_18F09436C();
    v27 = v20;
    v33 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9350, &qword_18F0AA7F8);
    sub_18F037CF8(&qword_1EACB9380);
    OUTLINED_FUNCTION_1();
    sub_18F09436C();
    return (*(v19 + 8))(0, v4);
  }
}

unint64_t sub_18F037BC8()
{
  result = qword_1EACB9678;
  if (!qword_1EACB9678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9668, &qword_18F0AB928);
    sub_18F037C84(&qword_1EACB77A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9678);
  }

  return result;
}

unint64_t sub_18F037C84(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7798, &unk_18F0AB930);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F037CF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9350, &qword_18F0AA7F8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F037D60()
{
  v0 = sub_18F09420C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18F037DB4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x617461646174656DLL;
      break;
    case 3:
      result = 0x657669746167656ELL;
      break;
    case 4:
      result = 0x616D726F666E6F63;
      break;
    case 5:
      result = 0x696C696269736976;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18F037ECC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F037D60();
  *a1 = result;
  return result;
}

unint64_t sub_18F037EFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18F037DB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18F037F44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F037DAC();
  *a1 = result;
  return result;
}

uint64_t sub_18F037F6C(uint64_t a1)
{
  v2 = sub_18F037754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F037FA8(uint64_t a1)
{
  v2 = sub_18F037754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F03801C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_18F03805C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssistantPrebuiltIntent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F0381A4()
{
  result = qword_1EACB9680;
  if (!qword_1EACB9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9680);
  }

  return result;
}

unint64_t sub_18F0381FC()
{
  result = qword_1EACB6D78;
  if (!qword_1EACB6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D78);
  }

  return result;
}

unint64_t sub_18F038254()
{
  result = qword_1EACB6D80;
  if (!qword_1EACB6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6D80);
  }

  return result;
}

uint64_t sub_18F0382A8(uint64_t a1)
{
  v2 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18F038304(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F038348(uint64_t a1)
{
  result = OUTLINED_FUNCTION_293(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18F03838C()
{
  result = qword_1ED5FF210;
  if (!qword_1ED5FF210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FF210);
  }

  return result;
}

uint64_t sub_18F0383D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MetadataLibraryProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  MetadataLibraryProvider.init()();
  return v0;
}

uint64_t *MetadataLibraryProvider.init()()
{
  sub_18F0934FC();
  v2 = sub_18F0934CC();
  if (v1)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v2;
  }

  return v0;
}

void MetadataLibraryProvider.getPrebuiltEnum(with:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a3;
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_10();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  OUTLINED_FUNCTION_95(v8);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_55();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9698, &qword_18F0ABB78);
  OUTLINED_FUNCTION_95(v10);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_10_4();
  sub_18F09348C();
  sub_18EF82E14(v5, &qword_1EACB9690, &qword_18F0ABB70);
  v14 = sub_18F09356C();
  OUTLINED_FUNCTION_5_7(v14);
  if (v15)
  {
    sub_18EF82E14(v13, &qword_1EACB9698, &qword_18F0ABB78);
    *&v16 = OUTLINED_FUNCTION_13_3();
    v4[4] = v16;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_4_10();
    v18(v17);
    v19 = OUTLINED_FUNCTION_3_9();
    sub_18EFB6958(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_12_2();
    v23(v22);
    OUTLINED_FUNCTION_11_3();
    (*(v24 + 8))(v13, a4);
    memcpy(v4, __src, 0x50uLL);
  }
}

void MetadataLibraryProvider.getPrebuiltEntity(with:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[1] = a3;
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_10();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  OUTLINED_FUNCTION_95(v8);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_55();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A0, &unk_18F0ABB80);
  OUTLINED_FUNCTION_95(v10);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_10_4();
  sub_18F0934AC();
  sub_18EF82E14(v5, &qword_1EACB9690, &qword_18F0ABB70);
  v14 = sub_18F09362C();
  OUTLINED_FUNCTION_5_7(v14);
  if (v15)
  {
    sub_18EF82E14(v13, &qword_1EACB96A0, &unk_18F0ABB80);
    *&v16 = OUTLINED_FUNCTION_13_3();
    v4[4] = v16;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_4_10();
    v18(v17);
    v19 = OUTLINED_FUNCTION_3_9();
    sub_18EFB5CB4(v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_12_2();
    v24(v23);
    OUTLINED_FUNCTION_11_3();
    (*(v25 + 8))(v13, a4);
    memcpy(v4, __src, 0x50uLL);
  }
}

void MetadataLibraryProvider.getPrebuiltIntent(with:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a3;
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_10();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  OUTLINED_FUNCTION_95(v8);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_55();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A8, &qword_18F0ABF70);
  OUTLINED_FUNCTION_95(v10);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_10_4();
  sub_18F09347C();
  sub_18EF82E14(v5, &qword_1EACB9690, &qword_18F0ABB70);
  v14 = sub_18F09346C();
  OUTLINED_FUNCTION_5_7(v14);
  if (v15)
  {
    sub_18EF82E14(v13, &qword_1EACB96A8, &qword_18F0ABF70);
    *&v16 = OUTLINED_FUNCTION_13_3();
    v4[4] = v16;
    v4[5] = v16;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_4_10();
    v18(v17);
    OUTLINED_FUNCTION_3_9();
    sub_18EFB4BF0();
    v19 = OUTLINED_FUNCTION_12_2();
    v20(v19);
    OUTLINED_FUNCTION_11_3();
    (*(v21 + 8))(v13, a4);
    memcpy(v4, __src, 0x60uLL);
  }
}

Swift::String_optional __swiftcall MetadataLibraryProvider.getSchemaDomain(for:)(Swift::String a1)
{
  v1 = sub_18F0934BC();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t MetadataLibraryProvider.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_18F038C8C()
{
  v0 = [objc_opt_self() enumeratorWithOptions_];
  v1 = MEMORY[0x1E69E7CC0];
  v2 = &selRef_initWithPlatformSpecificationConfigurationData_platform_;
  v16 = v0;
  while (1)
  {
    v3 = MEMORY[0x193AD91F0]();
    v4 = [v0 nextObject];
    v5 = v4;
    if (!v4)
    {
      goto LABEL_19;
    }

    v6 = [v4 containingBundleRecord];
    if (v6)
    {
      v7 = v6;

      goto LABEL_19;
    }

    v8 = v5;
    v9 = [v8 v2[362]];

    if ((v9 & 1) == 0)
    {

      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8760, &qword_18F0AC410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F09BCD0;
    *(inited + 32) = v8;
    v11 = v1 >> 62;
    v12 = v1 >> 62 ? sub_18F0941BC() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v14 = v8;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v11)
      {
LABEL_15:
        sub_18F0941BC();
      }

LABEL_16:
      v1 = sub_18F09409C();
      v15 = v1 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_17;
    }

    if (v11)
    {
      goto LABEL_15;
    }

    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (*(v15 + 16) >= *(v15 + 24) >> 1)
    {
      goto LABEL_23;
    }

    sub_18EF825F4(0, &qword_1EACB7168, 0x1E69635D0);
    swift_arrayInitWithCopy();

    ++*(v15 + 16);

    v0 = v16;
    v2 = &selRef_initWithPlatformSpecificationConfigurationData_platform_;
LABEL_19:
    objc_autoreleasePoolPop(v3);
    if (!v5)
    {

      qword_1EACB6E18 = v1;
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t static LSApplicationExtensionRecord.enumeratedStandaloneAppIntentsExtensions.getter()
{
  if (qword_1EACB6E10 != -1)
  {
    swift_once();
  }
}

uint64_t LSApplicationExtensionRecord.attributionBundleIdentifier.getter()
{
  v1 = [v0 entitlements];
  v2 = sub_18F093B5C();
  sub_18EF825F4(0, &unk_1EACB6DF0, 0x1E696AEC0);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_18F021E3C(v8);
    return 0;
  }
}

id sub_18F039084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v46 = a6;
  v47 = a7;
  v45 = a5;
  v48 = a4;
  v49 = sub_18F09373C();
  v10 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96B0, &unk_18F0ABC00);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - v17;
  sub_18F09396C();
  v19 = sub_18F09364C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_18EFBB980(v18);
    v20 = 0;
  }

  else
  {
    v20 = sub_18EFB58B4(a1, a2, a3, v45, v46, v47);
    (*(*(v19 - 8) + 8))(v18, v19);
  }

  type metadata accessor for SchemaLocalization();
  static SchemaLocalization.bundleURL.getter(v15);
  v21 = sub_18F042CCC(v48);
  v23 = v22;
  v24 = sub_18F09397C();
  v25 = *(v24 + 16);
  if (v25)
  {
    v42 = v23;
    v43 = v21;
    v44 = v20;
    v45 = v15;
    v50 = MEMORY[0x1E69E7CC0];
    sub_18EFB5B40(0, v25, 0);
    v26 = v50;
    v28 = *(v10 + 16);
    v27 = v10 + 16;
    v29 = *(v27 + 64);
    v41 = v24;
    v30 = v24 + ((v29 + 32) & ~v29);
    v46 = *(v27 + 56);
    v47 = v28;
    v48 = v27;
    v31 = (v27 - 8);
    do
    {
      v32 = v49;
      v47(v12, v30, v49);
      v33 = sub_18F09371C();
      v35 = v34;
      (*v31)(v12, v32);
      v50 = v26;
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_18EFB5B40((v36 > 1), v37 + 1, 1);
        v26 = v50;
      }

      *(v26 + 16) = v37 + 1;
      v38 = v26 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      v30 += v46;
      --v25;
    }

    while (v25);

    v20 = v44;
    v15 = v45;
    v23 = v42;
    v21 = v43;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v39 = objc_allocWithZone(LNActionSummary);
  return sub_18EFA4E30(v20, v15, v21, v23, v26);
}

unint64_t sub_18F039440()
{
  result = qword_1EACB9308;
  if (!qword_1EACB9308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACB9308);
  }

  return result;
}

uint64_t SystemEntityProtocolMetadata.hashValue.getter()
{
  sub_18F09452C();
  sub_18F093F2C();
  return sub_18F09456C();
}

uint64_t sub_18F0394F4(uint64_t a1)
{
  sub_18F09452C();
  sub_18F093F2C();
  return sub_18F09456C();
}

uint64_t sub_18F039538()
{
  result = sub_18F039558();
  qword_1EACB96B8 = result;
  return result;
}

uint64_t sub_18F039558()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96C8, &qword_18F0ABCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0ABC10;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000018F0B0560;
  v1 = objc_opt_self();
  *(inited + 48) = [v1 mailMessageProtocol];
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x800000018F0B0580;
  *(inited + 72) = [v1 mailAddresseeProtocol];
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x800000018F0B05A0;
  *(inited + 96) = [v1 mailAccountProtocol];
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x800000018F0B05C0;
  *(inited + 120) = [v1 mailboxProtocol];
  *(inited + 128) = 0xD00000000000001ALL;
  *(inited + 136) = 0x800000018F0B05E0;
  *(inited + 144) = [v1 uniqueEntityProtocol];
  *(inited + 152) = 0xD00000000000001ELL;
  *(inited + 160) = 0x800000018F0B0600;
  *(inited + 168) = [v1 updatableEntityProtocol];
  *(inited + 176) = 0xD000000000000024;
  *(inited + 184) = 0x800000018F0B0620;
  *(inited + 192) = [v1 updatableEntityProtocol];
  *(inited + 200) = 0xD000000000000021;
  *(inited + 208) = 0x800000018F0B0650;
  *(inited + 216) = [v1 urlRepresentableProtocol];
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x800000018F0B0680;
  *(inited + 240) = [v1 visualSearchProtocol];
  *(inited + 248) = 0xD00000000000001ALL;
  *(inited + 256) = 0x800000018F0B06A0;
  *(inited + 264) = [v1 visualSearchOCRProtocol];
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x800000018F0B06C0;
  *(inited + 288) = [v1 indexedEntityProtocol];
  *(inited + 296) = 0xD000000000000015;
  *(inited + 304) = 0x800000018F0B06E0;
  *(inited + 312) = [v1 persistentFileIdentifiableEntityProtocol];
  *(inited + 320) = 0xD00000000000001ALL;
  *(inited + 328) = 0x800000018F0B0700;
  *(inited + 336) = [v1 assistantEntityProtocol];
  *(inited + 344) = 0xD000000000000018;
  *(inited + 352) = 0x800000018F0B0720;
  *(inited + 360) = [v1 uniqueEntityProtocol];
  *(inited + 368) = 0xD000000000000022;
  *(inited + 376) = 0x800000018F0B0740;
  *(inited + 384) = [v1 urlRepresentableProtocol];
  return sub_18F093A5C();
}

uint64_t static SystemEntityProtocolSupport.systemEntityProtocolMapping.getter()
{
  if (qword_1EACB7288 != -1)
  {
    swift_once();
  }
}

unint64_t sub_18F03993C()
{
  result = qword_1EACB96C0;
  if (!qword_1EACB96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB96C0);
  }

  return result;
}

uint64_t sub_18F039990(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_18F0399D0(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SystemEntityProtocolSupport(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id LNCodableValue.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18F09305C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_18F0930BC();
  swift_allocObject();
  sub_18F0930AC();
  sub_18F09303C();
  sub_18F09307C();
  v6 = sub_18F09308C();
  v8 = v7;
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_18F0932DC();
  v11 = [v9 initWithData_];
  sub_18EF9A4AC(v6, v8);

  (*(*(a2 - 8) + 8))(a1, a2);
  return v11;
}

uint64_t LNCodableValue.data.getter()
{
  v1 = *(v0 + OBJC_IVAR___LNCodableValue_data);
  sub_18EF844C4(v1, *(v0 + OBJC_IVAR___LNCodableValue_data + 8));
  return v1;
}

id LNCodableValue.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18F0932DC();
  v6 = [v4 initWithData_];

  sub_18EF9A4AC(a1, a2);
  return v6;
}

id LNCodableValue.init(data:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___LNCodableValue_data);
  *v3 = a1;
  v3[1] = a2;
  v5.super_class = LNCodableValue;
  return objc_msgSendSuper2(&v5, sel_init);
}

id LNCodableValue.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  sub_18EF825F4(0, &qword_1EACB9178, 0x1E695DEF0);
  v2 = sub_18F093F0C();
  if (v2)
  {
    v3 = v2;
    sub_18F0932FC();
  }

  type metadata accessor for LNCodableValue(v4);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall LNCodableValue.encode(with:)(NSCoder with)
{
  v3 = [v1 data];
  sub_18F09330C();

  OUTLINED_FUNCTION_0_2();
  v4 = sub_18F0932DC();
  v5 = OUTLINED_FUNCTION_0_2();
  sub_18EF9A4AC(v5, v6);
  v7 = sub_18F093B5C();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v7];
}

uint64_t static LNCodableValue.== infix(_:_:)(void *a1, void *a2)
{
  v3 = [a1 data];
  sub_18F09330C();

  v4 = [a2 data];
  v5 = sub_18F09330C();
  v7 = v6;

  v8 = OUTLINED_FUNCTION_0_2();
  LOBYTE(v4) = MEMORY[0x193AD7E00](v8);
  sub_18EF9A4AC(v5, v7);
  v9 = OUTLINED_FUNCTION_0_2();
  sub_18EF9A4AC(v9, v10);
  return v4 & 1;
}

id LNCodableValue.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t LNCodableValue.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18F021DCC(a1, v6);
  if (!v7)
  {
    sub_18F021E3C(v6);
    goto LABEL_5;
  }

  type metadata accessor for LNCodableValue(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = static LNCodableValue.== infix(_:_:)(v1, v5);

  return v3 & 1;
}

uint64_t LNCodableValue.description.getter()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = [v0 data];
  sub_18F09330C();

  OUTLINED_FUNCTION_0_2();
  v3 = sub_18F0932DC();
  v4 = OUTLINED_FUNCTION_0_2();
  sub_18EF9A4AC(v4, v5);
  v12 = 0;
  v6 = [v1 JSONObjectWithData:v3 options:0 error:&v12];

  v7 = v12;
  if (v6)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
    sub_18EF914D4(&v13, v14);
    *&v13 = 0;
    *(&v13 + 1) = 0xE000000000000000;
    sub_18F09414C();
    v8 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v9 = v7;
    v10 = sub_18F09318C();

    swift_willThrow();
    return 0x746164206461623CLL;
  }

  return v8;
}

uint64_t LNCodableValue.value<A>(ofType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_18F09302C();
  swift_allocObject();
  sub_18F09301C();
  v5 = [v2 data];
  v6 = sub_18F09330C();
  v8 = v7;

  sub_18F09300C();
  sub_18EF9A4AC(v6, v8);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, a1);
}

uint64_t sub_18F03A614(uint64_t a1, uint64_t a2)
{
  sub_18F09452C();
  sub_18F093C1C();
  return sub_18F09456C();
}

uint64_t sub_18F03A6B8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_18F09452C();
  v4 = a2(a1);
  OUTLINED_FUNCTION_10_5(v4, v5, v6);

  return sub_18F09456C();
}

uint64_t sub_18F03A710(uint64_t a1)
{
  sub_18F09452C();
  MEMORY[0x193AD9050](a1);
  return sub_18F09456C();
}

uint64_t sub_18F03A758()
{
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_9_4();
  sub_18F093C1C();
}

uint64_t sub_18F03A7E4(uint64_t a1, char a2)
{
  sub_18EFD03AC(a2);
  sub_18F093C1C();
}

uint64_t sub_18F03A850(uint64_t a1, char a2)
{
  sub_18F093C1C();
}

uint64_t sub_18F03A8C0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_14_0();
  }

  else
  {
    OUTLINED_FUNCTION_13_4();
  }

  sub_18F093C1C();
}

uint64_t sub_18F03A940()
{
  OUTLINED_FUNCTION_4_11();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_6_7();
      break;
    case 4:
      OUTLINED_FUNCTION_3_10();
      break;
    case 5:
      OUTLINED_FUNCTION_8_4();
      break;
    default:
      break;
  }

  sub_18F093C1C();
}

uint64_t sub_18F03AA10()
{
  OUTLINED_FUNCTION_4_11();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_6_7();
      break;
    case 3:
      OUTLINED_FUNCTION_3_10();
      break;
    case 4:
      OUTLINED_FUNCTION_8_4();
      break;
    default:
      break;
  }

  sub_18F093C1C();
}

uint64_t sub_18F03AAB4(uint64_t a1, char a2)
{
  sub_18F093C1C();
}

uint64_t sub_18F03AB98(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_14_0();
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  sub_18F093C1C();
}

uint64_t sub_18F03AC14(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_14_0();
    if (v5)
    {
      v6 = 0x6570795474696E75;
    }

    else
    {
      v6 = 0x626D795374696E75;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_16_2(v3, v6, v4);

  return sub_18F09456C();
}

uint64_t sub_18F03ACC4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_14_0();
    if (v5)
    {
      v6 = 0x6C616E7265746E69;
    }

    else
    {
      v6 = 0x6D706F6C65766564;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_4();
  }

  OUTLINED_FUNCTION_16_2(v3, v6, v4);

  return sub_18F09456C();
}

uint64_t sub_18F03AD48(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_15_2(a1, a2);
  if (v2)
  {
    v5 = 0x766972446C6F6F74;
  }

  else
  {
    v5 = 0x6C6F636F746F7270;
  }

  OUTLINED_FUNCTION_16_2(v3, v5, v4);

  return sub_18F09456C();
}

uint64_t sub_18F03ADEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_18F09452C();
  v5 = a3(a2);
  OUTLINED_FUNCTION_10_5(v5, v6, v7);

  return sub_18F09456C();
}

uint64_t sub_18F03AE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18F09452C();
  sub_18F093C1C();
  return sub_18F09456C();
}

uint64_t sub_18F03AEAC(uint64_t a1, uint64_t a2)
{
  sub_18F09452C();
  MEMORY[0x193AD9050](a2);
  return sub_18F09456C();
}

uint64_t sub_18F03AEF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_16_2(v2, v3, v4);

  return sub_18F09456C();
}

char *sub_18F03B07C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  HIBYTE(v21) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9748, &unk_18F0ABD00);
  sub_18F029E58(&qword_1EACB6B88, &qword_1EACB9748, &unk_18F0ABD00, MEMORY[0x1E69E6F50]);
  sub_18F03BF3C(&qword_1ED5FEBB0, &protocol conformance descriptor for LNEnumMetadata.CodableWrapper);
  sub_18F09445C();
  if (!v1)
  {
    sub_18F03BF80();
    sub_18F03BFC4(v11, v9);
    v12 = sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
    LNEnumMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(v9, v5, 0, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
    v5 = v18;
    sub_18F03BEE0(v11);
  }

  return v5;
}

__n128 AssistantPrebuiltEnum.init(identifier:metadata:conformanceType:visibility:requiredEntitlements:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 48);
  v8 = *a3;
  v9 = *a4;
  *a6 = *a1;
  *(a6 + 8) = v6;
  result = *(a1 + 16);
  v11 = *(a1 + 32);
  *(a6 + 16) = result;
  *(a6 + 32) = v11;
  *(a6 + 48) = v7;
  *(a6 + 56) = a2;
  *(a6 + 64) = v8;
  *(a6 + 65) = v9;
  *(a6 + 72) = a5;
  return result;
}

uint64_t AssistantPrebuiltEnum.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  v4 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

__n128 AssistantPrebuiltEnum.identifier.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = a1[3].n128_u64[0];

  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v4;
  result = a1[1];
  v7 = a1[2];
  v1[1] = result;
  v1[2] = v7;
  v1[3].n128_u64[0] = v5;
  return result;
}

uint64_t AssistantPrebuiltEnum.requiredEntitlements.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

__n128 AssistantPrebuiltEnum.init(identifier:metadata:conformanceType:visibility:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, __n128 *a5@<X8>)
{
  v5 = a1->n128_u64[0];
  v6 = a1->n128_u64[1];
  v7 = a1[3].n128_u64[0];
  v8 = *a3;
  v9 = *a4;
  a5[4].n128_u64[1] = 0;
  a5->n128_u64[0] = v5;
  a5->n128_u64[1] = v6;
  result = a1[1];
  v11 = a1[2];
  a5[1] = result;
  a5[2] = v11;
  a5[3].n128_u64[0] = v7;
  a5[3].n128_u64[1] = a2;
  a5[4].n128_u8[0] = v8;
  a5[4].n128_u8[1] = v9;
  return result;
}

void AssistantPrebuiltEnum.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9748, &unk_18F0ABD00);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F03B83C();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_18F0294C0();
    OUTLINED_FUNCTION_0_6();
    sub_18F0942CC();
    v16 = a2;
    v17 = v22;
    v20 = v23;
    v18 = v24;
    v19 = v28;
    v14 = v27;
    v12 = v26;
    v13 = v25;
    v15 = sub_18F03B07C(1);
    sub_18F029514();
    OUTLINED_FUNCTION_0_6();
    sub_18F09426C();
    v6 = v22;
    v7 = v22 == 2;
    LOBYTE(__src[0]) = 3;
    sub_18F029568();
    OUTLINED_FUNCTION_0_6();
    sub_18F09426C();
    v11 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9350, &qword_18F0AA7F8);
    v33 = 4;
    sub_18F02997C(&qword_1EACB9358, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_18F09426C();
    v8 = OUTLINED_FUNCTION_2_3();
    v9(v8);
    v10 = v34;
    __src[0] = v17;
    __src[1] = v20;
    __src[2] = v18;
    __src[3] = v13;
    __src[4] = v12;
    __src[5] = v14;
    __src[6] = v19;
    __src[7] = v15;
    LOBYTE(__src[8]) = (v7 | v6) & 1;
    BYTE1(__src[8]) = v11;
    __src[9] = v34;
    memcpy(v16, __src, 0x50uLL);
    sub_18EFB6BF8(__src, &v22);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v22 = v17;
    v23 = v20;
    v24 = v18;
    v25 = v13;
    v26 = v12;
    v27 = v14;
    v28 = v19;
    v29 = v15;
    v30 = (v7 | v6) & 1;
    v31 = v11;
    v32 = v10;
    sub_18EFB6C54(&v22);
  }
}

unint64_t sub_18F03B83C()
{
  result = qword_1EACB6DE8;
  if (!qword_1EACB6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DE8);
  }

  return result;
}

uint64_t AssistantPrebuiltEnum.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9750, &qword_18F0ABD10);
  OUTLINED_FUNCTION_7();
  v23 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[6];
  v21 = v2[7];
  v29 = *(v2 + 64);
  v20 = *(v2 + 65);
  v19 = v2[9];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F03B83C();

  sub_18F0945BC();
  v24 = v9;
  v25 = v10;
  v12 = *(v2 + 1);
  v27 = *(v2 + 2);
  v26 = v12;
  v28 = v11;
  v30 = 0;
  sub_18F029880();
  OUTLINED_FUNCTION_1();
  v13 = v22;
  sub_18F0943CC();
  if (v13)
  {

    return (*(v23 + 8))(v8, v4);
  }

  else
  {
    v15 = v29;
    v16 = v20;
    v17 = v19;
    v18 = v23;

    OUTLINED_FUNCTION_4();
    sub_18F03AF38();
    LOBYTE(v24) = v15;
    v30 = 2;
    sub_18F0298D4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    sub_18F0943CC();
    LOBYTE(v24) = v16;
    v30 = 3;
    sub_18F029928();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    sub_18F09436C();
    v24 = v17;
    v30 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9350, &qword_18F0AA7F8);
    sub_18F02997C(&qword_1EACB9380, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    sub_18F09436C();
    return (*(v18 + 8))(v8, v4);
  }
}

unint64_t sub_18F03BBC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFCFC58();
  *a1 = result;
  return result;
}

unint64_t sub_18F03BBF8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18EFCFCA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_18F03BC2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFCFC58();
  *a1 = result;
  return result;
}

uint64_t sub_18F03BC54(uint64_t a1)
{
  v2 = sub_18F03B83C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F03BC90(uint64_t a1)
{
  v2 = sub_18F03B83C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for AssistantPrebuiltEnum.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F03BDDC()
{
  result = qword_1EACB9758;
  if (!qword_1EACB9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9758);
  }

  return result;
}

unint64_t sub_18F03BE34()
{
  result = qword_1EACB6DD8;
  if (!qword_1EACB6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DD8);
  }

  return result;
}

unint64_t sub_18F03BE8C()
{
  result = qword_1EACB6DE0;
  if (!qword_1EACB6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6DE0);
  }

  return result;
}

uint64_t sub_18F03BEE0(uint64_t a1)
{
  v2 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F03BF3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LNEnumMetadata.CodableWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F03BF80()
{
  result = qword_1ED5FF268;
  if (!qword_1ED5FF268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FF268);
  }

  return result;
}

uint64_t sub_18F03BFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F03C02C()
{
  sub_18F0934FC();
  result = sub_18F0934CC();
  qword_1EACB9768 = result;
  return result;
}

void *sub_18F03C084()
{
  result = sub_18F03C1E0(MEMORY[0x1E698AB68], MEMORY[0x1E698AB88], MEMORY[0x1E698AB60]);
  off_1EACB6D20 = result;
  return result;
}

void *sub_18F03C104()
{
  result = sub_18F03C1E0(MEMORY[0x1E698ABA0], MEMORY[0x1E698AB90], MEMORY[0x1E698AB98]);
  off_1EACB6D38 = result;
  return result;
}

void *sub_18F03C184()
{
  result = sub_18F03C1E0(MEMORY[0x1E698AB78], MEMORY[0x1E698AB80], MEMORY[0x1E698AB70]);
  qword_1EACB6D50 = result;
  return result;
}

void *sub_18F03C1E0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v53 = a2;
  v4 = a1(0);
  OUTLINED_FUNCTION_7();
  v65 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v9 = sub_18F0935CC();
  OUTLINED_FUNCTION_7();
  v54 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EACB7290 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v14 = qword_1EACB9768;
    if (!qword_1EACB9768)
    {
      break;
    }

    v15 = sub_18F093A5C();
    v16 = sub_18F0934DC();
    v52 = *(v16 + 16);
    if (!v52)
    {
LABEL_26:

      return v15;
    }

    v62 = v14;
    v17 = 0;
    v51 = v16 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v50 = v54 + 16;
    v60 = (v65 + 8);
    v61 = v65 + 16;
    v47 = (v54 + 8);
    v57 = a3;
    v58 = v8;
    v59 = v4;
    v48 = v16;
    v49 = v9;
    v56 = v13;
    while (v17 < *(v16 + 16))
    {
      v18 = *(v54 + 72);
      v55 = v17;
      v19 = (*(v54 + 16))(v13, v51 + v18 * v17, v9);
      v20 = v53(v19);
      v66 = *(v20 + 16);
      if (v66)
      {
        v21 = 0;
        v22 = *(v65 + 80);
        v63 = v20;
        v64 = v20 + ((v22 + 32) & ~v22);
        do
        {
          if (v21 >= *(v20 + 16))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v23 = (*(v65 + 16))(v8, v64 + *(v65 + 72) * v21, v4);
          a3(v23);
          sub_18F0935AC();
          v24 = v13;
          v25 = sub_18F09349C();
          v9 = v26;

          if (v9)
          {
            v67 = sub_18F0935AC();
            v68 = v27;
            MEMORY[0x193AD8780](46, 0xE100000000000000);
            MEMORY[0x193AD8780](v25, v9);

            v13 = v67;
            v9 = v68;
            v8 = a3(v28);
            a3 = v29;
            swift_isUniquelyReferenced_nonNull_native();
            v67 = v15;
            v30 = sub_18EFAF54C();
            if (__OFADD__(v15[2], (v31 & 1) == 0))
            {
              goto LABEL_28;
            }

            v4 = v30;
            v32 = v31;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9798, &qword_18F0ABF78);
            if (sub_18F09417C())
            {
              v33 = sub_18EFAF54C();
              if ((v32 & 1) != (v34 & 1))
              {
                result = sub_18F0944AC();
                __break(1u);
                return result;
              }

              v4 = v33;
            }

            if (v32)
            {

              v15 = v67;
              v35 = (*(v67 + 56) + 16 * v4);
              *v35 = v8;
              v35[1] = a3;

              v36 = OUTLINED_FUNCTION_0_13();
              v37(v36);
            }

            else
            {
              v15 = v67;
              *(v67 + 8 * (v4 >> 6) + 64) |= 1 << v4;
              v38 = (v15[6] + 16 * v4);
              *v38 = v13;
              v38[1] = v9;
              v39 = (v15[7] + 16 * v4);
              *v39 = v8;
              v39[1] = a3;
              v40 = OUTLINED_FUNCTION_0_13();
              v41(v40);
              v42 = v15[2];
              v43 = __OFADD__(v42, 1);
              v44 = v42 + 1;
              if (v43)
              {
                goto LABEL_29;
              }

              v15[2] = v44;
            }

            v13 = v56;
            a3 = v57;
          }

          else
          {
            (*v60)(v8, v4);
            v13 = v24;
          }

          v20 = v63;
          ++v21;
        }

        while (v66 != v21);
      }

      v17 = v55 + 1;

      v9 = v49;
      (*v47)(v13, v49);
      v16 = v48;
      if (v17 == v52)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  return sub_18F093A5C();
}

uint64_t sub_18F03C75C()
{
  result = sub_18F03C77C();
  qword_1EACB9770 = result;
  return result;
}

uint64_t sub_18F03C77C()
{
  v70 = sub_18F09373C();
  v0 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = (&v60 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A8, &qword_18F0ABF70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v60 - v5;
  v77 = sub_18F09346C();
  v7 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EACB7290 != -1)
  {
LABEL_40:
    swift_once();
  }

  v10 = qword_1EACB9768;
  if (!qword_1EACB9768)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);

    return sub_18F093A5C();
  }

  v73 = v6;
  v64 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
  v66 = sub_18F093A5C();
  if (qword_1EACB6D18 != -1)
  {
    swift_once();
  }

  v11 = off_1EACB6D20;
  v12 = off_1EACB6D20 + 64;
  v13 = 1 << *(off_1EACB6D20 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(off_1EACB6D20 + 8);
  v9 = ((v13 + 63) >> 6);
  v63 = (v7 + 4);
  v68 = v0 + 16;
  v61 = v0;
  v67 = (v0 + 8);
  v62 = (v7 + 1);

  v0 = 0;
  v81 = 0;
  v78 = v9;
  v74 = v10;
  v71 = v12;
  v72 = v11;
  while (2)
  {
    v17 = v0;
    while (1)
    {
      while (1)
      {
        if (!v15)
        {
          while (1)
          {
            v0 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v0 >= v9)
            {

              return v66;
            }

            v15 = *&v12[8 * v0];
            ++v17;
            if (v15)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v0 = v17;
LABEL_14:
        v7 = &v60;
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v19 = (v0 << 10) | (16 * v18);
        v20 = (v11[6] + v19);
        v21 = *v20;
        v22 = v20[1];
        v80 = *(v11[7] + v19);
        v82[0] = 46;
        v82[1] = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v16);
        *(&v60 - 2) = v82;
        swift_bridgeObjectRetain_n();

        v76 = v21;
        v23 = v21;
        v24 = v81;
        v25 = sub_18F030044(0x7FFFFFFFFFFFFFFFLL, 1, sub_18F0322E0, (&v60 - 4), v23, v22);
        v6 = v25;
        v81 = v24;
        if (v25[2])
        {
          break;
        }

        v17 = v0;
        v9 = v78;
      }

      v79 = v22;
      v26 = v25[4];
      v27 = v25[5];
      v28 = v73;
      v30 = v25[6];
      v29 = v25[7];

      v6 = MEMORY[0x193AD8710](v26, v27, v30, v29);

      v31 = sub_18F0937BC();
      v7 = v75;
      __swift_storeEnumTagSinglePayload(v75, 1, 1, v31);
      sub_18F09347C();

      sub_18EF82E14(v7, &qword_1EACB9690, &qword_18F0ABB70);
      if (__swift_getEnumTagSinglePayload(v28, 1, v77) != 1)
      {
        break;
      }

      v16 = sub_18EF82E14(v28, &qword_1EACB96A8, &qword_18F0ABF70);
      v17 = v0;
      v12 = v71;
      v11 = v72;
      v9 = v78;
    }

    (*v63)(v64, v28, v77);
    v32 = sub_18F0933BC();
    v33 = *(v32 + 16);
    if (v33)
    {
      v82[0] = MEMORY[0x1E69E7CC0];
      sub_18EFB5B40(0, v33, 0);
      v34 = v82[0];
      v35 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v60 = v32;
      v36 = v32 + v35;
      v80 = *(v61 + 72);
      v65 = *(v61 + 16);
      do
      {
        v38 = v69;
        v37 = v70;
        v65(v69, v36, v70);
        v39 = sub_18F09371C();
        v41 = v40;
        (*v67)(v38, v37);
        v82[0] = v34;
        v43 = *(v34 + 16);
        v42 = *(v34 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_18EFB5B40((v42 > 1), v43 + 1, 1);
          v34 = v82[0];
        }

        *(v34 + 16) = v43 + 1;
        v44 = v34 + 16 * v43;
        *(v44 + 32) = v39;
        *(v44 + 40) = v41;
        v36 += v80;
        --v33;
      }

      while (v33);
      v45 = v34;
    }

    else
    {

      v45 = MEMORY[0x1E69E7CC0];
    }

    v46 = v66;
    swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v46;
    v7 = v76;
    v47 = v79;
    v48 = sub_18EFAF54C();
    if (__OFADD__(*(v46 + 16), (v49 & 1) == 0))
    {
      __break(1u);
      goto LABEL_42;
    }

    v6 = v48;
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9790, &qword_18F0ABF68);
    if ((sub_18F09417C() & 1) == 0)
    {
      v12 = v71;
      v11 = v72;
LABEL_30:
      v53 = v82[0];
      v66 = v82[0];
      if (v50)
      {
        v54 = *(v82[0] + 56);
        v7 = *(v54 + 8 * v6);
        *(v54 + 8 * v6) = v45;

LABEL_34:
        v9 = v78;
        v16 = (*v62)(v64, v77);
        continue;
      }

      *(v82[0] + 8 * (v6 >> 6) + 64) |= 1 << v6;
      v55 = (v53[6] + 16 * v6);
      *v55 = v7;
      v55[1] = v47;
      *(v53[7] + 8 * v6) = v45;
      v56 = v53[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v57)
      {
        v53[2] = v58;
        goto LABEL_34;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    break;
  }

  v51 = sub_18EFAF54C();
  v12 = v71;
  v11 = v72;
  if ((v50 & 1) == (v52 & 1))
  {
    v6 = v51;
    goto LABEL_30;
  }

LABEL_43:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18F03CFD0()
{
  result = sub_18F03CFF0();
  qword_1EACB9778 = result;
  return result;
}

uint64_t sub_18F03CFF0()
{
  v70 = sub_18F09369C();
  v0 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = (&v60 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A0, &unk_18F0ABB80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v60 - v5;
  v77 = sub_18F09362C();
  v7 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EACB7290 != -1)
  {
LABEL_40:
    swift_once();
  }

  v10 = qword_1EACB9768;
  if (!qword_1EACB9768)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);

    return sub_18F093A5C();
  }

  v73 = v6;
  v64 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
  v66 = sub_18F093A5C();
  if (qword_1EACB6D30 != -1)
  {
    swift_once();
  }

  v11 = off_1EACB6D38;
  v12 = off_1EACB6D38 + 64;
  v13 = 1 << *(off_1EACB6D38 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(off_1EACB6D38 + 8);
  v9 = ((v13 + 63) >> 6);
  v63 = (v7 + 4);
  v68 = v0 + 16;
  v61 = v0;
  v67 = (v0 + 8);
  v62 = (v7 + 1);

  v0 = 0;
  v81 = 0;
  v78 = v9;
  v74 = v10;
  v71 = v12;
  v72 = v11;
  while (2)
  {
    v17 = v0;
    while (1)
    {
      while (1)
      {
        if (!v15)
        {
          while (1)
          {
            v0 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v0 >= v9)
            {

              return v66;
            }

            v15 = *&v12[8 * v0];
            ++v17;
            if (v15)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v0 = v17;
LABEL_14:
        v7 = &v60;
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v19 = (v0 << 10) | (16 * v18);
        v20 = (v11[6] + v19);
        v21 = *v20;
        v22 = v20[1];
        v80 = *(v11[7] + v19);
        v82[0] = 46;
        v82[1] = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v16);
        *(&v60 - 2) = v82;
        swift_bridgeObjectRetain_n();

        v76 = v21;
        v23 = v21;
        v24 = v81;
        v25 = sub_18F030044(0x7FFFFFFFFFFFFFFFLL, 1, sub_18EFA5C94, (&v60 - 4), v23, v22);
        v6 = v25;
        v81 = v24;
        if (v25[2])
        {
          break;
        }

        v17 = v0;
        v9 = v78;
      }

      v79 = v22;
      v26 = v25[4];
      v27 = v25[5];
      v28 = v73;
      v30 = v25[6];
      v29 = v25[7];

      v6 = MEMORY[0x193AD8710](v26, v27, v30, v29);

      v31 = sub_18F0937BC();
      v7 = v75;
      __swift_storeEnumTagSinglePayload(v75, 1, 1, v31);
      sub_18F0934AC();

      sub_18EF82E14(v7, &qword_1EACB9690, &qword_18F0ABB70);
      if (__swift_getEnumTagSinglePayload(v28, 1, v77) != 1)
      {
        break;
      }

      v16 = sub_18EF82E14(v28, &qword_1EACB96A0, &unk_18F0ABB80);
      v17 = v0;
      v12 = v71;
      v11 = v72;
      v9 = v78;
    }

    (*v63)(v64, v28, v77);
    v32 = sub_18F0935DC();
    v33 = *(v32 + 16);
    if (v33)
    {
      v82[0] = MEMORY[0x1E69E7CC0];
      sub_18EFB5B40(0, v33, 0);
      v34 = v82[0];
      v35 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v60 = v32;
      v36 = v32 + v35;
      v80 = *(v61 + 72);
      v65 = *(v61 + 16);
      do
      {
        v38 = v69;
        v37 = v70;
        v65(v69, v36, v70);
        v39 = sub_18F09367C();
        v41 = v40;
        (*v67)(v38, v37);
        v82[0] = v34;
        v43 = *(v34 + 16);
        v42 = *(v34 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_18EFB5B40((v42 > 1), v43 + 1, 1);
          v34 = v82[0];
        }

        *(v34 + 16) = v43 + 1;
        v44 = v34 + 16 * v43;
        *(v44 + 32) = v39;
        *(v44 + 40) = v41;
        v36 += v80;
        --v33;
      }

      while (v33);
      v45 = v34;
    }

    else
    {

      v45 = MEMORY[0x1E69E7CC0];
    }

    v46 = v66;
    swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v46;
    v7 = v76;
    v47 = v79;
    v48 = sub_18EFAF54C();
    if (__OFADD__(*(v46 + 16), (v49 & 1) == 0))
    {
      __break(1u);
      goto LABEL_42;
    }

    v6 = v48;
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9790, &qword_18F0ABF68);
    if ((sub_18F09417C() & 1) == 0)
    {
      v12 = v71;
      v11 = v72;
LABEL_30:
      v53 = v82[0];
      v66 = v82[0];
      if (v50)
      {
        v54 = *(v82[0] + 56);
        v7 = *(v54 + 8 * v6);
        *(v54 + 8 * v6) = v45;

LABEL_34:
        v9 = v78;
        v16 = (*v62)(v64, v77);
        continue;
      }

      *(v82[0] + 8 * (v6 >> 6) + 64) |= 1 << v6;
      v55 = (v53[6] + 16 * v6);
      *v55 = v7;
      v55[1] = v47;
      *(v53[7] + 8 * v6) = v45;
      v56 = v53[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v57)
      {
        v53[2] = v58;
        goto LABEL_34;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    break;
  }

  v51 = sub_18EFAF54C();
  v12 = v71;
  v11 = v72;
  if ((v50 & 1) == (v52 & 1))
  {
    v6 = v51;
    goto LABEL_30;
  }

LABEL_43:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18F03D844()
{
  result = sub_18F03D864();
  qword_1EACB9780 = result;
  return result;
}

uint64_t sub_18F03D864()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9788, &qword_18F0ABF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F09BCC0;
  *(inited + 32) = 0x5F796D6D75645FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_18F093A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
  return sub_18F093A5C();
}

_BYTE *storeEnumTagSinglePayload for AssistantPrebuiltMapping(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t LNActionMetadata._mangledTypeNameForAppIntentsOnly.getter()
{
  v1 = [v0 mangledTypeName];
  v2 = sub_18F093B8C();

  return v2;
}

uint64_t sub_18F03DA90(void *a1)
{
  v1 = [a1 iconSystemImageName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F093B8C();

  return v3;
}

unint64_t sub_18F03DAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1EACB7A00;
  if (!qword_1EACB7A00)
  {
    type metadata accessor for LNQueryCapabilities(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A00);
  }

  return result;
}

uint64_t LNStaticDeferredLocalizedString._dictionaryRepresentation()()
{
  v29[4] = *MEMORY[0x1E69E9840];
  v1 = sub_18F0931CC();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22();
  v7 = v6 - v5;
  v8 = [v0 localizedStringResource];
  if (v8)
  {
    v9 = v8;
    v29[3] = sub_18F03DE2C();
    v10 = v9;
    sub_18F09319C();
    sub_18F0930BC();
    swift_allocObject();
    sub_18F0930AC();
    OUTLINED_FUNCTION_3_11();
    sub_18F03E904(v11, v12);
    sub_18F09308C();

    v13 = objc_opt_self();
    v14 = OUTLINED_FUNCTION_7_5();
    sub_18EF844C4(v14, v15);
    OUTLINED_FUNCTION_7_5();
    v16 = sub_18F0932DC();
    v29[0] = 0;
    v17 = [v13 JSONObjectWithData:v16 options:0 error:v29];

    if (v17)
    {
      v18 = v29[0];
      sub_18F093FAC();
      v19 = OUTLINED_FUNCTION_7_5();
      sub_18EF9A4AC(v19, v20);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97A0, &qword_18F0AC008);
      if (swift_dynamicCast())
      {
        (*(v3 + 8))(v7, v1);
        v21 = OUTLINED_FUNCTION_7_5();
        sub_18EF9A4AC(v21, v22);

        return v28;
      }
    }

    else
    {
      v24 = v29[0];
      v25 = sub_18F09318C();

      swift_willThrow();
      v26 = OUTLINED_FUNCTION_7_5();
      sub_18EF9A4AC(v26, v27);
    }

    OUTLINED_FUNCTION_4_12();
  }

  else
  {
    OUTLINED_FUNCTION_4_12();
  }

  OUTLINED_FUNCTION_2_12();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

unint64_t sub_18F03DE2C()
{
  result = qword_1ED5FD160;
  if (!qword_1ED5FD160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FD160);
  }

  return result;
}

uint64_t LNStaticDeferredLocalizedString.asLocalizedStringResourceJSON(encoder:)()
{
  v2 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_22();
  v5 = v4 - v3;
  sub_18F0931CC();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22();
  v7 = [v0 localizedStringResource];
  if (v7)
  {
    v8 = v7;
    sub_18F03DE2C();
    v9 = v8;
    sub_18F09319C();
    OUTLINED_FUNCTION_3_11();
    sub_18F03E904(v10, v11);
    v12 = sub_18F09308C();
    if (v1 || (v14 = v12, v15 = v13, sub_18F093BBC(), v5 = sub_18F093BAC(), v17 = v16, sub_18EF9A4AC(v14, v15), v17))
    {
      v18 = OUTLINED_FUNCTION_5_9();
      v19(v18);

      return v5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_2_12();
  }

  result = sub_18F0941AC();
  __break(1u);
  return result;
}

void __swiftcall LNStaticDeferredLocalizedString.init(localizedStringResourceJSON:)(LNStaticDeferredLocalizedString *__return_ptr retstr, Swift::String localizedStringResourceJSON)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_18F0931CC();
  OUTLINED_FUNCTION_7();
  v27 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22();
  v10 = v9 - v8;
  v11 = sub_18F093BCC();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_22();
  v17 = v16 - v15;
  sub_18F093BBC();
  v18 = sub_18F093B9C();
  v20 = v19;

  (*(v13 + 8))(v17, v11);
  if (v20 >> 60 != 15)
  {
    sub_18F09302C();
    swift_allocObject();
    sub_18F09301C();
    OUTLINED_FUNCTION_6_8(&unk_1ED5FF4C0);
    v21 = v18;
    sub_18F09300C();

    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    v22 = v27;
    (*(v27 + 32))(v10, v4, v5);
    sub_18F0931AC();
    sub_18F03DE2C();
    if (swift_dynamicCast())
    {
      v23 = v28;
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLocalizedStringResource_];
      sub_18EF9A498(v21, v20);

      (*(v22 + 8))(v10, v5);
      return;
    }

    (*(v22 + 8))(v10, v5);
    sub_18EF9A498(v21, v20);
  }

  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v25 = sub_18F093B5C();
  [v24 initWithKey:v25 defaultValue:0 table:0 bundleURL:0];
}

void __swiftcall LNStaticDeferredLocalizedString.init(dictionary:)(LNStaticDeferredLocalizedString *__return_ptr retstr, Swift::OpaquePointer dictionary)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F093A3C();

  [v2 _initWithDictionary_];
}

id LNStaticDeferredLocalizedString.init(dictionary:)(uint64_t a1)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_18F0931CC();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_22();
  v10 = v9 - v8;
  v11 = objc_opt_self();
  v12 = sub_18F093A3C();
  v29[0] = 0;
  v13 = [v11 dataWithJSONObject:v12 options:0 error:v29];

  v14 = v29[0];
  if (v13)
  {
    v15 = sub_18F09330C();
    v17 = v16;

    sub_18F09302C();
    swift_allocObject();
    sub_18F09301C();
    OUTLINED_FUNCTION_6_8(&unk_1ED5FF4C0);
    sub_18F09300C();

    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    (*(v6 + 32))(v10, v3, v4);
    sub_18F0931AC();
    sub_18F03DE2C();
    if (swift_dynamicCast())
    {

      v18 = v28;
      v19 = [v27 initWithLocalizedStringResource_];
      sub_18EF9A4AC(v15, v17);

      v20 = OUTLINED_FUNCTION_5_9();
      v21(v20);
      return v19;
    }

    v25 = OUTLINED_FUNCTION_5_9();
    v26(v25);
    sub_18EF9A4AC(v15, v17);
  }

  else
  {
    v23 = v14;
    v24 = sub_18F09318C();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_4_12();
  v27 = 58;
  OUTLINED_FUNCTION_2_12();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

uint64_t sub_18F03E904(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18F0931CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F03E948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18F03E9B0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F09324C();
  v4 = [v2 initWithContentsOfURL_];

  sub_18F0932BC();
  OUTLINED_FUNCTION_36();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t FrameworkRecord.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier);

  return v1;
}

uint64_t FrameworkRecord.hostBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_hostBundleIdentifier);

  return v1;
}

uint64_t sub_18F03EAE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_18F0932BC();
  OUTLINED_FUNCTION_36();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

id FrameworkRecord.effectiveBundleIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier);
  v5 = *(v0 + OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier + 8);
  v6 = OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleURL;
  v7 = sub_18F0932BC();
  OUTLINED_FUNCTION_36();
  (*(v8 + 16))(v3, v0 + v6, v7);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v7);
  v9 = objc_allocWithZone(LNEffectiveBundleIdentifier);

  return sub_18EF7FCF0(3, v4, v5, v3);
}

uint64_t FrameworkRecord.targetBundleIdentifiers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_targetBundleIdentifiers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *static FrameworkRecord.from(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EACB6B18 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_0_14(&qword_1EACB6B18);
  }

  v4 = 0;
  v5 = off_1EACB6B20;
  v6 = 1 << *(off_1EACB6B20 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = off_1EACB6B20 + 64;
  v9 = v7 & *(off_1EACB6B20 + 8);
  v10 = (v6 + 63) >> 6;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          return 0;
        }

        v9 = *&v8[8 * v11];
        ++v4;
        if (v9)
        {
          v4 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_10:
    v12 = *(v5[7] + ((v4 << 9) | (8 * __clz(__rbit64(v9)))));
    if (*&v12[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier] == a1 && *&v12[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier + 8] == a2)
    {
      break;
    }

    v9 &= v9 - 1;
  }

  while ((sub_18F09444C() & 1) == 0);
  v14 = v12;
  return v12;
}

void *static FrameworkRecord.from(frameworkURL:)()
{
  if (qword_1EACB6B18 != -1)
  {
    OUTLINED_FUNCTION_0_14(&qword_1EACB6B18);
  }

  v0 = off_1EACB6B20;
  if (!*(off_1EACB6B20 + 2))
  {
    return 0;
  }

  v1 = sub_18F010530();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = *(v0[7] + 8 * v1);
  v4 = v3;
  return v3;
}

id sub_18F03EEF4()
{
  result = sub_18F03EF14();
  off_1EACB6B20 = result;
  return result;
}

id sub_18F03EF14()
{
  v50[1] = *MEMORY[0x1E69E9840];
  v0 = sub_18F0932BC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v41 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v12 = [objc_opt_self() defaultManager];
  sub_18F09323C();
  v13 = sub_18F09324C();
  v15 = v1 + 8;
  v14 = *(v1 + 8);
  v14(v11, v0);
  v50[0] = 0;
  v16 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:0 options:0 error:v50];

  v17 = v50[0];
  if (!v16)
  {
    v39 = v50[0];
    v40 = sub_18F09318C();

    swift_willThrow();
    type metadata accessor for FrameworkRecord(0);
    sub_18F0408AC(&qword_1ED5FE5D0, MEMORY[0x1E6968FC0]);
    return sub_18F093A5C();
  }

  v47 = v14;
  v43 = v6;
  v18 = sub_18F093DCC();
  v19 = v17;

  v20 = 0;
  v48 = *(v18 + 16);
  v49 = v1 + 16;
  v44 = (v1 + 32);
  v46 = MEMORY[0x1E69E7CC0];
  while (v48 != v20)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v21 = v15;
    v22 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v23 = *(v1 + 72);
    (*(v1 + 16))(v9, v18 + v22 + v23 * v20, v0);
    if (sub_18F0931EC())
    {
      if (sub_18F09320C() == 0x7473696C70 && v24 == 0xE500000000000000)
      {
      }

      else
      {
        v26 = sub_18F09444C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v42 = *v44;
      v42(v45, v9, v0);
      v27 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50[0] = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18F00F748();
        v27 = v50[0];
      }

      v29 = v27[2];
      v30 = (v29 + 1);
      if (v29 >= v27[3] >> 1)
      {
        v46 = (v29 + 1);
        sub_18F00F748();
        v30 = v46;
        v27 = v50[0];
      }

      ++v20;
      v27[2] = v30;
      v46 = v27;
      v42(v27 + v22 + v29 * v23, v45, v0);
      v15 = v21;
    }

    else
    {
LABEL_11:
      v15 = v21;
      v47(v9, v0);
      ++v20;
    }
  }

  type metadata accessor for FrameworkRecord(0);
  sub_18F0408AC(&qword_1ED5FE5D0, MEMORY[0x1E6968FC0]);
  v31 = 0;
  v50[0] = sub_18F093A5C();
  v33 = v46;
  v32 = v47;
  v34 = v46[2];
  v35 = v43;
  while (v34 != v31)
  {
    if (v31 >= v33[2])
    {
      goto LABEL_25;
    }

    v36 = (*(v1 + 16))(v35, v33 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v31, v0);
    v37 = MEMORY[0x193AD91F0](v36);
    sub_18F03F450(v35, v50);
    ++v31;
    objc_autoreleasePoolPop(v37);
    v32(v35, v0);
  }

  return v50[0];
}

void sub_18F03F450(char *a1, void *a2)
{
  v3 = v2;
  v79 = a2;
  isUniquelyReferenced_nonNull_native = sub_18F0932BC();
  v6 = *(isUniquelyReferenced_nonNull_native - 8);
  v7 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v84 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v87 = v71 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v71 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v71 - v14;
  if (qword_1ED5FEEB8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v16 = sub_18F093A2C();
  v17 = __swift_project_value_buffer(v16, qword_1ED60C1C0);
  v80 = *(v6 + 2);
  v81 = v6 + 16;
  v80(v15, a1, isUniquelyReferenced_nonNull_native);
  v85 = v17;
  v18 = sub_18F093A0C();
  v19 = sub_18F093EDC();
  v20 = os_log_type_enabled(v18, v19);
  v83 = isUniquelyReferenced_nonNull_native;
  v76 = v6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v73 = v3;
    v23 = v22;
    *&v90[0] = v22;
    *v21 = 136315138;
    sub_18F0408AC(&qword_1ED5FEC20, MEMORY[0x1E6968FE0]);
    v24 = sub_18F0943FC();
    v86 = v13;
    v25 = a1;
    v27 = v26;
    v82 = *(v6 + 1);
    v82(v15, v83);
    v28 = sub_18F0462AC(v24, v27, v90);
    a1 = v25;
    v13 = v86;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_18EF7E000, v18, v19, "Found framework record: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v29 = v23;
    v3 = v73;
    MEMORY[0x193AD9AF0](v29, -1, -1);
    v30 = v21;
    isUniquelyReferenced_nonNull_native = v83;
    MEMORY[0x193AD9AF0](v30, -1, -1);
  }

  else
  {

    v82 = *(v6 + 1);
    v82(v15, isUniquelyReferenced_nonNull_native);
  }

  sub_18F034500();
  v80(v13, a1, isUniquelyReferenced_nonNull_native);
  v31 = sub_18F03E9B0(v13);
  if (!v31)
  {
    return;
  }

  v32 = v31;
  *&v88 = 0x726F77656D617246;
  *(&v88 + 1) = 0xEA0000000000736BLL;
  v33 = [v31 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v33)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v34 = v76;
  v90[0] = v88;
  v90[1] = v89;
  if (!*(&v89 + 1))
  {

    sub_18F021E3C(v90);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:

    return;
  }

  v35 = v91;
  v36 = *(v91 + 16);
  if (!v36)
  {

    goto LABEL_36;
  }

  v72 = v32;
  v73 = v3;
  v37 = objc_opt_self();
  v77 = v34 + 8;
  v78 = v37;
  v71[1] = v35;
  v3 = (v35 + 40);
  *&v38 = 136315138;
  v75 = v38;
  *&v38 = 136446210;
  v74 = v38;
  while (1)
  {
    v40 = *(v3 - 1);
    v39 = *v3;
    swift_bridgeObjectRetain_n();
    v41 = sub_18F093A0C();
    v42 = sub_18F093EDC();

    v43 = os_log_type_enabled(v41, v42);
    v86 = v36;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v90[0] = v45;
      *v44 = v75;
      *(v44 + 4) = sub_18F0462AC(v40, v39, v90);
      _os_log_impl(&dword_18EF7E000, v41, v42, "Registering framework from: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x193AD9AF0](v45, -1, -1);
      MEMORY[0x193AD9AF0](v44, -1, -1);
    }

    sub_18F09323C();
    v46 = sub_18F09324C();
    v15 = [v78 ln:v46 uniqueBundleWithURL:?];

    if (!v15)
    {
      goto LABEL_22;
    }

    v47 = objc_allocWithZone(type metadata accessor for FrameworkRecord(0));
    v6 = v15;
    v48 = FrameworkRecord.init(_:ownerBundleIdentifier:appIntentsSupportedOnly:)(v6, 0, 0, 1);
    if (!v48)
    {

LABEL_22:

      v58 = sub_18F093A0C();
      v59 = sub_18F093ECC();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v90[0] = v61;
        *v60 = v74;
        v62 = sub_18F0462AC(v40, v39, v90);

        *(v60 + 4) = v62;
        isUniquelyReferenced_nonNull_native = v83;
        _os_log_impl(&dword_18EF7E000, v58, v59, "Failed to create framework record for: %{public}s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x193AD9AF0](v61, -1, -1);
        MEMORY[0x193AD9AF0](v60, -1, -1);
      }

      else
      {
      }

      v82(v87, isUniquelyReferenced_nonNull_native);
      goto LABEL_32;
    }

    v49 = v48;

    a1 = v84;
    v80(v84, v87, isUniquelyReferenced_nonNull_native);
    v13 = v49;
    v50 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v90[0] = *v50;
    v51 = *&v90[0];
    *v50 = 0x8000000000000000;
    v52 = sub_18F010530();
    if (__OFADD__(*(v51 + 16), (v53 & 1) == 0))
    {
      __break(1u);
      goto LABEL_39;
    }

    v54 = v52;
    v55 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97B8, &qword_18F0AC088);
    if (sub_18F09417C())
    {
      v56 = sub_18F010530();
      isUniquelyReferenced_nonNull_native = v83;
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_41;
      }

      v54 = v56;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v83;
    }

    v63 = *&v90[0];
    if ((v55 & 1) == 0)
    {
      break;
    }

    v64 = *(*&v90[0] + 56);
    v65 = *(v64 + 8 * v54);
    *(v64 + 8 * v54) = v13;

    v66 = v13;
    v13 = v65;
LABEL_31:

    v70 = v82;
    v82(v84, isUniquelyReferenced_nonNull_native);
    v70(v87, isUniquelyReferenced_nonNull_native);
    *v79 = v63;

LABEL_32:
    v3 += 2;
    v36 = v86 - 1;
    if (v86 == 1)
    {

      return;
    }
  }

  *(*&v90[0] + 8 * (v54 >> 6) + 64) |= 1 << v54;
  v80((v63[6] + *(v76 + 9) * v54), v84, isUniquelyReferenced_nonNull_native);
  *(v63[7] + 8 * v54) = v13;
  v67 = v63[2];
  v68 = __OFADD__(v67, 1);
  v69 = v67 + 1;
  if (!v68)
  {
    v63[2] = v69;
    v66 = v6;
    goto LABEL_31;
  }

  __break(1u);
LABEL_41:
  sub_18F0944AC();
  __break(1u);
}

id FrameworkRecord.__allocating_init(_:ownerBundleIdentifier:appIntentsSupportedOnly:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = objc_allocWithZone(v4);
  return FrameworkRecord.init(_:ownerBundleIdentifier:appIntentsSupportedOnly:)(a1, a2, a3, v5);
}

uint64_t static FrameworkRecord.enumerated.getter()
{
  if (qword_1EACB6B18 != -1)
  {
    OUTLINED_FUNCTION_0_14(&qword_1EACB6B18);
  }
}

id FrameworkRecord.init(_:ownerBundleIdentifier:appIntentsSupportedOnly:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v55 = a3;
  v52 = a2;
  ObjectType = swift_getObjectType();
  v9 = sub_18F0932BC();
  v54 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v49 - v15;
  v16 = OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_targetBundleIdentifiers;
  *&v5[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_targetBundleIdentifiers] = 0;
  v17 = MEMORY[0x193AD91F0](v14);
  sub_18F040370(a1, v60);
  objc_autoreleasePoolPop(v17);
  if ((LOBYTE(v60[0]) == 2 || (v60[0] & 1) == 0) && (a4 & 1) != 0 || (v18 = sub_18EF7FDF8(a1), !v19))
  {

LABEL_9:

    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = v19;
  v49 = v18;
  v51 = ObjectType;
  v21 = MEMORY[0x193AD91F0]();
  sub_18F040460(a1, v60);
  objc_autoreleasePoolPop(v21);
  v22 = *(&v60[0] + 1);
  if (*(&v60[0] + 1))
  {
    v23 = *&v60[0];
    v50 = objc_opt_self();
    *&v60[0] = 0;
    *(&v60[0] + 1) = 0xE000000000000000;
    sub_18F09406C();

    *&v60[0] = 0xD000000000000022;
    *(&v60[0] + 1) = 0x800000018F0B0890;
    MEMORY[0x193AD8780](v23, v22);

    MEMORY[0x193AD8780](0x6F77656D6172662ELL, 0xEA00000000006B72);
    v24 = sub_18F093B5C();

    v25 = [v50 ln:v24 uniqueBundleWithPath:?];

    if (!v25)
    {

LABEL_16:

      goto LABEL_9;
    }
  }

  else
  {
    v25 = a1;
  }

  v28 = sub_18F093B5C();
  v29 = sub_18F0406E0(0x74636172747865, 0xE700000000000000, 0x64736E6F69746361, 0xEB00000000617461, v28, v25);

  if (!v29)
  {

    goto LABEL_16;
  }

  sub_18F09327C();

  v50 = *(v54 + 32);
  (v50)(v53, v13, v9);
  v30 = v55;
  if (v55)
  {

    v20 = v30;
    v31 = v52;
  }

  else
  {
    v31 = v49;
  }

  v32 = &v5[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier];
  *v32 = v31;
  v32[1] = v20;
  v33 = sub_18EF7FDF8(v25);
  v34 = &v5[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_hostBundleIdentifier];
  *v34 = v33;
  v34[1] = v35;
  v36 = [v25 bundleURL];
  sub_18F09327C();

  v37 = OUTLINED_FUNCTION_2_13(OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleURL);
  v38 = v50;
  (v50)(v37);
  v39 = [a1 bundleURL];
  sub_18F09327C();

  v40 = OUTLINED_FUNCTION_2_13(OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_frameworkURL);
  v38(v40);
  v42 = v53;
  v41 = v54;
  v43 = OUTLINED_FUNCTION_2_13(OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_metadataURL);
  v44(v43);
  v45 = sub_18F093B5C();
  v46 = [a1 objectForInfoDictionaryKey_];

  if (v46)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();

    (*(v41 + 8))(v42, v9);
  }

  else
  {
    (*(v41 + 8))(v42, v9);

    v58 = 0u;
    v59 = 0u;
  }

  v47 = v51;
  v60[0] = v58;
  v60[1] = v59;
  if (*(&v59 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    if (swift_dynamicCast())
    {
      v48 = v56;
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    sub_18F021E3C(v60);
    v48 = 0;
  }

  swift_beginAccess();
  *&v5[v16] = v48;

  v57.receiver = v5;
  v57.super_class = v47;
  v26 = objc_msgSendSuper2(&v57, sel_init);

  return v26;
}

uint64_t sub_18F040370@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_18F093B5C();
  v5 = [a1 objectForInfoDictionaryKey_];

  if (v5)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    result = sub_18F021E3C(v9);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a2 = 2;
  }

  return result;
}

uint64_t sub_18F040460@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_18F093B5C();
  v5 = [a1 objectForInfoDictionaryKey_];

  if (v5)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    result = sub_18F021E3C(v9);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

id FrameworkRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FrameworkRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18F0406E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_18F093B5C();

  v9 = sub_18F093B5C();

  v10 = [a6 URLForResource:v8 withExtension:v9 subdirectory:a5];

  return v10;
}

uint64_t type metadata accessor for FrameworkRecord(uint64_t a1)
{
  result = qword_1EACB71C0;
  if (!qword_1EACB71C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F0407D0(uint64_t a1)
{
  result = sub_18F0932BC();
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

uint64_t sub_18F0408AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18F0932BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F04092C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_18F041644(a1, sub_18EFBB41C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_18F0409B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t), __CFString *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v93 = a8;
  v99 = a7;
  v92 = a6;
  v98 = a5;
  v100 = a4;
  v94 = a3;
  v102 = sub_18F0939FC();
  OUTLINED_FUNCTION_7();
  v89 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_0_3();
  v101 = v14;
  v97 = sub_18F0937FC();
  OUTLINED_FUNCTION_7();
  v90 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_0_3();
  v91 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97C0, &qword_18F0AC090);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v82 - v19;
  v21 = sub_18F09385C();
  OUTLINED_FUNCTION_7();
  v23 = v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v82 - v28;
  sub_18F0936FC();
  if (v109)
  {
    sub_18EF914D4(&v107, &v111);
    sub_18EFB6E2C(&v111, &v107);
    v30 = a2;
    v31 = @"LNValueTypeSpecificMetadataKeyDefaultValue";
    v32 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v105 = v32;
    sub_18EFB6E88(&v107, v31, isUniquelyReferenced_nonNull_native);

    a2 = v30;
    v34 = v105;
    __swift_destroy_boxed_opaque_existential_1Tm(&v111);
  }

  else
  {
    sub_18EF82E14(&v107, &qword_1EACB9180, &qword_18F09BD30);
    v34 = MEMORY[0x1E69E7CC8];
  }

  sub_18F0936EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_18EF82E14(v20, &qword_1EACB97C0, &qword_18F0AC090);
  }

  else
  {
    v95 = a1;
    v87 = a2;
    v88 = v9;
    (*(v23 + 32))(v29, v20, v21);
    type metadata accessor for LNValueTypeSpecificMetadataKey(0, v35, v36, v37);
    sub_18EFBB284(v38, v39, v40, v41);

    v82 = sub_18F093A5C();
    (*(v23 + 16))(v27, v29, v21);
    v42 = (*(v23 + 88))(v27, v21) == *MEMORY[0x1E698ACB0];
    v86 = v29;
    if (!v42)
    {
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_18F09406C();
      MEMORY[0x193AD8780](0xD000000000000010, 0x800000018F0B0A10);
      sub_18F09414C();
      result = sub_18F0941AC();
      __break(1u);
      return result;
    }

    v43 = *(v23 + 8);
    v84 = v23 + 8;
    v85 = v43;
    v43(v27, v21);
    v96 = v34;
    v44 = sub_18EFB6CA8();
    v45 = v92;
    *&v111 = v98;
    *(&v111 + 1) = v92;
    v83 = v21;
    v46 = v93;
    v112 = v99;
    v113 = v93;
    v114 = 5;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v47 = @"LNValueTypeMetadataKeyBoolTrueDisplayName";
    v48 = sub_18F0937AC();
    v50 = v49;
    v90 = *(v90 + 16);
    v51 = v91;
    (v90)(v91, v100, v97);

    v52 = OUTLINED_FUNCTION_3_12(&v111, v48, v50);
    v109 = v44;
    *&v107 = v52;
    sub_18EF914D4(&v107, &v105);
    v53 = v82;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *&v104[0] = v53;
    sub_18EFB6E88(&v105, v47, v54);

    v55 = *&v104[0];
    *&v107 = v98;
    *(&v107 + 1) = v45;
    v108 = v99;
    v109 = v46;
    v110 = 6;
    v56 = @"LNValueTypeMetadataKeyBoolFalseDisplayName";
    v57 = sub_18F0937AC();
    v59 = v58;
    (v90)(v51, v100, v97);

    v60 = OUTLINED_FUNCTION_3_12(&v107, v57, v59);
    v106 = v44;
    *&v105 = v60;
    sub_18EF914D4(&v105, v104);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v55;
    sub_18EFB6E88(v104, v56, v61);

    v34 = sub_18F04092C(v103, v96);
    v85(v86, v83);
  }

  v62 = sub_18F09370C();
  if (v62)
  {
    v63 = v62;
    v64 = @"LNValueTypeMetadataKeyFileSupportedTypes";
    v65 = *(v62 + 16);
    if (v65)
    {
      v96 = v34;
      *&v105 = MEMORY[0x1E69E7CC0];
      v98 = @"LNValueTypeMetadataKeyFileSupportedTypes";
      v66 = @"LNValueTypeMetadataKeyFileSupportedTypes";
      sub_18EFB5B40(0, v65, 0);
      v67 = v105;
      v100 = *(v89 + 16);
      v68 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v97 = v63;
      v69 = v63 + v68;
      v99 = *(v89 + 72);
      v70 = (v89 + 8);
      do
      {
        v71 = v101;
        v72 = v102;
        v100(v101, v69, v102);
        v73 = sub_18F0939DC();
        v75 = v74;
        (*v70)(v71, v72);
        *&v105 = v67;
        v77 = *(v67 + 16);
        v76 = *(v67 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_18EFB5B40((v76 > 1), v77 + 1, 1);
          v67 = v105;
        }

        *(v67 + 16) = v77 + 1;
        v78 = v67 + 16 * v77;
        *(v78 + 32) = v73;
        *(v78 + 40) = v75;
        v69 += v99;
        --v65;
      }

      while (v65);

      v34 = v96;
      v64 = v98;
    }

    else
    {
      v79 = @"LNValueTypeMetadataKeyFileSupportedTypes";

      v67 = MEMORY[0x1E69E7CC0];
    }

    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    *&v105 = v67;
    sub_18EF914D4(&v105, v104);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v34;
    sub_18EFB6E88(v104, v64, v80);

    return v103;
  }

  return v34;
}

void sub_18F041268(uint64_t a1, void *a2, char a3)
{
  sub_18EFB9084(a2);
  OUTLINED_FUNCTION_0_16();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v5;
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8898, &qword_18F0A1458);
  if ((sub_18F09417C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_18EFB9084(a2);
  if ((v11 & 1) != (v6 & 1))
  {
LABEL_13:
    type metadata accessor for LNPlatformName(0, v6, v7, v8);
    sub_18F0944AC();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v13 = *v3;
  if (v11)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v10);
    *(v14 + 8 * v10) = a1;
  }

  else
  {
    sub_18F0415B8(v10, a2, a1, v13);

    v16 = a2;
  }
}

uint64_t sub_18F041388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_14(a1, a2, a3);
  OUTLINED_FUNCTION_0_16();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9148, &qword_18F0AA0C8);
  if ((OUTLINED_FUNCTION_6_9(v10) & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_18EFAF54C();
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_18F0944AC();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  if (v9)
  {
    v13 = *(*v4 + 56) + 80 * v8;

    return sub_18F023540(v3, v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_10();
    sub_18EFB5F54(v15, v16, v17, v18, v19);
  }
}

id sub_18F041480(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  sub_18EFB9084(a3);
  OUTLINED_FUNCTION_0_16();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v7;
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97D0, &qword_18F0AC0A0);
  if ((sub_18F09417C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_18EFB9084(a3);
  if ((v13 & 1) != (v8 & 1))
  {
LABEL_13:
    type metadata accessor for LNPlatformName(0, v8, v9, v10);
    result = sub_18F0944AC();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v15 = *v4;
  if (v13)
  {
    v16 = (v15[7] + 16 * v12);
    *v16 = a1;
    v16[1] = a2;
  }

  else
  {
    sub_18F0415FC(v12, a3, a1, a2, v15);

    return a3;
  }
}

unint64_t sub_18F0415B8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_18F0415FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_18F041644(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_18EFAF5BC(v32, a1, a2, a3);
  v28 = v32[0];
  v29 = v32[1];
  v30 = v32[2];
  v31 = v33;

  while (1)
  {
    sub_18EFBB2DC(&v26);
    v7 = v26;
    if (!v26)
    {
      sub_18EFAE608(v28);
    }

    sub_18EF914D4(&v27, v25);
    v8 = *a5;
    v12 = sub_18EFB9084(v7);
    v13 = v8[2];
    v14 = (v9 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v15 = v9;
    if (v8[3] >= v13 + v14)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97C8, &qword_18F0AC098);
        sub_18F09418C();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_18EFA4264();
      v16 = sub_18EFB9084(v7);
      if ((v15 & 1) != (v9 & 1))
      {
        goto LABEL_18;
      }

      v12 = v16;
      if (v15)
      {
LABEL_10:
        v17 = *a5;
        sub_18EFB6E2C(v25, v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);

        v18 = (v17[7] + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        sub_18EF914D4(v24, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v19[6] + 8 * v12) = v7;
    sub_18EF914D4(v25, (v19[7] + 32 * v12));
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_17;
    }

    v19[2] = v22;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  type metadata accessor for LNValueTypeSpecificMetadataKey(0, v9, v10, v11);
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.includeLocalizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AE0, &qword_18F0A0C08);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_18F09415C();
  v5 = sub_18F09416C();
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result != 1)
  {
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F0419AC()
{
  v1 = sub_18F0937EC();
  OUTLINED_FUNCTION_7();
  v179 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  v144 = v4;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v135 - v6;
  v8 = sub_18F09346C();
  OUTLINED_FUNCTION_7();
  v178 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_0();
  v152 = v11;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v135 - v13;
  v173 = sub_18F09362C();
  OUTLINED_FUNCTION_7();
  v175 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_0();
  v162 = v17;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v135 - v19;
  v180 = sub_18F0937FC();
  OUTLINED_FUNCTION_7();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_0();
  v142 = v24;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14_1();
  v143 = v26;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_1();
  v150 = v28;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_1();
  v151 = v30;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14_1();
  v160 = v32;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v33);
  v161 = &v135 - v34;
  v171 = sub_18F0937BC();
  OUTLINED_FUNCTION_7();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  v170 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_18F09356C();
  OUTLINED_FUNCTION_7();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1_0();
  v177 = v42;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v43);
  v172 = &v135 - v44;
  v174 = v0;
  v45 = sub_18F0937CC();
  v176 = *(v45 + 16);
  if (!v176)
  {

    v133 = MEMORY[0x1E69E7CC8];
    v131 = MEMORY[0x1E69E7CC8];
    v132 = MEMORY[0x1E69E7CC8];
LABEL_42:
    type metadata accessor for AssistantPrebuiltLibrary();
    swift_allocObject();
    return AssistantPrebuiltLibrary.init(intents:entities:enums:)(v132, v131, v133);
  }

  v159 = v20;
  v149 = v14;
  v153 = v8;
  v145 = v1;
  v46 = 0;
  v137 = (v179 + 32);
  v138 = 0;
  v136 = (v179 + 8);
  v140 = (v178 + 32);
  v141 = v7;
  v168 = (v22 + 16);
  v169 = (v36 + 8);
  v167 = (v22 + 88);
  v166 = *MEMORY[0x1E698AC90];
  v155 = *MEMORY[0x1E698AC98];
  v146 = *MEMORY[0x1E698AC88];
  v165 = (v22 + 8);
  v139 = (v178 + 8);
  v147 = (v175 + 8);
  v148 = (v175 + 32);
  v158 = (v40 + 32);
  v157 = (v40 + 8);
  v47 = v45 + 32;
  v163 = MEMORY[0x1E69E7CC8];
  v164 = v45;
  v178 = MEMORY[0x1E69E7CC8];
  v154 = MEMORY[0x1E69E7CC8];
  v49 = v172;
  v48 = v173;
  v50 = v156;
  v51 = v45;
  while (1)
  {
    if (v46 >= *(v51 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      sub_18F0944AC();
      __break(1u);
      goto LABEL_48;
    }

    sub_18EFB4B8C(v47, v185);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9230, &qword_18F0AA148);
    if (!swift_dynamicCast())
    {
      break;
    }

    (*v158)(v177, v49, v50);
    sub_18F09378C();
    OUTLINED_FUNCTION_16_3();
    v52 = OUTLINED_FUNCTION_7_6();
    sub_18EFB6958(v52, v53, v54);

    (*v169)(v49, v171);
    v55 = v161;
    sub_18F09376C();
    v56 = v160;
    v57 = v180;
    (*v168)(v160, v55, v180);
    v58 = (*v167)(v56, v57);
    v179 = v47;
    if (v58 == v166)
    {
      v59 = 0;
    }

    else if (v58 == v155)
    {
      v59 = 1;
    }

    else
    {
      if (v58 != v146)
      {
        goto LABEL_48;
      }

      v59 = 2;
    }

    (*v165)(v55, v180);
    BYTE1(v184[8]) = v59;
    v88 = v184[0];
    v89 = v184[1];
    OUTLINED_FUNCTION_3_13();
    v181 = v184[5];
    v182 = v184[6];

    OUTLINED_FUNCTION_2_15();
    MEMORY[0x193AD8780](v88, v89);
    OUTLINED_FUNCTION_2_15();
    v90 = OUTLINED_FUNCTION_4_13();
    MEMORY[0x193AD8780](v90);

    v92 = v181;
    v91 = v182;
    OUTLINED_FUNCTION_18_2(v186);
    sub_18EFB6BF8(v186, v183);
    v93 = v178;
    swift_isUniquelyReferenced_nonNull_native();
    v181 = v93;
    v94 = sub_18EFAF54C();
    if (__OFADD__(*(v93 + 2), (v95 & 1) == 0))
    {
      goto LABEL_44;
    }

    v96 = v94;
    v97 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9138, &qword_18F0AA0C0);
    if (sub_18F09417C())
    {
      v98 = sub_18EFAF54C();
      if ((v97 & 1) != (v99 & 1))
      {
        goto LABEL_45;
      }

      v96 = v98;
    }

    v178 = v181;
    if (v97)
    {
      sub_18F02359C(v186, *(v181 + 7) + 80 * v96);
    }

    else
    {
      sub_18F0418B4(v96, v92, v91, v186, v181);
    }

    v49 = v172;
    v51 = v164;
    v47 = v179;
    (*v157)(v177, v50);
    OUTLINED_FUNCTION_18_2(v183);
    sub_18EFB6C54(v183);
    v48 = v173;
LABEL_39:
    ++v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v185);
    v47 += 40;
    if (v176 == v46)
    {

      v131 = v163;
      v132 = v154;
      v133 = v178;
      goto LABEL_42;
    }
  }

  v60 = v159;
  if (swift_dynamicCast())
  {
    v179 = v47;
    (*v148)(v162, v60, v48);
    sub_18F09378C();
    v61 = v170;
    sub_18F0937DC();
    v62 = OUTLINED_FUNCTION_7_6();
    sub_18EFB5CB4(v62, v63, v61, v64);

    v65 = v169;
    v66 = *v169;
    v67 = v171;
    (*v169)(v61, v171);
    v68 = v184[0];
    v69 = v184[1];

    sub_18F0937DC();
    sub_18EFB3E08(v183);
    v66(v61, v67);
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_15_3();

    OUTLINED_FUNCTION_6_10();
    sub_18F09376C();
    v70 = OUTLINED_FUNCTION_12_3();
    v71(v70);
    v72 = OUTLINED_FUNCTION_11_4();
    v74 = v73(v72);
    if (v74 == v166)
    {
      v75 = 0;
      v50 = v156;
    }

    else
    {
      v50 = v156;
      if (v74 == v155)
      {
        v75 = 1;
      }

      else
      {
        if (v74 != v146)
        {
          goto LABEL_48;
        }

        v75 = 2;
      }
    }

    v119 = OUTLINED_FUNCTION_10_6();
    v120(v119);
    BYTE1(v184[8]) = v75;
    OUTLINED_FUNCTION_3_13();
    v181 = v66;
    v182 = v65;

    OUTLINED_FUNCTION_2_15();
    MEMORY[0x193AD8780](v68, v69);
    OUTLINED_FUNCTION_2_15();
    v121 = OUTLINED_FUNCTION_4_13();
    MEMORY[0x193AD8780](v121);

    v122 = v181;
    v123 = v182;
    OUTLINED_FUNCTION_18_2(v187);
    sub_18EFB62B4(v187, v183);
    v124 = v163;
    swift_isUniquelyReferenced_nonNull_native();
    v183[0] = v124;
    sub_18F041388(v187, v122, v123);

    v163 = v183[0];
    v48 = v173;
    (*v147)(v162, v173);
    OUTLINED_FUNCTION_18_2(v183);
    sub_18EFB677C(v183);
LABEL_38:
    v49 = v172;
    v51 = v164;
    v47 = v179;
    goto LABEL_39;
  }

  v76 = v149;
  v77 = v153;
  if (swift_dynamicCast())
  {
    v179 = v47;
    (*v140)(v152, v76, v77);
    sub_18F09378C();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_7_6();
    sub_18EFB4BF0();

    v78 = *v169;
    v79 = v171;
    (*v169)(v49, v171);
    v80 = v184[0];
    v81 = v184[1];

    sub_18F0937DC();
    sub_18EFB3E08(v183);
    v78(v49, v79);
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_15_3();

    OUTLINED_FUNCTION_6_10();
    sub_18F09376C();
    v82 = OUTLINED_FUNCTION_12_3();
    v83(v82);
    v84 = OUTLINED_FUNCTION_11_4();
    v86 = v85(v84);
    if (v86 == v166)
    {
      v87 = 0;
      v50 = v156;
    }

    else
    {
      v50 = v156;
      if (v86 == v155)
      {
        v87 = 1;
      }

      else
      {
        if (v86 != v146)
        {
          goto LABEL_48;
        }

        v87 = 2;
      }
    }

    v125 = OUTLINED_FUNCTION_10_6();
    v126(v125);
    BYTE1(v184[10]) = v87;
    OUTLINED_FUNCTION_3_13();
    v181 = v78;
    v182 = v49;

    OUTLINED_FUNCTION_2_15();
    MEMORY[0x193AD8780](v80, v81);
    OUTLINED_FUNCTION_2_15();
    v127 = OUTLINED_FUNCTION_4_13();
    MEMORY[0x193AD8780](v127);

    v128 = v181;
    v129 = v182;
    memcpy(__dst, v184, 0x60uLL);
    sub_18EFB5BE0(__dst, v183);
    v130 = v154;
    swift_isUniquelyReferenced_nonNull_native();
    v183[0] = v130;
    sub_18EFB5598(__dst, v128, v129);

    v154 = v183[0];
    (*v139)(v152, v153);
    memcpy(v183, v184, sizeof(v183));
    sub_18EFB5C3C(v183);
    v48 = v173;
    goto LABEL_38;
  }

  v100 = v141;
  v101 = v145;
  if (!swift_dynamicCast())
  {
    goto LABEL_39;
  }

  (*v137)(v144, v100, v101);
  sub_18F09378C();
  sub_18F09379C();
  v102 = *(sub_18F0419AC() + 16);
  v103 = v154;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v184[0] = v103;
  v105 = v102;
  v106 = v138;
  sub_18EFB7024(v105, sub_18EFB76CC, 0, isUniquelyReferenced_nonNull_native, v184);
  if (!v106)
  {

    v154 = v184[0];
    v107 = v163;

    swift_isUniquelyReferenced_nonNull_native();
    v184[0] = v107;
    v108 = OUTLINED_FUNCTION_13_5();
    sub_18EFB7744(v108, v109, v110, v111, v112);

    v163 = v184[0];
    v113 = v178;

    swift_isUniquelyReferenced_nonNull_native();
    v184[0] = v113;
    v114 = OUTLINED_FUNCTION_13_5();
    sub_18EFB7350(v114, v115, v116, v117, v118);
    v138 = 0;

    (*v136)(v144, v145);

    v178 = v184[0];
    v50 = v156;
    goto LABEL_39;
  }

  __break(1u);
LABEL_48:
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_8_5();
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

char *sub_18F0428A4(uint64_t a1, uint64_t *a2, char **a3)
{
  v5 = sub_18F093A2C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  result = *a3;
  if (*a3)
  {
    sub_18F093C7C();
    result = LNLogSubsystem;
    if (LNLogSubsystem)
    {
      sub_18F093C7C();
      return sub_18F093A1C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
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

id sub_18F042998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27[1] = a7;
  v28 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v27 - v13;
  v31 = a4;
  v32 = a5;
  v29 = 46;
  v30 = 0xE100000000000000;
  sub_18EFB30C8();
  v15 = sub_18F093F6C();
  sub_18EFB311C(v15);
  v17 = v16;

  if (v17)
  {
  }

  type metadata accessor for SchemaLocalization();
  sub_18F042E10(a1);

  sub_18F043964(a1);
  v18 = sub_18F093B5C();

  if (a8)
  {
    v19 = sub_18F093B5C();
  }

  else
  {
    v19 = 0;
  }

  v20 = v28;
  sub_18F042CCC(v28);
  v21 = sub_18F093B5C();

  static SchemaLocalization.bundleURL.getter(v14);
  v22 = sub_18F0932BC();
  v23 = 0;
  if (__swift_getEnumTagSinglePayload(v14, 1, v22) != 1)
  {
    v23 = sub_18F09324C();
    (*(*(v22 - 8) + 8))(v14, v22);
  }

  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKey:v18 defaultValue:v19 table:v21 bundleURL:v23];

  sub_18F0937FC();
  OUTLINED_FUNCTION_10_7();
  (*(v25 + 8))(v20);
  return v24;
}

uint64_t static SchemaLocalization.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_18F0934FC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v3 bundleURL];

  sub_18F09327C();
  v5 = sub_18F0932BC();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

uint64_t sub_18F042CCC(uint64_t a1)
{
  sub_18F0937FC();
  OUTLINED_FUNCTION_9_6();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v1);
  v8 = (*(v4 + 88))(v7, v1);
  if (v8 == *MEMORY[0x1E698AC98] || v8 == *MEMORY[0x1E698AC88])
  {
    return 0xD000000000000014;
  }

  (*(v4 + 8))(v7, v1);
  return 0x617A696C61636F4CLL;
}

uint64_t sub_18F042E10(uint64_t a1)
{
  switch(*(a1 + 32))
  {
    case 1:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v1 = v14 | 1;
      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v10 = v9 + 17;
      goto LABEL_9;
    case 3:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      v5 = OUTLINED_FUNCTION_4_14();
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      v3 = OUTLINED_FUNCTION_4_14();
      MEMORY[0x193AD8780](v3);
      OUTLINED_FUNCTION_7_7();
      v1 = 0x706972637365645FLL;
      v2 = 0xEC0000006E6F6974;
      break;
    case 5:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      v15 = OUTLINED_FUNCTION_4_14();
      MEMORY[0x193AD8780](v15);
      OUTLINED_FUNCTION_7_7();
      v13 = "_BOOLean_false_value";
      v1 = 0xD000000000000013;
      goto LABEL_15;
    case 6:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      v16 = OUTLINED_FUNCTION_4_14();
      MEMORY[0x193AD8780](v16);
      OUTLINED_FUNCTION_7_7();
      v13 = "_intent_parameter_";
      v1 = 0xD000000000000014;
      goto LABEL_15;
    case 7:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v10 = v11 + 15;
LABEL_9:
      MEMORY[0x193AD8780](v10, v8 | 0x8000000000000000);
      v12 = sub_18F0943FC();
      MEMORY[0x193AD8780](v12);

      return v20;
    case 8:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v1 = v18 + 17;
      goto LABEL_15;
    case 9:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v5 = v4 - 1;
      v7 = v6 | 0x8000000000000000;
LABEL_7:
      MEMORY[0x193AD8780](v5, v7);
      OUTLINED_FUNCTION_7_7();
      v1 = 0x656C7469745FLL;
      v2 = 0xE600000000000000;
      break;
    case 0xA:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_3_14();
      v1 = v17 + 15;
LABEL_15:
      v2 = v13 | 0x8000000000000000;
      break;
    default:
      OUTLINED_FUNCTION_0_17();
      sub_18F09406C();
      OUTLINED_FUNCTION_8_6();

      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_6_11();
      v1 = 0x5F746E65746E695FLL;
      v2 = 0xED0000656C746974;
      break;
  }

  MEMORY[0x193AD8780](v1, v2);
  return v20;
}

uint64_t static SchemaLocalization.tableForLibraryKey(_:)(uint64_t a1, unint64_t a2)
{
  sub_18F0937FC();
  OUTLINED_FUNCTION_9_6();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9690, &qword_18F0ABB70);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A8, &qword_18F0ABF70);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - v20;
  v47[0] = 45;
  v47[1] = 0xE100000000000000;
  v46 = v47;

  v22 = sub_18F030044(0x7FFFFFFFFFFFFFFFLL, 1, sub_18EFA5C94, v45, a1, a2);
  v23 = v22;
  if (v22[2] != 3)
  {

    return 0x617A696C61636F4CLL;
  }

  v41 = v10;
  v42 = v12;
  v43 = v6;
  v44 = v2;
  v24 = v22[8];
  v25 = v22[9];
  v27 = v22[10];
  v26 = v22[11];

  MEMORY[0x193AD8710](v24, v25, v27, v26);

  if (v23[2])
  {
    v29 = v23[4];
    v30 = v23[5];
    v31 = v23[6];
    v32 = v23[7];

    MEMORY[0x193AD8710](v29, v30, v31, v32);

    sub_18F0934FC();
    swift_allocObject();
    sub_18F0934EC();
    v33 = sub_18F0937BC();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v33);
    sub_18F09347C();

    sub_18F0438EC(v15, &qword_1EACB9690, &qword_18F0ABB70);
    sub_18F04387C(v21, v19);
    v34 = sub_18F09346C();
    if (__swift_getEnumTagSinglePayload(v19, 1, v34) == 1)
    {
      sub_18F0438EC(v19, &qword_1EACB96A8, &qword_18F0ABF70);
      v35 = v42;
      v36 = v43;
      v37 = v44;
      (*(v43 + 104))(v42, *MEMORY[0x1E698AC88], v44);
    }

    else
    {
      v39 = v41;
      sub_18F0933DC();
      (*(*(v34 - 8) + 8))(v19, v34);
      v35 = v42;
      v36 = v43;
      v40 = v39;
      v37 = v44;
      (*(v43 + 32))(v42, v40, v44);
    }

    v38 = sub_18F042CCC(v35);

    (*(v36 + 8))(v35, v37);
    sub_18F0438EC(v21, &qword_1EACB96A8, &qword_18F0ABF70);
    return v38;
  }

  __break(1u);
  return result;
}

id SchemaLocalization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SchemaLocalization.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SchemaLocalization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18F04387C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96A8, &qword_18F0ABF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F0438EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10_7();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_18F0439A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF6 && *(a1 + 33))
    {
      v2 = *a1 + 245;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 0xA)
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

uint64_t sub_18F0439E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

LNContentType __swiftcall LNContentType.init(stringLiteral:)(Swift::String stringLiteral)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_18F093B5C();

  v3 = [v1 initWithContentType_];

  v5 = v3;
  result._contentType = v4;
  result.super.isa = v5;
  return result;
}

unint64_t sub_18F043AE8()
{
  result = qword_1ED5FE1A8;
  if (!qword_1ED5FE1A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FE1A8);
  }

  return result;
}

uint64_t sub_18F043B60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18F043AE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18F043BA8(void *a1)
{
  v1 = sub_18F01289C(a1);
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  result = sub_18EFA0A74(v1);
  if (!result)
  {

    return 0;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AD8BA0](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = [v5 name];
    v2 = sub_18F093B8C();

    return v2;
  }

  __break(1u);
  return result;
}

char *sub_18F043C6C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_18F093A2C();
  OUTLINED_FUNCTION_7();
  v50 = v11;
  v51 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22();
  v53 = v13 - v12;
  v14 = sub_18F0932BC();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v47 = v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v45 - v23;
  v48 = a1;
  v49 = a3;
  v25 = sub_18F0468C0(a1, a2, 1852797802, 0xE400000000000000, a4, a5, a3);
  if (!v25)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = v25;
  sub_18F09327C();

  v45 = v16;
  (*(v16 + 32))(v24, v22, v14);
  v27 = v54;
  sub_18F0932CC();
  v46 = v14;
  if (v27)
  {
    v55 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
    sub_18F093BEC();
    result = LNLogSubsystem;
    v28 = v53;
    if (LNLogSubsystem)
    {
      sub_18F093C7C();
      sub_18F093A1C();

      v29 = v49;
      v30 = sub_18F093A0C();
      v31 = sub_18F093ECC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v54 = v24;
        *v32 = 136315394;
        *(v32 + 4) = sub_18F0462AC(v48, a2, &v55);
        *(v32 + 12) = 2080;
        v33 = [v29 bundleURL];
        v34 = v47;
        sub_18F09327C();

        v35 = sub_18F09321C();
        v37 = v36;
        v38 = v45;
        v39 = v34;
        v40 = v46;
        (*(v45 + 8))(v39, v46);
        v41 = sub_18F0462AC(v35, v37, &v55);

        *(v32 + 14) = v41;
        _os_log_impl(&dword_18EF7E000, v30, v31, "Error trying to read %s.json in bundle - %s", v32, 0x16u);
        swift_arrayDestroy();
        v24 = v54;
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();

        (*(v50 + 8))(v53, v51);
      }

      else
      {

        (*(v50 + 8))(v28, v51);
        v38 = v45;
        v40 = v46;
      }

      swift_willThrow();
      return (*(v38 + 8))(v24, v40);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_18F09302C();
    swift_allocObject();
    sub_18F09301C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9810, &qword_18F0AC3F0);
    sub_18F046968();
    sub_18F09300C();
    (*(v45 + 8))(v24, v46);

    v42 = OUTLINED_FUNCTION_264();
    sub_18EF9A4AC(v42, v43);
    return v55;
  }

  return result;
}

char *sub_18F044138(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a4;
  v42 = a3;
  v43 = a2;
  v5 = sub_18F093A2C();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v35 - v13;
  sub_18F09416C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9800, &qword_18F0AC3E0);
  v15 = sub_18F093A5C();
  v16 = LNAssistantSuggestionPhraseMetadata.asJson(userInfo:)(v15);

  if (!v18)
  {
    v35[0] = v16._countAndFlagsBits;
    v35[1] = 0;
    v36 = v11;
    v37 = v7;
    v38 = v5;
    v39 = a1;
    v19 = [a1 templateKey];
    v20 = sub_18F093B8C();
    v22 = v21;

    v23 = [v40 bundleURL];
    sub_18F09327C();

    v24 = sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
    objc_allocWithZone(LNStaticDeferredLocalizedString);
    v25 = v42;

    v26 = sub_18EFABD08(v20, v22, v43, v25, v14);
    v44 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
    sub_18F093BEC();
    result = LNLogSubsystem;
    if (LNLogSubsystem)
    {
      sub_18F093C7C();
      v27 = v36;
      sub_18F093A1C();

      v28 = v26;
      v29 = sub_18F093A0C();
      v30 = sub_18F093EBC();

      if (os_log_type_enabled(v29, v30))
      {
        OUTLINED_FUNCTION_5_12();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v31 = 136315650;
        *(v31 + 4) = sub_18F0462AC(v43, v25, &v44);
        *(v31 + 12) = 2080;
        v33 = sub_18F0462AC(v35[0], v16._object, &v44);

        *(v31 + 14) = v33;
        *(v31 + 22) = 2112;
        *(v31 + 24) = v28;
        *v32 = v28;
        v34 = v28;
        _os_log_impl(&dword_18EF7E000, v29, v30, "creating assistantSuggestionPhrase with table - %s metadata - %s and phrase - %@", v31, 0x20u);
        sub_18F04681C(v32);
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();
      }

      else
      {
      }

      (*(v37 + 8))(v27, v38);
      sub_18EF825F4(0, &qword_1EACB7750, off_1E72AFF30);
      return sub_18F04455C(v28, v39);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_18F04455C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPhrase:a1 phraseMetadata:a2];

  return v4;
}

void static AssistantSuggestionPhraseProvider.getPhrasesForAssistantDomains(assistantDomainsAndActionsToLoad:phraseResourceBundle:)()
{
  OUTLINED_FUNCTION_260();
  v1 = v0;
  v131 = v2;
  v4 = v3;
  v116 = sub_18F093A2C();
  OUTLINED_FUNCTION_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v107 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v126 = &v100 - v9;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = *(v4 + 64);
  v129 = v4 + 64;
  v12 = 1 << *(v4 + 32);
  v13 = -1;
  v143 = MEMORY[0x1E69E7CC0];
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v128 = (v12 + 63) >> 6;
  v125 = "Unknown ValueType: ";
  v114 = "Metadata/AssistantDomains";
  v115 = v8 + 8;
  v127 = v4;

  v15 = 0;
  v16 = 0;
  *&v17 = 138412290;
  v108 = v17;
  *&v17 = 136315138;
  v106 = v17;
  v117 = v10;
  v124 = v1;
  while (1)
  {
    v18 = v15;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v19 = __clz(__rbit64(v14)) | (v15 << 6);
    v20 = (*(v127 + 48) + 16 * v19);
    v21 = v20[1];
    v22 = *(*(v127 + 56) + 8 * v19);
    v14 &= v14 - 1;
    v119 = *v20;
    v137 = v119;
    v138 = v21;
    v23 = sub_18EFB30C8();
    v133 = v21;

    v135 = v22;

    v118 = v23;
    v24 = sub_18F093F7C();
    v26 = sub_18F043C6C(v24, v25, v131, 0xD000000000000029, v125 | 0x8000000000000000);
    if (v16)
    {

LABEL_58:
      v87 = v16;
      v137 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
      OUTLINED_FUNCTION_10_8();
      sub_18F093BEC();
      if (!LNLogSubsystem)
      {
        goto LABEL_70;
      }

      sub_18F093C7C();
      v88 = v107;
      sub_18F093A1C();
      v89 = v133;

      v90 = sub_18F093A0C();
      v91 = sub_18F093ECC();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = OUTLINED_FUNCTION_4_15();
        OUTLINED_FUNCTION_5_12();
        v93 = swift_slowAlloc();
        v142 = v93;
        *v92 = v106;
        v137 = v119;
        v138 = v89;
        v94 = sub_18F093F7C();
        v136 = v87;
        v96 = v95;

        v97 = sub_18F0462AC(v94, v96, &v142);

        *(v92 + 4) = v97;
        _os_log_impl(&dword_18EF7E000, v90, v91, "Couldn't load metadata file - %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();
        OUTLINED_FUNCTION_1_12();
        MEMORY[0x193AD9AF0]();

        OUTLINED_FUNCTION_3_16();
        v99 = v107;
      }

      else
      {

        OUTLINED_FUNCTION_3_16();
        v99 = v88;
      }

      v98(v99, v116);
      v1 = v124;
      v16 = 0;
    }

    else
    {
      v27 = v26;

      v136 = *(v27 + 2);
      if (v136)
      {
        v28 = v135;
        if (v135 >> 62)
        {
          v29 = sub_18F0941BC();
          if (v29)
          {
LABEL_15:
            v30 = 0;
            v31 = v28 & 0xC000000000000001;
            v101 = v28 & 0xFFFFFFFFFFFFFF8;
            v100 = v28 + 32;
            v105 = v27 + 64;
            v130 = v27;
            v103 = v29;
            v102 = v28 & 0xC000000000000001;
            do
            {
              if (v31)
              {
                v32 = v28;
                v33 = v30;
                v34 = MEMORY[0x193AD8BA0](v30, v32);
              }

              else
              {
                if (v30 >= *(v101 + 16))
                {
                  goto LABEL_68;
                }

                v33 = v30;
                v34 = *(v100 + 8 * v30);
              }

              v112 = v34;
              v132 = v16;
              v104 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                goto LABEL_67;
              }

              v36 = sub_18F043BA8(v112);
              v37 = 0;
              v113 = MEMORY[0x1E69E7CC0];
              v134 = v35;
LABEL_22:
              v38 = &v105[40 * v37];
              while (v136 != v37)
              {
                if (v37 >= *(v27 + 2))
                {
                  goto LABEL_65;
                }

                if (v35)
                {
                  v40 = *(v38 - 4);
                  v39 = *(v38 - 3);
                  v41 = *(v38 - 2);
                  v42 = *(v38 - 1);
                  v43 = *v38;
                  if (v40 == v36 && v35 == v39)
                  {
                    v40 = v36;
LABEL_33:

                    v46 = v113;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v137 = v46;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_18F00F7A0(0, *(v46 + 16) + 1, 1);
                      v46 = v137;
                    }

                    v49 = *(v46 + 16);
                    v48 = *(v46 + 24);
                    v50 = v49 + 1;
                    v35 = v134;
                    if (v49 >= v48 >> 1)
                    {
                      v52 = OUTLINED_FUNCTION_114(v48);
                      v123 = v53;
                      v122 = v54;
                      sub_18F00F7A0(v52, v54, 1);
                      v50 = v122;
                      v49 = v123;
                      v35 = v134;
                      v46 = v137;
                    }

                    ++v37;
                    *(v46 + 16) = v50;
                    v113 = v46;
                    v51 = (v46 + 40 * v49);
                    v51[4] = v40;
                    v51[5] = v39;
                    v51[6] = v41;
                    v51[7] = v42;
                    v51[8] = v43;
                    v27 = v130;
                    goto LABEL_22;
                  }

                  v45 = sub_18F09444C();
                  v35 = v134;
                  if (v45)
                  {
                    goto LABEL_33;
                  }
                }

                v38 += 40;
                ++v37;
                v27 = v130;
              }

              v55 = v113;
              v110 = *(v113 + 16);
              if (v110)
              {
                v56 = 0;
                v109 = v113 + 32;
                v1 = v124;
                v16 = v132;
                while (v56 < *(v55 + 16))
                {
                  v57 = (v109 + 40 * v56);
                  v58 = v57[2];
                  v59 = v57[3];
                  v60 = v57[4];
                  v121 = v57[1];

                  v61 = [v112 identifier];
                  v123 = sub_18F093B8C();
                  v122 = v62;

                  v63 = *(v60 + 16);
                  v120 = v60;
                  if (v63)
                  {
                    v111 = v58;
                    v132 = v16;
                    v142 = MEMORY[0x1E69E7CC0];

                    sub_18F09411C();
                    sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
                    v64 = (v60 + 64);
                    do
                    {
                      v65 = *(v64 - 4);
                      v66 = *(v64 - 3);
                      v68 = *(v64 - 2);
                      v67 = *(v64 - 1);
                      v69 = *v64;
                      v64 += 40;
                      v137 = v65;
                      v138 = v66;
                      v139 = v68;
                      v140 = v67;
                      v141 = v69;

                      LNAssistantSuggestionPhraseParameterMetadata.init(from:)(&v137);
                      sub_18F0940FC();
                      sub_18F09412C();
                      sub_18F09413C();
                      sub_18F09410C();
                      --v63;
                    }

                    while (v63);
                    v70 = v142;
                    v1 = v124;
                    v16 = v132;
                    v58 = v111;
                  }

                  else
                  {

                    v70 = MEMORY[0x1E69E7CC0];
                  }

                  v71 = objc_allocWithZone(LNAssistantSuggestionPhraseMetadata);
                  v72 = sub_18F0461E8(v123, v122, v58, v59, v70);
                  v73 = sub_18F044138(v72, 0xD00000000000001CLL, v114 | 0x8000000000000000, v131);
                  if (v16)
                  {

                    OUTLINED_FUNCTION_9_7();

                    goto LABEL_58;
                  }

                  v74 = v73;
                  v132 = 0;
                  v137 = v1;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
                  OUTLINED_FUNCTION_10_8();
                  sub_18F093BEC();
                  if (!LNLogSubsystem)
                  {
                    goto LABEL_69;
                  }

                  sub_18F093C7C();
                  sub_18F093A1C();
                  v75 = v74;
                  v76 = sub_18F093A0C();
                  v77 = sub_18F093EBC();

                  if (os_log_type_enabled(v76, v77))
                  {
                    v78 = OUTLINED_FUNCTION_4_15();
                    v79 = swift_slowAlloc();
                    *v78 = v108;
                    v80 = [v75 phraseMetadata];
                    *(v78 + 4) = v80;
                    *v79 = v80;
                    _os_log_impl(&dword_18EF7E000, v76, v77, "found a phrase for assistant domains - phrase - %@", v78, 0xCu);
                    sub_18F04681C(v79);
                    OUTLINED_FUNCTION_1_12();
                    MEMORY[0x193AD9AF0]();
                    OUTLINED_FUNCTION_1_12();
                    MEMORY[0x193AD9AF0]();
                  }

                  OUTLINED_FUNCTION_3_16();
                  v82 = v81(v126, v116);
                  MEMORY[0x193AD88C0](v82);
                  v83 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18);
                  if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v83 >> 1)
                  {
                    OUTLINED_FUNCTION_114(v83);
                    sub_18F093DFC();
                  }

                  ++v56;
                  sub_18F093E3C();
                  v117 = v143;

                  v1 = v124;
                  v16 = v132;
                  v28 = v135;
                  v55 = v113;
                  if (v56 == v110)
                  {
                    OUTLINED_FUNCTION_9_7();

                    v27 = v130;
                    goto LABEL_55;
                  }
                }

                goto LABEL_66;
              }

              OUTLINED_FUNCTION_9_7();

              v1 = v124;
              v16 = v132;
              v28 = v135;
LABEL_55:

              v30 = v104;
              v31 = v102;
            }

            while (v104 != v103);
          }
        }

        else
        {
          v29 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v29)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= v128)
    {

      OUTLINED_FUNCTION_259();
      return;
    }

    v14 = *(v129 + 8 * v15);
    ++v18;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_18F0450E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x193AD8780](46, 0xE100000000000000);
  v6 = sub_18F093CEC();

  if (v6)
  {
    v7 = sub_18F093C2C();

    v8 = sub_18EFBBBFC(v7, a1, a2);
    a1 = MEMORY[0x193AD8710](v8);
  }

  return a1;
}

void sub_18F0451B0()
{
  OUTLINED_FUNCTION_260();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_18F093A2C();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22();
  v14 = v13 - v12;
  v15 = [v7 actionIdentifier];
  v16 = sub_18F093B8C();
  v18 = v17;

  v19 = sub_18F0450E8(v16, v18, v5, v3);
  v21 = v20;

  v41 = v19;
  v42 = v21;
  sub_18EFB30C8();
  if ((sub_18F093F9C() & 1) == 0)
  {
    v32 = [v7 templateKey];
    v33 = sub_18F093B8C();
    v35 = v34;

    v36 = [v7 parametersMetadata];
    sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
    v37 = sub_18F093DCC();

    v38 = objc_allocWithZone(LNAssistantSuggestionPhraseMetadata);
    v39 = OUTLINED_FUNCTION_264();
    sub_18F0461E8(v39, v40, v33, v35, v37);
LABEL_7:
    OUTLINED_FUNCTION_259();
    return;
  }

  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
  sub_18F093BEC();
  if (LNLogSubsystem)
  {

    sub_18F093C7C();
    sub_18F093A1C();
    v22 = v7;
    v23 = sub_18F093A0C();
    v24 = sub_18F093EBC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_5_12();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136315138;
      v27 = [v22 actionIdentifier];
      v28 = sub_18F093B8C();
      v30 = v29;

      v31 = sub_18F0462AC(v28, v30, &v41);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_18EF7E000, v23, v24, "skipping suggestion phrase metadata with malformed actionIdentifier: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_1_12();
      MEMORY[0x193AD9AF0]();
      OUTLINED_FUNCTION_1_12();
      MEMORY[0x193AD9AF0]();
    }

    (*(v10 + 8))(v14, v8);
    goto LABEL_7;
  }

  __break(1u);
}

void static AssistantSuggestionPhraseProvider.getPhrasesForCustomIntents(actions:bundleIdentifier:phraseResourceBundle:)()
{
  OUTLINED_FUNCTION_260();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v110 = v8;
  v121 = sub_18F093A2C();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v111 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v102 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v102 - v17;
  v19 = MEMORY[0x1E69E7CC0];
  v132 = MEMORY[0x1E69E7CC0];
  v125 = v7;
  v20 = v7;
  v21 = v1;
  v22 = sub_18F043C6C(v20, v5, v3, 0xD00000000000002DLL, 0x800000018F0B0CF0);
  v120 = 0;
  v23 = v22;
  v109 = v18;
  v117 = v3;
  v128 = v1;
  v122 = v5;
  v108 = v10;
  v24 = 0;
  v116 = "Metadata/AssistantDomains";
  v131 = v19;
  v25 = *(v22 + 2);
  v26 = v22 + 64;
  v126 = v22 + 64;
  v127 = v19;
  v27 = v16;
  v129 = v16;
LABEL_2:
  v28 = &v26[40 * v24];
  while (v25 != v24)
  {
    if (v24 >= *(v23 + 2))
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    ++v24;
    v5 = (v28 + 5);
    v30 = *(v28 - 1);
    v29 = *v28;
    v32 = *(v28 - 3);
    v31 = *(v28 - 2);
    v33 = *(v28 - 4);
    sub_18EF825F4(0, &qword_1EACB7718, off_1E72AFF38);
    v130[0] = v33;
    v130[1] = v32;
    v130[2] = v31;
    v130[3] = v30;
    v130[4] = v29;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v34 = LNAssistantSuggestionPhraseMetadata.init(from:)(v130);
    v21 = v128;
    sub_18F0451B0();
    v36 = v35;

    v27 = v129;
    v28 = v5;
    if (v36)
    {
      v21 = &v131;
      MEMORY[0x193AD88C0]();
      v37 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v37 >> 1)
      {
        OUTLINED_FUNCTION_114(v37);
        sub_18F093DFC();
      }

      sub_18F093E3C();
      v127 = v131;
      v26 = v126;
      goto LABEL_2;
    }
  }

  v38 = v127;
  sub_18EFA0A74(v127);
  v39 = v108;
  OUTLINED_FUNCTION_8_7();
  if (!v40)
  {
    goto LABEL_56;
  }

  v41 = v40;
  v42 = sub_18EFA0A74(v21);
  v43 = 0;
  v107 = v21 & 0xC000000000000001;
  v106 = v21 + 32;
  v119 = (v39 + 8);
  v123 = v38 & 0xFFFFFFFFFFFFFF8;
  v124 = v38 & 0xC000000000000001;
  *&v44 = 136315394;
  v104 = v44;
  *&v44 = 138412290;
  v112 = v44;
  v115 = MEMORY[0x1E69E7CC0];
  v45 = v128;
  v103 = v42;
LABEL_11:
  v46 = v122;
  if (v43 == v42)
  {
LABEL_56:

    goto LABEL_55;
  }

  v47 = v107;
  sub_18EFBB7BC(v43, v107 == 0, v21);
  if (v47)
  {
    v49 = MEMORY[0x193AD8BA0](v43, v21);
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    v49 = *(v48 + 8 * v43);
  }

  v50 = v49;
  v51 = __OFADD__(v43, 1);
  v52 = v43 + 1;
  if (v51)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v105 = v52;
  v130[0] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
  OUTLINED_FUNCTION_10_8();
  v114 = v53;
  sub_18F093BEC();
  if (!LNLogSubsystem)
  {
LABEL_65:
    __break(1u);
    return;
  }

  sub_18F093C7C();
  sub_18F093A1C();

  v54 = v50;
  v55 = sub_18F093A0C();
  v21 = sub_18F093EBC();

  v56 = os_log_type_enabled(v55, v21);
  v126 = v54;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v130[0] = swift_slowAlloc();
    *v57 = v104;
    *(v57 + 4) = sub_18F0462AC(v125, v46, v130);
    *(v57 + 12) = 2080;
    v58 = [v54 identifier];
    v59 = sub_18F093B8C();
    v61 = v60;

    v62 = v59;
    v27 = v129;
    v63 = sub_18F0462AC(v62, v61, v130);

    *(v57 + 14) = v63;
    _os_log_impl(&dword_18EF7E000, v55, v21, "%s %s", v57, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_12();
    MEMORY[0x193AD9AF0]();
    OUTLINED_FUNCTION_1_12();
    MEMORY[0x193AD9AF0]();

    v64 = *v119;
    v65 = v109;
  }

  else
  {

    v64 = *v119;
    v65 = v5;
  }

  v113 = v64;
  v64(v65, v121);
  v66 = v120;
  v67 = 0;
  v130[0] = MEMORY[0x1E69E7CC0];
  while (v41 != v67)
  {
    if (v124)
    {
      v69 = MEMORY[0x193AD8BA0](v67, v127);
      v68 = v126;
    }

    else
    {
      v68 = v126;
      if (v67 >= *(v123 + 16))
      {
        goto LABEL_58;
      }

      v69 = *(v127 + 8 * v67 + 32);
    }

    if (__OFADD__(v67, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v70 = [v69 actionIdentifier];
    v71 = sub_18F093B8C();
    v21 = v72;

    v73 = [v68 identifier];
    v74 = sub_18F093B8C();
    v76 = v75;

    if (v71 == v74 && v21 == v76)
    {

      v27 = v129;
    }

    else
    {
      v78 = sub_18F09444C();

      v27 = v129;
      if ((v78 & 1) == 0)
      {

        goto LABEL_33;
      }
    }

    v21 = v130;
    sub_18F0940FC();
    sub_18F09412C();
    sub_18F09413C();
    sub_18F09410C();
LABEL_33:
    ++v67;
  }

  v79 = v130[0];
  v120 = sub_18EFA0A74(v130[0]);
  v5 = 0;
  v118 = v79 & 0xC000000000000001;
  while (1)
  {
    if (v120 == v5)
    {
      v120 = v66;

      OUTLINED_FUNCTION_8_7();
      v42 = v103;
      v43 = v105;
      goto LABEL_11;
    }

    if (v118)
    {
      v80 = MEMORY[0x193AD8BA0](v5, v79);
    }

    else
    {
      if (v5 >= *(v79 + 16))
      {
        goto LABEL_61;
      }

      v80 = *(v79 + 8 * v5 + 32);
    }

    v81 = v80;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_60;
    }

    v82 = sub_18F044138(v80, 0xD00000000000001CLL, v116 | 0x8000000000000000, v117);
    if (v66)
    {
      break;
    }

    v83 = v82;
    v84 = v41;
    v130[0] = v45;
    sub_18F093BEC();
    if (!LNLogSubsystem)
    {
      goto LABEL_63;
    }

    sub_18F093C7C();
    sub_18F093A1C();
    v85 = v83;
    v86 = sub_18F093A0C();
    v87 = sub_18F093EBC();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = OUTLINED_FUNCTION_4_15();
      v89 = swift_slowAlloc();
      *v88 = v112;
      v90 = [v85 phraseMetadata];
      *(v88 + 4) = v90;
      *v89 = v90;
      _os_log_impl(&dword_18EF7E000, v86, v87, "found a phrase for custom intents - phrase - %@", v88, 0xCu);
      sub_18F04681C(v89);
      v45 = v128;
      OUTLINED_FUNCTION_1_12();
      MEMORY[0x193AD9AF0]();
      v27 = v129;
      OUTLINED_FUNCTION_1_12();
      MEMORY[0x193AD9AF0]();
    }

    v91 = v113(v27, v121);
    v21 = &v132;
    MEMORY[0x193AD88C0](v91);
    v92 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v92 >> 1)
    {
      OUTLINED_FUNCTION_114(v92);
      sub_18F093DFC();
    }

    sub_18F093E3C();
    v115 = v132;

    ++v5;
    v41 = v84;
  }

  v120 = v66;

  v93 = v108;
  v94 = v111;
  v95 = v122;
  v130[0] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
  OUTLINED_FUNCTION_10_8();
  sub_18F093BEC();
  if (!LNLogSubsystem)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_18F093C7C();
  sub_18F093A1C();

  v96 = sub_18F093A0C();
  v97 = sub_18F093ECC();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_5_12();
    v99 = swift_slowAlloc();
    v100 = v95;
    v101 = v99;
    v130[0] = v99;
    *v98 = 136315138;
    *(v98 + 4) = sub_18F0462AC(v125, v100, v130);
    _os_log_impl(&dword_18EF7E000, v96, v97, "Couldn't load metadata file - %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    OUTLINED_FUNCTION_1_12();
    MEMORY[0x193AD9AF0]();
    OUTLINED_FUNCTION_1_12();
    MEMORY[0x193AD9AF0]();
  }

  (*(v93 + 8))(v94, v121);
LABEL_55:
  OUTLINED_FUNCTION_259();
}

id static AssistantSuggestionPhraseProvider.getAppIntentSchemasBundle()()
{
  sub_18F0934FC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

void static AssistantSuggestionPhraseProvider.getPhrases(actions:assistantDomainsAndActionsToLoad:bundleIdentifier:phraseResourceBundle:)()
{
  OUTLINED_FUNCTION_260();
  v1 = v0;
  v2 = sub_18F093A2C();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  v8 = v7 - v6;
  if (v1)
  {
    v9 = v1;
    static AssistantSuggestionPhraseProvider.getPhrasesForAssistantDomains(assistantDomainsAndActionsToLoad:phraseResourceBundle:)();
    sub_18F00D89C(v10);
    OUTLINED_FUNCTION_264();
    static AssistantSuggestionPhraseProvider.getPhrasesForCustomIntents(actions:bundleIdentifier:phraseResourceBundle:)();
    sub_18F00D89C(v11);

LABEL_7:
    OUTLINED_FUNCTION_259();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F0, &qword_18F0AC390);
  sub_18F093BEC();
  if (LNLogSubsystem)
  {
    sub_18F093C7C();
    sub_18F093A1C();
    v12 = sub_18F093A0C();
    v13 = sub_18F093ECC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_18EF7E000, v12, v13, "nil phraseResourceBundle passed to getPhrases", v14, 2u);
      OUTLINED_FUNCTION_1_12();
      MEMORY[0x193AD9AF0]();
    }

    (*(v4 + 8))(v8, v2);
    goto LABEL_7;
  }

  __break(1u);
}

id sub_18F0461E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_18F093B5C();

  v7 = sub_18F093B5C();

  sub_18EF825F4(0, &qword_1EACB7710, off_1E72AFF40);
  v8 = sub_18F093DBC();

  v9 = [v5 initWithActionIdentifier:v6 templateKey:v7 parametersMetadata:v8];

  return v9;
}

unint64_t sub_18F0462AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_18F046370(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_18EFB6E2C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_18F046370(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_18F046470(a5, a6);
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
    result = sub_18F0940EC();
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

uint64_t sub_18F046470(uint64_t a1, unint64_t a2)
{
  v3 = sub_18F0464BC(a1, a2);
  sub_18F0465D4(&unk_1F02E26A0);
  return v3;
}

uint64_t sub_18F0464BC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_18F093C8C())
  {
    result = sub_18F0466B8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_18F09404C();
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
          result = sub_18F0940EC();
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

uint64_t sub_18F0465D4(uint64_t result)
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

    result = sub_18F046728(result, v7, 1, v3);
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

void *sub_18F0466B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9808, &qword_18F0AC3E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_18F046728(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9808, &qword_18F0AC3E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

uint64_t sub_18F04681C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97F8, &qword_18F0AC398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18F0468C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_18F093B5C();
  v9 = sub_18F093B5C();

  v10 = sub_18F093B5C();
  v11 = [a7 URLForResource:v8 withExtension:v9 subdirectory:v10];

  return v11;
}

unint64_t sub_18F046968()
{
  result = qword_1EACB9818;
  if (!qword_1EACB9818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9810, &qword_18F0AC3F0);
    sub_18F013E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9818);
  }

  return result;
}

uint64_t sub_18F0469EC(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_18F093B5C();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_18F09318C();

    swift_willThrow();
  }

  return OUTLINED_FUNCTION_9_8();
}

uint64_t static LSBundleRecord.currentBundleMetadata(for:)(uint64_t a1, uint64_t a2)
{
  v5 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (v5)
  {
    v6 = v5;
    v7 = sub_18F046EF8();
    if (!v2)
    {
      v9 = v7;
      sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
      sub_18F0473DC(v9);
    }
  }

  else
  {
    type metadata accessor for DaemonRecord();
    v8 = static DaemonRecord.from(bundleIdentifier:)(a1, a2);
    if (v8)
    {
      sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
      sub_18F046C6C(v8);
    }
  }

  return OUTLINED_FUNCTION_9_8();
}

id sub_18F046C6C(void *a1)
{
  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v2 = sub_18F093A2C();
  __swift_project_value_buffer(v2, qword_1ED60C1C0);
  v3 = a1;
  v4 = sub_18F093A0C();
  v5 = sub_18F093EDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136446210;
    v8 = &v3[OBJC_IVAR___swift_DaemonRecord_bundleIdentifier];
    swift_beginAccess();
    v9 = *v8;
    v10 = v8[1];

    v11 = sub_18F0462AC(v9, v10, v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_18EF7E000, v4, v5, "Importing the daemon record for %{public}s...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x193AD9AF0](v7, -1, -1);
    MEMORY[0x193AD9AF0](v6, -1, -1);
  }

  v12 = DaemonRecord.effectiveBundleIdentifier.getter();
  swift_beginAccess();
  sub_18F0932BC();

  v13 = sub_18F093DBC();

  v14 = [v12 bundleMetadataForURLs_];

  if (!v14)
  {
    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    sub_18F093DCC();
    v14 = sub_18F093DBC();
  }

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithArray_];

  return v15;
}

uint64_t sub_18F046EF8()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_18F0932BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18EF7FDF8(v0);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    if (qword_1ED5FEEB8 != -1)
    {
LABEL_25:
      swift_once();
    }

    v12 = sub_18F093A2C();
    __swift_project_value_buffer(v12, qword_1ED60C1C0);

    v13 = sub_18F093A0C();
    v14 = sub_18F093EDC();

    v15 = os_log_type_enabled(v13, v14);
    v40 = v4;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v39 = v2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v41 = v18;
      *v17 = 136446210;
      v19 = sub_18F0462AC(v10, v11, &v41);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_18EF7E000, v13, v14, "Processing bundle metadata for %{public}s...", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x193AD9AF0](v18, -1, -1);
      v20 = v17;
      v2 = v39;
      MEMORY[0x193AD9AF0](v20, -1, -1);
    }

    else
    {
    }

    v29 = LSBundleRecord.effectiveBundleIdentifier.getter();
    if (v29)
    {
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85C8, &qword_18F0A1210);
      v31 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_18F09BCC0;
      v33 = [v3 URL];
      sub_18F09327C();

      (*(v5 + 32))(v32 + v31, v7, v40);
      v34 = sub_18F04A0B4();
      v41 = v32;
      sub_18F00D964(v34);
      v35 = sub_18F093DBC();

      v36 = [v30 bundleMetadataForURLs_];

      sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
      v5 = sub_18F093DCC();
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v7 = sub_18EFA0A74(v5);
    v11 = 0;
    v4 = v5 & 0xC000000000000001;
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    while (v7 != v11)
    {
      if (v4)
      {
        v37 = MEMORY[0x193AD8BA0](v11, v5);
      }

      else
      {
        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v37 = *(v5 + 8 * v11 + 32);
      }

      v38 = v37;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_18F049174(v3);

      ++v11;
    }
  }

  else
  {
    if (qword_1ED5FEEB8 != -1)
    {
      swift_once();
    }

    v21 = sub_18F093A2C();
    __swift_project_value_buffer(v21, qword_1ED60C1C0);
    v22 = v0;
    v23 = sub_18F093A0C();
    v24 = sub_18F093ECC();

    if (os_log_type_enabled(v23, v24))
    {
      v5 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v22;
      *v25 = v22;
      v26 = v22;
      _os_log_impl(&dword_18EF7E000, v23, v24, "Undefined bundle identifier for %@", v5, 0xCu);
      sub_18EF82E14(v25, &qword_1EACB97F8, &qword_18F0AC398);
      MEMORY[0x193AD9AF0](v25, -1, -1);
      MEMORY[0x193AD9AF0](v5, -1, -1);
    }

    sub_18F04C44C();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  return v5;
}

id sub_18F0473DC(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
  v2 = sub_18F093DBC();

  v3 = [v1 initWithArray_];

  return v3;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNBundleMetadata.init(bundleIdentifier:)(LNBundleMetadata *__return_ptr retstr, Swift::String bundleIdentifier)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  type metadata accessor for DaemonRecord();
  if (static DaemonRecord.from(bundleIdentifier:)(countAndFlagsBits, object))
  {
    OUTLINED_FUNCTION_284();

    v5 = OUTLINED_FUNCTION_3_17();
    sub_18F046C6C(v5);
  }

  else
  {
    type metadata accessor for FrameworkRecord(0);
    if (static FrameworkRecord.from(bundleIdentifier:)(countAndFlagsBits, object))
    {
      OUTLINED_FUNCTION_284();

      v6 = OUTLINED_FUNCTION_3_17();
      LNBundleMetadata.init(frameworkRecord:)(v6);
    }

    else
    {
      sub_18EF825F4(0, &qword_1EACB6AE8, 0x1E6963620);
      static LSBundleRecord.with(bundleIdentifier:allowSystemAppPlaceholder:)(countAndFlagsBits, object, 1);

      if (!v2)
      {
        v7 = OUTLINED_FUNCTION_3_17();
        sub_18F0478F0(v7);
      }
    }
  }
}

uint64_t LNBundleMetadata.init(frameworkRecord:)(void *a1)
{
  if (qword_1ED5FEEB8 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_1ED5FEEB8);
  }

  v2 = sub_18F093A2C();
  __swift_project_value_buffer(v2, qword_1ED60C1C0);
  v3 = a1;
  v4 = sub_18F093A0C();
  v5 = sub_18F093EDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    v8 = *&v3[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier];
    v9 = *&v3[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleIdentifier + 8];

    v10 = sub_18F0462AC(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_18EF7E000, v4, v5, "Importing the framework record for %{public}s...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_7_8();
    OUTLINED_FUNCTION_7_8();
  }

  v11 = FrameworkRecord.effectiveBundleIdentifier.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85C8, &qword_18F0A1210);
  v12 = sub_18F0932BC();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18F09BCC0;
  (*(v14 + 16))(v16 + v15, &v3[OBJC_IVAR____TtC12LinkMetadata15FrameworkRecord_bundleURL], v12);
  v17 = sub_18F093DBC();

  v18 = [v11 bundleMetadataForURLs_];

  if (!v18)
  {
    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    sub_18F093DCC();
    v18 = sub_18F093DBC();
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithArray_];

  return OUTLINED_FUNCTION_9_8();
}

uint64_t static LSBundleRecord.with(bundleIdentifier:allowSystemAppPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_18EF825F4(0, &qword_1EACB6AE8, 0x1E6963620);

  sub_18F0469EC(a1, a2, 1);
  if (v3)
  {
    if (a3)
    {
      v7 = objc_allocWithZone(MEMORY[0x1E69635F8]);

      sub_18F04C26C(a1, a2);
    }

    else
    {
      swift_willThrow();
    }
  }

  return OUTLINED_FUNCTION_9_8();
}

void sub_18F0478F0(void *a1)
{
  v3 = sub_18F0932BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18EF7FDF8(a1);
  if (!v8)
  {
    if (qword_1ED5FEEB8 != -1)
    {
      swift_once();
    }

    v12 = sub_18F093A2C();
    __swift_project_value_buffer(v12, qword_1ED60C1C0);
    v13 = a1;
    v14 = sub_18F093A0C();
    v15 = sub_18F093ECC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_18EF7E000, v14, v15, "Undefined bundle identifier for %{public}@", v16, 0xCu);
      sub_18EF82E14(v17, &qword_1EACB97F8, &qword_18F0AC398);
      MEMORY[0x193AD9AF0](v17, -1, -1);
      MEMORY[0x193AD9AF0](v16, -1, -1);
    }

    sub_18F04C44C();
    swift_allocError();
    *v19 = 0;
    goto LABEL_9;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_18F047E3C();
  if (v1)
  {

    return;
  }

  if (sub_18EFA0A74(v11))
  {

    v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    v21 = sub_18F093DBC();

    [v20 initWithArray_];

    return;
  }

  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v22 = sub_18F093A2C();
  __swift_project_value_buffer(v22, qword_1ED60C1C0);
  v23 = a1;

  v24 = sub_18F093A0C();
  v25 = sub_18F093ECC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v26 = 136446722;
    v27 = sub_18F0462AC(v9, v10, &v41);
    v28 = v25;
    v29 = v27;

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    v30 = [v23 URL];
    sub_18F09327C();

    sub_18F034544();
    v31 = sub_18F0943FC();
    v33 = v32;
    (*(v4 + 8))(v6, v3);
    v34 = sub_18F0462AC(v31, v33, &v41);

    *(v26 + 14) = v34;
    *(v26 + 22) = 2114;
    *(v26 + 24) = v23;
    v35 = v39;
    *v39 = v23;
    v13 = v23;
    _os_log_impl(&dword_18EF7E000, v24, v28, "Unable to extract bundle metadata for %{public}s:\nempty extensionMetadata and daemonMetadata for URL %{public}s of %{public}@", v26, 0x20u);
    sub_18EF82E14(v35, &qword_1EACB97F8, &qword_18F0AC398);
    MEMORY[0x193AD9AF0](v35, -1, -1);
    v36 = v40;
    swift_arrayDestroy();
    MEMORY[0x193AD9AF0](v36, -1, -1);
    MEMORY[0x193AD9AF0](v26, -1, -1);

    sub_18F04C44C();
    swift_allocError();
    *v37 = 1;
LABEL_9:
    swift_willThrow();

    return;
  }

  sub_18F04C44C();
  swift_allocError();
  *v38 = 1;
  swift_willThrow();
}

uint64_t sub_18F047E3C()
{
  result = sub_18F046EF8();
  if (!v0)
  {
    v2 = result;
    sub_18F04A0F4();
    sub_18F00DA68();
    sub_18F04A7EC();
    sub_18F00DA68();
    sub_18F04B5AC();
    sub_18F00DA68();
    return v2;
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNBundleMetadata.init(bundle:using:)(LNBundleMetadata *__return_ptr retstr, NSBundle bundle, LNEffectiveBundleIdentifier using)
{
  isa = using.super.isa;
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if ([objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBundle:bundle.super.isa usingEffectiveBundleIdentifier:using.super.isa error:v7])
  {
    v5 = v7[0];
  }

  else
  {
    v6 = v7[0];
    sub_18F09318C();

    swift_willThrow();
  }
}

void (*LNBundleMetadata.init(bundle:using:)(void *a1, void (*a2)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_42();
  v90 = v7 - v8;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v84 - v10;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - v12;
  v14 = sub_18F0932BC();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_42();
  v89 = (v18 - v19);
  OUTLINED_FUNCTION_10_0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v84 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v84 - v27;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  v95 = a1;
  v31 = [a1 ln_safeBundleURL];
  if (!v31)
  {
    goto LABEL_4;
  }

  v32 = v31;
  sub_18F09327C();

  sub_18F0488C8(v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    (*(v16 + 8))(v30, v14);
    sub_18EF82E14(v13, &qword_1EACB72C8, &qword_18F0AAE80);
LABEL_4:
    sub_18EFD2EC8();
    swift_allocError();
    *v33 = v95;
    *(v33 + 8) = 3;
    swift_willThrow();

    goto LABEL_20;
  }

  v88 = v30;
  v34 = v92;
  (*(v16 + 32))(v92, v13, v14);
  if (qword_1ED5FEEB8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v87 = v3;
    v35 = sub_18F093A2C();
    __swift_project_value_buffer(v35, qword_1ED60C1C0);
    v97 = *(v16 + 16);
    v98 = v16 + 16;
    v97(v26, v34, v14);
    v36 = a2;
    v37 = sub_18F093A0C();
    v38 = sub_18F093EDC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v85 = v37;
      v40 = v39;
      v84 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v100 = v86;
      *v40 = 136446466;
      sub_18F034544();
      v41 = sub_18F0943FC();
      v43 = v42;
      v44 = OUTLINED_FUNCTION_5_13();
      v45(v44);
      v46 = sub_18F0462AC(v41, v43, &v100);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2114;
      *(v40 + 14) = v36;
      v47 = v84;
      *v84 = v36;
      v48 = v36;
      v49 = v85;
      _os_log_impl(&dword_18EF7E000, v85, v38, "Found static metadata file at %{public}s for %{public}@", v40, 0x16u);
      sub_18EF82E14(v47, &qword_1EACB97F8, &qword_18F0AC398);
      OUTLINED_FUNCTION_7_8();
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_7_8();
    }

    else
    {

      v50 = OUTLINED_FUNCTION_5_13();
      v51(v50);
    }

    v52 = [v36 type];
    v53 = [v36 bundleIdentifier];
    v54 = sub_18F093B8C();
    v56 = v55;

    v57 = v36;
    v58 = v93;
    v97(v93, v88, v14);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v14);
    v59 = objc_allocWithZone(LNEffectiveBundleIdentifier);
    v60 = sub_18EF7FCF0(v52, v54, v56, v58);
    sub_18EF825F4(0, &qword_1ED5FE798, off_1E72B00C0);
    v62 = v94;
    v61 = v95;
    v63 = sub_18F0489C8(v95);
    v34 = v62;
    if (v62)
    {
      break;
    }

    v64 = v63;
    v94 = v60;
    v85 = v57;
    v3 = 0;
    v86 = MEMORY[0x1E69E7CC0];
    v100 = MEMORY[0x1E69E7CC0];
    v26 = v63[2];
    v93 = (v16 + 8);
LABEL_12:
    a2 = ObjectType;
    while (1)
    {
      if (v26 == v3)
      {

        sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
        v66 = v89;
        v67 = v92;
        v68 = v97;
        v97(v89, v92, v14);
        v69 = v90;
        v70 = v88;
        v68(v90, v88, v14);
        __swift_storeEnumTagSinglePayload(v69, 0, 1, v14);
        v71 = v94;
        LNBundleMetadata.init(metadataFileURL:bundleURL:effectiveBundleIdentifier:)(v66, v69, v71, v72, v73, v74, v75, v76, v84, v85, v86, v87, v88, v89, v90, ObjectType, v92, v93, v94, v95, v96, v97);
        v79 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8760, &qword_18F0AC410);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_18F09BCD0;
        *(v80 + 32) = v79;
        v100 = v80;
        v81 = v79;
        sub_18F00DA68();
        v82 = sub_18F093DBC();

        a2 = [v87 initWithArray_];

        v83 = v96;
        v96(v67, v14);
        v83(v70, v14);
        return a2;
      }

      if (v3 >= v64[2])
      {
        break;
      }

      v97(v23, v64 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v3, v14);
      sub_18F048B0C(v23, v94, &v99);
      ++v3;
      v65 = (v96)(v23, v14);
      if (v99.isa)
      {
        MEMORY[0x193AD88C0](v65);
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v86 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_18F093DFC();
        }

        sub_18F093E3C();
        v86 = v100;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_0_18(&qword_1ED5FEEB8);
  }

  a2 = v96;
  v96(v92, v14);
  a2(v88, v14);
LABEL_20:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return a2;
}

uint64_t sub_18F0488C8@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_18F093B5C();
  v4 = sub_18F09324C();
  v5 = sub_18F04C3A0(0x74636172747865, 0xE700000000000000, 0x64736E6F69746361, 0xEB00000000617461, v3, v4, v2);

  if (v5)
  {
    sub_18F09327C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_18F0932BC();

  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

id sub_18F0489C8(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  sub_18EF825F4(0, &qword_1ED5FE798, off_1E72B00C0);
  v2 = a1;
  isa = LNPackageMetadata.init(from:)(v2).super.isa;
  if (v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v7 = isa;
  if (!isa)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12[0] = 0;
  v8 = [(objc_class *)isa resolveWithBundle:v2 error:v12];
  v9 = v12[0];
  if (v8)
  {
    v10 = v8;
    sub_18F0932BC();
    v5 = sub_18F093DCC();
    v11 = v9;
  }

  else
  {
    v5 = v12[0];
    sub_18F09318C();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_18F048B0C@<X0>(char *a1@<X0>, void *a2@<X1>, NSObject *a3@<X8>)
{
  v55 = a3;
  v60 = a2;
  v4 = sub_18F092FEC();
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - v12;
  v14 = sub_18F0932BC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  sub_18F0488C8(v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v24 = v60;
    sub_18EF82E14(v13, &qword_1EACB72C8, &qword_18F0AAE80);
    if (qword_1ED5FEEB8 != -1)
    {
      swift_once();
    }

    v25 = sub_18F093A2C();
    __swift_project_value_buffer(v25, qword_1ED60C1C0);
    (*(v15 + 16))(v18, a1, v14);
    v26 = v24;
    v27 = sub_18F093A0C();
    v28 = sub_18F093EDC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v62[0] = v60;
      *v29 = 136446466;
      sub_18F034544();
      v55 = v27;
      v30 = sub_18F0943FC();
      v31 = v4;
      v33 = v32;
      (*(v15 + 8))(v18, v14);
      v34 = sub_18F0462AC(v30, v33, v62);
      v4 = v31;

      *(v29 + 4) = v34;
      *(v29 + 12) = 2114;
      *(v29 + 14) = v26;
      v35 = v56;
      *v56 = v26;
      v36 = v26;
      v37 = v28;
      v38 = v55;
      _os_log_impl(&dword_18EF7E000, v55, v37, "No static metadata directories found in %{public}s for %{public}@", v29, 0x16u);
      sub_18EF82E14(v35, &qword_1EACB97F8, &qword_18F0AC398);
      MEMORY[0x193AD9AF0](v35, -1, -1);
      v39 = v60;
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x193AD9AF0](v39, -1, -1);
      MEMORY[0x193AD9AF0](v29, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v50 = v58;
    sub_18F092FDC();
    v51 = v57;
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v14);
    v52 = sub_18F092FFC();
    sub_18EF82E14(v51, &qword_1EACB72C8, &qword_18F0AAE80);
    (*(v59 + 8))(v50, v4);
    sub_18EFD2EC8();
    swift_allocError();
    *v53 = v52;
    *(v53 + 8) = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v15 + 32))(v23, v13, v14);
    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    v40 = *(v15 + 16);
    v40(v21, v23, v14);
    v40(v11, a1, v14);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
    v41 = v60;
    v42 = v56;
    LNBundleMetadata.init(metadataFileURL:bundleURL:effectiveBundleIdentifier:)(v21, v11, v41, v43, v44, v45, v46, v47, v55, v56, v57, v58, v59, v60, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6]);
    if (v42)
    {
      return (*(v15 + 8))(v23, v14);
    }

    else
    {
      v54 = v48;
      result = (*(v15 + 8))(v23, v14);
      v55->isa = v54;
    }
  }

  return result;
}

uint64_t sub_18F049174(void *a1)
{
  v2 = v1;
  result = LSBundleRecord.canOverrideAttribution.getter();
  if ((result & 1) == 0)
  {
    v5 = [v2 actions];
    sub_18EF825F4(0, &qword_1ED5FF210, off_1E72AFEA0);
    v6 = sub_18F093A4C();

    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 64);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    if (!v9)
    {
LABEL_6:
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {

          v16 = [v2 entities];
          sub_18EF825F4(0, &qword_1ED5FF428, off_1E72B0020);
          v17 = sub_18F093A4C();

          v18 = 1 << *(v17 + 32);
          v19 = -1;
          if (v18 < 64)
          {
            v19 = ~(-1 << v18);
          }

          v20 = v19 & *(v17 + 64);
          v21 = (v18 + 63) >> 6;

          for (i = 0; v20; i = v23)
          {
            v23 = i;
LABEL_19:
            v24 = *(*(v17 + 56) + 8 * (__clz(__rbit64(v20)) | (v23 << 6)));

            v14 = v24;
            sub_18F0206F4(v14);
            if (v25)
            {
              goto LABEL_25;
            }

            v20 &= v20 - 1;
          }

          while (1)
          {
            v23 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v23 >= v21)
            {
            }

            v20 = *(v17 + 64 + 8 * v23);
            ++i;
            if (v20)
            {
              goto LABEL_19;
            }
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v9 = *(v6 + 64 + 8 * v12);
        ++v11;
        if (v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = *(*(v6 + 56) + 8 * (__clz(__rbit64(v9)) | (v12 << 6)));

      v14 = v13;
      sub_18F0206F4(v14);
      if (v15)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

LABEL_25:

    if (qword_1ED5FEEB8 != -1)
    {
LABEL_33:
      swift_once();
    }

    v26 = sub_18F093A2C();
    __swift_project_value_buffer(v26, qword_1ED60C1C0);
    v27 = a1;
    v28 = sub_18F093A0C();
    v29 = sub_18F093ECC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_18EF7E000, v28, v29, "Metadata for %{public}@ contains attribution bundle identifier but isn't entitled to do so", v30, 0xCu);
      sub_18EF82E14(v31, &qword_1EACB97F8, &qword_18F0AC398);
      MEMORY[0x193AD9AF0](v31, -1, -1);
      MEMORY[0x193AD9AF0](v30, -1, -1);
    }

    return [v2 applyAttributionBundleIdentifier:0 icon:0];
  }

  return result;
}

uint64_t LSBundleRecord.canOverrideAttribution.getter()
{
  v1 = [v0 entitlements];
  v2 = sub_18F093B5C();
  sub_18EF825F4(0, &qword_1ED5FE760, 0x1E696AD98);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_18EF82E14(v8, &qword_1EACB9180, &qword_18F09BD30);
  }

  return 0;
}

uint64_t sub_18F0496D8()
{
  v1 = v0;
  v43 = sub_18F0931FC();
  v2 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18F0932BC();
  v45 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v37 - v8;
  v44 = v1;
  v9 = [v1 entitlements];
  v10 = sub_18F093B5C();
  sub_18EF825F4(0, &unk_1ED5FEC88, 0x1E695DEC8);
  v11 = [v9 objectForKey:v10 ofClass:swift_getObjCClassFromMetadata()];

  if (v11)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51[0] = v49;
  v51[1] = v50;
  if (!*(&v50 + 1))
  {
    sub_18EF82E14(v51, &qword_1EACB9180, &qword_18F09BD30);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8798, &qword_18F0A1388);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(v47 + 16);
  if (v12)
  {
    v40 = v47;
    v41 = v2;
    v13 = v47 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_18EFB6E2C(v13, v51);
      sub_18EF914D4(v51, &v49);
      if (swift_dynamicCast())
      {
        v15 = v48;
        if (v48)
        {
          v16 = v47;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_18F00EDD4();
            v14 = v20;
          }

          v17 = v14[2];
          v18 = v14;
          if (v17 >= v14[3] >> 1)
          {
            sub_18F00EDD4();
            v18 = v21;
          }

          v18[2] = v17 + 1;
          v14 = v18;
          v19 = &v18[2 * v17];
          v19[4] = v16;
          v19[5] = v15;
        }
      }

      v13 += 32;
      --v12;
    }

    while (v12);

    v2 = v41;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v24 = 0;
  v41 = v14[2];
  LODWORD(v40) = *MEMORY[0x1E6968F70];
  v38 = (v2 + 8);
  v39 = (v2 + 104);
  v25 = (v45 + 8);
  v37 = v45 + 32;
  v26 = v14 + 5;
  v22 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v41 == v24)
    {

      return v22;
    }

    if (v24 >= v14[2])
    {
      break;
    }

    v27 = v14;
    v28 = v4;
    v30 = *(v26 - 1);
    v29 = *v26;

    v31 = [v44 URL];
    sub_18F09327C();

    *&v51[0] = v30;
    *(&v51[0] + 1) = v29;
    v33 = v42;
    v32 = v43;
    (*v39)(v42, v40, v43);
    sub_18EFB30C8();
    sub_18F0932AC();
    v34 = v33;
    v4 = v28;
    (*v38)(v34, v32);
    (*v25)(v7, v28);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_18F00ECBC(0, *(v22 + 16) + 1, 1, v22);
    }

    v36 = *(v22 + 16);
    v35 = *(v22 + 24);
    if (v36 >= v35 >> 1)
    {
      v22 = sub_18F00ECBC(v35 > 1, v36 + 1, 1, v22);
    }

    *(v22 + 16) = v36 + 1;
    result = (*(v45 + 32))(v22 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v36, v46, v28);
    v26 += 2;
    ++v24;
    v14 = v27;
  }

  __break(1u);
  return result;
}

id sub_18F049C20()
{
  v36 = sub_18F0932BC();
  v34 = *(v36 - 8);
  v1 = MEMORY[0x1EEE9AC00](v36);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v31 - v3;
  v4 = [v0 entitlements];
  v5 = sub_18F093B5C();
  sub_18EF825F4(0, &unk_1ED5FEC88, 0x1E695DEC8);
  v6 = [v4 objectForKey:v5 ofClass:swift_getObjCClassFromMetadata()];

  if (v6)
  {
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (!*(&v40 + 1))
  {
    sub_18EF82E14(v41, &qword_1EACB9180, &qword_18F09BD30);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8798, &qword_18F0A1388);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(v37 + 16);
  if (v7)
  {
    v8 = v37 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_18EFB6E2C(v8, v41);
      sub_18EF914D4(v41, &v39);
      if (swift_dynamicCast())
      {
        v10 = v38;
        if (v38)
        {
          v11 = v37;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_18F00EDD4();
            v9 = v14;
          }

          v12 = v9[2];
          if (v12 >= v9[3] >> 1)
          {
            sub_18F00EDD4();
            v9 = v15;
          }

          v9[2] = v12 + 1;
          v13 = &v9[2 * v12];
          v13[4] = v11;
          v13[5] = v10;
        }
      }

      v8 += 32;
      --v7;
    }

    while (v7);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v18 = 0;
  v32 = v9[2];
  v19 = (v34 + 32);
  v20 = v9 + 5;
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v32 == v18)
    {

      return v16;
    }

    if (v18 >= v9[2])
    {
      break;
    }

    v22 = *(v20 - 1);
    v21 = *v20;

    result = BSSystemRootDirectory();
    if (!result)
    {
      goto LABEL_32;
    }

    v23 = result;
    v24 = sub_18F093B8C();
    v26 = v25;

    *&v41[0] = v24;
    *(&v41[0] + 1) = v26;

    MEMORY[0x193AD8780](v22, v21);

    v27 = v33;
    sub_18F09323C();

    v28 = *v19;
    (*v19)(v35, v27, v36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_18F00ECBC(0, *(v16 + 16) + 1, 1, v16);
    }

    v30 = *(v16 + 16);
    v29 = *(v16 + 24);
    if (v30 >= v29 >> 1)
    {
      v16 = sub_18F00ECBC(v29 > 1, v30 + 1, 1, v16);
    }

    *(v16 + 16) = v30 + 1;
    result = v28((v16 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v30), v35, v36);
    v20 += 2;
    ++v18;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_18F04A0B4()
{
  v0 = sub_18F0496D8();
  v1 = sub_18F049C20();
  sub_18F00D964(v1);
  return v0;
}

NSObject *sub_18F04A0F4()
{
  v2 = v1;
  v60 = sub_18F0932BC();
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18EF7FDF8(v0);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    if (qword_1ED5FEEB8 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      v8 = sub_18F093A2C();
      __swift_project_value_buffer(v8, qword_1ED60C1C0);

      v9 = sub_18F093A0C();
      v10 = sub_18F093EDC();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v70 = v12;
        *v11 = 136446210;
        v13 = sub_18F0462AC(v6, v7, &v70);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_18EF7E000, v9, v10, "Processing embedded extension records for %{public}s...", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x193AD9AF0](v12, -1, -1);
        MEMORY[0x193AD9AF0](v11, -1, -1);
      }

      else
      {
      }

      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      v7 = MEMORY[0x1E69E7CC0];
      if (!v21)
      {
        return v7;
      }

      v22 = [v21 applicationExtensionRecords];
      v23 = sub_18EF825F4(0, &qword_1EACB7168, 0x1E69635D0);
      sub_18F04C338();
      v24 = sub_18F093E6C();

      v70 = v7;
      v52 = v24;
      v53 = v2;
      v54 = v23;
      if ((v24 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_18F093FFC();
        sub_18F093E8C();
        v26 = v65;
        v25 = v66;
        v27 = v67;
        v28 = v68;
        v6 = v69;
      }

      else
      {
        v29 = -1 << *(v24 + 32);
        v25 = v24 + 56;
        v27 = ~v29;
        v30 = -v29;
        v31 = v30 < 64 ? ~(-1 << v30) : -1;
        v6 = v31 & *(v24 + 56);

        v28 = 0;
        v26 = v24;
      }

      v51 = v27;
      v58 = v62 + 32;
      v57 = xmmword_18F09BCC0;
      v55 = v26;
      v56 = v25;
      if (v26 < 0)
      {
        break;
      }

LABEL_19:
      v32 = v28;
      v33 = v6;
      v2 = v28;
      if (v6)
      {
LABEL_23:
        v34 = (v33 - 1) & v33;
        v7 = *(*(v26 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v33)))));
        if (v7)
        {
          goto LABEL_27;
        }

LABEL_39:
        sub_18EFAE608(v26);

        return v70;
      }

      while (1)
      {
        v2 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v2 >= ((v27 + 64) >> 6))
        {
          goto LABEL_39;
        }

        v33 = *(v25 + 8 * v2);
        ++v32;
        if (v33)
        {
          goto LABEL_23;
        }
      }

LABEL_43:
      __break(1u);
    }

    while (1)
    {
      v35 = sub_18F09400C();
      if (!v35)
      {
        goto LABEL_39;
      }

      v63 = v35;
      swift_dynamicCast();
      v7 = v64;
      v2 = v28;
      v34 = v6;
      if (!v64)
      {
        goto LABEL_39;
      }

LABEL_27:
      v36 = LSBundleRecord.effectiveBundleIdentifier.getter();
      if (v36)
      {
        v37 = v36;
        v61 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85C8, &qword_18F0A1210);
        v38 = v62;
        v39 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = v57;
        v41 = [v7 URL:v51];
        v42 = v59;
        sub_18F09327C();

        (*(v38 + 32))(v40 + v39, v42, v60);
        v43 = sub_18F04A0B4();
        v64 = v40;
        sub_18F00D964(v43);
        v44 = sub_18F093DBC();

        v45 = [v37 bundleMetadataForURLs_];

        sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
        v6 = sub_18F093DCC();

        v46 = sub_18EFA0A74(v6);
        for (i = 0; ; ++i)
        {
          if (v46 == i)
          {
            sub_18F00DA68();
            v26 = v55;
            v25 = v56;
            v34 = v61;
            goto LABEL_37;
          }

          if ((v6 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x193AD8BA0](i, v6);
          }

          else
          {
            if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v48 = *(v6 + 8 * i + 32);
          }

          v49 = v48;
          if (__OFADD__(i, 1))
          {
            break;
          }

          sub_18F049174(v7);
        }

        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_37:

      v28 = v2;
      v6 = v34;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v14 = sub_18F093A2C();
  __swift_project_value_buffer(v14, qword_1ED60C1C0);
  v15 = v0;
  v7 = sub_18F093A0C();
  v16 = sub_18F093ECC();

  if (os_log_type_enabled(v7, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v15;
    *v18 = v15;
    v19 = v15;
    _os_log_impl(&dword_18EF7E000, v7, v16, "Undefined bundle identifier for %@", v17, 0xCu);
    sub_18EF82E14(v18, &qword_1EACB97F8, &qword_18F0AC398);
    MEMORY[0x193AD9AF0](v18, -1, -1);
    MEMORY[0x193AD9AF0](v17, -1, -1);
  }

  sub_18F04C44C();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();
  return v7;
}

unint64_t sub_18F04A7EC()
{
  v2 = v1;
  v3 = sub_18EF7FDF8(v0);
  if (v4)
  {
    v70 = v3;
    v71 = v4;
    if (qword_1ED5FEEB8 != -1)
    {
      goto LABEL_94;
    }

    while (1)
    {
      v5 = sub_18F093A2C();
      __swift_project_value_buffer(v5, qword_1ED60C1C0);

      v6 = sub_18F093A0C();
      v7 = sub_18F093EDC();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v74[0] = v9;
        *v8 = 136446210;
        *(v8 + 4) = sub_18F0462AC(v70, v71, v74);
        _os_log_impl(&dword_18EF7E000, v6, v7, "Processing associated standalone extension records for %{public}s...", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x193AD9AF0](v9, -1, -1);
        MEMORY[0x193AD9AF0](v8, -1, -1);
      }

      v10 = v2;
      if (qword_1EACB6E10 != -1)
      {
        swift_once();
      }

      v2 = qword_1EACB6E18;
      v74[0] = MEMORY[0x1E69E7CC0];
      v11 = sub_18EFA0A74(qword_1EACB6E18);
      for (i = 0; ; ++i)
      {
        if (v11 == i)
        {
          v2 = v74[0];
          v19 = sub_18EFA0A74(v74[0]);
          v20 = 0;
          v73 = MEMORY[0x1E69E7CC0];
          v21 = v10;
          while (v19 != v20)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x193AD8BA0](v20, v2);
            }

            else
            {
              if (v20 >= *(v2 + 16))
              {
                goto LABEL_86;
              }

              v22 = *(v2 + 8 * v20 + 32);
            }

            v23 = v22;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_85;
            }

            v74[0] = v22;
            sub_18F04B088(v74, v70, v71, &v75);

            v24 = v75;
            if (v75)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_18F00EEA4();
                v73 = v26;
              }

              v25 = *(v73 + 16);
              if (v25 >= *(v73 + 24) >> 1)
              {
                sub_18F00EEA4();
                v73 = v27;
              }

              *(v73 + 16) = v25 + 1;
              *(v73 + 8 * v25 + 32) = v24;
            }

            ++v20;
          }

          v28 = 0;
          v2 = MEMORY[0x1E69E7CC0];
          v68 = *(v73 + 16);
          while (1)
          {
            if (v28 == v68)
            {

              if (sub_18EFA0A74(v2))
              {
              }

              else
              {

                v57 = sub_18F093A0C();
                v58 = sub_18F093EDC();

                if (os_log_type_enabled(v57, v58))
                {
                  v59 = swift_slowAlloc();
                  v60 = swift_slowAlloc();
                  v74[0] = v60;
                  *v59 = 136446210;
                  v61 = v2;
                  v62 = sub_18F0462AC(v70, v71, v74);

                  *(v59 + 4) = v62;
                  v2 = v61;
                  _os_log_impl(&dword_18EF7E000, v57, v58, "→ No standalone extensions found for %{public}s", v59, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v60);
                  MEMORY[0x193AD9AF0](v60, -1, -1);
                  MEMORY[0x193AD9AF0](v59, -1, -1);
                }

                else
                {
                }
              }

              return v2;
            }

            if (v28 >= *(v73 + 16))
            {
              goto LABEL_87;
            }

            v29 = *(v73 + 32 + 8 * v28);
            if (v29 >> 62)
            {
              v30 = sub_18F0941BC();
            }

            else
            {
              v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v31 = v2 >> 62;
            if (v2 >> 62)
            {
              v32 = sub_18F0941BC();
            }

            else
            {
              v32 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v33 = v32 + v30;
            if (__OFADD__(v32, v30))
            {
              goto LABEL_88;
            }

            if (swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v31)
            {
              goto LABEL_51;
            }

LABEL_52:
            v2 = sub_18F09409C();
            v34 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_53:
            v72 = v30;
            ++v28;
            v35 = *(v34 + 16);
            v36 = (*(v34 + 24) >> 1) - v35;
            v37 = v34 + 8 * v35;
            v69 = v34;
            if (v29 >> 62)
            {
              v39 = sub_18F0941BC();
              if (v39)
              {
                v40 = v39;
                v41 = sub_18F0941BC();
                if (v36 < v41)
                {
                  goto LABEL_92;
                }

                if (v40 < 1)
                {
                  goto LABEL_93;
                }

                v64 = v41;
                v65 = v28;
                v66 = v2;
                v67 = v21;
                v42 = v37 + 32;
                sub_18F04C4A0();
                for (j = 0; j != v40; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB85B0, &qword_18F0A1200);
                  v44 = sub_18F017C80(v74, j, v29);
                  v46 = *v45;
                  (v44)(v74, 0);
                  *(v42 + 8 * j) = v46;
                }

                v2 = v66;
                v21 = v67;
                v38 = v64;
                v28 = v65;
                goto LABEL_63;
              }
            }

            else
            {
              v38 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v38)
              {
                if (v36 < v38)
                {
                  goto LABEL_91;
                }

                sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
                swift_arrayInitWithCopy();
LABEL_63:

                if (v38 < v72)
                {
                  goto LABEL_89;
                }

                if (v38 > 0)
                {
                  v47 = *(v69 + 16);
                  v48 = __OFADD__(v47, v38);
                  v49 = v47 + v38;
                  if (v48)
                  {
                    goto LABEL_90;
                  }

                  *(v69 + 16) = v49;
                }

                continue;
              }
            }

            if (v30 > 0)
            {
              goto LABEL_89;
            }
          }

          if (!v31)
          {
            v34 = v2 & 0xFFFFFFFFFFFFFF8;
            if (v33 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }

LABEL_51:
          sub_18F0941BC();
          goto LABEL_52;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x193AD8BA0](i, v2);
        }

        else
        {
          if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_84;
          }

          v13 = *(v2 + 8 * i + 32);
        }

        v14 = v13;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v15 = LSApplicationExtensionRecord.attributionBundleIdentifier.getter();
        if (!v16)
        {
          goto LABEL_19;
        }

        if (v15 == v70 && v16 == v71)
        {
        }

        else
        {
          v18 = sub_18F09444C();

          if ((v18 & 1) == 0)
          {
LABEL_19:

            continue;
          }
        }

        sub_18F0940FC();
        sub_18F09412C();
        sub_18F09413C();
        sub_18F09410C();
      }

      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      swift_once();
    }
  }

  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v50 = sub_18F093A2C();
  __swift_project_value_buffer(v50, qword_1ED60C1C0);
  v51 = v0;
  v52 = sub_18F093A0C();
  v53 = sub_18F093ECC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v2 = v51;
    v55 = v51;
    _os_log_impl(&dword_18EF7E000, v52, v53, "Undefined bundle identifier for %@", v54, 0xCu);
    sub_18EF82E14(v2, &qword_1EACB97F8, &qword_18F0AC398);
    MEMORY[0x193AD9AF0](v2, -1, -1);
    MEMORY[0x193AD9AF0](v54, -1, -1);
  }

  sub_18F04C44C();
  swift_allocError();
  *v56 = 0;
  swift_willThrow();
  return v2;
}

void sub_18F04B088(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v48 = a2;
  v8 = sub_18F0932BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  v15 = *a1;
  v16 = sub_18EF7FDF8(*a1);
  if (v17)
  {
    v18 = v17;
    v43 = v9;
    v19 = v16;
    v45 = v8;
    v46 = a4;
    if (qword_1ED5FEEB8 != -1)
    {
      swift_once();
    }

    v44 = v11;
    v47 = v4;
    v20 = sub_18F093A2C();
    __swift_project_value_buffer(v20, qword_1ED60C1C0);

    v21 = sub_18F093A0C();
    v22 = sub_18F093EDC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49 = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_18F0462AC(v19, v18, &v49);
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_18F0462AC(v48, a3, &v49);
      _os_log_impl(&dword_18EF7E000, v21, v22, "→ Found standalone extension %{public}s attributed to %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD9AF0](v24, -1, -1);
      MEMORY[0x193AD9AF0](v23, -1, -1);
    }

    v25 = [v15 URL];
    sub_18F09327C();

    v26 = v45;
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v45);
    v27 = objc_allocWithZone(LNEffectiveBundleIdentifier);
    v28 = sub_18EF7FCF0(1, v19, v18, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85C8, &qword_18F0A1210);
    v29 = v43;
    v30 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_18F09BCC0;
    v32 = [v15 URL];
    v33 = v44;
    sub_18F09327C();

    (*(v29 + 32))(v31 + v30, v33, v26);
    v34 = sub_18F04A0B4();
    v49 = v31;
    sub_18F00D964(v34);
    v35 = sub_18F093DBC();

    v36 = [v28 bundleMetadataForURLs_];

    sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
    v37 = sub_18F093DCC();

    a4 = v46;
  }

  else
  {
    if (qword_1ED5FEEB8 != -1)
    {
      swift_once();
    }

    v38 = sub_18F093A2C();
    __swift_project_value_buffer(v38, qword_1ED60C1C0);

    v39 = sub_18F093A0C();
    v40 = sub_18F093ECC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_18F0462AC(v48, a3, &v49);
      _os_log_impl(&dword_18EF7E000, v39, v40, "→ Got a nil bundleIdentifier while enumerating standalone extensions attributed to %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x193AD9AF0](v42, -1, -1);
      MEMORY[0x193AD9AF0](v41, -1, -1);
    }

    v37 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v37;
}

unint64_t sub_18F04B5AC()
{
  v3 = v1;
  v67 = sub_18EF7FDF8(v0);
  if (v4)
  {
    v5 = v4;
    if (qword_1ED5FEEB8 != -1)
    {
      goto LABEL_78;
    }

    while (1)
    {
      v6 = sub_18F093A2C();
      __swift_project_value_buffer(v6, qword_1ED60C1C0);

      v7 = sub_18F093A0C();
      v8 = sub_18F093EDC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v66[0] = v10;
        *v9 = 136446210;
        *(v9 + 4) = sub_18F0462AC(v67, v5, v66);
        _os_log_impl(&dword_18EF7E000, v7, v8, "Processing associated daemon records for %{public}s...", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x193AD9AF0](v10, -1, -1);
        MEMORY[0x193AD9AF0](v9, -1, -1);
      }

      v58 = v3;
      if (qword_1ED5FDB08 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_1ED5FDAE0;
      v66[0] = MEMORY[0x1E69E7CC0];
      v12 = sub_18EFA0A74(qword_1ED5FDAE0);
      v13 = v11 & 0xC000000000000001;
      v14 = v11 & 0xFFFFFFFFFFFFFF8;

      v15 = 0;
      v3 = &OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier;
      v64 = v11;
      while (1)
      {
        if (v12 == v15)
        {

          v3 = v66[0];
          v21 = 0;
          v61 = v66[0] & 0xC000000000000001;
          v62 = sub_18EFA0A74(v66[0]);
          v63 = v3;
          v60 = v3 + 4;
          v2 = MEMORY[0x1E69E7CC0];
          v22 = v58;
          while (1)
          {
            if (v21 == v62)
            {

              return v2;
            }

            if (v61)
            {
              v23 = MEMORY[0x193AD8BA0](v21, v63);
            }

            else
            {
              if (v21 >= v63[2])
              {
                goto LABEL_71;
              }

              v23 = v60[v21];
            }

            v24 = v23;
            v25 = __OFADD__(v21, 1);
            v26 = v21 + 1;
            if (v25)
            {
              goto LABEL_70;
            }

            v67 = v26;
            v27 = DaemonRecord.effectiveBundleIdentifier.getter();
            swift_beginAccess();
            sub_18F0932BC();

            v28 = sub_18F093DBC();

            v29 = [v27 bundleMetadataForURLs_];

            v5 = sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
            v30 = sub_18F093DCC();

            v3 = (v30 >> 62);
            if (v30 >> 62)
            {
              v31 = sub_18F0941BC();
            }

            else
            {
              v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v32 = v2 >> 62;
            if (v2 >> 62)
            {
              v33 = sub_18F0941BC();
            }

            else
            {
              v33 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v34 = v33 + v31;
            if (__OFADD__(v33, v31))
            {
              goto LABEL_72;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v32)
            {
              goto LABEL_40;
            }

            v35 = v2 & 0xFFFFFFFFFFFFFF8;
            if (v34 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_41;
            }

            v65 = v2;
LABEL_42:
            v36 = *(v35 + 16);
            v37 = (*(v35 + 24) >> 1) - v36;
            v38 = v35 + 8 * v36;
            if (v3)
            {
              v39 = sub_18F0941BC();
              if (!v39)
              {
                goto LABEL_56;
              }

              v5 = v39;
              v40 = sub_18F0941BC();
              if (v37 < v40)
              {
                goto LABEL_76;
              }

              if (v5 < 1)
              {
                goto LABEL_77;
              }

              v57 = v40;
              v59 = v22;
              v41 = v38 + 32;
              sub_18F04C4A0();
              for (i = 0; i != v5; ++i)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB85B0, &qword_18F0A1200);
                v43 = sub_18F017C80(v66, i, v30);
                v45 = *v44;
                (v43)(v66, 0);
                *(v41 + 8 * i) = v45;
              }

              v22 = v59;
              v3 = v57;
LABEL_52:

              v2 = v65;
              v21 = v67;
              if (v3 < v31)
              {
                goto LABEL_73;
              }

              if (v3 > 0)
              {
                v46 = *(v35 + 16);
                v25 = __OFADD__(v46, v3);
                v47 = v3 + v46;
                if (v25)
                {
                  goto LABEL_74;
                }

                *(v35 + 16) = v47;
              }
            }

            else
            {
              v3 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v3)
              {
                if (v37 < v3)
                {
                  goto LABEL_75;
                }

                swift_arrayInitWithCopy();
                goto LABEL_52;
              }

LABEL_56:

              v2 = v65;
              v21 = v67;
              if (v31 > 0)
              {
                goto LABEL_73;
              }
            }
          }

          if (v32)
          {
LABEL_40:
            sub_18F0941BC();
          }

LABEL_41:
          v65 = sub_18F09409C();
          v35 = v65 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_42;
        }

        if (v13)
        {
          v16 = MEMORY[0x193AD8BA0](v15, v11);
        }

        else
        {
          if (v15 >= *(v14 + 16))
          {
            goto LABEL_69;
          }

          v16 = *(v11 + 8 * v15 + 32);
        }

        v17 = v16;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v18 = &v16[OBJC_IVAR___swift_DaemonRecord_attributionBundleIdentifier];
        swift_beginAccess();
        v19 = *(v18 + 1);
        if (v19 && (*v18 == v67 ? (v20 = v19 == v5) : (v20 = 0), v20 || (sub_18F09444C() & 1) != 0))
        {
          sub_18F0940FC();
          sub_18F09412C();
          v11 = v64;
          sub_18F09413C();
          sub_18F09410C();
        }

        else
        {
        }

        ++v15;
      }

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
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      swift_once();
    }
  }

  if (qword_1ED5FEEB8 != -1)
  {
    swift_once();
  }

  v48 = sub_18F093A2C();
  __swift_project_value_buffer(v48, qword_1ED60C1C0);
  v49 = v0;
  v50 = sub_18F093A0C();
  v51 = sub_18F093ECC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    *(v52 + 4) = v49;
    *v53 = v49;
    v54 = v49;
    _os_log_impl(&dword_18EF7E000, v50, v51, "Undefined bundle identifier for %@", v52, 0xCu);
    sub_18EF82E14(v53, &qword_1EACB97F8, &qword_18F0AC398);
    MEMORY[0x193AD9AF0](v53, -1, -1);
    MEMORY[0x193AD9AF0](v52, -1, -1);
  }

  sub_18F04C44C();
  swift_allocError();
  *v55 = 0;
  swift_willThrow();
  return v2;
}

uint64_t sub_18F04BD64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18F093B5C();
  v5 = sub_18F0406E0(0x74636172747865, 0xE700000000000000, 0x646567616B636170, 0xEB00000000617461, v4, a1);

  if (v5)
  {
    sub_18F09327C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_18F0932BC();

  return __swift_storeEnumTagSinglePayload(a2, v6, 1, v7);
}

LNPackageMetadata __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNPackageMetadata.init(from:)(NSBundle from)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFrom:from.super.isa error:v8];
  if (v2)
  {
    v3 = v8[0];
  }

  else
  {
    v4 = v8[0];
    sub_18F09318C();

    swift_willThrow();
  }

  v6 = v2;
  result._includes = v5;
  result.super.isa = v6;
  return result;
}

id LNPackageMetadata.init(from:)(id a1)
{
  v3 = v1;
  v29[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_18F0932BC();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_42();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  sub_18F04BD64(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_18EF82E14(v7, &qword_1EACB72C8, &qword_18F0AAE80);
    v18 = sub_18F093DBC();
    v19 = [v1 initWithIncludes_];
  }

  else
  {
    v27 = v2;
    (*(v10 + 32))(v17, v7, v8);
    v20 = sub_18F09324C();
    v21 = [a1 bundleURL];
    sub_18F09327C();

    v22 = sub_18F09324C();
    v28 = a1;
    v23 = *(v10 + 8);
    v23(v14, v8);
    v29[0] = 0;
    v19 = [v3 _initWithMetadataFileURL_bundleURL_error_];

    if (!v19)
    {
      v26 = v29[0];
      OUTLINED_FUNCTION_284();
      sub_18F09318C();

      swift_willThrow();
      v23(v17, v8);
      return v19;
    }

    v24 = v29[0];
    v23(v17, v8);
    a1 = v28;
  }

  return v19;
}

id sub_18F04C26C(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_18F093B5C();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifierOfSystemPlaceholder:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_18F09318C();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_18F04C338()
{
  result = qword_1EACB70F0;
  if (!qword_1EACB70F0)
  {
    sub_18EF825F4(255, &qword_1EACB7168, 0x1E69635D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB70F0);
  }

  return result;
}

id sub_18F04C3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_18F093B5C();

  v11 = sub_18F093B5C();

  v12 = [a7 URLForResource:v10 withExtension:v11 subdirectory:a5 inBundleWithURL:a6];

  return v12;
}

unint64_t sub_18F04C44C()
{
  result = qword_1EACB6B28;
  if (!qword_1EACB6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B28);
  }

  return result;
}

unint64_t sub_18F04C4A0()
{
  result = qword_1EACB6C48;
  if (!qword_1EACB6C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB85B0, &qword_18F0A1200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleMetadataExtractionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F04C5E8()
{
  result = qword_1EACB9820;
  if (!qword_1EACB9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9820);
  }

  return result;
}

id sub_18F04C63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v58 = a6;
  v59 = a7;
  v56 = a1;
  v57 = a2;
  v12 = sub_18F09390C();
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9828, &qword_18F0AC560);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85F0, &qword_18F0A1230);
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v55 = v8;
  v23(v20, v8, v21);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
  sub_18EFBA344(v20, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v21) == 1)
  {
    sub_18EFBB83C(v18);
    v24 = v58;
    v25 = v59;
    v26 = a4;
LABEL_15:
    sub_18F09357C();
    v46 = v62;
    __swift_project_boxed_opaque_existential_1Tm(v61, v62);
    v47 = sub_18F0345A0(v56, v57, a3, v26, a5, v24, v25, v46);
    v45 = [objc_allocWithZone(LNActionConfigurationSwitchCase) initWithDefaultConfiguration_];

    goto LABEL_16;
  }

  v54 = a4;
  v27 = sub_18F09358C();
  v28 = *(v22 + 8);
  v53 = v21;
  v28(v18, v21);
  v29 = *(v27 + 16);
  if (v29)
  {
    v50 = a3;
    v51 = a5;
    v52 = v20;
    v61[0] = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    v30 = v12;
    v31 = v60 + 16;
    v60 = *(v60 + 16);
    v32 = *(v31 + 64);
    v49[1] = v27;
    v33 = v27 + ((v32 + 32) & ~v32);
    v34 = *(v31 + 56);
    do
    {
      (v60)(v14, v33, v30);
      sub_18EFBA3B4();
      (*(v31 - 8))(v14, v30);
      sub_18F0940FC();
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      v33 += v34;
      --v29;
    }

    while (v29);

    v35 = v61[0];
    a5 = v51;
    v20 = v52;
    v24 = v58;
    v25 = v59;
    a3 = v50;
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
    v24 = v58;
    v25 = v59;
  }

  v36 = sub_18EFA0A74(v35);
  v26 = v54;
  if (!v36)
  {

    goto LABEL_15;
  }

  sub_18EFBB7B4();
  if ((v35 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x193AD8BA0](0, v35);
  }

  else
  {
    v37 = *(v35 + 32);
  }

  v38 = v37;
  v39 = [v37 valueType];

  if (!v39)
  {

    v25 = v59;
    goto LABEL_15;
  }

  v60 = sub_18EF825F4(0, &qword_1ED5FD648, off_1E72AFE60);
  v40 = objc_allocWithZone(LNValue);
  v41 = v39;
  v42 = sub_18EFBB69C(v35, v41);
  sub_18F09357C();
  v43 = v62;
  __swift_project_boxed_opaque_existential_1Tm(v61, v62);
  v44 = sub_18F0345A0(v56, v57, a3, v26, a5, v24, v59, v43);
  v45 = sub_18EFBB7E0(v42, v44);

LABEL_16:
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  sub_18EFBB83C(v20);
  return v45;
}

id sub_18F04CB18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  result = sub_18F04C63C(a1, a2, a3, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

__CFString *LNShortcutTileColorAsString(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"red";
  }

  else
  {
    return off_1E72B0D18[a1 - 1];
  }
}

__CFString *LNBundleMetadataVersionAsString(uint64_t a1)
{
  if (a1)
  {
    return @"1.0";
  }

  else
  {
    return @"0.0";
  }
}

__CFString *LNPrimitiveValueTypeIdentifierAsString(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"String";
  }

  else
  {
    return off_1E72B0D88[a1 - 1];
  }
}

__CFString *LNIntentsValueTypeIdentifierAsString(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"Application";
  }

  else
  {
    return off_1E72B0DE8[a1 - 1];
  }
}

id getLNLogCategoryQuery()
{
  if (getLNLogCategoryQuery_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryQuery_onceToken, &__block_literal_global_11);
  }

  v1 = getLNLogCategoryQuery_logger;

  return v1;
}

uint64_t __getLNLogCategoryQuery_block_invoke()
{
  getLNLogCategoryQuery_logger = os_log_create(LNLogSubsystem, "Query");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryView()
{
  if (getLNLogCategoryView_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryView_onceToken, &__block_literal_global_14_4019);
  }

  v1 = getLNLogCategoryView_logger;

  return v1;
}

uint64_t __getLNLogCategoryView_block_invoke()
{
  getLNLogCategoryView_logger = os_log_create(LNLogSubsystem, "View");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategorySecurity()
{
  if (getLNLogCategorySecurity_onceToken != -1)
  {
    dispatch_once(&getLNLogCategorySecurity_onceToken, &__block_literal_global_20_4023);
  }

  v1 = getLNLogCategorySecurity_logger;

  return v1;
}

uint64_t __getLNLogCategorySecurity_block_invoke()
{
  getLNLogCategorySecurity_logger = os_log_create(LNLogSubsystem, "Security");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryVocabulary()
{
  if (getLNLogCategoryVocabulary_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryVocabulary_onceToken, &__block_literal_global_23);
  }

  v1 = getLNLogCategoryVocabulary_logger;

  return v1;
}

uint64_t __getLNLogCategoryVocabulary_block_invoke()
{
  getLNLogCategoryVocabulary_logger = os_log_create(LNLogSubsystem, "Vocabulary");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategorySandbox()
{
  if (getLNLogCategorySandbox_onceToken != -1)
  {
    dispatch_once(&getLNLogCategorySandbox_onceToken, &__block_literal_global_26_4025);
  }

  v1 = getLNLogCategorySandbox_logger;

  return v1;
}

uint64_t __getLNLogCategorySandbox_block_invoke()
{
  getLNLogCategorySandbox_logger = os_log_create(LNLogSubsystem, "Sandbox");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryExtensionMediator()
{
  if (getLNLogCategoryExtensionMediator_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryExtensionMediator_onceToken, &__block_literal_global_32);
  }

  v1 = getLNLogCategoryExtensionMediator_logger;

  return v1;
}

uint64_t __getLNLogCategoryExtensionMediator_block_invoke()
{
  getLNLogCategoryExtensionMediator_logger = os_log_create(LNLogSubsystem, "ExtensionMediator");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryDaemonMediator()
{
  if (getLNLogCategoryDaemonMediator_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryDaemonMediator_onceToken, &__block_literal_global_35);
  }

  v1 = getLNLogCategoryDaemonMediator_logger;

  return v1;
}

uint64_t __getLNLogCategoryDaemonMediator_block_invoke()
{
  getLNLogCategoryDaemonMediator_logger = os_log_create(LNLogSubsystem, "DaemonMediator");

  return MEMORY[0x1EEE66BB8]();
}

id getLNLogCategoryScenes()
{
  if (getLNLogCategoryScenes_onceToken != -1)
  {
    dispatch_once(&getLNLogCategoryScenes_onceToken, &__block_literal_global_38);
  }

  v1 = getLNLogCategoryScenes_logger;

  return v1;
}

uint64_t __getLNLogCategoryScenes_block_invoke()
{
  getLNLogCategoryScenes_logger = os_log_create(LNLogSubsystem, "Scenes");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *LNIdentifierScopeAsString(uint64_t a1)
{
  v1 = @"Undefined";
  if (a1 == 1)
  {
    v1 = @"Ephemeral";
  }

  if (a1 == 2)
  {
    return @"Local";
  }

  else
  {
    return v1;
  }
}

void sub_18F0758EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LinkServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t LNMeasurementUnitTypeOfUnit(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 3;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = 4;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v2 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v2 = 6;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v2 = 7;
              }

              else
              {
                v2 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

id LNMeasurementUnitTypeToUnit(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = unitsOfUnitType(a1);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __LNMeasurementUnitTypeToUnit_block_invoke;
  v10[3] = &unk_1E72B1338;
  v5 = v3;
  v11 = v5;
  v6 = [v4 if_firstObjectPassingTest:v10];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AFD0]) initWithSymbol:v5];
  }

  v8 = v7;

  return v8;
}

id unitsOfUnitType(uint64_t a1)
{
  v127[2] = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 1:
      v1 = [MEMORY[0x1E696B058] megameters];
      v112[0] = v1;
      v104 = [MEMORY[0x1E696B058] kilometers];
      v112[1] = v104;
      v102 = [MEMORY[0x1E696B058] hectometers];
      v112[2] = v102;
      v101 = [MEMORY[0x1E696B058] decameters];
      v112[3] = v101;
      v100 = [MEMORY[0x1E696B058] meters];
      v112[4] = v100;
      v99 = [MEMORY[0x1E696B058] decimeters];
      v112[5] = v99;
      v98 = [MEMORY[0x1E696B058] centimeters];
      v112[6] = v98;
      v97 = [MEMORY[0x1E696B058] millimeters];
      v112[7] = v97;
      v96 = [MEMORY[0x1E696B058] micrometers];
      v112[8] = v96;
      v95 = [MEMORY[0x1E696B058] nanometers];
      v112[9] = v95;
      v94 = [MEMORY[0x1E696B058] picometers];
      v112[10] = v94;
      v93 = [MEMORY[0x1E696B058] inches];
      v112[11] = v93;
      v92 = [MEMORY[0x1E696B058] feet];
      v112[12] = v92;
      v91 = [MEMORY[0x1E696B058] yards];
      v112[13] = v91;
      v2 = [MEMORY[0x1E696B058] miles];
      v112[14] = v2;
      v3 = [MEMORY[0x1E696B058] scandinavianMiles];
      v112[15] = v3;
      v4 = [MEMORY[0x1E696B058] lightyears];
      v112[16] = v4;
      v5 = [MEMORY[0x1E696B058] nauticalMiles];
      v112[17] = v5;
      v6 = [MEMORY[0x1E696B058] fathoms];
      v112[18] = v6;
      v7 = [MEMORY[0x1E696B058] furlongs];
      v112[19] = v7;
      v8 = [MEMORY[0x1E696B058] astronomicalUnits];
      v112[20] = v8;
      v9 = [MEMORY[0x1E696B058] parsecs];
      v112[21] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:22];

      goto LABEL_37;
    case 2:
      v1 = [MEMORY[0x1E696B060] kilograms];
      v111[0] = v1;
      v104 = [MEMORY[0x1E696B060] grams];
      v111[1] = v104;
      v102 = [MEMORY[0x1E696B060] decigrams];
      v111[2] = v102;
      v101 = [MEMORY[0x1E696B060] centigrams];
      v111[3] = v101;
      v100 = [MEMORY[0x1E696B060] milligrams];
      v111[4] = v100;
      v99 = [MEMORY[0x1E696B060] micrograms];
      v111[5] = v99;
      v98 = [MEMORY[0x1E696B060] nanograms];
      v111[6] = v98;
      v97 = [MEMORY[0x1E696B060] picograms];
      v111[7] = v97;
      v45 = [MEMORY[0x1E696B060] ounces];
      v111[8] = v45;
      v46 = [MEMORY[0x1E696B060] poundsMass];
      v111[9] = v46;
      v47 = [MEMORY[0x1E696B060] stones];
      v111[10] = v47;
      v48 = [MEMORY[0x1E696B060] metricTons];
      v111[11] = v48;
      v49 = [MEMORY[0x1E696B060] shortTons];
      v111[12] = v49;
      v50 = [MEMORY[0x1E696B060] carats];
      v111[13] = v50;
      v51 = [MEMORY[0x1E696B060] ouncesTroy];
      v111[14] = v51;
      v52 = [MEMORY[0x1E696B060] slugs];
      v111[15] = v52;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:16];

      goto LABEL_38;
    case 3:
      v1 = [MEMORY[0x1E696B080] kelvin];
      v107[0] = v1;
      v11 = [MEMORY[0x1E696B080] celsius];
      v107[1] = v11;
      v12 = [MEMORY[0x1E696B080] fahrenheit];
      v107[2] = v12;
      v33 = MEMORY[0x1E695DEC8];
      v34 = v107;
      goto LABEL_15;
    case 4:
      v1 = [MEMORY[0x1E696B088] megaliters];
      v106[0] = v1;
      v104 = [MEMORY[0x1E696B088] kiloliters];
      v106[1] = v104;
      v102 = [MEMORY[0x1E696B088] liters];
      v106[2] = v102;
      v101 = [MEMORY[0x1E696B088] deciliters];
      v106[3] = v101;
      v100 = [MEMORY[0x1E696B088] centiliters];
      v106[4] = v100;
      v99 = [MEMORY[0x1E696B088] milliliters];
      v106[5] = v99;
      v98 = [MEMORY[0x1E696B088] cubicKilometers];
      v106[6] = v98;
      v97 = [MEMORY[0x1E696B088] cubicMeters];
      v106[7] = v97;
      v96 = [MEMORY[0x1E696B088] cubicDecimeters];
      v106[8] = v96;
      v95 = [MEMORY[0x1E696B088] cubicCentimeters];
      v106[9] = v95;
      v94 = [MEMORY[0x1E696B088] cubicMillimeters];
      v106[10] = v94;
      v93 = [MEMORY[0x1E696B088] cubicInches];
      v106[11] = v93;
      v92 = [MEMORY[0x1E696B088] cubicFeet];
      v106[12] = v92;
      v91 = [MEMORY[0x1E696B088] cubicYards];
      v106[13] = v91;
      v90 = [MEMORY[0x1E696B088] cubicMiles];
      v106[14] = v90;
      v89 = [MEMORY[0x1E696B088] acreFeet];
      v106[15] = v89;
      v88 = [MEMORY[0x1E696B088] bushels];
      v106[16] = v88;
      v87 = [MEMORY[0x1E696B088] teaspoons];
      v106[17] = v87;
      v86 = [MEMORY[0x1E696B088] tablespoons];
      v106[18] = v86;
      v85 = [MEMORY[0x1E696B088] fluidOunces];
      v106[19] = v85;
      v84 = [MEMORY[0x1E696B088] cups];
      v106[20] = v84;
      v83 = [MEMORY[0x1E696B088] pints];
      v106[21] = v83;
      v82 = [MEMORY[0x1E696B088] quarts];
      v106[22] = v82;
      v35 = [MEMORY[0x1E696B088] gallons];
      v106[23] = v35;
      v36 = [MEMORY[0x1E696B088] imperialTeaspoons];
      v106[24] = v36;
      v37 = [MEMORY[0x1E696B088] imperialTablespoons];
      v106[25] = v37;
      v38 = [MEMORY[0x1E696B088] imperialFluidOunces];
      v106[26] = v38;
      v39 = [MEMORY[0x1E696B088] imperialPints];
      v106[27] = v39;
      v40 = [MEMORY[0x1E696B088] imperialQuarts];
      v106[28] = v40;
      v41 = [MEMORY[0x1E696B088] imperialGallons];
      v106[29] = v41;
      v42 = [MEMORY[0x1E696B088] metricCups];
      v106[30] = v42;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:31];

      goto LABEL_36;
    case 5:
      v1 = [MEMORY[0x1E696B078] metersPerSecond];
      v108[0] = v1;
      v11 = [MEMORY[0x1E696B078] kilometersPerHour];
      v108[1] = v11;
      v12 = [MEMORY[0x1E696B078] milesPerHour];
      v108[2] = v12;
      v13 = [MEMORY[0x1E696B078] knots];
      v108[3] = v13;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:4];
      goto LABEL_31;
    case 6:
      v1 = [MEMORY[0x1E696B030] kilojoules];
      v117[0] = v1;
      v11 = [MEMORY[0x1E696B030] joules];
      v117[1] = v11;
      v12 = [MEMORY[0x1E696B030] kilocalories];
      v117[2] = v12;
      v13 = [MEMORY[0x1E696B030] calories];
      v117[3] = v13;
      v14 = [MEMORY[0x1E696B030] kilowattHours];
      v117[4] = v14;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v117;
      goto LABEL_20;
    case 7:
      v1 = [MEMORY[0x1E696B008] hours];
      v122[0] = v1;
      v11 = [MEMORY[0x1E696B008] minutes];
      v122[1] = v11;
      v12 = [MEMORY[0x1E696B008] seconds];
      v122[2] = v12;
      v13 = [MEMORY[0x1E696B008] milliseconds];
      v122[3] = v13;
      v14 = [MEMORY[0x1E696B008] microseconds];
      v122[4] = v14;
      v15 = [MEMORY[0x1E696B008] nanoseconds];
      v122[5] = v15;
      v16 = [MEMORY[0x1E696B008] picoseconds];
      v122[6] = v16;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:7];
      goto LABEL_22;
    case 8:
      v1 = [MEMORY[0x1E696AFD8] metersPerSecondSquared];
      v127[0] = v1;
      v11 = [MEMORY[0x1E696AFD8] gravity];
      v127[1] = v11;
      v43 = MEMORY[0x1E695DEC8];
      v44 = v127;
      goto LABEL_26;
    case 9:
      v1 = [MEMORY[0x1E696AFE0] degrees];
      v126[0] = v1;
      v11 = [MEMORY[0x1E696AFE0] arcMinutes];
      v126[1] = v11;
      v12 = [MEMORY[0x1E696AFE0] arcSeconds];
      v126[2] = v12;
      v13 = [MEMORY[0x1E696AFE0] radians];
      v126[3] = v13;
      v14 = [MEMORY[0x1E696AFE0] gradians];
      v126[4] = v14;
      v15 = [MEMORY[0x1E696AFE0] revolutions];
      v126[5] = v15;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v126;
      goto LABEL_28;
    case 10:
      v1 = [MEMORY[0x1E696AFE8] squareMegameters];
      v125[0] = v1;
      v104 = [MEMORY[0x1E696AFE8] squareKilometers];
      v125[1] = v104;
      v102 = [MEMORY[0x1E696AFE8] squareMeters];
      v125[2] = v102;
      v101 = [MEMORY[0x1E696AFE8] squareCentimeters];
      v125[3] = v101;
      v100 = [MEMORY[0x1E696AFE8] squareMillimeters];
      v125[4] = v100;
      v99 = [MEMORY[0x1E696AFE8] squareMicrometers];
      v125[5] = v99;
      v25 = [MEMORY[0x1E696AFE8] squareNanometers];
      v125[6] = v25;
      v26 = [MEMORY[0x1E696AFE8] squareInches];
      v125[7] = v26;
      v27 = [MEMORY[0x1E696AFE8] squareFeet];
      v125[8] = v27;
      v28 = [MEMORY[0x1E696AFE8] squareYards];
      v125[9] = v28;
      v29 = [MEMORY[0x1E696AFE8] squareMiles];
      v125[10] = v29;
      v30 = [MEMORY[0x1E696AFE8] acres];
      v125[11] = v30;
      v31 = [MEMORY[0x1E696AFE8] ares];
      v125[12] = v31;
      v32 = [MEMORY[0x1E696AFE8] hectares];
      v125[13] = v32;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:14];

      goto LABEL_39;
    case 11:
      v1 = [MEMORY[0x1E696AFF0] gramsPerLiter];
      v124[0] = v1;
      v11 = [MEMORY[0x1E696AFF0] milligramsPerDeciliter];
      v124[1] = v11;
      v43 = MEMORY[0x1E695DEC8];
      v44 = v124;
LABEL_26:
      v10 = [v43 arrayWithObjects:v44 count:2];
      goto LABEL_33;
    case 12:
      v1 = [MEMORY[0x1E696B000] partsPerMillion];
      v123 = v1;
      v21 = MEMORY[0x1E695DEC8];
      v22 = &v123;
      goto LABEL_24;
    case 13:
      v1 = [MEMORY[0x1E696B010] coulombs];
      v121[0] = v1;
      v11 = [MEMORY[0x1E696B010] megaampereHours];
      v121[1] = v11;
      v12 = [MEMORY[0x1E696B010] kiloampereHours];
      v121[2] = v12;
      v13 = [MEMORY[0x1E696B010] ampereHours];
      v121[3] = v13;
      v14 = [MEMORY[0x1E696B010] milliampereHours];
      v121[4] = v14;
      v15 = [MEMORY[0x1E696B010] microampereHours];
      v121[5] = v15;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v121;
LABEL_28:
      v10 = [v23 arrayWithObjects:v24 count:6];
      goto LABEL_29;
    case 14:
      v1 = [MEMORY[0x1E696B018] megaamperes];
      v120[0] = v1;
      v11 = [MEMORY[0x1E696B018] kiloamperes];
      v120[1] = v11;
      v12 = [MEMORY[0x1E696B018] amperes];
      v120[2] = v12;
      v13 = [MEMORY[0x1E696B018] milliamperes];
      v120[3] = v13;
      v14 = [MEMORY[0x1E696B018] microamperes];
      v120[4] = v14;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v120;
      goto LABEL_20;
    case 15:
      v1 = [MEMORY[0x1E696B020] megavolts];
      v119[0] = v1;
      v11 = [MEMORY[0x1E696B020] kilovolts];
      v119[1] = v11;
      v12 = [MEMORY[0x1E696B020] volts];
      v119[2] = v12;
      v13 = [MEMORY[0x1E696B020] millivolts];
      v119[3] = v13;
      v14 = [MEMORY[0x1E696B020] microvolts];
      v119[4] = v14;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v119;
      goto LABEL_20;
    case 16:
      v1 = [MEMORY[0x1E696B028] megaohms];
      v118[0] = v1;
      v11 = [MEMORY[0x1E696B028] kiloohms];
      v118[1] = v11;
      v12 = [MEMORY[0x1E696B028] ohms];
      v118[2] = v12;
      v13 = [MEMORY[0x1E696B028] milliohms];
      v118[3] = v13;
      v14 = [MEMORY[0x1E696B028] microohms];
      v118[4] = v14;
      v19 = MEMORY[0x1E695DEC8];
      v20 = v118;
LABEL_20:
      v10 = [v19 arrayWithObjects:v20 count:5];
      goto LABEL_30;
    case 17:
      v1 = [MEMORY[0x1E696B038] terahertz];
      v116[0] = v1;
      v11 = [MEMORY[0x1E696B038] gigahertz];
      v116[1] = v11;
      v12 = [MEMORY[0x1E696B038] megahertz];
      v116[2] = v12;
      v13 = [MEMORY[0x1E696B038] kilohertz];
      v116[3] = v13;
      v14 = [MEMORY[0x1E696B038] hertz];
      v116[4] = v14;
      v15 = [MEMORY[0x1E696B038] millihertz];
      v116[5] = v15;
      v16 = [MEMORY[0x1E696B038] microhertz];
      v116[6] = v16;
      v17 = [MEMORY[0x1E696B038] nanohertz];
      v116[7] = v17;
      v18 = [MEMORY[0x1E696B038] framesPerSecond];
      v116[8] = v18;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:9];

LABEL_22:
LABEL_29:

LABEL_30:
LABEL_31:

      goto LABEL_32;
    case 18:
      v1 = [MEMORY[0x1E696B040] litersPer100Kilometers];
      v115[0] = v1;
      v11 = [MEMORY[0x1E696B040] milesPerImperialGallon];
      v115[1] = v11;
      v12 = [MEMORY[0x1E696B040] milesPerGallon];
      v115[2] = v12;
      v33 = MEMORY[0x1E695DEC8];
      v34 = v115;
LABEL_15:
      v10 = [v33 arrayWithObjects:v34 count:3];
LABEL_32:

LABEL_33:
      goto LABEL_42;
    case 19:
      v1 = [MEMORY[0x1E696B048] lux];
      v114 = v1;
      v21 = MEMORY[0x1E695DEC8];
      v22 = &v114;
LABEL_24:
      v10 = [v21 arrayWithObjects:v22 count:1];
      goto LABEL_42;
    case 20:
      v1 = [MEMORY[0x1E696B050] bytes];
      v113[0] = v1;
      v104 = [MEMORY[0x1E696B050] bits];
      v113[1] = v104;
      v102 = [MEMORY[0x1E696B050] nibbles];
      v113[2] = v102;
      v101 = [MEMORY[0x1E696B050] yottabytes];
      v113[3] = v101;
      v100 = [MEMORY[0x1E696B050] zettabytes];
      v113[4] = v100;
      v99 = [MEMORY[0x1E696B050] exabytes];
      v113[5] = v99;
      v98 = [MEMORY[0x1E696B050] petabytes];
      v113[6] = v98;
      v97 = [MEMORY[0x1E696B050] terabytes];
      v113[7] = v97;
      v96 = [MEMORY[0x1E696B050] gigabytes];
      v113[8] = v96;
      v95 = [MEMORY[0x1E696B050] megabytes];
      v113[9] = v95;
      v94 = [MEMORY[0x1E696B050] kilobytes];
      v113[10] = v94;
      v93 = [MEMORY[0x1E696B050] yottabits];
      v113[11] = v93;
      v92 = [MEMORY[0x1E696B050] zettabits];
      v113[12] = v92;
      v91 = [MEMORY[0x1E696B050] exabits];
      v113[13] = v91;
      v90 = [MEMORY[0x1E696B050] petabits];
      v113[14] = v90;
      v89 = [MEMORY[0x1E696B050] terabits];
      v113[15] = v89;
      v88 = [MEMORY[0x1E696B050] gigabits];
      v113[16] = v88;
      v87 = [MEMORY[0x1E696B050] megabits];
      v113[17] = v87;
      v86 = [MEMORY[0x1E696B050] kilobits];
      v113[18] = v86;
      v85 = [MEMORY[0x1E696B050] yobibytes];
      v113[19] = v85;
      v84 = [MEMORY[0x1E696B050] zebibytes];
      v113[20] = v84;
      v83 = [MEMORY[0x1E696B050] exbibytes];
      v113[21] = v83;
      v82 = [MEMORY[0x1E696B050] pebibytes];
      v113[22] = v82;
      v81 = [MEMORY[0x1E696B050] tebibytes];
      v113[23] = v81;
      v80 = [MEMORY[0x1E696B050] gibibytes];
      v113[24] = v80;
      v79 = [MEMORY[0x1E696B050] mebibytes];
      v113[25] = v79;
      v78 = [MEMORY[0x1E696B050] kibibytes];
      v113[26] = v78;
      v69 = [MEMORY[0x1E696B050] yobibits];
      v113[27] = v69;
      v70 = [MEMORY[0x1E696B050] zebibits];
      v113[28] = v70;
      v71 = [MEMORY[0x1E696B050] exbibits];
      v113[29] = v71;
      v72 = [MEMORY[0x1E696B050] pebibits];
      v113[30] = v72;
      v73 = [MEMORY[0x1E696B050] tebibits];
      v113[31] = v73;
      v74 = [MEMORY[0x1E696B050] gibibits];
      v113[32] = v74;
      v75 = [MEMORY[0x1E696B050] mebibits];
      v113[33] = v75;
      v76 = [MEMORY[0x1E696B050] kibibits];
      v113[34] = v76;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:35];

LABEL_36:
LABEL_37:

LABEL_38:
LABEL_39:

      goto LABEL_41;
    case 21:
      v1 = [MEMORY[0x1E696B068] terawatts];
      v110[0] = v1;
      v104 = [MEMORY[0x1E696B068] gigawatts];
      v110[1] = v104;
      v103 = [MEMORY[0x1E696B068] megawatts];
      v110[2] = v103;
      v53 = [MEMORY[0x1E696B068] kilowatts];
      v110[3] = v53;
      v54 = [MEMORY[0x1E696B068] watts];
      v110[4] = v54;
      v55 = [MEMORY[0x1E696B068] milliwatts];
      v110[5] = v55;
      v56 = [MEMORY[0x1E696B068] microwatts];
      v110[6] = v56;
      v57 = [MEMORY[0x1E696B068] nanowatts];
      v110[7] = v57;
      v58 = [MEMORY[0x1E696B068] picowatts];
      v110[8] = v58;
      v59 = [MEMORY[0x1E696B068] femtowatts];
      v110[9] = v59;
      v60 = [MEMORY[0x1E696B068] horsepower];
      v110[10] = v60;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:11];

LABEL_41:
      goto LABEL_42;
    case 22:
      v1 = [MEMORY[0x1E696B070] newtonsPerMetersSquared];
      v109[0] = v1;
      v105 = [MEMORY[0x1E696B070] gigapascals];
      v109[1] = v105;
      v61 = [MEMORY[0x1E696B070] megapascals];
      v109[2] = v61;
      v62 = [MEMORY[0x1E696B070] kilopascals];
      v109[3] = v62;
      v63 = [MEMORY[0x1E696B070] hectopascals];
      v109[4] = v63;
      v64 = [MEMORY[0x1E696B070] inchesOfMercury];
      v109[5] = v64;
      v65 = [MEMORY[0x1E696B070] bars];
      v109[6] = v65;
      v66 = [MEMORY[0x1E696B070] millibars];
      v109[7] = v66;
      v67 = [MEMORY[0x1E696B070] millimetersOfMercury];
      v109[8] = v67;
      v68 = [MEMORY[0x1E696B070] poundsForcePerSquareInch];
      v109[9] = v68;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:10];

LABEL_42:
      break;
    default:
      v10 = MEMORY[0x1E695E0F0];
      break;
  }

  return v10;
}

uint64_t __LNMeasurementUnitTypeToUnit_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 symbol];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

__CFString *LNChangeEffectAsString(uint64_t a1)
{
  if (a1 == -1)
  {
    v7 = @"Unknown";
  }

  else
  {
    v1 = a1;
    v2 = objc_opt_new();
    v3 = v2;
    if ((v1 & 0x301) != 0)
    {
      v4 = @"Non Idempotent";
    }

    else
    {
      v4 = @"Idempotent";
    }

    [v2 addObject:v4];
    if ((v1 & 0x100) != 0)
    {
      [v3 addObject:@"Destructive"];
    }

    if ((v1 & 0x200) != 0)
    {
      [v3 addObject:@"Irrevocable"];
    }

    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 componentsJoinedByString:{@", "}];
    v7 = [v5 stringWithFormat:@"[ %@ ]", v6];
  }

  return v7;
}

__CFString *LNSideEffectAsString(uint64_t a1)
{
  v1 = @"Unknown";
  if (!a1)
  {
    v1 = @"None";
  }

  if (a1 == 1)
  {
    return @"Change";
  }

  else
  {
    return v1;
  }
}

void sub_18F0889F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8615(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18F088D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t macho_good_enough_slice(const char *a1, void *a2)
{
  v3 = a2;
  v4 = open(a1, 0);
  if (v4 < 0)
  {
    v7 = *__error();
  }

  else
  {
    v5 = v4;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = -1;
    callback[0] = MEMORY[0x1E69E9820];
    callback[1] = 3221225472;
    callback[2] = __macho_good_enough_slice_block_invoke;
    callback[3] = &unk_1E72B1538;
    v19 = 16777228;
    v20 = -2147483646;
    v6 = v3;
    v16 = v6;
    v17 = &v25;
    v18 = &v21;
    v7 = macho_for_each_slice(a1, callback);
    if (!v7)
    {
      if ((v26[3] & 1) != 0 || *(v22 + 6) == -1)
      {
        v7 = 0;
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __macho_good_enough_slice_block_invoke_78;
        v9[3] = &unk_1E72B1538;
        v11 = &v21;
        v13 = 16777228;
        v14 = -2147483646;
        v10 = v6;
        v12 = &v25;
        v7 = macho_for_each_slice(a1, v9);
      }
    }

    close(v5);
    if (!v7)
    {
      if (*(v26 + 24))
      {
        v7 = 0;
      }

      else
      {
        v7 = 86;
      }
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  return v7;
}

void sub_18F088F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 128), 8);
  _Unwind_Resume(a1);
}

id _URLFromLibraryName(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [a1 UTF8String];
  if (!strncmp(v12, "@executable_path/", 0x11uLL))
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:1];
    v15 = MEMORY[0x1E695DFF8];
    v16 = v12 + 17;
LABEL_8:
    v17 = [v15 fileURLWithFileSystemRepresentation:v16 isDirectory:a2 relativeToURL:v14];
    v13 = [v17 absoluteURL];

    goto LABEL_9;
  }

  if (!strncmp(v12, "@loader_path/", 0xDuLL))
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:1];
    v15 = MEMORY[0x1E695DFF8];
    v16 = v12 + 13;
    goto LABEL_8;
  }

  if ((a2 & 1) == 0 && !strncmp(v12, "@rpath/", 7uLL))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v11;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v26 = v11;
      v22 = *v28;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = _URLFromLibraryName(*(*(&v27 + 1) + 8 * i), 1, v9, v10, v19);
          v25 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v12 + 7 isDirectory:0 relativeToURL:v24];
          if ([v25 checkResourceIsReachableAndReturnError:0])
          {
            v13 = [v25 absoluteURL];

            goto LABEL_22;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

      v13 = 0;
LABEL_22:
      v11 = v26;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v12 isDirectory:0 relativeToURL:0];
  }

LABEL_9:

  return v13;
}

uint64_t __macho_good_enough_slice_block_invoke(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a2 == -17958193)
  {
    v5 = result;
    if (a2[1] == *(result + 56))
    {
      v6 = a2[2];
      if (v6 == *(result + 60))
      {
        v8 = getLNLogCategoryMetadata();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(v5 + 56);
          v10 = *(v5 + 60);
          v11[0] = 67109376;
          v11[1] = v9;
          v12 = 1024;
          v13 = v10;
          _os_log_impl(&dword_18EF7E000, v8, OS_LOG_TYPE_DEBUG, "found exact slice for architecture (%#x/%#x)", v11, 0xEu);
        }

        result = (*(*(v5 + 32) + 16))();
        *a5 = 1;
        *(*(*(v5 + 40) + 8) + 24) = 1;
      }

      else
      {
        *(*(*(result + 48) + 8) + 24) = v6;
      }
    }
  }

  return result;
}

uint64_t __macho_good_enough_slice_block_invoke_78(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a2 == -17958193)
  {
    v6 = result;
    if (a2[1] == *(result + 56) && a2[2] == *(*(*(result + 40) + 8) + 24))
    {
      v8 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = a2[1];
        v10 = a2[2];
        v11 = *(v6 + 56);
        v12 = *(v6 + 60);
        v13[0] = 67109888;
        v13[1] = v9;
        v14 = 1024;
        v15 = v10;
        v16 = 1024;
        v17 = v11;
        v18 = 1024;
        v19 = v12;
        _os_log_impl(&dword_18EF7E000, v8, OS_LOG_TYPE_DEBUG, "found good-enough slice (%#x/%#x) for architecture (%#x/%#x)", v13, 0x1Au);
      }

      result = (*(*(v6 + 32) + 16))();
      *a5 = 1;
      *(*(*(v6 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t mh_validate(int *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a1 == -17958193)
  {
    if ((a1[6] & 0x80) == 0)
    {
      v3 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v15[0]) = 0;
        v4 = "non-two-level images not supported.";
        v5 = v3;
        v6 = 2;
LABEL_7:
        _os_log_impl(&dword_18EF7E000, v5, OS_LOG_TYPE_FAULT, v4, v15, v6);
        goto LABEL_8;
      }

      goto LABEL_8;
    }

    v10 = a1[5];
    if (a2 - 28 >= v10)
    {
      v12 = a1[4];
      if (!v12)
      {
        return 0;
      }

      v13 = a1 + 8;
      v14 = (a1 + v10 + 32);
      while (v13 <= v14)
      {
        v13 = (v13 + v13[1]);
        if (v13 > v14)
        {
          break;
        }

        v8 = 0;
        if (!--v12)
        {
          return v8;
        }
      }

      v3 = getLNLogCategoryMetadata();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      LOWORD(v15[0]) = 0;
      v11 = "load command extends past declared end of commands.";
    }

    else
    {
      v3 = getLNLogCategoryMetadata();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
LABEL_23:
        v8 = 88;
        goto LABEL_9;
      }

      LOWORD(v15[0]) = 0;
      v11 = "load commands extend past end of slice.";
    }

    _os_log_impl(&dword_18EF7E000, v3, OS_LOG_TYPE_ERROR, v11, v15, 2u);
    goto LABEL_23;
  }

  v3 = getLNLogCategoryMetadata();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v7 = *a1;
    v15[0] = 67109120;
    v15[1] = v7;
    v4 = "unsupported file magic %08x in package resolution";
    v5 = v3;
    v6 = 8;
    goto LABEL_7;
  }

LABEL_8:
  v8 = 45;
LABEL_9:

  return v8;
}

void __mh_symlibnames_block_invoke(void *a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1[5];
  if (v5)
  {
    v10 = 0;
    v11 = a1[6];
    while (1)
    {
      if (!*(v11 + 8 * v10))
      {
        v12 = strlen(*(a1[7] + 8 * v10));
        if (!strncmp(*(a1[7] + 8 * v10), a2, v12))
        {
          break;
        }
      }

      if (v5 == ++v10)
      {
        return;
      }
    }

    v13 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1[7] + 8 * v10);
      v17 = 136315650;
      v18 = v14;
      v19 = 2080;
      v20 = a2;
      v21 = 2080;
      v22 = a3;
      _os_log_impl(&dword_18EF7E000, v13, OS_LOG_TYPE_DEBUG, "%s -> %s from %s", &v17, 0x20u);
    }

    *(a1[6] + 8 * v10) = a3;
    v15 = *(a1[4] + 8);
    v16 = *(v15 + 24) + 1;
    *(v15 + 24) = v16;
    if (v16 == a1[5])
    {
      *a5 = 1;
    }
  }
}

void *mh_cmdstrs(_DWORD *a1, void *a2, unsigned int (*a3)(void))
{
  if (a1[4])
  {
    v6 = 0;
    v7 = 0;
    v8 = 7;
    if (*a1 == -17958193)
    {
      v8 = 8;
    }

    v9 = &a1[v8];
    while (1)
    {
      if (a3(*v9))
      {
        if (!mh_cmdstr(v9))
        {
          return 0;
        }

        ++v6;
      }

      ++v7;
      v9 = (v9 + v9[1]);
      if (v7 >= a1[4])
      {
        goto LABEL_11;
      }
    }
  }

  v6 = 0;
LABEL_11:
  v10 = malloc_type_malloc(8 * (v6 + 1), 0x10040436913F5uLL);
  if (a1[4])
  {
    v11 = 0;
    v12 = 0;
    v13 = 7;
    if (*a1 == -17958193)
    {
      v13 = 8;
    }

    v14 = &a1[v13];
    do
    {
      if (a3(*v14))
      {
        v10[v11++] = mh_cmdstr(v14);
      }

      ++v12;
      v14 = (v14 + v14[1]);
    }

    while (v12 < a1[4]);
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  v10[v15] = 0;
  *a2 = v6;
  return v10;
}

id strlist_to_array(uint64_t *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = 8 * a2;
    do
    {
      v7 = *a1++;
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      [v4 addObject:v8];

      v6 -= 8;
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  return v9;
}

uint64_t mh_cmdstr(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3 <= *(a1 + 4))
  {
    return a1 + v3;
  }

  v8 = v1;
  v9 = v2;
  v4 = getLNLogCategoryMetadata();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_18EF7E000, v4, OS_LOG_TYPE_ERROR, "load command string extends past end of load command.", v7, 2u);
  }

  v5 = __error();
  result = 0;
  *v5 = 88;
  return result;
}

id LNLinkedFrameworksAtPath(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8615;
  v10 = __Block_byref_object_dispose__8616;
  v11 = MEMORY[0x1E695E0F0];
  v2 = [v1 fileSystemRepresentation];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __LNLinkedFrameworksAtPath_block_invoke;
  v5[3] = &unk_1E72B1588;
  v5[4] = &v6;
  macho_good_enough_slice(v2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_18F08A440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __LNLinkedFrameworksAtPath_block_invoke(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = mh_validate(a2, a4);
  *__error() = v6;
  if (!v6)
  {
    v13 = 0;
    v7 = mh_cmdstrs(a2, &v13, is_load);
    if (v7)
    {
      v8 = v7;
      v9 = strlist_to_array(v7, v13);
      v10 = [v9 if_compactMap:&__block_literal_global_85];
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      free(v8);
    }
  }
}

id __LNLinkedFrameworksAtPath_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 rangeOfString:@".framework"];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [v2 substringWithRange:{0, v3 + v4}];
    v5 = [v6 fileURLWithPath:v7];
  }

  return v5;
}