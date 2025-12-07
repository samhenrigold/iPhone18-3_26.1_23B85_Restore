uint64_t DatabaseConnection.query<A>(sql:bindings:step:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(sqlite3_stmt **), uint64_t a5, uint64_t a6)
{
  v11 = sub_22FDB08B0(a1, a2);
  if (!v6)
  {
    v12 = v11;
    sub_22FDB2DEC(a3, a4, a5, v11, a6);
    a6 = v14;
    sub_22FDB35E0(v12);
  }

  return a6;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.delete(sql:bindings:)(Swift::String sql, Swift::OpaquePointer bindings)
{
  v4 = sub_22FDB08B0(sql._countAndFlagsBits, sql._object);
  if (!v2)
  {
    v5 = v4;
    sub_22FDB31B8(bindings._rawValue, v4);
    sub_22FDB33A0(v5);
    v6 = sqlite3_step(v5);
    if (v6 != 101)
    {
      v7 = v6;
      if (sqlite3_errstr(v6))
      {
        v8 = sub_22FE43104();
        v10 = v9;
      }

      else
      {
        v10 = 0xE300000000000000;
        v8 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v11 = v7 | 0x6000000000000000;
      v11[1] = v8;
      v11[2] = v10;
      swift_willThrow();
    }

    sub_22FDB35E0(v5);
  }
}

uint64_t static DatabaseConnection.open(location:)@<X0>(uint64_t a1@<X0>, sqlite3 **a2@<X8>)
{
  ppDb[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for DatabaseConnection.Location(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppDb[0] = 0;
  sub_22FD9F5B0(a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    v15 = 0xE800000000000000;
    v16 = 0x3A79726F6D656D3ALL;
  }

  else
  {
    (*(v5 + 32))(v10, v13, v4);
    sub_22FE42714();
    v16 = sub_22FE426D4();
    v15 = v17;
    v18 = *(v5 + 8);
    v18(v7, v4);
    v18(v10, v4);
  }

  if (qword_28148B0A0 != -1)
  {
    swift_once();
  }

  v19 = sub_22FE42D34();
  __swift_project_value_buffer(v19, qword_28148B0A8);

  v20 = sub_22FE42D14();
  v21 = sub_22FE436C4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34 = v23;
    *v22 = 136315138;
    v24 = sub_22FD98218(v16, v15, &v34);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_22FD6D000, v20, v21, "Opening database connection: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x23190C380](v23, -1, -1);
    MEMORY[0x23190C380](v22, -1, -1);
  }

  else
  {
  }

  v25 = sub_22FE430C4();

  v26 = sqlite3_open_v2((v25 + 32), ppDb, 6, 0);

  if (v26)
  {
    if (sqlite3_errstr(v26))
    {
      v28 = sub_22FE43104();
      v30 = v29;
    }

    else
    {
      v30 = 0xE300000000000000;
      v28 = 4271950;
    }

    sub_22FDB1A38();
    swift_allocError();
    *v31 = v26;
    *(v31 + 8) = v28;
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
  }

  else
  {
    if (ppDb[0])
    {
      *a2 = ppDb[0];
      return result;
    }

    sub_22FDB1A38();
    swift_allocError();
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *v32 = 0;
    *(v32 + 24) = 4;
  }

  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.migrate(bundle:migrations:)(NSBundle bundle, Swift::OpaquePointer migrations)
{
  rawValue = migrations._rawValue;
  v5 = sub_22FE430A4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FE42774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v87 - v13;
  v15 = *v2;
  v109._countAndFlagsBits = *v2;
  v16 = sub_22FDB08B0(0xD000000000000013, 0x800000022FE480B0);
  if (v3)
  {
    return;
  }

  v17 = v16;
  isa = bundle.super.isa;
  v104 = v9;
  v18 = rawValue;
  v102 = v7;
  sub_22FDB31B8(MEMORY[0x277D84F90], v16);
  sub_22FDB33A0(v17);
  v19 = sqlite3_step(v17);
  if (v19 == 100)
  {
    if (sqlite3_column_type(v17, 0) != 5)
    {
      v101 = sqlite3_column_int(v17, 0);
      goto LABEL_10;
    }

    sub_22FD9172C();
    swift_allocError();
    *v20 = 0;
    *(v20 + 4) = 0;
LABEL_40:
    swift_willThrow();
    sub_22FDB35E0(v17);
    return;
  }

  if (v19 != 101)
  {
    v21 = v19;
    if (sqlite3_errstr(v19))
    {
      v22 = sub_22FE43104();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v76 = v21 | 0xA000000000000000;
    v76[1] = v22;
    v76[2] = v24;
    goto LABEL_40;
  }

  v101 = 0;
LABEL_10:
  v96 = v11;
  sub_22FDB35E0(v17);
  if (qword_28148B0A0 != -1)
  {
    swift_once();
  }

  v25 = sub_22FE42D34();
  v98 = __swift_project_value_buffer(v25, qword_28148B0A8);
  v26 = sub_22FE42D14();
  v27 = sub_22FE436C4();
  v28 = os_log_type_enabled(v26, v27);
  v99 = v8;
  v97 = v15;
  if (v28)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v101;
    _os_log_impl(&dword_22FD6D000, v26, v27, "Current version is %ld", v8, 0xCu);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  v30 = v18[2];
  if (!v30)
  {
    return;
  }

  v100 = v14;
  v31 = 0;
  v95 = (v104 + 2);
  ++v104;
  v90._object = 0x800000022FE480D0;
  v32 = (v18 + 6);
  v33 = &_swift_FORCE_LOAD___swiftMLCompute___PhotosFace;
  *&v29 = 136315138;
  v92 = v29;
  v90._countAndFlagsBits = 0xD000000000000027;
  v34 = v101;
  while (2)
  {
    v35 = &v32[24 * v31];
    v36 = v31;
    while (1)
    {
      if (v36 >= v30)
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v31 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_48;
      }

      if (v34 + 1 == ++v36)
      {
        break;
      }

      v35 += 24;
      if (v31 == v30)
      {
        return;
      }
    }

    rawValue = v3;
    v38 = *(v35 - 2);
    v37 = *(v35 - 1);
    v89 = *v35;

    v88 = v38;
    v94 = v37;
    v39 = sub_22FE43054();
    v40 = sub_22FE43054();
    v41 = [isa v33[98]];

    if (!v41)
    {
      sub_22FDB1A38();
      swift_allocError();
      v77 = v94;
      *v78 = v88;
      *(v78 + 8) = v77;
      *(v78 + 16) = 0;
      *(v78 + 24) = 3;
      swift_willThrow();
      return;
    }

    v91 = v32;
    v42 = v100;
    sub_22FE42734();

    v43 = v96;
    v44 = v42;
    v45 = v99;
    (*v95)(v96, v44, v99);
    v46 = sub_22FE42D14();
    v47 = sub_22FE436C4();
    v48 = os_log_type_enabled(v46, v47);
    v101 = v34;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v109._countAndFlagsBits = v50;
      *v49 = v92;
      sub_22FD9F614();
      v51 = sub_22FE43C24();
      v52 = v45;
      v54 = v53;
      v93 = *v104;
      v93(v43, v52);
      v55 = sub_22FD98218(v51, v54, &v109._countAndFlagsBits);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_22FD6D000, v46, v47, "Running migration: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x23190C380](v50, -1, -1);
      MEMORY[0x23190C380](v49, -1, -1);
    }

    else
    {

      v93 = *v104;
      v93(v43, v45);
    }

    sub_22FE43094();
    v56 = rawValue;
    v57 = sub_22FE43044();
    rawValue = v56;
    if (v56)
    {
      v93(v100, v99);

      return;
    }

    v109._countAndFlagsBits = v57;
    v109._object = v58;
    v107 = 63;
    v108 = 0xE100000000000000;
    v105 = v31;
    v105 = sub_22FE43C24();
    v106 = v59;
    sub_22FD750CC();
    v60 = sub_22FE437B4();
    v62 = v61;

    v8 = v97;
    v109._countAndFlagsBits = v97;
    v63._countAndFlagsBits = v60;
    v63._object = v62;
    DatabaseConnection.execute(sql:)(v63);
    rawValue = v64;
    if (!v64)
    {
      v93(v100, v99);

      v34 = v101 + 1;
      if (!__OFADD__(v101, 1))
      {
        v3 = rawValue;
        v32 = v91;
        goto LABEL_36;
      }

LABEL_54:
      __break(1u);
      return;
    }

    v65 = v94;

    v33 = sub_22FE42D14();
    v66 = sub_22FE436A4();

    v67 = os_log_type_enabled(v33, v66);
    if (!v89)
    {
      if (v67)
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v109._countAndFlagsBits = v80;
        *v79 = v92;
        v81 = sub_22FD98218(v88, v65, &v109._countAndFlagsBits);

        *(v79 + 4) = v81;
        _os_log_impl(&dword_22FD6D000, v33, v66, "Error while executing migration: %s.", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x23190C380](v80, -1, -1);
        v82 = v79;
        v8 = v97;
        MEMORY[0x23190C380](v82, -1, -1);
        goto LABEL_50;
      }

LABEL_49:

LABEL_50:

      v83 = v99;
      v84 = v100;
      v109._countAndFlagsBits = v8;
      v85._countAndFlagsBits = 0x6B6361626C6C6F72;
      v85._object = 0xE800000000000000;
      DatabaseConnection.execute(sql:)(v85);
      if (v86)
      {
        v93(v84, v83);
      }

      else
      {
        swift_willThrow();
        v93(v84, v83);
      }

      return;
    }

    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v109._countAndFlagsBits = v69;
      *v68 = v92;
      v70 = sub_22FD98218(v88, v65, &v109._countAndFlagsBits);

      *(v68 + 4) = v70;
      _os_log_impl(&dword_22FD6D000, v33, v66, "Ignoring error while executing migration: %s.", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x23190C380](v69, -1, -1);
      v71 = v68;
      v8 = v97;
      MEMORY[0x23190C380](v71, -1, -1);
    }

    else
    {
    }

    v72 = v101;
    v32 = v91;
    v107 = v8;
    v109._countAndFlagsBits = 0;
    v109._object = 0xE000000000000000;
    sub_22FE438F4();

    v109 = v90;
    v105 = v31;
    v73 = sub_22FE43C24();
    v8 = v74;
    MEMORY[0x23190ACF0](v73);

    MEMORY[0x23190ACF0](0x54494D4D4F43203BLL, 0xE90000000000003BLL);
    DatabaseConnection.execute(sql:)(v109);
    if (v3)
    {
      v93(v100, v99);

      return;
    }

    v93(v100, v99);

    v75 = __OFADD__(v72, 1);
    v34 = v72 + 1;
    if (v75)
    {
      __break(1u);
      goto LABEL_54;
    }

LABEL_36:
    v33 = &_swift_FORCE_LOAD___swiftMLCompute___PhotosFace;
    if (v31 != v30)
    {
      continue;
    }

    break;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.beginTransaction()()
{
  v0._countAndFlagsBits = 0x6E69676562;
  v0._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.commitTransaction()()
{
  v0._countAndFlagsBits = 0x74696D6D6F63;
  v0._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.rollbackTransaction()()
{
  v0._countAndFlagsBits = 0x6B6361626C6C6F72;
  v0._object = 0xE800000000000000;
  DatabaseConnection.execute(sql:)(v0);
}

void DatabaseConnection.queryUnique<A>(sql:bindings:step:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(sqlite3_stmt **)@<X3>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v12 = sub_22FDB08B0(a1, a2);
  if (!v7)
  {
    v13 = v12;
    sub_22FDB3024(a3, a4, v12, a6, x8_0);
    sub_22FDB35E0(v13);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.execute(sql:)(Swift::String sql)
{
  object = sql._object;
  countAndFlagsBits = sql._countAndFlagsBits;
  v4 = *v1;
  v5 = sub_22FE430C4();
  v6 = sqlite3_exec(v4, (v5 + 32), 0, 0, 0);

  if (sub_22FDB0F74(0x4C51536775626544, 0xE800000000000000, 0))
  {
    if (qword_28148B0A0 != -1)
    {
      swift_once();
    }

    v7 = sub_22FE42D34();
    __swift_project_value_buffer(v7, qword_28148B0A8);

    v8 = sub_22FE42D14();
    v9 = sub_22FE436C4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_22FD98218(countAndFlagsBits, object, &v16);
      _os_log_impl(&dword_22FD6D000, v8, v9, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190C380](v11, -1, -1);
      MEMORY[0x23190C380](v10, -1, -1);
    }
  }

  if (v6)
  {
    if (sqlite3_errstr(v6))
    {
      v12 = sub_22FE43104();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 4271950;
    }

    sub_22FDB1A38();
    swift_allocError();
    *v15 = v6;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14;
    *(v15 + 24) = 1;
    swift_willThrow();
  }
}

sqlite3_stmt *sub_22FDB08B0(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v12[0] = 0;
  v4 = sub_22FE430C4();
  v5 = sqlite3_prepare_v2(v3, (v4 + 32), -1, v12, 0);

  if (v5)
  {
    if (sqlite3_errstr(v5))
    {
      v6 = sub_22FE43104();
      v8 = v7;
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 4271950;
    }

    sub_22FDB1A38();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v6;
    *(v10 + 16) = v8;
    v11 = 2;
  }

  else
  {
    result = v12[0];
    if (v12[0])
    {
      return result;
    }

    sub_22FDB1A38();
    swift_allocError();
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 1;
    v11 = 4;
  }

  *(v10 + 24) = v11;
  return swift_willThrow();
}

uint64_t *DatabaseConnection.insert<A>(sql:bindings:step:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(sqlite3_stmt **), uint64_t a5, uint64_t a6)
{
  v25 = *v6;
  v12 = &v25;
  v13 = sub_22FDB08B0(a1, a2);
  if (!v7)
  {
    v14 = v13;
    v25 = sub_22FE42F34();
    v15 = *(a3 + 16);
    v16 = a3 + 32;
    do
    {
      if (!v15)
      {
        v12 = v25;
        sub_22FDB35E0(v14);
        return v12;
      }

      sub_22FDB2DEC(v17, a4, a5, v14, a6);

      sub_22FE43354();
      swift_getWitnessTable();
      sub_22FE43314();
      v18 = sqlite3_reset(v14);
      v16 += 8;
      --v15;
    }

    while (!v18);
    v19 = v18;

    v20 = v19;
    if (sqlite3_errstr(v19))
    {
      v21 = sub_22FE43104();
      v12 = v22;
    }

    else
    {
      v12 = 0xE300000000000000;
      v21 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v23 = v20 | 0x8000000000000000;
    v23[1] = v21;
    v23[2] = v12;
    swift_willThrow();
    sub_22FDB35E0(v14);
  }

  return v12;
}

uint64_t DatabaseConnection.Location.description.getter()
{
  v1 = v0;
  v2 = sub_22FE42774();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DatabaseConnection.Location(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FD9F5B0(v1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return 0x726F6D654D2D6E49;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_22FD9F614();
  v11 = sub_22FE43C24();
  (*(v3 + 8))(v5, v2);
  return v11;
}

uint64_t sub_22FDB0D6C()
{
  v1 = v0;
  v2 = sub_22FE42774();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FD9F5B0(v1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return 0x726F6D654D2D6E49;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_22FD9F614();
  v11 = sub_22FE43C24();
  (*(v3 + 8))(v5, v2);
  return v11;
}

uint64_t type metadata accessor for DatabaseConnection.Location(uint64_t a1)
{
  result = qword_28148B330;
  if (!qword_28148B330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDB0F74(uint64_t a1, unint64_t a2, char a3)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_28148BBF8 != -1)
    {
      swift_once();
    }

    v6 = _sSb10PhotosFaceE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(qword_28148BC00, a1, a2);
    if (v6 != 2 && (v6 & 1) != (a3 & 1))
    {
      v8 = v6;
      if (qword_28148B100 != -1)
      {
        swift_once();
      }

      v9 = sub_22FE42D34();
      __swift_project_value_buffer(v9, qword_28148B108);

      v10 = sub_22FE42D14();
      v11 = sub_22FE436C4();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v12 = 136315394;
        *(v12 + 4) = sub_22FD98218(a1, a2, &v18);
        *(v12 + 12) = 2080;
        v14 = sub_22FE430B4();
        v16 = sub_22FD98218(v14, v15, &v18);

        *(v12 + 14) = v16;
        _os_log_impl(&dword_22FD6D000, v10, v11, "Non default value set for %s: %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190C380](v13, -1, -1);
        MEMORY[0x23190C380](v12, -1, -1);
      }

      a3 = v8;
    }
  }

  return a3 & 1;
}

uint64_t sub_22FDB1188(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_28148BBF8 != -1)
    {
      swift_once();
    }

    v8 = sub_22FE0FDC8(qword_28148BC00, a1, a2);
    v9 = v8;
    if (v10)
    {
      if (a4)
      {
        return a3;
      }
    }

    else if ((a4 & 1) == 0 && v8 == a3)
    {
      return a3;
    }

    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v11 = sub_22FE42D34();
    __swift_project_value_buffer(v11, qword_28148B108);

    v12 = sub_22FE42D14();
    v13 = sub_22FE436C4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_22FD98218(a1, a2, &v20);
      *(v14 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42F0, &qword_22FE4AA40);
      v16 = sub_22FE430B4();
      v18 = sub_22FD98218(v16, v17, &v20);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_22FD6D000, v12, v13, "Non default value set for %s: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v15, -1, -1);
      MEMORY[0x23190C380](v14, -1, -1);
    }

    return v9;
  }

  return a3;
}

uint64_t sub_22FDB13CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_28148BBF8 != -1)
    {
      swift_once();
    }

    v6 = static Duration.read(from:key:)(qword_28148BC00, a1, a2);
    if ((v7 & 1) == 0)
    {
      v8 = v6;
      if ((sub_22FE43E94() & 1) == 0)
      {
        if (qword_28148B100 != -1)
        {
          swift_once();
        }

        v9 = sub_22FE42D34();
        __swift_project_value_buffer(v9, qword_28148B108);

        v10 = sub_22FE42D14();
        v11 = sub_22FE436C4();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v18 = v13;
          *v12 = 136315394;
          *(v12 + 4) = sub_22FD98218(a1, a2, &v18);
          *(v12 + 12) = 2080;
          v14 = sub_22FE430B4();
          v16 = sub_22FD98218(v14, v15, &v18);

          *(v12 + 14) = v16;
          _os_log_impl(&dword_22FD6D000, v10, v11, "Non default value set for %s: %s", v12, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190C380](v13, -1, -1);
          MEMORY[0x23190C380](v12, -1, -1);
        }

        return v8;
      }
    }
  }

  return a3;
}

uint64_t sub_22FDB15E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_28148BBF8 != -1)
    {
      swift_once();
    }

    v6 = sub_22FE0FDC8(qword_28148BC00, a1, a2);
    if ((v7 & 1) == 0)
    {
      v8 = v6;
      if (v6 != a3)
      {
        if (qword_28148B100 != -1)
        {
          swift_once();
        }

        v9 = sub_22FE42D34();
        __swift_project_value_buffer(v9, qword_28148B108);

        v10 = sub_22FE42D14();
        v11 = sub_22FE436C4();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v18 = v13;
          *v12 = 136315394;
          *(v12 + 4) = sub_22FD98218(a1, a2, &v18);
          *(v12 + 12) = 2080;
          v14 = sub_22FE430B4();
          v16 = sub_22FD98218(v14, v15, &v18);

          *(v12 + 14) = v16;
          _os_log_impl(&dword_22FD6D000, v10, v11, "Non default value set for %s: %s", v12, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190C380](v13, -1, -1);
          MEMORY[0x23190C380](v12, -1, -1);
        }

        return v8;
      }
    }
  }

  return a3;
}

uint64_t sub_22FDB17EC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_28148BBF8 != -1)
    {
      swift_once();
    }

    v8 = COERCE_DOUBLE(sub_22FE0FF20(qword_28148BC00, a1, a2));
    v9 = v8;
    if (v10)
    {
      if (a4)
      {
        return a3;
      }
    }

    else if ((a4 & 1) == 0 && v8 == *&a3)
    {
      return a3;
    }

    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v11 = sub_22FE42D34();
    __swift_project_value_buffer(v11, qword_28148B108);

    v12 = sub_22FE42D14();
    v13 = sub_22FE436C4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_22FD98218(a1, a2, &v20);
      *(v14 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42F8, &qword_22FE4AA48);
      v16 = sub_22FE430B4();
      v18 = sub_22FD98218(v16, v17, &v20);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_22FD6D000, v12, v13, "Non default value set for %s: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v15, -1, -1);
      MEMORY[0x23190C380](v14, -1, -1);
    }

    *&a3 = v9;
  }

  return a3;
}

unint64_t sub_22FDB1A38()
{
  result = qword_27DAE42E8;
  if (!qword_27DAE42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE42E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseConnection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseConnection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_22FDB1B44(uint64_t a1)
{
  sub_22FDB1B9C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_22FDB1B9C()
{
  if (!qword_28148BE68)
  {
    v0 = sub_22FE42774();
    if (!v1)
    {
      atomic_store(v0, &qword_28148BE68);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FDB1BF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22FDB1C40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10PhotosFace18DatabaseConnectionV7Failure33_20D109090B5EA4E2C93FF5ABBD7D171FLLO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22FDB1CC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_22FDB1D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FDB1D50(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_22FDB1D7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FDB1DC4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t DatabaseRow.readUUID(column:)(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, iCol) == 5 || (v4 = sqlite3_column_blob(v3, iCol)) == 0)
  {
    sub_22FD9172C();
    swift_allocError();
    *v10 = iCol;
    *(v10 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v5 = v4;
    v6 = sqlite3_column_bytes(v3, iCol);
    v7 = sub_22FDB285C(v5, v6);
    return UUID.init(serialized:version:)(v7, v8);
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readString(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(v3, column) == 5 || !sqlite3_column_text(v3, column))
  {
    sub_22FD9172C();
    swift_allocError();
    *v6 = column;
    *(v6 + 4) = 0;
    v4 = swift_willThrow();
  }

  else
  {
    v4 = sub_22FE43114();
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readInt(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, column) != 5)
  {
    return sqlite3_column_int(v3, column);
  }

  sub_22FD9172C();
  swift_allocError();
  *v4 = column;
  *(v4 + 4) = 0;
  return swift_willThrow();
}

Swift::String_optional __swiftcall DatabaseRow.readNullableString(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(v3, column) == 5)
  {
    v4 = 0;
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sqlite3_column_text(v3, column);
  if (!v4)
  {
    goto LABEL_5;
  }

  v4 = sub_22FE43114();
LABEL_6:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readBool(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, column) == 5)
  {
    sub_22FD9172C();
    swift_allocError();
    *v4 = column;
    *(v4 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    return sqlite3_column_int(v3, column) == 1;
  }

  return v5;
}

uint64_t DatabaseRow.readDate(column:)(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, iCol) == 5)
  {
    sub_22FD9172C();
    swift_allocError();
    *v4 = iCol;
    *(v4 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    sqlite3_column_double(v3, iCol);
    return sub_22FE42804();
  }
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readDouble(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(v3, column) != 5)
  {
    return sqlite3_column_double(v3, column);
  }

  sub_22FD9172C();
  swift_allocError();
  *v4 = column;
  *(v4 + 4) = 0;
  swift_willThrow();
  return result;
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readNullableInt(column:)(Swift::Int32 column)
{
  v3 = *v1;
  v4 = sqlite3_column_type(*v1, column);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_int(v3, column);
  }

  v6 = v4 == 5;
  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::Double_optional __swiftcall DatabaseRow.readNullableDouble(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, column) == 5)
  {
    v5 = 0;
  }

  else
  {
    v4 = sqlite3_column_double(v3, column);
    v5 = LOBYTE(v4);
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

unint64_t DatabaseRow.readData(column:)(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(v3, iCol) == 5 || (v4 = sqlite3_column_blob(v3, iCol)) == 0)
  {
    sub_22FD9172C();
    swift_allocError();
    *v8 = iCol;
    *(v8 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v5 = v4;
    v6 = sqlite3_column_bytes(v3, iCol);
    return sub_22FDB285C(v5, v6);
  }
}

uint64_t DatabaseRow.readNullableDate(column:)@<X0>(int iCol@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if (sqlite3_column_type(*v2, iCol) == 5)
  {
    v6 = 1;
  }

  else
  {
    sqlite3_column_double(v5, iCol);
    sub_22FE42804();
    v6 = 0;
  }

  v7 = sub_22FE42854();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

Swift::Bool_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readNullableBool(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, column) == 5)
  {
    return 2;
  }

  else
  {
    return (sqlite3_column_int(v3, column) == 1);
  }
}

uint64_t DatabaseRow.readLink(column:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = *v2;
  if (sqlite3_column_type(*v2, a1) == 5 || !sqlite3_column_text(v8, a1))
  {
    sub_22FD9172C();
    swift_allocError();
    *v12 = a1;
    *(v12 + 4) = 0;
    return swift_willThrow();
  }

  sub_22FE43114();
  sub_22FE42744();

  v9 = sub_22FE42774();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_22FDB290C(v7);
    sub_22FD9172C();
    swift_allocError();
    *v11 = a1;
    *(v11 + 4) = 1;
    return swift_willThrow();
  }

  return (*(v10 + 32))(a2, v7, v9);
}

uint64_t DatabaseRow.readNullableLink(column:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = *v2;
  if (sqlite3_column_type(*v2, a1) == 5 || !sqlite3_column_text(v8, a1))
  {
    v13 = sub_22FE42774();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    sub_22FE43114();
    sub_22FE42744();

    v9 = sub_22FE42774();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_22FDB290C(v7);
      sub_22FD9172C();
      swift_allocError();
      *v11 = a1;
      *(v11 + 4) = 1;
      return swift_willThrow();
    }

    else
    {
      (*(v10 + 32))(a2, v7, v9);
      return (*(v10 + 56))(a2, 0, 1, v9);
    }
  }
}

unint64_t sub_22FDB285C(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22FE088C0(a1, &a1[a2]);
  }

  sub_22FE42694();
  swift_allocObject();
  sub_22FE42644();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_22FE427A4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_22FDB290C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseRow.Failure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseRow.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FDB2A54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 29;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22FDB2AA4(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 3) << 32;
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

void *sub_22FDB2B74(void *i, sqlite3_stmt *a2, void (*a3)(sqlite3_stmt *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  sub_22FDB31B8(i, a2);
  if (!v3)
  {
    sub_22FDB33A0(a2);
    for (i = MEMORY[0x277D84F90]; ; sub_22FDB3F34(v10, i + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17))
    {
      v15 = sqlite3_step(a2);
      if (v15 != 100)
      {
        break;
      }

      a3(a2);
      sub_22FDB3570(v13, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_22FD919A4(0, i[2] + 1, 1, i);
      }

      v17 = i[2];
      v16 = i[3];
      if (v17 >= v16 >> 1)
      {
        i = sub_22FD919A4((v16 > 1), v17 + 1, 1, i);
      }

      sub_22FD93E6C(v13, &qword_27DAE41C8, &unk_22FE4A830);
      i[2] = v17 + 1;
    }

    v18 = v15;
    if (v15 != 101)
    {

      if (sqlite3_errstr(v18))
      {
        v19 = sub_22FE43104();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v22 = v18 | 0xA000000000000000;
      v22[1] = v19;
      v22[2] = v21;
      swift_willThrow();
    }
  }

  return i;
}

void sub_22FDB2DEC(uint64_t a1, void (*a2)(sqlite3_stmt **), uint64_t a3, sqlite3_stmt *a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24[-1] - v13;
  sub_22FDB31B8(v15, v16);
  if (!v5)
  {
    v23 = a2;
    sub_22FDB33A0(a4);
    v24[2] = sub_22FE42F34();
    while (1)
    {
      v17 = sqlite3_step(a4);
      if (v17 != 100)
      {
        break;
      }

      v24[0] = a4;
      v23(v24);
      (*(v9 + 16))(v11, v14, a5);
      sub_22FE43354();
      sub_22FE43324();
      (*(v9 + 8))(v14, a5);
    }

    if (v17 != 101)
    {
      v18 = v17;

      if (sqlite3_errstr(v18))
      {
        v19 = sub_22FE43104();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v22 = v18 | 0xA000000000000000;
      v22[1] = v19;
      v22[2] = v21;
      swift_willThrow();
    }
  }
}

void sub_22FDB3024(uint64_t a1@<X0>, void (*a2)(sqlite3_stmt **)@<X1>, sqlite3_stmt *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_22FDB31B8(a1, a3);
  if (!v5)
  {
    sub_22FDB33A0(a3);
    v10 = sqlite3_step(a3);
    if (v10 == 101)
    {
      (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
    }

    else if (v10 == 100)
    {
      v16 = a3;
      a2(&v16);
      (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
    }

    else
    {
      v11 = v10;
      if (sqlite3_errstr(v10))
      {
        v12 = sub_22FE43104();
        v14 = v13;
      }

      else
      {
        v14 = 0xE300000000000000;
        v12 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v15 = v11 | 0xA000000000000000;
      v15[1] = v12;
      v15[2] = v14;
      swift_willThrow();
    }
  }
}

void sub_22FDB31B8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4308, &qword_22FE4ACE8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v19 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(type metadata accessor for DatabaseBinding(0) - 8);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      v12 = *(v4 + 48);
      *v6 = v8;
      sub_22FDB3FA4(v10, v6 + v12);
      if (v8 == 0x7FFFFFFF)
      {
        __break(1u);
        return;
      }

      v13 = sub_22FDB379C(v6 + v12, v8 + 1, a2);
      if (v13)
      {
        break;
      }

      ++v8;
      sub_22FD93E6C(v6, &qword_27DAE4308, &qword_22FE4ACE8);
      v10 += v11;
      if (v7 == v8)
      {
        return;
      }
    }

    v14 = v13;
    if (sqlite3_errstr(v13))
    {
      v15 = sub_22FE43104();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v18 = v14;
    v18[1] = v15;
    v18[2] = v17;
    swift_willThrow();
    sub_22FD93E6C(v6, &qword_27DAE4308, &qword_22FE4ACE8);
  }
}

void sub_22FDB33A0(sqlite3_stmt *a1)
{
  if (sub_22FDB0F74(0x4C51536775626544, 0xE800000000000000, 0))
  {
    v2 = sqlite3_expanded_sql(a1);
    if (v2)
    {
      v3 = v2;
      v4 = sub_22FE43104();
      v6 = v5;
      if (qword_28148B0A0 != -1)
      {
        swift_once();
      }

      v7 = sub_22FE42D34();
      __swift_project_value_buffer(v7, qword_28148B0A8);

      v8 = sub_22FE42D14();
      v9 = sub_22FE436C4();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v13 = v11;
        *v10 = 136315138;
        v12 = sub_22FD98218(v4, v6, &v13);

        *(v10 + 4) = v12;
        _os_log_impl(&dword_22FD6D000, v8, v9, "%s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x23190C380](v11, -1, -1);
        MEMORY[0x23190C380](v10, -1, -1);
      }

      else
      {
      }

      sqlite3_free(v3);
    }
  }
}

uint64_t sub_22FDB3570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22FDB35E0(sqlite3_stmt *a1)
{
  v1 = sqlite3_finalize(a1);
  if (v1)
  {
    v2 = v1;
    if (qword_28148B0A0 != -1)
    {
      swift_once();
    }

    v3 = sub_22FE42D34();
    __swift_project_value_buffer(v3, qword_28148B0A8);
    oslog = sub_22FE42D14();
    v4 = sub_22FE436A4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      if (sqlite3_errstr(v2))
      {
        v7 = sub_22FE43104();
        v9 = v8;
      }

      else
      {
        v9 = 0xE300000000000000;
        v7 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v10 = v2 | 0x2000000000000000;
      v10[1] = v7;
      v10[2] = v9;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v11;
      *v6 = v11;
      _os_log_impl(&dword_22FD6D000, oslog, v4, "%@", v5, 0xCu);
      sub_22FD93E6C(v6, &qword_27DAE4208, &qword_22FE4ACE0);
      MEMORY[0x23190C380](v6, -1, -1);
      MEMORY[0x23190C380](v5, -1, -1);
    }
  }
}

uint64_t sub_22FDB379C(uint64_t a1, unsigned int a2, sqlite3_stmt *a3)
{
  v60 = a3;
  v61 = a2;
  v62[2] = *MEMORY[0x277D85DE8];
  v4 = sub_22FE428C4();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FE42774();
  v59 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FE42854();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DatabaseBinding(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v55 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v55 - v20);
  sub_22FDB3FA4(a1, &v55 - v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v28 = v59;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        (*(v59 + 32))(v8, v21, v6);
        *v18 = sub_22FE426D4();
        v18[1] = v42;
        swift_storeEnumTagMultiPayload();
        v27 = sub_22FDB379C(v18, v61, v60);
        sub_22FDB4008(v18);
        (*(v28 + 8))(v8, v6);
        return v27;
      }

      return sqlite3_bind_int64(v60, v61, *v21);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v10 + 32))(v12, v21, v9);
        sub_22FE42814();
        *v18 = v29;
        swift_storeEnumTagMultiPayload();
        v27 = sub_22FDB379C(v18, v61, v60);
        sub_22FDB4008(v18);
        (*(v10 + 8))(v12, v9);
        return v27;
      }

      return sqlite3_bind_double(v60, v61, *v21);
    }
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v15 = *v21;
      swift_storeEnumTagMultiPayload();
      v27 = sub_22FDB379C(v15, v61, v60);
      sub_22FDB4008(v15);
      return v27;
    }

    v31 = sub_22FE43054();

    v32 = [v31 UTF8String];
    v33 = v31;
    if (qword_27DAE2A20 != -1)
    {
      swift_once();
    }

    return sqlite3_bind_text(v60, v61, v32, -1, qword_27DAEDF70);
  }

  if (EnumCaseMultiPayload == 6)
  {
    v35 = *v21;
    v34 = v21[1];
    v36 = v34 >> 62;
    if ((v34 >> 62) <= 1)
    {
      if (!v36)
      {
        v62[0] = *v21;
        LOWORD(v62[1]) = v34;
        BYTE2(v62[1]) = BYTE2(v34);
        BYTE3(v62[1]) = BYTE3(v34);
        BYTE4(v62[1]) = BYTE4(v34);
        BYTE5(v62[1]) = BYTE5(v34);
        if (qword_27DAE2A20 != -1)
        {
          swift_once();
        }

        v37 = qword_27DAEDF70;
        v38 = v62;
        v39 = v60;
        v40 = v61;
        v41 = BYTE6(v34);
        goto LABEL_57;
      }

LABEL_40:
      if (v35 >> 32 < v35)
      {
        __break(1u);
        goto LABEL_59;
      }

      v46 = sub_22FE42654();
      if (!v46)
      {
LABEL_44:
        v54 = sub_22FE42674();
        if (v54 >= (v35 >> 32) - v35)
        {
          v52 = (v35 >> 32) - v35;
        }

        else
        {
          v52 = v54;
        }

        if (!v46)
        {
          LODWORD(v52) = 0;
          goto LABEL_54;
        }

        if (v52 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_50:
          memset(v62, 0, 14);
          if (qword_27DAE2A20 == -1)
          {
LABEL_51:
            v37 = qword_27DAEDF70;
            v38 = v62;
            v39 = v60;
            v40 = v61;
            v41 = 0;
LABEL_57:
            v27 = sqlite3_bind_blob(v39, v40, v38, v41, v37);
            sub_22FD917D4(v35, v34);
            return v27;
          }

LABEL_59:
          swift_once();
          goto LABEL_51;
        }

        if (v52 <= 0x7FFFFFFF)
        {
LABEL_54:
          if (qword_27DAE2A20 != -1)
          {
            swift_once();
          }

          v37 = qword_27DAEDF70;
          v39 = v60;
          v40 = v61;
          v38 = v46;
          v41 = v52;
          goto LABEL_57;
        }

LABEL_64:
        __break(1u);
      }

      v53 = sub_22FE42684();
      if (!__OFSUB__(v35, v53))
      {
        v46 += v35 - v53;
        goto LABEL_44;
      }

LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v36 != 2)
    {
      goto LABEL_50;
    }

    v44 = *(v35 + 16);
    v45 = *(v35 + 24);
    v46 = sub_22FE42654();
    if (v46)
    {
      v47 = sub_22FE42684();
      if (__OFSUB__(v44, v47))
      {
        goto LABEL_62;
      }

      v46 += v44 - v47;
    }

    v48 = __OFSUB__(v45, v44);
    v49 = v45 - v44;
    if (v48)
    {
      __break(1u);
    }

    else
    {
      v50 = sub_22FE42674();
      if (v50 >= v49)
      {
        v51 = v49;
      }

      else
      {
        v51 = v50;
      }

      if (v46)
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      if (v52 >= 0xFFFFFFFF80000000)
      {
        if (v52 <= 0x7FFFFFFF)
        {
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (EnumCaseMultiPayload != 7)
  {
    return sqlite3_bind_null(v60, v61);
  }

  v23 = v56;
  v24 = v57;
  v25 = v58;
  (*(v57 + 32))(v56, v21, v58);
  LOBYTE(v62[0]) = 2;
  *v18 = UUID.serialized(version:)(v62);
  v18[1] = v26;
  swift_storeEnumTagMultiPayload();
  v27 = sub_22FDB379C(v18, v61, v60);
  sub_22FDB4008(v18);
  (*(v24 + 8))(v23, v25);
  return v27;
}

uint64_t sub_22FDB3F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDB3FA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseBinding(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDB4008(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseBinding(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FetchFaceRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for FetchFaceRequest(uint64_t a1)
{
  result = qword_27DAE4320;
  if (!qword_27DAE4320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FetchFaceRequest.init(id:day:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_22FE428C4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for FetchFaceRequest(0);
  v10 = a4 + *(result + 20);
  *v10 = a2;
  *(v10 + 8) = a3 & 1;
  return result;
}

uint64_t FetchFaceRequest.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v9) = *a2;
  v11 = *a1;
  v12 = a1[1];
  v18[15] = v9;
  sub_22FDB4380(v11, v12);
  UUID.init(serialized:version:)(v11, v12);
  if (v3)
  {
    return sub_22FDB5158(a1, type metadata accessor for FetchFaceRequestProto);
  }

  v14 = (a1 + *(type metadata accessor for FetchFaceRequestProto(0) + 24));
  v15 = *(v14 + 4);
  if (v15)
  {
    sub_22FDB5158(a1, type metadata accessor for FetchFaceRequestProto);
    v16 = 0;
  }

  else
  {
    v16 = *v14;
    sub_22FDB5158(a1, type metadata accessor for FetchFaceRequestProto);
  }

  (*(v8 + 32))(a3, v10, v7);
  result = type metadata accessor for FetchFaceRequest(0);
  v17 = a3 + *(result + 20);
  *v17 = v16;
  *(v17 + 8) = v15;
  return result;
}

uint64_t sub_22FDB4380(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t FetchFaceRequest.protobuf(version:)(char *a1)
{
  type metadata accessor for FetchFaceRequestProto(0);
  sub_22FDB5110(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto, &protocol conformance descriptor for FetchFaceRequestProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDB4480(uint64_t a1, uint64_t a2, char a3)
{
  v12 = a3;
  v5 = UUID.serialized(version:)(&v12);
  v7 = v6;
  sub_22FD917D4(*a1, *(a1 + 8));
  *a1 = v5;
  *(a1 + 8) = v7;
  result = type metadata accessor for FetchFaceRequest(0);
  v9 = (a2 + *(result + 20));
  if ((v9[1] & 1) == 0)
  {
    v10 = *v9;
    if ((*v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v10))
    {
      result = type metadata accessor for FetchFaceRequestProto(0);
      v11 = a1 + *(result + 24);
      *v11 = v10;
      *(v11 + 4) = 0;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FDB4570(char *a1)
{
  type metadata accessor for FetchFaceRequestProto(0);
  sub_22FDB5110(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto, &protocol conformance descriptor for FetchFaceRequestProto);
  return sub_22FE42C14();
}

uint64_t FetchByDayResponse.init(protobuf:version:)@<X0>(unsigned int *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for StoredPhotoProto(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v30 = *(type metadata accessor for StoredPhoto(0) - 8);
  MEMORY[0x28223BE20](a1);
  v32 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v15 = *(a1 + 1);
  v16 = *(v15 + 16);
  if (v16)
  {
    v25 = a3;
    v26 = v13;
    v29 = *a2;
    v34 = MEMORY[0x277D84F90];
    result = sub_22FD92408(0, v16, 0);
    v18 = 0;
    v19 = v34;
    v28 = v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    while (v18 < *(v15 + 16))
    {
      sub_22FDB5088(v28 + *(v8 + 72) * v18, v12, type metadata accessor for StoredPhotoProto);
      v20 = v31;
      sub_22FDB5088(v12, v31, type metadata accessor for StoredPhotoProto);
      v33 = v29;
      StoredPhoto.init(protobuf:version:)(v20, &v33, v32);
      if (v3)
      {
        sub_22FDB5158(v12, type metadata accessor for StoredPhotoProto);
        sub_22FDB5158(v26, type metadata accessor for FetchByDayResponseProto);
      }

      v21 = v8;
      sub_22FDB5158(v12, type metadata accessor for StoredPhotoProto);
      v34 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22FD92408((v22 > 1), v23 + 1, 1);
        v19 = v34;
      }

      ++v18;
      *(v19 + 16) = v23 + 1;
      result = sub_22FDB51B8(v32, v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, type metadata accessor for StoredPhoto);
      v8 = v21;
      if (v16 == v18)
      {
        result = sub_22FDB5158(v26, type metadata accessor for FetchByDayResponseProto);
        a3 = v25;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22FDB5158(v13, type metadata accessor for FetchByDayResponseProto);
    v19 = MEMORY[0x277D84F90];
LABEL_11:
    *a3 = v27;
    a3[1] = v19;
  }

  return result;
}

uint64_t FetchByDayResponse.protobuf(version:)(char *a1)
{
  type metadata accessor for FetchByDayResponseProto(0);
  sub_22FDB5110(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto, &protocol conformance descriptor for FetchByDayResponseProto);
  return sub_22FE42C14();
}

void sub_22FDB4A54(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v28 = a4;
  v9 = type metadata accessor for StoredPhoto(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StoredPhotoProto(0);
  v26 = *(v13 - 8);
  v27 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a2))
  {
LABEL_11:
    __break(1u);
    return;
  }

  *a1 = a2;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v24 = a1;
    v29 = MEMORY[0x277D84F90];
    sub_22FD924F4(0, v16, 0);
    v17 = v29;
    v18 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = *(v10 + 72);
    do
    {
      v19 = sub_22FDB5088(v18, v12, type metadata accessor for StoredPhoto);
      MEMORY[0x28223BE20](v19);
      *(&v23 - 2) = v12;
      *(&v23 - 8) = v28;
      sub_22FDB5110(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
      v20 = v5;
      sub_22FE42C14();
      sub_22FDB5158(v12, type metadata accessor for StoredPhoto);
      v29 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22FD924F4((v21 > 1), v22 + 1, 1);
        v17 = v29;
      }

      *(v17 + 16) = v22 + 1;
      sub_22FDB51B8(v15, v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, type metadata accessor for StoredPhotoProto);
      v18 += v25;
      --v16;
      v5 = v20;
    }

    while (v16);
    a1 = v24;
  }

  *(a1 + 8) = v17;
}

uint64_t sub_22FDB4D90(char *a1)
{
  type metadata accessor for FetchByDayResponseProto(0);
  sub_22FDB5110(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto, &protocol conformance descriptor for FetchByDayResponseProto);
  return sub_22FE42C14();
}

void sub_22FDB4F20(uint64_t a1)
{
  sub_22FE428C4();
  if (v1 <= 0x3F)
  {
    sub_22FDB4FA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FDB4FA4()
{
  if (!qword_27DAE4330)
  {
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE4330);
    }
  }
}

uint64_t sub_22FDB4FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22FDB503C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22FDB5088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDB5110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FDB5158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FDB51B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t GeneratePhotoRequest.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = sub_22FE428C4();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v9 + 16);
  if (!v10)
  {
    result = sub_22FDB644C(v6, type metadata accessor for GeneratePhotoRequestProto);
    *a2 = MEMORY[0x277D84F90];
    return result;
  }

  v33[0] = a2;
  v33[1] = v2;
  v34 = v6;
  v40 = MEMORY[0x277D84F90];
  sub_22FD922C4(0, v10, 0);
  v11 = 0;
  v12 = v40;
  v35 = v8;
  v36 = v5 + 32;
  v13 = (v9 + 40);
  v37 = v10;
  v38 = v9;
  while (v11 < *(v9 + 16))
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    v16 = *v13 >> 62;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_31;
      }

      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      v19 = v17 - v18;
      if (__OFSUB__(v17, v18))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (!v16)
      {
        if (BYTE6(v15) != 16)
        {
          goto LABEL_31;
        }

        goto LABEL_15;
      }

      if (__OFSUB__(HIDWORD(v14), v14))
      {
        goto LABEL_34;
      }

      v19 = HIDWORD(v14) - v14;
    }

    sub_22FDB4380(*(v13 - 1), *v13);
    if (v19 != 16)
    {
LABEL_31:
      sub_22FD91780();
      swift_allocError();
      *v32 = 1;
      swift_willThrow();
      sub_22FD917D4(v14, v15);
      sub_22FDB644C(v34, type metadata accessor for GeneratePhotoRequestProto);
    }

LABEL_15:
    if (v16 == 2)
    {
      v25 = *(v14 + 16);
      v26 = sub_22FE42654();
      if (!v26)
      {
        goto LABEL_38;
      }

      v27 = v26;
      v28 = sub_22FE42684();
      if (__OFSUB__(v25, v28))
      {
        goto LABEL_36;
      }

      v29 = v25 - v28 + v27;
      sub_22FE42674();
      if (!v29)
      {
        goto LABEL_39;
      }

LABEL_25:
      v8 = v35;
      goto LABEL_26;
    }

    if (v16 == 1)
    {
      if (v14 > v14 >> 32)
      {
        goto LABEL_35;
      }

      v20 = sub_22FE42654();
      if (!v20)
      {
        goto LABEL_40;
      }

      v21 = v20;
      v22 = sub_22FE42684();
      if (__OFSUB__(v14, v22))
      {
        goto LABEL_37;
      }

      v23 = v14 - v22 + v21;
      result = sub_22FE42674();
      if (!v23)
      {
        goto LABEL_41;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_22FE42894();
    sub_22FD917D4(v14, v15);
    v40 = v12;
    v31 = *(v12 + 16);
    v30 = *(v12 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_22FD922C4((v30 > 1), v31 + 1, 1);
      v12 = v40;
    }

    ++v11;
    *(v12 + 16) = v31 + 1;
    (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31, v8, v39);
    v13 += 2;
    v9 = v38;
    if (v37 == v11)
    {
      result = sub_22FDB644C(v34, type metadata accessor for GeneratePhotoRequestProto);
      *v33[0] = v12;
      return result;
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
LABEL_38:
  sub_22FE42674();
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_22FE42674();
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t GeneratePhotoRequest.protobuf(version:)(char *a1)
{
  type metadata accessor for GeneratePhotoRequestProto(0);
  sub_22FDB6404(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto, &protocol conformance descriptor for GeneratePhotoRequestProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDB5734(void *a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = sub_22FE428C4();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v28[0] = a1;
    v28[1] = v2;
    v42 = MEMORY[0x277D84F90];
    sub_22FD92538(0, v8, 0);
    v9 = v42;
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v12 = a2 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v30 = *(v10 + 56);
    v31 = v11;
    v29 = (v10 - 8);
    do
    {
      v13 = v32;
      v14 = v10;
      v31(v7, v12, v32);
      v33 = sub_22FE428A4();
      v34 = v15;
      v35 = v16;
      v36 = v17;
      v37 = v18;
      v38 = v19;
      v39 = v20;
      v40 = v21;
      v41 = v22;
      sub_22FE428A4();
      sub_22FE42694();
      swift_allocObject();
      v23 = sub_22FE42644();
      (*v29)(v7, v13);
      v42 = v9;
      v25 = *(v9 + 16);
      v24 = *(v9 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22FD92538((v24 > 1), v25 + 1, 1);
        v9 = v42;
      }

      *(v9 + 16) = v25 + 1;
      v26 = v9 + 16 * v25;
      *(v26 + 32) = 0x1000000000;
      *(v26 + 40) = v23 | 0x4000000000000000;
      v12 += v30;
      --v8;
      v10 = v14;
    }

    while (v8);
    a1 = v28[0];
  }

  *a1 = v9;
  return result;
}

uint64_t sub_22FDB59F0(char *a1)
{
  type metadata accessor for GeneratePhotoRequestProto(0);
  sub_22FDB6404(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto, &protocol conformance descriptor for GeneratePhotoRequestProto);
  return sub_22FE42C14();
}

uint64_t GeneratePhotoResponse.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for StoredPhotoProto(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v29 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v28 = *(type metadata accessor for StoredPhoto(0) - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(*a1 + 16);
  if (v16)
  {
    v24 = a3;
    v25 = v13;
    v27 = *a2;
    v32 = MEMORY[0x277D84F90];
    result = sub_22FD92408(0, v16, 0);
    v18 = 0;
    v19 = v32;
    v26 = v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    while (v18 < *(v15 + 16))
    {
      sub_22FDB5088(v26 + *(v8 + 72) * v18, v12, type metadata accessor for StoredPhotoProto);
      v20 = v29;
      sub_22FDB5088(v12, v29, type metadata accessor for StoredPhotoProto);
      v31 = v27;
      StoredPhoto.init(protobuf:version:)(v20, &v31, v30);
      if (v3)
      {
        sub_22FDB644C(v12, type metadata accessor for StoredPhotoProto);
        sub_22FDB644C(v25, type metadata accessor for GeneratePhotoResponseProto);
      }

      v21 = v8;
      sub_22FDB644C(v12, type metadata accessor for StoredPhotoProto);
      v32 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22FD92408((v22 > 1), v23 + 1, 1);
        v19 = v32;
      }

      ++v18;
      *(v19 + 16) = v23 + 1;
      result = sub_22FDB51B8(v30, v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for StoredPhoto);
      v8 = v21;
      if (v16 == v18)
      {
        result = sub_22FDB644C(v25, type metadata accessor for GeneratePhotoResponseProto);
        *v24 = v19;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22FDB644C(v13, type metadata accessor for GeneratePhotoResponseProto);
    *a3 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t GeneratePhotoResponse.protobuf(version:)(char *a1)
{
  type metadata accessor for GeneratePhotoResponseProto(0);
  sub_22FDB6404(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto, &protocol conformance descriptor for GeneratePhotoResponseProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDB5EBC(void *a1, uint64_t a2, int a3)
{
  v24 = a3;
  v5 = type metadata accessor for StoredPhoto(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoredPhotoProto(0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v20 = a1;
    v25 = MEMORY[0x277D84F90];
    sub_22FD924F4(0, v12, 0);
    v13 = v25;
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v21 = *(v6 + 72);
    do
    {
      v15 = sub_22FDB5088(v14, v8, type metadata accessor for StoredPhoto);
      MEMORY[0x28223BE20](v15);
      *(&v19 - 2) = v8;
      *(&v19 - 8) = v24;
      sub_22FDB6404(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
      sub_22FE42C14();
      sub_22FDB644C(v8, type metadata accessor for StoredPhoto);
      v25 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22FD924F4((v16 > 1), v17 + 1, 1);
        v13 = v25;
      }

      *(v13 + 16) = v17 + 1;
      sub_22FDB51B8(v11, v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17, type metadata accessor for StoredPhotoProto);
      v14 += v21;
      --v12;
    }

    while (v12);
    a1 = v20;
  }

  *a1 = v13;
  return result;
}

uint64_t sub_22FDB61D8(char *a1)
{
  type metadata accessor for GeneratePhotoResponseProto(0);
  sub_22FDB6404(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto, &protocol conformance descriptor for GeneratePhotoResponseProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDB6370(uint64_t *a1, int a2)
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

uint64_t sub_22FDB63B8(uint64_t result, int a2, int a3)
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

uint64_t sub_22FDB6404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FDB644C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SyncFacesRequest.init(trackedFaces:cachedIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static SyncFacesRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_22FDB6B20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_22FDB6B20(v2, v3);
}

uint64_t sub_22FDB655C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhotoProto(0) - 8;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_22FDBC824(v13, v10, type metadata accessor for StoredPhotoProto);
        sub_22FDBC824(v14, v6, type metadata accessor for StoredPhotoProto);
        v16 = _s10PhotosFace16StoredPhotoProtoV2eeoiySbAC_ACtFZ_0(v10, v6);
        sub_22FDBC88C(v6, type metadata accessor for StoredPhotoProto);
        sub_22FDBC88C(v10, type metadata accessor for StoredPhotoProto);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_22FDB6714(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_22FDB4380(v7, v6);
          sub_22FDB4380(v9, v8);
          v22 = sub_22FE42654();
          if (v22)
          {
            v23 = sub_22FE42684();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_22FE42674();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_22FDB4380(v7, v6);
        sub_22FDB4380(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_22FDB4380(v7, v6);
          sub_22FDB4380(v9, v8);
          v27 = sub_22FE42654();
          if (v27)
          {
            v28 = sub_22FE42684();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_22FE42674();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_22FDBBBC8(v24, v25, v26, v33);
          sub_22FD917D4(v9, v8);
          sub_22FD917D4(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_22FDB4380(v7, v6);
        sub_22FDB4380(v9, v8);
      }

      sub_22FDBBBC8(v33, v9, v8, &v32);
      sub_22FD917D4(v9, v8);
      sub_22FD917D4(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_22FDB6B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE428C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_22FDBC978(&qword_27DAE2CC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v22 = sub_22FE43024();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDB6D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhotoLayoutProto(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_22FDBC824(v13, v10, type metadata accessor for StoredPhotoLayoutProto);
        sub_22FDBC824(v14, v6, type metadata accessor for StoredPhotoLayoutProto);
        v16 = *(v4 + 20);
        v17 = *&v10[v16];
        v18 = *&v6[v16];
        if (v17 != v18)
        {

          v19 = sub_22FE01D04(v17, v18);

          if ((v19 & 1) == 0)
          {
            break;
          }
        }

        sub_22FE42A54();
        sub_22FDBC978(&qword_27DAE44A0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v20 = sub_22FE43024();
        sub_22FDBC88C(v6, type metadata accessor for StoredPhotoLayoutProto);
        sub_22FDBC88C(v10, type metadata accessor for StoredPhotoLayoutProto);
        if (v20)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v20 & 1;
      }

      sub_22FDBC88C(v6, type metadata accessor for StoredPhotoLayoutProto);
      sub_22FDBC88C(v10, type metadata accessor for StoredPhotoLayoutProto);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_22FDB6FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22FE43CB4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22FDB7050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhoto(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_22FDBC824(v13, v10, type metadata accessor for StoredPhoto);
      sub_22FDBC824(v14, v6, type metadata accessor for StoredPhoto);
      if ((_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) == 0 || (sub_22FE42824() & 1) == 0 || (sub_22FE42824() & 1) == 0 || *&v10[v4[7]] != *&v6[v4[7]])
      {
        break;
      }

      v16 = v4[8];
      v17 = &v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v6[v16];
      v20 = *(v19 + 1);
      if (v18)
      {
        if (!v20 || (*v17 != *v19 || v18 != v20) && (sub_22FE43CB4() & 1) == 0)
        {
          break;
        }
      }

      else if (v20)
      {
        break;
      }

      v21 = v4[9];
      v22 = &v10[v21];
      v23 = *&v10[v21 + 8];
      v24 = &v6[v21];
      v25 = *(v24 + 1);
      if (v23)
      {
        if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_22FE43CB4() & 1) == 0)
        {
          break;
        }
      }

      else if (v25)
      {
        break;
      }

      if (*&v10[v4[10]] != *&v6[v4[10]])
      {
        break;
      }

      sub_22FDD7B90(*&v10[v4[11]], *&v6[v4[11]]);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v27 = v4[12];
      v28 = &v10[v27];
      v29 = *&v10[v27 + 8];
      v30 = &v6[v27];
      v31 = *(v30 + 1);
      if (v29)
      {
        if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_22FE43CB4() & 1) == 0)
        {
          break;
        }

        sub_22FDBC88C(v6, type metadata accessor for StoredPhoto);
        sub_22FDBC88C(v10, type metadata accessor for StoredPhoto);
      }

      else
      {
        sub_22FDBC88C(v6, type metadata accessor for StoredPhoto);
        sub_22FDBC88C(v10, type metadata accessor for StoredPhoto);
        if (v31)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      result = 1;
      if (!--v11)
      {
        return result;
      }
    }

    sub_22FDBC88C(v6, type metadata accessor for StoredPhoto);
    sub_22FDBC88C(v10, type metadata accessor for StoredPhoto);
  }

  return 0;
}

uint64_t SyncFacesRequest.hash(into:)(uint64_t a1)
{
  v3 = sub_22FE428C4();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = *v1;
  v25 = v1[1];
  v11 = *(v10 + 16);
  v27 = a1;
  MEMORY[0x23190B9C0](v11, v7);
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = *(v26 + 16);
    v14 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v15 = *(v26 + 72);
    v16 = (v26 + 8);
    do
    {
      v13(v9, v14, v3);
      sub_22FDBC978(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22FE42FE4();
      (*v16)(v9, v3);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  v17 = v25;
  result = MEMORY[0x23190B9C0](*(v25 + 16));
  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = *(v26 + 16);
    v21 = v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v22 = *(v26 + 72);
    v23 = (v26 + 8);
    do
    {
      v20(v5, v21, v3);
      sub_22FDBC978(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22FE42FE4();
      result = (*v23)(v5, v3);
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t SyncFacesRequest.hashValue.getter()
{
  v3 = *v0;
  sub_22FE43DB4();
  SyncFacesRequest.hash(into:)(v2);
  return sub_22FE43E04();
}

uint64_t sub_22FDB7654()
{
  v3 = *v0;
  sub_22FE43DB4();
  SyncFacesRequest.hash(into:)(v2);
  return sub_22FE43E04();
}

uint64_t sub_22FDB76A4(uint64_t a1)
{
  v4 = *v1;
  sub_22FE43DB4();
  SyncFacesRequest.hash(into:)(v3);
  return sub_22FE43E04();
}

uint64_t sub_22FDB76EC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_22FDB6B20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_22FDB6B20(v2, v3);
}

uint64_t SyncFacesRequest.description.getter()
{
  v31 = sub_22FE428C4();
  v1 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *v0;
  strcpy(v34, "SyncRequest(");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v33 = MEMORY[0x277D84F90];
    sub_22FD92308(0, v4, 0);
    v5 = v33;
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v27 = *(v6 + 56);
    v28 = v7;
    v26 = (v6 - 8);
    v29 = v6;
    do
    {
      v32 = v5;
      v9 = v30;
      v10 = v31;
      v28(v30, v8, v31);
      sub_22FE42874();
      sub_22FE430E4();
      v11 = sub_22FE43174();
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = v9;
      v5 = v32;
      (*v26)(v18, v10);
      v33 = v5;
      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_22FD92308((v19 > 1), v20 + 1, 1);
        v5 = v33;
      }

      *(v5 + 16) = v20 + 1;
      v21 = (v5 + 32 * v20);
      v21[4] = v11;
      v21[5] = v13;
      v21[6] = v15;
      v21[7] = v17;
      v8 += v27;
      --v4;
    }

    while (v4);
  }

  v33 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4350, "pi");
  sub_22FDBC930(&qword_27DAE4358, &qword_27DAE4350, "pi", MEMORY[0x277D83970]);
  sub_22FDBBDF8();
  v22 = sub_22FE43234();
  v24 = v23;

  MEMORY[0x23190ACF0](v22, v24);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v34[0];
}

uint64_t SyncFacesRequest.init(protobuf:version:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v4 = sub_22FE428C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = MEMORY[0x277D84F90];
  v67 = v13;
  v72 = v5;
  v64 = v2;
  v65 = a1;
  if (!v11)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_34:
    v37 = a1[1];
    v38 = *(v37 + 16);
    if (!v38)
    {
      result = sub_22FDBC88C(a1, type metadata accessor for SyncFacesRequestProto);
      v41 = MEMORY[0x277D84F90];
LABEL_66:
      v62 = v63;
      *v63 = v15;
      v62[1] = v41;
      return result;
    }

    v73 = v12;
    sub_22FD922C4(0, v38, 0);
    v39 = 0;
    v40 = v5;
    v41 = v73;
    v69 = v37;
    v70 = v40 + 32;
    v42 = (v37 + 40);
    v71 = v38;
    while (1)
    {
      if (v39 >= *(v37 + 16))
      {
        goto LABEL_68;
      }

      v44 = *(v42 - 1);
      v43 = *v42;
      v45 = *v42 >> 62;
      if (v45 > 1)
      {
        if (v45 != 2)
        {
          goto LABEL_65;
        }

        v47 = *(v44 + 16);
        v46 = *(v44 + 24);
        v48 = v46 - v47;
        if (__OFSUB__(v46, v47))
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (!v45)
        {
          if (BYTE6(v43) != 16)
          {
            goto LABEL_65;
          }

          goto LABEL_48;
        }

        if (__OFSUB__(HIDWORD(v44), v44))
        {
          goto LABEL_75;
        }

        v48 = HIDWORD(v44) - v44;
      }

      sub_22FDB4380(*(v42 - 1), *v42);
      if (v48 != 16)
      {
LABEL_65:

        sub_22FD91780();
        swift_allocError();
        *v61 = 1;
        swift_willThrow();
        sub_22FD917D4(v44, v43);
        sub_22FDBC88C(v65, type metadata accessor for SyncFacesRequestProto);
      }

LABEL_48:
      if (v45 == 2)
      {
        v53 = *(v44 + 16);
        v54 = sub_22FE42654();
        if (!v54)
        {
          goto LABEL_83;
        }

        v55 = v54;
        v56 = sub_22FE42684();
        if (__OFSUB__(v53, v56))
        {
          goto LABEL_77;
        }

        v57 = v53 - v56 + v55;
        sub_22FE42674();
        if (!v57)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v45 != 1)
        {
          v58 = v66;
          v37 = v69;
          goto LABEL_60;
        }

        if (v44 > v44 >> 32)
        {
          goto LABEL_76;
        }

        v49 = sub_22FE42654();
        if (!v49)
        {
          goto LABEL_85;
        }

        v50 = v49;
        v51 = sub_22FE42684();
        if (__OFSUB__(v44, v51))
        {
          goto LABEL_78;
        }

        v52 = v44 - v51 + v50;
        result = sub_22FE42674();
        if (!v52)
        {
          goto LABEL_86;
        }
      }

      v58 = v66;
      v4 = v67;
      v37 = v69;
LABEL_60:
      sub_22FE42894();
      sub_22FD917D4(v44, v43);
      v73 = v41;
      v60 = *(v41 + 16);
      v59 = *(v41 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_22FD922C4((v59 > 1), v60 + 1, 1);
        v58 = v66;
        v41 = v73;
      }

      ++v39;
      *(v41 + 16) = v60 + 1;
      (*(v72 + 32))(v41 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v60, v58, v4);
      v42 += 2;
      if (v71 == v39)
      {
        result = sub_22FDBC88C(v65, type metadata accessor for SyncFacesRequestProto);
        goto LABEL_66;
      }
    }
  }

  v73 = MEMORY[0x277D84F90];
  v69 = v11;
  sub_22FD922C4(0, v11, 0);
  v14 = 0;
  v15 = v73;
  v68 = v5 + 32;
  v16 = (v10 + 40);
  v70 = v10;
  v71 = v9;
  while (v14 < *(v10 + 16))
  {
    v18 = *(v16 - 1);
    v17 = *v16;
    v19 = *v16 >> 62;
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_33;
      }

      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      v22 = v20 - v21;
      if (__OFSUB__(v20, v21))
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (!v19)
      {
        if (BYTE6(v17) != 16)
        {
          goto LABEL_33;
        }

        goto LABEL_15;
      }

      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_70;
      }

      v22 = HIDWORD(v18) - v18;
    }

    sub_22FDB4380(*(v16 - 1), *v16);
    if (v22 != 16)
    {
LABEL_33:
      sub_22FD91780();
      swift_allocError();
      *v35 = 1;
      swift_willThrow();
      sub_22FD917D4(v18, v17);
      sub_22FDBC88C(v65, type metadata accessor for SyncFacesRequestProto);
    }

LABEL_15:
    if (v19 == 2)
    {
      v27 = *(v18 + 16);
      v28 = sub_22FE42654();
      if (!v28)
      {
        goto LABEL_79;
      }

      v29 = v28;
      v30 = sub_22FE42684();
      if (__OFSUB__(v27, v30))
      {
        goto LABEL_72;
      }

      v31 = v27 - v30 + v29;
      sub_22FE42674();
      if (!v31)
      {
        goto LABEL_80;
      }

      v4 = v67;
    }

    else
    {
      if (v19 != 1)
      {
        v32 = v71;
        goto LABEL_28;
      }

      if (v18 > v18 >> 32)
      {
        goto LABEL_71;
      }

      v23 = sub_22FE42654();
      if (!v23)
      {
        goto LABEL_81;
      }

      v24 = v23;
      v25 = sub_22FE42684();
      if (__OFSUB__(v18, v25))
      {
        goto LABEL_73;
      }

      v26 = v18 - v25 + v24;
      sub_22FE42674();
      if (!v26)
      {
        goto LABEL_82;
      }

      v5 = v72;
    }

    v32 = v71;
LABEL_28:
    sub_22FE42894();
    sub_22FD917D4(v18, v17);
    v73 = v15;
    v34 = *(v15 + 16);
    v33 = *(v15 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_22FD922C4((v33 > 1), v34 + 1, 1);
      v15 = v73;
    }

    ++v14;
    *(v15 + 16) = v34 + 1;
    (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34, v32, v4);
    v16 += 2;
    v10 = v70;
    if (v69 == v14)
    {
      a1 = v65;
      v12 = MEMORY[0x277D84F90];
      goto LABEL_34;
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
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  sub_22FE42674();
LABEL_80:
  __break(1u);
LABEL_81:
  sub_22FE42674();
LABEL_82:
  __break(1u);
LABEL_83:
  sub_22FE42674();
LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_22FE42674();
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t SyncFacesRequest.protobuf(version:)(char *a1)
{
  type metadata accessor for SyncFacesRequestProto(0);
  sub_22FDBC978(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto, &protocol conformance descriptor for SyncFacesRequestProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDB82E4(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v54 = sub_22FE428C4();
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  v50 = a1;
  if (v9)
  {
    v48 = a3;
    v64 = MEMORY[0x277D84F90];
    sub_22FD92538(0, v9, 0);
    v10 = v64;
    v49 = v6;
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v51 = *(v11 + 56);
    v52 = v12;
    v53 = v11;
    v14 = (v11 - 8);
    do
    {
      v15 = v54;
      v52(v8, v13, v54);
      v55 = sub_22FE428A4();
      v56 = v16;
      v57 = v17;
      v58 = v18;
      v59 = v19;
      v60 = v20;
      v61 = v21;
      v62 = v22;
      v63 = v23;
      sub_22FE428A4();
      sub_22FE42694();
      swift_allocObject();
      v24 = sub_22FE42644();
      (*v14)(v8, v15);
      v64 = v10;
      v26 = *(v10 + 16);
      v25 = *(v10 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22FD92538((v25 > 1), v26 + 1, 1);
        v10 = v64;
      }

      *(v10 + 16) = v26 + 1;
      v27 = v10 + 16 * v26;
      *(v27 + 32) = 0x1000000000;
      *(v27 + 40) = v24 | 0x4000000000000000;
      v13 += v51;
      --v9;
    }

    while (v9);
    a1 = v50;
    a3 = v48;
    v6 = v49;
  }

  *a1 = v10;
  v28 = *(a3 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v64 = MEMORY[0x277D84F90];
    sub_22FD92538(0, v28, 0);
    v29 = v64;
    v31 = *(v6 + 16);
    v30 = v6 + 16;
    v32 = a3 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v52 = *(v30 + 56);
    v53 = v31;
    v51 = (v30 - 8);
    do
    {
      v33 = v54;
      v34 = v30;
      v53(v8, v32, v54);
      v55 = sub_22FE428A4();
      v56 = v35;
      v57 = v36;
      v58 = v37;
      v59 = v38;
      v60 = v39;
      v61 = v40;
      v62 = v41;
      v63 = v42;
      sub_22FE428A4();
      sub_22FE42694();
      swift_allocObject();
      v43 = sub_22FE42644();
      (*v51)(v8, v33);
      v64 = v29;
      v45 = *(v29 + 16);
      v44 = *(v29 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22FD92538((v44 > 1), v45 + 1, 1);
        v29 = v64;
      }

      *(v29 + 16) = v45 + 1;
      v46 = v29 + 16 * v45;
      *(v46 + 32) = 0x1000000000;
      *(v46 + 40) = v43 | 0x4000000000000000;
      v32 += v52;
      --v28;
      v30 = v34;
    }

    while (v28);
    a1 = v50;
  }

  a1[1] = v29;
  return result;
}

uint64_t sub_22FDB8750(char *a1)
{
  type metadata accessor for SyncFacesRequestProto(0);
  sub_22FDBC978(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto, &protocol conformance descriptor for SyncFacesRequestProto);
  return sub_22FE42C14();
}

uint64_t SyncedPhotosFace.photos.getter(uint64_t a1)
{
  v3 = type metadata accessor for StoredPhoto(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22FE428C4();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + *(a1 + 40));
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v20[0] = a1;
    v20[1] = v1;
    v24 = MEMORY[0x277D84F90];
    sub_22FD922C4(0, v11, 0);
    v12 = v24;
    v13 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    v22 = v7 + 32;
    v23 = v14;
    v15 = v21;
    do
    {
      sub_22FDBC824(v13, v6, type metadata accessor for StoredPhoto);
      (*(v7 + 16))(v9, v6, v15);
      sub_22FDBC88C(v6, type metadata accessor for StoredPhoto);
      v24 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22FD922C4((v16 > 1), v17 + 1, 1);
        v15 = v21;
        v12 = v24;
      }

      *(v12 + 16) = v17 + 1;
      (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v9, v15);
      v13 += v23;
      --v11;
    }

    while (v11);
  }

  v24 = v12;

  sub_22FDAD76C(v18);
  return v24;
}

int *SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  result = type metadata accessor for SyncedPhotosFace(0, a7, a8, v17);
  *(a9 + result[10]) = a3;
  *(a9 + result[9]) = a2;
  *(a9 + result[11]) = a4;
  *(a9 + result[12]) = a5;
  *(a9 + result[13]) = a6;
  return result;
}

uint64_t SyncedPhotosFace.description.getter(uint64_t a1)
{
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000016, 0x800000022FE48100);
  sub_22FE43C84();
  MEMORY[0x23190ACF0](0x736F746F6870202CLL, 0xEC00000028203D20);
  SyncedPhotosFace.photos.getter(a1);

  v3 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v3);

  MEMORY[0x23190ACF0](8236, 0xE200000000000000);
  v4 = *(v1 + *(a1 + 44));
  v5 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v5);

  MEMORY[0x23190ACF0](0x6B63656863202C29, 0xEE00203D206D7573);
  v6 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v6);

  MEMORY[0x23190ACF0](8236, 0xE200000000000000);
  v7 = sub_22FE428C4();
  v8 = MEMORY[0x23190AE90](v4, v7);
  MEMORY[0x23190ACF0](v8);

  MEMORY[0x23190ACF0](32, 0xE100000000000000);
  SyncedPhotosFace.photos.getter(a1);
  v9 = MEMORY[0x23190AE90]();
  v11 = v10;

  MEMORY[0x23190ACF0](v9, v11);

  MEMORY[0x23190ACF0](0x656C706D6F63202CLL, 0xED0000203D206574);
  if (*(v1 + *(a1 + 48)))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v1 + *(a1 + 48)))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x23190ACF0](v12, v13);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return 0;
}

uint64_t SyncedPhotosFace.contentDescription.getter(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22FE428C4();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_22FE438F4();
  v42 = *(v1 + *(a1 + 36));
  v6 = sub_22FE43C24();
  v8 = v7;

  v43 = v6;
  v44 = v8;
  MEMORY[0x23190ACF0](8250, 0xE200000000000000);
  v9 = SyncedPhotosFace.photos.getter(a1);
  v10 = *(v9 + 16);
  if (v10)
  {
    v34 = a1;
    v35 = v2;
    v42 = MEMORY[0x277D84F90];
    sub_22FD92308(0, v10, 0);
    v11 = v42;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = *(v12 + 64);
    v33 = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v37 = *(v12 + 56);
    v38 = v13;
    v36 = (v12 - 8);
    v39 = v12;
    do
    {
      v17 = v40;
      v16 = v41;
      v38(v40, v15, v41);
      sub_22FE42874();
      sub_22FE430E4();
      v18 = sub_22FE43174();
      v20 = v19;
      v22 = v21;
      v24 = v23;

      (*v36)(v17, v16);
      v42 = v11;
      v26 = *(v11 + 16);
      v25 = *(v11 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22FD92308((v25 > 1), v26 + 1, 1);
        v11 = v42;
      }

      *(v11 + 16) = v26 + 1;
      v27 = (v11 + 32 * v26);
      v27[4] = v18;
      v27[5] = v20;
      v27[6] = v22;
      v27[7] = v24;
      v15 += v37;
      --v10;
    }

    while (v10);

    a1 = v34;
    v2 = v35;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v42 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4350, "pi");
  sub_22FDBC930(&qword_27DAE4358, &qword_27DAE4350, "pi", MEMORY[0x277D83970]);
  sub_22FDBBDF8();
  v28 = sub_22FE43234();
  v30 = v29;

  MEMORY[0x23190ACF0](v28, v30);

  MEMORY[0x23190ACF0](0x203A6B68632820, 0xE700000000000000);
  v42 = *(v2 + *(a1 + 52));
  v31 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v31);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v43;
}

BOOL static SyncedPhotosFace.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_22FE43024() & 1) != 0 && (v9 = type metadata accessor for SyncedPhotosFace(0, a3, a4, v8), *(a1 + *(v9 + 36)) == *(a2 + *(v9 + 36))) && (v10 = v9, (sub_22FDB7050(*(a1 + *(v9 + 40)), *(a2 + *(v9 + 40)))) && (sub_22FDB6B20(*(a1 + v10[11]), *(a2 + v10[11])) & 1) != 0 && *(a1 + v10[12]) == *(a2 + v10[12]))
  {
    return *(a1 + v10[13]) == *(a2 + v10[13]);
  }

  else
  {
    return 0;
  }
}

uint64_t SyncedPhotosFace.hash(into:)(uint64_t a1, int *a2)
{
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE42FE4();
  MEMORY[0x23190B9C0](*(v2 + a2[9]));
  sub_22FDBBE84(a1, *(v2 + a2[10]));
  v19 = a2;
  v20 = v2;
  v9 = *(v2 + a2[11]);
  MEMORY[0x23190B9C0](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v11 = v13;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = *(v12 + 56);
    do
    {
      v11(v8, v14, v5);
      sub_22FDBC978(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22FE42FE4();
      (*(v12 - 8))(v8, v5);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  v17 = v19;
  v16 = v20;
  sub_22FE43DD4();
  return MEMORY[0x23190B9C0](*(v16 + v17[13]));
}

uint64_t SyncedPhotosFace.hashValue.getter(int *a1)
{
  sub_22FE43DB4();
  SyncedPhotosFace.hash(into:)(v3, a1);
  return sub_22FE43E04();
}

uint64_t sub_22FDB9520(uint64_t a1, int *a2)
{
  sub_22FE43DB4();
  SyncedPhotosFace.hash(into:)(v4, a2);
  return sub_22FE43E04();
}

uint64_t SyncedPhotosFace.streamify()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + *(v8 + 44));
  v10 = *(v9 + 16);
  v35 = v5;
  if (v10)
  {
    sub_22FE43C34();
    swift_allocObject();
    v36 = sub_22FE432A4();
    v12 = v11;
    (*(v5 + 16))(v7, v2, v4);
    v13 = *(v2 + *(a1 + 36));
    v14 = *(v2 + *(a1 + 52));
    v15 = *(a1 + 24);
    (*(v5 + 32))(v12, v7, v4);
    v37 = v15;
    v17 = type metadata accessor for SyncedPhotosFace(0, v4, v15, v16);
    *(v12 + v17[10]) = MEMORY[0x277D84F90];
    *(v12 + v17[9]) = v13;
    *(v12 + v17[11]) = v9;
    *(v12 + v17[12]) = 0;
    *(v12 + v17[13]) = v14;
    sub_22FE43354();
  }

  else
  {
    v18 = sub_22FE432D4();
    v19 = *(a1 + 24);
    v36 = v18;
    v37 = v19;
  }

  v38 = *(v2 + *(a1 + 40));
  MEMORY[0x28223BE20](v18);
  v20 = v37;
  *(&v34 - 4) = v4;
  *(&v34 - 3) = v20;
  *(&v34 - 2) = v2;

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4370, &qword_22FE4AE88);
  v22 = sub_22FDBC930(&qword_27DAE4378, &qword_27DAE4370, &qword_22FE4AE88, MEMORY[0x277D83988]);
  sub_22FDA5834(sub_22FDBC1A8, (&v34 - 6), v21, a1, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);

  if (*(v2 + *(a1 + 48)) == 1)
  {
    sub_22FE43C34();
    swift_allocObject();
    sub_22FE432A4();
    v25 = v24;
    v26 = v35;
    (*(v35 + 16))(v7, v2, v4);
    v27 = *(v2 + *(a1 + 36));
    v28 = *(v2 + *(a1 + 52));
    (*(v26 + 32))(v25, v7, v4);
    v30 = type metadata accessor for SyncedPhotosFace(0, v4, v37, v29);
    v31 = MEMORY[0x277D84F90];
    *(v25 + v30[10]) = MEMORY[0x277D84F90];
    *(v25 + v30[9]) = v27;
    *(v25 + v30[11]) = v31;
    *(v25 + v30[12]) = 1;
    *(v25 + v30[13]) = v28;
    sub_22FE43354();
  }

  else
  {
    sub_22FE432D4();
  }

  sub_22FE432C4();

  v32 = sub_22FE432C4();

  return v32;
}

uint64_t sub_22FDB99E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a1;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v14 = type metadata accessor for SyncedPhotosFace(0, a3, a4, v13);
  v15 = *(a2 + v14[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40F8, &qword_22FE4B1F0);
  v16 = *(type metadata accessor for StoredPhoto(0) - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FE49F60;
  sub_22FDBC824(v22, v18 + v17, type metadata accessor for StoredPhoto);
  v19 = *(a2 + v14[13]);
  result = (*(v9 + 32))(a5, v12, a3);
  *(a5 + v14[10]) = v18;
  *(a5 + v14[9]) = v15;
  *(a5 + v14[11]) = MEMORY[0x277D84F90];
  *(a5 + v14[12]) = 0;
  *(a5 + v14[13]) = v19;
  return result;
}

uint64_t static SyncedPhotosFace.destreamify(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  type metadata accessor for SyncedPhotosFace(255, a2, a3, v5);
  sub_22FE43354();

  swift_getWitnessTable();
  sub_22FE42F94();

  sub_22FE42FA4();
  swift_getWitnessTable();
  v6 = sub_22FE43214();

  return v6;
}

uint64_t sub_22FDB9D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  swift_getKeyPath();
  v8 = type metadata accessor for SyncedPhotosFace(255, a3, a4, v7);
  sub_22FE43354();

  swift_getWitnessTable();
  v9 = sub_22FE42F94();

  v22 = v9;
  v17 = a3;
  v18 = a4;
  v19 = a1;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = sub_22FDBC8EC;
  v15[5] = &v16;
  v10 = sub_22FE42FA4();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_22FDA5834(sub_22FDBC8F8, v15, v10, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  return v13;
}

int *sub_22FDB9F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v33 = a5;
  v34 = a1;
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v10;
  v12 = type metadata accessor for SyncedPhotosFace(255, v11, v10, v11);
  v13 = sub_22FE43744();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v36 = a2;
  sub_22FE43354();
  swift_getWitnessTable();
  sub_22FE43634();
  v17 = *(v12 - 8);
  if ((*(v17 + 48))(v16, 1, v12) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v32 = -1;
  }

  else
  {
    v32 = *&v16[*(v12 + 52)];
    (*(v17 + 8))(v16, v12);
  }

  v18 = *(v7 + 16);
  v31 = v9;
  v19 = v18(v9, v30, a4);
  v36 = a2;
  MEMORY[0x28223BE20](v19);
  v20 = v35;
  *(&v28 - 2) = a4;
  *(&v28 - 1) = v20;
  v29 = a2;
  v21 = v20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4370, &qword_22FE4AE88);
  v22 = MEMORY[0x277D83970];
  swift_getWitnessTable();
  sub_22FDBC930(&qword_27DAE44A8, &qword_27DAE4370, &qword_22FE4AE88, v22);
  v30 = sub_22FE43214();

  v36 = v29;
  MEMORY[0x28223BE20](v23);
  *(&v28 - 2) = a4;
  *(&v28 - 1) = v21;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44B0, &qword_22FE4B8D0);
  sub_22FDBC930(&qword_27DAE44B8, &qword_27DAE44B0, &qword_22FE4B8D0, v22);
  v24 = sub_22FE43214();

  v25 = v33;
  (*(v7 + 32))(v33, v31, a4);
  result = type metadata accessor for SyncedPhotosFace(0, a4, v35, v26);
  *(v25 + result[10]) = v30;
  *(v25 + result[9]) = v34;
  *(v25 + result[11]) = v24;
  *(v25 + result[12]) = 1;
  *(v25 + result[13]) = v32;
  return result;
}

uint64_t sub_22FDBA374@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  type metadata accessor for SyncedPhotosFace(255, a3, a4, a3);
  sub_22FE43354();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a5 = result;
  return result;
}

int *SyncedPhotosFace.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v77 = a5;
  v11 = sub_22FE428C4();
  v12 = *(v11 - 8);
  v84 = v11;
  v85 = v12;
  MEMORY[0x28223BE20](v11);
  v83 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StoredPhotoProto(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  v20 = type metadata accessor for StoredPhoto(0);
  v88 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a3;
  v78 = *(a3 - 8);
  MEMORY[0x28223BE20](v23);
  v80 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v90) = *a2;
  v82 = a1;
  v25 = a1[2];
  v26 = *(v25 + 16);
  if (!v26)
  {
    v87 = MEMORY[0x277D84F90];
LABEL_11:
    v33 = v82;
    v34 = *v82;
    v35 = v82[1];
    LOBYTE(v92) = v90;
    v36 = *(a4 + 8);
    v37 = *(v36 + 8);
    sub_22FDB4380(v34, v35);
    v38 = v80;
    v39 = v35;
    v40 = a4;
    v41 = v81;
    v37(v34, v39, &v92, v81, v36);
    v88 = v6;
    if (v6)
    {
      sub_22FDBC88C(v33, type metadata accessor for SyncedPhotosFaceProto);
    }

    v79 = v40;
    v43 = type metadata accessor for SyncedPhotosFaceProto(0);
    v44 = v33 + *(v43 + 36);
    if (v44[8])
    {
      v45 = 0;
    }

    else
    {
      v45 = *v44;
    }

    if (v45 < 0)
    {
      goto LABEL_59;
    }

    v46 = v33[3];
    v47 = *(v46 + 16);
    v48 = MEMORY[0x277D84F90];
    if (!v47)
    {
LABEL_48:
      v71 = *(v33 + 32);
      v72 = v33 + *(v43 + 40);
      if (v72[8])
      {
        v73 = -1;
      }

      else
      {
        v73 = *v72;
      }

      sub_22FDBC88C(v33, type metadata accessor for SyncedPhotosFaceProto);
      v74 = v77;
      (*(v78 + 32))(v77, v38, v41);
      result = type metadata accessor for SyncedPhotosFace(0, v41, v79, v75);
      *(v74 + result[10]) = v87;
      *(v74 + result[9]) = v45;
      *(v74 + result[11]) = v48;
      *(v74 + result[12]) = v71;
      *(v74 + result[13]) = v73;
      return result;
    }

    v76 = v43;
    v86 = v45;
    v92 = MEMORY[0x277D84F90];
    sub_22FD922C4(0, v47, 0);
    v49 = 0;
    v48 = v92;
    v89 = v85 + 32;
    v90 = v47;
    v50 = (v46 + 40);
    v51 = v83;
    while (1)
    {
      if (v49 >= *(v46 + 16))
      {
        goto LABEL_53;
      }

      v52 = *(v50 - 1);
      v53 = *v50;
      v54 = *v50 >> 62;
      if (v54 > 1)
      {
        if (v54 != 2)
        {
          goto LABEL_46;
        }

        v56 = *(v52 + 16);
        v55 = *(v52 + 24);
        v57 = v55 - v56;
        if (__OFSUB__(v55, v56))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (!v54)
        {
          if (BYTE6(v53) != 16)
          {
            goto LABEL_46;
          }

          goto LABEL_31;
        }

        if (__OFSUB__(HIDWORD(v52), v52))
        {
          goto LABEL_55;
        }

        v57 = HIDWORD(v52) - v52;
      }

      sub_22FDB4380(*(v50 - 1), *v50);
      if (v57 != 16)
      {
LABEL_46:

        (*(v78 + 8))(v80, v81);
        sub_22FD91780();
        v69 = swift_allocError();
        *v70 = 1;
        v88 = v69;
        swift_willThrow();
        sub_22FD917D4(v52, v53);
        sub_22FDBC88C(v82, type metadata accessor for SyncedPhotosFaceProto);
      }

LABEL_31:
      if (v54 == 2)
      {
        v62 = *(v52 + 16);
        v63 = sub_22FE42654();
        if (!v63)
        {
          goto LABEL_60;
        }

        v64 = v63;
        v65 = sub_22FE42684();
        if (__OFSUB__(v62, v65))
        {
          goto LABEL_57;
        }

        v66 = v62 - v65 + v64;
        sub_22FE42674();
        if (!v66)
        {
          goto LABEL_61;
        }

LABEL_41:
        v51 = v83;
        goto LABEL_42;
      }

      if (v54 == 1)
      {
        if (v52 > v52 >> 32)
        {
          goto LABEL_56;
        }

        v58 = sub_22FE42654();
        if (!v58)
        {
          goto LABEL_62;
        }

        v59 = v58;
        v60 = sub_22FE42684();
        if (__OFSUB__(v52, v60))
        {
          goto LABEL_58;
        }

        v61 = v52 - v60 + v59;
        result = sub_22FE42674();
        if (!v61)
        {
          goto LABEL_63;
        }

        goto LABEL_41;
      }

LABEL_42:
      sub_22FE42894();
      sub_22FD917D4(v52, v53);
      v92 = v48;
      v68 = *(v48 + 16);
      v67 = *(v48 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_22FD922C4((v67 > 1), v68 + 1, 1);
        v48 = v92;
      }

      ++v49;
      *(v48 + 16) = v68 + 1;
      (*(v85 + 32))(v48 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v68, v51, v84);
      v50 += 2;
      if (v90 == v49)
      {
        v41 = v81;
        v33 = v82;
        v38 = v80;
        v45 = v86;
        v43 = v76;
        goto LABEL_48;
      }
    }
  }

  v79 = a4;
  v92 = MEMORY[0x277D84F90];
  v86 = v26;
  sub_22FD92408(0, v26, 0);
  v27 = 0;
  v28 = v92;
  v87 = v25 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  while (v27 < *(v25 + 16))
  {
    sub_22FDBC824(v87 + *(v15 + 72) * v27, v19, type metadata accessor for StoredPhotoProto);
    v29 = v89;
    sub_22FDBC824(v19, v89, type metadata accessor for StoredPhotoProto);
    v91 = v90;
    StoredPhoto.init(protobuf:version:)(v29, &v91, v22);
    if (v6)
    {
      v88 = v6;
      sub_22FDBC88C(v19, type metadata accessor for StoredPhotoProto);
      sub_22FDBC88C(v82, type metadata accessor for SyncedPhotosFaceProto);
    }

    sub_22FDBC88C(v19, type metadata accessor for StoredPhotoProto);
    v92 = v28;
    v31 = *(v28 + 16);
    v30 = *(v28 + 24);
    v32 = v28;
    if (v31 >= v30 >> 1)
    {
      sub_22FD92408((v30 > 1), v31 + 1, 1);
      v32 = v92;
    }

    ++v27;
    *(v32 + 16) = v31 + 1;
    sub_22FDB51B8(v22, v32 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v31, type metadata accessor for StoredPhoto);
    v6 = 0;
    v28 = v32;
    if (v86 == v27)
    {
      v87 = v32;
      a4 = v79;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_22FE42674();
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_22FE42674();
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t SyncedPhotosFace.protobuf(version:)(char *a1, uint64_t a2)
{
  type metadata accessor for SyncedPhotosFaceProto(0);
  sub_22FDBC978(&qword_27DAE4380, type metadata accessor for SyncedPhotosFaceProto, &protocol conformance descriptor for SyncedPhotosFaceProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDBAD84(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v66) = a3;
  v78 = *MEMORY[0x277D85DE8];
  v63 = sub_22FE428C4();
  v56 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoredPhoto(0);
  v64 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for StoredPhotoProto(0);
  v13 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a5;
  v59 = a4;
  v57 = type metadata accessor for SyncedPhotosFace(0, a4, a5, v16);
  v17 = *(a2 + *(v57 + 40));
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  v60 = a2;
  v61 = a1;
  if (v18)
  {
    v68 = MEMORY[0x277D84F90];
    sub_22FD924F4(0, v18, 0);
    v19 = v68;
    v20 = v17 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v64 = *(v64 + 72);
    do
    {
      v21 = sub_22FDBC824(v20, v12, type metadata accessor for StoredPhoto);
      MEMORY[0x28223BE20](v21);
      *(&v56 - 2) = v12;
      *(&v56 - 8) = v66;
      sub_22FDBC978(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
      v22 = v67;
      sub_22FE42C14();
      v67 = v22;
      sub_22FDBC88C(v12, type metadata accessor for StoredPhoto);
      v68 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22FD924F4((v23 > 1), v24 + 1, 1);
        v19 = v68;
      }

      *(v19 + 16) = v24 + 1;
      sub_22FDB51B8(v15, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v24, type metadata accessor for StoredPhotoProto);
      v20 += v64;
      --v18;
    }

    while (v18);
    a2 = v60;
    a1 = v61;
  }

  a1[2] = v19;
  LOBYTE(v68) = v66;
  v25 = v67;
  result = (*(*(v58 + 8) + 16))(&v68, v59);
  if (!v25)
  {
    v28 = result;
    v29 = v27;
    v65 = 0;
    sub_22FD917D4(*a1, a1[1]);
    *a1 = v28;
    a1[1] = v29;
    v30 = v57;
    v31 = *(a2 + *(v57 + 44));
    v32 = *(v31 + 16);
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v77 = MEMORY[0x277D84F90];
      sub_22FD92538(0, v32, 0);
      v33 = v77;
      v34 = *(v56 + 16);
      v35 = v31 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v66 = *(v56 + 72);
      v67 = v34;
      v36 = (v56 + 8);
      do
      {
        v38 = v62;
        v37 = v63;
        v67(v62, v35, v63);
        v68 = sub_22FE428A4();
        v69 = v39;
        v70 = v40;
        v71 = v41;
        v72 = v42;
        v73 = v43;
        v74 = v44;
        v75 = v45;
        v76 = v46;
        sub_22FE428A4();
        sub_22FE42694();
        swift_allocObject();
        v47 = sub_22FE42644();
        (*v36)(v38, v37);
        v77 = v33;
        v49 = *(v33 + 16);
        v48 = *(v33 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_22FD92538((v48 > 1), v49 + 1, 1);
          v33 = v77;
        }

        *(v33 + 16) = v49 + 1;
        v50 = v33 + 16 * v49;
        *(v50 + 32) = 0x1000000000;
        *(v50 + 40) = v47 | 0x4000000000000000;
        v35 += v66;
        --v32;
      }

      while (v32);
      v30 = v57;
    }

    v51 = v61;

    v51[3] = v33;
    v52 = v60;
    *(v51 + 32) = *(v60 + v30[12]);
    v53 = *(v52 + v30[9]);
    if (v53 < 0)
    {
      __break(1u);
    }

    result = type metadata accessor for SyncedPhotosFaceProto(0);
    v54 = v51 + *(result + 36);
    *v54 = v53;
    v54[8] = 0;
    v55 = v51 + *(result + 40);
    *v55 = *(v52 + v30[13]);
    v55[8] = 0;
  }

  return result;
}

Swift::Void __swiftcall SyncedPhotosFace.gather(attachments:version:)(Swift::OpaquePointer *attachments, PhotosFace::ProtocolVersion version)
{
  v4 = v2;
  v5 = version;
  v7 = type metadata accessor for StoredPhoto(0) - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + *(v4 + 40));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *v5;
    v14 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    do
    {
      sub_22FDBC824(v14, v10, type metadata accessor for StoredPhoto);
      v17 = v13;
      StoredPhoto.gather(attachments:version:)(attachments, &v17);
      sub_22FDBC88C(v10, type metadata accessor for StoredPhoto);
      v14 += v15;
      --v12;
    }

    while (v12);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SyncedPhotosFace.save(attachments:version:)(Swift::OpaquePointer attachments, PhotosFace::ProtocolVersion version)
{
  v4 = v3;
  v5 = v2;
  v6 = version;
  v8 = type metadata accessor for StoredPhoto(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v5;
  v12 = *(v5 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  if (qword_27DAE2AC8 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = sub_22FE42D34();
    __swift_project_value_buffer(v17, qword_27DAE5118);
    (*(v12 + 16))(v15, v4, v31);
    v18 = sub_22FE42D14();
    v32 = sub_22FE43684();
    v30 = v18;
    if (os_log_type_enabled(v18, v32))
    {
      v19 = swift_slowAlloc();
      v29 = v4;
      v20 = v19;
      *v19 = 134217984;
      v21 = *(SyncedPhotosFace.photos.getter(v31) + 16);

      v22 = v15;
      v23 = v31;
      (*(v12 + 8))(v22, v31);
      *(v20 + 1) = v21;
      v24 = v30;
      _os_log_impl(&dword_22FD6D000, v30, v32, "Saving %ld photos to disk.", v20, 0xCu);
      v25 = v20;
      v4 = v29;
      MEMORY[0x23190C380](v25, -1, -1);
    }

    else
    {
      v26 = v15;
      v23 = v31;
      (*(v12 + 8))(v26, v31);
      v24 = v30;
    }

    v12 = *&v4[*(v23 + 40)];
    v4 = *(v12 + 16);
    if (!v4)
    {
      break;
    }

    v15 = 0;
    while (v15 < *(v12 + 16))
    {
      sub_22FDBC824(v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v11, type metadata accessor for StoredPhoto);
      v33 = v16;
      StoredPhoto.save(attachments:version:)(attachments, &v33);
      if (v27)
      {
        sub_22FDBC88C(v11, type metadata accessor for StoredPhoto);
        return;
      }

      ++v15;
      sub_22FDBC88C(v11, type metadata accessor for StoredPhoto);
      if (v4 == v15)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }
}

uint64_t static SyncedPhotosFace.faceChecksum(for:)(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = sub_22FE428C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v2);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v40 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v41 = v10;
    v11 = *(v9 + 56);
    v35 = v4 & 0xFFFFFFFFFFFFFFE0;
    v33 = v42 + (v4 & 0xFFFFFFFFFFFFFFE0);
    v32 = v4 & 0x18;
    v34 = &v43;
    v38 = v4 & 0xFFFFFFFFFFFFFFF8;
    v39 = v11;
    v36 = -(v4 & 0xFFFFFFFFFFFFFFF8);
    v37 = v42 + (v4 & 0xFFFFFFFFFFFFFFF8);
    while (1)
    {
      v41(&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39 * v7, v2, v5);
      v42[0] = sub_22FE428A4();
      v42[1] = v12;
      if (v4)
      {
        break;
      }

      v15 = 0;
LABEL_18:
      (*(v9 - 8))(&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
      v29 = __OFADD__(v8, v15);
      v8 += v15;
      if (v29)
      {
        __break(1u);
      }

      if (++v7 == v6)
      {
        return v8;
      }
    }

    if (v4 < 8)
    {
      v13 = 0;
      v14 = v42;
      do
      {
LABEL_16:
        v28 = *v14++;
        v13 ^= v28;
      }

      while (v14 != v42 + v4);
LABEL_17:
      v15 = v13;
      goto LABEL_18;
    }

    if (v4 >= 0x20)
    {
      v17 = 0uLL;
      v18 = v34;
      v16 = v35;
      v19 = v35;
      v20 = 0uLL;
      do
      {
        v17 = veorq_s8(v18[-1], v17);
        v20 = veorq_s8(*v18, v20);
        v18 += 2;
        v19 -= 32;
      }

      while (v19);
      v21 = veorq_s8(v20, v17);
      *v21.i8 = veor_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
      v22 = v21.i64[0] ^ HIDWORD(v21.i64[0]) ^ ((v21.i64[0] ^ HIDWORD(v21.i64[0])) >> 16);
      v13 = v22 ^ BYTE1(v22);
      if (v4 == v35)
      {
        goto LABEL_17;
      }

      v14 = v33;
      if (!v32)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
      v16 = 0;
    }

    v23 = v13;
    v24 = (v42 + v16);
    v25 = v36 + v16;
    do
    {
      v26 = *v24++;
      v23 = veor_s8(v26, v23);
      v25 += 8;
    }

    while (v25);
    v27 = *&v23 ^ HIDWORD(*&v23) ^ ((*&v23 ^ HIDWORD(*&v23)) >> 16);
    v13 = v27 ^ BYTE1(v27);
    v14 = v37;
    if (v4 == v38)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return 0;
}

unint64_t SyncedPhotosFace.Failure.description.getter()
{
  v1 = *v0;
  sub_22FE438F4();

  v2 = sub_22FE428C4();
  v3 = MEMORY[0x23190AE90](v1, v2);
  MEMORY[0x23190ACF0](v3);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_22FDBBBC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22FE42654();
    if (v10)
    {
      v11 = sub_22FE42684();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22FE42674();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22FE42654();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22FE42684();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22FE42674();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_22FDBBDF8()
{
  result = qword_27DAE4360;
  if (!qword_27DAE4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4360);
  }

  return result;
}

uint64_t sub_22FDBBE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhoto(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x23190B9C0](v9, v6);
  if (v9)
  {
    v11 = v4[5];
    v24 = v4[6];
    v25 = v11;
    v12 = v4[8];
    v23 = v4[7];
    v13 = &v8[v12];
    v14 = v4[10];
    v15 = &v8[v4[9]];
    v16 = v4[12];
    v21 = v4[11];
    v22 = v14;
    v17 = &v8[v16];
    v18 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    do
    {
      sub_22FDBC824(v18, v8, type metadata accessor for StoredPhoto);
      sub_22FE428C4();
      sub_22FDBC978(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22FE42FE4();
      sub_22FE42854();
      sub_22FDBC978(&qword_27DAE44C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_22FE42FE4();
      sub_22FE42FE4();
      v19 = *&v8[v23];
      if (v19 == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x23190B9F0](*&v19);
      if (*(v13 + 1))
      {
        sub_22FE43DD4();
        sub_22FE430D4();
        if (!*(v15 + 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_22FE43DD4();
        if (!*(v15 + 1))
        {
LABEL_11:
          sub_22FE43DD4();
          goto LABEL_12;
        }
      }

      sub_22FE43DD4();
      sub_22FE430D4();
LABEL_12:
      MEMORY[0x23190B9C0](*&v8[v22]);
      sub_22FDDFDF8(a1, *&v8[v21]);
      if (*(v17 + 1))
      {
        sub_22FE43DD4();
        sub_22FE430D4();
      }

      else
      {
        sub_22FE43DD4();
      }

      result = sub_22FDBC88C(v8, type metadata accessor for StoredPhoto);
      v18 += v20;
      --v9;
    }

    while (v9);
  }

  return result;
}

unint64_t sub_22FDBC248()
{
  result = qword_27DAE4388[0];
  if (!qword_27DAE4388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAE4388);
  }

  return result;
}

void sub_22FDBC358(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_22FDBC774(319, &qword_27DAE4410, type metadata accessor for StoredPhoto);
    if (v2 <= 0x3F)
    {
      sub_22FDBC774(319, qword_27DAE4418, MEMORY[0x277CC95F0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FDBC448(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_22FDBC59C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_22FDBC774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22FE43354();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22FDBC7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FDBC824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDBC88C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FDBC930(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FDBC978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AlbumID.init(id:album:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22FE428C4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AlbumID(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t type metadata accessor for AlbumID(uint64_t a1)
{
  result = qword_28148B078;
  if (!qword_28148B078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlbumID.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AlbumID.album.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlbumID(0) + 20));

  return v1;
}

uint64_t static AlbumID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AlbumID(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_22FE43CB4();
}

uint64_t AlbumID.hash(into:)(uint64_t a1)
{
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  type metadata accessor for AlbumID(0);

  return sub_22FE430D4();
}

uint64_t AlbumID.hashValue.getter()
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  type metadata accessor for AlbumID(0);
  sub_22FE430D4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBCD2C(uint64_t a1)
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  sub_22FE430D4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBCDD4(uint64_t a1, uint64_t a2)
{
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();

  return sub_22FE430D4();
}

uint64_t sub_22FDBCE70(uint64_t a1, uint64_t a2)
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  sub_22FE430D4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBCF14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22FDBCF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_22FE43CB4();
}

uint64_t AlbumID.description.getter()
{
  sub_22FE438F4();

  strcpy(v4, "AlbumID(id: ");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v1);

  MEMORY[0x23190ACF0](0x3A6D75626C61202CLL, 0xE900000000000020);
  v2 = type metadata accessor for AlbumID(0);
  MEMORY[0x23190ACF0](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v4[0];
}

uint64_t AlbumID.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v9) = *a2;
  v11 = a1[2];
  v12 = a1[3];
  v17[15] = v9;
  sub_22FDB4380(v11, v12);
  UUID.init(serialized:version:)(v11, v12);
  if (v3)
  {
    return sub_22FDBD278(a1);
  }

  v15 = *a1;
  v14 = a1[1];

  sub_22FDBD278(a1);
  (*(v8 + 32))(a3, v10, v7);
  result = type metadata accessor for AlbumID(0);
  v16 = (a3 + *(result + 20));
  *v16 = v15;
  v16[1] = v14;
  return result;
}

uint64_t sub_22FDBD278(uint64_t a1)
{
  v2 = type metadata accessor for AlbumIDProto(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AlbumID.protobuf(version:)(char *a1)
{
  type metadata accessor for AlbumIDProto(0);
  sub_22FDBD504(&qword_27DAE44C8, type metadata accessor for AlbumIDProto, "i3=RЙ");
  return sub_22FE42C14();
}

uint64_t sub_22FDBD380(void *a1, uint64_t a2, char a3)
{
  v5 = (a2 + *(type metadata accessor for AlbumID(0) + 20));
  v7 = *v5;
  v6 = v5[1];

  *a1 = v7;
  a1[1] = v6;
  v12 = a3;
  v8 = UUID.serialized(version:)(&v12);
  v10 = v9;
  result = sub_22FD917D4(a1[2], a1[3]);
  a1[2] = v8;
  a1[3] = v10;
  return result;
}

uint64_t sub_22FDBD480(uint64_t a1)
{
  *(a1 + 16) = sub_22FDBD504(&qword_28148B088, type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  result = sub_22FDBD504(&qword_28148B098, type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22FDBD504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FDBD594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_22FE428C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *a2;
  v13 = a1[2];
  v14 = a1[3];
  v20 = v11;
  sub_22FDB4380(v13, v14);
  UUID.init(serialized:version:)(v13, v14);
  if (v4)
  {
    return sub_22FDBD278(a1);
  }

  v17 = *a1;
  v16 = a1[1];

  sub_22FDBD278(a1);
  result = (*(v10 + 32))(a4, v12, v9);
  v18 = (a4 + *(a3 + 20));
  *v18 = v17;
  v18[1] = v16;
  return result;
}

uint64_t sub_22FDBD6E4(char *a1)
{
  type metadata accessor for AlbumIDProto(0);
  sub_22FDBD504(&qword_27DAE44C8, type metadata accessor for AlbumIDProto, "i3=RЙ");
  return sub_22FE42C14();
}

uint64_t sub_22FDBD7C4(uint64_t a1)
{
  result = sub_22FE428C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DailyID.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FE428C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t DailyID.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DailyID.hash(into:)(uint64_t a1)
{
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_22FE42FE4();
}

uint64_t DailyID.hashValue.getter()
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBDA34()
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBDABC(uint64_t a1)
{
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_22FE42FE4();
}

uint64_t sub_22FDBDB40(uint64_t a1)
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t DailyID.description.getter()
{
  strcpy(v2, "DailyID(id: ");
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v0);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_22FDBDC80()
{
  strcpy(v2, "DailyID(id: ");
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v0);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v2[0];
}

uint64_t DailyID.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v9) = *a2;
  v11 = *a1;
  v12 = a1[1];
  v14[15] = v9;
  sub_22FDB4380(v11, v12);
  UUID.init(serialized:version:)(v11, v12);
  result = sub_22FDBDE5C(a1);
  if (!v3)
  {
    return (*(v8 + 32))(a3, v10, v7);
  }

  return result;
}

uint64_t sub_22FDBDE5C(uint64_t a1)
{
  v2 = type metadata accessor for DailyIDProto(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DailyID.protobuf(version:)(char *a1)
{
  type metadata accessor for DailyIDProto(0);
  sub_22FDBE094(&qword_27DAE44D0, type metadata accessor for DailyIDProto, &protocol conformance descriptor for DailyIDProto);
  return sub_22FE42C14();
}

uint64_t type metadata accessor for DailyID(uint64_t a1)
{
  result = qword_28148AFA8;
  if (!qword_28148AFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDBE010(uint64_t a1)
{
  *(a1 + 16) = sub_22FDBE094(&qword_28148AFE0, type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  result = sub_22FDBE094(qword_28148AFF0, type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22FDBE094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FDBE124@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v9) = *a2;
  v11 = *a1;
  v12 = a1[1];
  v14[15] = v9;
  sub_22FDB4380(v11, v12);
  UUID.init(serialized:version:)(v11, v12);
  result = sub_22FDBDE5C(a1);
  if (!v3)
  {
    return (*(v8 + 32))(a3, v10, v7);
  }

  return result;
}

uint64_t sub_22FDBE248(char *a1)
{
  type metadata accessor for DailyIDProto(0);
  sub_22FDBE094(&qword_27DAE44D0, type metadata accessor for DailyIDProto, &protocol conformance descriptor for DailyIDProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDBE328(uint64_t a1)
{
  result = sub_22FE428C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FDBE394(uint64_t a1)
{
  v7 = *(v1 + 24);
  v3 = UUID.serialized(version:)(&v7);
  v5 = v4;
  result = sub_22FD917D4(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t PhotosFaceType.description.getter(unsigned __int8 a1)
{
  v1 = 0x6D75626C61;
  v2 = 0x7972656C6C6167;
  if (a1 != 2)
  {
    v2 = 0x796C696164;
  }

  if (a1)
  {
    v1 = 0x656C6666756873;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22FDBE494(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6D75626C61;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x7972656C6C6167;
  if (v3 != 2)
  {
    v6 = 0x796C696164;
    v5 = 0xE500000000000000;
  }

  v7 = 0x656C6666756873;
  if (*a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v7 = 0x6D75626C61;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE500000000000000;
  v11 = 0xE700000000000000;
  v12 = 0x7972656C6C6167;
  if (*a2 != 2)
  {
    v12 = 0x796C696164;
    v11 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x656C6666756873;
    v10 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_22FE43CB4();
  }

  return v15 & 1;
}

unint64_t sub_22FDBE5CC@<X0>(Swift::String *a1@<X0>, PhotosFace::PhotosFaceType_optional *a2@<X8>)
{
  result = _s10PhotosFace0aB4TypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_22FDBE5FC(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6D75626C61;
  v4 = 0xE700000000000000;
  v5 = 0x7972656C6C6167;
  if (*v1 != 2)
  {
    v5 = 0x796C696164;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C6666756873;
    v2 = 0xE700000000000000;
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

uint64_t sub_22FDBE674()
{
  sub_22FE43DB4();
  sub_22FE430D4();

  return sub_22FE43E04();
}

uint64_t sub_22FDBE730(uint64_t a1)
{
  sub_22FE430D4();
}

uint64_t sub_22FDBE7D8(uint64_t a1)
{
  sub_22FE43DB4();
  sub_22FE430D4();

  return sub_22FE43E04();
}

uint64_t sub_22FDBE890()
{
  v1 = 0x6D75626C61;
  v2 = 0x7972656C6C6167;
  if (*v0 != 2)
  {
    v2 = 0x796C696164;
  }

  if (*v0)
  {
    v1 = 0x656C6666756873;
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

unint64_t _s10PhotosFace0aB4TypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22FE43B34();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22FDBE964()
{
  result = qword_27DAE44D8;
  if (!qword_27DAE44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE44D8);
  }

  return result;
}

unint64_t sub_22FDBE9BC()
{
  result = qword_27DAE44E0;
  if (!qword_27DAE44E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE44E8, &qword_22FE4B4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE44E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosFaceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PhotosFaceType(uint64_t result, unsigned int a2, unsigned int a3)
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

int *ShuffleID.init(id:people:pets:nature:cityscape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_22FE428C4();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for ShuffleID(0);
  *(a6 + result[5]) = a2;
  *(a6 + result[6]) = a3;
  *(a6 + result[7]) = a4;
  *(a6 + result[8]) = a5;
  return result;
}

uint64_t type metadata accessor for ShuffleID(uint64_t a1)
{
  result = qword_28148AF28;
  if (!qword_28148AF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShuffleID.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ShuffleID.people.getter()
{
  type metadata accessor for ShuffleID(0);
}

int *ShuffleID.init(people:pets:nature:cityscape:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v44 = a4;
  v45 = a2;
  v46 = a3;
  v52[5] = *MEMORY[0x277D85DE8];
  v7 = sub_22FE42EF4();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FE430A4();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22FE42F24();
  v40 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE42F14();
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = sub_22FDC04C4(*(a1 + 16), 0);
    v47 = sub_22FDC1C54(v52, v14 + 4, v13, a1);
    v15 = v52[0];

    sub_22FDAF1A8(v15);
    if (v47 == v13)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_5:
  v38 = a1;
  v39 = a5;
  v52[0] = v14;
  sub_22FDC117C(v52);
  v37 = 0;
  v16 = v52[0];
  v17 = *(v52[0] + 2);
  if (v17)
  {
    v18 = 0;
    v19 = (v48 + 8);
    v20 = v52[0] + 40;
    v47 = *(v52[0] + 2);
    v48 = v52[0];
    do
    {
      if (v18 >= *(v16 + 2))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      sub_22FE43094();
      v21 = sub_22FE43074();
      v23 = v22;
      (*v19)(v11, v49);
      if (v23 >> 60 == 15)
      {
        goto LABEL_39;
      }

      v24 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v24 == 2)
        {
          v26 = *(v21 + 16);
          v25 = *(v21 + 24);

          if (sub_22FE42654() && __OFSUB__(v26, sub_22FE42684()))
          {
            goto LABEL_37;
          }

          if (__OFSUB__(v25, v26))
          {
            goto LABEL_36;
          }

LABEL_23:
          sub_22FE42674();
          sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          sub_22FE42ED4();
          sub_22FD6F3DC(v21, v23);
          sub_22FD6F3DC(v21, v23);
          v17 = v47;
          v16 = v48;
          goto LABEL_9;
        }

        sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        memset(v52, 0, 14);
      }

      else
      {
        if (v24)
        {
          if (v21 >> 32 < v21)
          {
            goto LABEL_35;
          }

          if (sub_22FE42654() && __OFSUB__(v21, sub_22FE42684()))
          {
            goto LABEL_38;
          }

          goto LABEL_23;
        }

        v52[0] = v21;
        LOWORD(v52[1]) = v23;
        BYTE2(v52[1]) = BYTE2(v23);
        BYTE3(v52[1]) = BYTE3(v23);
        BYTE4(v52[1]) = BYTE4(v23);
        BYTE5(v52[1]) = BYTE5(v23);
        sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      }

      sub_22FE42ED4();
      sub_22FD6F3DC(v21, v23);
      sub_22FD6F3DC(v21, v23);
LABEL_9:
      v18 = (v18 + 1);
      v20 += 16;
    }

    while (v17 != v18);
  }

  if (v45)
  {
    v27 = v44;
    if (v44)
    {
      v28 = 3;
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v27 = v44;
    if (v44)
    {
      v28 = 2;
    }

    else
    {
      v28 = 0;
    }
  }

  if (v46)
  {
    v28 |= 4u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41E8, &qword_22FE4A2D8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22FE49F60;
  *(v29 + 32) = v28;
  v30 = sub_22FDC22A8(v29);
  v32 = v31;

  v33 = v50;
  sub_22FDC089C(v30, v32, v50);
  sub_22FD917D4(v30, v32);
  v34 = v41;
  sub_22FE42F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44F8, &qword_22FE4B960);
  sub_22FE42EE4();
  v35 = v39;
  sub_22FE42894();
  (*(v42 + 8))(v34, v43);
  (*(v40 + 8))(v33, v51);
  result = type metadata accessor for ShuffleID(0);
  *(v35 + result[5]) = v38;
  *(v35 + result[6]) = v45 & 1;
  *(v35 + result[7]) = v46 & 1;
  *(v35 + result[8]) = v27 & 1;
  return result;
}

uint64_t sub_22FDBF4C0(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4508, &qword_22FE4B638);
  if (swift_dynamicCast())
  {
    sub_22FD72C14(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_22FE426A4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_22FDC2640(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22FE43994();
  }

  sub_22FDC0B5C(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_22FDC2108(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_22FDC0C24(sub_22FDC26A8, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_22FE427B4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_22FDC1F08(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22FE43124();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22FE43154();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22FE43994();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_22FDC1F08(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22FE43134();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_22FE427C4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_22FE427C4();
    sub_22FD6F3DC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_22FD6F3DC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_22FDB4380(*&__src[0], *(&__src[0] + 1));

  sub_22FD917D4(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_22FDBF9D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_22FE43DB4();

    sub_22FE430D4();
    v16 = sub_22FE43E04();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_22FE43CB4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShuffleID.hash(into:)(__int128 *a1)
{
  sub_22FE428C4();
  sub_22FDC24A0(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  v3 = type metadata accessor for ShuffleID(0);
  sub_22FDC1DAC(a1, *(v1 + *(v3 + 20)));
  sub_22FE43DD4();
  sub_22FE43DD4();
  return sub_22FE43DD4();
}

uint64_t ShuffleID.hashValue.getter()
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDC24A0(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  v1 = type metadata accessor for ShuffleID(0);
  sub_22FDC1DAC(v3, *(v0 + *(v1 + 20)));
  sub_22FE43DD4();
  sub_22FE43DD4();
  sub_22FE43DD4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBFD34(uint64_t a1, int *a2)
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDC24A0(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  sub_22FDC1DAC(v5, *(v2 + a2[5]));
  sub_22FE43DD4();
  sub_22FE43DD4();
  sub_22FE43DD4();
  return sub_22FE43E04();
}

uint64_t ShuffleID.description.getter()
{
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0x49656C6666756853, 0xEE00203A64692844);
  sub_22FE428C4();
  sub_22FDC24A0(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v1);

  MEMORY[0x23190ACF0](0x3A656C706F657020, 0xE900000000000020);
  v2 = type metadata accessor for ShuffleID(0);
  v3 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v3);

  MEMORY[0x23190ACF0](0x203A73746570202CLL, 0xE800000000000000);
  if (*(v0 + v2[6]))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + v2[6]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x23190ACF0](v4, v5);

  MEMORY[0x23190ACF0](0x65727574616E202CLL, 0xEA0000000000203ALL);
  if (*(v0 + v2[7]))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + v2[7]))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x23190ACF0](v6, v7);

  MEMORY[0x23190ACF0](0x203A79746963202CLL, 0xE800000000000000);
  if (*(v0 + v2[8]))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + v2[8]))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x23190ACF0](v8, v9);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return 0;
}

int *ShuffleID.init(protobuf:version:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *a2;
  v11 = *a1;
  v12 = *(a1 + 8);
  v20 = v9;
  sub_22FDB4380(v11, v12);
  UUID.init(serialized:version:)(v11, v12);
  if (v3)
  {
    return sub_22FDC2358(a1);
  }

  v19 = sub_22FDC2070(v14);

  v15 = *(a1 + 24);
  v16 = *(a1 + 25);
  v17 = *(a1 + 26);
  sub_22FDC2358(a1);
  (*(v8 + 32))(a3, v10, v7);
  result = type metadata accessor for ShuffleID(0);
  *(a3 + result[5]) = v19;
  *(a3 + result[6]) = v15;
  *(a3 + result[7]) = v16;
  *(a3 + result[8]) = v17;
  return result;
}

uint64_t ShuffleID.protobuf(version:)(char *a1)
{
  type metadata accessor for ShuffleIDProto(0);
  sub_22FDC24A0(&qword_27DAE4500, type metadata accessor for ShuffleIDProto, &protocol conformance descriptor for ShuffleIDProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDC02A4(uint64_t a1, uint64_t a2, char a3)
{
  LOBYTE(v14) = a3;
  v5 = UUID.serialized(version:)(&v14);
  v7 = v6;
  sub_22FD917D4(*a1, *(a1 + 8));
  *a1 = v5;
  *(a1 + 8) = v7;
  v8 = type metadata accessor for ShuffleID(0);
  v9 = *(a2 + v8[5]);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_5:

    *(a1 + 16) = v11;
    *(a1 + 26) = *(a2 + v8[8]);
    *(a1 + 25) = *(a2 + v8[7]);
    *(a1 + 24) = *(a2 + v8[6]);
    return result;
  }

  v11 = sub_22FDC04C4(v10, 0);
  v15 = sub_22FDC1C54(&v14, v11 + 4, v10, v9);
  v12 = v14;

  result = sub_22FDAF1A8(v12);
  if (v15 == v10)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDC040C(char *a1)
{
  type metadata accessor for ShuffleIDProto(0);
  sub_22FDC24A0(&qword_27DAE4500, type metadata accessor for ShuffleIDProto, &protocol conformance descriptor for ShuffleIDProto);
  return sub_22FE42C14();
}

void *sub_22FDC04C4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40E0, &qword_22FE4A100);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22FDC0548(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4140, &qword_22FE4A150);
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

uint64_t sub_22FDC05CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22FE43DB4();
  sub_22FE430D4();
  v8 = sub_22FE43E04();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22FE43CB4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22FDC071C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22FDC071C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22FE3E344(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22FE3D390();
      goto LABEL_16;
    }

    sub_22FE3D9BC(v8 + 1);
  }

  v10 = *v4;
  sub_22FE43DB4();
  sub_22FE430D4();
  result = sub_22FE43E04();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22FE43CB4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22FE43D04();
  __break(1u);
  return result;
}

uint64_t sub_22FDC089C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22FE42F24();
      sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22FE42ED4();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22FDC0A7C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22FDC0A7C(v5, v6);
  }

  sub_22FE42F24();
  sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_22FE42ED4();
}

uint64_t sub_22FDC0A7C(uint64_t a1, uint64_t a2)
{
  result = sub_22FE42654();
  if (!result || (result = sub_22FE42684(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22FE42674();
      sub_22FE42F24();
      sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22FE42ED4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_22FDC0B5C@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_22FE088C0(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22FE42694();
      swift_allocObject();
      v8 = sub_22FE42644();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_22FE427A4();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_22FDC0C24(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_22FD917D4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22FD917D4(v7, v6);
    *v4 = xmmword_22FE4B510;
    sub_22FD917D4(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_22FE42654() && __OFSUB__(v7, sub_22FE42684()))
      {
LABEL_26:
        __break(1u);
      }

      sub_22FE42694();
      swift_allocObject();
      v14 = sub_22FE42634();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_22FDC10C8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_22FD917D4(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_22FE4B510;
    sub_22FD917D4(0, 0xC000000000000000);
    sub_22FE42784();
    result = sub_22FDC10C8(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_22FDC0FC8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22FE088C0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22FDC21A8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22FDC2224(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_22FDC105C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_22FDC10C8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22FE42654();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22FE42684();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22FE42674();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_22FDC117C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22FE3CEC4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22FDC11E8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22FDC11E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22FE43C14();
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
        v5 = sub_22FE432E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22FDC13B0(v7, v8, a1, v4);
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
    return sub_22FDC12E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22FDC12E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22FE43CB4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FDC13B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22FDC1C40(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22FDC198C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22FE43CB4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22FE43CB4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22FD91DA4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22FD91DA4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
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

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22FDC198C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22FDC1C40(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22FDC1BB4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22FE43CB4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
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

uint64_t sub_22FDC198C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22FE43CB4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22FE43CB4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_22FDC1BB4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FDC1C40(v3);
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

void *sub_22FDC1C54(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22FDC1DAC(__int128 *a1, uint64_t a2)
{
  sub_22FE43E04();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x23190B9C0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_22FE43DB4();

        sub_22FE430D4();
        v11 = sub_22FE43E04();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22FDC1F08(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22FE43164();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23190AD40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}