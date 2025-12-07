uint64_t sub_25E807644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E80768C(void *a1, __n128 a2)
{
  v3 = *(v2 + 16);
  if (*a1 == *v3 && a1[1] == v3[1])
  {
    return 1;
  }

  else
  {
    return sub_25E82A32C() & 1;
  }
}

unint64_t sub_25E8076E4()
{
  result = qword_27FD07430;
  if (!qword_27FD07430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07428, &qword_25E82AE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07430);
  }

  return result;
}

uint64_t PlanksReader.readBatch<A>(label:as:batchIndex:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_25E7FCC80();
  if (*(v12 + 16) && (v13 = sub_25E800EB4(a1, a2), (v14 & 1) != 0) && ((v15 = *(*(v12 + 56) + 8 * v13), , , (v16 = *(v15 + 16)) != 0) ? (v17 = v16 > a4) : (v17 = 0), v17))
  {
    v24 = v15 + 16 * a4;
    v25 = *(v24 + 32);
    v26 = *(v24 + 40);

    return sub_25E807984(a1, a2, a3, v25, v26, a5, a6);
  }

  else
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v18 = sub_25E829CDC();
    __swift_project_value_buffer(v18, qword_27FD0A4B0);

    v19 = sub_25E829CBC();
    v20 = sub_25E82A02C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_25E7FFAF0(a1, a2, &v27);
      _os_log_impl(&dword_25E7F6000, v19, v20, "Found no valid indices for label: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x25F8C1620](v22, -1, -1);
      MEMORY[0x25F8C1620](v21, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_25E807984(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = sub_25E7FC954();
  if (!*(v15 + 16) || (v16 = sub_25E800EB4(a1, a2), (v17 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v25 = sub_25E829CDC();
    __swift_project_value_buffer(v25, qword_27FD0A4B0);

    v26 = sub_25E829CBC();
    v27 = sub_25E82A02C();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_23;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v72[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_25E7FFAF0(a1, a2, v72);
    _os_log_impl(&dword_25E7F6000, v26, v27, "Invalid SchemaElement for label: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x25F8C1620](v29, -1, -1);
    v30 = v28;
    goto LABEL_22;
  }

  v18 = *(v15 + 56) + 32 * v16;
  v19 = *(v18 + 8);
  v65 = *v18;
  v20 = *(v18 + 16);
  v68 = *(v18 + 24);

  v66 = *(a7 + 8);
  v66(v71, a6, a7);
  v67 = v20;
  LOBYTE(v72[0]) = v20;
  v21 = FieldType.rawValue.getter();
  v23 = v22;
  if (v21 == FieldType.rawValue.getter() && v23 == v24)
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

      v45 = sub_25E829CDC();
      __swift_project_value_buffer(v45, qword_27FD0A4B0);

      v46 = sub_25E829CBC();
      v47 = sub_25E82A02C();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v72[0] = v49;
        *v48 = 136315394;
        v66(v71, a6, a7);
        v50 = FieldType.description.getter();
        v52 = sub_25E7FFAF0(v50, v51, v72);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        v53 = sub_25E7FED8C(v65, v19, v67, v68);
        v55 = v54;

        v56 = sub_25E7FFAF0(v53, v55, v72);

        *(v48 + 14) = v56;
        _os_log_impl(&dword_25E7F6000, v46, v47, "Invalid array type: %s for schema: %s", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v49, -1, -1);
        MEMORY[0x25F8C1620](v48, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  if (a4 < 0 || (v31 = *(v8 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16), *(v31 + 16) <= a4) || a5 < 0 || (v32 = v31 + 40 * a4, v33 = *(v32 + 40), *(v33 + 16) <= a5))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v41 = sub_25E829CDC();
    __swift_project_value_buffer(v41, qword_27FD0A4B0);
    v26 = sub_25E829CBC();
    v42 = sub_25E82A02C();
    if (!os_log_type_enabled(v26, v42))
    {
      goto LABEL_23;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_25E7F6000, v26, v42, "Invalid index", v43, 2u);
    v30 = v43;
LABEL_22:
    MEMORY[0x25F8C1620](v30, -1, -1);
LABEL_23:

    return 0;
  }

  v34 = *(v32 + 64);
  v35 = (v33 + (a5 << 6));
  v36 = v35[2];
  v37 = v35[3];
  v38 = v35[4];
  *&v73[10] = *(v35 + 74);
  v72[1] = v37;
  *v73 = v38;
  v72[0] = v36;
  sub_25E8026B4(v72, v71);

  v70 = 0;
  v39 = v68 * v34;
  if ((v68 * v34) >> 64 == (v68 * v34) >> 63)
  {
    if ((v67 - 1) > 9)
    {
      v40 = 1;
    }

    else
    {
      v40 = qword_25E82B0A0[(v67 - 1)];
    }

    if ((v39 * v40) >> 64 == (v39 * v40) >> 63)
    {
      MEMORY[0x28223BE20](v39);
      sub_25E829EFC();
      sub_25E80281C(v72);

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  swift_once();
  v57 = sub_25E829CDC();
  __swift_project_value_buffer(v57, qword_27FD0A4B0);

  v58 = sub_25E829CBC();
  v59 = sub_25E82A01C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v71[0] = v61;
    *v60 = 134218242;
    *(v60 + 4) = sub_25E829F1C();

    *(v60 + 12) = 2080;
    v66(&v69, a6, a7);
    v62 = FieldType.description.getter();
    v64 = sub_25E7FFAF0(v62, v63, v71);

    *(v60 + 14) = v64;
    _os_log_impl(&dword_25E7F6000, v58, v59, "Loaded array of %ld elements of type %s.", v60, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x25F8C1620](v61, -1, -1);
    MEMORY[0x25F8C1620](v60, -1, -1);
  }

  else
  {
  }

  return v21;
}

double PlanksReader.iterBatches<A>(label:as:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = sub_25E7FCC80();
  if (*(v8 + 16) && (v9 = sub_25E800EB4(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    v12 = *(v11 + 16);

    if (v12)
    {

      return sub_25E808330(v4, a1, a2, a3);
    }
  }

  else
  {
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v14 = sub_25E829CDC();
  __swift_project_value_buffer(v14, qword_27FD0A4B0);

  v15 = sub_25E829CBC();
  v16 = sub_25E82A02C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_25E7FFAF0(a1, a2, &v19);
    _os_log_impl(&dword_25E7F6000, v15, v16, "Found no valid indices for label: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x25F8C1620](v18, -1, -1);
    MEMORY[0x25F8C1620](v17, -1, -1);
  }

  result = 0.0;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

double sub_25E808330@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_25E7FCC80();
  if (*(v8 + 16) && (v9 = sub_25E800EB4(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);

    sub_25E7FE000(a2, a3);
    v13 = v12;

    *a4 = v13;
    a4[1] = a1;
    a4[2] = a2;
    a4[3] = a3;
    a4[4] = v11;
    a4[5] = 0;
  }

  else
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v15 = sub_25E829CDC();
    __swift_project_value_buffer(v15, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      v20 = sub_25E7FFAF0(a2, a3, &v21);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_25E7F6000, v16, v17, "Invalid label: %s for AsyncArraySequence.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x25F8C1620](v19, -1, -1);
      MEMORY[0x25F8C1620](v18, -1, -1);
    }

    else
    {
    }

    result = 0.0;
    *(a4 + 1) = 0u;
    *(a4 + 2) = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t PlanksReader.readArray<A>(label:as:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_25E7FC954();
  if (!*(v9 + 16) || (v10 = sub_25E800EB4(a1, a2), (v11 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v19 = sub_25E829CDC();
    __swift_project_value_buffer(v19, qword_27FD0A4B0);

    v20 = sub_25E829CBC();
    v21 = sub_25E82A02C();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_11;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v60 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_25E7FFAF0(a1, a2, &v60);
    v24 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v12 = *(v9 + 56) + 32 * v10;
  v13 = *(v12 + 8);
  v55 = *v12;
  v14 = *(v12 + 16);
  v57 = *(v12 + 24);

  v54 = *(a5 + 8);
  v54(&v59, a4, a5);
  v56 = v14;
  LOBYTE(v60) = v14;
  v15 = FieldType.rawValue.getter();
  v17 = v16;
  if (v15 == FieldType.rawValue.getter() && v17 == v18)
  {
  }

  else
  {
    v26 = sub_25E82A32C();

    if ((v26 & 1) == 0)
    {
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v34 = sub_25E829CDC();
      __swift_project_value_buffer(v34, qword_27FD0A4B0);

      v35 = sub_25E829CBC();
      v36 = sub_25E82A02C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v60 = v38;
        *v37 = 136315394;
        v39 = sub_25E82A43C();
        v41 = sub_25E7FFAF0(v39, v40, &v60);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v42 = sub_25E7FED8C(v55, v13, v56, v57);
        v44 = v43;

        v45 = sub_25E7FFAF0(v42, v44, &v60);

        *(v37 + 14) = v45;
        _os_log_impl(&dword_25E7F6000, v35, v36, "Invalid array type: %s for schema: %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v38, -1, -1);
        MEMORY[0x25F8C1620](v37, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v27 = sub_25E7FDF0C(a1, a2);
  if (v27 < 1)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v33 = sub_25E829CDC();
    __swift_project_value_buffer(v33, qword_27FD0A4B0);

    v20 = sub_25E829CBC();
    v21 = sub_25E82A02C();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_11;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v60 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_25E7FFAF0(a1, a2, &v60);
    v24 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v28 = v27;
  if (!*(sub_25E7FCC80() + 16) || (sub_25E800EB4(a1, a2), (v29 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v20 = sub_25E829CBC();
    v21 = sub_25E82A02C();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_11;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v60 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_25E7FFAF0(a1, a2, &v60);
    v24 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v20, v21, v24, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x25F8C1620](v23, -1, -1);
    MEMORY[0x25F8C1620](v22, -1, -1);
LABEL_11:

    return 0;
  }

  v30 = v57 * v28;
  if ((v57 * v28) >> 64 != (v57 * v28) >> 63)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ((v56 - 1) > 9)
  {
    v31 = 1;
  }

  else
  {
    v31 = qword_25E82B0A0[(v56 - 1)];
  }

  if ((v30 * v31) >> 64 != (v30 * v31) >> 63)
  {
    goto LABEL_44;
  }

  v59 = 0;
  MEMORY[0x28223BE20](v30);
  a1 = sub_25E829EFC();

  if ((v59 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v46 = sub_25E829CDC();
  __swift_project_value_buffer(v46, qword_27FD0A4B0);

  v47 = sub_25E829CBC();
  v48 = sub_25E82A01C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v60 = v50;
    *v49 = 134218242;
    *(v49 + 4) = sub_25E829F1C();

    *(v49 + 12) = 2080;
    v54(&v58, a4, a5);
    v51 = FieldType.description.getter();
    v53 = sub_25E7FFAF0(v51, v52, &v60);

    *(v49 + 14) = v53;
    _os_log_impl(&dword_25E7F6000, v47, v48, "Loaded array of %ld elements of type %s.", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x25F8C1620](v50, -1, -1);
    MEMORY[0x25F8C1620](v49, -1, -1);
  }

  else
  {
  }

  return a1;
}

void sub_25E808D94(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, _BYTE *a10, uint64_t a11)
{
  v70 = a5;
  v12 = a1[1];
  v13 = *(*(a11 - 8) + 72);
  v61 = v12 * v13;
  if ((v12 * v13) >> 64 == (v12 * v13) >> 63)
  {
    v16 = sub_25E82A04C();
    v17 = *(a4 + 16);
    if (v17)
    {
      v18 = 0;
      v65 = v70 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
      v19 = (a8 - 1);
      v20 = (a4 + 40);
      v63 = v16;
      v64 = a2;
      v62 = v19;
      do
      {
        v21 = *(v20 - 1);
        if (v21 < 0 || (v22 = *(v65 + 16), v21 >= *(v22 + 16)) || (v23 = *v20, *v20 < 0) || (v24 = v22 + 40 * v21, v25 = *(v24 + 40), v23 >= *(v25 + 16)))
        {
          if (qword_27FD072A0 != -1)
          {
            goto LABEL_57;
          }

          goto LABEL_27;
        }

        v26 = *(v24 + 64);
        v27 = (v25 + (v23 << 6));
        v28 = v27[2];
        v29 = v27[3];
        v30 = v27[4];
        *&v69[10] = *(v27 + 74);
        v68 = v29;
        *v69 = v30;
        v67 = v28;
        v31 = a9 * v26;
        if ((a9 * v26) >> 64 != (a9 * v26) >> 63)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (v19 > 9)
        {
          v32 = 1;
        }

        else
        {
          v32 = qword_25E82B0A0[v19];
        }

        v33 = v31 * v32;
        if ((v31 * v32) >> 64 != (v31 * v32) >> 63)
        {
          goto LABEL_51;
        }

        v34 = *(&v68 + 1);
        if (*(&v68 + 1) != v33)
        {
          sub_25E8026B4(&v67, v66);
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v50 = sub_25E829CDC();
          __swift_project_value_buffer(v50, qword_27FD0A4B0);
          sub_25E8026B4(&v67, v66);
          v42 = sub_25E829CBC();
          v51 = sub_25E82A02C();
          if (os_log_type_enabled(v42, v51))
          {
            v44 = swift_slowAlloc();
            *v44 = 134218240;
            sub_25E80281C(&v67);
            *(v44 + 4) = v34;
            sub_25E80281C(&v67);
            *(v44 + 12) = 2048;
            *(v44 + 14) = v33;
            v45 = "Found invalid chunk: %lld vs %ld";
LABEL_45:
            v46 = v51;
            v47 = v42;
            v48 = v44;
            v49 = 22;
            goto LABEL_46;
          }

          goto LABEL_48;
        }

        v35 = v18 + v33;
        if (__OFADD__(v18, v33))
        {
          goto LABEL_52;
        }

        if (v16)
        {
          if (v61 < v35)
          {
            goto LABEL_33;
          }

          if (v35 < v18)
          {
            goto LABEL_54;
          }

          v36 = v16 + v18;
          v37 = v16 + v35;
        }

        else
        {
          if (v35 > 0)
          {
LABEL_33:
            v52 = v16;
            if (qword_27FD072A0 != -1)
            {
              swift_once();
            }

            v53 = sub_25E829CDC();
            __swift_project_value_buffer(v53, qword_27FD0A4B0);
            v42 = sub_25E829CBC();
            v54 = sub_25E82A02C();
            if (os_log_type_enabled(v42, v54))
            {
              v55 = swift_slowAlloc();
              v56 = v55;
              *v55 = 134218240;
              v57 = v61;
              if (!v52)
              {
                v57 = 0;
              }

              *(v55 + 4) = v57;
              *(v55 + 12) = 2048;
              *(v55 + 14) = v35;
              _os_log_impl(&dword_25E7F6000, v42, v54, "Failed at computing chunk offset: %ld vs %ld ", v55, 0x16u);
              v58 = v56;
              goto LABEL_47;
            }

            goto LABEL_49;
          }

          if (v35 < v18)
          {
            goto LABEL_55;
          }

          v37 = 0;
          v36 = 0;
        }

        v38 = v68;
        sub_25E8026B4(&v67, v66);
        v39 = sub_25E829CFC();
        if (v40)
        {
          v66[0] = v39;
          sub_25E7FFC08();
          swift_willThrowTypedImpl();
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v59 = sub_25E829CDC();
          __swift_project_value_buffer(v59, qword_27FD0A4B0);
          sub_25E8026B4(&v67, v66);
          v42 = sub_25E829CBC();
          v51 = sub_25E82A02C();
          if (os_log_type_enabled(v42, v51))
          {
            v44 = swift_slowAlloc();
            *v44 = 134218240;
            sub_25E80281C(&v67);
            *(v44 + 4) = v38;
            sub_25E80281C(&v67);
            *(v44 + 12) = 2048;
            v60 = v37 - v36;
            if (!v36)
            {
              v60 = 0;
            }

            *(v44 + 14) = v60;
            v45 = "Failed at reading chunk at %lld for %ld bytes.";
            goto LABEL_45;
          }

LABEL_48:
          sub_25E80281C(&v67);
          sub_25E80281C(&v67);
          goto LABEL_49;
        }

        sub_25E80281C(&v67);
        if (__OFADD__(*v64, v31))
        {
          goto LABEL_53;
        }

        v20 += 2;
        *v64 += v31;
        v18 = v35;
        --v17;
        v19 = v62;
        v16 = v63;
      }

      while (v17);
    }

    *a10 = 1;
  }

  else
  {
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
LABEL_27:
    v41 = sub_25E829CDC();
    __swift_project_value_buffer(v41, qword_27FD0A4B0);
    v42 = sub_25E829CBC();
    v43 = sub_25E82A02C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "Invalid index";
      v46 = v43;
      v47 = v42;
      v48 = v44;
      v49 = 2;
LABEL_46:
      _os_log_impl(&dword_25E7F6000, v47, v46, v45, v48, v49);
      v58 = v44;
LABEL_47:
      MEMORY[0x25F8C1620](v58, -1, -1);
    }

LABEL_49:
  }
}

uint64_t PlanksReader.readBatch<A, B>(label:as:quantization:batchIndex:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = sub_25E7FCC80();
  if (*(v19 + 16))
  {
    v20 = sub_25E800EB4(a1, a2);
    if (v21)
    {
      v35 = a1;
      v22 = *(*(v19 + 56) + 8 * v20);

      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v23 > a5;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        v32 = v22 + 16 * a5;
        v33 = *(v32 + 40);
        v34 = *(v32 + 32);

        return sub_25E80959C(v35, a2, v34, v33, a3, a4, a6, a7, a8, a9, a10, a11);
      }

      a1 = v35;
    }
  }

  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v25 = sub_25E829CDC();
  __swift_project_value_buffer(v25, qword_27FD0A4B0);

  v26 = sub_25E829CBC();
  v27 = sub_25E82A02C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = a1;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_25E7FFAF0(v28, a2, &v36);
    _os_log_impl(&dword_25E7F6000, v26, v27, "Found no valid indices for label: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x25F8C1620](v30, -1, -1);
    MEMORY[0x25F8C1620](v29, -1, -1);
  }

  return 0;
}

uint64_t sub_25E80959C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a3 < 0 || (v13 = *(v12 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16), *(v13 + 16) <= a3) || a4 < 0 || (v14 = *(v13 + 40 * a3 + 40), *(v14 + 16) <= a4) || (v15 = v14 + (a4 << 6), v16 = *(v15 + 88), v16 == 12))
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v17 = sub_25E829CDC();
    __swift_project_value_buffer(v17, qword_27FD0A4B0);
    v18 = sub_25E829CBC();
    v19 = sub_25E82A02C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25E7F6000, v18, v19, "Invalid index.", v20, 2u);
      MEMORY[0x25F8C1620](v20, -1, -1);
    }

    return 0;
  }

  v24 = *(v15 + 72);
  v23 = *(v15 + 80);
  v26 = sub_25E807984(a1, a2, a6, a3, a4, a8, a11);
  if (!v26 || (v42 = v26, v40[0] = v24, v40[1] = v23, v41 = v16, v27 = sub_25E829F4C(), swift_getWitnessTable(), v28 = rebuildArray<A, B, C>(_:parameters:)(&v42, v40, a7, a8, v27, a9, a10, a11), , (result = v28) == 0))
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v29 = sub_25E829CDC();
    __swift_project_value_buffer(v29, qword_27FD0A4B0);
    v30 = sub_25E829CBC();
    v31 = sub_25E82A02C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v32 = 136315394;
      v34 = sub_25E82A43C();
      v36 = sub_25E7FFAF0(v34, v35, v40);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = sub_25E82A43C();
      v39 = sub_25E7FFAF0(v37, v38, v40);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_25E7F6000, v30, v31, "Failed rebuilding of array of type %s into type %s.", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C1620](v33, -1, -1);
      MEMORY[0x25F8C1620](v32, -1, -1);
    }

    return 0;
  }

  return result;
}

double PlanksReader.iterBatches<A, B>(label:as:quantization:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_25E7FCC80();
  if (*(v10 + 16) && (v11 = sub_25E800EB4(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);

    v14 = *(v13 + 16);

    if (v14)
    {

      return sub_25E809B10(v5, a1, a2, a3, a4);
    }
  }

  else
  {
  }

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
    v21 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_25E7FFAF0(a1, a2, &v21);
    _os_log_impl(&dword_25E7F6000, v17, v18, "Found no valid indices for label: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x25F8C1620](v20, -1, -1);
    MEMORY[0x25F8C1620](v19, -1, -1);
  }

  *(a4 + 48) = 0;
  result = 0.0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

double sub_25E809B10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_25E7FCC80();
  if (*(v10 + 16) && (v11 = sub_25E800EB4(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);

    sub_25E7FE000(a2, a3);
    v15 = v14;

    *a5 = v15;
    a5[1] = a1;
    a5[2] = a2;
    a5[3] = a3;
    a5[4] = v13;
    a5[5] = a4;
    a5[6] = 0;
  }

  else
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v17 = sub_25E829CDC();
    __swift_project_value_buffer(v17, qword_27FD0A4B0);

    v18 = sub_25E829CBC();
    v19 = sub_25E82A02C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315138;
      v22 = sub_25E7FFAF0(a2, a3, &v23);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_25E7F6000, v18, v19, "Invalid label: %s for AsyncArraySequence.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x25F8C1620](v21, -1, -1);
      MEMORY[0x25F8C1620](v20, -1, -1);
    }

    else
    {
    }

    a5[6] = 0;
    result = 0.0;
    *(a5 + 1) = 0u;
    *(a5 + 2) = 0u;
    *a5 = 0u;
  }

  return result;
}

void *PlanksReader.readArray<A, B>(label:as:quantization:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = sub_25E7FC954();
  if (!*(v17 + 16) || (v18 = sub_25E800EB4(a1, a2), (v19 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v32 = sub_25E829CBC();
    v33 = sub_25E82A02C();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_18;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_25E7FFAF0(a1, a2, &v46);
    v36 = "Invalid SchemaElement for label: %s";
    goto LABEL_17;
  }

  v42 = a7;
  v43 = a8;
  v20 = *(*(v17 + 56) + 32 * v18 + 24);

  v21 = sub_25E7FDF0C(a1, a2);
  if (v21 < 1)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v38 = sub_25E829CDC();
    __swift_project_value_buffer(v38, qword_27FD0A4B0);

    v32 = sub_25E829CBC();
    v33 = sub_25E82A02C();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_18;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_25E7FFAF0(a1, a2, &v46);
    v36 = "Found no valid rows for label: %s";
    goto LABEL_17;
  }

  v22 = v21;
  v23 = sub_25E7FCC80();
  if (!*(v23 + 16) || (v24 = sub_25E800EB4(a1, a2), (v25 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
LABEL_30:
      swift_once();
    }

    v37 = sub_25E829CDC();
    __swift_project_value_buffer(v37, qword_27FD0A4B0);

    v32 = sub_25E829CBC();
    v33 = sub_25E82A02C();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_18;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_25E7FFAF0(a1, a2, &v46);
    v36 = "Found no valid indices for label: %s";
    goto LABEL_17;
  }

  v41 = a1;
  v26 = *(*(v23 + 56) + 8 * v24);

  if ((v20 * v22) >> 64 == (v20 * v22) >> 63)
  {
    v46 = sub_25E829EDC();
    sub_25E829F4C();
    sub_25E829EAC();
    v27 = v26;
    v40 = *(v26 + 16);
    if (!v40)
    {
LABEL_12:

      return v46;
    }

    v28 = 0;
    a1 = (v26 + 40);
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v29 = sub_25E80959C(v41, a2, *(a1 - 1), *a1, a3, a4, a5, a6, v42, v43, a9, a10);
      if (!v29)
      {
        break;
      }

      ++v28;
      v45 = v29;
      swift_getWitnessTable();
      sub_25E829F2C();
      a1 += 2;
      if (v40 == v28)
      {
        goto LABEL_12;
      }
    }

    if (qword_27FD072A0 != -1)
    {
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
LABEL_32:
    swift_once();
  }

  v39 = sub_25E829CDC();
  __swift_project_value_buffer(v39, qword_27FD0A4B0);

  v32 = sub_25E829CBC();
  v33 = sub_25E82A02C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_25E7FFAF0(v41, a2, &v45);
    v36 = "Failed at loading array: %s";
LABEL_17:
    _os_log_impl(&dword_25E7F6000, v32, v33, v36, v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x25F8C1620](v35, -1, -1);
    MEMORY[0x25F8C1620](v34, -1, -1);
  }

LABEL_18:

  return 0;
}

void sub_25E80A2DC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v12 = a1[1];
  v13 = *(*(a8 - 8) + 72);
  v14 = v12 * v13;
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_12:
    v28 = sub_25E829CDC();
    __swift_project_value_buffer(v28, qword_27FD0A4B0);
    sub_25E8026B4(v9, v31);
    v23 = sub_25E829CBC();
    v29 = sub_25E82A02C();
    if (os_log_type_enabled(v23, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134218240;
      *(v30 + 4) = v8;
      sub_25E80281C(v9);
      *(v30 + 12) = 2048;
      *(v30 + 14) = v10;
      _os_log_impl(&dword_25E7F6000, v23, v29, "Found invalid chunk: %lld vs %ld", v30, 0x16u);
      v27 = v30;
LABEL_14:
      MEMORY[0x25F8C1620](v27, -1, -1);
LABEL_16:

      return;
    }

LABEL_15:
    sub_25E80281C(v9);
    goto LABEL_16;
  }

  v9 = a4;
  v10 = a3;
  v17 = sub_25E82A04C();
  v8 = *(v9 + 24);
  if (v8 != v10)
  {
    if (qword_27FD072A0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v18 = v17;
  v19 = *(v9 + 16);
  v20 = sub_25E829CFC();
  if (v21)
  {
    v31[0] = v20;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v22 = sub_25E829CDC();
    __swift_project_value_buffer(v22, qword_27FD0A4B0);
    sub_25E8026B4(v9, v31);
    v23 = sub_25E829CBC();
    v24 = sub_25E82A02C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = v19;
      sub_25E80281C(v9);
      *(v25 + 12) = 2048;
      if (v18)
      {
        v26 = v14;
      }

      else
      {
        v26 = 0;
      }

      *(v25 + 14) = v26;
      _os_log_impl(&dword_25E7F6000, v23, v24, "Failed at reading chunk at %lld for %ld bytes.", v25, 0x16u);
      v27 = v25;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (__OFADD__(*a2, a6))
  {
    __break(1u);
  }

  else
  {
    *a2 += a6;
    *a7 = 1;
  }
}

uint64_t AsyncArraySequence.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

uint64_t AsyncArraySequence.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25E80A66C, 0, 0);
}

uint64_t sub_25E80A66C()
{
  if ((sub_25E829F7C() & 1) != 0 || (v1 = v0[3], v3 = v1[4], v2 = v1[5], v2 >= *(v3 + 16)))
  {
    v8 = 0;
  }

  else
  {
    v4 = v0[2];
    v5 = v3 + 16 * v2;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v1[5] = v2 + 1;
    v8 = sub_25E807984(v1[2], v1[3], *(v4 + 16), v6, v7, *(v4 + 16), *(v4 + 24));
  }

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_25E80A710@<X0>(void *a1@<X8>)
{
  AsyncArraySequence.makeAsyncIterator()(a1);
}

uint64_t sub_25E80A760(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25E80A7F8;

  return AsyncArraySequence.next()(a2);
}

uint64_t sub_25E80A7F8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25E80A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_25E80A9D8;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_25E80A9D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AsyncTransformedArraySequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
}

uint64_t AsyncTransformedArraySequence.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25E80AB90, 0, 0);
}

uint64_t sub_25E80AB90()
{
  if ((sub_25E829F7C() & 1) != 0 || (v1 = v0[3], v2 = v1[6], v3 = v1[4], v2 >= *(v3 + 16)))
  {
    v8 = 0;
  }

  else
  {
    v4 = v0[2];
    v5 = v3 + 16 * v2;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
    v1[6] = v2 + 1;
    v8 = sub_25E80959C(v1[2], v1[3], v6, v7, v4[2], v1[5], v4[2], v4[3], v4[4], v4[5], v4[6], v4[7]);
  }

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_25E80AC4C@<X0>(uint64_t a1@<X8>)
{
  AsyncTransformedArraySequence.makeAsyncIterator()(a1);
}

uint64_t sub_25E80AC9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25E80B0C8;

  return AsyncTransformedArraySequence.next()(a2);
}

uint64_t sub_25E80AD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_25E80B0C4;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_25E80AE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25E80AEE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25E80AF28(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25E80AF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25E80AFE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25E80B02C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_25E80B0CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 947154537 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(947154505, 0xE400000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E813C10(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(947154537, 0xE400000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80B878(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3631746E69 && v14 == 0xE500000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3631746E49, 0xE500000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E8141BC(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3631746E69;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE500000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80C02C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3233746E69 && v14 == 0xE500000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3233746E49, 0xE500000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814780(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3233746E69;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE500000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80C7E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3436746E69 && v14 == 0xE500000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3436746E49, 0xE500000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814D4C(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3436746E69;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE500000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80CF94(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x38746E6975 && v14 == 0xE500000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x38746E4955, 0xE500000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E813C10(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x38746E6975;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE500000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80D750(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3631746E6975 && v14 == 0xE600000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3631746E4955, 0xE600000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E8141BC(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3631746E6975;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE600000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80DF0C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3233746E6975 && v14 == 0xE600000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3233746E4955, 0xE600000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814780(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3233746E6975;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE600000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80E6C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x3436746E6975 && v14 == 0xE600000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x3436746E4955, 0xE600000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814D4C(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x3436746E6975;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE600000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80EE84(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x363174616F6C66 && v14 == 0xE700000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x363174616F6C46, 0xE700000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E8141BC(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x363174616F6C66;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE700000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80F640(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x323374616F6C66 && v14 == 0xE700000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x74616F6C46, 0xE500000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814780(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x323374616F6C66;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE700000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E80FE04(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 0x343674616F6C66 && v14 == 0xE700000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(0x656C62756F44, 0xE600000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E814D4C(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  v11 = 0x343674616F6C66;
  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(v11, 0xE700000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_25E8105C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
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
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Invalid SchemaElement for label: %s";
    goto LABEL_10;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  LOBYTE(v47[0]) = v12;
  if (FieldType.rawValue.getter() == 1819242338 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v22 = sub_25E82A32C();

    if ((v22 & 1) == 0)
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
        v47[0] = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_25E7FFAF0(1819242306, 0xE400000000000000, v47);
        *(v36 + 12) = 2080;
        v38 = sub_25E7FED8C(v11, v10, v12, v13);
        v40 = v39;

        v41 = sub_25E7FFAF0(v38, v40, v47);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_25E7F6000, v34, v35, "Invalid array type: %s for schema: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v37, -1, -1);
        MEMORY[0x25F8C1620](v36, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  v23 = sub_25E7FDF0C(a1, a2);
  if (v23 <= 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v32 = sub_25E829CDC();
    __swift_project_value_buffer(v32, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid rows for label: %s";
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_25E7FCC80();
  if (!*(v25 + 16) || (v26 = sub_25E800EB4(a1, a2), (v27 & 1) == 0))
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E829CDC();
    __swift_project_value_buffer(v31, qword_27FD0A4B0);

    v16 = sub_25E829CBC();
    v17 = sub_25E82A02C();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_11;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25E7FFAF0(a1, a2, v47);
    v20 = "Found no valid indices for label: %s";
LABEL_10:
    _os_log_impl(&dword_25E7F6000, v16, v17, v20, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x25F8C1620](v19, -1, -1);
    MEMORY[0x25F8C1620](v18, -1, -1);
LABEL_11:

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  v29 = v13 * v24;
  if ((v13 * v24) >> 64 != (v13 * v24) >> 63)
  {
    __break(1u);
    goto LABEL_44;
  }

  v49 = 0;
  if (v29 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v29)
  {
    v30 = sub_25E829EEC();
    *(v30 + 16) = v29;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  a2 = v30;
  v47[1] = v13 * v24;
  v48 = 0;
  v47[0] = v30 + 32;
  sub_25E813C10(v47, &v48, v28, v3, v11, v10, v12, v13, &v49);
  if (v29 < v48)
  {
    goto LABEL_45;
  }

  *(a2 + 16) = v48;

  if ((v49 & 1) == 0)
  {

    return 0;
  }

  if (qword_27FD072A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v42 = sub_25E829CDC();
  __swift_project_value_buffer(v42, qword_27FD0A4B0);

  v43 = sub_25E829CBC();
  v44 = sub_25E82A01C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(a2 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_25E7FFAF0(1819242338, 0xE400000000000000, v47);
    _os_log_impl(&dword_25E7F6000, v43, v44, "Loaded array of %ld elements of type %s.", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F8C1620](v46, -1, -1);
    MEMORY[0x25F8C1620](v45, -1, -1);
  }

  else
  {
  }

  return a2;
}

uint64_t PlanksReader.readDataFrame(label:columns:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v138 = a4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07548, &qword_25E82B0F0);
  v7 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v100 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07550, &qword_25E82B0F8);
  v9 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v100 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07558, &qword_25E82B100);
  v11 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v100 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07560, &qword_25E82B108);
  *&v136 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v100 - v13;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07568, &qword_25E82B110);
  v135 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v100 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07570, &qword_25E82B118);
  v134 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v100 - v15;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07578, &qword_25E82B120);
  v133 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v100 - v16;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07580, &qword_25E82B128);
  v132 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v100 - v17;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07588, &qword_25E82B130);
  v131 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v100 - v18;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07590, &qword_25E82B138);
  v130 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v100 - v19;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07598, &qword_25E82B140);
  v129 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v100 - v20;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075A0, &qword_25E82B148);
  v128 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v100 - v21;
  v137 = sub_25E829B0C();
  v139 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v140 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a3[2];
  v24 = MEMORY[0x277D84F90];
  v142 = v23;
  if (v23)
  {
    v124 = v11;
    v125 = v9;
    v126 = v7;
    v145 = MEMORY[0x277D84F90];
    sub_25E81F1CC(0, v23, 0);
    v24 = v145;
    v127 = a3;
    v25 = a3 + 5;
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v143 = a1;
      v144 = a2;

      MEMORY[0x25F8C0BC0](46, 0xE100000000000000);
      MEMORY[0x25F8C0BC0](v26, v27);

      v28 = v143;
      v29 = v144;
      v145 = v24;
      v31 = v24[2];
      v30 = v24[3];
      if (v31 >= v30 >> 1)
      {
        sub_25E81F1CC((v30 > 1), v31 + 1, 1);
        v24 = v145;
      }

      v24[2] = v31 + 1;
      v32 = &v24[2 * v31];
      v32[4] = v28;
      v32[5] = v29;
      v25 += 2;
      v23 = (v23 - 1);
    }

    while (v23);
    v23 = v142;
    v7 = v126;
    a3 = v127;
    v9 = v125;
    v11 = v124;
  }

  v34 = sub_25E80203C(v33);

  v36 = v141;
  v40 = sub_25E7FC83C(v35, v37, v38, v39);
  v41 = sub_25E8125B8(v40, v34);

  if (v41)
  {

    sub_25E829AFC();
    if (v23)
    {
      v43 = 0;
      v126 = v9 + 1;
      v127 = v7 + 1;
      v125 = v11 + 1;
      v124 = (v136 + 8);
      ++v134;
      ++v135;
      ++v132;
      ++v133;
      ++v130;
      ++v131;
      ++v128;
      ++v129;
      v44 = a3 + 5;
      v45 = v24 + 5;
      *&v42 = 136315138;
      v136 = v42;
      do
      {
        v46 = v24[2];
        if (v43 == v46)
        {
          break;
        }

        if (v43 >= v46)
        {
          __break(1u);
          goto LABEL_69;
        }

        v48 = *(v45 - 1);
        v47 = *v45;

        v49 = sub_25E7FC954();
        if (!*(v49 + 16) || (v50 = sub_25E800EB4(v48, v47), (v51 & 1) == 0))
        {

          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v55 = sub_25E829CDC();
          __swift_project_value_buffer(v55, qword_27FD0A4B0);

          v56 = sub_25E829CBC();
          v57 = sub_25E82A02C();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v143 = v59;
            *v58 = v136;
            v60 = sub_25E7FFAF0(v48, v47, &v143);

            *(v58 + 4) = v60;
            _os_log_impl(&dword_25E7F6000, v56, v57, "Invalid schema element: %s", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v59);
            MEMORY[0x25F8C1620](v59, -1, -1);
            MEMORY[0x25F8C1620](v58, -1, -1);
          }

          else
          {
          }

          goto LABEL_12;
        }

        v52 = *(*(v49 + 56) + 32 * v50 + 16);

        if (v52 > 5)
        {
          if (v52 > 8)
          {
            if (v52 == 9)
            {
              v73 = sub_25E80F640(v48, v47);

              if (!v73)
              {
                goto LABEL_56;
              }

              v143 = v73;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075C8, &qword_25E82B160);
              sub_25E813BBC(&qword_27FD075D0, &qword_27FD075C8, &qword_25E82B160);
              v74 = v118;
              sub_25E829B5C();
              sub_25E829AEC();
              (*v125)(v74, v119);
            }

            else if (v52 == 10)
            {
              v65 = sub_25E80FE04(v48, v47);

              if (!v65)
              {
                goto LABEL_56;
              }

              v143 = v65;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075B8, &qword_25E82B158);
              sub_25E813BBC(&qword_27FD075C0, &qword_27FD075B8, &qword_25E82B158);
              v66 = v120;
              sub_25E829B5C();
              sub_25E829AEC();
              (*v126)(v66, v121);
            }

            else
            {
              v81 = sub_25E8105C8(v48, v47);

              if (!v81)
              {
LABEL_56:

                goto LABEL_12;
              }

              v143 = v81;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075A8, &qword_25E82B150);
              sub_25E813BBC(&qword_27FD075B0, &qword_27FD075A8, &qword_25E82B150);
              v82 = v122;
              sub_25E829B5C();
              sub_25E829AEC();
              (*v127)(v82, v123);
            }
          }

          else if (v52 == 6)
          {
            v69 = sub_25E80DF0C(v48, v47);

            if (!v69)
            {
              goto LABEL_56;
            }

            v143 = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075F8, &qword_25E82B178);
            sub_25E813BBC(&qword_27FD07600, &qword_27FD075F8, &qword_25E82B178);
            v70 = v112;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v134)(v70, v113);
          }

          else if (v52 == 7)
          {
            v61 = sub_25E80E6C8(v48, v47);

            if (!v61)
            {
              goto LABEL_56;
            }

            v143 = v61;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075E8, &qword_25E82B170);
            sub_25E813BBC(&qword_27FD075F0, &qword_27FD075E8, &qword_25E82B170);
            v62 = v114;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v135)(v62, v115);
          }

          else
          {
            v77 = sub_25E80EE84(v48, v47);

            if (!v77)
            {
              goto LABEL_56;
            }

            v143 = v77;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD075D8, &qword_25E82B168);
            sub_25E813BBC(&qword_27FD075E0, &qword_27FD075D8, &qword_25E82B168);
            v78 = v116;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v124)(v78, v117);
          }
        }

        else if (v52 > 2)
        {
          if (v52 == 3)
          {
            v71 = sub_25E80C7E0(v48, v47);

            if (!v71)
            {
              goto LABEL_56;
            }

            v143 = v71;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07628, &qword_25E82B190);
            sub_25E813BBC(&qword_27FD07630, &qword_27FD07628, &qword_25E82B190);
            v72 = v106;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v131)(v72, v107);
          }

          else if (v52 == 4)
          {
            v63 = sub_25E80CF94(v48, v47);

            if (!v63)
            {
              goto LABEL_56;
            }

            v143 = v63;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07618, &qword_25E82B188);
            sub_25E813BBC(&qword_27FD07620, &qword_27FD07618, &qword_25E82B188);
            v64 = v108;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v132)(v64, v109);
          }

          else
          {
            v79 = sub_25E80D750(v48, v47);

            if (!v79)
            {
              goto LABEL_56;
            }

            v143 = v79;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07608, &qword_25E82B180);
            sub_25E813BBC(&qword_27FD07610, &qword_27FD07608, &qword_25E82B180);
            v80 = v110;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v133)(v80, v111);
          }
        }

        else if (v52)
        {
          if (v52 == 1)
          {
            v53 = sub_25E80B878(v48, v47);

            if (!v53)
            {
              goto LABEL_56;
            }

            v143 = v53;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07648, &qword_25E82B1A0);
            sub_25E813BBC(&qword_27FD07650, &qword_27FD07648, &qword_25E82B1A0);
            v54 = v102;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v129)(v54, v103);
          }

          else
          {
            v75 = sub_25E80C02C(v48, v47);

            if (!v75)
            {
              goto LABEL_56;
            }

            v143 = v75;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07638, &qword_25E82B198);
            sub_25E813BBC(&qword_27FD07640, &qword_27FD07638, &qword_25E82B198);
            v76 = v104;
            sub_25E829B5C();
            sub_25E829AEC();
            (*v130)(v76, v105);
          }
        }

        else
        {
          v67 = sub_25E80B0CC(v48, v47);

          if (!v67)
          {
            goto LABEL_56;
          }

          v143 = v67;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07658, &qword_25E82B1A8);
          sub_25E813BBC(&qword_27FD07660, &qword_27FD07658, &qword_25E82B1A8);
          v68 = v100;
          sub_25E829B5C();
          sub_25E829AEC();
          (*v128)(v68, v101);
        }

LABEL_12:
        v43 = (v43 + 1);
        v44 += 2;
        v45 += 2;
      }

      while (v142 != v43);
    }

    v85 = v138;
    v86 = v137;
    (*(v139 + 32))(v138, v140, v137);
    return (*(v139 + 56))(v85, 0, 1, v86);
  }

  else
  {

    v83 = *(v36 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet);

    v84 = sub_25E81358C(v34, v83);
    if (v84[2] <= *(v34 + 16) >> 3)
    {
      v143 = v34;
      sub_25E812794(v84);
    }

    else
    {
      sub_25E8128C0(v84, v34);
    }

    if (qword_27FD072A0 != -1)
    {
LABEL_69:
      swift_once();
    }

    v88 = sub_25E829CDC();
    __swift_project_value_buffer(v88, qword_27FD0A4B0);

    v89 = sub_25E829CBC();
    v90 = sub_25E82A02C();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v143 = v92;
      *v91 = 136315138;
      v93 = sub_25E829F8C();
      v95 = v94;

      v96 = sub_25E7FFAF0(v93, v95, &v143);

      *(v91 + 4) = v96;
      _os_log_impl(&dword_25E7F6000, v89, v90, "Request columns not available in Planks file: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x25F8C1620](v92, -1, -1);
      MEMORY[0x25F8C1620](v91, -1, -1);
    }

    else
    {
    }

    v98 = v137;
    v97 = v138;
    v99 = *(v139 + 56);

    return v99(v97, 1, 1, v98);
  }
}

void *sub_25E81231C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F0, &qword_25E82ADC0);
  v2 = *v0;
  v3 = sub_25E82A0BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E812478()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073E0, &qword_25E82ADB0);
  v2 = *v0;
  v3 = sub_25E82A0BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25E8125B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_25E82A39C();

      sub_25E829DDC();
      v15 = sub_25E82A3BC();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_25E82A32C() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_25E812794(uint64_t result)
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

        sub_25E812E30(v12, v13);

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

uint64_t sub_25E8128C0(uint64_t a1, uint64_t a2)
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
    sub_25E82A39C();

    sub_25E829DDC();
    v23 = sub_25E82A3BC();
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
    if (v26 || (sub_25E82A32C() & 1) != 0)
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
        v5 = sub_25E8131A4(v58, v54, v56, v5);
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
            sub_25E82A39C();

            sub_25E829DDC();
            v41 = sub_25E82A3BC();
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
            while ((sub_25E82A32C() & 1) == 0)
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
  v52 = sub_25E812F6C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x25F8C1620](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_25E80293C(v13);
    return v5;
  }

  result = MEMORY[0x25F8C1620](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_25E812E30(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_25E82A39C();
  sub_25E829DDC();
  v6 = sub_25E82A3BC();
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
    if (v11 || (sub_25E82A32C() & 1) != 0)
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
    sub_25E81231C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_25E8133C8(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_25E812F6C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_25E8131A4(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_25E82A39C();

        sub_25E829DDC();
        v19 = sub_25E82A3BC();
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
        while ((sub_25E82A32C() & 1) == 0)
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

uint64_t sub_25E8131A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F0, &qword_25E82ADC0);
  result = sub_25E82A0DC();
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
    sub_25E82A39C();

    sub_25E829DDC();
    result = sub_25E82A3BC();
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

unint64_t sub_25E8133C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25E82A0AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_25E82A39C();

        sub_25E829DDC();
        v10 = sub_25E82A3BC();

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

unint64_t *sub_25E81358C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_25E8137E0((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_25E813750(v11, v6, a2, a1);

    MEMORY[0x25F8C1620](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_25E813750(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_25E8137E0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_25E8137E0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_25E82A39C();

      sub_25E829DDC();
      v26 = sub_25E82A3BC();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_25E82A32C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_25E8131A4(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_25E82A39C();

      sub_25E829DDC();
      v39 = sub_25E82A3BC();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_25E82A32C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25E813BBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_25E813C10(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, _BYTE *a9)
{
  v9 = *(a3 + 16);
  if (!v9)
  {
LABEL_24:
    *a9 = 1;
    return;
  }

  v11 = 0;
  v12 = a1[1];
  v61 = *a1;
  v53 = v12;
  v56 = a4 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
  v13 = (a7 - 1);
  v14 = (a3 + 40);
  v54 = v13;
  while (1)
  {
    v15 = *(v14 - 1);
    if (v15 < 0 || (v16 = *(v56 + 16), v15 >= *(v16 + 16)) || (v17 = *v14, *v14 < 0) || (v18 = v16 + 40 * v15, v19 = *(v18 + 40), v17 >= *(v19 + 16)))
    {
      if (qword_27FD072A0 == -1)
      {
LABEL_26:
        v35 = sub_25E829CDC();
        __swift_project_value_buffer(v35, qword_27FD0A4B0);
        v36 = sub_25E829CBC();
        v37 = sub_25E82A02C();
        if (!os_log_type_enabled(v36, v37))
        {
          goto LABEL_38;
        }

        v38 = swift_slowAlloc();
        *v38 = 0;
        v39 = "Invalid index";
        v40 = v37;
        v41 = v36;
        v42 = v38;
        v43 = 2;
        goto LABEL_46;
      }

LABEL_55:
      swift_once();
      goto LABEL_26;
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
    v25 = a8 * v20;
    if ((a8 * v20) >> 64 != (a8 * v20) >> 63)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v13 > 9)
    {
      v26 = 1;
    }

    else
    {
      v26 = qword_25E82B1B0[v13];
    }

    v27 = v25 * v26;
    if ((v25 * v26) >> 64 != (v25 * v26) >> 63)
    {
      goto LABEL_50;
    }

    v28 = *(&v59 + 1);
    if (*(&v59 + 1) != v27)
    {
      break;
    }

    v29 = v11 + v27;
    if (__OFADD__(v11, v27))
    {
      goto LABEL_51;
    }

    if (v61)
    {
      if (v53 < v29)
      {
        goto LABEL_32;
      }

      if (v29 < v11)
      {
        goto LABEL_53;
      }

      v30 = v61 + v11;
      v31 = v61 + v29;
    }

    else
    {
      if (v29 > 0)
      {
LABEL_32:
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v46 = sub_25E829CDC();
        __swift_project_value_buffer(v46, qword_27FD0A4B0);
        v36 = sub_25E829CBC();
        v47 = sub_25E82A02C();
        if (os_log_type_enabled(v36, v47))
        {
          v48 = swift_slowAlloc();
          v49 = v48;
          *v48 = 134218240;
          v50 = v53;
          if (!v61)
          {
            v50 = 0;
          }

          *(v48 + 4) = v50;
          *(v48 + 12) = 2048;
          *(v48 + 14) = v29;
          _os_log_impl(&dword_25E7F6000, v36, v47, "Failed at computing chunk offset: %ld vs %ld ", v48, 0x16u);
          MEMORY[0x25F8C1620](v49, -1, -1);
        }

        goto LABEL_38;
      }

      if (v29 < v11)
      {
        goto LABEL_54;
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

      v51 = sub_25E829CDC();
      __swift_project_value_buffer(v51, qword_27FD0A4B0);
      sub_25E8026B4(&v58, v57);
      v36 = sub_25E829CBC();
      v45 = sub_25E82A02C();
      if (!os_log_type_enabled(v36, v45))
      {
        goto LABEL_47;
      }

      v38 = swift_slowAlloc();
      *v38 = 134218240;
      sub_25E80281C(&v58);
      *(v38 + 4) = v32;
      sub_25E80281C(&v58);
      *(v38 + 12) = 2048;
      v52 = v31 - v30;
      if (!v30)
      {
        v52 = 0;
      }

      *(v38 + 14) = v52;
      v39 = "Failed at reading chunk at %lld for %ld bytes.";
LABEL_45:
      v40 = v45;
      v41 = v36;
      v42 = v38;
      v43 = 22;
LABEL_46:
      _os_log_impl(&dword_25E7F6000, v41, v40, v39, v42, v43);
      MEMORY[0x25F8C1620](v38, -1, -1);
      goto LABEL_38;
    }

    sub_25E80281C(&v58);
    if (__OFADD__(*a2, v25))
    {
      goto LABEL_52;
    }

    v14 += 2;
    *a2 += v25;
    v11 = v29;
    --v9;
    v13 = v54;
    if (!v9)
    {
      goto LABEL_24;
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
    goto LABEL_45;
  }

LABEL_47:
  sub_25E80281C(&v58);
  sub_25E80281C(&v58);
LABEL_38:
}

void sub_25E8141BC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, _BYTE *a9)
{
  v9 = a1[1];
  if (v9 + 0x4000000000000000 >= 0)
  {
    v10 = *(a3 + 16);
    if (!v10)
    {
LABEL_25:
      *a9 = 1;
      return;
    }

    v12 = 0;
    v61 = *a1;
    v53 = 2 * v9;
    v56 = a4 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
    v13 = (a7 - 1);
    v14 = (a3 + 40);
    v54 = v13;
    while (1)
    {
      v15 = *(v14 - 1);
      if (v15 < 0 || (v16 = *(v56 + 16), v15 >= *(v16 + 16)) || (v17 = *v14, *v14 < 0) || (v18 = v16 + 40 * v15, v19 = *(v18 + 40), v17 >= *(v19 + 16)))
      {
        if (qword_27FD072A0 != -1)
        {
          goto LABEL_57;
        }

        goto LABEL_27;
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
      v25 = a8 * v20;
      if ((a8 * v20) >> 64 != (a8 * v20) >> 63)
      {
        break;
      }

      if (v13 > 9)
      {
        v26 = 1;
      }

      else
      {
        v26 = qword_25E82B1B0[v13];
      }

      v27 = v25 * v26;
      if ((v25 * v26) >> 64 != (v25 * v26) >> 63)
      {
        goto LABEL_51;
      }

      v28 = *(&v59 + 1);
      if (*(&v59 + 1) != v27)
      {
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
LABEL_46:
          v40 = v45;
          v41 = v36;
          v42 = v38;
          v43 = 22;
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v29 = v12 + v27;
      if (__OFADD__(v12, v27))
      {
        goto LABEL_52;
      }

      if (v61)
      {
        if (v53 < v29)
        {
          goto LABEL_33;
        }

        if (v29 < v12)
        {
          goto LABEL_54;
        }

        v30 = v61 + v12;
        v31 = v61 + v29;
      }

      else
      {
        if (v29 > 0)
        {
LABEL_33:
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v46 = sub_25E829CDC();
          __swift_project_value_buffer(v46, qword_27FD0A4B0);
          v36 = sub_25E829CBC();
          v47 = sub_25E82A02C();
          if (os_log_type_enabled(v36, v47))
          {
            v48 = swift_slowAlloc();
            v49 = v48;
            *v48 = 134218240;
            v50 = v53;
            if (!v61)
            {
              v50 = 0;
            }

            *(v48 + 4) = v50;
            *(v48 + 12) = 2048;
            *(v48 + 14) = v29;
            _os_log_impl(&dword_25E7F6000, v36, v47, "Failed at computing chunk offset: %ld vs %ld ", v48, 0x16u);
            MEMORY[0x25F8C1620](v49, -1, -1);
          }

          goto LABEL_39;
        }

        if (v29 < v12)
        {
          goto LABEL_55;
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

        v51 = sub_25E829CDC();
        __swift_project_value_buffer(v51, qword_27FD0A4B0);
        sub_25E8026B4(&v58, v57);
        v36 = sub_25E829CBC();
        v45 = sub_25E82A02C();
        if (os_log_type_enabled(v36, v45))
        {
          v38 = swift_slowAlloc();
          *v38 = 134218240;
          sub_25E80281C(&v58);
          *(v38 + 4) = v32;
          sub_25E80281C(&v58);
          *(v38 + 12) = 2048;
          v52 = v31 - v30;
          if (!v30)
          {
            v52 = 0;
          }

          *(v38 + 14) = v52;
          v39 = "Failed at reading chunk at %lld for %ld bytes.";
          goto LABEL_46;
        }

LABEL_48:
        sub_25E80281C(&v58);
        sub_25E80281C(&v58);
        goto LABEL_39;
      }

      sub_25E80281C(&v58);
      if (__OFADD__(*a2, v25))
      {
        goto LABEL_53;
      }

      v14 += 2;
      *a2 += v25;
      v12 = v29;
      --v10;
      v13 = v54;
      if (!v10)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_27:
  v35 = sub_25E829CDC();
  __swift_project_value_buffer(v35, qword_27FD0A4B0);
  v36 = sub_25E829CBC();
  v37 = sub_25E82A02C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Invalid index";
    v40 = v37;
    v41 = v36;
    v42 = v38;
    v43 = 2;
LABEL_47:
    _os_log_impl(&dword_25E7F6000, v41, v40, v39, v42, v43);
    MEMORY[0x25F8C1620](v38, -1, -1);
  }

LABEL_39:
}

void sub_25E814780(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, _BYTE *a9)
{
  v9 = a1[1];
  if ((v9 - 0x2000000000000000) >> 62 == 3)
  {
    v10 = *(a3 + 16);
    if (!v10)
    {
LABEL_25:
      *a9 = 1;
      return;
    }

    v12 = 0;
    v61 = *a1;
    v53 = 4 * v9;
    v56 = a4 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
    v13 = (a7 - 1);
    v14 = (a3 + 40);
    v54 = v13;
    while (1)
    {
      v15 = *(v14 - 1);
      if (v15 < 0 || (v16 = *(v56 + 16), v15 >= *(v16 + 16)) || (v17 = *v14, *v14 < 0) || (v18 = v16 + 40 * v15, v19 = *(v18 + 40), v17 >= *(v19 + 16)))
      {
        if (qword_27FD072A0 != -1)
        {
          goto LABEL_57;
        }

        goto LABEL_27;
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
      v25 = a8 * v20;
      if ((a8 * v20) >> 64 != (a8 * v20) >> 63)
      {
        break;
      }

      if (v13 > 9)
      {
        v26 = 1;
      }

      else
      {
        v26 = qword_25E82B1B0[v13];
      }

      v27 = v25 * v26;
      if ((v25 * v26) >> 64 != (v25 * v26) >> 63)
      {
        goto LABEL_51;
      }

      v28 = *(&v59 + 1);
      if (*(&v59 + 1) != v27)
      {
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
LABEL_46:
          v40 = v45;
          v41 = v36;
          v42 = v38;
          v43 = 22;
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v29 = v12 + v27;
      if (__OFADD__(v12, v27))
      {
        goto LABEL_52;
      }

      if (v61)
      {
        if (v53 < v29)
        {
          goto LABEL_33;
        }

        if (v29 < v12)
        {
          goto LABEL_54;
        }

        v30 = v61 + v12;
        v31 = v61 + v29;
      }

      else
      {
        if (v29 > 0)
        {
LABEL_33:
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v46 = sub_25E829CDC();
          __swift_project_value_buffer(v46, qword_27FD0A4B0);
          v36 = sub_25E829CBC();
          v47 = sub_25E82A02C();
          if (os_log_type_enabled(v36, v47))
          {
            v48 = swift_slowAlloc();
            v49 = v48;
            *v48 = 134218240;
            v50 = v53;
            if (!v61)
            {
              v50 = 0;
            }

            *(v48 + 4) = v50;
            *(v48 + 12) = 2048;
            *(v48 + 14) = v29;
            _os_log_impl(&dword_25E7F6000, v36, v47, "Failed at computing chunk offset: %ld vs %ld ", v48, 0x16u);
            MEMORY[0x25F8C1620](v49, -1, -1);
          }

          goto LABEL_39;
        }

        if (v29 < v12)
        {
          goto LABEL_55;
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

        v51 = sub_25E829CDC();
        __swift_project_value_buffer(v51, qword_27FD0A4B0);
        sub_25E8026B4(&v58, v57);
        v36 = sub_25E829CBC();
        v45 = sub_25E82A02C();
        if (os_log_type_enabled(v36, v45))
        {
          v38 = swift_slowAlloc();
          *v38 = 134218240;
          sub_25E80281C(&v58);
          *(v38 + 4) = v32;
          sub_25E80281C(&v58);
          *(v38 + 12) = 2048;
          v52 = v31 - v30;
          if (!v30)
          {
            v52 = 0;
          }

          *(v38 + 14) = v52;
          v39 = "Failed at reading chunk at %lld for %ld bytes.";
          goto LABEL_46;
        }

LABEL_48:
        sub_25E80281C(&v58);
        sub_25E80281C(&v58);
        goto LABEL_39;
      }

      sub_25E80281C(&v58);
      if (__OFADD__(*a2, v25))
      {
        goto LABEL_53;
      }

      v14 += 2;
      *a2 += v25;
      v12 = v29;
      --v10;
      v13 = v54;
      if (!v10)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_27:
  v35 = sub_25E829CDC();
  __swift_project_value_buffer(v35, qword_27FD0A4B0);
  v36 = sub_25E829CBC();
  v37 = sub_25E82A02C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Invalid index";
    v40 = v37;
    v41 = v36;
    v42 = v38;
    v43 = 2;
LABEL_47:
    _os_log_impl(&dword_25E7F6000, v41, v40, v39, v42, v43);
    MEMORY[0x25F8C1620](v38, -1, -1);
  }

LABEL_39:
}

void sub_25E814D4C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, _BYTE *a9)
{
  v9 = a1[1];
  if ((v9 - 0x1000000000000000) >> 61 == 7)
  {
    v10 = *(a3 + 16);
    if (!v10)
    {
LABEL_25:
      *a9 = 1;
      return;
    }

    v12 = 0;
    v61 = *a1;
    v53 = 8 * v9;
    v56 = a4 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata;
    v13 = (a7 - 1);
    v14 = (a3 + 40);
    v54 = v13;
    while (1)
    {
      v15 = *(v14 - 1);
      if (v15 < 0 || (v16 = *(v56 + 16), v15 >= *(v16 + 16)) || (v17 = *v14, *v14 < 0) || (v18 = v16 + 40 * v15, v19 = *(v18 + 40), v17 >= *(v19 + 16)))
      {
        if (qword_27FD072A0 != -1)
        {
          goto LABEL_57;
        }

        goto LABEL_27;
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
      v25 = a8 * v20;
      if ((a8 * v20) >> 64 != (a8 * v20) >> 63)
      {
        break;
      }

      if (v13 > 9)
      {
        v26 = 1;
      }

      else
      {
        v26 = qword_25E82B1B0[v13];
      }

      v27 = v25 * v26;
      if ((v25 * v26) >> 64 != (v25 * v26) >> 63)
      {
        goto LABEL_51;
      }

      v28 = *(&v59 + 1);
      if (*(&v59 + 1) != v27)
      {
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
LABEL_46:
          v40 = v45;
          v41 = v36;
          v42 = v38;
          v43 = 22;
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v29 = v12 + v27;
      if (__OFADD__(v12, v27))
      {
        goto LABEL_52;
      }

      if (v61)
      {
        if (v53 < v29)
        {
          goto LABEL_33;
        }

        if (v29 < v12)
        {
          goto LABEL_54;
        }

        v30 = v61 + v12;
        v31 = v61 + v29;
      }

      else
      {
        if (v29 > 0)
        {
LABEL_33:
          if (qword_27FD072A0 != -1)
          {
            swift_once();
          }

          v46 = sub_25E829CDC();
          __swift_project_value_buffer(v46, qword_27FD0A4B0);
          v36 = sub_25E829CBC();
          v47 = sub_25E82A02C();
          if (os_log_type_enabled(v36, v47))
          {
            v48 = swift_slowAlloc();
            v49 = v48;
            *v48 = 134218240;
            v50 = v53;
            if (!v61)
            {
              v50 = 0;
            }

            *(v48 + 4) = v50;
            *(v48 + 12) = 2048;
            *(v48 + 14) = v29;
            _os_log_impl(&dword_25E7F6000, v36, v47, "Failed at computing chunk offset: %ld vs %ld ", v48, 0x16u);
            MEMORY[0x25F8C1620](v49, -1, -1);
          }

          goto LABEL_39;
        }

        if (v29 < v12)
        {
          goto LABEL_55;
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

        v51 = sub_25E829CDC();
        __swift_project_value_buffer(v51, qword_27FD0A4B0);
        sub_25E8026B4(&v58, v57);
        v36 = sub_25E829CBC();
        v45 = sub_25E82A02C();
        if (os_log_type_enabled(v36, v45))
        {
          v38 = swift_slowAlloc();
          *v38 = 134218240;
          sub_25E80281C(&v58);
          *(v38 + 4) = v32;
          sub_25E80281C(&v58);
          *(v38 + 12) = 2048;
          v52 = v31 - v30;
          if (!v30)
          {
            v52 = 0;
          }

          *(v38 + 14) = v52;
          v39 = "Failed at reading chunk at %lld for %ld bytes.";
          goto LABEL_46;
        }

LABEL_48:
        sub_25E80281C(&v58);
        sub_25E80281C(&v58);
        goto LABEL_39;
      }

      sub_25E80281C(&v58);
      if (__OFADD__(*a2, v25))
      {
        goto LABEL_53;
      }

      v14 += 2;
      *a2 += v25;
      v12 = v29;
      --v10;
      v13 = v54;
      if (!v10)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_27:
  v35 = sub_25E829CDC();
  __swift_project_value_buffer(v35, qword_27FD0A4B0);
  v36 = sub_25E829CBC();
  v37 = sub_25E82A02C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Invalid index";
    v40 = v37;
    v41 = v36;
    v42 = v38;
    v43 = 2;
LABEL_47:
    _os_log_impl(&dword_25E7F6000, v41, v40, v39, v42, v43);
    MEMORY[0x25F8C1620](v38, -1, -1);
  }

LABEL_39:
}

uint64_t PlanksWriter.filePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Planks12PlanksWriter_filePath;
  v4 = sub_25E829D6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25E815390@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v6;
}

uint64_t sub_25E815408(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
  swift_beginAccess();
  *v6 = v3;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v5;
}

uint64_t sub_25E8154B0@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v6;
}

uint64_t PlanksWriter.__allocating_init(filePath:append:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_allocObject();
  return PlanksWriter.init(filePath:append:)(a1, a2, v3);
}

uint64_t PlanksWriter.init(filePath:append:)(uint64_t a1, uint64_t a2, int a3)
{
  v87 = a3;
  v86 = sub_25E829A8C();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_25E829AAC();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E829D6C();
  v81 = *(v10 - 8);
  v11 = v81;
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - v14;
  *(v3 + OBJC_IVAR____TtC6Planks12PlanksWriter_finalized) = 0;

  v80 = a1;
  v88 = a2;
  MEMORY[0x25F8C0B50](a1, a2);
  v16 = OBJC_IVAR____TtC6Planks12PlanksWriter_filePath;
  (*(v11 + 32))(v3 + OBJC_IVAR____TtC6Planks12PlanksWriter_filePath, v15, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07670, &qword_25E82B208);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E82A940;
  *(inited + 32) = 0xD000000000000010;
  v18 = inited + 32;
  *(inited + 40) = 0x800000025E82C630;
  sub_25E829A9C();
  sub_25E8161FC(v7);
  v19 = sub_25E829A2C();
  v21 = v20;
  v22 = v7;
  v23 = v3;
  (*(v85 + 8))(v22, v86);
  (*(v83 + 8))(v9, v84);
  *(inited + 48) = v19;
  *(inited + 56) = v21;
  v24 = v82;
  v25 = sub_25E818978(inited);
  v26 = v81;
  swift_setDeallocating();
  v27 = v18;
  v28 = v87;
  sub_25E802774(v27, &qword_27FD07678, &qword_25E82B210);
  v29 = MEMORY[0x277D84F90];
  sub_25E818978(MEMORY[0x277D84F90]);

  v30 = (v23 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
  *v30 = 1;
  v30[1] = v29;
  v30[2] = v29;
  v30[3] = v25;
  if (v28)
  {
    v31 = 520;
  }

  else
  {
    v31 = 1536;
  }

  v32 = *(v26 + 16);
  v86 = v16;
  v32(v24, v23 + v16, v10);
  v89 = 2;
  v90 = v31;
  v91 = 16777652;
  sub_25E829D5C();
  v33 = v88;
  (*(v26 + 8))(v24, v10);
  v34 = OBJC_IVAR____TtC6Planks12PlanksWriter_fd;
  *(v23 + OBJC_IVAR____TtC6Planks12PlanksWriter_fd) = v92;
  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v35 = sub_25E829CDC();
  __swift_project_value_buffer(v35, qword_27FD0A4B0);

  v36 = sub_25E829CBC();
  v37 = sub_25E82A01C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v92 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_25E7FFAF0(v80, v33, &v92);
    _os_log_impl(&dword_25E7F6000, v36, v37, "PlanksWriter file path: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x25F8C1620](v39, -1, -1);
    MEMORY[0x25F8C1620](v38, -1, -1);
  }

  v40 = sub_25E829D1C();
  if (v41)
  {
    LODWORD(v92) = v40;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();

    v42 = sub_25E829CBC();
    v43 = sub_25E82A02C();

    if (!os_log_type_enabled(v42, v43))
    {

      return v23;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v92 = v45;
    *v44 = 136315138;
    v46 = sub_25E7FFAF0(v80, v33, &v92);

    *(v44 + 4) = v46;
    _os_log_impl(&dword_25E7F6000, v42, v43, "Failed at seeking file: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x25F8C1620](v45, -1, -1);
    v47 = v44;
    goto LABEL_11;
  }

  if ((v28 & 1) == 0 || !v40)
  {
    sub_25E818AD8(*(v23 + v34));

LABEL_18:

    v42 = sub_25E829CBC();
    v52 = sub_25E82A01C();

    if (!os_log_type_enabled(v42, v52))
    {

      return v23;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v96 = v54;
    *v53 = 136315138;
    v55 = (v23 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
    swift_beginAccess();
    v56 = *v55;
    v57 = v55[1];
    v59 = v55[2];
    v58 = v55[3];

    v60 = sub_25E7FEA6C(v56, v57, v59, v58);
    v62 = v61;

    v63 = sub_25E7FFAF0(v60, v62, &v96);

    *(v53 + 4) = v63;
    _os_log_impl(&dword_25E7F6000, v42, v52, "PlanksWriter file metadata: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x25F8C1620](v54, -1, -1);
    v47 = v53;
LABEL_11:
    MEMORY[0x25F8C1620](v47, -1, -1);

    return v23;
  }

  v49 = v40;
  v50 = sub_25E801C34(*(v23 + v34));
  if ((v51 & 1) == 0)
  {
    v69 = v50;
    type metadata accessor for PlanksReader(0);
    static PlanksReader.readMetadata(_:metadataSize:)(v69, &v92);
    v70 = v93;
    if (v93)
    {
      v71 = v92;
      v72 = v23;
      v73 = v94;
      v74 = v95;

      v88 = v72;
      v75 = (v72 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
      swift_beginAccess();
      *v75 = v71;
      v75[1] = v70;
      v75[2] = v73;
      v75[3] = v74;

      v76 = sub_25E829CBC();
      v77 = sub_25E82A01C();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 134217984;
        *(v78 + 4) = v49;
        _os_log_impl(&dword_25E7F6000, v76, v77, "PlanksWriter existing file size: %lld", v78, 0xCu);
        MEMORY[0x25F8C1620](v78, -1, -1);
      }

      v23 = v88;
      goto LABEL_18;
    }
  }

  v64 = sub_25E829CBC();
  v65 = sub_25E82A02C();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v92 = v67;
    *v66 = 136315138;
    v68 = sub_25E7FFAF0(v80, v33, &v92);

    *(v66 + 4) = v68;
    _os_log_impl(&dword_25E7F6000, v64, v65, "Failed at reading existing file: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x25F8C1620](v67, -1, -1);
    MEMORY[0x25F8C1620](v66, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_25E8161FC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076A0, &qword_25E82B278);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_25E829ACC();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25E829A7C();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E829A5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E829A3C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25E829A4C();
  MEMORY[0x28223BE20](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v8);
  (*(v5 + 104))(v21, *MEMORY[0x277CC9480], v27);
  sub_25E829ABC();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_25E829A6C();
  }

  return result;
}

uint64_t PlanksWriter.deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_finalized) & 1) == 0)
  {
    sub_25E816A2C();
  }

  if ((sub_25E829D2C() & 0x100000000) != 0)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
  }

  v1 = OBJC_IVAR____TtC6Planks12PlanksWriter_filePath;
  v2 = sub_25E829D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PlanksWriter.__deallocating_deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_finalized) & 1) == 0)
  {
    sub_25E816A2C();
  }

  if ((sub_25E829D2C() & 0x100000000) != 0)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
  }

  v1 = OBJC_IVAR____TtC6Planks12PlanksWriter_filePath;
  v2 = sub_25E829D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_25E816820()
{
  v1 = sub_25E818734(MEMORY[0x277D84F90]);
  v2 = v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v3 = *(*(v2 + 8) + 16);

  v29 = v3;
  if (!v3)
  {
LABEL_16:

    return v1;
  }

  v5 = 0;
  v6 = (v4 + 56);
  v28 = v4;
  while (v5 < *(v4 + 16))
  {
    v10 = *(v6 - 3);
    v9 = *(v6 - 2);
    v11 = *(v6 - 8);
    v12 = *v6;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_25E800EB4(v10, v9);
    v16 = v1[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_18;
    }

    v20 = v15;
    if (v1[3] < v19)
    {
      sub_25E8177B8(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_25E800EB4(v10, v9);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v26 = v14;
    sub_25E8181A0();
    v14 = v26;
    if (v20)
    {
LABEL_3:
      v7 = v14;

      v8 = v1[7] + 32 * v7;
      *v8 = v10;
      *(v8 + 8) = v9;
      *(v8 + 16) = v11;
      *(v8 + 24) = v12;

      goto LABEL_4;
    }

LABEL_12:
    v1[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (v1[6] + 16 * v14);
    *v22 = v10;
    v22[1] = v9;
    v23 = v1[7] + 32 * v14;
    *v23 = v10;
    *(v23 + 8) = v9;
    *(v23 + 16) = v11;
    *(v23 + 24) = v12;
    v24 = v1[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_19;
    }

    v1[2] = v25;
LABEL_4:
    ++v5;
    v6 += 4;
    v4 = v28;
    if (v29 == v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_25E82A37C();
  __break(1u);
  return result;
}

void sub_25E816A2C()
{
  v1 = v0;
  v68[5] = *MEMORY[0x277D85DE8];
  v2 = sub_25E829A8C();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_25E829AAC();
  v5 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD072A0 != -1)
  {
    swift_once();
  }

  v8 = sub_25E829CDC();
  v9 = __swift_project_value_buffer(v8, qword_27FD0A4B0);

  v61[1] = v9;
  v10 = sub_25E829CBC();
  v11 = sub_25E82A01C();
  v66 = v1;

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v68[0] = v13;
    *v12 = 136315138;
    sub_25E829D6C();
    sub_25E801E34();
    v14 = sub_25E82A2EC();
    v16 = sub_25E7FFAF0(v14, v15, v68);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_25E7F6000, v10, v11, "PlanksWriter: finalizing %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F8C1620](v13, -1, -1);
    MEMORY[0x25F8C1620](v12, -1, -1);
  }

  sub_25E829A9C();
  sub_25E8161FC(v4);
  v17 = sub_25E829A2C();
  v19 = v18;
  (*(v63 + 8))(v4, v64);
  (*(v5 + 8))(v7, v62);
  v20 = v66;
  v21 = (v66 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v21[3];
  v21[3] = 0x8000000000000000;
  sub_25E818018(v17, v19, 0xD000000000000014, 0x800000025E82C650, isUniquelyReferenced_nonNull_native);
  v21[3] = v67;
  swift_endAccess();
  sub_25E8299AC();
  swift_allocObject();
  sub_25E82999C();
  v23 = *v21;
  v24 = v21[1];
  v25 = v21[2];
  v26 = v21[3];
  v68[0] = v23;
  v68[1] = v24;
  v68[2] = v25;
  v68[3] = v26;
  sub_25E818BAC();

  v27 = v65;
  v28 = sub_25E82998C();
  v30 = v20;
  if (v27)
  {

LABEL_23:
    *(v30 + OBJC_IVAR____TtC6Planks12PlanksWriter_finalized) = 1;
    return;
  }

  v31 = v28;
  v32 = v29;

  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v33 != 2)
    {
      goto LABEL_19;
    }

    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    v34 = v35 - v36;
    if (!__OFSUB__(v35, v36))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v33)
  {
    v34 = BYTE6(v32);
    goto LABEL_20;
  }

  if (__OFSUB__(HIDWORD(v31), v31))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v34 = HIDWORD(v31) - v31;
LABEL_16:
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (!HIDWORD(v34))
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_19:
  v34 = 0;
LABEL_20:
  v37 = sub_25E8173B4();
  v38 = sub_25E829D1C();
  if (v39)
  {
    LODWORD(v68[0]) = v38;
    v40 = v38;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v41 = v40;
    sub_25E801F30(v31, v32);

    goto LABEL_23;
  }

  sub_25E8171E0(v31, v32, v30);
  v65 = v34;
  LODWORD(v67) = v34;
  v42 = sub_25E7FFFD0(4, 0);
  if (sub_25E81862C(v68, v42 + 4, 4, 0, 4, &v67, &v67 + 4) != 4)
  {
LABEL_37:
    __break(1u);
  }

  v68[0] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07618, &qword_25E82B188);
  sub_25E818C00();
  v43 = sub_25E829D4C();
  v45 = v44;

  if (v45)
  {
    LODWORD(v67) = v43;
    sub_25E7FFC08();
LABEL_29:
    swift_willThrowTypedImpl();
    swift_allocError();
    *v48 = v43;

    sub_25E801F30(v31, v32);
    v30 = v66;
    goto LABEL_23;
  }

  v46 = sub_25E829D3C();
  if (v47)
  {
    LODWORD(v68[0]) = v46;
    v43 = v46;
    sub_25E7FFC08();
    goto LABEL_29;
  }

  v49 = sub_25E829CBC();
  v50 = sub_25E82A01C();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v66;
  if (v51)
  {
    v53 = v66;
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = v37;
    _os_log_impl(&dword_25E7F6000, v49, v50, "PlanksWriter: metadata offset: %lld", v54, 0xCu);
    v55 = v54;
    v52 = v53;
    MEMORY[0x25F8C1620](v55, -1, -1);
  }

  v56 = sub_25E829CBC();
  v57 = sub_25E82A01C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = v52;
    v59 = swift_slowAlloc();
    *v59 = 67109120;
    *(v59 + 4) = v65;
    _os_log_impl(&dword_25E7F6000, v56, v57, "PlanksWriter: metadata size: %u", v59, 8u);
    v60 = v59;
    v52 = v58;
    MEMORY[0x25F8C1620](v60, -1, -1);
  }

  sub_25E801F30(v31, v32);

  *(v52 + OBJC_IVAR____TtC6Planks12PlanksWriter_finalized) = 1;
}

uint64_t sub_25E8171E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v6 = sub_25E818DF4(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

    return v6;
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    goto LABEL_7;
  }

LABEL_8:
  v6 = sub_25E829D3C();
  if (v7)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v8 = v6;
  }

  return v6;
}

unint64_t sub_25E8173B4()
{
  v1 = v0 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40 * v4;
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    v8 = __OFADD__(v7, v6);
    v9 = v7 + v6;
    if (v8)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 4;
  }

  v8 = __OFADD__(v9, 4);
  v10 = v9 + 4;
  if (v8)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = v10 - 1;
  v11 = v10 < 1;
  v13 = v10 + 2;
  if (!v11)
  {
    v13 = v12;
  }

  return v13 & 0xFFFFFFFFFFFFFFFCLL;
}

void sub_25E817448(uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    a5 = sub_25E8173B4();
  }

  sub_25E829D1C();
  if (v11)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
  }

  v12 = sub_25E829D3C();
  if (v13)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v14 = sub_25E829CDC();
    __swift_project_value_buffer(v14, qword_27FD0A4B0);
    v15 = sub_25E829CBC();
    v16 = sub_25E82A02C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25E7F6000, v15, v16, "Failed at writing column chunk data.", v17, 2u);
      MEMORY[0x25F8C1620](v17, -1, -1);
    }

    *(a7 + 42) = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *a7 = 0u;
  }

  else
  {
    *a7 = a3;
    *(a7 + 8) = a4;
    *(a7 + 16) = a5;
    *(a7 + 24) = v12;
    *(a7 + 32) = 0;
    *(a7 + 40) = 0;
    *(a7 + 48) = 0;
    *(a7 + 56) = 12;
  }
}

uint64_t sub_25E8177B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076A8, &qword_25E82B280);
  v36 = v4;
  result = sub_25E82A1DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *(v25 + 8);
      v39 = *v25;
      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      if ((v36 & 1) == 0)
      {
      }

      sub_25E82A39C();
      sub_25E829DDC();
      result = sub_25E82A3BC();
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
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v39;
      *(v17 + 8) = v26;
      *(v17 + 16) = v38;
      *(v17 + 24) = v37;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_25E817AB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_25E82A1DC();
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

      sub_25E82A39C();
      sub_25E829DDC();
      result = sub_25E82A3BC();
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

uint64_t sub_25E817D58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07698, &qword_25E82B270);
  v37 = v4;
  result = sub_25E82A1DC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25E82A39C();
      sub_25E829DDC();
      result = sub_25E82A3BC();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
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
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_25E818018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25E800EB4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25E817D58(v18, a5 & 1);
      v13 = sub_25E800EB4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_25E82A37C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25E8184B4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_25E8181A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076A8, &qword_25E82B280);
  v2 = *v0;
  v3 = sub_25E82A1CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E818354(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25E82A1CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_25E8184B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07698, &qword_25E82B270);
  v2 = *v0;
  v3 = sub_25E82A1CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

size_t *sub_25E81862C(size_t *result, void *__dst, int64_t a3, uint64_t a4, uint64_t a5, size_t a6, size_t a7)
{
  if (!a6)
  {
    goto LABEL_16;
  }

  v7 = a7 - a6;
  if ((a7 - a6) < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < a5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 < a4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0;
  if (a5 != a4 && a3)
  {
    if (a5 - a4 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a5 - a4;
    }

    v9 = result;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    memcpy(__dst, (a6 + a4), v8);
    a4 = v13;
    result = v9;
    a5 = v12;
    a6 = v11;
    a7 = v10;
  }

  v14 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  if (v14 <= v7)
  {
LABEL_19:
    result[3] = a7;
    result[4] = v14;
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    return v8;
  }

  __break(1u);
LABEL_16:
  if (a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
    v14 = 0;
    v8 = 0;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25E818734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076A8, &qword_25E82B280);
    v3 = sub_25E82A1EC();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;

      result = sub_25E800EB4(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v8;
      *(v14 + 8) = v7;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E81887C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25E82A1EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_25E800EB4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E818978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07698, &qword_25E82B270);
    v3 = sub_25E82A1EC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25E800EB4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for PlanksWriter(uint64_t a1)
{
  result = qword_27FD07688;
  if (!qword_27FD07688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E818AD8(uint64_t a1)
{
  v1 = sub_25E829D1C();
  if (v2)
  {
    v3 = v1;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
LABEL_5:
    swift_allocError();
    *v5 = v3;
    return v3;
  }

  v3 = sub_25E829D3C();
  if (v4)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    goto LABEL_5;
  }

  return v3;
}

unint64_t sub_25E818BAC()
{
  result = qword_27FD07680;
  if (!qword_27FD07680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07680);
  }

  return result;
}

unint64_t sub_25E818C00()
{
  result = qword_27FD07620;
  if (!qword_27FD07620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD07618, &qword_25E82B188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07620);
  }

  return result;
}

uint64_t sub_25E818C74(uint64_t a1)
{
  result = sub_25E829D6C();
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

uint64_t sub_25E818DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25E8299DC();
  if (result)
  {
    result = sub_25E8299FC();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_25E8299EC();
  result = sub_25E829D3C();
  if (v7)
  {
    v8 = result;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    result = v8;
    *v9 = v8;
  }

  return result;
}

uint64_t PlanksWriter.writeDataFrame(df:label:columnTypes:batchSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v164 = a2;
  v165 = a3;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076C0, &qword_25E82B2B8);
  v172 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v149 = &v139 - v10;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD076C8, qword_25E82B2C0);
  MEMORY[0x28223BE20](v148);
  v147 = &v139 - v11;
  v160 = sub_25E829B6C();
  v169 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v166 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_25E829B3C();
  v168 = *(v174 - 8);
  v13 = MEMORY[0x28223BE20](v174);
  v158 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v176 = &v139 - v15;
  v159 = a1;
  v144 = sub_25E829ADC();
  v16 = *(a4 + 64);
  v170 = a4 + 64;
  v17 = 1 << *(a4 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v153 = v6;
  v20 = v6 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  v171 = a4;

  result = swift_beginAccess();
  v22 = 0;
  v151 = 0;
  v152 = a5;
  v23 = (v17 + 63) >> 6;
  v173 = v23;
  v24 = v170;
  if (v19)
  {
LABEL_8:
    while (1)
    {
      v26 = __clz(__rbit64(v19)) | (v22 << 6);
      v27 = (*(v171 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      LODWORD(v175) = *(*(v171 + 56) + v26);
      v183 = v164;
      *&v184 = v165;

      MEMORY[0x25F8C0BC0](46, 0xE100000000000000);
      MEMORY[0x25F8C0BC0](v28, v29);

      v30 = v183;
      v31 = v184;
      v32 = *(v20 + 24);
      v183 = *v20;
      v184 = *(v20 + 8);
      v185 = v32;
      v33 = FileMetadata.fieldNames.getter();
      *&v189[0] = v30;
      *(&v189[0] + 1) = v31;
      MEMORY[0x28223BE20](v33);
      *(&v139 - 2) = v189;
      v34 = v151;
      v35 = sub_25E8073B0(sub_25E81A090, (&v139 - 2), v33);

      if (v35)
      {
        break;
      }

      swift_beginAccess();
      v36 = *(v20 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8) = v36;
      v151 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_25E7FF7B8(0, *(v36 + 2) + 1, 1, v36);
        *(v20 + 8) = v36;
      }

      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      if (v39 >= v38 >> 1)
      {
        v36 = sub_25E7FF7B8((v38 > 1), v39 + 1, 1, v36);
      }

      v19 &= v19 - 1;
      *(v36 + 2) = v39 + 1;
      v40 = &v36[32 * v39];
      *(v40 + 4) = v30;
      *(v40 + 5) = v31;
      v40[48] = v175;
      a5 = v152;
      *(v40 + 7) = v152;
      *(v20 + 8) = v36;
      result = swift_endAccess();
      v23 = v173;
      v24 = v170;
      if (!v19)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  while (1)
  {
LABEL_4:
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    if (v25 >= v23)
    {
      break;
    }

    v19 = *(v24 + 8 * v25);
    ++v22;
    if (v19)
    {
      v22 = v25;
      goto LABEL_8;
    }
  }

  if (!a5)
  {
    goto LABEL_114;
  }

  v183 = 0;
  *&v184 = v144;
  *(&v184 + 1) = a5;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v188 = 0;
  v146 = OBJC_IVAR____TtC6Planks12PlanksWriter_fd;
  result = sub_25E805E88();
  v41 = v160;
  v42 = v166;
  if (v43)
  {
    return 1;
  }

  v157 = v169 + 8;
  v173 = (v168 + 8);
  v145 = (v172 + 8);
  *(&v44 + 1) = 1;
  v142 = xmmword_25E82B2A0;
  *&v44 = 136315138;
  v139 = v44;
  *&v44 = 134218498;
  v140 = v44;
  *&v44 = 136315394;
  v143 = v44;
  v141 = v20;
  while (2)
  {
    if (__OFADD__(result, a5))
    {
      goto LABEL_112;
    }

    v45 = v144;
    if (v144 >= result + a5)
    {
      v45 = result + a5;
    }

    if (!__OFSUB__(v45, result))
    {
      if (v45 - result >= 1)
      {
        v163 = v45;
        v167 = result;
        v46 = sub_25E8173B4();
        LOBYTE(v181) = 1;
        v47 = MEMORY[0x277D84F90];
        *(&v181 + 1) = MEMORY[0x277D84F90];
        *v182 = v46;
        v162 = v46;
        *&v182[8] = v142;
        v48 = 1 << *(v171 + 32);
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        else
        {
          v49 = -1;
        }

        v50 = v49 & *(v171 + 64);
        v51 = (v48 + 63) >> 6;

        v52 = 0;
        v161 = v51;
LABEL_28:
        v169 = v47;
        v155 = v47 - 32;
        while (v50)
        {
LABEL_36:
          v54 = __clz(__rbit64(v50)) | (v52 << 6);
          v55 = (*(v171 + 48) + 16 * v54);
          v57 = *v55;
          v56 = v55[1];
          v58 = *(*(v171 + 56) + v54);
          v177 = v164;
          v178 = v165;

          MEMORY[0x25F8C0BC0](46, 0xE100000000000000);
          MEMORY[0x25F8C0BC0](v57, v56);
          v156 = v177;
          v172 = v178;
          v175 = v56;
          sub_25E829B1C();
          sub_25E81A0B0(&qword_27FD076D0, MEMORY[0x277CE1950], MEMORY[0x277CE1960]);
          result = sub_25E829FCC();
          if (v180 < v167)
          {
            goto LABEL_109;
          }

          v168 = v57;
          v177 = v167;
          v178 = v180;
          v59 = v158;
          sub_25E829FFC();
          (*v157)(v42, v41);
          sub_25E81A0B0(&qword_27FD076D8, MEMORY[0x277CE18B8], MEMORY[0x277CE18C0]);
          v60 = v174;
          result = sub_25E829FAC();
          if (v163 < v180)
          {
            goto LABEL_110;
          }

          v177 = v180;
          v178 = v163;
          sub_25E829FFC();
          v61 = *v173;
          result = (*v173)(v59, v60);
          v62 = *(v169 + 2);
          v63 = v162;
          if (v62)
          {
            v64 = &v155[64 * v62];
            v66 = *(v64 + 2);
            v65 = *(v64 + 3);
            v63 = v66 + v65;
            if (__OFADD__(v66, v65))
            {
              goto LABEL_111;
            }
          }

          v50 &= v50 - 1;
          if (v58)
          {
            v67 = v61;

            if (qword_27FD072A0 != -1)
            {
              swift_once();
            }

            v68 = sub_25E829CDC();
            __swift_project_value_buffer(v68, qword_27FD0A4B0);

            v69 = sub_25E829CBC();
            v70 = sub_25E82A02C();

            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v177 = v72;
              *v71 = v143;
              if (v58 <= 5)
              {
                v73 = 0x38746E6975;
                if (v58 != 4)
                {
                  v73 = 0x3631746E6975;
                }

                v74 = 0xE500000000000000;
                v75 = 0xE600000000000000;
                if (v58 == 4)
                {
                  v75 = 0xE500000000000000;
                }

                if (v58 == 3)
                {
                  v73 = 0x3436746E69;
                  v75 = 0xE500000000000000;
                }

                v76 = 0x3631746E69;
                if (v58 != 1)
                {
                  v76 = 0x3233746E69;
                }

                v77 = v58 <= 2;
              }

              else
              {
                v73 = 0x343674616F6C66;
                if (v58 != 10)
                {
                  v73 = 1819242338;
                }

                v74 = 0xE700000000000000;
                v75 = 0xE400000000000000;
                if (v58 == 10)
                {
                  v75 = 0xE700000000000000;
                }

                if (v58 == 9)
                {
                  v73 = 0x323374616F6C66;
                  v75 = 0xE700000000000000;
                }

                v76 = 0x3436746E6975;
                if (v58 == 7)
                {
                  v74 = 0xE600000000000000;
                }

                else
                {
                  v76 = 0x363174616F6C66;
                }

                if (v58 == 6)
                {
                  v76 = 0x3233746E6975;
                  v74 = 0xE600000000000000;
                }

                v77 = v58 <= 8;
              }

              if (v77)
              {
                v99 = v76;
              }

              else
              {
                v99 = v73;
              }

              if (v77)
              {
                v100 = v74;
              }

              else
              {
                v100 = v75;
              }

              v101 = sub_25E7FFAF0(v99, v100, &v177);

              *(v71 + 4) = v101;
              *(v71 + 12) = 2080;
              v102 = sub_25E7FFAF0(v168, v175, &v177);

              *(v71 + 14) = v102;
              _os_log_impl(&dword_25E7F6000, v69, v70, "Unsupported column type %s for column %s", v71, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x25F8C1620](v72, -1, -1);
              MEMORY[0x25F8C1620](v71, -1, -1);

              result = v67(v176, v174);
              v41 = v160;
            }

            else
            {

              result = v67(v176, v174);
            }
          }

          else
          {
            v154 = v61;
            v78 = v149;
            sub_25E829B2C();
            LOBYTE(v177) = 0;
            sub_25E81A0F8(&qword_27FD076E0, &qword_27FD076C0, &qword_25E82B2B8, MEMORY[0x277CE18C8]);
            v79 = v150;
            sub_25E829B4C();
            (*v145)(v78, v79);
            sub_25E81A0F8(&qword_27FD076E8, &qword_27FD076C8, qword_25E82B2C0, MEMORY[0x277CE18A8]);
            sub_25E829E2C();
            v80 = sub_25E829D1C();
            if (v81)
            {
              LODWORD(v177) = v80;
              sub_25E7FFC08();
              swift_willThrowTypedImpl();
            }

            v82 = sub_25E829D3C();
            if ((v83 & 1) == 0)
            {
              v103 = v82;

              swift_beginAccess();
              v104 = swift_isUniquelyReferenced_nonNull_native();
              v105 = v160;
              if (v104)
              {
                v51 = v161;
                v106 = v169;
              }

              else
              {
                v106 = sub_25E7FF9E4(0, *(v169 + 2) + 1, 1, v169);
                v51 = v161;
              }

              v108 = *(v106 + 2);
              v107 = *(v106 + 3);
              v109 = v106;
              if (v108 >= v107 >> 1)
              {
                v109 = sub_25E7FF9E4((v107 > 1), v108 + 1, 1, v106);
              }

              v110 = v109;
              *(v109 + 2) = v108 + 1;
              v111 = &v109[64 * v108];
              v112 = v172;
              *(v111 + 4) = v156;
              *(v111 + 5) = v112;
              *(v111 + 6) = v63;
              *(v111 + 7) = v103;
              *(v111 + 32) = 0;
              v113 = WORD2(v180);
              *(v111 + 66) = v180;
              *(v111 + 35) = v113;
              *(v111 + 9) = 0;
              *(v111 + 10) = 0;
              *(v111 + 44) = 12;
              *(&v181 + 1) = v109;
              swift_endAccess();
              result = v154(v176, v174);
              v47 = v110;
              v42 = v166;
              v24 = v170;
              v41 = v105;
              goto LABEL_28;
            }

            v179 = v82;
            sub_25E7FFC08();
            swift_willThrowTypedImpl();
            v41 = v160;
            if (qword_27FD072A0 != -1)
            {
              swift_once();
            }

            v84 = sub_25E829CDC();
            __swift_project_value_buffer(v84, qword_27FD0A4B0);
            v85 = sub_25E829CBC();
            v86 = sub_25E82A02C();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              *v87 = 0;
              _os_log_impl(&dword_25E7F6000, v85, v86, "Failed at writing column chunk data.", v87, 2u);
              v88 = v87;
              v41 = v160;
              MEMORY[0x25F8C1620](v88, -1, -1);
            }

            v89 = v175;

            v90 = sub_25E829CBC();
            v91 = sub_25E82A02C();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v172 = swift_slowAlloc();
              v177 = v172;
              *v92 = v140;
              v93 = v168;
              *(v92 + 4) = v167;
              *(v92 + 12) = 2080;
              v94 = sub_25E7FFAF0(v93, v89, &v177);

              *(v92 + 14) = v94;
              *(v92 + 22) = 2080;
              LOBYTE(v180) = 0;
              v95 = FieldType.description.getter();
              v97 = sub_25E7FFAF0(v95, v96, &v177);

              *(v92 + 24) = v97;
              _os_log_impl(&dword_25E7F6000, v90, v91, "Failed at writing batch %ld: %s %s", v92, 0x20u);
              v98 = v172;
              swift_arrayDestroy();
              MEMORY[0x25F8C1620](v98, -1, -1);
              MEMORY[0x25F8C1620](v92, -1, -1);
            }

            else
            {
            }

            result = v154(v176, v174);
          }

          v42 = v166;
          v24 = v170;
          v51 = v161;
        }

        while (1)
        {
          v53 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (v53 >= v51)
          {
            break;
          }

          v50 = *(v24 + 8 * v53);
          ++v52;
          if (v50)
          {
            v52 = v53;
            goto LABEL_36;
          }
        }

        v114 = 0;
        v115 = v169 + 56;
        v116 = *(v169 + 2) + 1;
        v117 = v141;
        while (--v116)
        {
          v118 = *v115;
          v115 += 64;
          v119 = __OFADD__(v114, v118);
          v114 += v118;
          if (v119)
          {
            goto LABEL_107;
          }
        }

        swift_beginAccess();
        *&v182[8] = v114;
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v120 = sub_25E829CDC();
        __swift_project_value_buffer(v120, qword_27FD0A4B0);
        v121 = sub_25E829CBC();
        v122 = sub_25E82A01C();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v180 = v124;
          *v123 = v139;
          v189[0] = v181;
          v189[1] = *v182;
          v190 = *&v182[16];
          sub_25E8028A8(v189, &v177);
          v125 = sub_25E7FF0A0();
          v127 = v126;
          sub_25E81A140(v189);
          v128 = sub_25E7FFAF0(v125, v127, &v180);

          *(v123 + 4) = v128;
          _os_log_impl(&dword_25E7F6000, v121, v122, "Written rowGroup: %s", v123, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v124);
          MEMORY[0x25F8C1620](v124, -1, -1);
          MEMORY[0x25F8C1620](v123, -1, -1);
        }

        v129 = v181;
        v130 = *(&v181 + 1);
        v132 = *v182;
        v131 = *&v182[16];
        swift_beginAccess();
        v133 = *(v117 + 16);

        v134 = swift_isUniquelyReferenced_nonNull_native();
        *(v117 + 16) = v133;
        if ((v134 & 1) == 0)
        {
          v133 = sub_25E7FF8C4(0, *(v133 + 2) + 1, 1, v133);
          *(v117 + 16) = v133;
        }

        v136 = *(v133 + 2);
        v135 = *(v133 + 3);
        if (v136 >= v135 >> 1)
        {
          v133 = sub_25E7FF8C4((v135 > 1), v136 + 1, 1, v133);
        }

        *(v133 + 2) = v136 + 1;
        v137 = &v133[40 * v136];
        v137[32] = v129;
        *(v137 + 5) = v130;
        *(v137 + 3) = v132;
        *(v137 + 8) = v131;
        *(v117 + 16) = v133;
        swift_endAccess();

        result = sub_25E805E88();
        a5 = v152;
        v41 = v160;
        v42 = v166;
        v24 = v170;
        if ((v138 & 1) == 0)
        {
          continue;
        }
      }

      return 1;
    }

    break;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
  return result;
}