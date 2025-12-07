uint64_t FormatRemoteFont.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D665FF78(0);
  v6 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666000C(0);
  sub_1D5B58B84(&qword_1EDF0C5D0, sub_1D666000C, &unk_1D7321584);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v32;
  v14 = v9;
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

      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D66146B4();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v37 = 0uLL;
  v38 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v31 = v18;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D5CA2FA0();
  sub_1D726431C();
  v26 = v35;
  v30 = xmmword_1D7297410;
  v37 = xmmword_1D7297410;
  v38 = 0;
  v27 = 16.0;
  if (sub_1D726434C())
  {
    v35 = v30;
    v36 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v27 = v33;
  }

  v30 = xmmword_1D72BAA60;
  v37 = xmmword_1D72BAA60;
  v38 = 0;
  if (sub_1D726434C())
  {
    v35 = v30;
    v36 = 0;
    sub_1D5CA8B24();
    sub_1D726431C();
    (*(v13 + 8))(v9, v6);
    v28 = v33;
    v29 = v34;
  }

  else
  {
    (*(v13 + 8))(v9, v6);
    v28 = 0.0;
    v29 = 3072;
  }

  *a2 = v31;
  *(a2 + 8) = v20;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRemoteFont.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v113 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v112 = &v108 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v121 = &v108 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v108 - v14;
  sub_1D666018C(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = *(v1 + 8);
  v114 = *(v1 + 16);
  v23 = *(v1 + 24);
  v110 = *(v1 + 32);
  v111 = *(v1 + 40);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D666000C(0);
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF0C5D0, sub_1D666000C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatRemoteFont, v27, v29, v24, &type metadata for FormatRemoteFont, v27, &type metadata for FormatVersions.JazzkonC, v25, v20, v28, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v116 = v30;
  v117 = v31;
  v119 = v32 + 16;
  v120 = v33;
  (v33)(v15);
  v118 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v130 = v21;
  v131 = v22;
  v128 = 0uLL;
  v129 = 0;
  v34 = &v20[*(v17 + 44)];
  v35 = *v34;
  v36 = *(v34 + 1);
  v127 = 0;
  v37 = swift_allocObject();
  v124 = &v108;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v127;
  *(v37 + 40) = v35;
  *(v37 + 48) = v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  *(&v108 - 4) = sub_1D5B4AA6C;
  *(&v108 - 3) = 0;
  v106 = sub_1D67088C4;
  v107 = v39;
  v127 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v127;
  v115 = v35;
  *(v40 + 40) = v35;
  *(v40 + 48) = v36;
  sub_1D6660220(0);
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EDF03738, sub_1D6660220, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v122 = v42;
  v123 = v43;
  v44 = sub_1D72647CC();
  v127 = 0;
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = v127;
  v46 = *(v17 + 36);
  v47 = v15;
  v125 = v20;
  v48 = &v20[v46];
  v49 = *&v20[v46 + 24];
  v50 = *&v20[v46 + 32];
  v51 = __swift_project_boxed_opaque_existential_1(v48, v49);
  MEMORY[0x1EEE9AC00](v51, v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  *(&v108 - 4) = sub_1D615B4A4;
  *(&v108 - 3) = (&v108 - 6);
  v106 = sub_1D67088C4;
  v107 = v40;
  v55 = v126;
  sub_1D5D2BC70(v47, sub_1D615B49C, v56, sub_1D615B4A4, (&v108 - 6), v49, v50);
  if (v55)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    v57 = v125;
    return sub_1D5D2CFE8(v57, sub_1D666018C);
  }

  v108 = v48;
  v109 = v36;

  v57 = v125;
  sub_1D72647EC();
  sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

  v58 = v121;
  v120(v121, v117, v116);
  swift_storeEnumTagMultiPayload();
  v130 = v114;
  v126 = xmmword_1D728CF30;
  v128 = xmmword_1D728CF30;
  v129 = 0;
  v127 = 0;
  v59 = swift_allocObject();
  v124 = &v108;
  *(v59 + 16) = v126;
  *(v59 + 32) = v127;
  v60 = v115;
  v61 = v109;
  *(v59 + 40) = v115;
  *(v59 + 48) = v61;
  MEMORY[0x1EEE9AC00](v59, v62);
  v114 = 0.0;
  *(&v108 - 4) = sub_1D5B4AA6C;
  *(&v108 - 3) = 0;
  v106 = sub_1D67088C4;
  v107 = v63;
  v127 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = v126;
  *(v64 + 32) = v127;
  *(v64 + 40) = v60;
  *(v64 + 48) = v61;
  swift_retain_n();
  v65 = sub_1D72647CC();
  v127 = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = v126;
  *(v66 + 40) = v127;
  v67 = *(v108 + 3);
  v68 = *(v108 + 4);
  v69 = __swift_project_boxed_opaque_existential_1(v108, v67);
  MEMORY[0x1EEE9AC00](v69, v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v108 - 4) = sub_1D615B4A4;
  *(&v108 - 3) = (&v108 - 6);
  v106 = sub_1D67088C4;
  v107 = v64;
  v73 = v114;
  sub_1D5D2BC70(v58, sub_1D615B49C, v74, sub_1D615B4A4, (&v108 - 6), v67, v68);
  if (v73 != 0.0)
  {
    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v57, sub_1D666018C);
  }

  sub_1D60B27FC();
  sub_1D72647EC();
  sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);

  v75 = v112;
  v76 = v116;
  v77 = v117;
  v120(v112, v117, v116);
  swift_storeEnumTagMultiPayload();
  if (v23 == 16.0)
  {
    sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
    v78 = v113;
LABEL_9:
    v79 = v109;
    v80 = v115;
    goto LABEL_10;
  }

  LOBYTE(v128) = 0;
  v82 = swift_allocObject();
  v126 = xmmword_1D7297410;
  *(v82 + 16) = xmmword_1D7297410;
  *(v82 + 32) = v128;
  *(v82 + 40) = v115;
  *(v82 + 48) = v109;

  v83 = sub_1D72647CC();
  LOBYTE(v128) = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v126;
  *(v84 + 40) = v128;
  v85 = *(v108 + 3);
  v86 = *(v108 + 4);
  v87 = __swift_project_boxed_opaque_existential_1(v108, v85);
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  *(&v108 - 4) = sub_1D5B4AA6C;
  *(&v108 - 3) = 0;
  v106 = sub_1D66602B4;
  v107 = v82;
  v92 = sub_1D5D2F7A4(v75, sub_1D615B49C, v91, sub_1D615B4A4, (&v108 - 6), v85, v86);
  v78 = v113;
  v104 = v92;

  if (v104)
  {
    v128 = v126;
    v129 = 0;
    v130 = v23;
    sub_1D5B578C4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
    v77 = v117;
    v76 = v116;
    goto LABEL_9;
  }

  sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
  v80 = v115;
  v76 = v116;
  v79 = v109;
  v77 = v117;
LABEL_10:
  v120(v78, v77, v76);
  swift_storeEnumTagMultiPayload();
  if ((v111 & 0xFF00) != 0xC00)
  {
    LOBYTE(v128) = 0;
    v93 = swift_allocObject();
    v126 = xmmword_1D72BAA60;
    *(v93 + 16) = xmmword_1D72BAA60;
    *(v93 + 32) = v128;
    *(v93 + 40) = v80;
    *(v93 + 48) = v79;

    v94 = sub_1D72647CC();
    LOBYTE(v128) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    *(v95 + 24) = v126;
    *(v95 + 40) = v128;
    v96 = *(v108 + 3);
    v97 = *(v108 + 4);
    v98 = __swift_project_boxed_opaque_existential_1(v108, v96);
    MEMORY[0x1EEE9AC00](v98, v99);
    MEMORY[0x1EEE9AC00](v100, v101);
    *(&v108 - 4) = sub_1D5B4AA6C;
    *(&v108 - 3) = 0;
    v106 = sub_1D67088C4;
    v107 = v93;
    v103 = sub_1D5D2F7A4(v78, sub_1D615B49C, v102, sub_1D615B4A4, (&v108 - 6), v96, v97);
    v105 = v103;

    if (v105)
    {
      v128 = v126;
      v129 = 0;
      v130 = v110;
      LOWORD(v131) = v111;
      sub_1D5FC8148();
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v57, sub_1D666018C);
}

uint64_t FormatImageTransform.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
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
    v12 = v26;
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
          *(v21 + 16) = &unk_1F50FC158;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6660330();
    v27 = 0uLL;
    sub_1D726431C();
    if (v28)
    {
      if (v28 == 1)
      {
        (*(v11 + 8))(v10, v6);
        v23 = 0;
      }

      else
      {
        (*(v11 + 8))(v10, v6);
        v23 = 1;
      }

      v24 = 1;
    }

    else
    {
      v27 = xmmword_1D7279980;
      sub_1D6660384();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v24 = 0;
      v23 = v28;
    }

    *v12 = v23;
    *(v12 + 8) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageTransform.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatImageTransform, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatImageTransform, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v22, v18, v23, &off_1F51F6C98);
  if (v20 == 1)
  {
    if (v19 == 0.0)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCE38);
      (*(*(v30 - 8) + 16))(v10, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420468(1, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCE38);
      (*(*(v25 - 8) + 16))(v6, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420468(2, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE38);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A3188(0, v14, v19);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatGroupNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v328 = &v306 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v309 = &v306 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v310 = &v306 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v312 = &v306 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v313 = &v306 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v314 = &v306 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v315 = &v306 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v316 = &v306 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v317 = &v306 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v329 = &v306 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v306 - v37;
  sub_1D6660E78(0);
  v326 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v306 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_1D6660FA0(0);
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EDF253E8, sub_1D6660FA0, &unk_1D7321584);
  v330 = v42;
  sub_1D5D2EE70(v4, v46, v48, v43, v4, v46, &type metadata for FormatVersions.StarSky, v44, v42, v47, &off_1F51F6CD8);
  swift_beginAccess();
  v325 = v2;
  v50 = v2[2];
  v49 = v2[3];
  v51 = qword_1EDF31ED0;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD50);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v324 = v53;
  v55(v38);
  v57 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v58 = v328;
  v319 = v50;
  sub_1D725892C();
  v59 = sub_1D725895C();
  v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
  v61 = v49;
  v62 = v38;
  v320 = v55;
  v321 = v52;
  v322 = v56;
  v323 = v57;
  if (v60 != 1)
  {
    sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v58, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v86 = v329;
    goto LABEL_9;
  }

  v318 = v61;
  sub_1D5D35558(v58, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v63 = v326;
  v64 = v330;
  v65 = &v330[*(v326 + 11)];
  v67 = *v65;
  v66 = *(v65 + 1);
  LOBYTE(v366) = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  *(v68 + 32) = v366;
  *(v68 + 40) = v67;
  *(v68 + 48) = v66;
  sub_1D6660F0C(0);
  v70 = v69;
  v71 = sub_1D5B58B84(&qword_1EDF03418, sub_1D6660F0C, MEMORY[0x1E69E6F60]);

  *&v328 = v70;
  v72 = sub_1D72647CC();
  LOBYTE(v366) = 0;
  v73 = swift_allocObject();
  *(v73 + 24) = 0;
  *(v73 + 32) = 0;
  *(v73 + 16) = v72;
  *(v73 + 40) = v366;
  v74 = (v64 + *(v63 + 9));
  v75 = v74[3];
  v76 = v74[4];
  v77 = __swift_project_boxed_opaque_existential_1(v74, v75);
  MEMORY[0x1EEE9AC00](v77, v78);
  MEMORY[0x1EEE9AC00](v79, v80);
  *(&v306 - 4) = sub_1D5B4AA6C;
  *(&v306 - 3) = 0;
  v304 = sub_1D6661120;
  v305 = v68;
  v81 = v327;
  v83 = sub_1D5D2F7A4(v62, sub_1D615B49C, v82, sub_1D615B4A4, (&v306 - 6), v75, v76);
  if (v81)
  {
    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

    v84 = v64;
    return sub_1D5D2CFE8(v84, sub_1D6660E78);
  }

  v114 = v83;
  v327 = v71;

  if ((v114 & 1) == 0)
  {
    v327 = 0;
    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

    v55 = v320;
    v52 = v321;
    goto LABEL_8;
  }

  v366 = 0uLL;
  LOBYTE(v367) = 0;
  *&v355 = v319;
  *(&v355 + 1) = v318;
  sub_1D72647EC();

  sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
  v86 = v329;
  v327 = 0;
  v55 = v320;
  v52 = v321;
LABEL_9:
  v87 = v325[4];
  v88 = v325[5];
  (v55)(v86, v324, v52);
  swift_storeEnumTagMultiPayload();
  *&v355 = v87;
  *(&v355 + 1) = v88;
  v328 = xmmword_1D728CF30;
  v366 = xmmword_1D728CF30;
  LOBYTE(v367) = 0;
  v89 = v326;
  v90 = v330;
  v91 = &v330[*(v326 + 11)];
  v93 = *v91;
  v92 = *(v91 + 1);
  LOBYTE(v342) = 0;
  v94 = swift_allocObject();
  v319 = &v306;
  *(v94 + 16) = v328;
  *(v94 + 32) = v342;
  *(v94 + 40) = v93;
  *(v94 + 48) = v92;
  MEMORY[0x1EEE9AC00](v94, v95);
  v318 = &v306 - 6;
  *(&v306 - 4) = sub_1D5B4AA6C;
  *(&v306 - 3) = 0;
  v304 = sub_1D67088C8;
  v305 = v96;
  LOBYTE(v342) = 0;
  v97 = swift_allocObject();
  *(v97 + 16) = v328;
  *(v97 + 32) = v342;
  v308 = v93;
  *(v97 + 40) = v93;
  *(v97 + 48) = v92;
  sub_1D6660F0C(0);
  v99 = v98;
  v100 = sub_1D5B58B84(&qword_1EDF03418, sub_1D6660F0C, MEMORY[0x1E69E6F60]);
  v307 = v92;
  swift_retain_n();
  v311 = v100;
  v101 = sub_1D72647CC();
  LOBYTE(v342) = 0;
  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  *(v102 + 24) = v328;
  *(v102 + 40) = v342;
  v103 = &v90[*(v89 + 9)];
  v104 = *(v103 + 3);
  v105 = *(v103 + 4);
  v106 = __swift_project_boxed_opaque_existential_1(v103, v104);
  MEMORY[0x1EEE9AC00](v106, v107);
  MEMORY[0x1EEE9AC00](v108, v109);
  v110 = v318;
  *(&v306 - 4) = sub_1D615B4A4;
  *(&v306 - 3) = v110;
  v304 = sub_1D67088C8;
  v305 = v97;
  v111 = v329;
  v112 = v327;
  sub_1D5D2BC70(v329, sub_1D615B49C, v113, sub_1D615B4A4, (&v306 - 6), v104, v105);
  if (v112)
  {
    sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);

    v84 = v330;
    return sub_1D5D2CFE8(v84, sub_1D6660E78);
  }

  *&v328 = v103;

  sub_1D72647EC();
  v115 = v99;
  sub_1D5D2CFE8(v329, type metadata accessor for FormatVersionRequirement);

  v116 = v325;
  swift_beginAccess();
  v117 = v116[6];
  v118 = v317;
  v119 = v324;
  (v320)(v317, v324, v321);
  swift_storeEnumTagMultiPayload();
  v120 = *(v117 + 16);
  v306 = v115;
  if (v120)
  {
    LOBYTE(v366) = 0;
    v121 = swift_allocObject();
    v329 = xmmword_1D7297410;
    *(v121 + 16) = xmmword_1D7297410;
    *(v121 + 32) = v366;
    *(v121 + 40) = v308;
    *(v121 + 48) = v307;

    v122 = sub_1D72647CC();
    LOBYTE(v366) = 0;
    v123 = swift_allocObject();
    *(v123 + 16) = v122;
    *(v123 + 24) = v329;
    *(v123 + 40) = v366;
    v124 = *(v328 + 24);
    v125 = *(v328 + 32);
    v126 = __swift_project_boxed_opaque_existential_1(v328, v124);
    MEMORY[0x1EEE9AC00](v126, v127);
    MEMORY[0x1EEE9AC00](v128, v129);
    *(&v306 - 4) = sub_1D5B4AA6C;
    *(&v306 - 3) = 0;
    v304 = sub_1D67088C8;
    v305 = v121;
    v131 = sub_1D5D2F7A4(v118, sub_1D615B49C, v130, sub_1D615B4A4, (&v306 - 6), v124, v125);
    v132 = v131;

    if (v132)
    {
      v366 = v329;
      LOBYTE(v367) = 0;
      *&v355 = v117;
      sub_1D5C34D84(0, &qword_1EC886190, &type metadata for FormatGroupNodeStyle.Selector, MEMORY[0x1E69E62F8]);
      sub_1D6661348();
      sub_1D72647EC();
      v119 = v324;
      v116 = v325;
      v133 = v307;
      v134 = v316;
      v327 = 0;

      sub_1D5D2CFE8(v317, type metadata accessor for FormatVersionRequirement);
      goto LABEL_22;
    }

    v327 = 0;
    sub_1D5D2CFE8(v317, type metadata accessor for FormatVersionRequirement);

    v119 = v324;
    v116 = v325;
  }

  else
  {
    v327 = 0;
    sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
  }

  v133 = v307;
  v134 = v316;
LABEL_22:
  v135 = v116[7];
  v136 = v119;
  v138 = v320;
  v137 = v321;
  (v320)(v134, v136, v321);
  swift_storeEnumTagMultiPayload();
  v329 = xmmword_1D72BAA60;
  v366 = xmmword_1D72BAA60;
  LOBYTE(v367) = 0;
  LOBYTE(v355) = 0;
  v139 = swift_allocObject();
  v141 = v139;
  *(v139 + 16) = v329;
  *(v139 + 32) = v355;
  v142 = v308;
  *(v139 + 40) = v308;
  *(v139 + 48) = v133;
  if (!v135)
  {

    sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);

    v156 = v324;
    v157 = v325;
    v158 = v315;
    v159 = v133;
    goto LABEL_29;
  }

  v326 = &v306;
  *&v355 = v135;
  MEMORY[0x1EEE9AC00](v139, v140);
  *(&v306 - 4) = sub_1D5B4AA6C;
  *(&v306 - 3) = 0;
  v304 = sub_1D67088C8;
  v305 = v141;
  LOBYTE(v342) = 0;
  v143 = swift_allocObject();
  *(v143 + 16) = v329;
  *(v143 + 32) = v342;
  *(v143 + 40) = v142;
  *(v143 + 48) = v133;
  swift_retain_n();

  v144 = sub_1D72647CC();
  LOBYTE(v342) = 0;
  v145 = swift_allocObject();
  *(v145 + 16) = v144;
  *(v145 + 24) = v329;
  *(v145 + 40) = v342;
  v146 = *(v328 + 24);
  v147 = *(v328 + 32);
  v148 = __swift_project_boxed_opaque_existential_1(v328, v146);
  MEMORY[0x1EEE9AC00](v148, v149);
  MEMORY[0x1EEE9AC00](v150, v151);
  *(&v306 - 4) = sub_1D615B4A4;
  *(&v306 - 3) = (&v306 - 6);
  v304 = sub_1D67088C8;
  v305 = v143;
  v152 = v327;
  v154 = sub_1D5D2F7A4(v134, sub_1D615B49C, v153, sub_1D615B4A4, (&v306 - 6), v146, v147);
  if (!v152)
  {
    v160 = v154;

    if (v160)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      sub_1D72647EC();
      v159 = v307;
      v157 = v325;
      v158 = v315;
      v327 = 0;
      v161 = v324;

      sub_1D5D2CFE8(v316, type metadata accessor for FormatVersionRequirement);
      v156 = v161;
      v138 = v320;
      v137 = v321;
    }

    else
    {
      v327 = 0;

      sub_1D5D2CFE8(v316, type metadata accessor for FormatVersionRequirement);
      v138 = v320;
      v137 = v321;
      v159 = v307;
      v156 = v324;
      v157 = v325;
      v158 = v315;
    }

LABEL_29:
    v162 = v157[8];
    v138(v158, v156, v137);
    swift_storeEnumTagMultiPayload();
    v329 = xmmword_1D72BAA70;
    v366 = xmmword_1D72BAA70;
    LOBYTE(v367) = 0;
    LOBYTE(v355) = 0;
    v163 = swift_allocObject();
    v165 = v163;
    *(v163 + 16) = v329;
    *(v163 + 32) = v355;
    v166 = v308;
    *(v163 + 40) = v308;
    *(v163 + 48) = v159;
    if (v162)
    {
      v326 = &v306;
      *&v355 = v162;
      MEMORY[0x1EEE9AC00](v163, v164);
      *(&v306 - 4) = sub_1D5B4AA6C;
      *(&v306 - 3) = 0;
      v304 = sub_1D67088C8;
      v305 = v165;
      LOBYTE(v342) = 0;
      v167 = swift_allocObject();
      *(v167 + 16) = v329;
      *(v167 + 32) = v342;
      *(v167 + 40) = v166;
      *(v167 + 48) = v159;
      swift_retain_n();

      v168 = sub_1D72647CC();
      LOBYTE(v342) = 0;
      v169 = swift_allocObject();
      *(v169 + 16) = v168;
      *(v169 + 24) = v329;
      *(v169 + 40) = v342;
      v170 = v159;
      v171 = *(v328 + 24);
      v172 = *(v328 + 32);
      v173 = __swift_project_boxed_opaque_existential_1(v328, v171);
      MEMORY[0x1EEE9AC00](v173, v174);
      MEMORY[0x1EEE9AC00](v175, v176);
      *(&v306 - 4) = sub_1D615B4A4;
      *(&v306 - 3) = (&v306 - 6);
      v304 = sub_1D67088C8;
      v305 = v167;
      v177 = v327;
      v179 = sub_1D5D2F7A4(v315, sub_1D615B49C, v178, sub_1D615B4A4, (&v306 - 6), v171, v172);
      if (v177)
      {

        v180 = v330;
        sub_1D5D2CFE8(v315, type metadata accessor for FormatVersionRequirement);
        v84 = v180;
        return sub_1D5D2CFE8(v84, sub_1D6660E78);
      }

      v181 = v179;
      v159 = v170;

      if (v181)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v182 = v315;
        v327 = 0;

        v183 = v182;
      }

      else
      {
        v327 = 0;

        v183 = v315;
      }

      sub_1D5D2CFE8(v183, type metadata accessor for FormatVersionRequirement);
      v138 = v320;
      v137 = v321;
    }

    else
    {

      sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
    }

    v184 = v325[9];
    v326 = v325[10];
    v185 = *(v325 + 88);
    v186 = v314;
    v138(v314, v324, v137);
    swift_storeEnumTagMultiPayload();
    v329 = xmmword_1D72BAA80;
    v388 = xmmword_1D72BAA80;
    v389 = 0;
    LOBYTE(v366) = 0;
    v187 = swift_allocObject();
    v189 = v187;
    *(v187 + 16) = v329;
    *(v187 + 32) = v366;
    v190 = v308;
    *(v187 + 40) = v308;
    *(v187 + 48) = v159;
    if (v185 <= 0xFD)
    {
      v319 = &v306;
      v199 = v184;
      v385 = v184;
      v200 = v326;
      v386 = v326;
      v387 = v185;
      MEMORY[0x1EEE9AC00](v187, v188);
      v318 = &v306 - 6;
      *(&v306 - 4) = sub_1D5B4AA6C;
      *(&v306 - 3) = 0;
      v304 = sub_1D67088C8;
      v305 = v189;
      LOBYTE(v366) = 0;
      v201 = swift_allocObject();
      *(v201 + 16) = v329;
      *(v201 + 32) = v366;
      *(v201 + 40) = v190;
      *(v201 + 48) = v159;
      swift_retain_n();
      sub_1D5ED34B0(v199, v200, v185);
      v202 = sub_1D72647CC();
      LOBYTE(v366) = 0;
      v203 = swift_allocObject();
      *(v203 + 16) = v202;
      *(v203 + 24) = v329;
      *(v203 + 40) = v366;
      v204 = *(v328 + 24);
      v205 = *(v328 + 32);
      v206 = __swift_project_boxed_opaque_existential_1(v328, v204);
      MEMORY[0x1EEE9AC00](v206, v207);
      MEMORY[0x1EEE9AC00](v208, v209);
      v210 = v318;
      *(&v306 - 4) = sub_1D615B4A4;
      *(&v306 - 3) = v210;
      v304 = sub_1D67088C8;
      v305 = v201;
      v211 = v327;
      v213 = sub_1D5D2F7A4(v314, sub_1D615B49C, v212, sub_1D615B4A4, (&v306 - 6), v204, v205);
      if (v211)
      {

        v214 = v330;
        v215 = v314;
        sub_1D5ED34A0(v385, v386, v387);
        goto LABEL_43;
      }

      v229 = v213;

      if (v229)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v230 = v314;
        v327 = 0;

        sub_1D5ED34A0(v385, v386, v387);
        sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v327 = 0;

        sub_1D5ED34A0(v385, v386, v387);
        sub_1D5D2CFE8(v314, type metadata accessor for FormatVersionRequirement);
      }

      v138 = v320;
      v137 = v321;
    }

    else
    {

      sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
    }

    v191 = *(v325 + 8);
    v382 = *(v325 + 9);
    v383 = *(v325 + 10);
    v384 = *(v325 + 176);
    v192 = *(v325 + 7);
    v379 = *(v325 + 6);
    v380 = v192;
    v381 = v191;
    v193 = v313;
    v138(v313, v324, v137);
    swift_storeEnumTagMultiPayload();
    v329 = xmmword_1D72BAA90;
    v342 = xmmword_1D72BAA90;
    LOBYTE(v343) = 0;
    LOBYTE(v366) = 0;
    v194 = swift_allocObject();
    v196 = v194;
    *(v194 + 16) = v329;
    *(v194 + 32) = v366;
    v197 = v308;
    *(v194 + 40) = v308;
    *(v194 + 48) = v159;
    if (v384 == 254)
    {

      v198 = v159;
    }

    else
    {
      v326 = &v306;
      v368 = v381;
      v369 = v382;
      v370 = v383;
      LOBYTE(v371) = v384;
      v366 = v379;
      v367 = v380;
      MEMORY[0x1EEE9AC00](v194, v195);
      *(&v306 - 4) = sub_1D5B4AA6C;
      *(&v306 - 3) = 0;
      v304 = sub_1D67088C8;
      v305 = v196;
      LOBYTE(v355) = 0;
      v217 = swift_allocObject();
      *(v217 + 16) = v329;
      *(v217 + 32) = v355;
      *(v217 + 40) = v197;
      *(v217 + 48) = v159;
      swift_retain_n();
      sub_1D5D355B8(&v379, &v355, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v218 = sub_1D72647CC();
      LOBYTE(v355) = 0;
      v219 = swift_allocObject();
      *(v219 + 16) = v218;
      *(v219 + 24) = v329;
      *(v219 + 40) = v355;
      v220 = *(v328 + 24);
      v221 = *(v328 + 32);
      v222 = __swift_project_boxed_opaque_existential_1(v328, v220);
      MEMORY[0x1EEE9AC00](v222, v223);
      MEMORY[0x1EEE9AC00](v224, v225);
      *(&v306 - 4) = sub_1D615B4A4;
      *(&v306 - 3) = (&v306 - 6);
      v304 = sub_1D67088C8;
      v305 = v217;
      v226 = v327;
      sub_1D5D2F7A4(v193, sub_1D615B49C, v227, sub_1D615B4A4, (&v306 - 6), v220, v221);
      if (v226)
      {

        v357 = v368;
        v358 = v369;
        v359 = v370;
        LOBYTE(v360) = v371;
        v355 = v366;
        v356 = v367;
        sub_1D601144C(&v355);
        v228 = v330;
        sub_1D5D2CFE8(v313, type metadata accessor for FormatVersionRequirement);
        v84 = v228;
        return sub_1D5D2CFE8(v84, sub_1D6660E78);
      }

      sub_1D6661204();
      sub_1D72647EC();
      v327 = 0;

      v357 = v368;
      v358 = v369;
      v359 = v370;
      LOBYTE(v360) = v371;
      v355 = v366;
      v356 = v367;
      sub_1D601144C(&v355);
      v138 = v320;
      v137 = v321;
      v198 = v307;
      v193 = v313;
    }

    sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
    v231 = *(v325 + 177);
    v232 = v312;
    v138(v312, v324, v137);
    swift_storeEnumTagMultiPayload();
    v329 = xmmword_1D72BAAA0;
    v366 = xmmword_1D72BAAA0;
    LOBYTE(v367) = 0;
    LOBYTE(v355) = 0;
    v233 = swift_allocObject();
    v235 = v233;
    *(v233 + 16) = v329;
    *(v233 + 32) = v355;
    v236 = v308;
    *(v233 + 40) = v308;
    *(v233 + 48) = v198;
    if (v231 == 2)
    {

      v237 = v327;
      v238 = v232;
    }

    else
    {
      v326 = &v306;
      LOBYTE(v355) = v231 & 1;
      MEMORY[0x1EEE9AC00](v233, v234);
      *(&v306 - 4) = sub_1D5B4AA6C;
      *(&v306 - 3) = 0;
      v304 = sub_1D67088C8;
      v305 = v235;
      LOBYTE(v342) = 0;
      v251 = swift_allocObject();
      *(v251 + 16) = v329;
      *(v251 + 32) = v342;
      *(v251 + 40) = v236;
      *(v251 + 48) = v198;
      swift_retain_n();
      v252 = sub_1D72647CC();
      LOBYTE(v342) = 0;
      v253 = swift_allocObject();
      *(v253 + 16) = v252;
      *(v253 + 24) = v329;
      *(v253 + 40) = v342;
      v254 = *(v328 + 24);
      v255 = *(v328 + 32);
      v256 = __swift_project_boxed_opaque_existential_1(v328, v254);
      MEMORY[0x1EEE9AC00](v256, v257);
      MEMORY[0x1EEE9AC00](v258, v259);
      *(&v306 - 4) = sub_1D615B4A4;
      *(&v306 - 3) = (&v306 - 6);
      v304 = sub_1D67088C8;
      v305 = v251;
      v260 = v327;
      v262 = sub_1D5D2F7A4(v232, sub_1D615B49C, v261, sub_1D615B4A4, (&v306 - 6), v254, v255);
      v237 = v260;
      if (v260)
      {
        sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);

        v84 = v330;
        return sub_1D5D2CFE8(v84, sub_1D6660E78);
      }

      v275 = v262;

      if (v275)
      {
        sub_1D72647EC();
        v239 = v325;
        v238 = v312;
LABEL_55:
        v240 = v237;
        sub_1D5D2CFE8(v238, type metadata accessor for FormatVersionRequirement);

        v241 = *(v239 + 178);
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v242 = v321;
        v243 = __swift_project_value_buffer(v321, qword_1EDFFCDE0);
        v244 = v310;
        (v320)(v310, v243, v242);
        swift_storeEnumTagMultiPayload();
        v329 = xmmword_1D72BAAB0;
        v377 = xmmword_1D72BAAB0;
        v378 = 0;
        LOBYTE(v366) = 0;
        v245 = swift_allocObject();
        v247 = v245;
        *(v245 + 16) = v329;
        *(v245 + 32) = v366;
        v249 = v307;
        v248 = v308;
        *(v245 + 40) = v308;
        *(v245 + 48) = v249;
        if (v241 == 2)
        {

          v250 = v244;
        }

        else
        {
          v326 = &v306;
          v390 = v241 & 1;
          MEMORY[0x1EEE9AC00](v245, v246);
          v327 = v237;
          *(&v306 - 4) = sub_1D5B4AA6C;
          *(&v306 - 3) = 0;
          v304 = sub_1D67088C8;
          v305 = v247;
          LOBYTE(v366) = 0;
          v263 = swift_allocObject();
          *(v263 + 16) = v329;
          *(v263 + 32) = v366;
          *(v263 + 40) = v248;
          *(v263 + 48) = v249;
          swift_retain_n();
          v264 = sub_1D72647CC();
          LOBYTE(v366) = 0;
          v265 = swift_allocObject();
          *(v265 + 16) = v264;
          *(v265 + 24) = v329;
          *(v265 + 40) = v366;
          v266 = *(v328 + 24);
          v267 = *(v328 + 32);
          v268 = __swift_project_boxed_opaque_existential_1(v328, v266);
          MEMORY[0x1EEE9AC00](v268, v269);
          MEMORY[0x1EEE9AC00](v270, v271);
          *(&v306 - 4) = sub_1D615B4A4;
          *(&v306 - 3) = (&v306 - 6);
          v304 = sub_1D67088C8;
          v305 = v263;
          v272 = v327;
          v274 = sub_1D5D2F7A4(v244, sub_1D615B49C, v273, sub_1D615B4A4, (&v306 - 6), v266, v267);
          v240 = v272;
          if (v272)
          {
            sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);

            v84 = v330;
            return sub_1D5D2CFE8(v84, sub_1D6660E78);
          }

          v276 = v274;

          if (v276)
          {
            sub_1D72647EC();
            v240 = 0;
          }

          v250 = v310;
          v249 = v307;
        }

        v277 = v328;
        sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);

        v278 = *(v325 + 37);
        v279 = *(v325 + 41);
        v363 = *(v325 + 39);
        v364 = v279;
        v365 = *(v325 + 172);
        v280 = *(v325 + 33);
        v281 = *(v325 + 35);
        v359 = *(v325 + 31);
        v360 = v280;
        v282 = *(v325 + 29);
        v361 = v281;
        v362 = v278;
        v283 = *(v325 + 25);
        v355 = *(v325 + 23);
        v356 = v283;
        v357 = *(v325 + 27);
        v358 = v282;
        v215 = v309;
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v284 = v321;
        v285 = __swift_project_value_buffer(v321, qword_1EDFFCE38);
        (v320)(v215, v285, v284);
        swift_storeEnumTagMultiPayload();
        v329 = xmmword_1D72BAAC0;
        v353 = xmmword_1D72BAAC0;
        v354 = 0;
        LOBYTE(v342) = 0;
        v286 = swift_allocObject();
        *(v286 + 16) = v329;
        *(v286 + 32) = v342;
        v287 = v308;
        *(v286 + 40) = v308;
        *(v286 + 48) = v249;
        v374 = v363;
        v375 = v364;
        v376 = v365;
        v370 = v359;
        v371 = v360;
        v372 = v361;
        v373 = v362;
        v366 = v355;
        v367 = v356;
        v368 = v357;
        v369 = v358;
        v288 = sub_1D60081E0(&v366);
        if (v288 == 1)
        {

          v214 = v330;
        }

        else
        {
          *&v328 = &v306;
          v352 = v365;
          v350 = v363;
          v351 = v364;
          v346 = v359;
          v347 = v360;
          v348 = v361;
          v349 = v362;
          v342 = v355;
          v343 = v356;
          v344 = v357;
          v345 = v358;
          MEMORY[0x1EEE9AC00](v288, v289);
          v327 = v240;
          *(&v306 - 4) = sub_1D5B4AA6C;
          *(&v306 - 3) = 0;
          v304 = sub_1D67088C8;
          v305 = v286;
          LOBYTE(v331) = 0;
          v290 = swift_allocObject();
          *(v290 + 16) = v329;
          *(v290 + 32) = v331;
          *(v290 + 40) = v287;
          *(v290 + 48) = v249;
          swift_retain_n();
          sub_1D5D355B8(&v355, &v331, &qword_1EDF2D860, &type metadata for FormatVisualEffect, MEMORY[0x1E69E6720], sub_1D5C34D84);
          v291 = v215;
          v292 = sub_1D72647CC();
          LOBYTE(v331) = 0;
          v293 = swift_allocObject();
          *(v293 + 16) = v292;
          *(v293 + 24) = v329;
          *(v293 + 40) = v331;
          v294 = v277[3];
          v295 = v277[4];
          v296 = __swift_project_boxed_opaque_existential_1(v277, v294);
          MEMORY[0x1EEE9AC00](v296, v297);
          MEMORY[0x1EEE9AC00](v298, v299);
          *(&v306 - 4) = sub_1D615B4A4;
          *(&v306 - 3) = (&v306 - 6);
          v304 = sub_1D67088C8;
          v305 = v290;
          v300 = v327;
          v302 = sub_1D5D2F7A4(v291, sub_1D615B49C, v301, sub_1D615B4A4, (&v306 - 6), v294, v295);
          if (v300)
          {

            v339 = v350;
            v340 = v351;
            v341 = v352;
            v335 = v346;
            v336 = v347;
            v337 = v348;
            v338 = v349;
            v331 = v342;
            v332 = v343;
            v333 = v344;
            v334 = v345;
            sub_1D60113F8(&v331);
            v214 = v330;
            v216 = v309;
            goto LABEL_44;
          }

          v303 = v302;

          if (v303)
          {
            sub_1D66611B0();
            v214 = v330;
            sub_1D72647EC();

            v339 = v350;
            v340 = v351;
            v341 = v352;
            v335 = v346;
            v336 = v347;
            v337 = v348;
            v338 = v349;
            v331 = v342;
            v332 = v343;
            v333 = v344;
            v334 = v345;
            sub_1D60113F8(&v331);
          }

          else
          {

            v339 = v350;
            v340 = v351;
            v341 = v352;
            v335 = v346;
            v336 = v347;
            v337 = v348;
            v338 = v349;
            v331 = v342;
            v332 = v343;
            v333 = v344;
            v334 = v345;
            sub_1D60113F8(&v331);
            v214 = v330;
          }

          v215 = v309;
        }

LABEL_43:
        v216 = v215;
LABEL_44:
        sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);
        v84 = v214;
        return sub_1D5D2CFE8(v84, sub_1D6660E78);
      }

      v238 = v312;
    }

    v239 = v325;
    goto LABEL_55;
  }

  v155 = v330;

  sub_1D5D2CFE8(v316, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v155, sub_1D6660E78);
}

uint64_t FormatGroupNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  sub_1D66613E4(0);
  v6 = v5;
  v80 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6661478(0);
  sub_1D5B58B84(&qword_1EC8861C8, sub_1D6661478, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v39 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v10 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_1D7264AFC();
  LOBYTE(v10) = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v12 = v6;
  v13 = v80;
  v14 = v9;
  if (v10)
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

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6614B3C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v9, v12);
      a1 = v48;
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v55 = 0uLL;
  LOBYTE(v56) = 0;
  sub_1D726431C();
  v18 = v74;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v55 = xmmword_1D728CF30;
  LOBYTE(v56) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v47 = v18;
  v24 = v6;
  v25 = v74;
  v74 = xmmword_1D7297410;
  LOBYTE(v75) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v45 = *(&v55 + 1);
  v26 = v55;
  v46 = v56;
  v72 = xmmword_1D72BAA60;
  v73 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v43 = v25;
  v44 = v26;
  v68 = v76;
  v69 = v77;
  v70 = v78;
  v71 = v79;
  v66 = v74;
  v67 = v75;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v55 = xmmword_1D72BAA70;
  LOBYTE(v56) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v42 = v53;
  v55 = xmmword_1D72BAA80;
  LOBYTE(v56) = 0;
  v27 = sub_1D726423C();
  v28 = v45;
  v41 = v27;
  v55 = xmmword_1D72BAA90;
  LOBYTE(v56) = 0;
  v40 = sub_1D726423C();
  v53 = xmmword_1D72BAAA0;
  v54 = 0;
  sub_1D6661658();
  sub_1D726427C();
  v29 = (v13 + 8);
  v30 = v28;
  v31 = v44;
  (*v29)(v14, v24);
  *&v51[39] = v68;
  *&v51[55] = v69;
  *&v51[71] = v70;
  v51[87] = v71;
  *&v51[7] = v66;
  *&v51[23] = v67;
  *&v50[150] = v64;
  *&v50[134] = v63;
  *&v50[118] = v62;
  *&v50[102] = v61;
  *&v50[86] = v60;
  *&v50[70] = v59;
  *&v50[54] = v58;
  *&v50[6] = v55;
  *&v50[22] = v56;
  *&v50[38] = v57;
  v32 = v49;
  *(v49 + 73) = *&v51[32];
  *(v32 + 89) = *&v51[48];
  *(v32 + 105) = *&v51[64];
  *(v32 + 41) = *v51;
  *(v32 + 57) = *&v51[16];
  v33 = *&v50[48];
  *(v32 + 178) = *&v50[32];
  v34 = *v50;
  *(v32 + 162) = *&v50[16];
  *(v32 + 146) = v34;
  v35 = *&v50[112];
  *(v32 + 242) = *&v50[96];
  v36 = *&v50[64];
  *(v32 + 226) = *&v50[80];
  *(v32 + 210) = v36;
  *(v32 + 194) = v33;
  v37 = *&v50[128];
  *(v32 + 290) = *&v50[144];
  *&v50[166] = v65;
  *v32 = v47;
  *(v32 + 8) = *(&v18 + 1);
  *(v32 + 16) = v43;
  *(v32 + 24) = v31;
  *(v32 + 32) = v30;
  *(v32 + 40) = v46;
  *(v32 + 121) = *&v51[80];
  v38 = *v52;
  *(v32 + 132) = *&v52[3];
  *(v32 + 129) = v38;
  *(v32 + 136) = v42;
  LOBYTE(v38) = v40;
  *(v32 + 144) = v41;
  *(v32 + 145) = v38;
  *(v32 + 306) = *&v50[160];
  *(v32 + 258) = v35;
  *(v32 + 274) = v37;
  v39 = v48;
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t FormatGroupNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v241 = &v229 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v234 = &v229 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v236 = &v229 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v238 = &v229 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v242 = &v229 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v243 = &v229 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v244 = (&v229 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v229 - v26;
  sub_1D66616AC(0);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v229 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v1 + 8);
  *&v257 = *v1;
  v34 = *(v1 + 24);
  v248 = *(v1 + 16);
  v239 = *(v1 + 32);
  v240 = v34;
  v317 = *(v1 + 40);
  v35 = *(v1 + 96);
  v302 = *(v1 + 80);
  v303 = v35;
  v304 = *(v1 + 112);
  v305 = *(v1 + 128);
  v36 = *(v1 + 64);
  v300 = *(v1 + 48);
  v301 = v36;
  v237 = *(v1 + 136);
  v235 = *(v1 + 144);
  v233 = *(v1 + 145);
  v316 = *(v1 + 312);
  v37 = *(v1 + 296);
  v38 = *(v1 + 264);
  v314 = *(v1 + 280);
  v315 = v37;
  v312 = *(v1 + 248);
  v313 = v38;
  v39 = *(v1 + 232);
  v310 = *(v1 + 216);
  v311 = v39;
  v40 = *(v1 + 200);
  v308 = *(v1 + 184);
  v309 = v40;
  v41 = *(v1 + 168);
  v306 = *(v1 + 152);
  v307 = v41;
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D6661478(0);
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EC8861C8, sub_1D6661478, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatGroupNodeStyle.Selector, v45, v47, v42, &type metadata for FormatGroupNodeStyle.Selector, v45, &type metadata for FormatVersions.StarSky, v43, v32, v46, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v48 = sub_1D725BD1C();
  v49 = __swift_project_value_buffer(v48, qword_1EDFFCD50);
  v50 = *(v48 - 8);
  v51 = *(v50 + 16);
  v251 = v49;
  v246 = v48;
  v247 = v51;
  v249 = v50 + 16;
  v51(v27);
  v250 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v269 = v257;
  *(&v269 + 1) = v33;
  v282 = 0uLL;
  LOBYTE(v283) = 0;
  v52 = &v32[*(v29 + 44)];
  v54 = *v52;
  v53 = *(v52 + 1);
  *&v257 = v27;
  LOBYTE(v258) = 0;
  v55 = swift_allocObject();
  v255 = &v229;
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v258;
  *(v55 + 40) = v54;
  *(v55 + 48) = v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v229 - 4) = sub_1D5B4AA6C;
  *(&v229 - 3) = 0;
  v227 = sub_1D67088CC;
  v228 = v57;
  LOBYTE(v258) = 0;
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = v258;
  v252 = v54;
  *(v58 + 40) = v54;
  *(v58 + 48) = v53;
  sub_1D6661740(0);
  v60 = v59;
  v61 = sub_1D5B58B84(&qword_1EC8861E0, sub_1D6661740, MEMORY[0x1E69E6F60]);
  v245 = v53;
  swift_retain_n();
  v253 = v60;
  v254 = v61;
  v62 = sub_1D72647CC();
  LOBYTE(v258) = 0;
  v63 = swift_allocObject();
  *(v63 + 24) = 0;
  *(v63 + 32) = 0;
  *(v63 + 16) = v62;
  *(v63 + 40) = v258;
  v64 = v32;
  v65 = &v32[*(v29 + 36)];
  v66 = *(v65 + 3);
  v67 = *(v65 + 4);
  v68 = __swift_project_boxed_opaque_existential_1(v65, v66);
  MEMORY[0x1EEE9AC00](v68, v69);
  MEMORY[0x1EEE9AC00](v70, v71);
  *(&v229 - 4) = sub_1D615B4A4;
  *(&v229 - 3) = (&v229 - 6);
  v227 = sub_1D67088CC;
  v228 = v58;
  v72 = v256;
  v73 = v257;
  sub_1D5D2BC70(v257, sub_1D615B49C, v74, sub_1D615B4A4, (&v229 - 6), v66, v67);
  if (!v72)
  {
    v256 = v65;

    sub_1D5D3E60C();
    sub_1D72647EC();
    v255 = 0;
    v232 = v64;
    sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);

    v77 = v244;
    v78 = v246;
    v79 = v247;
    v247(v244, v251, v246);
    swift_storeEnumTagMultiPayload();
    v257 = xmmword_1D728CF30;
    v282 = xmmword_1D728CF30;
    LOBYTE(v283) = 0;
    LOBYTE(v269) = 0;
    v80 = swift_allocObject();
    v82 = v80;
    *(v80 + 16) = v257;
    *(v80 + 32) = v269;
    v83 = v252;
    v84 = v245;
    *(v80 + 40) = v252;
    *(v80 + 48) = v84;
    if (v248)
    {
      v231 = &v229;
      *&v269 = v248;
      MEMORY[0x1EEE9AC00](v80, v81);
      v230 = &v229 - 6;
      *(&v229 - 4) = sub_1D5B4AA6C;
      *(&v229 - 3) = 0;
      v227 = sub_1D67088CC;
      v228 = v82;
      LOBYTE(v258) = 0;
      v85 = swift_allocObject();
      *(v85 + 16) = v257;
      *(v85 + 32) = v258;
      *(v85 + 40) = v83;
      *(v85 + 48) = v84;
      swift_retain_n();

      v86 = sub_1D72647CC();
      LOBYTE(v258) = 0;
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v257;
      *(v87 + 40) = v258;
      v88 = *(v256 + 3);
      v89 = *(v256 + 4);
      v90 = __swift_project_boxed_opaque_existential_1(v256, v88);
      MEMORY[0x1EEE9AC00](v90, v91);
      MEMORY[0x1EEE9AC00](v92, v93);
      v94 = v230;
      *(&v229 - 4) = sub_1D615B4A4;
      *(&v229 - 3) = v94;
      v227 = sub_1D67088CC;
      v228 = v85;
      v95 = v255;
      v97 = sub_1D5D2F7A4(v77, sub_1D615B49C, v96, sub_1D615B4A4, (&v229 - 6), v88, v89);
      v98 = v77;
      if (v95)
      {

        v99 = v232;
LABEL_21:
        sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
LABEL_49:
        v75 = v99;
        return sub_1D5D2CFE8(v75, sub_1D66616AC);
      }

      v100 = v97;

      if (v100)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v78 = v246;
        v79 = v247;
        v255 = 0;

        sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);
        v84 = v245;
      }

      else
      {
        v255 = 0;

        sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
        v84 = v245;
        v78 = v246;
        v79 = v247;
      }
    }

    else
    {

      sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
    }

    v101 = v243;
    v79(v243, v251, v78);
    swift_storeEnumTagMultiPayload();
    v257 = xmmword_1D7297410;
    v298 = xmmword_1D7297410;
    v299 = 0;
    LOBYTE(v282) = 0;
    v102 = swift_allocObject();
    v104 = v102;
    *(v102 + 16) = v257;
    *(v102 + 32) = v282;
    *(v102 + 40) = v252;
    *(v102 + 48) = v84;
    if (v317 <= 0xFD)
    {
      v248 = &v229;
      v127 = v240;
      v295 = v240;
      v128 = v84;
      v129 = v239;
      v296 = v239;
      v297 = v317;
      MEMORY[0x1EEE9AC00](v102, v103);
      v244 = &v229 - 6;
      *(&v229 - 4) = sub_1D5B4AA6C;
      *(&v229 - 3) = 0;
      v227 = sub_1D67088CC;
      v228 = v104;
      LOBYTE(v282) = 0;
      v131 = v130;
      v132 = swift_allocObject();
      *(v132 + 16) = v257;
      *(v132 + 32) = v282;
      *(v132 + 40) = v252;
      *(v132 + 48) = v128;
      swift_retain_n();
      sub_1D5ED34B0(v127, v129, v131);
      v133 = sub_1D72647CC();
      LOBYTE(v282) = 0;
      v134 = swift_allocObject();
      *(v134 + 16) = v133;
      *(v134 + 24) = v257;
      *(v134 + 40) = v282;
      v135 = *(v256 + 3);
      v136 = *(v256 + 4);
      v137 = __swift_project_boxed_opaque_existential_1(v256, v135);
      MEMORY[0x1EEE9AC00](v137, v138);
      MEMORY[0x1EEE9AC00](v139, v140);
      v141 = v244;
      *(&v229 - 4) = sub_1D615B4A4;
      *(&v229 - 3) = v141;
      v227 = sub_1D67088CC;
      v228 = v132;
      v142 = v255;
      v144 = sub_1D5D2F7A4(v101, sub_1D615B49C, v143, sub_1D615B4A4, (&v229 - 6), v135, v136);
      if (v142)
      {

        v99 = v232;
        v145 = v243;
        sub_1D5ED34A0(v295, v296, v297);
        sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
        goto LABEL_49;
      }

      v159 = v144;

      if (v159)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v78 = v246;
        v79 = v247;
        v160 = v243;
        v255 = 0;

        sub_1D5ED34A0(v295, v296, v297);
        sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
        v105 = v241;
        v84 = v245;
      }

      else
      {
        v255 = 0;

        sub_1D5ED34A0(v295, v296, v297);
        sub_1D5D2CFE8(v243, type metadata accessor for FormatVersionRequirement);
        v105 = v241;
        v84 = v245;
        v78 = v246;
        v79 = v247;
      }
    }

    else
    {

      sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);

      v105 = v241;
    }

    v106 = v242;
    v79(v242, v251, v78);
    swift_storeEnumTagMultiPayload();
    v257 = xmmword_1D72BAA60;
    v258 = xmmword_1D72BAA60;
    LOBYTE(v259) = 0;
    LOBYTE(v282) = 0;
    v107 = swift_allocObject();
    v109 = v107;
    *(v107 + 16) = v257;
    *(v107 + 32) = v282;
    *(v107 + 40) = v252;
    *(v107 + 48) = v84;
    if (v305 == 254)
    {
    }

    else
    {
      v248 = &v229;
      v284 = v302;
      v285 = v303;
      v286 = v304;
      LOBYTE(v287) = v305;
      v282 = v300;
      v283 = v301;
      MEMORY[0x1EEE9AC00](v107, v108);
      *(&v229 - 4) = sub_1D5B4AA6C;
      *(&v229 - 3) = 0;
      v227 = sub_1D67088CC;
      v228 = v109;
      LOBYTE(v269) = 0;
      v146 = swift_allocObject();
      *(v146 + 16) = v257;
      *(v146 + 32) = v269;
      *(v146 + 40) = v252;
      *(v146 + 48) = v84;
      swift_retain_n();
      sub_1D5D355B8(&v300, &v269, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v147 = v232;
      v148 = sub_1D72647CC();
      LOBYTE(v269) = 0;
      v149 = swift_allocObject();
      *(v149 + 16) = v148;
      *(v149 + 24) = v257;
      *(v149 + 40) = v269;
      v150 = *(v256 + 3);
      v151 = *(v256 + 4);
      v152 = __swift_project_boxed_opaque_existential_1(v256, v150);
      MEMORY[0x1EEE9AC00](v152, v153);
      MEMORY[0x1EEE9AC00](v154, v155);
      *(&v229 - 4) = sub_1D615B4A4;
      *(&v229 - 3) = (&v229 - 6);
      v227 = sub_1D67088CC;
      v228 = v146;
      v156 = v255;
      v158 = sub_1D5D2F7A4(v106, sub_1D615B49C, v157, sub_1D615B4A4, (&v229 - 6), v150, v151);
      if (v156)
      {

        v271 = v284;
        v272 = v285;
        v273 = v286;
        LOBYTE(v274) = v287;
        v269 = v282;
        v270 = v283;
        sub_1D601144C(&v269);
        v99 = v147;
        sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);
        goto LABEL_49;
      }

      v161 = v158;

      if (v161)
      {
        sub_1D6661204();
        sub_1D72647EC();
        v78 = v246;
        v79 = v247;
        v255 = 0;

        v271 = v284;
        v272 = v285;
        v273 = v286;
        LOBYTE(v274) = v287;
        v269 = v282;
        v270 = v283;
        sub_1D601144C(&v269);
        v105 = v241;
        v84 = v245;
      }

      else
      {
        v255 = 0;

        v271 = v284;
        v272 = v285;
        v273 = v286;
        LOBYTE(v274) = v287;
        v269 = v282;
        v270 = v283;
        sub_1D601144C(&v269);
        v105 = v241;
        v84 = v245;
        v78 = v246;
        v79 = v247;
      }
    }

    sub_1D5D2CFE8(v242, type metadata accessor for FormatVersionRequirement);
    v110 = v238;
    v79(v238, v251, v78);
    swift_storeEnumTagMultiPayload();
    v257 = xmmword_1D72BAA70;
    v282 = xmmword_1D72BAA70;
    LOBYTE(v283) = 0;
    LOBYTE(v269) = 0;
    v111 = swift_allocObject();
    v113 = v111;
    *(v111 + 16) = v257;
    *(v111 + 32) = v269;
    *(v111 + 40) = v252;
    *(v111 + 48) = v84;
    if (v237)
    {
      v248 = &v229;
      *&v269 = v237;
      MEMORY[0x1EEE9AC00](v111, v112);
      *(&v229 - 4) = sub_1D5B4AA6C;
      *(&v229 - 3) = 0;
      v227 = sub_1D67088CC;
      v228 = v113;
      LOBYTE(v258) = 0;
      v114 = swift_allocObject();
      *(v114 + 16) = v257;
      *(v114 + 32) = v258;
      *(v114 + 40) = v252;
      *(v114 + 48) = v84;
      swift_retain_n();

      v98 = v110;
      v115 = v232;
      v116 = sub_1D72647CC();
      LOBYTE(v258) = 0;
      v117 = swift_allocObject();
      *(v117 + 16) = v116;
      *(v117 + 24) = v257;
      *(v117 + 40) = v258;
      v118 = *(v256 + 3);
      v119 = *(v256 + 4);
      v120 = __swift_project_boxed_opaque_existential_1(v256, v118);
      MEMORY[0x1EEE9AC00](v120, v121);
      MEMORY[0x1EEE9AC00](v122, v123);
      *(&v229 - 4) = sub_1D615B4A4;
      *(&v229 - 3) = (&v229 - 6);
      v227 = sub_1D67088CC;
      v228 = v114;
      v124 = v255;
      v126 = sub_1D5D2F7A4(v98, sub_1D615B49C, v125, sub_1D615B4A4, (&v229 - 6), v118, v119);
      if (v124)
      {

        v99 = v115;

        goto LABEL_21;
      }

      v162 = v126;

      if (v162)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v78 = v246;
        v79 = v247;
        v255 = 0;

        sub_1D5D2CFE8(v238, type metadata accessor for FormatVersionRequirement);
        v105 = v241;
        v84 = v245;
      }

      else
      {
        v255 = 0;

        sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
        v105 = v241;
        v84 = v245;
        v78 = v246;
        v79 = v247;
      }
    }

    else
    {

      sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
    }

    v163 = v236;
    v79(v236, v251, v78);
    swift_storeEnumTagMultiPayload();
    v257 = xmmword_1D72BAA80;
    v282 = xmmword_1D72BAA80;
    LOBYTE(v283) = 0;
    LOBYTE(v269) = 0;
    v164 = swift_allocObject();
    v166 = v164;
    *(v164 + 16) = v257;
    *(v164 + 32) = v269;
    *(v164 + 40) = v252;
    *(v164 + 48) = v84;
    if (v235 == 2)
    {

      v167 = v255;
    }

    else
    {
      v251 = &v229;
      LOBYTE(v269) = v235 & 1;
      MEMORY[0x1EEE9AC00](v164, v165);
      *(&v229 - 4) = sub_1D5B4AA6C;
      *(&v229 - 3) = 0;
      v227 = sub_1D67088CC;
      v228 = v166;
      LOBYTE(v258) = 0;
      v184 = swift_allocObject();
      *(v184 + 16) = v257;
      *(v184 + 32) = v258;
      *(v184 + 40) = v252;
      *(v184 + 48) = v84;
      swift_retain_n();
      v185 = v232;
      v186 = sub_1D72647CC();
      LOBYTE(v258) = 0;
      v187 = swift_allocObject();
      *(v187 + 16) = v186;
      *(v187 + 24) = v257;
      *(v187 + 40) = v258;
      v188 = *(v256 + 3);
      v189 = *(v256 + 4);
      v190 = __swift_project_boxed_opaque_existential_1(v256, v188);
      MEMORY[0x1EEE9AC00](v190, v191);
      MEMORY[0x1EEE9AC00](v192, v193);
      *(&v229 - 4) = sub_1D615B4A4;
      *(&v229 - 3) = (&v229 - 6);
      v227 = sub_1D67088CC;
      v228 = v184;
      v194 = v255;
      v196 = sub_1D5D2F7A4(v163, sub_1D615B49C, v195, sub_1D615B4A4, (&v229 - 6), v188, v189);
      v167 = v194;
      if (v194)
      {
        sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);

        v99 = v185;
        goto LABEL_49;
      }

      v224 = v196;

      if (v224)
      {
        sub_1D72647EC();
        v78 = v246;
        v79 = v247;
        v105 = v241;
      }

      else
      {
        v105 = v241;
        v78 = v246;
        v79 = v247;
      }
    }

    sub_1D5D2CFE8(v236, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v168 = __swift_project_value_buffer(v78, qword_1EDFFCDE0);
    v169 = v234;
    v79(v234, v168, v78);
    swift_storeEnumTagMultiPayload();
    v257 = xmmword_1D72BAA90;
    v293 = xmmword_1D72BAA90;
    v294 = 0;
    LOBYTE(v282) = 0;
    v170 = swift_allocObject();
    v172 = v170;
    *(v170 + 16) = v257;
    *(v170 + 32) = v282;
    v173 = v252;
    v174 = v245;
    *(v170 + 40) = v252;
    *(v170 + 48) = v174;
    if (v233 == 2)
    {

      v175 = v169;
      v176 = v247;
      v177 = v232;
    }

    else
    {
      v255 = &v229;
      v318 = v233 & 1;
      MEMORY[0x1EEE9AC00](v170, v171);
      v251 = &v229 - 6;
      *(&v229 - 4) = sub_1D5B4AA6C;
      *(&v229 - 3) = 0;
      v227 = sub_1D67088CC;
      v228 = v172;
      LOBYTE(v282) = 0;
      v197 = swift_allocObject();
      *(v197 + 16) = v257;
      *(v197 + 32) = v282;
      *(v197 + 40) = v173;
      *(v197 + 48) = v174;
      swift_retain_n();
      v198 = sub_1D72647CC();
      LOBYTE(v282) = 0;
      v199 = swift_allocObject();
      *(v199 + 16) = v198;
      *(v199 + 24) = v257;
      *(v199 + 40) = v282;
      v200 = v167;
      v201 = *(v256 + 3);
      v202 = *(v256 + 4);
      v203 = __swift_project_boxed_opaque_existential_1(v256, v201);
      MEMORY[0x1EEE9AC00](v203, v204);
      MEMORY[0x1EEE9AC00](v205, v206);
      v207 = v251;
      *(&v229 - 4) = sub_1D615B4A4;
      *(&v229 - 3) = v207;
      v227 = sub_1D67088CC;
      v228 = v197;
      v209 = sub_1D5D2F7A4(v169, sub_1D615B49C, v208, sub_1D615B4A4, (&v229 - 6), v201, v202);
      v167 = v200;
      if (v200)
      {
        sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);

        v177 = v232;
        goto LABEL_58;
      }

      v225 = v209;

      v177 = v232;
      if (v225)
      {
        sub_1D72647EC();
        v78 = v246;
        v176 = v247;
        v105 = v241;
        v175 = v234;
      }

      else
      {
        v105 = v241;
        v175 = v234;
        v78 = v246;
        v176 = v247;
      }
    }

    sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v178 = __swift_project_value_buffer(v78, qword_1EDFFCE38);
    v176(v105, v178, v78);
    swift_storeEnumTagMultiPayload();
    v257 = xmmword_1D72BAAA0;
    v280 = xmmword_1D72BAAA0;
    v281 = 0;
    LOBYTE(v269) = 0;
    v179 = swift_allocObject();
    *(v179 + 16) = v257;
    *(v179 + 32) = v269;
    v180 = v252;
    v181 = v245;
    *(v179 + 40) = v252;
    *(v179 + 48) = v181;
    v290 = v314;
    v291 = v315;
    v292 = v316;
    v286 = v310;
    v287 = v311;
    v288 = v312;
    v289 = v313;
    v282 = v306;
    v283 = v307;
    v284 = v308;
    v285 = v309;
    v182 = sub_1D60081E0(&v282);
    if (v182 == 1)
    {
    }

    else
    {
      v255 = &v229;
      v279 = v316;
      v277 = v314;
      v278 = v315;
      v273 = v310;
      v274 = v311;
      v275 = v312;
      v276 = v313;
      v269 = v306;
      v270 = v307;
      v271 = v308;
      v272 = v309;
      MEMORY[0x1EEE9AC00](v182, v183);
      v251 = &v229 - 6;
      *(&v229 - 4) = sub_1D5B4AA6C;
      *(&v229 - 3) = 0;
      v227 = sub_1D67088CC;
      v228 = v179;
      LOBYTE(v258) = 0;
      v210 = swift_allocObject();
      *(v210 + 16) = v257;
      *(v210 + 32) = v258;
      *(v210 + 40) = v180;
      *(v210 + 48) = v181;
      swift_retain_n();
      sub_1D5D355B8(&v306, &v258, &qword_1EDF2D860, &type metadata for FormatVisualEffect, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v211 = v105;
      v212 = sub_1D72647CC();
      LOBYTE(v258) = 0;
      v213 = swift_allocObject();
      *(v213 + 16) = v212;
      *(v213 + 24) = v257;
      *(v213 + 40) = v258;
      v214 = v167;
      v215 = *(v256 + 3);
      v216 = *(v256 + 4);
      v217 = __swift_project_boxed_opaque_existential_1(v256, v215);
      MEMORY[0x1EEE9AC00](v217, v218);
      MEMORY[0x1EEE9AC00](v219, v220);
      v221 = v251;
      *(&v229 - 4) = sub_1D615B4A4;
      *(&v229 - 3) = v221;
      v227 = sub_1D66617D4;
      v228 = v210;
      v223 = sub_1D5D2F7A4(v211, sub_1D615B49C, v222, sub_1D615B4A4, (&v229 - 6), v215, v216);
      if (v214)
      {

        v266 = v277;
        v267 = v278;
        v268 = v279;
        v262 = v273;
        v263 = v274;
        v264 = v275;
        v265 = v276;
        v258 = v269;
        v259 = v270;
        v260 = v271;
        v261 = v272;
        sub_1D60113F8(&v258);
        v177 = v232;
        sub_1D5D2CFE8(v241, type metadata accessor for FormatVersionRequirement);
        goto LABEL_58;
      }

      v226 = v223;

      if (v226)
      {
        sub_1D66611B0();
        v177 = v232;
        sub_1D72647EC();

        v266 = v277;
        v267 = v278;
        v268 = v279;
        v262 = v273;
        v263 = v274;
        v264 = v275;
        v265 = v276;
        v258 = v269;
        v259 = v270;
        v260 = v271;
        v261 = v272;
        sub_1D60113F8(&v258);
      }

      else
      {

        v266 = v277;
        v267 = v278;
        v268 = v279;
        v262 = v273;
        v263 = v274;
        v264 = v275;
        v265 = v276;
        v258 = v269;
        v259 = v270;
        v260 = v271;
        v261 = v272;
        sub_1D60113F8(&v258);
        v177 = v232;
      }

      v105 = v241;
    }

    sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);
LABEL_58:
    v75 = v177;
    return sub_1D5D2CFE8(v75, sub_1D66616AC);
  }

  sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);

  v75 = v64;
  return sub_1D5D2CFE8(v75, sub_1D66616AC);
}

uint64_t FormatCompilerSlotDefinition.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v216 = &v206 - v7;
  v213 = sub_1D725B76C();
  v217 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213, v8);
  v208 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet, v4);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v211 = &v206 - v12;
  v214 = type metadata accessor for FormatCompilerSlotDefinitionItemSet(0);
  v210 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214, v13);
  v215 = &v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v209 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v212 = &v206 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v219 = &v206 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v220 = &v206 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v221 = &v206 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v222 = &v206 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v223 = &v206 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v206 - v38;
  sub_1D66618F4(0);
  v41 = v40;
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v206 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  v47 = type metadata accessor for FormatCompilerSlotDefinition(0);
  sub_1D5CB2A80(0);
  v49 = v48;
  v50 = sub_1D5B58B84(&qword_1EDF24EF8, sub_1D5CB2A80, &unk_1D7321584);
  v218 = v47;
  sub_1D5D2EE70(v47, v49, v51, v45, v47, v49, &type metadata for FormatVersions.JazzkonC, v46, v44, v50, &off_1F51F6C78);
  v52 = *v2;
  v53 = v2[1];
  v224 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v54 = sub_1D725BD1C();
  v55 = __swift_project_value_buffer(v54, qword_1EDFFCD30);
  v56 = *(v54 - 8);
  v57 = *(v56 + 16);
  v225 = v55;
  v229 = v57;
  v230 = v54;
  v228 = v56 + 16;
  (v57)(v39);
  v227 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v238 = v52;
  v239 = v53;
  v236 = 0uLL;
  v237 = 0;
  v58 = &v44[*(v41 + 44)];
  v232 = v39;
  v59 = *v58;
  v60 = *(v58 + 1);
  v240 = 0;
  v61 = swift_allocObject();
  v233 = &v206;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v240;
  *(v61 + 40) = v59;
  *(v61 + 48) = v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  *(&v206 - 4) = sub_1D5B4AA6C;
  *(&v206 - 3) = 0;
  v204 = sub_1D67088D0;
  v205 = v63;
  v240 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v240;
  v226 = v59;
  *(v64 + 40) = v59;
  *(v64 + 48) = v60;
  sub_1D6661988(0);
  v66 = v65;
  v67 = sub_1D5B58B84(&qword_1EDF02E58, sub_1D6661988, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v231 = v66;
  v68 = sub_1D72647CC();
  v240 = 0;
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 16) = v68;
  *(v69 + 40) = v240;
  v70 = *(v41 + 36);
  v235 = v44;
  v71 = &v44[v70];
  v72 = *(v71 + 3);
  v73 = *(v71 + 4);
  v74 = __swift_project_boxed_opaque_existential_1(v71, v72);
  MEMORY[0x1EEE9AC00](v74, v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  *(&v206 - 4) = sub_1D615B4A4;
  *(&v206 - 3) = (&v206 - 6);
  v78 = v232;
  v204 = sub_1D67088D0;
  v205 = v64;
  v79 = v234;
  sub_1D5D2BC70(v232, sub_1D615B49C, v80, sub_1D615B4A4, (&v206 - 6), v72, v73);
  if (v79 || (v206 = v71, v207 = v60, , , sub_1D72647EC(), v84 = v67, sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement), , v78 = v223, v85 = v224[2], v86 = v224[3], v229(v223, v225, v230), swift_storeEnumTagMultiPayload(), v238 = v85, v239 = v86, v234 = xmmword_1D728CF30, v236 = xmmword_1D728CF30, v237 = 0, v240 = 0, v87 = swift_allocObject(), v233 = &v206, *(v87 + 16) = v234, *(v87 + 32) = v240, v88 = v226, v89 = v207, *(v87 + 40) = v226, *(v87 + 48) = v89, MEMORY[0x1EEE9AC00](v87, v90), v232 = 0, *(&v206 - 4) = sub_1D5B4AA6C, *(&v206 - 3) = 0, v204 = sub_1D67088D0, v205 = v91, v240 = 0, v92 = swift_allocObject(), *(v92 + 16) = v234, *(v92 + 32) = v240, *(v92 + 40) = v88, *(v92 + 48) = v89, swift_retain_n(), v93 = sub_1D72647CC(), v240 = 0, v94 = v84, v95 = swift_allocObject(), *(v95 + 16) = v93, *(v95 + 24) = v234, *(v95 + 40) = v240, v96 = *(v206 + 3), v97 = *(v206 + 4), v98 = __swift_project_boxed_opaque_existential_1(v206, v96), MEMORY[0x1EEE9AC00](v98, v99), MEMORY[0x1EEE9AC00](v100, v101), *(&v206 - 4) = sub_1D615B4A4, *(&v206 - 3) = (&v206 - 6), v204 = sub_1D67088D0, v205 = v92, v102 = v232, sub_1D5D2BC70(v78, sub_1D615B49C, v103, sub_1D615B4A4, (&v206 - 6), v96, v97), v102))
  {
    v81 = v235;
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

    v82 = v81;
    return sub_1D5D2CFE8(v82, sub_1D66618F4);
  }

  sub_1D72647EC();
  sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

  v104 = v222;
  v229(v222, v225, v230);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v236) = 0;
  v105 = swift_allocObject();
  v234 = xmmword_1D7297410;
  *(v105 + 16) = xmmword_1D7297410;
  *(v105 + 32) = v236;
  *(v105 + 40) = v226;
  *(v105 + 48) = v207;

  v106 = sub_1D72647CC();
  LOBYTE(v236) = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v106;
  *(v107 + 24) = v234;
  *(v107 + 40) = v236;
  v108 = *(v206 + 3);
  v109 = *(v206 + 4);
  v110 = __swift_project_boxed_opaque_existential_1(v206, v108);
  MEMORY[0x1EEE9AC00](v110, v111);
  MEMORY[0x1EEE9AC00](v112, v113);
  *(&v206 - 4) = sub_1D5B4AA6C;
  *(&v206 - 3) = 0;
  v204 = sub_1D6661A1C;
  v205 = v105;
  LOBYTE(v108) = sub_1D5D2F7A4(v104, sub_1D615B49C, v114, sub_1D615B4A4, (&v206 - 6), v108, v109);
  v233 = v94;

  if (v108)
  {
    v236 = v234;
    v237 = 0;
    v238 = 0;
    v239 = 0xE000000000000000;
    sub_1D72647EC();
  }

  sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
  v115 = v224;
  v116 = v221;
  v117 = v224[6];
  v229(v221, v225, v230);
  swift_storeEnumTagMultiPayload();
  v118 = v207;
  if (*(v117 + 16))
  {
    LOBYTE(v236) = 0;
    v119 = swift_allocObject();
    v234 = xmmword_1D72BAA60;
    *(v119 + 16) = xmmword_1D72BAA60;
    *(v119 + 32) = v236;
    *(v119 + 40) = v226;
    *(v119 + 48) = v118;

    v120 = sub_1D72647CC();
    LOBYTE(v236) = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v120;
    *(v121 + 24) = v234;
    *(v121 + 40) = v236;
    v122 = *(v206 + 3);
    v123 = *(v206 + 4);
    v124 = __swift_project_boxed_opaque_existential_1(v206, v122);
    MEMORY[0x1EEE9AC00](v124, v125);
    MEMORY[0x1EEE9AC00](v126, v127);
    *(&v206 - 4) = sub_1D5B4AA6C;
    *(&v206 - 3) = 0;
    v204 = sub_1D67088D0;
    v205 = v119;
    v129 = sub_1D5D2F7A4(v116, sub_1D615B49C, v128, sub_1D615B4A4, (&v206 - 6), v122, v123);
    v131 = v129;

    if (v131)
    {
      v236 = v234;
      v237 = 0;
      v238 = v117;
      sub_1D5B5BF78(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
      sub_1D665F3C8();
      sub_1D72647EC();
      v130 = v226;
      v132 = v221;
      v115 = v224;

      sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
      v118 = v207;
    }

    else
    {
      sub_1D5D2CFE8(v221, type metadata accessor for FormatVersionRequirement);

      v118 = v207;
      v130 = v226;
      v115 = v224;
    }
  }

  else
  {
    sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
    v130 = v226;
  }

  v133 = v115[7];
  v134 = qword_1EDF31ED0;

  if (v134 != -1)
  {
    swift_once();
  }

  v135 = __swift_project_value_buffer(v230, qword_1EDFFCD50);
  v136 = v220;
  v232 = v135;
  (v229)(v220);
  swift_storeEnumTagMultiPayload();
  if (*(v133 + 16))
  {
    LOBYTE(v236) = 0;
    v137 = swift_allocObject();
    v234 = xmmword_1D72BAA70;
    *(v137 + 16) = xmmword_1D72BAA70;
    *(v137 + 32) = v236;
    *(v137 + 40) = v130;
    *(v137 + 48) = v118;

    v138 = sub_1D72647CC();
    LOBYTE(v236) = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = v138;
    *(v139 + 24) = v234;
    *(v139 + 40) = v236;
    v140 = *(v206 + 3);
    v141 = *(v206 + 4);
    v142 = __swift_project_boxed_opaque_existential_1(v206, v140);
    MEMORY[0x1EEE9AC00](v142, v143);
    MEMORY[0x1EEE9AC00](v144, v145);
    *(&v206 - 4) = sub_1D5B4AA6C;
    *(&v206 - 3) = 0;
    v204 = sub_1D67088D0;
    v205 = v137;
    v147 = sub_1D5D2F7A4(v136, sub_1D615B49C, v146, sub_1D615B4A4, (&v206 - 6), v140, v141);
    v148 = v147;

    v115 = v224;
    if (v148)
    {
      v236 = v234;
      v237 = 0;
      v238 = v133;
      sub_1D5C34D84(0, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform, MEMORY[0x1E69E62F8]);
      sub_1D6661AAC();
      sub_1D72647EC();
      v149 = v220;

      sub_1D5D2CFE8(v149, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);
    }

    v118 = v207;
  }

  else
  {
    sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
  }

  v150 = v219;
  v151 = v115[8];
  v229(v219, v225, v230);
  swift_storeEnumTagMultiPayload();
  if (v151 == 1)
  {
    v152 = v115;
    sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
    v153 = v217;
    v154 = v216;
  }

  else
  {
    LOBYTE(v236) = 0;
    v155 = swift_allocObject();
    v234 = xmmword_1D72BAA80;
    *(v155 + 16) = xmmword_1D72BAA80;
    *(v155 + 32) = v236;
    *(v155 + 40) = v226;
    *(v155 + 48) = v118;

    v156 = sub_1D72647CC();
    LOBYTE(v236) = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v156;
    *(v157 + 24) = v234;
    *(v157 + 40) = v236;
    v158 = *(v206 + 3);
    v159 = *(v206 + 4);
    v160 = __swift_project_boxed_opaque_existential_1(v206, v158);
    MEMORY[0x1EEE9AC00](v160, v161);
    MEMORY[0x1EEE9AC00](v162, v163);
    *(&v206 - 4) = sub_1D5B4AA6C;
    *(&v206 - 3) = 0;
    v204 = sub_1D67088D0;
    v205 = v155;
    LOBYTE(v158) = sub_1D5D2F7A4(v150, sub_1D615B49C, v164, sub_1D615B4A4, (&v206 - 6), v158, v159);

    if (v158)
    {
      v236 = v234;
      v237 = 0;
      v238 = v151;
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
    v153 = v217;
    v154 = v216;
    v152 = v224;
  }

  v165 = *(v218 + 40);
  v166 = v212;
  v229(v212, v232, v230);
  swift_storeEnumTagMultiPayload();
  v234 = xmmword_1D72BAA90;
  v236 = xmmword_1D72BAA90;
  v237 = 0;
  LOBYTE(v238) = 0;
  v167 = swift_allocObject();
  *(v167 + 16) = v234;
  *(v167 + 32) = v238;
  v168 = v226;
  v169 = v207;
  *(v167 + 40) = v226;
  *(v167 + 48) = v169;
  v170 = v152 + v165;
  v171 = v211;
  sub_1D5CDE2EC(v170, v211, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  if ((*(v210 + 48))(v171, 1, v214) == 1)
  {

    sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v171, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet, MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  else
  {
    v172 = sub_1D5C8F76C(v171, v215, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    MEMORY[0x1EEE9AC00](v172, v173);
    *(&v206 - 4) = sub_1D5B4AA6C;
    *(&v206 - 3) = 0;
    v204 = sub_1D67088D0;
    v205 = v167;
    LOBYTE(v238) = 0;
    v174 = swift_allocObject();
    *(v174 + 16) = v234;
    *(v174 + 32) = v238;
    *(v174 + 40) = v168;
    *(v174 + 48) = v169;
    swift_retain_n();
    v175 = sub_1D72647CC();
    LOBYTE(v238) = 0;
    v176 = swift_allocObject();
    *(v176 + 16) = v175;
    *(v176 + 24) = v234;
    *(v176 + 40) = v238;
    v177 = *(v206 + 3);
    v178 = *(v206 + 4);
    v179 = __swift_project_boxed_opaque_existential_1(v206, v177);
    MEMORY[0x1EEE9AC00](v179, v180);
    MEMORY[0x1EEE9AC00](v181, v182);
    *(&v206 - 4) = sub_1D615B4A4;
    *(&v206 - 3) = (&v206 - 6);
    v204 = sub_1D67088D0;
    v205 = v174;
    LOBYTE(v177) = sub_1D5D2F7A4(v166, sub_1D615B49C, v183, sub_1D615B4A4, (&v206 - 6), v177, v178);

    if (v177)
    {
      sub_1D5B58B84(&qword_1EDF071A8, type metadata accessor for FormatCompilerSlotDefinitionItemSet, &protocol conformance descriptor for FormatCompilerSlotDefinitionItemSet);
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v215, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
    v153 = v217;
    v154 = v216;
  }

  v184 = *(v218 + 44);
  v185 = v209;
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v186 = v230;
  v187 = __swift_project_value_buffer(v230, qword_1EDFFCD80);
  v229(v185, v187, v186);
  swift_storeEnumTagMultiPayload();
  v234 = xmmword_1D72BAAA0;
  v236 = xmmword_1D72BAAA0;
  v237 = 0;
  LOBYTE(v238) = 0;
  v188 = swift_allocObject();
  *(v188 + 16) = v234;
  *(v188 + 32) = v238;
  v189 = v226;
  v190 = v207;
  *(v188 + 40) = v226;
  *(v188 + 48) = v190;
  sub_1D5CDE2EC(v224 + v184, v154, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v191 = v213;
  if ((*(v153 + 48))(v154, 1, v213) != 1)
  {
    v192 = (*(v153 + 32))(v208, v154, v191);
    MEMORY[0x1EEE9AC00](v192, v193);
    *(&v206 - 4) = sub_1D5B4AA6C;
    *(&v206 - 3) = 0;
    v204 = sub_1D67088D0;
    v205 = v188;
    LOBYTE(v238) = 0;
    v194 = swift_allocObject();
    *(v194 + 16) = v234;
    *(v194 + 32) = v238;
    *(v194 + 40) = v189;
    *(v194 + 48) = v190;
    swift_retain_n();
    v195 = sub_1D72647CC();
    LOBYTE(v238) = 0;
    v196 = swift_allocObject();
    *(v196 + 16) = v195;
    *(v196 + 24) = v234;
    *(v196 + 40) = v238;
    v197 = *(v206 + 3);
    v198 = *(v206 + 4);
    v199 = __swift_project_boxed_opaque_existential_1(v206, v197);
    MEMORY[0x1EEE9AC00](v199, v200);
    MEMORY[0x1EEE9AC00](v201, v202);
    *(&v206 - 4) = sub_1D615B4A4;
    *(&v206 - 3) = (&v206 - 6);
    v204 = sub_1D67088D0;
    v205 = v194;
    LOBYTE(v197) = sub_1D5D2F7A4(v185, sub_1D615B49C, v203, sub_1D615B4A4, (&v206 - 6), v197, v198);

    if (v197)
    {
      sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
      sub_1D72647EC();
    }

    (*(v217 + 8))(v208, v213);
    sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);
    v82 = v235;
    return sub_1D5D2CFE8(v82, sub_1D66618F4);
  }

  sub_1D5D2CFE8(v185, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v235, sub_1D66618F4);
  return sub_1D5D35558(v154, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t FormatDateTime.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v32 - v8;
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
    v12 = v37;
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
          *(v22 + 16) = &unk_1F50FC2D8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D6661B48();
    v33 = 0uLL;
    sub_1D726431C();
    if (v36 > 2u)
    {
      v24 = v12;
      if (v36 == 3)
      {
        (*(v11 + 8))(v15, v5);
        v27 = 0xC000000000000000;
      }

      else if (v36 == 4)
      {
        v27 = 0xC000000000000008;
        (*(v11 + 8))(v15, v5);
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v27 = 0xC000000000000010;
      }
    }

    else
    {
      v24 = v12;
      if (v36)
      {
        if (v36 == 1)
        {
          v36 = xmmword_1D7279980;
          sub_1D60346CC();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v25 = v33;
          v26 = swift_allocObject();
          *(v26 + 16) = v25;
          v27 = v26 | 0x4000000000000000;
        }

        else
        {
          sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
          v36 = xmmword_1D7279980;
          sub_1D5C34150();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v30 = v33;
          v31 = swift_allocObject();
          *(v31 + 16) = v30;
          v27 = v31 | 0x8000000000000000;
        }
      }

      else
      {
        v36 = xmmword_1D7279980;
        sub_1D6661B9C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v32 = v33;
        v28 = v34;
        v29 = v35;
        v27 = swift_allocObject();
        *(v27 + 16) = v32;
        *(v27 + 32) = v28;
        *(v27 + 40) = v29;
      }
    }

    *v24 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatDateTime.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v63 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v62 - v24;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v2;
  v32 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v33 = sub_1D5C30408();
  v65 = v29;
  sub_1D5D2EE70(&type metadata for FormatDateTime, &type metadata for FormatCodingKeys, v34, v32, &type metadata for FormatDateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v31, v29, v33, &off_1F51F6CF8);
  v35 = v30 >> 62;
  if ((v30 >> 62) <= 1)
  {
    if (!v35)
    {
      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      v38 = *(v30 + 32);
      v39 = *(v30 + 40);
      sub_1D5D27950(v37, v36, v38, v39);
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v40 = sub_1D725BD1C();
      v41 = __swift_project_value_buffer(v40, qword_1EDFFCCA8);
      (*(*(v40 - 8) + 16))(v25, v41, v40);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v42 = v65;
      sub_1D63BADEC(0, v37, v36, v38, v39, v25);
      sub_1D5D28C84(v37, v36, v38, v39);
      v43 = v25;
      goto LABEL_26;
    }

    v50 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v49 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D5F33D5C(v49);
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v51 = sub_1D725BD1C();
    v52 = __swift_project_value_buffer(v51, qword_1EDFFCCA8);
    (*(*(v51 - 8) + 16))(v21, v52, v51);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v42 = v65;
    sub_1D63BAF88(1, v50, v49, v21);

    sub_1D5F33D8C(v49);
LABEL_13:
    v43 = v21;
    goto LABEL_26;
  }

  if (v35 == 2)
  {
    v44 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v45 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v46 = qword_1EDF31E80;

    if (v46 != -1)
    {
      swift_once();
    }

    v47 = sub_1D725BD1C();
    v48 = __swift_project_value_buffer(v47, qword_1EDFFCCA8);
    (*(*(v47 - 8) + 16))(v17, v48, v47);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v42 = v65;
    sub_1D63BB11C(2, v44, v45, v17);

    v21 = v17;
    goto LABEL_13;
  }

  if (v30 == 0xC000000000000000)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v57 = sub_1D725BD1C();
    v58 = __swift_project_value_buffer(v57, qword_1EDFFCCA8);
    (*(*(v57 - 8) + 16))(v13, v58, v57);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v42 = v65;
    sub_1D6424254(3, v13);
    v43 = v13;
  }

  else
  {
    if (v30 == 0xC000000000000008)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCCA8);
      v55 = v63;
      (*(*(v53 - 8) + 16))(v63, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v56 = 4;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v59 = sub_1D725BD1C();
      v60 = __swift_project_value_buffer(v59, qword_1EDFFCCA8);
      v55 = v64;
      (*(*(v59 - 8) + 16))(v64, v60, v59);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v56 = 5;
    }

    v42 = v65;
    sub_1D6424254(v56, v55);
    v43 = v55;
  }

LABEL_26:
  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v42, sub_1D5D30DC4);
}

uint64_t FormatDateTimeOffset.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6661C38(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6661CCC(0);
  sub_1D5B58B84(&qword_1EDF25408, sub_1D6661CCC, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x73646E6F636573, 0xE700000000000000, 0x656D695465746164, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D60344C0();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatDateTimeOffset.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v70 - v8);
  sub_1D6661E4C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v77 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6661CCC(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25408, sub_1D6661CCC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatDateTimeOffset, v19, v21, v16, &type metadata for FormatDateTimeOffset, v19, &type metadata for FormatVersions.Dawnburst, v17, v14, v20, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCCA8);
  v24 = *(v22 - 8);
  v74 = *(v24 + 16);
  v75 = v23;
  v73 = v24 + 16;
  v74(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v85 = 0;
  v28 = swift_allocObject();
  v81 = &v70;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v85;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v83 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D67088D4;
  v69 = v30;
  v85 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v85;
  v76 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D6661EE0(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF03448, sub_1D6661EE0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v79 = v34;
  v80 = v33;
  v35 = sub_1D72647CC();
  v85 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v85;
  v37 = *(v11 + 36);
  v82 = v14;
  v38 = &v14[v37];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v70 - 4) = sub_1D615B4A4;
  *(&v70 - 3) = (&v70 - 6);
  v46 = v83;
  v45 = v84;
  v68 = sub_1D6661F74;
  v69 = v31;
  sub_1D5D2BC70(v83, sub_1D615B49C, v47, sub_1D615B4A4, (&v70 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v50 = v82;
  }

  else
  {
    v70 = v38;
    v71 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();
    v48 = v82;
    sub_1D72647EC();
    v49 = v48;
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v52 = v78;
    (v74)(v78, v75, v22);
    swift_storeEnumTagMultiPayload();
    v88 = v77;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v53 = swift_allocObject();
    v83 = &v70;
    *(v53 + 16) = v84;
    *(v53 + 32) = v85;
    v54 = v76;
    v55 = v71;
    *(v53 + 40) = v76;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v70 - 4) = sub_1D5B4AA6C;
    *(&v70 - 3) = 0;
    v68 = sub_1D67088D4;
    v69 = v57;
    v85 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v84;
    *(v58 + 32) = v85;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v85 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v84;
    *(v60 + 40) = v85;
    v61 = *(v70 + 3);
    v62 = *(v70 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v70, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v70 - 4) = sub_1D615B4A4;
    *(&v70 - 3) = (&v70 - 6);
    v68 = sub_1D67088D4;
    v69 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v70 - 6), v61, v62);

    sub_1D6034514();
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v50 = v49;
  }

  return sub_1D5D2CFE8(v50, sub_1D6661E4C);
}

unint64_t FormatAccessibilityNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v176 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v185 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v186 = &v176 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  *&v197 = &v176 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v176 - v20;
  sub_1D6661FF0(0);
  *&v196 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5C66670(0);
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF251F8, sub_1D5C66670, &unk_1D7321584);
  v195 = v25;
  sub_1D5D2EE70(v4, v29, v31, v26, v4, v29, &type metadata for FormatVersions.JazzkonC, v27, v25, v30, &off_1F51F6C78);
  swift_beginAccess();
  v33 = v2[2];
  v32 = v2[3];
  v194 = v2;
  v34 = qword_1EDF31EB0;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  (v38)(v21, v36, v35);
  v40 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v41 = sub_1D725895C();
  v42 = (*(*(v41 - 8) + 48))(v8, 1, v41);
  v189 = v35;
  v192 = v38;
  v191 = v39;
  v190 = v40;
  v193 = v36;
  if (v42 != 1)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v65 = v197;
    v66 = v196;
    goto LABEL_9;
  }

  v187 = v33;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v43 = v196;
  v44 = v195;
  v45 = &v195[*(v196 + 44)];
  v47 = *v45;
  v46 = *(v45 + 1);
  LOBYTE(v199) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v199;
  *(v48 + 40) = v47;
  *(v48 + 48) = v46;
  sub_1D6662084(0);
  v50 = v49;
  sub_1D5B58B84(&qword_1EDF031B8, sub_1D6662084, MEMORY[0x1E69E6F60]);

  v188 = v50;
  v51 = sub_1D72647CC();
  LOBYTE(v199) = 0;
  v52 = swift_allocObject();
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = v51;
  *(v52 + 40) = v199;
  v53 = (v44 + *(v43 + 36));
  v54 = v53[3];
  v55 = v53[4];
  v56 = __swift_project_boxed_opaque_existential_1(v53, v54);
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  *(&v176 - 4) = sub_1D5B4AA6C;
  *(&v176 - 3) = 0;
  v174 = sub_1D6662118;
  v175 = v48;
  v60 = v198;
  v62 = sub_1D5D2F7A4(v21, sub_1D615B49C, v61, sub_1D615B4A4, (&v176 - 6), v54, v55);
  v198 = v60;
  if (v60)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v63 = v44;
    return sub_1D5D2CFE8(v63, sub_1D6661FF0);
  }

  v94 = v62;

  if ((v94 & 1) == 0)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v35 = v189;
    v38 = v192;
    goto LABEL_8;
  }

  v199 = 0uLL;
  LOBYTE(v200) = 0;
  v210 = v187;
  v211 = v32;
  v95 = v195;
  v96 = v198;
  sub_1D72647EC();

  sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  v38 = v192;
  v65 = v197;
  v66 = v196;
  if (v96)
  {
    return sub_1D5D2CFE8(v95, sub_1D6661FF0);
  }

  v198 = 0;
  v35 = v189;
LABEL_9:
  v67 = v194;
  swift_beginAccess();
  v68 = v67[4];
  LODWORD(v67) = *(v67 + 40);
  (v38)(v65, v193, v35);
  swift_storeEnumTagMultiPayload();
  v208 = v68;
  v209 = v67;
  v196 = xmmword_1D728CF30;
  v199 = xmmword_1D728CF30;
  LOBYTE(v200) = 0;
  v69 = v195;
  v70 = &v195[*(v66 + 44)];
  v72 = *v70;
  v71 = *(v70 + 1);
  LOBYTE(v206) = 0;
  v73 = swift_allocObject();
  v187 = &v176;
  *(v73 + 16) = v196;
  *(v73 + 32) = v206;
  *(v73 + 40) = v72;
  *(v73 + 48) = v71;
  MEMORY[0x1EEE9AC00](v73, v74);
  *(&v176 - 4) = sub_1D5B4AA6C;
  *(&v176 - 3) = 0;
  v174 = sub_1D67088D8;
  v175 = v75;
  LOBYTE(v206) = 0;
  v76 = v66;
  v77 = swift_allocObject();
  *(v77 + 16) = v196;
  *(v77 + 32) = v206;
  v182 = v72;
  *(v77 + 40) = v72;
  *(v77 + 48) = v71;
  v78 = v69;
  swift_retain_n();
  v193 = v68;
  LODWORD(v188) = v67;
  sub_1D5D07778(v68, v67);
  sub_1D6662084(0);
  v80 = v79;
  v81 = sub_1D5B58B84(&qword_1EDF031B8, sub_1D6662084, MEMORY[0x1E69E6F60]);
  v183 = v80;
  v184 = v81;
  v82 = sub_1D72647CC();
  LOBYTE(v206) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v82;
  *(v83 + 24) = v196;
  *(v83 + 40) = v206;
  v84 = (v78 + *(v76 + 36));
  v85 = v84[3];
  v86 = v84[4];
  v87 = __swift_project_boxed_opaque_existential_1(v84, v85);
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  *(&v176 - 4) = sub_1D615B4A4;
  *(&v176 - 3) = (&v176 - 6);
  v174 = sub_1D67088D8;
  v175 = v77;
  v91 = v197;
  v92 = v198;
  sub_1D5D2BC70(v197, sub_1D615B49C, v93, sub_1D615B4A4, (&v176 - 6), v85, v86);
  if (v92)
  {
    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v78, sub_1D6661FF0);
    return sub_1D5D06D9C(v193, v188);
  }

  v181 = v84;
  *&v196 = v71;

  sub_1D6662194();
  sub_1D72647EC();
  v198 = 0;
  sub_1D5D2CFE8(v197, type metadata accessor for FormatVersionRequirement);
  sub_1D5D06D9C(v193, v188);

  v97 = v194;
  swift_beginAccess();
  v98 = v97[7];
  v99 = v97[8];
  v100 = v97[9];
  v101 = v97[10];
  v102 = v97[11];
  v103 = *(v97 + 48) | (*(v97 + 98) << 16);
  v180 = v97[6];
  v187 = v98;
  v188 = v99;
  v193 = v100;
  sub_1D6046038(v180, v98, v99, v100, v101, v102, v103);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v104 = v189;
  v105 = __swift_project_value_buffer(v189, qword_1EDFFCDF8);
  (v192)(v186, v105, v104);
  swift_storeEnumTagMultiPayload();
  v197 = xmmword_1D7297410;
  v206 = xmmword_1D7297410;
  v207 = 0;
  LOBYTE(v199) = 0;
  v106 = swift_allocObject();
  v108 = v106;
  *(v106 + 16) = v197;
  *(v106 + 32) = v199;
  v109 = v182;
  v110 = v196;
  *(v106 + 40) = v182;
  *(v106 + 48) = v110;
  if (((v103 >> 17) & 0x7F) == 0x7F)
  {

    goto LABEL_30;
  }

  v179 = &v176;
  v111 = v101;
  v176 = v101;
  v112 = v180;
  v113 = v187;
  *&v199 = v180;
  *(&v199 + 1) = v187;
  v114 = v103;
  v115 = v188;
  v200 = v188;
  v201 = v193;
  v202 = v111;
  v203 = v102;
  v204 = v114;
  v205 = BYTE2(v114);
  MEMORY[0x1EEE9AC00](v106, v107);
  v177 = v102;
  v178 = &v176 - 6;
  *(&v176 - 4) = sub_1D5B4AA6C;
  *(&v176 - 3) = 0;
  v174 = sub_1D67088D8;
  v175 = v108;
  v212 = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = v197;
  *(v116 + 32) = v212;
  *(v116 + 40) = v109;
  *(v116 + 48) = v110;
  v117 = v193;
  swift_retain_n();
  v118 = v112;
  v119 = v176;
  v120 = v113;
  v121 = v177;
  v122 = v115;
  v123 = v114;
  sub_1D6046038(v118, v120, v122, v117, v176, v177, v114);
  v124 = sub_1D72647CC();
  v212 = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v124;
  *(v125 + 24) = v197;
  *(v125 + 40) = v212;
  v126 = v181[3];
  v127 = v181[4];
  v128 = __swift_project_boxed_opaque_existential_1(v181, v126);
  MEMORY[0x1EEE9AC00](v128, v129);
  MEMORY[0x1EEE9AC00](v130, v131);
  v132 = v178;
  *(&v176 - 4) = sub_1D615B4A4;
  *(&v176 - 3) = v132;
  v174 = sub_1D67088D8;
  v175 = v116;
  v133 = v198;
  v135 = sub_1D5D2F7A4(v186, sub_1D615B49C, v134, sub_1D615B4A4, (&v176 - 6), v126, v127);
  if (v133)
  {

    sub_1D5C67600(v180, v187, v188, v117, v119, v121, v123);
    v95 = v195;
LABEL_22:
    sub_1D5D0A678(v199, *(&v199 + 1), v200, v201, v202, v203, v204 | (v205 << 16));
    sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v95, sub_1D6661FF0);
  }

  v136 = v135;
  v198 = 0;

  if (v136)
  {
    sub_1D66621E8();
    v95 = v195;
    v137 = v198;
    sub_1D72647EC();
    v138 = v188;
    v139 = v187;
    v198 = v137;
    if (v137)
    {

      sub_1D5C67600(v180, v139, v138, v193, v119, v121, v123);
      goto LABEL_22;
    }

    v140 = v180;
    v141 = v139;
    v142 = v138;
  }

  else
  {

    v140 = v180;
    v141 = v187;
    v142 = v188;
  }

  sub_1D5C67600(v140, v141, v142, v193, v119, v121, v123);
  sub_1D5D0A678(v199, *(&v199 + 1), v200, v201, v202, v203, v204 | (v205 << 16));
LABEL_30:
  sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
  v143 = v194[13];
  v144 = v194[14];
  v145 = v194[15];
  v193 = v194[16];
  v146 = v194[17];
  v147 = v194[18];
  v148 = v192;
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v149 = v189;
  v150 = __swift_project_value_buffer(v189, qword_1EDFFCE38);
  (v148)(v185, v150, v149);
  swift_storeEnumTagMultiPayload();
  v197 = xmmword_1D72BAA60;
  v206 = xmmword_1D72BAA60;
  v207 = 0;
  LOBYTE(v199) = 0;
  v151 = swift_allocObject();
  v153 = v151;
  *(v151 + 16) = v197;
  *(v151 + 32) = v199;
  v154 = v196;
  *(v151 + 40) = v182;
  *(v151 + 48) = v154;
  if (!v143)
  {

    sub_1D5D2CFE8(v185, type metadata accessor for FormatVersionRequirement);

    v157 = v195;
LABEL_39:
    v63 = v157;
    return sub_1D5D2CFE8(v63, sub_1D6661FF0);
  }

  v194 = &v176;
  *&v199 = v143;
  *(&v199 + 1) = v144;
  v155 = v193;
  v200 = v145;
  v201 = v193;
  v202 = v146;
  v203 = v147;
  MEMORY[0x1EEE9AC00](v151, v152);
  v192 = &v176 - 6;
  *(&v176 - 4) = sub_1D5B4AA6C;
  *(&v176 - 3) = 0;
  v174 = sub_1D67088D8;
  v175 = v153;
  v212 = 0;
  v156 = swift_allocObject();
  *(v156 + 16) = v197;
  *(v156 + 32) = v212;
  *(v156 + 40) = v182;
  *(v156 + 48) = v154;
  swift_retain_n();
  sub_1D5EB1D80(v143, v144, v145, v155, v146, v147);
  v157 = v195;
  v158 = sub_1D72647CC();
  v212 = 0;
  v159 = swift_allocObject();
  *(v159 + 16) = v158;
  *(v159 + 24) = v197;
  *(v159 + 40) = v212;
  v160 = v181[3];
  v161 = v181[4];
  v162 = __swift_project_boxed_opaque_existential_1(v181, v160);
  MEMORY[0x1EEE9AC00](v162, v163);
  MEMORY[0x1EEE9AC00](v164, v165);
  v166 = v192;
  *(&v176 - 4) = sub_1D615B4A4;
  *(&v176 - 3) = v166;
  v174 = sub_1D67088D8;
  v175 = v156;
  v167 = v185;
  v168 = v198;
  v170 = sub_1D5D2F7A4(v185, sub_1D615B49C, v169, sub_1D615B4A4, (&v176 - 6), v160, v161);
  if (!v168)
  {
    v172 = v170;

    if (v172)
    {
      sub_1D6659A24();
      sub_1D72647EC();
    }

    v198 = 0;
    v173 = v202;

    sub_1D5CBF568(v173);

    sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
    goto LABEL_39;
  }

  v171 = v202;

  sub_1D5CBF568(v171);

  sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v157, sub_1D6661FF0);
}

uint64_t FormatAnimationNodeGroupAnimation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v85 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  *&v91 = v80 - v10;
  sub_1D6662624(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D666274C(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC886218, sub_1D666274C, &unk_1D7321584);
  sub_1D5D2EE70(v4, v19, v21, v16, v4, v19, &type metadata for FormatVersions.StarSky, v17, v15, v20, &off_1F51F6CD8);
  v84 = v2;
  v22 = v2[2];
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v27 = v91;
  v87 = v24;
  v81 = v26;
  v82 = v23;
  v80[1] = v25 + 16;
  v26(v91);
  v80[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v123[0] = v22;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v28 = &v15[*(v12 + 44)];
  v30 = *v28;
  v29 = *(v28 + 1);
  LOBYTE(v118[0]) = 0;
  v31 = swift_allocObject();
  v90 = v80;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v118[0];
  *(v31 + 40) = v30;
  *(v31 + 48) = v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v80[-4] = sub_1D5B4AA6C;
  v80[-3] = 0;
  v78 = sub_1D67088DC;
  v79 = v33;
  LOBYTE(v118[0]) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v118[0];
  v83 = v30;
  *(v34 + 40) = v30;
  *(v34 + 48) = v29;
  sub_1D66626B8(0);
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EC886220, sub_1D66626B8, MEMORY[0x1E69E6F60]);
  v86 = v29;
  swift_retain_n();
  v88 = v36;
  v89 = v37;
  v38 = sub_1D72647CC();
  LOBYTE(v118[0]) = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v118[0];
  v40 = *(v12 + 36);
  v124 = v15;
  v41 = &v15[v40];
  v42 = *&v15[v40 + 24];
  v43 = *&v15[v40 + 32];
  v44 = __swift_project_boxed_opaque_existential_1(&v15[v40], v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v80[-4] = sub_1D615B4A4;
  v80[-3] = &v80[-6];
  v78 = sub_1D67088DC;
  v79 = v34;
  v48 = v92;
  sub_1D5D2BC70(v27, sub_1D615B49C, v49, sub_1D615B4A4, &v80[-6], v42, v43);
  if (v48)
  {
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    v50 = v124;
  }

  else
  {
    v92 = v41;
    v51 = v27;
    v53 = v86;
    v52 = v87;

    sub_1D5C34D84(0, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
    sub_1D66628CC();
    v50 = v124;
    sub_1D72647EC();
    v90 = 0;
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v54 = v85;
    v55 = *(v84 + 13);
    v56 = *(v84 + 17);
    v116 = *(v84 + 15);
    v117[0] = v56;
    *(v117 + 9) = *(v84 + 145);
    v57 = *(v84 + 5);
    v58 = *(v84 + 9);
    v112 = *(v84 + 7);
    v113 = v58;
    v114 = *(v84 + 11);
    v115 = v55;
    v110 = *(v84 + 3);
    v111 = v57;
    v81(v85, v52, v82);
    swift_storeEnumTagMultiPayload();
    v91 = xmmword_1D728CF30;
    v108[2] = xmmword_1D728CF30;
    v109 = 0;
    LOBYTE(v101) = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v91;
    *(v59 + 32) = v101;
    v60 = v83;
    *(v59 + 40) = v83;
    *(v59 + 48) = v53;
    v118[6] = v116;
    v119[0] = v117[0];
    *(v119 + 9) = *(v117 + 9);
    v118[2] = v112;
    v118[3] = v113;
    v118[4] = v114;
    v118[5] = v115;
    v118[0] = v110;
    v118[1] = v111;
    v61 = sub_1D60486AC(v118);
    if (v61 == 1)
    {

      sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v87 = v80;
      v107 = v116;
      v108[0] = v117[0];
      *(v108 + 9) = *(v117 + 9);
      v103 = v112;
      v104 = v113;
      v105 = v114;
      v106 = v115;
      v101 = v110;
      v102 = v111;
      MEMORY[0x1EEE9AC00](v61, v62);
      v80[-4] = sub_1D5B4AA6C;
      v80[-3] = 0;
      v78 = sub_1D67088DC;
      v79 = v59;
      LOBYTE(v93) = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = v91;
      *(v63 + 32) = v93;
      *(v63 + 40) = v60;
      *(v63 + 48) = v53;
      swift_retain_n();
      sub_1D5D355B8(&v110, &v93, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v64 = sub_1D72647CC();
      LOBYTE(v93) = 0;
      v65 = swift_allocObject();
      *(v65 + 16) = v64;
      *(v65 + 24) = v91;
      *(v65 + 40) = v93;
      v66 = *(v92 + 3);
      v67 = *(v92 + 4);
      v68 = __swift_project_boxed_opaque_existential_1(v92, v66);
      MEMORY[0x1EEE9AC00](v68, v69);
      MEMORY[0x1EEE9AC00](v70, v71);
      v80[-4] = sub_1D615B4A4;
      v80[-3] = &v80[-6];
      v72 = v85;
      v78 = sub_1D66629BC;
      v79 = v63;
      v73 = v90;
      v75 = sub_1D5D2F7A4(v85, sub_1D615B49C, v74, sub_1D615B4A4, &v80[-6], v66, v67);
      if (v73)
      {

        v99 = v107;
        v100[0] = v108[0];
        *(v100 + 9) = *(v108 + 9);
        v95 = v103;
        v96 = v104;
        v97 = v105;
        v98 = v106;
        v93 = v101;
        v94 = v102;
        sub_1D62B49F0(&v93);
        v50 = v124;
      }

      else
      {
        v76 = v75;

        if ((v76 & 1) == 0)
        {

          v99 = v107;
          v100[0] = v108[0];
          *(v100 + 9) = *(v108 + 9);
          v95 = v103;
          v96 = v104;
          v97 = v105;
          v98 = v106;
          v93 = v101;
          v94 = v102;
          sub_1D62B49F0(&v93);
          sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
          v50 = v124;
          return sub_1D5D2CFE8(v50, sub_1D6662624);
        }

        sub_1D6662A38();
        v50 = v124;
        sub_1D72647EC();

        v99 = v107;
        v100[0] = v108[0];
        *(v100 + 9) = *(v108 + 9);
        v95 = v103;
        v96 = v104;
        v97 = v105;
        v98 = v106;
        v93 = v101;
        v94 = v102;
        sub_1D62B49F0(&v93);
      }

      sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v50, sub_1D6662624);
}

uint64_t FormatOptionExpression.Exists.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v91 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v88 - v11;
  sub_1D6662A8C(0);
  v103 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v110 = *(v1 + 16);
  v90 = *(v1 + 17);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5C60A9C(0);
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF25238, sub_1D5C60A9C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatOptionExpression.Exists, v22, v24, v19, &type metadata for FormatOptionExpression.Exists, v22, &type metadata for FormatVersions.JazzkonC, v20, v16, v23, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v95 = v26;
  v96 = v25;
  v93 = v27 + 16;
  v94 = v28;
  (v28)(v12);
  v92 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v107 = v17;
  v108 = v18;
  v105 = 0uLL;
  v106 = 0;
  v29 = v103;
  v30 = &v16[*(v103 + 11)];
  v101 = v12;
  v31 = *v30;
  v32 = *(v30 + 1);
  v109 = 0;
  v33 = swift_allocObject();
  v102 = &v88;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v109;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v88 - 4) = sub_1D5B4AA6C;
  *(&v88 - 3) = 0;
  v86 = sub_1D67088E0;
  v87 = v35;
  v109 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v109;
  v97 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D6662B20(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF031F8, sub_1D6662B20, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v99 = v39;
  v100 = v38;
  v40 = sub_1D72647CC();
  v109 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v109;
  v42 = *(v29 + 9);
  v43 = v101;
  v44 = &v16[v42];
  v103 = v16;
  v45 = *&v16[v42 + 24];
  v46 = *&v16[v42 + 32];
  v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  *(&v88 - 4) = sub_1D615B4A4;
  *(&v88 - 3) = (&v88 - 6);
  v86 = sub_1D6662BB4;
  v87 = v36;
  v51 = v104;
  sub_1D5D2BC70(v43, sub_1D615B49C, v52, sub_1D615B4A4, (&v88 - 6), v45, v46);
  if (v51)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v53 = v103;
  }

  else
  {
    v89 = v44;

    v53 = v103;
    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v55 = v98;
    v94(v98, v95, v96);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v107) = v110;
    v104 = xmmword_1D728CF30;
    v105 = xmmword_1D728CF30;
    v106 = 0;
    v109 = 0;
    v56 = swift_allocObject();
    v102 = &v88;
    *(v56 + 16) = v104;
    *(v56 + 32) = v109;
    v57 = v97;
    *(v56 + 40) = v97;
    *(v56 + 48) = v32;
    MEMORY[0x1EEE9AC00](v56, v58);
    v101 = 0;
    *(&v88 - 4) = sub_1D5B4AA6C;
    *(&v88 - 3) = 0;
    v86 = sub_1D67088E0;
    v87 = v59;
    v109 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v104;
    *(v60 + 32) = v109;
    *(v60 + 40) = v57;
    *(v60 + 48) = v32;
    swift_retain_n();
    v61 = sub_1D72647CC();
    v109 = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = v104;
    *(v62 + 40) = v109;
    v63 = *(v89 + 3);
    v64 = *(v89 + 4);
    v65 = __swift_project_boxed_opaque_existential_1(v89, v63);
    MEMORY[0x1EEE9AC00](v65, v66);
    MEMORY[0x1EEE9AC00](v67, v68);
    *(&v88 - 4) = sub_1D615B4A4;
    *(&v88 - 3) = (&v88 - 6);
    v86 = sub_1D67088E0;
    v87 = v60;
    v69 = v101;
    sub_1D5D2BC70(v55, sub_1D615B49C, v70, sub_1D615B4A4, (&v88 - 6), v63, v64);
    if (v69)
    {
      sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D6662C30();
      sub_1D72647EC();
      sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

      v71 = v91;
      v94(v91, v95, v96);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v107) = v90;
      v104 = xmmword_1D7297410;
      v105 = xmmword_1D7297410;
      v106 = 0;
      v109 = 0;
      v72 = swift_allocObject();
      v102 = &v88;
      *(v72 + 16) = v104;
      *(v72 + 32) = v109;
      v73 = v97;
      *(v72 + 40) = v97;
      *(v72 + 48) = v32;
      MEMORY[0x1EEE9AC00](v72, v74);
      *(&v88 - 4) = sub_1D5B4AA6C;
      *(&v88 - 3) = 0;
      v86 = sub_1D67088E0;
      v87 = v75;
      v109 = 0;
      v76 = swift_allocObject();
      *(v76 + 16) = v104;
      *(v76 + 32) = v109;
      *(v76 + 40) = v73;
      *(v76 + 48) = v32;
      swift_retain_n();
      v77 = sub_1D72647CC();
      v109 = 0;
      v78 = swift_allocObject();
      *(v78 + 16) = v77;
      *(v78 + 24) = v104;
      *(v78 + 40) = v109;
      v79 = *(v89 + 3);
      v80 = *(v89 + 4);
      v81 = __swift_project_boxed_opaque_existential_1(v89, v79);
      MEMORY[0x1EEE9AC00](v81, v82);
      MEMORY[0x1EEE9AC00](v83, v84);
      *(&v88 - 4) = sub_1D615B4A4;
      *(&v88 - 3) = (&v88 - 6);
      v86 = sub_1D67088E0;
      v87 = v76;
      sub_1D5D2BC70(v71, sub_1D615B49C, v85, sub_1D615B4A4, (&v88 - 6), v79, v80);

      sub_1D6056F28();
      sub_1D72647EC();
      sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v53, sub_1D6662A8C);
}

uint64_t FormatOptionExpression.Exists.Operator.encode(to:)(void *a1)
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
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD30);
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

uint64_t FormatOperator.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v70 = v59 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v69 = v59 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v68 = v59 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v67 = v59 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v66 = v59 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v65 = v59 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v64 = v59 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v63 = v59 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v62 = v59 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v61 = v59 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v60 = v59 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v59 - v41;
  v75 = *v1;
  v43 = a1[3];
  v44 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
  v47 = *(*(v45 - 8) + 16);
  v47(v42, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = v73;
  sub_1D5D2BEC4(v42, sub_1D5B4AA6C, 0, v43, v44);
  if (v48)
  {
    return sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  v50 = v72;
  v51 = v72[3];
  v73 = v72[4];
  v59[1] = __swift_project_boxed_opaque_existential_1(v72, v51);
  if (v75 > 5)
  {
    v55 = v47;
    if (v75 > 8)
    {
      if (v75 == 9)
      {
        v53 = 9;
        v56 = v69;
        v55(v69, v46, v45);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v53 = v75;
        if (v75 != 10)
        {
          v58 = v71;
          v55(v71, v46, v45);
          swift_storeEnumTagMultiPayload();
          sub_1D5D2BEC4(v58, sub_1D5B4AA6C, 0, v51, v73);
          v57 = v58;
          goto LABEL_31;
        }

        v56 = v70;
        v55(v70, v46, v45);
        swift_storeEnumTagMultiPayload();
      }
    }

    else if (v75 == 6)
    {
      v53 = 6;
      v56 = v66;
      v55(v66, v46, v45);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = v75;
      if (v75 == 7)
      {
        v56 = v67;
        v55(v67, v46, v45);
      }

      else
      {
        v56 = v68;
        v55(v68, v46, v45);
      }

      swift_storeEnumTagMultiPayload();
    }

LABEL_30:
    sub_1D5D2BEC4(v56, sub_1D5B4AA6C, 0, v51, v73);
    v57 = v56;
LABEL_31:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    goto LABEL_32;
  }

  v52 = v47;
  if (v75 <= 2)
  {
    if (v75)
    {
      v53 = v75;
      if (v75 == 1)
      {
        v54 = v61;
        v52(v61, v46, v45);
      }

      else
      {
        v54 = v62;
        v52(v62, v46, v45);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = 0;
      v54 = v60;
      v52(v60, v46, v45);
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_27;
  }

  if (v75 == 3)
  {
    v53 = 3;
    v54 = v63;
    v52(v63, v46, v45);
    swift_storeEnumTagMultiPayload();
    goto LABEL_27;
  }

  v53 = v75;
  if (v75 != 4)
  {
    v56 = v65;
    v52(v65, v46, v45);
    swift_storeEnumTagMultiPayload();
    goto LABEL_30;
  }

  v54 = v64;
  v52(v64, v46, v45);
  swift_storeEnumTagMultiPayload();
LABEL_27:
  sub_1D5D2BEC4(v54, sub_1D5B4AA6C, 0, v51, v73);
  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
LABEL_32:
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_1D7264B3C();
  v76 = v53;
  FormatOperator.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v74, v74[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t FormatFrameExpressionLogic.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
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
    v12 = v33;
    v13 = a1[3];
    v28 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
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
          *(v21 + 16) = &unk_1F50FC538;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v28;
          goto LABEL_9;
        }
      }
    }

    sub_1D6662C84();
    v30 = 0uLL;
    sub_1D726431C();
    if (v29)
    {
      if (v29 == 1)
      {
        v30 = xmmword_1D7279980;
        sub_1D6662D2C();
        sub_1D726431C();
        a1 = v28;
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = v29;
        v25 = BYTE8(v29);
        v26 = 64;
      }

      else
      {
        v29 = xmmword_1D7279980;
        sub_1D6662CD8();
        sub_1D726431C();
        a1 = v28;
        (*(v11 + 8))(v10, v6);
        v24 = v30;
        v25 = BYTE8(v30);
        v23 = v31;
        v26 = v32 | 0x80;
      }
    }

    else
    {
      v30 = xmmword_1D7279980;
      sub_1D6662D2C();
      sub_1D726431C();
      a1 = v28;
      (*(v11 + 8))(v10, v6);
      v23 = 0;
      v26 = 0;
      v24 = v29;
      v25 = BYTE8(v29);
    }

    *v12 = v24;
    *(v12 + 8) = v25;
    *(v12 + 16) = v23;
    *(v12 + 24) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFrameExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v1;
  v33 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = a1[3];
  v21 = a1[4];
  v34 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatFrameExpressionLogic, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatFrameExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v22, &off_1F51F6C78);
  if (v19 >> 6)
  {
    if (v19 >> 6 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638D438(1, v35, v34, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638D5D0(2, v35, v34, v33, v19 & 1, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638D438(0, v35, v34, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatGroupBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v99 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v97 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v96 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v95 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v94 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v93 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v92 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v91 = &v87 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v90 = &v87 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v89 = &v87 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v88 = &v87 - v42;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = &v87 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v1 + 8);
  v102 = *v1;
  v101 = v47;
  v48 = *(v1 + 24);
  v100 = *(v1 + 16);
  v50 = *(v1 + 32);
  v49 = *(v1 + 40);
  v51 = *(v1 + 48);
  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  v54 = sub_1D5C30408();
  v120 = v46;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Text, &type metadata for FormatCodingKeys, v55, v52, &type metadata for FormatGroupBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v53, v46, v54, &off_1F51F6C78);
  switch(v51 >> 4)
  {
    case 1u:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v74 = sub_1D725BD1C();
      v75 = __swift_project_value_buffer(v74, qword_1EDFFCD30);
      v58 = v89;
      (*(*(v74 - 8) + 16))(v89, v75, v74);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AA68C(1, v102, v58);
      goto LABEL_29;
    case 2u:
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCD98);
      v58 = v90;
      (*(*(v68 - 8) + 16))(v90, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AA820(2, v102, v58);
      goto LABEL_29;
    case 3u:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v70 = sub_1D725BD1C();
      v71 = __swift_project_value_buffer(v70, qword_1EDFFCD18);
      v58 = v91;
      (*(*(v70 - 8) + 16))(v91, v71, v70);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AA9B4(3, v102, v101, v100, v58);
      goto LABEL_29;
    case 4u:
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCD98);
      (*(*(v62 - 8) + 16))(v30, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AAB4C(4, v102, v30);
      goto LABEL_43;
    case 5u:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCD68);
      v30 = v92;
      (*(*(v77 - 8) + 16))(v92, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v79 = 5;
      goto LABEL_36;
    case 6u:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCC90);
      v30 = v93;
      (*(*(v80 - 8) + 16))(v93, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v79 = 6;
LABEL_36:
      v59 = v120;
      sub_1D63AA68C(v79, v102, v30);
      goto LABEL_43;
    case 7u:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCD68);
      v30 = v94;
      (*(*(v72 - 8) + 16))(v94, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AACE0(7, v102, v30);
      goto LABEL_43;
    case 8u:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v84 = sub_1D725BD1C();
      v85 = __swift_project_value_buffer(v84, qword_1EDFFCD68);
      v30 = v95;
      (*(*(v84 - 8) + 16))(v95, v85, v84);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AAE74(8, v102, v101, v30);
      goto LABEL_43;
    case 9u:
      *&v109 = v102;
      *(&v109 + 1) = v101;
      v110 = v100;
      v111 = v48;
      v112 = v50;
      v113 = v49;
      v114 = v51 & 0xF;
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCCA8);
      v30 = v96;
      (*(*(v66 - 8) + 16))(v96, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AB00C(9, &v109, v30);
      goto LABEL_43;
    case 0xAu:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v82 = sub_1D725BD1C();
      v83 = __swift_project_value_buffer(v82, qword_1EDFFCCA8);
      v30 = v97;
      (*(*(v82 - 8) + 16))(v97, v83, v82);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AB1B4(10, v102, v101 & 1, v30);
      goto LABEL_43;
    case 0xBu:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCE80);
      v30 = v98;
      (*(*(v60 - 8) + 16))(v98, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AB350(11, v102, v30);
      goto LABEL_43;
    case 0xCu:
      *&v115 = v102;
      *(&v115 + 1) = v101;
      v116 = v100;
      v117 = v48;
      v118 = v50;
      v119 = v49;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCE38);
      v30 = v99;
      (*(*(v64 - 8) + 16))(v99, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AB4E4(12, &v115, v30);
LABEL_43:
      v76 = v30;
      break;
    default:
      *&v103 = v102;
      *(&v103 + 1) = v101;
      v104 = v100;
      v105 = v48;
      v106 = v50;
      v107 = v49;
      v108 = v51;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v56 = sub_1D725BD1C();
      v57 = __swift_project_value_buffer(v56, qword_1EDFFCD50);
      v58 = v88;
      (*(*(v56 - 8) + 16))(v88, v57, v56);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AA4E4(0, &v103, v58);
LABEL_29:
      v76 = v58;
      break;
  }

  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v59, sub_1D5D30DC4);
}

uint64_t FormatFontTrait.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v102 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v101 = &v82 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v100 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v99 = &v82 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v98 = &v82 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v97 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v96 = &v82 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v95 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v94 = &v82 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v93 = &v82 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v92 = &v82 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v91 = &v82 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v90 = &v82 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v89 = &v82 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v88 = &v82 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v87 = &v82 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v86 = &v82 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v85 = &v82 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v84 = &v82 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v83 = &v82 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v82 - v65;
  v103 = *v1;
  v104 = a1;
  v67 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v67);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v69 = sub_1D725BD1C();
  v70 = __swift_project_value_buffer(v69, qword_1EDFFCD30);
  v71 = *(*(v69 - 8) + 16);
  v71(v66, v70, v69);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v72 = v105;
  sub_1D5D2BEC4(v66, sub_1D5B4AA6C, 0, v67, v68);
  if (v72)
  {
    return sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);
  v73 = v104;
  v74 = v104[3];
  v82 = v104[4];
  v105 = __swift_project_boxed_opaque_existential_1(v104, v74);
  v75 = v103;
  switch(v103)
  {
    case 1:
      v76 = v84;
      v71(v84, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 2:
      v76 = v85;
      v71(v85, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 3:
      v76 = v86;
      v71(v86, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 4:
      v77 = v103;
      v78 = v87;
      v71(v87, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 5:
      v77 = v103;
      v78 = v88;
      v71(v88, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 6:
      v77 = v103;
      v78 = v89;
      v71(v89, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 7:
      v77 = v103;
      v78 = v90;
      v71(v90, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 8:
      v77 = v103;
      v78 = v91;
      v71(v91, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 9:
      v77 = v103;
      v78 = v92;
      v71(v92, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 10:
      v77 = v103;
      v78 = v93;
      v71(v93, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 11:
      v77 = v103;
      v78 = v94;
      v71(v94, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 12:
      v77 = v103;
      v78 = v95;
      v71(v95, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 13:
      v77 = v103;
      v78 = v96;
      v71(v96, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 14:
      v77 = v103;
      v78 = v97;
      v71(v97, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 15:
      v77 = v103;
      v78 = v98;
      v71(v98, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 16:
      v77 = v103;
      v78 = v99;
      v71(v99, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 17:
      v77 = v103;
      v78 = v100;
      v71(v100, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 18:
      v77 = v103;
      v78 = v101;
      v71(v101, v70, v69);
      swift_storeEnumTagMultiPayload();
LABEL_26:
      sub_1D5D2BEC4(v78, sub_1D5B4AA6C, 0, v74, v82);
      v80 = v78;
      goto LABEL_27;
    case 19:
      v77 = v103;
      v81 = v102;
      v71(v102, v70, v69);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v81, sub_1D5B4AA6C, 0, v74, v82);
      v80 = v81;
LABEL_27:
      sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v76 = v83;
      v71(v83, v70, v69);
      swift_storeEnumTagMultiPayload();
LABEL_18:
      sub_1D5D2BEC4(v76, sub_1D5B4AA6C, 0, v74, v82);
      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
      v77 = v75;
      break;
  }

  __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  sub_1D7264B3C();
  v107 = v77;
  FormatFontTrait.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v106, v106[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v106);
}

uint64_t FormatOptionsNodeStatementOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D6662DD4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6662E68(0);
  sub_1D5B58B84(&qword_1EDF24E38, sub_1D6662E68, &unk_1D7321584);
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

      v24 = sub_1D6627E68(0x696669746E656469, 0xEA00000000007265, 0x73776F726874, 0xE600000000000000);
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
    sub_1D726431C();
    (*(v14 + 8))(v10, v6);
    v27 = v34;
  }

  else
  {
    (*(v14 + 8))(v10, v6);
    v27 = 1;
  }

  *v13 = v21;
  *(v13 + 8) = v20;
  *(v13 + 16) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatOptionsNodeStatementOption.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  sub_1D6662FE8(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v86 = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D6662E68(0);
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24E38, sub_1D6662E68, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementOption, v20, v22, v17, &type metadata for FormatOptionsNodeStatementOption, v20, &type metadata for FormatVersions.StarSky, v18, v14, v21, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v73 = v24;
  v74 = v23;
  v71 = v25 + 16;
  v72 = v26;
  (v26)(v9);
  v70 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v15;
  v84 = v16;
  v81 = 0uLL;
  v82 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = v14;
  v29 = *v27;
  v30 = *(v27 + 1);
  v85 = 0;
  v31 = swift_allocObject();
  v78 = &v68;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v85;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *(&v68 - 4) = sub_1D5B4AA6C;
  *(&v68 - 3) = 0;
  v66 = sub_1D67088E4;
  v67 = v33;
  v85 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v85;
  v69 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D666307C(0);
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF02D68, sub_1D666307C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v76 = v36;
  v77 = v37;
  v38 = sub_1D72647CC();
  v85 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v85;
  v40 = *(v11 + 36);
  v79 = v28;
  v41 = &v28[v40];
  v42 = *&v28[v40 + 24];
  v43 = *(v41 + 4);
  v44 = __swift_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v68 - 4) = sub_1D615B4A4;
  *(&v68 - 3) = (&v68 - 6);
  v66 = sub_1D67088E4;
  v67 = v34;
  v48 = v80;
  sub_1D5D2BC70(v9, sub_1D615B49C, v49, sub_1D615B4A4, (&v68 - 6), v42, v43);
  if (v48)
  {
    v50 = v79;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v52 = v50;
  }

  else
  {

    v51 = v79;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v54 = v75;
    v72(v75, v73, v74);
    swift_storeEnumTagMultiPayload();
    if (v86)
    {
      v55 = v51;
    }

    else
    {
      LOBYTE(v81) = 0;
      v56 = swift_allocObject();
      v80 = xmmword_1D728CF30;
      *(v56 + 16) = xmmword_1D728CF30;
      *(v56 + 32) = v81;
      *(v56 + 40) = v69;
      *(v56 + 48) = v30;

      v55 = v51;
      v57 = sub_1D72647CC();
      LOBYTE(v81) = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = v80;
      *(v58 + 40) = v81;
      v59 = *(v41 + 3);
      v60 = *(v41 + 4);
      v61 = __swift_project_boxed_opaque_existential_1(v41, v59);
      MEMORY[0x1EEE9AC00](v61, v62);
      MEMORY[0x1EEE9AC00](v63, v64);
      *(&v68 - 4) = sub_1D5B4AA6C;
      *(&v68 - 3) = 0;
      v66 = sub_1D6663110;
      v67 = v56;
      LOBYTE(v59) = sub_1D5D2F7A4(v54, sub_1D615B49C, v65, sub_1D615B4A4, (&v68 - 6), v59, v60);

      if (v59)
      {
        v81 = v80;
        v82 = 0;
        LOBYTE(v83) = 0;
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    v52 = v55;
  }

  return sub_1D5D2CFE8(v52, sub_1D6662FE8);
}

uint64_t FormatButtonNodeState.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v31 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v30 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  v34 = *v1;
  v19 = a1[3];
  v20 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
  v23 = *(*(v21 - 8) + 16);
  v23(v18, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v24 = v37;
  sub_1D5D2BEC4(v18, sub_1D5B4AA6C, 0, v19, v20);
  result = sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  if (!v24)
  {
    v26 = v35[3];
    v27 = v35[4];
    v37 = __swift_project_boxed_opaque_existential_1(v35, v26);
    if (v34 > 1)
    {
      v28 = v32;
      v23(v32, v22, v21);
    }

    else
    {
      v28 = v30;
      v23(v30, v22, v21);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v28, sub_1D5B4AA6C, 0, v26, v27);
    sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return result;
}

uint64_t FormatBindingContent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v41 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v41, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D666318C(0);
  v9 = v8;
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6663220(0);
  sub_1D5B58B84(&qword_1EC886258, sub_1D6663220, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v40;
  v14 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = sub_1D7264AFC();
  LOBYTE(v14) = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v16 = v44;
  if (v14)
  {
    v17 = sub_1D726433C();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 48);
      while (*v19 != 1)
      {
        v19 += 24;
        if (!--v18)
        {
          goto LABEL_7;
        }
      }

      v25 = *(v19 - 2);
      v24 = *(v19 - 1);

      v26 = sub_1D6615368();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v12, v9);
      a1 = v39;
      goto LABEL_10;
    }

LABEL_7:
  }

  v42 = 0uLL;
  v43 = 0;
  v20 = sub_1D72642BC();
  v22 = v21;
  v38 = v20;
  v42 = xmmword_1D728CF30;
  v43 = 0;
  v23 = sub_1D72642BC();
  a1 = v39;
  v36 = v23;
  v37 = v28;
  v42 = xmmword_1D7297410;
  v43 = 0;
  v34 = sub_1D726422C();
  v35 = v30;
  v42 = xmmword_1D72BAA60;
  v43 = 0;
  sub_1D5B58B84(&qword_1EC886260, type metadata accessor for FormatContent, &protocol conformance descriptor for FormatContent);
  sub_1D726431C();
  (*(v13 + 8))(v12, v9);
  v31 = type metadata accessor for FormatBindingContent(0);
  sub_1D5C8F76C(v7, v16 + *(v31 + 28), type metadata accessor for FormatContent);
  *v16 = v38;
  v16[1] = v22;
  v32 = v37;
  v16[2] = v36;
  v16[3] = v32;
  v33 = v35;
  v16[4] = v34;
  v16[5] = v33;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v123 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v122 = &v119 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v124 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v119 - v15;
  sub_1D66633A0(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = type metadata accessor for FormatBindingContent(0);
  sub_1D6663220(0);
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EC886258, sub_1D6663220, &unk_1D7321584);
  v121 = v24;
  sub_1D5D2EE70(v24, v26, v28, v22, v24, v26, &type metadata for FormatVersions.StarSkyE, v23, v21, v27, &off_1F51F6CB8);
  v29 = *v2;
  v30 = v2[1];
  v125 = v2;
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCCE8);
  v33 = *(v31 - 8);
  v130 = *(v33 + 16);
  v131 = v32;
  v126 = v31;
  v129 = v33 + 16;
  v130(v16);
  v128 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v139 = v29;
  v140 = v30;
  v137 = 0uLL;
  v138 = 0;
  v34 = &v21[*(v18 + 11)];
  v136 = v18;
  v35 = *v34;
  v36 = *(v34 + 1);
  v141 = 0;
  v37 = swift_allocObject();
  v134 = &v119;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v141;
  *(v37 + 40) = v35;
  *(v37 + 48) = v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  *(&v119 - 4) = sub_1D5B4AA6C;
  *(&v119 - 3) = 0;
  v117 = sub_1D67088E8;
  v118 = v39;
  v141 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v141;
  v127 = v35;
  *(v40 + 40) = v35;
  *(v40 + 48) = v36;
  sub_1D6663434(0);
  v42 = v41;
  v43 = v16;
  v44 = sub_1D5B58B84(&qword_1EC886278, sub_1D6663434, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v132 = v42;
  v133 = v44;
  v45 = sub_1D72647CC();
  v141 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v141;
  v47 = &v21[*(v136 + 9)];
  v136 = v21;
  v48 = *(v47 + 3);
  v49 = *(v47 + 4);
  v50 = __swift_project_boxed_opaque_existential_1(v47, v48);
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  *(&v119 - 4) = sub_1D615B4A4;
  *(&v119 - 3) = (&v119 - 6);
  v117 = sub_1D67088E8;
  v118 = v40;
  v54 = v135;
  sub_1D5D2BC70(v16, sub_1D615B49C, v55, sub_1D615B4A4, (&v119 - 6), v48, v49);
  if (!v54)
  {
    v120 = v47;
    v119 = v36;

    sub_1D72647EC();
    sub_1D5D2CFE8(v16, type metadata accessor for FormatVersionRequirement);

    v59 = v124;
    v60 = v125[2];
    v61 = v125[3];
    (v130)(v124, v131, v126);
    swift_storeEnumTagMultiPayload();
    v139 = v60;
    v140 = v61;
    v135 = xmmword_1D728CF30;
    v137 = xmmword_1D728CF30;
    v138 = 0;
    v141 = 0;
    v62 = swift_allocObject();
    v134 = &v119;
    *(v62 + 16) = v135;
    *(v62 + 32) = v141;
    v63 = v127;
    v64 = v119;
    *(v62 + 40) = v127;
    *(v62 + 48) = v64;
    MEMORY[0x1EEE9AC00](v62, v65);
    *(&v119 - 4) = sub_1D5B4AA6C;
    *(&v119 - 3) = 0;
    v117 = sub_1D67088E8;
    v118 = v66;
    v141 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v135;
    *(v67 + 32) = v141;
    *(v67 + 40) = v63;
    *(v67 + 48) = v64;
    swift_retain_n();
    v68 = sub_1D72647CC();
    v141 = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v135;
    *(v69 + 40) = v141;
    v70 = *(v120 + 3);
    v71 = *(v120 + 4);
    v72 = __swift_project_boxed_opaque_existential_1(v120, v70);
    MEMORY[0x1EEE9AC00](v72, v73);
    MEMORY[0x1EEE9AC00](v74, v75);
    *(&v119 - 4) = sub_1D615B4A4;
    *(&v119 - 3) = (&v119 - 6);
    v117 = sub_1D67088E8;
    v118 = v67;
    sub_1D5D2BC70(v59, sub_1D615B49C, v76, sub_1D615B4A4, (&v119 - 6), v70, v71);

    sub_1D72647EC();
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

    v77 = v126;
    v78 = v125[4];
    v79 = v125[5];
    v80 = v64;
    v81 = v122;
    (v130)(v122, v131, v126);
    swift_storeEnumTagMultiPayload();
    v135 = xmmword_1D7297410;
    v137 = xmmword_1D7297410;
    v138 = 0;
    LOBYTE(v139) = 0;
    v82 = swift_allocObject();
    v84 = v82;
    *(v82 + 16) = v135;
    *(v82 + 32) = v139;
    v85 = v127;
    *(v82 + 40) = v127;
    *(v82 + 48) = v80;
    if (v79)
    {
      v134 = &v119;
      v139 = v78;
      v140 = v79;
      MEMORY[0x1EEE9AC00](v82, v83);
      *(&v119 - 4) = sub_1D5B4AA6C;
      *(&v119 - 3) = 0;
      v117 = sub_1D67088E8;
      v118 = v84;
      v141 = 0;
      v86 = swift_allocObject();
      *(v86 + 16) = v135;
      *(v86 + 32) = v141;
      *(v86 + 40) = v85;
      *(v86 + 48) = v80;
      swift_retain_n();

      v87 = sub_1D72647CC();
      v141 = 0;
      v88 = swift_allocObject();
      *(v88 + 16) = v87;
      *(v88 + 24) = v135;
      *(v88 + 40) = v141;
      v89 = *(v120 + 3);
      v90 = *(v120 + 4);
      v91 = __swift_project_boxed_opaque_existential_1(v120, v89);
      MEMORY[0x1EEE9AC00](v91, v92);
      MEMORY[0x1EEE9AC00](v93, v94);
      *(&v119 - 4) = sub_1D615B4A4;
      *(&v119 - 3) = (&v119 - 6);
      v117 = sub_1D66634C8;
      v118 = v86;
      v96 = sub_1D5D2F7A4(v81, sub_1D615B49C, v95, sub_1D615B4A4, (&v119 - 6), v89, v90);
      v98 = v96;

      v97 = v123;
      if (v98)
      {
        sub_1D72647EC();
        v77 = v126;
        v85 = v127;
        v100 = v130;
        v99 = v131;

        sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);
        v116 = v99;
        v80 = v119;
LABEL_14:
        v131 = *(v121 + 28);
        v100(v97, v116, v77);
        swift_storeEnumTagMultiPayload();
        v135 = xmmword_1D72BAA60;
        v137 = xmmword_1D72BAA60;
        v138 = 0;
        LOBYTE(v139) = 0;
        v101 = swift_allocObject();
        v134 = &v119;
        *(v101 + 16) = v135;
        *(v101 + 32) = v139;
        *(v101 + 40) = v85;
        *(v101 + 48) = v80;
        MEMORY[0x1EEE9AC00](v101, v102);
        *(&v119 - 4) = sub_1D5B4AA6C;
        *(&v119 - 3) = 0;
        v117 = sub_1D67088E8;
        v118 = v103;
        LOBYTE(v139) = 0;
        v104 = swift_allocObject();
        *(v104 + 16) = v135;
        *(v104 + 32) = v139;
        *(v104 + 40) = v85;
        *(v104 + 48) = v80;
        swift_retain_n();
        v105 = sub_1D72647CC();
        LOBYTE(v139) = 0;
        v106 = swift_allocObject();
        *(v106 + 16) = v105;
        *(v106 + 24) = v135;
        *(v106 + 40) = v139;
        v107 = *(v120 + 3);
        v108 = *(v120 + 4);
        v109 = __swift_project_boxed_opaque_existential_1(v120, v107);
        MEMORY[0x1EEE9AC00](v109, v110);
        MEMORY[0x1EEE9AC00](v111, v112);
        *(&v119 - 4) = sub_1D615B4A4;
        *(&v119 - 3) = (&v119 - 6);
        v113 = v123;
        v117 = sub_1D67088E8;
        v118 = v104;
        sub_1D5D2BC70(v123, sub_1D615B49C, v114, sub_1D615B4A4, (&v119 - 6), v107, v108);

        type metadata accessor for FormatContent(0);
        sub_1D5B58B84(&qword_1EC886280, type metadata accessor for FormatContent, &protocol conformance descriptor for FormatContent);
        v115 = v136;
        sub_1D72647EC();
        sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);

        v57 = v115;
        return sub_1D5D2CFE8(v57, sub_1D66633A0);
      }

      sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);
      v80 = v119;
      v77 = v126;
      v85 = v127;
    }

    else
    {

      sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

      v97 = v123;
    }

    v100 = v130;
    v116 = v131;
    goto LABEL_14;
  }

  v56 = v136;
  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

  v57 = v56;
  return sub_1D5D2CFE8(v57, sub_1D66633A0);
}

uint64_t FormatFrameNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v149 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v155 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v154 = &v149 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  *&v165 = &v149 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v149 - v20;
  sub_1D6664B44(0);
  *&v166 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5CC2354(0);
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF24BB8, sub_1D5CC2354, &unk_1D7321584);
  v163 = v25;
  v31 = v26;
  v32 = v2;
  sub_1D5D2EE70(v4, v29, v33, v31, v4, v29, &type metadata for FormatVersions.JazzkonC, v27, v25, v30, &off_1F51F6C78);
  swift_beginAccess();
  v35 = v2[2];
  v34 = v2[3];
  v36 = qword_1EDF31EB0;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = sub_1D725BD1C();
  v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
  v39 = *(v37 - 1);
  v40 = *(v39 + 16);
  v41 = v39 + 16;
  v162 = v38;
  (v40)(v21);
  v42 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v43 = sub_1D725895C();
  v44 = (*(*(v43 - 8) + 48))(v8, 1, v43);
  v158 = v32;
  v161 = v40;
  v160 = v41;
  v159 = v42;
  if (v44 != 1)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v67 = v163;
LABEL_7:
    v68 = v162;
    v69 = v166;
    goto LABEL_8;
  }

  v153 = v35;
  v156 = v37;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v45 = v166;
  v46 = v163;
  v47 = &v163[*(v166 + 44)];
  v49 = *v47;
  v48 = *(v47 + 1);
  LOBYTE(v167) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v167;
  *(v50 + 40) = v49;
  *(v50 + 48) = v48;
  sub_1D6664BD8(0);
  v52 = v51;
  v53 = sub_1D5B58B84(&qword_1EDF02A78, sub_1D6664BD8, MEMORY[0x1E69E6F60]);

  v157 = v52;
  v54 = sub_1D72647CC();
  LOBYTE(v167) = 0;
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 32) = 0;
  *(v55 + 16) = v54;
  *(v55 + 40) = v167;
  v56 = (v46 + *(v45 + 36));
  v57 = v56[3];
  v58 = v56[4];
  v59 = __swift_project_boxed_opaque_existential_1(v56, v57);
  MEMORY[0x1EEE9AC00](v59, v60);
  MEMORY[0x1EEE9AC00](v61, v62);
  *(&v149 - 4) = sub_1D5B4AA6C;
  *(&v149 - 3) = 0;
  v147 = sub_1D6664C6C;
  v148 = v50;
  v63 = v164;
  v65 = sub_1D5D2F7A4(v21, sub_1D615B49C, v64, sub_1D615B4A4, (&v149 - 6), v57, v58);
  if (v63)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v66 = v46;
    return sub_1D5D2CFE8(v66, sub_1D6664B44);
  }

  v100 = v65;
  v164 = v53;

  v32 = v158;
  if ((v100 & 1) == 0)
  {
    v164 = 0;
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v67 = v163;
    v37 = v156;
    v40 = v161;
    goto LABEL_7;
  }

  v167 = 0uLL;
  LOBYTE(v168) = 0;
  v174 = v153;
  v175 = v34;
  v67 = v163;
  sub_1D72647EC();

  sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  v40 = v161;
  v68 = v162;
  v69 = v166;
  v164 = 0;
  v37 = v156;
LABEL_8:
  v70 = v32[4];
  (v40)(v165, v68, v37);
  swift_storeEnumTagMultiPayload();
  v174 = v70;
  v166 = xmmword_1D728CF30;
  v167 = xmmword_1D728CF30;
  LOBYTE(v168) = 0;
  v71 = &v67[*(v69 + 44)];
  v73 = *v71;
  v72 = *(v71 + 1);
  LOBYTE(v172) = 0;
  v74 = swift_allocObject();
  v75 = v67;
  v157 = &v149;
  *(v74 + 16) = v166;
  *(v74 + 32) = v172;
  *(v74 + 40) = v73;
  *(v74 + 48) = v72;
  MEMORY[0x1EEE9AC00](v74, v76);
  v156 = &v149 - 6;
  *(&v149 - 4) = sub_1D5B4AA6C;
  *(&v149 - 3) = 0;
  v147 = sub_1D670887C;
  v148 = v77;
  LOBYTE(v172) = 0;
  v78 = v69;
  v79 = swift_allocObject();
  *(v79 + 16) = v166;
  *(v79 + 32) = v172;
  v150 = v73;
  *(v79 + 40) = v73;
  *(v79 + 48) = v72;
  sub_1D6664BD8(0);
  v81 = v80;
  v82 = sub_1D5B58B84(&qword_1EDF02A78, sub_1D6664BD8, MEMORY[0x1E69E6F60]);
  v151 = v72;
  swift_retain_n();
  v152 = v81;
  v153 = v82;
  v83 = sub_1D72647CC();
  LOBYTE(v172) = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v166;
  *(v84 + 40) = v172;
  v85 = *(v78 + 36);
  v86 = v75;
  v87 = v75 + v85;
  v88 = v37;
  v89 = *(v75 + v85 + 24);
  v90 = *(v75 + v85 + 32);
  v91 = __swift_project_boxed_opaque_existential_1((v75 + v85), v89);
  MEMORY[0x1EEE9AC00](v91, v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  v95 = v156;
  *(&v149 - 4) = sub_1D615B4A4;
  *(&v149 - 3) = v95;
  v96 = v164;
  v97 = v165;
  v147 = sub_1D670887C;
  v148 = v79;
  sub_1D5D2BC70(v165, sub_1D615B49C, v98, sub_1D615B4A4, (&v149 - 6), v89, v90);
  if (v96)
  {
    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

    v66 = v86;
    return sub_1D5D2CFE8(v66, sub_1D6664B44);
  }

  *&v166 = v87;
  v156 = v88;

  sub_1D5CA1E90();
  sub_1D72647EC();
  sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);

  v101 = v158;
  swift_beginAccess();
  v102 = v101[5];
  v103 = v154;
  (v161)(v154, v162, v156);
  swift_storeEnumTagMultiPayload();
  if (!*(v102 + 16))
  {
    v164 = 0;
LABEL_18:
    sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
    goto LABEL_22;
  }

  LOBYTE(v167) = 0;
  v104 = swift_allocObject();
  v165 = xmmword_1D7297410;
  *(v104 + 16) = xmmword_1D7297410;
  *(v104 + 32) = v167;
  *(v104 + 40) = v150;
  *(v104 + 48) = v151;

  v105 = sub_1D72647CC();
  LOBYTE(v167) = 0;
  v106 = swift_allocObject();
  *(v106 + 16) = v105;
  *(v106 + 24) = v165;
  *(v106 + 40) = v167;
  v107 = *(v166 + 24);
  v108 = *(v166 + 32);
  v109 = __swift_project_boxed_opaque_existential_1(v166, v107);
  MEMORY[0x1EEE9AC00](v109, v110);
  MEMORY[0x1EEE9AC00](v111, v112);
  *(&v149 - 4) = sub_1D5B4AA6C;
  *(&v149 - 3) = 0;
  v147 = sub_1D670887C;
  v148 = v104;
  v114 = sub_1D5D2F7A4(v103, sub_1D615B49C, v113, sub_1D615B4A4, (&v149 - 6), v107, v108);
  v115 = v114;

  if (v115)
  {
    v167 = v165;
    LOBYTE(v168) = 0;
    *&v172 = v102;
    sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
    sub_1D6659C88();
    sub_1D72647EC();
    v101 = v158;
    v164 = 0;

    goto LABEL_18;
  }

  v164 = 0;
  sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);

  v101 = v158;
LABEL_22:
  v117 = v101[6];
  v116 = v101[7];
  v118 = v101[8];
  v119 = v101[9];
  v120 = v101[10];
  v121 = v101[11];
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v122 = v156;
  v123 = __swift_project_value_buffer(v156, qword_1EDFFCE38);
  (v161)(v155, v123, v122);
  swift_storeEnumTagMultiPayload();
  v165 = xmmword_1D72BAA60;
  v172 = xmmword_1D72BAA60;
  v173 = 0;
  LOBYTE(v167) = 0;
  v124 = swift_allocObject();
  v126 = v124;
  *(v124 + 16) = v165;
  *(v124 + 32) = v167;
  v127 = v150;
  v128 = v151;
  *(v124 + 40) = v150;
  *(v124 + 48) = v128;
  if (v117)
  {
    v162 = &v149;
    v157 = v117;
    *&v167 = v117;
    *(&v167 + 1) = v116;
    v129 = v118;
    v168 = v118;
    v169 = v119;
    v130 = v120;
    v170 = v120;
    v171 = v121;
    MEMORY[0x1EEE9AC00](v124, v125);
    v161 = &v149 - 6;
    *(&v149 - 4) = sub_1D5B4AA6C;
    *(&v149 - 3) = 0;
    v147 = sub_1D670887C;
    v148 = v126;
    v176 = 0;
    v131 = swift_allocObject();
    *(v131 + 16) = v165;
    *(v131 + 32) = v176;
    *(v131 + 40) = v127;
    *(v131 + 48) = v128;
    swift_retain_n();
    sub_1D5EB1D80(v157, v116, v129, v119, v130, v121);
    v132 = v163;
    v133 = sub_1D72647CC();
    v176 = 0;
    v134 = swift_allocObject();
    *(v134 + 16) = v133;
    *(v134 + 24) = v165;
    *(v134 + 40) = v176;
    v135 = *(v166 + 24);
    v136 = *(v166 + 32);
    v137 = __swift_project_boxed_opaque_existential_1(v166, v135);
    MEMORY[0x1EEE9AC00](v137, v138);
    MEMORY[0x1EEE9AC00](v139, v140);
    v141 = v161;
    *(&v149 - 4) = sub_1D615B4A4;
    *(&v149 - 3) = v141;
    v147 = sub_1D670887C;
    v148 = v131;
    v142 = v155;
    v143 = v164;
    sub_1D5D2F7A4(v155, sub_1D615B49C, v144, sub_1D615B4A4, (&v149 - 6), v135, v136);
    if (v143)
    {

      v145 = v170;

      sub_1D5CBF568(v145);

      sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v132, sub_1D6664B44);
    }

    sub_1D6659A24();
    sub_1D72647EC();
    v164 = 0;

    v146 = v170;

    sub_1D5CBF568(v146);

    sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);

    v132 = v163;
  }

  return sub_1D5D2CFE8(v132, sub_1D6664B44);
}

uint64_t FormatBindingFont.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v31;
    v14 = v10;
    if (v12)
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
          *(v21 + 16) = &unk_1F51112C0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6664CE8();
    v28 = 0;
    v29 = 0;
    sub_1D726431C();
    v23 = v27;
    if (v27 > 1u)
    {
      if (v27 == 2)
      {
        v27 = xmmword_1D7279980;
        sub_1D6664D3C();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v24 = v28;
        v25 = v29;
        v26 = v30 | (BYTE2(v30) << 16);
      }

      else
      {
        v27 = xmmword_1D7279980;
        sub_1D5C6A164();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v24 = v28;
        v25 = v29;
        v26 = v30;
      }
    }

    else if (v27)
    {
      v27 = xmmword_1D7279980;
      sub_1D6664D90();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v24 = v28;
      v25 = v29;
      v26 = v30;
    }

    else
    {
      v27 = xmmword_1D7279980;
      sub_1D6664DE4();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v24 = v28;
      v25 = v29;
      v26 = v30 | (BYTE2(v30) << 16);
    }

    *v13 = v24;
    *(v13 + 8) = v25;
    *(v13 + 16) = v26;
    *(v13 + 24) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingFont.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v41 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v43 = *(v1 + 8);
  v24 = *(v1 + 16);
  v41 = *&v23;
  v42 = v24;
  v25 = *(v1 + 24);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v28 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingFont, &type metadata for FormatCodingKeys, v29, v26, &type metadata for FormatBindingFont, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v27, v22, v28, &off_1F51F6C78);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
      (*(*(v33 - 8) + 16))(v10, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B2B00(2, *&v41, v43, v42 & 0xFFFFFF, v10);
      v32 = v10;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCD50);
      (*(*(v38 - 8) + 16))(v6, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B2CA0(3, *&v41, v43, v42, v6);
      v32 = v6;
    }
  }

  else if (v25)
  {
    v35 = v41;
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D725BD1C();
    v37 = __swift_project_value_buffer(v36, qword_1EDFFCD98);
    (*(*(v36 - 8) + 16))(v14, v37, v36);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B2964(1, v43, v42, v14, v35);
    v32 = v14;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
    (*(*(v30 - 8) + 16))(v18, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B27C4(0, *&v41, v43, v42 & 0xFFFFFF, v18);
    v32 = v18;
  }

  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatPatternAnchor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v47 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v45 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v44 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v43 = &v42 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v42 - v29;
  v51 = *v1;
  v31 = a1[3];
  v32 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
  v35 = *(*(v33 - 8) + 16);
  v35(v30, v34, v33);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v36 = v53[6];
  sub_1D5D2BEC4(v30, sub_1D5B4AA6C, 0, v31, v32);
  if (v36)
  {
    return sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  v38 = v52[3];
  v39 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v38);
  if (v51 > 3)
  {
    if (v51 <= 5)
    {
      v41 = v47;
      v35(v47, v34, v33);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v38, v39);
      sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
      goto LABEL_15;
    }

    if (v51 == 6)
    {
      v40 = v49;
      v35(v49, v34, v33);
    }

    else
    {
      v40 = v50;
      v35(v50, v34, v33);
    }
  }

  else if (v51 > 1)
  {
    v40 = v45;
    v35(v45, v34, v33);
  }

  else
  {
    v40 = v43;
    v35(v43, v34, v33);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v40, sub_1D5B4AA6C, 0, v38, v39);
  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
LABEL_15:
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v53, v53[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

double FormatFlexBoxNodeLayout.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v322 = &v317 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v323 = &v317 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v324 = &v317 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v326 = &v317 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v327 = &v317 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v328 = &v317 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  *&v329 = &v317 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  *&v337 = &v317 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v317 - v31;
  sub_1D6665AC4(0);
  v336 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v317 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1D6665BEC(0);
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EDF251E8, sub_1D6665BEC, &unk_1D7321584);
  v349 = v36;
  sub_1D5D2EE70(v4, v40, v42, v37, v4, v40, &type metadata for FormatVersions.CrystalGlowE, v38, v36, v41, &off_1F51F6C98);
  swift_beginAccess();
  v43 = *(v2 + 16);
  v335 = v2;
  v44 = v2[3];
  v45 = qword_1EDF31F38;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = sub_1D725BD1C();
  v47 = __swift_project_value_buffer(v46, qword_1EDFFCE38);
  v48 = *(v46 - 8);
  v49 = *(v48 + 16);
  v334 = v48 + 16;
  v49(v32, v47, v46);
  v333 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6366360(v43, v44, 1, MEMORY[0x1E69E7CC0]);
  v51 = v50;

  v330 = v47;
  v331 = v46;
  v332 = v49;
  if (v51)
  {
    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);

    v52 = v349;
LABEL_5:
    v53 = v337;
    goto LABEL_6;
  }

  LODWORD(v320) = v43;
  v60 = v336;
  v61 = v349;
  v62 = &v349[*(v336 + 44)];
  v63 = *v62;
  v64 = *(v62 + 1);
  v65 = v32;
  LOBYTE(v344) = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  *(v66 + 32) = v344;
  *(v66 + 40) = v63;
  *(v66 + 48) = v64;
  sub_1D6665B58(0);
  v68 = v67;
  v69 = sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58, MEMORY[0x1E69E6F60]);

  v321 = v68;
  v319 = v69;
  v70 = sub_1D72647CC();
  LOBYTE(v344) = 0;
  v71 = swift_allocObject();
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 16) = v70;
  *(v71 + 40) = v344;
  v72 = (v61 + *(v60 + 36));
  v73 = v72[3];
  v74 = v72[4];
  v75 = __swift_project_boxed_opaque_existential_1(v72, v73);
  *&v325 = &v317;
  MEMORY[0x1EEE9AC00](v75, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  *(&v317 - 4) = sub_1D5B4AA6C;
  *(&v317 - 3) = 0;
  v315 = sub_1D6665D6C;
  v316 = v66;
  v79 = v338;
  v81 = sub_1D5D2F7A4(v65, sub_1D615B49C, v80, sub_1D615B4A4, (&v317 - 6), v73, v74);
  if (v79)
  {
    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v349, sub_1D6665AC4);

    return result;
  }

  v101 = v81;
  v318 = v65;
  v102 = v349;

  if ((v101 & 1) == 0)
  {
    v338 = 0;
    sub_1D5D2CFE8(v318, type metadata accessor for FormatVersionRequirement);

    v52 = v102;
    v47 = v330;
    v46 = v331;
    v49 = v332;
    goto LABEL_5;
  }

  v344 = 0uLL;
  v345 = 0;
  LOBYTE(v339) = v320;
  *(&v339 + 1) = v44;
  sub_1D5C30060(0, &qword_1EDF24768, sub_1D6666300, &type metadata for FormatFlexBoxNodeDisplay, type metadata accessor for FormatSelectorSimpleValue);
  sub_1D6666354();

  v103 = v102;
  sub_1D72647EC();
  v49 = v332;
  v53 = v337;
  v338 = 0;

  sub_1D5D2CFE8(v318, type metadata accessor for FormatVersionRequirement);

  v47 = v330;
  v46 = v331;
  v52 = v103;
LABEL_6:
  v54 = v335;
  swift_beginAccess();
  v55 = *(v54 + 32);
  v56 = v54[5];
  v49(v53, v47, v46);
  swift_storeEnumTagMultiPayload();

  LODWORD(v319) = v55;
  if (sub_1D6DD8574(v55, 0))
  {
    sub_1D634E170(v56, MEMORY[0x1E69E7CC0]);
    v58 = v57;

    v59 = v52;
    if (v58)
    {
      sub_1D5D2CFE8(v337, type metadata accessor for FormatVersionRequirement);

      goto LABEL_22;
    }
  }

  else
  {

    v59 = v52;
  }

  v321 = v56;
  v83 = v336;
  v84 = (v59 + *(v336 + 44));
  v86 = *v84;
  v85 = v84[1];
  LOBYTE(v344) = 0;
  v87 = swift_allocObject();
  v325 = xmmword_1D728CF30;
  *(v87 + 16) = xmmword_1D728CF30;
  *(v87 + 32) = v344;
  *(v87 + 40) = v86;
  *(v87 + 48) = v85;
  sub_1D6665B58(0);
  sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58, MEMORY[0x1E69E6F60]);

  v88 = sub_1D72647CC();
  LOBYTE(v344) = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  *(v89 + 24) = v325;
  *(v89 + 40) = v344;
  v90 = (v59 + *(v83 + 36));
  v91 = v90[3];
  v92 = v90[4];
  v93 = __swift_project_boxed_opaque_existential_1(v90, v91);
  v320 = &v317;
  MEMORY[0x1EEE9AC00](v93, v94);
  MEMORY[0x1EEE9AC00](v95, v96);
  *(&v317 - 4) = sub_1D5B4AA6C;
  *(&v317 - 3) = 0;
  v315 = sub_1D67088EC;
  v316 = v87;
  v97 = v337;
  v98 = v338;
  v100 = sub_1D5D2F7A4(v337, sub_1D615B49C, v99, sub_1D615B4A4, (&v317 - 6), v91, v92);
  if (v98)
  {
    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

    goto LABEL_14;
  }

  v104 = v100;

  if (v104)
  {
    v344 = v325;
    v345 = 0;
    LOBYTE(v339) = v319;
    *(&v339 + 1) = v321;
    sub_1D5C30060(0, &qword_1EDF24758, sub_1D666621C, &type metadata for FormatFlexBoxNodeDirection, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6666270();
    sub_1D72647EC();
    v47 = v330;
    v46 = v331;
    v105 = v337;
    v338 = 0;

    sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v338 = 0;
    sub_1D5D2CFE8(v337, type metadata accessor for FormatVersionRequirement);

    v47 = v330;
    v46 = v331;
  }

  v49 = v332;
LABEL_22:
  v106 = v335;
  swift_beginAccess();
  v107 = *(v106 + 48);
  v108 = v106[7];
  v109 = v329;
  v49(v329, v47, v46);
  swift_storeEnumTagMultiPayload();

  LODWORD(v337) = v107;
  sub_1D6366208(v107, v108, 0, MEMORY[0x1E69E7CC0]);
  LOBYTE(v107) = v110;

  if (v107)
  {
    v111 = v46;
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

    v112 = v338;
  }

  else
  {
    v113 = v336;
    v114 = (v59 + *(v336 + 44));
    v116 = *v114;
    v115 = v114[1];
    LOBYTE(v344) = 0;
    v117 = swift_allocObject();
    v325 = xmmword_1D7297410;
    *(v117 + 16) = xmmword_1D7297410;
    *(v117 + 32) = v344;
    *(v117 + 40) = v116;
    *(v117 + 48) = v115;
    sub_1D6665B58(0);
    v119 = v118;
    v120 = sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58, MEMORY[0x1E69E6F60]);

    v321 = v119;
    v121 = sub_1D72647CC();
    LOBYTE(v344) = 0;
    v122 = swift_allocObject();
    *(v122 + 16) = v121;
    *(v122 + 24) = v325;
    *(v122 + 40) = v344;
    v123 = (v59 + *(v113 + 36));
    v124 = v123[3];
    v125 = v123[4];
    v126 = __swift_project_boxed_opaque_existential_1(v123, v124);
    MEMORY[0x1EEE9AC00](v126, v127);
    MEMORY[0x1EEE9AC00](v128, v129);
    *(&v317 - 4) = sub_1D5B4AA6C;
    *(&v317 - 3) = 0;
    v315 = sub_1D67088EC;
    v316 = v117;
    v130 = v338;
    v132 = sub_1D5D2F7A4(v109, sub_1D615B49C, v131, sub_1D615B4A4, (&v317 - 6), v124, v125);
    if (v130)
    {
      sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v349, sub_1D6665AC4);

      return result;
    }

    v133 = v132;
    v338 = v120;

    if (v133)
    {
      v344 = v325;
      v345 = 0;
      LOBYTE(v339) = v337;
      *(&v339 + 1) = v108;
      sub_1D5C30060(0, &qword_1EC8862B8, sub_1D6666138, &type metadata for FormatFlexBoxNodeWrap, type metadata accessor for FormatSelectorSimpleValue);
      sub_1D666618C();

      sub_1D72647EC();
      v112 = 0;
      v134 = v329;

      sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v329, type metadata accessor for FormatVersionRequirement);

      v112 = 0;
    }

    v47 = v330;
    v111 = v331;
    v49 = v332;
  }

  v135 = v335;
  swift_beginAccess();
  v136 = *(v135 + 64);
  v137 = v135[9];
  v138 = v328;
  v49(v328, v47, v111);
  swift_storeEnumTagMultiPayload();

  LODWORD(v325) = v136;
  v139 = sub_1D6DD5208(v136, 0);
  *&v337 = v137;
  if (v139)
  {
    sub_1D634DD64(v137, MEMORY[0x1E69E7CC0]);
    v141 = v140;

    if (v141)
    {
      sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);

      v142 = v111;
      v143 = v349;
      goto LABEL_40;
    }
  }

  else
  {
  }

  v144 = v336;
  v145 = v349;
  v146 = &v349[*(v336 + 44)];
  v147 = *v146;
  v148 = *(v146 + 1);
  LOBYTE(v344) = 0;
  v149 = swift_allocObject();
  v329 = xmmword_1D72BAA60;
  *(v149 + 16) = xmmword_1D72BAA60;
  *(v149 + 32) = v344;
  *(v149 + 40) = v147;
  *(v149 + 48) = v148;
  sub_1D6665B58(0);
  v151 = v150;
  sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58, MEMORY[0x1E69E6F60]);
  v338 = v112;

  v321 = v151;
  v152 = sub_1D72647CC();
  LOBYTE(v344) = 0;
  v153 = swift_allocObject();
  *(v153 + 16) = v152;
  *(v153 + 24) = v329;
  *(v153 + 40) = v344;
  v154 = (v145 + *(v144 + 36));
  v155 = v154[3];
  v156 = v154[4];
  v157 = __swift_project_boxed_opaque_existential_1(v154, v155);
  MEMORY[0x1EEE9AC00](v157, v158);
  MEMORY[0x1EEE9AC00](v159, v160);
  *(&v317 - 4) = sub_1D5B4AA6C;
  *(&v317 - 3) = 0;
  v315 = sub_1D67088EC;
  v316 = v149;
  v161 = v338;
  v163 = sub_1D5D2F7A4(v138, sub_1D615B49C, v162, sub_1D615B4A4, (&v317 - 6), v155, v156);
  if (v161)
  {
    sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
LABEL_46:

    sub_1D5D2CFE8(v349, sub_1D6665AC4);
    return result;
  }

  v164 = v163;
  v165 = v349;

  if (v164)
  {
    v344 = v329;
    v345 = 0;
    LOBYTE(v339) = v325;
    *(&v339 + 1) = v337;
    sub_1D5C30060(0, &qword_1EDF24738, sub_1D6666054, &type metadata for FormatFlexBoxNodeJustifyContent, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D66660A8();
    sub_1D72647EC();
    v112 = 0;
    v166 = v328;

    sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v328, type metadata accessor for FormatVersionRequirement);

    v112 = 0;
  }

  v143 = v165;
  v47 = v330;
  v142 = v331;
  v49 = v332;
LABEL_40:
  v167 = v335;
  swift_beginAccess();
  v168 = *(v167 + 80);
  v169 = v167[11];
  v49(v327, v47, v142);
  swift_storeEnumTagMultiPayload();

  LODWORD(v328) = v168;
  if (sub_1D6DD6754(v168, 0))
  {
    sub_1D634DA7C(v169, MEMORY[0x1E69E7CC0]);
    v171 = v170;

    if (v171)
    {
      sub_1D5D2CFE8(v327, type metadata accessor for FormatVersionRequirement);

      goto LABEL_50;
    }
  }

  else
  {
  }

  *&v329 = v169;
  v172 = v336;
  v173 = (v143 + *(v336 + 44));
  v174 = *v173;
  v175 = v173[1];
  LOBYTE(v344) = 0;
  v176 = v143;
  v177 = swift_allocObject();
  v337 = xmmword_1D72BAA70;
  *(v177 + 16) = xmmword_1D72BAA70;
  *(v177 + 32) = v344;
  *(v177 + 40) = v174;
  *(v177 + 48) = v175;
  sub_1D6665B58(0);
  v179 = v178;
  v180 = sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58, MEMORY[0x1E69E6F60]);
  v338 = v112;
  v181 = v180;

  *&v325 = v179;
  v182 = sub_1D72647CC();
  LOBYTE(v344) = 0;
  v183 = swift_allocObject();
  *(v183 + 16) = v182;
  *(v183 + 24) = v337;
  *(v183 + 40) = v344;
  v184 = (v176 + *(v172 + 36));
  v185 = v184[3];
  v186 = v184[4];
  v187 = __swift_project_boxed_opaque_existential_1(v184, v185);
  MEMORY[0x1EEE9AC00](v187, v188);
  MEMORY[0x1EEE9AC00](v189, v190);
  *(&v317 - 4) = sub_1D5B4AA6C;
  *(&v317 - 3) = 0;
  v315 = sub_1D67088EC;
  v316 = v177;
  v191 = v327;
  v192 = v338;
  v194 = sub_1D5D2F7A4(v327, sub_1D615B49C, v193, sub_1D615B4A4, (&v317 - 6), v185, v186);
  if (v192)
  {
    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
    goto LABEL_46;
  }

  v195 = v194;
  v338 = v181;

  if (v195)
  {
    v344 = v337;
    v345 = 0;
    LOBYTE(v339) = v328;
    *(&v339 + 1) = v329;
    sub_1D5C30060(0, &qword_1EC8862A0, sub_1D6665F70, &type metadata for FormatFlexBoxNodeAlignContent, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6665FC4();
    sub_1D72647EC();
    v112 = 0;
    v197 = v326;
    v196 = v327;

    sub_1D5D2CFE8(v196, type metadata accessor for FormatVersionRequirement);
    v47 = v330;
    v142 = v331;
    v49 = v332;
    goto LABEL_51;
  }

  sub_1D5D2CFE8(v327, type metadata accessor for FormatVersionRequirement);

  v112 = 0;
  v47 = v330;
  v142 = v331;
  v49 = v332;
LABEL_50:
  v197 = v326;
LABEL_51:
  v198 = v335;
  swift_beginAccess();
  v199 = *(v198 + 96);
  v200 = v198[13];
  v49(v197, v47, v142);
  swift_storeEnumTagMultiPayload();

  LODWORD(v328) = v199;
  v201 = sub_1D6DD7868(v199, 0);
  v338 = v112;
  if (v201)
  {
    sub_1D634D8B4(v200, MEMORY[0x1E69E7CC0]);
    v203 = v202;

    if (v203)
    {
      sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);

      v204 = v336;
      v59 = v349;
      goto LABEL_62;
    }
  }

  else
  {
  }

  *&v329 = v200;
  v205 = v336;
  v206 = v349;
  v207 = &v349[*(v336 + 44)];
  v208 = *v207;
  v209 = *(v207 + 1);
  LOBYTE(v344) = 0;
  v210 = swift_allocObject();
  v337 = xmmword_1D72BAA80;
  *(v210 + 16) = xmmword_1D72BAA80;
  *(v210 + 32) = v344;
  *(v210 + 40) = v208;
  *(v210 + 48) = v209;
  sub_1D6665B58(0);
  v212 = v211;
  sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58, MEMORY[0x1E69E6F60]);

  v327 = v212;
  v213 = sub_1D72647CC();
  LOBYTE(v344) = 0;
  v214 = swift_allocObject();
  *(v214 + 16) = v213;
  *(v214 + 24) = v337;
  *(v214 + 40) = v344;
  v215 = (v206 + *(v205 + 36));
  v216 = v215[3];
  v217 = v215[4];
  v218 = __swift_project_boxed_opaque_existential_1(v215, v216);
  MEMORY[0x1EEE9AC00](v218, v219);
  MEMORY[0x1EEE9AC00](v220, v221);
  *(&v317 - 4) = sub_1D5B4AA6C;
  *(&v317 - 3) = 0;
  v315 = sub_1D67088EC;
  v316 = v210;
  v222 = v326;
  v223 = v338;
  v225 = sub_1D5D2F7A4(v326, sub_1D615B49C, v224, sub_1D615B4A4, (&v317 - 6), v216, v217);
  v338 = v223;
  if (v223)
  {
    sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v349, sub_1D6665AC4);
    return result;
  }

  v226 = v225;
  v227 = v349;

  if ((v226 & 1) == 0)
  {
    sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);

    v59 = v227;
    goto LABEL_61;
  }

  v344 = v337;
  v345 = 0;
  LOBYTE(v339) = v328;
  *(&v339 + 1) = v329;
  sub_1D5C30060(0, &qword_1EDF24748, sub_1D6665E8C, &type metadata for FormatFlexBoxNodeAlignItems, type metadata accessor for FormatSelectorSimpleValue);
  sub_1D6665EE0();
  v59 = v227;
  v228 = v338;
  sub_1D72647EC();

  sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);
  if (v228)
  {
LABEL_14:
    sub_1D5D2CFE8(v59, sub_1D6665AC4);
    return result;
  }

  v338 = 0;
LABEL_61:
  v204 = v336;
  v47 = v330;
  v142 = v331;
LABEL_62:
  v229 = v335;
  swift_beginAccess();
  v230 = v229[14];
  v231 = v229[15];
  v232 = v324;
  v332(v324, v47, v142);
  swift_storeEnumTagMultiPayload();
  *&v339 = v230;
  *(&v339 + 1) = v231;

  if (_s8NewsFeed45FormatCodingSelectorFloatEquationZeroStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleM0VyAA0cG0VyAA0cF0OGG_tFZ_0(&v339))
  {
    v233 = (v59 + *(v204 + 44));
    v235 = *v233;
    v234 = v233[1];
    LOBYTE(v344) = 0;
    v236 = swift_allocObject();
    v337 = xmmword_1D72BAA90;
    *(v236 + 16) = xmmword_1D72BAA90;
    *(v236 + 32) = v344;
    *(v236 + 40) = v235;
    *(v236 + 48) = v234;
    sub_1D6665B58(0);
    v238 = v237;
    sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58, MEMORY[0x1E69E6F60]);

    v328 = v238;
    v239 = sub_1D72647CC();
    LOBYTE(v344) = 0;
    v240 = swift_allocObject();
    *(v240 + 16) = v239;
    *(v240 + 24) = v337;
    *(v240 + 40) = v344;
    v241 = (v59 + *(v204 + 36));
    v242 = v241[3];
    v243 = v241[4];
    v244 = __swift_project_boxed_opaque_existential_1(v241, v242);
    *&v329 = &v317;
    MEMORY[0x1EEE9AC00](v244, v245);
    MEMORY[0x1EEE9AC00](v246, v247);
    *(&v317 - 4) = sub_1D5B4AA6C;
    *(&v317 - 3) = 0;
    v315 = sub_1D67088EC;
    v316 = v236;
    v248 = v324;
    v249 = v338;
    v251 = sub_1D5D2F7A4(v324, sub_1D615B49C, v250, sub_1D615B4A4, (&v317 - 6), v242, v243);
    v338 = v249;
    if (v249)
    {
      goto LABEL_74;
    }

    v252 = v349;
    v253 = v251;

    if (v253)
    {
      v344 = v337;
      v345 = 0;
      v348 = v339;
      sub_1D613BA94(0);
      sub_1D5B58B84(&qword_1EDF0BFA0, sub_1D613BA94, &protocol conformance descriptor for FormatSelectorSimpleValue<A>);

      v59 = v252;
      v254 = v338;
      sub_1D72647EC();
      if (v254)
      {

        sub_1D5D2CFE8(v324, type metadata accessor for FormatVersionRequirement);
        v255 = v252;
LABEL_79:
        sub_1D5D2CFE8(v255, sub_1D6665AC4);

        goto LABEL_91;
      }

      v338 = 0;

      sub_1D5D2CFE8(v324, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v324, type metadata accessor for FormatVersionRequirement);

      v59 = v252;
    }

    v204 = v336;
    v47 = v330;
    v142 = v331;
  }

  else
  {
    sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
  }

  v256 = v335;
  swift_beginAccess();
  v257 = v256[16];
  v258 = v256[17];
  v259 = v323;
  v332(v323, v47, v142);
  swift_storeEnumTagMultiPayload();
  *&v339 = v257;
  *(&v339 + 1) = v258;

  if ((_s8NewsFeed45FormatCodingSelectorFloatEquationZeroStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleM0VyAA0cG0VyAA0cF0OGG_tFZ_0(&v339) & 1) == 0)
  {
    v279 = v59;
    sub_1D5D2CFE8(v259, type metadata accessor for FormatVersionRequirement);

    goto LABEL_82;
  }

  v260 = (v59 + *(v204 + 44));
  v262 = *v260;
  v261 = v260[1];
  LOBYTE(v344) = 0;
  v263 = swift_allocObject();
  v337 = xmmword_1D72BAAA0;
  *(v263 + 16) = xmmword_1D72BAAA0;
  *(v263 + 32) = v344;
  *(v263 + 40) = v262;
  *(v263 + 48) = v261;
  sub_1D6665B58(0);
  v265 = v264;
  v266 = sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58, MEMORY[0x1E69E6F60]);

  v328 = v266;
  *&v329 = v265;
  v267 = sub_1D72647CC();
  LOBYTE(v344) = 0;
  v268 = swift_allocObject();
  *(v268 + 16) = v267;
  *(v268 + 24) = v337;
  *(v268 + 40) = v344;
  v269 = (v59 + *(v204 + 36));
  v270 = v269[3];
  v271 = v269[4];
  v272 = __swift_project_boxed_opaque_existential_1(v269, v270);
  MEMORY[0x1EEE9AC00](v272, v273);
  MEMORY[0x1EEE9AC00](v274, v275);
  *(&v317 - 4) = sub_1D5B4AA6C;
  *(&v317 - 3) = 0;
  v315 = sub_1D67088EC;
  v316 = v263;
  v248 = v323;
  v276 = v338;
  v278 = sub_1D5D2F7A4(v323, sub_1D615B49C, v277, sub_1D615B4A4, (&v317 - 6), v270, v271);
  v338 = v276;
  if (!v276)
  {
    v280 = v278;
    v279 = v349;

    if (v280)
    {
      v344 = v337;
      v345 = 0;
      v347 = v339;
      sub_1D613BA94(0);
      sub_1D5B58B84(&qword_1EDF0BFA0, sub_1D613BA94, &protocol conformance descriptor for FormatSelectorSimpleValue<A>);

      v281 = v338;
      sub_1D72647EC();
      if (v281)
      {

        sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);
        v255 = v279;
        goto LABEL_79;
      }

      v338 = 0;
    }

    sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);

    v47 = v330;
    v142 = v331;
LABEL_82:
    v282 = v335;
    swift_beginAccess();
    v284 = v282[18];
    v283 = v282[19];
    v285 = *(v282 + 160);
    v286 = v282[21];
    v287 = v322;
    v332(v322, v47, v142);
    swift_storeEnumTagMultiPayload();
    *&v344 = v284;
    *(&v344 + 1) = v283;
    v345 = v285;
    v346 = v286;
    sub_1D5C75A4C(v284, v283, v285);

    if (_s8NewsFeed39FormatCodingSelectorBooleanTrueStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleL0VyAA0cF0OG_tFZ_0(&v344))
    {
      v333 = v284;
      v334 = v283;
      LODWORD(v332) = v285;
      v335 = v286;
      v288 = v336;
      v289 = v279;
      v290 = (v279 + *(v336 + 44));
      v292 = *v290;
      v291 = v290[1];
      LOBYTE(v339) = 0;
      v293 = swift_allocObject();
      v337 = xmmword_1D72BAAB0;
      *(v293 + 16) = xmmword_1D72BAAB0;
      *(v293 + 32) = v339;
      *(v293 + 40) = v292;
      *(v293 + 48) = v291;
      sub_1D6665B58(0);
      v295 = v294;
      sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58, MEMORY[0x1E69E6F60]);

      v331 = v295;
      v296 = sub_1D72647CC();
      LOBYTE(v339) = 0;
      v297 = swift_allocObject();
      *(v297 + 16) = v296;
      *(v297 + 24) = v337;
      *(v297 + 40) = v339;
      v298 = *(v288 + 36);
      v299 = *(v289 + v298 + 24);
      v300 = *(v289 + v298 + 32);
      v301 = __swift_project_boxed_opaque_existential_1((v289 + v298), v299);
      MEMORY[0x1EEE9AC00](v301, v302);
      MEMORY[0x1EEE9AC00](v303, v304);
      *(&v317 - 4) = sub_1D5B4AA6C;
      *(&v317 - 3) = 0;
      v315 = sub_1D67088EC;
      v316 = v293;
      v305 = v338;
      v307 = sub_1D5D2F7A4(v287, sub_1D615B49C, v306, sub_1D615B4A4, (&v317 - 6), v299, v300);
      v338 = v305;
      if (v305)
      {
        sub_1D5D2CFE8(v287, type metadata accessor for FormatVersionRequirement);

        sub_1D5D2CFE8(v289, sub_1D6665AC4);
        v308 = v333;
        v309 = v334;
        v310 = v332;
      }

      else
      {
        v311 = v307;

        v312 = v332;
        if (v311)
        {
          v342 = v337;
          v343 = 0;
          v339 = v344;
          v340 = v345;
          v341 = v346;
          sub_1D5C75A4C(v344, *(&v344 + 1), v345);
          sub_1D5C30060(0, &qword_1EC886290, sub_1D5FBA208, &type metadata for FormatBoolean, type metadata accessor for FormatSelectorSimpleValue);
          sub_1D6665DFC();

          v313 = v338;
          sub_1D72647EC();
          v338 = v313;
          v314 = v333;
          sub_1D5D2F2C8(v339, *(&v339 + 1), v340);

          sub_1D5D2CFE8(v322, type metadata accessor for FormatVersionRequirement);
          sub_1D5D2CFE8(v289, sub_1D6665AC4);
          v308 = v314;
        }

        else
        {
          sub_1D5D2CFE8(v322, type metadata accessor for FormatVersionRequirement);
          sub_1D5D2CFE8(v289, sub_1D6665AC4);
          v308 = v333;
        }

        v309 = v334;
        v310 = v312;
      }

      sub_1D5D2F2C8(v308, v309, v310);
    }

    else
    {
      sub_1D5D2CFE8(v287, type metadata accessor for FormatVersionRequirement);
      sub_1D5D2CFE8(v279, sub_1D6665AC4);
      sub_1D5D2F2C8(v284, v283, v285);
    }

    goto LABEL_91;
  }

LABEL_74:
  sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v349, sub_1D6665AC4);

LABEL_91:

  return result;
}

uint64_t FormatURLBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v51 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v50 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v48 - v22;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 8);
  v53 = *v1;
  v48 = *(v1 + 16);
  v49 = v28;
  v29 = *(v1 + 24);
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatURLBinding, &type metadata for FormatCodingKeys, v33, v30, &type metadata for FormatURLBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v31, v27, v32, &off_1F51F6C78);
  if (v29 > 2)
  {
    if (v29 == 3)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD68);
      v23 = v50;
      (*(*(v41 - 8) + 16))(v50, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B368C(3, v53 & 1, v23);
    }

    else if (v29 == 4)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD68);
      v23 = v51;
      (*(*(v37 - 8) + 16))(v51, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B3824(4, v53, v23);
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCE38);
      v23 = v52;
      (*(*(v45 - 8) + 16))(v52, v46, v45);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B39B8(5, v23);
    }

    goto LABEL_24;
  }

  if (!v29)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCD30);
    (*(*(v39 - 8) + 16))(v23, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B31D4(0, v53, v49, v48, v23);
LABEL_24:
    v36 = v23;
    goto LABEL_25;
  }

  if (v29 == 1)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD68);
    (*(*(v34 - 8) + 16))(v19, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B336C(1, v19);
    v36 = v19;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v43 = sub_1D725BD1C();
    v44 = __swift_project_value_buffer(v43, qword_1EDFFCD68);
    (*(*(v43 - 8) + 16))(v15, v44, v43);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B34F8(2, v53, v15);
    v36 = v15;
  }

LABEL_25:
  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v27, sub_1D5D30DC4);
}

uint64_t FormatOptionValue.encode(to:)(void *a1)
{
  sub_1D5C4E168(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v145 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8E028(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v144 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v143 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v142 = &v133 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v139 = &v133 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v141 = &v133 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v138 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v140 = &v133 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v136 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v135 = &v133 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v137 = &v133 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v134 = &v133 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v133 = &v133 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v133 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v133 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v133 - v52;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v57 = &v133 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *v1;
  v59 = a1[3];
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v59);
  v61 = sub_1D5C30408();
  v146 = v57;
  sub_1D5D2EE70(&type metadata for FormatOptionValue, &type metadata for FormatCodingKeys, v62, v59, &type metadata for FormatOptionValue, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v60, v57, v61, &off_1F51F6C78);
  switch(v58 >> 60)
  {
    case 1uLL:
      v104 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v148[0] = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v148[1] = v104;
      v149 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D66665DC(v148, v147);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCD30);
      (*(*(v105 - 8) + 16))(v49, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B01A0(1, v148, v49);
      sub_1D6666638(v148);
      v70 = type metadata accessor for FormatVersionRequirement;
      v71 = v49;
      break;
    case 2uLL:
      v91 = swift_projectBox();
      v81 = v144;
      sub_1D6706BB4(v91, v144, sub_1D5C8E028);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v92 = sub_1D725BD1C();
      v93 = __swift_project_value_buffer(v92, qword_1EDFFCD30);
      (*(*(v92 - 8) + 16))(v45, v93, v92);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0340(2, v81, v45);
      sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
      v94 = sub_1D5C8E028;
      goto LABEL_49;
    case 3uLL:
      v95 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v96 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v97 = qword_1EDF31EB0;

      if (v97 != -1)
      {
        swift_once();
      }

      v98 = sub_1D725BD1C();
      v99 = __swift_project_value_buffer(v98, qword_1EDFFCD30);
      v75 = v133;
      (*(*(v98 - 8) + 16))(v133, v99, v98);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0514(3, v96, v75, v95);

      goto LABEL_43;
    case 4uLL:
      v77 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v76 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v78 = qword_1EDF31EB0;

      if (v78 != -1)
      {
        swift_once();
      }

      v79 = sub_1D725BD1C();
      v80 = __swift_project_value_buffer(v79, qword_1EDFFCD30);
      v81 = v134;
      (*(*(v79 - 8) + 16))(v134, v80, v79);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v82 = v77;
      v69 = v146;
      sub_1D63B06EC(4, v82, v76, v81);
      goto LABEL_32;
    case 5uLL:
      v108 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v107 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v109 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v110 = qword_1EDF31EB0;

      if (v110 != -1)
      {
        swift_once();
      }

      v111 = sub_1D725BD1C();
      v112 = __swift_project_value_buffer(v111, qword_1EDFFCD30);
      v81 = v137;
      (*(*(v111 - 8) + 16))(v137, v112, v111);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v113 = v108;
      v69 = v146;
      sub_1D63B08B4(5, v113, v107, v109, v81);

LABEL_32:

      goto LABEL_48;
    case 6uLL:
      v118 = swift_projectBox();
      v75 = v145;
      sub_1D6706BB4(v118, v145, sub_1D5C4E168);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v119 = sub_1D725BD1C();
      v120 = __swift_project_value_buffer(v119, qword_1EDFFCD30);
      v121 = v135;
      (*(*(v119 - 8) + 16))(v135, v120, v119);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0A80(6, v75, v121);
      sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
      v122 = sub_1D5C4E168;
      goto LABEL_44;
    case 7uLL:
      v100 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v101 = qword_1EDF31EB0;

      if (v101 != -1)
      {
        swift_once();
      }

      v102 = sub_1D725BD1C();
      v103 = __swift_project_value_buffer(v102, qword_1EDFFCD30);
      v75 = v136;
      (*(*(v102 - 8) + 16))(v136, v103, v102);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0C54(7, v100, v75);
      goto LABEL_42;
    case 8uLL:
      v127 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v128 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v129 = qword_1EDF31F10;

      if (v129 != -1)
      {
        swift_once();
      }

      v130 = sub_1D725BD1C();
      v131 = __swift_project_value_buffer(v130, qword_1EDFFCDF8);
      v81 = v140;
      (*(*(v130 - 8) + 16))(v140, v131, v130);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0DE8(8, v127, v128, v81);

LABEL_48:
      v94 = type metadata accessor for FormatVersionRequirement;
LABEL_49:
      v70 = v94;
      v71 = v81;
      break;
    case 9uLL:
      v87 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v88 = qword_1EDF31EE8;

      if (v88 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCD98);
      v75 = v138;
      (*(*(v89 - 8) + 16))(v138, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0FB4(9, v87, v75);
      goto LABEL_42;
    case 0xAuLL:
      v123 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v124 = qword_1EDF31EE8;

      if (v124 != -1)
      {
        swift_once();
      }

      v125 = sub_1D725BD1C();
      v126 = __swift_project_value_buffer(v125, qword_1EDFFCD98);
      v75 = v141;
      (*(*(v125 - 8) + 16))(v141, v126, v125);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B1148(10, v123, v75);
      goto LABEL_42;
    case 0xBuLL:
      v72 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v73 = sub_1D725BD1C();
      v74 = __swift_project_value_buffer(v73, qword_1EDFFCD50);
      v75 = v139;
      (*(*(v73 - 8) + 16))(v139, v74, v73);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B12DC(11, v72, v75);
      goto LABEL_43;
    case 0xCuLL:
      v83 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v84 = qword_1EDF31ED0;

      if (v84 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD50);
      v75 = v142;
      (*(*(v85 - 8) + 16))(v142, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B14B0(12, v83, v75);
      goto LABEL_42;
    case 0xDuLL:
      v114 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v115 = qword_1EDF31E98;

      if (v115 != -1)
      {
        swift_once();
      }

      v116 = sub_1D725BD1C();
      v117 = __swift_project_value_buffer(v116, qword_1EDFFCD00);
      v75 = v143;
      (*(*(v116 - 8) + 16))(v143, v117, v116);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B1644(13, v114, v75);
LABEL_42:

LABEL_43:
      v122 = type metadata accessor for FormatVersionRequirement;
LABEL_44:
      v70 = v122;
      v71 = v75;
      break;
    default:
      v63 = *(v58 + 16);
      v64 = *(v58 + 24);
      v65 = qword_1EDF31EB0;

      if (v65 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCD30);
      (*(*(v66 - 8) + 16))(v53, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v68 = v63;
      v69 = v146;
      sub_1D63AFFD4(0, v68, v64, v53);

      v70 = type metadata accessor for FormatVersionRequirement;
      v71 = v53;
      break;
  }

  sub_1D5D2CFE8(v71, v70);
  return sub_1D5D2CFE8(v69, sub_1D5D30DC4);
}

uint64_t FormatURL.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v58 = &v58 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v58 - v16;
  v18 = type metadata accessor for FormatAbsoluteURL(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_1D5C30408();
  v59 = v25;
  sub_1D5D2EE70(&type metadata for FormatURL, &type metadata for FormatCodingKeys, v30, v28, &type metadata for FormatURL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v27, v25, v29, &off_1F51F6C78);
  v31 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v38 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v40 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v41 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      sub_1D5D27950(v38, v39, v40, v41);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD30);
      v44 = v58;
      (*(*(v42 - 8) + 16))(v58, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v59;
      sub_1D5D39884(2, v38, v39, v40, v41, v44);
      sub_1D5D28C84(v38, v39, v40, v41);
      v36 = type metadata accessor for FormatVersionRequirement;
      v37 = v44;
    }

    else
    {
      v52 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v54 = qword_1EDF31F38;

      if (v54 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCE38);
      (*(*(v55 - 8) + 16))(v6, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v59;
      sub_1D6385B58(3, v52, v53, v6);

      v36 = type metadata accessor for FormatVersionRequirement;
      v37 = v6;
    }
  }

  else if (v31)
  {
    v45 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v46 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v47 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v48 = qword_1EDF31EB0;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = sub_1D725BD1C();
    v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
    (*(*(v49 - 8) + 16))(v13, v50, v49);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v51 = v45;
    v35 = v59;
    sub_1D63859C0(1, v51, v46, v47, v13);

    v36 = type metadata accessor for FormatVersionRequirement;
    v37 = v13;
  }

  else
  {
    v32 = swift_projectBox();
    sub_1D6706BB4(v32, v21, type metadata accessor for FormatAbsoluteURL);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
    (*(*(v33 - 8) + 16))(v17, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v59;
    sub_1D63857EC(0, v21, v17);
    sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);
    v36 = type metadata accessor for FormatAbsoluteURL;
    v37 = v21;
  }

  sub_1D5D2CFE8(v37, v36);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t FormatTextNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v489 = &v460 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v462 = &v460 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v463 = &v460 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v464 = &v460 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v465 = &v460 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v467 = &v460 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v466 = &v460 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v468 = &v460 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v469 = &v460 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v470 = &v460 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v471 = &v460 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v474 = &v460 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v475 = (&v460 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v476 = (&v460 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v477 = (&v460 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v478 = &v460 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  *&v488 = &v460 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v460 - v58;
  sub_1D66666E0(0);
  v487 = v60;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v460 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1[3];
  v65 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v64);
  sub_1D5C88CD0(0);
  v67 = v66;
  v68 = sub_1D5B58B84(&qword_1EDF24BF8, sub_1D5C88CD0, &unk_1D7321584);
  v510 = v63;
  sub_1D5D2EE70(v4, v67, v69, v64, v4, v67, &type metadata for FormatVersions.JazzkonC, v65, v63, v68, &off_1F51F6C78);
  swift_beginAccess();
  v485 = v2;
  v70 = v2[2];
  v71 = v2[3];
  v72 = qword_1EDF31EB0;

  if (v72 != -1)
  {
    swift_once();
  }

  v73 = sub_1D725BD1C();
  v74 = __swift_project_value_buffer(v73, qword_1EDFFCD30);
  v75 = *(v73 - 8);
  v76 = *(v75 + 16);
  v77 = v75 + 16;
  v486 = v73;
  v76(v59, v74, v73);
  v78 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v79 = v489;
  v480 = v70;
  sub_1D725892C();
  v80 = sub_1D725895C();
  v81 = (*(*(v80 - 8) + 48))(v79, 1, v80);
  v482 = v76;
  v483 = v77;
  v484 = v78;
  v481 = v74;
  if (v81 == 1)
  {
    sub_1D5D35558(v489, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v82 = v487;
    v83 = v510;
    v84 = &v510[*(v487 + 11)];
    v85 = v59;
    v87 = *v84;
    v86 = *(v84 + 1);
    LOBYTE(v501) = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    *(v88 + 24) = 0;
    *(v88 + 32) = v501;
    *(v88 + 40) = v87;
    *(v88 + 48) = v86;
    sub_1D5E1C3D8(0);
    v90 = v89;
    v91 = sub_1D5B58B84(&qword_1EDF02AB8, sub_1D5E1C3D8, MEMORY[0x1E69E6F60]);

    *&v489 = v90;
    v479 = v91;
    v92 = sub_1D72647CC();
    LOBYTE(v501) = 0;
    v93 = swift_allocObject();
    *(v93 + 24) = 0;
    *(v93 + 32) = 0;
    *(v93 + 16) = v92;
    *(v93 + 40) = v501;
    v94 = (v83 + *(v82 + 9));
    v95 = v94[3];
    v96 = v94[4];
    v97 = __swift_project_boxed_opaque_existential_1(v94, v95);
    MEMORY[0x1EEE9AC00](v97, v98);
    MEMORY[0x1EEE9AC00](v99, v100);
    *(&v460 - 4) = sub_1D5B4AA6C;
    *(&v460 - 3) = 0;
    v458 = sub_1D6666774;
    v459 = v88;
    v101 = v490;
    v103 = sub_1D5D2F7A4(v85, sub_1D615B49C, v102, sub_1D615B4A4, (&v460 - 6), v95, v96);
    *&v490 = v101;
    if (v101)
    {
      sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

      v104 = v83;
      return sub_1D5D2CFE8(v104, sub_1D66666E0);
    }

    v132 = v103;
    v473 = v85;

    if (v132)
    {
      v501 = 0uLL;
      LOBYTE(v502) = 0;
      v508 = v480;
      v509 = v71;
      v133 = v510;
      v134 = v490;
      sub_1D72647EC();
      *&v490 = v134;
      v76 = v482;
      v74 = v481;
      if (v134)
      {

        sub_1D5D2CFE8(v473, type metadata accessor for FormatVersionRequirement);
        v104 = v133;
        return sub_1D5D2CFE8(v104, sub_1D66666E0);
      }

      sub_1D5D2CFE8(v473, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v473, type metadata accessor for FormatVersionRequirement);

      v76 = v482;
      v74 = v481;
    }
  }

  else
  {
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v489, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v106 = v485[4];
  v76(v488, v74, v486);
  swift_storeEnumTagMultiPayload();
  v508 = v106;
  v489 = xmmword_1D728CF30;
  v501 = xmmword_1D728CF30;
  LOBYTE(v502) = 0;
  v107 = v487;
  v108 = v510;
  v109 = &v510[*(v487 + 11)];
  v110 = *v109;
  v111 = *(v109 + 1);
  LOBYTE(v499) = 0;
  v112 = swift_allocObject();
  v480 = &v460;
  *(v112 + 16) = v489;
  *(v112 + 32) = v499;
  *(v112 + 40) = v110;
  *(v112 + 48) = v111;
  MEMORY[0x1EEE9AC00](v112, v113);
  v479 = &v460 - 6;
  *(&v460 - 4) = sub_1D5B4AA6C;
  *(&v460 - 3) = 0;
  v458 = sub_1D67088F0;
  v459 = v114;
  LOBYTE(v499) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v489;
  *(v115 + 32) = v499;
  v461 = v110;
  *(v115 + 40) = v110;
  *(v115 + 48) = v111;
  sub_1D5E1C3D8(0);
  v117 = v116;
  v118 = sub_1D5B58B84(&qword_1EDF02AB8, sub_1D5E1C3D8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v472 = v117;
  v473 = v118;
  v119 = sub_1D72647CC();
  LOBYTE(v499) = 0;
  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  *(v120 + 24) = v489;
  *(v120 + 40) = v499;
  v121 = (v108 + *(v107 + 9));
  v122 = v121[3];
  v123 = v121[4];
  v124 = __swift_project_boxed_opaque_existential_1(v121, v122);
  MEMORY[0x1EEE9AC00](v124, v125);
  MEMORY[0x1EEE9AC00](v126, v127);
  v128 = v479;
  *(&v460 - 4) = sub_1D615B4A4;
  *(&v460 - 3) = v128;
  v458 = sub_1D67088F0;
  v459 = v115;
  v129 = v488;
  v130 = v490;
  sub_1D5D2BC70(v488, sub_1D615B49C, v131, sub_1D615B4A4, (&v460 - 6), v122, v123);
  if (v130)
  {
    sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v510, sub_1D66666E0);
  }

  v487 = v121;
  *&v489 = v111;

  sub_1D6666804();
  sub_1D72647EC();
  *&v490 = 0;
  sub_1D5D2CFE8(v488, type metadata accessor for FormatVersionRequirement);

  v135 = v485;
  v136 = v485[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v137 = v486;
  v138 = __swift_project_value_buffer(v486, qword_1EDFFCD68);
  v139 = v478;
  v140 = v482;
  v482(v478, v138, v137);
  swift_storeEnumTagMultiPayload();
  v488 = xmmword_1D7297410;
  v501 = xmmword_1D7297410;
  LOBYTE(v502) = 0;
  LOBYTE(v508) = 0;
  v141 = swift_allocObject();
  v143 = v141;
  *(v141 + 16) = v488;
  *(v141 + 32) = v508;
  v144 = v461;
  v145 = v489;
  *(v141 + 40) = v461;
  *(v141 + 48) = v145;
  if (v136)
  {
    v480 = &v460;
    v508 = v136;
    MEMORY[0x1EEE9AC00](v141, v142);
    *(&v460 - 4) = sub_1D5B4AA6C;
    *(&v460 - 3) = 0;
    v458 = sub_1D67088F0;
    v459 = v143;
    LOBYTE(v499) = 0;
    v146 = swift_allocObject();
    *(v146 + 16) = v488;
    *(v146 + 32) = v499;
    *(v146 + 40) = v144;
    *(v146 + 48) = v145;
    swift_retain_n();

    v147 = sub_1D72647CC();
    LOBYTE(v499) = 0;
    v148 = swift_allocObject();
    *(v148 + 16) = v147;
    *(v148 + 24) = v488;
    *(v148 + 40) = v499;
    v149 = v487[3];
    v150 = v487[4];
    v151 = __swift_project_boxed_opaque_existential_1(v487, v149);
    MEMORY[0x1EEE9AC00](v151, v152);
    MEMORY[0x1EEE9AC00](v153, v154);
    *(&v460 - 4) = sub_1D615B4A4;
    *(&v460 - 3) = (&v460 - 6);
    v458 = sub_1D67088F0;
    v459 = v146;
    v155 = v490;
    v157 = sub_1D5D2F7A4(v139, sub_1D615B49C, v156, sub_1D615B4A4, (&v460 - 6), v149, v150);
    v158 = v155;
    if (v155)
    {

      v159 = v510;

      v160 = v139;
LABEL_37:
      sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
      v104 = v159;
      return sub_1D5D2CFE8(v104, sub_1D66666E0);
    }

    v162 = v157;

    if (v162)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v135 = v485;
      v161 = v482;
    }

    else
    {

      v135 = v485;
      v161 = v482;
    }

    v145 = v489;
  }

  else
  {
    v161 = v140;

    v158 = v490;
  }

  sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v163 = v135[6];
  v164 = v477;
  v165 = v161;
  v161(v477, v481, v486);
  swift_storeEnumTagMultiPayload();
  if (*(v163 + 16))
  {
    LOBYTE(v501) = 0;
    v166 = swift_allocObject();
    v490 = xmmword_1D72BAA60;
    *(v166 + 16) = xmmword_1D72BAA60;
    *(v166 + 32) = v501;
    *(v166 + 40) = v461;
    *(v166 + 48) = v145;

    v167 = v510;
    v168 = sub_1D72647CC();
    LOBYTE(v501) = 0;
    v169 = swift_allocObject();
    *(v169 + 16) = v168;
    *(v169 + 24) = v490;
    *(v169 + 40) = v501;
    v170 = v487[3];
    v171 = v487[4];
    v172 = __swift_project_boxed_opaque_existential_1(v487, v170);
    *&v488 = &v460;
    MEMORY[0x1EEE9AC00](v172, v173);
    MEMORY[0x1EEE9AC00](v174, v175);
    *(&v460 - 4) = sub_1D5B4AA6C;
    *(&v460 - 3) = 0;
    v458 = sub_1D67088F0;
    v459 = v166;
    v177 = sub_1D5D2F7A4(v164, sub_1D615B49C, v176, sub_1D615B4A4, (&v460 - 6), v170, v171);
    if (v158)
    {
      sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);

      v104 = v167;
      return sub_1D5D2CFE8(v104, sub_1D66666E0);
    }

    v179 = v177;

    v178 = v475;
    if (v179)
    {
      v501 = v490;
      LOBYTE(v502) = 0;
      *&v499 = v163;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v135 = v485;
      v165 = v482;
      *&v490 = 0;

      sub_1D5D2CFE8(v477, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v490 = 0;
      sub_1D5D2CFE8(v477, type metadata accessor for FormatVersionRequirement);

      v135 = v485;
      v165 = v482;
    }

    v145 = v489;
  }

  else
  {
    *&v490 = v158;
    sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
    v178 = v475;
  }

  v180 = v135[7];
  v165(v476, v481, v486);
  swift_storeEnumTagMultiPayload();
  v488 = xmmword_1D72BAA70;
  v501 = xmmword_1D72BAA70;
  LOBYTE(v502) = 0;
  LOBYTE(v499) = 0;
  v181 = swift_allocObject();
  v183 = v181;
  *(v181 + 16) = v488;
  *(v181 + 32) = v499;
  v184 = v461;
  *(v181 + 40) = v461;
  *(v181 + 48) = v145;
  if (v180)
  {
    v480 = &v460;
    *&v499 = v180;
    MEMORY[0x1EEE9AC00](v181, v182);
    v185 = v180;
    *(&v460 - 4) = sub_1D5B4AA6C;
    *(&v460 - 3) = 0;
    v458 = sub_1D67088F0;
    v459 = v183;
    LOBYTE(v498) = 0;
    v186 = swift_allocObject();
    *(v186 + 16) = v488;
    *(v186 + 32) = v498;
    *(v186 + 40) = v184;
    *(v186 + 48) = v145;
    swift_retain_n();

    v187 = sub_1D72647CC();
    LOBYTE(v498) = 0;
    v188 = swift_allocObject();
    *(v188 + 16) = v187;
    *(v188 + 24) = v488;
    *(v188 + 40) = v498;
    v189 = v487[3];
    v190 = v487[4];
    v191 = __swift_project_boxed_opaque_existential_1(v487, v189);
    MEMORY[0x1EEE9AC00](v191, v192);
    MEMORY[0x1EEE9AC00](v193, v194);
    *(&v460 - 4) = sub_1D615B4A4;
    *(&v460 - 3) = (&v460 - 6);
    v458 = sub_1D67088F0;
    v459 = v186;
    v195 = v476;
    v196 = v490;
    v198 = sub_1D5D2F7A4(v476, sub_1D615B49C, v197, sub_1D615B4A4, (&v460 - 6), v189, v190);
    v199 = v196;
    if (v196)
    {

      v159 = v510;
      v160 = v195;
      goto LABEL_37;
    }

    v200 = v198;

    if (v200)
    {
      *&v490 = v185;
      type metadata accessor for FormatTextNodeStyle();
      sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
      sub_1D72647EC();
      v135 = v485;
      v165 = v482;
      v178 = v475;
    }

    else
    {

      v135 = v485;
      v165 = v482;
      v178 = v475;
    }
  }

  else
  {

    v199 = v490;
    v195 = v476;
  }

  sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);
  v201 = v135[8];
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v479 = __swift_project_value_buffer(v486, qword_1EDFFCD50);
  (v165)(v178);
  swift_storeEnumTagMultiPayload();
  v488 = xmmword_1D72BAA80;
  v501 = xmmword_1D72BAA80;
  LOBYTE(v502) = 0;
  LOBYTE(v499) = 0;
  v202 = swift_allocObject();
  v204 = v202;
  *(v202 + 16) = v488;
  *(v202 + 32) = v499;
  v205 = v461;
  v206 = v489;
  *(v202 + 40) = v461;
  *(v202 + 48) = v206;
  *&v490 = v199;
  if (v201)
  {
    v480 = &v460;
    *&v499 = v201;
    MEMORY[0x1EEE9AC00](v202, v203);
    *(&v460 - 4) = sub_1D5B4AA6C;
    *(&v460 - 3) = 0;
    v458 = sub_1D67088F0;
    v459 = v204;
    LOBYTE(v498) = 0;
    v208 = v207;
    v209 = swift_allocObject();
    *(v209 + 16) = v488;
    *(v209 + 32) = v498;
    *(v209 + 40) = v205;
    *(v209 + 48) = v206;
    swift_retain_n();

    v210 = sub_1D72647CC();
    LOBYTE(v498) = 0;
    v211 = swift_allocObject();
    *(v211 + 16) = v210;
    *(v211 + 24) = v488;
    *(v211 + 40) = v498;
    v212 = v487[3];
    v213 = v487[4];
    v214 = __swift_project_boxed_opaque_existential_1(v487, v212);
    MEMORY[0x1EEE9AC00](v214, v215);
    MEMORY[0x1EEE9AC00](v216, v217);
    *(&v460 - 4) = sub_1D615B4A4;
    *(&v460 - 3) = (&v460 - 6);
    v458 = sub_1D67088F0;
    v459 = v209;
    v218 = v490;
    v220 = sub_1D5D2F7A4(v208, sub_1D615B49C, v219, sub_1D615B4A4, (&v460 - 6), v212, v213);
    if (v218)
    {

      v221 = v510;
      sub_1D5D2CFE8(v475, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v221, sub_1D66666E0);
    }

    v223 = v220;

    if (v223)
    {
      type metadata accessor for FormatAnimationNodeStyle();
      sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
      sub_1D72647EC();
      v135 = v485;
      v165 = v482;
      v224 = v474;
      *&v490 = 0;

      v222 = v489;
      goto LABEL_52;
    }

    *&v490 = 0;

    v135 = v485;
    v165 = v482;
    v222 = v489;
  }

  else
  {

    v222 = v206;
  }

  v224 = v474;
LABEL_52:

  sub_1D5D2CFE8(v475, type metadata accessor for FormatVersionRequirement);
  v225 = v135[9];
  v165(v224, v481, v486);
  swift_storeEnumTagMultiPayload();
  *&v499 = v225;
  v488 = xmmword_1D72BAA90;
  v501 = xmmword_1D72BAA90;
  LOBYTE(v502) = 0;
  LOBYTE(v498) = 0;
  v226 = swift_allocObject();
  v480 = &v460;
  *(v226 + 16) = v488;
  *(v226 + 32) = v498;
  v227 = v461;
  *(v226 + 40) = v461;
  *(v226 + 48) = v222;
  MEMORY[0x1EEE9AC00](v226, v228);
  *(&v460 - 4) = sub_1D5B4AA6C;
  *(&v460 - 3) = 0;
  v458 = sub_1D67088F0;
  v459 = v229;
  LOBYTE(v498) = 0;
  v230 = swift_allocObject();
  *(v230 + 16) = v488;
  *(v230 + 32) = v498;
  *(v230 + 40) = v227;
  *(v230 + 48) = v222;
  swift_retain_n();
  v231 = v510;
  v232 = sub_1D72647CC();
  LOBYTE(v498) = 0;
  v233 = swift_allocObject();
  *(v233 + 16) = v232;
  *(v233 + 24) = v488;
  *(v233 + 40) = v498;
  v234 = v487[3];
  v235 = v487[4];
  v236 = __swift_project_boxed_opaque_existential_1(v487, v234);
  MEMORY[0x1EEE9AC00](v236, v237);
  MEMORY[0x1EEE9AC00](v238, v239);
  *(&v460 - 4) = sub_1D615B4A4;
  *(&v460 - 3) = (&v460 - 6);
  v458 = sub_1D67088F0;
  v459 = v230;
  v240 = v490;
  sub_1D5D2BC70(v224, sub_1D615B49C, v241, sub_1D615B4A4, (&v460 - 6), v234, v235);
  if (v240)
  {
    sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v231, sub_1D66666E0);
  }

  sub_1D5C76E3C();
  sub_1D72647EC();
  *&v490 = 0;
  sub_1D5D2CFE8(v474, type metadata accessor for FormatVersionRequirement);

  v242 = v485[10];
  v243 = v485[11];
  v244 = v485[12];
  v480 = v485[13];
  v245 = v485[14];
  v477 = v485[15];
  v478 = v245;
  v246 = *(v485 + 64) | (*(v485 + 130) << 16);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v247 = v486;
  v248 = __swift_project_value_buffer(v486, qword_1EDFFCDF8);
  v249 = v471;
  v482(v471, v248, v247);
  swift_storeEnumTagMultiPayload();
  v488 = xmmword_1D72BAAA0;
  v499 = xmmword_1D72BAAA0;
  v500 = 0;
  LOBYTE(v501) = 0;
  v250 = swift_allocObject();
  v252 = v250;
  *(v250 + 16) = v488;
  *(v250 + 32) = v501;
  v253 = v461;
  v254 = v489;
  *(v250 + 40) = v461;
  *(v250 + 48) = v254;
  if (((v246 >> 17) & 0x7F) == 0x7F)
  {

    v255 = v490;
    v256 = v485;
    v257 = v482;
    v258 = v470;
    v259 = v249;
    v260 = v510;
  }

  else
  {
    v476 = &v460;
    *&v501 = v242;
    *(&v501 + 1) = v243;
    v502 = v244;
    v503 = v480;
    v504 = v478;
    v505 = v477;
    v506 = v246;
    v507 = BYTE2(v246);
    MEMORY[0x1EEE9AC00](v250, v251);
    v475 = &v460 - 6;
    *(&v460 - 4) = sub_1D5B4AA6C;
    *(&v460 - 3) = 0;
    v458 = sub_1D67088F0;
    v459 = v252;
    LOBYTE(v498) = 0;
    v261 = v242;
    v262 = swift_allocObject();
    *(v262 + 16) = v488;
    *(v262 + 32) = v498;
    *(v262 + 40) = v253;
    *(v262 + 48) = v254;
    swift_retain_n();
    sub_1D6046038(v261, v243, v244, v480, v478, v477, v246);
    v260 = v510;
    v263 = sub_1D72647CC();
    LOBYTE(v498) = 0;
    v264 = swift_allocObject();
    *(v264 + 16) = v263;
    *(v264 + 24) = v488;
    *(v264 + 40) = v498;
    v265 = v487[3];
    v266 = v487[4];
    v267 = __swift_project_boxed_opaque_existential_1(v487, v265);
    MEMORY[0x1EEE9AC00](v267, v268);
    MEMORY[0x1EEE9AC00](v269, v270);
    v271 = v475;
    *(&v460 - 4) = sub_1D615B4A4;
    *(&v460 - 3) = v271;
    v458 = sub_1D67088F0;
    v459 = v262;
    v272 = v490;
    sub_1D5D2F7A4(v249, sub_1D615B49C, v273, sub_1D615B4A4, (&v460 - 6), v265, v266);
    if (v272)
    {

      sub_1D5D0A678(v501, *(&v501 + 1), v502, v503, v504, v505, v506 | (v507 << 16));
      sub_1D5D2CFE8(v471, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v260, sub_1D66666E0);
    }

    sub_1D66621E8();
    sub_1D72647EC();

    sub_1D5D0A678(v501, *(&v501 + 1), v502, v503, v504, v505, v506 | (v507 << 16));
    v256 = v485;
    v257 = v482;
    v258 = v470;
    v259 = v471;
    v255 = 0;
  }

  sub_1D5D2CFE8(v259, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v274 = v256[17];
  v257(v258, v481, v486);
  swift_storeEnumTagMultiPayload();
  if (v274)
  {
    v480 = v274;
    LOBYTE(v501) = 0;
    v275 = swift_allocObject();
    v488 = xmmword_1D72BAAB0;
    *(v275 + 16) = xmmword_1D72BAAB0;
    *(v275 + 32) = v501;
    *(v275 + 40) = v461;
    *(v275 + 48) = v489;

    v276 = sub_1D72647CC();
    LOBYTE(v501) = 0;
    v277 = v258;
    v278 = swift_allocObject();
    *(v278 + 16) = v276;
    *(v278 + 24) = v488;
    *(v278 + 40) = v501;
    v279 = v487[3];
    v280 = v487[4];
    v281 = __swift_project_boxed_opaque_existential_1(v487, v279);
    MEMORY[0x1EEE9AC00](v281, v282);
    MEMORY[0x1EEE9AC00](v283, v284);
    *(&v460 - 4) = sub_1D5B4AA6C;
    *(&v460 - 3) = 0;
    v458 = sub_1D67088F0;
    v459 = v275;
    v286 = sub_1D5D2F7A4(v277, sub_1D615B49C, v285, sub_1D615B4A4, (&v460 - 6), v279, v280);
    *&v490 = v255;
    if (v255)
    {
      sub_1D5D2CFE8(v277, type metadata accessor for FormatVersionRequirement);

LABEL_74:
      v104 = v260;
      return sub_1D5D2CFE8(v104, sub_1D66666E0);
    }

    v288 = v286;

    if (v288)
    {
      v501 = v488;
      LOBYTE(v502) = 0;
      v498 = v480;
      v289 = v490;
      sub_1D72647EC();
      if (v289)
      {
        sub_1D5D2CFE8(v470, type metadata accessor for FormatVersionRequirement);
        v104 = v260;
        return sub_1D5D2CFE8(v104, sub_1D66666E0);
      }

      *&v490 = 0;
    }

    sub_1D5D2CFE8(v470, type metadata accessor for FormatVersionRequirement);
    v257 = v482;
    v287 = v489;
  }

  else
  {
    *&v490 = v255;
    sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);
    v287 = v489;
  }

  v290 = v485;
  swift_beginAccess();
  v291 = v290[18];
  v292 = v469;
  v257(v469, v479, v486);
  swift_storeEnumTagMultiPayload();
  v293 = v461;
  if (v291 == 0x8000000000000000)
  {
    sub_1D5D2CFE8(v292, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v501) = 0;
    v294 = swift_allocObject();
    v488 = xmmword_1D72BAAC0;
    *(v294 + 16) = xmmword_1D72BAAC0;
    *(v294 + 32) = v501;
    *(v294 + 40) = v293;
    *(v294 + 48) = v287;

    sub_1D5EB1500(v291);
    v295 = sub_1D72647CC();
    LOBYTE(v501) = 0;
    v296 = swift_allocObject();
    *(v296 + 16) = v295;
    *(v296 + 24) = v488;
    *(v296 + 40) = v501;
    v297 = v292;
    v298 = v487[3];
    v299 = v487[4];
    v300 = __swift_project_boxed_opaque_existential_1(v487, v298);
    MEMORY[0x1EEE9AC00](v300, v301);
    MEMORY[0x1EEE9AC00](v302, v303);
    *(&v460 - 4) = sub_1D5B4AA6C;
    *(&v460 - 3) = 0;
    v458 = sub_1D67088F0;
    v459 = v294;
    v304 = v490;
    v306 = sub_1D5D2F7A4(v297, sub_1D615B49C, v305, sub_1D615B4A4, (&v460 - 6), v298, v299);
    *&v490 = v304;
    if (v304)
    {

      sub_1D5EB15C4(v291);
      sub_1D5D2CFE8(v297, type metadata accessor for FormatVersionRequirement);
      goto LABEL_74;
    }

    v307 = v306;

    if (v307)
    {
      v501 = v488;
      LOBYTE(v502) = 0;
      v497 = v291;
      sub_1D5DF6A60();
      v308 = v490;
      sub_1D72647EC();
      if (v308)
      {
        sub_1D5EB15C4(v497);
        sub_1D5D2CFE8(v469, type metadata accessor for FormatVersionRequirement);
        v104 = v510;
        return sub_1D5D2CFE8(v104, sub_1D66666E0);
      }

      sub_1D5EB15C4(v497);
      sub_1D5D2CFE8(v469, type metadata accessor for FormatVersionRequirement);
      *&v490 = 0;
      v260 = v510;
    }

    else
    {
      sub_1D5EB15C4(v291);
      sub_1D5D2CFE8(v469, type metadata accessor for FormatVersionRequirement);
    }

    v290 = v485;
    v257 = v482;
  }

  swift_beginAccess();
  v309 = *(v290 + 152);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v310 = v486;
  v311 = __swift_project_value_buffer(v486, qword_1EDFFCD00);
  v312 = v468;
  v257(v468, v311, v310);
  swift_storeEnumTagMultiPayload();
  if (v309)
  {
    sub_1D5D2CFE8(v312, type metadata accessor for FormatVersionRequirement);
    goto LABEL_91;
  }

  LOBYTE(v501) = 0;
  v313 = swift_allocObject();
  v488 = xmmword_1D72BAAD0;
  *(v313 + 16) = xmmword_1D72BAAD0;
  *(v313 + 32) = v501;
  *(v313 + 40) = v461;
  *(v313 + 48) = v489;

  v314 = sub_1D72647CC();
  LOBYTE(v501) = 0;
  v315 = swift_allocObject();
  *(v315 + 16) = v314;
  *(v315 + 24) = v488;
  *(v315 + 40) = v501;
  v316 = v487[3];
  v317 = v487[4];
  v318 = __swift_project_boxed_opaque_existential_1(v487, v316);
  MEMORY[0x1EEE9AC00](v318, v319);
  MEMORY[0x1EEE9AC00](v320, v321);
  *(&v460 - 4) = sub_1D5B4AA6C;
  *(&v460 - 3) = 0;
  v458 = sub_1D67088F0;
  v459 = v313;
  v322 = v490;
  v324 = sub_1D5D2F7A4(v312, sub_1D615B49C, v323, sub_1D615B4A4, (&v460 - 6), v316, v317);
  if (!v322)
  {
    v325 = v324;
    *&v490 = 0;

    if (v325)
    {
      v501 = v488;
      LOBYTE(v502) = 0;
      LOBYTE(v495) = 0;
      v326 = v490;
      sub_1D72647EC();
      *&v490 = v326;
      if (v326)
      {
        sub_1D5D2CFE8(v468, type metadata accessor for FormatVersionRequirement);
LABEL_111:
        v104 = v510;
        return sub_1D5D2CFE8(v104, sub_1D66666E0);
      }
    }

    sub_1D5D2CFE8(v468, type metadata accessor for FormatVersionRequirement);
    v290 = v485;
    v257 = v482;
LABEL_91:
    v327 = v466;
    v328 = *(v290 + 153);
    v329 = v486;
    v257(v466, v481, v486);
    swift_storeEnumTagMultiPayload();
    v488 = xmmword_1D72BAAE0;
    v501 = xmmword_1D72BAAE0;
    LOBYTE(v502) = 0;
    LOBYTE(v495) = 0;
    v330 = swift_allocObject();
    v332 = v330;
    *(v330 + 16) = v488;
    *(v330 + 32) = v495;
    v333 = v489;
    *(v330 + 40) = v461;
    *(v330 + 48) = v333;
    if (v328 == 7)
    {
    }

    else
    {
      LOBYTE(v495) = v328;
      MEMORY[0x1EEE9AC00](v330, v331);
      *(&v460 - 4) = sub_1D5B4AA6C;
      *(&v460 - 3) = 0;
      v458 = sub_1D67088F0;
      v459 = v332;
      v494[0] = 0;
      v334 = swift_allocObject();
      *(v334 + 16) = v488;
      *(v334 + 32) = v494[0];
      *(v334 + 40) = v461;
      *(v334 + 48) = v333;
      swift_retain_n();
      v335 = sub_1D72647CC();
      v494[0] = 0;
      v336 = swift_allocObject();
      *(v336 + 16) = v335;
      *(v336 + 24) = v488;
      *(v336 + 40) = v494[0];
      v337 = v487[3];
      v338 = v487[4];
      v339 = __swift_project_boxed_opaque_existential_1(v487, v337);
      MEMORY[0x1EEE9AC00](v339, v340);
      MEMORY[0x1EEE9AC00](v341, v342);
      *(&v460 - 4) = sub_1D615B4A4;
      *(&v460 - 3) = (&v460 - 6);
      v458 = sub_1D67088F0;
      v459 = v334;
      v343 = v490;
      v345 = sub_1D5D2F7A4(v327, sub_1D615B49C, v344, sub_1D615B4A4, (&v460 - 6), v337, v338);
      *&v490 = v343;
      if (v343)
      {
        v346 = v466;
        goto LABEL_109;
      }

      v347 = v345;

      if (v347)
      {
        sub_1D6666858();
        v348 = v490;
        sub_1D72647EC();
        *&v490 = v348;
        if (v348)
        {
          v349 = v466;
          goto LABEL_142;
        }
      }

      v290 = v485;
      v329 = v486;
      v257 = v482;
      v327 = v466;
    }

    sub_1D5D2CFE8(v327, type metadata accessor for FormatVersionRequirement);

    v350 = v290[20];
    v351 = *(v290 + 168);
    v257(v467, v481, v329);
    swift_storeEnumTagMultiPayload();
    v488 = xmmword_1D72BAAF0;
    v501 = xmmword_1D72BAAF0;
    LOBYTE(v502) = 0;
    LOBYTE(v495) = 0;
    v352 = swift_allocObject();
    v354 = v352;
    *(v352 + 16) = v488;
    *(v352 + 32) = v495;
    v355 = v461;
    v356 = v489;
    *(v352 + 40) = v461;
    *(v352 + 48) = v356;
    if (v351 > 0xFD)
    {

LABEL_101:
      sub_1D5D2CFE8(v467, type metadata accessor for FormatVersionRequirement);

      v357 = v485;
      swift_beginAccess();
      v358 = v357[22];
      v359 = qword_1EDF31EA8;

      if (v359 != -1)
      {
        swift_once();
      }

      v360 = v486;
      v361 = __swift_project_value_buffer(v486, qword_1EDFFCD18);
      v482(v465, v361, v360);
      swift_storeEnumTagMultiPayload();
      if (*(v358 + 16))
      {
        LOBYTE(v501) = 0;
        v362 = swift_allocObject();
        v488 = xmmword_1D7282A80;
        *(v362 + 16) = xmmword_1D7282A80;
        *(v362 + 32) = v501;
        *(v362 + 40) = v461;
        *(v362 + 48) = v489;

        v363 = sub_1D72647CC();
        LOBYTE(v501) = 0;
        v364 = swift_allocObject();
        *(v364 + 16) = v363;
        *(v364 + 24) = v488;
        *(v364 + 40) = v501;
        v365 = v487[3];
        v366 = v487[4];
        v367 = __swift_project_boxed_opaque_existential_1(v487, v365);
        MEMORY[0x1EEE9AC00](v367, v368);
        MEMORY[0x1EEE9AC00](v369, v370);
        *(&v460 - 4) = sub_1D5B4AA6C;
        *(&v460 - 3) = 0;
        v458 = sub_1D67088F0;
        v459 = v362;
        v371 = v490;
        v373 = sub_1D5D2F7A4(v465, sub_1D615B49C, v372, sub_1D615B4A4, (&v460 - 6), v365, v366);
        *&v490 = v371;
        if (v371)
        {

LABEL_106:
          sub_1D5D2CFE8(v465, type metadata accessor for FormatVersionRequirement);
          goto LABEL_111;
        }

        v388 = v373;

        if (v388)
        {
          v389 = v490;
          sub_1D5E08D6C(v358, v510, 0xD, 0, 0);
          *&v490 = v389;
          if (v389)
          {

            goto LABEL_106;
          }
        }
      }

      sub_1D5D2CFE8(v465, type metadata accessor for FormatVersionRequirement);
      v390 = v485;
      swift_beginAccess();
      v391 = v390[23];
      v392 = qword_1EDF31F40;

      if (v392 != -1)
      {
        swift_once();
      }

      v393 = v486;
      v394 = __swift_project_value_buffer(v486, qword_1EDFFCE50);
      v482(v464, v394, v393);
      swift_storeEnumTagMultiPayload();
      if (!*(v391 + 16))
      {
        goto LABEL_126;
      }

      LOBYTE(v501) = 0;
      v395 = swift_allocObject();
      v488 = xmmword_1D72BAB00;
      *(v395 + 16) = xmmword_1D72BAB00;
      *(v395 + 32) = v501;
      *(v395 + 40) = v461;
      *(v395 + 48) = v489;

      v396 = sub_1D72647CC();
      LOBYTE(v501) = 0;
      v397 = swift_allocObject();
      *(v397 + 16) = v396;
      *(v397 + 24) = v488;
      *(v397 + 40) = v501;
      v398 = v487[3];
      v399 = v487[4];
      v400 = __swift_project_boxed_opaque_existential_1(v487, v398);
      MEMORY[0x1EEE9AC00](v400, v401);
      MEMORY[0x1EEE9AC00](v402, v403);
      *(&v460 - 4) = sub_1D5B4AA6C;
      *(&v460 - 3) = 0;
      v458 = sub_1D67088F0;
      v459 = v395;
      v404 = v490;
      v406 = sub_1D5D2F7A4(v464, sub_1D615B49C, v405, sub_1D615B4A4, (&v460 - 6), v398, v399);
      *&v490 = v404;
      if (v404)
      {
        sub_1D5D2CFE8(v464, type metadata accessor for FormatVersionRequirement);

        goto LABEL_110;
      }

      v407 = v406;

      if (v407)
      {
        v501 = v488;
        LOBYTE(v502) = 0;
        *&v492 = v391;
        sub_1D5C34D84(0, &qword_1EDF04FC8, &type metadata for FormatSourceItem, MEMORY[0x1E69E62F8]);
        sub_1D6659A78();
        v408 = v490;
        sub_1D72647EC();
        *&v490 = v408;
        if (v408)
        {

          sub_1D5D2CFE8(v464, type metadata accessor for FormatVersionRequirement);
          goto LABEL_111;
        }

        sub_1D5D2CFE8(v464, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
LABEL_126:
        sub_1D5D2CFE8(v464, type metadata accessor for FormatVersionRequirement);
      }

      v409 = v485[24];
      v410 = v485[25];
      v482(v463, v479, v486);
      swift_storeEnumTagMultiPayload();
      v488 = xmmword_1D72BAB10;
      v501 = xmmword_1D72BAB10;
      LOBYTE(v502) = 0;
      LOBYTE(v492) = 0;
      v411 = swift_allocObject();
      v413 = v411;
      *(v411 + 16) = v488;
      *(v411 + 32) = v492;
      v414 = v489;
      *(v411 + 40) = v461;
      *(v411 + 48) = v414;
      if (v410)
      {
        *&v492 = v409;
        *(&v492 + 1) = v410;
        MEMORY[0x1EEE9AC00](v411, v412);
        *(&v460 - 4) = sub_1D5B4AA6C;
        *(&v460 - 3) = 0;
        v458 = sub_1D67088F0;
        v459 = v413;
        v491 = 0;
        v415 = swift_allocObject();
        *(v415 + 16) = v488;
        *(v415 + 32) = v491;
        *(v415 + 40) = v461;
        *(v415 + 48) = v489;
        swift_retain_n();

        v416 = sub_1D72647CC();
        v491 = 0;
        v417 = swift_allocObject();
        *(v417 + 16) = v416;
        *(v417 + 24) = v488;
        *(v417 + 40) = v491;
        v418 = v487[3];
        v419 = v487[4];
        v420 = __swift_project_boxed_opaque_existential_1(v487, v418);
        MEMORY[0x1EEE9AC00](v420, v421);
        MEMORY[0x1EEE9AC00](v422, v423);
        *(&v460 - 4) = sub_1D615B4A4;
        *(&v460 - 3) = (&v460 - 6);
        v458 = sub_1D67088F0;
        v459 = v415;
        v424 = v490;
        v426 = sub_1D5D2F7A4(v463, sub_1D615B49C, v425, sub_1D615B4A4, (&v460 - 6), v418, v419);
        *&v490 = v424;
        if (v424)
        {

LABEL_130:
          sub_1D5D2CFE8(v463, type metadata accessor for FormatVersionRequirement);
          goto LABEL_111;
        }

        v427 = v426;

        if (v427)
        {
          v428 = v490;
          sub_1D72647EC();
          *&v490 = v428;
          if (v428)
          {

            goto LABEL_130;
          }
        }

        sub_1D5D2CFE8(v463, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v463, type metadata accessor for FormatVersionRequirement);
      }

      v429 = v485[26];
      v430 = v485[27];
      v431 = v485[28];
      v432 = v485[29];
      v433 = v485[30];
      v434 = v485[31];
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v435 = v486;
      v436 = __swift_project_value_buffer(v486, qword_1EDFFCE38);
      v482(v462, v436, v435);
      swift_storeEnumTagMultiPayload();
      v488 = xmmword_1D72BAB20;
      v492 = xmmword_1D72BAB20;
      v493 = 0;
      LOBYTE(v501) = 0;
      v437 = swift_allocObject();
      v439 = v437;
      *(v437 + 16) = v488;
      *(v437 + 32) = v501;
      v440 = v489;
      *(v437 + 40) = v461;
      *(v437 + 48) = v440;
      if (v429)
      {
        v486 = &v460;
        *&v501 = v429;
        *(&v501 + 1) = v430;
        v502 = v431;
        v503 = v432;
        v504 = v433;
        v505 = v434;
        v441 = v434;
        MEMORY[0x1EEE9AC00](v437, v438);
        v485 = &v460 - 6;
        *(&v460 - 4) = sub_1D5B4AA6C;
        *(&v460 - 3) = 0;
        v458 = sub_1D67088F0;
        v459 = v439;
        v491 = 0;
        v442 = swift_allocObject();
        *(v442 + 16) = v488;
        *(v442 + 32) = v491;
        *(v442 + 40) = v461;
        *(v442 + 48) = v489;
        swift_retain_n();
        sub_1D5EB1D80(v429, v430, v431, v432, v433, v441);
        v443 = sub_1D72647CC();
        v491 = 0;
        v444 = swift_allocObject();
        *(v444 + 16) = v443;
        *(v444 + 24) = v488;
        *(v444 + 40) = v491;
        v445 = v487[3];
        v446 = v487[4];
        v447 = __swift_project_boxed_opaque_existential_1(v487, v445);
        MEMORY[0x1EEE9AC00](v447, v448);
        MEMORY[0x1EEE9AC00](v449, v450);
        v451 = v485;
        *(&v460 - 4) = sub_1D615B4A4;
        *(&v460 - 3) = v451;
        v458 = sub_1D67088F0;
        v459 = v442;
        v452 = v490;
        v454 = sub_1D5D2F7A4(v462, sub_1D615B49C, v453, sub_1D615B4A4, (&v460 - 6), v445, v446);
        *&v490 = v452;
        if (v452)
        {
        }

        else
        {
          v455 = v454;

          if (v455)
          {
            sub_1D6659A24();
            v456 = v490;
            sub_1D72647EC();
            *&v490 = v456;
          }
        }

        v457 = v504;

        sub_1D5CBF568(v457);

        sub_1D5D2CFE8(v462, type metadata accessor for FormatVersionRequirement);
        goto LABEL_111;
      }

      v349 = v462;
LABEL_142:
      sub_1D5D2CFE8(v349, type metadata accessor for FormatVersionRequirement);

      goto LABEL_111;
    }

    v495 = v350;
    v496 = v351;
    MEMORY[0x1EEE9AC00](v352, v353);
    *(&v460 - 4) = sub_1D5B4AA6C;
    *(&v460 - 3) = 0;
    v458 = sub_1D67088F0;
    v459 = v354;
    v494[0] = 0;
    v374 = swift_allocObject();
    *(v374 + 16) = v488;
    *(v374 + 32) = v494[0];
    *(v374 + 40) = v355;
    *(v374 + 48) = v356;
    swift_retain_n();
    v375 = sub_1D72647CC();
    v494[0] = 0;
    v376 = swift_allocObject();
    *(v376 + 16) = v375;
    *(v376 + 24) = v488;
    *(v376 + 40) = v494[0];
    v377 = v487[3];
    v378 = v487[4];
    v379 = __swift_project_boxed_opaque_existential_1(v487, v377);
    MEMORY[0x1EEE9AC00](v379, v380);
    MEMORY[0x1EEE9AC00](v381, v382);
    *(&v460 - 4) = sub_1D615B4A4;
    *(&v460 - 3) = (&v460 - 6);
    v458 = sub_1D67088F0;
    v459 = v374;
    v383 = v490;
    v385 = sub_1D5D2F7A4(v467, sub_1D615B49C, v384, sub_1D615B4A4, (&v460 - 6), v377, v378);
    *&v490 = v383;
    if (!v383)
    {
      v386 = v385;

      if (v386)
      {
        sub_1D5F8F434();
        v387 = v490;
        sub_1D72647EC();
        *&v490 = v387;
        if (v387)
        {
          v349 = v467;
          goto LABEL_142;
        }
      }

      goto LABEL_101;
    }

    v346 = v467;
LABEL_109:
    sub_1D5D2CFE8(v346, type metadata accessor for FormatVersionRequirement);

LABEL_110:

    goto LABEL_111;
  }

  sub_1D5D2CFE8(v312, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v260, sub_1D66666E0);
}