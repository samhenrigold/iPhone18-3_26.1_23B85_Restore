uint64_t objectdestroy_2Tm()
{
  v1 = sub_25B0E2B80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B0CB93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_25B0E2B80() - 8);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_25B0CA1C0(a1, v6, v7, v8, v10, a2, v9);
}

unint64_t sub_25B0CB9C8()
{
  result = qword_27FA32C20;
  if (!qword_27FA32C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32C18, &qword_25B0EA8F0);
    sub_25B0CBA84();
    sub_25B0CBBBC(&qword_27FA32C58, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32C20);
  }

  return result;
}

unint64_t sub_25B0CBA84()
{
  result = qword_27FA32C28;
  if (!qword_27FA32C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32C30, &qword_25B0EA8F8);
    sub_25B058150(&qword_27FA32C38, &qword_27FA32C40, &qword_25B0EA900, MEMORY[0x277CE1198]);
    sub_25B058150(&qword_27FA32C48, &qword_27FA32C50, &qword_25B0EA908, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32C28);
  }

  return result;
}

unint64_t sub_25B0CBB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32C60;
  if (!qword_27FA32C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32C60);
  }

  return result;
}

uint64_t sub_25B0CBBBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25B0CBC04(uint64_t a1)
{
  v2 = sub_25B0E2750();
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v28 = &v24 - v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v26 = v30 + 16;
    v27 = v30 + 8;
    v31 = sub_25B0E3900();
    v8 = (a1 + 88);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v8 - 4);
      v34 = *(v8 - 2);

      v33 = v9;

      v35 = sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (*(v10 + 16))
      {
        v12 = v30;
        v13 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v14 = *(v30 + 16);
        v15 = v28;
        v32 = v11;
        v16 = v29;
        v14(v28, v10 + v13, v29);
        v17 = sub_25B0E2730();
        v18 = *(v12 + 8);
        v18(v15, v16);
        v19 = [v17 device];

        if (v19)
        {
          break;
        }
      }

      v8 += 9;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    if (*(v10 + 16))
    {
      v20 = v25;
      v21 = v29;
      v14(v25, v10 + v13, v29);
      v22 = sub_25B0E2730();
      v18(v20, v21);
      v23 = [v22 device];

      if (v23)
      {

        return;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

LABEL_11:
  if (![objc_opt_self() currentDevice])
  {
    goto LABEL_14;
  }
}

uint64_t sub_25B0CBFA4()
{
  v1 = *(v0 + 8);
  sub_25B0E29F0();
  if (v4)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_25B0CDAAC(&qword_27FA31DD8, type metadata accessor for GalleryManager, &unk_25B0E8F8C);
  sub_25B0E28D0();

  v2 = *(v1 + 16);
  if (v2 && *(v2 + 16))
  {
    return 0;
  }

  else
  {
    return 0x1000000000000012;
  }
}

uint64_t CurrentGalleryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CB0, &qword_25B0EA980);
  MEMORY[0x28223BE20](v40);
  v3 = (&v37 - v2);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CB8, &qword_25B0EA988);
  MEMORY[0x28223BE20](v42);
  v5 = &v37 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CC0, &qword_25B0EA990);
  MEMORY[0x28223BE20](v43);
  v44 = &v37 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CC8, &qword_25B0EA998);
  MEMORY[0x28223BE20](v41);
  v8 = &v37 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  *v3 = sub_25B0E3590();
  v3[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CD0, &qword_25B0EA9A0);
  sub_25B0CC560(v9, v10, v11, v12, (v3 + *(v14 + 44)));
  v15 = sub_25B0E33B0();
  *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CD8, &qword_25B0EA9A8) + 36)) = v15;
  v39 = sub_25B0E3590();
  v38 = v16;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = v3 + *(v40 + 36);
  *v17 = sub_25B0E2EF0();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CE0, &qword_25B0EA9B0);
  sub_25B0CCA08(v9, v10, v11, v12, &v17[*(v18 + 44)]);

  v19 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CE8, &qword_25B0EA9B8) + 36)];
  v20 = v38;
  *v19 = v39;
  v19[1] = v20;
  sub_25B0E3590();
  sub_25B0E2D30();
  sub_25B0745E4(v3, v5, &qword_27FA32CB0, &qword_25B0EA980);
  v21 = &v5[*(v42 + 36)];
  v22 = v51;
  *(v21 + 4) = v50;
  *(v21 + 5) = v22;
  *(v21 + 6) = v52;
  v23 = v47;
  *v21 = v46;
  *(v21 + 1) = v23;
  v24 = v49;
  *(v21 + 2) = v48;
  *(v21 + 3) = v24;
  v25 = sub_25B0E33A0();
  v26 = sub_25B0E3110();
  v27 = v44;
  sub_25B0745E4(v5, v44, &qword_27FA32CB8, &qword_25B0EA988);
  v28 = v27 + *(v43 + 36);
  *v28 = v25;
  *(v28 + 8) = v26;
  v29 = *(v41 + 36);
  v30 = *MEMORY[0x277CDF3C0];
  v31 = sub_25B0E2A50();
  v32 = *(v31 - 8);
  (*(v32 + 104))(&v8[v29], v30, v31);
  (*(v32 + 56))(&v8[v29], 0, 1, v31);
  sub_25B0745E4(v27, v8, &qword_27FA32CC0, &qword_25B0EA990);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32CF0, &qword_25B0EA9C8);
  v34 = v45;
  v35 = (v45 + *(v33 + 36));
  sub_25B0E2BA0();
  sub_25B0E3920();
  *v35 = &unk_25B0EA9C0;
  v35[1] = 0;
  return sub_25B0745E4(v8, v34, &qword_27FA32CC8, &qword_25B0EA998);
}

uint64_t sub_25B0CC560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v44 = a4;
  v46 = a5;
  v8 = sub_25B0E2C10();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = type metadata accessor for GalleryView(0);
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v39 = &v36 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D70, &qword_25B0EAAE0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  sub_25B0E3900();
  v45 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = sub_25B0E33A0();
  v48 = a1;
  v49 = a2;
  v25 = v44;
  v50 = a3;
  v51 = v44;
  sub_25B0CBFA4();
  if (v26)
  {

    (*(v42 + 56))(v23, 1, 1, v43);
  }

  else
  {
    swift_getKeyPath();
    v48 = a2;
    sub_25B0CDAAC(&qword_27FA31DD8, type metadata accessor for GalleryManager, &unk_25B0E8F8C);
    sub_25B0E28D0();

    v27 = MEMORY[0x277D84F90];
    if (*(a2 + 16))
    {
      v27 = *(a2 + 16);
    }

    v37 = v27;
    type metadata accessor for FontManager(0);
    swift_allocObject();

    v47 = sub_25B0A55B4();
    sub_25B0E3440();
    v28 = v49;
    *v16 = v48;
    v16[1] = v28;
    v16[2] = v37;
    v16[3] = a3;
    v16[4] = v25;
    v29 = v43;
    sub_25B0E2C00();
    v31 = v40;
    v30 = v41;
    (*(v40 + 16))(v38, v12, v41);
    sub_25B0E3440();
    (*(v31 + 8))(v12, v30);
    v32 = v39;
    sub_25B0CDAF4(v16, v39);
    sub_25B0CDAF4(v32, v23);
    (*(v42 + 56))(v23, 0, 1, v29);
  }

  sub_25B0B00E0(v23, v21, &qword_27FA32D70, &qword_25B0EAAE0);
  v33 = v46;
  *v46 = v24;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D78, &qword_25B0EAAE8);
  sub_25B0B00E0(v21, v33 + *(v34 + 48), &qword_27FA32D70, &qword_25B0EAAE0);

  sub_25B058448(v23, &qword_27FA32D70, &qword_25B0EAAE0);
  sub_25B058448(v21, &qword_27FA32D70, &qword_25B0EAAE0);
}

uint64_t sub_25B0CCA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D50, &unk_25B0EAA90);
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = &v42 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324F0, &qword_25B0E9DB0);
  v11 = *(v49 - 8);
  v12 = MEMORY[0x28223BE20](v49);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D58, &qword_25B0EAAA0);
  MEMORY[0x28223BE20](v17 - 8);
  v53 = &v42 - v18;
  sub_25B0E3900();
  v52 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v66 = a1;
  v67 = a2;
  v68 = a3;
  v69 = v51;
  v19 = sub_25B0CBFA4();
  if (v20)
  {
    v21 = v20;
    v48 = v9;
    v51 = a5;
    v22 = v19;
    v23 = sub_25B0E2AD0();
    if (MEMORY[0x25F860BB0](v23))
    {
      v58 = 0x6C616E7265746E49;
      v59 = 0xEA0000000000203ALL;
      MEMORY[0x25F8602F0](v22, v21);

      v24 = v59;
      v47 = v58;
      v25 = sub_25B0E3110();
      LOBYTE(v58) = 0;
      v45 = 1;
      LOBYTE(v55) = 1;
      v46 = 0;
      v26 = v25;
      v27 = MEMORY[0x277D84F90];
    }

    else
    {

      v47 = 0;
      v24 = 0;
      v27 = 0;
      v45 = 0;
      v26 = 0;
      v46 = 0;
    }

    v43 = v26;
    v29 = *(v11 + 16);
    v30 = v14;
    v44 = v16;
    v31 = v16;
    v32 = v49;
    v29(v14, v31, v49);
    v33 = v50;
    v29(v50, v30, v32);
    v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D60, &qword_25B0EAAA8) + 48));
    v35 = v47;
    *&v55 = v47;
    *(&v55 + 1) = v24;
    v36 = v46;
    *&v56 = v46;
    *(&v56 + 1) = v27;
    *v57 = v26;
    memset(&v57[8], 0, 32);
    v37 = v45;
    v57[40] = v45;
    v38 = v56;
    *v34 = v55;
    v34[1] = v38;
    v39 = *&v57[16];
    v34[2] = *v57;
    v34[3] = v39;
    *(v34 + 57) = *&v57[25];
    sub_25B0B00E0(&v55, &v58, &qword_27FA32D68, &qword_25B0EAAB0);
    v40 = *(v11 + 8);
    v40(v44, v32);
    v58 = v35;
    v59 = v24;
    v60 = v36;
    v61 = v27;
    v62 = v43;
    v63 = 0u;
    v64 = 0u;
    v65 = v37;
    sub_25B058448(&v58, &qword_27FA32D68, &qword_25B0EAAB0);
    v40(v30, v32);
    v28 = v53;
    sub_25B0745E4(v33, v53, &qword_27FA32D50, &unk_25B0EAA90);
    (*(v54 + 56))(v28, 0, 1, v48);
    a5 = v51;
  }

  else
  {
    v28 = v53;
    (*(v54 + 56))(v53, 1, 1, v9);
  }

  sub_25B0745E4(v28, a5, &qword_27FA32D58, &qword_25B0EAAA0);
}

uint64_t sub_25B0CCF5C(uint64_t a1, uint64_t a2)
{
  sub_25B0E3900();
  v2[2] = sub_25B0E38F0();
  v4 = sub_25B0E3850();
  v2[3] = v4;
  v2[4] = v3;

  return MEMORY[0x2822009F8](sub_25B0CCFF0, v4, v3);
}

id sub_25B0CCFF0()
{
  result = [objc_opt_self() currentDevice];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result isPaired];

  if (!v3)
  {

    if (qword_27FA30D28 != -1)
    {
      swift_once();
    }

    v9 = sub_25B0E2970();
    __swift_project_value_buffer(v9, qword_27FA399E0);
    v10 = sub_25B0E2950();
    v11 = sub_25B0E3A50();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_20;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Skipping gallery refresh message - device is unpaired.";
    goto LABEL_19;
  }

  if (CLKIsBridge())
  {
    if (qword_27FA30D28 != -1)
    {
      swift_once();
    }

    v4 = sub_25B0E2970();
    v0[5] = __swift_project_value_buffer(v4, qword_27FA399E0);
    v5 = sub_25B0E2950();
    v6 = sub_25B0E3A50();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_25B03D000, v5, v6, "Sending update message to device…", v7, 2u);
      MEMORY[0x25F8613E0](v7, -1, -1);
    }

    sub_25B0E2790();
    v0[6] = sub_25B0E2770();
    v16 = (*MEMORY[0x277D2BE20] + MEMORY[0x277D2BE20]);
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_25B0CD33C;

    return v16();
  }

  if (qword_27FA30D28 != -1)
  {
    swift_once();
  }

  v14 = sub_25B0E2970();
  __swift_project_value_buffer(v14, qword_27FA399E0);
  v10 = sub_25B0E2950();
  v11 = sub_25B0E3A50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Skipping gallery refresh message - not bridge.";
LABEL_19:
    _os_log_impl(&dword_25B03D000, v10, v11, v13, v12, 2u);
    MEMORY[0x25F8613E0](v12, -1, -1);
  }

LABEL_20:

  v15 = v0[1];

  return v15();
}

uint64_t sub_25B0CD33C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_25B0CD4B8;
  }

  else
  {

    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_25B0CD458;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25B0CD458()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B0CD4B8()
{
  v1 = *(v0 + 64);

  v2 = v1;
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A30();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_25B03D000, v3, v4, "Sending update message failed %@", v7, 0xCu);
    sub_25B058448(v8, &unk_27FA31850, &qword_25B0E74B0);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_25B0CD658()
{
  result = qword_27FA32CF8;
  if (!qword_27FA32CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CF0, &qword_25B0EA9C8);
    sub_25B0CD714();
    sub_25B0CDAAC(&qword_27FA30DB8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32CF8);
  }

  return result;
}

unint64_t sub_25B0CD714()
{
  result = qword_27FA32D00;
  if (!qword_27FA32D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CC8, &qword_25B0EA998);
    sub_25B0CD7CC();
    sub_25B058150(&qword_27FA32D40, &qword_27FA32D48, &unk_25B0EAA80, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32D00);
  }

  return result;
}

unint64_t sub_25B0CD7CC()
{
  result = qword_27FA32D08;
  if (!qword_27FA32D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CC0, &qword_25B0EA990);
    sub_25B0CD884();
    sub_25B058150(&qword_27FA32140, &qword_27FA32148, &qword_25B0E96B0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32D08);
  }

  return result;
}

unint64_t sub_25B0CD884()
{
  result = qword_27FA32D10;
  if (!qword_27FA32D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CB8, &qword_25B0EA988);
    sub_25B0CD910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32D10);
  }

  return result;
}

unint64_t sub_25B0CD910()
{
  result = qword_27FA32D18;
  if (!qword_27FA32D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CB0, &qword_25B0EA980);
    sub_25B0CD9C8();
    sub_25B058150(&qword_27FA32D38, &qword_27FA32CE8, &qword_25B0EA9B8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32D18);
  }

  return result;
}

unint64_t sub_25B0CD9C8()
{
  result = qword_27FA32D20;
  if (!qword_27FA32D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32CD8, &qword_25B0EA9A8);
    sub_25B058150(&qword_27FA32D28, &qword_27FA32D30, &qword_25B0EAA78, MEMORY[0x277CE11A8]);
    sub_25B058150(&qword_27FA31EB8, &qword_27FA31EC0, &unk_25B0EA2D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32D20);
  }

  return result;
}

uint64_t sub_25B0CDAAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B0CDAF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0CDB58(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25B0CDBB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t type metadata accessor for GalleryView(uint64_t a1)
{
  result = qword_27FA32D88;
  if (!qword_27FA32D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B0CDC88(uint64_t a1)
{
  sub_25B0CDDC4(319, &qword_27FA32A18, type metadata accessor for FontManager);
  if (v1 <= 0x3F)
  {
    sub_25B0CDD74();
    if (v2 <= 0x3F)
    {
      sub_25B0B0F2C();
      if (v3 <= 0x3F)
      {
        sub_25B0CDDC4(319, &qword_27FA32D98, MEMORY[0x277CDD968]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25B0CDD74()
{
  if (!qword_27FA32A40)
  {
    v0 = sub_25B0E3840();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA32A40);
    }
  }
}

void sub_25B0CDDC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25B0E3480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25B0CDE34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DD0, &qword_25B0E8DB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v33 - v2;
  v4 = sub_25B0E2750();
  MEMORY[0x28223BE20](v4);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v40 = *(v7 + 16);
  if (v40)
  {
    v8 = 0;
    v9 = v7 + 32;
    v38 = "NanoFaceGallery.FaceObserver";
    v33 = v5 + 16;
    v37 = (v5 + 56);
    v36 = (v5 + 48);
    v34 = v5;
    v35 = (v5 + 32);
    v10 = MEMORY[0x277D84F90];
    v39 = v4;
    while (1)
    {
      if (v8 >= *(v7 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v42 = v10;
      v11 = v3;
      v12 = v7;
      v44[0] = *v9;
      v13 = *(v9 + 16);
      v14 = *(v9 + 32);
      v15 = *(v9 + 48);
      v46 = *(v9 + 64);
      v44[2] = v14;
      v45 = v15;
      v44[1] = v13;
      sub_25B0E3900();
      sub_25B08CEB4(v44, v43);
      sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v16 = v44[0];
      v17 = sub_25B0E3730();
      v18 = sub_25B0E3730();
      v19 = NTKCompanionClockFaceLocalizedString();

      v20 = sub_25B0E3740();
      v22 = v21;

      if (v16 == __PAIR128__(v22, v20))
      {
      }

      else
      {
        v23 = sub_25B0E3E30();

        if ((v23 & 1) == 0)
        {
          v7 = v12;
          v10 = v42;
          if (*(*(&v45 + 1) + 16))
          {
            v3 = v11;
            v28 = v11;
            v4 = v39;
            (*(v34 + 16))(v28, *(&v45 + 1) + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v39);
            v24 = 0;
          }

          else
          {
            v24 = 1;
            v3 = v11;
            v4 = v39;
          }

          goto LABEL_12;
        }
      }

      v24 = 1;
      v7 = v12;
      v3 = v11;
      v4 = v39;
      v10 = v42;
LABEL_12:
      sub_25B08CF10(v44);
      (*v37)(v3, v24, 1, v4);

      if ((*v36)(v3, 1, v4) == 1)
      {
        sub_25B058448(v3, &qword_27FA31DD0, &qword_25B0E8DB0);
      }

      else
      {
        v25 = *v35;
        (*v35)(v41, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_25B089C98(0, v10[2] + 1, 1, v10);
        }

        v27 = v10[2];
        v26 = v10[3];
        if (v27 >= v26 >> 1)
        {
          v10 = sub_25B089C98((v26 > 1), v27 + 1, 1, v10);
        }

        v10[2] = v27 + 1;
        v25(v10 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27, v41, v4);
      }

      ++v8;
      v9 += 72;
      if (v40 == v8)
      {
        goto LABEL_22;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_22:
  *&v44[0] = v10;

  sub_25B0D2218(v44);

  v29 = *&v44[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318F8, &unk_25B0E94D0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25B0E7720;
  v31 = sub_25B0D4108(MEMORY[0x277D84F90]);
  *(v30 + 32) = 0x63746157206C6C41;
  *(v30 + 40) = 0xEF73656361462068;
  *(v30 + 48) = 0u;
  *(v30 + 64) = 0u;
  *(v30 + 80) = v31;
  *(v30 + 88) = v29;
  *(v30 + 96) = 0;
  return v30;
}

BOOL sub_25B0CE3C0(uint64_t a1, uint64_t a2)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25B0E2730();
  v3 = [v2 name];

  if (v3)
  {
    sub_25B0E3740();

    v4 = sub_25B0E2730();
    v5 = [v4 name];

    if (v5)
    {
      sub_25B0E3740();

      sub_25B04C9BC(v6, v7, v8);
      v9 = sub_25B0E3B20();

      return v9 == -1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_25B0CE558@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = sub_25B0E24C0();
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25B0E22E0();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_25B0E3710();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_25B0E22F0();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v45 = &v39[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E10, &qword_25B0EAC28);
  MEMORY[0x28223BE20](v15);
  v17 = &v39[-v16];
  v53 = a1[10];
  v40 = (*a1 > 0x14uLL) | (0xDB7BDu >> *a1);
  v18 = *(v2 + 32);
  v41 = *(v2 + 24);
  *&v17[v15[12]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A48, &qword_25B0EA620);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FontManager(0);
  swift_allocObject();
  sub_25B0D4480(&v53, v51);

  *&v49 = sub_25B0A55B4();
  sub_25B0E3440();
  v19 = *(&v51[0] + 1);
  *v17 = *&v51[0];
  *(v17 + 1) = v19;
  *&v49 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A28, qword_25B0EA5B8);
  sub_25B0E3440();
  v20 = *(&v51[0] + 1);
  *(v17 + 2) = *&v51[0];
  *(v17 + 3) = v20;
  type metadata accessor for CGRect(0);
  v49 = 0u;
  v50 = 0u;
  sub_25B0E3440();
  v21 = v52;
  v22 = v51[1];
  *(v17 + 2) = v51[0];
  *(v17 + 3) = v22;
  *(v17 + 8) = v21;
  v23 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v24 = sub_25B0E3730();
  [v23 initWithSuiteName_];

  *(v17 + 9) = sub_25B0E29E0();
  v17[v15[13]] = 5;
  *&v17[v15[14]] = v53;
  v17[v15[15]] = 0;
  v17[v15[16]] = v40 & 1;
  v25 = &v17[v15[17]];
  v26 = a1[6];
  *v25 = a1[5];
  v25[1] = v26;
  v27 = &v17[v15[18]];
  *v27 = v41;
  v27[1] = v18;

  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v28 = v43;
  v29 = __swift_project_value_buffer(v43, qword_27FA399C8);
  (*(v42 + 16))(v8, v29, v28);
  sub_25B0E24B0();
  v30 = v45;
  sub_25B0E2300();
  v32 = v46;
  v31 = v47;
  (*(v46 + 16))(v13, v30, v47);
  v33 = sub_25B0E3200();
  v35 = v34;
  v37 = v36;
  sub_25B058150(&qword_27FA32E18, &qword_27FA32E10, &qword_25B0EAC28, &unk_25B0EA5D0);
  sub_25B0E3290();
  sub_25B0B0ABC(v33, v35, v37 & 1);

  (*(v32 + 8))(v30, v31);
  return sub_25B058448(v17, &qword_27FA32E10, &qword_25B0EAC28);
}

uint64_t sub_25B0CEB0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30DC0, &qword_25B0E5070);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v4 = &v44 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DA0, &qword_25B0EABD8);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DA8, &qword_25B0EABE0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DB0, &qword_25B0EABE8);
  MEMORY[0x28223BE20](v12 - 8);
  v13 = type metadata accessor for GalleryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D80, &qword_25B0EAB20);
  sub_25B0E3470();
  v54 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DB8, &qword_25B0EABF0);
  sub_25B0D19FC();
  sub_25B0E2CB0();
  v14 = sub_25B0E33A0();
  v15 = sub_25B0E3110();
  v16 = &v11[*(v9 + 44)];
  *v16 = v14;
  v16[8] = v15;
  sub_25B0E3590();
  sub_25B0E2D30();
  sub_25B0745E4(v11, v7, &qword_27FA32DA8, &qword_25B0EABE0);
  v17 = &v7[*(v5 + 36)];
  v18 = v63;
  *(v17 + 4) = v62;
  *(v17 + 5) = v18;
  *(v17 + 6) = v64;
  v19 = v59;
  *v17 = v58;
  *(v17 + 1) = v19;
  v20 = v61;
  *(v17 + 2) = v60;
  *(v17 + 3) = v20;
  sub_25B0D1E3C();
  v50 = v4;
  sub_25B0E3320();
  v21 = sub_25B043744(v7);
  v49 = &v44;
  v22 = *(v13 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_25B0D1FAC(v2, &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B0E3900();
  v24 = sub_25B0E38F0();
  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  sub_25B0CDAF4(&v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v28 = sub_25B0E3940();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = &v44 - v31;
  sub_25B0E3920();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v47 = sub_25B0E2C50();
    v48 = &v44;
    v46 = *(v47 - 8);
    MEMORY[0x28223BE20](v47);
    v45 = &v44 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_25B0E3BC0();

    v56 = 0xD00000000000002ELL;
    v57 = 0x800000025B0EC730;
    v55 = 140;
    v34 = sub_25B0E3E20();
    MEMORY[0x25F8602F0](v34);

    MEMORY[0x28223BE20](v35);
    (*(v29 + 16))(&v44 - v31, v32, v28);
    v36 = v45;
    sub_25B0E2C40();
    (*(v29 + 8))(v32, v28);
    v37 = v53;
    (*(v51 + 32))(v53, v50, v52);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30DC8, &qword_25B0E5078);
    return (*(v46 + 32))(v37 + *(v38 + 36), v36, v47);
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30DD0, &qword_25B0E5080);
    v41 = v53;
    v42 = (v53 + *(v40 + 36));
    v43 = sub_25B0E2BA0();
    (*(v29 + 32))(&v42[*(v43 + 20)], &v44 - v31, v28);
    *v42 = &unk_25B0EAC48;
    *(v42 + 1) = v26;
    return (*(v51 + 32))(v41, v50, v52);
  }
}

uint64_t sub_25B0CF26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a1;
  v149 = a2;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E20, &qword_25B0EAC30);
  v132 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v131 = (&v124 - v2);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E50, &qword_25B0EAC50);
  v138 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v141 = &v124 - v3;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E58, &qword_25B0EAC58);
  MEMORY[0x28223BE20](v147);
  v151 = &v124 - v4;
  v5 = type metadata accessor for GalleryView(0);
  v129 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = v6;
  v137 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B0E24C0();
  MEMORY[0x28223BE20](v7 - 8);
  v126 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B0E22E0();
  v124 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B0E3710();
  MEMORY[0x28223BE20](v12 - 8);
  v125 = sub_25B0E22F0();
  v13 = *(v125 - 8);
  v14 = MEMORY[0x28223BE20](v125);
  v16 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v124 - v17;
  v150 = type metadata accessor for CuratedGalleryView(0);
  MEMORY[0x28223BE20](v150);
  v20 = (&v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DE0, &qword_25B0EAC10);
  v127 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v139 = (&v124 - v21);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DD8, &qword_25B0EAC08);
  v130 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v128 = &v124 - v22;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DC8, &qword_25B0EABF8);
  v134 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v133 = &v124 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E60, &qword_25B0EAC60);
  v136 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v135 = &v124 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DB8, &qword_25B0EABF0);
  MEMORY[0x28223BE20](v25 - 8);
  v146 = &v124 - v26;
  sub_25B0E3900();
  v145 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = [objc_opt_self() currentDevice];
  v28 = NTKShowGalleryLiteUI();

  v29 = *(v154 + 16);
  if (v28)
  {
    v30 = v154;

    v32 = sub_25B0DBB48(v31);
    v34 = *(v30 + 24);
    v33 = *(v30 + 32);
    *v20 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
    swift_storeEnumTagMultiPayload();
    v35 = v150;
    *(v20 + *(v150 + 20)) = v32;
    v36 = (v20 + *(v35 + 24));
    *v36 = v34;
    v36[1] = v33;

    sub_25B0E3720();
    if (qword_27FA30D20 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v9, qword_27FA399C8);
    (*(v124 + 16))(v11, v37, v9);
    sub_25B0E24B0();
    v38 = v18;
    sub_25B0E2300();
    v39 = v18;
    v40 = v125;
    (*(v13 + 16))(v16, v39, v125);
    v41 = sub_25B0E3200();
    v43 = v42;
    v45 = v44;
    v138 = sub_25B0D20EC(&qword_27FA32DF0, type metadata accessor for CuratedGalleryView, &unk_25B0E93A4);
    v46 = v150;
    sub_25B0E3290();
    sub_25B0B0ABC(v41, v43, v45 & 1);

    (*(v13 + 8))(v38, v40);
    sub_25B0D4200(v20);
    v47 = v137;
    sub_25B0D1FAC(v154, v137);
    v141 = *(v129 + 80);
    v48 = (v141 + 16) & ~v141;
    v132 = v48;
    v49 = swift_allocObject();
    sub_25B0CDAF4(v47, v49 + v48);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DE8, &qword_25B0EAC18);
    v155 = v46;
    v156 = v138;
    v150 = MEMORY[0x277CDE888];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v54 = sub_25B0B3F0C(OpaqueTypeConformance2, v52, v53);
    v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DF8, &qword_25B0EAC20);
    v138 = &unk_25B0EA5D0;
    v56 = sub_25B058150(&qword_27FA32E00, &qword_27FA32DF8, &qword_25B0EAC20, &unk_25B0EA5D0);
    v155 = v55;
    v156 = v56;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = v128;
    v59 = v142;
    v60 = v139;
    sub_25B0E3300();

    (*(v127 + 8))(v60, v59);
    v61 = sub_25B0E2750();
    v155 = v59;
    v156 = &type metadata for AllFacesLink;
    v157 = v50;
    v158 = OpaqueTypeConformance2;
    v159 = v54;
    v160 = v57;
    v129 = MEMORY[0x277CDEB90];
    v62 = swift_getOpaqueTypeConformance2();
    v63 = sub_25B0D20EC(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
    v66 = sub_25B0D1D94(v63, v64, v65);
    v142 = v66;
    v67 = v133;
    v68 = v61;
    v69 = v143;
    v70 = v68;
    v139 = v68;
    v131 = v63;
    sub_25B0E3300();
    (*(v130 + 8))(v58, v69);
    sub_25B0D1FAC(v154, v47);
    v71 = v132;
    v72 = swift_allocObject();
    sub_25B0CDAF4(v47, v72 + v71);
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DD0, &qword_25B0EAC00);
    v155 = v69;
    v156 = v70;
    v157 = &type metadata for SharableFaceDetailView;
    v158 = v62;
    v159 = v63;
    v160 = v66;
    v73 = swift_getOpaqueTypeConformance2();
    v76 = sub_25B0AFC9C(v73, v74, v75);
    v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32E10, &qword_25B0EAC28);
    v78 = sub_25B058150(&qword_27FA32E18, &qword_27FA32E10, &qword_25B0EAC28, v138);
    v155 = v77;
    v156 = v78;
    v123 = swift_getOpaqueTypeConformance2();
    v79 = v135;
    v80 = v144;
    v81 = v154;
    v82 = v73;
    sub_25B0E3300();

    (*(v134 + 8))(v67, v80);
    v83 = v136;
    v84 = v148;
    (*(v136 + 16))(v151, v79, v148);
    swift_storeEnumTagMultiPayload();
    v155 = v80;
    v156 = &type metadata for CuratedGallery.CuratedRow;
    v157 = v81;
    v158 = v82;
    v159 = v76;
    v160 = v123;
    v85 = swift_getOpaqueTypeConformance2();
    v88 = sub_25B0D1DE8(v85, v86, v87);
    v155 = &type metadata for GalleryList;
    v156 = v88;
    v89 = swift_getOpaqueTypeConformance2();
    v155 = v152;
    v156 = v139;
    v157 = &type metadata for SharableFaceDetailView;
    v158 = v89;
    v159 = v131;
    v160 = v142;
    swift_getOpaqueTypeConformance2();
    v90 = v146;
    sub_25B0E2F30();
    (*(v83 + 8))(v79, v84);
  }

  else
  {
    type metadata accessor for FontManager(0);
    swift_allocObject();

    v161 = sub_25B0A55B4();
    sub_25B0E3440();
    v157 = v29;
    v158 = 0x4034000000000000;
    v91 = sub_25B0E2EB0();
    v94 = sub_25B0D1DE8(v91, v92, v93);
    v95 = v131;
    sub_25B0E3280();

    v96 = sub_25B0E2750();
    v155 = &type metadata for GalleryList;
    v156 = v94;
    v154 = swift_getOpaqueTypeConformance2();
    v97 = sub_25B0D20EC(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
    v140 = sub_25B0D1D94(v97, v98, v99);
    v100 = v141;
    v101 = v152;
    v102 = v97;
    v139 = v97;
    sub_25B0E3300();
    (*(v132 + 8))(v95, v101);
    (v138[1].Kind)(v151, v100, v153);
    swift_storeEnumTagMultiPayload();
    v147 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DD0, &qword_25B0EAC00);
    v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DE8, &qword_25B0EAC18);
    v104 = sub_25B0D20EC(&qword_27FA32DF0, type metadata accessor for CuratedGalleryView, &unk_25B0E93A4);
    v155 = v150;
    v156 = v104;
    v105 = swift_getOpaqueTypeConformance2();
    v108 = sub_25B0B3F0C(v105, v106, v107);
    v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DF8, &qword_25B0EAC20);
    v110 = sub_25B058150(&qword_27FA32E00, &qword_27FA32DF8, &qword_25B0EAC20, &unk_25B0EA5D0);
    v155 = v109;
    v156 = v110;
    v111 = swift_getOpaqueTypeConformance2();
    v155 = v142;
    v156 = &type metadata for AllFacesLink;
    v157 = v103;
    v158 = v105;
    v159 = v108;
    v160 = v111;
    v112 = swift_getOpaqueTypeConformance2();
    v155 = v143;
    v156 = v96;
    v157 = &type metadata for SharableFaceDetailView;
    v158 = v112;
    v159 = v102;
    v113 = v140;
    v160 = v140;
    v114 = swift_getOpaqueTypeConformance2();
    v117 = sub_25B0AFC9C(v114, v115, v116);
    v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32E10, &qword_25B0EAC28);
    v119 = sub_25B058150(&qword_27FA32E18, &qword_27FA32E10, &qword_25B0EAC28, &unk_25B0EA5D0);
    v155 = v118;
    v156 = v119;
    v120 = swift_getOpaqueTypeConformance2();
    v155 = v144;
    v156 = &type metadata for CuratedGallery.CuratedRow;
    v157 = v147;
    v158 = v114;
    v159 = v117;
    v160 = v120;
    swift_getOpaqueTypeConformance2();
    v155 = v152;
    v156 = v96;
    v157 = &type metadata for SharableFaceDetailView;
    v158 = v154;
    v159 = v139;
    v160 = v113;
    swift_getOpaqueTypeConformance2();
    v90 = v146;
    v121 = v153;
    sub_25B0E2F30();
    (v138->Description)(v141, v121);
  }

  sub_25B0745E4(v90, v149, &qword_27FA32DB8, &qword_25B0EABF0);
}

uint64_t sub_25B0D05C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_25B0E24C0();
  MEMORY[0x28223BE20](v3 - 8);
  v40 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_25B0E22E0();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E3710();
  MEMORY[0x28223BE20](v6 - 8);
  v41 = sub_25B0E22F0();
  v39 = *(v41 - 8);
  v7 = MEMORY[0x28223BE20](v41);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DF8, &qword_25B0EAC20);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  sub_25B0E3900();
  v35[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_25B0CDE34();
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v35[0] = v16;
  *&v14[v12[12]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A48, &qword_25B0EA620);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FontManager(0);
  swift_allocObject();

  *&v43 = sub_25B0A55B4();
  sub_25B0E3440();
  v18 = *(&v45 + 1);
  *v14 = v45;
  *(v14 + 1) = v18;
  *&v43 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A28, qword_25B0EA5B8);
  sub_25B0E3440();
  v19 = *(&v45 + 1);
  *(v14 + 2) = v45;
  *(v14 + 3) = v19;
  type metadata accessor for CGRect(0);
  v43 = 0u;
  v44 = 0u;
  sub_25B0E3440();
  v20 = v47;
  v21 = v46;
  *(v14 + 2) = v45;
  *(v14 + 3) = v21;
  *(v14 + 8) = v20;
  v22 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v23 = sub_25B0E3730();
  [v22 initWithSuiteName_];

  *(v14 + 9) = sub_25B0E29E0();
  v14[v12[13]] = 4;
  *&v14[v12[14]] = v15;
  v14[v12[15]] = 1;
  v14[v12[16]] = 1;
  v24 = &v14[v12[18]];
  *v24 = v35[0];
  *(v24 + 1) = v17;
  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v25 = v38;
  v26 = __swift_project_value_buffer(v38, qword_27FA399C8);
  (*(v36 + 16))(v37, v26, v25);
  sub_25B0E24B0();
  sub_25B0E2300();
  v27 = v39;
  v28 = v41;
  (*(v39 + 16))(v9, v11, v41);
  v29 = sub_25B0E3200();
  v31 = v30;
  v33 = v32;
  sub_25B058150(&qword_27FA32E00, &qword_27FA32DF8, &qword_25B0EAC20, &unk_25B0EA5D0);
  sub_25B0E3290();
  sub_25B0B0ABC(v29, v31, v33 & 1);

  (*(v27 + 8))(v11, v28);
  sub_25B058448(v14, &qword_27FA32DF8, &qword_25B0EAC20);
}

uint64_t sub_25B0D0BB4@<X0>(_OWORD *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v5 = a1[5];
  v8[4] = a1[4];
  v8[5] = v5;
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0CE558(v8, a3);
}

void sub_25B0D0C90(uint64_t a2@<X8>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_25B0E2730();
  v4 = [v3 deepCopy];

  if (v4)
  {
    sub_25B0E3440();
    sub_25B0E3440();

    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v5;
    *(a2 + 32) = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0D0DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8);
  v3[4] = swift_task_alloc();
  v4 = sub_25B0E3A90();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_25B0E3900();
  v3[9] = sub_25B0E38F0();
  v6 = sub_25B0E3850();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_25B0D0EE0, v6, v5);
}

uint64_t sub_25B0D0EE0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277D2BE98];
  sub_25B0E3AA0();

  sub_25B0E3A80();
  v0[12] = sub_25B0E38F0();
  v3 = sub_25B0D20EC(&qword_27FA31D58, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25B0D1028;
  v5 = v0[4];
  v6 = v0[5];

  return MEMORY[0x282200308](v5, v6, v3);
}

uint64_t sub_25B0D1028()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_25B0E3850();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_25B0D1440;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_25B0E3850();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_25B0D11C0;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_25B0D11C0()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_25B0D1224, v1, v2);
}

uint64_t sub_25B0D1224()
{
  v1 = v0[4];
  v2 = sub_25B0E22B0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[3];
    *(swift_task_alloc() + 16) = v5;
    sub_25B0E35B0();
    sub_25B0E2BB0();

    sub_25B058448(v1, &unk_27FA32F30, &unk_25B0E8AD8);
    v0[12] = sub_25B0E38F0();
    v6 = sub_25B0D20EC(&qword_27FA31D58, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_25B0D1028;
    v8 = v0[4];
    v9 = v0[5];

    return MEMORY[0x282200308](v8, v9, v6);
  }
}

uint64_t sub_25B0D1440()
{
  *(v0 + 16) = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_25B0D14CC()
{
  v0 = sub_25B0E2C10();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2C00();
  type metadata accessor for GalleryView(0);
  (*(v1 + 16))(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D80, &qword_25B0EAB20);
  sub_25B0E3460();
  (*(v1 + 8))(v6, v0);
}

id sub_25B0D16A4@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_25B0E24C0();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_25B0E22E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B0E3710();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_25B0E22F0();
  MEMORY[0x28223BE20](v10 - 8);

  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27FA399C8);
  (*(v6 + 16))(v8, v11, v5);
  sub_25B0E24B0();
  sub_25B0E2300();
  v12 = sub_25B0E3200();
  v14 = v13;
  v16 = v15;
  sub_25B0E3170();
  v17 = sub_25B0E31F0();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_25B0B0ABC(v12, v14, v16 & 1);

  sub_25B0E35A0();
  sub_25B0E2D30();
  v29 = v21 & 1;
  result = BPSDetailTextColor();
  if (result)
  {
    result = sub_25B0E3370();
    *a3 = v17;
    *(a3 + 8) = v19;
    *(a3 + 16) = v21 & 1;
    *(a3 + 24) = v23;
    v25 = v28[5];
    *(a3 + 96) = v28[4];
    *(a3 + 112) = v25;
    *(a3 + 128) = v28[6];
    v26 = v28[1];
    *(a3 + 32) = v28[0];
    *(a3 + 48) = v26;
    v27 = v28[3];
    *(a3 + 64) = v28[2];
    *(a3 + 80) = v27;
    *(a3 + 144) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25B0D19FC()
{
  result = qword_27FA32DC0;
  if (!qword_27FA32DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DB8, &qword_25B0EABF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DC8, &qword_25B0EABF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DD0, &qword_25B0EAC00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DD8, &qword_25B0EAC08);
    sub_25B0E2750();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DE0, &qword_25B0EAC10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DE8, &qword_25B0EAC18);
    type metadata accessor for CuratedGalleryView(255);
    sub_25B0D20EC(&qword_27FA32DF0, type metadata accessor for CuratedGalleryView, &unk_25B0E93A4);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_25B0B3F0C(OpaqueTypeConformance2, v2, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DF8, &qword_25B0EAC20);
    sub_25B058150(&qword_27FA32E00, &qword_27FA32DF8, &qword_25B0EAC20, &unk_25B0EA5D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v4 = sub_25B0D20EC(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
    sub_25B0D1D94(v4, v5, v6);
    v7 = swift_getOpaqueTypeConformance2();
    sub_25B0AFC9C(v7, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32E10, &qword_25B0EAC28);
    sub_25B058150(&qword_27FA32E18, &qword_27FA32E10, &qword_25B0EAC28, &unk_25B0EA5D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32E20, &qword_25B0EAC30);
    sub_25B0D1DE8(v10, v11, v12);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32DC0);
  }

  return result;
}

unint64_t sub_25B0D1D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32E08;
  if (!qword_27FA32E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E08);
  }

  return result;
}

unint64_t sub_25B0D1DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32E28;
  if (!qword_27FA32E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E28);
  }

  return result;
}

unint64_t sub_25B0D1E3C()
{
  result = qword_27FA32E30;
  if (!qword_27FA32E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DA0, &qword_25B0EABD8);
    sub_25B0D1EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E30);
  }

  return result;
}

unint64_t sub_25B0D1EC8()
{
  result = qword_27FA32E38;
  if (!qword_27FA32E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DA8, &qword_25B0EABE0);
    sub_25B058150(&qword_27FA32E40, &qword_27FA32E48, &qword_25B0EAC38, MEMORY[0x277CDDA18]);
    sub_25B058150(&qword_27FA32140, &qword_27FA32148, &qword_25B0E96B0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E38);
  }

  return result;
}

uint64_t sub_25B0D1FAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0D2010()
{
  v2 = *(type metadata accessor for GalleryView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25B0498DC;

  return sub_25B0D0DB0(v4, v5, v0 + v3);
}

uint64_t sub_25B0D20EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B0D2150(uint64_t a1)
{
  v2 = sub_25B0E2C80();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25B0E2DA0();
}

uint64_t sub_25B0D2218(uint64_t *a1)
{
  v2 = *(sub_25B0E2750() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25B0D40B8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25B0D22C0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25B0D22C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25B0E3E10();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25B0E2750();
        v6 = sub_25B0E3820();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25B0E2750() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25B0D27FC(v8, v9, a1, v4);
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
    return sub_25B0D23EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B0D23EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v50 - v16;
  v52 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = sub_25B0E3900();
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v63 = v21;
    v64 = v19;
    v22 = *(v20 + 56);
    v61 = v17;
    v62 = (v20 - 8);
    v65 = v20;
    v23 = v18 + v22 * (a3 - 1);
    v57 = -v22;
    v58 = (v20 + 16);
    v24 = a1 - a3;
    v59 = v18;
    v51 = v22;
    v25 = v18 + v22 * a3;
    while (2)
    {
      v55 = v23;
      v56 = a3;
      v53 = v25;
      v54 = v24;
      v27 = v24;
      v28 = v23;
      while (1)
      {
        v29 = v63;
        v63(v17, v25, v8);
        v29(v14, v28, v8);
        v71 = sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v30 = sub_25B0E2730();
        v31 = [v30 name];

        if (!v31)
        {
          break;
        }

        v66 = v27;
        v32 = sub_25B0E3740();
        v34 = v33;

        v35 = v14;
        v36 = sub_25B0E2730();
        v37 = [v36 name];

        if (!v37)
        {

          v14 = v35;
          v17 = v61;
          goto LABEL_5;
        }

        v38 = sub_25B0E3740();
        v39 = v8;
        v41 = v40;

        v69 = v32;
        v70 = v34;
        v67 = v38;
        v68 = v41;
        sub_25B04C9BC(v42, v43, v44);
        v45 = sub_25B0E3B20();

        v8 = v39;

        v46 = *v62;
        (*v62)(v35, v8);
        v17 = v61;
        result = (v46)(v61, v8);
        v14 = v35;
        v47 = v66;
        if (v45 != -1)
        {
          goto LABEL_6;
        }

        if (!v59)
        {
          __break(1u);
          return result;
        }

        v48 = *v58;
        v49 = v60;
        (*v58)(v60, v25, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v48)(v28, v49, v8);
        v28 += v57;
        v25 += v57;
        v27 = v47 + 1;
        if (v47 == -1)
        {
          goto LABEL_6;
        }
      }

LABEL_5:
      v26 = *v62;
      (*v62)(v14, v8);
      result = (v26)(v17, v8);
LABEL_6:
      a3 = v56 + 1;
      v23 = v55 + v51;
      v24 = v54 - 1;
      v25 = v53 + v51;
      if (v56 + 1 == v52)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_25B0D27FC(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v154 = a4;
  v153 = a1;
  v7 = sub_25B0E2750();
  v8 = MEMORY[0x28223BE20](v7);
  v156 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v169 = &v149 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v149 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v149 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v165 = &v149 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v166 = &v149 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v151 = &v149 - v23;
  result = MEMORY[0x28223BE20](v22);
  v150 = &v149 - v26;
  v163 = a3;
  v27 = *(a3 + 8);
  v162 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_112:
    a3 = *v153;
    if (!*v153)
    {
      goto LABEL_152;
    }

    v42 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_146;
    }

    result = v42;
LABEL_115:
    v184 = result;
    v42 = *(result + 16);
    v143 = v162;
    if (v42 >= 2)
    {
      while (*v163)
      {
        v144 = *(result + 16 * v42);
        v145 = result;
        v146 = *(result + 16 * (v42 - 1) + 40);
        sub_25B0D3630(*v163 + *(v143 + 72) * v144, (*v163 + *(v143 + 72) * *(result + 16 * (v42 - 1) + 32)), *v163 + *(v143 + 72) * v146, a3);
        if (v5)
        {
        }

        if (v146 < v144)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_25B0D3F4C(v145);
        }

        if ((v42 - 2) >= *(v145 + 2))
        {
          goto LABEL_140;
        }

        v147 = &v145[16 * v42];
        *v147 = v144;
        *(v147 + 1) = v146;
        v184 = v145;
        sub_25B0D3EC0(v42 - 1);
        result = v184;
        v42 = *(v184 + 16);
        v143 = v162;
        if (v42 <= 1)
        {
        }
      }

      goto LABEL_150;
    }
  }

  v28 = 0;
  v175 = v25 + 16;
  v176 = (v25 + 8);
  v29 = MEMORY[0x277D84F90];
  v173 = (v25 + 32);
  v174 = v7;
  v179 = v14;
  v172 = v17;
  while (1)
  {
    v157 = v29;
    if (v28 + 1 >= v27)
    {
      v42 = v28 + 1;
      v57 = v154;
      goto LABEL_33;
    }

    v164 = v27;
    v30 = *v163;
    a3 = *(v25 + 72);
    v31 = *v163 + a3 * (v28 + 1);
    v32 = *(v25 + 16);
    v33 = v150;
    v32(v150, v31, v7);
    v178 = v30;
    v34 = v30 + a3 * v28;
    v35 = v151;
    v171 = v32;
    v32(v151, v34, v7);
    LODWORD(v177) = sub_25B0CE3C0(v33, v35);
    if (v5)
    {
      v148 = *v176;
      (*v176)(v35, v7);
      v148(v33, v7);
    }

    v36 = *v176;
    (*v176)(v35, v7);
    v170 = v36;
    result = (v36)(v33, v7);
    v152 = v28;
    v37 = v28 + 2;
    v38 = v178 + a3 * (v28 + 2);
    v39 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
    v40 = a3;
    v178 = a3;
    while (1)
    {
      v42 = v164;
      if (v164 == v37)
      {
        break;
      }

      v43 = v171;
      v171(v166, v38, v7);
      v43(v165, v31, v7);
      sub_25B0E3900();
      sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v44 = sub_25B0E2730();
      v45 = [v44 v39[137]];

      if (v45)
      {
        v168 = sub_25B0E3740();
        v47 = v46;

        v48 = sub_25B0E2730();
        v49 = [v48 v39[137]];

        if (v49)
        {
          v50 = sub_25B0E3740();
          v52 = v51;

          v182 = v168;
          v183 = v47;
          v180 = v50;
          v181 = v52;
          sub_25B04C9BC(v53, v54, v55);
          v56 = sub_25B0E3B20();

          v39 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;

          a3 = v56 == -1;
        }

        else
        {

          a3 = 0;
        }

        v7 = v174;
      }

      else
      {

        a3 = 0;
      }

      v41 = v170;
      v170(v165, v7);
      result = (v41)(v166, v7);
      ++v37;
      v40 = v178;
      v38 += v178;
      v31 += v178;
      if ((v177 & 1) != a3)
      {
        v42 = v37 - 1;
        break;
      }
    }

    v25 = v162;
    v58 = v157;
    v57 = v154;
    v14 = v179;
    v17 = v172;
    v28 = v152;
    if (v177)
    {
      if (v42 < v152)
      {
        goto LABEL_145;
      }

      if (v152 < v42)
      {
        v59 = v42;
        v60 = v40 * (v42 - 1);
        v61 = v59 * v40;
        v164 = v59;
        v62 = v152 * v40;
        do
        {
          if (v28 != --v59)
          {
            v63 = v5;
            v64 = *v163;
            if (!*v163)
            {
              goto LABEL_149;
            }

            a3 = v64 + v62;
            v177 = *v173;
            (v177)(v156, v64 + v62, v174, v58);
            if (v62 < v60 || a3 >= v64 + v61)
            {
              v7 = v174;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v7 = v174;
              if (v62 != v60)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v177)(v64 + v60, v156, v7);
            v5 = v63;
            v25 = v162;
            v58 = v157;
            v57 = v154;
            v17 = v172;
            v40 = v178;
          }

          ++v28;
          v60 -= v40;
          v61 -= v40;
          v62 += v40;
        }

        while (v28 < v59);
        v14 = v179;
        v28 = v152;
        v42 = v164;
      }
    }

LABEL_33:
    v65 = v163[1];
    if (v42 >= v65)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v42, v28))
    {
      goto LABEL_142;
    }

    if (v42 - v28 >= v57)
    {
      goto LABEL_42;
    }

    if (__OFADD__(v28, v57))
    {
      goto LABEL_143;
    }

    if (v28 + v57 >= v65)
    {
      v66 = v163[1];
    }

    else
    {
      v66 = v28 + v57;
    }

    if (v66 < v28)
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_25B0D3F4C(v42);
      goto LABEL_115;
    }

    if (v42 == v66)
    {
LABEL_42:
      v67 = v42;
      if (v42 < v28)
      {
        goto LABEL_141;
      }

      goto LABEL_43;
    }

    v149 = v5;
    v112 = *v163;
    v113 = v25;
    v114 = sub_25B0E3900();
    v115 = *(v113 + 72);
    v170 = *(v113 + 16);
    v171 = v114;
    a3 = v112 + v115 * (v42 - 1);
    v167 = -v115;
    v152 = v28;
    v116 = (v28 - v42);
    v168 = v112;
    v155 = v115;
    v117 = v112 + v42 * v115;
    v158 = v66;
LABEL_96:
    v164 = v42;
    v159 = v117;
    v160 = v116;
    v119 = v116;
    v161 = a3;
LABEL_97:
    v177 = v119;
    v120 = v170;
    (v170)(v17, v117, v7);
    (v120)(v14, a3, v7);
    v178 = sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v121 = v17;
    v122 = sub_25B0E2730();
    v123 = [v122 name];

    if (!v123)
    {

LABEL_94:
      v118 = *v176;
      v14 = v179;
      (*v176)(v179, v7);
      v17 = v121;
      v118(v121, v7);
      goto LABEL_95;
    }

    v124 = sub_25B0E3740();
    v126 = v125;

    v127 = v179;
    v128 = sub_25B0E2730();
    v129 = [v128 name];

    if (!v129)
    {

      v7 = v174;
      goto LABEL_94;
    }

    v130 = sub_25B0E3740();
    v132 = v131;

    v182 = v124;
    v183 = v126;
    v180 = v130;
    v181 = v132;
    sub_25B04C9BC(v133, v134, v135);
    v136 = sub_25B0E3B20();

    v137 = *v176;
    v138 = v127;
    v17 = v172;
    v7 = v174;
    (*v176)(v138, v174);
    result = (v137)(v17, v7);
    if (v136 == -1)
    {
      break;
    }

    v14 = v179;
LABEL_95:
    v42 = v164 + 1;
    a3 = v161 + v155;
    v116 = v160 - 1;
    v117 = v159 + v155;
    v67 = v158;
    if (v164 + 1 != v158)
    {
      goto LABEL_96;
    }

    v5 = v149;
    v28 = v152;
    if (v158 < v152)
    {
      goto LABEL_141;
    }

LABEL_43:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v29 = v157;
    }

    else
    {
      result = sub_25B08993C(0, *(v157 + 2) + 1, 1, v157);
      v29 = result;
    }

    a3 = *(v29 + 2);
    v68 = *(v29 + 3);
    v42 = a3 + 1;
    v25 = v162;
    if (a3 >= v68 >> 1)
    {
      result = sub_25B08993C((v68 > 1), a3 + 1, 1, v29);
      v25 = v162;
      v29 = result;
    }

    *(v29 + 2) = v42;
    v69 = &v29[16 * a3];
    *(v69 + 4) = v28;
    *(v69 + 5) = v67;
    v158 = v67;
    v70 = *v153;
    if (!*v153)
    {
      goto LABEL_151;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v71 = *(v29 + 4);
          v72 = *(v29 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_62:
          if (v74)
          {
            goto LABEL_130;
          }

          v87 = &v29[16 * v42];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_133;
          }

          v93 = &v29[16 * a3 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_137;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              a3 = v42 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v97 = &v29[16 * v42];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_76:
        if (v92)
        {
          goto LABEL_132;
        }

        v100 = &v29[16 * a3];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_83:
        v108 = a3 - 1;
        if (a3 - 1 >= v42)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v163)
        {
          goto LABEL_148;
        }

        v109 = v29;
        v42 = *&v29[16 * v108 + 32];
        v110 = *&v29[16 * a3 + 40];
        sub_25B0D3630(*v163 + *(v25 + 72) * v42, (*v163 + *(v25 + 72) * *&v29[16 * a3 + 32]), *v163 + *(v25 + 72) * v110, v70);
        if (v5)
        {
        }

        if (v110 < v42)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_25B0D3F4C(v109);
        }

        if (v108 >= *(v109 + 2))
        {
          goto LABEL_127;
        }

        v111 = &v109[16 * v108];
        *(v111 + 4) = v42;
        *(v111 + 5) = v110;
        v184 = v109;
        result = sub_25B0D3EC0(a3);
        v29 = v184;
        v42 = *(v184 + 16);
        v25 = v162;
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v29[16 * v42 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_128;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_129;
      }

      v82 = &v29[16 * v42];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_131;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_134;
      }

      if (v86 >= v78)
      {
        v104 = &v29[16 * a3 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_138;
        }

        if (v73 < v107)
        {
          a3 = v42 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v27 = v163[1];
    v28 = v158;
    v14 = v179;
    if (v158 >= v27)
    {
      goto LABEL_112;
    }
  }

  v139 = v177;
  if (v168)
  {
    v140 = *v173;
    v141 = v169;
    (*v173)(v169, v117, v7);
    swift_arrayInitWithTakeFrontToBack();
    v140(a3, v141, v7);
    a3 += v167;
    v117 += v167;
    v142 = __CFADD__(v139, 1);
    v119 = (v139 + 1);
    v14 = v179;
    if (v142)
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_25B0D3630(unint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  v83 = a4;
  v80 = a3;
  v81 = a2;
  v82 = sub_25B0E2750();
  v5 = *(v82 - 8);
  v6 = MEMORY[0x28223BE20](v82);
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = &v70 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v70 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = (&v70 - v14);
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return result;
  }

  v18 = &v81[-a1];
  if (&v81[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_77;
  }

  v19 = v80 - v81;
  if (v80 - v81 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_78;
  }

  v90 = a1;
  v89 = v83;
  if (v18 / v17 >= v19 / v17)
  {
    v21 = v19 / v17 * v17;
    if (v83 < v81 || &v81[v21] <= v83)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v83 != v81)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v21 < 1)
    {
      v49 = v83 + v21;
    }

    else
    {
      v46 = -v17;
      v74 = (v5 + 8);
      v75 = (v5 + 16);
      v47 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
      v48 = v83 + v21;
      v49 = v83 + v21;
      v72 = -v17;
      do
      {
        v71 = v49;
        v50 = v81;
        v81 += v46;
        v76 = v50;
        while (1)
        {
          v51 = v80;
          if (v50 <= a1)
          {
            v90 = v50;
            v88 = v71;
            goto LABEL_75;
          }

          v73 = v49;
          v52 = *v75;
          v77 = (v48 + v46);
          v53 = v82;
          v52(v79);
          (v52)(v78, v81, v53);
          sub_25B0E3900();
          sub_25B0E38F0();
          sub_25B0E3850();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v54 = sub_25B0E2730();
          v55 = [v54 v47[137]];

          if (v55)
          {
            v56 = sub_25B0E3740();
            v58 = v57;

            v59 = sub_25B0E2730();
            v55 = [v59 v47[137]];

            if (v55)
            {
              v60 = sub_25B0E3740();
              v61 = v56;
              v63 = v62;

              v86 = v61;
              v87 = v58;
              v84 = v60;
              v85 = v63;
              sub_25B04C9BC(v64, v65, v66);
              v55 = sub_25B0E3B20();

              LOBYTE(v55) = v55 == -1;
            }

            else
            {
            }

            v46 = v72;
          }

          else
          {
          }

          v80 = v51 + v46;
          v67 = *v74;
          v68 = v82;
          (*v74)(v78, v82);
          v67(v79, v68);
          v50 = v76;
          if (v55)
          {
            break;
          }

          v69 = v77;
          v49 = v77;
          if (v51 < v48 || v80 >= v48)
          {
            swift_arrayInitWithTakeFrontToBack();
            v47 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
          }

          else
          {
            v47 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
            if (v51 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v49;
          if (v69 <= v83)
          {
            v81 = v50;
            goto LABEL_74;
          }
        }

        if (v51 < v76 || v80 >= v76)
        {
          swift_arrayInitWithTakeFrontToBack();
          v49 = v73;
          v47 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
        }

        else
        {
          v49 = v73;
          v47 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
          if (v51 != v76)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v48 > v83);
    }

LABEL_74:
    v90 = v81;
    v88 = v49;
  }

  else
  {
    v20 = v18 / v17 * v17;
    if (v83 < a1 || a1 + v20 <= v83)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v83 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = (v83 + v20);
    v88 = v83 + v20;
    if (v20 >= 1 && v81 < v80)
    {
      v77 = *(v5 + 16);
      v78 = (v5 + 16);
      v75 = v17;
      v76 = (v5 + 8);
      v74 = v15;
      while (1)
      {
        v23 = v82;
        v24 = v77;
        v77(v15, v81, v82);
        v24(v12, v83, v23);
        sub_25B0E3900();
        sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v25 = sub_25B0E2730();
        v26 = [v25 name];

        if (!v26)
        {
          break;
        }

        v27 = sub_25B0E3740();
        v29 = v28;

        v30 = sub_25B0E2730();
        v31 = [v30 name];

        if (!v31)
        {

          v15 = v74;
          v17 = v75;
          goto LABEL_32;
        }

        v32 = sub_25B0E3740();
        v34 = v33;

        v86 = v27;
        v87 = v29;
        v84 = v32;
        v85 = v34;
        sub_25B04C9BC(v35, v36, v37);
        v38 = sub_25B0E3B20();

        v39 = v82;

        v40 = *v76;
        (*v76)(v12, v39);
        v41 = v74;
        v40(v74, v39);
        v17 = v75;
        v15 = v41;
        if (v38 != -1)
        {
          goto LABEL_33;
        }

        v42 = v75 + v81;
        if (a1 < v81 || a1 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v81)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v81 = v42;
LABEL_39:
        a1 += v17;
        v90 = a1;
        if (v83 >= v79 || v81 >= v80)
        {
          goto LABEL_75;
        }
      }

LABEL_32:
      v43 = *v76;
      v44 = v82;
      (*v76)(v12, v82);
      v43(v15, v44);
LABEL_33:
      v45 = v83 + v17;
      if (a1 < v83 || a1 >= v45)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v83)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v89 = v45;
      v83 = v45;
      goto LABEL_39;
    }
  }

LABEL_75:
  sub_25B0D3FA8(&v90, &v89, &v88, MEMORY[0x277D2BE00]);
  return 1;
}

uint64_t sub_25B0D3EC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25B0D3F4C(v3);
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

uint64_t sub_25B0D3FA8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_25B0D4108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E68, &qword_25B0EACC8);
    v3 = sub_25B0E3D40();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_25B065C20(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_25B0D4200(uint64_t a1)
{
  v2 = type metadata accessor for CuratedGalleryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0D425C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GalleryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25B0D05C0(v4, a1);
}

uint64_t objectdestroy_13Tm()
{
  v1 = (type metadata accessor for GalleryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  v6 = sub_25B0E2C10();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D80, &qword_25B0EAB20);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25B0D4400@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for GalleryView(0);

  return sub_25B0D0BB4(a1, a2);
}

uint64_t sub_25B0D4480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A58, &qword_25B0EA650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_25B0D44F0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31480, &qword_25B0E6BE0);
  v3 = sub_25B0E3D40();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_25B066160(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_25B066160(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25B0D45F8()
{
  result = qword_27FA32E70;
  if (!qword_27FA32E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32E78, &qword_25B0EACD0);
    sub_25B0B3E88();
    sub_25B058150(&qword_27FA31EB8, &qword_27FA31EC0, &unk_25B0EA2D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E70);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_25B0D46DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_25B0D4724(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_25B0D47BC@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  if (*(a1 + 16) && (v5 = a2(), (v6 & 1) != 0))
  {
    v7 = (*(a1 + 56) + 32 * v5);
    v8 = v7[1];
    v9 = v7[2];
    v10 = v7[3];
    *a3 = *v7;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

void *sub_25B0D4838(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_25B0E3CD0();

    if (v4)
    {
      sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_25B065C20(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_25B0D48FC()
{
  v1 = sub_25B0E2930();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B0E2750();
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 64);
  v10 = MEMORY[0x277D84F90];
  if (!*(v9 + 16))
  {
    return;
  }

  v23 = v6;
  (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
  v11 = sub_25B0E2730();
  v12 = [v11 curatedGalleryBackgroundColors];

  if (!v12)
  {
    goto LABEL_19;
  }

  v21 = v2;
  v22 = v5;
  sub_25B046E60(0, &qword_27FA32EB8, 0x277D75348);
  v13 = sub_25B0E37F0();

  if (v13 >> 62)
  {
    v14 = sub_25B0E3CC0();
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_5:
      v24 = v10;
      sub_25B0E3C50();
      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            MEMORY[0x25F860730](v15, v13);
          }

          else
          {
            v16 = *(v13 + 8 * v15 + 32);
          }

          ++v15;
          sub_25B0E3370();
          sub_25B0E3C30();
          sub_25B0E3C60();
          sub_25B0E3C70();
          sub_25B0E3C40();
        }

        while (v14 != v15);

        v10 = v24;
        goto LABEL_14;
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F88, &qword_25B0E9238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25B0E7730;
  v18 = v22;
  if (qword_27FA30D48 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v1, qword_27FA39A10);
  v20 = *(v21 + 16);
  v20(v4, v19, v1);
  *(inited + 32) = sub_25B0E33D0();
  v20(v4, v19, v1);
  *(inited + 40) = sub_25B0E33D0();
  v24 = v10;
  sub_25B08C074(inited);
  (*(v23 + 8))(v8, v18);
}

uint64_t sub_25B0D4C94()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 7);
  *&v7[13] = *(v0 + 5);
  *&v7[15] = v3;
  v4 = v0[10];
  v7[17] = v0[9];
  *&v7[9] = *(v0 + 1);
  *&v7[11] = v2;
  v5 = v0[11];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  sub_25B0AB55C(v7);
  sub_25B0DB028(v7, v4);
  MEMORY[0x25F860A80](v5);
  return sub_25B0E3F50();
}

uint64_t sub_25B0D4D2C(__int128 *a1)
{
  v3 = v1[10];
  v4 = v1[11];
  MEMORY[0x25F860A80](*v1);
  sub_25B0AB55C(a1);
  sub_25B0DB028(a1, v3);
  return MEMORY[0x25F860A80](v4);
}

uint64_t sub_25B0D4DB0(uint64_t a1)
{
  v2 = v1[10];
  v8[17] = v1[9];
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = *(v1 + 7);
  *&v8[13] = *(v1 + 5);
  *&v8[15] = v5;
  *&v8[9] = *(v1 + 1);
  *&v8[11] = v4;
  v6 = v1[11];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v3);
  sub_25B0AB55C(v8);
  sub_25B0DB028(v8, v2);
  MEMORY[0x25F860A80](v6);
  return sub_25B0E3F50();
}

uint64_t sub_25B0D4E44@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v3;
  v11 = *(v1 + 72);
  v4 = v11;
  v8[0] = *(v1 + 8);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_25B08CEB4(v8, v7);
}

BOOL sub_25B0D4E98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_25B0DB628(v9, v10);
}

unint64_t sub_25B0D4EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32E80;
  if (!qword_27FA32E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E80);
  }

  return result;
}

uint64_t sub_25B0D4F50(uint64_t *a1, uint64_t a2)
{
  v61 = a1;
  v3 = type metadata accessor for BucketedFace(0);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  type metadata accessor for LinkedFace(0);
  v52 = a2;
  v8 = sub_25B0E2730();
  v9 = [v8 curationPlacements];

  if (v9)
  {
    sub_25B046E60(0, &qword_27FA31E08, 0x277D2C020);
    v10 = sub_25B0E37F0();

    if (!(v10 >> 62))
    {
      goto LABEL_3;
    }

LABEL_33:
    v11 = sub_25B0E3CC0();
    if (v11)
    {
      goto LABEL_4;
    }
  }

  v10 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_33;
  }

LABEL_3:
  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
  }

LABEL_4:
  v12 = 0;
  v48 = v10;
  v49 = v10 & 0xC000000000000001;
  v46 = v10 & 0xFFFFFFFFFFFFFF8;
  v47 = v11;
  while (1)
  {
    if (v49)
    {
      v13 = MEMORY[0x25F860730](v12, v10);
    }

    else
    {
      if (v12 >= *(v46 + 16))
      {
        goto LABEL_38;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    [v13 placement];
    v17 = v57;
    v16 = v58;
    v18 = v59;
    v19 = v60;
    v20 = *v61;
    v21 = *(*v61 + 16);
    v55 = v56;
    v53 = v14;
    if (v21 && (v22 = sub_25B066160(v56.i64[0]), (v23 & 1) != 0))
    {
      v24 = *(*(v20 + 56) + 8 * v22);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    sub_25B0DC234(v52, &v7[*(v51 + 24)], type metadata accessor for LinkedFace);
    *&v25 = vdupq_laneq_s64(v55, 1).u64[0];
    *(&v25 + 1) = v17;
    *v7 = vdupq_lane_s64(v55.i64[0], 0);
    *(v7 + 1) = v25;
    *(v7 + 4) = v16;
    *(v7 + 5) = v18;
    *(v7 + 6) = v19;
    sub_25B0DC234(v7, v54, type metadata accessor for BucketedFace);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_25B08A244(0, v24[2] + 1, 1, v24);
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_25B08A244((v26 > 1), v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    sub_25B0DC2FC(v54, v24 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v27, type metadata accessor for BucketedFace);
    v28 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v28;
    v56.i64[0] = v30;
    v31 = v55.i64[0];
    v33 = sub_25B066160(v55.i64[0]);
    v34 = *(v30 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_36;
    }

    v37 = v32;
    if (*(v30 + 24) >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = v56.i64[0];
        if (v32)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_25B06A890();
        v40 = v56.i64[0];
        if (v37)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_25B067E70(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_25B066160(v31);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_39;
      }

      v33 = v38;
      v40 = v56.i64[0];
      if (v37)
      {
LABEL_5:
        *(v40[7] + 8 * v33) = v24;

        sub_25B0DC29C(v7, type metadata accessor for BucketedFace);
        goto LABEL_6;
      }
    }

    v40[(v33 >> 6) + 8] |= 1 << v33;
    *(v40[6] + 8 * v33) = v31;
    *(v40[7] + 8 * v33) = v24;

    sub_25B0DC29C(v7, type metadata accessor for BucketedFace);
    v41 = v40[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_37;
    }

    v40[2] = v43;
LABEL_6:
    *v61 = v40;
    ++v12;
    v10 = v48;
    if (v15 == v47)
    {
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  type metadata accessor for NTKFaceCurationGroup(0);
  result = sub_25B0E3E80();
  __break(1u);
  return result;
}

uint64_t sub_25B0D5424(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 6:
      return result;
    case 2:
      v1 = objc_opt_self();
      result = [v1 currentDevice];
      if (!result)
      {
        goto LABEL_108;
      }

      v2 = result;
      v3 = [result deviceCategory];

      if ((v3 | 2) != 6)
      {
        return 17;
      }

      result = [v1 currentDevice];
      if (!result)
      {
        goto LABEL_120;
      }

      v4 = result;
      if ([result collectionType] == 5)
      {

        return 18;
      }

      else
      {
        v52 = NTKShowHardwareSpecificFaces();

        if (v52)
        {
          return 18;
        }

        return 17;
      }

    case 3:
      goto LABEL_18;
    case 4:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_112;
      }

      v30 = result;
      v31 = [result deviceCategory];

      if ((v31 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 4;
      }

      else
      {
        return 8;
      }

    case 5:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_114;
      }

      v34 = result;
      v35 = [result deviceCategory];

      if ((v35 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 10;
      }

      else
      {
        return 4;
      }

    case 7:
      return 5;
    case 8:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_116;
      }

      v38 = result;
      v39 = [result deviceCategory];

      if ((v39 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 12;
      }

      else
      {
        return 7;
      }

    case 9:
      return 2;
    case 10:
      return 3;
    case 11:
      result = [objc_opt_self() currentDevice];
      if (result)
      {
        goto LABEL_75;
      }

      __break(1u);
LABEL_18:
      v11 = objc_opt_self();
      result = [v11 currentDevice];
      if (!result)
      {
        goto LABEL_106;
      }

      v12 = result;
      v13 = [result deviceCategory];

      if ((v13 | 2) != 6)
      {
        return 18;
      }

      result = [v11 currentDevice];
      if (!result)
      {
        goto LABEL_119;
      }

      v14 = result;
      if ([result collectionType] == 5)
      {
        goto LABEL_84;
      }

      v15 = NTKShowHardwareSpecificFaces();

      if (v15)
      {
        return 19;
      }

      else
      {
        return 18;
      }

    case 12:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_107;
      }

      v16 = result;
      v17 = [result deviceCategory];

      if ((v17 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 7;
      }

      else
      {
        return 9;
      }

    case 13:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_113;
      }

      v32 = result;
      v33 = [result deviceCategory];

      if ((v33 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 9;
      }

      else
      {
        return 12;
      }

    case 14:
      v7 = objc_opt_self();
      result = [v7 currentDevice];
      if (!result)
      {
        goto LABEL_105;
      }

      v8 = result;
      v9 = [result deviceCategory];

      if ((v9 | 2) == 6)
      {
        result = [v7 currentDevice];
        if (!result)
        {
          goto LABEL_118;
        }

        v10 = result;
        if ([result collectionType] == 5)
        {

          return 14;
        }

        v50 = NTKShowHardwareSpecificFaces();

        v47 = v50 == 0;
        v48 = 11;
        v49 = 14;
      }

      else
      {
        result = [v7 currentDevice];
        if (!result)
        {
          goto LABEL_125;
        }

LABEL_75:
        v45 = result;
        if ([result collectionType] == 5)
        {

          return 11;
        }

        v46 = NTKShowHardwareSpecificFaces();

        v47 = v46 == 0;
        v48 = 6;
        v49 = 11;
      }

      goto LABEL_100;
    case 15:
      v18 = objc_opt_self();
      result = [v18 currentDevice];
      if (!result)
      {
        goto LABEL_109;
      }

      v19 = result;
      v20 = [result deviceCategory];

      if ((v20 | 2) != 6)
      {
        return 10;
      }

      result = [v18 currentDevice];
      if (!result)
      {
        goto LABEL_121;
      }

      v21 = result;
      if ([result collectionType] == 5)
      {

        return 15;
      }

      else
      {
        v51 = NTKShowHardwareSpecificFaces();

        if (v51)
        {
          return 15;
        }

        else
        {
          return 14;
        }
      }

    case 16:
      result = [objc_opt_self() currentDevice];
      if (result)
      {
        v5 = result;
        v6 = [result deviceCategory];

        if ((v6 & 0xFFFFFFFFFFFFFFFDLL) == 4)
        {
          return 13;
        }

        else
        {
          return 14;
        }
      }

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
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    case 17:
      v22 = objc_opt_self();
      result = [v22 currentDevice];
      if (!result)
      {
        goto LABEL_110;
      }

      v23 = result;
      v24 = [result deviceCategory];

      if ((v24 | 2) != 6)
      {
        result = [v22 currentDevice];
        if (!result)
        {
          goto LABEL_126;
        }

        v43 = result;
        if ([result collectionType] == 5)
        {
LABEL_81:

          return 16;
        }

        v55 = NTKShowHardwareSpecificFaces();

        v47 = v55 == 0;
        v48 = 11;
        v49 = 16;
        goto LABEL_100;
      }

      result = [v22 currentDevice];
      if (!result)
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v25 = result;
      if ([result collectionType] == 5)
      {

        return 17;
      }

      else
      {
        v53 = NTKShowHardwareSpecificFaces();

        if (v53)
        {
          return 17;
        }

        else
        {
          return 16;
        }
      }

    case 18:
      result = [objc_opt_self() currentDevice];
      if (!result)
      {
        goto LABEL_115;
      }

      v36 = result;
      v37 = [result deviceCategory];

      if ((v37 & 0xFFFFFFFFFFFFFFFDLL) == 4)
      {
        return 8;
      }

      else
      {
        return 13;
      }

    case 19:
      v40 = objc_opt_self();
      result = [v40 currentDevice];
      if (!result)
      {
        goto LABEL_117;
      }

      v41 = result;
      v42 = [result deviceCategory];

      if ((v42 | 2) != 6)
      {
        return 15;
      }

      result = [v40 currentDevice];
      if (!result)
      {
        goto LABEL_124;
      }

      v43 = result;
      if ([result collectionType] == 5)
      {
        goto LABEL_81;
      }

      v44 = NTKShowHardwareSpecificFaces();

      if (v44)
      {
        return 16;
      }

      else
      {
        return 15;
      }

    case 20:
      v26 = objc_opt_self();
      result = [v26 currentDevice];
      if (!result)
      {
        goto LABEL_111;
      }

      v27 = result;
      v28 = [result deviceCategory];

      if ((v28 | 2) == 6)
      {
        result = [v26 currentDevice];
        if (result)
        {
          v29 = result;
          if ([result collectionType] == 5)
          {

            return 20;
          }

          else
          {
            v54 = NTKShowHardwareSpecificFaces();

            if (v54)
            {
              return 20;
            }

            else
            {
              return 19;
            }
          }
        }

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
        return result;
      }

      result = [v26 currentDevice];
      if (!result)
      {
        goto LABEL_127;
      }

      v14 = result;
      if ([result collectionType] == 5)
      {
LABEL_84:

        return 19;
      }

      else
      {
        v56 = NTKShowHardwareSpecificFaces();

        v47 = v56 == 0;
        v48 = 16;
        v49 = 19;
LABEL_100:
        if (v47)
        {
          return v48;
        }

        else
        {
          return v49;
        }
      }

    default:
      return 0;
  }
}

uint64_t sub_25B0D5CD8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v74 = sub_25B0E2750();
  v85 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for BucketedFace(0);
  v10 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for LinkedFace(0);
  v81 = *(v88 - 8);
  v13 = MEMORY[0x28223BE20](v88);
  v84 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v72 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v72 - v19;
  if (!*(a3 + 16))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);

    __break(1u);
    return result;
  }

  v21 = sub_25B066160(a2);
  if ((v22 & 1) == 0)
  {
    goto LABEL_49;
  }

  v73 = v9;
  v89[0] = *(*(a3 + 56) + 8 * v21);
  swift_bridgeObjectRetain_n();
  v9 = 0;
  sub_25B0D79A8(v89);
  v75 = a4;
  v76 = a1;

  v23 = v89[0];
  v24 = *(v89[0] + 16);
  if (v24)
  {
    v89[0] = MEMORY[0x277D84F90];
    sub_25B08C1A8(0, v24, 0);
    v25 = v89[0];
    v26 = *(v10 + 80);
    v83 = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v28 = *(v10 + 72);
    v29 = v81;
    do
    {
      sub_25B0DC234(v27, v12, type metadata accessor for BucketedFace);
      sub_25B0DC2FC(&v12[*(v86 + 24)], v20, type metadata accessor for LinkedFace);
      v89[0] = v25;
      v9 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v9 >= v30 >> 1)
      {
        sub_25B08C1A8((v30 > 1), v9 + 1, 1);
        v29 = v81;
        v25 = v89[0];
      }

      *(v25 + 16) = v9 + 1;
      sub_25B0DC2FC(v20, v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v9, type metadata accessor for LinkedFace);
      v27 += v28;
      --v24;
    }

    while (v24);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
    v29 = v81;
  }

  v79 = *(v25 + 16);
  v80 = v25;
  if (v79)
  {
    v31 = 0;
    v78 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v31 >= *(v25 + 16))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v9 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v33 = *(v29 + 72);
      sub_25B0DC234(v25 + v9 + v33 * v31, v87, type metadata accessor for LinkedFace);
      v34 = sub_25B0E2730();
      v35 = [v34 curationPlacements];

      if (!v35)
      {
        goto LABEL_50;
      }

      sub_25B046E60(0, &qword_27FA31E08, 0x277D2C020);
      v36 = sub_25B0E37F0();

      v86 = v31;
      v82 = v33;
      v83 = v9;
      if (v36 >> 62)
      {
        v37 = sub_25B0E3CC0();
        if (!v37)
        {
LABEL_12:

          sub_25B0DC29C(v87, type metadata accessor for LinkedFace);
          v29 = v81;
          v32 = v86;
          goto LABEL_13;
        }
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v37)
        {
          goto LABEL_12;
        }
      }

      v38 = 0;
      while (1)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x25F860730](v38, v36);
        }

        else
        {
          if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v39 = *(v36 + 8 * v38 + 32);
        }

        v40 = v39;
        v9 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        [v39 placement];
        if (v89[0] == a2)
        {
          break;
        }

LABEL_20:
        ++v38;
        if (v9 == v37)
        {
          goto LABEL_12;
        }
      }

      [v40 placement];
      v41 = a2;
      v42 = v89[5];

      v43 = v42 == 4000;
      a2 = v41;
      if (v43)
      {
        goto LABEL_20;
      }

      sub_25B0DC2FC(v87, v77, type metadata accessor for LinkedFace);
      v9 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25B08C1A8(0, *(v9 + 16) + 1, 1);
        v9 = v90;
      }

      v29 = v81;
      v32 = v86;
      v45 = v83;
      v47 = *(v9 + 16);
      v46 = *(v9 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_25B08C1A8((v46 > 1), v47 + 1, 1);
        v29 = v81;
        v9 = v90;
      }

      *(v9 + 16) = v47 + 1;
      v78 = v9;
      sub_25B0DC2FC(v77, v9 + v45 + v47 * v82, type metadata accessor for LinkedFace);
LABEL_13:
      v31 = v32 + 1;
      v25 = v80;
      if (v31 == v79)
      {
        goto LABEL_37;
      }
    }
  }

  v78 = MEMORY[0x277D84F90];
LABEL_37:
  v48 = sub_25B0D65C4();
  v50 = v49;
  v51 = sub_25B0D6828(a2);
  v86 = v52;
  v53 = sub_25B0D6AC8(a2);
  v82 = v54;
  v83 = v53;
  v55 = v78;
  v56 = *(v78 + 16);
  if (v56)
  {
    v77 = v51;
    v79 = v50;
    v81 = v48;
    v89[0] = MEMORY[0x277D84F90];
    sub_25B08C250(0, v56, 0);
    v57 = v89[0];
    v58 = v55 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v87 = *(v29 + 72);
    v59 = (v85 + 16);
    v60 = v74;
    v61 = v73;
    do
    {
      v62 = v84;
      sub_25B0DC234(v58, v84, type metadata accessor for LinkedFace);
      (*v59)(v61, v62 + *(v88 + 20), v60);
      sub_25B0DC29C(v62, type metadata accessor for LinkedFace);
      v89[0] = v57;
      v64 = *(v57 + 16);
      v63 = *(v57 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_25B08C250((v63 > 1), v64 + 1, 1);
        v60 = v74;
        v57 = v89[0];
      }

      *(v57 + 16) = v64 + 1;
      (*(v85 + 32))(v57 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v64, v61, v60);
      v58 += v87;
      --v56;
    }

    while (v56);

    v25 = v80;
    v48 = v81;
    v50 = v79;
    v51 = v77;
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v65 = sub_25B0D4108(MEMORY[0x277D84F90]);
  v66 = sub_25B0D6DA4(v25, a2);

  v68 = v75;
  *v75 = a2;
  v68[1] = v48;
  v68[2] = v50;
  v68[3] = v51;
  v69 = v82;
  v70 = v83;
  v68[4] = v86;
  v68[5] = v70;
  v68[6] = v69;
  v68[7] = v65;
  v71 = v76;
  v68[8] = v57;
  v68[9] = v71;
  v68[10] = v66;
  v68[11] = v71;
  return result;
}

BOOL sub_25B0D6564(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (v8 == v4)
  {
    v10 = a2[6] < a1[6];
  }

  else
  {
    v10 = v8 < v4;
  }

  if (v7 == v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7 < v3;
  }

  v12 = v6 == v2;
  v13 = v6 < v2;
  if (v12)
  {
    v13 = v11;
  }

  if (v9 == v5)
  {
    return v13;
  }

  else
  {
    return v9 < v5;
  }
}

unint64_t sub_25B0D6828(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 3:
      goto LABEL_13;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = [objc_opt_self() currentDevice];
      if (result)
      {
        v2 = result;
        v3 = [result deviceCategory];

        if ((v3 | 2) == 6)
        {
LABEL_13:
          result = 0xD000000000000022;
        }

        else
        {
          result = 0xD00000000000001DLL;
        }
      }

      else
      {
        __break(1u);
      }

      break;
    case 7:
    case 9:
      result = 0xD000000000000025;
      break;
    case 8:
    case 20:
      result = 0xD00000000000001FLL;
      break;
    case 10:
    case 17:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 14:
    case 19:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0xD00000000000002ALL;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

unint64_t sub_25B0D6AC8(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0xD00000000000001DLL;
    case 2:
      return 0xD00000000000003CLL;
    case 3:
      return 0xD000000000000033;
    case 4:
      v2 = 13;
      goto LABEL_24;
    case 5:
      return 0xD000000000000040;
    case 6:
      result = [objc_opt_self() currentDevice];
      if (result)
      {
        v3 = result;
        v4 = [result deviceCategory];

        if ((v4 | 2) == 6)
        {
          return 0x1000000000000074;
        }

        else
        {
          return 0x100000000000006FLL;
        }
      }

      else
      {
        __break(1u);
      }

      return result;
    case 7:
      return 0x1000000000000080;
    case 8:
      return 0xD000000000000039;
    case 9:
      v2 = 61;
      goto LABEL_24;
    case 10:
    case 16:
      return 0xD000000000000058;
    case 11:
      v2 = 42;
      goto LABEL_24;
    case 12:
      v2 = 43;
      goto LABEL_24;
    case 13:
      return 0xD000000000000041;
    case 14:
      v2 = 51;
      goto LABEL_24;
    case 15:
      v2 = 18;
      goto LABEL_24;
    case 17:
      return 0xD000000000000040;
    case 18:
      v2 = 9;
      goto LABEL_24;
    case 19:
      v2 = 23;
      goto LABEL_24;
    case 20:
      v2 = 25;
LABEL_24:
      result = v2 | 0xD000000000000040;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t sub_25B0D6DA4(uint64_t a1, char *a2)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32E90, &qword_25B0EAE68);
  v3 = MEMORY[0x28223BE20](v53);
  v5 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v9 = &v48 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v71 = MEMORY[0x277D84F90];
    sub_25B08C230(0, v10, 0);
    v11 = v71;
    v12 = 0;
    v13 = *(type metadata accessor for LinkedFace(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v52 = *(v13 + 72);
    do
    {
      v15 = v53;
      v16 = *(v53 + 48);
      sub_25B0DC234(v14, &v9[v16], type metadata accessor for LinkedFace);
      *v5 = v12;
      v17 = *(v15 + 48);
      sub_25B0DC2FC(&v9[v16], v5 + v17, type metadata accessor for LinkedFace);
      sub_25B0DB87C((v5 + v17), v54, v78);
      sub_25B058448(v5, &qword_27FA32E90, &qword_25B0EAE68);
      v71 = v11;
      v19 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_25B08C230((v18 > 1), v19 + 1, 1);
        v11 = v71;
      }

      ++v12;
      *(v11 + 2) = v19 + 1;
      v20 = &v11[72 * v19];
      *(v20 + 2) = v78[0];
      v21 = v78[1];
      v22 = v78[2];
      v23 = v78[3];
      *(v20 + 12) = v79;
      *(v20 + 4) = v22;
      *(v20 + 5) = v23;
      *(v20 + 3) = v21;
      v14 += v52;
    }

    while (v10 != v12);
  }

  v24 = sub_25B0DB7AC(v11, v6, v7);

  v25 = *(v24 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v27 = MEMORY[0x277D84F90];
    v28 = sub_25B0B3478(*(v24 + 16), 0);
    v53 = sub_25B0B3888(&v71, v28 + 32, v25, v24);
    v29 = v71;

    sub_25B043EC8(v29);
    if (v53 != v25)
    {
LABEL_24:
      __break(1u);

      __break(1u);
      return result;
    }

    v26 = v27;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v71 = v28;
  v27 = 0;
  sub_25B0D7934(&v71, v54);

  v30 = v71;
  v31 = *(v71 + 2);
  if (v31)
  {
    v77 = v26;
    sub_25B08C230(0, v31, 0);
    v48 = *(v30 + 2);
    if (v48)
    {
      v32 = 0;
      v33 = v77;
      v49 = (v31 - 1);
      v50 = v30;
      v27 = 32;
      while (v32 < *(v30 + 2))
      {
        v61[0] = *&v30[v27];
        v34 = *&v30[v27 + 16];
        v35 = *&v30[v27 + 32];
        v36 = *&v30[v27 + 48];
        v62 = *&v30[v27 + 64];
        v61[2] = v35;
        v61[3] = v36;
        v61[1] = v34;
        v37 = *&v30[v27 + 48];
        v58 = *&v30[v27 + 32];
        v59 = v37;
        v60 = *&v30[v27 + 64];
        v38 = *&v30[v27 + 16];
        v56 = *&v30[v27];
        v57 = v38;
        memmove(v63, &v30[v27], 0x48uLL);
        v67 = v63[1];
        v68 = v63[2];
        v69 = v63[3];
        v66 = v63[0];
        v75 = v59;
        v74 = v58;
        v73 = v57;
        v70 = v64;
        v65 = v32;
        v71 = v32;
        v76 = v60;
        v72 = v56;
        sub_25B08CEB4(v61, v55);
        sub_25B08CEB4(v63, v55);
        sub_25B058448(&v71, &qword_27FA318F0, &qword_25B0E7800);
        v53 = v66;
        v54 = v65;
        v39 = *(&v66 + 1);
        v40 = *(&v67 + 1);
        v51 = v68;
        v52 = v67;
        v41 = *(&v68 + 1);
        v42 = *(&v69 + 1);

        sub_25B058448(&v65, &qword_27FA318F0, &qword_25B0E7800);
        v77 = v33;
        v44 = *(v33 + 16);
        v43 = *(v33 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_25B08C230((v43 > 1), v44 + 1, 1);
          v33 = v77;
        }

        *(v33 + 16) = v44 + 1;
        v45 = (v33 + 72 * v44);
        v46 = v52;
        v45[4] = v53;
        v45[5] = v39;
        v45[6] = v46;
        v45[7] = v40;
        v45[8] = v51;
        v45[9] = v41;
        v45[10] = MEMORY[0x277D84F98];
        v45[11] = v42;
        v45[12] = v54;
        if (v49 == v32)
        {

          return v33;
        }

        ++v32;
        v27 += 72;
        v30 = v50;
        if (v48 == v32)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  return MEMORY[0x277D84F90];
}

BOOL sub_25B0D72D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_25B0E2730();
  v4 = [v3 curationPlacements];

  if (v4)
  {
    sub_25B046E60(0, &qword_27FA31E08, 0x277D2C020);
    v5 = sub_25B0E37F0();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_25B0E2730();
  v7 = [v6 hasFilteredPlacements];

  v8 = v5 >> 62;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_33;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B0E3CC0())
    {
      v10 = 0;
      v11 = v5 & 0xC000000000000001;
      v12 = v5 & 0xFFFFFFFFFFFFFF8;
      v24 = v5;
      while (1)
      {
        if (v11)
        {
          v13 = MEMORY[0x25F860730](v10, v5);
        }

        else
        {
          if (v10 >= *(v12 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v5 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [v13 placement];
        if (v22 == a2)
        {
          [v14 placement];

          v5 = v24;
          if (v23 == 4000)
          {
            v20 = 1;
            goto LABEL_35;
          }
        }

        else
        {
        }

        ++v10;
        if (v15 == i)
        {
          goto LABEL_34;
        }
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:
    v20 = 0;
  }

  else
  {
    if (v8)
    {
      v16 = sub_25B0E3CC0();
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    do
    {
      v20 = v16 != v17;
      if (v16 == v17)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F860730](v17, v5);
      }

      else
      {
        if (v17 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v18 = *(v5 + 8 * v17 + 32);
      }

      v19 = v18;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      [v18 placement];

      ++v17;
    }

    while (v22 != a2);
  }

LABEL_35:

  return v20;
}

uint64_t sub_25B0D7564(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[6];
  v4 = sub_25B0E3A10();
  v5 = sub_25B0D4838(v4, v3);

  if (v5)
  {
    sub_25B0E3A20();
  }

  sub_25B04C9BC(v6, v7, v8);
  v9 = sub_25B0E3B30();
  if ((v9 + 1) < 3)
  {
    return 1u >> ((v9 + 1) & 7);
  }

  type metadata accessor for ComparisonResult(0);
  result = sub_25B0E3E60();
  __break(1u);
  return result;
}

uint64_t sub_25B0D76CC()
{
  v1 = *v0;
  sub_25B0E3F10();
  sub_25B0DB2E0(v3, v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B0D771C(uint64_t a1)
{
  v2 = *v1;
  sub_25B0E3F10();
  sub_25B0DB2E0(v4, v2);
  return sub_25B0E3F50();
}

unint64_t sub_25B0D7770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32E88;
  if (!qword_27FA32E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32E88);
  }

  return result;
}

uint64_t sub_25B0D77C4(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25B0D40A4(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_25B0E3E10();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v18 = v2;
      v19 = v1;
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        result = *&v4[8 * v10];
        v12 = v9;
        v13 = v11;
        do
        {
          v14 = *v13;
          v15 = sub_25B0D5424(result);
          result = sub_25B0D5424(v14);
          if (v15 >= result)
          {
            break;
          }

          v16 = *v13;
          result = v13[1];
          *v13 = result;
          v13[1] = v16;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v3);
      v1 = v19;
      v2 = v18;
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for NTKFaceCurationGroup(0);
      v8 = sub_25B0E3820();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v20[0] = v8 + 32;
    v20[1] = v7;
    sub_25B0D8308(v20, v22, v21, v6);
    *(v8 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_25B0D7934(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_25B0D40E0(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_25B0D7A50(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_25B0D79A8(uint64_t *a1)
{
  v2 = *(type metadata accessor for BucketedFace(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25B0D40F4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25B0D7B54(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25B0D7A50(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = sub_25B0E3E10();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        v7 = sub_25B0E3820();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_25B0D88D8(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_25B0D7C80(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_25B0D7B54(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_25B0E3E10();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for BucketedFace(0);
        v6 = sub_25B0E3820();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for BucketedFace(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25B0D9638(v8, v9, a1, v4);
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
    return sub_25B0D8048(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B0D7C80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
    return result;
  }

  v5 = *a4;
  v6 = *a4 + 72 * a3;
  v7 = result - a3 + 1;
LABEL_5:
  v38 = a3;
  v8 = v7;
  for (i = v6; ; i -= 72)
  {
    v44[0] = *i;
    v10 = *(i + 16);
    v11 = *(i + 32);
    v12 = *(i + 48);
    v46 = *(i + 64);
    v44[2] = v11;
    v45 = v12;
    v44[1] = v10;
    v13 = *(i - 40);
    v14 = *(i - 24);
    v15 = *(i - 56);
    v49 = *(i - 8);
    v47[2] = v13;
    v48 = v14;
    v47[1] = v15;
    v47[0] = *(i - 72);
    v16 = v45;
    sub_25B08CEB4(v44, &v39);
    sub_25B08CEB4(v47, &v39);
    v17 = sub_25B0E3A10();
    v18 = v17;
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (!sub_25B0E3CD0())
      {
        goto LABEL_24;
      }

      sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
      swift_dynamicCast();
      v19 = v39;

      if (!v19)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!*(v16 + 16) || (v23 = sub_25B065C20(v17), (v24 & 1) == 0))
      {
LABEL_24:

        goto LABEL_25;
      }

      v19 = *(*(v16 + 56) + 8 * v23);

      if (!v19)
      {
        goto LABEL_25;
      }
    }

    *&v39 = 0;
    BYTE8(v39) = 1;
    sub_25B0E3A20();

    if (BYTE8(v39))
    {
      goto LABEL_25;
    }

    v50 = v39;
    v25 = v48;
    v26 = sub_25B0E3A10();
    v18 = v26;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (!sub_25B0E3CD0())
      {
        goto LABEL_24;
      }

      sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
      swift_dynamicCast();
      v27 = v39;

      if (!v27)
      {
        goto LABEL_25;
      }

LABEL_21:
      *&v39 = 0;
      BYTE8(v39) = 1;
      sub_25B0E3A20();

      if ((BYTE8(v39) & 1) == 0)
      {
        v30 = v39;
        sub_25B08CF10(v47);
        result = sub_25B08CF10(v44);
        if (v30 >= v50)
        {
          goto LABEL_4;
        }

        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (!*(v25 + 16))
    {
      goto LABEL_24;
    }

    v28 = sub_25B065C20(v26);
    if ((v29 & 1) == 0)
    {
      goto LABEL_24;
    }

    v27 = *(*(v25 + 56) + 8 * v28);

    if (v27)
    {
      goto LABEL_21;
    }

LABEL_25:
    v39 = v44[0];
    sub_25B04C9BC(v20, v21, v22);
    v30 = sub_25B0E3B30();
    type metadata accessor for ComparisonResult(0);
    if (v30 != -1)
    {
      if (v30 >= 2)
      {
        goto LABEL_33;
      }

      sub_25B08CF10(v47);
      result = sub_25B08CF10(v44);
LABEL_4:
      a3 = v38 + 1;
      v6 += 72;
      --v7;
      if (v38 + 1 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    sub_25B08CF10(v47);
    result = sub_25B08CF10(v44);
LABEL_27:
    if (!v5)
    {
      break;
    }

    v31 = i - 72;
    v40 = *(i + 16);
    v41 = *(i + 32);
    v42 = *(i + 48);
    v43 = *(i + 64);
    v39 = *i;
    v32 = *(i - 24);
    *(i + 32) = *(i - 40);
    *(i + 48) = v32;
    *(i + 64) = *(i - 8);
    v33 = *(i - 56);
    *i = *(i - 72);
    *(i + 16) = v33;
    *v31 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    *(v31 + 64) = v43;
    *(v31 + 32) = v35;
    *(v31 + 48) = v36;
    *(v31 + 16) = v34;
    if (!v8)
    {
      goto LABEL_4;
    }

    ++v8;
  }

  __break(1u);
LABEL_33:
  *&v39 = v30;
  result = sub_25B0E3E60();
  __break(1u);
  return result;
}

uint64_t sub_25B0D8048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v45 = type metadata accessor for BucketedFace(0);
  v8 = MEMORY[0x28223BE20](v45);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v37 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v37 - v16);
  v39 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v44 = v18;
    v38 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v42 = v20;
    v43 = a3;
    v40 = v23;
    v41 = v22;
    while (1)
    {
      sub_25B0DC234(v23, v17, type metadata accessor for BucketedFace);
      sub_25B0DC234(v20, v13, type metadata accessor for BucketedFace);
      v24 = v17[5];
      v25 = v13[5];
      v26 = v25 < v24;
      if (v25 == v24)
      {
        v27 = v17[2];
        v28 = v13[2];
        v26 = v28 < v27;
        if (v28 == v27)
        {
          v29 = v17[3];
          v30 = v13[3];
          v26 = v30 < v29;
          if (v30 == v29)
          {
            v31 = v17[4];
            v32 = v13[4];
            v26 = v32 < v31;
            if (v32 == v31)
            {
              v33 = v17[6];
              v34 = v13[6];
              v26 = v34 < v33;
              if (v34 == v33)
              {
                sub_25B0DC29C(v13, type metadata accessor for BucketedFace);
                result = sub_25B0DC29C(v17, type metadata accessor for BucketedFace);
LABEL_5:
                a3 = v43 + 1;
                v20 = v42 + v38;
                v22 = v41 - 1;
                v23 = v40 + v38;
                if (v43 + 1 == v39)
                {
                  return result;
                }

                goto LABEL_6;
              }
            }
          }
        }
      }

      v35 = v26;
      sub_25B0DC29C(v13, type metadata accessor for BucketedFace);
      result = sub_25B0DC29C(v17, type metadata accessor for BucketedFace);
      if ((v35 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      sub_25B0DC2FC(v23, v10, type metadata accessor for BucketedFace);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25B0DC2FC(v10, v20, type metadata accessor for BucketedFace);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B0D8308(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v6 = *v92;
    if (!*v92)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_25B0D3F4C(v8);
      v8 = result;
    }

    v83 = *(v8 + 2);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = *&v8[16 * v83];
        v85 = *&v8[16 * v83 + 24];
        sub_25B0DA024((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v83 + 16]), (*a3 + 8 * v85), v6);
        if (v5)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25B0D3F4C(v8);
        }

        if (v83 - 2 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v86 = &v8[16 * v83];
        *v86 = v84;
        *(v86 + 1) = v85;
        result = sub_25B0D3EC0(v83 - 1);
        v83 = *(v8 + 2);
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v90 = v5;
      v11 = (*a3 + 8 * v7);
      v13 = *v11;
      v12 = v11 + 2;
      v14 = sub_25B0D5424(*(*a3 + 8 * v10));
      result = sub_25B0D5424(v13);
      v15 = result;
      v88 = v7;
      v16 = v7 + 2;
      while (v6 != v16)
      {
        v17 = *(v12 - 1);
        v18 = sub_25B0D5424(*v12);
        result = sub_25B0D5424(v17);
        ++v16;
        ++v12;
        if (v14 < v15 == v18 >= result)
        {
          v6 = v16 - 1;
          break;
        }
      }

      v5 = v90;
      if (v14 >= v15)
      {
        v10 = v6;
        v9 = v88;
      }

      else
      {
        v9 = v88;
        if (v6 < v88)
        {
          goto LABEL_120;
        }

        if (v88 < v6)
        {
          v19 = v6 - 1;
          v20 = v88;
          do
          {
            if (v20 != v19)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v21 = *(v23 + 8 * v20);
              *(v23 + 8 * v20) = *(v23 + 8 * v19);
              *(v23 + 8 * v19) = v21;
            }
          }

          while (++v20 < v19--);
        }

        v10 = v6;
      }
    }

    v24 = a3[1];
    if (v10 < v24)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_119;
      }

      if (v10 - v9 < a4)
      {
        v25 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_121;
        }

        if (v25 >= v24)
        {
          v25 = a3[1];
        }

        if (v25 < v9)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v10 != v25)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v36 = v5;
    if ((result & 1) == 0)
    {
      result = sub_25B08993C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v38 = *(v8 + 2);
    v37 = *(v8 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_25B08993C((v37 > 1), v38 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v39;
    v40 = &v8[16 * v38];
    *(v40 + 4) = v9;
    *(v40 + 5) = v10;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    v7 = v10;
    if (v38)
    {
      v5 = v36;
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_60:
          if (v46)
          {
            goto LABEL_107;
          }

          v59 = &v8[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_110;
          }

          v65 = &v8[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_114;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v69 = &v8[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_74:
        if (v64)
        {
          goto LABEL_109;
        }

        v72 = &v8[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_112;
        }

        if (v75 < v63)
        {
          goto LABEL_4;
        }

LABEL_81:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v6 = *&v8[16 * v80 + 32];
        v81 = *&v8[16 * v42 + 40];
        sub_25B0DA024((*a3 + 8 * v6), (*a3 + 8 * *&v8[16 * v42 + 32]), (*a3 + 8 * v81), v41);
        if (v5)
        {
        }

        if (v81 < v6)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25B0D3F4C(v8);
        }

        if (v80 >= *(v8 + 2))
        {
          goto LABEL_104;
        }

        v82 = &v8[16 * v80];
        *(v82 + 4) = v6;
        *(v82 + 5) = v81;
        result = sub_25B0D3EC0(v42);
        v39 = *(v8 + 2);
        if (v39 <= 1)
        {
          goto LABEL_4;
        }
      }

      v47 = &v8[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_105;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_106;
      }

      v54 = &v8[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_108;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_111;
      }

      if (v58 >= v50)
      {
        v76 = &v8[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_115;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

    v5 = v36;
LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v89 = v9;
  v91 = v5;
  v26 = *a3;
  v27 = *a3 + 8 * v10 - 8;
  v6 = v9 - v10;
  v93 = v25;
LABEL_32:
  v28 = v10;
  v29 = *(v26 + 8 * v10);
  v30 = v6;
  v31 = v27;
  while (1)
  {
    v32 = *v31;
    v33 = sub_25B0D5424(v29);
    result = sub_25B0D5424(v32);
    if (v33 >= result)
    {
LABEL_31:
      v10 = v28 + 1;
      v27 += 8;
      --v6;
      if (v28 + 1 != v93)
      {
        goto LABEL_32;
      }

      v10 = v93;
      v9 = v89;
      v5 = v91;
      goto LABEL_39;
    }

    if (!v26)
    {
      break;
    }

    v34 = *v31;
    v29 = v31[1];
    *v31 = v29;
    v31[1] = v34;
    --v31;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_31;
    }
  }

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
  return result;
}

uint64_t sub_25B0D88D8(uint64_t *isUniquelyReferenced_nonNull_native, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v184 = a5;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_139:
    v9 = *isUniquelyReferenced_nonNull_native;
    if (!*isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_179;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_141;
    }

    goto LABEL_173;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    v136 = v10;
    if (v10 + 1 >= v9)
    {
      v22 = v10 + 1;
    }

    else
    {
      v5 = *v8;
      v14 = *v8 + 72 * v13;
      v173 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v177 = *(v14 + 64);
      v175 = v16;
      v176 = v17;
      v174 = v15;
      v169 = *(v14 + 16);
      v170 = *(v14 + 32);
      v171 = *(v14 + 48);
      v172 = *(v14 + 64);
      v168 = *v14;
      v18 = v5 + 72 * v12;
      v178 = *v18;
      v20 = *(v18 + 32);
      v19 = *(v18 + 48);
      v21 = *(v18 + 16);
      v182 = *(v18 + 64);
      v180 = v20;
      v181 = v19;
      v179 = v21;
      v164 = *(v18 + 16);
      v165 = *(v18 + 32);
      v166 = *(v18 + 48);
      v167 = *(v18 + 64);
      v163 = *v18;
      sub_25B08CEB4(&v173, &v158);
      sub_25B08CEB4(&v178, &v158);
      v141 = sub_25B0D7564(&v168, &v163, v184);
      if (v7)
      {
        v155 = v165;
        v156 = v166;
        v157 = v167;
        v153 = v163;
        v154 = v164;
        sub_25B08CF10(&v153);
        v160 = v170;
        v161 = v171;
        v162 = v172;
        v158 = v168;
        v159 = v169;
        sub_25B08CF10(&v158);
      }

      v155 = v165;
      v156 = v166;
      v157 = v167;
      v153 = v163;
      v154 = v164;
      sub_25B08CF10(&v153);
      v160 = v170;
      v161 = v171;
      v162 = v172;
      v158 = v168;
      v159 = v169;
      sub_25B08CF10(&v158);
      v22 = v12 + 2;
      if (v12 + 2 < v9)
      {
        v23 = v5 + 72 * v12 + 144;
        while (1)
        {
          v24 = v22;
          v145[0] = *v23;
          v25 = *(v23 + 16);
          v26 = *(v23 + 32);
          v27 = *(v23 + 48);
          v147 = *(v23 + 64);
          v146 = v27;
          v145[1] = v25;
          v145[2] = v26;
          v28 = *(v23 - 40);
          v29 = *(v23 - 24);
          v30 = *(v23 - 56);
          v152 = *(v23 - 8);
          v150 = v28;
          v151 = v29;
          v149 = v30;
          v148 = *(v23 - 72);
          v31 = v146;
          sub_25B08CEB4(v145, v144);
          sub_25B08CEB4(&v148, v144);
          v32 = sub_25B0E3A10();
          v33 = v32;
          if ((v31 & 0xC000000000000001) != 0)
          {
            if (!sub_25B0E3CD0())
            {
              goto LABEL_28;
            }

            sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
            swift_dynamicCast();
            v34 = *&v144[0];

            if (!v34)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (!*(v31 + 16) || (v38 = sub_25B065C20(v32), (v39 & 1) == 0))
            {
LABEL_28:

LABEL_29:
              v144[0] = v145[0];
              sub_25B04C9BC(v35, v36, v37);
              v5 = sub_25B0E3B30();
              type metadata accessor for ComparisonResult(0);
              if (v5 < 2)
              {
                sub_25B08CF10(&v148);
                sub_25B08CF10(v145);
                v22 = v24;
                if (v141)
                {
                  v13 = v24 - 1;
                  goto LABEL_38;
                }
              }

              else
              {
                if (v5 != -1)
                {
                  *&v144[0] = v5;
                  goto LABEL_182;
                }

                v22 = v24;
                sub_25B08CF10(&v148);
                sub_25B08CF10(v145);
                if ((v141 & 1) == 0)
                {
                  goto LABEL_46;
                }
              }

              goto LABEL_9;
            }

            v34 = *(*(v31 + 56) + 8 * v38);

            if (!v34)
            {
              goto LABEL_29;
            }
          }

          *&v144[0] = 0;
          BYTE8(v144[0]) = 1;
          sub_25B0E3A20();

          if (BYTE8(v144[0]))
          {
            goto LABEL_29;
          }

          v139 = *&v144[0];
          v40 = v151;
          v41 = sub_25B0E3A10();
          v33 = v41;
          if ((v40 & 0xC000000000000001) != 0)
          {
            if (!sub_25B0E3CD0())
            {
              goto LABEL_28;
            }

            sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
            swift_dynamicCast();
            v42 = *&v144[0];

            if (!v42)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (!*(v40 + 16))
            {
              goto LABEL_28;
            }

            v43 = sub_25B065C20(v41);
            if ((v44 & 1) == 0)
            {
              goto LABEL_28;
            }

            v42 = *(*(v40 + 56) + 8 * v43);

            if (!v42)
            {
              goto LABEL_29;
            }
          }

          *&v144[0] = 0;
          BYTE8(v144[0]) = 1;
          sub_25B0E3A20();

          if (BYTE8(v144[0]))
          {
            goto LABEL_29;
          }

          v5 = *&v144[0];
          sub_25B08CF10(&v148);
          sub_25B08CF10(v145);
          v22 = v24;
          if (((v141 ^ (v5 >= v139)) & 1) == 0)
          {
            v13 = v24 - 1;
            if ((v141 & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          }

LABEL_9:
          ++v22;
          v23 += 72;
          if (v9 == v22)
          {
            v13 = v22 - 1;
            v22 = v9;
            break;
          }
        }
      }

      if ((v141 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_38:
      v12 = v136;
      if (v22 < v136)
      {
        goto LABEL_170;
      }

      if (v136 <= v13)
      {
        v9 = v136;
        v45 = 72 * v22 - 72;
        v46 = 72 * v136;
        v47 = v22;
        do
        {
          if (v9 != --v47)
          {
            v48 = *a3;
            if (!*a3)
            {
              goto LABEL_176;
            }

            v5 = v48 + v45;
            v149 = *(v48 + v46 + 16);
            v150 = *(v48 + v46 + 32);
            v151 = *(v48 + v46 + 48);
            v152 = *(v48 + v46 + 64);
            v148 = *(v48 + v46);
            memmove((v48 + v46), (v48 + v45), 0x48uLL);
            *(v5 + 16) = v149;
            *(v5 + 32) = v150;
            *(v5 + 48) = v151;
            *(v5 + 64) = v152;
            *v5 = v148;
          }

          ++v9;
          v45 -= 72;
          v46 += 72;
        }

        while (v9 < v47);
        v8 = a3;
LABEL_46:
        v12 = v136;
      }
    }

    v49 = v8[1];
    if (v22 < v49)
    {
      if (__OFSUB__(v22, v12))
      {
        goto LABEL_169;
      }

      if (v22 - v12 < a4)
      {
        break;
      }
    }

LABEL_86:
    if (v22 < v12)
    {
      goto LABEL_168;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_25B08993C(0, *(v11 + 2) + 1, 1, v11);
    }

    v85 = *(v11 + 2);
    v84 = *(v11 + 3);
    v5 = v85 + 1;
    if (v85 >= v84 >> 1)
    {
      v11 = sub_25B08993C((v84 > 1), v85 + 1, 1, v11);
    }

    *(v11 + 2) = v5;
    v86 = &v11[16 * v85];
    *(v86 + 4) = v136;
    *(v86 + 5) = v22;
    v9 = *isUniquelyReferenced_nonNull_native;
    if (!*isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_178;
    }

    v143 = v22;
    if (v85)
    {
      while (1)
      {
        v87 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v88 = *(v11 + 4);
          v89 = *(v11 + 5);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_106:
          if (v91)
          {
            goto LABEL_157;
          }

          v104 = &v11[16 * v5];
          v106 = *v104;
          v105 = *(v104 + 1);
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_160;
          }

          v110 = &v11[16 * v87 + 32];
          v112 = *v110;
          v111 = *(v110 + 1);
          v98 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v98)
          {
            goto LABEL_163;
          }

          if (__OFADD__(v108, v113))
          {
            goto LABEL_164;
          }

          if (v108 + v113 >= v90)
          {
            if (v90 < v113)
            {
              v87 = v5 - 2;
            }

            goto LABEL_127;
          }

          goto LABEL_120;
        }

        v114 = &v11[16 * v5];
        v116 = *v114;
        v115 = *(v114 + 1);
        v98 = __OFSUB__(v115, v116);
        v108 = v115 - v116;
        v109 = v98;
LABEL_120:
        if (v109)
        {
          goto LABEL_159;
        }

        v117 = &v11[16 * v87];
        v119 = *(v117 + 4);
        v118 = *(v117 + 5);
        v98 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v98)
        {
          goto LABEL_162;
        }

        if (v120 < v108)
        {
          goto LABEL_3;
        }

LABEL_127:
        v125 = v87 - 1;
        if (v87 - 1 >= v5)
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        if (!*v8)
        {
          goto LABEL_175;
        }

        v126 = *&v11[16 * v125 + 32];
        v127 = *&v11[16 * v87 + 40];
        sub_25B0DA274((*v8 + 72 * v126), (*v8 + 72 * *&v11[16 * v87 + 32]), (*v8 + 72 * v127), v9, v184);
        if (v7)
        {
        }

        if (v127 < v126)
        {
          goto LABEL_153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_25B0D3F4C(v11);
        }

        if (v125 >= *(v11 + 2))
        {
          goto LABEL_154;
        }

        v128 = &v11[16 * v125];
        *(v128 + 4) = v126;
        *(v128 + 5) = v127;
        v183 = v11;
        sub_25B0D3EC0(v87);
        v11 = v183;
        v5 = *(v183 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v92 = &v11[16 * v5 + 32];
      v93 = *(v92 - 64);
      v94 = *(v92 - 56);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_155;
      }

      v97 = *(v92 - 48);
      v96 = *(v92 - 40);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_156;
      }

      v99 = &v11[16 * v5];
      v101 = *v99;
      v100 = *(v99 + 1);
      v98 = __OFSUB__(v100, v101);
      v102 = v100 - v101;
      if (v98)
      {
        goto LABEL_158;
      }

      v98 = __OFADD__(v90, v102);
      v103 = v90 + v102;
      if (v98)
      {
        goto LABEL_161;
      }

      if (v103 >= v95)
      {
        v121 = &v11[16 * v87 + 32];
        v123 = *v121;
        v122 = *(v121 + 1);
        v98 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v98)
        {
          goto LABEL_165;
        }

        if (v90 < v124)
        {
          v87 = v5 - 2;
        }

        goto LABEL_127;
      }

      goto LABEL_106;
    }

LABEL_3:
    v9 = v8[1];
    v10 = v143;
    if (v143 >= v9)
    {
      goto LABEL_139;
    }
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_171;
  }

  if (v12 + a4 >= v49)
  {
    v50 = v8[1];
  }

  else
  {
    v50 = v12 + a4;
  }

  if (v50 < v12)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    v11 = sub_25B0D3F4C(v11);
LABEL_141:
    v183 = v11;
    v5 = *(v11 + 2);
    if (v5 >= 2)
    {
      while (1)
      {
        v129 = *v8;
        if (!*v8)
        {
          goto LABEL_177;
        }

        v130 = *&v11[16 * v5];
        v8 = *&v11[16 * v5 + 24];
        sub_25B0DA274((v129 + 72 * v130), (v129 + 72 * *&v11[16 * v5 + 16]), (v129 + 72 * v8), v9, v184);
        if (v7)
        {
        }

        if (v8 < v130)
        {
          goto LABEL_166;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_25B0D3F4C(v11);
        }

        if (v5 - 2 >= *(v11 + 2))
        {
          goto LABEL_167;
        }

        v131 = &v11[16 * v5];
        *v131 = v130;
        *(v131 + 1) = v8;
        v183 = v11;
        sub_25B0D3EC0(v5 - 1);
        v11 = v183;
        v5 = *(v183 + 2);
        v8 = a3;
        if (v5 <= 1)
        {
        }
      }
    }
  }

  if (v22 == v50)
  {
    goto LABEL_86;
  }

  v133 = v7;
  v51 = v22;
  v52 = *v8;
  v53 = *v8 + 72 * v51;
  v142 = v51;
  v54 = v12 - v51 + 1;
  v137 = v50;
LABEL_58:
  v55 = v54;
  for (i = v53; ; i -= 72)
  {
    v173 = *i;
    v57 = *(i + 16);
    v58 = *(i + 32);
    v59 = *(i + 48);
    v177 = *(i + 64);
    v175 = v58;
    v176 = v59;
    v174 = v57;
    v60 = *(i - 40);
    v61 = *(i - 24);
    v62 = *(i - 56);
    v182 = *(i - 8);
    v180 = v60;
    v181 = v61;
    v179 = v62;
    v178 = *(i - 72);
    v63 = v176;
    sub_25B08CEB4(&v173, &v168);
    sub_25B08CEB4(&v178, &v168);
    v64 = sub_25B0E3A10();
    v9 = v64;
    if ((v63 & 0xC000000000000001) != 0)
    {
      v65 = sub_25B0E3CD0();
      if (!v65)
      {
        goto LABEL_77;
      }

      *&v163 = v65;
      sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
      swift_dynamicCast();
      v66 = v168;

      if (!v66)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (!*(v63 + 16) || (v70 = sub_25B065C20(v64), (v71 & 1) == 0))
      {
LABEL_77:

        goto LABEL_78;
      }

      v66 = *(*(v63 + 56) + 8 * v70);

      if (!v66)
      {
        goto LABEL_78;
      }
    }

    *&v168 = 0;
    BYTE8(v168) = 1;
    sub_25B0E3A20();

    if (BYTE8(v168))
    {
      goto LABEL_78;
    }

    v140 = v168;
    v72 = v181;
    v73 = sub_25B0E3A10();
    v9 = v73;
    if ((v72 & 0xC000000000000001) != 0)
    {
      v74 = sub_25B0E3CD0();
      if (!v74)
      {
        goto LABEL_77;
      }

      *&v163 = v74;
      sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
      swift_dynamicCast();
      v75 = v168;

      if (!v75)
      {
        goto LABEL_78;
      }

LABEL_74:
      *&v168 = 0;
      BYTE8(v168) = 1;
      sub_25B0E3A20();

      if ((BYTE8(v168) & 1) == 0)
      {
        v5 = v168;
        sub_25B08CF10(&v178);
        sub_25B08CF10(&v173);
        if (v5 >= v140)
        {
          goto LABEL_57;
        }

        goto LABEL_80;
      }

      goto LABEL_78;
    }

    if (!*(v72 + 16))
    {
      goto LABEL_77;
    }

    v76 = sub_25B065C20(v73);
    if ((v77 & 1) == 0)
    {
      goto LABEL_77;
    }

    v75 = *(*(v72 + 56) + 8 * v76);

    if (v75)
    {
      goto LABEL_74;
    }

LABEL_78:
    v168 = v173;
    v163 = v178;
    sub_25B04C9BC(v67, v68, v69);
    v5 = sub_25B0E3B30();
    type metadata accessor for ComparisonResult(0);
    if (v5 != -1)
    {
      if (v5 >= 2)
      {
        goto LABEL_180;
      }

      sub_25B08CF10(&v178);
      sub_25B08CF10(&v173);
LABEL_57:
      v53 += 72;
      --v54;
      if (++v142 == v137)
      {
        v22 = v137;
        v7 = v133;
        v8 = a3;
        v12 = v136;
        goto LABEL_86;
      }

      goto LABEL_58;
    }

    sub_25B08CF10(&v178);
    sub_25B08CF10(&v173);
LABEL_80:
    if (!v52)
    {
      break;
    }

    v78 = i - 72;
    v169 = *(i + 16);
    v170 = *(i + 32);
    v171 = *(i + 48);
    v172 = *(i + 64);
    v168 = *i;
    v79 = *(i - 24);
    *(i + 32) = *(i - 40);
    *(i + 48) = v79;
    *(i + 64) = *(i - 8);
    v80 = *(i - 56);
    *i = *(i - 72);
    *(i + 16) = v80;
    *v78 = v168;
    v81 = v169;
    v82 = v170;
    v83 = v171;
    *(v78 + 64) = v172;
    *(v78 + 32) = v82;
    *(v78 + 48) = v83;
    *(v78 + 16) = v81;
    if (!v55)
    {
      goto LABEL_57;
    }

    ++v55;
  }

  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  *&v168 = v5;
LABEL_182:
  result = sub_25B0E3E60();
  __break(1u);
  return result;
}

uint64_t sub_25B0D9638(unint64_t *a1, uint64_t a2, char *a3, int64_t a4)
{
  v5 = v4;
  v126 = a1;
  v140 = type metadata accessor for BucketedFace(0);
  v137 = *(v140 - 8);
  v8 = MEMORY[0x28223BE20](v140);
  v129 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v139 = &v123 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v123 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v123 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v134 = (&v123 - v19);
  result = MEMORY[0x28223BE20](v18);
  v133 = &v123 - v21;
  v22 = *(a3 + 1);
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_118:
    a4 = *v126;
    if (!*v126)
    {
      goto LABEL_157;
    }

    v22 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v22;
      goto LABEL_121;
    }

LABEL_151:
    result = sub_25B0D3F4C(v22);
LABEL_121:
    v141 = result;
    v22 = *(result + 16);
    if (v22 >= 2)
    {
      while (*a3)
      {
        v119 = *(result + 16 * v22);
        v120 = result;
        v121 = *(result + 16 * (v22 - 1) + 40);
        sub_25B0DAA1C(*a3 + *(v137 + 72) * v119, *a3 + *(v137 + 72) * *(result + 16 * (v22 - 1) + 32), *a3 + *(v137 + 72) * v121, a4);
        if (v5)
        {
        }

        if (v121 < v119)
        {
          goto LABEL_144;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = sub_25B0D3F4C(v120);
        }

        if ((v22 - 2) >= *(v120 + 2))
        {
          goto LABEL_145;
        }

        v122 = &v120[16 * v22];
        *v122 = v119;
        *(v122 + 1) = v121;
        v141 = v120;
        sub_25B0D3EC0(v22 - 1);
        result = v141;
        v22 = *(v141 + 16);
        if (v22 <= 1)
        {
        }
      }

      goto LABEL_155;
    }
  }

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v127 = a3;
  v125 = a4;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    v130 = v24;
    if (v26 >= v22)
    {
      v46 = v26;
    }

    else
    {
      a4 = v25;
      v27 = *a3;
      v28 = *(v137 + 72);
      v29 = (v27 + v28 * v26);
      result = sub_25B0D6564(v29, (v27 + v28 * a4));
      LODWORD(v135) = result;
      if (v5)
      {
      }

      v138 = v22;
      v123 = a4;
      v124 = 0;
      v22 = a4 + 2;
      v30 = v27 + v28 * (a4 + 2);
      v31 = v28;
      v136 = v28;
      while (v138 != v22)
      {
        a4 = v133;
        sub_25B0DC234(v30, v133, type metadata accessor for BucketedFace);
        v32 = v134;
        sub_25B0DC234(v29, v134, type metadata accessor for BucketedFace);
        v33 = *(a4 + 16);
        v34 = *(a4 + 24);
        v35 = *(a4 + 32);
        v36 = *(a4 + 40);
        v37 = v32[2];
        v38 = v32[3];
        v39 = v32[4];
        v40 = v32[5];
        v41 = v39 == v35;
        v42 = v39 < v35;
        if (v41)
        {
          v42 = v32[6] < *(a4 + 48);
        }

        v41 = v38 == v34;
        v43 = v38 < v34;
        if (v41)
        {
          v43 = v42;
        }

        v41 = v37 == v33;
        v44 = v37 < v33;
        if (v41)
        {
          v44 = v43;
        }

        if (v40 == v36)
        {
          v45 = v44;
        }

        else
        {
          v45 = v40 < v36;
        }

        sub_25B0DC29C(v32, type metadata accessor for BucketedFace);
        result = sub_25B0DC29C(a4, type metadata accessor for BucketedFace);
        v31 = v136;
        ++v22;
        v30 += v136;
        v29 = (v29 + v136);
        if ((v135 & 1) != v45)
        {
          v46 = v22 - 1;
          goto LABEL_21;
        }
      }

      v46 = v138;
LABEL_21:
      v25 = v123;
      v5 = v124;
      a3 = v127;
      if ((v135 & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v46 < v123)
      {
        goto LABEL_150;
      }

      if (v123 < v46)
      {
        v22 = v31 * (v46 - 1);
        v47 = v46 * v31;
        v138 = v46;
        v48 = v46;
        v49 = v123;
        v50 = v123 * v31;
        do
        {
          if (v49 != --v48)
          {
            v51 = *v127;
            if (!*v127)
            {
              goto LABEL_154;
            }

            sub_25B0DC2FC(v51 + v50, v129, type metadata accessor for BucketedFace);
            if (v50 < v22 || v51 + v50 >= (v51 + v47))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v22)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_25B0DC2FC(v129, v51 + v22, type metadata accessor for BucketedFace);
            v31 = v136;
          }

          ++v49;
          v22 -= v31;
          v47 -= v31;
          v50 += v31;
        }

        while (v49 < v48);
        v5 = v124;
        a4 = v125;
        a3 = v127;
        v25 = v123;
        v46 = v138;
      }

      else
      {
LABEL_34:
        a4 = v125;
      }
    }

    v52 = *(a3 + 1);
    if (v46 >= v52)
    {
      goto LABEL_45;
    }

    if (__OFSUB__(v46, v25))
    {
      goto LABEL_147;
    }

    if (v46 - v25 >= a4)
    {
LABEL_45:
      v54 = v46;
      if (v46 < v25)
      {
        goto LABEL_146;
      }

      goto LABEL_46;
    }

    if (__OFADD__(v25, a4))
    {
      goto LABEL_148;
    }

    if (v25 + a4 >= v52)
    {
      v53 = *(a3 + 1);
    }

    else
    {
      v53 = v25 + a4;
    }

    if (v53 < v25)
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (v46 == v53)
    {
      goto LABEL_45;
    }

    v123 = v25;
    v124 = v5;
    v100 = *a3;
    v101 = *(v137 + 72);
    v102 = *a3 + v101 * (v46 - 1);
    v22 = -v101;
    v103 = v25 - v46;
    v138 = v46;
    v128 = v101;
    a4 = v100 + v46 * v101;
    v131 = v53;
LABEL_99:
    v132 = a4;
    v135 = v103;
    v136 = v102;
    v104 = v102;
LABEL_100:
    sub_25B0DC234(a4, v17, type metadata accessor for BucketedFace);
    sub_25B0DC234(v104, v14, type metadata accessor for BucketedFace);
    v105 = v17[5];
    v106 = v14[5];
    v107 = v106 < v105;
    if (v106 != v105)
    {
      break;
    }

    v108 = v17[2];
    v109 = v14[2];
    v107 = v109 < v108;
    if (v109 != v108)
    {
      break;
    }

    v110 = v17[3];
    v111 = v14[3];
    v107 = v111 < v110;
    if (v111 != v110)
    {
      break;
    }

    v112 = v17[4];
    v113 = v14[4];
    v107 = v113 < v112;
    if (v113 != v112)
    {
      break;
    }

    v114 = v17[6];
    v115 = v14[6];
    v107 = v115 < v114;
    if (v115 != v114)
    {
      break;
    }

    sub_25B0DC29C(v14, type metadata accessor for BucketedFace);
    sub_25B0DC29C(v17, type metadata accessor for BucketedFace);
LABEL_98:
    v102 = v136 + v128;
    v103 = v135 - 1;
    v54 = v131;
    a4 = v132 + v128;
    if (++v138 != v131)
    {
      goto LABEL_99;
    }

    v25 = v123;
    v5 = v124;
    a3 = v127;
    if (v131 < v123)
    {
      goto LABEL_146;
    }

LABEL_46:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v24 = v130;
    }

    else
    {
      result = sub_25B08993C(0, *(v130 + 2) + 1, 1, v130);
      v24 = result;
    }

    v22 = *(v24 + 2);
    v55 = *(v24 + 3);
    a4 = v22 + 1;
    if (v22 >= v55 >> 1)
    {
      result = sub_25B08993C((v55 > 1), v22 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = a4;
    v56 = &v24[16 * v22];
    *(v56 + 4) = v25;
    *(v56 + 5) = v54;
    v138 = *v126;
    if (!v138)
    {
      goto LABEL_156;
    }

    v131 = v54;
    if (v22)
    {
      while (2)
      {
        v57 = a4 - 1;
        if (a4 >= 4)
        {
          v62 = &v24[16 * a4 + 32];
          v63 = *(v62 - 64);
          v64 = *(v62 - 56);
          v68 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          if (v68)
          {
            goto LABEL_133;
          }

          v67 = *(v62 - 48);
          v66 = *(v62 - 40);
          v68 = __OFSUB__(v66, v67);
          v60 = v66 - v67;
          v61 = v68;
          if (v68)
          {
            goto LABEL_134;
          }

          v69 = &v24[16 * a4];
          v71 = *v69;
          v70 = *(v69 + 1);
          v68 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v68)
          {
            goto LABEL_136;
          }

          v68 = __OFADD__(v60, v72);
          v73 = v60 + v72;
          if (v68)
          {
            goto LABEL_139;
          }

          if (v73 >= v65)
          {
            v91 = &v24[16 * v57 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v68 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v68)
            {
              goto LABEL_143;
            }

            if (v60 < v94)
            {
              v57 = a4 - 2;
            }
          }

          else
          {
LABEL_65:
            if (v61)
            {
              goto LABEL_135;
            }

            v74 = &v24[16 * a4];
            v76 = *v74;
            v75 = *(v74 + 1);
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_138;
            }

            v80 = &v24[16 * v57 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v68 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v68)
            {
              goto LABEL_141;
            }

            if (__OFADD__(v78, v83))
            {
              goto LABEL_142;
            }

            if (v78 + v83 < v60)
            {
              goto LABEL_79;
            }

            if (v60 < v83)
            {
              v57 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v58 = *(v24 + 4);
            v59 = *(v24 + 5);
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
            goto LABEL_65;
          }

          v84 = &v24[16 * a4];
          v86 = *v84;
          v85 = *(v84 + 1);
          v68 = __OFSUB__(v85, v86);
          v78 = v85 - v86;
          v79 = v68;
LABEL_79:
          if (v79)
          {
            goto LABEL_137;
          }

          v87 = &v24[16 * v57];
          v89 = *(v87 + 4);
          v88 = *(v87 + 5);
          v68 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v68)
          {
            goto LABEL_140;
          }

          if (v90 < v78)
          {
            break;
          }
        }

        v22 = v57 - 1;
        if (v57 - 1 >= a4)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v96 = a3;
        a3 = v24;
        a4 = *&v24[16 * v22 + 32];
        v97 = *&v24[16 * v57 + 40];
        sub_25B0DAA1C(v95 + *(v137 + 72) * a4, v95 + *(v137 + 72) * *&v24[16 * v57 + 32], v95 + *(v137 + 72) * v97, v138);
        if (v5)
        {
        }

        if (v97 < a4)
        {
          goto LABEL_131;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v98 = a3;
        }

        else
        {
          v98 = sub_25B0D3F4C(a3);
        }

        if (v22 >= *(v98 + 2))
        {
          goto LABEL_132;
        }

        a3 = v96;
        v99 = &v98[16 * v22];
        *(v99 + 4) = a4;
        *(v99 + 5) = v97;
        v141 = v98;
        v22 = &v141;
        result = sub_25B0D3EC0(v57);
        v24 = v141;
        a4 = *(v141 + 16);
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v22 = *(a3 + 1);
    v23 = v131;
    a4 = v125;
    if (v131 >= v22)
    {
      goto LABEL_118;
    }
  }

  v116 = v107;
  sub_25B0DC29C(v14, type metadata accessor for BucketedFace);
  result = sub_25B0DC29C(v17, type metadata accessor for BucketedFace);
  if ((v116 & 1) == 0)
  {
    goto LABEL_98;
  }

  if (v100)
  {
    v117 = v139;
    sub_25B0DC2FC(a4, v139, type metadata accessor for BucketedFace);
    swift_arrayInitWithTakeFrontToBack();
    sub_25B0DC2FC(v117, v104, type metadata accessor for BucketedFace);
    v104 += v22;
    a4 += v22;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
  return result;
}

uint64_t sub_25B0DA024(char *__dst, char *__src, char *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = sub_25B0D5424(*v6);
      if (v18 < sub_25B0D5424(v17))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v26 = v6;
      v19 = v6 - 1;
      v5 -= 8;
      v20 = v14;
      while (1)
      {
        v21 = v5 + 8;
        v22 = *--v20;
        v6 = v19;
        v23 = *v19;
        v24 = sub_25B0D5424(v22);
        if (v24 < sub_25B0D5424(v23))
        {
          break;
        }

        if (v21 != v14)
        {
          *v5 = *v20;
        }

        v5 -= 8;
        v14 = v20;
        v19 = v6;
        if (v20 <= v4)
        {
          v14 = v20;
          v6 = v26;
          goto LABEL_35;
        }
      }

      if (v21 != v26)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_25B0DA274(char *__src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v78 = a5;
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = (__dst - __src) / 72;
  v11 = a3 - __dst;
  v12 = (a3 - __dst) / 72;
  if (v10 >= v12)
  {
    if (a4 != __dst || &__dst[72 * v12] <= a4)
    {
      memmove(a4, __dst, 72 * v12);
    }

    v13 = &v5[72 * v12];
    if (v11 < 72 || v7 <= v8)
    {
      goto LABEL_84;
    }

LABEL_44:
    v40 = v7 - 72;
    v41 = v13;
    while (1)
    {
      v13 = v41;
      v42 = v6;
      v68 = *(v41 - 72);
      v43 = *(v41 - 56);
      v44 = *(v41 - 40);
      v45 = *(v41 - 24);
      v72 = *(v41 - 8);
      v71 = v45;
      v69 = v43;
      v70 = v44;
      v46 = *(v7 - 24);
      v75 = *(v7 - 40);
      v76 = v46;
      v77 = *(v7 - 1);
      v47 = *(v7 - 56);
      v73 = *v40;
      v74 = v47;
      v48 = v45;
      sub_25B08CEB4(&v68, v67);
      sub_25B08CEB4(&v73, v67);
      v49 = sub_25B0E3A10();
      v50 = v49;
      if ((v48 & 0xC000000000000001) != 0)
      {
        if (!sub_25B0E3CD0())
        {
          goto LABEL_59;
        }

        sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
        swift_dynamicCast();
        v51 = *&v67[0];
      }

      else
      {
        if (!*(v48 + 16) || (v52 = sub_25B065C20(v49), (v53 & 1) == 0))
        {
LABEL_59:

          v6 -= 72;
LABEL_60:
          v67[0] = v68;
          sub_25B04C9BC(v54, v55, v56);
          v14 = sub_25B0E3B30();
          type metadata accessor for ComparisonResult(0);
          if (v14 >= 2)
          {
            if (v14 != -1)
            {
              goto LABEL_90;
            }

            sub_25B08CF10(&v73);
            sub_25B08CF10(&v68);
LABEL_75:
            if (v42 < v7 || v6 >= v7 || v42 != v7)
            {
              memmove(v6, v7 - 72, 0x48uLL);
            }

            if (v13 <= v5 || (v7 -= 72, v40 <= v8))
            {
              v7 = v40;
              goto LABEL_84;
            }

            goto LABEL_44;
          }

          sub_25B08CF10(&v73);
          sub_25B08CF10(&v68);
          goto LABEL_62;
        }

        v51 = *(*(v48 + 56) + 8 * v52);
      }

      v6 -= 72;
      if (!v51)
      {
        goto LABEL_60;
      }

      *&v67[0] = 0;
      BYTE8(v67[0]) = 1;
      sub_25B0E3A20();

      if (BYTE8(v67[0]))
      {
        goto LABEL_60;
      }

      v66 = *&v67[0];
      v57 = v76;
      v58 = sub_25B0E3A10();
      v59 = v58;
      if ((v57 & 0xC000000000000001) != 0)
      {
        if (!sub_25B0E3CD0())
        {
          goto LABEL_72;
        }

        sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
        swift_dynamicCast();
        v60 = *&v67[0];

        if (!v60)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (!*(v57 + 16) || (v61 = sub_25B065C20(v58), (v62 & 1) == 0))
        {
LABEL_72:

          goto LABEL_60;
        }

        v60 = *(*(v57 + 56) + 8 * v61);

        if (!v60)
        {
          goto LABEL_60;
        }
      }

      *&v67[0] = 0;
      BYTE8(v67[0]) = 1;
      sub_25B0E3A20();

      if (BYTE8(v67[0]))
      {
        goto LABEL_60;
      }

      v63 = *&v67[0];
      sub_25B08CF10(&v73);
      sub_25B08CF10(&v68);
      if (v63 < v66)
      {
        goto LABEL_75;
      }

LABEL_62:
      v41 = (v13 - 72);
      if (v42 < v13 || v6 >= v13 || v13 != v42)
      {
        memmove(v6, v13 - 72, 0x48uLL);
      }

      if (v41 <= v5)
      {
        v13 -= 72;
        goto LABEL_84;
      }
    }
  }

  if (a4 != __src || &__src[72 * v10] <= a4)
  {
    memmove(a4, __src, 72 * v10);
  }

  v13 = &v5[72 * v10];
  if (v9 >= 72 && v7 < v6)
  {
    v14 = MEMORY[0x277D837D0];
    do
    {
      v68 = *v7;
      v15 = *(v7 + 1);
      v16 = *(v7 + 2);
      v17 = *(v7 + 3);
      v72 = *(v7 + 8);
      v71 = v17;
      v69 = v15;
      v70 = v16;
      v19 = *(v5 + 2);
      v18 = *(v5 + 3);
      v20 = *(v5 + 1);
      v77 = *(v5 + 8);
      v75 = v19;
      v76 = v18;
      v74 = v20;
      v73 = *v5;
      v21 = v71;
      sub_25B08CEB4(&v68, v67);
      sub_25B08CEB4(&v73, v67);
      v22 = sub_25B0E3A10();
      v23 = v22;
      if ((v21 & 0xC000000000000001) != 0)
      {
        if (!sub_25B0E3CD0())
        {
          goto LABEL_26;
        }

        sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
        swift_dynamicCast();
        v24 = *&v67[0];

        if (!v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (!*(v21 + 16) || (v28 = sub_25B065C20(v22), (v29 & 1) == 0))
        {
LABEL_26:

          goto LABEL_27;
        }

        v24 = *(*(v21 + 56) + 8 * v28);

        if (!v24)
        {
          goto LABEL_27;
        }
      }

      *&v67[0] = 0;
      BYTE8(v67[0]) = 1;
      sub_25B0E3A20();

      if (BYTE8(v67[0]))
      {
        goto LABEL_27;
      }

      v30 = *&v67[0];
      v31 = v76;
      v32 = sub_25B0E3A10();
      v23 = v32;
      if ((v31 & 0xC000000000000001) != 0)
      {
        if (!sub_25B0E3CD0())
        {
          goto LABEL_26;
        }

        sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
        swift_dynamicCast();
        v33 = *&v67[0];

        if (!v33)
        {
          goto LABEL_27;
        }

LABEL_23:
        *&v67[0] = 0;
        BYTE8(v67[0]) = 1;
        sub_25B0E3A20();

        if ((BYTE8(v67[0]) & 1) == 0)
        {
          v36 = *&v67[0];
          sub_25B08CF10(&v73);
          sub_25B08CF10(&v68);
          if (v36 >= v30)
          {
            goto LABEL_29;
          }

          goto LABEL_36;
        }

        goto LABEL_27;
      }

      if (!*(v31 + 16))
      {
        goto LABEL_26;
      }

      v34 = sub_25B065C20(v32);
      if ((v35 & 1) == 0)
      {
        goto LABEL_26;
      }

      v33 = *(*(v31 + 56) + 8 * v34);

      if (v33)
      {
        goto LABEL_23;
      }

LABEL_27:
      v67[0] = v68;
      sub_25B04C9BC(v25, v26, v27);
      v37 = sub_25B0E3B30();
      type metadata accessor for ComparisonResult(0);
      if (v37 < 2)
      {
        sub_25B08CF10(&v73);
        sub_25B08CF10(&v68);
LABEL_29:
        v38 = v5;
        v39 = v8 == v5;
        v5 += 72;
        if (v39)
        {
          goto LABEL_31;
        }

LABEL_30:
        memmove(v8, v38, 0x48uLL);
        goto LABEL_31;
      }

      if (v37 != -1)
      {
        for (*&v67[0] = v37; ; *&v67[0] = v14)
        {
          sub_25B0E3E60();
          __break(1u);
LABEL_90:
          ;
        }
      }

      sub_25B08CF10(&v73);
      sub_25B08CF10(&v68);
LABEL_36:
      v38 = v7;
      v39 = v8 == v7;
      v7 += 72;
      if (!v39)
      {
        goto LABEL_30;
      }

LABEL_31:
      v8 += 72;
    }

    while (v5 < v13 && v7 < v6);
  }

  v7 = v8;
LABEL_84:
  v64 = (v13 - v5) / 72;
  if (v7 != v5 || v7 >= &v5[72 * v64])
  {
    memmove(v7, v5, 72 * v64);
  }

  return 1;
}

unint64_t sub_25B0DAA1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v77 = a4;
  v78 = type metadata accessor for BucketedFace(0);
  v7 = MEMORY[0x28223BE20](v78);
  v76 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v75 = (&v68 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v68 - v12);
  result = MEMORY[0x28223BE20](v11);
  v16 = (&v68 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_80;
  }

  v19 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v18 != -1)
  {
    v20 = (a2 - a1) / v18;
    v81 = a1;
    v21 = v77;
    v80 = v77;
    if (v20 < v19 / v18)
    {
      v22 = v20 * v18;
      if (v77 < a1 || a1 + v22 <= v77)
      {
        v23 = result;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v77 == a1)
        {
          goto LABEL_17;
        }

        v23 = result;
        swift_arrayInitWithTakeBackToFront();
      }

      result = v23;
      v21 = v77;
LABEL_17:
      v27 = v21 + v22;
      v79 = v21 + v22;
      if (v22 >= 1 && result < a3)
      {
        v77 = a3;
        while (1)
        {
          v29 = result;
          sub_25B0DC234(result, v16, type metadata accessor for BucketedFace);
          sub_25B0DC234(v21, v13, type metadata accessor for BucketedFace);
          v30 = v16[5];
          v31 = v13[5];
          v32 = v31 < v30;
          if (v31 == v30 && (v33 = v16[2], v34 = v13[2], v32 = v34 < v33, v34 == v33) && (v35 = v16[3], v36 = v13[3], v32 = v36 < v35, v36 == v35) && (v37 = v16[4], v38 = v13[4], v32 = v38 < v37, v38 == v37))
          {
            v39 = v21;
            v40 = v16[6];
            v41 = v13[6];
            v32 = v41 < v40;
            if (v41 == v40)
            {
              sub_25B0DC29C(v13, type metadata accessor for BucketedFace);
              sub_25B0DC29C(v16, type metadata accessor for BucketedFace);
              goto LABEL_37;
            }
          }

          else
          {
            v39 = v21;
          }

          v42 = v32;
          sub_25B0DC29C(v13, type metadata accessor for BucketedFace);
          sub_25B0DC29C(v16, type metadata accessor for BucketedFace);
          if (v42)
          {
            if (a1 < v29 || a1 >= v29 + v18)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = v29 + v18;
            v21 = v39;
            v44 = v77;
            goto LABEL_45;
          }

LABEL_37:
          v43 = v39;
          v21 = v39 + v18;
          if (a1 < v39 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
            v44 = v77;
          }

          else
          {
            v44 = v77;
            if (a1 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v80 = v21;
          result = v29;
LABEL_45:
          a1 += v18;
          v81 = a1;
          if (v21 >= v27 || result >= v44)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_78;
    }

    v24 = v77;
    v25 = v19 / v18 * v18;
    if (v77 < result || result + v25 <= v77)
    {
      v26 = result;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v77 == result)
      {
LABEL_50:
        v45 = v24 + v25;
        if (v25 >= 1)
        {
          v46 = -v18;
          v47 = v45;
          v73 = -v18;
          v71 = a1;
          do
          {
            v69 = v45;
            v48 = result + v46;
            v74 = result + v46;
            v72 = result;
            while (1)
            {
              if (result <= a1)
              {
                v81 = result;
                v79 = v69;
                goto LABEL_78;
              }

              v49 = a3;
              v70 = v45;
              v50 = v73;
              v51 = v47 + v73;
              v52 = v75;
              sub_25B0DC234(v47 + v73, v75, type metadata accessor for BucketedFace);
              v53 = v76;
              sub_25B0DC234(v48, v76, type metadata accessor for BucketedFace);
              v54 = v52[2];
              v55 = v52[3];
              v56 = v52[4];
              v57 = v52[5];
              v58 = v53[2];
              v59 = v53[3];
              v60 = v53[4];
              v61 = v53[5];
              v62 = v60 == v56;
              v63 = v60 < v56;
              if (v62)
              {
                v63 = v53[6] < v52[6];
              }

              v62 = v59 == v55;
              v64 = v59 < v55;
              if (v62)
              {
                v64 = v63;
              }

              v62 = v58 == v54;
              v65 = v58 < v54;
              if (v62)
              {
                v65 = v64;
              }

              v66 = v61 == v57 ? v65 : v61 < v57;
              a3 += v50;
              sub_25B0DC29C(v53, type metadata accessor for BucketedFace);
              sub_25B0DC29C(v52, type metadata accessor for BucketedFace);
              if (v66)
              {
                break;
              }

              v45 = v47 + v50;
              if (v49 < v47 || a3 >= v47)
              {
                swift_arrayInitWithTakeFrontToBack();
                a1 = v71;
              }

              else
              {
                a1 = v71;
                if (v49 != v47)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v47 = v51;
              v48 = v74;
              result = v72;
              if (v51 <= v77)
              {
                goto LABEL_76;
              }
            }

            if (v49 < v72 || a3 >= v72)
            {
              v67 = v74;
              swift_arrayInitWithTakeFrontToBack();
              result = v67;
              v45 = v70;
              a1 = v71;
              v46 = v73;
            }

            else
            {
              v62 = v49 == v72;
              v46 = v73;
              result = v74;
              v45 = v70;
              a1 = v71;
              if (!v62)
              {
                swift_arrayInitWithTakeBackToFront();
                result = v74;
              }
            }
          }

          while (v47 > v77);
        }

LABEL_76:
        v81 = result;
        v79 = v45;
LABEL_78:
        sub_25B0D3F90(&v81, &v80, &v79);
        return 1;
      }

      v26 = result;
      swift_arrayInitWithTakeBackToFront();
    }

    result = v26;
    goto LABEL_50;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_25B0DB028(__int128 *a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x25F860A80](v7);
  v25 = v7;
  if (v7)
  {
    v9 = 0;
    v24 = a2 + 32;
    v10 = (v23 + 8);
    do
    {
      v11 = (v24 + 72 * v9);
      v12 = v11[1];
      v31 = *v11;
      v13 = v11[3];
      v15 = v11[4];
      v14 = v11[5];
      v26 = v11[2];
      v27 = v15;
      v17 = v11[6];
      v16 = v11[7];
      v28 = v11[8];
      v33 = v14;

      v32 = v17;

      v34 = v16;

      v30 = v12;
      sub_25B0E3780();
      sub_25B0E3F30();
      if (v13)
      {
        sub_25B0E3780();
      }

      v31 = v9;
      v29 = v13;
      if (v33)
      {
        sub_25B0E3F30();
        sub_25B0E3780();
      }

      else
      {
        sub_25B0E3F30();
      }

      sub_25B0AD448(a1, v32);
      v18 = v34;
      MEMORY[0x25F860A80](*(v34 + 16));
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v34 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v21 = *(v23 + 72);
        v22 = *(v23 + 16);
        do
        {
          v22(v6, v20, v4);
          sub_25B0DB5D0();
          sub_25B0E36D0();
          (*v10)(v6, v4);
          v20 += v21;
          --v19;
        }

        while (v19);
      }

      v9 = v31 + 1;
      MEMORY[0x25F860A80](v28);
    }

    while (v9 != v25);
  }

  return result;
}

uint64_t sub_25B0DB2E0(__int128 *a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x25F860A80](v7);
  v26 = v7;
  if (v7)
  {
    v9 = 0;
    v25 = a2 + 32;
    v10 = (v24 + 8);
    do
    {
      v31 = v9;
      v12 = (v25 + 96 * v9);
      v13 = v12[1];
      v33 = *v12;
      v34 = v13;
      v14 = v12[3];
      v35 = v12[2];
      v36 = v14;
      v15 = v12[5];
      v37 = v12[4];
      v38 = v15;
      v27 = *(&v34 + 1);
      v28 = *(&v35 + 1);
      v16 = v35;
      v29 = *(&v36 + 1);
      v17 = v36;
      v30 = v37;
      MEMORY[0x25F860A80](v33);
      sub_25B08CE58(&v33, v32);
      sub_25B0E3780();
      sub_25B0E3F30();
      if (v16)
      {
        sub_25B0E3780();
      }

      v18 = v30;
      sub_25B0E3F30();
      if (v17)
      {
        sub_25B0E3780();
      }

      sub_25B0AD448(a1, v29);
      MEMORY[0x25F860A80](*(v18 + 16));
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v21 = *(v24 + 72);
        v22 = *(v24 + 16);
        do
        {
          v22(v6, v20, v4);
          sub_25B0DB5D0();
          sub_25B0E36D0();
          (*v10)(v6, v4);
          v20 += v21;
          --v19;
        }

        while (v19);
      }

      v11 = v38;
      v9 = v31 + 1;
      MEMORY[0x25F860A80](*(&v30 + 1));
      sub_25B0DB028(a1, v11);
      MEMORY[0x25F860A80](*(&v11 + 1));
      result = sub_25B0A3DE0(&v33);
    }

    while (v9 != v26);
  }

  return result;
}

unint64_t sub_25B0DB5D0()
{
  result = qword_27FA312D0;
  if (!qword_27FA312D0)
  {
    sub_25B0E2750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA312D0);
  }

  return result;
}

BOOL sub_25B0DB628(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v9 = a2[3];
  v8 = a2[4];
  v11 = a2[5];
  v10 = a2[6];
  v20 = a2[7];
  v21 = a1[7];
  v18 = a2[8];
  v19 = a1[8];
  v16 = a2[9];
  v17 = a1[9];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8 || (v4 != v9 || v5 != v8) && (sub_25B0E3E30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (!v7)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v10 || (v6 != v11 || v7 != v10) && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  sub_25B0AD0C8(v21, v20);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = sub_25B0A379C(v19, v18);
  result = 0;
  if ((v14 & 1) != 0 && v17 == v16)
  {
    sub_25B0A2BE0(a1[10], a2[10]);
    if (v15)
    {
      return a1[11] == a2[11];
    }

    return 0;
  }

  return result;
}

uint64_t sub_25B0DB7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_25B0C738C(a1, a2, a3);
  result = MEMORY[0x25F860560](v4, &type metadata for GalleryManager.Row, v5);
  v14 = result;
  if (v4)
  {
    v7 = a1 + 32;
    do
    {
      v8 = *(v7 + 48);
      v15[2] = *(v7 + 32);
      v15[3] = v8;
      v16 = *(v7 + 64);
      v9 = *(v7 + 16);
      v15[0] = *v7;
      v15[1] = v9;
      sub_25B08CEB4(v15, v12);
      sub_25B0A9604(v10, v15);
      v12[2] = v10[2];
      v12[3] = v10[3];
      v13 = v11;
      v12[0] = v10[0];
      v12[1] = v10[1];
      sub_25B08CF10(v12);
      v7 += 72;
      --v4;
    }

    while (v4);
    return v14;
  }

  return result;
}

uint64_t sub_25B0DB87C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = a3;
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v38 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = *a1;
  v27 = a1[1];
  v28 = v11;
  v12 = a1[6];
  v13 = a1[7];
  v14 = *(v13 + 16);

  v29 = v12;

  v37 = v14;
  if (v14)
  {
    v16 = 0;
    v31 = (v6 + 8);
    v35 = (v6 + 32);
    v36 = v6 + 16;
    v17 = MEMORY[0x277D84F90];
    v33 = a2;
    v34 = v5;
    v32 = v13;
    while (v16 < *(v13 + 16))
    {
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v19 = *(v6 + 72);
      (*(v6 + 16))(v10, v13 + v18 + v19 * v16, v5);
      if (sub_25B0D72D4(v10, a2))
      {
        v20 = *v35;
        (*v35)(v38, v10, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25B08C250(0, *(v17 + 16) + 1, 1);
          v17 = v39;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_25B08C250((v22 > 1), v23 + 1, 1);
          v17 = v39;
        }

        *(v17 + 16) = v23 + 1;
        v24 = v17 + v18 + v23 * v19;
        v5 = v34;
        result = (v20)(v24, v38, v34);
        v13 = v32;
        a2 = v33;
      }

      else
      {
        result = (*v31)(v10, v5);
      }

      if (v37 == ++v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v31)(v10, v5);

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_13:
    v25 = v30;
    v26 = v27;
    *v30 = v28;
    v25[1] = v26;
    *(v25 + 1) = 0u;
    *(v25 + 2) = 0u;
    v25[6] = v29;
    v25[7] = v17;
    v25[8] = -1;
  }

  return result;
}

uint64_t sub_25B0DBB48(uint64_t a1)
{
  v58 = type metadata accessor for LinkedFace(0);
  v59 = *(v58 - 8);
  v4 = MEMORY[0x28223BE20](v58);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - v6;
  v8 = MEMORY[0x277D84F90];
  v55 = *(a1 + 16);
  if (v55)
  {
    v9 = 0;
    v54 = a1 + 32;
    v10 = MEMORY[0x277D84F90];
    v53 = a1;
    while (1)
    {
      if (v9 >= *(a1 + 16))
      {
        goto LABEL_48;
      }

      v11 = (v54 + 72 * v9);
      v12 = v11[2];
      v65 = v11[3];
      *&v66 = *(v11 + 8);
      v13 = *v11;
      v63 = v11[1];
      v64 = v12;
      v62 = v13;
      v14 = *(&v65 + 1);
      v15 = *(*(&v65 + 1) + 16);
      if (v15)
      {
        v56 = v9;
        v57 = v10;
        sub_25B08CEB4(&v62, v60);
        v61 = v8;
        sub_25B08C1A8(0, v15, 0);
        v16 = v61;
        v17 = sub_25B0E2750();
        v18 = *(v17 - 8);
        v19 = *(v18 + 16);
        v20 = v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v21 = *(v18 + 72);
        do
        {
          v19(&v7[*(v58 + 20)], v20, v17);
          v22 = v63;
          v23 = v65;
          *(v7 + 2) = v64;
          *(v7 + 3) = v23;
          *(v7 + 8) = v66;
          *v7 = v62;
          *(v7 + 1) = v22;
          sub_25B08CEB4(&v62, v60);
          v61 = v16;
          v25 = *(v16 + 16);
          v24 = *(v16 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_25B08C1A8((v24 > 1), v25 + 1, 1);
            v16 = v61;
          }

          *(v16 + 16) = v25 + 1;
          sub_25B0DC2FC(v7, v16 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + v59[9] * v25, type metadata accessor for LinkedFace);
          v20 += v21;
          --v15;
        }

        while (v15);
        sub_25B08CF10(&v62);
        v8 = MEMORY[0x277D84F90];
        v10 = v57;
        a1 = v53;
        v9 = v56;
      }

      else
      {
        v16 = v8;
      }

      v26 = *(v16 + 16);
      v1 = v10[2];
      v2 = (v1 + v26);
      if (__OFADD__(v1, v26))
      {
        goto LABEL_49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v28 = v10[3] >> 1, v28 >= v2))
      {
        if (!*(v16 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v1 <= v2)
        {
          v29 = v1 + v26;
        }

        else
        {
          v29 = v1;
        }

        v10 = sub_25B089C70(isUniquelyReferenced_nonNull_native, v29, 1, v10);
        v28 = v10[3] >> 1;
        if (!*(v16 + 16))
        {
LABEL_3:

          if (v26)
          {
            goto LABEL_50;
          }

          goto LABEL_4;
        }
      }

      if (v28 - v10[2] < v26)
      {
        goto LABEL_53;
      }

      swift_arrayInitWithCopy();

      if (v26)
      {
        v30 = v10[2];
        v31 = __OFADD__(v30, v26);
        v32 = v30 + v26;
        if (v31)
        {
          goto LABEL_54;
        }

        v10[2] = v32;
      }

LABEL_4:
      if (++v9 == v55)
      {
        goto LABEL_27;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_27:

  *&v62 = MEMORY[0x277D84F98];
  v33 = v10[2];
  if (v33)
  {
    v34 = 0;
    v2 = 0;
    v1 = v52;
    while (v34 < v10[2])
    {
      sub_25B0DC234(v10 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + v59[9] * v34, v1, type metadata accessor for LinkedFace);
      sub_25B0D4F50(&v62, v1);
      ++v34;
      sub_25B0DC29C(v1, type metadata accessor for LinkedFace);
      if (v33 == v34)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v2 = 0;
LABEL_33:

  v1 = v62;
  v35 = *(v62 + 16);
  if (v35)
  {
    v36 = v8;
    v37 = sub_25B0B3364(*(v62 + 16), 0);
    v59 = sub_25B0B3664(&v62, v37 + 4, v35, v1);
    v38 = v62;
    swift_bridgeObjectRetain_n();
    sub_25B043EC8(v38);
    if (v59 != v35)
    {
LABEL_55:
      __break(1u);

      sub_25B0DC29C(v1, type metadata accessor for LinkedFace);

      __break(1u);

      __break(1u);
      return result;
    }

    v8 = v36;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  *&v62 = v37;
  sub_25B0D77C4(&v62);

  v2 = v62;
  v39 = *(v62 + 16);
  if (v39)
  {
    v60[0] = v8;
    sub_25B08C188(0, v39, 0);
    v40 = 0;
    v41 = v60[0];
    v42 = v2[2];
    while (v42 != v40)
    {
      if (v40 >= v2[2])
      {
        goto LABEL_52;
      }

      sub_25B0D5CD8(v40, v2[v40 + 4], v1, &v62);
      v60[0] = v41;
      v44 = *(v41 + 16);
      v43 = *(v41 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_25B08C188((v43 > 1), v44 + 1, 1);
        v41 = v60[0];
      }

      ++v40;
      *(v41 + 16) = v44 + 1;
      v45 = (v41 + 96 * v44);
      v46 = v63;
      v45[2] = v62;
      v45[3] = v46;
      v47 = v64;
      v48 = v65;
      v49 = v67;
      v45[6] = v66;
      v45[7] = v49;
      v45[4] = v47;
      v45[5] = v48;
      if (v39 == v40)
      {

        return v41;
      }
    }

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

  return MEMORY[0x277D84F90];
}

uint64_t sub_25B0DC234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0DC29C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25B0DC2FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25B0DC38C(uint64_t a1)
{
  type metadata accessor for NTKFaceCurationGroup(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NTKFaceCurationPlacement(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LinkedFace(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25B0DC450(uint64_t a1)
{
  result = sub_25B0E2750();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25B0DC4CC()
{
  v0 = sub_25B0E22E0();
  __swift_allocate_value_buffer(v0, qword_27FA399C8);
  v1 = __swift_project_value_buffer(v0, qword_27FA399C8);
  *v1 = type metadata accessor for NFGFaceGalleryViewController(0);
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_25B0DC5A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25B0E2970();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_25B0E2960();
}

NFGClockFaceRefreshers __swiftcall NFGClockFaceRefreshers.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for NFGClockFaceRefreshers()
{
  result = qword_27FA32EC0;
  if (!qword_27FA32EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA32EC0);
  }

  return result;
}

id sub_25B0DC754(uint64_t a1, uint64_t a2, char a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  v36[3] = type metadata accessor for GalleryLoader();
  v36[4] = &off_286C5AC58;
  v36[0] = a2;
  v9 = &a4[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  v10 = [objc_opt_self() weakObjectsHashTable];
  *v9 = 0;
  *(v9 + 8) = xmmword_25B0EAE90;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 5) = v10;
  *(v9 + 6) = 0;
  v11 = OBJC_IVAR___NFGFaceSnapshotRefresher_queue;
  if (qword_27FA30C90 != -1)
  {
    swift_once();
  }

  *&a4[v11] = qword_27FA31318;
  v12 = qword_27FA30D08;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_25B0E2970();
  __swift_project_value_buffer(v13, qword_27FA31930);
  sub_25B049F48(v36, v35);
  v14 = sub_25B0E2950();
  v15 = sub_25B0E3A50();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v16 = 136315394;
    v17 = __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    MEMORY[0x28223BE20](v17);
    v32 = ObjectType;
    (*(v19 + 16))(&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = sub_25B0E3760();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v35);
    v23 = sub_25B04BE04(v20, v22, &v33);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    if (a3)
    {
      v24 = 0x3E656C6174533CLL;
    }

    else
    {
      v24 = 0x676E697373694D3CLL;
    }

    if (a3)
    {
      v25 = 0xE700000000000000;
    }

    else
    {
      v25 = 0xE90000000000003ELL;
    }

    v26 = sub_25B04BE04(v24, v25, &v33);
    ObjectType = v32;

    *(v16 + 14) = v26;
    _os_log_impl(&dword_25B03D000, v14, v15, "Refresher created with loader %s with policy %s…", v16, 0x16u);
    v27 = v31;
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v27, -1, -1);
    MEMORY[0x25F8613E0](v16, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  *&a4[OBJC_IVAR___NFGFaceSnapshotRefresher_device] = a1;
  sub_25B049F48(v36, &a4[OBJC_IVAR___NFGFaceSnapshotRefresher_loader]);
  a4[OBJC_IVAR___NFGFaceSnapshotRefresher_refreshPolicy] = a3 & 1;
  v34.receiver = a4;
  v34.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v34, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v28;
}

id sub_25B0DCB18(void *a1)
{
  v2 = type metadata accessor for GalleryLoader();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v12[3] = v2;
  v12[4] = &off_286C5AC58;
  v12[0] = v3;
  v4 = objc_allocWithZone(type metadata accessor for FaceSnapshotRefresher());
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v2);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_25B0DC754(a1, *v7, 1, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t sub_25B0DCC44()
{
  type metadata accessor for GalleryManager(0);
  swift_allocObject();
  result = sub_25B0AB948();
  qword_27FA32ED0 = result;
  return result;
}

id NFGFaceGalleryViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_25B0E3730();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

{

  v5 = &v3[OBJC_IVAR___NFGFaceGalleryViewController_task];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR___NFGFaceGalleryViewController_refresher];
  *v6 = 0;
  *(v6 + 1) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27FA30D38 != -1)
  {
    swift_once();
  }

  *&v3[OBJC_IVAR___NFGFaceGalleryViewController_manager] = qword_27FA32ED0;
  v9.receiver = v3;
  v9.super_class = NFGFaceGalleryViewController;

  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  [v7 commonInit];

  return v7;
}

id NFGFaceGalleryViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id NFGFaceGalleryViewController.init(delegate:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

char *NFGFaceGalleryViewController.init(delegate:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___NFGFaceGalleryViewController_task];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR___NFGFaceGalleryViewController_refresher];
  *v3 = 0;
  *(v3 + 1) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27FA30D38 != -1)
  {
    swift_once();
  }

  *&v1[OBJC_IVAR___NFGFaceGalleryViewController_manager] = qword_27FA32ED0;
  v7.receiver = v1;
  v7.super_class = NFGFaceGalleryViewController;

  v4 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectWeakAssign();
  v5 = v4;
  [v5 commonInit];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_25B0DD26C(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;

  sub_25B0E3900();
  sub_25B0E38F0();
  v6 = MEMORY[0x277D85700];
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_25B0E3940();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = sub_25B0E38F0();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = v8;

  v11 = sub_25B052F48(0, 0, v5, &unk_25B0EAEB0, v10);

  *a1 = v11;
  return result;
}

id sub_25B0DD520()
{
  v1 = &v0[OBJC_IVAR___NFGFaceGalleryViewController_task];
  os_unfair_lock_lock(&v0[OBJC_IVAR___NFGFaceGalleryViewController_task]);
  if (*(v1 + 1))
  {
    sub_25B0E39E0();
  }

  os_unfair_lock_unlock(v1);
  v2 = &v0[OBJC_IVAR___NFGFaceGalleryViewController_refresher];
  os_unfair_lock_lock(&v0[OBJC_IVAR___NFGFaceGalleryViewController_refresher]);
  sub_25B0DD5D8(v2 + 1, &v5);
  os_unfair_lock_unlock(v2);
  v4.receiver = v0;
  v4.super_class = NFGFaceGalleryViewController;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_25B0DD5D8(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3)
  {
    v9[0] = 0;
    v4 = [v3 cancelRefreshingWithError_];
    v5 = v9[0];
    if (v4)
    {
      *a2 = 0;
      v6 = v5;
      return;
    }

    v7 = v9[0];
    v8 = sub_25B0E22D0();

    swift_willThrow();
  }

  *a2 = 1;
}

uint64_t sub_25B0DD774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F30, &unk_25B0E8AD8);
  v4[10] = swift_task_alloc();
  v5 = sub_25B0E3A90();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = sub_25B0E3900();
  v4[15] = sub_25B0E38F0();
  v7 = sub_25B0E3850();
  v4[16] = v7;
  v4[17] = v6;

  return MEMORY[0x2822009F8](sub_25B0DD8A4, v7, v6);
}

uint64_t sub_25B0DD8A4()
{
  v1 = objc_opt_self();
  v0[18] = v1;
  v2 = [v1 currentDevice];
  v0[19] = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR___NFGFaceGalleryViewController_refresher;
    os_unfair_lock_lock((Strong + OBJC_IVAR___NFGFaceGalleryViewController_refresher));
    sub_25B0DDF38((v5 + 8), v2);
    os_unfair_lock_unlock(v5);
  }

  v6 = [objc_opt_self() defaultCenter];
  sub_25B0E3AA0();

  sub_25B0E3A80();
  swift_beginAccess();
  v0[20] = sub_25B0E38F0();
  v7 = sub_25B0DEA60();
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_25B0DDA70;
  v9 = v0[10];
  v10 = v0[11];

  return MEMORY[0x282200308](v9, v10, v7);
}

uint64_t sub_25B0DDA70()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_25B0E3850();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_25B0AC6B8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_25B0E3850();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_25B0DDC08;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_25B0DDC08()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_25B0DDC6C, v1, v2);
}

void sub_25B0DDC6C()
{
  v1 = *(v0 + 80);
  v2 = sub_25B0E22B0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 152);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

LABEL_8:

    v11 = *(v0 + 8);

    v11();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v9 = *(v0 + 152);
    v10 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v8 = v10;
    goto LABEL_7;
  }

  v5 = Strong;
  if (sub_25B0E39F0())
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v8 = v7;
LABEL_7:
    sub_25B058448(v8, &unk_27FA32F30, &unk_25B0E8AD8);
    goto LABEL_8;
  }

  v12 = *(v0 + 176);
  v13 = [*(v0 + 144) currentDevice];
  v14 = &v5[OBJC_IVAR___NFGFaceGalleryViewController_refresher];
  os_unfair_lock_lock(&v5[OBJC_IVAR___NFGFaceGalleryViewController_refresher]);
  sub_25B0DDF38(v14 + 1, v13);
  if (v12)
  {

    os_unfair_lock_unlock(v14);
  }

  else
  {
    v15 = *(v0 + 80);
    os_unfair_lock_unlock(v14);

    sub_25B058448(v15, &unk_27FA32F30, &unk_25B0E8AD8);
    *(v0 + 160) = sub_25B0E38F0();
    v16 = sub_25B0DEA60();
    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v17[1] = sub_25B0DDA70;
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);

    MEMORY[0x282200308](v18, v19, v16);
  }
}

void sub_25B0DDF38(void **a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  if (*a1)
  {
    v14[0] = 0;
    if ([v4 cancelRefreshingWithError_])
    {
      v5 = v14[0];
    }

    else
    {
      v6 = v14[0];
      v7 = sub_25B0E22D0();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  *a1 = 0;
  if (!a2)
  {

    return;
  }

  v8 = objc_opt_self();
  v9 = a2;
  v10 = [v8 galleryRefresherForDevice_];
  *a1 = v10;
  if (!v10)
  {

    goto LABEL_14;
  }

  v14[0] = 0;
  if ([swift_unknownObjectRetain() startRefreshingWithError_])
  {
    v11 = v14[0];

    swift_unknownObjectRelease();
LABEL_14:

    return;
  }

  v12 = v14[0];
  v13 = sub_25B0E22D0();

  swift_willThrow();

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall NFGFaceGalleryViewController.viewDidLoad()()
{
  v1 = v0;
  v23.super_class = NFGFaceGalleryViewController;
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v3 = sub_25B0E3730();
  [v2 initWithSuiteName_];

  sub_25B0E29E0();

  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32EF8, &qword_25B0EAEA0));

  v5 = sub_25B0E2F20();
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addChildViewController_];
  v8 = [v1 view];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  [v8 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25B0E6410;
  v11 = [v7 widthAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  v14 = [v12 widthAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v10 + 32) = v15;
  v16 = [v7 heightAnchor];
  v17 = [v1 view];
  if (v17)
  {
    v18 = v17;
    v19 = objc_opt_self();
    v20 = [v18 heightAnchor];

    v21 = [v16 constraintEqualToAnchor_];
    *(v10 + 40) = v21;
    sub_25B046E60(0, &unk_27FA33020, 0x277CCAAD0);
    v22 = sub_25B0E37E0();

    [v19 activateConstraints_];

    [v5 didMoveToParentViewController_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_25B0DE4F8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong delegate];
    if (v13)
    {
      [v13 didDismissWithFace:a1 frame:{a3, a4, a5, a6}];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall NFGFaceGalleryViewController.run(test:options:)(Swift::String test, Swift::OpaquePointer options)
{
  v3 = [v2 childViewControllers];
  sub_25B046E60(0, &unk_27FA32F10, 0x277D75D28);
  v4 = sub_25B0E37F0();

  if (v4 >> 62)
  {
    if (sub_25B0E3CC0())
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F860730](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32EF8, &qword_25B0EAEA0);
  if (swift_dynamicCastClass())
  {
    sub_25B0E2F10();
  }
}

void _sSo28NFGFaceGalleryViewControllerC08NanoFaceB0E5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR___NFGFaceGalleryViewController_task;
  *v1 = 0;
  *(v1 + 8) = 0;
  v2 = v0 + OBJC_IVAR___NFGFaceGalleryViewController_refresher;
  *v2 = 0;
  *(v2 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_25B0E3D00();
  __break(1u);
}

uint64_t sub_25B0DE9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B0498DC;

  return sub_25B0DD774(a1, v4, v5, v6);
}

unint64_t sub_25B0DEA60()
{
  result = qword_27FA31D58;
  if (!qword_27FA31D58)
  {
    sub_25B0E3A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31D58);
  }

  return result;
}

uint64_t sub_25B0DEAE0()
{
  v1 = OBJC_IVAR____TtC15NanoFaceGalleryP33_5621AA947CF506B68CF63C7E16CC7EB411WrappedFace_face;
  v2 = sub_25B0E2750();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

Swift::Void __swiftcall NFGFaceSnapshotViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for FacePlacement.Location(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FaceView(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v36.receiver = v1;
  v36.super_class = NFGFaceSnapshotViewController;
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  (*(v6 + 16))(v8, *&v1[OBJC_IVAR___NFGFaceSnapshotViewController_wrappedFace] + OBJC_IVAR____TtC15NanoFaceGalleryP33_5621AA947CF506B68CF63C7E16CC7EB411WrappedFace_face, v5);
  sub_25B0E2530();
  *v4 = 0;
  FaceView.init(face:location:)(v8, v4, v14);
  sub_25B0DF300(v14, v12);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA33010, &qword_25B0EAEC8));
  v16 = sub_25B0E2F20();
  v17 = [v16 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addChildViewController_];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = v19;
  v35 = v14;
  [v19 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25B0E6410;
  v22 = [v18 widthAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = v23;
  v25 = [v23 widthAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v21 + 32) = v26;
  v27 = [v18 heightAnchor];
  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    v30 = objc_opt_self();
    v31 = [v29 heightAnchor];

    v32 = [v27 constraintEqualToAnchor_];
    *(v21 + 40) = v32;
    sub_25B046E60(0, &unk_27FA33020, 0x277CCAAD0);
    v33 = sub_25B0E37E0();

    [v30 activateConstraints_];

    [v16 didMoveToParentViewController_];
    sub_25B0DF364(v35);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_25B0DF300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0DF364(uint64_t a1)
{
  v2 = type metadata accessor for FaceView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall NFGFaceSnapshotViewController.init(nibName:bundle:)(NFGFaceSnapshotViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_25B0E3730();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

uint64_t type metadata accessor for WrappedFace(uint64_t a1)
{
  result = qword_27FA32FD0;
  if (!qword_27FA32FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B0DF578(uint64_t a1)
{
  result = sub_25B0E2750();
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

id sub_25B0DF6B8(void *a1, uint64_t a2)
{
  v4 = sub_25B0E2750();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v20 = a2;
  sub_25B0E2460();
  v11 = [a1 name];
  if (v11)
  {
    v12 = v11;
    sub_25B0E3740();
  }

  v13 = a1;
  sub_25B0E2720();
  (*(v5 + 16))(v8, v10, v4);
  type metadata accessor for WrappedFace(0);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + OBJC_IVAR____TtC15NanoFaceGalleryP33_5621AA947CF506B68CF63C7E16CC7EB411WrappedFace_face, v8, v4);
  v15 = v19;
  *&v19[OBJC_IVAR___NFGFaceSnapshotViewController_wrappedFace] = v14;
  v21.receiver = v15;
  v21.super_class = NFGFaceSnapshotViewController;
  v16 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  v17 = sub_25B0E24A0();
  (*(*(v17 - 8) + 8))(v20, v17);
  (*(v5 + 8))(v10, v4);
  return v16;
}

id sub_25B0DF8F8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = [a1 name];
  if (v12)
  {
    v19 = v11;
    v13 = v12;
    sub_25B0E3740();

    v11 = v19;
  }

  v14 = a1;
  sub_25B0E2720();
  (*(v6 + 16))(v9, v11, v5);
  type metadata accessor for WrappedFace(0);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + OBJC_IVAR____TtC15NanoFaceGalleryP33_5621AA947CF506B68CF63C7E16CC7EB411WrappedFace_face, v9, v5);
  *&v3[OBJC_IVAR___NFGFaceSnapshotViewController_wrappedFace] = v15;
  v20.receiver = v3;
  v20.super_class = NFGFaceSnapshotViewController;
  v16 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_25B0DFB1C()
{
  v1 = OBJC_IVAR____TtC15NanoFaceGalleryP33_C3C4653FAEA1C78A64DCD92D9EE30E2A11UUIDWrapper_uuid;
  v2 = sub_25B0E24A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

id NFGReplicatedSnapshotViewController.init(face:uuid:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_25B0E2470();
  v6 = [v4 initWithFace:a1 uuid:v5];

  v7 = sub_25B0E24A0();
  (*(*(v7 - 8) + 8))(a2, v7);
  return v6;
}

{
  v3 = v2;
  v6 = sub_25B0E2470();
  v7 = [v3 initWithFace:a1 uuid:v6 index:100];

  v8 = sub_25B0E24A0();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

id NFGReplicatedSnapshotViewController.init(face:uuid:index:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25B0E2470();
  v8 = [v6 initWithFace:a1 uuid:v7 index:a3];

  v9 = sub_25B0E24A0();
  (*(*(v9 - 8) + 8))(a2, v9);
  return v8;
}

id NFGReplicatedSnapshotViewController.init(face:uuid:index:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25B0E24A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2, v7);
  type metadata accessor for UUIDWrapper(0);
  v11 = swift_allocObject();
  result = (*(v8 + 32))(v11 + OBJC_IVAR____TtC15NanoFaceGalleryP33_C3C4653FAEA1C78A64DCD92D9EE30E2A11UUIDWrapper_uuid, v10, v7);
  *&v3[OBJC_IVAR___NFGReplicatedSnapshotViewController_libraryUUID] = v11;
  *&v3[OBJC_IVAR___NFGReplicatedSnapshotViewController__face] = a1;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    *&v3[OBJC_IVAR___NFGReplicatedSnapshotViewController_index] = a3;
    v14.receiver = v3;
    v14.super_class = NFGReplicatedSnapshotViewController;
    v13 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
    (*(v8 + 8))(a2, v7);
    return v13;
  }

  return result;
}

uint64_t type metadata accessor for UUIDWrapper(uint64_t a1)
{
  result = qword_27FA33030;
  if (!qword_27FA33030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall NFGReplicatedSnapshotViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for FaceView(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v47 - v6;
  v47 = type metadata accessor for FacePlacement.Location(0);
  v7 = MEMORY[0x28223BE20](v47);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - v10;
  v11 = sub_25B0E24A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25B0E2750();
  v49 = *(v15 - 8);
  v50 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v48 = &v47 - v19;
  v53.receiver = v1;
  v53.super_class = NFGReplicatedSnapshotViewController;
  objc_msgSendSuper2(&v53, sel_viewDidLoad);
  v20 = *&v1[OBJC_IVAR___NFGReplicatedSnapshotViewController__face];
  (*(v12 + 16))(v14, *&v1[OBJC_IVAR___NFGReplicatedSnapshotViewController_libraryUUID] + OBJC_IVAR____TtC15NanoFaceGalleryP33_C3C4653FAEA1C78A64DCD92D9EE30E2A11UUIDWrapper_uuid, v11);
  v21 = v20;
  sub_25B0E2460();
  (*(v12 + 8))(v14, v11);
  v22 = [v21 name];
  if (v22)
  {
    v23 = v22;
    sub_25B0E3740();
  }

  v24 = v48;
  sub_25B0E2720();
  v25 = v51;
  sub_25B0E2530();
  *v25 = 2;
  (*(v49 + 16))(v18, v24, v50);
  sub_25B0E0AD8(v25, v9, type metadata accessor for FacePlacement.Location);
  v26 = v52;
  FaceView.init(face:location:)(v18, v9, v52);
  sub_25B0E0AD8(v26, v5, type metadata accessor for FaceView);
  v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA33010, &qword_25B0EAEC8));
  v28 = sub_25B0E2F20();
  v29 = [v28 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_9;
  }

  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = [objc_opt_self() clearColor];
  [v30 setBackgroundColor_];

  [v1 addChildViewController_];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v33 = v32;
  [v32 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_25B0E6410;
  v35 = [v30 widthAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v37 = v36;
  v38 = [v36 widthAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v34 + 32) = v39;
  v40 = [v30 heightAnchor];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    v43 = objc_opt_self();
    v44 = [v42 heightAnchor];

    v45 = [v40 constraintEqualToAnchor_];
    *(v34 + 40) = v45;
    sub_25B046E60(0, &unk_27FA33020, 0x277CCAAD0);
    v46 = sub_25B0E37E0();

    [v43 activateConstraints_];

    [v28 didMoveToParentViewController_];
    sub_25B0E0B40(v52, type metadata accessor for FaceView);
    sub_25B0E0B40(v51, type metadata accessor for FacePlacement.Location);
    (*(v49 + 8))(v48, v50);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_25B0E0AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0E0B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall NFGReplicatedSnapshotViewController.init(nibName:bundle:)(NFGReplicatedSnapshotViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_25B0E3730();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

uint64_t sub_25B0E0D0C(uint64_t a1)
{
  result = sub_25B0E24A0();
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

BOOL static NTKFaceCurationPlacement.== infix(_:_:)(void *a1, void *a2)
{
  if (a1[4] == a2[4] && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3 ? (v4 = a1[5] == a2[5]) : (v4 = 0), v4))
  {
    return *a1 == *a2;
  }

  else
  {
    return 0;
  }
}

BOOL static NTKFaceCurationRank.== infix(_:_:)(void *a1, void *a2)
{
  if (a1[3] == a2[3] && *a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

BOOL sub_25B0E0F30(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t NTKFaceCurationPlacement.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  MEMORY[0x25F860A80](v0[4]);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  return MEMORY[0x25F860A80](*v0);
}

uint64_t NTKFaceCurationPlacement.hashValue.getter()
{
  sub_25B0E3F10();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  MEMORY[0x25F860A80](v0[4]);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](*v0);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E1090()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v5);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](v6);
  MEMORY[0x25F860A80](v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E1134()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  MEMORY[0x25F860A80](v0[4]);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](v5);
  return MEMORY[0x25F860A80](v1);
}

uint64_t sub_25B0E11A8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v6);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](v5);
  MEMORY[0x25F860A80](v7);
  MEMORY[0x25F860A80](v2);
  return sub_25B0E3F50();
}

BOOL static NTKFaceCurationRelease.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 < a5;
  if (a2 == a5)
  {
    v6 = a3 < a6;
  }

  if (a1 == a4)
  {
    return v6;
  }

  else
  {
    return a1 < a4;
  }
}

BOOL sub_25B0E1318(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_25B0E1350(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_25B0E138C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_25B0E13C8(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t NTKFaceCurationRelease.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F860A80](a2);
  MEMORY[0x25F860A80](a3);
  return MEMORY[0x25F860A80](a4);
}

uint64_t NTKFaceCurationRelease.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](a1);
  MEMORY[0x25F860A80](a2);
  MEMORY[0x25F860A80](a3);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E14E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E1554()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x25F860A80](*v0);
  MEMORY[0x25F860A80](v1);
  return MEMORY[0x25F860A80](v2);
}

uint64_t sub_25B0E159C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  return sub_25B0E3F50();
}

BOOL sub_25B0E1608(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _sSo19NTKFaceCurationRankV15NanoFaceGalleryE1loiySbAB_ABtFZ_0(v5, v7);
}

BOOL sub_25B0E1654(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return !_sSo19NTKFaceCurationRankV15NanoFaceGalleryE1loiySbAB_ABtFZ_0(v5, v7);
}

BOOL sub_25B0E16A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return !_sSo19NTKFaceCurationRankV15NanoFaceGalleryE1loiySbAB_ABtFZ_0(v5, v7);
}

BOOL sub_25B0E16F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return _sSo19NTKFaceCurationRankV15NanoFaceGalleryE1loiySbAB_ABtFZ_0(v5, v7);
}

uint64_t NTKFaceCurationRank.hash(into:)()
{
  MEMORY[0x25F860A80](v0[3]);
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x25F860A80](*v0);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  return MEMORY[0x25F860A80](v0[4]);
}

uint64_t NTKFaceCurationRank.hashValue.getter()
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v0[3]);
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x25F860A80](*v0);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v0[4]);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E185C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v5);
  return sub_25B0E3F50();
}

uint64_t sub_25B0E18EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  MEMORY[0x25F860A80](v0[3]);
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  return MEMORY[0x25F860A80](v4);
}

uint64_t sub_25B0E1950(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v5);
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  MEMORY[0x25F860A80](v6);
  return sub_25B0E3F50();
}

BOOL _sSo19NTKFaceCurationRankV15NanoFaceGalleryE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = v2 < v3;
  if (v2 == v3)
  {
    v4 = *a1 < *a2;
    if (*a1 == *a2)
    {
      v5 = a1[1];
      v6 = a2[1];
      v4 = v5 < v6;
      if (v5 == v6)
      {
        v7 = a1[2];
        v8 = a2[2];
        v4 = v7 < v8;
        if (v7 == v8)
        {
          return a1[4] < a2[4];
        }
      }
    }
  }

  return v4;
}

uint64_t sub_25B0E1A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_25B0E1B00()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FA330D0 = result;
  return result;
}

uint64_t sub_25B0E1B58()
{
  v0 = sub_25B0E2930();
  __swift_allocate_value_buffer(v0, qword_27FA39A10);
  __swift_project_value_buffer(v0, qword_27FA39A10);
  if (qword_27FA30D40 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA330D0;
  return sub_25B0E2920();
}

uint64_t sub_25B0E1C00()
{
  v0 = sub_25B0E2930();
  __swift_allocate_value_buffer(v0, qword_27FA39A28);
  __swift_project_value_buffer(v0, qword_27FA39A28);
  if (qword_27FA30D40 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA330D0;
  return sub_25B0E2920();
}

uint64_t sub_25B0E1CA8()
{
  v0 = sub_25B0E2930();
  __swift_allocate_value_buffer(v0, qword_27FA39A40);
  __swift_project_value_buffer(v0, qword_27FA39A40);
  if (qword_27FA30D40 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA330D0;
  return sub_25B0E2920();
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27FA39908 == -1)
  {
    if (qword_27FA39910)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27FA39910)
    {
      return _availability_version_check();
    }
  }

  if (qword_27FA39900 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27FA398F4 > a3)
      {
        return 1;
      }

      if (dword_27FA398F4 >= a3)
      {
        return dword_27FA398F8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27FA39910;
  if (qword_27FA39910)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27FA39910 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x25F860CD0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27FA398F4, &dword_27FA398F8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}