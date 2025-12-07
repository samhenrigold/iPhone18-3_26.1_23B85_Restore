id DeviceContextBuilder.getCurrentDeviceContext()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_254F48F7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = MobileGestalt_copy_buildVersion_obj();

  if (v8)
  {
    v9 = sub_254F4934C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_254F48F6C();
  v12 = sub_254F48F5C();
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_11;
  }

  v15 = result;
  v16 = MobileGestalt_copy_marketingNameString_obj();

  if (v16)
  {
    v17 = sub_254F4934C();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  result = sub_254F4933C();
  *a1 = v12;
  a1[1] = v14;
  a1[2] = result;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v17;
  a1[6] = v19;
  return result;
}

uint64_t TranscriptContextBuilder.__allocating_init()()
{
  sub_254F46764();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_254F3D818();
  return v0;
}

uint64_t TranscriptContextBuilder.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_254F3D818();
  return v0;
}

uint64_t sub_254F3D818()
{
  v0 = sub_254F48F4C();
  sub_254F46730();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_254F46744();
  v6 = v5 - v4;
  v7 = sub_254F3EE1C(&qword_27F7605F0, &qword_254F49A58);
  v8 = sub_254F46774(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v15 = [BiomeLibrary() IntelligenceFlow];
  swift_unknownObjectRelease();
  v16 = [v15 Transcript];
  swift_unknownObjectRelease();
  v17 = [v16 Datastream];
  swift_unknownObjectRelease();
  sub_254F48F3C();
  sub_254F44F24(v13);
  (*(v2 + 8))(v6, v0);
  sub_254F45368(v13, 0, 1, v0);
  sub_254F45368(v11, 1, 1, v0);
  v18 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v19 = sub_254F451B4(v13, v11, 0, 0, 0);
  v20 = [v17 publisherWithOptions_];

  v30 = nullsub_1;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_254F4672C;
  v29 = &unk_286728AF8;
  v21 = _Block_copy(&aBlock);
  v30 = sub_254F4671C;
  v31 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_254F4672C;
  v29 = &unk_286728B20;
  v22 = _Block_copy(&aBlock);

  v23 = [v20 sinkWithCompletion:v21 receiveInput:v22];

  _Block_release(v22);
  _Block_release(v21);

  swift_beginAccess();
  *(v25[1] + 16) = *(v14 + 16);
}

id TranscriptContextBuilder.getTranscriptContext(clientRequestId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a1;
  v79 = a3;
  v5 = sub_254F3EE1C(&qword_27F760500, &qword_254F49980);
  v6 = sub_254F46774(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - v7;
  v93 = sub_254F490CC();
  sub_254F46730();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_254F46744();
  v82 = (v13 - v12);
  v14 = sub_254F3EE1C(&qword_27F760508, &qword_254F49988);
  v15 = sub_254F46774(v14);
  MEMORY[0x28223BE20](v15);
  v17 = (&v77 - v16);
  v92 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);
  sub_254F46730();
  v87 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v83 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v77 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v91 = &v77 - v26;
  MEMORY[0x28223BE20](v25);
  v81 = &v77 - v27;
  v88 = v3;
  v28 = *(v3 + 16);
  v89 = sub_254F4531C(v28);
  v85 = v28 & 0xFFFFFFFFFFFFFF8;
  v86 = v28 & 0xC000000000000001;
  v80 = v10;
  v78 = (v10 + 32);

  v30 = 0;
  v31 = MEMORY[0x277D84F90];
LABEL_2:
  v90 = v31;
  while (1)
  {
    if (v89 == v30)
    {

      v45 = 0;
      v89 = v31[2];
      v46 = (v80 + 8);
      v86 = MEMORY[0x277D84F90];
      v47 = &qword_27F760510;
      while (1)
      {
        while (1)
        {
          if (v89 == v45)
          {

            v65 = v86;
            v66 = sub_254F3EE64(v86);
            v67 = sub_254F40320(v65);
            v68 = sub_254F41EC0(v65);
            v69 = sub_254F43210(v65);
            v71 = v70;

            if (*(v66 + 2))
            {
              v73 = *(v66 + 4);
              v72 = *(v66 + 5);
            }

            else
            {
              v73 = 0;
              v72 = 0;
            }

            v74 = v79;

            if (*(v67 + 2))
            {
              v76 = *(v67 + 4);
              v75 = *(v67 + 5);
            }

            else
            {
              v76 = 0;
              v75 = 0;
            }

            *v74 = v73;
            *(v74 + 8) = v72;
            *(v74 + 16) = v68;
            *(v74 + 24) = v76;
            *(v74 + 32) = v75;
            *(v74 + 40) = v71;
            *(v74 + 44) = BYTE4(v71) & 1;
            *(v74 + 48) = v69;
            return result;
          }

          if (v45 >= v31[2])
          {
            goto LABEL_44;
          }

          v48 = (*(v87 + 80) + 32) & ~*(v87 + 80);
          v49 = v31 + v48;
          v50 = *(v87 + 72);
          v51 = v91;
          sub_254F46480(&v49[v50 * v45], v91, v47, &qword_254F49990);
          v52 = v47;
          sub_254F46480(v51, v24, v47, &qword_254F49990);

          v53 = a2;
          v54 = *(v92 + 48);
          v55 = sub_254F490AC();
          v57 = v56;
          v58 = &v24[v54];
          a2 = v53;
          (*v46)(v58, v93);
          if (v55 != v84 || v57 != v53)
          {
            break;
          }

LABEL_30:
          v47 = v52;
          sub_254F46518(v91, v83, v52, &qword_254F49990);
          v61 = v86;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94 = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_254F45F38(0, *(v61 + 16) + 1, 1);
            v61 = v94;
          }

          v64 = *(v61 + 16);
          v63 = *(v61 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_254F45F38((v63 > 1), v64 + 1, 1);
            v61 = v94;
          }

          ++v45;
          *(v61 + 16) = v64 + 1;
          v86 = v61;
          result = sub_254F46518(v83, v61 + v48 + v64 * v50, v52, &qword_254F49990);
          v31 = v90;
        }

        v60 = sub_254F4949C();

        if (v60)
        {
          goto LABEL_30;
        }

        v47 = v52;
        result = sub_254F4667C(v91, v52, &qword_254F49990);
        ++v45;
        v31 = v90;
      }
    }

    if (v86)
    {
      result = MEMORY[0x259C2F1F0](v30, v28);
    }

    else
    {
      if (v30 >= *(v85 + 16))
      {
        goto LABEL_43;
      }

      result = *(v28 + 8 * v30 + 32);
    }

    v32 = result;
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    sub_254F3E2E4(result, v8);
    if (sub_254F45340(v8, 1, v93) != 1)
    {
      v77 = *v78;
      v77(v82, v8, v93);
      v34 = sub_254F46274(v32);
      v36 = v35;

      v37 = 7104878;
      if (v36)
      {
        v37 = v34;
      }

      v38 = 0xE300000000000000;
      if (v36)
      {
        v38 = v36;
      }

      *v17 = v37;
      v17[1] = v38;
      v39 = v92;
      v40 = v90;
      v77(v17 + *(v92 + 48), v82, v93);
      sub_254F45368(v17, 0, 1, v39);
      sub_254F46518(v17, v81, &qword_27F760510, &qword_254F49990);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_254F455B0(0, v40[2] + 1, 1, v40);
      }

      v42 = v40[2];
      v41 = v40[3];
      v43 = v40;
      if (v42 >= v41 >> 1)
      {
        v43 = sub_254F455B0((v41 > 1), v42 + 1, 1, v40);
      }

      v43[2] = v42 + 1;
      v44 = v43 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v42;
      v31 = v43;
      result = sub_254F46518(v81, v44, &qword_27F760510, &qword_254F49990);
      v30 = v33;
      goto LABEL_2;
    }

    sub_254F4667C(v8, &qword_27F760500, &qword_254F49980);
    sub_254F45368(v17, 1, 1, v92);
    result = sub_254F4667C(v17, &qword_27F760508, &qword_254F49988);
    ++v30;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_254F3E2E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = sub_254F48FFC();
  MEMORY[0x28223BE20](v3 - 8);
  v102 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_254F490CC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v96 = &v94 - v11;
  MEMORY[0x28223BE20](v10);
  v106 = &v94 - v12;
  v13 = sub_254F4905C();
  v109 = *(v13 - 1);
  v14 = MEMORY[0x28223BE20](v13);
  v101 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v103 = (&v94 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v94 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v94 - v21);
  v23 = sub_254F3EE1C(&qword_27F7605F0, &qword_254F49A58);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v94 - v27;
  v29 = sub_254F46274(a1);
  v108 = v30;
  v105 = a1;
  v31 = [a1 absoluteTimestamp];
  if (v31)
  {
    v32 = v31;
    sub_254F48F2C();

    v33 = sub_254F48F4C();
    v34 = 0;
  }

  else
  {
    v33 = sub_254F48F4C();
    v34 = 1;
  }

  v97 = v20;
  v99 = v6;
  sub_254F45368(v26, v34, 1, v33);
  sub_254F46518(v26, v28, &qword_27F7605F0, &qword_254F49A58);
  sub_254F48F4C();
  v35 = sub_254F45340(v28, 1, v33);
  v98 = v9;
  if (v35 == 1)
  {
    sub_254F4667C(v28, &qword_27F7605F0, &qword_254F49A58);
    v100 = 0;
    v36 = 0;
  }

  else
  {
    v100 = sub_254F48F0C();
    v36 = v37;
    (*(*(v33 - 8) + 8))(v28, v33);
  }

  v38 = v108;
  sub_254F4903C();

  v39 = sub_254F4904C();
  v40 = sub_254F493DC();

  v41 = os_log_type_enabled(v39, v40);
  v104 = v22;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v95 = v5;
    v43 = v42;
    v44 = swift_slowAlloc();
    *&v110[0] = v44;
    *v43 = 136315394;
    if (!v38)
    {
      v29 = 0x3E4C494E3CLL;
    }

    v45 = v13;
    if (v38)
    {
      v46 = v38;
    }

    else
    {
      v46 = 0xE500000000000000;
    }

    v47 = sub_254F4589C(v29, v46, v110);
    v13 = v45;

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    if (v36)
    {
      v48 = v100;
    }

    else
    {
      v48 = 0x3E4C494E3CLL;
    }

    if (v36)
    {
      v49 = v36;
    }

    else
    {
      v49 = 0xE500000000000000;
    }

    v50 = sub_254F4589C(v48, v49, v110);

    *(v43 + 14) = v50;
    _os_log_impl(&dword_254F3C000, v39, v40, "Decoding Event: %s with eventTimeStamp: %s \n", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C2F690](v44, -1, -1);
    v51 = v43;
    v5 = v95;
    MEMORY[0x259C2F690](v51, -1, -1);
  }

  v52 = *(v109 + 8);
  v52(v104, v13);
  v53 = v105;
  v54 = v106;
  v55 = sub_254F46568(v105);
  if (v56 >> 60 == 15)
  {

    v57 = v101;
    sub_254F4903C();
    v58 = v53;
    v59 = sub_254F4904C();
    v60 = sub_254F493DC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v110[0] = v62;
      *v61 = 136315138;
      v63 = sub_254F46274(v58);
      if (v64)
      {
        v65 = v64;
      }

      else
      {
        v63 = 0x3E4C494E3CLL;
        v65 = 0xE500000000000000;
      }

      v66 = v5;
      v67 = sub_254F4589C(v63, v65, v110);

      *(v61 + 4) = v67;
      v5 = v66;
      _os_log_impl(&dword_254F3C000, v59, v60, "BMSageTranscript did not contain valid event payload, skipping event: %s", v61, 0xCu);
      sub_254F4632C(v62);
      MEMORY[0x259C2F690](v62, -1, -1);
      MEMORY[0x259C2F690](v61, -1, -1);
    }

    v52(v57, v13);
    v91 = 1;
  }

  else
  {
    v68 = v55;
    v69 = v56;
    v105 = v13;
    v111 = 0;
    memset(v110, 0, sizeof(v110));
    sub_254F465CC(v55, v56);
    sub_254F48FEC();
    sub_254F464D0(&qword_27F760548, MEMORY[0x277D1E148], MEMORY[0x277D1E140]);
    sub_254F4901C();
    v104 = v52;

    v70 = v97;
    sub_254F4903C();
    v71 = v99;
    v72 = *(v99 + 16);
    v73 = v96;
    v72(v96, v54, v5);
    v72(v98, v54, v5);
    v74 = sub_254F4904C();
    v75 = sub_254F493DC();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *&v110[0] = v108;
      *v76 = 136315394;
      v103 = v74;
      v77 = sub_254F490BC();
      v79 = v78;
      LODWORD(v102) = v75;
      v80 = *(v99 + 8);
      v80(v73, v5);
      v81 = sub_254F4589C(v77, v79, v110);

      *(v76 + 4) = v81;
      *(v76 + 12) = 2080;
      v82 = v98;
      v83 = sub_254F4902C();
      v85 = v84;
      v80(v82, v5);
      v71 = v99;
      v86 = sub_254F4589C(v83, v85, v110);

      *(v76 + 14) = v86;
      v87 = v103;
      _os_log_impl(&dword_254F3C000, v103, v102, "Decoded SessionID: %s for event: %s \n", v76, 0x16u);
      v88 = v108;
      swift_arrayDestroy();
      MEMORY[0x259C2F690](v88, -1, -1);
      v89 = v76;
      v54 = v106;
      MEMORY[0x259C2F690](v89, -1, -1);

      sub_254F46668(v68, v69);
      v90 = v97;
    }

    else
    {

      sub_254F46668(v68, v69);
      v93 = *(v71 + 8);
      v93(v98, v5);
      v93(v73, v5);
      v90 = v70;
    }

    v104(v90, v105);
    (*(v71 + 32))(v107, v54, v5);
    v91 = 0;
  }

  return sub_254F45368(v107, v91, 1, v5);
}

uint64_t sub_254F3EE1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_254F3EE64(uint64_t a1)
{
  v2 = sub_254F4905C();
  v153 = *(v2 - 8);
  v154 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v149 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v140 = &v116 - v5;
  v126 = sub_254F492FC();
  v157 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_254F4908C();
  v151 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_254F4907C();
  *&v146 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v130 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254F3EE1C(&qword_27F7605C0, &qword_254F49A40);
  MEMORY[0x28223BE20](v9 - 8);
  v139 = &v116 - v10;
  v11 = sub_254F3EE1C(&qword_27F7605C8, &qword_254F49A48);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v132 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v144 = &v116 - v14;
  v142 = sub_254F4910C();
  v135 = *(v142 - 8);
  v15 = MEMORY[0x28223BE20](v142);
  v136 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v145 = &v116 - v17;
  v18 = sub_254F3EE1C(&qword_27F760538, &qword_254F499F0);
  MEMORY[0x28223BE20](v18 - 8);
  v148 = &v116 - v19;
  v20 = sub_254F3EE1C(&qword_27F760540, &qword_254F499F8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v150 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v162 = &v116 - v23;
  v161 = sub_254F490CC();
  v133 = *(v161 - 8);
  v24 = MEMORY[0x28223BE20](v161);
  v152 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v147 = &v116 - v26;
  v156 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);
  v27 = *(v156 - 8);
  v28 = MEMORY[0x28223BE20](v156);
  v163 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v159 = &v116 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = (&v116 - v33);
  v35 = 0;
  v36 = *(a1 + 16);
  v143 = MEMORY[0x277D84F90];
  v160 = a1;
  while (v36 != v35)
  {
    v37 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v38 = *(v27 + 72);
    sub_254F46480(a1 + v37 + v38 * v35, v34, &qword_27F760510, &qword_254F49990);
    v39 = *v34 == 0x74736575716552 && v34[1] == 0xE700000000000000;
    if (v39 || (sub_254F4949C() & 1) != 0)
    {
      sub_254F46518(v34, v163, &qword_27F760510, &qword_254F49990);
      v40 = v143;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254F45F38(0, *(v40 + 16) + 1, 1);
        v40 = v164;
      }

      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      v44 = (v43 + 1);
      if (v43 >= v42 >> 1)
      {
        v158 = (v43 + 1);
        sub_254F45F38((v42 > 1), v43 + 1, 1);
        v44 = v158;
        v40 = v164;
      }

      ++v35;
      *(v40 + 16) = v44;
      v143 = v40;
      sub_254F46518(v163, v40 + v37 + v43 * v38, &qword_27F760510, &qword_254F49990);
      a1 = v160;
    }

    else
    {
      sub_254F4667C(v34, &qword_27F760510, &qword_254F49990);
      ++v35;
    }
  }

  v45 = *(v143 + 16);
  if (v45)
  {
    v46 = v143 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v158 = (v133 + 32);
    v138 = v135 + 32;
    v118 = (v157 + 32);
    v117 = (v157 + 8);
    v137 = v135 + 8;
    v47 = *(v156 + 48);
    v156 = (v133 + 8);
    v157 = v47;
    v121 = (v151 + 4);
    v155 = *(v27 + 72);
    v120 = (v151 + 1);
    v124 = (v146 + 32);
    v141 = *MEMORY[0x277D1E3F8];
    v123 = (v146 + 8);
    v134 = v135 + 16;
    ++v153;
    v135 = MEMORY[0x277D84F90];
    v127 = *MEMORY[0x277D1E4F8];
    v122 = *MEMORY[0x277D1E500];
    v151 = (v133 + 16);
    v119 = *MEMORY[0x277D1E4F0];
    *&v32 = 136315138;
    v146 = v32;
    v49 = v148;
    v48 = v149;
    v50 = v150;
    v52 = v161;
    v51 = v162;
    v53 = v147;
    while (1)
    {
      v163 = v46;
      v54 = v46;
      v55 = v159;
      sub_254F46480(v54, v159, &qword_27F760510, &qword_254F49990);

      (*v158)(v53, v55 + v157, v52);
      sub_254F4909C();
      v56 = sub_254F490EC();
      if (sub_254F45340(v49, 1, v56) == 1)
      {
        sub_254F4667C(v49, &qword_27F760538, &qword_254F499F0);
        v57 = sub_254F491FC();
        sub_254F45368(v51, 1, 1, v57);
      }

      else
      {
        sub_254F490DC();
        (*(*(v56 - 8) + 8))(v49, v56);
        v58 = sub_254F491FC();
        if (sub_254F45340(v51, 1, v58) != 1)
        {
          sub_254F46480(v51, v50, &qword_27F760540, &qword_254F499F8);
          v59 = *(v58 - 8);
          v60 = (*(v59 + 88))(v50, v58);
          if (v60 == v141)
          {
            (*(v59 + 96))(v50, v58);
            (*v138)(v145, v50, v142);
            v61 = v139;
            sub_254F490FC();
            v62 = sub_254F4924C();
            if (sub_254F45340(v61, 1, v62) == 1)
            {
              sub_254F4667C(v61, &qword_27F7605C0, &qword_254F49A40);
              v63 = sub_254F492BC();
              sub_254F45368(v144, 1, 1, v63);
              goto LABEL_27;
            }

            v78 = v144;
            sub_254F4923C();
            (*(*(v62 - 8) + 8))(v61, v62);
            v79 = sub_254F492BC();
            if (sub_254F45340(v78, 1, v79) == 1)
            {
LABEL_27:
              v160 = v45;
              v80 = v140;
              sub_254F4903C();
              v81 = v136;
              v82 = v142;
              (*v134)(v136, v145, v142);
              v83 = sub_254F4904C();
              v84 = sub_254F493DC();
              if (os_log_type_enabled(v83, v84))
              {
                v85 = v81;
                v86 = swift_slowAlloc();
                v87 = swift_slowAlloc();
                v164 = v87;
                *v86 = v146;
                sub_254F464D0(&qword_27F7605D0, MEMORY[0x277D1E2C8], MEMORY[0x277D1E2C0]);
                v88 = sub_254F4902C();
                v90 = v89;
                v133 = *v137;
                v91 = v85;
                v49 = v148;
                (v133)(v91, v82);
                v92 = sub_254F4589C(v88, v90, &v164);

                *(v86 + 4) = v92;
                _os_log_impl(&dword_254F3C000, v83, v84, "Request event does not contain a requestContextEnum: %s", v86, 0xCu);
                sub_254F4632C(v87);
                v48 = v149;
                MEMORY[0x259C2F690](v87, -1, -1);
                MEMORY[0x259C2F690](v86, -1, -1);

                (*v153)(v140, v154);
                (v133)(v145, v82);
              }

              else
              {

                v93 = *v137;
                (*v137)(v81, v82);
                (*v153)(v80, v154);
                (v93)(v145, v82);
              }

              v52 = v161;
              (*v156)(v53, v161);
              v45 = v160;
            }

            else
            {
              v94 = v132;
              sub_254F46480(v144, v132, &qword_27F7605C8, &qword_254F49A48);
              v95 = *(v79 - 8);
              v96 = (*(v95 + 88))(v94, v79);
              if (v96 == v127)
              {
                (*(v95 + 96))(v94, v79);
                (*v124)(v130, v94, v131);
                v97 = sub_254F4906C();
                v99 = v98;
                v100 = v135;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v100 = sub_254F45390(0, *(v100 + 2) + 1, 1, v100);
                }

                v135 = v100;
                v102 = *(v100 + 2);
                v101 = *(v100 + 3);
                v103 = v102 + 1;
                if (v102 >= v101 >> 1)
                {
                  v135 = sub_254F45390((v101 > 1), v102 + 1, 1, v135);
                }

                (*v123)(v130, v131);
              }

              else if (v96 == v122)
              {
                v104 = v132;
                (*(v95 + 96))(v132, v79);
                (*v121)(v128, v104, v129);
                sub_254F464D0(&qword_27F7605E0, MEMORY[0x277D1D860], MEMORY[0x277D1D858]);
                v97 = sub_254F4902C();
                v99 = v105;
                v106 = v135;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v106 = sub_254F45390(0, *(v106 + 2) + 1, 1, v106);
                }

                v135 = v106;
                v102 = *(v106 + 2);
                v107 = *(v106 + 3);
                v103 = v102 + 1;
                if (v102 >= v107 >> 1)
                {
                  v135 = sub_254F45390((v107 > 1), v102 + 1, 1, v135);
                }

                (*v120)(v128, v129);
              }

              else
              {
                if (v96 != v119)
                {
                  (*(v95 + 8))(v132, v79);
                  goto LABEL_27;
                }

                v108 = v132;
                (*(v95 + 96))();
                (*v118)(v125, v108, v126);
                sub_254F464D0(&qword_27F7605D8, MEMORY[0x277D1E570], MEMORY[0x277D1E568]);
                v97 = sub_254F4902C();
                v99 = v109;
                v110 = v135;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v110 = sub_254F45390(0, *(v110 + 2) + 1, 1, v110);
                }

                v135 = v110;
                v102 = *(v110 + 2);
                v111 = *(v110 + 3);
                v103 = v102 + 1;
                if (v102 >= v111 >> 1)
                {
                  v135 = sub_254F45390((v111 > 1), v102 + 1, 1, v135);
                }

                (*v117)(v125, v126);
              }

              (*v137)(v145, v142);
              v52 = v161;
              (*v156)(v53, v161);
              v112 = v135;
              *(v135 + 2) = v103;
              v113 = &v112[16 * v102];
              *(v113 + 4) = v97;
              *(v113 + 5) = v99;
            }

            sub_254F4667C(v144, &qword_27F7605C8, &qword_254F49A48);
            v50 = v150;
            goto LABEL_52;
          }

          (*(v59 + 8))(v50, v58);
        }
      }

      sub_254F4903C();
      v64 = v152;
      v52 = v161;
      (*v151)(v152, v53, v161);
      v65 = sub_254F4904C();
      v66 = sub_254F493DC();
      if (!os_log_type_enabled(v65, v66))
      {

        v77 = *v156;
        (*v156)(v64, v52);
        (*v153)(v48, v154);
        v77(v53, v52);
LABEL_52:
        v51 = v162;
        goto LABEL_53;
      }

      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v164 = v68;
      *v67 = v146;
      sub_254F464D0(&qword_27F760548, MEMORY[0x277D1E148], MEMORY[0x277D1E140]);
      v69 = sub_254F4902C();
      v71 = v70;
      v160 = v45;
      v72 = *v156;
      (*v156)(v64, v52);
      v73 = sub_254F4589C(v69, v71, &v164);

      *(v67 + 4) = v73;
      _os_log_impl(&dword_254F3C000, v65, v66, "Unable to convert eventPayload into Request event: %s", v67, 0xCu);
      sub_254F4632C(v68);
      v74 = v68;
      v49 = v148;
      v48 = v149;
      MEMORY[0x259C2F690](v74, -1, -1);
      v75 = v67;
      v50 = v150;
      MEMORY[0x259C2F690](v75, -1, -1);

      (*v153)(v48, v154);
      v76 = v147;
      v72(v147, v52);
      v45 = v160;
      v51 = v162;
      v53 = v76;
LABEL_53:
      v114 = v163;
      sub_254F4667C(v51, &qword_27F760540, &qword_254F499F8);
      v46 = v114 + v155;
      if (!--v45)
      {

        return v135;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_254F40320(uint64_t a1)
{
  v206 = sub_254F4905C();
  v212 = *(v206 - 8);
  v2 = MEMORY[0x28223BE20](v206);
  v196 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v191 = &v153 - v4;
  v174 = sub_254F491EC();
  v203 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_254F492AC();
  v202 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v175 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_254F491DC();
  v201 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v182 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_254F4914C();
  v200 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v179 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_254F4912C();
  v204 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v171 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_254F4922C();
  *&v195 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254F3EE1C(&qword_27F760590, &qword_254F49A28);
  MEMORY[0x28223BE20](v11 - 8);
  v190 = &v153 - v12;
  v13 = sub_254F3EE1C(&qword_27F760598, &qword_254F49A30);
  MEMORY[0x28223BE20](v13 - 8);
  v186 = &v153 - v14;
  v15 = sub_254F3EE1C(&qword_27F7605A0, &qword_254F49A38);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v184 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v193 = &v153 - v18;
  v194 = sub_254F4928C();
  v187 = *(v194 - 8);
  v19 = MEMORY[0x28223BE20](v194);
  v197 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v198 = &v153 - v21;
  v22 = sub_254F3EE1C(&qword_27F760538, &qword_254F499F0);
  MEMORY[0x28223BE20](v22 - 8);
  v211 = &v153 - v23;
  v24 = sub_254F3EE1C(&qword_27F760540, &qword_254F499F8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v210 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v214 = &v153 - v27;
  v199 = sub_254F490CC();
  v185 = *(v199 - 8);
  v28 = MEMORY[0x28223BE20](v199);
  v208 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v209 = &v153 - v30;
  v192 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);
  v31 = *(v192 - 8);
  v32 = MEMORY[0x28223BE20](v192);
  v213 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v207 = &v153 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = (&v153 - v37);
  v39 = 0;
  v40 = a1;
  v41 = *(a1 + 16);
  v42 = MEMORY[0x277D84F90];
  while (v41 != v39)
  {
    v43 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v44 = *(v31 + 72);
    sub_254F46480(v40 + v43 + v44 * v39, v38, &qword_27F760510, &qword_254F49990);
    v45 = *v38 == 0xD000000000000017 && 0x8000000254F4A090 == v38[1];
    if (v45 || (sub_254F4949C() & 1) != 0)
    {
      sub_254F46518(v38, v213, &qword_27F760510, &qword_254F49990);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v215 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254F45F38(0, *(v42 + 16) + 1, 1);
        v42 = v215;
      }

      v48 = *(v42 + 16);
      v47 = *(v42 + 24);
      v49 = (v48 + 1);
      if (v48 >= v47 >> 1)
      {
        v205 = (v48 + 1);
        v189 = v48;
        sub_254F45F38((v47 > 1), v48 + 1, 1);
        v49 = v205;
        v48 = v189;
        v42 = v215;
      }

      ++v39;
      *(v42 + 16) = v49;
      sub_254F46518(v213, v42 + v43 + v48 * v44, &qword_27F760510, &qword_254F49990);
    }

    else
    {
      sub_254F4667C(v38, &qword_27F760510, &qword_254F49990);
      ++v39;
    }
  }

  v50 = *(v42 + 16);
  if (v50)
  {
    v51 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v181 = v42;
    v52 = v42 + v51;
    v205 = v185 + 32;
    v189 = (v187 + 4);
    v154 = (v204 + 32);
    v153 = (v204 + 8);
    v188 = (v187 + 1);
    v204 = v185 + 8;
    v157 = (v203 + 32);
    v156 = (v203 + 8);
    v203 = *(v192 + 48);
    v160 = (v202 + 32);
    v159 = (v202 + 8);
    v202 = *(v31 + 72);
    v163 = (v195 + 32);
    v162 = (v195 + 8);
    LODWORD(v192) = *MEMORY[0x277D1E3E8];
    v166 = (v200 + 32);
    v165 = (v200 + 8);
    v170 = *MEMORY[0x277D1E430];
    v169 = (v201 + 4);
    v168 = v201 + 1;
    v167 = *MEMORY[0x277D1E450];
    v187 += 2;
    v201 = (v212 + 8);
    v164 = *MEMORY[0x277D1E440];
    v200 = v185 + 16;
    v161 = *MEMORY[0x277D1E448];
    *&v36 = 136315138;
    v195 = v36;
    v158 = *MEMORY[0x277D1E438];
    v155 = *MEMORY[0x277D1E428];
    v185 = MEMORY[0x277D84F90];
    v54 = v196;
    v53 = v197;
    v55 = v198;
    v56 = v199;
    v58 = v210;
    v57 = v211;
    v59 = v209;
    while (1)
    {
      v60 = v207;
      sub_254F46480(v52, v207, &qword_27F760510, &qword_254F49990);

      (*v205)(v59, v60 + v203, v56);
      sub_254F4909C();
      v61 = sub_254F490EC();
      if (sub_254F45340(v57, 1, v61) == 1)
      {
        sub_254F4667C(v57, &qword_27F760538, &qword_254F499F0);
        v62 = sub_254F491FC();
        sub_254F45368(v214, 1, 1, v62);
        v63 = v208;
LABEL_23:
        v212 = v50;
        v213 = v52;
        sub_254F4903C();
        v72 = v209;
        (*v200)(v63, v209, v56);
        v73 = sub_254F4904C();
        v74 = sub_254F493DC();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v215 = v76;
          *v75 = v195;
          sub_254F464D0(&qword_27F760548, MEMORY[0x277D1E148], MEMORY[0x277D1E140]);
          v77 = sub_254F4902C();
          v78 = v63;
          v80 = v79;
          v81 = *v204;
          (*v204)(v78, v56);
          v82 = sub_254F4589C(v77, v80, &v215);

          *(v75 + 4) = v82;
          _os_log_impl(&dword_254F3C000, v73, v74, "Unable to convert eventPayload into SystemResponseGenerated event: %s", v75, 0xCu);
          sub_254F4632C(v76);
          v83 = v76;
          v54 = v196;
          MEMORY[0x259C2F690](v83, -1, -1);
          v84 = v75;
          v55 = v198;
          MEMORY[0x259C2F690](v84, -1, -1);

          (*v201)(v54, v206);
          v81(v72, v56);
          v53 = v197;
        }

        else
        {

          v85 = *v204;
          (*v204)(v63, v56);
          (*v201)(v54, v206);
          v85(v72, v56);
        }

        v58 = v210;
        v57 = v211;
        v59 = v72;
        v50 = v212;
        v52 = v213;
        goto LABEL_27;
      }

      v64 = v214;
      sub_254F490DC();
      (*(*(v61 - 8) + 8))(v57, v61);
      v65 = sub_254F491FC();
      v66 = v64;
      v56 = v199;
      v67 = sub_254F45340(v66, 1, v65);
      v63 = v208;
      if (v67 == 1)
      {
        goto LABEL_23;
      }

      sub_254F46480(v214, v58, &qword_27F760540, &qword_254F499F8);
      v68 = *(v65 - 8);
      v69 = (*(v68 + 88))(v58, v65);
      if (v69 != v192)
      {
        (*(v68 + 8))(v58, v65);
        goto LABEL_23;
      }

      (*(v68 + 96))(v58, v65);
      (*v189)(v55, v58, v194);
      v70 = v190;
      sub_254F4927C();
      v71 = sub_254F4926C();
      if (sub_254F45340(v70, 1, v71) == 1)
      {
        sub_254F4667C(v70, &qword_27F760590, &qword_254F49A28);
LABEL_31:
        v89 = sub_254F4920C();
        sub_254F45368(v193, 1, 1, v89);
        v90 = v191;
        v91 = v194;
LABEL_32:
        sub_254F4903C();
        (*v187)(v53, v55, v91);
        v92 = sub_254F4904C();
        v93 = sub_254F493DC();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v215 = v95;
          *v94 = v195;
          sub_254F464D0(&qword_27F7605A8, MEMORY[0x277D1E498], MEMORY[0x277D1E490]);
          v96 = sub_254F4902C();
          v98 = v97;
          v99 = v91;
          v100 = *v188;
          (*v188)(v197, v99);
          v101 = sub_254F4589C(v96, v98, &v215);

          *(v94 + 4) = v101;
          _os_log_impl(&dword_254F3C000, v92, v93, "SystemResponseGenerated event does not contain a dialogFormat: %s", v94, 0xCu);
          sub_254F4632C(v95);
          v102 = v95;
          v54 = v196;
          MEMORY[0x259C2F690](v102, -1, -1);
          v103 = v94;
          v55 = v198;
          MEMORY[0x259C2F690](v103, -1, -1);

          (*v201)(v191, v206);
          v100(v55, v194);
          v53 = v197;
        }

        else
        {

          v104 = *v188;
          (*v188)(v53, v91);
          (*v201)(v90, v206);
          v104(v55, v91);
        }

        v59 = v209;
        v56 = v199;
        (*v204)(v209, v199);
        goto LABEL_36;
      }

      v86 = v186;
      sub_254F4925C();
      v87 = v86;
      (*(*(v71 - 8) + 8))(v70, v71);
      v88 = sub_254F491BC();
      if (sub_254F45340(v86, 1, v88) == 1)
      {
        sub_254F4667C(v86, &qword_27F760598, &qword_254F49A30);
        v55 = v198;
        goto LABEL_31;
      }

      v105 = v193;
      sub_254F491AC();
      (*(*(v88 - 8) + 8))(v87, v88);
      v106 = sub_254F4920C();
      v107 = sub_254F45340(v105, 1, v106);
      v90 = v191;
      v91 = v194;
      v55 = v198;
      if (v107 == 1)
      {
        goto LABEL_32;
      }

      v108 = v184;
      sub_254F46480(v193, v184, &qword_27F7605A0, &qword_254F49A38);
      v109 = *(v106 - 8);
      v110 = (*(v109 + 88))(v108, v106);
      if (v110 == v170)
      {
        (*(v109 + 96))(v108, v106);
        (*v169)(v182, v108, v183);
        v111 = sub_254F4906C();
        v113 = v112;
        v114 = v185;
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v56 = v199;
        v213 = v113;
        if ((v115 & 1) == 0)
        {
          v114 = sub_254F45390(0, *(v114 + 2) + 1, 1, v114);
        }

        v116 = v52;
        v185 = v114;
        v118 = *(v114 + 2);
        v117 = *(v114 + 3);
        v119 = v118 + 1;
        v120 = v50;
        if (v118 >= v117 >> 1)
        {
          v185 = sub_254F45390((v117 > 1), v118 + 1, 1, v185);
        }

        (*v168)(v182, v183);
      }

      else
      {
        v56 = v199;
        if (v110 == v167)
        {
          v126 = v184;
          (*(v109 + 96))(v184, v106);
          (*v166)(v179, v126, v180);
          v213 = sub_254F4906C();
          v128 = v127;
          v129 = v185;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_254F45390(0, *(v129 + 2) + 1, 1, v129);
          }

          v116 = v52;
          v185 = v129;
          v131 = *(v129 + 2);
          v130 = *(v129 + 3);
          v132 = v131 + 1;
          v120 = v50;
          if (v131 >= v130 >> 1)
          {
            v185 = sub_254F45390((v130 > 1), v131 + 1, 1, v185);
          }

          (*v165)(v179, v180);
LABEL_69:
          v145 = v198;
          (*v188)(v198, v194);
          v122 = v209;
          (*v204)(v209, v56);
          v146 = v185;
          *(v185 + 2) = v132;
          v55 = v145;
          v147 = &v146[16 * v131];
          *(v147 + 4) = v213;
          *(v147 + 5) = v128;
          goto LABEL_70;
        }

        if (v110 == v164)
        {
          v133 = v184;
          (*(v109 + 96))(v184, v106);
          (*v163)(v177, v133, v178);
          v213 = sub_254F4906C();
          v128 = v134;
          v135 = v185;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_254F45390(0, *(v135 + 2) + 1, 1, v135);
          }

          v116 = v52;
          v185 = v135;
          v131 = *(v135 + 2);
          v136 = *(v135 + 3);
          v132 = v131 + 1;
          v120 = v50;
          if (v131 >= v136 >> 1)
          {
            v185 = sub_254F45390((v136 > 1), v131 + 1, 1, v185);
          }

          (*v162)(v177, v178);
          goto LABEL_69;
        }

        if (v110 == v161)
        {
          v137 = v184;
          (*(v109 + 96))(v184, v106);
          (*v160)(v175, v137, v176);
          sub_254F464D0(&qword_27F7605B8, MEMORY[0x277D1E4D0], MEMORY[0x277D1E4C8]);
          v213 = sub_254F4902C();
          v128 = v138;
          v139 = v185;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v139 = sub_254F45390(0, *(v139 + 2) + 1, 1, v139);
          }

          v116 = v52;
          v185 = v139;
          v131 = *(v139 + 2);
          v140 = *(v139 + 3);
          v132 = v131 + 1;
          v120 = v50;
          if (v131 >= v140 >> 1)
          {
            v185 = sub_254F45390((v140 > 1), v131 + 1, 1, v185);
          }

          (*v159)(v175, v176);
          goto LABEL_69;
        }

        if (v110 == v158)
        {
          v141 = v184;
          (*(v109 + 96))(v184, v106);
          (*v157)(v173, v141, v174);
          sub_254F464D0(&qword_27F7605B0, MEMORY[0x277D1E398], MEMORY[0x277D1E390]);
          v213 = sub_254F4902C();
          v128 = v142;
          v143 = v185;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = sub_254F45390(0, *(v143 + 2) + 1, 1, v143);
          }

          v116 = v52;
          v185 = v143;
          v131 = *(v143 + 2);
          v144 = *(v143 + 3);
          v132 = v131 + 1;
          v120 = v50;
          if (v131 >= v144 >> 1)
          {
            v185 = sub_254F45390((v144 > 1), v131 + 1, 1, v185);
          }

          (*v156)(v173, v174);
          goto LABEL_69;
        }

        if (v110 != v155)
        {
          (*(v109 + 8))(v184, v106);
          v90 = v191;
          v91 = v194;
          v55 = v198;
          goto LABEL_32;
        }

        v148 = v184;
        (*(v109 + 96))(v184, v106);
        (*v154)(v171, v148, v172);
        v111 = sub_254F4906C();
        v213 = v149;
        v150 = v185;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = sub_254F45390(0, *(v150 + 2) + 1, 1, v150);
        }

        v116 = v52;
        v185 = v150;
        v118 = *(v150 + 2);
        v151 = *(v150 + 3);
        v119 = v118 + 1;
        v120 = v50;
        if (v118 >= v151 >> 1)
        {
          v185 = sub_254F45390((v151 > 1), v118 + 1, 1, v185);
        }

        (*v153)(v171, v172);
      }

      v121 = v198;
      (*v188)(v198, v194);
      v122 = v209;
      (*v204)(v209, v56);
      v123 = v185;
      *(v185 + 2) = v119;
      v55 = v121;
      v124 = &v123[16 * v118];
      v125 = v213;
      *(v124 + 4) = v111;
      *(v124 + 5) = v125;
LABEL_70:
      v59 = v122;
      v50 = v120;
      v52 = v116;
LABEL_36:
      sub_254F4667C(v193, &qword_27F7605A0, &qword_254F49A38);
      v58 = v210;
      v57 = v211;
LABEL_27:
      sub_254F4667C(v214, &qword_27F760540, &qword_254F499F8);
      v52 += v202;
      if (!--v50)
      {

        return v185;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_254F41EC0(uint64_t a1)
{
  v2 = 0;
  v173 = *MEMORY[0x277D85DE8];
  v155 = sub_254F4905C();
  v165 = *(v155 - 8);
  v3 = MEMORY[0x28223BE20](v155);
  v152 = v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v130 = v126 - v5;
  v6 = sub_254F4937C();
  MEMORY[0x28223BE20](v6 - 8);
  v134 = v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_254F48FDC();
  v159 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v162 = v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254F4929C();
  v129 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v147 = v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v146 = v126 - v12;
  v133 = sub_254F4931C();
  v149 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254F3EE1C(&qword_27F760538, &qword_254F499F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v126 - v15;
  v17 = sub_254F3EE1C(&qword_27F760540, &qword_254F499F8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v164 = v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v151 = v126 - v20;
  v21 = sub_254F490CC();
  v148 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v137 = v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v163 = v126 - v24;
  v25 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);
  v26 = *(v25 - 8);
  v160 = v25;
  v161 = v26;
  v27 = MEMORY[0x28223BE20](v25);
  v166 = v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v143 = v126 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = (v126 - v32);
  v34 = *(a1 + 16);
  v144 = MEMORY[0x277D84F90];
  v168 = 0;
  v154 = v9;
  v150 = v16;
  v167 = v21;
  while (v34 != v2)
  {
    v35 = (*(v161 + 80) + 32) & ~*(v161 + 80);
    v36 = *(v161 + 72);
    sub_254F46480(a1 + v35 + v36 * v2, v33, &qword_27F760510, &qword_254F49990);
    v37 = *v33 == 0xD000000000000020 && 0x8000000254F4A060 == v33[1];
    if (v37 || (sub_254F4949C() & 1) != 0)
    {
      sub_254F46518(v33, v166, &qword_27F760510, &qword_254F49990);
      v38 = v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v171 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254F45F38(0, *(v38 + 16) + 1, 1);
        v38 = v171;
      }

      v41 = *(v38 + 16);
      v40 = *(v38 + 24);
      v42 = (v41 + 1);
      if (v41 >= v40 >> 1)
      {
        v157 = (v41 + 1);
        v156 = v41;
        sub_254F45F38((v40 > 1), v41 + 1, 1);
        v42 = v157;
        v41 = v156;
        v38 = v171;
      }

      ++v2;
      *(v38 + 16) = v42;
      v144 = v38;
      sub_254F46518(v166, v38 + v35 + v41 * v36, &qword_27F760510, &qword_254F49990);
      v21 = v167;
    }

    else
    {
      sub_254F4667C(v33, &qword_27F760510, &qword_254F49990);
      ++v2;
      v21 = v167;
    }
  }

  v43 = v144;
  v142 = *(v144 + 16);
  if (!v142)
  {

    return MEMORY[0x277D84F90];
  }

  v44 = 0;
  v141 = v144 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
  v140 = (v148 + 32);
  v139 = *(v160 + 48);
  v128 = (v149 + 32);
  v131 = *MEMORY[0x277D1E3F0];
  v157 = (v159 + 8);
  v156 = (v129 + 8);
  v153 = (v165 + 8);
  v127 = (v149 + 8);
  v138 = (v148 + 8);
  v135 = MEMORY[0x277D84F90];
  v136 = (v148 + 16);
  *&v31 = 136315138;
  v145 = v31;
  v45 = v130;
  v46 = v162;
  v47 = v163;
  v48 = v146;
  v49 = v164;
  v160 = v129 + 16;
  do
  {
    if (v44 >= *(v43 + 16))
    {
      __break(1u);
    }

    v50 = *(v161 + 72);
    v149 = v44;
    v51 = v143;
    sub_254F46480(v141 + v50 * v44, v143, &qword_27F760510, &qword_254F49990);

    (*v140)(v47, v51 + v139, v21);
    v52 = v150;
    sub_254F4909C();
    v53 = sub_254F490EC();
    if (sub_254F45340(v52, 1, v53) == 1)
    {
      sub_254F4667C(v150, &qword_27F760538, &qword_254F499F0);
      v54 = sub_254F491FC();
      sub_254F45368(v151, 1, 1, v54);
LABEL_43:
      sub_254F4903C();
      v109 = v137;
      (*v136)(v137, v47, v21);
      v110 = sub_254F4904C();
      v111 = sub_254F493DC();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *&v171 = v113;
        *v112 = v145;
        sub_254F464D0(&qword_27F760548, MEMORY[0x277D1E148], MEMORY[0x277D1E140]);
        v114 = sub_254F4902C();
        v115 = v45;
        v117 = v116;
        v118 = *v138;
        (*v138)(v109, v167);
        v119 = sub_254F4589C(v114, v117, &v171);
        v45 = v115;

        *(v112 + 4) = v119;
        _os_log_impl(&dword_254F3C000, v110, v111, "Unable to convert eventPayload into ResponseGenerationRequestCreated event: %s", v112, 0xCu);
        sub_254F4632C(v113);
        v120 = v113;
        v48 = v146;
        MEMORY[0x259C2F690](v120, -1, -1);
        v121 = v112;
        v49 = v164;
        MEMORY[0x259C2F690](v121, -1, -1);

        (*v153)(v115, v155);
        v122 = v163;
        v118(v163, v167);
        v21 = v167;
        v46 = v162;
        v47 = v122;
      }

      else
      {

        v123 = *v138;
        (*v138)(v109, v21);
        (*v153)(v45, v155);
        v123(v47, v21);
        v46 = v162;
      }

      v43 = v144;
      goto LABEL_47;
    }

    v55 = v151;
    v56 = v150;
    sub_254F490DC();
    (*(*(v53 - 8) + 8))(v56, v53);
    v57 = sub_254F491FC();
    v58 = v55;
    v21 = v167;
    if (sub_254F45340(v58, 1, v57) == 1)
    {
      goto LABEL_43;
    }

    sub_254F46480(v151, v49, &qword_27F760540, &qword_254F499F8);
    v59 = *(v57 - 8);
    v60 = (*(v59 + 88))(v49, v57);
    if (v60 != v131)
    {
      (*(v59 + 8))(v49, v57);
      goto LABEL_43;
    }

    (*(v59 + 96))(v49, v57);
    (*v128)(v132, v49, v133);
    v61 = sub_254F4930C();
    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = (*(v129 + 80) + 32) & ~*(v129 + 80);
      v126[1] = v61;
      v64 = v61 + v63;
      v159 = *(v129 + 72);
      v65 = *(v129 + 16);
      v66 = v154;
      v148 = v65;
      while (1)
      {
        v165 = v64;
        v166 = v62;
        v65(v48);
        sub_254F48FCC();
        sub_254F464D0(&qword_27F760580, MEMORY[0x277D1E4A8], MEMORY[0x277D1E4A0]);
        v67 = v66;
        v68 = v168;
        v69 = sub_254F4900C();
        v168 = v68;
        if (v68)
        {
          v71 = v48;
          (*v157)(v46, v158);
          v72 = v152;
          sub_254F4903C();
          v73 = v147;
          (v65)(v147, v48, v67);
          v74 = sub_254F4904C();
          v75 = sub_254F493EC();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *&v171 = v77;
            *v76 = v145;
            v78 = sub_254F4902C();
            v80 = v79;
            v81 = *v156;
            (*v156)(v73, v154);
            v82 = sub_254F4589C(v78, v80, &v171);

            *(v76 + 4) = v82;
            _os_log_impl(&dword_254F3C000, v74, v75, "Unable to get json string for statementResult: %s", v76, 0xCu);
            sub_254F4632C(v77);
            MEMORY[0x259C2F690](v77, -1, -1);
            v83 = v76;
            v46 = v162;
            MEMORY[0x259C2F690](v83, -1, -1);

            (*v153)(v152, v155);
            v81(v71, v154);
            v65 = v148;
            v66 = v154;
            v168 = 0;
            v48 = v71;
            v47 = v163;
            v49 = v164;
            v21 = v167;
          }

          else
          {

            v104 = *v156;
            (*v156)(v73, v67);
            (*v153)(v72, v155);
            v104(v71, v67);
            v168 = 0;
            v48 = v71;
            v47 = v163;
            v49 = v164;
            v21 = v167;
            v66 = v67;
          }

          goto LABEL_40;
        }

        v84 = v69;
        v85 = v70;
        (*v157)(v46, v158);
        v86 = objc_opt_self();
        v87 = sub_254F48EEC();
        v169 = 0;
        v88 = [v86 JSONObjectWithData:v87 options:0 error:&v169];

        v89 = v169;
        if (v88)
        {
          sub_254F493FC();
          swift_unknownObjectRelease();
          sub_254F4642C(&v170, &v171);
          sub_254F4643C(&v171, v172);
          v90 = sub_254F4948C();
          *&v170 = 0;
          v91 = [v86 dataWithJSONObject:v90 options:3 error:&v170];
          swift_unknownObjectRelease();
          v92 = v170;
          v47 = v163;
          if (v91)
          {
            v93 = sub_254F48EFC();
            v95 = v94;

            sub_254F4936C();
            v96 = sub_254F4935C();
            v98 = v97;
            sub_254F46378(v93, v95);
            sub_254F4632C(&v171);
            sub_254F46378(v84, v85);
            if (v98)
            {
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v48 = v146;
              v65 = v148;
              if ((v99 & 1) == 0)
              {
                v135 = sub_254F45390(0, *(v135 + 2) + 1, 1, v135);
              }

              v101 = *(v135 + 2);
              v100 = *(v135 + 3);
              if (v101 >= v100 >> 1)
              {
                v135 = sub_254F45390((v100 > 1), v101 + 1, 1, v135);
              }

              (*v156)(v48, v67);
              v102 = v135;
              *(v135 + 2) = v101 + 1;
              v66 = v67;
              v103 = &v102[16 * v101];
              *(v103 + 4) = v96;
              *(v103 + 5) = v98;
              v46 = v162;
              goto LABEL_39;
            }
          }

          else
          {
            v107 = v92;
            v108 = sub_254F48EDC();

            swift_willThrow();
            sub_254F4632C(&v171);
            sub_254F46378(v84, v85);
            v168 = 0;
          }

          v46 = v162;
        }

        else
        {
          v105 = v89;
          v106 = sub_254F48EDC();

          swift_willThrow();
          sub_254F46378(v84, v85);
          v168 = 0;
          v46 = v162;
          v47 = v163;
        }

        v48 = v146;
        v66 = v67;
        v65 = v148;
        (*v156)(v146, v67);
LABEL_39:
        v49 = v164;
LABEL_40:
        v64 = v165 + v159;
        v62 = v166 - 1;
        if (v166 == 1)
        {

          v43 = v144;
          goto LABEL_50;
        }
      }
    }

LABEL_50:
    (*v127)(v132, v133);
    (*v138)(v47, v21);
    v45 = v130;
LABEL_47:
    v124 = v149 + 1;
    sub_254F4667C(v151, &qword_27F760540, &qword_254F499F8);
    v44 = v124;
  }

  while (v124 != v142);

  return v135;
}

char *sub_254F43210(uint64_t a1)
{
  v2 = 0;
  v226 = *MEMORY[0x277D85DE8];
  v217 = sub_254F4905C();
  v220 = *(v217 - 8);
  v3 = MEMORY[0x28223BE20](v217);
  v5 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v206 = &v165 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v165 - v8;
  v181 = sub_254F48FDC();
  v219 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_254F4932C();
  v216 = *(v187 - 8);
  v11 = MEMORY[0x28223BE20](v187);
  v175 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v165 - v13;
  v15 = sub_254F3EE1C(&qword_27F760528, &qword_254F499E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v165 - v16;
  v18 = sub_254F3EE1C(&qword_27F760530, &qword_254F499E8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v188 = &v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v214 = &v165 - v21;
  v182 = sub_254F4919C();
  v170 = *(v182 - 8);
  v22 = MEMORY[0x28223BE20](v182);
  v210 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v202 = &v165 - v24;
  v177 = sub_254F492EC();
  v213 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_254F3EE1C(&qword_27F760538, &qword_254F499F0);
  MEMORY[0x28223BE20](v26 - 8);
  v199 = &v165 - v27;
  v28 = sub_254F3EE1C(&qword_27F760540, &qword_254F499F8);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v198 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v211 = &v165 - v31;
  v32 = sub_254F490CC();
  v209 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32);
  v192 = &v165 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v185 = &v165 - v35;
  v218 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);
  v215 = *(v218 - 8);
  v36 = MEMORY[0x28223BE20](v218);
  v221 = &v165 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v201 = &v165 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = (&v165 - v41);
  v43 = a1;
  v44 = *(a1 + 16);
  v204 = MEMORY[0x277D84F90];
  v189 = 0;
  v203 = v5;
  v208 = v9;
  v190 = v14;
  v207 = v17;
  while (v44 != v2)
  {
    v45 = (*(v215 + 80) + 32) & ~*(v215 + 80);
    v46 = *(v215 + 72);
    sub_254F46480(v43 + v45 + v46 * v2, v42, &qword_27F760510, &qword_254F49990);
    v47 = *v42 == 0x746552736C6F6F54 && v42[1] == 0xEE00646576656972;
    if (v47 || (sub_254F4949C() & 1) != 0)
    {
      sub_254F46518(v42, v221, &qword_27F760510, &qword_254F49990);
      v48 = v204;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v224 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254F45F38(0, *(v48 + 16) + 1, 1);
        v48 = v224;
      }

      v51 = *(v48 + 16);
      v50 = *(v48 + 24);
      v52 = v48;
      if (v51 >= v50 >> 1)
      {
        v197 = v32;
        sub_254F45F38((v50 > 1), v51 + 1, 1);
        v32 = v197;
        v52 = v224;
      }

      ++v2;
      *(v52 + 16) = v51 + 1;
      v204 = v52;
      sub_254F46518(v221, v52 + v45 + v51 * v46, &qword_27F760510, &qword_254F49990);
      v9 = v208;
      v17 = v207;
    }

    else
    {
      sub_254F4667C(v42, &qword_27F760510, &qword_254F49990);
      ++v2;
    }
  }

  v200 = *(v204 + 16);
  if (!v200)
  {

    result = MEMORY[0x277D84F90];
    v164 = 1;
    goto LABEL_78;
  }

  LODWORD(v221) = 0;
  v53 = 0;
  v196 = v204 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
  v195 = *(v218 + 48);
  v194 = (v209 + 32);
  v169 = (v213 + 32);
  v218 = v170 + 16;
  v174 = *MEMORY[0x277D1E3E0];
  v178 = (v216 + 4);
  v179 = (v219 + 8);
  v186 = *MEMORY[0x277D1E360];
  v183 = v216 + 1;
  v212 = (v170 + 8);
  v173 = (v216 + 2);
  v216 = (v220 + 8);
  v168 = (v213 + 8);
  v193 = (v209 + 8);
  v191 = (v209 + 16);
  v171 = MEMORY[0x277D84F90];
  *&v40 = 136315138;
  v205 = v40;
  LODWORD(v220) = 1;
  v54 = v206;
  v55 = v199;
  v56 = v198;
  v57 = v185;
  v197 = v32;
  do
  {
    if (v53 >= *(v204 + 16))
    {
      __break(1u);
    }

    v58 = *(v215 + 72);
    v209 = v53;
    v59 = v196 + v58 * v53;
    v60 = v201;
    sub_254F46480(v59, v201, &qword_27F760510, &qword_254F49990);

    (*v194)(v57, v60 + v195, v32);
    sub_254F4909C();
    v61 = sub_254F490EC();
    if (sub_254F45340(v55, 1, v61) == 1)
    {
      sub_254F4667C(v55, &qword_27F760538, &qword_254F499F0);
      v62 = sub_254F491FC();
      sub_254F45368(v211, 1, 1, v62);
LABEL_69:
      sub_254F4903C();
      v149 = v192;
      v150 = v197;
      (*v191)(v192, v57, v197);
      v151 = sub_254F4904C();
      v152 = sub_254F493DC();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        *&v224 = v154;
        *v153 = v205;
        sub_254F464D0(&qword_27F760548, MEMORY[0x277D1E148], MEMORY[0x277D1E140]);
        v155 = sub_254F4902C();
        v157 = v156;
        v158 = *v193;
        (*v193)(v149, v150);
        v159 = sub_254F4589C(v155, v157, &v224);
        v54 = v206;

        *(v153 + 4) = v159;
        _os_log_impl(&dword_254F3C000, v151, v152, "Unable to convert eventPayload into ToolsRetrieved event: %s", v153, 0xCu);
        sub_254F4632C(v154);
        v160 = v154;
        v9 = v208;
        MEMORY[0x259C2F690](v160, -1, -1);
        v161 = v153;
        v57 = v185;
        MEMORY[0x259C2F690](v161, -1, -1);

        (*v216)(v54, v217);
        v158(v57, v150);
        v17 = v207;
      }

      else
      {

        v162 = *v193;
        (*v193)(v149, v150);
        (*v216)(v54, v217);
        v162(v57, v150);
      }

      v55 = v199;
      v56 = v198;
      v32 = v150;
      goto LABEL_73;
    }

    v63 = v211;
    sub_254F490DC();
    (*(*(v61 - 8) + 8))(v55, v61);
    v64 = sub_254F491FC();
    if (sub_254F45340(v63, 1, v64) == 1)
    {
      goto LABEL_69;
    }

    sub_254F46480(v211, v56, &qword_27F760540, &qword_254F499F8);
    v65 = *(v64 - 8);
    v66 = (*(v65 + 88))(v56, v64);
    if (v66 != v174)
    {
      (*(v65 + 8))(v56, v64);
      goto LABEL_69;
    }

    (*(v65 + 96))(v56, v64);
    (*v169)(v176, v56, v177);
    sub_254F492CC();
    v68 = v67;
    v69 = sub_254F492DC();
    v70 = *(v69 + 16);
    if (v70)
    {
      v71 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v167 = v69;
      v72 = v69 + v71;
      v213 = *(v170 + 72);
      v219 = *(v170 + 16);
      v73 = v214;
      v74 = v182;
      v75 = v202;
      v76 = v203;
      while (1)
      {
        v221 = v72;
        (v219)(v75, v72, v74);
        sub_254F4918C();
        v77 = sub_254F4917C();
        v78 = sub_254F45340(v17, 1, v77);
        v220 = v70;
        if (v78 == 1)
        {
          break;
        }

        sub_254F4916C();
        (*(*(v77 - 8) + 8))(v17, v77);
        v80 = sub_254F4915C();
        if (sub_254F45340(v73, 1, v80) == 1)
        {
          goto LABEL_32;
        }

        v81 = v73;
        v82 = v188;
        sub_254F46480(v81, v188, &qword_27F760530, &qword_254F499E8);
        v83 = *(v80 - 8);
        v84 = (*(v83 + 88))(v82, v80);
        if (v84 != v186)
        {
          (*(v83 + 8))(v82, v80);
LABEL_32:
          sub_254F4903C();
          v102 = v210;
          (v219)(v210, v75, v74);
          v103 = sub_254F4904C();
          v104 = sub_254F493DC();
          if (os_log_type_enabled(v103, v104))
          {
            v105 = v102;
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            *&v224 = v107;
            *v106 = v205;
            sub_254F464D0(&qword_27F760550, MEMORY[0x277D1E370], MEMORY[0x277D1E368]);
            v108 = sub_254F4902C();
            v110 = v109;
            v111 = *v212;
            v112 = v105;
            v75 = v202;
            (*v212)(v112, v74);
            v113 = sub_254F4589C(v108, v110, &v224);
            v54 = v206;

            *(v106 + 4) = v113;
            _os_log_impl(&dword_254F3C000, v103, v104, "ToolsRetrieved event does not contain a implementation defiintion: %s", v106, 0xCu);
            sub_254F4632C(v107);
            v114 = v107;
            v9 = v208;
            MEMORY[0x259C2F690](v114, -1, -1);
            MEMORY[0x259C2F690](v106, -1, -1);

            (*v216)(v9, v217);
            v111(v75, v74);
            v17 = v207;
            v76 = v203;
          }

          else
          {

            v115 = *v212;
            (*v212)(v102, v74);
            (*v216)(v9, v217);
            v115(v75, v74);
          }

          goto LABEL_35;
        }

        (*(v83 + 96))(v82, v80);
        (*v178)(v190, v82, v187);
        v85 = v180;
        sub_254F48FCC();
        sub_254F464D0(&qword_27F760558, MEMORY[0x277D72898], MEMORY[0x277D72890]);
        v86 = v189;
        v87 = sub_254F4900C();
        if (v86)
        {
          (*v179)(v85, v181);
          v184 = v86;
        }

        else
        {
          v189 = 0;
          v118 = v87;
          v119 = v88;
          v120 = v85;
          v121 = v118;
          (*v179)(v120, v181);
          v122 = objc_opt_self();
          v172 = v119;
          v123 = sub_254F48EEC();
          *&v224 = 0;
          v124 = [v122 JSONObjectWithData:v123 options:0 error:&v224];

          if (v124)
          {
            v125 = v121;
            v126 = v224;
            sub_254F493FC();
            swift_unknownObjectRelease();
            sub_254F3EE1C(&qword_27F760560, &qword_254F49A00);
            if (swift_dynamicCast())
            {
              v127 = v222;
              if (v222[2] && (v128 = sub_254F45E0C(25705, 0xE200000000000000), (v129 & 1) != 0) && (sub_254F463D0(v127[7] + 32 * v128, &v224), (swift_dynamicCast() & 1) != 0))
              {
                v184 = v222;
                v166 = v223;
              }

              else
              {
                v184 = 0;
                v166 = 0;
              }

              if (v127[2] && (v132 = sub_254F45E0C(1701667182, 0xE400000000000000), (v133 & 1) != 0) && (sub_254F463D0(v127[7] + 32 * v132, &v224), (swift_dynamicCast() & 1) != 0))
              {
                v134 = v222;
                v135 = v223;
              }

              else
              {
                v134 = 0;
                v135 = 0;
              }

              if (v127[2] && (v136 = sub_254F45E0C(0x657079546C6F6F74, 0xE800000000000000), (v137 & 1) != 0))
              {
                sub_254F463D0(v127[7] + 32 * v136, &v224);
              }

              else
              {
                v224 = 0u;
                v225 = 0u;
              }

              if (*(&v225 + 1))
              {
                v138 = swift_dynamicCast();
                v139 = v171;
                if (v138)
                {
                  v141 = v222;
                  v140 = v223;
                }

                else
                {
                  v141 = 0;
                  v140 = 0;
                }
              }

              else
              {
                sub_254F4667C(&v224, &qword_27F760568, &qword_254F49A08);
                v141 = 0;
                v140 = 0;
                v139 = v171;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v139 = sub_254F45498(0, *(v139 + 2) + 1, 1, v139);
              }

              v171 = v139;
              v143 = *(v139 + 2);
              v142 = *(v139 + 3);
              v144 = v70;
              if (v143 >= v142 >> 1)
              {
                v171 = sub_254F45498((v142 > 1), v143 + 1, 1, v171);
              }

              sub_254F46378(v125, v172);
              (*v183)(v190, v187);
              v145 = v182;
              (*v212)(v75, v182);
              v146 = v171;
              *(v171 + 2) = v143 + 1;
              v147 = &v146[48 * v143];
              v148 = v166;
              *(v147 + 4) = v184;
              *(v147 + 5) = v148;
              *(v147 + 6) = v134;
              *(v147 + 7) = v135;
              *(v147 + 8) = v141;
              *(v147 + 9) = v140;
              v74 = v145;
              v76 = v203;
              v54 = v206;
              v9 = v208;
              v17 = v207;
              v73 = v214;
              v70 = v144;
            }

            else
            {
              sub_254F46378(v121, v172);
              (*v183)(v190, v187);
              v74 = v182;
              (*v212)(v75, v182);
              v73 = v214;
            }

            goto LABEL_36;
          }

          v130 = v224;
          v131 = sub_254F48EDC();

          v184 = v131;
          swift_willThrow();
          sub_254F46378(v121, v172);
        }

        v189 = 0;
        v89 = v175;
        sub_254F4903C();
        v90 = v190;
        v91 = v187;
        (*v173)(v89, v190, v187);
        v92 = sub_254F4904C();
        v93 = sub_254F493EC();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = v89;
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *&v224 = v96;
          *v95 = v205;
          v172 = sub_254F4902C();
          v98 = v97;
          v99 = *v183;
          (*v183)(v94, v91);
          v100 = sub_254F4589C(v172, v98, &v224);

          *(v95 + 4) = v100;
          _os_log_impl(&dword_254F3C000, v92, v93, "Unable to get jsonData tool implementation defintion: %s", v95, 0xCu);
          sub_254F4632C(v96);
          v101 = v96;
          v54 = v206;
          MEMORY[0x259C2F690](v101, -1, -1);
          MEMORY[0x259C2F690](v95, -1, -1);

          (*v216)(v76, v217);
          v99(v190, v91);
        }

        else
        {

          v117 = *v183;
          (*v183)(v89, v91);
          (*v216)(v76, v217);
          v117(v90, v91);
        }

        v74 = v182;
        (*v212)(v75, v182);
        v9 = v208;
        v17 = v207;
LABEL_35:
        v73 = v214;
        v70 = v220;
LABEL_36:
        v116 = v221;
        sub_254F4667C(v73, &qword_27F760530, &qword_254F499E8);
        v72 = v116 + v213;
        if (!--v70)
        {

          v55 = v199;
          v56 = v198;
          v57 = v185;
          goto LABEL_76;
        }
      }

      sub_254F4667C(v17, &qword_27F760528, &qword_254F499E0);
      v79 = sub_254F4915C();
      sub_254F45368(v73, 1, 1, v79);
      goto LABEL_32;
    }

LABEL_76:
    LODWORD(v221) = v68;
    (*v168)(v176, v177);
    v32 = v197;
    (*v193)(v57, v197);
    LODWORD(v220) = 0;
LABEL_73:
    v53 = v209 + 1;
    sub_254F4667C(v211, &qword_27F760540, &qword_254F499F8);
  }

  while (v53 != v200);

  result = v171;
  v164 = v220;
LABEL_78:
  LOBYTE(v224) = v164 & 1;
  return result;
}

uint64_t sub_254F44CB8(void *a1, uint64_t a2)
{
  v4 = sub_254F4905C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 eventBody])
  {
    v8 = swift_beginAccess();
    MEMORY[0x259C2F180](v8);
    sub_254F452F0(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_254F493CC();
    return swift_endAccess();
  }

  else
  {
    sub_254F4903C();
    v10 = sub_254F4904C();
    v11 = sub_254F493EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_254F3C000, v10, v11, "Receiving SageTranscriptEvent Biome events with no eventBody", v12, 2u);
      MEMORY[0x259C2F690](v12, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_254F44E6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t TranscriptContextBuilder.__deallocating_deinit()
{

  v0 = sub_254F46764();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_254F44F24@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_254F48F4C();
  sub_254F46730();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_254F46744();
  v7 = v6 - v5;
  v8 = sub_254F48FAC();
  sub_254F46730();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_254F46744();
  v14 = v13 - v12;
  v15 = sub_254F48FBC();
  sub_254F46730();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_254F46744();
  v21 = v20 - v19;
  v22 = sub_254F3EE1C(&qword_27F7605F0, &qword_254F49A58);
  v23 = sub_254F46774(v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v27 - v24;
  sub_254F48F9C();
  (*(v10 + 104))(v14, *MEMORY[0x277CC99A0], v8);
  sub_254F48F3C();
  sub_254F48F8C();
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
  (*(v17 + 8))(v21, v15);
  result = sub_254F45340(v25, 1, v1);
  if (result != 1)
  {
    return (*(v3 + 32))(v28, v25, v1);
  }

  __break(1u);
  return result;
}

id sub_254F451B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_254F48F4C();
  v13 = 0;
  if (sub_254F45340(a1, 1, v12) != 1)
  {
    v13 = sub_254F48F1C();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_254F45340(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_254F48F1C();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_254F452F0(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_254F4531C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

char *sub_254F45390(char *result, int64_t a2, char a3, char *a4)
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
    sub_254F3EE1C(&qword_27F760588, &qword_254F49A20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_254F45498(char *result, int64_t a2, char a3, char *a4)
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
    sub_254F3EE1C(&qword_27F760570, &qword_254F49A10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_254F455B0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_254F456A8(v8, v7);
  v10 = *(sub_254F3EE1C(&qword_27F760510, &qword_254F49990) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_254F457B0(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_254F456A8(uint64_t a1, uint64_t a2)
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

  sub_254F3EE1C(&qword_27F7605E8, &qword_254F49A50);
  v4 = *(sub_254F3EE1C(&qword_27F760510, &qword_254F49990) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_254F457B0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_254F3EE1C(&qword_27F760510, &qword_254F49990), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_254F3EE1C(&qword_27F760510, &qword_254F49990);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_254F4589C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254F45960(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_254F463D0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_254F4632C(v11);
  return v7;
}

unint64_t sub_254F45960(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_254F45A60(a5, a6);
    *a1 = v9;
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
    result = sub_254F4942C();
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

uint64_t sub_254F45A60(uint64_t a1, unint64_t a2)
{
  v3 = sub_254F45AAC(a1, a2);
  sub_254F45BC4(&unk_286728AA8);
  return v3;
}

uint64_t sub_254F45AAC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_254F4939C())
  {
    result = sub_254F45CA8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_254F4940C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_254F4942C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_254F45BC4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_254F45D18(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_254F45CA8(uint64_t a1, uint64_t a2)
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

  sub_254F3EE1C(&qword_27F760578, &qword_254F49A18);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_254F45D18(char *result, int64_t a2, char a3, char *a4)
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
    sub_254F3EE1C(&qword_27F760578, &qword_254F49A18);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_254F45E0C(uint64_t a1, uint64_t a2)
{
  sub_254F494EC();
  sub_254F4938C();
  v4 = sub_254F4950C();

  return sub_254F45E84(a1, a2, v4);
}

unint64_t sub_254F45E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_254F4949C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_254F45F38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254F45F78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254F45F58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254F46144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254F45F78(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_254F3EE1C(&qword_27F7605E8, &qword_254F49A50);
  v10 = *(sub_254F3EE1C(&qword_27F760510, &qword_254F49990) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_254F3EE1C(&qword_27F760510, &qword_254F49990) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_254F457B0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_254F46144(void *result, int64_t a2, char a3, void *a4)
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
    sub_254F3EE1C(&qword_27F760518, &qword_254F499D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_254F3EE1C(&qword_27F760520, &qword_254F499D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_254F46274(void *a1)
{
  v1 = [a1 eventType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F4934C();

  return v3;
}

uint64_t sub_254F4632C(void *a1)
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

uint64_t sub_254F46378(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_254F463D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_254F4642C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_254F4643C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_254F46480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254F46780(a1, a2, a3, a4);
  sub_254F46754();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_254F464D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254F46518(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254F46780(a1, a2, a3, a4);
  sub_254F46754();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_254F46568(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F48EFC();

  return v3;
}

uint64_t sub_254F465CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_254F46624()
{
  result = qword_27F760600;
  if (!qword_27F760600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F760600);
  }

  return result;
}

uint64_t sub_254F46668(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254F46378(result, a2);
  }

  return result;
}

uint64_t sub_254F4667C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_254F3EE1C(a2, a3);
  sub_254F46754();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_254F466D4()
{

  v0 = sub_254F46764();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254F46704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254F46780(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_254F3EE1C(a3, a4);
}

void __swiftcall RetrievedTool.init(id:name:toolType:)(IntelligenceFlowFeedbackDataCollector::RetrievedTool *__return_ptr retstr, Swift::String_optional id, Swift::String_optional name, Swift::String_optional toolType)
{
  retstr->id = id;
  retstr->name = name;
  retstr->toolType = toolType;
}

unint64_t sub_254F467B0(char a1)
{
  if (!a1)
  {
    return 0xD00000000000001ELL;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD00000000000002ALL;
}

uint64_t TranscriptContext.toolRetrievalConfidence.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t TranscriptContext.toolRetrievalOutputs.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t DeviceContext.toDict()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_254F3EE1C(&qword_27F760610, &unk_254F49AC0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_254F49A80;
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x656C61636F6CLL;
  *(inited + 40) = 0xE600000000000000;
  if (v1)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v1)
  {
    v12 = v1;
  }

  *(inited + 48) = v11;
  *(inited + 56) = v12;
  *(inited + 72) = v10;
  *(inited + 80) = 0x6E49737465737361;
  *(inited + 88) = 0xEA00000000006F66;
  *(inited + 120) = sub_254F3EE1C(&qword_27F760520, &qword_254F499D8);

  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v13 = sub_254F4933C();
  }

  v9[12] = v13;
  v9[16] = 0x6F6973726556736FLL;
  v9[17] = 0xE90000000000006ELL;
  if (v5)
  {
    v14 = v4;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v9[18] = v14;
  v9[19] = v16;
  v9[21] = v10;
  v9[22] = 0x7954656369766564;
  v9[27] = v10;
  if (v7)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  if (v7)
  {
    v15 = v7;
  }

  v9[23] = 0xEA00000000006570;
  v9[24] = v17;
  v9[25] = v15;

  return sub_254F4933C();
}

uint64_t RetrievedTool.id.setter()
{
  sub_254F48DFC();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RetrievedTool.name.setter()
{
  sub_254F48DFC();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t RetrievedTool.toolType.setter()
{
  sub_254F48DFC();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t RetrievedTool.toDict()()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_254F3EE1C(&qword_27F760618, &qword_254F49AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254F49A90;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  if (v1)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  if (v3)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  *(inited + 80) = v10;
  *(inited + 88) = v11;
  sub_254F48E80();
  v12[12] = v14;
  v12[13] = 0xE800000000000000;
  if (v5)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  if (v5)
  {
    v13 = v5;
  }

  v12[14] = v15;
  v12[15] = v13;

  return sub_254F4933C();
}

uint64_t FeedbackDataView.OriginalContent.userUtterance.setter()
{
  sub_254F48DFC();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t FeedbackDataView.OriginalContent.toDict()()
{
  v2 = *v0;
  v1 = v0[1];
  sub_254F3EE1C(&qword_27F760618, &qword_254F49AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254F49AA0;
  strcpy((inited + 32), "userUtterance");
  *(inited + 46) = -4864;
  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v1)
  {
    v5 = v1;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;

  return sub_254F4933C();
}

uint64_t FeedbackDataView.GeneratedContent.rgInputPayload.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FeedbackDataView.GeneratedContent.finalResponse.setter()
{
  sub_254F48DFC();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FeedbackDataView.GeneratedContent.toolRetrievalConfidence.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t FeedbackDataView.GeneratedContent.init(rgInputPayload:finalResponse:toolRetrievalOutputs:toolRetrievalConfidence:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

uint64_t FeedbackDataView.GeneratedContent.toDict()()
{
  v1 = *v0;
  v41 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0 + 8);
  v5 = *(v0 + 36);
  v6 = MEMORY[0x277D837D0];
  if (v2)
  {
    v7 = *(v2 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v35 = *(v0 + 36);
      v36 = *(v0 + 8);
      v37 = v0[2];
      v38 = v1;
      *&v39 = MEMORY[0x277D84F90];
      sub_254F45F58(0, v7, 0);
      v8 = v39;
      v9 = (v2 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v13 = v9[1];
        v12 = v9[2];
        v15 = v9[3];
        v14 = v9[4];
        sub_254F3EE1C(&qword_27F760618, &qword_254F49AD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_254F49A90;
        *(inited + 32) = 25705;
        if (v10)
        {
          v17 = v11;
        }

        else
        {
          v17 = 0;
        }

        if (v10)
        {
          v18 = v10;
        }

        else
        {
          v18 = 0xE000000000000000;
        }

        *(inited + 40) = 0xE200000000000000;
        *(inited + 48) = v17;
        *(inited + 56) = v18;
        *(inited + 64) = 1701667182;
        if (v12)
        {
          v19 = v13;
        }

        else
        {
          v19 = 0;
        }

        *(inited + 72) = 0xE400000000000000;
        *(inited + 80) = v19;
        sub_254F48E80();
        v20[11] = v23;
        v20[12] = v22;
        if (v14)
        {
          v24 = v15;
        }

        else
        {
          v24 = 0;
        }

        if (v14)
        {
          v25 = v14;
        }

        else
        {
          v25 = v21;
        }

        v20[13] = 0xE800000000000000;
        v20[14] = v24;
        v20[15] = v25;

        v26 = sub_254F4933C();
        *&v39 = v8;
        v28 = *(v8 + 16);
        v27 = *(v8 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_254F45F58((v27 > 1), v28 + 1, 1);
          v8 = v39;
        }

        v9 += 6;
        *(v8 + 16) = v28 + 1;
        *(v8 + 8 * v28 + 32) = v26;
        --v7;
      }

      while (v7);
      v1 = v38;
      v3 = v37;
      v5 = v35;
      v4 = v36;
    }

    v6 = MEMORY[0x277D837D0];
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  sub_254F3EE1C(&qword_27F760610, &unk_254F49AC0);
  v29 = swift_initStackObject();
  v30 = v29;
  *(v29 + 16) = xmmword_254F49A80;
  strcpy((v29 + 32), "finalResponse");
  *(v29 + 46) = -4864;
  if (v3)
  {
    v31 = v41;
  }

  else
  {
    v31 = 0;
  }

  if (v3)
  {
    v32 = v3;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  *(v29 + 48) = v31;
  *(v29 + 56) = v32;
  *(v29 + 72) = v6;
  strcpy((v29 + 80), "rgInputPayload");
  *(v29 + 95) = -18;
  if (v1)
  {
    v40 = sub_254F3EE1C(&qword_27F760630, &qword_254F49AE8);
    *&v39 = v1;
    sub_254F4642C(&v39, (v30 + 96));
  }

  else
  {
    *(v29 + 120) = v6;
    *(v29 + 96) = 0;
    *(v29 + 104) = 0xE000000000000000;
  }

  *(v30 + 128) = 0xD000000000000014;
  *(v30 + 136) = 0x8000000254F4A0E0;
  v33 = sub_254F3EE1C(&qword_27F760620, &qword_254F49AD8);
  *(v30 + 144) = v8;
  *(v30 + 168) = v33;
  *(v30 + 176) = 0xD000000000000017;
  *(v30 + 184) = 0x8000000254F4A100;
  *(v30 + 216) = sub_254F3EE1C(&qword_27F760628, &qword_254F49AE0);
  *(v30 + 192) = v4;
  *(v30 + 196) = v5;

  return sub_254F4933C();
}

uint64_t FeedbackDataView.AdditionalDiagnostics.locale.setter()
{
  sub_254F48DFC();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t FeedbackDataView.AdditionalDiagnostics.assetsInfo.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t FeedbackDataView.AdditionalDiagnostics.osVersion.setter()
{
  sub_254F48DFC();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t FeedbackDataView.AdditionalDiagnostics.deviceType.setter()
{
  sub_254F48DFC();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedbackDataView.AdditionalDiagnostics.JSON()()
{
  v2 = sub_254F4937C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = v0[2];
  v5 = *(v0 + 6);
  sub_254F48ECC();
  swift_allocObject();
  v6 = sub_254F48EBC();
  v7 = *v0;
  *&v18[5] = v0[1];
  *&v18[3] = v7;
  *&v18[7] = *v18;
  v18[9] = v5;
  sub_254F4832C();
  v8 = sub_254F48EAC();
  v10 = v9;

  if (!v1)
  {
    sub_254F4936C();
    v11 = sub_254F4935C();
    if (v12)
    {
      v4 = v11;
      v6 = v12;
    }

    else
    {
      v15 = sub_254F48380();
      sub_254F48E94(&unk_286728F88, v15);
      *v16 = 2;
      swift_willThrow();
    }

    sub_254F46378(v8, v10);
  }

  v13 = v4;
  v14 = v6;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_254F476BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_254F4949C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E49737465737361 && a2 == 0xEA00000000006F66;
    if (v6 || (sub_254F4949C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_254F4949C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570)
      {

        return 3;
      }

      else
      {
        v9 = sub_254F4949C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_254F4782C(unsigned __int8 a1)
{
  sub_254F494EC();
  MEMORY[0x259C2F2D0](a1);
  return sub_254F4950C();
}

uint64_t sub_254F47880(char a1)
{
  result = 0x656C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6E49737465737361;
      break;
    case 2:
      result = 0x6F6973726556736FLL;
      break;
    case 3:
      result = 0x7954656369766564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F47948(uint64_t a1)
{
  v2 = *v1;
  sub_254F494EC();
  MEMORY[0x259C2F2D0](v2);
  return sub_254F4950C();
}

uint64_t sub_254F47994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F476BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F479DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F47824();
  *a1 = result;
  return result;
}

uint64_t sub_254F47A04(uint64_t a1)
{
  v2 = sub_254F483D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F47A40(uint64_t a1)
{
  v2 = sub_254F483D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedbackDataView.AdditionalDiagnostics.encode(to:)(void *a1)
{
  sub_254F3EE1C(&qword_27F760648, &qword_254F49AF0);
  sub_254F48E40();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = v1[2];
  v13[4] = v1[3];
  v14 = v9;
  v10 = v1[4];
  v13[2] = v1[5];
  v13[3] = v10;
  v13[1] = v1[6];
  sub_254F4643C(a1, a1[3]);
  sub_254F483D4();
  sub_254F4952C();
  v20 = 0;
  v11 = v15;
  sub_254F4946C();
  if (!v11)
  {
    v16 = v14;
    v19 = 1;
    sub_254F3EE1C(&qword_27F760520, &qword_254F499D8);
    sub_254F48470(&qword_27F760658, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_254F4947C();
    v18 = 2;
    sub_254F4946C();
    v17 = 3;
    sub_254F4946C();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t FeedbackDataView.AdditionalDiagnostics.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_254F3EE1C(&qword_27F760660, &qword_254F49AF8);
  sub_254F48E40();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  sub_254F4643C(a1, a1[3]);
  sub_254F483D4();
  sub_254F4951C();
  if (!v2)
  {
    v34 = 0;
    v12 = sub_254F48E64(&v34);
    v14 = v13;
    sub_254F3EE1C(&qword_27F760520, &qword_254F499D8);
    v33[1] = 1;
    sub_254F48470(&qword_27F760668, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_254F4945C();
    v29 = v12;
    v30 = a2;
    v15 = v31;
    v33[0] = 2;
    v16 = sub_254F48E64(v33);
    v18 = v17;
    v28 = v16;
    v32 = 3;
    v19 = sub_254F48E64(&v32);
    v21 = v20;
    v22 = *(v7 + 8);
    v27 = v19;
    v22(v10, v3);
    v23 = v30;
    *v30 = v29;
    v23[1] = v14;
    v24 = v27;
    v25 = v28;
    v23[2] = v15;
    v23[3] = v25;
    v23[4] = v18;
    v23[5] = v24;
    v23[6] = v21;
  }

  sub_254F4632C(a1);
}

uint64_t FeedbackDataView.__allocating_init(clientRequestId:)()
{
  sub_254F48DFC();
  v2 = swift_allocObject();
  FeedbackDataView.init(clientRequestId:)(v1, v0);
  return v2;
}

uint64_t *FeedbackDataView.init(clientRequestId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 1) = xmmword_254F49AB0;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  v2[10] = 1;
  *(v2 + 11) = 0u;
  *(v2 + 13) = 0u;
  v2[15] = 0;
  type metadata accessor for TranscriptContextBuilder();
  *(swift_initStackObject() + 16) = MEMORY[0x277D84F90];
  sub_254F3D818();
  TranscriptContextBuilder.getTranscriptContext(clientRequestId:)(a1, a2, &v24);

  swift_setDeallocating();

  v5 = v27;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = v25;
  *(v2 + 1) = v24;
  *(v2 + 2) = v13;
  *(v2 + 3) = v26;
  v2[8] = v5;
  sub_254F484DC(v6, v7, v8, v9, v10, v11, v12);
  type metadata accessor for DeviceContextBuilder();
  swift_initStackObject();
  DeviceContextBuilder.getCurrentDeviceContext()(&v24);
  v14 = v2[9];
  v15 = v2[10];
  v16 = v25;
  *(v2 + 9) = v24;
  v17 = v27;
  v18 = v2[11];
  v19 = v2[12];
  v20 = v2[13];
  v21 = v2[14];
  v22 = v2[15];
  *(v2 + 11) = v16;
  *(v2 + 13) = v26;
  v2[15] = v17;
  sub_254F484DC(v14, v15, v18, v19, v20, v21, v22);
  return v2;
}

IntelligenceFlowFeedbackDataCollector::FeedbackDataView::OriginalContent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedbackDataView.originalContent()()
{
  v2 = *(v1 + 24);
  if (v2 == 1)
  {
    v3 = sub_254F48380();
    sub_254F48E94(&unk_286728F88, v3);
    *v4 = 0;
    v5 = swift_willThrow();
  }

  else
  {
    *v0 = *(v1 + 16);
    v0[1] = v2;
  }

  result.userUtterance.value._object = v6;
  result.userUtterance.value._countAndFlagsBits = v5;
  return result;
}

uint64_t FeedbackDataView.generatedContent()@<X0>(uint64_t a2@<X8>)
{
  if (*(v2 + 24) == 1)
  {
    v3 = sub_254F48380();
    sub_254F48E94(&unk_286728F88, v3);
    *v4 = 0;
    return swift_willThrow();
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = *(v2 + 64);
    v8 = *(v2 + 48);
    *a2 = *(v2 + 32);
    *(a2 + 16) = v8;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 36) = BYTE4(v7) & 1;
  }
}

uint64_t FeedbackDataView.additionalDiagnostics()@<X0>(uint64_t a2@<X8>)
{
  v3 = *(v2 + 80);
  if (v3 == 1)
  {
    v4 = sub_254F48380();
    sub_254F48E94(&unk_286728F88, v4);
    *v5 = 1;
    return swift_willThrow();
  }

  else
  {
    v7 = *(v2 + 120);
    *a2 = *(v2 + 72);
    *(a2 + 8) = v3;
    v8 = *(v2 + 104);
    *(a2 + 16) = *(v2 + 88);
    *(a2 + 32) = v8;
    *(a2 + 48) = v7;
  }
}

uint64_t *FeedbackDataView.deinit()
{
  sub_254F484DC(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);
  sub_254F484DC(v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15]);
  return v0;
}

uint64_t FeedbackDataView.__deallocating_deinit()
{
  FeedbackDataView.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

unint64_t sub_254F4832C()
{
  result = qword_27F760638;
  if (!qword_27F760638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760638);
  }

  return result;
}

unint64_t sub_254F48380()
{
  result = qword_27F760640;
  if (!qword_27F760640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760640);
  }

  return result;
}

unint64_t sub_254F483D4()
{
  result = qword_27F760650;
  if (!qword_27F760650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760650);
  }

  return result;
}

uint64_t sub_254F48428(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_254F48470(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_254F48428(&qword_27F760520, &qword_254F499D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_254F484DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {
  }
}

__n128 sub_254F48544(uint64_t a1, uint64_t a2)
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

__n128 sub_254F48580(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_254F48594(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F485E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_254F486A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_254F486B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F48704(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_254F48760(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254F48774(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 37))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F487C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_254F48830(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F48884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedbackDataView.AdditionalDiagnostics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FeedbackDataView.AdditionalDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254F48A54);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254F48A9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_254F48B24(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254F48BF0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254F48C28()
{
  result = qword_27F760670;
  if (!qword_27F760670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760670);
  }

  return result;
}

unint64_t sub_254F48C80()
{
  result = qword_27F760678;
  if (!qword_27F760678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760678);
  }

  return result;
}

unint64_t sub_254F48CD8()
{
  result = qword_27F760680;
  if (!qword_27F760680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760680);
  }

  return result;
}

unint64_t sub_254F48D30()
{
  result = qword_27F760688;
  if (!qword_27F760688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760688);
  }

  return result;
}

uint64_t sub_254F48E64(uint64_t a1)
{

  return MEMORY[0x2821FD988](a1, v1);
}

uint64_t sub_254F48E94(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE7E0](a1, a2, 0, 0);
}