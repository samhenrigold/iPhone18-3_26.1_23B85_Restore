unint64_t sub_1C56F2204()
{
  result = qword_1EC16ED90;
  if (!qword_1EC16ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16ED90);
  }

  return result;
}

uint64_t sub_1C56F2258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v40 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC48, &qword_1C586B0C0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v39 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCC0, &qword_1C5875ED0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v39 - v15;
  v41 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  v42 = a1;
  v17 = v41[5];
  v18 = *(v13 + 56);
  sub_1C56466CC(a1 + v17, v16, &qword_1EC16EC48, &qword_1C586B0C0);
  v19 = a2 + v17;
  v20 = a2;
  sub_1C56466CC(v19, &v16[v18], &qword_1EC16EC48, &qword_1C586B0C0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v18], 1, v4) == 1)
    {
      sub_1C5625230(v16, &qword_1EC16EC48, &qword_1C586B0C0);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C56466CC(v16, v11, &qword_1EC16EC48, &qword_1C586B0C0);
  if (v21(&v16[v18], 1, v4) == 1)
  {
    sub_1C56EC248(v11, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
LABEL_9:
    v25 = &qword_1EC16FCC0;
    v26 = &qword_1C5875ED0;
LABEL_10:
    sub_1C5625230(v16, v25, v26);
    goto LABEL_11;
  }

  v29 = v40;
  sub_1C56EC178(&v16[v18], v40, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
  if ((sub_1C56EB230(*v11, *v29) & 1) == 0)
  {
    sub_1C56EC248(v29, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
    sub_1C56EC248(v11, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
    v25 = &qword_1EC16EC48;
    v26 = &qword_1C586B0C0;
    goto LABEL_10;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v30 = sub_1C584F620();
  sub_1C56EC248(v29, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
  sub_1C56EC248(v11, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
  sub_1C5625230(v16, &qword_1EC16EC48, &qword_1C586B0C0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v22 = v41[6];
  v23 = *(v42 + v22);
  v24 = *(v20 + v22);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
  {
    goto LABEL_11;
  }

  v31 = v41[7];
  v32 = *(v42 + v31);
  v33 = *(v20 + v31);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
  {
    goto LABEL_11;
  }

  v34 = v41[8];
  v35 = (v42 + v34);
  v36 = *(v42 + v34 + 4);
  v37 = (v20 + v34);
  v38 = *(v20 + v34 + 4);
  if (v36)
  {
    if (v38)
    {
LABEL_30:
      sub_1C584EFD0();
      sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v27 = sub_1C584F620();
      return v27 & 1;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if ((v38 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_11:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1C56F26E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F286C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC40, &qword_1C586B0B8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v123 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCC8, &qword_1C5875ED8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v123 - v15;
  v130 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v17);
  v19 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v129 = &v123 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCD0, &qword_1C5875EE0);
  MEMORY[0x1EEE9AC00](v127, v23);
  v25 = &v123 - v24;
  v26 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v27 = v26[7];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_63;
    }

    if (*v28 != *v30 || v29 != v31)
    {
      v126 = v19;
      v32 = v25;
      v33 = v13;
      v34 = v5;
      v35 = v4;
      v36 = v12;
      v37 = a1;
      v38 = a2;
      v39 = v16;
      v40 = v8;
      v41 = v26;
      v42 = sub_1C584FDC0();
      v26 = v41;
      v8 = v40;
      v16 = v39;
      a2 = v38;
      a1 = v37;
      v12 = v36;
      v4 = v35;
      v5 = v34;
      v13 = v33;
      v25 = v32;
      v19 = v126;
      if ((v42 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v31)
  {
    goto LABEL_63;
  }

  v43 = v26[8];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_63;
    }

    if (*v44 != *v46 || v45 != v47)
    {
      v126 = v19;
      v48 = v25;
      v49 = v13;
      v50 = v5;
      v51 = v4;
      v52 = v12;
      v53 = a1;
      v54 = a2;
      v55 = v16;
      v56 = v8;
      v57 = v26;
      v58 = sub_1C584FDC0();
      v26 = v57;
      v8 = v56;
      v16 = v55;
      a2 = v54;
      a1 = v53;
      v12 = v52;
      v4 = v51;
      v5 = v50;
      v13 = v49;
      v25 = v48;
      v19 = v126;
      if ((v58 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v47)
  {
    goto LABEL_63;
  }

  v59 = v26[9];
  v60 = (a1 + v59);
  v61 = *(a1 + v59 + 8);
  v62 = (a2 + v59);
  v63 = v62[1];
  if (v61)
  {
    if (!v63)
    {
      goto LABEL_63;
    }

    if (*v60 != *v62 || v61 != v63)
    {
      v126 = v19;
      v64 = v25;
      v65 = v13;
      v66 = v5;
      v67 = v4;
      v68 = v12;
      v69 = a1;
      v70 = a2;
      v71 = v16;
      v72 = v8;
      v73 = v26;
      v74 = sub_1C584FDC0();
      v26 = v73;
      v8 = v72;
      v16 = v71;
      a2 = v70;
      a1 = v69;
      v12 = v68;
      v4 = v67;
      v5 = v66;
      v13 = v65;
      v25 = v64;
      v19 = v126;
      if ((v74 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v63)
  {
    goto LABEL_63;
  }

  v75 = v26[10];
  v76 = (a1 + v75);
  v77 = *(a1 + v75 + 8);
  v78 = (a2 + v75);
  v79 = v78[1];
  if (v77)
  {
    if (!v79)
    {
      goto LABEL_63;
    }

    if (*v76 != *v78 || v77 != v79)
    {
      v126 = v19;
      v80 = v25;
      v81 = v13;
      v82 = v5;
      v83 = v4;
      v84 = v12;
      v85 = a1;
      v86 = a2;
      v87 = v16;
      v88 = v8;
      v89 = v26;
      v90 = sub_1C584FDC0();
      v26 = v89;
      v8 = v88;
      v16 = v87;
      a2 = v86;
      a1 = v85;
      v12 = v84;
      v4 = v83;
      v5 = v82;
      v13 = v81;
      v25 = v80;
      v19 = v126;
      if ((v90 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v79)
  {
    goto LABEL_63;
  }

  v91 = v26[11];
  v92 = (a1 + v91);
  v93 = *(a1 + v91 + 8);
  v94 = (a2 + v91);
  v95 = v94[1];
  if (v93)
  {
    if (!v95)
    {
      goto LABEL_63;
    }

    v125 = v26;
    if ((*v92 != *v94 || v93 != v95) && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v125 = v26;
    if (v95)
    {
      goto LABEL_63;
    }
  }

  if ((sub_1C56EB094(*a1, *a2, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, sub_1C56F286C) & 1) == 0)
  {
    goto LABEL_63;
  }

  v126 = v19;
  v124 = v8;
  v96 = v125[12];
  v97 = *(v127 + 48);
  sub_1C56466CC(a1 + v96, v25, &qword_1EC16EB18, &qword_1C586AF80);
  v127 = v97;
  sub_1C56466CC(a2 + v96, &v25[v97], &qword_1EC16EB18, &qword_1C586AF80);
  v98 = v130;
  v128 = *(v128 + 6);
  if ((v128)(v25, 1, v130) != 1)
  {
    sub_1C56466CC(v25, v129, &qword_1EC16EB18, &qword_1C586AF80);
    if ((v128)(&v25[v127], 1, v98) != 1)
    {
      v128 = v25;
      v102 = v126;
      sub_1C56EC178(&v25[v127], v126, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
      v103 = v129;
      v104 = *(v130 + 20);
      v105 = *(v129 + v104);
      v106 = *(v102 + v104);
      if (v105 == v106 || (, , LODWORD(v130) = sub_1C56B1234(v105, v106), , , (v130 & 1) != 0))
      {
        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v107 = v126;
        v108 = sub_1C584F620();
        sub_1C56EC248(v107, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
        sub_1C56EC248(v129, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
        sub_1C5625230(v128, &qword_1EC16EB18, &qword_1C586AF80);
        if ((v108 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_47;
      }

      sub_1C56EC248(v126, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
      sub_1C56EC248(v103, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
      v99 = &qword_1EC16EB18;
      v100 = &qword_1C586AF80;
      v101 = v128;
LABEL_43:
      sub_1C5625230(v101, v99, v100);
      goto LABEL_63;
    }

    sub_1C56EC248(v129, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
LABEL_42:
    v99 = &qword_1EC16FCD0;
    v100 = &qword_1C5875EE0;
    v101 = v25;
    goto LABEL_43;
  }

  if ((v128)(&v25[v127], 1, v98) != 1)
  {
    goto LABEL_42;
  }

  sub_1C5625230(v25, &qword_1EC16EB18, &qword_1C586AF80);
LABEL_47:
  if ((sub_1C56EB4D8(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_63;
  }

  v109 = v125[13];
  v110 = *(a1 + v109);
  v111 = *(a2 + v109);
  if (v110 == 2)
  {
    if (v111 != 2)
    {
      goto LABEL_63;
    }
  }

  else if (v111 == 2 || ((v110 ^ v111) & 1) != 0)
  {
    goto LABEL_63;
  }

  v112 = v12;
  v113 = v125[14];
  v114 = *(v13 + 48);
  sub_1C56466CC(a1 + v113, v16, &qword_1EC16EC40, &qword_1C586B0B8);
  sub_1C56466CC(a2 + v113, &v16[v114], &qword_1EC16EC40, &qword_1C586B0B8);
  v115 = *(v5 + 48);
  if (v115(v16, 1, v4) == 1)
  {
    if (v115(&v16[v114], 1, v4) == 1)
    {
      sub_1C5625230(v16, &qword_1EC16EC40, &qword_1C586B0B8);
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  sub_1C56466CC(v16, v112, &qword_1EC16EC40, &qword_1C586B0B8);
  if (v115(&v16[v114], 1, v4) == 1)
  {
    sub_1C56EC248(v112, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
LABEL_59:
    v99 = &qword_1EC16FCC8;
    v100 = &qword_1C5875ED8;
    v101 = v16;
    goto LABEL_43;
  }

  v116 = v124;
  sub_1C56EC178(&v16[v114], v124, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
  v117 = sub_1C56F3344(v112, v116, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
  sub_1C56EC248(v116, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
  sub_1C56EC248(v112, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
  sub_1C5625230(v16, &qword_1EC16EC40, &qword_1C586B0B8);
  if (v117)
  {
LABEL_61:
    v118 = v125[15];
    v119 = *(a1 + v118);
    v120 = *(a2 + v118);
    if (v119 == 3)
    {
      if (v120 != 3)
      {
        goto LABEL_63;
      }
    }

    else if (v119 != v120)
    {
      goto LABEL_63;
    }

    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v121 = sub_1C584F620();
    return v121 & 1;
  }

LABEL_63:
  v121 = 0;
  return v121 & 1;
}

uint64_t sub_1C56F3344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_1C584FDC0();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = v5[6];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (!v16)
  {
    if (!v18)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v18)
  {
    return 0;
  }

  if (*v15 != *v17 || v16 != v18)
  {
    v20 = v5;
    v21 = sub_1C584FDC0();
    v5 = v20;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v22 = v5[7];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 == 3)
  {
    if (v24 != 3)
    {
      return 0;
    }
  }

  else if (v23 != v24)
  {
    return 0;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F34AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUUserPreferences(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1C584FDC0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 4)
  {
    if (v15 != 4)
    {
      return 0;
    }
  }

  else if (v14 != v15)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 != 3)
  {
    if (v17 == v18)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v18 != 3)
  {
    return 0;
  }

LABEL_18:
  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 4);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 4);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v4[9];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v27 = v4[10];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 4)
  {
    if (v29 != 4)
    {
      return 0;
    }
  }

  else if (v28 != v29)
  {
    return 0;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56F3670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED18, &qword_1C586B1A0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBD8, &qword_1C5875DE8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for WebBridgeReply(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v22)
  {
    goto LABEL_16;
  }

  v38 = v8;
  v24 = v17[6];
  v25 = *(v13 + 48);
  v39 = a1;
  sub_1C56466CC(a1 + v24, v16, &qword_1EC16ED18, &qword_1C586B1A0);
  v26 = a2 + v24;
  v27 = a2;
  sub_1C56466CC(v26, &v16[v25], &qword_1EC16ED18, &qword_1C586B1A0);
  v28 = *(v5 + 48);
  if (v28(v16, 1, v4) != 1)
  {
    sub_1C56466CC(v16, v12, &qword_1EC16ED18, &qword_1C586B1A0);
    if (v28(&v16[v25], 1, v4) != 1)
    {
      v31 = v38;
      sub_1C56EC178(&v16[v25], v38, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
      v32 = sub_1C56F3B60(v12, v31);
      sub_1C56EC248(v31, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
      sub_1C56EC248(v12, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
      sub_1C5625230(v16, &qword_1EC16ED18, &qword_1C586B1A0);
      if ((v32 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_1C56EC248(v12, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult);
LABEL_15:
    sub_1C5625230(v16, &qword_1EC16FBD8, &qword_1C5875DE8);
    goto LABEL_16;
  }

  if (v28(&v16[v25], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_1C5625230(v16, &qword_1EC16ED18, &qword_1C586B1A0);
LABEL_19:
  v33 = v17[7];
  v34 = (v39 + v33);
  v35 = *(v39 + v33 + 8);
  v36 = (v27 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (v37 && (*v34 == *v36 && v35 == v37 || (sub_1C584FDC0() & 1) != 0))
    {
      goto LABEL_26;
    }
  }

  else if (!v37)
  {
LABEL_26:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v29 = sub_1C584F620();
    return v29 & 1;
  }

LABEL_16:
  v29 = 0;
  return v29 & 1;
}

uint64_t *sub_1C56F3A70(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    type metadata accessor for WebBridgeReply.MUPerfMarkerResult(0);
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return (sub_1C584F620() & 1);
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C56F3B60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebBridgeReply.MUPerfMarkerResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v26[0] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED20, &qword_1C586B1A8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (v26 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBD0, &qword_1C5875DE0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v26 - v15;
  v17 = *(type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult(0) + 20);
  v18 = *(v13 + 56);
  v26[1] = a1;
  sub_1C56466CC(a1 + v17, v16, &qword_1EC16ED20, &qword_1C586B1A8);
  sub_1C56466CC(a2 + v17, &v16[v18], &qword_1EC16ED20, &qword_1C586B1A8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C56466CC(v16, v11, &qword_1EC16ED20, &qword_1C586B1A8);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = v26[0];
      sub_1C56EC178(&v16[v18], v26[0], type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
      if (sub_1C56EB534(*v11, *v24))
      {
        sub_1C584EFD0();
        sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v25 = sub_1C584F620();
        sub_1C56EC248(v24, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
        sub_1C56EC248(v11, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
        sub_1C5625230(v16, &qword_1EC16ED20, &qword_1C586B1A8);
        if (v25)
        {
          goto LABEL_4;
        }

LABEL_9:
        v20 = 0;
        return v20 & 1;
      }

      sub_1C56EC248(v24, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
      sub_1C56EC248(v11, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
      v21 = &qword_1EC16ED20;
      v22 = &qword_1C586B1A8;
LABEL_8:
      sub_1C5625230(v16, v21, v22);
      goto LABEL_9;
    }

    sub_1C56EC248(v11, type metadata accessor for WebBridgeReply.MUPerfMarkerResult);
LABEL_7:
    v21 = &qword_1EC16FBD0;
    v22 = &qword_1C5875DE0;
    goto LABEL_8;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1C5625230(v16, &qword_1EC16ED20, &qword_1C586B1A8);
LABEL_4:
  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = sub_1C584F620();
  return v20 & 1;
}

uint64_t sub_1C56F3F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUSendToDevice(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1C584FDC0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1C584FDC0();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_1C584FDC0();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33)
    {
      v34 = *v30 == *v32 && v31 == v33;
      if (v34 || (sub_1C584FDC0() & 1) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (!v33)
  {
LABEL_35:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  return 0;
}

uint64_t sub_1C56F4124(uint64_t *a1, uint64_t *a2)
{
  result = type metadata accessor for MUVGVehicle(0);
  v5 = *(result + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = result;
      v12 = sub_1C584FDC0();
      result = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *a1;
  v14 = *a2;
  v15 = *(*a1 + 16);
  if (v15 != *(*a2 + 16))
  {
    return 0;
  }

  if (v15)
  {
    v16 = v13 == v14;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_19:
    sub_1C584EFD0();
    sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C584F620() & 1;
  }

  else
  {
    v17 = (v13 + 32);
    v18 = (v14 + 32);
    while (v15)
    {
      if (*v17 != *v18)
      {
        return 0;
      }

      ++v17;
      ++v18;
      if (!--v15)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C56F4268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v5 + 24);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

unint64_t sub_1C56F4368()
{
  result = qword_1EC16EEC0;
  if (!qword_1EC16EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16EEC0);
  }

  return result;
}

unint64_t sub_1C56F43C0()
{
  result = qword_1EC16D128;
  if (!qword_1EC16D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D128);
  }

  return result;
}

unint64_t sub_1C56F4418()
{
  result = qword_1EC16D130;
  if (!qword_1EC16D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D130);
  }

  return result;
}

unint64_t sub_1C56F4470()
{
  result = qword_1EC16D120;
  if (!qword_1EC16D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D120);
  }

  return result;
}

unint64_t sub_1C56F44F8()
{
  result = qword_1EC16F028;
  if (!qword_1EC16F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F028);
  }

  return result;
}

unint64_t sub_1C56F4550()
{
  result = qword_1EC16F030;
  if (!qword_1EC16F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F030);
  }

  return result;
}

unint64_t sub_1C56F45A8()
{
  result = qword_1EC16F038;
  if (!qword_1EC16F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F038);
  }

  return result;
}

unint64_t sub_1C56F4630()
{
  result = qword_1EC16D758;
  if (!qword_1EC16D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D758);
  }

  return result;
}

unint64_t sub_1C56F4688()
{
  result = qword_1EC16D760;
  if (!qword_1EC16D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D760);
  }

  return result;
}

unint64_t sub_1C56F46E0()
{
  result = qword_1EC16D750;
  if (!qword_1EC16D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D750);
  }

  return result;
}

unint64_t sub_1C56F4768()
{
  result = qword_1EC16F060;
  if (!qword_1EC16F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F060);
  }

  return result;
}

unint64_t sub_1C56F47C0()
{
  result = qword_1EC16F068;
  if (!qword_1EC16F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F068);
  }

  return result;
}

unint64_t sub_1C56F4818()
{
  result = qword_1EC16F070;
  if (!qword_1EC16F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F070);
  }

  return result;
}

unint64_t sub_1C56F48A0()
{
  result = qword_1EC16F088;
  if (!qword_1EC16F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F088);
  }

  return result;
}

unint64_t sub_1C56F48F8()
{
  result = qword_1EC16F090;
  if (!qword_1EC16F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F090);
  }

  return result;
}

unint64_t sub_1C56F4950()
{
  result = qword_1EC16D638;
  if (!qword_1EC16D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D638);
  }

  return result;
}

unint64_t sub_1C56F49D8()
{
  result = qword_1EC16D678;
  if (!qword_1EC16D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D678);
  }

  return result;
}

unint64_t sub_1C56F4A30()
{
  result = qword_1EC16D680;
  if (!qword_1EC16D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D680);
  }

  return result;
}

unint64_t sub_1C56F4A88()
{
  result = qword_1EC16D670;
  if (!qword_1EC16D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D670);
  }

  return result;
}

unint64_t sub_1C56F4B10()
{
  result = qword_1EC16D6A0;
  if (!qword_1EC16D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D6A0);
  }

  return result;
}

unint64_t sub_1C56F4B68()
{
  result = qword_1EC16D6A8;
  if (!qword_1EC16D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D6A8);
  }

  return result;
}

unint64_t sub_1C56F4BC0()
{
  result = qword_1EC16D690;
  if (!qword_1EC16D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D690);
  }

  return result;
}

unint64_t sub_1C56F4C48()
{
  result = qword_1EC16F0C8;
  if (!qword_1EC16F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F0C8);
  }

  return result;
}

unint64_t sub_1C56F4CA0()
{
  result = qword_1EC16F0D0;
  if (!qword_1EC16F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F0D0);
  }

  return result;
}

unint64_t sub_1C56F4CF8()
{
  result = qword_1EC16F0D8;
  if (!qword_1EC16F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F0D8);
  }

  return result;
}

unint64_t sub_1C56F4D80()
{
  result = qword_1EC16D780;
  if (!qword_1EC16D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D780);
  }

  return result;
}

unint64_t sub_1C56F4DD8()
{
  result = qword_1EC16D788;
  if (!qword_1EC16D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D788);
  }

  return result;
}

unint64_t sub_1C56F4E30()
{
  result = qword_1EC16D778;
  if (!qword_1EC16D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D778);
  }

  return result;
}

unint64_t sub_1C56F4EB8()
{
  result = qword_1EC16F100;
  if (!qword_1EC16F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F100);
  }

  return result;
}

unint64_t sub_1C56F4F10()
{
  result = qword_1EC16F108;
  if (!qword_1EC16F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F108);
  }

  return result;
}

unint64_t sub_1C56F4F68()
{
  result = qword_1EC16F110;
  if (!qword_1EC16F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F110);
  }

  return result;
}

unint64_t sub_1C56F4FF0()
{
  result = qword_1EC16F128;
  if (!qword_1EC16F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F128);
  }

  return result;
}

unint64_t sub_1C56F5048()
{
  result = qword_1EC16F130;
  if (!qword_1EC16F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F130);
  }

  return result;
}

unint64_t sub_1C56F50A0()
{
  result = qword_1EC16F138;
  if (!qword_1EC16F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F138);
  }

  return result;
}

unint64_t sub_1C56F5128()
{
  result = qword_1EC16D4A8;
  if (!qword_1EC16D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D4A8);
  }

  return result;
}

unint64_t sub_1C56F5180()
{
  result = qword_1EC16D4B0;
  if (!qword_1EC16D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D4B0);
  }

  return result;
}

unint64_t sub_1C56F51D8()
{
  result = qword_1EC16D4A0;
  if (!qword_1EC16D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D4A0);
  }

  return result;
}

unint64_t sub_1C56F5260()
{
  result = qword_1EC16D4D0;
  if (!qword_1EC16D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D4D0);
  }

  return result;
}

unint64_t sub_1C56F52B8()
{
  result = qword_1EC16D4D8;
  if (!qword_1EC16D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D4D8);
  }

  return result;
}

unint64_t sub_1C56F5310()
{
  result = qword_1EC16D4C8;
  if (!qword_1EC16D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D4C8);
  }

  return result;
}

unint64_t sub_1C56F5398()
{
  result = qword_1EC16F170;
  if (!qword_1EC16F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F170);
  }

  return result;
}

unint64_t sub_1C56F53F0()
{
  result = qword_1EC16F178;
  if (!qword_1EC16F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F178);
  }

  return result;
}

unint64_t sub_1C56F5448()
{
  result = qword_1EC16F180;
  if (!qword_1EC16F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F180);
  }

  return result;
}

unint64_t sub_1C56F54D0()
{
  result = qword_1EC16D800;
  if (!qword_1EC16D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D800);
  }

  return result;
}

unint64_t sub_1C56F5528()
{
  result = qword_1EC16D808;
  if (!qword_1EC16D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D808);
  }

  return result;
}

unint64_t sub_1C56F5580()
{
  result = qword_1EC16D7F8;
  if (!qword_1EC16D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D7F8);
  }

  return result;
}

unint64_t sub_1C56F5608()
{
  result = qword_1EC16F1A8;
  if (!qword_1EC16F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F1A8);
  }

  return result;
}

unint64_t sub_1C56F5660()
{
  result = qword_1EC16F1B0;
  if (!qword_1EC16F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F1B0);
  }

  return result;
}

unint64_t sub_1C56F56B8()
{
  result = qword_1EC16F1B8;
  if (!qword_1EC16F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F1B8);
  }

  return result;
}

unint64_t sub_1C56F5740()
{
  result = qword_1EC16D6F8;
  if (!qword_1EC16D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D6F8);
  }

  return result;
}

unint64_t sub_1C56F5798()
{
  result = qword_1EC16D700;
  if (!qword_1EC16D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D700);
  }

  return result;
}

unint64_t sub_1C56F57F0()
{
  result = qword_1EC16D6F0;
  if (!qword_1EC16D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D6F0);
  }

  return result;
}

unint64_t sub_1C56F5878()
{
  result = qword_1EC16F1E0;
  if (!qword_1EC16F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F1E0);
  }

  return result;
}

unint64_t sub_1C56F58D0()
{
  result = qword_1EC16F1E8;
  if (!qword_1EC16F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F1E8);
  }

  return result;
}

unint64_t sub_1C56F5928()
{
  result = qword_1EC16F1F0;
  if (!qword_1EC16F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F1F0);
  }

  return result;
}

unint64_t sub_1C56F59B0()
{
  result = qword_1EC16F208;
  if (!qword_1EC16F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F208);
  }

  return result;
}

unint64_t sub_1C56F5A08()
{
  result = qword_1EC16F210;
  if (!qword_1EC16F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F210);
  }

  return result;
}

unint64_t sub_1C56F5A60()
{
  result = qword_1EC16F218;
  if (!qword_1EC16F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F218);
  }

  return result;
}

unint64_t sub_1C56F5AE8()
{
  result = qword_1EC16F230;
  if (!qword_1EC16F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F230);
  }

  return result;
}

unint64_t sub_1C56F5B40()
{
  result = qword_1EC16F238;
  if (!qword_1EC16F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F238);
  }

  return result;
}

unint64_t sub_1C56F5B98()
{
  result = qword_1EC16F240;
  if (!qword_1EC16F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F240);
  }

  return result;
}

unint64_t sub_1C56F5C20()
{
  result = qword_1EC16F258;
  if (!qword_1EC16F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F258);
  }

  return result;
}

unint64_t sub_1C56F5C78()
{
  result = qword_1EC16F260;
  if (!qword_1EC16F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F260);
  }

  return result;
}

unint64_t sub_1C56F5CD0()
{
  result = qword_1EC16F268;
  if (!qword_1EC16F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F268);
  }

  return result;
}

unint64_t sub_1C56F5D58()
{
  result = qword_1EC16F280;
  if (!qword_1EC16F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F280);
  }

  return result;
}

unint64_t sub_1C56F5DB0()
{
  result = qword_1EC16F288;
  if (!qword_1EC16F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F288);
  }

  return result;
}

unint64_t sub_1C56F5E08()
{
  result = qword_1EC16F290;
  if (!qword_1EC16F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16F290);
  }

  return result;
}

unint64_t sub_1C56F5E90()
{
  result = qword_1EC16D160;
  if (!qword_1EC16D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D160);
  }

  return result;
}

unint64_t sub_1C56F5EE8()
{
  result = qword_1EC16D168;
  if (!qword_1EC16D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D168);
  }

  return result;
}

unint64_t sub_1C56F5F40()
{
  result = qword_1EC16D158;
  if (!qword_1EC16D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D158);
  }

  return result;
}

unint64_t sub_1C56F5FC8()
{
  result = qword_1EC16D3B8;
  if (!qword_1EC16D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D3B8);
  }

  return result;
}

unint64_t sub_1C56F6020()
{
  result = qword_1EC16D3C0;
  if (!qword_1EC16D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D3C0);
  }

  return result;
}

unint64_t sub_1C56F6078()
{
  result = qword_1EC16D3B0;
  if (!qword_1EC16D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D3B0);
  }

  return result;
}

unint64_t sub_1C56F6100()
{
  result = qword_1EC16D338;
  if (!qword_1EC16D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D338);
  }

  return result;
}

unint64_t sub_1C56F6158()
{
  result = qword_1EC16D340;
  if (!qword_1EC16D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D340);
  }

  return result;
}

unint64_t sub_1C56F61B0()
{
  result = qword_1EC16D330;
  if (!qword_1EC16D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D330);
  }

  return result;
}

unint64_t sub_1C56F6238()
{
  result = qword_1EC16D1B8;
  if (!qword_1EC16D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D1B8);
  }

  return result;
}

unint64_t sub_1C56F6290()
{
  result = qword_1EC16D1C0;
  if (!qword_1EC16D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D1C0);
  }

  return result;
}

unint64_t sub_1C56F62E8()
{
  result = qword_1EC16D1B0;
  if (!qword_1EC16D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D1B0);
  }

  return result;
}

unint64_t sub_1C56F6370()
{
  result = qword_1EC16D2D8;
  if (!qword_1EC16D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D2D8);
  }

  return result;
}

unint64_t sub_1C56F63C8()
{
  result = qword_1EC16D2E0;
  if (!qword_1EC16D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D2E0);
  }

  return result;
}

unint64_t sub_1C56F6420()
{
  result = qword_1EC16D2D0;
  if (!qword_1EC16D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D2D0);
  }

  return result;
}

unint64_t sub_1C56F64A8()
{
  result = qword_1EC16D298;
  if (!qword_1EC16D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D298);
  }

  return result;
}

unint64_t sub_1C56F6500()
{
  result = qword_1EC16D2A0;
  if (!qword_1EC16D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D2A0);
  }

  return result;
}

unint64_t sub_1C56F6558()
{
  result = qword_1EC16D290;
  if (!qword_1EC16D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D290);
  }

  return result;
}

uint64_t sub_1C56F65DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for MUVGChargingConnectorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MUVGChargingConnectorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C56FC998(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16D0B0, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D748, &type metadata for WebPlacecardBridge.MUBridgeMethodName, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for WebPlacecardBridge.MUBridgeMethodName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WebPlacecardBridge.MUBridgeMethodName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WebPlacecardBridge.MUUserInteractionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCB)
  {
    goto LABEL_17;
  }

  if (a2 + 53 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 53) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 53;
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

      return (*a1 | (v4 << 8)) - 53;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 53;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x36;
  v8 = v6 - 54;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WebPlacecardBridge.MUUserInteractionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 53 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 53) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCB)
  {
    v4 = 0;
  }

  if (a2 > 0xCA)
  {
    v5 = ((a2 - 203) >> 8) + 1;
    *result = a2 + 53;
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
    *result = a2 + 53;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C56FCEDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1C5701840(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C56FCFA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1C584EFD0();
  if (v7 <= 0x3F)
  {
    sub_1C5701840(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C56FD0A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  sub_1C5701840(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v9 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v10 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v11 <= 0x3F)
      {
        sub_1C5701840(319, a6, a7, MEMORY[0x1E69E6720]);
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C56FD228(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16F848, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C56FD360(319, &qword_1EC16D588, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C56FD360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C56FD3EC(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D588, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FD504(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16F848, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C5701840(319, &qword_1EC16D7F0, &type metadata for WebPlacecardBridge.MUActionBarItem.MUActionBarItemInteractionType, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C56FD360(319, &qword_1EC16D5E8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C56FD6B4(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16D0C0, type metadata accessor for WebPlacecardBridge.MUActionBarItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D7D8, type metadata accessor for WebPlacecardBridge.MUActionBarItem, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FD7D8(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16F848, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D0A8, &type metadata for WebPlacecardBridge.MUWebMenuItemAttribute, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C584EFD0();
      if (v3 <= 0x3F)
      {
        sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C56FD360(319, &qword_1EC16D5E8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C5701840(319, &qword_1EC16D058, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C56FD360(319, &qword_1EC16D840, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C5701840(319, &qword_1EC16D770, &type metadata for WebPlacecardBridge.MUWebMenuItemSize, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C56FDA64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  sub_1C584EFD0();
  if (v11 <= 0x3F)
  {
    sub_1C5701840(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v12 <= 0x3F)
    {
      sub_1C5701840(319, a6, a7, MEMORY[0x1E69E6720]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FDBCC(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D058, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C56FDD44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  sub_1C584EFD0();
  if (v11 <= 0x3F)
  {
    sub_1C5701840(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v12 <= 0x3F)
    {
      sub_1C5701840(319, a6, a7, MEMORY[0x1E69E6720]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FDF34(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C56FD360(319, &qword_1EC16D798, type metadata accessor for WebPlacecardBridge.MUStyleAttributes, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D058, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C5701840(319, &qword_1EC16CF50, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C56FE120(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1C584EFD0();
  if (v7 <= 0x3F)
  {
    sub_1C5701840(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C56FE32C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1C5701840(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v6 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FE4A4(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D5C8, &type metadata for WebPlacecardBridge.MUTransitDepartureRowType, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C56FD360(319, &qword_1EC16D870, type metadata accessor for MULocation, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C56FE62C(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D498, &type metadata for WebPlacecardBridge.MUUserInteractionPublisherGuideAction.PublisherGuideActionType, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FE904(uint64_t a1)
{
  sub_1C5701840(319, &qword_1EC16D078, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FEB00(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C56FEBD8(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16F860, &type metadata for MUUserPreferences.MUMeasurementSystem, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C5701840(319, &qword_1EC16F868, &type metadata for MUUserPreferences.MUTemperatureUnit, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C5701840(319, &qword_1EC16CF58, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C5701840(319, &qword_1EC16D058, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C5701840(319, &qword_1EC16F870, &type metadata for MUUserPreferences.MUMapStyle, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C56FEE30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1C584EFD0();
  if (v7 <= 0x3F)
  {
    sub_1C5701840(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s6MapsUI18WebPlacecardBridgeV22MUAnalyticsSessionTypeOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6MapsUI18WebPlacecardBridgeV22MUAnalyticsSessionTypeOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s6MapsUI17MUUserPreferencesV10MUMapStyleOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s6MapsUI17MUUserPreferencesV10MUMapStyleOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WebPlacecardBridgeReply.MUWebMethodName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WebPlacecardBridgeReply.MUWebMethodName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MUWebBasedPlacecardSectionController.SectionControllerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MUWebBasedPlacecardSectionController.SectionControllerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C56FF50C(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D058, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_704Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C584EFD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_705Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C584EFD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C56FF758(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C56FD360(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C56FF8D8(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16CF50, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FFA38(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D058, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FFB88(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D050, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FFCA0(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D058, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FFDE0(uint64_t a1)
{
  sub_1C5701840(319, &qword_1EC16D078, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C56FFEF0(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D328, &type metadata for WebPlacecardBridgeReply.MUWebMethodName, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D210, type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_242Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_243Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C5700194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C584EFD0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_371Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C584EFD0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_372Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C584EFD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1C570034C(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D058, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D050, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_338Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_1C584EFD0();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_339Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = sub_1C584EFD0();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_1C5700724(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16D0A0, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D370, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C5701840(319, &qword_1EC16D058, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_260Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_261Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1C5700AD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C56FD360(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C5700BA0(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D058, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D050, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C5701840(319, &qword_1EC16D1A8, &type metadata for WebPlacecardBridgeReply.MUPlacecardOfflineMapDownloadState, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C5700D54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  sub_1C5701840(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1C584EFD0();
    if (v7 <= 0x3F)
    {
      sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for WebPlacecardBridgeReply.MUFeatureFlag.OneOf_Value(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6MapsUI17MUUserPreferencesV17MUTemperatureUnitOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s6MapsUI17MUUserPreferencesV17MUTemperatureUnitOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_get_extra_inhabitant_index_380Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_381Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

void sub_1C57012AC(uint64_t a1)
{
  sub_1C584EFD0();
  if (v1 <= 0x3F)
  {
    sub_1C5701840(319, &qword_1EC16D0D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D868, type metadata accessor for WebBridgeReply.MUWebBridgeReplyResult, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_605Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1C584EFD0();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_606Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1C584EFD0();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1C5701604(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C584EFD0();
  if (v7 <= 0x3F)
  {
    sub_1C56FD360(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C584EFD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C584EFD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C5701840(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C5701898(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16D818, type metadata accessor for WebPlacecardBridge.MUIconArgument, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C56FD360(319, &qword_1EC16D6D0, type metadata accessor for WebPlacecardBridge.MUAttributionArgument, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D710, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C56FD360(319, &qword_1EC16D5E8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C56FD360(319, &qword_1EC16D7C0, type metadata accessor for WebPlacecardBridge.MUWebMenuButton, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C56FD360(319, &qword_1EC16D6B8, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C56FD360(319, &qword_1EC16D5D0, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C56FD360(319, &qword_1EC16D608, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1C56FD360(319, &qword_1EC16D628, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1C56FD360(319, &qword_1EC16D600, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1C56FD360(319, &qword_1EC16D718, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1C56FD360(319, &qword_1EC16D730, type metadata accessor for WebPlacecardBridge.MUActionBarArgument, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1C56FD360(319, &qword_1EC16D610, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1C56FD360(319, &qword_1EC16D640, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument, MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1C56FD360(319, &qword_1EC16F880, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                swift_updateClassMetadata2();
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
      }
    }
  }
}

void sub_1C5701F50(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16D538, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C56FD360(319, &qword_1EC16D540, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D5A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C56FD360(319, &qword_1EC16D5C0, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C56FD360(319, &qword_1EC16D4F0, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C56FD360(319, &qword_1EC16D550, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C56FD360(319, &qword_1EC16D508, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C56FD360(319, &qword_1EC16D560, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1C56FD360(319, &qword_1EC16D548, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1C56FD360(319, &qword_1EC16D5A8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1C56FD360(319, &qword_1EC16D488, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1C56FD360(319, &qword_1EC16D518, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1C56FD360(319, &qword_1EC16D480, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1C56FD360(319, &qword_1EC16D470, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture, MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1C56FD360(319, &qword_1EC16D568, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                sub_1C56FD360(319, &qword_1EC16D530, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension, MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1C56FD360(319, &qword_1EC16D450, type metadata accessor for MUContactLabeledValue, MEMORY[0x1E69E6720]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1C56FD360(319, &qword_1EC16D510, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList, MEMORY[0x1E69E6720]);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1C56FD360(319, &qword_1EC16D570, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides, MEMORY[0x1E69E6720]);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1C56FD360(319, &qword_1EC16D468, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident, MEMORY[0x1E69E6720]);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1C56FD360(319, &qword_1EC16D490, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction, MEMORY[0x1E69E6720]);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1C56FD360(319, &qword_1EC16D4E8, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer, MEMORY[0x1E69E6720]);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1C56FD360(319, &qword_1EC16F888, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos, MEMORY[0x1E69E6720]);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1C56FD360(319, &qword_1EC16F890, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy, MEMORY[0x1E69E6720]);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_1C56FD360(319, &qword_1EC16F898, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice, MEMORY[0x1E69E6720]);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    swift_updateClassMetadata2();
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
  }
}

void sub_1C5702A54(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16D178, type metadata accessor for WebPlacecardBridgeReply.MUContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C56FD360(319, &qword_1EC16D3D0, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D2F0, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C56FD360(319, &qword_1EC16D258, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C56FD360(319, &qword_1EC16D420, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C5702CE0(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16D870, type metadata accessor for MULocation, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C56FD360(319, &qword_1EC16D408, type metadata accessor for WebPlacecardBridgeReply.MUUserData, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D398, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C56FD360(319, &qword_1EC16D228, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C56FD360(319, &qword_1EC16D368, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C56FD360(319, &qword_1EC16D3D8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C56FD360(319, &qword_1EC16D1D0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C56FD360(319, &qword_1EC16F878, type metadata accessor for MUUserPreferences, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C5703114(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16D1E8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C56FD360(319, &qword_1EC16D190, type metadata accessor for WebPlacecardBridgeReply.MUContact, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D870, type metadata accessor for MULocation, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C57032D8(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16D350, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C56FD360(319, &qword_1EC16D310, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D3F0, type metadata accessor for WebPlacecardBridgeReply.MUUserNote, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C57034A4(uint64_t a1)
{
  sub_1C56FD360(319, &qword_1EC16D240, type metadata accessor for WebPlacecardBridgeReply.MUCardExpansionArgs, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C56FD360(319, &qword_1EC16D398, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C56FD360(319, &qword_1EC16D408, type metadata accessor for WebPlacecardBridgeReply.MUUserData, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C56FD360(319, &qword_1EC16D228, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C56FD360(319, &qword_1EC16D2B0, type metadata accessor for WebPlacecardBridgeReply.MUMenuItemTapArgs, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C56FD360(319, &qword_1EC16D308, type metadata accessor for WebPlacecardBridgeReply.MUVGVehiclesArgs, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C56FD360(319, &qword_1EC16D1D0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1C56FD360(319, &qword_1EC16D270, type metadata accessor for WebPlacecardBridgeReply.MUNativeUITapArgs, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1C56FD360(319, &qword_1EC16F8A0, type metadata accessor for WebPlacecardBridgeReply.MUWebViewVisibilityArgs, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1C56FD360(319, &qword_1EC16F8A8, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1C56FD360(319, &qword_1EC16D378, type metadata accessor for WebPlacecardBridgeReply.MUPerfMarkers, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
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

unint64_t sub_1C5703998()
{
  result = qword_1EC16D2A8;
  if (!qword_1EC16D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D2A8);
  }

  return result;
}

unint64_t sub_1C57039EC()
{
  result = qword_1EC16D2E8;
  if (!qword_1EC16D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D2E8);
  }

  return result;
}

unint64_t sub_1C5703A40()
{
  result = qword_1EC16D1C8;
  if (!qword_1EC16D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D1C8);
  }

  return result;
}

unint64_t sub_1C5703A94()
{
  result = qword_1EC16D348;
  if (!qword_1EC16D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D348);
  }

  return result;
}

unint64_t sub_1C5703AE8()
{
  result = qword_1EC16D3C8;
  if (!qword_1EC16D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D3C8);
  }

  return result;
}

unint64_t sub_1C5703B3C()
{
  result = qword_1EC16D170;
  if (!qword_1EC16D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D170);
  }

  return result;
}

unint64_t sub_1C5703B90()
{
  result = qword_1EC16FB68;
  if (!qword_1EC16FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FB68);
  }

  return result;
}

unint64_t sub_1C5703BE4()
{
  result = qword_1EC16FB70;
  if (!qword_1EC16FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FB70);
  }

  return result;
}

unint64_t sub_1C5703C38()
{
  result = qword_1EC16FB78;
  if (!qword_1EC16FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FB78);
  }

  return result;
}

unint64_t sub_1C5703C8C()
{
  result = qword_1EC16FB80;
  if (!qword_1EC16FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FB80);
  }

  return result;
}

unint64_t sub_1C5703CE0()
{
  result = qword_1EC16FB88;
  if (!qword_1EC16FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FB88);
  }

  return result;
}

unint64_t sub_1C5703D34()
{
  result = qword_1EC16D708;
  if (!qword_1EC16D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D708);
  }

  return result;
}

unint64_t sub_1C5703D88()
{
  result = qword_1EC16FB90;
  if (!qword_1EC16FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FB90);
  }

  return result;
}

unint64_t sub_1C5703DDC()
{
  result = qword_1EC16D810;
  if (!qword_1EC16D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D810);
  }

  return result;
}

unint64_t sub_1C5703E30()
{
  result = qword_1EC16FB98;
  if (!qword_1EC16FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FB98);
  }

  return result;
}

unint64_t sub_1C5703E84()
{
  result = qword_1EC16D4E0;
  if (!qword_1EC16D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D4E0);
  }

  return result;
}

unint64_t sub_1C5703ED8()
{
  result = qword_1EC16D4B8;
  if (!qword_1EC16D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D4B8);
  }

  return result;
}

unint64_t sub_1C5703F2C()
{
  result = qword_1EC16FBA0;
  if (!qword_1EC16FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FBA0);
  }

  return result;
}

unint64_t sub_1C5703F80()
{
  result = qword_1EC16FBA8;
  if (!qword_1EC16FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FBA8);
  }

  return result;
}

unint64_t sub_1C5703FD4()
{
  result = qword_1EC16D790;
  if (!qword_1EC16D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D790);
  }

  return result;
}

unint64_t sub_1C5704028()
{
  result = qword_1EC16D6B0;
  if (!qword_1EC16D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D6B0);
  }

  return result;
}

unint64_t sub_1C570407C()
{
  result = qword_1EC16D688;
  if (!qword_1EC16D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D688);
  }

  return result;
}

unint64_t sub_1C57040D0()
{
  result = qword_1EC16FBB0;
  if (!qword_1EC16FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FBB0);
  }

  return result;
}

unint64_t sub_1C5704124()
{
  result = qword_1EC16FBB8;
  if (!qword_1EC16FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FBB8);
  }

  return result;
}

unint64_t sub_1C5704178()
{
  result = qword_1EC16D768;
  if (!qword_1EC16D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D768);
  }

  return result;
}

unint64_t sub_1C57041CC()
{
  result = qword_1EC16D138;
  if (!qword_1EC16D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D138);
  }

  return result;
}

uint64_t sub_1C5704334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceActionBarLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL PlaceActionBarConfiguration.hasContent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = v0 + OBJC_IVAR___MUPlaceActionBarConfiguration_layout;
  sub_1C57045AC(v0 + OBJC_IVAR___MUPlaceActionBarConfiguration_layout, &v10 - v3);
  v6 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v7 = 1;
  v8 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1C570461C(v4);
  if (v8 == 1)
  {
    return *(*(v5 + *(type metadata accessor for PlaceActionBarLayout(0) + 20)) + 16) != 0;
  }

  return v7;
}

uint64_t sub_1C57045AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C570461C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C5704684(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = &v8[OBJC_IVAR___MUPlaceActionBarConfiguration_nativeItemDelegate];
  *&v8[OBJC_IVAR___MUPlaceActionBarConfiguration_nativeItemDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1C5704334(a1, &v8[OBJC_IVAR___MUPlaceActionBarConfiguration_layout]);
  *&v8[OBJC_IVAR___MUPlaceActionBarConfiguration_actionDispatcher] = a2;
  swift_beginAccess();
  *(v9 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v13.receiver = v8;
  v13.super_class = v4;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  swift_unknownObjectRelease();
  sub_1C570477C(a1);
  return v11;
}

uint64_t sub_1C570477C(uint64_t a1)
{
  v2 = type metadata accessor for PlaceActionBarLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id PlaceActionBarConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceActionBarView.configuration.getter()
{
  v1 = OBJC_IVAR___MUPlaceActionBarView_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PlaceActionBarView.configuration.setter(void *a1)
{
  v3 = OBJC_IVAR___MUPlaceActionBarView_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1C5704B18();
}

id sub_1C5704A4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MUPlaceActionBarView_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1C5704AB4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MUPlaceActionBarView_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return sub_1C5704B18();
}

uint64_t sub_1C5704B18()
{
  v1 = v0;
  v2 = sub_1C584EE80();
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  type metadata accessor for PlaceActionBarController(0);
  v6 = OBJC_IVAR___MUPlaceActionBarView_configuration;
  swift_beginAccess();
  v7 = sub_1C574B9C4(*(v0 + v6));
  v8 = OBJC_IVAR___MUPlaceActionBarView_controller;
  v9 = *(v0 + OBJC_IVAR___MUPlaceActionBarView_controller);
  *(v0 + OBJC_IVAR___MUPlaceActionBarView_controller) = v7;
  v10 = v7;

  sub_1C574B01C();
  v11 = *(v1 + v8);
  sub_1C574AF94();

  v12 = *(v1 + v8);
  sub_1C574B084();

  v13 = *(v1 + v8);
  sub_1C574B438();

  sub_1C584EE60();
  sub_1C584EE70();
  return sub_1C584EEE0();
}

uint64_t (*PlaceActionBarView.configuration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C5704D20;
}

uint64_t sub_1C5704D20(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C5704B18();
  }

  return result;
}

char *PlaceActionBarView.init(configuration:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1C584EE80();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  *&v1[OBJC_IVAR___MUPlaceActionBarView_configuration] = a1;
  v6 = &v1[OBJC_IVAR___MUPlaceActionBarView_spec];
  *v6 = xmmword_1C5876280;
  *(v6 + 2) = 0x4024000000000000;
  type metadata accessor for PlaceActionBarController(0);
  v7 = a1;
  v8 = sub_1C574B9C4(v7);
  *&v1[OBJC_IVAR___MUPlaceActionBarView_controller] = v8;
  v9 = v8;
  sub_1C574B01C();
  sub_1C574AF94();
  sub_1C574B084();
  sub_1C574B438();
  sub_1C584EE60();
  v10 = objc_allocWithZone(sub_1C584EF10());
  *&v1[OBJC_IVAR___MUPlaceActionBarView_contentView] = sub_1C584EEF0();
  v25.receiver = v1;
  v25.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = *&v11[OBJC_IVAR___MUPlaceActionBarView_contentView];
  v13 = v11;
  [v13 addSubview_];
  type metadata accessor for EdgeLayout();
  v14 = v12;
  v15 = v13;
  v16 = EdgeLayout.__allocating_init(item:container:)(v14, v15);
  v17 = [v15 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  v19.n128_u64[0] = 28.0;
  if ((v18 - 1) <= 5)
  {
    v19.n128_u64[0] = qword_1C5876340[(v18 - 1)];
  }

  (*((*MEMORY[0x1E69E7D40] & *v16) + 0xA8))(0.0, 0.0, v19, 0.0);
  ConstraintLayout.activate()();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C584EF00();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE90, &qword_1C5876290);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C5867900;
  v21 = sub_1C584EED0();
  v22 = sub_1C5705108();
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  MEMORY[0x1C694A140](v20, sel_updateVisibility);
  swift_unknownObjectRelease();

  v23 = [v15 traitCollection];
  LOBYTE(v20) = _sSo17UITraitCollectionC6MapsUIE27_mapsui_shouldShowActionBarSbvg_0();

  [v15 setHidden_];
  return v15;
}

unint64_t sub_1C5705108()
{
  result = qword_1EC16D888;
  if (!qword_1EC16D888)
  {
    sub_1C584EED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D888);
  }

  return result;
}

char *sub_1C57051E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C584EEC0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = [objc_allocWithZone(MUPresentationOptions) init];
    [v9 setSourceItem_];
    swift_unknownObjectRelease();
    v10 = *&v8[OBJC_IVAR___MUPlaceActionBarView_controller];
    sub_1C584EDC0();
    type metadata accessor for MUPlaceActionFeedbackEnvironment();
    v11 = v9;
    v12 = sub_1C56433CC(v9);
    sub_1C574BA04(v6, v12);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

id PlaceActionBarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t type metadata accessor for PlaceActionBarConfiguration(uint64_t a1)
{
  result = qword_1EC174CF8;
  if (!qword_1EC174CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C570556C(uint64_t a1)
{
  result = type metadata accessor for PlaceActionBarLayout(319);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaceActionBarView.ActionBarSpec(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlaceActionBarView.ActionBarSpec(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1C5705704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, float a8@<S1>)
{
  *(a6 + 48) = 0;
  *(a6 + 40) = 0;
  v15 = (a6 + 40);
  *(a6 + 56) = -1;
  sub_1C56251C8(a1, a6);
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  result = sub_1C5625230(v15, &unk_1EC16FE40, &qword_1C5876370);
  *(a6 + 48) = 0;
  *v15 = 0;
  *(a6 + 56) = -1;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0x3FF0000000000000;
  *(a6 + 80) = a7;
  *(a6 + 88) = a8;
  *(a6 + 96) = a4;
  *(a6 + 104) = a5;
  return result;
}

uint64_t sub_1C57057C0(uint64_t a1)
{
  sub_1C5625EE8(v1, &v9);
  if (v10)
  {
    MEMORY[0x1C694A560](1);
    sub_1C584F6C0();
  }

  else
  {
    sub_1C5626058(&v9, v8);
    MEMORY[0x1C694A560](0);
    sub_1C5662408();
    sub_1C584F5F0();
    sub_1C56260B4(v8);
  }

  MEMORY[0x1C694A560](*(v1 + 24));
  MEMORY[0x1C694A560](*(v1 + 32));
  sub_1C5626108(v1 + 40, &v9);
  if (v10 == 255)
  {
    sub_1C584FEC0();
  }

  else
  {
    sub_1C56251C8(&v9, v8);
    sub_1C584FEC0();
    sub_1C5625EE8(v8, &v6);
    if (v7)
    {
      MEMORY[0x1C694A560](1);
      sub_1C584F6C0();
    }

    else
    {
      sub_1C5626058(&v6, &v5);
      MEMORY[0x1C694A560](0);
      sub_1C5662408();
      sub_1C584F5F0();
      sub_1C56260B4(&v5);
    }

    sub_1C5626250(v8);
  }

  MEMORY[0x1C694A560](*(v1 + 64));
  v2 = *(v1 + 72);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1C694A590](*&v2);
  v3 = *(v1 + 80);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1C694A590](*&v3);
  sub_1C584FED0();
  if (!*(v1 + 104))
  {
    return sub_1C584FEC0();
  }

  sub_1C584FEC0();
  return sub_1C584F6C0();
}

uint64_t sub_1C57059E0()
{
  sub_1C584FEA0();
  sub_1C57057C0(v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5705A24(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C57057C0(v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C5705A60()
{
  sub_1C5625EE8(v0, &v3);
  if (v4)
  {
    return v3;
  }

  sub_1C5626058(&v3, v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1C584FCF0();
    sub_1C56260B4(v2);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C56260B4(v2);
  }

  return 0;
}

uint64_t sub_1C5705B24(uint64_t a1)
{
  sub_1C5625EE8(v1, &v4);
  if (v5)
  {
    MEMORY[0x1C694A560](1);
    sub_1C584F6C0();
  }

  else
  {
    sub_1C5626058(&v4, &v3);
    MEMORY[0x1C694A560](0);
    sub_1C5662408();
    sub_1C584F5F0();
    return sub_1C56260B4(&v3);
  }
}

uint64_t sub_1C5705BD0()
{
  sub_1C584FEA0();
  sub_1C5705B24(v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C5705C14(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C5705B24(v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C5705C50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5705A60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5705C78()
{
  sub_1C584FEA0();
  sub_1C584F6C0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5705CCC(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C584F6C0();
  return sub_1C584FEF0();
}

double sub_1C5705D14@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_1C5705D20(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C584FDC0();
  }
}

uint64_t sub_1C5705D50(void *a1, char a2, int a3)
{
  if (![a1 firstItem])
  {
    goto LABEL_56;
  }

  v73 = &unk_1F451A100;
  if (!swift_dynamicCastObjCProtocolConditional())
  {
    goto LABEL_55;
  }

  sub_1C5626108(v3 + 40, &v68);
  if (v70 != 255)
  {
    sub_1C56251C8(&v68, v71);
    if (![a1 secondItem])
    {
LABEL_54:
      sub_1C5626250(v71);
      goto LABEL_55;
    }

    v66 = &unk_1F451A100;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1C5626250(v71);
LABEL_56:
      v54 = 0;
      return v54 & 1;
    }

    sub_1C5625EE8(v3, &v68);
    if (v70 == 1)
    {
      v8 = v68;
      v7 = v69;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
LABEL_43:
        swift_unknownObjectRelease();

        goto LABEL_54;
      }

      v10 = v9;
      LODWORD(v62) = a3;
      swift_unknownObjectRetain();
      v11 = v7;
      v12 = v8;
      v13 = [v10 identifier];
      v14 = sub_1C584F660();
      v16 = v15;

      if (v14 == v12 && v16 == v11)
      {

        swift_unknownObjectRelease();

        LOBYTE(a3) = v62;
      }

      else
      {
        v41 = sub_1C584FDC0();

        swift_unknownObjectRelease();

        LOBYTE(a3) = v62;
        if ((v41 & 1) == 0)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      sub_1C5626058(&v68, v67);
      swift_unknownObjectRetain();
      sub_1C56236C4();
      v26 = sub_1C5623E2C(v67, v65);
      sub_1C56260B4(v65);
      sub_1C56260B4(v67);
      if ((v26 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    v42 = *(v3 + 24);
    if (v42 != [a1 firstAttribute])
    {
      goto LABEL_53;
    }

    v43 = *(v3 + 32);
    if (v43 != [a1 relation])
    {
      goto LABEL_53;
    }

    sub_1C5625EE8(v71, &v68);
    if (v70 != 1)
    {
      sub_1C5626058(&v68, v67);
      swift_unknownObjectRetain();
      sub_1C56236C4();
      v53 = sub_1C5623E2C(v67, v65);
      sub_1C56260B4(v65);
      sub_1C56260B4(v67);
      if (v53)
      {
        goto LABEL_49;
      }

      goto LABEL_53;
    }

    v45 = v68;
    v44 = v69;
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v47 = v46;
      swift_unknownObjectRetain();
      v48 = [v47 identifier];
      v64 = v44;
      v49 = v45;
      v50 = v48;
      v51 = sub_1C584F660();
      v63 = v52;

      if (v51 == v49 && v63 == v64)
      {

        swift_unknownObjectRelease();

        goto LABEL_49;
      }

      v55 = sub_1C584FDC0();

      swift_unknownObjectRelease();

      if (v55)
      {
LABEL_49:
        if (v42 == [a1 secondAttribute])
        {
          v56 = *(v3 + 72);
          [a1 multiplier];
          if (v56 != v57)
          {
            sub_1C5626250(v71);
            swift_unknownObjectRelease();
            goto LABEL_55;
          }

          v58 = *(v3 + 88);
          [a1 priority];
          v60 = v59;
          swift_unknownObjectRelease();
          sub_1C5626250(v71);
          if (v58 != v60)
          {
            goto LABEL_55;
          }

          goto LABEL_26;
        }
      }

LABEL_53:
      swift_unknownObjectRelease();
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  sub_1C5625230(&v68, &unk_1EC16FE40, &qword_1C5876370);
  sub_1C5625EE8(v3, v71);
  if (v72 == 1)
  {
    v18 = v71[0];
    v17 = v71[1];
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {

      goto LABEL_55;
    }

    v20 = v19;
    swift_unknownObjectRetain();
    v21 = [v20 identifier];
    v22 = sub_1C584F660();
    v24 = v23;

    if (v22 == v18 && v24 == v17)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v27 = sub_1C584FDC0();

      swift_unknownObjectRelease();

      if ((v27 & 1) == 0)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    sub_1C5626058(v71, &v68);
    swift_unknownObjectRetain();
    sub_1C56236C4();
    v25 = sub_1C5623E2C(&v68, v67);
    sub_1C56260B4(v67);
    sub_1C56260B4(&v68);
    if ((v25 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v28 = *(v3 + 24);
  if (v28 != [a1 firstAttribute])
  {
    goto LABEL_55;
  }

  v29 = *(v3 + 32);
  if (v29 != [a1 relation])
  {
    goto LABEL_55;
  }

  v30 = *(v3 + 88);
  [a1 priority];
  if (v30 != v31)
  {
    goto LABEL_55;
  }

LABEL_26:
  if (a2)
  {
    v32 = *(v3 + 80);
    [a1 constant];
    if (v32 != v33)
    {
      goto LABEL_55;
    }
  }

  if (a3)
  {
    v35 = *(v3 + 96);
    v34 = *(v3 + 104);
    v36 = [a1 identifier];
    if (v36)
    {
      v37 = v36;
      v38 = sub_1C584F660();
      v40 = v39;

      if (!v34)
      {
        swift_unknownObjectRelease();
        if (!v40)
        {
          v54 = 1;
          return v54 & 1;
        }

        goto LABEL_56;
      }

      if (!v40)
      {
        goto LABEL_55;
      }

      if (v35 != v38 || v34 != v40)
      {
        v54 = sub_1C584FDC0();

        swift_unknownObjectRelease();
        return v54 & 1;
      }

      goto LABEL_47;
    }

    if (!v34)
    {
      goto LABEL_47;
    }

LABEL_55:
    swift_unknownObjectRelease();
    goto LABEL_56;
  }

LABEL_47:
  swift_unknownObjectRelease();
  v54 = 1;
  return v54 & 1;
}

uint64_t sub_1C5706414(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 identifier];
  v6 = sub_1C584F660();
  v8 = v7;

  if (v6 == a2 && v8 == a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C584FDC0();
  }

  return v10 & 1;
}

unint64_t sub_1C57064B4()
{
  result = qword_1ED77E890;
  if (!qword_1ED77E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E890);
  }

  return result;
}

unint64_t sub_1C570650C()
{
  result = qword_1EC16FE58;
  if (!qword_1EC16FE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16FE60, &unk_1C5877750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FE58);
  }

  return result;
}

unint64_t sub_1C570658C()
{
  result = qword_1EC16FE68;
  if (!qword_1EC16FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16FE68);
  }

  return result;
}

uint64_t sub_1C57065EC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C570660C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5706654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5706758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MUPlaceActionDispatcher.ActionType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 36;
  switch(result)
  {
    case 0:
      goto LABEL_51;
    case 1:
      v2 = 1;
      goto LABEL_51;
    case 2:
      v2 = 2;
      goto LABEL_51;
    case 3:
      v2 = 3;
      goto LABEL_51;
    case 4:
      v2 = 4;
      goto LABEL_51;
    case 5:
      v2 = 5;
      goto LABEL_51;
    case 6:
      v2 = 6;
      goto LABEL_51;
    case 7:
      v2 = 7;
      goto LABEL_51;
    case 8:
      v2 = 8;
      goto LABEL_51;
    case 9:
      v2 = 9;
      goto LABEL_51;
    case 10:
      v2 = 10;
      goto LABEL_51;
    case 11:
      v2 = 11;
      goto LABEL_51;
    case 12:
      v2 = 12;
      goto LABEL_51;
    case 13:
      v2 = 13;
      goto LABEL_51;
    case 14:
      v2 = 14;
      goto LABEL_51;
    case 15:
      v2 = 15;
      goto LABEL_51;
    case 16:
      v2 = 16;
      goto LABEL_51;
    case 17:
      v2 = 17;
      goto LABEL_51;
    case 18:
      v2 = 18;
      goto LABEL_51;
    case 19:
      v2 = 19;
      goto LABEL_51;
    case 20:
      v2 = 20;
      goto LABEL_51;
    case 21:
      v2 = 21;
      goto LABEL_51;
    case 22:
      v2 = 22;
      goto LABEL_51;
    case 23:
      v2 = 23;
      goto LABEL_51;
    case 24:
      v2 = 24;
      goto LABEL_51;
    case 25:
      v2 = 25;
      goto LABEL_51;
    case 26:
      v2 = 26;
      goto LABEL_51;
    case 27:
      v2 = 27;
      goto LABEL_51;
    case 28:
      v2 = 28;
      goto LABEL_51;
    case 29:
      v2 = 29;
      goto LABEL_51;
    case 30:
      v2 = 30;
      goto LABEL_51;
    case 31:
      v2 = 31;
      goto LABEL_51;
    case 32:
      v2 = 32;
      goto LABEL_51;
    case 33:
      v2 = 33;
      goto LABEL_51;
    case 34:
      v2 = 34;
      goto LABEL_51;
    case 35:
      v2 = 35;
LABEL_51:
      v3 = v2;
      goto LABEL_52;
    case 36:
LABEL_52:
      *a2 = v3;
      break;
    case 37:
      *a2 = 37;
      break;
    case 38:
      *a2 = 38;
      break;
    case 39:
      *a2 = 39;
      break;
    case 40:
      *a2 = 40;
      break;
    case 41:
      *a2 = 41;
      break;
    case 42:
      *a2 = 42;
      break;
    case 43:
      *a2 = 43;
      break;
    case 44:
      *a2 = 44;
      break;
    case 45:
      *a2 = 45;
      break;
    case 46:
      *a2 = 46;
      break;
    case 47:
      *a2 = 47;
      break;
    case 48:
      *a2 = 48;
      break;
    case 49:
      *a2 = 49;
      break;
    case 50:
      *a2 = 50;
      break;
    case 51:
      *a2 = 51;
      break;
    case 52:
      *a2 = 52;
      break;
    case 53:
      *a2 = 53;
      break;
    default:
      *a2 = 54;
      break;
  }

  return result;
}

unint64_t MUPlaceActionDispatcher.ActionType.buttonItemType.getter()
{
  v1 = *v0;
  if (*v0 <= 5u)
  {
    if (*v0 <= 2u)
    {
      if (v1 == 1)
      {
        v2 = 0;
        return v1 | (v2 << 32);
      }

      if (v1 == 2)
      {
        v2 = 0;
        v1 = 2;
        return v1 | (v2 << 32);
      }
    }

    else
    {
      switch(v1)
      {
        case 3:
          v2 = 0;
          v1 = 3;
          return v1 | (v2 << 32);
        case 4:
          v2 = 0;
          v1 = 4;
          return v1 | (v2 << 32);
        case 5:
          v2 = 0;
          v1 = 5;
          return v1 | (v2 << 32);
      }
    }

LABEL_26:
    v1 = 0;
    v2 = 1;
    return v1 | (v2 << 32);
  }

  if (*v0 > 9u)
  {
    switch(v1)
    {
      case 0xA:
        v2 = 0;
        v1 = 10;
        return v1 | (v2 << 32);
      case 0xD:
        v2 = 0;
        v1 = 11;
        return v1 | (v2 << 32);
      case 0xE:
        v2 = 0;
        v1 = 12;
        return v1 | (v2 << 32);
    }

    goto LABEL_26;
  }

  if (v1 == 6)
  {
    v2 = 0;
    v1 = 6;
    return v1 | (v2 << 32);
  }

  if (v1 == 7)
  {
    v2 = 0;
    v1 = 7;
    return v1 | (v2 << 32);
  }

  if (v1 != 9)
  {
    goto LABEL_26;
  }

  v2 = 0;
  v1 = 9;
  return v1 | (v2 << 32);
}

uint64_t MUPlaceActionDispatcher.ActionType.axID.getter()
{
  result = 0x72476E6F69746341;
  switch(*v0)
  {
    case 1:
      result = 0x6975476F54646441;
      break;
    case 2:
      result = 0x6E4174726F706552;
      break;
    case 3:
      result = 0x6572616853;
      break;
    case 4:
      result = 1819042115;
      break;
    case 5:
      result = 0x6567617373654DLL;
      break;
    case 6:
      result = 0x65746973626557;
      break;
    case 7:
      return result;
    case 8:
      result = 0x6F69746365726944;
      break;
    case 9:
      result = 0x7265766F796C46;
      break;
    case 0xA:
      result = 0x44656E696C66664FLL;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000019;
      break;
    case 0xD:
      result = 0x6F746F6850646441;
      break;
    case 0xE:
      result = 0x7661466F54646441;
      break;
    case 0xF:
    case 0x1F:
    case 0x30:
      result = 0xD000000000000013;
      break;
    case 0x10:
      result = 0x4152656E696C6E49;
      break;
    case 0x11:
      result = 0x6C50646570706154;
      break;
    case 0x12:
      result = 0x63616C5065726F4DLL;
      break;
    case 0x13:
      result = 0x6850646570706154;
      break;
    case 0x14:
    case 0x16:
      result = 0xD000000000000010;
      break;
    case 0x15:
      v2 = 1701998413;
      goto LABEL_30;
    case 0x17:
      result = 0x6E69746152707241;
      break;
    case 0x18:
      result = 0x7547646570706154;
      break;
    case 0x19:
      result = 0x5255646570706154;
      break;
    case 0x1A:
      result = 0xD000000000000014;
      break;
    case 0x1B:
      result = 0x4765726F6C707845;
      break;
    case 0x1C:
      result = 0x65736F6C43;
      break;
    case 0x1D:
      result = 0x6F4E646570706154;
      break;
    case 0x1E:
      result = 0x694C646570706154;
      break;
    case 0x20:
      result = 0xD000000000000012;
      break;
    case 0x21:
      result = 0x65526E4973706152;
      break;
    case 0x22:
      result = 0xD000000000000014;
      break;
    case 0x23:
    case 0x24:
      result = 0xD000000000000016;
      break;
    case 0x25:
    case 0x2B:
      result = 0xD000000000000011;
      break;
    case 0x26:
      result = 0x437070416E65704FLL;
      break;
    case 0x27:
      result = 0x657478456E65704FLL;
      break;
    case 0x28:
      result = 0x6F4C64656B72614DLL;
      break;
    case 0x29:
      result = 0x73746361746E6F43;
      break;
    case 0x2A:
      result = 0x6E6F697461636F4CLL;
      break;
    case 0x2C:
      result = 0x794D646E6946;
      break;
    case 0x2D:
      result = 0x726573556E65704FLL;
      break;
    case 0x2E:
      result = 0xD000000000000015;
      break;
    case 0x2F:
      result = 0xD000000000000014;
      break;
    case 0x31:
      v2 = 1852141647;
LABEL_30:
      result = v2 | 0x746F685000000000;
      break;
    case 0x32:
      result = 0x726F6F4379706F43;
      break;
    case 0x33:
      result = 0x6B6E694C79706F43;
      break;
    case 0x34:
      result = 0x7264644179706F43;
      break;
    case 0x35:
      result = 0x6D6F74737543;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

id MUPlaceActionDispatcher.Action.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUPlaceActionDispatcher.Action();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MUPlaceActionDispatcher.Action.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUPlaceActionDispatcher.Action();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C57071DC(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17AddToGuidesAction_isFavoriteGuide] = a1;
  v5[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17AddToGuidesAction_addToFavoritesGuide] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1C5707364(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1C56466CC(a1, v3 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16DirectionsAction_directionsContact, &qword_1EC16DD98, &unk_1C5868560);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1C5625230(a1, &qword_1EC16DD98, &unk_1C5868560);
  return v4;
}

id MUPlaceActionDispatcher.DirectionsAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C57075D0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FEF0, &qword_1C586B090);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v26 - v15;
  sub_1C56466CC(a1, v8, &qword_1EC16FEF0, &qword_1C586B090);
  v17 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
  if ((*(*(v17 - 8) + 48))(v8, 1, v17) == 1)
  {
    sub_1C5625230(v8, &qword_1EC16FEF0, &qword_1C586B090);
    v18 = &v2[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15AddPhotosAction_boundingBox];
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v18[32] = 1;
  }

  else
  {
    sub_1C5696524(v13);
    sub_1C570A918(v8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos);
    sub_1C5707838(v13, v16);
    v19 = sub_1C56959D4();
    v20 = sub_1C56959EC();
    v21 = sub_1C5695A1C();
    v22 = sub_1C5695A04();
    sub_1C570A918(v16, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
    v23 = &v2[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15AddPhotosAction_boundingBox];
    *v23 = v19;
    v23[1] = v20;
    v23[2] = v21;
    v23[3] = v22;
    *(v23 + 32) = 0;
  }

  v26.receiver = v2;
  v26.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  sub_1C5625230(a1, &qword_1EC16FEF0, &qword_1C586B090);
  return v24;
}

uint64_t sub_1C5707838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1C5707944(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1C5707B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v10 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
  v11 = sub_1C584F630();

  v12 = [v10 initWithEncodedMapsIdentifier_];

  if (v12)
  {
    v23 = v12;
    v24 = ObjectType;
    v25 = v6;
    v13 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];
    v14 = *(a3 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = a3 + 40;
      while (v15 < *(a3 + 16))
      {
        v17 = a2;
        v18 = objc_allocWithZone(MEMORY[0x1E69A21C0]);

        v19 = sub_1C584F630();

        v20 = [v18 initWithEncodedMapsIdentifier_];

        if (!v20)
        {

          goto LABEL_12;
        }

        [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
        MEMORY[0x1C6949DF0]();
        a2 = v17;
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
          a2 = v17;
        }

        ++v15;
        sub_1C584F7E0();

        v13 = v28;
        v16 += 16;
        if (v14 == v15)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      *&v25[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16MorePlacesAction_relatedMapsIdentifier] = v13;
      v21 = &v25[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16MorePlacesAction_title];
      *v21 = a1;
      *(v21 + 1) = a2;
      v22 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

      *&v25[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16MorePlacesAction_originalMapsIdentifier] = v22;
      v27.receiver = v25;
      v27.super_class = v24;
      objc_msgSendSuper2(&v27, sel_init);
    }
  }

  else
  {

LABEL_12:
    swift_deallocPartialClassInstance();
  }
}

void sub_1C5707E38()
{

  v1 = *(v0 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16MorePlacesAction_originalMapsIdentifier);
}

id sub_1C5708000(uint64_t a1, uint64_t a2, float a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher21TappedARPRatingAction_ratingCategory];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher21TappedARPRatingAction_value] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1C5708158(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
  v7 = sub_1C584F630();

  v8 = [v6 initWithEncodedMapsIdentifier_];

  if (v8)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

    *&v3[*a3] = v9;
    v11.receiver = v3;
    v11.super_class = ObjectType;
    return objc_msgSendSuper2(&v11, sel_init);
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_1C57082D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return sub_1C5708320(a1, a2, v4);
}

id sub_1C5708320(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - v8;
  v10 = sub_1C584EA90();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C584EA80();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C5625230(v9, &unk_1EC16E660, &unk_1C58685F0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v16 = *(v11 + 32);
    v16(v14, v9, v10);
    v16(&v3[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15TappedURLAction_url], v14, v10);
    v3[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15TappedURLAction_embeddedWeb] = a3 & 1;
    v17.receiver = v3;
    v17.super_class = ObjectType;
    return objc_msgSendSuper2(&v17, sel_init);
  }
}

uint64_t sub_1C57085A8()
{
  v1 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15TappedURLAction_url;
  v2 = sub_1C584EA90();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1C5708688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_urls] = a1;
  v10 = &v9[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_vendorID];
  *v10 = a2;
  *(v10 + 1) = a3;
  *&v9[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_mapItem] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_1C5708770()
{

  v1 = *(v0 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_mapItem);
}

id sub_1C57088F0(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19TappedLibraryAction_savedState] = a1;
  v5[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19TappedLibraryAction_showAddToLibraryModal] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1C57089EC(uint64_t a1, uint64_t a2, Class *a3, SEL *a4, void *a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = objc_allocWithZone(*a3);
  v11 = sub_1C584F630();

  v12 = [v10 *a4];

  if (v12)
  {
    *&v9[*a5] = v12;
    v14.receiver = v9;
    v14.super_class = v5;
    return objc_msgSendSuper2(&v14, sel_init);
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }
}

BOOL sub_1C5708B58()
{
  sub_1C56F4F68();
  sub_1C584F730();
  sub_1C584F730();
  return v2 == v1;
}

id sub_1C5708BDC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = objc_allocWithZone(v12);
  v13 = sub_1C584F630();

  v14 = sub_1C584F630();

  v15 = sub_1C584F630();

  v16 = sub_1C584F630();

  v17 = sub_1C584F630();

  sub_1C5696854();
  sub_1C56968A4();
  v18 = GEOTransitDepartureSequenceFromEncodedString();

  if (v18)
  {
    *&v22[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher28TappedTransitDepartureAction_departureSequence] = v18;
    v22[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher28TappedTransitDepartureAction_rowType] = a1 & 1;
    v23.receiver = v22;
    v23.super_class = v12;
    v19 = objc_msgSendSuper2(&v23, sel_init);
    sub_1C570A918(a12, type metadata accessor for MULocation);
  }

  else
  {
    sub_1C570A918(a12, type metadata accessor for MULocation);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v19;
}

void *sub_1C5708E54(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C584F750();
  v5 = GEOTransitIncidentsFromEncodedStrings();

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE00, &qword_1C5868570);
    v6 = sub_1C584F770();

    *&v3[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher27TappedTransitIncidentAction_transitIncidents] = v6;
    v9.receiver = v3;
    v9.super_class = v1;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    sub_1C570A918(a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
  }

  else
  {
    sub_1C570A918(a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

void sub_1C5709074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v8 = objc_allocWithZone(MEMORY[0x1E69A23E0]);
  v9 = sub_1C584F630();
  v10 = sub_1C584F630();
  v11 = sub_1C584F630();
  v12 = [v8 initForAppClipWithTitle:v9 urlString:v10 bundleID:v11];

  if (v12)
  {

    *&v6[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17OpenAppClipAction_quickLink] = v12;
    v13.receiver = v6;
    v13.super_class = ObjectType;
    objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    __break(1u);
  }
}

id sub_1C5709214(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19OpenExtensionAction_vendorId];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = 9;
  if (a3)
  {
    v9 = 10;
  }

  *&v7[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19OpenExtensionAction_source] = v9;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_1C5709330(char a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1C5709470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v54 = v6;
  v12 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher24ShowAllCollectionsAction_title;
  *&v6[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher24ShowAllCollectionsAction_title] = a1;
  *&v6[v12 + 8] = a2;
  v13 = *(a4 + 16);
  if (v13 == *(a5 + 16))
  {
    v55 = a3;
    v14 = MEMORY[0x1E69E7CC0];
    v61 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v15 = 0;
      v16 = 0;
      v56 = a5;
      v57 = a4;
      while (1)
      {
        if (v16 >= *(a5 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        if (v16 >= *(a4 + 16))
        {
          goto LABEL_37;
        }

        v17 = *(a5 + v15 + 32);
        v18 = *(a5 + v15 + 40);
        v19 = objc_allocWithZone(MEMORY[0x1E69A2360]);

        v20 = sub_1C584F630();
        v21 = sub_1C584F630();

        v22 = [v19 initWithEncodedCollection:v20 usingEncodedAttribution:v21];

        if (!v22)
        {
          break;
        }

        v23 = v22;
        MEMORY[0x1C6949DF0]();
        if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        ++v16;
        sub_1C584F7E0();

        v14 = v61;
        v15 += 16;
        a5 = v56;
        a4 = v57;
        if (v13 == v16)
        {
          goto LABEL_14;
        }
      }

      v41 = v17;

      if (qword_1EC18DF40 != -1)
      {
        swift_once();
      }

      v42 = sub_1C584F2C0();
      __swift_project_value_buffer(v42, qword_1EC190440);

      v25 = sub_1C584F2A0();
      v43 = sub_1C584F9B0();

      if (os_log_type_enabled(v25, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v60 = v45;
        *v44 = 136315138;
        v46 = sub_1C5649518(v41, v18, &v60);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_1C5620000, v25, v43, "Failed to decode place collection: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1C694B7A0](v45, -1, -1);
        v28 = v44;
        goto LABEL_26;
      }

      goto LABEL_27;
    }

LABEL_14:

    v29 = a3;
    *&v54[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher24ShowAllCollectionsAction_placeCollections] = v14;
    v30 = MEMORY[0x1E69E7CC0];
    v60 = MEMORY[0x1E69E7CC0];
    v31 = *(a3 + 16);
    if (!v31)
    {
LABEL_21:

      *&v54[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher24ShowAllCollectionsAction_collectionIds] = v30;
      v58.receiver = v54;
      v58.super_class = ObjectType;
      return objc_msgSendSuper2(&v58, sel_init);
    }

    v32 = 0;
    v33 = (a3 + 40);
    while (v32 < *(v29 + 16))
    {
      v35 = *(v33 - 1);
      v34 = *v33;
      v36 = objc_allocWithZone(MEMORY[0x1E69A21C0]);

      v37 = sub_1C584F630();
      v38 = [v36 initWithEncodedMapsIdentifier_];

      if (!v38)
      {

        if (qword_1EC18DF40 != -1)
        {
          swift_once();
        }

        v47 = sub_1C584F2C0();
        __swift_project_value_buffer(v47, qword_1EC190440);

        v48 = sub_1C584F2A0();
        v49 = sub_1C584F9B0();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v59 = v51;
          *v50 = 136315138;
          v52 = sub_1C5649518(v35, v34, &v59);

          *(v50 + 4) = v52;
          _os_log_impl(&dword_1C5620000, v48, v49, "Failed to decode collection ID: %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x1C694B7A0](v51, -1, -1);
          MEMORY[0x1C694B7A0](v50, -1, -1);
        }

        else
        {
        }

        goto LABEL_28;
      }

      v39 = v38;
      MEMORY[0x1C6949DF0]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C584F7A0();
      }

      ++v32;
      sub_1C584F7E0();

      v30 = v60;
      v33 += 2;
      v29 = v55;
      if (v31 == v32)
      {
        goto LABEL_21;
      }
    }

LABEL_38:
    __break(1u);
  }

  else
  {

    if (qword_1EC18DF40 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v24 = sub_1C584F2C0();
  __swift_project_value_buffer(v24, qword_1EC190440);
  v25 = sub_1C584F2A0();
  v26 = sub_1C584F9B0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C5620000, v25, v26, "Number of encoded place collections does not match number of encoded attributions", v27, 2u);
    v28 = v27;
LABEL_26:
    MEMORY[0x1C694B7A0](v28, -1, -1);
  }

LABEL_27:

LABEL_28:

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1C5709B68()
{
}

id sub_1C5709D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldShowPublisher];
  v5[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldShowPublisher] = 0;
  v26 = &v5[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary];
  v27 = ObjectType;
  v5[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary] = 0;
  v12 = &v5[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldSharePublisherGuide];
  v5[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldSharePublisherGuide] = 0;
  v13 = objc_allocWithZone(MEMORY[0x1E69A2360]);
  v14 = sub_1C584F630();
  v15 = sub_1C584F630();

  v16 = [v13 initWithEncodedCollection:v14 usingEncodedAttribution:v15];

  if (v16)
  {

    *&v6[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_placeCollection] = v16;
    v17 = sub_1C5696454();
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        swift_beginAccess();
        v11 = v12;
        goto LABEL_15;
      }

      v11 = v26;
    }

    else if (!v17)
    {
LABEL_16:
      v29.receiver = v6;
      v29.super_class = v27;
      v24 = objc_msgSendSuper2(&v29, sel_init);
      sub_1C570A918(a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
      return v24;
    }

    swift_beginAccess();
LABEL_15:
    *v11 = 1;
    goto LABEL_16;
  }

  if (qword_1EC18DF40 != -1)
  {
    swift_once();
  }

  v18 = sub_1C584F2C0();
  __swift_project_value_buffer(v18, qword_1EC190440);

  v19 = sub_1C584F2A0();
  v20 = sub_1C584F9B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v21 = 136315138;
    v23 = sub_1C5649518(a4, a5, v28);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_1C5620000, v19, v20, "Failed to decode place collection: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1C694B7A0](v22, -1, -1);
    MEMORY[0x1C694B7A0](v21, -1, -1);
  }

  else
  {
  }

  sub_1C570A918(a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
  swift_deallocPartialClassInstance();
  return 0;
}

id _s6MapsUI23MUPlaceActionDispatcherC010OpenFindMyD0CAEycfc_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1C570A168(void *a1, float a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a1] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1C570A378(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[*a3];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

double MUPlaceActionDispatcher.CustomAction.handlers.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t MUPlaceActionDispatcher.CustomAction.handlers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction_handlers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MUPlaceActionDispatcher.CustomAction.__allocating_init(handlers:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction_handlers;
  *&v3[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction_handlers] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *&v3[v4] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id MUPlaceActionDispatcher.CustomAction.init(handlers:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction_handlers;
  *&v1[OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction_handlers] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *&v1[v4] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t MUPlaceActionDispatcher.CustomAction.addHandler(_:)(const void *a1)
{
  _Block_copy(a1);
  v2 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction_handlers;
  v3 = swift_beginAccess();
  MEMORY[0x1C6949DF0](v3);
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C584F7A0();
  }

  sub_1C584F7E0();
  return swift_endAccess();
}

uint64_t sub_1C570A874()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC190440);
  __swift_project_value_buffer(v0, qword_1EC190440);
  type metadata accessor for MUPlaceActionDispatcher();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1700C8, &qword_1C58773E0);
  sub_1C584F680();
  return sub_1C584F2B0();
}

uint64_t sub_1C570A918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C570A97C()
{
  result = qword_1EC170038;
  if (!qword_1EC170038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170038);
  }

  return result;
}

void sub_1C570AB4C(uint64_t a1)
{
  sub_1C570ABF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C570ABF4(uint64_t a1)
{
  if (!qword_1EC16D450)
  {
    type metadata accessor for MUContactLabeledValue(255);
    v1 = sub_1C584FAF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC16D450);
    }
  }
}

uint64_t sub_1C570AF8C(uint64_t a1)
{
  result = sub_1C584EA90();
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

char *HikingTipSectionController.init(placeItem:tipDelegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___MUHikingTipSectionController_tipCoordinator] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR___MUHikingTipSectionController_usesOriginMapItem] = 0;
  *&v2[OBJC_IVAR___MUHikingTipSectionController__sectionViews] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR___MUHikingTipSectionController_placeItem] = a1;
  swift_unknownObjectWeakAssign();
  result = [swift_unknownObjectRetain() mapItem];
  if (result)
  {
    v6 = result;
    v14.receiver = v2;
    v14.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v14, sel_initWithMapItem_, result);

    v8 = objc_opt_self();
    v9 = v7;
    result = [v8 sharedService];
    if (result)
    {
      v10 = result;
      type metadata accessor for HikingTipCoordinator();
      v11 = v9;
      v12 = HikingTipCoordinator.__allocating_init(mapService:locationDelegate:mapAccessProvider:presenter:)(v10, v9, v9, v11);
      v13 = *&v11[OBJC_IVAR___MUHikingTipSectionController_tipCoordinator];
      *&v11[OBJC_IVAR___MUHikingTipSectionController_tipCoordinator] = v12;

      HikingTipSectionController.fetchHikingTip()();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall HikingTipSectionController.fetchHikingTip()()
{
  v1 = v0;
  v2 = sub_1C584F2C0();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v42 - v13;
  v15 = OBJC_IVAR___MUHikingTipSectionController_placeItem;
  v16 = [*&v1[OBJC_IVAR___MUHikingTipSectionController_placeItem] mapItem];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for HikingTipViewModel();
    v43 = v17;
    v18 = sub_1C570C42C(v17);
    if (v18)
    {
      v19 = v18;
      v20 = sub_1C5716084();
      (*(v3 + 16))(v14, v20, v2);
      v21 = v1;
      v22 = sub_1C584F2A0();
      v23 = sub_1C584F990();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v24 = 138412290;
        v25 = [v21 mapItem];
        v26 = v2;
        v27 = [v25 identifier];

        *(v24 + 4) = v27;
        v28 = v42;
        *v42 = v27;
        v2 = v26;
        _os_log_impl(&dword_1C5620000, v22, v23, "Placecard: Returning hiking tip for mapItem %@", v24, 0xCu);
        sub_1C567CCE0(v28);
        MEMORY[0x1C694B7A0](v28, -1, -1);
        MEMORY[0x1C694B7A0](v24, -1, -1);
      }

      (*(v3 + 8))(v14, v2);
      sub_1C570C190(v19);

      v29 = v19[OBJC_IVAR___MUHikingTipViewModel_usesOriginMapItem];
      v21[OBJC_IVAR___MUHikingTipSectionController_usesOriginMapItem] = v29;
      return;
    }

    v34 = *&v1[OBJC_IVAR___MUHikingTipSectionController_tipCoordinator];
    if (v34)
    {
      v35 = v34;
      if (([v43 _isMapItemTypeAddress] & 1) != 0 || objc_msgSend(*&v1[v15], sel_options) == 2)
      {
        v36 = sub_1C5716084();
        (*(v3 + 16))(v11, v36, v2);
        v37 = sub_1C584F2A0();
        v38 = sub_1C584F990();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1C5620000, v37, v38, "Placecard: Fetching hiking tip for dropped pin or address place item.", v39, 2u);
          MEMORY[0x1C694B7A0](v39, -1, -1);
        }

        v40 = (*(v3 + 8))(v11, v2);
        (*((*MEMORY[0x1E69E7D40] & *v35) + 0x100))(v40);

        return;
      }
    }

    v41 = v43;
  }

  else
  {
    v30 = sub_1C5716084();
    (*(v3 + 16))(v7, v30, v2);
    v31 = sub_1C584F2A0();
    v32 = sub_1C584F9B0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C5620000, v31, v32, "Placecard: MUPlaceSectionController did not have a mapItem. Cannot fetch a hiking tip.", v33, 2u);
      MEMORY[0x1C694B7A0](v33, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }
}

BOOL HikingTipSectionController.hasContentBeforePersonalizedSuggestionArbitration.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUHikingTipSectionController__sectionViews);
  if (v1 >> 62)
  {
    v2 = sub_1C584FB90();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

BOOL HikingTipSectionController.hasContent.getter()
{
  v1 = [v0 personalizedSuggestionsArbiterDelegate];
  if (v1)
  {
    v2 = [v1 shouldShowHikingTipSection];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *&v0[OBJC_IVAR___MUHikingTipSectionController__sectionViews];
    if (v3 >> 62)
    {
      v4 = sub_1C584FB90();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v4 != 0;
  }

  return v2;
}

uint64_t sub_1C570C190(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C584F2C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5716084();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_1C584F2A0();
  v11 = sub_1C584F990();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C5620000, v10, v11, "Placecard: Refreshing hiking tip section.", v12, 2u);
    MEMORY[0x1C694B7A0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C5867970;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v15 = [Strong hikingTipViewForHikingTipSectionController:v2 viewModel:a1], swift_unknownObjectRelease(), v15))
  {
    v16 = [objc_opt_self() insetPlatterSectionViewForContentView:v15 sectionHeaderViewModel:0 sectionFooterViewModel:0];
    [v16 configureWithSectionController_];
    v17 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v2 action:sel_tipTapped];
    v18 = v16;
    [v18 addGestureRecognizer_];
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  *(v13 + 32) = v18;
  *(v2 + OBJC_IVAR___MUHikingTipSectionController__sectionViews) = v13;
}

id sub_1C570C42C(id result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [v2 _identifier];
  if (!v3)
  {
LABEL_10:

    return 0;
  }

  v4 = v3;
  result = [v2 _geoMapItem];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = [result _tooltip];
  swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_9:

    goto LABEL_10;
  }

  if ([v5 type] != 1)
  {

    goto LABEL_9;
  }

  v6 = [v5 title];
  if (v6)
  {
    v7 = v6;
    v21 = sub_1C584F660();
    v9 = v8;
  }

  else
  {
    v21 = 0;
    v9 = 0;
  }

  v10 = [v5 subtitle];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C584F660();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = [v5 actionLink];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1C584F660();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = (*(v1 + 128))(v4, v21, v9, v12, v14, v17, v19, 0, [v5 usesOriginMapItem]);

  return v20;
}

uint64_t HikingTipSectionController.displayHikingTip(viewModel:)(uint64_t a1)
{
  sub_1C570C190(a1);
  *(v1 + OBJC_IVAR___MUHikingTipSectionController_usesOriginMapItem) = *(a1 + OBJC_IVAR___MUHikingTipViewModel_usesOriginMapItem);
  return 1;
}

void *sub_1C570C6AC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if (*(v0 + OBJC_IVAR___MUHikingTipSectionController_usesOriginMapItem) == 1)
    {
      v3 = [v0 mapItem];
    }

    else
    {
      v3 = 0;
    }

    [v2 didTapHikingTip:v0 originMapItem:v3];

    return swift_unknownObjectRelease();
  }

  return result;
}

id HikingTipSectionController.__allocating_init(mapItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithMapItem_];

  return v3;
}

id HikingTipSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double HikingTipSectionController.coordinateForTooltip.getter()
{
  v1 = [v0 mapItem];
  [v1 _coordinate];
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall HikingTipSectionController.requestHikingToolTipRegionID(forLocationCoordinate:)(__C::CLLocationCoordinate2D forLocationCoordinate)
{
  longitude = forLocationCoordinate.longitude;
  latitude = forLocationCoordinate.latitude;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong requestHikingToolTipRegionIDForLocationCoordinate_];

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1C570CB68()
{
  result = qword_1ED77E800;
  if (!qword_1ED77E800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED77E800);
  }

  return result;
}

id MUWebBasedPlacecardOfflineMapProvider.__allocating_init(nativeOfflineMapProvider:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_observers;
  sub_1C568FBBC();
  v6 = &unk_1F4524458;
  v7 = sub_1C584F9F0();
  v8 = [objc_allocWithZone(MEMORY[0x1E69A22D8]) initWithProtocol:v6 queue:v7];

  *&v4[v5] = v8;
  v9 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  *&v4[OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider] = 0;
  swift_beginAccess();
  *&v4[v9] = a1;
  v11.receiver = v4;
  v11.super_class = v2;
  return objc_msgSendSuper2(&v11, sel_init);
}

id MUWebBasedPlacecardOfflineMapProvider.init(nativeOfflineMapProvider:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_observers;
  sub_1C568FBBC();
  v6 = &unk_1F4524458;
  v7 = sub_1C584F9F0();
  v8 = [objc_allocWithZone(MEMORY[0x1E69A22D8]) initWithProtocol:v6 queue:v7];

  *&v2[v5] = v8;
  v9 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  *&v2[OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider] = 0;
  swift_beginAccess();
  *&v2[v9] = a1;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

double MUWebBasedPlacecardOfflineMapProvider.nativeOfflineMapProvider.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t MUWebBasedPlacecardOfflineMapProvider.nativeOfflineMapProvider.setter(void *a1)
{
  sub_1C570D570(a1);

  return swift_unknownObjectRelease();
}

double sub_1C570CEE0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1C570CF3C(void *a1, uint64_t a2)
{
  v2 = swift_unknownObjectRetain();
  sub_1C570D570(v2);

  return swift_unknownObjectRelease();
}

uint64_t MUWebBasedPlacecardOfflineMapProvider.offlineMapProviderUpdated(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1C570D42C(v1);
}

void (*MUWebBasedPlacecardOfflineMapProvider.nativeOfflineMapProvider.modify(uint64_t *a1))(void **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return sub_1C570D04C;
}

void sub_1C570D04C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    sub_1C570D570(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C570D570(v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

id MUWebBasedPlacecardOfflineMapProvider.downloadState.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result downloadState];
  }

  return result;
}

id MUWebBasedPlacecardOfflineMapProvider.downloadProgress.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result downloadProgress];
  }

  return result;
}

id MUWebBasedPlacecardOfflineMapProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MUWebBasedPlacecardOfflineMapProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C570D42C(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_observers) allObservers];
  v3 = sub_1C584F770();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1C56465F8(v5, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1701F0, &qword_1C58774C8);
      if (swift_dynamicCast())
      {
        [v7 offlineMapProviderUpdated_];
        swift_unknownObjectRelease();
      }

      v5 += 32;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

uint64_t sub_1C570D570(void *a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider_nativeOfflineMapProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {
    swift_unknownObjectRetain();
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  swift_unknownObjectRetain();
  [v4 removeObserver_];
  a1 = *(v1 + v3);
  if (a1)
  {
LABEL_3:
    [a1 addObserver_];
  }

LABEL_4:
  sub_1C570D42C(v1);
  return swift_unknownObjectRelease();
}

uint64_t WatchPlaceETAProvider.etaTravelTime.getter()
{
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v1 = v0 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__etaTravelTime;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C570D704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v4 = v3 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__etaTravelTime;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

unint64_t sub_1C570D7D8()
{
  result = qword_1EC170200;
  if (!qword_1EC170200)
  {
    type metadata accessor for WatchPlaceETAProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170200);
  }

  return result;
}

uint64_t type metadata accessor for WatchPlaceETAProvider(uint64_t a1)
{
  result = qword_1EC18E110;
  if (!qword_1EC18E110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double WatchPlaceETAProvider.etaTravelTime.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__etaTravelTime;
  swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *v5;
    if (*v5 != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = *&a1;
    *(v5 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v8);
  sub_1C570D7D8();
  sub_1C584EF30();

  return result;
}

uint64_t sub_1C570D9A4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__etaTravelTime;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 8) = v2;
  return result;
}

uint64_t (*WatchPlaceETAProvider.etaTravelTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C570D7D8();
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C570DB20;
}

uint64_t WatchPlaceETAProvider.localizedDistance.getter()
{
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v1 = (v0 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__localizedDistance);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1C570DBCC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v4 = (v3 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__localizedDistance);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;

  return result;
}

uint64_t sub_1C570DC68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WatchPlaceETAProvider.localizedDistance.setter(v1, v2);
}

uint64_t WatchPlaceETAProvider.localizedDistance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__localizedDistance);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1C584FDC0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v10);
  sub_1C570D7D8();
  sub_1C584EF30();
}

uint64_t (*WatchPlaceETAProvider.localizedDistance.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C570D7D8();
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  swift_beginAccess();
  return sub_1C570DF00;
}

id sub_1C570DF0C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v2 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    swift_getKeyPath();
    sub_1C584EF40();

    if (*(v1 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted))
    {
      v3 = &selRef_restart;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v5);
      sub_1C584EF30();

      v3 = &selRef_start;
    }
  }

  else
  {
    v3 = &selRef_pause;
  }

  return [*(v1 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider) *v3];
}

uint64_t WatchPlaceETAProvider.isActive.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1C570D7D8();
  sub_1C584EF40();

  v1 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1C570E134()
{
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  return *(v0 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted);
}

void sub_1C570E1AC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1C570D7D8();
    sub_1C584EF30();
  }
}

id (*sub_1C570E294(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C570E2F8;
}

id sub_1C570E2F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C570DF0C();
  }

  return result;
}

uint64_t sub_1C570E32C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  v4 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void WatchPlaceETAProvider.isActive.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    sub_1C570DF0C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1C570D7D8();
    sub_1C584EF30();
  }
}

uint64_t (*WatchPlaceETAProvider.isActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C570D7D8();
  sub_1C584EF40();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C584EF60();

  v4[7] = sub_1C570E294(v4);
  return sub_1C570E5F0;
}

void sub_1C570E5F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C584EF50();

  free(v1);
}

void sub_1C570E69C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C570D7D8();
  sub_1C584EF40();

  *a2 = *(v3 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted);
}

char *WatchPlaceETAProvider.init(placeItem:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__etaTravelTime];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__localizedDistance];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive] = 0;
  v1[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__hasETAProviderStarted] = 0;
  sub_1C584EF70();
  result = [objc_allocWithZone(MEMORY[0x1E696F1D0]) initWithPlaceItem_];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider] = result;
    v11.receiver = v1;
    v11.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v8 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider;
    v9 = *&v7[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider];
    v10 = v7;
    [v9 setDelegate_];
    [*&v7[v8] addObserver_];

    swift_unknownObjectRelease();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id WatchPlaceETAProvider.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider;
  [*&v0[OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider_etaProvider] removeObserver_];
  [*&v0[v2] cancel];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void WatchPlaceETAProvider.etaProviderUpdated(_:)(void *a1)
{
  if (a1)
  {
    if ([a1 hasFoundDistanceOrETA])
    {
      v2 = [a1 distanceString];
      if (v2)
      {
        v3 = v2;
        v4 = sub_1C584F660();
        v6 = v5;

        v7 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v7 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          WatchPlaceETAProvider.localizedDistance.setter(v4, v6);
        }

        else
        {
        }
      }

      if (qword_1EC18E050 != -1)
      {
        swift_once();
      }

      v8 = sub_1C584F2C0();
      __swift_project_value_buffer(v8, qword_1EC18E058);
      v9 = a1;
      v10 = sub_1C584F2A0();
      v11 = sub_1C584F9A0();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        [v9 etaTravelTime];
        *(v12 + 4) = v13;
        _os_log_impl(&dword_1C5620000, v10, v11, "Updated with travel time %f", v12, 0xCu);
        MEMORY[0x1C694B7A0](v12, -1, -1);
      }

      [v9 etaTravelTime];

      WatchPlaceETAProvider.etaTravelTime.setter(v14, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

id WatchPlaceETAProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C570ED08()
{
  v1 = [objc_opt_self() etaSymbolForTransportType_];
  v2 = sub_1C584F660();

  return v2;
}

uint64_t sub_1C570ED8C()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18E058);
  __swift_project_value_buffer(v0, qword_1EC18E058);
  type metadata accessor for WatchPlaceETAProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170298, &qword_1C58775E0);
  sub_1C584F680();
  return sub_1C584F2B0();
}

uint64_t sub_1C570EE30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__localizedDistance);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

id sub_1C570EEA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC6MapsUI21WatchPlaceETAProvider__isActive;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_1C570DF0C();
}

uint64_t sub_1C570EF10(uint64_t a1)
{
  result = sub_1C584EF80();
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

id BadgeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *BadgeView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR___MUBadgeView_label;
  *&v4[OBJC_IVAR___MUBadgeView_label] = v10;
  v12 = [objc_opt_self() effectWithStyle_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  *&v4[OBJC_IVAR___MUBadgeView_blurView] = v13;
  v14 = [objc_opt_self() effectForBlurEffect:v12 style:1];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v4[OBJC_IVAR___MUBadgeView_labelVibrantView] = v15;
  v16 = [*&v4[v11] layer];
  [v16 setCompositingFilter_];

  v42.receiver = v4;
  v42.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  [v17 setClipsToBounds_];
  v18 = *&v17[OBJC_IVAR___MUBadgeView_label];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setNumberOfLines_];
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v20 = result;
    [v18 setFont_];

    [v18 setAdjustsFontForContentSizeCategory_];
    v21 = *&v17[OBJC_IVAR___MUBadgeView_blurView];
    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v17 addSubview_];
    v22 = *&v17[OBJC_IVAR___MUBadgeView_labelVibrantView];
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    v23 = [v22 contentView];
    [v23 addSubview_];

    v24 = [v21 contentView];
    [v24 addSubview_];

    v25 = [objc_opt_self() sharedApplication];
    [v25 userInterfaceLayoutDirection];

    [v21 _setCornerRadius_continuous_maskedCorners_];
    type metadata accessor for EdgeLayout();
    v26 = *&v17[OBJC_IVAR___MUBadgeView_labelVibrantView];
    v27 = EdgeLayout.__allocating_init(item:container:)(*&v17[OBJC_IVAR___MUBadgeView_label], [v26 contentView]);
    v28 = *&v17[OBJC_IVAR___MUBadgeView_blurView];
    v29 = EdgeLayout.__allocating_init(item:container:insets:)(v26, [v28 contentView], 4.0, 6.0, 4.0, 6.0);
    v30 = v28;
    v31 = v17;
    v32 = EdgeLayout.__allocating_init(item:container:)(v30, v31);
    type metadata accessor for SizeLayout();
    GEOLocationCoordinate2DMake();
    v34 = v33;
    v35 = swift_unknownObjectRetain();
    v36 = SizeLayout.__allocating_init(item:size:)(v35, v34, 20.0);
    sub_1C5654C40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C5868600;
    *(v37 + 32) = v27;
    *(v37 + 40) = v29;
    *(v37 + 48) = v32;
    *(v37 + 56) = v36;
    v38 = v27;
    v39 = v29;
    v40 = v32;
    v41 = v36;
    static NSLayoutConstraint.activate(layouts:)(v37);

    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BadgeView.badgeString.getter()
{
  v1 = [*(v0 + OBJC_IVAR___MUBadgeView_label) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C584F660();

  return v3;
}

void BadgeView.badgeString.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___MUBadgeView_label);
  v4 = sub_1C584F630();

  [v3 setText_];
}

void sub_1C570F76C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR___MUBadgeView_label) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C584F660();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1C570F7E0(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___MUBadgeView_label);
  v3 = sub_1C584F630();
  [v2 setText_];
}

uint64_t (*BadgeView.badgeString.modify(uint64_t *a1))()
{
  v3 = *(v1 + OBJC_IVAR___MUBadgeView_label);
  a1[2] = v3;
  v4 = [v3 text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C584F660();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_1C570F8E0;
}

void sub_1C570F8E0(void *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {

    v3 = sub_1C584F630();

    [v2 setText_];
  }

  else
  {
    v3 = sub_1C584F630();

    [v2 setText_];
  }
}

id BadgeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C570FA50(uint64_t a1)
{
  if (!a1)
  {
    return 5;
  }

  if (a1 == 1)
  {
    return 3;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C570FAB8(uint64_t a1)
{
  if (!a1)
  {
    return 9;
  }

  if (a1 == 1)
  {
    return 10;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C570FB20(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  if (a1 == 1)
  {
    return 4;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C570FB88(uint64_t a1)
{
  if (!a1)
  {
    return 7;
  }

  if (a1 == 1)
  {
    return 8;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C570FBF0(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 1)
  {
    return 0;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

unint64_t sub_1C570FC58(unint64_t result)
{
  if (result > 1)
  {
    result = sub_1C584FD00();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C570FCBC(unint64_t result)
{
  if (result > 1)
  {
    result = sub_1C584FD00();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C570FD20(unint64_t result)
{
  if (result > 1)
  {
    result = sub_1C584FD00();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C570FD80(void *a1)
{
  v1 = a1;
  shouldShowActionBarSbvg_0 = _sSo17UITraitCollectionC6MapsUIE27_mapsui_shouldShowActionBarSbvg_0();

  return shouldShowActionBarSbvg_0 & 1;
}

uint64_t TransitDeparturesDataSource.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C570FF18@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void (*TransitDeparturesDataSource.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MUTransitDeparturesDataSource_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

uint64_t TransitDeparturesDataSource.isActive.getter()
{
  v1 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

id TransitDeparturesDataSource.isActive.setter(char a1)
{
  v3 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) setActive_];
}

uint64_t sub_1C57101D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1C5710228(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return [*(v3 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) setActive_];
}

uint64_t (*TransitDeparturesDataSource.isActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C5710320;
}

void sub_1C5710320(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) setActive_];
  }

  free(v3);
}

id sub_1C5710384()
{
  v1 = [*(v0 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) selectedSystem];

  return v1;
}

uint64_t sub_1C57103C4(uint64_t a1)
{
  [*(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) setSelectedSystem_];

  return swift_unknownObjectRelease();
}

char *TransitDeparturesDataSource.init(mapItem:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___MUTransitDeparturesDataSource_mapItem] = a1;
  v4 = objc_allocWithZone(MEMORY[0x1E696F3D0]);
  v5 = a1;
  v6 = [v4 initWithMapItem_];
  *&v1[OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider] = v6;
  v1[OBJC_IVAR___MUTransitDeparturesDataSource_isActive] = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider;
  v9 = *&v7[OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider];
  v10 = v7;
  [v9 setSupportSystemSectionCollapsing_];
  [*&v7[v8] setDelegate_];

  return v10;
}

uint64_t sub_1C57105A4(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) incidentsForSystemIncidentsSection_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE00, &qword_1C5868570);
  v3 = sub_1C584F770();

  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      v23 = MEMORY[0x1E69E7CC0];

      result = sub_1C584FCC0();
      if (v5 < 0)
      {
        break;
      }

      v20 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v4)
      {
        v7 = sub_1C584FB90();
      }

      else
      {
        v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      v9 = v3 & 0xC000000000000001;
      v10 = (v3 + 32);
      v21 = v5;
      v22 = v7 & ~(v7 >> 63);
      v4 = v3;
      while (v22 != v8)
      {
        if (v9)
        {
          v11 = MEMORY[0x1C694A320](v8, v3);
        }

        else
        {
          if (v8 >= *(v20 + 16))
          {
            goto LABEL_26;
          }

          v11 = *v10;
          swift_unknownObjectRetain();
        }

        v12 = [objc_allocWithZone(MEMORY[0x1E696F3F0]) init];
        [v12 setBlocking_];
        v13 = v8 - 1;
        if (v8 < 1)
        {
          v15 = 1;
        }

        else
        {
          if (v9)
          {
            v14 = MEMORY[0x1C694A320](v13, v3);
          }

          else
          {
            if (v13 >= *(v20 + 16))
            {
              goto LABEL_27;
            }

            v14 = *(v10 - 1);
            swift_unknownObjectRetain();
          }

          v16 = [v14 isBlockingIncident];
          v17 = [v11 isBlockingIncident];
          swift_unknownObjectRelease();
          v15 = v16 ^ v17;
          v5 = v21;
        }

        [v12 setShowImage_];
        v18 = [v11 title];
        if (v18)
        {
          v19 = v18;
          [v12 setMessage_];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v3 = v4;
        ++v8;
        sub_1C584FCA0();
        sub_1C584FCD0();
        sub_1C584FCE0();
        sub_1C584FCB0();
        ++v10;
        if (v5 == v8)
        {
          swift_bridgeObjectRelease_n();
          return v23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v5 = sub_1C584FB90();
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *sub_1C571088C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v45 - v5;
  v7 = type metadata accessor for TransitDeparturesContainerViewModel(0);
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1C584EB30();
  v11 = *(v47 - 1);
  v13 = MEMORY[0x1EEE9AC00](v47, v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v45 - v17;
  v19 = *(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider);
  v20 = [v19 departuresSectionControllersForSystem_];
  sub_1C5626E40(0, &qword_1EC170870, 0x1E696F3D8);
  v21 = sub_1C584F770();

  v22 = *(v1 + OBJC_IVAR___MUTransitDeparturesDataSource_mapItem);
  v23 = objc_allocWithZone(MEMORY[0x1E696F400]);
  v48 = v22;
  result = [v23 initWithMapItem_];
  if (!result)
  {
    goto LABEL_20;
  }

  v25 = result;
  v26 = [v19 departureCutoffDate];
  sub_1C584EB10();

  v27 = sub_1C584EB00();
  (*(v11 + 8))(v18, v47);
  [v25 setReferenceDate_];

  v28 = v21;
  if (v21 >> 62)
  {
    v29 = sub_1C584FB90();
    if (v29)
    {
      goto LABEL_4;
    }

LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

  v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_17;
  }

LABEL_4:
  v50 = MEMORY[0x1E69E7CC0];
  result = sub_1C57113CC(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v46 = v21;
    v47 = v25;
    v30 = 0;
    v31 = v50;
    v32 = v28;
    v45 = v28 & 0xC000000000000001;
    v33 = v29;
    do
    {
      if (v45)
      {
        v34 = MEMORY[0x1C694A320](v30, v32);
      }

      else
      {
        v34 = *(v32 + 8 * v30 + 32);
      }

      v35 = v34;
      v36 = [v19 departureCutoffDate];
      sub_1C584EB10();

      v37 = [v19 isStuckWithExpiredInfo];
      v38 = [v48 timeZone];
      if (v38)
      {
        v39 = v38;
        sub_1C584ED70();

        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = sub_1C584ED80();
      (*(*(v41 - 8) + 56))(v6, v40, 1, v41);
      v42 = v47;
      sub_1C5722524(v35, v42, v15, v37, v6, v10);
      v50 = v31;
      v44 = *(v31 + 16);
      v43 = *(v31 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1C57113CC((v43 > 1), v44 + 1, 1);
        v31 = v50;
      }

      ++v30;
      *(v31 + 16) = v44 + 1;
      sub_1C57113EC(v10, v31 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v44);
      v32 = v46;
    }

    while (v33 != v30);

    return v31;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}