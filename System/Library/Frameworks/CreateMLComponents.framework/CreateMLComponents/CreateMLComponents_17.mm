uint64_t sub_237DCA4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v4 = *(a1 + 24);
  v108 = *(a1 + 16);
  v109 = v4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v110 = *(AssociatedConformanceWitness + 16);
  v92 = *(v110 + 16);
  v6 = *(v92 + 8);
  v91 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v89 = &v80 - v7;
  v104 = *(AssociatedConformanceWitness + 8);
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v8);
  v86 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v80 - v11;
  v13 = swift_checkMetadataState();
  v111 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v85 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = &v80 - v16;
  MEMORY[0x28223BE20](v17);
  v99 = &v80 - v18;
  MEMORY[0x28223BE20](v19);
  v95 = &v80 - v20;
  MEMORY[0x28223BE20](v21);
  v102 = &v80 - v22;
  MEMORY[0x28223BE20](v23);
  v94 = &v80 - v24;
  MEMORY[0x28223BE20](v25);
  v107 = &v80 - v26;
  MEMORY[0x28223BE20](v27);
  v105 = &v80 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v80 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v80 - v33;
  v35 = v2 + *(a1 + 84);
  v113[0] = v108;
  v113[1] = v36;
  v113[2] = v109;
  v113[3] = AssociatedConformanceWitness;
  v97 = type metadata accessor for LineSearch.LineSearchEvaluation(0, v113);
  v98 = a1;
  v37 = *(v97 + 56);
  v38 = *(a1 + 92);
  v93 = v2;
  v39 = *(v6 + 8);
  v109 = (v2 + v38);
  v103 = v39;
  sub_237EF9760();
  v112 = v35;
  v106 = v37;
  v96 = v6;
  sub_237EF8D30();
  v40 = v111 + 8;
  v41 = *(v111 + 8);
  v41(v31, v13);
  v42 = swift_getAssociatedConformanceWitness();
  v87 = v8;
  v83 = v42;
  sub_237EF9FA0();
  v84 = v12;
  v43 = v40;
  sub_237EF9CE0();
  v44 = *(*(v110 + 24) + 8);
  v45 = sub_237EF8420();
  v41(v31, v13);
  v108 = v41;
  v41(v34, v13);
  if (v45)
  {
    v46 = 1;
    v47 = v100;
    return __swift_storeEnumTagSinglePayload(v47, v46, 1, v13);
  }

  v82 = *(v97 + 52);
  sub_237EF9760();
  sub_237EF9760();
  sub_237EF8330();
  v48 = v108;
  v108(v31, v13);
  v48(v34, v13);
  swift_getAssociatedConformanceWitness();
  v101 = v44;
  sub_237EF9FB0();
  v49 = v94;
  sub_237EF9D20();
  sub_237EF8D30();
  v50 = v48;
  v48(v49, v13);
  sub_237EF9750();
  v48(v31, v13);
  v91 = *(v97 + 56);
  sub_237EF9750();
  v48(v34, v13);
  sub_237EF9FD0();
  sub_237EF9FD0();
  v51 = v95;
  sub_237EF9FD0();
  sub_237EF9FE0();
  v50(v51, v13);
  v50(v49, v13);
  v52 = v102;
  sub_237EF9FE0();
  v50(v31, v13);
  AssociatedTypeWitness = v43;
  v50(v34, v13);
  v53 = sub_237EF8400();
  v54 = v107;
  v97 = v34;
  v81 = v31;
  if (v53)
  {
    v55 = v98;
    v56 = v99;
    v57 = *(v98 + 104);
    v58 = v93;
    LODWORD(v109) = 1;
    *(v93 + v57) = 1;
    sub_237DCB254(v54, v52, v105, v55, v56);
LABEL_9:
    v62 = v111;
    goto LABEL_12;
  }

  v59 = sub_237EF8360();
  if ((sub_237EF8360() ^ v59))
  {
    v55 = v98;
    v56 = v99;
    v58 = v93;
    *(v93 + *(v98 + 104)) = 1;
    sub_237DCBED8(v107, v102, v55, v56);
    LODWORD(v109) = 0;
    goto LABEL_9;
  }

  sub_237EF9FD0();
  sub_237EF9FD0();
  v60 = sub_237EF8410();
  v61 = v108;
  v108(v31, v13);
  v61(v34, v13);
  v56 = v99;
  v55 = v98;
  v58 = v93;
  if (v60)
  {
    sub_237DCC7DC(v107, v102, v98, v99);
    LODWORD(v109) = 1;
  }

  else
  {
    sub_237DCD554(v98, v99);
    LODWORD(v109) = 0;
  }

  v62 = v111;
LABEL_12:
  sub_237DCDFB8(v55);
  sub_237EF84E0();
  v63 = v97;
  sub_237EF9FF0();
  v64 = v108;
  v108(v56, v13);
  v67 = *(v62 + 32);
  v66 = v62 + 32;
  v65 = v67;
  v67(v56, v63, v13);
  sub_237EF9FE0();
  v64(v56, v13);
  v67(v56, v63, v13);
  if (v109 && *(v58 + *(v98 + 104)))
  {
    v109 = v65;
    v111 = v66;
    v98 = *(v98 + 88);
    LODWORD(v106) = sub_237EF8400();
    sub_237EF9FA0();
    v68 = v88;
    sub_237EF9CE0();
    sub_237EF9FA0();
    v69 = v85;
    sub_237EF9CE0();
    v70 = v95;
    sub_237EF8330();
    v71 = v108;
    v108(v69, v13);
    v71(v68, v13);
    sub_237EF9760();
    v72 = v94;
    sub_237EF8D30();
    v71(v68, v13);
    v71(v70, v13);
    v73 = v81;
    sub_237EF9750();
    v71(v72, v13);
    v74 = v97;
    v75 = v99;
    if (v106)
    {
      sub_237EF9FF0();
    }

    else
    {
      sub_237EF9FE0();
    }

    v77 = v73;
    v78 = v108;
    v108(v77, v13);
    v78(v75, v13);
    v78(v102, v13);
    v78(v107, v13);
    v78(v105, v13);
    v65 = v109;
    v109(v75, v74, v13);
  }

  else
  {
    v76 = v108;
    v108(v102, v13);
    v76(v107, v13);
    v76(v105, v13);
    v75 = v99;
  }

  v47 = v100;
  v65(v100, v75, v13);
  v46 = 0;
  return __swift_storeEnumTagSinglePayload(v47, v46, 1, v13);
}

uint64_t sub_237DCB254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a3;
  v86 = a2;
  v75 = a5;
  v88 = a4;
  v6 = *(a4 + 16);
  v77 = *(a4 + 24);
  v73 = v6;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 16);
  v76 = *(v8 + 16);
  v9 = *(*(v76 + 8) + 16);
  v90 = *(v76 + 8);
  v64 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v62 = &v62 - v10;
  v71 = *(AssociatedConformanceWitness + 8);
  v70 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v70);
  v69 = &v62 - v11;
  v12 = swift_checkMetadataState();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v82 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v62 - v15;
  MEMORY[0x28223BE20](v16);
  v92 = &v62 - v17;
  MEMORY[0x28223BE20](v18);
  v83 = &v62 - v19;
  MEMORY[0x28223BE20](v20);
  v85 = &v62 - v21;
  MEMORY[0x28223BE20](v22);
  v91 = &v62 - v23;
  MEMORY[0x28223BE20](v24);
  v67 = &v62 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v62 - v27;
  MEMORY[0x28223BE20](v29);
  v79 = &v62 - v30;
  MEMORY[0x28223BE20](v31);
  v78 = &v62 - v32;
  MEMORY[0x28223BE20](v33);
  v65 = &v62 - v34;
  MEMORY[0x28223BE20](v35);
  v80 = &v62 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v62 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v62 - v41;
  v68 = a1;
  sub_237EF8330();
  v74 = v42;
  sub_237EF8D30();
  v44 = v88;
  v43 = v89;
  v87 = v89 + *(v88 + 84);
  v93[0] = v73;
  v93[1] = v12;
  v93[2] = v77;
  v93[3] = AssociatedConformanceWitness;
  v45 = type metadata accessor for LineSearch.LineSearchEvaluation(0, v93);
  v77 = *(v45 + 56);
  sub_237EF8330();
  v46 = *(v44 + 92);
  v47 = v65;
  v88 = v43 + v46;
  v66 = *(v45 + 56);
  v48 = v67;
  sub_237EF8330();
  v49 = v28;
  v50 = v48;
  v51 = v90;
  sub_237EF8D30();
  v52 = *(v81 + 8);
  v52(v50, v12);
  v52(v49, v12);
  v53 = *(v51 + 8);
  v54 = v78;
  v73 = v39;
  v55 = v79;
  v56 = v80;
  v89 = v53;
  sub_237EF9760();
  v52(v55, v12);
  sub_237EF8320();
  v52(v54, v12);
  sub_237EF8D30();
  v52(v47, v12);
  v86 = v8;
  v67 = *(*(v8 + 24) + 8);
  if (sub_237EF8410())
  {
    sub_237EF9410();
    v52(v56, v12);
    (*(v81 + 32))(v56, v47, v12);
  }

  sub_237EF9760();
  sub_237EF9750();
  v52(v47, v12);
  v57 = v78;
  sub_237EF9760();
  sub_237EF9750();
  v52(v57, v12);
  sub_237EF9750();
  v52(v47, v12);
  sub_237EF8330();
  sub_237EF9760();
  sub_237EF8D30();
  v52(v57, v12);
  sub_237EF9750();
  v52(v47, v12);
  sub_237EF9750();
  sub_237EF8330();
  v52(v57, v12);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF8330();
  v52(v57, v12);
  v52(v47, v12);
  sub_237EF9760();
  sub_237EF8D30();
  v52(v57, v12);
  sub_237EF9750();
  v52(v47, v12);
  sub_237EF9760();
  sub_237EF9FD0();
  v52(v57, v12);
  v58 = v79;
  sub_237EF9760();
  sub_237EF9FD0();
  v52(v58, v12);
  v59 = sub_237EF8410();
  v52(v57, v12);
  v52(v47, v12);
  if (v59)
  {
    v52(v82, v12);
    v52(v84, v12);
    v52(v83, v12);
    v52(v85, v12);
    v52(v91, v12);
    v52(v80, v12);
    v52(v73, v12);
    v52(v74, v12);
    return (*(v81 + 32))(v75, v92, v12);
  }

  else
  {
    v61 = v82;
    sub_237EF9750();
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    sub_237EF9D20();
    sub_237EF8330();
    v52(v57, v12);
    v52(v47, v12);
    v52(v61, v12);
    v52(v84, v12);
    v52(v92, v12);
    v52(v83, v12);
    v52(v85, v12);
    v52(v91, v12);
    v52(v80, v12);
    v52(v73, v12);
    return (v52)(v74, v12);
  }
}

uint64_t sub_237DCBED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v6 = *(a3 + 24);
  v67 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v80 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = v59 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = v59 - v13;
  MEMORY[0x28223BE20](v14);
  v73 = v59 - v15;
  MEMORY[0x28223BE20](v16);
  v72 = v59 - v17;
  MEMORY[0x28223BE20](v18);
  v71 = v59 - v19;
  MEMORY[0x28223BE20](v20);
  v65 = v59 - v21;
  MEMORY[0x28223BE20](v22);
  v60 = v59 - v23;
  MEMORY[0x28223BE20](v24);
  v69 = v59 - v25;
  MEMORY[0x28223BE20](v26);
  v68 = v59 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = v59 - v29;
  MEMORY[0x28223BE20](v31);
  v81 = v59 - v32;
  MEMORY[0x28223BE20](v33);
  v70 = v59 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = v59 - v36;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = *(AssociatedConformanceWitness + 16);
  v61 = a1;
  v59[1] = a2;
  sub_237EF8330();
  v64 = *(v39 + 2);
  v78 = *(v64 + 8);
  v62 = v37;
  sub_237EF8D30();
  v40 = a3;
  v41 = *(a3 + 84);
  v42 = v77;
  v43 = v77 + v41;
  v76 = v77 + v41;
  v82[0] = v67;
  v82[1] = AssociatedTypeWitness;
  v82[2] = v6;
  v82[3] = AssociatedConformanceWitness;
  v44 = type metadata accessor for LineSearch.LineSearchEvaluation(0, v82);
  v45 = v60;
  v67 = v43 + *(v44 + 56);
  sub_237EF8330();
  v77 = v42 + *(v40 + 92);
  v46 = v65;
  v66 = v77 + *(v44 + 56);
  sub_237EF8330();
  v47 = v69;
  v48 = v46;
  v49 = v78;
  sub_237EF8D30();
  v50 = *(v75 + 8);
  v50(v48, AssociatedTypeWitness);
  v50(v45, AssociatedTypeWitness);
  v51 = v68;
  v59[2] = *(v49 + 8);
  sub_237EF9760();
  v50(v47, AssociatedTypeWitness);
  sub_237EF8320();
  v50(v51, AssociatedTypeWitness);
  sub_237EF8D30();
  v50(v30, AssociatedTypeWitness);
  v65 = v39;
  v60 = *(*(v39 + 3) + 8);
  if (sub_237EF8400())
  {
    v52 = v81;
    sub_237EF9410();
    v50(v52, AssociatedTypeWitness);
    (*(v75 + 32))(v52, v30, AssociatedTypeWitness);
  }

  sub_237EF9760();
  sub_237EF9750();
  v50(v30, AssociatedTypeWitness);
  v53 = v68;
  sub_237EF9760();
  sub_237EF9750();
  v50(v53, AssociatedTypeWitness);
  sub_237EF9750();
  v50(v30, AssociatedTypeWitness);
  sub_237EF8330();
  sub_237EF9760();
  sub_237EF8D30();
  v50(v53, AssociatedTypeWitness);
  sub_237EF9750();
  v50(v30, AssociatedTypeWitness);
  sub_237EF9760();
  sub_237EF8330();
  v50(v30, AssociatedTypeWitness);
  sub_237EF9760();
  sub_237EF8D30();
  v50(v53, AssociatedTypeWitness);
  sub_237EF9750();
  v50(v30, AssociatedTypeWitness);
  sub_237EF9760();
  sub_237EF9FD0();
  v50(v53, AssociatedTypeWitness);
  v54 = v69;
  sub_237EF9760();
  sub_237EF9FD0();
  v50(v54, AssociatedTypeWitness);
  v55 = sub_237EF8400();
  v50(v53, AssociatedTypeWitness);
  v50(v30, AssociatedTypeWitness);
  v50(v74, AssociatedTypeWitness);
  v50(v73, AssociatedTypeWitness);
  v50(v72, AssociatedTypeWitness);
  v50(v71, AssociatedTypeWitness);
  v50(v81, AssociatedTypeWitness);
  v50(v70, AssociatedTypeWitness);
  v50(v62, AssociatedTypeWitness);
  if (v55)
  {
    v56 = v80;
  }

  else
  {
    v56 = v79;
  }

  if (v55)
  {
    v57 = v79;
  }

  else
  {
    v57 = v80;
  }

  v50(v56, AssociatedTypeWitness);
  return (*(v75 + 32))(v63, v57, AssociatedTypeWitness);
}

uint64_t sub_237DCC7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a4;
  v109 = a3;
  v6 = *(a3 + 16);
  v119 = *(a3 + 24);
  v114 = v6;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 8);
  v9 = AssociatedConformanceWitness;
  v100 = AssociatedConformanceWitness;
  v94 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v92 = v86 - v10;
  v111 = *(v9 + 16);
  v106 = *(v111 + 16);
  v11 = *(v106 + 8);
  v118 = *(v11 + 16);
  v115 = v11;
  v12 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v12);
  v99 = (v86 - v13);
  v14 = swift_checkMetadataState();
  v116 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v113 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v105 = v86 - v17;
  MEMORY[0x28223BE20](v18);
  v112 = v86 - v19;
  MEMORY[0x28223BE20](v20);
  v107 = v86 - v21;
  MEMORY[0x28223BE20](v22);
  v104 = v86 - v23;
  MEMORY[0x28223BE20](v24);
  v103 = v86 - v25;
  MEMORY[0x28223BE20](v26);
  v89 = v86 - v27;
  MEMORY[0x28223BE20](v28);
  v87 = v86 - v29;
  MEMORY[0x28223BE20](v30);
  v88 = v86 - v31;
  MEMORY[0x28223BE20](v32);
  v90 = v86 - v33;
  MEMORY[0x28223BE20](v34);
  v101 = v86 - v35;
  MEMORY[0x28223BE20](v36);
  v117 = v86 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = v86 - v39;
  MEMORY[0x28223BE20](v41);
  v108 = v86 - v42;
  MEMORY[0x28223BE20](v43);
  v102 = v86 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = v86 - v46;
  v91 = a1;
  v48 = a2;
  v49 = v111;
  sub_237EF8330();
  v95 = v47;
  sub_237EF8D30();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  v50 = v109;
  v51 = v110;
  v118 = v110 + v109[21];
  v120[0] = v114;
  v120[1] = v14;
  v120[2] = v119;
  v120[3] = v100;
  v52 = type metadata accessor for LineSearch.LineSearchEvaluation(0, v120);
  v98 = *(v52 + 56);
  v53 = v87;
  v86[0] = v48;
  v54 = v49;
  sub_237EF8330();
  v119 = v51 + v50[23];
  v97 = *(v52 + 56);
  v55 = v89;
  v56 = v54;
  sub_237EF8330();
  v57 = v88;
  v58 = v115;
  sub_237EF8D30();
  v60 = v116 + 8;
  v59 = *(v116 + 8);
  v59(v55, v14);
  v59(v53, v14);
  v61 = v90;
  v114 = *(v58 + 8);
  sub_237EF9760();
  v62 = v108;
  v59(v57, v14);
  v63 = *(*(v56 + 24) + 8);
  v64 = v117;
  v65 = v101;
  sub_237EF9FE0();
  v59(v61, v14);
  v59(v65, v14);
  sub_237EF8320();
  v59(v64, v14);
  sub_237EF8D30();
  v99 = v59;
  v59(v40, v14);
  v66 = v60;
  v100 = v63;
  if (sub_237EF8400())
  {
    sub_237EF9410();
    (*(v116 + 40))(v62, v40, v14);
  }

  sub_237EF9760();
  sub_237EF9750();
  v67 = v99;
  v99(v40, v14);
  v68 = v117;
  sub_237EF9760();
  sub_237EF9750();
  v67(v68, v14);
  sub_237EF9750();
  v67(v40, v14);
  sub_237EF8330();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v69 = sub_237EF8410();
  v67(v40, v14);
  v86[1] = v66;
  if (v69 & 1) != 0 && (sub_237EF9FD0(), sub_237EF9FA0(), v70 = v117, sub_237EF9CE0(), v71 = sub_237EF8430(), v67(v70, v14), v67(v40, v14), (v71))
  {
    v72 = v117;
    sub_237EF9760();
    sub_237EF8D30();
    v67(v72, v14);
    sub_237EF9750();
    v73 = v40;
    v67(v40, v14);
  }

  else
  {
    v74 = sub_237EF8400();
    v75 = v110 + v109[24];
    v76 = v112;
    v73 = v40;
    if (v74)
    {
      v77 = sub_237EF84E0();
      (*(v116 + 16))(v76, v75 + *(v77 + 36), v14);
    }

    else
    {
      (*(v116 + 16))(v112, v75, v14);
    }

    v72 = v117;
  }

  sub_237EF9760();
  sub_237EF8330();
  v78 = v99;
  v99(v73, v14);
  sub_237EF9760();
  sub_237EF8D30();
  v78(v72, v14);
  sub_237EF9750();
  v78(v73, v14);
  LODWORD(v118) = *(v110 + v109[26]);
  sub_237EF9760();
  sub_237EF9FD0();
  v78(v72, v14);
  v79 = v101;
  sub_237EF9760();
  sub_237EF9FD0();
  v78(v79, v14);
  if (v118 == 1)
  {
    v80 = sub_237EF8410();
  }

  else
  {
    v80 = sub_237EF8400();
  }

  v81 = v80;
  v82 = v108;
  v78(v72, v14);
  v78(v73, v14);
  v78(v105, v14);
  v78(v107, v14);
  v78(v104, v14);
  v78(v103, v14);
  v78(v82, v14);
  v78(v102, v14);
  v78(v95, v14);
  if (v81)
  {
    v83 = v113;
  }

  else
  {
    v83 = v112;
  }

  if (v81)
  {
    v84 = v112;
  }

  else
  {
    v84 = v113;
  }

  v78(v83, v14);
  return (*(v116 + 32))(v96, v84, v14);
}

uint64_t sub_237DCD554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v74 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v77 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = *(AssociatedConformanceWitness + 16);
  v68 = *(v82 + 16);
  v79 = *(v68 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v8);
  v80 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](&v63 - v14);
  v16 = &v63 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  MEMORY[0x28223BE20](v20);
  v81 = &v63 - v21;
  MEMORY[0x28223BE20](v22);
  v83 = &v63 - v23;
  MEMORY[0x28223BE20](v24);
  v30 = *(v3 + *(a1 + 104));
  v75 = v31;
  if (v30 == 1)
  {
    v72 = v25;
    v73 = v27;
    v67 = v28;
    v78 = &v63 - v26;
    v66 = v29;
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    sub_237EF9D20();
    v32 = v3 + *(a1 + 92);
    v84[0] = v77;
    v84[1] = v8;
    v84[2] = v6;
    v84[3] = AssociatedConformanceWitness;
    v33 = type metadata accessor for LineSearch.LineSearchEvaluation(0, v84);
    v34 = v3 + *(a1 + 88);
    v35 = *(v79 + 8);
    v76 = v32;
    v77 = v34;
    v36 = v72;
    sub_237EF9760();
    v71 = v19;
    v37 = v36;
    sub_237EF8D30();
    v38 = *(v75 + 8);
    v38(v37, v8);
    v38(v16, v8);
    sub_237EF9760();
    v39 = v81;
    v40 = v71;
    sub_237EF8330();
    v38(v16, v8);
    v38(v40, v8);
    AssociatedConformanceWitness = *(v33 + 56);
    v41 = v83;
    v65 = v35;
    sub_237EF9750();
    v38(v39, v8);
    v69 = *(v33 + 56);
    sub_237EF9750();
    v38(v41, v8);
    v42 = *(*(v82 + 24) + 8);
    sub_237EF9FD0();
    v43 = v71;
    sub_237EF9FD0();
    sub_237EF9FD0();
    v44 = v81;
    v63 = v42;
    sub_237EF9FE0();
    v38(v16, v8);
    v38(v43, v8);
    sub_237EF9FE0();
    v38(v44, v8);
    v38(v41, v8);
    sub_237EF8330();
    sub_237EF8D30();
    sub_237EF8330();
    v45 = v72;
    sub_237EF8330();
    sub_237EF8D30();
    v38(v45, v8);
    v64 = v16;
    v38(v16, v8);
    v46 = v81;
    sub_237EF9760();
    v47 = v46;
    v38(v43, v8);
    v48 = v83;
    sub_237EF8320();
    v38(v47, v8);
    sub_237EF8D30();
    v38(v48, v8);
    if (sub_237EF8400())
    {
      v49 = v83;
      v50 = v80;
      sub_237EF9410();
      v38(v50, v8);
      (*(v75 + 32))(v50, v49, v8);
    }

    v51 = v81;
    sub_237EF9760();
    sub_237EF9750();
    v38(v51, v8);
    v52 = v64;
    sub_237EF9760();
    v53 = v71;
    sub_237EF9750();
    v38(v52, v8);
    sub_237EF9750();
    v38(v53, v8);
    sub_237EF8330();
    v54 = v72;
    sub_237EF9760();
    sub_237EF8D30();
    v38(v54, v8);
    sub_237EF9750();
    v38(v52, v8);
    v38(v53, v8);
    v38(v51, v8);
    v38(v83, v8);
    v38(v80, v8);
    v38(v73, v8);
    v38(v67, v8);
    v38(v66, v8);
    return (v38)(v78, v8);
  }

  else
  {
    v56 = sub_237EF8400();
    v57 = *(a1 + 96);
    v58 = v3 + v57;
    if (v56)
    {
      v59 = *(sub_237EF84E0() + 36);
      v60 = v74;
      v61 = *(v75 + 16);
      v62 = v58 + v59;
    }

    else
    {
      v60 = v74;
      v61 = *(v75 + 16);
      v62 = v3 + v57;
    }

    return v61(v60, v62, v8);
  }
}

uint64_t sub_237DCDFB8(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = v2 + *(a1 + 92);
  v23[0] = v5;
  v23[1] = AssociatedTypeWitness;
  v23[2] = v4;
  v23[3] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for LineSearch.LineSearchEvaluation(0, v23);
  v9 = *(v8 + 52);
  v10 = v2 + *(a1 + 84);
  if (sub_237EF8400())
  {
    v11 = v2 + *(a1 + 88);
    v12 = *(*(AssociatedTypeWitness - 8) + 24);
    v12(v11, v7, AssociatedTypeWitness);
    v12(v11 + *(v8 + 52), v7 + v9, AssociatedTypeWitness);
    return (v12)(v11 + *(v8 + 56), v7 + *(v8 + 56), AssociatedTypeWitness);
  }

  else
  {
    v22 = *(v8 + 56);
    v14 = sub_237EF8360();
    v21 = *(v8 + 56);
    if ((sub_237EF8360() ^ v14))
    {
      v15 = *(AssociatedTypeWitness - 8);
      v17 = v2 + *(a1 + 88);
      v18 = *(v15 + 24);
      v18(v17, v10, AssociatedTypeWitness);
      v18(v17 + *(v8 + 52), v10 + v9, AssociatedTypeWitness);
      v19 = v17 + *(v8 + 56);
      v16 = v21;
      v18(v19, v10 + v21, AssociatedTypeWitness);
    }

    else
    {
      v15 = *(AssociatedTypeWitness - 8);
      v16 = v21;
    }

    v20 = *(v15 + 24);
    v20(v10, v7, AssociatedTypeWitness);
    v20(v10 + v9, v7 + v9, AssociatedTypeWitness);
    return (v20)(v10 + v16, v7 + v22, AssociatedTypeWitness);
  }
}

uint64_t sub_237DCE274(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237DCE2EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80) + ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_237DCE444(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80) + ((v9 + *(v7 + 80)) & ~*(v7 + 80))) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237DCE66C(uint64_t a1)
{
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = AssociatedTypeWitness;
  if (v4 <= 0x3F)
  {
    v37 = AssociatedTypeWitness;
    v38 = AssociatedTypeWitness;
    v25 = 0;
    v39 = AssociatedTypeWitness;
    v40 = AssociatedTypeWitness;
    v26 = 0;
    v41 = AssociatedTypeWitness;
    v42 = MEMORY[0x277D83B88];
    v5 = swift_checkMetadataState();
    v6 = v5;
    if (v7 > 0x3F)
    {
      return v5;
    }

    else
    {
      v27 = 0;
      v43 = v5;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v10 = type metadata accessor for L2NormRegularizer(319, v3, AssociatedConformanceWitness, v9);
      if (v12 > 0x3F)
      {
        return v10;
      }

      v28 = 0;
      v44 = v10;
      v10 = type metadata accessor for DenseVector(319, v3, AssociatedConformanceWitness, v11);
      if (v13 > 0x3F)
      {
        return v10;
      }

      v45 = v10;
      v46 = v3;
      v29 = 0;
      v47 = v10;
      v48 = v3;
      v30 = 0;
      v49 = v3;
      v21 = v6;
      v22 = v3;
      v23 = v1;
      v24 = AssociatedConformanceWitness;
      v10 = type metadata accessor for LineSearch.LineSearchEvaluation(319, &v21);
      if (v14 > 0x3F)
      {
        return v10;
      }

      v31 = 0;
      v50 = v10;
      v51 = v10;
      v32 = 0;
      v52 = v10;
      v10 = sub_237EF84E0();
      if (v16 > 0x3F)
      {
        return v10;
      }

      v53 = v10;
      v54 = v3;
      v33 = 0;
      v55 = MEMORY[0x277D839B0];
      v56 = MEMORY[0x277D839B0];
      v34 = 0;
      v57 = MEMORY[0x277D839B0];
      v10 = type metadata accessor for OptimizerState(319, v3, AssociatedConformanceWitness, v15);
      if (v17 > 0x3F)
      {
        return v10;
      }

      else
      {
        v35 = 0;
        v58 = v10;
        v21 = v6;
        v22 = v3;
        v23 = v1;
        v24 = AssociatedConformanceWitness;
        v18 = type metadata accessor for LineSearch.LineSearchResult(319, &v21);
        v3 = v18;
        if (v19 <= 0x3F)
        {
          v36 = 0;
          v59 = v18;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_237DCE878(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    result = 0x7FFFFFFFLL;
  }

  else
  {
    result = v11;
  }

  if (v8 <= result)
  {
    v13 = result;
  }

  else
  {
    v13 = *(v7 + 84);
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = *(v7 + 80);
  v16 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v17 = v14 + v15;
  v18 = v14 + v15 + ((v14 + v15) & ~v15);
  v19 = v14 + v15 + (v18 & ~v15);
  v20 = v14 + 7;
  v21 = v16 + 8;
  v22 = *(*(v5 - 8) + 64) + 7;
  v23 = v15 + 8;
  v24 = v15 | 7;
  v25 = (v15 | 7) + v14;
  v26 = v25 + 3;
  if (v13 >= a2)
  {
LABEL_31:
    if (v8 >= result)
    {
      v35 = a1;
    }

    else
    {
      v35 = ((v21 + ((v20 + ((v17 + ((v17 + ((v17 + ((a1 + v17) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
      if (v10 == v13)
      {
        v8 = v10;
        AssociatedTypeWitness = v5;
      }

      else
      {
        v36 = ((v35 + v22) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) == 0)
        {
          v37 = *v36;
          if (v37 >= 0xFFFFFFFF)
          {
            LODWORD(v37) = -1;
          }

          return (v37 + 1);
        }

        v34 = ~v15;
        v35 = ((v15 + ((((((v26 + ((v18 + ((v19 + ((v19 + ((v19 + ((v17 + ((v17 + ((v23 + ((v20 + ((v23 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) & v34)) & 0xFFFFFFFFFFFFFFF8)) & v34)) & v34)) & v34)) & v34)) & v34)) & v34)) & v34)) & ~v24) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32) & v34);
      }
    }

    return __swift_getEnumTagSinglePayload(v35, v8, AssociatedTypeWitness);
  }

  v27 = (((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v25 + ((v17 + ((v17 + ((v15 + 48) & ~v15)) & ~v15)) & ~v15) + ((v26 + ((v18 + ((v19 + ((v19 + ((v19 + ((v17 + ((v17 + ((v23 + ((v20 + ((v23 + ((((v22 + ((v21 + ((v20 + ((v17 + (v19 & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v24) + 1) & ~v24) + 8;
  if ((v27 & 0xFFFFFFF8) != 0)
  {
    v28 = 2;
  }

  else
  {
    v28 = a2 - v13 + 1;
  }

  if (v28 >= 0x10000)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 0x100)
  {
    v29 = 1;
  }

  if (v28 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  switch(v30)
  {
    case 1:
      v31 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 2:
      v31 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v31 = *(a1 + v27);
      if (!v31)
      {
        goto LABEL_31;
      }

LABEL_28:
      v32 = v31 - 1;
      if ((v27 & 0xFFFFFFF8) != 0)
      {
        v32 = 0;
        v33 = *a1;
      }

      else
      {
        v33 = 0;
      }

      result = v13 + (v33 | v32) + 1;
      break;
    default:
      goto LABEL_31;
  }

  return result;
}

void sub_237DCEC30(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v10 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = *(v9 + 80);
  v16 = v14 + v15 + ((v14 + v15) & ~v15);
  v17 = v14 + v15 + (v16 & ~v15);
  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64) + 7;
  v20 = v14 + (v15 | 7);
  v21 = (((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((v14 + v15 + ((v14 + v15 + ((v15 + 48) & ~v15)) & ~v15)) & ~v15) + ((v20 + ((v16 + ((v17 + ((v17 + ((v17 + ((v14 + v15 + ((v14 + v15 + ((v15 + 8 + ((v14 + 7 + ((v15 + 8 + ((((v19 + ((v18 + 8 + ((v14 + 7 + ((v14 + v15 + (v17 & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15) + 3) & ~(v15 | 7)) + 1) & ~(v15 | 7)) + 8;
  if (v13 >= a3)
  {
    v24 = 0;
  }

  else
  {
    if ((((v14 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v20 + ((v14 + v15 + ((v14 + v15 + ((v15 + 48) & ~v15)) & ~v15)) & ~v15) + ((v20 + ((v16 + ((v17 + ((v17 + ((v17 + ((v14 + v15 + ((v14 + v15 + ((v15 + 8 + ((v14 + 7 + ((v15 + 8 + ((((v19 + ((v18 + 8 + ((v14 + 7 + ((v14 + v15 + (v17 & ~v15)) & ~v15)) & 0xFFFFFFF8)) & ~v18)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v15)) & 0xFFFFFFF8)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15) + 3) & ~(v15 | 7)) + 1) & ~(v15 | 7)) == -8)
    {
      v22 = a3 - v13 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  if (a2 <= v13)
  {
    switch(v24)
    {
      case 1:
        *(a1 + v21) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *(a1 + v21) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v21) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v10 == v13)
        {
          v27 = a1;
          v28 = a2;
          v12 = v10;
        }

        else
        {
          v27 = ((v18 + 8 + ((v14 + 7 + ((v14 + v15 + ((v14 + v15 + ((v14 + v15 + ((a1 + v14 + v15) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18);
          if (v12 != v13)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v29 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v29 = (a2 - 1);
            }

            *((v27 + v19) & 0xFFFFFFFFFFFFFFF8) = v29;
            return;
          }

          v28 = a2;
          AssociatedTypeWitness = v7;
        }

        __swift_storeEnumTagSinglePayload(v27, v28, v12, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    if ((((v14 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v20 + ((v14 + v15 + ((v14 + v15 + ((v15 + 48) & ~v15)) & ~v15)) & ~v15) + ((v20 + ((v16 + ((v17 + ((v17 + ((v17 + ((v14 + v15 + ((v14 + v15 + ((v15 + 8 + ((v14 + 7 + ((v15 + 8 + ((((v19 + ((v18 + 8 + ((v14 + 7 + ((v14 + v15 + (v17 & ~v15)) & ~v15)) & 0xFFFFFFF8)) & ~v18)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v15)) & 0xFFFFFFF8)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15) + 3) & ~(v15 | 7)) + 1) & ~(v15 | 7)) == -8)
    {
      v25 = a2 - v13;
    }

    else
    {
      v25 = 1;
    }

    if ((((v14 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v20 + ((v14 + v15 + ((v14 + v15 + ((v15 + 48) & ~v15)) & ~v15)) & ~v15) + ((v20 + ((v16 + ((v17 + ((v17 + ((v17 + ((v14 + v15 + ((v14 + v15 + ((v15 + 8 + ((v14 + 7 + ((v15 + 8 + ((((v19 + ((v18 + 8 + ((v14 + 7 + ((v14 + v15 + (v17 & ~v15)) & ~v15)) & 0xFFFFFFF8)) & ~v18)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v15)) & 0xFFFFFFF8)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15) + 3) & ~(v15 | 7)) + 1) & ~(v15 | 7)) != -8)
    {
      v26 = ~v13 + a2;
      bzero(a1, v21);
      *a1 = v26;
    }

    switch(v24)
    {
      case 1:
        *(a1 + v21) = v25;
        break;
      case 2:
        *(a1 + v21) = v25;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v21) = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237DCEFAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_237DCF030(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_25;
        }

LABEL_21:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_25;
    }

    return (v16 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(result, v5, v4);
  }

  v17 = *(result + v6);
  if (v17 < 2)
  {
    return 0;
  }

  v16 = (v17 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_237DCF164(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if ((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if ((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if ((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, (((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_13_34(__n128 a1)
{

  return sub_237EF9FA0();
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return sub_237EF8D30();
}

uint64_t OUTLINED_FUNCTION_32_17(uint64_t a1, uint64_t a2)
{

  return sub_237EF9FB0();
}

uint64_t sub_237DCF510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_0();
  v12 = v11;
  (*(*(v13 - 8) + 32))(v11, v14);
  v17 = v8;
  v18 = v7;
  v19 = v6;
  v20 = a6;
  v15 = type metadata accessor for ComposedEstimator(0, &v17);
  return (*(*(v7 - 8) + 32))(v12 + *(v15 + 52), v9, v7);
}

uint64_t sub_237DCF5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_0();
  v11 = v10;
  v14 = type metadata accessor for TransformerToEstimatorAdaptor(0, v12, v13, v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  TransformerToEstimatorAdaptor.init(_:)(v9, v7, &v19 - v15);
  OUTLINED_FUNCTION_0_64();
  WitnessTable = swift_getWitnessTable();
  return sub_237DCF510(v11, v16, v8, v14, v6, WitnessTable);
}

uint64_t sub_237DCF6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[11] = a5[5];
  v8[12] = a5[3];
  v8[13] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v8[14] = v15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v16 = a5[4];
  v8[17] = v16;
  v17 = a5[2];
  v8[18] = v17;
  v8[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v8[20] = v18;
  v8[21] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[22] = v19;
  OUTLINED_FUNCTION_15_0();
  v23 = (v20 + *v20);
  v21 = swift_task_alloc();
  v8[23] = v21;
  *v21 = v8;
  v21[1] = sub_237DCF930;

  return v23(v19, a2, a3, a4, a6, a7, v17, v16);
}

uint64_t sub_237DCF930()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  *(v6 + 192) = v0;

  if (v0)
  {
    v7 = sub_237C821C0;
  }

  else
  {
    v7 = sub_237DCFA34;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237DCFA34(uint64_t a1)
{
  v2 = v1[24];
  sub_237EF8B90();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_7_4();
    v4(v3);

    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v1[25] = v7;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1[26] = AssociatedConformanceWitness;
    *v7 = v1;
    v7[1] = sub_237DCFB94;
    v9 = v1[19];
    v10 = v1[8];
    v11 = v1[9];
    v12 = v1[5];
    v13 = v1[6];
    v14 = v1[4];

    return Transformer.applied<A>(to:eventHandler:)(v14, v12, v13, v9, v10, AssociatedConformanceWitness, v11);
  }
}

uint64_t sub_237DCFB94()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;
  *(v2 + 224) = v0;

  if (v0)
  {
    v5 = sub_237C82244;
  }

  else
  {
    v5 = sub_237DCFC9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237DCFC9C(uint64_t a1)
{
  v2 = v1[28];
  sub_237EF8B90();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_7_4();
    v4(v3);

    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    v1[2] = v1[27];
    OUTLINED_FUNCTION_15_0();
    v16 = (v7 + *v7);
    v8 = swift_task_alloc();
    v1[29] = v8;
    swift_getAssociatedTypeWitness();
    v9 = sub_237EF8A60();
    WitnessTable = swift_getWitnessTable();
    *v8 = v1;
    v8[1] = sub_237DCFEBC;
    v11 = v1[16];
    v13 = v1[11];
    v12 = v1[12];
    v14 = v1[5];
    v15 = v1[6];

    return (v16)(v11, v1 + 2, v14, v15, v9, WitnessTable, v12, v13);
  }
}

uint64_t sub_237DCFEBC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    v7 = sub_237C822D8;
  }

  else
  {

    v7 = sub_237DCFFC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237DCFFC8()
{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v10 = v0[3];
  v11 = v0[26];
  (*(v0[20] + 32))(v1, v0[22], v2);
  (*(v5 + 32))(v4, v3, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v1, v4, v2, v6, v11, AssociatedConformanceWitness, v10);

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t sub_237DD00F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a3 + 32) + 32))(a1, a2, *(a3 + 16), *(a3 + 32));
  if (!v3)
  {
    v12[5] = *(a3 + 52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(a3 + 40);
    v11 = *(a3 + 24);
    v12[0] = AssociatedTypeWitness;
    v12[1] = swift_getAssociatedTypeWitness();
    v12[2] = swift_getAssociatedConformanceWitness();
    v12[3] = swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTransformer(0, v12);
    return (*(v9 + 32))(a1 + *(v10 + 52), a2, v11, v9);
  }

  return result;
}

uint64_t sub_237DD025C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = a2[3];
  v38 = a2[5];
  v40 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v31 - v11;
  v12 = a2[4];
  v13 = a2[2];
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v36 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v31 - v21;
  v23 = *(v12 + 40);
  v37 = a1;
  v24 = v41;
  result = v23(a1, v13, v12, v20);
  if (!v24)
  {
    v31 = v13;
    v32 = v18;
    v41 = v14;
    v26 = AssociatedTypeWitness;
    (*(v38 + 40))(v37, v40, v38);
    v27 = v32;
    v28 = v41;
    (*(v36 + 32))(v32, v22, v41);
    (*(v33 + 32))(v9, v39, v26);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v27, v9, v28, v26, AssociatedConformanceWitness, v30, v34);
  }

  return result;
}

uint64_t sub_237DD055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C92CC8;

  return sub_237DCF6AC(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t Estimator.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_237DD069C(a1, a2, a3, a4, a5, sub_237DCF5CC);
}

{
  return sub_237DD069C(a1, a2, a3, a4, a5, sub_237DCF510);
}

uint64_t sub_237DD069C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_19_0();
  v12 = v11;
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_1();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v9, v19);
  (*(v14 + 16))(v17, v12, v8);
  return a6(v21, v17, v9, v8, v7, v6);
}

uint64_t sub_237DD082C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237DD09F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_81()
{

  return swift_getWitnessTable();
}

uint64_t sub_237DD0CC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a6;
  v12 = sub_237EF90F0();
  v26 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_237CBA478(a2, v29);
  v15 = *(v6 + 16);
  _s19IntermediateDecoderCMa();
  swift_allocObject();
  sub_237EF8260();
  sub_237C9FEDC(a3, v28);
  v16 = v15;
  v17 = a1;
  sub_237CB2D00(v29, MEMORY[0x277D84F90], a3, v16);
  v18 = v29[5];
  sub_237CB7708(a2, a1, a4, a5, v14);
  if (!v18)
  {
    v20 = v26;
    v19 = v27;
    if (__swift_getEnumTagSinglePayload(v14, 1, a4) != 1)
    {

      return (*(*(a4 - 8) + 32))(v19, v14, a4);
    }

    (*(v20 + 8))(v14, v12);
    v21 = sub_237EF93E0();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v23 = v17;
    sub_237EF93D0();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84170], v21);
    swift_willThrow();
  }
}

uint64_t sub_237DD0F4C()
{

  return swift_deallocClassInstance();
}

void sub_237DD0FB8(uint64_t a1)
{
  v2 = v1;
  v9[1] = *MEMORY[0x277D85DE8];
  sub_237EF5EC0();
  v3 = sub_237EF8560();

  v4 = [v1 fileExistsAtPath_];

  if (v4)
  {
    v5 = sub_237EF5E50();
    v9[0] = 0;
    v6 = [v2 removeItemAtURL:v5 error:v9];

    if (v6)
    {
      v7 = v9[0];
    }

    else
    {
      v8 = v9[0];
      sub_237EF5DC0();

      swift_willThrow();
    }
  }
}

uint64_t sub_237DD10BC(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  sub_237EF5EC0();
  v2 = sub_237EF8560();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v5];

  return (v3 & v5);
}

uint64_t TimeSeriesClassifier.Model.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = a5;
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
  OUTLINED_FUNCTION_1_1();
  *(v8 + 144) = v12;
  *(v8 + 152) = OUTLINED_FUNCTION_27_0();
  v13 = *--v11;
  *(v8 + 160) = v13;
  *(v8 + 168) = OUTLINED_FUNCTION_27_0();
  v14 = v11[3];
  *(v8 + 176) = v14;
  v15 = v11[4];
  *(v8 + 184) = v15;
  v16 = v11[5];
  *(v8 + 192) = v16;
  v17 = v11[6];
  *(v8 + 200) = v17;
  v18 = v11[7];
  *(v8 + 208) = v18;
  v19 = v11[8];
  *(v8 + 216) = v19;
  v20 = v11[9];
  *(v8 + 224) = v20;
  v21 = v11[10];
  *(v8 + 232) = v21;
  *(v8 + 16) = v14;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  *&v23 = v18;
  *(&v23 + 1) = v19;
  *(v8 + 24) = v15;
  *(v8 + 32) = a6;
  *(v8 + 56) = v23;
  *(v8 + 40) = v22;
  *(v8 + 72) = v20;
  *(v8 + 80) = v21;
  *(v8 + 88) = a7;
  v24 = _s18PredictionSequenceVMa(0, v8 + 16);
  *(v8 + 240) = v24;
  OUTLINED_FUNCTION_18(v24);
  *(v8 + 248) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_237DD12F8()
{
  v18 = *(v0 + 248);
  v20 = *(v0 + 240);
  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v1 = *(v0 + 184);
  v17 = *(v0 + 224);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v19 = *(v0 + 96);
  (*(*(v0 + 160) + 16))(v2, v6, v7);
  (*(v4 + 16))(v3, v9, v8);
  sub_237DD14A4(v2, v3, *(v6 + *(v7 + 104)), v8, v18, v16, *(&v16 + 1), v17, v15, v5);
  v11 = type metadata accessor for ClassificationDistribution(0, v1, v15, v10);
  WitnessTable = swift_getWitnessTable();
  AnyTemporalSequence.init<A>(_:)(v18, v11, v20, WitnessTable, v19);

  OUTLINED_FUNCTION_10_3();

  return v13();
}

uint64_t sub_237DD14A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = OUTLINED_FUNCTION_24_25();
  v18 = type metadata accessor for TimeSeriesClassifier.Model(v16, v17);
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = OUTLINED_FUNCTION_24_25();
  v21 = _s18PredictionSequenceVMa(v19, v20);
  result = (*(*(a6 - 8) + 32))(a9 + *(v21 + 100), a2, a6);
  *(a9 + *(v21 + 104)) = a3;
  return result;
}

uint64_t sub_237DD15E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6B728;

  return TimeSeriesClassifier.Model.applied<A>(to:eventHandler:)(a1, a2, v13, v14, a7, a5, a6);
}

uint64_t sub_237DD16B0(_OWORD *a1)
{
  v1 = *(a1 + 40);
  v6 = a1[1];
  v7 = v1;
  v2 = *(a1 + 72);
  v8 = *(a1 + 56);
  v9 = v2;
  result = type metadata accessor for TimeSeriesClassifier.Model(319, &v6);
  if (v4 <= 0x3F)
  {
    v10 = 0;
    *&v6 = result;
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v11 = 0;
      *(&v6 + 1) = result;
      *&v7 = MEMORY[0x277D83B88];
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237DD175C(int *a1, unsigned int a2, uint64_t a3)
{
  v76 = sub_237EF6750();
  v90 = *(v76 - 8);
  v3 = *(v90 + 84);
  v70 = sub_237EF6930();
  v86 = *(v70 - 8);
  v4 = *(v86 + 84);
  v69 = sub_237EF6C30();
  v83 = *(v69 - 8);
  v5 = *(v83 + 84);
  v74 = v5;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v78 = v3;
  v75 = v5;
  if (v5 > v3)
  {
    v3 = v5;
  }

  v73 = sub_237EF6820();
  v81 = *(v73 - 8);
  v72 = *(v81 + 84);
  if (v72 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = *(v81 + 84);
  }

  v68 = sub_237EF6580();
  v7 = *(v68 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD38, &unk_237F15760);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v71 = v9;
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  v79 = v6;
  v77 = v16;
  if (v16 <= v6)
  {
    v16 = v6;
  }

  v17 = *(a3 + 32);
  v18 = *(v17 - 8);
  if (v16 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v16;
  }

  v20 = *(v18 + 84);
  if (v20 <= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = *(v18 + 84);
  }

  v89 = v8;
  v22 = v8 == 0;
  v23 = *(v90 + 64);
  v24 = *(v86 + 80);
  v25 = *(v83 + 80);
  v26 = *(v86 + 64);
  v27 = *(v83 + 64);
  v28 = *(v81 + 80);
  v29 = *(v81 + 64);
  v30 = *(v7 + 80);
  v31 = *(v11 + 80);
  v32 = *(v7 + 64);
  if (v22)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = *(*(v10 - 8) + 64);
  if (v12)
  {
    v35 = 3;
  }

  else
  {
    v35 = 4;
  }

  v36 = *(v18 + 80);
  v37 = *(v18 + 64);
  if (v15)
  {
    v38 = 4;
  }

  else
  {
    v38 = 5;
  }

  if (!a2)
  {
    return 0;
  }

  v87 = v15;
  v85 = v10;
  v39 = *(v83 + 80) | v24;
  v82 = v26 + v25;
  v84 = *(v83 + 80);
  v40 = (v82 & ~v25) + v27;
  v41 = (v28 | 7) + v40;
  v42 = ((v29 + 7 + ((v29 + v28) & ~v28)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v43 = v30 | v31 | 7;
  v44 = ((((v29 + 7 + ((v42 + v28 + ((v42 + (v28 | 7) + ((v41 + ((v40 + v39 + ((v40 + v39 + ((v23 + v39) & ~v39)) & ~v39)) & ~v39)) & ~(v28 | 7))) & ~(v28 | 7))) & ~v28)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v43 + 8;
  v45 = v33 + 3;
  v46 = (v31 + 8 + ((((((v33 + 3 + ((v30 + 16) & ~v30)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v31;
  v47 = v34 + v31;
  v48 = ((v35 + v34 + ((v34 + v31 + ((v34 + v31 + v46) & ~v31)) & ~v31)) & 0xFFFFFFFFFFFFFFFCLL) + v38 + 7;
  v49 = ((((((((((((v48 + (v44 & ~v43)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v36 + 8;
  result = a1;
  if (v21 >= a2)
  {
LABEL_58:
    if (v19 < v20)
    {
      result = (a1 + v49) & ~v36;
      v59 = v20;
      v60 = v17;
      goto LABEL_60;
    }

    if (v79 == v19)
    {
      v59 = v78;
      if (v78 == v79)
      {
        v60 = v76;
      }

      else
      {
        result = (a1 + v23 + v39) & ~v39;
        if (v75 == v79)
        {
          v59 = v4;
          if (v4 >= v74)
          {
            v60 = v70;
          }

          else
          {
            result = (v82 + result) & ~v84;
            v59 = v74;
            v60 = v69;
          }
        }

        else
        {
          result = (((v41 + ((v40 + v39 + ((result + v39 + v40) & ~v39)) & ~v39)) & ~(v28 | 7)) + v28) & ~v28;
          v59 = v72;
          v60 = v73;
        }
      }

LABEL_60:

      return __swift_getEnumTagSinglePayload(result, v59, v60);
    }

    v61 = (a1 + v44) & ~v43;
    if (v77 != v19)
    {
      v62 = *((v48 + v61) & 0xFFFFFFFFFFFFFFF8);
      if (v62 >= 0xFFFFFFFF)
      {
        LODWORD(v62) = -1;
      }

      return (v62 + 1);
    }

    if (v87 < 2)
    {
      return 0;
    }

    v63 = (v30 + ((v61 + 11) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v30;
    if (v71 == v87)
    {
      v12 = v89;
      v64 = v68;
    }

    else
    {
      v65 = (v31 + 8 + ((((((v45 + v63) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v31;
      if (v12 == v87)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, v12, v85);
LABEL_87:
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      v63 = (v47 + ((v47 + v65) & ~v31)) & ~v31;
      v64 = v85;
    }

    v67 = __swift_getEnumTagSinglePayload(v63, v12, v64);
    if (v67 >= 2)
    {
      EnumTagSinglePayload = v67 - 1;
    }

    else
    {
      EnumTagSinglePayload = 0;
    }

    goto LABEL_87;
  }

  v51 = ((v37 + (v49 & ~v36) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v52 = v51 & 0xFFFFFFF8;
  if ((v51 & 0xFFFFFFF8) != 0)
  {
    v53 = 2;
  }

  else
  {
    v53 = a2 - v21 + 1;
  }

  if (v53 >= 0x10000)
  {
    v54 = 4;
  }

  else
  {
    v54 = 2;
  }

  if (v53 < 0x100)
  {
    v54 = 1;
  }

  if (v53 >= 2)
  {
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  switch(v55)
  {
    case 1:
      v56 = *(a1 + v51);
      if (!v56)
      {
        goto LABEL_58;
      }

      goto LABEL_55;
    case 2:
      v56 = *(a1 + v51);
      if (!v56)
      {
        goto LABEL_58;
      }

      goto LABEL_55;
    case 3:
      __break(1u);
      return result;
    case 4:
      v56 = *(a1 + v51);
      if (!v56)
      {
        goto LABEL_58;
      }

LABEL_55:
      v57 = v56 - 1;
      if (v52)
      {
        v57 = 0;
        v58 = *a1;
      }

      else
      {
        v58 = 0;
      }

      result = v21 + (v58 | v57) + 1;
      break;
    default:
      goto LABEL_58;
  }

  return result;
}

void sub_237DD1E84(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v82 = sub_237EF6750();
  v93 = *(v82 - 8);
  v4 = *(v93 + 84);
  v76 = sub_237EF6930();
  v91 = *(v76 - 8);
  v5 = *(v91 + 84);
  v75 = sub_237EF6C30();
  v87 = *(v75 - 8);
  v6 = *(v87 + 84);
  v78 = v6;
  v79 = v5;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v83 = v4;
  v81 = v6;
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v74 = sub_237EF6820();
  v86 = *(v74 - 8);
  v80 = *(v86 + 84);
  if (v80 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v86 + 84);
  }

  v73 = sub_237EF6580();
  v9 = *(v73 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v97 = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD38, &unk_237F15760);
  v12 = *(v71 - 8);
  v13 = *(v12 + 84);
  v77 = v11;
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  v70 = v15;
  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  v84 = v8;
  if (v17 <= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v90 = *(a4 + 32);
  v20 = *(v90 - 8);
  v21 = *(v20 + 84);
  if (v21 <= v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = *(v20 + 84);
  }

  v72 = v10;
  if (v10)
  {
    v23 = *(v9 + 64);
  }

  else
  {
    v23 = *(v9 + 64) + 1;
  }

  v24 = *(v87 + 80);
  v25 = *(v87 + 80) | *(v91 + 80);
  v94 = *(v93 + 64) + v25;
  v85 = *(v91 + 64) + v24;
  v26 = (v85 & ~v24) + *(v87 + 64);
  v27 = *(v86 + 80);
  v92 = (v27 | 7) + v26;
  v28 = *(v86 + 64);
  v29 = v28 + 7;
  v30 = ((v28 + 7 + ((v28 + v27) & ~v27)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = *(v9 + 80);
  v32 = *(v12 + 80);
  v33 = v23 + 3;
  v34 = v32 + 8;
  v35 = *(*(v71 - 8) + 64);
  v36 = v35 + v32;
  v37 = (v35 + v32 + ((v35 + v32 + ((v32 + 8 + ((((((v23 + 3 + ((v31 + 16) & ~v31)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & ~v32)) & ~v32)) & ~v32;
  if (!v13)
  {
    ++v35;
  }

  v88 = v35;
  v38 = v35 + v37;
  v39 = (v35 + v37 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v16)
  {
    v40 = 4;
  }

  else
  {
    v40 = 5;
  }

  v41 = v39 + v40;
  v42 = *(v20 + 80);
  v43 = v31 | v32 | 7;
  v44 = ((((v29 + ((v30 + v27 + ((v30 + (v27 | 7) + ((v92 + ((v26 + v25 + ((v26 + v25 + (v94 & ~v25)) & ~v25)) & ~v25)) & ~(v27 | 7))) & ~(v27 | 7))) & ~v27)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v43 + 8;
  v45 = v41 + (v44 & ~v43);
  v46 = ((((((((((((v45 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v42 + 8;
  v47 = ((*(*(v90 - 8) + 64) + (v46 & ~v42) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 < a3)
  {
    if (((*(*(v90 - 8) + 64) + (v46 & ~v42) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v48 = a3 - v22 + 1;
    }

    else
    {
      v48 = 2;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 < 2)
    {
      v49 = 0;
    }

    v97 = v49;
  }

  if (a2 > v22)
  {
    if (((*(*(v90 - 8) + 64) + (v46 & ~v42) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v50 = a2 - v22;
    }

    else
    {
      v50 = 1;
    }

    if (((*(*(v90 - 8) + 64) + (v46 & ~v42) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      bzero(a1, v47);
      *a1 = ~v22 + a2;
    }

    switch(v97)
    {
      case 1:
        *(a1 + v47) = v50;
        break;
      case 2:
        *(a1 + v47) = v50;
        break;
      case 3:
        goto LABEL_113;
      case 4:
        *(a1 + v47) = v50;
        break;
      default:
        return;
    }

    return;
  }

  v51 = ~v25;
  v52 = ~v24;
  v53 = ~(v27 | 7);
  v54 = ~v43;
  v55 = ~v32;
  v56 = ~v42;
  switch(v97)
  {
    case 1:
      *(a1 + v47) = 0;
      goto LABEL_66;
    case 2:
      *(a1 + v47) = 0;
      goto LABEL_66;
    case 3:
LABEL_113:
      __break(1u);
      return;
    case 4:
      *(a1 + v47) = 0;
      goto LABEL_66;
    default:
LABEL_66:
      if (!a2)
      {
        return;
      }

      if (v19 < v21)
      {
        v57 = ((a1 + v46) & v56);
        v58 = a2;
        v13 = v21;
        v59 = v90;
LABEL_69:

        __swift_storeEnumTagSinglePayload(v57, v58, v13, v59);
        return;
      }

      if (v19 < a2)
      {
        v60 = (((((((((((v45 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
        if (v60 != -8)
        {
          v61 = ~v19 + a2;
          bzero(a1, (v60 + 8));
          *a1 = v61;
        }

        return;
      }

      if (v84 == v19)
      {
        v13 = v83;
        if (v83 == v84)
        {
          v57 = a1;
          v58 = a2;
          v59 = v82;
          goto LABEL_69;
        }

        v57 = ((a1 + v94) & v51);
        if (v81 == v84)
        {
          v13 = v79;
          if (v79 >= v78)
          {
            v58 = a2;
            v59 = v76;
          }

          else
          {
            v57 = ((v57 + v85) & v52);
            v58 = a2;
            v13 = v78;
            v59 = v75;
          }

          goto LABEL_69;
        }

        v66 = ((v92 + ((v26 + v25 + ((v57 + v25 + v26) & v51)) & v51)) & v53);
        v13 = v80;
        if (v80 >= a2)
        {
          v57 = (&v66[v27] & ~v27);
          v58 = a2;
          v59 = v74;
          goto LABEL_69;
        }

        if (v30)
        {
          v67 = ~v80 + a2;
          bzero(((v92 + ((v26 + v25 + ((v57 + v25 + v26) & v51)) & v51)) & v53), v30);
LABEL_93:
          *v66 = v67;
        }
      }

      else
      {
        v62 = ((a1 + v44) & v54);
        if (v17 != v19)
        {
          v64 = ((v62 + v41 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v64 = a2 & 0x7FFFFFFF;
            v64[1] = 0;
          }

          else
          {
            *v64 = a2 - 1;
          }

          return;
        }

        v63 = a2 - v16;
        if (a2 < v16)
        {
          v57 = ((v31 + ((v62 + 11) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v31);
          if (v77 == v16)
          {
            v58 = a2 + 2;
            v13 = v72;
            v59 = v73;
            goto LABEL_69;
          }

          v57 = ((v34 + ((((((v57 + v33) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)) & v55);
          if (v13 == v16)
          {
            v58 = a2 + 1;
          }

          else
          {
            v66 = ((v36 + ((v57 + v36) & v55)) & v55);
            if (a2 >= v70)
            {
              if (v88 <= 3)
              {
                v68 = ~(-1 << (8 * v88));
              }

              else
              {
                v68 = -1;
              }

              if (v88)
              {
                v67 = v68 & (a2 - v70);
                if (v88 <= 3)
                {
                  v69 = v88;
                }

                else
                {
                  v69 = 4;
                }

                bzero(v66, v88);
                switch(v69)
                {
                  case 2:
                    *v66 = v67;
                    break;
                  case 3:
                    *v66 = v67;
                    v66[2] = BYTE2(v67);
                    break;
                  case 4:
                    goto LABEL_93;
                  default:
                    *v66 = v67;
                    break;
                }
              }

              return;
            }

            v58 = a2 + 2;
            v57 = ((v36 + ((v57 + v36) & v55)) & v55);
          }

          v59 = v71;
          goto LABEL_69;
        }

        v65 = (v38 + 3) & 0xFFFFFFFC;
        if (v65 != -4)
        {
          bzero(((a1 + v44) & v54), v65 + 4);
          *v62 = v63;
        }
      }

      return;
  }
}

void sub_237DD27B4()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v33 = v4;
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v13 = *(v12 + 88);
  v31 = *(v13 + 8);
  v32 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18(AssociatedTypeWitness);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v18 = *(v3 + 40);
  v28 = *(v3 + 16);
  v29 = v18;
  v19 = *(v3 + 64);
  v30 = *(v3 + 56);
  v21 = *(v3 + 72);
  v20 = *(v3 + 80);
  v34 = v28;
  v35 = v18;
  v36 = v30;
  v37 = v19;
  v38 = v21;
  v39 = v20;
  type metadata accessor for TimeSeriesClassifier.Model(0, &v34);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v28 - v24;
  (*(v26 + 16))(&v28 - v24, v1, v23);
  (*(v7 + 16))(v11, v1 + *(v3 + 100), v5);
  sub_237EF8BC0();
  sub_237DD29D4(v25, v17, *(v1 + *(v3 + 104)), v28, *(&v28 + 1), v5, v29, *(&v29 + 1), v30, v19, v21, v20, v32, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31, v32, v33, v34, *(&v34 + 1), v35);
  OUTLINED_FUNCTION_38_0();
}

void sub_237DD29D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_37_0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v78 = v29;
  v32 = v31;
  v34 = v33;
  v85 = v35;
  v93 = v36;
  v94 = v37;
  v91 = v38;
  AssociatedTypeWitness = a25;
  sub_237EF6430();
  OUTLINED_FUNCTION_1_1();
  v89 = v40;
  v90 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5();
  v88 = v42 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0, &unk_237F03680);
  OUTLINED_FUNCTION_18(v43);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  v86 = &v78 - v45;
  v46 = sub_237EF6450();
  v47 = OUTLINED_FUNCTION_18(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5();
  v82 = v49 - v48;
  v50 = sub_237EF6B10();
  v51 = OUTLINED_FUNCTION_18(v50);
  MEMORY[0x28223BE20](v51);
  v87 = &v78 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v83 = &v78 - v54;
  v55 = v34;
  v81 = v34;
  v95 = v34;
  v96 = v32;
  v97 = v30;
  v98 = v28;
  v99 = v26;
  v100 = a21;
  v101 = a22;
  v102 = a23;
  v103 = a24;
  v104 = AssociatedTypeWitness;
  v56 = _s18PredictionSequenceV13AsyncIteratorVMa(0, &v95);
  v57 = v91;
  *(v91 + v56[30]) = 0;
  v95 = v55;
  v96 = v32;
  v97 = v28;
  v98 = v26;
  v99 = a21;
  v100 = a22;
  v101 = a23;
  v102 = a24;
  v58 = type metadata accessor for TimeSeriesClassifier.Model(0, &v95);
  OUTLINED_FUNCTION_77();
  v84 = v59;
  v60 = v93;
  (*(v59 + 16))(v57, v93, v58);
  *(v57 + v56[25]) = v85;
  v61 = v56[26];
  v79 = v56;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  (*(v62 + 16))(v57 + v61, v94, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_237F04760;
  v80 = v58;
  *(v63 + 32) = *(v60 + *(v58 + 96));
  *(v63 + 40) = *(v60 + *(v58 + 92));
  sub_237D14E78(v63);
  sub_237EF6460();
  v64 = sub_237EF64B0();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v64);
  v68 = *MEMORY[0x277D2CCC8];
  v69 = v88;
  v70 = *(v89 + 104);
  v71 = v90;
  v70(v88, v68, v90);
  sub_237EF6A60();
  sub_237EF6460();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v64);
  v70(v69, v68, v71);
  sub_237EF6A60();
  v75 = v79;
  v76 = v91;
  sub_237EF6700();
  (*(v62 + 8))(v94, AssociatedTypeWitness);
  (*(v84 + 8))(v93, v80);
  v77 = (v76 + v75[29]);
  *v77 = 0;
  v77[1] = 0xE000000000000000;
  v77[2] = 0;
  v77[3] = 0;
  v77[4] = 1;
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DD2E9C(uint64_t a1)
{
  sub_237DD27B4();
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_237DD2EFC(uint64_t a1, void *a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8, &qword_237F08EB0);
  OUTLINED_FUNCTION_18(v5);
  v3[22] = OUTLINED_FUNCTION_27_0();
  v3[23] = a2[2];
  v3[24] = a2[5];
  v6 = sub_237EF7E90();
  v3[25] = v6;
  OUTLINED_FUNCTION_1_1();
  v3[26] = v7;
  v3[27] = OUTLINED_FUNCTION_27_0();
  v8 = sub_237EF6430();
  v3[28] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v3[29] = v9;
  v3[30] = OUTLINED_FUNCTION_27_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0, &unk_237F03680);
  OUTLINED_FUNCTION_18(v10);
  v3[31] = OUTLINED_FUNCTION_27_0();
  v11 = sub_237EF6450();
  OUTLINED_FUNCTION_18(v11);
  v3[32] = OUTLINED_FUNCTION_27_0();
  v12 = sub_237EF6B10();
  v3[33] = v12;
  OUTLINED_FUNCTION_6_1(v12);
  v3[34] = v13;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v14 = sub_237EF6720();
  v3[40] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v3[41] = v15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v18 = type metadata accessor for TemporalFeature(255, v6, v16, v17);
  v3[44] = v18;
  v19 = sub_237EF90F0();
  v3[45] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v3[46] = v20;
  v21 = OUTLINED_FUNCTION_27_0();
  v3[47] = v21;
  v3[48] = *(v18 - 8);
  v3[49] = OUTLINED_FUNCTION_27_0();
  v3[50] = a2[11];
  v3[51] = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_task_alloc();
  v3[52] = v24;
  *v24 = v3;
  v24[1] = sub_237DD32E0;

  return MEMORY[0x282200308](v21, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_237DD32E0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DD33DC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 152);
    (*(*(v0 + 368) + 8))(v1, *(v0 + 360));
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
    OUTLINED_FUNCTION_12_39();

    OUTLINED_FUNCTION_10_3();
LABEL_5:

    return v4();
  }

  v5 = *(v0 + 424);
  v6 = *(v0 + 392);
  v7 = *(v0 + 160);
  v8 = OUTLINED_FUNCTION_23_30();
  v9(v8);
  sub_237DD4190(v6 + *(v2 + 28), v7);
  v10 = *(v0 + 392);
  if (v5)
  {
    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 352));
    OUTLINED_FUNCTION_14_43();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_5;
  }

  v12 = *(v0 + 168);
  v13 = *(*(v0 + 160) + 116);
  *(v0 + 448) = v13;
  v14 = v12 + v13;
  if (*(v12 + v13) != *v10 || *(v12 + v13 + 8) != v10[1])
  {
    v16 = sub_237EF9D40();
    v17 = *(v0 + 392);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    if ((v16 & 1) == 0)
    {
      v36 = *(v0 + 344);
      v37 = *(v0 + 328);
      v38 = *(v0 + 320);
      v35 = *(v0 + 240);
      v39 = *(v0 + 232);
      v20 = *(v0 + 224);
      *(v19 + *(v18 + 120)) = 0;
      v21 = *v17;
      v22 = v10[1];
      v34 = *(v17 + 1);
      v23 = v17[4];
      sub_237EF8260();

      *v14 = v21;
      *(v14 + 8) = v22;
      *(v14 + 16) = v34;
      *(v14 + 32) = v23;
      sub_237EF6460();
      *&v34 = sub_237EF64B0();
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
      v28 = *MEMORY[0x277D2CCC8];
      v29 = *(v39 + 104);
      v29(v35, v28, v20);
      sub_237EF6A60();
      sub_237EF6460();
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v34);
      v29(v35, v28, v20);
      sub_237EF6A60();
      sub_237EF6700();
      (*(v37 + 40))(v19 + *(v18 + 112), v36, v38);
    }
  }

  sub_237DD437C();
  v33 = swift_task_alloc();
  *(v0 + 432) = v33;
  *v33 = v0;
  v33[1] = sub_237DD3848;

  return sub_237DD462C();
}

uint64_t sub_237DD3848()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 440) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DD3944()
{
  v96 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v2 + *(v1 + 120));
  *(v0 + 16) = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  v91 = v6;
  *(v0 + 40) = v6;
  *(v0 + 48) = v7;
  *(v0 + 56) = v8;
  *(v0 + 64) = v9;
  *(v0 + 72) = v10;
  v11 = type metadata accessor for TimeSeriesClassifier.Model(0, v0 + 16);
  if (v3 >= *(v2 + *(v11 + 96)))
  {
    v86 = v10;
    v90 = v9;
    v87 = v5;
    v88 = v7;
    v89 = v8;
    v13 = *(v0 + 328);
    v80 = *(v0 + 336);
    v83 = *(v0 + 440);
    v14 = *(v0 + 312);
    v76 = *(v0 + 320);
    v78 = *(v0 + 288);
    v72 = *(v0 + 280);
    v74 = v11;
    v15 = *(v0 + 272);
    v16 = *(v0 + 216);
    v85 = *(v0 + 264);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);
    (*(*(v0 + 208) + 16))(v16, v19 + *(v20 + 108), *(v0 + 200));
    sub_237D4A7B4(v16, v18, v14);
    sub_237EF6950();
    v84 = *(v15 + 8);
    v84(v14, v85);
    v21 = v19 + *(v20 + 112);
    (*(v13 + 16))(v17, v21, v76);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v76);
    sub_237C9442C(v78, v80, v72, v17, v74, v22, v23);
    if (v83)
    {
      v25 = *(v0 + 400);
      v24 = *(v0 + 408);
      v26 = *(v0 + 384);
      v81 = *(v0 + 392);
      v27 = *(v0 + 352);
      v28 = *(v0 + 280);
      v29 = *(v0 + 264);
      v31 = *(v0 + 184);
      v30 = *(v0 + 192);
      v32 = *(v0 + 168);
      sub_237DD516C(*(v0 + 176));
      v84(v28, v29);
      *(&v62 + 1) = v86;
      *&v62 = v90;
      sub_237DD4C0C(v32, v31, v87, v24, v30, v91, v88, v89, v62, v25);
      (*(v26 + 8))(v81, v27);
      OUTLINED_FUNCTION_14_43();
      OUTLINED_FUNCTION_30_26(*(v0 + 240));

      OUTLINED_FUNCTION_3_0();
      goto LABEL_7;
    }

    v34 = *(v0 + 408);
    v73 = *(v0 + 392);
    v75 = *(v0 + 400);
    v70 = *(v0 + 384);
    v71 = *(v0 + 352);
    v35 = *(v0 + 328);
    v64 = *(v0 + 320);
    v65 = *(v0 + 336);
    v37 = *(v0 + 288);
    v36 = *(v0 + 296);
    v39 = *(v0 + 272);
    v38 = *(v0 + 280);
    v40 = *(v0 + 264);
    v77 = *(v0 + 184);
    v79 = *(v0 + 192);
    v82 = *(v0 + 168);
    v66 = v82 + *(v0 + 448);
    v68 = v40;
    v69 = *(v0 + 152);
    sub_237DD516C(*(v0 + 176));
    v84(v38, v40);
    v67 = v36;
    (*(v39 + 32))(v36, v37, v40);
    (*(v35 + 40))(v21, v65, v64);
    *(v0 + 128) = sub_237EF6AB0();
    v41 = swift_task_alloc();
    v41[2] = v77;
    v41[3] = v87;
    v41[4] = v34;
    v41[5] = v79;
    v41[6] = v91;
    v41[7] = v88;
    v41[8] = v89;
    v41[9] = v90;
    v41[10] = v86;
    v41[11] = v75;
    v41[12] = v82;
    v42 = swift_task_alloc();
    v42[2] = v77;
    v42[3] = v87;
    v42[4] = v34;
    v42[5] = v79;
    v42[6] = v91;
    v42[7] = v88;
    v42[8] = v89;
    v42[9] = v90;
    v42[10] = v86;
    v42[11] = v75;
    v42[12] = sub_237DD51D4;
    v42[13] = v41;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3C0, &qword_237F05670);
    v45 = type metadata accessor for Classification(0, v87, v86, v44);
    v46 = sub_237C96060();
    sub_237C9339C(sub_237DD5214, v42, v43, v45, MEMORY[0x277D84A98], v46);
    v48 = v47;

    v49 = *(v66 + 8);
    v50 = *(v66 + 32);
    v92[0] = *v66;
    v92[1] = v49;
    v93 = *(v66 + 16);
    v94 = v50;
    *(v0 + 136) = v48;
    v51 = sub_237EF8A60();
    sub_237EF8260();
    WitnessTable = swift_getWitnessTable();
    ClassificationDistribution.init<A>(_:)(v0 + 136, v87, v51, v86, WitnessTable, v95);
    v84(v67, v68);
    *(v0 + 144) = v95[0];
    v54 = type metadata accessor for ClassificationDistribution(0, v87, v86, v53);
    TemporalFeature.init(id:feature:)(v92, v0 + 144, v54, v0 + 80, v55);
    v56 = *(v0 + 88);
    v57 = *(v0 + 112);
    v58 = *(v0 + 120);
    v59 = *(v0 + 96);
    *v69 = *(v0 + 80);
    *(v69 + 8) = v56;
    *(v69 + 16) = v59;
    *(v69 + 32) = v57;
    *(v69 + 40) = v58;
    *(&v63 + 1) = v86;
    *&v63 = v90;
    sub_237DD4C0C(v82, v77, v87, v34, v79, v91, v88, v89, v63, v75);
    (*(v70 + 8))(v73, v71);
  }

  else
  {
    v12 = *(v0 + 152);
    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 352));
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
  }

  OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_30_26(v60);

  OUTLINED_FUNCTION_10_3();
LABEL_7:

  return v33();
}

uint64_t sub_237DD3FA8()
{
  OUTLINED_FUNCTION_8_57();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DD4090()
{
  (*(v0[48] + 8))(v0[49], v0[44]);
  OUTLINED_FUNCTION_8_57();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DD4190(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 40);
  sub_237EF7E90();
  v6 = sub_237EF7E20();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v8 = *(a2 + 24);
  v9 = *(a2 + 80);
  v22 = v4;
  v23 = v8;
  v24 = v5;
  v10 = *(a2 + 64);
  v25 = *(a2 + 48);
  v26 = v10;
  v27 = v9;
  v11 = *(v2 + *(type metadata accessor for TimeSeriesClassifier.Model(0, &v22) + 92));
  *(inited + 32) = v11;
  v12 = sub_237C60C7C(v6, inited);

  result = swift_setDeallocating();
  if ((v12 & 1) == 0)
  {
    v14 = sub_237EF7E20();
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_237EF9330();

    v22 = 0xD00000000000001CLL;
    v23 = 0x8000000237EFFCB0;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_237F03530;
    *(v15 + 32) = v11;
    v16 = MEMORY[0x2383E0A10]();
    v18 = v17;

    MEMORY[0x2383E0710](v16, v18);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v19 = v22;
    v20 = v23;
    sub_237C84150();
    swift_allocError();
    *v21 = v14;
    *(v21 + 8) = v19;
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 6;
    return swift_willThrow();
  }

  return result;
}

void sub_237DD437C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v30 = v4;
  v5 = v2[1].n128_u64[0];
  v6 = v2[2].n128_u64[1];
  OUTLINED_FUNCTION_34_0();
  sub_237EF7EE0();
  OUTLINED_FUNCTION_1_1();
  v28 = v8;
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38, &qword_237F093D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_237F04760;
  v26 = v3[7].n128_i32[2];
  v13 = *(v1 + v26);
  *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3698, &qword_237F16A80);
  *(v12 + 64) = sub_237C96710(qword_27DEB36A0, &qword_27DEB3698, &qword_237F16A80, MEMORY[0x277CBFDB0]);
  *(v12 + 32) = v13;
  *(v12 + 40) = v13;
  v27 = v13;
  v14 = v3[1].n128_u64[1];
  v31 = v5;
  v32 = v14;
  v33 = v6;
  v15 = *(v1 + *(OUTLINED_FUNCTION_21_31(v3[3], v3[4]) + 92));
  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0, &qword_237F0A6B0);
  OUTLINED_FUNCTION_6_15();
  *(v12 + 104) = sub_237C96710(v16, &qword_27DEADDA0, &qword_237F0A6B0, v17);
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v12 + 72) = 0;
  *(v12 + 80) = v15;
  v18 = sub_237EF7E90();
  type metadata accessor for TemporalFeature(0, v18, v19, v20);
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v21 = v30;
  sub_237EF7FC0();
  v22 = v29;
  sub_237EF7EC0();
  (*(v28 + 8))(v10, v22);
  sub_237EF7FB0();
  v23 = v1 + v3[7].n128_i32[1];
  v24 = *(v21 + 24);
  if (v24 < *(v23 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v23 + 24) = v24;
  if (!__OFADD__(v27, 1))
  {
    *(v1 + v26) = v27 + 1;
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_237DD462C()
{
  OUTLINED_FUNCTION_2_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = *(v2 + 16);
  v1[13] = *(v2 + 40);
  v3 = sub_237EF7E90();
  v6 = type metadata accessor for TemporalFeature(255, v3, v4, v5);
  v1[14] = v6;
  OUTLINED_FUNCTION_34_0();
  v7 = sub_237EF90F0();
  v1[15] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_27_0();
  v1[18] = *(v6 - 8);
  v1[19] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DD4748()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 120);
  *(v0 + 16) = *(v0 + 96);
  v3 = *(v0 + 104);
  *(v0 + 176) = v2;
  v4 = *(v1 + 80);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  *(v0 + 24) = *(v1 + 24);
  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 56) = v6;
  *(v0 + 72) = v4;
  v7 = OUTLINED_FUNCTION_34_0();
  v9 = *(type metadata accessor for TimeSeriesClassifier.Model(v7, v8) + 96);
  *(v0 + 180) = v9;
  if (*(*(v0 + 88) + *(v0 + 176)) >= *(*(v0 + 88) + v9))
  {

    OUTLINED_FUNCTION_10_3();

    return v14();
  }

  else
  {
    OUTLINED_FUNCTION_17_36();
    OUTLINED_FUNCTION_34_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_29_19();
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v11 = OUTLINED_FUNCTION_1_82(v10);

    return MEMORY[0x282200308](v11, v12, v13);
  }
}

uint64_t sub_237DD48B0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DD49AC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 128) + 8))(v1, *(v0 + 120));
    goto LABEL_3;
  }

  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 80);
  v7 = OUTLINED_FUNCTION_23_30();
  v8(v7);
  sub_237DD4190(v5 + *(v2 + 28), v6);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 112);
  if (v4)
  {
    (*(v10 + 8))(*(v0 + 152), *(v0 + 112));

    OUTLINED_FUNCTION_3_0();
    goto LABEL_6;
  }

  sub_237DD437C();
  (*(v10 + 8))(v9, v11);
  if (*(*(v0 + 88) + *(v0 + 176)) >= *(*(v0 + 88) + *(v0 + 180)))
  {
LABEL_3:

    OUTLINED_FUNCTION_10_3();
LABEL_6:

    return v3();
  }

  OUTLINED_FUNCTION_17_36();
  OUTLINED_FUNCTION_34_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_29_19();
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_1_82(v13);

  return MEMORY[0x282200308](v14, v15, v16);
}

uint64_t sub_237DD4BA4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

void sub_237DD4C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a7;
  v10[6] = a8;
  v11 = a9;
  v12 = a10;
  _s18PredictionSequenceV13AsyncIteratorVMa(0, v10);
  sub_237DD4E4C();
}

uint64_t sub_237DD4C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, float a9@<S0>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = a5;
  v31 = a6;
  v32 = a2;
  v33 = a1;
  v29 = a8;
  v16 = sub_237EF90F0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v28 - v21;
  v34[0] = a3;
  v34[1] = a4;
  v34[2] = v30;
  v34[3] = v31;
  v34[4] = a7;
  v34[5] = a10;
  v34[6] = a11;
  v34[7] = a12;
  v23 = type metadata accessor for TimeSeriesClassifier.Model(0, v34);
  v24 = (v32 + *(v23 + 88));
  v25 = *v24;
  v26 = v24[1];
  sub_237EF8260();
  sub_237EF8260();
  sub_237E5E174(v33, v25, v26, a4, v22);

  (*(v17 + 16))(v19, v22, v16);
  result = __swift_getEnumTagSinglePayload(v19, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 8))(v22, v16);
    return Classification.init(label:probability:)(v19, a4, a12, v29, a9);
  }

  return result;
}

void sub_237DD4E4C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v4 = v2[2].n128_u64[1];
  v30 = v2[1].n128_u64[0];
  v5 = sub_237EF7EE0();
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38, &qword_237F093D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_237F04760;
  v10 = v3[7].n128_i32[2];
  v11 = *(v0 + v10);
  v12 = *(v1 + v3[6].n128_i32[1]);
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v9;
  v28 = xmmword_237F04760;
  v27[0] = v10;
  v27[1] = v8;
  v29 = v11 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0, &qword_237F0A6B0);
  v13[7] = v14;
  OUTLINED_FUNCTION_6_15();
  v17 = sub_237C96710(v15, &qword_27DEADDA0, &qword_237F0A6B0, v16);
  v18 = v29;
  v13[8] = v17;
  if (v18 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v13[4] = 0;
  v13[5] = v18;
  v20 = v3[1].n128_u64[1];
  v31 = v30;
  v32 = v20;
  v33 = v4;
  v21 = *(v1 + *(OUTLINED_FUNCTION_21_31(v3[3], v3[4]) + 92));
  v13[12] = v14;
  v13[13] = v19;
  if (v21 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13[9] = 0;
  v13[10] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v28;
  *(v22 + 56) = v14;
  *(v22 + 64) = v19;
  if (v11 < v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v22 + 32) = v12;
  *(v22 + 40) = v11;
  *(v22 + 96) = v14;
  *(v22 + 104) = v19;
  *(v22 + 72) = 0;
  *(v22 + 80) = v21;
  sub_237EF7E90();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_237EF7FA0();

  sub_237EF7FB0();
  *(v1 + v27[0]) = v29;
  v23 = v1 + v3[7].n128_i32[1];
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, v12);
  v26 = v24 + v12;
  if (v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v23 + 24) >= v26)
  {
    *(v23 + 16) = v26;
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_237DD5088(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237C6A904;

  return sub_237DD2EFC(a1, a2);
}

uint64_t sub_237DD5130(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237DD516C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8, &qword_237F08EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237DD5268(_OWORD *a1)
{
  v1 = *(a1 + 40);
  v10 = a1[1];
  v2 = *(a1 + 56);
  v3 = *(a1 + 72);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  result = type metadata accessor for TimeSeriesClassifier.Model(319, &v10);
  if (v5 <= 0x3F)
  {
    v6 = MEMORY[0x277D83B88];
    v14 = 0;
    *&v10 = result;
    *(&v10 + 1) = MEMORY[0x277D83B88];
    result = swift_getAssociatedTypeWitness();
    if (v7 <= 0x3F)
    {
      v15 = 0;
      *&v11 = result;
      result = sub_237EF7E90();
      if (v8 <= 0x3F)
      {
        v16 = 0;
        *(&v11 + 1) = result;
        result = sub_237EF6720();
        if (v9 <= 0x3F)
        {
          v17 = 0;
          *&v12 = result;
          *(&v12 + 1) = &type metadata for TemporalSegmentIdentifier;
          v18 = 0;
          *&v13 = v6;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_57()
{
}

uint64_t OUTLINED_FUNCTION_21_31(__n128 a1, __n128 a2)
{
  *(v3 - 120) = a1;
  *(v3 - 104) = a2;
  *(v3 - 88) = v2;

  return type metadata accessor for TimeSeriesClassifier.Model(0, v3 - 144);
}

uint64_t OUTLINED_FUNCTION_22_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_237EF7E90();
}

uint64_t OUTLINED_FUNCTION_29_19()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_30_26@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 168) = v1;
  *(v3 - 160) = a1;
  v5 = *(v2 + 176);
  *(v3 - 152) = *(v2 + 216);
  *(v3 - 144) = v5;
}

uint64_t TemporalAdaptor.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  OUTLINED_FUNCTION_1_1();
  v8[10] = v11;
  v8[11] = *(v12 + 64);
  v8[12] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v8[13] = v13;
  v8[14] = swift_task_alloc();
  v8[15] = *(a5 + 24);
  v8[16] = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[17] = AssociatedTypeWitness;
  v8[18] = type metadata accessor for TemporalFeature(255, AssociatedTypeWitness, v15, v16);
  v8[19] = *(a7 + 8);
  v17 = sub_237EF9AE0();
  v8[20] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v8[21] = v18;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DD57B4, 0, 0);
}

uint64_t sub_237DD57B4()
{
  v22 = v0[21];
  v23 = v0[22];
  v24 = v0[20];
  v21 = v0[23];
  v26 = v0[17];
  v18 = v0[16];
  v19 = v0[15];
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v20 = v0[5];
  v25 = v0[2];
  (*(v0[13] + 16))();
  (*(v2 + 16))(v1, v4, v6);
  v9 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = v18;
  *(v11 + 3) = v7;
  *(v11 + 4) = v19;
  *(v11 + 5) = v5;
  (*(v2 + 32))(&v11[v9], v1, v6);
  v12 = &v11[v10];
  *v12 = v8;
  v12[1] = v20;
  sub_237C70604(v8, v20);
  sub_237EF8BD0();

  (*(v22 + 16))(v23, v21, v24);
  v13 = (*(v5 + 24))(v7);
  LOBYTE(v6) = v14;
  WitnessTable = swift_getWitnessTable();
  AnyTemporalSequence.init<A>(_:count:)(v23, v13, v6 & 1, v26, v24, WitnessTable, v25);
  (*(v22 + 8))(v21, v24);

  OUTLINED_FUNCTION_3_0();

  return v16();
}

uint64_t sub_237DD5A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a6;
  v8[13] = a8;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  v8[14] = swift_getAssociatedTypeWitness();
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DD5AE0, 0, 0);
}

uint64_t sub_237DD5AE0()
{
  v19 = *(v0 + 104);
  v1 = *(v0 + 64);
  v2 = *v1;
  v3 = v1[1];
  *(v0 + 128) = v3;
  v4 = v1[4];
  v5 = *(v1 + 1);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for TemporalFeature(0, AssociatedTypeWitness, v7, v8) + 28);
  v10 = *(v19 + 24);
  sub_237EF8260();
  v18 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_237DD5C64;
  v12 = *(v0 + 120);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);

  return v18(v12, v1 + v9, v15, v16, v13, v14);
}

uint64_t sub_237DD5C64()
{
  OUTLINED_FUNCTION_2_0();
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v2 = v5;
  *(v5 + 144) = v0;

  if (v0)
  {

    v3 = sub_237DD5DE4;
  }

  else
  {
    v3 = sub_237DD5D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237DD5D74()
{
  OUTLINED_FUNCTION_2_0();
  TemporalFeature.init(id:feature:)((v0 + 2), v0[15], v0[14], v0[7], v1);

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_237DD5DE4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DD5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5;
  v9 = v4[2];
  v21 = v4[3];
  v10 = v4[4];
  v11 = type metadata accessor for TemporalAdaptor(0, v9, v10, a4);
  OUTLINED_FUNCTION_6_1(v11);
  v13 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = (v4 + ((*(v14 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_task_alloc();
  *(v7 + 16) = v18;
  *v18 = v7;
  v18[1] = sub_237CEF6D4;

  return sub_237DD5A24(a1, a2, v4 + v13, v16, v17, v9, v21, v10);
}

uint64_t sub_237DD5FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237CEF6D4;

  return TemporalAdaptor.applied<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t Transformer.adaptedAsTemporal()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v7);
  return (*(v5 + 32))(a2, v9, a1);
}

uint64_t sub_237DD61A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237DD62E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_237DD64E8(char *a1)
{
  v3 = v1;
  v4 = a1[2];
  v9 = *a1;
  v5 = sub_237DD6774(&v9);
  if (!v2)
  {
    v6 = v5;
    [v3 setSessionPreset_];
    objc_allocWithZone(MEMORY[0x277CE5AD8]);
    v7 = v6;
    v8 = sub_237DD6CD0(v7);
    if ([v3 canAddInput_])
    {
      [v3 addInput_];
    }

    else
    {
      type metadata accessor for VideoReaderError(0);
      sub_237DD70A8();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

void sub_237DD660C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 1);
  v8 = [objc_allocWithZone(MEMORY[0x277CE5B60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF150, &unk_237F07D60);
  if (v7)
  {
    v9 = 875704422;
  }

  else
  {
    v9 = 1111970369;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = sub_237EF8590();
  *(inited + 40) = v11;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v9;
  v12 = sub_237EF8230();
  sub_237DD7028(v12, v8);
  [v8 setAlwaysDiscardsLateVideoFrames_];
  if ([v4 canAddOutput_])
  {
    [v4 addOutput_];
  }

  [v8 setSampleBufferDelegate:a2 queue:a3];
}

uint64_t sub_237DD6774(char *a1)
{
  v32 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB37A8, &unk_237F15940);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_237F15930;
  v2 = *MEMORY[0x277CE5878];
  v3 = *MEMORY[0x277CE5870];
  *(v1 + 32) = *MEMORY[0x277CE5878];
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x277CE5850];
  v5 = *MEMORY[0x277CE5860];
  *(v1 + 48) = *MEMORY[0x277CE5850];
  *(v1 + 56) = v5;
  v6 = *MEMORY[0x277CE5840];
  v7 = *MEMORY[0x277CE5848];
  *(v1 + 64) = *MEMORY[0x277CE5840];
  *(v1 + 72) = v7;
  v8 = *MEMORY[0x277CE5880];
  v33 = *MEMORY[0x277CE5888];
  v9 = *MEMORY[0x277CE5888];
  *(v1 + 80) = *MEMORY[0x277CE5880];
  *(v1 + 88) = v9;
  v34 = *MEMORY[0x277CE5890];
  *(v1 + 96) = *MEMORY[0x277CE5890];
  sub_237C75918(0, &qword_27DEB37B0, 0x277CE5AD0);
  v10 = *MEMORY[0x277CE5EA8];
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v33;
  v19 = v34;
  v20 = v10;
  v35 = sub_237DD6B08(v1, v10, 0);
  v21 = [v35 devices];
  sub_237C75918(0, &qword_27DEB37B8, 0x277CE5AC8);
  v22 = sub_237EF8910();

  v23 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  result = sub_237D6DA5C();
  v25 = result;
  for (i = 0; v25 != i; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383E1490](i, v22);
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      result = *(v22 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    MEMORY[0x2383E09D0](result);
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_237EF8980();
    }

    result = sub_237EF89F0();
    v23 = v36;
  }

  v37 = v23;
  v27 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v27)
  {
    v28 = v27;
    sub_237DD6FD0(0, v23);
    result = sub_237D6A77C(v23);
    if (result < 0)
    {
      goto LABEL_20;
    }

    v29 = sub_237D6DA5C();
    v30 = __OFADD__(v29, 1);
    result = v29 + 1;
    if (v30)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    sub_237E4BF14(result, 1);
    sub_237DD6E90(0, 0, 1, v28);
    v23 = v37;
  }

  LOBYTE(v36) = v32;
  v31 = sub_237DD6B98(&v36, v23);

  if (!v31)
  {
    type metadata accessor for VideoReaderError(0);
    sub_237DD70A8();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v31;
}

id sub_237DD6B08(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for DeviceType(0);
  v5 = sub_237EF8900();

  v6 = [swift_getObjCClassFromMetadata() discoverySessionWithDeviceTypes:v5 mediaType:a2 position:a3];

  return v6;
}

id sub_237DD6B98(unsigned __int8 *a1, unint64_t a2)
{
  v3 = *a1;
  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_21:
  v4 = sub_237EF9710();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = 0;
  v6 = a2 & 0xC000000000000001;
  do
  {
    if (v6)
    {
      v7 = MEMORY[0x2383E1490](v5, a2);
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v10 = [v7 position];
    if (v10 == 1)
    {
      if (v3)
      {
        return v8;
      }
    }

    else if (v10 == 2 && (v3 & 1) == 0)
    {
      return v8;
    }

    ++v5;
  }

  while (v9 != v4);
  sub_237C85538();
  if (v6)
  {
    return MEMORY[0x2383E1490](0, a2);
  }

  else
  {
    return *(a2 + 32);
  }
}

id sub_237DD6CD0(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [v2 initWithDevice:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_237EF5DC0();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_237DD6D98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = *(v9 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_15;
  }

  result = sub_237D0CC78((v9 + 32 + 40 * a2), v13 - a2, (v10 + 40 * a3));
  v14 = *(v9 + 16);
  v11 = __OFADD__(v14, v12);
  v15 = v14 + v12;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      swift_arrayInitWithCopy();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
}

void sub_237DD6E90(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_237C75918(0, &qword_27DEB37B8, 0x277CE5AC8);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_237EF9710();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_237D0D048(v8 + 8 * v6, &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_237EF9710();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_237DD6FD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_237EF9710();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_237DD7028(uint64_t a1, void *a2)
{
  v3 = sub_237EF8200();

  [a2 setVideoSettings_];
}

unint64_t sub_237DD70A8()
{
  result = qword_27DEAFA98[0];
  if (!qword_27DEAFA98[0])
  {
    type metadata accessor for VideoReaderError(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAFA98);
  }

  return result;
}

void *sub_237DD7100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_237D2FC30(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_237DD7148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_237D2FC30(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);
  sub_237EF8260();
  return v6;
}

void *sub_237DD71C8(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v10 = sub_237D2FC80(a1);
      if (v11)
      {
        v9 = *(*(a2 + 56) + 8 * v10);
        v12 = v9;
        return v9;
      }
    }

    return 0;
  }

  v7 = a1;
  v8 = sub_237EF9720();

  if (!v8)
  {
    return 0;
  }

  sub_237C75918(0, a3, a4);
  swift_dynamicCast();
  return v14;
}

uint64_t sub_237DD7298@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_237D2FC30(a3), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = type metadata accessor for TensorDescription(0);
    OUTLINED_FUNCTION_4();
    sub_237DDA78C(v8 + *(v10 + 72) * v7, a2, type metadata accessor for TensorDescription);
    OUTLINED_FUNCTION_29();
    v14 = v9;
  }

  else
  {
    type metadata accessor for TensorDescription(0);
    OUTLINED_FUNCTION_37_1();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_237DD734C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_237D2FC30(a1);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237DD73A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_237D2FC30(a3), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = sub_237EF70E0();
    OUTLINED_FUNCTION_4();
    (*(v10 + 16))(a2, v8 + *(v10 + 72) * v7, v9);
    OUTLINED_FUNCTION_29();
    v14 = v9;
  }

  else
  {
    sub_237EF70E0();
    OUTLINED_FUNCTION_37_1();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

double sub_237DD7458@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_237D2FC30(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_237CBA478(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t ColumnSelectorTransformer.init(transformers:columnMapping:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ColumnSelectorTransformer.transformers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ColumnSelectorTransformer.columnMapping.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ColumnSelectorTransformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 88) = a5[4];
  v8 = a5[2];
  *(v6 + 96) = v8;
  *(v6 + 104) = swift_getAssociatedTypeWitness();
  v9 = sub_237EF6290();
  *(v6 + 112) = v9;
  OUTLINED_FUNCTION_6_1(v9);
  *(v6 + 120) = v10;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = a5[3];
  v11 = sub_237EF6290();
  *(v6 + 144) = v11;
  OUTLINED_FUNCTION_6_1(v11);
  *(v6 + 152) = v12;
  *(v6 + 160) = swift_task_alloc();
  v13 = sub_237EF6310();
  *(v6 + 168) = v13;
  OUTLINED_FUNCTION_6_1(v13);
  *(v6 + 176) = v14;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = *(v8 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_getTupleTypeMetadata2();
  v15 = sub_237EF90F0();
  *(v6 + 232) = v15;
  OUTLINED_FUNCTION_6_1(v15);
  *(v6 + 240) = v16;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = *v5;
  sub_237EF8260();

  return MEMORY[0x2822009F8](sub_237DD7824, 0, 0);
}

uint64_t sub_237DD7824()
{
  v4 = *(v0 + 264);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = sub_237EF61A0();
  *(v0 + 280) = v7;
  v8 = *(v7 - 8);
  *(v0 + 288) = v8;
  (*(v8 + 16))(v5, v6, v7);
  v9 = *(v4 + 32);
  *(v0 + 360) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v4 + 64);
  if (v12)
  {
    v13 = 0;
    v14 = *(v0 + 264);
LABEL_8:
    v17 = *(v0 + 248);
    v18 = *(v0 + 216);
    v5 = *(v0 + 224);
    v19 = *(v0 + 200);
    v20 = *(v0 + 96);
    v21 = (v12 - 1) & v12;
    v22 = __clz(__rbit64(v12)) | (v13 << 6);
    v23 = (*(v14 + 48) + 16 * v22);
    v3 = *v23;
    v1 = v23[1];
    (*(v19 + 16))(v18, *(v14 + 56) + *(v19 + 72) * v22, v20);
    v24 = *(v5 + 48);
    *v17 = v3;
    *(v17 + 1) = v1;
    v25 = *(v19 + 32);
    v2 = v19 + 32;
    v25(&v17[v24], v18, v20);
    OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v5);
    sub_237EF8260();
    v16 = v13;
  }

  else
  {
    v15 = 0;
    v16 = ((63 - v11) >> 6) - 1;
    while (v16 != v15)
    {
      v13 = v15 + 1;
      v14 = *(v0 + 264);
      v12 = *(v14 + 8 * v15++ + 72);
      if (v12)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    v21 = 0;
  }

  *(v0 + 296) = v21;
  *(v0 + 304) = v16;
  v29 = OUTLINED_FUNCTION_33_15();
  v30(v29);
  v31 = OUTLINED_FUNCTION_23_0();
  if (__swift_getEnumTagSinglePayload(v31, v32, v5) == 1)
  {
    OUTLINED_FUNCTION_5_69();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_21;
  }

  v33 = OUTLINED_FUNCTION_10_46();
  v34(v33);
  sub_237EF8B90();
  v39 = sub_237EF60D0();
  *(v0 + 328) = v39;
  if (v40)
  {
    OUTLINED_FUNCTION_24_26();
    OUTLINED_FUNCTION_3_23();
    v41 = swift_allocError();
    OUTLINED_FUNCTION_2_72(v41, v42);
    OUTLINED_FUNCTION_45_10(v43, v44, v45, v46, v47, v48, v49, v50, v71, v72, v73, v74, v75, v76, v77, v79, v81, v82);

    (*(v3 + 8))(v21, v2);
    (*(v1 + 8))(v78, v80);
LABEL_20:
    OUTLINED_FUNCTION_5_69();

    OUTLINED_FUNCTION_3_0();
LABEL_21:
    OUTLINED_FUNCTION_68_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_25_24(v39);
  sub_237EF62F0();
  v51 = *(v2 + 8);
  v52 = OUTLINED_FUNCTION_55_1();
  v51(v52);
  if (!swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_8_58();
    v63 = sub_237EF62F0();
    v64 = OUTLINED_FUNCTION_55_1();
    v51(v64);
    *(v0 + 16) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAF578, &unk_237F08940);
    sub_237EF85D0();
    *(v0 + 24) = OUTLINED_FUNCTION_46_12();
    swift_getMetatypeMetadata();
    sub_237EF85D0();
    sub_237CD1200();
    OUTLINED_FUNCTION_3_23();
    v65 = swift_allocError();
    OUTLINED_FUNCTION_2_72(v65, v66);
    OUTLINED_FUNCTION_36_14(v67, v68);

    (*(v74 + 8))();
    (*(v77 + 8))();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_34_10();
  v53 = swift_task_alloc();
  OUTLINED_FUNCTION_7_53(v53);
  MEMORY[0] = v0;
  OUTLINED_FUNCTION_6_55();
  OUTLINED_FUNCTION_68_2();

  return Transformer.applied<A>(to:eventHandler:)(v54, v55, v56, v57, v58, v59, v60);
}

uint64_t sub_237DD7CD8(uint64_t a1)
{
  v3 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  (*(v3[19] + 8))(v3[20], v3[18]);
  if (v1)
  {

    v4 = sub_237DD8404;
  }

  else
  {
    v4 = sub_237DD7E28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_237DD7E28()
{
  v2 = sub_237DD7148(*(v0 + 312), *(v0 + 320), *(v0 + 272));
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    sub_237EF60D0();
    v6 = *(v0 + 344);
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = (*(v0 + 120) + 8);
    if (v10)
    {
      *(v0 + 40) = v6;
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_2();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_35_12(WitnessTable, v12, v0 + 40, v13, v14, WitnessTable);
      sub_237EF6110();
    }

    else
    {
      *(v0 + 48) = v6;
      sub_237EF8A60();
      sub_237EF8260();
      OUTLINED_FUNCTION_1_2();
      v19 = swift_getWitnessTable();
      OUTLINED_FUNCTION_35_12(v19, v20, v0 + 48, v21, v22, v19);
      sub_237EF60E0();
    }

    (*v9)(v7, v8);
  }

  else
  {
    *(v0 + 32) = *(v0 + 344);
    v4 = *(v0 + 184);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v9 = *(v0 + 104);
    v17 = *(v0 + 112);
    v89 = *(v0 + 56);
    v5 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    sub_237EF6220();
    sub_237EF6200();
    v18 = *(v16 + 8);
    v1 = v16 + 8;
    v18(v15, v17);
    sub_237EF6140();
  }

  result = (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 96));
  v91 = *(v0 + 352);
  v24 = *(v0 + 296);
  v25 = *(v0 + 304);
  if (v24)
  {
    v26 = *(v0 + 264);
    goto LABEL_13;
  }

  do
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return result;
    }

    if (v27 >= (((1 << *(v0 + 360)) + 63) >> 6))
    {
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
      v31 = 0;
      goto LABEL_14;
    }

    v26 = *(v0 + 264);
    v24 = *(v26 + 8 * v27 + 64);
    ++v25;
  }

  while (!v24);
  v25 = v27;
LABEL_13:
  v28 = *(v0 + 248);
  v29 = *(v0 + 216);
  v5 = *(v0 + 224);
  v30 = *(v0 + 200);
  v4 = *(v0 + 96);
  v31 = (v24 - 1) & v24;
  v32 = __clz(__rbit64(v24)) | (v25 << 6);
  v33 = *(v26 + 48) + 16 * v32;
  v9 = *v33;
  v34 = *(v33 + 8);
  (*(v30 + 16))(v29, *(v26 + 56) + *(v30 + 72) * v32, v4);
  v35 = *(v5 + 48);
  *v28 = v9;
  *(v28 + 1) = v34;
  v36 = *(v30 + 32);
  v1 = v30 + 32;
  v36(&v28[v35], v29, v4);
  OUTLINED_FUNCTION_29();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v5);
  sub_237EF8260();
LABEL_14:
  *(v0 + 296) = v31;
  *(v0 + 304) = v25;
  v40 = OUTLINED_FUNCTION_33_15();
  v41(v40);
  v42 = OUTLINED_FUNCTION_23_0();
  if (__swift_getEnumTagSinglePayload(v42, v43, v5) == 1)
  {
    OUTLINED_FUNCTION_5_69();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_27;
  }

  v44 = OUTLINED_FUNCTION_10_46();
  v45(v44);
  sub_237EF8B90();
  if (v91)
  {
    OUTLINED_FUNCTION_17_37();

    v46 = OUTLINED_FUNCTION_55_1();
    v47(v46);
    v9[1](v25, v91);
LABEL_26:
    OUTLINED_FUNCTION_5_69();

    OUTLINED_FUNCTION_3_0();
LABEL_27:
    OUTLINED_FUNCTION_68_2();

    __asm { BRAA            X1, X16 }
  }

  v52 = sub_237EF60D0();
  *(v0 + 328) = v52;
  if (v53)
  {
    OUTLINED_FUNCTION_24_26();
    OUTLINED_FUNCTION_3_23();
    v54 = swift_allocError();
    OUTLINED_FUNCTION_2_72(v54, v55);
    OUTLINED_FUNCTION_45_10(v56, v57, v58, v59, v60, v61, v62, v63, v83, v84, v85, v86, v87, v88, v89, 0, v93, v94);

    (*(v1 + 8))(v25, v9);
    (*(v4 + 8))(v90, v92);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_25_24(v52);
  sub_237EF62F0();
  v64 = v9[1];
  v65 = OUTLINED_FUNCTION_55_1();
  v64(v65);
  if (!swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_8_58();
    v75 = sub_237EF62F0();
    v76 = OUTLINED_FUNCTION_55_1();
    v64(v76);
    *(v0 + 16) = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAF578, &unk_237F08940);
    sub_237EF85D0();
    *(v0 + 24) = OUTLINED_FUNCTION_46_12();
    swift_getMetatypeMetadata();
    sub_237EF85D0();
    sub_237CD1200();
    OUTLINED_FUNCTION_3_23();
    v77 = swift_allocError();
    OUTLINED_FUNCTION_2_72(v77, v78);
    OUTLINED_FUNCTION_36_14(v79, v80);

    (*(v86 + 8))();
    (*(v89 + 8))(v87, 0);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_34_10();
  v66 = swift_task_alloc();
  OUTLINED_FUNCTION_7_53(v66);
  MEMORY[0] = v0;
  OUTLINED_FUNCTION_6_55();
  OUTLINED_FUNCTION_68_2();

  return Transformer.applied<A>(to:eventHandler:)(v67, v68, v69, v70, v71, v72, v73);
}

uint64_t sub_237DD8404()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[12];
  v6 = v0[7];

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v6, v1);
  OUTLINED_FUNCTION_5_69();

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237DD8500(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F66736E617274 && a2 == 0xEC0000007372656DLL;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614D6E6D756C6F63 && a2 == 0xED0000676E697070)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237DD85D4(char a1)
{
  if (a1)
  {
    return 0x614D6E6D756C6F63;
  }

  else
  {
    return 0x726F66736E617274;
  }
}

uint64_t sub_237DD8634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DD8500(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DD8668(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237DD86BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237DD8710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C90C10;

  return ColumnSelectorTransformer.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t ColumnSelectorTransformer.debugDescription.getter(uint64_t a1)
{
  sub_237EF8260();
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000028, 0x8000000237EFFCE0);
  sub_237EF82B0();
  swift_getWitnessTable();
  sub_237EF9D00();

  MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFFD10);
  v1 = sub_237EF8220();
  MEMORY[0x2383E0710](v1);

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t ColumnSelectorTransformer<>.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[3];
  v18 = a2[2];
  v19 = a4;
  type metadata accessor for ColumnSelectorTransformer.CodingKeys(255, v18, v6, a2[4]);
  OUTLINED_FUNCTION_9_45();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v20 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = *v4;
  v17 = v4[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EF8260();
  v13 = v7;
  sub_237EFA1B0();
  v25 = v12;
  v24 = 0;
  sub_237EF82B0();
  v22 = MEMORY[0x277D837D8];
  v23 = v19;
  swift_getWitnessTable();
  v14 = v21;
  sub_237EF9A70();
  if (v14)
  {

    return (*(v20 + 8))(v11, v7);
  }

  else
  {
    v16 = v20;

    v25 = v17;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB37C0, &qword_237F15960);
    sub_237DD8E28(&qword_27DEB37C8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_237EF9A70();
    return (*(v16 + 8))(v11, v13);
  }
}

uint64_t ColumnSelectorTransformer<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for ColumnSelectorTransformer.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_9_45();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_237EF82B0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_28_21();
  sub_237EF9970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB37C0, &qword_237F15960);
  sub_237DD8E28(qword_27DEB37D0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  OUTLINED_FUNCTION_37_13();
  OUTLINED_FUNCTION_28_21();
  sub_237EF9970();
  v8 = OUTLINED_FUNCTION_26_17();
  v9(v8);
  *a5 = v12;
  a5[1] = v12;
  sub_237EF8260();
  sub_237EF8260();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237DD8E28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB37C0, &qword_237F15960);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_237DD8ED8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v284 = a2;
  v262 = a3;
  sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v259 = v6;
  v260 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  v261 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3858, &unk_237F15C00);
  MEMORY[0x28223BE20](v8 - 8);
  v258 = &v255 - v9;
  OUTLINED_FUNCTION_12_1();
  v307 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v298 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v305 = v12;
  OUTLINED_FUNCTION_12_1();
  v13 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v266 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v256 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_1();
  v296 = v18;
  OUTLINED_FUNCTION_12_1();
  v306 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v295 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v290 = v21;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_16();
  v289 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  v257 = v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_1();
  v265 = v27;
  v28 = OUTLINED_FUNCTION_12_1();
  v263 = type metadata accessor for CoreMLPackage(v28);
  OUTLINED_FUNCTION_1();
  v294 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_2();
  v267 = v31;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v268 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_16();
  v264 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_16();
  v309 = v37;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  v40 = &v255 - v39;
  v41 = *(a1 + 16);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_2();
  v286 = v44;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22_1();
  v271 = v46;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v276 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_2();
  v280 = v50;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_22_1();
  v279 = v52;
  v53 = *v3;
  v288 = v3[1];
  OUTLINED_FUNCTION_28_21();
  v323[0] = sub_237EF8260();
  v292 = v41;
  OUTLINED_FUNCTION_28_21();
  sub_237EF8250();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_21();
  v325 = sub_237EF8D00();
  v54 = v53 + 64;
  v55 = 1 << *(v53 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v53 + 64);
  v277 = (v55 + 63) >> 6;
  v270 = v42 + 16;
  v285 = (v42 + 32);
  v274 = v284 + 8;
  v275 = (v48 + 32);
  v58 = v295;
  v317 = (v295 + 16);
  v312 = (v266 + 88);
  LODWORD(v311) = *MEMORY[0x277D253C8];
  v310 = (v266 + 8);
  v303 = v298 + 8;
  v304 = v298 + 16;
  v59 = v40;
  v60 = v265;
  v61 = v306;
  v293 = (v295 + 24);
  v316 = (v295 + 8);
  v272 = v42;
  v273 = v42 + 8;
  v278 = v53;
  v62 = v59;
  sub_237EF8260();
  v63 = 0;
  v318 = MEMORY[0x277D84F90];
  v297 = v13;
  v269 = v54;
  v300 = v62;
  while (1)
  {
    if (v57)
    {
      v64 = v57;
      v282 = v63;
      v65 = v63;
LABEL_11:
      v283 = (v64 - 1) & v64;
      v69 = __clz(__rbit64(v64)) | (v65 << 6);
      v70 = (*(v278 + 48) + 16 * v69);
      v72 = *v70;
      v71 = v70[1];
      v73 = v271;
      v74 = v272;
      v75 = v292;
      (*(v272 + 16))(v271, *(v278 + 56) + *(v272 + 72) * v69, v292);
      v77 = v280;
      v76 = TupleTypeMetadata2;
      v78 = *(TupleTypeMetadata2 + 48);
      *v280 = v72;
      v77[1] = v71;
      v79 = v75;
      v67 = v77;
      v66 = v76;
      (*(v74 + 32))(v77 + v78, v73, v79);
      OUTLINED_FUNCTION_29();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v66);
      sub_237EF8260();
      v68 = v279;
      v62 = v300;
    }

    else
    {
      v67 = v280;
      v66 = TupleTypeMetadata2;
      v68 = v279;
      while (1)
      {
        v65 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_121;
        }

        if (v65 >= v277)
        {
          break;
        }

        v64 = *(v54 + 8 * v65);
        ++v63;
        if (v64)
        {
          v282 = v65;
          goto LABEL_11;
        }
      }

      v282 = v63;
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v66);
      v283 = 0;
    }

    (*v275)(v68, v67, v276);
    v83 = OUTLINED_FUNCTION_23_0();
    if (__swift_getEnumTagSinglePayload(v83, v84, v66) == 1)
    {

      if (*(v318 + 16) == 1)
      {
        v160 = v258;
        sub_237CA34E8(v318, v258);
        v161 = OUTLINED_FUNCTION_23_0();
        if (__swift_getEnumTagSinglePayload(v161, v162, v263) == 1)
        {
          goto LABEL_142;
        }

        sub_237DDA7EC(v160, v262);
        sub_237EF8260();
        goto LABEL_86;
      }

      v165 = v257;
      sub_237EF7720();
      v166 = v261;
      sub_237EF7810();
      v168 = v262;
      v167 = v263;
      v169 = v262 + *(v263 + 24);
      *(v169 + 80) = 0;
      *(v169 + 48) = 0u;
      *(v169 + 64) = 0u;
      *(v169 + 16) = 0u;
      *(v169 + 32) = 0u;
      *v169 = 0u;
      v314 = *v317;
      v314(v168, v165, v306);
      memcpy(v323, v169, sizeof(v323));
      sub_237C9BD20(v323);
      *v169 = 0u;
      *(v169 + 16) = 0u;
      *(v169 + 32) = 0u;
      *(v169 + 48) = 0u;
      *(v169 + 64) = 0u;
      v310 = v169;
      *(v169 + 80) = 0;
      v170 = v259;
      v171 = v260;
      (*(v259 + 16))(v168 + *(v167 + 20), v166, v260);
      v315 = "statusDictionary";
      v172 = sub_237E34060();
      v174 = v173;
      v175 = sub_237EF7780();
      v177 = v176;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v320[0] = *v177;
      sub_237C91098(v172, v174, 0xD00000000000001ALL, v315 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
      *v177 = v320[0];
      v175(v321, 0);
      v179 = v306;
      (*(v170 + 8))(v261, v171);
      v313 = *v316;
      v313(v165, v179);
      v309 = *(v318 + 16);
      if (!v309)
      {
        sub_237EF8260();
        v183 = v297;
LABEL_85:
        v224 = v256;
        sub_237EF7190();
        (*(v266 + 104))(v224, *MEMORY[0x277D253D0], v183);
        sub_237EF7660();
LABEL_86:
        v225 = *(v318 + 16);
        if (v225)
        {
          OUTLINED_FUNCTION_28();
          v227 = v318 + v226;
          v317 = *(v228 + 72);
          v229 = MEMORY[0x277D84F90];
          v230 = v318 + v226;
          v316 = v225;
          while (1)
          {
            OUTLINED_FUNCTION_0_65();
            v231 = v268;
            sub_237DDA78C(v230, v268, v232);
            v233 = sub_237EF76A0();
            sub_237D0F8BC(v231);
            v234 = *(v233 + 16);
            v235 = *(v229 + 16);
            v236 = v235 + v234;
            if (__OFADD__(v235, v234))
            {
              goto LABEL_124;
            }

            v237 = swift_isUniquelyReferenced_nonNull_native();
            if (!v237 || v236 > *(v229 + 24) >> 1)
            {
              if (v235 <= v236)
              {
                v238 = v235 + v234;
              }

              else
              {
                v238 = v235;
              }

              sub_237D0BCB8(v237, v238, 1, v229);
              v229 = v239;
            }

            if (*(v233 + 16))
            {
              OUTLINED_FUNCTION_12_40();
              if (v214 != v190)
              {
                goto LABEL_128;
              }

              OUTLINED_FUNCTION_15_34();
              swift_arrayInitWithCopy();

              if (v234)
              {
                v240 = *(v229 + 16);
                v190 = __OFADD__(v240, v234);
                v241 = v240 + v234;
                if (v190)
                {
                  goto LABEL_131;
                }

                *(v229 + 16) = v241;
              }
            }

            else
            {

              if (v234)
              {
                goto LABEL_125;
              }
            }

            v230 += v317;
            if (!--v225)
            {
              sub_237EF76B0();
              v242 = MEMORY[0x277D84F90];
              v243 = v316;
              while (1)
              {
                OUTLINED_FUNCTION_0_65();
                v244 = v267;
                sub_237DDA78C(v227, v267, v245);
                v246 = sub_237EF76F0();
                sub_237D0F8BC(v244);
                v247 = *(v246 + 16);
                v248 = *(v242 + 16);
                v249 = v248 + v247;
                if (__OFADD__(v248, v247))
                {
                  goto LABEL_126;
                }

                v250 = swift_isUniquelyReferenced_nonNull_native();
                if (!v250 || v249 > *(v242 + 24) >> 1)
                {
                  if (v248 <= v249)
                  {
                    v251 = v248 + v247;
                  }

                  else
                  {
                    v251 = v248;
                  }

                  sub_237D0BCB8(v250, v251, 1, v242);
                  v242 = v252;
                }

                if (*(v246 + 16))
                {
                  OUTLINED_FUNCTION_12_40();
                  if (v214 != v190)
                  {
                    goto LABEL_129;
                  }

                  OUTLINED_FUNCTION_15_34();
                  swift_arrayInitWithCopy();

                  if (v247)
                  {
                    v253 = *(v242 + 16);
                    v190 = __OFADD__(v253, v247);
                    v254 = v253 + v247;
                    if (v190)
                    {
                      goto LABEL_132;
                    }

                    *(v242 + 16) = v254;
                  }
                }

                else
                {

                  if (v247)
                  {
                    goto LABEL_127;
                  }
                }

                v227 += v317;
                if (!--v243)
                {
                  goto LABEL_119;
                }
              }
            }
          }
        }

        sub_237EF76B0();
LABEL_119:
        swift_bridgeObjectRelease_n();

        sub_237EF7700();
        sub_237E36B18();
        return;
      }

      OUTLINED_FUNCTION_28();
      v308 = (v318 + v180);
      v312 = (v295 + 32);
      sub_237EF8260();
      v315 = 0;
      v181 = 0;
      v182 = MEMORY[0x277D84F90];
      v183 = v297;
      v185 = v263;
      v184 = v264;
      while (1)
      {
        if (v181 >= *(v318 + 16))
        {
          goto LABEL_130;
        }

        v311 = v181;
        OUTLINED_FUNCTION_0_65();
        sub_237DDA78C(v186, v184, v187);
        if (v310[10])
        {
          v188 = *(v185 + 24);
          memcpy(v321, (v184 + v188), sizeof(v321));
          if (v321[10])
          {
            memcpy(__dst, (v184 + v188), 0x50uLL);
            __dst[10] = v321[10];
            memcpy(v320, (v184 + v188), sizeof(v320));
            sub_237C9FEDC(v320, v319);
            v189 = sub_237E6542C(__dst);
            v190 = __OFADD__(v315, v189);
            v315 += v189;
            if (v190)
            {
              goto LABEL_133;
            }

            v191 = sub_237EF75C0();
            v192 = *(v191 + 16);
            if (v192)
            {
              v193 = (*(v295 + 80) + 32) & ~*(v295 + 80);
              v305 = v191;
              v194 = v191 + v193;
              v195 = *(v295 + 72);
              do
              {
                v196 = v289;
                v314(v289, v194, v179);
                sub_237ECF820();
                v313(v196, v179);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_237D0BD38(0, *(v182 + 16) + 1, 1, v182);
                  v182 = v200;
                }

                v198 = *(v182 + 16);
                v197 = *(v182 + 24);
                if (v198 >= v197 >> 1)
                {
                  v201 = OUTLINED_FUNCTION_5_2(v197);
                  sub_237D0BD38(v201, v202, v203, v182);
                  v182 = v204;
                }

                *(v182 + 16) = v198 + 1;
                v199 = v182 + v193 + v198 * v195;
                v179 = v306;
                (*v312)(v199, v290, v306);
                v194 += v195;
                --v192;
              }

              while (v192);
              sub_237C9BD20(v321);

              v183 = v297;
              v185 = v263;
              v184 = v264;
            }

            else
            {
              sub_237C9BD20(v321);
            }

            goto LABEL_82;
          }
        }

        v205 = (v184 + *(v185 + 24));
        memcpy(v322, v205, sizeof(v322));
        v206 = v205[10];
        if (v206)
        {
          v207 = v310;
          memcpy(v320, v310, sizeof(v320));
          memcpy(v321, v205, 0x50uLL);
          v321[10] = v206;
          sub_237C9FEDC(v321, v319);
          sub_237C9BD20(v320);
          memcpy(v207, v322, 0x50uLL);
          v207[10] = v206;
          v208 = sub_237EF75C0();
          v209 = *(v208 + 16);
          v210 = *(v182 + 16);
          if (__OFADD__(v210, v209))
          {
            goto LABEL_134;
          }

          v211 = v208;
          v212 = swift_isUniquelyReferenced_nonNull_native();
          if (!v212 || v210 + v209 > *(v182 + 24) >> 1)
          {
            OUTLINED_FUNCTION_44_11(v212);
            v182 = v213;
          }

          v179 = v306;
          v184 = v264;
          if (!*(v211 + 16))
          {

            if (v209)
            {
              goto LABEL_135;
            }

            goto LABEL_82;
          }

          OUTLINED_FUNCTION_12_40();
          if (v214 != v190)
          {
            goto LABEL_136;
          }

          OUTLINED_FUNCTION_15_34();
          OUTLINED_FUNCTION_26_22();

          if (v209)
          {
            v215 = *(v182 + 16);
            v190 = __OFADD__(v215, v209);
            v216 = v215 + v209;
            if (v190)
            {
              goto LABEL_139;
            }

LABEL_77:
            *(v182 + 16) = v216;
          }
        }

        else
        {
          v217 = sub_237EF75C0();
          v218 = *(v217 + 16);
          v219 = *(v182 + 16);
          if (__OFADD__(v219, v218))
          {
            goto LABEL_137;
          }

          v220 = v217;
          v221 = swift_isUniquelyReferenced_nonNull_native();
          if (!v221 || v219 + v218 > *(v182 + 24) >> 1)
          {
            OUTLINED_FUNCTION_44_11(v221);
            v182 = v222;
          }

          v179 = v306;
          v184 = v264;
          if (!*(v220 + 16))
          {

            if (v218)
            {
              goto LABEL_138;
            }

            goto LABEL_82;
          }

          OUTLINED_FUNCTION_12_40();
          if (v214 != v190)
          {
            goto LABEL_140;
          }

          OUTLINED_FUNCTION_15_34();
          OUTLINED_FUNCTION_26_22();

          if (v218)
          {
            v223 = *(v182 + 16);
            v190 = __OFADD__(v223, v218);
            v216 = v223 + v218;
            if (v190)
            {
              goto LABEL_141;
            }

            goto LABEL_77;
          }
        }

LABEL_82:
        sub_237D0F8BC(v184);
        v181 = v311 + 1;
        if (v311 + 1 == v309)
        {
          goto LABEL_85;
        }
      }
    }

    v85 = *v68;
    v299 = v68[1];
    v86 = v68 + *(v66 + 48);
    v87 = v292;
    (*v285)(v286, v86, v292);
    v88 = v287;
    (*(v284 + 8))(v87);
    v287 = v88;
    if (v88)
    {
      v163 = OUTLINED_FUNCTION_13_35();
      v164(v163);

      return;
    }

    v89 = sub_237EF75C0();
    v315 = *(v89 + 16);
    if (v315)
    {
      break;
    }

LABEL_35:

    v146 = OUTLINED_FUNCTION_13_35();
    v147(v146);
    sub_237D0F8BC(v62);
    v54 = v269;
    v63 = v282;
    v57 = v283;
  }

  OUTLINED_FUNCTION_28();
  v314 = (v89 + v90);
  v91 = sub_237EF8260();
  v92 = 0;
  v291 = v85;
  v93 = v85;
  v308 = v91;
  v313 = v89;
  while (v92 < *(v89 + 16))
  {
    (*(v58 + 16))(v60, v314 + *(v58 + 72) * v92, v61);
    sub_237EF7650();
    v94 = OUTLINED_FUNCTION_21_32();
    v96 = v95(v94);
    if (v96 == v311)
    {
      v97 = OUTLINED_FUNCTION_16_39();
      v98(v97);
      v99 = OUTLINED_FUNCTION_21_32();
      v100(v99);
    }

    else
    {
      v101 = OUTLINED_FUNCTION_21_32();
      v102(v101);
      v103 = *(sub_237EF76A0() + 16);

      if (v103 != 1)
      {

        type metadata accessor for SerializationError(0);
        sub_237CA2D6C();
        OUTLINED_FUNCTION_3_23();
        swift_allocError();
        OUTLINED_FUNCTION_42_11();
        v154 = v153 + 11;
LABEL_39:
        *v151 = v154;
        v151[1] = v152;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v156 = OUTLINED_FUNCTION_16_39();
        v157(v156);
        v158 = OUTLINED_FUNCTION_13_35();
        v159(v158);
        sub_237D0F8BC(v300);
        return;
      }

      v104 = *(sub_237EF76F0() + 16);

      if (!v104)
      {

        type metadata accessor for SerializationError(0);
        sub_237CA2D6C();
        OUTLINED_FUNCTION_3_23();
        swift_allocError();
        OUTLINED_FUNCTION_42_11();
        v154 = v155 + 12;
        goto LABEL_39;
      }

      if (!*(sub_237EF76A0() + 16))
      {
        goto LABEL_122;
      }

      v105 = v298;
      OUTLINED_FUNCTION_28();
      v106 = *(v105 + 16);
      v301 = v107;
      v302 = v106;
      v109 = v305;
      v110 = v93;
      v111 = v307;
      v106(v305, v108 + v107, v307);

      sub_237EF70A0();
      v112 = *(v105 + 8);
      v113 = v111;
      v93 = v110;
      v112(v109, v113);
      sub_237EF76C0();

      v114 = v60;
      v115 = *(sub_237EF76F0() + 16);

      if (v115 == 1)
      {

        v116 = v288;
        v117 = v299;
        v118 = v291;
        v119 = v291;
        if (*(v288 + 16))
        {
          v117 = v299;
          v120 = sub_237D2FC30(v291);
          v119 = v118;
          if (v121)
          {
            v122 = (*(v116 + 56) + 16 * v120);
            v119 = *v122;
            v117 = v122[1];
          }
        }

        sub_237EF8260();
        v123 = sub_237DDA48C(v119, v117, v325);
        v125 = v124;

        v126 = sub_237EF76F0();
        if (!*(v126 + 16))
        {
          goto LABEL_123;
        }

        v127 = v305;
        v308 = v112;
        v128 = v123;
        v129 = v307;
        v302(v305, v126 + v301, v307);

        sub_237EF70A0();
        v130 = v129;
        v93 = v128;
        v308(v127, v130);
        sub_237EF76C0();

        v321[0] = v128;
        v321[1] = v125;
        v308 = v125;
        sub_237EF8260();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3860, &unk_237F15C10);
        sub_237EF8CA0();
      }

      v60 = v114;
      v131 = v300;
      v61 = v306;
      (*v293)(v300, v114, v306);
      OUTLINED_FUNCTION_0_65();
      sub_237DDA78C(v131, v309, v132);
      v133 = swift_isUniquelyReferenced_nonNull_native();
      v58 = v295;
      if ((v133 & 1) == 0)
      {
        sub_237D0BF80(0, *(v318 + 16) + 1, 1, v318);
        v318 = v141;
      }

      v135 = *(v318 + 16);
      v134 = *(v318 + 24);
      if (v135 >= v134 >> 1)
      {
        v142 = OUTLINED_FUNCTION_5_2(v134);
        sub_237D0BF80(v142, v143, v144, v318);
        v318 = v145;
      }

      v136 = OUTLINED_FUNCTION_16_39();
      v137(v136);
      *(v318 + 16) = v135 + 1;
      OUTLINED_FUNCTION_28();
      sub_237DDA7EC(v309, v139 + v138 + *(v140 + 72) * v135);
    }

    ++v92;
    v89 = v313;
    if (v315 == v92)
    {

      v62 = v300;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
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
}

uint64_t sub_237DDA48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_237E478D8(a1, a2, a3);
  if ((result & 1) == 0)
  {
    sub_237EF8260();
    return a1;
  }

  v7 = 0;
LABEL_3:
  if (!__OFADD__(v7++, 1))
  {
    sub_237EF8260();
    MEMORY[0x2383E0710](95, 0xE100000000000000);
    v9 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v9);

    if (*(a3 + 16))
    {
      sub_237EFA120();
      sub_237EF8610();
      v10 = sub_237EFA170();
      v11 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(a3 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = (*(a3 + 48) + 16 * v12);
        if (*v13 != a1 || v13[1] != a2)
        {
          v15 = sub_237EF9D40();
          v10 = v12 + 1;
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_3;
      }
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237DDA618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237DDA66C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237DDA78C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237DDA7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMLPackage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_2_72(uint64_t a1, void *a2)
{
  *a2 = 0x7463656C6553;
  a2[1] = 0xE600000000000000;
  a2[2] = v3;
  a2[3] = v2;
}

uint64_t OUTLINED_FUNCTION_7_53(uint64_t a1)
{
  *(v1 + 336) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_58()
{

  return sub_237EF6130();
}

uint64_t OUTLINED_FUNCTION_10_46()
{
  v1 = v0[32];
  result = v0[26];
  v0[39] = *v1;
  v0[40] = v1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_37()
{
}

unint64_t OUTLINED_FUNCTION_24_26()
{

  return sub_237CD1200();
}

uint64_t OUTLINED_FUNCTION_25_24(uint64_t a1)
{

  return sub_237EF6130();
}

uint64_t OUTLINED_FUNCTION_26_22()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_34_10()
{
  v3 = *(v1 + 136);

  return MEMORY[0x2821345E0](v0, v3, v3);
}

uint64_t OUTLINED_FUNCTION_35_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_237EF6220();
}

uint64_t OUTLINED_FUNCTION_36_14(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  *(a2 + 64) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_44_11(char a1)
{
  if (v1 <= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v1;
  }

  sub_237D0BD38(a1, v5, 1, v3);
}

uint64_t OUTLINED_FUNCTION_45_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18)
{
  *(a2 + 32) = a17;
  *(a2 + 48) = a18;
  *(a2 + 64) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_46_12()
{

  return sub_237EF90F0();
}

uint64_t LogisticRegressionClassifier.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v14 = *(a1 + 56);
  v9 = *(a1 + 72);
  v10 = sub_237C65348();
  *(&v13 + 1) = MEMORY[0x277D83BB8];
  *(&v12 + 1) = v10;
  *&v13 = MEMORY[0x277D83BA0];
  *&v12 = MEMORY[0x277CBFDC0];
  return sub_237DDAE0C((v2 + 8), v4, v5, MEMORY[0x277D839F8], MEMORY[0x277D83B88], v6, v7, v8, a2, v14, v9, v12, v13, MEMORY[0x277D83B90], MEMORY[0x277D83B98]);
}

double sub_237DDAC74@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 48);
  v9[0] = *(a1 + a2 - 64);
  v9[1] = v4;
  v5 = *(a1 + a2 - 16);
  v9[2] = *(a1 + a2 - 32);
  v9[3] = v5;
  v6 = type metadata accessor for LogisticRegressionClassifier(0, v9);
  LogisticRegressionClassifier.configuration.getter(v6, v10);
  v7 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v7;
  result = *&v11;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  return result;
}

double sub_237DDACE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 48);
  v9[0] = *(a3 + a4 - 64);
  v9[1] = v5;
  v6 = *(a3 + a4 - 16);
  v9[2] = *(a3 + a4 - 32);
  v9[3] = v6;
  v7 = type metadata accessor for LogisticRegressionClassifier(0, v9);
  return LogisticRegressionClassifier.configuration.setter(a1, v7);
}

double LogisticRegressionClassifier.configuration.setter(uint64_t *a1, void *a2)
{
  v5 = a2[2];
  v6 = a2[3];
  v7 = sub_237C65348();
  *&v10 = MEMORY[0x277D83BB8];
  *(&v10 + 1) = MEMORY[0x277D83B90];
  sub_237DDAE0C(a1, MEMORY[0x277D839F8], MEMORY[0x277D83B88], v5, v6, MEMORY[0x277CBFDC0], v7, MEMORY[0x277D83BA0], v11, v10, MEMORY[0x277D83B98], *(a2 + 2), *(a2 + 3), a2[8], a2[9]);
  v8 = v11[1];
  *(v2 + 8) = v11[0];
  *(v2 + 24) = v8;
  result = *&v12;
  *(v2 + 40) = v12;
  *(v2 + 56) = v13;
  return result;
}

uint64_t sub_237DDAE0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[2];
  v24 = a1[3];
  v25 = a1[4];
  v26 = *(a1 + 49);
  v27 = a1[6] & 1;
  v29 = a4;
  v30 = a5;
  v31 = a12;
  *v32 = a13;
  *&v32[16] = a14;
  v33 = a15;
  type metadata accessor for LogisticRegressionClassifier.Configuration(0, &v29);
  v29 = a2;
  v30 = a3;
  *&v31 = a6;
  *(&v31 + 1) = a7;
  *v32 = a8;
  *&v32[8] = a10;
  v33 = a11;
  result = type metadata accessor for LogisticRegressionClassifier.Configuration(0, &v29);
  *a9 = v21;
  *(a9 + 8) = v22;
  *(a9 + 16) = v23;
  *(a9 + 24) = v24;
  *(a9 + 32) = v25;
  *(a9 + 40) = 10;
  *(a9 + 48) = v27;
  *(a9 + 49) = v26;
  return result;
}

uint64_t (*LogisticRegressionClassifier.configuration.modify(void *a1, uint64_t a2))()
{
  v5 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v5;
  v5[7] = a2;
  v5[8] = v2;
  LogisticRegressionClassifier.configuration.getter(a2, v5);
  return sub_237DDAF94;
}

void sub_237DDAF94(_OWORD **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 7);
  v3 = (*a1)[1];
  v4[0] = **a1;
  v4[1] = v3;
  v4[2] = v1[2];
  v5 = *(v1 + 24);
  LogisticRegressionClassifier.configuration.setter(v4, v2);

  free(v1);
}

uint64_t LogisticRegressionClassifier.labels.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double LogisticRegressionClassifier.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_237F15C20;
  *(a1 + 16) = 25;
  result = 1.0;
  *(a1 + 24) = xmmword_237F15C30;
  *(a1 + 40) = 10;
  *(a1 + 48) = 1;
  return result;
}

double LogisticRegressionClassifier.init(labels:configuration:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  v19 = sub_237C65348();
  *&v24 = a7;
  *(&v24 + 1) = a8;
  *(&v23 + 1) = a6;
  *&v23 = a5;
  *&v22 = MEMORY[0x277D83BB8];
  *(&v22 + 1) = MEMORY[0x277D83B90];
  sub_237DDAE0C(a2, MEMORY[0x277D839F8], MEMORY[0x277D83B88], a3, a4, MEMORY[0x277CBFDC0], v19, MEMORY[0x277D83BA0], v25, v22, MEMORY[0x277D83B98], v23, v24, a10, a11);
  v20 = v25[1];
  *(a9 + 8) = v25[0];
  *(a9 + 24) = v20;
  result = *&v26;
  *(a9 + 40) = v26;
  *(a9 + 56) = v27;
  return result;
}

uint64_t LogisticRegressionClassifier.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  OUTLINED_FUNCTION_7_54();
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237DDB1A4()
{
  v80 = v0;
  v1 = v0;
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v63 = v3;
  v5 = swift_task_alloc();
  v70 = v4[2];
  *v5 = v70;
  v62 = v4[3];
  v5[1] = v62;
  v5[2] = v2;
  v6 = v4[4];
  v5[3] = v6;
  v7 = v4[5];
  v5[4] = v7;
  v68 = v7;
  v69 = v6;
  v8 = v4[6];
  v5[5] = v8;
  v9 = v4[7];
  v5[6] = v9;
  v10 = v4[8];
  v5[7] = v10;
  v11 = v4[9];
  v5[8] = v11;
  v5[9] = v3;
  KeyPath = swift_getKeyPath();

  v13 = swift_task_alloc();
  v13[2] = v2;
  v13[3] = v7;
  v66 = v11;
  v67 = v8;
  v13[4] = v8;
  v13[5] = v9;
  v60 = v9;
  v61 = v10;
  v13[6] = v10;
  v13[7] = v11;
  v14 = v1;
  v13[8] = v63;
  v13[9] = KeyPath;
  v15 = sub_237EF7E90();
  v17 = sub_237C8FFEC(sub_237CF9EA4, v13, v2, v15, MEMORY[0x277D84A98], v63, MEMORY[0x277D84AC0], v16);

  v1[9] = v17;
  v18 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237EDB96C(v79, (v1 + 9), v18, v70, WitnessTable, v69, v68);
  v21 = v1[15];
  v20 = v1[16];

  v58 = v79[1];
  v59 = v79[0];
  v57 = v79[2];
  v65 = v79[3];
  v22 = swift_task_alloc();
  *v22 = v70;
  v22[1] = v62;
  v23.n128_u64[0] = v69;
  v23.n128_u64[1] = v68;
  v24.n128_u64[0] = v8;
  v24.n128_u64[1] = v60;
  v22[2] = v21;
  v55 = v24;
  v56 = v23;
  v25 = OUTLINED_FUNCTION_11_43(v22, v23, v24);
  v25[7] = v10;
  v25[8] = v66;
  v25[9] = v20;
  v26 = swift_getKeyPath();

  v27 = swift_task_alloc();
  v28.n128_u64[0] = v68;
  v28.n128_u64[1] = v8;
  v29.n128_u64[0] = v60;
  v29.n128_u64[1] = v10;
  *(v27 + 16) = v21;
  v30 = OUTLINED_FUNCTION_11_43(v27, v28, v29);
  v30[7] = v66;
  v30[8] = v20;
  v30[9] = v26;
  v32 = sub_237C8FFEC(sub_237CFA07C, v27, v21, v62, MEMORY[0x277D84A98], v20, MEMORY[0x277D84AC0], v31);

  v1[9] = v32;
  v33 = sub_237EF8A60();
  sub_237EF8260();
  v34 = swift_getWitnessTable();
  v35 = sub_237E5E22C((v1 + 9), v62, v33, v8, v66, v34);
  v37 = v36;
  if (sub_237E5E170(v35, v36, v62, v8, v66) <= 1)
  {

    sub_237C84150();
    v48 = swift_allocError();
    OUTLINED_FUNCTION_5_70(v48, v49);
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v64 = v35;
    v38 = v1 + 2;
    v39 = v1[15];
    v40 = v1[16];
    v41 = v37;
    v53 = v14[12];
    v54 = v14[13];
    v14[9] = v32;
    v42 = swift_task_alloc();
    *(v42 + 16) = v70;
    *(v42 + 24) = v62;
    *(v42 + 32) = v39;
    *(v42 + 56) = v55;
    *(v42 + 40) = v56;
    *(v42 + 72) = v61;
    *(v42 + 80) = v66;
    *(v42 + 88) = v40;
    *(v42 + 96) = v64;
    *(v42 + 104) = v41;
    OUTLINED_FUNCTION_1_24();
    v43 = swift_getWitnessTable();
    sub_237C9339C(sub_237DDB740, v42, v33, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v43);
    v45 = v44;

    v46 = *(v38 + 1);
    v72 = *v38;
    v73 = v46;
    v74 = *(v38 + 2);
    v75 = *(v38 + 24);
    v76[0] = v59;
    v76[1] = v58;
    v77 = v57;
    v78 = v65;
    v47 = sub_237E5E170(v64, v41, v62, v67, v66);
    BaseLogisticRegressionClassifier.fitted(features:annotations:classCount:eventHandler:)(v76, v45, v47, v53, v54);
    v51 = v14[10];

    memcpy(v79, __src, 0x59uLL);
    sub_237DBDA84(v79, v64, v41, v51);
    OUTLINED_FUNCTION_3_0();
  }

  return v52();
}

uint64_t sub_237DDB740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237E5E354(a1, v2[12], v2[13], v2[3], v2[7], v2[10]);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t LogisticRegressionClassifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[19] = v11;
  v9[20] = v12;
  v9[17] = a7;
  v9[18] = a8;
  v9[15] = a5;
  v9[16] = a6;
  v9[13] = a3;
  v9[14] = a4;
  v9[11] = a1;
  v9[12] = a2;
  v9[21] = *v8;
  OUTLINED_FUNCTION_7_54();
  return MEMORY[0x2822009F8](sub_237DDB7DC, 0, 0);
}

uint64_t sub_237DDB7DC()
{
  v107 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v94 = *(v0 + 17);
  v3 = v0[16];
  v4 = swift_task_alloc();
  v93 = v3[2];
  *v4 = v93;
  v85 = v3[3];
  *(v4 + 8) = v85;
  *(v4 + 16) = v94;
  v92 = v3[4];
  *(v4 + 32) = v92;
  v5 = v3[5];
  *(v4 + 40) = v5;
  v6 = v3[6];
  *(v4 + 48) = v6;
  v7 = v3[7];
  *(v4 + 56) = v7;
  v8 = v3[8];
  *(v4 + 64) = v8;
  v9 = v3[9];
  *(v4 + 72) = v9;
  *(v4 + 80) = v1;
  *(v4 + 88) = v2;
  KeyPath = swift_getKeyPath();

  v11 = swift_task_alloc();
  *&v12 = v5;
  v83 = v6;
  v84 = v8;
  *(&v12 + 1) = v6;
  *(v11 + 32) = v12;
  *(v11 + 16) = v94;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v86 = v9;
  *(v11 + 64) = v9;
  *(v11 + 72) = v1;
  *(v11 + 80) = v2;
  *(v11 + 88) = KeyPath;
  v13 = sub_237EF7E90();
  v15 = sub_237C8FFEC(sub_237DDE678, v11, v94, v13, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v14);

  v0[9] = v15;
  v90 = v13;
  v16 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v17 = v5;
  sub_237EDB96C(v106, (v0 + 9), v16, v93, WitnessTable, v92, v5);
  v18 = v0[20];
  v80 = v0 + 9;
  v81 = v0[19];
  v87 = v0;
  v74 = v0[18];
  v76 = v0[17];

  v69 = v106[1];
  v70 = v106[0];
  v68 = v106[2];
  v79 = v106[3];
  v19 = swift_task_alloc();
  *v19 = v93;
  *(v19 + 8) = v85;
  *(v19 + 16) = v76;
  *(v19 + 24) = v74;
  *&v20 = v92;
  *(&v20 + 1) = v17;
  *&v21 = v6;
  *(&v21 + 1) = v7;
  v72 = v21;
  v73 = v20;
  *(v19 + 32) = v20;
  *(v19 + 48) = v21;
  *(v19 + 64) = v84;
  *(v19 + 72) = v86;
  *(v19 + 80) = v81;
  *(v19 + 88) = v18;
  v22 = v18;
  v23 = swift_getKeyPath();

  v24 = swift_task_alloc();
  *(v24 + 16) = v76;
  *(v24 + 24) = v74;
  *&v25 = v17;
  *(&v25 + 1) = v6;
  *&v26 = v7;
  *(&v26 + 1) = v84;
  v71 = v26;
  *(v24 + 32) = v25;
  *(v24 + 48) = v26;
  v77 = v25;
  *(v24 + 64) = v86;
  *(v24 + 72) = v81;
  *(v24 + 80) = v22;
  *(v24 + 88) = v23;
  v28 = sub_237C8FFEC(sub_237DDC108, v24, v74, v90, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v27);

  v0[9] = v28;
  sub_237EDB96C(v106, (v0 + 9), v16, v93, WitnessTable, v92, v17);

  v29 = v106[0];
  v82 = v106[1];
  v78 = v106[2];
  v30 = v106[3];
  v31 = sub_237EF8260();
  v32 = sub_237E5E16C(v31, v85, v6, v86);
  v91 = v33;
  if (sub_237E5E170(v32, v33, v85, v6, v86) <= 1)
  {

    sub_237C84150();
    v54 = swift_allocError();
    OUTLINED_FUNCTION_5_70(v54, v55);
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    v64 = v29;
    v67 = v30;
    v34 = v0[19];
    v35 = v0[20];
    v37 = v0[17];
    v36 = v0[18];
    v38 = swift_task_alloc();
    *v38 = v93;
    *(v38 + 8) = v85;
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    *(v38 + 32) = v73;
    *(v38 + 48) = v72;
    *(v38 + 64) = v84;
    *(v38 + 72) = v86;
    *(v38 + 80) = v34;
    *(v38 + 88) = v35;
    v89 = v32;
    v39 = swift_getKeyPath();

    v40 = swift_task_alloc();
    v41 = v37;
    *(v40 + 16) = v37;
    *(v40 + 24) = v36;
    v42 = v36;
    *(v40 + 32) = v77;
    *(v40 + 48) = v71;
    *(v40 + 64) = v86;
    *(v40 + 72) = v34;
    *(v40 + 80) = v35;
    *(v40 + 88) = v39;
    v65 = sub_237C8FFEC(sub_237DDE678, v40, v41, v85, MEMORY[0x277D84A98], v34, MEMORY[0x277D84AC0], v43);

    v0[9] = v65;
    v44 = swift_task_alloc();
    *(v44 + 16) = v93;
    *(v44 + 24) = v85;
    *(v44 + 32) = v41;
    *(v44 + 40) = v42;
    *(v44 + 48) = v73;
    *(v44 + 64) = v72;
    *(v44 + 80) = v84;
    *(v44 + 88) = v86;
    *(v44 + 96) = v34;
    *(v44 + 104) = v35;
    *(v44 + 112) = v89;
    *(v44 + 120) = v91;
    v45 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    v66 = swift_getWitnessTable();
    sub_237C9339C(sub_237DDC134, v44, v45, MEMORY[0x277D83B88], MEMORY[0x277D84A98], v66);
    v75 = v46;

    v47 = swift_task_alloc();
    *v47 = v93;
    *(v47 + 8) = v85;
    *(v47 + 16) = v41;
    *(v47 + 24) = v42;
    *(v47 + 32) = v73;
    *(v47 + 48) = v72;
    *(v47 + 64) = v84;
    *(v47 + 72) = v86;
    *(v47 + 80) = v34;
    *(v47 + 88) = v35;
    v48 = swift_getKeyPath();

    v49 = swift_task_alloc();
    *(v49 + 16) = v41;
    *(v49 + 24) = v42;
    *(v49 + 32) = v77;
    *(v49 + 48) = v71;
    *(v49 + 64) = v86;
    *(v49 + 72) = v34;
    *(v49 + 80) = v35;
    *(v49 + 88) = v48;
    v51 = sub_237C8FFEC(sub_237DDE678, v49, v42, v85, MEMORY[0x277D84A98], v35, MEMORY[0x277D84AC0], v50);

    v87[9] = v51;
    v52 = swift_task_alloc();
    *(v52 + 16) = v93;
    *(v52 + 24) = v85;
    *(v52 + 32) = v41;
    *(v52 + 40) = v42;
    *(v52 + 48) = v73;
    *(v52 + 64) = v72;
    *(v52 + 80) = v84;
    *(v52 + 88) = v86;
    *(v52 + 96) = v34;
    *(v52 + 104) = v35;
    *(v52 + 112) = v89;
    *(v52 + 120) = v91;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
    sub_237C9339C(sub_237DDC2DC, v52, v45, MEMORY[0x277D83B88], v53, v66);
    v58 = v57;
    v59 = v87[14];

    v60 = *(v80 - 5);
    v96 = *(v80 - 7);
    v97 = v60;
    v98 = *(v80 - 3);
    v99 = *(v80 - 4);
    v100[0] = v70;
    v100[1] = v69;
    v101 = v68;
    v102 = v79;
    v103[0] = v64;
    v103[1] = v82;
    v104 = v78;
    v105 = v67;
    v61 = sub_237E5E170(v89, v91, v85, v83, v86);
    BaseLogisticRegressionClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)(v100, v75, v103, v58, v61, v59);
    v62 = v87[11];

    memcpy(v106, __src, 0x59uLL);
    sub_237DBDA84(v106, v89, v91, v62);
    OUTLINED_FUNCTION_3_0();
  }

  return v63();
}

uint64_t sub_237DDC134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237E5E354(a1, v2[14], v2[15], v2[3], v2[8], v2[11]);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_237DDC17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237E5E354(v17, v18, v19, a2, v20, v21);
  if (v23)
  {
    (*(v14 + 16))(v16, a1, a2);
    v24 = sub_237EF85D0();
    v26 = v25;
    sub_237C84150();
    v27 = swift_allocError();
    *v28 = 0xD00000000000001CLL;
    *(v28 + 8) = 0x8000000237F15C70;
    *(v28 + 16) = v24;
    *(v28 + 24) = v26;
    *(v28 + 32) = 3;
    result = swift_willThrow();
    *a11 = v27;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void LogisticRegressionClassifier.encode(_:to:)(void *__src, uint64_t a2, _OWORD *a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = a3[2];
  v6[0] = a3[1];
  v6[1] = v4;
  v5 = a3[4];
  v6[2] = a3[3];
  v6[3] = v5;
  type metadata accessor for LogisticRegressionClassifierModel(0, v6);
  sub_237DBE914();
}

uint64_t sub_237DDC3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237CD5B14;

  return LogisticRegressionClassifier.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237DDC4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237C90C10;

  return LogisticRegressionClassifier.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v18, a6, a7);
}

double LogisticRegressionClassifier.makeTransformer()@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = MEMORY[0x277D84F90];
  v3 = a1[3];
  v4 = a1[6];
  v5 = a1[9];
  v6 = sub_237EF8260();
  v14 = sub_237E5E16C(v6, v3, v4, v5);
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
  v11 = a1[7];
  v10 = a1[8];
  v12 = sub_237DDC6C4();
  return sub_237DBDD68(&v16, v14, v8, v3, v9, a2, v4, v11, v10, v5, v12);
}

unint64_t sub_237DDC6C4()
{
  result = qword_280C8CD38;
  if (!qword_280C8CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAECA8, &qword_237F15D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8CD38);
  }

  return result;
}

uint64_t LogisticRegressionClassifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  OUTLINED_FUNCTION_7_54();
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237DDC75C(uint64_t a1)
{
  v70 = v1;
  sub_237EF8B90();
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v54 = v3;
  v56 = v2;
  v4 = *(v1 + 120);
  v5 = swift_task_alloc();
  v62 = v4[2];
  *v5 = v62;
  v53 = v4[3];
  v5[1] = v53;
  v5[2] = v2;
  v58 = v4[4];
  v5[3] = v58;
  v60 = v4[5];
  v5[4] = v60;
  v6 = v4[6];
  v5[5] = v6;
  v7 = v4[7];
  v5[6] = v7;
  v8 = v4[8];
  v5[7] = v8;
  v9 = v4[9];
  v5[8] = v9;
  v5[9] = v3;
  KeyPath = swift_getKeyPath();

  v11 = swift_task_alloc();
  v11[2] = v56;
  v11[3] = v60;
  v49 = v7;
  v50 = v6;
  v11[4] = v6;
  v11[5] = v7;
  v51 = v9;
  v52 = v8;
  v11[6] = v8;
  v11[7] = v9;
  v11[8] = v54;
  v11[9] = KeyPath;
  v12 = sub_237EF7E90();
  v14 = sub_237C8FFEC(sub_237CFA07C, v11, v56, v12, MEMORY[0x277D84A98], v54, MEMORY[0x277D84AC0], v13);

  *(v1 + 72) = v14;
  v15 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237EDB96C(&v63, v1 + 72, v15, v62, WitnessTable, v58, v60);
  v17 = *(v1 + 128);
  v18 = *(v1 + 136);
  v48 = v17;
  v57 = *(v1 + 88);

  v46 = *(&v63 + 1);
  v47 = v63;
  v45 = v64;
  v61 = *(&v64 + 1);
  v19 = swift_task_alloc();
  *v19 = v62;
  v19[1] = v53;
  v20.n128_u64[0] = v58;
  v20.n128_u64[1] = v60;
  v59 = v20;
  v21.n128_u64[0] = v50;
  v21.n128_u64[1] = v49;
  v55 = v21;
  v19[2] = v17;
  v22 = OUTLINED_FUNCTION_11_43(v19, v20, v21);
  v23 = v8;
  v22[7] = v8;
  v22[8] = v9;
  v22[9] = v18;
  v24 = swift_getKeyPath();

  v25 = swift_task_alloc();
  v26.n128_u64[0] = v60;
  v26.n128_u64[1] = v50;
  v27.n128_u64[0] = v49;
  v27.n128_u64[1] = v23;
  *(v25 + 16) = v48;
  v28 = OUTLINED_FUNCTION_11_43(v25, v26, v27);
  v28[7] = v9;
  v28[8] = v18;
  v28[9] = v24;
  v30 = v29;
  v32 = sub_237C8FFEC(sub_237CFA07C, v25, v29, v53, MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v31);

  *(v1 + 72) = v32;
  v33 = swift_task_alloc();
  *(v33 + 16) = v62;
  *(v33 + 24) = v53;
  *(v33 + 32) = v30;
  *(v33 + 56) = v55;
  *(v33 + 40) = v59;
  *(v33 + 72) = v52;
  *(v33 + 80) = v51;
  *(v33 + 88) = v18;
  *(v33 + 96) = v57;
  v34 = sub_237EF8A60();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  OUTLINED_FUNCTION_1_24();
  v36 = swift_getWitnessTable();
  sub_237C9339C(sub_237DDCD8C, v33, v34, MEMORY[0x277D83B88], v35, v36);
  v38 = v37;
  v40 = *(v1 + 104);
  v39 = *(v1 + 112);
  v41 = *(v1 + 88);

  v42 = *(v1 + 32);
  v63 = *(v1 + 16);
  v64 = v42;
  v65 = *(v1 + 48);
  v66 = *(v1 + 64);
  v67[0] = v47;
  v67[1] = v46;
  v68 = v45;
  v69 = v61;
  BaseLogisticRegressionClassifier.update(_:features:annotations:eventHandler:)(v41, v67, v38, v40, v39);

  OUTLINED_FUNCTION_3_0();

  return v44();
}

uint64_t sub_237DDCBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X7>, uint64_t *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v28 = a4;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 96);
  v17 = *(v15 + 104);
  sub_237EF8260();
  sub_237EF8260();
  v18 = sub_237E5E354(a1, v16, v17, a2, a3, a7);
  v20 = v19;

  if (v20)
  {
    (*(v12 + 16))(v14, a1, a2);
    v22 = sub_237EF85D0();
    v24 = v23;
    sub_237C84150();
    v25 = swift_allocError();
    *v26 = 0xD00000000000001CLL;
    *(v26 + 8) = 0x8000000237F15C70;
    *(v26 + 16) = v22;
    *(v26 + 24) = v24;
    *(v26 + 32) = 3;
    result = swift_willThrow();
    *a9 = v25;
  }

  else
  {
    *v28 = v18;
  }

  return result;
}

void LogisticRegressionClassifier.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(a1 + 16);
  memcpy(__dst, (a1 + 24), sizeof(__dst));
  if (v7)
  {
    *v16 = *a1;
    *&v16[16] = v7;
    memcpy(&v16[24], (a1 + 24), 0x51uLL);
    *&v16[104] = *(a1 + 104);
    v8 = a3[2];
    v15[0] = a3[1];
    v15[1] = v8;
    v9 = a3[4];
    v15[2] = a3[3];
    v15[3] = v9;
    type metadata accessor for LogisticRegressionClassifierModel(0, v15);
    sub_237DBE914();
    if (!v3)
    {
      *v16 = v7;
      memcpy(&v16[8], __dst, 0x41uLL);
      v10 = *(a2 + 24);
      v11 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, v10);
      v12 = *(v11 + 16);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
      v14 = sub_237D91558(&qword_27DEB2A10, MEMORY[0x277D83A08], &unk_237F1A778);
      v12(v16, v13, v14, v10, v11);
    }
  }

  else
  {
    sub_237EF9740("Fatal error", 11, 2, 0xD000000000000028, 0x8000000237EFFE00, "CreateMLComponents/LogisticRegressionClassifier.swift", 53, 2, 173);
    __break(1u);
  }
}

void LogisticRegressionClassifier.decodeWithOptimizer(from:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v20 = a3;
  sub_237DBEDA4(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5]);
  if (!v3)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
    v15 = *(v7 + 16);
    v8 = sub_237D91558(&qword_27DEB2A20, MEMORY[0x277D83A30], &unk_237F1A738);
    v15(v18, v5, v5, v8, v6, v7);
    memcpy(v16, v18, 0x49uLL);
    memcpy(__dst, &__src[16], 0x49uLL);
    sub_237D09E34(__dst);
    memcpy(&__src[16], v16, 0x49uLL);
    memcpy(v20, __src, 0x70uLL);
  }
}

uint64_t sub_237DDD174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237CD5B14;

  return LogisticRegressionClassifier.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

void sub_237DDD3DC(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 48);
  v6[0] = *(a1 + a2 - 64);
  v6[1] = v4;
  v5 = *(a1 + a2 - 16);
  v6[2] = *(a1 + a2 - 32);
  v6[3] = v5;
  type metadata accessor for LogisticRegressionClassifier.Configuration(0, v6);
  LogisticRegressionClassifier.Configuration.optimizationStrategy.getter(v6);
  *a3 = v6[0];
}

_BYTE *sub_237DDD438(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v4 = *(a3 + a4 - 48);
  v7[0] = *(a3 + a4 - 64);
  v7[1] = v4;
  v5 = *(a3 + a4 - 16);
  v7[2] = *(a3 + a4 - 32);
  v7[3] = v5;
  type metadata accessor for LogisticRegressionClassifier.Configuration(0, v7);
  return LogisticRegressionClassifier.Configuration.optimizationStrategy.setter(&v8);
}

uint64_t (*LogisticRegressionClassifier.Configuration.optimizationStrategy.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 49);
  return sub_237DDD4C8;
}

BOOL static LogisticRegressionClassifier.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 24), *(a2 + 24)))))) & 1) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 40) == *(a2 + 40) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0)
  {
    return *(a1 + 49) == *(a2 + 49);
  }

  return result;
}

uint64_t sub_237DDD55C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C616E6550326CLL && a2 == 0xE900000000000079;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746C616E6550316CLL && a2 == 0xE900000000000079;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000237EFF3E0 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657A695370657473 && a2 == 0xE800000000000000;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000237EFFE30 == a2;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x8000000237EFF400 == a2;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x616546656C616373 && a2 == 0xED00007365727574;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000015 && 0x8000000237EFFE50 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_237EF9D40();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_237DDD7E0(char a1)
{
  result = 0x746C616E6550326CLL;
  switch(a1)
  {
    case 1:
      result = 0x746C616E6550316CLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x657A695370657473;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x616546656C616373;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237DDD998(uint64_t a1)
{
  sub_237EFA120();
  sub_237C5EDA8(v3, *v1);
  return sub_237EFA170();
}

uint64_t sub_237DDDA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DDD55C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DDDAAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D87608();
  *a1 = result;
  return result;
}

uint64_t sub_237DDDAF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237DDDB48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LogisticRegressionClassifier.Configuration.encode(to:)(void *a1, _OWORD *a2)
{
  v4 = a2[2];
  v20[0] = a2[1];
  v20[1] = v4;
  v5 = a2[4];
  v20[2] = a2[3];
  v20[3] = v5;
  type metadata accessor for LogisticRegressionClassifier.Configuration.CodingKeys(255, v20);
  OUTLINED_FUNCTION_2_73();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = *(v2 + 16);
  v17 = *(v2 + 40);
  v18 = v12;
  v21 = *(v2 + 48);
  HIDWORD(v16) = *(v2 + 49);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  LOBYTE(v20[0]) = 0;
  v13 = v19;
  sub_237EF9A30();
  if (!v13)
  {
    v14 = BYTE4(v16);
    LOBYTE(v20[0]) = 1;
    OUTLINED_FUNCTION_8_59(v20);
    LOBYTE(v20[0]) = 2;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A50();
    LOBYTE(v20[0]) = 3;
    OUTLINED_FUNCTION_8_59(v20);
    LOBYTE(v20[0]) = 4;
    OUTLINED_FUNCTION_8_59(v20);
    LOBYTE(v20[0]) = 5;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A50();
    LOBYTE(v20[0]) = 6;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A20();
    LOBYTE(v20[0]) = v14;
    v22 = 7;
    sub_237DDDE38();
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A70();
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_237DDDE38()
{
  result = qword_27DEB3868;
  if (!qword_27DEB3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3868);
  }

  return result;
}

uint64_t LogisticRegressionClassifier.Configuration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 49);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2383E2240](*&v1);
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x2383E2240](*&v8);
  MEMORY[0x2383E2210](v3);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x2383E2240](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x2383E2240](*&v10);
  MEMORY[0x2383E2210](v6);
  sub_237EFA140();
  return MEMORY[0x2383E2210](v7);
}

uint64_t LogisticRegressionClassifier.Configuration.hashValue.getter()
{
  sub_237EFA120();
  LogisticRegressionClassifier.Configuration.hash(into:)();
  return sub_237EFA170();
}

uint64_t LogisticRegressionClassifier.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = a6;
  v29[5] = a7;
  v29[6] = a8;
  v29[7] = a10;
  type metadata accessor for LogisticRegressionClassifier.Configuration.CodingKeys(255, v29);
  OUTLINED_FUNCTION_2_73();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v10)
  {
    LOBYTE(v29[0]) = 0;
    sub_237EF9930();
    v14 = v13;
    OUTLINED_FUNCTION_1_83(1);
    sub_237EF9930();
    v16 = v15;
    OUTLINED_FUNCTION_1_83(2);
    v17 = sub_237EF9950();
    OUTLINED_FUNCTION_1_83(3);
    sub_237EF9930();
    v19 = v18;
    OUTLINED_FUNCTION_1_83(4);
    sub_237EF9930();
    v21 = v20;
    OUTLINED_FUNCTION_1_83(5);
    v23 = sub_237EF9950();
    OUTLINED_FUNCTION_1_83(6);
    v30 = sub_237EF9920();
    v31 = 7;
    sub_237DDE2A4();
    sub_237EF9970();
    v24 = v30 & 1;
    v25 = OUTLINED_FUNCTION_12_41();
    v26(v25);
    v27 = v29[0];
    *a9 = v14;
    *(a9 + 8) = v16;
    *(a9 + 16) = v17;
    *(a9 + 24) = v19;
    *(a9 + 32) = v21;
    *(a9 + 40) = v23;
    *(a9 + 48) = v24;
    *(a9 + 49) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237DDE268(uint64_t a1)
{
  sub_237EFA120();
  LogisticRegressionClassifier.Configuration.hash(into:)();
  return sub_237EFA170();
}

unint64_t sub_237DDE2A4()
{
  result = qword_27DEB3870[0];
  if (!qword_27DEB3870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB3870);
  }

  return result;
}

uint64_t sub_237DDE320(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_237DDE408(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 58))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237DDE448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_237DDE4A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 50))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_237DDE4EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_237DDE558(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_70(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000001CLL;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0xD000000000000022;
  *(a2 + 24) = v2;
  *(a2 + 32) = 5;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_7_54()
{
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 8);
  *(v1 + 32) = v2;
  result = *(v0 + 40);
  *(v1 + 48) = result;
  *(v1 + 64) = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_59(uint64_t a1)
{

  return sub_237EF9A30();
}

uint64_t OUTLINED_FUNCTION_11_43(uint64_t result, __n128 a2, __n128 a3)
{
  *(result + 40) = a3;
  *(result + 24) = a2;
  return result;
}

void (*sub_237DDE784(void (**a1)(uint64_t a1), uint64_t a2, uint64_t a3))(uint64_t a1)
{
  result = __swift_coroFrameAllocStub(0x60uLL);
  v8 = result;
  *a1 = result;
  if (v3[2])
  {
    v9 = a3 * *v3;
    if ((a3 * *v3) >> 64 == v9 >> 63)
    {
      v10 = v9 + a2;
      if (!__OFADD__(v9, a2))
      {
        *(result + 10) = sub_237DDE764();
        sub_237DDE890(v8 + 4, v10);
        *(v8 + 11) = v11;
        return sub_237CC7CFC;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v3[1];
  v14 = a2 * v13;
  if ((a2 * v13) >> 64 != (a2 * v13) >> 63)
  {
    goto LABEL_10;
  }

  v15 = __OFADD__(v14, a3);
  v16 = v14 + a3;
  if (!v15)
  {
    *(result + 8) = sub_237DDE764();
    sub_237DDE890(v8 + 4, v16);
    *(v8 + 9) = v17;
    return sub_237CC7C9C;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_237DDE890(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643B4(v5, v6, v7, v8);
    v5 = v9;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5[2] <= a2)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_237DDE918(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643FC(v5, v6, v7, v8);
    v5 = v9;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5[2] <= a2)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_237DDE9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v25 = a4;
  v27 = a2;
  v7 = sub_237EF61A0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v26 = a1;
  if (v13)
  {
    v22[0] = a3;
    v22[1] = v4;
    v23 = v9;
    v24 = v7;
    v28 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v13, 0);
    v14 = v28;
    v15 = (a1 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v28 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_237EF8260();
      if (v19 >= v18 >> 1)
      {
        sub_237C62D90((v18 > 1), v19 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 4;
      --v13;
    }

    while (v13);
    v9 = v23;
    v7 = v24;
    a3 = v22[0];
  }

  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237C96710(&qword_27DEAEC30, &qword_27DEAEBD0, qword_237F0EC30, MEMORY[0x277D83970]);
  sub_237EF6180();

  sub_237DE134C(v26, v27, a3, v25);
  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_237DDEBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v10 = *(a2 + 16);
  if (v10)
  {
    sub_237EF8260();
    v11 = 0;
    v24 = v7;
    v12 = (v7 + 56);
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      sub_237EF8260();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0B340(0, *(v13 + 16) + 1, 1, v13);
        v13 = v21;
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_237D0B340(v16 > 1, v17 + 1, 1, v13);
        v13 = v22;
      }

      *(v13 + 16) = v17 + 1;
      *(v13 + 8 * v17 + 32) = v11;

      v19 = v15 >= 4 ? 1 : v14;
      v20 = __OFADD__(v11, v19);
      v11 += v19;
      if (v20)
      {
        break;
      }

      v12 += 32;
      if (!--v10)
      {
        v7 = v24;

        v5 = a4;
        v8 = a1;
        v6 = a3;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 0;
    v13 = MEMORY[0x277D84F90];
LABEL_14:
    result = v8 * v11;
    if ((v8 * v11) >> 64 == (v8 * v11) >> 63)
    {
      result = sub_237E61300(result, NAN);
      *a5 = v6;
      *(a5 + 8) = v5;
      *(a5 + 16) = v7;
      *(a5 + 24) = v13;
      *(a5 + 32) = v8;
      *(a5 + 40) = v11;
      *(a5 + 48) = 0;
      *(a5 + 56) = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_237DDED34(uint64_t a1, unint64_t a2)
{
  v41 = a1;
  v5 = sub_237EF6310();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3920, &qword_237F16040);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3928, &qword_237F16048);
  v13 = MEMORY[0x28223BE20](v12);
  v32 = (&v30 - v14);
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(v2 + 16);
  if (*(v15 + 16) <= a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = *(v2 + 24);
  if (*(v16 + 16) > a2)
  {
    v17 = v15 + 32 * a2;
    v36 = *(v17 + 32);
    v37 = v2;
    v18 = *(v17 + 40);
    v35 = *(v17 + 48);
    v34 = *(v17 + 56);
    v33 = *(v16 + 8 * a2 + 32);
    v19 = *(v9 + 52);
    (*(v6 + 16))(&v11[v19], v41, v5, v13);
    (*(v6 + 32))(v8, &v11[v19], v5);
    v20 = v32;
    v21 = v32 + *(v12 + 52);
    sub_237DE1A48(&qword_27DEB3930, MEMORY[0x277CE1958]);
    v41 = v18;
    sub_237EF8260();
    sub_237EF86F0();
    v31 = *(v12 + 56);
    *(v20 + v31) = 0;
    v22 = 0;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3938, &qword_237F16050) + 36);
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      sub_237DE1A48(&qword_27DEB3940, MEMORY[0x277CE1960]);
      sub_237EF8DE0();
      if (*&v21[v23] == v38[0])
      {

        v28 = v31;
        v27 = v32;
        *v32 = v24;
        *(v27 + v28) = 1;
LABEL_11:
        sub_237C863A0(v27, &qword_27DEB3928, &qword_237F16048);
        return;
      }

      v25 = sub_237EF8F00();
      sub_237DE1A8C(v26, v39);
      v25(v38, 0);
      sub_237EF8DF0();
      v40[0] = v39[0];
      v40[1] = v39[1];
      sub_237DDF12C(v40, v36, v41, v35, v34, v22, v33);
      if (v3)
      {

        v29 = v32;
        *v32 = v24;
        sub_237C863A0(v40, &qword_27DEAED60, &unk_237F10530);
        v27 = v29;
        goto LABEL_11;
      }

      sub_237C863A0(v40, &qword_27DEAED60, &unk_237F10530);
      v22 = (v22 + 1);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_237DDF12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t a1), uint64_t a7)
{
  v8 = v7;
  v11 = a5;
  sub_237DE1A8C(a1, &v51);
  if (!v52)
  {
    return sub_237C863A0(&v51, &qword_27DEAED60, &unk_237F10530);
  }

  sub_237C91804(&v51, &v54);
  if (v11 >= 4u)
  {
    if (a4)
    {
      sub_237CBA478(&v54, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3948, &qword_237F16058);
      if (!swift_dynamicCast())
      {
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
        sub_237C863A0(&v47, &qword_27DEB3950, &qword_237F16060);
        sub_237CBA478(&v54, v50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3958, &qword_237F16068);
        if (!swift_dynamicCast())
        {
          v49 = 0;
          v47 = 0u;
          v48 = 0u;
          sub_237C863A0(&v47, &qword_27DEB3960, &qword_237F16070);
          sub_237CBA478(&v54, &v51);
          sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v17 = v47;
            [v47 floatValue];
            v19 = v18;
LABEL_24:
            v38 = sub_237DDE784(&v51, a6, a7);
            *v39 = v19;
            (v38)(&v51, 0);

            goto LABEL_4;
          }

          goto LABEL_25;
        }

LABEL_17:
        sub_237C531B8(&v47, &v51);
        v29 = v52;
        v30 = v53;
        v31 = __swift_project_boxed_opaque_existential_1(&v51, v52);
        v32 = MEMORY[0x28223BE20](v31);
        v34 = v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v34, v32);
        v26 = sub_237DE1AFC(v34, v29, v30);
LABEL_20:
        v36 = sub_237DDE784(&v47, a6, a7);
        *v37 = v26;
        (v36)(&v47, 0);
        __swift_destroy_boxed_opaque_existential_1(&v54);
        v15 = &v51;
        return __swift_destroy_boxed_opaque_existential_1(v15);
      }
    }

    else
    {
      sub_237CBA478(&v54, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3948, &qword_237F16058);
      if (!swift_dynamicCast())
      {
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
        sub_237C863A0(&v47, &qword_27DEB3950, &qword_237F16060);
        sub_237CBA478(&v54, v50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3958, &qword_237F16068);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v49 = 0;
          v47 = 0u;
          v48 = 0u;
          sub_237C863A0(&v47, &qword_27DEB3960, &qword_237F16070);
          sub_237CBA478(&v54, &v51);
          sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v17 = v47;
            v19 = [v47 integerValue];
            goto LABEL_24;
          }

LABEL_25:
          v41 = *v8;
          v40 = v8[1];
          *&v51 = 0;
          *(&v51 + 1) = 0xE000000000000000;
          sub_237EF8260();
          sub_237EF9330();
          MEMORY[0x2383E0710](0xD000000000000025, 0x8000000237EFFEC0);
          MEMORY[0x2383E0710](a2, a3);
          MEMORY[0x2383E0710](0x6720747562202C27, 0xEB0000000020746FLL);
          __swift_project_boxed_opaque_existential_1(&v54, v55);
          swift_getDynamicType();
          v42 = sub_237EFA220();
          MEMORY[0x2383E0710](v42);

          MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
          *&v47 = a6;
          v43 = sub_237EF9AB0();
          MEMORY[0x2383E0710](v43);

          v44 = v51;
          sub_237C84150();
          swift_allocError();
          *v45 = v41;
          *(v45 + 8) = v40;
          *(v45 + 16) = v44;
          *(v45 + 32) = 4;
          swift_willThrow();
          goto LABEL_4;
        }

        goto LABEL_17;
      }
    }

    sub_237C531B8(&v47, &v51);
    v20 = v52;
    v21 = __swift_project_boxed_opaque_existential_1(&v51, v52);
    v46[1] = v46;
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    if (sub_237EF9200() < 65)
    {
      v46[0] = a6;
      v27 = sub_237EF9210();
      v28 = sub_237EF91F0();
      (*(v22 + 8))(v25, v20);
      if (v27)
      {
        v26 = v28;
      }

      else
      {
        v26 = v28;
      }

      a6 = v46[0];
    }

    else
    {
      sub_237CE3484();
      sub_237DE21D4();
      sub_237EF81C0();
      (*(v22 + 8))(v25, v20);
      v26 = *&v47;
    }

    goto LABEL_20;
  }

  sub_237DDF848(&v54, a2, a3, a4, v11, a4, a6, a7);
LABEL_4:
  v15 = &v54;
  return __swift_destroy_boxed_opaque_existential_1(v15);
}