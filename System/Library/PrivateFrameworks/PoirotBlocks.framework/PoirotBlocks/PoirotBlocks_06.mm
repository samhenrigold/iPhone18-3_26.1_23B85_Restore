void sub_21B1EFA58(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for AttachedDatabaseConfig(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = type metadata accessor for DataSourceModel(0);
  MEMORY[0x28223BE20](v67, v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DataSource.Container(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  sub_21B1F0AF8(a1, v19, type metadata accessor for DataSource.Container);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v27 = a4;
    if (EnumCaseMultiPayload)
    {
      v43 = *(v19 + 1);
      v72 = *v19;
      v73 = v43;
      v44 = *(v19 + 4);
      *&v74 = v44;
      v45 = *a2;
      v46 = *(&v43 + 1);
      __swift_project_boxed_opaque_existential_1(&v72, *(&v43 + 1));
      v47 = *(v44 + 40);

      v47(v46, v44);
      v48 = *v15;
      v49 = *(v15 + 1);

      sub_21B1F0BB4(v15, type metadata accessor for DataSourceModel);
      LOBYTE(v48) = sub_21B1F4284(v48, v49, v45);

      if (v48)
      {
        sub_21B192ABC(&v72);
        v50 = type metadata accessor for DataSource(0);
        (*(*(v50 - 8) + 56))(v27, 1, 1, v50);
        return;
      }

      v57 = *(&v73 + 1);
      v58 = v74;
      __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
      (*(v58 + 40))(v57, v58);
      v59 = *v15;
      v60 = *(v15 + 1);

      sub_21B1F0BB4(v15, type metadata accessor for DataSourceModel);
      sub_21B1B9C24(&v70, v59, v60);

      sub_21B192ABC(&v72);
    }

    else
    {
      v66 = v4;
      v28 = *v19;
      v29 = *a2;

      v30 = [v28 schema];
      v31 = [v30 tableName];

      v32 = sub_21B20D2F8();
      v34 = v33;

      LOBYTE(v31) = sub_21B1F4284(v32, v34, v29);

      if (v31)
      {
        v35 = type metadata accessor for DataSource(0);
        (*(*(v35 - 8) + 56))(v27, 1, 1, v35);

        return;
      }

      v52 = [v28 schema];
      v53 = [v52 tableName];

      v54 = sub_21B20D2F8();
      v56 = v55;

      sub_21B1B9C24(&v72, v54, v56);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v27 = a4;
    sub_21B1F0C7C(v19, v12, type metadata accessor for AttachedDatabaseConfig);
    v36 = *a3;
    v37 = *v12;
    v38 = v12[1];

    v39 = sub_21B1F4284(v37, v38, v36);

    if (v39)
    {
      sub_21B1F0BB4(v12, type metadata accessor for AttachedDatabaseConfig);
      v40 = type metadata accessor for DataSource(0);
      (*(*(v40 - 8) + 56))(v27, 1, 1, v40);
      return;
    }

    sub_21B1B9C24(&v72, v37, v38);

    sub_21B1F0BB4(v12, type metadata accessor for AttachedDatabaseConfig);
  }

  else
  {
    v65 = a4;
    if (EnumCaseMultiPayload == 3)
    {
      v66 = v4;
      v21 = *(v19 + 2);
      v73 = *(v19 + 1);
      v74 = v21;
      v72 = *v19;
      v75 = *(v19 + 6);
      v64 = a2;
      v22 = *a2;
      v23 = v72;
      __swift_project_boxed_opaque_existential_1(&v73, *(&v21 + 1));

      sub_21B20C9C8();
      __swift_project_boxed_opaque_existential_1(&v70, v71);
      v24 = sub_21B20C9D8();
      __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
      sub_21B20C9C8();
      __swift_project_boxed_opaque_existential_1(v68, v69);
      sub_21B20C8F8();
      *v15 = v23;
      *(v15 + 2) = 0xD000000000000011;
      *(v15 + 3) = 0x800000021B2103A0;
      v63 = 0x800000021B2103A0;
      v15[32] = 3;
      *(v15 + 5) = v24;

      __swift_destroy_boxed_opaque_existential_1(v68);
      __swift_destroy_boxed_opaque_existential_1(&v70);
      sub_21B1F0BB4(v15, type metadata accessor for DataSourceModel);
      v25 = sub_21B1F4284(v23, *(&v23 + 1), v22);

      if (v25)
      {
        sub_21B1F0B60(&v72);
        v26 = type metadata accessor for DataSource(0);
        (*(*(v26 - 8) + 56))(v65, 1, 1, v26);
        return;
      }

      __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));

      sub_21B20C9C8();
      __swift_project_boxed_opaque_existential_1(&v70, v71);
      v51 = sub_21B20C9D8();
      __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
      sub_21B20C9C8();
      __swift_project_boxed_opaque_existential_1(v68, v69);
      sub_21B20C8F8();
      *v15 = v23;
      *(v15 + 2) = 0xD000000000000011;
      *(v15 + 3) = v63;
      v15[32] = 3;
      *(v15 + 5) = v51;

      __swift_destroy_boxed_opaque_existential_1(v68);
      __swift_destroy_boxed_opaque_existential_1(&v70);
      sub_21B1F0BB4(v15, type metadata accessor for DataSourceModel);
      sub_21B1B9C24(&v70, v23, *(&v23 + 1));

      sub_21B1F0B60(&v72);
    }

    else
    {
      v42 = *v19;
      v41 = *(v19 + 1);

      sub_21B1B9C24(&v72, v42, v41);
    }

    v27 = v65;
  }

  sub_21B1F0AF8(v76, v27, type metadata accessor for DataSource);
  v61 = type metadata accessor for DataSource(0);
  (*(*(v61 - 8) + 56))(v27, 0, 1, v61);
}

uint64_t sub_21B1F02E4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for AttachedDatabaseConfig(0);
  v73 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v67 - v9;
  v11 = type metadata accessor for DataSource.Container(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DataSource(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v86 = MEMORY[0x277D84FA0];
  *&v82 = MEMORY[0x277D84FA0];
  v20 = sub_21B1EEBF0(a1, &v86, &v82);

  v21 = MEMORY[0x277D84F90];
  v76 = sub_21B197F34(MEMORY[0x277D84F90]);
  v90 = v21;
  v81 = v20[2];
  if (!v81)
  {

    v62 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
    v65 = MEMORY[0x277D84F90];
LABEL_43:
    v66 = v68;
    *v68 = v64;
    v66[1] = v63;
    v66[2] = v62;
    v66[3] = v65;
    v66[4] = v76;
    return result;
  }

  v22 = 0;
  v80 = v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v77 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
  v74 = MEMORY[0x277D84F90];
  v75 = v20;
  v72 = v10;
  v71 = v11;
  v70 = v16;
  v69 = v7;
  while (v22 < v20[2])
  {
    sub_21B1F0AF8(&v80[*(v16 + 72) * v22], v19, type metadata accessor for DataSource);
    sub_21B1F0AF8(v19, v14, type metadata accessor for DataSource.Container);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v49 = *(v14 + 1);
        v86 = *v14;
        v87 = v49;
        *&v88 = *(v14 + 4);
        sub_21B192A60(&v86, &v82);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_21B1D37D8(0, *(v77 + 2) + 1, 1, v77);
        }

        v51 = *(v77 + 2);
        v50 = *(v77 + 3);
        if (v51 >= v50 >> 1)
        {
          v77 = sub_21B1D37D8((v50 > 1), v51 + 1, 1, v77);
        }

        sub_21B192ABC(&v86);
        sub_21B1F0BB4(v19, type metadata accessor for DataSource);
        v52 = v77;
        *(v77 + 2) = v51 + 1;
        v53 = &v52[40 * v51];
        v54 = v84;
        v55 = v83;
        *(v53 + 2) = v82;
        *(v53 + 3) = v55;
        *(v53 + 8) = v54;
        goto LABEL_6;
      }

      v32 = *v14;
      MEMORY[0x21CEEBC40]();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B20D478();
      }

      sub_21B20D498();

      sub_21B1F0BB4(v19, type metadata accessor for DataSource);
      v74 = v90;
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_21B1F0C7C(v14, v10, type metadata accessor for AttachedDatabaseConfig);
      sub_21B1F0AF8(v10, v7, type metadata accessor for AttachedDatabaseConfig);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_21B1D34AC(0, v78[2] + 1, 1, v78);
      }

      v34 = v78[2];
      v33 = v78[3];
      if (v34 >= v33 >> 1)
      {
        v78 = sub_21B1D34AC((v33 > 1), v34 + 1, 1, v78);
      }

      sub_21B1F0BB4(v10, type metadata accessor for AttachedDatabaseConfig);
      sub_21B1F0BB4(v19, type metadata accessor for DataSource);
      v35 = v78;
      v78[2] = v34 + 1;
      sub_21B1F0C7C(v7, v35 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v34, type metadata accessor for AttachedDatabaseConfig);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v24 = *(v14 + 1);
      v86 = *v14;
      v87 = v24;
      v88 = *(v14 + 2);
      v89 = *(v14 + 6);
      sub_21B1F0CE4(&v86, &v82);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_21B1D36B0(0, *(v79 + 2) + 1, 1, v79);
      }

      v26 = *(v79 + 2);
      v25 = *(v79 + 3);
      if (v26 >= v25 >> 1)
      {
        v79 = sub_21B1D36B0((v25 > 1), v26 + 1, 1, v79);
      }

      sub_21B1F0B60(&v86);
      sub_21B1F0BB4(v19, type metadata accessor for DataSource);
      v27 = v79;
      *(v79 + 2) = v26 + 1;
      v28 = &v27[56 * v26];
      v29 = v84;
      v30 = v82;
      v31 = v83;
      *(v28 + 10) = v85;
      *(v28 + 3) = v31;
      *(v28 + 4) = v29;
      *(v28 + 2) = v30;
      goto LABEL_6;
    }

    v37 = *v14;
    v36 = *(v14 + 1);
    v38 = *(v14 + 2);
    v39 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v86 = v39;
    v42 = sub_21B1B9778(v37, v36);
    v43 = *(v39 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_45;
    }

    v46 = v41;
    if (*(v39 + 24) >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v41 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_21B2037B8();
        if ((v46 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      sub_21B200DC4(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_21B1B9778(v37, v36);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_47;
      }

      v42 = v47;
      if ((v46 & 1) == 0)
      {
LABEL_37:
        v56 = v86;
        *(v86 + 8 * (v42 >> 6) + 64) |= 1 << v42;
        v57 = (v56[6] + 16 * v42);
        *v57 = v37;
        v57[1] = v36;
        *(v56[7] + 8 * v42) = v38;
        sub_21B1F0BB4(v19, type metadata accessor for DataSource);
        v58 = v56[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_46;
        }

        v76 = v56;
        v56[2] = v60;
        goto LABEL_4;
      }
    }

    v76 = v86;
    *(*(v86 + 56) + 8 * v42) = v38;

    sub_21B1F0BB4(v19, type metadata accessor for DataSource);
LABEL_4:
    v7 = v69;
    v10 = v72;
    v16 = v70;
LABEL_5:
    v20 = v75;
LABEL_6:
    if (v81 == ++v22)
    {

      v63 = v78;
      v62 = v79;
      v64 = v77;
      v65 = v74;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1F0AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B1F0BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B1F0C14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FE90, &unk_21B217E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1F0C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DefaultHostEnvironment.ensureTimeWindow()()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    sub_21B188B28();
    swift_allocError();
    *v1 = 0xD00000000000003ALL;
    v1[1] = 0x800000021B20EEB0;
    swift_willThrow();
  }
}

uint64_t DefaultHostEnvironment.nextStartTime.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_21B1F0E18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
  if (*v3)
  {
    v4 = v3[1];
    ObjectType = swift_getObjectType();
    result = (*(v4 + 8))(ObjectType, v4);
  }

  else
  {
    result = 0;
    v7 = 1;
  }

  *a2 = result;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t *sub_21B1F0E94(uint64_t *result, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
  if (*v2)
  {
    v3 = v2[1];
    v4 = *(result + 8);
    v5 = *result;
    ObjectType = swift_getObjectType();
    return (*(v3 + 16))(v5, v4, ObjectType, v3);
  }

  return result;
}

uint64_t DefaultHostEnvironment.nextStartTime.setter(uint64_t result, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
    ObjectType = swift_getObjectType();
    return (*(v5 + 16))(v4, a2 & 1, ObjectType, v5);
  }

  return result;
}

void (*DefaultHostEnvironment.nextStartTime.modify(uint64_t a1))()
{
  v3 = v1 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig;
  v4 = *(v1 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig);
  *(a1 + 16) = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    *(a1 + 24) = v5;
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(ObjectType, v5);
    v9 = sub_21B1F1034;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    v9 = nullsub_2;
  }

  *a1 = v7;
  *(a1 + 8) = v8 & 1;
  return v9;
}

uint64_t sub_21B1F1034(uint64_t *a1)
{
  v1 = a1[3];
  v2 = *(a1 + 8);
  v3 = *a1;
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(v3, v2, ObjectType, v1);
}

double DefaultHostEnvironment.cutoffTime.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0.0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(ObjectType, v1);
  return result;
}

uint64_t DefaultHostEnvironment.ignoreMaximumLookbackTime.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1) & 1;
}

unint64_t DefaultHostEnvironment.supportedQueryParameters.getter()
{
  if (*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 8);
    swift_unknownObjectRetain();
    v4 = v3(ObjectType, v1);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];

    return sub_21B197668(v6);
  }
}

uint64_t DefaultHostEnvironment.getQueryParametersForBlock(withName:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig))
  {
    v5 = *(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v7(a1, a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21B19ABA8();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_21B1F1310()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t DefaultHostEnvironment.deinit()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21B1972F0(v0 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t DefaultHostEnvironment.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_recipeURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21B1972F0(v0 + OBJC_IVAR____TtC12PoirotBlocks19BaseHostEnvironment_loggingType);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_21B1F14D4()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_21B1F1538(uint64_t result, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
    ObjectType = swift_getObjectType();
    return (*(v5 + 16))(v4, a2 & 1, ObjectType, v5);
  }

  return result;
}

uint64_t (*sub_21B1F15B4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = DefaultHostEnvironment.nextStartTime.modify(v2);
  return sub_21B1F1624;
}

void sub_21B1F1624(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_21B1F166C()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0.0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(ObjectType, v1);
  return result;
}

uint64_t sub_21B1F16C8()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1) & 1;
}

void sub_21B1F1728()
{
  if (!*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_timeWindowConfig))
  {
    sub_21B188B28();
    swift_allocError();
    *v1 = 0xD00000000000003ALL;
    v1[1] = 0x800000021B20EEB0;
    swift_willThrow();
  }
}

unint64_t sub_21B1F179C()
{
  if (*(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 8);
    swift_unknownObjectRetain();
    v4 = v3(ObjectType, v1);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];

    return sub_21B197668(v6);
  }
}

uint64_t sub_21B1F184C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig))
  {
    v5 = *(v2 + OBJC_IVAR____TtC12PoirotBlocks22DefaultHostEnvironment_queryParametersConfig + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v7(a1, a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21B19ABA8();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0;
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for DefaultHostEnvironment(uint64_t a1)
{
  result = qword_27CD6FE98;
  if (!qword_27CD6FE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *NamedQueryParameters.supportedQueryParameters.getter()
{
  v1 = type metadata accessor for DatasetColumnType(0);
  v61 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v60 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF40, &qword_21B2124F0);
  result = sub_21B20D7E8();
  v6 = 0;
  v7 = 0;
  v8 = *(v4 + 64);
  v48 = v4 + 64;
  v52 = v4;
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v8;
  v12 = (v9 + 63) >> 6;
  v50 = result + 8;
  v51 = result;
  v49 = v12;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v53 = (v11 - 1) & v11;
LABEL_11:
      v54 = v6;
      v16 = v13 | (v6 << 6);
      v17 = *(v52 + 56);
      v18 = (*(v52 + 48) + 16 * v16);
      v19 = v18[1];
      v58 = *v18;
      v59 = v16;
      v20 = *(v17 + 8 * v16);
      v57 = v19;

      v56 = v20;
      v22 = sub_21B1DFBE8(v21);
      v55 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F0E8, &unk_21B2130B0);
      result = sub_21B20D7E8();
      v23 = result;
      v24 = 0;
      v26 = v22 + 64;
      v25 = *(v22 + 64);
      v63 = result;
      v64 = v22;
      v27 = 1 << *(v22 + 32);
      v28 = v27 < 64 ? ~(-1 << v27) : -1;
      v29 = v28 & v25;
      v30 = (v27 + 63) >> 6;
      v62 = result + 8;
      if ((v28 & v25) != 0)
      {
        break;
      }

LABEL_16:
      v32 = v24;
      while (1)
      {
        v24 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v24 >= v30)
        {
          break;
        }

        v33 = *(v26 + 8 * v24);
        ++v32;
        if (v33)
        {
          v31 = __clz(__rbit64(v33));
          v29 = (v33 - 1) & v33;
          goto LABEL_21;
        }
      }

      v43 = v59;
      *(v50 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      result = v51;
      v44 = (*(v51 + 48) + 16 * v43);
      v45 = v57;
      *v44 = v58;
      v44[1] = v45;
      *(result[7] + 8 * v43) = v23;
      v46 = result[2];
      v41 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v41)
      {
        goto LABEL_31;
      }

      result[2] = v47;
      v7 = v55;
      v6 = v54;
      v12 = v49;
      v11 = v53;
      if (!v53)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v31 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_21:
      v34 = v31 | (v24 << 6);
      v35 = *(v64 + 56);
      v36 = (*(v64 + 48) + 16 * v34);
      v37 = v36[1];
      v65 = *v36;
      sub_21B1A37FC(v35 + 40 * v34, v67);
      sub_21B17FB4C(v67, v66);
      __swift_project_boxed_opaque_existential_1(v66, v66[3]);
      swift_getDynamicType();

      __swift_destroy_boxed_opaque_existential_1(v66);
      v38 = v60;
      sub_21B20CDD8();
      sub_21B1A3858(v67);
      v23 = v63;
      *(v62 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v39 = (v23[6] + 16 * v34);
      *v39 = v65;
      v39[1] = v37;
      result = sub_21B1B6CF0(v38, v23[7] + *(v61 + 72) * v34);
      v40 = v23[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      v23[2] = v42;
      if (!v29)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v12)
      {
        return result;
      }

      v15 = *(v48 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v53 = (v15 - 1) & v15;
        goto LABEL_11;
      }
    }

LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t NamedQueryParameters.__allocating_init(dictionaryLiteral:)(uint64_t a1)
{
  v2 = swift_allocObject();
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEA8, &qword_21B217EE0);
    v3 = sub_21B20D808();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;

  sub_21B1F2190(v4, 1, &v6);

  *(v2 + 16) = v6;
  return v2;
}

uint64_t NamedQueryParameters.init(dictionaryLiteral:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEA8, &qword_21B217EE0);
    v2 = sub_21B20D808();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v5 = v2;

  sub_21B1F2190(v3, 1, &v5);
  *(v1 + 16) = v5;

  return v1;
}

uint64_t NamedQueryParameters.getQueryParametersForBlock(withName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (v8 = sub_21B1B9778(a1, a2), (v9 & 1) != 0))
  {
    *a3 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    sub_21B19ABA8();
    swift_allocError();
    *v10 = a1;
    v10[1] = a2;
    swift_willThrow();
  }
}

uint64_t NamedQueryParameters.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21B1F20B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEA8, &qword_21B217EE0);
    v5 = sub_21B20D808();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  sub_21B1F2190(v6, 1, &v8);
  *(v4 + 16) = v8;

  *a2 = v4;
  return result;
}

void sub_21B1F2190(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[4];

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_21B1B9778(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21B20235C(v15, v5 & 1);
    v10 = sub_21B1B9778(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_21B20DBF8();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_21B20435C();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + 8 * v10) = v6;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_21B20D6A8();
    MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
    sub_21B20D768();
    MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
    sub_21B20D7C8();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 2);

      if (!v7)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_21B1B9778(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_21B20235C(v31, 1);
        v27 = sub_21B1B9778(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + 8 * v27) = v6;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void (*sub_21B1F257C(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = v5 - 1;
    v8 = (a3 + 64);
    do
    {
      v9 = v7;
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = *(v8 - 16);
      v13 = *(v8 - 3);
      v16[0] = *(v8 - 4);
      v16[1] = v13;
      v17 = v12;
      v18 = v11;
      v19 = v10;

      sub_21B17CE94(v11, v10);
      v6(v16);
      v14 = v18;
      v15 = v19;

      result = sub_21B17DAE4(v14, v15);
      if (v4)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 5;
    }

    while (v9);
  }

  return result;
}

void (*sub_21B1F2640(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void (*sub_21B1F26D4(void (*result)(uint64_t *), uint64_t a2, uint64_t a3))(uint64_t *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_21B1F2768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v9 = a4[2];
  v8 = a4[3];
  ObjectType = swift_getObjectType();
  v11 = (*(a2 + 8))(ObjectType, a2);
  if (!v4)
  {
    v13 = v6;
    v14 = v7;
    v15 = v9;
    v16 = v8;
    v17 = v11;

    sub_21B1F28FC(v12);
    sub_21B1F4180(&v13);
  }
}

uint64_t sub_21B1F28FC(uint64_t a1)
{
  v3 = sub_21B20D348();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B20C368();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v8 = *v1;
  v9 = v1[1];
  v38 = v1;
  v45 = v8;
  v46 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v11 = swift_allocObject();
  v43 = xmmword_21B2110C0;
  *(v11 + 16) = xmmword_21B2110C0;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 32) = 0xD000000000000022;
  *(v11 + 40) = 0x800000021B2105B0;
  sub_21B1F41D4(&v45, v44);
  v13 = sub_21B1F38BC();
  sub_21B20DC58();

  v41 = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = v43;
  *(v14 + 56) = v12;
  *(v14 + 32) = 0xD00000000000001BLL;
  *(v14 + 40) = 0x800000021B2105E0;
  v49 = v13;
  sub_21B20DC58();

  sub_21B20C3A8();
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B211420;
  sub_21B20C358();
  sub_21B20C348();
  *&v44[0] = v15;
  sub_21B1F3910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  v44[0] = v45;
  v44[1] = v46;
  sub_21B1F4230();
  v16 = v42;
  v17 = sub_21B20C388();
  if (v16)
  {

    v19 = swift_allocObject();
    *(v19 + 16) = v43;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 32) = 0xD000000000000020;
LABEL_10:
    *(v19 + 40) = 0x800000021B210600;
    sub_21B20DC58();
  }

  v20 = v38;
  v21 = v17;
  v22 = v18;

  sub_21B20D338();
  v42 = v21;
  v40 = v22;
  v23 = sub_21B20D318();
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    v27 = *(v20 + 4);
    v28 = swift_allocObject();
    *(v28 + 16) = v43;
    v29 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 32) = v25;
    *(v28 + 40) = v26;
    sub_21B20DC58();

    v30 = swift_allocObject();
    *(v30 + 16) = v43;
    *(v30 + 56) = v29;
    *(v30 + 32) = 0xD000000000000019;
    *(v30 + 40) = 0x800000021B210650;
    sub_21B20DC58();

    v31 = *(v27 + 16);
    if (v31)
    {
      v32 = (v27 + 32);
      v33 = v40;
      do
      {
        v34 = *v32;
        v35 = v32[1];
        v48 = *(v32 + 4);
        v47[0] = v34;
        v47[1] = v35;
        sub_21B1F3F70(v47, v44);
        sub_21B1F3A40(v47, a1, "PoirotBlocks/BlockLog.swift", 27);
        sub_21B1F3FCC(v47);
        v32 = (v32 + 40);
        --v31;
      }

      while (v31);
    }

    else
    {
      v33 = v40;
    }

    sub_21B17DAF8(v42, v33);
    v19 = swift_allocObject();
    *(v19 + 16) = v43;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 32) = 0xD000000000000020;
    goto LABEL_10;
  }

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

void sub_21B1F2F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = a4[2];
  v9 = a4[3];
  v10 = a4[4];
  ObjectType = swift_getObjectType();
  v12 = (*(a2 + 8))(ObjectType, a2);
  if (!v4)
  {
    v14[0] = v6;
    v14[1] = v7;
    v14[2] = v8;
    v14[3] = v9;
    v14[4] = v10;
    v14[5] = v12;
    sub_21B1F3760(v6, v7, v8, v9, v10);
    sub_21B1F30A8(v13);
    sub_21B1F37A4(v14);
  }
}

uint64_t sub_21B1F30A8(uint64_t a1)
{
  v3 = sub_21B20D348();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21B20C368();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v6);
  v7 = v1[1];
  v46 = *v1;
  v47 = v7;
  v37 = v1;
  v48 = *(v1 + 4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v9 = swift_allocObject();
  v42 = xmmword_21B2110C0;
  *(v9 + 16) = xmmword_21B2110C0;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 32) = 0xD000000000000019;
  *(v9 + 40) = 0x800000021B2104D0;
  sub_21B1F384C(&v46, &v43);
  v11 = sub_21B1F38BC();
  sub_21B20DC58();

  v51 = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v42;
  *(v12 + 56) = v10;
  *(v12 + 32) = 0xD00000000000001CLL;
  *(v12 + 40) = 0x800000021B2104F0;
  sub_21B20DC58();

  sub_21B20C3A8();
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21B211420;
  sub_21B20C358();
  sub_21B20C348();
  *&v43 = v13;
  sub_21B1F3910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  v43 = v46;
  v44 = v47;
  v45 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEB8, &unk_21B217FD0);
  sub_21B1F3968();
  v14 = v41;
  v15 = sub_21B20C388();
  if (v14)
  {
    sub_21B198098(v43, *(&v43 + 1), v44, *(&v44 + 1), v45);

    v17 = swift_allocObject();
    *(v17 + 16) = v42;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 32) = 0xD000000000000017;
    *(v17 + 40) = 0x800000021B210510;
LABEL_10:
    sub_21B20DC58();
  }

  v18 = v37;
  v41 = v11;
  v19 = v15;
  v20 = v16;
  sub_21B198098(v43, *(&v43 + 1), v44, *(&v44 + 1), v45);
  sub_21B20D338();
  v40 = v19;
  v39 = v20;
  v21 = sub_21B20D318();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = *(v18 + 5);
    v26 = swift_allocObject();
    *(v26 + 16) = v42;
    v27 = MEMORY[0x277D837D0];
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 32) = v23;
    *(v26 + 40) = v24;
    sub_21B20DC58();

    v28 = swift_allocObject();
    *(v28 + 16) = v42;
    *(v28 + 56) = v27;
    *(v28 + 32) = 0xD00000000000001ALL;
    *(v28 + 40) = 0x800000021B210570;
    sub_21B20DC58();

    v29 = *(v25 + 16);
    if (v29)
    {
      v30 = (v25 + 32);
      v31 = v40;
      do
      {
        v32 = *v30;
        v33 = v30[1];
        v50 = *(v30 + 4);
        v49[0] = v32;
        v49[1] = v33;
        sub_21B1F3F70(v49, &v43);
        sub_21B1F3A40(v49, a1, "PoirotBlocks/RecipeLog.swift", 28);
        sub_21B1F3FCC(v49);
        v30 = (v30 + 40);
        --v29;
      }

      while (v29);
    }

    else
    {
      v31 = v40;
    }

    sub_21B17DAF8(v31, v39);
    v34 = swift_allocObject();
    *(v34 + 16) = v42;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 32) = 0xD000000000000017;
    *(v34 + 40) = 0x800000021B210510;
    goto LABEL_10;
  }

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

void sub_21B1F3760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

unint64_t sub_21B1F37F8()
{
  result = qword_27CD6FEB0;
  if (!qword_27CD6FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FEB0);
  }

  return result;
}

uint64_t sub_21B1F384C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEB8, &unk_21B217FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B1F38BC()
{
  result = qword_27CD6FEC0;
  if (!qword_27CD6FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FEC0);
  }

  return result;
}

unint64_t sub_21B1F3910()
{
  result = qword_27CD6EBD8;
  if (!qword_27CD6EBD8)
  {
    sub_21B20C368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6EBD8);
  }

  return result;
}

unint64_t sub_21B1F3968()
{
  result = qword_27CD6FEC8;
  if (!qword_27CD6FEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6FEB8, &unk_21B217FD0);
    sub_21B1F39EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FEC8);
  }

  return result;
}

unint64_t sub_21B1F39EC()
{
  result = qword_27CD6FED0;
  if (!qword_27CD6FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FED0);
  }

  return result;
}

uint64_t sub_21B1F3A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21B20D348();
  MEMORY[0x28223BE20](v5 - 8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B2110C0;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD000000000000011, 0x800000021B210590);
  MEMORY[0x21CEEBBB0](*a1, *(a1 + 8));
  MEMORY[0x21CEEBBB0](0x70797420666F2022, 0xEB00000000203A65);
  v8 = *(a1 + 16);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](2763296, 0xE300000000000000);
  v9 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_21B1F38BC();
  sub_21B20DC58();

  v10 = *(a1 + 32);
  if (v10 >> 60 == 15)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21B2110C0;
    *(v11 + 56) = v9;
    *(v11 + 32) = 0x3E4C4C554E3CLL;
    *(v11 + 40) = 0xE600000000000000;
    sub_21B20DC58();
LABEL_3:

    return sub_21B1F4020(a1);
  }

  v12 = *(a1 + 24);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      sub_21B17CEA8(*(a1 + 24), v10);
      v21 = sub_21B20C6A8();
      v22 = v12;
      v23 = v10;
      v25 = v24;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_21B2110C0;
      *(v26 + 56) = v9;
      *(v26 + 32) = v21;
      *(v26 + 40) = v25;
      sub_21B20DC58();
      sub_21B17DAE4(v22, v23);
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  if (!v8)
  {
LABEL_14:
    sub_21B17CEA8(*(a1 + 24), v10);
    sub_21B20D338();
    v27 = sub_21B20D318();
    if (v28)
    {
      v29 = v27;
      v30 = v12;
      v31 = v10;
      v32 = v28;
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_21B2110C0;
      *(v33 + 56) = v9;
      *(v33 + 32) = v29;
      *(v33 + 40) = v32;
      sub_21B20DC58();
      sub_21B17DAE4(v30, v31);

      return sub_21B1F4020(a1);
    }

    goto LABEL_18;
  }

  sub_21B17CEA8(v12, v10);
  sub_21B20D338();
  v35 = v12;
  v36 = v10;
  sub_21B20D318();
  if (v13)
  {
    sub_21B17FBB0();
    v14 = sub_21B20D608();

    v15 = *(v14 + 16);
    if (!v15)
    {
LABEL_11:
      sub_21B17DAE4(v35, v36);

      return sub_21B1F4020(a1);
    }

    v16 = 0;
    v17 = (v14 + 40);
    while (v16 < *(v14 + 16))
    {
      ++v16;
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21B2110C0;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 32) = v18;
      *(v20 + 40) = v19;
      swift_bridgeObjectRetain_n();
      sub_21B20DC58();

      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

LABEL_18:
  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t sub_21B1F4020(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21B2110C0;
  BYTE8(v4) = 0;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0x203A444E45202A2ALL, 0xEF22207972746E45);
  MEMORY[0x21CEEBBB0](*a1, *(a1 + 8));
  MEMORY[0x21CEEBBB0](0x70797420666F2022, 0xEB00000000203A65);
  *&v4 = *(a1 + 16);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](2763296, 0xE300000000000000);
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = *(&v4 + 1);
  *(v2 + 40) = 0xE000000000000000;
  sub_21B1F38BC();
  sub_21B20DC58();
}

unint64_t sub_21B1F4230()
{
  result = qword_27CD6FED8;
  if (!qword_27CD6FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FED8);
  }

  return result;
}

uint64_t sub_21B1F4284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21B20DC88();
  sub_21B20D388();
  v6 = sub_21B20DCA8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21B20DB28() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

double DebugLogHandler.__allocating_init(allowedBlockNames:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = a1;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t DebugLogHandler.init(allowedBlockNames:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = a1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  return v1;
}

uint64_t sub_21B1F441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  v10 = *(a4 + 8);
  v12 = a4[2];
  v11 = a4[3];
  sub_21B1F4658(v4 + 32, &v34);
  v40 = v11;
  if (v36)
  {
    sub_21B17C284(&v34, v37);
    v13 = a2;
    v14 = a3;
    v15 = a1;
    v17 = v38;
    v16 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    *&v34 = v9;
    BYTE8(v34) = v10;
    v35 = v12;
    v36 = v11;
    v18 = v15;
    a3 = v14;
    a2 = v13;
    (*(v16 + 8))(v18, v13, a3, &v34, v17, v16);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    if (v5)
    {
      return result;
    }

    v32 = v10;
    a1 = v18;
    v11 = v40;
  }

  else
  {
    v32 = v10;
    sub_21B1F46C8(&v34);
  }

  v20 = *(v33 + 24);
  v21 = v12;
  if (!v20 || (result = sub_21B1F4284(v12, v11, v20), (result & 1) != 0))
  {
    swift_beginAccess();
    v22 = *(v33 + 16);

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 16) = v22;
    v24 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_21B1D2F1C(0, *(v22 + 2) + 1, 1, v22);
      *(v33 + 16) = v22;
    }

    v26 = *(v22 + 2);
    v25 = *(v22 + 3);
    v27 = v9;
    v28 = v32;
    if (v26 >= v25 >> 1)
    {
      v31 = sub_21B1D2F1C((v25 > 1), v26 + 1, 1, v22);
      v28 = v32;
      v27 = v9;
      v22 = v31;
    }

    *(v22 + 2) = v26 + 1;
    v29 = &v22[56 * v26];
    *(v29 + 4) = v27;
    v29[40] = v28;
    v30 = v40;
    *(v29 + 6) = v21;
    *(v29 + 7) = v30;
    *(v29 + 8) = v24;
    *(v29 + 9) = a2;
    *(v29 + 10) = a3;
    *(v33 + 16) = v22;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_21B1F4658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEE0, &qword_21B217FE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1F46C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEE0, &qword_21B217FE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1F4730(void (*a1)(uint64_t *))
{
  v3 = v2;
  swift_beginAccess();
  v4 = *(*(v1 + 16) + 16);

  v15 = v4;
  if (!v4)
  {
  }

  v6 = 0;
  v7 = (result + 72);
  v16 = result;
  while (v6 < *(result + 16))
  {
    v8 = *(v7 - 5);
    v9 = *(v7 - 32);
    v10 = *(v7 - 2);
    v18 = *(v7 - 3);
    v26 = v3;
    v12 = *(v7 - 1);
    v11 = *v7;
    ObjectType = swift_getObjectType();
    v21 = v12;
    v19 = *(v11 + 8);
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v13 = v26;
    v14 = v19(ObjectType, v11);
    swift_unknownObjectRelease();
    if (v13)
    {
      swift_unknownObjectRelease();
      swift_bridgeObjectRelease_n();
    }

    v21 = v8;
    v22 = v9;
    v23 = v18;
    v24 = v10;
    v25 = v14;
    a1(&v21);
    v3 = 0;
    swift_unknownObjectRelease();

    ++v6;

    v7 += 7;
    result = v16;
    if (v15 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t DebugLogHandler.deinit()
{

  sub_21B1F46C8(v0 + 32);
  return v0;
}

uint64_t DebugLogHandler.__deallocating_deinit()
{

  sub_21B1F46C8(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t dispatch thunk of DebugLogHandler.handleLogCollector(_:metadata:)()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 160))();
}

uint64_t sub_21B1F4B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B1F4B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B1F4BCC(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v10 = a4[2];
  v9 = a4[3];
  ObjectType = swift_getObjectType();
  v13 = a1;
  result = (*(a2 + 8))(ObjectType, a2);
  if (!v4)
  {
    v13 = v7;
    v14 = v8;
    v15 = v10;
    v16 = v9;
    v17 = result;

    sub_21B1F4D80(&v13);
  }

  return result;
}

uint64_t sub_21B1F4C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  v11 = a4[4];
  ObjectType = swift_getObjectType();
  v14[0] = a1;
  result = (*(a2 + 8))(ObjectType, a2);
  if (!v4)
  {
    v14[0] = v7;
    v14[1] = v8;
    v14[2] = v9;
    v14[3] = v10;
    v14[4] = v11;
    v14[5] = result;
    sub_21B1F3760(v7, v8, v9, v10, v11);
    sub_21B1F55D8(v14);
    sub_21B198098(v7, v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_21B1F4D80(unint64_t *a1)
{
  v98 = *MEMORY[0x277D85DE8];
  v92 = sub_21B20C548();
  v3 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21B20C678();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v89 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v77 = &v72 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v72 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v72 - v20;
  v22 = *a1;
  v23 = a1[3];
  v93 = a1[2];
  v90 = v23;
  v82 = a1[4];
  (*(v8 + 16))(v18, v1 + OBJC_IVAR____TtC12PoirotBlocks14FileLogHandler_directory, v7);
  v95 = v22;
  v24 = v8;
  v96 = sub_21B20DAB8();
  v97 = v25;
  MEMORY[0x21CEEBBB0](46, 0xE100000000000000);
  MEMORY[0x21CEEBBB0](v93, v90);
  v26 = *(v3 + 104);
  v87 = *MEMORY[0x277CC91D8];
  v27 = v92;
  v85 = v26;
  v86 = v3 + 104;
  v26(v6);
  v84 = sub_21B17FBB0();
  sub_21B20C658();
  v28 = *(v3 + 8);
  v88 = v6;
  v90 = v3 + 8;
  v83 = v28;
  v28(v6, v27);

  v31 = *(v24 + 8);
  v29 = v24 + 8;
  v30 = v31;
  v31(v18, v7);
  v32 = [objc_opt_self() defaultManager];
  v33 = sub_21B20C5A8();
  v96 = 0;
  LODWORD(a1) = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v96];

  if (a1)
  {
    v34 = v96;
    v35 = sub_21B1F5FB0(v82);
    v36 = v35;
    v37 = 0;
    v38 = v35 + 8;
    v39 = 1 << *(v35 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v35[8];
    v42 = (v39 + 63) >> 6;
    v91 = v21;
    v43 = v77;
    v74 = v35;
    v73 = v42;
    v44 = v21;
    v80 = v29;
    v81 = v7;
    v79 = v30;
    v72 = v35 + 8;
    if (v41)
    {
      while (1)
      {
LABEL_11:
        while (1)
        {
          v75 = (v41 - 1) & v41;
          v76 = v37;
          v46 = __clz(__rbit64(v41)) | (v37 << 6);
          v47 = *(v36[6] + 16 * v46 + 8);
          v48 = *(v36[7] + 8 * v46);

          sub_21B20C5C8();

          v49 = v48;
          v50 = v48[2];
          if (v50)
          {
            break;
          }

LABEL_6:

          v43 = v77;
          v30(v77, v7);
          v44 = v91;
          v36 = v74;
          v38 = v72;
          v37 = v76;
          v42 = v73;
          v41 = v75;
          if (!v75)
          {
            goto LABEL_7;
          }
        }

        if (v50 != 1)
        {
          break;
        }

        v44 = v48[8];
        if (v44 >> 60 == 15)
        {
          break;
        }

        v47 = v48[7];
        sub_21B17CEA8(v47, v48[8]);

        v66 = v94;
        sub_21B20C6C8();
        v94 = v66;
        if (v66)
        {
          goto LABEL_44;
        }

        v30(v43, v7);
        sub_21B17DAE4(v47, v44);
        v37 = v76;
        v42 = v73;
        v41 = v75;
        v44 = v91;
        if (!v75)
        {
          goto LABEL_7;
        }
      }

      v51 = 0;
      v52 = v48 + 8;
      v82 = v49;
      v78 = v50;
      while (v50 != v51)
      {
        if (v51 >= *(v49 + 16))
        {
          goto LABEL_43;
        }

        v53 = *v52;
        if (*v52 >> 60 != 15)
        {
          v47 = *(v52 - 1);
          v54 = *(v52 - 16);
          v55 = *(v52 - 3);
          v96 = *(v52 - 4);
          v97 = v55;
          v95 = v51;
          v93 = v55;
          swift_bridgeObjectRetain_n();
          sub_21B17CE94(v47, v53);
          sub_21B17CE94(v47, v53);
          v56 = sub_21B20DAB8();
          MEMORY[0x21CEEBBB0](v56);

          v57 = 1920099630;
          if (v54 == 2)
          {
            v57 = 0;
          }

          v58 = 0xE000000000000000;
          if (v54 != 2)
          {
            v58 = 0xE400000000000000;
          }

          v59 = 0x6E6F736A2ELL;
          if (v54)
          {
            v59 = 1987273518;
          }

          v60 = 0xE500000000000000;
          if (v54)
          {
            v60 = 0xE400000000000000;
          }

          if (v54 <= 1)
          {
            v61 = v59;
          }

          else
          {
            v61 = v57;
          }

          if (v54 <= 1)
          {
            v62 = v60;
          }

          else
          {
            v62 = v58;
          }

          MEMORY[0x21CEEBBB0](v61, v62);

          v63 = v88;
          v64 = v92;
          v85(v88, v87, v92);
          v43 = v89;
          v44 = v91;
          sub_21B20C658();
          v83(v63, v64);

          v65 = v94;
          sub_21B20C6C8();
          v94 = v65;
          if (v65)
          {

            sub_21B17DAE4(v47, v53);

            sub_21B17DAE4(v47, v53);
            v69 = v81;
            v70 = v79;
            v79(v43, v81);
            v70(v77, v69);
            return (v70)(v91, v69);
          }

          v7 = v81;
          v30 = v79;
          v79(v43, v81);
          sub_21B17DAE4(v47, v53);

          sub_21B17DAE4(v47, v53);
          v49 = v82;
          v50 = v78;
        }

        ++v51;
        v52 += 5;
        if (v50 == v51)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:

      sub_21B17DAE4(v47, v44);
      v30(v43, v7);
      v68 = v91;
    }

    else
    {
      while (1)
      {
LABEL_7:
        v45 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
        }

        if (v45 >= v42)
        {
          break;
        }

        v41 = v38[v45];
        ++v37;
        if (v41)
        {
          v37 = v45;
          goto LABEL_11;
        }
      }

      v68 = v44;
    }

    return (v30)(v68, v7);
  }

  else
  {
    v67 = v96;
    sub_21B20C508();

    swift_willThrow();
    return (v30)(v21, v7);
  }
}

uint64_t sub_21B1F55D8(uint64_t a1)
{
  v2 = v1;
  v99 = *MEMORY[0x277D85DE8];
  v4 = sub_21B20C548();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B20C678();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v88 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v78 = &v73 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v73 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v73 - v22;
  v94 = *(a1 + 40);
  (*(v10 + 16))(v20, v95 + OBJC_IVAR____TtC12PoirotBlocks14FileLogHandler_directory, v9);
  v97 = 0x657069636552;
  v98 = 0xE600000000000000;
  v24 = *(v5 + 104);
  v86 = *MEMORY[0x277CC91D8];
  v84 = v24;
  v85 = v5 + 104;
  v24(v8);
  v83 = sub_21B17FBB0();
  sub_21B20C658();
  v25 = *(v5 + 8);
  v87 = v8;
  v89 = v5 + 8;
  v90 = v4;
  v82 = v25;
  v25(v8, v4);
  v28 = *(v10 + 8);
  v27 = v10 + 8;
  v26 = v28;
  v93 = v9;
  v28(v20, v9);
  v29 = [objc_opt_self() defaultManager];
  v30 = sub_21B20C5A8();
  v97 = 0;
  LODWORD(v4) = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:&v97];

  if (!v4)
  {
    v65 = v97;
    sub_21B20C508();

    swift_willThrow();
    v66 = v23;
    v67 = v93;
    return v26(v66, v67);
  }

  v31 = v97;
  v32 = sub_21B1F5FB0(v94);
  v33 = v32;
  v34 = 0;
  v35 = v32 + 8;
  v36 = 1 << *(v32 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v32[8];
  v39 = (v36 + 63) >> 6;
  v91 = v23;
  v92 = v27;
  v75 = v32;
  v40 = v23;
  v74 = v39;
  v41 = v93;
  v80 = v26;
  v73 = v32 + 8;
  if (!v38)
  {
    while (1)
    {
LABEL_5:
      v42 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
      }

      if (v42 >= v39)
      {
        break;
      }

      v38 = v35[v42];
      ++v34;
      if (v38)
      {
        v34 = v42;
        goto LABEL_9;
      }
    }

    v66 = v40;
    v67 = v41;
    return v26(v66, v67);
  }

  while (1)
  {
LABEL_9:
    v76 = (v38 - 1) & v38;
    v77 = v34;
    v43 = __clz(__rbit64(v38)) | (v34 << 6);
    v44 = *(v33[6] + 16 * v43 + 8);
    v45 = *(v33[7] + 8 * v43);

    v46 = v78;
    v47 = v40;
    sub_21B20C5C8();

    v48 = v45;
    v49 = v45[2];
    if (!v49)
    {
LABEL_34:

      v41 = v93;
      v26(v78, v93);
      v40 = v91;
      v33 = v75;
      v35 = v73;
      v34 = v77;
      goto LABEL_35;
    }

    if (v49 != 1)
    {
      break;
    }

    v40 = v45[8];
    if (v40 >> 60 == 15)
    {
      break;
    }

    v44 = v45[7];
    sub_21B17CEA8(v44, v45[8]);

    sub_21B20C6C8();
    if (v2)
    {
      goto LABEL_44;
    }

    v64 = v46;
    v41 = v93;
    v26(v64, v93);
    sub_21B17DAE4(v44, v40);
    v34 = v77;
    v40 = v47;
LABEL_35:
    v39 = v74;
    v38 = v76;
    if (!v76)
    {
      goto LABEL_5;
    }
  }

  v50 = 0;
  v51 = v45 + 8;
  v81 = v48;
  v79 = v49;
  while (v49 != v50)
  {
    if (v50 >= v48[2])
    {
      goto LABEL_43;
    }

    v47 = *v51;
    if (*v51 >> 60 != 15)
    {
      v95 = v2;
      v44 = *(v51 - 1);
      v52 = *(v51 - 16);
      v53 = *(v51 - 3);
      v97 = *(v51 - 4);
      v98 = v53;
      v96 = v50;
      v94 = v53;
      swift_bridgeObjectRetain_n();
      sub_21B17CE94(v44, v47);
      sub_21B17CE94(v44, v47);
      v54 = sub_21B20DAB8();
      MEMORY[0x21CEEBBB0](v54);

      v55 = 1920099630;
      if (v52 == 2)
      {
        v55 = 0;
      }

      v56 = 0xE000000000000000;
      if (v52 != 2)
      {
        v56 = 0xE400000000000000;
      }

      v57 = 0x6E6F736A2ELL;
      if (v52)
      {
        v57 = 1987273518;
      }

      v58 = 0xE500000000000000;
      if (v52)
      {
        v58 = 0xE400000000000000;
      }

      if (v52 <= 1)
      {
        v59 = v57;
      }

      else
      {
        v59 = v55;
      }

      if (v52 <= 1)
      {
        v60 = v58;
      }

      else
      {
        v60 = v56;
      }

      MEMORY[0x21CEEBBB0](v59, v60);

      v61 = v87;
      v62 = v90;
      v84(v87, v86, v90);
      v46 = v88;
      v40 = v91;
      sub_21B20C658();
      v82(v61, v62);

      v63 = v95;
      sub_21B20C6C8();
      v2 = v63;
      if (v63)
      {

        sub_21B17DAE4(v44, v47);

        sub_21B17DAE4(v44, v47);
        v68 = v46;
        v69 = v93;
        v70 = v80;
        v80(v68, v93);
        v70(v78, v69);
        return (v70)(v91, v69);
      }

      v26 = v80;
      v80(v46, v93);
      sub_21B17DAE4(v44, v47);

      sub_21B17DAE4(v44, v47);
      v48 = v81;
      v49 = v79;
    }

    ++v50;
    v51 += 5;
    if (v49 == v50)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:

  sub_21B17DAE4(v44, v40);
  v72 = v93;
  v26(v46, v93);
  return v26(v47, v72);
}

uint64_t sub_21B1F5DE8()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks14FileLogHandler_directory;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FileLogHandler(uint64_t a1)
{
  result = qword_27CD6FEF0;
  if (!qword_27CD6FEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B1F5ED8(uint64_t a1)
{
  result = sub_21B20C678();
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

void *sub_21B1F5FB0(uint64_t a1)
{
  v2 = sub_21B19796C(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = 0;
  v5 = (a1 + 64);
  while (1)
  {
    v6 = *(v5 - 3);
    v7 = *(v5 - 16);
    v8 = *(v5 - 1);
    v9 = *v5;
    v39 = *(v5 - 4);
    v40 = v6;
    v5 += 5;
    v10 = 1920099630;
    if (v7 == 2)
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    if (v7 != 2)
    {
      v11 = 0xE400000000000000;
    }

    v12 = 0x6E6F736A2ELL;
    if (v7)
    {
      v12 = 1987273518;
    }

    v13 = 0xE500000000000000;
    if (v7)
    {
      v13 = 0xE400000000000000;
    }

    v14 = v7 <= 1 ? v12 : v10;
    v15 = v7 <= 1 ? v13 : v11;
    v38 = v6;
    swift_bridgeObjectRetain_n();
    v36 = v9;
    v37 = v8;
    sub_21B17CE94(v8, v9);
    MEMORY[0x21CEEBBB0](v14, v15);

    sub_21B188EC8(v4, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_21B1B9778(v39, v40);
    v19 = v2[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v2[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v17)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_21B203F64();
        if (v22)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_21B201D08(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_21B1B9778(v39, v40);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_36;
      }

      v18 = v23;
      if (v22)
      {
LABEL_24:

        goto LABEL_28;
      }
    }

    v2[(v18 >> 6) + 8] |= 1 << v18;
    v25 = (v2[6] + 16 * v18);
    *v25 = v39;
    v25[1] = v40;
    *(v2[7] + 8 * v18) = MEMORY[0x277D84F90];
    v26 = v2[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_35;
    }

    v2[2] = v28;
LABEL_28:
    v29 = v2[7];
    v30 = *(v29 + 8 * v18);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v29 + 8 * v18) = v30;
    if ((v31 & 1) == 0)
    {
      v30 = sub_21B1D2A60(0, *(v30 + 2) + 1, 1, v30);
      *(v29 + 8 * v18) = v30;
    }

    v33 = *(v30 + 2);
    v32 = *(v30 + 3);
    if (v33 >= v32 >> 1)
    {
      v30 = sub_21B1D2A60((v32 > 1), v33 + 1, 1, v30);
      *(v29 + 8 * v18) = v30;
    }

    *(v30 + 2) = v33 + 1;
    v34 = &v30[40 * v33];
    *(v34 + 4) = v39;
    *(v34 + 5) = v38;
    v34[48] = v7;
    *(v34 + 7) = v37;
    *(v34 + 8) = v36;
    v4 = sub_21B1F5DD8;
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1F62B0(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = OBJC_IVAR____TtC12PoirotBlocks16StructLogHandler_directoryURL;
  v5 = sub_21B20C678();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_21B20C5A8();
  v14[0] = 0;
  v9 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:v14];

  if (v9)
  {
    v10 = v14[0];
  }

  else
  {
    v11 = v14[0];
    v12 = sub_21B20C508();

    swift_willThrow();
  }

  (*(v6 + 8))(a1, v5);
  return v2;
}

uint64_t sub_21B1F6444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v55 = sub_21B20C548();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v7);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21B20C678();
  v53 = *(v57 - 8);
  v10 = MEMORY[0x28223BE20](v57, v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v48 - v17;
  v19 = *a4;
  v20 = *(a4 + 8);
  v22 = a4[2];
  v21 = a4[3];
  sub_21B20C3A8();
  swift_allocObject();
  v59 = sub_21B20C398();
  v66 = v19;
  v67 = v20;
  v68 = v22;
  v69 = v21;
  ObjectType = swift_getObjectType();
  v70 = a1;
  v24 = *(a2 + 8);

  v25 = v58;
  v26 = v24(ObjectType, a2);
  if (v25)
  {
  }

  else
  {
    v28 = v19;
    v29 = v56;
    v30 = v52;
    v50 = v15;
    v58 = v18;
    v31 = v54;
    v32 = v55;
    v33 = v53;
    v34 = v57;
    sub_21B1F6F7C(&v66, v26, v64);
    sub_21B1F6EC4();
    v49 = sub_21B20C388();
    v36 = v35;
    v62[2] = v64[2];
    v62[3] = v64[3];
    v62[4] = v64[4];
    v63 = v65;
    v62[0] = v64[0];
    v62[1] = v64[1];
    sub_21B1F6F18(v62);

    (*(v33 + 16))(v30, v29 + OBJC_IVAR____TtC12PoirotBlocks16StructLogHandler_directoryURL, v34);
    v60 = v28;
    v59 = v36;
    v60 = sub_21B20DAB8();
    v61 = v37;
    v38 = v31;
    v39 = *(v31 + 104);
    v40 = v51;
    v41 = v32;
    v39(v51, *MEMORY[0x277CC91D8], v32);
    sub_21B17FBB0();
    v42 = v50;
    sub_21B20C668();
    (*(v38 + 8))(v40, v41);
    v43 = v57;
    v44 = *(v33 + 8);
    v44(v30, v57);

    v45 = v58;
    sub_21B20C5D8();
    v46 = v59;
    v44(v42, v43);
    v47 = v49;
    sub_21B20C6C8();
    v44(v45, v43);
    return sub_21B17DAF8(v47, v46);
  }
}

uint64_t sub_21B1F6934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_21B20C548();
  v48 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_21B20C678();
  v46 = *(v47 - 8);
  v10 = MEMORY[0x28223BE20](v47, v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v44 = &v41 - v13;
  v15 = *a4;
  v14 = a4[1];
  v16 = a4[2];
  v17 = a4[3];
  v18 = a4[4];
  sub_21B20C3A8();
  swift_allocObject();
  v51 = sub_21B20C398();
  *&v53 = v15;
  *(&v53 + 1) = v14;
  v19 = v14;
  *&v54 = v16;
  *(&v54 + 1) = v17;
  *&v55 = v18;
  ObjectType = swift_getObjectType();
  v59 = a1;
  v21 = *(a2 + 8);
  v50 = v15;
  sub_21B1F3760(v15, v19, v16, v17, v18);
  v22 = v52;
  v23 = v21(ObjectType, a2);
  if (v22)
  {
    sub_21B198098(v50, v19, v16, v17, v18);
  }

  else
  {
    v25 = v45;
    v27 = v48;
    v26 = v49;
    v28 = v46;
    v29 = v47;
    sub_21B1FEE9C(&v53, v23, v57);
    v53 = v57[0];
    v54 = v57[1];
    v55 = v57[2];
    v56 = v58;
    sub_21B1F6E70();
    v52 = sub_21B20C388();
    v31 = v30;
    sub_21B198098(v53, *(&v53 + 1), v54, *(&v54 + 1), v55);

    v32 = *(v28 + 16);
    v51 = v31;
    v33 = v25;
    v32(v25, v26 + OBJC_IVAR____TtC12PoirotBlocks16StructLogHandler_directoryURL, v29);
    *&v57[0] = 0x6C5F657069636572;
    *(&v57[0] + 1) = 0xEF6E6F736A2E676FLL;
    v34 = v42;
    v35 = v43;
    (*(v27 + 104))(v42, *MEMORY[0x277CC91D8], v43);
    sub_21B17FBB0();
    v36 = v44;
    sub_21B20C668();
    (*(v27 + 8))(v34, v35);
    v37 = *(v28 + 8);
    v38 = v33;
    v39 = v51;
    v37(v38, v29);
    v40 = v52;
    sub_21B20C6C8();
    v37(v36, v29);
    return sub_21B17DAF8(v40, v39);
  }
}

uint64_t sub_21B1F6D38()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks16StructLogHandler_directoryURL;
  v2 = sub_21B20C678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for StructLogHandler(uint64_t a1)
{
  result = qword_27CD6FF08;
  if (!qword_27CD6FF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B1F6E70()
{
  result = qword_27CD6FF18;
  if (!qword_27CD6FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF18);
  }

  return result;
}

unint64_t sub_21B1F6EC4()
{
  result = qword_27CD6FF20;
  if (!qword_27CD6FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF20);
  }

  return result;
}

void sub_21B1F6F7C(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  v8 = sub_21B1FB5EC(a2);

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v55 = -1;

  v44 = v4;
  v43 = v5;
  v9 = sub_21B1FB858(v8, v4, v5, v6, v7, &v52);

  v42 = v7;
  swift_bridgeObjectRelease_n();
  v46 = v52;
  v47 = v53;
  v10 = v54;
  v11 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70120, &unk_21B219230);
  v12 = sub_21B20D7E8();
  v14 = v9 + 64;
  v13 = *(v9 + 64);
  v48 = v9;
  v15 = 1 << *(v9 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v40 = v10;
  v41 = v11;
  sub_21B1F95A0(v46.i64[0], v46.u64[1], v47.i64[0], v47.i64[1], v10, v11);
  v18 = 0;
  v19 = (v15 + 63) >> 6;
  if (v17)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v23 = v20 | (v18 << 6);
      v24 = (*(v48 + 48) + 16 * v23);
      v26 = *v24;
      v25 = v24[1];

      sub_21B1F9658(v27, v49);

      *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v23;
      v28 = (v12[6] + 16 * v23);
      *v28 = v26;
      v28[1] = v25;
      v29 = v12[7] + 48 * v23;
      v30 = v50;
      v31 = v51;
      v32 = v49[1];
      *v29 = v49[0];
      *(v29 + 16) = v32;
      *(v29 + 32) = v30;
      *(v29 + 40) = v31;
      v33 = v12[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v12[2] = v35;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_5:
    v21 = v18;
    while (1)
    {
      v18 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v18 >= v19)
      {
        break;
      }

      v22 = *(v14 + 8 * v18);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    if (v41 == 255)
    {
      v36 = 0;
    }

    else
    {
      v36 = v40;
    }

    sub_21B1FA360(v46.i64[0], v46.u64[1], v47.i64[0], v47.u64[1], v40, v41);
    a3->i64[0] = v44;
    a3->i8[8] = v43;
    a3[1].i64[0] = v6;
    a3[1].i64[1] = v42;
    v37 = vdup_n_s32(v41 == 255);
    v38.i64[0] = v37.u32[0];
    v38.i64[1] = v37.u32[1];
    v39 = vcgezq_s64(vshlq_n_s64(v38, 0x3FuLL));
    a3[2] = vandq_s8(v46, v39);
    a3[3] = vandq_s8(v47, v39);
    a3[4].i64[0] = v36;
    a3[4].i8[8] = v41;
    a3[5].i64[0] = v12;
  }
}

uint64_t sub_21B1F7284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69614674696E69 && a2 == 0xEB00000000657275)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21B20DB28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B1F7310(uint64_t a1)
{
  v2 = sub_21B1F76A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F734C(uint64_t a1)
{
  v2 = sub_21B1F76A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F73A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21B20DB28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B1F7428(uint64_t a1)
{
  v2 = sub_21B1F76F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F7464(uint64_t a1)
{
  v2 = sub_21B1F76F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockExecutionLog.Error.encode(to:)(void *a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF28, &qword_21B218190);
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v4);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF30, &qword_21B218198);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v15 - v10;
  v12 = *v1;
  v15[1] = v1[1];
  v15[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1F76A0();
  sub_21B20DD08();
  sub_21B1F76F4();
  sub_21B20D988();
  v13 = v16;
  sub_21B20D9E8();
  (*(v3 + 8))(v6, v13);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_21B1F76A0()
{
  result = qword_27CD6FF38;
  if (!qword_27CD6FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF38);
  }

  return result;
}

unint64_t sub_21B1F76F4()
{
  result = qword_27CD6FF40;
  if (!qword_27CD6FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF40);
  }

  return result;
}

uint64_t BlockExecutionLog.Error.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF48, &qword_21B2181A0);
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF50, &unk_21B2181A8);
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1F76A0();
  sub_21B20DCD8();
  if (v2)
  {
    goto LABEL_6;
  }

  v28 = a1;
  v12 = v35;
  v13 = v30;
  v14 = sub_21B20D968();
  v15 = (2 * *(v14 + 16)) | 1;
  v31 = v14;
  v32 = v14 + 32;
  v33 = 0;
  v34 = v15;
  v16 = v11;
  if (sub_21B1E6538() || v33 != v34 >> 1)
  {
    v17 = sub_21B20D6E8();
    swift_allocError();
    v18 = v8;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA58, &qword_21B2173D0);
    *v20 = &type metadata for BlockExecutionLog.Error;
    sub_21B20D848();
    sub_21B20D6D8();
    (*(*(v17 - 8) + 104))(v20, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v11, v18);
    swift_unknownObjectRelease();
    a1 = v28;
LABEL_6:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  sub_21B1F76F4();
  sub_21B20D838();
  v22 = sub_21B20D8C8();
  v24 = v23;
  (*(v12 + 8))(v7, v4);
  (*(v13 + 8))(v16, v8);
  swift_unknownObjectRelease();
  v25 = v28;
  v26 = v29;
  *v29 = v22;
  v26[1] = v24;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t BlockExecutionLog.LogContent.asData()()
{
  v1 = sub_21B20D348();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 40);
  if (v8 <= 2)
  {
    sub_21B17CEA8(*v0, *(v0 + 8));
  }

  else
  {
    if (v8 == 3)
    {
      sub_21B20D338();
      v9 = sub_21B20D308();
      v11 = v10;
    }

    else
    {
      v14[2] = 0;
      v14[3] = 0xE000000000000000;
      v14[0] = v6;
      v14[1] = v7;
      sub_21B20D768();
      sub_21B20D338();
      v9 = sub_21B20D308();
      v11 = v12;
    }

    (*(v2 + 8))(v5, v1);
    if (v11 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  return v6;
}

Swift::String_optional __swiftcall BlockExecutionLog.LogContent.suggestedFileExtension()()
{
  v1 = *(v0 + 40);
  v2 = *&aJson_3[8 * v1];
  v3 = qword_21B219268[v1];
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_21B1F7CE0(uint64_t a1)
{
  v2 = sub_21B1F8A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F7D1C(uint64_t a1)
{
  v2 = sub_21B1F8A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F7D58()
{
  v1 = *v0;
  v2 = 1852797802;
  v3 = 0x7972616E6962;
  v4 = 0x6567617373656DLL;
  if (v1 != 3)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7762787;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21B1F7DDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21B1FBB30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B1F7E04(uint64_t a1)
{
  v2 = sub_21B1F88C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F7E40(uint64_t a1)
{
  v2 = sub_21B1F88C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F7E7C()
{
  if (*v0)
  {
    return 0x614C6E6D756C6F63;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_21B1F7EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_21B20DB28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614C6E6D756C6F63 && a2 == 0xEC00000074756F79)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();

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

uint64_t sub_21B1F7F98(uint64_t a1)
{
  v2 = sub_21B1F8A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F7FD4(uint64_t a1)
{
  v2 = sub_21B1F8A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F8010(uint64_t a1)
{
  v2 = sub_21B1F8914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F804C(uint64_t a1)
{
  v2 = sub_21B1F8914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F8088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21B20DB28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B1F8110(uint64_t a1)
{
  v2 = sub_21B1F8AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F814C(uint64_t a1)
{
  v2 = sub_21B1F8AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1F8188(uint64_t a1)
{
  v2 = sub_21B1F89BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F81C4(uint64_t a1)
{
  v2 = sub_21B1F89BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockExecutionLog.LogContent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF58, &qword_21B2181B8);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v53 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF60, &qword_21B2181C0);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v50 = &v47 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF68, &qword_21B2181C8);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v9);
  v47 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF70, &qword_21B2181D0);
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v58 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF78, &qword_21B2181D8);
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FF80, &qword_21B2181E0);
  v20 = *(v19 - 8);
  v64 = v19;
  v65 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v22 = v1[1];
  v61 = *v1;
  v62 = v22;
  v23 = v1[2];
  v24 = v1[3];
  v25 = v1[4];
  v26 = *(v1 + 40);
  v27 = a1[3];
  v28 = a1;
  v30 = &v47 - v29;
  __swift_project_boxed_opaque_existential_1(v28, v27);
  sub_21B1F88C0();
  v66 = v30;
  sub_21B20DD08();
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      LOBYTE(v67) = 2;
      sub_21B1F8A10();
      v31 = v47;
      v32 = v64;
      sub_21B20D988();
      v67 = v61;
      v68 = v62;
      sub_21B17DBE4();
      v33 = v49;
      sub_21B20DA48();
      v34 = v48;
    }

    else if (v26 == 3)
    {
      LOBYTE(v67) = 3;
      sub_21B1F89BC();
      v31 = v50;
      v32 = v64;
      sub_21B20D988();
      v33 = v52;
      sub_21B20D9E8();
      v34 = v51;
    }

    else
    {
      LOBYTE(v67) = 4;
      sub_21B1F8914();
      v31 = v53;
      v32 = v64;
      sub_21B20D988();
      v67 = v61;
      v68 = v62;
      sub_21B1F8968();
      v33 = v55;
      sub_21B20DA48();
      v34 = v54;
    }

    (*(v34 + 8))(v31, v33);
    v43 = v66;
    v42 = *(v65 + 8);
    return v42(v43, v32);
  }

  v53 = v25;
  v54 = v24;
  v35 = v57;
  v36 = v58;
  v55 = v23;
  v37 = v56;
  v39 = v59;
  v38 = v60;
  if (!v26)
  {
    LOBYTE(v67) = 0;
    sub_21B1F8AB8();
    v40 = v18;
    v32 = v64;
    v41 = v66;
    sub_21B20D988();
    v67 = v61;
    v68 = v62;
    sub_21B17DBE4();
    sub_21B20DA48();
    (*(v37 + 8))(v40, v35);
    v42 = *(v65 + 8);
    v43 = v41;
    return v42(v43, v32);
  }

  LOBYTE(v67) = 1;
  sub_21B1F8A64();
  v45 = v64;
  sub_21B20D988();
  v67 = v61;
  v68 = v62;
  v70 = 0;
  sub_21B17DBE4();
  v46 = v63;
  sub_21B20DA48();
  if (!v46)
  {
    v67 = v55;
    v68 = v54;
    v69 = v53;
    v70 = 1;
    sub_21B191448();
    sub_21B20DA48();
  }

  (*(v38 + 8))(v36, v39);
  return (*(v65 + 8))(v66, v45);
}

unint64_t sub_21B1F88C0()
{
  result = qword_27CD6FF88;
  if (!qword_27CD6FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF88);
  }

  return result;
}

unint64_t sub_21B1F8914()
{
  result = qword_27CD6FF90;
  if (!qword_27CD6FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF90);
  }

  return result;
}

unint64_t sub_21B1F8968()
{
  result = qword_27CD6FF98;
  if (!qword_27CD6FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FF98);
  }

  return result;
}

unint64_t sub_21B1F89BC()
{
  result = qword_27CD6FFA0;
  if (!qword_27CD6FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FFA0);
  }

  return result;
}

unint64_t sub_21B1F8A10()
{
  result = qword_27CD6FFA8;
  if (!qword_27CD6FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FFA8);
  }

  return result;
}

unint64_t sub_21B1F8A64()
{
  result = qword_27CD6FFB0;
  if (!qword_27CD6FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FFB0);
  }

  return result;
}

unint64_t sub_21B1F8AB8()
{
  result = qword_27CD6FFB8;
  if (!qword_27CD6FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FFB8);
  }

  return result;
}

uint64_t BlockExecutionLog.LogContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFC0, &qword_21B2181E8);
  v67 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v3);
  v71 = &v58 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFC8, &qword_21B2181F0);
  v66 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v5);
  v68 = &v58 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFD0, &qword_21B2181F8);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v7);
  v70 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFD8, &qword_21B218200);
  v10 = *(v9 - 8);
  v64 = v9;
  v65 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFE0, &qword_21B218208);
  v59 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFE8, &qword_21B218210);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v58 - v21;
  v23 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_21B1F88C0();
  v24 = v73;
  sub_21B20DCD8();
  if (!v24)
  {
    v25 = v17;
    v73 = v14;
    v26 = v70;
    v27 = v71;
    v28 = sub_21B20D968();
    v29 = (2 * *(v28 + 16)) | 1;
    v78 = v28;
    v79 = v28 + 32;
    v80 = 0;
    v81 = v29;
    v30 = sub_21B1E6564();
    if (v30 != 5 && v80 == v81 >> 1)
    {
      v82 = v30;
      if (v30 <= 1u)
      {
        if (v30)
        {
          LOBYTE(v74) = 1;
          sub_21B1F8A64();
          v48 = v13;
          sub_21B20D838();
          LOBYTE(v74) = 0;
          sub_21B17DCC8();
          v49 = v64;
          sub_21B20D918();
          v56 = v22;
          v57 = v18;
          v35 = v76;
          v54 = v77;
          v83 = 1;
          sub_21B191538();
          sub_21B20D918();
          (*(v65 + 8))(v48, v49);
          (*(v19 + 8))(v56, v57);
          swift_unknownObjectRelease();
          v55 = v74;
          v51 = v75;
LABEL_18:
          v52 = v72;
          v45 = v69;
          goto LABEL_19;
        }

        LOBYTE(v74) = 0;
        sub_21B1F8AB8();
        v42 = v25;
        sub_21B20D838();
        sub_21B17DCC8();
        v43 = v73;
        sub_21B20D918();
        (*(v59 + 8))(v42, v43);
        (*(v19 + 8))(v22, v18);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v30 == 2)
        {
          LOBYTE(v74) = 2;
          sub_21B1F8A10();
          v44 = v26;
          sub_21B20D838();
          v45 = v69;
          sub_21B17DCC8();
          v46 = v62;
          sub_21B20D918();
          (*(v61 + 8))(v44, v46);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v55 = 0;
          v35 = v74;
          v54 = v75;
          v51 = 0uLL;
          v52 = v72;
LABEL_19:
          *v45 = v35;
          *(v45 + 8) = v54;
          *(v45 + 16) = v55;
          *(v45 + 24) = v51;
          *(v45 + 40) = v82;
          return __swift_destroy_boxed_opaque_existential_1(v52);
        }

        if (v30 == 3)
        {
          LOBYTE(v74) = 3;
          sub_21B1F89BC();
          v31 = v68;
          sub_21B20D838();
          v32 = v22;
          v33 = v18;
          v34 = v60;
          v35 = sub_21B20D8C8();
          v36 = v31;
          v54 = v53;
          (*(v66 + 8))(v36, v34);
          (*(v19 + 8))(v32, v33);
          swift_unknownObjectRelease();
          v55 = 0;
LABEL_17:
          v51 = 0uLL;
          goto LABEL_18;
        }

        LOBYTE(v74) = 4;
        sub_21B1F8914();
        sub_21B20D838();
        sub_21B1F94DC();
        v47 = v63;
        sub_21B20D918();
        (*(v67 + 8))(v27, v47);
        (*(v19 + 8))(v22, v18);
        swift_unknownObjectRelease();
      }

      v55 = 0;
      v35 = v74;
      v54 = v75;
      goto LABEL_17;
    }

    v37 = v22;
    v38 = sub_21B20D6E8();
    swift_allocError();
    v39 = v18;
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA58, &qword_21B2173D0);
    *v41 = &type metadata for BlockExecutionLog.LogContent;
    sub_21B20D848();
    sub_21B20D6D8();
    (*(*(v38 - 8) + 104))(v41, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v19 + 8))(v37, v39);
    swift_unknownObjectRelease();
  }

  v52 = v72;
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

unint64_t sub_21B1F94DC()
{
  result = qword_27CD6FFF0;
  if (!qword_27CD6FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FFF0);
  }

  return result;
}

uint64_t BlockExecutionLog.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
}

void BlockExecutionLog.content.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 72);
  *(a1 + 40) = v7;
  sub_21B1F95A0(v2, v3, v4, v5, v6, v7);
}

void sub_21B1F95A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    sub_21B1F95B4(a1, a2, a3, a4, a5, a6);
  }
}

void sub_21B1F95B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 != 2)
    {
      if (a6 == 3 || a6 == 4)
      {

LABEL_7:

        return;
      }

      return;
    }

LABEL_13:

    sub_21B17CEA8(a1, a2);
    return;
  }

  if (!a6)
  {
    goto LABEL_13;
  }

  if (a6 == 1)
  {
    sub_21B17CEA8(a1, a2);

    goto LABEL_7;
  }
}

double sub_21B1F9658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 == 2)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v23 = *(a1 + 32);
    v24 = v8;
    v25 = v9;
    v26 = v6;
    v27 = v7;
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    v12 = *(a1 + 96);
    v13 = *(a1 + 104);
    v19[0] = *(a1 + 72);
    v19[1] = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;

    sub_21B17CE94(v6, v7);

    sub_21B17CE94(v12, v13);
    sub_21B1F9A5C(&v23, v19, &v28);

    sub_21B17DAE4(v12, v13);
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v23 = *(a1 + 32);
    v24 = v4;
    v25 = v5;
    v26 = v6;
    v27 = v7;

    sub_21B17CE94(v6, v7);
    sub_21B1F983C(&v23, &v28);
LABEL_7:

    sub_21B17DAE4(v6, v7);
    goto LABEL_10;
  }

  if (v3)
  {
    sub_21B20D6A8();

    *&v28 = 0xD000000000000023;
    *(&v28 + 1) = 0x800000021B210730;
    v23 = v3;
    v14 = sub_21B20DAB8();
    MEMORY[0x21CEEBBB0](v14);
  }

  else
  {
    *&v28 = 0xD000000000000017;
    *(&v28 + 1) = 0x800000021B210760;
  }

  v30 = 0;
  v29 = 0uLL;
  v31 = 4;
LABEL_10:
  v15 = v30;
  v16 = v31;
  result = *&v28;
  v18 = v29;
  *a2 = v28;
  *(a2 + 16) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

void sub_21B1F983C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B20D348();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      if (v7 >> 60 != 15)
      {
        v10 = *(a1 + 24);
        v11 = *(a1 + 32);
        sub_21B17CEA8(v6, v7);
        sub_21B20D338();
        sub_21B1FBDF4();
        v12 = sub_21B20D328();
        v14 = v13;
        sub_21B17DAE4(v10, v11);
        if (v14)
        {
          *a2 = v12;
          *(a2 + 8) = v14;
        }

        else
        {
          *a2 = 0xD000000000000020;
          *(a2 + 8) = 0x800000021B2107A0;
        }

        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 16) = 0;
        goto LABEL_12;
      }

      v8 = 0x800000021B210780;
      v9 = 0xD00000000000001DLL;
LABEL_11:
      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
LABEL_12:
      *(a2 + 40) = 4;
      return;
    }

    if (v7 >> 60 == 15)
    {
      v8 = 0x800000021B2107D0;
      v9 = 0xD000000000000016;
      goto LABEL_11;
    }

    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 2;
  }

  else
  {
    if (*(a1 + 16))
    {
      v8 = 0x800000021B2107F0;
      v9 = 0xD000000000000017;
      goto LABEL_11;
    }

    if (v7 >> 60 == 15)
    {
      v8 = 0x800000021B210810;
      v9 = 0xD000000000000014;
      goto LABEL_11;
    }

    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
  }

  sub_21B17CEA8(v6, v7);
}

uint64_t sub_21B1F9A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v16 = *(a1 + 32);
  v17 = *(a1 + 24);
  v5 = *(a2 + 16);
  v19 = *(a2 + 24);
  v18 = *(a2 + 32);
  if (v4 > 1 || *(a1 + 16))
  {
    v6 = sub_21B20DB28();

    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (v5 <= 1)
  {
    v8 = v16;
    v7 = v17;
    v9 = v18;
    v10 = v19;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v11 = sub_21B20DB28();

  v8 = v16;
  v7 = v17;
  v9 = v18;
  v10 = v19;
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if (v5)
    {
      v12 = sub_21B20DB28();

      if ((v12 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (v4 <= 1)
    {
      v8 = v18;
      v7 = v19;
      v9 = v16;
      v10 = v17;
      if (v4)
      {
LABEL_13:

        goto LABEL_15;
      }
    }

    v14 = sub_21B20DB28();

    v8 = v18;
    v7 = v19;
    v9 = v16;
    v10 = v17;
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_18:
    *a3 = 0xD000000000000017;
    *(a3 + 8) = 0x800000021B2107F0;
LABEL_20:
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
    v15 = 4;
    goto LABEL_21;
  }

LABEL_15:
  if (v8 >> 60 == 15 || v9 >> 60 == 15)
  {

    sub_21B17CE94(v17, v16);

    sub_21B17CE94(v19, v18);

    sub_21B17DAE4(v10, v9);

    result = sub_21B17DAE4(v7, v8);
    *a3 = 0xD00000000000001CLL;
    *(a3 + 8) = 0x800000021B210830;
    goto LABEL_20;
  }

  sub_21B20C338();
  swift_allocObject();

  sub_21B17CE94(v17, v16);

  sub_21B17CE94(v19, v18);
  sub_21B17CE94(v7, v8);
  sub_21B17CE94(v10, v9);
  sub_21B20C328();
  sub_21B191538();
  sub_21B20C308();
  sub_21B17DAE4(v7, v8);

  sub_21B17DAE4(v10, v9);

  sub_21B17DAE4(v7, v8);

  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = v20;
  *(a3 + 24) = v21;
  v15 = 1;
LABEL_21:
  *(a3 + 40) = v15;
  return result;
}

uint64_t sub_21B1F9EF4()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6E6F436172747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_21B1F9F58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21B1FBCD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B1F9F80(uint64_t a1)
{
  v2 = sub_21B1FA2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1F9FBC(uint64_t a1)
{
  v2 = sub_21B1FA2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockExecutionLog.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FFF8, &qword_21B218218);
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v24 = *(v1 + 40);
  v25 = v9;
  v10 = *(v1 + 48);
  v22 = *(v1 + 56);
  v23 = v10;
  v11 = *(v1 + 64);
  v34 = *(v1 + 72);
  v20 = *(v1 + 80);
  v21 = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_21B1FA2B8();

  sub_21B20DD08();
  v28 = v5;
  LOBYTE(v29) = v6;
  v30 = v7;
  v31 = v8;
  v35 = 0;
  sub_21B1F4230();
  v16 = v26;
  sub_21B20DA48();

  if (v16)
  {
    return (*(v27 + 8))(v15, v3);
  }

  v18 = v20;
  v19 = v27;
  v28 = v25;
  v29 = v24;
  v30 = v23;
  v31 = v22;
  v32 = v21;
  v33 = v34;
  v35 = 1;
  sub_21B1F95A0(v25, v24, v23, v22, v21, v34);
  sub_21B1FA30C();
  sub_21B20D9D8();
  sub_21B1FA360(v28, v29, v30, v31, v32, v33);
  v28 = v18;
  v35 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70010, &qword_21B218220);
  sub_21B1FA914(&qword_27CD70018, sub_21B1FA30C, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_21B20DA48();
  return (*(v19 + 8))(v15, v3);
}

unint64_t sub_21B1FA2B8()
{
  result = qword_27CD70000;
  if (!qword_27CD70000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70000);
  }

  return result;
}

unint64_t sub_21B1FA30C()
{
  result = qword_27CD70008;
  if (!qword_27CD70008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70008);
  }

  return result;
}

uint64_t sub_21B1FA360(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_21B1FA374(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_21B1FA374(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 != 2)
    {
      if (a6 == 3 || a6 == 4)
      {
      }

      return result;
    }

LABEL_13:

    return sub_21B17DAF8(result, a2);
  }

  if (!a6)
  {
    goto LABEL_13;
  }

  if (a6 == 1)
  {
    sub_21B17DAF8(result, a2);
  }

  return result;
}

uint64_t BlockExecutionLog.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70020, &qword_21B218228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1FA2B8();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29) = 0;
  sub_21B1FA86C();
  sub_21B20D918();
  v27 = v35;
  v26 = v36;
  v28 = *(&v37 + 1);
  v10 = v37;
  LOBYTE(v29) = 1;
  sub_21B1FA8C0();
  sub_21B20D8B8();
  v21 = v10;
  v11 = v35;
  v24 = v36;
  v25 = v37;
  v22 = v38;
  v23 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70010, &qword_21B218220);
  v44 = 2;
  sub_21B1FA914(&qword_27CD70038, sub_21B1FA8C0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_21B20D918();
  (*(v6 + 8))(v9, v5);
  v12 = v45;
  v13 = v27;
  *&v29 = v27;
  v14 = v26;
  BYTE8(v29) = v26;
  v15 = v21;
  *&v30 = v21;
  *(&v30 + 1) = v28;
  *&v31 = v11;
  *(&v31 + 1) = v24;
  v32 = v25;
  v16 = v22;
  *&v33 = v22;
  BYTE8(v33) = v23;
  v34 = v45;
  *(a2 + 80) = v45;
  v17 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v17;
  *(a2 + 64) = v33;
  v18 = v30;
  *a2 = v29;
  *(a2 + 16) = v18;
  sub_21B1FA998(&v29, &v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35 = v13;
  LOBYTE(v36) = v14;
  *&v37 = v15;
  *(&v37 + 1) = v28;
  v38 = v11;
  v39 = v24;
  v40 = v25;
  v41 = v16;
  v42 = v23;
  v43 = v12;
  return sub_21B1F6F18(&v35);
}

unint64_t sub_21B1FA86C()
{
  result = qword_27CD70028;
  if (!qword_27CD70028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70028);
  }

  return result;
}

unint64_t sub_21B1FA8C0()
{
  result = qword_27CD70030;
  if (!qword_27CD70030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70030);
  }

  return result;
}

uint64_t sub_21B1FA914(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD70010, &qword_21B218220);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B1FA9D4()
{
  result = qword_27CD70040;
  if (!qword_27CD70040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70040);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks17BlockExecutionLogV0E7ContentOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B1FAA94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B1FAADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B1FAB64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B1FABAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_21B1FACA8()
{
  result = qword_27CD70048;
  if (!qword_27CD70048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70048);
  }

  return result;
}

unint64_t sub_21B1FAD00()
{
  result = qword_27CD70050;
  if (!qword_27CD70050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70050);
  }

  return result;
}

unint64_t sub_21B1FAD58()
{
  result = qword_27CD70058;
  if (!qword_27CD70058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70058);
  }

  return result;
}

unint64_t sub_21B1FADB0()
{
  result = qword_27CD70060;
  if (!qword_27CD70060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70060);
  }

  return result;
}

unint64_t sub_21B1FAE08()
{
  result = qword_27CD70068;
  if (!qword_27CD70068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70068);
  }

  return result;
}

unint64_t sub_21B1FAE60()
{
  result = qword_27CD70070;
  if (!qword_27CD70070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70070);
  }

  return result;
}

unint64_t sub_21B1FAEB8()
{
  result = qword_27CD70078;
  if (!qword_27CD70078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70078);
  }

  return result;
}

unint64_t sub_21B1FAF10()
{
  result = qword_27CD70080;
  if (!qword_27CD70080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70080);
  }

  return result;
}

unint64_t sub_21B1FAF68()
{
  result = qword_27CD70088;
  if (!qword_27CD70088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70088);
  }

  return result;
}

unint64_t sub_21B1FAFC0()
{
  result = qword_27CD70090;
  if (!qword_27CD70090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70090);
  }

  return result;
}

unint64_t sub_21B1FB018()
{
  result = qword_27CD70098;
  if (!qword_27CD70098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70098);
  }

  return result;
}

unint64_t sub_21B1FB070()
{
  result = qword_27CD700A0;
  if (!qword_27CD700A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700A0);
  }

  return result;
}

unint64_t sub_21B1FB0C8()
{
  result = qword_27CD700A8;
  if (!qword_27CD700A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700A8);
  }

  return result;
}

unint64_t sub_21B1FB120()
{
  result = qword_27CD700B0;
  if (!qword_27CD700B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700B0);
  }

  return result;
}

unint64_t sub_21B1FB178()
{
  result = qword_27CD700B8;
  if (!qword_27CD700B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700B8);
  }

  return result;
}

unint64_t sub_21B1FB1D0()
{
  result = qword_27CD700C0;
  if (!qword_27CD700C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700C0);
  }

  return result;
}

unint64_t sub_21B1FB228()
{
  result = qword_27CD700C8;
  if (!qword_27CD700C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700C8);
  }

  return result;
}

unint64_t sub_21B1FB280()
{
  result = qword_27CD700D0;
  if (!qword_27CD700D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700D0);
  }

  return result;
}

unint64_t sub_21B1FB2D8()
{
  result = qword_27CD700D8;
  if (!qword_27CD700D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700D8);
  }

  return result;
}

unint64_t sub_21B1FB330()
{
  result = qword_27CD700E0;
  if (!qword_27CD700E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700E0);
  }

  return result;
}

unint64_t sub_21B1FB388()
{
  result = qword_27CD700E8;
  if (!qword_27CD700E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700E8);
  }

  return result;
}

unint64_t sub_21B1FB3E0()
{
  result = qword_27CD700F0;
  if (!qword_27CD700F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700F0);
  }

  return result;
}

unint64_t sub_21B1FB438()
{
  result = qword_27CD700F8;
  if (!qword_27CD700F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD700F8);
  }

  return result;
}

unint64_t sub_21B1FB490()
{
  result = qword_27CD70100;
  if (!qword_27CD70100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70100);
  }

  return result;
}

unint64_t sub_21B1FB4E8()
{
  result = qword_27CD70108;
  if (!qword_27CD70108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70108);
  }

  return result;
}

unint64_t sub_21B1FB540()
{
  result = qword_27CD70110;
  if (!qword_27CD70110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70110);
  }

  return result;
}

unint64_t sub_21B1FB598()
{
  result = qword_27CD70118;
  if (!qword_27CD70118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70118);
  }

  return result;
}

void *sub_21B1FB5EC(uint64_t a1)
{
  v2 = sub_21B19796C(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 64);
  while (1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 3);
    v32 = *(v4 - 16);
    v7 = *(v4 - 1);
    v8 = *v4;

    sub_21B17CE94(v7, v8);

    sub_21B17CE94(v7, v8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_21B1B9778(v5, v6);
    v12 = v2[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v2[3] >= v14)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v3;
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_21B203F64();
        v31 = v3;
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_21B201D08(v14, isUniquelyReferenced_nonNull_native);
      v16 = sub_21B1B9778(v5, v6);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_22;
      }

      v11 = v16;
      v31 = v3;
      if (v15)
      {
LABEL_10:

        goto LABEL_14;
      }
    }

    v2[(v11 >> 6) + 8] |= 1 << v11;
    v18 = (v2[6] + 16 * v11);
    *v18 = v5;
    v18[1] = v6;
    *(v2[7] + 8 * v11) = MEMORY[0x277D84F90];
    v19 = v2[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v2[2] = v21;
LABEL_14:
    v22 = v2[7];
    v23 = *(v22 + 8 * v11);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + 8 * v11) = v23;
    v30 = v5;
    if ((v24 & 1) == 0)
    {
      v23 = sub_21B1D2A60(0, *(v23 + 2) + 1, 1, v23);
      *(v22 + 8 * v11) = v23;
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      *(v22 + 8 * v11) = sub_21B1D2A60((v25 > 1), v26 + 1, 1, v23);
    }

    v4 += 5;

    sub_21B17DAE4(v7, v8);
    v27 = *(v22 + 8 * v11);
    *(v27 + 16) = v26 + 1;
    v28 = v27 + 40 * v26;
    *(v28 + 32) = v30;
    *(v28 + 40) = v6;
    *(v28 + 48) = v32;
    *(v28 + 56) = v7;
    *(v28 + 64) = v8;
    v3 = v31 - 1;
    if (v31 == 1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1FB858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v24 >= v11)
    {

      return v44;
    }

    v10 = *(v7 + 8 * v24);
    ++v13;
  }

  while (!v10);
  v13 = v24;
  while (1)
  {
LABEL_11:
    while (1)
    {
      v25 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v26 = v25 | (v13 << 6);
      v27 = (*(a1 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(*(a1 + 56) + 8 * v26);
      if (!v30[2])
      {
        break;
      }

      v31 = v30[4] == a4 && v30[5] == a5;
      if (!v31 && (sub_21B20DB28() & 1) == 0)
      {
        break;
      }

      sub_21B1F9658(v14, v48);
      v15 = v49;
      v16 = v50;
      v17 = *a6;
      v18 = *(a6 + 8);
      v19 = *(a6 + 16);
      v20 = *(a6 + 24);
      v21 = *(a6 + 32);
      v22 = v48[1];
      *a6 = v48[0];
      *(a6 + 16) = v22;
      *(a6 + 32) = v15;
      v23 = *(a6 + 40);
      *(a6 + 40) = v16;
      sub_21B1FA360(v17, v18, v19, v20, v21, v23);

      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v32 = *(v44 + 16);
    if (*(v44 + 24) <= v32)
    {

      sub_21B201D08(v32 + 1, 1);
      v33 = v51;
    }

    else
    {

      v33 = v44;
    }

    v44 = v33;
    sub_21B20DC88();
    sub_21B20D388();
    result = sub_21B20DCA8();
    v34 = v44 + 64;
    v35 = -1 << *(v44 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v44 + 64 + 8 * (v36 >> 6))) == 0)
    {
      break;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v44 + 64 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v44 + 48) + 16 * v38);
    *v43 = v28;
    v43[1] = v29;
    *(*(v44 + 56) + 8 * v38) = v30;
    ++*(v44 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v39 = 0;
  v40 = (63 - v35) >> 6;
  while (++v37 != v40 || (v39 & 1) == 0)
  {
    v41 = v37 == v40;
    if (v37 == v40)
    {
      v37 = 0;
    }

    v39 |= v41;
    v42 = *(v34 + 8 * v37);
    if (v42 != -1)
    {
      v38 = __clz(__rbit64(~v42)) + (v37 << 6);
      goto LABEL_30;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21B1FBB30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852797802 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7762787 && a2 == 0xE300000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616E6962 && a2 == 0xE600000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_21B1FBCD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F436172747865 && a2 == 0xEC000000746E6574)
  {

    return 2;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21B1FBDF4()
{
  result = qword_27CD70128;
  if (!qword_27CD70128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70128);
  }

  return result;
}

uint64_t sub_21B1FBE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B20D348();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v37[1] = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B20C368();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v39 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *v3;
  v43 = *(v3 + 8);
  v13 = *(v3 + 24);
  v42 = *(v3 + 16);
  v38 = *(v3 + 32);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v15 = swift_allocObject();
  v48 = xmmword_21B2110C0;
  *(v15 + 16) = xmmword_21B2110C0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 32) = 0xD000000000000022;
  *(v15 + 40) = 0x800000021B2105B0;

  sub_21B20DC58();

  v37[0] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v48;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 32) = 0xD00000000000001BLL;
  *(v16 + 40) = 0x800000021B2105E0;
  v46 = a1;
  v47 = a2;
  v53 = a3;
  sub_21B20DC58();

  sub_21B20C3A8();
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21B211420;
  sub_21B20C358();
  sub_21B20C348();
  v49 = v17;
  sub_21B1F3910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  v49 = v44;
  v50 = v43;
  v51 = v42;
  v52 = v13;
  sub_21B1F4230();
  v18 = v45;
  v19 = sub_21B20C388();
  if (v18)
  {

    return sub_21B1FC3D0();
  }

  v21 = v19;
  v22 = v46;
  v23 = v47;
  v24 = v20;

  sub_21B20D338();
  v45 = v24;
  v25 = sub_21B20D318();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v29 = swift_allocObject();
    *(v29 + 16) = v48;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 32) = v27;
    *(v29 + 40) = v28;
    v30 = v22;
    v31 = v53;
    sub_21B20DC58();

    v32 = swift_allocObject();
    *(v32 + 16) = v48;
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 32) = 0xD000000000000019;
    *(v32 + 40) = 0x800000021B210650;
    sub_21B20DC58();

    MEMORY[0x28223BE20](v33, v34);
    v37[-4] = v23;
    v37[-3] = v31;
    v36 = v30;
    sub_21B1F257C(sub_21B1FC8F4, &v37[-6], v38);
    sub_21B17DAF8(v21, v45);

    return sub_21B1FC3D0();
  }

  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t sub_21B1FC3D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21B2110C0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000020;
  *(v0 + 40) = 0x800000021B210600;
  sub_21B20DC58();
}

uint64_t sub_21B1FC48C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21B20D348();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = a1[1];
  v37 = *a1;
  v38 = v11;
  v39 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v12 = swift_allocObject();
  v32 = xmmword_21B2110C0;
  *(v12 + 16) = xmmword_21B2110C0;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD000000000000011, 0x800000021B210590);
  MEMORY[0x21CEEBBB0](v37, *(&v37 + 1));
  MEMORY[0x21CEEBBB0](0x70797420666F2022, 0xEB00000000203A65);
  v13 = v38;
  LOBYTE(v33) = v38;
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](2763296, 0xE300000000000000);
  v14 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xE000000000000000;
  sub_21B20DC58();

  v15 = v39;
  if (v39 >> 60 == 15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v32;
    *(v16 + 56) = v14;
    *(v16 + 32) = 0x3E4C4C554E3CLL;
    *(v16 + 40) = 0xE600000000000000;
    sub_21B20DC58();

    return sub_21B1FC914(&v37);
  }

  v40 = v4;
  v17 = *(&v38 + 1);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      sub_21B17CEA8(*(&v38 + 1), v39);
      v23 = sub_21B20C6A8();
      v25 = v14;
      goto LABEL_10;
    }

LABEL_9:
    v25 = v14;
    sub_21B17CEA8(*(&v38 + 1), v39);
    sub_21B20D338();
    v23 = sub_21B20D318();
    if (!v24)
    {
      v31 = 0;
      goto LABEL_14;
    }

LABEL_10:
    v26 = v23;
    v27 = v24;
    v28 = swift_allocObject();
    *(v28 + 16) = v32;
    *(v28 + 56) = v25;
    *(v28 + 32) = v26;
    *(v28 + 40) = v27;
    sub_21B20DC58();
    sub_21B17DAE4(v17, v15);

    return sub_21B1FC914(&v37);
  }

  if (!v13)
  {
    goto LABEL_9;
  }

  sub_21B17CEA8(*(&v38 + 1), v39);
  sub_21B20D338();
  v18 = sub_21B20D318();
  if (v19)
  {
    v35 = v18;
    v36 = v19;
    v33 = 10;
    v34 = 0xE100000000000000;
    sub_21B17FBB0();
    v20 = sub_21B20D608();

    MEMORY[0x28223BE20](v21, v22);
    *(&v32 - 4) = a3;
    *(&v32 - 3) = a4;
    v30 = a2;
    sub_21B1F2640(sub_21B1FCB3C, (&v32 - 3), v20);
    sub_21B17DAE4(v17, v15);

    return sub_21B1FC914(&v37);
  }

  v31 = 0;
LABEL_14:
  result = sub_21B20D7C8();
  __break(1u);
  return result;
}

uint64_t sub_21B1FC914(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21B2110C0;
  BYTE8(v4) = 0;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0x203A444E45202A2ALL, 0xEF22207972746E45);
  MEMORY[0x21CEEBBB0](*a1, *(a1 + 8));
  MEMORY[0x21CEEBBB0](0x70797420666F2022, 0xEB00000000203A65);
  *&v4 = *(a1 + 16);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](2763296, 0xE300000000000000);
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = *(&v4 + 1);
  *(v2 + 40) = 0xE000000000000000;
  sub_21B20DC58();
}

uint64_t sub_21B1FCA7C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F950, &qword_21B216208);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21B2110C0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  sub_21B20DC58();
}

uint64_t BlockLogMetadata.blockName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21B1FCBB0()
{
  v1 = 0x7079546B636F6C62;
  if (*v0 != 1)
  {
    v1 = 0x6D614E6B636F6C62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6575716573;
  }
}

uint64_t sub_21B1FCC18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21B1FD2A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B1FCC40(uint64_t a1)
{
  v2 = sub_21B1FCE7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1FCC7C(uint64_t a1)
{
  v2 = sub_21B1FCE7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlockLogMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70130, "v^");
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v12 = *(v1 + 8);
  v9 = *(v1 + 16);
  v11[0] = *(v1 + 24);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1FCE7C();
  sub_21B20DD08();
  v16 = 0;
  sub_21B20DA28();
  if (!v2)
  {
    v15 = v12;
    v14 = 1;
    sub_21B1AEA74();
    sub_21B20DA48();
    v13 = 2;
    sub_21B20D9E8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_21B1FCE7C()
{
  result = qword_27CD70138;
  if (!qword_27CD70138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70138);
  }

  return result;
}

uint64_t BlockLogMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70140, &qword_21B2192D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1FCE7C();
  sub_21B20DCD8();
  if (!v2)
  {
    v20 = 0;
    v10 = sub_21B20D908();
    v18 = 1;
    sub_21B1ADA94();
    sub_21B20D918();
    v16 = v19;
    v17 = 2;
    v12 = sub_21B20D8C8();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    *(a2 + 8) = v16;
    *(a2 + 16) = v12;
    *(a2 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21B1FD0F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B1FD13C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_21B1FD1A0()
{
  result = qword_27CD70148;
  if (!qword_27CD70148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70148);
  }

  return result;
}

unint64_t sub_21B1FD1F8()
{
  result = qword_27CD70150;
  if (!qword_27CD70150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70150);
  }

  return result;
}

unint64_t sub_21B1FD250()
{
  result = qword_27CD70158;
  if (!qword_27CD70158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70158);
  }

  return result;
}

uint64_t sub_21B1FD2A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000006449;
  if (v4 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079546B636F6C62 && a2 == 0xE900000000000065 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6B636F6C62 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t LogEntry.init(name:type:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

PoirotBlocks::LogEntry::EntryType_optional __swiftcall LogEntry.EntryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21B20D828();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LogEntry.EntryType.rawValue.getter()
{
  v1 = 1852797802;
  v2 = 0x7972616E6962;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (*v0)
  {
    v1 = 7762787;
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

uint64_t sub_21B1FD4B4()
{
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1FD560(uint64_t a1)
{
  sub_21B20D388();
}

uint64_t sub_21B1FD5F8(uint64_t a1)
{
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

void sub_21B1FD6AC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1852797802;
  v4 = 0xE600000000000000;
  v5 = 0x7972616E6962;
  if (*v1 != 2)
  {
    v5 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 7762787;
    v2 = 0xE300000000000000;
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

uint64_t LogEntry.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LogEntry.data.getter()
{
  v1 = *(v0 + 24);
  sub_21B17CE94(v1, *(v0 + 32));
  return v1;
}

uint64_t LogEntry.init(useCase:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21B20D348();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = 0xE000000000000000;
  swift_getErrorValue();
  sub_21B20DB08();
  sub_21B20D338();
  v13 = sub_21B20D308();
  v15 = v14;

  result = (*(v9 + 8))(v12, v8);
  if (v15 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  v18 = 0xC000000000000000;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 3;
  if (v15 >> 60 != 15)
  {
    v18 = v15;
  }

  *(a4 + 24) = v17;
  *(a4 + 32) = v18;
  return result;
}

uint64_t sub_21B1FD950@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21B1FDE58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21B1FD978(uint64_t a1)
{
  v2 = sub_21B1FDBE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1FD9B4(uint64_t a1)
{
  v2 = sub_21B1FDBE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogEntry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70160, &qword_21B219488);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - v6;
  v19 = *(v1 + 16);
  v8 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1FDBE0();
  sub_21B20DD08();
  LOBYTE(v17) = 0;
  v9 = v16;
  sub_21B20D9E8();
  if (!v9)
  {
    v11 = v14;
    v10 = v15;
    LOBYTE(v17) = v19;
    v20 = 1;
    sub_21B1FDC34();
    sub_21B20DA48();
    v17 = v10;
    v18 = v11;
    v20 = 2;
    sub_21B17CE94(v10, v11);
    sub_21B17DBE4();
    sub_21B20D9D8();
    sub_21B17DAE4(v17, v18);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21B1FDBE0()
{
  result = qword_27CD70168;
  if (!qword_27CD70168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70168);
  }

  return result;
}

unint64_t sub_21B1FDC34()
{
  result = qword_27CD70170;
  if (!qword_27CD70170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70170);
  }

  return result;
}

unint64_t sub_21B1FDC8C()
{
  result = qword_27CD70178;
  if (!qword_27CD70178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70178);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_21B1FDD54()
{
  result = qword_27CD70180;
  if (!qword_27CD70180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70180);
  }

  return result;
}

unint64_t sub_21B1FDDAC()
{
  result = qword_27CD70188;
  if (!qword_27CD70188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70188);
  }

  return result;
}

unint64_t sub_21B1FDE04()
{
  result = qword_27CD70190;
  if (!qword_27CD70190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70190);
  }

  return result;
}

uint64_t sub_21B1FDE58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21B20DB28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21B1FDF70()
{
  result = qword_27CD70198;
  if (!qword_27CD70198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD70198);
  }

  return result;
}

uint64_t sub_21B1FDFC4(uint64_t *a1)
{
  v3 = v1;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 24);
  *(v3 + 24) = 0x8000000000000000;
  v10 = sub_21B1B9778(v5, v4);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v9;
  if (v8[3] >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v3 + 24) = v8;
      if (v9)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_21B204F60(v10, v5, v4, MEMORY[0x277D84F90], v8);
      goto LABEL_12;
    }

LABEL_10:
    sub_21B2037B8();
    *(v3 + 24) = v8;
    if (v2)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_21B200DC4(v13, isUniquelyReferenced_nonNull_native);
  v14 = sub_21B1B9778(v5, v4);
  if ((v2 & 1) != (v15 & 1))
  {
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

  v10 = v14;
  *(v3 + 24) = v8;
  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:

LABEL_12:
  v16 = v8[7];
  v17 = *(v16 + 8 * v10);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 8 * v10) = v17;
  if ((v18 & 1) == 0)
  {
    v17 = sub_21B1D26D8(0, v17[2] + 1, 1, v17);
    *(v16 + 8 * v10) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_21B1D26D8((v19 > 1), v20 + 1, 1, v17);
    *(v16 + 8 * v10) = v17;
  }

  v17[2] = v20 + 1;
  v17[v20 + 4] = v6;
  return swift_endAccess();
}

uint64_t sub_21B1FE19C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21B2110C0;

  v7 = a3;
  LogEntry.init(useCase:error:)(a1, a2, a3, v6 + 32);
  return v6;
}

uint64_t sub_21B1FE234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_21B1FE268()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FE88, "|o");
  v1 = sub_21B20D268();

  v33 = v1;
  v31 = *(v1 + 16);
  if (!v31)
  {
LABEL_9:

    swift_beginAccess();
    v15 = *(v0 + 16);
    v16 = *(v15 + 16);

    if (!v16)
    {
      v19 = MEMORY[0x277D84F90];
LABEL_29:

      return v19;
    }

    v17 = 0;
    v18 = v15 + 40;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_33;
      }

      v20 = *(v18 - 8);

      v20(&v34, v21);
      if (v32)
      {

        return v19;
      }

      v22 = v34;
      v23 = *(v34 + 16);
      v24 = *(v19 + 2);
      v25 = v24 + v23;
      if (__OFADD__(v24, v23))
      {
        goto LABEL_34;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v25 <= *(v19 + 3) >> 1)
      {
        if (!*(v22 + 16))
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v24 <= v25)
        {
          v26 = v24 + v23;
        }

        else
        {
          v26 = v24;
        }

        result = sub_21B1D2A60(result, v26, 1, v19);
        v19 = result;
        if (!*(v22 + 16))
        {
LABEL_11:

          if (v23)
          {
            goto LABEL_35;
          }

          goto LABEL_12;
        }
      }

      if ((*(v19 + 3) >> 1) - *(v19 + 2) < v23)
      {
        goto LABEL_36;
      }

      swift_arrayInitWithCopy();

      if (v23)
      {
        v27 = *(v19 + 2);
        v28 = __OFADD__(v27, v23);
        v29 = v27 + v23;
        if (v28)
        {
          goto LABEL_37;
        }

        *(v19 + 2) = v29;
      }

LABEL_12:
      ++v17;
      v18 += 16;
      if (v16 == v17)
      {
        goto LABEL_29;
      }
    }
  }

  v3 = 0;
  v4 = (v1 + 48);
  v30 = v0;
  while (v3 < *(v33 + 16))
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = *(v4 - 2);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_21B1FEE30;
    *(v9 + 24) = v8;
    swift_beginAccess();
    v10 = *(v0 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_21B1D292C(0, v10[2] + 1, 1, v10);
      *(v0 + 16) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_21B1D292C((v12 > 1), v13 + 1, 1, v10);
    }

    ++v3;
    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_21B1FEE84;
    v14[5] = v9;
    v0 = v30;
    *(v30 + 16) = v10;
    swift_endAccess();

    v4 += 3;
    if (v31 == v3)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

char *sub_21B1FE624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = sub_21B20CB18();
  v41 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v6);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20CAF8();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B20C368();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v36 = a1;
  v42 = a2;
  sub_21B1FFC78(a2, a3, &v45, a1);
  v15 = v45;
  v16 = v46;
  v17 = v47;
  v49 = v48;
  sub_21B20C3A8();
  swift_allocObject();
  sub_21B20C398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBD0, &unk_21B2197F0);
  v18 = swift_allocObject();
  v35 = xmmword_21B211420;
  *(v18 + 16) = xmmword_21B211420;
  sub_21B20C358();
  sub_21B20C348();
  v45 = v18;
  sub_21B1F3910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBE0, &qword_21B217FE0);
  sub_21B1865AC();
  sub_21B20D638();
  sub_21B20C378();
  v45 = v15;
  v46 = v16;
  v47 = v17;
  sub_21B191448();

  v19 = v44;
  v20 = sub_21B20C388();
  if (v19)
  {
  }

  else
  {
    v34 = v20;
    v44 = v21;
    v22 = v39;
    v23 = v40;
    v24 = v41;

    v45 = v15;
    v46 = v16;
    v47 = v17;
    v48 = v49;
    v25 = v42;

    sub_21B200678(v43);
    v33 = v16;
    sub_21B20CB08();
    v27 = sub_21B20CA78();
    v28 = *(v24 + 8);
    v41 = v29;
    v28(v23, v37);
    (*(v38 + 8))(v43, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB60, &qword_21B2111D0);
    v14 = swift_allocObject();
    *(v14 + 1) = v35;
    v30 = v36;
    *(v14 + 4) = v36;
    *(v14 + 5) = v25;
    v14[48] = 0;
    v31 = v44;
    *(v14 + 7) = v34;
    *(v14 + 8) = v31;
    *(v14 + 9) = v30;
    *(v14 + 10) = v25;
    v14[88] = 1;
    v32 = v41;
    *(v14 + 12) = v27;
    *(v14 + 13) = v32;
  }

  return v14;
}

uint64_t sub_21B1FEB9C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21B1FEC00(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_21B1D292C(0, v6[2] + 1, 1, v6);
    *(v2 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_21B1D292C((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_21B1FEE18;
  v10[5] = v5;
  *(v2 + 16) = v6;
  return swift_endAccess();
}

uint64_t sub_21B1FED08(uint64_t *a1)
{
  v1 = *a1;

  sub_21B1FED88(v1);
}

uint64_t sub_21B1FED88(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v5[0] = *(v2 - 2);
      v5[1] = v4;
      v5[2] = v3;

      sub_21B1FDFC4(v5);

      v2 += 3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_21B1FEE50@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21B1FEE9C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21B20D348();
  result = MEMORY[0x28223BE20](v6 - 8, v7);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v42 = a1[1];
  v43 = v10;
  v11 = *(a1 + 4);
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = a2 + 64;
    v38 = v12 - 1;
    v15 = MEMORY[0x277D84F90];
    v39 = v11;
    v40 = a3;
    do
    {
      v41 = v15;
      v16 = (v14 + 40 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= *(a2 + 16))
        {
          __break(1u);
          return result;
        }

        v18 = *v16;
        if (*(v16 - 16) == 3 && *v16 >> 60 != 15)
        {
          v20 = a2;
          v21 = v14;
          v45 = *(v16 - 1);
          v22 = v45;
          v46 = v18;

          sub_21B17CE94(v22, v18);
          sub_21B17CE94(v22, v18);
          sub_21B20D338();
          sub_21B1FBDF4();
          v23 = sub_21B20D328();
          v25 = v24;
          sub_21B17DAE4(v22, v18);

          v26 = v22;
          v14 = v21;
          a2 = v20;
          result = sub_21B17DAE4(v26, v18);
          if (v25)
          {
            break;
          }
        }

        ++v17;
        v16 += 5;
        if (v12 == v17)
        {
          v11 = v39;
          a3 = v40;
          v15 = v41;
          goto LABEL_20;
        }
      }

      v27 = v41;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B1D3044(0, *(v27 + 16) + 1, 1, v27);
        v27 = result;
      }

      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      v30 = v27;
      if (v29 >= v28 >> 1)
      {
        result = sub_21B1D3044((v28 > 1), v29 + 1, 1, v27);
        v30 = result;
      }

      v13 = v17 + 1;
      *(v30 + 16) = v29 + 1;
      v15 = v30;
      v31 = v30 + 16 * v29;
      *(v31 + 32) = v23;
      *(v31 + 40) = v25;
      v32 = v38 == v17;
      v11 = v39;
      a3 = v40;
    }

    while (!v32);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_20:

  v45 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1C0, &unk_21B214CD0);
  sub_21B1FF9F8();
  v33 = sub_21B20D298();
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    v33 = 0;
    v35 = 0;
  }

  v37 = v42;
  *a3 = v43;
  *(a3 + 16) = v37;
  *(a3 + 32) = v11;
  *(a3 + 40) = v33;
  *(a3 + 48) = v35;
  return result;
}

void RecipeExecutionLog.metadata.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_21B1F3760(v2, v3, v4, v5, v6);
}

uint64_t RecipeExecutionLog.errorString.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_21B1FF1B0()
{
  if (*v0)
  {
    return 0x727453726F727265;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_21B1FF1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_21B20DB28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727453726F727265 && a2 == 0xEB00000000676E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();

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

uint64_t sub_21B1FF2D4(uint64_t a1)
{
  v2 = sub_21B1FF514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1FF310(uint64_t a1)
{
  v2 = sub_21B1FF514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeExecutionLog.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD701A0, &qword_21B219800);
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v3);
  v5 = v16 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v11 = v1[4];
  v10 = v1[5];
  v16[1] = v1[6];
  v16[2] = v10;
  v12 = a1[3];
  v16[3] = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21B1F3760(v6, v7, v8, v9, v11);
  sub_21B1FF514();
  v13 = v17;
  sub_21B20DD08();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v24 = v11;
  v25 = 0;
  sub_21B1F39EC();
  v14 = v18;
  sub_21B20D9D8();
  sub_21B198098(v20, v21, v22, v23, v24);
  if (!v14)
  {
    LOBYTE(v20) = 1;
    sub_21B20D998();
  }

  return (*(v19 + 8))(v5, v13);
}

unint64_t sub_21B1FF514()
{
  result = qword_27CD701A8;
  if (!qword_27CD701A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD701A8);
  }

  return result;
}

uint64_t RecipeExecutionLog.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD701B0, &qword_21B219808);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1FF514();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  sub_21B198044();
  sub_21B20D8B8();
  v10 = v26;
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v25 = v30;
  LOBYTE(v26) = 1;
  v11 = sub_21B20D868();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  *a2 = v10;
  v14 = v10;
  v15 = v22;
  v16 = v23;
  a2[1] = v22;
  a2[2] = v16;
  v18 = v24;
  v17 = v25;
  a2[3] = v24;
  a2[4] = v17;
  a2[5] = v11;
  a2[6] = v13;
  v19 = v14;
  sub_21B1F3760(v14, v15, v16, v18, v17);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_21B198098(v19, v15, v16, v18, v17);
}

uint64_t get_enum_tag_for_layout_string_12PoirotBlocks14RecipeMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21B1FF814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21B1FF870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21B1FF8F4()
{
  result = qword_27CD701B8;
  if (!qword_27CD701B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD701B8);
  }

  return result;
}

unint64_t sub_21B1FF94C()
{
  result = qword_27CD701C0;
  if (!qword_27CD701C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD701C0);
  }

  return result;
}

unint64_t sub_21B1FF9A4()
{
  result = qword_27CD701C8;
  if (!qword_27CD701C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD701C8);
  }

  return result;
}

unint64_t sub_21B1FF9F8()
{
  result = qword_27CD701D0;
  if (!qword_27CD701D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6F1C0, &unk_21B214CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD701D0);
  }

  return result;
}

uint64_t sub_21B1FFA5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B1FFAA4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_21B1FFC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a5();
  v6 = sub_21B20D378();
  fputs((v6 + 32), v5);
}

uint64_t sub_21B1FFC78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  v4 = a2;
  sub_21B1FFF54(a4, a1, a2, &v49);

  v5 = v49;
  v38 = v50;
  v6 = *(v4 + 16);
  if (v6)
  {
    v37 = v49;
    v53 = MEMORY[0x277D84F90];
    sub_21B19014C(0, v6, 0);
    v7 = v53;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF50, &qword_21B212508);
    v9 = 0;
    v42 = v4 + 32;
    v40 = v6;
    v41 = v4;
    while (v9 < *(v4 + 16))
    {
      v43 = v9 + 1;
      v44 = v7;
      v10 = *(v42 + 8 * v9);
      v11 = sub_21B20D7E8();
      v12 = v11;
      v13 = v10 + 64;
      v14 = 1 << *(v10 + 32);
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(v10 + 64);
      v17 = (v14 + 63) >> 6;
      v45 = v11 + 64;
      v47 = v10;

      v18 = 0;
      v46 = v12;
      if (v16)
      {
        while (1)
        {
          v19 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
LABEL_14:
          v22 = v19 | (v18 << 6);
          v23 = (*(v47 + 48) + 16 * v22);
          v24 = v23[1];
          v48 = *v23;
          sub_21B17FB4C(*(v47 + 56) + 40 * v22, &v49);
          v25 = v51;
          v26 = v52;
          __swift_project_boxed_opaque_existential_1(&v49, v51);

          v27 = sub_21B1D0C74(v25, v26);
          v29 = v28;
          result = __swift_destroy_boxed_opaque_existential_1(&v49);
          v12 = v46;
          *(v45 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
          v30 = (v46[6] + 16 * v22);
          *v30 = v48;
          v30[1] = v24;
          v31 = (v46[7] + 16 * v22);
          *v31 = v27;
          v31[1] = v29;
          v32 = v46[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            break;
          }

          v46[2] = v34;
          if (!v16)
          {
            goto LABEL_9;
          }
        }

LABEL_24:
        __break(1u);
        break;
      }

LABEL_9:
      v20 = v18;
      while (1)
      {
        v18 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_24;
        }

        if (v18 >= v17)
        {
          break;
        }

        v21 = *(v13 + 8 * v18);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      v7 = v44;
      v53 = v44;
      v36 = *(v44 + 16);
      v35 = *(v44 + 24);
      if (v36 >= v35 >> 1)
      {
        result = sub_21B19014C((v35 > 1), v36 + 1, 1);
        v7 = v53;
      }

      *(v7 + 16) = v36 + 1;
      *(v7 + 8 * v36 + 32) = v12;
      v9 = v43;
      v4 = v41;
      if (v43 == v40)
      {

        v5 = v37;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_22:
    *a3 = v5;
    *(a3 + 8) = v38;
    *(a3 + 24) = v7;
  }

  return result;
}

uint64_t sub_21B1FFF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a1;
  v77 = a4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF28, &qword_21B2124D8);
  v72 = *(v75 - 8);
  v7 = MEMORY[0x28223BE20](v75, v6);
  v74 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v81 = &v71 - v10;
  v88 = type metadata accessor for DatasetColumnDescription(0);
  v91 = *(v88 - 8);
  v12 = MEMORY[0x28223BE20](v88, v11);
  v73 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v71 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v87 = &v71 - v19;
  v20 = sub_21B20CCE8();
  MEMORY[0x28223BE20](v20, v21);
  v93 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(a3 + 16);
  v78 = a2;
  if (!v80)
  {
LABEL_26:
    v57 = sub_21B20D268();

    v58 = *(v57 + 16);
    if (v58)
    {
      v95[0] = MEMORY[0x277D84F90];
      sub_21B18FDB0(0, v58, 0);
      v59 = v95[0];
      v60 = v57 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v61 = *(v72 + 72);
      v62 = v75;
      v63 = v74;
      v64 = v73;
      do
      {
        v65 = v81;
        sub_21B2053F4(v60, v81);
        sub_21B205464(v65, v63);

        sub_21B1867B4(v63 + *(v62 + 48), v64);
        v95[0] = v59;
        v67 = *(v59 + 16);
        v66 = *(v59 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_21B18FDB0((v66 > 1), v67 + 1, 1);
          v59 = v95[0];
        }

        *(v59 + 16) = v67 + 1;
        sub_21B1867B4(v64, v59 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v67);
        v60 += v61;
        --v58;
      }

      while (v58);
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
    }

    v68 = v77;
    v69 = v78;
    *v77 = v76;
    v68[1] = v69;
    v68[2] = v59;
  }

  v24 = 0;
  v79 = a3 + 32;
  v86 = (v22 + 16);
  v83 = (v22 + 8);
  v25 = MEMORY[0x277D84F98];
  v84 = v20;
  v85 = v17;
LABEL_4:
  v26 = *(v79 + 8 * v24);
  v82 = v24 + 1;
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  v92 = v26;
  swift_bridgeObjectRetain_n();
  v32 = 0;
  v89 = v31;
  for (i = v27; ; v27 = i)
  {
    if (!v30)
    {
      while (1)
      {
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_35;
        }

        if (v33 >= v31)
        {
          break;
        }

        v30 = *(v27 + 8 * v33);
        ++v32;
        if (v30)
        {
          v32 = v33;
          goto LABEL_15;
        }
      }

      v24 = v82;
      if (v82 == v80)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

LABEL_15:
    v34 = __clz(__rbit64(v30)) | (v32 << 6);
    v35 = (*(v92 + 48) + 16 * v34);
    v37 = *v35;
    v36 = v35[1];
    sub_21B17FB4C(*(v92 + 56) + 40 * v34, v96);
    v95[0] = v37;
    v95[1] = v36;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    swift_getDynamicType();

    v38 = v93;
    sub_21B20CDD8();
    __swift_project_boxed_opaque_existential_1(v96, v97);
    swift_getDynamicType();

    v39 = sub_21B20CDE8();
    v41 = v87;
    v40 = v88;
    (*v86)(&v87[*(v88 + 24)], v38, v20);
    *v41 = v37;
    *(v41 + 1) = v36;
    v41[16] = v39 & 1;
    v41[*(v40 + 28)] = 0;
    v42 = v41;
    v43 = v85;
    sub_21B1867B4(v42, v85);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v25;
    v46 = sub_21B1B9778(v37, v36);
    v47 = v25[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      break;
    }

    v50 = v45;
    if (v25[3] >= v49)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = v94;
        if (v45)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_21B20398C();
        v25 = v94;
        if (v50)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_21B2010D8(v49, isUniquelyReferenced_nonNull_native);
      v51 = sub_21B1B9778(v37, v36);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_37;
      }

      v46 = v51;
      v25 = v94;
      if (v50)
      {
LABEL_8:
        sub_21B186750(v43, v25[7] + *(v91 + 72) * v46);

        goto LABEL_9;
      }
    }

    v25[(v46 >> 6) + 8] |= 1 << v46;
    v53 = (v25[6] + 16 * v46);
    *v53 = v37;
    v53[1] = v36;
    sub_21B1867B4(v43, v25[7] + *(v91 + 72) * v46);
    v54 = v25[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_36;
    }

    v25[2] = v56;
LABEL_9:
    v30 &= v30 - 1;
    v20 = v84;
    (*v83)(v93, v84);
    sub_21B1BC13C(v95);
    v31 = v89;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B200678@<X0>(uint64_t a1@<X8>)
{
  v41[1] = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD701D8, &qword_21B219B78);
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v3);
  v53 = v41 - v4;
  v5 = type metadata accessor for DatasetColumnDescription(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_21B20CB98();
  v10 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 16);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = *(v1 + 24);
    v59 = MEMORY[0x277D84F90];
    v50 = v15;
    sub_21B18FDF4(0, v15, 0);
    v18 = 0;
    v56 = v59;
    v48 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v49 = v17;
    v19 = *(v6 + 72);
    v42 = (v17 + 32);
    v43 = v10;
    v46 = (v2 + 8);
    v47 = v19;
    v44 = v9;
    v45 = v10 + 32;
    v51 = v13;
    do
    {
      v55 = v18;
      sub_21B17FCC8(v48 + v47 * v18, v9);
      v20 = v9[1];
      v57 = *v9;
      v21 = *(v49 + 16);
      if (v21)
      {
        v58 = v16;

        sub_21B190008(0, v21, 0);
        v16 = v58;
        v22 = v42;
        do
        {
          v23 = *v22;
          v24 = *(*v22 + 16);

          if (v24 && (v25 = sub_21B1B9778(v57, v20), (v26 & 1) != 0))
          {
            v27 = (*(v23 + 56) + 16 * v25);
            v29 = *v27;
            v28 = v27[1];
          }

          else
          {
            v29 = 0;
            v28 = 0xE000000000000000;
          }

          v58 = v16;
          v31 = *(v16 + 16);
          v30 = *(v16 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_21B190008((v30 > 1), v31 + 1, 1);
            v16 = v58;
          }

          *(v16 + 16) = v31 + 1;
          v32 = v16 + 16 * v31;
          *(v32 + 32) = v29;
          *(v32 + 40) = v28;
          ++v22;
          --v21;
        }

        while (v21);
        v10 = v43;
        v9 = v44;
      }

      else
      {
      }

      v58 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F1C0, &unk_21B214CD0);
      sub_21B2053A0(&qword_27CD701E0, &qword_27CD6F1C0, &unk_21B214CD0);
      v33 = v53;
      sub_21B20CB58();
      v34 = v51;
      v35 = v54;
      sub_21B20CB38();
      (*v46)(v33, v35);
      sub_21B17FDE8(v9);
      v36 = v56;
      v59 = v56;
      v38 = *(v56 + 16);
      v37 = *(v56 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_21B18FDF4((v37 > 1), v38 + 1, 1);
        v36 = v59;
      }

      v18 = v55 + 1;
      *(v36 + 16) = v38 + 1;
      v39 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v56 = v36;
      (*(v10 + 32))(v36 + v39 + *(v10 + 72) * v38, v34, v52);
      v16 = MEMORY[0x277D84F90];
    }

    while (v18 != v50);
    v16 = v56;
  }

  v59 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB38, &qword_21B2169D0);
  sub_21B2053A0(&qword_27CD6FB40, &qword_27CD6FB38, &qword_21B2169D0);
  return sub_21B20CAD8();
}

uint64_t sub_21B200B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF78, &unk_21B212530);
  v34 = v4;
  result = sub_21B20D7F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B200DD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF70, &qword_21B212528);
  v37 = v4;
  result = sub_21B20D7F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B2010D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DatasetColumnDescription(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF30, &qword_21B2124E0);
  v41 = v4;
  result = sub_21B20D7F8();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_21B1867B4(v29, v42);
      }

      else
      {
        sub_21B17FCC8(v29, v42);
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_21B1867B4(v42, *(v10 + 56) + v28 * v18);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_21B201438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBB8, &qword_21B2115D0);
  v33 = v4;
  result = sub_21B20D7F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_21B17C304(v24, v34);
      }

      else
      {
        sub_21B19DB00(v24, v34);
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_21B17C304(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21B2016F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD701E8, &qword_21B219B80);
  v41 = v4;
  result = sub_21B20D7F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v43 = (v12 - 1) & v12;
LABEL_15:
      v22 = 24 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = (*(v5 + 56) + v22);
      v28 = v27[1];
      v44 = *v27;
      v29 = v27[2];
      if ((v41 & 1) == 0)
      {
        v30 = *v23;

        v24 = v30;
      }

      v42 = v24;
      v46 = v24;
      v47 = v25;
      v48 = v26;
      sub_21B20DC88();
      DatasetRow.hash(into:)(v45);
      result = sub_21B20DCA8();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 24 * v15;
      v17 = (*(v7 + 48) + v16);
      v12 = v43;
      *v17 = v42;
      v17[1] = v25;
      v17[2] = v26;
      v18 = (*(v7 + 56) + v16);
      *v18 = v44;
      v18[1] = v28;
      v18[2] = v29;
      ++*(v7 + 16);
      v5 = v40;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_33;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B2019FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FBA8, &qword_21B216B80);
  v38 = v4;
  result = sub_21B20D7F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_21B1A37FC(v27, &v39);
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21B201D1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_21B20D7F8();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_21B201FBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21B20D7B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD70210, &qword_21B219BA8);
  v40 = v4;
  result = sub_21B20D7F8();
  v12 = result;
  if (*(v10 + 16))
  {
    v43 = v9;
    v44 = v5;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v42 = *(v6 + 72);
      v26 = v25 + v42 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v44);
        sub_21B17C304((*(v10 + 56) + 32 * v24), v45);
      }

      else
      {
        (*v37)(v43, v26, v44);
        sub_21B19DB00(*(v10 + 56) + 32 * v24, v45);
      }

      result = sub_21B20D278();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v38;
        v10 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v10 = v39;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v41)((*(v12 + 48) + v42 * v20), v43, v44);
      result = sub_21B17C304(v45, (*(v12 + 56) + 32 * v20));
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_21B20235C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FEA8, &qword_21B217EE0);
  v34 = v4;
  result = sub_21B20D7F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B20262C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8C0, &qword_21B215D90);
  v38 = v4;
  result = sub_21B20D7F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_21B1A7C74(v25, v26, v27);
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B202984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v51 = a3(0);
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v11);
  v50 = &v43 - v12;
  v13 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v48 = v9;
  result = sub_21B20D7F8();
  v15 = result;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v44 = v5;
    v45 = (v10 + 16);
    v46 = v13;
    v47 = v10;
    v49 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        (*v49)(v50, v34, v51);
      }

      else
      {
        (*v45)(v50, v34, v51);
      }

      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = (*v49)(*(v15 + 56) + v33 * v23, v50, v51);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v8 = v15;
  return result;
}