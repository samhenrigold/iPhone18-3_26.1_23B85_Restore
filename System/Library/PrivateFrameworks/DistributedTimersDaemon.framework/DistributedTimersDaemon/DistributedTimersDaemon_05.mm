void sub_2490F7BC8(uint64_t a1, void *a2, unint64_t a3, int a4)
{
  v8 = sub_24910C86C();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v81 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_24910C7CC();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24910C6BC();
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v68[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v68[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v68[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v68[-v24];
  if (sub_24910C4AC() < *(a1 + *(v14 + 20)))
  {
    __break(1u);
    goto LABEL_18;
  }

  v26 = sub_24910C43C();
  v72 = a3;
  v73 = v26;
  v75 = a2;
  v74 = a4;
  if (a4)
  {
    v27 = a2;
    v28 = a2;
    if (qword_27EEDAFD0 == -1)
    {
LABEL_5:
      v29 = sub_24910C89C();
      __swift_project_value_buffer(v29, qword_27EEDAFD8);
      sub_2490FA748(a1, v20, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      sub_2490FA748(a1, v17, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v30 = sub_24910C87C();
      v31 = sub_24910CF4C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v71 = a1;
        v33 = v32;
        v70 = swift_slowAlloc();
        v84[0] = v70;
        *v33 = 136315906;
        sub_24910C2FC();
        v69 = v31;
        sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v34 = sub_24910D50C();
        v36 = v35;
        sub_2490FA7B0(v20, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
        v37 = sub_24909F930(v34, v36, v84);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2080;
        sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
        v38 = v83;
        v39 = sub_24910D50C();
        v41 = v40;
        sub_2490FA7B0(v17, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
        v42 = sub_24909F930(v39, v41, v84);

        *(v33 + 14) = v42;
        *(v33 + 22) = 2048;
        *(v33 + 24) = v73;
        *(v33 + 32) = 2080;
        v43 = v75;
        swift_getErrorValue();
        v44 = sub_24910D5DC();
        v46 = sub_24909F930(v44, v45, v84);

        *(v33 + 34) = v46;
        v47 = v43;
        _os_log_impl(&dword_249083000, v30, v69, "### Operation failed: xid=%s, request=%s, rttMs=%llu, error=%s", v33, 0x2Au);
        v48 = v70;
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v48, -1, -1);
        v49 = v33;
        a1 = v71;
        MEMORY[0x24C1F26F0](v49, -1, -1);

        goto LABEL_14;
      }

      sub_2490FA7B0(v17, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      sub_2490FA7B0(v20, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v47 = v75;
      v43 = v75;
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v50 = sub_24910C89C();
  __swift_project_value_buffer(v50, qword_27EEDAFD8);
  sub_2490FA748(a1, v25, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  sub_2490FA748(a1, v23, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v51 = sub_24910C87C();
  v52 = sub_24910CF5C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v71 = a1;
    v54 = v53;
    v70 = swift_slowAlloc();
    v84[0] = v70;
    *v54 = 136315650;
    sub_24910C2FC();
    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v55 = sub_24910D50C();
    v57 = v56;
    sub_2490FA7B0(v25, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v58 = sub_24909F930(v55, v57, v84);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
    v38 = v83;
    v59 = sub_24910D50C();
    v61 = v60;
    sub_2490FA7B0(v23, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v62 = sub_24909F930(v59, v61, v84);

    *(v54 + 14) = v62;
    *(v54 + 22) = 2048;
    *(v54 + 24) = v73;
    _os_log_impl(&dword_249083000, v51, v52, "Operation completed: xid=%s, request=%s, rttMs=%llu", v54, 0x20u);
    v63 = v70;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v63, -1, -1);
    v64 = v54;
    a1 = v71;
    MEMORY[0x24C1F26F0](v64, -1, -1);

    v43 = 0;
    v47 = v75;
    goto LABEL_14;
  }

  sub_2490FA7B0(v23, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  sub_2490FA7B0(v25, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v43 = 0;
  v47 = v75;
LABEL_13:
  v38 = v83;
LABEL_14:
  (*(v76 + 104))(v77, *MEMORY[0x277D05758], v78);
  (*(v82 + 16))(v81, a1 + *(v14 + 24), v38);
  sub_24910C7BC();
  v66 = v79;
  v65 = v80;
  (*(v79 + 104))(v13, *MEMORY[0x277D056D8], v80);
  sub_24910C75C();
  (*(v66 + 8))(v13, v65);
  v84[0] = v47;
  if (v74)
  {
    v67 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
    sub_24910CDBC();
  }

  else
  {
    v84[1] = v72;
    sub_2490B38D0(v47, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
    sub_24910CDCC();
  }
}

uint64_t sub_2490F854C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v10 = sub_24910C89C();
  __swift_project_value_buffer(v10, qword_27EEDAFD8);
  v11 = sub_24910C87C();
  v12 = sub_24910CF5C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_249083000, v11, v12, "HomeKit didUpdateHH2State: state=%{BOOL}d", v13, 8u);
    MEMORY[0x24C1F26F0](v13, -1, -1);
  }

  v14 = sub_24910C34C();
  v15 = sub_24910CDEC();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v9, 1, 1, v15);
  sub_2490A4674(v9, v7, &unk_27EED7B50, &qword_24910E810);
  v17 = (*(v16 + 48))(v7, 1, v15);

  if (v17 == 1)
  {
    sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v16 + 8))(v7, v15);
  }

  v18 = sub_2490A46DC();
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_2491107D0;
  *(v19 + 24) = v2;
  v22[0] = 6;
  v22[1] = 0;
  v22[2] = v14;
  v22[3] = v18;

  v20 = v14;
  swift_task_create();
  sub_2490A487C(v9, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490F887C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v53 = a3;
  v54 = a4;
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = sub_24910C2FC();
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v18 = sub_24910C89C();
  __swift_project_value_buffer(v18, qword_27EEDAFD8);
  v19 = a1;
  v20 = sub_24910C87C();
  v21 = sub_24910CF5C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v50 = v7;
    v23 = v22;
    v49 = swift_slowAlloc();
    v55[0] = v49;
    *v23 = 136315394;
    v24 = [v19 name];
    v48 = v21;
    v25 = v24;
    v26 = sub_24910CC9C();
    v47 = a2;
    v28 = v27;

    v29 = sub_24909F930(v26, v28, v55);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = [v19 uniqueIdentifier];
    sub_24910C2CC();

    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v31 = v52;
    v32 = sub_24910D50C();
    v34 = v33;
    (*(v51 + 8))(v17, v31);
    v35 = sub_24909F930(v32, v34, v55);

    *(v23 + 14) = v35;
    _os_log_impl(&dword_249083000, v20, v48, v47, v23, 0x16u);
    v36 = v49;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v36, -1, -1);
    v37 = v23;
    v7 = v50;
    MEMORY[0x24C1F26F0](v37, -1, -1);
  }

  v38 = sub_24910C34C();
  v39 = sub_24910CDEC();
  v40 = *(v39 - 8);
  (*(v40 + 56))(v14, 1, 1, v39);
  sub_2490A4674(v14, v12, &unk_27EED7B50, &qword_24910E810);
  v41 = (*(v40 + 48))(v12, 1, v39);

  if (v41 == 1)
  {
    sub_2490A487C(v12, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v40 + 8))(v12, v39);
  }

  v42 = sub_2490A46DC();
  v43 = swift_allocObject();
  *(v43 + 16) = v54;
  *(v43 + 24) = v7;
  v55[1] = 6;
  v55[2] = 0;
  v55[3] = v38;
  v55[4] = v42;

  v44 = v38;
  swift_task_create();
  sub_2490A487C(v14, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490F8D84()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490F8E14()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490F8EA4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490F8F34(uint64_t a1)
{
  result = sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  *(a1 + 8) = result;
  return result;
}

void sub_2490F8F94(uint64_t a1)
{
  sub_24910C3BC();
  if (v1 <= 0x3F)
  {
    sub_2490F917C(319, &unk_27EED7DC0, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_2490F917C(319, &qword_27EED75F8, MEMORY[0x277D029F8]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2490F917C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24910D11C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2490F9250(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24910C48C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2490F93A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24910C48C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2490F94EC(uint64_t a1)
{
  type metadata accessor for DTTransportDaemon.DTOperationItemRequest(319);
  if (v1 <= 0x3F)
  {
    sub_24910C48C();
    if (v2 <= 0x3F)
    {
      sub_2490F96D4(319, &qword_27EED7E38, MEMORY[0x277D84F78] + 8, MEMORY[0x277D857D8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2490F95E8(uint64_t a1)
{
  sub_24910C2FC();
  if (v1 <= 0x3F)
  {
    sub_24910C86C();
    if (v2 <= 0x3F)
    {
      sub_24910C73C();
      if (v3 <= 0x3F)
      {
        sub_2490F96D4(319, &unk_27EED7E50, MEMORY[0x277CC9318], MEMORY[0x277D85670]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2490F96D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7B18, &qword_249110250);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2490F9750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2490F97A8);
}

uint64_t __swift_get_extra_inhabitant_index_93Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_24910C86C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_24910C73C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_2490F9940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2490F99A8);
}

uint64_t __swift_store_extra_inhabitant_index_94Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_24910C86C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_24910C73C();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2490F9B6C(uint64_t a1)
{
  result = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_2490F9C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24910C86C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2490F9D7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24910C86C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_2490F9E88(uint64_t a1)
{
  sub_24910C2FC();
  if (v1 <= 0x3F)
  {
    sub_24910C86C();
    if (v2 <= 0x3F)
    {
      sub_2490FC430(319, &qword_27EED79D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2490FC430(319, &qword_27EED7E68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2490FA0A4()
{
  result = qword_27EEDB640;
  if (!qword_27EEDB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDB640);
  }

  return result;
}

void *sub_2490FA0F8@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_2490FA13C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490FA1CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24908837C;

  return sub_2490EE6E8(v2, v0);
}

uint64_t sub_2490FA25C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490FA2EC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490FA37C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

id sub_2490FA40C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_2490B38D0(a1, a2);
  }
}

void sub_2490FA418(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_2490A453C(a1, a2);
  }
}

uint64_t sub_2490FA424()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2490FA45C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490FA494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490E13EC(v4, v2, v3);
}

uint64_t sub_2490FA52C()
{
  v1 = (type metadata accessor for DTTransportDaemon.DTTransportRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_24910C2FC();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_24910C86C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2490FA680(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for DTTransportDaemon.DTTransportRequest(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, a2, a3 & 1, v4 + v9, v10);
}

uint64_t sub_2490FA748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2490FA7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2490FA810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2490FA878()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_2490FA418(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2490FA8C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2490FA900(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = a3;
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v11 = *(v8 + 32);
  *(v8 + 32) = v4;
  sub_2490FAFF0(a1, a2, v4);
  sub_2490FB008(v9, v10, v11);
  dispatch_group_leave(v7);
}

uint64_t sub_2490FA998()
{
  v1 = (type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_24910C2FC();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[8];
  v8 = sub_24910C86C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[9];
  v10 = sub_24910C73C();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

void sub_2490FAB54()
{
  v1 = v0;
  v2 = *(type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (v5 == 255)
  {
    sub_24910C7DC();
    v9 = sub_24910C7EC();
    sub_2490F7BC8(v1 + v3, v9, 0, 1);
  }

  else
  {
    v8 = v4 + 16;
    v7 = *(v4 + 16);
    v6 = *(v8 + 8);
    sub_2490FAFF0(v7, v6, v5);
    sub_2490F7BC8(v1 + v3, v7, v6, v5 & 1);
    sub_2490FB008(v7, v6, v5);
  }
}

uint64_t sub_2490FAC70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2490FACE8()
{
  v2 = *(sub_24910C73C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_24910C86C() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v4);
  v9 = *(v0 + v7);
  v10 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_2490887FC;

  return sub_2490E687C(v11, v12, v13, v0 + v3, v8, v0 + v6, v9, v10);
}

uint64_t sub_2490FAE84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2490FAEE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2490887FC;

  return sub_249087F68(a1, v4);
}

uint64_t sub_2490FAF98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2490FAFD0()
{
  if (*(v0 + 16) == 1)
  {
    dispatch_group_leave(*(v0 + 24));
  }
}

id sub_2490FAFF0(id result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2490FA40C(result, a2, a3 & 1);
  }

  return result;
}

void sub_2490FB008(void *a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2490FA418(a1, a2, a3 & 1);
  }
}

uint64_t objectdestroy_213Tm()
{
  v1 = (type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_24910C2FC();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[8];
  v8 = sub_24910C86C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[9];
  v10 = sub_24910C73C();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_2490FB1F8(void *a1, unint64_t a2, char a3)
{
  v7 = *(type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  sub_2490E5F10(a1, a2, a3 & 1, v3 + v8, v10, v12, v13);
}

uint64_t sub_2490FB2BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2490FB304()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24908837C;

  return sub_2490E862C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_2490FB3C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2490FB424()
{
  v1 = (type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_24910C2FC();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[8];
  v8 = sub_24910C86C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[9];
  v10 = sub_24910C73C();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

void sub_2490FB5D8(void *a1, unint64_t a2, char a3)
{
  v7 = *(type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_2490F7BC8(v8, a1, a2, a3 & 1);
}

uint64_t objectdestroy_187Tm()
{
  v1 = sub_24910C73C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_24910C86C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = v3 | v8;
  v10 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v12 | 7);
}

uint64_t sub_2490FB834()
{
  v1 = sub_24910C2FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2490FB8F8(void *a1)
{
  v3 = *(sub_24910C2FC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2490ECC18(a1, v4, v5);
}

uint64_t sub_2490FB96C()
{
  v1 = sub_24910C2FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2490FBA44()
{
  v2 = *(sub_24910C2FC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2490887FC;

  return sub_2490ECFCC(v6, v4, v0 + v3, v5);
}

uint64_t sub_2490FBB4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v2 = sub_24910C89C();
    __swift_project_value_buffer(v2, qword_27EEDAFD8);
    v3 = sub_24910C87C();
    v4 = sub_24910CF5C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_249083000, v3, v4, "HMMM register retry", v5, 2u);
      MEMORY[0x24C1F26F0](v5, -1, -1);
    }

    v6 = sub_24910C34C();
    sub_24910D02C();

    if (swift_task_isCurrentExecutor())
    {
      v7 = swift_allocObject();
      *(v7 + 16) = sub_2490F108C;
      *(v7 + 24) = 0;
      v8[0] = v1;
      sub_2490CDCFC(v8);

      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();
      __break(1u);
    }

    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_24910D25C();
    MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
    type metadata accessor for DTTransportDaemon(0);
    sub_24910D32C();
    MEMORY[0x24C1F1710](46, 0xE100000000000000);
    result = sub_24910D33C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2490FBDE0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2490FBDF0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2490FBE30(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2490FBE40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF8, &qword_249110948);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF0, &qword_249110940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = *(v0 + 32);
  if (v9 >> 60 != 15)
  {
    sub_2490A453C(*(v0 + 24), v9);
  }

  v10 = v3 | v7;
  v11 = (v3 + 40) & ~v3;
  v12 = (v11 + v4 + v7) & ~v7;
  (*(v2 + 8))(v0 + v11, v1);
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v10 | 7);
}

uint64_t sub_2490FBFC0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF8, &qword_249110948) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF0, &qword_249110940) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_2490887FC;

  return sub_2490EC9A8(v10, v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_2490FC158(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DTTransportDaemon.DTTransportRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2490FC19C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2490FC1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  return v4(v7, &v6);
}

char *sub_2490FC1F4()
{
  if (*(v0 + 16))
  {
    return sub_2490D36A8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2490FC258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2490FC324()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490DAC38(v2, v0);
}

uint64_t sub_2490FC3C0(uint64_t a1, int a2)
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

uint64_t sub_2490FC3E0(uint64_t result, int a2, int a3)
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

void sub_2490FC430(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2490FC494()
{
  result = qword_27EEDB750[0];
  if (!qword_27EEDB750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDB750);
  }

  return result;
}

unint64_t sub_2490FC4EC()
{
  result = qword_27EEDB860;
  if (!qword_27EEDB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDB860);
  }

  return result;
}

unint64_t sub_2490FC544()
{
  result = qword_27EEDB868[0];
  if (!qword_27EEDB868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDB868);
  }

  return result;
}

uint64_t sub_2490FC598(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580600 && a2 == 0xE300000000000000;
  if (v3 || (sub_24910D54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_24910D54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_24910D54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972616D697270 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24910D54C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2490FC8A8()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EEDB8F8);
  __swift_project_value_buffer(v0, qword_27EEDB8F8);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTXPCConnection.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2490FC94C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2491067A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2490FBE30(v4, v5);
}

uint64_t sub_2490FC9EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24910677C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_2490FBE30(v3, v4);
  return sub_2490FBDE0(v8, v9);
}

uint64_t DTXPCConnection._invalidationHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_2490FBE30(*v1, v1[1]);
  return v2;
}

uint64_t DTXPCConnection._invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2490FBDE0(v6, v7);
}

uint64_t DTXPCConnection.unownedExecutor.getter(uint64_t a1)
{
  v1 = sub_24910C34C();
  v2 = sub_24910D02C();

  return v2;
}

uint64_t sub_2490FCC20()
{
  v1[5] = v0;
  sub_2491069FC(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  v3 = sub_24910CDAC();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2490FCCF4, v3, v2);
}

uint64_t sub_2490FCCF4()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v0[9] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon;
    type metadata accessor for DTDaemon(0);
    sub_2491069FC(&unk_27EED7F50, type metadata accessor for DTDaemon, &protocol conformance descriptor for DTDaemon);
    v3 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490FCE4C, v3, v2);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2490FCE4C()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v0[10] = *(v1 + v2);
  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_2490FCEE0, v3, v4);
}

uint64_t sub_2490FCEE0()
{
  v1 = *(v0 + 80);

  if (v1)
  {
    v2 = *(v0 + 8);
    v3 = *(v0 + 80);

    return v2(v3);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2490FCFD0()
{
  v1[5] = v0;
  sub_2491069FC(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  v3 = sub_24910CDAC();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2490FD0A4, v3, v2);
}

uint64_t sub_2490FD0A4()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v0[9] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
    type metadata accessor for DTDaemon(0);
    sub_2491069FC(&unk_27EED7F50, type metadata accessor for DTDaemon, &protocol conformance descriptor for DTDaemon);
    v3 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490FD1F4, v3, v2);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2490FD1F4()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v0[10] = *(v1 + v2);
  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_2490FD288, v3, v4);
}

uint64_t sub_2490FD288()
{
  v1 = *(v0 + 80);

  if (v1)
  {
    v2 = *(v0 + 8);
    v3 = *(v0 + 80);

    return v2(v3);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t DTXPCConnection.__allocating_init(xpcConnection:daemon:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_249105BB0(a1, a2, a3);

  return v6;
}

uint64_t DTXPCConnection.init(xpcConnection:daemon:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_249105BB0(a1, a2, a3);

  return v3;
}

uint64_t DTXPCConnection.summary.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80B8, &qword_249110B08);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v46 - v3;
  v4 = sub_24910C86C();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C0, &qword_249110B10);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v46 - v7;
  v8 = sub_24910C73C();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_24910C2FC();
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C8, &qword_249110B18);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - v16;
  v18 = sub_24910C6EC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24910C3EC();
  v51 = *(v22 - 8);
  v52 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_24910C3DC();
  v25 = *(v0 + 24);
  v61 = *(v0 + 16);
  v62 = v25;

  MEMORY[0x24C1F1710](58, 0xE100000000000000);
  LODWORD(v59) = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__pid);
  v26 = sub_24910D50C();
  MEMORY[0x24C1F1710](v26);

  sub_24910CCBC();

  if (*(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction))
  {
    sub_24910CCBC();
  }

  v27 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
  swift_beginAccess();
  sub_2490A4674(v1 + v27, v17, &qword_27EED80C8, &qword_249110B18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_2490A487C(v17, &qword_27EED80C8, &qword_249110B18);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    v59 = 0x4449746E65696C63;
    v60 = 0xE90000000000003DLL;
    v58[0] = sub_24910C6DC();
    v28 = sub_24910D50C();
    MEMORY[0x24C1F1710](v28);

    sub_24910CCBC();

    (*(v19 + 8))(v21, v18);
  }

  v29 = v56;
  v30 = v53;
  sub_2490A4674(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection_xpcInstanceID, v12, &qword_27EED7900, &qword_24910EB50);
  v31 = v49;
  v32 = (*(v49 + 48))(v12, 1, v13);
  v33 = v54;
  if (v32 == 1)
  {
    sub_2490A487C(v12, &qword_27EED7900, &qword_24910EB50);
  }

  else
  {
    v34 = v46;
    (*(v31 + 32))(v46, v12, v13);
    v59 = 0x65636E6174736E69;
    v60 = 0xEB000000003D4449;
    sub_2491069FC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v35 = sub_24910D50C();
    MEMORY[0x24C1F1710](v35);

    sub_24910CCBC();

    (*(v31 + 8))(v34, v13);
  }

  v36 = v57;
  v37 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastContext;
  swift_beginAccess();
  v38 = v1 + v37;
  v39 = v50;
  sub_2490A4674(v38, v50, &qword_27EED80C0, &qword_249110B10);
  if ((*(v30 + 48))(v39, 1, v33) == 1)
  {
    sub_2490A487C(v39, &qword_27EED80C0, &qword_249110B10);
  }

  else
  {
    v40 = v47;
    (*(v30 + 32))(v47, v39, v33);
    sub_2491069FC(&qword_27EED7F60, MEMORY[0x277D056F0], MEMORY[0x277D056F8]);
    sub_24910D50C();
    sub_24910CCBC();

    (*(v30 + 8))(v40, v33);
  }

  v41 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastRequest;
  swift_beginAccess();
  v42 = v1 + v41;
  v43 = v55;
  sub_2490A4674(v42, v55, &qword_27EED80B8, &qword_249110B08);
  if ((*(v29 + 48))(v43, 1, v36) == 1)
  {
    (*(v51 + 8))(v24, v52);
    sub_2490A487C(v43, &qword_27EED80B8, &qword_249110B08);
  }

  else
  {
    v44 = v48;
    (*(v29 + 32))(v48, v43, v36);
    sub_2491069FC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
    sub_24910D50C();
    sub_24910CCBC();

    (*(v29 + 8))(v44, v36);
    (*(v51 + 8))(v24, v52);
  }

  return v63;
}

uint64_t DTXPCConnection.setInvalidationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_2490FBDE0(v6, v7);
}

Swift::Void __swiftcall DTXPCConnection.activate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_24910C2FC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v10;
  v11 = sub_24910CBDC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = sub_24910C34C();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v15 = sub_24910CBFC();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24910614C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2490C0EE8;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(v16, v18);
  _Block_release(v18);
  v19 = sub_24910C34C();
  xpc_connection_set_target_queue(v16, v19);

  xpc_connection_activate(v16);
  sub_2490A4674(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection_xpcInstanceID, v4, &qword_27EED7900, &qword_24910EB50);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2490A487C(v4, &qword_27EED7900, &qword_24910EB50);
    if (qword_27EEDB8F0 == -1)
    {
LABEL_4:
      v20 = sub_24910C89C();
      __swift_project_value_buffer(v20, qword_27EEDB8F8);

      v21 = sub_24910C87C();
      v22 = sub_24910CF2C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24909F930(*(v1 + 32), *(v1 + 40), aBlock);
        _os_log_impl(&dword_249083000, v21, v22, "XPC connection started: client=%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x24C1F26F0](v24, -1, -1);
        MEMORY[0x24C1F26F0](v23, -1, -1);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v25 = v38;
  (*(v6 + 32))(v38, v4, v5);
  if (qword_27EEDB8F0 != -1)
  {
    swift_once();
  }

  v26 = sub_24910C89C();
  __swift_project_value_buffer(v26, qword_27EEDB8F8);
  (*(v6 + 16))(v9, v25, v5);

  v27 = sub_24910C87C();
  v28 = sub_24910CF2C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_24909F930(*(v1 + 32), *(v1 + 40), aBlock);
    *(v29 + 12) = 2080;
    v31 = sub_24910C28C();
    v33 = v32;
    v34 = *(v6 + 8);
    v34(v9, v5);
    v35 = sub_24909F930(v31, v33, aBlock);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_249083000, v27, v28, "XPC connection started: client=%s, instanceID=%s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v30, -1, -1);
    MEMORY[0x24C1F26F0](v29, -1, -1);

    v34(v25, v5);
  }

  else
  {

    v36 = *(v6 + 8);
    v36(v9, v5);
    v36(v25, v5);
  }
}

uint64_t sub_2490FE4AC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v37 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81C0, &qword_249110CB0);
    sub_24910C33C();
    v30 = sub_24910C34C();
    v18 = sub_24910CDEC();
    v19 = v15;
    v20 = *(v18 - 8);
    (*(v20 + 56))(v8, 1, 1, v18);
    v21 = *(v10 + 16);
    v31 = v19;
    v21(v13, v19, v9);
    v22 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    v24 = *(v10 + 32);
    v32 = v9;
    v24(v23 + v22, v13, v9);
    sub_2490A4674(v8, v6, &unk_27EED7B50, &qword_24910E810);
    LODWORD(v22) = (*(v20 + 48))(v6, 1, v18);

    if (v22 == 1)
    {
      sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v20 + 8))(v6, v18);
    }

    v25 = sub_2491069FC(&qword_27EED8180, sub_249086D6C, MEMORY[0x277D85270]);
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_249110CC0;
    *(v26 + 24) = v23;
    v33 = 6;
    v34 = 0;
    v27 = v30;
    v35 = v30;
    v36 = v25;

    v28 = v27;
    swift_task_create();
    sub_2490A487C(v8, &unk_27EED7B50, &qword_24910E810);

    return (*(v10 + 8))(v31, v32);
  }

  return result;
}

uint64_t sub_2490FE8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24908837C;

  return sub_2490FE978(a3);
}

uint64_t sub_2490FE978(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_2491069FC(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  v4 = sub_24910CDAC();
  v2[13] = v4;
  v2[14] = v3;

  return MEMORY[0x2822009F8](sub_2490FEA4C, v4, v3);
}

uint64_t sub_2490FEA4C()
{
  v23 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  sub_24910C32C();
  v1 = v0[10];
  v0[15] = v1;
  v2 = MEMORY[0x24C1F2920](v1);
  if (v2 == sub_24910C8BC())
  {
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_2490FEE40;

    return sub_249100E40(v1);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = sub_24910C8CC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v1 == v3)
    {
      if (qword_27EEDB8F0 != -1)
      {
        swift_once();
      }

      v15 = sub_24910C89C();
      __swift_project_value_buffer(v15, qword_27EEDB8F8);

      v16 = sub_24910C87C();
      v17 = sub_24910CF2C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[12];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_24909F930(*(v18 + 32), *(v18 + 40), &v22);
        _os_log_impl(&dword_249083000, v16, v17, "XPC connection ended: client=%s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x24C1F26F0](v20, -1, -1);
        MEMORY[0x24C1F26F0](v19, -1, -1);
      }

      *(v0[12] + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcInvalidated) = 1;
      DTXPCConnection.invalidate()();
    }

    else
    {
      if (qword_27EEDB8F0 != -1)
      {
        swift_once();
      }

      v4 = sub_24910C89C();
      __swift_project_value_buffer(v4, qword_27EEDB8F8);
      swift_unknownObjectRetain();

      v5 = sub_24910C87C();
      v6 = sub_24910CF4C();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = v0[12];
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v22 = v9;
        *v8 = 136315394;
        v10 = sub_24910CF1C();
        v12 = sub_24909F930(v10, v11, &v22);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        *(v8 + 14) = sub_24909F930(*(v7 + 32), *(v7 + 40), &v22);
        _os_log_impl(&dword_249083000, v5, v6, "### XPC connection error: xpc=%s, client=%s", v8, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v9, -1, -1);
        MEMORY[0x24C1F26F0](v8, -1, -1);
      }
    }

    swift_unknownObjectRelease();
    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_2490FEE40()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_2490FEFDC;
  }

  else
  {
    v5 = sub_2490FEF7C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490FEF7C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490FEFDC()
{
  v23 = v0;
  if (qword_27EEDB8F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_24910C89C();
  __swift_project_value_buffer(v2, qword_27EEDB8F8);

  v3 = v1;
  v4 = sub_24910C87C();
  v5 = sub_24910CF4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24909F930(*(v6 + 32), *(v6 + 40), v22);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = sub_24910D5DC();
    v11 = sub_24909F930(v9, v10, v22);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_249083000, v4, v5, "### XPC error reply: client=%s, error=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v8, -1, -1);
    MEMORY[0x24C1F26F0](v7, -1, -1);
  }

  if (xpc_dictionary_expects_reply())
  {
    reply = xpc_dictionary_create_reply(*(v0 + 120));
    if (reply)
    {
      v13 = reply;
      sub_24910C53C();
      xpc_connection_send_message(*(*(v0 + 96) + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v13);
      swift_unknownObjectRelease();
    }

    else
    {

      v14 = sub_24910C87C();
      v15 = sub_24910CF4C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 96);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_24909F930(*(v16 + 32), *(v16 + 40), v22);
        _os_log_impl(&dword_249083000, v14, v15, "### XPC create reply failed: client=%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x24C1F26F0](v18, -1, -1);
        MEMORY[0x24C1F26F0](v17, -1, -1);
      }
    }
  }

  v19 = *(v0 + 136);
  swift_unknownObjectRelease();

  v20 = *(v0 + 8);

  return v20();
}

Swift::Void __swiftcall DTXPCConnection.invalidate()()
{
  v1 = v0;
  v2 = sub_24910CBDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = sub_24910C34C();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_24910CBFC();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if ((*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcInvalidated) & 1) == 0)
    {
      xpc_connection_cancel(*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection));
    }

    if (swift_weakLoadStrong())
    {
      sub_2490B8E80(sub_24910616C, v1, "DistributedTimersDaemon/DTXPCConnection.swift", 45, 2u, 145);
    }

    if (*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcInvalidated) == 1)
    {
      v7 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
      swift_beginAccess();
      v8 = *v7;
      if (*v7)
      {
        v9 = v7[1];

        v8(v10);
        sub_2490FBDE0(v8, v9);
        v11 = *v7;
      }

      else
      {
        v11 = 0;
      }

      v12 = v7[1];
      *v7 = 0;
      v7[1] = 0;
      sub_2490FBDE0(v11, v12);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2490FF65C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_24910C76C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_2491069FC(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  v6 = sub_24910CDAC();
  v3[8] = v6;
  v3[9] = v5;

  return MEMORY[0x2822009F8](sub_2490FF790, v6, v5);
}

uint64_t sub_2490FF790()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D05718])
  {
LABEL_2:
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_2490FFB58;

    return sub_2490FCFD0();
  }

  if (v4 == *MEMORY[0x277D05728] || v4 == *MEMORY[0x277D05710])
  {
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_2490FFE20;

    return sub_2490FCC20();
  }

  else
  {
    if (v4 == *MEMORY[0x277D05720])
    {
      goto LABEL_2;
    }

    if (v4 == *MEMORY[0x277D05730])
    {
      Strong = swift_weakLoadStrong();
      v0[18] = Strong;
      if (Strong)
      {
        v10 = swift_task_alloc();
        v0[19] = v10;
        *v10 = v0;
        v10[1] = sub_2491000E8;

        return DTDaemon.summary.getter();
      }

      v15 = v0[2];
      v15[3] = sub_24910C6AC();
      v15[4] = sub_2491069FC(&unk_27EED7B20, MEMORY[0x277D056D0], MEMORY[0x277D056C8]);
      __swift_allocate_boxed_opaque_existential_1(v15);
      sub_24910C64C();
      v16 = *MEMORY[0x277D05700];
      v17 = sub_24910C74C();
      v18 = *(v17 - 8);
      (*(v18 + 104))(v15, v16, v17);
      (*(v18 + 56))(v15, 0, 1, v17);

      v14 = v0[1];
    }

    else
    {
      v12 = v0[6];
      v11 = v0[7];
      v13 = v0[5];
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
      (*(v12 + 8))(v11, v13);

      v14 = v0[1];
    }

    return v14();
  }
}

uint64_t sub_2490FFB58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v3[12] = v7;
    *v7 = v4;
    v7[1] = sub_2490FFCE0;
    v8 = v3[2];
    v9 = v3[3];

    return DTTransportDaemon.handleDiagnosticsRequest(_:)(v8, v9);
  }
}

uint64_t sub_2490FFCE0()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return MEMORY[0x2822009F8](sub_249100384, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_2490FFE20(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v3[16] = v7;
    *v7 = v4;
    v7[1] = sub_2490FFFA8;
    v8 = v3[2];
    v9 = v3[3];

    return DTSyncDaemon.handleDiagnosticsRequest(_:)(v8, v9);
  }
}

uint64_t sub_2490FFFA8()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return MEMORY[0x2822009F8](sub_2491003F0, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_2491000E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = a2;

  v5 = *(v3 + 72);
  v6 = *(v3 + 64);

  return MEMORY[0x2822009F8](sub_249100234, v6, v5);
}

uint64_t sub_249100234()
{
  v1 = *(v0 + 16);
  v1[3] = sub_24910C6AC();
  v1[4] = sub_2491069FC(&unk_27EED7B20, MEMORY[0x277D056D0], MEMORY[0x277D056C8]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_24910C64C();
  v2 = *MEMORY[0x277D05700];
  v3 = sub_24910C74C();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_249100384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2491003F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DTXPCConnection.report(eventType:)(uint64_t a1)
{
  v14[1] = a1;
  v15 = sub_24910C68C();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C8, &qword_249110B18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_24910C6EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
  swift_beginAccess();
  sub_2490A4674(v1 + v12, v7, &qword_27EED80C8, &qword_249110B18);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2490A487C(v7, &qword_27EED80C8, &qword_249110B18);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_24910C6DC();
  sub_24910C66C();
  DTXPCConnection.report(monitorEvent:)(v4);
  (*(v2 + 8))(v4, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t DTXPCConnection.report(monitorEvent:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24910C68C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v36 = &v32[-v8];
  v9 = sub_24910C86C();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C8, &qword_249110B18);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32[-v13];
  v15 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
  swift_beginAccess();
  sub_2490A4674(v1 + v15, v14, &qword_27EED80C8, &qword_249110B18);
  v16 = sub_24910C6EC();
  LODWORD(v15) = (*(*(v16 - 8) + 48))(v14, 1, v16);
  result = sub_2490A487C(v14, &qword_27EED80C8, &qword_249110B18);
  if (v15 != 1)
  {
    v34 = a1;
    v35 = v5;
    v18 = *(v5 + 16);
    v18(v11, a1, v4);
    v19 = v38;
    (*(v38 + 104))(v11, *MEMORY[0x277D057B8], v9);
    empty = xpc_dictionary_create_empty();
    sub_2491069FC(&qword_27EED7EA0, MEMORY[0x277D057E0], MEMORY[0x277D057E8]);
    sub_24910C54C();
    v37 = empty;
    if (qword_27EEDB8F0 != -1)
    {
      swift_once();
    }

    v21 = sub_24910C89C();
    __swift_project_value_buffer(v21, qword_27EEDB8F8);
    v22 = v36;
    v18(v36, v34, v4);

    v23 = sub_24910C87C();
    v24 = sub_24910CF5C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v22;
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39[0] = v34;
      *v26 = 136315394;
      sub_2491069FC(&qword_27EED80E0, MEMORY[0x277D056B8], MEMORY[0x277D056C0]);
      v33 = v24;
      v27 = sub_24910D50C();
      v29 = v28;
      (*(v35 + 8))(v25, v4);
      v30 = sub_24909F930(v27, v29, v39);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_24909F930(*(v2 + 32), *(v2 + 40), v39);
      _os_log_impl(&dword_249083000, v23, v33, "Report event: %s, client=%s", v26, 0x16u);
      v31 = v34;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v31, -1, -1);
      MEMORY[0x24C1F26F0](v26, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v22, v4);
    }

    xpc_connection_send_message(*(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v37);
    swift_unknownObjectRelease();
    return (*(v19 + 8))(v11, v9);
  }

  return result;
}

uint64_t sub_249100E40(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_24910C74C();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = sub_24910C76C();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C8, &qword_249110B18);
  v2[28] = swift_task_alloc();
  v5 = sub_24910C6EC();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED8198, &qword_249110CE8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80B8, &qword_249110B08);
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C0, &qword_249110B10);
  v2[39] = swift_task_alloc();
  v6 = sub_24910C86C();
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v7 = sub_24910C73C();
  v2[44] = v7;
  v2[45] = *(v7 - 8);
  v2[46] = swift_task_alloc();
  v8 = sub_24910C61C();
  v2[47] = v8;
  v2[48] = *(v8 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  sub_2491069FC(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  v10 = sub_24910CDAC();
  v2[51] = v10;
  v2[52] = v9;

  return MEMORY[0x2822009F8](sub_249101284, v10, v9);
}

uint64_t sub_249101284()
{
  v69 = v0;
  if (*(*(v0 + 160) + 56) != 1)
  {
    sub_24910C7DC();
    sub_24910D25C();

    v67 = 0xD000000000000015;
    v68 = 0x8000000249112000;
    v18 = sub_24910C58C();
    MEMORY[0x24C1F1710](v18);

    sub_24910C7EC();
    swift_willThrow();
LABEL_7:

    v19 = *(v0 + 8);

    return v19();
  }

  *(v0 + 424) = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcCoder;
  sub_2491069FC(&qword_27EED81A0, MEMORY[0x277D05680], MEMORY[0x277D05688]);
  sub_24910C51C();
  if (qword_27EEDB8F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v5 = sub_24910C89C();
  *(v0 + 432) = __swift_project_value_buffer(v5, qword_27EEDB8F8);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_24910C87C();
  v7 = sub_24910CF2C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 384);
  v9 = *(v0 + 392);
  v11 = *(v0 + 376);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67 = v64;
    *v12 = 136315138;
    sub_2491069FC(&qword_27EED81A8, MEMORY[0x277D05680], MEMORY[0x277D05690]);
    v13 = sub_24910D50C();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_24909F930(v13, v15, &v67);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_249083000, v6, v7, "XPC request: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x24C1F26F0](v64, -1, -1);
    MEMORY[0x24C1F26F0](v12, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v61 = v16;
  *(v0 + 440) = v16;
  v21 = *(v0 + 360);
  v22 = *(v0 + 368);
  v23 = *(v0 + 344);
  v24 = *(v0 + 352);
  v25 = *(v0 + 328);
  v27 = *(v0 + 312);
  v26 = *(v0 + 320);
  v62 = *(v0 + 304);
  v65 = *(v0 + 336);
  v28 = *(v0 + 160);
  sub_24910C5FC();
  sub_24910C60C();
  (*(v21 + 16))(v27, v22, v24);
  (*(v21 + 56))(v27, 0, 1, v24);
  v29 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastContext;
  swift_beginAccess();
  sub_2490A48DC(v27, v28 + v29, &qword_27EED80C0, &qword_249110B10);
  swift_endAccess();
  v30 = *(v25 + 16);
  v30(v62, v23, v26);
  (*(v25 + 56))(v62, 0, 1, v26);
  v31 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastRequest;
  swift_beginAccess();
  sub_2490A48DC(v62, v28 + v31, &qword_27EED80B8, &qword_249110B08);
  swift_endAccess();
  v30(v65, v23, v26);
  v32 = (*(v25 + 88))(v65, v26);
  if (v32 == *MEMORY[0x277D057D8] || v32 == *MEMORY[0x277D057A8] || v32 == *MEMORY[0x277D05798] || v32 == *MEMORY[0x277D057A0] || v32 == *MEMORY[0x277D057B0] || v32 == *MEMORY[0x277D057D0])
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    goto LABEL_20;
  }

  if (v32 == *MEMORY[0x277D057C0])
  {
    v33 = *(v0 + 336);
    v35 = *(v0 + 240);
    v34 = *(v0 + 248);
    v37 = *(v0 + 224);
    v36 = *(v0 + 232);
    v38 = *(v0 + 160);
    (*(*(v0 + 328) + 96))(v33, *(v0 + 320));
    (*(v35 + 32))(v34, v33, v36);
    (*(v35 + 16))(v37, v34, v36);
    (*(v35 + 56))(v37, 0, 1, v36);
    v39 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
    swift_beginAccess();
    sub_2490A48DC(v37, v38 + v39, &qword_27EED80C8, &qword_249110B18);
    swift_endAccess();
    v67 = sub_24910C58C();
    v68 = v40;
    MEMORY[0x24C1F1710](0x726F74696E6F6D2ELL, 0xE90000000000002ELL);
    *(v0 + 632) = *(v38 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__pid);
    v41 = sub_24910D50C();
    MEMORY[0x24C1F1710](v41);

    sub_24910CCAC();

    v42 = os_transaction_create();

    *(v38 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction) = v42;
    swift_unknownObjectRelease();
    v43 = swift_task_alloc();
    *(v0 + 504) = v43;
    *v43 = v0;
    v44 = sub_249102998;
LABEL_21:
    v43[1] = v44;

    return sub_2490FCFD0();
  }

  if (v32 == *MEMORY[0x277D05790])
  {
    v45 = *(v0 + 224);
    v46 = *(v0 + 160);
    (*(*(v0 + 240) + 56))(v45, 1, 1, *(v0 + 232));
    v47 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
    swift_beginAccess();
    sub_2490A48DC(v45, v46 + v47, &qword_27EED80C8, &qword_249110B18);
    swift_endAccess();
    *(v46 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction) = 0;
    swift_unknownObjectRelease();
    v43 = swift_task_alloc();
    *(v0 + 560) = v43;
    *v43 = v0;
    v44 = sub_2491035E0;
    goto LABEL_21;
  }

  if (v32 == *MEMORY[0x277D057B8])
  {
    goto LABEL_27;
  }

  if (v32 != *MEMORY[0x277D05780])
  {
    if (v32 != *MEMORY[0x277D05788] && v32 != *MEMORY[0x277D05778] && v32 != *MEMORY[0x277D057C8])
    {
LABEL_27:
      v63 = *(v0 + 376);
      v66 = *(v0 + 400);
      v48 = *(v0 + 360);
      v49 = *(v0 + 368);
      v51 = *(v0 + 344);
      v50 = *(v0 + 352);
      v52 = *(v0 + 320);
      v53 = *(*(v0 + 328) + 8);
      v53(*(v0 + 336), v52);
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
      v53(v51, v52);
      (*(v48 + 8))(v49, v50);
      v61(v66, v63);
      goto LABEL_7;
    }

LABEL_20:
    v43 = swift_task_alloc();
    *(v0 + 448) = v43;
    *v43 = v0;
    v44 = sub_249101D78;
    goto LABEL_21;
  }

  v54 = *(v0 + 336);
  v56 = *(v0 + 208);
  v55 = *(v0 + 216);
  v57 = *(v0 + 200);
  (*(*(v0 + 328) + 96))(v54, *(v0 + 320));
  (*(v56 + 32))(v55, v54, v57);
  v58 = swift_task_alloc();
  *(v0 + 616) = v58;
  *v58 = v0;
  v58[1] = sub_249104230;
  v59 = *(v0 + 264);
  v60 = *(v0 + 216);

  return sub_2490FF65C(v59, v60);
}

uint64_t sub_249101D78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[57] = a1;
  v3[58] = v1;

  if (v1)
  {
    v5 = v3[51];
    v6 = v3[52];

    return MEMORY[0x2822009F8](sub_24910555C, v5, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[59] = v7;
    *v7 = v4;
    v7[1] = sub_249101F08;
    v8 = v3[46];
    v9 = v3[20];
    v10 = v3[43];

    return DTTransportDaemon.handleLocalRequest(request:context:xpcConnection:)(v10, v8, v9);
  }
}

uint64_t sub_249101F08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 480) = v2;

  if (v2)
  {
    v7 = v6[51];
    v8 = v6[52];
    v9 = sub_2491056FC;
  }

  else
  {
    v6[61] = a2;
    v6[62] = a1;
    v7 = v6[51];
    v8 = v6[52];
    v9 = sub_249102050;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_249102050()
{
  v104 = v0;
  v1 = v0[61];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[21];
  v5 = v0[22];
  *v3 = v0[62];
  v3[1] = v1;
  v6 = *MEMORY[0x277D05708];
  (*(v5 + 104))(v3, *MEMORY[0x277D05708], v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_2490B3868(v3, v2, &qword_27EED8198, &qword_249110CE8);
  v7 = v0[60];
  v8 = v0[32];
  v9 = v0[21];
  v10 = v0[22];
  sub_2490A4674(v0[37], v8, &qword_27EED8198, &qword_249110CE8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v19 = v0[19];
    (*(v0[22] + 32))(v0[24], v0[32], v0[21]);
    reply = xpc_dictionary_create_reply(v19);
    if (!reply)
    {

      v35 = sub_24910C87C();
      v36 = sub_24910CF4C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = v0[20];
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v103 = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_24909F930(*(v37 + 32), *(v37 + 40), &v103);
        _os_log_impl(&dword_249083000, v35, v36, "### XPC create reply failed: client=%s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x24C1F26F0](v39, -1, -1);
        MEMORY[0x24C1F26F0](v38, -1, -1);
      }

      v96 = v0[50];
      v101 = v0[55];
      v40 = v0[47];
      v42 = v0[45];
      v41 = v0[46];
      v44 = v0[43];
      v43 = v0[44];
      v46 = v0[40];
      v45 = v0[41];
      v47 = v0[37];
      (*(v0[22] + 8))(v0[24], v0[21]);
      sub_2490A487C(v47, &qword_27EED8198, &qword_249110CE8);
      (*(v45 + 8))(v44, v46);
      (*(v42 + 8))(v41, v43);
      v101(v96, v40);
      goto LABEL_19;
    }

    v21 = reply;
    v22 = v0[23];
    v23 = v0[21];
    v24 = v0[22];
    (*(v24 + 16))(v22, v0[24], v23);
    v25 = (*(v24 + 88))(v22, v23);
    if (v25 == v6)
    {
      v26 = v0[23];
      (*(v0[22] + 96))(v26, v0[21]);
      v27 = *v26;
      v28 = v26[1];
      sub_24910C52C();
      if (v7)
      {
        v90 = v0[50];
        v95 = v0[55];
        v87 = v0[47];
        v29 = v0[45];
        v79 = v0[44];
        v82 = v0[46];
        v30 = v0[41];
        v75 = v0[40];
        v77 = v0[43];
        v31 = v0[37];
        v32 = v0[24];
        v34 = v0[21];
        v33 = v0[22];
        sub_2490A453C(v27, v28);
        swift_unknownObjectRelease();
        (*(v33 + 8))(v32, v34);
        sub_2490A487C(v31, &qword_27EED8198, &qword_249110CE8);
        (*(v30 + 8))(v77, v75);
        (*(v29 + 8))(v82, v79);
        v95(v90, v87);
LABEL_14:

        v64 = v0[1];
        goto LABEL_20;
      }

      sub_2490A453C(v27, v28);
    }

    else
    {
      if (v25 != *MEMORY[0x277D05700])
      {
        v92 = v0[50];
        v98 = v0[55];
        v89 = v0[47];
        v57 = v0[45];
        v78 = v0[44];
        v81 = v0[46];
        v58 = v0[41];
        v74 = v0[40];
        v76 = v0[43];
        v59 = v0[37];
        v60 = v0[24];
        v84 = v0[23];
        v61 = v0[21];
        v62 = v0[22];
        sub_24910C7DC();
        sub_24910C7EC();
        swift_willThrow();
        swift_unknownObjectRelease();
        v63 = *(v62 + 8);
        v63(v60, v61);
        sub_2490A487C(v59, &qword_27EED8198, &qword_249110CE8);
        (*(v58 + 8))(v76, v74);
        (*(v57 + 8))(v81, v78);
        v98(v92, v89);
        v63(v84, v61);
        goto LABEL_14;
      }

      v48 = v0[23];
      (*(v0[22] + 96))(v48, v0[21]);
      sub_2490FC19C(v48, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_24910C54C();
      if (v7)
      {
        v91 = v0[50];
        v97 = v0[55];
        v88 = v0[47];
        v49 = v0[45];
        v80 = v0[44];
        v83 = v0[46];
        v50 = v0[43];
        v52 = v0[40];
        v51 = v0[41];
        v53 = v0[37];
        v54 = v0[24];
        v55 = v0[21];
        v56 = v0[22];
        swift_unknownObjectRelease();
        (*(v56 + 8))(v54, v55);
        sub_2490A487C(v53, &qword_27EED8198, &qword_249110CE8);
        (*(v51 + 8))(v50, v52);
        (*(v49 + 8))(v83, v80);
        v97(v91, v88);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v99 = v0[50];
    v102 = v0[55];
    v93 = v0[47];
    v65 = v0[45];
    v66 = v0[43];
    v85 = v0[44];
    v86 = v0[46];
    v68 = v0[40];
    v67 = v0[41];
    v69 = v0[37];
    v70 = v0[24];
    v71 = v0[21];
    v72 = v0[22];
    xpc_connection_send_message(*(v0[20] + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v21);
    swift_unknownObjectRelease();
    (*(v72 + 8))(v70, v71);
    sub_2490A487C(v69, &qword_27EED8198, &qword_249110CE8);
    (*(v67 + 8))(v66, v68);
    (*(v65 + 8))(v86, v85);
    v102(v99, v93);
    goto LABEL_19;
  }

  v94 = v0[50];
  v100 = v0[55];
  v11 = v0[47];
  v13 = v0[45];
  v12 = v0[46];
  v15 = v0[43];
  v14 = v0[44];
  v17 = v0[40];
  v16 = v0[41];
  v18 = v0[32];
  sub_2490A487C(v0[37], &qword_27EED8198, &qword_249110CE8);
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
  v100(v94, v11);
  sub_2490A487C(v18, &qword_27EED8198, &qword_249110CE8);
LABEL_19:

  v64 = v0[1];
LABEL_20:

  return v64();
}

uint64_t sub_249102998(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[64] = a1;
  v3[65] = v1;

  if (v1)
  {
    v5 = v3[51];
    v6 = v3[52];

    return MEMORY[0x2822009F8](sub_249104C84, v5, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[66] = v7;
    *v7 = v4;
    v7[1] = sub_249102B2C;
    v8 = v3[46];
    v9 = v3[20];
    v10 = v3[43];

    return DTTransportDaemon.handleLocalRequest(request:context:xpcConnection:)(v10, v8, v9);
  }
}

uint64_t sub_249102B2C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 536) = v2;

  if (v2)
  {
    v7 = v6[51];
    v8 = v6[52];
    v9 = sub_249104E4C;
  }

  else
  {
    v6[68] = a2;
    v6[69] = a1;
    v7 = v6[51];
    v8 = v6[52];
    v9 = sub_249102C78;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_249102C78()
{
  v105 = v0;
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[37];
  v4 = v0[35];
  v5 = v0[21];
  v6 = v0[22];
  (*(v0[30] + 8))(v0[31], v0[29]);
  *v4 = v1;
  v4[1] = v2;
  v7 = *MEMORY[0x277D05708];
  (*(v6 + 104))(v4, *MEMORY[0x277D05708], v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_2490B3868(v4, v3, &qword_27EED8198, &qword_249110CE8);
  v8 = v0[67];
  v9 = v0[32];
  v10 = v0[21];
  v11 = v0[22];
  sub_2490A4674(v0[37], v9, &qword_27EED8198, &qword_249110CE8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v20 = v0[19];
    (*(v0[22] + 32))(v0[24], v0[32], v0[21]);
    reply = xpc_dictionary_create_reply(v20);
    if (!reply)
    {

      v36 = sub_24910C87C();
      v37 = sub_24910CF4C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v0[20];
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v104 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_24909F930(*(v38 + 32), *(v38 + 40), &v104);
        _os_log_impl(&dword_249083000, v36, v37, "### XPC create reply failed: client=%s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x24C1F26F0](v40, -1, -1);
        MEMORY[0x24C1F26F0](v39, -1, -1);
      }

      v97 = v0[50];
      v102 = v0[55];
      v41 = v0[47];
      v43 = v0[45];
      v42 = v0[46];
      v45 = v0[43];
      v44 = v0[44];
      v47 = v0[40];
      v46 = v0[41];
      v48 = v0[37];
      (*(v0[22] + 8))(v0[24], v0[21]);
      sub_2490A487C(v48, &qword_27EED8198, &qword_249110CE8);
      (*(v46 + 8))(v45, v47);
      (*(v43 + 8))(v42, v44);
      v102(v97, v41);
      goto LABEL_19;
    }

    v22 = reply;
    v23 = v0[23];
    v24 = v0[21];
    v25 = v0[22];
    (*(v25 + 16))(v23, v0[24], v24);
    v26 = (*(v25 + 88))(v23, v24);
    if (v26 == v7)
    {
      v27 = v0[23];
      (*(v0[22] + 96))(v27, v0[21]);
      v28 = *v27;
      v29 = v27[1];
      sub_24910C52C();
      if (v8)
      {
        v91 = v0[50];
        v96 = v0[55];
        v88 = v0[47];
        v30 = v0[45];
        v80 = v0[44];
        v83 = v0[46];
        v31 = v0[41];
        v76 = v0[40];
        v78 = v0[43];
        v32 = v0[37];
        v33 = v0[24];
        v35 = v0[21];
        v34 = v0[22];
        sub_2490A453C(v28, v29);
        swift_unknownObjectRelease();
        (*(v34 + 8))(v33, v35);
        sub_2490A487C(v32, &qword_27EED8198, &qword_249110CE8);
        (*(v31 + 8))(v78, v76);
        (*(v30 + 8))(v83, v80);
        v96(v91, v88);
LABEL_14:

        v65 = v0[1];
        goto LABEL_20;
      }

      sub_2490A453C(v28, v29);
    }

    else
    {
      if (v26 != *MEMORY[0x277D05700])
      {
        v93 = v0[50];
        v99 = v0[55];
        v90 = v0[47];
        v58 = v0[45];
        v79 = v0[44];
        v82 = v0[46];
        v59 = v0[41];
        v75 = v0[40];
        v77 = v0[43];
        v60 = v0[37];
        v61 = v0[24];
        v85 = v0[23];
        v62 = v0[21];
        v63 = v0[22];
        sub_24910C7DC();
        sub_24910C7EC();
        swift_willThrow();
        swift_unknownObjectRelease();
        v64 = *(v63 + 8);
        v64(v61, v62);
        sub_2490A487C(v60, &qword_27EED8198, &qword_249110CE8);
        (*(v59 + 8))(v77, v75);
        (*(v58 + 8))(v82, v79);
        v99(v93, v90);
        v64(v85, v62);
        goto LABEL_14;
      }

      v49 = v0[23];
      (*(v0[22] + 96))(v49, v0[21]);
      sub_2490FC19C(v49, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_24910C54C();
      if (v8)
      {
        v92 = v0[50];
        v98 = v0[55];
        v89 = v0[47];
        v50 = v0[45];
        v81 = v0[44];
        v84 = v0[46];
        v51 = v0[43];
        v53 = v0[40];
        v52 = v0[41];
        v54 = v0[37];
        v55 = v0[24];
        v56 = v0[21];
        v57 = v0[22];
        swift_unknownObjectRelease();
        (*(v57 + 8))(v55, v56);
        sub_2490A487C(v54, &qword_27EED8198, &qword_249110CE8);
        (*(v52 + 8))(v51, v53);
        (*(v50 + 8))(v84, v81);
        v98(v92, v89);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v100 = v0[50];
    v103 = v0[55];
    v94 = v0[47];
    v66 = v0[45];
    v67 = v0[43];
    v86 = v0[44];
    v87 = v0[46];
    v69 = v0[40];
    v68 = v0[41];
    v70 = v0[37];
    v71 = v0[24];
    v72 = v0[21];
    v73 = v0[22];
    xpc_connection_send_message(*(v0[20] + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v22);
    swift_unknownObjectRelease();
    (*(v73 + 8))(v71, v72);
    sub_2490A487C(v70, &qword_27EED8198, &qword_249110CE8);
    (*(v68 + 8))(v67, v69);
    (*(v66 + 8))(v87, v86);
    v103(v100, v94);
    goto LABEL_19;
  }

  v95 = v0[50];
  v101 = v0[55];
  v12 = v0[47];
  v14 = v0[45];
  v13 = v0[46];
  v16 = v0[43];
  v15 = v0[44];
  v18 = v0[40];
  v17 = v0[41];
  v19 = v0[32];
  sub_2490A487C(v0[37], &qword_27EED8198, &qword_249110CE8);
  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);
  v101(v95, v12);
  sub_2490A487C(v19, &qword_27EED8198, &qword_249110CE8);
LABEL_19:

  v65 = v0[1];
LABEL_20:

  return v65();
}

uint64_t sub_2491035E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[71] = a1;
  v3[72] = v1;

  if (v1)
  {
    v5 = v3[51];
    v6 = v3[52];

    return MEMORY[0x2822009F8](sub_249105014, v5, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[73] = v7;
    *v7 = v4;
    v7[1] = sub_249103774;
    v8 = v3[46];
    v9 = v3[20];
    v10 = v3[43];

    return DTTransportDaemon.handleLocalRequest(request:context:xpcConnection:)(v10, v8, v9);
  }
}

uint64_t sub_249103774(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 592) = v2;

  if (v2)
  {
    v7 = v6[51];
    v8 = v6[52];
    v9 = sub_2491051D4;
  }

  else
  {
    v6[75] = a2;
    v6[76] = a1;
    v7 = v6[51];
    v8 = v6[52];
    v9 = sub_2491038C0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2491038C0()
{
  v107 = v0;
  v1 = v0[75];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[21];
  v8 = v0[22];
  *v6 = v0[76];
  v6[1] = v1;
  v9 = *MEMORY[0x277D05708];
  (*(v8 + 104))(v6, *MEMORY[0x277D05708], v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_2490B3868(v6, v5, &qword_27EED8198, &qword_249110CE8);
  (*(v3 + 8))(v2, v4);
  v10 = v0[74];
  v11 = v0[32];
  v12 = v0[21];
  v13 = v0[22];
  sub_2490A4674(v0[37], v11, &qword_27EED8198, &qword_249110CE8);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v22 = v0[19];
    (*(v0[22] + 32))(v0[24], v0[32], v0[21]);
    reply = xpc_dictionary_create_reply(v22);
    if (!reply)
    {

      v38 = sub_24910C87C();
      v39 = sub_24910CF4C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = v0[20];
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v106 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_24909F930(*(v40 + 32), *(v40 + 40), &v106);
        _os_log_impl(&dword_249083000, v38, v39, "### XPC create reply failed: client=%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x24C1F26F0](v42, -1, -1);
        MEMORY[0x24C1F26F0](v41, -1, -1);
      }

      v99 = v0[50];
      v104 = v0[55];
      v43 = v0[47];
      v45 = v0[45];
      v44 = v0[46];
      v47 = v0[43];
      v46 = v0[44];
      v49 = v0[40];
      v48 = v0[41];
      v50 = v0[37];
      (*(v0[22] + 8))(v0[24], v0[21]);
      sub_2490A487C(v50, &qword_27EED8198, &qword_249110CE8);
      (*(v48 + 8))(v47, v49);
      (*(v45 + 8))(v44, v46);
      v104(v99, v43);
      goto LABEL_19;
    }

    v24 = reply;
    v25 = v0[23];
    v26 = v0[21];
    v27 = v0[22];
    (*(v27 + 16))(v25, v0[24], v26);
    v28 = (*(v27 + 88))(v25, v26);
    if (v28 == v9)
    {
      v29 = v0[23];
      (*(v0[22] + 96))(v29, v0[21]);
      v30 = *v29;
      v31 = v29[1];
      sub_24910C52C();
      if (v10)
      {
        v93 = v0[50];
        v98 = v0[55];
        v90 = v0[47];
        v32 = v0[45];
        v82 = v0[44];
        v85 = v0[46];
        v33 = v0[41];
        v78 = v0[40];
        v80 = v0[43];
        v34 = v0[37];
        v35 = v0[24];
        v37 = v0[21];
        v36 = v0[22];
        sub_2490A453C(v30, v31);
        swift_unknownObjectRelease();
        (*(v36 + 8))(v35, v37);
        sub_2490A487C(v34, &qword_27EED8198, &qword_249110CE8);
        (*(v33 + 8))(v80, v78);
        (*(v32 + 8))(v85, v82);
        v98(v93, v90);
LABEL_14:

        v67 = v0[1];
        goto LABEL_20;
      }

      sub_2490A453C(v30, v31);
    }

    else
    {
      if (v28 != *MEMORY[0x277D05700])
      {
        v95 = v0[50];
        v101 = v0[55];
        v92 = v0[47];
        v60 = v0[45];
        v81 = v0[44];
        v84 = v0[46];
        v61 = v0[41];
        v77 = v0[40];
        v79 = v0[43];
        v62 = v0[37];
        v63 = v0[24];
        v87 = v0[23];
        v64 = v0[21];
        v65 = v0[22];
        sub_24910C7DC();
        sub_24910C7EC();
        swift_willThrow();
        swift_unknownObjectRelease();
        v66 = *(v65 + 8);
        v66(v63, v64);
        sub_2490A487C(v62, &qword_27EED8198, &qword_249110CE8);
        (*(v61 + 8))(v79, v77);
        (*(v60 + 8))(v84, v81);
        v101(v95, v92);
        v66(v87, v64);
        goto LABEL_14;
      }

      v51 = v0[23];
      (*(v0[22] + 96))(v51, v0[21]);
      sub_2490FC19C(v51, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_24910C54C();
      if (v10)
      {
        v94 = v0[50];
        v100 = v0[55];
        v91 = v0[47];
        v52 = v0[45];
        v83 = v0[44];
        v86 = v0[46];
        v53 = v0[43];
        v55 = v0[40];
        v54 = v0[41];
        v56 = v0[37];
        v57 = v0[24];
        v58 = v0[21];
        v59 = v0[22];
        swift_unknownObjectRelease();
        (*(v59 + 8))(v57, v58);
        sub_2490A487C(v56, &qword_27EED8198, &qword_249110CE8);
        (*(v54 + 8))(v53, v55);
        (*(v52 + 8))(v86, v83);
        v100(v94, v91);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v102 = v0[50];
    v105 = v0[55];
    v96 = v0[47];
    v68 = v0[45];
    v69 = v0[43];
    v88 = v0[44];
    v89 = v0[46];
    v71 = v0[40];
    v70 = v0[41];
    v72 = v0[37];
    v73 = v0[24];
    v74 = v0[21];
    v75 = v0[22];
    xpc_connection_send_message(*(v0[20] + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v24);
    swift_unknownObjectRelease();
    (*(v75 + 8))(v73, v74);
    sub_2490A487C(v72, &qword_27EED8198, &qword_249110CE8);
    (*(v70 + 8))(v69, v71);
    (*(v68 + 8))(v89, v88);
    v105(v102, v96);
    goto LABEL_19;
  }

  v97 = v0[50];
  v103 = v0[55];
  v14 = v0[47];
  v16 = v0[45];
  v15 = v0[46];
  v18 = v0[43];
  v17 = v0[44];
  v20 = v0[40];
  v19 = v0[41];
  v21 = v0[32];
  sub_2490A487C(v0[37], &qword_27EED8198, &qword_249110CE8);
  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v15, v17);
  v103(v97, v14);
  sub_2490A487C(v21, &qword_27EED8198, &qword_249110CE8);
LABEL_19:

  v67 = v0[1];
LABEL_20:

  return v67();
}

uint64_t sub_249104230()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);
  if (v0)
  {
    v5 = sub_249105394;
  }

  else
  {
    v5 = sub_24910436C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24910436C()
{
  v100 = v0;
  v1 = v0[37];
  v2 = v0[33];
  (*(v0[26] + 8))(v0[27], v0[25]);
  sub_2490B3868(v2, v1, &qword_27EED8198, &qword_249110CE8);
  v3 = v0[78];
  v4 = v0[32];
  v5 = v0[21];
  v6 = v0[22];
  sub_2490A4674(v0[37], v4, &qword_27EED8198, &qword_249110CE8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v15 = v0[19];
    (*(v0[22] + 32))(v0[24], v0[32], v0[21]);
    reply = xpc_dictionary_create_reply(v15);
    if (!reply)
    {

      v31 = sub_24910C87C();
      v32 = sub_24910CF4C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = v0[20];
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v99 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_24909F930(*(v33 + 32), *(v33 + 40), &v99);
        _os_log_impl(&dword_249083000, v31, v32, "### XPC create reply failed: client=%s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x24C1F26F0](v35, -1, -1);
        MEMORY[0x24C1F26F0](v34, -1, -1);
      }

      v92 = v0[50];
      v97 = v0[55];
      v36 = v0[47];
      v38 = v0[45];
      v37 = v0[46];
      v40 = v0[43];
      v39 = v0[44];
      v42 = v0[40];
      v41 = v0[41];
      v43 = v0[37];
      (*(v0[22] + 8))(v0[24], v0[21]);
      sub_2490A487C(v43, &qword_27EED8198, &qword_249110CE8);
      (*(v41 + 8))(v40, v42);
      (*(v38 + 8))(v37, v39);
      v97(v92, v36);
      goto LABEL_19;
    }

    v17 = reply;
    v18 = v0[23];
    v19 = v0[21];
    v20 = v0[22];
    (*(v20 + 16))(v18, v0[24], v19);
    v21 = (*(v20 + 88))(v18, v19);
    if (v21 == *MEMORY[0x277D05708])
    {
      v22 = v0[23];
      (*(v0[22] + 96))(v22, v0[21]);
      v23 = *v22;
      v24 = v22[1];
      sub_24910C52C();
      if (v3)
      {
        v86 = v0[50];
        v91 = v0[55];
        v83 = v0[47];
        v25 = v0[45];
        v75 = v0[44];
        v78 = v0[46];
        v26 = v0[41];
        v71 = v0[40];
        v73 = v0[43];
        v27 = v0[37];
        v28 = v0[24];
        v30 = v0[21];
        v29 = v0[22];
        sub_2490A453C(v23, v24);
        swift_unknownObjectRelease();
        (*(v29 + 8))(v28, v30);
        sub_2490A487C(v27, &qword_27EED8198, &qword_249110CE8);
        (*(v26 + 8))(v73, v71);
        (*(v25 + 8))(v78, v75);
        v91(v86, v83);
LABEL_14:

        v60 = v0[1];
        goto LABEL_20;
      }

      sub_2490A453C(v23, v24);
    }

    else
    {
      if (v21 != *MEMORY[0x277D05700])
      {
        v88 = v0[50];
        v94 = v0[55];
        v85 = v0[47];
        v53 = v0[45];
        v74 = v0[44];
        v77 = v0[46];
        v54 = v0[41];
        v70 = v0[40];
        v72 = v0[43];
        v55 = v0[37];
        v56 = v0[24];
        v80 = v0[23];
        v57 = v0[21];
        v58 = v0[22];
        sub_24910C7DC();
        sub_24910C7EC();
        swift_willThrow();
        swift_unknownObjectRelease();
        v59 = *(v58 + 8);
        v59(v56, v57);
        sub_2490A487C(v55, &qword_27EED8198, &qword_249110CE8);
        (*(v54 + 8))(v72, v70);
        (*(v53 + 8))(v77, v74);
        v94(v88, v85);
        v59(v80, v57);
        goto LABEL_14;
      }

      v44 = v0[23];
      (*(v0[22] + 96))(v44, v0[21]);
      sub_2490FC19C(v44, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_24910C54C();
      if (v3)
      {
        v87 = v0[50];
        v93 = v0[55];
        v84 = v0[47];
        v45 = v0[45];
        v76 = v0[44];
        v79 = v0[46];
        v46 = v0[43];
        v48 = v0[40];
        v47 = v0[41];
        v49 = v0[37];
        v50 = v0[24];
        v51 = v0[21];
        v52 = v0[22];
        swift_unknownObjectRelease();
        (*(v52 + 8))(v50, v51);
        sub_2490A487C(v49, &qword_27EED8198, &qword_249110CE8);
        (*(v47 + 8))(v46, v48);
        (*(v45 + 8))(v79, v76);
        v93(v87, v84);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v95 = v0[50];
    v98 = v0[55];
    v89 = v0[47];
    v61 = v0[45];
    v62 = v0[43];
    v81 = v0[44];
    v82 = v0[46];
    v64 = v0[40];
    v63 = v0[41];
    v65 = v0[37];
    v66 = v0[24];
    v67 = v0[21];
    v68 = v0[22];
    xpc_connection_send_message(*(v0[20] + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v17);
    swift_unknownObjectRelease();
    (*(v68 + 8))(v66, v67);
    sub_2490A487C(v65, &qword_27EED8198, &qword_249110CE8);
    (*(v63 + 8))(v62, v64);
    (*(v61 + 8))(v82, v81);
    v98(v95, v89);
    goto LABEL_19;
  }

  v90 = v0[50];
  v96 = v0[55];
  v7 = v0[47];
  v9 = v0[45];
  v8 = v0[46];
  v11 = v0[43];
  v10 = v0[44];
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[32];
  sub_2490A487C(v0[37], &qword_27EED8198, &qword_249110CE8);
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  v96(v90, v7);
  sub_2490A487C(v14, &qword_27EED8198, &qword_249110CE8);
LABEL_19:

  v60 = v0[1];
LABEL_20:

  return v60();
}

uint64_t sub_249104C84()
{
  v11 = v0[55];
  v1 = v0[50];
  v2 = v0[47];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[40];
  v8 = v0[41];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v11(v1, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_249104E4C()
{
  v11 = v0[55];
  v1 = v0[50];
  v2 = v0[47];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[40];
  v8 = v0[41];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v11(v1, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_249105014()
{
  v10 = v0[50];
  v11 = v0[55];
  v1 = v0[47];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v5 = v0[42];
  v6 = v0[40];
  v7 = *(v0[41] + 8);
  v7(v0[43], v6);
  (*(v3 + 8))(v2, v4);
  v11(v10, v1);
  v7(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2491051D4()
{
  v10 = v0[50];
  v11 = v0[55];
  v1 = v0[47];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v5 = v0[42];
  v6 = v0[40];
  v7 = *(v0[41] + 8);
  v7(v0[43], v6);
  (*(v3 + 8))(v2, v4);
  v11(v10, v1);
  v7(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_249105394()
{
  v11 = v0[55];
  v1 = v0[50];
  v2 = v0[47];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[40];
  v8 = v0[41];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v11(v1, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24910555C()
{
  v1 = v0[55];
  v2 = v0[50];
  v3 = v0[47];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  (*(v0[41] + 8))(v0[43], v0[40]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2491056FC()
{
  v1 = v0[55];
  v2 = v0[50];
  v3 = v0[47];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  (*(v0[41] + 8))(v0[43], v0[40]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t DTXPCConnection.deinit()
{

  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2490FBDE0(*(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler), *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler + 8));
  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastContext, &qword_27EED80C0, &qword_249110B10);
  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastRequest, &qword_27EED80B8, &qword_249110B08);
  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext, &qword_27EED80C8, &qword_249110B18);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcCoder;
  v4 = sub_24910C56C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection_xpcInstanceID, &qword_27EED7900, &qword_24910EB50);
  return v0;
}

uint64_t DTXPCConnection.__deallocating_deinit()
{
  DTXPCConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DTXPCConnection.hashValue.getter()
{
  sub_24910D60C();
  MEMORY[0x24C1F2040](v0);
  return sub_24910D62C();
}

uint64_t sub_249105AA8(uint64_t a1)
{
  v1 = sub_24910C34C();
  v2 = sub_24910D02C();

  return v2;
}

uint64_t sub_249105AF8()
{
  v1 = *v0;
  sub_24910D60C();
  MEMORY[0x24C1F2040](v1);
  return sub_24910D62C();
}

uint64_t sub_249105B6C(uint64_t a1)
{
  v2 = *v1;
  sub_24910D60C();
  MEMORY[0x24C1F2040](v2);
  return sub_24910D62C();
}

uint64_t sub_249105BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v56 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  swift_weakInit();
  *(v4 + 56) = 0;
  v10 = (v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastContext;
  v12 = sub_24910C73C();
  v13 = 1;
  (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
  v14 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastRequest;
  v15 = sub_24910C86C();
  (*(*(v15 - 8) + 56))(v4 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
  v17 = sub_24910C6EC();
  (*(*(v17 - 8) + 56))(v4 + v16, 1, 1, v17);
  *(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction) = 0;
  sub_24910C55C();
  *(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcInvalidated) = 0;
  swift_weakAssign();
  v18 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__environment;
  v19 = sub_24910C3BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v47 = a3;
  v21(v4 + v18, a3, v19);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  sub_24910C32C();
  v23 = v52;
  *(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection) = v52;
  pid = xpc_connection_get_pid(v23);
  v25 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__pid;
  *(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__pid) = pid;
  v54 = 0;
  v55 = 0;
  v48 = a1;
  sub_24910C32C();
  peer_instance = xpc_connection_get_peer_instance();
  swift_unknownObjectRelease();
  if (peer_instance)
  {
    sub_24910C2DC();
    v13 = 0;
  }

  v27 = sub_24910C2FC();
  (*(*(v27 - 8) + 56))(v9, v13, 1, v27);
  sub_2490B3868(v9, v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection_xpcInstanceID, &qword_27EED7900, &qword_24910EB50);
  v52 = 0u;
  v53 = 0u;
  xpc_connection_get_audit_token();
  v28 = xpc_copy_entitlement_for_token();
  if (v28)
  {
    swift_unknownObjectRetain();
    sub_24910C58C();
    v29 = sub_24910CCAC();

    v30 = xpc_dictionary_get_BOOL(v28, (v29 + 32));

    if (v30 || (sub_24910C5EC(), v31 = sub_24910CCAC(), , v32 = xpc_dictionary_get_BOOL(v28, (v31 + 32)), , v32))
    {
      v33 = 1;
    }

    else
    {
      sub_24910C57C();
      v34 = sub_24910CCAC();

      v33 = xpc_dictionary_get_BOOL(v28, (v34 + 32));
    }

    swift_unknownObjectRelease();
    *(v4 + 56) = v33;
    v35 = swift_unknownObjectRetain();
    if (xpc_dictionary_get_string(v35, "application-identifier"))
    {
      v36 = sub_24910CCFC();
      v38 = v37;
      swift_unknownObjectRelease();
LABEL_14:
      *(v4 + 16) = v36;
      *(v4 + 24) = v38;
      goto LABEL_15;
    }

    swift_unknownObjectRelease();
  }

  v39 = xpc_copy_code_signing_identity_for_token();
  if (!v39)
  {
    v36 = 63;
    v38 = 0xE100000000000000;
    goto LABEL_14;
  }

  v40 = v39;
  v36 = sub_24910CCFC();
  v38 = v41;
  *(v4 + 16) = v36;
  *(v4 + 24) = v41;
  free(v40);
LABEL_15:
  v50 = v36;
  v51 = v38;

  MEMORY[0x24C1F1710](58, 0xE100000000000000);
  v49 = *(v4 + v25);
  v42 = sub_24910D50C();
  MEMORY[0x24C1F1710](v42);
  swift_unknownObjectRelease();

  v43 = v50;
  v44 = v51;
  (*(v20 + 8))(v47, v19);
  *(v4 + 32) = v43;
  *(v4 + 40) = v44;
  (*(*(v22 - 8) + 8))(v48, v22);
  return v4;
}

uint64_t sub_249106114()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24910616C(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = v2;
  v7 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
  swift_beginAccess();
  v8 = *(a1 + v7);
  if (!v8)
  {
    goto LABEL_5;
  }

  type metadata accessor for DTTransportDaemon(0);
  sub_2491069FC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);

  sub_24910CDAC();
  if (swift_task_isCurrentExecutor())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_249106814;
    *(v9 + 24) = v4;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_2490CDCD4;
    *(v10 + 24) = v9;

    v12[0] = v8;
    sub_2490CDCFC(v12);
    if (!v3)
    {

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_5:
        *a2 = v8 == 0;
        return;
      }

      __break(1u);
    }

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  sub_24910D33C();
  __break(1u);
}

uint64_t type metadata accessor for DTXPCConnection(uint64_t a1)
{
  result = qword_27EEDBAE0;
  if (!qword_27EEDBAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249106488(uint64_t a1)
{
  sub_24910C3BC();
  if (v1 <= 0x3F)
  {
    sub_249106728(319, &qword_27EED80F8, MEMORY[0x277D056F0]);
    if (v2 <= 0x3F)
    {
      sub_249106728(319, &qword_27EED8100, MEMORY[0x277D057E0]);
      if (v3 <= 0x3F)
      {
        sub_249106728(319, &qword_27EED8108, MEMORY[0x277D056E0]);
        if (v4 <= 0x3F)
        {
          sub_24910C56C();
          if (v5 <= 0x3F)
          {
            sub_249106728(319, &unk_27EED7DC0, MEMORY[0x277CC95F0]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_249106728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24910D11C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2491067DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249106848()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249106918()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24908837C;

  return sub_2490FE8DC(v5, v4, v0 + v3);
}

uint64_t sub_2491069FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249106A58()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EEDBAF8);
  __swift_project_value_buffer(v0, qword_27EEDBAF8);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTXPCServer.localOnly.getter()
{
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer_localOnly;
  swift_beginAccess();
  return *(v0 + v1);
}

void DTXPCServer.localOnly.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer_localOnly;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DTXPCServer.unownedExecutor.getter(uint64_t a1)
{
  v1 = sub_24910C34C();
  v2 = sub_24910D02C();

  return v2;
}

uint64_t DTXPCServer.__allocating_init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  *(v3 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) = 0;
  *(v3 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer_localOnly) = 0;
  *(v3 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections) = MEMORY[0x277D84FA0];
  *(v3 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener) = 0;
  swift_weakAssign();

  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__environment;
  v5 = sub_24910C3BC();
  (*(*(v5 - 8) + 32))(v3 + v4, a2, v5);
  return v3;
}

uint64_t DTXPCServer.init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer_localOnly) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener) = 0;
  swift_weakAssign();

  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__environment;
  v5 = sub_24910C3BC();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t DTXPCServer.summary.getter()
{
  v1[15] = v0;
  sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer, &protocol conformance descriptor for DTXPCServer);
  v3 = sub_24910CDAC();
  v1[16] = v3;
  v1[17] = v2;

  return MEMORY[0x2822009F8](sub_249106E8C, v3, v2);
}

uint64_t sub_249106E8C()
{
  v40 = v0;
  v0[10] = 0;
  v1 = v0[15];
  v0[11] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_24910D19C();

    if (!v4)
    {
      goto LABEL_27;
    }

LABEL_5:
    v5 = *(v1 + v2);
    v6 = MEMORY[0x277D84F90];
    if ((v5 & 0xC000000000000001) != 0)
    {

      sub_24910D18C();
      type metadata accessor for DTXPCConnection(0);
      sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
      sub_24910CE7C();
      v9 = v0[2];
      v0[18] = v9;
      v10 = v0 + 18;
      v12 = v0[3];
      v11 = v0[4];
      v14 = v0[5];
      v13 = v0[6];
      v0[20] = v11;
      v0[19] = v12;
      v0[21] = v6;
      if (v9 < 0)
      {
        v27 = sub_24910D1BC();
        if (!v27)
        {
          goto LABEL_23;
        }

        v0[14] = v27;
        swift_dynamicCast();
        v23 = v0[12];
        v20 = v14;
        v22 = v13;
LABEL_17:
        v0[23] = v20;
        v0[24] = v22;
        v0[22] = v23;
        if (v23)
        {
          type metadata accessor for DTXPCConnection(0);
          sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
          v24 = sub_24910CDAC();
          v26 = v25;
          v9 = sub_24910733C;
          v7 = v24;
          v8 = v26;

          return MEMORY[0x2822009F8](v9, v7, v8);
        }

LABEL_23:
        sub_2491077B8(*v10);
        sub_24910D25C();

        v38 = 0xD000000000000014;
        v39 = 0x80000002491120A0;
        v28 = MEMORY[0x277D84F90];
        v0[12] = *(MEMORY[0x277D84F90] + 16);
        v29 = sub_24910D50C();
        MEMORY[0x24C1F1710](v29);

        MEMORY[0x24C1F1710](10, 0xE100000000000000);
        MEMORY[0x24C1F1710](v38, v39);

        v38 = v28;

        sub_2491098C0(&v38);

        v30 = *(v38 + 2);
        if (v30)
        {
          v31 = v38 + 40;
          do
          {
            v32 = *(v31 - 1);
            v33 = *v31;

            MEMORY[0x24C1F1710](v32, v33);

            v31 += 16;
            --v30;
          }

          while (v30);
        }

        goto LABEL_27;
      }

      v15 = v11 + 64;
    }

    else
    {
      v16 = -1;
      v17 = -1 << *(v5 + 32);
      v12 = v5 + 56;
      if (-v17 < 64)
      {
        v16 = ~(-1 << -v17);
      }

      v13 = v16 & *(v5 + 56);
      v0[20] = ~v17;
      v0[19] = v12;
      v0[18] = v5;
      v10 = v0 + 18;
      v18 = v6;
      v15 = 63 - v17;
      v0[21] = v18;

      v14 = 0;
    }

    v19 = v13;
    v20 = v14;
    if (!v13)
    {
      v21 = v14;
      while (1)
      {
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v20 >= (v15 >> 6))
        {
          goto LABEL_23;
        }

        v19 = *(v12 + 8 * v20);
        ++v21;
        if (v19)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v9, v7, v8);
    }

LABEL_16:
    v22 = (v19 - 1) & v19;
    v23 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

    goto LABEL_17;
  }

  if (*(v3 + 16))
  {
    goto LABEL_5;
  }

LABEL_27:
  v34 = v0[10];
  v35 = v0[11];
  v36 = v0[1];

  return v36(v34, v35);
}

uint64_t sub_24910733C()
{
  v0[25] = DTXPCConnection.summary.getter();
  v0[26] = v1;
  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_2491073A4, v2, v3);
}

uint64_t sub_2491073A4()
{
  v28 = v0;
  v0[12] = v0[25];
  v0[13] = v0[26];
  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  v1 = v0[12];
  v2 = v0[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0[21];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_24909F648((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v1;
    *(v7 + 5) = v2;
    v2 = v0[23];
    v8 = v0[24];
    v0[21] = v4;
    v9 = v0[18];
    if (v9 < 0)
    {
      break;
    }

    v10 = v8;
    v1 = v2;
    if (v8)
    {
LABEL_10:
      v12 = (v10 - 1) & v10;
      v13 = *(*(v9 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v10)))));

      goto LABEL_13;
    }

    v11 = v2;
    while (1)
    {
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v1 >= ((v0[20] + 64) >> 6))
      {
        goto LABEL_17;
      }

      v10 = *(v0[19] + 8 * v1);
      ++v11;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_24:
    v4 = sub_24909F648(0, *(v4 + 2) + 1, 1, v4);
  }

  v14 = sub_24910D1BC();
  if (!v14)
  {
    goto LABEL_17;
  }

  v0[14] = v14;
  type metadata accessor for DTXPCConnection(0);
  swift_dynamicCast();
  v13 = v0[12];
  v1 = v2;
  v12 = v8;
LABEL_13:
  v0[23] = v1;
  v0[24] = v12;
  v0[22] = v13;
  if (v13)
  {
    type metadata accessor for DTXPCConnection(0);
    sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
    v16 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_24910733C, v16, v15);
  }

LABEL_17:
  sub_2491077B8(v0[18]);
  sub_24910D25C();

  v26 = 0xD000000000000014;
  v27 = 0x80000002491120A0;
  v0[12] = *(v4 + 2);
  v17 = sub_24910D50C();
  MEMORY[0x24C1F1710](v17);

  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  MEMORY[0x24C1F1710](v26, v27);

  v26 = v4;

  sub_2491098C0(&v26);

  v18 = *(v26 + 2);
  if (v18)
  {
    v19 = v26 + 40;
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;

      MEMORY[0x24C1F1710](v20, v21);

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[1];

  return v24(v22, v23);
}

uint64_t type metadata accessor for DTXPCServer(uint64_t a1)
{
  result = qword_27EEDBC30;
  if (!qword_27EEDBC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DTXPCServer.activate()()
{
  *(v1 + 88) = v0;
  sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer, &protocol conformance descriptor for DTXPCServer);
  v3 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_249107894, v3, v2);
}

uint64_t sub_249107894()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener;
  if (!*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener))
  {
    v3 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer_localOnly;
    swift_beginAccess();
    if (*(v1 + v3) == 1)
    {
      v4 = sub_24910C34C();
      mach_service = xpc_connection_create(0, v4);
    }

    else
    {
      sub_24910C58C();
      v4 = sub_24910C34C();
      v6 = sub_24910CCAC();

      mach_service = xpc_connection_create_mach_service((v6 + 32), v4, 1uLL);
    }

    *(v1 + v2) = mach_service;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v7 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_249109964;
    v0[7] = v7;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2490C0EE8;
    v0[5] = &block_descriptor_3;
    v8 = _Block_copy(v0 + 2);

    xpc_connection_set_event_handler(mach_service, v8);
    _Block_release(v8);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease_n();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_249107A9C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v37 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81C0, &qword_249110CB0);
    sub_24910C33C();
    v30 = sub_24910C34C();
    v18 = sub_24910CDEC();
    v19 = v15;
    v20 = *(v18 - 8);
    (*(v20 + 56))(v8, 1, 1, v18);
    v21 = *(v10 + 16);
    v31 = v19;
    v21(v13, v19, v9);
    v22 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    v24 = *(v10 + 32);
    v32 = v9;
    v24(v23 + v22, v13, v9);
    sub_249088588(v8, v6);
    LODWORD(v22) = (*(v20 + 48))(v6, 1, v18);

    if (v22 == 1)
    {
      sub_2490885F8(v6);
    }

    else
    {
      sub_24910CDDC();
      (*(v20 + 8))(v6, v18);
    }

    v25 = sub_24910BE60(&qword_27EED8180, sub_249086D6C, MEMORY[0x277D85270]);
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_249110E18;
    *(v26 + 24) = v23;
    v33 = 6;
    v34 = 0;
    v27 = v30;
    v35 = v30;
    v36 = v25;

    v28 = v27;
    swift_task_create();
    sub_2490885F8(v8);

    return (*(v10 + 8))(v31, v32);
  }

  return result;
}

uint64_t sub_249107E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24908837C;

  return sub_249107F38(a3);
}

uint64_t sub_249107F38(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer, &protocol conformance descriptor for DTXPCServer);
  v4 = sub_24910CDAC();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_24910800C, v4, v3);
}

uint64_t sub_24910800C()
{
  v20 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  sub_24910C32C();
  v1 = v0[5];
  v0[10] = v1;
  v2 = MEMORY[0x24C1F2920](v1);
  if (v2 != sub_24910C8AC())
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = sub_24910C8CC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v1 == v3)
    {
      v14 = v0[7];
      v15 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener;
      *(v14 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener) = 0;
      swift_unknownObjectRelease();
      if (*(v14 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) == 1 && !*(v14 + v15))
      {
        v17 = v0[7];
        v18 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
        swift_beginAccess();
        if ((*(v17 + v18) & 0xC000000000000001) != 0)
        {

          sub_24910D19C();
          swift_unknownObjectRelease();

          goto LABEL_14;
        }
      }
    }

    else
    {
      if (qword_27EEDBAF0 != -1)
      {
        swift_once();
      }

      v4 = sub_24910C89C();
      __swift_project_value_buffer(v4, qword_27EEDBAF8);
      swift_unknownObjectRetain();
      v5 = sub_24910C87C();
      v6 = sub_24910CF4C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v19 = v8;
        *v7 = 136315138;
        v9 = sub_24910CF1C();
        v11 = sub_24909F930(v9, v10, &v19);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_249083000, v5, v6, "### XPC listener error: error=%s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C1F26F0](v8, -1, -1);
        MEMORY[0x24C1F26F0](v7, -1, -1);
      }
    }

    swift_unknownObjectRelease();
LABEL_14:
    v16 = v0[1];

    return v16();
  }

  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_249108324;

  return sub_249108F90(v1);
}

uint64_t sub_249108324()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_249108444, v3, v2);
}

uint64_t sub_249108444()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DTXPCServer.invalidate()()
{
  v1[12] = v0;
  sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer, &protocol conformance descriptor for DTXPCServer);
  v3 = sub_24910CDAC();
  v1[13] = v3;
  v1[14] = v2;

  return MEMORY[0x2822009F8](sub_249108578, v3, v2);
}

uint64_t sub_249108578()
{
  v1 = v0[12];
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) = 1;
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
  v3 = swift_beginAccess();
  v6 = *(v1 + v2);
  *(v1 + v2) = MEMORY[0x277D84FA0];
  if ((v6 & 0xC000000000000001) == 0)
  {
    v9 = 0;
    v12 = -1;
    v13 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v10 = v12 & *(v6 + 56);
    v0[16] = v7;
    v0[17] = ~v13;
    v0[15] = v6;
    v11 = 63 - v13;
    goto LABEL_7;
  }

  sub_24910D18C();
  type metadata accessor for DTXPCConnection(0);
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  v3 = sub_24910CE7C();
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v0[16] = v7;
  v0[17] = v8;
  v0[15] = v6;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v8 + 64;
LABEL_7:
    v14 = v10;
    v15 = v9;
    if (!v10)
    {
      v16 = v11 >> 6;
      v17 = v9;
      while (1)
      {
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v15 >= v16)
        {
          goto LABEL_19;
        }

        v14 = *(v7 + 8 * v15);
        ++v17;
        if (v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v3, v4, v5);
    }

LABEL_12:
    v18 = (v14 - 1) & v14;
    v19 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    goto LABEL_13;
  }

  v23 = sub_24910D1BC();
  if (!v23)
  {
    goto LABEL_19;
  }

  v0[11] = v23;
  swift_dynamicCast();
  v19 = v0[10];
  v15 = v9;
  v18 = v10;
LABEL_13:
  v0[19] = v15;
  v0[20] = v18;
  v0[18] = v19;
  if (v19)
  {
    type metadata accessor for DTXPCConnection(0);
    sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
    v20 = sub_24910CDAC();
    v22 = v21;
    v3 = sub_24910885C;
    v4 = v20;
    v5 = v22;

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

LABEL_19:
  v24 = v0[12];
  sub_2491077B8(v0[15]);
  v25 = *(v24 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener);
  if (v25)
  {
    xpc_connection_cancel(v25);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_24910885C()
{
  DTXPCConnection.invalidate()();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_2491088C0, v1, v2);
}

uint64_t sub_2491088C0()
{

  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[15];
  if (v6 < 0)
  {
    v12 = sub_24910D1BC();
    if (!v12)
    {
      goto LABEL_14;
    }

    v0[11] = v12;
    type metadata accessor for DTXPCConnection(0);
    swift_dynamicCast();
    v11 = v0[10];
    v8 = v4;
    v10 = v5;
  }

  else
  {
    v7 = v0[20];
    v8 = v0[19];
    if (!v5)
    {
      v9 = v0[19];
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= ((v0[17] + 64) >> 6))
        {
          goto LABEL_14;
        }

        v7 = *(v0[16] + 8 * v8);
        ++v9;
        if (v7)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

LABEL_7:
    v10 = (v7 - 1) & v7;
    v11 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));
  }

  v0[19] = v8;
  v0[20] = v10;
  v0[18] = v11;
  if (v11)
  {
    type metadata accessor for DTXPCConnection(0);
    sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
    v13 = sub_24910CDAC();
    v15 = v14;
    v1 = sub_24910885C;
    v2 = v13;
    v3 = v15;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

LABEL_14:
  v16 = v0[12];
  sub_2491077B8(v0[15]);
  v17 = *(v16 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener);
  if (v17)
  {
    xpc_connection_cancel(v17);
  }

  v18 = v0[1];

  return v18();
}

Swift::Void __swiftcall DTXPCServer._invalidated()()
{
  if (*(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) == 1 && !*(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener))
  {
    v1 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
    swift_beginAccess();
    if ((*(v0 + v1) & 0xC000000000000001) != 0)
    {

      sub_24910D19C();
    }
  }
}

uint64_t DTXPCServer.report(eventType:)(uint64_t a1)
{
  v23 = a1;
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_24910D18C();
    type metadata accessor for DTXPCConnection(0);
    sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
    sub_24910CE7C();
    v4 = v27;
    v5 = v28;
    v6 = v29;
    v7 = v30;
    v8 = v31;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v22[5] = v6;
  v24 = v5;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v2 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v2)
    {
      return sub_2491077B8(v4);
    }

    while (1)
    {
      MEMORY[0x28223BE20](v16);
      v22[2] = v23;
      type metadata accessor for DTXPCConnection(0);
      sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
      sub_24910CDAC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        break;
      }

      v18 = swift_allocObject();
      *(v18 + 16) = sub_249109984;
      *(v18 + 24) = v22;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_2490FC890;
      *(v19 + 24) = v18;

      v26[0] = v2;
      sub_2490FC724(v26);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_22;
      }

      v7 = v14;
      v8 = v15;
      v5 = v24;
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v17 = sub_24910D1BC();
      if (v17)
      {
        v25 = v17;
        type metadata accessor for DTXPCConnection(0);
        v16 = swift_dynamicCast();
        v2 = v26[0];
        v14 = v7;
        v15 = v8;
        if (v26[0])
        {
          continue;
        }
      }

      return sub_2491077B8(v4);
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        return sub_2491077B8(v4);
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v25 = v2;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

uint64_t sub_249108F90(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_24910C3BC();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  v2[11] = swift_task_alloc();
  sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer, &protocol conformance descriptor for DTXPCServer);
  v5 = sub_24910CDAC();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x2822009F8](sub_2491090F8, v5, v4);
}

uint64_t sub_2491090F8()
{
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {
LABEL_4:

    v3 = v0[1];

    return v3();
  }

  v2 = v0[7];
  if (*(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled))
  {

    goto LABEL_4;
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[6];
  v10 = Strong;
  type metadata accessor for DTXPCConnection(0);
  v0[5] = v9;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81C0, &qword_249110CB0);
  sub_24910C33C();
  (*(v8 + 16))(v6, v2 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__environment, v7);

  v0[15] = DTXPCConnection.__allocating_init(xpcConnection:daemon:environment:)(v5, v10, v6);
  v11 = swift_allocObject();
  v0[16] = v11;
  swift_weakInit();
  v12 = swift_allocObject();
  v0[17] = v12;
  swift_weakInit();
  v13 = swift_allocObject();
  v0[18] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);

  v15 = sub_24910CDAC();
  v0[19] = v15;
  v0[20] = v14;

  return MEMORY[0x2822009F8](sub_249109354, v15, v14);
}

uint64_t sub_249109354()
{
  DTXPCConnection.setInvalidationHandler(_:)(sub_24910BBF8, v0[18]);

  v1 = v0[12];
  v2 = v0[13];

  return MEMORY[0x2822009F8](sub_2491093F4, v1, v2);
}

uint64_t sub_2491093F4()
{
  v6 = v0;
  v1 = v0[15];
  swift_beginAccess();

  sub_24910A4B8(&v5, v1);
  swift_endAccess();

  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x2822009F8](sub_2491094A4, v2, v3);
}

uint64_t sub_2491094A4()
{
  DTXPCConnection.activate()();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_249109508, v1, v2);
}

uint64_t sub_249109508()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DTXPCServer.deinit()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t DTXPCServer.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2491096CC(uint64_t a1)
{
  v1 = sub_24910C34C();
  v2 = sub_24910D02C();

  return v2;
}

uint64_t sub_24910971C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249095C10;

  return DTXPCServer.summary.getter();
}

uint64_t sub_2491097A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return DTXPCServer.activate()();
}

uint64_t sub_249109834()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return DTXPCServer.invalidate()();
}

uint64_t sub_2491098C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2490A2D10(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2491099C8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24910992C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2491099C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24910D4FC();
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
        v5 = sub_24910CD8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_249109BC4(v7, v8, a1, v4);
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
    return sub_249109AC0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_249109AC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_2490A44E8();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = sub_24910D12C();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
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

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_249109BC4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = sub_2490A44E8();
        result = sub_24910D12C();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = sub_24910D12C();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = sub_2490A44E8();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = sub_24910D12C();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24909F544(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_24909F544((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
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
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          sub_24910A228((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2490A099C(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_2490A0910(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_2490A099C(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      sub_24910A228((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2490A099C(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = sub_2490A0910(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_24910A228(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_2490A44E8();
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (sub_24910D12C() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_2490A44E8();
      while (sub_24910D12C() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_24910A4B8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_24910D1AC();

    if (v8)
    {

      type metadata accessor for DTXPCConnection(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_24910D19C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_24910A758(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_24910A98C(v17 + 1);
    }

    sub_24910AC20(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for DTXPCConnection(0);
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  v10 = sub_24910CC3C();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_24910AD08(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_24910BE60(&unk_27EED80E8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  while ((sub_24910CC7C() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_24910A758(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81D0, &unk_249110E40);
    v2 = sub_24910D22C();
    v15 = v2;
    sub_24910D18C();
    if (sub_24910D1BC())
    {
      type metadata accessor for DTXPCConnection(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_24910A98C(v9 + 1);
        }

        v2 = v15;
        sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
        result = sub_24910CC3C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_24910D1BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_24910A98C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81D0, &unk_249110E40);
  result = sub_24910D21C();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for DTXPCConnection(0);
      sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
      result = sub_24910CC3C();
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
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
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
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_24910AC20(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DTXPCConnection(0);
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  sub_24910CC3C();
  result = sub_24910D17C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24910AD08(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24910A98C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24910AEF0();
      goto LABEL_12;
    }

    sub_24910B040(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for DTXPCConnection(0);
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  result = sub_24910CC3C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_24910BE60(&unk_27EED80E8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
    do
    {
      result = sub_24910CC7C();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24910D56C();
  __break(1u);
  return result;
}

void *sub_24910AEF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81D0, &unk_249110E40);
  v2 = *v0;
  v3 = sub_24910D20C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_24910B040(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81D0, &unk_249110E40);
  result = sub_24910D21C();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for DTXPCConnection(0);
      sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);

      result = sub_24910CC3C();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24910B2B8(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_24910D1CC();

    if (v5)
    {
      v6 = sub_24910B4B8(v4, a1);

      return v6;
    }

    return 0;
  }

  type metadata accessor for DTXPCConnection(0);
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  v8 = sub_24910CC3C();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_24910BE60(&unk_27EED80E8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
  while ((sub_24910CC7C() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24910AEF0();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_24910B694(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_24910B4B8(uint64_t a1, uint64_t a2)
{

  v3 = sub_24910D19C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_24910A758(v4, v3);
  v12 = v5;
  type metadata accessor for DTXPCConnection(0);
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);

  v6 = sub_24910CC3C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_24910BE60(&unk_27EED80E8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
    while ((sub_24910CC7C() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_24910B694(v8);
  result = sub_24910CC7C();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24910B694(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24910D16C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for DTXPCConnection(0);
      sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
      do
      {
        v10 = sub_24910CC3C() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24910B880(uint64_t a1)
{
  result = sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer, &protocol conformance descriptor for DTXPCServer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24910B8E0(uint64_t a1)
{
  result = sub_24910C3BC();
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

uint64_t sub_24910B9CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24910BA9C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24908837C;

  return sub_249107E9C(v5, v4, v0 + v3);
}

uint64_t sub_24910BB80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24910BBB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24910BBF8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v3 = Strong;
    v4 = sub_24910C34C();
    sub_24910D02C();

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      sub_24910D25C();
      MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
      type metadata accessor for DTXPCServer(0);
      sub_24910D32C();
      MEMORY[0x24C1F1710](46, 0xE100000000000000);
      result = sub_24910D33C();
      __break(1u);
      return result;
    }

    v5 = swift_allocObject();
    *(v5 + 16) = sub_24910BEA8;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_2490CDCD4;
    *(v6 + 24) = v5;

    v8 = v1;
    sub_2490CDCFC(&v8);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24910BE60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24910BEA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
  swift_beginAccess();
  sub_24910B2B8(v1);
  swift_endAccess();

  if (*(a1 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) == 1 && !*(a1 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener) && (*(a1 + v3) & 0xC000000000000001) != 0)
  {

    sub_24910D19C();
  }

  return result;
}