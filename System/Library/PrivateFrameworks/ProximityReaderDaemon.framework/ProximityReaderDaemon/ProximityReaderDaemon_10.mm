void sub_261336C88(void *a1, uint64_t a2)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v4 = sub_26139EF7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  sub_26139EF4C();
  v14 = sub_2613A189C();

  v15 = [a1 fileExistsAtPath_];

  if (v15)
  {
    v50 = sub_26129B5FC();
    sub_26125A870(v50, v13, &qword_27FE9F560, &qword_2613A3CB0);
    v16 = sub_2613A124C();
    v52 = *(v16 - 8);
    v49 = *(v52 + 48);
    v17 = v49(v13, 1, v16);
    v51 = v11;
    if (v17 == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v48 = v16;
      (*(v5 + 16))(v7, a2, v4);
      v18 = sub_2613A122C();
      v19 = sub_2613A1D9C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v45 = v20;
        v47 = swift_slowAlloc();
        v53[0] = v47;
        *v20 = 136315138;
        v21 = sub_26139EEDC();
        v46 = v19;
        v23 = v22;
        (*(v5 + 8))(v7, v4);
        v24 = sub_26124C11C(v21, v23, v53);

        v25 = v45;
        *(v45 + 1) = v24;
        _os_log_impl(&dword_261243000, v18, v46, "Deleting folder: %s", v25, 0xCu);
        v26 = v47;
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        MEMORY[0x266701350](v26, -1, -1);
        MEMORY[0x266701350](v25, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }

      v16 = v48;
      (*(v52 + 8))(v13, v48);
    }

    v27 = sub_26139EEFC();
    v53[0] = 0;
    v28 = [a1 removeItemAtURL:v27 error:v53];

    v29 = v53[0];
    if (v28)
    {

      v30 = v29;
    }

    else
    {
      v48 = v53[0];
      v31 = v53[0];
      v32 = sub_26139EE7C();

      swift_willThrow();
      v33 = v51;
      sub_26125A870(v50, v51, &qword_27FE9F560, &qword_2613A3CB0);
      if (v49(v33, 1, v16) == 1)
      {

        sub_26124C718(v33, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v34 = v32;
        v35 = sub_2613A122C();
        v36 = sub_2613A1D8C();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = v16;
          v39 = swift_slowAlloc();
          *v37 = 138412290;
          v40 = v32;
          v41 = _swift_stdlib_bridgeErrorToNSError();
          *(v37 + 4) = v41;
          *v39 = v41;
          _os_log_impl(&dword_261243000, v35, v36, "Error deleting folder: [%@]", v37, 0xCu);
          sub_26124C718(v39, &qword_27FEA0410, &qword_2613AA780);
          v42 = v39;
          v16 = v38;
          MEMORY[0x266701350](v42, -1, -1);
          v43 = v37;
          v33 = v51;
          MEMORY[0x266701350](v43, -1, -1);
        }

        else
        {
        }

        (*(v52 + 8))(v33, v16);
      }
    }
  }
}

uint64_t sub_261337248()
{
  v0 = sub_26139EF7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_26129B5FC();
  sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "Deleting required folders", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  v13 = [objc_opt_self() defaultManager];
  v14 = sub_26124BDB0();
  v15 = *(v1 + 16);
  v15(v3, v14, v0);
  sub_261336C88(v13, v3);
  v16 = *(v1 + 8);
  v16(v3, v0);
  v17 = sub_26124BF4C();
  v15(v3, v17, v0);
  sub_261336C88(v13, v3);

  return (v16)(v3, v0);
}

uint64_t sub_261337534()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261262AA4;

  return sub_261335160(v3, v4, v5, v2);
}

BOOL sub_2613375C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for TransactionData(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 48);
  (*(*v9 + 480))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_26124C718(v3, &qword_27FE9F340, &unk_2613A4B40);
    return 1;
  }

  else
  {
    v11 = sub_26125D080(v3, v8);
    if (v8[*(v4 + 72)] == 1)
    {
      sub_261345C6C(v8, type metadata accessor for TransactionData);
      return 0;
    }

    else
    {
      (*(*v9 + 504))(v11);
      v13 = v12;
      sub_261345C6C(v8, type metadata accessor for TransactionData);
      return v13 < 0xFC;
    }
  }
}

uint64_t sub_2613377D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42 = a5;
  v43 = a8;
  v34 = a6;
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v39 = a11;
  v40 = a12;
  v41 = a10;
  v38 = a9;
  v14 = sub_26139FC1C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v34 - v19);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = *(**sub_2612C11DC() + 112);

  v22(v23);
  v24 = v34;
  v25 = v36;

  v26 = v35;
  *(v21 + 152) = 0;
  *(v21 + 176) = 0;
  *(v21 + 24) = a1;
  *(v21 + 32) = v26;
  *(v21 + 40) = v25;
  *(v21 + 136) = a7;
  if (v24)
  {
    (*(v15 + 104))(v20, *MEMORY[0x277D43900], v14);
  }

  else
  {
    *v20 = v26;
    v20[1] = v25;
    (*(v15 + 104))(v20, *MEMORY[0x277D43908], v14);
  }

  type metadata accessor for SessionTask(0);
  (*(v15 + 16))(v18, v20, v14);

  *(v21 + 144) = sub_2613271E0(v27, v18, a7, 0);
  type metadata accessor for TransactionStore(0);
  v28 = sub_26125C610(v37);
  (*(v15 + 8))(v20, v14);
  v30 = v38;
  v29 = v39;
  *(v21 + 48) = v28;
  *(v21 + 56) = v29;
  *(v21 + 64) = v40;
  *(v21 + 72) = v30;
  v31 = v41;
  *(v21 + 160) = v42;
  *(v21 + 168) = v24;
  v32 = v43;
  *(v21 + 80) = v31;
  *(v21 + 88) = v32;
  return v21;
}

void *sub_261337A58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261243000, v8, v9, "TransactionTask destroyed", v10, 2u);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  return v1;
}

uint64_t sub_261337C54()
{
  sub_261337A58();

  return swift_deallocClassInstance();
}

uint64_t sub_261337C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v109 = a2;
  v3 = sub_26139F1CC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v97 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v100 = &v95 - v8;
  MEMORY[0x28223BE20](v7);
  v98 = &v95 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v113 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v101 = &v95 - v14;
  MEMORY[0x28223BE20](v13);
  v111 = (&v95 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F338, &unk_2613A4630);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v106 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v99 = &v95 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v103 = &v95 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v95 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v95 - v26;
  v28 = v4;
  v31 = *(v4 + 56);
  v29 = v4 + 56;
  v30 = v31;
  v31(&v95 - v26, 1, 1, v3);
  v108 = v2;
  v32 = *(v2 + 48);
  v33 = v32[2];
  sub_26139FCFC();
  v35 = v34;

  v36 = v31;
  if (v35)
  {
    sub_26139F14C();
    v30(v25, 0, 1, v3);
    sub_261344654(v25, v27);
  }

  v118 = v27;
  v114 = v25;
  v112 = v3;
  v37 = sub_26129B5FC();
  v38 = v111;
  sub_26125A870(v37, v111, &qword_27FE9F560, &qword_2613A3CB0);
  v39 = sub_2613A124C();
  v110 = *(v39 - 8);
  v40 = *(v110 + 48);
  v119 = v39;
  v116 = v40;
  v117 = v110 + 48;
  v41 = (v40)(v38, 1);
  v42 = v28;
  v115 = v28;
  v102 = v36;
  if (v41 == 1)
  {
    sub_26124C718(v38, &qword_27FE9F560, &qword_2613A3CB0);
    v43 = v29;
  }

  else
  {
    v44 = sub_2613A122C();
    v45 = sub_2613A1D9C();
    v43 = v29;
    if (os_log_type_enabled(v44, v45))
    {
      v104 = v32;
      v46 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v121 = v96;
      *v46 = 136315138;
      v47 = v118;
      swift_beginAccess();
      v48 = v42;
      v49 = v112;
      if ((*(v42 + 48))(v47, 1, v112))
      {
        v50 = 0;
        v51 = 0xE000000000000000;
      }

      else
      {
        v52 = *(v42 + 16);
        v53 = v98;
        v52(v98, v47, v49);
        v50 = sub_26139F15C();
        v51 = v54;
        (*(v48 + 8))(v53, v49);
      }

      v55 = sub_26124C11C(v50, v51, &v121);

      *(v46 + 4) = v55;
      _os_log_impl(&dword_261243000, v44, v45, "resolving locales for customer:%s", v46, 0xCu);
      v56 = v96;
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      MEMORY[0x266701350](v56, -1, -1);
      MEMORY[0x266701350](v46, -1, -1);

      v42 = v115;
      v32 = v104;
      v38 = v111;
    }

    else
    {
    }

    (*(v110 + 8))(v38, v119);
  }

  sub_26139F7CC();
  v57 = MEMORY[0x2666FDC30]();
  v105 = v37;
  if (v57)
  {
    v58 = v57;
    v59 = v118;
    swift_beginAccess();
    v60 = v103;
    sub_26125A870(v59, v103, &qword_27FE9F338, &unk_2613A4630);
    v61 = *(v42 + 48);
    v62 = v42;
    v63 = v112;
    if (v61(v60, 1, v112) == 1)
    {

      sub_26124C718(v60, &qword_27FE9F338, &unk_2613A4630);
      v64 = v113;
LABEL_19:
      v71 = v118;
      goto LABEL_24;
    }

    v104 = v32;
    v67 = *(v42 + 32);
    v68 = v100;
    v111 = v67;
    (v67)(v100, v60, v63);
    v69 = v114;
    (*(v62 + 16))(v114, v68, v63);
    v102(v69, 0, 1, v63);
    v103 = v43;
    v70 = v99;
    sub_26139F7AC();

    sub_26124C718(v69, &qword_27FE9F338, &unk_2613A4630);
    (*(v62 + 8))(v68, v63);
    if (v61(v70, 1, v63) == 1)
    {
      sub_26124C718(v70, &qword_27FE9F338, &unk_2613A4630);
      v64 = v113;
      v32 = v104;
      goto LABEL_19;
    }

    v76 = v97;
    v77 = v111;
    (v111)(v97, v70, v63);
    v77(v69, v76, v63);
    v102(v69, 0, 1, v63);
    v71 = v118;
    sub_261344654(v69, v118);
    v64 = v113;
    v32 = v104;
  }

  else
  {
    v65 = v101;
    sub_26125A870(v37, v101, &qword_27FE9F560, &qword_2613A3CB0);
    v66 = v116(v65, 1, v119);
    v64 = v113;
    if (v66 == 1)
    {
      sub_26124C718(v65, &qword_27FE9F560, &qword_2613A3CB0);
      v63 = v112;
      goto LABEL_19;
    }

    v72 = sub_2613A122C();
    v73 = sub_2613A1D8C();
    v74 = os_log_type_enabled(v72, v73);
    v63 = v112;
    v71 = v118;
    if (v74)
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_261243000, v72, v73, "UI Bundle not found, unable to check Locales", v75, 2u);
      MEMORY[0x266701350](v75, -1, -1);
    }

    (*(v110 + 8))(v65, v119);
  }

LABEL_24:
  swift_beginAccess();
  v78 = v106;
  sub_26125A870(v71, v106, &qword_27FE9F338, &unk_2613A4630);
  v79 = *(v115 + 48);
  v80 = v79(v78, 1, v63);
  sub_26124C718(v78, &qword_27FE9F338, &unk_2613A4630);
  if (v80 == 1)
  {
    v81 = sub_2613A056C();
  }

  else
  {
    v81 = sub_2613A054C();
  }

  v82 = v114;
  (*(*v32 + 34))(v81);
  sub_26125A870(v105, v64, &qword_27FE9F560, &qword_2613A3CB0);
  if (v116(v64, 1, v119) == 1)
  {
    sub_26124C718(v64, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v83 = sub_2613A122C();
    v84 = sub_2613A1D9C();
    if (os_log_type_enabled(v83, v84))
    {
      v104 = v32;
      v85 = swift_slowAlloc();
      v86 = v63;
      v87 = swift_slowAlloc();
      v120 = v87;
      *v85 = 136315138;
      if (v79(v71, 1, v86))
      {
        v88 = 0;
        v89 = 0xE000000000000000;
      }

      else
      {
        v90 = v115;
        v91 = v98;
        (*(v115 + 16))(v98, v71, v86);
        v118 = sub_26139F15C();
        v89 = v92;
        (*(v90 + 8))(v91, v86);
        v88 = v118;
      }

      v93 = sub_26124C11C(v88, v89, &v120);

      *(v85 + 4) = v93;
      _os_log_impl(&dword_261243000, v83, v84, "resolved locales for customer:%s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      MEMORY[0x266701350](v87, -1, -1);
      MEMORY[0x266701350](v85, -1, -1);

      v64 = v113;
      v32 = v104;
    }

    else
    {
    }

    (*(v110 + 8))(v64, v119);
  }

  sub_26125A870(v71, v82, &qword_27FE9F338, &unk_2613A4630);
  (*(*v32 + 28))(v82);
  type metadata accessor for Mock();

  sub_26129B1A8(20);

  sub_26129B284(21);
  sub_26125A870(v71, v82, &qword_27FE9F338, &unk_2613A4630);

  sub_26139F96C();
  return sub_26124C718(v71, &qword_27FE9F338, &unk_2613A4630);
}

BOOL sub_261338934(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ReaderEvent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = sub_26129B5FC();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v54 = *(v15 + 48);
  v16 = v54(v12, 1, v14);
  v55 = a1;
  if (v16 == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v53 = v14;
    v17 = sub_26125A798();
    v18 = sub_261291AA8();
    v14 = v53;
    sub_26129BC3C(v17 & 1, v2, 0xD000000000000018, 0x80000002613BA370, v18, v19);

    (*(v15 + 8))(v12, v14);
  }

  v20 = sub_2613375C8();
  if (v20)
  {
    v21 = *(v2 + 24);
    v22 = sub_26125B314(*(v21 + 64), *(v21 + 72));
    if (v22)
    {
      v23 = (*(*v22 + 376))();
      if (v23)
      {
        v24 = v23;
        if ((*(v2 + 16) & 1) == 0)
        {
          v28 = *(v21 + 64);
          v29 = *(v21 + 72);
          v30 = v2;
          v31 = *(*(v2 + 48) + 16);
          v32 = v30[21] == 0;
          v54 = v6;
          v33 = !v32;

          v34 = v31;
          v2 = v30;
          v35 = v34;

          sub_2612B8908(v28, v29, v24, v35, v33, v60);
          v57 = &type metadata for CancelRequested;
          v58 = sub_2613446C4();
          v36 = swift_allocObject();
          *&v56 = v36;
          v37 = v60[5];
          v38 = v60[6];
          v39 = v60[3];
          v36[5] = v60[4];
          v36[6] = v37;
          v40 = v60[7];
          v36[7] = v38;
          v36[8] = v40;
          v41 = v60[1];
          v36[1] = v60[0];
          v36[2] = v41;
          v36[3] = v60[2];
          v36[4] = v39;
          sub_2612B64A4(15, &v56, v59);
          v42 = v30[15];
          v43 = v30[16];
          __swift_project_boxed_opaque_existential_1(v30 + 12, v42);
          v44 = *(v43 + 120);
          v45 = v43;
          v6 = v54;
          v44(v59, v42, v45);

          sub_2612A0E50(v59);
          goto LABEL_19;
        }
      }
    }

LABEL_19:
    *(v2 + 16) = 1;
    v46 = *(v2 + 120);
    v47 = *(v2 + 128);
    __swift_project_boxed_opaque_existential_1((v2 + 96), v46);
    v48 = v55;
    if (((*(v47 + 80))(v55, v46, v47) & 1) == 0)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
      v50 = *(*(v49 - 8) + 56);
      v50(v6, 3, 10, v49);
      sub_26133E934(v6);
      sub_261345C6C(v6, type metadata accessor for ReaderEvent);
      *v6 = v48;
      *(v6 + 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
      swift_storeEnumTagMultiPayload();
      v50(v6, 0, 10, v49);
      sub_26133E934(v6);
      sub_261345C6C(v6, type metadata accessor for ReaderEvent);
    }

    return v20;
  }

  sub_26125A870(v13, v10, &qword_27FE9F560, &qword_2613A3CB0);
  if (v54(v10, 1, v14) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v25 = sub_2613A122C();
    v26 = sub_2613A1D8C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_261243000, v25, v26, "[TransactionTask] intercepting cancel request, read is not cancellable at current state", v27, 2u);
      MEMORY[0x266701350](v27, -1, -1);
    }

    (*(v15 + 8))(v10, v14);
  }

  return v20;
}

BOOL sub_261338F28(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for TransactionData(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_26139F95C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v1 + 24) + 136))(v15);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = &qword_27FEA04F8;
    v19 = &qword_2613AC6F0;
    v20 = v12;
LABEL_3:
    sub_26124C718(v20, v18, v19);
    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  v22 = sub_26139F93C();
  (*(v14 + 8))(v17, v13);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  sub_26125A870(a1, v5, &qword_27FE9F340, &unk_2613A4B40);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v18 = &qword_27FE9F340;
    v19 = &unk_2613A4B40;
    v20 = v5;
    goto LABEL_3;
  }

  sub_26125D080(v5, v9);
  v23 = &v9[*(v6 + 36)];
  v25 = *v23;
  v24 = *(v23 + 1);
  v26 = v25 & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v27 = v26;
  }

  v28 = v27 != 0;
  sub_261345C6C(v9, type metadata accessor for TransactionData);
  return v28;
}

uint64_t sub_261339260()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v2 - 8);
  v227 = &v209 - v3;
  v4 = sub_26139F13C();
  MEMORY[0x28223BE20](v4 - 8);
  v232 = &v209 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  MEMORY[0x28223BE20](v6 - 8);
  v230 = &v209 - v7;
  v222 = sub_26139F95C();
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v219 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_26139F1CC();
  v218 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v214 = &v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F338, &unk_2613A4630);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v216 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v215 = &v209 - v13;
  v14 = type metadata accessor for TransactionData(0);
  v238 = *(v14 - 1);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v16;
  MEMORY[0x28223BE20](v15);
  v234 = &v209 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v224 = &v209 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v209 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v236 = &v209 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v231 = &v209 - v28;
  MEMORY[0x28223BE20](v27);
  v235 = (&v209 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v209 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v233 = (&v209 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v220 = &v209 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v228 = &v209 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v229 = &v209 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v237 = (&v209 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v209 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v209 - v47;
  v239 = sub_26129B5FC();
  sub_26125A870(v239, v48, &qword_27FE9F560, &qword_2613A3CB0);
  v49 = sub_2613A124C();
  v50 = *(v49 - 8);
  v240 = *(v50 + 6);
  v241 = v50 + 48;
  v51 = v240(v48, 1, v49);
  v226 = v17;
  v223 = v24;
  if (v51 == 1)
  {
    v52 = sub_26124C718(v48, &qword_27FE9F560, &qword_2613A3CB0);
    if ((*(v1 + 176) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_26125A870(v239, v33, &qword_27FE9F560, &qword_2613A3CB0);
    if (v240(v33, 1, v49) == 1)
    {
      return sub_26124C718(v33, &qword_27FE9F560, &qword_2613A3CB0);
    }

    v76 = sub_2613A122C();
    v77 = sub_2613A1D9C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = v49;
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_261243000, v76, v77, "[TransactionTask] already returned, skipping return data/error", v79, 2u);
      v80 = v79;
      v49 = v78;
      MEMORY[0x266701350](v80, -1, -1);
    }

    return (*(v50 + 1))(v33, v49);
  }

  v67 = v14;
  v68 = v50;
  v69 = v49;
  v70 = sub_26125A798();
  v71 = sub_261291AA8();
  v72 = v70 & 1;
  v49 = v69;
  v50 = v68;
  v14 = v67;
  sub_26129BC3C(v72, v1, 0xD000000000000012, 0x80000002613BD350, v71, v73);

  v52 = (*(v50 + 1))(v48, v49);
  if (*(v1 + 176))
  {
    goto LABEL_8;
  }

LABEL_3:
  *(v1 + 176) = 1;
  v53 = *(v1 + 48);
  v54 = (*(*v53 + 66))(v52);
  if ((v55 & 1) == 0)
  {
    v75 = v54;
    sub_26125A870(v239, v46, &qword_27FE9F560, &qword_2613A3CB0);
    if (v240(v46, 1, v49) == 1)
    {
      sub_26124C718(v46, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v81 = v50;
      v82 = v49;
      v83 = sub_2613A122C();
      v84 = sub_2613A1D8C();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138412290;
        sub_2612B45EC();
        swift_allocError();
        *v87 = v75;
        v88 = _swift_stdlib_bridgeErrorToNSError();
        *(v85 + 4) = v88;
        *v86 = v88;
        _os_log_impl(&dword_261243000, v83, v84, "[TransactionTask] has error %@", v85, 0xCu);
        sub_26124C718(v86, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v86, -1, -1);
        MEMORY[0x266701350](v85, -1, -1);
      }

      v81[1](v46, v82);
    }

    return (*(v1 + 56))(0, v75, 0);
  }

  v56 = (*v53 + 504);
  v57 = *v56;
  v58 = (*v56)(v54);
  if (v59 > 0xFBu)
  {
    goto LABEL_28;
  }

  v213 = v49;
  v60 = v57(v58);
  v62 = v61;
  v63 = (*v53 + 480);
  v64 = v235;
  v212 = *v63;
  v211 = v63;
  v212();
  v65 = v64;
  if ((*(v238 + 48))(v64, 1, v14))
  {
    v58 = sub_26124C718(v64, &qword_27FE9F340, &unk_2613A4B40);
    v66 = v62 > 0xFBu;
  }

  else
  {
    v89 = v64 + v14[25];
    v90 = *v89;
    v91 = v65;
    v92 = *(v89 + 8);
    v58 = sub_26124C718(v91, &qword_27FE9F340, &unk_2613A4B40);
    if (v62 <= 0xFBu)
    {
      v244 = v60;
      v245 = v62;
      v49 = v213;
      if (v92 > 0xFB)
      {
        goto LABEL_28;
      }

      v242 = v90;
      v243 = v92;
      sub_26134483C();
      v58 = sub_2613A188C();
      if ((v58 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_24:
      v93 = v231;
      (v212)(v58);
      v94 = sub_261338F28(v93);
      v58 = sub_26124C718(v93, &qword_27FE9F340, &unk_2613A4B40);
      if (v94)
      {
        v58 = (*(*v53 + 64))(0, 252);
      }

      goto LABEL_28;
    }

    v66 = v92 > 0xFB;
  }

  v49 = v213;
  if (v66)
  {
    goto LABEL_24;
  }

LABEL_28:
  v235 = v50;
  v95 = v57(v58);
  if (v96 > 0xFBu)
  {
    v97 = (*v53 + 480);
    v98 = *v97;
    v99 = v97;
    v100 = v236;
    (*v97)(v95);
    v101 = *(v238 + 48);
    if (v101(v100, 1, v14) == 1)
    {
      sub_26124C718(v100, &qword_27FE9F340, &unk_2613A4B40);
      v102 = v233;
      sub_26125A870(v239, v233, &qword_27FE9F560, &qword_2613A3CB0);
      if (v240(v102, 1, v49) == 1)
      {
        sub_26124C718(v102, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v123 = sub_2613A122C();
        v124 = sub_2613A1D8C();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = v49;
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_261243000, v123, v124, "[TransactionTask] no transaction data", v126, 2u);
          v127 = v126;
          v49 = v125;
          MEMORY[0x266701350](v127, -1, -1);
        }

        v235[1](v102, v49);
      }

      return (*(v1 + 56))(0, 25, 0);
    }

    v237 = v101;
    v106 = v234;
    sub_26125D080(v100, v234);
    v107 = *(v1 + 24);
    v108 = *(v107 + 8);
    v109 = *(v107 + 9);
    v236 = v107;
    v110 = sub_26125B314(v108, v109);
    if (v110)
    {
      v111 = v110;
      v231 = v99;
      v233 = v98;
      v112 = v229;
      sub_26125A870(v239, v229, &qword_27FE9F560, &qword_2613A3CB0);
      if (v240(v112, 1, v49) == 1)
      {
        v113 = sub_26124C718(v112, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v129 = sub_2613A122C();
        v130 = sub_2613A1D7C();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = v49;
          v132 = swift_slowAlloc();
          *v132 = 0;
          _os_log_impl(&dword_261243000, v129, v130, "[TransactionTask] generating blob again, if needed", v132, 2u);
          v133 = v132;
          v49 = v131;
          v112 = v229;
          MEMORY[0x266701350](v133, -1, -1);
        }

        v113 = (v235[1])(v112, v49);
      }

      v134 = v230;
      if ((*(*v53 + 78))(v113) & 1) == 0 || ((*(*v1 + 440))(v106, v111), (v135))
      {
        v136 = *(v106 + v14[18]);
        v210 = v1;
        if ((v136 & 1) == 0 && *(v106 + v14[19]) == 1)
        {
          v213 = v49;
          v137 = *sub_261287C58();
          v138 = *(*v53 + 27);

          v140 = v215;
          v138(v139);
          v141 = v218;
          v142 = *(v218 + 48);
          v143 = v217;
          if ((v142)(v140, 1, v217))
          {
            v144 = sub_26124C718(v140, &qword_27FE9F338, &unk_2613A4630);
            v220 = 0;
            v229 = 0;
          }

          else
          {
            v151 = *(v141 + 16);
            v212 = v142;
            v152 = v214;
            v151(v214, v140, v143);
            sub_26124C718(v140, &qword_27FE9F338, &unk_2613A4630);
            v220 = sub_26139F15C();
            v229 = v153;
            v154 = v152;
            v142 = v212;
            v144 = (*(v141 + 8))(v154, v143);
          }

          v155 = v216;
          (*(*v53 + 30))(v144);
          if ((v142)(v155, 1, v143))
          {
            sub_26124C718(v155, &qword_27FE9F338, &unk_2613A4630);
            v156 = 0;
            v157 = 0;
          }

          else
          {
            v158 = v218;
            v159 = v155;
            v160 = v214;
            (*(v218 + 16))(v214, v159, v143);
            sub_26124C718(v159, &qword_27FE9F338, &unk_2613A4630);
            v156 = sub_26139F15C();
            v157 = v161;
            (*(v158 + 8))(v160, v143);
          }

          v106 = v234;
          (*(*v137 + 144))(v234, v220, v229, v156, v157);

          v1 = v210;
          v49 = v213;
          v134 = v230;
        }

        v162 = v228;
        sub_26125A870(v239, v228, &qword_27FE9F560, &qword_2613A3CB0);
        if (v240(v162, 1, v49) == 1)
        {
          v163 = sub_26124C718(v162, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v164 = sub_2613A122C();
          v165 = sub_2613A1D7C();
          if (os_log_type_enabled(v164, v165))
          {
            v166 = v14;
            v167 = v49;
            v168 = swift_slowAlloc();
            *v168 = 0;
            _os_log_impl(&dword_261243000, v164, v165, "[TransactionTask] building result", v168, 2u);
            v169 = v168;
            v49 = v167;
            v14 = v166;
            v134 = v230;
            MEMORY[0x266701350](v169, -1, -1);
          }

          v163 = (v235[1])(v228, v49);
        }

        (*(*v236 + 136))(v163);
        v170 = v221;
        v171 = v222;
        v172 = (*(v221 + 48))(v134, 1, v222);
        v241 = v111;
        if (v172 == 1)
        {
          sub_26124C718(v134, &qword_27FEA04F8, &qword_2613AC6F0);
        }

        else
        {
          v173 = v219;
          (*(v170 + 32))(v219, v134, v171);
          v174 = v171;
          v175 = sub_26139F93C();
          (*(v170 + 8))(v173, v174);
          if (v175)
          {
            v176 = v106 + v14[25];
            v177 = *(v176 + 8);
            v178 = v233;
            if (v177 <= 0xFB)
            {
              if ((v177 & 0xC0) == 0x80 && *v176 == 11 && v177 == 128)
              {
                v208 = 1;
              }

              else
              {
                v208 = 2;
              }

              v240 = v208;
            }

            else
            {
              v240 = 0;
            }

            goto LABEL_78;
          }
        }

        v240 = 0;
        v178 = v233;
LABEL_78:
        v179 = v53[2];
        v239 = sub_26139FD2C();

        v180 = v53[2];
        sub_26139FCEC();

        if (*(v1 + 168))
        {
          v235 = 0xC000000000000000;
          v236 = 0;
        }

        else
        {
          v181 = (*(*v53 + 69))();
          v235 = v182;
          v236 = v181;
        }

        v183 = (v106 + v14[11]);
        v184 = *v183;
        v185 = v183[1];
        v186 = (v106 + v14[32]);
        v187 = v186[1];
        v230 = *v186;
        v231 = v185;
        v233 = v184;
        sub_26124C778(v184, v185);

        v229 = v187;

        v189 = v223;
        v178(v188);
        v190 = v237;
        if (v237(v189, 1, v14) || (v192 = *(v189 + v14[24])) == 0)
        {
          v191 = sub_26124C718(v189, &qword_27FE9F340, &unk_2613A4B40);
        }

        else
        {
          v193 = v192;
          sub_26124C718(v189, &qword_27FE9F340, &unk_2613A4B40);
          sub_2613A027C();
        }

        v194 = v224;
        v178(v191);
        if (v190(v194, 1, v14))
        {
          sub_26124C718(v194, &qword_27FE9F340, &unk_2613A4B40);
          v195 = v226;
        }

        else
        {
          v196 = v194;
          v197 = v194;
          v195 = v226;
          sub_261345CCC(v196, v226, type metadata accessor for TransactionData);
          sub_26124C718(v197, &qword_27FE9F340, &unk_2613A4B40);
          sub_261345C6C(v195, type metadata accessor for TransactionData);
        }

        v198 = v234;
        v199 = objc_allocWithZone(sub_26139F66C());
        v200 = v240;
        v201 = sub_26139F65C();
        v202 = sub_2613A1C1C();
        v203 = v227;
        (*(*(v202 - 8) + 56))(v227, 1, 1, v202);
        sub_261345CCC(v198, v195, type metadata accessor for TransactionData);
        v204 = (*(v238 + 80) + 48) & ~*(v238 + 80);
        v205 = (v225 + v204 + 7) & 0xFFFFFFFFFFFFFFF8;
        v206 = swift_allocObject();
        v206[2] = 0;
        v206[3] = 0;
        v206[4] = v210;
        v206[5] = v200;
        sub_26125D080(v195, v206 + v204);
        *(v206 + v205) = v241;
        *(v206 + ((v205 + 15) & 0xFFFFFFFFFFFFFFF8)) = v201;

        v207 = v201;
        sub_261266800(0, 0, v203, &unk_2613ACD80, v206);

        v150 = v198;
        return sub_261345C6C(v150, type metadata accessor for TransactionData);
      }

      (*(v1 + 56))(0, 25, 0);
    }

    else
    {
      v128 = v220;
      sub_26125A870(v239, v220, &qword_27FE9F560, &qword_2613A3CB0);
      if (v240(v128, 1, v49) == 1)
      {
        sub_26124C718(v128, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v145 = sub_2613A122C();
        v146 = sub_2613A1D8C();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = v49;
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&dword_261243000, v145, v146, "[TransactionTask] no session store", v148, 2u);
          v149 = v148;
          v49 = v147;
          MEMORY[0x266701350](v149, -1, -1);
        }

        v235[1](v128, v49);
      }

      (*(v1 + 56))(0, 4, 0);
    }

    v150 = v106;
    return sub_261345C6C(v150, type metadata accessor for TransactionData);
  }

  v103 = v95;
  v104 = v96;
  v105 = v237;
  sub_26125A870(v239, v237, &qword_27FE9F560, &qword_2613A3CB0);
  if (v240(v105, 1, v49) == 1)
  {
    sub_26124C718(v105, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v114 = v49;
    v115 = sub_2613A122C();
    v116 = sub_2613A1D8C();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v117 = 138412290;
      sub_2612B48D8();
      swift_allocError();
      *v119 = v103;
      *(v119 + 8) = v104;
      v120 = _swift_stdlib_bridgeErrorToNSError();
      *(v117 + 4) = v120;
      *v118 = v120;
      _os_log_impl(&dword_261243000, v115, v116, "[TransactionTask] has reader error %@", v117, 0xCu);
      sub_26124C718(v118, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v118, -1, -1);
      MEMORY[0x266701350](v117, -1, -1);
    }

    v235[1](v105, v114);
  }

  v121 = *(v1 + 56);
  v122 = sub_2612CAFEC(v103, v104);
  return v121(0, v122, 0);
}

uint64_t sub_26133AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26133AD54, 0, 0);
}

uint64_t sub_26133AD54()
{
  if (!*(*(v0 + 48) + 168))
  {
    v2 = *(v0 + 64);
    if (*(v2 + *(type metadata accessor for TransactionData(0) + 132)) & 1) != 0 || (type metadata accessor for Mock(), (sub_26129B338(36)))
    {
      v3 = *(v0 + 88);
      v4 = sub_26129B5FC();
      sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
      v5 = sub_2613A124C();
      v6 = *(v5 - 8);
      if ((*(v6 + 48))(v3, 1, v5) == 1)
      {
        sub_26124C718(*(v0 + 88), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v22 = sub_2613A122C();
        v23 = sub_2613A1D8C();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_261243000, v22, v23, "[TransactionTask] invalid reader mode", v24, 2u);
          MEMORY[0x266701350](v24, -1, -1);
        }

        v25 = *(v0 + 88);

        (*(v6 + 8))(v25, v5);
      }

      v26 = *(*(v0 + 48) + 24);
      v28 = *(v26 + 64);
      v27 = *(v26 + 72);

      sub_26125B3FC(v28, v27);

      v29 = 0;
      v44 = 25;
      goto LABEL_26;
    }

LABEL_25:
    v44 = 0;
    v29 = 1;
LABEL_26:
    v32 = *(v0 + 80);
    v33 = *(v0 + 72);
    v34 = *(v0 + 48);
    sub_2612FF320();
    (*(*v33 + 360))();
    v35 = *(v34 + 24);
    v36 = *(v35 + 64);
    v37 = *(v35 + 72);

    sub_26125B1E4(v36, v37, v33);

    if (v29)
    {
      v38 = v32;
    }

    else
    {
      v38 = 0;
    }

    (*(v34 + 56))(v38, v44, v29);

    v39 = *(v0 + 8);

    return v39();
  }

  v1 = sub_26139FC4C();
  if (v1 != sub_26139FC4C())
  {
    v7 = *(v0 + 104);
    v8 = sub_26129B5FC();
    sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    v12 = *(v0 + 104);
    if (v11 == 1)
    {
LABEL_16:
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
      goto LABEL_25;
    }

    v13 = sub_2613A122C();
    v14 = sub_2613A1D8C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_261243000, v13, v14, "[TransactionTask] returning SAF result with non-successful outcome", v15, 2u);
      MEMORY[0x266701350](v15, -1, -1);
    }

    v16 = *(v0 + 104);
LABEL_24:

    (*(v10 + 8))(v16, v9);
    goto LABEL_25;
  }

  *(v0 + 144) = sub_2612CCA28();
  *(v0 + 145) = 0;
  sub_261344CAC();
  sub_2613A1B1C();
  sub_2613A1B1C();
  if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
  {

LABEL_15:
    v19 = *(v0 + 96);
    v20 = sub_26129B5FC();
    sub_26125A870(v20, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    v21 = (*(v10 + 48))(v19, 1, v9);
    v12 = *(v0 + 96);
    if (v21 == 1)
    {
      goto LABEL_16;
    }

    v13 = sub_2613A122C();
    v30 = sub_2613A1D9C();
    if (os_log_type_enabled(v13, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261243000, v13, v30, "[TransactionTask] VAS only transaction, no data to be stored", v31, 2u);
      MEMORY[0x266701350](v31, -1, -1);
    }

    v16 = *(v0 + 96);
    goto LABEL_24;
  }

  v17 = sub_2613A241C();

  if (v17)
  {
    goto LABEL_15;
  }

  *(v0 + 112) = (*(**(*(v0 + 48) + 48) + 552))(v18);
  *(v0 + 120) = v41;
  v42 = swift_task_alloc();
  *(v0 + 128) = v42;
  *v42 = v0;
  v42[1] = sub_26133B3B4;
  v43 = *(v0 + 64);

  return sub_261344D00(v43);
}

uint64_t sub_26133B3B4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *(*v2 + 112);
  *(v3 + 136) = a1;
  *(v3 + 146) = a2;

  sub_26124A168(v5, v4);

  return MEMORY[0x2822009F8](sub_26133B4F0, 0, 0);
}

uint64_t sub_26133B4F0()
{
  v1 = *(v0 + 146);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  sub_2612FF320();
  (*(*v4 + 360))();
  v6 = *(v5 + 24);
  v7 = *(v6 + 64);
  v8 = *(v6 + 72);

  sub_26125B1E4(v7, v8, v4);

  if (v1)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  (*(v5 + 56))(v9, v2, v1 & 1);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26133B624(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v63 - v7;
  ErrorEventData = type metadata accessor for ReadErrorEventData(0);
  MEMORY[0x28223BE20](ErrorEventData - 8);
  v10 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v63 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v63 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  v69 = sub_26129B5FC();
  sub_26125A870(v69, v22, &qword_27FE9F560, &qword_2613A3CB0);
  v23 = sub_2613A124C();
  v24 = *(v23 - 8);
  v70 = *(v24 + 48);
  v25 = v70(v22, 1, v23);
  v68 = v24;
  v65 = v20;
  if (v25 == 1)
  {
    sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v63 = v10;
    v64 = v17;
    v26 = v2;
    v27 = v23;
    v28 = sub_26125A798();
    v29 = sub_261291AA8();
    sub_26129BC3C(v28 & 1, v26, 0xD000000000000019, 0x80000002613BD370, v29, v30);

    v23 = v27;
    v31 = v27;
    v2 = v26;
    v10 = v63;
    v17 = v64;
    (*(v24 + 8))(v22, v31);
  }

  v32 = *(v2 + 120);
  v33 = *(v2 + 128);
  __swift_project_boxed_opaque_existential_1((v2 + 96), v32);
  v34 = (*(v33 + 80))(2, v32, v33);
  *(v2 + 16) = 1;
  if ((a1 & 1) != 0 || (v35 = v34, v36 = *(v2 + 48), (*(*v36 + 66))(), (v37 & 1) == 0))
  {
    sub_26125A870(v69, v14, &qword_27FE9F560, &qword_2613A3CB0);
    if (v70(v14, 1, v23) == 1)
    {
      v42 = sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v43 = sub_2613A122C();
      v44 = sub_2613A1D9C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_261243000, v43, v44, "[TransactionTask] return data after tapUIFinished", v45, 2u);
        MEMORY[0x266701350](v45, -1, -1);
      }

      v42 = (*(v68 + 8))(v14, v23);
    }

    return (*(*v2 + 328))(v42);
  }

  else
  {
    v38 = *(v2 + 24);
    v39 = sub_26125B314(*(v38 + 64), *(v38 + 72));
    if (v39)
    {
      v40 = (*(*v39 + 376))();
      if (v40)
      {
        v64 = v40;
        if ((v35 & 1) == 0)
        {
          v41 = v65;
          sub_26125A870(v69, v65, &qword_27FE9F560, &qword_2613A3CB0);
          if (v70(v41, 1, v23) == 1)
          {
            sub_26124C718(v41, &qword_27FE9F560, &qword_2613A3CB0);
          }

          else
          {
            v53 = sub_2613A122C();
            v54 = sub_2613A1D7C();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              *v55 = 0;
              _os_log_impl(&dword_261243000, v53, v54, "[TransactionTask] UI was dismissed and there is no active read, send readCancelled event", v55, 2u);
              MEMORY[0x266701350](v55, -1, -1);
            }

            (*(v68 + 8))(v41, v23);
          }

          v56 = *(*v36 + 60);
          v57 = v36[2];
          v58 = v64;

          v60 = v66;
          v56(v59);
          sub_2612B5BF0(v57, v58, 2, 0, v60, v10);
          v61 = sub_26139F13C();
          v62 = v67;
          (*(*(v61 - 8) + 56))(v67, 1, 1, v61);
          sub_261340E08(v62, v10);
          sub_26124C718(v62, &qword_27FE9F280, &unk_2613A42B0);
          sub_261345C6C(v10, type metadata accessor for ReadErrorEventData);
        }

        (*(v2 + 56))(0, 10, 0);
      }
    }

    sub_26125A870(v69, v17, &qword_27FE9F560, &qword_2613A3CB0);
    if (v70(v17, 1, v23) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v47 = v17;
      v48 = sub_2613A122C();
      v49 = sub_2613A1D8C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_261243000, v48, v49, "[TransactionTask] failed to load session store after tapUIFinished", v50, 2u);
        MEMORY[0x266701350](v50, -1, -1);
      }

      (*(v68 + 8))(v47, v23);
    }

    v51 = *(v38 + 64);
    v52 = *(v38 + 72);

    sub_26125B3FC(v51, v52);

    return (*(v2 + 56))(0, 10, 0);
  }
}

uint64_t sub_26133BE50(int a1, char a2, int a3, int a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v48[-v19];
  v21 = *(v6 + 16);
  v22 = sub_26129B5FC();
  if (v21 == 1)
  {
    sub_26125A870(v22, v20, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v20, 1, v23) == 1)
    {
      v25 = sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = sub_2613A122C();
      v30 = sub_2613A1D8C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "[TransactionTask] canceled, read blocked", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      v25 = (*(v24 + 8))(v20, v23);
    }

    v32 = *(v6 + 88);
    result = (*(*v32 + 536))(v25);
    if (result)
    {
      return [v32 updateWithTransactionEvent_];
    }
  }

  else
  {
    v50 = a1;
    v51 = a4;
    sub_26125A870(v22, v18, &qword_27FE9F560, &qword_2613A3CB0);
    v26 = sub_2613A124C();
    v27 = *(v26 - 8);
    v28 = (*(v27 + 48))(v18, 1, v26);
    v49 = a3;
    if (v28 == 1)
    {
      sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v34 = sub_2613A122C();
      v35 = sub_2613A1D9C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67110144;
        *(v36 + 4) = v50 & 1;
        *(v36 + 8) = 1024;
        *(v36 + 10) = a2 & 1;
        *(v36 + 14) = 1024;
        *(v36 + 16) = a3 & 1;
        *(v36 + 20) = 1024;
        *(v36 + 22) = v51 & 1;
        *(v36 + 26) = 2048;
        *(v36 + 28) = a5;
        _os_log_impl(&dword_261243000, v34, v35, "[TransactionTask] starting read retry=%{BOOL}d, silent=%{BOOL}d, prepareNeeded=%{BOOL}d, forceAttestation=%{BOOL}d, delay=%f", v36, 0x24u);
        MEMORY[0x266701350](v36, -1, -1);
      }

      (*(v27 + 8))(v18, v26);
    }

    v37 = *(v6 + 48);
    v38 = a2 & 1;
    (*(*v37 + 608))(v38);
    v39 = v37[2];
    v40 = *(v6 + 120);
    v41 = *(v6 + 128);
    __swift_project_boxed_opaque_existential_1((v6 + 96), v40);
    v42 = *(v41 + 80);
    v43 = v39;
    v42(2, v40, v41);
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = sub_2613A1C1C();
    (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
    v46 = swift_allocObject();
    v47 = v50 & 1;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = v47;
    *(v46 + 40) = a5;
    *(v46 + 48) = v6;
    *(v46 + 56) = v51 & 1;
    *(v46 + 57) = v38;
    *(v46 + 58) = v49 & 1;
    *(v46 + 64) = v43;
    *(v46 + 72) = sub_261344890;
    *(v46 + 80) = v44;

    sub_261266800(0, 0, v14, &unk_2613ACD90, v46);
  }

  return result;
}

uint64_t sub_26133C3C0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8, char a9)
{
  *(v9 + 560) = v14;
  *(v9 + 544) = v13;
  *(v9 + 76) = a9;
  *(v9 + 75) = a8;
  *(v9 + 74) = a7;
  *(v9 + 536) = a6;
  *(v9 + 528) = a1;
  *(v9 + 73) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  v10 = sub_2613A21DC();
  *(v9 + 584) = v10;
  *(v9 + 592) = *(v10 - 8);
  *(v9 + 600) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26133C4EC, 0, 0);
}

uint64_t sub_26133C4EC(uint64_t a1)
{
  if (*(v1 + 73) == 1)
  {
    v2 = sub_2613A263C();
    v4 = v3;
    sub_2613A24CC();
    v5 = swift_task_alloc();
    *(v1 + 608) = v5;
    *v5 = v1;
    v5[1] = sub_26133C8F4;

    return sub_2612D3284(v2, v4, 0, 0, 1);
  }

  else
  {
    *(v1 + 624) = 0;
    v7 = *(v1 + 536);
    if (*(v7 + 16))
    {
      v8 = *(v1 + 568);
      v9 = sub_26129B5FC();
      sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
      v10 = sub_2613A124C();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v8, 1, v10) == 1)
      {
        sub_26124C718(*(v1 + 568), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v19 = sub_2613A122C();
        v20 = sub_2613A1D8C();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_261243000, v19, v20, "[TransactionTask] card read was cancelled, skipping the read", v21, 2u);
          MEMORY[0x266701350](v21, -1, -1);
        }

        v22 = *(v1 + 568);

        (*(v11 + 8))(v22, v10);
      }

      v23 = *(v1 + 8);

      return v23();
    }

    else
    {
      v12 = *(v1 + 75);
      v13 = swift_allocObject();
      *(v1 + 632) = v13;
      *(v13 + 16) = 0;
      v14 = *(v7 + 144);
      v15 = swift_allocObject();
      *(v1 + 640) = v15;
      *(v15 + 16) = v12;
      *(v15 + 24) = v7;
      *(v15 + 32) = v13;
      v16 = *(*v14 + 296);

      v24 = (v16 + *v16);
      v17 = swift_task_alloc();
      *(v1 + 648) = v17;
      *v17 = v1;
      v17[1] = sub_26133D120;
      v18 = *(v1 + 74);

      return v24(v1 + 80, v18, sub_261344B44, v15);
    }
  }
}

uint64_t sub_26133C8F4()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  v3 = v2[75];
  v4 = v2[74];
  v5 = v2[73];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_26133CDD8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_26133CA8C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26133CA8C()
{
  *(v0 + 624) = *(v0 + 616);
  v1 = *(v0 + 536);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 568);
    v3 = sub_26129B5FC();
    sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
    v4 = sub_2613A124C();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v2, 1, v4) == 1)
    {
      sub_26124C718(*(v0 + 568), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D8C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, "[TransactionTask] card read was cancelled, skipping the read", v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      v17 = *(v0 + 568);

      (*(v5 + 8))(v17, v4);
    }

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v6 = *(v0 + 75);
    v7 = swift_allocObject();
    *(v0 + 632) = v7;
    *(v7 + 16) = 0;
    v8 = *(v1 + 144);
    v9 = swift_allocObject();
    *(v0 + 640) = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v1;
    *(v9 + 32) = v7;
    v10 = *(*v8 + 296);

    v19 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v0 + 648) = v11;
    *v11 = v0;
    v11[1] = sub_26133D120;
    v12 = *(v0 + 74);

    return v19(v0 + 80, v12, sub_261344B44, v9);
  }
}

uint64_t sub_26133CDD8()
{
  *(v0 + 624) = 0;
  v1 = *(v0 + 536);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 568);
    v3 = sub_26129B5FC();
    sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
    v4 = sub_2613A124C();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v2, 1, v4) == 1)
    {
      sub_26124C718(*(v0 + 568), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D8C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, "[TransactionTask] card read was cancelled, skipping the read", v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      v17 = *(v0 + 568);

      (*(v5 + 8))(v17, v4);
    }

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v6 = *(v0 + 75);
    v7 = swift_allocObject();
    *(v0 + 632) = v7;
    *(v7 + 16) = 0;
    v8 = *(v1 + 144);
    v9 = swift_allocObject();
    *(v0 + 640) = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v1;
    *(v9 + 32) = v7;
    v10 = *(*v8 + 296);

    v19 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v0 + 648) = v11;
    *v11 = v0;
    v11[1] = sub_26133D120;
    v12 = *(v0 + 74);

    return v19(v0 + 80, v12, sub_261344B44, v9);
  }
}

uint64_t sub_26133D120()
{

  return MEMORY[0x2822009F8](sub_26133D238, 0, 0);
}

uint64_t sub_26133D238()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 57) = *(v0 + 121);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 576);
    v4 = sub_26129B5FC();
    sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
    v5 = sub_2613A124C();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = *(v0 + 576);
    if (v7 == 1)
    {
      sub_26124C718(v0 + 16, &qword_27FEA0610, &qword_2613ACB20);
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v19 = sub_2613A122C();
      v20 = sub_2613A1D8C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261243000, v19, v20, "[TransactionTask] card read was cancelled, skipping the read", v21, 2u);
        MEMORY[0x266701350](v21, -1, -1);
      }

      v22 = *(v0 + 576);
      sub_26124C718(v0 + 16, &qword_27FEA0610, &qword_2613ACB20);

      (*(v6 + 8))(v22, v5);
    }
  }

  else
  {
    v25 = *(v0 + 632);
    v9 = *(v0 + 560);
    v10 = *(v0 + 76);
    v11 = *(v0 + 74);
    v12 = *(v0 + 32);
    *(v0 + 400) = *(v0 + 16);
    *(v0 + 416) = v12;
    *(v0 + 432) = *(v0 + 48);
    *(v0 + 441) = *(v0 + 57);
    v13 = swift_task_alloc();
    v14 = *(v0 + 544);
    *(v13 + 16) = v25 + 16;
    *(v13 + 24) = v10;
    *(v13 + 32) = v1;
    *(v13 + 40) = v11;
    *(v13 + 48) = v14;
    *(v13 + 64) = v9;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0610, &qword_2613ACB20);
    sub_26124A238(sub_261344BA8, v13, v15, v0 + 336);

    v16 = *(v0 + 352);
    *(v0 + 464) = *(v0 + 336);
    *(v0 + 480) = v16;
    *(v0 + 496) = *(v0 + 368);
    *(v0 + 505) = *(v0 + 377);
    sub_26124A42C(sub_261344BD8, v1, v15, v0 + 272);
    sub_26124C718(v0 + 16, &qword_27FEA0610, &qword_2613ACB20);
    v17 = *(v0 + 480);
    *(v0 + 208) = *(v0 + 464);
    *(v0 + 224) = v17;
    *(v0 + 240) = *(v0 + 496);
    *(v0 + 249) = *(v0 + 505);
    sub_26124C718(v0 + 208, &qword_27FEA0610, &qword_2613ACB20);
    v18 = *(v0 + 288);
    *(v0 + 144) = *(v0 + 272);
    *(v0 + 160) = v18;
    *(v0 + 176) = *(v0 + 304);
    *(v0 + 185) = *(v0 + 313);
    sub_26124C718(v0 + 144, &qword_27FEA0610, &qword_2613ACB20);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_26133D5B4(uint64_t *a1, _BYTE *a2, char a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8)
{
  v67 = a7;
  v68 = a8;
  v72 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v70 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v64 - v20;
  v21 = *a1;
  v22 = a1[1];
  swift_beginAccess();
  if (*a2 & 1) == 0 && (a3)
  {
    v64 = v16;
    v65 = v22;
    v23 = *(a4 + 120);
    v24 = *(a4 + 128);
    __swift_project_boxed_opaque_existential_1((a4 + 96), v23);
    v66 = a4;
    v25 = *(a4 + 24);
    v27 = *(v25 + 64);
    v26 = *(v25 + 72);
    v28 = *(v24 + 56);

    v28(0, 0, a5 & 1, 0, v27, v26, v23, v24);
    if (v8)
    {

      v29 = sub_26129B5FC();
      v30 = v70;
      sub_26125A870(v29, v70, &qword_27FE9F560, &qword_2613A3CB0);
      v31 = sub_2613A124C();
      v32 = *(v31 - 8);
      v33 = (*(v32 + 48))(v30, 1, v31);
      v35 = v65;
      v34 = v66;
      v36 = v64;
      if (v33 == 1)
      {
        sub_26124C718(v30, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v55 = v8;
        v56 = sub_2613A122C();
        v57 = sub_2613A1D8C();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v58 = 138412290;
          v60 = v8;
          v34 = v66;
          v61 = _swift_stdlib_bridgeErrorToNSError();
          *(v58 + 4) = v61;
          *v59 = v61;
          _os_log_impl(&dword_261243000, v56, v57, "[TransactionTask] failed to prepare during retry: [ %@ ]", v58, 0xCu);
          sub_26124C718(v59, &qword_27FEA0410, &qword_2613AA780);
          v62 = v59;
          v35 = v65;
          MEMORY[0x266701350](v62, -1, -1);
          MEMORY[0x266701350](v58, -1, -1);
        }

        (*(v32 + 8))(v70, v31);
      }

      v63 = sub_26139F13C();
      (*(*(v63 - 8) + 56))(v36, 1, 1, v63);
      (*(*v34 + 352))(v36, v35, 17);

      return sub_26124C718(v36, &qword_27FE9F280, &unk_2613A42B0);
    }

    v22 = v65;
    a4 = v66;
  }

  v37 = *(v21 + 48);
  v38 = *(v21 + 56);
  v39 = *(a4 + 24);
  v40 = v39[8];
  v41 = v39[9];
  v42 = *(v22 + 80);
  v43 = v39[4];
  v44 = v39[5];

  sub_2612A77D4(v37, v38, v40, v41, v42, v43, v44, v72, v71);
  if (*(a4 + 16))
  {
    v45 = sub_26129B5FC();
    v46 = v69;
    sub_26125A870(v45, v69, &qword_27FE9F560, &qword_2613A3CB0);
    v47 = sub_2613A124C();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_2612B47F8(v71);
      return sub_26124C718(v46, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v52 = sub_2613A122C();
      v53 = sub_2613A1D8C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_261243000, v52, v53, "[TransactionTask] card read was cancelled, skipping the read", v54, 2u);
        MEMORY[0x266701350](v54, -1, -1);
      }

      sub_2612B47F8(v71);

      return (*(v48 + 8))(v46, v47);
    }
  }

  else
  {
    v50 = *(a4 + 120);
    v51 = *(a4 + 128);
    __swift_project_boxed_opaque_existential_1((a4 + 96), v50);
    (*(v51 + 72))(v71, v67, v68, v50, v51);
    return sub_2612B47F8(v71);
  }
}

id sub_26133DBCC(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = *a1;
  v8 = sub_26129B5FC();
  sub_26125A870(v8, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D8C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      sub_2612B45EC();
      swift_allocError();
      *v15 = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261243000, v11, v12, "[TransactionTask] failed to refresh session: [ %@ ]", v13, 0xCu);
      sub_26124C718(v14, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    (*(v10 + 8))(v6, v9);
  }

  (*(**(a2 + 48) + 536))(v7, 0);
  return [*(a2 + 88) updateWithTransactionEvent_];
}

uint64_t sub_26133DE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  ErrorEventData = type metadata accessor for ReadErrorEventData(0);
  MEMORY[0x28223BE20](ErrorEventData - 8);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + 48);
  (*(*v14 + 536))(a3, 0);
  v15 = v14[2];
  v16 = type metadata accessor for TransactionData(0);
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = v15;

  sub_2612B5C88(v17, a2, a3, v10, v13);
  sub_261340E08(a1, v13);
  [*(v4 + 88) updateWithTransactionEvent_];
  return sub_261345C6C(v13, type metadata accessor for ReadErrorEventData);
}

uint64_t sub_26133E014()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = *(**(v0 + 48) + 528);

  v7 = v5(v6);
  if (v8)
  {

    v9 = *(v0 + 152);
    if (v9)
    {
      v10 = *(*v9 + 144);

      v10(sub_2613449E4, v4);
    }
  }

  else
  {
    v12 = v7;
    v13 = sub_26129B5FC();
    sub_26125A870(v13, v3, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v3, 1, v14) == 1)
    {
      sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v16 = sub_2613A122C();
      v17 = sub_2613A1D9C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23 = v12;
        v24 = v19;
        *v18 = 136315138;
        sub_2612B45EC();
        v20 = sub_2613A24FC();
        v22 = sub_26124C11C(v20, v21, &v24);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_261243000, v16, v17, "[TransactionTask] pinAuthNeeded skipped due to %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x266701350](v19, -1, -1);
        MEMORY[0x266701350](v18, -1, -1);
      }

      (*(v15 + 8))(v3, v14);
    }

    sub_26133E340(v4);
  }
}

uint64_t sub_26133E340(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_26139F95C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_26129B5FC();
  sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v30 = v8;
    v17 = sub_2613A122C();
    v18 = sub_2613A1D9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = v3;
      v20 = v19;
      *v19 = 0;
      _os_log_impl(&dword_261243000, v17, v18, "[TransactionTask] pinAuthNeeded cleanup handler called", v19, 2u);
      v21 = v20;
      v3 = v29;
      MEMORY[0x266701350](v21, -1, -1);
    }

    (*(v16 + 8))(v13, v15);
    v8 = v30;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    (*(**(result + 24) + 136))();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_26124C718(v6, &qword_27FEA04F8, &qword_2613AC6F0);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v24 = sub_26139F94C();
      (*(v8 + 8))(v10, v7);
      if (v24)
      {
      }
    }

    v25 = *(**(v23 + 48) + 560);

    v25(0, 0xF000000000000000);

    v26 = *(v23 + 48);
    v27 = type metadata accessor for TransactionData(0);
    (*(*(v27 - 8) + 56))(v3, 1, 1, v27);
    (*(*v26 + 488))(v3);
  }

  return result;
}

uint64_t sub_26133E7B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    result = (*(**(v4 + 48) + 536))(30, 0);
  }

  v13 = *(v4 + 152);
  if (v13)
  {
    v14 = *(*(v4 + 48) + 16);

    v15 = v14;
    sub_26139FCEC();

    (*(*v13 + 152))(v12, a1, a2);

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

id sub_26133E934(void *a1)
{
  v2 = v1;
  v88 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  v3 = MEMORY[0x28223BE20](v79);
  v81 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v80 = &v74 - v6;
  MEMORY[0x28223BE20](v5);
  v85 = &v74 - v7;
  v84 = sub_26139F64C();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26139F13C();
  v87 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v86 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = &v74 - v12;
  v13 = type metadata accessor for ReaderEvent(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v74 - v20;
  v22 = sub_26129B5FC();
  sub_26125A870(v22, v21, &qword_27FE9F560, &qword_2613A3CB0);
  v23 = sub_2613A124C();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = v88;
  }

  else
  {
    v76 = v9;
    v77 = v1;
    v25 = v88;
    sub_261345CCC(v88, v18, type metadata accessor for ReaderEvent);
    v26 = sub_2613A122C();
    v27 = sub_2613A1D9C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v93[0] = v75;
      *v28 = 136315138;
      sub_261345E5C(&qword_27FE9FDC0, type metadata accessor for ReaderEvent, &unk_2613A9F48);
      v29 = sub_2613A23EC();
      v31 = v30;
      sub_261345C6C(v18, type metadata accessor for ReaderEvent);
      v32 = sub_26124C11C(v29, v31, v93);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_261243000, v26, v27, "[TransactionTask] ReadEvent: [ %s ]", v28, 0xCu);
      v33 = v75;
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x266701350](v33, -1, -1);
      v34 = v28;
      v25 = v88;
      MEMORY[0x266701350](v34, -1, -1);
    }

    else
    {

      sub_261345C6C(v18, type metadata accessor for ReaderEvent);
    }

    (*(v24 + 8))(v21, v23);
    v2 = v77;
    v9 = v76;
  }

  sub_261345CCC(v25, v16, type metadata accessor for ReaderEvent);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  result = (*(*(v35 - 8) + 48))(v16, 10, v35);
  if (result <= 4)
  {
    if (result <= 1)
    {
      if (result)
      {
        v50 = *(v2 + 48);
        (*(*v50 + 464))(1);
        [*(v2 + 88) updateWithTransactionEvent_];
        (*(v2 + 72))(0);
        v51 = *(v2 + 24);
        result = sub_26125B314(*(v51 + 64), *(v51 + 72));
        if (result)
        {
          v52 = (*(*result + 376))();
          if (v52)
          {
            v53 = v52;
            if (*(v2 + 136))
            {
              v54 = v50[2];
              v55 = *(*v50 + 264);
              v88 = v52;
              v56 = v54;
              v57 = v55();
              v53 = v88;
              sub_2613956FC(v88, v56, v57, v58);
            }

            v59 = *(v51 + 72);
            v88 = *(v51 + 64);
            v60 = *(*v50 + 312);

            v62 = v53;
            v63 = v78;
            v60(v61);
            (*(v87 + 56))(v63, 0, 1, v9);
            v64 = *(v2 + 160);
            v65 = *(v2 + 168);

            sub_2612B69B0(v88, v59, v62, v50, v63, v64, v65, v93);
            v90 = &type metadata for ReadStarted;
            v91 = sub_261345D90();
            v66 = swift_allocObject();
            *&v89 = v66;
            v67 = v93[7];
            v66[7] = v93[6];
            v66[8] = v67;
            v66[9] = v93[8];
            v68 = v93[3];
            v66[3] = v93[2];
            v66[4] = v68;
            v69 = v93[5];
            v66[5] = v93[4];
            v66[6] = v69;
            v70 = v93[1];
            v66[1] = v93[0];
            v66[2] = v70;
            sub_2612B64A4(10, &v89, v92);
            v71 = *(v2 + 120);
            v72 = *(v2 + 128);
            __swift_project_boxed_opaque_existential_1((v2 + 96), v71);
            (*(v72 + 120))(v92, v71, v72);

            return sub_2612A0E50(v92);
          }

          else
          {
          }
        }
      }

      else
      {
        v39 = v85;
        sub_2612CD008(v16, v85);
        v40 = sub_26133FC48();
        if (v40)
        {
          v41 = MEMORY[0x28223BE20](v40);
          *(&v74 - 4) = v2;
          *(&v74 - 3) = v42;
          *(&v74 - 2) = v41;
          v43 = v81;
          v44 = v42;
          v45 = v79;
          v46 = sub_26124A238(sub_261345D34, (&v74 - 6), v79, v81);
          MEMORY[0x28223BE20](v46);
          *(&v74 - 2) = v2;
          *(&v74 - 1) = v44;
          v47 = v80;
          sub_26124A42C(sub_261345D64, (&v74 - 4), v45, v80);

          sub_26124C718(v43, &qword_27FE9FC30, &unk_2613A9E80);
          sub_26124C718(v47, &qword_27FE9FC30, &unk_2613A9E80);
        }

        return sub_26124C718(v39, &qword_27FE9FC30, &unk_2613A9E80);
      }
    }

    else if (result == 2)
    {
      if (*(v2 + 136))
      {
        v48 = *(*(v2 + 48) + 16);
        v49 = v86;
        sub_26139FCEC();

        sub_261395F70(v49);
        (*(v87 + 8))(v49, v9);
      }

      [*(v2 + 88) updateWithTransactionEvent_];
      return (*(v2 + 72))(1);
    }

    else if (result == 3)
    {
      return (*(v2 + 72))(5);
    }
  }

  else if (result > 7)
  {
    if (result == 8)
    {
      return result;
    }

    if (result == 9)
    {
      [*(v2 + 88) updateWithTransactionEvent_];
      return (*(v2 + 72))(4);
    }

    (*(**(v2 + 48) + 440))(1);
    v73 = v82;
    sub_26139F5EC();
    sub_26139F5DC();
    (*(v83 + 8))(v73, v84);
    return [*(v2 + 88) updateWithTransactionEvent_];
  }

  else
  {
    if (result != 5)
    {
      if (result == 6)
      {
        if (*(v2 + 136))
        {
          v37 = *(*(v2 + 48) + 16);
          v38 = v86;
          sub_26139FCEC();

          sub_261395FA8(v38);
          (*(v87 + 8))(v38, v9);
        }
      }

      [*(v2 + 88) updateWithTransactionEvent_];
      return (*(v2 + 72))(4);
    }

    [*(v2 + 88) updateWithTransactionEvent_];
    return (*(v2 + 72))(2);
  }

  return result;
}

uint64_t sub_26133F55C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v46 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38[-v8];
  v10 = sub_26139F13C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v38[-v18];
  v20 = type metadata accessor for TransactionData(0);
  v21 = a1 + *(v20 + 100);
  if (*(v21 + 8) < 0xFCu)
  {
    v23 = v20;
    LODWORD(v46) = *(v21 + 8);
    v43 = a1;
    v44 = v10;
    v45 = a3;
    v42 = a2;
    v24 = *v21;
    v25 = sub_26129B5FC();
    sub_26125A870(v25, v16, &qword_27FE9F560, &qword_2613A3CB0);
    v26 = sub_2613A124C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v16, 1, v26) == 1)
    {
      v28 = sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
      v29 = v44;
    }

    else
    {
      v41 = v24;
      v30 = sub_2613A122C();
      v31 = sub_2613A1D9C();
      v40 = v30;
      v32 = os_log_type_enabled(v30, v31);
      v29 = v44;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v39 = v31;
        v34 = v33;
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        sub_2612B48D8();
        swift_allocError();
        *v36 = v41;
        *(v36 + 8) = v46;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_261243000, v40, v39, "[TransactionTask] data returned with error: %@", v34, 0xCu);
        sub_26124C718(v35, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v35, -1, -1);
        MEMORY[0x266701350](v34, -1, -1);
      }

      v28 = (*(v27 + 8))(v16, v26);
      v24 = v41;
    }

    (*(**(v42 + 48) + 312))(v28);
    sub_261345CCC(v43, v9, type metadata accessor for TransactionData);
    (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
    sub_2613404F0(v13, v45, v24, v46, v9);
    sub_26124C718(v9, &qword_27FE9F340, &unk_2613A4B40);
    return (*(v11 + 8))(v13, v29);
  }

  else
  {
    (*(**(a2 + 48) + 312))();
    (*(v11 + 56))(v19, 0, 1, v10);
    sub_261341328(v19, a3, v46, a1);
    return sub_26124C718(v19, &qword_27FE9F280, &unk_2613A42B0);
  }
}

uint64_t sub_26133FA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_26139F13C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26133FEC4(*a1, *(a1 + 8));
  if (v14 <= 0xFBu)
  {
    v15 = result;
    v16 = v14;
    (*(**(a2 + 48) + 312))();
    v17 = type metadata accessor for TransactionData(0);
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    sub_2613404F0(v12, a3, v15, v16, v8);
    sub_26124C718(v8, &qword_27FE9F340, &unk_2613A4B40);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_26133FC48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = *(v0 + 24);
  v6 = sub_26125B314(*(v5 + 64), *(v5 + 72));
  if (v6)
  {
    v7 = v6;
    if ((*(*v6 + 376))(v6))
    {
      return v7;
    }
  }

  v8 = sub_26129B5FC();
  sub_26125A870(v8, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D8C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261243000, v11, v12, "[TransactionTask] failed to load session store after read completed", v13, 2u);
      MEMORY[0x266701350](v13, -1, -1);
    }

    (*(v10 + 8))(v4, v9);
  }

  v14 = *(v5 + 64);
  v15 = *(v5 + 72);

  sub_26125B3FC(v14, v15);

  (*(**(v1 + 48) + 536))(4, 0);
  [*(v1 + 88) updateWithTransactionEvent_];
  return 0;
}

uint64_t sub_26133FEC4(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = a2 >> 6;
  if (v9 != 1)
  {
    if (v9 != 2 || a1 != 4 || a2 != 128)
    {
      return a1;
    }

    v10 = *(v3 + 48);
    result = (*(*v10 + 400))(v41);
    if (!__OFADD__(*v12, 1))
    {
      ++*v12;
      v13 = (result)(v41, 0);
      v14 = *(*v10 + 384);
      v15 = v14(v13);
      if (v15 == 1)
      {
        v15 = [*(v3 + 88) updateWithTransactionEvent_];
      }

      if (v14(v15) >= 6 || ((*(*v10 + 456))() & 1) != 0)
      {
        return 4;
      }

      v18 = 0;
      v22 = 0;
      v19 = 1.0;
LABEL_25:
      v24 = sub_26129B5FC();
      sub_26125A870(v24, v8, &qword_27FE9F560, &qword_2613A3CB0);
      v25 = sub_2613A124C();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v8, 1, v25) == 1)
      {
        sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {

        v27 = sub_2613A122C();
        v28 = sub_2613A1D9C();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v39 = v22;
          v30 = v29;
          v31 = swift_slowAlloc();
          v40 = v18;
          v32 = v31;
          v41[0] = v31;
          *v30 = 136315138;
          v33 = (*(*v10 + 616))();
          v35 = sub_26124C11C(v33, v34, v41);

          *(v30 + 4) = v35;
          _os_log_impl(&dword_261243000, v27, v28, "[TransactionTask] silent retry: %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v32);
          v36 = v32;
          v18 = v40;
          MEMORY[0x266701350](v36, -1, -1);
          v37 = v30;
          v22 = v39;
          MEMORY[0x266701350](v37, -1, -1);
        }

        (*(v26 + 8))(v8, v25);
      }

      (*(*v3 + 344))(1, 1, v22, v18, v19);
      return 0;
    }

    __break(1u);
    goto LABEL_34;
  }

  if ((a2 & 0x3F) == 0)
  {
    v10 = *(v3 + 48);
    result = (*(*v10 + 376))(v41);
    if (__OFADD__(*v20, 1))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    ++*v20;
    v21 = (result)(v41, 0);
    if ((*(*v10 + 360))(v21) >= 2)
    {
      return a1;
    }

    v19 = 0.5;
    v18 = 1;
LABEL_21:
    v22 = 1;
    goto LABEL_25;
  }

  if ((a2 & 0x3F) != 2)
  {
    return a1;
  }

  if (a1 != 2)
  {
    if (a1)
    {
      return a1;
    }

    v10 = *(v3 + 48);
    result = (*(*v10 + 352))(v41);
    if (__OFADD__(*v16, 1))
    {
      goto LABEL_35;
    }

    ++*v16;
    v17 = (result)(v41, 0);
    if ((*(*v10 + 336))(v17) >= 2)
    {
      return 0;
    }

    v18 = 0;
    v19 = 0.5;
    goto LABEL_21;
  }

  v10 = *(v3 + 48);
  result = (*(*v10 + 424))(v41);
  if (!__OFADD__(*v23, 1))
  {
    ++*v23;
    (result)(v41, 0);
    v18 = 0;
    v22 = 0;
    v19 = 0.5;
    goto LABEL_25;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2613404F0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v60 = a2;
  v61 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - v13;
  ErrorEventData = type metadata accessor for ReadErrorEventData(0);
  MEMORY[0x28223BE20](ErrorEventData - 8);
  v64 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v59 = a3;
  v62 = a4;
  if (sub_2612CA6AC())
  {
    v23 = sub_26129B5FC();
    sub_26125A870(v23, v22, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    v57 = *(v25 + 48);
    v58 = v25;
    if ((v57)(v22, 1, v24) == 1)
    {
      sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v56 = v23;
      v26 = v20;
      v27 = sub_2613A122C();
      v28 = sub_2613A1D9C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "[TransactionTask] config needed, invalidating session", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      (*(v58 + 8))(v22, v24);
      v20 = v26;
      v23 = v56;
    }

    v30 = *(v6 + 24);
    v31 = *(v30 + 64);
    v32 = *(v30 + 72);

    LOBYTE(v31) = sub_26125B3FC(v31, v32);

    if (v31)
    {
      sub_26125A870(v23, v20, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v57)(v20, 1, v24) == 1)
      {
        sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {

        v33 = sub_2613A122C();
        v34 = sub_2613A1D9C();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v57 = v20;
          v36 = v35;
          v37 = swift_slowAlloc();
          v65 = v37;
          *v36 = 136315138;
          v38 = *(v30 + 64);
          v39 = *(v30 + 72);

          v40 = sub_26124C11C(v38, v39, &v65);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_261243000, v33, v34, "[TransactionTask] existing session deleted: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          MEMORY[0x266701350](v37, -1, -1);
          v41 = v36;
          v20 = v57;
          MEMORY[0x266701350](v41, -1, -1);
        }

        (*(v58 + 8))(v20, v24);
      }
    }
  }

  v42 = *(v6 + 48);
  v43 = *(*v42 + 36);
  v44 = v42[2];
  v45 = v60;

  v43(v46);
  v47 = v63;
  sub_26125A870(v63, v14, &qword_27FE9F340, &unk_2613A4B40);
  v48 = v64;
  v49 = v44;
  v50 = v45;
  v51 = v59;
  v52 = v62;
  sub_2612B5BF0(v49, v50, v59, v62, v14, v64);
  v53 = sub_26139F13C();
  v54 = *(v53 - 8);
  (*(v54 + 16))(v11, v61, v53);
  (*(v54 + 56))(v11, 0, 1, v53);
  sub_261340E08(v11, v48);
  sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0);
  if (sub_2612CA6AC())
  {
    (*(v6 + 72))(4);
    (*(*v6 + 344))(1, 0, 0, 0, 0.5);
  }

  else
  {
    sub_26125A870(v47, v14, &qword_27FE9F340, &unk_2613A4B40);
    (*(*v42 + 61))(v14);
    (*(*v42 + 64))(v51, v52);
  }

  [*(v6 + 88) updateWithTransactionEvent_];
  return sub_261345C6C(v48, type metadata accessor for ReadErrorEventData);
}

uint64_t sub_261340C08(unint64_t a1, char a2)
{
  if (!(a2 >> 6))
  {
    return 19;
  }

  if (a2 >> 6 == 1)
  {
    return 12;
  }

  if (__PAIR128__(-128, 5) >= __PAIR128__(a2, a1))
  {
    if (__PAIR128__(-128, 2) >= __PAIR128__(a2, a1))
    {
      return 12;
    }

    if (a2 == 128 && a1 == 3)
    {
      return 14;
    }

    if (a2 == 128 && a1 == 4)
    {
      return 15;
    }

LABEL_29:
    v8 = v2;
    v9 = *(v2 + 48);
    result = (*(*v9 + 304))(v12);
    if (__OFADD__(*v10, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v10;
      v11 = (result)(v12, 0);
      if ((*(*v9 + 288))(v11) <= 1)
      {
        (*(*v8 + 344))(1, 0, 0, 0, 2.0);
        return 7;
      }

      else
      {
        return 13;
      }
    }

    return result;
  }

  if (__PAIR128__(-128, 8) < __PAIR128__(a2, a1))
  {
    if (__PAIR128__(((a1 >= 0xA) + a2 + 127), a1 - 10) >= 2)
    {
      return 10;
    }

    goto LABEL_29;
  }

  if (a2 == 128 && a1 == 6)
  {
    return 11;
  }

  if (a2 == 128 && a1 == 7)
  {
    return 16;
  }

  else
  {
    return 17;
  }
}

uint64_t sub_261340E08(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v61 - v14;
  if (v2[17])
  {
    v16 = v2[6];
    v17 = (*(*v16 + 456))(v13);
    v63 = a2;
    v18 = v17;
    v19 = (*(*v16 + 264))();
    v20 = v15;
    v21 = v3;
    v22 = v8;
    v23 = v12;
    v24 = a1;
    v26 = v25;
    LOBYTE(v25) = v18 & 1;
    a2 = v63;
    sub_2613965D4(v63, v25, v19, v26);
    a1 = v24;
    v12 = v23;
    v8 = v22;
    v3 = v21;
    v15 = v20;
  }

  if (*(a2 + 48) == 1)
  {
    v27 = v3[3];
    v28 = *(v27 + 64);
    v29 = *(v27 + 72);
    v30 = a2[1];
    v31 = v3[21] != 0;
    sub_26125A870(a1, v15, &qword_27FE9F280, &unk_2613A42B0);

    sub_2612B8198(v28, v29, v30, v31, v15, &v69);
    v68[3] = &type metadata for ReadCanceled;
    v68[4] = sub_261344C58();
    v32 = swift_allocObject();
    v68[0] = v32;
    v33 = v76;
    v32[7] = v75;
    v32[8] = v33;
    v32[9] = v77;
    v34 = v72;
    v32[3] = v71;
    v32[4] = v34;
    v35 = v74;
    v32[5] = v73;
    v32[6] = v35;
    v36 = v70;
    v32[1] = v69;
    v32[2] = v36;
    v37 = 13;
  }

  else
  {
    v38 = v3[3];
    v39 = *(v38 + 64);
    v40 = *(v38 + 72);
    v41 = a2[1];
    v42 = a2;
    v43 = *(v3[6] + 16);
    v44 = v42[5];
    v62 = v42[4];
    v63 = v39;
    v61 = v3[21];
    sub_26125A870(a1, v12, &qword_27FE9F280, &unk_2613A42B0);
    ErrorEventData = type metadata accessor for ReadErrorEventData(0);
    sub_26125A870(v42 + *(ErrorEventData + 36), v8, &qword_27FE9F340, &unk_2613A4B40);
    v46 = type metadata accessor for TransactionData(0);
    if ((*(*(v46 - 8) + 48))(v8, 1, v46) == 1)
    {

      v47 = v43;

      sub_26124C718(v8, &qword_27FE9F340, &unk_2613A4B40);
      v48 = 0;
      v49 = 0;
    }

    else
    {
      v50 = &v8[*(v46 + 20)];
      v48 = *v50;
      v49 = v50[1];

      v51 = v43;

      sub_261345C6C(v8, type metadata accessor for TransactionData);
    }

    sub_2612B7948(v63, v40, v41, v43, v62, v44, v61 != 0, v12, &v69, v48, v49);
    v66 = &type metadata for ReadFailed;
    v67 = sub_261344C04();
    v52 = swift_allocObject();
    *&v65 = v52;
    v53 = v78;
    v52[9] = v77;
    v52[10] = v53;
    v52[11] = v79;
    v54 = v74;
    v52[5] = v73;
    v52[6] = v54;
    v55 = v76;
    v52[7] = v75;
    v52[8] = v55;
    v56 = v70;
    v52[1] = v69;
    v52[2] = v56;
    v57 = v72;
    v52[3] = v71;
    v52[4] = v57;
    sub_26124A200(&v65, v68);
    v37 = 12;
  }

  sub_2612B5A20(v68, v64);
  sub_2612B64A4(v37, v64, &v65);
  v58 = v3[15];
  v59 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v58);
  (*(v59 + 120))(&v65, v58, v59);
  sub_2612A0E50(&v65);
  return __swift_destroy_boxed_opaque_existential_0Tm(v68);
}

uint64_t sub_261341328(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v197 = a3;
  v207 = a2;
  v208 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  MEMORY[0x28223BE20](v7 - 8);
  v191 = &v171 - v8;
  v190 = sub_26139F95C();
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v180 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ErrorEventData = type metadata accessor for ReadErrorEventData(0);
  MEMORY[0x28223BE20](ErrorEventData - 8);
  v178 = (&v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v195 = sub_26139F64C();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v193 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v179 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v187 = &v171 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v185 = &v171 - v19;
  MEMORY[0x28223BE20](v18);
  v209 = &v171 - v20;
  v214 = sub_26139F1CC();
  v216 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v211 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F338, &unk_2613A4630);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v188 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v186 = &v171 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v204 = &v171 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v182 = &v171 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v201 = &v171 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v212 = &v171 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v171 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B8, &qword_2613A4828);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v206 = &v171 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v215 = &v171 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v171 - v42;
  v44 = type metadata accessor for TransactionData(0);
  v45 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v44);
  v200 = &v171 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v171 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v171 - v51;
  v53 = v5[6];
  sub_261345CCC(a4, &v171 - v51, type metadata accessor for TransactionData);
  v54 = *(v45 + 56);
  v213 = v44;
  v177 = v45 + 56;
  v175 = v54;
  v54(v52, 0, 1, v44);
  v55 = *(*v53 + 61);
  v176 = v52;
  v55(v52);
  (*(*v53 + 64))(0, 252);
  v56 = v5[3];
  v57 = *(v56 + 64);
  v58 = *(v56 + 72);
  v199 = v56;
  v59 = a4;
  v60 = a4;
  v61 = v5;
  sub_261345CCC(v59, v49, type metadata accessor for TransactionData);
  v62 = v5[21] != 0;
  sub_26125A870(v208, v43, &qword_27FE9F280, &unk_2613A42B0);

  v63 = v207;

  sub_2612B714C(v57, v58, v63, v53, v49, v62, v43, v221);
  v218 = &type metadata for ReadCompleted;
  v219 = sub_261344AA4();
  v64 = swift_allocObject();
  v65 = v221[7];
  v66 = v221[8];
  v67 = v221[5];
  v64[7] = v221[6];
  v64[8] = v65;
  v68 = v221[9];
  v64[9] = v66;
  v64[10] = v68;
  v69 = v221[3];
  v70 = v221[4];
  v64[3] = v221[2];
  v64[4] = v69;
  *&v217 = v64;
  v64[5] = v70;
  v64[6] = v67;
  v71 = v221[1];
  v64[1] = v221[0];
  v64[2] = v71;
  sub_2612B64A4(11, &v217, v220);
  v72 = v61[15];
  v73 = v61[16];
  __swift_project_boxed_opaque_existential_1(v61 + 12, v72);
  (*(v73 + 120))(v220, v72, v73);
  v74 = v61[17];
  if (v74)
  {
    v75 = v53[2];
    sub_261396250(v60, v75);
  }

  v181 = v74;
  v205 = v61[11];
  [v205 updateWithTransactionEvent_];
  v76 = *(*v61 + 432);
  v210 = v60;
  v77 = v76(v60);
  v78 = (*v53 + 216);
  v184 = *v78;
  v183 = v78;
  v184(v77);
  v79 = v216;
  v80 = v214;
  v203 = *(v216 + 48);
  if (v203(v36, 1, v214))
  {
    sub_26124C718(v36, &qword_27FE9F338, &unk_2613A4630);
    v81 = sub_26139F19C();
    v82 = v206;
    (*(*(v81 - 8) + 56))(v206, 1, 1, v81);
    v83 = v212;
  }

  else
  {
    v84 = v211;
    (*(v79 + 16))(v211, v36, v80);
    sub_26124C718(v36, &qword_27FE9F338, &unk_2613A4630);
    v82 = v206;
    sub_26139F1AC();
    v196 = *(v79 + 8);
    v196(v84, v80);
    v81 = sub_26139F19C();
    v85 = *(v81 - 8);
    v86 = (*(v85 + 48))(v82, 1, v81);
    v83 = v212;
    if (v86 != 1)
    {
      v87 = v215;
      (*(v85 + 32))(v215, v82, v81);
      (*(v85 + 56))(v87, 0, 1, v81);
      goto LABEL_9;
    }
  }

  v87 = v215;
  v88 = v211;
  sub_26139F1BC();
  sub_26139F1AC();
  v196 = *(v216 + 8);
  v196(v88, v80);
  sub_26139F19C();
  if ((*(*(v81 - 8) + 48))(v82, 1, v81) != 1)
  {
    sub_26124C718(v82, &qword_27FE9F3B8, &qword_2613A4828);
  }

LABEL_9:
  v89 = v210;
  v90 = v209;
  sub_26139F7CC();
  v91 = v213;
  sub_26139F79C();
  v192 = sub_26129B5FC();
  sub_26125A870(v192, v90, &qword_27FE9F560, &qword_2613A3CB0);
  v92 = sub_2613A124C();
  v202 = *(v92 - 8);
  v94 = v202 + 48;
  v93 = *(v202 + 48);
  v206 = v92;
  v198 = v93;
  if ((v93)(v90, 1) == 1)
  {
    sub_26124C718(v90, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v174 = v94;
    v95 = v83;
    v96 = v83;
    v97 = v201;
    sub_26125A870(v96, v201, &qword_27FE9F338, &unk_2613A4630);
    v98 = v200;
    sub_261345CCC(v89, v200, type metadata accessor for TransactionData);
    v99 = sub_2613A122C();
    v100 = sub_2613A1D9C();
    if (os_log_type_enabled(v99, v100))
    {
      v173 = v100;
      v101 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      *&v217 = v172;
      *v101 = 136315395;
      v102 = v182;
      sub_26125A870(v97, v182, &qword_27FE9F338, &unk_2613A4630);
      v103 = v214;
      if (v203(v102, 1, v214) == 1)
      {
        sub_26124C718(v102, &qword_27FE9F338, &unk_2613A4630);
        v104 = 0;
        v105 = 0xE000000000000000;
      }

      else
      {
        v106 = v102;
        v104 = sub_26139F15C();
        v105 = v107;
        v196(v106, v103);
      }

      v108 = v200;
      sub_26124C718(v201, &qword_27FE9F338, &unk_2613A4630);
      v109 = sub_26124C11C(v104, v105, &v217);

      *(v101 + 4) = v109;
      *(v101 + 12) = 2081;
      v110 = (v108 + v213[27]);
      v111 = *v110;
      v112 = v110[1];

      sub_261345C6C(v108, type metadata accessor for TransactionData);
      v113 = sub_26124C11C(v111, v112, &v217);

      *(v101 + 14) = v113;
      _os_log_impl(&dword_261243000, v99, v173, "resolved card preferred locale:%s from %{private}s", v101, 0x16u);
      v114 = v172;
      swift_arrayDestroy();
      MEMORY[0x266701350](v114, -1, -1);
      MEMORY[0x266701350](v101, -1, -1);

      v83 = v212;
      v89 = v210;
      v90 = v209;
    }

    else
    {

      sub_261345C6C(v98, type metadata accessor for TransactionData);
      sub_26124C718(v97, &qword_27FE9F338, &unk_2613A4630);
      v83 = v95;
    }

    (*(v202 + 8))(v90, v206);
    v87 = v215;
    v91 = v213;
  }

  v115 = v204;
  sub_26125A870(v83, v204, &qword_27FE9F338, &unk_2613A4630);
  v116 = (*(*v53 + 31))(v115);
  if (*(v89 + v91[18]) != 1)
  {
    if (((*(*v53 + 78))(v116) & 1) != 0 && (v132 = (*(*v61 + 440))(v89, v197), (v133 & 1) == 0))
    {
      v149 = v53[2];
      v150 = v132;
      v151 = v176;
      sub_261345CCC(v89, v176, type metadata accessor for TransactionData);
      v175(v151, 0, 1, v91);
      v152 = v207;

      v153 = v149;
      v154 = v178;
      sub_2612B5C88(v153, v152, v150, v151, v178);
      (*(*v53 + 67))(v150, 0);
      sub_261340E08(v208, v154);
      [v205 updateWithTransactionEvent_];
      sub_261345C6C(v154, type metadata accessor for ReadErrorEventData);
    }

    else
    {
      v134 = (v61[9])(3);
      if (((*(*v53 + 54))(v134) & 1) == 0)
      {
        v135 = v193;
        sub_26139F5EC();
        sub_26139F5DC();
        (*(v194 + 8))(v135, v195);
      }

      v136 = [v205 updateWithTransactionEvent_];
      v137 = v191;
      (*(*v199 + 136))(v136);
      v138 = v189;
      v139 = v190;
      v140 = (*(v189 + 48))(v137, 1, v190);
      v141 = v206;
      if (v140 == 1)
      {
        sub_26124C718(v87, &qword_27FE9F3B8, &qword_2613A4828);
        sub_2612A0E50(v220);
        sub_26124C718(v137, &qword_27FEA04F8, &qword_2613AC6F0);
        return sub_26124C718(v83, &qword_27FE9F338, &unk_2613A4630);
      }

      v145 = v180;
      (*(v138 + 32))(v180, v137, v139);
      v146 = sub_26139F94C();
      (*(v138 + 8))(v145, v139);
      if (v146)
      {
        v147 = v179;
        sub_26125A870(v192, v179, &qword_27FE9F560, &qword_2613A3CB0);
        if (v198(v147, 1, v141) == 1)
        {
          v148 = sub_26124C718(v147, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v167 = sub_2613A122C();
          v168 = sub_2613A1D9C();
          if (os_log_type_enabled(v167, v168))
          {
            v169 = swift_slowAlloc();
            *v169 = 0;
            _os_log_impl(&dword_261243000, v167, v168, "[TransactionTask] returning data early", v169, 2u);
            MEMORY[0x266701350](v169, -1, -1);
          }

          v148 = (*(v202 + 8))(v179, v141);
        }

        goto LABEL_55;
      }
    }

LABEL_56:
    sub_26124C718(v87, &qword_27FE9F3B8, &qword_2613A4828);
    sub_2612A0E50(v220);
    return sub_26124C718(v83, &qword_27FE9F338, &unk_2613A4630);
  }

  v117 = v61[9];
  v117(3);
  if (*(v89 + v91[19]) != 1)
  {
    v142 = v192;
    v143 = v185;
    sub_26125A870(v192, v185, &qword_27FE9F560, &qword_2613A3CB0);
    v144 = v206;
    if (v198(v143, 1, v206) == 1)
    {
      sub_26124C718(v143, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v155 = sub_2613A122C();
      v156 = sub_2613A1D8C();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        *v157 = 0;
        _os_log_impl(&dword_261243000, v155, v156, "[TransactionTask] PIN requested but not supported", v157, 2u);
        v158 = v157;
        v142 = v192;
        MEMORY[0x266701350](v158, -1, -1);
      }

      (*(v202 + 8))(v143, v144);
    }

    (*(*v53 + 67))(31, 0);
    [v205 updateWithTransactionEvent_];
    v159 = v187;
    sub_26125A870(v142, v187, &qword_27FE9F560, &qword_2613A3CB0);
    if (v198(v159, 1, v144) == 1)
    {
      v148 = sub_26124C718(v159, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v160 = sub_2613A122C();
      v161 = sub_2613A1D9C();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        *v162 = 0;
        _os_log_impl(&dword_261243000, v160, v161, "[TransactionTask] PIN required but has error, returning", v162, 2u);
        MEMORY[0x266701350](v162, -1, -1);
      }

      v148 = (*(v202 + 8))(v159, v144);
    }

LABEL_55:
    (*(*v61 + 328))(v148);
    goto LABEL_56;
  }

  v117(7);
  v118 = v193;
  sub_26139F4AC();
  sub_26139F5DC();
  v119 = (*(v194 + 8))(v118, v195);
  v120 = (*(*v197 + 184))(v119);
  type metadata accessor for Mock();
  v121 = sub_26129B284(22);
  if (v121)
  {
    v122 = v121;
  }

  else
  {
    v122 = v120;
  }

  v213 = v122;
  type metadata accessor for PINHelper();
  sub_2612B5A20((v61 + 12), &v217);
  v123 = v181;

  v61[19] = sub_261324938(v124, &v217, v123);

  if (v203(v83, 1, v214) != 1)
  {
    v125 = sub_2613A053C();
    (*(*v53 + 34))(v125);
  }

  v210 = *(v89 + v91[29]);
  sub_2613A121C();

  sub_2613A115C();

  v127 = v186;
  v184(v126);
  v128 = v214;
  v129 = v203(v127, 1, v214);
  v130 = v188;
  if (v129)
  {
    v131 = sub_26124C718(v127, &qword_27FE9F338, &unk_2613A4630);
  }

  else
  {
    v163 = v211;
    (*(v216 + 16))(v211, v127, v128);
    sub_26124C718(v127, &qword_27FE9F338, &unk_2613A4630);
    sub_26139F15C();
    v130 = v188;
    v131 = (v196)(v163, v128);
  }

  (*(*v53 + 30))(v131);
  if (v203(v130, 1, v128))
  {
    sub_26124C718(v130, &qword_27FE9F338, &unk_2613A4630);
  }

  else
  {
    v164 = v211;
    (*(v216 + 16))(v211, v130, v128);
    sub_26124C718(v130, &qword_27FE9F338, &unk_2613A4630);
    sub_26139F15C();
    v196(v164, v128);
  }

  sub_261344AF8();
  sub_2613A1F2C();
  v165 = objc_allocWithZone(sub_26139FA7C());
  v166 = sub_26139FA6C();
  [v205 requiresCardPIN_];

  sub_26124C718(v215, &qword_27FE9F3B8, &qword_2613A4828);
  sub_2612A0E50(v220);
  v83 = v212;
  return sub_26124C718(v83, &qword_27FE9F338, &unk_2613A4630);
}

void sub_261342EC8(uint64_t a1)
{
  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    v2 = sub_26129B1A8(53);
    v4 = v3;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = *(v43 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3F8, &unk_2613A9AF0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2613A4310;
      *(v7 + 32) = sub_26129B1A8(53);
      *(v7 + 40) = v8;
      goto LABEL_64;
    }
  }

  v9 = *(a1 + *(type metadata accessor for TransactionData(0) + 104));
  if (v9)
  {
    v48 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2613A221C())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2667005C0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (sub_26139F7DC() == 36864)
        {
          sub_2613A217C();
          sub_2613A21AC();
          sub_2613A21BC();
          sub_2613A218C();
        }

        else
        {
        }

        ++v11;
        if (v14 == i)
        {
          v15 = v48;
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

LABEL_26:
          if ((v15 & 0x4000000000000000) == 0)
          {
            v16 = *(v15 + 16);
            if (!v16)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

LABEL_62:
          v16 = sub_2613A221C();
          if (!v16)
          {
            goto LABEL_63;
          }

LABEL_28:
          v17 = 0;
          v41 = v15 + 32;
          v42 = v15 & 0xC000000000000001;
          v18 = MEMORY[0x277D84F90];
          v40 = v15;
LABEL_29:
          v44 = v18;
          while (1)
          {
            if (v42)
            {
              v19 = MEMORY[0x2667005C0](v17, v15);
            }

            else
            {
              if (v17 >= *(v15 + 16))
              {
                goto LABEL_61;
              }

              v19 = *(v41 + 8 * v17);
            }

            v46 = v19;
            v20 = __OFADD__(v17, 1);
            v21 = v17 + 1;
            if (v20)
            {
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            v22 = *(*(v43 + 48) + 16);
            v23 = sub_26139FC7C();

            v45 = v21;
            if (v23 >> 62)
            {
              v24 = sub_2613A221C();
              if (v24)
              {
LABEL_37:
                v25 = 0;
                v15 = v23 & 0xC000000000000001;
                while (1)
                {
                  if (v15)
                  {
                    v26 = MEMORY[0x2667005C0](v25, v23);
                  }

                  else
                  {
                    if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_59;
                    }

                    v26 = *(v23 + 8 * v25 + 32);
                  }

                  v27 = v26;
                  v28 = v25 + 1;
                  if (__OFADD__(v25, 1))
                  {
                    __break(1u);
LABEL_59:
                    __break(1u);
                    goto LABEL_60;
                  }

                  v29 = sub_26139FD7C();
                  v31 = v30;
                  if (v29 == sub_26139F7FC() && v31 == v32)
                  {
                    break;
                  }

                  v33 = sub_2613A241C();

                  if (v33)
                  {
                    goto LABEL_52;
                  }

                  ++v25;
                  if (v28 == v24)
                  {
                    goto LABEL_30;
                  }
                }

LABEL_52:

                v34 = sub_26139FD6C();
                v36 = v35;

                v18 = v44;
                v15 = v40;
                v17 = v45;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v18 = sub_2612DC724(0, *(v44 + 2) + 1, 1, v44);
                }

                v38 = *(v18 + 2);
                v37 = *(v18 + 3);
                if (v38 >= v37 >> 1)
                {
                  v18 = sub_2612DC724((v37 > 1), v38 + 1, 1, v18);
                }

                *(v18 + 2) = v38 + 1;
                v39 = &v18[16 * v38];
                *(v39 + 4) = v34;
                *(v39 + 5) = v36;
                if (v45 == v16)
                {
LABEL_63:

                  v6 = *(v43 + 88);
LABEL_64:
                  v47 = sub_2613A1B6C();

                  [v6 vasReadSuccessWithMerchantNames_];

                  return;
                }

                goto LABEL_29;
              }
            }

            else
            {
              v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v24)
              {
                goto LABEL_37;
              }
            }

LABEL_30:

            v15 = v40;
            v17 = v45;
            if (v45 == v16)
            {
              goto LABEL_63;
            }
          }
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v15 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }
}

uint64_t sub_261343390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = *(v3 + 120);
  v13 = *(v3 + 128);
  __swift_project_boxed_opaque_existential_1((v3 + 96), v12);
  v14 = (*(v13 + 88))(*(a2 + 32), *(a2 + 40), a1, 0, v12, v13);
  if (v15 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2 || *(v14 + 16) == *(v14 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v16)
  {
    if (v14 == v14 >> 32)
    {
LABEL_11:
      sub_26124A168(v14, v15);
LABEL_12:
      v22 = sub_26129B5FC();
      sub_26125A870(v22, v9, &qword_27FE9F560, &qword_2613A3CB0);
      v23 = sub_2613A124C();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v9, 1, v23) == 1)
      {
        sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v25 = sub_2613A122C();
        v26 = sub_2613A1D9C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_261243000, v25, v26, "[TransactionTask] cardBlob failed", v27, 2u);
          MEMORY[0x266701350](v27, -1, -1);
        }

        (*(v24 + 8))(v9, v23);
      }

      return 25;
    }
  }

  else if ((v15 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v15;
  v19 = sub_26129B5FC();
  sub_26125A870(v19, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v11, 1, v20) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v29 = sub_2613A122C();
    v30 = sub_2613A1D9C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261243000, v29, v30, "[TransactionTask] cardBlob encrypted", v31, 2u);
      MEMORY[0x266701350](v31, -1, -1);
    }

    (*(v21 + 8))(v11, v20);
  }

  v32 = *(**(v3 + 48) + 560);
  sub_26125C348(v17, v18);
  v32(v17, v18);
  sub_26124A168(v17, v18);
  return 0;
}

uint64_t sub_261343780(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_26139F13C();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 136))
  {
    v12 = *(*(v3 + 48) + 16);
    sub_26139FCEC();

    sub_2613978BC(v11, a1 & 1, a2, a3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_261343890(char a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  type metadata accessor for Mock();
  result = sub_26129B0F4(6);
  if (result & 1) != 0 && (result = sub_26129B0F4(43), (result) && v4 == -1)
  {
    v14 = sub_26129B5FC();
    sub_26125A870(v14, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v15 = sub_2613A124C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v12, 1, v15) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v18 = sub_2613A122C();
      v19 = sub_2613A1D9C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261243000, v18, v19, "[TransactionTask] tapped via prox sensor", v20, 2u);
        MEMORY[0x266701350](v20, -1, -1);
      }

      (*(v16 + 8))(v12, v15);
    }

    nullsub_1();
    v22 = v21;
    v24 = v23;
    v29 = &type metadata for ReaderActive;
    v30 = sub_261324794();
    *&v28 = v22;
    *(&v28 + 1) = v24;
    sub_2612B64A4(0, &v28, v31);
    v25 = v3[15];
    v26 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v25);
    (*(v26 + 120))(v31, v25, v26);
    return sub_2612A0E50(v31);
  }

  else if (v2[17])
  {
    v17 = *(v2[6] + 16);
    sub_26139FCEC();

    sub_261397B74(v9, a1 & 1, v4);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_261343BBC()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 152);
  if (v6)
  {
    type metadata accessor for PINMonitorEventBuilder();

    sub_2612BAC20(0);
    v7 = *(*(v0 + 48) + 16);
    sub_26139FCEC();

    v8 = sub_26139F0FC();
    v10 = v9;
    (*(v2 + 8))(v5, v1);
    sub_2612BAC6C(4u, v8, v10);

    v11 = sub_2613A039C();
    v13 = sub_2612BAC6C(6u, v11, v12);

    (*(*v6 + 176))(v13);
  }

  return result;
}

uint64_t sub_261343D70(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v65 = sub_26139F95C();
  v16 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26139F13C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v4 + 152);
  if (v23)
  {
    v60 = v16;
    v61 = v12;
    v64 = v4;
    v24 = *(v4 + 48);
    v25 = a1;
    v26 = v24[2];
    v59 = v20;

    v27 = v26;
    sub_26139FCEC();

    v28 = (*(*v24 + 264))();
    v29 = v15;
    v30 = a3;
    v32 = v31;
    v33 = sub_2613A027C();
    v34 = v30;
    v15 = v29;
    v35 = v28;
    v4 = v64;
    v12 = v61;
    (*(*v23 + 160))(v22, 1, a2, v34, v35, v32, v33 & 1);
    a1 = v25;
    v16 = v60;

    (*(v19 + 8))(v22, v59);
  }

  v36 = a1;
  v37 = (*(**(v4 + 48) + 496))(v66);
  v39 = v38;
  v40 = type metadata accessor for TransactionData(0);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    v41 = *(v40 + 96);
    v42 = *(v39 + v41);
    *(v39 + v41) = v36;
    v43 = v36;
  }

  v44 = v37(v66, 0);
  (*(**(v4 + 24) + 136))(v44);
  v45 = v65;
  if ((*(v16 + 48))(v15, 1, v65) == 1)
  {
    return sub_26124C718(v15, &qword_27FEA04F8, &qword_2613AC6F0);
  }

  v47 = v63;
  (*(v16 + 32))(v63, v15, v45);
  v48 = sub_26139F94C();
  result = (*(v16 + 8))(v47, v45);
  if (v48)
  {
    v49 = sub_26129B5FC();
    sub_26125A870(v49, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v50 = sub_2613A124C();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v12, 1, v50) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v52 = sub_2613A122C();
      v53 = sub_2613A1D9C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_261243000, v52, v53, "[TransactionTask] returning data+PIN early", v54, 2u);
        MEMORY[0x266701350](v54, -1, -1);
      }

      (*(v51 + 8))(v12, v50);
    }

    v55 = sub_2613A1C1C();
    v56 = v62;
    (*(*(v55 - 8) + 56))(v62, 1, 1, v55);
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v57[4] = v4;

    sub_261266800(0, 0, v56, &unk_2613ACDA8, v57);
  }

  return result;
}

uint64_t sub_2613443F4()
{
  (*(**(v0 + 16) + 328))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26134447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 152);
  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = v13[2];

    v15 = v14;
    sub_26139FCEC();

    v16 = (*(*v13 + 264))();
    (*(*v12 + 168))(v11, a1, 1, a2, a3, v16, v17);

    (*(v9 + 8))(v11, v8);
  }

  return (*(**(v4 + 48) + 536))(a1, 0);
}

uint64_t sub_261344654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F338, &unk_2613A4630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2613446C4()
{
  result = qword_27FEA06F8;
  if (!qword_27FEA06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA06F8);
  }

  return result;
}

uint64_t sub_261344718()
{
  v2 = *(type metadata accessor for TransactionData(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_261265144;

  return sub_26133AC98(v9, v10, v11, v5, v6, v0 + v3, v7, v8);
}

unint64_t sub_26134483C()
{
  result = qword_27FEA0700;
  if (!qword_27FEA0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0700);
  }

  return result;
}

uint64_t sub_261344890(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26133E934(a1);
  }

  return result;
}

uint64_t sub_2613448EC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 57);
  v7 = *(v0 + 58);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_261265144;

  return sub_26133C3C0(v3, v8, v9, v10, v2, v4, v5, v6, v7);
}

uint64_t sub_2613449EC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261262AA4;

  return sub_2613443D4(v3, v4, v5, v2);
}

unint64_t sub_261344AA4()
{
  result = qword_27FEA0708;
  if (!qword_27FEA0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0708);
  }

  return result;
}

unint64_t sub_261344AF8()
{
  result = qword_27FE9FE70;
  if (!qword_27FE9FE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9FE70);
  }

  return result;
}

uint64_t sub_261344B44()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 16) & 1) == 0)
  {
    [*(*(v0 + 24) + 88) updateWithTransactionEvent_];
  }

  result = swift_beginAccess();
  *(v1 + 16) = 1;
  return result;
}

unint64_t sub_261344C04()
{
  result = qword_27FEA0710;
  if (!qword_27FEA0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0710);
  }

  return result;
}

unint64_t sub_261344C58()
{
  result = qword_27FEA0718;
  if (!qword_27FEA0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0718);
  }

  return result;
}

unint64_t sub_261344CAC()
{
  result = qword_27FEA0720;
  if (!qword_27FEA0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0720);
  }

  return result;
}

uint64_t sub_261344D00(uint64_t a1)
{
  v2[86] = v1;
  v2[85] = a1;
  v2[87] = type metadata accessor for TransactionData(0);
  v2[88] = swift_task_alloc();
  type metadata accessor for StoreAndForwardReadResult(0);
  v2[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261344DC4, 0, 0);
}

uint64_t sub_261344DC4()
{
  v0[90] = type metadata accessor for StoreAndForwardManager();
  v0[91] = sub_261269430();
  v0[92] = 0;
  v1 = v0[86];
  v37 = (*(**(v1 + 48) + 552))();
  v0[93] = v37;
  v0[94] = v2;
  v3 = *(v1 + 24);
  v0[95] = v3;
  if (v2 >> 60 == 15)
  {
    v4 = v0[86];
    v5 = v3[10];
    v6 = v3[11];

    sub_26126B07C(v5, v6, (v0 + 20));

    type metadata accessor for SafMonitorEventDispatcher();
    v7 = swift_task_alloc();
    v0[105] = v7;
    *v7 = v0;
    v7[1] = sub_26134594C;
    v8 = v0[85];

    return sub_26129F3A0(v4 + 96, (v0 + 20), v8, 2, 2);
  }

  else
  {
    v9 = v2;
    v10 = v0[87];
    v11 = v0[86];
    v12 = v0[85];
    v13 = v3[9];
    v35 = v3[8];
    v15 = v11[15];
    v14 = v11[16];
    __swift_project_boxed_opaque_existential_1(v11 + 12, v15);
    v16 = (v12 + *(v10 + 44));
    v31 = v16[1];
    v32 = *v16;
    v33 = *(v14 + 104);

    v17 = v33(v37, v9, v32, v31, v12, v35, v13, v15, v14);
    v0[96] = 0;
    v0[97] = v17;
    v0[98] = v18;
    v0[99] = v19;
    v0[100] = v20;
    v22 = v17;
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v36 = v0[89];
    v26 = v0[88];
    v27 = v0[85];

    v28 = v3[11];
    v34 = v3[10];
    sub_261345CCC(v27, v26, type metadata accessor for TransactionData);

    sub_26125C348(v37, v9);
    sub_26124C778(v22, v23);
    sub_26124C778(v24, v25);
    sub_2612A868C(v34, v28, v37, v9, v26, v22, v23, v24, v36, v25);
    v29 = swift_task_alloc();
    v0[101] = v29;
    *v29 = v0;
    v29[1] = sub_261345298;
    v30 = v0[89];

    return sub_26126D92C(v30);
  }
}

uint64_t sub_261345298(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 656) = a2;
  *(v3 + 648) = a1;
  *(v3 + 640) = v2;
  *(v3 + 153) = a2;

  return MEMORY[0x2822009F8](sub_2613453A4, 0, 0);
}

uint64_t sub_2613453A4()
{
  if (*(v0 + 153) == 255)
  {
    v10 = *(v0 + 800);
    v11 = *(v0 + 792);
    v12 = *(v0 + 784);
    v13 = *(v0 + 776);
    v14 = *(v0 + 752);
    v15 = *(v0 + 744);
    sub_261345C6C(*(v0 + 712), type metadata accessor for StoreAndForwardReadResult);
    sub_26124C6C4(v13, v12);
    sub_26124C6C4(v11, v10);
    sub_26124A168(v15, v14);

    v16 = *(v0 + 8);

    return v16(0, 1);
  }

  else
  {
    v1 = *(v0 + 648);
    v2 = *(v0 + 760);
    v3 = *(v0 + 688);
    *(v0 + 824) = v1;
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);

    sub_26126B07C(v4, v5, v0 + 304);

    type metadata accessor for SafMonitorEventDispatcher();
    v6 = swift_task_alloc();
    *(v0 + 832) = v6;
    *v6 = v0;
    v6[1] = sub_261345728;
    v7 = *(v0 + 680);
    v8 = *(v0 + 153);

    return sub_26129F3A0(v3 + 96, v0 + 304, v7, v1, v8);
  }
}

uint64_t sub_261345570()
{
  v1 = *v0;

  sub_26124C718(v1 + 448, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_261345684, 0, 0);
}

uint64_t sub_261345684()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);

  sub_26124A168(v2, v1);

  v3 = *(v0 + 8);

  return v3(36, 0);
}

uint64_t sub_261345728()
{
  v1 = *v0;

  sub_26124C718(v1 + 304, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_26134583C, 0, 0);
}

uint64_t sub_26134583C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 712);
  v8 = sub_261272A24(*(v0 + 824), *(v0 + 153));

  sub_26124C6C4(v4, v3);
  sub_26124C6C4(v2, v1);
  sub_26124A168(v6, v5);
  sub_261345C6C(v7, type metadata accessor for StoreAndForwardReadResult);

  v9 = *(v0 + 8);

  return v9(v8, 0);
}

uint64_t sub_26134594C()
{
  v1 = *v0;

  sub_26124C718(v1 + 160, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_261345A60, 0, 0);
}

uint64_t sub_261345A60()
{

  v1 = *(v0 + 8);

  return v1(25, 0);
}

uint64_t sub_261345ADC()
{
  v1 = *v0;

  sub_26124C718(v1 + 16, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_261345BF0, 0, 0);
}

uint64_t sub_261345BF0()
{

  v1 = *(v0 + 8);

  return v1(37, 0);
}

uint64_t sub_261345C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261345CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_261345D90()
{
  result = qword_27FEA0728;
  if (!qword_27FEA0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0728);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_261345E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261345EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = swift_allocObject();
  sub_261345F0C(a1, a2, a3, v4);
  return v8;
}

uint64_t sub_261345F0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = 0;
  v9 = *(**sub_2612C11DC() + 112);

  v9(v10);

  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 96) = 0;
  return v4;
}

uint64_t sub_261345FAC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_2613A1C1C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_261266800(0, 0, v7, &unk_2613ACE50, v9);
}

uint64_t sub_2613460D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613461A0, 0, 0);
}

uint64_t sub_2613461A0()
{
  v1 = *(v0 + 64);
  type metadata accessor for MerchantService();
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_261346264;

  return sub_26129616C(v0 + 16, v2, v3, v4);
}

uint64_t sub_261346264()
{
  v1 = *v0;

  *(v1 + 136) = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_261346380, 0, 0);
}

uint64_t sub_261346380()
{
  v66 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (*(v0 + 56))
  {
    v4 = *(v0 + 48);
    v63 = *(v0 + 40);
    v5 = *(v0 + 88);
    v6 = (*(v0 + 33) << 8) | ((*(v0 + 37) | (*(v0 + 39) << 16)) << 40);
    v7 = sub_26129B5FC();
    sub_26125A870(v7, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_26124C718(*(v0 + 88), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v64 = v1;

      v15 = sub_2613A122C();
      v16 = sub_2613A1D8C();

      if (os_log_type_enabled(v15, v16))
      {
        v62 = v2;
        v2 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v65 = v61;
        *v2 = 136315394;
        *(v2 + 4) = sub_26124C11C(v64, v6 | v3, &v65);
        *(v2 + 12) = 2080;
        *(v2 + 14) = sub_26124C11C(v63, v4, &v65);
        _os_log_impl(&dword_261243000, v15, v16, "Check Merchant <-- ERROR %s - %s", v2, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266701350](v61, -1, -1);
        v17 = v2;
        LOBYTE(v2) = v62;
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v9 + 8))(*(v0 + 88), v8);
      v1 = v64;
    }

    v18 = *(v0 + 72);
    v19 = sub_261349180(v2, v1, v6 | v3);
    goto LABEL_33;
  }

  if (*(*(v0 + 64) + 48) != 1)
  {
    if (v2 == sub_2613A0F1C() && v1 == v20)
    {
    }

    else
    {
      v22 = sub_2613A241C();

      if ((v22 & 1) == 0)
      {
        v23 = *(v0 + 96);
        v24 = sub_26129B5FC();
        sub_26125A870(v24, v23, &qword_27FE9F560, &qword_2613A3CB0);
        v12 = sub_2613A124C();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v23, 1, v12) == 1)
        {
          v14 = *(v0 + 96);
          goto LABEL_20;
        }

        v55 = sub_2613A122C();
        v56 = sub_2613A1D7C();
        sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v59 = v1;
          v60 = v58;
          v65 = v58;
          *v57 = 136315138;
          *(v57 + 4) = sub_26124C11C(v2, v59, &v65);
          _os_log_impl(&dword_261243000, v55, v56, "Check Merchant: success, %s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v60);
          MEMORY[0x266701350](v60, -1, -1);
          MEMORY[0x266701350](v57, -1, -1);
        }

        v54 = *(v0 + 96);
LABEL_43:
        (*(v13 + 8))(v54, v12);
        goto LABEL_44;
      }
    }

    v31 = *(v0 + 104);
    v32 = sub_26129B5FC();
    sub_26125A870(v32, v31, &qword_27FE9F560, &qword_2613A3CB0);
    v33 = sub_2613A124C();
    v34 = *(v33 - 8);
    v35 = (*(v34 + 48))(v31, 1, v33);
    v30 = *(v0 + 104);
    if (v35 != 1)
    {
      v40 = sub_2613A122C();
      v41 = sub_2613A1D8C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_261243000, v40, v41, "Check Merchant <-- ERROR Merchant already registered", v42, 2u);
        MEMORY[0x266701350](v42, -1, -1);
      }

      v43 = *(v0 + 104);

      (*(v34 + 8))(v43, v33);
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  if (v3 == 2 || (v3 & 1) == 0)
  {
    v25 = *(v0 + 112);
    v26 = sub_26129B5FC();
    sub_26125A870(v26, v25, &qword_27FE9F560, &qword_2613A3CB0);
    v27 = sub_2613A124C();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 48))(v25, 1, v27);
    v30 = *(v0 + 112);
    if (v29 != 1)
    {
      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "Check Merchant <-- ERROR not allowed to relink", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      v39 = *(v0 + 112);

      (*(v28 + 8))(v39, v27);
      goto LABEL_32;
    }

LABEL_25:
    sub_26124C718(v30, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_32:
    v18 = *(v0 + 72);
    v44 = objc_allocWithZone(sub_26139F2CC());
    v19 = sub_26139F2DC();
LABEL_33:
    v45 = v19;
    v18(0, v19);
    sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);

    goto LABEL_34;
  }

  v10 = *(v0 + 120);
  v11 = sub_26129B5FC();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {

    v48 = sub_2613A122C();
    v49 = sub_2613A1D7C();
    sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v1;
      v53 = v51;
      v65 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_26124C11C(v2, v52, &v65);
      _os_log_impl(&dword_261243000, v48, v49, "Check Merchant: success, %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x266701350](v53, -1, -1);
      MEMORY[0x266701350](v50, -1, -1);
    }

    v54 = *(v0 + 120);
    goto LABEL_43;
  }

  v14 = *(v0 + 120);
LABEL_20:
  sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_44:
  (*(v0 + 72))(1, 0);
  sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);
LABEL_34:

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_261346C7C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2613460D0(v5, v6, v7, v2, v3, v4);
}

void sub_261346D24(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v14 = sub_2612F6894(*(v2 + 32), *(v2 + 40), v8, v9, v10, v11, v12, v13, v26);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = sub_2613487FC();
    if (!v19)
    {
LABEL_8:
      v22 = sub_2613A1C1C();
      (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v2;
      v23[5] = a1;
      v23[6] = a2;
      v23[7] = v16;
      v23[8] = v17;

      sub_261266800(0, 0, v7, &unk_2613ACE60, v23);

      return;
    }

    if (v18 == v16 && v19 == v17)
    {
    }

    else
    {
      v21 = sub_2613A241C();

      if ((v21 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    a1(1, 0);
  }

  else
  {
    v24 = objc_allocWithZone(sub_26139F2CC());
    v27 = sub_26139F2DC();
    a1(0, v27);
    v25 = v27;
  }
}

uint64_t sub_261346F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x2822009F8](sub_261346F60, 0, 0);
}

uint64_t sub_261346F60()
{
  v1 = *(v0 + 64);
  type metadata accessor for MerchantService();
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_261347024;

  return sub_26129616C(v0 + 16, v2, v3, v4);
}

uint64_t sub_261347024()
{

  return MEMORY[0x2822009F8](sub_261347120, 0, 0);
}

uint64_t sub_261347120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((*(v0 + 56) & 1) == 0)
  {
    v7 = (*(v0 + 17) << 8) | ((*(v0 + 21) | (*(v0 + 23) << 16)) << 40) | v1;
    if (v7 == sub_2613A0F1C() && v2 == v8)
    {
    }

    else
    {
      v10 = sub_2613A241C();

      if ((v10 & 1) == 0)
      {
        (*(v0 + 72))(0, 0);
LABEL_13:
        sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);
        goto LABEL_14;
      }
    }

    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 64);
    (*(v0 + 72))(1, 0);
    (*(*v13 + 232))(v12, v11);
    goto LABEL_13;
  }

  v3 = sub_261349180(v1, *(v0 + 24), *(v0 + 32));
  sub_26139F2BC();

  v4 = sub_26139F2FC();
  if (v4 == sub_26139F2FC())
  {
    v5 = objc_allocWithZone(sub_26139F2CC());
    v6 = sub_26139F2DC();

    v3 = v6;
  }

  (*(v0 + 72))(0, v3);
  sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);

LABEL_14:
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26134731C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_2613A1C1C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v6;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;
  *(v16 + 64) = a4;
  *(v16 + 72) = a5;

  v17 = a1;

  sub_261266800(0, 0, v14, &unk_2613ACE70, v16);
}

uint64_t sub_26134746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = a7;
  *(v8 + 96) = v12;
  *(v8 + 57) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  v9 = sub_26139F64C();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261347590, 0, 0);
}

uint64_t sub_261347590()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 64);
  sub_26139F40C();
  sub_26139F5DC();
  v5 = *(v2 + 8);
  *(v0 + 152) = v5;
  *(v0 + 160) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  type metadata accessor for MerchantService();
  v6 = *(v4 + 24);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_26134768C;
  v8 = *(v0 + 57);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 72);

  return sub_261296A28(v0 + 16, v6, v11, v9, v10, v8);
}

uint64_t sub_26134768C()
{
  v1 = *v0;

  *(v1 + 176) = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_2613477A8, 0, 0);
}

uint64_t sub_2613477A8()
{
  v69 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 64);
  sub_26139F40C();
  sub_26139F5BC();
  v1(v2, v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v4 + 96);
  if (*(v0 + 56))
  {
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 104);
    *(v4 + 96) = 0;

    v12 = sub_26129B5FC();
    sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      sub_26124C718(*(v0 + 104), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v22 = sub_2613A122C();
      v23 = sub_2613A1D8C();

      if (os_log_type_enabled(v22, v23))
      {
        v67 = v6;
        v24 = swift_slowAlloc();
        v66 = v9;
        v25 = swift_slowAlloc();
        v68 = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_26124C11C(v67, v8, &v68);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_26124C11C(v66, v10, &v68);
        _os_log_impl(&dword_261243000, v22, v23, "Enrollment <-- ERROR %s - %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266701350](v25, -1, -1);
        MEMORY[0x266701350](v24, -1, -1);
      }

      (*(v14 + 8))(*(v0 + 104), v13);
    }

    v26 = *(v0 + 152);
    v27 = *(v0 + 144);
    v28 = *(v0 + 128);
    v29 = *(v0 + 96);
    sub_26139F4DC();
    sub_26139F5BC();
    v26(v27, v28);
    v30 = sub_2613A189C();
    [v29 notifyRegUIResultWithResult_];
    sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
  }

  else
  {
    v15 = *(v0 + 72);
    *(v4 + 96) = v15;
    v16 = v15;

    type metadata accessor for Mock();
    v17 = sub_26129B0F4(9);
    v18 = sub_26129B5FC();
    if (v17)
    {
      v19 = *(v0 + 120);
      sub_26125A870(v18, v19, &qword_27FE9F560, &qword_2613A3CB0);
      v20 = sub_2613A124C();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v19, 1, v20) == 1)
      {
        sub_26124C718(*(v0 + 120), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v34 = sub_2613A122C();
        v35 = sub_2613A1D7C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_261243000, v34, v35, "Relink: forcing error MMG-4501", v36, 2u);
          MEMORY[0x266701350](v36, -1, -1);
        }

        v37 = *(v0 + 120);

        (*(v21 + 8))(v37, v20);
      }

      v38 = *(v0 + 152);
      v39 = *(v0 + 144);
      v40 = *(v0 + 128);
      v41 = *(v0 + 96);
      sub_26139F4DC();
      sub_26139F5BC();
      v38(v39, v40);
      sub_2613A0EFC();
      v42 = sub_2613A189C();

      [v41 notifyRegUIResultWithResult_];
    }

    else
    {
      v31 = *(v0 + 112);
      sub_26125A870(v18, v31, &qword_27FE9F560, &qword_2613A3CB0);
      v32 = sub_2613A124C();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v31, 1, v32) == 1)
      {
        sub_26124C718(*(v0 + 112), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {

        v43 = sub_2613A122C();
        v44 = sub_2613A1D7C();
        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v68 = v46;
          *v45 = 136315138;
          *(v45 + 4) = sub_26124C11C(v5, v6, &v68);
          _os_log_impl(&dword_261243000, v43, v44, "Enrollment: success %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          MEMORY[0x266701350](v46, -1, -1);
          MEMORY[0x266701350](v45, -1, -1);
        }

        (*(v33 + 8))(*(v0 + 112), v32);
      }

      v47 = *(v0 + 152);
      v48 = *(v0 + 144);
      v49 = *(v0 + 128);
      v50 = *(v0 + 96);
      sub_26139F4DC();
      sub_26139F5BC();
      v47(v48, v49);
      v51 = sub_2613A189C();
      [v50 notifyRegUIResultWithResult_];

      v52 = sub_26139F68C();
      v60 = sub_2612F6894(v52, v53, v54, v55, v56, v57, v58, v59, v65);
      v62 = v61;

      if (v62)
      {
        (*(**(v0 + 64) + 232))(v60, v62);
        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);

        goto LABEL_23;
      }
    }

    sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
  }

LABEL_23:

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_261347EE4()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261347F98, 0, 0);
}

uint64_t sub_261347F98()
{
  v1 = v0[8];
  v2 = *(v1 + 96);
  v0[12] = v2;
  if (v2)
  {
    type metadata accessor for MerchantService();
    v3 = *(v1 + 24);
    v4 = v2;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_2613481F0;

    return sub_2612976AC((v0 + 2), v3, v4);
  }

  else
  {
    v7 = v0[9];
    v8 = sub_26129B5FC();
    sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_26124C718(v0[9], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v11 = sub_2613A122C();
      v12 = sub_2613A1D8C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_261243000, v11, v12, "Subscription: account info not available", v13, 2u);
        MEMORY[0x266701350](v13, -1, -1);
      }

      v14 = v0[9];

      (*(v10 + 8))(v14, v9);
    }

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2613481F0()
{
  v1 = *v0;

  *(v1 + 112) = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_26134830C, 0, 0);
}

uint64_t sub_26134830C()
{
  v36 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (*(v0 + 56))
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 80);
    v7 = sub_26129B5FC();
    sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) != 1)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      v18 = os_log_type_enabled(v16, v17);
      v33 = *(v0 + 96);
      if (v18)
      {
        v31 = v4;
        v19 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v35 = v32;
        *v19 = 136315394;

        v20 = sub_26124C11C(v1, v3, &v35);

        *(v19 + 4) = v20;
        *(v19 + 12) = 2080;

        v21 = sub_26124C11C(v31, v5, &v35);

        *(v19 + 14) = v21;
        _os_log_impl(&dword_261243000, v16, v17, "Subscription <-- ERROR %s - %s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266701350](v32, -1, -1);
        MEMORY[0x266701350](v19, -1, -1);

        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
      }

      else
      {

        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      (*(v9 + 8))(*(v0 + 80), v8);
      goto LABEL_15;
    }

    v10 = *(v0 + 96);
    v11 = *(v0 + 80);
  }

  else
  {
    v12 = *(v0 + 88);
    v13 = sub_26129B5FC();
    sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) != 1)
    {

      v22 = sub_2613A122C();
      v23 = sub_2613A1D7C();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 96);
      if (v24)
      {
        v34 = *(v0 + 96);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v35 = v27;
        *v26 = 136315138;
        v28 = sub_26124C11C(v2, v1, &v35);
        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
        *(v26 + 4) = v28;
        _os_log_impl(&dword_261243000, v22, v23, "Subscription: success %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x266701350](v27, -1, -1);
        MEMORY[0x266701350](v26, -1, -1);
      }

      else
      {

        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
      }

      sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
      (*(v15 + 8))(*(v0 + 88), v14);
      goto LABEL_15;
    }

    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
  }

  sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
  sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_15:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2613487FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D7C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261243000, v8, v9, "Retrieving accountLinked mid from cache", v10, 2u);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = [objc_opt_self() standardUserDefaults];
  strcpy(v21, "AccountLink-");
  BYTE13(v21[0]) = 0;
  HIWORD(v21[0]) = -5120;
  v12 = *(v1 + 24);
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);

  MEMORY[0x2666FFEA0](v13, v14);

  v15 = sub_2613A189C();

  v16 = [v11 objectForKey_];

  if (v16)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26124C718(v21, &qword_27FEA00C0, &unk_2613A44B0);
    return 0;
  }
}

uint64_t sub_261348AD8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_261262AA4;

  return sub_261346F38(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_261348B94()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_261265144;

  return sub_26134746C(v7, v8, v9, v2, v3, v4, v5, v6);
}

void sub_261348C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = sub_26129B5FC();
  sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "Caching accountLinked mid", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  v13 = [objc_opt_self() standardUserDefaults];
  v14 = sub_2613A189C();
  strcpy(v19, "AccountLink-");
  HIBYTE(v19[6]) = 0;
  v19[7] = -5120;
  v15 = *(v3 + 24);
  v16 = *(v15 + 32);
  v17 = *(v15 + 40);

  MEMORY[0x2666FFEA0](v16, v17);

  v18 = sub_2613A189C();

  [v13 setObject:v14 forKey:v18];
}

void sub_261348EC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D7C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261243000, v8, v9, "Clearing cached accountLinked mid", v10, 2u);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = [objc_opt_self() standardUserDefaults];
  strcpy(v16, "AccountLink-");
  HIBYTE(v16[6]) = 0;
  v16[7] = -5120;
  v12 = *(v1 + 24);
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);

  MEMORY[0x2666FFEA0](v13, v14);

  v15 = sub_2613A189C();

  [v11 removeObjectForKey_];
}

uint64_t sub_26134910C()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_261349180(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v103[2] = a3;
  v103[1] = a2;
  v4 = sub_26139FAAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v103 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v103 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v103 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v103 - v21;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v23 = sub_26129B5FC();
        sub_26125A870(v23, v20, &qword_27FE9F560, &qword_2613A3CB0);
        v24 = sub_2613A124C();
        v25 = *(v24 - 8);
        if ((*(v25 + 48))(v20, 1, v24) == 1)
        {
          sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v51 = sub_2613A122C();
          v52 = sub_2613A1D7C();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_261243000, v51, v52, "Check Merchant | unable to parse response", v53, 2u);
            MEMORY[0x266701350](v53, -1, -1);
          }

          (*(v25 + 8))(v20, v24);
        }
      }

      else
      {
        v38 = sub_26129B5FC();
        sub_26125A870(v38, v14, &qword_27FE9F560, &qword_2613A3CB0);
        v39 = sub_2613A124C();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v14, 1, v39) == 1)
        {
          sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v63 = sub_2613A122C();
          v64 = sub_2613A1D7C();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_261243000, v63, v64, "Check Merchant | not authorized", v65, 2u);
            MEMORY[0x266701350](v65, -1, -1);
          }

          (*(v40 + 8))(v14, v39);
        }
      }
    }

    else
    {
      v32 = sub_26129B5FC();
      sub_26125A870(v32, v22, &qword_27FE9F560, &qword_2613A3CB0);
      v33 = sub_2613A124C();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v22, 1, v33) == 1)
      {
        sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v45 = sub_2613A122C();
        v46 = sub_2613A1D7C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_261243000, v45, v46, "Check Merchant | internalError, secure channel failed", v47, 2u);
          MEMORY[0x266701350](v47, -1, -1);
        }

        (*(v34 + 8))(v22, v33);
      }
    }

    goto LABEL_37;
  }

  if (a1 == 3)
  {
    v35 = sub_26129B5FC();
    sub_26125A870(v35, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v36 = sub_2613A124C();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v17, 1, v36) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v48 = sub_2613A122C();
      v49 = sub_2613A1D7C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_261243000, v48, v49, "Check Merchant | server not reachable", v50, 2u);
        MEMORY[0x266701350](v50, -1, -1);
      }

      (*(v37 + 8))(v17, v36);
    }

    goto LABEL_37;
  }

  if (a1 != 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    v42 = sub_26139F2CC();
    *(inited + 32) = sub_26139F28C();
    *(inited + 40) = v43;
    (*(v5 + 104))(v7, *MEMORY[0x277D43838], v4);
    v44 = sub_26139FA9C();
    (*(v5 + 8))(v7, v4);
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = v44;
    sub_261259E78(inited);
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    objc_allocWithZone(v42);
    return sub_26139F2DC();
  }

  v26 = sub_2613A197C();
  v28 = v27;
  v29 = sub_26129B5FC();
  sub_26125A870(v29, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v30 = sub_2613A124C();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v11, 1, v30) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v54 = sub_2613A122C();
    v55 = sub_2613A1D7C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v26;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v104[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_26124C11C(v56, v28, v104);
      _os_log_impl(&dword_261243000, v54, v55, "Check Merchant | server error: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x266701350](v58, -1, -1);
      v59 = v57;
      v26 = v56;
      MEMORY[0x266701350](v59, -1, -1);
    }

    (*(v31 + 8))(v11, v30);
  }

  if (sub_2613A0F0C() == v26 && v60 == v28)
  {
    goto LABEL_31;
  }

  v61 = sub_2613A241C();

  if (v61)
  {
    goto LABEL_33;
  }

  if (sub_2613A0EAC() == v26 && v68 == v28)
  {
    goto LABEL_31;
  }

  v69 = sub_2613A241C();

  if (v69)
  {
    goto LABEL_33;
  }

  if (sub_2613A0E9C() == v26 && v70 == v28)
  {
    goto LABEL_31;
  }

  v71 = sub_2613A241C();

  if (v71)
  {
    goto LABEL_33;
  }

  if (sub_2613A0EBC() == v26 && v72 == v28)
  {
    goto LABEL_31;
  }

  v73 = sub_2613A241C();

  if (v73)
  {
    goto LABEL_33;
  }

  if (sub_2613A0EDC() == v26 && v74 == v28)
  {
    goto LABEL_31;
  }

  v75 = sub_2613A241C();

  if (v75)
  {
    goto LABEL_33;
  }

  if (sub_2613A0ECC() == v26 && v76 == v28)
  {
    goto LABEL_31;
  }

  v77 = sub_2613A241C();

  if (v77)
  {
    goto LABEL_33;
  }

  if (sub_2613A0E8C() == v26 && v78 == v28)
  {
LABEL_31:

LABEL_33:

    v62 = objc_allocWithZone(sub_26139F2CC());
    return sub_26139F2DC();
  }

  v79 = sub_2613A241C();

  if (v79)
  {
    goto LABEL_33;
  }

  if (sub_2613A0F2C() != v26 || v80 != v28)
  {
    v81 = sub_2613A241C();

    if (v81)
    {
      goto LABEL_65;
    }

    if (*(sub_2613A0EEC() + 16))
    {
      sub_26124E5EC(v26, v28);
      v92 = v91;

      if (v92)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
        v93 = swift_initStackObject();
        *(v93 + 16) = xmmword_2613A4310;
        v94 = sub_26139F2CC();
        *(v93 + 32) = sub_26139F27C();
        *(v93 + 40) = v95;
        v96 = sub_2613A0EEC();
        *(v93 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBA0, &qword_2613A9B30);
        if (*(v96 + 16))
        {
          v97 = sub_26124E5EC(v26, v28);
          v99 = v98;

          if (v99)
          {
            v100 = (*(v96 + 56) + 16 * v97);
            v102 = *v100;
            v101 = v100[1];

LABEL_78:
            *(v93 + 48) = v102;
            *(v93 + 56) = v101;
            sub_261259E78(v93);
            swift_setDeallocating();
            sub_26124C718(v93 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
            objc_allocWithZone(v94);
            return sub_26139F2DC();
          }
        }

        else
        {
        }

        v102 = 0;
        v101 = 0;
        goto LABEL_78;
      }
    }

    else
    {
    }

LABEL_37:
    v66 = objc_allocWithZone(sub_26139F2CC());
    return sub_26139F2DC();
  }

LABEL_65:

  v82 = sub_261290BB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  v83 = swift_initStackObject();
  *(v83 + 16) = xmmword_2613A4310;
  if (v82)
  {
    v84 = sub_26139F2CC();
    *(v83 + 32) = sub_26139F27C();
    v85 = v83 + 32;
    *(v83 + 40) = v86;
    v87 = sub_2613A0F4C();
  }

  else
  {
    v84 = sub_26139F2CC();
    *(v83 + 32) = sub_26139F27C();
    v85 = v83 + 32;
    *(v83 + 40) = v89;
    v87 = sub_2613A0F5C();
  }

  *(v83 + 72) = MEMORY[0x277D837D0];
  *(v83 + 48) = v87;
  *(v83 + 56) = v88;
  sub_261259E78(v83);
  swift_setDeallocating();
  sub_26124C718(v85, &qword_27FE9F2F0, &qword_2613A4BD0);
  v90 = objc_allocWithZone(v84);
  return sub_26139F2DC();
}

uint64_t sub_261349F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0750, &qword_2613ACF00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_26134A018(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v6 = v5;
  v68 = a4;
  v69 = a5;
  v67 = a3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v14 = sub_26139FFEC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_continuityDisplayMonitor;
  type metadata accessor for ContinuityDisplayMonitor();
  *&v5[v18] = sub_2612FC220();
  v19 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0730, &unk_2613ACEC8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0738, &unk_2613ACED8);
  v22 = type metadata accessor for IdentityUIManager(0);
  *&v6[v19] = sub_26127B4E0(2u, v20, v21, v22);
  v23 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_regUIManager;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0740, &unk_2613ACEE8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0748, &qword_2613ACEF8);
  v26 = type metadata accessor for IdentityRegUIManager(0);
  *&v6[v23] = sub_26127B4E0(3u, v24, v25, v26);
  v27 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError] = 0;
  v31 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler];
  *v31 = 0;
  *(v31 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask] = 0;
  v32 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask];
  *v32 = 0;
  *(v32 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError] = 0;
  v33 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse] = 0;
  v34 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler];
  *v34 = 0;
  *(v34 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse] = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask] = 0;
  v35 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  v36 = type metadata accessor for IdentityAnalyticsTransaction(0);
  (*(*(v36 - 8) + 56))(&v6[v35], 1, 1, v36);
  v37 = a1;
  sub_26139FFFC();
  (*(v15 + 32))(&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_entitlements], v17, v14);
  type metadata accessor for IdentityReaderAdapter(0);
  [v37 auditToken];
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter] = sub_26137D498(v74, *(&v74 + 1), v75, *(&v75 + 1));
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_connection] = v37;
  v38 = v37;
  sub_2612D5DB4(a2, v67, v68, v69, &v74);
  v39 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_terminalContext];
  v40 = v75;
  *v39 = v74;
  *(v39 + 1) = v40;
  *(v39 + 2) = v76;
  type metadata accessor for IdentityAnalyticsManager();
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsManager] = sub_2612D7F84();
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsSessions] = sub_26135ABAC(MEMORY[0x277D84F90]);
  v73.receiver = v6;
  v73.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v73, sel_init);
  sub_26134A760();
  v42 = sub_26129BA7C();
  sub_26125A870(v42, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v43 = sub_2613A124C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v13, 1, v43) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v46 = sub_2613A122C();
    v47 = sub_2613A1D7C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      ObjectType = v38;
      v49 = v48;
      v69 = swift_slowAlloc();
      v72 = v69;
      *v49 = 136315650;
      v50 = sub_2612E6298();
      v68 = v46;
      LODWORD(v67) = v47;
      v51 = *v50;
      v52 = v50[1];

      v53 = sub_26124C11C(v51, v52, &v72);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = sub_2612E62A4();
      v55 = *v54;
      v56 = v54[1];

      v57 = sub_26124C11C(v55, v56, &v72);

      *(v49 + 14) = v57;
      *(v49 + 22) = 1024;
      v58 = sub_2613A0C2C();
      LOBYTE(v56) = v58();

      *(v49 + 24) = v56 & 1;
      v46 = v68;
      _os_log_impl(&dword_261243000, v68, v67, "\nCOMPONENTS: ------------------------------------\nmd: %s (%s)\ninternal: %{BOOL}d\n-------------------------------------------------", v49, 0x1Cu);
      v59 = v69;
      swift_arrayDestroy();
      MEMORY[0x266701350](v59, -1, -1);
      v60 = v49;
      v38 = ObjectType;
      MEMORY[0x266701350](v60, -1, -1);
    }

    (*(v44 + 8))(v13, v43);
  }

  v61 = v42;
  v62 = v71;
  sub_26125A870(v61, v71, &qword_27FE9F560, &qword_2613A3CB0);
  if (v45(v62, 1, v43) == 1)
  {

    sub_26124C718(v62, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v63 = sub_2613A122C();
    v64 = sub_2613A1D9C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_261243000, v63, v64, "Created", v65, 2u);
      MEMORY[0x266701350](v65, -1, -1);
    }

    (*(v44 + 8))(v62, v43);
  }

  return v41;
}

uint64_t sub_26134A760()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *(v6 + 16);
  v12(&v18 - v10, *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_events, v5);
  v13 = sub_2613A1C1C();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12(v9, v11, v5);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v6 + 32))(v16 + v15, v9, v5);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_261266800(0, 0, v4, &unk_2613AD180, v16);

  return (*(v6 + 8))(v11, v5);
}

id sub_26134A9E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsSessions;
  swift_beginAccess();
  *&v1[v6] = MEMORY[0x277D84F98];

  v7 = sub_26129BA7C();
  sub_26125A870(v7, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "Destroyed", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    (*(v9 + 8))(v5, v8);
  }

  v15.receiver = v1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

void sub_26134AE24(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v44 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = sub_26129BA7C();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  v14 = v13 + 48;
  v15 = *(v13 + 48);
  if (v15(v10, 1, v12) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v46 = v13 + 48;
    LODWORD(v45) = a1;
    v16 = v5;
    v17 = v8;
    v18 = v12;
    v19 = v15;
    v20 = v11;
    v21 = v13;
    v22 = sub_26125A798();
    v23 = sub_261291AA8();
    v24 = v22 & 1;
    v13 = v21;
    v11 = v20;
    v15 = v19;
    v12 = v18;
    v8 = v17;
    v5 = v16;
    LOBYTE(a1) = v45;
    v14 = v46;
    sub_26129BC3C(v24, v48, 0xD00000000000001FLL, 0x80000002613BD4B0, v23, v25);

    (*(v13 + 8))(v10, v12);
  }

  sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v26 = v15(v8, 1, v12);
  v47 = v5;
  if (v26 == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v27 = sub_2613A122C();
    v28 = sub_2613A1D8C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v45 = v13;
      v30 = v29;
      v31 = swift_slowAlloc();
      v44 = v11;
      v32 = v31;
      v51[0] = v31;
      *v30 = 136315138;
      v33 = sub_261274710(a1);
      v46 = v14;
      v35 = v8;
      v36 = sub_26124C11C(v33, v34, v51);

      *(v30 + 4) = v36;
      v8 = v35;
      _os_log_impl(&dword_261243000, v27, v28, "UI was invalidated with error: [%s]", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      v37 = v32;
      v11 = v44;
      MEMORY[0x266701350](v37, -1, -1);
      v38 = v30;
      v13 = v45;
      MEMORY[0x266701350](v38, -1, -1);
    }

    (*(v13 + 8))(v8, v12);
  }

  v53 = a1;
  v52 = 1;
  sub_26135AD64();
  sub_2613A1B1C();
  sub_2613A1B1C();
  if (v51[0] == v49 && v51[1] == v50)
  {
  }

  else
  {
    v39 = sub_2613A241C();

    if ((v39 & 1) == 0)
    {
      sub_26135B36C();
      return;
    }
  }

  v40 = v47;
  sub_26125A870(v11, v47, &qword_27FE9F560, &qword_2613A3CB0);
  if (v15(v40, 1, v12) == 1)
  {
    sub_26124C718(v40, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v41 = sub_2613A122C();
    v42 = sub_2613A1D8C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_261243000, v41, v42, "ERROR xpc error, IdentityUI cannot be presented, cleaning up transaction", v43, 2u);
      MEMORY[0x266701350](v43, -1, -1);
    }

    (*(v13 + 8))(v40, v12);
  }

  sub_26134B330(v48);
}

void sub_26134B330(char *a1)
{
  v2 = sub_26139F30C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = sub_26139FFDC();
  v16 = sub_26129BA7C();
  if (v15)
  {
    sub_26125A870(v16, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v21 = sub_2613A122C();
      v22 = sub_2613A1D9C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261243000, v21, v22, "Executing host app cancel read request", v23, 2u);
        MEMORY[0x266701350](v23, -1, -1);
      }

      (*(v18 + 8))(v14, v17);
    }

    sub_26137C1FC();
    sub_26134D8A0();
    v24 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask;
    if (*&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask])
    {

      sub_2613A1C9C();
    }

    *&a1[v24] = 0;

    [*&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager] updateUIState_];
    v29 = sub_2613A1C1C();
    (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = a1;
    v30[5] = nullsub_1;
    v30[6] = 0;
    v31 = a1;
    sub_261266800(0, 0, v8, &unk_2613AD130, v30);
  }

  else
  {
    sub_26125A870(v16, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v12, 1, v19) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = sub_2613A122C();
      v26 = sub_2613A1D8C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "no entitlement", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      (*(v20 + 8))(v12, v19);
    }

    (*(v3 + 104))(v5, *MEMORY[0x277D43638], v2);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    v28 = swift_allocError();
    sub_26139F31C();
  }
}

uint64_t sub_26134B8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A8, &qword_2613AD188);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26134B9A8, 0, 0);
}

uint64_t sub_26134B9A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170);
  sub_2613A1C4C();
  swift_beginAccess();
  *(v0 + 49) = 1;
  *(v0 + 104) = 0;
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_26134BA9C;
  v2 = *(v0 + 80);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v2);
}

uint64_t sub_26134BA9C()
{

  return MEMORY[0x2822009F8](sub_26134BB98, 0, 0);
}

uint64_t sub_26134BB98()
{
  v26 = v0;
  v1 = *(v0 + 40);
  if (*(v0 + 48))
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = sub_26129BA7C();
    sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_26124C718(*(v0 + 72), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v8 = sub_2613A122C();
      v9 = sub_2613A1D9C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v10 = 136315138;
        v11 = sub_26139F91C();
        v13 = sub_26124C11C(v11, v12, &v25);

        *(v10 + 4) = v13;
        _os_log_impl(&dword_261243000, v8, v9, "Updating UI state with event: [ %s ]", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x266701350](v24, -1, -1);
        MEMORY[0x266701350](v10, -1, -1);
      }

      (*(v7 + 8))(*(v0 + 72), v6);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = sub_26139F92C();
      if (v16 == sub_26139F92C())
      {
        v17 = *&v15[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener];
        if (v17)
        {
          v18 = *&v15[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener + 8];

          v17(v19);
          sub_26124A228(v17, v18);
        }
      }

      v20 = *(v0 + 49);
      v21 = *(v0 + 104);
      [*&v15[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager] updateUIState_];
      sub_26137C34C(v21, v20, v1);
    }

    *(v0 + 49) = 0;
    *(v0 + 104) = v1;
    v22 = swift_task_alloc();
    *(v0 + 112) = v22;
    *v22 = v0;
    v22[1] = sub_26134BA9C;
    v23 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 40, 0, 0, v23);
  }
}

uint64_t sub_26134BF00(int a1)
{
  v30 = a1;
  v1 = sub_26139F30C();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x28223BE20](v1);
  v35 = &v29[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_26139F64C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v32 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v29[-v9];
  v11 = sub_26129BA7C();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v36 = *(v12 - 8);
  v13 = *(v36 + 48);
  if (v13(v10, 1, v12) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "Checking prepare preconditions", v16, 2u);
      MEMORY[0x266701350](v16, -1, -1);
    }

    (*(v36 + 8))(v10, v12);
  }

  sub_26139F54C();
  sub_26139F5DC();
  v17 = v38;
  v18 = *(v37 + 8);
  v18(v5, v38);
  if ((sub_26139FFDC() & 1) == 0)
  {
    v22 = v11;
    v23 = v32;
    sub_26125A870(v22, v32, &qword_27FE9F560, &qword_2613A3CB0);
    if (v13(v23, 1, v12) == 1)
    {
      sub_26124C718(v23, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261243000, v24, v25, "No entitlement", v26, 2u);
        v27 = v26;
        v17 = v38;
        MEMORY[0x266701350](v27, -1, -1);
      }

      (*(v36 + 8))(v23, v12);
    }

    v21 = MEMORY[0x277D43638];
    goto LABEL_18;
  }

  v19 = v31;
  v20 = sub_261377244();
  if (!v19 && (v30 & 1) != 0 && (((*(**(v39 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) + 192))(v20) & 1) != 0 || *(v39 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask)))
  {
    v21 = MEMORY[0x277D43640];
LABEL_18:
    (*(v33 + 104))(v35, *v21, v34);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();
  }

  sub_26139F54C();
  sub_26139F5BC();
  return (v18)(v5, v17);
}

void sub_26134C43C(uint64_t a1, void *a2)
{
  v36 = a1;
  v3 = sub_26139F30C();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26139F64C();
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = sub_26129BA7C();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v42 = *(v14 - 8);
  v15 = *(v42 + 48);
  if (v15(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v35 = v5;
    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = a2;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_261243000, v16, v17, "Checking read preconditions", v18, 2u);
      v20 = v19;
      a2 = v34;
      MEMORY[0x266701350](v20, -1, -1);
    }

    (*(v42 + 8))(v12, v14);
    v5 = v35;
  }

  sub_26139F54C();
  sub_26139F5DC();
  v21 = *(v43 + 8);
  v43 += 8;
  v21(v7, v5);
  if (!sub_26139FFBC())
  {
    v26 = v13;
    v27 = v37;
    sub_26125A870(v26, v37, &qword_27FE9F560, &qword_2613A3CB0);
    if (v15(v27, 1, v14) == 1)
    {
      sub_26124C718(v27, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = sub_2613A122C();
      v29 = sub_2613A1D8C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = a2;
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v28, v29, "No entitlement", v31, 2u);
        v32 = v31;
        a2 = v30;
        MEMORY[0x266701350](v32, -1, -1);
      }

      (*(v42 + 8))(v37, v14);
    }

    v25 = MEMORY[0x277D43638];
    goto LABEL_18;
  }

  v22 = v41;
  v23 = sub_26137725C();
  if (!v22)
  {
    v24 = v36;
    if (*(v36 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask) || ((*(**(v36 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) + 192))(v23) & 1) != 0 || *(v24 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask))
    {
      v25 = MEMORY[0x277D43640];
LABEL_18:
      (*(v38 + 104))(v40, *v25, v39);
      sub_26139F33C();
      sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
    }
  }

  sub_26139F54C();
  sub_26139F5BC();
  v21(v7, v5);
}

void sub_26134C998(uint64_t a1, void *a2)
{
  v36 = a1;
  v3 = sub_26139F30C();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26139F64C();
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v42 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = sub_26129BA7C();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v41 = *(v14 - 8);
  v15 = *(v41 + 48);
  if (v15(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v35 = v5;
    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = a2;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_261243000, v16, v17, "Checking read preconditions", v18, 2u);
      v20 = v19;
      a2 = v34;
      MEMORY[0x266701350](v20, -1, -1);
    }

    (*(v41 + 8))(v12, v14);
    v5 = v35;
  }

  sub_26139F54C();
  sub_26139F5DC();
  v21 = *(v43 + 8);
  v43 += 8;
  v21(v7, v5);
  if ((sub_26139FFCC() & 1) == 0)
  {
    v26 = v13;
    v27 = v42;
    sub_26125A870(v26, v42, &qword_27FE9F560, &qword_2613A3CB0);
    if (v15(v27, 1, v14) == 1)
    {
      sub_26124C718(v27, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = sub_2613A122C();
      v29 = sub_2613A1D8C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = a2;
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v28, v29, "No entitlement", v31, 2u);
        v32 = v31;
        a2 = v30;
        MEMORY[0x266701350](v32, -1, -1);
      }

      (*(v41 + 8))(v42, v14);
    }

    v25 = MEMORY[0x277D43638];
    goto LABEL_18;
  }

  v22 = v37;
  v23 = sub_26137725C();
  if (!v22)
  {
    v24 = v36;
    if (*(v36 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask) || ((*(**(v36 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) + 192))(v23) & 1) != 0 || *(v24 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask))
    {
      v25 = MEMORY[0x277D43640];
LABEL_18:
      (*(v38 + 104))(v40, *v25, v39);
      sub_26139F33C();
      sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
    }
  }

  sub_26139F54C();
  sub_26139F5BC();
  v21(v7, v5);
}

uint64_t sub_26134CEE8()
{
  v0 = sub_26139F30C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2612FC1C0())
  {
    v4 = MEMORY[0x277D436B0];
  }

  else
  {
    result = sub_2612FBFC4();
    if ((result & 1) == 0)
    {
      return result;
    }

    v4 = MEMORY[0x277D43640];
  }

  (*(v1 + 104))(v3, *v4, v0);
  sub_26139F33C();
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
  swift_allocError();
  sub_26139F31C();
  return swift_willThrow();
}

uint64_t sub_26134D058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0770, &qword_2613AD0C8);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v27 - v5;
  v35 = sub_26139FFAC();
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_26139FF3C();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26139FEEC();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_26139F64C();
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_26129BA7C();
  sub_26125A870(v17, v16, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v28 = a2;
    v20 = sub_2613A122C();
    v21 = sub_2613A1D9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_261243000, v20, v21, "Show identity UI", v22, 2u);
      MEMORY[0x266701350](v22, -1, -1);
    }

    (*(v19 + 8))(v16, v18);
    a2 = v28;
  }

  sub_26139F49C();
  sub_26139F5DC();
  v23 = *(v11 + 8);
  v24 = v29;
  v23(v13, v29);
  v25 = *(v37 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager);
  (*(*v25 + 376))();
  (*(v7 + 16))(v31, v38, v30);
  (*(v32 + 16))(v33, a2, v35);
  sub_26125A870(v40, v39, &qword_27FEA0770, &qword_2613AD0C8);
  sub_26139FEDC();
  if (sub_2613A1CDC())
  {
    sub_26139F49C();
    sub_26139F5BC();
    v23(v13, v24);
  }

  else
  {
    (*(*v25 + 488))(v10);
  }

  return (*(v34 + 8))(v10, v36);
}

uint64_t sub_26134D5A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26139F64C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_26129BA7C();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v24 = a1;
    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23 = a2;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_261243000, v16, v17, "Show registration UI", v18, 2u);
      v20 = v19;
      a2 = v23;
      MEMORY[0x266701350](v20, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
    a1 = v24;
  }

  sub_26139F55C();
  sub_26139F5DC();
  (*(v7 + 8))(v9, v6);
  v21 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_regUIManager);
  (*(*v21 + 376))(v3);
  return (*(*v21 + 488))(a1, a2, *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_connection));
}

void sub_26134D8A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_26129BA7C();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261243000, v8, v9, "Executing cleanup", v10, 2u);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v12 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask + 8);
  *v11 = 0;
  v11[1] = 0;
  sub_26124A228(v12, v13);
  v14 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError) = 0;

  v15 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler);
  v16 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler);
  v17 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler + 8);
  *v15 = 0;
  v15[1] = 0;
  sub_26124A228(v16, v17);
  v18 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse) = 0;

  v19 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler);
  v20 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler);
  v21 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler + 8);
  *v19 = 0;
  v19[1] = 0;
  sub_26124A228(v20, v21);
  v22 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse) = 0;
}

void sub_26134DAC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v78 - v1;
  v86 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v3 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26139F64C();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2613A01BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v79 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v78 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v78 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - v18;
  v88 = sub_26129BA7C();
  sub_26125A870(v88, v19, &qword_27FE9F560, &qword_2613A3CB0);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  v89 = *(v21 + 48);
  if (v89(v19, 1, v20) == 1)
  {
    sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v78 = v8;
    v22 = v7;
    v23 = v2;
    v24 = v20;
    v25 = sub_2613A122C();
    v26 = sub_2613A1D9C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v82 = v3;
      v28 = v21;
      v29 = v27;
      *v27 = 0;
      _os_log_impl(&dword_261243000, v25, v26, "Returning result to host app", v27, 2u);
      v30 = v29;
      v21 = v28;
      v3 = v82;
      MEMORY[0x266701350](v30, -1, -1);
    }

    v20 = v24;
    (*(v21 + 8))(v19, v24);
    v2 = v23;
    v7 = v22;
    v8 = v78;
  }

  v31 = *&v90[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler];
  if (v31)
  {
    v32 = *&v90[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler + 8];
    v33 = *&v90[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse];
    if (v33)
    {
      v34 = *&v90[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler];
      v80 = *&v90[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler + 8];
      sub_26124A17C(v34, v32);
      v79 = v33;
      sub_2613A01EC();
      v35 = (*(v8 + 88))(v10, v7);
      v36 = *MEMORY[0x277D43BE8];
      v82 = v3;
      if (v35 == v36)
      {
        (*(v8 + 96))(v10, v7);
        v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0798, &qword_2613AD9F0) + 48);
        v38 = v83;
        sub_26139F57C();
        sub_26139F5BC();
        (*(v84 + 8))(v38, v85);
        v39 = sub_2613A15AC();
        (*(*(v39 - 8) + 8))(&v10[v37], v39);
        v40 = sub_26139FD9C();
        (*(*(v40 - 8) + 8))(v10, v40);
      }

      else
      {
        v48 = v35;
        v49 = v21;
        v50 = v20;
        v51 = *MEMORY[0x277D43BE0];
        (*(v8 + 8))(v10, v7);
        v52 = v48 == v51;
        v20 = v50;
        v21 = v49;
        if (v52)
        {
          v53 = v83;
          sub_26139F5AC();
          sub_26139F5BC();
          (*(v84 + 8))(v53, v85);
        }
      }

      v54 = v87;
      sub_26125A870(v88, v87, &qword_27FE9F560, &qword_2613A3CB0);
      if (v89(v54, 1, v20) == 1)
      {
        sub_26124C718(v54, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v55 = sub_2613A122C();
        v56 = sub_2613A1D9C();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_261243000, v55, v56, "Returning read data response", v57, 2u);
          MEMORY[0x266701350](v57, -1, -1);
        }

        (*(v21 + 8))(v54, v20);
      }

      v58 = v79;
      v59 = v80;
      v31(v33, 0);

      v60 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      v61 = v90;
      swift_beginAccess();
      if ((*(v82 + 48))(&v61[v60], 1, v86))
      {
        sub_26124A228(v31, v59);
      }

      else
      {
        v62 = v81;
        sub_26135E584(&v90[v60], v81);
        v63 = sub_2613A01FC();
        sub_2612DC410(v63, v64);
        sub_26124A228(v31, v59);

        sub_26135E528(v62);
      }
    }

    else
    {
      v47 = *&v90[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler + 8];
      sub_26124A17C(*&v90[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler], v32);
      sub_26135ADB8(v90, v31, v47, &unk_2873BDA68, &unk_2613AD158);
      sub_26124A228(v31, v47);
    }
  }

  else
  {
    v41 = *&v90[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler];
    if (v41)
    {
      v42 = *&v90[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler + 8];
      v43 = *&v90[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse];
      if (v43)
      {
        v44 = v80;
        sub_26125A870(v88, v80, &qword_27FE9F560, &qword_2613A3CB0);
        v45 = v89(v44, 1, v20);
        sub_26124A17C(v41, v42);
        v46 = v43;
        if (v45 == 1)
        {
          sub_26124C718(v44, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v66 = v20;
          v67 = sub_2613A122C();
          v68 = sub_2613A1D9C();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_261243000, v67, v68, "Returning display only response", v69, 2u);
            MEMORY[0x266701350](v69, -1, -1);
          }

          (*(v21 + 8))(v44, v66);
        }

        v70 = v46;
        v41(v43, 0);

        sub_26124A228(v41, v42);
      }

      else
      {
        sub_26124A17C(v41, v42);
        sub_26135ADB8(v90, v41, v42, &unk_2873BDA90, &unk_2613AD160);
        sub_26124A228(v41, v42);
      }
    }

    else
    {
      v65 = v79;
      sub_26125A870(v88, v79, &qword_27FE9F560, &qword_2613A3CB0);
      if (v89(v65, 1, v20) == 1)
      {
        sub_26124C718(v65, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v71 = sub_2613A122C();
        v72 = sub_2613A1D8C();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_261243000, v71, v72, "No error handler to process read response", v73, 2u);
          MEMORY[0x266701350](v73, -1, -1);
        }

        (*(v21 + 8))(v65, v20);
      }

      v74 = sub_2613A1C1C();
      (*(*(v74 - 8) + 56))(v2, 1, 1, v74);
      v75 = swift_allocObject();
      v75[2] = 0;
      v75[3] = 0;
      v76 = v90;
      v75[4] = v90;
      v77 = v76;
      sub_261266800(0, 0, v2, &unk_2613AD140, v75);
    }
  }

  sub_26134D8A0();
}

uint64_t sub_26134E5CC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
  v0[3] = v1;
  v2 = *v1 + 264;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0xF337000000000000;
  return MEMORY[0x2822009F8](sub_26135F9EC, v1, 0);
}

uint64_t sub_26134E61C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26139F30C();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0790, &unk_2613AD120);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = sub_26139F33C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v56 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v24 = swift_dynamicCast();
  v25 = *(v17 + 56);
  if (v24)
  {
    v25(v15, 0, 1, v16);
    v26 = *(v17 + 32);
    v26(v22, v15, v16);
    v27 = sub_26129BA7C();
    sub_26125A870(v27, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v28 = sub_2613A124C();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v12, 1, v28) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v54 = v26;
      v55 = a2;
      v51 = *(v17 + 16);
      v51(v20, v22, v16);
      v33 = sub_2613A122C();
      v52 = sub_2613A1D8C();
      v53 = v33;
      if (os_log_type_enabled(v33, v52))
      {
        v34 = swift_slowAlloc();
        v49 = v34;
        v50 = swift_slowAlloc();
        *v34 = 138412290;
        sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
        swift_allocError();
        v51(v35, v20, v16);
        v36 = _swift_stdlib_bridgeErrorToNSError();
        (*(v17 + 8))(v20, v16);
        v37 = v49;
        v38 = v50;
        *(v49 + 1) = v36;
        *v38 = v36;
        v39 = v53;
        v40 = v37;
        _os_log_impl(&dword_261243000, v53, v52, "Execution failed with error: [ %@ ]", v37, 0xCu);
        sub_26124C718(v38, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v38, -1, -1);
        MEMORY[0x266701350](v40, -1, -1);
      }

      else
      {

        (*(v17 + 8))(v20, v16);
      }

      a2 = v55;
      (*(v29 + 8))(v12, v28);
      v26 = v54;
    }

    return (v26)(a2, v22, v16);
  }

  else
  {
    v25(v15, 1, 1, v16);
    sub_26124C718(v15, &qword_27FEA0790, &unk_2613AD120);
    v30 = sub_26129BA7C();
    sub_26125A870(v30, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v31 = sub_2613A124C();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v10, 1, v31) == 1)
    {
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v41 = a1;
      v42 = sub_2613A122C();
      v43 = sub_2613A1D8C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = a1;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_261243000, v42, v43, "Execution failed with unexpected error: [ %@ ]", v44, 0xCu);
        sub_26124C718(v45, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v45, -1, -1);
        MEMORY[0x266701350](v44, -1, -1);
      }

      (*(v32 + 8))(v10, v31);
    }

    (*(v54 + 13))(v6, *MEMORY[0x277D436D0], v55);
    return sub_26139F31C();
  }
}

uint64_t sub_26134ED18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_26139F33C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5[11] = swift_task_alloc();
  v7 = sub_2613A1BFC();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26134EE74, 0, 0);
}

uint64_t sub_26134EE74()
{
  sub_26134D8A0();
  sub_26134CEE8();
  v3 = (*(v0 + 24) + **(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_26134F1D0;

  return v3();
}

uint64_t sub_26134F1D0()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26134F320, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26134F320()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 88);

    v4 = sub_26129BA7C();
    sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
    v5 = sub_2613A124C();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v3, 1, v5) == 1)
    {
      sub_26124C718(*(v0 + 88), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v11 = sub_2613A122C();
      v12 = sub_2613A1D9C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_261243000, v11, v12, "Request was cancelled by host app", v13, 2u);
        MEMORY[0x266701350](v13, -1, -1);
      }

      v14 = *(v0 + 88);

      (*(v6 + 8))(v14, v5);
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  else
  {
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);
    v10 = *(v0 + 40);

    sub_26134E61C(v1, v7);
    sub_26135BC34(v7);
    v10(v7);

    (*(v8 + 8))(v7, v9);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26134F598(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26134F638, 0, 0);
}

uint64_t sub_26134F638(uint64_t a1)
{
  sub_2613A1CEC();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_26134F724;
  v3 = v1[3];
  v4 = v1[2];

  return sub_26134FBC8(v4, v3);
}

uint64_t sub_26134F724()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26134F9B0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[8] = v3;
    *v3 = v2;
    v3[1] = sub_26134F89C;
    v4 = v2[2];
    v5 = v2[3];

    return sub_261379ADC(v5, v4);
  }
}

uint64_t sub_26134F89C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26134F9B0()
{
  v1 = v0[5];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[7];
    v6 = v5;
    v7 = sub_2613A122C();
    v8 = sub_2613A1D8C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v9;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_261243000, v7, v8, "Error requesting merchant: [ %@ ]", v10, 0xCu);
      sub_26124C718(v11, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    v14 = v0[5];

    (*(v4 + 8))(v14, v3);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_26134FBC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26139F64C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26134FCC4, 0, 0);
}

uint64_t sub_26134FCC4()
{
  v1 = v0[8];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[8], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261243000, v5, v6, "Loading merchant", v7, 2u);
      MEMORY[0x266701350](v7, -1, -1);
    }

    v8 = v0[8];

    (*(v4 + 8))(v8, v3);
  }

  v10 = v0[6];
  v9 = v0[7];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  sub_26139F59C();
  sub_26139F5DC();
  v14 = *(v10 + 8);
  v0[9] = v14;
  v0[10] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v9, v11);
  v15 = *(v12 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v16 = sub_2613A00FC();
  v18 = v17;
  v0[11] = v17;
  v22 = (*(*v15 + 224) + **(*v15 + 224));
  v19 = swift_task_alloc();
  v0[12] = v19;
  *v19 = v0;
  v19[1] = sub_26134FF94;
  v20 = v0[2];

  return v22(v20, v16, v18);
}

uint64_t sub_26134FF94()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_261350150;
  }

  else
  {

    v2 = sub_2613500B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2613500B0(uint64_t a1)
{
  v2 = v1[9];
  v3 = v1[7];
  v4 = v1[5];
  sub_26139F59C();
  sub_26139F5BC();
  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_261350150()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];

  sub_26139F59C();
  sub_26139F5BC();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2613501F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager];
  result = (*(*v9 + 192))(v6);
  if (result)
  {
    v11 = sub_26129BA7C();
    sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D9C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, "XPC is disconnecting and UI still visible", v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      (*(v13 + 8))(v8, v12);
    }

    [v9 updateUIState_];
    v17 = sub_26137C34C(0, 1, 17);
    (*(**&v1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_regUIManager] + 456))(v17);
    v18 = sub_2613A1C1C();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v1;
    v20 = v1;
    sub_261266800(0, 0, v4, &unk_2613ACF28, v19);
  }

  return result;
}

uint64_t sub_261350544()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
  v0[3] = v1;
  v2 = *v1 + 264;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0xF337000000000000;
  return MEMORY[0x2822009F8](sub_261350594, v1, 0);
}

uint64_t sub_261350594()
{
  (*(v0 + 32))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261350628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  v7 = sub_26139F64C();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261350730, 0, 0);
}

uint64_t sub_261350730()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  sub_26139F4BC();
  sub_26139F5DC();
  v5 = *(v2 + 8);
  v0[10] = v5;
  v0[11] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v8 = (*(**(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + 200) + **(**(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + 200));
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_261350898;

  return v8();
}

uint64_t sub_261350898(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_261350BB0;
  }

  else
  {
    v4 = sub_2613509AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2613509AC()
{
  v1 = v0[6];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[6], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261243000, v5, v6, "Returning identity configuration", v7, 2u);
      MEMORY[0x266701350](v7, -1, -1);
    }

    v8 = v0[6];

    (*(v4 + 8))(v8, v3);
  }

  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[3];
  v14 = v9;
  v13(v9, 0);

  sub_26139F4BC();
  sub_26139F5BC();
  v10(v11, v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_261350BB0()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  sub_26139F4BC();
  sub_26139F5BC();
  v1(v2, v3);
  v5 = sub_26129BA7C();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v0[14];
    v9 = v8;
    v10 = sub_2613A122C();
    v11 = sub_2613A1D8C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[14];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261243000, v10, v11, "Could not retrieve reader configuration: [ %@ ]", v13, 0xCu);
      sub_26124C718(v14, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    v17 = v0[5];

    (*(v7 + 8))(v17, v6);
  }

  v18 = v0[14];
  v19 = v0[3];
  sub_26139F33C();
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
  v20 = swift_allocError();
  sub_26134E61C(v18, v21);
  v19(0, v20);

  v22 = v0[1];

  return v22();
}

void sub_261350E98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, void (*a6)(uint64_t, uint64_t, void *), uint64_t a7)
{
  v65 = a2;
  v66 = a7;
  v61 = a5;
  v64 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0790, &unk_2613AD120);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - v16;
  v18 = sub_26139F33C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v63 = a6;
    v27 = (Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler);
    swift_beginAccess();
    v28 = *v27;
    v29 = v27[1];
    *v27 = 0;
    v27[1] = 0;
    sub_26124A228(v28, v29);
    v30 = &v26[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask];
    v31 = *&v26[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask];
    v32 = *&v26[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask + 8];
    *v30 = 0;
    *(v30 + 1) = 0;
    sub_26124A228(v31, v32);
    v62 = a3;
    if (a3)
    {
      v67 = a3;
      v33 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v34 = swift_dynamicCast();
      (*(v19 + 56))(v17, v34 ^ 1u, 1, v18);
      if ((*(v19 + 48))(v17, 1, v18) != 1)
      {
        (*(v19 + 32))(v24, v17, v18);
        sub_26137A604(v61 & 1, v24);
        v35 = sub_26129BA7C();
        sub_26125A870(v35, v12, &qword_27FE9F560, &qword_2613A3CB0);
        v36 = sub_2613A124C();
        v37 = *(v36 - 8);
        if ((*(v37 + 48))(v12, 1, v36) == 1)
        {
          (*(v19 + 8))(v24, v18);
          sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
          v63(v64, v65, v62);
LABEL_17:

          return;
        }

        v60 = *(v19 + 16);
        v60(v22, v24, v18);
        v47 = sub_2613A122C();
        v61 = sub_2613A1D8C();
        if (os_log_type_enabled(v47, v61))
        {
          v48 = swift_slowAlloc();
          v59 = v36;
          v49 = v48;
          v58 = swift_slowAlloc();
          *v49 = 138412290;
          sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
          swift_allocError();
          v57 = v47;
          v60(v50, v22, v18);
          v51 = _swift_stdlib_bridgeErrorToNSError();
          v60 = *(v19 + 8);
          (v60)(v22, v18);
          v52 = v49;
          v56 = v49;
          v53 = v58;
          v36 = v59;
          *(v52 + 1) = v51;
          *v53 = v51;
          v54 = v57;
          _os_log_impl(&dword_261243000, v57, v61, "Returning error during prepare: [ %@ ]", v52, 0xCu);
          sub_26124C718(v53, &qword_27FEA0410, &qword_2613AA780);
          MEMORY[0x266701350](v53, -1, -1);
          MEMORY[0x266701350](v56, -1, -1);

          (v60)(v24, v18);
        }

        else
        {

          v55 = *(v19 + 8);
          v55(v22, v18);
          v55(v24, v18);
        }

        v42 = v63;
        (*(v37 + 8))(v12, v36);
LABEL_16:
        v42(v64, v65, v62);
        goto LABEL_17;
      }
    }

    else
    {
      (*(v19 + 56))(v17, 1, 1, v18);
    }

    sub_26124C718(v17, &qword_27FEA0790, &unk_2613AD120);
    v38 = sub_26129BA7C();
    sub_26125A870(v38, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v39 = sub_2613A124C();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 48))(v14, 1, v39);
    v42 = v63;
    if (v41 == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v43 = sub_2613A122C();
      v44 = sub_2613A1D9C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_261243000, v43, v44, "Returning session to host app", v45, 2u);
        v46 = v45;
        v42 = v63;
        MEMORY[0x266701350](v46, -1, -1);
      }

      (*(v40 + 8))(v14, v39);
    }

    goto LABEL_16;
  }
}

uint64_t sub_261351584(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 248) = a3;
  *(v4 + 256) = a4;
  *(v4 + 240) = a2;
  *(v4 + 392) = a1;
  v5 = sub_26139F30C();
  *(v4 + 264) = v5;
  *(v4 + 272) = *(v5 - 8);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v6 = sub_26139F33C();
  *(v4 + 296) = v6;
  *(v4 + 304) = *(v6 - 8);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261351704, 0, 0);
}

uint64_t sub_261351704()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 344) = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
    *(v0 + 352) = v2;
    v3 = *(*v2 + 208);

    v10 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 360) = v4;
    *v4 = v0;
    v4[1] = sub_2613518E0;
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = *(v0 + 392);

    return v10(v6, v5, v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2613518E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[46] = a1;
  v4[47] = a2;
  v4[48] = v2;

  if (v2)
  {
    v5 = sub_261351D30;
  }

  else
  {

    v5 = sub_261351A00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261351A00()
{
  v24 = v0;
  v1 = v0[42];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[42], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[46];
      v7 = v0[47];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_26124C11C(v8, v7, &v23);
      _os_log_impl(&dword_261243000, v5, v6, "Session [ %s ] is ready!", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x266701350](v10, -1, -1);
      MEMORY[0x266701350](v9, -1, -1);
    }

    (*(v4 + 8))(v0[42], v3);
  }

  v11 = v0[43] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler;
  swift_beginAccess();
  v12 = *v11;
  if (*v11)
  {
    v14 = v0[46];
    v13 = v0[47];
    v15 = *(v11 + 8);

    sub_26124A17C(v12, v15);
    v12(v14, v13, 0);
    sub_26124A228(v12, v15);
  }

  v17 = v0[46];
  v16 = v0[47];
  v18 = v0[43];
  sub_261379734(v17, v16, v0[32] != 0, v0 + 2);
  v19 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsSessions;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *&v18[v19];
  *&v18[v19] = 0x8000000000000000;
  sub_26135A79C(v0 + 1, v17, v16, isUniquelyReferenced_nonNull_native);

  *&v18[v19] = v23;
  swift_endAccess();

  v21 = v0[1];

  return v21();
}

uint64_t sub_261351D30()
{
  v1 = *(v0 + 384);

  *(v0 + 232) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 312);
    v3 = *(v0 + 320);
    v5 = *(v0 + 296);
    v6 = *(v0 + 304);
    v7 = *(v0 + 392);

    (*(v6 + 32))(v3, v4, v5);
    if ((v7 & 1) == 0)
    {
      v8 = *(v0 + 288);
      v9 = *(v0 + 264);
      v10 = *(v0 + 272);
      sub_26139F32C();
      if ((*(v10 + 88))(v8, v9) == *MEMORY[0x277D436C8])
      {
        v11 = *(v0 + 344);
        v12 = *(v0 + 320);
        v13 = *(v0 + 296);
        v14 = *(v0 + 304);
        v15 = *(v0 + 288);
        (*(*(v0 + 272) + 96))(v15, *(v0 + 264));
        sub_26134D5A8(*v15, v15[1]);

        (*(v14 + 8))(v12, v13);
LABEL_17:
        v36 = *(v0 + 232);
        goto LABEL_18;
      }

      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
    }

    v37 = *(v0 + 344);
    sub_26135BC34(*(v0 + 320));
    v38 = v37 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler;
    swift_beginAccess();
    v39 = *v38;
    v40 = *(v0 + 344);
    v41 = *(v0 + 320);
    v42 = *(v0 + 296);
    v43 = *(v0 + 304);
    if (*v38)
    {
      v44 = *(v38 + 8);
      swift_endAccess();
      sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
      v45 = swift_allocError();
      (*(v43 + 16))(v46, v41, v42);

      v39(0, 0, v45);

      sub_26124A228(v39, v44);
      (*(v43 + 8))(v41, v42);
    }

    else
    {
      (*(v43 + 8))(*(v0 + 320), *(v0 + 296));
      swift_endAccess();
    }

    goto LABEL_17;
  }

  v16 = *(v0 + 328);

  v17 = sub_26129BA7C();
  sub_26125A870(v17, v16, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    sub_26124C718(*(v0 + 328), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v20 = *(v0 + 384);
    v21 = v20;
    v22 = sub_2613A122C();
    v23 = sub_2613A1D9C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 384);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v24;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_261243000, v22, v23, "Unexpected error during prepare: [ %@ ]", v25, 0xCu);
      sub_26124C718(v26, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v26, -1, -1);
      MEMORY[0x266701350](v25, -1, -1);
    }

    v29 = *(v0 + 328);

    (*(v19 + 8))(v29, v18);
  }

  v30 = *(v0 + 344) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler;
  swift_beginAccess();
  v31 = *v30;
  v32 = *(v0 + 384);
  v33 = *(v0 + 344);
  if (!*v30)
  {

    goto LABEL_19;
  }

  v34 = *(v30 + 8);
  (*(*(v0 + 272) + 104))(*(v0 + 280), *MEMORY[0x277D436D0], *(v0 + 264));
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
  v35 = swift_allocError();

  sub_26139F31C();
  v31(0, 0, v35);

  sub_26124A228(v31, v34);
  v36 = v35;
LABEL_18:

LABEL_19:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_26135230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26139F64C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613523CC, 0, 0);
}

uint64_t sub_2613523CC()
{
  v1 = v0[2] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask;
  v2 = *v1;
  v0[6] = *v1;
  if (v2)
  {
    v0[7] = *(v1 + 8);

    v9 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_261352554;

    return v9(0);
  }

  else
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[3];
    sub_26139F45C();
    sub_26139F5BC();
    (*(v6 + 8))(v5, v7);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_261352554()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);

  sub_26124A228(v2, v1);

  return MEMORY[0x2822009F8](sub_261352684, 0, 0);
}

uint64_t sub_261352684()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_26139F45C();
  sub_26139F5BC();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_2613527B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_2613A189C();
    if (a3)
    {
LABEL_3:
      v7 = sub_26139EE6C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_261352848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](sub_26135286C, 0, 0);
}

uint64_t sub_26135286C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    v6 = swift_task_alloc();
    v0[10] = v6;
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = v4;
    v6[5] = v3;
    v7 = swift_task_alloc();
    v0[11] = v7;
    v7[2] = v4;
    v7[3] = v3;
    v7[4] = v2;
    v7[5] = v5;
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_2613529D8;

    return sub_26134ED18(&unk_2613AD0F0, v6, sub_26135F184, v7);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2613529D8()
{

  return MEMORY[0x2822009F8](sub_261352B0C, 0, 0);
}

uint64_t sub_261352B0C()
{
  v1 = *(v0 + 72);
  *&v1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask] = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261352B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_261262AA4;

  return sub_261352C38(a2, a3, a4);
}

uint64_t sub_261352C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0770, &qword_2613AD0C8);
  v4[11] = swift_task_alloc();
  v5 = sub_26139FFAC();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_26139F64C();
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v4[17] = *(v7 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = sub_2613A147C();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v4[22] = *(v9 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v10 = sub_26139FF3C();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261352E70, 0, 0);
}

uint64_t sub_261352E70()
{
  v1 = v0[7];
  v2 = sub_2613A013C();
  v3 = MEMORY[0x277D43B98];
  v0[5] = v2;
  v0[6] = v3;
  v0[2] = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_261352F3C;
  v6 = v0[27];

  return sub_26134F598(v6, (v0 + 2));
}

uint64_t sub_261352F3C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_2613536D8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = sub_261353058;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261353058()
{
  v5 = (*(**(v0[10] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + 232) + **(**(v0[10] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + 232));
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_261353184;
  v2 = v0[24];
  v3 = v0[7];

  return v5(v2, v3);
}

uint64_t sub_261353184()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_26135379C;
  }

  else
  {
    v2 = sub_261353298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261353298()
{
  v1 = v0[9];
  v2 = (v0[10] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler);
  v3 = *v2;
  v4 = v2[1];
  *v2 = v0[8];
  v2[1] = v1;
  sub_26124A228(v3, v4);

  if (sub_2613A010C())
  {
    sub_26139F38C();
  }

  else
  {
    sub_26139F37C();
  }

  v38 = v0[27];
  v41 = v0[26];
  v45 = v0[24];
  v42 = v0[25];
  v43 = v0[23];
  v31 = v0[21];
  v32 = v0[20];
  v33 = v0[22];
  v5 = v0[18];
  v44 = v0[19];
  v6 = v0[16];
  v7 = v0[15];
  v39 = v0[13];
  v40 = v0[12];
  v8 = v0[10];
  v36 = v0[14];
  v37 = v0[11];
  v34 = v0[7];
  v30 = *(v6 + 16);
  v30(v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  v11 = *(v6 + 32);
  v35 = v7;
  v11(v10 + v9, v5, v7);
  v12 = (v8 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader);
  v13 = *(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader);
  v14 = *(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader + 8);
  *v12 = sub_26135F2BC;
  v12[1] = v10;
  sub_26124A228(v13, v14);
  (v30)(v5, v44, v7);
  v15 = swift_allocObject();
  v11(v15 + v9, v5, v7);
  v16 = (v8 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener);
  v17 = *(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener);
  v18 = *(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener + 8);
  *v16 = sub_26135F35C;
  v16[1] = v15;
  sub_26124A228(v17, v18);
  v19 = swift_allocObject();
  v20 = v8;
  swift_unknownObjectWeakInit();
  (*(v31 + 16))(v43, v45, v32);
  v21 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  (*(v31 + 32))(v22 + v21, v43, v32);
  *(v22 + ((v33 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v23 = (v20 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v25 = *(v20 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v24 = *(v20 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask + 8);
  *v23 = &unk_2613AD108;
  v23[1] = v22;
  v26 = v34;

  sub_26124A228(v25, v24);

  sub_26135408C(v36);
  v27 = sub_2613A014C();
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  sub_26134D058(v38, v36, v37);
  sub_26124C718(v37, &qword_27FEA0770, &qword_2613AD0C8);
  (*(v39 + 8))(v36, v40);
  (*(v6 + 8))(v44, v35);
  (*(v31 + 8))(v45, v32);
  (*(v41 + 8))(v38, v42);

  v28 = v0[1];

  return v28();
}

uint64_t sub_2613536D8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26135379C()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_261353888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261353938, 0, 0);
}

uint64_t sub_261353938()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
    v0[13] = v2;

    v3 = sub_2613A010C();
    v10 = (*(*v2 + 240) + **(*v2 + 240));
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_261353AF4;
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[6];

    return v10(v5, v3 & 1, v6, v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_261353AF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_261353DE4;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_261353C24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261353C24()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse) = *(v0 + 128);

  v4 = sub_26129BA7C();
  sub_26125A870(v4, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    v7 = *(v0 + 88);

    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261243000, v8, v9, "Identity information read successfully", v10, 2u);
      MEMORY[0x266701350](v10, -1, -1);
    }

    v11 = *(v0 + 88);
    v12 = *(v0 + 96);

    (*(v6 + 8))(v11, v5);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_261353DE4()
{
  v1 = v0[10];

  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[10], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[15];
    v6 = v5;
    v7 = sub_2613A122C();
    v8 = sub_2613A1D8C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[15];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v9;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_261243000, v7, v8, "Error reading identity information: [%@]", v10, 0xCu);
      sub_26124C718(v11, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    v14 = v0[10];

    (*(v4 + 8))(v14, v3);
  }

  v15 = v0[15];
  v16 = v0[12];
  sub_26139F33C();
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
  v17 = swift_allocError();
  sub_26134E61C(v15, v18);

  v19 = *&v16[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError];
  *&v16[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError] = v17;

  v20 = v0[1];

  return v20();
}

uint64_t sub_26135408C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0780, &qword_2613AD110);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_26139FD9C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = sub_2613A012C();
  sub_26135A16C(v12, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_26124C718(v4, &qword_27FEA0780, &qword_2613AD110);
  }

  else
  {
    v13 = *(v6 + 32);
    v13(v11, v4, v5);
    v14 = *(sub_2613A012C() + 16);

    if (v14 == 1)
    {
      v13(v9, v11, v5);
      v15 = (*(v6 + 88))(v9, v5);
      if (v15 == *MEMORY[0x277D43928])
      {
        v16 = *MEMORY[0x277D43A20];
        v17 = sub_26139FFAC();
        v18 = *(*(v17 - 8) + 104);
        v19 = a1;
        v20 = v16;
      }

      else
      {
        if (v15 == *MEMORY[0x277D43920])
        {
          v22 = MEMORY[0x277D43A18];
          goto LABEL_9;
        }

        v26 = *MEMORY[0x277D43930];
        v27 = v15;
        v17 = sub_26139FFAC();
        v18 = *(*(v17 - 8) + 104);
        if (v27 == v26)
        {
          v25 = *MEMORY[0x277D43A40];
          v24 = a1;
          return v18(v24, v25, v17);
        }

        v20 = *MEMORY[0x277D43A20];
        v19 = a1;
      }

      v18(v19, v20, v17);
      return (*(v6 + 8))(v9, v5);
    }

    (*(v6 + 8))(v11, v5);
  }

  v22 = MEMORY[0x277D43A28];
LABEL_9:
  v23 = *v22;
  v17 = sub_26139FFAC();
  v18 = *(*(v17 - 8) + 104);
  v24 = a1;
  v25 = v23;
  return v18(v24, v25, v17);
}

uint64_t sub_2613543D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](sub_2613543FC, 0, 0);
}

uint64_t sub_2613543FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    v6 = swift_task_alloc();
    v0[10] = v6;
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = v4;
    v6[5] = v3;
    v7 = swift_task_alloc();
    v0[11] = v7;
    v7[2] = v4;
    v7[3] = v3;
    v7[4] = v2;
    v7[5] = v5;
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_261354568;

    return sub_26134ED18(&unk_2613AD0A8, v6, sub_26135EF64, v7);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}