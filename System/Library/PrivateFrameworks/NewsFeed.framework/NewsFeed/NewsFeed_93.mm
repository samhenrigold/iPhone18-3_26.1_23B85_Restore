uint64_t FormatColorProcessor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v39;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F50F5E28;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D665B1B4();
    v41 = 0uLL;
    sub_1D726431C();
    if (v40 > 3u)
    {
      v24 = v12;
      if (v40 > 5u)
      {
        if (v40 == 6)
        {
          v40 = xmmword_1D7279980;
          sub_1D665B208();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v30 = v41;
          v31 = v42;
          v32 = swift_allocObject();
          *(v32 + 16) = v30;
          *(v32 + 32) = v31;
          v25 = v32 | 0x8000000000000000;
        }

        else
        {
          (*(v11 + 8))(v15, v5);
          v25 = 0xA000000000000010;
        }
      }

      else if (v40 == 4)
      {
        v40 = xmmword_1D7279980;
        sub_1D665B25C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v26 = v41;
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        v25 = v27 | 0x4000000000000000;
      }

      else
      {
        v41 = xmmword_1D7279980;
        sub_1D5B570F8();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v33 = v40;
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        v25 = v34 | 0x6000000000000000;
      }
    }

    else
    {
      v24 = v12;
      if (v40 > 1u)
      {
        if (v40 == 2)
        {
          v40 = xmmword_1D7279980;
          sub_1D665B348();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v28 = v41;
          v29 = *(&v41 + 1);
          v25 = swift_allocObject();
          *(v25 + 16) = v28;
          *(v25 + 24) = v29;
        }

        else
        {
          v40 = xmmword_1D7279980;
          sub_1D665B2F4();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v35 = v41;
          v36 = *(&v41 + 1);
          v37 = swift_allocObject();
          *(v37 + 16) = v35;
          *(v37 + 24) = v36;
          v25 = v37 | 0x2000000000000000;
        }
      }

      else if (v40)
      {
        v25 = 0xA000000000000008;
        (*(v11 + 8))(v15, v5);
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0xA000000000000000;
      }
    }

    *v24 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorProcessor.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v84 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v83 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v81 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v81 = &v81 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v81 - v30;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v2;
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = sub_1D5C30408();
  v85 = v35;
  sub_1D5D2EE70(&type metadata for FormatColorProcessor, &type metadata for FormatCodingKeys, v40, v37, &type metadata for FormatColorProcessor, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v38, v35, v39, &off_1F51F6C78);
  v41 = v36 >> 61;
  if ((v36 >> 61) > 2)
  {
    if (v41 == 3)
    {
      v61 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v62 = qword_1EDF31ED0;

      if (v62 != -1)
      {
        swift_once();
      }

      v63 = sub_1D725BD1C();
      v64 = __swift_project_value_buffer(v63, qword_1EDFFCD50);
      (*(*(v63 - 8) + 16))(v13, v64, v63);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v55 = v85;
      sub_1D63A4CD4(5, v61, v13);

      v60 = v13;
    }

    else
    {
      if (v41 == 4)
      {
        v48 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v49 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v50 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v51 = qword_1EDF31E98;

        if (v51 != -1)
        {
          swift_once();
        }

        v52 = sub_1D725BD1C();
        v53 = __swift_project_value_buffer(v52, qword_1EDFFCD00);
        v31 = v84;
        (*(*(v52 - 8) + 16))(v84, v53, v52);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = v50;
        v55 = v85;
        sub_1D63A4E68(6, v48, v49, v54, v31);
      }

      else
      {
        if (v36 == 0xA000000000000000)
        {
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v76 = sub_1D725BD1C();
          v77 = __swift_project_value_buffer(v76, qword_1EDFFCD30);
          (*(*(v76 - 8) + 16))(v31, v77, v76);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v75 = 0;
          v78 = v31;
          v55 = v85;
        }

        else
        {
          if (v36 == 0xA000000000000008)
          {
            v55 = v85;
            if (qword_1EDF31EB0 != -1)
            {
              swift_once();
            }

            v73 = sub_1D725BD1C();
            v74 = __swift_project_value_buffer(v73, qword_1EDFFCD30);
            v31 = v81;
            (*(*(v73 - 8) + 16))(v81, v74, v73);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v75 = 1;
          }

          else
          {
            v55 = v85;
            if (qword_1EDF31ED8 != -1)
            {
              swift_once();
            }

            v79 = sub_1D725BD1C();
            v80 = __swift_project_value_buffer(v79, qword_1EDFFCD68);
            v31 = v82;
            (*(*(v79 - 8) + 16))(v82, v80, v79);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v75 = 7;
          }

          v78 = v31;
        }

        sub_1D64205BC(v75, v78);
      }

      v60 = v31;
    }

    goto LABEL_35;
  }

  if (!v41)
  {
    v56 = *(v36 + 16);
    v57 = *(v36 + 24);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v58 = sub_1D725BD1C();
    v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
    (*(*(v58 - 8) + 16))(v24, v59, v58);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v55 = v85;
    sub_1D63A4810(2, v56, v24, v57);
    v60 = v24;
LABEL_35:
    sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
    v72 = v55;
    return sub_1D5D2CFE8(v72, sub_1D5D30DC4);
  }

  if (v41 != 1)
  {
    v65 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v66 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v67 = qword_1EDF31EB0;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = sub_1D725BD1C();
    v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
    v70 = v83;
    (*(*(v68 - 8) + 16))(v83, v69, v68);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v71 = v85;
    sub_1D63A4B40(4, v65, v66, v70);

    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
    v72 = v71;
    return sub_1D5D2CFE8(v72, sub_1D5D30DC4);
  }

  v42 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v43 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
  (*(*(v44 - 8) + 16))(v20, v45, v44);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v46 = v85;
  sub_1D63A49A8(3, v42, v20, v43);
  sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v46, sub_1D5D30DC4);
}

uint64_t FormatParagraphStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v428 = v425 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v433 = v425 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v434 = v425 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v437 = v425 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v439 = v425 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v441 = v425 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v443 = v425 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v445 = v425 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v447 = v425 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v449 = v425 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v451 = v425 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v453 = v425 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v456 = v425 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v461 = v425 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  *&v465 = v425 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = v425 - v50;
  sub_1D665B39C(0);
  v53 = v52;
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = v425 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *v1;
  v58 = *(v1 + 1);
  LODWORD(v463) = v1[16];
  v59 = *(v1 + 3);
  v457 = v1[32];
  v60 = *(v1 + 5);
  v454 = v1[48];
  v452 = v1[49];
  v450 = v1[50];
  v61 = *(v1 + 7);
  v448 = v1[64];
  v62 = *(v1 + 9);
  v446 = v1[80];
  v63 = *(v1 + 11);
  v444 = v1[96];
  v64 = *(v1 + 13);
  v442 = v1[112];
  v65 = *(v1 + 15);
  v440 = v1[128];
  v435 = *(v1 + 17);
  v438 = v1[144];
  v431 = *(v1 + 19);
  v436 = v1[160];
  v429 = *(v1 + 21);
  v432 = v1[176];
  v426 = *(v1 + 23);
  v430 = v1[192];
  v427 = v1[193];
  v66 = a1[3];
  v67 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v66);
  sub_1D5CA98C4(0);
  v69 = v68;
  v70 = sub_1D5B58B84(&qword_1EDF253B8, sub_1D5CA98C4, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatParagraphStyle, v69, v71, v66, &type metadata for FormatParagraphStyle, v69, &type metadata for FormatVersions.JazzkonC, v67, v56, v70, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v72 = sub_1D725BD1C();
  v73 = __swift_project_value_buffer(v72, qword_1EDFFCD30);
  v74 = *(v72 - 8);
  v75 = *(v74 + 16);
  v467 = (v74 + 16);
  *&v468 = v75;
  v75(v51, v73, v72);
  v466 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v472 = 0uLL;
  v473 = 0;
  v76 = &v56[*(v53 + 44)];
  v78 = *v76;
  v77 = *(v76 + 1);
  LOBYTE(v474) = 0;
  v79 = swift_allocObject();
  v81 = v53;
  v82 = v79;
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  *(v79 + 32) = v474;
  *(v79 + 40) = v78;
  *(v79 + 48) = v77;
  v469 = v56;
  v458 = v72;
  v459 = v73;
  v460 = v77;
  if (v57 == 5)
  {
    v462 = v81;
  }

  else
  {
    *&v464 = v425;
    LOBYTE(v474) = v57;
    MEMORY[0x1EEE9AC00](v79, v80);
    v425[-4] = sub_1D5B4AA6C;
    v425[-3] = 0;
    v423 = sub_1D6708880;
    v424 = v82;
    v471 = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    *(v83 + 24) = 0;
    *(v83 + 32) = v471;
    *(v83 + 40) = v78;
    *(v83 + 48) = v77;
    sub_1D665B430(0);
    v85 = v84;
    v86 = sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v425[1] = v85;
    v425[0] = v86;
    v87 = sub_1D72647CC();
    v471 = 0;
    v88 = swift_allocObject();
    v455 = v78;
    *(v88 + 24) = 0;
    *(v88 + 32) = 0;
    *(v88 + 16) = v87;
    *(v88 + 40) = v471;
    v89 = &v56[*(v81 + 36)];
    v90 = *(v89 + 3);
    v91 = *(v89 + 4);
    v92 = __swift_project_boxed_opaque_existential_1(v89, v90);
    MEMORY[0x1EEE9AC00](v92, v93);
    MEMORY[0x1EEE9AC00](v94, v95);
    v425[-4] = sub_1D615B4A4;
    v425[-3] = &v425[-6];
    v423 = sub_1D6708880;
    v424 = v83;
    v96 = v470;
    v98 = sub_1D5D2F7A4(v51, sub_1D615B49C, v97, sub_1D615B4A4, &v425[-6], v90, v91);
    if (v96)
    {
      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

      goto LABEL_17;
    }

    v99 = v98;
    v100 = v455;
    v462 = v81;

    if (v99)
    {
      sub_1D665B5FC();
      sub_1D72647EC();
      v72 = v458;
      v78 = v100;
      v470 = 0;
      v77 = v460;
    }

    else
    {
      v470 = 0;
      v77 = v460;
      v78 = v100;
      v72 = v458;
    }

    v73 = v459;
  }

  sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

  v101 = v465;
  (v468)(v465, v73, v72);
  swift_storeEnumTagMultiPayload();
  v464 = xmmword_1D728CF30;
  v472 = xmmword_1D728CF30;
  v473 = 0;
  LOBYTE(v474) = 0;
  v102 = swift_allocObject();
  v104 = v102;
  *(v102 + 16) = v464;
  *(v102 + 32) = v474;
  *(v102 + 40) = v78;
  *(v102 + 48) = v77;
  if (v463)
  {

    goto LABEL_13;
  }

  v463 = v425;
  v474 = v58;
  MEMORY[0x1EEE9AC00](v102, v103);
  v425[-4] = sub_1D5B4AA6C;
  v425[-3] = 0;
  v423 = sub_1D6708880;
  v424 = v104;
  v471 = 0;
  v110 = swift_allocObject();
  *(v110 + 16) = v464;
  *(v110 + 32) = v471;
  *(v110 + 40) = v78;
  *(v110 + 48) = v77;
  sub_1D665B430(0);
  sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v111 = v469;
  v112 = sub_1D72647CC();
  v471 = 0;
  v113 = v78;
  v114 = swift_allocObject();
  *(v114 + 16) = v112;
  *(v114 + 24) = v464;
  *(v114 + 40) = v471;
  v115 = &v111[*(v462 + 36)];
  v116 = *(v115 + 3);
  v117 = *(v115 + 4);
  v118 = __swift_project_boxed_opaque_existential_1(v115, v116);
  MEMORY[0x1EEE9AC00](v118, v119);
  MEMORY[0x1EEE9AC00](v120, v121);
  v425[-4] = sub_1D615B4A4;
  v425[-3] = &v425[-6];
  v122 = v465;
  v423 = sub_1D6708880;
  v424 = v110;
  v123 = v470;
  v125 = sub_1D5D2F7A4(v465, sub_1D615B49C, v124, sub_1D615B4A4, &v425[-6], v116, v117);
  v470 = v123;
  if (!v123)
  {
    v143 = v125;
    v144 = v460;

    if (v143)
    {
      sub_1D5B578C4();
      v126 = v469;
      v145 = v470;
      sub_1D72647EC();
      v73 = v459;
      if (v145)
      {
        sub_1D5D2CFE8(v465, type metadata accessor for FormatVersionRequirement);

        goto LABEL_18;
      }

      v78 = v113;
      v470 = 0;
      v77 = v144;
      v72 = v458;
      v101 = v465;
    }

    else
    {
      v77 = v144;
      v78 = v113;
      v72 = v458;
      v73 = v459;
      v101 = v465;
    }

LABEL_13:
    sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);

    v105 = v461;
    (v468)(v461, v73, v72);
    swift_storeEnumTagMultiPayload();
    v465 = xmmword_1D7297410;
    v472 = xmmword_1D7297410;
    v473 = 0;
    LOBYTE(v474) = 0;
    v106 = swift_allocObject();
    v108 = v106;
    *(v106 + 16) = v465;
    *(v106 + 32) = v474;
    *(v106 + 40) = v78;
    *(v106 + 48) = v77;
    v455 = v78;
    if (v457)
    {

      v109 = v456;
    }

    else
    {
      *&v464 = v425;
      v474 = v59;
      MEMORY[0x1EEE9AC00](v106, v107);
      v425[-4] = sub_1D5B4AA6C;
      v425[-3] = 0;
      v423 = sub_1D6708880;
      v424 = v108;
      v471 = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v465;
      *(v128 + 32) = v471;
      *(v128 + 40) = v78;
      *(v128 + 48) = v77;
      sub_1D665B430(0);
      sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v129 = v469;
      v130 = sub_1D72647CC();
      v471 = 0;
      v131 = swift_allocObject();
      *(v131 + 16) = v130;
      *(v131 + 24) = v465;
      *(v131 + 40) = v471;
      v132 = &v129[*(v462 + 36)];
      v133 = *(v132 + 3);
      v134 = *(v132 + 4);
      v135 = __swift_project_boxed_opaque_existential_1(v132, v133);
      MEMORY[0x1EEE9AC00](v135, v136);
      MEMORY[0x1EEE9AC00](v137, v138);
      v425[-4] = sub_1D615B4A4;
      v425[-3] = &v425[-6];
      v423 = sub_1D6708880;
      v424 = v128;
      v139 = v470;
      v141 = sub_1D5D2F7A4(v105, sub_1D615B49C, v140, sub_1D615B4A4, &v425[-6], v133, v134);
      if (v139)
      {
        v142 = v105;
        goto LABEL_34;
      }

      v146 = v141;
      v147 = v455;
      v148 = v460;

      if (v146)
      {
        sub_1D5B578C4();
        sub_1D72647EC();
        v73 = v459;
        v78 = v147;
        v470 = 0;
        v77 = v148;
        v72 = v458;
      }

      else
      {
        v470 = 0;
        v77 = v148;
        v78 = v147;
        v72 = v458;
        v73 = v459;
      }

      v109 = v456;
      v105 = v461;
    }

    sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);

    (v468)(v109, v73, v72);
    swift_storeEnumTagMultiPayload();
    v465 = xmmword_1D72BAA60;
    v472 = xmmword_1D72BAA60;
    v473 = 0;
    LOBYTE(v474) = 0;
    v149 = swift_allocObject();
    v151 = v149;
    *(v149 + 16) = v465;
    *(v149 + 32) = v474;
    *(v149 + 40) = v78;
    *(v149 + 48) = v77;
    if (v454)
    {

      v152 = v453;
      goto LABEL_39;
    }

    *&v464 = v425;
    v474 = v60;
    MEMORY[0x1EEE9AC00](v149, v150);
    v425[-4] = sub_1D5B4AA6C;
    v425[-3] = 0;
    v423 = sub_1D6708880;
    v424 = v151;
    v471 = 0;
    v153 = swift_allocObject();
    *(v153 + 16) = v465;
    *(v153 + 32) = v471;
    *(v153 + 40) = v78;
    *(v153 + 48) = v77;
    sub_1D665B430(0);
    sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v154 = v469;
    v155 = sub_1D72647CC();
    v471 = 0;
    v156 = swift_allocObject();
    *(v156 + 16) = v155;
    *(v156 + 24) = v465;
    *(v156 + 40) = v471;
    v157 = &v154[*(v462 + 36)];
    v158 = *(v157 + 3);
    v159 = *(v157 + 4);
    v160 = __swift_project_boxed_opaque_existential_1(v157, v158);
    MEMORY[0x1EEE9AC00](v160, v161);
    MEMORY[0x1EEE9AC00](v162, v163);
    v425[-4] = sub_1D615B4A4;
    v425[-3] = &v425[-6];
    v423 = sub_1D6708880;
    v424 = v153;
    v164 = v470;
    v166 = sub_1D5D2F7A4(v109, sub_1D615B49C, v165, sub_1D615B4A4, &v425[-6], v158, v159);
    if (!v164)
    {
      v167 = v166;
      v168 = v455;
      v169 = v460;

      if (v167)
      {
        sub_1D5B578C4();
        sub_1D72647EC();
        v73 = v459;
        v78 = v168;
        v470 = 0;
        v77 = v169;
        v72 = v458;
      }

      else
      {
        v470 = 0;
        v77 = v169;
        v78 = v168;
        v72 = v458;
        v73 = v459;
      }

      v152 = v453;
      v109 = v456;
LABEL_39:
      sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

      (v468)(v152, v73, v72);
      swift_storeEnumTagMultiPayload();
      v465 = xmmword_1D72BAA70;
      v472 = xmmword_1D72BAA70;
      v473 = 0;
      LOBYTE(v474) = 0;
      v170 = swift_allocObject();
      v172 = v170;
      *(v170 + 16) = v465;
      *(v170 + 32) = v474;
      *(v170 + 40) = v78;
      *(v170 + 48) = v77;
      if (v452 == 6)
      {

        v173 = v470;
      }

      else
      {
        *&v464 = v425;
        LOBYTE(v474) = v452;
        MEMORY[0x1EEE9AC00](v170, v171);
        v425[-4] = sub_1D5B4AA6C;
        v425[-3] = 0;
        v423 = sub_1D6708880;
        v424 = v172;
        v471 = 0;
        v179 = swift_allocObject();
        *(v179 + 16) = v465;
        *(v179 + 32) = v471;
        *(v179 + 40) = v78;
        *(v179 + 48) = v77;
        sub_1D665B430(0);
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v180 = v469;
        v181 = sub_1D72647CC();
        v471 = 0;
        v175 = v152;
        v182 = swift_allocObject();
        *(v182 + 16) = v181;
        *(v182 + 24) = v465;
        *(v182 + 40) = v471;
        v183 = &v180[*(v462 + 36)];
        v184 = *(v183 + 3);
        v185 = *(v183 + 4);
        v186 = __swift_project_boxed_opaque_existential_1(v183, v184);
        MEMORY[0x1EEE9AC00](v186, v187);
        MEMORY[0x1EEE9AC00](v188, v189);
        v425[-4] = sub_1D615B4A4;
        v425[-3] = &v425[-6];
        v423 = sub_1D6708880;
        v424 = v179;
        v190 = v470;
        v192 = sub_1D5D2F7A4(v175, sub_1D615B49C, v191, sub_1D615B4A4, &v425[-6], v184, v185);
        v173 = v190;
        if (v190)
        {
          goto LABEL_114;
        }

        v193 = v192;
        v194 = v455;
        v195 = v460;

        if (v193)
        {
          sub_1D665B5A8();
          sub_1D72647EC();
          v73 = v459;
          v152 = v453;
          v77 = v195;
          v78 = v194;
          v72 = v458;
        }

        else
        {
          v77 = v195;
          v78 = v194;
          v72 = v458;
          v73 = v459;
          v152 = v453;
        }
      }

      sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);

      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v470 = v173;
      v174 = __swift_project_value_buffer(v72, qword_1EDFFCE80);
      v175 = v451;
      (v468)(v451, v174, v72);
      swift_storeEnumTagMultiPayload();
      v465 = xmmword_1D72BAA80;
      v472 = xmmword_1D72BAA80;
      v473 = 0;
      LOBYTE(v474) = 0;
      v176 = swift_allocObject();
      v178 = v176;
      *(v176 + 16) = v465;
      *(v176 + 32) = v474;
      *(v176 + 40) = v78;
      *(v176 + 48) = v77;
      if (v450 == 3)
      {
      }

      else
      {
        *&v464 = v425;
        LOBYTE(v474) = v450;
        MEMORY[0x1EEE9AC00](v176, v177);
        v425[-4] = sub_1D5B4AA6C;
        v425[-3] = 0;
        v423 = sub_1D6708880;
        v424 = v178;
        v471 = 0;
        v196 = swift_allocObject();
        *(v196 + 16) = v465;
        *(v196 + 32) = v471;
        *(v196 + 40) = v78;
        *(v196 + 48) = v77;
        sub_1D665B430(0);
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v197 = v469;
        v198 = sub_1D72647CC();
        v471 = 0;
        v199 = swift_allocObject();
        *(v199 + 16) = v198;
        *(v199 + 24) = v465;
        *(v199 + 40) = v471;
        v200 = &v197[*(v462 + 36)];
        v201 = *(v200 + 3);
        v202 = *(v200 + 4);
        v203 = __swift_project_boxed_opaque_existential_1(v200, v201);
        MEMORY[0x1EEE9AC00](v203, v204);
        MEMORY[0x1EEE9AC00](v205, v206);
        v425[-4] = sub_1D615B4A4;
        v425[-3] = &v425[-6];
        v423 = sub_1D6708880;
        v424 = v196;
        v207 = v470;
        v209 = sub_1D5D2F7A4(v175, sub_1D615B49C, v208, sub_1D615B4A4, &v425[-6], v201, v202);
        if (v207)
        {
          goto LABEL_114;
        }

        v210 = v209;
        v211 = v455;
        v212 = v460;

        if (v210)
        {
          sub_1D665B554();
          sub_1D72647EC();
          v73 = v459;
          v470 = 0;
          v77 = v212;
          v78 = v211;
          v72 = v458;
        }

        else
        {
          v470 = 0;
          v77 = v212;
          v78 = v211;
          v72 = v458;
          v73 = v459;
        }

        v175 = v451;
      }

      sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);

      v213 = v449;
      (v468)(v449, v73, v72);
      swift_storeEnumTagMultiPayload();
      v465 = xmmword_1D72BAA90;
      v472 = xmmword_1D72BAA90;
      v473 = 0;
      LOBYTE(v474) = 0;
      v214 = swift_allocObject();
      v216 = v214;
      *(v214 + 16) = v465;
      *(v214 + 32) = v474;
      *(v214 + 40) = v78;
      *(v214 + 48) = v77;
      if (v448)
      {

        v175 = v447;
      }

      else
      {
        *&v464 = v425;
        v474 = v61;
        MEMORY[0x1EEE9AC00](v214, v215);
        v175 = v213;
        v425[-4] = sub_1D5B4AA6C;
        v425[-3] = 0;
        v423 = sub_1D6708880;
        v424 = v216;
        v471 = 0;
        v217 = swift_allocObject();
        *(v217 + 16) = v465;
        *(v217 + 32) = v471;
        *(v217 + 40) = v78;
        *(v217 + 48) = v77;
        sub_1D665B430(0);
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v218 = v469;
        v219 = sub_1D72647CC();
        v471 = 0;
        v220 = swift_allocObject();
        *(v220 + 16) = v219;
        *(v220 + 24) = v465;
        *(v220 + 40) = v471;
        v221 = &v218[*(v462 + 36)];
        v222 = *(v221 + 3);
        v223 = *(v221 + 4);
        v224 = __swift_project_boxed_opaque_existential_1(v221, v222);
        MEMORY[0x1EEE9AC00](v224, v225);
        MEMORY[0x1EEE9AC00](v226, v227);
        v425[-4] = sub_1D615B4A4;
        v425[-3] = &v425[-6];
        v423 = sub_1D6708880;
        v424 = v217;
        v228 = v470;
        v230 = sub_1D5D2F7A4(v175, sub_1D615B49C, v229, sub_1D615B4A4, &v425[-6], v222, v223);
        if (v228)
        {
          goto LABEL_114;
        }

        v231 = v230;
        v232 = v455;
        v233 = v460;

        if (v231)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v459;
          v470 = 0;
          v77 = v233;
          v78 = v232;
          v72 = v458;
        }

        else
        {
          v470 = 0;
          v77 = v233;
          v78 = v232;
          v72 = v458;
          v73 = v459;
        }

        v175 = v447;
        v213 = v449;
      }

      sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);

      (v468)(v175, v73, v72);
      swift_storeEnumTagMultiPayload();
      v465 = xmmword_1D72BAAA0;
      v472 = xmmword_1D72BAAA0;
      v473 = 0;
      LOBYTE(v474) = 0;
      v234 = swift_allocObject();
      v236 = v234;
      *(v234 + 16) = v465;
      *(v234 + 32) = v474;
      *(v234 + 40) = v78;
      *(v234 + 48) = v77;
      if (v446)
      {
      }

      else
      {
        *&v464 = v425;
        v474 = v62;
        MEMORY[0x1EEE9AC00](v234, v235);
        v425[-4] = sub_1D5B4AA6C;
        v425[-3] = 0;
        v423 = sub_1D6708880;
        v424 = v236;
        v471 = 0;
        v237 = swift_allocObject();
        *(v237 + 16) = v465;
        *(v237 + 32) = v471;
        *(v237 + 40) = v78;
        *(v237 + 48) = v77;
        sub_1D665B430(0);
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v238 = v469;
        v239 = sub_1D72647CC();
        v471 = 0;
        v240 = swift_allocObject();
        *(v240 + 16) = v239;
        *(v240 + 24) = v465;
        *(v240 + 40) = v471;
        v241 = &v238[*(v462 + 36)];
        v242 = *(v241 + 3);
        v243 = *(v241 + 4);
        v244 = __swift_project_boxed_opaque_existential_1(v241, v242);
        MEMORY[0x1EEE9AC00](v244, v245);
        MEMORY[0x1EEE9AC00](v246, v247);
        v425[-4] = sub_1D615B4A4;
        v425[-3] = &v425[-6];
        v423 = sub_1D6708880;
        v424 = v237;
        v248 = v470;
        v250 = sub_1D5D2F7A4(v175, sub_1D615B49C, v249, sub_1D615B4A4, &v425[-6], v242, v243);
        if (v248)
        {
          goto LABEL_114;
        }

        v251 = v455;
        v252 = v460;
        v253 = v250;

        if (v253)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v459;
          v470 = 0;
          v77 = v252;
          v78 = v251;
          v72 = v458;
        }

        else
        {
          v470 = 0;
          v77 = v252;
          v78 = v251;
          v72 = v458;
          v73 = v459;
        }

        v175 = v447;
      }

      sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);

      v175 = v445;
      (v468)(v445, v73, v72);
      swift_storeEnumTagMultiPayload();
      v465 = xmmword_1D72BAAB0;
      v472 = xmmword_1D72BAAB0;
      v473 = 0;
      LOBYTE(v474) = 0;
      v254 = swift_allocObject();
      v256 = v254;
      *(v254 + 16) = v465;
      *(v254 + 32) = v474;
      *(v254 + 40) = v78;
      *(v254 + 48) = v77;
      if (v444)
      {

        v257 = v175;
      }

      else
      {
        *&v464 = v425;
        v474 = v63;
        MEMORY[0x1EEE9AC00](v254, v255);
        v425[-4] = sub_1D5B4AA6C;
        v425[-3] = 0;
        v423 = sub_1D6708880;
        v424 = v256;
        v471 = 0;
        v258 = swift_allocObject();
        *(v258 + 16) = v465;
        *(v258 + 32) = v471;
        *(v258 + 40) = v78;
        *(v258 + 48) = v77;
        sub_1D665B430(0);
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v259 = v469;
        v260 = sub_1D72647CC();
        v471 = 0;
        v261 = swift_allocObject();
        *(v261 + 16) = v260;
        *(v261 + 24) = v465;
        *(v261 + 40) = v471;
        v262 = &v259[*(v462 + 36)];
        v263 = *(v262 + 3);
        v264 = *(v262 + 4);
        v265 = __swift_project_boxed_opaque_existential_1(v262, v263);
        MEMORY[0x1EEE9AC00](v265, v266);
        MEMORY[0x1EEE9AC00](v267, v268);
        v425[-4] = sub_1D615B4A4;
        v425[-3] = &v425[-6];
        v423 = sub_1D6708880;
        v424 = v258;
        v269 = v470;
        v271 = sub_1D5D2F7A4(v175, sub_1D615B49C, v270, sub_1D615B4A4, &v425[-6], v263, v264);
        if (v269)
        {
          goto LABEL_114;
        }

        v272 = v271;
        v273 = v455;
        v274 = v460;

        if (v272)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v459;
          v470 = 0;
          v77 = v274;
          v78 = v273;
          v72 = v458;
        }

        else
        {
          v470 = 0;
          v77 = v274;
          v78 = v273;
          v72 = v458;
          v73 = v459;
        }

        v257 = v445;
      }

      sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);

      v175 = v443;
      (v468)(v443, v73, v72);
      swift_storeEnumTagMultiPayload();
      v465 = xmmword_1D72BAAC0;
      v472 = xmmword_1D72BAAC0;
      v473 = 0;
      LOBYTE(v474) = 0;
      v275 = swift_allocObject();
      v277 = v275;
      *(v275 + 16) = v465;
      *(v275 + 32) = v474;
      *(v275 + 40) = v78;
      *(v275 + 48) = v77;
      if (v442)
      {

        v278 = v175;
      }

      else
      {
        *&v464 = v425;
        v474 = v64;
        MEMORY[0x1EEE9AC00](v275, v276);
        v425[-4] = sub_1D5B4AA6C;
        v425[-3] = 0;
        v423 = sub_1D6708880;
        v424 = v277;
        v471 = 0;
        v279 = swift_allocObject();
        *(v279 + 16) = v465;
        *(v279 + 32) = v471;
        *(v279 + 40) = v78;
        *(v279 + 48) = v77;
        sub_1D665B430(0);
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v280 = v469;
        v281 = sub_1D72647CC();
        v471 = 0;
        v282 = swift_allocObject();
        *(v282 + 16) = v281;
        *(v282 + 24) = v465;
        *(v282 + 40) = v471;
        v283 = &v280[*(v462 + 36)];
        v284 = *(v283 + 3);
        v285 = *(v283 + 4);
        v286 = __swift_project_boxed_opaque_existential_1(v283, v284);
        MEMORY[0x1EEE9AC00](v286, v287);
        MEMORY[0x1EEE9AC00](v288, v289);
        v425[-4] = sub_1D615B4A4;
        v425[-3] = &v425[-6];
        v423 = sub_1D6708880;
        v424 = v279;
        v290 = v470;
        v292 = sub_1D5D2F7A4(v175, sub_1D615B49C, v291, sub_1D615B4A4, &v425[-6], v284, v285);
        if (v290)
        {
          goto LABEL_114;
        }

        v293 = v292;
        v294 = v455;
        v295 = v460;

        if (v293)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v459;
          v470 = 0;
          v77 = v295;
          v78 = v294;
          v72 = v458;
        }

        else
        {
          v470 = 0;
          v77 = v295;
          v78 = v294;
          v72 = v458;
          v73 = v459;
        }

        v278 = v443;
      }

      sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);

      v175 = v441;
      (v468)(v441, v73, v72);
      swift_storeEnumTagMultiPayload();
      v465 = xmmword_1D72BAAD0;
      v472 = xmmword_1D72BAAD0;
      v473 = 0;
      LOBYTE(v474) = 0;
      v296 = swift_allocObject();
      v298 = v296;
      *(v296 + 16) = v465;
      *(v296 + 32) = v474;
      *(v296 + 40) = v78;
      *(v296 + 48) = v77;
      if (v440)
      {

        v299 = v175;
      }

      else
      {
        *&v464 = v425;
        v474 = v65;
        MEMORY[0x1EEE9AC00](v296, v297);
        v425[-4] = sub_1D5B4AA6C;
        v425[-3] = 0;
        v423 = sub_1D6708880;
        v424 = v298;
        v471 = 0;
        v300 = swift_allocObject();
        *(v300 + 16) = v465;
        *(v300 + 32) = v471;
        *(v300 + 40) = v78;
        *(v300 + 48) = v77;
        sub_1D665B430(0);
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v301 = v469;
        v302 = sub_1D72647CC();
        v471 = 0;
        v303 = swift_allocObject();
        *(v303 + 16) = v302;
        *(v303 + 24) = v465;
        *(v303 + 40) = v471;
        v304 = &v301[*(v462 + 36)];
        v305 = *(v304 + 3);
        v306 = *(v304 + 4);
        v307 = __swift_project_boxed_opaque_existential_1(v304, v305);
        MEMORY[0x1EEE9AC00](v307, v308);
        MEMORY[0x1EEE9AC00](v309, v310);
        v425[-4] = sub_1D615B4A4;
        v425[-3] = &v425[-6];
        v423 = sub_1D6708880;
        v424 = v300;
        v311 = v470;
        v313 = sub_1D5D2F7A4(v175, sub_1D615B49C, v312, sub_1D615B4A4, &v425[-6], v305, v306);
        if (v311)
        {
          goto LABEL_114;
        }

        v314 = v313;
        v315 = v455;
        v316 = v460;

        if (v314)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v459;
          v470 = 0;
          v77 = v316;
          v78 = v315;
          v72 = v458;
        }

        else
        {
          v470 = 0;
          v77 = v316;
          v78 = v315;
          v72 = v458;
          v73 = v459;
        }

        v299 = v441;
      }

      sub_1D5D2CFE8(v299, type metadata accessor for FormatVersionRequirement);

      v175 = v439;
      (v468)(v439, v73, v72);
      swift_storeEnumTagMultiPayload();
      v465 = xmmword_1D72BAAE0;
      v472 = xmmword_1D72BAAE0;
      v473 = 0;
      LOBYTE(v474) = 0;
      v317 = swift_allocObject();
      v319 = v317;
      *(v317 + 16) = v465;
      *(v317 + 32) = v474;
      *(v317 + 40) = v78;
      *(v317 + 48) = v77;
      if (v438)
      {

        v320 = v470;
        v321 = v175;
      }

      else
      {
        *&v464 = v425;
        v474 = v435;
        MEMORY[0x1EEE9AC00](v317, v318);
        v425[-4] = sub_1D5B4AA6C;
        v425[-3] = 0;
        v423 = sub_1D6708880;
        v424 = v319;
        v471 = 0;
        v322 = swift_allocObject();
        *(v322 + 16) = v465;
        *(v322 + 32) = v471;
        *(v322 + 40) = v78;
        *(v322 + 48) = v77;
        sub_1D665B430(0);
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v323 = v469;
        v324 = sub_1D72647CC();
        v471 = 0;
        v325 = swift_allocObject();
        *(v325 + 16) = v324;
        *(v325 + 24) = v465;
        *(v325 + 40) = v471;
        v326 = &v323[*(v462 + 36)];
        v327 = *(v326 + 3);
        v328 = *(v326 + 4);
        v329 = __swift_project_boxed_opaque_existential_1(v326, v327);
        MEMORY[0x1EEE9AC00](v329, v330);
        MEMORY[0x1EEE9AC00](v331, v332);
        v425[-4] = sub_1D615B4A4;
        v425[-3] = &v425[-6];
        v423 = sub_1D6708880;
        v424 = v322;
        v333 = v470;
        v335 = sub_1D5D2F7A4(v175, sub_1D615B49C, v334, sub_1D615B4A4, &v425[-6], v327, v328);
        v320 = v333;
        if (v333)
        {
          goto LABEL_114;
        }

        v336 = v455;
        v337 = v460;
        v338 = v335;

        if (v338)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v459;
          v77 = v337;
          v78 = v336;
          v72 = v458;
        }

        else
        {
          v77 = v337;
          v78 = v336;
          v72 = v458;
          v73 = v459;
        }

        v321 = v439;
      }

      sub_1D5D2CFE8(v321, type metadata accessor for FormatVersionRequirement);

      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v470 = v320;
      v339 = __swift_project_value_buffer(v72, qword_1EDFFCD18);
      v175 = v437;
      (v468)(v437, v339, v72);
      swift_storeEnumTagMultiPayload();
      v465 = xmmword_1D72BAAF0;
      v472 = xmmword_1D72BAAF0;
      v473 = 0;
      LOBYTE(v474) = 0;
      v340 = swift_allocObject();
      v342 = v340;
      *(v340 + 16) = v465;
      *(v340 + 32) = v474;
      *(v340 + 40) = v78;
      *(v340 + 48) = v77;
      if (v436)
      {
      }

      else
      {
        *&v464 = v425;
        v474 = v431;
        MEMORY[0x1EEE9AC00](v340, v341);
        v425[-4] = sub_1D5B4AA6C;
        v425[-3] = 0;
        v423 = sub_1D6708880;
        v424 = v342;
        v471 = 0;
        v343 = swift_allocObject();
        *(v343 + 16) = v465;
        *(v343 + 32) = v471;
        *(v343 + 40) = v78;
        *(v343 + 48) = v77;
        sub_1D665B430(0);
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v344 = v469;
        v345 = sub_1D72647CC();
        v471 = 0;
        v346 = swift_allocObject();
        *(v346 + 16) = v345;
        *(v346 + 24) = v465;
        *(v346 + 40) = v471;
        v347 = &v344[*(v462 + 36)];
        v348 = *(v347 + 3);
        v349 = *(v347 + 4);
        v350 = __swift_project_boxed_opaque_existential_1(v347, v348);
        MEMORY[0x1EEE9AC00](v350, v351);
        MEMORY[0x1EEE9AC00](v352, v353);
        v425[-4] = sub_1D615B4A4;
        v425[-3] = &v425[-6];
        v423 = sub_1D6708880;
        v424 = v343;
        v354 = v470;
        v356 = sub_1D5D2F7A4(v175, sub_1D615B49C, v355, sub_1D615B4A4, &v425[-6], v348, v349);
        if (v354)
        {
          goto LABEL_114;
        }

        v357 = v356;
        v358 = v455;
        v359 = v460;

        if (v357)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v459;
          v470 = 0;
          v77 = v359;
          v78 = v358;
          v72 = v458;
        }

        else
        {
          v470 = 0;
          v77 = v359;
          v78 = v358;
          v72 = v458;
          v73 = v459;
        }

        v175 = v437;
      }

      sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);

      v360 = v434;
      (v468)(v434, v73, v72);
      swift_storeEnumTagMultiPayload();
      v465 = xmmword_1D7282A80;
      v472 = xmmword_1D7282A80;
      v473 = 0;
      LOBYTE(v474) = 0;
      v361 = swift_allocObject();
      v363 = v361;
      *(v361 + 16) = v465;
      *(v361 + 32) = v474;
      *(v361 + 40) = v78;
      *(v361 + 48) = v77;
      if (v432)
      {

        v175 = v433;
LABEL_111:
        v380 = v430;
        sub_1D5D2CFE8(v360, type metadata accessor for FormatVersionRequirement);

        (v468)(v175, v73, v72);
        swift_storeEnumTagMultiPayload();
        v465 = xmmword_1D72BAB00;
        v472 = xmmword_1D72BAB00;
        v473 = 0;
        LOBYTE(v474) = 0;
        v381 = swift_allocObject();
        v383 = v381;
        *(v381 + 16) = v465;
        *(v381 + 32) = v474;
        *(v381 + 40) = v78;
        *(v381 + 48) = v77;
        if (v380)
        {

          v384 = v470;
LABEL_121:
          sub_1D5D2CFE8(v433, type metadata accessor for FormatVersionRequirement);

          v403 = v428;
          (v468)(v428, v73, v72);
          swift_storeEnumTagMultiPayload();
          v468 = xmmword_1D72BAB10;
          v472 = xmmword_1D72BAB10;
          v473 = 0;
          LOBYTE(v474) = 0;
          v404 = swift_allocObject();
          v406 = v404;
          *(v404 + 16) = v468;
          *(v404 + 32) = v474;
          *(v404 + 40) = v78;
          *(v404 + 48) = v77;
          if (v427 == 2)
          {

            v407 = v403;
LABEL_127:
            sub_1D5D2CFE8(v407, type metadata accessor for FormatVersionRequirement);

            goto LABEL_116;
          }

          v467 = v425;
          LOBYTE(v474) = v427 & 1;
          MEMORY[0x1EEE9AC00](v404, v405);
          v470 = v384;
          v425[-4] = sub_1D5B4AA6C;
          v425[-3] = 0;
          v423 = sub_1D6708880;
          v424 = v406;
          v471 = 0;
          v408 = swift_allocObject();
          *(v408 + 16) = v468;
          *(v408 + 32) = v471;
          *(v408 + 40) = v78;
          *(v408 + 48) = v77;
          sub_1D665B430(0);
          sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
          swift_retain_n();
          v409 = v469;
          v410 = sub_1D72647CC();
          v471 = 0;
          v411 = swift_allocObject();
          *(v411 + 16) = v410;
          *(v411 + 24) = v468;
          *(v411 + 40) = v471;
          v412 = &v409[*(v462 + 36)];
          v413 = *(v412 + 3);
          v414 = *(v412 + 4);
          v415 = __swift_project_boxed_opaque_existential_1(v412, v413);
          MEMORY[0x1EEE9AC00](v415, v416);
          MEMORY[0x1EEE9AC00](v417, v418);
          v425[-4] = sub_1D615B4A4;
          v425[-3] = &v425[-6];
          v423 = sub_1D665B4C4;
          v424 = v408;
          v419 = v470;
          v421 = sub_1D5D2F7A4(v403, sub_1D615B49C, v420, sub_1D615B4A4, &v425[-6], v413, v414);
          if (!v419)
          {
            v422 = v421;

            if (v422)
            {
              sub_1D72647EC();
            }

            v407 = v428;
            goto LABEL_127;
          }

          sub_1D5D2CFE8(v403, type metadata accessor for FormatVersionRequirement);

LABEL_116:
          v127 = v469;
          return sub_1D5D2CFE8(v127, sub_1D665B39C);
        }

        *&v464 = v425;
        v474 = v426;
        MEMORY[0x1EEE9AC00](v381, v382);
        v425[-4] = sub_1D5B4AA6C;
        v425[-3] = 0;
        v423 = sub_1D6708880;
        v424 = v383;
        v471 = 0;
        v385 = swift_allocObject();
        *(v385 + 16) = v465;
        *(v385 + 32) = v471;
        *(v385 + 40) = v78;
        *(v385 + 48) = v77;
        sub_1D665B430(0);
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        v386 = v469;
        v387 = sub_1D72647CC();
        v471 = 0;
        v388 = swift_allocObject();
        *(v388 + 16) = v387;
        *(v388 + 24) = v465;
        *(v388 + 40) = v471;
        v389 = &v386[*(v462 + 36)];
        v390 = *(v389 + 3);
        v391 = *(v389 + 4);
        v392 = __swift_project_boxed_opaque_existential_1(v389, v390);
        MEMORY[0x1EEE9AC00](v392, v393);
        MEMORY[0x1EEE9AC00](v394, v395);
        v425[-4] = sub_1D615B4A4;
        v425[-3] = &v425[-6];
        v423 = sub_1D6708880;
        v424 = v385;
        v396 = v470;
        v398 = sub_1D5D2F7A4(v175, sub_1D615B49C, v397, sub_1D615B4A4, &v425[-6], v390, v391);
        v384 = v396;
        if (!v396)
        {
          v400 = v398;
          v401 = v455;
          v402 = v460;

          if (v400)
          {
            sub_1D5B578C4();
            sub_1D72647EC();
          }

          v77 = v402;
          v78 = v401;
          v72 = v458;
          v73 = v459;
          goto LABEL_121;
        }

        goto LABEL_114;
      }

      *&v464 = v425;
      v474 = v429;
      MEMORY[0x1EEE9AC00](v361, v362);
      v175 = v360;
      v425[-4] = sub_1D5B4AA6C;
      v425[-3] = 0;
      v423 = sub_1D6708880;
      v424 = v363;
      v471 = 0;
      v364 = swift_allocObject();
      *(v364 + 16) = v465;
      *(v364 + 32) = v471;
      *(v364 + 40) = v78;
      *(v364 + 48) = v77;
      sub_1D665B430(0);
      sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v365 = v469;
      v366 = sub_1D72647CC();
      v471 = 0;
      v367 = swift_allocObject();
      *(v367 + 16) = v366;
      *(v367 + 24) = v465;
      *(v367 + 40) = v471;
      v368 = &v365[*(v462 + 36)];
      v369 = *(v368 + 3);
      v370 = *(v368 + 4);
      v371 = __swift_project_boxed_opaque_existential_1(v368, v369);
      MEMORY[0x1EEE9AC00](v371, v372);
      MEMORY[0x1EEE9AC00](v373, v374);
      v425[-4] = sub_1D615B4A4;
      v425[-3] = &v425[-6];
      v423 = sub_1D6708880;
      v424 = v364;
      v375 = v470;
      v377 = sub_1D5D2F7A4(v175, sub_1D615B49C, v376, sub_1D615B4A4, &v425[-6], v369, v370);
      if (!v375)
      {
        v378 = v377;
        v379 = v460;

        if (v378)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
        }

        v470 = 0;
        v175 = v433;
        v77 = v379;
        v78 = v455;
        v72 = v458;
        v73 = v459;
        v360 = v434;
        goto LABEL_111;
      }

LABEL_114:
      sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);

      goto LABEL_115;
    }

    v142 = v109;
LABEL_34:
    sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);

LABEL_115:

    goto LABEL_116;
  }

  sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

LABEL_17:
  v126 = v469;
LABEL_18:
  v127 = v126;
  return sub_1D5D2CFE8(v127, sub_1D665B39C);
}

uint64_t FormatSupplementaryNodeRubberbandTrait.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F50F6140;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D665B650();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v26 = xmmword_1D7279980;
      sub_1D5F23FF4();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v23 = v27;
    }

    else
    {
      (*(v11 + 8))(v10, v6);
      v23 = 2;
    }

    *v12 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSupplementaryNodeRubberbandTrait.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodeRubberbandTrait, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSupplementaryNodeRubberbandTrait, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v17, v14, v18, &off_1F51F6C58);
  if (v15 == 2)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD68);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6418C5C(0, v10);
    v22 = v10;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD68);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6386220(1, v15 & 1, v6);
    v22 = v6;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatSupplementaryNodeRubberbandTraitTransform.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodeRubberbandTraitTransform, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSupplementaryNodeRubberbandTraitTransform, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v17, v14, v18, &off_1F51F6C58);
  if (v15)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD68);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64185B8(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD68);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64185B8(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatImageAdjustmentFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F50F61E0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D665B6F8();
    v28 = 0uLL;
    sub_1D726431C();
    switch(v29)
    {
      case 1:
        (*(v11 + 8))(v15, v5);
        v24 = 1;
        goto LABEL_24;
      case 2:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 2;
        break;
      case 3:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 3;
        break;
      case 4:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 4;
        break;
      case 5:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 5;
        break;
      case 6:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 6;
        break;
      case 7:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 7;
        break;
      case 8:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 8;
        break;
      case 9:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 9;
        break;
      case 10:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 10;
        break;
      case 11:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 11;
        break;
      case 12:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 12;
        break;
      case 13:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 13;
        break;
      case 14:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 14;
        break;
      case 15:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 15;
        break;
      case 16:
        sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
        v28 = xmmword_1D7279980;
        sub_1D665B74C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v24 = v29;
        break;
      default:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
LABEL_24:
        v25 = 1;
        break;
    }

    *v12 = v24;
    *(v12 + 8) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageAdjustmentFilter.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v123 = &v110 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v122 = &v110 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v121 = &v110 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v120 = &v110 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v119 = &v110 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v118 = &v110 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v117 = &v110 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v116 = &v110 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v115 = &v110 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v114 = &v110 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v113 = &v110 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v110 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v112 = &v110 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v111 = &v110 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v110 = &v110 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v110 - v56;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v61 = &v110 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *v2;
  v63 = *(v2 + 8);
  v65 = a1[3];
  v64 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v65);
  v66 = sub_1D5C30408();
  v125 = v61;
  sub_1D5D2EE70(&type metadata for FormatImageAdjustmentFilter, &type metadata for FormatCodingKeys, v67, v65, &type metadata for FormatImageAdjustmentFilter, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v64, v61, v66, &off_1F51F6BF8);
  if (v63 == 1)
  {
    switch(*&v62)
    {
      case 1:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v96 = sub_1D725BD1C();
        v97 = __swift_project_value_buffer(v96, qword_1EDFFCD18);
        v88 = v110;
        (*(*(v96 - 8) + 16))(v110, v97, v96);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v89 = 1;
        goto LABEL_40;
      case 2:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v86 = sub_1D725BD1C();
        v87 = __swift_project_value_buffer(v86, qword_1EDFFCD18);
        v88 = v111;
        (*(*(v86 - 8) + 16))(v111, v87, v86);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v89 = 2;
        goto LABEL_40;
      case 3:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v92 = sub_1D725BD1C();
        v93 = __swift_project_value_buffer(v92, qword_1EDFFCD18);
        v88 = v112;
        (*(*(v92 - 8) + 16))(v112, v93, v92);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v89 = 3;
LABEL_40:
        v70 = v125;
        sub_1D641AD70(v89, v88);
        v71 = v88;
        goto LABEL_60;
      case 4:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v80 = sub_1D725BD1C();
        v81 = __swift_project_value_buffer(v80, qword_1EDFFCD18);
        (*(*(v80 - 8) + 16))(v44, v81, v80);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 4;
        goto LABEL_56;
      case 5:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v98 = sub_1D725BD1C();
        v99 = __swift_project_value_buffer(v98, qword_1EDFFCD18);
        v44 = v113;
        (*(*(v98 - 8) + 16))(v113, v99, v98);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 5;
        goto LABEL_56;
      case 6:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v102 = sub_1D725BD1C();
        v103 = __swift_project_value_buffer(v102, qword_1EDFFCD18);
        v44 = v114;
        (*(*(v102 - 8) + 16))(v114, v103, v102);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 6;
        goto LABEL_56;
      case 7:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v94 = sub_1D725BD1C();
        v95 = __swift_project_value_buffer(v94, qword_1EDFFCD18);
        v44 = v115;
        (*(*(v94 - 8) + 16))(v115, v95, v94);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 7;
        goto LABEL_56;
      case 8:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v106 = sub_1D725BD1C();
        v107 = __swift_project_value_buffer(v106, qword_1EDFFCD18);
        v44 = v116;
        (*(*(v106 - 8) + 16))(v116, v107, v106);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 8;
        goto LABEL_56;
      case 9:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v84 = sub_1D725BD1C();
        v85 = __swift_project_value_buffer(v84, qword_1EDFFCD18);
        v44 = v117;
        (*(*(v84 - 8) + 16))(v117, v85, v84);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 9;
        goto LABEL_56;
      case 0xALL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v104 = sub_1D725BD1C();
        v105 = __swift_project_value_buffer(v104, qword_1EDFFCD18);
        v44 = v118;
        (*(*(v104 - 8) + 16))(v118, v105, v104);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 10;
        goto LABEL_56;
      case 0xBLL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v78 = sub_1D725BD1C();
        v79 = __swift_project_value_buffer(v78, qword_1EDFFCD18);
        v44 = v119;
        (*(*(v78 - 8) + 16))(v119, v79, v78);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 11;
        goto LABEL_56;
      case 0xCLL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v82 = sub_1D725BD1C();
        v83 = __swift_project_value_buffer(v82, qword_1EDFFCD18);
        v44 = v120;
        (*(*(v82 - 8) + 16))(v120, v83, v82);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 12;
        goto LABEL_56;
      case 0xDLL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v100 = sub_1D725BD1C();
        v101 = __swift_project_value_buffer(v100, qword_1EDFFCD18);
        v44 = v121;
        (*(*(v100 - 8) + 16))(v121, v101, v100);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 13;
        goto LABEL_56;
      case 0xELL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v75 = sub_1D725BD1C();
        v76 = __swift_project_value_buffer(v75, qword_1EDFFCD18);
        v44 = v122;
        (*(*(v75 - 8) + 16))(v122, v76, v75);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 14;
        goto LABEL_56;
      case 0xFLL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v90 = sub_1D725BD1C();
        v91 = __swift_project_value_buffer(v90, qword_1EDFFCD18);
        v44 = v123;
        (*(*(v90 - 8) + 16))(v123, v91, v90);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 15;
LABEL_56:
        v108 = v124;
        v70 = v125;
        sub_1D641AD70(v77, v44);
        if (v108)
        {
          goto LABEL_57;
        }

        v7 = v44;
        break;
      default:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v68 = sub_1D725BD1C();
        v69 = __swift_project_value_buffer(v68, qword_1EDFFCD18);
        (*(*(v68 - 8) + 16))(v57, v69, v68);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v70 = v125;
        sub_1D641AD70(0, v57);
        v71 = v57;
        goto LABEL_60;
    }

LABEL_59:
    v71 = v7;
    goto LABEL_60;
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v72 = sub_1D725BD1C();
  v73 = __swift_project_value_buffer(v72, qword_1EDFFCD50);
  (*(*(v72 - 8) + 16))(v7, v73, v72);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v74 = v124;
  v70 = v125;
  sub_1D638C55C(16, v7, v62);
  if (!v74)
  {
    goto LABEL_59;
  }

  v44 = v7;
LABEL_57:
  v71 = v44;
LABEL_60:
  sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v70, sub_1D5D30DC4);
}

uint64_t FormatSlotItemOrdering.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSlotItemOrdering, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSlotItemOrdering, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v17, v14, v18, &off_1F51F6BD8);
  if (v15)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE80);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641D8F4(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641D8F4(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatLayeredMediaNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaNodeBinding, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatLayeredMediaNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenC, v17, v14, v18, &off_1F51F6BB8);
  if (v15)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD98);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638B52C(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EF0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCDB0);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638B3A0(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatTextNodeNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_1D665B92C(0);
  v6 = v5;
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665B9C0(0);
  sub_1D5B58B84(&qword_1EDF0C550, sub_1D665B9C0, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v48;
  if (v13)
  {
    v15 = v10;
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v21 = v14;
      v23 = *(v18 - 2);
      v22 = *(v18 - 1);

      v24 = v15;
      v25 = sub_1D6627E68(0x7265626D756ELL, 0xE600000000000000, 0x74616D726F66, 0xE600000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v22;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v21 + 8))(v9, v24);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D665BB40();
  v40 = 0uLL;
  LOBYTE(v41) = 0;
  v19 = v10;
  sub_1D726431C();
  v20 = v38;
  v35 = BYTE8(v38);
  v38 = xmmword_1D728CF30;
  v39 = 0;
  sub_1D619B194();
  sub_1D726427C();
  (*(v14 + 8))(v9, v19);
  *&v37[39] = v42;
  *&v37[23] = v41;
  *&v37[7] = v40;
  v37[119] = v47;
  *&v37[103] = v46;
  *&v37[87] = v45;
  *&v37[71] = v44;
  *&v37[55] = v43;
  *v11 = v20;
  *(v11 + 8) = v35;
  v28 = *v37;
  v29 = *&v37[16];
  v30 = *&v37[32];
  *(v11 + 57) = *&v37[48];
  *(v11 + 41) = v30;
  *(v11 + 25) = v29;
  *(v11 + 9) = v28;
  v31 = *&v37[64];
  v32 = *&v37[80];
  v33 = *&v37[96];
  *(v11 + 121) = *&v37[112];
  *(v11 + 105) = v33;
  *(v11 + 89) = v32;
  *(v11 + 73) = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTextNodeNumber.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v88 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v79 - v8;
  sub_1D665BB94(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  LODWORD(v93) = *(v1 + 8);
  v87 = v1[2];
  v16 = *(v1 + 9);
  v17 = *(v1 + 13);
  v112 = *(v1 + 11);
  v113[0] = v17;
  *(v113 + 9) = *(v1 + 113);
  v18 = *(v1 + 5);
  v108 = *(v1 + 3);
  v109 = v18;
  v110 = *(v1 + 7);
  v111 = v16;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D665B9C0(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF0C550, sub_1D665B9C0, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeNumber, v22, v24, v19, &type metadata for FormatTextNodeNumber, v22, &type metadata for FormatVersions.JazzkonG, v20, v14, v23, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v84 = v26;
  v85 = v25;
  v82 = v27 + 16;
  v83 = v28;
  (v28)(v9);
  v81 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v106 = v15;
  v107 = v93;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v29 = &v14[*(v11 + 44)];
  v31 = *v29;
  v30 = *(v29 + 1);
  v92 = v9;
  LOBYTE(v95) = 0;
  v32 = swift_allocObject();
  *&v93 = &v79;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v95;
  *(v32 + 40) = v31;
  *(v32 + 48) = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v79 - 4) = sub_1D5B4AA6C;
  *(&v79 - 3) = 0;
  v77 = sub_1D6708884;
  v78 = v34;
  LOBYTE(v95) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v95;
  v86 = v31;
  *(v35 + 40) = v31;
  *(v35 + 48) = v30;
  sub_1D665BC28(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF03388, sub_1D665BC28, MEMORY[0x1E69E6F60]);
  v91 = v30;
  swift_retain_n();
  v89 = v38;
  v90 = v37;
  v39 = sub_1D72647CC();
  LOBYTE(v95) = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v95;
  v41 = v14;
  v42 = &v14[*(v11 + 36)];
  v43 = *(v42 + 3);
  v44 = *(v42 + 4);
  v45 = __swift_project_boxed_opaque_existential_1(v42, v43);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v79 - 4) = sub_1D615B4A4;
  *(&v79 - 3) = (&v79 - 6);
  v77 = sub_1D6708884;
  v78 = v35;
  v49 = v92;
  v50 = v114;
  sub_1D5D2BC70(v92, sub_1D615B49C, v51, sub_1D615B4A4, (&v79 - 6), v43, v44);
  if (v50)
  {
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v41, sub_1D665BB94);
  }

  v80 = v42;
  v52 = v91;

  sub_1D665BCBC();
  v53 = v41;
  sub_1D72647EC();
  v114 = 0;
  sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

  v55 = v88;
  v83(v88, v84, v85);
  swift_storeEnumTagMultiPayload();
  v93 = xmmword_1D728CF30;
  v101[2] = xmmword_1D728CF30;
  v102 = 0;
  LOBYTE(v95) = 0;
  v56 = swift_allocObject();
  v58 = v56;
  *(v56 + 16) = v93;
  *(v56 + 32) = v95;
  v60 = v86;
  v59 = v87;
  *(v56 + 40) = v86;
  *(v56 + 48) = v52;
  v61 = v52;
  if ((v59 & 0xFF00) == 0x800)
  {
  }

  else
  {
    v85 = &v79;
    v99 = v111;
    v100 = v112;
    v101[0] = v113[0];
    *(v101 + 9) = *(v113 + 9);
    v96 = v108;
    v97 = v109;
    v98 = v110;
    v95 = v59;
    v62 = v60;
    MEMORY[0x1EEE9AC00](v56, v57);
    *(&v79 - 4) = sub_1D5B4AA6C;
    *(&v79 - 3) = 0;
    v77 = sub_1D6708884;
    v78 = v58;
    v94 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v93;
    *(v63 + 32) = v94;
    *(v63 + 40) = v62;
    *(v63 + 48) = v61;
    swift_retain_n();
    v92 = v41;
    v64 = sub_1D72647CC();
    v94 = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *(v65 + 24) = v93;
    *(v65 + 40) = v94;
    v66 = *(v80 + 3);
    v67 = *(v80 + 4);
    v68 = __swift_project_boxed_opaque_existential_1(v80, v66);
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v79 - 4) = sub_1D615B4A4;
    *(&v79 - 3) = (&v79 - 6);
    v55 = v88;
    v77 = sub_1D665BD10;
    v78 = v63;
    v72 = v114;
    v74 = sub_1D5D2F7A4(v88, sub_1D615B49C, v73, sub_1D615B4A4, (&v79 - 6), v66, v67);
    v114 = v72;
    if (v72)
    {
      sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

      v53 = v92;
      return sub_1D5D2CFE8(v53, sub_1D665BB94);
    }

    v75 = v74;

    if (v75)
    {
      sub_1D619B1E8();
      v53 = v92;
      v76 = v114;
      sub_1D72647EC();
      v114 = v76;
    }

    else
    {
      v53 = v92;
    }
  }

  sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v53, sub_1D665BB94);
}

uint64_t FormatSlotItemTagFilterCondition.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v33;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F50F78A0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D665BD8C();
    v32 = 0uLL;
    sub_1D726431C();
    if (v31 <= 2u)
    {
      v24 = v12;
      if (v31)
      {
        if (v31 == 1)
        {
          v25 = 0xC000000000000008;
          (*(v11 + 8))(v15, v5);
        }

        else
        {
          (*(v11 + 8))(v15, v5);
          v25 = 0xC000000000000010;
        }
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0xC000000000000000;
      }
    }

    else
    {
      v24 = v12;
      if (v31 > 4u)
      {
        if (v31 == 5)
        {
          v31 = xmmword_1D7279980;
          sub_1D665BDE0();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v26 = v32;
          v27 = swift_allocObject();
          *(v27 + 16) = v26;
          v25 = v27 | 0x4000000000000000;
        }

        else
        {
          v32 = xmmword_1D7279980;
          sub_1D61559DC();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v29 = v31;
          v30 = swift_allocObject();
          *(v30 + 16) = v29;
          v25 = v30 | 0x8000000000000000;
        }
      }

      else if (v31 == 3)
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0xC000000000000018;
      }

      else
      {
        v31 = xmmword_1D7279980;
        sub_1D665BE34();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v28 = v32;
        v25 = swift_allocObject();
        *(v25 + 16) = v28;
      }
    }

    *v24 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemTagFilterCondition.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v63 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v65 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v64 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v63 = &v63 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v63 - v27;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v2;
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v36 = sub_1D5C30408();
  v67 = v32;
  sub_1D5D2EE70(&type metadata for FormatSlotItemTagFilterCondition, &type metadata for FormatCodingKeys, v37, v34, &type metadata for FormatSlotItemTagFilterCondition, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v35, v32, v36, &off_1F51F6B98);
  v38 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    if (v38)
    {
      v40 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5F33D5C(v40);
      sub_1D5F33D5C(v39);
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCE98);
      (*(*(v48 - 8) + 16))(v11, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v43 = v67;
      v50 = v66;
      sub_1D6387D18(5, v40, v39, v11);
      if (v50)
      {
        sub_1D5F33D8C(v40);
        v15 = v11;
        goto LABEL_16;
      }
    }

    else
    {
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      sub_1D5F33D5C(v40);
      sub_1D5F33D5C(v39);
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCE98);
      (*(*(v41 - 8) + 16))(v15, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v43 = v67;
      v44 = v66;
      sub_1D6387B84(4, v40, v39, v15);
      if (v44)
      {
        sub_1D5F33D8C(v40);
LABEL_16:
        sub_1D5F33D8C(v39);
        v51 = v15;
        goto LABEL_36;
      }

      v11 = v15;
    }

    sub_1D5F33D8C(v40);
    v7 = v11;
    goto LABEL_28;
  }

  if (v38 == 2)
  {
    v39 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D5F33D5C(v39);
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v45 = sub_1D725BD1C();
    v46 = __swift_project_value_buffer(v45, qword_1EDFFCE98);
    (*(*(v45 - 8) + 16))(v7, v46, v45);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v43 = v67;
    v47 = v66;
    sub_1D6387EAC(6, v39, v7);
    if (v47)
    {
      v15 = v7;
      goto LABEL_16;
    }

LABEL_28:
    sub_1D5F33D8C(v39);
    v51 = v7;
    goto LABEL_36;
  }

  v52 = __ROR8__(v33 + 0x4000000000000000, 3);
  if (v52 > 1)
  {
    if (v52 == 2)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v56 = sub_1D725BD1C();
      v57 = __swift_project_value_buffer(v56, qword_1EDFFCE98);
      v28 = v64;
      (*(*(v56 - 8) + 16))(v64, v57, v56);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v55 = 2;
    }

    else
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCE98);
      v28 = v65;
      (*(*(v60 - 8) + 16))(v65, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v55 = 3;
    }
  }

  else if (v52)
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v58 = sub_1D725BD1C();
    v59 = __swift_project_value_buffer(v58, qword_1EDFFCE98);
    v28 = v63;
    (*(*(v58 - 8) + 16))(v63, v59, v58);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v55 = 1;
  }

  else
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v53 = sub_1D725BD1C();
    v54 = __swift_project_value_buffer(v53, qword_1EDFFCE98);
    (*(*(v53 - 8) + 16))(v28, v54, v53);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v55 = 0;
  }

  v43 = v67;
  sub_1D6419840(v55, v28);
  v51 = v28;
LABEL_36:
  sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v43, sub_1D5D30DC4);
}

uint64_t FormatAdMetricsNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v272 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v279 = &v272 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v278 = &v272 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v280 = &v272 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v281 = &v272 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v282 = &v272 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v283 = &v272 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v284 = &v272 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v286 = &v272 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v293 = (&v272 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v272 - v38;
  sub_1D665BEC8(0);
  v295 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v272 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D5CC307C(0);
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF25528, sub_1D5CC307C, &unk_1D7321584);
  sub_1D5D2EE70(v4, v47, v49, v44, v4, v47, &type metadata for FormatVersions.Azden, v45, v43, v48, &off_1F51F6B78);
  swift_beginAccess();
  v51 = v2[2];
  v50 = v2[3];
  v285 = v2;
  v52 = qword_1EDF31F10;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCDF8);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v57 = v55 + 16;
  v292 = v53;
  v56(v39, v54, v53);
  v58 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v59 = sub_1D725895C();
  v60 = (*(*(v59 - 8) + 48))(v8, 1, v59);
  v288 = v56;
  v289 = v57;
  v291 = v58;
  v287 = v54;
  if (v60 != 1)
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v82 = v293;
    v83 = v295;
    goto LABEL_13;
  }

  v290 = v51;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v61 = v295;
  v62 = &v43[*(v295 + 11)];
  v64 = *v62;
  v63 = *(v62 + 1);
  LOBYTE(v297) = 0;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 24) = 0;
  *(v65 + 32) = v297;
  *(v65 + 40) = v64;
  *(v65 + 48) = v63;
  sub_1D665BF5C(0);
  v67 = v66;
  sub_1D5B58B84(&qword_1EDF03568, sub_1D665BF5C, MEMORY[0x1E69E6F60]);

  *&v294 = v67;
  v68 = sub_1D72647CC();
  LOBYTE(v297) = 0;
  v69 = v43;
  v70 = swift_allocObject();
  *(v70 + 24) = 0;
  *(v70 + 32) = 0;
  *(v70 + 16) = v68;
  *(v70 + 40) = v297;
  v71 = &v69[*(v61 + 9)];
  v72 = *(v71 + 3);
  v73 = *(v71 + 4);
  v74 = __swift_project_boxed_opaque_existential_1(v71, v72);
  MEMORY[0x1EEE9AC00](v74, v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  *(&v272 - 4) = sub_1D5B4AA6C;
  *(&v272 - 3) = 0;
  v270 = sub_1D665BFF0;
  v271 = v65;
  v78 = v296;
  v80 = sub_1D5D2F7A4(v39, sub_1D615B49C, v79, sub_1D615B4A4, (&v272 - 6), v72, v73);
  *&v296 = v78;
  if (!v78)
  {
    v84 = v80;

    if (v84)
    {
      v297 = 0uLL;
      LOBYTE(v298) = 0;
      v309 = v290;
      v310 = v50;
      v43 = v69;
      v85 = v296;
      sub_1D72647EC();

      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
      *&v296 = v85;
      v82 = v293;
      v83 = v295;
      if (v85)
      {
LABEL_9:
        v81 = v43;
        return sub_1D5D2CFE8(v81, sub_1D665BEC8);
      }

      v56 = v288;
    }

    else
    {
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

      v43 = v69;
      v56 = v288;
      v82 = v293;
      v83 = v295;
    }

    v54 = v287;
LABEL_13:
    v56(v82, v54, v292);
    swift_storeEnumTagMultiPayload();
    v294 = xmmword_1D728CF30;
    v297 = xmmword_1D728CF30;
    LOBYTE(v298) = 0;
    v86 = &v43[*(v83 + 11)];
    v87 = *v86;
    v88 = *(v86 + 1);
    LOBYTE(v309) = 0;
    v89 = swift_allocObject();
    v290 = &v272;
    *(v89 + 16) = v294;
    *(v89 + 32) = v309;
    *(v89 + 40) = v87;
    *(v89 + 48) = v88;
    MEMORY[0x1EEE9AC00](v89, v90);
    *(&v272 - 4) = sub_1D5B4AA6C;
    *(&v272 - 3) = 0;
    v270 = sub_1D6708888;
    v271 = v91;
    LOBYTE(v309) = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v294;
    *(v92 + 32) = v309;
    v275 = v87;
    *(v92 + 40) = v87;
    *(v92 + 48) = v88;
    sub_1D665BF5C(0);
    v94 = v93;
    v95 = sub_1D5B58B84(&qword_1EDF03568, sub_1D665BF5C, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v277 = v94;
    v276 = v95;
    v96 = sub_1D72647CC();
    LOBYTE(v309) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v96;
    *(v97 + 24) = v294;
    *(v97 + 40) = v309;
    v98 = *(v295 + 9);
    v295 = v43;
    v99 = &v43[v98];
    v100 = *(v99 + 3);
    v101 = *(v99 + 4);
    v102 = __swift_project_boxed_opaque_existential_1(v99, v100);
    MEMORY[0x1EEE9AC00](v102, v103);
    MEMORY[0x1EEE9AC00](v104, v105);
    *(&v272 - 4) = sub_1D615B4A4;
    *(&v272 - 3) = (&v272 - 6);
    v270 = sub_1D6708888;
    v271 = v92;
    v106 = v296;
    sub_1D5D2BC70(v82, sub_1D615B49C, v107, sub_1D615B4A4, (&v272 - 6), v100, v101);
    if (v106)
    {
      v108 = v295;
      sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);

LABEL_16:
      v81 = v108;
      return sub_1D5D2CFE8(v81, sub_1D665BEC8);
    }

    v273 = v99;
    v274 = v88;

    sub_1D665C080();
    sub_1D72647EC();
    sub_1D5D2CFE8(v293, type metadata accessor for FormatVersionRequirement);

    v110 = v285[4];
    v111 = v285[5];
    v112 = v286;
    v288(v286, v287, v292);
    swift_storeEnumTagMultiPayload();
    v309 = v110;
    v310 = v111;
    v294 = xmmword_1D7297410;
    v297 = xmmword_1D7297410;
    LOBYTE(v298) = 0;
    LOBYTE(v308) = 0;
    v113 = swift_allocObject();
    v293 = &v272;
    *(v113 + 16) = v294;
    *(v113 + 32) = v308;
    v114 = v275;
    v115 = v274;
    *(v113 + 40) = v275;
    *(v113 + 48) = v115;
    MEMORY[0x1EEE9AC00](v113, v116);
    *&v296 = 0;
    *(&v272 - 4) = sub_1D5B4AA6C;
    *(&v272 - 3) = 0;
    v270 = sub_1D6708888;
    v271 = v117;
    LOBYTE(v308) = 0;
    v118 = swift_allocObject();
    *(v118 + 16) = v294;
    *(v118 + 32) = v308;
    *(v118 + 40) = v114;
    *(v118 + 48) = v115;
    swift_retain_n();
    v119 = sub_1D72647CC();
    LOBYTE(v308) = 0;
    v120 = swift_allocObject();
    *(v120 + 16) = v119;
    *(v120 + 24) = v294;
    *(v120 + 40) = v308;
    v121 = *(v273 + 3);
    v122 = *(v273 + 4);
    v123 = __swift_project_boxed_opaque_existential_1(v273, v121);
    MEMORY[0x1EEE9AC00](v123, v124);
    MEMORY[0x1EEE9AC00](v125, v126);
    *(&v272 - 4) = sub_1D615B4A4;
    *(&v272 - 3) = (&v272 - 6);
    v270 = sub_1D6708888;
    v271 = v118;
    v127 = v296;
    sub_1D5D2BC70(v112, sub_1D615B49C, v128, sub_1D615B4A4, (&v272 - 6), v121, v122);
    if (v127)
    {
      v108 = v295;
      sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);

      goto LABEL_16;
    }

    sub_1D72647EC();
    sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);

    v129 = v285[6];
    v130 = v284;
    v288(v284, v287, v292);
    swift_storeEnumTagMultiPayload();
    v309 = v129;
    v296 = xmmword_1D72BAA60;
    v297 = xmmword_1D72BAA60;
    LOBYTE(v298) = 0;
    LOBYTE(v308) = 0;
    v131 = swift_allocObject();
    *&v294 = &v272;
    *(v131 + 16) = v296;
    *(v131 + 32) = v308;
    v132 = v275;
    v133 = v274;
    *(v131 + 40) = v275;
    *(v131 + 48) = v133;
    MEMORY[0x1EEE9AC00](v131, v134);
    *(&v272 - 4) = sub_1D5B4AA6C;
    *(&v272 - 3) = 0;
    v270 = sub_1D6708888;
    v271 = v135;
    LOBYTE(v308) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = v296;
    *(v136 + 32) = v308;
    *(v136 + 40) = v132;
    *(v136 + 48) = v133;
    swift_retain_n();
    v137 = sub_1D72647CC();
    LOBYTE(v308) = 0;
    v138 = swift_allocObject();
    *(v138 + 16) = v137;
    *(v138 + 24) = v296;
    *(v138 + 40) = v308;
    v139 = *(v273 + 3);
    v140 = *(v273 + 4);
    v141 = __swift_project_boxed_opaque_existential_1(v273, v139);
    MEMORY[0x1EEE9AC00](v141, v142);
    MEMORY[0x1EEE9AC00](v143, v144);
    *(&v272 - 4) = sub_1D615B4A4;
    *(&v272 - 3) = (&v272 - 6);
    v270 = sub_1D6708888;
    v271 = v136;
    sub_1D5D2BC70(v130, sub_1D615B49C, v145, sub_1D615B4A4, (&v272 - 6), v139, v140);

    sub_1D5CA1E90();
    sub_1D72647EC();
    sub_1D5D2CFE8(v284, type metadata accessor for FormatVersionRequirement);

    v146 = v285[7];
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    *&v296 = 0;
    v147 = v292;
    v148 = __swift_project_value_buffer(v292, qword_1EDFFCD68);
    v149 = v283;
    v150 = v288;
    v288(v283, v148, v147);
    swift_storeEnumTagMultiPayload();
    v294 = xmmword_1D72BAA70;
    v297 = xmmword_1D72BAA70;
    LOBYTE(v298) = 0;
    LOBYTE(v309) = 0;
    v151 = swift_allocObject();
    v153 = v151;
    *(v151 + 16) = v294;
    *(v151 + 32) = v309;
    v154 = v275;
    v155 = v274;
    *(v151 + 40) = v275;
    *(v151 + 48) = v155;
    if (v146)
    {
      v293 = &v272;
      v309 = v146;
      MEMORY[0x1EEE9AC00](v151, v152);
      *(&v272 - 4) = sub_1D5B4AA6C;
      *(&v272 - 3) = 0;
      v270 = sub_1D6708888;
      v271 = v153;
      LOBYTE(v308) = 0;
      v156 = swift_allocObject();
      *(v156 + 16) = v294;
      *(v156 + 32) = v308;
      *(v156 + 40) = v154;
      *(v156 + 48) = v155;
      swift_retain_n();

      v157 = sub_1D72647CC();
      LOBYTE(v308) = 0;
      v158 = swift_allocObject();
      *(v158 + 16) = v157;
      *(v158 + 24) = v294;
      *(v158 + 40) = v308;
      v159 = *(v273 + 3);
      v160 = *(v273 + 4);
      v161 = __swift_project_boxed_opaque_existential_1(v273, v159);
      MEMORY[0x1EEE9AC00](v161, v162);
      MEMORY[0x1EEE9AC00](v163, v164);
      *(&v272 - 4) = sub_1D615B4A4;
      *(&v272 - 3) = (&v272 - 6);
      v270 = sub_1D6708888;
      v271 = v156;
      v165 = v296;
      sub_1D5D2F7A4(v149, sub_1D615B49C, v166, sub_1D615B4A4, (&v272 - 6), v159, v160);
      if (v165)
      {

LABEL_25:
        v167 = v149;
LABEL_26:
        sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
LABEL_27:
        v81 = v295;
        return sub_1D5D2CFE8(v81, sub_1D665BEC8);
      }

      sub_1D6659D24();
      sub_1D72647EC();
      *&v296 = 0;

      v150 = v288;
      v155 = v274;
    }

    else
    {
    }

    v168 = v273;
    v169 = v285;
    sub_1D5D2CFE8(v149, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v170 = v169[8];
    v149 = v282;
    v150(v282, v287, v292);
    swift_storeEnumTagMultiPayload();
    v171 = v275;
    if (*(v170 + 16))
    {
      LOBYTE(v297) = 0;
      v172 = swift_allocObject();
      v294 = xmmword_1D72BAA80;
      *(v172 + 16) = xmmword_1D72BAA80;
      *(v172 + 32) = v297;
      *(v172 + 40) = v171;
      *(v172 + 48) = v155;

      v43 = v295;
      v173 = sub_1D72647CC();
      LOBYTE(v297) = 0;
      v174 = swift_allocObject();
      *(v174 + 16) = v173;
      *(v174 + 24) = v294;
      *(v174 + 40) = v297;
      v175 = *(v168 + 3);
      v176 = *(v168 + 4);
      v177 = __swift_project_boxed_opaque_existential_1(v168, v175);
      MEMORY[0x1EEE9AC00](v177, v178);
      MEMORY[0x1EEE9AC00](v179, v180);
      *(&v272 - 4) = sub_1D5B4AA6C;
      *(&v272 - 3) = 0;
      v270 = sub_1D6708888;
      v271 = v172;
      v181 = v296;
      v183 = sub_1D5D2F7A4(v149, sub_1D615B49C, v182, sub_1D615B4A4, (&v272 - 6), v175, v176);
      *&v296 = v181;
      if (v181)
      {
        sub_1D5D2CFE8(v149, type metadata accessor for FormatVersionRequirement);

LABEL_43:

        goto LABEL_9;
      }

      v184 = v183;

      if (v184)
      {
        v297 = v294;
        LOBYTE(v298) = 0;
        v308 = v170;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        v185 = v296;
        sub_1D72647EC();
        if (v185)
        {

          goto LABEL_25;
        }

        *&v296 = 0;

        sub_1D5D2CFE8(v149, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v149, type metadata accessor for FormatVersionRequirement);
      }

      v169 = v285;
      v150 = v288;
      v155 = v274;
      v171 = v275;
      v168 = v273;
    }

    else
    {
      sub_1D5D2CFE8(v149, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v186 = v169[9];
    v187 = v281;
    v150(v281, v287, v292);
    swift_storeEnumTagMultiPayload();
    if (v186)
    {
      LOBYTE(v297) = 0;
      v188 = swift_allocObject();
      v294 = xmmword_1D72BAA90;
      *(v188 + 16) = xmmword_1D72BAA90;
      *(v188 + 32) = v297;
      *(v188 + 40) = v171;
      *(v188 + 48) = v155;

      v43 = v295;
      v189 = sub_1D72647CC();
      LOBYTE(v297) = 0;
      v190 = swift_allocObject();
      *(v190 + 16) = v189;
      *(v190 + 24) = v294;
      *(v190 + 40) = v297;
      v191 = *(v168 + 3);
      v192 = *(v168 + 4);
      v193 = __swift_project_boxed_opaque_existential_1(v168, v191);
      MEMORY[0x1EEE9AC00](v193, v194);
      MEMORY[0x1EEE9AC00](v195, v196);
      *(&v272 - 4) = sub_1D5B4AA6C;
      *(&v272 - 3) = 0;
      v270 = sub_1D6708888;
      v271 = v188;
      v197 = v296;
      v199 = sub_1D5D2F7A4(v187, sub_1D615B49C, v198, sub_1D615B4A4, (&v272 - 6), v191, v192);
      *&v296 = v197;
      if (v197)
      {
        sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);

        goto LABEL_43;
      }

      v200 = v199;

      if (v200)
      {
        v297 = v294;
        LOBYTE(v298) = 0;
        v307 = v186;
        v201 = v296;
        sub_1D72647EC();
        if (v201)
        {
          v202 = &v307;
LABEL_56:
          v167 = *(v202 - 32);
          goto LABEL_26;
        }

        sub_1D5D2CFE8(v281, type metadata accessor for FormatVersionRequirement);
        *&v296 = 0;
        v169 = v285;
        v150 = v288;
        v155 = v274;
        v168 = v273;
      }

      else
      {
        sub_1D5D2CFE8(v281, type metadata accessor for FormatVersionRequirement);
        v169 = v285;
        v150 = v288;
        v155 = v274;
      }
    }

    else
    {
      sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v203 = v169[10];
    sub_1D5EB1500(v203);
    v204 = v280;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v205 = v292;
    v206 = __swift_project_value_buffer(v292, qword_1EDFFCD50);
    v150(v204, v206, v205);
    swift_storeEnumTagMultiPayload();
    if (v203 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v297) = 0;
      v207 = swift_allocObject();
      v294 = xmmword_1D72BAAA0;
      *(v207 + 16) = xmmword_1D72BAAA0;
      *(v207 + 32) = v297;
      *(v207 + 40) = v275;
      *(v207 + 48) = v155;

      v208 = sub_1D72647CC();
      LOBYTE(v297) = 0;
      v209 = swift_allocObject();
      *(v209 + 16) = v208;
      *(v209 + 24) = v294;
      *(v209 + 40) = v297;
      v210 = v204;
      v211 = *(v168 + 3);
      v212 = *(v168 + 4);
      v213 = __swift_project_boxed_opaque_existential_1(v168, v211);
      MEMORY[0x1EEE9AC00](v213, v214);
      MEMORY[0x1EEE9AC00](v215, v216);
      *(&v272 - 4) = sub_1D5B4AA6C;
      *(&v272 - 3) = 0;
      v270 = sub_1D6708888;
      v271 = v207;
      v217 = v296;
      v219 = sub_1D5D2F7A4(v210, sub_1D615B49C, v218, sub_1D615B4A4, (&v272 - 6), v211, v212);
      if (v217)
      {

        sub_1D5EB15C4(v203);
        v202 = &v306;
        goto LABEL_56;
      }

      v220 = v219;

      if (v220)
      {
        v297 = v294;
        LOBYTE(v298) = 0;
        v304 = v203;
        sub_1D5DF6A60();
        sub_1D72647EC();
        v221 = v304;
      }

      else
      {
        v221 = v203;
      }

      sub_1D5EB15C4(v221);
      sub_1D5D2CFE8(v280, type metadata accessor for FormatVersionRequirement);
      *&v296 = 0;
      v169 = v285;
      v150 = v288;
      v168 = v273;
    }

    swift_beginAccess();
    v222 = *(v169 + 88);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v223 = v292;
    v224 = __swift_project_value_buffer(v292, qword_1EDFFCD00);
    v225 = v278;
    v150(v278, v224, v223);
    swift_storeEnumTagMultiPayload();
    if (v222)
    {
      sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v297) = 0;
      v226 = swift_allocObject();
      v294 = xmmword_1D72BAAB0;
      *(v226 + 16) = xmmword_1D72BAAB0;
      *(v226 + 32) = v297;
      *(v226 + 40) = v275;
      *(v226 + 48) = v274;

      v227 = sub_1D72647CC();
      LOBYTE(v297) = 0;
      v228 = swift_allocObject();
      *(v228 + 16) = v227;
      *(v228 + 24) = v294;
      *(v228 + 40) = v297;
      v229 = *(v168 + 3);
      v230 = *(v168 + 4);
      v231 = __swift_project_boxed_opaque_existential_1(v168, v229);
      MEMORY[0x1EEE9AC00](v231, v232);
      MEMORY[0x1EEE9AC00](v233, v234);
      *(&v272 - 4) = sub_1D5B4AA6C;
      *(&v272 - 3) = 0;
      v270 = sub_1D6708888;
      v271 = v226;
      v235 = v296;
      v237 = sub_1D5D2F7A4(v225, sub_1D615B49C, v236, sub_1D615B4A4, (&v272 - 6), v229, v230);
      if (v235)
      {
        sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);

        goto LABEL_27;
      }

      v238 = v237;
      *&v296 = 0;

      if (v238)
      {
        v297 = v294;
        LOBYTE(v298) = 0;
        LOBYTE(v302) = 0;
        v239 = v296;
        sub_1D72647EC();
        *&v296 = v239;
        if (v239)
        {
          v240 = &v304;
          goto LABEL_81;
        }
      }

      sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);
      v169 = v285;
    }

    v241 = v169[12];
    v242 = v169[13];
    v243 = v169[14];
    v244 = v169[15];
    v245 = v169[16];
    v293 = v169[17];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v246 = v292;
    v247 = __swift_project_value_buffer(v292, qword_1EDFFCE38);
    v288(v279, v247, v246);
    swift_storeEnumTagMultiPayload();
    v294 = xmmword_1D72BAAC0;
    v302 = xmmword_1D72BAAC0;
    v303 = 0;
    LOBYTE(v297) = 0;
    v248 = swift_allocObject();
    v250 = v248;
    *(v248 + 16) = v294;
    *(v248 + 32) = v297;
    v251 = v275;
    v252 = v274;
    *(v248 + 40) = v275;
    *(v248 + 48) = v252;
    if (!v241)
    {

      sub_1D5D2CFE8(v279, type metadata accessor for FormatVersionRequirement);

LABEL_82:
      v81 = v295;
      return sub_1D5D2CFE8(v81, sub_1D665BEC8);
    }

    v292 = &v272;
    *&v297 = v241;
    *(&v297 + 1) = v242;
    v298 = v243;
    v299 = v244;
    v253 = v245;
    v300 = v245;
    v301 = v293;
    MEMORY[0x1EEE9AC00](v248, v249);
    v291 = &v272 - 6;
    *(&v272 - 4) = sub_1D5B4AA6C;
    *(&v272 - 3) = 0;
    v270 = sub_1D6708888;
    v271 = v250;
    v311 = 0;
    v254 = swift_allocObject();
    *(v254 + 16) = v294;
    *(v254 + 32) = v311;
    *(v254 + 40) = v251;
    *(v254 + 48) = v252;
    swift_retain_n();
    sub_1D5EB1D80(v241, v242, v243, v244, v253, v293);
    v255 = sub_1D72647CC();
    v311 = 0;
    v256 = swift_allocObject();
    *(v256 + 16) = v255;
    *(v256 + 24) = v294;
    *(v256 + 40) = v311;
    v257 = *(v273 + 3);
    v258 = *(v273 + 4);
    v259 = __swift_project_boxed_opaque_existential_1(v273, v257);
    MEMORY[0x1EEE9AC00](v259, v260);
    MEMORY[0x1EEE9AC00](v261, v262);
    v263 = v291;
    *(&v272 - 4) = sub_1D615B4A4;
    *(&v272 - 3) = v263;
    v270 = sub_1D6708888;
    v271 = v254;
    v264 = v296;
    v266 = sub_1D5D2F7A4(v279, sub_1D615B49C, v265, sub_1D615B4A4, (&v272 - 6), v257, v258);
    *&v296 = v264;
    if (v264)
    {
    }

    else
    {
      v267 = v266;

      if (v267)
      {
        sub_1D6659A24();
        v268 = v296;
        sub_1D72647EC();
        *&v296 = v268;
      }
    }

    v269 = v300;

    sub_1D5CBF568(v269);

    v240 = &v305;
LABEL_81:
    sub_1D5D2CFE8(*(v240 - 32), type metadata accessor for FormatVersionRequirement);
    goto LABEL_82;
  }

  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

  v81 = v69;
  return sub_1D5D2CFE8(v81, sub_1D665BEC8);
}

uint64_t FormatPoint.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v71 - v8;
  sub_1D665C184(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v15 = v1[1];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C8DA18(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24CD8, sub_1D5C8DA18, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatPoint, v20, v22, v17, &type metadata for FormatPoint, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v78 = v24;
  v79 = v23;
  v74 = v25 + 16;
  v75 = v26;
  (v26)(v9);
  v73 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v16;
  v86 = 0uLL;
  v87 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v85 = 0;
  v30 = swift_allocObject();
  v82 = v71;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v85;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v84 = v9;
  v71[-4] = sub_1D5B4AA6C;
  v71[-3] = 0;
  v69 = sub_1D670888C;
  v70 = v32;
  v85 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v85;
  v76 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D665C218(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF02BB8, sub_1D665C218, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v80 = v36;
  v81 = v35;
  v37 = sub_1D72647CC();
  v85 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v85;
  v39 = &v14[*(v11 + 36)];
  v40 = *(v39 + 3);
  v41 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v71[-4] = sub_1D615B4A4;
  v71[-3] = &v71[-6];
  v46 = v83;
  v47 = v84;
  v69 = sub_1D670888C;
  v70 = v33;
  sub_1D5D2BC70(v84, sub_1D615B49C, v48, sub_1D615B4A4, &v71[-6], v40, v41);
  if (v46)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v72 = v39;
    v50 = v78;
    v49 = v79;
    v83 = v29;

    v51 = sub_1D5B578C4();
    sub_1D72647EC();
    v71[1] = v51;
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    v53 = v77;
    v75(v77, v50, v49);
    swift_storeEnumTagMultiPayload();
    v88 = v15;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v54 = swift_allocObject();
    v82 = v71;
    *(v54 + 16) = v84;
    *(v54 + 32) = v85;
    v55 = v76;
    v56 = v83;
    *(v54 + 40) = v76;
    *(v54 + 48) = v56;
    MEMORY[0x1EEE9AC00](v54, v57);
    v71[-4] = sub_1D5B4AA6C;
    v71[-3] = 0;
    v69 = sub_1D670888C;
    v70 = v58;
    v85 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v84;
    *(v59 + 32) = v85;
    *(v59 + 40) = v55;
    *(v59 + 48) = v56;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v85 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v84;
    *(v61 + 40) = v85;
    v62 = *(v72 + 3);
    v63 = *(v72 + 4);
    v64 = __swift_project_boxed_opaque_existential_1(v72, v62);
    MEMORY[0x1EEE9AC00](v64, v65);
    MEMORY[0x1EEE9AC00](v66, v67);
    v71[-4] = sub_1D615B4A4;
    v71[-3] = &v71[-6];
    v69 = sub_1D670888C;
    v70 = v59;
    sub_1D5D2BC70(v53, sub_1D615B49C, v68, sub_1D615B4A4, &v71[-6], v62, v63);

    sub_1D72647EC();
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D665C184);
}

uint64_t FormatTextNodeAlternative.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v99 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v89 - v11;
  sub_1D665C310(0);
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v19 = v1[3];
  v92 = v1[2];
  v90 = v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5CE5ECC(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF25048, sub_1D5CE5ECC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeAlternative, v23, v25, v20, &type metadata for FormatTextNodeAlternative, v23, &type metadata for FormatVersions.JazzkonC, v21, v16, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v96 = v27;
  v97 = v26;
  v94 = v28 + 16;
  v95 = v29;
  (v29)(v12);
  v93 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v108 = v17;
  v109 = v18;
  v106 = 0uLL;
  v107 = 0;
  v30 = v104;
  v31 = &v16[*(v104 + 11)];
  v102 = v12;
  v32 = *v31;
  v33 = *(v31 + 1);
  v110 = 0;
  v34 = swift_allocObject();
  v103 = &v89;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v110;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v89 - 4) = sub_1D5B4AA6C;
  *(&v89 - 3) = 0;
  v87 = sub_1D6708890;
  v88 = v36;
  v110 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v110;
  v98 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D665C3A4(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF02FC8, sub_1D665C3A4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v100 = v40;
  v101 = v39;
  v41 = sub_1D72647CC();
  v110 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v110;
  v43 = *(v30 + 9);
  v44 = v102;
  v45 = &v16[v43];
  v104 = v16;
  v46 = *&v16[v43 + 24];
  v47 = *&v16[v43 + 32];
  v48 = __swift_project_boxed_opaque_existential_1(v45, v46);
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  *(&v89 - 4) = sub_1D615B4A4;
  *(&v89 - 3) = (&v89 - 6);
  v87 = sub_1D665C438;
  v88 = v37;
  v52 = v105;
  sub_1D5D2BC70(v44, sub_1D615B49C, v53, sub_1D615B4A4, (&v89 - 6), v46, v47);
  if (v52)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v54 = v104;
  }

  else
  {
    v89 = v45;

    v54 = v104;
    sub_1D72647EC();
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v56 = v99;
    v95(v99, v96, v97);
    swift_storeEnumTagMultiPayload();
    v108 = v92;
    v105 = xmmword_1D728CF30;
    v106 = xmmword_1D728CF30;
    v107 = 0;
    v110 = 0;
    v57 = swift_allocObject();
    v103 = &v89;
    *(v57 + 16) = v105;
    *(v57 + 32) = v110;
    v58 = v98;
    *(v57 + 40) = v98;
    *(v57 + 48) = v33;
    MEMORY[0x1EEE9AC00](v57, v59);
    v102 = 0;
    *(&v89 - 4) = sub_1D5B4AA6C;
    *(&v89 - 3) = 0;
    v87 = sub_1D6708890;
    v88 = v60;
    v110 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v105;
    *(v61 + 32) = v110;
    *(v61 + 40) = v58;
    *(v61 + 48) = v33;
    swift_retain_n();
    v62 = sub_1D72647CC();
    v110 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v105;
    *(v63 + 40) = v110;
    v64 = *(v89 + 3);
    v65 = *(v89 + 4);
    v66 = __swift_project_boxed_opaque_existential_1(v89, v64);
    MEMORY[0x1EEE9AC00](v66, v67);
    MEMORY[0x1EEE9AC00](v68, v69);
    *(&v89 - 4) = sub_1D615B4A4;
    *(&v89 - 3) = (&v89 - 6);
    v87 = sub_1D6708890;
    v88 = v61;
    v70 = v102;
    sub_1D5D2BC70(v56, sub_1D615B49C, v71, sub_1D615B4A4, (&v89 - 6), v64, v65);
    if (v70)
    {
      sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5C76E3C();
      sub_1D72647EC();
      sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

      v72 = v91;
      v95(v91, v96, v97);
      swift_storeEnumTagMultiPayload();
      v108 = v90;
      v105 = xmmword_1D7297410;
      v106 = xmmword_1D7297410;
      v107 = 0;
      v110 = 0;
      v73 = swift_allocObject();
      v103 = &v89;
      *(v73 + 16) = v105;
      *(v73 + 32) = v110;
      v74 = v98;
      *(v73 + 40) = v98;
      *(v73 + 48) = v33;
      MEMORY[0x1EEE9AC00](v73, v75);
      *(&v89 - 4) = sub_1D5B4AA6C;
      *(&v89 - 3) = 0;
      v87 = sub_1D6708890;
      v88 = v76;
      v110 = 0;
      v77 = swift_allocObject();
      *(v77 + 16) = v105;
      *(v77 + 32) = v110;
      *(v77 + 40) = v74;
      *(v77 + 48) = v33;
      swift_retain_n();
      v78 = sub_1D72647CC();
      v110 = 0;
      v79 = swift_allocObject();
      *(v79 + 16) = v78;
      *(v79 + 24) = v105;
      *(v79 + 40) = v110;
      v80 = *(v89 + 3);
      v81 = *(v89 + 4);
      v82 = __swift_project_boxed_opaque_existential_1(v89, v80);
      MEMORY[0x1EEE9AC00](v82, v83);
      MEMORY[0x1EEE9AC00](v84, v85);
      *(&v89 - 4) = sub_1D615B4A4;
      *(&v89 - 3) = (&v89 - 6);
      v87 = sub_1D6708890;
      v88 = v77;
      sub_1D5D2BC70(v72, sub_1D615B49C, v86, sub_1D615B4A4, (&v89 - 6), v80, v81);

      sub_1D665C4B4();
      sub_1D72647EC();
      sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v54, sub_1D665C310);
}

uint64_t FormatImageAdjustment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = a1[3];
    v31 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v11 = sub_1D7264AFC();
    LOBYTE(v10) = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v12 = v64;
    v13 = v6;
    v14 = v32;
    v15 = v9;
    if (v10)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F50F7B40;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v15, v13);
          a1 = v31;
          goto LABEL_9;
        }
      }
    }

    sub_1D665C508();
    v61 = 0;
    v62 = 0;
    sub_1D726431C();
    if (v63)
    {
      if (v63 == 1)
      {
        v33[0] = xmmword_1D7279980;
        sub_1D665C57C();
        sub_1D726431C();
        (*(v14 + 8))(v15, v13);
        v40 = v49;
        v41 = v50;
        v42 = v51;
        v36 = v45;
        v37 = v46;
        v38 = v47;
        v39 = v48;
        v34 = v43;
        v35 = v44;
        sub_1D6011260(&v34);
        v58 = v40;
        v59 = v41;
        v60 = v42;
        v54 = v36;
        v55 = v37;
        v56 = v38;
        v57 = v39;
        v26 = v34;
        v25 = v35;
LABEL_17:
        v52 = v26;
        v53 = v25;
        v23 = v31;
        v27 = v59;
        *(v12 + 96) = v58;
        *(v12 + 112) = v27;
        *(v12 + 128) = v60;
        v28 = v55;
        *(v12 + 32) = v54;
        *(v12 + 48) = v28;
        v29 = v57;
        *(v12 + 64) = v56;
        *(v12 + 80) = v29;
        v30 = v53;
        *v12 = v52;
        *(v12 + 16) = v30;
        return __swift_destroy_boxed_opaque_existential_1(v23);
      }

      v34 = xmmword_1D7279980;
      sub_1D5F26BDC();
      sub_1D726431C();
      (*(v14 + 8))(v15, v13);
      *&v43 = *&v33[0];
      BYTE8(v43) = BYTE8(v33[0]);
      sub_1D665C55C(&v43);
    }

    else
    {
      v33[8] = xmmword_1D7279980;
      sub_1D665C5D0();
      sub_1D726431C();
      (*(v14 + 8))(v15, v13);
      sub_1D5F78F40(&v34, v33);
      sub_1D5F78F40(v33, &v43);
      sub_1D60112A8(&v43);
    }

    v58 = v49;
    v59 = v50;
    v60 = v51;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v26 = v43;
    v25 = v44;
    goto LABEL_17;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  v23 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t FormatImageAdjustment.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v44[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v44[-v14];
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatImageAdjustment, &type metadata for FormatCodingKeys, v23, v21, &type metadata for FormatImageAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v20, v19, v22, &off_1F51F6BF8);
  v24 = *(v2 + 112);
  v47[6] = *(v2 + 96);
  v47[7] = v24;
  v48 = *(v2 + 128);
  v25 = *(v2 + 48);
  v47[2] = *(v2 + 32);
  v47[3] = v25;
  v26 = *(v2 + 80);
  v47[4] = *(v2 + 64);
  v47[5] = v26;
  v27 = *(v2 + 16);
  v47[0] = *v2;
  v47[1] = v27;
  v28 = sub_1D5F78DC4(v47);
  v29 = sub_1D5DEA32C(v47);
  if (v28)
  {
    if (v28 == 1)
    {
      v30 = *(v29 + 112);
      v45[6] = *(v29 + 96);
      v45[7] = v30;
      v46 = *(v29 + 128);
      v31 = *(v29 + 48);
      v45[2] = *(v29 + 32);
      v45[3] = v31;
      v32 = *(v29 + 80);
      v45[4] = *(v29 + 64);
      v45[5] = v32;
      v33 = *(v29 + 16);
      v45[0] = *v29;
      v45[1] = v33;
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v34 = sub_1D725BD1C();
      v35 = __swift_project_value_buffer(v34, qword_1EDFFCD18);
      (*(*(v34 - 8) + 16))(v11, v35, v34);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D639F860(1, v45, v11);
      v36 = v11;
    }

    else
    {
      v39 = *v29;
      v40 = *(v29 + 8);
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD18);
      (*(*(v41 - 8) + 16))(v7, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D639FA18(2, v39, v40, v7);
      v36 = v7;
    }
  }

  else
  {
    sub_1D5F78F40(v29, v44);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD18);
    (*(*(v37 - 8) + 16))(v15, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639F6C0(0, v44, v15);
    v36 = v15;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v19, sub_1D5D30DC4);
}

uint64_t FormatIssueCoverNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v360 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v362 = &v360 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v363 = &v360 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v364 = &v360 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v365 = &v360 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v366 = &v360 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v367 = &v360 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v368 = &v360 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v372 = &v360 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v371 = &v360 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v373 = &v360 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v374 = &v360 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v375 = &v360 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v385 = (&v360 - v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v360 - v50;
  sub_1D665D5DC(0);
  v387 = v52;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v360 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1[3];
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  sub_1D5E1C580(0);
  v59 = v58;
  v60 = sub_1D5B58B84(&qword_1EDF0C560, sub_1D5E1C580, &unk_1D7321584);
  sub_1D5D2EE70(v4, v59, v61, v56, v4, v59, &type metadata for FormatVersions.StarSky, v57, v55, v60, &off_1F51F6CD8);
  swift_beginAccess();
  v383 = v2;
  v62 = v2[2];
  v63 = v2[3];
  v64 = qword_1EDF31ED0;

  if (v64 != -1)
  {
    swift_once();
  }

  v65 = sub_1D725BD1C();
  v66 = __swift_project_value_buffer(v65, qword_1EDFFCD50);
  v67 = *(v65 - 8);
  v68 = *(v67 + 16);
  v69 = v67 + 16;
  v382 = v66;
  v384 = v65;
  v68(v51);
  v70 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v71 = sub_1D725895C();
  v72 = (*(*(v71 - 8) + 48))(v8, 1, v71);
  v378 = v68;
  v379 = v69;
  v380 = v70;
  if (v72 == 1)
  {
    *&v386 = v63;
    v376 = v62;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v73 = v387;
    v74 = &v55[*(v387 + 11)];
    v76 = *v74;
    v75 = *(v74 + 1);
    LOBYTE(v389) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = 0;
    *(v77 + 32) = v389;
    *(v77 + 40) = v76;
    *(v77 + 48) = v75;
    sub_1D5E1C544(0);
    v79 = v78;
    v80 = sub_1D5B58B84(&qword_1EDF033E8, sub_1D5E1C544, MEMORY[0x1E69E6F60]);

    v377 = v79;
    v81 = sub_1D72647CC();
    LOBYTE(v389) = 0;
    v82 = swift_allocObject();
    *(v82 + 24) = 0;
    *(v82 + 32) = 0;
    *(v82 + 16) = v81;
    *(v82 + 40) = v389;
    v83 = &v55[*(v73 + 9)];
    v84 = *(v83 + 3);
    v85 = *(v83 + 4);
    v86 = __swift_project_boxed_opaque_existential_1(v83, v84);
    MEMORY[0x1EEE9AC00](v86, v87);
    MEMORY[0x1EEE9AC00](v88, v89);
    *(&v360 - 4) = sub_1D5B4AA6C;
    *(&v360 - 3) = 0;
    v358 = sub_1D665D670;
    v359 = v77;
    v90 = v388;
    v92 = sub_1D5D2F7A4(v51, sub_1D615B49C, v91, sub_1D615B4A4, (&v360 - 6), v84, v85);
    *&v388 = v90;
    if (v90)
    {
      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

LABEL_6:
      v93 = v55;
      return sub_1D5D2CFE8(v93, sub_1D665D5DC);
    }

    v121 = v92;
    v370 = v80;

    if (v121)
    {
      v389 = 0uLL;
      LOBYTE(v390) = 0;
      v401 = v376;
      v402 = v386;
      v122 = v388;
      sub_1D72647EC();

      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
      *&v388 = v122;
      v95 = v385;
      if (v122)
      {
        goto LABEL_6;
      }

      v68 = v378;
    }

    else
    {
      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

      v68 = v378;
      v95 = v385;
    }
  }

  else
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v95 = v385;
    v73 = v387;
  }

  v96 = v383[4];
  (v68)(v95, v382, v384);
  swift_storeEnumTagMultiPayload();
  v401 = v96;
  v386 = xmmword_1D728CF30;
  v389 = xmmword_1D728CF30;
  LOBYTE(v390) = 0;
  v97 = &v55[*(v73 + 11)];
  v98 = *v97;
  v99 = *(v97 + 1);
  LOBYTE(v400) = 0;
  v100 = swift_allocObject();
  v377 = &v360;
  *(v100 + 16) = v386;
  *(v100 + 32) = v400;
  *(v100 + 40) = v98;
  *(v100 + 48) = v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v376 = &v360 - 6;
  *(&v360 - 4) = sub_1D5B4AA6C;
  *(&v360 - 3) = 0;
  v358 = sub_1D6708894;
  v359 = v102;
  LOBYTE(v400) = 0;
  v103 = v95;
  v104 = swift_allocObject();
  *(v104 + 16) = v386;
  *(v104 + 32) = v400;
  v361 = v98;
  *(v104 + 40) = v98;
  *(v104 + 48) = v99;
  sub_1D5E1C544(0);
  v106 = v105;
  v107 = sub_1D5B58B84(&qword_1EDF033E8, sub_1D5E1C544, MEMORY[0x1E69E6F60]);
  v360 = v99;
  swift_retain_n();
  v370 = v106;
  v369 = v107;
  v108 = sub_1D72647CC();
  LOBYTE(v400) = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v386;
  *(v109 + 40) = v400;
  v110 = *(v387 + 9);
  v381 = v55;
  v111 = &v55[v110];
  v112 = *&v55[v110 + 24];
  v113 = *&v55[v110 + 32];
  v114 = __swift_project_boxed_opaque_existential_1(&v55[v110], v112);
  MEMORY[0x1EEE9AC00](v114, v115);
  MEMORY[0x1EEE9AC00](v116, v117);
  v118 = v376;
  *(&v360 - 4) = sub_1D615B4A4;
  *(&v360 - 3) = v118;
  v358 = sub_1D6708894;
  v359 = v104;
  v119 = v388;
  sub_1D5D2BC70(v103, sub_1D615B49C, v120, sub_1D615B4A4, (&v360 - 6), v112, v113);
  if (v119)
  {
    sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);

    v93 = v381;
    return sub_1D5D2CFE8(v93, sub_1D665D5DC);
  }

  v387 = v111;

  sub_1D5CA1E90();
  sub_1D72647EC();
  sub_1D5D2CFE8(v385, type metadata accessor for FormatVersionRequirement);

  v123 = v383;
  v124 = v383[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v125 = v384;
  v126 = __swift_project_value_buffer(v384, qword_1EDFFCD68);
  v127 = v375;
  (v378)(v375, v126, v125);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D7297410;
  v389 = xmmword_1D7297410;
  LOBYTE(v390) = 0;
  LOBYTE(v401) = 0;
  v129 = swift_allocObject();
  *(v129 + 16) = v388;
  *(v129 + 32) = v401;
  v130 = v361;
  *(v129 + 40) = v361;
  v131 = v360;
  *(v129 + 48) = v360;
  if (v124)
  {
    *&v386 = &v360;
    v401 = v124;
    MEMORY[0x1EEE9AC00](v131, v128);
    *(&v360 - 4) = sub_1D5B4AA6C;
    *(&v360 - 3) = 0;
    v358 = sub_1D6708894;
    v359 = v129;
    LOBYTE(v400) = 0;
    v133 = v132;
    v134 = swift_allocObject();
    *(v134 + 16) = v388;
    *(v134 + 32) = v400;
    *(v134 + 40) = v130;
    *(v134 + 48) = v133;
    swift_retain_n();

    v135 = sub_1D72647CC();
    LOBYTE(v400) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = v135;
    *(v136 + 24) = v388;
    *(v136 + 40) = v400;
    v137 = *(v387 + 3);
    v138 = *(v387 + 4);
    v139 = __swift_project_boxed_opaque_existential_1(v387, v137);
    MEMORY[0x1EEE9AC00](v139, v140);
    MEMORY[0x1EEE9AC00](v141, v142);
    *(&v360 - 4) = sub_1D615B4A4;
    *(&v360 - 3) = (&v360 - 6);
    v358 = sub_1D6708894;
    v359 = v134;
    v144 = sub_1D5D2F7A4(v127, sub_1D615B49C, v143, sub_1D615B4A4, (&v360 - 6), v137, v138);
    v147 = v144;

    if (v147)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v145 = v374;
      v123 = v383;
    }

    else
    {

      v145 = v374;
      v123 = v383;
    }

    v146 = v375;
  }

  else
  {

    v145 = v374;
    v146 = v127;
  }

  sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v148 = v123[6];
  v149 = v378;
  (v378)(v145, v382, v384);
  swift_storeEnumTagMultiPayload();
  if (*(v148 + 16))
  {
    LOBYTE(v389) = 0;
    v150 = swift_allocObject();
    v388 = xmmword_1D72BAA60;
    *(v150 + 16) = xmmword_1D72BAA60;
    *(v150 + 32) = v389;
    *(v150 + 40) = v361;
    *(v150 + 48) = v360;

    v151 = sub_1D72647CC();
    LOBYTE(v389) = 0;
    v152 = swift_allocObject();
    *(v152 + 16) = v151;
    *(v152 + 24) = v388;
    *(v152 + 40) = v389;
    v153 = v387;
    v154 = *(v387 + 3);
    v155 = *(v387 + 4);
    v156 = __swift_project_boxed_opaque_existential_1(v387, v154);
    *&v386 = &v360;
    MEMORY[0x1EEE9AC00](v156, v157);
    MEMORY[0x1EEE9AC00](v158, v159);
    *(&v360 - 4) = sub_1D5B4AA6C;
    *(&v360 - 3) = 0;
    v358 = sub_1D6708894;
    v359 = v150;
    v161 = sub_1D5D2F7A4(v145, sub_1D615B49C, v160, sub_1D615B4A4, (&v360 - 6), v154, v155);
    v162 = v161;

    if (v162)
    {
      v389 = v388;
      LOBYTE(v390) = 0;
      v400 = v148;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v163 = v374;
      v123 = v383;
      *&v388 = 0;

      sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);
      v149 = v378;
    }

    else
    {
      *&v388 = 0;
      sub_1D5D2CFE8(v374, type metadata accessor for FormatVersionRequirement);

      v149 = v378;
      v123 = v383;
    }
  }

  else
  {
    *&v388 = 0;
    sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
    v153 = v387;
  }

  v164 = v123[7];
  v165 = v373;
  v166 = v382;
  v149(v373, v382, v384);
  swift_storeEnumTagMultiPayload();
  v386 = xmmword_1D72BAA70;
  v389 = xmmword_1D72BAA70;
  LOBYTE(v390) = 0;
  LOBYTE(v400) = 0;
  v167 = swift_allocObject();
  v169 = v167;
  v170 = v164;
  *(v167 + 16) = v386;
  *(v167 + 32) = v400;
  v171 = v361;
  v172 = v360;
  *(v167 + 40) = v361;
  *(v167 + 48) = v172;
  if (v170)
  {
    v385 = &v360;
    v400 = v170;
    MEMORY[0x1EEE9AC00](v167, v168);
    *(&v360 - 4) = sub_1D5B4AA6C;
    *(&v360 - 3) = 0;
    v358 = sub_1D6708894;
    v359 = v169;
    LOBYTE(v399) = 0;
    v174 = v173;
    v176 = v175;
    v177 = swift_allocObject();
    *(v177 + 16) = v386;
    *(v177 + 32) = v399;
    *(v177 + 40) = v171;
    *(v177 + 48) = v174;
    swift_retain_n();
    v377 = v176;

    v178 = sub_1D72647CC();
    LOBYTE(v399) = 0;
    v179 = swift_allocObject();
    *(v179 + 16) = v178;
    *(v179 + 24) = v386;
    *(v179 + 40) = v399;
    v180 = *(v153 + 3);
    v181 = *(v153 + 4);
    v182 = __swift_project_boxed_opaque_existential_1(v153, v180);
    MEMORY[0x1EEE9AC00](v182, v183);
    MEMORY[0x1EEE9AC00](v184, v185);
    *(&v360 - 4) = sub_1D615B4A4;
    *(&v360 - 3) = (&v360 - 6);
    v358 = sub_1D6708894;
    v359 = v177;
    v186 = v388;
    v188 = sub_1D5D2F7A4(v165, sub_1D615B49C, v187, sub_1D615B4A4, (&v360 - 6), v180, v181);
    v189 = v186;
    if (v186)
    {

      v190 = v381;
      v191 = v165;
LABEL_42:
      sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
      v93 = v190;
      return sub_1D5D2CFE8(v93, sub_1D665D5DC);
    }

    v194 = v188;

    v193 = v371;
    if (v194)
    {
      type metadata accessor for FormatIssueCoverNodeStyle();
      sub_1D5B58B84(&qword_1EDF0C2D0, type metadata accessor for FormatIssueCoverNodeStyle, &protocol conformance descriptor for FormatIssueCoverNodeStyle);
      sub_1D72647EC();
      v166 = v382;

      v149 = v378;
    }

    else
    {

      v149 = v378;
      v166 = v382;
    }

    v192 = v360;
  }

  else
  {
    v192 = v172;

    v189 = v388;
    v193 = v371;
  }

  sub_1D5D2CFE8(v373, type metadata accessor for FormatVersionRequirement);
  v195 = v383[8];
  v149(v193, v166, v384);
  swift_storeEnumTagMultiPayload();
  v386 = xmmword_1D72BAA80;
  v389 = xmmword_1D72BAA80;
  LOBYTE(v390) = 0;
  LOBYTE(v400) = 0;
  v196 = swift_allocObject();
  v198 = v196;
  *(v196 + 16) = v386;
  *(v196 + 32) = v400;
  v199 = v193;
  v200 = v361;
  *(v196 + 40) = v361;
  *(v196 + 48) = v192;
  if (v195)
  {
    v385 = &v360;
    v400 = v195;
    MEMORY[0x1EEE9AC00](v196, v197);
    *&v388 = v189;
    *(&v360 - 4) = sub_1D5B4AA6C;
    *(&v360 - 3) = 0;
    v358 = sub_1D6708894;
    v359 = v198;
    LOBYTE(v399) = 0;
    v201 = swift_allocObject();
    *(v201 + 16) = v386;
    *(v201 + 32) = v399;
    *(v201 + 40) = v200;
    *(v201 + 48) = v192;
    swift_retain_n();

    v202 = sub_1D72647CC();
    LOBYTE(v399) = 0;
    v203 = swift_allocObject();
    *(v203 + 16) = v202;
    *(v203 + 24) = v386;
    *(v203 + 40) = v399;
    v204 = *(v387 + 3);
    v205 = *(v387 + 4);
    v206 = __swift_project_boxed_opaque_existential_1(v387, v204);
    MEMORY[0x1EEE9AC00](v206, v207);
    MEMORY[0x1EEE9AC00](v208, v209);
    *(&v360 - 4) = sub_1D615B4A4;
    *(&v360 - 3) = (&v360 - 6);
    v358 = sub_1D6708894;
    v359 = v201;
    v210 = v199;
    v211 = v199;
    v212 = v388;
    v214 = sub_1D5D2F7A4(v211, sub_1D615B49C, v213, sub_1D615B4A4, (&v360 - 6), v204, v205);
    v189 = v212;
    if (v212)
    {

      v190 = v381;
      v191 = v210;
      goto LABEL_42;
    }

    v217 = v214;

    v216 = v372;
    if (v217)
    {
      type metadata accessor for FormatAnimationNodeStyle();
      sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
      sub_1D72647EC();
      v166 = v382;

      v149 = v378;
    }

    else
    {

      v149 = v378;
      v166 = v382;
    }

    v215 = v360;
  }

  else
  {
    v215 = v192;

    v216 = v372;
    v210 = v199;
  }

  sub_1D5D2CFE8(v210, type metadata accessor for FormatVersionRequirement);
  v218 = v383[9];
  v149(v216, v166, v384);
  swift_storeEnumTagMultiPayload();
  v400 = v218;
  v388 = xmmword_1D72BAA90;
  v389 = xmmword_1D72BAA90;
  LOBYTE(v390) = 0;
  LOBYTE(v399) = 0;
  v219 = swift_allocObject();
  *&v386 = &v360;
  *(v219 + 16) = v388;
  *(v219 + 32) = v399;
  v220 = v361;
  *(v219 + 40) = v361;
  *(v219 + 48) = v215;
  MEMORY[0x1EEE9AC00](v219, v221);
  *(&v360 - 4) = sub_1D5B4AA6C;
  *(&v360 - 3) = 0;
  v358 = sub_1D6708894;
  v359 = v222;
  LOBYTE(v399) = 0;
  v223 = swift_allocObject();
  *(v223 + 16) = v388;
  *(v223 + 32) = v399;
  *(v223 + 40) = v220;
  *(v223 + 48) = v215;
  swift_retain_n();
  v224 = sub_1D72647CC();
  LOBYTE(v399) = 0;
  v225 = swift_allocObject();
  *(v225 + 16) = v224;
  *(v225 + 24) = v388;
  *(v225 + 40) = v399;
  v226 = *(v387 + 3);
  v227 = *(v387 + 4);
  v228 = __swift_project_boxed_opaque_existential_1(v387, v226);
  MEMORY[0x1EEE9AC00](v228, v229);
  MEMORY[0x1EEE9AC00](v230, v231);
  *(&v360 - 4) = sub_1D615B4A4;
  *(&v360 - 3) = (&v360 - 6);
  v232 = v372;
  v358 = sub_1D6708894;
  v359 = v223;
  sub_1D5D2BC70(v372, sub_1D615B49C, v233, sub_1D615B4A4, (&v360 - 6), v226, v227);
  if (v189)
  {
    sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);

    v93 = v381;
    return sub_1D5D2CFE8(v93, sub_1D665D5DC);
  }

  sub_1D665D700();
  sub_1D72647EC();
  sub_1D5D2CFE8(v372, type metadata accessor for FormatVersionRequirement);

  v234 = v383;
  swift_beginAccess();
  v235 = v234[10];
  v236 = v368;
  v237 = v378;
  (v378)(v368, v382, v384);
  swift_storeEnumTagMultiPayload();
  if (v235)
  {
    LOBYTE(v389) = 0;
    v238 = swift_allocObject();
    v388 = xmmword_1D72BAAA0;
    *(v238 + 16) = xmmword_1D72BAAA0;
    *(v238 + 32) = v389;
    *(v238 + 40) = v361;
    *(v238 + 48) = v360;

    v239 = sub_1D72647CC();
    LOBYTE(v389) = 0;
    v240 = swift_allocObject();
    *(v240 + 16) = v239;
    *(v240 + 24) = v388;
    *(v240 + 40) = v389;
    v241 = *(v387 + 3);
    v242 = *(v387 + 4);
    v243 = __swift_project_boxed_opaque_existential_1(v387, v241);
    MEMORY[0x1EEE9AC00](v243, v244);
    MEMORY[0x1EEE9AC00](v245, v246);
    *(&v360 - 4) = sub_1D5B4AA6C;
    *(&v360 - 3) = 0;
    v358 = sub_1D6708894;
    v359 = v238;
    sub_1D5D2F7A4(v236, sub_1D615B49C, v247, sub_1D615B4A4, (&v360 - 6), v241, v242);

    v389 = v388;
    LOBYTE(v390) = 0;
    v399 = v235;
    sub_1D72647EC();
    sub_1D5D2CFE8(v368, type metadata accessor for FormatVersionRequirement);
    v237 = v378;
  }

  else
  {
    sub_1D5D2CFE8(v236, type metadata accessor for FormatVersionRequirement);
  }

  v248 = v367;
  v249 = v383;
  swift_beginAccess();
  v250 = v249[11];
  v237(v248, v382, v384);
  swift_storeEnumTagMultiPayload();
  if (v250 == 0x8000000000000000)
  {
    sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v389) = 0;
    v251 = swift_allocObject();
    v388 = xmmword_1D72BAAB0;
    *(v251 + 16) = xmmword_1D72BAAB0;
    *(v251 + 32) = v389;
    *(v251 + 40) = v361;
    *(v251 + 48) = v360;

    sub_1D5EB1500(v250);
    v252 = sub_1D72647CC();
    LOBYTE(v389) = 0;
    v253 = swift_allocObject();
    *(v253 + 16) = v252;
    *(v253 + 24) = v388;
    *(v253 + 40) = v389;
    v254 = v248;
    v255 = *(v387 + 3);
    v256 = *(v387 + 4);
    v257 = __swift_project_boxed_opaque_existential_1(v387, v255);
    MEMORY[0x1EEE9AC00](v257, v258);
    MEMORY[0x1EEE9AC00](v259, v260);
    *(&v360 - 4) = sub_1D5B4AA6C;
    *(&v360 - 3) = 0;
    v358 = sub_1D6708894;
    v359 = v251;
    LOBYTE(v255) = sub_1D5D2F7A4(v254, sub_1D615B49C, v261, sub_1D615B4A4, (&v360 - 6), v255, v256);

    if (v255)
    {
      v389 = v388;
      LOBYTE(v390) = 0;
      v398 = v250;
      sub_1D5DF6A60();
      sub_1D72647EC();
      sub_1D5EB15C4(v398);
    }

    else
    {
      sub_1D5EB15C4(v250);
    }

    sub_1D5D2CFE8(v367, type metadata accessor for FormatVersionRequirement);
  }

  v262 = v383;
  swift_beginAccess();
  v263 = *(v262 + 96);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v264 = v384;
  v265 = __swift_project_value_buffer(v384, qword_1EDFFCD00);
  v266 = v366;
  (v378)(v366, v265, v264);
  swift_storeEnumTagMultiPayload();
  if (v263)
  {
    sub_1D5D2CFE8(v266, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v389) = 0;
    v267 = swift_allocObject();
    v388 = xmmword_1D72BAAC0;
    *(v267 + 16) = xmmword_1D72BAAC0;
    *(v267 + 32) = v389;
    *(v267 + 40) = v361;
    *(v267 + 48) = v360;

    v268 = sub_1D72647CC();
    LOBYTE(v389) = 0;
    v269 = swift_allocObject();
    *(v269 + 16) = v268;
    *(v269 + 24) = v388;
    *(v269 + 40) = v389;
    v270 = *(v387 + 3);
    v271 = *(v387 + 4);
    v272 = __swift_project_boxed_opaque_existential_1(v387, v270);
    MEMORY[0x1EEE9AC00](v272, v273);
    MEMORY[0x1EEE9AC00](v274, v275);
    *(&v360 - 4) = sub_1D5B4AA6C;
    *(&v360 - 3) = 0;
    v358 = sub_1D6708894;
    v359 = v267;
    LOBYTE(v270) = sub_1D5D2F7A4(v266, sub_1D615B49C, v276, sub_1D615B4A4, (&v360 - 6), v270, v271);

    if (v270)
    {
      v389 = v388;
      LOBYTE(v390) = 0;
      LOBYTE(v396) = 0;
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v366, type metadata accessor for FormatVersionRequirement);
    v262 = v383;
  }

  v277 = v262[13];
  v278 = *(v262 + 112);
  v279 = v365;
  (v378)(v365, v382, v384);
  swift_storeEnumTagMultiPayload();
  v388 = xmmword_1D72BAAD0;
  v389 = xmmword_1D72BAAD0;
  LOBYTE(v390) = 0;
  LOBYTE(v396) = 0;
  v281 = swift_allocObject();
  *(v281 + 16) = v388;
  *(v281 + 32) = v396;
  *(v281 + 40) = v361;
  v282 = v360;
  *(v281 + 48) = v360;
  if (v278 <= 0xFD)
  {
    v396 = v277;
    v397 = v278;
    MEMORY[0x1EEE9AC00](v282, v280);
    *(&v360 - 4) = sub_1D5B4AA6C;
    *(&v360 - 3) = 0;
    v358 = sub_1D6708894;
    v359 = v281;
    LOBYTE(v394) = 0;
    v285 = v284;
    v286 = swift_allocObject();
    *(v286 + 16) = v388;
    *(v286 + 32) = v394;
    *(v286 + 40) = v361;
    *(v286 + 48) = v285;
    swift_retain_n();
    v287 = sub_1D72647CC();
    LOBYTE(v394) = 0;
    v288 = swift_allocObject();
    *(v288 + 16) = v287;
    *(v288 + 24) = v388;
    *(v288 + 40) = v394;
    v289 = *(v387 + 3);
    v290 = *(v387 + 4);
    v291 = __swift_project_boxed_opaque_existential_1(v387, v289);
    MEMORY[0x1EEE9AC00](v291, v292);
    MEMORY[0x1EEE9AC00](v293, v294);
    *(&v360 - 4) = sub_1D615B4A4;
    *(&v360 - 3) = (&v360 - 6);
    v358 = sub_1D6708894;
    v359 = v286;
    v296 = sub_1D5D2F7A4(v365, sub_1D615B49C, v295, sub_1D615B4A4, (&v360 - 6), v289, v290);
    *&v388 = 0;
    LOBYTE(v289) = v296;

    if (v289)
    {
      sub_1D5F8F434();
      v297 = v388;
      sub_1D72647EC();
      *&v388 = v297;
      if (v297)
      {
        sub_1D5D2CFE8(v365, type metadata accessor for FormatVersionRequirement);

LABEL_76:
        v93 = v381;
        return sub_1D5D2CFE8(v93, sub_1D665D5DC);
      }
    }

    v262 = v383;
    v283 = v364;
    v279 = v365;
  }

  else
  {
    *&v388 = 0;

    v283 = v364;
  }

  sub_1D5D2CFE8(v279, type metadata accessor for FormatVersionRequirement);

  swift_beginAccess();
  v298 = v262[15];
  (v378)(v283, v382, v384);
  swift_storeEnumTagMultiPayload();
  if (*(v298 + 16))
  {
    LOBYTE(v389) = 0;
    v299 = swift_allocObject();
    v386 = xmmword_1D72BAAE0;
    *(v299 + 16) = xmmword_1D72BAAE0;
    *(v299 + 32) = v389;
    *(v299 + 40) = v361;
    *(v299 + 48) = v360;

    v300 = sub_1D72647CC();
    LOBYTE(v389) = 0;
    v301 = swift_allocObject();
    *(v301 + 16) = v300;
    *(v301 + 24) = v386;
    *(v301 + 40) = v389;
    v302 = *(v387 + 3);
    v303 = *(v387 + 4);
    v304 = __swift_project_boxed_opaque_existential_1(v387, v302);
    MEMORY[0x1EEE9AC00](v304, v305);
    MEMORY[0x1EEE9AC00](v306, v307);
    *(&v360 - 4) = sub_1D5B4AA6C;
    *(&v360 - 3) = 0;
    v358 = sub_1D6708894;
    v359 = v299;
    v308 = v388;
    v310 = sub_1D5D2F7A4(v283, sub_1D615B49C, v309, sub_1D615B4A4, (&v360 - 6), v302, v303);
    *&v388 = v308;
    if (v308)
    {

LABEL_75:
      sub_1D5D2CFE8(v364, type metadata accessor for FormatVersionRequirement);
      goto LABEL_76;
    }

    v311 = v310;

    if (v311)
    {
      v312 = v388;
      sub_1D5E07898(v298, v381, 0xB, 0, 0);
      *&v388 = v312;
      if (v312)
      {

        goto LABEL_75;
      }
    }

    v262 = v383;
    v283 = v364;
  }

  sub_1D5D2CFE8(v283, type metadata accessor for FormatVersionRequirement);
  v313 = *(v262 + 128);
  v314 = v363;
  (v378)(v363, v382, v384);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v394) = v313;
  v386 = xmmword_1D72BAAF0;
  v389 = xmmword_1D72BAAF0;
  LOBYTE(v390) = 0;
  v403 = 0;
  v315 = swift_allocObject();
  *(v315 + 16) = v386;
  *(v315 + 32) = v403;
  v316 = v361;
  v317 = v360;
  *(v315 + 40) = v361;
  *(v315 + 48) = v317;
  MEMORY[0x1EEE9AC00](v315, v318);
  *(&v360 - 4) = sub_1D5B4AA6C;
  *(&v360 - 3) = 0;
  v358 = sub_1D6708894;
  v359 = v319;
  v403 = 0;
  v320 = swift_allocObject();
  *(v320 + 16) = v386;
  *(v320 + 32) = v403;
  *(v320 + 40) = v316;
  *(v320 + 48) = v317;
  swift_retain_n();
  v321 = sub_1D72647CC();
  v403 = 0;
  v322 = swift_allocObject();
  *(v322 + 16) = v321;
  *(v322 + 24) = v386;
  *(v322 + 40) = v403;
  v323 = *(v387 + 3);
  v324 = *(v387 + 4);
  v325 = __swift_project_boxed_opaque_existential_1(v387, v323);
  MEMORY[0x1EEE9AC00](v325, v326);
  MEMORY[0x1EEE9AC00](v327, v328);
  *(&v360 - 4) = sub_1D615B4A4;
  *(&v360 - 3) = (&v360 - 6);
  v358 = sub_1D6708894;
  v359 = v320;
  v329 = v388;
  sub_1D5D2BC70(v314, sub_1D615B49C, v330, sub_1D615B4A4, (&v360 - 6), v323, v324);
  if (v329)
  {
    sub_1D5D2CFE8(v363, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D61CF188();
    sub_1D72647EC();
    sub_1D5D2CFE8(v363, type metadata accessor for FormatVersionRequirement);

    v331 = v383[17];
    v332 = v383[18];
    v333 = v383[19];
    v334 = v383[20];
    v335 = v383[21];
    v336 = v383[22];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v337 = v384;
    v338 = __swift_project_value_buffer(v384, qword_1EDFFCE38);
    (v378)(v362, v338, v337);
    swift_storeEnumTagMultiPayload();
    v388 = xmmword_1D7282A80;
    v394 = xmmword_1D7282A80;
    v395 = 0;
    LOBYTE(v389) = 0;
    v339 = swift_allocObject();
    v341 = v339;
    *(v339 + 16) = v388;
    *(v339 + 32) = v389;
    v342 = v360;
    *(v339 + 40) = v361;
    *(v339 + 48) = v342;
    if (v331)
    {
      *&v386 = &v360;
      *&v389 = v331;
      *(&v389 + 1) = v332;
      v390 = v333;
      v391 = v334;
      v392 = v335;
      v343 = v336;
      v393 = v336;
      MEMORY[0x1EEE9AC00](v339, v340);
      v385 = &v360 - 6;
      *(&v360 - 4) = sub_1D5B4AA6C;
      *(&v360 - 3) = 0;
      v358 = sub_1D6708894;
      v359 = v341;
      v403 = 0;
      v344 = swift_allocObject();
      *(v344 + 16) = v388;
      *(v344 + 32) = v403;
      *(v344 + 40) = v361;
      *(v344 + 48) = v360;
      swift_retain_n();
      sub_1D5EB1D80(v331, v332, v333, v334, v335, v343);
      v345 = sub_1D72647CC();
      v403 = 0;
      v346 = swift_allocObject();
      *(v346 + 16) = v345;
      *(v346 + 24) = v388;
      *(v346 + 40) = v403;
      v347 = *(v387 + 3);
      v348 = *(v387 + 4);
      v349 = __swift_project_boxed_opaque_existential_1(v387, v347);
      MEMORY[0x1EEE9AC00](v349, v350);
      MEMORY[0x1EEE9AC00](v351, v352);
      v353 = v385;
      *(&v360 - 4) = sub_1D615B4A4;
      *(&v360 - 3) = v353;
      v358 = sub_1D6708894;
      v359 = v344;
      v355 = sub_1D5D2F7A4(v362, sub_1D615B49C, v354, sub_1D615B4A4, (&v360 - 6), v347, v348);
      v356 = v355;

      if (v356)
      {
        sub_1D6659A24();
        sub_1D72647EC();
      }

      v357 = v392;

      sub_1D5CBF568(v357);

      sub_1D5D2CFE8(v362, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v362, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v381, sub_1D665D5DC);
}

uint64_t FormatStateMachineInlineInput.Scope.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v22[1] = v22 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v24 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD18);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v18 = v27;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v18)
  {
    v20 = v25[3];
    v27 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v20);
    v21 = v23;
    v17(v23, v16, v15);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v20, v27);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t FormatStateMachineInlineInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D665D754(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665D7E8(0);
  sub_1D5B58B84(&qword_1EC886108, sub_1D665D7E8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D6627E68(0x536C616974696E69, 0xEC00000065746174, 0x65706F6373, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  v32 = 0uLL;
  v33 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v28 = xmmword_1D728CF30;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  if (sub_1D726434C())
  {
    v30 = v28;
    v31 = 0;
    sub_1D5F84D20();
    sub_1D726431C();
    (*(v14 + 8))(v10, v6);
    v27 = v34;
  }

  else
  {
    (*(v14 + 8))(v10, v6);
    v27 = 0;
  }

  *v13 = v21;
  *(v13 + 8) = v20;
  *(v13 + 16) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatStateMachineInlineInput.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D665D968(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v89 = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D665D7E8(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC886108, sub_1D665D7E8, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatStateMachineInlineInput, v20, v22, v17, &type metadata for FormatStateMachineInlineInput, v20, &type metadata for FormatVersions.JazzkonG, v18, v14, v21, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD18);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v79 = v24;
  v75 = v26;
  v76 = v23;
  v74 = v25 + 16;
  (v26)(v9);
  v73 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v86 = v15;
  v87 = v16;
  v84 = 0uLL;
  v85 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v88 = 0;
  v30 = swift_allocObject();
  *&v82 = &v70;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v88;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D6708898;
  v69 = v32;
  v88 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v88;
  v72 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D665D9FC(0);
  v81 = v9;
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EC886120, sub_1D665D9FC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v78 = v35;
  v80 = v36;
  v37 = sub_1D72647CC();
  v88 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v88;
  v39 = v14;
  v40 = &v14[*(v11 + 36)];
  v41 = *(v40 + 3);
  v42 = *(v40 + 4);
  v43 = __swift_project_boxed_opaque_existential_1(v40, v41);
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v47 = v81;
  v68 = sub_1D6708898;
  v69 = v33;
  v48 = v83;
  sub_1D5D2BC70(v81, sub_1D615B49C, v49, sub_1D615B4A4, (&v70 - 6), v41, v42);
  if (v48)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    v50 = v39;
  }

  else
  {
    v71 = v40;
    v51 = v47;
    v52 = v79;
    v83 = v29;
    v53 = v51;

    sub_1D72647EC();
    v50 = v39;
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    v54 = v77;
    v75(v77, v52, v76);
    swift_storeEnumTagMultiPayload();
    if (v89)
    {
      v55 = sub_1D72646CC();

      if ((v55 & 1) == 0)
      {
        LOBYTE(v84) = 0;
        v56 = swift_allocObject();
        v82 = xmmword_1D728CF30;
        *(v56 + 16) = xmmword_1D728CF30;
        *(v56 + 32) = v84;
        *(v56 + 40) = v72;
        *(v56 + 48) = v83;

        v57 = sub_1D72647CC();
        LOBYTE(v84) = 0;
        v58 = swift_allocObject();
        *(v58 + 16) = v57;
        *(v58 + 24) = v82;
        *(v58 + 40) = v84;
        v59 = *(v71 + 3);
        v60 = *(v71 + 4);
        v61 = __swift_project_boxed_opaque_existential_1(v71, v59);
        MEMORY[0x1EEE9AC00](v61, v62);
        MEMORY[0x1EEE9AC00](v63, v64);
        *(&v70 - 4) = sub_1D5B4AA6C;
        *(&v70 - 3) = 0;
        v68 = sub_1D665DA90;
        v69 = v56;
        v67 = sub_1D5D2F7A4(v54, sub_1D615B49C, v65, sub_1D615B4A4, (&v70 - 6), v59, v60);

        if (v67)
        {
          v84 = v82;
          v85 = 0;
          LOBYTE(v86) = 1;
          sub_1D5F84D74();
          sub_1D72647EC();
        }
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v50, sub_1D665D968);
}

void sub_1D63857EC(char a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67092D0;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67042BC();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    type metadata accessor for FormatAbsoluteURL(0);
    sub_1D5B58B84(qword_1EDF10E68, type metadata accessor for FormatAbsoluteURL, &protocol conformance descriptor for FormatAbsoluteURL);
    sub_1D72647EC();
  }
}

void sub_1D63859C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D67092D0;
  v15[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v15);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67042BC();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6704310();
    sub_1D72647EC();
  }
}

void sub_1D6385B58(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D67092D0;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67042BC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D670438C();
    sub_1D72647EC();
  }
}

void sub_1D6385CEC(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66F6EF0;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6E9C();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C71DC8(0);
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D6385EB8(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66F6F18;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6F40();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66F6F94();
    sub_1D72647EC();
  }
}

void sub_1D638604C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66F79B0;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F795C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC8873E8, sub_1D66BDF14, &type metadata for FormatSponsoredBannerUserInterfaceStyle, type metadata accessor for FormatUserInterfaceValue);
    sub_1D66F79D8();
    sub_1D72647EC();
  }
}

void sub_1D6386220(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2 & 1;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6706038;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705FE4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5F24048();
    sub_1D72647EC();
  }
}

void sub_1D63863B8(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2 & 1;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66F8894;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F88BC();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5F2B800();
    sub_1D72647EC();
  }
}

void sub_1D6386550(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16[0] = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6702B88;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702BB0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D620736C();
    sub_1D72647EC();
  }
}

void sub_1D63866E8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6709090;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6FE8();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C71DC8(0);
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D63868B4(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D670931C;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706A90();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6706AE4();
    sub_1D72647EC();
  }
}

void sub_1D6386A48(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2 & 1;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6706B38;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706A90();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6706B60();
    sub_1D72647EC();
  }
}

void sub_1D6386BE0(char a1, uint64_t a2)
{
  v14 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670931C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706A90();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D6328D14();
    sub_1D72647EC();
  }
}

void sub_1D6386D6C(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D670294C;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702970();
    v11 = 0uLL;
    sub_1D72647EC();
    v11 = xmmword_1D7279980;
    sub_1D6679304();
    sub_1D72647EC();
  }
}

void sub_1D6386EE8(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66F906C;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9090();
    v11 = 0uLL;
    sub_1D72647EC();
    v11 = xmmword_1D7279980;
    sub_1D66F90E4();
    sub_1D72647EC();
  }
}

void sub_1D6387064(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D67091D8;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC90();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66777BC();
    sub_1D72647EC();
  }
}

void sub_1D63871FC(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67091D8;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC90();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6678178();
    sub_1D72647EC();
  }
}

void sub_1D6387390(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18 = a2[2];
  v19 = *(a2 + 24);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D67091D8;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC90();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5FD79B8();
    sub_1D72647EC();
  }
}

void sub_1D6387538(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v22 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v16[2] = sub_1D66FACE4;
  v16[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v16);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC90();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6089CC4();
    sub_1D72647EC();
  }
}

void sub_1D63876D4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v22 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v16[2] = sub_1D67091D8;
  v16[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v16);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC90();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66FAD0C();
    sub_1D72647EC();
  }
}

void sub_1D6387870(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16[0] = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6700EA8;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700ED0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6700F24();
    sub_1D72647EC();
  }
}

void sub_1D6387A08(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66F7BE0;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7C04();
    v11 = 0uLL;
    sub_1D72647EC();
    v11 = xmmword_1D7279980;
    sub_1D66F7C58();
    sub_1D72647EC();
  }
}

void sub_1D6387B84(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6709304;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705CD0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6705D24();
    sub_1D72647EC();
  }
}

void sub_1D6387D18(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6705D78;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705CD0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6705DA0();
    sub_1D72647EC();
  }
}

void sub_1D6387EAC(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6709304;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705CD0();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6155A30();
    sub_1D72647EC();
  }
}

void sub_1D6388040(char a1, uint64_t a2, double a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a3;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6702DCC;
  v13[3] = v11;

  v12 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702DF4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
    sub_1D66F8FB4();
    sub_1D72647EC();
  }
}

void sub_1D6388214(char a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = a1 & 1;
  v22 = a1 & 1;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v16[2] = sub_1D67090F8;
  v16[3] = v14;

  v15 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v16);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702DF4();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D668EA2C();
    sub_1D72647EC();
  }
}

void sub_1D63883AC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v16[2] = sub_1D66FC760;
  v16[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v16);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC70C();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66FC788();
    sub_1D72647EC();
  }
}

void sub_1D6388544(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67091FC;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC70C();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C71DC8(0);
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D6388710(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6703DB0;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703D5C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
    sub_1D5D38540();
    sub_1D72647EC();
  }
}

void sub_1D63888D8(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D67092C4;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703D5C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6156DCC();
    sub_1D72647EC();
  }
}

void sub_1D6388A70(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D67092C4;
  v15[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v15);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703D5C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6156F84();
    sub_1D72647EC();
  }
}

void sub_1D6388C08(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  *v18 = a2[2];
  *&v18[15] = *(a2 + 47);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D67092C4;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703D5C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D615713C();
    sub_1D72647EC();
  }
}

void sub_1D6388DB0(char a1, uint64_t a2)
{
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v6 = (v2 + *(v5 + 44));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v11[2] = sub_1D6701ED8;
  v11[3] = v9;

  v10 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v11);
  if (!v3 && (v10 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701EFC();
    v12 = 0uLL;
    sub_1D72647EC();
    v12 = xmmword_1D7279980;
    sub_1D6701F50();
    sub_1D72647EC();
  }
}

void sub_1D6388F38(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2 & 1;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67092CC;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670406C();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF12750, sub_1D6666E5C, &type metadata for FormatSupplementaryNodePinEdge, type metadata accessor for FormatValue);
    sub_1D67040C0();
    sub_1D72647EC();
  }
}

void sub_1D6389110(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3 & 0x1FF;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D67092CC;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670406C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6704150();
    sub_1D72647EC();
  }
}

void sub_1D63892B0(uint64_t a1, double a2, double a3)
{
  v14 = a2;
  v15 = a3;
  sub_1D5D30DC4(0);
  v7 = (v3 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v12[2] = sub_1D66FA9C0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v12);
  if (!v4 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA9E4();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D5F5A70C();
    sub_1D72647EC();
  }
}

void sub_1D6389434(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6709154;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C5A334(0);
    sub_1D5B58B84(&qword_1EDF12738, sub_1D5C5A334, &protocol conformance descriptor for FormatValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D6389600(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6709154;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C71DC8(0);
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D63897CC(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18 = a2[2];
  v19 = *(a2 + 24);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6709154;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6686A30();
    sub_1D72647EC();
  }
}

void sub_1D6389974(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D6709154;
  v15[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v15);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6067A68();
    sub_1D72647EC();
  }
}

void sub_1D6389B0C(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18 = a2[2];
  v19 = *(a2 + 24);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6709154;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F44D4();
    sub_1D72647EC();
  }
}

void sub_1D6389CB4(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  *v18 = a2[2];
  *&v18[11] = *(a2 + 43);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6709154;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2ED78, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue);
    sub_1D66F4528();
    sub_1D72647EC();
  }
}

void sub_1D6389E9C(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18 = *(a2 + 4);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66F45B8;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F45E0();
    sub_1D72647EC();
  }
}

void sub_1D638A03C(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6709154;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6034514();
    sub_1D72647EC();
  }
}

void sub_1D638A1D0(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6709154;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4480();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D60B27FC();
    sub_1D72647EC();
  }
}

void sub_1D638A364(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D6709178;
  v15[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v15);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F62BC();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F6310();
    sub_1D72647EC();
  }
}

void sub_1D638A4FC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66F6364;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F62BC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F638C();
    sub_1D72647EC();
  }
}

void sub_1D638A694(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6709178;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F62BC();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F63E0();
    sub_1D72647EC();
  }
}

void sub_1D638A828(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67090B8;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA4D4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C71DC8(0);
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D638A9F4(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66FA528;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA4D4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6678178();
    sub_1D72647EC();
  }
}

void sub_1D638AB88(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67090C4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB720();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D66FB774();
    sub_1D72647EC();
  }
}

void sub_1D638AD14(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FB7C8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB720();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D66FB7F0();
    sub_1D72647EC();
  }
}

void sub_1D638AEA0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66FBD18;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBCC4();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D630BD34();
    sub_1D72647EC();
  }
}

void sub_1D638B034(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2 & 1;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67090C8;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB844();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5F2BDE0();
    sub_1D72647EC();
  }
}

void sub_1D638B1CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v18 = a1 & 1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66FB898;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB844();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886D80, sub_1D669E898, &type metadata for FormatLayeredMediaNodeContent, type metadata accessor for FormatSelectorValue);
    sub_1D66FB8C0();
    sub_1D72647EC();
  }
}

void sub_1D638B3A0(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670910C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705DF4();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D66FB774();
    sub_1D72647EC();
  }
}

void sub_1D638B52C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6705E48;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705DF4();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D66FB7F0();
    sub_1D72647EC();
  }
}

void sub_1D638B6B8(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D670916C;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5998();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66F59EC();
    sub_1D72647EC();
  }
}

void sub_1D638B84C(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66F5A40;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5998();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6197110();
    sub_1D72647EC();
  }
}

void sub_1D638B9E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D670916C;
  v15[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v15);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5998();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

void sub_1D638BB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v15 = a1;
  v16 = a2;
  sub_1D5D30DC4(0);
  v8 = (v4 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v13[2] = sub_1D66F5AFC;
  v13[3] = v11;

  v12 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v13);
  if (!v5 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5B20();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

void sub_1D638BCFC(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67090B4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9E60();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D66F9EB4();
    sub_1D72647EC();
  }
}

void sub_1D638BE88(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v18 = a1 & 1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66F9F08;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9E60();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC8870F0, sub_1D66B04D8, &type metadata for FormatPuzzleEmbedNodeContent, type metadata accessor for FormatSelectorValue);
    sub_1D66F9F30();
    sub_1D72647EC();
  }
}

void sub_1D638C05C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66F4F84;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4F30();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2C0E0, sub_1D66D3E60, &type metadata for FormatWebEmbedNodeRendering, type metadata accessor for FormatSelectorValue);
    sub_1D66F4FAC();
    sub_1D72647EC();
  }
}

void sub_1D638C230(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67033AC;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67033D4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D6703428();
    sub_1D72647EC();
  }
}

void sub_1D638C3C4(__int128 *a1, uint64_t a2)
{
  v5 = a1[1];
  v14 = *a1;
  v15 = v5;
  v16[0] = a1[2];
  *(v16 + 15) = *(a1 + 47);
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v12[2] = sub_1D6703DD8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703DFC();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D66FF5D8();
    sub_1D72647EC();
  }
}

void sub_1D638C55C(char a1, uint64_t a2, double a3)
{
  v16 = a1;
  v15 = a3;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6705F40;
  v13[3] = v11;

  v12 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705EEC();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
    sub_1D66F8FB4();
    sub_1D72647EC();
  }
}

void sub_1D638C730(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6709290;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67020C8();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C801A8();
    sub_1D72647EC();
  }
}

void sub_1D638C8C4(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D670211C;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67020C8();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF33F58, sub_1D5C671FC, &type metadata for FormatAccessibilityTrait, type metadata accessor for FormatValue);
    sub_1D6702144();
    sub_1D72647EC();
  }
}

void sub_1D638CA98(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67091A8;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F80C4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66F8118();
    sub_1D72647EC();
  }
}

void sub_1D638CC2C(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2 & 1;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67091A8;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F80C4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66F816C();
    sub_1D72647EC();
  }
}

void sub_1D638CDC4(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2 & 1;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66F81C0;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F80C4();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D66F81E8();
    sub_1D72647EC();
  }
}

void sub_1D638CF5C(char a1, uint64_t a2)
{
  v14 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091A8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F80C4();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D66F823C();
    sub_1D72647EC();
  }
}

void sub_1D638D0E8(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v28 = a1 & 1;
  v7 = a2[7];
  v25 = a2[6];
  v26 = v7;
  v27 = *(a2 + 128);
  v8 = a2[3];
  v21 = a2[2];
  v22 = v8;
  v9 = a2[5];
  v23 = a2[4];
  v24 = v9;
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  sub_1D5D30DC4(0);
  v12 = (v3 + *(v11 + 44));
  v14 = *v12;
  v13 = v12[1];
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v14;
  *(v15 + 32) = v13;
  v17[2] = sub_1D66FCB70;
  v17[3] = v15;

  v16 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v17);
  if (!v4 && (v16 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCB98();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66FCBEC();
    sub_1D72647EC();
  }
}

void sub_1D638D2A0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a1 & 1;
  v18 = a1 & 1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D67090D4;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCB98();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FCC40();
    sub_1D72647EC();
  }
}

void sub_1D638D438(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D670516C;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705194();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D67051E8();
    sub_1D72647EC();
  }
}

void sub_1D638D5D0(char a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v22 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v16[2] = sub_1D67092E4;
  v16[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v16);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705194();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D670523C();
    sub_1D72647EC();
  }
}

void sub_1D638D770(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67092B0;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702E48();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C71DC8(0);
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D638D93C(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67092B0;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702E48();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF33EE8, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatValue);
    sub_1D66F2018();
    sub_1D72647EC();
  }
}

void sub_1D638DB04(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67092B0;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702E48();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D61F84CC();
    sub_1D72647EC();
  }
}

void sub_1D638DC98(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6702E9C;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702E48();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F8B88();
    sub_1D72647EC();
  }
}

void sub_1D638DE30(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D67090E4;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF55C();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C71DC8(0);
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D638DFFC(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v19 = a1 & 1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  *v18 = a2[2];
  *&v18[15] = *(a2 + 47);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66FF5B0;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF55C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66FF5D8();
    sub_1D72647EC();
  }
}

void sub_1D638E1A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D6709288;
  v15[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v15);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701BA0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66721CC(0);
    sub_1D5B58B84(qword_1EDF15FE8, sub_1D66721CC, &protocol conformance descriptor for FormatAnimationNodeKeyPathAnimation<A>);
    sub_1D72647EC();
  }
}

void sub_1D638E374(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18 = a2[2];
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6701B78;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701BA0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886698, sub_1D619B420, &type metadata for FormatSizeEquation, type metadata accessor for FormatAnimationNodeKeyPathAnimation);
    sub_1D6701BF4();
    sub_1D72647EC();
  }
}

void sub_1D638E554(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D6701D94;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701DB8();
    v11 = 0uLL;
    sub_1D72647EC();
    v11 = xmmword_1D7279980;
    sub_1D6701E0C();
    sub_1D72647EC();
  }
}

void sub_1D638E6D0(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67090E8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701FA4();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D6701FF8();
    sub_1D72647EC();
  }
}

void sub_1D638E85C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670204C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701FA4();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D6702074();
    sub_1D72647EC();
  }
}

void sub_1D638E9E8(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18 = a2[2];
  v19 = *(a2 + 24);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6709294;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702268();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5FD79B8();
    sub_1D72647EC();
  }
}

void sub_1D638EB90(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D67022BC;
  v15[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v15);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702268();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C80140(0, &qword_1EDF2E1E8, sub_1D5C6F8B4, &type metadata for FormatAccessibilityContent, &type metadata for FormatAccessibilityData);
    sub_1D67022E4();
    sub_1D72647EC();
  }
}

void sub_1D638ED5C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6709294;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702268();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
    sub_1D5D38540();
    sub_1D72647EC();
  }
}

void sub_1D638EF24(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v22 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5 & 1;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v16[2] = sub_1D6709160;
  v16[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v16);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F503C();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F5090();
    sub_1D72647EC();
  }
}

void sub_1D638F0C4(char a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6709160;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F503C();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C5039C(0);
    sub_1D5B58B84(&qword_1EDF127D0, sub_1D5C5039C, &protocol conformance descriptor for FormatValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D638F298(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66F50E4;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F503C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC887838, sub_1D66D3CE4, &type metadata for FormatWebEmbedNodeContent, type metadata accessor for FormatSelectorValue);
    sub_1D66F510C();
    sub_1D72647EC();
  }
}

void sub_1D638F46C(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2 & 1;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6709084;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F519C();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5EE2FA0();
    sub_1D72647EC();
  }
}

void sub_1D638F604(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1 & 1;
  v20 = a1 & 1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D66F51F0;
  v15[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v15);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F519C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F5218();
    sub_1D72647EC();
  }
}

void sub_1D638F79C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66F7D40;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7D68();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5B55CBC();
    sub_1D72647EC();
  }
}

void sub_1D638F930(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v21 = a1 & 1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v8 = a2[3];
  v19 = a2[2];
  v20 = v8;
  sub_1D5D30DC4(0);
  v10 = (v3 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D6709098;
  v15[3] = v13;

  v14 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7D68();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F7DBC();
    sub_1D72647EC();
  }
}

void sub_1D638FAD0(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D670909C;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7E10();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C34D84(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
    sub_1D66F7E64();
    sub_1D72647EC();
  }
}

void sub_1D638FC90(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v18 = a1 & 1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66F7F54;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7E10();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66BA464(0);
    sub_1D5B58B84(&qword_1EC889C10, sub_1D66BA464, &protocol conformance descriptor for FormatSelectorValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D638FE5C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v6 = (v2 + *(v5 + 44));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v11[2] = sub_1D66F7FF8;
  v11[3] = v9;

  v10 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v11);
  if (!v3 && (v10 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F801C();
    v12 = 0uLL;
    sub_1D72647EC();
    v12 = xmmword_1D7279980;
    sub_1D66F8070();
    sub_1D72647EC();
  }
}

void sub_1D638FFE0(char a1, uint64_t a2, double a3)
{
  v16 = a1;
  v15 = a3;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66F8F38;
  v13[3] = v11;

  v12 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F8F60();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
    sub_1D66F8FB4();
    sub_1D72647EC();
  }
}

void sub_1D63901B4(char a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66FA430;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA3DC();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C71DC8(0);
    sub_1D5B58B84(&qword_1EDF12740, sub_1D5C71DC8, &protocol conformance descriptor for FormatValue<A>);
    sub_1D72647EC();
  }
}

void sub_1D6390380(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v16 = a1 & 1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D6703714;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670373C();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC886438, sub_1D666B390, &type metadata for FormatMediaTimingFunctionName, type metadata accessor for FormatValue);
    sub_1D6703790();
    sub_1D72647EC();
  }
}

void sub_1D6390554(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1 & 1;
  v22 = a1 & 1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v16[2] = sub_1D6709104;
  v16[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v16);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670373C();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6703820();
    sub_1D72647EC();
  }
}

void sub_1D63906EC(__int128 *a1, uint64_t a2)
{
  v5 = a1[1];
  v14 = *a1;
  v15 = v5;
  v16 = a1[2];
  v17 = *(a1 + 24);
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v12[2] = sub_1D66FB6A8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FB6CC();
    v13 = 0uLL;
    sub_1D72647EC();
    v13 = xmmword_1D7279980;
    sub_1D6686A30();
    sub_1D72647EC();
  }
}

void sub_1D6390884(__int128 *a1, uint64_t a2)
{
  v5 = a1[5];
  v21 = a1[4];
  v22 = v5;
  v6 = a1[7];
  v23 = a1[6];
  v24 = v6;
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  v8 = a1[3];
  v19 = a1[2];
  v20 = v8;
  sub_1D5D30DC4(0);
  v10 = (v2 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v15[2] = sub_1D66FCAF8;
  v15[3] = v13;

  v14 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v15);
  if (!v3 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCB1C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D6695E40();
    sub_1D72647EC();
  }
}

void sub_1D6390A24(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v21 = a1 & 1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v8 = a2[3];
  v19 = a2[2];
  v20 = v8;
  sub_1D5D30DC4(0);
  v10 = (v3 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D67090DC;
  v15[3] = v13;

  v14 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEE34();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F7DBC();
    sub_1D72647EC();
  }
}

void sub_1D6390BC4(char a1, __int128 *a2, uint64_t a3)
{
  v6 = a1 & 1;
  v27 = a1 & 1;
  v7 = a2[5];
  v23 = a2[4];
  v24 = v7;
  v8 = a2[7];
  v25 = a2[6];
  v26 = v8;
  v9 = a2[1];
  v19 = *a2;
  v20 = v9;
  v10 = a2[3];
  v21 = a2[2];
  v22 = v10;
  sub_1D5D30DC4(0);
  v12 = (v3 + *(v11 + 44));
  v14 = *v12;
  v13 = v12[1];
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v14;
  *(v15 + 32) = v13;
  v17[2] = sub_1D66FEE88;
  v17[3] = v15;

  v16 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v17);
  if (!v4 && (v16 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEE34();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D66FE87C();
    sub_1D72647EC();
  }
}

void sub_1D6390D74(char a1, char a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v13[2] = sub_1D66F4830;
  v13[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v13);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4858();
    v14 = 0uLL;
    sub_1D72647EC();
    v14 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF33F08, sub_1D66F48AC, &type metadata for FormatContentSizeCategoryValue, type metadata accessor for FormatValue);
    sub_1D66F4900();
    sub_1D72647EC();
  }
}

void sub_1D6390F48(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6701240;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701268();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6676B58();
    sub_1D72647EC();
  }
}

void sub_1D63910DC(char a1, __int128 *a2, uint64_t a3)
{
  v19 = a1;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18 = a2[2];
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6709278;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701268();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D67012BC();
    sub_1D72647EC();
  }
}

void sub_1D639127C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v16[2] = sub_1D6709278;
  v16[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v16);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701268();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D6701310();
    sub_1D72647EC();
  }
}

void sub_1D6391414(char a1, __int128 *a2, uint64_t a3)
{
  v18 = a1;
  v7 = a2[1];
  v16 = *a2;
  *v17 = v7;
  *&v17[9] = *(a2 + 25);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D6709278;
  v14[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701268();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D6701364();
    sub_1D72647EC();
  }
}

void sub_1D63915B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 & 1;
  v18 = a1 & 1;
  v16 = a2;
  v17 = a3;
  sub_1D5D30DC4(0);
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v14[2] = sub_1D66F5B74;
  v14[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v14);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5B9C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF2EDA8, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatSwitchValue);
    sub_1D66F5BF0();
    sub_1D72647EC();
  }
}

void sub_1D6391788(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v9 = a1 & 1;
  v22 = a1 & 1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v16[2] = sub_1D670908C;
  v16[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v16);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5B9C();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D66F5C80();
    sub_1D72647EC();
  }
}

void sub_1D6391924(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v20 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v15[2] = sub_1D670919C;
  v15[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v15);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F76F0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66F7744();
    sub_1D72647EC();
  }
}

void sub_1D6391ABC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v22 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  sub_1D5D30DC4(0);
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v16[2] = sub_1D66F7798;
  v16[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v16);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F76F0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EC887418, sub_1D66BE130, &type metadata for FormatTagBinding.Command, type metadata accessor for FormatArraySubscript);
    sub_1D66F77C0();
    sub_1D72647EC();
  }
}