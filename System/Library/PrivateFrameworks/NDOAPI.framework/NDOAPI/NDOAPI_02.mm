uint64_t sub_22DE1CFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(a1 + *(v7 + 32), v6, &qword_27DA37C10, &unk_22DEC7590);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE1E8D8(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a2 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37C10, &unk_22DEC7590);
  }

  return result;
}

uint64_t sub_22DE1D164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE1EBD0(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 32);
  sub_22DDEF284(a2 + v8, &qword_27DA37C10, &unk_22DEC7590);
  sub_22DE1E8D8(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t sub_22DE1D28C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  *a2 = *(a1 + *(result + 20) + 8) != 0;
  return result;
}

uint64_t sub_22DE1D2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(a1 + *(v7 + 36), v6, &qword_27DA37C10, &unk_22DEC7590);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE1E8D8(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a2 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37C10, &unk_22DEC7590);
  }

  return result;
}

uint64_t sub_22DE1D440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE1EBD0(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 36);
  sub_22DDEF284(a2 + v8, &qword_27DA37C10, &unk_22DEC7590);
  sub_22DE1E8D8(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t sub_22DE1D568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22DE1D58C, 0, 0);
}

uint64_t sub_22DE1D58C()
{
  sub_22DE1D8F0(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22DE1D5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22DDF0028(a3, v25 - v10, &unk_27DA37C00, &unk_22DEC7580);
  v12 = sub_22DEC4DB4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22DDEF284(v11, &unk_27DA37C00, &unk_22DEC7580);
  }

  else
  {
    sub_22DEC4DA4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22DEC4D64();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22DEC4C84() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22DDEF284(a3, &unk_27DA37C00, &unk_22DEC7580);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22DDEF284(a3, &unk_27DA37C00, &unk_22DEC7580);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_22DE1D8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v95 = a2;
  v98[3] = *MEMORY[0x277D85DE8];
  v94 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v86 - v6;
  v7 = sub_22DEC4764();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v88 = &v86 - v12;
  MEMORY[0x28223BE20](v11);
  v90 = &v86 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v86 - v18;
  v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v92 = *(v20 - 8);
  v93 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v86 - v24;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v26 = sub_22DEC4B44();
  v96 = __swift_project_value_buffer(v26, qword_281462270);
  v27 = sub_22DEC4B24();
  v28 = sub_22DEC4E54();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v87 = v3;
    v30 = v25;
    v31 = v23;
    v32 = v19;
    v33 = v17;
    v34 = a1;
    v35 = v8;
    v36 = v7;
    v37 = v29;
    *v29 = 0;
    _os_log_impl(&dword_22DDEC000, v27, v28, "Waiting for user response", v29, 2u);
    v38 = v37;
    v7 = v36;
    v8 = v35;
    a1 = v34;
    v17 = v33;
    v19 = v32;
    v23 = v31;
    v25 = v30;
    v3 = v87;
    MEMORY[0x2318DBF00](v38, -1, -1);
  }

  v97 = 0;
  v39 = (v3[4])(a1, &v97, 0.0);
  if (v39)
  {
    v40 = v39;
    v41 = sub_22DEC4B24();
    v42 = sub_22DEC4E44();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109120;
      v43[1] = v40;
      v44 = "Unsuccessful result: %d";
      v45 = v42;
      v46 = v41;
      v47 = v43;
      v48 = 8;
LABEL_36:
      _os_log_impl(&dword_22DDEC000, v46, v45, v44, v47, v48);
      MEMORY[0x2318DBF00](v43, -1, -1);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  v49 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v50 = (v95 + v49[5]);
  if (v50[1])
  {
    v51 = *v50;
    v52 = v50[1];
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
  }

  sub_22DE25B70((v3 + 11), v51, v52);

  if (v97 == 1)
  {
    sub_22DDF0028(v95 + v49[9], v17, &qword_27DA37C10, &unk_22DEC7590);
    v57 = v93;
    v58 = *(v92 + 48);
    if (v58(v17, 1, v93) == 1)
    {
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v59 = &v23[*(v57 + 20)];
      *v59 = 0;
      *(v59 + 1) = 0;
      v60 = &v23[*(v57 + 24)];
      *v60 = 0;
      *(v60 + 1) = 0;
      if (v58(v17, 1, v57) != 1)
      {
        sub_22DDEF284(v17, &qword_27DA37C10, &unk_22DEC7590);
      }
    }

    else
    {
      sub_22DE1E8D8(v17, v23, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    }

    if (!*&v23[*(v57 + 24) + 8])
    {
      v62 = v23;
      goto LABEL_33;
    }

    v25 = v23;
  }

  else
  {
    if (v97)
    {
      v41 = sub_22DEC4B24();
      v61 = sub_22DEC4E44();
      if (os_log_type_enabled(v41, v61))
      {
        v43 = swift_slowAlloc();
        *v43 = 134217984;
        swift_beginAccess();
        *(v43 + 1) = v97;
        v44 = "Unexpected response: %lu";
        v45 = v61;
        v46 = v41;
        v47 = v43;
        v48 = 12;
        goto LABEL_36;
      }

LABEL_37:

      return;
    }

    sub_22DDF0028(v95 + v49[8], v19, &qword_27DA37C10, &unk_22DEC7590);
    v53 = v93;
    v54 = *(v92 + 48);
    if (v54(v19, 1, v93) == 1)
    {
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v55 = &v25[*(v53 + 20)];
      *v55 = 0;
      *(v55 + 1) = 0;
      v56 = &v25[*(v53 + 24)];
      *v56 = 0;
      *(v56 + 1) = 0;
      if (v54(v19, 1, v53) != 1)
      {
        sub_22DDEF284(v19, &qword_27DA37C10, &unk_22DEC7590);
      }
    }

    else
    {
      sub_22DE1E8D8(v19, v25, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    }

    if (!*&v25[*(v53 + 24) + 8])
    {
      v62 = v25;
LABEL_33:
      sub_22DE1E6CC(v62, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
LABEL_34:
      v41 = sub_22DEC4B24();
      v80 = sub_22DEC4E54();
      if (os_log_type_enabled(v41, v80))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = "No action url, alert will just dismiss";
        v45 = v80;
        v46 = v41;
        v47 = v43;
        v48 = 2;
        goto LABEL_36;
      }

      goto LABEL_37;
    }
  }

  sub_22DE1E6CC(v25, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  v63 = v91;
  sub_22DEC4744();

  if ((*(v8 + 48))(v63, 1, v7) == 1)
  {
    sub_22DDEF284(v63, &qword_27DA37910, &qword_22DEC5BB0);
    goto LABEL_34;
  }

  v64 = v90;
  (*(v8 + 32))(v90, v63, v7);
  v65 = v3[9];
  v66 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v65);
  v67 = (*(v66 + 8))(v64, v65, v66);
  v68 = *(v8 + 16);
  if (v67)
  {
    v69 = v88;
    v68(v88, v64, v7);
    v70 = sub_22DEC4B24();
    v71 = sub_22DEC4E44();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v98[0] = v73;
      *v72 = 136315138;
      sub_22DE1EA18(&qword_28145E550, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v74 = sub_22DEC50A4();
      v76 = v75;
      v77 = *(v8 + 8);
      v77(v69, v7);
      v78 = sub_22DDEDC0C(v74, v76, v98);

      *(v72 + 4) = v78;
      v79 = "Successfully opened action url: %s";
LABEL_40:
      _os_log_impl(&dword_22DDEC000, v70, v71, v79, v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x2318DBF00](v73, -1, -1);
      MEMORY[0x2318DBF00](v72, -1, -1);

      v77(v90, v7);
      return;
    }
  }

  else
  {
    v69 = v89;
    v68(v89, v64, v7);
    v70 = sub_22DEC4B24();
    v71 = sub_22DEC4E44();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v98[0] = v73;
      *v72 = 136315138;
      sub_22DE1EA18(&qword_28145E550, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v81 = sub_22DEC50A4();
      v83 = v82;
      v77 = *(v8 + 8);
      v77(v69, v7);
      v84 = sub_22DDEDC0C(v81, v83, v98);

      *(v72 + 4) = v84;
      v79 = "Failed to open url: %s";
      goto LABEL_40;
    }
  }

  v85 = *(v8 + 8);
  v85(v69, v7);
  v85(v64, v7);
}

void *NDOShowAlertActionHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  return v0;
}

uint64_t NDOShowAlertActionHandler.__deallocating_deinit()
{
  NDOShowAlertActionHandler.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_22DE1E494(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22DE1E58C;

  return v6(a1);
}

uint64_t sub_22DE1E58C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, BOOL *a3@<X8>)
{
  result = a2(0);
  *a3 = *(a1 + *(result + 20) + 8) != 0;
  return result;
}

uint64_t sub_22DE1E6CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_22DE1E72C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_22DE1E74C(uint64_t a1)
{
  v3 = v2;
  v5 = (*(*(v1[4] - 8) + 80) + 48) & ~*(*(v1[4] - 8) + 80);
  v6 = *(*(v1[4] - 8) + 64);
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[5];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22DE0858C;

  return sub_22DE1D568(a1, v9, v10, v11, v1 + v5, v1 + v8);
}

uint64_t sub_22DE1E8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE1EA18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DE1EA60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22DE0D6CC;

  return sub_22DE1E494(a1, v4);
}

uint64_t sub_22DE1EB18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22DE0858C;

  return sub_22DE1E494(a1, v4);
}

uint64_t sub_22DE1EBD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NDOPostFollowUpActionHandler.__allocating_init(controller:executeWithResolver:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_22DDEDA18(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t NDOPostFollowUpActionHandler.init(controller:executeWithResolver:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_22DDEDA18(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

void sub_22DE1ECCC(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v56 = a2;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0);
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v16 = sub_22DEC4B44();
  v17 = __swift_project_value_buffer(v16, qword_281462270);
  sub_22DE25B08(a1, v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
  v52 = v17;
  v18 = sub_22DEC4B24();
  v19 = sub_22DEC4E54();
  v20 = os_log_type_enabled(v18, v19);
  v54 = v7;
  v55 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v51 = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v50 = v4;
    v24 = v23;
    *&v57[0] = v23;
    *v22 = 136315138;
    sub_22DE25B08(v15, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    v25 = sub_22DEC4C74();
    v27 = v26;
    sub_22DE257B8(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    v28 = v25;
    v10 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = sub_22DDEDC0C(v28, v27, v57);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_22DDEC000, v18, v19, "Handling post follow up action %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v30 = v24;
    v4 = v50;
    MEMORY[0x2318DBF00](v30, -1, -1);
    v31 = v22;
    a3 = v51;
    MEMORY[0x2318DBF00](v31, -1, -1);
  }

  else
  {

    sub_22DE257B8(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC77A0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  v33 = sub_22DE00FFC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v33)
  {
    swift_beginAccess();
    v34 = *(v4 + 56);
    v35 = v55;
    sub_22DE25B08(a1, v55, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    sub_22DDEDAAC(v4 + 16, v57);
    v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v56;
    *(v37 + 24) = a3;
    sub_22DE25AA0(v35, v37 + v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    sub_22DDEDA18(v57, v37 + ((v8 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));

    v34(sub_22DE23C80, v37);
  }

  else
  {
    sub_22DE25B08(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    v38 = sub_22DEC4B24();
    v39 = sub_22DEC4E44();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v55;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v57[0] = v43;
      *v42 = 136315138;
      sub_22DE25B08(v10, v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      v44 = sub_22DEC4C74();
      v45 = v10;
      v47 = v46;
      sub_22DE257B8(v45, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      v48 = sub_22DDEDC0C(v44, v47, v57);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_22DDEC000, v38, v39, "Not handling post follow up action due to invalid data: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x2318DBF00](v43, -1, -1);
      MEMORY[0x2318DBF00](v42, -1, -1);
    }

    else
    {

      sub_22DE257B8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DE25A0C(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v49 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v56(v49, 1);
  }
}

uint64_t sub_22DE1F31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  v8 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0028(v7 + v8, v6, &qword_27DA37D90, &unk_22DEC7970);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22DE25AA0(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = *(v9 + 20);
  if (qword_27DA37788 != -1)
  {
    swift_once();
  }

  *(a2 + v11) = qword_27DA38008;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37D90, &unk_22DEC7970);
  }

  return result;
}

uint64_t sub_22DE1F4EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE25B08(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE4E6D0(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE25AA0(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37D90, &unk_22DEC7970);
  return swift_endAccess();
}

uint64_t sub_22DE1F700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE25B08(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE5174C(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE25AA0(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37D88, &unk_22DEC8210);
  return swift_endAccess();
}

uint64_t sub_22DE1F8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF0028(a1 + *(v7 + 28), v6, &qword_27DA37D80, &unk_22DEC7960);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE25AA0(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(v8 + 20)) = 7;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE1FA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE25B08(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 28);
  sub_22DDEF284(a2 + v8, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE25AA0(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void sub_22DE1FBCC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, char *a5, void *a6)
{
  v470 = a6;
  v511 = a5;
  v495 = a4;
  v496 = a3;
  v500 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  MEMORY[0x28223BE20](v7 - 8);
  v460 = &v445 - v8;
  v471 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v474 = *(v471 - 8);
  v9 = MEMORY[0x28223BE20](v471);
  v456 = &v445 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v445 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v454 = &v445 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v452 = &v445 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v450 = &v445 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v464 = &v445 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v459 = &v445 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v445 - v25;
  MEMORY[0x28223BE20](v24);
  v463 = &v445 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v445 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v455 = &v445 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v453 = &v445 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v451 = &v445 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v449 = &v445 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v457 = &v445 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v458 = &v445 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v462 = &v445 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v461 = &v445 - v47;
  MEMORY[0x28223BE20](v46);
  v469 = &v445 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v49 - 8);
  v468 = &v445 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v489 = &v445 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v484 = (&v445 - v54);
  v55 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v501 = *(v55 - 8);
  v502 = v55;
  v56 = MEMORY[0x28223BE20](v55);
  v488 = (&v445 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v56);
  v483 = (&v445 - v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v60 = MEMORY[0x28223BE20](v59 - 8);
  v494 = &v445 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v480 = &v445 - v63;
  MEMORY[0x28223BE20](v62);
  v477 = &v445 - v64;
  v508 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v506 = *(v508 - 8);
  v65 = MEMORY[0x28223BE20](v508);
  v487 = &v445 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v65);
  v481 = &v445 - v68;
  MEMORY[0x28223BE20](v67);
  v505 = (&v445 - v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v71 = MEMORY[0x28223BE20](v70 - 8);
  v467 = &v445 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v491 = &v445 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v485 = &v445 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v478 = &v445 - v78;
  MEMORY[0x28223BE20](v77);
  v475 = &v445 - v79;
  v509 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v512 = *(v509 - 8);
  v80 = MEMORY[0x28223BE20](v509);
  v466 = &v445 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v490 = &v445 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v486 = &v445 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v479 = &v445 - v87;
  MEMORY[0x28223BE20](v86);
  v476 = &v445 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  v90 = MEMORY[0x28223BE20](v89 - 8);
  v472 = &v445 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = MEMORY[0x28223BE20](v90);
  v94 = &v445 - v93;
  v95 = MEMORY[0x28223BE20](v92);
  v482 = &v445 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v492 = (&v445 - v98);
  MEMORY[0x28223BE20](v97);
  v100 = &v445 - v99;
  v513 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v514 = *(v513 - 1);
  v101 = MEMORY[0x28223BE20](v513);
  v465 = &v445 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = MEMORY[0x28223BE20](v101);
  v499 = &v445 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v498 = &v445 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v503 = &v445 - v108;
  MEMORY[0x28223BE20](v107);
  v497 = &v445 - v109;
  v110 = sub_22DEC4824();
  v111 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v113 = &v445 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = a1;
  if (!a1)
  {
    v119 = v496;
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v120 = sub_22DEC4B44();
    __swift_project_value_buffer(v120, qword_281462270);
    v121 = sub_22DEC4B24();
    v122 = sub_22DEC4E44();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_22DDEC000, v121, v122, "Cannot get url resolver (config error)", v123, 2u);
      MEMORY[0x2318DBF00](v123, -1, -1);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DE25A0C(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v124 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v119(v124, 1);

    return;
  }

  v446 = v31;
  v447 = v26;
  v445 = v13;
  v114 = objc_allocWithZone(MEMORY[0x277CFE508]);

  v115 = [v114 init];
  [v115 setGroupIdentifier_];
  v116 = sub_22DEC4C04();
  [v115 setExtensionIdentifier_];

  v117 = *&v511[*(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20)];
  swift_beginAccess();
  v118 = sub_22DEC4C04();

  v510 = v115;
  [v115 setTargetBundleIdentifier_];

  swift_beginAccess();

  v125 = sub_22DEC4C04();

  [v510 setTitle_];

  swift_beginAccess();

  v126 = sub_22DEC4C04();

  [v510 setUniqueIdentifier_];

  swift_beginAccess();
  if ((*(v117 + 144) & 1) == 0)
  {
    sub_22DEC47F4();
    v127 = sub_22DEC47D4();
    (*(v111 + 8))(v113, v110);
    [v510 setExpirationDate_];
  }

  swift_beginAccess();
  v128 = *(v117 + 168);
  v473 = v94;
  if (v128 == 2 || (v128 & 1) == 0)
  {
    v129 = 18;
  }

  else
  {
    v129 = 2;
  }

  v130 = v509;
  [v510 setDisplayStyle_];
  v131 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v132 = sub_22DEC4C34();
  v133 = *MEMORY[0x277CFE3E8];
  v529 = v132;
  v530 = v134;
  v135 = v133;
  [v131 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v136 = *MEMORY[0x277CFE4D0];
  v137 = sub_22DEC4D54();
  v529 = v136;
  type metadata accessor for FLUserInfoProperty(0);
  v139 = v138;
  v140 = v136;
  v448 = v139;
  [v131 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v141 = sub_22DEC4C04();
  v529 = 0xD000000000000025;
  v530 = 0x800000022DED2250;
  v142 = sub_22DEC5104();
  v507 = v131;
  [v131 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v143 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  v504 = v143;
  sub_22DDF0028(v117 + v143, v100, &qword_27DA37D90, &unk_22DEC7970);
  v144 = v514[6];
  v145 = v513;
  v514 += 6;
  v511 = v144;
  if ((v144)(v100, 1, v513) == 1)
  {
    v146 = v497;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v147 = v145[5];
    v148 = v508;
    v149 = v505;
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v146 + v147) = qword_27DA38008;
    v150 = (v511)(v100, 1, v145);

    if (v150 != 1)
    {
      sub_22DDEF284(v100, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    v146 = v497;
    sub_22DE25AA0(v100, v497, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v148 = v508;
    v149 = v505;
  }

  v151 = *(v146 + v513[5]);
  v152 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v153 = v475;
  sub_22DDF0028(v151 + v152, v475, &qword_27DA37D88, &unk_22DEC8210);
  v154 = v512 + 48;
  v155 = *(v512 + 48);
  v156 = v155(v153, 1, v130);
  v512 = v154;
  v505 = v155;
  v157 = v476;
  if (v156 == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v158 = (v157 + v130[5]);
    *v158 = 0;
    v158[1] = 0;
    v159 = (v157 + v130[6]);
    *v159 = 0;
    v159[1] = 0;
    (*(v506 + 56))(v157 + v130[7], 1, 1, v148);
    v160 = v155(v153, 1, v130) == 1;
    v161 = v153;
    v162 = v492;
    if (!v160)
    {
      sub_22DDEF284(v161, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE25AA0(v153, v476, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v162 = v492;
  }

  sub_22DE257B8(v497, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  v163 = v477;
  sub_22DDF0028(v157 + v130[7], v477, &qword_27DA37D80, &unk_22DEC7960);
  v164 = v157;
  v165 = v506 + 48;
  v166 = *(v506 + 48);
  v167 = v166(v163, 1, v148);
  v497 = v165;
  if (v167 == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v164, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    *(v149 + *(v148 + 20)) = 7;
    (*(v501 + 56))(v149 + *(v148 + 24), 1, 1, v502);
    if (v166(v163, 1, v148) != 1)
    {
      sub_22DDEF284(v163, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE257B8(v164, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE25AA0(v163, v149, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  v168 = *(v149 + *(v148 + 20));
  sub_22DE257B8(v149, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v169 = 0xE700000000000000;
  v170 = 0x6E776F6E6B6E75;
  if (v168 <= 2 || v168 == 7)
  {
    v170 = sub_22DEC4C34();
  }

  v492 = v166;
  v476 = v170;
  v477 = v169;
  v171 = sub_22DEC4C34();
  v173 = v172;
  swift_beginAccess();

  v174 = sub_22DEC4C04();

  v527 = v171;
  v528 = v173;
  [v507 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v175 = sub_22DEC4C34();
  v177 = v176;

  v178 = sub_22DEC4C04();

  v527 = v175;
  v528 = v177;
  [v507 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v179 = sub_22DEC4C34();
  v475 = v180;
  sub_22DDF0028(v117 + v504, v162, &qword_27DA37D90, &unk_22DEC7970);
  v181 = v513;
  if ((v511)(v162, 1, v513) == 1)
  {
    v182 = v503;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v183 = v181[5];
    v184 = v509;
    v185 = v480;
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v182 + v183) = qword_27DA38008;
    v186 = (v511)(v162, 1, v181);

    v160 = v186 == 1;
    v181 = v513;
    if (!v160)
    {
      sub_22DDEF284(v162, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    v182 = v503;
    sub_22DE25AA0(v162, v503, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v184 = v509;
    v185 = v480;
  }

  v187 = *(v182 + v181[5]);
  v188 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v189 = v478;
  sub_22DDF0028(v187 + v188, v478, &qword_27DA37D88, &unk_22DEC8210);
  v190 = v505;
  if (v505(v189, 1, v184) == 1)
  {
    v191 = v479;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v192 = (v191 + v184[5]);
    *v192 = 0;
    v192[1] = 0;
    v193 = (v191 + v184[6]);
    *v193 = 0;
    v193[1] = 0;
    v194 = v508;
    (*(v506 + 56))(v191 + v184[7], 1, 1, v508);
    v195 = v190(v189, 1, v184);
    v196 = v481;
    if (v195 != 1)
    {
      sub_22DDEF284(v189, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    v191 = v479;
    sub_22DE25AA0(v189, v479, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v194 = v508;
    v196 = v481;
  }

  sub_22DE257B8(v503, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  sub_22DDF0028(v191 + v184[7], v185, &qword_27DA37D80, &unk_22DEC7960);
  v197 = v492;
  v198 = v492(v185, 1, v194);
  v503 = v117;
  if (v198 == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v191, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    *(v196 + *(v194 + 20)) = 7;
    v199 = v502;
    (*(v501 + 56))(v196 + *(v194 + 24), 1, 1, v502);
    v200 = v197(v185, 1, v194);
    v201 = v483;
    v202 = v484;
    if (v200 != 1)
    {
      sub_22DDEF284(v185, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE257B8(v191, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE25AA0(v185, v196, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v199 = v502;
    v201 = v483;
    v202 = v484;
  }

  sub_22DDF0028(v196 + *(v194 + 24), v202, &qword_27DA37D78, &unk_22DEC8150);
  v203 = *(v501 + 48);
  v204 = v203(v202, 1, v199);
  v484 = v203;
  if (v204 == 1)
  {
    v205 = v196;
    v206 = MEMORY[0x277D84F90];
    *v201 = sub_22DE0501C(MEMORY[0x277D84F90]);
    v201[1] = sub_22DE0501C(v206);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v205, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v207 = (v201 + *(v199 + 28));
    *v207 = 0;
    v207[1] = 0;
    v208 = (v201 + *(v199 + 32));
    *v208 = 0;
    v208[1] = 0;
    v209 = v203(v202, 1, v199);
    v210 = v482;
    if (v209 != 1)
    {
      sub_22DDEF284(v202, &qword_27DA37D78, &unk_22DEC8150);
    }
  }

  else
  {
    sub_22DE257B8(v196, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DE25AA0(v202, v201, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    v210 = v482;
  }

  sub_22DE257B8(v201, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v211 = sub_22DEC4B84();

  v525 = v179;
  v526 = v475;
  [v507 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v212 = sub_22DEC4C34();
  v482 = v213;
  v483 = v212;
  sub_22DDF0028(v503 + v504, v210, &qword_27DA37D90, &unk_22DEC7970);
  v214 = v513;
  if ((v511)(v210, 1, v513) == 1)
  {
    v215 = v498;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v216 = v214[5];
    v217 = v509;
    v218 = v494;
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v215 + v216) = qword_27DA38008;
    v219 = (v511)(v210, 1, v214);

    if (v219 != 1)
    {
      sub_22DDEF284(v210, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    v215 = v498;
    sub_22DE25AA0(v210, v498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v217 = v509;
    v218 = v494;
  }

  v220 = *(v215 + v214[5]);
  v221 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v222 = v485;
  sub_22DDF0028(v220 + v221, v485, &qword_27DA37D88, &unk_22DEC8210);
  v223 = v505;
  if (v505(v222, 1, v217) == 1)
  {
    v224 = v486;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v225 = (v224 + v217[5]);
    *v225 = 0;
    v225[1] = 0;
    v226 = (v224 + v217[6]);
    *v226 = 0;
    v226[1] = 0;
    v227 = v508;
    (*(v506 + 56))(v224 + v217[7], 1, 1, v508);
    v228 = v223(v222, 1, v217);
    v230 = v488;
    v229 = v489;
    if (v228 != 1)
    {
      sub_22DDEF284(v222, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    v224 = v486;
    sub_22DE25AA0(v222, v486, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v227 = v508;
    v230 = v488;
    v229 = v489;
  }

  sub_22DE257B8(v498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  sub_22DDF0028(v224 + v217[7], v218, &qword_27DA37D80, &unk_22DEC7960);
  v231 = v492;
  v232 = v224;
  if (v492(v218, 1, v227) == 1)
  {
    v233 = v501;
    v234 = v487;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v232, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    *(v234 + *(v227 + 20)) = 7;
    v235 = v502;
    (*(v233 + 56))(v234 + *(v227 + 24), 1, 1, v502);
    v236 = v494;
    if (v231(v494, 1, v227) != 1)
    {
      sub_22DDEF284(v236, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE257B8(v224, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v234 = v487;
    sub_22DE25AA0(v218, v487, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v235 = v502;
  }

  sub_22DDF0028(v234 + *(v227 + 24), v229, &qword_27DA37D78, &unk_22DEC8150);
  v237 = v484;
  if (v484(v229, 1, v235) == 1)
  {
    v238 = MEMORY[0x277D84F90];
    *v230 = sub_22DE0501C(MEMORY[0x277D84F90]);
    v230[1] = sub_22DE0501C(v238);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v234, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v239 = (v230 + *(v235 + 28));
    *v239 = 0;
    v239[1] = 0;
    v240 = (v230 + *(v235 + 32));
    *v240 = 0;
    v240[1] = 0;
    if (v237(v229, 1, v235) != 1)
    {
      sub_22DDEF284(v229, &qword_27DA37D78, &unk_22DEC8150);
    }
  }

  else
  {
    sub_22DE257B8(v234, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DE25AA0(v229, v230, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  }

  sub_22DE257B8(v230, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v241 = sub_22DEC4B84();

  v523 = v483;
  v524 = v482;
  v242 = sub_22DEC5104();
  v243 = v507;
  [v507 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v244 = sub_22DEC4C34();
  v246 = v245;
  v247 = sub_22DEC4C04();

  v523 = v244;
  v524 = v246;
  [v243 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v248 = sub_22DEC4C34();
  v250 = v249;
  v251 = v503;

  v252 = sub_22DEC4C04();

  v523 = v248;
  v524 = v250;
  [v243 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v253 = v473;
  sub_22DDF0028(v251 + v504, v473, &qword_27DA37D90, &unk_22DEC7970);
  v254 = v513;
  if ((v511)(v253, 1, v513) == 1)
  {
    v255 = v499;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v256 = v254[5];
    v257 = v500;
    v258 = v505;
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v255 + v256) = qword_27DA38008;
    v259 = v473;
    v260 = (v511)(v473, 1, v254);

    if (v260 != 1)
    {
      sub_22DDEF284(v259, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    v255 = v499;
    sub_22DE25AA0(v253, v499, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v257 = v500;
    v258 = v505;
  }

  v261 = *(v255 + v254[5]);
  v262 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v263 = v261 + v262;
  v264 = v491;
  sub_22DDF0028(v263, v491, &qword_27DA37D88, &unk_22DEC8210);
  v265 = v509;
  if (v258(v264, 1, v509) == 1)
  {
    v266 = v490;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v267 = (v266 + v265[5]);
    *v267 = 0;
    v267[1] = 0;
    v268 = (v266 + v265[6]);
    *v268 = 0;
    v268[1] = 0;
    (*(v506 + 56))(v266 + v265[7], 1, 1, v508);
    v269 = v258(v264, 1, v265);
    v270 = v493;
    if (v269 != 1)
    {
      sub_22DDEF284(v264, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    v266 = v490;
    sub_22DE25AA0(v264, v490, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v270 = v493;
  }

  sub_22DE257B8(v499, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);

  v271 = sub_22DE24780(v266, v270, v257);
  v273 = v272;
  sub_22DE257B8(v266, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DE256E4(v270, v257);
  if (!v273)
  {
LABEL_85:
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v284 = sub_22DEC4B44();
    __swift_project_value_buffer(v284, qword_281462270);
    v285 = sub_22DEC4B24();
    v286 = sub_22DEC4E44();
    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      *v287 = 0;
      _os_log_impl(&dword_22DDEC000, v285, v286, "Not handling post follow up action - failed to resolve action url", v287, 2u);
      MEMORY[0x2318DBF00](v287, -1, -1);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DE25A0C(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v288 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v496(v288, 1);

    v289 = v270;
    v290 = v257;
    goto LABEL_135;
  }

  v274 = HIBYTE(v273) & 0xF;
  if ((v273 & 0x2000000000000000) == 0)
  {
    v274 = v271 & 0xFFFFFFFFFFFFLL;
  }

  if (!v274)
  {

    goto LABEL_85;
  }

  v275 = sub_22DEC4C34();
  v277 = v276;
  v502 = v273;
  v278 = sub_22DEC4C04();
  v521 = v275;
  v522 = v277;
  [v243 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v279 = sub_22DEC4C34();
  v281 = v280;
  v282 = sub_22DEC4D54();
  v521 = v279;
  v522 = v281;
  [v243 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v283 = *MEMORY[0x277CFE4E0];
  swift_beginAccess();

  v291 = sub_22DEC4C04();

  v520 = v283;
  v292 = v283;
  [v243 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v293 = *MEMORY[0x277CFE4D8];
  swift_beginAccess();
  v294 = v513;

  v295 = sub_22DEC4C04();

  v519 = v293;
  v296 = v293;
  [v243 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v297 = *MEMORY[0x277CFE4B0];
  swift_beginAccess();

  v298 = sub_22DEC4C04();

  v518 = v297;
  v299 = v297;
  [v243 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  swift_beginAccess();
  v300 = *(v251 + 64);
  if (v300)
  {
    v301 = HIBYTE(v300) & 0xF;
    if ((v300 & 0x2000000000000000) == 0)
    {
      v301 = *(v251 + 56) & 0xFFFFFFFFFFFFLL;
    }

    if (v301)
    {
      v302 = *MEMORY[0x277CFE4B8];

      v303 = sub_22DEC4C04();

      v517 = v302;
      v304 = v302;
      [v243 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
    }
  }

  v517 = 0;
  v305 = v243;
  sub_22DEC4B94();
  v507 = v305;

  if (v517)
  {
    v306 = sub_22DEC4B84();
  }

  else
  {
    v306 = 0;
  }

  v307 = v508;
  v308 = v465;
  [v510 setUserInfo_];

  v309 = v472;
  sub_22DDF0028(v251 + v504, v472, &qword_27DA37D90, &unk_22DEC7970);
  if ((v511)(v309, 1, v294) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v310 = v294[5];
    v311 = v294;
    v312 = v509;
    v313 = v466;
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v308 + v310) = qword_27DA38008;
    v314 = v472;
    v315 = (v511)(v472, 1, v311);

    if (v315 != 1)
    {
      sub_22DDEF284(v314, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    sub_22DE25AA0(v309, v308, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v312 = v509;
    v313 = v466;
  }

  v316 = *(v308 + v513[5]);
  v317 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  v318 = v316 + v317;
  v319 = v467;
  sub_22DDF0028(v318, v467, &qword_27DA37D88, &unk_22DEC8210);
  v320 = v505;
  if (v505(v319, 1, v312) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v321 = (v313 + v312[5]);
    *v321 = 0;
    v321[1] = 0;
    v322 = (v313 + v312[6]);
    *v322 = 0;
    v322[1] = 0;
    (*(v506 + 56))(v313 + v312[7], 1, 1, v307);
    v323 = v320(v319, 1, v312);
    v324 = v493;
    if (v323 != 1)
    {
      sub_22DDEF284(v319, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE25AA0(v319, v313, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v324 = v493;
  }

  sub_22DE257B8(v308, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);

  sub_22DE257B8(v313, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v325 = sub_22DEC4764();
  v326 = *(v325 - 8);
  v327 = v468;
  (*(v326 + 56))(v468, 1, 1, v325);
  v328 = sub_22DEC4C04();
  v329 = v327;

  v330 = (*(v326 + 48))(v327, 1, v325);
  v331 = 0;
  if (v330 != 1)
  {
    v331 = sub_22DEC4724();
    (*(v326 + 8))(v329, v325);
  }

  v332 = [objc_opt_self() actionWithLabel:v328 url:v331];

  if (v332)
  {
    v333 = sub_22DEC4C04();
    [v332 setIdentifier_];

    v334 = sub_22DEC4C04();

    v335 = v510;
    [v510 setInformativeFooterText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
    v336 = swift_allocObject();
    *(v336 + 16) = xmmword_22DEC77B0;
    *(v336 + 32) = v332;
    sub_22DE25A54();
    v337 = v332;
    v338 = sub_22DEC4CD4();

    [v335 setActions_];
  }

  v339 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  v340 = v503;
  swift_beginAccess();
  v341 = v469;
  sub_22DDF0028(v340 + v339, v469, &qword_27DA37D70, &qword_22DEC7958);
  v342 = v474 + 48;
  v343 = *(v474 + 48);
  v344 = v471;
  if (v343(v341, 1, v471) == 1)
  {

    sub_22DDEF284(v341, &qword_27DA37D70, &qword_22DEC7958);
LABEL_134:
    v370 = v470[3];
    v371 = v470[4];
    __swift_project_boxed_opaque_existential_1(v470, v370);
    v372 = *(v371 + 8);
    v373 = v510;
    v374 = v510;
    v372(v373, v370, v371);

    v375 = (*(v503 + 32) & 1) + 1;
    v376 = v460;
    sub_22DEC4D94();
    v377 = sub_22DEC4DB4();
    (*(*(v377 - 8) + 56))(v376, 0, 1, v377);
    v378 = swift_allocObject();
    *(v378 + 16) = 0;
    *(v378 + 24) = 0;
    *(v378 + 32) = v375;
    *(v378 + 40) = 2;
    sub_22DE1D5F0(0, 0, v376, &unk_22DEC7980, v378);

    v496(0, 0);

    v289 = v324;
    v290 = v500;
LABEL_135:
    sub_22DE256E4(v289, v290);
    return;
  }

  v474 = v342;
  sub_22DDEF284(v341, &qword_27DA37D70, &qword_22DEC7958);
  v345 = v340 + v339;
  v346 = v461;
  sub_22DDF0028(v345, v461, &qword_27DA37D70, &qword_22DEC7958);
  if (v343(v346, 1, v344) == 1)
  {
    v347 = v463;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v347 + v344[5]) = 2;
    v348 = (v347 + v344[6]);
    *v348 = 0;
    v348[1] = 0;
    v349 = (v347 + v344[7]);
    *v349 = 0;
    v349[1] = 0;
    v350 = (v347 + v344[8]);
    *v350 = 0;
    v350[1] = 0;
    v351 = (v347 + v344[9]);
    *v351 = 0;
    v351[1] = 0;
    v160 = v343(v346, 1, v344) == 1;
    v352 = v464;
    v353 = v346;
    v354 = v462;
    if (!v160)
    {
      sub_22DDEF284(v353, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v347 = v463;
    sub_22DE25AA0(v346, v463, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    v352 = v464;
    v354 = v462;
  }

  if (!*(v347 + v344[6] + 8))
  {
    goto LABEL_132;
  }

  sub_22DE257B8(v347, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DDF0028(v503 + v339, v354, &qword_27DA37D70, &qword_22DEC7958);
  if (v343(v354, 1, v344) == 1)
  {
    v347 = v447;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v347 + v344[5]) = 2;
    v355 = (v347 + v344[6]);
    *v355 = 0;
    v355[1] = 0;
    v356 = (v347 + v344[7]);
    *v356 = 0;
    v356[1] = 0;
    v357 = (v347 + v344[8]);
    *v357 = 0;
    v357[1] = 0;
    v358 = (v347 + v344[9]);
    *v358 = 0;
    v358[1] = 0;
    if (v343(v354, 1, v344) != 1)
    {
      sub_22DDEF284(v354, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v347 = v447;
    sub_22DE25AA0(v354, v447, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  if (!*(v347 + v344[7] + 8))
  {
    goto LABEL_132;
  }

  sub_22DE257B8(v347, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v359 = v458;
  sub_22DDF0028(v503 + v339, v458, &qword_27DA37D70, &qword_22DEC7958);
  if (v343(v359, 1, v344) == 1)
  {
    v347 = v459;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v347 + v344[5]) = 2;
    v360 = (v347 + v344[6]);
    *v360 = 0;
    v360[1] = 0;
    v361 = (v347 + v344[7]);
    *v361 = 0;
    v361[1] = 0;
    v362 = (v347 + v344[8]);
    *v362 = 0;
    v362[1] = 0;
    v363 = (v347 + v344[9]);
    *v363 = 0;
    v363[1] = 0;
    if (v343(v359, 1, v344) != 1)
    {
      sub_22DDEF284(v359, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v347 = v459;
    sub_22DE25AA0(v359, v459, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  if (!*(v347 + v344[8] + 8))
  {
LABEL_132:

    v369 = v347;
LABEL_133:
    sub_22DE257B8(v369, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    goto LABEL_134;
  }

  sub_22DE257B8(v347, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v364 = v457;
  sub_22DDF0028(v503 + v339, v457, &qword_27DA37D70, &qword_22DEC7958);
  if (v343(v364, 1, v344) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v352 + v344[5]) = 2;
    v365 = (v352 + v344[6]);
    *v365 = 0;
    v365[1] = 0;
    v366 = (v352 + v344[7]);
    *v366 = 0;
    v366[1] = 0;
    v367 = (v352 + v344[8]);
    *v367 = 0;
    v367[1] = 0;
    v368 = (v352 + v344[9]);
    *v368 = 0;
    v368[1] = 0;
    if (v343(v364, 1, v344) != 1)
    {
      sub_22DDEF284(v364, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    sub_22DE25AA0(v364, v352, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  if (!*(v352 + v344[9] + 8))
  {

    v369 = v352;
    goto LABEL_133;
  }

  sub_22DE257B8(v352, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v379 = [objc_allocWithZone(MEMORY[0x277CFE510]) init];
  v380 = v449;
  sub_22DDF0028(v503 + v339, v449, &qword_27DA37D70, &qword_22DEC7958);
  if (v343(v380, 1, v344) == 1)
  {
    v381 = v450;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v381 + v344[5]) = 2;
    v382 = (v381 + v344[6]);
    *v382 = 0;
    v382[1] = 0;
    v383 = (v381 + v344[7]);
    *v383 = 0;
    v383[1] = 0;
    v384 = (v381 + v344[8]);
    *v384 = 0;
    v384[1] = 0;
    v385 = (v381 + v344[9]);
    *v385 = 0;
    v385[1] = 0;
    v160 = v343(v380, 1, v344) == 1;
    v386 = v380;
    v387 = v453;
    if (!v160)
    {
      sub_22DDEF284(v386, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v381 = v450;
    sub_22DE25AA0(v380, v450, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    v387 = v453;
  }

  sub_22DE257B8(v381, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v388 = sub_22DEC4C04();

  [v379 setTitle_];

  v389 = v471;
  v390 = v451;
  sub_22DDF0028(v503 + v339, v451, &qword_27DA37D70, &qword_22DEC7958);
  if (v343(v390, 1, v389) == 1)
  {
    v391 = v452;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v391 + v389[5]) = 2;
    v392 = (v391 + v389[6]);
    *v392 = 0;
    v392[1] = 0;
    v393 = (v391 + v389[7]);
    *v393 = 0;
    v393[1] = 0;
    v394 = (v391 + v389[8]);
    *v394 = 0;
    v394[1] = 0;
    v395 = (v391 + v389[9]);
    *v395 = 0;
    v395[1] = 0;
    if (v343(v390, 1, v389) != 1)
    {
      sub_22DDEF284(v390, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v391 = v452;
    sub_22DE25AA0(v390, v452, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  sub_22DE257B8(v391, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v396 = sub_22DEC4C04();

  [v379 setInformativeText_];

  v397 = [objc_allocWithZone(MEMORY[0x277CFE4F8]) init];
  v398 = [objc_allocWithZone(MEMORY[0x277CFE4F8]) init];
  v399 = sub_22DEC4C04();
  v514 = v397;
  [v397 setIdentifier_];

  v400 = sub_22DEC4C04();
  v401 = v471;
  v513 = v398;
  [v398 setIdentifier_];

  sub_22DDF0028(v503 + v339, v387, &qword_27DA37D70, &qword_22DEC7958);
  if (v343(v387, 1, v401) == 1)
  {
    v402 = v454;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v402 + v401[5]) = 2;
    v403 = (v402 + v401[6]);
    *v403 = 0;
    v403[1] = 0;
    v404 = (v402 + v401[7]);
    *v404 = 0;
    v404[1] = 0;
    v405 = (v402 + v401[8]);
    *v405 = 0;
    v405[1] = 0;
    v406 = (v402 + v401[9]);
    *v406 = 0;
    v406[1] = 0;
    if (v343(v387, 1, v401) != 1)
    {
      sub_22DDEF284(v387, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v402 = v454;
    sub_22DE25AA0(v387, v454, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  sub_22DE257B8(v402, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v407 = sub_22DEC4C04();

  [v514 setLabel_];

  v408 = v455;
  sub_22DDF0028(v503 + v339, v455, &qword_27DA37D70, &qword_22DEC7958);
  if (v343(v408, 1, v401) == 1)
  {
    v409 = v445;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v409 + v401[5]) = 2;
    v410 = (v409 + v401[6]);
    *v410 = 0;
    v410[1] = 0;
    v411 = (v409 + v401[7]);
    *v411 = 0;
    v411[1] = 0;
    v412 = (v409 + v401[8]);
    *v412 = 0;
    v412[1] = 0;
    v413 = (v409 + v401[9]);
    *v413 = 0;
    v413[1] = 0;
    if (v343(v408, 1, v401) != 1)
    {
      sub_22DDEF284(v408, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v409 = v445;
    sub_22DE25AA0(v408, v445, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  v414 = v471;

  sub_22DE257B8(v409, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v415 = sub_22DEC4C04();

  v416 = v513;
  [v513 setLabel_];

  [v379 setActivateAction_];
  [v379 setClearAction_];
  [v379 setFrequency_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D98, &qword_22DEC7988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC77C0;
  v418 = *MEMORY[0x277CFE4A0];
  *(inited + 32) = *MEMORY[0x277CFE4A0];
  v419 = *MEMORY[0x277CFE478];
  v420 = *MEMORY[0x277CFE480];
  *(inited + 40) = *MEMORY[0x277CFE478];
  *(inited + 48) = v420;
  v421 = v418;
  v422 = v419;
  v423 = v414;
  v424 = v420;
  sub_22DE25818(inited);
  swift_setDeallocating();
  type metadata accessor for FLNotificationOptions(0);
  swift_arrayDestroy();
  sub_22DE25A0C(&qword_27DA37958, type metadata accessor for FLNotificationOptions, &unk_22DEC5E90);
  v425 = sub_22DEC4DC4();

  [v379 setOptions_];

  v426 = v446;
  sub_22DDF0028(v503 + v339, v446, &qword_27DA37D70, &qword_22DEC7958);
  if (v343(v426, 1, v423) == 1)
  {
    v427 = v456;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v427 + v423[5]) = 2;
    v428 = (v427 + v423[6]);
    *v428 = 0;
    v428[1] = 0;
    v429 = (v427 + v423[7]);
    *v429 = 0;
    v429[1] = 0;
    v430 = (v427 + v423[8]);
    *v430 = 0;
    v430[1] = 0;
    v431 = (v427 + v423[9]);
    *v431 = 0;
    v431[1] = 0;
    if (v343(v426, 1, v423) != 1)
    {
      sub_22DDEF284(v426, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    v427 = v456;
    sub_22DE25AA0(v426, v456, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  v432 = *(v427 + v423[5]);
  sub_22DE257B8(v427, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  if (v432 == 2 || (v432 & 1) == 0)
  {

    v324 = v493;
LABEL_167:
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v438 = sub_22DEC4B44();
    __swift_project_value_buffer(v438, qword_281462270);
    v439 = v379;
    v440 = sub_22DEC4B24();
    v441 = sub_22DEC4E54();

    if (os_log_type_enabled(v440, v441))
    {
      v442 = swift_slowAlloc();
      v443 = swift_slowAlloc();
      *v442 = 138412290;
      *(v442 + 4) = v439;
      *v443 = v439;
      v444 = v439;
      _os_log_impl(&dword_22DDEC000, v440, v441, "FollowUp notification: %@", v442, 0xCu);
      sub_22DDEF284(v443, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v443, -1, -1);
      MEMORY[0x2318DBF00](v442, -1, -1);
    }

    [v510 setNotification_];
    goto LABEL_134;
  }

  v433 = *MEMORY[0x277CFE498];
  v434 = [v379 options];
  if (v434)
  {
    v435 = v434;
    v436 = sub_22DEC4DD4();

    v515 = v436;
    sub_22DE23DCC(v516, v433);

    if (v515)
    {
      v437 = sub_22DEC4DC4();
    }

    else
    {
      v437 = 0;
    }

    v324 = v493;
    [v379 setOptions_];

    goto LABEL_167;
  }

  __break(1u);
}

uint64_t NDOPostFollowUpActionHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NDOPostFollowUpActionHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

void sub_22DE23C80(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22DE1FBCC(a1, a2, v7, v8, (v2 + v6), v9);
}

uint64_t sub_22DE23DCC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_22DEC4C34();
  sub_22DEC5184();
  sub_22DEC4C94();
  v7 = sub_22DEC51A4();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_22DEC4C34();
      v13 = v12;
      if (v11 == sub_22DEC4C34() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_22DEC50E4();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_22DE241F4(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_22DE23F78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DA8, qword_22DEC7990);
  result = sub_22DEC4F04();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      sub_22DEC4C34();
      sub_22DEC5184();
      sub_22DEC4C94();
      v18 = sub_22DEC51A4();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22DE241F4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22DE23F78(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_22DE243DC();
      goto LABEL_16;
    }

    sub_22DE2452C(v7 + 1);
  }

  v9 = *v3;
  sub_22DEC4C34();
  sub_22DEC5184();
  sub_22DEC4C94();
  v10 = sub_22DEC51A4();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for FLNotificationOptions(0);
    do
    {
      v13 = sub_22DEC4C34();
      v15 = v14;
      if (v13 == sub_22DEC4C34() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_22DEC50E4();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22DEC5114();
  __break(1u);
  return result;
}

id sub_22DE243DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DA8, qword_22DEC7990);
  v2 = *v0;
  v3 = sub_22DEC4EF4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_22DE2452C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DA8, qword_22DEC7990);
  result = sub_22DEC4F04();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22DEC4C34();
      sub_22DEC5184();
      v18 = v17;
      sub_22DEC4C94();
      v19 = sub_22DEC51A4();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
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

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_22DE24780(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v106 = a3;
  v107 = a2;
  v121 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v105 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v111 = &v103 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v116 = &v103 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v103 - v10;
  v122 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v120 = *(v122 - 8);
  v12 = MEMORY[0x28223BE20](v122);
  v104 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v110 = (&v103 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v115 = (&v103 - v17);
  MEMORY[0x28223BE20](v16);
  v19 = (&v103 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v103 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v108 = &v103 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v113 = &v103 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v103 - v27;
  v29 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v112 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v109 = &v103 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v114 = &v103 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v103 - v37;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v39 = sub_22DEC4B44();
  v117 = __swift_project_value_buffer(v39, qword_281462270);
  v40 = sub_22DEC4B24();
  v41 = sub_22DEC4E34();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_22DDEC000, v40, v41, "Resolving proto url", v42, 2u);
    MEMORY[0x2318DBF00](v42, -1, -1);
  }

  v118 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 28);
  sub_22DDF0028(v121 + v118, v28, &qword_27DA37D80, &unk_22DEC7960);
  v43 = *(v30 + 48);
  v44 = v43(v28, 1, v29);
  v119 = v43;
  if (v44 == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v38[*(v29 + 20)] = 7;
    v45 = v120;
    (*(v120 + 56))(&v38[*(v29 + 24)], 1, 1, v122);
    if (v43(v28, 1, v29) != 1)
    {
      sub_22DDEF284(v28, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE25AA0(v28, v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v45 = v120;
  }

  sub_22DDF0028(&v38[*(v29 + 24)], v11, &qword_27DA37D78, &unk_22DEC8150);
  v46 = *(v45 + 48);
  v47 = v122;
  if (v46(v11, 1, v122) == 1)
  {
    v48 = MEMORY[0x277D84F90];
    *v19 = sub_22DE0501C(MEMORY[0x277D84F90]);
    v19[1] = sub_22DE0501C(v48);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    sub_22DE257B8(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    v49 = (v19 + *(v47 + 28));
    *v49 = 0;
    v49[1] = 0;
    v50 = (v19 + *(v47 + 32));
    *v50 = 0;
    v50[1] = 0;
    v51 = v46(v11, 1, v47);
    v52 = v46;
    if (v51 != 1)
    {
      sub_22DDEF284(v11, &qword_27DA37D78, &unk_22DEC8150);
    }
  }

  else
  {
    sub_22DE257B8(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DE25AA0(v11, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    v52 = v46;
  }

  v53 = v122;
  v54 = *(v19 + *(v122 + 28) + 8);
  sub_22DE257B8(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v55 = v119;
  if (v54)
  {
    v56 = sub_22DEC4B24();
    v57 = sub_22DEC4E34();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_22DDEC000, v56, v57, "URL specified. No resolving is needed", v58, 2u);
      v59 = v58;
      v55 = v119;
      MEMORY[0x2318DBF00](v59, -1, -1);
    }

    v60 = v113;
    sub_22DDF0028(v121 + v118, v113, &qword_27DA37D80, &unk_22DEC7960);
    v61 = v55(v60, 1, v29);
    v62 = v116;
    v63 = v114;
    if (v61 == 1)
    {
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      *(v63 + *(v29 + 20)) = 7;
      (*(v120 + 56))(v63 + *(v29 + 24), 1, 1, v53);
      v64 = v55(v60, 1, v29);
      v65 = v115;
      if (v64 != 1)
      {
        sub_22DDEF284(v60, &qword_27DA37D80, &unk_22DEC7960);
      }
    }

    else
    {
      sub_22DE25AA0(v60, v114, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      v65 = v115;
    }

    sub_22DDF0028(v63 + *(v29 + 24), v62, &qword_27DA37D78, &unk_22DEC8150);
    if (v52(v62, 1, v53) == 1)
    {
      v72 = MEMORY[0x277D84F90];
      *v65 = sub_22DE0501C(MEMORY[0x277D84F90]);
      v65[1] = sub_22DE0501C(v72);
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      sub_22DE257B8(v63, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      v73 = (v65 + *(v53 + 28));
      *v73 = 0;
      v73[1] = 0;
      v74 = (v65 + *(v53 + 32));
      *v74 = 0;
      v74[1] = 0;
      if (v52(v62, 1, v53) != 1)
      {
        sub_22DDEF284(v62, &qword_27DA37D78, &unk_22DEC8150);
      }
    }

    else
    {
      sub_22DE257B8(v63, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      sub_22DE25AA0(v62, v65, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    }

    v75 = (v65 + *(v53 + 28));
    v77 = *v75;
    v76 = v75[1];

    sub_22DE257B8(v65, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    if (v76)
    {
      return v77;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v66 = v108;
    sub_22DDF0028(v121 + v118, v108, &qword_27DA37D80, &unk_22DEC7960);
    if (v55(v66, 1, v29) == 1)
    {
      v67 = v109;
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      *(v67 + *(v29 + 20)) = 7;
      (*(v120 + 56))(v67 + *(v29 + 24), 1, 1, v53);
      v68 = v55(v66, 1, v29);
      v70 = v111;
      v69 = v112;
      v71 = v110;
      if (v68 != 1)
      {
        sub_22DDEF284(v66, &qword_27DA37D80, &unk_22DEC7960);
      }
    }

    else
    {
      v67 = v109;
      sub_22DE25AA0(v66, v109, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      v70 = v111;
      v69 = v112;
      v71 = v110;
    }

    sub_22DDF0028(v67 + *(v29 + 24), v70, &qword_27DA37D78, &unk_22DEC8150);
    if (v52(v70, 1, v53) == 1)
    {
      v79 = v67;
      v80 = MEMORY[0x277D84F90];
      *v71 = sub_22DE0501C(MEMORY[0x277D84F90]);
      v71[1] = sub_22DE0501C(v80);
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      sub_22DE257B8(v79, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      v81 = (v71 + *(v53 + 28));
      *v81 = 0;
      v81[1] = 0;
      v82 = (v71 + *(v53 + 32));
      *v82 = 0;
      v82[1] = 0;
      if (v52(v70, 1, v53) != 1)
      {
        sub_22DDEF284(v70, &qword_27DA37D78, &unk_22DEC8150);
      }
    }

    else
    {
      sub_22DE257B8(v67, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      sub_22DE25AA0(v70, v71, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    }

    v83 = *(v71 + *(v53 + 32) + 8);
    sub_22DE257B8(v71, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    if (v83)
    {
      v84 = v103;
      sub_22DDF0028(v121 + v118, v103, &qword_27DA37D80, &unk_22DEC7960);
      v85 = v119;
      if (v119(v84, 1, v29) == 1)
      {
        _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
        *(v69 + *(v29 + 20)) = 7;
        (*(v120 + 56))(v69 + *(v29 + 24), 1, 1, v53);
        if (v85(v84, 1, v29) != 1)
        {
          sub_22DDEF284(v84, &qword_27DA37D80, &unk_22DEC7960);
        }
      }

      else
      {
        sub_22DE25AA0(v84, v69, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
      }

      v89 = v105;
      sub_22DDF0028(v69 + *(v29 + 24), v105, &qword_27DA37D78, &unk_22DEC8150);
      if (v52(v89, 1, v53) == 1)
      {
        v90 = MEMORY[0x277D84F90];
        v91 = sub_22DE0501C(MEMORY[0x277D84F90]);
        v92 = v104;
        *v104 = v91;
        v92[1] = sub_22DE0501C(v90);
        _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
        sub_22DE257B8(v69, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
        v93 = (v92 + *(v53 + 28));
        *v93 = 0;
        v93[1] = 0;
        v94 = (v92 + *(v53 + 32));
        *v94 = 0;
        v94[1] = 0;
        if (v52(v89, 1, v53) != 1)
        {
          sub_22DDEF284(v89, &qword_27DA37D78, &unk_22DEC8150);
        }
      }

      else
      {
        sub_22DE257B8(v69, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
        v92 = v104;
        sub_22DE25AA0(v89, v104, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
      }

      v95 = (v92 + *(v53 + 32));
      v97 = *v95;
      v96 = v95[1];

      sub_22DE257B8(v92, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
      if (!v96)
      {
        v97 = 0;
        v96 = 0xE000000000000000;
      }

      v98 = sub_22DEC4B24();
      v99 = sub_22DEC4E34();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v123 = v101;
        *v100 = 136315138;
        *(v100 + 4) = sub_22DDEDC0C(v97, v96, &v123);
        _os_log_impl(&dword_22DDEC000, v98, v99, "URLKey specified. Resolving %s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x2318DBF00](v101, -1, -1);
        MEMORY[0x2318DBF00](v100, -1, -1);
      }

      v102 = v107(v97, v96);

      return v102;
    }

    else
    {
      v86 = sub_22DEC4B24();
      v87 = sub_22DEC4E44();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_22DDEC000, v86, v87, "Link resolving failed. No url or urlKey", v88, 2u);
        MEMORY[0x2318DBF00](v88, -1, -1);
      }

      return 0;
    }
  }
}

uint64_t sub_22DE256E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22DE256F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22DE0858C;

  return sub_22DE2A32C(a1, v4, v5, v6, v7);
}

uint64_t sub_22DE257B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE25818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DA8, qword_22DEC7990);
    v3 = sub_22DEC4F14();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_22DEC4C34();
      sub_22DEC5184();
      v27 = v7;
      sub_22DEC4C94();
      v8 = sub_22DEC51A4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_22DEC4C34();
        v18 = v17;
        if (v16 == sub_22DEC4C34() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_22DEC50E4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22DE25A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22DE25A54()
{
  result = qword_27DA37DA0;
  if (!qword_27DA37DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA37DA0);
  }

  return result;
}

uint64_t sub_22DE25AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE25B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE25B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_22DEC4DB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_22DE014AC(a1, v15);
  v10 = qword_27DA37728;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_27DA37DB0;
  v12 = sub_22DE25D88();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  sub_22DE002CC(v15, (v13 + 32));
  *(v13 + 80) = a2;
  *(v13 + 88) = a3;

  sub_22DE1D5F0(0, 0, v8, &unk_22DEC7A78, v13);
}

uint64_t sub_22DE25CF0()
{
  type metadata accessor for DisplayedAlertsAndNotifications();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27DA37DB0 = v0;
  return result;
}

uint64_t sub_22DE25D30()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22DE25D88()
{
  result = qword_27DA37DB8;
  if (!qword_27DA37DB8)
  {
    type metadata accessor for DisplayedAlertsAndNotifications();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37DB8);
  }

  return result;
}

uint64_t sub_22DE25DE0()
{
  if (qword_27DA37728 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22DE25E3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DisplayedAlertsAndNotifications();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_22DE25E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  if (qword_27DA37728 != -1)
  {
    swift_once();
  }

  v7 = qword_27DA37DB0;

  return MEMORY[0x2822009F8](sub_22DE25F14, v7, 0);
}

uint64_t sub_22DE25F14()
{
  v20 = v0;
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  LOBYTE(v18) = 1;
  v4 = (*(v3 + 8))(&v18, v2, v3);
  if (v4 && (v5 = sub_22DE083DC(v4), , v5))
  {
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v6 = v0[8];
  v0[2] = v0[7];
  v0[3] = v6;
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 2;
  v8 = sub_22DE1AA60(sub_22DE262FC, v7, v5);

  if (v8)
  {
  }

  else
  {
    v9 = *(v5 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v5;
    if (!isUniquelyReferenced_nonNull_native || v9 >= *(v5 + 24) >> 1)
    {
      v5 = sub_22DE0CE54(isUniquelyReferenced_nonNull_native, v9 + 1, 1, v5);
      v18 = v5;
    }

    v11 = v0[6];
    sub_22DE263C4(0, 0, 1, v0[7], v0[8]);

    v12 = v1[3];
    v13 = v11[5];
    __swift_project_boxed_opaque_existential_1(v11, v12);
    if (*(v5 + 16) >= 0x1AuLL)
    {
      sub_22DE26224(v5, v5 + 32, 0, 0x33uLL);
      v15 = v14;

      v5 = v15;
    }

    v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BE8, &qword_22DEC7A80);
    v0[2] = v5;
    v19[0] = 1;
    (*(v13 + 8))(v0 + 2, v19, v12, v13);
    sub_22DE0E24C((v0 + 2));
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22DE26160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22DE0858C;

  return sub_22DE25E78(a1, v4, v5, (v1 + 4), v6, v7);
}

void sub_22DE26224(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A50, &qword_22DEC6580);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_22DE2631C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_22DE263C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t NDOConfigLoadingCheckInHandler.__allocating_init(configLoader:client:payloadProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_22DDEDA18(a1, v6 + 16);
  sub_22DDEDA18(a2, v6 + 56);
  sub_22DDEDA18(a3, v6 + 96);
  return v6;
}

uint64_t NDOConfigLoadingCheckInHandler.init(configLoader:client:payloadProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_22DDEDA18(a1, v3 + 16);
  sub_22DDEDA18(a2, v3 + 56);
  sub_22DDEDA18(a3, v3 + 96);
  return v3;
}

uint64_t sub_22DE26564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v11;
  v21 = *(a1 + 32);
  v12 = v5[5];
  v13 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v12);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  v16 = *(a1 + 16);
  *(v15 + 40) = *a1;
  *(v15 + 56) = v16;
  *(v15 + 72) = *(a1 + 32);
  *(v15 + 80) = a2;
  *(v15 + 88) = a3;
  v17 = *(v13 + 16);

  sub_22DDF0028(v20, v19, &qword_27DA37BB0, &qword_22DEC7340);

  v17(sub_22DE26B74, v15, v12, v13);
}

void sub_22DE266A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v38 = a5;
  v41 = a4;
  v42 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  MEMORY[0x28223BE20](v8);
  v10 = (&v38 - v9);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22DEC4764();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_22DDF0028(a1, v10, &qword_27DA37B88, &qword_22DEC6F08);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *&v44 = *v10;
      v26 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AE8, &qword_22DEC7400);
      swift_willThrowTypedImpl();
      *&v45 = 0;
      v44 = v26;
      BYTE8(v45) = 1;
      v27 = v26;
      v42(&v44);

      sub_22DE17504(v44, *(&v44 + 1), v45, SBYTE8(v45));
    }

    else
    {
      sub_22DE19B38(v10, v13);
      LOBYTE(v44) = 2;
      Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.apiUrl(for:)(&v44, v21);
      sub_22DE19B9C(v13);
      v28 = v15;
      v29 = *(v15 + 32);
      v29(v23, v21, v14);
      (*(v15 + 16))(v18, v23, v14);
      sub_22DDEDAAC(v25 + 56, &v44);
      sub_22DDEDAAC(v25 + 96, v43);
      type metadata accessor for NDORemoteCheckInHandler(0);
      v30 = swift_allocObject();
      v29((v30 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_url), v18, v14);
      sub_22DDEDA18(&v44, v30 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client);
      sub_22DDEDA18(v43, v30 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider);
      v31 = qword_28145AE68;
      swift_retain_n();
      v32 = v41;
      swift_retain_n();
      if (v31 != -1)
      {
        swift_once();
      }

      v33 = sub_22DEC4B44();
      __swift_project_value_buffer(v33, qword_281462270);
      v34 = sub_22DEC4B24();
      v35 = sub_22DEC4E54();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_22DDEC000, v34, v35, "RemoteCheckInHandler.checkIn", v36, 2u);
        MEMORY[0x2318DBF00](v36, -1, -1);
      }

      v37 = *(v38 + 16);
      v44 = *v38;
      v45 = v37;
      v46 = *(v38 + 32);

      sub_22DE17690(&v44, v39, v40, 0, v30, v30, v42, v32);

      (*(v28 + 8))(v23, v14);
    }
  }
}

uint64_t sub_22DE26B78(__int128 *a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t))
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v6 = *a1;
  v7 = v3;
  v8 = v4;
  return a3(&v6, a2);
}

void *NDOConfigLoadingCheckInHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  return v0;
}

uint64_t NDOConfigLoadingCheckInHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t sub_22DE26C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v12;
  v22 = *(a1 + 32);
  v13 = v11[5];
  v14 = v11[6];
  __swift_project_boxed_opaque_existential_1(v11 + 2, v13);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  v17 = *(a1 + 16);
  *(v16 + 40) = *a1;
  *(v16 + 56) = v17;
  *(v16 + 72) = *(a1 + 32);
  *(v16 + 80) = a2;
  *(v16 + 88) = a3;
  v18 = *(v14 + 16);

  sub_22DDF0028(v21, v20, &qword_27DA37BB0, &qword_22DEC7340);

  v18(sub_22DE26E70, v16, v13, v14);
}

uint64_t objectdestroy_2Tm_2()
{

  if (*(v0 + 40) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

void *static NDOResponseMapper.Warranty.decodeSaveAndPostDarwinNotification(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DE27534(a1, a2);
  v9 = v8;
  if ((v10 & 1) == 0)
  {
    v11 = *(v8 + 16);
    if (v11)
    {
      v12 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v13 = *(v5 + 72);

      do
      {
        sub_22DE28AD4(v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        sub_22DE280B4(v7);
        sub_22DE28A74(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        v12 += v13;
        --v11;
      }

      while (v11);
      sub_22DE115E8(v9, 0);
    }

    sub_22DE288B8();
  }

  return v9;
}

uint64_t static NDOResponseMapper.Warranty.deleteWarrantyForDeviceSerialAndPostDarwinNotification(_:)(void *a1, void *a2)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = sub_22DEC46F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DEC4764();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28145E4C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_28145E4C8);
  v29 = a1;
  v30[0] = a1;
  v30[1] = a2;

  MEMORY[0x2318DB350](0x6E6F736A2ELL, 0xE500000000000000);
  (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v4);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v5 + 8))(v7, v4);

  v12 = [objc_opt_self() defaultManager];
  v13 = sub_22DEC4724();
  v30[0] = 0;
  v14 = [v12 removeItemAtURL:v13 error:v30];

  if (v14)
  {
    v15 = v30[0];
    sub_22DE288B8();
  }

  else
  {
    v16 = v30[0];
    v17 = sub_22DEC46E4();

    swift_willThrow();
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v18 = sub_22DEC4B44();
    __swift_project_value_buffer(v18, qword_281462270);

    v19 = v17;
    v20 = sub_22DEC4B24();
    v21 = sub_22DEC4E44();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_22DDEDC0C(v29, a2, v30);
      *(v22 + 12) = 2112;
      v25 = v17;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&dword_22DDEC000, v20, v21, "Failed to delete coverage for device with serial: %s with error: %@", v22, 0x16u);
      sub_22DDEF284(v23, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x2318DBF00](v24, -1, -1);
      MEMORY[0x2318DBF00](v22, -1, -1);
    }

    else
    {
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_22DE27438@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  sub_22DE28A04(a1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  LOBYTE(a1) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  result = sub_22DDEF284(v6, &qword_27DA37DC0, &qword_22DECE2A0);
  *a2 = a1;
  return result;
}

uint64_t sub_22DE27534(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v95 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v88 = &v84 - v8;
  MEMORY[0x28223BE20](v7);
  v94 = (&v84 - v9);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v11 = *(v10 - 8);
  v96 = v10;
  v97 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v92 = (&v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v87 = (&v84 - v15);
  MEMORY[0x28223BE20](v14);
  v93 = (&v84 - v16);
  v98 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  v17 = MEMORY[0x28223BE20](v98);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v99 = &v84 - v20;
  v21 = sub_22DEC48E4();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v84 - v26;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v28 = sub_22DEC4B44();
  v29 = __swift_project_value_buffer(v28, qword_281462270);
  sub_22DDEEEE8(a1, a2);
  v89 = v29;
  v30 = sub_22DEC4B24();
  v31 = sub_22DEC4E34();
  sub_22DDEEF50(a1, a2);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v90 = v22;
    v33 = v32;
    v34 = swift_slowAlloc();
    v91 = v21;
    v35 = v34;
    v100 = v34;
    *v33 = 136315138;
    v36 = sub_22DEC4784();
    v86 = v25;
    v38 = v27;
    v39 = sub_22DDEDC0C(v36, v37, &v100);
    v25 = v86;

    *(v33 + 4) = v39;
    v27 = v38;
    _os_log_impl(&dword_22DDEC000, v30, v31, "Decoding coverage data: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v21 = v91;
    MEMORY[0x2318DBF00](v35, -1, -1);
    v40 = v33;
    v22 = v90;
    MEMORY[0x2318DBF00](v40, -1, -1);
  }

  sub_22DEC48D4();
  sub_22DEC48C4();
  (*(v22 + 16))(v25, v27, v21);
  sub_22DDEEEE8(a1, a2);
  sub_22DDEF81C(&qword_28145CA68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
  v41 = v99;
  v42 = v98;
  sub_22DEC4A14();
  v86 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC77B0;
  *(inited + 32) = swift_getKeyPath();
  v44 = sub_22DE01028(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v45 = v97;
  if ((v44 & 1) == 0)
  {
    goto LABEL_15;
  }

  v46 = *(v42 + 24);
  v47 = v94;
  sub_22DE28A04(v41 + v46, v94);
  v50 = *(v45 + 48);
  v48 = v45 + 48;
  v49 = v50;
  v51 = v96;
  if (v50(v47, 1, v96) == 1)
  {
    v85 = v46;
    v52 = v49;
    v53 = v93;
    *v93 = MEMORY[0x277D84F90];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v54 = v51;
    v55 = v53;
    v49 = v52;
    v46 = v85;
    if (v49(v47, 1, v54) != 1)
    {
      sub_22DDEF284(v47, &qword_27DA37DC0, &qword_22DECE2A0);
    }
  }

  else
  {
    v55 = v93;
    sub_22DE28B3C(v47, v93);
  }

  v56 = v55;
  v57 = *v55;

  sub_22DE28A74(v56, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  v58 = *(v57 + 16);

  if (v58)
  {
    sub_22DE28AD4(v41, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
    v59 = sub_22DEC4B24();
    v60 = sub_22DEC4E54();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v42;
      v62 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v100 = v94;
      *v62 = 136315138;
      v63 = *(v61 + 24);
      v98 = v19;
      v64 = &v19[v63];
      v65 = v88;
      sub_22DE28A04(v64, v88);
      v66 = v96;
      v67 = v49(v65, 1, v96);
      v90 = v22;
      v91 = v21;
      v97 = v48;
      if (v67 == 1)
      {
        v68 = v87;
        *v87 = MEMORY[0x277D84F90];
        _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
        if (v49(v65, 1, v66) != 1)
        {
          sub_22DDEF284(v65, &qword_27DA37DC0, &qword_22DECE2A0);
        }
      }

      else
      {
        v68 = v87;
        sub_22DE28B3C(v65, v87);
      }

      v72 = *v68;

      sub_22DE28A74(v68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
      v73 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
      v74 = MEMORY[0x2318DB3A0](v72, v73);
      v76 = v75;

      sub_22DE28A74(v98, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
      v77 = sub_22DDEDC0C(v74, v76, &v100);

      *(v62 + 4) = v77;
      _os_log_impl(&dword_22DDEC000, v59, v60, "Decoded warranties: %s", v62, 0xCu);
      v78 = v94;
      __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x2318DBF00](v78, -1, -1);
      MEMORY[0x2318DBF00](v62, -1, -1);

      v22 = v90;
      v21 = v91;
      v41 = v99;
    }

    else
    {

      sub_22DE28A74(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
    }

    v79 = v95;
    sub_22DE28A04(v41 + v46, v95);
    v80 = v79;
    v81 = v96;
    v82 = v49(v80, 1, v96);
    v83 = v92;
    if (v82 == 1)
    {
      *v92 = MEMORY[0x277D84F90];
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      sub_22DE28A74(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
      (*(v22 + 8))(v86, v21);
      if (v49(v95, 1, v81) != 1)
      {
        sub_22DDEF284(v95, &qword_27DA37DC0, &qword_22DECE2A0);
      }
    }

    else
    {
      sub_22DE28A74(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
      (*(v22 + 8))(v86, v21);
      sub_22DE28B3C(v95, v83);
    }

    v69 = *v83;

    sub_22DE28A74(v83, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  }

  else
  {
LABEL_15:
    type metadata accessor for NDOErrors(0);
    sub_22DDEF81C(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v69 = swift_allocError();
    *v70 = 0xD000000000000019;
    v70[1] = 0x800000022DED2530;
    swift_storeEnumTagMultiPayload();
    sub_22DE28A74(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);
    (*(v22 + 8))(v86, v21);
  }

  return v69;
}

void sub_22DE280B4(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = sub_22DEC46F4();
  v55 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22DEC4764();
  v5 = *(v57 - 1);
  v6 = MEMORY[0x28223BE20](v57);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  v10 = sub_22DEC4904();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0) + 20));
  swift_beginAccess();
  if (*(v14 + 24))
  {
    v54 = v9;
    sub_22DEC48F4();
    sub_22DDEF81C(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
    v51 = sub_22DEC4A04();
    v52 = v15;
    (*(v11 + 8))(v13, v10);
    if (*(v14 + 24))
    {
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = v57;
    v53 = v5;
    v19 = qword_28145E4C0;

    if (v19 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v18, qword_28145E4C8);
    v58[0] = v16;
    v58[1] = v17;

    MEMORY[0x2318DB350](0x6E6F736A2ELL, 0xE500000000000000);
    v20 = v55;
    (*(v55 + 104))(v4, *MEMORY[0x277CC91D8], v2);
    sub_22DDEDFE0();
    v21 = v54;
    sub_22DEC4754();
    (*(v20 + 8))(v4, v2);

    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v22 = sub_22DEC4B44();
    __swift_project_value_buffer(v22, qword_281462270);
    v23 = v53;
    v24 = v56;
    (*(v53 + 16))(v56, v21, v18);
    v25 = sub_22DEC4B24();
    v26 = sub_22DEC4E54();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58[0] = v57;
      *v27 = 136315138;
      sub_22DDEF81C(&qword_28145E550, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v28 = sub_22DEC50A4();
      v30 = v29;
      v31 = *(v23 + 8);
      v31(v24, v18);
      v32 = sub_22DDEDC0C(v28, v30, v58);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_22DDEC000, v25, v26, "Writing warranty response to %s", v27, 0xCu);
      v33 = v57;
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x2318DBF00](v33, -1, -1);
      MEMORY[0x2318DBF00](v27, -1, -1);
    }

    else
    {

      v31 = *(v23 + 8);
      v31(v24, v18);
    }

    v34 = [objc_opt_self() defaultManager];
    v35 = sub_22DEC4724();
    v58[0] = 0;
    v36 = [v34 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:v58];

    if (v36)
    {
      v37 = v58[0];
      v38 = v54;
      v40 = v51;
      v39 = v52;
      sub_22DEC47B4();
      v31(v38, v18);
      sub_22DDEEF50(v40, v39);
    }

    else
    {
      v41 = v58[0];
      v42 = sub_22DEC46E4();

      swift_willThrow();
      sub_22DDEEF50(v51, v52);
      v31(v54, v18);
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v43 = sub_22DEC4B44();
      __swift_project_value_buffer(v43, qword_281462270);
      v44 = v42;
      v45 = sub_22DEC4B24();
      v46 = sub_22DEC4E44();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        v49 = v42;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v50;
        *v48 = v50;
        _os_log_impl(&dword_22DDEC000, v45, v46, "Error saving warranty %@", v47, 0xCu);
        sub_22DDEF284(v48, &qword_27DA379D8, qword_22DEC6E70);
        MEMORY[0x2318DBF00](v48, -1, -1);
        MEMORY[0x2318DBF00](v47, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_22DE288B8()
{
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v0 = sub_22DEC4B44();
  __swift_project_value_buffer(v0, qword_281462270);
  v1 = sub_22DEC4B24();
  v2 = sub_22DEC4E54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22DDEC000, v1, v2, "Posting coverage updated notification", v3, 2u);
    MEMORY[0x2318DBF00](v3, -1, -1);
  }

  v4 = sub_22DEC4C04();
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v5, v4, 0, 0, 0);
}

uint64_t sub_22DE28A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE28A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE28AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE28B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static NDOResponseMapper.DeviceList.decodeAndSave(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BD0, &unk_22DEC73F0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE28D08(a1, a2, a3);
  sub_22DDF0028(a3, v8, &qword_27DA37BD0, &unk_22DEC73F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37BD0, &unk_22DEC73F0);
  }

  sub_22DE296C0(v8, v11);
  _s6NDOAPI17NDOResponseMapperO10DeviceListO4saveyyAA51Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponseVFZ_0();
  return sub_22DE2A268(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
}

uint64_t sub_22DE28D08@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v70 = &v64 - v12;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v14 = *(v13 - 8);
  v71 = v13;
  v72 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v66 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v69 = (&v64 - v17);
  v18 = sub_22DEC48E4();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v25 = sub_22DEC4B44();
  v67 = __swift_project_value_buffer(v25, qword_281462270);
  v26 = sub_22DEC4B24();
  v27 = sub_22DEC4E34();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v65 = a1;
    v29 = a2;
    v30 = v19;
    v31 = v22;
    v32 = v11;
    v33 = v24;
    v34 = a3;
    v35 = v28;
    *v28 = 0;
    _os_log_impl(&dword_22DDEC000, v26, v27, "Decoding device list data", v28, 2u);
    v36 = v35;
    a3 = v34;
    v24 = v33;
    v11 = v32;
    v22 = v31;
    v19 = v30;
    a2 = v29;
    a1 = v65;
    MEMORY[0x2318DBF00](v36, -1, -1);
  }

  sub_22DDEEEE8(a1, a2);
  sub_22DEC48D4();
  sub_22DE2A220(&qword_27DA37DD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
  sub_22DEC4A14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC77B0;
  *(inited + 32) = swift_getKeyPath();
  v38 = sub_22DE01054(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v39 = v71;
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

  v40 = v24;
  v65 = *(v19 + 24);
  v41 = v70;
  sub_22DDF0028(&v24[v65], v70, &qword_27DA37DD0, &qword_22DECBB20);
  v42 = v72 + 48;
  v43 = *(v72 + 48);
  v44 = v43(v41, 1, v39);
  v72 = v42;
  if (v44 == 1)
  {
    v45 = v69;
    *v69 = MEMORY[0x277D84F90];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    if (v43(v41, 1, v39) != 1)
    {
      sub_22DDEF284(v41, &qword_27DA37DD0, &qword_22DECBB20);
    }
  }

  else
  {
    v45 = v69;
    sub_22DE296C0(v41, v69);
  }

  v46 = *v45;

  sub_22DE2A268(v45, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  v47 = *(v46 + 16);

  v24 = v40;
  if (v47)
  {
    sub_22DE2A2C8(v40, v22);
    v48 = sub_22DEC4B24();
    v49 = sub_22DEC4E54();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v22;
      v53 = v51;
      v73 = v51;
      *v50 = 136315138;
      v54 = *(v19 + 24);
      v70 = v52;
      sub_22DDF0028(v52 + v54, v11, &qword_27DA37DD0, &qword_22DECBB20);
      v55 = v43(v11, 1, v39);
      v64 = a3;
      if (v55 == 1)
      {
        *v66 = MEMORY[0x277D84F90];
        _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
        if (v43(v11, 1, v39) != 1)
        {
          sub_22DDEF284(v11, &qword_27DA37DD0, &qword_22DECBB20);
        }
      }

      else
      {
        sub_22DE296C0(v11, v66);
      }

      v59 = sub_22DEC4C74();
      v61 = v60;
      sub_22DE2A268(v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
      v62 = sub_22DDEDC0C(v59, v61, &v73);

      *(v50 + 4) = v62;
      v39 = v71;
      _os_log_impl(&dword_22DDEC000, v48, v49, "Decoded data: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x2318DBF00](v53, -1, -1);
      MEMORY[0x2318DBF00](v50, -1, -1);

      a3 = v64;
    }

    else
    {

      sub_22DE2A268(v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
    }

    v63 = v68;
    sub_22DDF0028(v40 + v65, v68, &qword_27DA37DD0, &qword_22DECBB20);
    if (v43(v63, 1, v39) == 1)
    {
      *a3 = MEMORY[0x277D84F90];
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      sub_22DE2A268(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
      if (v43(v63, 1, v39) != 1)
      {
        sub_22DDEF284(v63, &qword_27DA37DD0, &qword_22DECBB20);
      }
    }

    else
    {
      sub_22DE2A268(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
      sub_22DE296C0(v63, a3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BD0, &unk_22DEC73F0);
  }

  else
  {
LABEL_15:
    type metadata accessor for NDOErrors(0);
    sub_22DE2A220(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v56 = swift_allocError();
    *v57 = 0xD000000000000017;
    v57[1] = 0x800000022DED2580;
    swift_storeEnumTagMultiPayload();
    sub_22DE2A268(v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);
    *a3 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BD0, &unk_22DEC73F0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22DE296C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static NDOResponseMapper.DeviceList.loadLocalData()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22DEC48E4();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27DA37720 != -1)
  {
    swift_once();
  }

  v3 = sub_22DEC4764();
  __swift_project_value_buffer(v3, qword_27DA37B60);
  v4 = sub_22DEC4774();
  v6 = v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  sub_22DDEEEE8(v4, v6);
  sub_22DEC48D4();
  sub_22DE2A220(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  sub_22DEC4A14();
  sub_22DDEEF50(v4, v6);
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_22DE29B68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(a1 + *(v7 + 24), v6, &qword_27DA37DD0, &qword_22DECBB20);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  LOBYTE(a1) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  result = sub_22DDEF284(v6, &qword_27DA37DD0, &qword_22DECBB20);
  *a2 = a1;
  return result;
}

void _s6NDOAPI17NDOResponseMapperO10DeviceListO4saveyyAA51Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponseVFZ_0()
{
  v34[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22DEC4904();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC48F4();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  sub_22DE2A220(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  v4 = sub_22DEC4A04();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v7 = sub_22DEC4B44();
  __swift_project_value_buffer(v7, qword_281462270);
  v8 = sub_22DEC4B24();
  v9 = sub_22DEC4E54();
  v10 = 0x27DA37000uLL;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34[0] = v12;
    *v11 = 136315138;
    if (qword_27DA37720 != -1)
    {
      swift_once();
    }

    v13 = sub_22DEC4764();
    __swift_project_value_buffer(v13, qword_27DA37B60);
    sub_22DE2A220(&qword_28145E550, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_22DEC50A4();
    v16 = sub_22DDEDC0C(v14, v15, v34);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_22DDEC000, v8, v9, "Writing device list data to %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2318DBF00](v12, -1, -1);
    MEMORY[0x2318DBF00](v11, -1, -1);

    v10 = 0x27DA37000;
  }

  else
  {
  }

  v17 = [objc_opt_self() defaultManager];
  if (qword_28145E480 != -1)
  {
    swift_once();
  }

  v18 = sub_22DEC4764();
  __swift_project_value_buffer(v18, qword_28145E488);
  v19 = sub_22DEC4724();
  v34[0] = 0;
  v20 = [v17 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v34];

  if (v20)
  {
    v21 = *(v10 + 1824);
    v22 = v34[0];
    if (v21 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v18, qword_27DA37B60);
    sub_22DEC47B4();
    sub_22DDEEF50(v4, v6);
  }

  else
  {
    v23 = v34[0];
    v24 = sub_22DEC46E4();

    swift_willThrow();
    sub_22DDEEF50(v4, v6);
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v25 = sub_22DEC4B44();
    __swift_project_value_buffer(v25, qword_281462270);
    v26 = v24;
    v27 = sub_22DEC4B24();
    v28 = sub_22DEC4E44();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_22DDEC000, v27, v28, "Error saving device list: %@", v29, 0xCu);
      sub_22DDEF284(v30, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v30, -1, -1);
      MEMORY[0x2318DBF00](v29, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22DE2A220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DE2A268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE2A2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE2A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 64) = a4;
  v6 = sub_22DEC4B44();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DE2A3F0, 0, 0);
}

uint64_t sub_22DE2A3F0()
{
  v41 = v0;
  if (qword_27DA37730 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = __swift_project_value_buffer(v3, qword_27DA37DE0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22DEC4B24();
  v6 = sub_22DEC4E34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v8 = 136315394;
    v9 = "@NSDictionary8@?0";
    v10 = 0xD000000000000014;
    if (v7 == 1)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v9 = "No sections in response";
    }

    if (v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xD000000000000015;
    }

    if (v7)
    {
      v12 = v9;
    }

    else
    {
      v12 = "coverage.viewload";
    }

    v13 = *(v0 + 80);
    v14 = *(v0 + 64);
    v35 = *(v0 + 72);
    v36 = *(v0 + 88);
    v15 = *(v0 + 96);
    v39 = qword_27DA38BB0;
    v40 = off_27DA38BB8;

    MEMORY[0x2318DB350](v11, v12 | 0x8000000000000000);

    v16 = sub_22DDEDC0C(v39, v40, &v38);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2080;
    sub_22DE81CE0(v14, v15);
    sub_22DE2A928();
    v17 = sub_22DEC4BB4();
    v19 = v18;

    v20 = sub_22DDEDC0C(v17, v19, &v38);

    *(v8 + 14) = v20;
    _os_log_impl(&dword_22DDEC000, v5, v6, "Sending analytic event: %s with payload %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DBF00](v37, -1, -1);
    MEMORY[0x2318DBF00](v8, -1, -1);

    (*(v13 + 8))(v36, v35);
  }

  else
  {
    v22 = *(v0 + 80);
    v21 = *(v0 + 88);
    v23 = *(v0 + 72);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 96);
  v25 = "@NSDictionary8@?0";
  v26 = 0xD000000000000014;
  if (v24 == 1)
  {
    v26 = 0xD000000000000011;
  }

  else
  {
    v25 = "No sections in response";
  }

  if (*(v0 + 96))
  {
    v27 = v26;
  }

  else
  {
    v27 = 0xD000000000000015;
  }

  if (*(v0 + 96))
  {
    v28 = v25;
  }

  else
  {
    v28 = "coverage.viewload";
  }

  v29 = *(v0 + 64);
  v39 = qword_27DA38BB0;
  v40 = off_27DA38BB8;

  MEMORY[0x2318DB350](v27, v28 | 0x8000000000000000);

  v30 = sub_22DEC4C04();

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v24;
  *(v0 + 48) = sub_22DE2A91C;
  *(v0 + 56) = v31;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_22DE2A814;
  *(v0 + 40) = &block_descriptor_0;
  v32 = _Block_copy((v0 + 16));

  AnalyticsSendEventLazy();
  _Block_release(v32);

  v33 = *(v0 + 8);

  return v33();
}

id sub_22DE2A814(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_22DE2A928();
    v4 = sub_22DEC4B84();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_22DE2A8A0()
{
  v0 = sub_22DEC4B44();
  __swift_allocate_value_buffer(v0, qword_27DA37DE0);
  __swift_project_value_buffer(v0, qword_27DA37DE0);
  return sub_22DEC4B34();
}

unint64_t sub_22DE2A928()
{
  result = qword_27DA37DF8;
  if (!qword_27DA37DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA37DF8);
  }

  return result;
}

uint64_t sub_22DE2A974()
{
  v0 = sub_22DEC4B44();
  __swift_allocate_value_buffer(v0, qword_281462270);
  __swift_project_value_buffer(v0, qword_281462270);
  return sub_22DEC4B34();
}

uint64_t sub_22DE2A9E4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E00, &qword_22DEC7B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_22DDF0028(a1, &v10 - v5, &qword_27DA37E00, &qword_22DEC7B70);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  swift_beginAccess();
  sub_22DE2C6F4(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_22DE2AABC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  swift_beginAccess();
  return sub_22DDF0028(v1 + v3, a1, &qword_27DA37E00, &qword_22DEC7B70);
}

uint64_t NDOConfigLoader.__allocating_init(plistLoader:localConfigLoader:remoteConfigLoaderForUrl:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  NDOConfigLoader.init(plistLoader:localConfigLoader:remoteConfigLoaderForUrl:)(a1, a2, a3, a4);
  return v8;
}

uint64_t NDOConfigLoader.init(plistLoader:localConfigLoader:remoteConfigLoaderForUrl:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v21 = sub_22DEC4E74();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DEC4E64();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22DEC4B74();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  (*(*(v11 - 8) + 56))(v4 + v10, 1, 1, v11);
  v20 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfigQueue;
  v12 = sub_22DE2AE6C();
  v19[1] = "com.apple.NewDeviceOutreach";
  v19[2] = v12;
  sub_22DEC4B64();
  v26 = MEMORY[0x277D84F90];
  sub_22DE2C7EC(&qword_28145AD18, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E08, &qword_22DEC7B78);
  sub_22DE2B31C(&qword_28145AD30, &qword_27DA37E08, &qword_22DEC7B78);
  sub_22DEC4ED4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v21);
  *(v4 + v20) = sub_22DEC4EA4();
  sub_22DDEDA18(v22, v4 + 16);
  v13 = v23;
  v14 = v23[1];
  *(v4 + 56) = *v23;
  *(v4 + 72) = v14;
  v15 = *(v13 + 4);
  v17 = v24;
  v16 = v25;
  *(v4 + 88) = v15;
  *(v4 + 96) = v17;
  *(v4 + 104) = v16;
  return v4;
}

unint64_t sub_22DE2AE6C()
{
  result = qword_28145AD10;
  if (!qword_28145AD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28145AD10);
  }

  return result;
}

uint64_t sub_22DE2AEB8(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v3 = sub_22DEC4B54();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22DEC4B74();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfigQueue);
  aBlock[4] = sub_22DE2B2D0;
  v21 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DE2B2D8;
  aBlock[3] = &block_descriptor_1;
  v9 = _Block_copy(aBlock);

  sub_22DEC4B64();
  v19 = MEMORY[0x277D84F90];
  sub_22DE2C7EC(qword_28145ADB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E10, &qword_22DEC7B80);
  sub_22DE2B31C(&qword_28145AD40, &qword_27DA37E10, &qword_22DEC7B80);
  sub_22DEC4ED4();
  MEMORY[0x2318DB540](0, v8, v5, v9);
  _Block_release(v9);
  (*(v16 + 8))(v5, v3);
  (*(v6 + 8))(v8, v15);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v12 = v17;
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v18;

  sub_22DE2B71C(sub_22DE2B47C, v11);
}

uint64_t sub_22DE2B1E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E00, &qword_22DEC7B70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  swift_beginAccess();
  sub_22DE2C6F4(v4, a1 + v6);
  return swift_endAccess();
}

uint64_t sub_22DE2B2D8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22DE2B31C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22DE2B370(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfigQueue);

    MEMORY[0x28223BE20](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E18, &qword_22DEC7C38);
    sub_22DEC4E84();
  }

  return a3(a1);
}

uint64_t sub_22DE2B488@<X0>(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  MEMORY[0x28223BE20](v5);
  v7 = (v17 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E00, &qword_22DEC7B70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v12 = result;
  if (result)
  {
    sub_22DDF0028(a2, v7, &qword_27DA37B88, &qword_22DEC6F08);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17[0] = *v7;
      v13 = v17[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AE8, &qword_22DEC7400);
      swift_willThrowTypedImpl();

      v14 = 1;
    }

    else
    {
      sub_22DE19B38(v7, v10);
      v14 = 0;
    }

    v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
    (*(*(v15 - 8) + 56))(v10, v14, 1, v15);
    v16 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
    swift_beginAccess();
    sub_22DE2C6F4(v10, v12 + v16);
    swift_endAccess();
  }

  *a3 = v12 == 0;
  return result;
}

uint64_t sub_22DE2B71C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 80))
  {
    sub_22DDEDAAC(v2 + 56, &v22);
    if (*(&v23 + 1))
    {
LABEL_3:
      sub_22DDEDA18(&v22, v25);
      v6 = v26;
      v7 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = a1;
      v9[4] = a2;
      v10 = *(v7 + 16);

      v10(sub_22DE2C7E0, v9, v6, v7);

      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    v12 = *(v2 + 72);
    v22 = *(v2 + 56);
    v23 = v12;
    v24 = *(v2 + 88);
    if (*(&v12 + 1))
    {
      goto LABEL_3;
    }
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v13 = sub_22DEC4B44();
  __swift_project_value_buffer(v13, qword_281462270);
  v14 = sub_22DEC4B24();
  v15 = sub_22DEC4E54();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22DDEC000, v14, v15, "No local loader provided, using remote loader", v16, 2u);
    MEMORY[0x2318DBF00](v16, -1, -1);
  }

  v17 = v3[5];
  v18 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v17);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  v21 = *(v18 + 16);

  v21(sub_22DE2C7D4, v20, v17, v18);
}

void sub_22DE2B9B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  MEMORY[0x28223BE20](v7);
  v9 = (&v30 - v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_22DDF0028(a1, v9, &qword_27DA37B88, &qword_22DEC6F08);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = *v9;
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v13 = sub_22DEC4B44();
      __swift_project_value_buffer(v13, qword_281462270);
      v14 = v12;
      v15 = sub_22DEC4B24();
      v16 = sub_22DEC4E54();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v12;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_22DDEC000, v15, v16, "Falling back to remote config load, local failed with error: %@", v17, 0xCu);
        sub_22DDEF284(v18, &qword_27DA379D8, qword_22DEC6E70);
        MEMORY[0x2318DBF00](v18, -1, -1);
        MEMORY[0x2318DBF00](v17, -1, -1);
      }

      v21 = v11[5];
      v22 = v11[6];
      __swift_project_boxed_opaque_existential_1(v11 + 2, v21);
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a3;
      v24[4] = a4;
      v25 = *(v22 + 16);

      v25(sub_22DE2C878, v24, v21, v22);
    }

    else
    {
      sub_22DDEF284(v9, &qword_27DA37B88, &qword_22DEC6F08);
      a3(a1);
    }
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v26 = sub_22DEC4B44();
    __swift_project_value_buffer(v26, qword_281462270);
    v27 = sub_22DEC4B24();
    v28 = sub_22DEC4E44();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22DDEC000, v27, v28, "Instance is deallocated. Not handling results", v29, 2u);
      MEMORY[0x2318DBF00](v29, -1, -1);
    }
  }
}

void sub_22DE2BD64(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  MEMORY[0x28223BE20](v7);
  v9 = (&v42 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_22DEC4764();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v23 = sub_22DEC4B44();
    __swift_project_value_buffer(v23, qword_281462270);
    v24 = sub_22DEC4B24();
    v25 = sub_22DEC4E44();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22DDEC000, v24, v25, "Instance is deallocated. Not handling results", v26, 2u);
      MEMORY[0x2318DBF00](v26, -1, -1);
    }

    return;
  }

  v19 = Strong;
  v44 = a3;
  v45 = a4;
  v20 = [objc_opt_self() standardUserDefaults];
  v21 = sub_22DEC4C04();
  v22 = [v20 valueForKey_];

  if (v22)
  {
    sub_22DEC4EC4();
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
    if (swift_dynamicCast())
    {
      v27 = v46;
      v28 = v47;
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_19:

      *v9 = v16;
      swift_storeEnumTagMultiPayload();
      v33 = v16;
LABEL_23:
      v44(v9);

      sub_22DDEF284(v9, &qword_27DA37B88, &qword_22DEC6F08);
      return;
    }
  }

  else
  {
    sub_22DDEF284(&v50, &qword_27DA37988, &unk_22DEC6210);
  }

  v28 = 0xE400000000000000;
  v27 = 1685025392;
  if (v17)
  {
    goto LABEL_19;
  }

LABEL_13:
  if (!*(NSDictionary.configMaps.getter() + 16))
  {

    goto LABEL_21;
  }

  sub_22DE100E4(v27, v28);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  sub_22DEC4744();

  v31 = v42;
  v32 = v43;
  if ((*(v42 + 48))(v12, 1, v43) == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37910, &qword_22DEC5BB0);
LABEL_22:
    type metadata accessor for NDOErrors(0);
    sub_22DE2C7EC(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v34 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *v9 = v34;
    swift_storeEnumTagMultiPayload();
    goto LABEL_23;
  }

  (*(v31 + 32))(v15, v12, v32);
  v35 = v31;
  v36 = *(v19 + 96);

  v36(&v50, v15);

  v37 = *(&v51 + 1);
  v38 = v52;
  __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
  sub_22DDEDAAC(&v50, &v48);
  v39 = swift_allocObject();
  sub_22DDEDA18(&v48, v39 + 16);
  v40 = v45;
  *(v39 + 56) = v44;
  *(v39 + 64) = v40;
  v41 = *(v38 + 16);

  v41(sub_22DE2C834, v39, v37, v38);

  (*(v35 + 8))(v15, v32);
  __swift_destroy_boxed_opaque_existential_1(&v50);
}

void *NDOConfigLoader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  sub_22DDEF284(v0 + OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig, &qword_27DA37E00, &qword_22DEC7B70);

  return v0;
}

uint64_t NDOConfigLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  sub_22DDEF284(v0 + OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig, &qword_27DA37E00, &qword_22DEC7B70);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NDOConfigLoader(uint64_t a1)
{
  result = qword_28145E378;
  if (!qword_28145E378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22DE2C544(uint64_t a1)
{
  sub_22DE2C69C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22DE2C69C(uint64_t a1)
{
  if (!qword_28145BFB8[0])
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(255);
    v1 = sub_22DEC4EB4();
    if (!v2)
    {
      atomic_store(v1, qword_28145BFB8);
    }
  }
}

uint64_t sub_22DE2C6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37E00, &qword_22DEC7B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE2C764@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6NDOAPI15NDOConfigLoader_lastLoadedConfig;
  swift_beginAccess();
  return sub_22DDF0028(v1 + v3, a1, &qword_27DA37E00, &qword_22DEC7B70);
}

uint64_t sub_22DE2C7EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_Logging_Level_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Logging_Level.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DE2C8C4(uint64_t a1, uint64_t a2)
{
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE2C928(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE33AF8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22DE2C974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.logEvents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest(0);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.level.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  v4 = *(v1 + *(result + 20));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.level.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.level.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.eventID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE2CDA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE2CE04(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.eventID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.clearEventID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE2D00C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE2D070(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawMessage.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.clearRawMessage()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawRequest.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE2D27C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE2D2E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawRequest.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawRequest.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.clearRawRequest()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawResponse.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE2D4E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE2D54C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawResponse.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.rawResponse.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

void sub_22DE2D698(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.clearRawResponse()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  *(a2 + result[5]) = 5;
  v4 = (a2 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_22DE2D8E0()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37E20);
  __swift_project_value_buffer(v0, qword_27DA37E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DEC7C40;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "CRITICAL";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ERROR";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "WARN";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "INFO";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "DEBUG";
  *(v14 + 8) = 5;
  *(v14 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE2DBC8()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37E38);
  __swift_project_value_buffer(v0, qword_27DA37E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22DEC5F50;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "log_events";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22DEC4AE4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
        sub_22DE2F230(&qword_27DA37E68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0), sub_22DE2F230(&qword_27DA37E68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent), result = sub_22DEC4AC4(), !v4))
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE2F078(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest(0);
  sub_22DEC48B4();
  sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE2E058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DE2E0CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22DE2E194(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE2F230(&qword_27DA37F08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE2E234(uint64_t a1)
{
  v2 = sub_22DE2F230(&qword_27DA37EB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE2E2A0(uint64_t a1, uint64_t a2)
{
  sub_22DE2F230(&qword_27DA37EB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DE2E31C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE2F078(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_22DEC48B4();
  sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE2E3E0()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37E50);
  __swift_project_value_buffer(v0, qword_27DA37E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DEC7C40;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "level";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "event_id";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "raw_message";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "raw_request";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "raw_response";
  *(v14 + 8) = 12;
  *(v14 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE2E69C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22DEC4B14();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_22DE2E83C(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
LABEL_2:
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
      sub_22DEC49C4();
    }
  }
}

uint64_t sub_22DE2E83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  sub_22DE33AF8();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE2E968(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DE2E9F4(v3, a1, a2, a3);
    sub_22DE2EA6C(v3, a1, a2, a3);
    sub_22DE2EAE4(v3, a1, a2, a3);
    sub_22DE2EB5C(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE2E968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  if (*(a1 + *(result + 20)) != 5)
  {
    sub_22DE33AF8();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE2E9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE2EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE2EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE2EB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE2EC20(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22DEC5184();
  a1(0);
  sub_22DE2F230(a2, a3, a4);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE2ECA8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  *(a2 + a1[5]) = 5;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_AlertDataV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_AlertDataV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22DE2EE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE2F230(&qword_27DA37F00, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE2EEE0(uint64_t a1)
{
  v2 = sub_22DE2F230(&qword_27DA37E68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE2EF4C(uint64_t a1, uint64_t a2)
{
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE2EFA4(uint64_t a1, uint64_t a2)
{
  sub_22DE2F230(&qword_27DA37E68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);

  return sub_22DEC4A44();
}

uint64_t sub_22DE2F020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22DEC5184();
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE2F078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
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
        sub_22DE33B4C(v13, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);
        sub_22DE33B4C(v14, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);
        v16 = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);
        sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent);
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

uint64_t sub_22DE2F230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DE2F278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v42 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_22DE33B4C(v13, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
        sub_22DE33B4C(v14, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
        v16 = v4[6];
        v17 = (v10 + v16);
        v18 = *(v10 + v16 + 8);
        v19 = (v7 + v16);
        v20 = v19[1];
        if (v18)
        {
          if (!v20)
          {
            goto LABEL_44;
          }

          v21 = *v17 == *v19 && v18 == v20;
          if (!v21 && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (v20)
        {
          goto LABEL_44;
        }

        v22 = v4[7];
        v23 = *(v10 + v22);
        v24 = *(v7 + v22);
        if (v23 == 2)
        {
          if (v24 != 2)
          {
            goto LABEL_44;
          }
        }

        else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
        {
          goto LABEL_44;
        }

        v25 = v4[8];
        v26 = (v10 + v25);
        v27 = *(v10 + v25 + 4);
        v28 = (v7 + v25);
        v29 = *(v7 + v25 + 4);
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (*v26 != *v28)
          {
            LOBYTE(v29) = 1;
          }

          if (v29)
          {
LABEL_44:
            sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
            sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
            goto LABEL_45;
          }
        }

        if ((sub_22DE3196C(*v10, *v7) & 1) == 0)
        {
          goto LABEL_44;
        }

        v30 = v4[9];
        v31 = (v10 + v30);
        v32 = *(v10 + v30 + 8);
        v33 = (v7 + v30);
        v34 = v33[1];
        if (v32)
        {
          if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (v34)
        {
          goto LABEL_44;
        }

        v35 = v4[10];
        v36 = (v10 + v35);
        v37 = *(v10 + v35 + 8);
        v38 = (v7 + v35);
        v39 = v38[1];
        if (v37)
        {
          if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (v39)
        {
          goto LABEL_44;
        }

        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v40 = sub_22DEC4BF4();
        sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
        sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
        if (v40)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v40 & 1;
      }
    }

    v40 = 1;
  }

  else
  {
LABEL_45:
    v40 = 0;
  }

  return v40 & 1;
}

uint64_t sub_22DE2F604(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_22DEC50E4() & 1) == 0)
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

uint64_t sub_22DE2F694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_22DE33B4C(v13, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
        sub_22DE33B4C(v14, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
        v16 = v4[5];
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_22DEC50E4() & 1) == 0))
          {
LABEL_31:
            sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
            sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
            goto LABEL_32;
          }
        }

        else if (v20)
        {
          goto LABEL_31;
        }

        v22 = v4[6];
        v23 = &v10[v22];
        v24 = *&v10[v22 + 8];
        v25 = &v7[v22];
        v26 = *(v25 + 1);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_31;
          }

          v27 = *v23 == *v25 && v24 == v26;
          if (!v27 && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (v26)
        {
          goto LABEL_31;
        }

        v28 = v4[7];
        v29 = v10[v28];
        v30 = v7[v28];
        if (v29 == 5)
        {
          if (v30 != 5)
          {
            goto LABEL_31;
          }
        }

        else if (v29 != v30)
        {
          goto LABEL_31;
        }

        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v31 = sub_22DEC4BF4();
        sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
        sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
        if (v31)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v31 & 1;
      }
    }

    v31 = 1;
  }

  else
  {
LABEL_32:
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_22DE2F984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_22DE33B4C(v13, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
        sub_22DE33B4C(v14, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
        v16 = *(v4 + 20);
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_22DEC50E4() & 1) == 0))
          {
LABEL_27:
            sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
            sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
            goto LABEL_28;
          }
        }

        else if (v20)
        {
          goto LABEL_27;
        }

        v22 = *(v4 + 24);
        v23 = &v10[v22];
        v24 = *&v10[v22 + 8];
        v25 = &v7[v22];
        v26 = *(v25 + 1);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_27;
          }

          v27 = *v23 == *v25 && v24 == v26;
          if (!v27 && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v26)
        {
          goto LABEL_27;
        }

        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = sub_22DEC4BF4();
        sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
        sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey);
        if (v28)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_28:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_22DE2FC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
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
        sub_22DE33B4C(v13, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
        sub_22DE33B4C(v14, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
        v16 = static Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.== infix(_:_:)(v10, v7);
        sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
        sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData);
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

uint64_t sub_22DE2FE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_43:
    v36 = 0;
    return v36 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v36 = 1;
    return v36 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v38 = a1 + v13;
  v14 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_22DE33B4C(v38 + v15 * v12, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
    if (v12 == v11)
    {
      break;
    }

    result = sub_22DE33B4C(v14 + v15 * v12, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
    v17 = *(v4 + 24);
    v18 = &v10[v17];
    v19 = *&v10[v17 + 8];
    v20 = &v7[v17];
    v21 = *(v20 + 1);
    if (v19)
    {
      if (!v21 || ((result = *v18, *v18 == *v20) ? (v22 = v19 == v21) : (v22 = 0), !v22 && (result = sub_22DEC50E4(), (result & 1) == 0)))
      {
LABEL_42:
        sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
        sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
        goto LABEL_43;
      }
    }

    else if (v21)
    {
      goto LABEL_42;
    }

    v23 = *v10;
    v24 = *v7;
    v25 = *(*v10 + 16);
    if (v25 != *(*v7 + 16))
    {
      goto LABEL_42;
    }

    if (v25)
    {
      v26 = v23 == v24;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v33 = (v23 + 40);
      v34 = (v24 + 40);
      while (v25)
      {
        result = *(v33 - 1);
        if (result != *(v34 - 1) || *v33 != *v34)
        {
          result = sub_22DEC50E4();
          if ((result & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v33 += 2;
        v34 += 2;
        if (!--v25)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      break;
    }

LABEL_21:
    v27 = *(v4 + 28);
    v28 = &v10[v27];
    v29 = *&v10[v27 + 8];
    v30 = &v7[v27];
    v31 = *(v30 + 1);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_42;
      }

      v32 = *v28 == *v30 && v29 == v31;
      if (!v32 && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v31)
    {
      goto LABEL_42;
    }

    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v36 = sub_22DEC4BF4();
    sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
    sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
    if ((v36 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v36 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DE30144(uint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v4 = *(v64 - 1);
  MEMORY[0x28223BE20](v64);
  v59 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F38, &qword_22DEC8160);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = (&v55 - v7);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F40, &qword_22DEC8168);
  MEMORY[0x28223BE20](v61);
  v9 = &v55 - v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
  v11 = MEMORY[0x28223BE20](v10);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    goto LABEL_48;
  }

  if (!v16 || a1 == a2)
  {
    v51 = 1;
    return v51 & 1;
  }

  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v57 = v10;
  v58 = (v4 + 48);
  v20 = *(v13 + 72);
  v55 = v9;
  v56 = v20;
  while (1)
  {
    sub_22DE33B4C(v18, v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
    v21 = v63;
    sub_22DE33B4C(v19, v63, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
    v22 = *(v10 + 20);
    v23 = v15 + v22;
    v24 = *(v15 + v22 + 8);
    v25 = (v21 + v22);
    v26 = v25[1];
    if (v24)
    {
      if (!v26)
      {
        goto LABEL_46;
      }

      v27 = *v23 == *v25 && v24 == v26;
      if (!v27 && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (v26)
    {
      goto LABEL_46;
    }

    v60 = v18;
    v28 = *(v10 + 24);
    v29 = *(v61 + 48);
    sub_22DDF0028(v15 + v28, v9, &qword_27DA37F38, &qword_22DEC8160);
    sub_22DDF0028(v63 + v28, &v9[v29], &qword_27DA37F38, &qword_22DEC8160);
    v30 = *v58;
    if ((*v58)(v9, 1, v64) == 1)
    {
      break;
    }

    sub_22DDF0028(v9, v62, &qword_27DA37F38, &qword_22DEC8160);
    if (v30(&v9[v29], 1, v64) == 1)
    {
      sub_22DE33BB4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
      v53 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData;
      v54 = v62;
      goto LABEL_52;
    }

    v32 = v59;
    sub_22DE33C14(&v9[v29], v59, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    v33 = v64[6];
    v34 = (v62 + v33);
    v35 = *(v62 + v33 + 8);
    v36 = (v32 + v33);
    v37 = v36[1];
    if (v35)
    {
      if (!v37 || (*v34 != *v36 || v35 != v37) && (sub_22DEC50E4() & 1) == 0)
      {
LABEL_45:
        sub_22DE33BB4(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
        sub_22DE33BB4(v62, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
        sub_22DDEF284(v9, &qword_27DA37F38, &qword_22DEC8160);
LABEL_46:
        sub_22DE33BB4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
        goto LABEL_47;
      }
    }

    else if (v37)
    {
      goto LABEL_45;
    }

    v38 = v64[7];
    v39 = (v62 + v38);
    v40 = *(v62 + v38 + 8);
    v41 = (v32 + v38);
    v42 = v41[1];
    if (v40)
    {
      if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v42)
    {
      goto LABEL_45;
    }

    if ((sub_22DE2FE04(*v62, *v32) & 1) == 0)
    {
      goto LABEL_45;
    }

    v43 = v64[8];
    v44 = (v62 + v43);
    v45 = *(v62 + v43 + 8);
    v46 = (v32 + v43);
    v47 = v46[1];
    if (v45)
    {
      if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (v47)
    {
      goto LABEL_45;
    }

    v31 = v19;
    sub_22DEC48B4();
    v48 = v62;
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v49 = sub_22DEC4BF4();
    v9 = v55;
    sub_22DE33BB4(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    sub_22DE33BB4(v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
    sub_22DDEF284(v9, &qword_27DA37F38, &qword_22DEC8160);
    if ((v49 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_41:
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v50 = v63;
    v51 = sub_22DEC4BF4();
    sub_22DE33BB4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
    sub_22DE33BB4(v50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
    if (v51)
    {
      v10 = v57;
      v19 = v31 + v56;
      v18 = v60 + v56;
      if (--v16)
      {
        continue;
      }
    }

    return v51 & 1;
  }

  if (v30(&v9[v29], 1, v64) == 1)
  {
    v31 = v19;
    sub_22DDEF284(v9, &qword_27DA37F38, &qword_22DEC8160);
    goto LABEL_41;
  }

  v53 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink;
  v54 = v15;
LABEL_52:
  sub_22DE33BB4(v54, v53);
  sub_22DDEF284(v9, &qword_27DA37F40, &qword_22DEC8168);
LABEL_47:
  sub_22DE33BB4(v63, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
LABEL_48:
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_22DE308A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
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
        sub_22DE33B4C(v13, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        sub_22DE33B4C(v14, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        v16 = *(v4 + 20);
        v17 = *&v10[v16];
        v18 = *&v7[v16];
        if (v17 != v18)
        {

          v19 = sub_22DEA6ABC(v17, v18);

          if ((v19 & 1) == 0)
          {
            break;
          }
        }

        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v20 = sub_22DEC4BF4();
        sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
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

      sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
      sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_22DE30B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F58, &qword_22DEC8188);
  MEMORY[0x28223BE20](v52);
  v12 = &v46 - v11;
  v50 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v13 = MEMORY[0x28223BE20](v50);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    goto LABEL_27;
  }

  if (!v19 || a1 == a2)
  {
    v44 = 1;
    return v44 & 1;
  }

  v46 = v7;
  v47 = v10;
  v49 = v4;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = (v5 + 48);
  v48 = *(v16 + 72);
  v24 = &qword_22DEC7350;
  v25 = v50;
  while (1)
  {
    v51 = v21;
    sub_22DE33B4C(v21, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
    sub_22DE33B4C(v22, v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
    v26 = v25[7];
    v27 = v18[v26];
    v28 = v15[v26];
    if (v27 == 7)
    {
      if (v28 != 7)
      {
        goto LABEL_26;
      }
    }

    else if (v27 != v28)
    {
      goto LABEL_26;
    }

    v53 = v22;
    v29 = *(v52 + 48);
    sub_22DDF0028(v18, v12, &qword_27DA37BC0, v24);
    sub_22DDF0028(v15, &v12[v29], &qword_27DA37BC0, v24);
    v30 = *v23;
    v31 = v12;
    v32 = v24;
    v33 = v12;
    v34 = v49;
    if ((*v23)(v31, 1, v49) != 1)
    {
      break;
    }

    if (v30((v33 + v29), 1, v34) != 1)
    {
      goto LABEL_25;
    }

    sub_22DDEF284(v33, &qword_27DA37BC0, v32);
    v12 = v33;
    v24 = v32;
    v35 = v53;
LABEL_14:
    v41 = v25[8];
    v42 = v18[v41];
    v43 = v15[v41];
    if (v42 == 2)
    {
      if (v43 != 2)
      {
        goto LABEL_26;
      }
    }

    else if (v43 == 2 || ((v42 ^ v43) & 1) != 0)
    {
      goto LABEL_26;
    }

    if ((sub_22DEAFB4C(*&v18[v25[5]], *&v15[v25[5]]) & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v44 = sub_22DEC4BF4();
    sub_22DE33BB4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
    sub_22DE33BB4(v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
    if (v44)
    {
      v22 = v35 + v48;
      v21 = v51 + v48;
      if (--v19)
      {
        continue;
      }
    }

    return v44 & 1;
  }

  v36 = v47;
  sub_22DDF0028(v33, v47, &qword_27DA37BC0, v32);
  if (v30((v33 + v29), 1, v34) != 1)
  {
    v37 = v23;
    v38 = v46;
    sub_22DE33C14(v33 + v29, v46, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    v39 = static Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.== infix(_:_:)(v36, v38);
    v40 = v38;
    v23 = v37;
    sub_22DE33BB4(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DE33BB4(v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DDEF284(v33, &qword_27DA37BC0, v32);
    v25 = v50;
    v12 = v33;
    v24 = v32;
    v35 = v53;
    if ((v39 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  sub_22DE33BB4(v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
LABEL_25:
  sub_22DDEF284(v33, &qword_27DA37F58, &qword_22DEC8188);
LABEL_26:
  sub_22DE33BB4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
  sub_22DE33BB4(v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
LABEL_27:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_22DE310D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_22DE33B4C(v13, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        sub_22DE33B4C(v14, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        v16 = *v10;
        v17 = *v7;
        if (v16 <= 0xF7)
        {
          if (v17 > 0xF7)
          {
            goto LABEL_37;
          }

          if ((v16 & 0x80) != 0)
          {
            if ((v17 & 0x80) == 0 || qword_22DEC8198[v16 & 0x7F] != qword_22DEC8198[v17 & 0x7F])
            {
              goto LABEL_37;
            }
          }

          else if (v16 != v17)
          {
            goto LABEL_37;
          }
        }

        else if (v17 <= 0xF7)
        {
          goto LABEL_37;
        }

        v18 = *(v4 + 28);
        v19 = &v10[v18];
        v20 = *&v10[v18 + 8];
        v21 = &v7[v18];
        v22 = *(v21 + 1);
        if (v20)
        {
          if (!v22 || (*v19 == *v21 ? (v23 = v20 == v22) : (v23 = 0), !v23 && (sub_22DEC50E4() & 1) == 0))
          {
LABEL_37:
            sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
            sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
            goto LABEL_38;
          }
        }

        else if (v22)
        {
          goto LABEL_37;
        }

        v24 = *(v4 + 32);
        v25 = &v10[v24];
        v26 = *&v10[v24 + 8];
        v27 = &v7[v24];
        v28 = *(v27 + 1);
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_37;
          }

          v29 = *v25 == *v27 && v26 == v28;
          if (!v29 && (sub_22DEC50E4() & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (v28)
        {
          goto LABEL_37;
        }

        if ((sub_22DEAFB4C(*(v10 + 1), *(v7 + 1)) & 1) == 0)
        {
          goto LABEL_37;
        }

        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v30 = sub_22DEC4BF4();
        sub_22DE33BB4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        sub_22DE33BB4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        if (v30)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v30 & 1;
      }
    }

    v30 = 1;
  }

  else
  {
LABEL_38:
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_22DE31408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F20, &qword_22DECFFA0);
  MEMORY[0x28223BE20](v43);
  v11 = &v37 - v10;
  v42 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  v12 = MEMORY[0x28223BE20](v42);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = &v37 - v16;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_21;
  }

  if (!v17 || a1 == a2)
  {
    v35 = 1;
    return v35 & 1;
  }

  v37 = v9;
  v40 = v14;
  v41 = v4;
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = (v5 + 48);
  v39 = *(v15 + 72);
  v22 = v42;
  while (1)
  {
    v23 = v44;
    sub_22DE33B4C(v19, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
    sub_22DE33B4C(v20, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
    v24 = *(v22 + 24);
    v25 = *(v23 + v24);
    v26 = v14[v24];
    if (v25 == 5)
    {
      if (v26 != 5)
      {
        goto LABEL_20;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_20;
    }

    v27 = *(v43 + 48);
    sub_22DDF0028(v23, v11, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF0028(v14, &v11[v27], &qword_27DA37F18, &unk_22DEC8140);
    v28 = *v21;
    v29 = v41;
    if ((*v21)(v11, 1, v41) != 1)
    {
      break;
    }

    if (v28(&v11[v27], 1, v29) != 1)
    {
      goto LABEL_19;
    }

    sub_22DDEF284(v11, &qword_27DA37F18, &unk_22DEC8140);
    v14 = v40;
    v23 = v44;
LABEL_14:
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v35 = sub_22DEC4BF4();
    sub_22DE33BB4(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
    sub_22DE33BB4(v23, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
    if (v35)
    {
      v20 += v39;
      v19 += v39;
      if (--v17)
      {
        continue;
      }
    }

    return v35 & 1;
  }

  v30 = v37;
  sub_22DDF0028(v11, v37, &qword_27DA37F18, &unk_22DEC8140);
  if (v28(&v11[v27], 1, v29) != 1)
  {
    v31 = v21;
    v32 = v38;
    sub_22DE33C14(&v11[v27], v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v33 = static Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data.== infix(_:_:)(v30, v32);
    v34 = v32;
    v21 = v31;
    sub_22DE33BB4(v34, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DE33BB4(v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDEF284(v11, &qword_27DA37F18, &unk_22DEC8140);
    v22 = v42;
    v14 = v40;
    v23 = v44;
    if ((v33 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  sub_22DE33BB4(v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
LABEL_19:
  sub_22DDEF284(v11, &qword_27DA37F20, &qword_22DECFFA0);
  v14 = v40;
  v23 = v44;
LABEL_20:
  sub_22DE33BB4(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
  sub_22DE33BB4(v23, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
LABEL_21:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_22DE3196C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F50, &unk_22DEC8178);
  MEMORY[0x28223BE20](v43);
  v11 = &v37 - v10;
  v42 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  v12 = MEMORY[0x28223BE20](v42);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = &v37 - v16;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_21;
  }

  if (!v17 || a1 == a2)
  {
    v35 = 1;
    return v35 & 1;
  }

  v37 = v9;
  v40 = v14;
  v41 = v4;
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = (v5 + 48);
  v39 = *(v15 + 72);
  v22 = v42;
  while (1)
  {
    v23 = v44;
    sub_22DE33B4C(v19, v44, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
    sub_22DE33B4C(v20, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
    v24 = *(v22 + 24);
    v25 = *(v23 + v24);
    v26 = v14[v24];
    if (v25 == 5)
    {
      if (v26 != 5)
      {
        goto LABEL_20;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_20;
    }

    v27 = *(v43 + 48);
    sub_22DDF0028(v23, v11, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DDF0028(v14, &v11[v27], &qword_27DA37F48, &qword_22DEC8170);
    v28 = *v21;
    v29 = v41;
    if ((*v21)(v11, 1, v41) != 1)
    {
      break;
    }

    if (v28(&v11[v27], 1, v29) != 1)
    {
      goto LABEL_19;
    }

    sub_22DDEF284(v11, &qword_27DA37F48, &qword_22DEC8170);
    v14 = v40;
    v23 = v44;
LABEL_14:
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v35 = sub_22DEC4BF4();
    sub_22DE33BB4(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
    sub_22DE33BB4(v23, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
    if (v35)
    {
      v20 += v39;
      v19 += v39;
      if (--v17)
      {
        continue;
      }
    }

    return v35 & 1;
  }

  v30 = v37;
  sub_22DDF0028(v11, v37, &qword_27DA37F48, &qword_22DEC8170);
  if (v28(&v11[v27], 1, v29) != 1)
  {
    v31 = v21;
    v32 = v38;
    sub_22DE33C14(&v11[v27], v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v33 = static Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data.== infix(_:_:)(v30, v32);
    v34 = v32;
    v21 = v31;
    sub_22DE33BB4(v34, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE33BB4(v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DDEF284(v11, &qword_27DA37F48, &qword_22DEC8170);
    v22 = v42;
    v14 = v40;
    v23 = v44;
    if ((v33 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  sub_22DE33BB4(v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
LABEL_19:
  sub_22DDEF284(v11, &qword_27DA37F50, &unk_22DEC8178);
  v14 = v40;
  v23 = v44;
LABEL_20:
  sub_22DE33BB4(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
  sub_22DE33BB4(v23, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
LABEL_21:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_22DE31ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v92 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v86 = (&v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v79 - v7);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F28, &qword_22DECE230);
  MEMORY[0x28223BE20](v87);
  v89 = &v79 - v9;
  v94 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v10 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v96 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = &v79 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  MEMORY[0x28223BE20](v93);
  v15 = &v79 - v14;
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v79 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_66;
  }

  if (!v23 || a1 == a2)
  {
    v77 = 1;
    return v77 & 1;
  }

  v88 = v15;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v84 = &v79 - v21;
  v85 = (v10 + 48);
  v80 = (v92 + 48);
  v81 = *(v20 + 72);
  v82 = v4;
  v83 = v16;
  while (1)
  {
    v92 = v25;
    sub_22DE33B4C(v25, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE33B4C(v26, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v27 = v16[5];
    v28 = &v22[v27];
    v29 = *&v22[v27 + 8];
    v30 = &v19[v27];
    v31 = *(v30 + 1);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_65;
      }

      v32 = *v28 == *v30 && v29 == v31;
      if (!v32 && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else if (v31)
    {
      goto LABEL_65;
    }

    v33 = v16[6];
    v34 = &v22[v33];
    v35 = *&v22[v33 + 8];
    v36 = &v19[v33];
    v37 = *(v36 + 1);
    if (v35)
    {
      if (!v37)
      {
        goto LABEL_65;
      }

      v38 = *v34 == *v36 && v35 == v37;
      if (!v38 && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else if (v37)
    {
      goto LABEL_65;
    }

    v90 = v23;
    v91 = v26;
    v39 = v8;
    v40 = v16[7];
    v41 = *(v93 + 48);
    v42 = v88;
    sub_22DDF0028(&v22[v40], v88, &qword_27DA37D80, &unk_22DEC7960);
    sub_22DDF0028(&v19[v40], v42 + v41, &qword_27DA37D80, &unk_22DEC7960);
    v43 = *v85;
    v44 = v94;
    if ((*v85)(v42, 1, v94) != 1)
    {
      break;
    }

    if (v43(v42 + v41, 1, v44) != 1)
    {
      goto LABEL_61;
    }

    sub_22DDEF284(v42, &qword_27DA37D80, &unk_22DEC7960);
    v8 = v39;
    v16 = v83;
    v22 = v84;
    v45 = v90;
    v46 = v91;
LABEL_55:
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v77 = sub_22DEC4BF4();
    sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE33BB4(v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    if (v77)
    {
      v26 = v46 + v81;
      v25 = v92 + v81;
      v23 = v45 - 1;
      if (v23)
      {
        continue;
      }
    }

    return v77 & 1;
  }

  v47 = v95;
  sub_22DDF0028(v42, v95, &qword_27DA37D80, &unk_22DEC7960);
  if (v43(v42 + v41, 1, v44) == 1)
  {
    sub_22DE33BB4(v47, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_61:
    sub_22DDEF284(v42, &qword_27DA37F30, &unk_22DECCF30);
    v22 = v84;
    goto LABEL_65;
  }

  v48 = v42 + v41;
  v49 = v96;
  sub_22DE33C14(v48, v96, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v50 = *(v44 + 20);
  v51 = *(v47 + v50);
  v52 = *(v49 + v50);
  v53 = v44;
  if (v51 == 7)
  {
    v22 = v84;
    if (v52 != 7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v22 = v84;
    if (v52 == 7 || qword_22DEC8198[v51] != qword_22DEC8198[v52])
    {
      goto LABEL_64;
    }
  }

  v8 = v39;
  v54 = *(v53 + 24);
  v55 = *(v87 + 48);
  v56 = v89;
  sub_22DDF0028(v47 + v54, v89, &qword_27DA37D78, &unk_22DEC8150);
  sub_22DDF0028(v96 + v54, v56 + v55, &qword_27DA37D78, &unk_22DEC8150);
  v57 = *v80;
  v58 = v82;
  if ((*v80)(v56, 1, v82) == 1)
  {
    v32 = v57(v56 + v55, 1, v58) == 1;
    v59 = v56;
    if (!v32)
    {
      goto LABEL_63;
    }

    sub_22DDEF284(v56, &qword_27DA37D78, &unk_22DEC8150);
    v45 = v90;
    v46 = v91;
LABEL_54:
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v75 = v96;
    v76 = sub_22DEC4BF4();
    sub_22DE33BB4(v75, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DE33BB4(v95, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DDEF284(v88, &qword_27DA37D80, &unk_22DEC7960);
    v16 = v83;
    if ((v76 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_55;
  }

  sub_22DDF0028(v56, v39, &qword_27DA37D78, &unk_22DEC8150);
  if (v57(v56 + v55, 1, v58) != 1)
  {
    v60 = v56 + v55;
    v61 = v86;
    sub_22DE33C14(v60, v86, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    v62 = *(v58 + 28);
    v63 = (v39 + v62);
    v64 = *(v39 + v62 + 8);
    v65 = (v61 + v62);
    v66 = v65[1];
    if (v64)
    {
      v67 = v95;
      v46 = v91;
      if (!v66 || (*v63 != *v65 || v64 != v66) && (sub_22DEC50E4() & 1) == 0)
      {
LABEL_59:
        sub_22DE33BB4(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
        sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
        sub_22DDEF284(v89, &qword_27DA37D78, &unk_22DEC8150);
        v47 = v67;
        goto LABEL_64;
      }
    }

    else
    {
      v67 = v95;
      v46 = v91;
      if (v66)
      {
        goto LABEL_59;
      }
    }

    v68 = *(v82 + 32);
    v69 = (v8 + v68);
    v70 = *(v8 + v68 + 8);
    v71 = (v61 + v68);
    v72 = v71[1];
    if (v70)
    {
      if (!v72 || (*v69 != *v71 || v70 != v72) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (v72)
    {
      goto LABEL_59;
    }

    if ((sub_22DEAFB4C(*v8, *v61) & 1) == 0 || (sub_22DEAFB4C(v8[1], v61[1]) & 1) == 0)
    {
      goto LABEL_59;
    }

    sub_22DEC48B4();
    v73 = v61;
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v74 = sub_22DEC4BF4();
    sub_22DE33BB4(v73, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    sub_22DE33BB4(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
    sub_22DDEF284(v89, &qword_27DA37D78, &unk_22DEC8150);
    v47 = v67;
    v45 = v90;
    if ((v74 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_54;
  }

  sub_22DE33BB4(v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  v59 = v56;
LABEL_63:
  sub_22DDEF284(v59, &qword_27DA37F28, &qword_22DECE230);
  v47 = v95;
LABEL_64:
  sub_22DE33BB4(v96, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE33BB4(v47, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v88, &qword_27DA37D80, &unk_22DEC7960);
LABEL_65:
  sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DE33BB4(v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
LABEL_66:
  v77 = 0;
  return v77 & 1;
}

uint64_t sub_22DE329F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v78 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v65 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F20, &qword_22DECFFA0);
  MEMORY[0x28223BE20](v83);
  v11 = &v65 - v10;
  v80 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  v84 = *(v80 - 8);
  v12 = MEMORY[0x28223BE20](v80);
  v85 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - v14;
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v22 = &v65 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_50:
    v62 = 0;
    return v62 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v62 = 1;
    return v62 & 1;
  }

  v24 = 0;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = a1 + v25;
  v67 = a2 + v25;
  v68 = v9;
  v72 = (v5 + 48);
  v73 = v4;
  v27 = *(v20 + 72);
  v77 = &v65 - v21;
  v70 = v16;
  v71 = v23;
  v65 = v27;
  v66 = a1 + v25;
  while (1)
  {
    v28 = v24;
    v29 = v27 * v24;
    result = sub_22DE33B4C(v26 + v27 * v24, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
    v69 = v28;
    if (v28 == v71)
    {
      break;
    }

    result = sub_22DE33B4C(v67 + v29, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
    v31 = *(v16 + 24);
    v32 = &v22[v31];
    v33 = *&v22[v31 + 8];
    v34 = (v19 + v31);
    v35 = v34[1];
    if (v33)
    {
      v36 = v80;
      if (!v35 || ((result = *v32, *v32 == *v34) ? (v37 = v33 == v35) : (v37 = 0), !v37 && (result = sub_22DEC50E4(), (result & 1) == 0)))
      {
LABEL_49:
        sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
        sub_22DE33BB4(v77, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
        goto LABEL_50;
      }
    }

    else
    {
      v36 = v80;
      if (v35)
      {
        goto LABEL_49;
      }
    }

    v38 = *v77;
    v81 = *v19;
    v82 = v38;
    v39 = *(v38 + 16);
    v40 = *(v81 + 16);
    v79 = v39;
    if (v39 != v40)
    {
      goto LABEL_49;
    }

    if (v79 && v82 != v81)
    {
      v41 = 0;
      v42 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v76 = v82 + v42;
      v74 = v19;
      v75 = v81 + v42;
      while (v41 < *(v82 + 16))
      {
        v43 = *(v84 + 72) * v41;
        result = sub_22DE33B4C(v76 + v43, v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
        if (v41 >= *(v81 + 16))
        {
          goto LABEL_53;
        }

        v44 = v75 + v43;
        v45 = v85;
        sub_22DE33B4C(v44, v85, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
        v46 = *(v36 + 24);
        v47 = v15[v46];
        v48 = *(v45 + v46);
        if (v47 == 5)
        {
          if (v48 != 5)
          {
            goto LABEL_44;
          }
        }

        else if (v48 == 5 || v47 != v48)
        {
LABEL_44:
          sub_22DE33BB4(v85, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
          sub_22DE33BB4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
          v19 = v74;
          goto LABEL_49;
        }

        v49 = *(v83 + 48);
        sub_22DDF0028(v15, v11, &qword_27DA37F18, &unk_22DEC8140);
        sub_22DDF0028(v85, &v11[v49], &qword_27DA37F18, &unk_22DEC8140);
        v50 = v73;
        v51 = *v72;
        if ((*v72)(v11, 1, v73) == 1)
        {
          if (v51(&v11[v49], 1, v50) != 1)
          {
            sub_22DE33BB4(v85, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
            v63 = v15;
            v64 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem;
LABEL_47:
            sub_22DE33BB4(v63, v64);
            v19 = v74;
            sub_22DDEF284(v11, &qword_27DA37F20, &qword_22DECFFA0);
            goto LABEL_49;
          }

          sub_22DDEF284(v11, &qword_27DA37F18, &unk_22DEC8140);
          v19 = v74;
        }

        else
        {
          v52 = v68;
          sub_22DDF0028(v11, v68, &qword_27DA37F18, &unk_22DEC8140);
          if (v51(&v11[v49], 1, v50) == 1)
          {
            sub_22DE33BB4(v85, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
            sub_22DE33BB4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
            v64 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data;
            v63 = v52;
            goto LABEL_47;
          }

          v53 = v78;
          sub_22DE33C14(&v11[v49], v78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
          v54 = static Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data.== infix(_:_:)(v52, v53);
          sub_22DE33BB4(v53, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
          sub_22DE33BB4(v52, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
          sub_22DDEF284(v11, &qword_27DA37F18, &unk_22DEC8140);
          v19 = v74;
          v36 = v80;
          if ((v54 & 1) == 0)
          {
            sub_22DE33BB4(v85, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
            sub_22DE33BB4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
            goto LABEL_49;
          }
        }

        sub_22DEC48B4();
        sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v55 = v85;
        v56 = sub_22DEC4BF4();
        sub_22DE33BB4(v55, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
        result = sub_22DE33BB4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
        if ((v56 & 1) == 0)
        {
          goto LABEL_49;
        }

        if (v79 == ++v41)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
      break;
    }

LABEL_33:
    v57 = *(v70 + 28);
    v58 = &v77[v57];
    v59 = *&v77[v57 + 8];
    v60 = (v19 + v57);
    v61 = v60[1];
    if (v59)
    {
      if (!v61 || (*v58 != *v60 || v59 != v61) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (v61)
    {
      goto LABEL_49;
    }

    v16 = v70;
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v22 = v77;
    v62 = sub_22DEC4BF4();
    sub_22DE33BB4(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
    sub_22DE33BB4(v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
    if (v62)
    {
      v24 = v69 + 1;
      v27 = v65;
      v26 = v66;
      if (v69 + 1 != v71)
      {
        continue;
      }
    }

    return v62 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 5)
  {
    if (v7 != 5)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_22DEC50E4();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    if (*v17 != *v19 || v18 != v20)
    {
      v22 = v4;
      v23 = sub_22DEC50E4();
      v4 = v22;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    if (*v25 != *v27 || v26 != v28)
    {
      v30 = v4;
      v31 = sub_22DEC50E4();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v32 = v4[9];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }

LABEL_37:
    sub_22DEC48B4();
    sub_22DE2F230(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  if (!v36)
  {
    goto LABEL_37;
  }

  return 0;
}

unint64_t sub_22DE33504()
{
  result = qword_27DA37E80;
  if (!qword_27DA37E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37E80);
  }

  return result;
}

unint64_t sub_22DE3355C()
{
  result = qword_27DA37E88;
  if (!qword_27DA37E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37E88);
  }

  return result;
}

unint64_t sub_22DE335B4()
{
  result = qword_27DA37E90;
  if (!qword_27DA37E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37E90);
  }

  return result;
}

unint64_t sub_22DE3360C()
{
  result = qword_27DA37E98;
  if (!qword_27DA37E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA37EA0, &qword_22DEC7D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37E98);
  }

  return result;
}

void sub_22DE338E8(uint64_t a1)
{
  sub_22DE3396C(319);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE3396C(uint64_t a1)
{
  if (!qword_27DA37EE0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Logging_LogEvent(255);
    v1 = sub_22DEC4D44();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA37EE0);
    }
  }
}

void sub_22DE339EC(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_27DA37EF8);
    if (v2 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_28145AD88);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE33AAC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22DEC4EB4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_22DE33AF8()
{
  result = qword_27DA37F10;
  if (!qword_27DA37F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37F10);
  }

  return result;
}

uint64_t sub_22DE33B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE33BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE33C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.actionURL.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 44));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.interruptionLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v4 = *(v1 + *(result + 40));
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v4 = *(v1 + *(result + 28));
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData.followUpClient.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  *a1 = *(v1 + *(result + 24)) & 1;
  return result;
}

uint64_t sub_22DE34054(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.common.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE45FE4(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE4633C(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.meta.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE45FE4(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE4633C(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + v2[6]) = 7;
  v4 = (a1 + v2[7]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[8]);
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest.checkInTrigger.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.data.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE45FE4(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE4633C(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37BA8, &unk_22DEC7320);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.data.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  sub_22DDF0028(v1 + *(v6 + 24), v5, &qword_27DA37BC8, qword_22DEC7358);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE4633C(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = sub_22DE05B84(v9);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = a1 + *(v7 + 28);
  *v10 = 0;
  v10[8] = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37BC8, qword_22DEC7358);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse.nextCheckInEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0) + 28));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertData.defaultButton.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(v1 + *(v6 + 32), v5, &qword_27DA37C10, &unk_22DEC7590);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE4633C(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = (a1 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37C10, &unk_22DEC7590);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertData.defaultButton.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 32);
  sub_22DDEF284(v1 + v3, &qword_27DA37C10, &unk_22DEC7590);
  sub_22DE4633C(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertData.alternateButton.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(v1 + *(v6 + 36), v5, &qword_27DA37C10, &unk_22DEC7590);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE4633C(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = (a1 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37C10, &unk_22DEC7590);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertData.alternateButton.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 36);
  sub_22DDEF284(v1 + v3, &qword_27DA37C10, &unk_22DEC7590);
  sub_22DE4633C(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_22DE34D6C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE34DF8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return *(v1 + 48) != 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA37D90, &unk_22DEC7970);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DE4633C(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = *(v8 + 20);
  if (qword_27DA37788 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_27DA38008;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37D90, &unk_22DEC7970);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.actionData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE4E6D0(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE4633C(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37D90, &unk_22DEC7970);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.acceptAction.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE5174C(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE4633C(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37D88, &unk_22DEC8210);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.targetApp.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  result = swift_beginAccess();
  *a1 = *(v3 + 32) & 1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 48))
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasExpirationEpoch.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return (*(v1 + 144) & 1) == 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.expirationEpoch.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 144))
  {
    return 0;
  }

  else
  {
    return *(v1 + 136);
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.showBadge.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return *(v1 + 168) & 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.serialNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 160))
  {
    v2 = *(v1 + 152);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.singularContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 80))
  {
    v2 = *(v1 + 72);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.pluralContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 96))
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.groupContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 128))
  {
    v2 = *(v1 + 120);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasTitleWhenInGroup.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return *(v1 + 64) != 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.titleWhenInGroup.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 64))
  {
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasNotificationData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  v5 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  sub_22DDF0028(v4 + v5, v3, &qword_27DA37D70, &qword_22DEC7958);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_22DDEF284(v3, &qword_27DA37D70, &qword_22DEC7958);
  return v7;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA37D70, &qword_22DEC7958);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DE4633C(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + v8[5]) = 2;
  v10 = (a1 + v8[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[9]);
  *v13 = 0;
  v13[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37D70, &qword_22DEC7958);
  }

  return result;
}

uint64_t sub_22DE35C14(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE35C88(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE35D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE5BCF8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_FollowUpClient_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_FollowUpClient.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_FollowUpClient.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_22DE35DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE5BCA4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_NotificationInterruptionLevel_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_NotificationInterruptionLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DE35E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE5BC50();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_ActionType_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x605040302010007uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DE35EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE5BBFC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_CheckInTrigger_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CheckInTrigger.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 1) >= 8)
  {
    v2 = 7;
  }

  else
  {
    v2 = 0x605070403020100uLL >> (8 * (rawValue - 1));
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DE35FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE5BBA8();

  return MEMORY[0x28217E238](a1, a2, v4);
}