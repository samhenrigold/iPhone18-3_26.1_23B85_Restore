uint64_t sub_261B22FA8(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a3;
  v104 = a4;
  v95 = a1;
  v5 = sub_261CFED34();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_261CFCF24();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v82[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v94 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v93 = &v82[-v13];
  v14 = sub_261CFCF84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v82[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v91 = &v82[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v82[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v82[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v82[-v29];
  v31 = sub_261CFCFA4();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v92 = &v82[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v90 = &v82[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v89 = &v82[-v38];
  MEMORY[0x28223BE20](v37);
  v40 = &v82[-v39];
  v105[1] = a2;
  v105[2] = v103;
  v105[3] = v104;
  v102 = sub_261B31600();
  sub_261CFC754();
  sub_261CFCF94();
  v41 = *(v32 + 8);
  v103 = v32 + 8;
  v104 = v31;
  v101 = v41;
  v41(v40, v31);
  (*(v15 + 104))(v28, *MEMORY[0x277CBA158], v14);
  (*(v15 + 56))(v28, 0, 1, v14);
  v42 = *(v18 + 56);
  sub_261AFB668(v30, v20, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v28, &v20[v42], &qword_27FEDA428, &qword_261D02F28);
  v99 = v15;
  v43 = *(v15 + 48);
  if (v43(v20, 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    if (v43(&v20[v42], 1, v14) == 1)
    {
      return sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v20, v100, &qword_27FEDA428, &qword_261D02F28);
  if (v43(&v20[v42], 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    (*(v99 + 8))(v100, v14);
LABEL_6:
    sub_261AE6A40(v20, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v65 = v99;
  v66 = v85;
  (*(v99 + 32))(v85, &v20[v42], v14);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v83 = sub_261CFF974();
  v67 = *(v65 + 8);
  v67(v66, v14);
  sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
  v67(v100, v14);
  result = sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
  if (v83)
  {
    return result;
  }

LABEL_7:
  v45 = v89;
  sub_261CFC754();
  v46 = v91;
  sub_261CFCF94();
  v101(v45, v104);
  if (v43(v46, 1, v14) == 1)
  {
    sub_261AE6A40(v46, &qword_27FEDA428, &qword_261D02F28);
    v47 = 0xEE00656372756F73;
    v100 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v100 = sub_261B876C4();
    v47 = v48;
    (*(v99 + 8))(v46, v14);
  }

  v50 = v93;
  v49 = v94;
  v51 = v90;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v51, v104);
  v52 = sub_261CFCF54();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  if (v54(v50, 1, v52) == 1)
  {
    sub_261AE6A40(v50, &qword_27FEDA418, &qword_261D02F18);
    v99 = 0;
    v94 = 0;
  }

  else
  {
    v99 = sub_261CFCF44();
    v94 = v55;
    (*(v53 + 8))(v50, v52);
  }

  v56 = v92;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v56, v104);
  if (v54(v49, 1, v52) == 1)
  {
    v57 = &qword_27FEDA418;
    v58 = &qword_261D02F18;
    v59 = v49;
  }

  else
  {
    v60 = v86;
    sub_261CFCF34();
    (*(v53 + 8))(v49, v52);
    v61 = v87;
    v62 = v88;
    if ((*(v87 + 48))(v60, 1, v88) != 1)
    {
      v68 = v84;
      (*(v61 + 16))(v84, v60, v62);
      v69 = (*(v61 + 88))(v68, v62);
      if (v69 == *MEMORY[0x277CBA0B8])
      {
        v64 = 0xEE0064726177726FLL;
        v63 = 0x4679616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0A8])
      {
        v64 = 0xEB00000000796C6ELL;
        v63 = 0x4F79616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0C0])
      {
        v64 = 0xE900000000000079;
        v63 = 0x6C6E4F6563696F76;
      }

      else if (v69 == *MEMORY[0x277CBA0B0])
      {
        v64 = 0xEC00000064726177;
        v63 = 0x726F466563696F76;
      }

      else
      {
        (*(v61 + 8))(v68, v62);
        v64 = 0xE700000000000000;
        v63 = 0x6E776F6E6B6E75;
      }

      (*(v61 + 8))(v60, v62);
      goto LABEL_30;
    }

    v57 = &qword_27FEDA410;
    v58 = &qword_261D02F10;
    v59 = v60;
  }

  sub_261AE6A40(v59, v57, v58);
  v63 = 0;
  v64 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v70 = sub_261CFF7A4();
  __swift_project_value_buffer(v70, qword_27FEDB1E0);
  sub_261CFD104();
  v71 = sub_261CFF784();
  v72 = sub_261CFFE84();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v105[0] = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_261B879C8(0xD000000000000022, 0x8000000261D17410, v105);
    *(v73 + 12) = 2080;
    v75 = v100;
    *(v73 + 14) = sub_261B879C8(v100, v47, v105);
    _os_log_impl(&dword_261AE2000, v71, v72, "Posting Analytics: %s.%s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v74, -1, -1);
    MEMORY[0x26671D560](v73, -1, -1);
  }

  else
  {

    v75 = v100;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v76 = 0x8000000261D14240;
  v77 = 0xD000000000000011;
  if ((v95 & 1) == 0)
  {
    v77 = 0x704163696C627570;
    v76 = 0xEF746E65746E4970;
  }

  v79 = v96;
  v78 = v97;
  *v96 = 0xD000000000000022;
  v79[1] = 0x8000000261D17410;
  v79[2] = v75;
  v79[3] = v47;
  v79[4] = v77;
  v79[5] = v76;
  v80 = v98;
  v81 = v94;
  v79[6] = v99;
  v79[7] = v81;
  v79[8] = v63;
  v79[9] = v64;
  (*(v78 + 104))(v79, *MEMORY[0x277D44E90], v80);
  sub_261CFED84();

  return (*(v78 + 8))(v79, v80);
}

uint64_t sub_261B23D64(int a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v95 = a1;
  v4 = sub_261CFED34();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4);
  v96 = &v82[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_261CFCF24();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v82[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v94 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v93 = &v82[-v13];
  v14 = sub_261CFCF84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v82[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v91 = &v82[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v82[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v82[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v82[-v29];
  v31 = sub_261CFCFA4();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v92 = &v82[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v90 = &v82[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v89 = &v82[-v38];
  MEMORY[0x28223BE20](v37);
  v40 = &v82[-v39];
  v105[1] = a2;
  v105[2] = v104;
  v102 = sub_261B315AC();
  sub_261CFC754();
  sub_261CFCF94();
  v41 = *(v32 + 8);
  v103 = v32 + 8;
  v104 = v31;
  v101 = v41;
  v41(v40, v31);
  (*(v15 + 104))(v28, *MEMORY[0x277CBA158], v14);
  (*(v15 + 56))(v28, 0, 1, v14);
  v42 = *(v18 + 56);
  sub_261AFB668(v30, v20, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v28, &v20[v42], &qword_27FEDA428, &qword_261D02F28);
  v99 = v15;
  v43 = *(v15 + 48);
  if (v43(v20, 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    if (v43(&v20[v42], 1, v14) == 1)
    {
      return sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v20, v100, &qword_27FEDA428, &qword_261D02F28);
  if (v43(&v20[v42], 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    (*(v99 + 8))(v100, v14);
LABEL_6:
    sub_261AE6A40(v20, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v65 = v99;
  v66 = v85;
  (*(v99 + 32))(v85, &v20[v42], v14);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v83 = sub_261CFF974();
  v67 = *(v65 + 8);
  v67(v66, v14);
  sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
  v67(v100, v14);
  result = sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
  if (v83)
  {
    return result;
  }

LABEL_7:
  v45 = v89;
  sub_261CFC754();
  v46 = v91;
  sub_261CFCF94();
  v101(v45, v104);
  if (v43(v46, 1, v14) == 1)
  {
    sub_261AE6A40(v46, &qword_27FEDA428, &qword_261D02F28);
    v47 = 0xEE00656372756F73;
    v100 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v100 = sub_261B876C4();
    v47 = v48;
    (*(v99 + 8))(v46, v14);
  }

  v50 = v93;
  v49 = v94;
  v51 = v90;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v51, v104);
  v52 = sub_261CFCF54();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  if (v54(v50, 1, v52) == 1)
  {
    sub_261AE6A40(v50, &qword_27FEDA418, &qword_261D02F18);
    v99 = 0;
    v94 = 0;
  }

  else
  {
    v99 = sub_261CFCF44();
    v94 = v55;
    (*(v53 + 8))(v50, v52);
  }

  v56 = v92;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v56, v104);
  if (v54(v49, 1, v52) == 1)
  {
    v57 = &qword_27FEDA418;
    v58 = &qword_261D02F18;
    v59 = v49;
  }

  else
  {
    v60 = v86;
    sub_261CFCF34();
    (*(v53 + 8))(v49, v52);
    v62 = v87;
    v61 = v88;
    if ((*(v87 + 48))(v60, 1, v88) != 1)
    {
      v68 = v84;
      (*(v62 + 16))(v84, v60, v61);
      v69 = (*(v62 + 88))(v68, v61);
      if (v69 == *MEMORY[0x277CBA0B8])
      {
        v64 = 0xEE0064726177726FLL;
        v63 = 0x4679616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0A8])
      {
        v64 = 0xEB00000000796C6ELL;
        v63 = 0x4F79616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0C0])
      {
        v64 = 0xE900000000000079;
        v63 = 0x6C6E4F6563696F76;
      }

      else if (v69 == *MEMORY[0x277CBA0B0])
      {
        v64 = 0xEC00000064726177;
        v63 = 0x726F466563696F76;
      }

      else
      {
        (*(v62 + 8))(v68, v61);
        v64 = 0xE700000000000000;
        v63 = 0x6E776F6E6B6E75;
      }

      (*(v62 + 8))(v60, v61);
      goto LABEL_30;
    }

    v57 = &qword_27FEDA410;
    v58 = &qword_261D02F10;
    v59 = v60;
  }

  sub_261AE6A40(v59, v57, v58);
  v63 = 0;
  v64 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v70 = sub_261CFF7A4();
  __swift_project_value_buffer(v70, qword_27FEDB1E0);
  sub_261CFD104();
  v71 = sub_261CFF784();
  v72 = sub_261CFFE84();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v105[0] = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_261B879C8(0xD000000000000012, 0x8000000261D173F0, v105);
    *(v73 + 12) = 2080;
    v75 = v100;
    *(v73 + 14) = sub_261B879C8(v100, v47, v105);
    _os_log_impl(&dword_261AE2000, v71, v72, "Posting Analytics: %s.%s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v74, -1, -1);
    MEMORY[0x26671D560](v73, -1, -1);
  }

  else
  {

    v75 = v100;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v76 = 0x8000000261D14240;
  v77 = 0xD000000000000011;
  if ((v95 & 1) == 0)
  {
    v77 = 0x704163696C627570;
    v76 = 0xEF746E65746E4970;
  }

  v79 = v96;
  v78 = v97;
  *v96 = 0xD000000000000012;
  v79[1] = 0x8000000261D173F0;
  v79[2] = v75;
  v79[3] = v47;
  v79[4] = v77;
  v79[5] = v76;
  v80 = v98;
  v81 = v94;
  v79[6] = v99;
  v79[7] = v81;
  v79[8] = v63;
  v79[9] = v64;
  (*(v78 + 104))(v79, *MEMORY[0x277D44E90], v80);
  sub_261CFED84();

  return (*(v78 + 8))(v79, v80);
}

uint64_t sub_261B24B0C(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a4;
  v105 = a5;
  v103 = a3;
  v96 = a1;
  v6 = sub_261CFED34();
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_261CFCF24();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v83[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v95 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v94 = &v83[-v14];
  v15 = sub_261CFCF84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v86 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v83[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v92 = &v83[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v83[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v83[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v83[-v30];
  v32 = sub_261CFCFA4();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v93 = &v83[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x28223BE20](v34);
  v91 = &v83[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v90 = &v83[-v39];
  MEMORY[0x28223BE20](v38);
  v41 = &v83[-v40];
  v106[1] = a2;
  v106[2] = v103;
  v106[3] = v104;
  v106[4] = v105;
  v103 = sub_261B31558();
  sub_261CFC754();
  sub_261CFCF94();
  v42 = *(v33 + 8);
  v104 = v33 + 8;
  v105 = v32;
  v102 = v42;
  v42(v41, v32);
  (*(v16 + 104))(v29, *MEMORY[0x277CBA158], v15);
  (*(v16 + 56))(v29, 0, 1, v15);
  v43 = *(v19 + 56);
  sub_261AFB668(v31, v21, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v29, &v21[v43], &qword_27FEDA428, &qword_261D02F28);
  v100 = v16;
  v44 = *(v16 + 48);
  if (v44(v21, 1, v15) == 1)
  {
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    if (v44(&v21[v43], 1, v15) == 1)
    {
      return sub_261AE6A40(v21, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v21, v101, &qword_27FEDA428, &qword_261D02F28);
  if (v44(&v21[v43], 1, v15) == 1)
  {
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    (*(v100 + 8))(v101, v15);
LABEL_6:
    sub_261AE6A40(v21, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v66 = v100;
  v67 = v86;
  (*(v100 + 32))(v86, &v21[v43], v15);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v84 = sub_261CFF974();
  v68 = *(v66 + 8);
  v68(v67, v15);
  sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
  v68(v101, v15);
  result = sub_261AE6A40(v21, &qword_27FEDA428, &qword_261D02F28);
  if (v84)
  {
    return result;
  }

LABEL_7:
  v46 = v90;
  sub_261CFC754();
  v47 = v92;
  sub_261CFCF94();
  v102(v46, v105);
  if (v44(v47, 1, v15) == 1)
  {
    sub_261AE6A40(v47, &qword_27FEDA428, &qword_261D02F28);
    v48 = 0xEE00656372756F73;
    v101 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v101 = sub_261B876C4();
    v48 = v49;
    (*(v100 + 8))(v47, v15);
  }

  v51 = v94;
  v50 = v95;
  v52 = v91;
  sub_261CFC754();
  sub_261CFCF64();
  v102(v52, v105);
  v53 = sub_261CFCF54();
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  if (v55(v51, 1, v53) == 1)
  {
    sub_261AE6A40(v51, &qword_27FEDA418, &qword_261D02F18);
    v100 = 0;
    v95 = 0;
  }

  else
  {
    v100 = sub_261CFCF44();
    v95 = v56;
    (*(v54 + 8))(v51, v53);
  }

  v57 = v93;
  sub_261CFC754();
  sub_261CFCF64();
  v102(v57, v105);
  if (v55(v50, 1, v53) == 1)
  {
    v58 = &qword_27FEDA418;
    v59 = &qword_261D02F18;
    v60 = v50;
  }

  else
  {
    v61 = v87;
    sub_261CFCF34();
    (*(v54 + 8))(v50, v53);
    v62 = v88;
    v63 = v89;
    if ((*(v88 + 48))(v61, 1, v89) != 1)
    {
      v69 = v85;
      (*(v62 + 16))(v85, v61, v63);
      v70 = (*(v62 + 88))(v69, v63);
      if (v70 == *MEMORY[0x277CBA0B8])
      {
        v65 = 0xEE0064726177726FLL;
        v64 = 0x4679616C70736964;
      }

      else if (v70 == *MEMORY[0x277CBA0A8])
      {
        v65 = 0xEB00000000796C6ELL;
        v64 = 0x4F79616C70736964;
      }

      else if (v70 == *MEMORY[0x277CBA0C0])
      {
        v65 = 0xE900000000000079;
        v64 = 0x6C6E4F6563696F76;
      }

      else if (v70 == *MEMORY[0x277CBA0B0])
      {
        v65 = 0xEC00000064726177;
        v64 = 0x726F466563696F76;
      }

      else
      {
        (*(v62 + 8))(v69, v63);
        v65 = 0xE700000000000000;
        v64 = 0x6E776F6E6B6E75;
      }

      (*(v62 + 8))(v61, v63);
      goto LABEL_30;
    }

    v58 = &qword_27FEDA410;
    v59 = &qword_261D02F10;
    v60 = v61;
  }

  sub_261AE6A40(v60, v58, v59);
  v64 = 0;
  v65 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v71 = sub_261CFF7A4();
  __swift_project_value_buffer(v71, qword_27FEDB1E0);
  sub_261CFD104();
  v72 = sub_261CFF784();
  v73 = sub_261CFFE84();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v106[0] = v75;
    *v74 = 136315394;
    *(v74 + 4) = sub_261B879C8(0xD000000000000013, 0x8000000261D173D0, v106);
    *(v74 + 12) = 2080;
    v76 = v101;
    *(v74 + 14) = sub_261B879C8(v101, v48, v106);
    _os_log_impl(&dword_261AE2000, v72, v73, "Posting Analytics: %s.%s", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v75, -1, -1);
    MEMORY[0x26671D560](v74, -1, -1);
  }

  else
  {

    v76 = v101;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v77 = 0x8000000261D14240;
  v78 = 0xD000000000000011;
  if ((v96 & 1) == 0)
  {
    v78 = 0x704163696C627570;
    v77 = 0xEF746E65746E4970;
  }

  v80 = v97;
  v79 = v98;
  *v97 = 0xD000000000000013;
  v80[1] = 0x8000000261D173D0;
  v80[2] = v76;
  v80[3] = v48;
  v80[4] = v78;
  v80[5] = v77;
  v81 = v99;
  v82 = v95;
  v80[6] = v100;
  v80[7] = v82;
  v80[8] = v64;
  v80[9] = v65;
  (*(v79 + 104))(v80, *MEMORY[0x277D44E90], v81);
  sub_261CFED84();

  return (*(v79 + 8))(v80, v81);
}

uint64_t sub_261B258D8(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a3;
  v104 = a4;
  v95 = a1;
  v5 = sub_261CFED34();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_261CFCF24();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v82[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v94 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v93 = &v82[-v13];
  v14 = sub_261CFCF84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v82[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v91 = &v82[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v82[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v82[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v82[-v29];
  v31 = sub_261CFCFA4();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v92 = &v82[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v90 = &v82[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v89 = &v82[-v38];
  MEMORY[0x28223BE20](v37);
  v40 = &v82[-v39];
  v105[1] = a2;
  v105[2] = v103;
  v105[3] = v104;
  v102 = sub_261B31504();
  sub_261CFC754();
  sub_261CFCF94();
  v41 = *(v32 + 8);
  v103 = v32 + 8;
  v104 = v31;
  v101 = v41;
  v41(v40, v31);
  (*(v15 + 104))(v28, *MEMORY[0x277CBA158], v14);
  (*(v15 + 56))(v28, 0, 1, v14);
  v42 = *(v18 + 56);
  sub_261AFB668(v30, v20, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v28, &v20[v42], &qword_27FEDA428, &qword_261D02F28);
  v99 = v15;
  v43 = *(v15 + 48);
  if (v43(v20, 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    if (v43(&v20[v42], 1, v14) == 1)
    {
      return sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v20, v100, &qword_27FEDA428, &qword_261D02F28);
  if (v43(&v20[v42], 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    (*(v99 + 8))(v100, v14);
LABEL_6:
    sub_261AE6A40(v20, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v65 = v99;
  v66 = v85;
  (*(v99 + 32))(v85, &v20[v42], v14);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v83 = sub_261CFF974();
  v67 = *(v65 + 8);
  v67(v66, v14);
  sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
  v67(v100, v14);
  result = sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
  if (v83)
  {
    return result;
  }

LABEL_7:
  v45 = v89;
  sub_261CFC754();
  v46 = v91;
  sub_261CFCF94();
  v101(v45, v104);
  if (v43(v46, 1, v14) == 1)
  {
    sub_261AE6A40(v46, &qword_27FEDA428, &qword_261D02F28);
    v47 = 0xEE00656372756F73;
    v100 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v100 = sub_261B876C4();
    v47 = v48;
    (*(v99 + 8))(v46, v14);
  }

  v50 = v93;
  v49 = v94;
  v51 = v90;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v51, v104);
  v52 = sub_261CFCF54();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  if (v54(v50, 1, v52) == 1)
  {
    sub_261AE6A40(v50, &qword_27FEDA418, &qword_261D02F18);
    v99 = 0;
    v94 = 0;
  }

  else
  {
    v99 = sub_261CFCF44();
    v94 = v55;
    (*(v53 + 8))(v50, v52);
  }

  v56 = v92;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v56, v104);
  if (v54(v49, 1, v52) == 1)
  {
    v57 = &qword_27FEDA418;
    v58 = &qword_261D02F18;
    v59 = v49;
  }

  else
  {
    v60 = v86;
    sub_261CFCF34();
    (*(v53 + 8))(v49, v52);
    v61 = v87;
    v62 = v88;
    if ((*(v87 + 48))(v60, 1, v88) != 1)
    {
      v68 = v84;
      (*(v61 + 16))(v84, v60, v62);
      v69 = (*(v61 + 88))(v68, v62);
      if (v69 == *MEMORY[0x277CBA0B8])
      {
        v64 = 0xEE0064726177726FLL;
        v63 = 0x4679616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0A8])
      {
        v64 = 0xEB00000000796C6ELL;
        v63 = 0x4F79616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0C0])
      {
        v64 = 0xE900000000000079;
        v63 = 0x6C6E4F6563696F76;
      }

      else if (v69 == *MEMORY[0x277CBA0B0])
      {
        v64 = 0xEC00000064726177;
        v63 = 0x726F466563696F76;
      }

      else
      {
        (*(v61 + 8))(v68, v62);
        v64 = 0xE700000000000000;
        v63 = 0x6E776F6E6B6E75;
      }

      (*(v61 + 8))(v60, v62);
      goto LABEL_30;
    }

    v57 = &qword_27FEDA410;
    v58 = &qword_261D02F10;
    v59 = v60;
  }

  sub_261AE6A40(v59, v57, v58);
  v63 = 0;
  v64 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v70 = sub_261CFF7A4();
  __swift_project_value_buffer(v70, qword_27FEDB1E0);
  sub_261CFD104();
  v71 = sub_261CFF784();
  v72 = sub_261CFFE84();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v105[0] = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_261B879C8(0xD000000000000014, 0x8000000261D173B0, v105);
    *(v73 + 12) = 2080;
    v75 = v100;
    *(v73 + 14) = sub_261B879C8(v100, v47, v105);
    _os_log_impl(&dword_261AE2000, v71, v72, "Posting Analytics: %s.%s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v74, -1, -1);
    MEMORY[0x26671D560](v73, -1, -1);
  }

  else
  {

    v75 = v100;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v76 = 0x8000000261D14240;
  v77 = 0xD000000000000011;
  if ((v95 & 1) == 0)
  {
    v77 = 0x704163696C627570;
    v76 = 0xEF746E65746E4970;
  }

  v79 = v96;
  v78 = v97;
  *v96 = 0xD000000000000014;
  v79[1] = 0x8000000261D173B0;
  v79[2] = v75;
  v79[3] = v47;
  v79[4] = v77;
  v79[5] = v76;
  v80 = v98;
  v81 = v94;
  v79[6] = v99;
  v79[7] = v81;
  v79[8] = v63;
  v79[9] = v64;
  (*(v78 + 104))(v79, *MEMORY[0x277D44E90], v80);
  sub_261CFED84();

  return (*(v78 + 8))(v79, v80);
}

uint64_t sub_261B26694(int a1, uint64_t a2)
{
  v94 = a1;
  v3 = sub_261CFED34();
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  v95 = &v81[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_261CFCF24();
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x28223BE20](v5);
  v83 = &v81[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v81[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v93 = &v81[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v92 = &v81[-v12];
  v13 = sub_261CFCF84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v84 = &v81[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v81[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v90 = &v81[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v99 = &v81[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v81[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v81[-v28];
  v30 = sub_261CFCFA4();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v91 = &v81[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v32);
  v89 = &v81[-v35];
  v36 = MEMORY[0x28223BE20](v34);
  v88 = &v81[-v37];
  MEMORY[0x28223BE20](v36);
  v39 = &v81[-v38];
  v104[1] = a2;
  v101 = sub_261B314B0();
  sub_261CFC754();
  sub_261CFCF94();
  v40 = *(v31 + 8);
  v102 = v31 + 8;
  v103 = v30;
  v100 = v40;
  v40(v39, v30);
  (*(v14 + 104))(v27, *MEMORY[0x277CBA158], v13);
  (*(v14 + 56))(v27, 0, 1, v13);
  v41 = *(v17 + 56);
  sub_261AFB668(v29, v19, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v27, &v19[v41], &qword_27FEDA428, &qword_261D02F28);
  v98 = v14;
  v42 = *(v14 + 48);
  if (v42(v19, 1, v13) == 1)
  {
    sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    if (v42(&v19[v41], 1, v13) == 1)
    {
      return sub_261AE6A40(v19, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v19, v99, &qword_27FEDA428, &qword_261D02F28);
  if (v42(&v19[v41], 1, v13) == 1)
  {
    sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    (*(v98 + 8))(v99, v13);
LABEL_6:
    sub_261AE6A40(v19, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v64 = v98;
  v65 = v84;
  (*(v98 + 32))(v84, &v19[v41], v13);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v82 = sub_261CFF974();
  v66 = *(v64 + 8);
  v66(v65, v13);
  sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
  v66(v99, v13);
  result = sub_261AE6A40(v19, &qword_27FEDA428, &qword_261D02F28);
  if (v82)
  {
    return result;
  }

LABEL_7:
  v44 = v88;
  sub_261CFC754();
  v45 = v90;
  sub_261CFCF94();
  v100(v44, v103);
  if (v42(v45, 1, v13) == 1)
  {
    sub_261AE6A40(v45, &qword_27FEDA428, &qword_261D02F28);
    v46 = 0xEE00656372756F73;
    v99 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v99 = sub_261B876C4();
    v46 = v47;
    (*(v98 + 8))(v45, v13);
  }

  v49 = v92;
  v48 = v93;
  v50 = v89;
  sub_261CFC754();
  sub_261CFCF64();
  v100(v50, v103);
  v51 = sub_261CFCF54();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  if (v53(v49, 1, v51) == 1)
  {
    sub_261AE6A40(v49, &qword_27FEDA418, &qword_261D02F18);
    v98 = 0;
    v93 = 0;
  }

  else
  {
    v98 = sub_261CFCF44();
    v93 = v54;
    (*(v52 + 8))(v49, v51);
  }

  v55 = v91;
  sub_261CFC754();
  sub_261CFCF64();
  v100(v55, v103);
  if (v53(v48, 1, v51) == 1)
  {
    v56 = &qword_27FEDA418;
    v57 = &qword_261D02F18;
    v58 = v48;
  }

  else
  {
    v59 = v85;
    sub_261CFCF34();
    (*(v52 + 8))(v48, v51);
    v61 = v86;
    v60 = v87;
    if ((*(v86 + 48))(v59, 1, v87) != 1)
    {
      v67 = v83;
      (*(v61 + 16))(v83, v59, v60);
      v68 = (*(v61 + 88))(v67, v60);
      if (v68 == *MEMORY[0x277CBA0B8])
      {
        v63 = 0xEE0064726177726FLL;
        v62 = 0x4679616C70736964;
      }

      else if (v68 == *MEMORY[0x277CBA0A8])
      {
        v63 = 0xEB00000000796C6ELL;
        v62 = 0x4F79616C70736964;
      }

      else if (v68 == *MEMORY[0x277CBA0C0])
      {
        v63 = 0xE900000000000079;
        v62 = 0x6C6E4F6563696F76;
      }

      else if (v68 == *MEMORY[0x277CBA0B0])
      {
        v63 = 0xEC00000064726177;
        v62 = 0x726F466563696F76;
      }

      else
      {
        (*(v61 + 8))(v67, v60);
        v63 = 0xE700000000000000;
        v62 = 0x6E776F6E6B6E75;
      }

      (*(v61 + 8))(v59, v60);
      goto LABEL_30;
    }

    v56 = &qword_27FEDA410;
    v57 = &qword_261D02F10;
    v58 = v59;
  }

  sub_261AE6A40(v58, v56, v57);
  v62 = 0;
  v63 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v69 = sub_261CFF7A4();
  __swift_project_value_buffer(v69, qword_27FEDB1E0);
  sub_261CFD104();
  v70 = sub_261CFF784();
  v71 = sub_261CFFE84();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v104[0] = v73;
    *v72 = 136315394;
    *(v72 + 4) = sub_261B879C8(0xD00000000000001ELL, 0x8000000261D17390, v104);
    *(v72 + 12) = 2080;
    v74 = v99;
    *(v72 + 14) = sub_261B879C8(v99, v46, v104);
    _os_log_impl(&dword_261AE2000, v70, v71, "Posting Analytics: %s.%s", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v73, -1, -1);
    MEMORY[0x26671D560](v72, -1, -1);
  }

  else
  {

    v74 = v99;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v75 = 0x8000000261D14240;
  v76 = 0xD000000000000011;
  if ((v94 & 1) == 0)
  {
    v76 = 0x704163696C627570;
    v75 = 0xEF746E65746E4970;
  }

  v78 = v95;
  v77 = v96;
  *v95 = 0xD00000000000001ELL;
  v78[1] = 0x8000000261D17390;
  v78[2] = v74;
  v78[3] = v46;
  v78[4] = v76;
  v78[5] = v75;
  v79 = v97;
  v80 = v93;
  v78[6] = v98;
  v78[7] = v80;
  v78[8] = v62;
  v78[9] = v63;
  (*(v77 + 104))(v78, *MEMORY[0x277D44E90], v79);
  sub_261CFED84();

  return (*(v77 + 8))(v78, v79);
}

uint64_t sub_261B2742C(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a4;
  v105 = a5;
  v103 = a3;
  v96 = a1;
  v6 = sub_261CFED34();
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_261CFCF24();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v83[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v95 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v94 = &v83[-v14];
  v15 = sub_261CFCF84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v86 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v83[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v92 = &v83[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v83[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v83[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v83[-v30];
  v32 = sub_261CFCFA4();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v93 = &v83[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x28223BE20](v34);
  v91 = &v83[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v90 = &v83[-v39];
  MEMORY[0x28223BE20](v38);
  v41 = &v83[-v40];
  v106[1] = a2;
  v106[2] = v103;
  v106[3] = v104;
  v106[4] = v105;
  v103 = sub_261B3145C();
  sub_261CFC754();
  sub_261CFCF94();
  v42 = *(v33 + 8);
  v104 = v33 + 8;
  v105 = v32;
  v102 = v42;
  v42(v41, v32);
  (*(v16 + 104))(v29, *MEMORY[0x277CBA158], v15);
  (*(v16 + 56))(v29, 0, 1, v15);
  v43 = *(v19 + 56);
  sub_261AFB668(v31, v21, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v29, &v21[v43], &qword_27FEDA428, &qword_261D02F28);
  v100 = v16;
  v44 = *(v16 + 48);
  if (v44(v21, 1, v15) == 1)
  {
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    if (v44(&v21[v43], 1, v15) == 1)
    {
      return sub_261AE6A40(v21, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v21, v101, &qword_27FEDA428, &qword_261D02F28);
  if (v44(&v21[v43], 1, v15) == 1)
  {
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    (*(v100 + 8))(v101, v15);
LABEL_6:
    sub_261AE6A40(v21, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v66 = v100;
  v67 = v86;
  (*(v100 + 32))(v86, &v21[v43], v15);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v84 = sub_261CFF974();
  v68 = *(v66 + 8);
  v68(v67, v15);
  sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
  v68(v101, v15);
  result = sub_261AE6A40(v21, &qword_27FEDA428, &qword_261D02F28);
  if (v84)
  {
    return result;
  }

LABEL_7:
  v46 = v90;
  sub_261CFC754();
  v47 = v92;
  sub_261CFCF94();
  v102(v46, v105);
  if (v44(v47, 1, v15) == 1)
  {
    sub_261AE6A40(v47, &qword_27FEDA428, &qword_261D02F28);
    v48 = 0xEE00656372756F73;
    v101 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v101 = sub_261B876C4();
    v48 = v49;
    (*(v100 + 8))(v47, v15);
  }

  v51 = v94;
  v50 = v95;
  v52 = v91;
  sub_261CFC754();
  sub_261CFCF64();
  v102(v52, v105);
  v53 = sub_261CFCF54();
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  if (v55(v51, 1, v53) == 1)
  {
    sub_261AE6A40(v51, &qword_27FEDA418, &qword_261D02F18);
    v100 = 0;
    v95 = 0;
  }

  else
  {
    v100 = sub_261CFCF44();
    v95 = v56;
    (*(v54 + 8))(v51, v53);
  }

  v57 = v93;
  sub_261CFC754();
  sub_261CFCF64();
  v102(v57, v105);
  if (v55(v50, 1, v53) == 1)
  {
    v58 = &qword_27FEDA418;
    v59 = &qword_261D02F18;
    v60 = v50;
  }

  else
  {
    v61 = v87;
    sub_261CFCF34();
    (*(v54 + 8))(v50, v53);
    v62 = v88;
    v63 = v89;
    if ((*(v88 + 48))(v61, 1, v89) != 1)
    {
      v69 = v85;
      (*(v62 + 16))(v85, v61, v63);
      v70 = (*(v62 + 88))(v69, v63);
      if (v70 == *MEMORY[0x277CBA0B8])
      {
        v65 = 0xEE0064726177726FLL;
        v64 = 0x4679616C70736964;
      }

      else if (v70 == *MEMORY[0x277CBA0A8])
      {
        v65 = 0xEB00000000796C6ELL;
        v64 = 0x4F79616C70736964;
      }

      else if (v70 == *MEMORY[0x277CBA0C0])
      {
        v65 = 0xE900000000000079;
        v64 = 0x6C6E4F6563696F76;
      }

      else if (v70 == *MEMORY[0x277CBA0B0])
      {
        v65 = 0xEC00000064726177;
        v64 = 0x726F466563696F76;
      }

      else
      {
        (*(v62 + 8))(v69, v63);
        v65 = 0xE700000000000000;
        v64 = 0x6E776F6E6B6E75;
      }

      (*(v62 + 8))(v61, v63);
      goto LABEL_30;
    }

    v58 = &qword_27FEDA410;
    v59 = &qword_261D02F10;
    v60 = v61;
  }

  sub_261AE6A40(v60, v58, v59);
  v64 = 0;
  v65 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v71 = sub_261CFF7A4();
  __swift_project_value_buffer(v71, qword_27FEDB1E0);
  sub_261CFD104();
  v72 = sub_261CFF784();
  v73 = sub_261CFFE84();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v106[0] = v75;
    *v74 = 136315394;
    *(v74 + 4) = sub_261B879C8(0xD000000000000026, 0x8000000261D17360, v106);
    *(v74 + 12) = 2080;
    v76 = v101;
    *(v74 + 14) = sub_261B879C8(v101, v48, v106);
    _os_log_impl(&dword_261AE2000, v72, v73, "Posting Analytics: %s.%s", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v75, -1, -1);
    MEMORY[0x26671D560](v74, -1, -1);
  }

  else
  {

    v76 = v101;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v77 = 0x8000000261D14240;
  v78 = 0xD000000000000011;
  if ((v96 & 1) == 0)
  {
    v78 = 0x704163696C627570;
    v77 = 0xEF746E65746E4970;
  }

  v80 = v97;
  v79 = v98;
  *v97 = 0xD000000000000026;
  v80[1] = 0x8000000261D17360;
  v80[2] = v76;
  v80[3] = v48;
  v80[4] = v78;
  v80[5] = v77;
  v81 = v99;
  v82 = v95;
  v80[6] = v100;
  v80[7] = v82;
  v80[8] = v64;
  v80[9] = v65;
  (*(v79 + 104))(v80, *MEMORY[0x277D44E90], v81);
  sub_261CFED84();

  return (*(v79 + 8))(v80, v81);
}

uint64_t sub_261B281F8(int a1)
{
  v98 = a1;
  v101 = sub_261CFED34();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v86[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = sub_261CFCF24();
  v91 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v88 = &v86[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = &v86[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v97 = &v86[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v96 = &v86[-v9];
  v10 = sub_261CFCF84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v89 = &v86[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v86[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v94 = &v86[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v103 = &v86[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v86[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v86[-v25];
  v27 = sub_261CFCFA4();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v95 = &v86[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v93 = &v86[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v92 = &v86[-v34];
  MEMORY[0x28223BE20](v33);
  v36 = &v86[-v35];
  v37 = v1[11];
  v120 = v1[10];
  v121 = v37;
  v122 = v1[12];
  v123 = *(v1 + 26);
  v38 = v1[7];
  v116 = v1[6];
  v117 = v38;
  v39 = v1[9];
  v118 = v1[8];
  v119 = v39;
  v40 = v1[3];
  v112 = v1[2];
  v113 = v40;
  v41 = v1[5];
  v114 = v1[4];
  v115 = v41;
  v42 = v1[1];
  v110 = *v1;
  v111 = v42;
  v106 = sub_261B31408();
  sub_261CFC754();
  sub_261CFCF94();
  v43 = *(v28 + 8);
  v108 = v27;
  v107 = v28 + 8;
  v105 = v43;
  v43(v36, v27);
  (*(v11 + 104))(v24, *MEMORY[0x277CBA158], v10);
  (*(v11 + 56))(v24, 0, 1, v10);
  v44 = *(v14 + 56);
  sub_261AFB668(v26, v16, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v24, &v16[v44], &qword_27FEDA428, &qword_261D02F28);
  v104 = v11;
  v45 = *(v11 + 48);
  if (v45(v16, 1, v10) == 1)
  {
    sub_261AE6A40(v24, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    if (v45(&v16[v44], 1, v10) == 1)
    {
      return sub_261AE6A40(v16, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  v47 = v103;
  sub_261AFB668(v16, v103, &qword_27FEDA428, &qword_261D02F28);
  if (v45(&v16[v44], 1, v10) == 1)
  {
    sub_261AE6A40(v24, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
    (*(v104 + 8))(v47, v10);
LABEL_6:
    sub_261AE6A40(v16, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v67 = v104;
  v68 = &v16[v44];
  v69 = v89;
  (*(v104 + 32))(v89, v68, v10);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v87 = sub_261CFF974();
  v70 = *(v67 + 8);
  v70(v69, v10);
  sub_261AE6A40(v24, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v26, &qword_27FEDA428, &qword_261D02F28);
  v70(v103, v10);
  result = sub_261AE6A40(v16, &qword_27FEDA428, &qword_261D02F28);
  if (v87)
  {
    return result;
  }

LABEL_7:
  v48 = v92;
  sub_261CFC754();
  v49 = v94;
  sub_261CFCF94();
  v105(v48, v108);
  if (v45(v49, 1, v10) == 1)
  {
    sub_261AE6A40(v49, &qword_27FEDA428, &qword_261D02F28);
    v50 = 0xEE00656372756F73;
    v103 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v103 = sub_261B876C4();
    v50 = v51;
    (*(v104 + 8))(v49, v10);
  }

  v52 = v97;
  v53 = v96;
  v54 = v93;
  sub_261CFC754();
  sub_261CFCF64();
  v105(v54, v108);
  v55 = sub_261CFCF54();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v53, 1, v55) == 1)
  {
    sub_261AE6A40(v53, &qword_27FEDA418, &qword_261D02F18);
    v104 = 0;
    v97 = 0;
  }

  else
  {
    v104 = sub_261CFCF44();
    v97 = v58;
    (*(v56 + 8))(v53, v55);
  }

  v59 = v95;
  sub_261CFC754();
  sub_261CFCF64();
  v105(v59, v108);
  if (v57(v52, 1, v55) == 1)
  {
    v60 = &qword_27FEDA418;
    v61 = &qword_261D02F18;
    v62 = v52;
  }

  else
  {
    v63 = v90;
    sub_261CFCF34();
    (*(v56 + 8))(v52, v55);
    v64 = v91;
    if ((*(v91 + 48))(v63, 1, v102) != 1)
    {
      v71 = v88;
      v72 = v102;
      (*(v64 + 16))(v88, v63, v102);
      v73 = (*(v64 + 88))(v71, v72);
      if (v73 == *MEMORY[0x277CBA0B8])
      {
        v66 = 0xEE0064726177726FLL;
        v65 = 0x4679616C70736964;
      }

      else if (v73 == *MEMORY[0x277CBA0A8])
      {
        v66 = 0xEB00000000796C6ELL;
        v65 = 0x4F79616C70736964;
      }

      else if (v73 == *MEMORY[0x277CBA0C0])
      {
        v66 = 0xE900000000000079;
        v65 = 0x6C6E4F6563696F76;
      }

      else if (v73 == *MEMORY[0x277CBA0B0])
      {
        v66 = 0xEC00000064726177;
        v65 = 0x726F466563696F76;
      }

      else
      {
        (*(v64 + 8))(v71, v102);
        v66 = 0xE700000000000000;
        v65 = 0x6E776F6E6B6E75;
      }

      (*(v64 + 8))(v63, v102);
      goto LABEL_30;
    }

    v60 = &qword_27FEDA410;
    v61 = &qword_261D02F10;
    v62 = v63;
  }

  sub_261AE6A40(v62, v60, v61);
  v65 = 0;
  v66 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v74 = sub_261CFF7A4();
  __swift_project_value_buffer(v74, qword_27FEDB1E0);
  sub_261CFD104();
  v75 = sub_261CFF784();
  v76 = sub_261CFFE84();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v109 = v78;
    *v77 = 136315394;
    *(v77 + 4) = sub_261B879C8(0xD000000000000017, 0x8000000261D17340, &v109);
    *(v77 + 12) = 2080;
    v79 = v103;
    *(v77 + 14) = sub_261B879C8(v103, v50, &v109);
    _os_log_impl(&dword_261AE2000, v75, v76, "Posting Analytics: %s.%s", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v78, -1, -1);
    MEMORY[0x26671D560](v77, -1, -1);
  }

  else
  {

    v79 = v103;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v80 = 0x8000000261D14240;
  v81 = 0xD000000000000011;
  if ((v98 & 1) == 0)
  {
    v81 = 0x704163696C627570;
    v80 = 0xEF746E65746E4970;
  }

  v82 = v99;
  *v99 = 0xD000000000000017;
  v82[1] = 0x8000000261D17340;
  v82[2] = v79;
  v82[3] = v50;
  v82[4] = v81;
  v82[5] = v80;
  v83 = v97;
  v82[6] = v104;
  v82[7] = v83;
  v82[8] = v65;
  v82[9] = v66;
  v84 = v100;
  v85 = v101;
  (*(v100 + 104))(v82, *MEMORY[0x277D44E90], v101);
  sub_261CFED84();

  return (*(v84 + 8))(v82, v85);
}

uint64_t sub_261B2912C(int a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v95 = a1;
  v4 = sub_261CFED34();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4);
  v96 = &v82[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_261CFCF24();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v82[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v94 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v93 = &v82[-v13];
  v14 = sub_261CFCF84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v82[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v91 = &v82[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v82[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v82[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v82[-v29];
  v31 = sub_261CFCFA4();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v92 = &v82[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v90 = &v82[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v89 = &v82[-v38];
  MEMORY[0x28223BE20](v37);
  v40 = &v82[-v39];
  v105[1] = a2;
  v105[2] = v104;
  v102 = sub_261B313B4();
  sub_261CFC754();
  sub_261CFCF94();
  v41 = *(v32 + 8);
  v103 = v32 + 8;
  v104 = v31;
  v101 = v41;
  v41(v40, v31);
  (*(v15 + 104))(v28, *MEMORY[0x277CBA158], v14);
  (*(v15 + 56))(v28, 0, 1, v14);
  v42 = *(v18 + 56);
  sub_261AFB668(v30, v20, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v28, &v20[v42], &qword_27FEDA428, &qword_261D02F28);
  v99 = v15;
  v43 = *(v15 + 48);
  if (v43(v20, 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    if (v43(&v20[v42], 1, v14) == 1)
    {
      return sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v20, v100, &qword_27FEDA428, &qword_261D02F28);
  if (v43(&v20[v42], 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    (*(v99 + 8))(v100, v14);
LABEL_6:
    sub_261AE6A40(v20, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v65 = v99;
  v66 = v85;
  (*(v99 + 32))(v85, &v20[v42], v14);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v83 = sub_261CFF974();
  v67 = *(v65 + 8);
  v67(v66, v14);
  sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
  v67(v100, v14);
  result = sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
  if (v83)
  {
    return result;
  }

LABEL_7:
  v45 = v89;
  sub_261CFC754();
  v46 = v91;
  sub_261CFCF94();
  v101(v45, v104);
  if (v43(v46, 1, v14) == 1)
  {
    sub_261AE6A40(v46, &qword_27FEDA428, &qword_261D02F28);
    v47 = 0xEE00656372756F73;
    v100 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v100 = sub_261B876C4();
    v47 = v48;
    (*(v99 + 8))(v46, v14);
  }

  v50 = v93;
  v49 = v94;
  v51 = v90;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v51, v104);
  v52 = sub_261CFCF54();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  if (v54(v50, 1, v52) == 1)
  {
    sub_261AE6A40(v50, &qword_27FEDA418, &qword_261D02F18);
    v99 = 0;
    v94 = 0;
  }

  else
  {
    v99 = sub_261CFCF44();
    v94 = v55;
    (*(v53 + 8))(v50, v52);
  }

  v56 = v92;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v56, v104);
  if (v54(v49, 1, v52) == 1)
  {
    v57 = &qword_27FEDA418;
    v58 = &qword_261D02F18;
    v59 = v49;
  }

  else
  {
    v60 = v86;
    sub_261CFCF34();
    (*(v53 + 8))(v49, v52);
    v62 = v87;
    v61 = v88;
    if ((*(v87 + 48))(v60, 1, v88) != 1)
    {
      v68 = v84;
      (*(v62 + 16))(v84, v60, v61);
      v69 = (*(v62 + 88))(v68, v61);
      if (v69 == *MEMORY[0x277CBA0B8])
      {
        v64 = 0xEE0064726177726FLL;
        v63 = 0x4679616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0A8])
      {
        v64 = 0xEB00000000796C6ELL;
        v63 = 0x4F79616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0C0])
      {
        v64 = 0xE900000000000079;
        v63 = 0x6C6E4F6563696F76;
      }

      else if (v69 == *MEMORY[0x277CBA0B0])
      {
        v64 = 0xEC00000064726177;
        v63 = 0x726F466563696F76;
      }

      else
      {
        (*(v62 + 8))(v68, v61);
        v64 = 0xE700000000000000;
        v63 = 0x6E776F6E6B6E75;
      }

      (*(v62 + 8))(v60, v61);
      goto LABEL_30;
    }

    v57 = &qword_27FEDA410;
    v58 = &qword_261D02F10;
    v59 = v60;
  }

  sub_261AE6A40(v59, v57, v58);
  v63 = 0;
  v64 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v70 = sub_261CFF7A4();
  __swift_project_value_buffer(v70, qword_27FEDB1E0);
  sub_261CFD104();
  v71 = sub_261CFF784();
  v72 = sub_261CFFE84();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v105[0] = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_261B879C8(0xD000000000000011, 0x8000000261D17320, v105);
    *(v73 + 12) = 2080;
    v75 = v100;
    *(v73 + 14) = sub_261B879C8(v100, v47, v105);
    _os_log_impl(&dword_261AE2000, v71, v72, "Posting Analytics: %s.%s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v74, -1, -1);
    MEMORY[0x26671D560](v73, -1, -1);
  }

  else
  {

    v75 = v100;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v76 = 0x8000000261D14240;
  v77 = 0x704163696C627570;
  if (v95)
  {
    v77 = 0xD000000000000011;
  }

  else
  {
    v76 = 0xEF746E65746E4970;
  }

  v79 = v96;
  v78 = v97;
  *v96 = 0xD000000000000011;
  v79[1] = 0x8000000261D17320;
  v79[2] = v75;
  v79[3] = v47;
  v79[4] = v77;
  v79[5] = v76;
  v80 = v98;
  v81 = v94;
  v79[6] = v99;
  v79[7] = v81;
  v79[8] = v63;
  v79[9] = v64;
  (*(v78 + 104))(v79, *MEMORY[0x277D44E90], v80);
  sub_261CFED84();

  return (*(v78 + 8))(v79, v80);
}

uint64_t sub_261B29ED0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a3;
  v104 = a4;
  v95 = a1;
  v5 = sub_261CFED34();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_261CFCF24();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v82[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v94 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v93 = &v82[-v13];
  v14 = sub_261CFCF84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v82[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v91 = &v82[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v82[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v82[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v82[-v29];
  v31 = sub_261CFCFA4();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v92 = &v82[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v90 = &v82[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v89 = &v82[-v38];
  MEMORY[0x28223BE20](v37);
  v40 = &v82[-v39];
  v105[1] = a2;
  v105[2] = v103;
  v105[3] = v104;
  v102 = sub_261B317F8();
  sub_261CFC754();
  sub_261CFCF94();
  v41 = *(v32 + 8);
  v103 = v32 + 8;
  v104 = v31;
  v101 = v41;
  v41(v40, v31);
  (*(v15 + 104))(v28, *MEMORY[0x277CBA158], v14);
  (*(v15 + 56))(v28, 0, 1, v14);
  v42 = *(v18 + 56);
  sub_261AFB668(v30, v20, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v28, &v20[v42], &qword_27FEDA428, &qword_261D02F28);
  v99 = v15;
  v43 = *(v15 + 48);
  if (v43(v20, 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    if (v43(&v20[v42], 1, v14) == 1)
    {
      return sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v20, v100, &qword_27FEDA428, &qword_261D02F28);
  if (v43(&v20[v42], 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    (*(v99 + 8))(v100, v14);
LABEL_6:
    sub_261AE6A40(v20, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v65 = v99;
  v66 = v85;
  (*(v99 + 32))(v85, &v20[v42], v14);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v83 = sub_261CFF974();
  v67 = *(v65 + 8);
  v67(v66, v14);
  sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
  v67(v100, v14);
  result = sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
  if (v83)
  {
    return result;
  }

LABEL_7:
  v45 = v89;
  sub_261CFC754();
  v46 = v91;
  sub_261CFCF94();
  v101(v45, v104);
  if (v43(v46, 1, v14) == 1)
  {
    sub_261AE6A40(v46, &qword_27FEDA428, &qword_261D02F28);
    v47 = 0xEE00656372756F73;
    v100 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v100 = sub_261B876C4();
    v47 = v48;
    (*(v99 + 8))(v46, v14);
  }

  v50 = v93;
  v49 = v94;
  v51 = v90;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v51, v104);
  v52 = sub_261CFCF54();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  if (v54(v50, 1, v52) == 1)
  {
    sub_261AE6A40(v50, &qword_27FEDA418, &qword_261D02F18);
    v99 = 0;
    v94 = 0;
  }

  else
  {
    v99 = sub_261CFCF44();
    v94 = v55;
    (*(v53 + 8))(v50, v52);
  }

  v56 = v92;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v56, v104);
  if (v54(v49, 1, v52) == 1)
  {
    v57 = &qword_27FEDA418;
    v58 = &qword_261D02F18;
    v59 = v49;
  }

  else
  {
    v60 = v86;
    sub_261CFCF34();
    (*(v53 + 8))(v49, v52);
    v61 = v87;
    v62 = v88;
    if ((*(v87 + 48))(v60, 1, v88) != 1)
    {
      v68 = v84;
      (*(v61 + 16))(v84, v60, v62);
      v69 = (*(v61 + 88))(v68, v62);
      if (v69 == *MEMORY[0x277CBA0B8])
      {
        v64 = 0xEE0064726177726FLL;
        v63 = 0x4679616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0A8])
      {
        v64 = 0xEB00000000796C6ELL;
        v63 = 0x4F79616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0C0])
      {
        v64 = 0xE900000000000079;
        v63 = 0x6C6E4F6563696F76;
      }

      else if (v69 == *MEMORY[0x277CBA0B0])
      {
        v64 = 0xEC00000064726177;
        v63 = 0x726F466563696F76;
      }

      else
      {
        (*(v61 + 8))(v68, v62);
        v64 = 0xE700000000000000;
        v63 = 0x6E776F6E6B6E75;
      }

      (*(v61 + 8))(v60, v62);
      goto LABEL_30;
    }

    v57 = &qword_27FEDA410;
    v58 = &qword_261D02F10;
    v59 = v60;
  }

  sub_261AE6A40(v59, v57, v58);
  v63 = 0;
  v64 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v70 = sub_261CFF7A4();
  __swift_project_value_buffer(v70, qword_27FEDB1E0);
  sub_261CFD104();
  v71 = sub_261CFF784();
  v72 = sub_261CFFE84();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v105[0] = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_261B879C8(0xD000000000000018, 0x8000000261D174F0, v105);
    *(v73 + 12) = 2080;
    v75 = v100;
    *(v73 + 14) = sub_261B879C8(v100, v47, v105);
    _os_log_impl(&dword_261AE2000, v71, v72, "Posting Analytics: %s.%s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v74, -1, -1);
    MEMORY[0x26671D560](v73, -1, -1);
  }

  else
  {

    v75 = v100;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v76 = 0x8000000261D14240;
  v77 = 0xD000000000000011;
  if ((v95 & 1) == 0)
  {
    v77 = 0x704163696C627570;
    v76 = 0xEF746E65746E4970;
  }

  v79 = v96;
  v78 = v97;
  *v96 = 0xD000000000000018;
  v79[1] = 0x8000000261D174F0;
  v79[2] = v75;
  v79[3] = v47;
  v79[4] = v77;
  v79[5] = v76;
  v80 = v98;
  v81 = v94;
  v79[6] = v99;
  v79[7] = v81;
  v79[8] = v63;
  v79[9] = v64;
  (*(v78 + 104))(v79, *MEMORY[0x277D44E90], v80);
  sub_261CFED84();

  return (*(v78 + 8))(v79, v80);
}

uint64_t sub_261B2AC8C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a3;
  v104 = a4;
  v95 = a1;
  v5 = sub_261CFED34();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_261CFCF24();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v82[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v94 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v93 = &v82[-v13];
  v14 = sub_261CFCF84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v82[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v91 = &v82[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v82[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v82[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v82[-v29];
  v31 = sub_261CFCFA4();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v92 = &v82[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v90 = &v82[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v89 = &v82[-v38];
  MEMORY[0x28223BE20](v37);
  v40 = &v82[-v39];
  v105[1] = a2;
  v105[2] = v103;
  v105[3] = v104;
  v102 = sub_261B31360();
  sub_261CFC754();
  sub_261CFCF94();
  v41 = *(v32 + 8);
  v103 = v32 + 8;
  v104 = v31;
  v101 = v41;
  v41(v40, v31);
  (*(v15 + 104))(v28, *MEMORY[0x277CBA158], v14);
  (*(v15 + 56))(v28, 0, 1, v14);
  v42 = *(v18 + 56);
  sub_261AFB668(v30, v20, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v28, &v20[v42], &qword_27FEDA428, &qword_261D02F28);
  v99 = v15;
  v43 = *(v15 + 48);
  if (v43(v20, 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    if (v43(&v20[v42], 1, v14) == 1)
    {
      return sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v20, v100, &qword_27FEDA428, &qword_261D02F28);
  if (v43(&v20[v42], 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    (*(v99 + 8))(v100, v14);
LABEL_6:
    sub_261AE6A40(v20, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v65 = v99;
  v66 = v85;
  (*(v99 + 32))(v85, &v20[v42], v14);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v83 = sub_261CFF974();
  v67 = *(v65 + 8);
  v67(v66, v14);
  sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
  v67(v100, v14);
  result = sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
  if (v83)
  {
    return result;
  }

LABEL_7:
  v45 = v89;
  sub_261CFC754();
  v46 = v91;
  sub_261CFCF94();
  v101(v45, v104);
  if (v43(v46, 1, v14) == 1)
  {
    sub_261AE6A40(v46, &qword_27FEDA428, &qword_261D02F28);
    v47 = 0xEE00656372756F73;
    v100 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v100 = sub_261B876C4();
    v47 = v48;
    (*(v99 + 8))(v46, v14);
  }

  v50 = v93;
  v49 = v94;
  v51 = v90;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v51, v104);
  v52 = sub_261CFCF54();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  if (v54(v50, 1, v52) == 1)
  {
    sub_261AE6A40(v50, &qword_27FEDA418, &qword_261D02F18);
    v99 = 0;
    v94 = 0;
  }

  else
  {
    v99 = sub_261CFCF44();
    v94 = v55;
    (*(v53 + 8))(v50, v52);
  }

  v56 = v92;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v56, v104);
  if (v54(v49, 1, v52) == 1)
  {
    v57 = &qword_27FEDA418;
    v58 = &qword_261D02F18;
    v59 = v49;
  }

  else
  {
    v60 = v86;
    sub_261CFCF34();
    (*(v53 + 8))(v49, v52);
    v61 = v87;
    v62 = v88;
    if ((*(v87 + 48))(v60, 1, v88) != 1)
    {
      v68 = v84;
      (*(v61 + 16))(v84, v60, v62);
      v69 = (*(v61 + 88))(v68, v62);
      if (v69 == *MEMORY[0x277CBA0B8])
      {
        v64 = 0xEE0064726177726FLL;
        v63 = 0x4679616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0A8])
      {
        v64 = 0xEB00000000796C6ELL;
        v63 = 0x4F79616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0C0])
      {
        v64 = 0xE900000000000079;
        v63 = 0x6C6E4F6563696F76;
      }

      else if (v69 == *MEMORY[0x277CBA0B0])
      {
        v64 = 0xEC00000064726177;
        v63 = 0x726F466563696F76;
      }

      else
      {
        (*(v61 + 8))(v68, v62);
        v64 = 0xE700000000000000;
        v63 = 0x6E776F6E6B6E75;
      }

      (*(v61 + 8))(v60, v62);
      goto LABEL_30;
    }

    v57 = &qword_27FEDA410;
    v58 = &qword_261D02F10;
    v59 = v60;
  }

  sub_261AE6A40(v59, v57, v58);
  v63 = 0;
  v64 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v70 = sub_261CFF7A4();
  __swift_project_value_buffer(v70, qword_27FEDB1E0);
  sub_261CFD104();
  v71 = sub_261CFF784();
  v72 = sub_261CFFE84();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v105[0] = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_261B879C8(0xD000000000000021, 0x8000000261D172F0, v105);
    *(v73 + 12) = 2080;
    v75 = v100;
    *(v73 + 14) = sub_261B879C8(v100, v47, v105);
    _os_log_impl(&dword_261AE2000, v71, v72, "Posting Analytics: %s.%s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v74, -1, -1);
    MEMORY[0x26671D560](v73, -1, -1);
  }

  else
  {

    v75 = v100;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v76 = 0x8000000261D14240;
  v77 = 0xD000000000000011;
  if ((v95 & 1) == 0)
  {
    v77 = 0x704163696C627570;
    v76 = 0xEF746E65746E4970;
  }

  v79 = v96;
  v78 = v97;
  *v96 = 0xD000000000000021;
  v79[1] = 0x8000000261D172F0;
  v79[2] = v75;
  v79[3] = v47;
  v79[4] = v77;
  v79[5] = v76;
  v80 = v98;
  v81 = v94;
  v79[6] = v99;
  v79[7] = v81;
  v79[8] = v63;
  v79[9] = v64;
  (*(v78 + 104))(v79, *MEMORY[0x277D44E90], v80);
  sub_261CFED84();

  return (*(v78 + 8))(v79, v80);
}

uint64_t sub_261B2BA48(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a3;
  v104 = a4;
  v95 = a1;
  v5 = sub_261CFED34();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_261CFCF24();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v82[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v94 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v93 = &v82[-v13];
  v14 = sub_261CFCF84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v82[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v91 = &v82[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v82[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v82[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v82[-v29];
  v31 = sub_261CFCFA4();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v92 = &v82[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v90 = &v82[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v89 = &v82[-v38];
  MEMORY[0x28223BE20](v37);
  v40 = &v82[-v39];
  v105[1] = a2;
  v105[2] = v103;
  v105[3] = v104;
  v102 = sub_261B3130C();
  sub_261CFC754();
  sub_261CFCF94();
  v41 = *(v32 + 8);
  v103 = v32 + 8;
  v104 = v31;
  v101 = v41;
  v41(v40, v31);
  (*(v15 + 104))(v28, *MEMORY[0x277CBA158], v14);
  (*(v15 + 56))(v28, 0, 1, v14);
  v42 = *(v18 + 56);
  sub_261AFB668(v30, v20, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v28, &v20[v42], &qword_27FEDA428, &qword_261D02F28);
  v99 = v15;
  v43 = *(v15 + 48);
  if (v43(v20, 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    if (v43(&v20[v42], 1, v14) == 1)
    {
      return sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v20, v100, &qword_27FEDA428, &qword_261D02F28);
  if (v43(&v20[v42], 1, v14) == 1)
  {
    sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
    (*(v99 + 8))(v100, v14);
LABEL_6:
    sub_261AE6A40(v20, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v65 = v99;
  v66 = v85;
  (*(v99 + 32))(v85, &v20[v42], v14);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v83 = sub_261CFF974();
  v67 = *(v65 + 8);
  v67(v66, v14);
  sub_261AE6A40(v28, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v30, &qword_27FEDA428, &qword_261D02F28);
  v67(v100, v14);
  result = sub_261AE6A40(v20, &qword_27FEDA428, &qword_261D02F28);
  if (v83)
  {
    return result;
  }

LABEL_7:
  v45 = v89;
  sub_261CFC754();
  v46 = v91;
  sub_261CFCF94();
  v101(v45, v104);
  if (v43(v46, 1, v14) == 1)
  {
    sub_261AE6A40(v46, &qword_27FEDA428, &qword_261D02F28);
    v47 = 0xEE00656372756F73;
    v100 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v100 = sub_261B876C4();
    v47 = v48;
    (*(v99 + 8))(v46, v14);
  }

  v50 = v93;
  v49 = v94;
  v51 = v90;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v51, v104);
  v52 = sub_261CFCF54();
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  if (v54(v50, 1, v52) == 1)
  {
    sub_261AE6A40(v50, &qword_27FEDA418, &qword_261D02F18);
    v99 = 0;
    v94 = 0;
  }

  else
  {
    v99 = sub_261CFCF44();
    v94 = v55;
    (*(v53 + 8))(v50, v52);
  }

  v56 = v92;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v56, v104);
  if (v54(v49, 1, v52) == 1)
  {
    v57 = &qword_27FEDA418;
    v58 = &qword_261D02F18;
    v59 = v49;
  }

  else
  {
    v60 = v86;
    sub_261CFCF34();
    (*(v53 + 8))(v49, v52);
    v61 = v87;
    v62 = v88;
    if ((*(v87 + 48))(v60, 1, v88) != 1)
    {
      v68 = v84;
      (*(v61 + 16))(v84, v60, v62);
      v69 = (*(v61 + 88))(v68, v62);
      if (v69 == *MEMORY[0x277CBA0B8])
      {
        v64 = 0xEE0064726177726FLL;
        v63 = 0x4679616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0A8])
      {
        v64 = 0xEB00000000796C6ELL;
        v63 = 0x4F79616C70736964;
      }

      else if (v69 == *MEMORY[0x277CBA0C0])
      {
        v64 = 0xE900000000000079;
        v63 = 0x6C6E4F6563696F76;
      }

      else if (v69 == *MEMORY[0x277CBA0B0])
      {
        v64 = 0xEC00000064726177;
        v63 = 0x726F466563696F76;
      }

      else
      {
        (*(v61 + 8))(v68, v62);
        v64 = 0xE700000000000000;
        v63 = 0x6E776F6E6B6E75;
      }

      (*(v61 + 8))(v60, v62);
      goto LABEL_30;
    }

    v57 = &qword_27FEDA410;
    v58 = &qword_261D02F10;
    v59 = v60;
  }

  sub_261AE6A40(v59, v57, v58);
  v63 = 0;
  v64 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v70 = sub_261CFF7A4();
  __swift_project_value_buffer(v70, qword_27FEDB1E0);
  sub_261CFD104();
  v71 = sub_261CFF784();
  v72 = sub_261CFFE84();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v105[0] = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_261B879C8(0xD000000000000014, 0x8000000261D172D0, v105);
    *(v73 + 12) = 2080;
    v75 = v100;
    *(v73 + 14) = sub_261B879C8(v100, v47, v105);
    _os_log_impl(&dword_261AE2000, v71, v72, "Posting Analytics: %s.%s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v74, -1, -1);
    MEMORY[0x26671D560](v73, -1, -1);
  }

  else
  {

    v75 = v100;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v76 = 0x8000000261D14240;
  v77 = 0xD000000000000011;
  if ((v95 & 1) == 0)
  {
    v77 = 0x704163696C627570;
    v76 = 0xEF746E65746E4970;
  }

  v79 = v96;
  v78 = v97;
  *v96 = 0xD000000000000014;
  v79[1] = 0x8000000261D172D0;
  v79[2] = v75;
  v79[3] = v47;
  v79[4] = v77;
  v79[5] = v76;
  v80 = v98;
  v81 = v94;
  v79[6] = v99;
  v79[7] = v81;
  v79[8] = v63;
  v79[9] = v64;
  (*(v78 + 104))(v79, *MEMORY[0x277D44E90], v80);
  sub_261CFED84();

  return (*(v78 + 8))(v79, v80);
}

uint64_t sub_261B2C804(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a4;
  v105 = a5;
  v103 = a3;
  v96 = a1;
  v6 = sub_261CFED34();
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_261CFCF24();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v83[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v95 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v94 = &v83[-v14];
  v15 = sub_261CFCF84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v86 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v83[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v92 = &v83[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v83[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v83[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v83[-v30];
  v32 = sub_261CFCFA4();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v93 = &v83[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x28223BE20](v34);
  v91 = &v83[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v90 = &v83[-v39];
  MEMORY[0x28223BE20](v38);
  v41 = &v83[-v40];
  v106[1] = a2;
  v106[2] = v103;
  v106[3] = v104;
  v106[4] = v105;
  v103 = sub_261B312B8();
  sub_261CFC754();
  sub_261CFCF94();
  v42 = *(v33 + 8);
  v104 = v33 + 8;
  v105 = v32;
  v102 = v42;
  v42(v41, v32);
  (*(v16 + 104))(v29, *MEMORY[0x277CBA158], v15);
  (*(v16 + 56))(v29, 0, 1, v15);
  v43 = *(v19 + 56);
  sub_261AFB668(v31, v21, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v29, &v21[v43], &qword_27FEDA428, &qword_261D02F28);
  v100 = v16;
  v44 = *(v16 + 48);
  if (v44(v21, 1, v15) == 1)
  {
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    if (v44(&v21[v43], 1, v15) == 1)
    {
      return sub_261AE6A40(v21, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v21, v101, &qword_27FEDA428, &qword_261D02F28);
  if (v44(&v21[v43], 1, v15) == 1)
  {
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    (*(v100 + 8))(v101, v15);
LABEL_6:
    sub_261AE6A40(v21, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v66 = v100;
  v67 = v86;
  (*(v100 + 32))(v86, &v21[v43], v15);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v84 = sub_261CFF974();
  v68 = *(v66 + 8);
  v68(v67, v15);
  sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
  v68(v101, v15);
  result = sub_261AE6A40(v21, &qword_27FEDA428, &qword_261D02F28);
  if (v84)
  {
    return result;
  }

LABEL_7:
  v46 = v90;
  sub_261CFC754();
  v47 = v92;
  sub_261CFCF94();
  v102(v46, v105);
  if (v44(v47, 1, v15) == 1)
  {
    sub_261AE6A40(v47, &qword_27FEDA428, &qword_261D02F28);
    v48 = 0xEE00656372756F73;
    v101 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v101 = sub_261B876C4();
    v48 = v49;
    (*(v100 + 8))(v47, v15);
  }

  v51 = v94;
  v50 = v95;
  v52 = v91;
  sub_261CFC754();
  sub_261CFCF64();
  v102(v52, v105);
  v53 = sub_261CFCF54();
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  if (v55(v51, 1, v53) == 1)
  {
    sub_261AE6A40(v51, &qword_27FEDA418, &qword_261D02F18);
    v100 = 0;
    v95 = 0;
  }

  else
  {
    v100 = sub_261CFCF44();
    v95 = v56;
    (*(v54 + 8))(v51, v53);
  }

  v57 = v93;
  sub_261CFC754();
  sub_261CFCF64();
  v102(v57, v105);
  if (v55(v50, 1, v53) == 1)
  {
    v58 = &qword_27FEDA418;
    v59 = &qword_261D02F18;
    v60 = v50;
  }

  else
  {
    v61 = v87;
    sub_261CFCF34();
    (*(v54 + 8))(v50, v53);
    v62 = v88;
    v63 = v89;
    if ((*(v88 + 48))(v61, 1, v89) != 1)
    {
      v69 = v85;
      (*(v62 + 16))(v85, v61, v63);
      v70 = (*(v62 + 88))(v69, v63);
      if (v70 == *MEMORY[0x277CBA0B8])
      {
        v65 = 0xEE0064726177726FLL;
        v64 = 0x4679616C70736964;
      }

      else if (v70 == *MEMORY[0x277CBA0A8])
      {
        v65 = 0xEB00000000796C6ELL;
        v64 = 0x4F79616C70736964;
      }

      else if (v70 == *MEMORY[0x277CBA0C0])
      {
        v65 = 0xE900000000000079;
        v64 = 0x6C6E4F6563696F76;
      }

      else if (v70 == *MEMORY[0x277CBA0B0])
      {
        v65 = 0xEC00000064726177;
        v64 = 0x726F466563696F76;
      }

      else
      {
        (*(v62 + 8))(v69, v63);
        v65 = 0xE700000000000000;
        v64 = 0x6E776F6E6B6E75;
      }

      (*(v62 + 8))(v61, v63);
      goto LABEL_30;
    }

    v58 = &qword_27FEDA410;
    v59 = &qword_261D02F10;
    v60 = v61;
  }

  sub_261AE6A40(v60, v58, v59);
  v64 = 0;
  v65 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v71 = sub_261CFF7A4();
  __swift_project_value_buffer(v71, qword_27FEDB1E0);
  sub_261CFD104();
  v72 = sub_261CFF784();
  v73 = sub_261CFFE84();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v106[0] = v75;
    *v74 = 136315394;
    *(v74 + 4) = sub_261B879C8(0xD000000000000019, 0x8000000261D172B0, v106);
    *(v74 + 12) = 2080;
    v76 = v101;
    *(v74 + 14) = sub_261B879C8(v101, v48, v106);
    _os_log_impl(&dword_261AE2000, v72, v73, "Posting Analytics: %s.%s", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v75, -1, -1);
    MEMORY[0x26671D560](v74, -1, -1);
  }

  else
  {

    v76 = v101;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v77 = 0x8000000261D14240;
  v78 = 0xD000000000000011;
  if ((v96 & 1) == 0)
  {
    v78 = 0x704163696C627570;
    v77 = 0xEF746E65746E4970;
  }

  v80 = v97;
  v79 = v98;
  *v97 = 0xD000000000000019;
  v80[1] = 0x8000000261D172B0;
  v80[2] = v76;
  v80[3] = v48;
  v80[4] = v78;
  v80[5] = v77;
  v81 = v99;
  v82 = v95;
  v80[6] = v100;
  v80[7] = v82;
  v80[8] = v64;
  v80[9] = v65;
  (*(v79 + 104))(v80, *MEMORY[0x277D44E90], v81);
  sub_261CFED84();

  return (*(v79 + 8))(v80, v81);
}

uint64_t sub_261B2D5D0(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a4;
  v105 = a5;
  v103 = a3;
  v96 = a1;
  v6 = sub_261CFED34();
  v98 = *(v6 - 8);
  v99 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_261CFCF24();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v83[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v95 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v94 = &v83[-v14];
  v15 = sub_261CFCF84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v86 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v83[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v92 = &v83[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v83[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v83[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v83[-v30];
  v32 = sub_261CFCFA4();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v93 = &v83[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x28223BE20](v34);
  v91 = &v83[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v90 = &v83[-v39];
  MEMORY[0x28223BE20](v38);
  v41 = &v83[-v40];
  v106[1] = a2;
  v106[2] = v103;
  v106[3] = v104;
  v106[4] = v105;
  v103 = sub_261B31264();
  sub_261CFC754();
  sub_261CFCF94();
  v42 = *(v33 + 8);
  v104 = v33 + 8;
  v105 = v32;
  v102 = v42;
  v42(v41, v32);
  (*(v16 + 104))(v29, *MEMORY[0x277CBA158], v15);
  (*(v16 + 56))(v29, 0, 1, v15);
  v43 = *(v19 + 56);
  sub_261AFB668(v31, v21, &qword_27FEDA428, &qword_261D02F28);
  sub_261AFB668(v29, &v21[v43], &qword_27FEDA428, &qword_261D02F28);
  v100 = v16;
  v44 = *(v16 + 48);
  if (v44(v21, 1, v15) == 1)
  {
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    if (v44(&v21[v43], 1, v15) == 1)
    {
      return sub_261AE6A40(v21, &qword_27FEDA428, &qword_261D02F28);
    }

    goto LABEL_6;
  }

  sub_261AFB668(v21, v101, &qword_27FEDA428, &qword_261D02F28);
  if (v44(&v21[v43], 1, v15) == 1)
  {
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
    (*(v100 + 8))(v101, v15);
LABEL_6:
    sub_261AE6A40(v21, &qword_27FEDA420, &qword_261D02F20);
    goto LABEL_7;
  }

  v66 = v100;
  v67 = v86;
  (*(v100 + 32))(v86, &v21[v43], v15);
  sub_261AE8268(&qword_27FEDA438, MEMORY[0x277CBA178], MEMORY[0x277CBA180]);
  v84 = sub_261CFF974();
  v68 = *(v66 + 8);
  v68(v67, v15);
  sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
  sub_261AE6A40(v31, &qword_27FEDA428, &qword_261D02F28);
  v68(v101, v15);
  result = sub_261AE6A40(v21, &qword_27FEDA428, &qword_261D02F28);
  if (v84)
  {
    return result;
  }

LABEL_7:
  v46 = v90;
  sub_261CFC754();
  v47 = v92;
  sub_261CFCF94();
  v102(v46, v105);
  if (v44(v47, 1, v15) == 1)
  {
    sub_261AE6A40(v47, &qword_27FEDA428, &qword_261D02F28);
    v48 = 0xEE00656372756F73;
    v101 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v101 = sub_261B876C4();
    v48 = v49;
    (*(v100 + 8))(v47, v15);
  }

  v51 = v94;
  v50 = v95;
  v52 = v91;
  sub_261CFC754();
  sub_261CFCF64();
  v102(v52, v105);
  v53 = sub_261CFCF54();
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  if (v55(v51, 1, v53) == 1)
  {
    sub_261AE6A40(v51, &qword_27FEDA418, &qword_261D02F18);
    v100 = 0;
    v95 = 0;
  }

  else
  {
    v100 = sub_261CFCF44();
    v95 = v56;
    (*(v54 + 8))(v51, v53);
  }

  v57 = v93;
  sub_261CFC754();
  sub_261CFCF64();
  v102(v57, v105);
  if (v55(v50, 1, v53) == 1)
  {
    v58 = &qword_27FEDA418;
    v59 = &qword_261D02F18;
    v60 = v50;
  }

  else
  {
    v61 = v87;
    sub_261CFCF34();
    (*(v54 + 8))(v50, v53);
    v62 = v88;
    v63 = v89;
    if ((*(v88 + 48))(v61, 1, v89) != 1)
    {
      v69 = v85;
      (*(v62 + 16))(v85, v61, v63);
      v70 = (*(v62 + 88))(v69, v63);
      if (v70 == *MEMORY[0x277CBA0B8])
      {
        v65 = 0xEE0064726177726FLL;
        v64 = 0x4679616C70736964;
      }

      else if (v70 == *MEMORY[0x277CBA0A8])
      {
        v65 = 0xEB00000000796C6ELL;
        v64 = 0x4F79616C70736964;
      }

      else if (v70 == *MEMORY[0x277CBA0C0])
      {
        v65 = 0xE900000000000079;
        v64 = 0x6C6E4F6563696F76;
      }

      else if (v70 == *MEMORY[0x277CBA0B0])
      {
        v65 = 0xEC00000064726177;
        v64 = 0x726F466563696F76;
      }

      else
      {
        (*(v62 + 8))(v69, v63);
        v65 = 0xE700000000000000;
        v64 = 0x6E776F6E6B6E75;
      }

      (*(v62 + 8))(v61, v63);
      goto LABEL_30;
    }

    v58 = &qword_27FEDA410;
    v59 = &qword_261D02F10;
    v60 = v61;
  }

  sub_261AE6A40(v60, v58, v59);
  v64 = 0;
  v65 = 0;
LABEL_30:
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v71 = sub_261CFF7A4();
  __swift_project_value_buffer(v71, qword_27FEDB1E0);
  sub_261CFD104();
  v72 = sub_261CFF784();
  v73 = sub_261CFFE84();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v106[0] = v75;
    *v74 = 136315394;
    *(v74 + 4) = sub_261B879C8(0xD000000000000018, 0x8000000261D17290, v106);
    *(v74 + 12) = 2080;
    v76 = v101;
    *(v74 + 14) = sub_261B879C8(v101, v48, v106);
    _os_log_impl(&dword_261AE2000, v72, v73, "Posting Analytics: %s.%s", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v75, -1, -1);
    MEMORY[0x26671D560](v74, -1, -1);
  }

  else
  {

    v76 = v101;
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v77 = 0x8000000261D14240;
  v78 = 0xD000000000000011;
  if ((v96 & 1) == 0)
  {
    v78 = 0x704163696C627570;
    v77 = 0xEF746E65746E4970;
  }

  v80 = v97;
  v79 = v98;
  *v97 = 0xD000000000000018;
  v80[1] = 0x8000000261D17290;
  v80[2] = v76;
  v80[3] = v48;
  v80[4] = v78;
  v80[5] = v77;
  v81 = v99;
  v82 = v95;
  v80[6] = v100;
  v80[7] = v82;
  v80[8] = v64;
  v80[9] = v65;
  (*(v79 + 104))(v80, *MEMORY[0x277D44E90], v81);
  sub_261CFED84();

  return (*(v79 + 8))(v80, v81);
}

uint64_t sub_261B2E39C()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDA370);
  __swift_project_value_buffer(v6, qword_27FEDA370);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateSectionIsCollapsedAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9838 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateSectionIsCollapsedAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t sub_261B2E944(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for SectionEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261B2EAD0(a1, &v10 - v7);
  sub_261B2EAD0(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B2EB34(v8);
}

uint64_t UpdateSectionIsCollapsedAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for SectionEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B2EAD0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t sub_261B2EAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B2EB34(uint64_t a1)
{
  v2 = type metadata accessor for SectionEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*UpdateSectionIsCollapsedAppIntent.entity.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B2EC5C(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateSectionIsCollapsedAppIntent.property.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B2ED9C()
{
  result = swift_getKeyPath();
  qword_27FEDA388 = result;
  return result;
}

uint64_t static UpdateSectionIsCollapsedAppIntent.binding.getter()
{
  if (qword_27FED9840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateSectionIsCollapsedAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDA388 = a1;
}

uint64_t (*static UpdateSectionIsCollapsedAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED9840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B2EF44@<X0>(void *a1@<X8>)
{
  if (qword_27FED9840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDA388;
  return sub_261CFCDA4();
}

uint64_t sub_261B2EFC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9840;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDA388 = v1;
}

uint64_t UpdateSectionIsCollapsedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v63 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v42 - v2;
  v62 = sub_261CFD184();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v55 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_261CFD674();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFD884();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_261CFFA44();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_261CFD6A4();
  v47 = v19;
  v64 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v57 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v56 = &v42 - v23;
  MEMORY[0x28223BE20](v22);
  v59 = &v42 - v24;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA398, &unk_261D02CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v25 = *MEMORY[0x277CC9110];
  v27 = v14 + 104;
  v26 = *(v14 + 104);
  v44 = v13;
  v26(v16, v25, v13);
  v43 = v26;
  v45 = v27;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v26(v16, v25, v13);
  v42 = v12;
  sub_261CFD6C4();
  v28 = *(v64 + 56);
  v64 += 56;
  v48 = v28;
  v28(v12, 0, 1, v19);
  v29 = type metadata accessor for SectionEntity(0);
  (*(*(v29 - 8) + 56))(v49, 1, 1, v29);
  v30 = sub_261CFC834();
  v53 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v52 = v32;
  v54 = v31 + 56;
  v32(v60, 1, 1, v30);
  v32(v55, 1, 1, v30);
  v50 = *MEMORY[0x277CBA308];
  v33 = *(v65 + 104);
  v65 += 104;
  v51 = v33;
  v33(v61);
  sub_261AE8268(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v34 = v42;
  *v63 = sub_261CFCC34();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = v44;
  v36 = v43;
  v43(v16, v25, v44);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v36(v16, v25, v35);
  sub_261CFD6C4();
  v48(v34, 0, 1, v47);
  LOBYTE(v67[0]) = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v36(v16, v25, v35);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v36(v16, v25, v35);
  sub_261CFD6B4();
  v37 = v58;
  sub_261CFFCD4();
  v38 = sub_261CFFCE4();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v52(v60, 1, 1, v53);
  v51(v61, v50, v62);
  v39 = sub_261CFCD44();
  v40 = v63;
  v63[1] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A8, &qword_261D02CF0);
  v66 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v40[2] = result;
  return result;
}

uint64_t UpdateSectionIsCollapsedAppIntent.perform()(uint64_t a1)
{
  *(v2 + 176) = a1;
  v3 = sub_261CFC9D4();
  *(v2 + 184) = v3;
  *(v2 + 192) = *(v3 - 8);
  *(v2 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3B0, &qword_261D02D00);
  *(v2 + 224) = v4;
  *(v2 + 232) = *(v4 - 8);
  *(v2 + 240) = swift_task_alloc();
  v5 = sub_261CFD754();
  *(v2 + 248) = v5;
  *(v2 + 256) = *(v5 - 8);
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  v6 = type metadata accessor for SectionEntity(0);
  *(v2 + 280) = v6;
  *(v2 + 288) = *(v6 - 8);
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = *v1;
  *(v2 + 328) = *(v1 + 16);
  *(v2 + 336) = sub_261CFFD24();
  *(v2 + 344) = sub_261CFFD14();
  v8 = sub_261CFFCF4();
  *(v2 + 352) = v8;
  *(v2 + 360) = v7;

  return MEMORY[0x2822009F8](sub_261B2FD50, v8, v7);
}

uint64_t sub_261B2FD50()
{
  v12 = v0;
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);
  v5 = *(v0 + 272);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261C6FD40(v4, v0 + 56, v10);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_261B2EB34(v4);
  v6 = v10[1];
  *(v0 + 16) = v10[0];
  *(v0 + 32) = v6;
  *(v0 + 48) = v11;
  sub_261B30804(v0 + 16, v0 + 96);
  sub_261CFCBB4();
  *(v0 + 409) = *(v0 + 408);
  sub_261CFCBC4();
  sub_261B30860(v0 + 16);
  sub_261CFCBB4();
  sub_261BBEA50(2u, v5);
  sub_261B2EB34(v4);
  sub_261B0FF98(0, v3, v2, v1);
  *(v0 + 368) = sub_261CFFD14();
  v8 = sub_261CFFCF4();
  *(v0 + 376) = v8;
  *(v0 + 384) = v7;

  return MEMORY[0x2822009F8](sub_261B2FEB4, v8, v7);
}

uint64_t sub_261B2FEB4()
{
  sub_261B30804(v0 + 16, v0 + 136);
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  *v1 = v0;
  v1[1] = sub_261B2FF7C;
  v2 = *(v0 + 240);

  return sub_261C54060(v2, "UpdateSectionAppIntent", 22, 2, v0 + 16);
}

uint64_t sub_261B2FF7C()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);
  if (v0)
  {
    v5 = sub_261B306A0;
  }

  else
  {
    v5 = sub_261B300B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B300B8()
{

  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return MEMORY[0x2822009F8](sub_261B3011C, v1, v2);
}

uint64_t sub_261B3011C()
{
  v38 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[27];
  v4 = v0[26];

  sub_261B01D28(&qword_27FEDA3B8, &qword_27FEDA3B0, &qword_261D02D00, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261AFB668(v3, v4, &qword_27FEDA1E0, &unk_261D02300);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v6 = v0[32];
    v5 = v0[33];
    v7 = v0[31];
    sub_261AE6A40(v0[26], &qword_27FEDA1E0, &unk_261D02300);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    v36 = *(v6 + 8);
    v36(v5, v7);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v11 = sub_261CFF7A4();
    __swift_project_value_buffer(v11, qword_27FED9EF8);
    sub_261CFD104();
    v12 = sub_261CFF784();
    v13 = sub_261CFFE64();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v37);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 134;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD00000000000004CLL, 0x8000000261D171B0, v37);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v28 = v0[29];
    v27 = v0[30];
    v30 = v0[27];
    v29 = v0[28];
    sub_261B01D70();
    swift_allocError();
    *v31 = 20;
    swift_willThrow();
    sub_261B30860((v0 + 2));
    sub_261AE6A40(v30, &qword_27FEDA1E0, &unk_261D02300);
    (*(v28 + 8))(v27, v29);
    v36(v0[34], v0[31]);

    v26 = v0[1];
  }

  else
  {
    v17 = v0[37];
    v18 = v0[32];
    v19 = v0[33];
    v20 = v0[30];
    v33 = v0[31];
    v34 = v0[34];
    v21 = v0[28];
    v22 = v0[29];
    v23 = v0[27];
    v24 = v0[24];
    v25 = v0[25];
    v35 = v0[23];
    sub_261B30EB0(v0[26], v17);
    sub_261AE6A40(v23, &qword_27FEDA1E0, &unk_261D02300);
    (*(v22 + 8))(v20, v21);
    (*(v18 + 16))(v19, v34, v33);
    sub_261CFC9E4();
    sub_261AE8268(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
    sub_261AE8268(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC984();
    sub_261B30860((v0 + 2));
    (*(v24 + 8))(v25, v35);
    sub_261B2EB34(v17);
    (*(v18 + 8))(v34, v33);

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_261B306A0()
{

  v1 = *(v0 + 352);
  v2 = *(v0 + 360);

  return MEMORY[0x2822009F8](sub_261B30704, v1, v2);
}

uint64_t sub_261B30704()
{
  v1 = v0[32];

  sub_261B30860((v0 + 2));
  (*(v1 + 8))(v0[34], v0[31]);

  v2 = v0[1];

  return v2();
}

uint64_t static UpdateSectionIsCollapsedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3C8, &qword_261D02D08);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3D0, &qword_261D02D10);
  MEMORY[0x28223BE20](v1);
  sub_261B30F14();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3D8, &qword_261D02D40);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3E0, &unk_261D02D70);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B30ABC(uint64_t a1)
{
  v2 = type metadata accessor for SectionEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B2EAD0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t (*sub_261B30B4C(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

void *sub_261B30BC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t (*sub_261B30C34(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B30CA8()
{
  if (qword_27FED9840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B30D20@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9838 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B30DD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateSectionIsCollapsedAppIntent.perform()(a1);
}

uint64_t sub_261B30E74(uint64_t a1)
{
  v2 = sub_261B30F14();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261B30EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261B30F14()
{
  result = qword_280D22BC8;
  if (!qword_280D22BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BC8);
  }

  return result;
}

unint64_t sub_261B30FB4()
{
  result = qword_280D22BC0;
  if (!qword_280D22BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BC0);
  }

  return result;
}

unint64_t sub_261B3100C()
{
  result = qword_280D22BD0;
  if (!qword_280D22BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BD0);
  }

  return result;
}

uint64_t destroy for UpdateSectionIsCollapsedAppIntent(void *a1)
{
}

uint64_t *sub_261B310F4(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateSectionIsCollapsedAppIntent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for UpdateSectionIsCollapsedAppIntent(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateSectionIsCollapsedAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

unint64_t sub_261B31264()
{
  result = qword_27FEDA430;
  if (!qword_27FEDA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA430);
  }

  return result;
}

unint64_t sub_261B312B8()
{
  result = qword_27FEDA440;
  if (!qword_27FEDA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA440);
  }

  return result;
}

unint64_t sub_261B3130C()
{
  result = qword_27FEDA448;
  if (!qword_27FEDA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA448);
  }

  return result;
}

unint64_t sub_261B31360()
{
  result = qword_27FEDA450;
  if (!qword_27FEDA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA450);
  }

  return result;
}

unint64_t sub_261B313B4()
{
  result = qword_27FEDA458;
  if (!qword_27FEDA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA458);
  }

  return result;
}

unint64_t sub_261B31408()
{
  result = qword_27FEDA460;
  if (!qword_27FEDA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA460);
  }

  return result;
}

unint64_t sub_261B3145C()
{
  result = qword_27FEDA468;
  if (!qword_27FEDA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA468);
  }

  return result;
}

unint64_t sub_261B314B0()
{
  result = qword_27FEDA470;
  if (!qword_27FEDA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA470);
  }

  return result;
}

unint64_t sub_261B31504()
{
  result = qword_27FEDA478;
  if (!qword_27FEDA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA478);
  }

  return result;
}

unint64_t sub_261B31558()
{
  result = qword_27FEDA480;
  if (!qword_27FEDA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA480);
  }

  return result;
}

unint64_t sub_261B315AC()
{
  result = qword_27FEDA488;
  if (!qword_27FEDA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA488);
  }

  return result;
}

unint64_t sub_261B31600()
{
  result = qword_27FEDA490;
  if (!qword_27FEDA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA490);
  }

  return result;
}

unint64_t sub_261B31654()
{
  result = qword_27FEDA498;
  if (!qword_27FEDA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA498);
  }

  return result;
}

unint64_t sub_261B316A8()
{
  result = qword_27FEDA4A0;
  if (!qword_27FEDA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4A0);
  }

  return result;
}

unint64_t sub_261B316FC()
{
  result = qword_280D22BE0;
  if (!qword_280D22BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BE0);
  }

  return result;
}

unint64_t sub_261B31750()
{
  result = qword_27FEDA4A8;
  if (!qword_27FEDA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4A8);
  }

  return result;
}

unint64_t sub_261B317A4()
{
  result = qword_27FEDA4B0;
  if (!qword_27FEDA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4B0);
  }

  return result;
}

unint64_t sub_261B317F8()
{
  result = qword_27FEDA4B8;
  if (!qword_27FEDA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4B8);
  }

  return result;
}

unint64_t sub_261B3184C()
{
  result = qword_27FEDA4C0;
  if (!qword_27FEDA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4C0);
  }

  return result;
}

unint64_t sub_261B318A0()
{
  result = qword_27FEDA4C8;
  if (!qword_27FEDA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4C8);
  }

  return result;
}

unint64_t sub_261B318F4()
{
  result = qword_27FEDA4D0;
  if (!qword_27FEDA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4D0);
  }

  return result;
}

unint64_t sub_261B31948()
{
  result = qword_27FEDA4D8;
  if (!qword_27FEDA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4D8);
  }

  return result;
}

unint64_t sub_261B3199C()
{
  result = qword_27FEDA4E0;
  if (!qword_27FEDA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4E0);
  }

  return result;
}

unint64_t sub_261B319F0()
{
  result = qword_280D22CA0;
  if (!qword_280D22CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22CA0);
  }

  return result;
}

unint64_t sub_261B31A44()
{
  result = qword_280D22C58;
  if (!qword_280D22C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C58);
  }

  return result;
}

unint64_t sub_261B31A98()
{
  result = qword_280D22C70;
  if (!qword_280D22C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C70);
  }

  return result;
}

unint64_t sub_261B31AEC()
{
  result = qword_280D22C40;
  if (!qword_280D22C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C40);
  }

  return result;
}

unint64_t sub_261B31B40()
{
  result = qword_280D22BF8;
  if (!qword_280D22BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BF8);
  }

  return result;
}

unint64_t sub_261B31B94()
{
  result = qword_280D22D68;
  if (!qword_280D22D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22D68);
  }

  return result;
}

unint64_t sub_261B31BE8()
{
  result = qword_280D22C10;
  if (!qword_280D22C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C10);
  }

  return result;
}

unint64_t sub_261B31C3C()
{
  result = qword_280D22C88;
  if (!qword_280D22C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C88);
  }

  return result;
}

unint64_t sub_261B31C90()
{
  result = qword_280D22C28;
  if (!qword_280D22C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C28);
  }

  return result;
}

unint64_t sub_261B31CE4()
{
  result = qword_27FEDA4E8;
  if (!qword_27FEDA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4E8);
  }

  return result;
}

unint64_t sub_261B31D38()
{
  result = qword_27FEDA4F0;
  if (!qword_27FEDA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA4F0);
  }

  return result;
}

uint64_t (*CompleteRemindersAppIntent.reminders.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CompleteRemindersAppIntent.isCompleted.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261B31FC4(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*CompleteRemindersAppIntent.completeSubtasks.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B32114()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDA4F8);
  __swift_project_value_buffer(v6, qword_27FEDA4F8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CompleteRemindersAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9848 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA4F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CompleteRemindersAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = v41 - v2;
  v3 = sub_261CFD184();
  v4 = *(v3 - 8);
  v62 = v3;
  v63 = v4;
  MEMORY[0x28223BE20](v3);
  v60 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v41 - v12;
  v58 = sub_261CFD674();
  v14 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFD884();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_261CFFA44();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_261CFD6A4();
  v55 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v57 = *MEMORY[0x277CC9110];
  v23 = *(v14 + 104);
  v56 = v14 + 104;
  v59 = v23;
  v48 = v16;
  v23(v16);
  sub_261CFD6C4();
  v24 = *(v22 + 56);
  v54 = v22 + 56;
  v24(v13, 1, 1, v21);
  v44 = v24;
  v65 = 0;
  v25 = sub_261CFC834();
  v49 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v45 = v27;
  v51 = v26 + 56;
  v28 = v46;
  v27(v46, 1, 1, v25);
  v27(v9, 1, 1, v25);
  v53 = *MEMORY[0x277CBA308];
  v29 = *(v63 + 104);
  v63 += 104;
  v52 = v29;
  v29(v60);
  sub_261B32BE4();
  v30 = sub_261CFCC34();
  v31 = v61;
  *v61 = v30;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  v41[1] = v19;
  sub_261CFD874();
  v59(v48, v57, v58);
  sub_261CFD6C4();
  v32 = v13;
  v24(v13, 1, 1, v55);
  LOBYTE(v65) = 2;
  v33 = sub_261CFFCE4();
  v34 = *(v33 - 8);
  v42 = *(v34 + 56);
  v43 = v34 + 56;
  v35 = v47;
  v42(v47, 1, 1, v33);
  v36 = v45;
  v45(v28, 1, 1, v49);
  v37 = v60;
  v52(v60, v53, v62);
  v31[1] = sub_261CFCD44();
  sub_261CFF9B4();
  sub_261CFD874();
  v59(v48, v57, v58);
  sub_261CFD6C4();
  v44(v32, 1, 1, v55);
  LOBYTE(v65) = 2;
  v42(v35, 1, 1, v33);
  v36(v28, 1, 1, v49);
  v52(v37, v53, v62);
  v38 = sub_261CFCD44();
  v39 = v61;
  v61[2] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA518, &qword_261D02F78);
  v64 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v39[3] = result;
  return result;
}

unint64_t sub_261B32BE4()
{
  result = qword_280D22358;
  if (!qword_280D22358)
  {
    type metadata accessor for ReminderEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22358);
  }

  return result;
}

uint64_t CompleteRemindersAppIntent.init(reminders:isCompleted:completeSubtasks:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v57 = a3;
  v56 = a2;
  v55 = a1;
  v71 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = v46 - v5;
  v6 = sub_261CFD184();
  v7 = *(v6 - 8);
  v72 = v6;
  v73 = v7;
  MEMORY[0x28223BE20](v6);
  v70 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v61 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v46 - v14;
  v68 = sub_261CFD674();
  v16 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFFA44();
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_261CFD6A4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v66 = *MEMORY[0x277CC9110];
  v27 = *(v16 + 104);
  v67 = v16 + 104;
  v69 = v27;
  v58 = v18;
  v27(v18);
  sub_261CFD6C4();
  v28 = *(v26 + 56);
  v64 = v26 + 56;
  v65 = v28;
  v29 = v25;
  v49 = v25;
  v28(v15, 1, 1, v25);
  v75 = 0;
  v30 = sub_261CFC834();
  v59 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v50 = v32;
  v60 = v31 + 56;
  v33 = v52;
  v32(v52, 1, 1, v30);
  v32(v61, 1, 1, v30);
  v62 = *MEMORY[0x277CBA308];
  v34 = *(v73 + 104);
  v73 += 104;
  v63 = v34;
  v34(v70);
  sub_261B32BE4();
  v53 = sub_261CFCC34();
  v35 = v71;
  *v71 = v53;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  v46[0] = v24;
  sub_261CFF9B4();
  v46[1] = v21;
  sub_261CFD874();
  v69(v58, v66, v68);
  sub_261CFD6C4();
  v36 = v15;
  v65(v15, 1, 1, v29);
  LOBYTE(v75) = 2;
  v37 = sub_261CFFCE4();
  v38 = *(v37 - 8);
  v47 = *(v38 + 56);
  v48 = v38 + 56;
  v39 = v54;
  v47(v54, 1, 1, v37);
  v40 = v33;
  v41 = v50;
  v50(v33, 1, 1, v59);
  v42 = v70;
  v63(v70, v62, v72);
  v51 = sub_261CFCD44();
  v35[1] = v51;
  sub_261CFF9B4();
  sub_261CFD874();
  v69(v58, v66, v68);
  sub_261CFD6C4();
  v65(v36, 1, 1, v49);
  LOBYTE(v75) = 2;
  v47(v39, 1, 1, v37);
  v41(v40, 1, 1, v59);
  v63(v42, v62, v72);
  v43 = sub_261CFCD44();
  v44 = v71;
  v71[2] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA518, &qword_261D02F78);
  v74 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v44[3] = sub_261CFC684();
  v75 = v55;
  sub_261CFCBC4();
  LOBYTE(v75) = v56;
  sub_261CFCBC4();
  LOBYTE(v75) = v57;
  return sub_261CFCBC4();
}

uint64_t CompleteRemindersAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261B335D0, v5, v4);
}

uint64_t sub_261B335D0()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B06958;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C54A98(v6, "CompleteRemindersAppIntent", 26, 2, v4, v5, v2, v3);
}

uint64_t sub_261B336C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  sub_261CFFD24();
  v5[16] = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  v5[17] = v7;
  v5[18] = v6;

  return MEMORY[0x2822009F8](sub_261B33764, v7, v6);
}

uint64_t sub_261B33764()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_261B10D54(0, v4, v3, v1, v2);
  sub_261CFC664();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[7] = v4;
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v2;
  v10 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_261B06CB8;
  v8 = v0[11];

  return v10(v8, v0 + 7, v5, v6);
}

uint64_t static CompleteRemindersAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDA510 = a1;
  return result;
}

unint64_t sub_261B339D0()
{
  result = qword_27FEDA520;
  if (!qword_27FEDA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA520);
  }

  return result;
}

unint64_t sub_261B33A28()
{
  result = qword_27FEDA528;
  if (!qword_27FEDA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA528);
  }

  return result;
}

uint64_t sub_261B33B00@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9848 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDA4F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B33BF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261B33C94, v5, v4);
}

uint64_t sub_261B33C94()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B07CF8;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C54A98(v6, "CompleteRemindersAppIntent", 26, 2, v4, v5, v2, v3);
}

uint64_t sub_261B33D8C(uint64_t a1)
{
  v2 = sub_261B31D38();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of CompleteRemindersIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_261B33F0C()
{
  result = qword_27FEDA530;
  if (!qword_27FEDA530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA538, &qword_261D030D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA530);
  }

  return result;
}

uint64_t sub_261B33F70()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA540);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA540);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMStoreIntentPerformer.entities(query:for:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v4 = type metadata accessor for AppEntityID(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261B34124, 0, 0);
}

{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_261B3C288, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for GroupEntity(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for AppEntityID(0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BA0D00, 0, 0);
}

{
  v3[2] = a2;
  v3[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v3[4] = swift_task_alloc();
  v4 = type metadata accessor for ReminderEntity(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for AppEntityID(0);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BD6A84, 0, 0);
}

{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261B0D584;

  return sub_261BE0BE8(a2);
}

{
  v3[2] = a2;
  v3[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v3[4] = swift_task_alloc();
  v4 = type metadata accessor for SectionEntity(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for SectionEntityID(0);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for AppEntityID(0);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C68028, 0, 0);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261B4276C;

  return sub_261C89DEC(a1, a2);
}

uint64_t sub_261B34124()
{
  v67 = v0;
  v66[1] = *MEMORY[0x277D85DE8];
  if (qword_27FED9850 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDA540);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v66[0] = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x26671C340](v5, v4);
    v10 = sub_261B879C8(v8, v9, v66);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_261AE2000, v2, v3, "[ListEntityListQueryPerforming] Query list or custom smart list with identifiers %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v11 = v0[4];
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v0[7];
    v66[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v15 = v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);
    do
    {
      v17 = v0[8];
      sub_261B01DC4(v15, v17, type metadata accessor for AppEntityID);
      v18 = objc_allocWithZone(MEMORY[0x277D44700]);
      v19 = sub_261CFD814();
      v20 = sub_261CFFA54();
      [v18 initWithUUID:v19 entityName:v20];

      sub_261B3B9DC(v17, type metadata accessor for AppEntityID);
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v15 += v16;
      --v12;
    }

    while (v12);
    v13 = v66[0];
  }

  v21 = sub_261B3B11C(v13);

  v65 = MEMORY[0x277D84F98];
  v22 = [objc_opt_self() cdEntityName];
  v23 = sub_261CFFA74();
  v25 = v24;

  if (!v21[2])
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_261B37CE8(v23, v25);
  v27 = v26;

  if (v27)
  {
    v28 = *(v0[5] + 16);
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    sub_261CFD104();
    v29 = sub_261CFFC54();

    v0[3] = 0;
    v30 = [v28 fetchListsWithObjectIDs:v29 error:v0 + 3];

    v31 = v0[3];
    if (!v30)
    {
      v61 = v31;

      sub_261CFD654();

      goto LABEL_37;
    }

    sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
    sub_261B3B918();
    v32 = sub_261CFF8F4();
    v33 = v31;

    sub_261B34BA4(v32, &qword_27FEDB0E0, 0x277D44660);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD9F0, &qword_261D03110);
    sub_261CFF904();
    goto LABEL_13;
  }

LABEL_14:
  v34 = [objc_opt_self() cdEntityName];
  v35 = sub_261CFFA74();
  v37 = v36;

  if (!v21[2])
  {

LABEL_29:

    goto LABEL_30;
  }

  sub_261B37CE8(v35, v37);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_30:
    v56 = v0[4];
    v57 = v0[5];
    sub_261CFCDA4();
    v58 = sub_261B3B638(v56, &v65, v57);

    v59 = v0[1];

    return v59(v58);
  }

  v40 = *(v0[5] + 16);
  v0[2] = 0;
  v41 = [v40 fetchCustomSmartListsWithError_];
  v42 = v0[2];
  if (v41)
  {
    v43 = v41;
    sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
    v44 = sub_261CFFC64();
    v45 = v42;

    if (v44 >> 62)
    {
      v46 = sub_261D00274();
      if (v46)
      {
LABEL_19:
        v66[0] = MEMORY[0x277D84F90];
        sub_261B3A004(0, v46 & ~(v46 >> 63), 0);
        if (v46 < 0)
        {
          __break(1u);
        }

        v47 = 0;
        v48 = v66[0];
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x26671CA10](v47, v44);
          }

          else
          {
            v49 = *(v44 + 8 * v47 + 32);
          }

          v50 = v49;
          v51 = [v49 objectID];
          v66[0] = v48;
          v53 = *(v48 + 16);
          v52 = *(v48 + 24);
          if (v53 >= v52 >> 1)
          {
            v55 = v51;
            sub_261B3A004((v52 > 1), v53 + 1, 1);
            v51 = v55;
            v48 = v66[0];
          }

          ++v47;
          *(v48 + 16) = v53 + 1;
          v54 = v48 + 16 * v53;
          *(v54 + 32) = v51;
          *(v54 + 40) = v50;
        }

        while (v46 != v47);

        if (*(v48 + 16))
        {
          goto LABEL_35;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        goto LABEL_19;
      }
    }

    v48 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_35:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA560, &qword_261D03108);
      v62 = sub_261D00544();
LABEL_43:
      v66[0] = v62;
      sub_261B3B3B0(v48, 1, v66);

      sub_261B34BA4(v66[0], &unk_27FEDB000, 0x277D447F8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD9F0, &qword_261D03110);
      sub_261CFF904();
      goto LABEL_29;
    }

LABEL_42:
    v62 = MEMORY[0x277D84F98];
    goto LABEL_43;
  }

  v63 = v42;
  sub_261CFD654();

LABEL_37:
  swift_willThrow();

  v64 = v0[1];

  return v64();
}

uint64_t sub_261B34990(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6E0, &qword_261D03278);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = v16 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v19 = MEMORY[0x277D84F90];
  sub_261B3A024(0, v8, 0);
  v9 = v19;
  v10 = *(sub_261CFEFD4() - 8);
  v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v16[1] = v5 + 32;
  v12 = *(v10 + 72);
  while (1)
  {
    sub_261B3663C(v11, v18, v7);
    if (v3)
    {
      break;
    }

    v3 = 0;
    v19 = v9;
    v14 = *(v9 + 16);
    v13 = *(v9 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_261B3A024((v13 > 1), v14 + 1, 1);
      v9 = v19;
    }

    *(v9 + 16) = v14 + 1;
    (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v17);
    v11 += v12;
    if (!--v8)
    {
      return v9;
    }
  }

  __break(1u);
  return result;
}

void sub_261B34BA4(unint64_t a1, unint64_t *a2, void *a3)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = MEMORY[0x277D84F98];
    goto LABEL_6;
  }

  if (!sub_261D00274())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD240, &qword_261D031B0);
  v5 = sub_261D00544();
LABEL_6:
  if (sub_261B05020(0, &qword_280D21DF0, 0x277D44700) != MEMORY[0x277D837D0])
  {
    if (v4)
    {
      v6 = sub_261D00424();
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = v6 | 0x8000000000000000;
    }

    else
    {
      v16 = -1 << *(a1 + 32);
      v8 = ~v16;
      v7 = a1 + 64;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v9 = v18 & *(a1 + 64);
      v10 = a1;
    }

    v19 = (v8 + 64) >> 6;
    v20 = v5 + 64;
    sub_261CFCDA4();
    sub_261CFD104();
    v21 = 0;
    for (i = v10; ; v10 = i)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        v32 = sub_261D004B4();
        if (!v32)
        {
          v41 = v10;
          goto LABEL_62;
        }

        v68 = v32;
        swift_dynamicCast();
        sub_261B05020(0, a2, a3);
        swift_dynamicCast();
        v31 = v68;
        v30 = v70;
        v24 = v21;
        v26 = v9;
        if (!v70)
        {
LABEL_38:
          v41 = i;
          goto LABEL_62;
        }
      }

      else
      {
        v23 = v9;
        v24 = v21;
        if (!v9)
        {
          v25 = v21;
          while (1)
          {
            v24 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v24 >= v19)
            {
              goto LABEL_38;
            }

            v23 = *(v7 + 8 * v24);
            ++v25;
            if (v23)
            {
              v10 = i;
              goto LABEL_25;
            }
          }

LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_25:
        v26 = (v23 - 1) & v23;
        v27 = (v24 << 9) | (8 * __clz(__rbit64(v23)));
        v28 = *(*(v10 + 48) + v27);
        v29 = *(*(v10 + 56) + v27);
        v30 = v28;
        v31 = v29;
        if (!v30)
        {
          goto LABEL_38;
        }
      }

      v33 = sub_261D000E4();
      v34 = -1 << *(v5 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) != 0)
      {
        v22 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        do
        {
          if (++v36 == v38 && (v37 & 1) != 0)
          {
            __break(1u);
            goto LABEL_65;
          }

          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
        }

        while (v40 == -1);
        v22 = __clz(__rbit64(~v40)) + (v36 << 6);
      }

      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v5 + 48) + 8 * v22) = v30;
      *(*(v5 + 56) + 8 * v22) = v31;
      ++*(v5 + 16);
      v21 = v24;
      v9 = v26;
    }
  }

  if (v4)
  {
    v11 = sub_261D00424();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v11 | 0x8000000000000000;
  }

  else
  {
    v42 = -1 << *(a1 + 32);
    v13 = ~v42;
    v12 = a1 + 64;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v14 = v44 & *(a1 + 64);
    v15 = a1;
  }

  v45 = (v13 + 64) >> 6;
  sub_261CFCDA4();
  sub_261CFD104();
  v46 = 0;
  for (j = v15; ; v15 = j)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      v58 = sub_261D004B4();
      if (!v58)
      {
        v41 = v15;
        goto LABEL_62;
      }

      v69 = v58;
      swift_dynamicCast();
      sub_261B05020(0, a2, a3);
      swift_dynamicCast();
      v57 = v69;
      v56 = v70;
      v51 = v46;
      v53 = v14;
      if (!v70)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v50 = v14;
      v51 = v46;
      if (!v14)
      {
        v52 = v46;
        while (1)
        {
          v51 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_66;
          }

          if (v51 >= v45)
          {
            break;
          }

          v50 = *(v12 + 8 * v51);
          ++v52;
          if (v50)
          {
            v15 = j;
            goto LABEL_53;
          }
        }

LABEL_61:
        v41 = j;
LABEL_62:
        sub_261AE6F74(v41);

        return;
      }

LABEL_53:
      v53 = (v50 - 1) & v50;
      v54 = (v51 << 9) | (8 * __clz(__rbit64(v50)));
      v55 = *(*(v15 + 56) + v54);
      v56 = *(*(v15 + 48) + v54);
      v57 = v55;
      if (!v56)
      {
        goto LABEL_61;
      }
    }

    v59 = sub_261B37CA4(v56);
    if (v60)
    {
      v47 = *(v5 + 48);
      v48 = *(v47 + 8 * v59);
      *(v47 + 8 * v59) = v56;
      v49 = v59;

      *(*(v5 + 56) + 8 * v49) = v57;
      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    if (*(v5 + 16) >= *(v5 + 24))
    {
      goto LABEL_67;
    }

    *(v5 + 64 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
    *(*(v5 + 48) + 8 * v59) = v56;
    *(*(v5 + 56) + 8 * v59) = v57;
    v61 = *(v5 + 16);
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (v62)
    {
      break;
    }

    *(v5 + 16) = v63;
LABEL_45:
    v46 = v51;
    v14 = v53;
  }

LABEL_68:
  __break(1u);
}

void sub_261B35144(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a2;
  v70 = a3;
  v73 = a4;
  v76[1] = *MEMORY[0x277D85DE8];
  v74 = type metadata accessor for ListEntity(0);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AppEntityID(0);
  v5 = objc_allocWithZone(MEMORY[0x277D44700]);
  v6 = sub_261CFD814();
  v7 = sub_261CFFA54();
  v8 = [v5 initWithUUID:v6 entityName:v7];

  v9 = objc_allocWithZone(MEMORY[0x277D44700]);
  v10 = sub_261CFD814();
  v11 = sub_261CFFA54();
  v12 = [v9 initWithUUID:v10 entityName:v11];

  v13 = sub_261CADDC8(v12, *v75);
  if (v13)
  {
    v14 = [v8 entityName];
    v15 = sub_261CFFA74();
    v17 = v16;

    v18 = [objc_opt_self() cdEntityName];
    v19 = sub_261CFFA74();
    v21 = v20;

    if (v19 == v15 && v21 == v17)
    {
    }

    else
    {
      v29 = sub_261D00614();

      if ((v29 & 1) == 0)
      {
        v47 = [objc_opt_self() cdEntityName];
        v48 = sub_261CFFA74();
        v50 = v49;

        if (v48 == v15 && v50 == v17)
        {
        }

        else
        {
          v54 = sub_261D00614();

          if ((v54 & 1) == 0)
          {
            if (qword_27FED9850 != -1)
            {
              swift_once();
            }

            v63 = sub_261CFF7A4();
            __swift_project_value_buffer(v63, qword_27FEDA540);
            v40 = v8;
            v41 = sub_261CFF784();
            v42 = sub_261CFFE74();

            if (!os_log_type_enabled(v41, v42))
            {
              goto LABEL_44;
            }

            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *v43 = 138543362;
            *(v43 + 4) = v40;
            *v44 = v40;
            v64 = v40;
            v46 = "[ListEntityListQueryPerforming] Unknown list entity type: %{public}@";
            goto LABEL_43;
          }
        }

        objc_opt_self();
        v55 = swift_dynamicCastObjCClass();
        if (v55)
        {
          v56 = v55;
          swift_unknownObjectRetain();
          v57 = [v56 customContext];
          if (v57)
          {

            v58 = [v56 parentListID];
            if (v58)
            {
              v59 = v58;
              v60 = *(v70 + 16);
              v76[0] = 0;
              v61 = [v60 fetchListWithObjectID:v59 error:v76];
              v62 = v76[0];
              v51 = v71;
              if (!v61)
              {
                v68 = v62;
                swift_unknownObjectRelease();
                sub_261CFD654();

                swift_willThrow();
                swift_unknownObjectRelease();

                return;
              }
            }

            else
            {
              v61 = 0;
              v51 = v71;
            }

            sub_261B750A0(v56, v61, v51);
            goto LABEL_25;
          }

          swift_unknownObjectRelease();
        }

        if (qword_27FED9850 != -1)
        {
          swift_once();
        }

        v65 = sub_261CFF7A4();
        __swift_project_value_buffer(v65, qword_27FEDA540);
        v40 = v8;
        v41 = sub_261CFF784();
        v42 = sub_261CFFE74();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138543362;
          *(v43 + 4) = v40;
          *v44 = v40;
          v66 = v40;
          v46 = "[ListEntityListQueryPerforming] Should not happen that the smartList fetched with a smartList ID not being a CSL: %{public}@";
          goto LABEL_43;
        }

LABEL_44:

        sub_261B01D70();
        swift_allocError();
        *v67 = 20;
        swift_willThrow();

        swift_unknownObjectRelease();
        return;
      }
    }

    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v31 = v30;
      swift_unknownObjectRetain();
      if ([v31 isGroup])
      {
        swift_unknownObjectRelease();
        if (qword_27FED9850 != -1)
        {
          swift_once();
        }

        v32 = sub_261CFF7A4();
        __swift_project_value_buffer(v32, qword_27FEDA540);
        v33 = v8;
        v34 = sub_261CFF784();
        v35 = sub_261CFFE64();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138543362;
          *(v36 + 4) = v33;
          *v37 = v33;
          v38 = v33;
          _os_log_impl(&dword_261AE2000, v34, v35, "[ListEntityListQueryPerforming] Attempt to create ListEntity from a group: %{public}@. This is not permitted because we have GroupEntity.", v36, 0xCu);
          sub_261AE6A40(v37, &unk_27FEDA730, &unk_261D035C0);
          MEMORY[0x26671D560](v37, -1, -1);
          MEMORY[0x26671D560](v36, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v72 + 56))(v73, 1, 1, v74);
        return;
      }

      v51 = v71;
      sub_261B73240(v31, v71);
LABEL_25:

      swift_unknownObjectRelease();
      v52 = v51;
      v53 = v73;
      sub_261B01E2C(v52, v73);
      (*(v72 + 56))(v53, 0, 1, v74);
      return;
    }

    if (qword_27FED9850 != -1)
    {
      swift_once();
    }

    v39 = sub_261CFF7A4();
    __swift_project_value_buffer(v39, qword_27FEDA540);
    v40 = v8;
    v41 = sub_261CFF784();
    v42 = sub_261CFFE74();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      v46 = "[ListEntityListQueryPerforming] Should not happen that the list fetched with a list ID not being a REMList: %{public}@";
LABEL_43:
      _os_log_impl(&dword_261AE2000, v41, v42, v46, v43, 0xCu);
      sub_261AE6A40(v44, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v44, -1, -1);
      MEMORY[0x26671D560](v43, -1, -1);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if (qword_27FED9850 != -1)
  {
    swift_once();
  }

  v22 = sub_261CFF7A4();
  __swift_project_value_buffer(v22, qword_27FEDA540);
  v23 = v8;
  v24 = sub_261CFF784();
  v25 = sub_261CFFE64();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138543362;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_261AE2000, v24, v25, "[ListEntityListQueryPerforming] Could not fetch list with %{public}@", v26, 0xCu);
    sub_261AE6A40(v27, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v27, -1, -1);
    MEMORY[0x26671D560](v26, -1, -1);
    v23 = v24;
    v24 = v28;
  }

  (*(v72 + 56))(v73, 1, 1, v74);
}

uint64_t REMStoreIntentPerformer.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_261B35B74, 0, 0);
}

{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v5[6] = swift_task_alloc();
  v6 = sub_261CFEFD4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BA1D0C, 0, 0);
}

{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_261C6A314, 0, 0);
}

uint64_t sub_261B35B74()
{
  v15 = v0;
  if (qword_27FED9850 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDA540);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_261B879C8(v5, v4, &v12);
    _os_log_impl(&dword_261AE2000, v2, v3, "[ListEntityListQueryPerforming] Query list or custom smart list matching string %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v8 = v0[4];
  v9 = v0[2];
  v12 = v0[3];
  v13 = v8;
  v14 = 0;
  sub_261CFD104();
  sub_261B35D44(&v12, v9);
  sub_261B3B980(v12, v13, v14);
  v10 = v0[1];

  return v10();
}

uint64_t sub_261B35D44@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = v33 - v7;
  v8 = sub_261CFEFD4();
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v43 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = v33 - v11;
  v45 = 0;
  v13 = *a1;
  v12 = a1[1];
  v14 = *(a1 + 16);
  v46 = 0;
  if (v14)
  {
    v35 = 0;
  }

  else
  {
    v45 = v13;
    v46 = v12;
    v35 = v12;
    sub_261CFD104();
    LOBYTE(v13) = 3;
  }

  sub_261CFEFE4();
  result = sub_261CFEF54();
  if (v3)
  {
  }

  v16 = result;
  v33[1] = 0;
  v33[2] = a3;
  v40 = *(result + 16);
  if (!v40)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_22:

    sub_261B34990(v18, &v45);

    v32 = sub_261CFD6A4();
    (*(*(v32 - 8) + 56))(v34, 1, 1, v32);
    type metadata accessor for ListEntity(0);
    sub_261B3B994(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    sub_261CFCFC4();
  }

  v17 = 0;
  v39 = v41 + 16;
  v36 = (v41 + 8);
  v42 = (v41 + 32);
  v18 = MEMORY[0x277D84F90];
  v19 = v13;
  v38 = v8;
  v37 = v13;
  while (v17 < *(v16 + 16))
  {
    v20 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v21 = *(v41 + 72);
    (*(v41 + 16))(v44, v16 + v20 + v21 * v17, v8);
    if (v19 > 1)
    {
      if (v19 != 2 || (v24 = sub_261CFEF84(), v25 = [v24 capabilities], v24, LOBYTE(v24) = objc_msgSend(v25, sel_supportsSections), v25, (v24 & 1) != 0))
      {
LABEL_16:
        v26 = v16;
        v27 = *v42;
        (*v42)(v43, v44, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_261B3A064(0, *(v18 + 16) + 1, 1);
          v18 = v47;
        }

        v30 = *(v18 + 16);
        v29 = *(v18 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_261B3A064((v29 > 1), v30 + 1, 1);
          v18 = v47;
        }

        *(v18 + 16) = v30 + 1;
        v31 = v18 + v20 + v30 * v21;
        v8 = v38;
        result = (v27)(v31, v43, v38);
        v16 = v26;
        v19 = v37;
        goto LABEL_8;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_16;
      }

      v22 = sub_261CFEF84();
      v23 = [v22 capabilities];

      LODWORD(v22) = [v23 supportsGroups];
      if (v22)
      {
        goto LABEL_16;
      }
    }

    result = (*v36)(v44, v8);
LABEL_8:
    if (v40 == ++v17)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t REMStoreIntentPerformer.suggestedEntities(query:criteria:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 32) = *v3;
  *(v4 + 40) = *a3;
  return MEMORY[0x2822009F8](sub_261B36214, 0, 0);
}

uint64_t sub_261B36214()
{
  v11 = v0;
  if (qword_27FED9850 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDA540);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261AE2000, v2, v3, "[ListEntityListQueryPerforming] Query suggested lists & custom smart lists", v4, 2u);
    MEMORY[0x26671D560](v4, -1, -1);
  }

  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  v9[0] = v5;
  v9[1] = 0;
  v10 = 1;
  sub_261B35D44(v9, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t REMStoreIntentPerformer.defaultListEntity(query:criteria:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  *(v4 + 40) = *a3;

  return MEMORY[0x2822009F8](sub_261B36404, 0, 0);
}

uint64_t sub_261B36404()
{
  if (qword_27FED9850 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDA540);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261AE2000, v2, v3, "[ListEntityListQueryPerforming] Query default list", v4, 2u);
    MEMORY[0x26671D560](v4, -1, -1);
  }

  v5 = *(v0 + 40);
  v6 = *(v0 + 32);

  v7 = *(v6 + 16);
  *(v0 + 16) = 0;
  if ((v5 - 1) > 1)
  {
    v8 = [v7 fetchDefaultListWithError_];
  }

  else
  {
    v8 = [v7 fetchDefaultListRequiringCloudKitWithError_];
  }

  v9 = v8;
  v10 = v9;
  v11 = *(v0 + 16);
  if (v11)
  {
    v11;

    swift_willThrow();
    v12 = *(v0 + 8);
  }

  else
  {
    if (v9)
    {
      sub_261B73240(v9, *(v0 + 24));
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(v0 + 24);
    v15 = type metadata accessor for ListEntity(0);
    (*(*(v15 - 8) + 56))(v14, v13, 1, v15);
    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_261B3663C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = v37 - v10;
  v48 = type metadata accessor for ListEntity(0);
  v50 = *(v48 - 8);
  v11 = MEMORY[0x28223BE20](v48);
  v44 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = v37 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F8, &qword_261D03288);
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v16 = v37 - v15;
  v41 = sub_261CFD6A4();
  v17 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v47 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFEF94();
  v20 = sub_261B37650(v19, a2);

  v21 = v20[2];
  if (v21)
  {
    v37[2] = v3;
    v37[3] = a1;
    v37[4] = a3;
    v51 = MEMORY[0x277D84F90];
    sub_261B3A0A8(0, v21, 0);
    v22 = v51;
    v23 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v37[1] = v20;
    v24 = v20 + v23;
    v25 = *(v50 + 72);
    v38 = (v17 + 56);
    v39 = v25;
    v37[5] = v14 + 32;
    v40 = v14;
    v26 = v45;
    do
    {
      v49 = v21;
      v50 = v22;
      v27 = v43;
      sub_261B01DC4(v24, v43, type metadata accessor for ListEntity);
      sub_261B01DC4(v27, v44, type metadata accessor for ListEntity);
      sub_261CFCA04();
      sub_261CFD664();
      (*v38)(v26, 1, 1, v41);
      v28 = sub_261CFD074();
      (*(*(v28 - 8) + 56))(v46, 1, 1, v28);
      sub_261B3B994(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
      sub_261CFC7F4();
      v29 = v27;
      v22 = v50;
      sub_261B3B9DC(v29, type metadata accessor for ListEntity);
      v51 = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_261B3A0A8((v30 > 1), v31 + 1, 1);
        v22 = v51;
      }

      *(v22 + 16) = v31 + 1;
      (*(v40 + 32))(v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31, v16, v42);
      v24 += v39;
      v21 = v49 - 1;
    }

    while (v49 != 1);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v32 = sub_261CFEF84();
  v33 = [v32 displayName];

  sub_261CFFA74();
  v34 = v47;
  sub_261CFD664();
  v35 = sub_261B3B994(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  return MEMORY[0x2667195E0](v34, v22, v48, v35);
}

uint64_t *sub_261B36BD8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v58 = a3;
  v65 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v54 - v5;
  v71 = sub_261CFEF64();
  v6 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_261CFEFA4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ListEntity(0);
  v72 = *(v67 - 8);
  v10 = MEMORY[0x28223BE20](v67);
  v66 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v54 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v70 = (&v54 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v69 = (&v54 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v54 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = (&v54 - v22);
  v24 = sub_261CFEF74();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = MEMORY[0x277D84F90];
  (*(v25 + 16))(v27, v65, v24);
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 == *MEMORY[0x277D452F8])
  {
    (*(v25 + 96))(v27, v24);
    v29 = *v27;
    sub_261B73240(v29, v23);
    v30 = sub_261B419E8(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = v30[2];
    v31 = v30[3];
    v32 = v8 + 1;
    if (v8 >= v31 >> 1)
    {
      goto LABEL_45;
    }

    while (1)
    {

      v30[2] = v32;
      v33 = v30 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v8;
      v34 = v23;
LABEL_8:
      sub_261B01E2C(v34, v33);
      v78 = v30;
      result = *(a2 + 8);
      if (!result)
      {
        break;
      }

LABEL_29:
      v65 = *a2;
      v45 = v30[2];
      v69 = result;
      sub_261CFD104();
      v64 = v45;
      if (!v45)
      {
        v29 = MEMORY[0x277D84F90];
LABEL_41:

        v30 = v29;
        break;
      }

      v46 = 0;
      v29 = MEMORY[0x277D84F90];
      v63 = v30;
      while (1)
      {
        v31 = v30[2];
        if (v46 >= v31)
        {
          break;
        }

        v71 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v70 = *(v72 + 72);
        sub_261B01DC4(v30 + v71 + v70 * v46, v14, type metadata accessor for ListEntity);
        sub_261CFCA04();
        v47 = v68;
        sub_261CFD874();
        v48 = sub_261CFD884();
        (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
        a2 = sub_261B3BA3C();
        v23 = MEMORY[0x277D837D0];
        v49 = sub_261D00194();
        v8 = v14;
        v51 = v50;
        sub_261AE6A40(v47, &qword_27FEDA708, &qword_261D03298);

        v75 = v49;
        v76 = v51;
        v73 = v65;
        v74 = v69;
        v32 = sub_261D00184();

        if (v32)
        {
          sub_261B01E2C(v8, v66);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77[0] = v29;
          v14 = v8;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v32 = v77;
            sub_261B3A0E8(0, *(v29 + 2) + 1, 1);
            v29 = v77[0];
          }

          v30 = v63;
          a2 = *(v29 + 2);
          v53 = *(v29 + 3);
          if (a2 >= v53 >> 1)
          {
            v32 = v77;
            sub_261B3A0E8((v53 > 1), a2 + 1, 1);
            v29 = v77[0];
          }

          *(v29 + 2) = a2 + 1;
          sub_261B01E2C(v66, &v29[v71 + a2 * v70]);
        }

        else
        {
          sub_261B3B9DC(v8, type metadata accessor for ListEntity);
          v14 = v8;
          v30 = v63;
        }

        if (v64 == ++v46)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v30 = sub_261B419E8((v31 > 1), v32, 1, v30);
    }

LABEL_42:
    *v58 = v30;
    return result;
  }

  if (v28 == *MEMORY[0x277D452F0])
  {
    (*(v25 + 96))(v27, v24);
    v32 = *v27;
    sub_261B750A0(v32, 0, v21);
    v30 = sub_261B419E8(0, 1, 1, MEMORY[0x277D84F90]);
    v36 = v30[2];
    v35 = v30[3];
    v8 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v30 = sub_261B419E8((v35 > 1), v36 + 1, 1, v30);
    }

    v30[2] = v8;
    v33 = v30 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v36;
    v34 = v21;
    goto LABEL_8;
  }

  if (v28 == *MEMORY[0x277D45300])
  {
    v54 = a2;
    v55 = v14;
    (*(v25 + 96))(v27, v24);
    v29 = v60;
    (*(v56 + 32))(v60, v27, v57);
    v32 = v29;
    v38 = sub_261CFEF94();
    v65 = *(v38 + 16);
    if (v65)
    {
      a2 = 0;
      v62 = v6 + 88;
      v63 = (v6 + 16);
      v61 = *MEMORY[0x277D452E8];
      v59 = *MEMORY[0x277D452E0];
      v14 = (v6 + 96);
      v30 = MEMORY[0x277D84F90];
      v64 = v38;
      while (1)
      {
        v31 = *(v38 + 16);
        if (a2 >= v31)
        {
          goto LABEL_44;
        }

        v39 = v71;
        (*(v6 + 16))(v8, v38 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a2, v71);
        v40 = (*(v6 + 88))(v8, v39);
        if (v40 == v61)
        {
          (*v14)(v8, v39);
          v29 = *v8;
          sub_261B73240(v29, v69);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_261B419E8(0, v30[2] + 1, 1, v30);
          }

          v42 = v30[2];
          v41 = v30[3];
          v32 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            v30 = sub_261B419E8((v41 > 1), v42 + 1, 1, v30);
          }

          v23 = v69;
        }

        else
        {
          if (v40 != v59)
          {
            sub_261D00604();
            __break(1u);
            goto LABEL_47;
          }

          (*v14)(v8, v39);
          v29 = *v8;
          v43 = sub_261CFEF84();
          sub_261B750A0(v29, v43, v70);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_261B419E8(0, v30[2] + 1, 1, v30);
          }

          v42 = v30[2];
          v44 = v30[3];
          v32 = v42 + 1;
          if (v42 >= v44 >> 1)
          {
            v30 = sub_261B419E8((v44 > 1), v42 + 1, 1, v30);
          }

          v23 = v70;
        }

        ++a2;

        v30[2] = v32;
        sub_261B01E2C(v23, v30 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v42);
        v38 = v64;
        if (v65 == a2)
        {
          goto LABEL_28;
        }
      }
    }

    v30 = MEMORY[0x277D84F90];
LABEL_28:

    v32 = &v78;
    sub_261BBBA5C(v30);
    (*(v56 + 8))(v60, v57);
    v30 = v78;
    v14 = v55;
    a2 = v54;
    result = *(v54 + 8);
    if (result)
    {
      goto LABEL_29;
    }

    goto LABEL_42;
  }

LABEL_47:
  result = sub_261D00604();
  __break(1u);
  return result;
}

void *sub_261B37650(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *(sub_261CFEF74() - 8);
  v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v5 + 72);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    result = sub_261B36BD8(v6, a2, &v21);
    if (v2)
    {

      return v8;
    }

    v10 = v21;
    v11 = *(v21 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_261B419E8(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for ListEntity(0);
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v8[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_25;
          }

          v8[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += v7;
    if (!--v3)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_261B37848(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261B0D584;

  return REMStoreIntentPerformer.entities(query:for:)(v4, a2);
}

uint64_t sub_261B378E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF4BDC;

  return REMStoreIntentPerformer.entities(query:matching:)(a1, v8, a3, a4);
}

uint64_t sub_261B37994(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF4BDC;

  return REMStoreIntentPerformer.suggestedEntities(query:criteria:)(a1, v6, a3);
}

uint64_t sub_261B37A40(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.defaultListEntity(query:criteria:)(a1, v6, a3);
}

unint64_t sub_261B37AEC(char a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B385D8(a1 & 1, v2);
}

unint64_t sub_261B37B8C(char a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B38714(a1 & 1, v2);
}

unint64_t sub_261B37C38(uint64_t a1)
{
  sub_261D006C4();
  sub_261C27448(v4, a1);
  v2 = sub_261D006F4();

  return sub_261B3885C(a1, v2);
}

unint64_t sub_261B37CA4(uint64_t a1)
{
  v2 = sub_261D000E4();

  return sub_261B38B94(a1, v2);
}

unint64_t sub_261B37CE8(uint64_t a1, uint64_t a2)
{
  sub_261D006C4();
  sub_261CFFB14();
  v4 = sub_261D006F4();

  return sub_261B38C68(a1, a2, v4);
}

unint64_t sub_261B37D60(uint64_t a1)
{
  sub_261CFD864();
  sub_261B3B994(&qword_27FEDA6B0, MEMORY[0x277CC9708], MEMORY[0x277CC9710]);
  v2 = sub_261CFF934();

  return sub_261B38D20(a1, v2);
}

unint64_t sub_261B37E0C(uint64_t a1)
{
  v1 = a1;
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B38EE0(v1, v2);
}

unint64_t sub_261B37F34(char a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B39110(a1 & 1, v2);
}

unint64_t sub_261B37FD0(uint64_t a1)
{
  v1 = a1;
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B39244(v1, v2);
}

unint64_t sub_261B380B0(void *a1, unint64_t *a2, void *a3)
{
  sub_261D006C4();
  sub_261D006E4();
  if (a1)
  {
    v6 = a1;
    sub_261D00104();
  }

  v7 = sub_261D006F4();
  return sub_261B393DC(a1, v7, a2, a3);
}

unint64_t sub_261B38154(char a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B394D8(a1 & 1, v2);
}

unint64_t sub_261B381F4(uint64_t a1)
{
  v1 = a1;
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B39614(v1, v2);
}

unint64_t sub_261B382B4(uint64_t a1)
{
  v1 = a1;
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B39794(v1, v2);
}

unint64_t sub_261B38380(uint64_t a1)
{
  v1 = a1;
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B3992C(v1, v2);
}

unint64_t sub_261B38450(char a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B39AC0(a1 & 1, v2);
}

unint64_t sub_261B384EC(uint64_t a1)
{
  v1 = a1;
  sub_261D006C4();
  sub_261CFFB14();

  v2 = sub_261D006F4();

  return sub_261B39BF4(v1, v2);
}

unint64_t sub_261B385D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x736E6D756C6F63;
    }

    else
    {
      v6 = 1953720684;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x736E6D756C6F63 : 1953720684;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_261D00614();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B38714(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x65697265636F7267;
    }

    else
    {
      v6 = 0x647261646E617473;
    }

    if (a1)
    {
      v7 = 0xE900000000000073;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x65697265636F7267 : 0x647261646E617473;
      v9 = *(*(v2 + 48) + v4) ? 0xE900000000000073 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_261D00614();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B3885C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 > 4)
      {
        if (*(*(v27 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v11 = 0xD000000000000014;
            v12 = 0x8000000261D14190;
          }

          else
          {
            v11 = 0xD000000000000017;
            v12 = 0x8000000261D141B0;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0xD000000000000017;
          v12 = 0x8000000261D141D0;
        }

        else if (v6 == 8)
        {
          v11 = 0x637341656C746974;
          v12 = 0xEE00676E69646E65;
        }

        else
        {
          v11 = 0x736544656C746974;
          v12 = 0xEF676E69646E6563;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000016;
        }

        else
        {
          v7 = 0xD000000000000013;
        }

        if (v6 == 3)
        {
          v8 = 0x8000000261D14150;
        }

        else
        {
          v8 = 0x8000000261D14170;
        }

        if (v6 == 2)
        {
          v7 = 0xD000000000000016;
          v8 = 0x8000000261D14130;
        }

        v9 = *(*(v27 + 48) + v4) ? 0x6C61756E616DLL : 0x746C7561666564;
        v10 = v6 ? 0xE600000000000000 : 0xE700000000000000;
        v11 = v6 <= 1 ? v9 : v7;
        v12 = v6 <= 1 ? v10 : v8;
      }

      v13 = 0x736544656C746974;
      if (v5 == 8)
      {
        v13 = 0x637341656C746974;
      }

      v14 = 0xEF676E69646E6563;
      if (v5 == 8)
      {
        v14 = 0xEE00676E69646E65;
      }

      if (v5 == 7)
      {
        v13 = 0xD000000000000017;
      }

      v15 = 0x8000000261D141B0;
      if (v5 == 7)
      {
        v14 = 0x8000000261D141D0;
      }

      v16 = 0xD000000000000014;
      if (v5 == 5)
      {
        v15 = 0x8000000261D14190;
      }

      else
      {
        v16 = 0xD000000000000017;
      }

      if (v5 <= 6)
      {
        v13 = v16;
        v14 = v15;
      }

      if (v5 == 3)
      {
        v17 = 0xD000000000000016;
      }

      else
      {
        v17 = 0xD000000000000013;
      }

      if (v5 == 3)
      {
        v18 = 0x8000000261D14150;
      }

      else
      {
        v18 = 0x8000000261D14170;
      }

      if (v5 == 2)
      {
        v17 = 0xD000000000000016;
        v18 = 0x8000000261D14130;
      }

      if (v5)
      {
        v19 = 0x6C61756E616DLL;
      }

      else
      {
        v19 = 0x746C7561666564;
      }

      if (v5)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 4 ? v17 : v13;
      v22 = v5 <= 4 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_261D00614();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_261B38B94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_261D000F4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_261B38C68(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_261D00614())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_261B38D20(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_261CFD864();
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
      sub_261B3B994(&qword_27FEDA6B8, MEMORY[0x277CC9708], MEMORY[0x277CC9718]);
      v15 = sub_261CFF974();
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

unint64_t sub_261B38EE0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
          v8 = 0x64656767616C66;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x64656E6769737361;
          }

          else
          {
            v8 = 0x6574656C706D6F63;
          }

          if (v7 == 4)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0xE900000000000064;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x656C756465686373;
        }

        else
        {
          v8 = 7105633;
        }

        if (v7 == 1)
        {
          v9 = 0xE900000000000064;
        }

        else
        {
          v9 = 0xE300000000000000;
        }
      }

      else
      {
        v9 = 0xE500000000000000;
        v8 = 0x7961646F74;
      }

      v10 = 0x6574656C706D6F63;
      if (v6 == 4)
      {
        v10 = 0x64656E6769737361;
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xE900000000000064;
      }

      if (v6 == 3)
      {
        v10 = 0x64656767616C66;
        v11 = 0xE700000000000000;
      }

      v12 = 0x656C756465686373;
      if (v6 != 1)
      {
        v12 = 7105633;
      }

      v13 = 0xE300000000000000;
      if (v6 == 1)
      {
        v13 = 0xE900000000000064;
      }

      if (!v6)
      {
        v12 = 0x7961646F74;
        v13 = 0xE500000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_261D00614();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39110(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6D6F74746F62;
    }

    else
    {
      v6 = 7368564;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6D6F74746F62 : 7368564;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_261D00614();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39244(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x6E6F6974636573;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x6552746E65726170;
          v7 = 0xEE007265646E696DLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v8 != 1953720684)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1953720684;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6E6F6974636573;
      }

      else
      {
        v10 = 0x6552746E65726170;
      }

      if (v9 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xEE007265646E696DLL;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_261D00614();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B393DC(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a2 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = v4;
    v12 = ~v6;
    do
    {
      v13 = *(*(v10 + 48) + 8 * v7);
      if (v13)
      {
        if (a1)
        {
          sub_261B05020(0, a3, a4);
          v14 = v13;
          v15 = a1;
          v16 = sub_261D000F4();

          if (v16)
          {
            return v7;
          }
        }
      }

      else if (!a1)
      {
        return v7;
      }

      v7 = (v7 + 1) & v12;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_261B394D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 7496035;
    }

    else
    {
      v6 = 0x746C7561666564;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 7496035 : 0x746C7561666564;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_261D00614();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39614(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE600000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 0x657669727261;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 0x747261706564;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xE700000000000000;
            if (v8 != 0x6E776F6E6B6E75)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x657669727261;
      }

      else
      {
        v10 = 0x747261706564;
      }

      v11 = 0xE600000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = sub_261D00614();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39794(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x6767616C46746F6ELL;
          v8 = 0xEA00000000006465;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x64656767616C66;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE700000000000000;
            if (v7 != 0x6E776F6E6B6E75)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6767616C46746F6ELL;
      }

      else
      {
        v10 = 0x64656767616C66;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000006465;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_261D00614();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B3992C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 0x6D756964656DLL : 1751607656;
      v8 = v6 == 2 ? 0xE600000000000000 : 0xE400000000000000;
      v9 = *(*(v2 + 48) + v4) ? 7827308 : 1701736302;
      v10 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE400000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x6D756964656DLL : 1751607656;
      v14 = v5 == 2 ? 0xE600000000000000 : 0xE400000000000000;
      v15 = v5 ? 7827308 : 1701736302;
      v16 = v5 ? 0xE300000000000000 : 0xE400000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_261D00614();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39AC0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x65766F6D6572;
    }

    else
    {
      v6 = 6579297;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x65766F6D6572 : 6579297;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_261D00614();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_261B39BF4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 1920298856;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        v8 = *(*(v2 + 48) + v4) ? 1920298856 : 0x6574756E696DLL;
        v9 = *(*(v2 + 48) + v4) ? 0xE400000000000000 : 0xE600000000000000;
      }

      else if (v7 == 2)
      {
        v9 = 0xE300000000000000;
        v8 = 7954788;
      }

      else
      {
        v8 = v7 == 3 ? 1801807223 : 0x68746E6F6DLL;
        v9 = v7 == 3 ? 0xE400000000000000 : 0xE500000000000000;
      }

      if (v6 == 3)
      {
        v10 = 1801807223;
      }

      else
      {
        v10 = 0x68746E6F6DLL;
      }

      if (v6 == 3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v6 == 2)
      {
        v10 = 7954788;
        v11 = 0xE300000000000000;
      }

      if (v6)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v5 = 0x6574756E696DLL;
        v12 = 0xE600000000000000;
      }

      v13 = v6 <= 1 ? v5 : v10;
      v14 = v6 <= 1 ? v12 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_261D00614();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 1920298856;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_261B39DB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA670, &qword_261D03228, type metadata accessor for ReminderEntity);
  *v3 = result;
  return result;
}

void *sub_261B39DFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA590, &qword_261D03178, &qword_27FEDA598, &qword_261D05740);
  *v3 = result;
  return result;
}

void *sub_261B39E3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &unk_27FEDA5A0, &qword_261D03180, &unk_27FEDE140, &qword_261D03188);
  *v3 = result;
  return result;
}

char *sub_261B39E7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3A468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261B39E9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA660, &qword_261D03220, _s20CategorizedRemindersV12EditableItemOMa);
  *v3 = result;
  return result;
}

void *sub_261B39EE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA630, &qword_261D031F0, MEMORY[0x277CB9DA8]);
  *v3 = result;
  return result;
}

void *sub_261B39F24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA638, &qword_261D031F8, &qword_27FEDA640, &qword_261D03200);
  *v3 = result;
  return result;
}

void *sub_261B39F64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA648, &qword_261D03208, &qword_27FEDA650, &qword_261D03210);
  *v3 = result;
  return result;
}

char *sub_261B39FA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3A588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261B39FC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA618, &qword_261D031D8, &qword_27FEDA620, &qword_261D031E0);
  *v3 = result;
  return result;
}

void *sub_261B3A004(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3A694(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261B3A024(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA6E8, &qword_261D03280, &qword_27FEDA6E0, &qword_261D03278);
  *v3 = result;
  return result;
}

void *sub_261B3A064(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA6A0, &qword_261D03258, MEMORY[0x277D45308]);
  *v3 = result;
  return result;
}

void *sub_261B3A0A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA700, &qword_261D03290, &qword_27FEDA6F8, &qword_261D03288);
  *v3 = result;
  return result;
}

void *sub_261B3A0E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA610, &qword_261D031D0, type metadata accessor for ListEntity);
  *v3 = result;
  return result;
}

char *sub_261B3A12C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3A7C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261B3A14C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA6C0, &qword_261D03268, MEMORY[0x277CB9DA0]);
  *v3 = result;
  return result;
}

void *sub_261B3A190(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA608, &qword_261D031C8, type metadata accessor for AppEntityID);
  *v3 = result;
  return result;
}

void *sub_261B3A1D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3A8F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261B3A1F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA5B8, &qword_261D03198, &qword_27FEDA5C0, &qword_261D031A0);
  *v3 = result;
  return result;
}

void *sub_261B3A234(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA6A8, &qword_261D03260, _s20CategorizedRemindersV15FetchedReminderVMa);
  *v3 = result;
  return result;
}

void *sub_261B3A278(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA678, &qword_261D03230, &qword_27FEDA680, &qword_261D03238);
  *v3 = result;
  return result;
}

void *sub_261B3A2B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AA24(a1, a2, a3, *v3, &qword_27FEDA688, &qword_261D03240, &qword_27FEDA690, &qword_261D03248);
  *v3 = result;
  return result;
}

void *sub_261B3A2F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA698, &qword_261D03250, type metadata accessor for GroupEntity);
  *v3 = result;
  return result;
}

char *sub_261B3A33C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AC0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261B3A35C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA628, &qword_261D031E8, MEMORY[0x277D45D50]);
  *v3 = result;
  return result;
}

void *sub_261B3A3A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AD00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261B3A3C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AE34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261B3A3E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA578, &qword_261D03160, type metadata accessor for SiriUtilities.Grouping);
  *v3 = result;
  return result;
}

void *sub_261B3A424(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261B3AF40(a1, a2, a3, *v3, &qword_27FEDA580, &qword_261D03168, type metadata accessor for SiriUtilities.Day);
  *v3 = result;
  return result;
}

char *sub_261B3A468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA5B0, &qword_261D03190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B3A588(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA668, &qword_261D06FD0);
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

void *sub_261B3A694(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA718, &qword_261D032A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA720, &qword_261D032A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B3A7C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6C8, &qword_261D03270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261B3A8F0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA5C8, &qword_261D031A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA5D0, &qword_261D0A790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261B3AA24(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_261B3AC0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA658, &qword_261D03218);
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

void *sub_261B3AD00(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA5F8, &qword_261D031B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA600, &qword_261D031C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261B3AE34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA588, &qword_261D03170);
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

void *sub_261B3AF40(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_261B3B11C(unint64_t a1)
{
  v29 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_261D00274();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26671CA10](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v28 = v8;
        v9 = v7;
        v10 = [v7 entityName];
        v11 = sub_261CFFA74();
        v13 = v12;

        v15 = sub_261B37CE8(v11, v13);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_22;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          sub_261CA31D4(v18, 1);
          v4 = v29;
          v20 = sub_261B37CE8(v11, v13);
          if ((v19 & 1) != (v21 & 1))
          {
            result = sub_261D00654();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x26671C310](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_261CFFC84();
          }

          sub_261CFFCB4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_261D030F0;
          *(v22 + 32) = v9;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v11;
          v23[1] = v13;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_23;
          }

          v4[2] = v26;
        }

        ++v3;
        if (v28 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

void sub_261B3B3B0(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_261B37CA4(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v17) = v12;
  if (v8[3] < v16)
  {
    sub_261CA31C0(v16, v5 & 1);
    v11 = sub_261B37CA4(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v11 = sub_261D00654();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    *(v19[6] + 8 * v11) = v9;
    *(v19[7] + 8 * v11) = v10;
    v25 = v19[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v15)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v19[2] = v26;
    v17 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v24 = v11;
  sub_261CA49DC();
  v11 = v24;
  v19 = *a3;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = v11;
  v21 = *(v19[7] + 8 * v11);

  v22 = v19[7];
  v23 = *(v22 + 8 * v20);
  *(v22 + 8 * v20) = v21;

  v17 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = v6 + 7;
    v3 = 1;
    while (1)
    {
      v31 = *v5;
      v32 = *a3;
      v10 = *(v5 - 1);
      v6 = v31;
      v33 = sub_261B37CA4(v10);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v15 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v15)
      {
        goto LABEL_23;
      }

      v9 = v34;
      if (v32[3] < v37)
      {
        sub_261CA31C0(v37, 1);
        v33 = sub_261B37CA4(v10);
        if ((v9 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      v39 = *a3;
      if (v9)
      {
        v27 = v33;
        v28 = *(v39[7] + 8 * v33);

        v29 = v39[7];
        v30 = *(v29 + 8 * v27);
        *(v29 + 8 * v27) = v28;
      }

      else
      {
        v39[(v33 >> 6) + 8] |= 1 << v33;
        *(v39[6] + 8 * v33) = v10;
        *(v39[7] + 8 * v33) = v6;
        v40 = v39[2];
        v15 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v15)
        {
          goto LABEL_24;
        }

        v39[2] = v41;
      }

      v5 += 2;
      if (!--v17)
      {
        return;
      }
    }
  }
}