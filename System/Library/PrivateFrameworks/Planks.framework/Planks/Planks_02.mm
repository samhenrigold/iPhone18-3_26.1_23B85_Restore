uint64_t sub_25E81A0B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E81A0F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_25E81A194(uint64_t a1)
{
  result = sub_25E81A1BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E81A1BC()
{
  result = qword_27FD076F0;
  if (!qword_27FD076F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD076F0);
  }

  return result;
}

unint64_t sub_25E81A21C(uint64_t a1)
{
  result = sub_25E81A244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E81A244()
{
  result = qword_27FD076F8;
  if (!qword_27FD076F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD076F8);
  }

  return result;
}

unint64_t sub_25E81A2D4(uint64_t a1)
{
  result = sub_25E81A2FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E81A2FC()
{
  result = qword_27FD07700;
  if (!qword_27FD07700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07700);
  }

  return result;
}

unint64_t sub_25E81A394(uint64_t a1)
{
  result = sub_25E81A3BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E81A3BC()
{
  result = qword_27FD07708;
  if (!qword_27FD07708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07708);
  }

  return result;
}

uint64_t PlanksWriter.writeBatch<A>(_:label:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  (*(a5 + 8))(&v62, a4, a5);
  v59 = v62;
  v58 = sub_25E829F1C();

  v9 = sub_25E816820();
  if (v9[2])
  {
    v10 = sub_25E800EB4(a2, a3);
    if (v11)
    {
      v12 = v9[7] + 32 * v10;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);

      v62 = v14;
      *&v63 = v13;
      BYTE8(v63) = v15;
      v64 = v16;
      *v60 = a2;
      *&v60[8] = a3;
      v60[16] = v59;
      *&v60[24] = v58;
      if (!_s6Planks13SchemaElementV2eeoiySbAC_ACtFZ_0(&v62, v60, v17))
      {
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v44 = sub_25E829CDC();
        __swift_project_value_buffer(v44, qword_27FD0A4B0);
        swift_bridgeObjectRetain_n();

        v34 = sub_25E829CBC();
        v45 = sub_25E82A02C();

        swift_bridgeObjectRelease_n();
        if (!os_log_type_enabled(v34, v45))
        {

          goto LABEL_26;
        }

        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v62 = v47;
        *v46 = 136315650;
        *(v46 + 4) = sub_25E7FFAF0(a2, a3, &v62);
        *(v46 + 12) = 2080;
        v48 = sub_25E7FED8C(v14, v13, v15, v16);
        v50 = v49;

        v51 = sub_25E7FFAF0(v48, v50, &v62);

        *(v46 + 14) = v51;
        *(v46 + 22) = 2080;
        v52 = sub_25E7FED8C(a2, a3, v59, v58);
        v54 = v53;

        v55 = sub_25E7FFAF0(v52, v54, &v62);

        *(v46 + 24) = v55;
        _os_log_impl(&dword_25E7F6000, v34, v45, "Invalid batch label: %s with existing schema: %s vs %s", v46, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v47, -1, -1);
        v38 = v46;
LABEL_24:
        MEMORY[0x25F8C1620](v38, -1, -1);
LABEL_26:

        return 0;
      }
    }
  }

  MEMORY[0x28223BE20](v18);
  v56[0] = v6;
  v56[1] = a2;
  v57 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07418, &qword_25E82AE08);
  sub_25E829EBC();
  v19 = v62;
  v21 = v63;
  v20 = v64;
  *v60 = v65[0];
  *&v60[10] = *(v65 + 10);
  if (!v63)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v33 = sub_25E829CDC();
    __swift_project_value_buffer(v33, qword_27FD0A4B0);

    v34 = sub_25E829CBC();
    v35 = sub_25E82A02C();

    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_26;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v62 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_25E7FFAF0(a2, a3, &v62);
    _os_log_impl(&dword_25E7F6000, v34, v35, "Failed at writing batch: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x25F8C1620](v37, -1, -1);
    v38 = v36;
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073C0, &qword_25E82AD90);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25E82A940;
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;
  *(v22 + 56) = v20;
  *(v22 + 64) = *v60;
  *(v22 + 74) = *&v60[10];
  v23 = v6 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v24 = *(v23 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 16) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_25E7FF8C4(0, *(v24 + 2) + 1, 1, v24);
    *(v23 + 16) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    sub_25E7FF8C4((v26 > 1), v27 + 1, 1, v24);
  }

  *(v21 + 16) = v27 + 1;
  v28 = v21 + 40 * v27;
  *(v28 + 32) = 1;
  *(v28 + 40) = v22;
  *(v28 + 48) = *(&v21 + 1);
  *(v28 + 56) = v20;
  *(v28 + 64) = 1;
  *(v23 + 16) = v21;
  swift_endAccess();
  v29 = *(v23 + 24);
  v62 = *v23;
  v63 = *(v23 + 8);
  v64 = v29;
  v30 = FileMetadata.fieldNames.getter();
  v61[0] = a2;
  v61[1] = a3;
  MEMORY[0x28223BE20](v30);
  v57 = v61;
  v31 = sub_25E8073B0(sub_25E81A090, v56, v30);

  if (v31)
  {

    return 1;
  }

  else
  {
    swift_beginAccess();
    v39 = *(v23 + 8);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 8) = v39;
    if ((v40 & 1) == 0)
    {
      v39 = sub_25E7FF7B8(0, *(v39 + 2) + 1, 1, v39);
      *(v23 + 8) = v39;
    }

    v42 = *(v39 + 2);
    v41 = *(v39 + 3);
    if (v42 >= v41 >> 1)
    {
      v39 = sub_25E7FF7B8((v41 > 1), v42 + 1, 1, v39);
    }

    *(v39 + 2) = v42 + 1;
    v43 = &v39[32 * v42];
    *(v43 + 4) = a2;
    *(v43 + 5) = a3;
    v43[48] = v59;
    *(v43 + 7) = v58;
    *(v23 + 8) = v39;
    swift_endAccess();
    return 1;
  }
}

uint64_t PlanksWriter.writeArray<A>(_:label:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v11 = *(v10 + 24);
  v42 = *v10;
  v43 = *(v10 + 8);
  v44 = v11;
  v12 = FileMetadata.fieldNames.getter();
  *&v46[0] = a2;
  *(&v46[0] + 1) = a3;
  v41 = v46;
  v13 = sub_25E8073B0(sub_25E81B6CC, v40, v12);

  if (v13)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v15 = sub_25E829CDC();
    __swift_project_value_buffer(v15, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a2, a3, &v42);
    v20 = "Invalid array label: %s";
LABEL_20:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_21:

    return 0;
  }

  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07418, &qword_25E82AE08);
  sub_25E829EBC();
  v21 = v43;
  v39 = v44;
  v46[0] = v45[0];
  *(v46 + 10) = *(v45 + 10);
  if (!v43)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v36 = sub_25E829CDC();
    __swift_project_value_buffer(v36, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a2, a3, &v42);
    v20 = "Failed at writing array: %s";
    goto LABEL_20;
  }

  v38 = v42;
  (*(a5 + 8))(&v42, a4, a5);
  v22 = v42;
  v23 = sub_25E829F1C();
  swift_beginAccess();
  v24 = *(v10 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 8) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_25E7FF7B8(0, *(v24 + 2) + 1, 1, v24);
    *(v10 + 8) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_25E7FF7B8((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[32 * v27];
  *(v28 + 4) = a2;
  *(v28 + 5) = a3;
  v28[48] = v22;
  *(v28 + 7) = v23;
  *(v10 + 8) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073C0, &qword_25E82AD90);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_25E82A940;
  *(v29 + 32) = v38;
  *(v29 + 40) = v21;
  *(v29 + 56) = v39;
  *(v29 + 64) = v46[0];
  *(v29 + 74) = *(v46 + 10);
  v30 = *(v10 + 16);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 16) = v30;
  if ((v31 & 1) == 0)
  {
    v30 = sub_25E7FF8C4(0, *(v30 + 2) + 1, 1, v30);
    *(v10 + 16) = v30;
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v30 = sub_25E7FF8C4((v32 > 1), v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  v34 = &v30[40 * v33];
  v35 = 1;
  v34[32] = 1;
  *(v34 + 5) = v29;
  *(v34 + 6) = *(&v21 + 1);
  *(v34 + 7) = v39;
  *(v34 + 8) = 1;
  *(v10 + 16) = v30;
  swift_endAccess();
  return v35;
}

uint64_t sub_25E81B0B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t), const char *a12)
{
  v71[0] = a1;
  v18 = sub_25E829F4C();
  WitnessTable = swift_getWitnessTable();
  computeQuantizationParameters<A, B, C>(_:upperbound:)(v71, a4, a6, a5, v18, a9, a10, a7, &v72, a8, WitnessTable);
  v20 = v72;
  v21 = BYTE1(v73);
  v71[0] = a1;
  v64 = v73;
  v22 = quantizeArray<A, B, C>(_:parameters:)(v71, &v72, a6, a5, v18, a9, a10, a7);
  if (!v22)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v30 = sub_25E829CDC();
    __swift_project_value_buffer(v30, qword_27FD0A4B0);

    v31 = sub_25E829CBC();
    v32 = sub_25E82A02C();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_15;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v72 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_25E7FFAF0(a2, a3, &v72);
    _os_log_impl(&dword_25E7F6000, v31, v32, a12, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x25F8C1620](v34, -1, -1);
    v35 = v33;
    goto LABEL_14;
  }

  v23 = a2;
  v24 = a11(v22, a2);

  v25 = a3;
  if ((v24 & 1) == 0)
  {
LABEL_11:
    if (qword_27FD072A0 == -1)
    {
LABEL_12:
      v36 = sub_25E829CDC();
      __swift_project_value_buffer(v36, qword_27FD0A4B0);

      v31 = sub_25E829CBC();
      v37 = sub_25E82A02C();

      if (!os_log_type_enabled(v31, v37))
      {
LABEL_15:

        return 0;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v72 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_25E7FFAF0(v23, v25, &v72);
      _os_log_impl(&dword_25E7F6000, v31, v37, "Failed at writing quantizedData: %s.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x25F8C1620](v39, -1, -1);
      v35 = v38;
LABEL_14:
      MEMORY[0x25F8C1620](v35, -1, -1);
      goto LABEL_15;
    }

LABEL_33:
    swift_once();
    goto LABEL_12;
  }

  v26 = v65 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v27 = v26 + 16;
  if (!*(*(v26 + 16) + 16))
  {
    swift_endAccess();
    goto LABEL_11;
  }

  sub_25E8075B8(&v72);
  v28 = *(&v72 + 1);
  if (*(&v72 + 1))
  {
    v29 = *(&v73 + 1);
    v70 = v73;
    v25 = *&v74[0];
    v63 = v72;
  }

  else
  {

    sub_25E80750C(*(*v27 + 16) - 1, &v72);
    v63 = v72;
    v28 = *(&v72 + 1);
    v29 = *(&v73 + 1);
    v70 = v73;
    v25 = *&v74[0];
  }

  swift_endAccess();
  v62 = v25;
  v66 = v29;
  v68 = v26;
  v23 = *(v28 + 16);

  if (v23)
  {
    v41 = 0;
    v42 = (v28 + 66);
    v43 = MEMORY[0x277D84F90];
    v44 = v64 | (v21 << 8);
    while (v41 < *(v28 + 16))
    {
      v45 = *(v42 - 34);
      v46 = *(v42 - 18);
      v47 = *(v42 - 2);
      *(v74 + 10) = *(v42 + 2);
      v73 = v46;
      v74[0] = v47;
      v72 = v45;
      v48 = *(v42 - 34);
      v49 = *(v42 - 18);
      v79 = *(v42 - 2);
      v77 = v48;
      v78 = v49;
      v50 = *v42;
      v76 = *(v42 + 2);
      v75 = v50;
      sub_25E8026B4(&v72, v71);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_25E7FF9E4(0, *(v43 + 2) + 1, 1, v43);
      }

      v52 = *(v43 + 2);
      v51 = *(v43 + 3);
      v25 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v43 = sub_25E7FF9E4((v51 > 1), v52 + 1, 1, v43);
      }

      ++v41;
      *(v43 + 2) = v25;
      v53 = &v43[64 * v52];
      v54 = v77;
      v55 = v78;
      v53[64] = v79;
      *(v53 + 2) = v54;
      *(v53 + 3) = v55;
      v53[65] = 1;
      v56 = v75;
      *(v53 + 35) = v76;
      *(v53 + 66) = v56;
      *(v53 + 72) = v20;
      *(v53 + 44) = v44;
      v42 += 16;
      if (v23 == v41)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_27:
  swift_bridgeObjectRelease_n();
  swift_beginAccess();
  v57 = *(v68 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v68 + 16) = v57;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v57 = sub_25E7FF8C4(0, *(v57 + 2) + 1, 1, v57);
    *v27 = v57;
  }

  v60 = *(v57 + 2);
  v59 = *(v57 + 3);
  if (v60 >= v59 >> 1)
  {
    v57 = sub_25E7FF8C4((v59 > 1), v60 + 1, 1, v57);
  }

  *(v57 + 2) = v60 + 1;
  v61 = &v57[40 * v60];
  v61[32] = v63;
  *(v61 + 5) = v43;
  *(v61 + 6) = v70;
  *(v61 + 7) = v66;
  *(v61 + 8) = v62;
  *v27 = v57;
  swift_endAccess();

  return 1;
}

uint64_t FieldType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x323374616F6C66;
    v8 = 0x343674616F6C66;
    if (v1 != 10)
    {
      v8 = 1819242338;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x3233746E6975;
    v10 = 0x3436746E6975;
    if (v1 != 7)
    {
      v10 = 0x363174616F6C66;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 947154537;
    v3 = 0x3436746E69;
    v4 = 0x38746E6975;
    if (v1 != 4)
    {
      v4 = 0x3631746E6975;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x3631746E69;
    if (v1 != 1)
    {
      v5 = 0x3233746E69;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t FileMetadata.fieldNames.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25E81F1CC(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_25E81F1CC((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

Planks::SchemaElement __swiftcall SchemaElement.init(name:fieldType:fieldCount:)(Planks::SchemaElement name, Planks::FieldType fieldType, Swift::Int fieldCount)
{
  v4 = *fieldType;
  *v3 = name.name;
  *(v3 + 16) = v4;
  *(v3 + 24) = fieldCount;
  name.fieldCount = fieldCount;
  name.fieldType = fieldType;
  return name;
}

_BYTE *RowGroup.init(chunkType:columnChunks:beginOffset:byteSize:rowsCount:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

Planks::FileMetadata __swiftcall FileMetadata.init(version:schema:rowGroups:keyValueMetadata:)(Swift::Int version, Swift::OpaquePointer schema, Swift::OpaquePointer rowGroups, Swift::OpaquePointer keyValueMetadata)
{
  v9 = v4;
  sub_25E818978(MEMORY[0x277D84F90]);

  v9->_rawValue = version;
  v9[1]._rawValue = schema._rawValue;
  v9[2]._rawValue = rowGroups._rawValue;
  v9[3]._rawValue = keyValueMetadata._rawValue;
  result.keyValueMetadata._rawValue = v13;
  result.rowGroups._rawValue = v12;
  result.schema._rawValue = v11;
  result.version = v10;
  return result;
}

uint64_t ColumnChunk.init(schemaPath:beginOffset:byteSize:encoding:compression:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  v8 = *a6;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = 12;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 33) = v8;
  return result;
}

uint64_t Chunkable.endOffset.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  v5 = (*(a2 + 16))(a1, a2);
  v6 = __OFADD__(v4, v5);
  result = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  return result;
}

Planks::FieldType_optional __swiftcall FieldType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E82A20C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E81BACC()
{
  v0 = FieldType.rawValue.getter();
  v2 = v1;
  if (v0 == FieldType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25E82A32C();
  }

  return v5 & 1;
}

uint64_t sub_25E81BB68()
{
  sub_25E82A39C();
  FieldType.rawValue.getter();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E81BBD0(uint64_t a1)
{
  FieldType.rawValue.getter();
  sub_25E829DDC();
}

uint64_t sub_25E81BC34(uint64_t a1)
{
  sub_25E82A39C();
  FieldType.rawValue.getter();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E81BCA4@<X0>(uint64_t *a1@<X8>)
{
  result = FieldType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SchemaElement.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SchemaElement.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25E81BE80()
{
  v1 = 0x707954646C656966;
  if (*v0 != 1)
  {
    v1 = 0x756F43646C656966;
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

uint64_t sub_25E81BEDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = sub_25E821824(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_25E81BF10(uint64_t a1)
{
  v2 = sub_25E81FB2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E81BF4C(uint64_t a1)
{
  v2 = sub_25E81FB2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SchemaElement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07710, &qword_25E82B3F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  v9[0] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FB2C();
  sub_25E82A40C();
  v14 = 0;
  v7 = v9[1];
  sub_25E82A28C();
  if (!v7)
  {
    v13 = v10;
    v12 = 1;
    sub_25E81FB80();
    sub_25E82A2BC();
    v11 = 2;
    sub_25E82A2AC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SchemaElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07728, &qword_25E82B3F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FB2C();
  sub_25E82A3FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = 0;
  v9 = sub_25E82A22C();
  v11 = v10;
  v12 = v9;
  v18 = 1;
  sub_25E81FBD4();
  sub_25E82A25C();
  v16 = v19;
  v17 = 2;
  v14 = sub_25E82A24C();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ChunkEncoding.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_25E82A20C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_25E81C42C()
{
  sub_25E82A39C();
  sub_25E829DDC();
  return sub_25E82A3BC();
}

uint64_t sub_25E81C490(uint64_t a1)
{
  sub_25E82A39C();
  sub_25E829DDC();
  return sub_25E82A3BC();
}

uint64_t sub_25E81C4DC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25E82A20C();

  *a2 = v3 != 0;
  return result;
}

Planks::ChunkCompression_optional __swiftcall ChunkCompression.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E82A20C();

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

uint64_t ChunkCompression.rawValue.getter()
{
  if (*v0)
  {
    return 0x657A69746E617571;
  }

  else
  {
    return 0x6572706D6F636E75;
  }
}

uint64_t sub_25E81C6C0(_BYTE *a1, _BYTE *a2, __n128 a3)
{
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657A69746E617571;
  }

  else
  {
    v4 = 0x6572706D6F636E75;
  }

  if (v3)
  {
    v5 = 0xEC00000064657373;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x657A69746E617571;
  }

  else
  {
    v6 = 0x6572706D6F636E75;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xEC00000064657373;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25E82A32C();
  }

  return v9 & 1;
}

uint64_t sub_25E81C774()
{
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E81C804(uint64_t a1)
{
  sub_25E829DDC();
}

uint64_t sub_25E81C880(uint64_t a1)
{
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E81C90C@<X0>(char *a2@<X8>)
{
  v3 = sub_25E82A20C();

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

void sub_25E81C96C(uint64_t *a1@<X8>)
{
  v2 = 0x6572706D6F636E75;
  if (*v1)
  {
    v2 = 0x657A69746E617571;
  }

  v3 = 0xEC00000064657373;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ColumnChunk.schemaPath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ColumnChunk.schemaPath.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 ColumnChunk.quantization.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 40);
  *a1 = result;
  a1[1].n128_u16[0] = v2;
  return result;
}

__n128 ColumnChunk.quantization.setter(__n128 *a1)
{
  v2 = a1[1].n128_u16[0];
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_25E81CC64()
{
  v1 = *v0;
  v2 = 0x6150616D65686373;
  v3 = 0x676E69646F636E65;
  v4 = 0x73736572706D6F63;
  if (v1 != 4)
  {
    v4 = 0x617A69746E617571;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x66664F6E69676562;
  if (v1 != 1)
  {
    v5 = 0x657A695365747962;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25E81CD3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = sub_25E82194C(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_25E81CD64(uint64_t a1)
{
  v2 = sub_25E81FC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E81CDA0(uint64_t a1)
{
  v2 = sub_25E81FC28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ColumnChunk.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07738, &qword_25E82B400);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v7;
  v26 = *(v1 + 32);
  v19 = *(v1 + 33);
  v8 = *(v1 + 40);
  v17 = *(v1 + 48);
  v18 = v8;
  HIDWORD(v16) = *(v1 + 56);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FC28();
  v9 = v3;
  sub_25E82A40C();
  LOBYTE(v23) = 0;
  v10 = v22;
  sub_25E82A28C();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = v26;
  v12 = v19;
  v14 = v17;
  v13 = v18;
  LOBYTE(v23) = 1;
  sub_25E82A2CC();
  LOBYTE(v23) = 2;
  sub_25E82A2CC();
  LOBYTE(v23) = v11;
  v27 = 3;
  sub_25E81FC7C();
  sub_25E82A27C();
  LOBYTE(v23) = v12;
  v27 = 4;
  sub_25E81FCD0();
  sub_25E82A27C();
  v23 = v13;
  v24 = v14;
  v25 = WORD2(v16);
  v27 = 5;
  sub_25E81FD24();
  sub_25E82A27C();
  return (*(v4 + 8))(v6, v9);
}

uint64_t ColumnChunk.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07760, &qword_25E82B408);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v37 = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FC28();
  sub_25E82A3FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v28[0]) = 0;
  v9 = sub_25E82A22C();
  v11 = v10;
  v12 = v9;
  LOBYTE(v28[0]) = 1;
  v24 = sub_25E82A26C();
  LOBYTE(v28[0]) = 2;
  v23 = sub_25E82A26C();
  LOBYTE(v25) = 3;
  sub_25E81FD78();
  sub_25E82A21C();
  v37 = v28[0];
  LOBYTE(v25) = 4;
  sub_25E81FDCC();
  sub_25E82A21C();
  v22 = LOBYTE(v28[0]);
  v38 = 5;
  sub_25E81FE20();
  sub_25E82A21C();
  (*(v6 + 8))(v8, v5);
  v21 = v34;
  v20 = v35;
  HIDWORD(v19) = v36;
  *&v25 = v12;
  *(&v25 + 1) = v11;
  v13 = v23;
  v14 = v24;
  *&v26 = v24;
  *(&v26 + 1) = v23;
  v15 = v37;
  v27[0] = v37;
  v16 = v22;
  v27[1] = v22;
  *&v27[8] = v34;
  *&v27[16] = v35;
  *&v27[24] = v36;
  v17 = v26;
  *a2 = v25;
  a2[1] = v17;
  a2[2] = *v27;
  *(a2 + 42) = *&v27[10];
  sub_25E8026B4(&v25, v28);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v28[0] = v12;
  v28[1] = v11;
  v28[2] = v14;
  v28[3] = v13;
  v29 = v15;
  v30 = v16;
  v31 = v21;
  v32 = v20;
  v33 = WORD2(v19);
  return sub_25E80281C(v28);
}

uint64_t sub_25E81D420()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

Planks::RowGroupType_optional __swiftcall RowGroupType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E82A20C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RowGroupType.rawValue.getter()
{
  v1 = 1635017060;
  if (*v0 != 1)
  {
    v1 = 0x7865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C706D6973;
  }
}

uint64_t sub_25E81D51C(_BYTE *a1, _BYTE *a2, __n128 a3)
{
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 1635017060;
  if (v3 != 1)
  {
    v5 = 0x7865646E69;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x656C706D6973;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1635017060;
  if (*a2 != 1)
  {
    v9 = 0x7865646E69;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x656C706D6973;
  }

  if (*a2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25E82A32C();
  }

  return v12 & 1;
}

uint64_t sub_25E81D604()
{
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E81D698(uint64_t a1)
{
  sub_25E829DDC();
}

uint64_t sub_25E81D718(uint64_t a1)
{
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

void sub_25E81D7B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1635017060;
  if (v2 != 1)
  {
    v5 = 0x7865646E69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C706D6973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t RowGroup.columnChunks.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_25E81D9E4()
{
  v1 = *v0;
  v2 = 0x7079546B6E756863;
  v3 = 0x66664F6E69676562;
  v4 = 0x657A695365747962;
  if (v1 != 3)
  {
    v4 = 0x6E756F4373776F72;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x68436E6D756C6F63;
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

uint64_t sub_25E81DA94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = sub_25E821B5C(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_25E81DABC(uint64_t a1)
{
  v2 = sub_25E81FE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E81DAF8(uint64_t a1)
{
  v2 = sub_25E81FE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RowGroup.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07780, &qword_25E82B410);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12[3] = *(v1 + 2);
  v13 = v9;
  v10 = *(v1 + 3);
  v12[1] = *(v1 + 4);
  v12[2] = v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FE74();
  sub_25E82A40C();
  v20 = v8;
  v19 = 0;
  sub_25E81FEC8();
  sub_25E82A2BC();
  if (!v2)
  {
    v14 = v13;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07798, &qword_25E82B418);
    sub_25E81FF1C();
    sub_25E82A2BC();
    v17 = 2;
    sub_25E82A2CC();
    v16 = 3;
    sub_25E82A2CC();
    v15 = 4;
    sub_25E82A2AC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RowGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077B0, &qword_25E82B420);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E81FE74();
  sub_25E82A3FC();
  if (!v2)
  {
    v23 = 0;
    sub_25E81FFF4();
    sub_25E82A25C();
    v9 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07798, &qword_25E82B418);
    v22 = 1;
    sub_25E820048();
    sub_25E82A25C();
    v11 = v18;
    v21 = 2;
    v17 = sub_25E82A26C();
    v20 = 3;
    v16 = sub_25E82A26C();
    v19 = 4;
    v12 = sub_25E82A24C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    v13 = v16;
    v14 = v17;
    *(a2 + 8) = v11;
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 32) = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FileMetadata.schema.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t FileMetadata.rowGroups.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t FileMetadata.keyValueMetadata.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_25E81E174(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25E800EB4(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25E82A32C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25E81E318()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x70756F7247776F72;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x616D65686373;
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

uint64_t sub_25E81E398@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = sub_25E821D20(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_25E81E3C0(uint64_t a1)
{
  v2 = sub_25E820120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E81E3FC(uint64_t a1)
{
  v2 = sub_25E820120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077D0, &qword_25E82B428);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v15 = v1[2];
  v16 = v8;
  v14 = v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E820120();
  v10 = v4;
  sub_25E82A40C();
  LOBYTE(v18) = 0;
  sub_25E82A2AC();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    v18 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077E0, &qword_25E82B430);
    sub_25E820174();
    sub_25E82A2BC();
    v18 = v11;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077F8, &qword_25E82B438);
    sub_25E82024C();
    sub_25E82A2BC();
    v18 = v12;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07810, &qword_25E82B440);
    sub_25E8204D4(&qword_27FD07818, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_25E82A2BC();
  }

  return (*(v5 + 8))(v7, v10);
}

uint64_t FileMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07820, &qword_25E82B448);
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v15 - v6;
  v17 = sub_25E818978(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E820120();
  sub_25E82A3FC();
  if (!v2)
  {
    v8 = v5;
    LOBYTE(v19) = 0;
    v9 = v16;
    v10 = sub_25E82A24C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077E0, &qword_25E82B430);
    v18 = 1;
    sub_25E820324();
    sub_25E82A25C();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD077F8, &qword_25E82B438);
    v18 = 2;
    sub_25E8203FC();
    sub_25E82A25C();
    v15 = v10;
    v12 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07810, &qword_25E82B440);
    v18 = 3;
    sub_25E8204D4(&qword_27FD07848, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_25E82A25C();
    (*(v8 + 8))(v7, v9);

    v14 = v19;
    *a2 = v15;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FileMetadata.rowsCount.getter()
{
  result = 0;
  v2 = *(v0 + 16);
  v3 = (v2 + 64);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v3 += 5;
    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t FileMetadata.dataByteSize.getter()
{
  result = 0;
  v2 = *(v0 + 16);
  v3 = (v2 + 56);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v3 += 5;
    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

Planks::QuantizationParameters __swiftcall QuantizationParameters.init(bias:scale:physicalType:logicalType:)(Swift::Double bias, Swift::Double scale, Planks::FieldType physicalType, Planks::FieldType logicalType)
{
  v5 = *physicalType;
  v6 = *logicalType;
  *v4 = bias;
  *(v4 + 8) = scale;
  *(v4 + 16) = v5;
  *(v4 + 17) = v6;
  result.scale = scale;
  result.bias = bias;
  result.physicalType = physicalType;
  return result;
}

uint64_t sub_25E81EB8C()
{
  v1 = *v0;
  sub_25E82A39C();
  MEMORY[0x25F8C1180](v1);
  return sub_25E82A3BC();
}

uint64_t sub_25E81EBD4(uint64_t a1)
{
  v2 = *v1;
  sub_25E82A39C();
  MEMORY[0x25F8C1180](v2);
  return sub_25E82A3BC();
}

uint64_t sub_25E81EC18()
{
  v1 = 1935763810;
  v2 = 0x6C61636973796870;
  if (*v0 != 2)
  {
    v2 = 0x546C616369676F6CLL;
  }

  if (*v0)
  {
    v1 = 0x656C616373;
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

uint64_t sub_25E81EC98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __n128 a4@<Q0>)
{
  result = sub_25E821E90(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_25E81ECC0(uint64_t a1)
{
  v2 = sub_25E820540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E81ECFC(uint64_t a1)
{
  v2 = sub_25E820540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t QuantizationParameters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07850, &qword_25E82B450);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v12 = *(v1 + 16);
  v8 = *(v1 + 17);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E820540();
  sub_25E82A40C();
  v18 = 0;
  sub_25E82A29C();
  if (!v2)
  {
    v9 = v12;
    v17 = 1;
    sub_25E82A29C();
    v16 = v9;
    v15 = 2;
    sub_25E81FB80();
    sub_25E82A2BC();
    v14 = v8;
    v13 = 3;
    sub_25E82A2BC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t QuantizationParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07860, &qword_25E82B458);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25E820540();
  sub_25E82A3FC();
  if (!v2)
  {
    v22 = 0;
    sub_25E82A23C();
    v10 = v9;
    v21 = 1;
    sub_25E82A23C();
    v12 = v11;
    v19 = 2;
    sub_25E81FBD4();
    sub_25E82A25C();
    v14 = v20;
    v17 = 3;
    sub_25E82A25C();
    (*(v6 + 8))(v8, v5);
    v15 = v18;
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 17) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

char *sub_25E81F1CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25E81F22C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25E81F1EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25E81F338(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25E81F20C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25E81F43C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25E81F22C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073B8, &unk_25E82C2E0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25E81F338(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25E81F43C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07960, &unk_25E82C2D0);
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

uint64_t _s6Planks22QuantizationParametersV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_5;
  }

  v4 = FieldType.rawValue.getter();
  v6 = v5;
  if (v4 == FieldType.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_25E82A32C();

    if ((v8 & 1) == 0)
    {
LABEL_5:
      v3 = 0;
      return v3 & 1;
    }
  }

  v9 = FieldType.rawValue.getter();
  v11 = v10;
  if (v9 == FieldType.rawValue.getter() && v11 == v12)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_25E82A32C();
  }

  return v3 & 1;
}

uint64_t _s6Planks11ColumnChunkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 56);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v19 = *(a2 + 40);
  v20 = *(a1 + 40);
  v11 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v13 = sub_25E82A32C();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v8 && v3 == v7 && ((v4 ^ v9) & 1) == 0)
  {
    if (v5 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v10 == 2)
      {
        return 0;
      }

      if (v5)
      {
        v14 = 0x657A69746E617571;
      }

      else
      {
        v14 = 0x6572706D6F636E75;
      }

      if (v5)
      {
        v15 = 0xE900000000000064;
      }

      else
      {
        v15 = 0xEC00000064657373;
      }

      if (v10)
      {
        v16 = 0x657A69746E617571;
      }

      else
      {
        v16 = 0x6572706D6F636E75;
      }

      if (v10)
      {
        v17 = 0xE900000000000064;
      }

      else
      {
        v17 = 0xEC00000064657373;
      }

      if (v14 == v16 && v15 == v17)
      {

        goto LABEL_28;
      }

      v18 = sub_25E82A32C();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_28:
    if (v6 == 12)
    {
      if (v11 != 12)
      {
        return 0;
      }
    }

    else
    {
      v23 = v20;
      v24 = v6;
      if (v11 == 12)
      {
        return 0;
      }

      v21 = v19;
      v22 = v11;
      if ((_s6Planks22QuantizationParametersV2eeoiySbAC_ACtFZ_0(&v23, &v21) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t _s6Planks12FileMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((sub_25E7FB138(a1[1], a2[1]) & 1) == 0 || (sub_25E7FB578(v3, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_25E81E174(v2, v4);
}

BOOL _s6Planks13SchemaElementV2eeoiySbAC_ACtFZ_0(void *a1, void *a2, __n128 a3)
{
  v3 = a1[3];
  v4 = a2[3];
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (v5 || (sub_25E82A32C() & 1) != 0)
  {
    v6 = FieldType.rawValue.getter();
    v8 = v7;
    if (v6 == FieldType.rawValue.getter() && v8 == v9)
    {

      return v3 == v4;
    }

    v10 = sub_25E82A32C();

    if (v10)
    {
      return v3 == v4;
    }
  }

  return 0;
}

uint64_t _s6Planks8RowGroupV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v22 = *(a1 + 4);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = 0xE400000000000000;
  v12 = 1635017060;
  if (v3 != 1)
  {
    v12 = 0x7865646E69;
    v11 = 0xE500000000000000;
  }

  if (*a1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x656C706D6973;
  }

  if (v3)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  v15 = 0xE400000000000000;
  v16 = 1635017060;
  if (*a2 != 1)
  {
    v16 = 0x7865646E69;
    v15 = 0xE500000000000000;
  }

  if (*a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x656C706D6973;
  }

  if (*a2)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE600000000000000;
  }

  if (v13 == v17 && v14 == v18)
  {
  }

  else
  {
    v19 = sub_25E82A32C();

    result = 0;
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  v21 = sub_25E7FAFF0(v4, v7) & (v5 == v8);
  if (v6 != v10)
  {
    v21 = 0;
  }

  if (v22 == v9)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25E81FB2C()
{
  result = qword_27FD07718;
  if (!qword_27FD07718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07718);
  }

  return result;
}

unint64_t sub_25E81FB80()
{
  result = qword_27FD07720;
  if (!qword_27FD07720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07720);
  }

  return result;
}

unint64_t sub_25E81FBD4()
{
  result = qword_27FD07730;
  if (!qword_27FD07730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07730);
  }

  return result;
}

unint64_t sub_25E81FC28()
{
  result = qword_27FD07740;
  if (!qword_27FD07740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07740);
  }

  return result;
}

unint64_t sub_25E81FC7C()
{
  result = qword_27FD07748;
  if (!qword_27FD07748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07748);
  }

  return result;
}

unint64_t sub_25E81FCD0()
{
  result = qword_27FD07750;
  if (!qword_27FD07750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07750);
  }

  return result;
}

unint64_t sub_25E81FD24()
{
  result = qword_27FD07758;
  if (!qword_27FD07758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07758);
  }

  return result;
}

unint64_t sub_25E81FD78()
{
  result = qword_27FD07768;
  if (!qword_27FD07768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07768);
  }

  return result;
}

unint64_t sub_25E81FDCC()
{
  result = qword_27FD07770;
  if (!qword_27FD07770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07770);
  }

  return result;
}

unint64_t sub_25E81FE20()
{
  result = qword_27FD07778;
  if (!qword_27FD07778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07778);
  }

  return result;
}

unint64_t sub_25E81FE74()
{
  result = qword_27FD07788;
  if (!qword_27FD07788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07788);
  }

  return result;
}

unint64_t sub_25E81FEC8()
{
  result = qword_27FD07790;
  if (!qword_27FD07790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07790);
  }

  return result;
}

unint64_t sub_25E81FF1C()
{
  result = qword_27FD077A0;
  if (!qword_27FD077A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07798, &qword_25E82B418);
    sub_25E81FFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077A0);
  }

  return result;
}

unint64_t sub_25E81FFA0()
{
  result = qword_27FD077A8;
  if (!qword_27FD077A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077A8);
  }

  return result;
}

unint64_t sub_25E81FFF4()
{
  result = qword_27FD077B8;
  if (!qword_27FD077B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077B8);
  }

  return result;
}

unint64_t sub_25E820048()
{
  result = qword_27FD077C0;
  if (!qword_27FD077C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07798, &qword_25E82B418);
    sub_25E8200CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077C0);
  }

  return result;
}

unint64_t sub_25E8200CC()
{
  result = qword_27FD077C8;
  if (!qword_27FD077C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077C8);
  }

  return result;
}

unint64_t sub_25E820120()
{
  result = qword_27FD077D8;
  if (!qword_27FD077D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077D8);
  }

  return result;
}

unint64_t sub_25E820174()
{
  result = qword_27FD077E8;
  if (!qword_27FD077E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD077E0, &qword_25E82B430);
    sub_25E8201F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077E8);
  }

  return result;
}

unint64_t sub_25E8201F8()
{
  result = qword_27FD077F0;
  if (!qword_27FD077F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD077F0);
  }

  return result;
}

unint64_t sub_25E82024C()
{
  result = qword_27FD07800;
  if (!qword_27FD07800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD077F8, &qword_25E82B438);
    sub_25E8202D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07800);
  }

  return result;
}

unint64_t sub_25E8202D0()
{
  result = qword_27FD07808;
  if (!qword_27FD07808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07808);
  }

  return result;
}

unint64_t sub_25E820324()
{
  result = qword_27FD07828;
  if (!qword_27FD07828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD077E0, &qword_25E82B430);
    sub_25E8203A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07828);
  }

  return result;
}

unint64_t sub_25E8203A8()
{
  result = qword_27FD07830;
  if (!qword_27FD07830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07830);
  }

  return result;
}

unint64_t sub_25E8203FC()
{
  result = qword_27FD07838;
  if (!qword_27FD07838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD077F8, &qword_25E82B438);
    sub_25E820480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07838);
  }

  return result;
}

unint64_t sub_25E820480()
{
  result = qword_27FD07840;
  if (!qword_27FD07840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07840);
  }

  return result;
}

uint64_t sub_25E8204D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07810, &qword_25E82B440);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25E820540()
{
  result = qword_27FD07858;
  if (!qword_27FD07858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07858);
  }

  return result;
}

unint64_t sub_25E820598()
{
  result = qword_27FD07868;
  if (!qword_27FD07868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07868);
  }

  return result;
}

unint64_t sub_25E820620()
{
  result = qword_27FD07880;
  if (!qword_27FD07880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07880);
  }

  return result;
}

unint64_t sub_25E8206A8()
{
  result = qword_27FD07898;
  if (!qword_27FD07898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07898);
  }

  return result;
}

unint64_t sub_25E820730()
{
  result = qword_27FD078B0;
  if (!qword_27FD078B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078B0);
  }

  return result;
}

uint64_t sub_25E8207B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for FieldType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FieldType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E8209D4(unsigned int *a1, int a2)
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

_WORD *sub_25E820A24(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25E820ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_25E820B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_25E820BB8(uint64_t a1, int a2)
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

uint64_t sub_25E820C00(uint64_t result, int a2, int a3)
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

uint64_t sub_25E820C5C(uint64_t a1, int a2)
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

uint64_t sub_25E820CA8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for QuantizationParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 18))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 0xC;
  v5 = v3 - 12;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for QuantizationParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 16) = 0;
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 11;
    }
  }

  return result;
}

uint64_t sub_25E820DB8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25E820E4C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RowGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RowGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnChunk.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColumnChunk.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25E8211AC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25E82123C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E821300()
{
  result = qword_27FD078C8;
  if (!qword_27FD078C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078C8);
  }

  return result;
}

unint64_t sub_25E821358()
{
  result = qword_27FD078D0;
  if (!qword_27FD078D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078D0);
  }

  return result;
}

unint64_t sub_25E8213B0()
{
  result = qword_27FD078D8;
  if (!qword_27FD078D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078D8);
  }

  return result;
}

unint64_t sub_25E821408()
{
  result = qword_27FD078E0;
  if (!qword_27FD078E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078E0);
  }

  return result;
}

unint64_t sub_25E821460()
{
  result = qword_27FD078E8;
  if (!qword_27FD078E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078E8);
  }

  return result;
}

unint64_t sub_25E8214B8()
{
  result = qword_27FD078F0;
  if (!qword_27FD078F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078F0);
  }

  return result;
}

unint64_t sub_25E821510()
{
  result = qword_27FD078F8;
  if (!qword_27FD078F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD078F8);
  }

  return result;
}

unint64_t sub_25E821568()
{
  result = qword_27FD07900;
  if (!qword_27FD07900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07900);
  }

  return result;
}

unint64_t sub_25E8215C0()
{
  result = qword_27FD07908;
  if (!qword_27FD07908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07908);
  }

  return result;
}

unint64_t sub_25E821618()
{
  result = qword_27FD07910;
  if (!qword_27FD07910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07910);
  }

  return result;
}

unint64_t sub_25E821670()
{
  result = qword_27FD07918;
  if (!qword_27FD07918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07918);
  }

  return result;
}

unint64_t sub_25E8216C8()
{
  result = qword_27FD07920;
  if (!qword_27FD07920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07920);
  }

  return result;
}

unint64_t sub_25E821720()
{
  result = qword_27FD07928;
  if (!qword_27FD07928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07928);
  }

  return result;
}

unint64_t sub_25E821778()
{
  result = qword_27FD07930;
  if (!qword_27FD07930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07930);
  }

  return result;
}

unint64_t sub_25E8217D0()
{
  result = qword_27FD07938;
  if (!qword_27FD07938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07938);
  }

  return result;
}

uint64_t sub_25E821824(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v4 || (sub_25E82A32C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954646C656966 && a2 == 0xE900000000000065 || (sub_25E82A32C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F43646C656966 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v7 = sub_25E82A32C();

    if (v7)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_25E82194C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x6150616D65686373 && a2 == 0xEA00000000006874;
  if (v5 || (sub_25E82A32C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x66664F6E69676562 && a2 == 0xEB00000000746573 || (sub_25E82A32C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A695365747962 && a2 == 0xE800000000000000 || (sub_25E82A32C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000 || (sub_25E82A32C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEB000000006E6F69 || (sub_25E82A32C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617A69746E617571 && a2 == 0xEC0000006E6F6974)
  {

    return 5;
  }

  else
  {
    v7 = sub_25E82A32C();

    if (v7)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_25E821B5C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x7079546B6E756863 && a2 == 0xE900000000000065;
  if (v5 || (sub_25E82A32C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68436E6D756C6F63 && a2 == 0xEC000000736B6E75 || (sub_25E82A32C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66664F6E69676562 && a2 == 0xEB00000000746573 || (sub_25E82A32C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A695365747962 && a2 == 0xE800000000000000 || (sub_25E82A32C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E756F4373776F72 && a2 == 0xE900000000000074)
  {

    return 4;
  }

  else
  {
    v7 = sub_25E82A32C();

    if (v7)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25E821D20(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v5 || (sub_25E82A32C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (sub_25E82A32C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F7247776F72 && a2 == 0xE900000000000073 || (sub_25E82A32C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025E82C6B0 == a2)
  {

    return 3;
  }

  else
  {
    v7 = sub_25E82A32C();

    if (v7)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_25E821E90(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1 == 1935763810 && a2 == 0xE400000000000000;
  if (v4 || (sub_25E82A32C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_25E82A32C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61636973796870 && a2 == 0xEC00000065707954 || (sub_25E82A32C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546C616369676F6CLL && a2 == 0xEB00000000657079)
  {

    return 3;
  }

  else
  {
    v7 = sub_25E82A32C();

    if (v7)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_25E821FF8()
{
  result = qword_27FD07940;
  if (!qword_27FD07940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07940);
  }

  return result;
}

unint64_t sub_25E82204C()
{
  result = qword_27FD07948;
  if (!qword_27FD07948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07948);
  }

  return result;
}

unint64_t sub_25E8220A0()
{
  result = qword_27FD07950;
  if (!qword_27FD07950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07950);
  }

  return result;
}

unint64_t sub_25E8220F4()
{
  result = qword_27FD07958;
  if (!qword_27FD07958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07958);
  }

  return result;
}

uint64_t sub_25E822184(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25E8221A4, 0, 0);
}

uint64_t sub_25E8221A4()
{
  if ((sub_25E829F7C() & 1) != 0 || (v1 = v0[3], v2 = type metadata accessor for AsyncTensorSequence(0), v3 = v2[9], v4 = *(v1 + v3), v5 = *(v1 + v2[8]), v4 >= *(v5 + 16)))
  {
    v10 = v0[2];
    v11 = sub_25E829CAC();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    v6 = v0[2];
    v7 = v5 + 16 * v4;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    *(v1 + v3) = v4 + 1;
    sub_25E8224F4(*(v1 + 16), *(v1 + 24), v8, v9, v1 + v2[7], v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t PlanksReader.readBatch(label:as:batchIndex:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25E7FCC80();
  if (*(v10 + 16) && (v11 = sub_25E800EB4(a1, a2), (v12 & 1) != 0) && ((v13 = *(*(v10 + 56) + 8 * v11), , , (v14 = *(v13 + 16)) != 0) ? (v15 = v14 > a4) : (v15 = 0), v15))
  {
    v24 = v13 + 16 * a4;
    v25 = *(v24 + 32);
    v26 = *(v24 + 40);

    return sub_25E8224F4(a1, a2, v25, v26, a3, a5);
  }

  else
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v16 = sub_25E829CDC();
    __swift_project_value_buffer(v16, qword_27FD0A4B0);

    v17 = sub_25E829CBC();
    v18 = sub_25E82A02C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_25E7FFAF0(a1, a2, &v27);
      _os_log_impl(&dword_25E7F6000, v17, v18, "Found no valid indices for label: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x25F8C1620](v20, -1, -1);
      MEMORY[0x25F8C1620](v19, -1, -1);
    }

    v21 = sub_25E829CAC();
    v22 = *(*(v21 - 8) + 56);

    return v22(a5, 1, 1, v21);
  }
}

uint64_t sub_25E8224F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v215 = a5;
  v213 = a4;
  v214 = a3;
  v219 = a6;
  v202 = sub_25E82A30C();
  v201 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v200 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07438, &qword_25E82AE18);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v187 - v12;
  v204 = sub_25E829B9C();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v211 = &v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_25E829CAC();
  v221 = *(v220 - 1);
  v15 = MEMORY[0x28223BE20](v220);
  v207 = &v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v210 = &v187 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v206 = &v187 - v20;
  MEMORY[0x28223BE20](v19);
  v212 = &v187 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v208 = &v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v187 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v187 - v28;
  v217 = sub_25E829B8C();
  v218 = *(v217 - 8);
  v30 = MEMORY[0x28223BE20](v217);
  v209 = &v187 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v199 = &v187 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v205 = &v187 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v187 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v187 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v187 - v43;
  MEMORY[0x28223BE20](v42);
  v216 = &v187 - v45;
  v46 = sub_25E7FC954();
  if (*(v46 + 16))
  {
    v47 = sub_25E800EB4(a1, a2);
    if (v48)
    {
      v196 = v13;
      v49 = *(v46 + 56) + 32 * v47;
      v50 = *(v49 + 8);
      v195 = *v49;
      v51 = *(v49 + 16);
      v194 = *(v49 + 24);
      v198 = v50;

      v197 = v51;
      LOBYTE(v226[0]) = v51;
      ScalarType.init(fieldType:)(v226, v29);
      v52 = v218;
      v53 = v218 + 48;
      v54 = *(v218 + 6);
      v55 = v217;
      if (v54(v29, 1, v217) == 1)
      {
        sub_25E802774(v29, &qword_27FD07408, &unk_25E82C2F0);
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v56 = sub_25E829CDC();
        __swift_project_value_buffer(v56, qword_27FD0A4B0);
        v57 = sub_25E829CBC();
        v58 = sub_25E82A02C();

        v59 = os_log_type_enabled(v57, v58);
        v60 = v220;
        if (v59)
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *&v226[0] = v62;
          *v61 = 136315138;
          LOBYTE(v222) = v197;
          v63 = FieldType.description.getter();
          v65 = sub_25E7FFAF0(v63, v64, v226);

          *(v61 + 4) = v65;
          _os_log_impl(&dword_25E7F6000, v57, v58, "Invalid ScalarType for element: %s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x25F8C1620](v62, -1, -1);
          MEMORY[0x25F8C1620](v61, -1, -1);
        }

        return (*(v221 + 56))(v219, 1, 1, v60);
      }

      v192 = v7;
      v193 = v38;
      v78 = *(v52 + 4);
      v76 = (v52 + 32);
      v77 = v78;
      v78(v216, v29, v55);
      sub_25E8072C4(v215, v27);
      v191 = v53;
      if (v54(v27, 1, v55) == 1)
      {
        v189 = v77;
        v190 = v76;
        sub_25E802774(v27, &qword_27FD07408, &unk_25E82C2F0);
        v79 = v220;
        v80 = v218;
      }

      else
      {
        v77(v44, v27, v55);
        if ((sub_25E829B7C() & 1) == 0)
        {
          v139 = v218;
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v140 = sub_25E829CDC();
          __swift_project_value_buffer(v140, qword_27FD0A4B0);
          v141 = v217;
          (*(v139 + 2))(v41, v44, v217);
          v142 = sub_25E829CBC();
          v143 = sub_25E82A02C();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v215 = swift_slowAlloc();
            *&v226[0] = v215;
            *v144 = 136315394;
            LODWORD(v214) = v143;
            v145 = ScalarType.description.getter();
            v147 = v146;
            v148 = *(v139 + 1);
            v148(v41, v141);
            v149 = sub_25E7FFAF0(v145, v147, v226);

            *(v144 + 4) = v149;
            *(v144 + 12) = 2080;
            LOBYTE(v222) = v197;
            v150 = FieldType.description.getter();
            v152 = sub_25E7FFAF0(v150, v151, v226);

            *(v144 + 14) = v152;
            _os_log_impl(&dword_25E7F6000, v142, v214, "Invalid requested type %s for tensor of type: %s", v144, 0x16u);
            v153 = v215;
            swift_arrayDestroy();
            MEMORY[0x25F8C1620](v153, -1, -1);
            MEMORY[0x25F8C1620](v144, -1, -1);
          }

          else
          {

            v148 = *(v139 + 1);
            v148(v41, v141);
          }

          v154 = v219;
          sub_25E829C1C();
          v148(v44, v141);
          v148(v216, v141);
          v135 = *(v221 + 56);
          v136 = v154;
          v137 = 0;
          v138 = v220;
          return v135(v136, v137, 1, v138);
        }

        v189 = v77;
        v190 = v76;
        v80 = v218;
        (*(v218 + 1))(v44, v55);
        v79 = v220;
      }

      v81 = v193;
      v82 = v192;
      if (v214 < 0 || (v83 = *(v192 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16), *(v83 + 16) <= v214) || (v84 = v83 + 40 * v214, v86 = *(v84 + 32), v85 = *(v84 + 48), v225 = *(v84 + 64), v224[0] = v86, v224[1] = v85, v213 < 0) || *(*(&v224[0] + 1) + 16) <= v213)
      {

        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v129 = sub_25E829CDC();
        __swift_project_value_buffer(v129, qword_27FD0A4B0);
        v130 = sub_25E829CBC();
        v131 = sub_25E82A02C();
        v132 = os_log_type_enabled(v130, v131);
        v133 = v216;
        if (v132)
        {
          v134 = swift_slowAlloc();
          *v134 = 0;
          _os_log_impl(&dword_25E7F6000, v130, v131, "Invalid index", v134, 2u);
          MEMORY[0x25F8C1620](v134, -1, -1);
        }

        (*(v80 + 1))(v133, v217);
      }

      else
      {
        v214 = v54;
        v87 = (*(&v224[0] + 1) + (v213 << 6));
        v88 = v87[2];
        v89 = v87[3];
        v90 = v87[4];
        *&v227[10] = *(v87 + 74);
        v226[1] = v89;
        *v227 = v90;
        v226[0] = v88;
        v223 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_25E82A950;
        v92 = v194;
        *(v91 + 32) = v225;
        *(v91 + 40) = v92;
        sub_25E8028A8(v224, &v222);
        sub_25E8026B4(v226, &v222);
        sub_25E829BAC();
        v93 = v216;
        v188 = *(v80 + 2);
        v213 = v80 + 16;
        v188(v81, v216, v55);
        v94 = v196;
        sub_25E829BDC();
        v95 = sub_25E829BEC();
        v96 = (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
        MEMORY[0x28223BE20](v96);
        v97 = v198;
        *(&v187 - 8) = v195;
        *(&v187 - 7) = v97;
        *(&v187 - 48) = v197;
        *(&v187 - 5) = v92;
        *(&v187 - 4) = v224;
        *(&v187 - 3) = v226;
        *(&v187 - 2) = v82;
        *(&v187 - 1) = &v223;
        v98 = v212;
        sub_25E829C3C();
        sub_25E80281C(v226);
        sub_25E81A140(v224);

        if (v223)
        {
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v99 = sub_25E829CDC();
          v100 = __swift_project_value_buffer(v99, qword_27FD0A4B0);
          v101 = *(v221 + 16);
          v102 = v206;
          v101(v206, v98, v79);
          v103 = v210;
          v101(v210, v98, v79);
          v104 = v207;
          v101(v207, v98, v79);
          v105 = sub_25E829CBC();
          v106 = sub_25E82A01C();
          v107 = os_log_type_enabled(v105, v106);
          v198 = v100;
          if (v107)
          {
            v108 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            v109 = v222;
            *v108 = 136315650;
            v110 = v211;
            sub_25E829C7C();
            sub_25E82767C(&qword_27FD07410, MEMORY[0x277D2CCF0], MEMORY[0x277D2CD08]);
            v111 = v204;
            v112 = sub_25E82A2EC();
            v113 = v102;
            v115 = v114;
            (*(v203 + 8))(v110, v111);
            v116 = *(v221 + 8);
            (v116)(v113, v220);
            v117 = sub_25E7FFAF0(v112, v115, &v222);

            *(v108 + 4) = v117;
            *(v108 + 12) = 2048;
            v118 = v210;
            v119 = sub_25E829C0C();
            (v116)(v118, v220);
            *(v108 + 14) = v119;
            *(v108 + 22) = 2080;
            LOBYTE(v118) = v106;
            v120 = v193;
            sub_25E829BFC();
            v121 = ScalarType.description.getter();
            v123 = v122;
            v124 = v120;
            v125 = v104;
            v126 = v217;
            (*(v218 + 1))(v124, v217);
            (v116)(v125, v220);
            v127 = sub_25E7FFAF0(v121, v123, &v222);

            *(v108 + 24) = v127;
            _os_log_impl(&dword_25E7F6000, v105, v118, "Loaded tensor %s of %ld elements of type %s.", v108, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x25F8C1620](v109, -1, -1);
            v128 = v108;
            v79 = v220;
            MEMORY[0x25F8C1620](v128, -1, -1);
          }

          else
          {
            v116 = *(v221 + 8);
            (v116)(v103, v79);

            (v116)(v104, v79);
            (v116)(v102, v79);
            v126 = v217;
          }

          v155 = v216;
          v156 = v209;
          v157 = v208;
          sub_25E8072C4(v215, v208);
          v158 = (v214)(v157, 1, v126);
          v159 = v212;
          if (v158 == 1)
          {
            (*(v218 + 1))(v155, v126);
            sub_25E802774(v157, &qword_27FD07408, &unk_25E82C2F0);
          }

          else
          {
            v220 = v116;
            v160 = v205;
            v189(v205, v157, v126);
            sub_25E82767C(&qword_27FD07420, MEMORY[0x277D2CCE0], MEMORY[0x277D2CCE8]);
            v161 = v126;
            if ((sub_25E829DCC() & 1) == 0)
            {
              v164 = v199;
              v165 = v188;
              v188(v199, v155, v161);
              v166 = v156;
              v165(v156, v160, v161);
              v167 = sub_25E829CBC();
              v168 = sub_25E82A01C();
              if (os_log_type_enabled(v167, v168))
              {
                v169 = swift_slowAlloc();
                v215 = swift_slowAlloc();
                v222 = v215;
                *v169 = 136315394;
                LODWORD(v214) = v168;
                v170 = ScalarType.description.getter();
                v172 = v171;
                v173 = *(v218 + 1);
                v173(v164, v161);
                v174 = sub_25E7FFAF0(v170, v172, &v222);

                *(v169 + 4) = v174;
                *(v169 + 12) = 2080;
                v175 = ScalarType.description.getter();
                v177 = v176;
                v218 = v173;
                v173(v166, v161);
                v178 = sub_25E7FFAF0(v175, v177, &v222);
                v155 = v216;

                *(v169 + 14) = v178;
                _os_log_impl(&dword_25E7F6000, v167, v214, "Casting tensor of type %s to type %s.", v169, 0x16u);
                v179 = v215;
                swift_arrayDestroy();
                MEMORY[0x25F8C1620](v179, -1, -1);
                MEMORY[0x25F8C1620](v169, -1, -1);
              }

              else
              {

                v180 = *(v218 + 1);
                v180(v156, v161);
                v218 = v180;
                v180(v164, v161);
              }

              v181 = v201;
              v182 = v200;
              v183 = v202;
              (*(v201 + 104))(v200, *MEMORY[0x277D84660], v202);
              v163 = v219;
              v184 = v205;
              v185 = v212;
              sub_25E829C4C();
              (*(v181 + 8))(v182, v183);
              v186 = v218;
              v218(v184, v161);
              (v220)(v185, v79);
              v186(v155, v161);
              goto LABEL_54;
            }

            v162 = *(v218 + 1);
            v162(v160, v126);
            v162(v155, v126);
          }

          v163 = v219;
          (*(v221 + 32))(v219, v159, v79);
LABEL_54:
          v135 = *(v221 + 56);
          v136 = v163;
          v137 = 0;
          goto LABEL_35;
        }

        (*(v221 + 8))(v98, v79);
        (*(v80 + 1))(v93, v217);
      }

      v135 = *(v221 + 56);
      v136 = v219;
      v137 = 1;
LABEL_35:
      v138 = v79;
      return v135(v136, v137, 1, v138);
    }
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v67 = sub_25E829CDC();
  __swift_project_value_buffer(v67, qword_27FD0A4B0);

  v68 = sub_25E829CBC();
  v69 = sub_25E82A02C();

  v70 = os_log_type_enabled(v68, v69);
  v71 = v220;
  if (v70)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v226[0] = v73;
    *v72 = 136315138;
    *(v72 + 4) = sub_25E7FFAF0(a1, a2, v226);
    _os_log_impl(&dword_25E7F6000, v68, v69, "Invalid SchemaElement for label: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x25F8C1620](v73, -1, -1);
    MEMORY[0x25F8C1620](v72, -1, -1);
  }

  v74 = *(v221 + 56);
  v75 = v219;

  return v74(v75, 1, 1, v71);
}

uint64_t PlanksReader.iterBatches(label:as:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_25E7FCC80();
  if (*(v13 + 16) && (v14 = sub_25E800EB4(a1, a2), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);

    v17 = *(v16 + 16);

    if (v17)
    {
      sub_25E8072C4(a3, v12);

      return sub_25E823EE0(v5, a1, a2, v12, a4);
    }
  }

  else
  {
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v19 = sub_25E829CDC();
  __swift_project_value_buffer(v19, qword_27FD0A4B0);

  v20 = sub_25E829CBC();
  v21 = sub_25E82A02C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_25E7FFAF0(a1, a2, &v27);
    _os_log_impl(&dword_25E7F6000, v20, v21, "Found no valid indices for label: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x25F8C1620](v23, -1, -1);
    MEMORY[0x25F8C1620](v22, -1, -1);
  }

  v24 = type metadata accessor for AsyncTensorSequence(0);
  v25 = *(*(v24 - 8) + 56);

  return v25(a4, 1, 1, v24);
}

uint64_t sub_25E823EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AsyncTensorSequence(0);
  v28 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v13 + *(v11 + 36)) = 0;
  v14 = sub_25E7FCC80();
  if (*(v14 + 16) && (v15 = sub_25E800EB4(a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);

    v13[1] = a1;
    v13[2] = a2;
    v13[3] = a3;
    sub_25E8072C4(a4, v13 + *(v10 + 28));
    *(v13 + *(v10 + 32)) = v17;

    sub_25E7FE000(a2, a3);
    v19 = v18;

    sub_25E802774(a4, &qword_27FD07408, &unk_25E82C2F0);
    *v13 = v19;
    sub_25E8279C8(v13, a5);
    return (*(v28 + 56))(a5, 0, 1, v10);
  }

  else
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v21 = sub_25E829CDC();
    __swift_project_value_buffer(v21, qword_27FD0A4B0);

    v22 = sub_25E829CBC();
    v23 = sub_25E82A02C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315138;
      v26 = sub_25E7FFAF0(a2, a3, &v29);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_25E7F6000, v22, v23, "Invalid label: %s for AsyncTensorSequence.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x25F8C1620](v25, -1, -1);
      MEMORY[0x25F8C1620](v24, -1, -1);
    }

    else
    {
    }

    sub_25E802774(a4, &qword_27FD07408, &unk_25E82C2F0);
    v27 = *(v28 + 56);

    return v27(a5, 1, 1, v10);
  }
}

uint64_t PlanksReader.readTensor(label:as:)@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v225 = a3;
  v228 = a4;
  v8 = sub_25E82A30C();
  v213 = *(v8 - 8);
  v214 = v8;
  MEMORY[0x28223BE20](v8);
  v212 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07438, &qword_25E82AE18);
  MEMORY[0x28223BE20](v10 - 8);
  v222 = &v197 - v11;
  v12 = sub_25E829B9C();
  v215 = *(v12 - 8);
  v216 = v12;
  MEMORY[0x28223BE20](v12);
  v223 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E829CAC();
  v15 = *(v14 - 8);
  v229 = v14;
  v230 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v221 = &v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v218 = &v197 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v217 = &v197 - v21;
  MEMORY[0x28223BE20](v20);
  v224 = &v197 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v219 = &v197 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v197 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v197 - v29;
  v227 = sub_25E829B8C();
  v31 = *(v227 - 8);
  v32 = MEMORY[0x28223BE20](v227);
  v211 = &v197 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v210 = &v197 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v220 = &v197 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v197 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v197 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v197 - v45;
  MEMORY[0x28223BE20](v44);
  v226 = &v197 - v47;
  v48 = sub_25E7FC954();
  if (*(v48 + 16) && (v49 = sub_25E800EB4(a1, a2), (v50 & 1) != 0))
  {
    v207 = a2;
    v206 = v5;
    v208 = a1;
    v51 = *(v48 + 56) + 32 * v49;
    v52 = *(v51 + 8);
    v204 = *v51;
    v53 = *(v51 + 16);
    v203 = *(v51 + 24);
    v209 = v52;

    LOBYTE(v232) = v53;
    ScalarType.init(fieldType:)(&v232, v30);
    v54 = *(v31 + 48);
    v55 = v227;
    if (v54(v30, 1, v227) == 1)
    {
      sub_25E802774(v30, &qword_27FD07408, &unk_25E82C2F0);
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v56 = sub_25E829CDC();
      __swift_project_value_buffer(v56, qword_27FD0A4B0);
      v57 = sub_25E829CBC();
      v58 = sub_25E82A02C();

      v59 = os_log_type_enabled(v57, v58);
      v60 = v229;
      if (v59)
      {
        v61 = v53;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v232 = v63;
        *v62 = 136315138;
        v231 = v61;
        v64 = FieldType.description.getter();
        v66 = sub_25E7FFAF0(v64, v65, &v232);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_25E7F6000, v57, v58, "Invalid ScalarType for element: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x25F8C1620](v63, -1, -1);
        MEMORY[0x25F8C1620](v62, -1, -1);
      }

      return (*(v230 + 56))(v228, 1, 1, v60);
    }

    v201 = v53;
    v202 = v40;
    v205 = v31;
    v79 = *(v31 + 32);
    v79(v226, v30, v55);
    sub_25E8072C4(v225, v28);
    v200 = v31 + 48;
    v80 = v54(v28, 1, v55);
    v81 = v54;
    v199 = v31 + 32;
    if (v80 == 1)
    {
      v198 = v79;
      sub_25E802774(v28, &qword_27FD07408, &unk_25E82C2F0);
      v82 = v205;
      v83 = v206;
      goto LABEL_20;
    }

    v79(v46, v28, v55);
    v84 = sub_25E829B7C();
    v83 = v206;
    if (v84)
    {
      v198 = v79;
      v82 = v205;
      (*(v205 + 8))(v46, v55);
LABEL_20:
      v85 = sub_25E7FDF0C(v208, v207);
      v86 = v229;
      v87 = v202;
      if (v85 < 1)
      {

        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v140 = sub_25E829CDC();
        __swift_project_value_buffer(v140, qword_27FD0A4B0);
        v141 = v207;

        v133 = sub_25E829CBC();
        v134 = sub_25E82A02C();

        v142 = os_log_type_enabled(v133, v134);
        v143 = v208;
        if (!v142)
        {
          goto LABEL_37;
        }

        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v232 = v138;
        *v137 = 136315138;
        *(v137 + 4) = sub_25E7FFAF0(v143, v141, &v232);
        v139 = "Found no valid rows for label: %s";
      }

      else
      {
        v88 = v85;
        v89 = sub_25E7FCC80();
        if (*(v89 + 16))
        {
          v90 = sub_25E800EB4(v208, v207);
          if (v91)
          {
            v208 = v81;
            v92 = *(*(v89 + 56) + 8 * v90);

            v231 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
            v93 = swift_allocObject();
            *(v93 + 16) = xmmword_25E82A950;
            v94 = v203;
            *(v93 + 32) = v88;
            *(v93 + 40) = v94;
            sub_25E829BAC();
            v95 = *(v82 + 16);
            v96 = v226;
            v207 = v82 + 16;
            v206 = v95;
            v95(v87, v226, v227);
            v97 = v222;
            sub_25E829BDC();
            v98 = sub_25E829BEC();
            v99 = (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
            MEMORY[0x28223BE20](v99);
            *(&v197 - 8) = v92;
            *(&v197 - 7) = v83;
            v100 = v209;
            *(&v197 - 6) = v204;
            *(&v197 - 5) = v100;
            *(&v197 - 32) = v201;
            *(&v197 - 3) = v94;
            *(&v197 - 2) = &v231;
            v101 = v224;
            sub_25E829C3C();

            if (v231)
            {
              v102 = v229;
              if (qword_27FD072A0 != -1)
              {
                swift_once();
              }

              v103 = sub_25E829CDC();
              v104 = __swift_project_value_buffer(v103, qword_27FD0A4B0);
              v105 = *(v230 + 16);
              v106 = v217;
              v105(v217, v101, v102);
              v107 = v218;
              v105(v218, v101, v102);
              v108 = v221;
              v105(v221, v101, v102);
              v109 = sub_25E829CBC();
              v110 = sub_25E82A01C();
              if (os_log_type_enabled(v109, v110))
              {
                v111 = v107;
                v112 = swift_slowAlloc();
                v209 = swift_slowAlloc();
                v232 = v209;
                *v112 = 136315650;
                v113 = v223;
                LODWORD(v204) = v110;
                sub_25E829C7C();
                sub_25E82767C(&qword_27FD07410, MEMORY[0x277D2CCF0], MEMORY[0x277D2CD08]);
                v114 = v216;
                v115 = sub_25E82A2EC();
                v117 = v116;
                (*(v215 + 8))(v113, v114);
                v222 = v104;
                v118 = *(v230 + 8);
                v118(v106, v229);
                v119 = v82;
                v120 = sub_25E7FFAF0(v115, v117, &v232);
                v102 = v229;

                *(v112 + 4) = v120;
                *(v112 + 12) = 2048;
                v121 = sub_25E829C0C();
                v118(v111, v102);
                *(v112 + 14) = v121;
                *(v112 + 22) = 2080;
                v122 = v202;
                v123 = v221;
                sub_25E829BFC();
                v124 = ScalarType.description.getter();
                v126 = v125;
                v127 = v122;
                v128 = v227;
                (*(v119 + 8))(v127, v227);
                v223 = v118;
                v118(v123, v102);
                v129 = sub_25E7FFAF0(v124, v126, &v232);

                *(v112 + 24) = v129;
                _os_log_impl(&dword_25E7F6000, v109, v204, "Loaded tensor %s of %ld elements of type %s.", v112, 0x20u);
                v130 = v209;
                swift_arrayDestroy();
                MEMORY[0x25F8C1620](v130, -1, -1);
                MEMORY[0x25F8C1620](v112, -1, -1);
              }

              else
              {
                v165 = *(v230 + 8);
                v165(v107, v102);

                v165(v108, v102);
                v223 = v165;
                v165(v106, v102);
                v128 = v227;
              }

              v166 = v226;
              v167 = v219;
              v168 = v220;
              sub_25E8072C4(v225, v219);
              v169 = v208(v167, 1, v128);
              v170 = v224;
              if (v169 == 1)
              {
                (*(v205 + 8))(v166, v128);
                sub_25E802774(v167, &qword_27FD07408, &unk_25E82C2F0);
LABEL_51:
                v173 = v228;
                (*(v230 + 32))(v228, v170, v102);
                v161 = *(v230 + 56);
                v162 = v173;
                v163 = 0;
                v164 = v102;
                return v161(v162, v163, 1, v164);
              }

              v198(v168, v167, v128);
              sub_25E82767C(&qword_27FD07420, MEMORY[0x277D2CCE0], MEMORY[0x277D2CCE8]);
              v171 = v128;
              if (sub_25E829DCC())
              {
                v172 = *(v205 + 8);
                v172(v168, v128);
                v172(v166, v128);
                goto LABEL_51;
              }

              v174 = v210;
              v175 = v206;
              v206(v210, v166, v128);
              v176 = v211;
              v175(v211, v168, v128);
              v177 = sub_25E829CBC();
              v178 = sub_25E82A01C();
              if (os_log_type_enabled(v177, v178))
              {
                v179 = swift_slowAlloc();
                v227 = swift_slowAlloc();
                v232 = v227;
                *v179 = 136315394;
                v180 = ScalarType.description.getter();
                v181 = v176;
                v183 = v182;
                v184 = *(v205 + 8);
                v184(v174, v171);
                v185 = sub_25E7FFAF0(v180, v183, &v232);

                *(v179 + 4) = v185;
                *(v179 + 12) = 2080;
                v186 = ScalarType.description.getter();
                v188 = v187;
                v184(v181, v171);
                v168 = v220;
                v189 = sub_25E7FFAF0(v186, v188, &v232);

                *(v179 + 14) = v189;
                _os_log_impl(&dword_25E7F6000, v177, v178, "Casting tensor of type %s to type %s.", v179, 0x16u);
                v190 = v227;
                swift_arrayDestroy();
                v166 = v226;
                MEMORY[0x25F8C1620](v190, -1, -1);
                MEMORY[0x25F8C1620](v179, -1, -1);
              }

              else
              {

                v184 = *(v205 + 8);
                v184(v176, v171);
                v184(v174, v171);
              }

              v192 = v213;
              v191 = v214;
              v193 = v212;
              (*(v213 + 104))(v212, *MEMORY[0x277D84660], v214);
              v194 = v228;
              v195 = v224;
              sub_25E829C4C();
              (*(v192 + 8))(v193, v191);
              v184(v168, v171);
              v196 = v195;
              v160 = v229;
              (v223)(v196, v229);
              v184(v166, v171);
              v161 = *(v230 + 56);
              v162 = v194;
              v163 = 0;
            }

            else
            {
              v160 = v229;
              (*(v230 + 8))(v101, v229);
              (*(v82 + 8))(v96, v227);
              v161 = *(v230 + 56);
              v162 = v228;
              v163 = 1;
            }

            v164 = v160;
            return v161(v162, v163, 1, v164);
          }
        }

        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v131 = sub_25E829CDC();
        __swift_project_value_buffer(v131, qword_27FD0A4B0);
        v132 = v207;

        v133 = sub_25E829CBC();
        v134 = sub_25E82A02C();

        v135 = os_log_type_enabled(v133, v134);
        v136 = v208;
        if (!v135)
        {
LABEL_37:

          (*(v205 + 8))(v226, v227);
          return (*(v230 + 56))(v228, 1, 1, v86);
        }

        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v232 = v138;
        *v137 = 136315138;
        *(v137 + 4) = sub_25E7FFAF0(v136, v132, &v232);
        v139 = "Found no valid indices for label: %s";
      }

      _os_log_impl(&dword_25E7F6000, v133, v134, v139, v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v138);
      MEMORY[0x25F8C1620](v138, -1, -1);
      MEMORY[0x25F8C1620](v137, -1, -1);
      goto LABEL_37;
    }

    v144 = v205;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v145 = sub_25E829CDC();
    __swift_project_value_buffer(v145, qword_27FD0A4B0);
    v146 = v227;
    (*(v144 + 16))(v43, v46, v227);
    v147 = sub_25E829CBC();
    v148 = sub_25E82A02C();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v232 = v225;
      *v149 = 136315394;
      LODWORD(v224) = v148;
      v150 = ScalarType.description.getter();
      v152 = v151;
      v153 = *(v144 + 8);
      v153(v43, v146);
      v154 = sub_25E7FFAF0(v150, v152, &v232);

      *(v149 + 4) = v154;
      *(v149 + 12) = 2080;
      v231 = v201;
      v155 = FieldType.description.getter();
      v157 = sub_25E7FFAF0(v155, v156, &v232);

      *(v149 + 14) = v157;
      _os_log_impl(&dword_25E7F6000, v147, v224, "Invalid requested type %s for tensor of type: %s", v149, 0x16u);
      v158 = v225;
      swift_arrayDestroy();
      MEMORY[0x25F8C1620](v158, -1, -1);
      MEMORY[0x25F8C1620](v149, -1, -1);
    }

    else
    {

      v153 = *(v144 + 8);
      v153(v43, v146);
    }

    v159 = v228;
    sub_25E829C1C();
    v153(v46, v146);
    v153(v226, v146);
    return (*(v230 + 56))(v159, 0, 1, v229);
  }

  else
  {
    v68 = a1;

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v69 = sub_25E829CDC();
    __swift_project_value_buffer(v69, qword_27FD0A4B0);

    v70 = a2;
    v71 = sub_25E829CBC();
    v72 = sub_25E82A02C();

    v73 = os_log_type_enabled(v71, v72);
    v74 = v229;
    if (v73)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v232 = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_25E7FFAF0(v68, v70, &v232);
      _os_log_impl(&dword_25E7F6000, v71, v72, "Invalid SchemaElement for label: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x25F8C1620](v76, -1, -1);
      MEMORY[0x25F8C1620](v75, -1, -1);
    }

    v77 = *(v230 + 56);
    v78 = v228;

    return v77(v78, 1, 1, v74);
  }
}

void sub_25E825944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, _BYTE *a9)
{
  v61 = a4;
  v9 = *(a3 + 16);
  if (!v9)
  {
LABEL_23:
    *a9 = 1;
    return;
  }

  v12 = 0;
  v56 = v61 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
  v54 = a2 - a1;
  v13 = (a7 - 1);
  v14 = (a3 + 40);
  v55 = v13;
  while (1)
  {
    v15 = *(v14 - 1);
    if (v15 < 0 || (v16 = *(v56 + 16), v15 >= *(v16 + 16)) || (v17 = *v14, *v14 < 0) || (v18 = v16 + 40 * v15, v19 = *(v18 + 40), v17 >= *(v19 + 16)))
    {
      if (qword_27FD072A0 == -1)
      {
LABEL_25:
        v35 = sub_25E829CDC();
        __swift_project_value_buffer(v35, qword_27FD0A4B0);
        v36 = sub_25E829CBC();
        v37 = sub_25E82A02C();
        if (!os_log_type_enabled(v36, v37))
        {
          goto LABEL_47;
        }

        v38 = swift_slowAlloc();
        *v38 = 0;
        v39 = "Invalid index";
        v40 = v37;
        v41 = v36;
        v42 = v38;
        v43 = 2;
LABEL_44:
        _os_log_impl(&dword_25E7F6000, v41, v40, v39, v42, v43);
        v51 = v38;
        goto LABEL_45;
      }

LABEL_53:
      swift_once();
      goto LABEL_25;
    }

    v20 = *(v18 + 64);
    v21 = (v19 + (v17 << 6));
    v22 = v21[2];
    v23 = v21[3];
    v24 = v21[4];
    *&v60[10] = *(v21 + 74);
    v59 = v23;
    *v60 = v24;
    v58 = v22;
    if (v13 > 9)
    {
      v25 = 1;
    }

    else
    {
      v25 = qword_25E82C3F8[v13];
    }

    v26 = a8 * v25;
    if ((a8 * v25) >> 64 != (a8 * v25) >> 63)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v27 = v26 * v20;
    if ((v26 * v20) >> 64 != (v26 * v20) >> 63)
    {
      goto LABEL_49;
    }

    v28 = *(&v59 + 1);
    if (*(&v59 + 1) != v27)
    {
      break;
    }

    v29 = v12 + v27;
    if (__OFADD__(v12, v27))
    {
      goto LABEL_50;
    }

    if (a1)
    {
      if (v54 < v29)
      {
        goto LABEL_31;
      }

      if (v29 < v12)
      {
        goto LABEL_51;
      }

      v30 = a1 + v12;
      v31 = a1 + v29;
    }

    else
    {
      if (v29 > 0)
      {
LABEL_31:
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v46 = sub_25E829CDC();
        __swift_project_value_buffer(v46, qword_27FD0A4B0);
        v36 = sub_25E829CBC();
        v47 = sub_25E82A02C();
        if (!os_log_type_enabled(v36, v47))
        {
          goto LABEL_47;
        }

        v48 = swift_slowAlloc();
        v49 = v48;
        *v48 = 134218240;
        v50 = v54;
        if (!a1)
        {
          v50 = 0;
        }

        *(v48 + 4) = v50;
        *(v48 + 12) = 2048;
        *(v48 + 14) = v29;
        _os_log_impl(&dword_25E7F6000, v36, v47, "Failed at computing chunk offset: %ld vs %ld ", v48, 0x16u);
        v51 = v49;
LABEL_45:
        MEMORY[0x25F8C1620](v51, -1, -1);
        goto LABEL_47;
      }

      if (v29 < v12)
      {
        goto LABEL_52;
      }

      v31 = 0;
      v30 = 0;
    }

    v32 = v59;
    sub_25E8026B4(&v58, v57);
    v33 = sub_25E829CFC();
    if (v34)
    {
      v57[0] = v33;
      sub_25E7FFC08();
      swift_willThrowTypedImpl();
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v52 = sub_25E829CDC();
      __swift_project_value_buffer(v52, qword_27FD0A4B0);
      sub_25E8026B4(&v58, v57);
      v36 = sub_25E829CBC();
      v45 = sub_25E82A02C();
      if (!os_log_type_enabled(v36, v45))
      {
        goto LABEL_46;
      }

      v38 = swift_slowAlloc();
      *v38 = 134218240;
      sub_25E80281C(&v58);
      *(v38 + 4) = v32;
      sub_25E80281C(&v58);
      *(v38 + 12) = 2048;
      v53 = v31 - v30;
      if (!v30)
      {
        v53 = 0;
      }

      *(v38 + 14) = v53;
      v39 = "Failed at reading chunk at %lld for %ld bytes.";
LABEL_43:
      v40 = v45;
      v41 = v36;
      v42 = v38;
      v43 = 22;
      goto LABEL_44;
    }

    v14 += 2;
    sub_25E80281C(&v58);
    v12 = v29;
    --v9;
    v13 = v55;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  sub_25E8026B4(&v58, v57);
  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v44 = sub_25E829CDC();
  __swift_project_value_buffer(v44, qword_27FD0A4B0);
  sub_25E8026B4(&v58, v57);
  v36 = sub_25E829CBC();
  v45 = sub_25E82A02C();
  if (os_log_type_enabled(v36, v45))
  {
    v38 = swift_slowAlloc();
    *v38 = 134218240;
    sub_25E80281C(&v58);
    *(v38 + 4) = v28;
    sub_25E80281C(&v58);
    *(v38 + 12) = 2048;
    *(v38 + 14) = v27;
    v39 = "Found invalid chunk: %lld vs %ld";
    goto LABEL_43;
  }

LABEL_46:
  sub_25E80281C(&v58);
  sub_25E80281C(&v58);
LABEL_47:
}

uint64_t PlanksReader.readBatch<A, B>(label:as:quantization:batchIndex:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, unint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = sub_25E7FCC80();
  if (*(v19 + 16))
  {
    v41 = a7;
    v20 = a1;
    v21 = sub_25E800EB4(a1, a2);
    if (v22)
    {
      v40 = a9;
      v23 = *(*(v19 + 56) + 8 * v21);

      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v24 > a5;
      }

      else
      {
        v25 = 0;
      }

      if (v25)
      {
        v37 = v23 + 16 * a5;
        v38 = *(v37 + 32);
        v39 = *(v37 + 40);

        return sub_25E826158(a1, a2, v38, v39, a3, a4, a6, v41, v40, a8, a10, a11, a12, a13, a14);
      }

      a9 = v40;
    }
  }

  else
  {
    v20 = a1;
  }

  v26 = v20;
  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v27 = sub_25E829CDC();
  __swift_project_value_buffer(v27, qword_27FD0A4B0);

  v28 = sub_25E829CBC();
  v29 = sub_25E82A02C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = a9;
    v32 = swift_slowAlloc();
    v46 = v32;
    *v30 = 136315138;
    *(v30 + 4) = sub_25E7FFAF0(v26, a2, &v46);
    _os_log_impl(&dword_25E7F6000, v28, v29, "Found no valid indices for label: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v33 = v32;
    a9 = v31;
    MEMORY[0x25F8C1620](v33, -1, -1);
    MEMORY[0x25F8C1620](v30, -1, -1);
  }

  v34 = sub_25E829CAC();
  v35 = *(*(v34 - 8) + 56);

  return v35(a9, 1, 1, v34);
}

uint64_t sub_25E826158@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v131 = a8;
  v132 = a6;
  v126 = a1;
  v127 = a2;
  v129 = a7;
  v130 = a14;
  v124 = a13;
  v120 = a12;
  v121 = a15;
  v128 = a11;
  v119 = a10;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07438, &qword_25E82AE18);
  MEMORY[0x28223BE20](v21 - 8);
  v118 = &v112 - v22;
  v23 = sub_25E829B8C();
  v125 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v123 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_25E829B9C();
  MEMORY[0x28223BE20](v25 - 8);
  v122 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v112 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07998, &qword_25E82C3E8);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v112 - v31;
  v33 = sub_25E829CAC();
  v133 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0 || (v36 = *(v16 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16), *(v36 + 16) <= a3) || a4 < 0 || (v37 = *(v36 + 40 * a3 + 40), *(v37 + 16) <= a4) || (v38 = v37 + (a4 << 6), v39 = *(v38 + 88), *(v38 + 88) == 12))
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v40 = sub_25E829CDC();
    __swift_project_value_buffer(v40, qword_27FD0A4B0);
    v41 = sub_25E829CBC();
    v42 = sub_25E82A02C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_25E7F6000, v41, v42, "Invalid index.", v43, 2u);
      MEMORY[0x25F8C1620](v43, -1, -1);
    }

    v44 = *(v133 + 56);
    v45 = a9;
    v46 = 1;
LABEL_11:

    return v44(v45, v46, 1, v33);
  }

  v113 = *(v38 + 88);
  v114 = v35;
  v115 = a5;
  v116 = a9;
  v49 = *(v38 + 72);
  v48 = *(v38 + 80);
  v117 = v39 >> 8;
  (*(v130 + 8))(v134, v131);
  LOBYTE(v137) = v39;
  v50 = FieldType.rawValue.getter();
  v52 = v51;
  if (v50 == FieldType.rawValue.getter() && v52 == v53)
  {
  }

  else
  {
    v54 = sub_25E82A32C();

    if ((v54 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  (*(v128 + 8))(v134, v129);
  LOBYTE(v137) = v117;
  v55 = FieldType.rawValue.getter();
  v57 = v56;
  if (v55 == FieldType.rawValue.getter() && v57 == v58)
  {

    goto LABEL_22;
  }

  v59 = sub_25E82A32C();

  if ((v59 & 1) == 0)
  {
LABEL_28:
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v68 = sub_25E829CDC();
    __swift_project_value_buffer(v68, qword_27FD0A4B0);
    v69 = sub_25E829CBC();
    v70 = sub_25E82A02C();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v116;
    if (v71)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v134[0] = v74;
      *v73 = 136315394;
      v75 = sub_25E82A43C();
      v77 = sub_25E7FFAF0(v75, v76, v134);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      LOBYTE(v137) = v117;
      v78 = FieldType.description.getter();
      v80 = sub_25E7FFAF0(v78, v79, v134);

      *(v73 + 14) = v80;
      _os_log_impl(&dword_25E7F6000, v69, v70, "Invalid requested type %s for tensor of type: %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C1620](v74, -1, -1);
      MEMORY[0x25F8C1620](v73, -1, -1);
    }

    sub_25E829C1C();
    v44 = *(v133 + 56);
    v45 = v72;
    v46 = 0;
    goto LABEL_11;
  }

LABEL_22:
  (*(v125 + 56))(v29, 1, 1, v23);
  v61 = v126;
  v60 = v127;
  sub_25E8224F4(v126, v127, a3, a4, v29, v32);
  sub_25E802774(v29, &qword_27FD07408, &unk_25E82C2F0);
  if ((*(v133 + 48))(v32, 1, v33) == 1)
  {
    sub_25E802774(v32, &qword_27FD07998, &qword_25E82C3E8);
    v62 = v116;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v63 = sub_25E829CDC();
    __swift_project_value_buffer(v63, qword_27FD0A4B0);

    v64 = sub_25E829CBC();
    v65 = sub_25E82A02C();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v134[0] = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_25E7FFAF0(v61, v60, v134);
      _os_log_impl(&dword_25E7F6000, v64, v65, "Failed reading batch: %s.", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x25F8C1620](v67, -1, -1);
      MEMORY[0x25F8C1620](v66, -1, -1);
    }

    return (*(v133 + 56))(v62, 1, 1, v33);
  }

  else
  {
    v81 = v114;
    (*(v133 + 32))(v114, v32, v33);
    v82 = v131;
    v137 = sub_25E829C9C();
    v134[0] = v49;
    v134[1] = v48;
    v135 = v113;
    v136 = v117;
    v83 = sub_25E829F4C();
    WitnessTable = swift_getWitnessTable();
    v127 = v33;
    v84 = v121;
    v110 = v121;
    v86 = v128;
    v85 = v129;
    v87 = v120;
    v88 = v130;
    v89 = rebuildArray<A, B, C>(_:parameters:)(&v137, v134, v129, v82, v83, v128, v120, v130);

    if (v89)
    {
      sub_25E829C7C();
      v90 = v119;
      sub_25E829BCC();
      v91 = v118;
      sub_25E829BDC();
      v92 = sub_25E829BEC();
      v93 = (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
      v132 = &v112;
      MEMORY[0x28223BE20](v93);
      *(&v112 - 10) = v85;
      *(&v112 - 9) = v82;
      *(&v112 - 8) = v90;
      *(&v112 - 7) = v86;
      v94 = v124;
      *(&v112 - 6) = v87;
      *(&v112 - 5) = v94;
      *(&v112 - 4) = v88;
      *(&v112 - 3) = v84;
      v110 = v89;
      v95 = v116;
      sub_25E829C3C();

      v96 = v127;
      (*(v133 + 8))(v81, v127);
      return (*(v133 + 56))(v95, 0, 1, v96);
    }

    else
    {
      v97 = v116;
      v98 = v127;
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v99 = sub_25E829CDC();
      __swift_project_value_buffer(v99, qword_27FD0A4B0);
      v100 = sub_25E829CBC();
      v101 = sub_25E82A02C();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v134[0] = v103;
        *v102 = 136315394;
        v104 = sub_25E82A43C();
        v106 = sub_25E7FFAF0(v104, v105, v134);

        *(v102 + 4) = v106;
        *(v102 + 12) = 2080;
        v107 = sub_25E82A43C();
        v109 = sub_25E7FFAF0(v107, v108, v134);

        *(v102 + 14) = v109;
        _os_log_impl(&dword_25E7F6000, v100, v101, "Failed rebuilding of array of type %s into type %s.", v102, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v103, -1, -1);
        MEMORY[0x25F8C1620](v102, -1, -1);
      }

      (*(v133 + 8))(v114, v98);
      return (*(v133 + 56))(v97, 1, 1, v98);
    }
  }
}

void sub_25E826DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  if ((a5 - 1) > 9u)
  {
    v15 = 1;
  }

  else
  {
    v15 = qword_25E82C3F8[(a5 - 1)];
  }

  v16 = a6 * v15;
  if ((a6 * v15) >> 64 != (a6 * v15) >> 63)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = *(a7 + 32);
  v10 = v16 * v17;
  if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
LABEL_15:
    v27 = sub_25E829CDC();
    __swift_project_value_buffer(v27, qword_27FD0A4B0);
    sub_25E8026B4(a8, v30);
    v22 = sub_25E829CBC();
    v28 = sub_25E82A02C();
    if (os_log_type_enabled(v22, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134218240;
      *(v29 + 4) = v11;
      sub_25E80281C(a8);
      *(v29 + 12) = 2048;
      *(v29 + 14) = v10;
      _os_log_impl(&dword_25E7F6000, v22, v28, "Found invalid chunk: %lld vs %ld", v29, 0x16u);
      v26 = v29;
LABEL_17:
      MEMORY[0x25F8C1620](v26, -1, -1);
LABEL_19:

      return;
    }

LABEL_18:
    sub_25E80281C(a8);
    goto LABEL_19;
  }

  v11 = *(a8 + 24);
  if (v11 != v10)
  {
    if (qword_27FD072A0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v18 = *(a8 + 16);
  v19 = sub_25E829CFC();
  if (v20)
  {
    v30[0] = v19;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v21 = sub_25E829CDC();
    __swift_project_value_buffer(v21, qword_27FD0A4B0);
    sub_25E8026B4(a8, v30);
    v22 = sub_25E829CBC();
    v23 = sub_25E82A02C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v18;
      sub_25E80281C(a8);
      *(v24 + 12) = 2048;
      v25 = a2 - a1;
      if (!a1)
      {
        v25 = 0;
      }

      *(v24 + 14) = v25;
      _os_log_impl(&dword_25E7F6000, v22, v23, "Failed at reading chunk at %lld for %ld bytes.", v24, 0x16u);
      v26 = v24;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  *a10 = 1;
}

uint64_t AsyncTensorSequence.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25E8270F4, 0, 0);
}

uint64_t sub_25E8270F4()
{
  if ((sub_25E829F7C() & 1) != 0 || (v1 = v0[3], v2 = type metadata accessor for AsyncTensorSequence(0), v3 = v2[9], v4 = *(v1 + v3), v5 = *(v1 + v2[8]), v4 >= *(v5 + 16)))
  {
    v10 = v0[2];
    v11 = sub_25E829CAC();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    v6 = v0[2];
    v7 = v5 + 16 * v4;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    *(v1 + v3) = v4 + 1;
    sub_25E8224F4(*(v1 + 16), *(v1 + 24), v8, v9, v1 + v2[7], v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_25E8271F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25E827290;

  return AsyncTensorSequence.next()(a1);
}

uint64_t sub_25E827290()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25E827388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_25E827454;

  return (sub_25E822184)(a1, a2, a3, v3 + 16);
}

uint64_t sub_25E827454()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for AsyncTensorSequence(uint64_t a1)
{
  result = qword_27FD07970;
  if (!qword_27FD07970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E8275D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncTensorSequence(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E82767C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E8276D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25E8277A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25E827858(uint64_t a1)
{
  type metadata accessor for PlanksReader(319);
  if (v1 <= 0x3F)
  {
    sub_25E82790C(319);
    if (v2 <= 0x3F)
    {
      sub_25E827964(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25E82790C(uint64_t a1)
{
  if (!qword_27FD07980)
  {
    sub_25E829B8C();
    v1 = sub_25E82A03C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD07980);
    }
  }
}

void sub_25E827964(uint64_t a1)
{
  if (!qword_27FD07988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07990, &qword_25E82C3D8);
    v1 = sub_25E829F4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD07988);
    }
  }
}

uint64_t sub_25E8279C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncTensorSequence(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E827A7C@<X0>(uint64_t *a3@<X8>)
{
  sub_25E827AE8();
  result = sub_25E8299BC();
  *a3 = result;
  return result;
}

unint64_t sub_25E827AE8()
{
  result = qword_27FD079A0;
  if (!qword_27FD079A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD079A0);
  }

  return result;
}

uint64_t computeQuantizationParameters<A, B, C>(_:upperbound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v73 = a8;
  v74 = a6;
  v65 = a2;
  v75 = a9;
  v68 = a4;
  v71 = *(a4 - 8);
  v64 = a10;
  MEMORY[0x28223BE20](a1);
  v67 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = v54 - v19;
  v55 = sub_25E82A03C();
  v54[0] = *(v55 - 8);
  v20 = MEMORY[0x28223BE20](v55);
  v59 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v54 - v23;
  v25 = *(a3 - 8);
  v26 = MEMORY[0x28223BE20](v22);
  v66 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v70 = v54 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = v54 - v30;
  v72 = a7;
  v32 = *(a7 + 16);
  v62 = a5;
  v63 = v32;
  v33 = *(*(v32 + 24) + 8);
  v60 = a11;
  v57 = v33;
  v61 = a1;
  sub_25E829E3C();
  v34 = *(v25 + 48);
  v35 = v34(v24, 1, a3);
  v69 = v31;
  v56 = v17;
  v54[1] = AssociatedTypeWitness;
  if (v35 == 1)
  {
    swift_getAssociatedConformanceWitness();
    sub_25E82A33C();
    sub_25E82A2FC();
    if (v34(v24, 1, a3) != 1)
    {
      (*(v54[0] + 8))(v24, v55);
    }
  }

  else
  {
    (*(v25 + 32))(v31, v24, a3);
  }

  v36 = v59;
  sub_25E829E4C();
  v37 = v34(v36, 1, a3);
  v38 = v68;
  if (v37 == 1)
  {
    swift_getAssociatedConformanceWitness();
    sub_25E82A33C();
    v39 = v70;
    sub_25E82A2FC();
    if (v34(v36, 1, a3) != 1)
    {
      (*(v54[0] + 8))(v36, v55);
    }
  }

  else
  {
    v39 = v70;
    (*(v25 + 32))(v70, v36, a3);
  }

  v40 = v71;
  v41 = v67;
  (*(v71 + 16))(v67, v65, v38);
  if (sub_25E82A07C() < 65)
  {
    v43 = sub_25E82A08C();
    v44 = sub_25E82A06C();
    (*(v40 + 8))(v41, v38);
    if (v43)
    {
      v42 = v44;
    }

    else
    {
      v42 = v44;
    }
  }

  else
  {
    sub_25E8032B4();
    sub_25E828CB0();
    sub_25E829D9C();
    (*(v40 + 8))(v41, v38);
    v42 = v77[0];
  }

  v45 = v69;
  v46 = v66;
  sub_25E82A1BC();
  sub_25E8032B4();
  sub_25E829D8C();
  v47 = v42 / v77[0];
  (*(v25 + 16))(v46, v39, a3);
  sub_25E829D8C();
  v48 = -(v77[0] * v47);
  (*(v73 + 8))(v77, v38);
  v49 = LOBYTE(v77[0]);
  (*(v74 + 8))(&v76, a3);
  v50 = *(v25 + 8);
  v50(v39, a3);
  result = (v50)(v45, a3);
  v52 = v76;
  v53 = v75;
  *v75 = v48;
  v53[1] = v47;
  *(v53 + 16) = v49;
  *(v53 + 17) = v52;
  return result;
}

uint64_t quantizeArray<A, B, C>(_:parameters:)(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a7;
  v59 = a1;
  v13 = *a2;
  v14 = a2[1];
  v61[0] = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = *(a6 + 8);
  v16(&v62, a3, a6);
  v60 = v15;
  LOBYTE(v63) = v15;
  v17 = FieldType.rawValue.getter();
  v19 = v18;
  if (v17 == FieldType.rawValue.getter() && v19 == v20)
  {
  }

  else
  {
    v21 = sub_25E82A32C();

    if ((v21 & 1) == 0)
    {
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v33 = sub_25E829CDC();
      __swift_project_value_buffer(v33, qword_27FD0A4B0);
      v34 = sub_25E829CBC();
      v35 = sub_25E82A02C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v62 = v37;
        *v36 = 136315394;
        v16(&v63, a3, a6);
        v38 = FieldType.description.getter();
        v40 = sub_25E7FFAF0(v38, v39, &v62);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        LOBYTE(v63) = v60;
        v41 = FieldType.description.getter();
        v43 = sub_25E7FFAF0(v41, v42, &v62);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid input type %s for quantization logical type: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      return 0;
    }
  }

  v22 = *(a8 + 8);
  v22(&v62, a4, a8);
  LOBYTE(v63) = v61[0];
  v23 = FieldType.rawValue.getter();
  v25 = v24;
  if (v23 == FieldType.rawValue.getter() && v25 == v26)
  {

LABEL_9:
    MEMORY[0x28223BE20](v27);
    v55[2] = a3;
    v55[3] = a4;
    v55[4] = a5;
    v55[5] = a6;
    v55[6] = v58;
    v55[7] = a8;
    v55[8] = v30;
    v55[9] = v29;
    v55[10] = v13;
    v55[11] = v14;
    v56 = v61[0];
    v57 = v60;
    return sub_25E828FB4(sub_25E829898, v55, a5, a4, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v31);
  }

  v28 = sub_25E82A32C();

  if (v28)
  {
    goto LABEL_9;
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v44 = sub_25E829CDC();
  __swift_project_value_buffer(v44, qword_27FD0A4B0);
  v45 = sub_25E829CBC();
  v46 = sub_25E82A02C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v62 = v48;
    *v47 = 136315394;
    v22(&v63, a4, a8);
    v49 = FieldType.description.getter();
    v51 = sub_25E7FFAF0(v49, v50, &v62);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    LOBYTE(v63) = v61[0];
    v52 = FieldType.description.getter();
    v54 = sub_25E7FFAF0(v52, v53, &v62);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_25E7F6000, v45, v46, "Invalid output type %s for quantization physical type: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C1620](v48, -1, -1);
    MEMORY[0x25F8C1620](v47, -1, -1);
  }

  return 0;
}

uint64_t rebuildArray<A, B, C>(_:parameters:)(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a7;
  v59 = a1;
  v13 = *a2;
  v14 = a2[1];
  v61[0] = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = *(a6 + 8);
  v16(&v62, a3, a6);
  v60 = v15;
  LOBYTE(v63) = v15;
  v17 = FieldType.rawValue.getter();
  v19 = v18;
  if (v17 == FieldType.rawValue.getter() && v19 == v20)
  {
  }

  else
  {
    v21 = sub_25E82A32C();

    if ((v21 & 1) == 0)
    {
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v33 = sub_25E829CDC();
      __swift_project_value_buffer(v33, qword_27FD0A4B0);
      v34 = sub_25E829CBC();
      v35 = sub_25E82A02C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v62 = v37;
        *v36 = 136315394;
        v16(&v63, a3, a6);
        v38 = FieldType.description.getter();
        v40 = sub_25E7FFAF0(v38, v39, &v62);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        LOBYTE(v63) = v60;
        v41 = FieldType.description.getter();
        v43 = sub_25E7FFAF0(v41, v42, &v62);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid input type %s for quantization logical type: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      return 0;
    }
  }

  v22 = *(a8 + 8);
  v22(&v62, a4, a8);
  LOBYTE(v63) = v61[0];
  v23 = FieldType.rawValue.getter();
  v25 = v24;
  if (v23 == FieldType.rawValue.getter() && v25 == v26)
  {

LABEL_9:
    MEMORY[0x28223BE20](v27);
    v55[2] = a3;
    v55[3] = a4;
    v55[4] = a5;
    v55[5] = a6;
    v55[6] = v58;
    v55[7] = a8;
    v55[8] = v30;
    v55[9] = v29;
    v55[10] = v13;
    v55[11] = v14;
    v56 = v61[0];
    v57 = v60;
    return sub_25E828FB4(sub_25E8298C4, v55, a5, a3, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v31);
  }

  v28 = sub_25E82A32C();

  if (v28)
  {
    goto LABEL_9;
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v44 = sub_25E829CDC();
  __swift_project_value_buffer(v44, qword_27FD0A4B0);
  v45 = sub_25E829CBC();
  v46 = sub_25E82A02C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v62 = v48;
    *v47 = 136315394;
    v22(&v63, a4, a8);
    v49 = FieldType.description.getter();
    v51 = sub_25E7FFAF0(v49, v50, &v62);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    LOBYTE(v63) = v61[0];
    v52 = FieldType.description.getter();
    v54 = sub_25E7FFAF0(v52, v53, &v62);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_25E7F6000, v45, v46, "Invalid output type %s for quantization physical type: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C1620](v48, -1, -1);
    MEMORY[0x25F8C1620](v47, -1, -1);
  }

  return 0;
}

unint64_t sub_25E828CB0()
{
  result = qword_27FD079A8;
  if (!qword_27FD079A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD079A8);
  }

  return result;
}

uint64_t sub_25E828D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, uint64_t a7)
{
  v26[2] = a4;
  v26[1] = a3;
  v26[0] = a7;
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v26 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v26 - v21;
  (*(v23 + 16))(v12);
  sub_25E8032B4();
  sub_25E829D8C();
  v27 = v27 * a6 + a5;
  sub_25E82A09C();
  sub_25E82A19C();
  sub_25E82A34C();
  v24 = *(v14 + 8);
  v24(v17, a2);
  sub_25E82A18C();
  sub_25E82A35C();
  v24(v17, a2);
  v24(v20, a2);
  return (v24)(v22, a2);
}

uint64_t sub_25E828FB4(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_25E82A03C();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_25E829E1C();
  v63 = sub_25E82A14C();
  v58 = sub_25E82A15C();
  sub_25E82A12C();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_25E829E0C();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25E82A05C();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_25E82A13C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_25E82A05C();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_25E82A13C();
      sub_25E82A05C();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_25E8296A8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a5@<X8>, uint64_t a8)
{
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12);
  if (sub_25E82A07C() < 65)
  {
    v14[1] = a5;
    sub_25E82A08C();
    sub_25E82A06C();
  }

  else
  {
    sub_25E8032B4();
    sub_25E828CB0();
    sub_25E829D9C();
  }

  (*(v10 + 8))(v12, a3);
  return sub_25E829DAC();
}