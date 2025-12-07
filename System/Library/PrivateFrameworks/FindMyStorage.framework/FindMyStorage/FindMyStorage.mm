uint64_t Database.readConnection.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v6);
  if (v6 != 1)
  {
    return 0;
  }

  result = (*(a2 + 32))(a1, a2);
  if (result)
  {
    v5 = *(result + 16);

    return v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.startup()()
{
  v4 = v2;
  v5 = v1;
  v6 = v0;
  v7 = *(v1 + 32);
  if (!v7())
  {
    (*(v5 + 144))(v6, v5);
    if (v3)
    {
      return;
    }

    if (!(v7)(v6, v5))
    {
      sub_230CFDFF8();
      swift_allocError();
      *v8 = 2;
      *(v8 + 4) = 1;
      swift_willThrow();
      return;
    }

    sub_230CFF750();
    Database.optimize()();
    if (!v9)
    {
      sub_230CFF730();
      _sqlite3_maintain_load_factor();
      v10 = sub_230CFC150();
      v54 = *(v5 + 72);
      if (v54(v6, v5) < v10)
      {
        if (qword_280D7B840 == -1)
        {
LABEL_11:
          v11 = sub_230CFF800();
          __swift_project_value_buffer(v11, qword_280D7B8F8);
          swift_unknownObjectRetain_n();
          v12 = sub_230CFF7E0();
          v13 = sub_230CFF8A0();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v59 = v58;
            *v14 = 136446722;
            v61 = v4;
            v15 = sub_230CFF930();
            v17 = sub_230CFD9BC(v15, v16, &v59);

            *(v14 + 4) = v17;
            *(v14 + 12) = 1024;
            *(v14 + 14) = v10;
            *(v14 + 18) = 1024;
            v18 = v54(v6, v5);
            swift_unknownObjectRelease();
            *(v14 + 20) = v18;
            swift_unknownObjectRelease();
            _os_log_impl(&dword_230CF8000, v12, v13, "%{public}s Schema too new! (%d) -- expected <= %d", v14, 0x18u);
            __swift_destroy_boxed_opaque_existential_0(v58);
            MEMORY[0x23191CEF0](v58, -1, -1);
            MEMORY[0x23191CEF0](v14, -1, -1);
          }

          else
          {

            swift_unknownObjectRelease_n();
          }

          sub_230CFDFF8();
          swift_allocError();
          *v42 = v10;
          *(v42 + 4) = 0;
          swift_willThrow();
          goto LABEL_8;
        }

LABEL_38:
        swift_once();
        goto LABEL_11;
      }

      if (v10 >= v54(v6, v5))
      {
        if (qword_280D7B840 == -1)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v19 = sub_230CFC150();
        v20 = v54(v6, v5);
        if (v20 >= v19)
        {
          v10 = 22;
          if (v19 != v20)
          {
            if (qword_280D7B840 != -1)
            {
              v51 = v20;
              swift_once();
              v20 = v51;
            }

            v53 = *(v5 + 120);
            v52 = v20;
            while (v19 < v20)
            {
              v56 = v19 + 1;
              v21 = sub_230CFF800();
              __swift_project_value_buffer(v21, qword_280D7B8F8);
              swift_unknownObjectRetain();
              v22 = sub_230CFF7E0();
              v23 = sub_230CFF8B0();
              if (os_log_type_enabled(v22, v23))
              {
                v55 = v19;
                v24 = swift_slowAlloc();
                v25 = swift_slowAlloc();
                v59 = v25;
                *v24 = 136446722;
                v61 = v4;
                v26 = sub_230CFF930();
                v28 = v27;
                swift_unknownObjectRelease();
                v29 = sub_230CFD9BC(v26, v28, &v59);
                v10 = 22;

                *(v24 + 4) = v29;
                *(v24 + 12) = 1024;
                *(v24 + 14) = v55;
                *(v24 + 18) = 1024;
                *(v24 + 20) = v56;
                _os_log_impl(&dword_230CF8000, v22, v23, "%{public}s migrating schema %d -> %d", v24, 0x18u);
                __swift_destroy_boxed_opaque_existential_0(v25);
                MEMORY[0x23191CEF0](v25, -1, -1);
                v30 = v24;
                v19 = v55;
                MEMORY[0x23191CEF0](v30, -1, -1);
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v53(v19);
              v59 = 0;
              v60 = 0xE000000000000000;
              sub_230CFF8E0();

              v59 = 0xD000000000000016;
              v60 = 0x8000000230D00200;
              LODWORD(v61) = v56;
              v31 = sub_230CFF930();
              MEMORY[0x23191CA90](v31);

              sub_230CFF720();

              v19 = v56;
              v20 = v52;
              if (v52 == v56)
              {
                goto LABEL_24;
              }
            }

            __break(1u);
            goto LABEL_38;
          }

LABEL_24:
          Database.excludeFromBackup()();
          if (v32)
          {
            goto LABEL_8;
          }

          if (qword_280D7B840 != -1)
          {
            swift_once();
          }

          v33 = sub_230CFF800();
          __swift_project_value_buffer(v33, qword_280D7B8F8);
          swift_unknownObjectRetain_n();
          v34 = sub_230CFF7E0();
          v35 = sub_230CFF8B0();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v59 = v37;
            *v36 = 136446466;
            v61 = v4;
            v38 = sub_230CFF930();
            v40 = sub_230CFD9BC(v38, v39, &v59);

            *(v36 + 4) = v40;
            *(v36 + 12) = 1024;
            v41 = v54(v6, v5);
            swift_unknownObjectRelease();
            *(v36 + 14) = v41;
            swift_unknownObjectRelease();
            _os_log_impl(&dword_230CF8000, v34, v35, "%{public}s is available. [schema version %d]", v36, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v37);
            MEMORY[0x23191CEF0](v37, -1, -1);
            MEMORY[0x23191CEF0](v36, -1, -1);
          }

          else
          {

            swift_unknownObjectRelease_n();
          }

LABEL_35:
          (*(v5 + 112))(v6, v5);
          goto LABEL_8;
        }

        __break(1u);
      }

      swift_once();
LABEL_32:
      v43 = sub_230CFF800();
      __swift_project_value_buffer(v43, qword_280D7B8F8);
      swift_unknownObjectRetain_n();
      v44 = sub_230CFF7E0();
      v45 = sub_230CFF8B0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v59 = v57;
        *v46 = 136446466;
        v61 = v2;
        v47 = sub_230CFF930();
        v49 = sub_230CFD9BC(v47, v48, &v59);

        *(v46 + 4) = v49;
        *(v46 + 12) = 1024;
        v50 = v54(v6, v5);
        swift_unknownObjectRelease();
        *(v46 + 14) = v50;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_230CF8000, v44, v45, "%{public}s is available. [schema version %d]", v46, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x23191CEF0](v57, -1, -1);
        MEMORY[0x23191CEF0](v46, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      goto LABEL_35;
    }
  }

LABEL_8:
}

void *sub_230CF9EC4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_230CF9ED8(uint64_t a1)
{
  v2 = sub_230CF9F38();

  return MEMORY[0x2821D03D8](a1, v2);
}

void sub_230CF9F24(void *a1@<X8>)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1;
  }
}

unint64_t sub_230CF9F38()
{
  result = qword_280D7B810;
  if (!qword_280D7B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7B810);
  }

  return result;
}

uint64_t sub_230CF9F8C(uint64_t a1)
{
  v2 = sub_230CF9FD8();

  return MEMORY[0x2821D03D8](a1, v2);
}

unint64_t sub_230CF9FD8()
{
  result = qword_27DB59F90;
  if (!qword_27DB59F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F90);
  }

  return result;
}

uint64_t sub_230CFA038(uint64_t a1)
{
  v2 = sub_230CFA084();

  return MEMORY[0x2821D03D8](a1, v2);
}

unint64_t sub_230CFA084()
{
  result = qword_27DB59F88;
  if (!qword_27DB59F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F88);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.purge()()
{
  v3 = v1;
  v4 = v0;
  v67[1] = *MEMORY[0x277D85DE8];
  v66 = sub_230CFF6F0();
  v5 = *(v66 - 8);
  v6 = MEMORY[0x28223BE20](v66);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v59 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v59 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v59 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v59 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v63 = &v59 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v65 = &v59 - v23;
  MEMORY[0x28223BE20](v22);
  v64 = &v59 - v24;
  (*(v3 + 40))(0, v4, v3);
  if (((*(v3 + 80))(v4, v3) & 1) == 0)
  {
    (*(v3 + 24))(v4, v3);
    (*(v3 + 96))(v19, v16, v13, v10, v4, v3);
    if (v2)
    {
      (*(v5 + 8))(v10, v66);
    }

    else
    {
      v60 = 0;
      v25 = v66;
      v61 = *(v5 + 8);
      v61(v10, v66);
      v26 = *(v5 + 32);
      v27 = v64;
      v26(v64, v19, v25);
      v26(v65, v16, v25);
      v28 = v63;
      v26(v63, v13, v25);
      v59 = [objc_opt_self() defaultManager];
      if (qword_280D7B840 != -1)
      {
        swift_once();
      }

      v29 = sub_230CFF800();
      __swift_project_value_buffer(v29, qword_280D7B8F8);
      v30 = v62;
      (*(v5 + 16))(v62, v27, v25);
      v31 = sub_230CFF7E0();
      v32 = sub_230CFF8B0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = v30;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v67[0] = v35;
        *v34 = 136446210;
        sub_230CFE11C(&qword_280D7B838, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v36 = sub_230CFF930();
        v38 = v37;
        v61(v33, v66);
        v39 = sub_230CFD9BC(v36, v38, v67);
        v25 = v66;

        *(v34 + 4) = v39;
        _os_log_impl(&dword_230CF8000, v31, v32, "Purging database: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        v40 = v35;
        v28 = v63;
        MEMORY[0x23191CEF0](v40, -1, -1);
        MEMORY[0x23191CEF0](v34, -1, -1);
      }

      else
      {

        v61(v30, v25);
      }

      v41 = v64;
      v42 = sub_230CFF6C0();
      v67[0] = 0;
      v43 = v59;
      v44 = [v59 removeItemAtURL:v42 error:v67];

      if (v44)
      {
        v45 = v67[0];
      }

      else
      {
        v46 = v67[0];
        v47 = sub_230CFF690();

        swift_willThrow();
        MEMORY[0x23191CE40](v47);
        v60 = 0;
      }

      v48 = sub_230CFF6C0();
      v67[0] = 0;
      v49 = [v43 removeItemAtURL:v48 error:v67];

      if (v49)
      {
        v50 = v67[0];
      }

      else
      {
        v51 = v67[0];
        v52 = sub_230CFF690();

        swift_willThrow();
        MEMORY[0x23191CE40](v52);
        v60 = 0;
      }

      v53 = sub_230CFF6C0();
      v67[0] = 0;
      v54 = [v43 removeItemAtURL:v53 error:v67];

      if (v54)
      {
        v55 = v67[0];
      }

      else
      {
        v56 = v67[0];
        v57 = sub_230CFF690();

        swift_willThrow();
        MEMORY[0x23191CE40](v57);
      }

      v58 = v61;
      v61(v28, v25);
      v58(v65, v25);
      v58(v41, v25);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.reset()()
{
  v3 = v1;
  v4 = v0;
  (*(v1 + 128))();
  if (!v2)
  {
    (*(v3 + 104))(v4, v3);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.createIfNecessary()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_230CFF6F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + 32))(v4, v3))
  {
  }

  else
  {
    (*(v3 + 24))(v4, v3);
    v9 = (*(v3 + 80))(v4, v3);
    v10 = Database.establishConnection(baseContainerURL:temporary:)(v8, v9 & 1, v4, v3);
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v11 = v10;
      (*(v6 + 8))(v8, v5);
      (*(v3 + 40))(v11, v4, v3);
    }
  }
}

uint64_t Database.description.getter(uint64_t a1, uint64_t a2)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F30, &qword_230CFFD68);
  MEMORY[0x28223BE20](v41);
  v42 = &v38 - v5;
  v6 = sub_230CFF6F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - v18;
  MEMORY[0x28223BE20](v17);
  v40 = &v38 - v20;
  (*(a2 + 24))(a1, a2);
  v21 = *(a2 + 96);
  v44 = a1;
  v45 = v2;
  v43 = a2;
  v21(v19, v16, v13, v10, a1, a2);
  v39 = *(v7 + 8);
  v39(v10, v6);
  v23 = v41;
  v22 = v42;
  v24 = *(v41 + 48);
  v38 = *(v41 + 64);
  v25 = *(v7 + 32);
  v25(v42, v19, v6);
  v25(&v22[v24], v16, v6);
  v25(&v22[v38], v13, v6);
  v26 = *(v23 + 48);
  v27 = *(v23 + 64);
  v28 = v40;
  v25(v40, v22, v6);
  v29 = v39;
  v39(&v22[v27], v6);
  v29(&v22[v26], v6);
  v30 = sub_230CFF6E0();
  v32 = v31;
  v29(v28, v6);
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_230CFF8E0();

  v47 = 60;
  v48 = 0xE100000000000000;
  v33 = v44;
  v46 = v45;
  v34 = *(v43 + 16);
  v35 = sub_230CFF910();
  MEMORY[0x23191CA90](v35);

  MEMORY[0x23191CA90](8250, 0xE200000000000000);
  v36 = MEMORY[0x23191CB90](v33, v34);
  MEMORY[0x23191CA90](v36);

  MEMORY[0x23191CA90](0x206574694C515320, 0xE900000000000076);
  MEMORY[0x23191CA90](0x302E31352E33, 0xE600000000000000);
  MEMORY[0x23191CA90](32, 0xE100000000000000);
  MEMORY[0x23191CA90](v30, v32);

  MEMORY[0x23191CA90](62, 0xE100000000000000);
  return v47;
}

uint64_t Database.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = sub_230CFF850();

  return MEMORY[0x2822009F8](sub_230CFAE6C, v5, v4);
}

uint64_t sub_230CFAE6C()
{
  v1 = (*(v0[4] + 32))(v0[3]);
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  if (v1)
  {
    sub_230CFF8E0();

    v0[2] = v2;
    v5 = *(v3 + 16);
    v6 = sub_230CFF910();
    MEMORY[0x23191CA90](v6);

    MEMORY[0x23191CA90](8250, 0xE200000000000000);
    v7 = MEMORY[0x23191CB90](v4, v5);
    MEMORY[0x23191CA90](v7);

    MEMORY[0x23191CA90](0x206574694C515320, 0xE900000000000076);
    MEMORY[0x23191CA90](0x302E31352E33, 0xE600000000000000);
    MEMORY[0x23191CA90](32, 0xE100000000000000);
    v8 = sub_230CFF710();
    MEMORY[0x23191CA90](v8);

    MEMORY[0x23191CA90](62, 0xE100000000000000);
  }

  else
  {
    sub_230CFF8E0();

    v0[2] = v2;
    v9 = *(v3 + 16);
    v10 = sub_230CFF910();
    MEMORY[0x23191CA90](v10);

    MEMORY[0x23191CA90](8250, 0xE200000000000000);
    v11 = MEMORY[0x23191CB90](v4, v9);
    MEMORY[0x23191CA90](v11);

    MEMORY[0x23191CA90](0x206574694C515320, 0xE900000000000076);
    MEMORY[0x23191CA90](0x302E31352E33, 0xE600000000000000);
    MEMORY[0x23191CA90](0xD000000000000010, 0x8000000230D00240);
  }

  v12 = v0[1];

  return v12(60, 0xE100000000000000);
}

uint64_t Database.writeConnection.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v6);
  if (v6 != 1)
  {
    return 0;
  }

  result = (*(a2 + 32))(a1, a2);
  if (result)
  {
    v5 = *(result + 24);

    return v5;
  }

  return result;
}

uint64_t Database.await(state:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F38, &qword_230CFFD80);
  *(v4 + 56) = v7;
  *(v4 + 64) = *(v7 - 8);
  *(v4 + 72) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F40, &qword_230CFFD88);
  *(v4 + 80) = v8;
  *(v4 + 88) = *(v8 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 25) = *a1;
  *(v4 + 104) = *(*(a3 + 8) + 8);
  v10 = sub_230CFF850();
  *(v4 + 112) = v10;
  *(v4 + 120) = v9;

  return MEMORY[0x2822009F8](sub_230CFB314, v10, v9);
}

uint64_t sub_230CFB314()
{
  v12 = v0;
  v1 = *(v0 + 25);
  (*(*(v0 + 40) + 56))(&v11, *(v0 + 32));
  if (v1 == v11)
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);
    (*(*(v0 + 40) + 64))(*(v0 + 32));
    sub_230CFF860();
    (*(v3 + 8))(v2, v4);
    *(v0 + 128) = 0;
    v5 = *(v0 + 104);
    v6 = *(v0 + 48);
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_230CFB4A8;
    v8 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 16, v6, v5, v8);
  }
}

uint64_t sub_230CFB4A8()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_230CFB5C8, v3, v2);
}

uint64_t sub_230CFB5C8()
{
  if (!*(v0 + 16) || (v1 = *(v0 + 24), v2 = *(v0 + 128), , sub_230CFF880(), v2) || *(v0 + 25) == (v1 & 1))
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 128) = 0;
    v3 = *(v0 + 104);
    v4 = *(v0 + 48);
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_230CFB4A8;
    v6 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 16, v4, v3, v6);
  }
}

uint64_t Database.establishConnection(baseContainerURL:temporary:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v65 = a3;
  v64 = a1;
  v67 = *MEMORY[0x277D85DE8];
  v6 = sub_230CFF770();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v62 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v53 - v11;
  MEMORY[0x28223BE20](v10);
  v63 = (v53 - v13);
  v14 = sub_230CFF6F0();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v53 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v53 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v53 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v28 = MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](v28);
  if (a2)
  {
    (*(v7 + 104))(v12, *MEMORY[0x277D6AEF8], v6);
    type metadata accessor for ConnectionPair();
    swift_allocObject();
    return ConnectionPair.init(_:readonly:key:)(v12, 0, 0, 0xF000000000000000);
  }

  else
  {
    v55 = v17;
    v56 = v6;
    v57 = v33;
    v58 = v32;
    v60 = v29;
    v61 = v53 - v30;
    v59 = v31;
    v36 = v65;
    v35 = v66;
    result = (*(a4 + 88))(v65, a4);
    if (!v35)
    {
      v38 = result;
      v39 = v37;
      (*(a4 + 96))(v26, v23, v20, v64, v36, a4);
      v40 = v60;
      v64 = v39;
      v41 = *(v59 + 32);
      v54 = v38;
      v41(v61, v26, v60);
      v41(v58, v23, v40);
      v41(v57, v20, v40);
      v42 = v64;
      v43 = v54;
      v44 = sub_230CFF6E0();
      v45 = v63;
      *v63 = v44;
      *(v45 + 8) = v46;
      v47 = *(v7 + 104);
      v48 = *MEMORY[0x277D6AEE8];
      v53[4] = v7 + 104;
      v47(v45, v48, v56);
      type metadata accessor for ConnectionPair();
      swift_allocObject();
      sub_230CFE0B4(v43, v42);
      v49 = ConnectionPair.init(_:readonly:key:)(v45, 0, v43, v42);
      v66 = 0;
      v50 = v49;
      sub_230CFE04C(v43, v42);
      v51 = *(v59 + 8);
      v52 = v60;
      v51(v57, v60);
      v51(v58, v52);
      v51(v61, v52);
      return v50;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.optimize()()
{
  if ((*(v0 + 32))())
  {

    sub_230CFF750();
  }

  else
  {
    sub_230CFDFF8();
    swift_allocError();
    *v1 = 2;
    *(v1 + 4) = 1;
    swift_willThrow();
  }
}

uint64_t sub_230CFC150()
{
  sub_230CFF740();
  if (!v3)
  {
    goto LABEL_7;
  }

  sub_230CFEDE0(&v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F50, &qword_230CFFD98);
  swift_dynamicCast();
  result = v1;
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.excludeFromBackup()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_230CFF670();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_230CFF6F0();
  v6 = *(v57 - 8);
  v7 = MEMORY[0x28223BE20](v57);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v47 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v50 = &v47 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v54 = &v47 - v22;
  MEMORY[0x28223BE20](v21);
  v53 = &v47 - v23;
  v55 = [objc_opt_self() defaultManager];
  (*(v2 + 24))(v3, v2);
  v24 = v56;
  (*(v2 + 96))(v18, v15, v12, v9, v3, v2);
  if (v24)
  {
    (*(v6 + 8))(v9, v57);

    return;
  }

  v56 = v4;
  v25 = *(v6 + 8);
  v26 = v57;
  v49 = v6 + 8;
  v47 = 0;
  v48 = v25;
  v25(v9, v57);
  v27 = *(v6 + 32);
  v28 = v53;
  v27(v53, v18, v26);
  v27(v54, v15, v26);
  v29 = v50;
  v27(v50, v12, v26);
  v30 = v51;
  sub_230CFF660();
  sub_230CFF650();
  sub_230CFF6E0();
  v31 = sub_230CFF810();

  v32 = v55;
  LODWORD(v27) = [v55 fileExistsAtPath_];

  v33 = v54;
  if (v27)
  {
    v34 = v28;
    v35 = v47;
    sub_230CFF6B0();
    v36 = v35;
    if (v35)
    {

      (*(v52 + 8))(v30, v56);
      v37 = v48;
      v48(v29, v26);
      v37(v33, v26);
      v37(v34, v26);
      return;
    }
  }

  else
  {
    v36 = v47;
  }

  sub_230CFF6E0();
  v38 = sub_230CFF810();

  v39 = [v32 fileExistsAtPath_];

  if (v39)
  {
    sub_230CFF6B0();
    if (v36)
    {

      (*(v52 + 8))(v30, v56);
      v40 = v48;
      v48(v29, v26);
      v40(v33, v26);
      v40(v53, v26);
      return;
    }
  }

  sub_230CFF6E0();
  v41 = sub_230CFF810();

  v42 = [v32 fileExistsAtPath_];

  if (v42)
  {
    sub_230CFF6B0();
    v43 = v56;
    v44 = v53;
    if (v36)
    {

      (*(v52 + 8))(v30, v43);
      goto LABEL_16;
    }

    v45 = v52;
  }

  else
  {
    v43 = v56;
    v45 = v52;
    v44 = v53;
  }

  (*(v45 + 8))(v30, v43);
LABEL_16:
  v46 = v48;
  v48(v29, v26);
  v46(v33, v26);
  v46(v44, v26);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.incrementalVacuum()()
{
  if ((*(v0 + 32))())
  {

    sub_230CFF750();
  }

  else
  {
    sub_230CFDFF8();
    swift_allocError();
    *v1 = 2;
    *(v1 + 4) = 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkpoint(mode:)(FindMyStorage::DatabaseCheckpointMode mode)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *mode;
  if ((*(v1 + 32))())
  {

    *pnLog = 0;
    v3 = sub_230CFF730();
    sqlite3_wal_checkpoint_v2(v3, "main", v2, &pnLog[1], pnLog);
    if (qword_280D7B848 != -1)
    {
      swift_once();
    }

    v4 = sub_230CFF800();
    __swift_project_value_buffer(v4, qword_280D7B910);
    v5 = sub_230CFF7E0();
    v6 = sub_230CFF8B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109376;
      swift_beginAccess();
      *(v7 + 4) = pnLog[0];
      *(v7 + 8) = 1024;
      swift_beginAccess();
      *(v7 + 10) = pnLog[1];
      _os_log_impl(&dword_230CF8000, v5, v6, "Checkpointed %d/%d", v7, 0xEu);
      MEMORY[0x23191CEF0](v7, -1, -1);
    }
  }

  else
  {
    sub_230CFDFF8();
    swift_allocError();
    *v8 = 2;
    *(v8 + 4) = 1;
    swift_willThrow();
  }
}

char *Database.tableNames(connection:)()
{
  v2 = sub_230CFF760();
  if (v0)
  {
    return v1;
  }

  v16[0] = v2;
  sub_230CFF7D0();
  v3 = MEMORY[0x277D6AF48];
  sub_230CFE11C(&qword_280D7B830, MEMORY[0x277D6AF48], MEMORY[0x277D6AF50]);

  sub_230CFF840();
  sub_230CFE11C(&qword_280D7B828, v3, MEMORY[0x277D6AF58]);
  result = sub_230CFF8C0();
  v5 = v18;
  if (!v18)
  {
    v1 = MEMORY[0x277D84F90];
LABEL_16:

    return v1;
  }

  v1 = MEMORY[0x277D84F90];
  while (*(v5 + 16))
  {
    sub_230CFE164(v5 + 32, v16);

    if (v16[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F50, &qword_230CFFD98);
      if (swift_dynamicCast())
      {
        v6 = v17;
        if (v17)
        {
          v15 = v16[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_230CFD8B0(0, *(v1 + 2) + 1, 1, v1);
          }

          v8 = *(v1 + 2);
          v7 = *(v1 + 3);
          v9 = v8 + 1;
          if (v8 >= v7 >> 1)
          {
            v14 = v8 + 1;
            v11 = v1;
            v12 = *(v1 + 2);
            v13 = sub_230CFD8B0((v7 > 1), v8 + 1, 1, v11);
            v9 = v14;
            v8 = v12;
            v1 = v13;
          }

          *(v1 + 2) = v9;
          v10 = &v1[16 * v8];
          *(v10 + 4) = v15;
          *(v10 + 5) = v6;
        }
      }
    }

    else
    {
      sub_230CFE1D4(v16, &qword_27DB59F48, &qword_230CFFD90);
    }

    result = sub_230CFF8C0();
    v5 = v18;
    if (!v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

char *Database.columnNames(connection:tableName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_230CFF760();
  if (v3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F58, &qword_230CFFDA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_230CFFD50;
  v8 = MEMORY[0x277D6AF68];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = v8;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  v10 = sub_230CFF7C0();

  v23[0] = v10;
  sub_230CFF7D0();
  v11 = MEMORY[0x277D6AF48];
  sub_230CFE11C(&qword_280D7B830, MEMORY[0x277D6AF48], MEMORY[0x277D6AF50]);

  sub_230CFF840();
  sub_230CFE11C(&qword_280D7B828, v11, MEMORY[0x277D6AF58]);
  result = sub_230CFF8C0();
  v12 = v25;
  if (!v25)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_18:

    return v4;
  }

  v4 = MEMORY[0x277D84F90];
  while (*(v12 + 16))
  {
    sub_230CFE164(v12 + 32, v23);

    if (v23[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F50, &qword_230CFFD98);
      if (swift_dynamicCast())
      {
        v13 = v24;
        if (v24)
        {
          v22 = v23[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_230CFD8B0(0, *(v4 + 2) + 1, 1, v4);
          }

          v15 = *(v4 + 2);
          v14 = *(v4 + 3);
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            v21 = v15 + 1;
            v18 = v4;
            v19 = *(v4 + 2);
            v20 = sub_230CFD8B0((v14 > 1), v15 + 1, 1, v18);
            v16 = v21;
            v15 = v19;
            v4 = v20;
          }

          *(v4 + 2) = v16;
          v17 = &v4[16 * v15];
          *(v17 + 4) = v22;
          *(v17 + 5) = v13;
        }
      }
    }

    else
    {
      sub_230CFE1D4(v23, &qword_27DB59F48, &qword_230CFFD90);
    }

    result = sub_230CFF8C0();
    v12 = v25;
    if (!v25)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database._test_raw_scalar_sql_query(_:)(Swift::String a1)
{
  v4 = v2;
  v5 = v1;
  if ((MEMORY[0x23191C880]() & 1) == 0)
  {
    return 0;
  }

  if (Database.readConnection.getter(v5, v4))
  {
    sub_230CFF740();
    if (!v3)
    {
      if (v11)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F50, &qword_230CFFD98);
        if (swift_dynamicCast())
        {

          return v9;
        }
      }

      else
      {
        sub_230CFE1D4(v10, &qword_27DB59F48, &qword_230CFFD90);
      }

      sub_230CFDFF8();
      swift_allocError();
      *v8 = 0;
      *(v8 + 4) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_230CFDFF8();
    swift_allocError();
    *v7 = 2;
    *(v7 + 4) = 1;
    return swift_willThrow();
  }
}

unint64_t sub_230CFD1B0(char *a1, int a2, uint64_t a3, unint64_t a4)
{
  v21[3] = a2;
  v23[5] = *MEMORY[0x277D85DE8];
  v7 = sub_230CFF6F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  sub_230CFF6D0();
  v12 = sub_230CFF6C0();
  v13 = *(v8 + 8);
  v13(v10, v7);
  v23[0] = 0;
  LODWORD(v10) = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v23];

  if (v10)
  {
    v14 = a3;
    v15 = a4;
    v16 = v23[0];
    sub_230CFF6E0();
    v17 = v22;
    v18 = sub_230CFF7A0();
    if (v17)
    {
      v13(a1, v7);
      sub_230CFE04C(v14, a4);
    }

    else
    {
      a4 = v18;
      if (v15 >> 60 == 15)
      {
        v13(a1, v7);
      }

      else
      {

        sub_230CFE0B4(v14, v15);
        sub_230CFEAF0(v14, v15, a4, v14, v15);
        sub_230CFE04C(v14, v15);
        sub_230CFF740();
        sub_230CFE04C(v14, v15);
        v13(a1, v7);
        sub_230CFE1D4(v23, &qword_27DB59F48, &qword_230CFFD90);
      }
    }
  }

  else
  {
    v19 = v23[0];
    sub_230CFF690();

    swift_willThrow();
    sub_230CFE04C(a3, a4);
    v13(a1, v7);
  }

  return a4;
}

uint64_t DatabaseState.hashValue.getter()
{
  v1 = *v0;
  sub_230CFF990();
  MEMORY[0x23191CC10](v1);
  return sub_230CFF9B0();
}

uint64_t sub_230CFD55C()
{
  v1 = *v0;
  sub_230CFF990();
  MEMORY[0x23191CC10](v1);
  return sub_230CFF9B0();
}

uint64_t sub_230CFD5D0(uint64_t a1)
{
  v2 = *v1;
  sub_230CFF990();
  MEMORY[0x23191CC10](v2);
  return sub_230CFF9B0();
}

unint64_t static UInt8.fromDatatypeValue(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t *sub_230CFD644@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 <= 0xFF)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static Int32.fromDatatypeValue(_:)(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t *sub_230CFD694@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t static UInt32.fromDatatypeValue(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t *sub_230CFD6E0@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_230CFD70C(uint64_t a1)
{
  v2 = sub_230CFE9A4();

  return MEMORY[0x2821D03D8](a1, v2);
}

uint64_t UInt64.datatypeValue.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t DatabaseCheckpointMode.hashValue.getter()
{
  v1 = *v0;
  sub_230CFF990();
  MEMORY[0x23191CC10](v1);
  return sub_230CFF9B0();
}

uint64_t sub_230CFD800()
{
  v0 = sub_230CFF800();
  __swift_allocate_value_buffer(v0, qword_280D7B8F8);
  __swift_project_value_buffer(v0, qword_280D7B8F8);
  return sub_230CFF7F0();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_230CFD8B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F98, &qword_230D00178);
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

unint64_t sub_230CFD9BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_230CFDA88(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_230CFED20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_230CFDA88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_230CFDB94(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_230CFF8F0();
    a6 = v11;
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

void *sub_230CFDB94(uint64_t a1, unint64_t a2)
{
  v3 = sub_230CFDBE0(a1, a2);
  sub_230CFDD10(&unk_2845A32C0);
  return v3;
}

void *sub_230CFDBE0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_230CFDDFC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_230CFF8F0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_230CFF830();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_230CFDDFC(v10, 0);
        result = sub_230CFF8D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_230CFDD10(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_230CFDE70(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_230CFDDFC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59FA0, &qword_230D00180);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_230CFDE70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59FA0, &qword_230D00180);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_230CFDFF8()
{
  result = qword_27DB59F28;
  if (!qword_27DB59F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F28);
  }

  return result;
}

uint64_t sub_230CFE04C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_230CFE060(a1, a2);
  }

  return a1;
}

uint64_t sub_230CFE060(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_230CFE0B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_230CFE0C8(a1, a2);
  }

  return a1;
}

uint64_t sub_230CFE0C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_230CFE11C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_230CFE164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB59F48, &qword_230CFFD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230CFE1D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_230CFE238()
{
  result = qword_27DB59F60;
  if (!qword_27DB59F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F60);
  }

  return result;
}

unint64_t sub_230CFE290()
{
  result = qword_280D7B820;
  if (!qword_280D7B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7B820);
  }

  return result;
}

unint64_t sub_230CFE2F4()
{
  result = qword_27DB59F68;
  if (!qword_27DB59F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F68);
  }

  return result;
}

unint64_t sub_230CFE34C()
{
  result = qword_27DB59F70;
  if (!qword_27DB59F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F70);
  }

  return result;
}

unint64_t sub_230CFE3A4()
{
  result = qword_280D7B818;
  if (!qword_280D7B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7B818);
  }

  return result;
}

unint64_t sub_230CFE3FC()
{
  result = qword_27DB59F78;
  if (!qword_27DB59F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DatabaseError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_230CFE7D8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230CFE7F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseCheckpointMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DatabaseCheckpointMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_230CFE9A4()
{
  result = qword_27DB59F80;
  if (!qword_27DB59F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59F80);
  }

  return result;
}

uint64_t sub_230CFE9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (sub_230CFF620())
  {
    result = sub_230CFF640();
    if (__OFSUB__(a1, result))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  sub_230CFF630();
  result = sub_230CFF730();
  v9 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v9)
    {
      return sqlite3_key_v2();
    }

LABEL_11:
    if (__OFSUB__(HIDWORD(a4), a4))
    {
      __break(1u);
    }

    return sqlite3_key_v2();
  }

  if (v9 != 2)
  {
    return sqlite3_key_v2();
  }

  v11 = *(a4 + 16);
  v10 = *(a4 + 24);
  v12 = v10 - v11;
  if (!__OFSUB__(v10, v11))
  {
    if (v12 >= 0xFFFFFFFF80000000)
    {
      if (v12 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_11;
      }

      return sqlite3_key_v2();
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_230CFEAF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (v7)
  {
    if (a1 <= a1 >> 32)
    {
      v10 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = a1;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_32;
  }

  v8 = a4;
  a1 = sub_230CFF730();
  v9 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_29;
    }

    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    v15 = v13 - v14;
    if (__OFSUB__(v13, v14))
    {
      goto LABEL_34;
    }

    if (v15 >= 0xFFFFFFFF80000000)
    {
      LODWORD(v12) = 0x7FFFFFFF;
      if (v15 <= 0x7FFFFFFF)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_21;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v9)
  {
    goto LABEL_29;
  }

  v7 = HIDWORD(v8);
  a4 = (HIDWORD(v8) - v8);
  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_8:
  if (v7 != 2)
  {
    v8 = a4;
    sub_230CFF730();
    v12 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v12)
      {
        goto LABEL_29;
      }

LABEL_26:
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        __break(1u);
      }

      goto LABEL_29;
    }

LABEL_21:
    if (v12 != 2)
    {
      goto LABEL_29;
    }

    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    v18 = v16 - v17;
    if (__OFSUB__(v16, v17))
    {
LABEL_35:
      __break(1u);
    }

    if (v18 >= 0xFFFFFFFF80000000)
    {
      if (v18 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_26;
      }

LABEL_29:
      v11 = sqlite3_key_v2();

      return v11;
    }

    goto LABEL_33;
  }

  a1 = *(a1 + 16);
  v10 = a2 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_12:
  v11 = sub_230CFE9F8(a1, v10, a3, a4, a5);

  return v11;
}

uint64_t sub_230CFED20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_230CFEDE0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ConnectionPair.__allocating_init(_:readonly:key:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = swift_allocObject();
  ConnectionPair.init(_:readonly:key:)(a1, v6, a3, a4);
  return v8;
}

uint64_t ConnectionPair.init(_:readonly:key:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v47 = a4;
  v50 = a3;
  LODWORD(v45) = a2;
  v44 = *v4;
  v54 = sub_230CFF6F0();
  v6 = *(v54 - 8);
  v7 = MEMORY[0x28223BE20](v54);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v51 = &v42 - v12;
  v13 = sub_230CFF770();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = *(v14 + 16);
  v49 = a1;
  v20(&v42 - v18, a1, v13);
  v21 = (*(v14 + 88))(v19, v13);
  if (v21 != *MEMORY[0x277D6AEE8])
  {
    v31 = v46;
    v32 = v47;
    if (v21 != *MEMORY[0x277D6AEF0] && v21 != *MEMORY[0x277D6AEF8])
    {
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_230CFF8E0();

      v52 = 0xD000000000000014;
      v53 = 0x8000000230D003B0;
      sub_230CFF430();
      v40 = sub_230CFF930();
      MEMORY[0x23191CA90](v40);

      result = sub_230CFF900();
      __break(1u);
      return result;
    }

    v34 = v49;
    v20(v17, v49, v13);
    sub_230CFF780();
    swift_allocObject();
    v35 = v31;
    v36 = sub_230CFF790();
    v30 = v48;
    if (v35)
    {
      sub_230CFE04C(v50, v32);
      (*(v14 + 8))(v34, v13);
      goto LABEL_12;
    }

    *(v48 + 16) = v36;
    *(v30 + 24) = v36;

    v26 = v32;
LABEL_14:

    sub_230CFF700();

    sub_230CFF700();
    sub_230CFE04C(v50, v26);
    (*(v14 + 8))(v34, v13);
    return v30;
  }

  (*(v14 + 96))(v19, v13);
  v22 = v51;
  sub_230CFF6A0();

  v23 = sub_230CFF780();
  v24 = *(v6 + 16);
  v24(v11, v22, v54);
  v25 = v50;
  v26 = v47;
  sub_230CFE0B4(v50, v47);
  v27 = v45 & 1;
  v45 = v23;
  v28 = v46;
  v29 = sub_230CFD1B0(v11, v27, v25, v26);
  if (!v28)
  {
    v46 = v6;
    v37 = v25;
    v30 = v48;
    *(v48 + 24) = v29;
    v38 = v43;
    v24(v43, v51, v54);
    sub_230CFE0B4(v37, v26);
    v39 = sub_230CFD1B0(v38, 1, v37, v26);
    (*(v46 + 8))(v51, v54);
    *(v30 + 16) = v39;
    v34 = v49;
    goto LABEL_14;
  }

  sub_230CFE04C(v25, v26);
  (*(v14 + 8))(v49, v13);
  (*(v6 + 8))(v51, v54);
  v30 = v48;
LABEL_12:
  swift_deallocPartialClassInstance();
  return v30;
}

unint64_t sub_230CFF430()
{
  result = qword_27DB59FA8;
  if (!qword_27DB59FA8)
  {
    sub_230CFF770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB59FA8);
  }

  return result;
}

uint64_t ConnectionPair.deinit()
{

  return v0;
}

uint64_t ConnectionPair.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_230CFF5A0()
{
  v0 = sub_230CFF800();
  __swift_allocate_value_buffer(v0, qword_280D7B910);
  __swift_project_value_buffer(v0, qword_280D7B910);
  return sub_230CFF7F0();
}