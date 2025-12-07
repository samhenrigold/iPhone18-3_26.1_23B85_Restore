uint64_t SettingsUndoAction.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsUndoAction(0) + 24);
  v4 = sub_21CE6BAF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsUndoAction.init(verbatim:deepLink:undoAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for SettingsUndoAction(0);
  sub_21CE6B4A0();
  *a6 = a1;
  *(a6 + 1) = a2;
  v13 = *(v12 + 20);
  v14 = sub_21CE6BA60();
  result = (*(*(v14 - 8) + 32))(&a6[v13], a3, v14);
  v16 = &a6[*(v12 + 28)];
  *v16 = a4;
  *(v16 + 1) = a5;
  return result;
}

uint64_t type metadata accessor for SettingsUndoAction(uint64_t a1)
{
  result = qword_27CE40820;
  if (!qword_27CE40820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE29E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_21CE6BAF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_21CE29EEC(uint64_t a1)
{
  result = sub_21CE6BA60();
  if (v2 <= 0x3F)
  {
    result = sub_21CE6BAF0();
    if (v3 <= 0x3F)
    {
      result = sub_21CE00D24();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21CE29FFC()
{
  v1 = OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_id;
  v2 = sub_21CE6BAF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21CE2A0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_id;
  v5 = sub_21CE6BAF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_21CE2A124(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD78, &qword_21CE6F5D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40850, &unk_21CE72910);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-1] - v8;
  v10 = type metadata accessor for SettingsUndoAction(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = &type metadata for SettingsFrameworkFeatureFlags;
  v42[4] = sub_21CE0F8AC();
  v14 = sub_21CE6BC00();
  __swift_destroy_boxed_opaque_existential_1(v42);
  if (v14)
  {
    v15 = v1[3];
    if (!v15)
    {
      sub_21CE0F900(a1, v9);
      (*(v11 + 56))(v9, 0, 1, v10);
      v21 = *(v3 + 48);
      sub_21CE2B8D4(v9, v6, &qword_27CE40850, &unk_21CE72910);
      *&v6[v21] = 0;
      swift_beginAccess();
      v22 = v1[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[4] = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_21CDF26A0(0, v22[2] + 1, 1, v22);
        v1[4] = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_21CDF26A0((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_21CE2B8D4(v6, v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, &qword_27CE3FD78, &qword_21CE6F5D8);
      v1[4] = v22;
      swift_endAccess();
      v26 = v1[5];
      if (v26)
      {
        v27 = *(v26 + 16);
        if (!v27 || ([*(v26 + 16) respondsToSelector_] & 1) == 0)
        {
          return;
        }

        swift_unknownObjectRetain();
        sub_21CE6BAD0();
        sub_21CE6B980();
        v28 = sub_21CE6CC20();
        v29 = sub_21CE6CC20();

        v30 = sub_21CE6CC20();

        [v27 registerUndoActionWithLabel:v28 uuid:v29 urlString:v30];

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_27CE3FA30 != -1)
        {
          swift_once();
        }

        if (qword_27CE3FA38 != -1)
        {
          swift_once();
        }

        v31 = sub_21CE6BDA0();
        __swift_project_value_buffer(v31, qword_27CE412C0);
        v30 = sub_21CE6BD80();
        v32 = sub_21CE6CF10();
        if (os_log_type_enabled(v30, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v42[0] = v34;
          *v33 = 136446978;
          v35 = sub_21CE6D2B0();
          v37 = sub_21CDF2CC8(v35, v36, v42);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2048;
          *(v33 + 14) = 149;
          *(v33 + 22) = 2082;
          v38 = sub_21CE6D2B0();
          v40 = sub_21CDF2CC8(v38, v39, v42);

          *(v33 + 24) = v40;
          *(v33 + 32) = 2082;
          *(v33 + 34) = sub_21CDF2CC8(0xD000000000000036, 0x800000021CE77D90, v42);
          _os_log_impl(&dword_21CDE1000, v30, v32, "%{public}s:%ld %{public}s %{public}s", v33, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x21CF1BD50](v34, -1, -1);
          MEMORY[0x21CF1BD50](v33, -1, -1);
        }
      }

      return;
    }

    sub_21CE0F900(a1, v13);
    v16 = OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_actions;
    swift_beginAccess();
    v17 = *(v15 + v16);

    v18 = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + v16) = v17;
    if ((v18 & 1) == 0)
    {
      v17 = sub_21CDF249C(0, v17[2] + 1, 1, v17);
      *(v15 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_21CDF249C((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    sub_21CE0F964(v13, v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20);
    *(v15 + v16) = v17;
    swift_endAccess();
  }
}

uint64_t sub_21CE2A768()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CEF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315906;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 161;
    *(v5 + 22) = 2080;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, v14);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2080;
    *(v5 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v14);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%s:%ld %s %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  swift_beginAccess();
  *(v1 + 32) = MEMORY[0x277D84F90];

  *(v1 + 24) = 0;
}

void sub_21CE2A994()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CEF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315906;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v18);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 168;
    *(v5 + 22) = 2080;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, &v18);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2080;
    *(v5 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v18);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%s:%ld %s %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v13 = *(v1 + 24);
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_nestedGroupCount);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v13 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_nestedGroupCount) = v16;
    }
  }

  else
  {
    type metadata accessor for SettingsUndoManager.UndoGroup(0);
    v17 = swift_allocObject();
    sub_21CE6B4A0();
    *(v17 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_actions) = MEMORY[0x277D84F90];
    *(v17 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_nestedGroupCount) = 1;
    *(v1 + 24) = v17;
  }
}

void sub_21CE2AC30()
{
  v1 = v0;
  v2 = sub_21CE6BA60();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CE6BAF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD78, &qword_21CE6F5D8);
  v82 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40850, &unk_21CE72910);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v74 - v12);
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v14 = sub_21CE6BDA0();
  v15 = __swift_project_value_buffer(v14, qword_27CE412C0);
  v16 = sub_21CE6BD80();
  v17 = sub_21CE6CEF0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v77 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v81 = v1;
    v21 = v20;
    v83[0] = v20;
    *v19 = 136315906;
    v22 = sub_21CE6D2B0();
    v75 = v4;
    v76 = v7;
    v24 = v8;
    v25 = sub_21CDF2CC8(v22, v23, v83);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2048;
    *(v19 + 14) = 179;
    *(v19 + 22) = 2080;
    v26 = sub_21CE6D2B0();
    v28 = sub_21CDF2CC8(v26, v27, v83);
    v8 = v24;

    *(v19 + 24) = v28;
    v4 = v75;
    v7 = v76;
    *(v19 + 32) = 2080;
    *(v19 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v83);
    _os_log_impl(&dword_21CDE1000, v16, v17, "%s:%ld %s %s", v19, 0x2Au);
    swift_arrayDestroy();
    v29 = v21;
    v1 = v81;
    MEMORY[0x21CF1BD50](v29, -1, -1);
    v30 = v19;
    v10 = v77;
    MEMORY[0x21CF1BD50](v30, -1, -1);
  }

  v31 = v1[3];
  if (v31)
  {
    v32 = *(v31 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_nestedGroupCount);
    v33 = __OFSUB__(v32, 1);
    v34 = v32 - 1;
    if (v33)
    {
      __break(1u);
    }

    else
    {
      *(v31 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_nestedGroupCount) = v34;
      if (v34)
      {
        return;
      }

      v35 = type metadata accessor for SettingsUndoAction(0);
      v77 = *(v35 - 8);
      v36 = *(v77 + 7);
      v76 = v35;
      v36(v13, 1, 1);
      v37 = *(v8 + 48);
      sub_21CE2B8D4(v13, v10, &qword_27CE40850, &unk_21CE72910);
      *&v10[v37] = v31;
      swift_beginAccess();
      v13 = v1[4];
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[4] = v13;
      v15 = v10;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }
    }

    v13 = sub_21CDF26A0(0, v13[2] + 1, 1, v13);
    v1[4] = v13;
LABEL_11:
    v40 = v13[2];
    v39 = v13[3];
    if (v40 >= v39 >> 1)
    {
      v13 = sub_21CDF26A0((v39 > 1), v40 + 1, 1, v13);
    }

    v13[2] = v40 + 1;
    sub_21CE2B8D4(v15, v13 + ((LOBYTE(v82[10].isa) + 32) & ~LOBYTE(v82[10].isa)) + v82[9].isa * v40, &qword_27CE3FD78, &qword_21CE6F5D8);
    v1[4] = v13;
    swift_endAccess();
    v41 = v1[5];
    if (v41)
    {
      v42 = *(v41 + 16);
      if (v42 && ([*(v41 + 16) respondsToSelector_] & 1) != 0)
      {
        v43 = OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_actions;
        swift_beginAccess();
        v44 = *(v31 + v43);
        v45 = *(v44 + 16);
        v81 = v1;
        if (v45)
        {
          v82 = *(v44 + ((v77[80] + 32) & ~v77[80]) + *(v77 + 9) * (v45 - 1));
        }

        else
        {
          v82 = 0;
        }

        (*(v5 + 16))(v7, v31 + OBJC_IVAR____TtCC8Settings19SettingsUndoManager9UndoGroup_id, v4);

        swift_unknownObjectRetain();
        sub_21CE6BAD0();
        (*(v5 + 8))(v7, v4);
        v66 = *(v31 + v43);
        v67 = *(v66 + 16);
        if (v67)
        {
          v69 = v79;
          v68 = v80;
          v70 = v78;
          (*(v79 + 16))(v78, v66 + ((v77[80] + 32) & ~v77[80]) + *(v77 + 9) * (v67 - 1) + *(v76 + 5), v80);
          sub_21CE6B980();
          (*(v69 + 8))(v70, v68);
        }

        v71 = sub_21CE6CC20();

        v72 = sub_21CE6CC20();

        v73 = sub_21CE6CC20();

        [v42 registerUndoActionWithLabel:v71 uuid:v72 urlString:v73];

        swift_unknownObjectRelease();

        v1 = v81;
      }

      else
      {
      }

      v1[3] = 0;
    }

    else
    {
      v56 = sub_21CE6BD80();
      v57 = sub_21CE6CF10();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v83[0] = v59;
        *v58 = 136446978;
        v60 = sub_21CE6D2B0();
        v62 = sub_21CDF2CC8(v60, v61, v83);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2048;
        *(v58 + 14) = 193;
        *(v58 + 22) = 2082;
        v63 = sub_21CE6D2B0();
        v65 = sub_21CDF2CC8(v63, v64, v83);

        *(v58 + 24) = v65;
        *(v58 + 32) = 2082;
        *(v58 + 34) = sub_21CDF2CC8(0xD000000000000031, 0x800000021CE77D30, v83);
        _os_log_impl(&dword_21CDE1000, v56, v57, "%{public}s:%ld %{public}s %{public}s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x21CF1BD50](v59, -1, -1);
        MEMORY[0x21CF1BD50](v58, -1, -1);
      }
    }

    return;
  }

  v82 = sub_21CE6BD80();
  v46 = sub_21CE6CF10();
  if (os_log_type_enabled(v82, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v83[0] = v48;
    *v47 = 136446978;
    v49 = sub_21CE6D2B0();
    v51 = sub_21CDF2CC8(v49, v50, v83);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2048;
    *(v47 + 14) = 182;
    *(v47 + 22) = 2082;
    v52 = sub_21CE6D2B0();
    v54 = sub_21CDF2CC8(v52, v53, v83);

    *(v47 + 24) = v54;
    *(v47 + 32) = 2082;
    *(v47 + 34) = sub_21CDF2CC8(0xD000000000000038, 0x800000021CE77CF0, v83);
    _os_log_impl(&dword_21CDE1000, v82, v46, "%{public}s:%ld %{public}s %{public}s", v47, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v48, -1, -1);
    MEMORY[0x21CF1BD50](v47, -1, -1);
  }

  else
  {
    v55 = v82;
  }
}

uint64_t sub_21CE2B6CC()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingsUndoManager.UndoGroup(uint64_t a1)
{
  result = qword_27CE40840;
  if (!qword_27CE40840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE2B78C(uint64_t a1)
{
  result = sub_21CE6BAF0();
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

uint64_t sub_21CE2B8D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CE2B978@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_21CE2B9D0()
{
  v0 = sub_21CE6BBC0();
  __swift_allocate_value_buffer(v0, qword_27CE40858);
  __swift_project_value_buffer(v0, qword_27CE40858);
  return sub_21CE6BBB0();
}

uint64_t static Role.sidebar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE3F9D8 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BBC0();
  v3 = __swift_project_value_buffer(v2, qword_27CE40858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21CE2BADC()
{
  v1 = *(v0 + 16);
  aBlock[4] = sub_21CE2BBE4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CE18088;
  aBlock[3] = &block_descriptor_96;
  v2 = _Block_copy(aBlock);
  v3 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  sub_21CE6D190();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40A48, &qword_21CE72DD0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_21CE2BBE4(uint64_t a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  swift_getErrorValue();
  v1 = sub_21CE6D450();
  v3 = v2;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_27CE412C0);

  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446978;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 37;
    *(v7 + 22) = 2082;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, &v16);

    *(v7 + 24) = v14;
    *(v7 + 32) = 2082;
    v15 = sub_21CDF2CC8(v1, v3, &v16);

    *(v7 + 34) = v15;
    _os_log_impl(&dword_21CDE1000, v5, v6, "%{public}s:%ld %{public}s %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v8, -1, -1);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21CE2BE44(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = a3;
  v5 = sub_21CE2BADC();
  if (v5)
  {
    [v5 navigationSubtitleDidChange_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21CE2BEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_21CE6CC50();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_21CE2BADC();
  if (v5)
  {
    v6 = v5;
    if (v4)
    {
      v7 = sub_21CE6CC20();
    }

    else
    {
      v7 = 0;
    }

    [v6 navigationTitleDidChange_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21CE2BFA4(uint64_t a1, uint64_t a2, void *a3, const char **a4)
{
  v5 = a3;

  v6 = sub_21CE2BADC();
  if (v6)
  {
    [v6 *a4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21CE2C018(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  v4 = sub_21CE2BADC();
  if (v4)
  {
    [v4 signalWithMilestone_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21CE2C094(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;

  v7 = sub_21CE2BADC();
  if (v7)
  {
    [v7 signalWithExtensionID:v5 milestone:v6];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_21CE2C128(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v11 = a5;

  v9 = sub_21CE2BADC();
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      [v10 registerUndoActionWithLabel:v7 uuid:v8 urlString:v11];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_21CE2C1F0(uint64_t a1)
{

  v1 = sub_21CE2BADC();
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      [v2 removeAllUndoActions];
    }

    swift_unknownObjectRelease();
  }
}

void sub_21CE2C268(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (a5)
  {
    v7 = a3;
    v8 = a4;

    v9 = a5;
    v10 = sub_21CE6BA90();
    v12 = v11;

    v13 = sub_21CE2BADC();
    if (v13)
    {
      v14 = v13;
      if (v12 >> 60 != 15)
      {
        v15 = sub_21CE6BA70();
LABEL_8:
        [v14 updateAccessoryViewForExtensionIdentifier:a3 sceneName:a4 with:v15];

        sub_21CE16800(v10, v12);

        swift_unknownObjectRelease();
        return;
      }

LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v16 = a3;
    v17 = a4;

    v18 = sub_21CE2BADC();
    v12 = 0xF000000000000000;
    if (v18)
    {
      v14 = v18;
      v10 = 0;
      goto LABEL_7;
    }

    v10 = 0;
  }

  sub_21CE16800(v10, v12);
}

uint64_t sub_21CE2C3D4()
{
  type metadata accessor for XPCConnection.ConnectionAndRemoteObjectManager();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  qword_27CE40870 = result;
  return result;
}

uint64_t sub_21CE2C410(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for XPCConnection.RemoteHostObject(0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  swift_beginAccess();
  v7 = a1;
  v8 = 0;
  sub_21CE318E4((v3 + 16), v7);
  v10 = *(*(v3 + 16) + 16);
  if (v10 < v9)
  {
    __break(1u);
  }

  else
  {
    sub_21CE31748(v9, v10);
    a1 = *(v3 + 16);
    v8 = v7;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = a1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a1 = sub_21CDF29B8(0, a1[2] + 1, 1, a1);
  *(v3 + 16) = a1;
LABEL_3:
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12 >> 1)
  {
    a1 = sub_21CDF29B8((v12 > 1), v13 + 1, 1, a1);
  }

  a1[2] = v13 + 1;
  v14 = &a1[2 * v13];
  v14[4] = v8;
  v14[5] = v6;
  *(v3 + 16) = a1;
  swift_endAccess();
  if (a2)
  {
    [a2 setSettingsHost_];
  }

  return v6;
}

void sub_21CE2C568(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  if (a2)
  {
    v28 = v8;
    swift_beginAccess();
    v29 = a2;
    v30 = v3;
    v9 = *(v3 + 16);
    v10 = *(v9 + 16);
    swift_unknownObjectRetain();

    if (v10)
    {
      v11 = 0;
      v12 = (v9 + 40);
      while (1)
      {
        if (v11 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v13 = *(v12 - 1);
        v14 = *v12;
        sub_21CDE40C8(0, qword_281211808, 0x277D82BB8);
        v15 = v13;

        if (sub_21CE6D110())
        {
          break;
        }

        ++v11;
        v12 += 2;
        if (v10 == v11)
        {
          goto LABEL_7;
        }
      }

      v16 = v29;
      v17 = [v29 settingsHost];
      if (v17)
      {
        v18 = v17;
        swift_unknownObjectRelease();

        v3 = v30;
        if (v14 == v18)
        {
          [v16 setSettingsHost_];
          v19 = sub_21CE6CE20();
          v20 = v28;
          (*(*(v19 - 8) + 56))(v28, 1, 1, v19);
          sub_21CE6CDE0();
          swift_unknownObjectRetain();
          v21 = sub_21CE6CDD0();
          v22 = swift_allocObject();
          v23 = MEMORY[0x277D85700];
          v22[2] = v21;
          v22[3] = v23;
          v22[4] = v16;
          sub_21CE12224(0, 0, v20, &unk_21CE72DC0, v22);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();

        v3 = v30;
      }
    }

    else
    {
LABEL_7:
      swift_unknownObjectRelease();

      v3 = v30;
    }
  }

  swift_beginAccess();
  v24 = a1;
  sub_21CE318E4((v3 + 16), v24);
  v26 = v25;

  v27 = *(*(v3 + 16) + 16);
  if (v27 < v26)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    sub_21CE31748(v26, v27);
    swift_endAccess();
  }
}

uint64_t sub_21CE2C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_21CE6CDE0();
  v4[4] = sub_21CE6CDD0();
  v6 = sub_21CE6CDB0();

  return MEMORY[0x2822009F8](sub_21CE2C920, v6, v5);
}

uint64_t sub_21CE2C920()
{
  v1 = *(v0 + 24);

  v2 = [v1 respondsToSelector_];
  if (v2)
  {
    [*(v0 + 24) didUnselect];
  }

  **(v0 + 16) = (v2 & 1) == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CE2C9BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CE2C9F4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  sub_21CE6D290();

  aBlock = 0x203A6C65646F6DLL;
  v52 = 0xE700000000000000;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40718, &qword_21CE72200);
  v7 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v7);

  MEMORY[0x21CF1ACB0](0x6F73736563636120, 0xEC000000203A7972);
  v57 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40A58, &qword_21CE72E08);
  v8 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v8);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v9 = sub_21CE6BDA0();
  __swift_project_value_buffer(v9, qword_27CE412C0);

  v10 = sub_21CE6BD80();
  v11 = sub_21CE6CEF0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136315906;
    v14 = sub_21CE6D2B0();
    v48 = v4;
    v16 = sub_21CDF2CC8(v14, v15, &aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = 146;
    *(v12 + 22) = 2080;
    v17 = sub_21CE6D2B0();
    v19 = sub_21CDF2CC8(v17, v18, &aBlock);

    *(v12 + 24) = v19;
    v4 = v48;
    *(v12 + 32) = 2080;
    v20 = sub_21CDF2CC8(0x203A6C65646F6DLL, 0xE700000000000000, &aBlock);

    *(v12 + 34) = v20;
    _os_log_impl(&dword_21CDE1000, v10, v11, "%s:%ld %s %s", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v13, -1, -1);
    MEMORY[0x21CF1BD50](v12, -1, -1);

    if (a2)
    {
LABEL_7:
      swift_unknownObjectRetain();
      [a1 setExportedObject_];
      v21 = objc_opt_self();
      v22 = [v21 interfaceWithProtocol_];
      [a1 setExportedInterface_];

      v23 = [v21 interfaceWithProtocol_];
      [a1 setRemoteObjectInterface_];

      if (qword_27CE3F9E0 != -1)
      {
        swift_once();
      }

      swift_unknownObjectRetain();
      v24 = sub_21CE2C410(a1, a2);
      swift_unknownObjectRelease_n();
      *(v4 + 16) = v24;
      *(v4 + 24) = &off_282E81888;
      swift_unknownObjectRelease();
      goto LABEL_13;
    }
  }

  else
  {

    if (a2)
    {
      goto LABEL_7;
    }
  }

  if (a3)
  {
    swift_unknownObjectRetain();
    [a1 setExportedObject_];
    v25 = [objc_opt_self() interfaceWithProtocol_];
    [a1 setExportedInterface_];
    swift_unknownObjectRelease();
  }

LABEL_13:
  aBlock = 0;
  v52 = 0xE000000000000000;
  sub_21CE6D290();

  aBlock = 0x6E6E6F632077654ELL;
  v52 = 0xEF206E6F69746365;
  v26 = [a1 description];
  v27 = sub_21CE6CC50();
  v29 = v28;

  MEMORY[0x21CF1ACB0](v27, v29);

  v31 = aBlock;
  v30 = v52;

  v32 = sub_21CE6BD80();
  v33 = sub_21CE6CF30();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v49 = a1;
    v35 = swift_slowAlloc();
    aBlock = v35;
    *v34 = 136446978;
    v36 = sub_21CE6D2B0();
    v38 = sub_21CDF2CC8(v36, v37, &aBlock);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2048;
    *(v34 + 14) = 159;
    *(v34 + 22) = 2082;
    v39 = sub_21CE6D2B0();
    v41 = sub_21CDF2CC8(v39, v40, &aBlock);

    *(v34 + 24) = v41;
    *(v34 + 32) = 2082;
    v42 = sub_21CDF2CC8(v31, v30, &aBlock);

    *(v34 + 34) = v42;
    _os_log_impl(&dword_21CDE1000, v32, v33, "%{public}s:%ld %{public}s %{public}s", v34, 0x2Au);
    swift_arrayDestroy();
    v43 = v35;
    a1 = v49;
    MEMORY[0x21CF1BD50](v43, -1, -1);
    MEMORY[0x21CF1BD50](v34, -1, -1);
  }

  else
  {
  }

  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *(v44 + 24) = a2;
  v55 = sub_21CE328B4;
  v56 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_21CE27C50;
  v54 = &block_descriptor_126;
  v45 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v46 = a1;

  [v46 setInvalidationHandler_];
  _Block_release(v45);
  [v46 resume];
  return 1;
}

void sub_21CE2D184(void *a1, void *a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  sub_21CE6D290();

  v24[0] = 0xD000000000000017;
  v24[1] = 0x800000021CE78290;
  v4 = a1;
  v5 = [v4 description];
  v6 = sub_21CE6CC50();
  v8 = v7;

  MEMORY[0x21CF1ACB0](v6, v8);

  MEMORY[0x21CF1ACB0](0x3A6C65646F6D202CLL, 0xE900000000000020);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40718, &qword_21CE72200);
  v9 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v9);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v10 = sub_21CE6BDA0();
  __swift_project_value_buffer(v10, qword_27CE412C0);

  v11 = sub_21CE6BD80();
  v12 = sub_21CE6CF30();

  if (os_log_type_enabled(v11, v12))
  {
    v23 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136446978;
    v15 = sub_21CE6D2B0();
    v17 = sub_21CDF2CC8(v15, v16, v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = 162;
    *(v13 + 22) = 2082;
    v18 = sub_21CE6D2B0();
    v20 = sub_21CDF2CC8(v18, v19, v24);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2082;
    v21 = sub_21CDF2CC8(0xD000000000000017, 0x800000021CE78290, v24);

    *(v13 + 34) = v21;
    _os_log_impl(&dword_21CDE1000, v11, v12, "%{public}s:%ld %{public}s %{public}s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v14, -1, -1);
    v22 = v13;
    a2 = v23;
    MEMORY[0x21CF1BD50](v22, -1, -1);
  }

  else
  {
  }

  if (qword_27CE3F9E0 != -1)
  {
    swift_once();
  }

  sub_21CE2C568(v4, a2);
}

uint64_t sub_21CE2D4E8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21CE2D56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21CE6CDE0();
  v5[4] = sub_21CE6CDD0();
  v7 = sub_21CE6CDB0();

  return MEMORY[0x2822009F8](sub_21CE2D604, v7, v6);
}

uint64_t sub_21CE2D604()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CE2D670()
{
  sub_21CE6D290();
  MEMORY[0x21CF1ACB0](0xD00000000000001ALL, 0x800000021CE78110);
  sub_21CE6D340();
  MEMORY[0x21CF1ACB0](0x3A74656772617420, 0xE900000000000020);
  sub_21CE6D340();
  return 0;
}

id sub_21CE2D75C()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAB00]) init];
  qword_27CE40878 = result;
  return result;
}

uint64_t sub_21CE2D824(uint64_t a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136446978;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 256;
    *(v5 + 22) = 2082;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, v16);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2082;
    *(v5 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v16);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%{public}s:%ld %{public}s %{public}s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v13 = *(a1 + 16);
  if ([v13 respondsToSelector_])
  {
    [v13 willSelect];
  }

  result = [v13 respondsToSelector_];
  if (result)
  {
    v16[4] = nullsub_1;
    v16[5] = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_21CE27C50;
    v16[3] = &block_descriptor_5;
    v15 = _Block_copy(v16);
    [v13 willSelect_];
    _Block_release(v15);
  }

  return result;
}

uint64_t sub_21CE2DAFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = a1;
  v9[4] = a2;
  v10 = objc_opt_self();

  if ([v10 isMainThread])
  {
    sub_21CE2DCD8(v3, a1, a2);
  }

  else
  {
    v12 = sub_21CE6CE20();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    sub_21CE6CDE0();

    v13 = sub_21CE6CDD0();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = sub_21CE32818;
    v14[5] = v9;
    sub_21CE11F34(0, 0, v8, &unk_21CE72DF8, v14);
  }
}

void sub_21CE2DCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = &off_278323000;
  if (([v5 respondsToSelector_] & 1) == 0)
  {
    sub_21CE2D7DC();
    return;
  }

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v24[0] = a2;
  v24[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40460, &qword_21CE72620);
  v7 = sub_21CE6CC80();
  v9 = v8;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v10 = sub_21CE6BDA0();
  __swift_project_value_buffer(v10, qword_27CE412C0);

  v11 = sub_21CE6BD80();
  v12 = sub_21CE6CF30();

  if (!os_log_type_enabled(v11, v12))
  {

    if (a3)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v23 = v7;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v24[0] = v14;
  *v13 = 136447235;
  v15 = sub_21CE6D2B0();
  v17 = sub_21CDF2CC8(v15, v16, v24);

  *(v13 + 4) = v17;
  *(v13 + 12) = 2048;
  *(v13 + 14) = 268;
  *(v13 + 22) = 2082;
  v18 = sub_21CE6D2B0();
  v20 = sub_21CDF2CC8(v18, v19, v24);

  *(v13 + 24) = v20;
  *(v13 + 32) = 2160;
  *(v13 + 34) = 1752392040;
  *(v13 + 42) = 2081;
  v21 = sub_21CDF2CC8(v23, v9, v24);

  *(v13 + 44) = v21;
  v6 = &off_278323000;
  _os_log_impl(&dword_21CDE1000, v11, v12, "%{public}s:%ld %{public}s %{private,mask.hash}s", v13, 0x34u);
  swift_arrayDestroy();
  MEMORY[0x21CF1BD50](v14, -1, -1);
  MEMORY[0x21CF1BD50](v13, -1, -1);

  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = sub_21CE6CC20();
LABEL_12:
  [v5 v6[433]];
}

uint64_t sub_21CE2E030(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v1;
  v7 = objc_opt_self();

  v8 = a1;
  if ([v7 isMainThread])
  {
    sub_21CE2E1FC(v8, v1);
  }

  else
  {
    v10 = sub_21CE6CE20();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_21CE6CDE0();

    v11 = sub_21CE6CDD0();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = sub_21CE327B8;
    v12[5] = v6;
    sub_21CE11F34(0, 0, v5, &unk_21CE72DF0, v12);
  }
}

void sub_21CE2E1FC(id a1, uint64_t a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v4 = [a1 description];
  v5 = sub_21CE6CC50();
  v7 = v6;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  v9 = __swift_project_value_buffer(v8, qword_27CE412C0);

  v10 = sub_21CE6BD80();
  v11 = sub_21CE6CF30();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136446978;
    v14 = sub_21CE6D2B0();
    oslog = v9;
    v16 = v5;
    v17 = sub_21CDF2CC8(v14, v15, &v35);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = 285;
    *(v12 + 22) = 2082;
    v18 = sub_21CE6D2B0();
    v20 = sub_21CDF2CC8(v18, v19, &v35);

    *(v12 + 24) = v20;
    *(v12 + 32) = 2082;
    v21 = sub_21CDF2CC8(v16, v7, &v35);

    *(v12 + 34) = v21;
    _os_log_impl(&dword_21CDE1000, v10, v11, "%{public}s:%ld %{public}s %{public}s", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v13, -1, -1);
    MEMORY[0x21CF1BD50](v12, -1, -1);
  }

  else
  {
  }

  v22 = *(a2 + 16);
  if ([v22 respondsToSelector_])
  {
    [v22 willSelectWithNavigationPath_];
    osloga = sub_21CE6BD80();
    v23 = sub_21CE6CF30();
    if (os_log_type_enabled(osloga, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136446978;
      v26 = sub_21CE6D2B0();
      v28 = sub_21CDF2CC8(v26, v27, &v35);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      *(v24 + 14) = 289;
      *(v24 + 22) = 2082;
      v29 = sub_21CE6D2B0();
      v31 = sub_21CDF2CC8(v29, v30, &v35);

      *(v24 + 24) = v31;
      *(v24 + 32) = 2082;
      *(v24 + 34) = sub_21CDF2CC8(0xD000000000000021, 0x800000021CE78220, &v35);
      _os_log_impl(&dword_21CDE1000, osloga, v23, "%{public}s:%ld %{public}s %{public}s", v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v25, -1, -1);
      MEMORY[0x21CF1BD50](v24, -1, -1);
    }
  }

  else
  {
    osloga = *(a2 + 32);
    *(a2 + 32) = a1;
    v32 = a1;
  }
}

void sub_21CE2E65C()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6BDA0();
  __swift_project_value_buffer(v0, qword_27CE412C0);
  oslog = sub_21CE6BD80();
  v1 = sub_21CE6CF30();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v11 = v3;
    *v2 = 136446978;
    v4 = sub_21CE6D2B0();
    v6 = sub_21CDF2CC8(v4, v5, &v11);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2048;
    *(v2 + 14) = 298;
    *(v2 + 22) = 2082;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v11);

    *(v2 + 24) = v9;
    *(v2 + 32) = 2082;
    *(v2 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v11);
    _os_log_impl(&dword_21CDE1000, oslog, v1, "%{public}s:%ld %{public}s %{public}s", v2, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v3, -1, -1);
    MEMORY[0x21CF1BD50](v2, -1, -1);
  }
}

uint64_t sub_21CE2E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = v5;
  v15 = objc_opt_self();

  v16 = a5;
  if ([v15 isMainThread])
  {
    sub_21CE2EAC8(a1, a2, a3, a4, a5, v5);
  }

  else
  {
    v18 = sub_21CE6CE20();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    sub_21CE6CDE0();

    v19 = sub_21CE6CDD0();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = sub_21CE326E8;
    v20[5] = v14;
    sub_21CE11F34(0, 0, v13, &unk_21CE72DD8, v20);
  }
}

void sub_21CE2EAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_21CE6D290();
  MEMORY[0x21CF1ACB0](a1, a2);
  MEMORY[0x21CF1ACB0](32, 0xE100000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40460, &qword_21CE72620);
  v10 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v10);

  MEMORY[0x21CF1ACB0](0xD000000000000011, 0x800000021CE78190);
  v11 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40A50, &qword_21CE72DE8);
  v12 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v12);

  MEMORY[0x21CF1ACB0](0x3A74656772617420, 0xE900000000000020);
  v13 = *(a6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40A40, &qword_21CE72D98);
  sub_21CE6D340();
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v14 = sub_21CE6BDA0();
  __swift_project_value_buffer(v14, qword_27CE412C0);

  v15 = sub_21CE6BD80();
  v16 = sub_21CE6CF30();

  if (!os_log_type_enabled(v15, v16))
  {

    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v31 = v13;
  v17 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v32[0] = v30;
  *v17 = 136446978;
  v18 = sub_21CE6D2B0();
  v29 = 0;
  v20 = sub_21CDF2CC8(v18, v19, v32);

  *(v17 + 4) = v20;
  *(v17 + 12) = 2048;
  *(v17 + 14) = 319;
  *(v17 + 22) = 2082;
  v21 = sub_21CE6D2B0();
  v23 = sub_21CDF2CC8(v21, v22, v32);

  *(v17 + 24) = v23;
  *(v17 + 32) = 2082;
  v24 = sub_21CDF2CC8(0, 0xE000000000000000, v32);

  *(v17 + 34) = v24;
  _os_log_impl(&dword_21CDE1000, v15, v16, "%{public}s:%ld %{public}s %{public}s", v17, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x21CF1BD50](v30, -1, -1);
  v25 = v17;
  v13 = v31;
  MEMORY[0x21CF1BD50](v25, -1, -1);

  if (a5)
  {
LABEL_9:
    v26 = *(a6 + 32);
    *(a6 + 32) = a5;
    v27 = v11;
  }

LABEL_10:
  if ([v13 respondsToSelector_])
  {
    v28 = sub_21CE6CC20();
    [v13 willSelectWithSidebarItemWithUUID_];
  }
}

uint64_t sub_21CE2EF20(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = objc_opt_self();

  if ([v12 isMainThread])
  {
    a1(v8);
  }

  else
  {
    v14 = sub_21CE6CE20();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    sub_21CE6CDE0();

    v15 = sub_21CE6CDD0();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = a3;
    v16[5] = v8;
    sub_21CE11F34(0, 0, v11, a4, v16);
  }
}

uint64_t sub_21CE2F0C0(uint64_t a1, uint64_t a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v3 = *(a1 + 16);
  v21[0] = v3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40A40, &qword_21CE72D98);
  v4 = sub_21CE6CC80();
  v6 = v5;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v7 = sub_21CE6BDA0();
  __swift_project_value_buffer(v7, qword_27CE412C0);

  v8 = sub_21CE6BD80();
  v9 = sub_21CE6CF30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136446978;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = 337;
    *(v10 + 22) = 2082;
    v15 = sub_21CE6D2B0();
    v17 = sub_21CDF2CC8(v15, v16, v21);

    *(v10 + 24) = v17;
    *(v10 + 32) = 2082;
    v18 = sub_21CDF2CC8(v4, v6, v21);

    *(v10 + 34) = v18;
    _os_log_impl(&dword_21CDE1000, v8, v9, "%{public}s:%ld %{public}s %{public}s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v11, -1, -1);
    MEMORY[0x21CF1BD50](v10, -1, -1);
  }

  else
  {
  }

  if ([v3 respondsToSelector_])
  {
    [v3 didUnselect];
  }

  v19 = *(a1 + 24);
  swift_beginAccess();
  *(v19 + 32) = MEMORY[0x277D84F90];
}

uint64_t sub_21CE2F394(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_21CE2F3D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_21CE2F4B4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1;
  v8 = objc_opt_self();

  if (![v8 isMainThread])
  {
    v10 = sub_21CE6CE20();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_21CE6CDE0();

    v11 = sub_21CE6CDD0();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = sub_21CE313C4;
    v12[5] = v7;
    sub_21CE11F34(0, 0, v6, &unk_21CE72D80, v12);

    return;
  }

  v9 = *(v2 + 16);
  if ([v9 respondsToSelector_] & 1) != 0 && (objc_msgSend(v9, sel_respondsToSelector_, sel_isCloudSyncEnabled_))
  {
    [v9 setCloudSyncEnabled_];
LABEL_10:

    return;
  }

  sub_21CE321B4();
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = [objc_opt_self() sharedCloudSettingsManager];
  v18 = sub_21CE6CC20();

  [v15 setEnabled:a1 & 1 forStore:v18];

  v16 = v18;
}

void sub_21CE2F760(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if ([v3 respondsToSelector_] & 1) != 0 && (objc_msgSend(v3, sel_respondsToSelector_, sel_isCloudSyncEnabled_))
  {

    [v3 setCloudSyncEnabled_];
  }

  else
  {
    sub_21CE321B4();
    if (v4)
    {
      v5 = [objc_opt_self() sharedCloudSettingsManager];
      v6 = sub_21CE6CC20();

      [v5 setEnabled:a2 & 1 forStore:v6];
    }
  }
}

uint64_t sub_21CE2F8CC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_21CE2F938(uint64_t a1, unint64_t a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  MEMORY[0x21CF1ACB0](0x203A746567726174, 0xE800000000000000);
  v4 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404D8, &qword_21CE71D40);
  sub_21CE6D340();
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v5 = sub_21CE6BDA0();
  __swift_project_value_buffer(v5, qword_27CE412C0);

  v6 = sub_21CE6BD80();
  v7 = sub_21CE6CEF0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315906;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = 449;
    *(v8 + 22) = 2080;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, v18);

    *(v8 + 24) = v15;
    *(v8 + 32) = 2080;
    v16 = sub_21CDF2CC8(0, 0xE000000000000000, v18);

    *(v8 + 34) = v16;
    _os_log_impl(&dword_21CDE1000, v6, v7, "%s:%ld %s %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v9, -1, -1);
    MEMORY[0x21CF1BD50](v8, -1, -1);
  }

  else
  {
  }

  if ([v4 respondsToSelector_])
  {
    if (a2 >> 60 == 15)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_21CE6BA70();
    }

    [v4 updateWith_];
  }
}

uint64_t sub_21CE2FC30(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {

    v4 = v3;
    v3 = sub_21CE6BA90();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  sub_21CE2F938(v3, v6);
  sub_21CE16800(v3, v6);
}

uint64_t sub_21CE2FCB8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_21CE2FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v40 = *a3;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v42[0] = 0x203A6C65646F6DLL;
  v42[1] = 0xE700000000000000;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40A60, &qword_21CE72E10);
  v13 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v13);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v14 = sub_21CE6BDA0();
  __swift_project_value_buffer(v14, qword_27CE412C0);

  v15 = sub_21CE6BD80();
  v16 = sub_21CE6CF30();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = a2;
    v37 = swift_slowAlloc();
    v42[0] = v37;
    *v17 = 136446978;
    v18 = sub_21CE6D2B0();
    v38 = a7;
    v20 = a8;
    v21 = a4;
    v22 = sub_21CDF2CC8(v18, v19, v42);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    *(v17 + 14) = 459;
    *(v17 + 22) = 2082;
    v23 = sub_21CE6D2B0();
    v25 = sub_21CDF2CC8(v23, v24, v42);

    *(v17 + 24) = v25;
    a4 = v21;
    a8 = v20;
    *(v17 + 32) = 2082;
    v26 = sub_21CDF2CC8(0x203A6C65646F6DLL, 0xE700000000000000, v42);

    *(v17 + 34) = v26;
    a7 = v38;
    _os_log_impl(&dword_21CDE1000, v15, v16, "%{public}s:%ld %{public}s %{public}s", v17, 0x2Au);
    swift_arrayDestroy();
    a2 = v39;
    MEMORY[0x21CF1BD50](v37, -1, -1);
    MEMORY[0x21CF1BD50](v17, -1, -1);
  }

  else
  {
  }

  type metadata accessor for XPCConnection();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  a8[3] = v27;
  if (a1)
  {
    v29 = v27;
    v30 = swift_unknownObjectRetain();
    v31 = sub_21CE31ABC(v30, v29);
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0;
  }

  a8[1] = v31;
  v32 = 0;
  if (a2)
  {
    type metadata accessor for SettingsViewScene.SettingsAccessoryProtocolDispatch(0, a6, a7, v28);
    v32 = swift_allocObject();
    *(v32 + 16) = a2;
  }

  a8[2] = v32;
  type metadata accessor for SettingsViewSceneOptions();
  v33 = swift_allocObject();
  *(v33 + 32) = 1;
  *(v33 + 16) = v40;
  *(v33 + 24) = 0;
  *a8 = v33;
  type metadata accessor for SettingsViewScene(0, a6, a7, v34);
  v35 = swift_unknownObjectRetain();
  a4(v35);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t SettingsViewScene.init(_:_:)@<X0>(void (*a2)(void)@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = swift_unknownObjectRetain();
  v12 = 0;
  sub_21CE2FCEC(v10, 0, &v12, a2, a4, a5, a6);

  return swift_unknownObjectRelease();
}

{
  swift_unknownObjectRelease();
  v11 = 0;
  return sub_21CE2FCEC(0, 0, &v11, a2, a4, a5, a6);
}

uint64_t SettingsViewScene.init(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  swift_unknownObjectRetain();
  v12 = 0;
  sub_21CE2FCEC(0, a1, &v12, a2, a4, a5, a6);

  return swift_unknownObjectRelease();
}

uint64_t SettingsViewScene.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v2 + *(v6 + 48), v4);
  v9(a2, v8, v4);
  return (*(v5 + 8))(v8, v4);
}

Swift::Bool __swiftcall SettingsViewScene.shouldAccept(connection:)(NSXPCConnection connection)
{
  v2 = v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_27CE412C0);
  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446978;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 532;
    *(v7 + 22) = 2082;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, &v18);

    *(v7 + 24) = v14;
    *(v7 + 32) = 2082;
    *(v7 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v18);
    _os_log_impl(&dword_21CDE1000, v5, v6, "%{public}s:%ld %{public}s %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v8, -1, -1);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  v15 = *(v2 + 8);
  v16 = *(v2 + 16);

  sub_21CE2C9F4(connection.super.isa, v15, v16);

  return 1;
}

void SettingsViewScene.consume(initializationParameters:)()
{
  v1 = v0;
  type metadata accessor for InitializationParameters();
  v2 = sub_21CE6BBA0();
  if (!v2)
  {
    return;
  }

  v33 = v2;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  sub_21CE6D290();

  v34[0] = 0xD00000000000001ALL;
  v34[1] = 0x800000021CE77E40;
  v3 = [v33 description];
  v4 = sub_21CE6CC50();
  v6 = v5;

  MEMORY[0x21CF1ACB0](v4, v6);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v7 = sub_21CE6BDA0();
  __swift_project_value_buffer(v7, qword_27CE412C0);

  v8 = sub_21CE6BD80();
  v9 = sub_21CE6CF30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34[0] = v11;
    *v10 = 136447235;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, v34);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = 538;
    *(v10 + 22) = 2082;
    v15 = sub_21CE6D2B0();
    v17 = sub_21CDF2CC8(v15, v16, v34);

    *(v10 + 24) = v17;
    *(v10 + 32) = 2160;
    *(v10 + 34) = 1752392040;
    *(v10 + 42) = 2081;
    v18 = sub_21CDF2CC8(0xD00000000000001ALL, 0x800000021CE77E40, v34);

    *(v10 + 44) = v18;
    _os_log_impl(&dword_21CDE1000, v8, v9, "%{public}s:%ld %{public}s %{private,mask.hash}s", v10, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v11, -1, -1);
    MEMORY[0x21CF1BD50](v10, -1, -1);
  }

  else
  {
  }

  v19 = *v1;
  v20 = v33[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth + 8];
  *(v19 + 24) = *&v33[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth];
  *(v19 + 32) = v20;
  if (sub_21CE18AA8())
  {
    if (!v1[1])
    {
LABEL_13:
      v21 = v33;
      goto LABEL_14;
    }

LABEL_12:
    sub_21CE2DAFC(0, 0);
    goto LABEL_13;
  }

  v21 = v33;
  v22 = *&v33[OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier + 8];
  if (!v22)
  {
    v28 = *&v33[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8];
    if (v28)
    {
      if (!v1[1])
      {
        goto LABEL_14;
      }

      v29 = *&v33[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor];

      sub_21CE2DAFC(v29, v28);

      goto LABEL_13;
    }

    v30 = *&v33[OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath];
    v31 = v1[1];
    if (v30)
    {
      if (v31)
      {
        v32 = v30;
        sub_21CE2E030(v32);

        v21 = v32;
      }

      goto LABEL_14;
    }

    if (!v31)
    {
LABEL_14:

      return;
    }

    goto LABEL_12;
  }

  if (!v1[1])
  {
    goto LABEL_14;
  }

  v23 = *&v33[OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier];
  v24 = *&v33[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor];
  v25 = *&v33[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8];
  v26 = *&v33[OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath];
  v27 = v26;

  sub_21CE2E8AC(v23, v22, v24, v25, v26);
}

unint64_t sub_21CE30AA0()
{
  result = qword_27CE40880;
  if (!qword_27CE40880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40880);
  }

  return result;
}

unint64_t sub_21CE30AF8()
{
  result = qword_27CE40888;
  if (!qword_27CE40888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40888);
  }

  return result;
}

unint64_t sub_21CE30B50()
{
  result = qword_27CE40890;
  if (!qword_27CE40890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40890);
  }

  return result;
}

unint64_t sub_21CE30BA8()
{
  result = qword_27CE40898[0];
  if (!qword_27CE40898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE40898);
  }

  return result;
}

uint64_t type metadata accessor for XPCConnection.RemoteHostObject(uint64_t a1)
{
  result = qword_27CE40920;
  if (!qword_27CE40920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CE30DCC(uint64_t a1)
{
  type metadata accessor for SettingsViewSceneOptions();
  if (v1 <= 0x3F)
  {
    sub_21CE312AC(319);
    if (v2 <= 0x3F)
    {
      sub_21CE31304(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for XPCConnection();
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21CE30E90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21CE3102C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_21CE312AC(uint64_t a1)
{
  if (!qword_27CE409B0)
  {
    type metadata accessor for SettingsProtocolDispatch();
    v1 = sub_21CE6D150();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE409B0);
    }
  }
}

void sub_21CE31304(uint64_t a1)
{
  if (!qword_27CE409B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE404D8, &qword_21CE71D40);
    v1 = sub_21CE6D150();
    if (!v2)
    {
      atomic_store(v1, qword_27CE409B8);
    }
  }
}

uint64_t sub_21CE313D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CDE7888;

  return sub_21CE2D56C(a1, v4, v5, v7, v6);
}

uint64_t sub_21CE31490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_21CDE40C8(0, &qword_27CE40490, 0x277CCAE80);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21CE6D360();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_21CE6D360();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21CE315A0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21CE6D360();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_21CE6D360();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_21CE454E4(result, 1);

  return sub_21CE31490(v5, v3, 0);
}

unint64_t sub_21CE31678(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD68, &qword_21CE6F5C8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_21CE31748(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_21CDF29B8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_21CE31678(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_21CE31808(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  sub_21CDE40C8(0, qword_281211808, 0x277D82BB8);
  v4 = 0;
  for (i = a1 + 40; ; i += 16)
  {
    v6 = *(i - 8);

    v7 = sub_21CE6D110();

    if (v7)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

void sub_21CE318E4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_21CE31808(*a1, a2);
  v6 = v4;
  if (!v2 && (v5 & 1) == 0)
  {
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      v9 = v3 + 2;
      v8 = v3[2];
      if (v7 == v8)
      {
        return;
      }

      v10 = 2 * v4;
      while (v7 < v8)
      {
        v11 = &v3[v10];
        v12 = v3[v10 + 6];
        sub_21CDE40C8(0, qword_281211808, 0x277D82BB8);
        v13 = v12;

        v14 = sub_21CE6D110();

        if ((v14 & 1) == 0)
        {
          if (v7 != v6)
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_20;
            }

            if (v6 >= *v9)
            {
              goto LABEL_21;
            }

            if (v7 >= *v9)
            {
              goto LABEL_22;
            }

            v23 = *&v3[2 * v6 + 4];
            v16 = v11[6];
            v15 = v11[7];
            v17 = v23;

            v18 = v16;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_21CE25AE0(v3);
            }

            v19 = &v3[2 * v6];
            v20 = v19[4];
            v19[4] = v18;
            v19[5] = v15;

            if (v7 >= v3[2])
            {
              goto LABEL_23;
            }

            v21 = v3[v10 + 6];
            *&v3[v10 + 6] = v23;

            *a1 = v3;
          }

          ++v6;
        }

        ++v7;
        v9 = v3 + 2;
        v8 = v3[2];
        v10 += 2;
        if (v7 == v8)
        {
          return;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_21CE31ABC(uint64_t a1, uint64_t a2)
{
  if (qword_27CE3F9E8 != -1)
  {
    swift_once();
  }

  v4 = [qword_27CE40878 objectForKey_];
  if (v4)
  {
    v5 = v4;
    *(v4[3] + 40) = a2;
  }

  else
  {
    type metadata accessor for SettingsUndoManager();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v7 = MEMORY[0x277D84F90];
    *(v6 + 24) = 0;
    *(v6 + 32) = v7;
    *(v6 + 40) = a2;
    *(v6 + 48) = 0;
    type metadata accessor for SettingsProtocolDispatch();
    v5 = swift_allocObject();
    *(v5 + 24) = v6;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 16) = a1;
    v8 = qword_27CE40878;

    swift_unknownObjectRetain();
    [v8 setObject:v5 forKey:a1];
  }

  return v5;
}

void sub_21CE31F34(id a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v2 = [a1 description];
  v3 = sub_21CE6CC50();
  v5 = v4;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_27CE412C0);

  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446978;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 313;
    *(v9 + 22) = 2082;
    v14 = sub_21CE6D2B0();
    v16 = sub_21CDF2CC8(v14, v15, &v20);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2082;
    v17 = sub_21CDF2CC8(v3, v5, &v20);

    *(v9 + 34) = v17;
    _os_log_impl(&dword_21CDE1000, v7, v8, "%{public}s:%ld %{public}s %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v10, -1, -1);
    MEMORY[0x21CF1BD50](v9, -1, -1);
  }

  else
  {
  }

  v19 = qword_27CE3FA88;
  qword_27CE3FA88 = a1;
  v18 = a1;
}

uint64_t sub_21CE321B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_21CE6CB60();

  if (!*(v2 + 16))
  {
    goto LABEL_15;
  }

  v3 = sub_21CE66850(0xD000000000000018, 0x800000021CE780B0);
  if ((v4 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_21CDE66C8(*(v2 + 56) + 32 * v3, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD98, &qword_21CE71CC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_15;
  }

  v5 = sub_21CE66850(0xD00000000000001BLL, 0x800000021CE76DB0);
  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_21CDE66C8(*(v12 + 56) + 32 * v5, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_15;
  }

  v7 = sub_21CE66850(0xD000000000000016, 0x800000021CE780D0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_21CDE66C8(*(v12 + 56) + 32 * v7, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16) || (v9 = sub_21CE66850(0x65644965726F7473, 0xEF7265696669746ELL), (v10 & 1) == 0))
  {
LABEL_15:

    return 0;
  }

  sub_21CDE66C8(*(v12 + 56) + 32 * v9, v13);

  if (swift_dynamicCast())
  {
    return v12;
  }

  return 0;
}

uint64_t sub_21CE32418(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  if ([v5 respondsToSelector_])
  {
    if ([v5 respondsToSelector_])
    {
      v12[4] = sub_21CE32618;
      v12[5] = v4;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_21CE2F3D8;
      v12[3] = &block_descriptor_84;
      v6 = _Block_copy(v12);
      _Block_copy(a2);
      swift_unknownObjectRetain();

      [v5 isCloudSyncEnabled_];
      _Block_release(v6);

      swift_unknownObjectRelease();
    }

    _Block_copy(a2);
  }

  else
  {
    _Block_copy(a2);
    sub_21CE321B4();
    if (v8)
    {
      v9 = [objc_opt_self() sharedCloudSettingsManager];
      v10 = sub_21CE6CC20();

      v11 = [v9 isEnabledForStore_];

      (a2)[2](a2, v11, 0);
    }
  }
}

uint64_t sub_21CE32634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CDE7888;

  return sub_21CE2C888(a1, v4, v5, v6);
}

uint64_t sub_21CE326F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CDE7A00;

  return sub_21CE2D56C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_91Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t objectdestroy_66Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_106Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

Settings::SidebarButtonAction::ActionType_optional __swiftcall SidebarButtonAction.ActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void sub_21CE32934(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Settings19SidebarButtonAction_action);
  v4 = sub_21CE6CC20();
  [a1 encodeInteger:v3 forKey:v4];
}

id SidebarButtonAction.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE35A4C(a1);

  return v4;
}

id SidebarButtonAction.init(coder:)(void *a1)
{
  v2 = sub_21CE35A4C(a1);

  return v2;
}

id SidebarButtonAction.__allocating_init(_:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC8Settings19SidebarButtonAction_action] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SidebarButtonAction.init(_:)(_BYTE *a1)
{
  v1[OBJC_IVAR____TtC8Settings19SidebarButtonAction_action] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SidebarButtonAction();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t SidebarConfiguration.SidebarIconSize.description.getter()
{
  if (*v0)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

Settings::SidebarConfiguration::SidebarIconSize_optional __swiftcall SidebarConfiguration.SidebarIconSize.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_21CE32C5C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_21CE32C7C()
{
  if (*v0)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_21CE32CA8()
{
  v1 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21CE32CEC(char a1)
{
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21CE32D9C()
{
  v1 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21CE32DE0(char a1)
{
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21CE32E90()
{
  v1 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21CE32ED4(char a1)
{
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21CE32F84()
{
  v1 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21CE32FC8(char a1)
{
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21CE330F0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_21CE33144(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_21CE331F4(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC8Settings20SidebarConfiguration_selection;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_21CE6CC20();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_21CE6CC20();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_21CE6CC20();
  [a1 encodeBool:v7 forKey:v8];

  v9 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_21CE6CC20();
  [a1 encodeBool:v10 forKey:v11];

  v12 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_21CE6CC20();
  [a1 encodeBool:v13 forKey:v14];

  v15 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = sub_21CE6CC20();
  [a1 encodeBool:v16 forKey:v17];

  v18 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = sub_21CE6CC20();
  [a1 encodeInteger:v19 forKey:v20];
}

id SidebarConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE35B0C(a1);

  return v4;
}

id SidebarConfiguration.init(coder:)(void *a1)
{
  v2 = sub_21CE35B0C(a1);

  return v2;
}

id SidebarConfiguration.__allocating_init(selection:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton] = 0;
  v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton] = 0;
  v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled] = 0;
  v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled] = 0;
  v6 = &v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_selection];
  *v6 = 0;
  v6[1] = 0;
  v5[OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize] = 0;
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SidebarConfiguration.init(selection:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton] = 0;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton] = 0;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled] = 0;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled] = 0;
  v5 = &v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_selection];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize] = 0;
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SidebarConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_21CE337A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21CE33804()
{
  v1 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21CE33850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21CE33908()
{
  v1 = OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon;
  v2 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5)
    {
      v6 = v5;
      v3 = sub_21CE6C960();
    }

    else
    {
      v3 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_21CE35E20(v7);
  }

  sub_21CE35E30(v2);
  return v3;
}

uint64_t sub_21CE339B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon);
  *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon) = a1;
  return sub_21CE35E20(v2);
}

uint64_t (*sub_21CE339C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_21CE33908();
  return sub_21CE33A10;
}

uint64_t sub_21CE33A10(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon);
  *(v2 + OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon) = *a1;
  if (a2)
  {

    sub_21CE35E20(v3);
  }

  else
  {

    return sub_21CE35E20(v3);
  }
}

uint64_t sub_21CE33A94()
{
  v1 = OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SidebarItem.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_name);

  return v1;
}

uint64_t SidebarItem.subtext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_subtext);

  return v1;
}

uint64_t SidebarItem.uuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_uuid);

  return v1;
}

uint64_t SidebarItem.iconUTTypeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier);

  return v1;
}

uint64_t sub_21CE33BC8()
{
  v1 = v0 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_21CE33C14(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21CE33CEC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_21CE33DC0()
{
  v1 = v0;
  sub_21CE6D290();
  MEMORY[0x21CF1ACB0](0x203A656D616ELL, 0xE600000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40460, &qword_21CE72620);
  v2 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v2);

  MEMORY[0x21CF1ACB0](0x7478657462757320, 0xEA0000000000203ALL);

  v3 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v3);

  MEMORY[0x21CF1ACB0](0x203A6469757520, 0xE700000000000000);
  MEMORY[0x21CF1ACB0](*(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_uuid), *(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_uuid + 8));
  MEMORY[0x21CF1ACB0](0x203A6567616D6920, 0xE800000000000000);
  v4 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v5 = *(v1 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40B00, &qword_21CE72E18);
  v6 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v6);

  MEMORY[0x21CF1ACB0](0x6F43656764616220, 0xED0000203A746E75);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40B08, &qword_21CE72E20);
  v7 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v7);

  return 0;
}

void sub_21CE33FE8(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_name + 8))
  {
    v3 = sub_21CE6CC20();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_21CE6CC20();
  [a1 encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_subtext + 8))
  {
    v5 = sub_21CE6CC20();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CE6CC20();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = sub_21CE6CC20();
  v8 = sub_21CE6CC20();
  [a1 encodeObject:v7 forKey:v8];

  v9 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_21CE6CC20();
  [a1 encodeObject:v10 forKey:v11];

  v12 = v1 + OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID;
  swift_beginAccess();
  if (*(v12 + 8))
  {

    v13 = sub_21CE6CC20();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_21CE6CC20();
  [a1 encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier + 8))
  {
    v15 = sub_21CE6CC20();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_21CE6CC20();
  [a1 encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  v17 = v1 + OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount;
  swift_beginAccess();
  v18 = 0;
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = sub_21CE6CEC0();
  }

  v19 = sub_21CE6CC20();
  [a1 encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  v20 = v1 + OBJC_IVAR____TtC8Settings11SidebarItem_tooltip;
  swift_beginAccess();
  if (*(v20 + 8))
  {

    v21 = sub_21CE6CC20();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_21CE6CC20();
  [a1 encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();

  v23 = OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth;
  swift_beginAccess();
  v24 = *(v1 + v23);
  v25 = sub_21CE6CC20();
  [a1 encodeBool:v24 forKey:v25];
}

id SidebarItem.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE35E40(a1);

  return v4;
}

id SidebarItem.init(coder:)(void *a1)
{
  v2 = sub_21CE35E40(a1);

  return v2;
}

id SidebarItem.__allocating_init(name:subtext:uuid:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  *&v15[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v15[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v17 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v17 = 0;
  v17[1] = 0;
  v15[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v18 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v21 = a5;
  v21[1] = a6;
  swift_beginAccess();
  *&v15[v16] = a7;
  v22 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v22 = a3;
  v22[1] = a4;
  v23 = &v15[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v25.receiver = v15;
  v25.super_class = v7;
  return objc_msgSendSuper2(&v25, sel_init);
}

id SidebarItem.init(name:subtext:uuid:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  *&v7[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v7[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v12 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v12 = 0;
  v12[1] = 0;
  v7[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v13 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v15 = a1;
  v15[1] = a2;
  v16 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v16 = a5;
  v16[1] = a6;
  swift_beginAccess();
  *&v7[v11] = a7;
  v17 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v17 = a3;
  v17[1] = a4;
  v18 = &v7[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  v19 = type metadata accessor for SidebarItem();
  *v18 = 0;
  v18[1] = 0;
  v21.receiver = v7;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, sel_init);
}

id SidebarItem.init(extensionID:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  *&v2[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v2[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v4 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v4 = 0;
  v4[1] = 0;
  v2[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v5 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v8 = a1;
  v8[1] = a2;
  swift_beginAccess();
  *&v2[v3] = 0;
  v9 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  v11 = type metadata accessor for SidebarItem();
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = v2;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SidebarItem.init(name:subtext:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v6[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v7 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v7 = 0;
  v7[1] = 0;
  v6[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v8 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v11 = a5;
  v11[1] = a6;
  v12 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v12 = a3;
  v12[1] = a4;
  v13 = &v6[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  v14 = type metadata accessor for SidebarItem();
  *v13 = 0;
  v13[1] = 0;
  v16.receiver = v6;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_init);
}

id SidebarItem.__allocating_init(name:subtext:uuid:imageFromBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = objc_allocWithZone(v8);
  *&v16[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v16[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v17 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v17 = 0;
  v17[1] = 0;
  v16[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v18 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v21 = a5;
  v21[1] = a6;
  v22 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v22 = a3;
  v22[1] = a4;
  swift_beginAccess();
  *v17 = a7;
  v17[1] = a8;
  v23 = &v16[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v26.receiver = v16;
  v26.super_class = v8;
  return objc_msgSendSuper2(&v26, sel_init);
}

id SidebarItem.init(name:subtext:uuid:imageFromBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v8[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v11 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v11 = 0;
  v11[1] = 0;
  v8[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v12 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v15 = a5;
  v15[1] = a6;
  v16 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v16 = a3;
  v16[1] = a4;
  swift_beginAccess();
  *v11 = a7;
  v11[1] = a8;
  v17 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  v18 = type metadata accessor for SidebarItem();
  *v17 = 0;
  v17[1] = 0;
  v20.receiver = v8;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_init);
}

id SidebarItem.__allocating_init(name:subtext:uuid:iconUTTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  *&v17[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v17[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v18 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v18 = 0;
  v18[1] = 0;
  v17[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v19 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v22 = a5;
  v22[1] = a6;
  v23 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v23 = a3;
  v23[1] = a4;
  v24 = &v17[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  *v24 = a7;
  v24[1] = a8;
  v26.receiver = v17;
  v26.super_class = v8;
  return objc_msgSendSuper2(&v26, sel_init);
}

id SidebarItem.init(name:subtext:uuid:iconUTTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v8[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v9 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v9 = 0;
  v9[1] = 0;
  v8[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v10 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
  *v13 = a5;
  v13[1] = a6;
  v14 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v14 = a3;
  v14[1] = a4;
  v15 = &v8[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
  *v15 = a7;
  v15[1] = a8;
  v17.receiver = v8;
  v17.super_class = type metadata accessor for SidebarItem();
  return objc_msgSendSuper2(&v17, sel_init);
}

id SidebarItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21CE34F68@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for SidebarItem();
  result = sub_21CE6D2A0();
  *a3 = result;
  return result;
}

uint64_t SidebarSection.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings14SidebarSection_label);

  return v1;
}

uint64_t sub_21CE34FF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Settings14SidebarSection_content;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_21CE350A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Settings14SidebarSection_content;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_21CE35174(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21CE6CC20();

  return v5;
}

uint64_t sub_21CE351E4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40460, &qword_21CE72620);
  v1 = sub_21CE6CC80();
  v13 = v1;
  v2 = OBJC_IVAR____TtC8Settings14SidebarSection_content;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return v1;
  }

  result = sub_21CE6D360();
  v5 = result;
  if (!result)
  {
    return v1;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CF1B2A0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 description];
      v10 = sub_21CE6CC50();
      v12 = v11;

      MEMORY[0x21CF1ACB0](v10, v12);
    }

    while (v5 != v6);

    return v13;
  }

  __break(1u);
  return result;
}

id SidebarSection.__allocating_init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC8Settings14SidebarSection_label];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC8Settings14SidebarSection_content] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SidebarSection.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC8Settings14SidebarSection_label];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC8Settings14SidebarSection_content] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SidebarSection();
  return objc_msgSendSuper2(&v6, sel_init);
}

id SidebarSection.init(coder:)(void *a1)
{
  v2 = v1;
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  v4 = sub_21CE6D0F0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CE6CC50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = &v2[OBJC_IVAR____TtC8Settings14SidebarSection_label];
  *v9 = v6;
  v9[1] = v8;
  sub_21CDE40C8(0, &qword_27CE40388, 0x277CBEA90);
  v10 = sub_21CE6D0F0();
  if (v10)
  {
    v11 = v10;
    sub_21CDE40C8(0, &qword_27CE40B20, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40B28, &unk_21CE72E28);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21CE6F420;
    *(v12 + 32) = sub_21CDE40C8(0, &unk_27CE40B30, 0x277CBEA60);
    *(v12 + 40) = type metadata accessor for SidebarItem();
    v13 = sub_21CE6BA90();
    v15 = v14;
    sub_21CE6CF50();

    sub_21CDF32E8(v13, v15);

    if (!v21)
    {

      sub_21CE362A4(v20);
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40B40, &qword_21CE72E38);
    if (swift_dynamicCast())
    {
      *&v2[OBJC_IVAR____TtC8Settings14SidebarSection_content] = v19;
      v18.receiver = v2;
      v18.super_class = type metadata accessor for SidebarSection();
      v16 = objc_msgSendSuper2(&v18, sel_init);

      return v16;
    }
  }

LABEL_9:

  type metadata accessor for SidebarSection();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_21CE35700(void *a1)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (*(v1 + OBJC_IVAR____TtC8Settings14SidebarSection_label + 8))
  {
    v3 = sub_21CE6CC20();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_21CE6CC20();
  [a1 encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = objc_opt_self();
  swift_beginAccess();
  type metadata accessor for SidebarItem();

  v6 = sub_21CE6CD30();

  v16[0] = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v16];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_21CE6BA90();
    v11 = v10;

    v12 = sub_21CE6BA70();
    sub_21CDF32E8(v9, v11);
    v13 = sub_21CE6CC20();
    [a1 encodeObject:v12 forKey:v13];
  }

  else
  {
    v14 = v8;
    v15 = sub_21CE6B910();

    swift_willThrow();
  }
}

id sub_21CE359C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21CE35A4C(void *a1)
{
  v3 = sub_21CE6CC20();
  v4 = [a1 decodeIntegerForKey_];

  v5 = v4 == 1;
  if (v4 == 2)
  {
    v5 = 2;
  }

  v1[OBJC_IVAR____TtC8Settings19SidebarButtonAction_action] = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SidebarButtonAction();
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21CE35B0C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsAddButton] = 0;
  v5 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_wantsDeleteButton] = 0;
  v27 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_addButtonEnabled] = 0;
  v6 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_deleteButtonEnabled] = 0;
  v7 = &v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_selection];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize;
  v2[OBJC_IVAR____TtC8Settings20SidebarConfiguration_iconSize] = 0;
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  v9 = sub_21CE6D0F0();
  if (v9)
  {
    v10 = v6;
    v11 = v8;
    v12 = v9;
    v13 = sub_21CE6CC50();
    v15 = v14;

    v8 = v11;
    v6 = v10;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  swift_beginAccess();
  *v7 = v13;
  v7[1] = v15;

  v16 = sub_21CE6CC20();
  v17 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v2[v4] = v17;
  v18 = sub_21CE6CC20();
  v19 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v2[v5] = v19;
  v20 = sub_21CE6CC20();
  v21 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v2[v27] = v21;
  v22 = sub_21CE6CC20();
  v23 = [a1 decodeBoolForKey_];

  swift_beginAccess();
  v2[v6] = v23;
  v24 = sub_21CE6CC20();
  v25 = [a1 decodeIntegerForKey_];

  swift_beginAccess();
  v2[v8] = v25 == 1;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for SidebarConfiguration();
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_21CE35E20(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21CE35E30(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

id sub_21CE35E40(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Settings11SidebarItem_image;
  *&v2[OBJC_IVAR____TtC8Settings11SidebarItem_image] = 0;
  *&v2[OBJC_IVAR____TtC8Settings11SidebarItem____lazy_storage___icon] = 1;
  v5 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_iconFromBundleID];
  *v5 = 0;
  v5[1] = 0;
  v49 = OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth;
  v2[OBJC_IVAR____TtC8Settings11SidebarItem_flexibleWidth] = 0;
  v6 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_badgeCount];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_tooltip];
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  *v7 = 0;
  v7[1] = 0;
  v8 = sub_21CE6D0F0();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CE6CC50();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_name];
  *v13 = v10;
  v13[1] = v12;
  v14 = sub_21CE6D0F0();
  if (v14)
  {
    v15 = v14;
    v16 = sub_21CE6CC50();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_subtext];
  *v19 = v16;
  v19[1] = v18;
  result = sub_21CE6D0F0();
  if (result)
  {
    v21 = result;
    v22 = sub_21CE6CC50();
    v24 = v23;

    v25 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_uuid];
    *v25 = v22;
    v25[1] = v24;
    v26 = sub_21CE6D0F0();
    if (v26)
    {
      v27 = v26;
      v28 = sub_21CE6CC50();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    swift_beginAccess();
    *v5 = v28;
    v5[1] = v30;

    v31 = sub_21CE6D0F0();
    if (v31)
    {
      v32 = v31;
      v33 = sub_21CE6CC50();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = &v2[OBJC_IVAR____TtC8Settings11SidebarItem_iconUTTypeIdentifier];
    *v36 = v33;
    v36[1] = v35;
    v37 = sub_21CE6D0F0();
    if (v37)
    {
      v38 = v37;
      v39 = sub_21CE6CC50();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    swift_beginAccess();
    *v7 = v39;
    v7[1] = v41;

    sub_21CDE40C8(0, &unk_27CE403F0, 0x277CCABB0);
    v42 = sub_21CE6D0F0();
    v43 = v42;
    if (v42)
    {
      v44 = [v42 integerValue];
    }

    else
    {
      v44 = 0;
    }

    swift_beginAccess();
    *v6 = v44;
    v6[8] = v43 == 0;
    v45 = sub_21CE6CC20();
    v46 = [a1 decodeBoolForKey_];

    swift_beginAccess();
    v2[v49] = v46;
    sub_21CDE40C8(0, &unk_27CE40B60, 0x277D755B8);
    v47 = sub_21CE6D0F0();
    swift_beginAccess();
    v48 = *&v2[v4];
    *&v2[v4] = v47;

    v50.receiver = v2;
    v50.super_class = type metadata accessor for SidebarItem();
    return objc_msgSendSuper2(&v50, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CE362A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40410, &qword_21CE71B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CE36310()
{
  result = qword_27CE40B48;
  if (!qword_27CE40B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40B48);
  }

  return result;
}

unint64_t sub_21CE36368()
{
  result = qword_27CE40B50;
  if (!qword_27CE40B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40B50);
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm_0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for SidebarButtonAction.ActionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SidebarButtonAction.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21CE3701C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void sub_21CE37130(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21CE37190()
{
  v1 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_21CE371DC()
{
  v1 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21CE37220(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC8Settings21TitlebarConfiguration_title;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_21CE6CC20();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_21CE6CC20();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = v1 + OBJC_IVAR____TtC8Settings21TitlebarConfiguration_subtitle;
  swift_beginAccess();
  if (*(v6 + 8))
  {

    v7 = sub_21CE6CC20();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_21CE6CC20();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols;
  swift_beginAccess();
  if (*(v1 + v9))
  {

    v10 = sub_21CE6CD30();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_21CE6CC20();
  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  v12 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels;
  swift_beginAccess();
  if (*(v1 + v12))
  {

    v13 = sub_21CE6CD30();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_21CE6CC20();
  [a1 encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = sub_21CE6CC20();
  [a1 encodeObject:v16 forKey:v17];

  v18 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = sub_21CE6CC20();
  [a1 encodeBool:v19 forKey:v20];
}

id TitlebarConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE37D68(a1);

  return v4;
}

id TitlebarConfiguration.init(coder:)(void *a1)
{
  v2 = sub_21CE37D68(a1);

  return v2;
}

id TitlebarConfiguration.__allocating_init(title:subtitle:imageSymbol:imageLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = type metadata accessor for TitlebarConfiguration();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_title];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_subtitle];
  *v16 = 0;
  v16[1] = 0;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols] = 0;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels] = 0;
  v17 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration] = 0;
  swift_beginAccess();
  *v15 = a1;
  v15[1] = a2;
  swift_beginAccess();
  *v16 = a3;
  v16[1] = a4;
  swift_beginAccess();
  v18 = *&v14[v17];
  *&v14[v17] = 0;

  v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration] = 0;
  v24.receiver = v14;
  v24.super_class = v13;
  v19 = objc_msgSendSuper2(&v24, sel_init);
  sub_21CE37934(a5, a6, a7, a8);

  return v19;
}

id TitlebarConfiguration.__allocating_init(title:subtitle:imageSymbol:imageLabel:cloudSyncConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v13 = type metadata accessor for TitlebarConfiguration();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_title];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_subtitle];
  *v16 = 0;
  v16[1] = 0;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols] = 0;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels] = 0;
  v17 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  *&v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration] = 0;
  swift_beginAccess();
  *v15 = a1;
  v15[1] = a2;
  swift_beginAccess();
  *v16 = a3;
  v16[1] = a4;
  swift_beginAccess();
  v18 = *&v14[v17];
  *&v14[v17] = a9;
  v19 = a9;

  v14[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration] = 1;
  v26.receiver = v14;
  v26.super_class = v13;
  v20 = objc_msgSendSuper2(&v26, sel_init);
  sub_21CE37934(a5, a6, a7, a8);

  return v20;
}

uint64_t sub_21CE37934(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols;
    swift_beginAccess();
    if (*(v4 + v9))
    {

      v11 = sub_21CE36FBC(v37);
      v12 = *v10;
      if (*v10)
      {
        v13 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_21CDF2150(0, *(v12 + 2) + 1, 1, v12);
          *v13 = v12;
        }

        v15 = *(v12 + 2);
        v16 = *(v12 + 3);
        v17 = v15 + 1;
        if (v15 >= v16 >> 1)
        {
          v36 = v15 + 1;
          v33 = v12;
          v34 = *(v12 + 2);
          v35 = sub_21CDF2150((v16 > 1), v15 + 1, 1, v33);
          v15 = v34;
          v17 = v36;
          v12 = v35;
          *v13 = v35;
        }

        *(v12 + 2) = v17;
        v18 = &v12[16 * v15];
        *(v18 + 4) = v8;
        *(v18 + 5) = a2;
        (v11)(v37, 0);
      }

      else
      {

        (v11)(v37, 0);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE402F0, &qword_21CE6F600);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21CE702B0;
      *(v19 + 32) = v8;
      *(v19 + 40) = a2;
      *(v4 + v9) = v19;
    }

    v20 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels;
    swift_beginAccess();
    if (*(v4 + v20))
    {
      v22 = sub_21CE370D0(v37);
      v23 = *v21;
      if (*v21)
      {
        v24 = v21;
        if (a4)
        {
          v25 = a4;
        }

        else
        {
          a3 = 0;
          v25 = 0xE000000000000000;
        }

        v26 = swift_isUniquelyReferenced_nonNull_native();
        *v24 = v23;
        if ((v26 & 1) == 0)
        {
          v23 = sub_21CDF2150(0, *(v23 + 2) + 1, 1, v23);
          *v24 = v23;
        }

        v28 = *(v23 + 2);
        v27 = *(v23 + 3);
        if (v28 >= v27 >> 1)
        {
          v23 = sub_21CDF2150((v27 > 1), v28 + 1, 1, v23);
          *v24 = v23;
        }

        *(v23 + 2) = v28 + 1;
        v29 = &v23[16 * v28];
        *(v29 + 4) = a3;
        *(v29 + 5) = v25;
        return (v22)(v37, 0);
      }

      else
      {
        return (v22)(v37, 0);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE402F0, &qword_21CE6F600);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_21CE702B0;
      if (a4)
      {
        v31 = a3;
      }

      else
      {
        v31 = 0;
      }

      v32 = 0xE000000000000000;
      if (a4)
      {
        v32 = a4;
      }

      *(v30 + 32) = v31;
      *(v30 + 40) = v32;
      *(v4 + v20) = v30;
    }
  }

  return result;
}

id TitlebarConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TitlebarConfiguration.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TitlebarConfiguration();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21CE37D68(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_title];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_subtitle];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols;
  *&v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageSymbols] = 0;
  v7 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels;
  *&v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_imageLabels] = 0;
  v29 = OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration;
  *&v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_cloudSyncConfiguration] = 0;
  sub_21CE383A0();
  v8 = sub_21CE6D0F0();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CE6CC50();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  swift_beginAccess();
  *v4 = v10;
  v4[1] = v12;

  v13 = sub_21CE6D0F0();
  if (v13)
  {
    v14 = v13;
    v15 = sub_21CE6CC50();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  swift_beginAccess();
  *v5 = v15;
  v5[1] = v17;

  v18 = sub_21CE6CC20();
  v19 = [a1 decodeObjectForKey_];

  if (v19)
  {
    sub_21CE6D190();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (*(&v34 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
    if (swift_dynamicCast())
    {
      v20 = v32;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    sub_21CE362A4(&v35);
    v20 = 0;
  }

  swift_beginAccess();
  *&v2[v6] = v20;

  v21 = sub_21CE6CC20();
  v22 = [a1 decodeObjectForKey_];

  if (v22)
  {
    sub_21CE6D190();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (*(&v34 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
    if (swift_dynamicCast())
    {
      v23 = v30;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_21CE362A4(&v35);
    v23 = 0;
  }

  swift_beginAccess();
  *&v2[v7] = v23;

  type metadata accessor for CloudSyncConfiguration(0);
  v24 = sub_21CE6D0F0();
  swift_beginAccess();
  v25 = *&v2[v29];
  *&v2[v29] = v24;

  v26 = sub_21CE6CC20();
  v27 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC8Settings21TitlebarConfiguration_useCloudSyncConfiguration] = v27;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for TitlebarConfiguration();
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t keypath_get_3Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

unint64_t sub_21CE383A0()
{
  result = qword_27CE40110;
  if (!qword_27CE40110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE40110);
  }

  return result;
}

uint64_t sub_21CE38448()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_21CE6CB20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CE6CB40();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  sub_21CE38EB0();
  v11 = sub_21CE6CF90();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_21CE38EFC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CE27C50;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);

  sub_21CE6CB30();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CE38F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BC0, &qword_21CE73218);
  sub_21CE38F5C();
  sub_21CE6D1B0();
  MEMORY[0x21CF1AF80](0, v10, v6, v13);
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_21CE386F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v7 = sub_21CE6BDA0();
    __swift_project_value_buffer(v7, qword_27CE412C0);
    v2 = sub_21CE6BD80();
    v8 = sub_21CE6CF10();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136446978;
      v11 = sub_21CE6D2B0();
      v13 = sub_21CDF2CC8(v11, v12, v17);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2048;
      *(v9 + 14) = 34;
      *(v9 + 22) = 2082;
      v14 = sub_21CE6D2B0();
      v16 = sub_21CDF2CC8(v14, v15, v17);

      *(v9 + 24) = v16;
      *(v9 + 32) = 2082;
      *(v9 + 34) = sub_21CDF2CC8(0x20736920666C6573, 0xEC000000216C696ELL, v17);
      _os_log_impl(&dword_21CDE1000, v2, v8, "%{public}s:%ld %{public}s %{public}s", v9, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v10, -1, -1);
      MEMORY[0x21CF1BD50](v9, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = Strong;
  v3 = [Strong view];
  if (v3)
  {
    v4 = v3;
    [v3 frame];

    v5 = *(&v2[1].isa + OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size);
    v6 = *(&v2[2].isa + OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size);
    v17[0] = *(v2 + OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size);
    v17[1] = v5;
    v18 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BB8, &qword_21CE73210);
    sub_21CE6CA60();

LABEL_10:

    return;
  }

  __break(1u);
}

id sub_21CE38B34()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21CE38BD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21CE38C1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21CE38C6C()
{
  v1 = v0[1];
  v14 = *v0;
  v15 = v1;
  v16 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BB8, &qword_21CE73210);
  sub_21CE6CA70();
  v2 = v11;
  v3 = v12;
  v4 = v13;
  v5 = type metadata accessor for _ViewSizeReader.Reader();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size];
  *v7 = v10;
  *(v7 + 1) = v2;
  *(v7 + 2) = v3;
  *(v7 + 3) = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_21CE38D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE38E5C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CE38D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE38E5C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CE38DDC(uint64_t a1)
{
  sub_21CE38E5C();
  sub_21CE6C520();
  __break(1u);
}

unint64_t sub_21CE38E08()
{
  result = qword_281211F20;
  if (!qword_281211F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211F20);
  }

  return result;
}

unint64_t sub_21CE38E5C()
{
  result = qword_281211F18;
  if (!qword_281211F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211F18);
  }

  return result;
}

unint64_t sub_21CE38EB0()
{
  result = qword_281211A58;
  if (!qword_281211A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281211A58);
  }

  return result;
}

unint64_t sub_21CE38F04()
{
  result = qword_281213170;
  if (!qword_281213170)
  {
    sub_21CE6CB20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213170);
  }

  return result;
}

unint64_t sub_21CE38F5C()
{
  result = qword_281211AC0;
  if (!qword_281211AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BC0, &qword_21CE73218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281211AC0);
  }

  return result;
}

uint64_t sub_21CE38FC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CE6BA60();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_21CE3B9B4(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]), v7 = sub_21CE6CB70(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_21CE3B9B4(&qword_2812132B8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v15 = sub_21CE6CBA0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_21CE391D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CE6C3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_21CE3B9B4(&qword_281213200, MEMORY[0x277CE02A8], MEMORY[0x277CE02B0]), v7 = sub_21CE6CB70(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_21CE3B9B4(&qword_2812131F8, MEMORY[0x277CE02A8], MEMORY[0x277CE02B8]);
      v15 = sub_21CE6CBA0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_21CE393F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C60, &qword_21CE73398);
  v0 = sub_21CE6C3C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21CE6F420;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CE0270], v0);
  v6(v5 + v2, *MEMORY[0x277CE0248], v0);
  v7 = sub_21CE3B694(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2812165B0 = v7;
  return result;
}

uint64_t sub_21CE39534@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CE6C280();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C08, &qword_21CE73290);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SettingsListAppearanceModifier(0);
  sub_21CDFAA5C(v1 + *(v10 + 20), v9, &qword_27CE40C08, &qword_21CE73290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CE6C3C0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21CE6CF20();
    v13 = sub_21CE6C580();
    sub_21CE6BD70();

    sub_21CE6C270();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21CE3973C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CE6C280();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SettingsListAppearanceModifier(0);
  sub_21CDFAA5C(v1 + *(v10 + 24), v9, &qword_27CE40C10, &unk_21CE73DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21CE3B624(v9, a1);
  }

  sub_21CE6CF20();
  v12 = sub_21CE6C580();
  sub_21CE6BD70();

  sub_21CE6C270();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SettingsListAppearanceModifier.body(content:)(uint64_t a1)
{
  sub_21CE6CAA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BC8, &qword_21CE73220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BD0, &qword_21CE73228);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BD8, &qword_21CE73230);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE0, &qword_21CE73238);
  sub_21CE6C450();
  sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238, MEMORY[0x277CE04B0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE8, &qword_21CE73240);
  sub_21CE39DE4();
  swift_getOpaqueTypeConformance2();
  return sub_21CE6CAB0();
}

uint64_t sub_21CE39AE8@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v18 = sub_21CE6C2F0();
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CE6C450();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BD8, &qword_21CE73230);
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v15 - v8;
  sub_21CE6C440();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BE0, &qword_21CE73238);
  v11 = sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238, MEMORY[0x277CE04B0]);
  v12 = MEMORY[0x277CDE0D0];
  sub_21CE6C8F0();
  (*(v4 + 8))(v6, v3);
  sub_21CE6C2D0();
  v19 = v10;
  v20 = v3;
  v21 = v11;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = v15;
  sub_21CE6C7C0();
  (*(v16 + 8))(v2, v18);
  return (*(v7 + 8))(v9, v13);
}

unint64_t sub_21CE39DE4()
{
  result = qword_281213220;
  if (!qword_281213220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE8, &qword_21CE73240);
    sub_21CE39E9C();
    sub_21CDE4158(&qword_281213208, &qword_27CE40C00, &qword_21CE73258, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213220);
  }

  return result;
}

unint64_t sub_21CE39E9C()
{
  result = qword_281213198;
  if (!qword_281213198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BF0, &qword_21CE73248);
    sub_21CE39F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213198);
  }

  return result;
}

unint64_t sub_21CE39F20()
{
  result = qword_2812131E8;
  if (!qword_2812131E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BF8, &qword_21CE73250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE0, &qword_21CE73238);
    sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812131E8);
  }

  return result;
}

uint64_t sub_21CE3A040(uint64_t a1)
{
  v3 = sub_21CE6C450();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BE8, &qword_21CE73240);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  sub_21CE3A214(a1, (v18 - v8));
  v10 = sub_21CE6CAD0();
  v12 = v11;
  v13 = *(v1 + 2);
  v20 = *v1;
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C38, &qword_21CE73370);
  sub_21CE6C9E0();
  v14 = v18[1];
  v15 = v19;
  v16 = &v9[*(v7 + 36)];
  *v16 = v18[0];
  *(v16 + 1) = v14;
  *(v16 + 1) = v15;
  v16[32] = 0;
  *(v16 + 5) = v10;
  *(v16 + 6) = v12;
  sub_21CE6C440();
  sub_21CE39DE4();
  sub_21CE6C8F0();
  (*(v4 + 8))(v6, v3);
  return sub_21CDEC70C(v9);
}

uint64_t sub_21CE3A214@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C40, &qword_21CE73378);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C48, &qword_21CE73380);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = sub_21CE6C2F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C50, &qword_21CE73388);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  if (sub_21CE3A724())
  {
    v30 = v6;
    v18 = [objc_opt_self() currentDevice];
    v19 = [v18 userInterfaceIdiom];

    if (v19)
    {
      sub_21CE6C2D0();
    }

    else
    {
      sub_21CE6C2E0();
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BE0, &qword_21CE73238);
    v27 = sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238, MEMORY[0x277CE04B0]);
    sub_21CE6C7C0();
    (*(v8 + 8))(v13, v7);
    (*(v15 + 16))(v30, v17, v14);
    swift_storeEnumTagMultiPayload();
    v34 = v26;
    v35 = v27;
    swift_getOpaqueTypeConformance2();
    v34 = v26;
    v35 = v27;
    swift_getOpaqueTypeConformance2();
    sub_21CE6C400();
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    sub_21CE6C590();
    sub_21CE6C2E0();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BE0, &qword_21CE73238);
    v21 = sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238, MEMORY[0x277CE04B0]);
    v22 = v29;
    sub_21CE6C7D0();
    (*(v8 + 8))(v11, v7);
    v24 = v30;
    v23 = v31;
    (*(v30 + 2))(v6, v22, v31);
    swift_storeEnumTagMultiPayload();
    v34 = v20;
    v35 = v21;
    swift_getOpaqueTypeConformance2();
    v34 = v20;
    v35 = v21;
    swift_getOpaqueTypeConformance2();
    sub_21CE6C400();
    return (*(v24 + 1))(v22, v23);
  }
}

BOOL sub_21CE3A724()
{
  v1 = sub_21CE6C4A0();
  v35 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C58, &qword_21CE73390);
  MEMORY[0x28223BE20](v34);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C28, &qword_21CE73360);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = sub_21CE6C3C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 2);
  v37 = *v0;
  v38 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C38, &qword_21CE73370);
  sub_21CE6C9C0();
  v18 = v36[0];
  if (qword_2812127C0 != -1)
  {
    swift_once();
  }

  v19 = qword_2812165B0;
  sub_21CE39534(v16);
  v32 = sub_21CE391D8(v16, v19);
  (*(v14 + 8))(v16, v13);
  sub_21CE3973C(v12);
  v20 = v35;
  (*(v35 + 104))(v10, *MEMORY[0x277CE0560], v1);
  (*(v20 + 56))(v10, 0, 1, v1);
  v21 = *(v34 + 12);
  sub_21CDFAA5C(v12, v4, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDFAA5C(v10, &v4[v21], &qword_27CE40C28, &qword_21CE73360);
  v22 = *(v20 + 48);
  if (v22(v4, 1, v1) != 1)
  {
    v34 = v12;
    v24 = v33;
    sub_21CDFAA5C(v4, v33, &qword_27CE40C28, &qword_21CE73360);
    if (v22(&v4[v21], 1, v1) != 1)
    {
      v25 = v31;
      (*(v20 + 32))(v31, &v4[v21], v1);
      sub_21CE3B9B4(&qword_2812131C0, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v23 = sub_21CE6CBA0();
      v26 = *(v20 + 8);
      v26(v25, v1);
      sub_21CDE5494(v10, &qword_27CE40C28, &qword_21CE73360);
      sub_21CDE5494(v34, &qword_27CE40C28, &qword_21CE73360);
      v26(v24, v1);
      sub_21CDE5494(v4, &qword_27CE40C28, &qword_21CE73360);
      goto LABEL_10;
    }

    sub_21CDE5494(v10, &qword_27CE40C28, &qword_21CE73360);
    sub_21CDE5494(v34, &qword_27CE40C28, &qword_21CE73360);
    (*(v20 + 8))(v24, v1);
    goto LABEL_8;
  }

  sub_21CDE5494(v10, &qword_27CE40C28, &qword_21CE73360);
  sub_21CDE5494(v12, &qword_27CE40C28, &qword_21CE73360);
  if (v22(&v4[v21], 1, v1) != 1)
  {
LABEL_8:
    sub_21CDE5494(v4, &qword_27CE40C58, &qword_21CE73390);
    v23 = 0;
    goto LABEL_10;
  }

  sub_21CDE5494(v4, &qword_27CE40C28, &qword_21CE73360);
  v23 = 1;
LABEL_10:
  v27 = [objc_opt_self() currentDevice];
  v28 = [v27 userInterfaceIdiom];

  return v28 || v18 > 320.0 && v23 & 1 | ((v32 & 1) == 0);
}

uint64_t sub_21CE3AD1C(uint64_t a1)
{
  sub_21CE6CAA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BC8, &qword_21CE73220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BD0, &qword_21CE73228);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BD8, &qword_21CE73230);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE0, &qword_21CE73238);
  sub_21CE6C450();
  sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238, MEMORY[0x277CE04B0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE8, &qword_21CE73240);
  sub_21CE39DE4();
  swift_getOpaqueTypeConformance2();
  return sub_21CE6CAB0();
}

uint64_t View.settingsListAppearance()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsListAppearanceModifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = vdupq_n_s64(0x43E0000000000000uLL);
  type metadata accessor for CGSize(0);
  sub_21CE6C9B0();
  v7 = v12;
  *v6 = v11[1];
  *(v6 + 2) = v7;
  v8 = *(v4 + 20);
  *&v6[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C08, &qword_21CE73290);
  swift_storeEnumTagMultiPayload();
  v9 = *(v4 + 24);
  *&v6[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C10, &unk_21CE73DC0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x21CF1A890](v6, a1, v4, a2);
  return sub_21CE3B228(v6);
}

uint64_t type metadata accessor for SettingsListAppearanceModifier(uint64_t a1)
{
  result = qword_2812127A0;
  if (!qword_2812127A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE3B0B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C28, &qword_21CE73360);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21CDFAA5C(a1, &v5 - v3, &qword_27CE40C28, &qword_21CE73360);
  return sub_21CE6C1D0();
}

uint64_t sub_21CE3B160(uint64_t a1)
{
  v2 = sub_21CE6C3C0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CE6C170();
}

uint64_t sub_21CE3B228(uint64_t a1)
{
  v2 = type metadata accessor for SettingsListAppearanceModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21CE3B2C8(uint64_t a1)
{
  sub_21CE3B3C4(319, &qword_281213188, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_21CE3B3C4(319, &qword_281213240, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21CE3B428(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CE3B3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21CE3B428(uint64_t a1)
{
  if (!qword_281213238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40C28, &qword_21CE73360);
    v1 = sub_21CE6BF50();
    if (!v2)
    {
      atomic_store(v1, &qword_281213238);
    }
  }
}

unint64_t sub_21CE3B48C()
{
  result = qword_281213178;
  if (!qword_281213178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40C30, &qword_21CE73368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BD8, &qword_21CE73230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE0, &qword_21CE73238);
    sub_21CE6C450();
    sub_21CDE4158(&qword_2812131C8, &qword_27CE40BE0, &qword_21CE73238, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40BE8, &qword_21CE73240);
    sub_21CE39DE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281213178);
  }

  return result;
}

uint64_t sub_21CE3B624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C28, &qword_21CE73360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE3B694(uint64_t a1)
{
  v2 = sub_21CE6C3C0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C68, &qword_21CE733A0);
    v9 = sub_21CE6D260();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21CE3B9B4(&qword_281213200, MEMORY[0x277CE02A8], MEMORY[0x277CE02B0]);
      v16 = sub_21CE6CB70();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_21CE3B9B4(&qword_2812131F8, MEMORY[0x277CE02A8], MEMORY[0x277CE02B8]);
          v23 = sub_21CE6CBA0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21CE3B9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CE3BA04(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_21CDF2128(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_21CE6B960();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21CE3BB30(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21CE6D360();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_21CE6D360();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21CE454E8(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21CE13F9C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_21CE3BC20(void *result)
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

  result = sub_21CDF2AEC(result, v10, 1, v3);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD98, &qword_21CE71CC0);
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

void *sub_21CE3BD24()
{
  result = sub_21CE4A090();
  qword_281211D10 = result;
  return result;
}

uint64_t static LinkMetadataIndexer.shared.getter()
{
  if (qword_281211D08 != -1)
  {
    swift_once();
  }
}

void *LinkMetadataIndexer.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v3 = *MEMORY[0x277CCA1A0];
  v4 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v5 = v3;
  v6 = sub_21CE6CC20();
  v7 = [v4 initWithName:v6 protectionClass:v5];

  v2[3] = v7;
  v2[4] = a1;
  return v2;
}

void sub_21CE3BE70(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 32);
  v4 = sub_21CE6CC20();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *a2 = v3;
}

void sub_21CE3BEE0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*a2 + 32);
  v3 = sub_21CE6CDA0();
  v4 = sub_21CE6CC20();
  [v2 setValue:v3 forKey:v4];
}

id sub_21CE3BF68()
{
  v1 = *(v0 + 32);
  v2 = sub_21CE6CC20();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_21CE3BFC8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = sub_21CE6CDA0();
  v4 = sub_21CE6CC20();
  [v2 setValue:v3 forKey:v4];
}

void (*sub_21CE3C048(uint64_t a1))(void **a1)
{
  v3 = *(v1 + 32);
  *a1 = v3;
  v4 = sub_21CE6CC20();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *(a1 + 8) = v3;
  return sub_21CE3C0D4;
}

void sub_21CE3C0D4(void **a1)
{
  v1 = *a1;
  v3 = sub_21CE6CDA0();
  v2 = sub_21CE6CC20();
  [v1 setValue:v3 forKey:v2];
}

id sub_21CE3C158(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC3508]) init];
  [v2 setEnableRankedResults_];
  v3 = v2;
  v4 = sub_21CE6CD30();
  [v3 setFetchAttributes_];

  [v3 setDisableSemanticSearch_];
  [v3 setEnableRankedResults_];
  [v3 setMaxRankedResultCount_];
  [v3 setMaxResultCount_];
  v5 = objc_allocWithZone(MEMORY[0x277CC3500]);
  v6 = v3;
  v7 = sub_21CE6CC20();
  v8 = [v5 initWithUserQueryString:v7 userQueryContext:v6];

  v9 = v8;
  v10 = sub_21CE6CD30();
  [v9 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C78, &unk_21CE733C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CE6F420;
  v12 = *MEMORY[0x277CCA190];
  v13 = *MEMORY[0x277CCA1A0];
  *(v11 + 32) = *MEMORY[0x277CCA190];
  *(v11 + 40) = v13;
  type metadata accessor for FileProtectionType(0);
  v14 = v12;
  v15 = v13;
  v16 = sub_21CE6CD30();

  [v9 setProtectionClasses_];

  return v9;
}

uint64_t sub_21CE3C360()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_21CE6CDF0();
  v4 = sub_21CE6CE20();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_21CE11F34(0, 0, v3, &unk_21CE733D8, v5);
}

uint64_t sub_21CE3C470()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_21CE3C500;

  return sub_21CE3C7D8();
}

uint64_t sub_21CE3C500()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CE3C634, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21CE3C634()
{
  v1 = *(v0 + 56);
  sub_21CE6D290();

  swift_getErrorValue();
  v2 = sub_21CE6D450();
  MEMORY[0x21CF1ACB0](v2);

  sub_21CE6BB00();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CE3C724()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21CDE7A00;

  return sub_21CE3C470();
}

uint64_t sub_21CE3C7D8()
{
  v1[2] = v0;
  v2 = sub_21CE6BAC0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_21CE3C8D8;

  return sub_21CE3CDB8(0, 0, 0, 0, 0);
}

uint64_t sub_21CE3C8D8(uint64_t a1)
{
  v3 = *v2;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21CE3CA30, 0, 0);
  }
}

uint64_t sub_21CE3CA30()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_21CE6BAB0();
  v5 = *(v4 + 32);
  v6 = sub_21CE6BAA0();
  v7 = sub_21CE6CC20();
  [v5 setValue:v6 forKey:v7];

  v8 = sub_21CE6CC20();
  [v5 removeObjectForKey_];

  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21CE3CB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CE3CC08;

  return sub_21CE3CDB8(a1, a2, 0, 0, v4);
}

uint64_t sub_21CE3CC08(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_21CE3CD08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CE4B3D0;

  return sub_21CE3CDB8(0, 0, a1, a2, 0);
}

uint64_t sub_21CE3CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 72) = a4;
  *(v6 + 80) = v5;
  *(v6 + 184) = a5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a1;
  v7 = sub_21CE6BB40();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CE3CEB0, 0, 0);
}

uint64_t sub_21CE3CEB0()
{
  v125 = v0;
  v124[1] = *MEMORY[0x277D85DE8];
  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v1 = sub_21CE6BDA0();
  *(v0 + 112) = __swift_project_value_buffer(v1, qword_2812165F0);
  v2 = sub_21CE6BD80();
  v3 = sub_21CE6CF30();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CDE1000, v2, v3, "Collecting open intents...", v4, 2u);
    MEMORY[0x21CF1BD50](v4, -1, -1);
  }

  v5 = *(v0 + 80);

  v6 = *(v5 + 16);
  v7 = [objc_opt_self() openEntitySystemProtocol];
  sub_21CDFA7C4(MEMORY[0x277D84F90]);
  sub_21CDE40C8(0, &qword_281211AA8, 0x277D23960);
  v8 = sub_21CE6CB50();

  *(v0 + 16) = 0;
  v9 = [v6 actionsConformingToSystemProtocol:v7 withParametersOfTypes:v8 bundleIdentifier:0 error:v0 + 16];

  v10 = *(v0 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C80, &qword_21CE73400);
    v122 = sub_21CE6CB60();
    v11 = v10;

    v12 = sub_21CE6BD80();
    v13 = sub_21CE6CF30();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21CDE1000, v12, v13, "Collecting open intents... done!", v14, 2u);
      MEMORY[0x21CF1BD50](v14, -1, -1);
    }

    v115 = (v0 + 32);
    v116 = (v0 + 24);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);

    sub_21CE6BB30();
    v114 = sub_21CE6BB10();
    v117 = v19;
    (*(v16 + 8))(v15, v17);
    v20 = MEMORY[0x277D84F90];
    v118 = sub_21CDFA8D4(MEMORY[0x277D84F90]);
    v119 = sub_21CDFA8E8(v20);
    v120 = sub_21CDFA8E8(v20);
    if (v18)
    {
      v21 = *(v0 + 72);

      v22 = sub_21CE6BD80();
      v23 = sub_21CE6CF30();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = *(v0 + 64);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v124[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_21CDF2CC8(v24, v21, v124);
        _os_log_impl(&dword_21CDE1000, v22, v23, "Request to index %s only", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x21CF1BD50](v26, -1, -1);
        MEMORY[0x21CF1BD50](v25, -1, -1);
      }
    }

    v27 = 0;
    v28 = v122;
    v29 = v122 + 64;
    v30 = -1;
    v31 = -1 << *(v122 + 32);
    v32 = *(v0 + 56);
    if (-v31 < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v33 = v30 & *(v122 + 64);
    v34 = (63 - v31) >> 6;
    v121 = v0;
    v123 = v34;
LABEL_15:
    *(v0 + 120) = v119;
    *(v0 + 128) = v120;
    v35 = v27;
    while (v33)
    {
      v27 = v35;
LABEL_23:
      v36 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v37 = v36 | (v27 << 6);
      v38 = (*(v28 + 48) + 16 * v37);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(*(v28 + 56) + 8 * v37);
      if (!v32 || (v40 == *(v0 + 48) ? (v42 = *(v0 + 56) == v39) : (v42 = 0), v42 || (sub_21CE6D400() & 1) != 0))
      {
        v113 = v32;
        swift_bridgeObjectRetain_n();

        v51 = sub_21CE6BD80();
        v52 = sub_21CE6CF30();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v124[0] = v54;
          *v53 = 136315138;
          *(v53 + 4) = sub_21CDF2CC8(v40, v39, v124);
          _os_log_impl(&dword_21CDE1000, v51, v52, "processing %s...", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v54);
          v0 = v121;
          MEMORY[0x21CF1BD50](v54, -1, -1);
          MEMORY[0x21CF1BD50](v53, -1, -1);
        }

        v56 = *(v0 + 64);
        v55 = *(v0 + 72);
        v57 = MEMORY[0x277D84FA0];
        *(v0 + 24) = MEMORY[0x277D84FA0];
        *(v0 + 32) = v57;
        v58 = swift_task_alloc();
        v58[2] = v40;
        v58[3] = v39;
        v58[4] = v114;
        v58[5] = v117;
        v58[6] = v56;
        v58[7] = v55;
        v58[8] = v116;
        v58[9] = v115;
        sub_21CE4A334(v41, sub_21CE4A050, v58);
        v60 = v59;

        if (!*(v60 + 16))
        {

          v0 = v121;
          v29 = v122 + 64;
          goto LABEL_46;
        }

        v61 = v118;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = v118;
        v63 = sub_21CE66850(v40, v39);
        v65 = *(v118 + 16);
        v66 = (v64 & 1) == 0;
        v67 = __OFADD__(v65, v66);
        v68 = v65 + v66;
        v29 = v122 + 64;
        if (v67)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v69 = v64;
        if (*(v118 + 24) < v68)
        {
          sub_21CE464E4(v68, isUniquelyReferenced_nonNull_native, &qword_27CE3FEE0, &qword_21CE70268);
          v61 = v124[0];
          v63 = sub_21CE66850(v40, v39);
          if ((v69 & 1) != (v70 & 1))
          {
            goto LABEL_80;
          }

LABEL_40:
          v118 = v61;
          if (v69)
          {
            goto LABEL_41;
          }

LABEL_43:
          v61[(v63 >> 6) + 8] |= 1 << v63;
          v72 = (v61[6] + 16 * v63);
          *v72 = v40;
          v72[1] = v39;
          *(v61[7] + 8 * v63) = v60;
          v73 = v61[2];
          v67 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (!v67)
          {
            v61[2] = v74;
            goto LABEL_45;
          }

LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_40;
        }

        v71 = v63;
        sub_21CE4728C(&qword_27CE3FEE0, &qword_21CE70268);
        v63 = v71;
        v29 = v122 + 64;
        v61 = v124[0];
        v118 = v124[0];
        if ((v69 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_41:
        *(v61[7] + 8 * v63) = v60;

LABEL_45:
        v0 = v121;
LABEL_46:
        v75 = *v116;
        if (!*(*v116 + 16))
        {
          goto LABEL_58;
        }

        v76 = v75;

        v77 = v119;
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = v119;
        v79 = sub_21CE66850(v40, v39);
        v81 = *(v119 + 16);
        v82 = (v80 & 1) == 0;
        v67 = __OFADD__(v81, v82);
        v83 = v81 + v82;
        if (v67)
        {
          goto LABEL_84;
        }

        v84 = v80;
        if (*(v119 + 24) >= v83)
        {
          if (v78)
          {
            goto LABEL_52;
          }

          v86 = v79;
          sub_21CE4728C(&qword_27CE40CD0, &qword_21CE70260);
          v79 = v86;
          v29 = v122 + 64;
          v77 = v124[0];
          v119 = v124[0];
          if ((v84 & 1) == 0)
          {
            goto LABEL_55;
          }

LABEL_53:
          *(v77[7] + 8 * v79) = v76;
        }

        else
        {
          sub_21CE464E4(v83, v78, &qword_27CE40CD0, &qword_21CE70260);
          v77 = v124[0];
          v79 = sub_21CE66850(v40, v39);
          if ((v84 & 1) != (v85 & 1))
          {
LABEL_80:

            return sub_21CE6D440();
          }

LABEL_52:
          v119 = v77;
          if (v84)
          {
            goto LABEL_53;
          }

LABEL_55:
          v77[(v79 >> 6) + 8] |= 1 << v79;
          v87 = (v77[6] + 16 * v79);
          *v87 = v40;
          v87[1] = v39;
          *(v77[7] + 8 * v79) = v76;
          v88 = v77[2];
          v67 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (v67)
          {
            goto LABEL_87;
          }

          v77[2] = v89;
        }

        v0 = v121;
LABEL_58:
        v90 = *v115;
        if (!*(*v115 + 16))
        {

          v28 = v122;
          v32 = v113;
          v34 = v123;
          goto LABEL_15;
        }

        v91 = v120;
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = v120;
        v94 = sub_21CE66850(v40, v39);
        v95 = *(v120 + 16);
        v96 = (v93 & 1) == 0;
        v97 = v95 + v96;
        if (__OFADD__(v95, v96))
        {
          goto LABEL_85;
        }

        v98 = v93;
        if (*(v120 + 24) >= v97)
        {
          if ((v92 & 1) == 0)
          {
            sub_21CE4728C(&qword_27CE40CD0, &qword_21CE70260);
            v91 = v124[0];
          }

          v29 = v122 + 64;
          v120 = v91;
          if ((v98 & 1) == 0)
          {
            goto LABEL_63;
          }

LABEL_69:
          *(v91[7] + 8 * v94) = v90;

          goto LABEL_70;
        }

        sub_21CE464E4(v97, v92, &qword_27CE40CD0, &qword_21CE70260);
        v91 = v124[0];
        v99 = sub_21CE66850(v40, v39);
        v29 = v122 + 64;
        if ((v98 & 1) != (v100 & 1))
        {
          goto LABEL_80;
        }

        v94 = v99;
        v120 = v91;
        if (v98)
        {
          goto LABEL_69;
        }

LABEL_63:
        v91[(v94 >> 6) + 8] |= 1 << v94;
        v101 = (v91[6] + 16 * v94);
        *v101 = v40;
        v101[1] = v39;
        *(v91[7] + 8 * v94) = v90;
        v102 = v91[2];
        v67 = __OFADD__(v102, 1);
        v103 = v102 + 1;
        if (v67)
        {
          goto LABEL_88;
        }

        v91[2] = v103;
LABEL_70:
        v0 = v121;
        v28 = v122;
        v34 = v123;

        v32 = v113;
        goto LABEL_15;
      }

      v43 = v32;

      v44 = sub_21CE6BD80();
      v45 = sub_21CE6CEF0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v124[0] = v47;
        *v46 = 136315138;
        v48 = sub_21CDF2CC8(v40, v39, v124);

        *(v46 + 4) = v48;
        _os_log_impl(&dword_21CDE1000, v44, v45, "skipping %s...", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        v49 = v47;
        v0 = v121;
        v28 = v122;
        MEMORY[0x21CF1BD50](v49, -1, -1);
        v50 = v46;
        v29 = v122 + 64;
        MEMORY[0x21CF1BD50](v50, -1, -1);
      }

      else
      {
      }

      v35 = v27;
      v32 = v43;
      v34 = v123;
    }

    while (1)
    {
      v27 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_80;
      }

      if (v27 >= v34)
      {
        break;
      }

      v33 = *(v29 + 8 * v27);
      ++v35;
      if (v33)
      {
        goto LABEL_23;
      }
    }

    *(v0 + 40) = MEMORY[0x277D84FA0];
    v104 = sub_21CE6BD80();
    v105 = sub_21CE6CF30();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_21CDE1000, v104, v105, "Indexing settingsEntities...", v106, 2u);
      MEMORY[0x21CF1BD50](v106, -1, -1);
    }

    v107 = swift_task_alloc();
    *(v0 + 136) = v107;
    *v107 = v0;
    v107[1] = sub_21CE3DC0C;
    v108 = *(v0 + 80);
    v109 = *(v0 + 184);

    return sub_21CE4049C(v120, v109, v0 + 40, 0xD000000000000024, 0x800000021CE78890, sub_21CE4A4C8, v108);
  }

  else
  {
    v111 = v10;
    sub_21CE6B910();

    swift_willThrow();

    v112 = *(v0 + 8);

    return v112();
  }
}

uint64_t sub_21CE3DC0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_21CE3DF50;
  }

  else
  {
    v4 = sub_21CE3DD4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CE3DD4C()
{

  v1 = sub_21CE6BD80();
  v2 = sub_21CE6CF30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21CDE1000, v1, v2, "Indexing settingsEntities... Done!", v3, 2u);
    MEMORY[0x21CF1BD50](v3, -1, -1);
  }

  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF30();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21CDE1000, v4, v5, "Indexing settingsEnums...", v6, 2u);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_21CE3E00C;
  v8 = *(v0 + 120);
  v9 = *(v0 + 80);
  v10 = *(v0 + 184);

  return sub_21CE429D8(v8, v10, v0 + 40, 0xD000000000000022, 0x800000021CE788C0, sub_21CE4A4E4, v9);
}

uint64_t sub_21CE3DF50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CE3E00C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {

    v4 = sub_21CE3E340;
  }

  else
  {
    v4 = sub_21CE3E15C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CE3E15C()
{
  v13 = v0;
  v12[2] = *MEMORY[0x277D85DE8];

  v1 = sub_21CE6BD80();
  v2 = sub_21CE6CF30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21CDE1000, v1, v2, "Indexing settingsEnums... Done!", v3, 2u);
    MEMORY[0x21CF1BD50](v3, -1, -1);
  }

  v4 = v0[9];

  if (!v4)
  {
    sub_21CE3ECB4(v0[5]);
  }

  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[18];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = v7;
  sub_21CE4A7CC(v5, sub_21CE4B3CC, 0, isUniquelyReferenced_nonNull_native, v12);
  if (v6)
  {
  }

  else
  {

    v10 = v12[0];

    v11 = v0[1];

    return v11(v10);
  }
}

uint64_t sub_21CE3E340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CE3E3FC(uint64_t a1, unint64_t a2, id a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a4 != 0xD000000000000015 || 0x800000021CE757E0 != a5) && (sub_21CE6D400() & 1) == 0)
  {
    v16 = [a3 attributionBundleIdentifier];
    if (!v16)
    {
LABEL_48:
      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v75 = sub_21CE6BDA0();
      __swift_project_value_buffer(v75, qword_2812165F0);
      v76 = a3;

      v77 = sub_21CE6BD80();
      v78 = sub_21CE6CF00();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v90 = v80;
        *v79 = 136315394;
        *(v79 + 4) = sub_21CDF2CC8(a1, a2, &v90);
        *(v79 + 12) = 2080;
        v81 = [v76 identifier];
        v82 = sub_21CE6CC50();
        v84 = v83;

        v85 = sub_21CDF2CC8(v82, v84, &v90);

        *(v79 + 14) = v85;
        _os_log_impl(&dword_21CDE1000, v77, v78, "skipping %s (%s...", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CF1BD50](v80, -1, -1);
        MEMORY[0x21CF1BD50](v79, -1, -1);
      }

      return 0;
    }

    v17 = v16;
    v18 = sub_21CE6CC50();
    v20 = v19;

    if (v18 == 0xD000000000000015 && 0x800000021CE757E0 == v20)
    {
    }

    else
    {
      v22 = sub_21CE6D400();

      if ((v22 & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  v23 = [a3 parameters];
  v24 = sub_21CDE40C8(0, &qword_281211A30, 0x277D23748);
  v25 = sub_21CE6CD40();

  if (v25 >> 62)
  {
    v26 = sub_21CE6D360();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26 != 1)
  {
    goto LABEL_48;
  }

  v27 = [a3 parameters];
  v28 = sub_21CE6CD40();

  if (v28 >> 62)
  {
    if (sub_21CE6D360())
    {
      goto LABEL_17;
    }

LABEL_47:

    goto LABEL_48;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

LABEL_17:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x21CF1B2A0](0, v28);
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v29 = *(v28 + 32);
  }

  v24 = v29;

  if ([v24 isOptional])
  {
    goto LABEL_30;
  }

  v30 = [v24 name];
  if (!v30)
  {
    goto LABEL_30;
  }

  v31 = v30;
  v32 = sub_21CE6CC50();
  v34 = v33;

  if (v32 == 0x746567726174 && v34 == 0xE600000000000000)
  {

    goto LABEL_26;
  }

  v35 = sub_21CE6D400();

  if ((v35 & 1) == 0)
  {
LABEL_30:

    goto LABEL_48;
  }

LABEL_26:
  v88 = a9;
  if (qword_281213298 != -1)
  {
LABEL_56:
    swift_once();
  }

  v36 = sub_21CE6BDA0();
  __swift_project_value_buffer(v36, qword_2812165F0);
  v37 = a3;

  v38 = v24;

  v39 = sub_21CE6BD80();
  v40 = sub_21CE6CF30();

  v41 = &off_278323000;
  if (os_log_type_enabled(v39, v40))
  {
    v87 = v40;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v90 = v43;
    *v42 = 136316162;
    *(v42 + 4) = sub_21CDF2CC8(a1, a2, &v90);
    *(v42 + 12) = 2080;
    v44 = [v37 title];
    v86 = v43;
    if (v44)
    {
      v45 = sub_21CE6CC20();
      v46 = [v44 localizedStringForLocaleIdentifier_];

      v44 = sub_21CE6CC50();
      v48 = v47;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    v49 = sub_21CDF2CC8(v44, v48, &v90);

    *(v42 + 14) = v49;
    *(v42 + 22) = 2080;
    v50 = [v37 identifier];
    v51 = sub_21CE6CC50();
    v53 = v52;

    v54 = sub_21CDF2CC8(v51, v53, &v90);

    *(v42 + 24) = v54;
    *(v42 + 32) = 2080;
    v41 = &off_278323000;
    v55 = [v38 valueType];
    v56 = [v55 description];

    v57 = sub_21CE6CC50();
    v59 = v58;

    v60 = sub_21CDF2CC8(v57, v59, &v90);

    *(v42 + 34) = v60;
    *(v42 + 42) = 2080;
    *(v42 + 44) = sub_21CDF2CC8(a4, a5, &v90);
    _os_log_impl(&dword_21CDE1000, v39, v87, "found %s attributed to settings %s (%s) parameter target: %s originBundle: %s", v42, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v86, -1, -1);
    MEMORY[0x21CF1BD50](v42, -1, -1);
  }

  if (!v88)
  {
    goto LABEL_38;
  }

  v61 = [v37 identifier];
  v62 = sub_21CE6CC50();
  v64 = v63;

  if (v62 == a8 && v64 == v88)
  {

    goto LABEL_38;
  }

  v65 = sub_21CE6D400();

  if (v65)
  {
LABEL_38:
    v66 = [v38 v41[476]];
    objc_opt_self();
    v67 = swift_dynamicCastObjCClass();
    if (v67)
    {
      v68 = [v67 enumerationIdentifier];
    }

    else
    {

      v66 = [v38 v41[476]];
      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (!v69)
      {

        return 1;
      }

      v68 = [v69 identifier];
    }

    v70 = v68;
    v71 = sub_21CE6CC50();
    v73 = v72;

    sub_21CE4784C(&v90, v71, v73);

    return 1;
  }

  return 0;
}

void sub_21CE3ECB4(uint64_t a1)
{
  v2 = v1;
  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_2812165F0);
  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21CDE1000, v5, v6, "Cleaning up items from old domains...", v7, 2u);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84FA0];
  v9 = [objc_allocWithZone(MEMORY[0x277CC3508]) init];
  v10 = sub_21CE6CD30();
  [v9 setFetchAttributes_];

  [v9 setEnableRankedResults_];
  [v9 setDisableSemanticSearch_];
  v11 = [objc_allocWithZone(MEMORY[0x277CC3500]) initWithUserQueryString:0 userQueryContext:v9];
  v12 = sub_21CE6CD30();
  [v11 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C78, &unk_21CE733C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21CE6F420;
  v14 = *MEMORY[0x277CCA190];
  v15 = *MEMORY[0x277CCA1A0];
  *(v13 + 32) = *MEMORY[0x277CCA190];
  *(v13 + 40) = v15;
  type metadata accessor for FileProtectionType(0);
  v16 = v14;
  v17 = v15;
  v18 = sub_21CE6CD30();

  [v11 setProtectionClasses_];

  v26 = sub_21CE4B2C0;
  v27 = v8;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21CE3F1E4;
  v25 = &block_descriptor_31;
  v19 = _Block_copy(&v22);

  [v11 setFoundItemsHandler_];
  _Block_release(v19);
  v20 = swift_allocObject();
  v20[2] = v8;
  v20[3] = a1;
  v20[4] = v2;
  v26 = sub_21CE4B2E0;
  v27 = v20;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21CE3F934;
  v25 = &block_descriptor_37;
  v21 = _Block_copy(&v22);

  [v11 setCompletionHandler_];
  _Block_release(v21);

  [v11 start];
}

void sub_21CE3F0B4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v3 = sub_21CE6D360();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CF1B2A0](i, a1);
      }

      else
      {
        v9 = *(a1 + 8 * i + 32);
      }

      v10 = v9;
      v11 = [v9 domainIdentifier];
      if (v11)
      {
        v5 = v11;
        v6 = sub_21CE6CC50();
        v8 = v7;

        swift_beginAccess();
        sub_21CE4784C(&v12, v6, v8);
        swift_endAccess();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_21CE3F1E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_21CDE40C8(0, &unk_281211A88, 0x277CC34B0);
  v3 = sub_21CE6CD40();

  v2(v3);
}

void sub_21CE3F268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = a1;
    v5 = a1;
    if (qword_281213298 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v50 = a4;
    swift_beginAccess();
    v4 = *(a2 + 16);
    if (*(a3 + 16) <= v4[2] >> 3)
    {
      v52 = v4;

      sub_21CE48F44(a3);
    }

    else
    {

      v17 = sub_21CE49070(a3, v4);
      v4 = v17;
    }

    v18 = *(v4 + 32);
    v19 = (((1 << v18) + 63) >> 6);
    if ((v18 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        goto LABEL_41;
      }
    }

    v48 = &v48;
    v49 = v19;
    MEMORY[0x28223BE20](v17);
    v21 = &v48 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v21, v20);
    v51 = 0;
    v22 = 0;
    v23 = 1 << *(v4 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v4[7];
    v26 = (v23 + 63) >> 6;
    while (v25)
    {
      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_22:
      v30 = v27 | (v22 << 6);

      v31 = sub_21CE6CCF0();

      if (v31)
      {
        *&v21[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
        if (__OFADD__(v51++, 1))
        {
          __break(1u);
LABEL_26:
          v4 = sub_21CE49754(v21, v49, v51, v4);
          while (1)
          {
            v33 = v4[2];
            if (!v33)
            {
              break;
            }

            v19 = *(v50 + 24);
            v34 = sub_21CE12CDC(v4[2], 0);
            v35 = sub_21CE49EB0(&v52, v34 + 4, v33, v4);
            v36 = v52;

            sub_21CDEEAA0(v36);
            if (v35 == v33)
            {
              v37 = sub_21CE6CD30();

              [v19 deleteSearchableItemsWithDomainIdentifiers:v37 completionHandler:0];

              break;
            }

            __break(1u);
LABEL_41:
            v47 = swift_slowAlloc();
            v4 = sub_21CE48C64(v47, v19, v4, sub_21CE3F8EC, 0, sub_21CE495E0);

            MEMORY[0x21CF1BD50](v47, -1, -1);
          }

          if (qword_281213298 != -1)
          {
            swift_once();
          }

          v38 = sub_21CE6BDA0();
          __swift_project_value_buffer(v38, qword_2812165F0);

          v39 = sub_21CE6BD80();
          v40 = sub_21CE6CF30();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v52 = v42;
            *v41 = 136315138;
            v43 = sub_21CE6CEA0();
            v45 = v44;

            v46 = sub_21CDF2CC8(v43, v45, &v52);

            *(v41 + 4) = v46;
            _os_log_impl(&dword_21CDE1000, v39, v40, "Finished cleaning up items from old domains: (%s).", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v42);
            MEMORY[0x21CF1BD50](v42, -1, -1);
            MEMORY[0x21CF1BD50](v41, -1, -1);
          }

          else
          {
          }

          return;
        }
      }
    }

    v28 = v22;
    while (1)
    {
      v22 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
        goto LABEL_26;
      }

      v29 = v4[v22 + 7];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v25 = (v29 - 1) & v29;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_2812165F0);
  v7 = v4;
  v8 = sub_21CE6BD80();
  v9 = sub_21CE6CF10();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = sub_21CE6D450();
    v14 = sub_21CDF2CC8(v12, v13, &v52);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21CDE1000, v8, v9, "Error cleaning up items from old domains:  %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CF1BD50](v11, -1, -1);
    MEMORY[0x21CF1BD50](v10, -1, -1);
  }

  else
  {
  }
}

void sub_21CE3F934(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_21CE3F9A0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_21CE3F9C0, 0, 0);
}

uint64_t sub_21CE3F9C0()
{
  v1 = *(v0[19] + 24);
  v2 = sub_21CE6CD30();
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_21CE3FAF8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CE4B3C8;
  v0[13] = &block_descriptor_7;
  v0[14] = v3;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CE3FAF8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_21CE3FC6C;
  }

  else
  {
    v2 = sub_21CE3FC08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CE3FC08()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CE3FC6C()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

id sub_21CE3FCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 16);
  v6 = sub_21CE6CC20();
  v52[0] = 0;
  v7 = [v5 entitiesForBundleIdentifier:v6 error:v52];

  v8 = v52[0];
  if (v7)
  {
    sub_21CDE40C8(0, &qword_281211A80, 0x277D23818);
    v9 = sub_21CE6CD40();
    v10 = v8;

    v11 = v9;
    v53 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v11 = v42)
    {
      v44 = v11;
      v13 = 0;
      v14 = v11 & 0xC000000000000001;
      v15 = v11 & 0xFFFFFFFFFFFFFF8;
      v49 = v11 + 32;
      v51 = a3 + 56;
      v48 = a3;
      v46 = v11 & 0xC000000000000001;
      v47 = i;
      v45 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v14)
        {
          v11 = MEMORY[0x21CF1B2A0](v13, v44);
        }

        else
        {
          if (v13 >= *(v15 + 16))
          {
            goto LABEL_45;
          }

          v11 = *(v49 + 8 * v13);
        }

        v16 = v11;
        if (__OFADD__(v13++, 1))
        {
          break;
        }

        v18 = [v11 identifier];
        v19 = sub_21CE6CC50();
        v21 = v20;

        if (*(a3 + 16))
        {
          v50 = v16;
          sub_21CE6D4B0();
          sub_21CE6CCA0();
          v22 = sub_21CE6D4E0();
          v23 = -1 << *(a3 + 32);
          v24 = v22 & ~v23;
          if ((*(v51 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
          {
            v25 = ~v23;
            while (1)
            {
              v26 = (*(a3 + 48) + 16 * v24);
              v27 = *v26 == v19 && v26[1] == v21;
              if (v27 || (sub_21CE6D400() & 1) != 0)
              {
                break;
              }

              v24 = (v24 + 1) & v25;
              if (((*(v51 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v28 = [v50 systemProtocolMetadata];
            type metadata accessor for LNSystemEntityProtocolIdentifier(0);
            a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CC8, &qword_21CE734E0);
            sub_21CE4B350(&qword_281211A00, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_21CE6F1E8);
            v29 = sub_21CE6CB60();

            v30 = 1 << *(v29 + 32);
            if (v30 < 64)
            {
              v31 = ~(-1 << v30);
            }

            else
            {
              v31 = -1;
            }

            v32 = v31 & *(v29 + 64);
            v33 = (v30 + 63) >> 6;

            v34 = 0;
            while (v32)
            {
LABEL_30:
              v36 = sub_21CE6CC50();
              v38 = v37;
              if (v36 == sub_21CE6CC50() && v38 == v39)
              {

LABEL_38:

                sub_21CE6D2F0();
                sub_21CE6D320();
                sub_21CE6D330();
                v11 = sub_21CE6D300();
LABEL_39:
                i = v47;
                a3 = v48;
                v15 = v45;
                v14 = v46;
                goto LABEL_6;
              }

              v32 &= v32 - 1;
              a3 = sub_21CE6D400();

              if (a3)
              {

                goto LABEL_38;
              }
            }

            while (1)
            {
              v35 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              if (v35 >= v33)
              {

                goto LABEL_39;
              }

              v32 = *(v29 + 64 + 8 * v35);
              ++v34;
              if (v32)
              {
                v34 = v35;
                goto LABEL_30;
              }
            }

            __break(1u);
            break;
          }

LABEL_20:
        }

        else
        {
        }

LABEL_6:
        if (v13 == i)
        {
          v41 = v53;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v42 = v11;
      i = sub_21CE6D360();
    }

    v41 = MEMORY[0x277D84F90];
LABEL_48:
  }

  else
  {
    v41 = v52[0];
    sub_21CE6B910();

    swift_willThrow();
  }

  return v41;
}

id sub_21CE401B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 16);
  v6 = sub_21CE6CC20();
  v32[0] = 0;
  v7 = [v5 enumsForBundleIdentifier:v6 error:v32];

  v8 = v32[0];
  if (v7)
  {
    sub_21CDE40C8(0, &unk_281211A98, 0x277D23838);
    v9 = sub_21CE6CD40();
    v10 = v8;

    v33 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CE6D360())
    {
      v28 = v9;
      v12 = 0;
      v30 = v9 & 0xFFFFFFFFFFFFFF8;
      v31 = v9 & 0xC000000000000001;
      v29 = v9 + 32;
      v9 = a3 + 56;
      while (1)
      {
        if (v31)
        {
          v13 = MEMORY[0x21CF1B2A0](v12, v28);
        }

        else
        {
          if (v12 >= *(v30 + 16))
          {
            goto LABEL_26;
          }

          v13 = *(v29 + 8 * v12);
        }

        v14 = v13;
        if (__OFADD__(v12++, 1))
        {
          break;
        }

        v16 = [v13 identifier];
        v17 = sub_21CE6CC50();
        v19 = v18;

        if (*(a3 + 16) && (sub_21CE6D4B0(), sub_21CE6CCA0(), v20 = sub_21CE6D4E0(), v21 = -1 << *(a3 + 32), v22 = v20 & ~v21, ((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
        {
          v23 = ~v21;
          while (1)
          {
            v24 = (*(a3 + 48) + 16 * v22);
            v25 = *v24 == v17 && v24[1] == v19;
            if (v25 || (sub_21CE6D400() & 1) != 0)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          sub_21CE6D2F0();
          sub_21CE6D320();
          sub_21CE6D330();
          sub_21CE6D300();
        }

        else
        {
LABEL_5:
        }

        if (v12 == i)
        {
          v26 = v33;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v26 = MEMORY[0x277D84F90];
LABEL_29:
  }

  else
  {
    v26 = v32[0];
    sub_21CE6B910();

    swift_willThrow();
  }

  return v26;
}

uint64_t sub_21CE4049C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 360) = a7;
  *(v8 + 368) = v7;
  *(v8 + 344) = a5;
  *(v8 + 352) = a6;
  *(v8 + 328) = a3;
  *(v8 + 336) = a4;
  *(v8 + 536) = a2;
  *(v8 + 320) = a1;
  return MEMORY[0x2822009F8](sub_21CE404CC, 0, 0);
}

uint64_t sub_21CE404CC()
{
  v50 = v0;
  v1 = *(v0 + 320);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21CDFA79C(MEMORY[0x277D84F90]);
  v4 = MEMORY[0x277D84FA0];
  *(v0 + 288) = v2;
  *(v0 + 296) = v4;
  LOBYTE(v4) = *(v1 + 32);
  *(v0 + 537) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);

  v8 = 0;
  while (1)
  {
    *(v0 + 376) = v3;
    if (!v7)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v10 >= (((1 << *(v0 + 537)) + 63) >> 6))
        {
          break;
        }

        v9 = *(v0 + 320);
        v7 = *(v9 + 8 * v10 + 64);
        ++v8;
        if (v7)
        {
          v8 = v10;
          goto LABEL_11;
        }
      }

      v28 = *(v0 + 536);
      v29 = *(v0 + 328);

      v30 = *v29;
      v31 = *(v0 + 296);

      *v29 = sub_21CE452BC(v32, v30);
      if (v28)
      {

        v33 = *(v0 + 8);
        v34 = *(v0 + 376);

        return v33(v34);
      }

      v35 = *(v31 + 16);
      if (v35)
      {
        v1 = sub_21CE12CDC(*(v31 + 16), 0);
        v36 = sub_21CE49EB0(&v49, (v1 + 32), v35, v31);
        sub_21CDEEAA0(v49);
        if (v36 == v35)
        {
LABEL_29:
          if (qword_281213298 == -1)
          {
            goto LABEL_30;
          }

LABEL_36:
          swift_once();
LABEL_30:
          v37 = sub_21CE6BDA0();
          *(v0 + 480) = __swift_project_value_buffer(v37, qword_2812165F0);

          v38 = sub_21CE6BD80();
          v39 = sub_21CE6CF30();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v49 = v41;
            *v40 = 136315138;
            v42 = MEMORY[0x21CF1AD30](v1, MEMORY[0x277D837D0]);
            v44 = sub_21CDF2CC8(v42, v43, &v49);

            *(v40 + 4) = v44;
            _os_log_impl(&dword_21CDE1000, v38, v39, "deleteSearchableItems for %s", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v41);
            MEMORY[0x21CF1BD50](v41, -1, -1);
            MEMORY[0x21CF1BD50](v40, -1, -1);
          }

          v45 = *(*(v0 + 368) + 24);
          *(v0 + 488) = v45;
          v46 = sub_21CE6CD30();
          *(v0 + 496) = v46;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_21CE423CC;
          v47 = swift_continuation_init();
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
          *(v0 + 504) = v48;
          *(v0 + 200) = v48;
          *(v0 + 144) = MEMORY[0x277D85DD0];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_21CE4B3C8;
          *(v0 + 168) = &block_descriptor_48;
          *(v0 + 176) = v47;
          [v45 deleteSearchableItemsWithDomainIdentifiers:v46 completionHandler:v0 + 144];
          v18 = v0 + 16;

          return MEMORY[0x282200938](v18);
        }

        __break(1u);
      }

      v1 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    v9 = *(v0 + 320);
LABEL_11:
    *(v0 + 384) = v7;
    *(v0 + 392) = v8;
    v11 = *(v0 + 352);
    v12 = __clz(__rbit64(v7)) | (v8 << 6);
    v13 = (*(v9 + 48) + 16 * v12);
    v14 = *v13;
    *(v0 + 400) = *v13;
    v15 = v13[1];
    *(v0 + 408) = v15;
    v16 = *(*(v9 + 56) + 8 * v12);

    v17 = v11(v14, v15, v16);
    *(v0 + 416) = v17;

    v1 = sub_21CDFA7B0(MEMORY[0x277D84F90]);
    if (v17 >> 62)
    {
      break;
    }

    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 424) = v18;
    if (v18)
    {
      goto LABEL_15;
    }

LABEL_13:
    v19 = *(v0 + 408);
    v20 = *(v0 + 400);
    v3 = *(v0 + 376);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v3;
    sub_21CE069B8(v1, v20, v19, isUniquelyReferenced_nonNull_native);

    v8 = *(v0 + 392);
    v7 = (*(v0 + 384) - 1) & *(v0 + 384);
  }

  v18 = sub_21CE6D360();
  *(v0 + 424) = v18;
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_15:
  *(v0 + 432) = v1;
  v22 = *(v0 + 416);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x21CF1B2A0](0);
    goto LABEL_18;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x282200938](v18);
  }

  v23 = *(v22 + 32);
LABEL_18:
  *(v0 + 440) = v23;
  *(v0 + 448) = 1;
  v24 = swift_task_alloc();
  *(v0 + 456) = v24;
  *v24 = v0;
  v24[1] = sub_21CE40E3C;
  v26 = *(v0 + 336);
  v25 = *(v0 + 344);

  return sub_21CE4E8B0(v26, v25);
}

uint64_t sub_21CE40E3C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {

    v4 = sub_21CE41A80;
  }

  else
  {
    v4 = sub_21CE40F64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CE40F64()
{
  v101 = v0;
  v1 = *(v0 + 464);

  sub_21CE3BB30(v2);
  if (v1 >> 62)
  {
    v3 = sub_21CE6D360();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_17:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_74;
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v99 = *(v0 + 464) + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    if (v5)
    {
      v7 = MEMORY[0x21CF1B2A0](v4, *(v0 + 464));
    }

    else
    {
      v7 = *(v99 + 8 * v4);
    }

    v8 = v7;
    v9 = [v7 domainIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_21CE6CC50();
      v13 = v12;

      sub_21CE4784C((v0 + 272), v11, v13);
    }

    v14 = sub_21CE4B458();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21CDF2AEC(0, v6[2] + 1, 1, v6);
    }

    v16 = v6[2];
    v15 = v6[3];
    if (v16 >= v15 >> 1)
    {
      v6 = sub_21CDF2AEC((v15 > 1), v16 + 1, 1, v6);
    }

    ++v4;

    v6[2] = v16 + 1;
    v6[v16 + 4] = v14;
  }

  while (v3 != v4);
LABEL_18:
  v17 = *(v0 + 440);
  v18 = *(v0 + 448);
  v20 = *(v0 + 424);
  v19 = *(v0 + 432);

  v21 = [v17 identifier];
  v22 = sub_21CE6CC50();
  v24 = v23;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = v19;
  sub_21CE069E4(v6, v22, v24, isUniquelyReferenced_nonNull_native);

  v1 = v19;
  if (v18 != v20)
  {
    v3 = *(v0 + 448);
LABEL_50:
    *(v0 + 432) = v1;
    v71 = *(v0 + 416);
    if ((v71 & 0xC000000000000001) == 0)
    {
      if (v3 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_76:
        __break(1u);
LABEL_77:
        swift_once();
        goto LABEL_66;
      }

      v72 = *(v71 + 8 * v3 + 32);
LABEL_53:
      *(v0 + 440) = v72;
      *(v0 + 448) = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        v73 = swift_task_alloc();
        *(v0 + 456) = v73;
        *v73 = v0;
        v73[1] = sub_21CE40E3C;
        v75 = *(v0 + 336);
        v74 = *(v0 + 344);

        return sub_21CE4E8B0(v75, v74);
      }

      __break(1u);
      goto LABEL_76;
    }

LABEL_74:
    v72 = MEMORY[0x21CF1B2A0](v3);
    goto LABEL_53;
  }

  v26 = &qword_27CE406C0;
  v27 = *(v0 + 472);
  v98 = 136315138;
LABEL_20:
  v28 = *(v0 + 408);
  v29 = *(v0 + 400);
  v30 = *(v0 + 376);

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v100 = v30;
  sub_21CE069B8(v1, v29, v28, v31);

  v32 = *(v0 + 392);
  v33 = (*(v0 + 384) - 1) & *(v0 + 384);
  *(v0 + 376) = v100;
  while (v33)
  {
    v42 = *(v0 + 320);
LABEL_29:
    *(v0 + 384) = v33;
    *(v0 + 392) = v32;
    v44 = *(v0 + 352);
    v45 = __clz(__rbit64(v33)) | (v32 << 6);
    v46 = (*(v42 + 48) + 16 * v45);
    v47 = *v46;
    *(v0 + 400) = *v46;
    v48 = v46[1];
    *(v0 + 408) = v48;
    v49 = *(*(v42 + 56) + 8 * v45);

    v50 = v44(v47, v48, v49);
    *(v0 + 416) = v50;

    if (!v27)
    {
      v1 = sub_21CDFA7B0(MEMORY[0x277D84F90]);
      if (v50 >> 62)
      {
        v70 = sub_21CE6D360();
      }

      else
      {
        v70 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = 0;
      *(v0 + 424) = v70;
      if (v70)
      {
LABEL_72:
        v3 = 0;
        goto LABEL_50;
      }

      goto LABEL_20;
    }

    *(v0 + 304) = v27;
    v51 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, &qword_21CE70E30);
    sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 312);
      if ([v1 code] == -10814)
      {

        if (qword_281213298 != -1)
        {
          swift_once();
        }

        v52 = sub_21CE6BDA0();
        __swift_project_value_buffer(v52, qword_2812165F0);

        v53 = sub_21CE6BD80();
        v54 = sub_21CE6CF30();

        v55 = os_log_type_enabled(v53, v54);
        v56 = *(v0 + 408);
        if (v55)
        {
          v57 = *(v0 + 400);
          v58 = swift_slowAlloc();
          v59 = v26;
          v60 = swift_slowAlloc();
          v100 = v60;
          *v58 = 136315138;
          v61 = sub_21CDF2CC8(v57, v56, &v100);

          *(v58 + 4) = v61;
          _os_log_impl(&dword_21CDE1000, v53, v54, "Extension offloaded, skipping: %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v60);
          v62 = v60;
          v26 = v59;
          MEMORY[0x21CF1BD50](v62, -1, -1);
          MEMORY[0x21CF1BD50](v58, -1, -1);
        }

        else
        {
        }

        v69 = *(v0 + 304);
        goto LABEL_43;
      }
    }

    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 408);
    v63 = sub_21CE6BDA0();
    __swift_project_value_buffer(v63, qword_2812165F0);

    v64 = v27;
    v65 = sub_21CE6BD80();
    v66 = sub_21CE6CF10();

    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 408);
    if (v67)
    {
      v34 = *(v0 + 400);
      v1 = swift_slowAlloc();
      v35 = v26;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v100 = v37;
      *v1 = 136315394;
      v38 = sub_21CDF2CC8(v34, v68, &v100);

      *(v1 + 4) = v38;
      *(v1 + 12) = 2112;
      v39 = v27;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 14) = v40;
      *v36 = v40;
      _os_log_impl(&dword_21CDE1000, v65, v66, "Unexpected error while processing extension: %s, error: %@", v1, 0x16u);
      sub_21CE06F6C(v36);
      v41 = v36;
      v26 = v35;
      MEMORY[0x21CF1BD50](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x21CF1BD50](v37, -1, -1);
      MEMORY[0x21CF1BD50](v1, -1, -1);

      goto LABEL_22;
    }

    v69 = v27;
LABEL_43:

LABEL_22:
    v27 = 0;
    v32 = *(v0 + 392);
    v33 = (*(v0 + 384) - 1) & *(v0 + 384);
  }

  while (1)
  {
    v43 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (v43 >= (((1 << *(v0 + 537)) + 63) >> 6))
    {
      break;
    }

    v42 = *(v0 + 320);
    v33 = *(v42 + 8 * v43 + 64);
    ++v32;
    if (v33)
    {
      v32 = v43;
      goto LABEL_29;
    }
  }

  v77 = *(v0 + 536);
  v78 = *(v0 + 328);

  v79 = *v78;
  v80 = *(v0 + 296);

  *v78 = sub_21CE452BC(v81, v79);
  if ((v77 & 1) == 0)
  {
    v84 = *(v80 + 16);
    if (v84)
    {
      v1 = sub_21CE12CDC(*(v80 + 16), 0);
      v85 = sub_21CE49EB0(&v100, (v1 + 32), v84, v80);
      sub_21CDEEAA0(v100);
      if (v85 == v84)
      {
        goto LABEL_65;
      }

      __break(1u);
    }

    v1 = MEMORY[0x277D84F90];
LABEL_65:
    if (qword_281213298 != -1)
    {
      goto LABEL_77;
    }

LABEL_66:
    v86 = sub_21CE6BDA0();
    *(v0 + 480) = __swift_project_value_buffer(v86, qword_2812165F0);

    v87 = sub_21CE6BD80();
    v88 = sub_21CE6CF30();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v100 = v90;
      *v89 = v98;
      v91 = MEMORY[0x21CF1AD30](v1, MEMORY[0x277D837D0]);
      v93 = sub_21CDF2CC8(v91, v92, &v100);

      *(v89 + 4) = v93;
      _os_log_impl(&dword_21CDE1000, v87, v88, "deleteSearchableItems for %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x21CF1BD50](v90, -1, -1);
      MEMORY[0x21CF1BD50](v89, -1, -1);
    }

    v94 = *(*(v0 + 368) + 24);
    *(v0 + 488) = v94;
    v95 = sub_21CE6CD30();
    *(v0 + 496) = v95;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21CE423CC;
    v96 = swift_continuation_init();
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
    *(v0 + 504) = v97;
    *(v0 + 200) = v97;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CE4B3C8;
    *(v0 + 168) = &block_descriptor_48;
    *(v0 + 176) = v96;
    [v94 deleteSearchableItemsWithDomainIdentifiers:v95 completionHandler:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  v82 = *(v0 + 8);
  v83 = *(v0 + 376);

  return v82(v83);
}

uint64_t sub_21CE41A80()
{
  v71 = v0;

  v1 = *(v0 + 472);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 304) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 312);
    if ([v4 code] == -10814)
    {

      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v5 = sub_21CE6BDA0();
      __swift_project_value_buffer(v5, qword_2812165F0);

      v6 = sub_21CE6BD80();
      v7 = sub_21CE6CF30();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 408);
      if (v8)
      {
        v10 = *(v0 + 400);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v70 = v12;
        *v11 = 136315138;
        v13 = sub_21CDF2CC8(v10, v9, &v70);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_21CDE1000, v6, v7, "Extension offloaded, skipping: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x21CF1BD50](v12, -1, -1);
        MEMORY[0x21CF1BD50](v11, -1, -1);
      }

      else
      {
      }

      v26 = *(v0 + 304);
      goto LABEL_15;
    }
  }

  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v14 = sub_21CE6BDA0();
  __swift_project_value_buffer(v14, qword_2812165F0);

  v15 = v1;
  v16 = sub_21CE6BD80();
  v7 = sub_21CE6CF10();

  v17 = os_log_type_enabled(v16, v7);
  v18 = *(v0 + 408);
  if (v17)
  {
    v19 = *(v0 + 400);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v70 = v22;
    *v20 = 136315394;
    v23 = sub_21CDF2CC8(v19, v18, &v70);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v25;
    *v21 = v25;
    _os_log_impl(&dword_21CDE1000, v16, v7, "Unexpected error while processing extension: %s, error: %@", v20, 0x16u);
    sub_21CE06F6C(v21);
    MEMORY[0x21CF1BD50](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x21CF1BD50](v22, -1, -1);
    v2 = MEMORY[0x277D84F90];
    MEMORY[0x21CF1BD50](v20, -1, -1);

    goto LABEL_16;
  }

  v26 = v1;
LABEL_15:

LABEL_16:
  v27 = *(v0 + 392);
  v28 = (*(v0 + 384) - 1) & *(v0 + 384);
  if (!v28)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v29 = *(v0 + 320);
LABEL_22:
    *(v0 + 384) = v28;
    *(v0 + 392) = v27;
    v31 = *(v0 + 352);
    v32 = __clz(__rbit64(v28)) | (v27 << 6);
    v33 = (*(v29 + 48) + 16 * v32);
    v34 = *v33;
    *(v0 + 400) = *v33;
    v35 = v33[1];
    *(v0 + 408) = v35;
    v36 = *(*(v29 + 56) + 8 * v32);

    v37 = v31(v34, v35, v36);
    *(v0 + 416) = v37;

    v7 = sub_21CDFA7B0(v2);
    if (!(v37 >> 62))
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 424) = v38;
      if (v38)
      {
        break;
      }

      goto LABEL_24;
    }

    v38 = sub_21CE6D360();
    *(v0 + 424) = v38;
    if (v38)
    {
      break;
    }

LABEL_24:
    v39 = *(v0 + 408);
    v40 = *(v0 + 400);
    v41 = *(v0 + 376);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v41;
    sub_21CE069B8(v7, v40, v39, isUniquelyReferenced_nonNull_native);

    v27 = *(v0 + 392);
    v28 = (*(v0 + 384) - 1) & *(v0 + 384);
    *(v0 + 376) = v70;
    if (!v28)
    {
      while (1)
      {
LABEL_18:
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v30 >= (((1 << *(v0 + 537)) + 63) >> 6))
        {
          break;
        }

        v29 = *(v0 + 320);
        v28 = *(v29 + 8 * v30 + 64);
        ++v27;
        if (v28)
        {
          v27 = v30;
          goto LABEL_22;
        }
      }

      v43 = *(v0 + 536);
      v44 = *(v0 + 328);

      v45 = *v44;
      v46 = *(v0 + 296);

      *v44 = sub_21CE452BC(v47, v45);
      if (v43)
      {

        v48 = *(v0 + 8);
        v49 = *(v0 + 376);

        return v48(v49);
      }

      v51 = *(v46 + 16);
      if (v51)
      {
        v7 = sub_21CE12CDC(*(v46 + 16), 0);
        v52 = sub_21CE49EB0(&v70, (v7 + 32), v51, v46);
        sub_21CDEEAA0(v70);
        if (v52 == v51)
        {
LABEL_36:
          if (qword_281213298 == -1)
          {
            goto LABEL_37;
          }

LABEL_49:
          swift_once();
LABEL_37:
          v53 = sub_21CE6BDA0();
          *(v0 + 480) = __swift_project_value_buffer(v53, qword_2812165F0);

          v54 = sub_21CE6BD80();
          v55 = sub_21CE6CF30();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v70 = v57;
            *v56 = 136315138;
            v58 = MEMORY[0x21CF1AD30](v7, MEMORY[0x277D837D0]);
            v60 = sub_21CDF2CC8(v58, v59, &v70);

            *(v56 + 4) = v60;
            _os_log_impl(&dword_21CDE1000, v54, v55, "deleteSearchableItems for %s", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v57);
            MEMORY[0x21CF1BD50](v57, -1, -1);
            MEMORY[0x21CF1BD50](v56, -1, -1);
          }

          v61 = *(*(v0 + 368) + 24);
          *(v0 + 488) = v61;
          v62 = sub_21CE6CD30();
          *(v0 + 496) = v62;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_21CE423CC;
          v63 = swift_continuation_init();
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
          *(v0 + 504) = v64;
          *(v0 + 200) = v64;
          *(v0 + 144) = MEMORY[0x277D85DD0];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_21CE4B3C8;
          *(v0 + 168) = &block_descriptor_48;
          *(v0 + 176) = v63;
          [v61 deleteSearchableItemsWithDomainIdentifiers:v62 completionHandler:v0 + 144];
          v38 = v0 + 16;

          return MEMORY[0x282200938](v38);
        }

        __break(1u);
      }

      v7 = MEMORY[0x277D84F90];
      goto LABEL_36;
    }
  }

  *(v0 + 432) = v7;
  v65 = *(v0 + 416);
  if ((v65 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x21CF1B2A0](0);
    goto LABEL_45;
  }

  if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x282200938](v38);
  }

  v66 = *(v65 + 32);
LABEL_45:
  *(v0 + 440) = v66;
  *(v0 + 448) = 1;
  v67 = swift_task_alloc();
  *(v0 + 456) = v67;
  *v67 = v0;
  v67[1] = sub_21CE40E3C;
  v69 = *(v0 + 336);
  v68 = *(v0 + 344);

  return sub_21CE4E8B0(v69, v68);
}