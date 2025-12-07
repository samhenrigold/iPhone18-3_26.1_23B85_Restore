uint64_t sub_248020F04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_248020F90(v3);
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

uint64_t sub_248020FA4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_248030778();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_248021088(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2480210C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2480210A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2480211D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2480210C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480078E4(&qword_27EE83F20, &qword_24803EC48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_2480211D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2480078E4(&qword_27EE83F30, &qword_24803EC58);
  v10 = *(sub_248030778() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_248030778() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2480213C0()
{
  v63 = *MEMORY[0x277D85DE8];
  v0 = sub_248030778();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v52 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  sub_248029190(&v52 - v8);
  v59 = v9;
  v16 = sub_248030C78();
  LODWORD(v57) = v16;
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v17 = qword_27EE85A40;
  v56 = qword_27EE85A40;
  v18 = sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v19 = swift_allocObject();
  v58 = xmmword_24803DE50;
  *(v19 + 16) = xmmword_24803DE50;
  v20 = sub_248030748();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x277D837D0];
  v23 = sub_24800A52C();
  *(v19 + 64) = v23;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  sub_2480308C8(v57, &dword_247F67000, v17, "attempting to delete model at %@", 32, 2, v19);

  v55 = objc_opt_self();
  v24 = [v55 defaultManager];
  v25 = [v24 temporaryDirectory];
  sub_248030728();

  sub_2480306F8();
  v26 = *(v1 + 8);
  v26(v4, v0);
  v27 = sub_248030C78();
  v54 = v18;
  v28 = swift_allocObject();
  *(v28 + 16) = v58;
  v29 = sub_248030748();
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = v23;
  v53 = v23;
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v31 = v56;
  sub_2480308C8(v27, &dword_247F67000, v56, "Core ML temp folder is %@", 25, 2, v28);

  v32 = sub_248030748();
  v34 = v33;
  v57 = v0;
  v35 = v26;
  v36 = v59;
  v26(v7, v0);
  v62[0] = sub_248030748();
  v62[1] = v37;
  v60 = v32;
  v61 = v34;
  sub_2480219D0();
  LOBYTE(v25) = sub_248030D58();

  if ((v25 & 1) == 0)
  {
    v48 = sub_248030C88();
    sub_2480308C8(v48, &dword_247F67000, v31, "Attempting to delete a model outside the temp folder", 52, 2, MEMORY[0x277D84F90]);
    goto LABEL_11;
  }

  v38 = sub_248030C78();
  sub_2480308C8(v38, &dword_247F67000, v31, "model is inside temp folder", 27, 2, MEMORY[0x277D84F90]);
  v39 = [v55 defaultManager];
  v40 = sub_2480306E8();
  v62[0] = 0;
  v41 = [v39 removeItemAtURL:v40 error:v62];

  if (v41)
  {
    v42 = v62[0];
    v43 = sub_248030C78();
    v44 = swift_allocObject();
    *(v44 + 16) = v58;
    v45 = sub_248030748();
    v46 = v53;
    *(v44 + 56) = MEMORY[0x277D837D0];
    *(v44 + 64) = v46;
    *(v44 + 32) = v45;
    *(v44 + 40) = v47;
    sub_2480308C8(v43, &dword_247F67000, v31, "successfully deleted model at %@", 32, 2, v44);

LABEL_11:
    v35(v36, v57);
    return;
  }

  v49 = v62[0];
  v50 = sub_2480306B8();

  swift_willThrow();
  v35(v36, v57);
  v51 = MEMORY[0x277D837D0];
  v10 = sub_248030C88();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v11 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24803DE50;
  swift_getErrorValue();
  v13 = sub_248030F18();
  v15 = v14;
  *(v12 + 56) = v51;
  *(v12 + 64) = sub_24800A52C();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_2480308C8(v10, &dword_247F67000, v11, "failed to delete model: %@", 26, 2, v12);
}

unint64_t sub_2480219D0()
{
  result = qword_27EE83EE8;
  if (!qword_27EE83EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83EE8);
  }

  return result;
}

void sub_248021A24()
{
  v44[1] = *MEMORY[0x277D85DE8];
  v0 = sub_248030778();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - v5;
  if (qword_27EE83A20 != -1)
  {
    swift_once();
  }

  v7 = sub_2480309A8();
  v8 = sub_248006DF0(v7, qword_27EE83ED0);
  v9 = sub_248030C78();
  v40 = v8;
  v10 = sub_248030988();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_247F67000, v10, v9, "About to delete Core ML temp folder", v11, 2u);
    MEMORY[0x24C1C47E0](v11, -1, -1);
  }

  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v14 = [v13 temporaryDirectory];
  sub_248030728();

  sub_2480306F8();
  v15 = *(v1 + 8);
  v42 = v1 + 8;
  v43 = v0;
  v41 = v15;
  v15(v4, v0);
  v16 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v17 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v18 = swift_allocObject();
  v39 = xmmword_24803DE50;
  *(v18 + 16) = xmmword_24803DE50;
  v19 = sub_248030748();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x277D837D0];
  v22 = sub_24800A52C();
  *(v18 + 64) = v22;
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_2480308C8(v16, &dword_247F67000, v17, "Core ML temp folder is %@", 25, 2, v18);

  v23 = sub_248030C78();
  v24 = sub_248030988();
  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_247F67000, v24, v23, "Got location of temp folder", v25, 2u);
    MEMORY[0x24C1C47E0](v25, -1, -1);
  }

  v26 = [v12 defaultManager];
  v27 = sub_2480306E8();
  v44[0] = 0;
  v28 = [v26 removeItemAtURL:v27 error:v44];

  if (v28)
  {
    v29 = v44[0];
    v30 = sub_248030C78();
    v31 = sub_248030988();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_247F67000, v31, v30, "Successfully deleted Core ML temp folder", v32, 2u);
      MEMORY[0x24C1C47E0](v32, -1, -1);
    }

    v41(v6, v43);
  }

  else
  {
    v33 = v44[0];
    v34 = sub_2480306B8();

    swift_willThrow();
    v41(v6, v43);
    v35 = sub_248030C88();
    v36 = swift_allocObject();
    *(v36 + 16) = v39;
    swift_getErrorValue();
    v37 = sub_248030F18();
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = v22;
    *(v36 + 32) = v37;
    *(v36 + 40) = v38;
    sub_2480308C8(v35, &dword_247F67000, v17, "Failed to delete temp folder: %@", 32, 2, v36);
  }
}

uint64_t sub_248021F60(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v112[1] = *MEMORY[0x277D85DE8];
  v2 = sub_248030868();
  v108 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v103 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v92 - v5;
  v7 = sub_2480309B8();
  v110 = *(v7 - 8);
  v111 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v107 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v92 - v10;
  v12 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v13 = qword_27EE85A40;
  v102 = sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v14 = swift_allocObject();
  v104 = xmmword_24803DE50;
  *(v14 + 16) = xmmword_24803DE50;
  v15 = sub_248030748();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x277D837D0];
  v101 = sub_24800A52C();
  *(v14 + 64) = v101;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_2480308C8(v12, &dword_247F67000, v13, "Will unzip file at %@", 21, 2, v14);

  v18 = sub_248030748();
  MEMORY[0x24C1C1620](v18);
  sub_248030848();
  v19 = sub_248030828();
  if (v19)
  {
    v20 = v19;
    v100 = v13;
    v112[0] = MEMORY[0x277D84F90];
    v21 = sub_248022E18();
    v22 = sub_2480078E4(&qword_27EE83EF8, &qword_24803EC30);
    v23 = sub_248022EB0(&qword_27EE83F00, &qword_27EE83EF8, &qword_24803EC30, MEMORY[0x277D83970]);
    sub_248030D78();
    v105 = v20;
    v24 = sub_248030818();
    v25 = *(v108 + 8);
    v25(v6, v2);
    if (v24)
    {
      v26 = sub_2480308B8();
      v27 = v23;
      v28 = v26;
      v112[0] = MEMORY[0x277D84F90];
      v95 = v22;
      v97 = v27;
      v29 = v25;
      sub_248030D78();
      v94 = v28;
      v30 = sub_248030878();
      v98 = v29;
      v29(v6, v2);
      v99 = v30;
      if (v30)
      {
        v92 = v21;
        v96 = v24;
        v93 = v11;
        v31 = objc_opt_self();
        v32 = [v31 defaultManager];
        sub_248030748();
        v33 = sub_248030B28();

        v34 = [v32 fileExistsAtPath_];

        if (v34)
        {
          goto LABEL_9;
        }

        v35 = [v31 defaultManager];
        sub_248030748();
        v36 = sub_248030B28();

        v112[0] = 0;
        v37 = [v35 createDirectoryAtPath:v36 withIntermediateDirectories:0 attributes:0 error:v112];

        if (v37)
        {
          v38 = v112[0];
LABEL_9:
          v39 = sub_248030748();
          MEMORY[0x24C1C1620](v39);
          sub_2480078E4(&qword_27EE83F08, &qword_24803EC38);
          v40 = swift_allocObject();
          v40[1] = v104;
          sub_248030858();
          v112[0] = v40;
          sub_248030D78();
          v41 = sub_248030888();
          v98(v6, v2);
          if (v41)
          {
            v42 = sub_248030C78();
            v43 = MEMORY[0x277D84F90];
            sub_2480308C8(v42, &dword_247F67000, v100, "Starting decompression", 22, 2, MEMORY[0x277D84F90]);
            v112[0] = v43;
            v44 = v103;
            sub_248030D78();
            v45 = v109;
            v46 = sub_2480308A8();
            v47 = v111;
            if (v45)
            {
              v98(v44, v2);
              sub_248030898();
              v90 = *(v110 + 8);
              v90(v107, v47);
            }

            else
            {
              v83 = v46;
              v98(v44, v2);
              v84 = sub_248030C78();
              v85 = swift_allocObject();
              *(v85 + 16) = v104;
              v112[0] = v83;
              v86 = sub_248030EC8();
              v87 = v100;
              v88 = v101;
              *(v85 + 56) = MEMORY[0x277D837D0];
              *(v85 + 64) = v88;
              *(v85 + 32) = v86;
              *(v85 + 40) = v89;
              sub_2480308C8(v84, &dword_247F67000, v87, "Decompression succeeded - bytes processed: %@", 45, 2, v85);

              sub_248030898();
              v90 = *(v110 + 8);
              v47 = v111;
              v90(v107, v111);
            }

            sub_248030898();
            v91 = v93;

            sub_248030838();

            sub_248030838();
            v90(v91, v47);
          }

          else
          {
            v72 = v110;
            v71 = v111;
            v73 = v109;
            if (qword_27EE83A20 != -1)
            {
              swift_once();
            }

            v74 = sub_2480309A8();
            sub_248006DF0(v74, qword_27EE83ED0);
            v75 = sub_248030C88();
            v76 = sub_248030988();
            if (os_log_type_enabled(v76, v75))
            {
              v77 = swift_slowAlloc();
              *v77 = 0;
              _os_log_impl(&dword_247F67000, v76, v75, "Unable to create extract stream", v77, 2u);
              MEMORY[0x24C1C47E0](v77, -1, -1);
            }

            v78 = *(v72 + 8);
            v78(v107, v71);
            sub_248030898();
            v79 = v73;
            if (v73)
            {

              v79 = 0;
            }

            sub_248030838();
            if (v79)
            {
            }

            sub_248030838();
            v78(v93, v71);
          }
        }

        v80 = v112[0];
        sub_2480306B8();

        swift_willThrow();
        sub_248030898();
        v82 = v110;
        v81 = v111;

        sub_248030838();

        sub_248030838();
        (*(v82 + 8))(v93, v81);
      }

      v56 = v11;
      if (qword_27EE83A20 != -1)
      {
        swift_once();
      }

      v64 = sub_2480309A8();
      sub_248006DF0(v64, qword_27EE83ED0);
      v65 = sub_248030C88();
      v66 = sub_248030988();
      v67 = os_log_type_enabled(v66, v65);
      v68 = v109;
      v61 = v110;
      if (v67)
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_247F67000, v66, v65, "Unable to create decode stream", v69, 2u);
        MEMORY[0x24C1C47E0](v69, -1, -1);
      }

      sub_248030838();
      v70 = v68;
      if (v68)
      {

        v70 = 0;
      }

      sub_248030838();
      if (v70)
      {

        return (*(v61 + 8))(v56, v111);
      }
    }

    else
    {
      v56 = v11;
      if (qword_27EE83A20 != -1)
      {
        swift_once();
      }

      v57 = sub_2480309A8();
      sub_248006DF0(v57, qword_27EE83ED0);
      v58 = sub_248030C88();
      v59 = sub_248030988();
      v60 = os_log_type_enabled(v59, v58);
      v62 = v109;
      v61 = v110;
      if (v60)
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_247F67000, v59, v58, "Unable to create decompression stream", v63, 2u);
        MEMORY[0x24C1C47E0](v63, -1, -1);
      }

      sub_248030838();
      if (v62)
      {

        return (*(v61 + 8))(v56, v111);
      }
    }

    (*(v61 + 8))(v56, v111);
  }

  v48 = v11;
  if (qword_27EE83A20 != -1)
  {
    swift_once();
  }

  v49 = sub_2480309A8();
  sub_248006DF0(v49, qword_27EE83ED0);
  v50 = sub_248030C88();
  v51 = sub_248030988();
  v52 = os_log_type_enabled(v51, v50);
  v53 = v110;
  if (v52)
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_247F67000, v51, v50, "Unable to create read file stream", v54, 2u);
    MEMORY[0x24C1C47E0](v54, -1, -1);
  }

  return (*(v53 + 8))(v48, v111);
}

unint64_t sub_248022E18()
{
  result = qword_27EE83EF0;
  if (!qword_27EE83EF0)
  {
    sub_248030868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83EF0);
  }

  return result;
}

uint64_t sub_248022EB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24800ACE4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_248022EFC(void *a1)
{
  v20 = sub_248030778();
  v19 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SegmentPayload(0);
  sub_24801EAD0(a1[2]);
  sub_248030708();

  v4 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v5 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v6 = swift_allocObject();
  v17 = xmmword_24803DE50;
  *(v6 + 16) = xmmword_24803DE50;
  v7 = sub_248030738();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x277D837D0];
  v10 = sub_24800A52C();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_2480308C8(v4, &dword_247F67000, v5, "write(segment): Begin writing segment to URL: %@", 48, 2, v6);

  v11 = v18;
  sub_2480307C8();
  if (!v11)
  {
    v12 = sub_248030C78();
    v13 = swift_allocObject();
    *(v13 + 16) = v17;
    v14 = sub_248030738();
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = v10;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    sub_2480308C8(v12, &dword_247F67000, v5, "write(segment): Successfully wrote segment to URL: %@", 53, 2, v13);
  }

  return (*(v19 + 8))(v3, v20);
}

uint64_t sub_248023178(uint64_t a1)
{
  v2 = type metadata accessor for ModelLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SegmentPayload.init(data:number:count:modelToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for SegmentPayload(0) + 28);
  v9 = sub_248030808();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t type metadata accessor for SegmentPayload(uint64_t a1)
{
  result = qword_27EE83F38;
  if (!qword_27EE83F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SegmentPayload.data.getter()
{
  v1 = *v0;
  sub_2480123C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t SegmentPayload.modelToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SegmentPayload(0) + 28);
  v4 = sub_248030808();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_248023390(uint64_t a1)
{
  result = sub_248030808();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *CoreMLPerfRunnerServiceMessageHandler.__allocating_init(coordinator:channel:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_2480117E8(a1, v5);
  v8 = sub_2480242CC(v7, a2, v2, v5, v6);
  sub_248011838(a1);
  return v8;
}

void sub_248023480(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2480234E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2480309A8();
  sub_248008A94(v2, qword_27EE83F48);
  v3 = sub_248006DF0(v2, qword_27EE83F48);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v4 = sub_248006DF0(v2, qword_27EE85A48);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

void *CoreMLPerfRunnerServiceMessageHandler.init(coordinator:channel:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_2480117E8(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_248017A84(v9, a2, v2, v5, v6);
  sub_248011838(a1);
  return v11;
}

void sub_2480236A4(void *a1)
{
  v2 = sub_248030B28();
  v3 = [a1 stringForMessageKey_];

  if (v3)
  {
    v4 = sub_248030B38();
    v6 = v5;

    v7 = sub_248030C78();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    v8 = qword_27EE85A40;
    sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24803DE50;
    *(v9 + 56) = MEMORY[0x277D837D0];
    v10 = sub_24800A52C();
    *(v9 + 64) = v10;
    *(v9 + 32) = v4;
    *(v9 + 40) = v6;

    sub_2480308C8(v7, &dword_247F67000, v8, "command is %@", 13, 2, v9);

    if (v4 == 0x444950746567 && v6 == 0xE600000000000000 || (sub_248030EE8() & 1) != 0)
    {

      sub_2480239D8(a1);
    }

    else
    {
      v14 = sub_248030C88();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_24803DE50;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = v10;
      *(v15 + 32) = v4;
      *(v15 + 40) = v6;
      sub_2480308C8(v14, &dword_247F67000, v8, "invalid command: %@", 19, 2, v15);
    }
  }

  else
  {
    if (qword_27EE83A28 != -1)
    {
      swift_once();
    }

    v11 = sub_2480309A8();
    sub_248006DF0(v11, qword_27EE83F48);
    v12 = sub_248030C88();
    log = sub_248030988();
    if (os_log_type_enabled(log, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_247F67000, log, v12, "no command received in perf runner service.", v13, 2u);
      MEMORY[0x24C1C47E0](v13, -1, -1);
    }
  }
}

void sub_2480239D8(void *a1)
{
  v3 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32[-v4];
  v6 = sub_248030808();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_248030B28();
  v11 = [a1 stringForMessageKey_];

  if (!v11)
  {
    goto LABEL_4;
  }

  sub_248030B38();

  sub_2480307D8();

  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v5, v6);
    v16 = v1[5];
    v17 = v1[6];
    sub_2480118BC(v1 + 2, v16);
    (*(v17 + 16))(&v33, v9, v16, v17);
    v18 = v33;
    if (BYTE4(v33) == 1)
    {
      v19 = sub_248030C88();
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      v20 = qword_27EE85A40;
      sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_24803E320;
      v22 = MEMORY[0x277D83C10];
      *(v21 + 56) = MEMORY[0x277D83B88];
      *(v21 + 64) = v22;
      *(v21 + 32) = v18 + 101;
      v32[7] = v18;
      sub_248011FA0();
      v23 = sub_248030F18();
      v25 = v24;
      *(v21 + 96) = MEMORY[0x277D837D0];
      *(v21 + 104) = sub_24800A52C();
      *(v21 + 72) = v23;
      *(v21 + 80) = v25;
      sub_2480308C8(v19, &dword_247F67000, v20, "runGetPidCommand error code %d: %@", 34, 2, v21);

      if (qword_27EE83A28 != -1)
      {
        swift_once();
      }

      v26 = sub_2480309A8();
      sub_248006DF0(v26, qword_27EE83F48);
      v27 = sub_248030C78();
      v28 = sub_248030988();
      if (!os_log_type_enabled(v28, v27))
      {
        v18 = 0;
        goto LABEL_22;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_247F67000, v28, v27, "sending 0 as pid reply from runGetPidCommand", v29, 2u);
      v18 = 0;
    }

    else
    {
      if (qword_27EE83A28 != -1)
      {
        swift_once();
      }

      v30 = sub_2480309A8();
      sub_248006DF0(v30, qword_27EE83F48);
      v31 = sub_248030C78();
      v28 = sub_248030988();
      if (!os_log_type_enabled(v28, v31))
      {
        goto LABEL_22;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_247F67000, v28, v31, "sendingReply from runGetPidCommand", v29, 2u);
    }

    MEMORY[0x24C1C47E0](v29, -1, -1);
LABEL_22:

    sub_248023F2C(a1, v18);
    (*(v7 + 8))(v9, v6);
    return;
  }

  sub_24802446C(v5);
LABEL_4:
  if (qword_27EE83A28 != -1)
  {
    swift_once();
  }

  v12 = sub_2480309A8();
  sub_248006DF0(v12, qword_27EE83F48);
  v13 = sub_248030C88();
  v14 = sub_248030988();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_247F67000, v14, v13, "no modelToken provided", v15, 2u);
    MEMORY[0x24C1C47E0](v15, -1, -1);
  }
}

void sub_248023F2C(void *a1, uint64_t a2)
{
  if (qword_27EE83A28 != -1)
  {
    swift_once();
  }

  v5 = sub_2480309A8();
  sub_248006DF0(v5, qword_27EE83F48);
  v6 = sub_248030C78();
  v7 = sub_248030988();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_247F67000, v7, v6, "starting sendPidReply", v8, 2u);
    MEMORY[0x24C1C47E0](v8, -1, -1);
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v10 = [objc_opt_self() messageWithObject_];

  v11 = [a1 newReplyWithMessage_];
  v12 = *(v2 + 56);
  v17[4] = sub_248024180;
  v17[5] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_248023480;
  v17[3] = &unk_285A19A10;
  v13 = _Block_copy(v17);
  [v12 sendMessage:v11 replyHandler:v13];
  _Block_release(v13);
  v14 = sub_248030C78();
  v15 = sub_248030988();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_247F67000, v15, v14, "finished sendPidReply", v16, 2u);
    MEMORY[0x24C1C47E0](v16, -1, -1);
  }
}

void sub_248024180(uint64_t a1, uint64_t a2)
{
  if (qword_27EE83A28 != -1)
  {
    swift_once();
  }

  v2 = sub_2480309A8();
  sub_248006DF0(v2, qword_27EE83F48);
  v3 = sub_248030C78();
  log = sub_248030988();
  if (os_log_type_enabled(log, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_247F67000, log, v3, "received reply from message send in sendPidReply", v4, 2u);
    MEMORY[0x24C1C47E0](v4, -1, -1);
  }
}

uint64_t CoreMLPerfRunnerServiceMessageHandler.deinit()
{
  sub_248011838((v0 + 16));

  return v0;
}

uint64_t CoreMLPerfRunnerServiceMessageHandler.__deallocating_deinit()
{
  sub_248011838((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t *sub_2480242CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreMLPerfRunnerServiceMessageHandler();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  v12[5] = a4;
  v12[6] = a5;
  v13 = sub_248012270(v12 + 2);
  (*(v9 + 32))(v13, v11, a4);
  v12[7] = a2;
  return v12;
}

uint64_t sub_248024454(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24802446C(uint64_t a1)
{
  v2 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CoreMLModelWriterService.__allocating_init(channel:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithChannel_];

  return v3;
}

id CoreMLModelWriterService.init(channel:)(uint64_t a1)
{
  if (qword_27EE839E8 != -1)
  {
    swift_once();
  }

  v3 = qword_27EE85A38;
  type metadata accessor for CoreMLModelWriterServiceMessageHandler();
  v4 = swift_allocObject();
  v4[5] = type metadata accessor for CoreMLPerfCoordinator();
  v4[6] = &protocol witness table for CoreMLPerfCoordinator;
  v4[2] = v3;
  v4[7] = a1;
  *&v1[OBJC_IVAR____TtC24DVTInstrumentsFoundation24CoreMLModelWriterService_messageHandler] = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CoreMLModelWriterService();

  return objc_msgSendSuper2(&v6, sel_initWithChannel_, a1);
}

id CoreMLModelWriterService.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v4 = sub_2480309A8();
  sub_248006DF0(v4, qword_27EE85A48);
  v5 = sub_248030C78();
  v6 = sub_248030988();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_247F67000, v6, v5, "ModelWriterService - deinit", v7, 2u);
    MEMORY[0x24C1C47E0](v7, -1, -1);
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CoreMLModelWriterService();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

id CoreMLModelWriterService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessorTraceTapMemoHandlerDelegate.__allocating_init(fileReadLength:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___DTProcessorTraceTapMemoHandlerDelegate_fileReadLength] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ProcessorTraceTapMemoHandlerDelegate.init(fileReadLength:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DTProcessorTraceTapMemoHandlerDelegate_fileReadLength] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProcessorTraceTapMemoHandlerDelegate();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_248024AC4(void *a1, void *a2)
{
  v3 = v2;
  v49[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for ProcessorTraceTapMessage.FileSharingType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_248030778();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProcessorTraceTapMemo(0);
  if (swift_dynamicCastClass())
  {
    v43 = v12;
    v44 = v10;
    v46 = v9;
    v47 = v8;
    v13 = objc_allocWithZone(DVTFileStream);
    v45 = a1;
    v14 = sub_2480306E8();
    v15 = [v13 initWithURL_];

    v16 = OBJC_IVAR___DTProcessorTraceTapMemoHandlerDelegate_fileReadLength;
    if ([v15 hasData])
    {
      do
      {
        v17 = objc_autoreleasePoolPush();
        v18 = [v15 read:*(v3 + v16) error:0];
        v19 = v3;
        v20 = sub_2480307B8();
        v22 = v21;

        v23 = sub_2480307A8();
        [a2 handleBulkData_];

        v24 = v20;
        v3 = v19;
        sub_2480081DC(v24, v22);
        objc_autoreleasePoolPop(v17);
      }

      while (([v15 hasData] & 1) != 0);
    }

    v25 = [objc_opt_self() defaultManager];
    v26 = [v15 fileURL];
    v27 = v43;
    sub_248030728();

    v28 = sub_2480306E8();
    v29 = v44;
    v30 = v46;
    (*(v44 + 8))(v27, v46);
    v49[0] = 0;
    v31 = [v25 removeItemAtURL:v28 error:v49];

    if (v31)
    {
      v32 = v49[0];
    }

    else
    {
      v37 = v49[0];
      v38 = sub_2480306B8();

      swift_willThrow();
    }

    v39 = v47;
    (*(v29 + 56))(v47, 1, 1, v30);
    v40 = type metadata accessor for ProcessorTraceTapMessage(0);
    v41 = objc_allocWithZone(v40);
    sub_248008230(v39, v41 + OBJC_IVAR___DTProcessorTraceTapMessage_sharingType);
    v48.receiver = v41;
    v48.super_class = v40;
    v42 = objc_msgSendSuper2(&v48, sel_init);
    sub_24802514C(v39);
    [a2 sendFrameMessage_];
  }

  else
  {
    if (qword_27EE83A18 != -1)
    {
      swift_once();
    }

    v33 = sub_2480309A8();
    sub_248006DF0(v33, qword_27EE85A60);
    v47 = sub_248030988();
    v34 = sub_248030C88();
    if (os_log_type_enabled(v47, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_247F67000, v47, v34, "Wrong memo type", v35, 2u);
      MEMORY[0x24C1C47E0](v35, -1, -1);
    }

    v36 = v47;
  }
}

id ProcessorTraceTapMemoHandlerDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessorTraceTapMemoHandlerDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessorTraceTapMemoHandlerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24802514C(uint64_t a1)
{
  v2 = type metadata accessor for ProcessorTraceTapMessage.FileSharingType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2480251A8(void *a1, void *a2)
{
  v4 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10 && (v11 = v10, type metadata accessor for ProcessorTraceTapMemo(0), (v12 = swift_dynamicCastClass()) != 0))
  {
    v13 = v12;
    v14 = a2;
    v15 = a1;
    v16 = [v11 tapHandler];
    v17 = OBJC_IVAR___DTProcessorTraceTapMemo_traceURL;
    v18 = sub_248030778();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v9, v13 + v17, v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    sub_248008294(v9, v7);
    v20 = 0;
    if ((*(v19 + 48))(v7, 1, v18) != 1)
    {
      v20 = sub_2480306E8();
      (*(v19 + 8))(v7, v18);
    }

    v16[2](v16, v20);

    _Block_release(v16);
    return sub_248008304(v9);
  }

  else
  {
    result = sub_248030E18();
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of ProcessorTraceTapMemoHandlerDelegate.send(_:toClientUsing:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
}

unint64_t DTTapStatus.init(type:code:isAsync:)(unint64_t result, unsigned __int16 a2, char a3)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v3 = a2 | ((result & 0xF) << 27);
    if (a3)
    {
      return v3 | 0x80000000;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

id sub_248025584(void *a1)
{
  v2 = v1;
  v4 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_248030778();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248025D20();
  v11 = sub_248030CF8();
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  sub_248030B38();

  sub_248030758();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_248008304(v6);
LABEL_4:
    (*(v8 + 56))(&v2[OBJC_IVAR___DTProcessorTraceTapMessage_sharingType], 1, 1, v7);
    goto LABEL_6;
  }

  v13 = *(v8 + 32);
  v13(v10, v6, v7);
  v14 = OBJC_IVAR___DTProcessorTraceTapMessage_sharingType;
  v13(&v2[OBJC_IVAR___DTProcessorTraceTapMessage_sharingType], v10, v7);
  (*(v8 + 56))(&v2[v14], 0, 1, v7);
LABEL_6:
  v15 = type metadata accessor for ProcessorTraceTapMessage(0);
  v18.receiver = v2;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);

  if (v16)
  {
  }

  return v16;
}

uint64_t sub_2480257F8(void *a1)
{
  v3 = type metadata accessor for ProcessorTraceTapMessage.FileSharingType(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248030778();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248008230(v1 + OBJC_IVAR___DTProcessorTraceTapMessage_sharingType, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_24802514C(v5);
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_248030748();
  v11 = sub_248030B28();

  v12 = sub_248030B28();
  [a1 encodeObject:v11 forKey:v12];

  return (*(v7 + 8))(v9, v6);
}

id ProcessorTraceTapMessage.__allocating_init(asKind:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initAsKind_];
}

id ProcessorTraceTapMessage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessorTraceTapMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessorTraceTapMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248025BF8(uint64_t a1)
{
  result = type metadata accessor for ProcessorTraceTapMessage.FileSharingType(319);
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

uint64_t sub_248025CC8(uint64_t a1)
{
  v1 = sub_248030778();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_248025D20()
{
  result = qword_27EE84010;
  if (!qword_27EE84010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE84010);
  }

  return result;
}

uint64_t XRRecountConfiguration.analysisMode.getter()
{
  v1 = *(v0 + OBJC_IVAR___XRRecountConfiguration_analysisMode);

  return v1;
}

id sub_248025DD0(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_248030B28();

  return v3;
}

uint64_t XRRecountConfiguration.countingMode.getter()
{
  v1 = *(v0 + OBJC_IVAR___XRRecountConfiguration_countingMode);

  return v1;
}

id XRRecountConfiguration.init(from:)(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = sub_2480118BC(a1, a1[3]);
    v4 = *(v1 - 8);
    MEMORY[0x28223BE20](v3);
    v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_248030ED8();
    (*(v4 + 8))(v6, v1);
    sub_248011838(a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromAttribute_];
  swift_unknownObjectRelease();
  return v8;
}

id XRRecountConfiguration.init(from:)(uint64_t a1)
{
  sub_248026164(a1, v14);
  if (v15)
  {
    if (swift_dynamicCast())
    {
      v4 = v11;
      v3 = v12;
      v5 = &v1[OBJC_IVAR___XRRecountConfiguration_analysisMode];
      *v5 = 0x656E656C74746F62;
      *(v5 + 1) = 0xEB00000000736B63;
LABEL_9:
      v8 = &v1[OBJC_IVAR___XRRecountConfiguration_countingMode];
      *v8 = v4;
      *(v8 + 1) = v3;
      v13.receiver = v1;
      v13.super_class = XRRecountConfiguration;
      v9 = objc_msgSendSuper2(&v13, sel_init);
      sub_2480261D4(a1);
      return v9;
    }
  }

  else
  {
    sub_2480261D4(v14);
  }

  sub_248026164(a1, v14);
  if (v15)
  {
    sub_2480078E4(&qword_27EE83F10, &qword_24803EC40);
    if (swift_dynamicCast())
    {
      if (v11[2] == 2)
      {
        v6 = v11[5];
        v7 = &v1[OBJC_IVAR___XRRecountConfiguration_analysisMode];
        *v7 = v11[4];
        *(v7 + 1) = v6;
        v4 = v11[6];
        v3 = v11[7];

        goto LABEL_9;
      }

      sub_2480261D4(a1);
    }

    else
    {
      sub_2480261D4(a1);
    }
  }

  else
  {
    sub_2480261D4(a1);
    sub_2480261D4(v14);
  }

  type metadata accessor for XRRecountConfiguration();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_248026164(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480078E4(&unk_27EE84030, &qword_24803EDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480261D4(uint64_t a1)
{
  v2 = sub_2480078E4(&unk_27EE84030, &qword_24803EDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for XRRecountConfiguration()
{
  result = qword_27EE840A0;
  if (!qword_27EE840A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE840A0);
  }

  return result;
}

id XRRecountConfiguration.init(analysisMode:countingMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_248030B28();

  v6 = sub_248030B28();

  v7 = [v4 initWithAnalysisMode:v5 countingMode:v6];

  return v7;
}

{
  v5 = (v4 + OBJC_IVAR___XRRecountConfiguration_analysisMode);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + OBJC_IVAR___XRRecountConfiguration_countingMode);
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = XRRecountConfiguration;
  return objc_msgSendSuper2(&v8, sel_init);
}

id XRRecountConfiguration.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = sub_2480269F4(a1);

  return v2;
}

Swift::Void __swiftcall XRRecountConfiguration.encode(with:)(NSCoder with)
{
  v3 = [v1 analysisMode];
  if (!v3)
  {
    sub_248030B38();
    v3 = sub_248030B28();
  }

  v4 = sub_248030B28();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 countingMode];
  if (!v5)
  {
    sub_248030B38();
    v5 = sub_248030B28();
  }

  v6 = sub_248030B28();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

uint64_t XRRecountConfiguration.isEqual(_:)(uint64_t a1)
{
  sub_248026164(a1, v22);
  if (!v23)
  {
    sub_2480261D4(v22);
    goto LABEL_7;
  }

  type metadata accessor for XRRecountConfiguration();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    return v10 & 1;
  }

  v2 = [v21 analysisMode];
  v3 = sub_248030B38();
  v5 = v4;

  v6 = [v1 analysisMode];
  v7 = sub_248030B38();
  v9 = v8;

  if (v3 == v7 && v5 == v9)
  {

    goto LABEL_9;
  }

  v11 = sub_248030EE8();

  if ((v11 & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_9:
  v12 = [v21 countingMode];
  v13 = sub_248030B38();
  v15 = v14;

  v16 = [v1 countingMode];
  v17 = sub_248030B38();
  v19 = v18;

  if (v13 == v17 && v15 == v19)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_248030EE8();
  }

  return v10 & 1;
}

id XRRecountConfiguration.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_2480269F4(void *a1)
{
  v3 = sub_248030B28();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = v14;
      v6 = v15;
      goto LABEL_9;
    }
  }

  else
  {
    sub_2480261D4(&v19);
  }

  v5 = 0;
  v6 = 0xE000000000000000;
LABEL_9:
  v7 = &v1[OBJC_IVAR___XRRecountConfiguration_analysisMode];
  *v7 = v5;
  *(v7 + 1) = v6;
  v8 = sub_248030B28();
  v9 = [a1 decodeObjectForKey_];

  if (v9)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_2480261D4(&v19);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v10 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_17;
  }

  v10 = v14;
  v11 = v15;
LABEL_17:
  v12 = &v1[OBJC_IVAR___XRRecountConfiguration_countingMode];
  *v12 = v10;
  *(v12 + 1) = v11;
  v16.receiver = v1;
  v16.super_class = XRRecountConfiguration;
  return objc_msgSendSuper2(&v16, sel_init);
}

DVTInstrumentsFoundation::ProcessorTraceRecorderConfiguration::CopyImagesMode_optional __swiftcall ProcessorTraceRecorderConfiguration.CopyImagesMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Void __swiftcall ProcessorTraceRecorderConfiguration.encode(with:)(NSCoder with)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target + 4))
  {
    if (!*(v1 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target))
    {
      goto LABEL_6;
    }

    sub_2480067C4();
    v4 = sub_248030D08();
  }

  else
  {
    v4 = sub_248030F88();
  }

  v5 = v4;
  v6 = sub_248030B28();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

LABEL_6:
  if (*(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isProductionModeEnabled) == 1)
  {
    sub_2480067C4();
    v7 = sub_248030D08();
    v8 = sub_248030B28();
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }

  if (*(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isThrottlingEnabled) == 1)
  {
    sub_2480067C4();
    v9 = sub_248030D08();
    v10 = sub_248030B28();
    [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  }

  v11 = sub_248030C48();
  v12 = sub_248030B28();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  if (*(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave) == 1)
  {
    sub_2480067C4();
    v13 = sub_248030D08();
    v14 = sub_248030B28();
    [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  }

  if (*(v2 + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_recordingMode + 8) > 1u)
  {
    sub_2480067C4();
    v15 = sub_248030D08();
  }

  else
  {
    v15 = sub_248030FC8();
  }

  v16 = sub_248030B28();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = sub_248030C28();
  v18 = sub_248030B28();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
}

id ProcessorTraceRecorderConfiguration.init(coder:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isDriverEnabled] = 1;
  v5 = sub_248030B28();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (!*(&v40 + 1))
  {
    sub_2480261D4(&v41);
    goto LABEL_9;
  }

  sub_2480067C4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = &v2[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target];
    *&v2[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target] = 0;
    goto LABEL_10;
  }

  v7 = sub_248030F78();

  v8 = &v2[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target];
  if (v7)
  {
    *v8 = v7;
    v8[4] = 0;
    goto LABEL_11;
  }

  *v8 = 1;
LABEL_10:
  v8[4] = 1;
LABEL_11:
  v9 = sub_248030B28();
  v10 = [a1 decodeObjectForKey_];

  if (v10)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    sub_2480067C4();
    if (swift_dynamicCast())
    {
      v11 = [v38 BOOLValue];

      goto LABEL_19;
    }
  }

  else
  {
    sub_2480261D4(&v41);
  }

  v11 = 0;
LABEL_19:
  v2[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isProductionModeEnabled] = v11;
  v12 = sub_248030B28();
  v13 = [a1 decodeObjectForKey_];

  if (v13)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    sub_2480067C4();
    if (swift_dynamicCast())
    {
      v14 = [v38 BOOLValue];

      goto LABEL_27;
    }
  }

  else
  {
    sub_2480261D4(&v41);
  }

  v14 = 0;
LABEL_27:
  v2[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isThrottlingEnabled] = v14;
  v15 = sub_248030B28();
  v16 = [a1 decodeObjectForKey_];

  if (v16)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    sub_2480067C4();
    if (swift_dynamicCast())
    {
      v17 = [v38 integerValue];

      if (v17 >= 3)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      goto LABEL_37;
    }
  }

  else
  {
    sub_2480261D4(&v41);
  }

  v18 = 1;
LABEL_37:
  v2[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave] = v18;
  v19 = sub_248030B28();
  v20 = [a1 decodeObjectForKey_];

  if (v20)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    sub_2480067C4();
    if (swift_dynamicCast())
    {
      v21 = [v38 BOOLValue];

      goto LABEL_45;
    }
  }

  else
  {
    sub_2480261D4(&v41);
  }

  v21 = 0;
LABEL_45:
  v2[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave] = v21;
  v22 = sub_248030B28();
  v23 = [a1 decodeObjectForKey_];

  if (v23)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    sub_2480067C4();
    if (swift_dynamicCast())
    {

      v24 = 0;
      v25 = -1;
      goto LABEL_72;
    }
  }

  else
  {
    sub_2480261D4(&v41);
  }

  v26 = sub_248030B28();
  v27 = [a1 decodeObjectForKey_];

  if (v27)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    sub_2480067C4();
    if (swift_dynamicCast())
    {

      v24 = 0;
      v25 = 2;
      goto LABEL_72;
    }
  }

  else
  {
    sub_2480261D4(&v41);
  }

  v28 = sub_248030B28();
  v29 = [a1 decodeObjectForKey_];

  if (v29)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    sub_2480067C4();
    if (swift_dynamicCast())
    {
      v24 = [v38 unsignedLongLongValue];

      v25 = 0;
      goto LABEL_72;
    }
  }

  else
  {
    sub_2480261D4(&v41);
  }

  v30 = sub_248030B28();
  v31 = [a1 decodeObjectForKey_];

  if (v31)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (!*(&v40 + 1))
  {
    goto LABEL_78;
  }

  sub_2480067C4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_79:

    goto LABEL_80;
  }

  v24 = [v38 unsignedLongLongValue];

  v25 = 1;
LABEL_72:
  v32 = &v2[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_recordingMode];
  *v32 = v24;
  v32[8] = v25;
  v33 = sub_248030B28();
  v34 = [a1 decodeObjectForKey_];

  if (v34)
  {
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    sub_2480078E4(&qword_27EE84100, &qword_24803EDB8);
    if (swift_dynamicCast())
    {
      *&v2[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_systems] = v38;
      v37.receiver = v2;
      v37.super_class = ObjectType;
      v35 = objc_msgSendSuper2(&v37, sel_init);

      return v35;
    }

    goto LABEL_79;
  }

LABEL_78:

  sub_2480261D4(&v41);
LABEL_80:
  swift_deallocPartialClassInstance();
  return 0;
}

id ProcessorTraceRecorderConfiguration.__allocating_init(target:isProductionModeEnabled:isThrottlingEnabled:recordingMode:systems:copyImagesOnSave:decodeOnSave:)(int *a1, char a2, char a3, uint64_t *a4, uint64_t a5, char *a6, char a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = *a1;
  v17 = *(a1 + 4);
  v18 = *a4;
  v19 = *(a4 + 8);
  v20 = *a6;
  v15[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isDriverEnabled] = 1;
  v21 = &v15[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target];
  *v21 = v16;
  v21[4] = v17;
  v15[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isProductionModeEnabled] = a2;
  v15[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isThrottlingEnabled] = a3;
  v22 = &v15[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_recordingMode];
  *v22 = v18;
  v22[8] = v19;
  *&v15[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_systems] = a5;
  v15[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave] = v20;
  v15[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave] = a7;
  v24.receiver = v15;
  v24.super_class = v7;
  return objc_msgSendSuper2(&v24, sel_init);
}

id ProcessorTraceRecorderConfiguration.init(target:isProductionModeEnabled:isThrottlingEnabled:recordingMode:systems:copyImagesOnSave:decodeOnSave:)(int *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, char *a6, char a7)
{
  v13 = a2;
  ObjectType = swift_getObjectType();
  v16 = *a1;
  v17 = *(a1 + 4);
  v18 = *a4;
  v19 = *(a4 + 8);
  v20 = *a6;
  v7[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isDriverEnabled] = 1;
  v21 = &v7[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target];
  *v21 = v16;
  v21[4] = v17;
  v7[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isProductionModeEnabled] = v13;
  v7[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isThrottlingEnabled] = a3;
  v22 = &v7[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_recordingMode];
  *v22 = v18;
  v22[8] = v19;
  *&v7[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_systems] = a5;
  v7[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave] = v20;
  v7[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave] = a7;
  v24.receiver = v7;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

id ProcessorTraceRecorderConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessorTraceRecorderConfiguration.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_248027BB4()
{
  result = qword_27EE84108;
  if (!qword_27EE84108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE84108);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ProcessorTraceRecorderConfiguration.RingBufferMode(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RecordingMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RecordingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_248027D20(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248027D34(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RingBufferMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RingBufferMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_248027DF8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_248027E10(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ProcessorTraceRecorderConfiguration.RecordingTarget(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RecordingTarget(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.RecordingTarget(uint64_t result, int a2, int a3)
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

uint64_t sub_248027E98(uint64_t a1)
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

uint64_t sub_248027EB4(uint64_t result, int a2)
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

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.CopyImagesMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorderConfiguration.CopyImagesMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static ProcessorTraceTapServiceDelegate.registerCapabilities(_:)(void *a1)
{
  v2 = objc_opt_self();
  sub_2480078E4(&qword_27EE84110, &qword_24803EF20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24803DE50;
  *(inited + 32) = 0xD000000000000034;
  *(inited + 40) = 0x800000024804F570;
  sub_2480067C4();
  *(inited + 48) = sub_248030D08();
  sub_248028DB8(inited);
  swift_setDeallocating();
  sub_248028EBC(inited + 32);
  v4 = sub_248030AD8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v2 registerCapabilities:v4 forDelegateClass:ObjCClassFromMetadata forConnection:a1];

  v6 = [objc_allocWithZone(DTDeviceProcessorTraceState) init];
  v7 = [v6 capabilities];
  v8 = sub_248030BE8();

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 40;
    do
    {

      v11 = sub_248030B28();

      [a1 publishCapability:v11 withVersion:1 forClass:ObjCClassFromMetadata];

      v10 += 16;
      --v9;
    }

    while (v9);
  }
}

id ProcessorTraceTapServiceDelegate.__allocating_init(messageSender:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___DTProcessorTraceTapServiceDelegate_messageSender] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ProcessorTraceTapServiceDelegate.init(messageSender:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DTProcessorTraceTapServiceDelegate_messageSender] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProcessorTraceTapServiceDelegate();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_248028350(uint64_t a1)
{
  v1 = objc_allocWithZone(DTProcessorTraceTapConfig);

  sub_2480078E4(&qword_27EE84128, &unk_24803EF30);
  v2 = [v1 initWithPlist_];
  swift_unknownObjectRelease();
  return v2;
}

id sub_24802849C()
{
  v0 = [objc_allocWithZone(DTTapMessage) init];
  [v0 setKind_];
  return v0;
}

id ProcessorTraceTapServiceDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessorTraceTapServiceDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessorTraceTapServiceDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_248028620(uint64_t a1)
{
  sub_248030808();
  sub_24801222C(&qword_27EE83CB8, MEMORY[0x277CC9600]);
  v2 = sub_248030AF8();

  return sub_24802871C(a1, v2);
}

unint64_t sub_2480286A4(uint64_t a1, uint64_t a2)
{
  sub_248030F98();
  sub_248030B88();
  v4 = sub_248030FB8();

  return sub_2480288C8(a1, a2, v4);
}

unint64_t sub_24802871C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_248030808();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_24801222C(&qword_27EE83CE8, MEMORY[0x277CC9610]);
      v15 = sub_248030B18();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2480288C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_248030EE8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_248028980(uint64_t a1)
{
  v2 = sub_2480078E4(&qword_27EE84140, &unk_24803EF90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_2480078E4(&qword_27EE83CB0, &qword_24803E1C8);
    v7 = sub_248030E48();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2480120FC(v9, v5, &qword_27EE84140, &unk_24803EF90);
      result = sub_248028620(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_248030808();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ModelInfo(0);
      result = sub_248029044(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ModelInfo);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_248028B9C(uint64_t a1)
{
  v2 = sub_2480078E4(&qword_27EE84138, &unk_24803EF80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_2480078E4(&qword_27EE83CC8, &qword_24803E1D8);
    v7 = sub_248030E48();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2480120FC(v9, v5, &qword_27EE84138, &unk_24803EF80);
      result = sub_248028620(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_248030808();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for SegmentedModelState(0);
      result = sub_248029044(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for SegmentedModelState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_248028DB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2480078E4(&qword_27EE84130, &qword_24803EF78);
    v3 = sub_248030E48();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2480286A4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_248028EBC(uint64_t a1)
{
  v2 = sub_2480078E4(&qword_27EE84118, &qword_24803EF28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248029044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ModelLocation.init(tempFolderGuid:fileName:isMLPackage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_248030808();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ModelLocation(0);
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t type metadata accessor for ModelLocation(uint64_t a1)
{
  result = qword_27EE84148;
  if (!qword_27EE84148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248029190@<X0>(void *a1@<X8>)
{
  v18[2] = a1;
  v1 = sub_248030778();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  v18[0] = [objc_opt_self() defaultManager];
  v8 = [v18[0] temporaryDirectory];
  sub_248030728();

  sub_2480306F8();
  v9 = *(v2 + 8);
  v19 = v1;
  v9(v5, v1);
  v10 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v11 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24803DE50;
  v13 = sub_248030748();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_24800A52C();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_2480308C8(v10, &dword_247F67000, v11, "Core ML temp folder is %@", 25, 2, v12);

  sub_2480307E8();
  sub_2480306F8();

  type metadata accessor for ModelLocation(0);
  sub_2480306F8();
  v16 = v19;
  v9(v5, v19);
  return (v9)(v7, v16);
}

uint64_t ModelLocation.tempFolderGuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_248030808();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ModelLocation.fileName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModelLocation(0) + 20));

  return v1;
}

uint64_t sub_248029540(uint64_t a1)
{
  result = sub_248030808();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ModelInfo(uint64_t a1)
{
  result = qword_27EE84158;
  if (!qword_27EE84158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248029638(uint64_t a1)
{
  result = sub_2480296D4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModelLocation(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2480296D4()
{
  result = qword_27EE84168;
  if (!qword_27EE84168)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EE84168);
  }

  return result;
}

uint64_t sub_248029724(uint64_t a1, uint64_t a2)
{
  v2 = sub_2480309A8();
  sub_248008A94(v2, qword_27EE84170);
  sub_248006DF0(v2, qword_27EE84170);
  return sub_248030998();
}

uint64_t sub_248029834@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_248030A88();
  v6 = sub_248030AA8();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

  result = sub_248030A78();
  if (v3)
  {

    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_248029954(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v12[0] = *(i - 1);
      v12[1] = v8;

      a1(&v11, v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x24C1C1830](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_248030BF8();
        }

        sub_248030C18();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

id BottlenecksAnalysisModeManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BottlenecksAnalysisModeManager.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_init);
}

id BottlenecksAnalysisModeManager.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_248029C3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_248029D08(v11, 0, 0, 1, a1, a2);
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
    sub_24802B6F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_248011838(v11);
  return v7;
}

unint64_t sub_248029D08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_248029E14(a5, a6);
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
    result = sub_248030E08();
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

void *sub_248029E14(uint64_t a1, unint64_t a2)
{
  v3 = sub_248029E60(a1, a2);
  sub_248029F90(&unk_285A19060);
  return v3;
}

void *sub_248029E60(uint64_t a1, unint64_t a2)
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

  v6 = sub_24802A07C(v5, 0);
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

  result = sub_248030E08();
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
        v10 = sub_248030BB8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24802A07C(v10, 0);
        result = sub_248030DD8();
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

uint64_t sub_248029F90(uint64_t result)
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

  result = sub_24802A0F0(result, v11, 1, v3);
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

void *sub_24802A07C(uint64_t a1, uint64_t a2)
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

  sub_2480078E4(&qword_27EE841A8, &qword_24803F030);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24802A0F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480078E4(&qword_27EE841A8, &qword_24803F030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t _s24DVTInstrumentsFoundation30BottlenecksAnalysisModeManagerC07counterD05named0B04DataVSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  if (qword_27EE83A30 != -1)
  {
    swift_once();
  }

  v4 = sub_2480309A8();
  sub_248006DF0(v4, qword_27EE84170);

  v5 = sub_248030988();
  v6 = sub_248030C98();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_248029C3C(a1, a2, &v13);
    _os_log_impl(&dword_247F67000, v5, v6, "Capturing Counter Analysis: %s", v7, 0xCu);
    sub_248011838(v8);
    MEMORY[0x24C1C47E0](v8, -1, -1);
    MEMORY[0x24C1C47E0](v7, -1, -1);
  }

  result = 0;
  if (MEMORY[0x277D44388] && MEMORY[0x277D44398] && MEMORY[0x277D443A0] && MEMORY[0x277D44370] && MEMORY[0x277D44390] && MEMORY[0x277D44378])
  {
    if (MEMORY[0x277D44380])
    {
      v10 = sub_248030AA8();
      MEMORY[0x28223BE20](v10 - 8);
      sub_248030A98();
      sub_248030A88();

      v11 = sub_248030A78();
      sub_248030648();
      swift_allocObject();
      sub_248030638();
      v13 = v11;
      sub_24802B86C(&qword_27EE841C8, MEMORY[0x282228FA8], MEMORY[0x282228FB8]);
      v12 = sub_248030628();

      return v12;
    }
  }

  return result;
}

uint64_t _s24DVTInstrumentsFoundation30BottlenecksAnalysisModeManagerC03allD5Modes0B04DataVSgyFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_27EE83A30 != -1)
  {
    swift_once();
  }

  v2 = sub_2480309A8();
  sub_248006DF0(v2, qword_27EE84170);
  v3 = sub_248030988();
  v4 = sub_248030C98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_247F67000, v3, v4, "Capturing All Analysis Modes", v5, 2u);
    MEMORY[0x24C1C47E0](v5, -1, -1);
  }

  result = 0;
  if (MEMORY[0x277D44388] && MEMORY[0x277D44398] && MEMORY[0x277D443A0] && MEMORY[0x277D44370] && MEMORY[0x277D44390] && MEMORY[0x277D44378])
  {
    if (MEMORY[0x277D44380])
    {
      v7 = sub_248030AA8();
      v8 = *(v7 - 8);
      MEMORY[0x28223BE20](v7);
      v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = sub_2480078E4(&qword_27EE841B0, &qword_24803F038);
      MEMORY[0x28223BE20](v11 - 8);
      v13 = v17 - v12;
      sub_248030A98();
      (*(v8 + 56))(v13, 0, 1, v7);
      (*(v8 + 32))(v10, v13, v7);
      sub_248030A88();
      v14 = sub_248030A68();
      MEMORY[0x28223BE20](v14);
      v17[-2] = v10;
      v15 = sub_248029954(sub_24802B7B4, &v17[-4], v14);

      sub_248030648();
      swift_allocObject();
      sub_248030638();
      v17[0] = v15;
      sub_2480078E4(&qword_27EE841B8, &unk_24803F040);
      sub_24802B7D0();
      v16 = sub_248030628();

      (*(v8 + 8))(v10, v7);
      return v16;
    }
  }

  return result;
}

BOOL _s24DVTInstrumentsFoundation30BottlenecksAnalysisModeManagerC5apply6configSbSo22XRRecountConfigurationC_tFZ_0(void *a1, uint64_t a2)
{
  if (qword_27EE83A30 != -1)
  {
    swift_once();
  }

  v3 = sub_2480309A8();
  sub_248006DF0(v3, qword_27EE84170);
  v4 = a1;
  v5 = sub_248030988();
  v6 = sub_248030C98();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136315138;
    v9 = [v4 countingMode];
    v10 = sub_248030B38();
    v12 = v11;

    v13 = sub_248029C3C(v10, v12, &v50);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_247F67000, v5, v6, "Applying Counting Mode: %s", v7, 0xCu);
    sub_248011838(v8);
    MEMORY[0x24C1C47E0](v8, -1, -1);
    MEMORY[0x24C1C47E0](v7, -1, -1);
  }

  result = 0;
  if (MEMORY[0x277D44388] && MEMORY[0x277D44398] && MEMORY[0x277D443A0] && MEMORY[0x277D44370] && MEMORY[0x277D44390] && MEMORY[0x277D44378] && MEMORY[0x277D44380])
  {
    v15 = [v4 analysisMode];
    sub_248030B38();

    v16 = sub_248030AA8();
    MEMORY[0x28223BE20](v16 - 8);
    sub_248030A98();
    sub_248030A88();
    sub_248030A78();
    v17 = [v4 countingMode];
    sub_248030B38();

    v18 = sub_248030A58();

    if (v18)
    {
      v19 = sub_248030A38();
      v46 = v39;
      v20 = *(v19 - 8);
      MEMORY[0x28223BE20](v19);
      v44 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
      v45 = v21;
      v22 = v39 - v44;
      sub_248030A48();
      v23 = sub_248030A18();
      v42 = v39;
      v47 = v23;
      v24 = *(v23 - 8);
      MEMORY[0x28223BE20](v23);
      v43 = v25;
      v41 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
      v26 = v39 - v41;
      sub_248030A28();
      v27 = *(v20 + 8);
      v48 = v20 + 8;
      v49 = v19;
      v40 = v27;
      v27(v22, v19);
      v28 = sub_2480309E8();
      v39[1] = v39;
      v29 = *(v28 - 8);
      MEMORY[0x28223BE20](v28);
      v31 = v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2480078E4(&qword_27EE84188, &qword_24803F020);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_24803DE50;
      sub_2480309D8();
      v50 = v32;
      sub_24802B86C(&qword_27EE84190, MEMORY[0x282228F90], MEMORY[0x282228FA0]);
      sub_2480078E4(&qword_27EE84198, &qword_24803F028);
      sub_24802B68C();
      sub_248030D78();
      sub_2480309F8();
      (*(v29 + 8))(v31, v28);
      v33 = *(v24 + 8);
      v34 = v47;
      v35 = v33(v26, v47);
      MEMORY[0x28223BE20](v35);
      v36 = v39 - v44;
      v37 = sub_248030A48();
      MEMORY[0x28223BE20](v37);
      v38 = v39 - v41;
      sub_248030A28();
      v40(v36, v49);
      sub_248030A08();
      v33(v38, v34);
      LODWORD(v32) = kpc_set_counting();

      return v32 == 0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

BOOL _s24DVTInstrumentsFoundation30BottlenecksAnalysisModeManagerC5apply6config8actionIDSbSo22XRRecountConfigurationC_SutFZ_0(void *a1, uint64_t a2)
{
  if (qword_27EE83A30 != -1)
  {
    swift_once();
  }

  v3 = sub_2480309A8();
  sub_248006DF0(v3, qword_27EE84170);
  v4 = a1;
  v5 = sub_248030988();
  v6 = sub_248030C98();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50 = v8;
    *v7 = 136315138;
    v9 = [v4 countingMode];
    v10 = sub_248030B38();
    v12 = v11;

    v13 = sub_248029C3C(v10, v12, &v50);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_247F67000, v5, v6, "Applying Sampling Mode: %s", v7, 0xCu);
    sub_248011838(v8);
    MEMORY[0x24C1C47E0](v8, -1, -1);
    MEMORY[0x24C1C47E0](v7, -1, -1);
  }

  result = 0;
  if (MEMORY[0x277D44388] && MEMORY[0x277D44398] && MEMORY[0x277D443A0] && MEMORY[0x277D44370] && MEMORY[0x277D44390] && MEMORY[0x277D44378] && MEMORY[0x277D44380])
  {
    v15 = [v4 analysisMode];
    sub_248030B38();

    v16 = sub_248030AA8();
    MEMORY[0x28223BE20](v16 - 8);
    sub_248030A98();
    sub_248030A88();
    sub_248030A78();
    v17 = [v4 countingMode];
    sub_248030B38();

    v18 = sub_248030A58();

    if (v18)
    {
      v19 = sub_248030A38();
      v46 = &v38;
      v20 = *(v19 - 8);
      MEMORY[0x28223BE20](v19);
      v43 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
      v44 = v21;
      v22 = &v38 - v43;
      sub_248030A48();
      v23 = sub_248030A18();
      v41 = &v38;
      v47 = v23;
      v45 = *(v23 - 8);
      MEMORY[0x28223BE20](v23);
      v42 = v24;
      v40 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
      v25 = &v38 - v40;
      sub_248030A28();
      v26 = *(v20 + 8);
      v48 = v20 + 8;
      v49 = v19;
      v39 = v26;
      v26(v22, v19);
      v27 = sub_2480309E8();
      v38 = &v38;
      v28 = *(v27 - 8);
      MEMORY[0x28223BE20](v27);
      v30 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2480078E4(&qword_27EE84188, &qword_24803F020);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_24803DE50;
      sub_2480309D8();
      v50 = v31;
      sub_24802B86C(&qword_27EE84190, MEMORY[0x282228F90], MEMORY[0x282228FA0]);
      sub_2480078E4(&qword_27EE84198, &qword_24803F028);
      sub_24802B68C();
      sub_248030D78();
      sub_2480309F8();
      (*(v28 + 8))(v30, v27);
      v32 = *(v45 + 8);
      v33 = v47;
      v34 = v32(v25, v47);
      MEMORY[0x28223BE20](v34);
      v35 = &v38 - v43;
      v36 = sub_248030A48();
      MEMORY[0x28223BE20](v36);
      v37 = &v38 - v40;
      sub_248030A28();
      v39(v35, v49);
      sub_248030A08();
      v32(v37, v33);
      LODWORD(v35) = kpc_set_counting();

      return v35 == 0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_24802B678(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2480081DC(result, a2);
  }

  return result;
}

unint64_t sub_24802B68C()
{
  result = qword_27EE841A0;
  if (!qword_27EE841A0)
  {
    sub_24800ACE4(&qword_27EE84198, &qword_24803F028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE841A0);
  }

  return result;
}

uint64_t sub_24802B6F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24802B74C(uint64_t a1)
{
  v2 = sub_2480078E4(&qword_27EE841B0, &qword_24803F038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24802B7D0()
{
  result = qword_27EE841C0;
  if (!qword_27EE841C0)
  {
    sub_24800ACE4(&qword_27EE841B8, &unk_24803F040);
    sub_24802B86C(&qword_27EE841C8, MEMORY[0x282228FA8], MEMORY[0x282228FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE841C0);
  }

  return result;
}

uint64_t sub_24802B86C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24802B8B4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  v5 = *(*(a3 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_end_catch();
}

void sub_24802B918()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802B984()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802B9F0()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802BA5C()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802BAC8()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

uint64_t sub_24802BB34(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"DTUVRenderingService.m" lineNumber:204 description:@"rdar://98220290 False positive nil passed to a callee that requires a non-null parameter"];
}

void sub_24802BB98()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802BC04()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802BC70()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802BCDC()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802BD88(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a2 localizedDescription];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to fetch app record for identifier: %{public}@, error: %{public}@", &v4, 0x16u);
}

uint64_t sub_24802BE34()
{
  sub_247F6C434();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F700EC(v0);
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[XRNetworkingServiceObservationTuple initWithKind:count:]"];
  sub_247F700F8(v1);
  return [sub_247F700E0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t sub_24802BEB8()
{
  sub_247F6C434();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F700EC(v0);
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[XRNetworkingServiceObservationTuple initWithKind:count:]"];
  sub_247F700F8(v1);
  return [sub_247F700E0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t sub_24802BF3C()
{
  sub_247F6C434();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F700EC(v0);
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[XRNetworkingServiceObservationTuple initWithKind:count:source:indexToKeyMap:]"];
  sub_247F700F8(v1);
  return [sub_247F700E0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

uint64_t sub_24802BFC0()
{
  sub_247F6C434();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F700EC(v0);
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[XRNetworkingServiceObservationTuple initWithKind:count:source:indexToKeyMap:]"];
  sub_247F700F8(v1);
  return [sub_247F700E0() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_24802C044()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TakeDifferenceBetweenTuples(XRNetworkingServiceObservationTuple *__strong, XRNetworkingServiceObservationTuple *__strong, XRNetworkingServiceObservationTuple *__strong)"}];
  [v0 handleFailureInFunction:v1 file:@"DTNetworkingService.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"ending.kind == XRNET_CONNECTION_STATS"}];
}

void sub_24802C0CC()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TakeDifferenceBetweenTuples(XRNetworkingServiceObservationTuple *__strong, XRNetworkingServiceObservationTuple *__strong, XRNetworkingServiceObservationTuple *__strong)"}];
  [v0 handleFailureInFunction:v1 file:@"DTNetworkingService.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"starting.kind == XRNET_CONNECTION_STATS"}];
}

void sub_24802C17C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_247F67000, a2, OS_LOG_TYPE_ERROR, "Provider failed: %{public}@", &v2, 0xCu);
}

void sub_24802C208(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_247F67000, a2, OS_LOG_TYPE_ERROR, "Failed to append provider '%{public}@', to a session", &v2, 0xCu);
}

void sub_24802C2AC(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTKTraceHelpers.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"outFD != nil"}];
}

void sub_24802C328()
{
  v0 = __error();
  LODWORD(v6) = 136315138;
  *(&v6 + 4) = strerror(*v0);
  sub_247F74800(&dword_247F67000, MEMORY[0x277D86220], v1, "Failed to fetch value of 'kern.monotonic.supported' syscall: %s", v2, v3, v4, v5, v6, DWORD2(v6));
}

void sub_24802C3BC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_247F74800(&dword_247F67000, a2, a3, "Could not retrieve an icon for app path: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_24802C428(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_247F74800(&dword_247F67000, a2, a3, "Error reading contents of trace.codes file: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_24802C494(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_247F67000, a2, OS_LOG_TYPE_ERROR, "Unable to create KPEP database: %d", v2, 8u);
}

void sub_24802C548(void *a1)
{
  v1 = a1;
  __error();
  v2 = __error();
  strerror(*v2);
  sub_247F7B44C();
  sub_247F7B474(&dword_247F67000, v3, v4, "Failed to disable SIGPIPE on socket pair (%d): %{public}s", v5, v6, v7, v8);
}

void sub_24802C5D8(void *a1)
{
  v1 = a1;
  __error();
  v2 = __error();
  strerror(*v2);
  sub_247F7B44C();
  sub_247F7B474(&dword_247F67000, v3, v4, "Failed to open connected socket pair. Error (%d): %{public}s.", v5, v6, v7, v8);
}

void sub_24802C790(void *a1, int a2)
{
  v3 = a1;
  strerror(a2);
  LODWORD(v10) = 67109378;
  HIDWORD(v10) = a2;
  sub_247F7B464();
  sub_247F7B494(&dword_247F67000, v4, v5, "Failed to create proxy channel handler (%d): %{public}s", v6, v7, v8, v9, v10);
}

void sub_24802C88C(void *a1)
{
  v1 = a1;
  __error();
  v2 = __error();
  strerror(*v2);
  sub_247F7B44C();
  sub_247F7B474(&dword_247F67000, v3, v4, "Connection receive error (%d): %{public}s.", v5, v6, v7, v8);
}

void sub_24802C91C(void *a1, int a2)
{
  v3 = a1;
  strerror(a2);
  LODWORD(v10) = 67109378;
  HIDWORD(v10) = a2;
  sub_247F7B464();
  sub_247F7B494(&dword_247F67000, v4, v5, "Socket write error (%d): %{public}s", v6, v7, v8, v9, v10);
}

void sub_24802C9D8(void *a1, int a2)
{
  v3 = a1;
  strerror(a2);
  LODWORD(v10) = 67109378;
  HIDWORD(v10) = a2;
  sub_247F7B464();
  sub_247F7B494(&dword_247F67000, v4, v5, "Socket read error (%d): %{public}s.", v6, v7, v8, v9, v10);
}

void sub_24802CA68(void *a1)
{
  v1 = a1;
  __error();
  v2 = __error();
  strerror(*v2);
  sub_247F7B44C();
  sub_247F7B474(&dword_247F67000, v3, v4, "Connection send error (%d): %{public}s.", v5, v6, v7, v8);
}

void sub_24802CBD8(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to apply counting mode %@ on device", buf, 0xCu);
}

void sub_24802CCA0(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTAssetProviderService.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_24802CD1C(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTAssetProviderService.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_24802CDC4()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_24802CE08(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  sub_247F8B218(&dword_247F67000, v5, v6, "Failed to serialize config data: %@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_24802CEA0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  sub_247F8B218(&dword_247F67000, v5, v6, "Failed to unarchive error in when stopping ktrace: %@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_24802D10C(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Partial error attaching to log: %@", buf, 0xCu);
}

void sub_24802D2B8(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTStoreKitService.m" lineNumber:234 description:@"rdar://98220290 False positive nil passed to a callee that requires a non-null parameter"];
}

void sub_24802D31C(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTStoreKitService.m" lineNumber:669 description:@"rdar://98220290 False positive nil passed to a callee that requires a non-null parameter"];
}

void sub_24802D390(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTStoreKitService.m" lineNumber:716 description:@"rdar://98220290 False positive nil passed to a callee that requires a non-null parameter"];
}

void sub_24802D478(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_247F67000, log, OS_LOG_TYPE_ERROR, "failed to acquire assertion for pid %d: %{public}@", v3, 0x12u);
}

void sub_24802D514()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D580()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D5EC()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D658()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D6C4()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D730()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D79C()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D808()
{
  sub_247F6C434();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D864()
{
  sub_247F6C434();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D8C0()
{
  sub_247F6C434();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D91C()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D988()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802D9F4()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DA60()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DACC()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DB38()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DBA4()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DC10()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DC7C()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DCE8()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DD54()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DDC0()
{
  sub_247F6C434();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DE1C()
{
  sub_247FA9804();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247FA9824();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  sub_247FA9818();
}

void sub_24802DE84()
{
  sub_247FA9804();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247FA9824();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  sub_247FA9818();
}

void sub_24802DEEC()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DF58()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802DFC4()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"OSStatus SSLReadFunction(SSLConnectionRef, void *, size_t *)"}];
  [v1 handleFailureInFunction:v0 file:@"GCDAsyncSocket.m" lineNumber:6100 description:@"What the deuce?"];
}

void sub_24802E050()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"OSStatus SSLWriteFunction(SSLConnectionRef, const void *, size_t *)"}];
  [v1 handleFailureInFunction:v0 file:@"GCDAsyncSocket.m" lineNumber:6109 description:@"What the deuce?"];
}

void sub_24802E0DC()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E148()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E1C8()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E234()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E2A0()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E30C()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E378()
{
  sub_247FA9804();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247FA9824();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  sub_247FA9818();
}

void sub_24802E3E0()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E44C()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E4B8()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E524()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E590()
{
  sub_247F6C434();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  sub_247F6C428();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_24802E5FC()
{
  sub_247FA9804();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  sub_247FA9824();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  sub_247FA9818();
}

void sub_24802E6BC()
{
  sub_247FACDE8();
  sub_247FACDDC(v1, v2, 5.7779e-34);
  sub_247FACDF4(&dword_247F67000, MEMORY[0x277D86220], v3, "%@", v4);
}

void sub_24802E854()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[DTProcessControlService startObservingPid:]_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DTProcessControlService.m" lineNumber:111 description:@"dispatch_source_get_extended_data returned zero"];
}

void sub_24802E8DC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  sub_247F8B218(&dword_247F67000, v5, v6, "Failed to register Developer Tools style override with error: %@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_24802E9B8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  sub_247F8B218(&dword_247F67000, v5, v6, "Status Bar override registration invalidated with error: %@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_24802EA50(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTCPUClusterInfo.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"coder.allowsKeyedCoding"}];
}

void sub_24802EACC(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTCPUClusterInfo.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"coder.allowsKeyedCoding"}];
}

void sub_24802EB5C(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTKTraceTapTriggerConfig.m" lineNumber:148 description:@"self.hasThreadStateFilter = YES is supposed to create an entry in the dictionary"];
}

void sub_24802EBD0(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTKTraceTapTriggerConfig.m" lineNumber:190 description:@"self.isAllProcesses = NO is supposed to create an entry in the dictionary"];
}

void sub_24802ED40(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "System monitoring for process power metrics failed: %@", &v1, 0xCu);
}

void sub_24802EDC0(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "System monitoring for system power metrics failed: %@", &v1, 0xCu);
}

void sub_24802EEEC(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = 136315650;
  v2 = "/Library/Caches/com.apple.xbs/Sources/DVTInstrumentsFrameworks/Taps/Tap Internals/DTTapRemote.m";
  v3 = 1024;
  v4 = 77;
  v5 = 2112;
  v6 = a1;
  _os_log_fault_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Exception caught at %s:%d - %@", &v1, 0x1Cu);
}

void sub_24802EFF8(void *a1)
{
  v1 = [a1 error];
  sub_247FC4CE0();
  sub_247FC4CC4(&dword_247F67000, MEMORY[0x277D86220], v2, "Exception encountered trying to set tap configuration: %@", v3, v4, v5, v6);
}

void sub_24802F0BC(void *a1)
{
  v1 = [a1 error];
  sub_247FC4CE0();
  sub_247FC4CC4(&dword_247F67000, MEMORY[0x277D86220], v2, "Exception encountered trying to start tap: %@", v3, v4, v5, v6);
}

void sub_24802F180(void *a1)
{
  v1 = [a1 error];
  sub_247FC4CE0();
  sub_247FC4CC4(&dword_247F67000, MEMORY[0x277D86220], v2, "Exception encountered trying to stop the tap: %@", v3, v4, v5, v6);
}

void sub_24802F244(void *a1)
{
  v1 = [a1 error];
  sub_247FC4CE0();
  sub_247FC4CC4(&dword_247F67000, MEMORY[0x277D86220], v2, "Exception encountered trying to pause the tap: %@", v3, v4, v5, v6);
}

void sub_24802F308(void *a1)
{
  v1 = [a1 error];
  sub_247FC4CE0();
  sub_247FC4CC4(&dword_247F67000, MEMORY[0x277D86220], v2, "Exception encountered trying to unpause the tap: %@", v3, v4, v5, v6);
}

void sub_24802F3BC(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTTapLocal.m" lineNumber:58 description:@"Seems like the timer is still running"];
}

void sub_24802F430(void *a1)
{
  v1 = [a1 delegate];
  sub_247FC4CE0();
  sub_247FC558C(&dword_247F67000, MEMORY[0x277D86220], v2, "Tap with delegate named %@ started.", v3, v4, v5, v6);
}

void sub_24802F4B8(void *a1)
{
  v1 = [a1 delegate];
  sub_247FC4CE0();
  sub_247FC558C(&dword_247F67000, MEMORY[0x277D86220], v2, "Tap with delegate named %@ stopped.", v3, v4, v5, v6);
}

void sub_24802F540(void *a1)
{
  v1 = [a1 delegate];
  sub_247FC4CE0();
  sub_247FC558C(&dword_247F67000, MEMORY[0x277D86220], v2, "Tap with delegate named %@ paused.", v3, v4, v5, v6);
}

void sub_24802F5C8(void *a1)
{
  v1 = [a1 delegate];
  sub_247FC4CE0();
  sub_247FC558C(&dword_247F67000, MEMORY[0x277D86220], v2, "Tap with delegate named %@ unpaused.", v3, v4, v5, v6);
}

void sub_24802F700(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTAssetRequest.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

void sub_24802F77C(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DTAssetRequest.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"path"}];
}

void sub_24802F904(void *a1)
{
  [a1 UTF8String];
  sub_247FC4CE0();
  sub_247FDA2E0(&dword_247F67000, v1, v2, "Filename is invalid: %s", v3, v4, v5, v6);
}

void sub_24802F994(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_247FC4CE0();
  sub_247FDA2E0(&dword_247F67000, v2, v3, "Failed to transfer to app data container. Error: %s", v4, v5, v6, v7);
}

void sub_24802FAA8(void *a1)
{
  [a1 UTF8String];
  sub_247FC4CE0();
  sub_247FDA2E0(&dword_247F67000, v1, v2, "Couldn't find dataContainerURL for app: %s", v3, v4, v5, v6);
}

void sub_24802FB24(void *a1)
{
  [a1 UTF8String];
  sub_247FC4CE0();
  sub_247FDA2E0(&dword_247F67000, v1, v2, "Failed to find bundle record for application id: %s.", v3, v4, v5, v6);
}

void sub_24802FBA0(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RemoteBundleLoader.m" lineNumber:193 description:@"RemoteBundleLoader not intended for targeting calling process - use dlopen() instead"];
}

void sub_24802FC04(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RemoteBundleLoader.m" lineNumber:194 description:@"Unable to locate RemoteInjectionAgent; built products likely corrupt"];
}

void sub_24802FD2C(id *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [*a1 localizedDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "_counterIndexForEvent: %@", &v2, 0xCu);
}

void sub_24802FE4C(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218242;
  v3 = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error recording config words into buffer (%zu): %@", &v2, 0x16u);
}

void sub_24802FF78(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Clip Request failed: %@", &v2, 0xCu);
}

void sub_2480300A4(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
}

void sub_248030100(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_247F67000, log, OS_LOG_TYPE_ERROR, "_kernelCallbackImpl: Failed to flush data from kernel: %@", buf, 0xCu);
}

void sub_248030158(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_247F67000, a2, OS_LOG_TYPE_ERROR, "Failed to call kperf_buffer_wait, returned with %d.", v2, 8u);
}

void sub_24803032C()
{
  v0 = [qword_27EE844A8 localizedDescription];
  LODWORD(v7) = 138543362;
  *(&v7 + 4) = v0;
  sub_247FDA2E0(&dword_247F67000, v1, v2, "%{public}@", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_2480303E4()
{
  v0 = [qword_27EE844C0 localizedDescription];
  LODWORD(v7) = 138543362;
  *(&v7 + 4) = v0;
  sub_247FDA2E0(&dword_247F67000, v1, v2, "%{public}@", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_248030488(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4[0] = 67109378;
  v4[1] = v3;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_247F67000, log, OS_LOG_TYPE_ERROR, "failed to launch preview shell (%d retries remaining): %@", v4, 0x12u);
}

void sub_248030528()
{
  v0 = [qword_27EE844E8 localizedDescription];
  LODWORD(v7) = 138543362;
  *(&v7 + 4) = v0;
  sub_247FDA2E0(&dword_247F67000, v1, v2, "%{public}@", v3, v4, v5, v6, v7, DWORD2(v7));
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}